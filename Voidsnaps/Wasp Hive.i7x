Version 1 of Wasp Hive by Voidsnaps begins here.


A person can be inWaspHive. A person is usually not inWaspHive.

Definition: A person (Called x) is inWaspHive:
	if the location of x is Hymenoptera Hotel, yes;
	if the location of x is Hive Thoroughfare, yes;
	if the location of x is Loyalty's End, yes;
	if the location of x is Egg Chamber, yes;
	no;

An everyturn rule:
	if "Wasp Royalty" is listed in feats of Player:
		if Nightmaretf > 0: [Nightmare]
			if debugactive is 1:
				say "     <The wasp king infection can't proceed with other permanent infections! Sorry. In this case, it's the Nightmare infection blocking it!>";
			stop the action;
		if wrcursestatus >= 7 and wrcursestatus < 100: [Were-raptor]
			if debugactive is 1:
				say "     <The wasp king infection can't proceed with other permanent infections! Sorry. In this case, it's the Wereraptor infection blocking it!>";
			stop the action;
		if (JackalManTF > 0 and JackalManTF < 5) or (JackalBoyTF > 0): [Jackalman Transformation]
			if debugactive is 1:
				say "     <The wasp king infection can't proceed with other permanent infections! Sorry. In this case, it's the Jackalman infection blocking it!>";
			stop the action;
		if isHellhound is true: [Hellhound]
			if debugactive is 1:
				say "     <The wasp king infection can't proceed with other permanent infections! Sorry. In this case, it's the Hellhound infection blocking it!>";
			stop the action;
		if "Ceryneian Blessed - Anthro" is listed in feats of Player:
			if debugactive is 1:
				say "     <The wasp king infection can't proceed with other permanent infections! Sorry. In this case, it's the Anthro Ceryneian infection blocking it!>";
			stop the action;
		if "Ceryneian Blessed - Feral" is listed in feats of Player:
			if debugactive is 1:
				say "     <The wasp king infection can't proceed with other permanent infections! Sorry. In this case, it's the Feral Ceryneian infection blocking it!>";
			stop the action;
		if "Ceryneian Blessed - Taur" is listed in feats of Player:
			if debugactive is 1:
				say "     <The wasp king infection can't proceed with other permanent infections! Sorry. In this case, it's the Taur Ceryneian infection blocking it!>";
			stop the action;
		else:
			turn player into "Wasp King" silently;

[Resolution Variables:
 Last stand:
 1 - Player exiled Ziix. Blocks off becoming royalty and expanding the hive.
 2 - Player Saved Ziix. Ziix will act grateful.
 3 - Player ignored Ziix. Zant saves him instead. Ziix will be embarassed.

 Rude Awakening:
 1 - Player fucked Zant.
 2 - Player declined Zant.

 Broken But Alive:
 1 - Ziix has been exiled. Content involving becoming king is walled off. Slut storage content possible?
 2 - Ziix and Zant reunited. Player saved Ziix so he's awake.
 3 - Ziix and Zant reunited. Zant wakes Ziix up through horny pheromones.

 Relevant NPC Variables:
 Thirst of Zant: Number of wasps that the player has birthed as the Wasp King. Changes the hive's appearance and layout. Also unlocks Byz.

 Hunger of Ziix: Whether you declined to be king or became king. Walls off that path if it's at 100.
 81 - Convinced to stay in an apartment as your fucktoy.
 99 - Became King. (Unlocks another scene to regain king infection.)
 100 - Brought up being the king and then decided against it.

Thirst of Ziix: How much of a buttslut he is.
 ]

Section 1 - Hive Rooms

Table of GameRoomIDs (continued)
Object	Name
Hymenoptera Hotel	"Hymenoptera Hotel"

Hymenoptera Hotel is a room.
It is fasttravel.
It is private.
Description of Hymenoptera Hotel is "[Hymenopteradesc]".

instead of sniffing Hymenoptera Hotel:
	say "     It smells dusty, with an undercurrent of something sweet and honey-like.";

to say Hymenopteradesc:
	if BodyName of Player is "Wasp King" and player is pure:
		say "     Your hive's entrance is as shabby as always, with its dulled golden wasp sign and dusty windows, but you aren't interested in the outside. You know that your loyal subjects wait above you, and you can't wait to bask in their admiration. Hopefully, they didn't miss you much.";
	else:
		say "     A strange hotel with a metallic image of a golden and black wasp above its front door stands before you. You can tell that the hotel has seen better days, but curiously, as your eyes follow the building upward, you notice that the top has an organic structure reminiscent of a wasp hive to cap it off.";


Table of GameRoomIDs (continued)
Object	Name
Hive Thoroughfare	"Hive Thoroughfare"

Hive Thoroughfare is a room.
Hive Thoroughfare is above Hymenoptera Hotel.
Hive Thoroughfare is sleepsafe.
Description of Hive Thoroughfare is "[HiveThoroughDesc]";

to say HiveThoroughDesc:
	say "     Several floors up from the entrance, the hive begins where the rundown hotel ends. All the walls, besides the windows, have been covered by a thick waxy substance, and something has broken down the structure of the walls where needed to create larger halls and hubs. You judge that you're at the center of it all. Above you, on a sloping path through what was once the ceiling, you can see a wider chamber, while to the East, the organic hallway turns, continuing out of sight. To the West, you can see a massive hole in the nest with burn marks and signs of claws lining the ground, leading toward the larger chamber above and the pathway to the East. You wonder if anything survived the dragon's rampage.";

Table of GameRoomIDs (continued)
Object	Name
Loyalty's End	"Loyalty's End"

Loyalty's End is a room.
Loyalty's End is below Egg Chamber.
Loyalty's End is north of Hive Thoroughfare.
Loyalty's End is sleepsafe.
Description of Loyalty's End is "[LoyalEndDesc]";

to say LoyalEndDesc:
	say "     Above the thoroughfare, the organic walls become smoother and well taken care of, but you can see even more signs of a struggle. Mystery fluids and fragments of chitin litter the ground, and all is eerily silent as you walk up the makeshift staircase. [if Resolution of Last Stand is 1 and Rude Awakening is resolved]Ziix stands guard in front of the egg chamber, nodding in your direction and softening his gaze as he looks over you. You can feel his gratitude even though his features don't show it well[else if Resolution of Last Stand is 2 and HP of Ziix < 100]The wasp warrior rests where you left him, too exhausted by your fight to move. You should get him help before he wanders off in a daze[else]The spot where the wasp warrior was sits empty[end if].";

Table of GameRoomIDs (continued)
Object	Name
Egg Chamber	"Egg Chamber"

Egg Chamber is a room.
Egg Chamber is sleepsafe.
Egg Chamber is above Loyalty's End.
Description of Egg Chamber is "[EggChamberDesc]";

to say EggChamberDesc:
	say "     A room filled with alcoves stands before you, and a throne-like growth juts in the middle with a peculiar shape that seems like it would position you with your ass up and your entire rear on display. You can only assume this place is where the former king resided, attended by his drones. Now it sits empty, quiet, and vaguely sad, waiting for a new king.";

Table of GameRoomIDs (continued)
Object	Name
Drone Quarters	"Drone Quarters"

Drone Quarters is a room.
Drone Quarters is east of Hive Thoroughfare.
Drone Quarters is sleepsafe.
Description of Drone Quarters is "[DroneQuartersDesc]";

to say DroneQuartersDesc:
	say "     To the East of the thoroughfare, a winding path takes you to a room lined with bunk-bed-like alcoves that smell of honey and manly musk. It would be cozy if not for the destroyed chunks of hive littering the floor and scorch marks on the walls. Curiously, one corner seems intact, while the rest show signs of a struggle[if Zant is in Drone Quarters]. Zant lounges in this corner, stroking long strings of honey pre-cum from his perpetually half-hard cock and licking his fingers clean[end if].";


[Byz is your firstborn worker. Will be available in a future update.]
[Table of GameCharacterIDs (continued)
object	name
Byz	"Byz"

Byz is a man.
ScaleValue of Byz is 3. [human sized]
Body Weight of Byz is 3. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Byz is 4. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Byz is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Byz is 5. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Byz is 2. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Byz is 5. [length in inches]
Breast Size of Byz is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Byz is 2. [count of nipples]
Asshole Depth of Byz is 9. [inches deep for anal fucking]
Asshole Tightness of Byz is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Byz is 1. [number of cocks]
Cock Girth of Byz is 2. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Byz is 5. [length in inches]
Ball Count of Byz is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Byz is 2. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Byz is 0. [number of cunts]
Cunt Depth of Byz is 0. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Byz is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Byz is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Byz is false.
PlayerRomanced of Byz is false.
PlayerFriended of Byz is false.
PlayerControlled of Byz is false.
PlayerFucked of Byz is false.
OralVirgin of Byz is false.
Virgin of Byz is false.
AnalVirgin of Byz is false.
PenileVirgin of Byz is false.
SexuallyExperienced of Byz is true.
TwistedCapacity of Byz is true. [Twisted Characters can take any penetration, no matter the size]
Sterile of Byz is false. [steriles can't knock people up]
MainInfection of Byz is "Wasp Warrior".
Description of Byz is "[ByzDesc]".
Conversation of Byz is { "<This is nothing but a placeholder!>" }.
The scent of Byz is "[ByzScent]";

to say ByzScent:
	say "He smells like honey, sweet and pleasant.";

to say ByzDesc:
	say "...";]

Section 2 - Wasp infections

[Godot versions:]
[
When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is "Wasp Man"; [ Name of the overall species of the infection, used so a "male x" and "female x" have "pureblood X" children. ]
	now Name entry is "Wasp Man"; [matching infection name to Table of Random Critters]
	now Body Weight entry is 8; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 9; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 1; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is "your face hardens and reshapes itself into a masculine insectoid shape with dual mandibles and bright compound eyes"; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is "a wasp with [Head Color of Player] fuzz and smooth chitin"; [partial sentence that fits in "Your face and head resemble that of [Head Description of Player]. You have [Eye Adjective of Player], [Eye Color of Player] eyes and an overall [Gender Adjective of Player] appearance."]
	now Head Adjective entry is "wasp-like"; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is "fuzzy"; [one word descriptive adjective]
	now Head Color entry is "black and yellow"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "antennae"; [partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 0; [hair length in inches]
	now Hair Shape entry is "soft"; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is "black and yellow"; [one word color descriptor]
	now Hair Style entry is "fuzzy insectoid"; [one word style descriptor (ponytail/mohawk/buzzcut/...) to fit "On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style."]
	now Beard Style entry is "nonexistent beard, replaced by smooth, slightly fuzzy chitin"; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...) to go into "You have a [Hair Color of Player] [Beard Style of Player]."]
	now Body Hair Length entry is 0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is "black"; [one word color descriptor]
	now Eye Adjective entry is "compound"; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 10; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 10;
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is "thin and tube-like"; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is "black"; [one word color descriptor]
	now Tongue Length entry is 9; [length in inches]
	now Torso Change entry is "your skin morphs into smooth, hard chitin covered in light fuzz"; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is "covered in a warm coat of [Torso Color of Player] fur"; [partial sentence, fitting in "Looking down at yourself, you appear [Gender Adjective of Player] with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 1], covered in [Torso Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Torso Color of Player] skin[end if]."]
	now Torso Adjective entry is "insectoid"; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is "chitonous armor"; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [torso adornments of Player]."]
	now Torso Skin Adjective entry is "fuzzy"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Torso Color entry is "black and yellow"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Torso Pattern entry is "patchwork"; [single word color adjective for the dominant pattern of the skin/fur/feathers/scales]
	now Breast Adjective entry is "smooth"; [adjective(s) example: round, pointy, perky, saggy, bouncy. This would serve as either a general appearance of a infections breasts or possibly something that may be effected by a item or NPC.]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Nipple Count entry is 2; [count of nipples]
	now Nipple Color entry is "black"; [one word color descriptor]
	now Nipple Shape entry is "oval"; [shape example: any shape will do as long as it has a baseline with a current infection or item]
	now Back Change entry is "wings sprout from it, filling out and fluttering gracefully with a buzzing sound"; [partial sentence that fits in: "Your back [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Back Change entry]."]
	now Back Adornments entry is "your translucent wings"; [partial sentence to fit: "Your back tickles with the feeling of movement caused by [back adornments of Player]."]
	now Back Skin Adjective entry is "chitonous"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Back Color entry is "black and yellow"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is "your fingers grow slender and smooth, tipped with sharp insectoid claws perfect for defense or climbing"; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is "covered in [Arms Color of Player] fuzz, ending in insectoid fingers with sharp claws"; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is "furred"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Arms Color entry is "black and yellow"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Locomotion entry is "bipedal"; [one word adjective: (bipedal/quadrupedal/octapedal/serpentine/sliding)]
	now Legs Change entry is "they shift into the digitigrade stance of a Wasp Man"; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is "that of an anthro wasp, with thick [Legs Color of Player] fuzz covering them from your hips down to the clawed toes"; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is "fuzzy"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is "black and yellow"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is "it becomes well-rounded, with smooth black and yellow chitin that's strangely soft to the touch"; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is "ass, covered in black and yellow fuzz"; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [ass shape adjective of Player] [ass description of Player]."]
	now Ass Skin Adjective entry is "smooth"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is "black and yellow"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is "mid-length, [Tail Color of Player] tail"; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is "fuzzy"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is "grey and white"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 8; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite (< 3), shallow (< 5), average (< 9), deep (< 15), bottomless (15+)"]
	now Asshole Tightness entry is 3; [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "extremely tight, tight, receptive, open, gaping"]
	now Asshole Color entry is "onyx"; [one word color descriptor]
	now Cock Count entry is 1;
	now Cock Girth entry is 4; [thickness 1-5, generates the Cock Girth Adjective]
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 10; [length in inches]
	now Cock Change entry is "it fills out into an uncut humanoid cock with a bright yellow tip peeking from its black foreskin"; [partial sentence that fits in: "Your cock [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is "is an uncut humanoid cock with a bright yellow tip peeking from its black foreskin"; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [cock adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock description of Player]."]
	now Cock Adjective entry is "humanoid"; [one word adjective: avian/canine/...]
	now Cock Color entry is "black"; [one word color descriptor]
	now Ball Count entry is 2;
	now Ball Size entry is 3; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is "balls in a fuzzy, tight sack"; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [ball description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0;
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Change entry is "it takes on a humanoid appearance, complete with a clit at the top and soft lips"; [partial sentence that fits in: "Your groin [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt Change entry]."]
	now Cunt Description entry is "is [Cunt Color of Player], with humanoid lips."; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [cunt description of Player]."]
	now Cunt Adjective entry is "humanoid"; [one word adjective: avian/canine/...]
	now Cunt Color entry is "black"; [one word color descriptor]
	now Clit Size entry is 2; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is "Wasp King"; [ Name of the overall species of the infection, used so a "male x" and "female x" have "pureblood X" children. ]
	now Name entry is "Wasp King"; [matching infection name to Table of Random Critters]
	now Body Weight entry is 8; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 9; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 1; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is "your face hardens and reshapes itself into a masculine insectoid shape with dual mandibles and bright compound eyes"; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is "a wasp with [Head Color of Player] fuzz and smooth chitin"; [partial sentence that fits in "Your face and head resemble that of [Head Description of Player]. You have [Eye Adjective of Player], [Eye Color of Player] eyes and an overall [Gender Adjective of Player] appearance."]
	now Head Adjective entry is "wasp-like"; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is "fuzzy"; [one word descriptive adjective]
	now Head Color entry is "black and gold"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "antennae"; [partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 0; [hair length in inches]
	now Hair Shape entry is "soft"; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is "black and gold"; [one word color descriptor]
	now Hair Style entry is "fuzzy insectoid"; [one word style descriptor (ponytail/mohawk/buzzcut/...) to fit "On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style."]
	now Beard Style entry is "nonexistent beard, replaced by smooth, slightly fuzzy chitin"; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...) to go into "You have a [Hair Color of Player] [Beard Style of Player]."]
	now Body Hair Length entry is 0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is "black"; [one word color descriptor]
	now Eye Adjective entry is "compound"; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 10; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 10;
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is "thin and tube-like"; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is "black"; [one word color descriptor]
	now Tongue Length entry is 9; [length in inches]
	now Torso Change entry is "your skin morphs into smooth, hard chitin covered in light fuzz"; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is "covered in a warm coat of [Torso Color of Player] fur"; [partial sentence, fitting in "Looking down at yourself, you appear [Gender Adjective of Player] with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 1], covered in [Torso Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Torso Color of Player] skin[end if]."]
	now Torso Adjective entry is "insectoid"; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is "chitonous armor"; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [torso adornments of Player]."]
	now Torso Skin Adjective entry is "fuzzy"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Torso Color entry is "black and gold"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Torso Pattern entry is "patchwork"; [single word color adjective for the dominant pattern of the skin/fur/feathers/scales]
	now Breast Adjective entry is "smooth"; [adjective(s) example: round, pointy, perky, saggy, bouncy. This would serve as either a general appearance of a infections breasts or possibly something that may be effected by a item or NPC.]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Nipple Count entry is 2; [count of nipples]
	now Nipple Color entry is "black"; [one word color descriptor]
	now Nipple Shape entry is "oval"; [shape example: any shape will do as long as it has a baseline with a current infection or item]
	now Back Change entry is "wings sprout from it, filling out and fluttering gracefully with a buzzing sound"; [partial sentence that fits in: "Your back [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Back Change entry]."]
	now Back Adornments entry is "your translucent wings"; [partial sentence to fit: "Your back tickles with the feeling of movement caused by [back adornments of Player]."]
	now Back Skin Adjective entry is "chitonous"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Back Color entry is "black and gold"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is "your fingers grow slender and smooth, tipped with sharp insectoid claws perfect for defense or climbing"; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is "covered in [Arms Color of Player] fuzz, ending in insectoid fingers with sharp claws"; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is "furred"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Arms Color entry is "black and gold"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Locomotion entry is "bipedal"; [one word adjective: (bipedal/quadrupedal/octapedal/serpentine/sliding)]
	now Legs Change entry is "they shift into the digitigrade stance of a Wasp King"; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is "that of an anthro wasp, with thick [Legs Color of Player] fuzz covering them from your hips down to the clawed toes"; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is "fuzzy"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is "black and gold"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is "it becomes well-rounded, with smooth black and gold chitin that's strangely soft to the touch"; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is "ass, covered in black and gold fuzz"; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [ass shape adjective of Player] [ass description of Player]."]
	now Ass Skin Adjective entry is "smooth"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is "black and gold"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is "mid-length, [Tail Color of Player] tail"; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is "fuzzy"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is "grey and white"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 8; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite (< 3), shallow (< 5), average (< 9), deep (< 15), bottomless (15+)"]
	now Asshole Tightness entry is 3; [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "extremely tight, tight, receptive, open, gaping"]
	now Asshole Color entry is "onyx"; [one word color descriptor]
	now Cock Count entry is 1;
	now Cock Girth entry is 4; [thickness 1-5, generates the Cock Girth Adjective]
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 10; [length in inches]
	now Cock Change entry is "it fills out into an uncut humanoid cock with a bright gold tip peeking from its black foreskin"; [partial sentence that fits in: "Your cock [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is "is an uncut humanoid cock with a bright gold tip peeking from its black foreskin"; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [cock adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock description of Player]."]
	now Cock Adjective entry is "humanoid"; [one word adjective: avian/canine/...]
	now Cock Color entry is "black"; [one word color descriptor]
	now Ball Count entry is 2;
	now Ball Size entry is 3; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is "balls in a fuzzy, tight sack"; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [ball description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0;
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Change entry is "it takes on a humanoid appearance, complete with a clit at the top and soft lips"; [partial sentence that fits in: "Your groin [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt Change entry]."]
	now Cunt Description entry is "is [Cunt Color of Player], with humanoid lips."; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [cunt description of Player]."]
	now Cunt Adjective entry is "humanoid"; [one word adjective: avian/canine/...]
	now Cunt Color entry is "black"; [one word color descriptor]
	now Clit Size entry is 2; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
]

[This is the one used for Ziix's encounter.]
Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

when play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Wasp Warrior"; [ Name of the overall species of the infection, used so a "male x" and "female x" have "pureblood X" children. ]
	add "Wasp Warrior" to infections of InsectList;
	add "Wasp Warrior" to infections of FurryList;
	add "Wasp Warrior" to infections of MaleList;
	add "Wasp Warrior" to infections of BipedalList;
	now Name entry is "Wasp Warrior";
	now enemy title entry is "Battered Wasp Warrior"; [ Name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name. ]
	now enemy Name entry is ""; [ Specific name of unique enemy. ]
	now enemy type entry is 1; [ 0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters. ]
	now attack entry is "[one of]The hulking wasp takes a swing at you with desperation in his eyes![or]The wasp warrior lunges forward, bringing his knee up to knock the breath out of you![or]The wasp slashes at you with the well-worn claws tipping his fingers[at random]";
	now defeated entry is "[Ziix Loses]";
	now victory entry is "[Ziix Wins]";
	now desc entry is "[Ziix Desc]";
	now face entry is "insectoid in appearance, resembling a wasp. Black eyes, mandibles, and a pair of twitching antennae create a fearsome appearance";
	now body entry is "hulking and muscular, with a humanoid appearance";
	now skin entry is "yellow and black chitin that's smooth and slightly fuzzy, acting as your";
	now tail entry is "";
	now cock entry is "black with a yellow tip peeking from beneath its foreskin";
	now face change entry is "it grows slightly, making room for a pair of modified mandibles and sprouting a pair of attenae to match your compound black eyes";
	now body change entry is "your muscles grow defined and warrior-like";
	now skin change entry is "it hardens into smooth, slightly fuzzy chitin. Some parts are softer than others, like your chest";
	now ass change entry is "it hardens into two muscular apples that jiggle when not clenched";
	now cock change entry is "your cock darkens to an onyx black with a yellow tip hidden by dusky foreskin";
	now str entry is 20;
	now dex entry is 12;
	now sta entry is 22;
	now per entry is 10;
	now int entry is 10;
	now cha entry is 10;
	now sex entry is "Male";
	now HP entry is 80;
	now lev entry is 10;
	now wdam entry is 15;
	now area entry is "Nowhere";
	now Cock Count entry is 1;
	now Cock Length entry is 12;
	now Ball Size entry is 4;
	now Nipple Count entry is 0;
	now Breast Size entry is 0;
	now Male Breast Size entry is 0;
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0; [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	now SeductionImmune entry is false;
	now libido entry is 50;
	now loot entry is "";
	now lootchance entry is 50;
	now MilkItem entry is "wasp warrior milk"; [ Item to be given to the player if they have this infection and milk themselves. ]
	now CumItem entry is ""; [ Item to be given to the player if they have this infection and jerk off. ]
	now TrophyFunction entry is "-"; [ Function to generate a list of optional loot items, of which the player can choose one after victory. ]
	now scale entry is 4;
	now body descriptor entry is "[one of]smooth[or]chitinous[at random]";
	now type entry is "insect";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	now Cross-Infection entry is ""; [ Infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own strain. ]
	now DayCycle entry is 0;
	now altcombat entry is "default";
	now BannedStatus entry is false;

[Zant's infection: Not actually used an infection, just didn't want him to be labeled a warrior when he's NOT one.]
Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

when play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Wasp Drone"; [ Name of the overall species of the infection, used so a "male x" and "female x" have "pureblood X" children. ]
	add "Wasp Drone" to infections of InsectList;
	add "Wasp Drone" to infections of FurryList;
	add "Wasp Drone" to infections of MaleList;
	add "Wasp Drone" to infections of BipedalList;
	now Name entry is "Wasp Drone";
	now enemy title entry is ""; [ Name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name. ]
	now enemy Name entry is ""; [ Specific name of unique enemy. ]
	now enemy type entry is 1; [ 0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters. ]
	now attack entry is "";
	now defeated entry is "";
	now victory entry is "";
	now desc entry is "";
	now face entry is "insectoid in appearance, resembling a wasp. Black eyes, mandibles, and a pair of twitching antennae create a fearsome appearance";
	now body entry is "hulking and muscular, with a humanoid appearance";
	now skin entry is "red and black chitin that's quite fuzzy, acting as your";
	now tail entry is "";
	now cock entry is "black with a red tip peeking from beneath its foreskin";
	now face change entry is "it grows slightly, making room for a pair of modified mandibles and sprouting a pair of attenae to match your compound black eyes";
	now body change entry is "your muscles grow defined and warrior-like";
	now skin change entry is "it hardens into fuzzy chitin. Some parts are softer than others, like your chest and ass";
	now ass change entry is "it grows into two chubby, fuzzy orbs";
	now cock change entry is "your cock darkens to an onyx black with a red tip hidden by dusky foreskin";
	now str entry is 20;
	now dex entry is 12;
	now sta entry is 22;
	now per entry is 10;
	now int entry is 10;
	now cha entry is 10;
	now sex entry is "Male";
	now HP entry is 80;
	now lev entry is 10;
	now wdam entry is 15;
	now area entry is "Nowhere";
	now Cock Count entry is 1;
	now Cock Length entry is 12;
	now Ball Size entry is 4;
	now Nipple Count entry is 0;
	now Breast Size entry is 0;
	now Male Breast Size entry is 0;
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0; [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	now SeductionImmune entry is false;
	now libido entry is 50;
	now loot entry is "";
	now lootchance entry is 50;
	now MilkItem entry is "wasp drone milk"; [ Item to be given to the player if they have this infection and milk themselves. ]
	now CumItem entry is ""; [ Item to be given to the player if they have this infection and jerk off. ]
	now TrophyFunction entry is "-"; [ Function to generate a list of optional loot items, of which the player can choose one after victory. ]
	now scale entry is 4;
	now body descriptor entry is "[one of]fuzzy[or]chitinous[at random]";
	now type entry is "insect";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	now Cross-Infection entry is ""; [ Infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own strain. ]
	now DayCycle entry is 0;
	now altcombat entry is "default";
	now BannedStatus entry is false;

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

when play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Wasp King"; [ Name of the overall species of the infection, used so a "male x" and "female x" have "pureblood X" children. ]
	add "Wasp King" to infections of InsectList;
	add "Wasp King" to infections of FurryList;
	add "Wasp King" to infections of MaleList;
	add "Wasp King" to infections of BipedalList;
	now Name entry is "Wasp King";
	now enemy title entry is ""; [ Name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name. ]
	now enemy Name entry is ""; [ Specific name of unique enemy. ]
	now enemy type entry is 1; [ 0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters. ]
	now attack entry is "";
	now defeated entry is "";
	now victory entry is "";
	now desc entry is "";
	now face entry is "insectoid in appearance, resembling a wasp. Black eyes, mandibles, and a pair of twitching antennae create a fearsome appearance";
	now body entry is "hulking and muscular, with a humanoid appearance";
	now skin entry is "gold and black chitin that's smooth and slightly fuzzy, acting as your";
	now tail entry is "";
	now cock entry is "black with a gold tip peeking from beneath its foreskin";
	now face change entry is "it grows slightly, making room for a pair of modified mandibles and sprouting a pair of attenae to match your compound black eyes";
	now body change entry is "your muscles grow defined and warrior-like";
	now skin change entry is "it hardens into smooth, slightly fuzzy chitin. Some parts are softer than others, like your chest";
	now ass change entry is "it hardens into two large, muscular melons that jiggle when not clenched";
	now cock change entry is "your cock darkens to an onyx black with a gold tip hidden by dusky foreskin";
	now str entry is 22;
	now dex entry is 16;
	now sta entry is 24;
	now per entry is 14;
	now int entry is 10;
	now cha entry is 15;
	now sex entry is "Male";
	now HP entry is 120;
	now lev entry is 10;
	now wdam entry is 10;
	now area entry is "Nowhere";
	now Cock Count entry is 1;
	now Cock Length entry is 12;
	now Ball Size entry is 4;
	now Nipple Count entry is 0;
	now Breast Size entry is 0;
	now Male Breast Size entry is 0;
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0; [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	now SeductionImmune entry is false;
	now libido entry is 50;
	now loot entry is "";
	now lootchance entry is 50;
	now MilkItem entry is "wasp king milk"; [ Item to be given to the player if they have this infection and milk themselves. ]
	now CumItem entry is ""; [ Item to be given to the player if they have this infection and jerk off. ]
	now TrophyFunction entry is "-"; [ Function to generate a list of optional loot items, of which the player can choose one after victory. ]
	now scale entry is 4;
	now body descriptor entry is "[one of]Smooth[or]Fuzzy[or]Chitinous[at random]";
	now type entry is "insect";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	now Cross-Infection entry is ""; [ Infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own strain. ]
	now DayCycle entry is 0;
	now altcombat entry is "default";
	now BannedStatus entry is false;

Section 3 - Story Events

[Hive Story Events will be placed here. Side content involving 1-2 of the hive members will be included within one of their files.]

[Introduction Event]
Table of GameEventIDs (continued)
Object	Name
Draconic Ruckus	"Draconic Ruckus"

Draconic Ruckus is a situation.
ResolveFunction of Draconic Ruckus is "[ResolveEvent Draconic Ruckus]".
Sarea of Draconic Ruckus is "Capitol".
The level of Draconic Ruckus is 8.
when play begins:
	add Draconic Ruckus to BadSpots of MaleList;
	add Draconic Ruckus to BadSpots of FurryList;

to say ResolveEvent Draconic Ruckus:
	say "     As you walk through the streets, you hear the roar of a dragon from above and see a flash of fire. You duck into an alleyway, readying yourself for combat, but the creature had no interest in you from the beginning. It throws itself from its perch, on a curiously hive-like growth at the top of a building, and flaps its wings, clearly struggling to fly with a belly bulging with what you HOPE isn't survivors. You return to the street, surveying the place that the dragon vacated. It seems to be an old hotel building, though part of it has become something that resembles a wasp hive. A gaping hole in the side of the organic structure leaves no doubt about the destruction that the dragon caused, but you can't help your curiosity. Maybe there's something worth salvaging inside? It shouldn't be all that dangerous if the creature managed to escape unscathed.";
	AddNavPoint Hymenoptera Hotel;

[Meeting Ziix]
Table of WalkinEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
1	"Last Stand"	Last Stand	"[EventConditions_Last Stand]"	Loyalty's End	2500	2	100

to say EventConditions_Last Stand:
	now CurrentWalkinEvent_ConditionsMet is true;

Table of GameEventIDs (continued)
Object	Name
Last Stand	"Last Stand"

Last Stand is a situation.
ResolveFunction of Last Stand is "[ResolveEvent Last Stand]".
Sarea of Last Stand is "Nowhere".

to say ResolveEvent Last Stand:
	say "     'You. You don't even have the common decency to let me die. Come on. I won't let you eat me like the rest.' A deep but weak voice rings out in the room as you ascend the hive's stairs, and a muscular wasp man stumbles in your direction, his body swaying and yellowish blood dripping from a row of toothmarks on his side that has already begun to heal. He moves between you and the far exit, his clawed fingers bunched into fists. The poor thing isn't in his right mind and seems to think you're the dragon that destroyed his home, despite the obvious difference in size.";
	LineBreak;
	say "     Do you try to convince the distraught warrior that you're not here to hurt him?";
	say "     ([link]Y[as]y[end link]) - Yes. You were just curious.";
	say "     ([link]N[as]n[end link]) - No. You'll let your fists do the talking.";
	LineBreak;
	if player consents:
		LineBreak;
		let bonus be (( Charisma of Player minus 10 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]14[roman type] (Charisma Check):[line break]";
		LineBreak;
		if diceroll + bonus >= 15: [success]
			say "     You gesture at the burn marks and state that you couldn't be the one that destroyed his home. For one thing, you're far too small to be the culprit! The dragon was HUGE. You're just a scavenger and thought there might be something left to help your struggles. Falling to his knees, the warrior regards you suspiciously but seems to believe you, holding his side and slumping back against the wall after a moment. Despite his insectoid face's lack of human emotion, you can tell he's in pain, and his breathing is labored. He doesn't respond, instead breathing heavily and staring off into space. You recall that sugar water attracts bees and wasps. Maybe something sugary would help the warrior recover?";
			if soda is owned:
				say "[ZiixSodaChoice]";
			else:
				say "     Sadly, you don't have anything that could help. Maybe another of the warrior's hivemates survived the purge and could help you rouse him? You don't think you have time to scavenge and return!";
				now Resolution of Last Stand is 2;
		else:
			say "     The wasp man charges you before you convince him that you aren't a threat, saying something intelligible about dragging you to death with him. It seems you have no choice but to fight him. Thankfully, despite his muscles and size, he's unsteady and unable to focus on you, let alone aim his attacks. It shouldn't be hard to take him down.";
			now inasituation is true;
			challenge "Wasp Warrior";
			now inasituation is false;
			if fightoutcome < 20: [player won]
				say "     Standing over the defeated wasp, you gesture at the burn marks and state that you couldn't be the one that destroyed his home. For one thing, you're far too small to be the culprit! The dragon was HUGE. You're just a scavenger and thought there might be something left to help your struggles. Despite his insectoid face's lack of human emotion, you can tell he's in pain, and his breathing is labored. He doesn't respond, instead breathing heavily and staring off into space, as if he's given up on survival. You recall that sugar water attracts bees and wasps. Maybe something sugary would help the warrior recover?";
				say "[ZiixSodaChoice]";
			else if fightoutcome < 19 and fightoutcome < 30: [lost]
				say "     Thankfully, the wasp warrior collapses after he defeats you. Falling backward and panting with exertion, you gesture at the burn marks and breathlessly state that you couldn't be the one that destroyed his home. For one thing, you're far too small to be the culprit! The dragon was HUGE. You're just a scavenger and thought there might be something left to help your struggles. Despite his insectoid face's lack of human emotion, you can tell he's in pain, and his breathing is labored. He doesn't respond, instead breathing heavily and staring off into space, as if he's given up on survival. You recall that sugar water attracts bees and wasps. Maybe something sugary would help the warrior recover?";
				say "[ZiixSodaChoice]";
			else if fightoutcome > 30: [fled]
				say "     You manage to avoid the wasp warrior's grasp long enough that he falls backward, landing heavily against the wall. Despite his insectoid face's lack of human emotion, you can tell he's in pain, and his breathing is labored. He doesn't respond, instead breathing heavily and staring off into space, as if he's given up on survival. You recall that sugar water attracts bees and wasps. Maybe something sugary would help the warrior recover?";
				say "[ZiixSodaChoice]";
	else:
		LineBreak;
		say "     The wasp man charges you before you convince him that you aren't a threat, saying something intelligible about dragging you to death with him. It seems you have no choice but to fight him. Thankfully, despite his muscles and size, he's unsteady and unable to focus on you, let alone aim his attacks. It shouldn't be hard to take him down.";
		now inasituation is true;
		challenge "Wasp Warrior";
		now inasituation is false;
		if fightoutcome < 20: [player won]
			say "     Standing over the defeated wasp, you gesture at the burn marks and state that you couldn't be the one that destroyed his home. For one thing, you're far too small to be the culprit! The dragon was HUGE. You're just a scavenger and thought there might be something left to help your struggles. Despite his insectoid face's lack of human emotion, you can tell he's in pain, and his breathing is labored. He doesn't respond, instead breathing heavily and staring off into space, as if he's given up on survival. You recall that sugar water attracts bees and wasps. Maybe something sugary would help the warrior recover?";
			say "[ZiixSodaChoice]";
		else if fightoutcome < 19 and fightoutcome < 30: [lost]
			say "     Thankfully, the wasp warrior collapses after he defeats you. Falling backward and panting with exertion, you gesture at the burn marks and breathlessly state that you couldn't be the one that destroyed his home. For one thing, you're far too small to be the culprit! The dragon was HUGE. You're just a scavenger and thought there might be something left to help your struggles. Despite his insectoid face's lack of human emotion, you can tell he's in pain, and his breathing is labored. He doesn't respond, instead breathing heavily and staring off into space, as if he's given up on survival. You recall that sugar water attracts bees and wasps. Maybe something sugary would help the warrior recover?";
			say "[ZiixSodaChoice]";
		else if fightoutcome > 30: [fled]
			say "     You manage to avoid the wasp warrior's grasp long enough that he falls backward, landing heavily against the wall. Despite his insectoid face's lack of human emotion, you can tell he's in pain, and his breathing is labored. He doesn't respond, instead breathing heavily and staring off into space, as if he's given up on survival. You recall that sugar water attracts bees and wasps. Maybe something sugary would help the warrior recover?";
			say "[ZiixSodaChoice]";
	Change the up Exit of Loyalty's end to Egg Chamber;
	now Last Stand is resolved;

to say ZiixSodaChoice:
	if soda is owned:
		say "     You remember that you have a can of soda in your bag. Give it to the wasp?";
		LineBreak;
		say "     Do you try to convince the distraught warrior that you're not here to hurt him?";
		say "     ([link]Y[as]y[end link]) - Yes. Anything's better than watching him fade away.";
		say "     ([link]N[as]n[end link]) - No. You can't be sure that it would help. You'll try something else.";
		LineBreak;
		if player consents:
			LineBreak;
			say "     Grabbing for the soda, you pop the tab and hold it to the wasp warrior's mandibles, tilting it until you see his throat moving and hear the gentle sound of swallowing. The sugary drink's effect is almost immediate. You can see his breathing stabilize, his wounds closing as his nanites react to the food, repairing his chitinous stomach and leaving only the barest hint of a scar.";
			itemloss soda by 1;
			now Resolution of Last Stand is 1; [player helped the soldier wasp]
			say "     You notice that as you the soldier relaxes, his cock does the opposite, rising to the challenge and throbbing. If you wanted to, you could use it while he sleeps. Of course, there's also still the issue of the fact that he attacked you. Should you really let him rest quietly after his aggression?";
			let Ziix_Sleeping_Choices be a list of text;
			add "Ride his dick. It's the least he can do for the trouble he caused." to Ziix_Sleeping_Choices;
			add "Let the poor guy sleep." to Ziix_Sleeping_Choices;
			add "Kick him out. How dare he attack you!" to Ziix_Sleeping_Choices;
			let Ziix_Sleeping_Choice be what the player chooses from Ziix_Sleeping_Choices;
			if Ziix_Sleeping_Choice is:
				-- "Ride his dick. It's the least he can do for the trouble he caused.":
					say "The wasp seems none the worse for the wear. He almost looks peaceful, lying there with his chest slowly rising and falling. Those black compound eyes are closed, but his expression is softer than before you gave him a little 'pick-me-up.' With him subdued and calm, you have time to look over his body, trailing your gaze down over muscular-looking chitinous plates of yellow and black. There's no doubt that the warrior's built for battle, but you can't help but notice that he seems well-equipped for *other pursuits.* Standing proudly between his legs, a black shaft bounces eagerly, topped with a glistening yellow tip that oozes golden dew as you watch, wetting itself with arousal. if you wanted to, you could take advantage of his sleeping form.";
					say "[ZiixSleepFuck]";
				-- "Let the poor guy sleep.":
					say "Shrugging, you walk away, letting the poor thing sleep it off.";
				-- "Kick him out. How dare he attack you!":
					say "[ZiixExile]";
		else:
			LineBreak;
			say "     You decide against giving the half-conscious wasp soda. What if he chokes? However, you're sure that you need to do SOMETHING. Maybe one of his hivemates survived and can help you rouse the poor wretch.";
			now Resolution of Last Stand is 2; [player didn't help the soldier wasp]
	else:
		say "     Sadly, you don't have anything that could help. Maybe another of the warrior's hivemates survived the purge and could help you rouse him? You don't think you have time to scavenge and return!";
		now Resolution of Last Stand is 2;

[Meeting Zant]
Table of WalkinEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
1	"Rude Awakening"	Rude Awakening	"[EventConditions_Last Stand]"	Drone Quarters	2500	2	100

to say EventConditions_Last Stand:
	now CurrentWalkinEvent_ConditionsMet is true;

Table of GameEventIDs (continued)
Object	Name
Rude Awakening	"Rude Awakening"

Rude Awakening is a situation.
ResolveFunction of Rude Awakening is "[ResolveEvent Rude Awakening]".
Sarea of Rude Awakening is "Nowhere".

to say ResolveEvent Rude Awakening:
	say "     As you explore the intact side of the hive, you come upon a room with what appear to be bunk beds. A heavy, masculine scent cloys in the room, and you can't help your reaction to it, adjusting yourself and barely resisting the urge to rub your crotch. It smells strangely sexy, despite the room's abandoned, half-destroyed appearance. A yawn stops your roaming hand, and you ready yourself for a fight but relax when you notice the lazy appearance of the creature in the corner. A red and black ball of fluff rolls over from his corner bed, sitting up and scooting out, giving you an eyeful of a massive, floppy black and red cock that throbs, half-hard and seemingly perpetually aroused. He's human enough in appearance, but most of his body sports bright, almost gaudy, red and black fluff, except for that massive dick and smooth, bare balls.";
	say "     The slightly chubby wasp-man flutters his wings and regards you with a lazy stare, yawning and stretching his beefy arms. 'Hmm. How did you get back here? Shouldn't the soldiers be keeping others out?' He asks though he seems unworried by your appearance. Scratching his fuzzy ass and contemplating you with a lazy smile, he smooths his excessive chest fur and shrugs. if you'd like, you can make yourself useful. Most mornings, I'd have a worker on his knees helping clean me up, but you seem willing enough.' Indicating his hardening cock, the fluffy wasp man nods toward your crotch. 'Seems like you're excited by the idea.'";
	LineBreak;
	say "     Suck the fluffy wasp's cock?";
	say "     ([link]Y[as]y[end link]) - Fuck yeah. That dripping dick belongs in your mouth!";
	say "     ([link]N[as]n[end link]) - Nah. You're not that much of a slut.";
	if player consents:
		LineBreak;
		say "     Nodding as if in a trance, you set aside your gear and slip down to your knees in front of the wasp man, facing his impressive, thick cock. Up close, the source of the musk makes itself apparent, and you barely hold back a moan as you sniff the sugary drop of pure manliness at his tip. Barely able to hold yourself together, you introduce yourself and then kiss his cock tip, rolling your tongue over the bright red flesh and shivering as the sugary taste of insect precum coats your tongue like syrup. 'That's it. Don't be shy.' The wasp man says with a buck of his steely hard fuckstick, ignoring your hasty introduction. 'You can savor it if you want. Ol' Zant's not opposed to taking his time.' You get the feeling that 'Zant' is a breeding drone based on the copious flow of juices rolling down your throat and the expert way he prods into your throat, bypassing your gag reflex and stuffing your mouth in such a way that you're pressed against the base before you can think about his size. The fluff above his cock smells even better than the rest of him, like sweat and honey and pure masculinity.";
		LineBreak;
		say "     At first, you're content to drift lazily along Zant's dick, letting him explore your throat and polish himself with your mouth, but the longer you drench your sinuses in his pheromones, the more you bob your head, feeling the heady mixture of honey and drool drip down your chest. You lose track of how long you suck, but the telltale twitching of that glorious cock wakes you from your cock-trance. You pull off to the tip, taking the first squirt of cum against your tongue and gurgling as you chug the fruit of your efforts, the sheer volume overflowing from your nose and painting every breath in honey-cum. 'Phew. Fuck, I don't care why you're here. I'll vouch for you.' Zant smirks as his cock leaves your lips, painting them with honey lipgloss. Bringing your face to those churning black balls, he demands a spitshine with an air of entitlement, his free hand stroking the last dregs of cum over your face. You follow his lead without complaint, licking every inch of those musky balls and stroking/fingering yourself to completion with a mouthful of his sack.";
		say "     You spend a few more minutes cleaning Zant's manhood, then pull away, gathering your gear and trying desperately to shake off the horny fog that settles over you in his presence[if Resolution of Last Stand is 2 and hp of Ziix < 100]. While you're here, you ask for his help with the wasp warrior in the other room[else if Resolution of Last Stand is 1]. Now that you've explored the hive, perhaps you should return to the sleeping warrior[end if].";
		NPCSexAftermath Player receives "OralCock" from Zant;
		now Resolution of Rude Awakening is 1; [Helped Zant with his erection.]
	else:
		LineBreak;
		say "     Despite the mouthwatering spectacle, you decline the wasp man's advances. Instead, you introduce yourself, keeping an arm's length between your body and his and trying to hold your breath. You don't want to lose control and do something you'll regret! The wasp introduces himself as Zant, taken aback by your rejection. 'Strange. if you've come to the drone quarters, surely that means you want some dick? We're not known for anything else. Though-' For the first time, the wasp looks around, noticing how quiet it is. 'Where is everyone?' Pointedly ignoring the wasp man's appearance, you explain everything that's happened since you showed up, starting with the dragon's appearance. Strangely he doesn't seem all that broken up, simply shrugging his shoulders and sighing. 'Of course I'll miss them, but there's nothing I can do. Gotta live one day at a time.'";
		say "     [if Resolution of Last Stand is 2 and hp of Ziix < 100]While you're here, you should ask for his help with the wasp warrior in the other room[else if Resolution of Last Stand is 1]Now that you've explored the hive, perhaps you should return to the sleeping warrior[else]You feel a bit guilty about chasing off Zant's hive-mate. Hopefully he never finds out[end if].";
		now Resolution of Rude Awakening is 2; [Declined Sex with Zant.]
	now Rude Awakening is resolved;

[Reuniting Ziix and Zant]
Table of WalkinEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
1	"Broken But Alive"	Broken But Alive	"[EventConditions_Broken But Alive]"	Loyalty's End	2500	2	100

to say EventConditions_Broken But Alive:
	now CurrentWalkinEvent_ConditionsMet is true;

Table of GameEventIDs (continued)
Object	Name
Broken But Alive	"Broken But Alive"

Broken But Alive is a situation.
ResolveFunction of Broken But Alive is "[ResolveEvent Broken But Alive]".
Sarea of Broken But Alive is "Nowhere".
Prereq1 of Broken But Alive is Last Stand.
Prereq1Resolution of Broken But Alive is { 1, 2, 3 }.
Prereq2 of Broken But Alive is Rude Awakening.
Prereq2Resolution of Broken But Alive is { 1, 2 }.

to say ResolveEvent Broken But Alive:
	if HP of Ziix is 100:
		say "     As you enter the room where you found the wasp warrior, you shake your head and look at the stains on the floor from where he fell. if he hadn't attacked you, you would have let him stay. His fate was his fault. You were right to banish him, weren't you? You suppose you'll never know.";
		now Resolution of Broken But Alive is 1; [Can't progress as king without Ziix.]
	else if HP of Ziix < 100 and Resolution of Last Stand is 1:
		say "     Accompanied by Zant, you return to the chamber where you left the wasp warrior. Thankfully, your fizzy drink seems to have helped perk up the poor man, and as you walk in, he meets you, his face brightening as he sees Zant. Strangely, he stays back a bit further than you expected, and you realize that the warrior's cock twitches in response to Zant's presence. Hah. At least you're not the only one! Reuniting them was the right choice, as you watch the two catch up like long-lost brothers. if it weren't for their bare, drooling cocks, it would be heartwarming.";
		say "     You chat with the two for a while, asking how things used to work in the hive. Like any hive, it had its royalty, a king that lived above you in the now barren and destroyed egg chamber. According to what Ziix and Zant say, he was the start of the hive, the only former human living within it, and the hotel's original owner. They'd been living off the hotel's old food stores for weeks and growing in numbers as the king filled the egg chamber with brood, attended by his breeding drones and protected from looters by Ziix and his warriors. Recounting what happened when the dragon attacked is a horrible subject for Ziix, so you leave the conversation there, letting him and Zant catch up. Their story has moved you, and you wonder if you could help them regain the hive's former glory. Perhaps you could even become their new king...?";
		now Resolution of Broken But Alive is 2; [More brotherly interaction.]
	else if HP of Ziix < 100 and Resolution of Last Stand is 2:
		say "     Accompanied by Zant, you return to the chamber where you left the wasp warrior and show him to the fallen warrior. You keep the details of his state to yourself but ask if Zant could wake him up for you. You're worried about his wounds but can't think of any way to help him. 'Hm? Oh, Ziix? He's fine. I've seen him with worse scrapes than that from sparring with the other soldiers. He's just a little out of it from blood loss. Needs a pick-me-up.' Zant yawns and kneels to Ziix's level, then brings the soldier's face to his chest in a bear hug, his position showing off a big, red, perfectly rounded butt that makes you want to bury your face between its cheeks. Like a miracle, the wounded warrior starts to shift uncomfortably, making indignant noises, and soon you see his flaccid cock throb to attention, resting between Zant's dangling balls. They struggle for a moment, but eventually, Ziix's arms come up around Zant's thicker midsection, and you hear the soft, wet sound of kissing accompanied by a satisfied grumble.";
		say "     Before it progresses past making out, the two wasp men separate, and Zant sits next to the recovered warrior, draping his arm around his shoulders in a companionable pose. 'See? He's fine.' He repeats, his antennae wiggling as he traps the other man's head near his chest. 'He'll probably beat my ass for this later, but he'll live.' He grins as Ziix nuzzles into his pec, clearly musk-drunk. Once Ziix manages to compose himself, you introduce yourself, shaking the wasp men's hands and openly ogling their throbbing cocks. Was the whole hive hung like horses? You would have loved to see the place in its prime.";
		WaitLineBreak;
		say "     You chat with the two for a while, asking how things used to work in the hive. Like any hive, it had its royalty, a king that lived above you in the now barren and destroyed egg chamber. According to what Ziix and Zant say, he was the start of the hive, the only former human living within it, and the hotel's original owner. They'd been living off the hotel's old food stores for weeks and growing in numbers as the king filled the egg chamber with brood, attended by his breeding drones and protected from looters by Ziix and his warriors. Recounting what happened when the dragon attacked is a horrible subject for Ziix, so you leave the conversation there, letting him and Zant catch up. Their story has moved you, and you wonder if you could help them regain the hive's former glory. Perhaps you could even become their new king...?";
		now Resolution of Broken But Alive is 3; [horny bearhug]
	now Broken But Alive is resolved;

Section 4 - Becoming King

To say ZiixZantRoyalty:
	say "     Approaching Ziix in his spot before the Egg chamber, you ask him about the hive's future. The place is missing structure, and with the world being the way it is, it seems like a good idea for someone to lead. Maybe that person should be you? Ziix seems taken aback by your offer, and his black eyes almost swim for a second as he mulls over his words. 'It feels like a bit of an insult to replace my king so soon after his demise, but I suppose you're right. Without a new source of brothers, it's only a matter of time before tragedy strikes, and what's left is in ruins. if that THING comes back...' Shaking his head, Ziix wipes his face on his arm, his face contorting as he remembers what happened before you saved him. 'You've proven yourself already, I suppose. I'm in no position to inherit the throne and Zant...' He doesn't need to say it. The carefree drone wouldn't ever get anything done, AND his ego would swell even further. 'if you're certain.'";
	say "     Are you sure that you want to become the hive's ruler? Considering the state of the world, it's bound to involve some hot wasp sex. Of course, declining might send Ziix spiraling. [italic type]You doubt you'll be able to ask again[roman type].";
	LineBreak;
	let Hive_Choices be a list of text;
	add "Yes, you want to become king." to Hive_Choices;
	add "No. Now that you think about it, it's too much responsibility." to Hive_Choices;
	let Hive_Choice be what the player chooses from Hive_Choices;
	if Hive_Choice is:
		-- "Yes, you want to become king.":
			LineBreak;
			say "     Nodding emphatically at Ziix's question, you agree to take over as the new king, watching Ziix's somewhat gloomy face brighten. He looks like he's about to break down as the warrior ushers you into the Egg chamber, but the way his wings are buzzing assures you that he's feeling fine. With shaking hands, he guides you onto the oddly shaped throne there and helps you disrobe, threading your legs through the back and laying your bottom half in a strangely comfortable position that spreads your ass cheeks. The warrior disappears once you're cemented in place by a strange, gluey substance he spits onto your limbs, and you're left to contemplate your choices, wiggling against your bonds and wondering where he went. Thankfully, you're not left in that position long, and his purpose becomes clear as he returns, talking animatedly with Zant. His dick's hardened, either from Zant's presence or sheer excitement, and he returns to your side with a speedy gait.";
			say "     It soon becomes clear that your assumptions were correct. As with most things in this new world, your transformation into the hive's king will involve a rather messy transition. It's too late to complain, of course, as you couldn't escape the throne's blatantly sexual bonds even if you wanted to. All you can do is watch Zant disappear behind you, taking his place at your rear, inspecting your rump, and flopping his mammoth cock between your cheeks, smearing his honey over your twitching ass. 'This'll be fun.' His voice vibrates through you as a soft fog settles over you, courtesy of his musk. 'Ziixy told me what you're doing for us. Don't worry. I'll be gentle.' Not to be left out, Ziix steps up to your front, presenting you with a steel-hard cock coated in a thin layer of honey-pre. Clearing his throat, he looks away as he butts the tip against your lips, asking for service. They push in at the same time, silencing your moans with a mouthful of sweet cock and [if player is female]stuffing your needy pussy full of so much meat that you can feel your insides quiver, and it feels like your cervix is kissing Zant's tip[else if player is male]stretching your unprepared asshole and delving deep into your inner walls, basting every inch of your colon in wasp-pre[end if].";
			WaitLineBreak;
			say "     You barely have time to suck in a breath before Ziix's cock stuffs itself into your throat, gagging your emerging moans and butting your nose against his pubic chitin. His balls bounce off your chin in a relentless rhythm from the start, and you clench your fingers into the throne, your throat aching but your body begging for more as you drool down that perfect cock. Meanwhile, as you slurp Ziix's shaft, Zant stretches your pussy almost to its breaking point, his stomach pressed against your back, hands braced on the organic throne above you. He barely pulls out with every thrust, bruising your [if player is female]cervix [else if player is male]prostate [end if]with brutal thrusts, and he's grunting with each push, obviously lost in a breeding frenzy. In unison, the two speed their pace, slamming to the hilt and filling your entrances to the brim with cum. Weakly, you join both of them in orgasm, [if player is male]your cock adding to the growing puddle beneath your ruined hole[else if player is female]your pussy squirting around Zant's cock, messing his fuzzy pubic chitin[end if].";
			say "     You feel as though your mind is going to break with every thrust, and the edges of your vision are growing black. Passing out would almost be a mercy at this point for your short circuiting brain, but it feels so damn good. Do you want to see this through to the end, or let yourself pass out?";
			LineBreak;
			let Hive_Bound_Choices be a list of text;
			add "Hold on as long as you can. You want to enjoy every second of your transformation." to Hive_Bound_Choices;
			add "Pass out from the pleasure. It's too much." to Hive_Bound_Choices;
			let Hive_Bound_Choice be what the player chooses from Hive_Bound_Choices;
			if Hive_Bound_Choice is:
				-- "Hold on as long as you can. You want to enjoy every second of your transformation.":
					LineBreak;
					say "     Everything goes fuzzy as the wasps switch positions, but you manage to hold on, meeting Zant's cock with eager lips and slurping honey from his exposed head, tasting yourself on his shaft. You dive down it without complaint, nuzzling into his pubes with a greedy snort and moaning as the twin loads inside of you begin your work. Your feet are the first to change, fusing into claws that grip at the air in triplicate, scrabbling for footing where there is none, and you feel your ass growing more bubbly, clapping against Ziix's pubic chitin with every brutal thrust that wrings pleasure from [if player is female]your needy pussy[else if player is male] your spasming asshole[end if]. Before you feel a second splash of honey-cum painting your innards, your vision has clarified into something brighter and more detailed than what you're used to. The once bright color of Ziix's red fur shines like the sun, and the golden drip of honey, when he pulls out to smear it over your face, is fluorescent and looks incredibly tasty, drawing you back down his shaft before he can pull away.";
					say "     The rest of your body follows suit as the second dose of wasp cum does its work, twisting your fingers into triple claws and spreading chitin over your skin. Wings burst from your back, settling into a gentle flutter above your back, but the tingling pleasure of your body's morphing form distracts you from the alien sensation of their gentle fluttering. Soon enough, you can feel the changes slowly stop, leaving you as a golden and black wasp and allowing you to focus on milking a third round from your suitors.";
					WaitLineBreak;
					if player is female:
						say "     Ziix seems determined to cover every aspect of your transformation. Rather than staying in your ruined, honey-pied cunt, he slips free before his third finish, slamming home in your twitching ass and pumping you full of his love. You're too exhausted to protest, and you must admit that it feels nice to feel his churning balls pressed against your clit, so you accept every inch, clenching needily. Exhaustion takes you as their final orgasms overwhelm your system with sticky sweetness. Suckling at Zant's finally softened cock as your eyelids grow heavy, your body supported by nothing but cock and the comfortable embrace of the throne below you, you muse that being king must have its perks if you get to enjoy pleasure this deep. Vaguely, you hear your new subjects murmur your name with a bit of praise, their strong hands breaking you free of your bonds and letting your overworked body settle into a cum-drenched slumber.";
					else if player is male:
						say "     Exhaustion takes you as their final orgasms overwhelm your system with sticky sweetness. Suckling at Zant's finally softened cock as your eyelids grow heavy, your body supported by nothing but cock and the comfortable embrace of the throne below you, you muse that being king must have its perks if you get to enjoy pleasure this deep. Vaguely, you hear your new subjects murmur your name with a bit of praise, their strong hands breaking you free of your bonds and letting your overworked body settle into a cum-drenched slumber.";
					SanLoss 15;
				-- "Pass out from the pleasure. It's too much.":
					LineBreak;
					say "     Everything goes fuzzy as the wasps switch positions. You're vaguely aware of a honey-coated cock slipping past your lips, accompanied by the irresistible scent of Zant's musk, and feel (your pussy lips part around Ziix's still rock-hard cock./your ass spread without much resistance, pierced by the warrior's cock.) You suckle dutifully even as the world fades away on a curtain of pleasure, listening to your body crack and shift into its new insect form.";
			turn player into "Wasp King" silently;
			FeatGain "MPreg";
			FeatGain "Wasp Royalty";
			FeatGain "Hive Breeder";
			now sterile of Zant is false;
			now sterile of Ziix is false;
			now hunger of Ziix is 1;
			WaitLineBreak;
			say "     You awaken to something soft and wet, cleaning your face, and open your eyes to see Ziix leaning over you, swiping a moist cloth over your face and cleaning the remnants of honey from your chitin with gentle motions. It's the warmest and most caring you've ever seen him, and when he notices you're awake, he throws his arms around you for a surprising embrace. 'My king!' He murmurs with excitement before disengaging, his antennae entwining with yours and his hands roaming over your newly changed body. 'I was worried about you. You've been unresponsive.' Wings buzzing, he steps back and helps you to your feet, supporting you as you wobble on your new appendages. 'I'm sure you're very busy, but try to stay safe out there. I'll be watching over you.'";
			say "     Handing you your gear, the warrior leans against the Egg Chamber entryway, looking more relaxed. Is it because he just orgasmed his brains out, or is he relieved that his hive now has a future? Either way, he looks much more handsome with a slight smile. Shouldering your pack, you say goodbye and ready yourself to leave, mulling over your new responsibilities. After you pump out some sons for the hive, you should return to check on your subjects.";
			now hunger of Ziix is 99; [Became King. Can become King again if you lose the infection.]
		-- "No. Now that you think about it, it's too much responsibility.":
			LineBreak;
			say "     It seems like a lot of responsibility. Perhaps you're not ready for that sort of position. You'd like to help the hive flourish but don't think your busy schedule could accommodate it. You apologize to Ziix for getting his hopes up, hoping he doesn't hold it against you. 'No... It's fine. I can't ask you to do something you're unwilling to accept.' Sighing, Ziix sags against his spot. 'I suppose, with only Zant and myself... Maybe it's for the best.' Gloomily, he asks to be left alone, disappointed by your answer. You don't think you should bring up the subject again. You might send the poor wasp warrior into a depression.";
			now hunger of Ziix is 100; [no more royalty choice.]

to say KingRedo:
	say "     <This has not been implemented yet. In the future this will be a reskin of the original king creation scene. For now, welcome back to Wasp King Royalty.>";
	FeatGain "Wasp Royalty";
	FeatGain "Hive Breeder";

Section 5 - Debug Codes

RemoveWaspKing is an action applying to nothing.

understand "zRemoveWaspKing" as RemoveWaspKing.

check RemoveWaspKing:
	if debugactive is 0:
		say "You aren't currently debugging.";
		stop the action;

carry out RemoveWaspKing:
	FeatLoss "Hive Breeder";
	FeatLoss "Wasp Royalty";
	say "<debug> You're not the wasp king anymore. You'll keep MPreg but you may now change your infection. (Note, the infection sticks around until replaced, but will no longer renew itself every turn.)";
	now Sterile of Zant is true;
	now Sterile of Ziix is true;

Wasp Hive ends here.