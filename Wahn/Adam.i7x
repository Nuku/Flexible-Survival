Version 1 of Adam by Wahn begins here.
[Version 1 - Put into its own file]

[ HP of Adam - Camp Bravo Tracking                          ]
[   0: never been to the camp                               ]
[   2: intro event to Camp Bravo done                       ]
[   3: player got access to Camp Bravo                      ]
[   4: female breeding allowed                              ]
[   5: Adam was born                                        ]


[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 1 - Events
[***********************************************************]
[***********************************************************]
[***********************************************************]

[...]

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 2 - NPC
[***********************************************************]
[***********************************************************]
[***********************************************************]

Table of GameCharacterIDs (continued)
object	name
Adam	"Adam"

Adam is a man.
ScaleValue of Adam is 3. [human sized]
Cocks of Adam is 1.
Cock Length of Adam is 10.
Cock Width of Adam is 8.
Testes of Adam is 2.
Cunts of Adam is 0.
Cunt Length of Adam is 0.
Cunt Width of Adam is 0.
Breasts of Adam is 2. [2 nipples]
Breast Size of Adam is 0.
[Basic Interaction states as of game start]
PlayerMet of Adam is false.
PlayerRomanced of Adam is false.
PlayerFriended of Adam is false.
PlayerControlled of Adam is false.
PlayerFucked of Adam is false.
OralVirgin of Adam is true.
Virgin of Adam is true.
AnalVirgin of Adam is true.
PenileVirgin of Adam is true.
SexuallyExperienced of Adam is false.
MainInfection of Adam is "Minotaur".
The description of Adam is "[AdamDesc]".
The conversation of Adam is { "<This is nothing but a placeholder!>" }.
The scent of Adam is "     Adam has a nice scent somewhere between the pheromone-laden musk of his father and a clean human man's smell. It doesn't have you ripping your clothes off, but sure is attractive.".

to say AdamDesc:
	if debugactive is 1:
		say "DEBUG -> HP of Adam: [HP of Adam] <- DEBUG[line break]";
	say "     The offspring of Elaine Scott and the minotaur out in the middle of the camp, Adam is a... half-minotaur you'd say. While his lower body consists of furred, two-jointed legs and hooves like his father's, from the waist up he's almost completely human, with only small nubby horns poking out from under his shoulder-length black hair. All in all, he's much less bulky than his father, having a more slender build and the upper body of a fit young man of about nineteen. His handsome, beardless face is very open and he smiles a lot. At the moment he's dressed in a black t-shirt and wide camo-shorts - with a hole in the back to allow for his moderately long flexible tail (which has a larger tuft of black fur at the end).";

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 3 - Conversation
[***********************************************************]
[***********************************************************]
[***********************************************************]

instead of conversing Adam:
	project Figure of Adam_icon;
	say "     He looks at you attentively as you step up, saying 'Oh, hello... I mean... Provisional Private Adam Scott ready for orders, sir!' Accepting his salute, you chat a bit and find the boy charming and pretty eager to please.";
	[
	say "[AdamTalkMenu]";
	]

to say AdamTalkMenu:
	say "     [bold type]What do you want to talk to Adam about?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Himself";
	now sortorder entry is 1;
	now description entry is "Ask Adam to tell you about himself";
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
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Himself"):
					say "[AdamTalk1]";
				wait for any key;
				say "[AdamTalkMenu]"; [looping back to keep talking with him]
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the young half-minotaur, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say AdamTalk1:
	say "     ...";

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 4 - Sex
[***********************************************************]
[***********************************************************]
[***********************************************************]

Instead of fucking Adam:
	project Figure of Adam_icon;
	if (lastfuck of Adam - turns < 6):
		say "     Adam chuckles as you try to talk him into sex again. 'You're just insatiable, aren't you? Too bad I don't have quite dad's stamina, so I need a break before I'm ready to go again...'";
	else:
		say "[AdamSexMenu]";
		now lastfuck of Adam is turns;

to say AdamSexMenu:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Suck Adam's cock";
	now sortorder entry is 1;
	now description entry is "Taste some half-minotaur seed.";
	[]
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Have him blow you";
		now sortorder entry is 2;
		now description entry is "Put Adam's mouth to good use.";
	[]
	if player is female:
		choose a blank row in table of fucking options;
		now title entry is "Let Adam fuck your pussy";
		now sortorder entry is 3;
		now description entry is "Let the boy breed you.";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Let Adam fuck your ass";
	now sortorder entry is 4;
	now description entry is "Let the boy fill your ass with his seed.";
	[]
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Take Adam's ass";
		now sortorder entry is 5;
		now description entry is "Fill the half-minotaur's ass with your cock.";
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
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Suck Adam's cock"):
					say "[AdamSex1]";
				else if (nam is "Have him blow you"):
					say "[AdamSex2]";
				else if (nam is "Let Adam fuck your pussy"):
					say "[AdamSex3]";
				else if (nam is "Let Adam fuck your ass"):
					say "[AdamSex4]";
				else if (nam is "Take Adam's ass"):
					say "[AdamSex5]";
				now lastfuck of Adam is turns;
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the half-minotaur, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say AdamSex1: [suck Adam's cock]
	say "     You pull Adam aside and lead him behind one of the long storage shelves in the tent. Giving him a deep kiss, you put your arms around him and slide your hands into his shorts at the back, feeling and softly squeezing his furred buns. Then you move on to his t-shirt, grabbing it and pulling it up and over his head, revealing Adam's fit and human upper body. Leaning down a bit, you suck on first one, then the other of his nipples, followed by a line of kisses down over his abs until you're crouched in front of the half-minotaur. Stroking the obvious bulge of his cock through the fabric of his shorts, you have him moaning needfully in no time. You smile up at Adam, undoing the zipper of his sorts then pull them down off his legs, freeing his proudly erect human manhood.";
	say "     Starting with a tentative lick over his balls, you run your tongue along the side of Adam's long shaft, circling the head of his cock as you get to it. You stroke his dick with your hand a few times, then take its tip between your lips. Adam moans as you slowly slide his manhood deeper into your mouth, running your tongue over its sensitive skin. Soon he hits the back of your mouth, but you take a deep breath and continue going, sliding his shaft deeper and deeper. When your nose finally bumps into the skin under his navel, you have Adam halfway down your throat and gasping almost incoherently how good it feels.";
	LineBreak;
	say "     Pulling off his cock to get some air, you run your hands through the black fur on his legs and tight buns, delighted in its softness. Then you stroke his saliva-coated manhood some more and start sucking him in earnest, pumping your lips up and down on his hard shaft. You keep Adam going for a while, bringing him to the brink of an orgasm several times, but stopping each time to let him cool down a bit. Then finally you go all out, sucking on his cock hard and pumping it in and out of your throat. With all the built up arousal, Adam doesn't last much longer before a mind-blowing orgasm shakes his body, his cock pulsing as spurt after spurt of his seed shoot directly into your stomach.";
	say "     Satisfied with pleasing the young half-minotaur, you stand up and give him another deep kiss, playfully exploring his mouth with your tongue.";
	NPCSexAftermath Player receives "OralCock" from Adam;

to say AdamSex2: [have Adam suck the player char's cock]
	say "     You pull Adam aside and lead him behind one of the long storage shelves in the tent. Giving him a deep kiss, you put your arms around him and slide your hands into his shorts at the back, feeling and softly squeezing his furred buns. Then you move on to his t-shirt, grabbing it and pulling it up and over his head, revealing Adam's fit and human upper body. Leaning down a bit, you suck on first one, then the other of his nipples, followed by licking over his chest and neck until you reach the chin and kiss him again. Moaning 'Blow me, beast-boy.', you move back a step and quickly slide off your clothes. Adam watches you undress, then smiles and replies 'My pleasure, sir.' before he licks his lips and kneels down.";
	say "     Grasping your by now proudly standing erection in one hand, Adam strokes it softly a few times, then holds it up as he gives your balls a tentative lick and runs his tongue up the underside of your shaft, making you pant in pleasure. Arriving at the tip, he circles the head of your cock a few times with his tongue, then takes it between your lips. Your manhood slowly sliding deeper into his mouth, his lips caressing sensitive skin and giving you amazing sensations. Soon your cock hits the back of your mouth, but Adam takes a deep breath and continues going, sliding your shaft deeper and deeper. When his nose finally bumps into the skin under your navel, you moan loudly from the warm and tight feeling that gives you.";
	LineBreak;
	say "     Pulling off your cock to get some air, Adam strokes its saliva-coated length some more, then start sucking you off in earnest, pumping his lips up and down on the hard shaft. He keeps going for a while, bringing you to the brink of an orgasm several times, but stopping each time to let you cool down a bit. Then finally he goes all out, sucking on your cock hard and pumping it in and out of his throat. With all the built up arousal, you don't last much longer before a mind-blowing orgasm shakes your body, spurt after spurt of your seed filling Adam's mouth.";
	say "     Adam sticks out his tongue, showing off your white creamy cum, then demonstratively swallows it all. Then he stands up and gives you a deep kiss, making you taste some of your cum and playfully tongue-wrestling with you.";
	NPCSexAftermath Adam receives "OralCock" from Player;

to say AdamSex3: [pussy-fucked by Adam]
	say "     You pull Adam aside and lead him behind one of the long storage shelves in the tent. Giving him a deep kiss, you put your arms around him and slide your hands into his shorts at the back, feeling and softly squeezing his furred buns. Then you move on to his t-shirt, grabbing it and pulling it up and over his head, revealing Adam's fit and human upper body. Leaning down a bit, you suck on first one, then the other of his nipples, followed by licking over his chest and neck until you reach the chin and kiss him again. Moaning 'I want you inside me, beast-boy.', you stroke his cock through the shorts, then move back a step and quickly slide off your clothes. Adam watches you undress with a smile on his face and replies 'My pleasure, Ma'am.' before grabbing a pile of blankets out of the shelf and spreading them on the floor.";
	say "     Lying down on the improvised bedding, you have a nice view as Adam pulls down his shorts to stand naked before you. His long cock stands proudly erect in your direction, showing an interesting contrast of white skin against the black fur of his legs. Liking what you see, you spread your legs invitingly and stroke the lips of your pussy, moaning, 'I'm waiting for you...' Adam is very eager to follow your invitation, kneeling down and putting his head between your legs to lick your pussy. And what a long and talented tongue he has - after running it over your sensitive lips and clit, he sticks it inside your vagina, wiggling around and poking your inner walls with the tip. Next, he [if player is male]runs his tongue up the underside of your cock[else]puts a line of small kisses up to your belly button[end if], then moves up to lie on top of you and gives you a hungry kiss.";
	WaitLineBreak;
	say "     Yearning for his cock inside you, you reach down and guide it to your opening, then scooch down a bit to get the head in. Adam moans in lust, sliding his manhood deeper, spreading your inner walls around his hard shaft. Soon he's all the way in, with his balls and soft furred hips rubbing against your body. For a moment, he just stays still like that, connected to you as intimately as possible, before starting to slide in and out. Moans rise in both your throats as he starts fucking you in earnest, going faster and faster with his deep strokes and rubbing just the right spots inside you. With the noise of your coupling quite loud now, it doesn't surprise you to see Elaine and a male soldier look behind the storage shelf to check out what's going on. You don't care if they watch, your whole mind focused on the virile half-minotaur fucking you.";
	say "     Wrapping your legs around him, you pull him towards you with each of his thrusts, making him slam into you harder and deeper. You lose track of time for a while as you're so thoroughly fucked, only few things registering through the lust-filled buzz in your head. One thing you do remember is Elaine pulling the soldier with her out of sight and moans starting up from the direction of her bed. As Adam does another deep thrust into your body, he stops for a moment, gasping 'I'm getting pretty close.'";
	say "     [bold type]So, where do you want him to cum?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Your pussy.";
	say "     ([link]N[as]n[end link]) - Your mouth.";
	if player consents:
		LineBreak;
		say "     You moan 'Fill me with your beast-boy cum!' while flexing your inner muscles around his cock. Eager to follow your command, he resumes his deep and hard strokes, only lasting for a few more before his body stiffen in your embrace. Adam holds tight onto you with his arms as spurt after spurt of his fertile seed shoots out of his throbbing cock and into you, filling your womb with warm cum.[fimpregchance]";
		say "     'That was amazing - you are amazing,' he moans in between kisses as you lie there for a while, making out with each other as you come down from the rush of orgasm.";
		NPCSexAftermath Player receives "PussyFuck" from Adam;
	else:
		LineBreak;
		say "     You moan 'Come in my mouth.' and slide your hands down to his hips to softly push him off. Eager to follow your command, Adam pulls out and moves up over you, kneeling down with his legs left and right of your body. His soft fur feels amazing against your chest and... what's still stroking your pussy? You stretch your head far enough to the side to look past Adam and catch a glimpse of his flexible tail stroking you with the bushy tip. Smiling, you pull on Adam's hips so he moves up a bit more, then get to work on his cock, teasing it with your tongue before sucking on it. It doesn't take long before you push him over the edge, gasping in lust as cum boils up from his balls and gushes into your mouth. You fondle his balls as he comes, feeling them twitch with each new blast of seed.";
		say "     After you milk the last bit of cum out of his cock, Adam moves back to lie down with you on the blankets. 'That was amazing - you are amazing,' he moans as you pull him in for a sloppy kiss, making him taste his own cum from your mouth. You stay there together for a while, making out with each other as you come down from the rush of orgasm.";
		NPCSexAftermath Player receives "OralCock" from Adam;


to say AdamSex4: [ass-fucked by Adam]
	say "     You pull Adam aside and lead him behind one of the long storage shelves in the tent. Giving him a deep kiss, you put your arms around him and slide your hands into his shorts at the back, feeling and softly squeezing his furred buns. Then you move on to his t-shirt, grabbing it and pulling it up and over his head, revealing Adam's fit and human upper body. Leaning down a bit, you suck on first one, then the other of his nipples, followed by licking over his chest and neck until you reach the chin and kiss him again. Moaning 'I want you inside me, beast-boy.', you stroke his cock through the shorts, then move back a step and quickly slide off your clothes. Adam watches you undress with a smile on his face and replies 'My pleasure, sir.' before grabbing a pile of blankets out of the shelf and spreading them on the floor.";
	say "     Adam pulls down his shorts to stand naked before you, his long cock standing proudly erect in anticipation and showing an interesting contrast of white skin against the black fur of his legs. Liking what you see, you kneel down on the improvised bedding and wiggle your ass at him, moaning, 'I'm waiting for you...' Adam is very eager to follow your invitation, getting behind you on his knees, then leaning down to rim you. And what a long and talented tongue he has - after running it over the outside of your hole a few times, he sticks it inside, wiggling around and poking your inner walls with the tip. Next, he puts a line of small kisses up your back until he reaches your neck and softly pulls your head to the side for a quick kiss.";
	WaitLineBreak;
	say "     You feel Adam's soft fur against your ass and legs and the warmth of his engorged cock rest on the small of your back. Yearning to feel him inside you, you reach back and stroke his shaft, then scooch forward a bit until it's resting in the crack of your ass. Adam moans in lust as he pushes forward, slowly increasing the pressure against your pucker before it relents and his cockhead enters you. Putting his arms around you from behind, he holds you close as he slides his manhood deeper, spreading your inner walls around his hard shaft. Soon he's all the way in, with his balls and soft furred hips rubbing against your body. For a moment, he just stays still like that, connected to you as intimately as possible, before starting to slide in and out. Moans rise in both your throats as he starts fucking you in earnest, going faster and faster with his deep strokes and rubbing just the right spots inside you.";
	say "     With the noise of your coupling quite loud now, it doesn't surprise you to see Elaine and a male soldier look behind the storage shelf to check out what's going on. You don't care if they watch, your whole mind focused on the virile half-minotaur fucking you.";
	say "     You rock backwards against him with each of his thrusts, making him slam into you harder and deeper. Losing track of time for a while as you're so thoroughly fucked, only few things not to do with Adam's movements, smell, etc. register through the lust-filled buzz in your head. One thing you do remember is Elaine pulling the soldier with her out of sight and moans starting up from the direction of her bed. As Adam does another deep thrust into your body, he stops for a moment, gasping 'I'm getting pretty close.'";
	say "     [bold type]So, where do you want him to cum?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Your ass.";
	say "     ([link]N[as]n[end link]) - Your mouth.";
	if player consents:
		LineBreak;
		say "     You moan 'Fill me with your beast-boy cum.' while flexing your inner muscles around his cock. Eager to follow your command, he resumes his deep and hard strokes, only lasting for a few more before his orgasm overcomes him. Adam holds on tight with his arms around you as spurt after spurt of his fertile seed shoots out of his throbbing cock and into you, filling your asshole with warm cum. [if player is male]Feeling your lover's load inside you, your own arousal mounts quickly, and after a moment of rapid stroking you come all over the blankets below.[end if]";
		say "     Turning you around, Adam says 'That was amazing - you are amazing.' before pulling you down on the blankets to make out and lie there together as come down from the rush of orgasm.";
		NPCSexAftermath Player receives "AssFuck" from Adam;
	else:
		LineBreak;
		say "     You moan 'Come in my mouth.' and slide your hands down to his hips to softly push him off. Eager to follow your command, Adam pulls out and moves around you, holding his hard cock out for you to suck. Smiling, you lean forward a bit and get to work on his cock, teasing it with your tongue before sucking on it. It doesn't take long before you push him over the edge, gasping in lust as his cum gushes into your mouth. You fondle his balls as he comes, feeling them twitch with each new blast of seed they deliver.";
		say "     After you milk the last bit of cum out of his cock, Adam moves back to lie down with you on the blankets. 'That was amazing - you are amazing,' he moans as you pull him in for a sloppy kiss, making him taste his own cum from your mouth. You stay there together for a while, making out with each other as you come down from the rush of orgasm.";
		NPCSexAftermath Player receives "OralCock" from Adam;

to say AdamSex5: [give Adam's tight ass a good fucking]
	say "     You pull Adam aside and lead him behind one of the long storage shelves in the tent. Giving him a deep kiss, you put your arms around him and slide your hands into his shorts at the back, feeling and softly squeezing his furred buns. Then you move on to his t-shirt, grabbing it and pulling it up and over his head, revealing Adam's fit and human upper body. Leaning down a bit, you suck on first one, then the other of his nipples, followed by licking over his chest and neck until you reach the chin and kiss him again. Moaning 'I'm gonna fuck you, beasty-boy.' you push him to the next shelf and turn him around. Standing close behind him, rubbing your crotch against his ass, you grab his hands and set them on one of the higher shelf boards so he can hold on to it. Then you run your hands down over his defined chest, arriving at his shorts. Quickly undoing the button and zipper, you pull them down, so Adam now is naked and ready for you to fuck him.";
	say "     Shucking off your own clothes in no time at all, you take your engorged cock in hand and move in position behind your half-minotaur lover. It's an amazingly soft feeling as you slide it up and down along the crack of his ass with his short black fur rubbing against your skin. Yearning to feel his hole around your cock, you lean forward, pressing against his pucker with the tip of your maleness. Adam moans in lust as you pop in, stretching his sphincter around your cock's girth. Putting your arms around him from behind, you hold him close as you slide your manhood deeper, spreading his inner walls around your hard shaft. Soon you're all the way in, with your balls and hips touching the soft fur of Adam's ass. For a moment, you just stay still like that, connected to him as intimately as possible, before starting to slide in and out. Moans rise in both your throats as you start fucking him in earnest, going faster and faster with deep strokes and rubbing just the right spots to make him gasp and moan.";
	say "     With the noise of your coupling quite loud now, it doesn't surprise you to see Elaine look behind the storage shelf to check out what's going on. You don't care if she or anyone else watch, your whole mind focused on the tight hole of your virile half-minotaur buddy. Grabbing his hips with both hands, you speed up, slamming into Adam harder and deeper. Then suddenly he gasps, a shudder running through his body as the anal stimulation drives him to orgasm, with long spurts of his cum splattering all over the supply chests of the shelf he's holding on to. With his tight hole flexing around your shaft with each of his shots, you're soon getting close to cumming yourself.";
	LineBreak;
	say "     [bold type]So, where do you want him to cum?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - In his ass.";
	say "     ([link]N[as]n[end link]) - In his mouth.";
	if player consents:
		LineBreak;
		say "     You just keep going, thrusting into Adam several more times hard enough to create loud slapping noises as your hips meet his ass. Then as you feel your balls tightening, you bottom out in him, holding Adam tightly around the chest while spurt after spurt of your seed shoot into him.";
		say "     When you pull your cock out of his dripping hole a while later, Adam turns around, saying 'That was amazing - you are amazing.' before pulls you into an embrace, making out with you.";
		NPCSexAftermath Adam receives "AssFuck" from Player;
	else:
		LineBreak;
		say "     You moan 'I'm close - and I want to come in your mouth.' and carefully pull out of his ass. Eager to follow your command, Adam turns around and kneels before you, taking hold of your hard cock. Smiling, he runs his tongue over the underside, then goes to work giving you a blow-job. It doesn't take long before he pushes you over the edge, gasping in lust as your load gushes into Adam's mouth. After he milks the last bit of cum out of your cock, Adam looks up at you and sticks out his tongue, showing you the ample load you shot. Pulling him up from the ground, you give him a deep kiss, tasting your own cum as your tongues explore each other's mouths.";
		say "     Coming back up to breath, Adam moans 'That was amazing - you are amazing.' affectionately stroking your cheek.";
		NPCSexAftermath Adam receives "AssFuck" from Player;
		NPCSexAftermath Adam receives "OralCock" from Player;

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 5 - Ending
[***********************************************************]
[***********************************************************]
[***********************************************************]

[
when play ends:
	if (HP of Adam > 4): [Adam was born]
		if Adam is in Quartermaster's Tent: [never left the camp]
			if humanity of player < 10:
				increase score by 0; [do nothing, player succumbed and unaware of Adam's fate.]
			else:
				say "     <Meeting Adam outside the city in the ending>";
		else if (Adam is in Bunker):
			if (humanity of player < 10):
				say "     <Player succumbs, usually comes to the bunker and does things to their companions>";
			else:
				say "     <Player survives and leaves the city with companions>";
]

Adam ends here.
