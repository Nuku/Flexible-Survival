Version 1 of G-Shep Squad by Rikaeus begins here.
[Version 1.2 - more sex w/Buster]

"Adds a group of (mostly) German shepherd police dogs to Flexible Survival."

Section 1 - Events

Table of GameEventIDs (continued)
Object	Name
Canine Patrol	"Canine Patrol"

Canine Patrol is a situation.
The sarea of Canine Patrol is "Red".
when play begins:
	add Canine Patrol to BadSpots of MaleList;
[	add Canine Patrol to BadSpots of FemaleList; ]
	add Canine Patrol to BadSpots of FurryList;

gshepsquad is a number that varies.
catdogstate is a number that varies.

Instead of resolving a Canine Patrol:
	catdogstatecheck;
	if gshepsquad is 1:
		say "ERROR - Event closed.";
		now Canine Patrol is resolved;
	else if gshepsquad is 0:
		say "     While trying to move unnoticed through the city, you come across a sight not uncommon these days. Not far from you, a woman well on her way to becoming one of those vapid husky girls is being accosted by another mutant, a large feline in this case. She is pinned against the side of a car, the wind knocked out of her and her remaining scraps of clothing are being torn away. Before you can decide what if anything to do about this, you hear a chorus of barks, quickly getting louder. The noise comes from a pair of German shepherds in partial police uniforms.";
		say "     'Halt! Police! Unhand that woman!' they cry, switching to all fours and charging faster. The feline, startled by this, takes a couple of steps back. His would-be victim, seeing a chance for rescue, makes a break towards the police dogs. The cat takes a few steps towards her in an attempt to grab her, but then backs down as the barking dogs draw nearer. The pair motion for the dog-woman to wait and continue on, giving brief chase to ensure he's well and truly run off before going back to talk to the victim.";
		say "     ";
		say "     [bold type]Shall you go talk to these K9 officers or make a discreet exit while you can?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Go and talk to them.";
		say "     ([link]N[as]n[end link]) - Exit.";
		if Player consents:
			say "     As you approach the police dogs, one turns to face you while the other tends to the woman. He is wearing a policeman's cap, jacket, a pair of mirrored sunglasses and no pants. 'Are you [if catdogstate is 2]here to help?' he asks with a wag of his tail upon noticing your canine features[else if catdogstate is 1]a witness to this attempted assault?' he asks[else]an accomplice to this attempted assault?' he barks upon noticing your feline features[end if]. You explain that you'd just arrived on scene and were about to help when they appeared[if catdogstate is 2]. 'Good dog,' he says with another wag, 'but it's best to leave the police work to us.' [else if catdogstate is 1]. 'I see,' he says, looking you over. [else]. 'A likely story, cat,' he growls. [end if]He gets your statement and only has a few basic questions for you.";
			say "     While this is going on, the other officer is talking to the distraught victim, both comforting and questioning her. He is wearing a pair of blue pants that have been opened at the back for his tail and has his badge hanging from a chain around his otherwise bare-furred chest. His fur's a lighter shade of brown and his face has more black on it than the other officer's. 'And what did he do then, ma'am?' he asks, his paw lightly rubbing her back.";
			WaitLineBreak;
			say "     'That's when he *sniff* tore off my clothes. And he... he said... he said he was going to put his kittens in me,' she wails. She shivers, clinging to her rescuer even tighter, trying to dry her teary eyes on his furry shoulder. 'The city has just gone crazy. I don't know how much longer I can take this.'";
			say "     'It's quite an ordeal for everyone, but we'll help you get through it. Now, did he get a chance to do this heinous act?' he asks, his nose sniffing downwards.";
			say "     'No, thank God you arrived just in time to save me,' she says, her tail giving a little wag.";
			WaitLineBreak;
			say "     'We're glad to help. And we're all lucky that he didn't get a chance to complete his crime. A good girl like you should really be having puppies, shouldn't she?' he says, now nosing at her crotch, giving it a long, slow lick.";
			say "     The dog-woman moans in response, growing flush. 'But... puppies?' she starts to push his muzzle away, but is cut short as her arousal increases. A few more licks has her panting and spreading her legs for the dog, her pussy lips growing fuller and more like a canine with each pass of the dog's tongue. 'Well... I guess you do deserve a reward for saving me,' she says with a giggle.";
			say "     'That's a good girl,' the officer you were speaking to says, his own cock rising from its sheath as he rubs it. 'You're free to go, citizen. We'll take it from here,' he says in conclusion, turning momentarily back to you. [if catdogstate is 2]While a part of you wants to join in, you're[else]You're[end if] overall a little stunned by the odd turn of events and decide to head off for the moment.";
			now gshepsquad is 2;
			now Resolution of Canine Patrol is 1; [talked to the squad]
		else:
			say "     Not wanting to get distracted or caught up in something that doesn't involve you, you slip back the way you came and find another street to take.";
			now gshepsquad is 1;
			now Resolution of Canine Patrol is 99; [disinterest]
			now Canine Patrol is resolved;
	else if gshepsquad is 2:
		say "     While searching the city, you spot an Airedale terrier behaving oddly, digging at some rubble while panting heavily. Shifting some of it aside, he pulls out a hidden water bottle. The thirsty terrier is just about to open it up when a bird-winged mutant swoops in and makes a grab for it. Wrestling the bottle from his hands, the sharp-toothed humanoid bowls the exhausted dog over with a hiss and starts to run off. 'Ahh... my water... you thief!' comes the dog's raspy yell.";
		say "     This is echoed by a loud bark of 'Thief? Thief? Thief! Stop thief!' from nearby. A canine cop, possibly one of those you'd encountered before, pursues the thieving mutant, but it takes to the air to ensure its escape.";
		WaitLineBreak;
		say "     The cop returns to the victim and you decide to approach as well, hoping to see if there's any chance of police assistance[if catdogstate is 2]. Seeing another canine approaching, he gives a smile and wag[else if catdogstate is 1]. Seeing you approaching, he gives you a nod[else]. Taking in your feline features, he gives you a suspicious glare[end if] before turning his attention back to the Airedale. From what you hear, it seems that was the last of the dog's hidden water stash.";
		say "     'Well, we can't have good dogs dying of thirst, now can we? Here, take a suck on this then,' he says, rubbing his swelling sheath to expose his growing erection. His canine prick, dripping with pre, draws the eyes of the thirsty terrier and makes him salivate. Dropping to his knees, he licks and sucks that doggy cock with a thirsty need for its watery load. Seeing how the cop is clearly occupied, you'll have to try talking to him later.";
		now Resolution of Canine Patrol is 2; [Second meeting]
		now gshepsquad is 3;
	else if gshepsquad is 3:
		say "     From somewhere up ahead of you, you hear some commotion. Approaching cautiously, you slip into a nearby alleyway and check out what's going on at a distance. The noise seems to be coming from a jewelry store that's been broken into, which is confirmed as a hyena is tossed out the open door into the street. It scrambles to try and get up, but is grabbed by a German shepherd in a police uniform. He slams the herm against the wall, kicking her legs apart with her hands against the brick building. He's soon followed out by his partner, who's dragging out another hyena by the scruff of her neck while carrying a satchel of loot in his other paw. The second hyena's forced to join her cohort against the wall. A couple of other canine cops appear, searching the building and documenting evidence.";
		WaitLineBreak;
[		if FaceName of Player is "Hyena Herm" or BodyName of Player is "Hyena Herm":
			say "***"; [hyena = special negative]		]
		say "     One of the canines exchanges a few quick words with another before motioning in your direction. This second shepherd heads your way after barking some orders to the others. You consider leaving while you can, but don't want to risk setting the whole squad after you. The G-shep looks you over [if catdogstate is 2]with a friendly wag of his tail[else if catdogstate is 1]casually[else]with a cold stare[end if]. He's a different one from the pair you'd seen before, his coat being of a richer brown. He's wearing a policeman's vest and hat as his only gear, leaving his canine junk on display. He [if catdogstate is 2]starts off with a few friendly questions for you, checking to see if you live in the area and if you know anything about the looters they've caught[else if catdogstate is 1]starts off with a few simple questions for you, checking to see if you live in the area and if you know anything about the looters they've caught[else]grills you for a bit, asking if you live in the area and if you have anything to do with the looters they've caught[end if]. You respond with the truth that you're just passing through and that you only came over when you heard the commotion[if hyg > 3]. You wisely leave out mention being part of the hyena gang, of which these two could very well be members[end if].";
		say "     'Now, it seems my dogs have been seeing you around quite a bit lately[if catdogstate is 2]. It's good to see citizens taking an interest in police work[else if catdogstate is 1]. Now, I can't help feeling that isn't just coincidence[else]. You can see how that makes me a little suspicious[end if].' You start to explain that you're just a survivor trying to get by in the city and were hoping that his squad cou- and what the heck is going on over there?";
		WaitLineBreak;
		say "     You hadn't noticed at first, but now you can see that the two cops who'd caught the hyenas are humping them vigorously, pounding them hard against the wall. The other cops are lining up, getting ready for their turn at [']punishing['] the criminals. Your exclamation causes the cop near you to look back and notice the scene unfolding. 'Oh dammit. They're starting already. Look, you're free to go but I want to talk to you some more,' he barks quickly and pointing back down the alley from which you came, his attention clearly focused on the sex as his cock pokes from his sheath in anticipation. He hurriedly gives you an intersection and tells you to go there [if catdogstate is 2]if you want to see him[else if catdogstate is 1]to continue this[else]for further questions[end if], telling you to ask for [']Buster[']. And with that, Buster dashes off towards the others. 'Hey! Don't leave your commander out of this,' he calls out to his fellow officers. 'Save me a spot, you mangy horndogs. I want to teach these gang delinquents a good, hard lesson.'";
		say "     With the canines busy dishing out some sexy justice, you can only shake your head at how this city's clearly gone to the dogs.";
		say "     [bracket]Now [bold type]K9 Vans[roman type] location is known.[close bracket][line break]";
		now Resolution of Canine Patrol is 3; [invite to the Vans]
		now gshepsquad is 4;
		now K9 Vans is known;
		increase score by 5;
		now Canine Patrol is resolved; [for now]


Section 2 - K9 Vans

Table of GameRoomIDs (continued)
Object	Name
K9 Vans	"K9 Vans"

K9 Vans is a room. It is fasttravel. It is private. It is sleepsafe.

The description of K9 Vans is "[k9vansdesc]".

to say k9vansdesc:
	if gshepsquad < 4:
		say "ERROR - You shouldn't be able to get here yet. Transporting back to Grey Abbey Library.";
		move player to Grey Abbey Library;
		now K9 Vans is unknown;
	else if gshepsquad is 4:
		catdogstatecheck;
		say "     Approaching the intersection Buster told you about, one outside of the shadier red light district where you met him, you find the scene of an accident. The convenience store on this corner has a pair of canine unit vans crashed into it. One has driven right into the front window and the other is on its side, smashed into the other. The area around the crash has been swept clear, removing any broken glass or debris. The door to the store has a sign stuck on it saying 'Temporary Police Station' and there is a gruff looking German shepherd in a partial police uniform - shorts, open dress shirt and hat in this case. This guard looks you over and asks what you want[if catdogstate is 0] with a low growl[end if]. Telling him that Buster asked to see you, he steps aside and motions with his nightstick for you to go in.";
		say "     The interior, partially occupied by the front end of the smashed up vans, has been opened up a bit by the removal of the first few rows of shelves. The other shelves have mostly been picked clean, their contents probably consumed by the canines milling about here. Most of them are males and all are German shepherds in some partial set of police clothes or gear. There's an eclectic collection of chairs scavenged from the area as well as a few mats on which some of the officers are sleeping or screwing. Buster is sitting on a chair behind a folding table. He motions for you to come on over.";
		say "     'Hey! I'm glad you came. Sorry for all the questions earlier, but the fact that you even came shows me that you're [if catdogstate is 2]a good dog[else if catdogstate is 1]an alright person[else]an alright person despite that feline taint you've picked up[end if],' he says, getting up and offering you his paw for a shake. 'Now, you were talking about wanting to get some help, but as you can see, we're not in much position to help out right now. We're cops and good dogs though, so we do our best.'";
		say "     He walks around with you, giving one of the other dogs a playful swat on the rear as he passes. 'Hey Bear. Come up to my quarters later. I want to debrief you,' he says to the burly shepherd in a swat vest. 'We were responding to the disturbances around the city as things were getting out of control,' he says, getting back to his story. 'Something went wrong with the vans just as both units arrived, crashed together and careened into this place. They're totalled. Won't even turn over, like pretty much every other vehicle out there. Not really clear on when or how we became dogs or what happened to our canines, but that's how the first few of us got started out. Bred a few other recruits since then, shared around the gear and we're doing what we can.'";
		say "     Looking around the makeshift station and the horny dogs, you ask him just what he means by that. 'As you've seen, the city's gone to the dogs, metaphorically if not quite literally. That's where we come in. Dogs are awesome, the best around - we're loyal, obedient and friendly. The city'd be safe and peaceful if everyone goes to the dogs, don't you think? Now, we don't want to hurt anyone, but there's a lot of crazy mutant things out there, so we need to protect every good dog and bitch out there and stop all those crimes by non-canines.'";
		now gshepsquad is 5;
	else:
		say "     This intersection has a pair of K-9 unit vans busted into the front of a small convenience store. One is partway into the front window while the other is rolled onto its side and smashed into the first. The debris has been cleaned up and the first few rows of busted shelves have been cleared away to make room for some chairs and sleeping mats, some of which are occupied. The remaining shelves are mostly bare and the place is pretty clean. An impromptu desk has been set up for the dog in charge, Buster, using a folding table.";

The scent of K9 Vans is "[k9vansscent]".

to say k9vansscent:
	say "The area smells rather heavily of dogs.";


Section 3 - Buster

Table of GameCharacterIDs (continued)
object	name
Buster	"Buster"

Buster is a person. Buster is in K9 Vans.
[Physical details as of game start]
ScaleValue of Buster is 3. [human sized]
SleepRhythm of Buster is 0. [0 - awake at all times, 1 - day active, 2 - night active]
Cock Count of Buster is 1. [X cock]
Cock Length of Buster is 6. [X Inches]
Ball Size of Buster is 4.
Ball Count of Buster is 2. [X balls]
Cunt Count of Buster is 0. [X pussy]
Cunt Depth of Buster is 0. [X Cunt]
Cunt Tightness of Buster is 0. [X Cunt]
Nipple Count of Buster is 2. [X nipples]
Breast Size of Buster is 0. [X at the start]
[Basic Interaction states as of game start]
TwistedCapacity of Buster is false. [can not take oversized members without pain]
Sterile of Buster is false.
PlayerMet of Buster is false.
PlayerRomanced of Buster is false.
PlayerFriended of Buster is false.
PlayerControlled of Buster is false.
PlayerFucked of Buster is false.
OralVirgin of Buster is false.
Virgin of Buster is true.
AnalVirgin of Buster is false.
PenileVirgin of Buster is false.
SexuallyExperienced of Buster is true.
MainInfection of Buster is "German Shepherd Male".
The description of Buster is "[busterdesc]".
The conversation of Buster is { "Dogs are awesome!" }.
the scent of Buster is "The leader of the canine squad smells of dogs and sex.".
The icon of Buster is figure of Buster_icon.

busterstory1 is a truth state that varies. busterstory1 is usually false.
busterstory2 is a truth state that varies. busterstory2 is usually false.

to say busterdesc:
	say "     Buster is a tall, impressive looking German shepherd humanoid. He stands about 6['] 2' without including his pointed ears and has a strong, fit build. He has a rich, brown coat with dark black markings and muzzle typical for his breed. He wears a policeman's vest and hat as his only gear, leaving his canine junk on display. He's got a plump, full sheath from which his canine cock often protrudes. Despite being a serious commander, he's got a friendly disposition and is always eager to help out any canine in need or to provide a nice canine injection to any criminal in need of reforming.";

Instead of conversing the Buster:
	if busterstory1 is false and a random chance of 1 in 3 succeeds:
		say "     Trying to better understand the German shepherd's strange police philosophy, you start by asking if a non-canine assaults and fucks a canine is considered a crime. 'Oh yes, completely. There's a lot of mutant troublemakers like that around that have to be stopped.' You then ask if it's a crime when a canine does that to a non-canine. He blinks a few times and rubs his head. 'I don't really understand your question there, bud. Dogs don't commit crimes or assault others,' he says, unable to comprehend what you're trying to suggest. 'I know some are a little enthusiastic about helping to make the city better by making more dogs, but there's nothing wrong with that. They're still good dogs, doing their best to help make those poor mutants into happy canines and that's a good thing for everyone,' he says with a big, doggy grin and a wag of his tail.";
		now busterstory1 is true;
	else if busterstory1 is true and busterstory2 is false and a random chance of 1 in 3 succeeds:
		say "     'Ginger, that's the herm over there,' he says, pointing her out. 'She says she half remembers her canine partner melding with her, but that it was kind of like a dream so she could've imagined it. I sometimes feel that she might be right, but I don't rightfully remember. And besides, I know things are crazy with everyone transforming and stuff, but even that seems a little too weird to have really happened. Right?'";
		now busterstory2 is true;
	else if HP of Buster is 0:
		say "     [one of]'With these criminals, sometimes all it takes is a few disciplinary bonings to set them on the road to reformation and they're good dogs in no time.'[or]'Every dog is a good dog.'[or]'We've got a few hot bitches upstairs we've rescued who've volunteered to stay on as our breeders. They're such good girls.'[or]'There's some wild German shepherds out there. They're good dogs, of course, but don't mistake them for us - they can be a little over-eager.'[or]'Why don't we get to know each other a little better sometime?' he says, giving your ass a squeeze.[or][if gshepsquad < 6]'Some of the other officers have been asking about you. They're a friendly bunch. You should have fun with them sometime,' [else]'I saw you with the others earlier. They're a friendly bunch, aren't they? Now, I must say, I wouldn't mind getting in on that action either,' [end if]he says, rubbing his crotch meaningfully[or]'There's so many great breeds of dogs out there. I can't wait to see them spread across the city.'[or]'If this city's going to go to the dogs, we're going to make sure it does it right.'[in random order]";
	else:
		say "     [one of]'With these criminals, sometimes all it takes is a few disciplinary bonings to set them on the road to reformation and they're good dogs in no time.'[or]'Every dog is a good dog.'[or]'We've got a few hot bitches upstairs we've rescued who've volunteered to stay on as our breeders. They're such good girls.'[or]'There's some wild German shepherds out there. They're good dogs, of course, but don't mistake them for us - they can be a little overeager.'[or]'We should fool around again sometime soon,' he says while giving your ass a squeeze.[or][if gshepsquad < 6]'Some of the other officers have been asking about you. They're a friendly bunch. You should have fun with them sometime,' [else]'I saw you with the others earlier. They're a friendly bunch, aren't they? I'm looking forward to my next chance to get in on that action with you,' [end if]he says, rubbing his crotch meaningfully[or]'There's so many great breeds of dogs out there. I can't wait to see them spread across the city.'[or]'If this city's going to go to the dogs, we're going to make sure it does it right.'[in random order]";

the fuckscene of Buster is "[sexwithBuster]";

to say sexwithBuster:
	catdogstatecheck;
	if debugactive is 1:
		say "DEBUG -> gshepsquad: [gshepsquad], HP: [HP of Buster], catdogstate: [catdogstate], Msg 1: [if busterstory1 is true]Y[else]N[end if], Msg 2: [if busterstory2 is true]Y[else]N[end if] <- DEBUG[line break]";
	if gshepsquad < 5:
		say "ERROR-Buster-[HP of Buster]F: You should be able to find me yet.";
	else if lastfuck of Buster - turns < 6:
		say "     'While that sounds like fun, the others on the squad also need me.'";
	else if Player is neuter:
		say "     You're ill-equipped to play with him right now.";
	else if HP of Buster is 0:
		say "[bustersex00]";
		gsquadinfect;
		now lastfuck of Buster is turns;
		increase HP of Buster by 1;
	else:
		say "[bustersexmenu]";


to say bustersexmenu:
	setmonster "German Shepherd Male";
	choose row MonsterID from the Table of Random Critters;
	now sextablerun is 0;
	say "     Approaching Buster with an offer of sex gets the German shepherd's ears to perk up. '[if catdogstate is 2]Alright recruit. I could use a break. You're a good dog for offering,' he says with a doggy grin and wagging tail[else if catdogstate is 1]Sounds good, recruit. Let's have another go at training you up to be a good dog, eh?' he says with a doggy grin and a wag of his tail[else]I'd say another round of doggy training is in order. Let's see if we can't clear up this feline mess and get you looking like a good, canine citizen,' he says assertively[end if]. While the canine officer divests you of your pack and gear, he [one of]slathers your face with sloppy doggy kisses[or]French kisses you, sliding his long, slobbery tongue past your lips[or]fondles himself with one paw, coaxing his stiffening shaft to rise from his sheath[or]makes a show of groping your ass for the other German shepherds around. They've seen (and participated in) this sort of thing plenty of times before, so it doesn't really faze them too much, though there are a few barks and whistles[or]playfully humps your leg with his stiffening cock[in random order]. As things are heating up, you try to decide what you might like to do with the sexy canine stud.";
	blank out the whole of table of fucking options;
	if Player is male:
		if catdogstate is 2:
			choose a blank row in table of fucking options;
			now title entry is "Fuck him";
			now sortorder entry is 1;
			now description entry is "fuck the studly G-shep";
		if catdogstate > 0:
			choose a blank row in table of fucking options;
			now title entry is "Get a blow job";
			now sortorder entry is 10;
			now description entry is "let him suck you off";
	choose a blank row in table of fucking options;
	if Player is female:
		now title entry is "Get fucked - vaginal";
	else:
		now title entry is "Get fucked - anal";
	now sortorder entry is 6;
	now description entry is "let the K9 cop fuck you";
	choose a blank row in table of fucking options;
	now title entry is "Give a blow job";
	now sortorder entry is 11;
	now description entry is "suck him off";
	choose a blank row in table of fucking options;
	now title entry is "Orgy";
	now sortorder entry is 12;
	now description entry is "Let the dogs use you";
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> ";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Fuck him"):
					say "[bustersex01]";
				if (nam is "Get fucked - vaginal"):
					say "[bustersex02]";
				if (nam is "Get fucked - anal"):
					say "[bustersex03]";
				if (nam is "Give a blow job"):
					say "[bustersex04]";
				if (nam is "Get a blow job"):
					say "[bustersex05]";
				if (nam is "Orgy"):
					say "[bustersex06]";
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	gsquadinfect;
	now lastfuck of Buster is turns;
	wait for any key;
	clear the screen and hyperlink list;


to say bustersex00:
	if HP of Buster is 0:		[***first time - until separate oral is created]
		say "     '[if catdogstate is 2]I'm always up for helping out a good dog feel better,' he says with a happy grin and wagging tail[else if catdogstate is 1]Sounds good to me. I had a feeling you'd understand and agree to join up. Let's get you on the path to being a good doggy,' he says with a friendly smile and a wag of the tail[else]Alright. We can see about clearing up this feline taint you've gotten and put you on the path to being a good doggy,' he says with friendly concern[end if]. Using one paw to help you out of your gear, he rubs his fuzzy sheath with the other, coaxing his canine cock to rise from it. When you're ready so is he, his member dripping with precum.";
	say "     With a paw at your shoulder, he pushes you down on your knees and his doggy dong into your mouth. The taste of the K9 cop's cock fills your mouth and you lick the sticky precum from its warm flesh. This gets him to moan softly, rubbing his hand atop your head as if petting you[if catdogstate is 2 and player is male]. 'Mmm... that's it. Lick that bone like a good dog[else if catdogstate is 2]. 'Mmm... that's it. Lick that bone like a good bitch[else if catdogstate is 1]. 'Alright, now work that tongue. Lick it like a good dog[else]. 'Yeah, lick it you naughty kitty. Lick that dog bone. We'll make a horny pup out of you yet[end if],' he moans. His encouragement has you work your tongue all over his throbbing canine penis, getting him to pant with growing pleasure. Drool drips from his dangling tongue onto your head, but you hardly mind at this point, too into sucking on the delicious treat in your mouth.";
	WaitLineBreak;
	say "     Noticing the knot at the base of his cock swelling up, you know he's getting close. Placing one hand on that growing bulge and the other on his ballsack, you grope and fondle the German shepherd while sucking all the harder. Pushing your mouth forward, you take his full length to the top of his knot and work your tongue and palate over it. Your hand kneads his hard knot in imitation of tying a tight, twitching hole. This last effort is enough to finally set the virile dog off and he cums with a happy bark, blasting several gooey shots of canine semen into your sucking mouth, which you swallow down immediately to make room for more. The taste is sharp and strong, but also virile and exciting, so you work his balls to coax more from him. As he's finishing up, he pushes you back, letting the last few shots splatter across your face and body, marking you with his seed.";
	say "     'Oh yeah, you're going to be a fine recruit,' he says, leaning back against his impromptu desk for support after his powerful release. You can't help but smile up at him, some part of you feeling the growing canine urges inside you, making you eager to be a good dog - or at least a naughty one - to please him. You rub the cum still clinging to you into your skin, feeling it soak into your [bodydesc of Player] body, helping you to change.";


to say bustersex01:		[Fuck him]
	say "     'Oh? You looking to bury that bone of yours?' he jokes, reaching between your legs to fondle your manhood. 'Well, I'm always up for helping a good dog out.' With that, he leads you over to one of the available mats near his makeshift desk and helps you out of your gear and pack while exchanging a few doggy kisses. These turn into a steamy French kiss with the dog's long tongue squirming in your mouth once he's gotten you naked. With a paw back on your [Cock of Player] cock, he strokes you to full erection.";
	say "     With you ready to go, he moves down onto all fours and raises his fluffy tail with an eager bark[if anallevel is 3 and a random chance of 1 in 2 succeeds]. Rather than mount him right away, you decide to start off by nuzzling under his tail and rimming his waiting hole. He pants and whines with arousal as your tongue plays across and wriggles into his puckered ring, getting it slick and shiny with spit. After getting his back door ready, you then[else]. You take a moment to grope and fondle the studly male, stroking his canine dick in appreciation for what he's allowing you to do. Only once he's panting and whining with need to you[end if] move overtop him, lining up your throbbing erection with his anus. You ease yourself in slowly at first, enjoying the tightness of his muscular ass squeezing around your meat as you mount him.";
	WaitLineBreak;
	say "     After giving him [if Cock Length of Player > 24]a considerable amount of time to stretch out to accommodate your [cock size desc of Player] penis[else if Cock Length of Player > 12]enough time to stretch out to accept your [cock size desc of Player] penis[else]a few moments to adjust to having your penis stuffed in his rear[end if], you start thrusting with a slow but increasing pace. The canine leader pants happily as you pound away at him, this clearly not being his first time as the bottom given how easily he takes to it. With a hand wrapped around his throbbing dog cock, you stroke him in time to your thrusts, adding to the pleasure he's receiving while you enjoy that hot, tight hole of his. He pants and barks as you pound away at him, his hips pushing up and back into your thrusts even as they grow harder and faster.";
	say "     With your climax approaching, you grip his firm buttock with one hand and drive yourself hard and fast into the panting shepherd. He takes it with an excited bark as his ballsack tightens up, his cock throbs and moments later his runny seed is splattering onto the mat, adding fresh stains to it. His tailhole squeezes and milks at your [Cock of Player] rod, sending you over the edge a few thrusts later. You cry out in orgasmic release, painting his insides with your [Cum Load Size of Player] load[if Player is knotted]. You remain tied and buried in his butt until your knot goes down, sharing licks and nuzzles as your sticky load rests warmly in his belly[end if]. When you dismount, [one of]he remains with his ass in the air until his tailhole is recovered enough to clamp shut, keeping your creamy load inside him[or]he lets some of your sticky load leak out and run down his thighs as he fingers his well-used hole[or]he motions for another of his dogs to come in and lick the dribbling excess of your load from his well-used hole[or]he gets one of the other dogs to toss him a butt plug, which he stuffs in his hole to keep your load locked inside[in random order].";

to say bustersex02:		[Get fucked - vaginal]
	say "     Guiding you over to a free mat near his desk, Buster gets you to move onto all fours with your ass in the air. Mounting you with a happy bark, he gives your shoulder a playful nip as his throbbing rod seeks your dripping entrance. No surprise, the horny hound wants to take you doggy style. And when his doggy prick slips a couple of inches into you on a successful thrust, he barks again and drives himself deeper. Soon he's humping away at you.";
	say "     '[if catdogstate is 2]Mmm... you make for one hot bitch. I knew you were something special when I saw you. Oh, I want to give you so many puppies[else if catdogstate is 1]Yeah, that's it. Soon we'll have you taking it like a doggy bitch and have you popping out puppies[else]Yeah, let's pound that dirty feline taint out of you and soon we'll be able to breed some proper puppies into you[end if],' he pants, drooling onto your back as he pounds away at you[if the player is impreg_ok]. The thought of bearing the canine leader's pups is strangely arousing, your nanite-addled libido causing you to imagine what strong pups the canine stud would give you[else]. You know you can't bear pups for the canine stud, but you can't bear to tell him that... though part of you can't help but longingly imagine what it'd be like if you did[end if]. His words also turn him on all the more, pounding you harder and deeper, trying to push his swelling knot into you.";
	WaitLineBreak;
	say "     He licks along your neck and cheek as he mates with you, a paw caressing your [bodytype of Player] body's many erogenous zones. With his hefty balls slapping against your thighs and the firm bulge of his knot [if Cunt Depth of Player < 20]pushing against your [cunt size desc of Player] pussy in its quest to gain entry[else]popping in and out of your [cunt size desc of Player] pussy[end if], your cunt quivers and squeezes around his meat. When your climax hits, you push your hips back hard into his thrust and, with his knot buried inside you, your inner walls clamp down around it. You cry out in orgasmic release, your female juices soaking the canine dick stuffed inside you. The clenching grip of your orgasming hole proves to be too much for the horny hound and he cums hard, blasting shot after shot of his virile seed into your vagina. You can feel that hot puppy batter flow into your womb as his knot [if Cunt Depth of Player < 20]leaves it nowhere else to go[else]stoppers up most of it from leaking out[end if]. When he's done and his dick's softened enough that you're no longer tied, he eases his spent shaft out and lets you rest and recover on the mat while he gets back to work.[fimpregchance]";

to say bustersex03:		[Get fucked - anal]
	say "     Bending you over his makeshift desk, Buster humps your rear with his drooling cock. With his paws on your shoulders, he lets his pointed dick prod at your puckered ring, dribbling some precum onto it before easing himself into you. He gives a pleased bark and thrusts gently to start, working to open your back door, relaxing your anal muscles to let the doggy dong penetrate steadily deeper into your hot hole.";
	say "     '[if catdogstate is 2]Mmm... you make for one hot dog. I knew you were something special when I saw you. Oh, I'm going to make you into a cream-filled pup, recruit[else if catdogstate is 1]Yeah, that's it. Soon we'll have you taking it like a good dog. Oh, I'm going to make you into a cream-filled pup[else]Yeah, let's pound that dirty feline taint out of you. You'll be much better off as a cream-filled pup once I'm through with you[end if],' he pants, drooling onto your back as he pounds away at you[if the player is impreg_ok]. The thought of the canine leader painting your insides with his virile load becomes increasingly arousing, your nanite-addled libido longing for him to fill you. His words also turn him on all the more, pounding you harder and deeper, trying to push his swelling knot into you.";
	WaitLineBreak;
	say "     Leaning overtop you, he runs his tongue along your neck and cheek as he ass-fucks you, a paw caressing your [bodytype of Player] body's sensitive erogenous zones. With his hefty balls slapping against your thighs and the firm bulge of his knot [if scalevalue of Player is 5]popping in and out of your oversized pucker[else if the player is twistcapped]popping in and out of your super-stretchy pucker[else]pushing against your pucker in its quest to gain entry[end if], your rectum squeezes and clenches around his meat. When your climax hits, you push your hips back hard into his thrust and, with his knot buried inside you, your inner walls clamp down around it. You cry out in orgasmic release, your anal walls milking and tugging at the tied dog cock locked inside you. The clenching grip of your hole proves to be too much for the horny hound and he cums hard, blasting shot after shot of his virile seed into your bowels. You can feel that hot puppy batter flow into your belly as his knot [if the player is twistcapped]leaves it nowhere else to go[else]stoppers up most of it from leaking out[end if]. When he's done and his dick's softened enough that you're no longer tied, he eases his spent shaft out and playfully wipes it off against your butt cheeks. He then helps you up off the table and leads you over to one of the nearby mats so you can rest and recover while he gets back to work.[mimpregchance]";

to say bustersex04:		[Give a blow job]
	say "     [if catdogstate is 0]'Does the little kitty want some tasty puppy batter?'[else if catdogstate is 2]'Does the good little doggy want a treat?'[else if catdogstate is 1]'I'll have you become a good dog at this rate,'[end if] Buster says with a wide smile. The chief dog then hops up onto the makeshift desk of his before gesturing to his crotch, as if asking you to get started. Eager to do so, you position yourself so that you are face-first with his furry balls. It appears that your canine friend is eager too as he grabs your head and pushes you into his balls, telling you to lick. Obediently following Buster's command, you take one of the orbs into your mouth, swirling your tongue around it. 'Mmm I love a good ball cleaning,' he murmurs, humping his slowly growing length against your face.";
	say "     After a few minutes of worshipping the canine chief's virile sack, you draw your attention to the real star of this show, the dog's wonderful dick. You quickly move your mouth to the tip of the throbbing length, engulfing it and sucking hard. That ends up making Buster yip in pleasure, causing him to thrust into your mouth. Thankfully though, you're prepared, so you easily deepthroat his cock. He looks down at you and smiles proudly at you, clearly happy that you can take his doggy dick all the way. By now precum is leaking in copious amounts down your throat something that makes him pull back a bit to let you taste it. [if catdogstate is 0]'Drink it down kitty, you'll be a dog soon,'[else]'I bet you're enjoying the taste...'[end if] the chief canine says to you in a husky tone. You push your mouth down to his quickly growing knot in agreement.";
	WaitLineBreak;
	say "     With the canine fast approaching his orgasm, he grabs at your head and begins to fuck your face roughly, letting his balls slap wetly against your chin. 'Fuck yeah, swallow that dick. I love how your throat just hugs my thick length.' He groans, talking dirty to you as he loses himself in the pleasure of ramming his doggy cock down your throat. You, on the other hand, just sit there and let him go at it. As this is happening, you can feel multiple pairs of eyes on you. If you look out of the corner of your own you realize there are a bunch of German shepherds masturbating to the scene, all of them getting close to orgasm, something that doesn't take long to happen.";
	say "     When it does, Buster manages to ignore his urges to release himself balls deep in your throat and pulls back enough so that his tip is resting on the flat of your tongue. Suddenly your mouth is filled with his hot doggy batter, flooding your tastebuds with a musky taste. You moan out loud, enjoying the experience. At the same time you are suddenly hit with ropes of hot cum from the many German shepherds that were watching you. Once they're done they walk up to you with smiles. [if catdogstate is 2]They reach out and help you gather the cum all over you into your mouth, something that you gulp down eagerly[else]They reach out to you and smear the cum all over your fur, getting it sticky and matted with their sperm. 'You'll be a good doggy soon,' they all murmur[end if]. Buster then gets up and pats you on the head before thanking you for the blowjob.";

to say bustersex05:		[Get a blow job]
	say "     The chief dog raises a brow at you and shrugs. 'Alright then, [if catdogstate is 2]you've been a good boy[else]you're not a cat[end if], so I guess I can suck your bone,' Buster says before asking you to get up on his desk. You do so, your legs hanging off the side of it. The canine quickly divests you of your clothing so that your soft cock is out in the open. His first point of attention is your balls, something that he lavishes with attention, occasionally taking one of your orbs into his mouth. He also appears to like your smell if the fact that he inhales often says anything. '[if catdogstate is 2]Mmmm, I love me the smell of canine musk[else]You may not be a dog, but you smell sexy[end if],' he groans, his hand going to his doggy dick.";
	say "     Probably feeling that he's spent enough time on your sack, he directs his focus to your cock, licking a stripe vertically to the tip. This makes you moan and hump lightly against his face, wanting to get your dick in his mouth. Thankfully he does decide to take you in his mouth rather than tease you senseless by licking your manhood all day long. What frustrates you is the fact that Buster slowly brings his mouth down your length, the urge to thrust deep into his throat held off by the canine chief holding your hips down. 'Not yet my friend, you'll get to claim my mouth soon enough,' he says, after pulling off for a second before going back. It appears that the dog is trying to savor the taste of your rod, if the way that he is swirling his tongue all over it says anything.";
	WaitLineBreak;
	say "     By now it appears you have garnered attention from the other German shepherds. They now surround you, but not too close, just enough that they are an arm's length away. The dogs are eagerly pumping their own dicks, barking and moaning as they watch the scene before them. It looks like this was what Buster was waiting for as he removes his paws from your hips, now allowing you to fuck his throat. You start right away, thrusting deep into his mouth, groaning at the tightness of it. Pulling out all the way only to slam back in, you repeat this motion quite a few times, enjoying the sensation of the canine leader's throat as you enter and leave it. Despite being in control here, the male is unraveling you with his talented tongue, swirling it all over your dick, bringing you closer and closer.";
	say "     It's not until you feel a padded finger at your entrance that your resistance crumbles entirely. Said digit is promptly pushed in and pressed against your prostate, causing you to let out a loud moan before releasing your load deep into his stomach. Buster eagerly swallows your sperm, his tail wagging while this happens. At the same time, the dogs around you let loose their cum, it all covering their chief, something that he delights in. As you ride out the orgasm, your partner is happily rubbing the cum into himself and some of it onto you, letting it sink into your body. Once you're out of your haze, Buster helps you off the desk and gives you a sloppy kiss before pulling back. '[if catdogstate is 2]Thanks for your tasty doggy batter[else]You'll become a dog soon my friend[end if],' he says to you rather cheerfully before getting back to work.";

to say bustersex06:		[Orgy]
	say "     When you mention wanting to have fun with all of the German shepherds, Buster smiles widely at you. [if catdogstate is 0]'Oh, the little kitty wants all of the dog cock?'[else]'Sounds like a fun time, let's call them over,'[end if] he says, wagging his tail happily. Quickly after that he gets the attention of the other canines who hurry over, their manhoods already starting to show. 'Hey boys, looks like our friend here wants to be the star of an orgy,' he informs all of them. The dogs start talking amongst themselves, some of them starting to masturbate their cocks. In a swift movement, the chief canine removes any clothing you're wearing and presents you with his cock, asking you to open up.";
	say "     Eagerly you open your mouth and let the male push his dick in, savoring the taste that pools in your mouth from his precum. While this is happening, the other guys are roaming their paws all over your body before one pair finds purchase at your ass. What happens next makes it hard for you to focus on the cock in your mouth as you feel something wet push into your hole, seconds later realizing it is one of the German shepherds['] tongues. You moan lewdly on the dick in your mouth, writhing in pleasure at feeling the fleshy organ move around in your hole[if Player is male]. Your manhood is rock hard, precum leaking from the tip and falling onto the ground[else if Player is female]. Your pussy is already dripping due to the sensations[end if].";
	WaitLineBreak;
	say "     Sadly the tongue in your ass doesn't remain for long but it is quickly replaced by something better. Seconds later, you feel a blunt tip at your entrance that is slowly pushed in, spreading your hole wide. At the same time, Buster grabs a hold of your head and starts to face fuck you, barking in pleasure as his cock rams in and out of your throat. When the dick in your ass bottoms out it is quickly pulled out to the tip before slamming back in, something that makes you moan wantonly, a sound that is muffled by the cock in your mouth. It appears the two canines are out of sync as the canine chief reaches his orgasm quickly, pulling out of your mouth to shoot his cum all over your face. Right after that another dick takes his place, thrusting deep into your mouth. It is when this happens that the manhood in your ass dumps its sperm deep into you, thankfully without knotting. The warm feeling fills your hole, making you moan out loud.";
	say "     This pattern continues for the next hour or so, with the German shepherds taking turns at your hole and your mouth, either dumping their cum in you or all over you. You let yourself fall into the bliss of being fucked repeatedly, moaning like a whore the entire time. [if Player is female]Your pussy is quite drenched by now, having orgasmed multiple times during that time period. [else if Player is male]You end up orgasming yourself quite a few times, a large pool of your sperm now formed under you. [end if]By the time everyone is done, all of you are laying on the ground somewhere, some of them cuddling and others simply asleep. Buster walks up to you, smiling before he speaks. 'That was brilliant my friend, [if catdogstate is 0]you'll be one of us in no time kitty[else]I'm sure they enjoyed their treat[end if].' You nod with a blissed-out smile on your face before you groan and stand up. Surprisingly the dog chief helps clean you up before getting you on your way, asking you to come back some time later.";


Section 99 - Subroutines

to gsquadinfect:
	setmonster "German Shepherd Male";
	choose row MonsterID from the Table of Random Critters;
	let tempsex be sex entry;
	now sex entry is "nochange";
	infect;
	infect;
	now sex entry is tempsex;

to catdogstatecheck:
	now catdogstate is 0;
	if BodyName of Player is listed in infections of CanineList or FaceName of Player is listed in infections of CanineList:
		now catdogstate is 2; [dog = positive]
	else if BodyName of Player is listed in infections of FelineList or FaceName of Player is listed in infections of FelineList:
		now catdogstate is 0; [feline = negative]
	else:
		now catdogstate is 1; [neutral]


Section 100 - Notes

[ gshepsquad ]
[ 0 = not encountered   ]
[ 1 = abandoned series  ]
[ 2 = completed event 1 ]
[ 3 = completed event 2 ]
[ 4 = completed event 3 ( K9 Vans known ) ]
[ 5 = been to K9 Vans   ]

[ HP of Buster ]
[ 0 = no sex ]
[ 1 = had sex w/player ]

[potential dog names, if needed:
male - Rocky, Jake, Cooper, Bear, Lucky, Murphy, Rusty, Shadow, Hunter?, Boomer, Luke?
female - Maggie, Lucy?, Molly, Bailey, Sasha, Lady, Missy, Dixie, Holly, Sandy, Pepper
herm - Ginger
]

[if catdogstate is 2][else if catdogstate is 1][else][end if]

G-Shep Squad ends here.
