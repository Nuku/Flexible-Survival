Version 1 of Francis by AGentlemanCalledB begins here.
[Version 1 - Basic event, npc and location, partially prepared for expanded Rex content.]
"Adds a Male mutt NPC named François to the Flexible Survival game"

Section 1 - Event

Gourmet Treats is a situation.
The sarea of Gourmet Treats is "High";

when play begins:
	add Gourmet Treats to badspots of guy;       [random encounter may involve male opponents]
	add Gourmet Treats to badspots of girl;     [random encounter may involve female opponents]
	add Gourmet Treats to badspots of furry;     [random encounter will involve canine opponents]

Instead of Resolving a Gourmet Treats:
	if hp of Karen is 1:
		say "   While traveling through the high rise district you come across what you can only assume is the strange bakery Karen mentioned. While the boarded up windows prevent you from seeing inside, the large sign above the door makes it clear that this is the place. The weathered sign reads Bone-Appetit, and features a rather plump cartoon canine in a chef's uniform. Eager too follow through with your plan too free yourself from Rex, you reach for the door handle. Slowly pulling the door open a crack, you peer inside the building, noticing some movement and groaning near the back counter you pause for a moment before steeling yourself and swinging the door open.";
	otherwise:
		say "   While traveling through the high rise district you come across a rather unusual looking building.While the boarded up windows prevent you from seeing inside, the large sign above the door proclaims the place to be some sort of pet bakery. The weathered sign reads Bone-Appetit, and features a rather plump cartoon canine in a chef's uniform. With the exception of the boarded up windows the exterior of the building appears relatively undamaged, thinking there may still be some useful supplies within you decide to step inside.";
	attempttowait;
	let T be a random number between 1 and 4;
	say "   A bell above the door jingles loudly as you step inside, [if hp of Karen is 1]and the creatures in the back quickly turn their attention too the unexpected intruder[otherwise]and you curse yourself as you spot a group of creatures near the back of the store turning to investigate the source of the noise[end if]. Surveying the scene you quickly realize you've walked in on [if T is 1] a small pack of huskies[otherwise if T is 2] a group of german shepherds[otherwise if T is 3] a small pack of Chocolate Labs[otherwise if T is 4] a pair of Retrievers[end if] who have captured another creature, and are having some fun with their prize in the secluded bakery. As the canines move towards you there is a weak cry for help from their prisoner, a survivor? Realizing there is more at stake here then you originally expected, you drop your pack and prepare yourself for the approaching [if T is 1]huskies[otherwise if T is 2]german shepherds[otherwise if T is 3]Labs[otherwise if T is 4]Retrievers[end if].";
	attempttowait;
	if T is 1:
		say "[BakeryHusky]";
	if T is 2:
		say "[BakeryGShep]";
	if T is 3:
		say "[BakeryChocLab]";
	if T is 4:
		say "[BakeryRetriever]";
	if fightoutcome >= 20 and fightoutcome <= 29:
		say "   Having Dealt with the intruder, the canines return to the other survivor, as you lay beaten on the floor you hear the poor fellow begin moaning. The longer you listen the more his cries begin to shift to submission. The last thing you hear before slipping from consciousness is the his cry of ecstasy mingled with his captor's howl of pleasure.";
		attempttowait;
		say "   You eventually awaken some time later, and are surprised to find yourself on a makeshift bed made from several smaller pieces of furniture and blankets. As you rise to a sitting position you glance around nervously, looking for the [if T is 1]huskies[otherwise if T is 2]german shepherds[otherwise if T is 3]Chocolate Labs[otherwise if T is 4]Retrievers[end if] who bested you, expecting them to try and keep you captive as they did the other survivor, best surprisingly there is no sign of them.";
		say "   'Do not worry mon ami[if cunts of player > 0]e[end if], they left after having their fun, you're safe here now.' says a voice with a thick French accent. You turn towards the voice, seeing a figure step out of a nearby doorway, he appears to have the features of several species and breeds of domestic animals, a short stocky canine body and face, covered with a thick coat of fur in many different colours and patterns, there even appear to be feathers poking out from his pelt in several places. Finally, feline ears and tail complete the rather unusual appearance of the hybrid before you.";
		say "   'I appreciate your attempts to save me from those canine ruffians, and I'm sorry it ended the way it did.' he continues, 'I am François, master chef, at your service.'";
[		attempttowait;
		say "   'Poor Karen, she was such a nice girl' François says after listening to your tale, 'but at least it's not too late to help you escape the same fate. I haven't a lot of supplies left, but I will gladly do what I can too help.' Without another word François gets too work, you can't help but grin as you remember the sign outside when he dons his apron and cap. Soon the entire bakery is filled with the warm scents of his work, and you find your mouth watering, despite knowing they are snacks intended for dogs.";
		say "   Eventually François finishes his work, and hands you a small paper bag filled with fresh treats. [if bodyname of player is listed in the infections of Caninelist or facename of player is listed in infections of Caninelist or hunger of player > 60] The enticing scent wafting from the bag in your hands proves too be too much, and you eagerly fish a treat out, François simple grins at you as he watches you enjoy a sample of his work. Still licking the last few crumbs of your snack from your lips,[end if] You stow the bag away in your pack and give François your regards before stepping back out into the city.";]
		now Gourmet Treats is resolved;
		now Bone-Appetit is known;
		move player to Bone-Appetit;
		now battleground is "void";
	otherwise if fightoutcome >= 10 and fightoutcome <= 19:
		say "   Having finally dealt with the [if T is 1]huskies[otherwise if T is 2]german shepherds[otherwise if T is 3]Chocolate Labs[otherwise if T is 4]Retrievers[end if] you chase the last stragglers out the door and block it up behind them, propping up a table and a few chairs against it to keep any others out.   Satisfied with the security of the building you approach the canines' captive, looking him over before kneeling down to help him to a sitting position. He appears to have the features of several species and breeds of domestic animals, a short stocky canine body and face, covered with a thick coat of fur in many different colours and patterns, there even appear to be feathers poking out from his pelt in several places. Finally, feline ears and tail complete the rather unusual appearance of the hybrid before you.";
		say "   'Thank you, mon ami[if cunts of player > 0]e[end if]' the man says with a strong French accent, 'I shudder to imagine where I'd be had you not come along. I am François, master chef, at your service.'";[ Realizing that he must be the owner of this bakery you eagerly explain your situation to François, recounting the entire story that lead you to your position with Rex.
		attempttowait;
		say "   'Poor Karen, she was such a nice girl' François says after listening to your tale, 'but at least it's not too late to help you escape the same fate. I haven't a lot of supplies left, but I will gladly do what I can too help.' Without another word François gets too work, you can't help but grin as you remember the sign outside when he dons his apron and cap. Soon the entire bakery is filled with the warm scents of his work, and you find your mouth watering, despite knowing they are snacks intended for dogs.";
		say "   Eventually François finishes his work, and hands you a small paper bag filled with fresh treats. [if bodyname of player is listed in the infections of Caninelist or facename of player is listed in infections of Caninelist or hunger of player > 60] The enticing scent wafting from the bag in your hands proves too be too much, and you eagerly fish a treat out, François simple grins at you as he watches you enjoy a sample of his work. Still licking the last few crumbs of your snack from your lips,[end if] You stow the bag away in your pack and give François your regards before stepping back out into the city.";]
		now Gourmet Treats is resolved;
		now Bone-Appetit is known;
		move player to Bone-Appetit;
		now battleground is "void";
	otherwise:
		say "   Unwilling or unable too continue fighting you grab your bag and run for the bakery door, flipping a nearby table behind you to block your pursuers' path on the way out. You continue running for some time, getting plenty of distance between you and the bakery before stopping too catch your breath. Taking a moment to reflect on the situation, you feel a wave of guilt for leaving the captive behind to his fate with the canines.";
		now Gourmet Treats is resolved;
[	RETURNING AFTER FLEEING
		say "   While traveling through the high rise district you end up back at the pet bakery you fled from previously. You reach for the door handle. Slowly pushing the door open a crack, you peer inside the building again. Not seeing anyone inside you push the door the rest of the way open. Stepping inside the first thing you notice is that the air is thick with the scent of canine sex, but there are no other signs of the bakery's previous occupants, neither mutant or their survivor prisoner.";
		say "   You begin the slow process of sifting through the wreckage of the bakery in search of the treats you originally sought, searching various bins and displays you eventually manage to scrounge up a small pile of cookies, while mostly broken and certainly not fresh you hope they'll still be sufficient to provide the distraction you need.";
		now Gourmet Treats is resolved;]

to say BakeryHusky:
	challenge "Female Husky";
	if fightoutcome >= 10 and fightoutcome <= 19:
		say "   After dealing with the first husky you turn your attention too the other two, the large alpha gives you a smug smirk as he swats the ass of the female beside him, sending her running towards you, barking eagerly.";
		challenge "Female Husky";
		if fightoutcome >= 10 and fightoutcome <= 19:
			say "   With the second bitch dealt with, you scan the room for the remaining canine, realizing too late that he has circled around you while you were dealing with his female companion. The large male leaps towards you as you turn";
			let bonus be (( perception of player + dexterity of player minus 20 ) divided by 2 );
			if "Wary Watcher" is listed in feats of player, increase bonus by 3;
			if "Bad Luck" is listed in feats of player, decrease bonus by 2;
			if bonus > 12, now bonus is 12;
			let dice be a random number from 1 to 20;
			say "You roll 1d20([dice])+[bonus]: [dice + bonus]: ";
			attempttowait;
			if bonus + dice is greater than 15:
				say "     You narrowly manage too avoid the surprise attack, rolling out of the way as the husky tumbles into a nearby table and chairs. The large canine slowly raises too his feet, shaking his head clear before turning to face you.";
			otherwise:
				say "      The husky's attack takes you by surprise, bowling you over as he sends you both tumbling into a nearby table and chairs, the large male pins you to the ground for a moment, barking in your face as he grinds his stiff cock against your body, fortunately you manage to grasp a nearby piece of the crushed table. After smashing it against the back of his head You push the stunned canine off you, scrambling too your feet as he shakes his head clear before turning too face you.(15 dmg taken)[line break]";
				decrease hp of player by 15;
			challenge "Alpha Husky";

to say BakeryGShep:
	challenge "German Shepherd";
	if fightoutcome >= 10 and fightoutcome <= 19:
		repeat with y running from 1 to number of filled rows in table of random critters:
			choose row y in table of random critters;
			if name entry is "German Shepherd":
				now monster is y;
				break;
		say "   With the first German Shepherd dealt with, you survey the room looking for you next opponent, but realize too late that one of the hounds is missing. Suddenly you are grabbed from behind, your arms twisted behind your back by the sneaky canine. You struggle as best you can against the shepherd, trying to break free from his grasp.";
		attempttowait;
		let playernum be a random number between 1 and strength of player;
		let x be a random number between 1 and str entry;
		if playernum < x:
			say "   Unable to break out of his grip, your canine captor begins licking at the back of your neck and nibbling at your ears as the other two shepherds move towards you. While the two canines begins stripping you of your gear you continue struggling, desperate too break free, but the effort of your continued struggles begins too weigh on your stamina.";
			attempttowait;
			let playernum be a random number between 1 and (strength of player + stamina of player);
			let x be a random number between 1 and (str entry + sta entry);
			if playernum < x:
				say "   Too tired to continue fighting against your captor, the three canines quickly begin having some fun with you. One canine begins [if cocks of player > 0 and cunts of player > 0]sucking and licking at your rising cock and moistening pussy[otherwise if cocks of player > 0]sucking and licking at your rising cock[otherwise if cunts of player > 0]sucking and licking at your moistening cunt[otherwise]licking at you groin[end if], while the second brings his muzzle to your lips, pulling you into a deep kiss. Meanwhile the shepherd binding your arms continues playing at your neck and ears while grinding his stiffening rod into your back. This sexual assault all over your body quickly begins too build your arousal, you find yourself struggling to continue resisting your captor, when the teasing finally stops the shepherd behind you releases your arms and pushes you down to all fours, as he grips your hips with his pawlike hands and begins lining his knotted cock up with your [if cunts of player > 0]dripping pussy[otherwise]ass[end if] you realize this is your last chance too escape.";
				attempttowait;
				let playernum be a random number between 1 and (100 - libido of player);
				let x be a random number between 1 and 100;
				if playernum < x:
					say "   Unfortunately your lust addled mind is unable too hold onto this fleeting though of escape, all you can do is whimper weakly as the canine above you begins too sink his meat into you. You feel him make one or two tentative thrusts into your [if cunts of player > 0]sex[otherwise]arse[end if], just to make sure he's inside you before you hear him growl and begin humping in earnest, eagerly grinding his hips into you, the rigid dog cock driving easily into your [if cunts of player > 0]cunt[otherwise]rear[end if]. He doesn't waste any time, building up his pace to a energetic fucking, panting heavily in your ear as you feel a bulge at the base of his length start to swell and grow. With a soft growl he drives in one last time, howling out his pleasure as his knot rapidly swells with his climax, tying you beneath the possessive male. The sated canine slumps atop you not even bothering to support his own weight as pants sprawled on your back, shifting about while waiting impatiently for his knot to go down. As soon as he is able he pulls himself free, knot popping wetly from your [if cunts of player > 0]cunt[otherwise]rear[end if] and causing you to yelp in pain as you collapse on the ground.[impregchance]";
					infect "German Shepherd";
					attempttowait;
					now fightoutcome is 21;
		if fightoutcome >= 10 and fightoutcome <= 19:
			say "   Gathering all your strength, you manage too break out of the shepherd's grip, pushing him aside you grab a nearby stool and smash it across his face, knocking him out cold. Without missing a beat you turn too face the remaining two canines and ready yourself for your next opponent.";
			challenge "German Shepherd";
			if fightoutcome >= 10 and fightoutcome <= 19:
				say "   With another shepherd beaten you bring your attention too the final hound.";
				challenge "German Shepherd";

to say BakeryChocLab:
	challenge "Chocolate Lab";
	if fightoutcome >= 10 and fightoutcome <= 19:
		say "   With the first confectionery canine beaten, you turn your attention to the next chocolate hound.";
		challenge "Chocolate Lab";
		if fightoutcome >= 10 and fightoutcome <= 19:
			say "   Having dealt with your second opponent, you quickly scan the room for the third and final lab.";
			challenge "Chocolate Lab";

	to say BakeryRetriever:
	   challenge "Retriever";
	   if fightoutcome >= 10 and fightoutcome <= 19:
		  say "   With the first of the two golden furred canines defeated, your attention is quickly drawn to the second as she barks happily before rushing towards you.";
		  challenge "Retriever";

Section 2 - Location

Bone-Appetit is a room. It is fasttravel. It is private.
The description of Bone-Appetit is "[BoneAppetitdesc]";

instead of sniffing Bone-Appetit:
	say "     Despite the lack of any product on display the small bakery still has a strangely warm meaty aroma [if facename of player is listed in infections of Caninelist]that quickly has you salivating hungrily[end if], which you can only assume is the result of the many hand made pet treats that used to line the shelves.";

to say BoneAppetitdesc:
	if hp of  François is 0:
		say "     Now that the coast is clear You have a chance to look over the damaged bakery François is calling home, clearly the place has seen better days.It looks like the bakery may have been an early target for infected, with a lot of torn and stained clothing scraps strewn throughout the debris. Most of the furniture is flipped or damage, the display cases and shelves are barren and many are smeared with dried fluids, apparently the creatures where here to sate more then just their mundane appetites.";
		now hp of François is 1;
	otherwise if hp of François > 0:
		say "     The small bakery looks has been cleaned up considerably since the first time you were here. Though the windows are still boarded up, François has cleaned most of the clutter and debris out of the front room and arranged the remaining tables and chairs neatly around the space. The counters and displays are all bare, but clean and he has even [if daytimer is day]opened a skylight[otherwise]gathered some candles[end if] to light the space.";

Section 3 - François

François is a man. François is in Bone-Appetit.
The description of François is "[Françoisdesc]";
The conversation of François is { "Numnum!" }.
lastfuck of François is normally 555.
understand "Francois" as François.

instead of sniffing the François:
	say "       François has a light male musk,  difficult to catch over the smells pervading the bakery.";

to say Françoisdesc:
	say "     François, the unusual hybrid before you, has an appearance that can only be described as a mutt. His short stocky canine body and face are covered with a thick mottled coat of fur made up of several different colours and patterns, there even appear to be small feathers poking out of his pelt in several places. Finally, a rather feline set of ears and tail complete the appearance. He wears a surprisingly clean white apron over his torso, which does a reasonable job of protecting his decency, while still allowing his long tail to flit about unhindered.";

Instead of conversing the François:
	if a random chance of 1 in 3 succeeds:
		say "      [if daytimer is day]Boujour[otherwise]Bonsoir[end if] [one of]mon ami[if cunts of player > 0]e[end if][or]my friend[at random], [one of]Comment ça va?[or]Comment vas-tu?[or]How are you?[at random]";
	otherwise:
		say "     [one of]Perhaps I should try to get back into business, I can't help but think my work would be even more popular now[or]I have a much greater appreciation for my work now[or]Perhaps I should go out there and try to find  myself a Lady[or]Thanks again for the help, mon ami[if cunts of player > 0]e[end if][at random]."

instead of fucking the François:
	say "     I appreciate the offer mon ami[if cunts of player > 0]e[end if], but for now, I must decline.";
	say "     This character is currently incomplete, proper sex scenes in a future update!";

Francis ends here.