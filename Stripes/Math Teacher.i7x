Version 1 of Math Teacher by Stripes begins here.
[This monster was translated from the multiplayer game automatically by Nuku Valente, but may, most likely, have been written by someone else and has been subject to revision.]

"Adds Math Teacher to Flexible Survival."

Section 1 - Creature Responses

to say mathteacherdesc:
	setmongender 5; [creature is herm]
	let testnum be a random number between 1 and 4;
	say "     You find yourself faced with a strangely human foe with a stern expression on her pretty female face. She has a pair of wire-framed glasses in from of her strict, watchful eyes and her brown hair is kept in a tight bun. She wears red lipstick. She is dressed in a white, button-up shirt with a brown, knee-length skirt. She has a pocket protector which holds a couple of pens and a slide rule. She holds a long, metric ruler in one hand and a heavy [one of]calculus textbook[or]textbook on complex differential equations[or]textbook on number theory[or]mathematics textbook[at random] under her other arm. Several papers, labelled as '[one of]Student Killer Exam [testnum][or]Brain Breaker Quiz [testnum][or]Impossible Assignment [testnum][or]Non-Euclidean Geometry Test of Doom[at random]' and slashed full of red F's, are sticking out of the book. Her brown heels click loudly as she steps towards you, slapping the ruler across her palm. With each slap, you notice a twitch under her skirt, warning you that there's more to this sexy math teacher than a her sexy ass and pert breasts.";


to say losetomathteacher:
	if Player is female:
		if Player is male:
			say "     The math teacher stands with her spine perfectly straight and glares at you sternly. 'You,' she says, 'have been a very naughty student. Turn around.' You cannot help but comply, intimidated and oddly unable to get the fear of your old high school principal out of your head. The math teacher raises her ruler and slaps your ass - hard. She slaps again and again, pausing occasionally to squeeze one of your cheeks. Finally, after you feel your ass MUST be in more pain than possible, the creature pushes you to all fours.";
		else:
			say "     The teacher glares at you through her spectacles. 'Young lady,' she barks, 'you need to be taught a lesson about disrespecting mathematics.' She pushes you to the ground and exposes your bottom. You cannot help but comply, cursing yourself for not having paid more attention during [one of]Calc III[or]Algebra 101[or]trigonometry[at random]. The math teacher raises her ruler and slaps your ass - hard. She takes her ruler and smacks it against your rear, eliciting from you pained gasps as your ass turns pink from the abuse. She only pauses occasionally to squeeze one of your cheeks.";
		if a random chance of 1 in 3 succeeds:
			say "     You hear the faint sound of clothing crumpling to the floor. With the clacking of heels against the ground, the teacher walks in front of you. With her skirt and panties gone, you are treated to the sight of her eight-inch penis bobbing erect in front of your face. 'Now, you need to make up for interrupting the class,' she barks. You obediently take the cock into your mouth and start to bob your head, still wincing from your spanking. After a few moments, the cock suddenly is pulled from your mouth and paints your face white with her spunk. 'Now, go clean yourself up and [one of]finish your homework next time[or]don't be late for class again[or]don't let me catch you cheating again[at random].' With that, the deluded teacher walks away, a slight annoyance evident in her pace.";
		else:
			say "     You hear the faint sound of clothing crumpling to the floor shortly before you feel something hard pressing against your tender bottom. 'Well, I guess [one of]you need to be taught to pay more attention in class[or]I'll need to perform some long division between your legs[or]I will have to show you how to properly use a slide rule[at random],' she says before thrusting her cock into you without further delay. You moan at the sudden penetration and the slap of her thighs against your tender ass. Soon she's pounding away at you while making very precise comments about the size of your cunt and its viscosity as well as the frequency of her thrusts. After a fucking that leaves your head dizzy with numbers, she thrusts fully into you and cums hard, pumping her hot load into you. After she pulls out, she orders you to report back for remedial lessons before heading off, heels clacking as she goes.[impregchance]";
	else if Player is male:
		if anallevel > 1 and ( a random chance of anallevel in 5 succeeds ):
			say "     The math teacher glares at you through her glasses. 'You have been a very disruptive young man.' She shoves you to all fours and exposes your bottom. She takes the long ruler in her hand and slaps it against your ass. After your ass is nice and tender, she gives your sore cheeks a firm squeeze.";
			say "     You hear the faint sound of clothing crumpling to the floor shortly before you feel something hard pressing against your tender bottom and pressing at your pucker. 'Well, I guess [one of]you need to be taught not forget your pencil case[or]I'll need to perform some complex derivation on this tight problem of yours[or]I will have to show you how to properly use a slide rule[at random],' she says before thrusting her cock into you without further delay. You groan at the sudden intrusion and the slap of her thighs against your tender ass. Soon she's pounding away at you while reminding you to bring the proper equipment to your next class. After a fucking that leaves your head dizzy with numbers, she thrusts fully into you and cums hard, pumping her hot load deep inside you. After she pulls out, she orders you to report back for remedial lessons before heading off, heels clacking as she goes.[mimpregchance]";
		else if a random chance of 2 in 5 succeeds:
			say "     The math teacher glares at you through her glasses. 'You have been a very disruptive young man.' She shoves you to all fours and exposes your bottom. You cannot help but comply, intimidated and oddly unable to get the fear of your old high school principal out of your head. The math teacher raises her ruler and slaps your ass - hard. She slaps again and again, pausing occasionally to squeeze one of your cheeks. Finally, after you feel your ass MUST be in more pain than possible, the creature gives your rear a final smack.";
			say "     You hear the faint sound of clothing crumpling to the floor. With the clacking of heels against the ground, the teacher walks in front of you. With her skirt and panties gone, you are treated to the sight of her eight-inch penis bobbing erect in front of your face. 'Now, you need to make up for interrupting the class,' she barks. You obediently take the cock into your mouth and start to bob your head, still wincing from your spanking. After a few moments, the cock suddenly is pulled from your mouth and paints your face white with her spunk. 'Now, go clean yourself up and [one of]finish your homework next time[or]don't be late for class again[or]don't let me catch you cheating again[at random].' With that, the deluded teacher walks away, a slight annoyance evident in her pace.";
		else:
			say "     The math teacher glares at you through her glasses. 'You have been a very disruptive young man.' She shoves you to all fours and exposes your bottom. She takes the long ruler in her hand and slaps it against your ass, again and again, until it turns pink. 'Now, young man, pull up your pants and take a seat.' She walks away, mumbling to herself about needing the proof for cream pi.";
	else:
		say "     The math teacher stares down at you and mumbles about the terrible state of public education before pushing you down onto all fours. 'Look at you,' she says, groping your bare groin. 'You're neither convex nor concave. Your previous professors clearly did not spend enough time preparing you before sending you to my class.' With that, she starts to slap you with her ruler. After several painful swats that leave your ass sore, you hear the rustle of clothes as she drops her skirt and panties, exposing her eight-inch cock. She lines it up with your tight pucker and slowly sinks it into you. 'This should teach you to [one of]be more mathematically interesting than zero next time[or]be more geometrically pleasing when you come to class[or]score better than a zero on the gender numerics quiz[at random],' she says with a moan as she thrusts hard into you. You groan between the pleasure of the fucking and the soreness of your tender ass. As she's about to cum, she pulls out and sprays her seed across your bottom, leaving you sticky with the professor's semen. She gives your bare crotch a swat to further emphasize her displeasure before striding away, heels clacking as she goes.";


to say beatthemathteacher:
	let mathnum be 0;
	say "     You push the math teacher onto all fours and flip up the back of her dress. Exposing her rear, you take her ruler and slap her rump with several thwacks, venting ancient frustrations with your previous professors as well as disciplining this one for attacking you. She starts to moan and you can see her panties getting wet and becoming stretched taut by her erection.";
	if Player is herm:
		say "     Shall you have some more fun with her? You could [link]fuck her (1)[as]1[end link], [link]ride her cock (2)[as]2[end link] or [link]let her go (3)[as]3[end link].";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to fuck her, [link]2[end link] to ride her cock or [link]3[end link] to let her go.";
		if calcnumber is 1:
			say "[mathteachsex1]";
		else if calcnumber is 2:
			say "[mathteachsex2]";
		else:
			say "     Not interested in more fun, you give her a few final swats before sending her on her way. She grumbles something about unruly students and walks away as quickly as her sore ass will let her, heels clacking all the way.";
	else if Player is male:
		say "     [bold type]Shall you have some fun with her? You could fuck her or just let her go.[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Fuck her.";
		say "     ([link]N[as]n[end link]) - Let her go.";
		if Player consents:
			say "[mathteachsex1]";
		else:
			say "     Not interested in more fun, you give her a few final swats before sending her on her way. She grumbles something about unruly students and walks away as quickly as her sore ass will let her, heels clacking all the way.";
	else if Player is female:
		say "     ";
		say "     [bold type]Shall you have some more fun with her? You could ride her cock or let her go.[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Ride her cock.";
		say "     ([link]N[as]n[end link]) - Let her go.";
		if Player consents:
			say "[mathteachsex2]";
		else:
			say "     Not interested in more fun, you give her a few final swats before sending her on her way. She grumbles something about unruly students and walks away as quickly as her sore ass will let her, heels clacking all the way.";
	else:
		say "     You give her a few final swats before sending her on her way. She grumbles something about unruly students and walks away as quickly as her sore ass will let her, heels clacking all the way.";

to say mathteachsex1:
	say "     Tossing aside her meter stick, you pull down her panties and climb atop of her. Getting your cock lined up with her pussy, you thrust into her[if Cock Length of Player >= 16]. As you push your [cock size desc of Player] [Cock of Player] penis into her, she moans in discomfort and rattles of various numbers and equations. At first, she seems very tight and it's difficult to penetrate her, but soon her cunt seems more roomy, as if she's used some mathematical trick to let your massive cock somehow fit into her[else], plunging your [cock size desc of Player] [Cock of Player] penis into her juicy cunt[end if].";
	say "     She tries to muffle her moans of pleasure at first, but soon she's eagerly getting into it despite her previously stern demeanor. You keep the fucking up until finally you push fully into her and pump your hot load into her. You pull your cock out and she drops to the floor. She dips her fingers into the growing puddle of cum that leaks out of her, using it to scribble numbers and equations on the floor. From the few bits you catch, it seems to be at least partially based on the recent fucking you gave her and the size and output of your cock. You leave her to her current mathematical obsession.";

to say mathteachsex2:
	say "     Tossing aside the meter stick, you push down her panties and push her down onto her tender rear. Grabbing her cock, you move over her crotch and lower your wet pussy down onto it with a moan of pleasure. As you start to ride in her lap, she tries to muffle her moans of pleasure at first, but soon she's eagerly getting into it despite her previously stern demeanor. She wraps her arms around you, mumbling something about [one of]earning extra credit[or]maybe being able to adjust your grade a little[or]correctly solving for cream pi[at random]. You ride the herm professor until you can get her to cum, shooting her hot seed into your waiting cunt as you climax as well. Once she's drained, you get up and leave her lying there on the floor, mutter numbers to herself as if evaluating your cunt and grading the quality of the fuck you gave her.[impregchance]";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
	add "Math Teacher" to infections of HumanList;
	add "Math Teacher" to infections of NatureList;
	add "Math Teacher" to infections of HermList;
	add "Math Teacher" to infections of BipedalList;
	now Name entry is "Math Teacher"; [Name of your new Monster]
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]The teacher swats you painfully with her ruler![or]The professor bashes you with her textbook, making numbers swirl around in your eyes temporarily![or]The math teacher confuses you by asking you a math question that derails your brain. When you can't answer in time, she screams that you get an F and clubs you with her textbook![or]She runs her hands over her [if a random chance of 2 in 3 succeeds]D-cup breasts[else]plump ass cheeks[end if] while making sexy comments about their area, volume, density, elasticity and other numerical attributes, ending by summarizing them as [if a random chance of 1 in 3 succeeds]a 10 out of 10[else if a random chance of 1 in 2 succeeds]an A+[else]worth 10 bonus points[end if]. While unusual, this wanton display wears down your resistance to her advances![at random]";
	now defeated entry is "[beatthemathteacher]";
	now victory entry is "[losetomathteacher]";
	now desc entry is "[mathteacherdesc]";
	now face entry is "a female human's head. You have wire-framed reading glasses in front of your strict eyes. Your brown hair is kept in a neat bun, and you're wearing red lipstick. From time to time your thoughts [one of]drift to numbers and equations rather than words and ideas[or]get caught up in a numerical analysis of the genitals of the various creatures you spot[or]mull over what paths through the city might get you the most sex[at random]";
	now body entry is "a human female body. You are wearing a white, button-up shirt with a pocket protector in it. Half-hidden by your knee-length brown skirt, you have long, shapely legs with brown high-heeled shoes on your feet";
	now skin entry is "human";
	now tail entry is "";
	now cock entry is "[one of]human[or]beautifully proportioned[as decreasingly likely outcomes]";
	now face change entry is "your head becomes human with a pretty, feminine appearance. You can taste lipstick on your lips and your hair pulls itself back into a tight bun. You don't remember those glasses on your nose either. Your pleasure at seeming to become more human than most others around here fades from your mind as you start thinking about pi and trigonometry instead";
	now body change entry is "you feel your body become just like a regular human's body, almost as if the nanites never came. Suddenly though, you feel a new outfit appear over you, probably made of nanites. You now wear a white, button-up shirt with a brown, knee-length skirt. Your body changes, becoming more feminine than before. Your legs feel... fairly normal. They are a bit daintier than usual, but you feel like a regular human. You almost trip with your next step though as you realize you are now wearing heels";
	now skin change entry is "your skin ripples and settles down as what seems to be perfectly normal human skin";
	now ass change entry is "you feel a strange sensation in your rump. You turn your head and watch as it inflates into a plump, round rump that feels very nice. You wiggle it a bit, and can't help but smile to have such an attractive butt";
	now cock change entry is "you feel your cock tingle, and realize it's just a normal human cock now";
	now str entry is 12;
	now dex entry is 16;
	now sta entry is 10;
	now per entry is 10;
	now int entry is 18;
	now cha entry is 14;
	now sex entry is "Both";
	now HP entry is 42; [ How many HP has the monster got?]
	now lev entry is 7; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you lose]
	now wdam entry is 8; [Amount of Damage monster Does when attacking.]
	now area entry is "Campus";
	now Cock Count entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 8; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 3; [ Size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	now Nipple Count entry is 2; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 4; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 8;
	now Cunt Tightness entry is 4;
	now libido entry is 40; [ Amount player Libido will go up if defeated ]
	now loot entry is "";
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]sultry[or]sexy[or]feminine[or]normal[as decreasingly likely outcomes]";
	now type entry is "human"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
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

[to be added later]

Math Teacher ends here.
