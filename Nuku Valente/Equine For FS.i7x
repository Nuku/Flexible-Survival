Version 7 of Equine For FS by Nuku Valente begins here. 
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]

"Adds a Equine to Flexible Survivals Wandering Monsters table, With Impreg chance"
[Description text for this Extension.]

Section 1 - Monster Responses

[ Use To say for overlong behaviours that would make the table difficult to read and understand. Typically needed if there are alot of cock/species/cunt checks. ] 
equinedefeat is a number that varies.
to say equine attack:
	if equinedefeat is 0: [ first time losing to a horse ]
		say "The horse grabs you and hefts you up towards her huge breasts, pressing your face into a thick teat. The nipple seems to expand against you, becoming long as she nudges you and orders you to drink. Not having much choice, you open your mouth and take it in. It's warm and firm, and soon begins to leak warm milk for you. It's thick and sweet and fills your body with soft tingles from foot to head. As you drink, she speaks, 'You are but an infant to our people, a troublesome bawling child.' Your belly filled, she drops you to the ground roughly, then turns and walks off, 'And stay away, outsider.'";
		now equinedefeat is 1;
	otherwise:
		if a random chance of 2 in 3 succeeds: [ Prefer male action]
			if cunts of player > 0:
				if cunt length of player is less than 15 or cunt width of player is less than 10:
					say "She flips you over onto your belly and hefts your ass up into the air before yanking your clothes down to your knees. You look over your shoulder just in time to see her grab your [bodyname of player] ass and pull it back towards a frighteningly erect horse cock. It pushes against your [cunt size desc of player] petals, then rudely inches in past them. Her grip is like velvet covered iron, not allowing you to escape from the sudden pain of the huge member invading your snatch. She thumps forward, starting to rock despite the resistance, using those hugely muscled hips of hers to stretch you.[line break][line break]As she pistons into you, the pain begins to slowly ebb as pleasure creeps in. You can feel your passage growing damp and hot as she gives your ass a firm swat, 'Dirty outside wench,' she growls in an ear like a curse as she pulls you back against a rough shove, slamming her hips into yours, the shaft feeling like it's pushing into your belly from the inside. You feel the potent tool swell, then explode in terrific waves of heat into your womb, filling you to the brim, then overflowing with gallons of seed.[impregchance]";
					increase cunt width of player by 2;
					increase cunt length of player by 1;
				otherwise:
					say "She hefts you up bodily, one hand sliding along one of your thighs towards the knee, lifting that knee up and exposing your [cunt size desc of player] sex to her view. She lines herself, then slides easily into your wet cunt, rocking up into you. Despite the hugeness of her equine member, your body sucks it up eagerly, squelching in loud wet sounds with every inward jab as she begins to pant and snort like a stallion winning a race. She grabs at your belly from behind with one hand, the other still holding your knee up as she makes your body jiggle and quake with the force of her rutting. Her attempt at rape only brings crashing pleasure on you both as your well accomodated form welcomes that flat headed shaft into its perfect embrace, squeezing along it as she crashes into you. She pushes in to the hilt, her heavy balls radiating heat across your thighs as they contract powerfully. Your belly swells as gallons of thick horse cum floods into your waiting passage.[impregchance] The horse woman neighs her approval, then nips an ear, 'Perhaps there is a place for you,' she admits grudgingly before setting you down.";
			otherwise:
				say "She snorts loudly as she looks you over, then pushes you to the ground on your knees. 'Stay.' she orders in a tone that does not encourage argument. She leans back a bit and runs her thick fingers along her long, excited shaft, pulling the flesh along the stiff core in long but fast motions. She leaks heavy pre and pauses long enough to scoop it up and run it along the member, allowing her to rock her hips against the motions faster and faster, the shaft bobbing close enough to kiss as the fluid emerges faster and faster. Her heavy balls sway and jostle with every pump as she stares at you almost unblinkingly, snorting louder as the tension hits the breaking point. With a loud neigh, the shaft bulges at the base, rippling up towards the top before painting your world white, hot sticky fluids raining across your face and front in a great deluge of virile horse cum, leaving you drenched with the horse's proof of fertility. With a dismissive snort, she rises and clops off.";
		otherwise: [ Prefer female action]
			say "She snorts loudly as she looks you over, then pushes you to the ground on your knees. 'Stay.' she orders in a tone that does not encourage argument. She leans back a bit and runs her thick fingers along her long, excited shaft, pulling the flesh along the stiff core in long but fast motions. She leaks heavy pre and pauses long enough to scoop it up and run it along the member, allowing her to rock her hips against the motions faster and faster, the shaft bobbing close enough to kiss as the fluid emerges faster and faster. Her heavy balls sway and jostle with every pump as she stares at you almost unblinkingly, snorting louder as the tension hits the breaking point. With a loud neigh, the shaft bulges at the base, rippling up towards the top before painting your world white, hot sticky fluids raining across your face and front in a great deluge of virile horse cum, leaving you drenched with the horse's proof of fertility. With a dismissive snort, she rises and clops off.";
	
Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "black equinoid"; [Name of your new Monster]
	now attack entry is "[one of]She slams you with one of her great hoof hands.[or]With a sudden snap, you find your midsection being indented by a terribly forceful hoof.[or]She hefts you up suddenly and gives a great toss![or]She stomps down sharply, smacking your foot with her hoof, ow.[at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "The black furred creature sinks to the ground, then slumps over, panting and defeated."; [ Text or say command used when Monster is defeated.]
	now victory entry is  "[equine attack]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.] 
	now desc entry is "A tall imposing figure. A horse on two feet, towering over most, with great muscles under dense black fur. She has bright [one of]brown[or]hazel[or]green[at random] eyes and white, flat, teeth. She is dressed in a simple sheet, like a toga that wraps around her well formed body. Her great breasts are tight, as taught as the beefy muscles of her arms and legs. Her hips are round and waist slim, giving a pleasing shape. When she sees you, her lips peel back to expose those teeth, '[one of]Begone from our herd lands![or]Your kind are not welcome here![or]You do not belong here![at random],' she says, charging at you with red in her eyes. In the great motion it becomes clear that she is male as well, a huge sheath wobbling along her belly, softball sized nuts swaying as she runs.";[ Description of the creature when you encounter it.]
	now face entry is "equine face, with an elongated snout and broad flat teeth set in your long";[ Face description, format as the text "Your have a (your text) face."] 
	now body entry is "tall and well muscled, with delightful curves despite your overall tones appearance.";[ Body Description, format as the text "Your Body is (your text)"] 
	now skin entry is "[one of]black furred[or]coarsely furred[or]furry[at random]";[ skin Description, format as the text "You have (your text) skin"] 
	now tail entry is "You have a short black tail that flicks behind you. The horse tail particularly likes to swat at any flies that approach.";[ Tail description, write a whole Sentence or leave blank. ] 
	now cock entry is "[one of]flat headed[or]equine[or]mottled pink[at random]";[ Cock Description, format as you have a 'size' (your text) cock] 
	now face change entry is "your face draws forward into a long equine snout."; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "you swell with the appearance of muscles and height, growing taller by the moment."; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "coarse black fur spreads rapidly over your form."; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "A short, straw like, black tail emerges from above your ass, flicking lightly."; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "Your shaft twitches with sudden arrousal as the end flattens in an equine manner, forming the reverse bell shape endemic of the species and tinting a mottled pink and black."; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 18;
	now dex entry is 12;
	now sta entry is 14;					
	now per entry is 12;
	now int entry is 12;
	now cha entry is 10;
	now sex entry is "Both"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 45;			[ How many HP has the monster got? ]
	now lev entry is 4;			[ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ] 
	now wdam entry is 7;			[Amount of Damage monster Does when attacking.]
	now area entry is "Park";	[ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 1;			[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 15;		[ Length infection will make cock grow to if cocks]
	now cock width entry is 9;		[ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 2;			[ Number of Breasts infection will give you. ]
	now breast size entry is 9;		[Size of breasts infection will try to attain ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 15;		[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 10;		[ Width of female sex  infection will try and give you ] 
	now libido entry is 30;			[ Amount player Libido will go up if defeated ]
	now loot entry is "lucky horseshoe";			[ Loot monster drops, ]
	now lootchance entry is 30;		[ Chance of loot dropping 0-100 ]

when play ends:
	if bodyname is "black equinoid":
		if humanity of player is less than 10:
			say "Following a compulsion, you seek out other horses, and are soon welcomed into the herd proper. You defend the park against interlopers, be they mutant or human. Except the bees, they're tolerated for their benefit to the local flora and their delicious honey.";
		otherwise:
			say "A movie producer spots you on TV as you are rescued and hires you immediately to play a minotaur like creature in his upcoming movie. It turns out to be [one of]big blockbuster[or]lukewarm summer movie[or]big flop[at random]!";
			
Table of Game Objects(continued)
name	desc	weight	object
"lucky horseshoe"	"A lucky horse shoe. You heard somewhere that throwing it over your shoulder gets good luck. Wierd huh?"	1	lucky horseshoe

lucky horseshoe is a grab object.

the usedesc of lucky horseshoe is "[lucky horseshoe use]";

to say lucky horseshoe use:
	say "You hurl the horse shoe over your left shoulder and don[apostrophe]t look back, hoping for the best.";
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
	otherwise:
		say "You walk onwards, but nothing happens, aw...";

[ Edit this to have the correct Name as wall]
Equine For FS ends here.