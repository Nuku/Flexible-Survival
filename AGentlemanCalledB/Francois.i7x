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
	otherwise if hp of François > 0:
		say "     The small bakery looks has been cleaned up considerably since the first time you were here. Though the windows are still boarded up, François has cleaned most of the clutter and debris out of the front room and arranged the remaining tables and chairs neatly around the space. The counters and displays are all bare, but clean and he has even [if daytimer is day]opened a skylight[otherwise]gathered some candles[end if] to light the space.";

Section 3 - François

François is a man. François is in Bone-Appetit.
The description of François is "[Françoisdesc]";
The conversation of François is { "Numnum!" }.
understand "Francis" as François.
understand "Francois" as François.
Françoistalk1 is a truth state that varies.  Françoistalk1 is normally false.

the linkaction of François is "Possible Actions: [link]talk[as]talk François[end link], [link]smell[as]smell François[end link], [link]fuck[as]fuck François[end link], [link]Bake[as]Bake François[end link][line break]";

the scent of François is "     François has a light male musk,  difficult to catch over the smells pervading the bakery.";

to say Françoisdesc:
	say "     François, the unusual hybrid before you, has an appearance that can only be described as a mutt. His short stocky canine body and face are covered with a thick mottled coat of fur made up of several different colours and patterns, there even appear to be small feathers poking out of his pelt in several places. Finally, a rather feline set of ears and tail complete the appearance. He wears a surprisingly clean white apron over his torso, which does a reasonable job of protecting his decency, while still allowing his long tail to flit about unhindered.";

Instead of conversing the François:
	if hp of Karen is 6 and companion of player is Retriever Girl:
		say "     François greets you with a smile as you approach 'Ah, mon ami[if cocks of player is 0 and cunts of player > 0]e[end if], good too see you again! and who is this you've brought with you?'";
		say "     'It's me, Karen' she responds, 'We were hoping you could help me out with --'[line break]";
		say "     'Karen! Mon Dieu, I had feared the worst mon amie' François interrupts, stepping around the counter placing a small kiss on each side of her muzzle before pulling her into a hug. Breaking off the hug François motions towards one of the tables near the front of the store, the three of you sit and chat for a while, regaling the mutt with the tale of your escape from Rex before Karen finally asks the him about her past. 'Ah, désolé mon amie, we never spoke much of our personal lives, only of our shared interest, les animaux. I recall you mentioning being a student at the college, but I am afraid that's all I know.'";
		say "     'Well, it's more than I knew before' Karen responds, 'Thank you, François, for everything. I might not even be here if not for you helping our friend here Escape from Rex' she says, smiling at you before leaning in and giving him a timid kiss on the cheek. Soon after the conversation draws to a close, you and Karen gather your things and prepare to head back out into the city as François returns to his work behind the counter.";
		now hp of Karen is 7;
		now Forgotten Past is unresolved;
	otherwise if hp of Karen is 2:
		say "     Realizing François and his bakery must be the place Karen mentioned, you decide to explain your situation to François, recounting the entire story that lead you to your position with Rex and your plot to escape."; 
		say "     'Mon Dieu, poor Karen' François replies solemnly after hearing your tale, 'But at least it is not to late [if libido of François >= 3]for you, mon petit chou[otherwise]to repay mon héro[end if].";
		say "     Without another word François gets to work, gathering a few supplies before starting in earnest.  Soon the entire bakery is filled with the warm scents of his work, and you find your mouth watering[if bodyname of player is not listed in the infections of Caninelist and facename of player is not listed in infections of Caninelist], despite knowing they are snacks intended for dogs[end if].";
		say "     Eventually François finishes his work, and returns with a small paper bag filled with fresh treats. [if bodyname of player is listed in the infections of Caninelist or facename of player is listed in infections of Caninelist or hunger of player > 60] The enticing scent wafting from the bag in your hands proves to be too much, and you eagerly fish a treat out, François simple grins at you as he watches you enjoy a sample of his work.  Still licking the last few crumbs of your snack from your lips, you[otherwise] You[end if] stow the bag away in your pack and give François your regards before deciding on your next move.";
		now hp of Karen is 3;
		now carried of Dog Treats is 1;
	otherwise if hp of François is 0:
		say "     'I must thank you again, mon ami[if cocks of player is 0 and cunts of player > 0]e[end if]' François says as he steps around the counter, 'but perhaps I could ask another favor of you? I have a desire to create, to expand my art and there must be so many exotic and interesting new flavors out in this city now. Oh how I would love to experiment with them, but sadly, I am no fighter. I fear I cannot go out there to gather these new ingredients myself, but you, mon [if cocks of player is 0 and cunts of player > 0]héroïne[otherwise]héro[end if], seem more then capable of surviving out there. If you bring back any potential ingredients you find, I would love to bake something for you [if cocks of player > 0]and perhaps I could 'reward' you in other ways as well' he says, licking his lips as his eyes stray to your groin[end if]. Just bring back anything you find and let me know you would like me to [link]bake[as]bake François[end link] for you.";
		now hp of François is 1;
		now libido of François is 1;
		say "[FrançoisListCompile]";
	otherwise if libido of François >= 3 and Françoistalk1 is false and a random chance of 2 in 5 succeeds:
		say "      'I was having such difficulty before you came along.  I don't know if your coming around is scaring them off now, but I was having no end of trouble before.  These hands, they were made for the baking and for the love, not the fighting,' he says, momentarily forgetting he's got paws now.  'Zut alors!  How most of them were rude lovers!  No passion, no care for their lover, just raw lust.";
		say "      'Even from the girls.  I tried to refused them, but would they listen?  Non!  They would get what they wanted in the end, but it was always so hollow.  I am sad for them[if cocks of player > 0].  But I have found a good lover in you, mon délice,' he adds, running his paws over you as he gives you a passionate kiss full of doggy tongue in your mouth[otherwise if cunts of player > 0].  But now I have found you, mon amie,' he says with a smile before giving you a kiss on the cheek[otherwise].  But now I have found you, mon ami,' he says with a smile before giving you a kiss on the cheek[end if].";
		now Françoistalk1 is true;
	otherwise if a random chance of 1 in 4 succeeds and Francois_Undiscovered is not empty:
		say "[FrançoisHint]";
	otherwise if a random chance of 1 in 3 succeeds:
		say "     [if daytimer is day]Boujour[otherwise]Bonsoir[end if], [one of]mon ami[if cunts of player > 0 and cocks of player is 0]e[end if][or]my friend[at random].  [one of]Comment ça va?[or]Comment allez-vous?[or]How are you?[at random]";
	otherwise:
		say "     [one of]Perhaps I should try to get back into business, I can't help but think my work would be even more popular now[or]I have a much greater appreciation for my work now[or]Perhaps I should go out there and try to find myself a sexy stud[or]Thanks again for the help, mon ami[if cunts of player > 0 and cocks of player is 0]e[end if][at random]."

instead of fucking the François:
	if libido of François is 0:
		say "     Perhaps you should talk to the friendly mutt first?";
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

Section 4 - Baking

françoisbaking is an action applying to nothing.
Understand "bake with françois" as françoisbaking.
Understand "bake françois" as françoisbaking.
Understand "cook françois" as françoisbaking.
Understand "cook with françois" as françoisbaking.
Understand "bake with francois" as françoisbaking.
Understand "bake francois" as françoisbaking.
Understand "cook francois" as françoisbaking.
Understand "cook with francois" as françoisbaking.
Understand "bake with francis" as françoisbaking.
Understand "bake francis" as françoisbaking.
Understand "cook francis" as françoisbaking.
Understand "cook with francis" as françoisbaking.
Francois_Undiscovered is a list of numbers that varies.
Francois_Discovered is a list of numbers that varies.

to say FrançoisListCompile:
	if girl is not banned:
		add 1 to Francois_Undiscovered;	[Crème Abondante - distilled milk + pink gel]
	if guy is not banned and hermaphrodite is not banned:
		add 2 to Francois_Undiscovered;	[Bleuettonne - chocolate milk + blue gel]
	if guy is not banned:
		add 3 to Francois_Undiscovered;	[Boysenberry Blossom - Awesome Fruit + blue gel]
	if girl is not banned:
		add 4 to Francois_Undiscovered;	[Muffin muffin - Awesomer Fruit + pink gel]
	if hermaphrodite is not banned:
		add 5 to Francois_Undiscovered;	[Lollicock - Musky Cock Flower + honeycomb]

check françoisbaking:
	If françois is not visible, say "You should see François for that." instead;

carry out françoisbaking:
	let françoisbaked be 0;
	If françois is not visible:
		say "You should see François for that.";
	otherwise if Francois_Undiscovered is not empty:
		say "     Emptying out the contents of your bag on the counter, François looks each over individually, smelling or even tasting many of them as he considers their culinary potential.";
		if blue gel is owned and Awesome Fruit is owned and 3 is listed in Francois_Undiscovered:
			say "[BoysenberryBlossomGet]";
			remove 3 from Francois_Undiscovered;
			add 3 to Francois_Discovered;
			decrease carried of blue gel by 1;
			decrease carried of Awesome Fruit by 1;
			now françoisbaked is 1;
		otherwise if pink gel is owned and Awesomer Fruit is owned and 4 is listed in Francois_Undiscovered:
			say "[MuffinMuffinGet]";
			remove 4 from Francois_Undiscovered;
			add 4 to Francois_Discovered;
			decrease carried of pink gel by 1;
			decrease carried of Awesomer Fruit by 1;
			now françoisbaked is 1;
		otherwise if blue gel is owned and chocolate milk is owned and 2 is listed in Francois_Undiscovered:
			say "[BleuettonneGet]";
			remove 2 from Francois_Undiscovered;
			add 2 to Francois_Discovered;
			decrease carried of blue gel by 1;
			decrease carried of chocolate milk by 1;
			now françoisbaked is 1;
		otherwise if pink gel is owned and distilled milk is owned and 1 is listed in Francois_Undiscovered:
			say "[CrèmeAbondanteGet]";
			remove 1 from Francois_Undiscovered;
			add 1 to Francois_Discovered;
			decrease carried of pink gel by 1;
			decrease carried of distilled milk by 1;
			now françoisbaked is 1;
		otherwise if Musky Cock Flower is owned and honeycomb is owned and 5 is listed in Francois_Undiscovered:
			say "[LollicockGet]";
			remove 5 from Francois_Undiscovered;
			add 5 to Francois_Discovered;
			decrease carried of honeycomb by 1;
			decrease carried of Musky Cock flower by 1;
			now françoisbaked is 1;
		if françoisbaked is not 1:
			say "     After looking over everything you've brought him, François decides none of your potential combinations of ingredients would make a good dish.";
	if françoisbaked is not 1 and Francois_Discovered is not empty:
		say "	Would you like to have François bake a dish you've already discovered? (Y/N)";
		if the player consents:
			say "[FrançoisBakingMenu]";

to say FrançoisBakingMenu:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	if 1 is listed in Francois_Discovered:
		choose a blank row in table of fucking options;
		now title entry is "Crème Abondante";
		now sortorder entry is 1;
		now description entry is "have François bake a Crème Abondante";
	if 2 is listed in Francois_Discovered:
		choose a blank row in table of fucking options;
		now title entry is "Bleuettonne";
		now sortorder entry is 2;
		now description entry is "have François bake a Bleuettonne";
	if 3 is listed in Francois_Discovered:
		choose a blank row in table of fucking options;
		now title entry is "Boysenberry Blossom";
		now sortorder entry is 3;
		now description entry is "have François bake a Boysenberry Blossom";
	if 4 is listed in Francois_Discovered:
		choose a blank row in table of fucking options;
		now title entry is "Muffin muffin";
		now sortorder entry is 4;
		now description entry is "have François bake a Muffin muffin";
	if 5 is listed in Francois_Discovered:
		choose a blank row in table of fucking options;
		now title entry is "Lollicock";
		now sortorder entry is 5;
		now description entry is "have François bake a Lollicock";
	choose a blank row in table of fucking options;
	now title entry is "Abort";
	now sortorder entry is 6;
	now description entry is "Abort";
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number (1-[number of filled rows in table of fucking options])> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			choose row calcnumber in table of fucking options;
			say "Confirmation: Would you like to [description entry]?";
			if player consents:
				if title entry is "Crème Abondante":
					if pink gel is owned and distilled milk is owned:
						now sextablerun is 1;
						say "     François takes the pink gel and distilled milk from you with a smile, collecting a few other things from behind the counter before heading to his kitchen. The warm sweet smell of François['] craft fills the bakery as you wait, making your mouth water in anticipation. Eventually François returns with a small tray of creamy pastries, offering one to you as he places the rest into one of his displays.";
						decrease carried of pink gel by 1;
						decrease carried of distilled milk by 1;
						increase carried of  Crème Abondante by 1;
					otherwise:
						say "You do not have the required ingredients. pink gel and distilled milk.";
				otherwise if title entry is "Bleuettonne":
					if blue gel is owned and chocolate milk is owned:
						now sextablerun is 1;
						say "     François takes the blue gel and chocolate milk from you with a smile, collecting a few other things from behind the counter before heading to his kitchen. The warm sweet smell of François['] craft fills the bakery as you wait, making your mouth water in anticipation. Eventually François returns with a small tray of chocolates, offering one to you as he places the rest into one of his displays.";
						decrease carried of blue gel by 1;
						decrease carried of chocolate milk by 1;
						increase carried of  Bleuettonne by 1;
					otherwise:
						say "You do not have the required ingredients. blue gel and chocolate milk.";
				otherwise if title entry is "Boysenberry Blossom":
					if blue gel is owned and Awesome Fruit is owned:
						now sextablerun is 1;
						say "	 François takes the blue gel and Awesome Fruit from you with a smile, collecting a few other things from behind the counter before heading to his kitchen. The warm sweet smell of François['] craft fills the bakery as you wait, making your mouth water in anticipation. Eventually François returns with a small tray of fruit filled pastries, offering one to you as he places the rest into one of his displays.";
						decrease carried of blue gel by 1;
						decrease carried of Awesome Fruit by 1;
						increase carried of  Boysenberry Blossom by 1;
					otherwise:
						say "You do not have the required ingredients. blue gel and Awesomer Fruit.";
				otherwise if title entry is "Muffin muffin":
					if pink gel is owned and Awesomer Fruit is owned:
						now sextablerun is 1;
						say "	 François takes the pink gel and Awesomer Fruit from you with a smile, collecting a few other things from behind the counter before heading to his kitchen. The warm sweet smell of François['] craft fills the bakery as you wait, making your mouth water in anticipation. Eventually François returns with a small tray of muffins, offering one to you as he places the rest into one of his displays.";
						decrease carried of pink gel by 1;
						decrease carried of Awesomer Fruit by 1;
						increase carried of  Muffin muffin by 1;
					otherwise:
						say "You do not have the required ingredients. pink gel and Awesome Fruit.";
				otherwise if title entry is "Lollicock":
					if honeycomb is owned and Musky Cock Flower is owned:
						now sextablerun is 1;
						say "	 François takes the honeycomb and Musky Cock Flower from you with a smile, collecting a few other things from behind the counter before heading to his kitchen. The warm sweet smell of François['] craft fills the bakery as you wait, making your mouth water in anticipation. Eventually François returns with a small tray of red candy cocks, offering one to you as he places the rest into one of his displays.";
						decrease carried of honeycomb by 1;
						decrease carried of Musky Cock Flower by 1;
						increase carried of  Lollicock by 1;
					otherwise:
						say "You do not have the required ingredients. honeycomb and Musky Cock Flower.";
				otherwise if title entry is "Abort":
					say "You decide not to have François bake anything.";
					now sextablerun is 1;
		otherwise:
			say "Invalid Option.";

to say FrançoisHint:
	sort Francois_Undiscovered in random order;
	let T be a random number between 1 and 3;
	if entry 1 of Francois_Undiscovered is 1:	[Crème Abondante - distilled milk + pink gel]
		if T is 1:
			say "     Crème à la fraise, strawberry cream, is always a popular ingredient, perhaps we could find a way to make our own out in the city?";
		if T is 2:
			say "     It's a shame I was out of milk when all this started, strangely most of my other stock seems to have stayed fresh.";
		if T is 3:
			say "     Fresh fruit is rather hard to come by these days, I wonder if there is another source of such flavors out in the city now?";
	if entry 1 of Francois_Undiscovered is 2:	[Bleuettonne - chocolate milk + blue gel]
		if T is 1:
			say "     Le chocolat et les fruits frais are always a good combination.";
		if T is 2:
			say "     I have seen the most unusual chiens running around outside, they appear to be made entirely of chocolat.";
		if T is 3:
			say "     Fresh fruit is rather hard to come by these days, I wonder if there is another source of such flavors out in the city now?";
	if entry 1 of Francois_Undiscovered is 3:	[Boysenberry Blossom - Awesome Fruit + blue gel]
		if T is 1:
			say "     A simple fruit pastry is a staple of a good menu.";
		if T is 2:
			say "     There was a bizarre tree outside the store earlier, it had such lovely fruit hanging from it's branches. I was going to go out and pick some, but i turned around for a moment and it was suddenly gone.";
		if T is 3:
			say "     Fresh fruit is rather hard to come by these days, I wonder if there is another source of such flavors out in the city now?";
	if entry 1 of Francois_Undiscovered is 4:	[Muffin muffin - Awesomer Fruit + pink gel]
		if T is 1:
			say "     Gelée de fruit is always an interesting way to enrich a simple treat.";
		if T is 2:
			say "     There was a bizarre tree outside the store earlier, it had such lovely fruit hanging from it's branches. I was going to go out and pick some, but i turned around for a moment and it was suddenly gone. ";
		if T is 3:
			say "     Fresh fruit is rather hard to come by these days, I wonder if there is another source of such flavors out in the city now?";
	if entry 1 of Francois_Undiscovered is 5:	[Lollicock - Musky Cock Flower + honeycomb]
		if T is 1:
			say "     Surely there must be many interesting new flavors to discover out in the city park now.";
		if T is 2:
			say "     I used to collect fresh herbs from the forest surrounding the city park before all this began, I wonder what strange plants must be out there now?";
		if T is 3:
			say "     Fresh honey was always one of my favorite ingredients...I wonder how this strange maladie has affected the honeybees...";


to say BoysenberryBlossomGet:
	say "	'Ah! Oui! These will do wonderfully!' François says as he takes the blue gel and Awesome Fruit from you with a smile, collecting a few other things from behind the counter before heading to his kitchen. The warm sweet smell of François['] craft fills the bakery as you wait, making your mouth water in anticipation. Eventually François returns with a small small dish of fruity smelling pastries, 'I will call them Boysenberry Blossoms' François says with obvious excitement, 'Please, be the first to taste one, mon ami[if cunts of player > 0 and cocks of player is 0]e[end if]!' Would you like to taste it right now? (Y/N)";
	if the player consents:
		say "[Boysenberry Blossom Use]";
		if "Female Preferred" is listed in feats of player or "Modest Organs" is listed in feats of player or ( "Single Sexed" is listed in feats of player and cunts of player > 0 ):
			say "     When your stomach finally stops it's groaning, you look up to see François staring back at you, his previous happy expression somewhat dampened as a result of your reaction. You do you best to assure him that his dish was quite tasty, despite your body's apparent distaste, which helps to brighten his mood again.";
		otherwise:
			say "	François licks his lips as he eyes up your enlarged member, and you can't help but notice his apron tenting slightly at his crotch. 'Mmm, what a lovely side effect, I cannot wait to start selling these.'";
	otherwise:
		say "     Accepting the treat from François, he looks quite disappointed as you stash the snack away in you bag. You assure him you'll eat it later and let him know how it was, but he still seems a little saddened that you aren't going to try it right away.";
		increase carried of Boysenberry Blossom by 1;

to say MuffinMuffinGet:
	say "	'What a lovely combination of flavors' François says as he tastes the  pink gel and Awesomer Fruit, 'I must test their potential further!' after collecting a few other things from behind the counter François quickly heads to his kitchen to get started. The warm sweet smell of François['] craft fills the bakery as you wait, making your mouth water in anticipation. Eventually François returns with a small tray of muffins and offers you one. Would you like to taste it right now? (Y/N)";
	if the player consents:
		say "[Muffin Muffin Use]";
		if "Male Preferred" is listed in feats of player or "Modest Organs" is listed in feats of player or ( "Single Sexed" is listed in feats of player and cocks of player > 0 ):
			say "	When your stomach finally stops it's groaning, you look up to see François staring back at you, his previous happy expression somewhat dampened as a result of your reaction. You do you best to assure him that his dish was quite tasty, despite your body's apparent distaste, which helps to brighten his mood again.";
		otherwise:
			say "	'Not my first choice, but an interesting result nonetheless' François says, as he watches your hand drift down towards your groin.  'I am certain it will be popular.'";
	otherwise:
		say "	Accepting the treat from François, he looks quite disappointed as you stash the snack away in you bag. You assure him you'll eat it later and let him know how it was, but he still seems a little saddened that you aren't going to try it right away.";
		increase carried of Muffin Muffin by 1;

to say BleuettonneGet:
	say "	After tasting the blue gel François takes it and the chocolate chocolate milk without another word, collecting a few other things from behind the counter before hurrying back to his kitchen. The warm sweet smell of François['] craft fills the bakery as you wait, making your mouth water in anticipation. Eventually François returns with a small tray of chocolates, 'A simple but effective technique, you must try one' François says with a smile, placing the tray on the counter in front of you. Would you like to taste one right now? (Y/N)";
	if the player consents:
		say "[Bleuettonne Use]";
		if "Female Preferred" is listed in feats of player or "Modest Organs" is listed in feats of player or ( "Single Sexed" is listed in feats of player and cunts of player > 0 ):
			say "	When your stomach finally stops it's groaning, you look up to see François staring back at you, his previous happy expression somewhat dampened as a result of your reaction. You do you best to assure him that his dish was quite tasty, despite your body's apparent distaste, which helps to brighten his mood again.";
		otherwise:
			say "	'Oh my, what a magnifique result' François says with a grin as he watches your groin change.";
	otherwise:
		say "	Accepting the treat from François, he looks quite disappointed as you stash the snack away in you bag. You assure him you'll eat it later and let him know how it was, but he still seems a little saddened that you aren't going to try it right away.";
		increase carried of Bleuettonne by 1;

to say CrèmeAbondanteGet:
	say "	After tasting the pink gel and distilled milk, François quickly pours both into an empty bowl and starts mixing, before he even reaches the doorway to his kitchen. 'Ah, crème à la fraise, I am certain I can do something with this' you hear him say to himself as you watch his tail disappear around the corner. The warm sweet smell of François['] craft fills the bakery as you wait, making your mouth water in anticipation. Eventually François returns with a small tray of pink creme topped pastries, placing them in front of you with a smile. Would you like to taste one right now? (Y/N)";
	if the player consents:
		say "[Crème Abondante Use]";
		if "Male Preferred" is listed in feats of player or "Passing Grade Chest" is listed in feats of player or "One Pair" is listed in feats of player:
			say "	When your stomach finally stops it's groaning, you look up to see François staring back at you, his previous happy expression somewhat dampened as a result of your reaction. You do you best to assure him that his dish was quite tasty, despite your body's apparent distaste, which helps to brighten his mood again.";
		otherwise:
			say "     François cocks his head to the side as he watches you chest swell, 'I have a feeling this will be a popular dish among les femmes' He says while eying your growing mammaries 'I am glad I was not the first to test it though.'";
	otherwise:
		say "	Accepting the treat from François, he looks quite disappointed as you stash the snack away in you bag. You assure him you'll eat it later and let him know how it was, but he still seems a little saddened that you aren't going to try it right away.";
		increase carried of Crème Abondante by 1;

to say LollicockGet:
	say "	'What an unusual herb' François says as he picks up the Musky Cock Flower, taking a deep sniff of it's musty scent. 'Hmm...perhaps...' François trails off as he spots the honeycomb, before inspiration strikes. François quickly gathers a few other things from behind the counter before stepping into his kitchen. Eventually François returns with a small tray of cock shaped lollipops and a silly grin on his face 'What do you think, mon ami[if cunts of player > 0 and cocks of player is 0]e[end if]? Would you like to try one?' he asks, waving the phallic candy in your face. (Y/N)";
	if the player consents:
		let LollicockCheck be 0;
		say "     Wrapping your lips around the phallic treat, you begin bobbing up and down it's length, savoring it's sweet and salty taste as your tongue works over it. As the last of it melts away[run paragraph on]"; 
		if a random chance of 1 in 4 succeeds:
			now LollicockCheck is 1;
		if cockname of player is "candy cock" or "Female Preferred" is listed in feats of player or ( "Single Sexed" is listed in feats of player and cunts of player > 0 ):
			now LollicockCheck is 0;
		if LollicockCheck is 1:
			if cocks of player is 0:
				say " a warm tingling wells up in your belly, slowly spreading across your body. The sensation focuses on your groin as a lovely red hard candy cock, much like the one you just finished enjoying, erupts from you, spurting a few excited streams of fluid as it settles into place .";
				now cocks of player is 1;
				now cock length of player is 5;
				now cock width of player is 4;
				now cockname of player is "candy cock";
				now cock of player is "red hard candy canine";
			otherwise:
				say " a warm tingling wells up in your belly, slowly spreading across your body. The sensation focuses on your groin as the flesh shifts to a deep red, your cock reshaping to a lovely canine hard candy shaft, much like the one you just finished enjoying.";
				now cockname of player is "candy cock";
				now cock of player is "red hard candy canine";
		otherwise:
			say "a rumbling builds in your belly, clearly your body doesn't agree with something about the treat.";
		decrease hunger of player by 5;
		if hunger of player < 0, now hunger of player is 0;
		if LollicockCheck is 0:
			say "	When your stomach finally stops it's groaning, you look up to see François staring back at you, his previous happy expression somewhat dampened as a result of your reaction. You do you best to assure him that his dish was quite tasty, despite your body's apparent distaste, which helps to brighten his mood again.";
		otherwise:
			say "'Mon dieu! What an unexpected result!' François says, licking his lips as he eyes up your new candy member, 'I certainly would like to give that a taste' he says with a naughty smirk.";
	otherwise:
		say "	Accepting the treat from François, he looks quite disappointed as you stash the snack away in you bag. You assure him you'll eat it later and let him know how it was, but he still seems a little saddened that you aren't going to try it right away.";
		increase carried of Lollicock by 1;

Section 5 - Baked Goods

Table of Game Objects (continued)
name	desc	weight	object
"Boysenberry Blossom"	"A fruit filled flaky flower shaped pastry."	1	Boysenberry Blossom
"Bleuettonne"	"A dark chocolate ball with a syrupy blueberry center."	1	Bleuettonne
"Crème Abondante"	"A delicate pink pastry topped with a breast shaped mound of creme, complete with a small sugary nipple."	1	Crème Abondante
"Muffin Muffin"	"A soft pink muffin with a gooey fruit center."	1	Muffin Muffin
"Lollicock"	"A big red hard candy shaped like a canine cock."	1	Lollicock

Boysenberry Blossom is a grab object. It is a part of the player.
Boysenberry Blossom has a usedesc "[Boysenberry Blossom Use]";
the scent of Boysenberry Blossom is "The small pastry has a wonderful fruity smell you can't quite put your finger on.";

to say Boysenberry Blossom Use:
	say "Biting into the Boysenberry Blossom, you are treated to a lovely fruity filling inside the flaky pastry. Eating the treat in several slow bites[run paragraph on]";
	if "Female Preferred" is listed in feats of player or "Modest Organs" is listed in feats of player or ( "Single Sexed" is listed in feats of player and cunts of player > 0 ):
		say " you savor the fruity pastry, it tastes great but gives you a belly ache, clearly your body doesn't agree with something about the treat.";
	otherwise if cocks of player is 0:
		now cocks of player is 1;
		now cock length of player is 5;
		now cock width of player is 4;
		Follow the cock descr rule;
		say " you savor the fruity pastry as a warm tingling wells up in your belly, slowly spreading across your body. The sensation focuses on your groin as a [descr] [cock of player] [one of]cock[or]penis[or]shaft[or]maleness[at random] erupts from you, spurting a few excited streams of fluid as it settles into place.";
	otherwise:
		increase cock length of player by a random number from 1 to 2;
		Follow the cock descr rule;
		say " you savor the fruity pastry as a warm tingling wells up in your belly, slowly spreading across your body. The sensation focuses on your groin as your [if cocks of player is 1][one of]cock[or]penis[or]shaft[or]maleness[at random][otherwise][one of]cocks[or]penises[or]shafts[or]malenesses[at random][end if] [one of]engorge[or]swell[or]throb[at random] as it gains in length, becoming [descr]";
	decrease hunger of player by 5;
	if hunger of player < 0, now hunger of player is 0;

Bleuettonne is a grab object. It is a part of the player.
Bleuettonne has a usedesc "[Bleuettonne Use]";
the scent of Bleuettonne is "The small candy carries the deep, rich scent of chocolate.";

to say Bleuettonne Use:
	say "     You bite into the Bleuettonne, and find your mouth filled with a burst of  blueberry jelly, more then you would have expected from the small chocolate ball. Doing your best to not let any of the sweet treat spill[run paragraph on]";
	if "Female Preferred" is listed in feats of player or "Modest Organs" is listed in feats of player or ( "Single Sexed" is listed in feats of player and cunts of player > 0 ):
		say " you swallow your mouthful and finish the rest in a second satisfying bite. As the fruity filling and chocolate hit your belly it rumbles, clearly your body doesn't agree with something about the treat, but it sure tasted great.";
	otherwise if cocks of player is 0:
		now cocks of player is 1;
		now cock length of player is 5;
		now cock width of player is 4;
		Follow the cock descr rule;
		say " as you savor the mingling chocolate and fruit flavors a warm tingling wells up in your belly, slowly spreading across your body. The sensation focuses on your groin as a [descr] [cock of player] [one of]cock[or]penis[or]shaft[or]maleness[at random] erupts from you, spurting a few excited streams of fluid as it settles into place.";
	otherwise:
		increase cock width of player by a random number from 1 to 2;
		Follow the cock descr rule;
		say " as you savor the mingling chocolate and fruit flavors a warm tingling wells up in your belly, slowly spreading across your body. The sensation focuses on your groin as your [one of]sac[or]balls[or]orbs[or]cum factories[at random] [one of]tingle[or]churn audibly[or]throb[at random] as it grows larger, your flesh growing taught with the expansion, leaving you with [ball size]";
	decrease hunger of player by 5;
	if hunger of player < 0, now hunger of player is 0;

Crème Abondante is a grab object. It is a part of the player.
Crème Abondante has a usedesc "[Crème Abondante Use]";
the scent of Crème Abondante is "The pink pastry smells of fresh strawberry and rich creme.";
understand "Creme Abondante" as Crème Abondante.

to say Crème Abondante Use:
	say "     Biting into the Crème Abondante, your mouth is filled with sweet strawberry cream. Savoring the rich mousse and fresh pastry, you finish the treat and several slow deliberate bites[run paragraph on]";
	if "Male Preferred" is listed in feats of player or "Passing Grade Chest" is listed in feats of player or "One Pair" is listed in feats of player:
		say ". After finishing the last bite of your snack, a rumbling builds in your belly, clearly your body doesn't agree with something about the treat, but it sure tasted great.";
	otherwise:
		say ". As you swallow the last bite, a warm tingling wells up in your belly, slowly spreading across your body. The sensation focuses on your chest[run paragraph on]";
		if breasts of player < 8:
			say "as it increases in intensity, the tingling centers on two new sensitive points, which quickly swell into two new [descr] breasts, pressing out of your [skin of player] hide[run paragraph on]";
			increase breasts of player by 2;
		if breast size of player < 26:
			follow the breast descr rule;
			let oldbreast be descr;
			say "and you [one of]groan and grab at your chest[or]give a loud moan, shuddering[or]almost tip forward in surprise[or]look down fearfully as sensation builds[at random], [skin of player] skin glistening as your [oldbreast] breasts[run paragraph on]";
			increase breast size of player by 2;
			if breast size of player > 26, now breast size of player is 26;
			follow the breast descr rule;
			say " become [descr] [one of]orbs[or]breasts[or]jugs[or]tits[at random]";
		say ".";
	decrease hunger of player by 5;
	if hunger of player < 0, now hunger of player is 0;

Muffin Muffin is a grab object. It is a part of the player.
Muffin Muffin has a usedesc "[Muffin Muffin Use]";
the scent of Muffin Muffin is "The pink muffin carries a fruity aroma that seems to change with each breath.";

to say Muffin Muffin Use:
	say "     Biting into the muffin you find a sweet pink jelly fruit filling hidden inside, working your tongue into the opening, you lick the sweet treat out of the depths of the muffin before finishing it[run paragraph on]";
	if "Male Preferred" is listed in feats of player or "Modest Organs" is listed in feats of player or ( "Single Sexed" is listed in feats of player and cocks of player > 0 ):
		say ". After finishing the last bite of your snack, a rumbling builds in your belly, clearly your body doesn't agree with something about the treat, but it sure tasted great.";
	otherwise if cunts of player is 0:
		now cunts of player is 1;
		now cunt length of player is 5;
		now cunt width of player is 4;
		follow the cunt descr rule;
		say ". As you swallow the last bite, a warm tingling wells up in your belly, slowly spreading across your body. The sensation focuses on your groin as a [descr] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] wetly forms.";
	otherwise:
		increase cunt length of player by 1;
		if remainder after dividing cunt length of player by  3 is 0:
			increase cunt width of player by 1;
		Follow the cunt descr rule;
		say ". As you swallow the last bite, a warm tingling wells up in your belly, slowly spreading across your body. The sensation focuses on your groin as your [if cunts of player is 1][one of]cunt[or]pussy[or]vagina[or]cleft[at random] [one of]engorges[or]swells[or]throbs[at random][otherwise][one of]cunts[or]pussies[or]vaginas[or]clefts[at random] [one of]engorge[or]swell[or]throb[at random][end if] as it grows, becoming [descr].";
	decrease hunger of player by 5;
	if hunger of player < 0, now hunger of player is 0;

Lollicock is a grab object. It is a part of the player.
Lollicock has a usedesc "[Lollicock Use]";
the scent of Lollicock is "The Lollicock has a sweet aroma with a hint of male arousal.";

to say Lollicock Use:
	let LollicockDildo be 0;
	if cunts of player > 0:
		say "     Eying up the cute cock shaped treat, you are just about to wrap your lips around it before another, naughtier idea pops into your head. Would you like to 'play' with your food before enjoying the snack? (Y/N)";
		if the player consents:
			say "     Stripping your gear and finding a comfortable place to stop and really enjoy this treat, you slowly lick along the length of the candy cock, wetting it's surface while you begin teasing you womanly folds with your free hand. Once both you and the treat are sufficiently lubricated, you take one last taste of the sweet and salty candy before plunging it into your drooling cunt. You moan loudly as you drive the rigid length into yourself, your quivering pussy leaking a sticky mixture of sugar and your own feminine juices as you fuck yourself to a powerful climax.";
			say "     Sliding the sticky candy cock out of yourself with a wet slurp, you bask in your afterglow as you wrap your lips around the sugary treat, savoring the musky flavor of your own cum mingling with it's sweet and salty taste.";
			now LollicockDildo is 1;
	if lollicockDildo is not 1:
		let LollicockCheck be 0;
		say "     Wrapping your lips around the phallic treat, you begin bobbing up and down it's length, savoring it's sweet and salty taste as your tongue works over it. As the last of it melts away[run paragraph on]";
		if a random chance of 1 in 4 succeeds:
			now LollicockCheck is 1;
		if cockname of player is "candy cock" or "Female Preferred" is listed in feats of player or ( "Single Sexed" is listed in feats of player and cunts of player > 0 ):
			now LollicockCheck is 0;
		if LollicockCheck is 1:
			if cocks of player is 0:
				say " a warm tingling wells up in your belly, slowly spreading across your body. The sensation focuses on your groin as a lovely red hard candy cock, much like the one you just finished enjoying, erupts from you, spurting a few excited streams of fluid as it settles into place .";
				now cocks of player is 1;
				now cock length of player is 5;
				now cock width of player is 4;
				now cockname of player is "candy cock";
				now cock of player is "red hard candy canine";
			otherwise:
				say " a warm tingling wells up in your belly, slowly spreading across your body. The sensation focuses on your groin as the flesh shifts to a deep red, your cock reshaping to a lovely canine hard candy shaft, much like the one you just finished enjoying.";
				now cockname of player is "candy cock";
				now cock of player is "red hard candy canine";
		otherwise:
			say "you are filled with a pleasant warmth, a subtle afterglow filling your body after the tasty treat.";
	decrease hunger of player by 5;
	if hunger of player < 0, now hunger of player is 0;

[Recipies				]
[Crème Abondante				1]
[Bleuettonne				2]
[Boysenberry Blossom				3]
[Muffin muffin				4]
[Lollicock				5]

[Ingredients				]
[Awesome Fruit -Male				30]
[Awesomer Fruit -Female				31]
[pink gel				32]
[blue gel				33]
[distilled milk				34]
[chocolate milk				35]
[Musky Cock Flower				36]
[honeycomb				37]

[  hp of François   ]
[ 0 = not met        ]
[ 1 = met/cleaned up/introduced baking ]

[ libido of François  ]
[ 0 = not met          ]
[ 1 = introduced baking        ]
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