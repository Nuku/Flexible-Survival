Version 1 of Campus Couple NPC by Closerhenry begins here.
[ Version 1 - New NPCs ]

[Jadako is pronounced Ja-day-co]

[ CampusCoupleRelationship                                              ]
[   0: Have not met Jadako and Coach Weber                              ]
[   1: Have learned where the couple's room                             ]
[   100: Permanently locked out of the two                              ]

CampusCoupleRelationship is a number that varies.

An everyturn rule:
	if daytimer is day:
		now Jadako is nowhere;
		now Joseph is nowhere;
	else if daytimer is night:
		move Jadako to Jadako's Room;
		move Joseph to Jadako's Room;

Section 1 - Declaring the Room

[Room Declaration]

Table of GameRoomIDs (continued)
Object	Name
Jadako's Room	"Jadako's Room"

Jadako's Room is a room.
The description of Jadako's Room is "[jadakoroomdesc]".

To say jadakoroomdesc:
	say "     Jadako's room is a standard college dorm room. It's got different video game and anime posters hanging throughout, most depicting buff male characters. A television sits on a table with a collection of different DVDs, all of some anime or movie. A large, open glass window is on the other end of the room. Atop its windowsill is a collection of exotic sex toys, all proudly on display. The sheets to Jadako's bed are thrown about, suggesting he doesn't do a great job of staying tidy.";

Section 2 - Declaring Jadako and Joseph

Table of GameCharacterIDs (continued)
object	name
Jadako	"Jadako"

Jadako is a man.
[Physical details as of game start]
ScaleValue of Jadako is 3. [human sized]
SleepRhythm of Jadako is 0. [0 - awake at all times, 1 - day active, 2 - night active]
Cock Count of Jadako is 1. [X cock]
Cock Length of Jadako is 7. [X Inches]
Ball Size of Jadako is 5.
Ball Count of Jadako is 2. [X balls]
Cunt Count of Jadako is 0. [X pussy]
Cunt Depth of Jadako is 0. [X Cunt]
Cunt Tightness of Jadako is 0. [X Cunt]
Nipple Count of Jadako is 2. [X nipples]
Breast Size of Jadako is 0. [X at the start]
[Basic Interaction states as of game start]
TwistedCapacity of Jadako is false. [can not take oversized members without pain]
Sterile of Jadako is true.
PlayerMet of Jadako is false.
PlayerRomanced of Jadako is false.
PlayerFriended of Jadako is false.
PlayerControlled of Jadako is false.
PlayerFucked of Jadako is false.
OralVirgin of Jadako is false.
Virgin of Jadako is true.
AnalVirgin of Jadako is false.
PenileVirgin of Jadako is false.
SexuallyExperienced of Jadako is true.
MainInfection of Jadako is "".
The description of Jadako is "[jadakodesc]".
The conversation of Jadako is { "<This is nothing but a placeholder!>" }.
The scent of Jadako is "The lithe feline smells of exotic cologne, covering a heavy scent of sex and sweat.".

To say jadakodesc:
	say "     Jadako is an anthro feline. His fur has a variety of different colors, mostly oranges, blacks, and whites. His large cat ears stand straight up, with a single piercing in his left ear. His frame is thin and wiry, but not without muscle. He wears no clothes, displaying his sheathed cock and long tail. You can't currently see it, but you know it is a bright red shaft, humanoid looking but covered in smooth barbs. His golfball sized testicles hang below the sheath, covered in his orange fur. Jadako notices you checking him out, as he flexes and performs a couple of poses to show off his body more. He lets out a smooth purr, clearly enjoying the attention.";

Table of GameCharacterIDs (continued)
object	name
Joseph	"Joseph"

Joseph is a man.
[Physical details as of game start]
ScaleValue of Joseph is 3. [human sized]
SleepRhythm of Joseph is 0. [0 - awake at all times, 1 - day active, 2 - night active]
Cock Count of Joseph is 1. [X cock]
Cock Length of Joseph is 9. [X Inches]
Ball Size of Joseph is 7.
Ball Count of Joseph is 2. [X balls]
Cunt Count of Joseph is 0. [X pussy]
Cunt Depth of Joseph is 0. [X Cunt]
Cunt Tightness of Joseph is 0. [X Cunt]
Nipple Count of Joseph is 2. [X nipples]
Breast Size of Joseph is 0. [X at the start]
[Basic Interaction states as of game start]
TwistedCapacity of Joseph is false. [can not take oversized members without pain]
Sterile of Joseph is true.
PlayerMet of Joseph is false.
PlayerRomanced of Joseph is false.
PlayerFriended of Joseph is false.
PlayerControlled of Joseph is false.
PlayerFucked of Joseph is false.
OralVirgin of Joseph is false.
Virgin of Joseph is true.
AnalVirgin of Joseph is false.
PenileVirgin of Joseph is false.
SexuallyExperienced of Joseph is true.
MainInfection of Joseph is "".
The description of Joseph is "[josephdesc]".
The conversation of Joseph is { "<This is nothing but a placeholder!>" }.
The scent of Joseph is "The bulky canine smells of sweat and potent male musk.".

To say josephdesc:
	say "     Joseph is an anthro canine. He has shaggy brown fur covering his body, uniform in color. Stemming from the sides of his head are floppy canine ears. The man is muscular and bulky, without a single hint of fat. His thighs are thick with muscle, showing how much he works out. The coach wears his official jacket, colored a bright green with gold colored cuffs, zipper collar, and a gold 'W' on the back, most likely standing for Weber. He also wears a pair of short, black athletic shorts which go down a little more than halfway down his thighs. A small hole is cut in the back for Joseph's fluffy tail. You can see a large bulge in his shorts however, which seems to occasionally twitch. Looking up, you see Joseph staring at Jadako's bare ass, tail raised up. Joseph sees that you notice, and looks away with embarrassment.";

Section 3 - Talking to the Couple

Instead of conversing the Jadako:
	if CampusCoupleRelationship < 1 or CampusCoupleRelationship is 100: [should not be available yet]
		say "     ERROR: Jadako shouldn't be where a player can see him yet and said player should not be able to be in the Jadako's Room! Please report to Closerhenry on the FS Discord and quote this tracking number for easier bugfixing: [CampusCoupleRelationship]";
	else:
		say "     You approach the colorful feline, who places his hand on his hip and stands waiting.";
		wait for any key;
		say "[JadakoTalkMenu]";

to say JadakoTalkMenu:
	LineBreak;
	say "What do you want to talk with Jadako about?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Himself";
	now sortorder entry is 1;
	now description entry is "Try to learn a bit about Jadako's background";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Coach Weber";
	now sortorder entry is 2;
	now description entry is "Talk to him about his coach and lover.";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Sports";
	now sortorder entry is 3;
	now description entry is "Ask him what sport he plays.";
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
				if (nam is "Himself"):
					say "[JadakoTalk1]";
				if (nam is "Coach Weber"):
					say "[JadakoTalk2]";
				if (nam is "Sports"):
					say "[JadakoTalk3]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from Jadako, who looks at you a little funny. 'Ok, nevermind, I guess?' he questions.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say JadakoTalk1:
	say "     You ask Jadako about himself, where he comes from, and other questions. 'Huh, didn't know you were so interested in me. Well, my parents were immigrants, and they used all the money they had to send me to college here without student loans. That's why I'm still here, you know? I can't let them down after they gave me so much. I didn't have the easiest time adapting here. Most of the people were nice, but there were always the people who picked on me because of my heritage. Thank god that, at least now, no one can tell where you're from anymore, and no one really cares,' he muses. You nod your head in understanding, and put a hand on his shoulder. 'Thanks, I appreciate the support. Things are getting better, especially now that I got with Joseph.'";

to say JadakoTalk2:
	say "     You ask Jadako about his partner, Coach Weber. 'Oh, the coach? He's the best. He always supported me, pushing me to try harder and always do better. I was worried after all of this started that I'd never see him again, but then we found each other... I'll be honest, even before this, I kinda had a crush on him... I never told him, because I thought he'd laugh me off, but now, I'm so happy we're together. Not only is he a great guy, though, he's got a great cock!' Jadako laughs, as his sheath trembles and the tip of his red cock pokes out. Clearly the feline can't get enough of the handsome coach.";

to say JadakoTalk3:
	say "     You inquire about what sports Jadako plays. 'Oh, I do Track and Field. I've never been very good at lifting heavy things, but I'm a natural at running. I always did really great in the events, and my teammates were so proud of me! Some of the few times I really felt wanted and admired. It's also where I met Coach Weber. He's such a great coach, always pushing everyone to try their best, but also being accepting of faults. The perfect mix of encouragement and strictness. I wonder what happened to everyone else on the team, though. Coach Weber is the only one from the team that I've seen since this all started... I'm sure they're fine, being such great runners, they could get away from anything short of a cheetah!' Jadako jokes, however you can tell he is genuinely worried about them.";

Instead of conversing the Joseph:
	if CampusCoupleRelationship < 1 or CampusCoupleRelationship is 100: [should not be available yet]
		say "     ERROR: Joseph shouldn't be where a player can see him yet and said player should not be able to be in the Jadako's Room! Please report to Closerhenry on the FS Discord and quote this tracking number for easier bugfixing: [CampusCoupleRelationship]";
	else:
		say "     You approach the muscular canine, who looks at you warmly. 'Is there something you want to talk about?'";
		wait for any key;
		say "[JosephTalkMenu]";

to say JosephTalkMenu:
	LineBreak;
	say "What do you want to talk with Joseph about?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Himself";
	now sortorder entry is 1;
	now description entry is "Try to learn a bit about Joseph's history.";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Jadako";
	now sortorder entry is 2;
	now description entry is "Talk to him about his student and lover.";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Sports";
	now sortorder entry is 3;
	now description entry is "Ask him what sport he teaches.";
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
				if (nam is "Himself"):
					say "[JosephTalk1]";
				if (nam is "Jadako"):
					say "[JosephTalk2]";
				if (nam is "Sports"):
					say "[JosephTalk3]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from Joseph. He gives you a humorous look, before saying, 'If there's anything you need to talk about, I'm all ears.'";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say JosephTalk1:
	say "     You ask Joseph about himself. How did he get his job, where he came from, and other things. 'Well, I always wanted to stick with Track and Field after college, and it just so happened that the previous coach was retiring the year I graduated. The college hired me pretty quickly since I did so well as a student. I think this would have been my 14th year teaching. Shame that this whole thing happened, lots of people got hurt because of it,' he says solemnly, but quickly shakes himself out of the moment of sadness.";

to say JosephTalk2:
	say "     You ask Joseph about Jadako. 'Ah, Jay's a great student. He took Track and Field really seriously. You wouldn't believe how often I'd see him on the track running, trying to build his endurance and speed. He was one of the best students in the program. Had a bit of a problem making friends, though. I'm glad to see that he's gotten a lot more social, though. I'll admit, it surprised me when I met him after all this happened, him being a cat all of a sudden, and then when he came onto me, I guess I realized I always saw a lot of myself in him. I feel bad breaking professionality, but these are changing times. I'd rather him be with me then some person who'd just take advantage of him,' he states protectively. It seems like these two really do love each other. It makes you happy to know more people experience more than just blind lust.";

to say JosephTalk3:
	say "     You inquire about Track and Field and the team. 'Well, our school may be known for its football team, but we had one hell of a track team. We'd always place high up, and not just because of my expert coaching skills,' he chuckles. 'No, the students cared a lot about track. Always practicing together and trying help each other, the team was like a family. Sad to say, other than Jadako, I don't know what happened to the other students. I hope they're alright. I don't know what I'd do if I found out something bad happened to them...' You assure him that they're probably fine. He nods, saying, 'Thank you. Usually, the teacher is supposed to give the encouragement, but I appreciate it.'";

Section 4 - Fucking the Couple

Instead of fucking the Jadako:
	if (lastfuck of Jadako - turns < 3): [he got fucked in the last 9 hours = three turns]
		say "     'Hey, sorry to be a bummer, but I'm not really up to it right now... maybe later? Sorry, I'm still a bit worn out from last time,' Jadako sighs.";
	else:
		say "     You ask Jadako how he and Joseph feel about going for a round, who both agree they're up for it.";
		wait for any key;
		say "[CampusCoupleSexMenu]";

Instead of fucking the Joseph:
	if (lastfuck of Joseph - turns < 3): [he got fucked in the last 9 hours = three turns]
		say "     'Sorry to disappoint, but Jadako is still recovering. You can wait until he's ready, right?' he asks, turning you down.";
	else:
		say "     You ask Joseph how he and Jadako feel about going for a round, who both agree they're up for it.";
		wait for any key;
		say "[CampusCoupleSexMenu]";

to say CampusCoupleSexMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Be Spitroasted";
	now sortorder entry is 1;
	now description entry is "Get spitroasted by the couple";
	[]
	if Player is not neuter:
		choose a blank row in table of fucking options;
		now title entry is "Spitroast Jadako";
		now sortorder entry is 2;
		now description entry is "Spitroast the tiny little feline";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Cockworship";
	now sortorder entry is 3;
	now description entry is "Take care of both of their cocks";
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
				if (nam is "Be Spitroasted"):
					say "[CampusCoupleSex1]";
				if (nam is "Spitroast Jadako"):
					say "[CampusCoupleSex2]";
				if (nam is "Cockworship"):
					say "[CampusCoupleSex3]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You change your mind, deciding now isn't a good time. The two understand, since they can always fuck each other later.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say CampusCoupleSex1:
	say "     You suggest that the two lovers take you in between them. Jadako agrees eagerly, happily exclaiming 'Sounds good to me! Isn't everyday I get to top.' Jadako reaches down, lightly stroking his already hard feline cock. [if Player is female]'Ok, but I'll just let you know I'm an ass-man,'[else]'Sounds good to me. I'll take a piece of that ass,'[end if] Joseph chuckles as he walks around behind you, squeezing your ass. You and the coach both strip bare, while Jadako lets out a little laugh. 'You both really should just go au naturel. It's way easier,' he suggests sultrily. Joseph lets out a sarcastic laugh, but you can't help but think you wouldn't mind seeing more of the coach naked. Jadako opens a nearby cabinet and pulls out a bottle of lube, which he tosses to the canine behind you. Coach Weber catches the bottle, but looks at it closely. 'I thought you kept the lube in that cabinet,' the muscular anthro wonders. 'Oh, I do. I also keep some in this cabinet. And the nightstand, and the dresser, and the closet...' Jadako lists.";
	LineBreak;
	say "     The room is silent for a moment as you (and most likely Joseph as well) consider why Jadako has so much lube. 'Okaaaaaay...' Joseph says as he uncaps the bottle of lube and gets a healthy amount on his hands. 'You should probably get on your knees now on the coffee table,' Joseph instructs. You comply to the coach as he rubs the lube over his cock, getting his shaft nice and slippery. The coffee table has a nice pillowtop, protecting your knees from the hard wood. Jadako stands in front if you, his cock dangling only a few inches from your face. It twitches ever so often, obviously excited to go in a hole for once. A drop of drool falls from you open mouth, which causes the feline to let out a little chuckle. 'And I thought I was the cock slut... Obviously I have a lot to learn from you,' he purrs as gives his cock a single pump. Behind you, the sound of a cap closing reveals that Joseph is all lubed up now.";
	WaitLineBreak;
	say "     From behind you feel the coach's head rub up against your hole, sending shivers of pleasure down your body. He simply teases you for a little, which both lubes your hole slightly and relaxes your back entrance. Jadako moves forward and lays is dick across your face, its musky scent driving you wild. The frisky feline grinds his dick along your face, the barbs lightly tickling it. 'I'm going in now, don't let me surprise you,' Joseph announces, giving you a couple seconds to prepare yourself. It's also just enough time for Jadako to pull his cock off your face and position itself in front of your mouth. You open wide, making sure to exhale a slow, hot breath onto the cat's head. With a swift motion, Joseph pushes into your back hole, causing you to gasp. Jadako takes his opportunity and shoves into your open mouth, filling your other end. Your tongue wraps around the sexy cat's man meat, savoring its musky flavor. The canine coach behind you pushes further in, until you feel his knot bump into your backside.";
	LineBreak;
	say "     Coach Weber slides out halfway, then pushes back in. He continues this motion, while you lap greedily at Jadako's barbed cock. Not content with standing by, the feline begins softly bucking his hips as he places his hands gently on your head. His claws lightly scratch the top of your head as his cock thrusts in and out of your mouth. You let these two lovers fuck you from both ends, relishing the feeling of being filled. Every time Joseph's large balls slap into the back of your ass, and the feeling of Jadako's barbs stimulates your mouth. You reach a hand under you to your [if Player is male][cock of Player] cock and begin stroking it in ecstasy[else if Player is female]cunt and stick your fingers in, desperately stirring around[else]nipples, twisting and pulling them[end if]. The coach's meaty hands grasp tightly at your backside as he thrusts, grunting with each one. 'Unf! You've got a -ugh- great ass, I don't think I can go much longer!' he exclaims while panting.";
	LineBreak;
	say "     Meanwhile, Jadako's teeth are gritted as he throat fucks you. His soft movements have accelerated into passionate thrusts. The coach lets out a loud moan as he finally rams all the way into you, his knot popping into your hole as he orgasms. You can feel warmth spread through you as his cock throbs. Simultaneously, Jadako cums as well, his cock twitching as he sends a stream of his warm feline spunk down your throat. Swallowing it all, the dual orgasms sends you off as well[if Player is male], your cock shooting off ropes of cum below you, spraying right onto the cushions. Your prostate explodes with pleasure as it is sprayed directly with Joseph's cum, your ass hungrily milking his canine tool for more of that intoxicating seed[else if Player is female]. Your pussy throbs with ecstasy as you orgasm, the muscles in your vagina contracting around your fingers[end if].";
	say "     Jadako slides his cock out of your mouth, sighing with contentment. Joseph's cock remains rock hard, knotted inside of you. It gives the occasional twitch, which only enhances the experience. He bends over you, resting his large bulky body on your back, the warmth from his fur feeling wonderful. 'You did such a great job,' he whispers to you as he wraps his arms around your chest. The meaty arms make you feel so... protected, as the canine rests on you. 'Let's move to somewhere more comfortable,' the hound suggests, as he straightens back up. Not waiting for you, he lifts you up effortlessly, carrying you while still attached via his knot. He brings you to Jadako's bed, and lays the two of you down on it. His cock in your backside, he spoons you with his arms wrapped around you, serving as a warm blanket. Jadako lays behind his coach, creating a spoon train as you all cuddle together on the bed, covered in sexual fluids, until you fall asleep.";
	WaitLineBreak;
	say "     You eventually wake up, still being spooned by the muscular coach, but you notice his cock is no longer inside of you. He must have taken it out at some point while you were asleep. Joseph notices you stirring, and he gently rubs your face. 'Waking up?' he asks softly. You yawn, stretching your arms. 'Well, I'm glad you had a great time. We certainly had a great time...' the canine rumbles. He sits up and leaves the bed, grabbing his athletic shorts and jacket. Coach Weber dresses himself, and sits down beside Jadako on the sofa, who was reading a book. You exit the bed, dress, and grab your stuff, prepared to head off.";
	now lastfuck of Joseph is turns;
	now lastfuck of Jadako is turns;

to say CampusCoupleSex2:
	say "     You ask Joseph if he would be okay with sharing his boy toy, Jadako. He murmurs his approval, asking which side you want to take.";
	say "     [bold type]Which side of Jadako do you take?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Give Jadako a good old face-fuck.";
	say "     ([link]N[as]n[end link]) - Take Jadako's back hole for yourself.";
	if Player consents:
		LineBreak;
		say "     You say that you'll take Jadako's mouth. 'Fantastic, I've been waiting for something like this. Two hot guys going at me? A dream come true,' the feline says with enthusiasm. He opens a nearby drawer and tosses a bottle of lube to Joseph, who begins lubing up himself. The cat sets himself on a short coffee table, the perfect height to line himself up for you and Joseph. The slutty feline looks eagerly at your [cock of Player] length, already drooling at the thought of sucking you off. You step closer to him, your cock ready to be taken in by him. He begins to lap at your head, his feline tongue dragging nicely along it. Jadako brings a hand up and begins to fondle your balls, lightly rubbing his claws along to give you delicate sensations. 'Oh... I can't wait to have you two in me... Are you ready yet, Joseph?' Jadako asks impatiently. Joseph finishes up behind his lover, and aligns his cock with the cat's behind.";
		LineBreak;
		say "     His muzzle opens as he takes your shaft in his mouth, being careful to not hurt you with his fangs. He expertly begins working your cock, running his tongue all over the right places. Meanwhile, Joseph has finished preparing, and pushes into Jadako. The feline moans around your cock as his lover enters him, but that doesn't stop him from servicing you expertly. While Jadako's efforts feel wonderful, it isn't enough as you begin to slowly thrust into his mouth, relishing the feeling of your shaft lightly grazing the tips of the feline's fangs. Both you and Joseph thrust into the student, making use of his hunger for cock. The cat-morph brings a hand up to your thigh and begins stroking it gently. Across from you, Joseph is grasping the feline's rear while thrusting into him. There is a loud squelch with every thrust, as the sound of sex fills the room.";
		LineBreak;
		say "     You two both fuck the lusty feline, enjoying every thrust into the wanting student. With every thrust, you feel the texture of Jadako's mouth all around your shaft. Jadako continues to moan around your cock. It isn't too long before both of you begin getting more frantic with your thrusts, growing closer to orgasm. Jadako releases your thigh, and begins stroking himself as he looks up at you with half closed eyes. His look arouses you further, and you begin thrusting even faster. Joseph violently thrusts into the feline over and over, firmly grasping his lover's rump. He lets out a grunt with every thrust. 'Jay, I -unf- see you've been doing your flexibility training... Good -ungh- job!' he growls.";
		LineBreak;
		say "     A pressure grows in your cock, signaling to you that you're about to cum. You thrust forward one last time, as you begin unloading your seed into Jadako's throat. He greedily drinks every drop, not a single bit leaving his mouth. Behind him, Joseph howls as he pushes his knot into the feline, coating the feline student's inside with layers of his virile cum. Jadako is set off by this, as he begins to orgasm as well. His cock shoots off, sending ropes of his seed onto the coffee table, and his ass clenches around his coach's cock and knot. You pull out of the cat's mouth, allowing Jadako to breathe easier. 'That... was the best orgasm of my life,' he breathes. Joseph lifts up the feline, still knotted to his cock, and cuddles him in his arms. 'You did a great job, Jay... I'm really proud of you.' The two kiss passionately, and move to the bed where they cuddle while waiting for the knot to soften.";
		LineBreak;
		say "     You join the two on the bed, laying behind Joseph. You wrap your arms around the stud, appreciating the warmth he grants and his male musk. His solid frame proves easy to hold and makes you feel safe. Your hands explore the coach's body, delicately feeling his defined muscles and soft but ragged brown fur. You all three lay there, for what seems like hours, until finally Joseph pulls out of Jadako with a pop. You and Joseph redress, and you gather your belongings.";
		now lastfuck of Joseph is turns;
		now lastfuck of Jadako is turns;
	else:
		LineBreak;
		say "     You say that you'll take Jadako's ass. 'Fantastic, I've been waiting for something like this. Two hot guys going at me? A dream come true,' the feline says with enthusiasm. He opens a nearby drawer and tosses a bottle of lube to you. You quickly undress with Joseph while Jadako positions himself on a short coffee table, the perfect height to take both you and Joseph at the same time. You pour some of the lube on your hand and slather it on your cock, getting it nice and slippery. You then kneel down before Jadako's hole and bring your mouth to it. The warm breath coming from your mouth causes the feline to shiver, and his hole to clench. You bring your tongue to the hole, and softly lap at it. Jadako gasps when your tongue touches his pucker as you slowly trail your tongue around his hole. It tastes of musk, and it isn't long before you push further inside. His hole is loose and waiting, and you don't have a hard time at all navigating your tongue through his passage. It appears that Jadako uses those toys of his pretty often, judging by just how loose he is.";
		LineBreak;
		say "     You remove your tongue from the cat's sufficiently prepared hole and stand back up. Joseph has stroked his cock to erection, which Jadako has already began to play with. He strokes the meat gently, giving the tapered head a lick. You alight your [cock of Player] cock with the horny feline's backside, and begin pushing in. The hole stretches welcomingly, embracing your shaft without any difficulty. Meanwhile, Joseph pushes into Jadako's muzzle as the two of you begin fucking the cat. The student's well used hole is snug against your dick after accepting all of it, showing that even though it is easily accepting it will still cling to your cock. There is only the smallest amount of cushion to Jadako's rear, contrasting his well toned thighs. Your balls slap against Jadako's backside with every thrust. The feline shakes with each thrust, adding to Joseph's experience as the cat blows him.";
		LineBreak;
		say "     The cat's ass feels heavenly on your rod, massaging it expertly every second you are inside of him. The student clearly has had a lot of practice, maybe even before the apocalypse began. You run your hands up and down his thighs, appreciating the musculature on the lithe athlete. His fur feels wonderful to stroke, and its beautiful black, orange, and white colors are pleasing to the eyes. The room quickly smells of your sex, and the sounds of Jadako moaning and the wet sounds of sex echo throughout. With the window open, you're sure anyone passing by would your romp, but the thought only arouses you further. Joseph has his hands on Jadako's head, throatfucking the student with his eyes closed and teeth clenched. It would seem he's getting close to orgasm, and you are as well. You quicken your thrusts into the well lubricated cat's passage, the wet feeling surrounding your cock bringing you further and further to climax.";
		LineBreak;
		say "     Pressure builds in your cock and your balls churn. You thrust forward one last time, and begin shooting off ropes of your seed into Jadako's rear, painting his insides white with your cum. Joseph is set off as well, letting out a growl as he pulls his head back and his cock out of Jadako's muzzle, shooting loads of his virile spunk onto the top of Jadako's head. The feline groans with pleasure as the sensations are too much for him, and his feline cock begins to cum as well, shooting off onto the coffee table below him. Joseph keeps cumming and cumming onto the feline's head, his dick twitching and knot swollen heavily as it spurts out more and more cum. The feline raises and hand and grabs a handful to rub into his chest, covering him with the coach's scent. Finally, all of you settle down, your orgasms over.";
		LineBreak;
		say "     Jadako removes himself from the table, and hugs him amorously. You lay down on the bed, spend, and Jadako lays behind you, wrapping his thin furred arms around you. He sticks one leg under your legs, and one over, clutching to you tightly. The feline straddles your back, rubbing his wet cheek against your neck. He lets out a purr as his hands make his way to your nipples as he begins to gently pay with them. Joseph flops down in front of you, perfectly position for you to wrap around him as well, resting your dick against his fluffy rear. You rest your face on his muscular back, rubbing up against his soft fur. Your hands rub against his well-toned chest, his pecks easily feelable. You rest there, sandwiched by the two lovely furs, until you fall asleep. You dream of being fucked by the two endlessly, until you eventually awaken in the bed alone. Both Jadako and Joseph rest on the sofa, cuddling while reading a book.";
		now lastfuck of Joseph is turns;
		now lastfuck of Jadako is turns;

to say CampusCoupleSex3:
	say "     You request that the couple let you service them, giving their cocks the attention they deserve. The two agree, and both you and Joseph strip yourselves. The lovers stand close together as you kneel before them, their cocks quickly hardening. Jadako's is a slightly deep pink and is covered in feline barbs, but has a modest size. Joseph's, however, is a different beast. His thick canine dick is a bright red, and looks nearly a foot long. At the base of his shaft is a his knot, already slightly swollen. You bring your hands up to their ballsacks, fondling them both lightly. Jadako's are the size of golfballs, and easily fit in your hands. Jadako lets out a purr as you massage his small orbs. The canine's testicles are much larger, however. They are as big as oranges, and throb with need. You have a hard time holding them in one hand as you try to lightly rub them. Bits of pre are already emerging from the duo's cocks, and the smell of male musk arouses you greatly.";
	LineBreak;
	say "     You ease up on their balls and move on to the main event. You bring your mouth to Joseph's throbbing head, and give it a slow lick. The taste of his pre is addicting, making you desperately lap for more. You bring a hand to Jadako's shaft, not leaving him out, as you slowly give him a hand job. Not content to just lick, you open your mouth wide and stuff the coach's cock inside your mouth, relishing its wonderful taste. It fills your entire mouth, and the dog-morph lets out an aroused growl. Jadako and Joseph face each other and embrace while you service them, making out and exploring each other's bodies. You pop Joseph's cock out of your mouth and switch to Jadako's, whose smaller size is much easier to work with. The feline's shaft easily enters your mouth as you suck on it like a popsicle, running your tongue around it to get all of its wonderful flavor.";
	LineBreak;
	say "     Done warming up, you take your mouth off of Jadako's cock. You ready yourself as you grab both shafts, bring them together. You rub them together, licking and tickling them to stimulate them further. One in each hand, you jerk them off simultaneously, breathing deeply on them. The two continue to make out as you jack them off, clearly enjoying the attention. The two throb with greater intensity, both spewing pre. You continue to pump, knowing they're approaching their limit, as they both break their kiss to let out a moan as they both orgasm. Their cocks begin shooting off ropes of ivory cum, coating your face. You let the seed spatter all over your face and chest, enjoying the delightful cum bath. The warmth of their combined seed, as well as its smell, are too much for you, and you [if Player is male]bring your hands to your own cock, using their cum as lube to rapidly pump yourself, desperate to get off[else if Player is female]begin rapidly fingering your pussy, the feeling of these two virile males coating you in their seed driving you crazy[else]tweak your nipples to get what enjoyment you can[end if].";
	LineBreak;
	say "     The two finish their orgasms, looking down at you covered in their cum. Jadako kneels down, and begins to lick your face, relishing the taste of his and Joseph's cum mixture. He gently pushes you to lay down, as he rests over you to lick you clean. Meanwhile, Joseph also gets down behind Jadako, and brings his mouth to your [if Player is male][cock of Player] cock, letting out a warm breath onto it. He begins to slowly lick it as you relax and let he two help you get off now. The coach places his muzzle around your mouth, and begins slurping your cock gently. The feeling the coach's blowjob and Jadako softly cleaning you, along with the smell of their seed marking you, is just too much, as you let out a grunt and cum into the coach's mouth[else if Player is female]wet vagina, and gently begins lapping at its folds. The feeling of his tongue inside sends shivers down your spine. The combination of the two's musk, the cum bath you just received, and Jadako's gently lapping sends you over the edge as your pussy quakes with pleasure[else]anus, and begins to softly lap at your hole. The combination of the two's musk, the cum bath you just received, and Jadako's gently lapping sends you over the edge as your anus begins to clench, your prostate quaking with pleasure[end if].";
	LineBreak;
	say "     Finished getting you off, Joseph lifts Jadako off of you, and lays the two of them on the bed. You join the two, spooning Coach Weber, still covered in the two's cum. You three all relax in the afterglow, cuddling up with each other. Joseph's soft fur and muscular figure make him great to spoon, his solid frame easy to hold onto. The warmth makes you drowsy, as you eventually fall asleep. After waking, you find the now-dressed Coach and Jadako on the sofa, cuddling amorously. You get up, dress, and gather your belongings.";
	now lastfuck of Joseph is turns;
	now lastfuck of Jadako is turns;

Campus Couple NPC ends here.
