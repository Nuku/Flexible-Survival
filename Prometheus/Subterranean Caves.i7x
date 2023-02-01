Version 1 of Subterranean Caves by Prometheus begins here.

a postimport rule: [bugfixing rules for players that import savegames]
	if Station Tour is resolved:
		change the up exit of Tunnel Hub to Tunnel Underground;
		change the down exit of Tunnel Underground to Tunnel Hub;

Section 1 - Underground Locations

instead of going down from Tunnel Underground:
	say "     You follow the tunnel downwards for several hours.";
	follow turnpass rule;
	move Player to Tunnel Hub;

instead of going up from Tunnel Hub:
	say "     You follow the tunnel upwards for several hours.";
	follow turnpass rule;
	move Player to Tunnel Underground;


Section 1.1 - Tunnel and Tunnel Hub

Table of GameRoomIDs (continued)
Object	Name
Tunnel Underground	"Tunnel Underground"

Tunnel Underground is a room.
Description of Tunnel Underground is "[TunnelUndergroundDesc]";

to say TunnelUndergroundDesc:
	say "     The tunnel is relatively featureless and in good shape given that there are no supports or any other safety features. It descends at quite a steep angle and it takes time and concentration to traverse it safely.";


Table of GameRoomIDs (continued)
Object	Name
Tunnel Hub	"Tunnel Hub"

Tunnel Hub is a room.
Tunnel Hub is south of Northern Underground Passage.
Description of Tunnel Hub is "[TunnelHubDesc]";

to say TunnelHubDesc: [Central Location]
	say "     The expansive cavern is filled with luminous blue and green fungi, though the mouths of the many tunnels remain shrouded in shadow. On closer inspection, you realize that [bold type]all the tunnels except one to the the north seem to be sealed[roman type].";


Table of GameRoomIDs (continued)
Object	Name
Northern Underground Passage	"Northern Underground Passage"

Northern Underground Passage is a room.
Northern Underground Passage is north of Tunnel Hub.
Northern Underground Passage is south of Station 69 Entrance.
Description of Northern Underground Passage is "[NorthernUndergroundPassageDesc]";

to say NorthernUndergroundPassageDesc: [Passage to Station 69]
	say "     The tunnel gently slopes upwards away from the fungi-covered cavern, occasionally curving to the left or the right. Frequent metal struts reinforcing the roof reassure you a little as to the structural integrity of the passage. Nonetheless, you continue as quickly as possible, your path lit up by flickering light-tubes.";


Table of GameRoomIDs (continued)
Object	Name
Eastern Underground Passage	"Eastern Underground Passage"

Eastern Underground Passage is a room.
Description of Eastern Underground Passage is "[EasternUndergroundPassageDesc]";

to say EasternUndergroundPassageDesc: [Passage to Beard Hearth]
	say "     The tunnel stretches in a straight line, the ground surprisingly smooth and flat. A mixture of robust wooden braces and stone pillars support the roof, looking distinctly suitable to their task. Your path is lit by flaming torches nestled in sconces of the stone pillars.";


Table of GameRoomIDs (continued)
Object	Name
Western Underground Passage	"Western Underground Passage"

Western Underground Passage is a room.
Description of Western Underground Passage is "[WesternUndergroundPassageDesc]";

to say WesternUndergroundPassageDesc: [Passage to The Illuminated]
	say "     The tunnel gently weaves back and forth, a metal railing embedded into the wall reducing your chance of tripping. Metal hexagonal struts brace the walls and roof, giving an air of professionalism. Your path is lit by strange floating motes of light, unaffected by air flow.";


Table of GameRoomIDs (continued)
Object	Name
Southern Underground Passage	"Southern Underground Passage"

Southern Underground Passage is a room.
Description of Southern Underground Passage is "[SouthernUndergroundPassageDesc]";

to say SouthernUndergroundPassageDesc: [Passage to the Children of the Dark]
	say "     The tunnel twists and turns on an incline down from the fungi-covered cavern, often feeling like it is doubling back on itself. Strangely, the walls seem to be reinforced by roots, making you wonder what sort of plant could be this deep beneath a city. Your path is lit by frequent patches of the luminous mushrooms.";

Section 1.2 - Station 69

Table of GameRoomIDs (continued)
Object	Name
Station 69 Entrance	"Station 69 Entrance"

Station 69 Entrance is a room.
Station 69 Entrance is north of Northern Underground Passage.
Station 69 Entrance is south of Station 69 Marketplace.
Description of Station 69 Entrance is "[Station69EntranceDesc]";

to say Station69EntranceDesc:
	say "     You stand before a spotless sign proudly proclaiming 'Welcome to Station 69'. A metal and stone gateway looms in front of you, guarded by several ants, various weapons couched on their shoulders as they survey the tunnel to the south. Through the open gate, you can see the colorful cloth of the merchant stalls. Beneath your feet, the remains of train tracks can be seen peeking through the dirt, though you would be surprised if you were that close to the surface.";

Table of GameRoomIDs (continued)
Object	Name
Station 69 Marketplace	"Station 69 Marketplace"

Station 69 Marketplace is a room.
Station 69 Marketplace is north of Station 69 Entrance.
Station 69 Marketplace is west of Ant Nest Court.
Station 69 Marketplace is east of Dungeoneering Guild.
Description of Station 69 Marketplace is "[Station69MarketplaceDesc]";

to say Station69MarketplaceDesc:
	say "     Various empty merchant stalls fill the merchant district, such a grand display of trade currently suspended due to an argument over fees. Judging from the signs, when business resumes you will be able to buy various things including food, clothes, and more specialty goods. The Merchant district seems well-tended, a cleaning crew ensuring that it is kept free of litter and dirt, giving you a nod as they pass by sweeping. In the center you can see Webber flicking through the contents of a clipboard. To the [bold type]east[roman type] you can see the entrance to the Ant Nest, more guards standing at the opening to the cave. To the [bold type]west[roman type] you can see the Dungeoneering Guild, would-be adventurers trickling in and out of its wide doorway.";

Table of GameRoomIDs (continued)
Object	Name
Ant Nest Court	"Ant Nest Court"

Ant Nest Court is a room.
Ant Nest Court is east of Station 69 Marketplace.
Ant Nest Court is west of Ant Nest Royal Chamber.
Description of Ant Nest Court is "[AntNestCourtDesc]";

to say AntNestCourtDesc:
	say "     Though the majority of people in the hall are ants, many of them rushing in and out of side-doors fulfilling their duties, there are also visitors from outside, some of whom look like merchants while others could just be normal citizens of Station 69. The walls are smooth earth, elegant wooden bracing criss-crossing the dirt as it arcs up in a gentle dome. Large candelabras light the room, the sweet smell of beeswax soothing though making you wonder where they got it from. To the [bold type]east[roman type] you can see the door to the Queen's private chambers, with the usual pair of guards standing watch outside. To the [bold type]west[roman type], you can see the exit back into the Marketplace.";

Table of GameRoomIDs (continued)
Object	Name
Ant Nest Royal Chamber	"Ant Nest Royal Chamber"

Ant Nest Royal Chamber is a room.
Ant Nest Royal Chamber is east of Ant Nest Court.
Description of Ant Nest Royal Chamber is "[AntNestRoyalChamberDesc]";

to say AntNestRoyalChamberDesc:
	say "     The Queen's personal chambers are comfortably decorated, tapestries hanging from the stone walls and thick rugs on the floor. Sitting in a comfortable armchair, you can see Myra perusing some reports, her two personal guards, Emmett and Milly standing at a polite distance from her side, diligently watching the door out to the common area to the [bold type]west[roman type]. Curtains obscure your view of the Queen's bed in the far corner and a glare from Emmett dissuades you from approaching it. In the center of the room, you can see a table with four chairs around it, likely where the three of them have their meals.";

Table of GameRoomIDs (continued)
Object	Name
Dungeoneering Guild	"Dungeoneering Guild"

Dungeoneering Guild is a room.
Dungeoneering Guild is west of Station 69 Marketplace.
Dungeoneering Guild is south of Subterranean Arena.
Description of Dungeoneering Guild is "[DungeoneeringGuildDesc]";

to say DungeoneeringGuildDesc:
	say "     The main hall of the Dungeoneering Guild is very busy, though the majority of people seem to be standing off to the side, discussing their recent adventures, bemoaning bad luck, and otherwise socializing. At the central desk, Celeste, a moth-girl sits, mesmerized by a lava lamp in front of her, stacks of papers beside her. Everything seems to be made of wood, floor, walls and ceiling. 'No Entry' signs by the doors to the south and west prohibit you from going deeper into the guild, but to the [bold type]north[roman type] lies the way to the arena, where you are most certainly welcome. To the [bold type]east[roman type] lies the exit back out to the marketplace.";

Table of GameRoomIDs (continued)
Object	Name
Subterranean Arena	"Subterranean Arena"

Subterranean Arena is a room.
Subterranean Arena is north of Dungeoneering Guild.
Description of Subterranean Arena is "[SubterraneanArenaDesc]";

to say SubterraneanArenaDesc:
	say "     You stand in the center of the arena, the domain of Belliandra, the Arena Master. The feline is a few meters away helping a badger work on his footwork as he stumbles around a training mannequin. Though you have yet to see a match, the arena is used for adventurers and volunteers to display their prowess against each other with blunted weapons or their fists for the entertainment of spectators, Belliandra always watching to later give advice or to step in if needed. The ground is sand, able to soak up the sweat of the fighters that perform here and providing a mostly stable surface for them. The stands around you are made of wood, sturdy with cushioned seats. To the [bold type]south[roman type] lies the way back to the Dungeoneering Guild.";


Section 2 - NPCs

Section 2.1 - Station 69 NPCs

Section 2.1.1 - Webber, Spider Grand Merchant

Table of GameCharacterIDs (continued)
object	name
Webber	"Webber"

Webber is a man.
ScaleValue of Webber is 3. [human sized]
Body Weight of Webber is 5. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Webber is 7. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Webber is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Webber is 6. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Webber is 4. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Webber is 6. [length in inches]
Breast Size of Webber is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Webber is 0. [count of nipples]
Asshole Depth of Webber is 8. [inches deep for anal fucking]
Asshole Tightness of Webber is 1. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Webber is 1. [number of cocks]
Cock Girth of Webber is 3. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Webber is 6. [10 Inches]
Ball Count of Webber is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Webber is 3. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"] [Increase by 1 for Alpha, decrease by 1 for Omega]
Cunt Count of Webber is 0. [number of cunts]
Cunt Depth of Webber is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Webber is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Webber is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Webber is false.
PlayerRomanced of Webber is false.
PlayerFriended of Webber is false.
PlayerControlled of Webber is false.
PlayerFucked of Webber is false.
OralVirgin of Webber is false.
Virgin of Webber is false.
AnalVirgin of Webber is true.
PenileVirgin of Webber is false.
SexuallyExperienced of Webber is true.
TwistedCapacity of Webber is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Webber is true. [steriles can't knock people up]
MainInfection of Webber is "".
Description of Webber is "[WebberDesc]".
Conversation of Webber is { "Jolly Merchant Talk" }.
The scent of Webber is "     Webber smells of treated fabric, though there are definitely earthy overtones too."

to say WebberDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Webber] <- DEBUG[line break]";
	say "     Webber is a portly anthropomorphic trapdoor spider with eight beady eyes that regard you with good humor as you approach. A little over 6 foot, he wears comfortable self-tailored clothes - shirt, waistcoat, and trousers - over his brown and black-furred body. He walks on two legs, leaving his other three pairs of limbs to act as arms, each tipped with claw-like hands. His abdomen is folded up behind him, gently cradled in a sling, the straps of which are secured around his broad chest and shoulders. You know that he is capable of producing silk from his spinnerets which he uses for the clothes and fabrics that he has gained mercantile success from. You are sure that he is male, though you have yet to see his genitals.";
	say "     'Just window-shopping, I take it?' he asks as you continue to gaze at him. He is affable and calm, a personality that has likely endeared him to many within the station and likely a factor in his position as Grand Merchant. Despite his position, he seems to remain approachable to all within the station as well as some visitors from the other subterranean communities. Though he doesn't give his merchandise away, he is willing to haggle or come to (non-sexual) arrangements when a customer protests his prices, though given that he doesn't really have any expenses for his business, it doesn't take much for him to profit. 'Look all you want, but make sure that you can afford the price if you want to touch.' For a moment you think that he is talking to you, snapping you out of your thoughts, before you realize that he is warning a dirt-covered dwarf who then proceeds to grumble and stomp away.";

instead of conversing the Webber:
	say "     '[one of]Give my regards to Queen Myra is you see her. I admit that I haven't had much time to visit her recently and we haven't been able to properly talk when she's been browsing the stalls[or]Celeste is really obsessed with that lava lamp. I don't know who gave it to her, but she seldom takes her eyes off it when she isn't working[or]If you ever want some clothes tailored to you, no matter your size, I'm sure that I can do it. For a price[or]Whoever made Belliandra's armor knew what they were doing. Tough, comfortable, and supportive in all the right places, not to mention it compliments her figure. Don't tell her that I said that last bit though[at random].'";

instead of fucking Webber:
	say "     'I will admit that I enjoy sex as much as the next guy, but I hardly know you,' Webber chortles. 'Perhaps when you've done more for our humble settlement.'";

[Section 2.1.2 - Lumio, Dissenting Bioluminescent Gecko

Table of GameCharacterIDs (continued)
object	name
Lumio	"Lumio"

Lumio is a man.
ScaleValue of Lumio is 0. [human sized]
Body Weight of Lumio is 0. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Lumio is 0. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Lumio is 0. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Lumio is 0. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Lumio is 0. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Lumio is 0. [length in inches]
Breast Size of Lumio is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Lumio is 0. [count of nipples]
Asshole Depth of Lumio is 0. [inches deep for anal fucking]
Asshole Tightness of Lumio is 0. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Lumio is 0. [number of cocks]
Cock Girth of Lumio is 0. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Lumio is 0. [10 Inches]
Ball Count of Lumio is 0. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Lumio is 0. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"] [Increase by 1 for Alpha, decrease by 1 for Omega]
Cunt Count of Lumio is 0. [number of cunts]
Cunt Depth of Lumio is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Lumio is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Lumio is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Lumio is false.
PlayerRomanced of Lumio is false.
PlayerFriended of Lumio is false.
PlayerControlled of Lumio is false.
PlayerFucked of Lumio is false.
OralVirgin of Lumio is true.
Virgin of Lumio is true.
AnalVirgin of Lumio is true.
PenileVirgin of Lumio is true.
SexuallyExperienced of Lumio is false.
TwistedCapacity of Lumio is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Lumio is true. [steriles can't knock people up]
MainInfection of Lumio is "".
Description of Lumio is "[LumioDesc]".
Conversation of Lumio is { "Woof grrr" }.
The scent of Lumio is "     Lumio smells very strongly of lupine arousal, the heady pheromones likely to make you light-headed should you remain long."

to say LumioDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Lumio] <- DEBUG[line break]";
	say "     ";
	say "     ";

instead of conversing the Lumio:
	say "     ";

instead of fucking Lumio:
	say "     ";]

[Section 2.1.3 - Malkum, Claustrophobic Dwarf

Table of GameCharacterIDs (continued)
object	name
Malkum	"Malkum"

Malkum is a man.
ScaleValue of Malkum is 0. [human sized]
Body Weight of Malkum is 0. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Malkum is 0. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Malkum is 0. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Malkum is 0. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Malkum is 0. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Malkum is 0. [length in inches]
Breast Size of Malkum is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Malkum is 0. [count of nipples]
Asshole Depth of Malkum is 0. [inches deep for anal fucking]
Asshole Tightness of Malkum is 0. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Malkum is 0. [number of cocks]
Cock Girth of Malkum is 0. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Malkum is 0. [10 Inches]
Ball Count of Malkum is 0. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Malkum is 0. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"] [Increase by 1 for Alpha, decrease by 1 for Omega]
Cunt Count of Malkum is 0. [number of cunts]
Cunt Depth of Malkum is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Malkum is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Malkum is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Malkum is false.
PlayerRomanced of Malkum is false.
PlayerFriended of Malkum is false.
PlayerControlled of Malkum is false.
PlayerFucked of Malkum is false.
OralVirgin of Malkum is true.
Virgin of Malkum is true.
AnalVirgin of Malkum is true.
PenileVirgin of Malkum is true.
SexuallyExperienced of Malkum is false.
TwistedCapacity of Malkum is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Malkum is true. [steriles can't knock people up]
MainInfection of Malkum is "".
Description of Malkum is "[MalkumDesc]".
Conversation of Malkum is { "Woof grrr" }.
The scent of Malkum is "     Malkum smells very strongly of lupine arousal, the heady pheromones likely to make you light-headed should you remain long."

to say MalkumDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Malkum] <- DEBUG[line break]";
	say "     ";
	say "     ";

instead of conversing the Malkum:
	say "     ";

instead of fucking Malkum:
	say "     ";]

[Section 2.1.4 - Whaife, Orphaned Dark Elf

Table of GameCharacterIDs (continued)
object	name
Whaife	"Whaife"

Whaife is a woman.
ScaleValue of Whaife is 0. [human sized]
Body Weight of Whaife is 0. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Whaife is 0. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Whaife is 0. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Whaife is 0. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Whaife is 0. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Whaife is 0. [length in inches]
Breast Size of Whaife is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Whaife is 0. [count of nipples]
Asshole Depth of Whaife is 0. [inches deep for anal fucking]
Asshole Tightness of Whaife is 0. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Whaife is 0. [number of cocks]
Cock Girth of Whaife is 0. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Whaife is 0. [10 Inches]
Ball Count of Whaife is 0. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Whaife is 0. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"] [Increase by 1 for Alpha, decrease by 1 for Omega]
Cunt Count of Whaife is 0. [number of cunts]
Cunt Depth of Whaife is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Whaife is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Whaife is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Whaife is false.
PlayerRomanced of Whaife is false.
PlayerFriended of Whaife is false.
PlayerControlled of Whaife is false.
PlayerFucked of Whaife is false.
OralVirgin of Whaife is true.
Virgin of Whaife is true.
AnalVirgin of Whaife is true.
PenileVirgin of Whaife is true.
SexuallyExperienced of Whaife is false.
TwistedCapacity of Whaife is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Whaife is true. [steriles can't knock people up]
MainInfection of Whaife is "".
Description of Whaife is "[WhaifeDesc]".
Conversation of Whaife is { "Woof grrr" }.
The scent of Whaife is "     Whaife smells very strongly of lupine arousal, the heady pheromones likely to make you light-headed should you remain long."

to say WhaifeDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Whaife] <- DEBUG[line break]";
	say "     ";
	say "     ";

instead of conversing the Whaife:
	say "     ";

instead of fucking Whaife:
	say "     ";]

Section 2.1.5 - Celeste, Moth Guild Receptionist

Table of GameCharacterIDs (continued)
object	name
Celeste	"Celeste"

Celeste is a woman.
ScaleValue of Celeste is 3. [human sized]
Body Weight of Celeste is 5. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Celeste is 3. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Celeste is 8. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Celeste is 8. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Celeste is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Celeste is 12. [length in inches]
Breast Size of Celeste is 3. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Celeste is 2. [count of nipples]
Asshole Depth of Celeste is 10. [inches deep for anal fucking]
Asshole Tightness of Celeste is 3. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Celeste is 0. [number of cocks]
Cock Girth of Celeste is 0. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Celeste is 0. [10 Inches]
Ball Count of Celeste is 0. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Celeste is 0. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"] [Increase by 1 for Alpha, decrease by 1 for Omega]
Cunt Count of Celeste is 1. [number of cunts]
Cunt Depth of Celeste is 10. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Celeste is 2. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Celeste is 3. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Celeste is false.
PlayerRomanced of Celeste is false.
PlayerFriended of Celeste is false.
PlayerControlled of Celeste is false.
PlayerFucked of Celeste is false.
OralVirgin of Celeste is true.
Virgin of Celeste is true.
AnalVirgin of Celeste is false.
PenileVirgin of Celeste is true.
SexuallyExperienced of Celeste is false.
TwistedCapacity of Celeste is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Celeste is true. [steriles can't knock people up]
MainInfection of Celeste is "".
Description of Celeste is "[CelesteDesc]".
Conversation of Celeste is { "Fluttery Moth noises" }.
The scent of Celeste is "     Celeste smells of paper, ink, and floral perfume."

to say CelesteDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Celeste] <- DEBUG[line break]";
	say "     Celeste is a moth-woman with dirty-blonde hair and purple eyes. She is wearing a thick brown jersey, modified to have a hole on the back for her wings, and tight black shorts that hug her plump thighs and backside. Her pale skin is covered by a thin, downy layer of fuzz that is soft to touch, though doing so causes her to blush deeply. Two feathery antennae protrude from just above her temple either side of her head, though she seems to only have limited control of their motion. The swell of her C-cup breasts can be seen through her jersey, the combination of the two looking distinctly soft and warm. Her two hands are steepled beneath her chin as she stares with rapt concentration at a glooping lava lamp on her desk.";
	say "     Noticing you, she waves a hand but doesn't shift her focus at all beyond that, enthralled by the lamp. A notice on the front of her desk reads, 'For service, press button'. You know that it merely turns off the light. She has a bubbly and friendly personality, perhaps a little too friendly for one who functionally runs the dungeoneering guild. Despite this, everything is well run and she is popular among the adventurers as well as the rest of the station residents, her cheerful exterior hiding the calculating mind of an administrator extraordinaire. She seems capable of keeping track of guild jobs, adventurer locations, and supply requests, in addition to the daily necessities that any business would require. All of this behind the mesmerized purple eyes that stare into the rise and fall of the ooze before her. With a sigh, you press the button to get her attention. 'Hiya. How can I help you today?'";

instead of conversing the Celeste:
	say "     '[one of]The lamp whispers things to me. Secret things. Forbidden knowledge that could topple empires and destroy reality. But I never seem to be able to remember it a moment later[or]The guild master should really take a more active role in station politics, but all he cares about is getting rich. Perhaps he should join the Merchant Guild instead, though I think Webber would have a problem with that[or]Belliandra is amazing to watch when she puts on a show in the arena, especially with how rare it is. I don't think that I've seen anyone even touch her as she flips and weaves around like a... moth[or]Webber's handsome isn't he? Those hairy legs and huge fangs... It's enough to make a girl go mushy on the inside. But I'm stuck here and he's out there, so it wouldn't work. Plus I'm practically married to the guild. I guess that means that the guild members are my children[at random].'";

instead of fucking Celeste:
	say "     'Awwww, I would love to. But I've got all this paperwork to do first and I don't see myself finishing it any time soon. I'd ask you to help, but the guild master put in place rules after a past incident. No more sex on the job, and no amorous advances on luminous objects,' she apologizes. You blink. There is more to that but you don't dare ask. Yet.";

[Section 2.1.6 - Varenya, Blind Spider Adventurer

Table of GameCharacterIDs (continued)
object	name
Varenya	"Varenya"

Varenya is a woman.
ScaleValue of Varenya is 0. [human sized]
Body Weight of Varenya is 0. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Varenya is 0. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Varenya is 0. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Varenya is 0. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Varenya is 0. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Varenya is 0. [length in inches]
Breast Size of Varenya is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Varenya is 0. [count of nipples]
Asshole Depth of Varenya is 0. [inches deep for anal fucking]
Asshole Tightness of Varenya is 0. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Varenya is 0. [number of cocks]
Cock Girth of Varenya is 0. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Varenya is 0. [10 Inches]
Ball Count of Varenya is 0. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Varenya is 0. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"] [Increase by 1 for Alpha, decrease by 1 for Omega]
Cunt Count of Varenya is 0. [number of cunts]
Cunt Depth of Varenya is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Varenya is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Varenya is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Varenya is false.
PlayerRomanced of Varenya is false.
PlayerFriended of Varenya is false.
PlayerControlled of Varenya is false.
PlayerFucked of Varenya is false.
OralVirgin of Varenya is true.
Virgin of Varenya is true.
AnalVirgin of Varenya is true.
PenileVirgin of Varenya is true.
SexuallyExperienced of Varenya is false.
TwistedCapacity of Varenya is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Varenya is true. [steriles can't knock people up]
MainInfection of Varenya is "".
Description of Varenya is "[VarenyaDesc]".
Conversation of Varenya is { "Woof grrr" }.
The scent of Varenya is "     Varenya smells very strongly of lupine arousal, the heady pheromones likely to make you light-headed should you remain long."

to say VarenyaDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Varenya] <- DEBUG[line break]";
	say "     ";
	say "     ";

instead of conversing the Varenya:
	say "     ";

instead of fucking Varenya:
	say "     ";]

[Section 2.1.7 - Rodrick, Badger Adventurer

Table of GameCharacterIDs (continued)
object	name
Rodrick	"Rodrick"

Rodrick is a man.
ScaleValue of Rodrick is 0. [human sized]
Body Weight of Rodrick is 0. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Rodrick is 0. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Rodrick is 0. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Rodrick is 0. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Rodrick is 0. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Rodrick is 0. [length in inches]
Breast Size of Rodrick is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Rodrick is 0. [count of nipples]
Asshole Depth of Rodrick is 0. [inches deep for anal fucking]
Asshole Tightness of Rodrick is 0. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Rodrick is 0. [number of cocks]
Cock Girth of Rodrick is 0. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Rodrick is 0. [10 Inches]
Ball Count of Rodrick is 0. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Rodrick is 0. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"] [Increase by 1 for Alpha, decrease by 1 for Omega]
Cunt Count of Rodrick is 0. [number of cunts]
Cunt Depth of Rodrick is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Rodrick is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Rodrick is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Rodrick is false.
PlayerRomanced of Rodrick is false.
PlayerFriended of Rodrick is false.
PlayerControlled of Rodrick is false.
PlayerFucked of Rodrick is false.
OralVirgin of Rodrick is true.
Virgin of Rodrick is true.
AnalVirgin of Rodrick is true.
PenileVirgin of Rodrick is true.
SexuallyExperienced of Rodrick is false.
TwistedCapacity of Rodrick is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Rodrick is true. [steriles can't knock people up]
MainInfection of Rodrick is "".
Description of Rodrick is "[RodrickDesc]".
Conversation of Rodrick is { "Woof grrr" }.
The scent of Rodrick is "     Rodrick smells very strongly of lupine arousal, the heady pheromones likely to make you light-headed should you remain long."

to say RodrickDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Rodrick] <- DEBUG[line break]";
	say "     ";
	say "     ";

instead of conversing the Rodrick:
	say "     ";

instead of fucking Rodrick:
	say "     ";]

Section 2.1.8 - Myra, Ant Queen

Table of GameCharacterIDs (continued)
object	name
Myra	"Myra"

Myra is a woman.
ScaleValue of Myra is 4. [large sized]
Body Weight of Myra is 6. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Myra is 5. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Myra is 8. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Myra is 8. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Myra is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Myra is 8. [length in inches]
Breast Size of Myra is 1. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Myra is 0. [count of nipples]
Asshole Depth of Myra is 10. [inches deep for anal fucking]
Asshole Tightness of Myra is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Myra is 0. [number of cocks]
Cock Girth of Myra is 0. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Myra is 0. [10 Inches]
Ball Count of Myra is 0. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Myra is 0. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"] [Increase by 1 for Alpha, decrease by 1 for Omega]
Cunt Count of Myra is 1. [number of cunts]
Cunt Depth of Myra is 10. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Myra is 2. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Myra is 3. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Myra is false.
PlayerRomanced of Myra is false.
PlayerFriended of Myra is false.
PlayerControlled of Myra is false.
PlayerFucked of Myra is false.
OralVirgin of Myra is false.
Virgin of Myra is false.
AnalVirgin of Myra is true.
PenileVirgin of Myra is true.
SexuallyExperienced of Myra is true.
TwistedCapacity of Myra is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Myra is true. [steriles can't knock people up]
MainInfection of Myra is "".
Description of Myra is "[MyraDesc]".
Conversation of Myra is { "I am most amused" }.
The scent of Myra is "     Myra smells of spices and exotic perfumes. The combination of scents is quite appealing."

to say MyraDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Myra] <- DEBUG[line break]";
	say "     Myra is an anthropomorphic bullet ant of just over 7 foot, slightly taller than her two guards, but less broad. She is covered in fuzzy black chitin, though there is a slight red hue to it that almost seems to glow. Two pitch-black eyes stare at you as you gaze at her, betraying little emotion or where exactly her focus is. By comparison, her antennae are much more animated, constantly flicking and quivering, especially when she becomes excited. Being bipedal, she has two sets of arms, though the lower pair remain folded at her side most of the time, only becoming active when she requires the extra hands or strength that they provide. Though it is hidden at the moment, you know that she has a sting hidden in her abdomen. You don't want to know what the nanites might have done to its potency. She wears a simple silk tunic with a rainforest pattern, protecting her decency against your roving eyes, just as Emmett and Milly protect her against physical threats, her A-cup breasts barely noticeable beneath.";
	say "     Clicking her mandibles idly, Myra maintains her focus on reading through reports. She seems relatively friendly, though you would assume that the majority of the station's residents can't just drop in to see her as freely as you. Nonetheless, she seems to have taken up the role of Station 69's primary protector, her many children acting as guards against any threat towards the people living there. Rarely seen without the co-leaders of the royal guard, Emmett and Milly, she occasionally leaves her nest to visit the market or the arena, taking the time to converse with people who approach her. With a polite cough, she signals that you've stared at her more than enough. It would seem that she is a little more self-conscious than many people that you have met.";

instead of conversing the Myra:
	say "     '[one of]It is quite exhausting leading so many people, but not nearly as tiring as it was birthing them. So much mating... Not that I don't enjoy it too[or]Sometimes I feel like Emmett and Milly are a little too protective of me. They can make it a bit difficult for people to talk to me[or]I was an entomologist before all of this. Did I already tell you that? I never imagined that I might one day be queen[or]I can feel your eyes on me. Stop it. You're making me worry that I forgot to get dressed today[at random].'";

instead of fucking Myra:
	say "     Startled at your proposition, she hastily stutters, 'S-s-sorry, but no. I have yet to conclude whether or not you are a suitable partner. Perhaps when you have proven yourself in some way. I know that I may seem a little... promiscuous, given the number of children that I have, but I assure you that their father's and mothers were carefully chosen.' She gives you another look over, clicking her mandibles appreciatively. It would seem that you desire to have your way with this particular royal must be put on hold.";

Section 2.1.9 - Emmett, Ant Royal Guard

Table of GameCharacterIDs (continued)
object	name
Emmett	"Emmett"

Emmett is a man.
ScaleValue of Emmett is 4. [human sized]
Body Weight of Emmett is 6. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Emmett is 6. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Emmett is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Emmett is 8. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Emmett is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Emmett is 8. [length in inches]
Breast Size of Emmett is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Emmett is 0. [count of nipples]
Asshole Depth of Emmett is 10. [inches deep for anal fucking]
Asshole Tightness of Emmett is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Emmett is 1. [number of cocks]
Cock Girth of Emmett is 3. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Emmett is 10. [10 Inches]
Ball Count of Emmett is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Emmett is 3. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"] [Increase by 1 for Alpha, decrease by 1 for Omega]
Cunt Count of Emmett is 0. [number of cunts]
Cunt Depth of Emmett is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Emmett is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Emmett is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Emmett is false.
PlayerRomanced of Emmett is false.
PlayerFriended of Emmett is false.
PlayerControlled of Emmett is false.
PlayerFucked of Emmett is false.
OralVirgin of Emmett is false.
Virgin of Emmett is true.
AnalVirgin of Emmett is true.
PenileVirgin of Emmett is false.
SexuallyExperienced of Emmett is true.
TwistedCapacity of Emmett is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Emmett is true. [steriles can't knock people up]
MainInfection of Emmett is "".
Description of Emmett is "[EmmettDesc]".
Conversation of Emmett is { "Stern noises" }.
The scent of Emmett is "     Emmett smells vaguely acidic, though not strongly enough for it to be discomforting."

to say EmmettDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Emmett] <- DEBUG[line break]";
		say "     Emmett is an anthropomorphic bullet ant, about 7 foot tall and imposingly broad. He is covered in fuzzy dark red chitin, darkening to black along his limbs. Two pitch-black eyes stare from his stolid face, the lack of a pupil meaning that you can't tell exactly where his attention is. His antennae are more lively, twitching around near constantly, perhaps conversing with Milly or the queen wordlessly. Being bipedal, he has two sets of arms, the right pair wielding a large golden sword, while the left pair heft a shield only marginally smaller than he is. Though it is hidden at the moment, you know that he has a sting hidden in his abdomen. You don't want to know what the nanites might have done to its potency, nor how capable he is at using it in conjunction with the sword and shield. He wears golden platemail over his chitinous body and limbs, though it is likely just as effective as it is gaudy. It seems to cover him nearly entirely, though his helmet does seem to leave his face and antennae exposed.";
		say "     Loyal to a fault, Emmett stands resolutely beside Myra his gaze fixed forwards. He seems to take his duty very seriously, only reluctantly standing at ease when the queen commands it. He isn't hostile towards you, but as he hasn't had time to get to know you, he regards you with caution, more so than Myra does. He and Milly seem to be rather close despite the contrast in personalities, the female guard managing to make him smile with a gesture of her antennae, even while on duty. When outside in the station he seems particularly on edge, head flicking around at the slightest movement, particularly when Myra wants to talk to the other people there. You realize that you have been staring for quite some time and allow your eyes to move on.";

instead of conversing the Emmett:
	say "     '[one of]Before you ask, no, Milly and I are not twins. I know the gossip[or]You'd better not be an Illuminated spy. I hate spies[or]Don't you think my armor looks nice? I wanted to look fitting for my duty as captain of the guard[or]Sorry, I can't talk at the moment. I'm on duty[at random].'";

instead of fucking Emmett:
	say "     'No. I'm on duty and I don't know you. Find someone else,' he replies. Well. That was direct.";

Section 2.1.10 - Milly, Ant Royal Guard

Table of GameCharacterIDs (continued)
object	name
Milly	"Milly"

Milly is a woman.
ScaleValue of Milly is 4. [human sized]
Body Weight of Milly is 6. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Milly is 6. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Milly is 6. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Milly is 8. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Milly is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Milly is 8. [length in inches]
Breast Size of Milly is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Milly is 0. [count of nipples]
Asshole Depth of Milly is 10. [inches deep for anal fucking]
Asshole Tightness of Milly is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Milly is 0. [number of cocks]
Cock Girth of Milly is 0. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Milly is 0. [10 Inches]
Ball Count of Milly is 0. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Milly is 0. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"] [Increase by 1 for Alpha, decrease by 1 for Omega]
Cunt Count of Milly is 1. [number of cunts]
Cunt Depth of Milly is 10. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Milly is 2. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Milly is 4. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Milly is false.
PlayerRomanced of Milly is false.
PlayerFriended of Milly is false.
PlayerControlled of Milly is false.
PlayerFucked of Milly is false.
OralVirgin of Milly is false.
Virgin of Milly is false.
AnalVirgin of Milly is true.
PenileVirgin of Milly is true.
SexuallyExperienced of Milly is true.
TwistedCapacity of Milly is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Milly is true. [steriles can't knock people up]
MainInfection of Milly is "".
Description of Milly is "[MillyDesc]".
Conversation of Milly is { "Even more stern noises" }.
The scent of Milly is "     Milly smells vaguely acidic, though not strong enough to be off-putting."

to say MillyDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Milly] <- DEBUG[line break]";
	say "     Milly is an anthropomorphic bullet ant, about 7 foot tall with a sturdy build. She is covered in fuzzy black chitin, lightening to red along her limbs. Two pitch-black eyes stare from her angular face, though the lack of a pupil means that you can't tell exactly where her attention is. Her antennae are very lively, twitching around near constantly, likely conversing with Emmett or Myra wordlessly, a theory that is supported when she attempts to stifle a laugh. Being bipedal, she has two sets of arms, the right pair wielding a large obsidian spear, while the left pair heft a shield only marginally smaller than she is. Though it is hidden at the moment, you know that she has a sting hidden in her abdomen. You don't want to know what the nanites might have done to its potency, nor how capable she is at using it in conjunction with her other armaments. She wears pitch-black platemail over her chitinous body and limbs, likely as effective as it is imposing. It seems to cover her nearly entirely, though her helmet does seem to leave her face and antennae exposed.";
	say "     With no other threat in sight, Milly is able to watch you while still fulfilling her duty of protecting the queen. She seems fascinated by your presence, occasionally sticking her tongue out at you when she thinks that Emmett isn't looking. She seems a little flirty towards you, but you are sure that teasing you comes second to protecting Myra. She and Emmett seem to be rather close despite the contrast in personalities, the male guard even cracking a smile after a particular gesture from her antennae. When out in the station she seems more focused, allowing her gaze to scan back and forth for potential threats even when Myra stops to talk to the people that come up to talk to her. Milly waves a hand back and forth to snap you out of your contemplation and you realize that you had sort of zoned out.";

instead of conversing the Milly:
	say "     '[one of]How has your day been? I've been here all day. You know, protecting the queen. With Emmett[or]I hope that you aren't a spy for the Children of the Dark. Emmett hates spies[or]Like our armor? The dwarves made it for us, though the cat lady from the arena gave us the weapons. I don't know where she found them[or]You're distracting me from my work. Don't think that you can seduce me to get to the queen just by talking. I require bribery too[at random].'";

instead of fucking Milly:
	say "     'What? Right here? In front of everyone? Nah, I don't think so. Not until you've proven that you're someone that I can trust,' she laughs. 'Can you just imagine Emmett's face...'";

Section 2.1.11 - Belliandra, Feline Arena Master

Table of GameCharacterIDs (continued)
object	name
Belliandra	"Belliandra"

Belliandra is a woman.
ScaleValue of Belliandra is 3. [human sized]
Body Weight of Belliandra is 3. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Belliandra is 7. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Belliandra is 7. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Belliandra is 8. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Belliandra is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Belliandra is 8. [length in inches]
Breast Size of Belliandra is 2. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Belliandra is 6. [count of nipples]
Asshole Depth of Belliandra is 12. [inches deep for anal fucking]
Asshole Tightness of Belliandra is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Belliandra is 0. [number of cocks]
Cock Girth of Belliandra is 0. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Belliandra is 0. [10 Inches]
Ball Count of Belliandra is 0. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Belliandra is 0. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"] [Increase by 1 for Alpha, decrease by 1 for Omega]
Cunt Count of Belliandra is 1. [number of cunts]
Cunt Depth of Belliandra is 12. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Belliandra is 2. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Belliandra is 3. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Belliandra is false.
PlayerRomanced of Belliandra is false.
PlayerFriended of Belliandra is false.
PlayerControlled of Belliandra is false.
PlayerFucked of Belliandra is false.
OralVirgin of Belliandra is false.
Virgin of Belliandra is false.
AnalVirgin of Belliandra is false.
PenileVirgin of Belliandra is true.
SexuallyExperienced of Belliandra is true.
TwistedCapacity of Belliandra is true. [Twisted Characters can take any penetration, no matter the size]
Sterile of Belliandra is true. [steriles can't knock people up]
MainInfection of Belliandra is "".
Description of Belliandra is "[BelliandraDesc]".
Conversation of Belliandra is { "Meow Nya Mew" }.
The scent of Belliandra is "     Belliandra smells of clean fur, though there is a subtle scent hanging about her of something that you can't quite identify."

to say BelliandraDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Belliandra] <- DEBUG[line break]";
	say "     Belliandra is an anthropomorphic cat with brown and black-blotched fur and emerald-green eyes. About six-foot tall, her slender frame hides a surprising strength that is only amplified by the speed that she seems to move at when the situation calls for it. While her hind-paws look like normal enlarged paws, her front paws instead resemble hands, though she still has the soft pads in the palms and at each finger tip, along with sinister-looking retractable claws. Behind her, her tail flicks around, perfectly in sync to help her maintain her balance or move out of the way of an opponent's attack. Wearing form-fitting leather armor that comfortably holds her B-cup breasts tightly to her chest, her movement remains unhindered while still providing her some protection. At least you assume that it would protect her, you've yet to see her in proper combat. At her hip, you spot two short-swords in ornate sheaths, the design of which is too intricate for you to make out at a glance. For now, they remain ornamental.";
	say "     Amused by your observation, she winks at you and flicks her tail. She seems to have a cheerful personality and you have yet to see her not smiling, smirking, or teasing. Confident in her capability, she cultivates an aura of competence and safety. Much of her time seems to be spent training combatants in the arena, patiently tutoring them on the finer points of fighting with sword, spear, as well as unarmed combat, though the weapons are decidedly blunted in order to reduce lasting harm. You are not sure how much of the Station's security is due to her presence compared to the efforts of the Ant Colony and Dungeoneering Guild, but you have little doubt that the people living here appreciate the safety that she provides.";

instead of conversing the Belliandra:
	say "     '[one of]Don't let your guard down anywhere, not even when you are surrounded by friends. Always be ready to protect those that you care about[or]Strength is wasted if you can't strike your foe. Speed is a much better tool[or]Your world lacks heroes though it still seems to have tyrants. Are your gods so uncaring? Perhaps things will change soon[or]I plan on providing combat training for those that want it. If you know anyone that might be interested, feel free to bring them with you. I still have a few things to finish before I'm ready for that though[at random].'";

instead of fucking Belliandra:
	say "     Belliandra laughs as soon as you start to proposition her. 'Perhaps some day, but I haven't had nearly enough time to get to know you. Don't take it too hard. You aren't the first to ask and won't be the last.' Realizing that her rebuff may have been a bit blunt, she pats you reassuringly before combing her whiskers again.";

Section 2.2 - Beard Hearth NPCs


Section 2.3 - Illuminated NPCs


Section 2.4 - Children of the Dark NPCs


Section 3 - Events

Section 3.1 - Station 69 Events

Table of GameEventIDs (continued)
Object	Name
Station Tour	"Station Tour"

Station Tour is a situation.
ResolveFunction of Station Tour is "[ResolveEvent Station Tour]".
The sarea of Station Tour is "Nowhere".

instead of going down from Bunker while Strike From the Deep is resolved and Station Tour is not resolved:
	say "[ResolveEvent Station Tour]";

to say ResolveEvent Station Tour:
	if debugactive is 1:
		say "     DEBUG: Given a brief tour of Station 69[line break]";
	say "     Curious as to the extent of the tunnel network that [if Resolution of Strike From the Deep is 1]may be [else]you discovered deep [end if]beneath the library, you clamber down the passageway that the mole created, the memory of what it did to Colleen resurfacing. The descent is tedious, [if Resolution of Strike From the Deep is 1]both long and treacherous[else]more so than last time[end if], and it feels like hours have passed by the time you reach [if Resolution of Strike From the Deep is 1]a vast cavern, covered in what appears to be luminous fungus, tinging the air with blues and greens in an almost fantastical manner[else]the cavern at the bottom, the same blue and green luminous fungus lighting the area[end if]. With no immediate threat, you take the time to enjoy the moment, the cool, damp air and soft lighting having a calming effect on you. 'It's quite the sight isn't it?' a gentle voice comments from behind you, making you jump. Hastily turning around, you come face to face with two spider-people, one of whom looks on the plump side, while their companion[if Resolution of Strike From the Deep is 3], whom you are sure that you've seen before, [end if] possesses a wiry strength despite being slender.";
	say "     'Sorry. I didn't mean to startle you. I don't believe that I know you. I'm Webber,' the round spider introduces himself, offering you a claw-like hand. You cautiously shake it while you inspect the two of them. Webber is wearing a white shirt, burgundy waistcoat, and black trousers that look like they were tailored to him, as well as a strange sling that seems to support his abdomen behind him. By comparison, his companion's appearance is largely obscured by a dark coat, though you notice two swords and several daggers on a belt at their hip. You also can't help but notice that their eight eyes are cloudy. 'My name is Varenya, and yes, I'm blind,' she says, seemingly feeling your gaze on her. 'She's my guard and more than capable I might add. Uses her hair to detect air flow or something,' Webber explains, his admiration clear. 'Usually I wear fewer clothes to better sense my surroundings, but I'm trying to train to be better,' the female spider adds before her companion continues. 'We were just on our way back from Beard Hearth. I'm a merchant from the Station 69, so you can understand why I would need an armed escort.'";
	WaitLineBreak;
	if Resolution of Strike From the Deep is 1: [Did not pursue mole. Never seen Webber before]
		say "     Seeing your look of confusion, Webber's eyebrows raise in surprise. 'You've never heard of Station 69? Are you another adventurer? Just where are you from?' he asks incredulously. You guardedly reply that you found a tunnel down here from the city, leaving out the fact that it is connected to the bunker. ";
	else:
		say "     Seeing your look of confusion, Webber's eyebrows raise in surprise. 'You've never heard of Station 69? Are you another adventurer? Just where are you from?' he asks incredulously. Before you can answer, Varenya instead replies, 'From above. I saw them a while ago,' causing his eyebrows to shoot upwards in surprise again. ";
	say "'Fascinating. We haven't seen anyone from there since this all began. But I think that we should avoid any further discussion until we are somewhere... less prone to eavesdroppers. Would you like to come back with us to the Station? I can give you a tour,' Webber interjects, glancing around hurriedly. His behavior suggests that this isn't part of a kidnapping plan, so you tentatively accept his offer, much to his relief. Gesturing for you to follow, he heads towards one of the many tunnels, Varenya a few steps behind him. You find yourself in a tunnel similar to the one that you came down here in, though there are metal struts bracing the roof and walls every few meters as it slopes upwards.";
	say "     After a few hushed words between them, Webber turns his head and gives you a friendly smile while Varenya turns around and hurries back to the entrance of the passage. 'She'll catch up later, but this way we can be sure that we aren't being followed and I can briefly discuss the surface with you before we get into town,' the spider merchant reassures you as you begin to ascend. 'The overworld is a matter of conflict between those of us under the ground. Some, like me, lived there before we were transformed, but haven't been able to find our way back since. There are four main [']factions['], if you will, down here. I do business with all of them, some to a lesser degree than others. Station 69, where I am from, the Dwarves of Beard Hearth, the Illuminated, and the Children of the Dark.'";
	WaitLineBreak;
	say "     I'm Merchant General, or whatever other silly title they've changed it to, of Station 69, so I'm not entirely unbiased. We try to remain neutral in the disputes between factions, but we also take in those that the others reject. This occasionally causes friction with their previous allies. Then there's the Dwarves of Beard Hearth, though they call their settlement something else that I can't pronounce. They do a lot of mining and other things that you would associate with the dwarves of fantasy. They tend to react with hostility to anyone who interferes with this, no matter which faction they are. The Illuminated are the almost fanatical followers of some scientist. He's helped a lot of people with his inventions, but his ethical standards leave much to be desired. Finally, the Children of the Dark are mostly partially-feral creatures and monstrosities led by some druid. They aren't particularly friendly, so I would stay away from them if I were you.'";
	say "     You grunt noncommittally. Though the memory of the mole resurfaces, you'll make your own decision on the matter. After all, it's not as if everything down here will be neatly sorted into one faction or another. 'Anyway, to return to you being from the surface, perhaps don't tell anyone else. Some people view the world above as something to be conquered and I can't promise you that they won't hurt you. Until I can be sure that interactions will be peaceful with the city, I intend to keep everyone in the dark about it. Metaphorically of course. We have electricity,' Webber explains, nervously laughing at his own joke. Soon the tunnel widens out and you arrive at a gateway guarded by several ants, all of them wearing armor and wielding weapons that look more suited to the Medieval era. A sign to your left proclaims, 'Welcome to Station 69'. Surveying the sight before you for a minute, it gives Varenya time to catch up with you again. 'Shall we go in? I still need to give you a quick tour,' Webber asks with obvious excitement.";
	WaitLineBreak;
	say "     Thought he guards stare at you curiously, with the spiders beside you, they don't challenge your entry into the settlement. You enter what might have been quite a grand market square, but none of the stalls seem to be open at the moment. Nonetheless, there is a decent amount of activity between citizens standing around talking and people walking in and out of a building to your left. 'Welcome to the Marketplace, the central point of Station 69,' Webber announces, earning a chuckle from Varenya. 'Unfortunately, we are in the middle of a dispute over fees,' he concedes, directing a reproachful glare at his companion. 'Some of the more public-spirited residents want to increase them so that more money can be put into benefiting the community. Unfortunately, the majority of merchants are resistant to this and forbid all internal trade until it is settled. Celeste and, to a greater degree, Queen Myra will force them to relent in time, but until then the market stalls remain closed. You'll get to meet them soon.'";
	say "     You ask that if he is Head Merchant, why doesn't he make them comply immediately, stifling a laugh as he winces at the absurd title. 'The Merchant Guild doesn't work that way. My vote within the guild doesn't count for any more than the other senior members. Those of us that believe that funding the protection of the station will benefit us all in the long run are outvoted by those that value profit above security. If things get too dangerous here, they'll likely just relocate to Beard Hearth. I then have to represent the Merchant Guild's stance rather than my own when discussing with the other influential institutions. Politics here is different to how the world used to be. We aren't a democracy. Major decisions are decided by representatives from the Merchant Guild, Dungeoneering Guild, Ant Colony, and Arena. I represent the merchants obviously. Technically the Dungeoneering Guildmaster should be their representative, but as he's a selfish bastard and doesn't care about the station, the receptionist, Celeste, and de facto leader of their guild does so instead. When she can be separated from her lava lamp.'";
	WaitLineBreak;
	say "     'The Ant Nest is obviously led by a queen, in this case Myra. Her children guard us all and if she wanted to she could likely govern without us. Fortunately, she seems to prefer things the way they are, mingling with the people from time to time and occasionally inviting someone that has impressed her to sire her next generation of children. I have not been propositioned, in case you were wondering. Finally Belliandra is the Arena Master. She claims that she is from another world and I believe her. She is unnatural in the way that she moves and I don't think that I've seen anyone land a blow on her in all her time here. Perhaps you might manage to be the first, but I doubt it. She always seems to be just that little bit faster than whoever she comes up against. Anyway, now that I've talked your ear off, shall we visit Queen Myra first, then we can visit the arena via the Dungeoneering Guild?' Webber asks, not really giving you a choice as he immediately strides towards a cave entrance to your right, Varenya close behind him.";
	say "     Following them, you enter a large room full of people, the majority of whom are ants busily going this way or that, though a few seem to be standing around conversing among themselves or with people that you assume are also visitors. With the female spider deftly clearing you a path, Webber doesn't give you much time to admire the domed ceiling and the elegant criss-cross of wood that braces the dirt walls and roof, gently guiding you through the crowd until you reach the opposite side of the room where two armored ants stand guard by a sturdy door. After a few hushed words, one of them vanishes through the door for a few moments before returning again and bidding you enter. 'Be on your best behavior. You're about to meet Queen Myra,' Varenya murmurs as the three of you are escorted into the royal chambers. As soon as the door closes behind you, the noise and chatter of the hall is stifled, allowing you to easily hear the queen speak.";
	WaitLineBreak;
	say "     'Welcome,' Myra greets you, the tall reddish-black ant flanked by two large guards. 'I would offer you a seat, but as the silk merchant informs me that you are only here briefly as part of your tour of the station and I have an appointment with some of the less agreeable members of the Merchant Guild, I shall refrain from such hospitality until we have more time available. I am Queen Myra. Please address me as [']My Queen['] when in public, but here you may call me just Myra. These are my guards, Emmett and Milly.' The first guard, Emmett, merely nods at you, but his partner is warmer in their introduction. 'A pleasure to meet you. I'm Milly, joint leader of the Royal Guards. As long as Her Majesty is happy, we're happy too, even if Emmett hides it. He takes his duty very seriously,' she says chuckling. Emmett's sighs and twitches his antennae. 'I don't know them,' he mumbles.";
	say "     Clapping her hands to quieten them down again, Myra continues introducing herself. 'My nest provides the majority of protection for the station, along with manpower for construction and other physically intensive work. Few would disagree that Station 69 wouldn't exist without us. Like Webber, I remember the world before we came underground. I was an entomologist studying ants, specifically [italic type]Paraponera clavata[roman type], the bullet ant. This is the form that I have ended up as. I was fortunate enough to survive my laboratory being devoured by a sinkhole and eventually, after wandering the tunnels, I ended up here just as the settlement was being formed. [italic type]Paraponera clavata[roman type] aren't known for making nests underground, but I'm not a complete slave to my species so I made the best of my circumstances and after a few... romantic encounters, I made my nest here.' Myra pauses to take a breath before bashfully averting her eyes. 'Was that sufficient enough an introduction for your tour? I know that it was brief, but the merchants could arrive soon and it would be best if a stranger wasn't seen leaving here immediately beforehand,' she apologizes.";
	WaitLineBreak;
	say "     'It's perfectly fine. We need to continue the tour anyway,' Webber says placatingly. 'Nonetheless, feel free to visit me again when you can. I will hopefully be able to give you the hospitality that you deserve,' Myra replies, turning to you. Dismissed, you follow the two spiders out of the queen's chambers and back through the court, passing three well-dressed figures, a bull, a lion, and a dwarf, as you reach the exit of the nest. They tersely nod at Webber, ignoring both you and Varenya before striding the opposite direction to you. 'It looks like we left just in time,' your guide mutters as you exit the cave. You would assume that they were Myra's next appointment. Your next destination seems to be the grand-looking building on the opposite side of the marketplace, a crossed-pickaxe-and-sword sign, with the words [']Dungeoneering Guild['] beneath it, hanging outside. 'Let's see if we can distract Celeste from her lamp for a few minutes,' Webber announces jovially as you make your way over and slip through the door as a polite adventurer holds it open for you before hurrying after his friends.";
	say "     The first thing that you notice when you enter is the number of people. You wouldn't have thought that you could fit this many adventurers in here from the outside, nor that they would be able to find so many dark corners in which to congregate and talk, filling the air with a babble of conversation that you can't discern the words from. 'Dungeoneering is very popular, you might notice,' Varenya comments dryly before directing you after Webber as he heads for the front desk which fortunately seems to be adventurer-free at the moment. The moth-girl staffing it seems mesmerized by a lava lamp that is languidly glooping in front of her. Remembering the spider's words, you assume that this must be Celeste, the real power within the guild. After waving his hand in front of her in a vain attempt to catch her attention, Webber sighs and presses a button on the front of the desk. The lamp immediately falls dark and the moth's attention slowly slides over to focus on the exasperated arachnid.";
	WaitLineBreak;
	say "     'Hiya Webber. Planning a shift in careers?' she asks. As her gaze shifts over to you, you notice her sit up a little straighter upon seeing Varenya. 'And who's this? Hello new person. Welcome to the Station 69 Dungeoneering Guild,' Celeste greets you with a sincere smile. 'I... don't think I actually asked their name,' Webber responds, bashfully looking at his feet. 'Neither did I,' Varenya adds when the moth turns her attention to her. Pouting cutely, Celeste jumps off her chair and marches around her desk over to the three of you. While not as tall as the two spiders, she has a certain presence about her that makes her height inconsequential. 'Neither the Merchant General or one of my best adventurers had the decency to ask [ObjectPro of Player] [PosAdj of Player] name? But I bet you both told [ObjectPro of Player] your names,' she scolds them before giving you a makeshift curtsey, her thick brown jersey almost acting as a dress. 'A pleasure to meet you. My name is Celeste and I'm the receptionist/coordinator/acting guildmaster of the Dungeoneering Guild. Might I know your name?'";
	say "     Chuckling a bit, you introduce yourself. 'See! Was that so hard?' the moth-girl asks the spiders with exasperation. 'I suppose that you are just passing through on your tour of the settlement? Want me to give you a quick rundown of what we do?' Celeste offers you, beaming when you nod. 'While the Merchant Guild is the economic backbone of Station 69 and the ants are local security and labor, the Dungeoneering Guild allows us to protect ourselves from threats before they arrive while also giving the many adventurers that seem to appear from nowhere an outlet for their talents. In exchange for a share of any treasure found or a cut of the job fee, we coordinate the adventurers and ensure that if anything happens to them, a team will be sent to rescue them. We also have facilities such as bath-house, archive, and healing facilities for our members. Despite this, most of them seem to prefer lurking in corners here in the main hall,' she directs a look of annoyance at the many people doing just that.";
	WaitLineBreak;
	say "     'The actual guildmaster wanted to run us more like a mercenary company, but me and Belliandra put a stop to that. We aren't at war and adventuring is meant to be fun rather than treated wholly like a business. Now he barely leaves his private chambers and I'm the next most senior member so I'm acting guildmaster, but don't get any grand ideas. I couldn't fight to save my life. I'm a clerk, not a warrior.' 'Awww, don't be so hard on yourself,' Varenya almost croons, ruffling Celeste's dirty-blonde hair, making her smile goofily. 'That about describe us?' the moth-girl directs at Webber. 'Wonderfully so. I couldn't have put it better myself. Unfortunately, time is getting away from us and I still need to show our guest the arena,' he replies. 'That's okay. The lamp is calling to me and I would be a fool to resist it,' Celeste says, already slinking back around her desk. Hopping back onto her chair, she waves you goodbye. 'Be sure to come back if you want to sign up with us. I'd be more than happy to go through the forms with you,' she purrs enticingly.";
	say "     Varenya guides you towards a door to the north. 'Time for you to meet my mentor and the best duellist you will likely ever meet,' she says eagerly, causing Webber to roll his eyes but smile good-naturedly. 'Don't praise her too much or she'll already be purring before we get there,' he taunts. After traveling along a corridor for a while, you find yourself back outside again in the middle of an arena, a tall brown and black-furred feline woman clad in leather armor pressed up against a self-conscious badger as she adjusts his posture in front of a training dummy. 'Take a few minutes rest and we'll resume once I finish talking to my guests. Correct stance takes time, so don't be discouraged,' she says warmly to him before turning around to face you. 'Ah, Varenya, how was your trip? And Webber, I hope that your business with Odric was successful,' she addresses them before bowing to you gracefully.";
	WaitLineBreak;
	if HP of Hope-Born Dragon > 5:
		say "     'I know who you are. My father must have been quite impressed with you to trust you with one of his children. I should take time to properly visit [Hope-BornDragonName] at some point[if HP of Cadmea > 1]. My sister, Cadmea, also spoke well of you. Our father is rather a... adventurous sort so we are a very large family[end if],' she muses. ";
	else if HP of Cadmea > 1:
		say "     'I know who you are. My sister, Cadmea, spoke well of you. Our father is rather a... adventurous sort so we are a very large family,' she muses. ";
	else:
		say "     'I do not believe we have had the pleasure of meeting yet, but I sense a certain aura around you as though you will accomplish great things. I shall wait and see,' she muses. You introduce yourself, surprised by the strength of her grip when she takes your hand. ";
	say "'Where are my manners? Celeste would scold me... You may call me Belliandra, and I am the master of the arena that you find yourself in. Like Varenya, I am not of your world, though I suppose with the number of adventurers that seem to turn up, that isn't exactly much of a revelation,' she laughs. 'I am a capable combat instructor, both for entertainment and more... practical applications. There always seem to be people trying to hurt each other and people that want to be able to defend themselves from being hurt, so if you or anyone that you know wants some proper physical training, no matter their appearance and capability I can do it. Magic isn't my forte, sorry. Payment is negotiable, whether it is precious metals, food, or as some seem to prefer, intimacy,' Belliandra explains, her eyes flicking over you.";
	say "     'The arena used to put on a show every few days, but we're currently undergoing some renovations to increase safety. The fighters can get a bit over-enthusiastic and ruptured organs are best avoided. Once we're finished, the men, women, and anything beyond or in between will be nearly as safe as they can be and I won't need to be as ready to intervene personally. Until then, I'm content to lend my experience to training anyone that is willing to learn. Now, as I'm sure you only came to see me as part of Webber's tour, I should get back to helping Roderick with his foot placement. It's a lot easier to knock someone over if they haven't positioned their feet correctly. Until we meet again[if Player is not defaultnamed] [name of Player][end if]. I hope you'll visit me when you have the time, perhaps have a few lessons.' Bowing to you again, she turns back to the dummies and indicates for Roderick to ready himself again.";
	WaitLineBreak;
	say "     'Well, that's everywhere that I needed to show you,' Webber declares. 'The residential area is private and not somewhere that people who don't live here need to go unless invited, so I don't need to show you around there. The Merchant Guild is obnoxiously unwelcoming, so I won't put you through that nor would I advise you enter without me. So, unless you have any more questions, we can return to the marketplace and you can decide what you wish to do from there.' 'I'll say goodbye here then. I have some things to do in the tunnels and I want a quick word with Belliandra before I go,' Varenya responds, hugging Webber and nodding to you. 'Perhaps when I know you better, you can have a hug too. All six arms worth.' Your return to the center of the town is uneventful and after reminding you that everyone (even Emmett) would be more than happy for you to visit them again and to stay out of trouble, Webber excuses himself to return to his guild with news on his business with Beard Hearth, leaving you to choose what to do next.";
	follow the turnpass rule;
	move Player to Station 69 Marketplace;
	move Webber to Station 69 Marketplace;
	move Celeste to Dungeoneering Guild;
	move Myra to Ant Nest Royal Chamber;
	move Emmett to Ant Nest Royal Chamber;
	move Milly to Ant Nest Royal Chamber;
	move Belliandra to Subterranean Arena;
	now Station Tour is resolved;
	change the up exit of Tunnel Hub to Tunnel Underground;
	change the down exit of Tunnel Underground to Tunnel Hub;


[Resolution 1 - Stayed and helped Sarah treat Colleen
Resolution 2 - Fought the Mole. Won. Saw Webber. Not Varenya.
Resolution 3 - Fought Mole. Lost. Saved by Varenya.
Resolution 4 - Fled from Mole. Saw Webber. Not Varenya.]

Subterranean Caves ends here.
