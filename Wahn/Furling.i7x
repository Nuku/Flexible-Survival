Version 1 of Furling by Wahn begins here.
[Version 1.2 - Typo Fixes]

"Adds a Furling to Flexible Survival's Wandering Monsters table"

when play begins:
	add { "Furling" } to infections of Transgender; [Cuntboy]
	add { "Furling" } to infections of furry;

Table of GameEventIDs (continued)
Object	Name
Cheerleader vs Furling	"Cheerleader vs Furling"

Cheerleader vs Furling is a situation. The level of Cheerleader vs Furling is 5.
The sarea of Cheerleader vs Furling is "Campus".
when play begins:
	add Cheerleader vs Furling to badspots of Transgender; [shemale vs cuntboy]
	add Cheerleader vs Furling to badspots of furry; [Furling]

Instead of resolving a Cheerleader vs Furling:
	say "     As you're exploring the college campus, you suddenly hear crashing noises from inside the building right next to you - one of the male dormitories. Hurriedly throwing yourself behind a nearby hedge, you peek out between its branches. Hm, now it's still agai- your thought is interrupted by the noisy crunch of splintering wood. A large green figure is thrown through the entrance door and lands out on the sidewalk, right in front of your hedge.";
	LineBreak;
	say "     The thrown person turns out to be a pretty tall female, having bulging muscles and generous breasts which are barely contained in a tight cheerleader's outfit. With a roar, an orange-red furred humanoid comes after her from inside the building. He pounces, pinning down her body with his and grabbing her by the throat. The sound of ripping fabric follows as he pulls off her skirt, revealing a massive green cock between the cheerleader's legs. Pulling up his own loincloth, the furred guy turns out to have a pussy, which he sinks eagerly down on the cheerleader's erection.";
	say "     What follows is a wild romp between this green shemale and the red-furred cuntboy, accompanied by noisy grunting and moaning, culminating in the furry guy throwing back his proudly maned head in a satisfied roar as he orgasms. He then pulls himself off the cheerleader's thick cock and walks off, leaving behind a little trail of cum dripping from his cunt.";
	LineBreak;
	say "     The green cheerleader stays lying there on the ground for a moment to catch her breath, then starts laughing and hauls herself up to stand on her feet. 'What horny furballs our brave football team has turned into,' she says to herself, 'and still with no restraint on their sex drive. I'd have fucked him anyways, but no - he has to be on top, the beast.'";
	say "     Looking down on the shredded and cum-soaked remains of her skirt, the cheerleader sighs and walks down the sidewalk. You hear her think out loud, 'Oh well, one point for the furball. Hm, or maybe more - I'll have to check back later to see if he's preggers, and there could be some bonus points in it since he was Buffy's annoying ex-boyfriend Zack...'";
	now Cheerleader vs Furling is resolved;

Section 1 - Monster Responses

to say Furling wins:
	if player is male: [male]
		say "     Pulling off your clothes with barely any regard for not ripping them, the furling exposes your crotch. Looking at your [cock of player] manhood, he gives a satisfied growl, then sweeps you off your feet and lowers you to the ground. Holding you down with a large hand on your chest, he then brings his head to your crotch and starts licking your balls and cock. Despite a moment of apprehension as you see how many sharp teeth he has, your shaft quickly hardens under the furling's oral stimulation and careful sucking.";
		say "     Then suddenly, the maned head pulls up to look down into your face. 'Fuck - now!' an order is given, and the furling gets up to stand over you, pulling aside his loincloth to reveal a moist and dripping pussy between his legs. Then the large beast lowers himself onto your rigidly standing erection, his pussy enveloping your manhood in a warm and tight cave. What follows is a pretty wild and unrestrained coupling, mostly on the part of your former opponent, who aggressively fucks himself on your pole. Though that doesn't mean you don't get off on this too and thrust up against your dominating partner's pussy.";
		say "     The thrusting and grinding gets harder and faster until you just can't hold out any more. Grunting in satisfaction, you thrust up one last time, then start blowing your load, with spurt after spurt of fertile seed shooting into your larger partner's womb. Then suddenly you hear a crunching sound left and right of your head. Looking over, you realize it's the furling's claws digging into the concrete floor as he holds on too tight when he joins you in his own mind-blowing orgasm. He stays like that for a moment to catch his breath, your hard shaft still inside his pussy. Then the muscled cuntboy pulls off and stands up. Giving you a last look [if scalevalue of player < 4]from high above[end if], he says, 'Felt good. Nice guy.' Then he stalks off, leaving you lying there.";
	else: [female + neuter]
		say "     Pulling off your clothes with barely any regard for not ripping them, the furling exposes your crotch. Looking at your [if player is not female]nonexistent [end if]genitals, he growls, 'Useless!' Then he gives you a shove, landing you prone on the ground. With an annoyed grunt, the large creature stalks off.";

To say Furling loses:
	say "     Rather roughed up, the furry beast takes a reeling step towards you... and then falls over backwards. He lies in front of you on his back for a moment, silently moaning, then shakes his head and starts taking account of all his bruises, gingerly touching them. Given your current position and the way it came to lie when he fell, you can see up the furling's loose loincloth - showing you that even though 'he' is otherwise looking male, there's a moist and swollen pussy between his legs. Its up to you to decide what to do next...";
	wait for any key;
	say "[FurlingSexMenu]";

to say FurlingSexMenu:
	setmonster "Furling";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Fuck his pussy";
		now sortorder entry is 1;
		now description entry is "Slide your [cock of player] shaft into his moist pussy";
	[]
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Fuck his ass";
		now sortorder entry is 2;
		now description entry is "Take the furling's back door for a ride with your [cock of player] shaft";
	[]
		choose a blank row in table of fucking options;
		now title entry is "Give him some relief by stroking his pussy";
		now sortorder entry is 3;
		now description entry is "Rub the furry beast's sensitive clit";
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
				if (nam is "Fuck his pussy"):
					say "[FurlingSex1]";
				else if (nam is "Fuck his ass"):
					say "[FurlingSex2]";
				else if (nam is "Give him some relief by stroking his pussy"):
					say "[FurlingSex3]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     Deciding you should focus on more important stuff right now, you turn away and walk off, leaving the bruised furling behind alone.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say FurlingSex1:
	say "     Taking off your clothes, you grab hold of your already growing erection and stroke it until it's fully hard. Then you kneel between your furry opponent's legs and pull up his loincloth to expose his ready and dripping pussy. As you bring your hand to it, stroking and spreading the sensitive pussy lips, the large creature raises its head to look at you and gives a needful croon.";
	if scalevalue of player > 3:
		say "     Without any more hesitation, you bring your hard cock to the furling's opening, then thrust inside him, filling his warm cave with your manhood. Being inside him is better than you could have dreamed, with his juicy cunt tightly gripping your shaft, and satisfied moans inviting you to fuck him harder and deeper. Burying your hands in the furling's soft fur, you grip his muscled body tightly and really start going at it, pulling back and slamming forward until your hips meet. All bruises forgotten, your large partner wraps his arms and legs around you, holding and stroking your body as you fuck his pussy.";
	else:
		say "     Without any more hesitation, you bring your hard cock to the furling's opening, then thrust inside him, filling his warm cave with your manhood. Being inside him is better than you could have dreamed, with his juicy cunt tightly gripping your shaft, and satisfied moans inviting you to fuck him harder and deeper. Burying your hands in the furling's soft fur, you grip his muscled body tightly and really start going at it, pulling back and slamming forward until your hips meet. The furling looks at you and reaches out with a strong arm to caress you while murmuring 'So small - but soo good.' All bruises forgotten, your large partner then wraps his legs around you, pulling you even tighter in with each of your thrusts.";
	say "     Rutting on the ground like mating beasts, the two of you make quite a bit of noise and it's a wonder that doesn't attract any opportunistic creatures - especially as the furling orgasms, giving a loud lust-filled roar as his pussy starts to drip with femcum. You're not far behind, thrusting deep inside him one last time as your hard shaft starts pulsing with spurt after spurt of your fertile seed. Breathing hard, you lean forward to rest on your furling's muscled chest, hands stroking his soft fur. Accompanied by a satisfied hum, your sexual partner strokes your back and says, 'Nice man. Make me feel good.' Followed by more humming and stroking.";
	say "     After lying there with you against his chest for a while longer, the furling takes hold of you and rolls over so you're on the bottom now, then stands up and walks away.";

to say FurlingSex2:
	say "     Taking off your clothes, you grab hold of your already growing erection and stroke it until it's fully hard. Then you kneel between your furry opponent's legs and pull up his loincloth to expose his ready and dripping pussy, as well as the invitingly looking pink opening of his rear end. You just know he'll be tight as a drum - after all, who in their right mind would get the idea of ass-fucking a big shaggy beast with those muscles and claws. Hm... on the other hand - you did, and sanity has become a bit of an optional quality lately anyways. No matter what, your [cock of player] cock is throbbing in your hand almost as if its eager to plunge in all of its own. While slowly stroking up and down its length with one hand, you reach out and tap gently against the large creature's clit, rubbing it and playing a little with the pussy lips further down. The trans-male raises his head to look at you and gives a needful croon, with even more of his feminine fluids moistening the swollen pussy under your hand.";
	say "     You've got other plans of course, so you swipe up the furling's slippery femcum and use it to lube your cock, then slide your hips a bit closer yet. When you give his buttocks a squeeze, then lift his legs, the red-furred guy asks in confusion, 'You fuck me now? Me needs it!' Simply smiling confidently at the muscular being lying before you in his so vulnerable and receptive state, you line up your shaft with his pucker and press the slick cockhead forward. The resistance of the muscle mounts for a second, then you're through, sliding into your opponent's tightly gripping chute with a grunt echoed by him. 'That's not me's pussy,' the former college student tells you with a concerned look on his face, starting to push up on his elbows.";
	WaitLineBreak;
	say "     Having gotten over the shock of the first penetration, his anal muscles clench tight at the same time, trapping your dick in a death-grip that leaves not even a little wiggle room. You franticly get your hand on his clit again, rubbing it with circling movements - and it works, as your furry partner lets out a long moan and thuds back down, flat on the ground as he pants lustfully with every touch. His inner muscles relax at the same time, restoring your freedom to move - not to mention restoring the blood-flow to your best piece. Making sure to keep servicing the furling's feminine parts, you sink yourself all the way into his ass, eventually bumping his prostate - with an immediate result of having the wound-up beast holler out loud, twitching and thrashing as he has a mini-orgasm.";
	say "     Raising his upper body up on both elbows, the transformed student looks at you wide-eyed, watching as you raise your hand slowly from his pussy and just fuck into the tight confines of his ass, thrusting in and out in a steady rhythm. He grunts in pleasure each time you hit his prostate again, biting his lip before finally saying, 'Ass sex is... nice too. Me likes it. But do not forget pussy.' With that, he catches your hand in his large clawed paw and guides you back to his nether lips, sighing pleasedly as you go on rubbing at the same time as fucking him. Letting his head sink back on the ground, he fully relaxes into giving himself to you and even wraps his legs around your hips, giving little twitches to motivate you for harder thrusts.";
	WaitLineBreak;
	if scalevalue of player > 3:
		say "     Without any more hesitation, you start fucking the furling's ass in earnest, hammering in and out and filling his tight chute with your manhood. Being inside him is better than you could have dreamed, with his inner muscles tightly gripping your shaft and satisfied moans inviting you to fuck him harder and deeper. Burying your free hand in the furling's soft fur, you brace on his broad chest and do some especially deep thrusts, pulling back and slamming forward until your hips meet. All bruises forgotten, your large partner wraps his arms and legs around you, holding and stroking your body as you fuck his ass.";
	else:
		say "     Without any more hesitation, you start fucking the furling's ass in earnest, hammering in and out and filling his tight chute with your manhood. Being inside him is better than you could have dreamed, with his inner muscles tightly gripping your shaft and satisfied moans inviting you to fuck him harder and deeper. Burying your free hand in the furling's soft fur, you brace on his broad chest and do some especially deep thrusts, pulling back and slamming forward until your hips meet. All bruises forgotten, your large partner wraps his arms and legs around you, holding and stroking your body as you fuck his ass, all the while murmuring 'So small - but soo good.'";
	say "     Rutting on the ground like mating beasts, the two of you make quite a bit of noise and it's a wonder that doesn't attract any opportunistic creatures - especially as the furling orgasms, giving a loud lust-filled roar as his pussy lets out a small fountain of fumcum, leaving both of your crotches wet and sticky. You're not far behind, thrusting deep inside him one last time as your hard shaft starts pulsing with spurt after spurt of your fertile seed, painting his inner walls white. Breathing hard, you lean forward to rest on your furling's muscled chest, hands stroking his soft fur. Accompanied by a satisfied hum, your sexual partner strokes your back and says, 'Nice man. Make me feel good.' Followed by more humming and stroking.";
	say "     After lying there with you against his chest for a while longer, the furling takes hold of you and rolls over so you're on the bottom now, then gently pulls himself off your shaft and stands up. With an affectionate croon he says, 'Later,' and walks away.";

to say FurlingSex3:
	if player is purefemale:
		say "     Kneeling between your furry opponent's legs, you pull up his loincloth to expose his ready and dripping pussy. As you bring your hand to it, stroking and spreading the sensitive pussy lips, the large creature raises its head to look at you and gives a needful croon.";
		say "     Without any more hesitation, you put two fingers against the wet opening between his pussy lips and push them into his inner passage. The furling immediately starts moaning loudly as you finger him, and between the gasps and moans you think you heard him say, 'More.' So you add another finger. It's a strangely arousing feeling to have three fingers in the tight, warm and very wet pussy of this large furry beast. Stimulating him a bit more and seeing him take three, then four fingers without any problems, you wonder if you could...";
		say "     You can, as it turns out - your whole hand slips into the furling's pussy with a wet slurp, kicking your furry partner's gasps and moans into a whole new gear. Stroking and fondling the inner passage of your former opponent with all of your fingers, it doesn't take long until you drive him over the edge. Trembling and moaning, the large creature orgasms, his femcum running down your arm to create a small puddle on the ground. A strange scraping noise has you look up for a second, but it turns out only to be the furling's claws digging shallow lines into the concrete below as he holds on to it too tightly.";
		say "     Pulling your hand out of his pussy, you wipe it dry against the furling's legfur, then stand up. With the large beast still panting softly and mumbling, 'Nice woman. Make me feel good.' You leave him there and walk away.";
	else:
		say "     Kneeling between your furry opponent's legs, you pull up his loincloth to expose his ready and dripping pussy. As you bring your hand to it, stroking and spreading the sensitive pussy lips, the large creature raises its head to look at you and gives a needful croon.";
		say "     Without any more hesitation, you put two fingers against the wet opening between his pussy lips and push them into his inner passage. The furling immediately starts moaning loudly as you finger him and between the gasps and moans you think you heard him say 'More', so you add another finger. It's a strangely arousing feeling to have three fingers in the tight, warm and very wet pussy of this large furry beast. Stimulating him a bit more and seeing him take three, then four fingers without any problems, you wonder if you could...";
		say "     You can, as it turns out - your whole hand slips into the furling's pussy with a wet slurp, kicking your furry partner's gasps and moans into a whole new gear. Stroking and fondling the inner passage of your former opponent with all of your fingers, it doesn't take long until you drive him over the edge. Trembling and moaning, the large creature orgasms, his femcum running down your arm to create a small puddle on the ground. A strange scraping noise has you look up for a second, but it turns out only to be the furling's claws digging shallow lines into the concrete below as he holds on to it too tightly.";
		say "     Pulling your hand out of his pussy, you wipe it dry against the furling's legfur, then stand up. With the large beast still panting softly and mumbling, 'Nice guy. Make me feel good.' You leave him there and walk away.";

to say FurlingDesc:
	setmongender 8;
	say "     A pretty large humanoid creature crosses your path and stops to look at you with bright orange eyes. They belong to an otherwise human-looking face with unlined features like a young man's and surrounded by a thick mane of reddish hair. Although covered by thick orange-red fur, his powerful build and strong muscles are easily recognizable. Add long claws on hands and feet to that and you know you have to watch yourself with one of these critters.";
	say "     He wears nothing but a loincloth made from a shredded football shirt - who knows if that's from before the person's transformation... or the remains of his last meal.";
	LineBreak;
	say "     While you're still studying his appearance, the furry beast suddenly roars, 'You're mine!' Just before he pounces on you.";

Section 2 - Monster Insertion

Table of Random Critters (continued)
name	enemy title	enemy name	enemy type	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	DayCycle	altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now name entry is "Furling";
	now enemy title entry is "";
	now enemy name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]The furling slashes you with its long claws.[or]With a back-handed blow, the furling throws you to the ground.[or]The furling gives you a tight bear-hug, almost crushing you.[or]Grabbing your arm, the furling sinks its teeth into it.[at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "[Furling loses]";
	now victory entry is "[Furling wins]";
	now desc entry is "[FurlingDesc]";            [ Description of the creature when you encounter it. ]
	now face entry is "that of a young man, though with brightly orange slitted eyes and an impressive set of sharp predator's teeth and long fangs. A thick mane of orange-red fur covers your head down to your shoulders, with two pointy fox-like ears poking out of it at the top";
	now body entry is "large, about ten feet tall and with a wide, powerful build. You have long arms bulging with muscles, ending in large clawed hands. A loose loincloth that looks like it once was a football shirt covers your crotch";
	now skin entry is "[one of]densely furred[or]orange-red furred[at random]";
	now tail entry is "You have a firm, muscular butt.";  [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "uncut, human";
	now face change entry is "your facial muscles seem to ripple under the skin, rearranging themselves into the features of a young man. Your hair grows out till it covers your head in a thick mane of orange-red fur. Carefully exploring your mouth with your tongue, you realize you now have quite sharp teeth - including long fangs"; [ format as "Your face feels funny as (your text)." ]
	now body change entry is "it is reshaped into a tall form with a wide, powerful build. Your arms grow longer and more muscular, with your hands and feet acquiring sharp claws. An improvised loincloth coalesces out of a cloud of nanites around your hips";
	now skin change entry is "it sprouts thick orange-red fur all over";
	now ass change entry is "it tightens up into a firm, muscled shape";
	now cock change entry is "it becomes human-like, uncut and well-proportioned";
	now str entry is 30;
	now dex entry is 12;
	now sta entry is 20;
	now per entry is 14;
	now int entry is 8;
	now cha entry is 12;
	now sex entry is "Female";          [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 90;
	now lev entry is 11;                [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 15;               [ Monster's average damage when attacking. ]
	now area entry is "Campus";         [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 0;               [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 0;         [ Length infection will make cock grow to if cocks. ]
	now cock width entry is 0;          [ Cock width, more commonly used for ball size. ]
	now breasts entry is 2;             [ Number of nipples the infection will give a player. ]
	now breast size entry is 0;         [ Size of breasts the infection will try to attain. ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;               [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 12;        [ Depth of female sex the infection will attempt to give a player. ]
	now cunt width entry is 8;          [ Width of female sex the infection will try to give a player. ]
	now libido entry is 80;
	now loot entry is "red fur";        [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 30;         [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 4;               [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]large[or]muscular[at random]";
	now type entry is "humanoid";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now DayCycle entry is 0;      [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Section 3 - Endings

when play ends:
	if bodyname of player is "Furling":
		if humanity of player < 10:
			if player is female:
				if "Sterile" is not listed in feats of player:
					say "     As you succumb to the infection, the deep cravings inside you take the upper hand. Roaming the campus, you search out suitable males and overpower them, making sure your needy pussy is filled often. Some time later, when a soldier comes along to scout the area, you take a shine to him and carry him off to your lair. Keeping him as yours alone, you make the man fuck you several times a day and soon your belly starts to bulge with his offspring...";
				else:
					say "     As you succumb to the infection, the deep cravings inside you take the upper hand. Roaming the campus, you search out suitable males and overpower them, making sure your needy pussy is filled often. Some time later, when a soldier comes along to scout the area, you take a shine to him and carry him off to your lair. Keeping him as yours alone, you make the man fuck you several times a day. Sadly, being sterile, your urge for a bellyful of little furlings is never fulfilled.";
			else if player is male:
				if player is mpreg_ok and "Sterile" is not listed in feats of player:
					say "     As you succumb to the infection, the deep cravings inside you take the upper hand. Roaming the campus, you search out suitable males and overpower them. At that point, your animal mind usually has real problems fitting together your lack of female genitalia with the drive to be bred - you often grind your crotch and erect cock against your current mate's maleness before remembering that there is another way to your womb and sinking your asshole down on their cocks. Some time later, when a soldier comes along to scout the area, you take a shine to him and carry him off to your lair. Keeping him as yours alone, you make the man fuck you several times a day and soon your belly starts to bulge with his offspring...";
				else:
					say "     As you succumb to the infection, deep cravings to mate inside you take the upper hand. Roaming the campus, you search out suitable males and overpower them. At that point, your animal mind usually has real problems fitting together your lack of female genitalia with the drive to be bred - mostly, you grind your crotch and erect cock against your current mate's maleness, making quite a mess of your fur when the two of you finally cum.";
			else:
				say "     As you succumb to the infection, the deep cravings inside you take the upper hand. Roaming the campus, you search out suitable males and overpower them, then rub your genderless crotch against their cocks, futilely trying to satisfy yourself. Over time, unfulfilled sexual needs cost you the last vestiges of sanity, making you a rampaging beast.";
		else:
			say "     When rescue comes, the soldiers are pretty cautious about coming close to the large, powerful and clawed creature you have become. They're rather surprised as you start talking to them in calm tones, and even then it takes quite a bit of work to calm their worries of you biting, clawing, squishing or rending people - looks like they had some bad experiences with some larger infectees. When you're finally brought to a holding facility outside the city, several doctors poke and prod you, mumbling about your large muscle density and healing capacity. After being given a shot to make you non-infectious, you're released.";
			say "     Returning to human society isn't easy as a large furred beast, with everything feeling rather small and fragile around you. Regular-sized people getting all frightened and scream-y when you accidentally rip a door from its hinges or something like that doesn't make it any easier. Finally you have enough and just leave everything behind, moving out into a large forest where you build a log cabin in the right size for yourself. Life is better out in nature, away from frightened little people - an idea some other changed seem to have had too. Over the following months, you notice some more people moving out into the wilds and even construct a kind of village several miles away. Maybe you'll visit them one of these days...";

Section 4 - Red Fur drop object

Table of Game Objects (continued)
name	desc	weight	object
"red fur"	"A tuft of orange-red fur. It's nicely soft."	1	red fur

red fur is a grab object.
the usedesc of red fur is "[redfuruse]".
it is part of the player.
It is temporary.

to say redfuruse:
	say "Holding the tuft of fur between your fingers, you stroke over it, delighted in its softness. Strangely, the hair disintegrates after a while, becoming a cloud of fine particles that are absorbed into your skin.";
	infect "Furling";

instead of sniffing red fur:
	say "The fur has a pleasing, not too strong, animal-like scent.";

Furling ends here.
