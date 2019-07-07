Version 1 of Kurt by Rikaeus begins here.
[Version 1 - New Rooms, New NPC, New Events]

[ KurtRelationship                                         ]
[   0: Hasn't seen yet                                     ]
[   1: Has heard him perform                               ]
[   2: Ran into him in the city center                     ]

KurtRelationship is a number that varies.
KurtEvent is a number that varies.
KurtRoomConnection is a number that varies.[@Tag:NotSaved]

an everyturn rule: [bugfixing rules for players that import savegames]
	if Predator's Lunch is resolved and KurtRoomConnection is 0: [event resolved the right way, room not connected yet]
		change west exit of Atlantis City Residential to Kurt's Abode;
		change east exit of Kurt's Abode to Atlantis City Residential;
		now KurtRoomConnection is 1; [make sure that it connects the room only once]

Table of GameEventIDs (continued)
Object	Name
Surprise Shark Encounter	"Surprise Shark Encounter"

Surprise Shark Encounter is a situation.
The sarea of Surprise Shark Encounter is "Atlantis".

when play begins:
	add Surprise Shark Encounter to BadSpots of MaleList;
	add Surprise Shark Encounter to BadSpots of FurryList;

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
Prereq1 of Predator's Lunch is Surprise Shark Encounter.
Predator's Lunch is inactive.
The sarea of Predator's Lunch is "Atlantis".

when play begins:
	add Predator's Lunch to BadSpots of MaleList;
	add Predator's Lunch to BadSpots of FurryList;

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
	now Predator's Club Night is active;

Table of GameEventIDs (continued)
Object	Name
Predator's Club Night	"Predator's Club Night"

Predator's Club Night is a situation.
Prereq1 of Predator's Club Night is Predator's Lunch.
The sarea of Predator's Club Night is "Nowhere".

when play begins:
	add Predator's Club Night to badspots of MaleList;
	add Predator's Club Night to badspots of FurryList;

after going to Atlantis City Entrance while (PlayerFucked of Kurt is true and KurtRelationship is 3 and KurtEvent - turns > 2 and The Palomino is known):
	ThirdKurtEvent;

instead of resolving Predator's Club Night:
	move player to Atlantis City Entrance;
	ThirdKurtEvent;

to ThirdKurtEvent:
	say "     As you wander around you end up coming to the part of the city that holds the entrance to the city. Seeing people entering and leaving the entrance is entertaining for a little bit, the people watching and all, but you get bored after a while. It's when you spot Kurt heading that way with his guitar strapped to his back that you perk up. Interested, you make your way towards him, tapping him on the shoulder and causing him to turn when you do so. 'Huh? Oh! Hey there!' He says, looking happy to see you. Chuckling you greet him as well, asking him what he's doing heading out of the city with his instrument.";
	say "     'Oh? This? I have a gig outside the city at some club,' he says, causing you to look surprised. People in town know of Atlantis? You honestly thought it was pretty isolated, only the beach-goers knowing about it. Kurt shakes his head at that before speaking. 'Not exactly, sure most of the people who are aware of the city are the people from the beach, but there [italic type]are[roman type] people in town who know of us by either word of mouth from us or by having lived at the beach, the club has one of those people,' the shark explains. You let out an 'aah' before suddenly Kurt turns to you with an intrigued look. 'Hey! How about you join me for this gig? You could watch me perform!' He says eagerly. You chuckle at his enthusiasm and say you wouldn't mind at all, which gets him to give you a smile.";
	WaitLineBreak;
	say "     Kurt wraps an arm around your waist and leads you towards the gate of Atlantis, where he nods to the usual two there, Alana and Triton. The two of you dive out of the open gate to allow yourselves some momentum when you start swimming to the surface. Thankfully it doesn't take long before you guys break water, your heads coming up from below. You guys start making your way to the beach, and when you reach the sandy shores, you finally ask Kurt about where he's taking you. 'Oh, well, a friend of mine is the one who got me the gig and they live at the club, The Palomino,' the shark says.";
	say "     You perk up at hearing the mention of that particular name, saying you've been there before. 'Oh! You have? Then you may know my friend, Brooke. I haven't really been able to visit them much since the nanites hit but they said that the club would be glad to have me.' Kurt said with a grin. You nod at that though you do wonder what he gets out of it. 'Oh, well, I get to spread my music outside of Atlantis!' He says matter-of-factly. Well... you guess that makes sense? To be fair the utopia doesn't hurt for food or water so he doesn't need either of those. So, recognition might be the best for the shark.";
	WaitLineBreak;
	say "     After about half an hour you guys manage to reach your intended destination, The Palomino. It's easy enough to get in, and when you do, your shark friend suddenly has an armful of otter. 'Kurt! It's been forever!' The cream colored male says with a smile. The predator just chuckles and sets the guy down, taking a good look at him. 'Yeah it has, you look great, and a lot more coordinated,' he says, his tone tinged with humor. That just causes Brooke to blush and nod happily before twirling, as if presenting himself to everyone. 'Yeah, it's great!' He says before turning towards you.";
	say "     '[if HP of Brooke is 5]Oh! Hey there, it's nice to see you again[else if HP of Brooke > 1]O-oh, hey there. I didn't expect to see you here with Kurt! Maybe you can have some fun with me later[else if HP of Brooke is 1]Oh! Hey it's you! Didn't know you were friends with Kurt why didn't you tell me[else]Oh! Hey! If you haven't realized by know I'm Brooke, nice to meet you,[end if]!' The otter says this all with a smile. You wave it off saying that you're here with the other male to watch him do his gig. As soon as you mention that, the more petite one perks up and nods eagerly. 'Oh yeah, that! We're all ready for you inside if you want to get started right now and I see you've brought your guitar,' Brooke says, looking over Kurt. 'Yeah, I'm definitely all set!' The shark says with a smirk.";
	WaitLineBreak;
	say "     The otter leads you two to the dancefloor where there's a lot of people waiting. From there he takes you up to a stage where there are a few speakers and cords. Kurt walks over to them and hooks them up to his guitar before strumming the strings to test it. Smiling once he sees that everything's all right, he turns to face the crowd. You on the other hand scoot back to the backside of the stage. Your shark friend begins to play a song of his own, his voice drifting out into the crowd. Speaking of them, you can tell they love it as everyone starts dancing. You start moving as well, doing a dance in your spot, enjoying the music.";
	say "     This goes on for about an hour as Kurt goes through quite a few songs, and the length of the show is worth it as he appears to be getting a large amount of fans from it. Though you do have a bit of concern for him and hope they don't go too crazy over him as the shark does deserve a bit of normalcy when it comes to other people in his life. When your friend finishes his last tune, the crowd cheers and whistles, causing him to chuckle and brush the back of his head sheepishly. Deciding that he needs to be saved from his current shyness, you walk up there and shout to everyone, asking them that it was a great show wasn't it? This gets them to yell in agreement, so you turn to Kurt and see him staring at you weirdly for a few seconds.";
	WaitLineBreak;
	say "     All of a sudden though, the shark's lips are on yours and he's kissing you rather heatedly and for what you don't know. But you enjoy the gesture nonetheless, so you return it. This garners you some wolf-whistles from the crowd which you just ignore as you continue to make out with Kurt. Though it doesn't last forever as your friend soon pulls away with a slight smile. 'Ah, I think we should wrap up here, we'll talk about this when we get back to my place.' He says, getting a nod from you in return. So, the shark turns to the crowd and thanks them for coming to the show before promptly bowing to everyone, getting another set of cheers and whistles.";
	say "     After that he leads you down to where Brooke is who is just chuckling at you two. 'That was an interesting end to the show, not that any of us minded it.' He says, causing Kurt to get embarrassed. Though the otter doesn't hold that topic for long before turning to your shark friend. 'That was great! I'm sure everyone would love to have you here again, Harold said he wouldn't mind it either,' he said, gesturing over to the unicorn bartender who lazily waved at them when they looked his way. Your shark friend smiles at this and nods happily. 'I'd love to come back here sometime!' He says, clearly enjoying the idea. 'Great! You know how to contact me, now be safe out there,' Brook says, seeing the two of you guys off.";
	WaitLineBreak;
	say "     You guys then leave the Palomino, making your way back to Atlantis. On the way there, Kurt slips his hand into yours, so that the two of you are holding hands. It's a little sweet but enjoyable nonetheless. It also comes in handy when you guys reach the beach and dive into the waters below, as your shark friend is able to pull you along, making the swim to the underwater city much faster than it was upwards. Minutes later, you guys arrive at the gates where the guards let you in and Kurt pulls you aside to a nearby stand. The stand holds towels meant for people to use to dry off if they want to, your shark friend hands you one of them and takes one for himself. You both dry yourselves off and then make your way for his place.";
	say "     When you get there, the both of you sit down. 'So... about the kiss.' The shark says, trailing off. You nod, wondering what it was about, though not entirely minding. 'Well, through the time we've spent together... I've developed feelings for you. I, uh, like you.' Kurt manages to stutter out. You chuckle at his nervousness, as it's kind of adorable and you can tell by it that he's never really asked anyone out, that you say as much. 'Yeah, I've always been the one asked out due to my... popularity. and the relationships never went well,' he says, with a wince. Your face makes the same expression, imagining how it went. 'But... if you do like me then, we can go further than... what we've been doing.' You nod and tell him you'll think about it. He smiles at that before thanking you for joining him on his trip and then seeing you out of his house.";
	now KurtRelationship is 4;
	now Predator's Club Night is resolved;
	SanBoost 30;
	now KurtEvent is turns;
	if HP of Brooke < 1:
		now HP of Brooke is 1;

Table of GameCharacterIDs (continued)
object	name
Kurt	"Kurt"

Kurt is a man.
[Physical details as of game start]
ScaleValue of Kurt is 3. [human sized]
SleepRhythm of Kurt is 0. [0 - awake at all times, 1 - day active, 2 - night active]
Cock Count of Kurt is 2. [X cock]
Cock Length of Kurt is 8. [X Inches]
Ball Size of Kurt is 4.
Ball Count of Kurt is 2. [X balls]
Cunt Count of Kurt is 0. [X pussy]
Cunt Depth of Kurt is 0. [X Cunt]
Cunt Tightness of Kurt is 0. [X Cunt]
Nipple Count of Kurt is 2. [X nipples]
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
			if Player consents:
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
	if KurtRelationship > 3:
		choose a blank row in table of fucking options;
		now title entry is "Take Kurt Anally";
		now sortorder entry is 2;
		now description entry is "Take Kurt's dicks in your hole";
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
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Suck Kurt off"):
					say "[KurtSex1]";
				if (nam is "Take Kurt Anally"):
					say "[KurtSex2]";
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
	now lastfuck of Kurt is turns;
	now PlayerFucked of Kurt is true;

to say KurtSex2:
	if loyalty of Kurt is 0:
		say "     You clear your throat to get Kurt's attention, which causes him to look at you with a curious stare. 'What is it?' He asks. You tell him that you wish to talk about what you two discussed before, causing him to perk up. 'Have you made your decision?' He asks, causing you to think about it.";
		say "     [bold type]Have you decided to further your relationship with Kurt yet?[roman type][line break]";
		say "     [link]Y[as]y[end link] - Yeah, he's a nice guy!";
		say "     [link]N[as]n[end link] - No, I need more time to think.";
		if player consents:
			say "     You nod your head and say that you'd love to take this relationship further, taking a step forward towards him before taking his guitar and placing it on the ground. You take your hand and run it up his shoulder, causing him to let out a rumble of pleasure. Getting closer, you climb on top of his lap and then lean forward, taking his lips with yours. Kurt happily accepts your kiss and slips his tongue into your mouth. Instead of fighting him for dominance you just let him win, allowing him to push his against your own tongue. The two of you start moaning into the kiss, enjoying the make-out session.";
			say "     While enjoying the shark's lips, you start grinding onto his lap, which ends up getting a response from Kurt as he lets out a groan into the kiss. You can feel his cocks hardening against your rump, something that gets you yourself all heated up as well. Deciding to take this a step further, you grab at his shirt and pull it off him, revealing the muscles underneath. Quickly after you roam your hands all over him, feeling at his skin, enjoying the sensation of it under your touch. All the while this is happening your shark friend is clearly enjoying it all as he is moaning and writhing.";
			WaitLineBreak;
			say "     Suddenly Kurt starts moving his hands low and grasps at his pants before trying to get them off while you're still on him. He has to wiggle a bit but he manages to chuck his trousers and underwear onto the floor. While he's doing this, you remove whatever you're wearing, so that once he's naked you're clothingless as well. You grind yourself on his slowly hardening cocks, enjoying the sounds coming from his mouth as you do. Suddenly though you feel one of his fingers at your hole. Your shark friend pushes it in slowly, causing you groan as well, feeling pain and pleasure as it eases into you.";
			say "     He pushes the finger in and out of you slowly, stretching you a little bit before deciding to add another one, causing you to hiss a little bit at the pain. When you're used to the insertion Kurt starts to scissor your hole open, trying to get you as wide as possible. Thankfully though it doesn't take long for the pain to turn to pleasure, and you to start to ride the fingers that are thrusting into you. Not long after that he adds another, clearly trying to get you as open as possible. Soon enough though, he pulls back from the kiss and gives you a heated look. 'Do you think you're ready?' He asks, causing you to nod lightly.";
			WaitLineBreak;
			say "     After getting that bit of agreement from you, Kurt positions one of his cocks at your hole and you bite your lip as it slowly pushes past your pucker. You then let out a gasp as you start to sink down onto your shark friend, pain and pleasure filling you as inch by inch does as well. It takes a few seconds but you manage to soon enough fully sheathe yourself on his thick length. When you're sitting on his lap again with his other rod resting against your back, he appears to let you relax for a bit before you are suddenly bucked upwards, bouncing up off his cock to just about the tip before slamming back down.";
			say "     This sensation causes you to let out a loud, drawn-out moan that is repeated when Kurt continues to bounce you on his dick. As he does this the two of you go back to making out, your moans muffled by your lips on each other. Once again you allow your shark friend dominance in the kiss, letting his tongue explore your mouth as he thrusts into you roughly, the pleasure from it rising higher and higher. However, a minute or two into everything, he pulls back and gives you a curious look. 'Do you think, you could take both of them?' He asks, causing heat to pool in your stomach as you say you'd love to try.";
			WaitLineBreak;
			say "     Kurt pulls you up until only the tip is in your hole. From there he positions the head of his other cock at your hole and slowly pushes, causing you to groan as it starts to stretch you open. It takes a few seconds but soon enough both of the lengths are slowly inching into you, causing you to feel extremely filled. You're once again allowed to get used to the sensation but not as long before as the shark soon starts to thrust into you with vigor. The amount of pleasure you feel overdoes the pain you're feeling, until the pain vanishes completely and you're just moaning wantonly.";
			say "     The only sounds filling the room are of you and Kurt moaning and his balls slapping against your ass. However, you can tell that both of you are getting close to the climax of both of your pleasure as you can feel heat pooling all over you and your shark friend's sack tightening against you. Not long after that, he roughly slams into you one last time and he starts filling you with his hot seed. [if player is neuter]The sensation of being filled with cum causes your own orgasm to go off, causing your body to light up with ecstasy due to the fact that you have no equipment of your own[else if player is herm]The sensation of being filled with cum causes your own orgasm to go off, causing you to writhe in ecstasy as femcum drips from your pussy and you shoot your own load from your cock[else if player is male]The sensation of being filled with cum causes you your own orgasm to go off, making you writhe in ecstasy as you shoot your own load from your cock[else if player is female]The sensation of being filled with cum causes your own orgasm to go off, making you writhe in ecstasy as femcum drips from your pussy, pooling against your friend's chest[end if].";
			WaitLineBreak;
			say "     You breathe heavily and lean against Kurt's chest, the two of you resting and cuddling for a bit before he lifts you off his cocks. He smiles at you and then gets up and heads to another room. He appears to comeback with towels and cleans the both of you off. 'That was great!' He says, his facial expression changing to a grin, you matching it with your own as you nod in agreement. He then starts to get dressed, to which you grab whatever you took off, if anything and put it back on. 'You know, I'm glad you decided to go further in our relationship,' the shark says, smiling at you. You reply in return that you're glad as well. 'Well, if you want to have some fun again sometime, then just let me know.' Kurt says before picking back up his guitar.";
			now loyalty of Kurt is 1;
			now lastfuck of Kurt is turns;
		else:
			say "     You shake your head and tell him that you need more time to think, he says that he understands and asks that when you do have your decision to tell him.";
	else if loyalty of Kurt is 1:
		say "     You walk your way to the shark before grabbing his guitar and putting it on the ground. 'Oh? Do you want something?' He asks with a curious and slightly lusty look. You nod, sliding yourself onto his lap before you push your lips onto his. Kurt gladly accepts this kiss, such that he slips his own tongue into your mouth, greedily exploring it, something that you gladly let him. You on the other hand, while moaning into the kiss, focus on roaming your hands all over his body, enjoying the tactile sensations of his muscles under his shirt and his arms as well.";
		say "     While enjoying the shark's lips, you start grinding onto his lap, which ends up getting a response from Kurt as he lets out a groan into the kiss. You can feel his cocks hardening against your rump, something that gets you yourself all heated up as well. Deciding to take this a step further, you grab at his shirt and pull it off him, revealing the muscles underneath. Quickly after you roam your hands all over him, feeling at his skin, enjoying the sensation of it under your touch. All the while this is happening your shark friend is clearly enjoying it all as he is moaning and writhing.";
		WaitLineBreak;
		say "     Suddenly Kurt starts moving his hands low and grasps at his pants before trying to get them off while you're still on him. He has to wiggle a bit but he manages to chuck his trousers and underwear onto the floor. While he's doing this, you remove whatever you're wearing, so that once he's naked you're clothingless as well. You grind yourself on his slowly hardening cocks, enjoying the sounds coming from his mouth as you do. Suddenly though you feel one of his fingers at your hole. Your shark friend pushes it in slowly, causing you groan as well, feeling pain and pleasure as it eases into you.";
		say "     He pushes the finger in and out of you slowly, stretching you a little bit before deciding to add another one, causing you to hiss a little bit at the pain. When you're used to the insertion Kurt starts to scissor your hole open, trying to get you as wide as possible. Thankfully though it doesn't take long for the pain to turn to pleasure, and you to start to ride the fingers that are thrusting into you. Not long after that he adds another, clearly trying to get you as open as possible. Soon enough though, he pulls back from the kiss and gives you a heated look. 'Do you think you're ready?' He asks, causing you to nod lightly.";
		WaitLineBreak;
		say "     After getting that bit of agreement from you, Kurt positions one of his cocks at your hole and you bite your lip as it slowly pushes past your pucker. You then let out a gasp as you start to sink down onto your shark friend, pain and pleasure filling you as inch by inch does as well. It takes a few seconds but you manage to soon enough fully sheathe yourself on his thick length. When you're sitting on his lap again with his other rod resting against your back, he appears to let you relax for a bit before you are suddenly bucked upwards, bouncing up off his cock to just about the tip before slamming back down.";
		say "     This sensation causes you to let out a loud, drawn-out moan that is repeated when Kurt continues to bounce you on his dick. As he does this the two of you go back to making out, your moans muffled by your lips on each other. Once again you allow your shark friend dominance in the kiss, letting his tongue explore your mouth as he thrusts into you roughly, the pleasure from it rising higher and higher. However, a minute or two into everything, he pulls back and gives you a curious look. 'Do you think, you could take both of them?' He asks, causing heat to pool in your stomach as you say you'd love to try.";
		WaitLineBreak;
		say "     Kurt pulls you up until only the tip is in your hole. From there he positions the head of his other cock at your hole and slowly pushes, causing you to groan as it starts to stretch you open. It takes a few seconds but soon enough both of the lengths are slowly inching into you, causing you to feel extremely filled. You're once again allowed to get used to the sensation but not as long before as the shark soon starts to thrust into you with vigor. The amount of pleasure you feel overdoes the pain you're feeling, until the pain vanishes completely and you're just moaning wantonly.";
		say "     The only sounds filling the room are of you and Kurt moaning and his balls slapping against your ass. However, you can tell that both of you are getting close to the climax of both of your pleasure as you can feel heat pooling all over you and your shark friend's sack tightening against you. Not long after that, he roughly slams into you one last time and he starts filling you with his hot seed. [if player is neuter]The sensation of being filled with cum causes your own orgasm to go off, causing your body to light up with ecstasy due to the fact that you have no equipment of your own[else if player is herm]The sensation of being filled with cum causes your own orgasm to go off, causing you to writhe in ecstasy as femcum drips from your pussy and you shoot your own load from your cock[else if player is male]The sensation of being filled with cum causes you your own orgasm to go off, making you writhe in ecstasy as you shoot your own load from your cock[else if player is female]The sensation of being filled with cum causes your own orgasm to go off, making you writhe in ecstasy as femcum drips from your pussy, pooling against your friend's chest[end if].";
		WaitLineBreak;
		say "     You breathe heavily and lean against Kurt's chest, the two of you resting and cuddling for a bit before he lifts you off his cocks. He smiles at you and then gets up and heads to another room. He appears to comeback with towels and cleans the both of you off. 'That was great!' He says, his facial expression changing to a grin, you matching it with your own as you nod in agreement. He then starts to get dressed, to which you grab whatever you took off, if anything and put it back on. 'You know, I'm glad you decided to go further in our relationship,' the shark says, smiling at you. You reply in return that you're glad as well. 'Well, if you want to have some fun again sometime, then just let me know.' Kurt says before picking back up his guitar.";
		now lastfuck of Kurt is turns;


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
