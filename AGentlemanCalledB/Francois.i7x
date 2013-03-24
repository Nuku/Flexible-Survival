Version 1 of Francois by AGentlemanCalledB begins here.
[Version 1.4 - M/M oral 2 (player giving)]
"Adds a Male mutt NPC named François to the Flexible Survival game"

Section 1 - Event

Gourmet Treats is a situation. The level of Gourmet Treats is 8.
The sarea of Gourmet Treats is "High";

when play begins:
	add Gourmet Treats to badspots of guy;       [random encounter may involve male opponents]
	add Gourmet Treats to badspots of girl;     [random encounter may involve female opponents]
	add Gourmet Treats to badspots of furry;     [random encounter will involve canine opponents]

Instead of Resolving a Gourmet Treats:
	if hp of Karen is 1:
		say "     While traveling through the high rise district you come across what you can only assume is the strange bakery Karen mentioned. While the boarded up windows prevent you from seeing inside, the large sign above the door makes it clear that this is the place. The weathered sign reads Bone-Appetit, and features a rather plump cartoon canine in a chef's uniform. Eager to follow through with your plan to free yourself from Rex, you reach for the door handle. Slowly pulling the door open a crack, you peer inside the building, noticing some movement and groaning near the back counter you pause for a moment before steeling yourself and swinging the door open.";
	otherwise:
		say "     While traveling through the high rise district you come across a rather unusual looking building. While the boarded up windows prevent you from seeing inside, the large sign above the door proclaims the place to be some sort of pet bakery. The weathered sign reads Bone-Appetit, and features a rather plump cartoon canine in a chef's uniform. With the exception of the boarded up windows the exterior of the building appears relatively undamaged, thinking there may still be some useful supplies within you decide to step inside.";
	attempttowait;
	let T be a random number between 1 and 4;
	say "     A bell above the door jingles loudly as you step inside, [if hp of Karen is 1]and the creatures in the back quickly turn their attention to the unexpected intruder[otherwise]and you curse yourself as you spot a group of creatures near the back of the store turning to investigate the source of the noise[end if]. Surveying the scene you quickly realize you've walked in on [if T is 1] a small pack of huskies[otherwise if T is 2] a group of german shepherds[otherwise if T is 3] a small pack of Chocolate Labs[otherwise if T is 4] a pair of Retrievers[end if] who have captured another creature, and are having some fun with their prize in the secluded bakery. As the canines move towards you there is a weak cry for help from their prisoner, a survivor? Realizing there is more at stake here then you originally expected, you drop your pack and prepare yourself for the approaching [if T is 1]huskies[otherwise if T is 2]german shepherds[otherwise if T is 3]Labs[otherwise if T is 4]Retrievers[end if].";
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
		say "     Having Dealt with the intruder, the canines return to the other survivor, as you lay beaten on the floor you hear the poor fellow begin moaning. The longer you listen the more his cries begin to shift to submission. The last thing you hear before slipping from consciousness is the his cry of ecstasy mingled with his captor's howl of pleasure.";
		attempttowait;
		say "     You eventually awaken some time later, and are surprised to find yourself on a makeshift bed made from several smaller pieces of furniture and blankets. As you rise to a sitting position you glance around nervously, looking for the [if T is 1]huskies[otherwise if T is 2]german shepherds[otherwise if T is 3]Chocolate Labs[otherwise if T is 4]Retrievers[end if] who bested you, expecting them to try and keep you captive as they did the other survivor, best surprisingly there is no sign of them.";
		say "     'Do not worry, mon ami[if cunts of player > 0 and cocks of player is 0]e[end if]. They left after having their fun; you're safe here now,' says a voice with a thick French accent. You turn towards the voice, seeing a figure step out of a nearby doorway, he appears to have the features of several species and breeds of domestic animals, a short stocky canine body and face, covered with a thick coat of fur in many different colours and patterns, there even appear to be feathers poking out from his pelt in several places. Finally, feline ears and tail complete the rather unusual appearance of the hybrid before you.";
		say "     'I appreciate your attempts to save me from those canine ruffians, and I'm sorry it ended the way it did.' he continues, 'I am François, master chef, at your service.'";
		now Gourmet Treats is resolved;
		now Bone-Appetit is known;
		move player to Bone-Appetit;
		now battleground is "void";
	otherwise if fightoutcome >= 10 and fightoutcome <= 19:
		say "     Having finally dealt with the [if T is 1]huskies[otherwise if T is 2]german shepherds[otherwise if T is 3]Chocolate Labs[otherwise if T is 4]Retrievers[end if] you chase the last stragglers out the door and block it up behind them, propping up a table and a few chairs against it to keep any others out.   Satisfied with the security of the building you approach the canines['] captive, looking him over before kneeling down to help him to a sitting position. He appears to have the features of several species and breeds of domestic animals, a short stocky canine body and face, covered with a thick coat of fur in many different colours and patterns, there even appear to be feathers poking out from his pelt in several places. Finally, feline ears and tail complete the rather unusual appearance of the hybrid before you.";
		say "     'Thank you, mon ami[if cunts of player > 0 and cocks of player is 0]e[end if]' the man says with a strong French accent, 'I shudder to imagine where I'd be had you not come along. I am François, master chef, at your service.'";
		now Gourmet Treats is resolved;
		now Bone-Appetit is known;
		move player to Bone-Appetit;
		now battleground is "void";
	otherwise:
		say "     Unwilling or unable to continue fighting you grab your bag and run for the bakery door, flipping a nearby table behind you to block your pursuers' path on the way out. You continue running for some time, getting plenty of distance between you and the bakery before stopping to catch your breath. Taking a moment to reflect on the situation, you feel a wave of guilt for leaving the captive behind to his fate with the canines.";
		now Gourmet Treats is resolved;
[	RETURNING AFTER FLEEING
		say "     While traveling through the high rise district you end up back at the pet bakery you fled from previously. You reach for the door handle. Slowly pushing the door open a crack, you peer inside the building again. Not seeing anyone inside you push the door the rest of the way open. Stepping inside the first thing you notice is that the air is thick with the scent of canine sex, but there are no other signs of the bakery's previous occupants, neither mutant or their survivor prisoner.";
		say "     You begin the slow process of sifting through the wreckage of the bakery in search of the treats you originally sought, searching various bins and displays you eventually manage to scrounge up a small pile of cookies, while mostly broken and certainly not fresh you hope they'll still be sufficient to provide the distraction you need.";
		now Gourmet Treats is resolved;]

to say BakeryHusky:
	challenge "Female Husky";
	if fightoutcome >= 10 and fightoutcome <= 19:
		say "     After dealing with the first husky you turn your attention to the other two, the large alpha gives you a smug smirk as he swats the ass of the female beside him, sending her running towards you, barking eagerly.";
		challenge "Female Husky";
		if fightoutcome >= 10 and fightoutcome <= 19:
			say "     With the second bitch dealt with, you scan the room for the remaining canine, realizing too late that he has circled around you while you were dealing with his female companion. The large male leaps towards you as you turn";
			let bonus be (( perception of player + dexterity of player minus 20 ) divided by 2 );
			if "Wary Watcher" is listed in feats of player, increase bonus by 3;
			if "Bad Luck" is listed in feats of player, decrease bonus by 2;
			if bonus > 12, now bonus is 12;
			let dice be a random number from 1 to 20;
			say "You roll 1d20([dice])+[bonus]: [dice + bonus]: ";
			attempttowait;
			if bonus + dice is greater than 15:
				say "     You narrowly manage to avoid the surprise attack, rolling out of the way as the husky tumbles into a nearby table and chairs. The large canine slowly raises to his feet, shaking his head clear before turning to face you.";
			otherwise:
				say "      The husky's attack takes you by surprise, bowling you over as he sends you both tumbling into a nearby table and chairs, the large male pins you to the ground for a moment, barking in your face as he grinds his stiff cock against your body, fortunately you manage to grasp a nearby piece of the crushed table. After smashing it against the back of his head You push the stunned canine off you, scrambling to your feet as he shakes his head clear before turning to face you.(15 dmg taken)[line break]";
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
		say "     With the first German Shepherd dealt with, you survey the room looking for you next opponent, but realize to late that one of the hounds is missing. Suddenly you are grabbed from behind, your arms twisted behind your back by the sneaky canine. You struggle as best you can against the shepherd, trying to break free from his grasp";
		let escape be 0;
		let playernum be a random number between 1 and strength of player;
		let shepnum be a random number between 1 and str entry;
		if playernum > shepnum: 
			increase escape by 1;
			say " and feels his grip weakening as a result.";
		otherwise:
			say ", but the shepherd simply chuckles at your effort, twisting your arm painfully as he tightens his grip.";
		attempttowait;
		say "     Unable to break out of his grip, your canine captor begins licking at the back of your neck and nibbling at your ears as the other two shepherds move towards you. While the two canines begins stripping you of your gear you continue struggling, desperate to break free, but the effort of your continued struggles begins to weigh on your stamina";
		let playernum be a random number between 1 and (strength of player + stamina of player);
		let shepnum be a random number between 1 and (str entry + sta entry);
		if playernum > shepnum:
			say ", fortunitly the same is true of your enemy and you feel his grip slipping[if escape is 1] futher[end if] as a result of your efforts.";
			increase escape by 1;
		otherwise:
			say ", unfortunately the same is not true of your enemy, despite your best efforts you make no headway.";
		attempttowait;
		if escape < 2:
			say "     Too tired to continue fighting against your captor, the three canines quickly begin having some fun with you. One canine begins [if cocks of player > 0 and cunts of player > 0]sucking and licking at your rising cock and moistening pussy[otherwise if cocks of player > 0]sucking and licking at your rising cock[otherwise if cunts of player > 0]sucking and licking at your moistening cunt[otherwise]licking at you groin[end if], while the second brings his muzzle to your lips, pulling you into a deep kiss. Meanwhile the shepherd binding your arms continues playing at your neck and ears while grinding his stiffening rod into your back. This sexual assault all over your body quickly begins to build your arousal, you find yourself struggling to continue resisting your captor, when the teasing finally stops the shepherd behind you releases your arms and pushes you down to all fours, as he grips your hips with his pawlike hands and begins lining his knotted cock up with your [if cunts of player > 0]dripping pussy[otherwise]ass[end if] you realize this is your last chance to escape.";
			let playernum be a random number between 1 and (100 - libido of player);
			let shepnum be a random number between 30 and 100;
			if playernum > shepnum:
				increase escape by 1;
		if escape is 2:
			say "     Gathering all your strength, you manage to break out of the shepherd's grip, pushing him aside you grab a nearby stool and smash it across his face, knocking him out cold. Without missing a beat you turn to face the remaining two canines and ready yourself for your next opponent.";
		otherwise:
			say "     Unfortunately your lust addled mind is unable to hold onto this fleeting though of escape, all you can do is whimper weakly as the canine above you begins to sink his meat into you. You feel him make one or two tentative thrusts into your [if cunts of player > 0]sex[otherwise]arse[end if], just to make sure he's inside you before you hear him growl and begin humping in earnest, eagerly grinding his hips into you, the rigid dog cock driving easily into your [if cunts of player > 0]cunt[otherwise]rear[end if]. He doesn't waste any time, building up his pace to a energetic fucking, panting heavily in your ear as you feel a bulge at the base of his length start to swell and grow. With a soft growl he drives in one last time, howling out his pleasure as his knot rapidly swells with his climax, tying you beneath the possessive male. The sated canine slumps atop you not even bothering to support his own weight as pants sprawled on your back, shifting about while waiting impatiently for his knot to go down. As soon as he is able he pulls himself free, knot popping wetly from your [if cunts of player > 0]cunt[otherwise]rear[end if] and causing you to yelp in pain as you collapse on the ground.[impregchance]";
			infect "German Shepherd";
			attempttowait;
			now fightoutcome is 21;
	if fightoutcome >= 10 and fightoutcome <= 19:
		challenge "German Shepherd";
		if fightoutcome >= 10 and fightoutcome <= 19:
			say "     With another shepherd beaten you bring your attention to the final hound.";
			challenge "German Shepherd";

to say BakeryChocLab:
	challenge "Chocolate Lab";
	if fightoutcome >= 10 and fightoutcome <= 19:
		say "     With the first confectionery canine beaten, you turn your attention to the next chocolate hound.";
		challenge "Chocolate Lab";
		if fightoutcome >= 10 and fightoutcome <= 19:
			say "     Having dealt with your second opponent, you quickly scan the room for the third and final lab.";
			challenge "Chocolate Lab";

	to say BakeryRetriever:
	   challenge "Retriever";
	   if fightoutcome >= 10 and fightoutcome <= 19:
		  say "     With the first of the two golden furred canines defeated, your attention is quickly drawn to the second as she barks happily before rushing towards you.";
		  challenge "Retriever";

Section 2 - Location

Bone-Appetit is a room. It is fasttravel. It is private.
The description of Bone-Appetit is "[BoneAppetitdesc]";

instead of sniffing Bone-Appetit:
	say "     Despite the lack of any product on display the small bakery still has a strangely warm meaty aroma [if facename of player is listed in infections of Caninelist]that quickly has you salivating hungrily[end if], which you can only assume is the result of the many hand made pet treats that used to line the shelves.";

to say BoneAppetitdesc:
	if hp of François is 0:
		say "     Now that the coast is clear You have a chance to look over the damaged bakery François is calling home, clearly the place has seen better days.It looks like the bakery may have been an early target for infected, with a lot of torn and stained clothing scraps strewn throughout the debris. Most of the furniture is flipped or damage, the display cases and shelves are barren and many are smeared with dried fluids, apparently the creatures where here to sate more then just their mundane appetites.";
		now hp of François is 1;
	otherwise if hp of François > 0:
		say "     The small bakery looks has been cleaned up considerably since the first time you were here. Though the windows are still boarded up, François has cleaned most of the clutter and debris out of the front room and arranged the remaining tables and chairs neatly around the space. The counters and displays are all bare, but clean and he has even [if daytimer is day]opened a skylight[otherwise]gathered some candles[end if] to light the space.";

Section 3 - François

François is a man. François is in Bone-Appetit.
The description of François is "[Françoisdesc]";
The conversation of François is { "Numnum!" }.
understand "Francis" as François.
understand "Francois" as François.
Françoistalk1 is a truth state that varies.  Françoistalk1 is normally false.

instead of sniffing the François:
	say "     François has a light male musk,  difficult to catch over the smells pervading the bakery.";

to say Françoisdesc:
	say "     François, the unusual hybrid before you, has an appearance that can only be described as a mutt. His short stocky canine body and face are covered with a thick mottled coat of fur made up of several different colours and patterns, there even appear to be small feathers poking out of his pelt in several places. Finally, a rather feline set of ears and tail complete the appearance. He wears a surprisingly clean white apron over his torso, which does a reasonable job of protecting his decency, while still allowing his long tail to flit about unhindered.";

Instead of conversing the François:
	if hp of Karen is 2:
		say "     Realizing François and his bakery must be the place Karen mentioned, you decide to explain your situation to François, recounting the entire story that lead you to your position with Rex and your plot to escape."; 
		say "     'Mon Dieu, poor Karen' François replies solemnly after hearing your tale, 'But at least it is not to late [if libido of François >= 3]for you, mon petit chou[otherwise]to repay mon héro[end if].";
		say "     Without another word François gets to work, gathering a few supplies before starting in earnest.  Soon the entire bakery is filled with the warm scents of his work, and you find your mouth watering[if bodyname of player is not listed in the infections of Caninelist and facename of player is not listed in infections of Caninelist], despite knowing they are snacks intended for dogs[end if].";
		say "     Eventually François finishes his work, and returns with a small paper bag filled with fresh treats. [if bodyname of player is listed in the infections of Caninelist or facename of player is listed in infections of Caninelist or hunger of player > 60] The enticing scent wafting from the bag in your hands proves to be too much, and you eagerly fish a treat out, François simple grins at you as he watches you enjoy a sample of his work.  Still licking the last few crumbs of your snack from your lips, you[otherwise] You[end if] stow the bag away in your pack and give François your regards before deciding on your next move.";
		now hp of Karen is 3;
		now carried of Dog Treats is 1;
	otherwise if libido of François >= 3 and Françoistalk1 is false and a random chance of 2 in 5 succeeds:
		say "      'I was having such difficulty before you came along.  I don't know if your coming around is scaring them off now, but I was having no end of trouble before.  These hands, they were made for the baking and for the love, not the fighting,' he says, momentarily forgetting he's got paws now.  'Zut alors!  How most of them were rude lovers!  No passion, no care for their lover, just raw lust.";
		say "      'Even from the girls.  I tried to refused them, but would they listen?  Non!  They would get what they wanted in the end, but it was always so hollow.  I am sad for them[if cocks of player > 0].  But I have found a good lover in you, mon délice,' he adds, running his paws over you as he gives you a passionate kiss full of doggy tongue in your mouth[otherwise if cunts of player > 0].  But now I have found you, mon amie,' he says with a smile before giving you a kiss on the cheek[otherwise].  But now I have found you, mon ami,' he says with a smile before giving you a kiss on the cheek[end if].";
		now Françoistalk1 is true;
	otherwise if a random chance of 1 in 3 succeeds:
		say "     [if daytimer is day]Boujour[otherwise]Bonsoir[end if], [one of]mon ami[if cunts of player > 0 and cocks of player is 0]e[end if][or]my friend[at random].  [one of]Comment ça va?[or]Comment allez-vous?[or]How are you?[at random]";
	otherwise:
		say "     [one of]Perhaps I should try to get back into business, I can't help but think my work would be even more popular now[or]I have a much greater appreciation for my work now[or]Perhaps I should go out there and try to find myself a sexy stud[or]Thanks again for the help, mon ami[if cunts of player > 0 and cocks of player is 0]e[end if][at random]."

instead of fucking the François:
	if libido of François is 0, now libido of François is 1;
	if cocks of player is 0 and cunts of player is 0:
		say "     Lacking any gender of your own, you can't quite get up the enthusiasm to play with the friendly French mutt.";
	otherwise if cocks of player is 0:
		say "     'Ah désolé, mon amie.  I have never had much interest in what you English call the fairer sex.  Ah, but if only you were a man...' he sighs wistfully.";
	otherwise if lastfuck of François - turns < 6:
		say "     He licks his muzzle and eyes your crotch, but shakes his head.  'As much as I would relish to opportunity to show you my thanks again, there is so much else that needs to be done.  Perhaps a little later though?' he adds with a smile and the brush of a paw down your side.";
	otherwise if libido of François is 1:
		say "[françoissex1]";
		now lastfuck of François is turns;
	otherwise:
		say "     Looking over at the oddly attractive hybrid, you smile and suggest taking a break to have a little fun together.  He smiles at your offer and moves up against you, running his paws over your [bodydesc of player] body.  He nuzzles at your chest as he helps you out of your clothes and gear[if breast size of player is 0].  He licks across your manly pecs, teasing your nipples with his tongue[end if].  As you run a hand through his fur and feathers, you wonder exactly what you'd like to do with him.";
		if libido of François is 2:
			say "     Shall you request to [link]mount him (Y)[as]y[end link] or shall you ask him to [link]suck you off (N)[as]n[end link] again?";
			if the player consents:
				say "[françoissex2]";
			otherwise:
				say "[françoissex1]";
			now lastfuck of François is turns;
		otherwise:
			say "[françoissexmenu]";
			now lastfuck of François is turns;

to say françoissexmenu:
	now sextablerun is 0;
	now calcnumber is -1;
	blank out the whole of table of fucking options;
	choose a blank row in table of fucking options;
	now title entry is "Mount him";
	now sortorder entry is 1;
	now description entry is "Ask François to bend over for you.";
[	otherwise if libido of François >= 4:
		choose a blank row in table of fucking options;
		now title entry is "Get mounted";
		now sortorder entry is 2;
		now description entry is "Give François a turn riding you.";	]
	choose a blank row in table of fucking options;
	now title entry is "Get a blow job";
	now sortorder entry is 3;
	now description entry is "Ask François to suck you off.";
	choose a blank row in table of fucking options;
	now title entry is "Give a blow job";
	now sortorder entry is 4;
	now description entry is "Offer to suck François off.";
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry][line break]";
			say "Is this what you want?";
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if nam is "Mount him":
					say "[françoissex2]";
				otherwise if nam is "Get mounted":
					say "[françoissex4]";
				otherwise if nam is "Get a blow job":
					say "[françoissex1]";
				otherwise if nam is "Give a blow job":
					say "[françoissex3]";
				now lastfuck of François is turns;
			otherwise:
				say "Invalid Option.  Pick between 1 and [the number of filled rows in the table of fucking options].";
		wait for any key;
		clear the screen and hyperlink list;


to say françoissex1:		[François performs oral]
	if libido of François is 1:
		say "     François smiles at your offer, his ears perking up and his eyes moving right away to your groin.  His tongue slides slowly across his muzzle.  'Ah, mon ami, I would very much enjoy the opportunity to thank you for wanting to rescue me.  Mmm... mon héro,' he moans sensually in his rich accent, speaking very softly and sexily now.  Moving in closer, he runs his paws over your [if scalevalue of player > 2]larger[end if] body and helps you out of your clothes and gear.";
	otherwise:
		say "     Hearing your offer, he runs his tongue across his muzzle and lets his paws slide downwards.  'Mmm... I would certainly enjoy another opportunity to get another taste of your rich, thick cream, mon héro,' he says softly in his sensual accent.  He places a paw on your cock and the other at your ballsac, gently caressing them.";
	say "     Rather than delay any longer, he lowers himself in front of you, licking and sniffing as he goes, taking in your scent.  'Mmm... you have such an [one of]exciting[or]exotic[or]enjoyable[or]intereting[or]alluring[at random] flavour,' he moans as he slathers his canine tongue back and forth over your maleness[if cock length of player > 24].  'And so very big!  C'est magnifique!  I shall enjoy this greatly[otherwise if cock length of player > 12].  'And so big!  I shall enjoy this very much[otherwise].  'I shall enjoy this[end if],' he adds, rubbing your cock with his paws before licking across your glans, lapping up the first dribbles of precum.";
	say "     He takes his good, sweet time licking at your [cock size desc of player] [cock of player] erection, lavishing attention on it as he savours your rich, masculine flavour before finally opening his muzzle [if cock length of player > 24]extra-wide [otherwise if cock length of player > 12]fully [end if]and taking it inside.  He is quite careful with his teeth, only using them very lightly to add extra stimulation while his tongue plays across your pulsing length.  It's clear that the Frenchman's had plenty of practice at this even before his transformation as well as after, given how well he's working his muzzle over your shaft.  You stroke his canine head and rub his feline ears, getting him to smile a little at the corner of his mouth.";
	if libido of François is 1 or a random chance of 1 in 2 succeeds:
		say "     While it's clear he knows how to make it last, he's quite eager to get his tasty treat.  He works his muzzle [if cock length of player > 12]and throat[end if] over your cock while his paws knead at your nuts.  These last he works softly, caressing them with care to get you all the more excited.  With such an eager mutt hard at work on your shaft, you don't hold out very long and are soon sending your [cum load size of player] load down his throat, giving him the thick, musky semen he's been after[if cock width of player > 24].  Your [cum load size of player] load plumps up the small hybrid's belly considerably, leaving him nicely rounded with cum[otherwise if cock width of player > 16].  Your [cum load size of player] load adds some visible inches to his belly as you fill him up[end if].  He licks him muzzle, rolling the cum left in his muzzle around on his tongue so he might enjoy its flavour.  'Mmm... quel délice, mon ami.  Such a rich[if cock width of player > 16], filling[end if] treat.'  He rubs a paw over his belly and gets up slowly.";
	otherwise:
		say "     This time the horny hybrid decides to take his good, sweet time with you, working his muzzle over your throbbing meat with his muzzle [if cock length of player > 12]and throat[end if] with all his considerable skill.  His paws knead at your ballsac, rolling around those cum-filled orbs as he works with care to build you to greater and greater heights.  He knows many delightful tricks to do with his tongue, made all the better by the long, canine one he now has.  By the time he's sucking down hard at your cock and bobbing quickly across your shaft, your balls feel achingly full.  You grab his head and pull his muzzle forward, jamming your full length into the sexy cur and cum with a loud moan.  Unleashing your [cum load size of player] load down his throat, you [if cock width of player > 24]send burst after burst of thick seed into your eager lover until his belly is plump and rounded with it all[otherwise if cock width of player > 16]send shot after shot of thick seed into your eager lover until his belly has gained a few inches from it all[otherwise]send spurt after spurt until those balls of yours finally feel drained[end if].  Spent, you sag down into a chair, smiling down at the mutt as he licks his muzzle with grin, clearly aware of how his fellatio's affected you.  He licks him muzzle, rolling the cum left in his muzzle around on his tongue so he might enjoy its flavour.  'Mmm... very nice, mon ami.  Such a rich[if cock width of player > 16], filling[end if] treat.'  He rubs a paw over his belly and gets up slowly.";
	if libido of François is 1, increase libido of François by 1;


to say françoissex2:		[mounting François]
	if libido of François is 2:
		say "     Upon hearing your request, he presses his body to yours, paws running over your [bodydesc of player] form.  'Oh, I very glad to hear you ask me, mon ami.  Those others who would find me and use me would show no such courtesy.'  As he speaks, he slips his paws down to your groin, taking a hold of your maleness and caressing it.  'It would be my pleasure to have this [if cock length of player < 5]adorable[otherwise if cock length of player < 8]fine[otherwise if cock length of player < 16]impressive[otherwise]mighty[end if] shaft of yours inside me,' he adds while rolling your balls around with his other paw.";
	otherwise:
		say "     His tail flicks up reflexively when you ask to mount him again.  His paws quickly slide down your [bodydesc of player] body to your loins, taking a hold of your maleness.  'Certainement, mon ami.  You were so wonderful the last time, how could I say non?  Give me but a moment to get this [if cock length of player < 5]adorable[otherwise if cock length of player < 8]fine[otherwise if cock length of player < 16]impressive[otherwise]mighty[end if] cock of yours ready,' he says as he strokes your stiffening member and cum-filled balls.";
	say "     Rather than delay any longer, he lowers himself in front of you, licking and sniffing as he goes on his way to the prize.  'Let's get this lovely... delicious... cock of yours ready to go, mon ami,' he moans as he slathers his canine tongue all over it, getting you nice and slick while he enjoys the musky taste of your maleness[if cock length of player > 24].  Given the size of your [cock size desc of player] cock, the mismatched hybrid takes his time, making sure your nice and slick all over before[otherwise if cock length of player > 12].  Given the size of your [cock size desc of player] cock, the mismatched hybrid spends some extra time licking you, making sure your nice and slick all over before[otherwise].  The mismatched hybrid, while he's down there, takes the opportunity to stuff your cock in his muzzle so he can lick and suck at you to get you all nice and slick before[end if] ";
	if libido of François is 2 or a random chance of 3 in 5 succeeds:
		if libido of François is 2 or a random chance of 1 in 3 succeeds:
			say "moving into position by leaning against the counter and raising his tail.  His furry bottom on display for you, he grins and wiggles his hips.  Needing no more invitation, you move in behind the horny guy, pressing your slick shaft against his pucker.";
		otherwise if a random chance of 1 in 2 succeeds:
			say "getting up and leaning over with his paws gripping the back of one of the chairs.  He grins back at you as sways his rear in a sensual display.  Not that you need the added enticing, but it certainly gets you atop him all the faster, guiding your slick shaft into position under his feline tail.";
		otherwise:
			say "heading over to one of the shorter tables and laying down overtop of it.  He grins back at you and swishes his tail while spreading his legs, offering himself up to you.  Taking your achingly hard cock in hand, you move into position and rub your slick, dribbling glans across his tailhole.";
		say "     François moans something sensual, and probably quite dirty from the sounds of it, in French, gripping his support and rubbing his rear back against you.  You take your time easing into him, finding his tailhole spreading open with [if cock length of player > 24]a little[otherwise if cock length of player > 12]a bit[otherwise]no real effort[end if].  Whether its from the various creatures who've been having their way with him, a property of his mixture of infections or just practice from before the outbreak doesn't really matter much to you right now, your [cock size desc of player] [cock of player] shaft just excited to have a hot, tight hole to fill after all that talented tonguework.  Not that his rear is lacking in any expertise, the plump guy rocking his hips and squeezing down on you as you fuck him.";
		say "     As you pump into the cute hybrid, you run your hands over his unique body, feeling his altered form and how it all seems to somehow come together into an adorable whole.  You lean overtop of the stocky guy and nuzzle at his head, giving his ears a nibble and getting something akin to a purr in return.  Reaching around, you take his cock in hand[if libido of François is 2] for the first time and start stroking him off while you pound into him.  Having kept it hidden under his apron, he's fairly well hung, a good 8 inches.  It has a growing knot at its base and tapers to a feline shape at the top.  You can feel a mix of kitteny soft fur and downy feathers covering his ballsac[otherwise] and start stroking his hybrid canine-feline cock and playing with his softly furred and feathered ballsac[end if].";
		say "     'Ah oui!  Comme-çà,' he moans as you rub your fingers along his cock.  Taking that as a good sign, you keep stroking him in that manner and pound into him all the faster.  'Fourrez-moi!  Plus dur!  Au, que c'est bon!'  Lost in the excitement, he goes on in French, but clearly wants more and you're more than happy to give it to your gay lover, driving into his ass again and again until you groan loudly and cum hard.  Shot after shot of your [cum load size of player] load pumps into him, his own seed splattering onto the floor moments later[if cock width of player > 24].  As you send more and more semen into the small hybrid's belly, it grows rounder and fuller until he's nice and plump with your cum[otherwise if cock width of player > 16].  As you send more and more semen into the small hybrid's belly, it gradually gains a couple more inches from your cum stuffing him[end if].  Only once you're done[if cockname of player is listed in infections of Knotlist] and your knot has gone down[end if] do you pull out of his creamy ass[if cock width of player > 24].  A sticky mess of cum comes flowing out[otherwise if cock width of player > 16].  Quite a bit of cum comes flowing out[otherwise].  Small amount of cum leaks out[end if] of his creamy hole before he reaches back to wipe it up with his paw and lick it from his fingers.";
		say "     'That was exquisite, mon ami.  We shall definitely have to do that again... and again... and again...' he says sensually in his beautiful accent while running his paw over your body.  He adjusts his groin and straightens his rumbled apron with a grin before making his way slowly back to what he was doing, clearly moving with care to keep your [cum load size of player] load inside him a little longer.";
	otherwise:
		say "stretching out on his back across [if scalevalue of player < 3]one of the low tables[otherwise if scalevalue of player is 3 or scalevalue of player is 4]one of the tables[otherwise]the counter with your help[end if].  With his legs apart and his paws spreading his cheeks in a wanton display, he moans for you to take him now.  With such an offer after his expert tonguework has gotten you worked up, you move into position quickly, kissing your slick glans against his waiting pucker.";
		say "     As you sink your cock into your hybrid lover, he pulls you overtop of him into a passionate kiss, his canine tongue slipping into your mouth to dance with yours.  He moans and holds the kiss as long as he can while you pound into his tight rear[if cock length of player > 12], his talented hole easily accommodating your [cock size desc of player] meat[otherwise], his practiced hole taking your [cock size desc of player] meat in with ease[end if].  But as before, he's still quite tight around you and very adept at working his hips and inner walls to the delight of you both.  Finally and with a wet slurp of his long tongue pulling free, he must break the kiss so he can moan loudly in pleasure.";
		say "     'Ah oui!  Fourrez-moi!' he moans as you pound away at him.  Noticing his apron has tented up, you grin down at him and rub over his hidden erection.  He chuckles and flips his apron up, freeing you to grab his hips and drive into him all the harder while he plays with his cock and balls.  He tries to take it slow and make a show of it for you, but you're both getting quite worked up by this point and won't last much longer.  And the sight of his paws sliding over his eight inches of manmeat with its shapely mix of canine and feline shape certainly isn't helping you hold back.";
		say "     You lick your lips and knead his hips as you hold onto them, driving into him a few last times before cumming.  'Oui! Oui! Mon Dieu, oui!' he cries out as he feels your [cum load size of player] load shooting into him, setting him off.  Gooey splatters of his seed, rich with a mix of canine, feline and avian scents, spray across his apron as well as a few reaching his face and muzzle.  These last he licks up while he pumps the rest of his spurting load onto the white cloth[if cock width of player > 24].  As you send more and more semen into the small hybrid's belly, it grows rounder and fuller until he's nice and plump with your cum.  In the end, he's left heavy and overful, leaking your seed from his creamy asshole, unable to get up until much of it has drained or been absorbed[otherwise if cock width of player > 16].  As you send more and more semen into the small hybrid's belly, it gradually gains a couple more inches from your cum stuffing him.  In the end, he's left leaking from his creamy hole and remains flopped out on his perch while he recovers[otherwise].  Once you're done, he remains flopped out on his perch with a trickle of your semen leaking from his creamy hole while he recovers[end if].  'Mmm... mon héro,' he sighs softly as he basks in the afterglow.";
	if libido of François is 2, increase libido of François by 1;


to say françoissex3:		[player performs oral]
	if libido of François is 3:
		say "     In the mood to return the favour to the friendly mutt, you let your hands wander downwards and slide them under his apron.  He moans softly as you take a hold of his plump sheath and heavy orbs keeps hidden behind the white cloth.  Leaning in, you give him an kiss, feeling his cock swelling and sliding further from the kitteny soft fur and downy feathers of its warm home.  Teasing the pointed tip, you break the kiss and start to move downwards.";
		say "     'Are you sure, mon ami?  It is a little... strange...' he says with a bit of embarrassment at his transformed nature.  To reassure him, you smile and nod, flipping up his apron so you can get a good look at his waiting erection.  As you've felt in the past, its got a very feline shape, though also possessing a growing knot at its base.  What you could not tell before is that it has a mottled pattern of colours, ranging from dark black and browns to pinks to near white in a few spots.  Some of the changes are abrupt while others fade from one to another.  This patchwork colour scheme extends to his sheath as well, varying textures, patterns and colours of fur, and even a puff of red feathers at the underside of his ballsac.";
		say "     It is certainly unusual, but given all you've seen and experienced in the city, it is certainly not unappealing.  If anything, the more you look at it, the cuter and more interesting its patterns appear.  Noticing that you've been staring at it overly long and the hybrid is starting to get embarassed again (as well as going soft), you take it in hand confidently, aim it towards your mouth and dive onto it.";
	otherwise:
		say "     Wanting another go at the hybrid's unique cock, you let your hands wander downwards and slide them under his apron.  He moans softly, pulling you into a kiss, slipping his canine tongue into your mouth.  His talented tongue fences agilely with yours while you grope him, playing with his soft sheath and coaxing him to full erection.  Once you've gotten him ready, you break off the kiss together and lower yourself in front of him.  Smiling, he pauses only briefly before pulling up his apron to expose himself to you, letting you at his very unique and interesting cock.";
		say "     You let your eyes run over unusual, mottled patterns of its flesh for a moment before leaning forward and running your tongue slowly along the feline length.  He moans softly and his cock twitches, a dribble of precum running down.  This first taste has a decidedly [one of]canine[or]feline[or]avian[as decreasingly likely outcomes] flavour that is quite pleasant.  You give him several more licks while caressing his ballsac, stroking the soft fur and feathers covering it.  After your playful taste test, you drag your tongue from base to tip along its sensitive underside before aiming his cock into your mouth and sucking down on it.";
	say "     François rubs his paws over your head, rubbing gently as you bob over his cock.  Knowing your lover's quite experienced, you do your best to please him.  Giving it your all, you work your tongue, lips, mouth and palate over his throbbing meat, paying attention to his responses so you can properly satisfy him.  And your fingers get in one the action as well, rubbing at his knot when your lips aren't kissing at it and caressing his balls when they are.  As you work his length in your muzzle, it dribbles with precum, providing varying musky tastes for you to savour on your tongue.  Often having a clear canine flavour, at times you get something that reminds you more of cats or birds.  You find yourself trying to see what new taste you can get him to release with every hard suck.";
	if "More Anal" is listed in feats of player and a random chance of libido of player in 100 succeeds:
		say "     Wanting to add some extra fun for your both and ensure you get the biggest bang you can from the hybrid mutt, you slip [if scalevalue of player > 3]a finger into your mouth to get it slick[otherwise]a pair of fingers into your mouth to get them slick[end if] before bringing them around under his tail.  He moans and flips his tail up with a grin and a pant, relaxing his back entrance as you spread your saliva over it, gradually working your way into his asshole.  Fingering him, you pick up the pace with the blow job and rub against his prostate, making his hips quiver.  'Oui, juste là.  J'suis proche,' he pants in French, his paws moving to your shoulders for support as his cock and balls twitch.  Grinning around his cock, you don't let up, working him to fast and strong climax that has him pumping his flavourful cum down your throat.  You swallow it all down happily and lick your lips when you release his spent shaft";
	otherwise if a random chance of libido of player in 100 succeeds:
		say "     You keep it up, working to please the friendly fellow with the many tricks you've been learning.  As his knot swells, you put a hand around it, squeezing gently as if he'd managed to tie with a tight hole.  This has him yip in surprise and pleasure, his hips quivering.  'J'suis sur le point de jouir,' he pants in French, his paws moving to your shoulders for support as his cock and balls twitch.  Quite certain he's close now, you pull back, wrapping your free hand around his throbbing shaft and pumping it quickly.  Driven over the edge by this, he cums hard, splattering his creamy load all over your face.  You lick what you can get of his seed running past your lips, but are quite pleased to have your friend's load coating your face";
	otherwise:
		say "     You keep it up, working to please the horny hybrid with your mouth.  Longing for the prize but not wanting to rush it, you do your best to work him up, playing your tongue across his cock while you roll around the warm handful that are his balls.  As his knot swells, you push your mouth fully down onto his cock, working your lips over that swollen, sensitive bulb and suck down on him hard.  This has him bark in surprise and pleasure, his hips quivering.  'J'veux jouir dans ta bouche,' he pants in French, his paws moving to your shoulders for support as his cock and balls twitch.  Quite certain he's close now, you curl your tongue around his shaft and slide along it squeezing gently while taking him into your throat.  Driven over the edge by this, he cums hard, sending his rich, flavourful cum into your mouth and down your throat.  Letting his cum pool on your tongue, once he's spent, you release his shaft, show him the creamy mouthful you've got before swallowing it down";
	if libido of François is 3:
		say " as a final show of how comfortable you are with his uniquely beautiful cock";
	say ".";
	say "     When you're done, the spent hybrid sags back into a nearby chair, panting softly.  'Oh, thank you, mon ami.  That was very, very nice,' he says with a smile, casually readjusting his apron.";
	francoisinfect;
	if libido of François is 3, increase libido of François by 1;


to say françoissex4:		[player performs oral]
	say "...";

[  hp of François   ]
[ 0 = not met        ]
[ 1 = met/cleaned up ]

[ libido of François  ]
[ 0 = not met          ]
[ 1 = <skipped>        ]
[ 2 = received oral    ]
[ 3 = mounted him      ]

Francoismixcleaned is a truth state that varies.  Francoismixcleaned is usually false.
Francoismix is a marker.
when play begins:
	add { "Catgirl", "Siamese Cat", "Ninja Cat", "Chocolate Lab", "Female Husky", "German Shepherd", "Pit bull", "Retriever", "Shemale Smooth Collie", "Ashen Breeder", "Blue Chaffinch", "Bird of Paradise" } to infections of Francoismix;

to francoisinfect:
	if Francoismixcleaned is false:
		if hermaphrodite is banned:
			remove "Ashen Breeder" from infections of Francoismix, if present;
			remove "Chocolate Lab" from infections of Francoismix, if present;
			remove "Shemale Smooth Collie" from infections of Francoismix, if present;
		if humorous is banned:
			remove "Chocolate Lab" from infections of Francoismix, if present;
		sort infections of Francoismix in random order;
		let xform be "a";
		now xform is entry 1 of infections of Francoismix;
		infect xform;


[ délicieux, délictueux, savoureux, excitant, intense, agréable, exotique, intéressant, séduisant, exquis, délice, héro, ravissant, enchantant ]
[ je t'adore, je t'aime, je te veux, tu es le meilleur, je veux te faire un peq, mon chéri, mon chiot, mon chou, mon adorable, mon animal ]
[ je t'aime + a la folie, completement, totalement / mignon, mon coeur, mon amour, mon ange, tomber amoureux (de), mon trésor, mon cochon, mon coco ]
[ ma cocotte, mon grand, mon lapin, mon cher, ma loutre, mon loup, ma mie (female friend, soft bread), mon chaton, mon chat, mon mimi, mon minet ]
[ amitié, mon copain(copine), nid d'amour(eux), faire l'amour ]
[ Venez-vous ici souvent? / Fait-il chaud ici, ou est-ce juste vous? / J'ai envie de toi désespérément. / Fais-moi l'amour. / A la même heure demain? / Laisse-moi te prendre, mon chéri. / Tu es très beau. / Je veux to donner un beau, gros baisser. ]
[ Ils sont fous ces mutants. ]

Francois ends here.