Version 2 of Male Peacock by Guest Writers begins here.
[ Version 1.0 - Original content - Lago Moro                             ]
[ Version 1.1 - Formatting corrections - Stripes                         ]
[ Version 1.2 - New data and alt combat mode - Stripes                   ]
[ Version 1.3 - Improved alt combat mode - Stripes                       ]
[ Version 2.0 - Peacock heat (mating call) - Stripes                     ]
[ Version 2.1 - Updated to extended heat table (no mpreg heat) - Stripes ]
[ Version 2.2 - M/M player loss oral - Stripes                           ]
[ Version 2.3 - M/M player loss anal and form cleanup - Song             ]

"Adds a Male Peacock to Flexible Survival's Wandering Monsters table."


Section 1 - Creature Responses

peacockcontrol is a number that varies.

to say peacockdesc:
	setmongender 3; [creature is male]
	say "     A tall blue bird emerges from an alley. His body is covered in an iridescent coat of blue and green plumage, and he greets you by fanning his eye-spotted tail. From what you can tell, the avian doesn't appear to be aggressive. Maybe you could just relax... and have a friendly chat. After all, his feathers are so entrancingly beautiful... and you want nothing more than to stare into those slowly swaying spots.";
	say "     As your hazy thoughts urge you closer, a sudden cry in the distance snaps you back to reality. Wait, what the hell? You feel like you lost control of your body for a moment. His trap flung, the angered peafowl draws closer with malice in his eyes, ready to seduce you by any means necessary. You'd better end this battle quickly.";
	now peacockcontrol is 0;

to say peacockskin:
	if Cock Length of Player > Cunt Depth of Player:
		say "blue and green feathers covering your";
	else:
		say "brown-hued feathers covering your";

to say peacocktail:
	if Cock Length of Player > Cunt Depth of Player:
		say "You have a beautiful fan of feathers for a tail. The feathers are decorated with hypnotic eyes";
	else:
		say "A feathered tail decorates your rear, like half of a long skirt";

to say peacockasschange:
	if Cock Length of Player > Cunt Depth of Player:
		say "feathers emerge from it. They form a peacock tail that you are able to fan with ease";
	else:
		say "brown feathers emerge from it. They form a tail that comes down to your knees";

to say peacockattack:
	say "[one of]While you are trying to hit the feathered enemy, he trips you! You fall flat to the ground.[or]He pushes you and flees back out of range, laughing.[or]He jumps on your shoulders as you try to grab him, then hops back to the ground. Is he mocking you?[or]The bird flaps a few feet back and fans his tail wide, waving his colorful plumage.[at random]";
	say "You take no damage, but feel your thoughts grow hazier.";
	increase peacockcontrol by a random number between 1 and 5;
	if peacockcontrol > intelligence of Player:
		now fightoutcome is 22;
		lose;

to say peacockvictory:
	now peacockcontrol is 0;
	choose row MonsterID from the Table of Random Critters;
	if Player is female:
		say "     You are unable to think clearly anymore. You find yourself standing up and facing the avian, your thoughts mixed in a blur. He beckons you to follow him, and you have no choice but to walk with him until you arrive at what seems to be a well-maintained apartment. You can think more clearly by now, as if the leash in your brain has been loosened. However, you doubt that you could actually oppose whatever the bird has in mind for you.";
		say "     He motions you towards the bed in the middle of the room. You obediently lie on the mattress while he looks over your [bodydesc of Player] body with unmistakable lust, his tapered cock already poking out of his slit. He slides over your [Skin of Player] body... it feels like a light, warm blanket. His hands explore your every curve, stroking and groping you teasingly. Your thoughts start to drift and grow dull, and when his long, sleek cock sinks into your yearning petals, any will to resist melts away in shuddering waves of pleasure. You give in completely to the alluring peafowl...[fimpregchance]";
		WaitLineBreak;
		say "     After an indeterminate period of time, you find yourself back in the city, no idea how or when. The time you shared with the strange bird is a hazy, yet blissful, blur. You quickly realize that finding him will be practically impossible by now, and you reminiscence about the encounter in an idle daydream. Before you can grow aroused all over again, you shake your head of these lurid thoughts and inspect your body for any changes, a part of you yearning to more closely resemble the sexy peacock who drew you under his spell.";
	else:
		say "     You are unable to think clearly anymore. You find yourself standing up and facing the avian, your thoughts jumbled and unfocused. He beckons you to follow him, and you have no choice but to walk with him into the alleyway.";
		say "     With another flourish of his tail, you drop to your knees in front of him. You can see his growing member emerging from a slit buried in the soft plumage of his crotch. 'I need some relief, so get to it,' he says, rippling those dazzling tailfeathers. Unresisting, you lean in, taking the bird's cock into your mouth. Running your hands over his feathered hips, you work that avian shaft with your lips, tongue, and palate until your efforts are finally rewarded with a hot, sticky mess. The bird groans in orgasmic release as you swallow each pulse, savoring the exotic flavor of his seed.";
		WaitLineBreak;
		if anallevel > 1 and a random chance of 1 in 2 succeeds: [EXTRA ANAL]
			say "     Once drained, the peacock's shaft withdraws, and he gently tilts your head up to look at him and his colorful tail. He gives it a mesmerizing wave, and your mind rapidly drifts away. Enthralled by his enticing display, you don't protest when the presumably spent peafowl guides you up on unsteady footing, his scaly arms steadying your ascent. 'You thought that we were finished?' he enquires teasingly, making your knees tremble as you try to parse the meaning of his words in your sex- and hypnosis-induced haze. Chuckling softly, the resplendent bird guides you up against the coarse brick of the wall, using one of his taloned feet to spread your legs apart.";
			say "     A moan spills past your lips as the handsome male begins to undress you, pulling down any clothes or equipment obscuring your lower half. You bury your face against the dirty red brick, your eyes fluttering closed. His talon-tipped hands glide over the curve of your rear, taking a moment to admire what's rightfully his. 'Such a fine piece of ass,' the fowl whispers into your ear, curling his thumbs to pry the dark cleft apart. The cool air of your exposure draws a shiver of delight, and you push your rear back with mounting excitement, steeling yourself for the mind-melting pleasure your experienced partner is sure to provide.";
			WaitLineBreak;
			say "     You feel the warm, stiff contact of his shaft against your bottom, the long and tapered organ smearing his fluids over your yearning flesh. You sigh out with pleasure as his tip teases your star, gently encircling it and lubricating your rim. By the time he pushes his wonderful rod inside of your rear, you can think of nothing but the immense pleasure of giving yourself over to this sexy, assertive bird and the bestial length spearing you open, pushing all the way to the hilt inside of your gripping asshole. Your entire body grows tense with arousal as you're enveloped in his lustrous feathers, metallic hues cradling your back and sides as he begins to pound into you.";
			say "     The peafowl takes several slow, deep strokes to ensure his spoils['] comfort, allowing your rear to grow accustomed to the long, hard presence spreading and dragging through your bowels. The heat of his body against you and the scent of your mutual arousal further mires your thoughts in the simple bliss of submission, your moans growing ragged as he rams himself within you. As his pace increases, [if Player is male]your length[smn] begin[smv] to bob and twitch, milking strained spurts of pre each time his pulsing spire grinds against your prostate[else]so does your sexless pleasure of being dominated by such a powerful male, the heat of friction leaving every nerve in your sensitive lining alight[end if]. Without thinking, you begin to join in his rising song of courtship, announcing your bliss with animalistic cries of pleasure as he pistons his length into your well-stretched hole.";
			WaitLineBreak;
			say "     After what feels like hours of being fucked by the tireless peacock, he finally hilts himself inside of you one last time and goes rigid in the throes of a powerful climax. Spurt after spurt of his hot, sticky seed paint your bowels in his essence, the tainted fluid splattering across your lining and filling you with a strange, intoxicating warmth. You feel yourself sagging weakly[if Player is male], even as you reach your own shuddering climax that wastes your lesser cum across the coarse brick before you[else] against the wall, savoring the feeling of his cum deep inside of you[end if]. Exhausted but awash in blissful tingles, you turn your neck to kiss your feathery stud, parting his beak to play with his tongue while you bask in his confident presence.[mimpregchance]";
			say "     Spent and satisfied, you feel any remaining tension in your body drain from you in time with the fowl's withdrawal, a cascade of warm cream flowing from your thighs and marring your legs in his essence. You cherish the feeling of what does stay within, pursing your slightly gaping rim to seal in your lover's thick, musky tribute. But as you turn back to face him, the peacock's feathers begin to shift and sway, drawing your gaze back to those mesmerizing eyes. In a matter of moments, the sweet embrace of sleep envelops your conscious mind, and just like that, you lapse into a deep and satisfying slumber.";
			WaitLineBreak;
			say "     When you awaken, you find yourself in the same alleyway, retaining no memories of how you got there, nor the encounter itself. All you can feel is the by-now diffused warmth of his avian seed inside of you, infecting your form from within. You shudder with a mix of revulsion and lingering arousal, somehow wishing that you could remember the details of your ravishing.";
		else: [STANDARD]
			say "     Once drained, the peacock's shaft withdraws, and he gently tilts your head up to look at him and his colorful tail. He gives it a mesmerizing wave, and your mind rapidly drifts away. 'It will be better for both of us if you don't remember this... Forget... Forget...' he says softly. You start to feel sleepy as you stare into the swaying spots, and you soon slump over, passing out. When you awaken, you find yourself in an alleyway with no memories of how you got there, the encounter completely forgotten.";
		decrease XP of Player by lev entry / 2; [no XP from forgotten encounter]
		if ktspeciesbonus > 0, decrease the XP of the player by 1;
		if Player is submissive and HP of Player > 0, decrease the XP of the player by ( ( 2 + lev entry ) / 5 );


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Peacock"; [name of the overall species of the infection, used for children, ...]
	add "Peacock" to infections of AvianList;
	add "Peacock" to infections of FurryList;
	add "Peacock" to infections of NatureList;
	add "Peacock" to infections of MaleList;
	add "Peacock" to infections of TaperedCockList;
	add "Peacock" to infections of InternalCockList;
	add "Peacock" to infections of BipedalList;
	add "Peacock" to infections of TailList;
	now Name entry is "Peacock";
	now enemy title entry is ""; [name of the encountered creature at combat start - "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[peacockattack]";
	now defeated entry is "The last hit knocks the blue bird on the ground. He stands up quickly and flees in a panic, his pride completely shattered."; [ Text or say command used when Monster is defeated.]
	now victory entry is "[peacockvictory]";
	now desc entry is "[peacockdesc]";
	now face entry is "bird-like head. You pass quite a bit of your time admiring your"; [ Face description, format as "Your face is (your text)."]
	now body entry is "tall and slender; your legs are double-jointed and bird-like, while your arms have been mutated into feathered wings, ending with five extra-thick feathers, flexible and mobile as fingers"; [ Body Description, format as "Your Body is (your text)"]
	now skin entry is "[peacockskin]"; [ skin Description, format as "You have (your text) skin"]
	now tail entry is "[peacocktail]."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "[one of]thin red[or]undulated[or]avian-like[at random]";
	now face change entry is "your entire head gets reshaped in the shape of a bird head"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "your legs became bird-like, including a painful double joint, and your arms transform into wings. You feel really light... you can't fly, though"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "lots of feather sprouts, until you are completely covered"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "[peacockasschange]"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it becomes slim and undulated. It retracts into a new, just formed, slit. Your balls are permanently absorbed in your body instead"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 6;
	now dex entry is 16; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 10; [ These values may be used as part of alternate combat.]
	now per entry is 12;
	now int entry is 20;
	now cha entry is 12;
	now sex entry is "Female"; 					[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 20;
	now lev entry is 5; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 0; [Amount of Damage monster Does when attacking.]
	now area entry is "High"; [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 0; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 0; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 0; [ Size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	now Nipple Count entry is 0; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 0; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 7; [ Length of female sex infection will attempt to give you. ]
	now Cunt Tightness entry is 3; [ Width of female sex infection will try and give you ]
	now libido entry is 20; [ Amount player Libido will go up if defeated ]
	now loot entry is "peacock feather";
	now lootchance entry is 35; [ Chance of loot dropping 0-100 ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]slender[or]winged[as decreasingly likely outcomes]";
	now type entry is "avian"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own] [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "pchypno"; [ Row used to designate any special combat features, "default" for standard combat. ]
	now BannedStatus entry is false;

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



Section 3 - Alt Combat

Table of Critter Combat (continued)
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)	altstrike (rule)
"pchypno"	peacockhypno rule	--	--	--	--	--	--	--	--	intstrike rule

this is the peacockhypno rule:
	choose row MonsterID from Table of Random Critters;
	now monsterhit is false;
	follow the intstrike rule;
	if monsterhit is true:
		say "[peacockattack]";
	else:
		say "The peacock tries to distract you with his plumage, but is forced to dodge away!";
	now peppereyes is 0;
	if HP of the player > 0 and Libido of Player < 110:
		wait for any key;
	else:
		if HP of Player <= 0, now fightoutcome is 20;
		if Libido of Player >= 110, now fightoutcome is 21;
		Lose;
	rule succeeds;


Section 4 - Peacock Heat / Mating Call [by Stripes]

Table of infection heat (continued)
infect name	heat cycle	heat duration	trigger text	description text	heat start	heat end	inheat	fheat (truth state)	mpregheat (truth state)	mpregtrigger
--	--	--	--	--	--	--	--	--	--	--

When Play begins:
	Choose a blank row from Table of infection heat;
	now infect Name entry is "Peacock"; [ This should be exactly the same as your monster name in the main table]
	now heat cycle entry is 5; [ This is the number of days a heat "cycle" lasts, usually 7 ]
	now heat duration entry is 2; [ This is how many days of the cycle you are actually in heat. default is 1, set it to the same as cycle for permanently in heat.]
	now trigger text entry is "[peacockheattrigger]"; 	[ This is the text that is written to the screen when the player comes into heat]
	now heat start entry is "[peacockheatstart]"; [ This is a to say block that causes things to happen when the player enters heat. for example the GSD sex grows wider. Delete entire line if you wish nothing to happen.]
	now heat end entry is "[peacockheatend]"; [ This is the same as heat start only it's for ending the cycle. GSSD her sex is reduced back to its previous size. Delete entire line if you wish nothing to happen. ]
	now inheat entry is "[peacockinheat]"; [ This final say block is triggered every 3 hours the player is in heat. you can use defaultheat or write your own. defaultheat raises libido value by 5 every 3 hours. ]
	now fheat entry is true;
	now mpregheat entry is false;
	now mpregtrigger entry is "";

to say peacockheattrigger:
	say "You can feel an increasing dampness in your loins. As you find yourself growing increasingly aroused, something hidden at the back of your mind makes you ";
	if there are no dangerous doors in the location of the player:
		say "want to leave this place and go... somewhere else...";
	else:
		let y be a random dangerous door in the location of the player;
		if marea of Y is "High":
			say "want to head out exploring.";
		else:
			say "want to leave this place and go... somewhere else...";

to say peacockinheat:
	if there are no dangerous doors in the location of the player:
		if a random chance of 3 in 5 succeeds:
			say "[one of]You moan as a wave of need quivers through your loins, your body needing to be filled to satisfy your heat... but not here...[or]A fresh flow of juices trickles down your thighs as your pussy leaks with need. A corner of your mind keeps calling you to satisfy those urges... but not here.[or]You are forced to pause and finger yourself as your dripping cunt demands satisfaction. The idea of heading back to the high rise district of town to satisfy your need pops into your head.[or]You moan and squeeze your thighs together as the heat in your loins makes you hornier and hornier. Thoughts of finding a sexy peacock to fill you sound very satisfying.[or]The waves of hot lust filling your cunt make you moan as you try to focus, but your thoughts keep wandering back to the high rise district of town.[or]You start to whistle a soft, bird-like call, echoing a song you can hear in the back of your mind, but can't quite remember from where. You grow tired of being here, wanting to go somewhere else now.[purely at random]";
	else:
		let y be a random dangerous door in the location of the player;
		if marea of Y is "High":
			say "[one of]You moan as a wave of need quivers through your loins, your body needing to be filled to satisfy your heat[or]A fresh flow of juices trickles down your thighs as your pussy leaks with need[or]You are forced to pause and finger yourself as your dripping cunt demands satisfaction[or]You moan and squeeze your thighs together as the heat in your loins makes you hornier and hornier[or]The waves of hot lust filling your cunt make you moan as you try to focus[or]You start to whistle a soft, bird-like call, echoing a song you can hear in the back of your mind, but can't quite remember from where[purely at random][one of]. You feel a compulsion to go out and look for a male right away[or]. Your thoughts keep wandering back to the peacock you encountered before[or]. Thoughts of finding a sexy peacock to fill you sound very satisfying[or]. The urge to go looking around the neighborhood is foremost in your mind[or]. The idea of going exploring, and maybe finding someone to mate with you, is very appealing[or]. A corner of your mind keeps calling you to go out and satisfy those urges[or]. You feel a strong use to venture out in search of a sexy peacock to slake your need[or]. You hear the soft chirping of birdsong and you want to go out to find it[purely at random].";
		else:
			if a random chance of 3 in 5 succeeds:
				say "[one of]You moan as a wave of need quivers through your loins, your body needing to be filled to satisfy your heat... but not here...[or]A fresh flow of juices trickles down your thighs as your pussy leaks with need. A corner of your mind keeps calling you to satisfy those urges... but not here.[or]You are forced to pause and finger yourself as your dripping cunt demands satisfaction. The idea of heading back to the high rise district of town to satisfy your need pops into your head.[or]You moan and squeeze your thighs together as the heat in your loins makes you hornier and hornier. Thoughts of finding a sexy peacock to fill you sound very satisfying.[or]The waves of hot lust filling your cunt make you moan as you try to focus, but your thoughts keep wandering back to the high rise district of town.[or]You start to whistle a soft, bird-like call, echoing a song you can hear in the back of your mind, but can't quite remember from where. You grow tired of being here, wanting to go somewhere else now.[purely at random]";
	increase Libido of Player by 3;

to say peacockheatstart:
	increase Libido of Player by 8;

to say peacockheatend:
	if Libido of Player > 20:
		now Libido of Player is ( Libido of Player * 3 ) / 4;
		if Libido of Player < 20, now Libido of Player is 20;


Section 5 - Peacock Feather

peacock feather is a grab object. It is a part of the player. It is temporary. peacock feather is infectious. The strain of peacock feather is "Peacock".

Table of Game Objects (continued)
name	desc	weight	object
"peacock feather"	"A peacock feather. It looks pretty."	1	peacock feather

the usedesc of peacock feather is "[peacock feather use]";

to say peacock feather use:
	say "You remember that many were infected and mutated by contaminated food. It seems... no, it's stupid, but you bite down the feather anyway.";

instead of sniffing peacock feather:
	say "The long feather smells of an avian male and leaves your mind momentarily foggy.";


Section 6 - Endings

when play ends:
	if BodyName of Player is "Peacock":
		if humanity of Player < 10:
			if Cock Length of Player > Cunt Depth of Player:
				say "You decide to remain in the quarantined city. With your wits and abilities, you will surely find many different... ahem... [']fruits['] to taste.";
			else:
				say "You decide to remain in the quarantined city. You become the mate of a male peacock, or rather, his favorite mate. Neither of you wants to sacrifice his fun, after all...";
		else:
			say "You decide to leave and join civilization. Your pretty look and overall self-controlled behavior lands you a job in what is considered high society. You still have your... [']teeny sins['], you could say.";
			if Cunt Depth of Player > Cock Length of Player:
				if intelligence of Player > 18:
					say "One day, however, your mind clicks. You manage to recall everything that the hypnosis altered or blocked completely, and the memory of the event causes a stirring in your loins. You make bag and baggage and set off immediately to the quarantined city, determined to find him and make clear that YOU are going to be in charge now...";

Male Peacock ends here.
