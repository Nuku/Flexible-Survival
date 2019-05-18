Version 1 of Demon Fox by Dys begins here.

"Adds a Demon Fox enemy and infection."

[ DemonFoxInteractions tracks the number of times the player interacted     ]
[ with the demon fox                                                        ]
[ DemonFoxRead indicates whether or not the player has read about the       ]
[ demon fox                                                                 ]

DemonFox_PlayerDefeated is a truth state that varies. DemonFox_PlayerDefeated is usually false.
DemonFox_PlayerSubmitted is a truth state that varies. DemonFox_PlayerSubmitted is usually false.
DemonFox_PlayerFled is a truth state that varies. DemonFox_PlayerFled is usually false.
DemonFox_PlayerWon is a truth state that varies. DemonFox_PlayerWon is usually false.
DemonFox_PlayerWon_Fucked is a truth state that varies. DemonFox_PlayerWon_Fucked is usually false.
DemonFox_Encountered is a truth state that varies. DemonFox_Encountered is usually false.
DemonFox_Apologized is a truth state that varies. DemonFox_Apologized is usually false.
DemonFoxInteractions is a number that varies. DemonFoxInteractions is usually 0.
DemonFoxStatus is a number that varies.
DemonFoxRead is a truth state that varies. DemonFoxRead is usually false.

Section 0 - Flags

when play begins:
	add { "Demon Fox" } to infections of guy;
	add { "Demon Fox" } to infections of feral;
	add { "Demon Fox" } to infections of Knotlist;
	add { "Demon Fox" } to infections of Vulpinelist;
	add { "Demon Fox" } to infections of hellspawn;

Section 1 - Creature Responses

to say DemonFoxDefeat:
	if inasituation is true:
		say "";
	else:
		say "     You shouldn't be able to encounter the demon fox out of a situation. If you are, please let @Dys know on the FS Discord.";

to say DemonFoxVictory:
	if inasituation is true:
		say "";
	else:
		say "     You shouldn't be able to encounter the demon fox out of a situation. If you are, please let @Dys know on the FS Discord.";

to say DemonFoxDesc:
	if inasituation is true:
		say "";
	else:
		say "     You shouldn't be able to encounter the demon fox out of a situation. If you are, please let @Dys know on the FS Discord.";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

when play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Name entry is "Demon Fox";
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 1; [non-unique enemy]
	now attack entry is "[one of]The massive demonic vulpine leaps at you, sinking his talon-like claws into you![or]The demon head butts you roughly, knocking the air out of your lungs![or]The fox swipes at you, tearing through your flesh![or]The demon fox jumps at you, sinking his teeth into your form![at random]";
	now defeated entry is "[DemonFoxVictory]";
	now victory entry is "[DemonFoxDefeat]";
	now desc entry is "[DemonFoxDesc]";
	now face entry is "that of a demonic fox, with a long and narrow muzzle, a maw full of sharp teeth, pointy ears, and a set of horns protruding from the top of it. You're eyes glow a bright yellow and you have vertically slitted pupils. Black and yellow fur covers it completely";
	now body entry is "is quadrupedal in nature, and beastly in stature. Your hulking form is somehow both lithe and strong, conveying a sense of immense power. A deep black fur covers your back and sides, with a bright yellow covering your stomach and chest";
	now skin entry is "thick and surprisingly soft fur. Beneath the fur lies black";
	now tail entry is "You have three long tails that are jet black up until the tips, which seem to burn with a demonic yellow fire.";
	now cock entry is "[one of]vulpine[or]knotted[or]fox[or]demonic[at random]";
	now face change entry is "as you feel a long and tapered muzzle growing outwards. Your ears shift to the top of your head, becoming triangular in shape and growing a bit larger. A sudden pain rushing through your head as two horns suddenly sprout just behind your ears";
	now body change entry is "your body shifts, forcing you onto all fours. Both your arms and legs lengthen, and your body in general also grows larger. Your legs snap and crack as they rearrange themselves, becoming digitigrade. Your hands and feet become that of a fox's paws, and your nails turn into long and sharp claws";
	now skin change entry is "fur begins to sprout all over your body, with differing colors on different parts. Your chest and lower chin grow a bright yellow fur, while the rest of your body grows a deep jet-black instead";
	now ass change entry is "a tails suddenly sprouts from the base of your spine, growing upwards of three feet long before an immense heat runs down the new appendage. It pulls apart into three distinct tails, each long and fluffy, ending in a burning yellow flame";
	now cock change entry is "its tip tapers out, becoming distinctly vulpine. The shaft bulges and ripples as four distinctly draconic ridges form along the underside, and its color changes, becoming dark gold at the base, and a bright yellow at the tip. A large knot forms at the base. A steady stream of molten looking pre dribbles from your tip before the whole thing recedes back into its new sheath";
	now str entry is 41;
	now dex entry is 30;
	now sta entry is 50;
	now per entry is 35;
	now int entry is 50;
	now cha entry is 40;
	now sex entry is "Male";
	now HP entry is 200;
	now lev entry is 15;
	now wdam entry is 60;
	now area entry is "Nowhere";
	now Cock Count entry is 1;
	now Cock Length entry is 32;
	now Ball Size entry is 5;
	now Nipple Count entry is 0;
	now Breast Size entry is 0;
	now Male Breast Size entry is 0;
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/well-used/open/gaping]
	now libido entry is 45;
	now loot entry is "demon fox fur";
	now lootchance entry is 50;
	now scale entry is 4;
	now body descriptor entry is "[one of]beastly[or]fluffy[or]lithe[or]hulking[at random]";
	now type entry is "vulpine";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;
	now altcombat entry is "default";
	now BannedStatus entry is false;

Table of New Infection Parts (continued)
Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
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
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...)]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...)]
	now Body Hair Length entry is  0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
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
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Body Adjective of Player], [Gender Adjective of Player] and your torso is [Torso Description of Player][if Body Hair Length of Player > 0], covered in [Body Hair Adjective of Player] [Hair Color of Player] chest hair[end if]."]
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
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [ass description of Player]."]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Tail Change entry]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Asshole Tightness entry is 3; [asshole tightness 1-5, "extremely tight, tight, well-used, open, gaping"]
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "tiny, small, tight, wide, gaping"]
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
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/well-used/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that is [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]



Section 3 - Item

Table of Game Objects(continued)
name	desc	weight	object
"demon fox fur"	"A small tuft of black and yellow fur you managed to find after fighting the Demon Fox"	1	demon fox fur

demon fox fur is a grab object.

instead of sniffing demon fox fur:
	say "The fur has a distinct, musky smell to it, reminding you of the fox you got it from.";

the usedesc of demon fox fur is "[DemonFoxFurUse]";

to say DemonFoxFurUse:
	say "You shrug before opening your mouth and eating the fur. Oddly enough, it almost seems to heat up, before it dissolves in your mouth, a strong wave of heat rushing through your body.";

demon fox fur is infectious. The strain of demon fox fur is "Demon Fox".

Section 4 - Tome Specific Scenes

to say DemonFoxSummon:
	say "     You recite the incantation shown in the book, albeit with a little difficulty. With a flash of light, you see the demon fox from before standing in front of you.";
	if DemonFox_PlayerDefeated is true:
		say "     'Well, if it isn't my pet from before...' the beast purrs out. 'You gonna try fighting me again? If so, I'm really not in the mood. I hate to break it to you, but I'm actually not always interested in sex and fighting.' You blink at him incredulously. 'I'm really not. It might have appeared that way from our first encounter, but I'll be the first to admit that I... didn't make a great first impression.'";
		say "     'Perhaps we can try this again. I'm Kal['] Ren, but you can just call me Ren,' he nods in introduction. Tentatively you introduce yourself as well. 'See? That wasn't so hard, now was it, kit?' he asks. 'However, I do believe that's enough chit-chat for now. Perhaps sometime in the future we can have another go.' With that, the fox disappears in another flash of light, leaving you slightly confused at everything that just transpired.";
		now DemonFox_Apologized is true; [met after losing to him, he apologized]
		now TomeTimer is turns;
	else if DemonFox_PlayerSubmitted is true:
		say "     'Well, if it isn't my pet from before...' the beast purrs out. 'You wanna try actually fighting me this time? If so, I'm really not in the mood. I hate to break it to you, but I'm actually not always interested in sex and fighting.' You blink at him incredulously. 'I'm really not. It might have appeared that way from our first encounter, but I'll be the first to admit that I... didn't make a great first impression.'";
		say "     'Perhaps we can try this again. I'm Kal['] Ren, but you can just call me Ren,' he nods in introduction. Tentatively you introduce yourself as well. 'See? That wasn't so hard, now was it, kit?' he asks. 'However, I do believe that's enough chit-chat for now. Perhaps sometime in the future we can have another go.' With that, the fox disappears in another flash of light, leaving you slightly confused at everything that just transpired.";
		now DemonFox_Apologized is true; [met after submitting, he apologized]
		now TomeTimer is turns;
	else if DemonFox_PlayerFled is true:
		say "     'Well, if it isn't the kit from before...' the beast purrs out. 'You gonna run away again? If so, I hate to break it to you, but I'm actually not always interested in sex and fighting.' You blink at him incredulously. 'I'm really not. It might have appeared that way from our first encounter, but I'll be the first to admit that I... didn't make a great first impression.'";
		say "     'Perhaps we can try this again. I'm Kal['] Ren, but you can just call me Ren,' he nods in introduction. Tentatively you introduce yourself as well. 'See? That wasn't so hard, now was it, kit?' he asks. 'However, I do believe that's enough chit-chat for now. Perhaps sometime in the future we can have another go.' With that, the fox disappears in another flash of light, leaving you slightly confused at everything that just transpired.";
		now DemonFox_Apologized is true; [met after fleeing, he apologized]
		now TomeTimer is turns;
	else if DemonFox_PlayerWon is true:
		say "     'Well, if it isn't you,' the demon greets in a surprisingly happy tone. 'You know, it's rare for a mortal to beat me in combat, but you managed it, amazingly. I respect you for that,' he says. 'The name's Kal['] Ren, by the way. You can just call me Ren.' You tentatively introduce yourself as well.";
		say "     'I know I said you could summon me if you were ever in the mood for a good breeding, but funnily enough, I'm actually not really feeling up to it right now. Sorry to say that.' He hesitates for just a moment before continuing, 'Maybe sometime in the future, though. I'll admit that you've piqued my interest.' Without giving you a chance to reply, he disappears in a flash of light, leaving you somewhat dumbfounded at the whole interaction.";
		now TomeTimer is turns;
	else if DemonFoxStatus is 11 or DemonFoxStatus is 21 or DemonFoxStatus is 31 or DemonFoxStatus is 42:
		say "[DemonFoxMenu]";

to say DemonFoxMenu:
	say "     You use the incantation to summon Kal['] Ren, bracing for the blinding flash of light by holding the book in front of your eyes. 'Well, hello kit,' you hear him greet in his rumbling voice, opening your eyes and lowering the book to look at him. 'Does my pet desire some companionship?'";
	if DemonFox_PlayerWon is false or (DemonFox_PlayerWon_Fucked is true and DemonFox_PlayerWon is true):
		say "     You scowl at him calling you his pet, quickly stating that you don't belong to him, no matter what he thinks. He laughs, though, shaking his head before his body suddenly seems larger than your own, a paw on your chest knocking you to the ground instantly. You look into his leering visage, a bit of searing drool landing on your face. 'Oh, so you don't think you're my pet, then? [if DemonFox_PlayerDefeated is true]Maybe I'll just have to show you your place again. Perhaps you don't realize what that bite I gave you meant, hm? [else if DemonFox_PlayerSubmitted is true]Don't even try to pretend. You want nothing more than to be my pet, serving my every whim... That little bite I gave you is binding, after all. [else if DemonFox_PlayerFled is true]Just because you ran before doesn't mean I can't take you now. You'd make an excellent toy. [else if DemonFox_PlayerWon_Fucked is true]Even after you defeated me, you [italic type]still[roman type] let me fuck you. [end if]As far as I'm concerned, you're mine.'";
	else:
		say "     You scowl at his comment, berating him for calling you his pet. He simply laughs at you, before you're suddenly pinned under a much larger version of him, his paw completely covering your torso. He leers over you, a drop of his searing saliva dripping on to your face. 'Just because you won last time doesn't mean you'd win again. It wouldn't take much for me to mark you as my pet...'";
	WaitLineBreak;
	say "     He let's those words sink in for a few seconds before he laughs again, removing his paw as he cackles. Soon enough, he's back to his previous size, lifting you back to your feet with one of his long tails. You blink, slightly bewildered and somewhat scared as he continues to cackle at you, his muzzle scrunched up in a very vulpine grin. 'You...' he says breathlessly, 'you should've seen the look on your muzzle, kit! It looked like you were going to [italic type]piss yourself![roman type]' You blush as he continues laughing for nearly a minute longer, finally beginning to settle down as his sits on his haunches looking up at you with a smirk.";
	say "     'Now... You've called me here. Is there anything you want to do?'";

to say DemonFoxFirstEncounter:
	say "     Out of nowhere, you're tackled to the ground! A large weight is pressing down upon your back and feel the hot breath of something along the back of your neck. Pinned as you are, you're unable to get a good look at your assailant, even as you feel sharp claws rip through your clothing, leaving you fully exposed to whatever it is that's attacking you. Suddenly, you feel a long, fluffy object wrapping around your midsection before it hoists you into the air, tossing you back onto the ground on your back. You're eyes widen and you let out a gasp as you see the huge demonic fox you read about earlier standing over you.";
	say "     Before you get a chance to react, the fox has you pinned once more, its massive forepaws pinning you to the ground as it snarls in your face. 'Seems like I've finally got something to play with,' he says, surprising you slightly. 'I'm going to enjoy [if Player is mpreg_ok]breeding[else]fucking[end if] you like the bitch you [if Player is submissive]are[else]should be[end if].'";
	WaitLineBreak;
	say "     Mustering your strength, you manage to throw the beast off of you, causing him to let out a surprised grunt. You quickly scramble to your feet and ready yourself for a fight. 'Oh, so you're a feisty one, eh?' he asks, licking his chops and narrowing his eyes at you. 'I like that...'";
	now inasituation is true;
	challenge "Demon Fox";
	if fightoutcome >= 20 and fightoutcome <= 30: [lost or submitted]
		if HP of Player > 0: [submitted]
			say "[DemonFoxFirstSubmit]";
		else: [lost]
			say "[DemonFoxFirstLoss]";
	else if fightoutcome > 30: [fled]
		say "[DemonFoxFirstFlee]";
	else if fightoutcome < 20: [player won]
		say "[DemonFoxFirstVictory]";
	now inasituation is false;
	now DemonFoxInteractions is 1;
	UpdateTomeEventPending;

to say DemonFoxFirstLoss:
	setmonster "Demon Fox";
	say "     Now that he's beaten the fight out of you, the demon fox pins you once more, his heavy weight pressing down onto you. 'You should've just submitted. Now I'm going to have to punish you,' he growls out. It's then that you notice his entire body expanding, growing large enough to make you look rather small. Only a single paw rests on your chest now, as that's all he needs to keep you in place. He cocks his head to the side, contemplating his next move. Suddenly, you feel one of his long tails wrapping around your torso, lifting you into the air. He roughly tosses you down stomach first before his paw finds its place on your back, forcing your head down and your ass up.";
	say "     You're not given any time prepare for what comes next. The demonic vulpine roughly shoves his length into your hole, stretching you painfully wide around the head alone. He doesn't stop there, however. Instead, he pushes even further into you. You feel your hole yawning open wider and wider as the first ridge of his cock slips into you. Soon enough, the next ridge is sliding in as well, then the next, and the next. You can feel his massive knot up against your hips, and you can see your stomach stretching out almost comically in the shape of his cock. Soon enough, he pulls back, each ridge leaving you with a wet squelch. Eventually, only the tip of his shaft remains inside you.";
	WaitLineBreak;
	say "     You're only given a moment of relief, however, before he begins pushing the massive tool back into you. He manages to push in to the knot a little more quickly this time, your passage slowly loosening enough to make it slightly less painful. Soon enough, the fox has built up a rhythm of thrusting in and out of you. His knot starts to bash against your entrance as he becomes increasingly determined to impale you with it, and the thing is wider than your hips! He lets out a grunt with each and every thrust, pushing harder and harder into you.";
	if Player is twistcapped:
		say "     Somehow, you can feel the knot slip further and further in, your twisted body somehow able to accept the impossibly wide mass. Soon enough, the knot has passed its widest point, and the rest is pulled into you with a loud squelch. The demon on top of you lets out a loud howl of pleasure before his knot swells even wider, locking your already tied hole even more. [if Player is male]Your own cock[smn] throb[smv] as you release your [Cum Load Size of Player] load onto the ground, the pressure on your prostate driving you over the edge. [end if]He leans down and bites into your shoulder roughly as he climaxes, rope after rope of molten cum rushes into you, quickly rounding you out. His orgasm doesn't seem like it's going to abate any time soon, however, as more and more cum spills into you. Looking down at your bloated belly, you swear you can see a faint glow through your skin, even! By the time his climax comes to an end, he lets go of your shoulder, a trickle of blood dripping from his maw before he harshly yanks his tool out of you, the knot popping out loudly.";
	else:
		say "     Despite his best efforts, the knot is just too big to fit. This doesn't seem to bother the fox too much, however, as he simply thrusts against you once more before howling as he reaches his climax, rope after rope of molten, glowing cum spilling into your bowels. There's so much of the stuff that your belly starts to bulge from the sheer amount of fluid filling it. Eventually, the cum has nowhere left to go, managing to find its way out of your ass around his massive shaft. By the time his climax has ended, you're thoroughly drenched in fox cum, the hot ejaculate forming a pool around the two of you.";
	say "[mimpregchance]";
	say "[mimpregchance]";
	say "[mimpregchance]";
	say "[mimpregchance]";
	say "[mimpregchance]";
	WaitLineBreak;
	say "     The fox gives you a look, observing your battered form as if admiring his handiwork. 'I told you that you should've submitted, pet,' he says. 'Maybe next time this won't have to be so hard...' By the time you've recovered enough energy to glance over your shoulder, the fox is gone, apparently having decided to leave after finishing with you. After that encounter, you're not sure why you'd want to, but perhaps you could [italic type]summon the fox again sometime[roman type]?";
	infect "Demon Fox";
	infect "Demon Fox";
	now DemonFox_Encountered is true;
	now DemonFox_PlayerDefeated is true; [lost]
	WaitLineBreak;

to say DemonFoxFirstSubmit:
	setmonster "Demon Fox";
	say "     You raise your hands in defeat, signaling to the fox that you want no trouble. He leers at you, baring his maw full of razor sharp teeth at you. 'I knew you'd submit to your new master...' he says before advancing on you. He pounces, pinning you under his massive weight once more, but this time he doesn't stop there. Before you know what's happening, he's forced his muzzle up against your mouth, his tapered tongue slipping in between your lips with ease. [if Player is submissive]You can't help but let out a moan as his ridiculously long organ explores your mouth[else]You have to resist the urge to gag as his ridiculously long organ ravages your mouth[end if]. His tongue flicks around the inside of your mouth a few more times before he pulls back, a string of saliva connecting the two of you. 'See?' he pants. 'That wasn't so bad, now was it?'";
	say "     You're not given a chance to reply as you feel that tongue moving across your neck and down your torso, leaving behind a trail of slick saliva. [if Player is male]Eventually, it finds its way to your cock[smn] and balls, caressing them. [end if]You have to stifle a gasp as the slimy organ slips between your ass cheeks. He laps against your hole a few times, coating you in his saliva before he [if anallevel is 3]plunges his tongue inside you, slipping past your tight ring. He gives you a few licks there as well before he [end if]moves on. He raises his head to meet your gaze before he lets out a possessive growl.";
	WaitLineBreak;
	say "     'Get on all fours,' he commands. You hastily obey, presenting your hindquarters to him, and he rumbles in approval of what he sees. [if Player is mpreg_ok]'I'm gonna enjoy putting my pups in you,'[else]'I'm gonna enjoy taking you,'[end if] he growls. You feel his weight upon you once more as he mounts you, lining his massive cock up with your hole before thrusting nearly all the way in with one harsh movement. You gasp in pain from the sudden intrusion, but that doesn't discourage him. He pulls out of you just as roughly as he entered, the ridges along the underside of his cock wracking you with both pain and pleasure. He thrust back in once more, this time with a little less resistance. This cycle keeps repeating, growing in speed until he's rutting against you, his massive knot slapping against your ring loudly.";
	say "     With a howl of pleasure, he shoves forward one last time, his knot spreading you painfully wide before it manages to pop in. Once it's inside, it swells even larger, firmly locking the two of you together. [if Player is male]The pressure on your prostate is enough to set you off, spilling your load onto the ground beneath you. [end if]He gives one last growl before you feel his sharp teeth on your shoulder. They dig into your flesh as he bites down. You can feel his cock releasing its burning semen inside you, rope after rope of glowing cum erupting into your bowels. By the time he's finished climaxing, your belly is decently rounded out, and you can't help but moan from the heat of the fluids inside of you. With his orgasm over, he releases his hold on you, and harshly yanks his knot out of you. 'That was fun, pet,' he says. 'I hope we're able to do this once more sometime soon.'";
	say "[mimpregchance]";
	say "[mimpregchance]";
	say "[mimpregchance]";
	WaitLineBreak;
	say "     You turn to look at the fox once more, only to be greeted with empty space. It seems the fox has gone for now... [italic type]Perhaps you could summon him once more with the book, if you so desire.[roman type]";
	infect "Demon Fox";
	now DemonFox_Encountered is true;
	now DemonFox_PlayerSubmitted is true; [submitted]
	WaitLineBreak;

to say DemonFoxFirstFlee:
	say "     You snatch up the tome as you flee, clutching the still open book to your chest closely. The fox is hot on your heels, determined to not let you escape. 'Get back here!' he shouts. You speed up even further, determined to escape the hellish beast before you turn into an alleyway. As you race further down the narrow space, you round a corner only to be greeted by a rather tall brick wall. Whirling around, you see the fox has had no trouble keeping up with you.";
	say "     'You've got nowhere left to go,' he growls out. As much as you wish that weren't true, you realize that he's correct. You're not really given any extra time to contemplate this however, as he suddenly crouches down, readying himself to pounce on you. Desperately, you hold the tome up, facing him. He leaps, and you close your eyes in preparation to be pinned beneath him once more. A few seconds pass before you realize that he still hasn't collided with you, and you tentatively open your eyes once more. Looking around, the fox is nowhere to be seen.";
	now DemonFox_Encountered is true;
	now DemonFox_PlayerFled is true; [Fled from the fox]
	WaitLineBreak;

to say DemonFoxFirstVictory:
	now DemonFox_PlayerWon is true;
	say "     You strike the defeated demon one more time for good measure, and he lets out one last yelp of pain before he shakes his head. 'Alright. Enough. I see that forcing myself onto you may not have been wise,' he admits, looking over your form. 'Considering your victory, it's only fair that I offer some sort of retribution.' You ask him to elaborate. 'What I'm saying is, I will gladly take you, [italic type]gently[roman type], of course. If you're not interested in that, then I'm afraid there's not much more I can offer. I'm not one to bottom, and even if you try to force me to, I'll just go back into the book. It's up to you.'";
	say "     [bold type]Well, considering the offer, what do you do?[roman type][line break]";
	say "     [link]Let the fox mount you[as]y[end link] - (Y)[line break]";
	say "     [link]Decline his offer[as]n[end link] - (N)[line break]";
	if Player consents:
		say "     You tell the fox that you'd like him to fuck you, and he seems to get an excited gleam in his vulpine eyes. 'Glad to hear it. I'll be gentle,' he purrs out, and you can't help but shudder in anticipation. 'Now why don't you get into position for me?' You quickly comply, presenting your ass to him, waggling it back and forth teasingly. He lets out a chuckle before he sniffs the air a few times. Pressing his snout into your crack, the fox gives a few sniffs there as well before his tapered tongue darts out of his mouth, giving you a few licks. 'You mortals have always tasted good...'";
		WaitLineBreak;
		say "     You can't help but whine in disappointment as his muzzle departs from your rear. That disappointment only lasts for a moment, however, as you soon feel him wrapping his forepaws around your was, mounting you. He gives you a few gentle prods with his massive cock before he pushes his head into you slowly. You can't help but let out a moan as he gently pushes more of his shaft into you, until his first ridge begins to push in. 'This might hurt a bit,' he warns you as he pushes a little harder. The ridge eventually manages to go in, albeit with a little bit of pain. Soon enough the next ridge is pressing into you. That one goes in a little easier than the first. The next two are even easier than the previous. With his knot resting against your entrance, the fox grunts before pulling back out. Each ridge leaves you with a soft squelch.";
		say "     Now that only his tip remains inside you, he pushes back in. This thrust goes by faster, your hole getting used to his size. Pretty soon, he's built up a decent rhythm, and you can't help but push your own body back, meeting his thrusts. 'I'm going to speed up now,' he warns you. His next thrust is much more aggressive and primal, his knot bashing against your entrance. Your own thrust grow in fervor, determined to get the demon's massive knot in you. With each thrust, more and more of the knot slips inside you, until it finally passes its widest point and your own body pulls it in the rest of the way. His knot firmly buried inside you, it swells to its full size, ensuring the two of you won't be moving anytime soon. He lets out a howl of pleasure as his cock throbs and erupts inside you, rope after rope of molten, glowing cum spilling into you. [if Player is male]You own orgasm follows shortly after, your cock[smn] shooting your [Cum Load Size of Player] load onto the ground below you. [end if]More and more of his molten seed fills you, and your belly swells with its weight. By the time his orgasm abates and his knot has shrunken down, your belly is rather swollen and decently rounded out from the load. 'That was fun, kit,' he pants in your ear. 'I think you'd enjoy being my pet, if you liked that...'";
		say "[mimpregchance]";
		say "[mimpregchance]";
		WaitLineBreak;
		say "     Eventually, he pulls out of your hole, a dribble of his glowing cum flowing out. He gives a few laps at your stretched hole before walking around to face you. 'We should do this again sometime,' he growls suggestively. 'However, I think it's time for me to depart.' A blinding flash suddenly fills your vision, and once it clears, he's gone. If you'd like to see him again, you could [italic type]use the tome[roman type].";
		infect "Demon Fox";
		now DemonFox_PlayerWon_Fucked is true; [won, let him fuck you]
	else:
		say "     You tell the demon that you're simply not interested, and he gives a nod. 'A pity really. You looked like you'd be a fun partner,' he laments. 'I'll respect your wishes, however. If you ever change your mind, you know where to find me.' In a blinding flash of light, the fox is suddenly gone, the tome laying where he once stood.";
	WaitLineBreak;

to say DemonFoxFirstRead:
	say "     Looking over the page about the fox, you manage to learn a few things. The demon fox is apparently able to change its size to whatever it desires. In addition, its cum is said to glow a bright orange, almost like lava. The fox is also supposedly very possessive and domineering, desiring to have others submitting to it. Anyone who has encountered the beast has reaffirmed that fact. [if Player is puremale]Interestingly[else]Thankfully[end if], it only seem to be attracted to [italic type]males[roman type].";
	now DemonFoxRead is true;
	now TomeInteractions is 2;
	now TomeEventPending is true;

Demon Fox ends here.
