Mushroom Men by AGentlemanCalledB begins here.
"Adds a Mushroom creature with altattacks to Flexible Survival's Wandering Monsters table"

Section 1 - Creature Responses

MMC is a number that varies.
MMP is a number that varies.
SporeCloud is a number that varies.[@Tag:NotSaved] SporeCloud is usually 0.

to say losetoMushroomMen:
	now SporeCloud is 0;
	say "     With your strength worn down by the mushroom men's assault, you are unable to resist as they drag you to the ground, pushing you onto your [if Player is female]back[else]stomach[end if]. The small crowd erupts into cheers, shouts and sharp whistles as they begin stripping you of your gear, leaving your body on display for them. Soon there are dozens of tiny hands on your exposed body, stroking and teasing you[if Breast Size of Player > 0 and a random chance of 1 in 2 succeeds]. 'Mmm, they're even better face to face,' one of the mushroom men shouts as he nestles himself between your breasts, stroking one roughly while he pinches the other's nipple, causing you to moan[else if Player is mushroombodied or player is mushroomskinned]. 'Just couldn't stay away, huh babe?' comments one of the mushroom men as he rubs against your mushroom form[end if].";
	say "     Eventually the mushroom men begin to congregate at your [if Player is female]groin, several of them pulling your legs apart as a small group from the back of the crowd pushes forward[else]ass. One of the larger mushrooms gives it a firm smack, complimenting your [one of]firm[or]cute[or]sexy[or]hot[at random] bottom before waving a group from the back of the crowd over[end if]. Leading this group is a rather large-looking mushroom with a disturbingly phallic look to his cap and body. The two following him look relatively normal, but they are significantly larger than the rest of the group. [one of]'I'm gonna show you a good time babe,'[or]'I hope your ready for this toots,'[or]'I bet you can't wait for this hun,'[at random] says the cock-shaped shroom as he lines the tip of his cap up with your [if Player is female]dripping cunt[else]clenched pucker[end if] before his two large companions lift him into the air by his legs, slowly pushing his cap into your body.";
	WaitLineBreak;
	say "     You can't help but moan as the two large mushrooms begin working their phallic brother like a bizarre living dildo, driving him into your body over and over again while he teases your inner walls with his ungentle hands. As the fucking continues the rest of the group begins to drift to the rest of your body teasing any erogenous spots they can find as you fall deeper and deeper in your lust-filled haze. [if Player is female]When one of the mushrooms finally begins pinching and tweaking your clit, it all becomes too much and you scream in ecstasy as you cum hard, soaking the two large mushrooms at your crotch in your feminine juices as your spasming tunnel clamps tightly around the fungal intruder, attempting to milk his soft body as if it were a real cock. You feel him squirming inside you, either trying to escape your tight grip or further pleasure you, drawing your orgasm out as each movement sends shivers of pleasure through you[else if Player is male]As the fungal fucking builds to a rapid pace, you find your hands drawn to your unattended cock, stroking your erect length in time with the movement of the phallic mushroom. You groan loudly as you finally climax, blowing your load onto the ground beneath you as the mushrooms make a few final thrusts[end if].";
	say "     When the mushroom man is finally pulled from your body[if Player is female] with a wet slurp and rush of fluids[end if], he takes a moment to shake himself off before giving each of his larger companions a high five. [one of]'Catch ya later, hun,'[or]'Can't wait to do this again, babe,'[or]'Let's do this again some time, honey,'[at random] your unusual lover shouts over his shoulder as he waves the rest of the group over, leading them back into the forest and leaving you in a well-fucked heap on the ground.[if Player is mushroombodied] As you lay there, recovering, you feel a warm tingling welling up inside you as the mushroom man's fungal spores settle within, exciting your mushroom body.[impregchance][end if]";

to say beattheMushroomMen:
	say "     With their numbers dwindling, the few mushroom men who remain standing begin to lose their brazen confidence. Seeing them falter, you move forwards aggressively, chasing the last of them off into the surrounding forest.";

to say MushroomMendesc:
	setmongender 13; [creatures are male]
	now SporeCloud is 0;
	say "     While walking [one of]down a path[or]through some overgrown brush[or]through a dimly lit clearing[at random] you hear [one of]'Hey toots!'[or]'Hey hot stuff!'[or]'Hey cutie!'[or]a sharp wolf whistle[at random] [one of]behind you[or]to your right[or]to your left[or]just ahead of you[at random]. Glancing around you try and locate the source of the call, spotting some movement in a large cluster of mushrooms at the base of a nearby tree. Slowly the pack of mushrooms pull themselves from the ground and turn to face you, giving you a clear view of the partially humanoid forms.";
	say "     The mushroom men come in significant variety, with several distinct shapes and colors, the most concerning among those being the group of strangely phallic-looking ones. While most of them are roughly a foot tall, there are a couple of larger fungi among them, peaking at nearly two feet. While lacking any visible gender, they all seem to carry a distinctly male presence. They begin shouting and cheering crudely as they move towards you.";

to say MushroomMenFaceTF:
	now MMC is a random number between 1 and 5;
	now MMP is a random number between 1 and 3;
	say "the color drains out of it and all your hair falls away. Weight begins building at the top of your head as the pale, smooth flesh begins to expand, growing into a large mushroom cap covered in [if MMC is 1]white[else if MMC is 2]red[else if MMC is 3]pale yellow[else if MMC is 4]pale orange[else if MMC is 5]brown[end if] flesh[if MMP is 1] with off-white spots[else if MMP is 2] with off-white splotches[else if MMP is 3] of varying shades[end if]";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
	add "Mushroom Man" to infections of PlantList;
	add "Mushroom Man" to infections of FurryList;
	add "Mushroom Man" to infections of HumorousList;
	add "Mushroom Man" to infections of FemaleList;
	add "Mushroom Man" to infections of BipedalList;
	now Name entry is "Mushroom Man"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is "Mushroom Men";
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]The group cheers as several of their members run out towards you, shouting lewd comments and offers as they strikes at your lower body.[or]Several of the larger mushrooms grab one of their smaller brethren and toss him at you. 'How [']bout a kiss, hun?' shouts the flying mushroom man, just before he bounces off your face.[or]Several of the larger mushrooms grab one of the smaller members of their group and fling him at you, much to his disapproval. He makes several rude comments and gestures at his brethren as he flies through the air before bouncing off the top of your head.[or]'Why don't you let us show you a good time, hot stuff?' one of the mushrooms asks with a smirk, before several of them leap out of the pack and grab onto your legs, pinching and squeezing you wherever they can.[or]There is a sharp wolf whistle behind you, and you realize some of the group have split off to flank you. Before you have a chance to react several fungi from each group are launched into the air towards you. While most of them miss their target, one lands safely on your shoulder, grabbing your face and pulling you into a rough kiss before you can shake him off.[at random]"; [ Successful attack message ]
	now defeated entry is "[beattheMushroomMen]"; [ Text when monster loses. ]
	now victory entry is "[losetoMushroomMen]"; [ Text when monster wins. ]
	now desc entry is "[MushroomMendesc]"; [ Description of the creature when you encounter it. ]
	now face entry is "mostly human looking with cute[if Player is female], feminine[end if] features and a smooth, pale complexion. The large mushroom cap atop your head, however, is far more unusual. It has [if MMC is 1]white[else if MMC is 2]red[else if MMC is 3]pale yellow[else if MMC is 4]pale orange[else if MMC is 5]brown[end if] flesh[if MMP is 1] with off-white spots[else if MMP is 2] with off-white splotches[else if MMP is 3] of varying shades[end if]"; [ Face. Format as Your face is [Face of Player]. ]
	now body entry is "that of a small mushroom person, with a slim[if Player is female], feminine[end if] build and compact features. You are roughly three and a half feet tall from the ground to the top of your [if Player is mushroomfaced]cap[else]head[end if]. While your hands are still mostly human, with the notable exception of your missing fingernails, your feet have lost much of their definition, leaving them looking not unlike the stalk of a mushroom"; [ Body. Format as "Your body is [Body of Player]." ]
	now skin entry is "pale, spongy"; [ Skin. Format as "Looking at yourself, your body is covered in [Skin of Player] skin." ]
	now tail entry is "Despite its tight appearance, your cute little ass is actually quite soft and spongy feeling[if Player is mushroombodied], much like the rest of your mushroom body[end if]."; [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "mushroom-shaped"; [ Cock. Format as "You have a 'size' [Cock of Player] cock." ]
	now face change entry is "[MushroomMenFaceTF]"; [ Face TF text. Format as "Your face tingles as [face change entry]." ]
	now body change entry is "the world seems to enlarge around you. As your body continues shrinking you gain a slim[if Player is female], feminine[end if] build, leaving you with a small, but mostly human looking form. Just as you think your changes are coming to an end, you find yourself struggling to stay upright as new changes begin in your feet. They rapidly lose their definition as they reshape into round, bulbous shapes, leaving them looking much like the stalk of a mushroom"; [ Body TF text, format as "Your body tingles as [body change entry]. ]
	now skin change entry is "any blemishes and hair are swept away. Slowly the color drains out of you, leaving you with smooth, pale, mushroom-like flesh"; [ Skin TF text, format as "Your skin tingles as [skin change entry]. ]
	now ass change entry is "it pulls into a small, tight form"; [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "it shifts to a vaguely mushroom-like shape, with a bulbous, mushroom cap-shaped head and a smooth, stalk-like shaft"; [ Cock TF text, format as "Your groin tingles as [cock change entry]." ]
	now str entry is 12; [ These are now the creature's stats... ]
	now dex entry is 16; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 15; [ These values may be used as part of alternate combat.]
	now per entry is 12;
	now int entry is 10;
	now cha entry is 15;
	now sex entry is "Female"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 24; [ The monster's starting HP. ]
	now lev entry is 3; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 4; [ Monster's average damage when attacking. ]
	now area entry is "Park"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 0; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 0; [ Length infection will make cock grow to if cocks. ]
	now Ball Size entry is 0; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 3; [ Size of breasts the infection will try to attain. ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 9; [ Depth of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 3; [ Width of female sex the infection will try to give a player. ]
	now libido entry is 70; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 1; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]slim[or]small[or]petite[or]fungal[at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "mushroom"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false; [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own] [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "MushroomMen"; [ Row used to designate any special combat features, "default" for standard combat. ]
	now BannedStatus entry is false;

[
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
]


Section 3 - Alt Combat

Table of Critter Combat (continued)
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)	altstrike (rule)
"MushroomMen"	retaliation rule	--	--	swarmattack rule	15	--	--	--	sporecloud rule	--

this is the swarmattack rule:		[damage bonus based on remaining health]
	choose row MonsterID from the Table of Random Critters;
	let basicdam be ( wdam entry * a random number between ( 80 - ( peppereyes * 4 ) ) and 120 ) / 100;
	let dam be basicdam;
	let basicdam be ( basicdam * monsterHP ) / HP entry;
	let dam be dam + basicdam;
	if hardmode is true and a random chance of 1 in ( 10 + peppereyes ) succeeds:
		now dam is (dam * 150) divided by 100;
		say "The enemy finds a particular vulnerability in your defense - Critical Hit![line break]";
	say "     The [Name entry] [one of]attack[or]swarm[or]rush[at random] you as a group, [one of]grabbing at your limbs, trying to drag you down[or]attacking you from all sides[or]groping and teasing your body as they swarm over you[at random]. With [if (( monsterHP * 100 ) / HP entry ) > 75]the group still at full strength, the attack easily overwhelms your defenses[else if (( monsterHP * 100 ) / HP entry ) > 50]the majority of the group still fighting, the assault is quite effective[else if (( monsterHP * 100 ) / HP entry ) > 25]most of their group injured or defeated, the attack is only somewhat effective[else]the majority of the group defeated, the attack is severely weakened[end if]. You suffer [special-style-2][dam][roman type] damage.";
	now damagein is dam;
	say "[noshieldabsorbancy]"; [unable to use shield effectively - attacked from multiple angles]
	if absorb > dam:
		now absorb is dam;
	if absorb > 0:
		say "You prevent [special-style-1][absorb][roman type] damage!";
	decrease HP of the player by dam;
	increase HP of Player by absorb;
	follow the player injury rule;
	say "You are [descr].";

this is the sporecloud rule: [Spore aura following spore blast attack]
	choose row MonsterID from Table of Random Critters;
	if SporeCloud is 0 and a random chance of 1 in 5 succeeds:
		say "     As the [Name entry] continue fighting their excited movements begin releasing fungal spores into the air!";
		increase SporeCloud by a random number between 1 and 3;
	if SporeCloud > 0:
		if face mask is equipped:
			say "     The air is still filled with fungal spores, but your face mask [one of]prevents you from breathing them in[or]protects you from their influence[or]keeps you from inhaling them[at random].";
			decrease SporeCloud by 1;
			if SporeCloud is 0:
				say "     [one of]With a merciful gust of wind[or]As the battle continues[or]As your fighting begins to move away[at random], the lingering spore cloud finally dissipates.";
		else:
			let dam be wdam entry / 4;
			increase dam by a random number between 0 and 1;
			say "     [one of]Breathing heavily as a result of your continued fighting[or]As you try to catch your breath[or]Taking a deep breath[at random], you inhale the lingering airborne spores, causing a [one of]painful fit of coughing[or]warm tingling in your chest[or]powerful sneeze[at random]. You suffer [special-style-2][dam][roman type] damage.";
			decrease HP of the player by dam;
			if BodyName of Player is "Mushroom Men":
				say "     The fungal spores have [one of]an especially strong[or]an unusual[or]a powerful[at random] effect on your mushroom body, arousing you slightly.";
				increase Libido of Player by a random number between 1 and 3;
			decrease SporeCloud by 1;
			if SporeCloud is 0:
				say "     [one of]With a merciful gust of wind[or]As the battle continues[or]As your fighting begins to move away[at random] the lingering spore cloud finally dissipates.";
			follow the player injury rule;
			say "You are [descr].";
			LineBreak;
			if HP of Player < 1 or Libido of Player > 109:
				if HP of Player <= 0, now fightoutcome is 20;
				if Libido of Player >= 110, now fightoutcome is 21;
				lose;

Section 4 - Definitions

Definition: a person is mushroomfaced:
	if FaceName of Player is "Mushroom Men", yes;
	no;

Definition: a person is mushroomskinned:
	if SkinName of Player is "Mushroom Men", yes;
	no;

Definition: a person is mushroombodied:
	if BodyName of Player is "Mushroom Men", yes;
	no;

Definition: a person is mushroomcocked:
	if CockName of Player is "Mushroom Men", yes;
	no;

Definition: a person is mushroomtailed:
	if TailName of Player is "Mushroom Men", yes;
	no;

Section 5 - Endings

when play ends:
	if BodyName of Player is "Mushroom Men":
		if humanity of Player < 10:
			say "     As the fungal infection begins to take root in your mind, you find yourself drawn back to the park. You wander to forested paths aimlessly for some time before coming across a small, clear glade with a single large tree at its center. Attracted to the unusual peace of this place, you settle down at the base of the tree, eventually drifting off to a deep sleep as your body begins to change further.";
			say "     When you finally awaken, you find yourself rooted to the ground just below the knees and your limbs fused to your body, making you look much more like a simple giant mushroom at a glance. However, with the exception of your missing limbs, you still have a rather shapely body, and the wandering groups of mushroom men that happen upon you are more than happy to help you enjoy it. Several groups frequently make return trips to your glade, ensuring your sexual desires are always satisfied. Often after these visits you find your body reacting to the spores left behind by your company, both inside your body and out, causing you to release fertile spores of your own into the nearby soil where more groups of mushroom men quickly grow.";
			say "     The life of a mushroom sextoy for the many mushroom men of the forest is a simple one, but with your mind long lost to the fungal infection you are never unhappy to live it.";
		else:
			say "     When rescue finally arrives, the military scientists are intrigued by your unusual fungal infection but are forced to rush you through the processing camp once you are deemed safe so they can focus on bigger problems. Due to your size, life outside the city is difficult at first, but eventually you find your calling working in a small plant nursery. Working in the soil and tending the plants seems to come naturally to you, and the small business becomes quite prosperous thanks to your efforts.";
			if humanity of Player < 30:
				say "     After some time you begin to find small mushrooms growing in the gardens you work increasingly often and find yourself strangely attached to them, transplanting them to a small unused greenhouse at the edge of the property. One evening the nursery's owner sees you sneaking off to the abandoned greenhouse after your shift and quietly follows behind you. When he bursts in on you as you tend to your private mushroom garden, you turn just in time to see many of the mushrooms pull themselves out of the soil and tackle your boss to the ground.";
				say "     You find yourself equal parts horrified and aroused as you watch the mushroom men you spored violate him, coating him inside and out with their infectious spores. Before your eyes, he rapidly changes into curvy female mushroom with her arms and legs fused to her stalk-like body leaving her totally immobile. When the mushroom men finally finish and settle back into the soil, you gather up your ex boss and plant her safely in a large flowerbed at the back of the greenhouse. With the nursery's owner gone, the business soon falls into your hands and you lead it into a prosperous future with your most popular new product, decorative flower pots filled with a colorful variety of mushrooms.";
			else:
				say "     The owners of the nursery even give you a small greenhouse of your own on the property to call home. You take to collecting the unusual plants created by the infection in your small garden home, many of them being perfectly suited to sating your body's sexual desires after a long day of working the nursery.";

Mushroom Men ends here.
