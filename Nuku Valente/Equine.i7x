Version 7 of Equine by Nuku Valente begins here.
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]

"Adds a Equine to Flexible Survival's Wandering Monsters table, With Impreg chance"
[Description text for this Extension.]

Section 1 - Monster Responses

[ Use To say for overlong behaviors that would make the table difficult to read and understand. Typically needed if there are a lot of cock/species/cunt checks. ]
equinoiddefeat is a number that varies.
equinoidstatus is a number that varies.

to say equine attack:
	if equinoiddefeat is 0: [ first time losing to a horse ]
		say "The horse grabs you and hefts you up towards her huge breasts, pressing your face into a thick teat. The nipple seems to expand against you, becoming long as she nudges you and orders you to drink. Not having much choice, you open your mouth and take it in. It's warm and firm, and soon begins to leak warm milk for you. It's thick and sweet and fills your body with soft tingles from foot to head. As you drink, she speaks, 'You are but an infant to our people, a troublesome bawling child.' Your belly filled, she drops you to the ground roughly, then turns and walks off, 'And stay away, outsider.'";
		now equinoiddefeat is 1;
		if equinoidstatus < 4 and equinoidstatus > 0, decrease equinoidstatus by 1;
	else:
		if a random chance of 2 in 3 succeeds: [ Prefer male action]
			if player is female:
				if cunt length of player < 15 or cunt width of player < 10:
					say "She flips you over onto your belly and hefts your ass up into the air before yanking your clothes down to your knees. You look over your shoulder just in time to see her grab your [bodyname of player] ass and pull it back towards a frighteningly erect horse cock. It pushes against your [cunt size desc of player] petals, then rudely inches in past them. Her grip is like velvet covered iron, not allowing you to escape from the sudden pain of the huge member invading your snatch. She thumps forward, starting to rock despite the resistance, using those hugely muscled hips of hers to stretch you.[line break][line break]As she pistons into you, the pain begins to slowly ebb as pleasure creeps in. You can feel your passage growing damp and hot as she gives your ass a firm swat, 'Dirty outside wench,' she growls in an ear like a curse as she pulls you back against a rough shove, slamming her hips into yours, the shaft feeling like it's pushing into your belly from the inside. You feel the potent tool swell, then explode in terrific waves of heat into your womb, filling you to the brim, then overflowing with gallons of seed.[impregchance]";
					if "Male Preferred" is not listed in feats of player and ( "Modest Organs" is not listed in feats of player and cunt length of player > 7 ), increase cunt length of player by 1;
					if "Male Preferred" is not listed in feats of player and ( "Modest Organs" is not listed in feats of player and cunt width of player > 7 ), increase cunt width of player by 2;
				else:
					say "She hefts you up bodily, one hand sliding along one of your thighs towards the knee, lifting that knee up and exposing your [cunt size desc of player] sex to her view. She lines herself, then slides easily into your wet cunt, rocking up into you. Despite the hugeness of her equine member, your body sucks it up eagerly, squelching in loud wet sounds with every inward jab as she begins to pant and snort like a stallion winning a race. She grabs at your belly from behind with one hand, the other still holding your knee up as she makes your body jiggle and quake with the force of her rutting. Her attempt at rape only brings crashing pleasure on you both as your well accommodated form welcomes that flat headed shaft into its perfect embrace, squeezing along it as she crashes into you. She pushes in to the hilt, her heavy balls radiating heat across your thighs as they contract powerfully. Your belly swells as gallons of thick horse cum floods into your waiting passage.[impregchance] The horse woman neighs her approval, then nips an ear, 'Perhaps there is a place for you,' she admits grudgingly before setting you down[one of].[or]. 'I could always use another servant.'[or]. 'You might make an adequate breeder for the herd.'[or]. 'You'd make a fine broodmare.'[at random]";
			else:
				say "She snorts loudly as she looks you over, then pushes you to the ground on your knees. 'Stay,' she orders in a tone that does not encourage argument. She leans back a bit and runs her thick fingers along her long, excited shaft, pulling the flesh along the stiff core in long but fast motions. She leaks heavy pre and pauses long enough to scoop it up and run it along the member, allowing her to rock her hips against the motions faster and faster, the shaft bobbing close enough to kiss as the fluid emerges faster and faster. Her heavy balls sway and jostle with every pump as she stares at you almost unblinkingly, snorting louder as the tension hits the breaking point. With a loud neigh, the shaft bulges at the base, rippling up towards the top before painting your world white, hot sticky fluids raining across your face and front in a great deluge of virile horse cum, leaving you drenched with the horse's proof of fertility. With a dismissive snort, she rises and clops off.";
		else: [ Prefer female action]
			say "She snorts loudly as she looks you over, then pushes you to the ground on your knees. 'Stay,' she orders in a tone that does not encourage argument. She leans back a bit and runs her thick fingers along her long, excited shaft, pulling the flesh along the stiff core in long but fast motions. She leaks heavy pre and pauses long enough to scoop it up and run it along the member, allowing her to rock her hips against the motions faster and faster, the shaft bobbing close enough to kiss as the fluid emerges faster and faster. Her heavy balls sway and jostle with every pump as she stares at you almost unblinkingly, snorting louder as the tension hits the breaking point. With a loud neigh, the shaft bulges at the base, rippling up towards the top before painting your world white, hot sticky fluids raining across your face and front in a great deluge of virile horse cum, leaving you drenched with the horse's proof of fertility. With a dismissive snort, she rises and clops off.";

to say beattheequinoid:
	if cocks of player > 0 and cock length of player > 5 and a random number between 40 and 140 > libido of player:
		say "     The black furred equine sinks to the ground, then slumps over, panting and defeated. The battle, having gotten your blood pumping, has left your [cock size desc of player] [cock of player] cock engorged and throbbing. Before you even think otherwise, you jump atop her and pin down her shoulders. She groans softly and reaches up to push you off, but ends up wrapping her arms around you instead. Even as you bring your hard rod into position, she spreads her legs for you and whinnies softly in anticipation, moaning as your glans slips in under her ballsack and presses into her wet pussy[if cock length of player < 12]. Her equinoid pussy is very accommodating, letting your penis in easily, but still grips you rather nicely as she clenches down around it in need of being filled[else if cock length of player < 20]. Her equinoid pussy is very accommodating, taking in your large penis easily, but still grips you rather nicely in her need to be filled[else]. Her equinoid pussy stretches a little to take your huge member, but is quite accommodating. She moans and grips you even harder, her pussy cumming once even as you're stuffing her so full[end if].";
		say "     Her long, equine cock rests across her body, twitching as you pound into her. It spits precum across the underside of her huge breasts of the large horse herm. Having gotten quite aroused by the lovely show of this strong warrior now reduced to a horny slut beneath you, as well as her delicious cunt around you soon pushes you over the edge and you drive hard into her, blasting your hot seed into her pussy. She arches her back and cums hard as well, painting her body with equine seed as you fill her. '[one of]Oh yes, breed me you great warrior[or]Fill me with your seed[or]Put your strong colt in me[or]Breed me like your mare[or]Oh, breed me you powerful stud[at random]!' she whinnies loudly. You do your best to fill her request, draining your balls into her before withdrawing. As you get up, she moans softly and lays there, rubbing her tummy with a smile on her face. You can't help but grin as you walk off, knowing another of her tribe will have to replace her on patrol if you've just knocked her up.";
		now equinoiddefeat is 0;
		decrease libido of player by libido of player / 5;
		increase morale of player by 1;
	else:
		say "     The black furred creature sinks to the ground, then slumps over, panting and defeated.";
	if equinoidstatus < 4, increase equinoidstatus by 1;
	if equinoidstatus is 4:
		say "[equinoidcampinvite]"; [Invite to visit the black equinoid camp]


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Black Equinoid"; [The creature's name as displayed and used in naming descriptions]
	now attack entry is "[one of]She slams you with one of her great hoof hands.[or]With a sudden snap, you find your midsection being indented by a terribly forceful hoof.[or]She hefts you up suddenly and gives a great toss![or]She stomps down sharply, smacking your foot with her hoof, ow.[at random]";
	now defeated entry is "[beattheequinoid]";
	now victory entry is "[equine attack]";
	now desc entry is "[mongendernum 5]A tall imposing figure. A horse on two feet, towering over most, with great muscles under dense black fur. She has bright [one of]brown[or]hazel[or]green[at random] eyes and white, flat, teeth. She is dressed in a simple sheet, like a toga that wraps around her well formed body. Her great breasts are tight, as taught as the beefy muscles of her arms and legs. Her hips are round and waist slim, giving a pleasing shape. When she sees you, her lips peel back to expose those teeth, '[one of]Begone from our herd lands![or]Your kind are not welcome here![or]You do not belong here![at random],' she says, charging at you with red in her eyes. In the great motion it becomes clear that she is male as well, a huge sheath wobbling along her belly, softball sized nuts swaying as she runs.";
	now face entry is "an equine face, with an elongated snout and broad flat teeth set in your long muzzle"; [ Face Description, format as the text "Your face is (your text)." ]
	now body entry is "tall and well muscled, with delightful curves despite your overall toned appearance"; [ Body Description, format as the text "Your body is (your text)." ]
	now skin entry is "[one of]black furred[or]coarsely furred[or]furry[at random]"; [ Skin desc., format as the text "Your body is covered in (your text) skin."  Note: the word 'skin' is automatically included at the end. ]
	now tail entry is "You have a short black tail that flicks behind you. The horse tail particularly likes to swat at any flies that approach."; [ Tail desc., written as a full sentence or left blank for none. ]
	now cock entry is "[one of]flat-headed[or]equine[or]mottled pink[at random]"; [ Cock desc., format as "You have a 'size' (your text) cock." ]
	now face change entry is "it draws forward into a long equine snout"; [ Face TF text, format as "Your face feels funny as (your text)." ]
	now body change entry is "you swell with the appearance of muscles and height, growing taller by the moment"; [ Body TF text, format as "Your body feels funny as (your text)." ]
	now skin change entry is "coarse black fur spreads rapidly over your form"; [ Skin TF text, format as "Your skin feels funny as (your text)." ]
	now ass change entry is "a short, black, straw like tail emerges from above it, flicking lightly"; [ Ass/Tail TF text, format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it twitches with sudden arousal, the end flattening in an equine manner, forming the reverse bell shape endemic of the species and tinting a mottled pink and black"; [ Cock TF text, format as "Your cock feels funny as (your text)." ]
	now str entry is 18;
	now dex entry is 12;
	now sta entry is 14;
	now per entry is 12;
	now int entry is 12;
	now cha entry is 10;
	now sex entry is "Both"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 45;
	now lev entry is 4; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 7; [ Monster's average damage when attacking. ]
	now area entry is "Park"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 15; [ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 9; [ Cock width, more commonly used for ball size. ]
	now breasts entry is 2; [ Number of breasts the infection will give a player. ]
	now breast size entry is 9; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 15; [ Depth in inches of female sex the infection will attempt to give a player. ]
	now cunt width entry is 10; [ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 30; [ Target libido the infection will rise towards. ]
	now loot entry is "lucky horseshoe"; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 30; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 4; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "muscular"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "equine"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false; [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default"; [ Row used to designate any special combat features, "default" for standard combat. ]

when play ends:
	if bodyname is "Black Equinoid":
		if humanity of player < 10:
			if bee girl is tamed:
				say "     Following a compulsion, you seek out other horses in the park, and are soon welcomed into the herd proper. Together, you defend the park against interlopers, be they mutant or human. The exception are the bees; they're tolerated for their benefit to the local flora and their delicious honey. Because of this, Honey, who accompanied you back to the park, is welcomed by the black equinoids of the herd and lavished with attention. They show her a lovely tree surrounded by flowers and she soon sets up her home there, becoming a new queen bee and raising a new hive. Because of your bond with her, there is a peaceful alliance between the herd and the hive. The bears are kept away and the hive thrives and the equinoids are allowed to harvest honey in peace.";
				say "     There are some city horses as well that come by from time to time. They seem friendly enough at first, but the bees overhear them secretly whispering of making your people into slaves and whores. The herd, warriors at heart, with the help of the bees, attack and drive off these foul, urban horses. With the herd's numbers and the bees on watch from the air, these interlopers are kept from raiding and some are even captured and made to accept the proper ways of a natural, equine warrior.";
			else:
				say "     Following a compulsion, you seek out other horses in the park, and are soon welcomed into the herd proper. Together, you defend the park against interlopers, be they mutant or human. The exception are the bees; they're tolerated for their benefit to the local flora and their delicious honey. There are some city horses as well that come by from time to time. They seem friendly enough at first, but when the herd members who go with them don't return, or have been reduced to horny sluts who will no longer fight, the interlopers are no longer permitted to come. They send raids from time to time, but the herd knows the park forests well and survives with only a few losses.";
		else:
			say "     There is some confusion at first when your equinoid body is brought in, for there are several strains of equines and proper classification is slow. It seems ones like you are rare, few leaving the park where they're established. Once that's resolved, it goes much more smoothly, as you're not considered a dangerous strain. A movie producer spots you on TV as you are released and hires you immediately to play a minotaur-like creature in his upcoming movie. It turns out to be [one of]big blockbuster[or]lukewarm summer movie[or]big flop[at random] and provides some cash to start a new, peaceful life. Eventually becoming a naturalist, you study nature and, using your movie experience as a hoofhold, you get your own nature show [if intelligence of player > 15 and charisma of player > 15]that lasts several seasons. It does rather well, being insightful and intelligent while also well-presented and entertaining[else]for a brief time[end if].";

Table of Game Objects (continued)
name	desc	weight	object
"lucky horseshoe"	"A lucky horse shoe. You heard somewhere that throwing it over your shoulder gets good luck. Weird huh?"	1	lucky horseshoe

lucky horseshoe is a grab object.

instead of sniffing lucky horseshoe:
	say "The horseshoe smells of earth and old metal.";

the usedesc of lucky horseshoe is "[lucky horseshoe use]";

to say lucky horseshoe use:
	say "You hurl the horse shoe over your left shoulder and don't look back, hoping for the best.";
	if a random chance of 5 in 100 succeeds:
		say "As you walk away, you trip over something!";
		sort table of random critters in random order;
		repeat with x running from 1 to the number of rows in table of random critters:
			choose row x in table of random critters;
			if lootchance entry is 0, next;
			let z be loot entry;
			say "Wow, a [z]! It was lucky!";
			add z to invent of player;
			break;
	else:
		say "You walk onwards, but nothing happens, aw...";

[ Edit this to have the correct name as well]
Equine ends here.
