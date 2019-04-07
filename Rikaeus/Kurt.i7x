Version 1 of Kurt by Rikaeus begins here.
[Version 1 - New Rooms, New NPC, New Events]

[ KurtRelationship                                         ]
[   0: Hasn't seen yet                                     ]
[   1: Has heard him perform                               ]
[   2: Ran into him in the city center                     ]

KurtRelationship is a number that varies.
KurtEvent is a number that varies.

Table of GameEventIDs (continued)
Object	Name
Surprise Shark Encounter	"Surprise Shark Encounter"

Surprise Shark Encounter is a situation.
The sarea of Surprise Shark Encounter is "Atlantis".

when play begins:
	add Surprise Shark Encounter to badspots of guy;
	add Surprise Shark Encounter to badspots of furry;

after going to Atlantis City Center while (Surprise Shark Encounter is active and Surprise Shark Encounter is not resolved and KurtRelationship is 1):
	FirstKurtEvent;

instead of resolving Surprise Shark Encounter:
	move player to Atlantis City Center;
	FirstKurtEvent;

to FirstKurtEvent:
	say "     Humming as you walk about the city, you come to a decision to head towards the center of Atlantis. After all, it's where the hub of all activity is, so you may run into something interesting there. Once there you take look around, admiring the architecture of the buildings, musing on whether or not the Greeks got their designs from this city or vice versa. However, before you can contemplate this thought any further, somebody ends up walking right into you, sending you tumbling to the ground. 'Oh! I'm so sorry!' a soft yet gruff voice says as large arms reach down to help you up. Not wanting to really remain on the floor much longer you gladly accept the assistance. The hands belonging to the muscular body pat you down, getting rid of the dust that accumulated from you being on the stone tiles. Curious as to who barreled into you, you look up and inwardly gasp in surprise.";
	say "     Standing in front of you is none other than Kurt, the shark-morph that you've listened to both play and sing for people in the market. In hindsight you should've recognized the voice but to be fair you were rather scatter brained from being knocked to the ground. The male in front of you however doesn't miss a beat as he holds out a hand. 'The name's Kurt. I apologize for running into you. I should've been looking where I was going,' he says, bowing his head sorrowfully. You shake yours at him and tell him that you actually know of him, having listened to him play at the market and that you shouldn't have been distracted. The shark-morph tilts his head at you in a bit of curiosity, though you have no clue as to why but he then suddenly gets a toothy grin on his face.";
	WaitLineBreak;
	say "     'I know how to make it up to you! How about I take you out to lunch sometime soon?' he asks you, his eyes giving you a look that make you feel like he's challenging you to accept. You muse that it wouldn't necessarily hurt to take Kurt's invitation. For one, it's free food, and it'll also let you get to know the man before you. You smile back at him and nod, agreeing to a... lunch date with the shark-morph. You don't know how it's entirely possible but his grin gets toothier and he pats you heavily on the back. 'Perfect! If you can give me at least six hours I'll be ready. Anytime after that meet me in the market!' he says before heading off towards the residential district where you assume he lives. You on the other hand feel as if you're free to do what you want as you don't really need to prepare.";
	now KurtRelationship is 2;
	now Surprise Shark Encounter is resolved;
	now Predator's Lunch is active;
	now KurtEvent is turns;
	move player to Atlantis City Center;

Table of GameEventIDs (continued)
Object	Name
Predator's Lunch	"Predator's Lunch"

Predator's Lunch is a situation.
Predator's Lunch is inactive.
The sarea of Predator's Lunch is "Atlantis".

when play begins:
	add Predator's Lunch to badspots of guy;
	add Predator's Lunch to badspots of furry;

after going to Atlantis City Market while (Predator's Lunch is active and Predator's Lunch is not resolved and KurtRelationship is 2 and KurtEvent - turns > 2): [Event has happened within the last 3 hours]
	SecondKurtEvent;

instead of resolving Predator's Lunch:
	move player to Atlantis City Market;
	SecondKurtEvent;

to SecondKurtEvent:
	say "     Figuring you may as well meet up with Kurt for your little lunch date. Thankfully though it doesn't take you long to find the shark-morph as he's very clearly standing out in the open. It also helps you that the male is very noticeable, at least to you, with his clean-cut, button up shirt and comfy looking pair of jeans. He obviously wanted to be fancy for this occasion, so who are you to deny him. Instead, you wander on over and give him a smile which he matches with a toothy one. 'Hey there, just in time! Thankfully the restaurants are open all day,' he says, before holding out his arm all gentlemanly like for you to hold. Raising a brow but deciding to oblige the guy you accept it, and he begins to lead you on your way.";
	say "     It doesn't take you two long before you reach a rather fancy eatery, and to be honest you're kind of glad it is not a fish place. As that would make you feel partially awkward. Instead it appears to be an expensive bar and grill. Kurt hailed down the person standing at the front of the place, to get you two a booth. The woman appears to notice him, and you swear would have stars in her eyes if it was possible, but the shark-morph just asks for a seat as calmly as possible. She was put out at first but quickly shrugged it off before leading you guys to your area. Upon sitting down the male smiles at you and crosses his arms, staring at you in curiosity, causing you to tilt your head at him.";
	WaitLineBreak;
	say "     'Soooo, why do you not act star-struck like everyone else does when they see me?' Kurt asks, sincere curiosity in his tone. You raise your brows at him but decide to answer him honestly, since he appears to be wanting a real answer. So, you tell him that you don't see why you should, since he's just like any other person, even if he does have a nice voice and music-playing skills. By then a waiter comes by to take your orders, to which you quickly give, and when you turn to look at your... lunch partner, he appears very intrigued by you. 'The fact that you think that of me makes you very interesting to me, [']cause it's hard to make friends here when everyone just sees you as a celebrity,' the shark says, a sigh soon escaping his lips afterwards. You nod having a vague understanding of what he means. A few minutes later your food comes by and you dig in, enjoying the taste of Atlantean cuisine.";
	say "     After you finish your food the shark-morph nods to himself as if confirming something. 'You know what, whenever you're free come visit me at my abode. My house is to the west when you enter the residential area,' Kurt says to you, giving you a saucy smile. After saying that he gets up and puts the money on the table for the bill. As he walks away you take a good loo at him, and wonder if you really want to visit him at his home before quickly shrugging your shoulders and deciding that you'll think about it later. You then get up and make your own way out of the restaurant, heading out to do what you wanted to do afterwards.";
	now KurtRelationship is 3;
	now Predator's Lunch is resolved;
	PlayerEat 30;
	change west exit of Atlantis City Residential to Kurt's Abode;
	change east exit of Kurt's Abode to Atlantis City Residential;
	move Kurt to Kurt's Abode;
	move player to Atlantis City Market;

Table of GameCharacterIDs (continued)
object	name
Kurt	"Kurt"

Kurt is a man.
[Physical details as of game start]
ScaleValue of Kurt is 3. [human sized]
SleepRhythm of Kurt is 0. [0 - awake at all times, 1 - day active, 2 - night active]
Cocks of Kurt is 2. [X cock]
Cock Length of Kurt is 8. [X Inches]
Cock Width of Kurt is 4.
Testes of Kurt is 2. [X balls]
Cunts of Kurt is 0. [X pussy]
Cunt Length of Kurt is 0. [X Cunt]
Cunt Width of Kurt is 0. [X Cunt]
Breasts of Kurt is 2. [X nipples]
Breast Size of Kurt is 0. [X at the start]
[Basic Interaction states as of game start]
TwistedCapacity of Kurt is false. [can not take oversized members without pain]
Sterile of Kurt is true.
PlayerMet of Kurt is false.
PlayerRomanced of Kurt is false.
PlayerFriended of Kurt is false.
PlayerControlled of Kurt is false.
PlayerFucked of Kurt is false.
OralVirgin of Kurt is true.
Virgin of Kurt is true.
AnalVirgin of Kurt is true.
PenileVirgin of Kurt is true.
SexuallyExperienced of Kurt is false.
MainInfection of Kurt is "".
The description of Kurt is "[KurtDesc]".
The conversation of Kurt is { "<This is nothing but a placeholder!>" }.
The scent of Kurt is "     The shark-morph smells like a variety of spices, foods, varnished wood and water. You kind of expected the variety of smells from the fact he hangs out in the market area playing his guitar. But you inwardly shrug, guessing it fits him.".

to say KurtDesc:
	say "     Your musician friend stands at a tall six foot four, which you guess makes sense for a shark-morph, though you expected him to be much taller for a great white shark. Beyond his height he has subtle bulging muscles that while they aren't the steroid crazy that you've seen many others out there with, it does say that he could probably do considerable damage to you. Outfit-wise the male is wearing just a simple pair of palm tree swim trunks and a black wife beater rather than anything fancy. Though you do know the reason for this, as you did ask him during your little lunch date earlier, so you draw your eyes upwards and notice Kurt's rather striking green eyes before taking another once-over glance. Overall your friend is a rather remarkable specimen that would catch anybody's eye.";

Section 2 - Talking with Kurt

instead of conversing the Kurt:
	if KurtRelationship < 3: [should be not yet available]
		say "     ERROR: Kurt shouldn't be where a player can see him yet, heck you shouldn't even have access to this room yet! Please report to Rikaeus on the FS Discord and quote this tracking number for easier bugfixing: [KurtRelationship]";
	else:
		say "     As you walk up to Kurt, who has been lounging on the couch, playing his guitar, a soothing tune coming out, he smiles at you. 'What do you want my friend?' he asks, a wide toothy smile aimed at you.";
		say "[KurtTalkMenu]";

to say KurtTalkMenu:
	LineBreak;
	say "What do you wish to talk about with the shark-morph?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Life in Atlantis";
	now sortorder entry is 1;
	now description entry is "Ask him how he came to live in Atlantis";
	[]
	choose a blank row in table of fucking options;
	now title entry is "His Interest in Music";
	now sortorder entry is 2;
	now description entry is "Ask him how he came to be interested in music";
	[]
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
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Life in Atlantis"):
					say "[KurtAtlantis]";
				if (nam is "His Interest in Music"):
					say "[KurtMusic]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You apologize and tell him you that you don't have anything to say. He raises a brow but gets back to what he was doing.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say KurtAtlantis:
	say "     Curious about how the shark-morph came to live here you ask out loud the question on your mind. 'Oh? Well, I guess it is kind of obvious that I didn't live here initially,' Kurt says, humming out loud as he sets his guitar to the side. You nod, as you're pretty sure you've seen his kind of infection before outside of Atlantis, so it was kind of safe to assume that he hadn't been a part of the city when it first resurfaced. 'Well, it wasn't long after I got these changes of mine that I spotted one of the mermaids leaving the city. I asked around and was directed to here,' he continues. Sounds a lot like how you found the city... though yours was a bit weirder than his, and not a story you're sure you want to share just yet with other people.";
	say "     'When I found the place I was welcomed with open arms and it didn't take me long to set up here and brings you to current me,' Kurt says with a toothy smile. You nod and look around, realizing the shark does have it nice compared to everyone else in the apocalyptic era. 'Though that's not to say that I'm fully happy with my current scenario as you've seen with my extreme popularity, but I make do,' he says, shrugging his shoulders. The male realizes that it's the end of the conversation so he redirects his attention back to his guitar, which he picks up and begins strumming once more. You however return to what you were doing previously, standing around.";

to say KurtMusic:
	say "     'You want to know how I got interested in playing music?' he asks, tilting his head at you, strumming a few chords on his guitar. You nod your head, causing the shark to smile widely at you. 'Well, it started when I saw my first guitar in an instrument store when I was six, wanted it so bad that I saved up all my allowances and mowed the lawn for all my neighbors just to purchase it,' Kurt says, his tone wistful as he reminisces about his past. 'When I finally had it in my hands my parents were kind enough to sign me up for lessons at school and it started going uphill from there,' the male says, his strumming turning into a little bit of song.";
	say "     'Soon enough I got good at it, and then we get to when I came to Atlantis, I was down and wanted a bit of my old life so I played some music as I had my old guitar on me,' Kurt says, the song filling the air. 'People started gathering and from there I became famous due to being the only really big musician in the apocalypse. Sure it's not what I thought what but hey, I get to play my music,' the shark says with a toothy smile. The male gets into his song though soon after and looses track of the conversation, causing you to step back and leave him be, having got what you wanted from the conversation.";

Section 3 - Sex

instead of fucking Kurt:
	if (lastfuck of Kurt - turns < 3): [he got fucked in the last 9 hours = 3 turns]
		say "     The shark-morph lets out a laugh and shakes his head. 'My randy friend, I do need a break every now and then,' he says, before returning to his guitar.";
	else:
		say "     Seeing the musician sitting on his couch, strumming his guitar, an idea comes to mind. But the question is, what is that idea?";
		wait for any key;
		say "[KurtSexMenu]";

to say KurtSexMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Suck Kurt off"; [anyone can suck him off]
	now sortorder entry is 1;
	now description entry is "Take Kurt for a ride with your lips";
	[]
	Sort the table of fucking options in sortorder order;
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
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Suck Kurt off"):
					say "[KurtSex1]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You take a second to think and then decide against doing something sexy with your shark friend.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say KurtSex1:
	say "     Interested in getting a taste of the shark-morph you move on over to him while he's playing his guitar and kneel down in front of his crotch. This causes the male to raise a brow at you, clearly intrigued by your actions. 'Someone's a little horny, aren't they?' Kurt asks, a toothy grin following that question. You respond in kind by raising a hand to his bulge, and when it touches you realize you can feel two hardening lengths. Though to be completely honest you should have expected this, as your friend is a shark, who have two dicks. 'Why don't you take both of them out to have a better look, help you get more interested,' he says, his grin now a smirk as he takes his own hand and moves it to yours to guide them to the button of his pants.";
	say "     You quite gladly unbutton the top of his shorts, unzip them, and yank them down, revealing a tight pair of speedos under them. While to others they might be odd, a few thoughts later make you realize that if he leaves the city often he wouldn't want to constantly have soaking underwear. Ignoring them for now you pull those down as well, letting them pool with the shorts and revealing his two large cocks, which emanate a masculine musk that cause you to let out a soft moan. Once more raising a brow in particular interest, Kurt directs his hands to your head before pulling you close to his dicks, bringing you right to the source of the pheromone-intense smell. Brought into a frenzy, you begin licking at both of his lengths, alternating back and forth in intense desire.";
	WaitLineBreak;
	say "     While you're lavishly paying attention to his cocks, Kurt is leaning back, his guitar safely laying against the couch while he moans loudly, his head tilted toward the ceiling. By now though, you decide to focus on one of his lengths while you masturbate the other with your hands. You move your mouth to the left one and take it into your lips, swirling your tongue around, idle hands moving to the right dick to massage it. The taste of pre blooms into your mouth, making you moan loudly, almost in sync with your shark friend, which spurs you on to take him further into your mouth. This appears to trigger something in Kurt as he grabs a hold of your hair and begins to thrust in and out of your throat, fucking your face as thoroughly as he can.";
	say "     'Mmm, fuck you're great at this, I'm already so close!' He growled, watching intensely as you take one of his cocks like a champ and as the other slides against your cheek. Sure enough you can feel the large dicks tensing as he gets nearer to his orgasm. As a last ditch interest in making him go wild you take a finger and position it at his hole before pushing it in roughly. That appears to set the male off as he lets out a loud roar before you feel hot salty liquid spill onto your tongue and warmth pool and splash against your cheek and head. You gladly slurp down the cum, enjoying the taste of the shark's seed, making sure to collect the amount that coated your outsides into your mouth. Once Kurt's climax tapers off, you pull off and give him a sperm-filled smile that makes him pull you up into a kiss.";
	WaitLineBreak;
	say "     After finishing the kiss he gives you a toothy grin. 'That was great! Didn't know you were so good at giving head. We may have to do this more often,' Kurt says to you, proceeding to pull up his speedos and shorts. You nod and swallow down the remaining cum you had left, telling him you'd be more than happy to take care of his problem any time. You then get up and dust off your knees before stretching your legs a bit, having gotten a bit sore on the floor. When you look at your friend he's still looking at you with interest but has gone back to his guitar. You may as well go back to what you were doing before though.";
	now lastfuck is turns;

testkurt is an action applying to nothing.
understand "kurt test" as testkurt.

carry out testkurt:
	say "DEBUG: Trident acquired, Poseidon Relationship is now 2, Alana Relationship is now 1, Triton Relationship is now 1, Atlantis is now unlocked, moved player to Atlantis City Entrance, Kurt Relationship is now 1, Market Visits is now 1, First Atlantis Visit is now 1.";
	now carried of bronze trident is 1;
	increase score by 10;
	now PoseidonRelationship is 2;
	change west exit of Sunken Ship to Atlantis City Entrance;
	change east exit of Atlantis City Entrance to Sunken Ship;
	now Lost Trident is resolved;
	now TritonRelationship is 1;
	now AlanaRelationship is 1;
	now FirstAtlantisVisit is 1;
	now MarketVisits is 1;
	now KurtRelationship is 1;
	move player to Atlantis City Entrance;

Kurt ends here.
