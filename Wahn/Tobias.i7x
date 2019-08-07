Version 1 of Tobias by Wahn begins here.
[Version 1 - New Character]

Section 1 - Events

after going to Smith Haven Mall Lot East while HP of Tobias is 0 and a random chance of 1 in 3 succeeds:
	say "     Walking over the expansive parking lot of the Smith Haven Mall, you let your gaze wander over the countless parked cars: many stand neatly aligned in their squares, most likely belonging to people that never left the safe confines of the mall, or possibly those that never made it back here at all. Others are more scattered, often in clumps around the entrances and exits of the lot, from when people started to panic and got involved in all sorts of collisions and accidents. The crunching noise of glass shards under your feet makes you stop and look at the nearest damaged car, half-hidden behind the delivery truck its front is crumpled against. You can't help but idly wonder what may have happened to the driver on the fateful day that the nanite apocalypse came into full swing.";
	say "     As you stand there, movement on the far side of the car catches your eye. An anthro doberman dressed in jeans and an open vest, as well as black leather gloves, steps into view from the other side of the truck, holding the leashes for two other dobermans, one male one female. They are anthro canines, just like him, but in sharp contrast, they are naked and on all fours with collars and muzzles on them. The leashed bitch looks back at you and gives a whine, trying to move back behind the truck, but her owner(?) is having none of it, looking impatiently at the other dobie and keeping her on a tight leash. 'What is it now?' the standing man barks out, then follows her gaze to you and scoffs at her. 'Oh? Being watched by [ObjectPro of Player] has your panties in a twist? Let me remind you - animals don't wear any of those. You're a pet, bitch, and not an obedient one right now. I told you to do your business [italic type]now[roman type]!'";
	WaitLineBreak;
	say "     Cowering before the sharp and commanding tone of her master, the female canine pushes past her hesitation and pushes her hips down with spread legs, releasing a small trickle of urine onto the asphalt. 'Wasn't so hard after all, eh?' the standing doberman comments in a biting tone, then gives both of the leashes a short dug. 'Now that that's done for, let's go meet our new acquaintance,' he says next, then guides his pets around the car to come to stand before you. The male collared dobie sits on his haunches after a second, looking up with interest, while the female hangs her head in obvious shame and remains standing. Ignoring the reactions of his submissive companions, the clothed doberman steps forward and offers you a hand in greeting.";
	say "     'Pleasure to meet you, I'm Tobias Black.' While you tell him your own name, he pulls a business card out of a breast pocket and hands it to you. It reads, 'Tobias Black - Animal Handler, Trainer, Breeder' and has a stylized paw-print in the upper left corner. 'Sorry that I didn't acknowledge you earlier. You know how it is with dogs in training, one has to address any disobedience immediately to avoid any bad habits forming. Dane here is about fully trained by now, but Cara still needs work. But don't you worry, she'll be an excellently obedient bitch in no time at all.' The man's behavior towards you is markedly different from the side his pets experience, and he seems very friendly, even jovial. He seems to want to chat a bit with you, and is clearly waiting for you to say something.";
	WaitLineBreak;
	say "[TobiasTalkMenu]";
	now hp of Tobias is 1; [initial event done]
	now Refugee Mare is active;

to say TobiasTalkMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask him about himself";
	now sortorder entry is 1;
	now description entry is "Learn more about Tobias";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask what he is doing at the mall";
	now sortorder entry is 2;
	now description entry is "Find out what he is doing here";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Talk about dog training";
	now sortorder entry is 3;
	now description entry is "Chat about training animals";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Offer to have sex with him";
	now sortorder entry is 4;
	now description entry is "Make an offer of a good time";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask who Dane and Cara are";
	now sortorder entry is 10;
	now description entry is "Learn more about the submissive dobies";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask how he can do this to the other canines. They're just like him after all";
	now sortorder entry is 11;
	now description entry is "Question his treatment of the other two dogs";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Tell him that treating people like animals is wrong";
	now sortorder entry is 12;
	now description entry is "Express a negative opinion on him keeping Dane and Cara as pets";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask if he couldn't instead train his pets to be strong and confident in their own right";
	now sortorder entry is 13;
	now description entry is "Suggest a different path to take with Cara and Dane.";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Demand that he free his pets";
	now sortorder entry is 14;
	now description entry is "Try to make him let Dane and Cara go";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask to buy one or both of his pets";
	now sortorder entry is 15;
	now description entry is "Try to buy Dane, Cara, or both";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask if you can pet his dogs";
	now sortorder entry is 16;
	now description entry is "Learn if you are allowed to pet the dobies";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask if you can fuck his dogs";
	now sortorder entry is 17;
	now description entry is "Express the desire to have sex with the dobies";
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
				if (nam is "Ask him about himself"):
					say "[TobiasTalk1]";
				if (nam is "Ask what he is doing at the mall"):
					say "[TobiasTalk2]";
				if (nam is "Talk about dog training"):
					say "[TobiasTalk3]";
				if (nam is "Offer to have sex with him"):
					say "[TobiasTalk4]";
				if (nam is "Ask who Dane and Cara are"):
					say "[TobiasTalk10]";
				if (nam is "Ask how he can do this to the other canines. They're just like him after all"):
					say "[TobiasTalk11]";
				if (nam is "Tell him that treating people like animals is wrong"):
					say "[TobiasTalk12]";
				if (nam is "Ask if he couldn't instead train his pets to be strong and confident in their own right"):
					say "[TobiasTalk13]";
				if (nam is "Demand that he free his pets"):
					say "[TobiasTalk14]";
				if (nam is "Ask to buy one or both of his pets"):
					say "[TobiasTalk15]";
				if (nam is "Ask if you can pet his dogs"):
					say "[TobiasTalk16]";
				if (nam is "Ask if you can fuck his dogs"):
					say "[TobiasTalk17]";
				wait for any key;
				say "[TobiasTalkMenu]"; [looping back into the menu to talk to him at the player's heart's content]
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the dobie, shaking your head slightly as he gives a questioning look. 'Oh well, have a nice day then. Maybe we'll see each other in the Food Court sometime,' he says and walks off, followed by his two pets.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;


to say TobiasTalk1: [Ask him about himself]
	say "     'Oh, I've been a dog trainer for close to ten years now. Started my business after coming back from the war. Which one, you ask? One of the shitty ones that no one even remembers, in the Kosovo. Stopping one group of asshole Europeans from stringing up their neighbors, and vice versa, at times.' He shrugs and brushes the topic aside, then says, 'Started with just two kennels and a bitch. Really good one, though. Purebred puppies go for quite a bit, and the ones I didn't sell got trained. Ever seen 'The Revivicator II', 'Mall Pig' or 'Inspector Gumbo'? All my dogs in those movies.' Reaching out to pat Dane on the head, the man adds, 'This current crisis hit out of the blue, but I was prepared for [italic type]something[roman type] to go down, so my place is well stocked. And apparently my skills are quite useful these days too.'";

to say TobiasTalk2: [Ask what he is doing at the mall]
	say "     'Oh, I'm just stopping by for some supplies and a good warm meal. This is one of the few places that one can relax and let your guard down. Also, at some point it is important to socialize newly trained pets with large groups of people. That can bring some previously hidden issues to the forefront so they can be dealt with - like Cara's little hangup [if HP of Tobias is 0]just now[else]when we met[end if].";

to say TobiasTalk3: [Talk about dog training]
	say "     Tobias gives you a knowing nod and clears his throat. 'The difficult part about any training with canines isn't to get them started doing something. No, it's keeping them from being obsessed with things once they start. Here, let me demonstrate.' Stepping forward, the dog trainer loosens the straps of the leather muzzle on Dane and pulls it off, then tells him, 'Go on boy, lick your balls.' In reply, Dane gives a happy bark, followed by the submissive dobie curling up on the ground and lapping at his own crotch. Watching the naked young man pleasure himself, Tobias adds, 'It wouldn't do to have a movie dog actually go through with mauling an actor instead of just lightly biting them in the ass, so control is a [italic type]very[roman type] important thing. Even if they do not want to follow a command, it [italic type]must[roman type] be obeyed instantly. Just look at Dane for example.'";
	say "     The other dobie is by now fully erect, his knotted cock sticking out of his sheath and being eagerly lapped at by the canine's long, floppy tongue. 'Freeze!' Tobias suddenly barks out, with the trained anthro immediately obeying. 'Very good,' the dog trainer says and crouches down next to his pet, stroking Dane's head and scratching him behind his ears. Then he reaches out to grab the other man's cock and begins to stroke it with an expert grip, quickly getting Dane to climax and shoot his load. Tobias milks the dog until he finishes shooting the last drops of cum, then holds out his hand for the dobie pet to lick it clean of all traces of his own seed. Standing up again, Tobias grins at you and concludes with the words, 'And that's how you do it. Discipline and rewards in just the right proportions. It'll do the trick very well, I tell you.'";

to say TobiasTalk4: [Offer to have sex with him]
	say "     A smile spreads over Tobias's face as he checks you out, followed by him giving a pleased nod. 'Definitely an interesting offer you're making. Not quite the time or place for it, right here and now, but I'll keep your interest in mind. There should be some opportunities for a hookup sometime, if you're still game then. But you better be prepared for a workout - I'm a fairly demanding partner in bed, just so you know.";

to say TobiasTalk10: [Ask who Dane and Cara are]
	say "     Tobias shrugs and replies, 'Can't say I particularly care who they [italic type]were[roman type]. They've accepted collars and my authority over them. I'll mold these two into something exceptional.' Glancing down at Cara, he adds, 'Might just breed this one, once I finish her training fully.' You see the anthro bitch's eyes widen at his casual comment, yet that is all the reaction she shows.";

to say TobiasTalk11: [Ask how he can do this to the other canines. They're just like him after all]
	say "     Tobias chuckles and shakes his head. 'It's easy to think so, but no. Even among humans, there are top dogs and... betas. Those who can do the things that need doing and those who meekly go along. I've got what it takes to make it in this crazy new world. And thanks to me, these two aren't stumbling around lost in the streets, being preyed on by who knows what. Don't think I kidnapped them either - they begged me to take them in, and I explained that I demand complete obedience before I ever put on the collars.'";

to say TobiasTalk12: [Tell him that treating people like animals is wrong]
	say "     Raising one eyebrow and giving you a stoic look, the doberman shrugs after a second or two. 'We'll have to agree to disagree then. Just look at all the things going on throughout the whole city right now. At least my pets will be well cared for and suffer through nothing more than a bit of tough love and discipline. I don't beat them or force myself on anyone.' The canine man's expression hardens visibly as he gives a wave of his hand that somehow seems to encompass the whole city. 'The world has changed, as you might know. Or maybe you haven't yet realized just how much it has. I've been through war, and have seen with my own eyes all of the beastly things that humans are capable of. Even without taking on the looks of animals as many do now, this always was inside all of us. Strip away civil society and you are left with a place that just eats up the weak-willed and timid. Trust me, it is a mercy that I have adopted Dane and Cara and am molding them into something that will have a proper place in this harsh world.'";

to say TobiasTalk13: [Ask if he couldn't instead train his pets to be strong and confident in their own right]
	say "     Tobias frowns a little and shrugs. 'Could I? It's doubtful. Some people just aren't cut out to take care of themselves all on their own. Society just coddled them all this time, so they survived. The merciless place that the streets of this city have become certainly aren't a place for such experiments now. Secondly, I'm not a charity. If I spend my time and supplies to train a dog, then it better be my property, or well-paid for in advance.'";

to say TobiasTalk14: [Demand that he free his pets]
	say "     Letting out a derisive snort, Tobias gives you a rude gesture and says, 'Up yours! Really, what else do you want besides it? Shall I raise my tail and shoot rainbows out of my ass too? No, these two are mine. I took them in, fed them, cared for them and trained them. And even if I abandoned all the time and resources I invested - should I just let them loose to be snatched up by someone who is [italic type]guaranteed[roman type] to treat them worse? Trust me, there are plenty of predators even inside the mall. Just take that Logan dude in the wolverine guards - he's been looking at Cara like a slab of meat. Without my leash on her, he'd have pushed her down and pounded her right the first time he saw her.'";

to say TobiasTalk15: [Ask to buy one or both of his pets]
	say "     The anthro doberman looks at you with a thoughtful expression, then slowly shakes his head. 'I don't think so. Not yet, at least. Cara still needs more training and I might keep her to breed with anyways. Meanwhile, Dane is further along, but there are some little things left to polish. Plus, I don't have a replacement for him yet. Training pets in pairs makes a lot of sense, you know. The newer one will have an example to look to and the experienced one gets a refresher of the things taught that really drives them home.' Glancing around thoughtfully for a second, Tobias adds, 'I guess that is another reason why I am here too. Finding a good candidate to train. Most of the weak people out on the streets have already met their fate, one way or another. It really is much easier to start with a new pet that hasn't been driven out of their mind by constant rape, even without having to squash the supposed alpha owner.'";

to say TobiasTalk16: [Ask if you can pet his dogs]
	say "     Tobias smiles and nods for you to go ahead. 'Sure thing, but no groping please.' You walk over and crouch down between the two collared anthros, patting their gleaming coats of fur. Dane readily leans into your touches, his tail wagging in obvious pleasure, while Cara seems more reserved, trembling a little as you first reach out for her. Only when your continued stroking continues to stay away from her privates and (quite nice and shapely) breasts does she relax, wagging her tail too.";

to say TobiasTalk17: [Ask if you can fuck his dogs]
	say "     The doberman's eyebrows rise as he gives you a surprised look. 'Right to the point, aren't you? But no, you may not. I'm training canine companions and working animals, not rape-bait for the streets that spread their legs for anyone at the drop of a hat.' Stepping up to his dogs, Tobias pets Dane and Cara, who wag their tails eagerly, clearly being happy to be under his care right now.";

Section 2 - NPC

Table of GameCharacterIDs (continued)
object	name
Tobias	"Tobias"

Tobias is a man.
ScaleValue of Tobias is 3.
Cock Count of Tobias is 1.
Cock Length of Tobias is 12.
Ball Size of Tobias is 5.
Ball Count of Tobias is 2.
Cunt Count of Tobias is 0.
Cunt Depth of Tobias is 0.
Cunt Tightness of Tobias is 0.
Nipple Count of Tobias is 2. [2 nipples]
Breast Size of Tobias is 0.
TwistedCapacity of Tobias is false.
Sterile of Tobias is false.
[Basic Interaction states as of game start]
PlayerMet of Tobias is false.
PlayerRomanced of Tobias is false.
PlayerFriended of Tobias is false.
PlayerControlled of Tobias is false.
PlayerFucked of Tobias is false.
OralVirgin of Tobias is false.
Virgin of Tobias is true.
AnalVirgin of Tobias is true.
PenileVirgin of Tobias is false.
SexuallyExperienced of Tobias is true.
MainInfection of Tobias is "Doberman Male".
The description of Tobias is "[TobiasDesc]".
The conversation of Tobias is { "<This is nothing but a placeholder!>" }.
The scent of Tobias is "     Tobias smells nicely masculine, in a furry, earthy way with a little bit of honest sweat in the mix too.".

to say TobiasDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Tobias] <- DEBUG[line break]";
	say "     Tobias Black is an anthro doberman with a fairly muscular build. He wears a rugged pair of jeans and an open vest with lots of pockets. A pair of somewhat scratched dog tags hangs around his neck.";

instead of conversing the Tobias:
	say "     ";

instead of fucking the Tobias:
	say "     A smile spreads over Tobias's face as he checks you out, followed by him giving a pleased nod. 'Definitively an interesting offer you're making. Not quite the time or place for it, right here and now, but I'll keep your interest in mind. There should be some opportunities for a hookup sometime, if you're still game then. But you better be prepared for a workout - I'm a fairly demanding partner in bed, just so you know.";

to say TobiasSexMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if Player is male: [only males and herms can get a blowjob]
		choose a blank row in table of fucking options;
		now title entry is "Get a blowjob";
		now sortorder entry is 1;
		now description entry is "Let Tobias suck you off";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Suck Tobias off";
	now sortorder entry is 2;
	now description entry is "Wrap your lips around the dobie's canine shaft";
	[]
	if Player is female: [only females and herms can take him in the pussy]
		choose a blank row in table of fucking options;
		now title entry is "Take Tobias's shaft in your pussy";
		now sortorder entry is 5;
		now description entry is "Offer vaginal sex to the dobie";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Take Tobias's shaft in your ass";
	now sortorder entry is 5;
	now description entry is "Offer anal sex to the dobie";
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
				if (nam is "Get a blowjob"):
					say "[TobiasSex1]";
				if (nam is "Suck Tobias off"):
					say "[TobiasSex2]";
				if (nam is "Take Tobias's shaft in your pussy"):
					say "[TobiasSex5]";
				if (nam is "Take Tobias's shaft in your ass"):
					say "[TobiasSex6]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the dobie, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say TobiasSex1: [oral on the player]
	say "     A";
	NPCSexAftermath Tobias receives "OralCock" from Player;

to say TobiasSex2: [oral on Tobias]
	say "     A";
	NPCSexAftermath Player receives "OralCock" from Tobias;

to say TobiasSex3: [virgin Tobias fucked]
	say "     A";
	NPCSexAftermath Tobias receives "AssFuck" from Player;

to say TobiasSex4: [non-virgin Tobias fucked]
	say "     A";
	NPCSexAftermath Tobias receives "AssFuck" from Player;

to say TobiasSex5: [Tobias fucks player pussy]
	say "     A";
	NPCSexAftermath Player receives "PussyFuck" from Tobias;

to say TobiasSex6: [Tobias fucks player ass]
	say "     A";
	NPCSexAftermath Player receives "AssFuck" from Tobias;

Tobias ends here.
