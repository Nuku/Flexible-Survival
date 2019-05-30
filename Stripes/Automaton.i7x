Version 1 of Automaton by Stripes begins here.
[Version 1.1 - Added player loss oral w/male and randomized outcomes]

"Adds Automaton to Flexible Survival."

Section 1 - Creature Responses

autogender is a number that varies.
metalskin is a number that varies. metalskin is usually 1.
playermetalskin is a number that varies. playermetalskin is usually 1.
automatonending is a number that varies.

to say automatondesc:
	choose row MonsterID from the Table of Random Critters;
	now autogender is a random number between 1 and 2;
	if MaleList is banned and FemaleList is banned:		[if both types are banned, the fight is aborted and removed from critter table]
		say "     You come across a strange, metallic human. It looks you over with its glowing eyes before striding off as if recognizing that you are not what it is searching for as you don't want to play with it.";
		now BannedStatus entry is true;
		now fightoutcome is 19;
		now autogender is 0;
		now combat abort is 1;
	else if FemaleList is banned:
		now autogender is 1; [male]
	else if MaleList is banned:
		now autogender is 2; [female]
	else if MaleList is warded and FemaleList is warded:
		now autogender is a random number between 1 and 2;
	else if ishunting is true:	[hunting results in 2/3rds chance to get unwarded option]
		if MaleList is warded and a random chance of 1 in 3 succeeds:
			now autogender is 2;
		else if FemaleList is warded and a random chance of 1 in 3 succeeds:
			now autogender is 1;
	else if ishunting is false:
		if MaleList is warded:
			now autogender is 2;
		else if FemaleList is warded:
			now autogender is 1;
	now metalskin is a random number between 1 and 4;
	if autogender > 0:
		say "     Before you is a strange person, completely human in form but covered in a layer of metallic skin. This polished hide is made of [if metalskin is 1]bronze[else if metalskin is 2]aluminum[else if metalskin is 3]cobalt with a faint blue tint[else if metalskin is 4]steel[end if] and seamless. The metal [if autogender is 1]man[else]woman[end if][']s eyes are featureless [if metalskin is 1]amber[else if metalskin is 2]blue[else if metalskin is 3]green[else if metalskin is 4]red[end if] lights. [if autogender is 1]His[else]Her[end if] hair has become metallic in color to match its skin. This person looks like any normal person you might meet, but transformed into metal and sapped of their will. [if autogender is 1]He[else]She[end if] moves stiffly and without emotion, moving towards you with the intent of grabbing you[if autogender is 1]. The metal man's cock is a hard pillar of metallic flesh that it probably intends on nailing you with[else]. The metal woman's pussy is damp with an oily sheen, showing the automaton's arousal[end if].";
		if autogender is 1:		[male]
			setmongender 3;
			now sex entry is "Female";
			if "Male Preferred" is listed in the feats of Player, now sex entry is "Male";
			now lootchance entry is 33;
		else:
			setmongender 4; [female]
			now sex entry is "Male";
			if "Female Preferred" is listed in the feats of Player, now sex entry is "Female";
			now lootchance entry is 0;


to say losetoautomaton:
	if autogender is 1:
		if HP of Player > 0:
			say "     You submit to the metal man, unwilling to fight the robotic person any longer. ";
		else:
			say "     You are knocked down by the metal man, unable to continue to fight the robotic person any longer. ";
		if Player is female and a random chance of 3 in 4 succeeds:
			say "He grabs you and pins you down beneath him, moving mechanically, but with clear intent. Laying you on the ground beneath him, the metal man moves atop you and sinks his stiff, metal cock into your pussy. His rod is quite hard and is cool at first, but warms up quickly as he thrusts into you with mechanical motion over and over. His rhythm is steady and soon has you moaning beneath him as he drives his [if metalskin is 1]bronze[else if metalskin is 2]aluminum[else if metalskin is 3]cobalt[else if metalskin is 4]steel[end if] shaft into you until you cum. As you orgasm beneath him, you feel the hot pulse of his silvery seed shooting into you, claiming your womb with his mercurial semen. Once he's been drained, he gets up and moves off, searching for a new partner to infect and breed.[impregchance]";
		else if Player is not female and a random chance of anallevel in 4 succeeds:
			say "He grabs you and pins you down beneath him, moving mechanically, but with clear intent. Pushing you onto all fours, the metal man moves atop you and sinks his stiff, metal cock into your ass. His rod is quite hard and is cool at first, but warms up quickly as he thrusts into you with mechanical motion over and over. His rhythm is steady and soon has you moaning beneath him as he drives his [if metalskin is 1]bronze[else if metalskin is 2]aluminum[else if metalskin is 3]cobalt[else if metalskin is 4]steel[end if] shaft into you until [if Player is male]you cum. As you orgasm beneath him, [end if]you feel the hot pulse of his silvery seed shooting into you. This mercurial semen flows into you, claiming your ass as the metal man empties his balls into you. Once he's been drained, he gets up and moves off, searching for a new partner to mount and infect.[mimpregchance]";
		else:
			say "He takes you by the shoulders and firmly pushes you to your knees. Mechanically moving a hand to the back of your head, your face is pressed to his crotch[if HP of Player > 0]. Having conceded the fight, you must acceded to his emotionless demand and[else]. Given the firmness of his emotionless demand, you have little choice but to[end if] open your mouth to welcome his [if metalskin is 1]bronze[else if metalskin is 2]aluminum[else if metalskin is 3]cobalt[else if metalskin is 4]steel[end if] shaft into your mouth. The rod is quite hard and is cool at first, though it warms up quickly as you lick and suck at it.";
			say "     He remains impassive as he thrusts into you with mechanical motion over and over. His rhythm is steady and allows you to work your tongue and palate over the shiny penis. While it does have a faintly metallic taste, there is something enticing about its flavor as well. His lack of external reaction only goads you on further, working with increasing zeal in your attempt to get the unfeeling robot man to cum. After a few minutes of this, you've gotten yourself quite worked up and are finally rewarded for your efforts with the metal man's mercurial seed. Pulse after pulse of silvery cum shoots across your tongue and down your throat. The taste and texture of it may be unusual, but is also strangely exciting, with both the musky tang of semen and the slickness of the flowing metal. Once he's been drained, you are pushed back and he moves off, searching for a new partner to claim and infect.";
	else:
		if HP of Player > 0:
			say "     You submit to the metal woman, unwilling to fight the robotic person any longer. ";
		else:
			say "     You are knocked down by the metal woman, unable to continue to fight the robotic person any longer. ";
		if Player is male and a random chance of 3 in 4 succeeds:
			say "She grabs you and pushes you to the ground, moving mechanically atop you. Her movements may be stiff, but her intent is clear as she grabs your cock and sinks her lubricated pussy down over your [cock size desc of Player] [Cock of Player] shaft. Her [if metalskin is 1]bronze[else if metalskin is 2]aluminum[else if metalskin is 3]cobalt[else if metalskin is 4]steel[end if] lips spread open around your [cock size desc of Player] rod with a soft whirr, opening to be a perfect fit for you[if Cock Length of Player > 30]. Your oversized shaft deforms her metal hide as she rides you[else if Cock Length of Player > 20]. Your enlarged shaft makes a noticeable bulge in her metal hide as she rides you[end if]. The robotic woman's cunt is cool at first, but warms up quickly as you fuck her. Her even, mechanical motions over your cock soon has your rod throbbing and pulsing until you're driven to cum inside her, pumping your hot load into her robotic womb. Her function complete, she pulls off of you, pushes you to the ground and strides off.";
		else:
			say "She grabs you by the head and presses your face between her legs, pushing your lips to her [if metalskin is 1]bronze[else if metalskin is 2]aluminum[else if metalskin is 3]cobalt[else if metalskin is 4]steel[end if] pussy. Those folds are cool and lightly oiled, yielding to your tongue's touch as you set to work. The metal woman remains impassive as you lick her, but shows no intent on letting you go, so you continue attempting to pleasure her, working with increasing zeal as you work all the harder to get the unfeeling robot woman to cum. The only clear signs that it's working is the fact that her pussy grows warmer and wetter as you continue. Eventually, you are met with success of a kind as the automaton presses your head between her thighs and a fresh flow of oily juices soak your face. Apparently satisfied, she pushes you away and strides off.";


to say beattheautomaton:
	say "     Having beaten the metal [if autogender is 1]man[else]woman[end if], the lights in its eyes go out and it crumples to the ground like an unpowered toy. There's a faint electrical hum from it, soft but slowly growing, as if it's working to charge itself up again.";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
	add "Automaton" to infections of FurryList;
	add "Automaton" to infections of MachineList;
	add "Automaton" to infections of MaleList;
	add "Automaton" to infections of BipedalList;
	add "Automaton" to infections of TailList;
	now Name entry is "Automaton"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is ""; [name of the encountered creature at combat start - "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of][if a random chance of 1 in 3 succeeds]The automaton[else if autogender is 1]He[else]She[end if] strikes you with a metal fist![or][if a random chance of 1 in 3 succeeds]The automaton[else if autogender is 1]He[else]She[end if] squeezes your wrist in its painfully strong grip![or][if a random chance of 1 in 3 succeeds]The automaton[else if autogender is 1]He[else]She[end if] batters you hard blows![or][if a random chance of 1 in 3 succeeds]The automaton[else if autogender is 1]He[else]She[end if] knees you in the gut with its metal leg![at random]";
	now defeated entry is "[beattheautomaton]"; [ Text when monster loses. ]
	now victory entry is "[losetoautomaton]"; [ Text when monster wins. ]
	now desc entry is "[automatondesc]"; [ Description of the creature when you encounter it. ]
	now face entry is "a [if Player is female]feminine[else]masculine[end if] version of your human face, but flat and expressionless. Your eyes glow with a [if Playermetalskin is 1]yellow[else if Playermetalskin is 2]blue[else if Playermetalskin is 3]green[else if Playermetalskin is 4]red[end if] light";
	now body entry is "back to human in form, but moves with stiff, mechanical motions as if you're no longer flesh and blood inside"; [ Body. Format as "Your body is [Body of Player]." ]
	now skin entry is "[if Playermetalskin is 1]bronze[else if Playermetalskin is 2]aluminum[else if Playermetalskin is 3]cobalt with a faint blue tint[else if Playermetalskin is 4]steel[end if]";
	now tail entry is ""; [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "[one of]metallic[or][if Playermetalskin is 1]bronze[else if Playermetalskin is 2]aluminum[else if Playermetalskin is 3]cobalt[else if Playermetalskin is 4]steel[end if][or]human-shaped[at random]";
	now face change entry is "your head shifts and changes, becoming a [if Player is female]feminine[else]masculine[end if] version of your old, human face, but stiff and expressionless with [if Playermetalskin is 1]amber[else if Playermetalskin is 2]blue[else if Playermetalskin is 3]green[else if Playermetalskin is 4]red[end if], glowing eyes";
	now body change entry is "feels painful, especially at the joints, stiffening your body. Your muscles and bones seems to change inside you, finally settling back down into a normal, human form. Your body now moves quick stiffly with rather mechanical movements as if you're not quite human inside any longer";
	now skin change entry is "[autoskinchange]";
	now ass change entry is "your ass whirrs mechanically as it changes, becoming a sexy human rump that moves with a stiff, rocking motion as you walk";
	now cock change entry is "throbs and pulses, spurting silvery white semen as your flesh becomes metallic [if Playermetalskin is 1]bronze[else if Playermetalskin is 2]aluminum[else if Playermetalskin is 3]cobalt[else if Playermetalskin is 4]steel[end if]";
	now str entry is 16; [ These are now the creature's stats... ]
	now dex entry is 16; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 16; [ These values may be used as part of alternate combat.]
	now per entry is 16;
	now int entry is 16;
	now cha entry is 16;
	now sex entry is "Male"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 60; [ The monster's starting HP. ]
	now lev entry is 8; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 9; [ Monster's average damage when attacking. ]
	now area entry is "Capitol"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 7; [ Length infection will make cock grow to if cocks. ]
	now Ball Size entry is 2; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 3; [ Size of breasts the infection will try to attain. ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 7; [ Depth of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 4; [ Width of female sex the infection will try to give a player. ]
	now libido entry is 60; [ Target libido the infection will rise towards. ]
	now loot entry is "silver semen"; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]normal[or]unchanged[at random]";
	now type entry is "[one of]human[or]humanoid[or]robotic[at random]";
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


to say autoskinchange:
	now playermetalskin is metalskin;
	say "grows hard and metallic, stiffening into a shifting, flexing skin made of [if Playermetalskin is 1]bronze[else if Playermetalskin is 2]aluminum[else if Playermetalskin is 3]cobalt[else if Playermetalskin is 4]steel[end if]";


Table of Game Objects (continued)
name	desc	weight	object
"silver semen"	"Flowing, mercurial cum."	1	silver semen

silver semen is a grab object.
the usedesc of silver semen is "[silversemenuse]".
it is part of the player.
It is temporary.
silver semen is cum.

to say silversemenuse:
	say "With a little shrug, you tilt your head back and slam down the silvery semen, letting the metallic contents flow down your throat.";
	[puts Automaton as lead monster in case of impregnation]
	repeat with y running from 1 to number of filled rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		if Name entry is "Automaton":
			now MonsterID is y;
			if "Male Preferred" is listed in feats of Player:
				now sex entry is "Male";
			else:
				now sex entry is "Female";
			break;
	infect;

the scent of silver semen is "The contents of the jar has a metallic smell to accompany the musky scent of semen.".

[
when play ends:
	if BodyName of Player is "Automaton":
		if humanity of Player < 10:
			say "     You succumb to your automaton infection.";
		else:
			say "     You survive, but were infected by the automaton.";
			if Player is male:							[MALE/HERM]
				say "     Additional text for a male/herm survivor.";
			else if "Sterile" is not listed in feats of Player:	[F-BREEDABLE]
				say "     Additional text for a female survivor who can become preggers.";
			else:									[F-STERILE]
				say "     Additional text for a female survivor who cannot become preggers.";
]

Automaton ends here.
