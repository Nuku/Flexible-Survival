Nightmare by Sarokcat begins here.

"Adds a Nightmare to Flexible Survival's Wandering Monsters table, with impreg chance"


Section 1 - Creature Responses

to say Nightmare wins:
	project Figure of Nightmare_hard_icon;
	say "     Unable to continue fighting the stronger and more experienced stablemaster, you collapse helplessly on top of a pile of cushions, and try to catch your breath after the battering your mind and body has endured during the combat, fortunately for you, the stablemaster seems distracted for a second as he hunts among the cushions nearby. You hear a soft whimpering noise over in the corner, and manage with some effort to turn your equine head to look, only to see the mare Daisy touching her body as she stares at you and the stablemaster with ever-increasing arousal, her heat-filled scent still permeating the room. Your attention is drawn back to the stablemaster however, as the powerful black stallion steps up next to your prone form and bends over you. Looking back up at him, you realize in a panic that the golden collar you had made to chain the stablemaster is now in his hands!";
	say "     You try to lift up your hands to ward him off, but are far too slow and weakened from the combat to react in time, as he slips the collar around your neck and latches it firmly shut. You groan in despair as you try to grasp it with your hands, only to moan in pain as the golden treasure seems to burn into your body, melding with your neck as it sinks down under your fur. The pain of the collar melding to your neck is only the start, and as the stablemaster steps back to watch with a chuckle, your entire body begins to burn and shift from within, and that powerful store of energy within you seems to slowly slip away and change to a more mild and servile form of power. Yes, you find yourself thinking, mild and servile is what a good slave should be, you moan happily at this realization, even though you know that somehow the collar is causing you to think such nice and submissive thoughts.";
	WaitLineBreak;
	say "     You are distracted again though as your body reshapes itself more obviously, remaining powerful and equine, but also becoming slimmer and much, much more feminine as well, your large breasts and slimming legs becoming increasingly sensitive as you writhe in pleasure on the cushions. Your skin burns with a strange heat, and you can hear an amused chuckle from nearby as you stroke your slender hands over your body. Looking up at the source of the noise, you find your eyes locked to the most powerful and wonderful example of stallionhood you have ever seen. The sight of his powerful body and his thick meaty manhood make your mouth water, as well as your new mare's pussy dampen with need as your own heat scent begins to fill the room and mingle with that of Daisy's.";
	say "     Something seems to click within you as you gaze with awe upon your master, for how could such a powerful stallion not own such a submissive little slave like you, and you can feel your mind empty of everything but thoughts of sex and being owned as you bring yourself up to your knees in front of him as the last of your new changes finish.";

To say Nightmare loses:
	project Figure of Slutslave_icon;
	say "     You find yourself grinning eagerly as you send the stablemaster reeling one last time, the powerful stallion staggering backwards before he trips over several of the cushions and crashes to the floor, sending the cushions flying. Looking down at the prone stallion cautiously, you notice a slight glint from nearby, and a smile stretches across your muzzle as you realize that the stablemaster's fall knocked the enchanted collar out into the open. Quickly reaching down, you snatch up the collar and lunge towards the stablemaster even as he tries to struggle back to his feet. You can see his eyes widen as he tries to react, but this time at least he is far too slow to stop you from snapping the collar around his large equine neck. You can see panic in his eyes as he tries to reach up and pull the collar off, and you step back to watch to see what will happen warily. The stablemaster moans with what appears to be pleasure as he tries tearing at the collar, which seems to slowly be sinking into his body and merging with his hide, the strange glyphs on the item glowing softly as he paws at his neck.";
	say "     His attentions soon shift from his neck as he moans again and begins rubbing his hands over his increasingly sexy body, and you blink as he massages his expanding chest and shrinking cock eagerly, even as the rest of his body seems to become much more slender and suitable for a mare. Which is obviously what the stablemaster is now becoming you find yourself noticing with a grin as you watch the former stallion's body continue to shift and change, her new breasts blossoming out under her hands even as her new slit finishes forming and the scent of another mare in heat fills the room. Probably the most arousing thing however, is how eagerly the new mare turns to look at you with her red eyes full of adoration, and her muzzle hanging open as she pants eagerly. 'Please master, please use your slave,' you hear her moan softly as she continues to stroke her body eagerly while she stares up at you.";
	infect "Nightmare";

to say NightmareDesc:
	project Figure of Nightmare_soft_icon;
	setmongender 3;
	say "     The stablemaster charges forward to attack, his powerful black equine form almost a mirror of your own new body as he tries to grapple you into submission!";

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Nightmare"; [name of the overall species of the infection, used for children, ...]
	add "Nightmare" to infections of EquineList;
	add "Nightmare" to infections of FurryList;
	add "Nightmare" to infections of MythologicalList;
	add "Nightmare" to infections of MaleList;
	add "Nightmare" to infections of BluntCockList;
	add "Nightmare" to infections of SheathedCockList;
	add "Nightmare" to infections of BipedalList;
	add "Nightmare" to infections of TailList;
	now Name entry is "Nightmare";
	now enemy title entry is "Nightmare Stallion";
	now enemy Name entry is "Alp";
	now enemy type entry is 1; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]He stares at you with his blazing red eyes, the flame within seeming to tear at your mind and unbalance your sense of self.[or]He strikes out at you with one powerful hoof-tipped hand, knocking you backwards![or]The powerful musk of the stablemaster fills your nostrils, causing you to pause for a minute as a wave of submissiveness sweeps over you.[or]He lashes out at you with one of his blood red hooves, knocking the wind out of you![or]The stablemaster grabs hold of you and tries to wrestle you down to the ground![or]Your opponent strokes his cock teasingly, the sight making you pause as a strange desire sweeps through you for a minute, before you shake off the effects.[at random]";
	now defeated entry is "[Nightmare loses]";
	now victory entry is "[Nightmare wins]";
	now desc entry is "[NightmareDesc]";
	now face entry is "rather sexy coal black equine muzzle stretching forward from your face, your broad forehead and mobile black equine ears sitting atop your new countenance are rather sexy as well. Although the most striking features of your new face have to be your eyes, which burn from within with an inner fire that is almost mesmerizing to look at, and the dark black and red mane of hair which spills down the back and sides of your head, the iridescent strands of black and red hair seeming to almost burn with your every movement as they frame your new face"; [ Face description, format as "Your face is (your text)."]
	now body entry is "the strong and powerful body of a black stallion, with blood red hooves and hoof tipped hands, as well as a large chest and fully digitigrade equine legs. Your new body is amazingly responsive and powerful feeling, with almost unnatural amounts of energy surging through you constantly"; [ Body Description, format as "Your Body is (your text)"]
	now skin entry is "[one of]dark black[or]shimmering black furred[or]Nightmare[or]Coal black[or]midnight black furred[or]shadowy furred[at random]"; [ skin Description, format as "Looking at yourself, your body is covered in (your text) skin"]
	now tail entry is "You have a long, sexy, shimmering equine tail swaying teasingly behind you, its silken black and deep red colored strands seeming to catch and bend the light slightly around themselves until they almost appear to burn with an inner dark fire with every step you take."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "[one of]equine[or]blunt-tipped[or]horse-like[at random]"; [ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "you feel a strange yet familiar burning pressure in your head, and cry out slightly as your face pushes forward and reshapes itself again, your forehead flattening out and your eyes burning with an inner flame as your dark equine muzzle finishes reshaping itself, your dark blood red mane once more shimmering like fire as it trails down the back of your fully equine face once more"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "you can feel that strange energy from the vials you drank building up within you again, and causing your body to burn with energy as it begins to twist and reshape itself as it changes back into your now familiar and comfortable equine form. Flexing your hands and stomping your hooves on the ground, you find yourself grinning with amusement as you throw off the weak and pathetic infection that tried to mar your Nightmarish equine beauty"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "your body once more burns with that strange inner fire, as it seems to crackle over and under your skin, the strange power within you sweeping over your form until once again you are completely covered in a shadowy midnight black coating of fur"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "your spine cracks and shifts, and your rear shifts and changes slightly as your lovely red and black equine tail once more grows out of your rear. Its soft, sexy strands feel rather comforting as they overwhelm your more recent infection"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "power seems to flow into it and it becomes equine in form"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 28;
	now dex entry is 26;
	now sta entry is 24;
	now per entry is 18;
	now int entry is 18;
	now cha entry is 20;
	now sex entry is "Male";  [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 225;
	now lev entry is 25;  [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 15;  [ Amount of Damage monster Does when attacking. ]
	now area entry is "None";  [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 1;  [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 16;  [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 2;  [ Size of balls ]
	now Nipple Count entry is 0;  [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 0;  [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0;  [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0;  [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	now SeductionImmune entry is true;
	now libido entry is 0;  [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is "Chipped tooth";  [ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 0;  [ Chance of loot dropping 0-100 ]
	[ These represent the new additions to the table ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 4;  [ Number 1-5, rough approx of infected PC body size/height. 1=small, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]powerful[or]muscled[or]chiseled[at random]";
	now type entry is "[one of]equine[or]horse-like[at random]";
	now magic entry is true;  [ Is this a magic creature? true/false ]
	now resbypass entry is true;  [ Bypasses Researcher bonus? True/False (should almost invariably be false) ]
	now non-infectious entry is true;  [ Is this a non-infectious, non-shiftable creature? True/False ]
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 2;  [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "bearhugger";  [ Uses the 'bearhugger' entry from the Table of Critter Combat ]
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



Section 3 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Nightmare Infection"	"Infection"	""	Nightmare Infection rule	1000	false

This is the Nightmare Infection rule:
	if Player has a body of "Nightmare":
		trigger ending "Nightmare Infection"; [Here it states, that the ending has been played.]
		if nightmareslavery is 1:
			say "     You easily settle into your new life as your master's pet and slut in the stables, happy to tell him anything he wants to know and serve your amazing master in any way he wishes. Best of all though, you aren't alone as his pet for very long, as soon enough Fancy joins you in his office with a lovely new collar all her own! She seems a little confused at first, but soon comes around after you explain what an honor it is to be the slave of such a handsome and powerful stallion. Your stallion seems to find this to be amusing and pleasing as well, and he often has you tell him what a wonderful and sexy stallion he is, and how lucky you are to be his pet, and how your body constantly burns for his touch. Happily enough, he is more than willing to touch you quite often, breeding both you and your fellow pet often, until both your bellies are full of his seed and his foals. Though sometimes he does share you out as a special reward for some of the other horsemen, which is always lovely and filling, but just not the same as having your powerful stallion bury himself in you. Eventually as his favored pet you help him expand his territory in the city, your strength now serving your master as you fight beside him on the few times his authority is challenged, often surprising his opponents with your capability and might. And when it finally comes time for the stables to be relocated elsewhere, you are proud to follow your master to a new city where you can start up another stables, and breed him many strong and powerful foals... You are just so glad to have managed to find such a wonderful and fulfilling life as a slave of such a handsome stallion!";
		if Nightmaremastery is 1:
			if humanity of Player < 10:
				say "     Your mind overwhelmed by lust and the images of all the fun you can have with your pets and servants, you quickly return to the stables where you can enjoy yourself properly. You quickly settle in to your office again, enjoying the fruits of your labors and the bodies of your many sexy mares and stallions, and while you begin to let things not related to sex slide just like the previous stablemaster did. You are more than cunning enough to ensure that fancy is no longer in a position to cause problems for you even as you give in more and more to your increasingly lustful urges. Though of course you do love visiting her in her new cell in the breeders quarters, her belly already nice and round with foal, her lust-filled eyes and moans of pleasure as you tease her body are some of the most arousing things to you even now. And while the maintenance of the stables and the mares quarters does drop off a bit with her gone, you really don't care too much as long as there are always plenty of mares for you and the clients to enjoy, and the stables keeps expanding...";
			else:
				say "     When the military arrive in force, you quickly return to the stables and set up a proper welcoming party for them, with everyone being nice and well behaved, and plenty of sexy mares ready to 'properly thank' the male soldiers for rescuing them. Though you grin with amusement as you think about just how many of those mares were former soldiers themselves. Your peaceful display however confuses the military somewhat, as you knew it would, and allows you to strike a deal with several of the military leaders involved... a deal which was no doubt influenced by the teasing glimpses of naked horseflesh you allow them to see, as well as your newly acquired skill at mesmerizing people. Before long in return for some of your guards aid in pacifying some of the areas of the city, and their information on the hyena gang (which has mostly already slipped out of the city, not that they need to know that,). You have secured their agreement to transport your entire stables to a safer and more isolated location without any testing or issues, since obviously you are all still sane... of course, while all this is happening you end up quartered just behind the military lines for a while.";
				say "     This allows a number of the bored and horny soldiers plenty of time to visit your always eager mares, it and lets you get a considerable amount of influence over the troops, as well as the people in charge of arranging for your move to your new stable. A location which soon, amusingly enough, changes from an isolated and remote location, to a rather nice spot right outside another major city, with easy access to another military base just a short drive away. Once you have secured this change, it isn't long before you begin slipping more and more of your people out to the new spot to begin 'getting it ready'. Fancy doing an amazing job of setting the new building up for you with all the supplies you manage to coax out of the military, and you smile with amusement as the military continues to arm and train your own guards as they go through the city. What is even more amusing is how they never seem to realize that your squads often go into the city smaller than they come out, while their own troops often vanish into the city instead. Your ranks swelling as more and more soldiers are seduced into becoming slutty little mares or powerful horseguards.";
				say "     When the situation starts to get bad for the blockade, you leave only a token group of guards there to continue to help, as the rest of you relocate to your new home. Your obligation to the military fulfilled, you turn your full attention to building a new clientele in the city around your new home, and even begin setting up a few cameras to start dabbling in some of the more amusing porn and fetish industries. Eventually the Hyena gang makes contact again under a new matriarch, and you renew your mutually beneficial partnership with the crazy beasts, your business expanding faster than ever as time goes on. And you look forward to leaving a powerful and influential legacy to one of your many foals one day, while you retire and enjoy the fine life with Fancy and a few other hand picked equines...";
		else: [full quest, never took on stablemaster]
			if humanity of Player < 10:
				if Player is male:
					say "     Finally giving in to the powerful and bestial instincts of your new stallion body, you return to the stables and try to force your way in, though you are eventually driven back by the sheer numbers of guards. Crying out in rage and lust, you take the few guards and mares you managed to convert to your side during the combat, and roam the streets of the city looking for an appropriate location to build your new harem at. It isn't long before you manage to find a spot for your small harem to shelter, though building up a proper harem from the few mares you managed to acquire is rather hard as unchanged humans are harder than ever to find now. Eventually however the military moves into the city, and while you manage to convert several squads into more mares for your harem, they manage to drive your small band of equines back farther and farther... until eventually you are forced to slip out of the city with only a handful of mares again under cover of night. Seething with rage and lust, you waste no time searching out a small town nearby and go about rebuilding your harem and your forces once again in a night long orgy across the town. Once the town is converted, you and your new mares and guards vanish into the wilderness before any response can come, already looking for new people to convert into breeding mares so your harem can grow stronger and you can take revenge on the military and anyone else that tries to drive you out again...";
				else:
					say "     With your new Nightmarish instincts overwhelming your mind, you return to the stables to try to establish your dominance once and for all, though you barely make in the door before the guards try to spring a trap on you with nearly overwhelming force. You manage to slip away, beating down many of the guards to make your escape, and while they pursue you for a while, you are much faster and more capable and you eventually manage to slip away. Annoyed and angry, you wander the city streets for a while, smashing everything that gets in your way, as you take out your frustration and lust on anything and everything you can. Unfortunately, this leaves you tired and surprised when the military finally move in, and after quite a struggle they eventually manage to capture you and bring you in for study. Which actually finally lets you rest long enough to begin to influence your captors, who have no idea just how much more potent your transformation is and how much more powerful you are than the average infected beast.";
					say "     It isn't long before you have most of the staff investigating you under your thrall, and well on their way to becoming proper equines, and soon after that your new stallions and mares manage to slip you out of captivity and into the area outside the military cordon. From there your new instincts lead you to the wide plains and open wilds, where you and your stallions and mares can run wild and free and enjoy yourself properly. Converting those few humans that discover you, and even adding some regular horses to your wandering herd, you find yourself loving the freedom of your new life, almost as much as the near constant attention from all the handsome stallions...";
			else:
				say "     When the military arrive, you are more than ready to leave the city behind, and the stables with the stablemaster to them. And go with them quietly to their camp to be evaluated for release. With your charisma and mesmeric abilities however, such evaluation obviously goes the way you want, and it isn't long before you are released as harmless and noninfectious not that you actually are either of those things. You find yourself grinning though as you quickly go about wandering in some of the shadier areas of the city and collecting the people you will need to build your own stable and harem here in the city. Let the old stablemaster have his run down hotel, you have much, much bigger plans for yourself, and you are more than eager to get started on making a much larger, fancier, and above all, more comfortable place for yourself...";

Nightmare ends here.
