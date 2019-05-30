Version 2 of Black Equinoid by Song begins here.
[ Version 1.0 - Initial mob - Nuku Valente                                      ]
[ Version 2.0 - Rename and fixes - Song                                         ]

"Adds a Black Equinoid to Flexible Survival's Wandering Monsters table, with impreg chance"

Section 1 - Creature Responses

equinoiddefeat is a number that varies. equinoiddefeat is usually 0.
equinoidstatus is a number that varies. equinoidstatus is usually 0.

to say equine attack:
	if equinoiddefeat is 0: [First time losing to a horse]
		say "     The horse grabs you and hefts you up towards her huge breasts, pressing your face into a thick teat. The nipple seems to expand against you, becoming long as she nudges you and orders you to drink. Not having much choice, you open your mouth and take it in. It's warm and firm, and she soon begins to lactate for you. Her milk is thick and sweet and fills your body with soothing tingles from head to foot. As you drink, she speaks, 'You are but an infant to our people, a troublesome, bawling child.' Your belly filled, she drops you to the ground roughly, then turns and walks off. 'And stay away, outsider.'";
		now equinoiddefeat is 1;
		if equinoidstatus < 4 and equinoidstatus > 0, decrease equinoidstatus by 1;
	else:
		if a random chance of 2 in 3 succeeds: [Will mate with females, otherwise oral]
			if Player is female:
				if Cunt Depth of Player < 15 or Cunt Tightness of Player < 10:
					say "     She flips you over onto your belly and hefts your ass up into the air before yanking your clothes down to your knees. You look over your shoulder just in time to see her grab your [BodyName of Player] ass and pull it back towards a frighteningly erect horse cock. It pushes against your [cunt size desc of Player] petals, then rudely inches in past them. Her grip is like velvet covered iron, not allowing you to escape from the sudden pain of the huge member invading your snatch. She thumps forward, starting to rock despite the resistance, using those hugely muscled hips of hers to stretch you.";
					say "     As she pistons into you, the pain begins to slowly ebb as pleasure creeps in. You can feel your passage growing damp and hot as she gives your ass a firm swat. 'Dirty outside wench,' she growls in an ear like a curse as she pulls you back against a rough shove, slamming her hips into yours, the shaft feeling like it's pushing into your belly from the inside. You feel the potent tool swell, then explode in terrific waves of heat into your womb, filling you to the brim before overflowing with gallons of seed.[impregchance]";
					if "Male Preferred" is not listed in feats of Player and ( "Modest Organs" is not listed in feats of Player and Cunt Depth of Player > 7 ), increase Cunt Depth of Player by 1;
					if "Male Preferred" is not listed in feats of Player and ( "Modest Organs" is not listed in feats of Player and Cunt Tightness of Player > 7 ), increase Cunt Tightness of Player by 2;
				else:
					say "     She hefts up your body, one hand sliding along one of your thighs towards the knee, lifting that knee up and exposing your [cunt size desc of Player] sex to her view. She lines herself up, then slides easily into your wet cunt, rocking against you. Despite the hugeness of her equine member, your body sucks it up eagerly, squelching in loud wet sounds with every inward jab as she begins to pant and snort like a stallion winning a race. She grabs at your belly from behind with one hand, the other still holding your knee up as she makes your body jiggle and quake with the force of her rutting. Her vigorous bucking brings immense pleasure to you both as your accommodating form welcomes that flat-headed shaft into its perfect embrace, squeezing along it as she crashes into you. She pushes in to the hilt, her heavy balls radiating heat across your thighs as they contract powerfully. Your belly swells as gallons of thick horse cum flood into your waiting passage. The horse woman neighs her approval, then nips an ear. 'Perhaps there is a place for you,' she admits grudgingly before setting you down. [one of]'I could always use another servant.'[or]'You might make an adequate breeder for the herd.'[or]'You'd make a fine broodmare.'[at random][impregchance]";
			else:
				say "     She snorts loudly as she looks you over, then pushes you to the ground on your knees. 'Stay,' she orders in a tone that does not encourage argument. She leans back a bit and runs her thick fingers along her long, excited shaft, pulling the flesh along the stiff core in long but fast motions. She leaks heavy pre and pauses long enough to scoop it up and run it along the member, allowing her to rock her hips against the motions more quickly, the shaft bobbing close enough to kiss as the fluid emerges faster and faster. Her heavy balls sway and jostle with every pump as she stares at you almost unblinkingly, snorting louder as the tension hits the breaking point. With a loud neigh, the shaft bulges at the base, rippling up towards the top before painting your world white, her hot, sticky fluids raining across your face and front in a great deluge of horse cum, leaving you drenched with the horse's proof of virility. With a dismissive snort, she rises and clops off.";
		else: [Guaranteed oral]
			say "     She snorts loudly as she looks you over, then pushes you to the ground on your knees. 'Stay,' she orders in a tone that does not encourage argument. She leans back a bit and runs her thick fingers along her long, excited shaft, pulling the flesh along the stiff core in long but fast motions. She leaks heavy pre and pauses long enough to scoop it up and run it along the member, allowing her to rock her hips against the motions more quickly, the shaft bobbing close enough to kiss as the fluid emerges faster and faster. Her heavy balls sway and jostle with every pump as she stares at you almost unblinkingly, snorting louder as the tension hits the breaking point. With a loud neigh, the shaft bulges at the base, rippling up towards the top before painting your world white, her hot, sticky fluids raining across your face and front in a great deluge of virile horse cum, leaving you drenched with the horse's proof of fertility. With a dismissive snort, she rises and clops off.";

to say beattheequinoid:
	if Player is male and Cock Length of Player > 5 and a random number between 40 and 90 < Libido of Player:
		say "     The black furred equine sinks to the ground, then slumps over, panting and defeated. The battle, having gotten your blood pumping, has left your [cock size desc of Player], [Cock of Player] cock engorged and throbbing. Before you can even think otherwise, you jump atop her and pin down her shoulders. She groans softly and reaches up to push you off, but ends up wrapping her arms around you instead. Even as you bring your hard rod into position, she spreads her legs for you and whinnies softly in anticipation, moaning as your glans slips in under her ballsack and presses into her wet pussy[if Cock Length of Player < 12]. Her equinoid pussy is very accommodating, letting your penis in easily, but still grips you rather nicely as she clenches down around it in need of being filled[else if Cock Length of Player < 20]. Her equinoid pussy is very accommodating, taking in your large penis easily, but still grips you rather nicely in her need to be filled[else]. Her equinoid pussy stretches a little to take your huge member, but is quite accommodating. She moans and grips you even harder, reaching a hard and messy orgasm even as you're still pushing deeper into her thick-lipped sex[end if].";
		say "     Her long, equine cock rests across her body, twitching and spurting precum across the underside of her huge breasts as you pound into her. Quite aroused by the sight of this once-strong warrior reduced to a horny slut beneath you, it doesn't take long for the rhythmic contractions to push you over the edge. You drive hard into her sweltering depths, blasting your hot seed into her pussy. She arches her back and cums hard as well, painting her body with equine seed as you fill her. '[one of]Oh yes, breed me you great warrior[or]Fill me with your seed[or]Put your strong colt in me[or]Breed me like your mare[or]Oh, breed me you powerful stud[at random]!' she whinnies loudly. You do your best to satisfy her request, draining your balls into her before withdrawing. As you rise to your feet, she moans softly and simply lays there, rubbing her well-filled belly with a smile on her face. You can't help but grin, knowing another of her tribe will have to replace her on patrol if you've just knocked her up.";
		now equinoiddefeat is 0;
		decrease Libido of Player by Libido of Player / 5;
		increase morale of Player by 1;
	else:
		say "     The black furred creature sinks to the ground, then slumps over, panting and defeated.";
	if equinoidstatus < 4, increase equinoidstatus by 1;
	if equinoidstatus is 4:
		say "[equinoidcampinvite]"; [Invite to visit the black equinoid camp. See the Equinoid Camp file]
	else if HP of Roman is 8: [Football team recruits quest. Lower priority than Equinoid Camp]
		say "     [one of]As you look at the hermaphrodite, you remember Roman's request. You mention why you are here, in the hopes that this creature is the one that you are looking for. 'Gorillas? Ah, yes. They try to come around from time to time, as if they could tread on our herd lands freely. I think I wanted to join them, but my memories are all fuzzy. And who would join these weaklings anyway.'[or]You recognize the equinoid as the one Roman wants you to recruit. 'You again,' the horse says as she recognizes you too. 'Trying to convince me to quite my brethren once again?'[stopping]";
		let bonus be (( the Charisma of the player minus 10 ) divided by 2);
		increase bonus by XP of Roman;
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]16[roman type] (Charisma Check):[line break]";
		increase diceroll by bonus;
		if diceroll > 16:
			say "     You entice the equinoid with some sweet words. The Gorillas want your strength, you say. They want someone strong to teach them. Besides, this would be the occasion to pass the message that these parts are yours, and prevent further trespassing. 'Mmm. You have a point,' the horse-herm says. 'They really have no stamina at all. They could not keep up with us for even a single hour. Very well. I will ask Nakoma to be sent to your Camp, as an emissary. I will shape up these apes while I'm at it.";
			say "     She trots away, leaving you free to report your success to Roman, at the football field.";
			now HP of Roman is 9;
		else:
			say "     'Don't try to use sweet words on me!' the horse-herm says, as you try to flatter her. 'I would rather be caught dead than spend time among these weaklings, even if you beat me.' With these angry words, she stands back up and limps away. You will have to try again, and be more careful with your words next time.";

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
	add "Black Equinoid" to infections of EquineList;
	add "Black Equinoid" to infections of FurryList;
	add "Black Equinoid" to infections of NatureList;
	add "Black Equinoid" to infections of HermList;
	add "Black Equinoid" to infections of BluntCockList;
	add "Black Equinoid" to infections of SheathedCockList;
	add "Black Equinoid" to infections of BipedalList;
	add "Black Equinoid" to infections of TailList;
	now Name entry is "Black Equinoid"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]She slams you with one of her great hoof hands.[or]With a sudden snap, you find your midsection being indented by a terribly forceful hoof.[or]She hefts you up suddenly and gives a great toss![or]She stomps down sharply, smacking your foot with her hoof, ow.[at random]";
	now defeated entry is "[beattheequinoid]";
	now victory entry is "[equine attack]";
	now desc entry is "[mongendernum 5]A tall, imposing figure. A horse on two feet, towering over most, with great muscles under dense black fur. She has bright [one of]brown[or]hazel[or]green[at random] eyes and white, flat teeth. She is dressed in a simple sheet, like a toga that wraps around her well-formed body. Her great breasts are tight, as taught as the beefy muscles of her arms and legs. Her hips are round and waist slim, giving a pleasing shape. When she sees you, her lips peel back to expose those teeth. '[one of]Begone from our herd lands![or]Your kind are not welcome here![or]You do not belong here![at random],' she says, charging at you with red in her eyes. In the great motion it becomes clear that she is male as well, a huge sheath wobbling along her belly, her softball-sized nuts swaying as she runs.";
	now face entry is "an equine face, with an elongated snout and broad, flat teeth set in your long muzzle"; [ Face. Format as Your face is [Face of Player]. ]
	now body entry is "tall and well muscled, with delightful curves despite your overall toned appearance"; [ Body. Format as "Your body is [Body of Player]." ]
	now skin entry is "[one of]black furred[or]coarsely furred[or]furry[at random]"; [ Skin. Format as "Looking at yourself, your body is covered in [Skin of Player] skin." ]
	now tail entry is "You have a short black tail that flicks behind you. The horse tail particularly likes to swat at any flies that approach."; [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "[one of]flat-headed[or]equine[or]mottled pink[at random]"; [ Cock. Format as "You have a 'size' [Cock of Player] cock." ]
	now face change entry is "it draws forward into a long equine snout"; [ Face TF text. Format as "Your face tingles as [face change entry]." ]
	now body change entry is "you swell with the appearance of muscles and height, growing taller by the moment"; [ Body TF text, format as "Your body tingles as [body change entry]. ]
	now skin change entry is "coarse black fur spreads rapidly over your form"; [ Skin TF text, format as "Your skin tingles as [skin change entry]. ]
	now ass change entry is "a short, black, straw-like tail emerges from above it, flicking lightly"; [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "it twitches with sudden arousal, the end flattening in an equine manner, forming the reverse bell shape endemic of the species and tinting a mottled pink and black"; [ Cock TF text, format as "Your groin tingles as [cock change entry]." ]
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
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 15; [ Length in inches infection will make cock grow to if cocks. ]
	now Ball Size entry is 3; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 9; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 15; [ Depth in inches of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 10; [ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 30; [ Target libido the infection will rise towards. ]
	now loot entry is "lucky horseshoe"; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 30; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 4; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "muscular"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "equine"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own] [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
	now Name entry is ""; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 5; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 5; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is ""; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [Head Description of Player]. You have [Eye Adjective of Player], [Eye Color of Player] eyes and an overall [Gender Adjective of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...) to fit "On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style."]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...) to go into "You have a [Hair Color of Player] [Beard Style of Player]."]
	now Body Hair Length entry is 0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective  is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3; [mouth circumference 1-5, see Mouth Circumference Adjective]
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Gender Adjective of Player] with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 1], covered in [Torso Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Torso Color of Player] skin[end if]."]
	now Torso Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [torso adornments of Player]."]
	now Torso Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Torso Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Torso Pattern entry is ""; [single word color adjective for the dominant pattern of the skin/fur/feathers/scales]
	now Breast Adjective entry is ""; [adjective(s) example: round, pointy, perky, saggy, bouncy. This would serve as either a general appearance of a infections breasts or possibly something that may be effected by a item or NPC.]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Nipple Count entry is 2; [count of nipples]
	now Nipple Color entry is ""; [one word color descriptor]
	now Nipple Shape entry is ""; [shape example: any shape will do as long as it has a baseline with a current infection or item]
	now Back Change entry is ""; [partial sentence that fits in: "Your back [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Back Change entry]."]
	now Back Adornments entry is ""; [partial sentence to fit: "Your back tickles with the feeling of movement caused by [back adornments of Player]."]
	now Back Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Back Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is ""; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is ""; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Arms Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/octapedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]." (For players with skin, instead of the period: ", covered in [Ass Color of Player] skin and [Body Hair Description of Player]"]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite (< 3), shallow (< 5), average (< 9), deep (< 15), bottomless (15+)"]
	now Asshole Tightness entry is 3; [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "extremely tight, tight, receptive, open, gaping"]
	now Asshole Color entry is ""; [one word color descriptor]
	now Cock Count entry is 0;
	now Cock Girth entry is 0; [thickness 1-5, generates the Cock Girth Adjective]
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 0; [length in inches]
	now Cock Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cock Change entry is ""; [partial sentence that fits in: "Your cock [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is ""; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [cock adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock description of Player]."]
	now Cock Color entry is ""; [one word color descriptor]
	now Ball Count entry is 0; [allowed numbers: 1 (uniball), 2 or 4]
	now Ball Size entry is 0; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is ""; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [ball description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]


when play ends:
	if BodyName is "Black Equinoid":
		if humanity of Player < 10:
			if bee girl is tamed:
				say "     Following a compulsion, you seek out other horses in the park and are soon welcomed into the herd proper. Together, you defend the park against interlopers, be they mutant or human. The exception are the bees; they're tolerated for their benefit to the local flora and their delicious honey. Because of this, Honey - who accompanied you back to the park - is welcomed by the black equinoids of the herd and lavished with attention. They show her a lovely tree surrounded by flowers, and she soon sets up her home there, becoming a new queen bee and raising a new hive. Because of your bond with her, there is a peaceful alliance between the herd and the hive. The bears are kept away, the hive thrives, and the equinoids are allowed to harvest honey in peace.";
				say "     There are some city horses as well that come by from time to time. They seem friendly enough at first, but the bees overhear them secretly whispering about making your people into slaves and whores. Warriors at heart, the herd attacks and drives off these foul, urban horses before they can enact their unsavory schemes. With the herd's numbers and the bees on watch from the air, these interlopers are kept from raiding, and some are even captured and made to accept the proper ways of a natural, equine warrior.";
			else:
				say "     Following a compulsion, you seek out other horses in the park and are soon welcomed into the herd proper. Together, you defend the park against interlopers, be they mutant or human. The exception are the bees; they're tolerated for their benefit to the local flora and their delicious honey. There are some city horses as well that come by from time to time. They seem friendly enough at first, but when the herd members who go with them don't return - or have been reduced to horny sluts who will no longer fight - the interlopers are no longer permitted to come. They send raids from time to time, but the herd knows the park forests well and survives with only a few losses.";
		else:
			say "     There is some confusion at first when your equinoid body is brought in, for there are several strains of equines and proper classification is slow. It seems ones like you are rare, few leaving the park where they're established. Once that's resolved, it goes much more smoothly, as you're not considered a dangerous strain. A movie producer spots you on TV as you are released and hires you immediately to play a minotaur-like creature in his upcoming movie. It turns out to be a [one of]big blockbuster, providing more than enough money[or]lukewarm summer movie and provides some cash[or]big flop, but it provides just enough cash[at random] to start a new, peaceful life. Eventually becoming a naturalist, you study nature, and using your movie experience as a hoofhold, you get your own nature show [if intelligence of Player > 14 and charisma of Player > 14]that lasts several seasons. It does rather well, being insightful and intelligent while also well presented and entertaining[else]for a brief time[end if].";

Table of Game Objects (continued)
name	desc	weight	object
"lucky horseshoe"	"A lucky horseshoe. You heard somewhere that throwing it over your shoulder gets good luck. Weird, huh?"	1	lucky horseshoe

lucky horseshoe is a grab object.

instead of sniffing lucky horseshoe:
	say "The horseshoe smells of earth and old metal.";

the usedesc of lucky horseshoe is "[lucky horseshoe use]";

to say lucky horseshoe use:
	say "You hurl the horseshoe over your [one of]left[or]right[at random] shoulder and don't look back, hoping for the best.";
	if a random chance of 1 in 20 succeeds:
		say "As you walk away, you trip over something!";
		sort Table of Random Critters in random order;
		repeat with x running from 1 to the number of rows in Table of Random Critters:
			choose row x in Table of Random Critters;
			if lootchance entry is 0, next;
			let z be loot entry;
			say "Wow, a [z]! It really was lucky!";
			add z to invent of Player;
			break;
	else:
		say "You walk onwards, but nothing happens. Aw...";

Black Equinoid ends here.
