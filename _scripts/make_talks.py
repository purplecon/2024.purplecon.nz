import csv
import string
import sys
import urllib.parse


schedule_order = ["Liam", "Laura Wratten and Angus Cornall", "Adam Black", "Ash", "Giuliana", "Aleksa", "Colin", "cait m", "Sam Thorogood", "serena chen"]

def make_id(title):
    title = title.lower()
    # trans rights
    translator = str.maketrans("", "", string.punctuation)
    title = title.translate(translator)
    words = title.split()
    return "-".join(words)


talks = []
with open("talks.csv", newline="") as csvfile:
    reader = csv.reader(csvfile, delimiter=",")
    reader.__next__()
    reader.__next__()
    for row in reader:
        is_accepted = "y" == row[8].lower()
        is_confirmed = "y" == row[10].strip().lower()

        title = row[12].strip()
        abstract = row[13].strip()
        speaker = row[15].strip()
        bio = row[17].strip()
        speaker_social = row[18].strip()
        #  knowledge = row[-5].strip()

        # Filename of the speaker's Great Archive submission (single file only)
        # These files are expected to be in the site/public/archive directory, so put them there manually pls <3 
        archive_filename_or_link = row[-1].strip()

        talkid = make_id(speaker)
        clean_row = list([talkid, title, abstract, speaker, bio, archive_filename_or_link])
        if is_accepted and is_confirmed:
            print(clean_row)
            talks.append(clean_row)

    # Sort by schedule order.
    def sort_key(talk):
        try:
            return schedule_order.index(talk[3])
        except ValueError:
            return len(schedule_order)

    talks.sort(key=sort_key)


TALK_MD_TEMPLATE = """
## [keynote] {title}

{abstract}

### {speaker}

{bio}
{archive_template}
<hr />
"""

ARCHIVE_TEMPLATE = """
### great archive submission

{archive_content}
"""

all_talks = []
for talk in talks:
    # Extract the great archive filename they submitted, if any, and insert it into the markdown.

    archive_filename_or_link = talk[5]
    if archive_filename_or_link:
        if archive_filename_or_link.startswith("https://"):
            archive_content = f"[{archive_filename_or_link}]({archive_filename_or_link})"
        else:
            archive_filename_urlencoded = urllib.parse.quote(archive_filename_or_link)
            archive_content = f"[{archive_filename_or_link}](/archive/{archive_filename_urlencoded})"

        website_archive_section = ARCHIVE_TEMPLATE.format(archive_filename=archive_filename_or_link, archive_content=archive_content)
    else:
        website_archive_section = ""

    talk_md = TALK_MD_TEMPLATE.format(
        title=talk[1], abstract=talk[2], speaker=talk[3], bio=talk[4], archive_template=website_archive_section
    )

    all_talks.append(talk_md)

with open("talkdata.md", "w") as f:
    f.write("\n".join(all_talks))


# with open('_scripts/talks.csv', 'w', newline='') as csvfile:
#     writer = csv.writer(csvfile)
#     header = ["id","title","description","speaker","bio"]
#     writer.writerow(header)
#     for row in clean_rows:
#         writer.writerow(row)