Version 1 of Corrupted Spawner by Stripes begins here.

"Adds a Corrupted Spawner creature to Flexible Survival's Wandering Monsters table"

Section 1 - Creature Responses

corrvicchange1 is a number that varies.
corrvicchange2 is a number that varies.

when play begins:
	add { "Corrupted Spawner" } to infections of girl;

to say corruptedvicdesc:
	setmongender 4; [creature is female]
	choose row MonsterID from Table of Random Critters;
	if "Male Preferred" is listed in feats of Player:
		now sex entry is "Male";
	else if "Herm Preferred" is listed in feats of Player:
		now sex entry is "Both";
	else:
		now sex entry is "Female";
	say "     Before you is a mostly human woman showing signs of corruption by the infection. She's wearing [one of]a sticky labcoat[or]a torn business suit[or]scraps of clothes[or]a messy blouse that hangs open[at random], leaving much of her body exposed. Her sexy body has lovely curves, sexy legs and a grabbable bottom. Her breasts are plump and beautiful. Her tummy is somewhat rounded, showing she's pregnant with the spawn of some creature down here.";
	say "     Her body is not untouched by the infection, though; there being signs of non-human corruption to her body as well. The most notable are ";
	now corrvicchange1 is a random number between 1 and 20;
	if corrvicchange1 is 1:
		say "the lizard-like tail growing from her ass";
	else if corrvicchange1 is 2:
		say "the canine tail growing from her ass";
	else if corrvicchange1 is 3:
		say "the feline tail growing from her ass";
	else if corrvicchange1 is 4:
		say "the slimy tentacle growing from her ass";
	else if corrvicchange1 is 5:
		say "the thick, mawed tail growing from her ass";
	else if corrvicchange1 is 6:
		say "the short, wriggling tentacles growing from her back";
	else if corrvicchange1 is 7:
		say "the dripping, cunt-like orifices along her back";
	else if corrvicchange1 is 8:
		say "the row of dripping cocks running down her back";
	else if corrvicchange1 is 9:
		say "the long, swaying tentacles growing from her shoulders";
	else if corrvicchange1 is 10:
		say "the spiny ridge running down her back";
	else if corrvicchange1 is 11:
		say "the pair of insectile wings below her shoulders";
	else if corrvicchange1 is 12:
		say "an additional six smaller breasts growing on her back";
	else if corrvicchange1 is 13:
		say "a cybernetic pack fused into her back with blinking lights on it";
	else if corrvicchange1 is 14:
		say "an additional pair of robotic arms growing from her back";
	else if corrvicchange1 is 15:
		say "hardened plates across her back";
	else if corrvicchange1 is 16:
		say "inordinately long legs with an extra joint and three wide toes";
	else if corrvicchange1 is 17:
		say "elongated, webbed feet";
	else if corrvicchange1 is 18:
		say "paw-like hands and feet";
	else if corrvicchange1 is 19:
		say "three-fingered, clawed hands";
	else:
		say "dripping cocks instead of nipples";
	say " and ";
	now corrvicchange2 is a random number between 1 and 20;
	if corrvicchange2 is 1:
		say "the patches of scales at her shoulders";
	else if corrvicchange2 is 2:
		say "the patches of black fur at her shoulders";
	else if corrvicchange2 is 3:
		say "the unblinking eyes on her shoulders";
	else if corrvicchange2 is 4:
		say "the spikes extending from her shoulders";
	else if corrvicchange2 is 5:
		say "the patches of green moss at her shoulders";
	else if corrvicchange2 is 6:
		say "her pale blue complexion";
	else if corrvicchange2 is 7:
		say "the green skin tone";
	else if corrvicchange2 is 8:
		say "the white, featureless skin";
	else if corrvicchange2 is 9:
		say "the twin rows of horns atop her head";
	else if corrvicchange2 is 10:
		say "the additional eye in her brow";
	else if corrvicchange2 is 11:
		say "the leaking cunt in her brow";
	else if corrvicchange2 is 12:
		say "the additional mouth at her brow";
	else if corrvicchange2 is 13:
		say "the short, slimy tentacles she has instead of hair";
	else if corrvicchange2 is 14:
		say "her feline ears";
	else if corrvicchange2 is 15:
		say "her canine ears";
	else if corrvicchange2 is 16:
		say "her two foot long, slimy tendril of a tongue";
	else if corrvicchange2 is 17:
		say "her solidly black eyeballs";
	else if corrvicchange2 is 18:
		say "her stretched maw filled with sharp teeth";
	else if corrvicchange2 is 19:
		say "the gray fur running down her thighs";
	else:
		say "the chitinous plates at her thighs";
	say ". From the glassy look in her eyes and the drippings running down her thighs from her juicy cunt, you can tell there's little if any reason left in her and prepare to fight. As if your movement triggers her reaction, she says '[one of]Fuck me[or]Breed me[or]Do me[or]Sexxxxx[or]So horny[or]More[at random]!' with a moan and charges.";

[	corrvicchange1	]
[ 1-5 tail			]
[ 6-15 back		]
[ 16-18 feet		]
[ 18-19 hands		]
[ 20 dick-nipples	]

[	corrvicchange2	]
[ 1-5 shoulder		]
[ 6-8 skin tone		]
[ 9-18 head		]
[ 19-20 thighs		]


to say losetocorruptedvic:
	if HP of Player > 0:
		say "     Unwilling to continue fighting this poor victim of the infection, you stop resisting and simply allow her to throw herself upon you. She moans happily and runs her hands over your body as she pushes you to the floor. ";
	else:
		say "     You try to resist the infected woman, but are worn down by her wild advances until you finally relent and are knocked to the ground. ";
	if Player is male:
		say "Moving atop you, she runs her hands over your chest while grinding her ass down onto your cock. [if corrvicchange1 < 6]Her tail thrashes excitedly as[else]With a cry of relief,[end if] she sinks down over your erection, her [if Cock Length of Player < 12]well-used cunt taking your [cock size desc of Player] shaft easily[else if Cock Length of Player < 24]stretched cunt able to take your [cock size desc of Player] shaft readily[else]excessively-bred cunt taking your [cock size desc of Player] shaft with only a little resistance[end if]. Once properly seated on your [Cock of Player] cock, she starts to ride you with heavy pants and moans while her [if corrvicchange1 is 18 or corrvicchange1 is 19]altered [end if]hands roam over your body[if corrvicchange1 is 5] while French kissing her mawed tail[else if corrvicchange1 is 9] while her tentacles grope her breasts[else if corrvicchange1 is 11] while her wings buzz excitedly[else if corrvicchange1 is 14] while her robotic arms fondle herself[else if corrvicchange2 is 16] while licking and groping her breasts with her long, slimy tongue[end if].";
		say "     You can't help but respond, grabbing her hips and thrusting up into her, watching that pregnant bulge in her tummy sway a little as you pound her harder and harder. Losing yourself in lustful excitement, you can't help but feel a little disappointed that she's already got some other creature's spawn in her, preventing you from fully claiming her womb. Still, you do your best to pound her senseless, cumming hard in moaning release as you shoot your [Cum Load Size of Player] load into her. With you drained and her lust temporarily satisfied, she slides off you and stumbles off into the dark, dripping cum as she goes.";
	else:
		say "Moving overtop you, she presses her well-used, dripping cunt over your face and grinds down. With the musky scent of her juices filling your senses, you dive in, tongue lapping over her wet folds before sliding into her stretched hole. As you eat her out, she moans in excitement and gropes her breasts[if corrvicchange1 is 5] while French kissing her mawed tail[else if corrvicchange1 is 9] with both her hands and her tentacles[else if corrvicchange1 is 11] while her wings buzz excitedly[else if corrvicchange1 is 14] with both her human hands and her robotic ones[else if corrvicchange1 is 18 or corrvicchange1 is 19] with her altered hands[else if corrvicchange1 is 20] and their phallic nipples[else if corrvicchange2 is 16] and her long, slimy tongue[end if]. Her cum soaks your face as she cries out in delight, arching her back as tainted milk drips from her breasts as she climaxes. When her convulsions of delight abate, she staggers to her feet and stumbles off into the dark, her lusts temporarily satisfied.";


to say beatthecorruptedvic:
	say "     Victorious over the corrupted woman, you drive her off into the dark to find her sexual relief elsewhere.";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "";
	now Name entry is "Corrupted Spawner"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "The [one of]corrupted woman[or]infected female[or]lustful mutant[or]horny breeder[at random] [one of]slams herself against you, groping wildly[or]presses here transformed body to yours and kisses you while grabbing your ass[or]strikes at you with her [if corrvicchange1 is 18 or corrvicchange1 is 19]clawed [end if]hands[or]clocks you in the face while flailing to knock you down[or]presses her bosom[if corrvicchange1 is 20] and their throbbing dick-nipples [end if]against you, moaning for sex[or][if corrvicchange1 < 6]wraps her surprisingly strong tail around your waist[else if corrvicchange1 is 9]lashes out at you with her tentacles[else if corrvicchange1 is 14]grabs at you with her robotic arms[else if corrvicchange2 is 16]entwines her elongated tongue around your wrist, leaving you open for a grope[else if corrvicchange2 is 18]bites down onto you with her toothy maw[else]knees you in the side while trying to throw herself onto you[end if][at random].";
	now defeated entry is "[beatthecorruptedvic]"; [ Text when monster loses. ]
	now victory entry is "[losetocorruptedvic]"; [ Text when monster wins. ]
	now desc entry is "[corruptedvicdesc]"; [ Description of the creature when you encounter it. ]
	now face entry is "mostly human in appearance, but having small patches of gray scales at the corners of your eyes";
	now body entry is "slender and feminine with curvy hips. Overall, it looks rather human, but has a few visible differences. Most prominently, you have a trio of six-inch tendrils fluttering from your outer thighs and bony plates covering your forearms and the back of your hands";
	now skin entry is "has a yellow hue and has patches of gray scales across your breastbone, hips, wrists and ankles"; [ Skin. Format as "Looking at yourself, your body is covered in [Skin of Player] skin." ]
	now tail entry is "You have a long tail covered in gray scales that slowly flattens out and becomes akin to a slimy, tongue-like appendage. You have a little trouble controlling it at times, finding it prone to licking things (which you indeed end up tasting) when you least expect it if you don't focus on keeping it in check.";
	now cock entry is "[one of]spaded[or]altered[or]mutant[at random]"; [ Cock. Format as "You have a 'size' [Cock of Player] cock." ]
	now face change entry is "delightful shivers of pleasure accompany the changes occurring. Your face takes on a largely human appearance with beautiful, soft features and a lovely smile. Your brow is a little oddly shaped and there are patches of gray scales at the corners of your eyes"; [ Face TF text. Format as "Your face tingles as [face change entry]." ]
	now body change entry is "your form shifts and reshapes itself with increasingly pleasant alterations. By the time it settles down, your body thankfully has a generally human shape with feminine curves. There are several odd differences, some prominent and others more subtle. Your forearms and the back of your hands are armored by bony plates. Growing from your outer thighs, you have a few waving tendrils that are quite erotically sensitive to the touch";
	now skin change entry is "your flesh turns yellow and patches of scales appear on your chest, hips and in a few other spots"; [ Skin TF text, format as "Your skin tingles as [skin change entry]. ]
	now ass change entry is "a wet, sticky sensation builds up just above your ass, eventually forming into a long, thin tail. This new appendage is covered in scales on its upper half. As you look along the tail, you can see it flatten out and become wet, looking more like a gray tongue";
	now cock change entry is "spurts of precum spray from it as it alters and reshapes itself, gaining a spaded glans clearly meant for pushing into breeding holes"; [ Cock TF text, format as "Your groin tingles as [cock change entry]." ]
	now str entry is 14; [ These are now the creature's stats... ]
	now dex entry is 15; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 10; [ These values may be used as part of alternate combat.]
	now per entry is 16;
	now int entry is 8;
	now cha entry is 16;
	now sex entry is "Female"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 32; [ The monster's starting HP. ]
	now lev entry is 3; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 5; [ Monster's average damage when attacking. ]
	now area entry is "Sealed"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 15; [ Length in inches infection will make cock grow to if cocks. ]
	now Ball Size entry is 3; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 4; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 15;
	now Cunt Tightness entry is 10;
	now libido entry is 60; [ Target libido the infection will rise towards. ]
	now loot entry is "fertile pill"; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 30; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]sexy[or]slender[or]feminine[or]attractive[at random]";
	now type entry is "[one of]humanoid[or]mutant[at random]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is "";
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
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/octapedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]"]
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
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that is [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]


Section 3 - Endings

[
when play ends:
	if BodyName of Player is "Corrupted Spawner":
		if humanity of Player < 10:
			say "     You succumb to your template infection.";
		else:
			say "     You survive, but were infected by the template.";
			if Player is male:							[MALE/HERM]
				say "     Additional text for a male/herm survivor.";
			else if "Sterile" is not listed in feats of Player:	[F-BREEDABLE]
				say "     Additional text for a female survivor who can become preggers.";
			else:									[F-STERILE]
				say "     Additional text for a female survivor who cannot become preggers.";
]

Corrupted Spawner ends here.
