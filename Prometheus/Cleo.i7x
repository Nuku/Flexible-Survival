Version 1 of Cleo by Prometheus begins here.

[ HP of Cleo                          ]
[ 0 - Not yet born                    ]
[ 1 - Born - New to the world/pup     ]
[ 2 - Child                           ]
[ 3 - Teen                            ]
[ 4 - Adult - Grown                   ]
[ 5 - Adult - Had Sex                 ]

[ Hunger of Cleo                      ]
[ 0 - Fully matured                   ]
[ 120 - Just Born                      ]

An everyturn rule:
	if Hunger of Cleo is 80:
		now HP of Cleo is 2;
		say "     A strange feeling runs through you, and you get the sense that you should perhaps check on Cleo.";
	if Hunger of Cleo is 40:
		now HP of Cleo is 3;
		say "     A strange feeling runs through you, and you get the sense that you should perhaps check on Cleo.";
	if Hunger of Cleo is 1:
		now HP of Cleo is 4;
		say "     A strange feeling runs through you, and you get the sense that you should perhaps check on Cleo.";
		now Hunger of Cleo is 0;
	if Hunger of Cleo > 1:
		decrease Hunger of Cleo by 1;


Section 1 - Cleo

Table of GameCharacterIDs (continued)
object	name
Cleo	"Cleo"

Cleo is a woman.
ScaleValue of Cleo is 3. [human sized]
Body Weight of Cleo is 4. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Cleo is 3. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Cleo is 8. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Cleo is 5. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Cleo is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Cleo is 5. [length in inches]
Breast Size of Cleo is 3. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Cleo is 2. [count of nipples]
Asshole Depth of Cleo is 8. [inches deep for anal fucking]
Asshole Tightness of Cleo is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Cleo is 0. [number of cocks]
Cock Girth of Cleo is 0. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Cleo is 0. [length in inches]
Ball Count of Cleo is 0. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Cleo is 0. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Cleo is 1. [number of cunts]
Cunt Depth of Cleo is 8. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Cleo is 2. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Cleo is 3. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Cleo is false.
PlayerRomanced of Cleo is false.
PlayerFriended of Cleo is false.
PlayerControlled of Cleo is false.
PlayerFucked of Cleo is false.
OralVirgin of Cleo is true.
Virgin of Cleo is true.
AnalVirgin of Cleo is true.
PenileVirgin of Cleo is true.
SexuallyExperienced of Cleo is false.
TwistedCapacity of Cleo is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Cleo is false. [steriles can't knock people up]
MainInfection of Cleo is "Doberman Bitch".
Description of Cleo is "[Cleodesc]".
Conversation of Cleo is { "Bark! Woof! Woof!" }.

the scent of the Cleo is "     The doberman smells of books, though there are still undertones of dog.".

to say Cleodesc:
	if debugactive is 1:
		say "     DEBUG -> HP: [HP of Cleo] <- DEBUG[line break]";
	if HP of Cleo is:
		-- 1: [ Pup ]
			say "     Cleo is much the size that you would expect of a new-born, at least a one that hadn't had a nanite-induced growth spurt. Much like her mother whom she is always beside, she has short black and tan fur, though has an undocked tail. For the moment, she has baby-blue eyes though you imagine that they will shift to be a soft-brown like Alexandra's as she matures. Currently, her hair is indistinct from the fur on her head and you wonder whether it will grow when she is older. She doesn't seem particularly talkative, but you can hardly blame her considering how recently she came into the world. She notices you looking at her and gives you a wide smile before snuggling against her mother's breast for a nap.";
		-- 2: [ Child ]
			say "     Cleo looks to be about four foot tall, having had a growth spurt since you last saw her. You can see the resemblance to Alexandra, short black and tan fur covering her from head to foot and her eyes having taken on the on the same warm-brown tone as her mother's. Her auburn hair goes just past her ears and is held back by a pretty green headband. She is wearing a pink t-shirt and a yellow skirt that her mother has found somewhere, her tail sticking out from beneath it. She seems to keep to herself most of the time, though when she sees you, she shyly runs over to you, one thumb in her mouth as she gives you a hug as best as she can, her tail exhuberantly wagging behind her. You barely manage to return the hug before she stumbles back over to Alexandra and hides her face against her mother's shoulder. Despite how timid she seems to be, you have no doubt that she is very fond of you, Alexandra laughing at you while she strokes her daughter's head reassuring you that this isn't anything to be concerned about.'";
		-- 3: [ Teen ]
			say "     Cleo is a little shorter than her mother, something that she seems to be self-conscious about. While they both have short black and tan fur and brown eyes, Cleo doesn't have the toned body of her mother nor the self-confidence. Her ear-length auburn hair is held back by twin purple hair-clips next to her temples. Somewhere she has found a black hoodie, a gray skirt, and purple tights to wear, dressed considerably more somberly than before. She still seems socially-withdrawn, though she smiles upon seeing you and wags her tail, momentarily pulling her attention away from the book that she is reading to say hello to you as you approach. A quick glance at the cover reveals that it is a science-fiction novel. As you give your daughter a hug, she snuggles against you, enjoying this display of parental affection, and you feel her relax even more as Alexandra cuddles with you too with her daughter in the middle.";
		-- 4: [ Young Adult ]
			say "     Cleo is much the same size as her mother as well as similar short black and tan fur, though she hasn't got the same toned appearance due to her preference for reading. She seems a little self-conscious about this at times, but Alexandra seems supportive of her daughter's choice in hobbies. Her auburn hair is tucked behind her ears and nearly reaches her shoulders. Cleo is wearing a pale-blue shirt and darker blue trousers, making you wonder whether she and Alexandra are sharing their wardrobes now, though you do notice a hoodie neatly folded on a nearby table. Looking up from a biography that she is reading as she sees you approach, your daughter glances at the page number before closing the book and walking over to greet you with a hug, her slender tail wagging back and forth behind her. Returning her affection, you enjoy the softness and warmth of her embrace before she sedately steps away again, her fondness for you struggling against her timid nature. Shyly looking at the floor, she patiently waits to see how you wish to spend your time with her.";

Instead of conversing the Cleo:
	if HP of Cleo is:
		-- 1: [ Pup ]
			say "     Aware that she is unlikely to be able to hold a conversation with you, you settle for playing peek-a-boo instead, Alexandra giggling along with her daughter at this innocent fun.";
		-- 2: [ Child ]
			say "     Conscious that your daughter only has a limited grasp of language, you instead play I Spy with her and Alexandra for a few minutes until she tires of it.";
		-- 3: [ Teen ]
			say "     Though you would like to talk to her, Cleo seems enraptured by the plot of her book. You're not sure how much of it genuinely is the book, and how much is her just being shy, but she does draw her attention away from it long enough to rest her hand atop your for a few moments before she second-guesses herself and snatches it back again.";
		-- 4: [ Young Adult ]
			say "     Waiting for Cleo to reach the end of the paragraph that she is reading, you ask her whether she has a moment to talk. 'O-OK,' she stutters, perhaps worried that she is in some sort of trouble. You quickly sooth this fear before getting to what you really want to discuss.";
			WaitLineBreak;
			say "[CleoTalkMenu]";

to say CleoTalkMenu:
	say "[line break]";
	say "What do you wish to discuss with Cleo?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Herself";
	now sortorder entry is 1;
	now description entry is "Try to learn more about your daughter";
	[]
	[choose a blank row in table of fucking options;
	now title entry is "Family";
	now sortorder entry is 2;
	now description entry is "";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Other Library Residents";
	now sortorder entry is 3;
	now description entry is "";]
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Herself"):
					say "[CleoTalk1]";
				[if (nam is "Family"):
					say "[CleoTalk2]";
				if (nam is "Other Library Residents"):
					say "[CleoTalk3]";]
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You shake your head, indicating an end to the conversation. Cleo simply nods and returns to her book.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say CleoTalk1:
	say "     Conscious that you were a secondary parental figure as she matured, you hesitantly ask her to tell you about herself. At first she seems confused as to why you would ask your own daughter such a question before realization dawns on her. 'Um. I suppose I could. My name is Cleo and I am an anthropomorphic Doberman Pinscher,' she begins, a glint in her eye revealing that she is teasing you. You bop her on the nose with one finger and wait for her to cooperate. 'I'm not sure where to begin. I suppose we could start with my fondness of reading. I'm not a social butterfly and I prefer to keep to myself. Reading lets me do this while still giving me the feeling of being out in the world, whether it is fantasy, sci-fi, or even biographies. People have such interesting lives, but I just can't manage to actually be part of it except on the page. Mom assures me that there is nothing wrong with this and to just take it slowly, but slow for a dog is different to slow for a snail and I worry that I am more like the latter.'";
	say "     You point out that her love of books seems to have given her a rich vocabulary and a graceful manner of speech, at least when she isn't second-guessing herself. Cleo blushes, her tail wagging behind her and betraying the pleasure derives from your praise. 'Um. What else is there about me to talk about... You may have noticed that I have a full tail unlike Mom. Apparently my breed of dog is meant to have a tail like mine, but many people prefer them short either due to the line of work they are in, or more often for cosmetic reasons. Mom theorized that hers was short when she transformed because she was a police officer and thus a tail would be more likely to be damaged, and by comparison, mine is long because she was in a safe place when I was born. There may be more to it, but it makes me happy that she has you to look after her. Thank you.' You accept her gratitude with humility, after all, it's what anyone should have done in your situation. Well, maybe not impregnating her, but who can blame you. You definitely don't regret it when you look at your daughter.";
	WaitLineBreak;
	say "     'I'm trying to become a little less introverted, as I said earlier, but the few people that I do talk to I'm very close to,' she begins, faltering when she sees you raise an eyebrow and chuckle. 'N-No. Nothing like that. No sex. Just friendship. You're as bad as Mom. I'm a good girl and I hoped that my parents would be good to, but maybe I was too hopeful. Anyway, ";
	if "Lux & Umbra - Played with as Infant" is listed in traits of Cleo:
		say "Lux and Umbra are fun to play with, though they are much faster than I am. I'm amazed by Lux's ability to walk on two legs and I can't imagine how much effort wnet into learning to do that. Umbra seems a better judge of character than her though. There's something about the way his eyes delve into your soul. I wonder if his Daddy taught him? ";
	if "Paula - Medical Checkup as Child" is listed in traits of Cleo:
		say "I still get checkups from Paula, though now Mom doesn't have to accompany me. Her bedside manner can be a bit abrasive at times, but she's a good listener and one of the few people that I've seen stand up to Mom. They seem to admire each other, so nothing serious came of their disagreement. ";
	if "Amy - Styled Hair as Teen" is listed in traits of Cleo:
		say "Amy is probably one of my best friends. She can be little slutty at times, please forgive my language, but I really enjoy the time that I spend with her. I may be less socially adept than her, but she still teaches me about what being a young woman can be, at least what she thinks that it is. Mom has had to talk to her about some of her behavior before. ";
	if "Blanche - Provided Contraband" is listed in traits of Cleo:
		say "Blanche is like a [if player is herm]second? Third? Mother to me? Sorry. I haven't asked whether you think of yourself as my mother or father[else if player is female]third mother to me[else]second mother to me[end if]. I still love you and Mom best, but there is something so comforting about her, as though she is so filled with motherly love that it saturates her entire being. I feel that I can talk about nearly anything with her. I still haven't meant her entire family though. There are just so many of them. ";
	say "Jimmy acts like my like he's my brother so much of the time. Sometimes he even acts like my sister. One of these days I'm going to dress him up as a princess. Princess Happiness. He's always so cheerful and I don't know where he gets all of his energy. He's been there for me nearly as much as you and Mom. He may even be able to turn me into an extrovert, given time. He's just so determined.'";
	WaitLineBreak;
	say "     Cleo seems a little worn out after that conversation so you give her a hug and thank her for sharing before you leave her to return to her book.";


Section 2 - Sex


Section 3 - Growing Up Events

[Puppy]
an everyturn rule:
	if HP of Cleo is 1 and Cleo is visible:
		if a random chance of 1 in 3 succeeds:
			if a random number between 1 and 2 is:
				-- 1:
					if HP of Lux > 3 and a random chance of 1 in 2 succeeds: [Cleo with Lux & Umbra (Adult)] [Cleo pulls their ears and fur (as infants do)]
						say "     The sound of giggling catches your attention as you walk through the door and after following it a short distance, you find your daughter, Cleo, clambering over top of Lux and Umbra while Alexandra watches on. The infant doberman seems to be delighted in feeling the thick fluff of the wolves against her palm and face, rubbing up against them and pulling their fur none too gently. Nonetheless, they endure this treatment with exemplary patience, perhaps remembering their own behavior as puppies and capable of ignoring the pain that she occasionally causes them as she sates her curiosity. Seeing you approach, Alexandra smiles tiredly. 'I tried to get her to be more gentle with them, but she had a small tantrum and they assured me that they could cope. I hope I'm not teaching her bad habits...' she apologizes, Lux and Umbra wagging a few times as you approach. Presumably the twin wolves have already introduced themselves to the police officer, as she seems familiar with the two of them, a feeling of relief that she doesn't seem to have a problem with you [']fraternizing['] with other people. Perhaps it is something that you should ask about in future...";
						say "     Eventually, Cleo begins to tire and she slides off the wolves to the floor, ending up nestled cozily between them, struggling to keep her eyes open. 'It's a shame that I don't have a camera. It's moments like this that I want to remember. Even with all the chaos out in the city, it's reassuring to see such innocent play,' Alexandra muses, clasping your hand and leaning up against you. Giving her a hug, you reassure her that there will be plenty more moments like this and that she will remember the majority of them, earning a kiss on the cheek. 'Just make sure you are around for some of them. I want to be a better Mom to her than mine was to me, but I also want her to have both parents in her life as she grows up. However short that may be,' she reminds you. Determined to fulfill this wish, you spend several moments just watching your daughter nap before Alexandra gently scoops her up and takes her away to tuck her into a proper bed and allow Lux and Umbra to resume their own day.";
						TraitGain "Lux & Umbra - Played with as Infant" for Cleo;
					else: [Cleo with Alexandra] [Being Breast-fed]
						say "     Curious to see how Cleo and her Alexandra are doing, you wander around the library in search of where they may be. Eventually, you find them on a sofa by a window with a view of the garden. At first you think that your daughter is having a nap while her mother cuddles her, but as you draw closer you see that Alexandra is in fact in the middle of breast-feeding the doberman puppy, murmuring sweet words in her ear as she suckles. Seeing you approach, she gives you a smile and pats a cushion to invite you to sit. 'How has your day been?' she asks as you collapse beside her. You give her an abridged version of your recent activities, hesitant to go into full detail within earshot of your daughter. It wouldn't do to traumatise her after all. As you talk, Alexandra rests her head against your shoulder and sighs. 'Sorry. I know that I asked, but my mind's elsewhere. She's just so perfect...' she says, stroking the back of Cleo's head.";
						say "     Chuckling, you agree that your daughter is a bright patch in the horrors of the city. Seemingly content with her meal, Cleo releases her mother's nipple, froth dribbling down her chin, and looks around, gurgling happily when she sees you and reaching towards you. Not one to deny her daughter this wish, or to discourage family bonding, Alexandra gently passes the infant to you, briefly giving you a full display of her swollen breasts with a small amount of milk still trickling from one nipple. While she adjusts her bra and rebuttons her shirt, you take a moment to bounce Cleo on your knee and pull faces at her, delighting her with your antics. 'You're a good parent,' you hear Alexandra compliment you. 'Especially compared to mine. I wouldn't mind giving Cleo some more siblings...' she continues seductively. Tapping her on the nose, you teasingly chide her lustfulness before kissing her on the lips and whispering that you wouldn't mind fulfilling that wish. Eventually, the two of them doze off and you leave them to rest while you decide what to do next.";
				-- 2: [Cleo with Player] [Cleo left with player while Alexandra takes break for coffee]
					say "     Passing the bottom of the stairs, you are intercepted by Alexandra, her daughter being cradled to her side with one arm. With a smirk, you comment that she really has this mother thing down if she can do that. 'Thanks, but it really isn't as hard as it looks,' she replies, before she hesitantly continues. 'Could you watch Cleo for a bit? I wanted to get a few minutes to relax while I make myself some coffee.' You wait to see whether there is more to her request as so far it sounds simple enough. After a few seconds of her merely looking at you, you readily agree before questioning why she seemed reluctant to ask. 'I don't want to be a bad mom. I know that I shouldn't need a break from her, but I just seem to...' With a chuckle you reassure her that [if Charisma of Blanche is 1]even Blanche, for all her motherly qualities, takes some personal time[else if NadiaDescription > 2]even Nadia, with her obsession with having more eggs put in her, takes a break from her chicks when she needs it[else if Libido of Amy > 3]even Amy, possessing all the exuberance of a young mother, needs to recharge apart from her pups from time to time[else]every mother needs time for themselves occasionally[end if]. She's your daughter too, so of course you can do your part and look after her while her mother unwinds.";
					say "     Relieved, Alexandra gently passes Cleo to you before trudging towards the kitchen, her exhaustion plain to see. Cradling your child in your arms, you walk towards an armchair and sink into it, caressing your daughter's head while you gaze into each other's eyes. At one point, she takes a hold of your thumb, grasping it firmly while looking up at you and giggling. It's such a special moment for you and part of you is disappointed that Alexandra isn't here to witness it too. Somehow, you manage to doze off with your daughter on your chest as you wait for her mother to return and it is only when you jerk awake that you realize that the doberman cop has returned and is tranquilly watching you, re-energized by the coffee. 'Don't worry. You weren't asleep for long, but you two looked too comfortable to disturb,' she says soothingly, waving to Cleo. 'Could I have her back again? My motherly instincts are kicking in again. Also, she'll need to be fed soon and I don't want to share that duty.' With such a compelling argument, you allow Alexanandra to take your spot on the chair and give them both a kiss before making your way back to the front desk.";

[Child]
an everyturn rule:
	if HP of Cleo is 2 and Cleo is visible:
		if a random chance of 1 in 3 succeeds:
			if a random number between 1 and 2 is:
				-- 1:
					if hunger of Paula is 1 and a random chance of 1 in 2 succeeds: [Cleo with Paula] [Basic Health Checkup]
						say "     A moment to yourself is interrupted by Alexandra walking over to you, Cleo tightly clutching her hand. 'Would you like to join us for your daughter's daily medical checkup with Paula?' the doberman cop asks. 'I know that that is a little more regular than for most children, but she's grown so quickly. I haven't invited you before as usually you're away, but we can make it a proper family appointment.' Not that you needed any more convincing, but Cleo grabs hold of your hand and starts to pull at you to follow. With a chuckle, you comply with your daughter's demands, the youthful doberman walking between her parents. You soon find yourself in a quiet corner of the library where Paula has set up a makeshift examination area, complete with camp bed, lamp, and coffee tables strewn with medical equipment. Incredulously, you ask where she got all of the paraphernalia as she certainly didn't have it when you were escaping the police station. 'The hospital director and I dueled for them with scalpels. I fared better than him,' the vixen replies.";
						say "     After giving her a moment to bask in her tale, you ask her to tell you the truth this time. 'You're no fun... Fine. I was given them by a doctor who I knew from when I was trying to get employment. Took some searching, but somehow he looked just as bland as he did before the city went to hell. Lucky bastard.' Alexandra clears her throat, though whether it is because of Paula's language or because you are getting side-tracked from your daughter's check-up you are unsure. Erring on the side of caution, you shut your mouth and allow Cleo to lie down on the bed. The nurse then proceeds to check her breathing and heart-rate, inspect her ears, eyes, and mouth, and test her reflexes with a rubber mallet. At the end of it all, Paula offers her patient a selection of candy from a large jar. 'That's a good girl. Take a couple, but don't tell your mother,' the vixen whispers conspiratorially, fully aware that Alexandra is definitely within earshot. 'Fank you,' your daughter shyly replies, claiming her reward. 'My pleasure sweetie. You're as healthy as ever, so there's nothing that you or your parents need to worry yourselves with.' You spend a little time catching up with each other before you go your separate ways again.";
						TraitGain "Paula - Medical Checkup as Child" for Cleo;
					else: [Cleo with Jimmy] [Playing Tag]
						say "     Not paying attention as you walk past the bottom of the stairs, you are almost bowled over by a small figure, only saved by their last minute attempt to avoid you. As they stumble, you identify them as your daughter, Cleo, but this allows her pursuer to catch up with her and tap her on the shoulder. 'You're it again,' Jimmy puffs, the two of them seemingly playing tag. As they are much the same height, they are relatively evenly matched for such games, though your daughter doesn't seem to be breathing as heavily as the corgi. 'No fair. I didn't want to hurt [if player is male]Papa[else if player is female]Mama[else]Papa[end if],' she protests, twisting her t-shirt and scuffing a hind-paw on the floor. 'That's very considerate of you and I'm sure that because of this, Jimmy won't mind being it again and giving you a head start,' Alexandra chips in, appearing by your elbow and giving you a kiss on the cheek.";
						say "     'Favoritism! You didn't give me a second chance when I tripped over my own feet,' the corgi replies in mock outrage, winking at the doberman cop to further emphasize that he recognizes that he hasn't really taken it personally. 'That was different. You went head over heels and made the most adorable [']oof[']. You should have had ample time to escape while she was laughing,' Alexandra fires back, before saying quietly enough that her daughter can't hear, 'Plus, I know that you did it on purpose. Sometimes I wonder how you manage with such a big heart.' With an exaggerated sigh, Jimmy accepts her decree and begins counting down from ten to give Cleo a chance to get away again. As the two of them charge between the bookshelves, Alexandra pats you on the shoulder reassuringly. 'Just think how humiliating it would have been to be knocked out by a child, your own daughter, when you can face down monstrosities and mutants.' Leaving you with this thought, she strolls off in the direction that you last saw Cleo and Jimmy.";
				-- 2: [Cleo with Alexandra] [Reading with mother]
					say "     In need of something to do and realizing that you haven't really looked at the books despite being in a library, you wander between the aisles, idly glancing at the titles as you pass by, hoping that perhaps one will (figuratively) leap out at you. Just as you are resigning yourself to the fact that none of them are catching your attention, you find yourself in the children's section and you aren't the only one here. In the middle of reading [']Beauty and the Beast['] to Cleo while the two of them snuggle together on some cushions, Alexandra looks up as you approach and waves in greeting. '[if player is male]Papa[else if player is female]Mama[else]Papa[end if]! Sit with us,' your daughter joyfully entreats you, patting a cushion next to her. Not one to refuse such an enticing proposal, you settle yourself on the floor so that Cleo is comfortably nestled between you and Alexandra, your daughter nuzzling her face against your side as her mother continues the story.";
					say "     It is a very relaxing experience listening to Alexandra perform the fairy tale to Cleo, complete with different voices for each character. You momentarily wonder whether you should offer to help in some way, but she seems to be entirely immersed in the story, leaving you to focus on snuggling up to your daughter and gently stroking her hair as she looks back at you to make sure you are enjoying yourself too. Eventually, as her mother is telling how Beauty's father returns home, Cleo dozes off in your arms. Alexandra reads a few more lines before marking her place with a bookmark and putting the book aside. 'I didn't have access to many books growing up, so I thought that this would be a chance both for me to read more as well as do something together with my daughter,' she whispers. 'You being here made it better though,' she adds, leaning over to give you a kiss. Perhaps missing the comforting intonation of her mother's voice, Cleo wakes up minutes later, allowing you to hug her goodbye before continuing with your day.";

[Teen]
an everyturn rule:
	if HP of Cleo is 3 and Cleo is visible:
		if a random chance of 1 in 3 succeeds:
			if a random number between 1 and 2 is:
				-- 1:
					if (HP of Amy > 9 and HP of Amy < 13): [Cleo with Amy] [Styling Hair]
						say "     Wanting to see how Cleo is doing, you find Alexandra without her by the front door, an unusual occurrence. 'She doesn't spend as much time with me as she used to,' the doberman cop replies sadly when you ask her. 'Don't get me wrong, I'm pleased that she isn't completely reliant on me, but it feels like only yesterday that she was a little girl. Amy asked if she wanted to hang out, so the two of them are probably off doing whatever it is that teenage girls do. I didn't get to experience that, being in a foster home and all...' This sounds like something that you should discuss with her, but she waves you off and tells you to go and spend time with your daughter. Perhaps another time then. It doesn't take you long to find Amy and Cleo, the two of them kneeling on the husky's usual mattress and taking turns styling each other's hair. You see the doberman's eyes briefly light up upon seeing you before she pretends to be indifferent, though not before Amy notices too. 'There's nothing wrong with being pleased to see your parents, especially when they're as cool and sexy as yours are,' the husky gently chides her.";
						say "     'Shut up Amy. That's my [if player is Male]Mom and Dad [else if player is Female]Moms [else]Mom and Dad [end if]you're talking about,' Cleo mutters, half-heartedly slapping at her friend's hand as it braids her hair. 'You may complain, but I didn't hear you disagree,' Amy laughs, directing a smile towards you. Seeing that your daughter is enjoying her time with her friend and that you are embarrassing her, you settle for merely telling her that you love her before walking away again, making her blush as she mumbles that she loves you too. As you leave you hear Amy teasing her before Cleo warns her that if she continues that she will pull her hair, silencing the husky for only a moment before she can't help but say, 'Kinky,' under her breath and squeals at the inevitable retribution. Your daughter may get some valuable social experience from Amy, so it is fortunate that they seem to have become friends, even if they will act like schoolgirls sometimes.";
						TraitGain "Amy - Styled Hair as Teen" for Cleo;
					else: [Cleo with Player] [Playing a board game]
						say "     After feeling someone tug at your hand, you are surprised to find your daughter, Cleo, standing there with a battered looking box for a board game tucked under one arm. At first she just seems to stare at you, then drops her eyes to the floor barely even mouthing the words, before she finally manages to ask in a small voice if you would like to play a game with her and Alexandra. She holds it out to you, allowing you to see the title, 'MOON FALL: FIRST CONTACT', the faded artwork depicting chitinous aliens swarming towards fleeing astronauts. It definitely looks interesting, though you can't say that you are familiar with the rules. Nonetheless, you agree to join your daughter for a family game. Giving you a quick smile, she hands you the box to carry while she rushes off ahead, likely to encourage her mother to get ready, with you following more sedately behind wondering where she even found the game.";
						say "     When you catch up with Cleo, she and Alexandra are sitting around a large table eagerly waiting for you. Cleo seems especially excited, her behavior more suitable for a child than the teenager that she has grown into. As soon as you sit down, your daughter frantically helps you unpack the box, focusing on the board and pieces while you skim through the rules. It seems to be a remarkably simple game and in the time that it takes you to set up, everyone has had a chance to understand your objective: Reach the shuttle before the aliens kill any of the players. There is something satisfying about playing cooperatively with the two of them, playing your cards to protect each other. At one point Cleo has to make the decision whether to save you or Alexandra from being dragged into the alien nest and, to your astonishment, she picks you, leaving her mother to roll the dice to save herself.";
						WaitLineBreak;
						say "     Fortunately, the dice seem to favor the doberman cop and she manages to escape and reach the rocket just before the aliens do, laughing off her daughter's apologies as you celebrate your success, ending in a family hug. Though Cleo squirms a bit, she still seems to enjoy this demonstration of affection. Perhaps feeling like she left her mother to die, she insists upon packing the game up by herself before rushing away with the box clutched to her chest. 'I haven't seen her that cheerful since she was a child, which I will admit was only a few days ago but you know what I mean. Thank you for playing with us. I'll see if I can cheer her up about choosing you over me. Obviously it was your fault not hers,' Alexandra says as she gives you a hug, before walking in the direction that her daughter just disappeared, leaving you to decide what to do next.";
				-- 2: [Cleo with Jimmy] [Painting Nails]
					say "     It is purely by chance that you come across the scene before you. While you don't think that they are intentionally hiding from anyone, finding Cleo and Jimmy seated together by one of the windows doing what they are doing is still a surprise. 'We're only painting each other's nails. You look like you've caught us blowing the football team,' Jimmy teases you, your daughter still avoiding your eye despite the innocent nature of their activity. 'Come and sit with us. You can give us a third opinion on some of the designs,' the corgi continues, directing Cleo to pull out a chair for you as his own arms won't reach. Joining them at the table, you admire their handiwork, the claws on your daughter's hands a deep purple with what look like electric-blue veins running down them. By comparison, Jimmy's fore-claws are pink with red hearts scattered across them. Complimenting their skill, you ask what caused Jimmy to want to learn how to paint nails from Cleo.";
					say "     'Actually, it is him teaching me,' your daughter murmurs, her eyes fixed on a particularly interesting nail in the floor. Your eyebrows raise involuntarily and you direct your attention to the corgi with renewed curiosity. Laughing, Jimmy replies, 'I don't know whether I told you, but I have a sister and two brothers, all older than me. As my parents were often busy with work and neither of my brothers were interested in helping my sister with the typically girly things like painting nails, styling hair, or choosing outfits, I volunteered to be the little sister that she never had and I found that I enjoyed it. Alexandra told me a bit about her past, so I thought, given the circumstances, Cleo might enjoy some pampering from the resident bundle of joy.' You remark that she certainly seems to have taken to it and that you are pleased that the two of them are enjoying themselves before excusing yourself to let them continue. 'Ok. Lift your feet onto here and I'll start work on your toenails. I was thinking green with yellow spots,' Jimmy gleefully declares behind you as you walk away.";

Section 4 - Grown Up Events

an everyturn rule:
	if HP of Cleo > 3 and Cleo is visible:
		if a random chance of 1 in 10 succeeds:
			if a random number between 1 and 2 is:
				-- 1:
					if Charisma of Blanche is 1: [Cleo with Blanche] [Blanche shares 'contraband']
						say "     As you are about to round the corner of one of the bookshelves, some instinct stops you and you instead peer cautious;y around the corner. At first you don't understand why you felt the need to remain hidden as the only people in view are Blanche and Cleo, neither of whom are particularly threatening. However, after a moment you notice that your daughter is looking around shiftily, fortunately failing to spot your face as you observe her. It almost makes you think that the MILF is selling drugs to her, but that would just be silly, wouldn't it? Her paranoia placated, Cleo turns back to the wolfess moments before a voice calls out from a few aisles over, 'Cleo? Blanche? Where have you gone? You better not be giving her chips and soda behind my back again.' You recognize it as Alexandra, the situation becoming clearer to you. Hearing her mother, your daughter grabs a bag from a nearby table and rushes away, disappearing seconds before the doberman cop storms into view.";
						say "     To your confusion, the fury rapidly bleeds from her posture as soon as she is sure that her daughter has escaped. Curious as to what exactly is going on, you step out from your hiding spot and approach the two of them, an eyebrow raised questioningly. Blanche seems startled by your sudden appearance, though Alexandra seemed to already be aware that you were nearby as she walks over to you and gives you a hug in greeting. 'Keep your voice low, and I'll explain,' she murmurs in your ear. 'After the number of times I caught Blanche giving candy and things to Cleo without our permission, or at least mine, I thought that I could use her to get our daughter to open up a bit more. She agreed to have some of her children keep an eye out for, shall we say, racy magazines when scavenging and [']secretly['] give them to Cleo.' Confused, you ask why there is such a need to go behind her daughter's back on this.";
						WaitLineBreak;
						say "     Well, when you put it like that, it makes me sound overbearing, but I don't want her to risk the same dangers that I did by trying to keep my lust bottled up. One wrong move and I could have been some weirdo's puppy mill. All I want is for her to be comfortable with her body and its needs. I'm hoping that she can learn that in a more healthy way than I did which is why she's getting magazines. I tried to talk to her about it, but she avoided me for the rest of the afternoon, so I've adapted my approach. Cleo seems to be fond of Blanche, likely because of the candy she gave her in the past, and her involvement makes this a lot easier. I just want her to be safe,' Alexandra finishes. 'Anyway, I would appreciate it if you didn't tell Cleo about this. Trust is not easily earned back.'";
						say "     Behind Alexandra's back, you can see Blanche hastily scribbling something on a piece of paper, but she makes a gesture for you to keep quiet about it. Understanding the logic behind the doberman's plan, you agree to avoid spoiling this for her. With the fear of your condemnation soothed, Alexandra is able to relax again and she takes your hand and gives it a squeeze. 'Thank you. I'll make sure that if it goes wrong that it all comes back on me,' she mumbles before returning to talking to Blanche. Deciding that it is time to leave, you go to walk past them, but feel something get pressed into your hand as you pass by the MILFy wolf, Alexandra remaining oblivious. Once you are out of sight, you open the piece of paper. 'Cleo knows. No need to worry. Eat after reading.' With a sigh, you rip the note into small pieces and swallow them. Not the most appetizing meal, but there are already too many layers of intrigue for such a simple issue. You'll leave it to the three of them to sort it out.";
						TraitGain "Blanche - Provided Contraband" for Cleo;
					else: [Cleo with Alexandra] [Discussion of interests]
						say "     The sound of talking attracts your attention and you soon find yourself at the rear of the library where Alexandra and Cleo are talking. Though at first you consider giving them some privacy, Alexandra catches sight of you before you can leave and waves you over. Your daughter initially seems uncomfortable as you sit down beside her, but a comforting hand on her shoulder seems to drain the tension from her body and she relaxes against you. Unsure what is going on, you wait for them to continue their conversation or start a new one that involves you. 'I don't have any problem with you reading instead of running around the city. It's definitely less stressful for me as your mother. But, only talking to your parents isn't going to do you any favors when life goes back to normal,' Alexandra says, gently clasping her daughter's hand in her own. '[italic type]If[roman type] it goes back to normal, and anyway, I talk to Jimmy,' Cleo softly replies.";
						say "     'I suppose you have a point, but may I make a suggestion? If anyone else comes to talk to you, give them a chance rather than ignoring them and burying yourself further in your book. Some of them might be interesting and friendly enough for you to want to get to know them more. What? Why are you smirking at me?' Alexandra asks with confusion. 'You sound like you're trying to hook me up with people. Do you really mean [italic type]anyone[roman type]? Slutty huskies and horny gryphons included?' Cleo teases her mother, making her blush impressively. 'Now why did you have to put that sort of image in my head,' Alexandra moans, the nanites not doing her any favors, your daughter laughing at turning the tables on her mother. While she is still shy, you are pleased that she has at least inherited some sass and is more talkative than when she was a teenager.";
						WaitLineBreak;
						say "     This conversation goes on for a while until eventually, your daughter relents. 'Fine. If someone else that [if player is Male]Dad [else if player is Female]Mom [else]Dad [end if]brings home is that desperate to talk to me, I'll at least try. Deal?' 'Deal. Who knows? One of them might be the special boy, girl, or other that you spend the rest of your life with,' Alexandra reflexively adds. 'MOM!' Not wanting to get caught up in this, you hastily make a retreat.";
				-- 2: [Cleo with Player] [Relaxing with player]
					say "     Taking a moment of rest on a beanbag chair, you are surprised when Cleo walks over to you with a book and slumps down beside you without a word. Snuggling up to you, she begins to read in silence, her head resting on your shoulder. Hesitant to risk ruining the moment, you nonetheless ask if she is alright, just to make sure that there isn't some problem that requires your attention. 'I'm fine. Just wanted to spend time with you,' she replies, briefly looking up at you. 'Thanks for asking though.' You sit quietly for a few more moments before she speaks again. 'Am I boring?' Startled by the question, you cautiously ask her to elaborate. 'Am I boring? I'm not sociable and I don't feel like I do anything. I asked Mom and she just told me not to compare myself to others and that the main thing was that I was happy. I'm not sure whether she was being honest or just trying to comfort me. I'm not sure that I would say that I am happy, but I am content. I suppose that that may be getting a bit philosophical for you though. I guess I just sort of feel like I don't have anything to offer anyone else.'";
					say "     You think for a moment before replying that you certainly think that your life has improved with her around and that Alexandra's reply was in all likelihood sincere. Despite now being an adult, you stroke Cleo's hair as you continue to reassure her that not everyone has to immediately stand out for some skill or service that they can provide that others do not possess. She still seems unsure, so you change your approach, asking her how many people in the books that she reads spend their entire lives as amazing in every way. 'Barely any,' she replies, her voice getting a little brighter. And how many of them had talents all along that helped them as their lives unfolded? 'Most of them,' she responds, straightening up and looking you in the eye for once. Judging from her change in demeanor, she now has more to think on, but you decide to push a little further, telling her that she might not be as outwardly cheerful as Jimmy, she might not be the badass cop that her mother is, and she may not fearlessly explore the city like you, but she will undoubtedly eventually find her own path in the world.";
					WaitLineBreak;
					say "     'Mom said something similar. She said that sometimes we have to make the decision to change our path and other times we discover that the path has changed without us noticing, for good or bad,' Cleo muses. You give her a comforting cuddle and remind her that you will always be there for her. 'Thanks. Though technically you didn't say that I wasn't boring, you just said that one day I might not be,' she retorts with a smirk. You freeze for a moment but decide that a reply may be considered insincere and just dig your hole even deeper. 'I knew what you meant,' she breathes in your ear before ";
					if IncestList is not warded and IncestList is not banned:
						say "hesitantly giving you a kiss on the cheek. Perhaps realizing what she has allowed herself to do, she panickedly disentangles herself from you and rushes off. You're not sure what to make of this, but you will probably have to have a discussion with her about this later. It wasn't that serious, was it?";
					else:
						say "blowing in your ear, making you recoil. Giggling, she rapidly disentangles herself from you and makes her escape. Shaking your head, you lie down again, resolving to get her back for this somehow at some point. At least it cheered her up.";

Cleo ends here.
