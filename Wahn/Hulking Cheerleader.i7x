Version 2 of Hulking Cheerleader by Wahn begins here.
[Version 2.2 - Endings fixed up]

"Adds a Hulking Cheerleader to Flexible Survival's Wandering Monsters table, with impreg chance"

CheerleaderFirstEncounter is a number that varies. CheerleaderFirstEncounter is usually 0.

Section 1 - Creature Responses

to say Cheerleader wins:
	if CheerleaderFirstEncounter is 2: [fighting Stacy, for the event with Eric]
		say "     Ouch, that hurt. With another hit, Stacy almost finishes you off, leaving you swaying dangerously as you try to keep standing.";
	else if HP of Player <= 0 and BodyName of Player is "Hulking Cheerleader": [she's a good winner, giving hints to other players in their 'game']
		say "     The hulking cheerleader steps over you, then gives you a hand and pulls you to your feet. 'I won - all the pussies in the area are mine. But still, you didn't do too bad. You should take on Alice or Jenny - they aren't too tough and while their areas aren't as good as mine, you should still be able to make good some points on the pussy hunt there.'";
	else:
		if HP of Player > 0: [player submitted]
			say "     'Wanna throw the towel and get right to business? Fine by me,' the hulking cheerleader says, then lays you down on the ground and quickly exposes your crotch.";
		else: [she's won the right to fuck - now the cheerleader wants to 'score']
			say "     'I beat you fair and square, so just hold still and let's see what's what,' the hulking cheerleader says, then lays you down on the ground and quickly exposes your crotch.";
		if Player is female: [what the pussy hunt is all about...]
			if (gestation of child > 0): [already pregnant]
				say "     She rubs her hand over your pussy lips, then sniffs it. With a bit of a disappointed tone she then says, 'Aww, you're already pregnant - oh, I mean... congratulations! Hope all goes well with the birth. And if it's a girl, why don't you come back here once she's grown.' As the hulking cheerleader moves off, you hear her mumbling to herself, [one of]'A virgin and her MILF would be quite a catch and put me in front of even [randomgirlname] on the list...'[or]'At least with a MILF you know she's fertile and worth the seed...'[or]'Haven't managed to snag a virgin in ages.'[at random]";
			else:
				if (Cunt Depth of Player < 4): [far too small]
					say "     She spreads the folds of your pussy, rubbing a finger up and down on the outside, then pushes it into you. 'What's this? I can't even get my finger all the way into you! No way a cock would fit in there.' With a rather disappointed expression she pulls you to your feet, saying 'I'm not a monster and don't want to hurt you. So move along little girl, and come back when you're fully grown.'";
				else:
					say "     She spreads the folds of your pussy, rubbing a finger up and down on the outside, then pushes it into you. 'Yeah, looks good and ready to plant some seed.' Fondling your pussy with one hand, her other one moves over your [bodytype of Player] body, caressing you and stroking your nipples. With you soon gasping in need from her treatment and getting very wet around her fingers inside you, you're ready in the cheerleader's eyes and she moves to kneel between your legs. She slaps her massive green cock a few times on your stomach, rubbing it against your skin, then guides its head to your entrance. With a slow but steady push, it pops into your body, spreading your lips wide around its girth.";
					say "     'Nice tight pussy you have there - now let's see how deep it is,' the green giant grunts, then pushes deeper and deeper into you, spearing you on her shaft. [if Cunt Depth of Player < 16]Soon she bumps into your cervix and stops, slightly disappointed that you couldn't take all of her length. [else]She bottoms out inside you and you can feel her balls rubbing against your crotch as she groans 'So deep.' [end if]Then your large partner grabs your body, holding on to you tightly as she starts thrusting in and out of you. Your mind almost explodes at the sensations of her rubbing against your insides, expertly finding your G-spot and bumping it repeatedly. Seems like she's got an advantage there as a former female herself.";
					WaitLineBreak;
					say "     Over the next twenty minutes or so, you're treated with one hell of a fuck, taking you to levels of pleasure you didn't even know existed and orgasming several times. You wish it'd last forever, but the reproductive imperative of your hulking partner soon gets its due. She gets faster and faster with her thrusts, moaning and grunting, until finally she buries her hard cock as far as it will go inside you and fills you with spurt after spurt of her seed.[fimpregchance]";
					say "     When she pulls out of you a while later, she says 'You liked that, didn't you? No quick cumming and then just fucking off with us. I hated it when guys did that with me. Let me know if it takes, ok? We get extra points for that... and if it doesn't, let's do another round soon!'";
		else if Player is male: [males]
			say "     She scoffs as she sees your [Cock of Player] cock. 'A man, hm? This is MY turf - any pussy coming along here belongs to me. I don't want to fall behind [randomgirlname] in the contest by letting just any bastard move in. So get lost till you've grown a pussy and are ready for my seed.'";
		else: [neuter]
			say "     She feels around your featureless private area for a moment, then gives you a pitying look. 'Nothing? You poor sod - there's the sex apocalypse going on all around you, and you can't even join in. Why don't you go find some pussy and eat her out or something? Then you can both come back here afterwards and I'll be happy to put your wombs to good use.'";

to say randomgirlname: [Inform doesn't like nested if/random within the same say statement]
	say "[one of]Brittany[or]Christy[or]Janice[or]Claire[or]Willow[at random]";

To say Cheerleader loses:
	if CheerleaderFirstEncounter is 2: [fighting Stacy, for the event with Eric]
		say "     That last hit gave her the rest. Stacy gets a cross-eyed look and sways visibly. You take a step back to be on the safe side...";
	else if BodyName of Player is "Hulking Cheerleader": [she's a good loser, telling the player of the females in the area]
		say "     She steps back a bit, raising both hands to placate you. 'Ok, ok - you win. It's your area now. Quite a few fertile pussies here too - you'll just have to wait a bit till they give birth. I did a round not too long ago. Although there might be a virgin daughter or two of mine getting ripe and ready. Hope you have fun - but be ready for a rematch. I'll be back.'";
	else: [lost to a non-cheerleader - which raises her estimation of the player from game piece to player]
		say "     She steps back a bit, raising both hands to placate you. 'Ok, ok - you win. You'd make a pretty good contestant in our game... how about you join the team?' the large green cheerleader says, holding her massive cock out to you with a hopeful expression. Do you want to blow her off?";
		if Player consents:
			say "     Stepping closer to the green giant, you grasp her massive erection with both hands and pump them up and down her shaft a few times. Looks like the muscled hulk is very sensitive with her cock, as you have her moaning almost immediately. When a large glistening drop of precum forms at the slit of her cockhead, you lean in and lick it off, then run your tongue along her shaft. Then you return to the head, softly suckling on it while your hands fondle the cheerleader's heavy balls and stroke her dick. It doesn't take too much more of this treatment until you push her over the edge. Her balls and cock pulse under your hands as the first blast of warm cum shoots into your mouth, followed by another and another, and the rest of them landing all over your face and chest as she pulls out of your mouth.";
			say "     The hulking cheerleader grins, saying 'Swallow what you can and just rub the rest into your skin. Shouldn't take too long to make you one of us from my experience.' Then she waves goodbye and goes to hunt for her next catch, leaving you standing there dripping cum.";
		else:
			say "     You politely decline her offer. As you walk away, you hear her say 'Your loss, it's great fun to play. If you ever change your mind, you know where to find me.'";

to say cheerleaderDesc:
	setmongender 6; [dickgirl]
	if "Hulking Cheerleader" is not listed in EncounteredEnemies of Player: [first encounter]
		say "     Walking over the campus, you hear some high-pitched moaning from behind one of the buildings and decide to check it out. Peeking around a corner, you see a very tall green-skinned humanoid holding and fucking a twenty-ish human woman. The green creature has ample breasts stuffed into her small shirt and looks mostly female, but has a very large frame and is massively muscled. And she/he? also has one big whopper of a cock under her short skirt that she's busy driving into the Asian woman held in her arms. Their coupling soon builds to a loud climax, with the green giant giving satisfied grunts as she fills the woman's pussy with her seed.";
		say "     Then the woman's body starts to change and she's quickly pulled off the still-twitching cock and lowered to the ground by her large partner. You see her skin turn green, muscles filling out rapidly and the whole body stretch and reshape itself until there are two green giants behind the building. The woman is completely stunned by what has happened to her, looking down on her new body and trying to make sense of it all. Her fucker steps closer and grins down at her. 'Ah, a convert. I still wonder why some people turn but most don't. Hey, I know you - you're Haruko and were on the gymnastics team, weren't you?'";
		WaitLineBreak;
		say "     The former woman on the ground gives a quick nod, still speechless. 'I'm Amy and a cheerleader - and you're an honorary one now too. Now let me give you the team initiation...' With that, the giant cheerleader leans down and grabs the newbie's cock and balls, stroking and fondling them. 'Remember how disgusted we all were with the jocks hunting after anyone they could get to spread their legs? Promising whatever a girl wanted to hear and always pretending that they 'forgot' to bring a condom when they had us hot and ready?' She stops talking for a moment, pumping both her hands up and down Haruko's hard cock and making the former woman moan in lust. 'You get it now, don't you? Think about burying this bad boy in a pussy, filling it with your seed. That's what cocks are for! And now it's our turn to have a go with them!'";
		say "     Haruko grunts needily, precum forming at the tip of her cock. 'We started a competition too like those fuckers always did. You get a point for each pussy, five if you knock [']em up, ten for virgins. Just go look for Buffy - she keeps the scores.' Pulling the Asian, newly-made cheerleader to her feet, Amy gives her hard cock a last stroke and slaps her shoulder, saying 'Just follow where this thing leads you and do what's natural. You'll likely have to fight some of us though - a lot of the campus is already claimed by someone. But let's be civil to each other - be a good winner or loser and tell any converts you make the rules, ok?'";
		say "     The Asian giant nods to her, then moves off to find something to fuck. You quickly duck behind the corner, not to become her first catch. After watching her leave, you wonder if you should follow her and see what she does next, or get out of the hunting grounds of these giant shemales.";
		LineBreak;
		say "     Before you can come to a decision, you hear something behind you - and turning around, see yourself confronted with Amy, the first cheerleader hulk you saw. 'Did you enjoy peeping in on us?' she asks, grabbing hold of her cock. Your looks are invariably drawn to the massive member, glistening wetly as it gets fully hard again and she lubes it with some remaining cum sticking to the tip. 'I bet you can't wait to feel it inside yourself. Let me take you for a ride.'";
		now CheerleaderFirstEncounter is 1;
	else if CheerleaderFirstEncounter is 2: [fighting Stacy, for the event with Eric]
		say "     Stacy roars 'His pussy is MINE!' and comes at you with balled fists.";
	else: [normal repeats for random cheerleaders]
		say "     A strongly muscled, more than six feet tall woman steps into your way. She has a beautiful face, light green like the rest of her body, and shoulder-length blond hair. Her ample breasts are barely contained by a white crop top stretched over her large frame, and a very short skirt does almost nothing to hide her crotch. Or his, rather - since you see a quite impressive maleness dangling between those green-skinned legs. 'Here for the pussy hunt? Let's see if you have what it takes,' she intones with a surprisingly girly voice, then cracks her knuckles.";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Green Giant";
	add "Hulking Cheerleader" to infections of TransList; [dickgirl]
	add "Hulking Cheerleader" to infections of BipedalList; [dickgirl]
	now Name entry is "Hulking Cheerleader";
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]You get grabbed by an arm and slammed on the ground.[or]Your opponent throws a pom-pom at your face, then kicks you while you're distracted.[or]The cheerleader does an awe-inspiring flip through the air and suddenly lands right behind you. Before you can react, you are caught in a bearhug and gasping for air.[at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "[Cheerleader loses]";
	now victory entry is "[Cheerleader wins]";
	now desc entry is "[cheerleaderDesc]";            [ Description of the creature when you encounter it. ]
	now face entry is "that of a pretty woman, with beautiful even features, full lips and a seductive smile. The image is completed by shoulder-long blonde hair";
	now body entry is "that of a strongly muscled human being, more than six feet tall. It is garbed in a very tight, white crop top and a short skirt clearly meant for a much smaller person. They fit pretty tight over your large frame, stretching to contain the muscles below";
	now skin entry is "light green, hairless";
	now tail entry is "You have a round, firm bubble butt, just waiting to be grabbed.";  [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "[one of]green[or]human[at random]";
	now face change entry is "your facial muscles seem to ripple under the skin, rearranging themselves into the beautiful features of a woman. Your hair adjusts to shoulder-length and takes on a blonde color"; [ format as "Your face feels funny as (your text)." ]
	now body change entry is "it is reshaped into a very tall form, ending up in a strongly muscled but still recognizably female shape. A very tight white crop top and skirt coalescence out of a cloud of nanites around your chest and hips";
	now skin change entry is "it seems to soften and smooth out while taking on a light green color. Any blemishes and unwanted hair are wiped away with a wonderfully pleasant sensation that leaves you with perfect skin";
	now ass change entry is "it tightens up into a firm, round bubble butt";
	now cock change entry is "it becomes human-like, uncut and well-proportioned";
	now str entry is 26;
	now dex entry is 12;
	now sta entry is 18;
	now per entry is 14;
	now int entry is 8;
	now cha entry is 12;
	now sex entry is "Male";                [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 70;
	now lev entry is 9;                     [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 12;                   [ Monster's average damage when attacking. ]
	now area entry is "Campus";             [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1;                   [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 16;            [ Length infection will make cock grow to if cocks. ]
	now Ball Size entry is 4;             [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2;                 [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 4;             [ Size of breasts the infection will try to attain. ]
	now Male Breast Size entry is 4;        [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0;                   [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 0;             [ Depth of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]              [ Width of female sex the infection will try to give a player. ]
	now libido entry is 80;
	now loot entry is "";                   [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0;              [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 4;                   [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]hulking[or]muscular[at random]";
	now type entry is "human";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;          [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
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
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]



Section 3 - Endings

when play ends:
	if BodyName of Player is "Hulking Cheerleader":
		if humanity of Player < 10:
			say "     As you succumb to the infection, you feel all concerns other than the pussy hunt game fade from your mind. You make your way to the campus and carve off a very respectable section of it for your own, beating all challengers intruding into your territory. With your fertile seed soon taking hold in all the females in your turf, and quite a few in your neighbor's too, you rapidly rise in the rankings. A group of female soldiers straying into the wrong area of the city finally gives you the last push to get all the way to the top, cementing your position as champion as you breed them one by one.";
		else:
			say "     When rescue comes, the soldiers are at first very skeptical about allowing you to leave the city because of your large size and obvious physical power. It takes quite a bit of talking to calm their worries of you squishing people - looks like they had some bad experiences with some larger infectees. When you're finally brought to a holding facility outside the city, several doctors poke and prod you, mumbling about your amazing muscle density and healing capacity. After being given a shot to make you non-infectious, you're released.";
			say "     Returning to human society isn't easy as a nine foot tall green giant, everything feels rather small and fragile around you. You work on a construction site for a while, making friends with your human coworkers and a few other infected people. Several weeks later, one of them shows you a flyer, asking if you've heard about something called the S-AFL. Looks like a crafty businessman took the idea of a 'Shifted American Football League' to the right people - and you're just what they're looking for. After showing off your body and muscles to a recruiter, you're instantly hired and soon fill the role of a quarterback in America's new favorite sport - because where else but on S-AFL can they see epic battles between giants, dinosaurs and panther-taurs?";
			if Player is male:
				say "     Your exalted position brings a lot of adoration and fans with it, and a lot of the pretty human cheerleaders accompanying the games are all too eager to spread their legs for the giant quarterback. One especially wild night of celebration when your team just won the championship leads to the whole cheerleading squad being knocked up - most of them with your fertile seed, though one or two of your teammates also got winning shots in. That'll lead a whole lot of adorable green babies, little gryphlets and a litter of panthertaur cubs in the near future. Thankfully, the Libido of the shifted was accounted for when the S-AFL was thought up, so there's actually a child support provision written right into your contract. Seems like the organizers want you to breed - so they can recruit your offspring later on.";
				if Player is female:
					if "Sterile" is not listed in feats of Player:
						say "     Beside fucking fangirls and cheerleaders, you also have a very devoted mass of male followers. You pick up one or two sometimes after a game when the mood strikes you... until one fine day you find one you decide to keep. He's a player in human football, handsome and strong. With him, you can discuss tactics before a game, he knows just how to rub your sore muscles afterwards - and he's also got the stamina to fuck you hard and deep. Before long, your belly starts bulging in obvious pregnancy, and soon afterwards the most beautiful little boy is born. You hope he'll like playing football, since he sure will see a lot of it with both his parents in the game...";
					else:
						say "     Beside fucking fangirls and cheerleaders, you also have a very devoted mass of male followers. You pick up one or two sometimes after a game when the mood strikes you... until one fine day you find one you decide to keep. He's a player in human football, handsome and strong. With him, you can discuss tactics before a game, he knows just how to rub your sore muscles afterwards - and he's also got the stamina to fuck you hard and deep.";
			else if Player is female:
				if "Sterile" is not listed in feats of Player:
					say "     Your exalted position brings a lot of adoration with it and you pretty much have a free selection of men from among your devoted fans. You pick up one or two after most games until you find one you decide to keep. He's a player in human football, handsome and strong. With him, you can discuss tactics before a game, he knows just how to rub your sore muscles afterwards - and he's also got the stamina to fuck you hard and deep. Before long, your belly starts bulging in obvious pregnancy, and soon afterwards the most beautiful little boy is born. You hope he'll like playing football, since he sure will see a lot of it with both his parents in the game...";
				else:
					say "     Your exalted position brings a lot of adoration with it and you pretty much have a free selection of men from among your devoted fans. You pick up one or two after most games until you find one you decide to keep. He's a player in human football, handsome and strong. With him, you can discuss tactics before a game, he knows just how to rub your sore muscles afterwards - and he's also got the stamina to fuck you hard and deep.";
			else:
				say "     Your exalted position brings a lot of adoration and fans with it. With you declining males and females throwing themselves at you, the question of your gender arouses the media and soon you're haunted by paparazzi everywhere you go. Their unscrupulous and relentless hunt for something to feed the public does wear you down mentally and you're pretty exhausted after a while.";
				say "     Luckily you find an open ear in your massage therapist David, who's in on the 'big secret' anyways. He listens to your problems as he kneads the tension out of you and you start spending some of your off time with him too, becoming great friends. This leads to a more intimate relationship, as one day he lets his hands stray deeper down your back and introduce you to the pleasures to be had even without genitalia. A 'special' massage with his cock deep in your ass soon becomes your favorite after-game relaxation exercise - well, and at any other time too. When the newsies pick up on your relationship and start hounding David too, you've finally had enough. You ask him to move in with you, then do one whammy of a press conference, coming out as a neuter living with a gay man...";

Hulking Cheerleader ends here.
