Version 1 of Mall Rat by Stripes begins here.
[Version 1]

"Adds a Mall Rat infection to Flexible Survival for use with Lucy the Mall Rat."

Section 1 - Creature Responses

when play begins:
	add { "Mall Rat" } to infections of furry;
	add { "Mall Rat" } to infections of Rodentlist;


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Name entry is "Mall Rat"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "non-combative."; [ Successful attack message ]
	now defeated entry is "non-combative."; [ Text when monster loses. ]
	now victory entry is "non-combative."; [ Text when monster wins. ]
	now desc entry is "non-combative."; [ Description of the creature when you encounter it. ]
	now face entry is "that of a cute looking rat with a long, narrow muzzle and twitching whiskers. You've found a few rings and hoops to hang from your large, round ears. You find words like 'cool', 'rad', 'awesome', 'dude' and 'like' slipping into your vocabulary a lot more"; [ Face. Format as Your face is [face of Player]. ]
	now body entry is "that of a slender mall rat, with nicely trimmed [if Player is female]and painted [end if]nails on the end of your rat-like fingers. You find your body very cool looking and you want to totally find the trendiest new clothes to help show it off"; [ Body. Format as "Your body is [body of Player]." ]
	now skin entry is "well-groomed brown fur across your"; [ Skin. Format as "Looking at yourself, your body is covered in [skin of Player] skin." ]
	now tail entry is "You have a long and slender rat's tail growing from your backside. You've found and hung some shiny hoops and bangles from it."; [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "[one of]human[or]pink[purely at random]"; [ Cock. Format as "You have a 'size' [cock of Player] cock." ]
	now face change entry is "your head fills with thoughts of just hanging out with your friends at the mall as a long, ratty muzzle forms on your face"; [ Face TF text. Format as "Your face tingles as [face change entry]." ]
	now body change entry is "your body shifts, becoming tall and slender with a [if Player is female]shapely[else]handsome[end if] figure. Your hands and feet turn into nimble, rat-like paws with small claws at the fingertips. You find raiding a trendy store for some sweet threads to wear jumping much higher on your priority list of things to do during the apocalypse. And maybe some of those sweet sneakers with blinkers"; [ Body TF text, format as "Your body tingles as [body change entry]. ]
	now skin change entry is "creamy-brown fur spreads across your body. You're quite pleased to see that despite it having just grown in, it's already well groomed (except for a few stylish ruffles)"; [ Skin TF text, format as "Your skin tingles as [skin change entry]. ]
	now ass change entry is "a long and slender rat tail grows from your rear. It is pink, hairless and definitely in need of some accessories"; [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "it shifts and becomes pleasantly human-like and flesh-toned"; [ Cock TF text, format as "Your groin tingles as [cock change entry]." ]
	now str entry is 10; [ These are now the creature's stats... ]
	now dex entry is 14; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 10; [ These values may be used as part of alternate combat.]
	now per entry is 12;
	now int entry is 10;
	now cha entry is 15;
	now sex entry is "nochange"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 22; [ The monster's starting HP. ]
	now lev entry is 1; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 3; [ Monster's average damage when attacking. ]
	now area entry is "Nowhere"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 6; [ Length infection will make cock grow to if cocks. ]
	now Ball Size entry is 3; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 3; [ Size of breasts the infection will try to attain. ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 6; [ Depth of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 3; [ Width of female sex the infection will try to give a player. ]
	now libido entry is 10; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3;
	now body descriptor entry is "[one of]slender[or]cool[as decreasingly likely outcomes]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender"  Use [one of] to vary ]
	now type entry is "[one of]mallrat[or]rat[or]murine[or]ratty[at random]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
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
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [head description of Player] with [eye color of Player], [eye type of Player] eyes and an overall [gender appearance of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...)]
	now Beard Style entry is ""; [short beard style (goatee/three day stubble/full beard/...)]
	now Body Hair Length entry is  0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective  is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3;
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
	now Asshole Depth entry is 7; [inches deep for anal fucking;]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Asshole Tightness entry is 3;
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



Section 3 - Definitions

Definition: a person is mallratfaced:
	if facename of Player is "Mall Rat", yes;
	no;

Definition: a person is mallratskinned:
	if skinname of Player is "Mall Rat", yes;
	no;

Definition: a person is mallratbodied:
	if bodyname of Player is "Mall Rat", yes;
	no;

Definition: a person is mallratcocked:
	if cockname of Player is "Mall Rat", yes;
	no;

Definition: a person is mallrattailed:
	if tailname of Player is "Mall Rat", yes;
	no;


Section 4 - Endings

when play ends:
	if bodyname of Player is "Mall Rat":
		if humanity of Player < 10:
			if HP of Lucy <= 1:
				if Smith Haven Mall Lot South is known:
					say "     Your life of roaming and wandering slowly becomes less and less attractive to you. With thoughts of the sweet mall growing more frequent, you make your way back there to join the rats in their happy life of coolness and relaxing. You have a happy life there with all those other cool dudes and pretty girls relaxing around the shopping center. You do make the occasional excursion out into the city. Usually, you only do these when one of the rats really needs something done out in the city";
					if HP of Ronda > 0:
						say ". The slut rats lurking below are occasionally a problem, but with an awesome [if Player is herm]mall rat[else if Player is female]gal[else]dude[end if] like you around to help, their uncoolness is kept from harshing everyone's good vibes";
					say ".";
				else:
					say "     Your life of roaming and wandering slowly becomes less and less attractive to you. With thoughts of finding someplace to settle down that'd be cooler than a dingy old bunker, your wanderings bring you to a large mall. Entering the shopping plaza, you are pleased to find other rats already living there. They turn out to be a great bunch of cool dudes and pretty girls for you to hang around with and you soon settle in there to stay, having found a new home for an awesome mall rat like you.";
			else:
				say "     Your life of roaming and wandering slowly becomes less and less attractive to you. With thoughts of the sweet mall and your even sweeter girlfriend waiting for you there, you make your way back there to join the rats in their happy life of coolness and relaxing. You and Lucy get along wonderfully, making what everyone agrees is a cute couple. But that doesn't stop either of you from continuing your horny habits of sleeping around, Lucy with many of the other mall rats and you with many of the mall's visitors and those you meet on your new much-rarer excursions out into the city. Usually, you only do these when one of the rats really needs something done out in the city";
				if HP of Ronda > 0:
					say ". The slut rats lurking below are occasionally a problem, but with an awesome [if Player is herm]rat[else if Player is female]gal[else]dude[end if] like you around to help, their uncoolness is kept from harshing everyone's good vibes";
				say ".";
		else:
			if HP of Lucy <= 1:
				say "     You thankfully survive your time in the city until you're picked up and transported safely to the military processing camp. While there is a slight interest in examining you as one of the few with the mall rat infection able to resist the pull to remain at the mall, the mall rats are known to be a peaceful and safe strain so you draw little scrutiny for it. You are eventually processed and released. You travel away from the city and find a new city to call your home.";
				say "     You get a job managing a large mall, the work coming naturally to you. You are an easy-going, laid-back manager and make friends with all the store owners and patrons quite easily. The local youths like you as well, finding you much more tolerant of their slacker ways of hanging around the mall to while away their afternoons. They treat your mall well and you have little problem with shoplifting, graffiti or other complaints you hear from the directors of other malls. And when you see a few of them start to get rat tails of their own, you can't help but smile.";
			else:
				say "     As you're preparing for the military pick-up, Lucy tries to act cool about your leaving, but you know she's upset to see you going. Kissing her, you tell her that you and Rod have a plan. Hugging her, you head back to the bunker to take care of your final preparations and are transported to the military processing camp. While there is a slight interest in examining you as one of the few with the mall rat infection able to resist the pull to remain at the mall, the mall rats are known to be a peaceful and safe strain so you draw little scrutiny for it. You are eventually processed and released.";
				say "     It is at this point that you begin your search to find a new home. Using what information you can pick up from other survivors and the teams from Zephyr and RSX, you eventually follow some leads to Fairhaven. There you find a large and unoccupied mall in that much safer city. With a growing community of peaceful mutants living in one part of the city and large facilities for those other groups in another, you know you've found the place. You pass word along with a team heading back to Rod at Smith Haven Mall along with a rolled up copy of the mall map and several photos.";
				say "     It takes some time to arrange and quite a bit of convincing, but eventually Rod and a large portion of the mall rat population move to the Fairhaven Mall. Now safe from the slut rat menace, the rats happily make this new mall into their hope, cleaning it up and adding their own personal brand of cool to the huge shopping center, making it what you all know to be the true heart of the city you now call home.";
				say "     It takes a little convincing, but you manage to get Lucy to move into a home with you. Since it's right across the street from the mall, she doesn't feel so bad about that and quickly becomes acclimatized by adding several cool decorations from the mall. You particularly like the bubble gum machines she keeps stocked by the door. A welcome treat for you and any guests.";
				say "     She also reopens her nail salon, painting the nails for the mall rat girls and any other patrons who might want to make themselves look prettier. You work with Rod, keeping an eye on things around town for the more mall-ridden rats and acting as go-between for the rat colony leader and the other groups around town.";

Mall Rat ends here.
