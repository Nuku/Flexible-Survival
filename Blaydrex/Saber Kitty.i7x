Version 1 of Saber Kitty by Blaydrex begins here.
[ Version 1.2 - Minor scene tweaks - Stripes ]
[ Version 1.1.1 - Added to Felinelist - Stripes ]

"Adds Saber Kitty to Flexible Survival's Wandering Monsters table"
[Description text for this Extension.]

Section 1 - Creature Responses

to say saber attack:
	if Player is male:
		say "     The saber kitty swipes at you one more time, ripping your clothes and knocking you down onto your butt. When you stay down she smiles that toothy smile, drawing extra attention to those pearly white fangs of hers. 'Finally, a male to play with,' she says as she saunters over to you, her pussy dripping audibly onto the floor with her desperate, heat-filled need. She frowns when she notices you aren't hard. She pushes your chest, making you lay down, and then straddles your face, keeping her pussy just barely out of reach of your face as she begins to lick your cock. She fondles your cock as she continues licking you. Her breasts rub on your stomach.";
		say "     It isn't long before you begin to smell her heat. The scent starts to fog your mind and you begin to breathe deeply, taking in more and more of her scent. It isn't long before her scent and teasing brings you to a painfully hard erection. The second you are hard, she purrs loudly in delight and wastes no time in turning around and impaling herself on your rod. She begins to ride you with reckless abandon, a rather large puddle of her juices rapidly forming under you.";
		say "     It doesn't take long before she orgasms on your cock, sending you over the edge. When you finally stop filling her tight cunt she gets up. She smiles her toothy smile again. 'Open wide, love,' she says, placing her pussy over your face, letting some of your combined juices drip all over your face. She then reaches down and lifts your balls before licking under them. 'Ooooh. I can't wait for you to join me in this bliss,' she says before sauntering off, leaving a trail of her juices dripping onto the ground.";
	else if Player is female:
		say "     The saber kitty swipes at you one more time, ripping your clothes and knocking you down onto your butt. When you stay down she smiles that toothy smile, drawing extra attention to those pearly white fangs of hers. 'Mmmmmmmmm. A pussy for the pussy,' she says as she reaches down and begins to finger your cunt. 'Too bad you won't get to use it, slut,' she says before forcing your face against her drooling cunt. It doesn't take long before your entire face is covered in her juices. The scent of her overpowering heat begins to fog and your cunt begins to throb with intense need.";
		say "     Despite your need, you can't bring yourself to remove your hands from her thighs as you lustfully lick her cunt. She smirks, grinding her drooling cunt against you. 'Such a good slut. It won't be long before you learn how good it is to be a sexy saber kitty like me if you keep this up,' she says, mewling at your efforts to get her off. It isn't much longer before she cums hard over your already soaked face. Before she can go your lust gets the better of you and you begin to tend to her some more. This only bring more mewling and purring from her. 'Oh yes, you'll make such a good saber kitty,' she says in a moan. You bring her to several orgasms before you get too tired. She smiles and walks off, leaving a trail of her dripping juices on the ground and you completely unsated.";
	else:
		say "     The saber kitty swipes at you one more time, ripping your clothes and knocking you down onto your butt. When you stay down, she eyes your crotch with disappointment. 'No cock or pussy for the kitty? Well, you'll just have to make it up to me in another way, slut,' she rumbles before forcing your face against her drooling cunt. It doesn't take long before your entire face is covered in her juices. The scent of her overpowering heat begins to fog your senses and you are filled with an intense arousal you can do little to sate.";
		say "     Despite your need, you can't bring yourself to remove your hands from her thighs as you lustfully lick her cunt. She smirks, grinding her drooling pussy against you. 'Such a good slut. It won't be long before you learn how good it is to be a sexy saber kitty like me if you keep this up,' she says, mewling at your efforts to get her off. It isn't much longer before she cums hard over your already soaked face. Before she can go your lust gets the better of you and you begin to tend to her some more. This only bring more mewling and purring from her. 'Oh yes, you'll make such a good saber kitty,' she says in a moan. You bring her to several orgasms before you get too tired. She smiles and walks off, leaving a trail of her dripping juices on the ground and you completely unsated.";
	infect;

to say saber loss:
	if Player is male:
		say "     She staggers back as you deal the final blow. After recovering she purrs happily at finding someone so strong. She approaches you with her toothy smile, drawing extra attention to her pearly white fangs. She gently rubs herself against you, the scent of her heat filling the air. 'Wanna play with the saber kitty, love?' she asks, mewling. It's hard to think. Do you take her up on the offer or do you run before it is too late? You might risk infection if you give in...";
		if Player consents:
			say "     The scent of her heat is just too unbearable for you. Sensing your wavering judgement she smirks and purrs loudly in your ear. She reaches down and begins fondling your balls as she nuzzles your cheek, her sharp fags brushing against your cheek. You can't take much more and throw her to the ground. You begin to violently fuck her, wanting nothing more than to breed this sexy saber kitty. She moans loudly, her pussy juices forming a puddle under her.";
			say "     It doesn't take long before you blow your load into her, causing her to purr. 'Thanks, love. How about you clean me out a bit?' she entices. Who could say no to such a sexy kitty? You pull out and put your face next to her pussy. Before you have a chance to react she grabs your head and forces you into her cunt. 'Open wide, love. I want you to get every bit of it so you can become a sexy saber kitty like me!' she says, before pushing out all the cum in her cunt into your mouth as well as a bunch of her own juices. You have no choice but to swallow it all. 'Good, slut. Keep it up and you will have such a wonderful time,' she mewls before sauntering off, leaving a trail of her dripping juices on the ground.";
			infect;
		else:
			say "You realize she might have some ulterior motive and push her away. She frowns and sighs. 'Alright, maybe next time, love,' she says before sauntering off, leaving a trail of her dripping juices on the ground.";
	else:
		say "     She smiles, realizing you are not male. Something about this just doesn't seem right. 'Don't worry, love. You're already on your way to becoming a sexy saber kitty slut like me. Have fun,' she says before sauntering off leaving a trail of her dripping juices on the ground.";
	if bradfordBountyNum is 3:
		if bradfordbounty > 0:
			LineBreak;
			decrease bradfordbounty by 1;
			say "     You hear a soft [if bradfordbounty is 0]double-[end if]ding from your pack. Reminded of your deal with the bounty hunter, Bradford, you pull out the contract he's splitting with you. Looking at it, you can see that the printed value denoting the number remaining has gone down to [bold type][bradfordbounty][roman type]. You can't discern how this was accomplished; the paper and the printing on it seem entirely ordinary[if bradfordbounty is 0]. Seeing how that's completed it, you should be able to see him about getting your cut of the reward[end if].";
		else:
			say "     This encounter reminds you of your deal with bounty hunter, Bradford. You should go see him about getting your share of the reward.";

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
	add "Saber Kitty" to infections of FelineList;
	add "Saber Kitty" to infections of FurryList;
	add "Saber Kitty" to infections of NatureList;
	add "Saber Kitty" to infections of FemaleList;
	add "Saber Kitty" to infections of BarbedCockList;
	add "Saber Kitty" to infections of SheathedCockList;
	add "Saber Kitty" to infections of BipedalList;
	add "Saber Kitty" to infections of TailList;
	now Name entry is "Saber Kitty"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]The sexy saber kitty pounces on you and bites into your shoulder, sinking her large fangs in. She eventually lets go, but it hurt a lot[or]She swipes at you with her claws, scratching you. Hopefully that won't leave a mark[or]She smirks and grinds her body against your. At first nothing seems suspicious, but then she slashes your side with her claw, leaving a gash as she jumps away[at random]."; [ Successful attack message ]
	now defeated entry is "[saber loss]";
	now victory entry is "[saber attack]";
	now desc entry is "[mongendernum 4]     As you're walking you hear a faint dripping on the ground behind you. You rapidly spin around to see a sexy anthro Saber-toothed Tiger in front of you. It doesn't take long to find the source of the dripping sound as you look down to see her red, swollen pussy dripping copious amounts of fluids onto the ground. She is obviously in heat, and the smell hits you hard in seconds. Her body is beautiful and athletic, with abs and faint but powerful muscles. 'Don't worry, love. You'll learn to enjoy the heat and being knocked up,' she adds before pouncing.";
	now face entry is "feline and beautiful female smilodon, with two sexy fangs showing at all times"; [ Face description, format as "Your face is (your text)."]
	now body entry is "feminine, with curves to your body that are to die for and some sexy abs. Your arms have muscles that barely show, but show enough to show that you are indeed stronger than it would seem and end in clawed paws that still can grip things. Your legs have strong thighs for leaping and pouncing on your prey but are shapely and attractive as well as muscled and end in digitigrade feet";
	now skin entry is "covered in a soft beige fur that turns white on the front of your torso and the inside of your ass cheeks";
	now tail entry is "You have a short saber kitty tail that is covered in fur. It is adorable and seems to wag like a dog tail when you get too excited."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "barbed and knotted saber"; [ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "you feel your ears tingle and move to the top of your head and arch up in a feline fashion. You watch in horror and fascination as your face pushes out into a cute feline muzzle. Your top canine teeth begin to ache as they grow and push their way out so they are always showing"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "your body aches pleasurably as all excess fat dissipates and it takes on an athletic and feminine appearance. Your legs creak as they become digitigrade. Your arms become sleek and yet slightly muscular ending in pawed hands that are fully usable and have claws"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "soft, short beige fur sprouts all over your body except on the front of your torso and the inside of your legs and butt where it is white"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "it pushes out into a shapely, feminine, yet muscular ass. You can't help but moan as a tail begins to push out. It is short and covered in fur, but adorable"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "you fall to your knees, humping the air. The end tapers and grows feline-like barbs. The base begins to form a large knot, like that of a canine. As the transformation ends the cock retreats into a newly formed sheath"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 10;      [ These are now the creature's stats... ]
	now dex entry is 15;      [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 10;      [ These values may be used as part of alternate combat.]
	now per entry is 10;
	now int entry is 1;
	now cha entry is 20;
	now sex entry is "Female";        [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 45;               [ The monster's starting HP. ]
	now lev entry is 10;              [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 12;             [ Monster's average damage when attacking. ]
	now area entry is "Outside";      [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 0;             [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 0;       [ Length infection will make cock grow to if cocks. ]
	now Ball Size entry is 0;        [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2;           [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 5;       [ Size of breasts the infection will try to attain. ]
	now Male Breast Size entry is 0;  [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1;             [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 15;      [ Depth of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 6;        [ Width of female sex the infection will try to give a player. ]
	now libido entry is 95;           [ Target libido the infection will rise towards. ]
	now loot entry is "smilodon cum"; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 75;       [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "";
	now CumItem entry is "smilodon cum";
	now TrophyFunction entry is "-";
	now scale entry is 3;             [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "slender, yet slightly muscled and sexy";  [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender" Use [one of] to vary ]
	now type entry is "feline";
	now magic entry is false;         [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;     [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own] [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0;    [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

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
	[Mouth Length Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
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
]


Table of Game Objects (continued)
name	desc	weight	object
"smilodon cum"	"A small amount of smilodon cum you've gathered. You just collect everything, don't you?"	1	smilodon cum

instead of sniffing smilodon cum:
	say "The cum has a strong, somewhat nutty scent.";

smilodon cum is a grab object. smilodon cum is cum.
smilodon cum is infectious. Strain of smilodon cum is "Saber Kitty".
Usedesc of smilodon cum is "[smilodon cum use]";

to say smilodon cum use:
	say "Taking out the small bottle you keep your smilodon cum in, you put it to your lips and chug down the creamy liquid. Tasty, and somehow you feel the need for more of it...";

Section 3 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Saber Kitty Infection"	"Infection"	""	Saber Kitty Infection rule	1000	false

This is the Saber Kitty Infection rule:
	if Player has a body of "Saber Kitty":
		trigger ending "Saber Kitty Infection";
		if humanity of Player < 10:
			say "     You can't hold back the urges of your feline need anymore. You go in search for a powerful virile male, preferable another smilodon. Every male you come across you can't help but want to show the pleasures of being a sexy saber kitty, as well as females. Whenever you run across a fellow smilodon you can't help but submit and play around. Your belly is almost always full of an oncoming litter, otherwise you suffer a never ending heat.";
		else:
			say "     You manage to make it out of the city, but something isn't right. There is always a scratching feeling in the back of your mind. Each passing heat the scratching grows worse and worse. You spend your days trying to get by, living in this new society, but everything seems wrong. You need a male saber and need a pack. It doesn't take long before you find a sexy tiger and seduce him. You don't know how, but you manage to turn him into a Smilodon. This simple act causes you to lose to your infection. Your new mate spends the next day rutting you until you are sure to be with his litter. After that you and he begin to start raping anyone in sight, turning them into saber kitties like yourself, with only your mate as the only male. Within 24 hours the whole city is nothing but Smilodons. The city is then quarantined. You spend the rest of your days doing nothing but breeding, always having a litter growing in you or being in heat.";

Saber Kitty ends here.
