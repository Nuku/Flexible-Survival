Version 2 of Ewe by Luneth begins here.
[ Version 1 - Original by Sarokcat]
[ Version 1.1 - Unleashed ]
[ Version 2 - Taken over by Luneth]

"Adds an Ewe to Flexible Survival's Wandering Monsters table, with no impreg chance"


Section 1 - Creature Responses

to say ewe attack:
	project Figure of Ewe_icon;
	if Player is male:
		say "     The ewe barrels into you one last time, knocking you to the ground. The lust-crazed sheep grins happily as she looks down at your prone body, her thick tongue licking across her sheep-like muzzle as she gazes down at your already erect [Cock of Player] cock. Before you can do anything else, the ewe throws herself onto you, making you grunt In surprise as her weight lands on top of you, knocking the wind out of you as she pins you to the ground eagerly. Struggling to catch your breath, you find your head filled with the female sheep's powerful scent, the ewe rubbing her soft, silken-fleeced body against your chest. Her scent only makes your arousal worse with every gasping breath, your mind fogging over with pleasure as she lowers herself onto your stiff member. Soon your gasping becomes eager panting, the female sheep lifting herself up and beginning to ride your shaft, the intense sensation of her warm body gripping your cock so tightly overwhelming any potential objections you might have. Soon you are bucking your hips up eagerly as the sheep moans and bleats happily above you, your hands wandering over her soft woolen body even as her own hoof-like hands rub up against your [Skin of Player] chest. Finally the sensations are obviously too much for the ewe, and with one last bleating cry, you can feel her juices coating your shaft as she shudders in orgasm above you. The feel of her body orgasming around your cock triggers your own intense explosion of pleasure, and you grip her thighs tightly as you shoot your seed into her body, making her moan happily even as you twitch underneath her. Once your orgasm is finally over, the ewe pulls herself off your exhausted body, a silly smile on her face as she proceeds to rub herself up against your body again. 'You'll make a wonderful Ram,' she moans as she lifts her soft muzzle up to your ear, her lips rubbing across your ear teasingly as you try to regain your scattered wits. 'A nice big strong Ram for me, won't that be nice?' the ewe says teasingly, stroking your chest with her hoof-like hand again a few times. Without further words, she pulls herself to her feet and staggers off into the city, leaving you lying there and panting from your recent exertions, wondering if you really would object to being a ram if you got that kind of treatment every day...";
	else:
		if veggiegardenfight is 0:
			say "     'Finally! I won't be alone anymore!' the ewe says as she rubs her body up against your defeated form. Her soft, woolly scent fills your head as she begins to clutch you to her eagerly. 'If I had to spend any more time without a flock, I thought I would go crazy!' the ewe says as she holds you to her tightly, and while you are pretty sure she has already been without a flock for too long, the feel of the naked ewe's soft wool rubbing up against you seems very soothing. You let yourself relax for a bit in her arms, listening to her happy chattering about the joys of belonging to a flock and how very lonely she has been without one, then talking about what a wonderful sheep you will make. Slightly worried about that last part of her statement, you wait until your new friend falls into an obviously exhausted sleep before slipping out of her arms and making your way back out into the city. You wonder what the lonely ewe will do when she wakes up alone again, and if perhaps it might have been better for her if you had taken her with you...";
		else:
			say "     'Oh, I've got you now, little thief,' the ewe says with a chuckle, groping your chest and then down to between your legs as she presses you to the ground, rubbing her soft, woolen body against yours. 'I should make you pay me back for taking our vegetables,' she bleats, grabbing your head and pressing it between her thighs. With the arousing scent of her cunt in your face, you can't help but start licking her. She grinds her pussy against your tongue until she has a loud, bleating orgasm.";
	infect;

To say ewe loss:
	project Figure of Ewe_icon;
	if Player is male:
		say "     Bleating sadly, the ewe collapses onto all fours in front of you, the defeated ewe looks up at you pleadingly as she stands there helplessly. Her lonely, lustful eyes filled with need as she crouches down on the ground submissively. As you turn to leave, you hear her soft voice beg from behind you. 'Please, I've been so lonely... don't you want me either?' she asks plaintively, making you pause as you look back to see her obviously needy rear raised towards you. Do you take the sheep up on her offer?";
		if Player consents:
			say "     You grin as you look down on the eager ewe. Unable to resist her heat-filled scent and the sight of her winking sex, you reach forward and bury your hands in her soft fleece, making her bleat eagerly in anticipation. Gripping her hips tightly, you slide your [Cock of Player] rod into her wet, velvety opening, her passage spreading wide before your cock as she moans in pleasure. Feeling increasingly powerful, you begin to thrust into the ewe's heat-filled body again and again, her warm inner walls feeling like heaven, each thrust bringing you both closer and closer to your passionate climax. Soon your cock explodes within her, and you moan with pleasure as your seed spills into her body. She lets out a low bleating sound underneath you, her body shuddering in pleasure as well before she collapses onto the ground. Grinning as you struggle to stay standing on your unsteady feet, you look down at the happily-fucked ewe sprawled out on the ground, enjoying the sated expression on her face for a few minutes before continuing with your explorations of the city.";
			if MaleList is not banned:
				infect "Ram";
			else:
				infect "Ewe";
		else:
			say "     Deciding it would be best to leave while you can, you leave the lonely little sheep behind you as you venture back out into the city";
	else:
		say "     Defeated, the slightly crazed ewe blinks for a minute before looking at you and blushing slightly. She stammers an apology, something about how being alone without a flock for so long must have affected her mind, then runs off into the city in embarrassment. Shrugging at yet another example of the craziness sweeping the city, you continue along your way, feeling somewhat proud of having knocked some sense into the strange sheep.";

to say Ewe_desc:
	setmongender 4;
	project Figure of Ewe_icon;
	say "     Traveling through the streets of the city, you come across a strange sheep-like person wandering around without aim, absently running her hands over her soft, fleece-covered body as she looks around. Before you can do more than wonder what an ewe is doing out here all alone, the female sheep spots you and bleats eagerly before charging right at you, her slightly-crazed eyes full of lust.";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Sheep"; [name of the overall species of the infection, used for children, ...]
	add "Ewe" to infections of BovineList;
	add "Ewe" to infections of FurryList;
	add "Ewe" to infections of NatureList;
	add "Ewe" to infections of FemaleList;
	add "Ewe" to infections of TaperedCockList;
	add "Ewe" to infections of SheathedCockList;
	add "Ewe" to infections of BipedalList;
	add "Ewe" to infections of TailList;
	now Name entry is "Ewe";
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]She moves forward and rubs her soft wool over your body.[or]She lowers her head down and charges, knocking you back.[or]The ewe eyes you carefully before striking at your weak spots![or]The naked ewe pauses and strokes her soft wool teasingly, distracting you from the fight![or]The ewe windmills her arms as she charges forward, somehow managing to land a lucky blow.[at random]";
	now defeated entry is "[ewe loss]";
	now victory entry is "[ewe attack]";
	now desc entry is "";
	now face entry is "short black muzzle"; [ Face description, format as "Your face is (your text)."]
	now body entry is "stocky, but feminine, with lovely curves to your body. Your arms are thinner, ending in dainty, hoof-like hands which struggle to handle items at times. Your legs have strong thighs for leaping and crossing rough terrain and slender calves ending in dark hooves";
	now skin entry is "[one of]woolly[or]soft wool[or]white fleeced[at random]";
	now tail entry is "A short, round, sheep-like nub of a tail sits right over your ass, occasionally flicking one way or another in response to some stimulus, often lifting up teasingly above your rear."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "[one of]sheep-like[or]ram[or]black and pink spotted[at random]"; [ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "you feel your ears stretch out to the sides of your head, your face pushing forward into a sheep-like muzzle"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "your body seems to swell out slightly as it takes on a somewhat stocky yet feminine appearance, your fingers fusing into three almost hooflike fingers. The muscles in your legs then shift, making it easier to move on your new hooves"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "it is covered in soft woolen fleece, almost begging to be touched"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "your ass expands into a more rounded shape. A short round nub of a tail startles you as it pushes its way out above your increasingly cute ass"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it twists and warps between your legs, growing thicker as it takes on a black and pink tint, before drawing up into a new sheath between your legs"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 12;
	now dex entry is 16;
	now sta entry is 12;
	now per entry is 15;
	now int entry is 6;
	now cha entry is 15;
	now sex entry is "Female";
	now HP entry is 30;
	now lev entry is 4;
	now wdam entry is 7;
	now area entry is "Outside";
	now Cock Count entry is 0;
	now Cock Length entry is 0;
	now Ball Size entry is 0;
	now Nipple Count entry is 2;
	now Breast Size entry is 5;
	now Male Breast Size entry is 0;
	now Cunt Count entry is 1;
	now Cunt Depth entry is 9;
	now Cunt Tightness entry is 6;
	now SeductionImmune entry is false;
	now libido entry is 80;
	now loot entry is "tainted wool";
	now lootchance entry is 20;
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 3;  [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]stocky[or]cute[at random]";
	now type entry is "ovine";  [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;  [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;  [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
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


Section 3 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Ewe Infection"	"Infection"	"Mixed"	Ewe Infection rule	1000	false

This is the Ewe Infection rule:
	if Player has a body of "Ewe":
		trigger ending "Ewe Infection"; [Here it states, that the ending has been played.]
		let ram be "Ram";
		let ewe be "Ewe";
		if Libido of Leon > 0:
			if humanity of Player < 10:
				if Player is female:
					say "     [one of]Your instinctive urges growing stronger by the minute, you grow increasingly nervous out in the city without the protection of your ram. Finally you can't take it any longer, and find yourself fleeing back through the city to an all too familiar store. Leon is ready to welcome you with open arms, seemingly unsurprised at your panicked return as he envelops you in his arms. With your flock leaders arms around you, and the scent of your flock filling your head, you finally begin to feel safe again as he strokes you softly. You soon find the thought of straying from your flock makes you increasingly nervous, and realize that your time exploring the city and pretending to be independent is over for good. Your flock leader is there for you to help you settle into your new life as a submissive ewe however, helping you fit into the flock, and keeping him with you most nights. Soon you can't imagine life without your flock members, or living for any other reason than to serve your handsome ram in any way he wants[or]Feeling your mind fading, you stumble back to the store and the sense of safety it provides. Making it there safely Leon and the flock take you in and take care of you, letting you sleep curled up amongst the other sheep. When the rest of the flock is rescued later, they take you with them to their new pasturage, where you can spend the day with the regular uninfected sheep grazing, and the nights in the pen either with Leon or one of the regular rams he buys. You happily bear them both many little lambs[at random]...";
				else if Player is male:
					if lust of Leon < 2:
						say "     Overwhelmed with your new instinctive desires, and feeling alone without a flock, you waste no time in returning to the store where your flock is waiting for you. You are upset to find the door barred to you when you return however, as Leon informs you through the door that there isn't any room for such an obviously deformed sheep in his flock. Sighing you realize that the ram has tired of having another male around, and given up on you ever becoming a proper sheep for him. Heading back out into the city, you find yourself looking desperately for someplace to belong, becoming more and more nervous as you wander the predator filled city alone. [one of]Eventually you manage to find yourself a spot to hole up until the military come, and several of the soldiers take pity upon you when they find you huddled pathetically in an empty convenience store. They take you with them, and once you are declared non-infectious, they let you hang around their camp with them, where you do your best to make yourself useful. Your sheep-like cock which led to your flock driving you out, proves surprisingly popular among several of the female soldiers, and you become somewhat of a small mascot to your unit[or]Inevitably, you are found by some of the predators wandering the city, your sheep-like form unable to drive off the more powerful beasts, you end up captured by them all too easily. Taking you back with them, they seem amused at your helpless bleating, and decide to keep you around as you are instead of trying to change you. You end up as their pet, and quite often the evening amusement as well, as they take care of you, play tricks on you, and even occasionally fuck you[or]Eventually, you manage to find another survivor of the strange infection sweeping the city, who takes pity on you and takes you back to his own bunker. Your confused mind happy at finding someplace to belong, you settle in easily, grateful and eager to help, he soon begins to open up and trust you more and more as he tries to survive the strange infections sweeping the city. You smile happily as you proceed to taint most of his supplies when he isn't watching you, looking forward to having another flock member to stay with, and sure he will thank you in the end..[run paragraph on][at random].";
					else if Stamina of Leon is 1:
						say "     Having become a full-fledged member of the flock, you work alongside the other ewes while Leon cares for you wall. And while the studly ram certainly prefers the others, you are by no means neglected - there's just a lot of breeding to be done. Some of the females, Mary among them, do occasionally try to solicit you for attention, but you know your place and are content there, so you never give in. Whenever one harasses you too much, a word to Leon is enough to have him remind the ewe that he is the only true ram around.";
						say "     Eventually the military come through the city, and your flock sells some of the soldiers some basic equipment and items, and even arranges for some basic resupply from outside the city to fill the shelves back up again. While the soldiers suggest you should probably evacuate several times, Leon is more than happy with his new life here in the changed city. A viewpoint you are able to help your ram entice some of the visiting soldiers with, adding them to the flock when they won't be missed. As an ewe-like male, you make for an enticing trap, luring in candidates for Leon to mount while you get sucked off. The flock grows slowly and steadily to become the largest flock in the city.";
					else:
						say "     Overwhelmed by your new instinctive desires and feeling alone without a flock, you waste no time in returning to the store. There the flock is waiting for you, the studly ram is pleased to see you giving up your wandering ways and accepts you as his girly male ewe. There you work along the other ewes while Leon cares for you all. And while the studly ram certainly prefers the others, you by no means neglected - there's just a lot of breeding to be done. Some of the females, Mary among them, do occasionally try to solicit you for attention, but you know your place and are content there, so you never give in. Whenever one harasses you too much, a word to Leon is enough to have him remind the ewe that he is the only true ram around.";
						say "     Eventually the military come through the city, and your flock sells some of the soldiers some basic equipment and items, and even arranges for some basic resupply from outside the city to fill the shelves back up again. While the soldiers suggest you should probably evacuate several times, Leon is more than happy with his new life here in the changed city. A viewpoint you are able to help your ram entice some of the visiting soldiers with, adding them to the flock when they won't be missed. As an ewe-like male, you make for an enticing trap, luring in candidates for Leon to mount while you get sucked off or are sucking them off. The flock grows slowly and steadily to become the largest flock in the city.";
				else:
					if lust of Leon < 2:
						say "     Overwhelmed by your new instinctive desires and feeling alone without a flock, you make your way back to the store and the sheep there. But you are barred from entry, Leon seeing no need to keep an ewe he cannot breed among his flock. Knowing you have no real means to sway the ram, you eventually give up and wander off into the predator-filled city on your own.";
						say "     [one of]Your wanderings take you to a wooded area growing in the heart of the city. Timidly, you slip into the forest and follow its paths. There you are a beset by a large wolf with an evil sneer on his muzzle, who captures you and brings you back to his wooded lair. At first you fear he's going to eat you, but you're instead given to his pups as a playtoy and practice prey. And while they do play rough at times, nipping and biting, they also use you for fucking practice upon growing older[or]Finding yourself out on the plains outside the city, you drift around there until you come across a large farm still in operation[if McDermott Farm Entrance is known]. And while there's something vaguely familiar about the place and its residents, your mind it too gone to recall properly[end if]. There you feel at ease with the other animal residents and settle there, [if SkinName of Player is ram or SkinName of Player is ewe]living in one of the barns and contributing your wool through regular shearing[else]helping where you can as a farmhand[end if][or][if SkinName of Player is ewe or SkinName of Player is ram]You quickly find yourself captured by a herm cougar. And while she's disappointed to find you genderless, she decides to keep you regardless. You are collared and chained to her bed. Trapped there, she makes use of you and your fluffy body as a living pillow, calling you her [italic type]dakimakura[roman type]. You are frequently stained with her semen and juices as she masturbates against your fleecy coat or humps you while asleep. Things get especially messy whenever she brings others back to her lair for a romp. And while you come to enjoy your indolent lifestyle and your affectionate mistress, you give up on ever being more than a cherished object[else]You quickly find yourself captured by a herm cougar. Disappointed to find you genderless, she brings you with her regardless. You are collared and chained in her kitchen to act as her cook and maid for the lustful feline. And you are subjected to those lusts as well, the puma having you provide oral pleasure or an ass to fuck as part of your duties. While this isn't too bad on most occasions, things are much more difficult on you whenever your mistress invites her friends over for a romp. Then you are constantly harassed while trying to cook for the predators, frequently groped or even fucked while trying to prepare or serve their meals[end if][at random].";
					else:
						say "     Overwhelmed by your new instinctive desires and feeling alone without a flock, you waste no time in returning to the store. There the flock is waiting for you, the studly ram is a little disappointed to see you in your current state, but welcomes you nonetheless. As a neutered wether, you are no threat to his position and he does make sure to give you the occasional attention like you'd received previously when male. At the store, you work along the other ewes while Leon cares for you all. And while Leon certainly prefers the others, as there's just a lot of breeding to be done, he does permit you to help by orally pleasing the ewes most in need while he's rutting another.";
						say "     Eventually the military come through the city, and your flock sells some of the soldiers some basic equipment and items, and even arranges for some basic resupply from outside the city to fill the shelves back up again. While the soldiers suggest you should probably evacuate several times, Leon is more than happy with his new life here in the changed city. A viewpoint you are able to help your ram entice some of the visiting soldiers with, adding them to the flock when they won't be missed. Being an ewe-like wether, you make for an enticing lure without the temptation to let your target fuck you. And once a candidate is alone with you, Leon appears to mount and make an ewe out of them. The flock grows slowly and steadily to become the largest flock in the city.";
			else:
				if Player is female:
					say "     Rescue finally arrives, and you and your flock happily leave the city for greener pastures. Finding yourself somewhat of an outcast due to your unusual changes, you end up sticking together closely with your flock, at least they understand what it's like. Eventually Leon sets up a small organic farm in the countryside for your flock, and you learn to enjoy the fresh air and the open pastures. And most especially you come to enjoy the almost nightly visits from your Ram. Having quickly become one of his favorites Leon takes you almost every night, ensuring you are happy and complacent carrying his little lambs. You happily bear him many offspring, spending most of your days pregnant or tending to his little ones, until eventually you can't really recall ever doing anything else...";
				else if Player is male:
					if lust of Leon < 2:
						say "     When the rescue arrives, Leon reluctantly allows you to come with them as they leave the city, your less dominant sheep-like form no threat to the powerful male's control of his flock. As the flock settles down and begins to start up a new business together, you prove your worth to the flock by taking care of many of the business matters that require travel, as many of the ewes are helpless without their flock or their ram. As the business begins to proper, you feel increasingly proud of yourself, and Leon even acknowledges that you have earned yourself a proper place in the flock. Eventually, he even manages to find you a sheep of your own for you to take care of, the ewe named Mary you helped back in the city. The two of you bond easily, and you find yourself happier than ever as the two of you travel everywhere together, making sure your flocks business prospers.";
					else:
						say "     When the soldiers arrive, you guide them to the store and the flock of sheep taking shelter there. The flock greet you with a joyous response, Leon welcoming you into his fleecy arms. And while he's reluctant to allow his excited flock to leave the store, he can't actually refuse under the circumstances either. You and the rest of the sheep end up going through the military base together. While Leon manages his ewes, your less aggressive nature allows you to help him deal with the processing procedures for the sheep. This helps give a better impression of your flock overall so things go more smoothly.";
						say "     Upon release, Leon searches for a place to have his flock settle down, eventually finding a suitable business in the form of a clothes factory in a remote town. With the hardworking ewes to supply the wool and manpower, it's easy for Leon to keep his material costs low and production high. It's still a little rough going at first while the sheep are learning their new trade, but the profits pick up quickly after that. You know this because you work in the office with the ram, taking care of the accounting for him... when not providing the occasional executive blow job or ass to fill.";
						say "     The business improves steadily, more orders coming in as product quality increases while maintaining low prices. Production increases as well as the flock grows and more and more of the large factory becomes staffed. One of the buildings next door is purchased and converted into an outlet store, further increasing profits. You get put in charge of this as well.";
						say "     The outlet store becomes an additional means of recruiting ewes through various means. The occasional tainted garment gets slipped to an appealing customer. Would-be shoplifters are detained in Leon's new breaking room. Your personal favorite is to let an overconfident client [']lure['] you into a changing room for some fun, only to turn to the tables on them with your cock. Once they've blown you, they're ready for Leon to finish training them to be a loyal, hard-working ewe for the flock. Over time, more and more people in the area become flock members themselves. Eventually, the whole town is sheep-run with Leon in charge.";
				else:
					if lust of Leon < 2:
						say "***survived and refused as girly wether.";
					else:
						say "***survived and accepted as girly wether.";
		else if Libido of Mary > 0:
			if humanity of Player < 10:
				if Player is female:
					say "     Giving in to the building urges of an ewe in heat, you find yourself running back to the store where you are sure Mary will know how to help you. Your favorite sheep smiles as she looks at you, shaking her head in sad amusement as she sees just what a desperate state you are in. 'I guess we get to be ewes together,' she whispers into your ear teasingly as she leads you over to Leon. The sight and scent of the powerful male ram making your pussy damp and warm, as you let out a low needy moan. The ram grins as he looks at you and Mary, before leading you both back to the break room, Mary's hoof like hand stroking your soft fleece comfortingly as you follow the ram happily. When you enter the break room, Leon is ready and waiting, the powerful ram wasting no time in pinning you down, and giving your body exactly what it needs so badly. Moaning and panting from the intense mating, you can feel Leon pull out of you, and grin happily as you watch the powerful ram begin to mate Mary while you watch. The male mates the two of you several times that night, making you both permanently part of his flock, until you can barely remember anything but being a happy little ewe for your ram. Waking up the next day to the feel of another ewe curled up next to you, you look over and smile happily as you shift closer to Mary, glad that your friendly ewe stayed with you, and that now you can both be happy little flock mates together at last.";
				else:
					say "     Surrendering to your instincts, you rush back to the store, bleating anxiously until Mary comes out to meet you. The lovely ewe sighs as she sees your lust-filled eyes, and realizes that you have finally succumbed completely to the changes. Mary leads you over to her small hideout, and you follow along with anticipation, grinning happily as your ewe positions herself for you. You bleat happily as you mount Mary, mating her eagerly, glad that your lovely little ewe has decided to embrace the changes just like you did. Soon she is bleating and panting underneath you just as happily as you are, her mind filled with the bestial joy of an ewe in rut. After several days, you both wander out of her hideaway, two happy little sheep, joining the rest of the beasts in roaming the city together as you look for more people or beasts to share in your lustful matings...";
			else:
				if Player is female:
					say "     You and Mary happily welcome the arrival of the rescue teams together, and are taken back to their camp with the rest of Leon's flock. When they eventually let you go, having bigger problems to deal with than several peaceful sheep, you and Mary let Leon and the others go their own way, never having fit in properly with the rams flock. The two of you often sharing everything together like good flock-mates, and while Mary is somewhat disappointed that you didn't end up a handsome Ram yourself, she loves having a fellow ewe to share things with, and just because you aren't male, doesn't mean you don't enjoy each other's bodies quite often. Eventually you end up settling down as waitresses at a bar together, the novelty of your strange forms only increasing your popularity with the patrons, and making you quite a few tips. Several times, some of the more curious will hit on one of you, only to be surprised when they find out you both come together as a package, and while you have some wild times together, much to your disappointment, none of them become handsome rams for you, or stay more than a night or two. Eventually though, a handsome looking [one of]Wolf[or]Bear[or]Lion[or]Tiger[or]Horse[at random] morph wanders into the bar, and takes note of the two of you. The crafty male beast enjoys teasing first one of you, then the other, all night, getting you both nice and hot, before inviting you back to his place for some fun. Looking at Mary, you both eagerly agree, going with the powerful stud eagerly. After several weeks of mind blowing sex with the handsome morph on a nightly basis, the two of you waste no time in agreeing when he suggests you move in on a more permanent basis. Instinctively latching on to your new mate as your flock leader, the two of you soon are serving him happily, as you settle into your new lives together as his well-fucked little sheep.";
				else:
					say "     When the rescue comes, you and Mary are evacuated along with the rest of Leon's flock, and once released you are both eager to go start your own flock together. Leon is rather reluctant to let you go, unsure if you are really strong enough to be a proper ram for Mary, but eventually consents since you are both so eagerly set on it. The two of you set out together, trying several jobs, and you have to wonder if Leon was right, as more than once you find several other infected, or even just aggressive humans, circling around Mary and trying to take her away. These problems often lead to you both having to leave towns rather quickly, to avoid the unpleasant situations and predatory males. Eventually you [one of]both manage to find a nice job, and rent an apartment together and settle down, into a peaceful life. Domestic life suits you both, and while you never do manage to put a flock together, the two of you enjoy a nice happy life together for the rest of your days.[or]Eventually, you get trapped in a situation you can't get out of, and you and Mary both end up working for some rather unsavory characters for next to nothing. The men come to visit Mary for the night while you head out to your backbreaking job. You sigh and wish you had listened to Leon after all[or]run across another Ram and his flock one evening in a diner, the Ram takes one look at you and Mary, and a grin of amusement splits his muzzle as he lowers his horns and stalks forward. Your sheep-like build is no match for the powerful Ram, as he quickly claims Mary for his own, mating her and making her part of his flock immediately. He seems amused at your protests however, and allows you to tag along with his flock, and while you try to challenge him several more times, you are finally forced to acknowledge his dominance, and end up staying with his flock and helping the more powerful male in any way he orders you to. Eventually you end up as the caretaker of the Rams many young lambs, feeling especially close to the ones that Mary bears him, and while you still see Mary occasionally, as one of the rams favorites, you never really get a chance to talk to her again. You find yourself eventually deciding that being a member of another Rams flock isn't such a bad life, especially with all the happy little lambs you get to play with and teach, although you still sometimes wonder if things could have turned out differently if only you had been stronger[at random]...";
		else:
			if humanity of Player < 10:
				if Player is female:
					say "     [one of]You wander the city aimlessly, your mind consumed with lewd thoughts and your body consumed with need, eventually you are captured by a large wolf who carries you off to a makeshift den before having his way with you. He uses you hard and often, his Knot stretching you in the most amazing ways and tying you to him, you stay behind in the den while he often goes out hunting for supplies or fresh converts. Before he comes back and puts you on his wonderful knot again. Inevitably you end up pregnant with his seed, and bear him many pups, which you often clothe in your own wool..[or]As your grip on your humanity weakens, you find yourself giving in to your more instinctual side. You end up wandering the city alone, the feelings of loneliness without a flock tearing at you constantly. Searching desperately for someplace to belong, you come across a changed group of smooth collies. Unable to resist as they bark and nip at you, you are quickly herded into a makeshift pen. The collies treat you well, almost like a pet, though they seem to enjoy playing at herding you around and taking care of you. Eventually they manage to hunt up a few more sheep for their small flock, including a familiar looking ram that seems particularly attracted to you..[or]Finally giving in to your submissive new instincts, you run off into the city on your new hooves, looking for something desperately. Eventually you hear a familiar call echoing down the streets, and bleating happily find yourself heading that way. Emerging into a small parking lot, you find the handsome dominant ram who made you his ewe standing there surrounded by several other female sheep. The ram grins at you as you approach, and you can feel yourself smiling happily back as you join the ranks of his adoring flock, glad to have found such a handsome mate to make all those hard decisions for you. Trailing along happily as he leads you all to safety, you find yourself looking forward eagerly to your new life as a well-fucked submissive ewe for your ram[at random].";
				else:
					say "     Giving in to your new instincts, you wander the city aimlessly, and while several of the rams approach you, they shy away from your obvious male deformity, unwilling to take an unbreedable sheep into their flocks, leaving you alone and flockless. You try halfheartedly to acquire a few ewes of your own, but are unable to contend with the larger and more powerful rams, and are beaten several times for your troubles. Eventually you [one of]find yourself wandering down a strange street in the city, and note a bar that appears to be open. Deciding to see what it is like, you wander inside only to blink at the glittering lights of a strip club, looking around, you end up relaxing at the bar for a while, before a powerful palomino comes over and teases you out onto the dance floor. Before you know it, you are spending all your time at the strange club, and eventually they manage to get you up on stage. You actually find stripping to be surprisingly fun, and before you know it, you are dying your fur black, and stripping for the crowd most every night, hardly even caring about anything else as the handsome club members rub up against your fleece on a nightly basis[or]end up wandering into the wrong part of town, where you are swiftly captured by the hyena gang members. The beasts seem rather amused by you, and decide to keep you around for a while, letting you live with them in exchange for some of your wool and some occasional fun. Eager to finally belong somewhere, you are happy to adapt to their ways, and eager to please your new hyena masters. When the matriarch finally finds a use for you, you are extremely grateful, happily scouting out other territories for the hyenas, and wandering in as a nice nonthreatening sheep and finding out just what defenses the other species have, always eager for a pet and a nice reward when you return to your new flock, their happy laughter filling your ears and making you smile happily as you look forward to your next job for them..[at random].";
			else:
				if Player is female:
					say "     Rescued from the city with your mind still barely intact after your harrowing experiences, you happily welcome the military as they take you back to their camp. [one of]Feeling rather submissive around all those handsome military men, you soon find yourself being asked to stay over for a night or two by several of the soldiers. Unable to resist the thought of their dominant forms pressed up against yours, you eagerly accept, and while several jokes are made about Scottish ancestry and kilts, no one objects to your spending time with them. Soon you are spending all your time caring for the soldiers, both in and out of bed, happily settling into a new life at their base with them as they try to sort out the city. Amusingly enough, the situation is so confused that hardly anyone even notices when several of them begin to acquire rather sheep-like traits, and you are looking forward eagerly to the swiftly approaching time when all those handsome new rams will slip out of the base with you together...[or]Released back into the world as relatively harmless, you wander aimlessly for a while, before settling down in a menial job, your submissive tendencies and eagerness to please serving you well, even though they also ensure you will probably never end up getting promoted either. After a while, you return home at the end of a long exhausting day, to find you have visitors, the ram from the city and his flock are there waiting for you, and while you try to protest, you soon find yourself moaning submissively underneath him again. Once he has ensured his dominance, he takes you with him as he goes to track down the next ewe that managed to make it out of the city, and you look forward to helping him as he gathers his flock together...[at random]";
				else:
					say "     Managing to make it out of the city with your mind mostly intact, you wander aimlessly for a while, your strange form making it hard to get any but the most menial of jobs, and several people take advantage of your nice submissive nature to get ahead themselves. Eventually you manage to find yourself a place, working for the bureaucracy of the government, helping other refugees from the city find places to live and work. This is how you meet the lovely little wolf, who makes you blush as she jokes teasingly about, how she could 'just eat you all up,' and wondering what she has to do to be a wolf in your sheep's clothing, especially with you in it as well. Enjoying her advances, it isn't long before you end up offering her a place to stay with you, which she happily accepts. You quickly come to enjoy her dominant presence in your life, as well as her eager approach to sex (often and in various positions), and soon the two of you make a strange, but happy pair. Though there is some wondering as to just what the pups will be like...";

Ewe ends here.
