Version 1 of Automaton for FS by Stripes begins here.
[Version 1.1 - Added player loss oral w/male and randomized outcomes]

"Adds Automaton to Flexible Survival."

Section 1 - Monster Responses

when play begins:
	add { "Automaton" } to infections of girl;
	add { "Automaton" } to infections of guy;

autogender is a number that varies.
metalskin is a number that varies. metalskin is normally 1.
playermetalskin is a number that varies. playermetalskin is normally 1.
automatonending is a number that varies.

to say automatondesc:
	choose row monster from the table of random critters;
	now autogender is a random number between 1 and 2;
	if guy is banned and girl is banned:		[if both types are banned, the fight is aborted and removed from critter table]
		say "     You come across a strange, metallic human. It looks you over with its glowing eyes before striding off as if recognizing that you are not what it is searching for as you don't want to play with it.";
		blank out the whole row;
		now fightoutcome is 19;
		now autogender is 0;
		now combat abort is 1;
	else if girl is banned:
		now autogender is 1; [male]
	else if guy is banned:
		now autogender is 2; [female]
	else if guy is warded and girl is warded:
		now autogender is a random number between 1 and 2;
	else if ishunting is true:	[hunting results in 2/3rds chance to get unwarded option]
		if guy is warded and a random chance of 1 in 3 succeeds:
			now autogender is 2;
		else if girl is warded and a random chance of 1 in 3 succeeds:
			now autogender is 1;
	else if ishunting is false:
		if guy is warded:
			now autogender is 2;
		else if girl is warded:
			now autogender is 1;
	now metalskin is a random number between 1 and 4;
	if autogender > 0:
		say "     Before you is a strange person, completely human in form but covered in a layer of metallic skin. This polished hide is made of [if metalskin is 1]bronze[else if metalskin is 2]aluminium[else if metalskin is 3]cobalt with a faint blue tint[else if metalskin is 4]steel[end if] and seamless. The metal [if autogender is 1]man[else]woman[end if][']s eyes are featureless [if metalskin is 1]amber[else if metalskin is 2]blue[else if metalskin is 3]green[else if metalskin is 4]red[end if] lights. [if autogender is 1]His[else]Her[end if] hair has become metallic in colour to match its skin. This person looks like any normal person you might meet, but transformed into metal and sapped of their will. [if autogender is 1]He[else]She[end if] moves stiffly and without emotion, moving towards you with the intent of grabbing you[if autogender is 1]. The metal man's cock is a hard pillar of metallic flesh that it probably intends on nailing you with[else]. The metal woman's pussy is damp with an oily sheen, showing the automaton's arousal[end if].";
		if autogender is 1:		[male]
			setmongender 3;
			now sex entry is "Female";
			if "Male Preferred" is listed in the feats of the player, now sex entry is "Male";
			now lootchance entry is 33;
		else:
			setmongender 4; [female]
			now sex entry is "Male";
			if "Female Preferred" is listed in the feats of the player, now sex entry is "Female";
			now lootchance entry is 0;


to say losetoautomaton:
	if autogender is 1:
		if HP of player > 0:
			say "     You submit to the metal man, unwilling to fight the robotic person any longer. ";
		else:
			say "     You are knocked down by the metal man, unable to continue to fight the robotic person any longer. ";
		if cunts of player > 0 and a random chance of 3 in 4 succeeds:
			say "     He grabs you and pins you down beneath him, moving mechanically, but with clear intent. Laying you on the ground beneath him, the metal man moves atop you and sinks his stiff, metal cock into your pussy. His rod is quite hard and is cool at first, but warms up quickly as he thrusts into you with mechanical motion over and over. His rhythm is steady and soon has you moaning beneath him as he drives his [if metalskin is 1]bronze[else if metalskin is 2]aluminium[else if metalskin is 3]cobalt[else if metalskin is 4]steel[end if] shaft into you until you cum. As you orgasm beneath him, you feel the hot pulse of his silvery seed shooting into you, claiming your womb with his mercurial semen. Once he's been drained, he gets up and moves off, searching for a new partner to infect and breed.[impregchance]";
		else if cunts of player is 0 and a random chance of anallevel in 4 succeeds:
			say "     He grabs you and pins you down beneath him, moving mechanically, but with clear intent. Pushing you onto all fours, the metal man moves atop you and sinks his stiff, metal cock into your ass. His rod is quite hard and is cool at first, but warms up quickly as he thrusts into you with mechanical motion over and over. His rhythm is steady and soon has you moaning beneath him as he drives his [if metalskin is 1]bronze[else if metalskin is 2]aluminium[else if metalskin is 3]cobalt[else if metalskin is 4]steel[end if] shaft into you[if cocks of player > 0] until you cum. As you orgasm beneath him, [else] until [end if]you feel the hot pulse of his silvery seed shooting into you. This mercurial semen flows into you, claiming your ass as the metal man empties his balls into you. Once he's been drained, he gets up and moves off, searching for a new partner to mount and infect.[mimpregchance]";
		else:
			say "     He takes you by the shoulders and firmly pushes you to your knees. Mechanically moving a hand to the back of your head, your face is pressed to his crotch[if HP of player > 0]. Having conceded the fight, you must acceded to his emotionless demand and [else]. Given the firmness of his emotionless demand, you have little choice but to[end if] open your mouth to welcome his [if metalskin is 1]bronze[else if metalskin is 2]aluminium[else if metalskin is 3]cobalt[else if metalskin is 4]steel[end if] shaft into your mouth. The rod is quite hard and is cool at first, though it warms up quickly as you lick and suck at it.";
			say "     He remains impassive as he thrusts into you with mechanical motion over and over. His rhythm is steady and allows you to work your tongue and palate over the shiny penis. While it does have a faintly metallic taste, there is something enticing about its flavour as well. His lack of external reaction only goads you on further, working with increasing zeal in your attempt to get the unfeeling robot man to cum. After a few minutes of this, you've gotten yourself quite worked up and are finally rewarded for your efforts with the metal man's mercurial seed. Pulse after pulse of silvery cum shoots across your tongue and down your throat. The taste and texture of it may be unusual, but is also strangely exciting, with both the musky tang of semen and the slickness of the flowing metal. Once he's been drained, you are pushed back and he moves off, searching for a new partner to claim and infect.";
	else:
		if HP of player > 0:
			say "     You submit to the metal woman, unwilling to fight the robotic person any longer. ";
		else:
			say "     You are knocked down by the metal woman, unable to continue to fight the robotic person any longer. ";
		if cocks of player > 0 and a random chance of 3 in 4 succeeds:
			say "     She grabs you and pushes you to the ground, moving mechanically atop you. Her movements may be stiff, but her intent is clear as she grabs your cock and sinks her lubricated pussy down over your [cock size desc of player] [cock of player] shaft. Her [if metalskin is 1]bronze[else if metalskin is 2]aluminium[else if metalskin is 3]cobalt[else if metalskin is 4]steel[end if] lips spread open around your [cock size desc of player] rod with a soft whirr, opening to be a perfect fit for you[if cock width of player > 30]. Your oversized shaft deforms her metal hide as she rides you[else if cock length of player > 20]. Your enlarged shaft makes a noticeable bulge in her metal hide as she rides you[end if]. The robotic woman's cunt is cool at first, but warms up quickly as you fuck her. Her even, mechanical motions over your cock soon has your rod throbbing and pulsing until you're driven to cum inside her, pumping your hot load into her robotic womb. Her function complete, she pulls off of you, pushes you to the ground and strides off.";
		else:
			say "     She grabs you by the head and presses your face between her legs, pushing your lips to her [if metalskin is 1]bronze[else if metalskin is 2]aluminium[else if metalskin is 3]cobalt[else if metalskin is 4]steel[end if] pussy. Those folds are cool and lightly oiled, yielding to your tongue's touch as you set to work. The metal woman remains impassive as you lick her, but shows no intent on letting you go, so you continue attempting to pleasure her, working with increasing zeal as you work all the harder to get the unfeeling robot woman to cum. The only clear signs that it's working is the fact that her pussy grows warmer and wetter as you continue. Eventually, you are met with success of a kind as the automaton presses your head between her thighs and a fresh flow of oily juices soak your face. Apparently satisfied, she pushes you away and strides off.";


to say beattheautomaton:
	say "     Having beaten the metal [if autogender is 1]man[else]woman[end if], the lights in its eyes go out and it crumples to the ground like an unpowered toy. There's a faint electrical hum from it, soft but slowly growing, as if it's working to charge itself up again.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Automaton"; [The creature's name as displayed and used in naming descriptions]
	now attack entry is "[one of][if a random chance of 1 in 3 succeeds]The automaton[else if autogender is 1]He[else]She[end if] strikes you with a metal fist![or][if a random chance of 1 in 3 succeeds]The automaton[else if autogender is 1]He[else]She[end if] squeezes your wrist in its painfully strong grip![or][if a random chance of 1 in 3 succeeds]The automaton[else if autogender is 1]He[else]She[end if] batters you hard blows![or][if a random chance of 1 in 3 succeeds]The automaton[else if autogender is 1]He[else]She[end if] knees you in the gut with its metal leg![at random]";
	now defeated entry is "[beattheautomaton]"; [ Text when monster loses. Change 'template' as above. ]
	now victory entry is "[losetoautomaton]"; [ Text when monster wins. Change 'template' as above. ]
	now desc entry is "[automatondesc]"; [ Description of the creature when you encounter it. ]
	now face entry is "a [if cunts of player > 0]feminine[else]masculine[end if] version of your human face, but flat and expressionless. Your eyes glow with a [if playermetalskin is 1]yellow[else if playermetalskin is 2]blue[else if playermetalskin is 3]green[else if playermetalskin is 4]red[end if] light";
	now body entry is "back to human in form, but moves with stiff, mechanical motions as if you're no longer flesh and blood inside"; [ Body Description, format as the text "Your body is (your text)." ]
	now skin entry is "[if playermetalskin is 1]bronze[else if playermetalskin is 2]aluminium[else if playermetalskin is 3]cobalt with a faint blue tint[else if playermetalskin is 4]steel[end if]";
	now tail entry is ""; [ Tail desc., written as a full sentence or left blank for none. ]
	now cock entry is "[one of]metallic[or][if playermetalskin is 1]bronze[else if playermetalskin is 2]aluminium[else if playermetalskin is 3]cobalt[else if playermetalskin is 4]steel[end if][or]human-shaped[at random]";
	now face change entry is "your head shifts and changes, becoming a [if cunts of player > 0]feminine[else]masculine[end if] version of your old, human face, but stiff and expressionless with [if playermetalskin is 1]amber[else if playermetalskin is 2]blue[else if playermetalskin is 3]green[else if playermetalskin is 4]red[end if], glowing eyes";
	now body change entry is "feels painful, especially at the joints, stiffening your body. Your muscles and bones seems to change inside you, finally settling back down into a normal, human form. Your body now moves quick stiffly with rather mechanical movements as if you're not quite human inside any longer";
	now skin change entry is "[autoskinchange]";
	now ass change entry is "your ass whirrs mechanically as it changes, becoming a sexy human rump that moves with a stiff, rocking motion as you walk";
	now cock change entry is "throbs and pulses, spurting silvery white semen as your flesh becomes metallic [if playermetalskin is 1]bronze[else if playermetalskin is 2]aluminium[else if playermetalskin is 3]cobalt[else if playermetalskin is 4]steel[end if]";
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
	now cocks entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 7; [ Length infection will make cock grow to if cocks. ]
	now cock width entry is 5; [ Cock width, more commonly used for ball size. ]
	now breasts entry is 2; [ Number of breasts the infection will give a player. ]
	now breast size entry is 3; [ Size of breasts the infection will try to attain. ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 7; [ Depth of female sex the infection will attempt to give a player. ]
	now cunt width entry is 4; [ Width of female sex the infection will try to give a player. ]
	now libido entry is 60; [ Target libido the infection will rise towards. ]
	now loot entry is "silver semen"; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]normal[or]unchanged[at random]";
	now type entry is "[one of]human[or]humanoid[or]robotic[at random]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default"; [ Row used to designate any special combat features, "default" for standard combat. ]

to say autoskinchange:
	now playermetalskin is metalskin;
	say "grows hard and metallic, stiffening into a shifting, flexing skin made of [if playermetalskin is 1]bronze[else if playermetalskin is 2]aluminium[else if playermetalskin is 3]cobalt[else if playermetalskin is 4]steel[end if]";


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
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Automaton":
			now monster is y;
			if "Male Preferred" is listed in feats of player:
				now sex entry is "Male";
			else:
				now sex entry is "Female";
			break;
	infect;

the scent of silver semen is "The contents of the jar has a metallic smell to accompany the musky scent of semen.".

[
when play ends:
	if bodyname of player is "Automaton":
		if humanity of player < 10:
			say "     You succumb to your automaton infection.";
		else:
			say "     You survive, but were infected by the automaton.";
			if cocks of player > 0:							[MALE/HERM]
				say "     Additional text for a male/herm survivor.";
			else if "Sterile" is not listed in feats of player:	[F-BREEDABLE]
				say "     Additional text for a female survivor who can become preggers.";
			else:									[F-STERILE]
				say "     Additional text for a female survivor who cannot become preggers.";
]

Automaton for FS ends here.
