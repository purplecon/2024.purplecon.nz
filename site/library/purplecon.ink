// something about making friends, being a community
// you watch everyone else do their own special thing, make their own rebel mark. then you do it too, it's like a community. everyone puts their hands in
//strange world but everyone treats it like it’s normal (like the cherry blossom petals)
//then in REAL life we hide something there also
// fake choice where you don't do what you click. "that would be ridiculous, of course"
// keep having to say no no no to tempting things, makes u REBEL
// eventually the final one is the True Ending


// vague plot
// community, friends, being together
// it's fun, you can rebel and break the rules (in dialogue choices surely)
// talk to someone? make friends?
// see everyone around you being like you, or not, but still together
// theme: community, togetherness
// become friends with a book?
// a GROUP of books? are all friends together?
// you make something with the girl. lots of options. you customise it. you get choices at each lil node along the way (like the conversation), and your final result is the combo of all your choices! maybe a drawing? you draw memories along the way?
// then you add it to the giant pile all the other added theirs to. 
// FIN 
// have a hole that's the same shape as your bracelet somewhere if you talk about it

// at the end, dialogue option for "is this the True Ending?/i hope this is the True Ending"
// i pog loud as hell, if you don't like it go to ANOTHER library
// use [EXTREMELY LOUD INCORRECT BUZZER]
// "shhh, this is a library"
// this book is just called "geraldine"
-> start


=== start
// cryptic ref to later in the story?
// first person question?
// hey just hypothetically, if you were somewhere bustling with likeminded new friends, where would it be?
// * [aaa]
// * [option 2]
// - 
// oh okay great.
// it's not, by the way.
// * [it's not what?]
// - hypothetical.
// * [wh-]
-> library 

// the link in the navbar you click to get here says....
// "
=== library

the sun is beaming through the skylights at the library.

->girl

=== girl
"i love your bracelet by the way"
* (boring) ["thanks :))"]
* (lore) ["thanks :)) i was found wearing it among the smoking wreckage of some ancient ruins when i was a baby"]
    "ohhh cool cool, like anime style"
    * * ["it glows sometimes"]
        "oh, like... a lot?"
        * * * (glows) ["haha yeah"]
        * * * (glows_normal_amount) ["no the normal amount"]
- 
{boring:she pauses.|"neat"}
"do you think {glows:your bracelet that glows more than the normal amount|it} like, unlocks something? like, plot relevant?"
* (bracelet_is_normal) {boring}  ["it's just a bracelet haha"]
* {!lore} [(lie) "it's just a bracelet haha"]
  "oh, really? it looks kinda like..."
    she picks up your arm, and brings the bracelet closer. you notice discerning eyes behind her gold-rimmed glasses, but it's too late.
    * * [next]
    "yeah it looks like one of those bracelets you get found wearing among the smoking wreckages of ancient ruins right after you're born. and you're like, mysteriously unharmed."
    * * * (girl_has_bracelet) ["okay i was trying to play it cool but you got me, that is extremely what happened. how did you know?!"]
        she pulls up her sleeve, holds up the bracelet on her wrist and smiles ^_^
        * * * * ["ohhhhhhhhh"]
        "yeah"
        * * * * * ["yeah"] 
        "it probably like, fits in a hole the same shape at the bottom of your local ancient ruins that only open once every 1000 years or something"
        -> milleniumfestival
    // later it turns out this lie was true somehow
    * * * (bracelet_lie) [(go all in on the lie) "that's crazy haha"]
        "....huh. i guess i'll let you know if i see anywhere that looks plot-relevant to use it"
        -> topic_change
* (bracelet_lie_caught) {lore}  [(lie) "it's just a bracelet haha"]
    "it's just that you said you were found wearing it among the smoking wreckage of some ancient ruins when you were a baby"
    * * [(genuine) "sorry i was trying to seem mysterious"]
    * * [(flirting) "sorry i was trying to seem mysterious"]
    //->TODO
        
        
* {lore} ["of course! maybe like it fits in a hole that's the same shape at the bottom of the ruins in my hometown that only open once every 1000 years"]
    she's nodding thoughtfully. "definitely anime style..."
    - - (milleniumfestival) 
    * * {lore} ["sorry, this probably doesn't make a lot of sense unless you're into the same weird niche japanese games as i am"]
        "i play japanese games sometimes"
        * * * "oh like... a lot?"
        {glows:"haha yeah"|"no the normal amount"}
        * * * * ["neat"]
         -> milleniumfestival
    * * ["{girl_has_bracelet:actually }me and my colourful ragtag band of misfits were gonna go down to the ancient ruins tonight if you wanna come. it's the 1000 year anniversary of the day unspeakable evil was sealed away yeah"]
    "ohhh i'd love to but i'm the last in my family line that can talk to plants and i have this family thing tonight where we're visiting the place where 1000 years ago, my ancestor, the first ever plant whisperer, first lost an argument to a sunflower."
    * * * ["ohh neat. have fun at your family thing haha"]
        "thanks i've never been there before. it's supposed to open up for the first time tonight. hope it's good"
        * * * * ["hope it's good"]
        * * * * (sunflower) ["what was the argument about actually"]
            "zerotrust network architecture"
            * * * * * ["ouch"]
                "yeah the sunflower was cracked at networking"
    - - - -> topic_change
- "ooooh, maybe you just haven't found the right plot relevant place to use it yet!"
    * ["haha, yeah, maybe"]
- -> topic_change

=== topic_change
you start to say something. {topic_change:"let's..."|"hey maybe we should..."}
- (hub)
* ["get bubble tea"] 
    "oh heck yeah"
    -> bubbletea
* (parliament) ["blow up cultural parliament"]
    "what? oh you mean like <em>cultural</em> parliament, like a cultural, immaterial thing that does not strictly imply or endorse anything illegal"
    * * ["yeah exactly"]
        * * * ["of course"]
            * * * * ["that kinda thing"]
    - - "maybe later? if it feels like we need to, i mean. things seem to be going pretty well lately already"
    * * ["so true actually"]
       ->topic_change
* ["get out of here{girl.milleniumfestival:, i should get to the ancient ruins}"]
    "ohhh yeah {girl.milleniumfestival:i should get to my plant thing|it is getting late}"
    - - (leavechoices)
    * * {girl.milleniumfestival} ["yeah your plant thing"]
        "yeah my plant thing"
        -> leavechoices
    * * {!girl.bracelet_is_normal} ["haha yeah, and i do NOT wanna be late, i got a good feeling about being at the ancient ruins right on midnight haha"]
    * * (normalmode) {girl.bracelet_is_normal} ["well yes i suppose it is getting late. this is just a normal bracelet i'm wearing with nothing interesting about it so. i guess time to go normal mode."]
        "normal mode"
        she is t-posing.
    - - -> ending
* [actually, don't say anything]
    "? {topic_change:let's|maybe we should} what?"
    * * {!parliament} ["oh i was going to say all this stuff about parliament. like revolutionary stuff?"]
        "but you didn't?"
        * * * ["yeah"]
    * * ["hmmm, i dunno actually. what do you wanna do?"]
    - - 
    "huh, okay. do you wanna go look at books?"
    * * ["oh heck yeah"]
        -> bookshelf
->DONE

=== bubbletea
# color: bubbletea 
ah, the bubble tea stand. a reliable stable at any library.

"what are you gonna get?"
* ["ooo i think i'll get strawberry..."]
* ["ooo i think i'll get mango..."]
* ["ooo i think i'll get lychee..."]
* ["ooo i think i'll get thai milk tea..."]->toppings
* (earlgrey) ["ooo i think i'll get earl grey..."]
* (taro) ["ooo i think i'll get taro milk tea..."]
-
* {!taro} ["green tea..."]
* {!taro} ["black tea..."]
* ["milk tea..."]
* {!earlgrey} {!taro} ["oolong..."]
* ["fresh milk..."]
- (toppings)
* ["with pearls..."]
* ["with lychee jelly..."]
* ["with rainbow jelly..."]
* ["with grass jelly..."]
* ["with pudding..."]
* (notopping) ["with no topping..."]
-
* ["normal sugar..."]
* ["75% sugar..."]
* ["half sugar..."]
* (lowsugar) ["25% sugar..."]
* (nosugar) ["no sugar..."]
-
* ["normal ice"]
* ["75% ice"]
* ["half ice"]
* ["25% ice"]
* (iceless)["no ice" (select for ICELESS achievement)]
-
"oooo, yummo."
* ["how about you?"]
"hmmm i think i'll get thai milk tea. i love thai milk tea. it's sweet and spicy, like me"
* [nod solemnly in agreement]
she's nodding along
* ["hey this is a pretty big list of bubble tea options"]
"yeah, especially for a library"
* ["do you think this like, should set our expectations for what to expect from any other libraries we go to in the future?"]
"hmmmm, i don't think so. i don't think other um libraries would really be able to guarantee they'd have these exact flavours or toppings. it's a lot of work organising bubble tea at a conference"
* [look directly at the camera]
* ["you mean library?"]
    "yeah that's what i said"
* ["hey look, i think our bubble teas are ready"]
"yummo"
- ->straw

- (straw)
you gently pick up the bubble tea, patting it gingerly to make sure it feels comfortable.
* [unwrap the straw]
    the paper comes off easily
    * * [stab the bubble tea lid with the straw]
    pop!
    -> tea
    * * [...]
        you hesitate
        * * * [stab the bubble tea lid with the straw]
        pop!
        -> tea
        * * * [...do we always have to fight?]
            you gently peel off the lid of the bubble tea and set it aside.
            your straw floats gently among the ice and the jellies
            * * * * [much better :)]
            -> tea
- (tea)
yummo, the tea is {lowsugar|nosugar:not too sweet and very tasty|sweet and tasty}, perfect nourishment for growing teens.
* ["this is the best library ever"]
* {!notopping} [(mouth full of toppings) "thish ish thuh besht libarby evuh"]
- "heck yeah it is"

[bubble tea drinking noises]

"okay now what?"
->topic_change


=== back(-> to)
+ [go back] 
- -> to

=== bookshelf 
you go to the uh "books" section and uh select the "books" submenu listen i dunno

"what kinda books do you wanna look for?"
* ["hmmm i dunno, just anything that seems interesting?"]
-
"huh, well. let's see what's on this shelf"
// replace eggs a history with a real book, hide something in that real book in the library
// replace secret item with something we can actually hide in there on the day. more than one?
hmmmm <em>"judgement under uncertainty: heuristics and biases"</em>, <em>"encyclopedia of qr codes"</em>, <em>"eggs: a history"</em>.....
looks like there's nothing interesting here
<- back(-> afterbooks)
* [...unless?]
    oh could this be...? 
    <- back(-> afterbooks)
    * * [yes??]
        oh it was just "eggs: a history" again
        <- back(-> afterbooks)
        * * * [unless?]
            it's still just "eggs: a history"
            <- back(-> afterbooks)
            * * * * [UNLESS?]
                sorry, still eggs
                <- back(-> afterbooks)
                * * * * * [UNLESS????]
                    you can't just keep saying that and hoping to find something
                    <- back(-> afterbooks)
                    * * * * * * [UNLESS????????]
                        it's still just "eggs: a history" agai-
                        oh wait
                        <- back(-> afterbooks)
                        * * * * * * * [YES???]
                            oh actually just <em>behind</em> "eggs: a history" was a different book, "REAL_BOOK_NAME". you can have it i guess if you want?
                            * * * * * * * * [nah that's okay haha]->afterbooks
                            //* * * * * * * * {girl.milleniumfestival}[YES GIMME]
                            //    -> secretbracletbook
                            * * * * * * * * (secret) [YES GIMME]
                                you open up "REAL_BOOK_NAME", and a playing card falls out. it's the three of hearts.
                                you put it back where you found it, for the next person, then gently pat the book closed.
- 
* ["nice"]->afterbooks

//= secretbracletbook
//

=== afterbooks ===
{bookshelf.secret: 
    * ["i knew it couldn't be just eggs"]
    ->topic_change
- else:
    * ["well that was certainly books"]
    "books"
    ->topic_change
}



=== ending
on the way out of the library, you see an enormous sheet of paper sprawled across the floor.
    coloured markers, pencils, crayons, stickers- is that <em>glitter</em>?
    
    there are a lot of arts and crafts supplies to be sure.
    
    "!!!"
    * ["!!!"]
    "awwww everyone's just drawing on the giant sheet of paper"
    "suuurely we draw something before we go"
    - 
    * ["suuuurely"]
    -> draw
    
= draw
you draw...

* {girl.glows} your bracelet, glowing
* {girl.glows_normal_amount} your bracelet, glowing the normal amount
* {girl.boring} [your regular, normal bracelet]. it's just a bracelet. you are basically just going to draw a circle and you are okay with that
* {girl.girl_has_bracelet} both of your bracelets, linked together
* {girl.bracelet_lie} [your bracelet, but try really hard to make it look like just a normal bracelet.] basically just a circle
-
->END