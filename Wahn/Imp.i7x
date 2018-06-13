Version 1 of Imp by Wahn begins here.
[Version 1 - New Creature]

"Adds a Male Imp to Flexible Survival's Wandering Monsters table, with impreg chance"

when play begins:
	add { "Imp" } to infections of guy;

LastImpMeeting is a number that varies.	LastImpMeeting is usually 999.
ImpPlayerMarkingTurn is a number that varies.

Section 1 - Monster Responses

to say Imp wins:
	if HP of player > 0:[player submits]
		say "     As you submit to the little demon, the imp puffs up his chest and gives an imperious nod, then starts to smile. His too-broad mouth pulls into a wide grin showing off a whole row of sharp teeth and he calls out, 'Not as stupid as you look, I see. At least some mortals realize they are no match for demonic powers, hah! Strip naked slave!' After those words, the foot-tall being flutters around you as you obey and take off your gear and clothes, dropping them to the ground one by one. The imp demands that you take some lewd poses to show off - like shaking and spreading your ass or air-humping with your crotch - then commands you to lie down on your back. With a flutter of wings, he lands on your chest a moment later, placing tiny hooves to stand on your breastbone.";
	else:[player loses]
		say "     You are left swaying badly after the last hit of the little demon and the imp gives an evil chuckle as he flies right up to your face in a flutter of wings. With his too-broad mouth pulling into a wide grin showing off a whole row of sharp teeth, he reaches out to poke your forehead with one finger, then gives a small shove - enough to make you keel over backwards. 'You really should have realized that you're no match for me! I'm a demon, dumb-fuck!' With those words, the foot-tall being lands on your chest, placing tiny hooves to stand on your breastbone.";
	say "     'Oh yeah, that's definitively the proper place for a mortal,' the red-skinned humanoid gleefully says as he taps his right hoof on your chest and rubs his crotch. Wearing nothing but a threadbare loincloth, it is painfully obvious that the demon is hard as a rock - his well-sized cock (for the small body-size) standing straight out under the fabric and tenting it. He clearly gets off on ordering others around. With the flick of a clawed hand, your little captor pulls aside the loincloth a moment later, revealing his bright red shaft and starting to jerk it off with gleeful intensity.";
	if graphics is true:
		WaitLineBreak;
		project the figure of Imp_naked_icon;
	WaitLineBreak;
	say "     'You're nothing but a weak little mortal brought down by my might and power, are you? Go on - say it!' he demands from you while beating off, and given your current position you've got little choice but to obey. This arouses the imp even more, prompting him to play with his balls - squeezing them while stroking his shaft faster and faster. Soon, the groans and grunts of his surprisingly deep voice build to a half-shouted roar, and he bucks his hips against the hand gripping his cock, spraying long blasts of cum all over your face. The sheer volume of demonic seed he puts out is almost admirable - but what isn't is the face that he purposely aims to hit you in inconvenient places like up your nose or in an eye. Thankfully, the little fucker doesn't have good aim, but eventually you're forced to close your eyes tightly as a splashed line of cum covers your cheek up to your forehead.";
	say "     With closed eyes, you feel the warmth and wetness of further spurts even more clearly as the imp creams your face, then chin and neck as his orgasm slowly ebbs off. The next thing you feel is his hooves stepping forward a bit and little hands bracing against your jaw as the imp half climbs your face, then demands that you stick out your tongue. 'That's a good fucktoy!' he giggles as you obey, then taste his spicy cum as he wipes off his prick on your tongue. His tiny hands rub over your face, seemingly smearing the cum splashes all over it - but then you realize that he's actually scooping it up to do some finger-painting on your forehead. You feel him draw the letters B, I, T, C and H on your skin in his still warm cum, giggling as he does so.";
	WaitLineBreak;
	say "     'Well well - it's been fun playing with you, slut. Wish I could just keep ya, but it'd be a pain to drive you to the hell-gate through this fucked-up monster nest of a city,' the imp says to you and smiles as you carefully open the eye that hasn't got demon cum splashed on its eyelid. Then he grimaces a little and admits, 'And I was only supposed to find you anyways. The big boss - Skarnoth - called dibs on ripping you a new one after your stunt of stealing that angel dick-bait. So... you're fucked, haha! Gonna be dragged to hell and get an introduction to his demon dong. Well - eventually, you will. The pack of hellhounds that was supposed to come along with me and the others is busy enjoying the sights of this place for the moment - chasing down people to chew on and hump - but they'll get around to collecting you soon when the boss gets impatient and breaks out the choking collars. Should take two days or three, tops. And you can forget about hiding - getting a facial with infernal cum leaves a mark they can sniff out from miles away!' Pulling his loincloth aside again and lewdly wagging a half-hard cock at you, the imp gives a cruel laugh and then takes off, flying out of sight in a few moments.";
	LineBreak;
	say "     If the imp is to be believed, you're kinda fucked right now. [bold type]You have two - or three - days before a ravening pack of hellhounds will sniff you out.[roman type] Thinking back to the fight between Elijah and the demons in the red light district, even one of those beasts was a dire threat... a whole pack of them would surely be too much to handle alone. [bold type]You really should talk to your angelic friend about an option to prevent becoming a demon fucktoy.[roman type]";
	now libido of Skarnoth is 10; [player got found and marked]
	now ImpPlayerMarkingTurn is turns;

to say Imp loses:
	if graphics is true:
		project the figure of Imp_face_icon;
	say "     With a screech and an aborted flutter of wings, the imp crashes down, face-planting onto the ground. A groan comes from his throat as the little demon lets his wings slacken, then pushes himself up enough to focus on you with his big, expressive eyes. 'Look, er... fighting you wasn't such a great idea, and... how about we call a do-over, hm? I'll just... be on my way, and you can do whatever you were doing before. No hard feelings, right?' he says and gives a somewhat desperate smile, showing a surprisingly wide mouthful of sharp, little teeth. Snorting at the new tone coming from the formerly so boisterous creature, you pluck him off the floor with one hand and start thinking about what to do with him. ";
	LineBreak;
	say "[Imp Sex Menu]";

to say Imp Sex Menu:
	setmonster "Imp";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Tie him up and leave him";
	now sortorder entry is 0;
	now description entry is "Hog-tie the little demon and hang him up for someone else to find";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Kill him";
	now sortorder entry is 1;
	now description entry is "Snap the little demon's neck";
	[]
	[
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Wrap him around your dick and jerk off";
		now sortorder entry is 2;
		now description entry is "Use the little demon as a cock-sleeve";
	[]
	if player is female:
		choose a blank row in table of fucking options;
		now title entry is "Stick him in your pussy";
		now sortorder entry is 3;
		now description entry is "Use the little demon as a living dildo";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Stick him in your ass";
	now sortorder entry is 4;
	now description entry is "Use the little demon as a living dildo";
	[]
	]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]100 - Nevermind[as]100[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[bold type][title entry]: [description entry]?[roman type][line break]";
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Tie him up and leave him"):
					say "[ImpNoSex1]";
				if (nam is "Kill him"):
					say "[ImpNoSex2]";
				if (nam is "Wrap him around your dick and jerk off"):
					say "[ImpSex1]";
				else if (nam is "Stick him in your pussy"):
					say "[ImpSex2]";
				else if (nam is "Stick him in your ass"):
					say "[ImpSex3]";
				wait for any key;
		else if calcnumber is 100:
			say "[bold type]Just leave instead?[roman type][line break]";
			if player consents:
				now sextablerun is 1;
				say "     Deciding you should focus on more important stuff right now, you turn away and walk off, leaving the bruised imp behind.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say ImpNoSex1:
	say "     Snatching up some shreds of fabric from the ground - finding ripped and usually cum-stained clothing isn't hard, with everything that has been going on - you quickly tie the imp up into a compact little bundle. He grumbles something about Skarnoth sending out countless of his brothers and that one of them is gonna get you, then just mumbles as you gag him for good measure. You leave the annoying creature behind like that, weakly kicking and trying to wiggle out of his bindings as he dangles in a prominent place from a street-sign. No doubt, some other creature will soon find the little fucker and take care of him for you.";
	if libido of Skarnoth is 0:
		now libido of Skarnoth is 1; [player fought off an imp before, left him to the mercy of some unknown creature]
	else if libido of Skarnoth < 3: [player has not yet been told to talk to Eli]
		say "     Even though you've fought off yet another imp, something tells you that this 'Skarnoth' will just keep sending more to harass you. Seems he's quite determined to get his claws on you for some reason. One possible explanation is that you did rescue [bold type]Elijah[roman type] from demonic clutches and made an enemy that way. [bold type]Maybe you should ask the angel about dealing with this sort of problem.[roman type]";
		now libido of Skarnoth is 3;
	else if libido of Skarnoth is 4: [player talked to Eli, didn't go through with the attack]
		say "     Even though you've fought off yet another imp, something tells you that this 'Skarnoth' will just keep sending more to harass you. Seems he's quite determined to get his claws on you for some reason. One possible explanation is that you did rescue [bold type]Elijah[roman type] from demonic clutches and made an enemy that way. [bold type]Maybe you should give the angel's idea of a counterattack some thought after all.[roman type]";
	else if libido of Skarnoth > 9: [player is already demon marked or completed the quest and should meet no more imps]
		say "     <ERROR [libido of Skarnoth]: You should not have encountered an imp at this point of the quest. Please notify Wahn on the FS forum and give him the error code and details about your play-through.>";

to say ImpNoSex2:
	say "     Taking hold of the slender little demon, you grab his head and give it a sharp twist, breaking his neck. He scowls at the pain, but then surprisingly gives a toothy smile. 'Can't kill a demon, you idiot. Skarnoth will just send me back...' he croaks out as the life fades from him. Then as the body goes still, it seems to melt between your fingers, becoming a puff of red smoke that is scattered by the wind.";
	if libido of Skarnoth is 0:
		now libido of Skarnoth is 2; [player fought off an imp before, killed him and send him to hell]
	else if libido of Skarnoth < 3: [player has not yet been told to talk to Eli]
		say "     Even though you've fought off yet another imp, something tells you that this 'Skarnoth' will just keep sending more to harass you. Seems he's quite determined to get his claws on you for some reason. One possible explanation is that you did rescue [bold type]Elijah[roman type] from demonic clutches and made an enemy that way. [bold type]Maybe you should ask the angel about dealing with this sort of problem.[roman type]";
		now libido of Skarnoth is 3;
	else if libido of Skarnoth is 4: [player talked to Eli, didn't go through with the attack]
		say "     Even though you've fought off yet another imp, something tells you that this 'Skarnoth' will just keep sending more to harass you. Seems he's quite determined to get his claws on you for some reason. One possible explanation is that you did rescue [bold type]Elijah[roman type] from demonic clutches and made an enemy that way. [bold type]Maybe you should give the angel's idea of a counterattack some thought after all.[roman type]";
	else if libido of Skarnoth > 9: [player is already demon marked or completed the quest and should meet no more imps]
		say "     <ERROR [libido of Skarnoth]: You should not have encountered an imp at this point of the quest. Please notify Wahn on the FS forum and give him the error code and details about your play-through.>";

to say ImpSex1:
	say "     A";

to say ImpSex2:
	say "     B";

to say ImpSex3:
	say "     C";

to say ImpDesc:
	setmongender 3;
	say "     A rapid flutter of wings draws your attention to an incoming threat in the shape of a small, red-skinned creature about a foot in height! The slender being has a pair of bat-like wings on his back, a spade-tipped tail, and its relatively handsome face is crowned by an unruly mop of black hair out of which two curved horns poke out of. Wearing nothing but a thin, skimpy loincloth that sways from side to side with every motion, there is little doubt that this tiny demon is male.";
	say "     Swooping down on you, the imp gives you a lewd grin before clearing his throat and booms out in a demonic tone. 'Kneel! You're now mine, mortal!' The voice does have a proper horror film ring to it, but the effect is pretty underwhelming considering how small he is. You can't quite suppress a snort at how poorly his larger than life bravado goes with his tiny body, drawing you a hateful glare from the imp. 'We'll see who's laughing after I give you a well-deserved thrashing, whelp!' he shouts and raises a hand, forming a ball of fire above his palm about an inch in diameter.";

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Imp";
	now attack entry is "[one of]Swinging his arm like a baseball pitcher, the imp sends a fire-ball flying your way. Thankfully it is pretty small, so you're just a little singed.[or]In a lightning-quick flying maneuver, the little demon swoops past your face and gives your nose a kick. Ouch, that smarts![or]Swooping down between your legs, the imp leaves thin bloody scratches near your ankles.[or]As he flutters straight towards your face, you deflect the imp with your hands, earning some bloody scratches in the process.[at random]";
	now defeated entry is "[Imp loses]";
	now victory entry is "[Imp wins]";
	now desc entry is "[ImpDesc]";
	now face entry is "that a fairly handsome male demon, with large expressive eyes and a broad mouth filled with small but sharp teeth. A pair of curved horns stick out of the unruly tangle of black hair on your head";
	now body entry is "that of a slender and skinny humanoid. Attached to your back are a pair of bat-like wings. These are red and almost as large as your body";
	now skin entry is "red";
	now tail entry is "You have a tight and compact butt with a long, slender tail attached. It is a classic devil tail: thin, red and ending in a spaded tip.";
	now cock entry is "human-like";
	now face change entry is "your facial muscles seem to ripple under the skin, rearranging themselves into a demonic, if rather cute appearance, with large eyes and a mouth with sharp teeth. Small horns push out of the mop of black hair forming on your head";
	now body change entry is "it is reshaped into a pretty compact and small, but still slender form. You are soon distracted from this change by the strange feeling of your skin stretching and pressing out from your back. Looking over your shoulder, you stare in wonder as two bulges of flesh push out of your back, then popping open in an almost orgasmic release. You now have a pair of blood-red bat wings on your back";
	now skin change entry is "your skin seems to smooth out and pull tight on your body, leaving you with a smooth and blemish less red skin";
	now ass change entry is "it tightens up into a tight ass, above which a demonic tail with spaded tip sprouts from your lower back";
	now cock change entry is "it seems to grow partially erect and twitches eagerly, hardening in its human-like shape";
	now str entry is 8;
	now dex entry is 20;
	now sta entry is 14;
	now per entry is 20;
	now int entry is 12;
	now cha entry is 12;
	now sex entry is "Male";
	now HP entry is 50;
	now lev entry is 5;
	now wdam entry is 5;
	now area entry is "Nowhere";        [ Case sensitive]
	now cocks entry is 1;               [ number of cocks if sex is 'Male' or 'Both' ]
	now cock length entry is 6;
	now cock width entry is 2;          [ Size of balls ]
	now breasts entry is 2;             [ Number of nipples. ]
	now breast size entry is 0;         [ Size of breasts infection will try to attain ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;               [ number of pussies if sex is 'Female' or 'Both' ]
	now cunt length entry is 0;
	now cunt width entry is 0;
	now libido entry is 10;             [ Amount player Libido will go up if defeated ]
	now loot entry is "";               [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 00;         [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 1;               [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "slender";      [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "demonic";        [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	blank out the nocturnal entry;      [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";

Section 3 - Events

instead of navigating Red Light District while (level of player > 10 and HP of Elijah > 2 and HP of Elijah < 99 and libido of Skarnoth < 10 and LastImpMeeting - turns > 8 and a random chance of 1 in 3 succeeds):
	say "[NavCheck Red Light District]";
	if NavCheckReturn is false, stop the action;
	if debugactive is 1:
		say "     DEBUG: IMP SCOUT [line break]";
	say "[ImpEncounter]";
	challenge "Imp";
	now LastImpMeeting is turns;
	move player to Red Light District;

instead of navigating Grey Abbey Library while (level of player > 10 and HP of Elijah > 2 and HP of Elijah < 99 and libido of Skarnoth < 10 and LastImpMeeting - turns > 8 and a random chance of 1 in 3 succeeds):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	if debugactive is 1:
		say "     DEBUG: IMP SCOUT [line break]";
	say "[ImpEncounter]";
	challenge "Imp";
	now LastImpMeeting is turns;
	move player to Grey Abbey Library;

instead of navigating Smith Haven Mall Lot South while (level of player > 10 and HP of Elijah > 2 and HP of Elijah < 99 and libido of Skarnoth < 10 and LastImpMeeting - turns > 8 and a random chance of 1 in 3 succeeds):
	say "[NavCheck Smith Haven Mall Lot South]";
	if NavCheckReturn is false, stop the action;
	if debugactive is 1:
		say "     DEBUG: IMP SCOUT [line break]";
	say "[ImpEncounter]";
	challenge "Imp";
	now LastImpMeeting is turns;
	move player to Smith Haven Mall Lot South;

to say ImpEncounter:
	let randomnumber be a random number from 1 to 3;
	if randomnumber is:
		-- 1:
			say "     As you make your way through the mostly lifeless streets, filled with abandoned cars and trash, you hear a harrowing howl start in the distance, followed by another, and another. You freeze in your steps and a cold shiver runs down your spine as you hear them - that surely came from no normal dog, and neither a wolf. From your experience, you'd rather guess... hellhound. Thankfully the beasts seem to be a fair distance off, as you wouldn't want to be what they're running down right about now.";
			say "     Then suddenly, you hear voices call to each other far closer to your position - just around the next corner you'd say. They are rather deep, so your guess would be that its males of some kind talking to one another. A first one says, 'Those fucking mutts! They were supposed to come wi-' Another interrupts him, 'Oh, shut up already! Neither of us is stupid enough to try dragging them away from humping their fresh mortal prey.' A third voice speaks up, 'Yeah, right - and the boss will punish us if we waste time instead of searching. So get going! You go left, you right and I'll just fly down this road.'";
		-- 2:
			say "     As you make your way through the mostly lifeless streets, filled with abandoned cars and trash, you come upon a rather disconcerting sight. There are paw-prints on the asphalt, or rather... indented into it, as if the black material partially melted at the point of contact. Add to that the visible areas in which something caustic seems to have dripped onto the road, creating foul-smelling discolored spots, and you have to guess that it's hellhound tracks you've found. Even worse, it isn't just one, but rather a whole pack of them from the number of imprints. Thankfully, the trail is cold as you crouch down and touch it. They seem to have been chasing something or someone, a guess that becomes a certainty as you spot a bunch of clothing shreds and cum-stains behind a car along the route they took. With a cold shiver running down your spine at the thought of what happened over there, you hold your breath for a moment and silently listen for any sign that the pack might be coming back this way.";
			say "     Silence stretches out around you, only interrupted by a very far-off screech of something - a bird or dinosaur-creature maybe. But just as you're starting to let out a relieved breath, you suddenly hear voices call to each other far closer to your position - just around the next corner you'd say. They are rather deep, so your guess would be that its males of some kind talking to one another. A first one says, 'Those fucking mutts! They were supposed to come wi-' Another interrupts him, 'Oh, shut up already! Neither of us is stupid enough to try dragging them away from humping their fresh mortal prey.' A third voice speaks up, 'Yeah, right - and the boss will punish us if we waste time instead of searching. So get going! You go left, you right and I'll just fly down this road.'";
		-- 3:
			say "     As you make your way through the mostly lifeless streets, filled with abandoned cars and trash, you come upon a rather disconcerting sight. The street is splashed with dried, brown splotches of blood and splinters of bone crunch under your steps. Looks like something was torn to pieces, right here in the open. A few steps further, you see what - or rather who - it was... the ripped off head of a minotaur lies behind a car wreck, eyes still opened wide in horror and staring blankly at you. All around the grisly scene, there are paw-prints on the asphalt, or rather... indented into it, as if the black material partially melted at the point of contact. This does lead you to the conclusion that in all likelihood, a pack of hellhounds is responsible. Thankfully, the trails are cold as you crouch down and touch them, and the blood is dried all the way, so it didn't happen recently. With a cold shiver running down your spine, you hold your breath for a moment and silently listen for any sign that the pack might be coming back this way.";
			say "     Silence stretches out around you, except for the wind blowing past the buildings. But just as you're starting to let out a relieved breath, you suddenly hear voices call to each other close to your position - just around the next corner you'd say. They are rather deep, so your guess would be that its males of some kind talking to one another. A first one says, 'Those fucking mutts! They were supposed to come wi-' Another interrupts him, 'Oh, shut up already! Be happy that they get fresh mortal prey and don't try to chew on us instead.' A third voice speaks up, 'Yeah, right - and the boss will punish us if we waste time instead of searching. So get going! You go left, you right and I'll just fly down this road.'";
	wait for any key;

An everyturn rule: [hellhound bad end progress every turn]
	if libido of Skarnoth is 10: [player got found and marked]
		if ImpPlayerMarkingTurn - turns is 8:
			say "     A shiver runs down your spine suddenly and out of nowhere you hear... something. It is a padding sound, accompanied by scraping noise - like paws on asphalt, with their claws scratching over the stone as their owner sprints after prey. Then another and another beast joins the hunt, the rising sound soon accompanied by hungry growls and eager barks. Cold sweat breaks out over you as you become more and more convinced that they will suddenly appear and rip you to shreds - but then the strange effect reaches a terrifying climax as an unknown creature screeches in pain. The noises cuts off with shocking abruptness after that, the last thing in the air being satisfied growls out of many bestial throats.";
			say "     Gulping after the strange occurrence stops, you wonder what it meant... and realize that there is one part of you that doesn't feel cold. Raising a hand to your face, you feel a warm wetness on your forehead and as you wipe it off and pull the fingers away, see that it is cum. Seems like that fucking imp left a lasting stain that connects you to the pack of hellhounds hunting in the city. If it can just... flare up again and his load re-appears on your face, you don't doubt that the beasts will sniff you out soon!";
			LineBreak;
			say "     [bold type]The hellhounds are on your trail and are getting closer! Some other prey might have distracted them for now, but you don't doubt that they'll get back to going after you before long. You really should talk to Elijah about a chance at getting out of this impending doom!'[roman type]";
		else if ImpPlayerMarkingTurn - turns is 16:
			say "     A shiver runs down your spine suddenly and out of nowhere you hear... something. It is a padding sound, accompanied by scraping noise - like paws on asphalt, with their claws scratching over the stone as their owner sprints after prey. Then another and another beast joins the hunt, the rising sound soon accompanied by hungry growls and eager barks. Cold sweat breaks out over you as you become more and more convinced that they will suddenly appear and rip you to shreds - especially since the noise gets louder and louder. For a second you can even feel a warm breath against your neck, but then an aggressive bark, almost like a laugh, can be heard a little bit off to the side. The sounds fade away after that...";
			say "     Gulping after the strange occurrence stops, you wonder what it meant... and realize that there is one part of you that doesn't feel cold. Raising a hand to your face, you feel a warm wetness on your forehead and as you wipe it off and pull the fingers away, see that it is cum. Seems like that fucking imp left a lasting stain that connects you to the pack of hellhounds hunting in the city. If it can just... flare up again and his load re-appears on your face, you don't doubt that the beasts will sniff you out soon! They might have gotten distracted again this time, but who knows how long that will last...";
			LineBreak;
			say "     [bold type]The hellhounds are on your trail and are getting closer! You really should talk to Elijah about a chance at getting out of this impending doom![roman type]";
		else if ImpPlayerMarkingTurn - turns is 24:
			say "     Suddenly, you hear the scrape of clawed paws on the ground - from behind you. Then a low growl reaches your ears. Thinking for a second it is just another vision of the hunting pack, it takes several valuable seconds before you realize that this time, the hellhound is actually there with you. As you whirl around, you see the large beast in all its terrible glory - about as large as a small pony, the demon hound has jet-black fur and a powerful build, muscles rippling under his skin as he makes another step towards you. Eyes burning with an inner green glow play their gaze over you and his lips draw back, revealing countless sharp teeth. And that's not the only thing that is shown to you - the hound's blood-red shaft pushes out of its sheath in anticipation of running you down.";
			say "     Fleeing is clearly not the way to go here, so you steel yourself and get ready for the fight of your life... then suddenly, you see something from the corner of your eye - another hellhound, even closer than the first! Whirling around to face him, a throaty chuckle makes you glimpse to the side for a second and spot the next one. There are three hellhounds, surrounding you on all sides! Number two suddenly lunges forward, biting with slavering jaws - but that is only a feint, and the real attack comes from behind as two plate-sized paws hit you in the back and you stumble and fall.";
			WaitLineBreak;
			say "     The three of them pounce upon you like wild beasts, leaving you not a chance to recover or even fight back. Pushing you down and growling in savage amusement, they rip your clothes and gear to shreds... mostly without giving you more than just a few nips with their teeth. Finally, the lead hellhound steps over your body and grabs your neck between his powerful jaws to hold you tight and lines himself up with your body. With a savage thrust, the beast fills you with its knotted cock, then fucks you mercilessly until breeding your hole with a heavy load of demon cum. One after another, they all take turns using you, going again and again until you're nothing but a cummy mess. Only after that are you dragged over the back of the lead hound by one of his pack-mates, then carried to the portal they entered your world through.";
			say "     A succubus and incubus pair of demons welcome you to your new home - their demon prince's lair, which is decorated in a lewd medieval style. After a thorough scrubbing you're brought before Skarnoth, a handsome horned demon around whom a noticeable aura of power ripples in the air. The demon lord makes sure to show you his... displeasure, at being cheated out of an angelic slave, and after a hard fucking you're added to the pool of his mortal pets - to be played with, abused and used.";
			now tailname of player is "Demon Slave";
			Now facename of player is "Demon Slave";
			now skinname of player is "Demon Slave";
			now bodyname of player is "Demon Slave";
			now cockname of player is "Demon Slave";
			end the story saying "You're stuck in hell - there's no coming back from that!";


Section 4 - Endings

when play ends:
	if bodyname of player is "Imp":
		if humanity of player < 10: [succumbed]
			say "     Finally giving in to your base desires, you take off and fly over the city on the search for someone to fuck. Small as you may be, from high up everyone looks tiny and weak - which makes you feel powerful and strong. They're just insects to you, mortal mayflies to be played with. Before long, your search bears fruit - there is a small group of people holed up on top of a building, uninfected humans that have the stairwell barricaded and cower from the monsters below in a shack on the roof. Of course, this doesn't protect them from you as you, with your wings and demonic powers. With little more than a few fireballs thrown around, you frighten them into obedience and gain a flock of fucktoys to serve your every whim. This even goes so far that they never even dare to try calling out to the soldiers as they sweep the city, instead hiding according to your commands and being left behind - all yours, forever.";
		else:[sane]
			say "     Rescued by the military, you are released after a short while of quarantine. With your small stature and demonic looks, it isn't easy to find a new place in the post-nanite world, but the fact that you do have functional wings does pay off in the end and you're hired as a courier by the 'Skymail' express delivery service. Supplanting the bike couriers of the big cities, the mixed crew of gryphons, harpies and even demons just like yourself does quite well, and before long the bigger companies usually have a little balcony added to their high rises for speedy drop-offs. As you and those like you become part of the typical day to day of many people - regularly swooshing past over their heads with important documents - the distrust about looking like a demon lessons bit by bit too. Sure, you get splashed with holy water by bigots once in a while, but that becomes the exception as society integrates all the new species of new people...";

Imp ends here.
