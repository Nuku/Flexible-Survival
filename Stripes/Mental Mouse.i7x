Version 2 of Mental Mouse by Stripes begins here.
[Version 2.1 - Alt Attack tweaked]

"Adds a Mental Mouse creature to Flexible Survival's Wandering Monsters table, with impreg chance"


Section 1 - Monster Responses

mousecurse is a number that varies.
mousevic is a number that varies.
mousecounter is a number that varies.

when play begins:
	add { "Mental Mouse" } to infections of hermaphrodite;
	add { "Mental Mouse" } to infections of furry;
	add { "Mental Mouse" } to infections of Rodentlist;

to say mousedesc:
	setmongender 15; [creatures are herm]
	repeat with y running from 1 to number of rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		if name entry is "Mental Mouse":
			now monster is y;
			break;
	choose row monster in Table of Random Critters;
	say "     As you are traveling along, you find your path cut off by a trio of small mice. Well, short mice would be more accurate, as these herms are quite well endowed, despite being only three feet tall. They have large breasts with perky nipples poking from their gray fur. Between their legs, they have a set of male organs that would be good size on a normal man. The mice have lovely, feminine bodies with slender waists and curvy hips. Their nipples and cocks are a soft pink and their ballsacks are covered in soft, gray fur like their bodies. The small rodents grin happily and start to move towards you, speaking in unison. '[one of]Join us!'[or]Come join us in mousedom.'[or]You shall be one of us.'[or]The mouse-lective has chosen you.'[or]Come, be a beautiful mousie with us.'[or]It is wonderful to be a mouse. As you will see.'[or]We shall welcome you into mousehood with us.'[at random]";
	if level of player > 4:
		say "[mousebuff]";
		say "     As the mice draw nearer, there is a rustling behind you as another of these mice pops up behind you[if lev entry is 6 or lev entry is 7], and another[else if lev entry > 7], and then a few more start popping up from all around[end if]. With reinforcements now, this [if lev entry < 6]quartet of mice[else if lev entry < 21]group of [ (lev entry / two ) + one ] mice[else]large group of mice[end if] move in to forcibly welcome you as member of this strange mouse-collective.";
	if mousecurse is 1 and mouse girl is the companion of the player:
		say "     Rachel moves in close beside you. 'I told you all that I'll bring this one in on my own,' she says to the other mice, clearly speaking aloud for your benefit. 'We should not wait any longer. This one is meant to be with us,' they others respond, moving in. It seems that your mate is more independent than most of the other mice in the collective, but is unable to sway the mouse hive-mind into waiting now that they've stumbled across you again.";

to say mousebuff:
	choose row monster in Table of Random Critters;
	now lev entry is level of player minus 1;
	if battleground is "Red" and ( bodyname of player is "Mental Mouse" or mousecurse is 1 ):
		increase lev entry by ( ( a random number between 0 and 250 ) / 100 ); [ +0-2 lvls in Red, lower chance of +2 ]
	if lev entry < 15:
		now dex entry is ( lev entry / 2 ) + 13; [quick dex, int and HP growth early on]
		now int entry is ( lev entry / 2 ) + 10;
		now HP entry is ( lev entry times 7 );
		increase HP entry by a random number between 1 and lev entry;
		increase HP entry by a random number between 1 and lev entry;
		increase HP entry by a random number between 1 and lev entry;
		now wdam entry is ( ( lev entry * 2 ) / 3 ) plus 4;
	else:
		now dex entry is 17 + ( lev entry / 5 ); [normal hard mode dex growth at lvl 15+]
		now int entry is 14 + ( lev entry / 5 ); [same growth for int at lvl 15+]
		now HP entry is 55 + ( lev entry times 4 ); [strong HP growth at lvl 15+]
		increase HP entry by a random number between 1 and lev entry;
		increase HP entry by a random number between 1 and lev entry;
		increase HP entry by a random number between 1 and lev entry;
		now wdam entry is ( lev entry / 3 ) + 9; [normal dmg growth for lvl 15+]
	now monsterHP is HP entry;


to say losetomouse:
	if mouse girl is tamed:
		say "     The victorious mice squeak happily as they pull you into their arms and start snuggling and groping you lustfully. You look over and find Rachel by your side, snuggling up to you as her paw moves to your [if player is male]stiffening cock[else]wet pussy[end if]. Your hands make their way to her breasts as you tease her nipples. Your head is guided over to the stiff mousecock of another and you take it into your mouth readily, finding yourself becoming closer to the busty mice and eager to please them. Your head is stroked as she thrusts into your mouth, dripping her pre down your throat while your mouse mate teases you.";
	else:
		say "     The victorious mice squeak happily as they pull you into their arms and start snuggling and groping you lustfully. Their soft, small bodies rub against you, and you quickly start to become aroused as well. Your hands find their way to the breasts of one of the busty little herms and start to tease her nipples. Your head is guided over to a stiff mousecock and you take it into your mouth readily, finding yourself becoming closer to the busty mice and eager to please them. Your head is stroked as she thrusts into your mouth, dripping her pre down your throat while your grope her bosom.";
	WaitLineBreak;
	if player is male and cock length of player > 12:
		if mouse girl is tamed:
			say "     Rachel, with her paws already stroking your cock, sets herself to licking and kissing along your large length. After some playful teasing, she moves into position to take your huge member into her small pussy. You run your hands over her, helping her to press down onto it. She groans and squeaks, her belly bulging considerably as your penis is stuffed into the three foot tall mouse.";
		else:
			say "     Another of the mice, with her paws already stroking your cock, sets herself to licking and kissing along your large length. Too large for her to take in, she instead works her tongue and lips over it, working to please you in that way. Paws, probably hers, grope and stroke your penis and balls, enticing you to greater levels of arousal.";
	else if player is male:
		say "     [if mouse girl is tamed]Rachel[else]Another of the mice[end if], with her paws already stroking your cock, moves to climb atop it. She releases a soft squeak as her dripping cunt is lowered down over your meaty shaft, making her body quiver in delight. You can feel her wet cunt squeeze and grip around your cock, milking at it for your seed while she rides it.";
	if player is female:
		say "     [if player is not male and mouse girl is tamed]Rachel[else]A third mouse[end if] moves in between your legs, boosting up your hips and getting her hard cock lined up with your pussy. At this point, as aroused as you are, you help as best you can and are soon rewarded with the thrust of her shaft into you, spreading open your wet petals. The small mouse strokes your legs and thighs as her hips rock, pumping her throbbing, leaking penis into you again and again. You moan in delight around your mouthful of mousemeat, as the two eager herms continue to thrust into you.";
	WaitLineBreak;
	say "     You and the mice continue like this for some time, groping, grinding, rubbing and teasing as your excitement grows and grows. You and the mice work to please each other, moving more and more in synch as your lovemaking continues. You can [if mousecurse is 1]intensely [else]almost [end if]feel their pleasure and joy as your closeness to them grows stronger and you all cum in unison. You gulp down the mouse's hot seed from her cock[if player is male] while pumping your own load into the other eager mousie[end if][if player is female] and get a warm blasts of mousecum to fill your womb as well from the other[end if].[impregchance]";
	WaitLineBreak;
	if bodyname of player is "Mental Mouse" or mousecurse is 1:
		say "     When this is all over, the mice back off, stroking your murine body. 'We look forward to you coming and joining with us permanently. Accept us and fully become one of us, of one mind, of one pleasure. Stop fighting it and accept your place among us,' they say softly. 'We will come find you again,' they add before heading off, confident that you will be theirs eventually. You do feel a pull to go off with them, your mouse body feeling the call to be among your own kind, to accept their minds into yours and join them in united mousedom. It takes you considerable effort to get refocused and continue on your way[if mouse girl is tamed], hand in hand with your mate, Rachel[end if].";
		if mouse girl is tamed and companion of player is not mouse girl:
			now the companion of player is mouse girl;
			say "     Rachel is once again at your side, accompanying you through the city as your companion and you feel yourself becoming closer to her and the mouse collective.";
		if mouse girl is tamed:
			decrease humanity of player by a random number between 1 and 5;
			if "Strong Psyche" is listed in feats of player, increase humanity of player by a random number between 0 and 1;
			if "Weak Psyche" is listed in feats of player, decrease humanity of player by a random number between 0 and 1;
			now libido of player is ( libido of player + 1 ) / 3;
		decrease humanity of player by a random number between 1 and 4;
		if HP of player is 0, decrease humanity of player by a random number between 1 and 2;
		if "Strong Psyche" is listed in feats of player, increase humanity of player by a random number between 0 and 1;
		if "Weak Psyche" is listed in feats of player, decrease humanity of player by a random number between 0 and 1;
	else:
		say "     When this is all over, the mice back off, stroking your exhausted body. 'We look forward to you coming and joining with us permanently. Be a mouse with us, of one mind, of one pleasure. You will not regret it, we promise,' they say softly. 'We will come find you again,' they add ominously before heading off, confident that you'll be among their number soon enough. You do feel a pull to pursue them, to give in to mousedom along with them and to enjoy their shapely bodies again and it takes you some effort to clear your head and move on.";
		decrease humanity of player by a random number between 1 and 2;
		if "Strong Psyche" is listed in feats of player, increase humanity of player by a random number between 0 and 1;
		if "Weak Psyche" is listed in feats of player, decrease humanity of player by a random number between 0 and 1;


to say beatthemouse:
	increase mousevic by 1;
	say "     You manage to defeat and drive off the mice. As they leave, they squeak, 'You should not resist us. You have been chosen to be among the mouse collective. None will ever love you as we can.' You rub your aching head, the proximity to these strange mice leaving you a little worn. ";
	if mousevic > 2 and a random chance of 1 in 3 succeeds:
		if mouse girl is the companion of player:
			say "You do spot a stray mouse dazed from the battle and left behind. Her short, sexy body is spread out across the ground, on display for you. Rachel, moving up beside you, runs her paw over your body. You feel excited at the prospect of playing with the prone mouse and move in to take advantage of the opportunity.";
		else:
			say "You do spot a stray mouse dazed from the battle and left behind. Her short, sexy body is spread out across the ground, on display for you.";
			say "     [bold type]Shall you take advantage of this opportunity?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Yes.";
			say "     ([link]N[as]n[end link]) - No.";
			if player consents:
				say "[mouseyvicsex]";
			else:
				say "     Deciding against sticking around, you get your mind back on what you were doing and prepare to get moving.";
	else if bodyname of player is "Mental Mouse" or mousecurse is 1:
		say "Trying to shield your mind as best you can from the scurrying thoughts of the mice, you head quickly on your way.";
	else:
		say "You gather your thoughts and head quickly on your way.";


to say mouseyvicsex:
	if player is male:
		say "     You move up to the defeated mouse and spread her legs, finding her soft pussy hiding beneath her ballsack. You run your fingers over those wet folds, eliciting a soft moan from her. You grin and move in closer, lining up your cock with her snatch and thrust. ";
		if cock length of player > 18:
			say "Your huge glans presses at her much small entrance and slowly spreads her open. She squeaks and squirms as your oversized meat stretches her pussy wide. It is slow going pushing your huge cock into her small body, which eventually starts to stretch around it and becomes bloated with your manmeat. You run your hands over her distended belly and up to her breasts, stroking them and teasing her nipples. Thrusting in earnest now, her body wriggles over your large shaft as best it can with as much of your cock stuffed into it as you can get. The mouse, overwhelmed by so much cock inside her, can only moan and squeak in pleasure, her eyes unfocused and her breathing in hard pants.";
			WaitLineBreak;
			if mouse girl is companion of player:
				say "     Rachel is there beside you as you fuck the overstuffed mousegirl, running her paws over your body, stroking her bulging tummy. She smiles and squeaks happily, glad to see you enjoying one of the sexy mice. Her own cock, quite stiff, is brought to your mouth and you wrap your lips around it, licking and sucking eagerly while you thrust.";
			say "     You continue fucking the mouse beneath you, pounding your oversized cock into her small body until finally you can take no more and groan loudly. The mouse arches her back and squeaks in pleasure as your hot cum blasts into her, bloating her belly even further. Her cock throbs and pulses, blasting her seed across her gray fur[if mouse girl is companion of player]. Rachel cums as well in time with you both, sharing in the pleasure of sex with you both. You gulp down her semen, enjoying your mate's rich flavor[end if]. When you're finally drained and you withdraw, you rub your hand over the bloated mousie's belly. She smiles up at you in a bit of haze. '[one of]Oh, you should come join us. I'd really love to have you do that to me again[or]I can see why you were chosen to be among us. I look forward to that wonderful day[or]You would make a wonderful mouse lover for us all[or]You should come join us soon[at random],' she squeaks before drifting back into a lustful haze, stroking her stuffed tummy. You decide it best to move on before the others come back for her.";
		else if cock length of player > 12:
			say "Your large glans presses at her smaller entrance and spreads her open. She squeaks and moans as your big meat is stuffed into her, making a noticeable bump in her tummy. You run your hands over her soft bellyfur, pressing lightly down on the bulge to feel your own cock throb in her before continuing on to her large breasts. You fondle her lovely tits and tease her nipples while thrusting into her eagerly. The mouse beneath you moans in pleasure and runs her small paws over your hips, then move to start stroking herself.";
			WaitLineBreak;
			if mouse girl is companion of player:
				say "     Rachel is there beside you as you fuck the mouse girl, running her paws over your body and stroking the other mouse's stuffed tummy. She smiles and squeaks happily, glad to see you enjoying one of the sexy mice. Her own cock, quite stiff, is brought to your mouth and you wrap your lips around it, licking and sucking eagerly while you thrust.";
				say "     Your pleasure increases as you continue fucking the mouse beneath you, starting to share in her pleasure. Feeling Rachel's mind touching yours, you can't help but think about their lovely, murine bodies, finding them increasingly beautiful. Despite the realization that she's touching your mind, you are too excited to turn back and continue to pound into the one mouse while sucking off the other, until finally you groan and cum loudly. They squeak in pleasure and Rachel pumps her load down your throat while the well-fucked mouse sprays her own seed across herself even as you fill her, sharing in their orgasm as well. You withdraw slowly, looking down at this lovely mouse and feel a longing to stay with them, to be like them, to give yourself up to their kind. Realizing that your mate is even now trying to convert you, you withdraw and quickly move away from the other mouse. Rachel's paw finds it way into your hand and she smiles coquettishly up at you as you walk off together, somehow unable to remain upset with her.";
			else:
				say "     Your pleasure increases as you continue fucking her, starting to share in her pleasure. You look over her lovely, murine body, finding it increasingly beautiful. Realizing her mind is touching yours, you are too excited to turn back and continue to pound into her until finally you groan and cum loudly. She squeaks in pleasure and sprays her own seed across herself even as you fill her, sharing in her orgasm as well. You withdraw slowly, looking down at this lovely mouse and feel a longing to stay with her, to be like her, to give yourself up to her kind. Realizing that she's even now trying to convert you, you withdraw and quickly move away. Still too weak to pursue you, the mouse squeaks in disappointment.";
			decrease humanity of player by a random number between 1 and 2;
			if "Strong Psyche" is listed in feats of player, increase humanity of player by a random number between 0 and 1;
			if "Weak Psyche" is listed in feats of player, decrease humanity of player by a random number between 0 and 1;
		else:
			say "Your glans presses at her smaller entrance and spreads her open. She squeaks softly as meat is stuffed into her. You run your hands over her soft bellyfur before continuing on to her large breasts. You fondle her lovely tits and tease her nipples while thrusting into her eagerly. The mouse beneath you moans in pleasure and runs her small paws over your hips, then move to start stroking herself.";
			WaitLineBreak;
			if mouse girl is companion of player:
				say "     Rachel is there beside you as you fuck the mouse girl, running her paws over your body and stroking the other mouse's tummy. She smiles and squeaks happily, glad to see you enjoying one of the sexy mice. Her own cock, quite stiff, is brought to your mouth and you wrap your lips around it, licking and sucking eagerly while you thrust.";
				say "     Your pleasure increases as you continue fucking the mouse beneath you, starting to share in her pleasure. Feeling Rachel's mind touching yours, you can't help but think about their lovely, murine bodies, finding them increasingly beautiful. Despite the realization that she's touching your mind, you are too excited to turn back and continue to pound into the one mouse while sucking off the other, until finally you groan and cum loudly. They squeak in pleasure and Rachel pumps her load down your throat while the well-fucked mouse sprays her own seed across herself even as you fill her, sharing in their orgasm as well. You withdraw slowly, looking down at this lovely mouse and feel a longing to stay with them, to be like them, to give yourself up to their kind. Realizing that your mate is even now trying to convert you, you withdraw and quickly move away from the other mouse. Rachel's paw finds it way into your hand and she smiles coquettishly up at you as you walk off together, somehow unable to remain upset with her.";
			else:
				say "     Your pleasure increases as you continue fucking her, starting to share in her pleasure. You look over her lovely, murine body, finding it increasingly beautiful. Realizing her mind is touching yours, you are too excited to turn back and continue to pound into her until finally you groan and cum loudly. She squeaks in pleasure and sprays her own seed across herself even as you fill her, sharing in her orgasm as well. You withdraw slowly, looking down at this lovely mouse and feel a longing to stay with her, to be like her, to give yourself up to her kind. Realizing that she's even now trying to convert you, you quickly move away. Still too weak to pursue you, the mouse squeaks in disappointment.";
			decrease humanity of player by a random number between 1 and 2;
			if "Strong Psyche" is listed in feats of player, increase humanity of player by a random number between 0 and 1;
			if "Weak Psyche" is listed in feats of player, decrease humanity of player by a random number between 0 and 1;
	else:
		say "     You move up to the defeated mouse and run your fingers over her semi-hard cock. It is sheathless and human-like in form. While only somewhat larger than average in size, that seems quite large on her three foot tall body. As you stroke it to full hardness, the dazed mouse moans softly, her paws drifting to her breasts to fondle them. You moan in delight as you ease yourself down onto it, then start riding that throbbing cock. The small mouse squeaks in pleasure, starting to thrust up into you as well.";
		WaitLineBreak;
		if mouse girl is companion of player:
			say "     Rachel is there beside you as you ride the mouse girl, running her paws over your body and stroking your pussy lips as that throbbing cock pumps into it. She smiles and squeaks happily, glad to see you enjoying one of the sexy mice. Her own cock, quite stiff, is brought to your mouth and you wrap your lips around it, licking and sucking eagerly while you thrust.";
			say "     Your pleasure increases as you continue to ride the mouse, starting to share in their pleasure. Feeling Rachel's mind touching yours, you can't help but think about their lovely, murine bodies, finding them increasingly beautiful. Despite the realization that she's touching your mind, you are too excited to turn back and continue to bounce in the lap of the one mouse while sucking off the other, until finally you groan and cum loudly. They squeaks in pleasure and your hips and face are gripped as the two mice pump their hot seed into you, filling you with a rush of warmth. There is a shadowy sensation of their throbbing cocks, tight holes, a blast of release as you share in their orgasm as well. You slide off their cocks slowly, looking down at these lovely mice and feel a longing to stay with them, to be like them, to give yourself up to their kind. Realizing that your mate is even now trying to convert you, you withdraw and quickly move away from the other mouse. Rachel's paw finds it way into your hand and she smiles coquettishly up at you as you walk off together, somehow unable to remain upset with her.";
		else:
			say "     Your pleasure increases as you continue to ride her, starting to share in her pleasure. You look over her lovely, murine body, finding it increasingly beautiful. Realizing her mind is touching yours, you are too excited to turn back and continue to bounce in her lap until finally you groan and cum loudly. She squeaks in pleasure and grips your hips, pumping her seed deep inside you, filling you with a rush of warmth. There is a shadowy sensation of a throbbing cock, a tight hole, a blast of release as you share in her orgasm as well. You slide off her cock slowly, looking down at this lovely mouse and feel a longing to stay with her, to be like her, to give yourself up to her kind. Realizing that she's even now trying to convert you, you quickly move away. Still too weak to pursue you, the mouse squeaks in disappointment.";
		say "[impregchance]";
		decrease humanity of player by a random number between 1 and 2;
		if "Strong Psyche" is listed in feats of player, increase humanity of player by a random number between 0 and 1;
		if "Weak Psyche" is listed in feats of player, decrease humanity of player by a random number between 0 and 1;
		if mouse girl is companion of player:
			decrease humanity of player by a random number between 1 and 4;
			if "Strong Psyche" is listed in feats of player, increase humanity of player by a random number between 0 and 1;
			if "Weak Psyche" is listed in feats of player, decrease humanity of player by a random number between 0 and 1;
			now libido of player is ( libido of player + 1 ) / 3;


Section 2 - Monster Insertion

Table of Random Critters (continued)
name	enemy title	enemy name	enemy type	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	DayCycle	altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now name entry is "Mental Mouse"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is "";
	now enemy name entry is "One";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]While two of the mice, a third jumps onto you, trying to pull you down![or]The mice around you take turns slapping your ass and groping you![or]The herms make a tantalizing display of their bodies, trying to tempt and arouse you with their beautiful, murine forms![or]The horny mice tackle you, trying to pull you into their welcoming arms![at random]";
	now defeated entry is "[beatthemouse]"; [ Text when monster loses. ]
	now victory entry is "[losetomouse]"; [ Text when monster wins. ]
	now desc entry is "[mousedesc]"; [ Description of the creature when you encounter it. ]
	now face entry is "now mouse-like, with large, rounded ears, a cute little nose and twitching whiskers. Your hair has grown back in, but is long, flowing and gray. Your ears, you find, are quite sensitive and seem to resonate slightly with the calls from distant mice";
	now body entry is "quite small, barely three feet tall. Your body has clear, womanly curves to it, with a slender, feminine waist and hips. Your hands are cute, mouse-like paws with nimble digits";
	now skin entry is "soft, gray fur over your";
	now tail entry is "You have a long, thin tail like that of a mouse.";
	now cock entry is "[one of]pink[or]human-like[at random]";
	now face change entry is "your ears start to change, rising up on your head they stretch and grow round, turning into wide cups. They are quite sensitive and twitch at every sound. Your face stretches and reforms, remolding itself into that of a cute mouse to match your round ears";
	now body change entry is "you shrink and change, becoming shorter and shorter. Your body becomes slender and feminine, like a sexy model in miniature, but also mouse-like. Your hands become nimble paws with slender fingers ending in small claws[mousereset]";
	now skin change entry is "soft, gray fur spreads across your body";
	now ass change entry is "a long, slender tail grows in";
	now cock change entry is "becomes human-like in form, with light-pink flesh and sheathless";
	now str entry is 14;
	now dex entry is 15;
	now sta entry is 8;
	now per entry is 10;
	now int entry is 12;
	now cha entry is 15;
	now sex entry is "Both"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 35; [ The monster's starting HP. ]
	now lev entry is 4; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 6; [ Monster's average damage when attacking. ]
	now area entry is "Red"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 8; [ Length infection will make cock grow to if cocks. ]
	now cock width entry is 5; [ Cock width, more commonly used for ball size. ]
	now breasts entry is 2; [ Number of nipples the infection will give a player. ]
	now breast size entry is 5; [ Size of breasts the infection will try to attain. ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 9; [ Depth of female sex the infection will attempt to give a player. ]
	now cunt width entry is 4; [ Width of female sex the infection will try to give a player. ]
	now libido entry is 60; [ Target libido the infection will rise towards. ]
	now loot entry is "cheese"; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 24; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 1; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]curvy[or]cute[at random]";
	now type entry is "[one of]murine[or]mouse-like[at random]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "mmouse"; [ Row used to designate any special combat features, "default" for standard combat. ]
	now BannedStatus entry is false;


Section 3 - Alt Combat

Table of Critter Combat (continued)
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)	altstrike (rule)
"mmouse"	mentalmouse rule	--	--	--	--	--	--	--	--	--


this is the mentalmouse rule:
	choose row monster from Table of Random Critters;
	if a random chance of 5 in 8 succeeds:	[normal]
		retaliate;
	else:						[mental whammy]
		now monsterhit is false;
		follow the intstrike rule;
		if monsterhit is true:
			let rangenum be ( 80 - ( peppereyes * 5 ) );
			let rangenum2 be 120 + lev entry;
			if mousecurse is 1, increase rangenum2 by 20;
			let dam be ( ( wdam entry times a random number from rangenum to rangenum2 ) / 100 );
			if hardmode is true and a random chance of 1 in ( 10 + peppereyes ) succeeds:
				now dam is (dam * 150) divided by 100;
				say "The enemy finds a particular vulnerability in your mental defenses - Critical Hit![line break]";
			say "[one of]Being this close to them, you can feel their minds tugging at yours, weakening your resolve[or]You can feel what must be their united thoughts at the edge of your mind, whispering for you to give in and accept mousedom with them[or]The mice surround you and look at you funny. You thoughts get cloudy and it becomes harder to stay focused on resisting them[at random]! You take [special-style-2][dam][roman type] damage[if mousecurse is 1] and you grow more aroused[end if]!";
			decrease HP of the player by dam; [No armor protection from the mental whammy]
			if mousecurse is 1:
				let libdam be 2;
				increase libdam by a random number between 0 and ( lev entry / 2 );
				if libdam > 10, now libdam is 10;
			if "Horny Bastard" is listed in feats of player, increase libido of player by a random number between 0 and 2;
			if "Cold Fish" is listed in feats of player, decrease libido of player by a random number between 0 and 2;
			follow the player injury rule;
			say "You are [descr].";
		else:
			say "You can feel the touch of their mousey minds at the edge of yours, but you manage to block them out for the moment!";
		now peppereyes is 0;
		if HP of the player > 0 and libido of player < 110:
			wait for any key;
		else:
			if HP of player <= 0, now fightoutcome is 20;
			if libido of player >= 110, now fightoutcome is 21;
			Lose;
		rule succeeds;


Section 4 - Continuous Effect (body corruption)

to say mousereset:
	now mousecounter is 0;

An everyturn rule:
	if bodyname of player is "Mental Mouse":
		if a random number between -20 and 120 > humanity of player:
			increase mousecounter by 1;
			if mousecounter is odd and mousecounter < 8:
				say "     There is a strange sensation in your mind, like little mice nibbling away at it, calling to you, searching for you. You try to block it out, but stray thoughts slip through. '[one of]Come to us[or]There is no point in hiding. We will find you. You belong with us[or]We are a part of you now[or]Come, be a beautiful mousie with us[or]Cheeeeeese[or]Mousemousemousemousemousemousemouse[or]Sexy mice. Beautiful mice. Loving mice[in random order],' the squeaking voices echo as one in the back of your mind.";
			if mousecounter is odd:
				decrease humanity of player by a random number between 1 and 2;
				decrease humanity of player by a random number between 1 and 2;
				if "Strong Psyche" is listed in feats of player, increase humanity of player by a random number between 0 and 2;
				if "Weak Psyche" is listed in feats of player, decrease humanity of player by a random number between 0 and 1;
				if libido of player < 60, increase libido of player by 3;


Section 5 - Cheese

Table of Game Objects (continued)
name	desc	weight	object
"cheese"	"A wedge of tasty cheese stamped with a mouse on the rind."	1	cheese

cheese is a grab object. It is a part of the player. cheese is infectious. The strain of cheese is "Mental Mouse".

The usedesc of cheese is "[eatcheese]";

to say eatcheese:
	say "     You pull out the wedge of cheese and, after double-checking its continued freshness, you take a small nibble of it. That nibble becomes a bite, and then another and another until it's completely gone before you know it.";
	PlayerEat 9;
	if morale of player < 0:
		increase morale of player by 20;
		if morale of player > 0, now morale of player is 0;
	if facename of player is "Mental Mouse" or bodyname of player is "Mental Mouse":
		increase morale of player by 1;
		decrease morale of player by 3;

the scent of cheese is "The cheese smells quite delicious.".


Section 6 - Endings

when play ends:
	if bodyname of player is "Mental Mouse" or ( bodyname of player is "Albino Mouse" and mouse girl is tamed ):
		if humanity of player < 10:
			say "     Something seems to click inside you and the mouse-like call you've been hearing in your mind comes in loud and clear. No longer resisting it, you welcome the other mice into your mind, feeling the joy and happiness of being united with them. There was nothing to fear at all from it, a wonderful union of your mind to theirs. As your own thoughts fade into the background - still there, but secondary - you follow their call back to the mouse nest. Welcomed by the beautiful mice, you snuggle up with them and share in their company, thoughts and sensations as you make love together, truly together.";
		else:
			say "     You resist the call of the mouse collective until the military comes into the city to rescue what survivors they can find. The call becomes more manageable once you are removed from the city, only troubling you at times in dreams. You do feel a shadow of their minds within you after sex as well, the mouse hive-mind peeking in past your lowered defenses and sharing in the pleasure of your orgasm. Your small, sexy body catches the eye of several lovers who find your appearance attractive.";
			if facename of player is "Mental Mouse" and humanity of player < 40:
				say "     Among those you attract to you are several others infected with mouse strains. Becoming your friends and lovers, you split a large apartment with a half-dozen of them. Your new housemates work out very well. There are no conflicts and everyone helps each other out. As you're making out with one of them in the living room, a small orgy starts to grow around you as everyone gets involved. As it continues, you start to share in the pleasure of the others and they in yours. Feeling even greater affection for your lovers, you don't resist it now, letting your mind unite with theirs, forming a new mouse hive-mind with them and reawakening your strain.";
				say "     Your group-mind can feel the other mouse collective in the fallen city. They call to you, but together you are able to resist and form your own group, shutting them out. You continue your lives, but together now, sharing your thoughts and your love for one another. And with a few, select others, turning their bodies into mice and welcoming their beautiful minds into your own. Between those you convert and the numerous children your group has, you spread slowly through the apartment building and eventually buy it outright, making it into a nest for your hidden mouse collective.";

Mental Mouse ends here.
