import csv
import string
import sys

def make_id(title):
    title = title.lower()
    # trans rights
    translator = str.maketrans('', '', string.punctuation)
    title = title.translate(translator)
    words = title.split()
    return "-".join(words)


talks = []
with open("cfp.csv", newline='') as csvfile:
     reader = csv.reader(csvfile, delimiter=",")
     reader.__next__()
     reader.__next__()
     for row in reader:
         is_accepted = "y" == row[8].lower()
         title = row[12].strip()
         abstract = row[13].strip()
         speaker = row[15].strip()
         bio = row[17].strip()
         speaker_social = row[18].strip()
        #  knowledge = row[-5].strip()
         is_confirmed = "y" in row[-3].strip().lower()

         talkid = make_id(speaker)
        #  clean_row = list([talkid,title,abstract,speaker,bio, knowledge])
         clean_row = list([talkid,title,abstract,speaker,bio])
         if is_accepted and is_confirmed:
             print(clean_row)
             talks.append(clean_row)

TALK_MD_TEMPLATE="""
## {title}

{abstract}

### {speaker}

{bio}


<hr />
"""

all_talks = []
# reverse them bc i liked the talks at the end better
for talk in reversed(talks):
    talk_md = TALK_MD_TEMPLATE.format(title=talk[1], abstract=talk[2], speaker=talk[3], bio=talk[4])
    all_talks.append(talk_md)

with open("talkdata.md", "w") as f:
    f.write("\n".join(all_talks))


# with open('_scripts/talks.csv', 'w', newline='') as csvfile:
#     writer = csv.writer(csvfile)
#     header = ["id","title","description","speaker","bio"]
#     writer.writerow(header)
#     for row in clean_rows:
#         writer.writerow(row)
