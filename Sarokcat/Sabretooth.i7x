Version 1 of Sabretooth by Sarokcat begins here.
[ Version 1.1 - Added an M/M player loss scene ]

"Adds a Sabretooth to Flexible Survival's Wandering Monsters table, with impreg chance"

Section 1 - Creature Responses

to say Sabretooth wins:
	project figure of Sabretooth_hard_icon;
	if Player is herm:
		say "     The large cat roars in victory as you fall before its prehistoric might, its large teeth flashing as it draws close to you, its nose twitching as it runs its muzzle over your body, inhaling your scent. The beast seems confused by what it smells as it lowers its head down to your crotch, growling in displeasure as it spots your male organs, before letting out a rumbling purr as it finds your female sex underneath which is already growing wet due to his masculine musk covering the area. The beast lifts one of its large paws, and bats your trembling form several times until you roll over on your stomach, seemingly satisfied when it can no longer see your maleness. You find yourself trembling in both excitement and fear as the beast moves over your prone form, his large fangs rubbing across the back of your neck as he moves over your body, making soft rumbling noises as he rubs up against you. Soon you find yourself relaxing, and your rear rising up almost instinctively as you brace yourself on your hands and knees, the beast rumbles again in encouragement as he rewards your submission by lightly gripping your neck in his huge jaws, his sharp teeth rubbing up against your flesh as he probes at your female passage with his cock.";
		say "     You gasp in pleasure as his cock finds its way into your body, your own cock stiffening as well in excitement as he begins to rub himself up against you, his hips twitching and sending waves of pleasure through your body as his cock moves within your need filled body. You moan out loud as your eyes close in pleasure, the big cat rewarding your surrender with all the pleasure one of the earliest predators can give, using your body like you were another cat, as you writhe underneath him on all fours. Your cock stiffens and surges with each thrust as you find yourself thinking about his wonderful positioning, and finding females to position you under you and fill with your cock much like the beast above you is filling you up. The very idea seems to speak to something primal the beast seems to be awakening within you, and you find yourself acting more and more like an animal as the beast mates you with swift pleasurable strokes. Finally the beasts mouth loosens its grip on your neck, as his body tenses above you, and a loud roar fills your ears as his cock shoots its seed into your body. You find yourself crying out as well, your voice mingling with the feline beasts as your orgasm rips through your body, and you spill your seed out onto the ground beneath you even as his seed fills your quivering pussy, flooding your womb with its fertile sperm, while you pant underneath it and dream of doing the same to another unsuspecting target. The moment is soon broken as the beast quickly pulls out of you, letting you collapse on the ground in the puddle of seed you made, as it takes a moment to lick itself clean, before heading back off down the museum hallways.";
		CreatureSexAftermath "Player" receives "PussyFuck" from "Sabretooth";
	else if Player is female:
		say "     The large beast seems to grin as it knocks you down again, its large muzzle pulling back to reveal all its sharp teeth as it lowers its head down to sniff at your defeated form. The beast seems to like what it finds as it sniffs at your crotch, licking your exposed female sex several times with its large rough tongue and making you groan as pleasure shoots through you. The beast seems to take that as an invitation as he moves up over your body, his muzzle sniffing your body as it traces up your stomach and across your breasts, pausing to give your sensitive nipples several licks as well. You find yourself growing excited as the beast moves over your body, and looking down you can see his erect barbed cock emerging from his sheath as he crouches his hindquarters down so it can probe at your female entrance. You find yourself gasping as you are pinned under his feral form as the sabretooth inserts his cock into your body, your breasts and front rubbing up against the beasts soft underbelly as he thrusts into you in sharp short strokes, the barbs tugging at your passage with each stroke and making the experience even more intense. You moan and your hands grip at the beasts fur as your body responds to the beast, your nose filling with its strong prehistoric musk as it moves within you. Before you know it you are orgasming helplessly underneath the beast, while it roars its triumph to the empty halls of the museum as it shoots its seed into your body. You end up gasping, as after the large cat fills you with its seed, it quickly withdraws, its cock making your body tingle as it pulls it out of your well used passage, and steps back panting from the exertion, its eyes wander over your spent form before the large beast turns and continues its search through the halls for more mates...";
		CreatureSexAftermath "Player" receives "PussyFuck" from "Sabretooth";
	else if Player is male and anallevel > 1 and a random chance of anallevel in 5 succeeds:
		say "     The prehistoric feline growls angrily at you and knocks you down with a heavy paw, displeased about finding another male in its territory. It roars its dominance and leaps atop you, large fangs flashing white as it brings its muzzle near your neck. You cannot contain a shiver of fear as those ivory lances near your throat. It's only when another hard spike of his lances into your ass that you realize too late the feline's true intent. Burying his feline member in your tight hole, he gives a growling chuff and starts thrusting, fucking your ass in a lustful display of feral dominance.";
		say "     After the initial shock and pain has passed, the rough buggering becomes increasingly pleasurable, though you cannot take your eyes off those vicious teeth of his right beside your head. As if smelling your fear, the beast keeps makes a threatening show of licking his chops and dragging his rough tongue across those white daggers. And so with no other choice, you must accept the rough fucking as the prehistoric cat reinforces his dominance over this would-be intruder into his territory. And when he's finished and blasted his creamy load into your abused hole, he pulls out as roughly as he entered and drives you off with a few growling snaps of his jaws, the feline's cum leaking from your thoroughly fucked ass.";
		CreatureSexAftermath "Player" receives "AssFuck" from "Sabretooth";
	else:
		say "     The large beast seems proud of his victory over another male in his territory, and roars out his dominance for the rest of the museum to hear. He then focuses on you, using his large paws to bat you around like a toy for a minute, before turning around and leaving to seek a more suitable mate. You can't help but feel slightly lucky to have survived the encounter, as you carefully crawl away.";
	infect "Sabretooth";


To say Sabretooth loses:
	project figure of Sabretooth_soft_icon;
	say "The large prehistoric beast falls back from your forceful assault, slowly backing down the museum corridors as you watch it warily, until it turns and darts down a side passageway. You relax as the creature has obviously gone off somewhere to lick its wounds, and revel in your victory over one of the greatest large predators of the past.'";

to say Sabretooth Desc:
	setmongender 3;
	project figure of Sabretooth_soft_icon;
	say "     You hear something softly moving behind you, and turn around to see a large sabre-toothed cat slowly stalking down the halls toward you on its wide paws. Its large feral body covered in golden striped fur as it draws closer, though you find your eyes locked to its more intimidating large teeth, as the large cat's muscles tense, and it pounces at you!";

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Sabretooth"; [name of the overall species of the infection, used for children, ...]
	add "Sabretooth" to infections of FelineList;
	add "Sabretooth" to infections of FurryList;
	add "Sabretooth" to infections of FeralList;
	add "Sabretooth" to infections of HistoricalList;
	add "Sabretooth" to infections of NatureList;
	add "Sabretooth" to infections of FemaleList;
	add "Sabretooth" to infections of BarbedCockList;
	add "Sabretooth" to infections of SheathedCockList;
	add "Sabretooth" to infections of QuadrupedalList;
	add "Sabretooth" to infections of TailList;
	now Name entry is "Sabretooth";
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]The large cat pounces at you, his large form knocking you back as he rams into you.[or]The large beast snaps its teeth at you, its signature fangs leaving bloody wounds in your side.[or]The sabretooth bats at you with one of its large paws.[or]The prehistoric cat launches itself up on its hind legs, as its front paws bat at your head.[or]The beast bounds towards you, its large body twisting and pressing on you as it tries to wrestle you to the ground.[or]You gasp in surprise as the beast turns and sprays the area with its scent, the male musk filling your open mouth and making your body twitch in response.[or]The large cat pauses for a moment, its feline eyes catching your own as you find yourself locked into a staring contest with the large beast, after several seconds you find your mind growing slightly duller, as your eyes are forced downward under the dominant cat's gaze.[at random]";
	now defeated entry is "[Sabretooth loses]";
	now victory entry is "[Sabretooth wins]";
	now desc entry is "[Sabretooth Desc]";
	now face entry is "that of a large cat. The two large fangs extending from your jaws, however, mark your face as that of one of the most deadly prehistoric hunters, a sabretooth's"; [ Face description, format as "Your face is (your text)."]
	now body entry is "long, large and powerfully muscled. You find yourself resting easily on four large feline paws, each toe equipped with a sharp claw, your changed body feeling comfortable in its new quadrupedal stance. Your neck muscles have shifted along with the rest of your body, allowing your head to face forward properly on its new, fully feline form, the figure of one of the most powerful and dangerous predators of the prehistoric era"; [ Body Description, format as "Your Body is (your text)"]
	now skin entry is "[one of]golden furred[or]feline[or]softly furred[or]golden striped[or]thick, golden furred[at random]"; [ skin Description, format as "Looking at yourself, your body is covered in (your text) skin"]
	now tail entry is "You have a long feline tail, slowly lashing behind your tightly muscled hindquarters, its feline length seeming to sway softly in an invitation to anyone passing behind you."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "[one of]feline[or]bestial[or]Sabretooth[or]barbed[at random]"; [ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "Your face seems to tingle and go numb, as several bones your face crack and begin to reshape themselves, your mouth pushing forward as your jaws change and fill with sharp feline teeth, your nose seeming to flatten out and merge into your newly forming muzzle. Your vision seems to blur as your eyes shift position on your head slightly, while your ears seem to move back to the rear of your head, even as they shift into a more rounded feline shape. Your vision sharpens again, and you find yourself staring out at the world from above a predatory feline muzzle, your head already coming to resemble that of a large cat. You find your new muzzle stretching out in a powerful yawn, as the two distinctive large fangs of a sabretooth begin to grow downwards from your jaw, until finally you snap your jaw closed, and you run your new feline tongue over your new teeth a few times as you get used to your new fully changed face"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "your muscles shift and rearrange themselves, you find yourself falling forward and catch yourself with your hands, as your legs shift and change into a fully digitigrade stance. You try to stand erect for a second, only to fall back down again onto your changing hands, your fingers drawing back up into proper paws, barely able to grip anything as they like your new hindpaws become more suited to a true four legged stance. You find yourself gasping as you look down your new longer, and larger feline body, as the muscles finish settling into a more powerful arrangement more suited for the body of the prehistoric cat you now possess"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "it is covered in soft golden fur, the thick shaggy fur slowly covering your entire body, as soft striped patterns of a lighter golden color begin to appear throughout the new coat of fur"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "a long feline tail stretches out from your rear, your ass changing and tightening with feline muscles as your tail finishes growing out to lash slowly behind you"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it stiffens, growing hard even as it seems to take on a more pointed form, soft barbs covering the tip as it pulls up into a newly formed feline sheath"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 20;
	now dex entry is 20;
	now sta entry is 20;
	now per entry is 16;
	now int entry is 8;
	now cha entry is 14;
	now sex entry is "Female";  [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 60;
	now lev entry is 8;  [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 11;  [ Amount of Damage monster Does when attacking. ]
	now area entry is "Museum";  [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 0;  [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 0;  [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 0;  [ Size of balls ]
	now Nipple Count entry is 6;  [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 2;  [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0;  [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1;  [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 12;
	now Cunt Tightness entry is 4;
	now SeductionImmune entry is false;
	now libido entry is 30;  [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is "Chipped tooth";  [ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 40;  [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 4;  [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]animalistic[or]powerful[or]quadrupedal[at random]";
	now type entry is "[one of]feline[or]prehistoric[at random]";  [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
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


Section 3 - Chipped Tooth

Table of Game Objects (continued)
name	desc	weight	object
"Chipped tooth"	"A rather large chipped piece of tooth, obviously knocked off of something with tremendous fangs"	1	Chipped tooth

Chipped tooth is a grab object. Understand "tooth" and "chipped" as Chipped tooth. Chipped tooth is infectious. Strain of Chipped tooth is "Sabretooth".

Usedesc of Chipped tooth is "Looking at the small chipped piece of tooth, you find yourself rubbing it between your hands slightly, enjoying the feel of its strange texture. Suddenly, you let out a small yelp as the sharp part of the tooth cuts you, and you drop the piece of tooth as you rub the small cut. Looking around, you can't see where the bit of tooth ended up, and sigh as you give up on your trophy and continue on your way.".

instead of sniffing Chipped tooth:
	say "The large fang somehow smells quite old despite looking rather new.";


Section 4 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Sabretooth Infection"	"Infection"	""	Sabretooth Infection rule	1000	false

This is the Sabretooth Infection rule:
	if Player has a body of "Sabretooth":
		trigger ending "Sabretooth Infection"; [Here it states, that the ending has been played.]
		if humanity of Player < 10:
			if Player is male:
				if Player is female:
					say "     Finally surrendering to the base desires and the strong need building within you, you find yourself running swiftly on all four paws back to the museum, your feline nose twitching as you follow the tantalizing scent of other cats right to the center of their den. You are so intent on your hunt for the source of that smell, you don't realize just how close you are until you hear a soft growl, and glance up to see that you are surrounded by a small ring of large sabretooth males. Your body stiffens at all the other males surrounding you, and you prepare to fight for dominance, only to have your body clench and twitch with need as one of the male cats brushes up against you. You turn to the male ready to fight, only to have him back off as a different male sticks his nose under your tail and licks your damp sex. Your eyes close as you moan in pleasure at the feel of his rough tongue on your damp lips, only to snap open again as you can feel his paws gripping your sides as he tries to mount you! You quickly throw the cat off as you whip around to face the obviously amorous beast growling at him to show your dominance, only to find another cat taking advantage of your open rear by once more licking your feline sex. You groan as you stare around the room, your male instincts fighting with your female instincts as you realize you are the only cat in the room with a proper pussy, and that you are almost certainly not getting out of here without it being well used by several male cats.";
					say "     Something inside of you snaps as you whip around and bat at the cat teasing you from behind, and you snarl at all the other cats around, challenging them to prove their dominance over you. Soon several cats take you up on the challenge, pouncing on you and trying to pin you down as you struggle and swipe at them, your efforts only making the large male beasts more excited. Soon though, one of the large cats manages to pin you underneath him, and you find yourself going slack as his thick cock plunges into your sex while his teeth grip your neck. Your mind goes blank of anything but pure need as his cock enters you, and you yowl and submit to his dominance like a proper female, your heat-filled body writhing with pleasure as it prepares itself for his seed. The male mates you roughly, and though you love the new feelings of his seed in your sex, you still put up a fight as the next male steps up for a chance at you, each of the beasts having to fight to prove his dominance before you will submit to them.";
					say "     Some of them fail, and you eagerly mount them instead, enjoying the feel of your cock sinking into their bodies, much to your surprise you find several of their bodies changing underneath you, becoming female as well as male as you thrust into them. Soon the battle for these new partial females begins in earnest and you grin as you turn to fend off your next suitor, as eager to see what he looks like with a pussy as you are to see if he can manage to wrestle you underneath him. You and many of the changed males spend their time in the museum enjoying all the more dominant males, as your belly grows round with their seed, you understand that humans are pressing back into the city, forcing your mates back before their advance, soon though, you think as you rub at your pregnant belly, the humans will have to contend with the next generation of Sabretooth cats, and then the generation after that. A grin spreading across your muzzle at the thought of, your offspring which are bred from only the strongest of male cats, who are sure to turn the tide, and convert the weak little humans into more big strong cats to breed with... Soon the humans will be the ones in danger of extinction you think with a purr, instead of the proud and strong sabretooth.";
				else:
					say "     Finally giving in to your baser urges, you begin to prowl the streets of the city looking for female cats to mate, or failing that weak humans to turn into little pussies for your enjoyment. Occasionally you encounter other male sabretooths with the same goal in mind, and a fight usually ensues over dominance and territory, long teeth snapping as you try to force the other males to submit. Sometimes you win and mount the other male to assert your dominance, other times you lose and it is their sharp teeth gripping your neck as they force you down and fuck you. Still the shortage of females is a problem as you stalk the mostly empty city, more and more often hunting with the other large prehistoric cats now as your desperation grows, instead of fighting them. Eventually your hunts begin to bear fruit as the military presses into the city, and while you quickly learn that their guns can drive back and hurt one of you, a pair or more working in tandem can take entire squads with relative easy. Soon you are converting the new military invaders into large predatory beasts much like you, and while the majority are male, and soon put into their place underneath the older and more experienced cats, the occasional female does manage to get changed as well. You and many of the other males soon squabble over the right to breed the new females, and the females have soon acquired their own private harem of male cats, and seem to enjoy their new form, and the large cats fighting over them, and they definitely come to love crouching down before the winners to be bred. Unable to counter the ever larger number of powerful hunting cats in the city, all desperate for fresh humans to turn into potential mates, the military ends up withdrawing, though you and several other hunting groups follow. You raid their camps at night, transforming their soldiers, and sabotage their war machines, your numbers growing ever larger, as their attempt at containment fails, you and your fellow hunters spread out into the surrounding countryside, a world full of potential mates in front of you, as you see about reestablishing the sabretooth as a major predator in the modern world...";
			else:
				say "     Finally surrendering to the base desires and the strong need building within you, you find yourself running swiftly on all four paws back to the museum, your feline nose twitching as you follow the tantalizing scent of other cats right to the center of their den. You are so intent on your hunt for the source of that smell, you don't realize just how close you are until you hear a soft growl, and glance up to see that you are surrounded by a small ring of large sabretooth males, with more materializing out of the dark hallways as they gather around. You feel nervous at first, as you glance from cat to cat, realizing you appear to be the only female here, then you find yourself moaning in pleasure as several of the large male cats brush up against you, their pink cocks stiffening as they display their obvious interest. Your body clenches in need as you find your eyes fixing upon their large cocks, and you realize that every cat there wants to stick its cock in you and fill you with its fertile seed. Looking around the room at all the male cats, their eyes fixed on you as they begin to tease and court you, you realize that your body can't wait for them all to stick their cocks in you either, and you yowl with need as they draw closer.";
				say "     The large cats don't need much encouragement either, and almost as soon as you crouch down and expose your needy sex to them, one of the large beasts is filling your body with its wonderful cock as its sharp teeth grip your neck tightly. You find yourself panting in pleasure as the other cats gather around, and as soon as your first mate shoots his seed into you, another is there and ready to take his place. After several more delicious matings, you look around the room at the many cats still waiting for their turn, and staring into their intent feline faces, you realize that for many of these cats it has been thousands of years or more since they actually managed to get laid, and you find your feline mouth stretching wide in a grin even as a new partner mounts you, reveling in the fact that your new feline form is so perfectly suited to help all these handsome male cats out with their pent up needs, and looking forward to all the many breedings it will take to sate all that built up lust. You completely lose track of time and coherent thought as the pride of cats breeds you again and again, lavishing your feline body with attention and filling you with their fertile seed almost every waking moment of the day. Soon your belly is growing nice and round with their sabretooth offspring, and you can't help but hope some of the cubs are female as well, since your lovely males will need lots more female cats if they hope to breed the sabretooth species back from extinction... you purr happily as your next mate steps up to use your body, happy with your role in life as you see to the future of your new species.";
		else:
			if Player is female:
				say "     Rescued from the city with your mind intact, you find you make something of a sensation amongst the military and the scientists who are fascinated by your prehistoric form, and trying to figure out just how you work. Eventually though, as things heat up in the city, and they are forced to acknowledge the fact that you are still a person, they reluctantly let you leave with your changed body to seek employment back out in normal society. You find yourself quickly offered jobs by several museums, as well as a couple zoos, to essentially become a living speaking exhibit for them. Since your new body does need a decent amount of fuel to keep it going, and you don't really have any other prospects, you find yourself agreeing.";
				if a random chance of 1 in 2 succeeds:
					say "     Deciding to take one of the zoos up on their offer, you find yourself rather comfortably placed in a large enclosure next to several of the other species of great cats. You find the life of a zoo cat to actually be rather refreshing and relaxing, especially as you can enjoy the looks on peoples faces when you occasionally are called on to talk about what it is like to be a saber-toothed tiger. After several months though, you find yourself feeling irritable and needy, as your body seems to burn with arousal, several of the zoo people keeping an eye on you seem to have been waiting for this to happen, and before you know it, a large male tiger is being set loose in your enclosure.";
					say "     You find yourself groaning as you realize what is going on, your body responding to the tiger as he approaches, and you realize the zoo has just been waiting for your body to go into heat, so they could include you in their breeding programs. Your instincts are too strong for you to resist however, as soon you are crouching before the large cat, and yowling in pleasure as he fills you with his feline seed again and again. Eventually by the time your heat fades, you have come to realize that you are almost certainly pregnant, and that you just can't wait for the kittens to be born, both to see what the kittens will look like, as well as to bring you that much closer to being bred again. Soon someone from the zoo comes by with some papers to introduce you formally into the breeding program, which you sign absently, intent on the promise of being bred again and again by large cats, and reintroducing the sabretooth cat to the world, one litter at a time.";
				else:
					say "     Deciding to take one of the museums up on their offer, you find that life in the museum is actually rather fun, startling visitors when they arrive and see a fully grown sabretooth tiger, and enjoying escorting tours around the museum, pointing out all the different exhibits while they gawk at your changed body. Your nights are generally spent patrolling the museum to ensure its safety, and napping in a small enclosure they built for you next to the sabretooth tiger exhibit, which the museum expanded greatly when you arrived. Still as time goes on you find yourself staring more and more at all the fake male saberteeth positioned in the museum, and find yourself wondering just what it would be like if they came to life to fuck your willing form again and again.";
					say "     Eventually you find yourself so very hot and needy, that you end up propositioning several handsome zoo visitors, teasing them to stay until the zoo closes, where you can be their little animal. A number of people take you up on your teasing offers, and help to sate your needy body again and again, but it just isn't quite as fulfilling as a real cat would be. Eventually though your nightly efforts bear fruit and you find yourself pregnant, though with no idea just who the father is, or what the cubs will look like. Still you find yourself eagerly anticipating their birth, and look forward to a chance to help reintroduce the great sabretooth back into the modern world.";
			else:
				say "     Rescued from the city with your mind intact, you find you make something of a sensation amongst the military and the scientists who are fascinated by your prehistoric form, and trying to figure out just how you work. Eventually though, as things heat up in the city, and they are forced to acknowledge the fact that you are still a person, they reluctantly let you leave with your changed body to seek employment back out in normal society. You find yourself quickly offered jobs by several museums, as well as a couple zoos, to essentially become a living speaking exhibit for them. Since your new body does need a decent amount of fuel to keep it going, and you don't really have any other prospects, you find yourself agreeing.";
				if a random chance of 1 in 2 succeeds:
					say "     Deciding to take one of the zoos up on their offer, you find yourself rather comfortably placed in a large enclosure next to several of the other species of great cats. You find the life of a zoo cat to actually be rather refreshing and relaxing, especially as you can enjoy the looks on peoples faces when you occasionally are called on to talk about what it is like to be a saber-toothed tiger. After a couple months though, you catch an interesting scent in your enclosure, and turn to find the zoo has let one of the normal tigers into your area. You think about calling someone to protest, but for some reason the tigress just seems to smell so good to your changed body. Before you know it you are over sniffing and rubbing against her striped form, as she moans and turns her back to you, as your cock stiffens you realize that the female is in heat, and the zoo obviously intends for you to breed with the needy animal, and your body seems to agree with them!";
					say "     You try to resist, but your mind clouds more and more with lust as the female animal teases you with her scent, and soon you find yourself mounting her, her sweet passage feeling amazing as it grips your cat cock tight. Soon you find yourself even forgetting why you would want to resist, as the pleasure of fucking the needy tigress fills your mind, and you breed her again and again until you are sure your seed has taken. Eventually the zoo comes by to take her back to her own area, and see how you are doing, and you find yourself responding happily that you are feeling amazing, and end up offering to serve as a sabretooth stud for any of the other large cats that might be receptive. You get the feeling you have played right into the zoos hands, as they mention having already prepared one of the lionesses with several hormone shots to get her ready for you, but the thought of sinking your cock into a lionesses golden flanks is so very tempting that you agree immediately. Eventually signing over all of your rights and the rights to your progeny to the nice zoo, as you enroll fully in their breeding program, and while this makes you little more than property, you are happy as long as you have a nice stream of felines to breed, reintroducing the great sabretooth cat to the world one well-fucked feline at a time.";
				else:
					say "     Deciding to take one of the museums up on their offer, you find that life in the museum is actually rather fun, startling visitors when they arrive and see a fully grown sabretooth tiger, and enjoying escorting tours around the museum, pointing out all the different exhibits while they gawk at your changed body. Your nights are generally spent patrolling the museum to ensure its safety, and napping in a small enclosure they built for you next to the sabretooth tiger exhibit, which the museum expanded greatly when you arrived. Still as time goes on you find yourself staring more and more at all the fake male sabretooth positioned in the museum, and feeling rather lonely. Eventually though you manage to catch a thief as he tries to break into the museum and for amusement you let him get deep into the museum before you begin to stalk him.";
					say "     You enjoy the thrill of the chase through the dim halls, batting the thief this way and that as he tries desperately to escape you, eventually as the chase goes on, you realize the thief is changing more and more with each of your blows. Soon they are running from you on all fours, their clothes discarded piece by piece, as their body shifts, and you find your large mouth grinning as you herd the changing cat down the halls, her scent telling you that she has already abandoned her maleness under your teasing blows, and loving the sight of her growing tail as it lashes behind her as she flees. Soon the chase becomes less about prey trying to escape, but the chase of a new instinct filled female teasing the randy male cat behind her. Guiding the new female back to your den near the cat exhibit, you quickly bring the chase to a close as you pounce on her and pin her new feline form down, sating your need in her heat-filled body while she yowls underneath you.";
					say "     You find your dominance has left your new mate confused and unsure come the morning, and quickly take advantage of this to talk her into staying the day to rest, and that night when she moves to leave you take her body again, finding it all too easy to get her excited and submissive underneath you as she forgets more and more about her life before with each pump of your seed into her body. The museum seems happy to have another cat resting near the enclosure, and you return to your new mate every night, reestablishing your dominance over her form with your mating, and enjoying the sight of her belly growing gravid with your cubs. Soon you start planning for future chases in the museum, and look forward to reintroducing the sabretooth cat to the modern world, one breeding at a time.";

Sabretooth ends here.
