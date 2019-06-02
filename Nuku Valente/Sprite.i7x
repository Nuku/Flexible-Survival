Version 2 of Sprite by Nuku Valente begins here.
[ Version 2.1 - Relocated to Urban Forest area. ]

"Adds a Sprite to Flexible Survival's Wandering Monsters table, with impreg chance"

Section 0 - Flags and Tags

Section 1 - Creature Responses

Spritedefeat is a number that varies.
Spriteconsent is a number that varies.

to say spritedesc:
	setmongender 14; [creatures are female]
	if violinspritefight is true:
		say "     Swirling around you is a buzzing, flitting mob of naked, elfin females. The tallest of them is two feet tall, many are less. They swarm about you with loud excited giggles and the buzz of their dragonfly wings. They jeer at you for disturbing them, but also seem quite pleased to have had someone to play with stumble into their midst.";
	else:
		say "     A faint sparkling from between the trees catches your eyes. As you turn to look for it, you see it off to the side of you now and high up. Turning again, you hear a high-pitched giggle and another flitter of motion behind you. All of a sudden as you spin around, you are swarmed by a buzzing, flitting mob of naked, elfin females. The tallest of them is two feet tall, many are less. They swarm about you with loud excited giggles and the buzz of their dragonfly wings.";


to say Sprite attack:
	if fightstatus is 3, now fightstatus is 2;
	if HP of Player > 0:
		say "Noticing that you've stopped resisting their efforts, the swarm gives a collective 'YAY!' and dances around you in an ecstatic dance of welcoming before they buzz in all the closer, getting to work.";
		now Spriteconsent is 1;
		wait for any key;
	if a random chance of 1 in 2 succeeds and player is female:
		say "You look down to see [(Cunt Depth of Player divided by 4) plus one] sprites working their way into you, one after the other. Despite their forms, they slip in smoothly, wings buzzing inside of you, exciting your tunnel and clit and sensing pleasure pulsing through your form as they slowly penetrate with their tiny forms, making their way towards your waiting womb.[impregchance]";
		wait for any key;
	else if Player is mpreg_ok and Cunt Count of Player is 0 and a random chance of 1 in 2 succeeds:
		say "One of the sprites caresses your rear, nuzzling and kissing at it. 'Mmm... there's something special about this spritely boy, girls. There's a nice, warm womb in him,' she giggles. That said, she starts rubbing at your back passage, working your anus open. You moan softly as she starts squirming her way inside. She's followed by [if scalevalue of Player is 1]another[else][scalevalue of Player]others[end if]. They slip in smoothly, wings buzzing[if Player is male] and fluttering against your prostate[end if] as they slowly penetrate with their tiny forms, making their way towards your waiting womb.[mimpregchance]";
	if a random chance of 1 in 2 succeeds:
		say "Your body is swarmed with the cloud, lifted up into the air and caressed from all sides. It's like sleeping on a cloud as they hold you up with hundreds of tiny hands while another hundred work on rubbing your every erogenous zone in alternating waves that has you paralyzed with pleasure.";
		wait for any key;
	if a random chance of 1 in 2 succeeds and player is male:
		if Cock Length of Player > 12:
			say "Your mammoth cock draws the interest of the cloud as they swarm over it, coating its length in buzzing, rubbing, forms. At the very end of it, they rub their cunts across your head and cum slit, moaning loudly as they work as if eager to somehow bare your child despite the wild size difference.";
			if Cock Count of Player > 1:
				say "Your other male meat gets assaulted in kind, each becoming lost under a blanket of excited sprites. Your [Ball Size Adjective of Player] balls are tingling with the need to cum, and you cannot muster the urge to hold back anymore, spraying down, and filling up, dozens of the sprites at a time.";
		else:
			say "One of the largest sprites there descends in front of you with a disturbing smile, 'You will make such a pretty sprite,' she says as she grabs your [Cock of Player] cock and strokes it slowly, 'But before then, I don't plan to let this go to waste...'";
			wait for any key;
			say "She guides your cock to her hairless entrance and thrusts her hips forward, taking you deeply even as you spread her quite wide on your tool. She squeals and shudders around you, working herself deeper and deeper until you are hilted in her willing form, like a tiny hot vice that ripples and pulls at your cock urgently.";
			if Cock Count of Player > 1:
				say "Your extra manliness gets trapped between her and you, her small hands grabbing and jerking at them in wanton abandon as she rocks her hips up and down along your thick, virile, pole. It all becomes too much with all of them being stimulated and you make her swell powerfully with your climax, the excess seed gushing out between her thighs even as you spray wildly over her and the rest of the swarm.";
			wait for any key;
		say "The swarm stays close to you, tickling, rubbing, and sucking at you until you are ready to collapse in a nerveless pile of sated flesh. Sensing your fatigue, they heft you up and carry you back to a safe place, setting you down carefully before flittering off on the breeze in a mass of giggles.";
		wait for any key;

[ [Sprite loss] ]
To say Sprite loss:
	if zephyrtask is 3, increase zephyrpests by 1;
	if fightstatus is 3, now fightstatus is 1;
	say "The sprites disperse in an unhappy cloud of defeated fae kind, taking off in all directions.";
	if (Libido of Player > 50 or humanity of Player < 30) and player is male:
		say "The horde of sprites scatters, all trying to flee. Not wanting to waste such an opportunity, you grab some of the slower or more disoriented ones and trap them in your backpack. After finding a nice quiet alley where no one will walk in on you, you crack the zipper on your backpack and peer inside. You managed to catch several of the winged women, and can think of quite a few things to do with them.";
		say "You strip off your clothes, revealing your throbbing [cock size desc of Player] [Cock of Player] dick. You peer back into your pack, and catch three of the fairy-like creatures, putting the fearful women in a separate pouch. You address the rest, 'Now I'm going to let you out, but your friends don't go free until you finish the job.'";
		say "With the bag opened, the captured sprites fly out and circle around you. They coax you to sit on a nearby crate, spreading your legs for easier access to your [Cock of Player] shaft. Their wings tease your erect phallus as they flit around, examining your groin before getting to work. They start licking at you as they dart around your cock, leaving thin trails of saliva up and down your shaft. The largest one licks at your tip and giggles as you twitch and start to moan from their attentions. She manages to take your whole tip into her mouth and begins massaging your glans with rolling movements of her tongue. Others hold on to your shaft and start flapping their wings rapidly. It feels like your cock is covered in a bunch of vibrators. [if Ball Size of Player > 0]The last two tend to your [Ball Size Adjective of Player] balls, licking and buzzing until you are lost in a haze of pleasure. [end if]After what feels like an hour, but was really only a few minutes, you can't take any more. You climax, covering the largest sprite from head to toe in your seed.";
		say "After you recover, you open your pack and release the still-trapped sprites. One of the smaller fairies flies up to your ear as the rest fly away. 'If that was all you wanted, why didn't you just ask?' She circles your head once more before flying off.";
	else if (Libido of Player > 50 or humanity of Player < 30) and player is female:
		say "The horde of sprites scatters, all trying to flee. Not wanting to waste such an opportunity, you grab some of the slower or more disoriented ones and trap them in your backpack. After finding a nice quiet alley where no one will walk in on you, you crack the zipper on your backpack and peer inside. You managed to catch several of the winged women, and can think of quite a few things to do with them.";
		say "You strip off your clothes, revealing your [breast size desc of Player] chest and aching pussy. You peer back into your pack, and catch three of the fairy-like creatures, putting the fearful women in a separate pouch. You address the rest, 'Now I'm going to let you out, but your friends don't go free until you finish the job.'";
		say "With the bag opened, the captured sprites fly out and circle around you. They coax you to sit on a nearby crate, spreading your legs for easier access to your [CockName of Player] [cunt size desc of Player]pussy. They flit around you, their wings teasing all your most sensitive places. As you lean against the wall behind you, the group of sprites gather at your [breast size desc of Player] breasts. They caress your soft flesh, massaging your bosom, tickling you with their wings, and teasing your nipples with their little tongues. The largest is able take your whole nipple in her mouth, and she sucks on it enthusiastically. As they pass from one breast to the next, one stays to tend to each breast. The rest continue teasing their way down your chest until they reach your dripping honey pot.";
		say "They pass it by without pause, leaving you hot and breathing heavily in anticipation. They start down at your feet, tickling and massaging them in turn. The work their way up your calves, and stop at your thighs. The sprites squeeze and caress and tickle your inner thighs, getting maddeningly close to the aching need between your legs.";
		say "Finally, they turn their attention to your sopping wet pussy. They lick and stroke and tickle at you. One takes your clit into her mouth and sucks on it rigorously, driving you to your peak. Just as you are about to climax they stop once again. You look down at them questioningly through your lusty haze just in time to see one fly headfirst into your pussy. Stars explode into your vision as you finally climax with the sprite wiggling inside you. The other sprites start licking and stroking your cunt and massaging your breasts with their friend still squirming inside you. They make you cum and again and again in quick succession until your vision soon goes dark.";
		say "You wake up some time later in a puddle of your own sweet love juices. The sprites are nowhere to be seen. You look for your backpack and see it lies open. Free sprites must have released the others after you passed out. You look around for your clothes and get dressed, still a bit dazed from your incredible time with the little fairies.";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
	add "City Sprite" to infections of HumanList;
	add "City Sprite" to infections of MythologicalList;
	add "City Sprite" to infections of FemaleList;
	add "City Sprite" to infections of BipedalList;
	add "City Sprite" to infections of FlightList;
	now Name entry is "City Sprite"; [Name of your new Monster]
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]The swarm of sprites rushes over you, tickling at your sides in a maddening onslaught of the senses, leaving you giggling.[or][if Player is male]A sprite zips between your thighs and grabs at your [Cock of Player] organ, tickling at the very tip of it with her wings as she holds on tight.[else]The sprites focus on your chest, licking and rubbing against you in an excited swarm![end if][or][if Player is female and Cunt Depth of Player > 5]With a sudden wet noise, you feel your vulva spread apart as a sprite flies up into you with astounding accuracy. She begins to wriggle in deeper, lost to sight, but certainly not to your slick tunnel which spasms in forced delight[else]The sprites get a sudden violent fit, grabbing tiny pebbles and rocks and pelting you with them in a hail of tiny debris[end if].[at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "[Sprite loss]"; [ Text or say command used when Monster is defeated.]
	now victory entry is "[Sprite attack]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "[spritedesc]"; [ Description of the creature when you encounter it.]
	now face entry is "exceptionally cute and young human female, with elfin ears at either side of your head"; [ Face description, format as "Your face is (your text)."]
	now body entry is "largely human, if not for the great set of dragonfly wings that rest on your back, with blackened flesh and clear for most of their length. Your form is also quite short and feminine"; [ Body Description, format as "Your Body is (your text)"]
	now skin entry is "flawless human"; [ skin Description, format as "You have (your text) skin"]
	now tail entry is ""; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "[one of]human[or]uncut[at random]"; [ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "your ears become long and elfin. As the changes progress, your face becomes pudgy and youthful, you could almost pass for human"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "you shrink dramatically and swiftly. Your form becomes more female looking as curves develop. Behind you, dragonfly like wings extend outwards, buzzing excitedly for a moment before folding neatly against your reduced form"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "it becomes soft and supple, perfect human flesh"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "your rump becomes round and grabbable"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it becomes human like, uncut and dangling between your thighs"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 8;
	now dex entry is 18;
	now sta entry is 10;
	now per entry is 16;
	now int entry is 12;
	now cha entry is 18;
	now sex entry is "Female"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 26;
	now lev entry is 2; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 5; [Amount of Damage monster Does when attacking.]
	now area entry is "Forest"; [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 0; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 8; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 2; [ Size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	now Nipple Count entry is 2; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 2; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 6; [ Length of female sex infection will attempt to give you. ]
	now Cunt Tightness entry is 4; [ Width of female sex infection will try and give you ]
	now libido entry is 40; [ Amount player Libido will go up if defeated ]
	now loot entry is "fairy dust";
	now lootchance entry is 33; [ Chance of loot dropping 0-100 ]
	now scale entry is 1; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]elfin[or]petite[or]winged[at random]";
	now type entry is "[one of]sprite[or]faerie[at random]";
	now magic entry is false;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own] [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
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



Section 3 - Fairy Dust

Table of Game Objects (continued)
name	desc	weight	object
"fairy dust"	"A sweet smelling powder that glistens in the light."	0	fairy dust

fairy dust is a grab object. It is a part of the player. fairy dust is infectious. The strain of fairy dust is "City Sprite".

The usedesc of fairy dust is "[tastefairydust]";

to say tastefairydust:
	say "     Looking at the sparkling powder, you dab your finger into it and give it a taste. It is quite sweet on your tongue, though it also carries a faintly feminine flavor as well. As you sample more of it, there's a growing tingling sensation on your tongue and you feel a little lighter on your feet.";
	increase Libido of Player by 8;

the scent of fairy dust is "Taking a careful sniff of the powder, you catch a faintly feminine scent coming from it.".


Section 4 - Endings

when play ends:
	if BodyName of Player is "City Sprite":
		if humanity of Player < 10:
			if Spriteconsent is 1:
				say "You feel everything getting smaller around you as you lose mass rapidly. The extra flesh is burned away in bright rainbow lights. Perhaps it is this light that guides the swarm of sprites to find you so quickly. They hug and kiss at you, welcoming you into their swarm. You follow them away from the city. The forest where you all eventually settle earns a reputation for being haunted, but, oddly, hikers still come regularly to visit you and the swarm.";
			else:
				say "Your memories of your old life begin to fade away and you take off in a sudden buzz, flying around the city in search of... something, but you never quite find it. It's quite a surprise when a net falls down on you a few days later and you're hauled out of the city. Your captor proves to be reasonably kind, but never treats you as more than an interesting and delicate-looking animal, despite your protests.";
		else:
			if Spriteconsent is 1:
				say "Great glows of bright colors emanate off your body as you begin to shrink down. The sprite cloud arrives moments later, trying to lead you away. Your mind still sharp, you give another idea. They seem confused at your idea, and the leader steps forward to challenge her. Rather than fight her, you grab her up in a fierce kiss, hands wandering over her back and buttocks.[line break][line break]When the kiss parts, she agrees to your terms, and you guide the sprites to a city, becoming a source of mystery and predating on the people there who need it most. Lonely Friday nights are a thing of the past.";
			else:
				say "You are picked up by the rescuers just moments before you start to shrink down the rest of the way to Sprite size. You have a hard time getting a job being so small, at least until that advertising firm found you. You did quite well as a model, where scale meant a lot less. Besides, how could Sprite resist using you?";


[ Edit this to have the correct name as well]
Sprite ends here.
