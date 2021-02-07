Version 2 of Siamese Cats by Stripes begins here.
[Version 2.1 - Hard Mode adjustment]
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]
"Adds a conjoined pair of Siamese Cats as a creature to Flexible Survival's Wandering Monsters table"


Section 1 - Creature Responses

[ Use To say for overlong behaviors that would make the table difficult to read and understand. Typically needed if there are a lot of cock/species/cunt checks. ]

siamesegender is a text that varies.
Siamgender is a thing.
Siamgender can be male or female.
Definition: Siamgender is male:
	if siamesegender is "male":
		yes;
	else:
		no;

Definition: Siamgender is female:
	if siamesegender is "female":
		yes;
	else:
		no;

malecatHP is a number that varies.
femalecatHP is a number that varies.

to say siamesecatdesc:
	setmongender 19; [creatures are mixed/variable]
	choose row MonsterID from the Table of Random Critters;
	let debit be 0;
	if HardMode is true and level of Player > 5, let debit be level of Player - 5;
	now dex entry is 18 + ( debit / 5 ); [set to midpoint]
	now wdam entry is 5 + ( debit / 3 ); [set to midpoint]
	now malecatHP is HP entry;
	now femalecatHP is HP entry;
	say "     As you are moving along, a pair of felines drop down in front of you. They are a duo of slinky Siamese cats, a boy and a girl, identical save for gender. They have cream colored fur with darker fur around their faces and at the ends of their limbs. They are both quite naked, except for the red, belled collars they have around their necks. As you look them over, you notice that they are joined together at the end of their tails.";
	if "Male Preferred" is listed in feats of Player:			[MALE-PREF PLAYER]
		say "     They stare at you for a moment with their bright, blue eyes and angular features, as if sizing you up like a post they may wish to scratch. The female speaks to her twin, 'I think I'll play with this one, if I may.' And with that, she takes the lead and attacks.";
		decrease dex entry by 2; [as if male before swap]
		increase wdam entry by 1;
		say "[swaptofemale]";
	else if "Female Preferred" is listed in feats of Player:	[FEMALE-PREF PLAYER]
		say "     They stare at you for a moment with their bright, blue eyes and angular features, as if sizing you up like a post they may wish to scratch. The male speaks to his twin, 'I think I'll play with this one, if I may.' And with that, he takes the lead and attacks.";
		increase dex entry by 2; [as if female before swap]
		decrease wdam entry by 1;
		say "[swaptomale]";
	else if Player is puremale:		[MALE PLAYER]
		say "     They stare at you for a moment with their bright, blue eyes and angular features, as if sizing you up like a post they may wish to scratch. The female speaks to her twin, 'I think I'll play with this one, if I may.' And with that, she takes the lead and attacks.";
		decrease dex entry by 2; [as if male before swap]
		increase wdam entry by 1;
		say "[swaptofemale]";
	else if Player is purefemale:		[FEMALE PLAYER]
		say "     They stare at you for a moment with their bright, blue eyes and angular features, as if sizing you up like a post they may wish to scratch. The male speaks to his twin, 'I think I'll play with this one, if I may.' And with that, he takes the lead and attacks.";
		increase dex entry by 2; [as if female before swap]
		decrease wdam entry by 1;
		say "[swaptomale]";
	else:										[HERM/NEUTER PLAYER]
		let flip be a random number from 1 to 2;
		say "     They stare at you for a moment with their bright, blue eyes and angular features, as if sizing you up like a post they may wish to scratch. They both start to speak up at once, wanting to be the first to go. They argue for a moment, but decide to flip for it before you can try sneaking away[if flip is 1]. It comes up heads and the male steps forward to confront you[else]. It comes up tails and the female steps forward to confront you[end if].";
		if flip is 1:
			increase dex entry by 2; [as if female before swap]
			decrease wdam entry by 1;
			say "[swaptomale]";
		else:
			decrease dex entry by 2; [as if male before swap]
			increase wdam entry by 1;
			say "[swaptofemale]";

to say siameseattack:
	if a random chance of 2 in 7 succeeds:
		[Dmg calc for first blow]
		choose row MonsterID from the Table of Random Critters;
		let dammy be ( wdam entry times a random number from 80 to 120 ) divided by 100;
		if HardMode is true and a random chance of 1 in 10 succeeds:
			now dammy is (dammy * 150) divided by 100;
			say "The enemy finds a particular vulnerability in your defense - Critical Hit![line break]";
		let absorbby be 0; [***to be fixed***]
		if "Toughened" is listed in feats of Player:
			increase absorbby by dammy divided by 5;
		decrease HP of Player by dammy;
		increase HP of Player by absorbby;
		let T be a random number between 1 and 4;
		if T is 1:
			say "The [siamesegender] feline in front of you charges in with [if siamgender is male]his[else]her[end if] claws[if siamgender is male]. He[else]. She[end if] growls angrily and slashes at you! You take [special-style-2][dammy][roman type] damage!";
			if absorbby > 0:
				say "     You prevent [absorbby] damage!";
			say "     After its attack, it lowers its stance and the [if siamgender is male]female[else]male[end if] cat twirls across [if siamgender is male]his[else]her[end if] back and moves to the forefront. The second feline charges in to attack you now.";
		if T is 2:
			say "The [siamesegender] cat attacking you sends a whirling kick against your side! You take [special-style-2][dammy][roman type] damage!";
			if absorbby > 0:
				say "     You prevent [absorbby] damage!";
			say "     As [if siamgender is male]his[else]her[end if] flip ends, the other cat is already spinning forward with them, giving you a new attacker to face.";
		if T is 3:
			say "The [siamesegender] feline strikes your chest with and open-palmed strike, knocking out your breath and forcing you to step back! You take [special-style-2][dammy][roman type] damage!";
			if absorbby > 0:
				say "     You prevent [absorbby] damage!";
			say "     As you try to recover, [if siamgender is male]he[else]she[end if] does a backflip while the other slides under [if siamgender is male]him[else]her[end if], taking the forefront in the attack.";
		if T is 4:
			say "With an agile slide behind you, the [siamesegender] one moves behind you and grabs your arms, twisting them painfully behind you! You take [special-style-2][dammy][roman type] damage!";
			if absorbby > 0:
				say "     You prevent [absorbby] damage!";
			say "This leaves you open at the front for the [if siamgender is male]female[else]male[end if] to strike and lead the attack against you.";
		if siamgender is male:
			say "[line break][swaptofemale]";
		else:
			say "[line break][swaptomale]";
	let T be a random number between 1 and 4;
	if T is 1:
		say "With a quick spin through the air, the [siamesegender] cat kicks your side!";
	if T is 2:
		say "Growling menacingly, the [siamesegender] feline rakes [if siamgender is male]his[else]her[end if] claws across your chest!";
	if T is 3:
		say "In a flurry of measured blows, the [siamesegender] feline manages to make several quick strikes against you!";
	if T is 4:
		say "The feline drops quickly to the ground and sweeps with [if siamgender is male]his[else]her[end if] leg, knocking you to the ground. You try to get back up quickly, but have bruised your [one of]knee[or]shoulder[or]ribs[or]elbow[or]hip[at random] when you fell!";


to say swaptomale:
	choose row MonsterID from the Table of Random Critters;
	now femalecatHP is monsterHP; [current HP saved as female]
	now monsterHP is malecatHP; [male HP made current]
	now siamesegender is "male"; [male now current cat]
	now sex entry is "Female"; [male cat seeks to make player female]
	decrease dex entry by 4;
	increase wdam entry by 2;
	say "     The [bold type]male[roman type] cat is now your opponent![line break]";


to say swaptofemale:
	choose row MonsterID from the Table of Random Critters;
	now malecatHP is monsterHP; [current HP saved as male]
	now monsterHP is femalecatHP; [female HP made current]
	now siamesegender is "female"; [female now current cat]
	now sex entry is "Male"; [female cat seeks to make player male]
	increase dex entry by 4;
	decrease wdam entry by 2;
	say "     The [bold type]female[roman type] cat is now your opponent![line break]";


to say losetosiamesecat:
	say "     Having bested you, the two cats look you over. 'I beat [']em,' the [siamesegender] purrs to the other, 'so I get to go first.' That said, the [siamesegender] steps forward and grabs you, getting you into position for a little fun while they both remove your remaining clothes.";
	if siamgender is male:
		if Player is female:
			say "     The tom gets you onto all fours and lines up his hard cock with your pussy. His russet-brown cock teases at your folds as he purrs in your ear. This quickly gets you excited and soon you're moaning for him to mount you. Grinning, he nibbles your ear and slowly slides himself into you.";
		else:
			say "     The tom gets you onto all fours and lines up his hard cock with your ass. He grinds it between your cheeks slowly as he purrs in your ear. You squirm nervously a little, but don't pull away from the exotic feline. He shifts his position, letting the glans of his russet-brown, human-like cock tease at your back entrance. You can feel his precum leaking out, quickly getting it nice and slick. It also has the effect of getting you excited and soon you moan softly for him to mount you. Grinning, he nibbles your ear and slowly slides himself into you.";
		if Player is male:
			say "     The female takes advantage of your position to move underneath you and start licking and kissing your cock, making you moan. Her raspy tongue plays across your shaft before she wraps her lips around it and takes it into her warm muzzle. She begins to slowly work over it, licking and sucking while you're getting fucked.";
		else:
			say "     The female takes advantage of your position to move in front of you. Taking your head in her paws, she presses your face between her legs, pushing it against her wet pussy. The fight clearly got her excited and her scent fills your nose, further arousing you. She moans and purrs loudly as you start to lick her.";
		WaitLineBreak;
		say "     The male behind you slides his hard shaft in and out of you. His paws stroke over your hips, sharp claws against your skin as if to keep you in place, but by this point, you are lost to the lust and have no interest in removing that cock that's fucking you so nicely. His pace is measured and disciplined, hitting all your sensitive spots and steadily building your arousal, making you moan and press back into each firm thrust.";
		if Player is male:
			say "     The female beneath you works at your cock with zeal, giving it almost unending attention. She only slides her muzzle off it occasionally to lick further back over your balls and spread hole as the male fucks you. You can hear him moan softly and poke you with his claws a little harder whenever her tongue is back there and brushes against his cock while licking you.";
		else:
			say "     The female in front of you rubs your head and ears while holding you to her pussy, sharp claws also poking free just slightly as they knead your flesh. Her hips quiver a little as you work your tongue over and into that sweet puss of hers. You run over her wet lips and tease her clit again and again, which makes her mewl in delight.";
		if Player is female:
			say "     You can feel that cock drive into your pussy again and again, making your hips quiver as you get closer to your climax. His paws knead at your ass, claws poking at it as he thrusts. Your vaginal walls squeeze around his hard meat as your juices leak out over his balls and your thighs.";
		else:
			say "     You can feel that hard cock drive into your ass again and again, making your hips quiver as you get closer to cumming. His paws knead at your ass, claws poking at it as he thrusts. Your tight ring squeezes around his hard meat as his penis presses against your prostate with each firm push into your rear.";
		WaitLineBreak;
		if Player is male:
			say "     The feline's rough tongue continues licking and sucking at your cock, lapping your precum from your tip. Glancing over, you can see her fingering herself as she does so. The sight of her fingers sinking into her wet pussy is enough to push you over the edge and your cock throbs in her muzzle, unleashing shot after shot of your hot seed into her waiting mouth. From the loud moans she's making under you, you suspect that she's quite pleased with her treat and cumming as well.";
		else:
			say "     The female grips your head more firmly and starts grinding her wet puss to your face as her moans get louder and louder. Soon enough, your playful tongue pushes her over the edge and she cums hard, further soaking you with her sweet juices. You lick and lap them up eagerly while your pussy clamps down on the cock filling you. You moan and push back against the male as your orgasm hits, spilling your juices over his shaft. Above you, you can feel the female lean a little forward and can hear the soft sounds of her kissing the tom fucking you.";
		if Player is female:
			say "     With your climax, you squeeze your dripping pussy around the feline's hard cock, inner walls quivering around it. He mewls in pleasure and slams his dick into you again and again until you're moaning and mewling as well. Hearing that, he pushes himself deep inside you and unleashes his hot, feline seed. You can feel his hot cum flowing into you, painting the back of your vagina and flowing up into your womb.[impregchance]";
		else:
			say "     With your orgasm, you squeeze your tight ass around the feline's hard cock, inner muscles quivering around it. He mewls in pleasure and slams his dick into you again and again, pounding your prostate until you're moaning and mewling as well. Hearing that, he pushes himself deep inside you and unleashes his hot, feline seed. You can feel his hot cum flowing into you, filling your bowels with his thick load.[impregchance]";
		say "     The three of you continue to thrust and grind against one another until you are all satisfied and your orgasms wind down. The male slides himself slowly from you, some cum leaking out of your well-used hole before you can squeeze it shut to keep the rest warm and wet inside you. As the female moves back, you sag to the ground, panting softly and enjoying the afterglow while the pair head off, hand in hand.";
	else:
		if Player is male:
			say "     She pushes you over onto your back and straddles you. She grinds her wet pussy down onto your [CockName of Player] cock. You moan as you feel her wet lips sliding along your stiffening length, getting it nice and slick. After some very pleasant rubbing, she reaches down and guides your hard length into her cunt.";
		else:
			say "     She pushes you over onto your back and grabs one of your legs. She slides herself between your legs, one dark brown leg under your raised one and the other over on the other side. Scissored with you like this, she grinds her wet folds against yours, making you moan.";
		if Player is female:
			say "     The tom mewls softly as he eyes your pussy, but cannot have it while his female partner is playing with you. His stiff cock, human-like and a russet brown in color, throbs as he moves to your head. His precum drips down onto your lips as he brings it over your mouth. You lick away the pre from your lips, moaning softly at its enticing flavor. When he brings it down to your lips, they part easily, letting him slide it into your mouth.";
		else:
			say "     The tom mewls softly as he watches his interlinked partner riding your hard cock. Not wanting to be left out, he moves to your head, positioning his stiff cock, human-like and russet brown, over you. His precum drips down onto your lips as he brings it over your mouth. You lick away the pre from your lips, moaning softly at its enticing flavor. When he brings it down to your lips, they part easily, letting him slide it into your mouth.";
		WaitLineBreak;
		if Player is male:
			say "     Riding your cock slowly, the female runs her paws over your chest and kneads at it with her paws. You can feel her sharp claws against your skin, making you shiver a little. Her wet puss squeezes firmly around your cock each time she pushes her hips down and takes it into her, your hips thrusting up in response.";
		else:
			say "     The feline between your legs moanpurrs softly as she works her pussy against yours. Her paws scritch along your leg, running the tips of her claws over your skin makes a butterfly with you. Her soft folds slide against yours as you both get more and more wet with the mix of your juices. Her muzzle plays against your ankle and she starts nibbling on it.";
		say "     You lick and suck at the tom's hard cock, moaning softly around it as his female partner plays with you. His paws move to stroke your head and ears as he gently thrusts between your lips. His pre leaks out onto your tongue and you happily lap it up, lost to the lust of the two felines playing with you.";
		if Player is male:
			say "     The female rides you harder and faster now, picking up the pace as her excitement builds. She wraps her arms around her male partner, partially for support and partially so she can start nibbling at his neck. He purrs softly at that and tilts his head to the side.";
		else:
			say "     The female's hips grind against you harder and faster as her excitement builds. You can feel her claws and teeth along your leg as she scritches and nibbles along it. Her wet puss and soft folds feel so nice against you, making you moan all the louder.";
		WaitLineBreak;
		say "     The tom's thrusts pick up, pumping himself between your wet lips faster. His paws hold your head steady as he thrusts into you again and again. His precum flows steadily into you until finally he throws his head back and mrowls in ecstasy, shooting thick cum into your mouth and down your throat. You gulp it down greedily, lustfully eager to have this kitty's seed in your tummy, moaning loudly as you cum as well.";
		if Player is male:
			say "     Watching the male cumming and feeling you set off moments later, shooting your hot seed into her eager pussy. She grinds down onto your firmly and squeezes her pussy around you tightly, climaxing as well. Her inner walls flutter around you, milking your shaft for as much as you'll give. Your hips buck, thrusting into her until you're drained.";
		else:
			say "     Watching the male cumming and feeling you set off moments later, she grinds herself against your quivering pussy, moaning happily in response. Your crotch is soaked moments later as she arches her back and cums hard, murrrowling as her orgasm shoots through her. Your hot juices intermingle with hers in an arousing scent of lust hanging around you and the two felines.";
		say "     The three of you continue to thrust and grind against one another until you are all satisfied and your orgasms wind down. The male slides himself slowly from you, some cum dribbling out onto your lips, which you quickly lap up. He strokes a paw across your cheek before getting up. As the female gets up, they wrap their arms around one another, smiling down at their exhausted plaything. You lay there, enjoying the afterglow as they walk off, hand in hand.";


to say beatthesiamesecat:
	say "     As you manage to finish off your [siamesegender] opponent, the other one grows woozy and collapses as well.";
	if (Libido of Player > 29 or "Dominant" is listed in feats of Player) and player is not neuter:
		say "     They mewl softly, beaten now. Looking them over, you consider playing with one of them.";
		say "     [bold type]Do you want to have some fun with one of the Siamese twins?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if Player consents:
			decrease Libido of Player by 10;
			LineBreak;
			say "     Deciding to have some quick fun, you start to pull off your clothes.";
			say "     [bold type]Now which one would you like, the male or the female?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Male.";
			say "     ([link]N[as]n[end link]) - Female.";
			if Player consents:								[CHOSE MALE KITTY]
				LineBreak;
				if Player is purefemale:		[FEMALE PLAYER]
					say "[siamsex1]";
				else if Player is puremale:	[MALE PLAYER]
					say "[siamsex2]";
				else:	[HERM PLAYER]
					say "     Well, with your dual equipment, you find yourself with one last decision. What to do with your feline plaything?[line break]";
					say "     [bold type]Would you like to ride the kitty's cock or fill that sweet ass of his?[roman type][line break]";
					LineBreak;
					say "     ([link]Y[as]y[end link]) - Get fucked.";
					say "     ([link]N[as]n[end link]) - Fuck the kitty.";
					if Player consents:
						LineBreak;
						say "[siamsex1]";
					else:
						LineBreak;
						say "[siamsex2]";
			else:										[CHOSE FEMALE KITTY]
				LineBreak;
				if Player is purefemale:		[FEMALE PLAYER]
					say "[siamsex3]";
				else if Player is puremale:	[MALE PLAYER]
					say "[siamsex4]";
				else:	[HERM PLAYER]
					say "     Well, with your dual equipment, you find yourself with one last decision. What to do with your feline plaything?";
					say "     [bold type]Would you like to fill the kitty's hot pussy or have her eat you out?[roman type][line break]";
					LineBreak;
					say "     ([link]Y[as]y[end link]) - Fuck the kitty.";
					say "     ([link]N[as]n[end link]) - Oral.";
					if Player consents:
						LineBreak;
						say "[siamsex4]";
					else:
						LineBreak;
						say "[siamsex3]";
		else:
			LineBreak;
			say "     You decide it would probably be for the best if you didn't play with the kitties and leave them there.";
	else:
		say "     You turn away to depart, leaving the kitties there.";


to say siamsex1:	[ride cock]
	say "     Having come to the decision that you want something hard to fill you, you roll the male over onto his back and straddle him. With a hand on his chest and the other at his cock, you start to stroke him to erection. You grind your wet pussy down onto his shaft before lining it up so you can take him in. With a soft moan of pleasure, you ease down, feeling that russet brown shaft sliding inside you.";
	say "     You rock your hips and start to ride the feline's cock, making him mewl cutely beneath you. Your hands stroke his chest, petting him to get him to purr louder. His cock throbs inside you as he starts to thrust up into you, starting to recover from the fight enough to join in.";
	WaitLineBreak;
	say "     And speaking of recovering, his female twin starts to rouse as well and moves closer. You reach over and start to play with her pussy with one paw while continuing to stroke the tom's chest with the other. They purr happily, nuzzling and kissing until finally the cute male has had enough and his hot seed shoots into you. At almost the same point, the female's pussy quivers around your fingers and her hot juices flow. Your own climax quickly follows, milking at the kitty's cock as you watch the conjoined pair orgasm.[impregchance]";
	say "     After a moment to rest and recover, you pull off and gather your clothes and gear, leaving the exhausted felines snuggled up against one another.";


to say siamsex2:	[fuck ass]
	say "     Wanting to have your way with the cute kitty's bottom, you head over to the male and roll him over onto all fours. He mewls cutely and squirms a little, but doesn't pull away as you line up your cock with his tailhole. You rock your hips, grinding against his cheeks and leaking precum between them.";
	say "     After a little teasing like this, you start to sink into his tight rump. He releases a soft mewl and stretches his paws forward, kneading reflexively. You pet his back and squeeze his rump, calling him a good kitty. Once you're hilted in his ass, you pause for a few breaths before starting to thrust. Reaching around, you can feel his cock has gotten quite hard as his excitement builds and he is soon pushing back into your thrusts.";
	WaitLineBreak;
	say "     The female twin has also started to recover and she comes closer. You reach over and start to play with her pussy with one hand while continuing to stroke the tom's back and bottom. They purr happily, nuzzling and kissing until finally you reach your peak and drive your cock deep inside him. Unleashing your hot seed, you pump is bottom full of your thick cum.";
	say "     The male mrowls as he feels your cum shooting into his bowels. You feel his ass tighten around you, spasming as he cums moments later, shooting his seed onto the ground beneath him. At that same time, his female partner moans and clenches her pussy around your fingers as her orgasm strikes alongside his.";
	say "     Once you are spent, you take a moment to rest and recover before pulling your cock free. You gather up your clothes and gear, leaving the exhausted felines snuggled up against one another.";


to say siamsex3:	[FF oral]
	say "     Deciding to put that feline's raspy tongue to good use, you guide her face between your legs and press her muzzle to your pussy. She mewls softly and squirms, but quickly sets her tongue to work. You moan softly as you feel her licking along your wet folds.";
	say "     You run your fingers through her headfur and scritch her large ears, making her purr all the more. She also gets more and more into the task before her, showing that she's clearly had some practice at this. Her tongue is playful and talented, while her lips kiss and suck at your pussy lips and clit as well.";
	WaitLineBreak;
	say "     The male twin has also started to recover and he comes closer. You reach over and start to play with his cock with one hand while continuing to pet the good kitty femme with the other. They purr happily, the male nuzzling and kissing his partner until you finally reach your peak and press her face to your pussy as you cum. Your hot juices flow out over her tongue and across her muzzle[if Player is male]. Your cock throbs and shoots its hot load across the back of her head and down her body[end if].";
	say "     As your orgasm rushes through you, you can feel the tom's cock throb in your hand, spraying his seed across the ground while the female's rear trembles. It seems she's been fingering herself while playing with you and the conjoined pair mrowl in delight as they cum.";
	say "     Once your orgasm passes, you take a moment to rest and recover before pushing the female back. You gather up your clothes and gear, leaving the exhausted felines snuggled up against one another.";


to say siamsex4:	[fuck pussy]
	say "     Wanting a crack at that feline's tight cunt, you roll her onto her back and spread her legs. She mewls cutely and squirms a little, but doesn't pull away as you line up your cock with her wet folds. You stroke your cock against her, then tease her pussy's lips with your tip.";
	say "     After a little teasing like this, you start to sink into her snug, wet hole. She releases a soft mewl and wiggles her back against the ground, paws kneading in the air. You pet her tummy, then move your hand up to caresses her breasts. Her nipples poke lightly from her soft fur and you tease them as well, getting another soft mewl from her.";
	WaitLineBreak;
	say "     The male twin has also started to recover and he comes closer. You reach over and start to play with his cock with one hand while continuing to play with her breasts with the other. They purr happily, nuzzling and kissing until you finally reach your peak and thrust hard into her. With that last thrust, your cock throbs inside her, unleashing your hot seed into her.";
	say "     The female mrowls as she feels your cum shooting into her vagina and flowing into her womb. You feel her pussy spasm around you, trembling all around you as her orgasm hits. The tom's cock throbs in your hand as well, shooting his white seed across both their bodies as his orgasm hits alongside hers.";
	say "     Once you are spent, you take a moment to rest and recover before pulling your cock free. You gather up your clothes and gear, leaving the exhausted felines snuggled up against one another.";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Siamese Cat";
	add "Siamese Cat" to infections of FelineList;
	add "Siamese Cat" to infections of FurryList;
	add "Siamese Cat" to infections of NatureList;
	add "Siamese Cat" to infections of MaleList;
	add "Siamese Cat" to infections of FemaleList;
	add "Siamese Cat" to infections of BarbedCockList;
	add "Siamese Cat" to infections of SheathedCockList;
	add "Siamese Cat" to infections of BipedalList;
	add "Siamese Cat" to infections of TailList;
	now Name entry is "Siamese Cat"; [Name of your new Monster]
	now enemy title entry is "Siamese Cat Twins";
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 1; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[siameseattack]";
	now defeated entry is "[beatthesiamesecat]";
	now victory entry is "[losetosiamesecat]"; [Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "[siamesecatdesc]"; [ Description of the creature when you encounter it.]
	now face entry is "a feline head with large ears and a darker area over your muzzle and face"; [ Face description, format as "Your face is (your text)."]
	now body entry is "slender and feline in form, with sharp claws on your paw-like hands"; [ Body Description, format as "Your body is (your text)."]
	now skin entry is "smooth, creamy fur which grows darker at the ends of your limbs to cover your"; [ skin Description, format as "Looking at yourself, your body is covered in (your text) skin"]
	now tail entry is "You have a long, slender cat's tail covered in dark fur."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "russet brown"; [ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "it shifts into a feline muzzle. Your ears become large and dark colored, as does your muzzle and much of your face"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "it becomes slender and vaguely feline in form. Your arms end in dexterous paws with sharp, retractable claws"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "it grows a coat of smooth, glossy fur. This fur is a cream color on most of your body, but darker at the ends of your limbs"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "a slender, feline tail covered in dark brown fur extends from your spine"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it takes on a russet brown hue, but otherwise human-like"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 14;
	now dex entry is 16;
	now sta entry is 10;
	now per entry is 14;
	now int entry is 12;
	now cha entry is 14;
	now sex entry is "Female"; [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 39;
	now lev entry is 5; [ Level of the Monster, you get this much XP if you win, or this much XP halved if you loose ]
	now wdam entry is 6; [Amount of Damage monster Does when attacking.]
	now area entry is "Hospital"; [ Location of monster, in this case the City Hospital]
	now Cock Count entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 7; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 1; [ Size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	now Nipple Count entry is 2; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 3; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex=male, usually zero. ]
	now Cunt Count entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 7;
	now Cunt Tightness entry is 3;
	now SeductionImmune entry is false;
	now libido entry is 40; [ Will raise the player's libido towards this amount]
	now loot entry is ""; [ Dropped item, if any ]
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]agile[or]acrobat's[or]slender[at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "feline"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
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
"Siamese Cat Infection"	"Infection"	""	Siamese Cat Infection rule	1000	false

This is the Siamese Cat Infection rule:
	if Player has a body of "Siamese Cat":
		trigger ending "Siamese Cat Infection"; [Here it states, that the ending has been played.]
		if humanity of Player < 10:
			if HP of Sven > 0 and HP of Sven < 49:
				say "     As your mind starts to unravel, you set off across the city, wandering in search of something, though you know not what. You somehow find your way back to Sven and have a long bout of wild, lustful sex with the feline[if HP of Sven < 8], completing his transformation into a hybrid snow leopard/siamese cat[end if]. Together, you and he set off into the city one cooler evening and come across another pair of felines who seem familiar to you and you are drawn to them. As you get closer, you can see that the conjoined cats are having some playful fun together.";
				say "     As you approach them, the male finishes up in his conjoined twin. Noticing you, they smile and get up. 'Oh, it looks like you've found a special friend,' they purr as they move to snuggle with you both. They nuzzle and caress your bodies, seeming to know just where to touch to get you excited. Looking into Sven's soft, blue eyes you feel yourself compelled to be with him.";
			else:
				say "     As your mind starts to unravel, you set off across the city, wandering in search of something, though you know not what. You eventually come across a pair of felines who seem familiar to you and are drawn to them. As you get closer, you can see that the conjoined cats have a [if Player is herm]herm[else if Player is female]male[else if Player is male]female[else]neuter[end if] person under them and are in the midst of transforming them.";
				say "     As you approach, the conjoined pair look up and smile. 'Just in time,' they purr, motioning for you towards the changing individual as they become more like a Siamese cat[if Player is male]. She[else]. He[end if] gets up slowly at first; but, upon noticing you, seems to feel the same compulsion to be close to you as you are feeling.";
			if TailName of Player is "Siamese Cat":
				say "     Drawn by some strange need, you wrap your arms around one another, licking and kissing. Your tails slowly intertwine and, as the tips touch, you can feel them start to fuse together. The pleasure of this causes you both to orgasm violently. You can feel yourself becoming linked to [if HP of Sven < 8]the hybrid Sven[else if HP of Sven is 8 or HP of Sven is 9]the sexy snow leopard[else if HP of Sven is 10]the colorful snow leopard[else]the new kitty[end if], sharing some sensation with them, as well as a deep, emotional bonding. You two are individuals, but also one, partners and lovers meant to be together and now inseparable.";
			else:
				say "     Drawn by some strange need, you wrap your arms around one another, licking and kissing. The Siamese felines run their paws over your body and play with themselves, wiping their juices across your rear, coaxing you to grow a Siamese cat tail. Your tail slowly intertwines with [if HP of Sven > 0 and HP of Sven < 49]Sven[else]the single feline[end if] and, as the tips touch, you can feel them start to fuse together. The pleasure of this causes you both to orgasm violently. You can feel yourself becoming linked to [if HP of Sven < 8]the hybrid Sven[else if HP of Sven is 8 or HP of Sven is 9]the sexy snow leopard[else if HP of Sven is 10]the colorful snow leopard[else]the new kitty[end if], sharing some sensation with them, as well as a deep, emotional bonding. You two are individuals, but also one, partners and lovers meant to be together and now inseparable.";
			say "     Joined together, you are able to enjoy one another's sensations and orgasms, often going off simultaneously. As well, sharing in one another, you both shift to become alike, complementary twins and resistant to more changes as each is maintained by the other[if HP of Sven > 0 and HP of Sven < 50]As a conjoined pair, you and Sven become a mix of slender Siamese cats and sexy snow leopards[end if][if lust of Sven is 1] with baby blue markings[else if HP of Sven is 2] with golden yellow markings[end if]. The twins who first changed you become frequent lovers when you're not on the prowl for others to make into paired felines.";
		else:
			if HP of Sven > 7 and HP of Sven < 30:
				say "     After your rescue, you are eventually cleared by the military and released with many others. Sven, having difficulty with the heat at the compound, is happy to be free of it and clings to you lovingly upon his release. You wander from place to place for a time before settling down to enjoy your life with your lustful snow leopard. Sven becomes a wonderful pet, always eager to satisfy your lusts and any kinky desire you have. The beautiful kitty lounges around your home naked, shyly teasing from behind his tail. His coy playfulness always draws the attention of your friends, making him a wonderful means to coax them into a three-way. When you become acquainted with a zookeeper, Sven has them playing with him after only a few visits, and after that, you're slipping your pet into the zoo to play with the big cats there. You enjoy watching your pet mount the females and be taken by the males. You even paid for using Sven as a stud on their female snow leopards, though the kitty always seems to be looking forward to having a strong male atop him.";
				if TailName of Player is "Siamese Cat":
					say "     Over time, you do start to feel like something is missing though and you can't tell what. But one late night, after a particularly energetic romp with your pet, it clicks. You nuzzle and nibble his ears, whispering that you love him as you bring his tailtip to yours. Moments later, they start to fuse together and you are joined at the end of your tails.";
					say "     You both mrowl loudly in orgasm as the pleasure of this rushes through you. You can feel yourself becoming linked to your pet - no, your lover and mate - sharing some sensation with them, as well as a deep, emotional bonding. You both remain individuals, but are also one. You are partners and lovers meant to be together and now inseparable.";
					say "     You kiss and nuzzle Sven as you start to change, picking up his snow leopard pattern and he picks up some siamese traits, until eventually you becoming paired twins. Joined together, you are able to enjoy one another's sensations and orgasms, often going off simultaneously. Your minds remain largely intact and distinct, but you are able to silently share thoughts as you would words.";
					say "     Sven is briefly surprised by all this, but the love and adoration he's shared for you that you can now feel tells you how much he loves being one with you. You and your lover, now permanently joined, adjust quickly. As you should, for you are whole now.";
					say "     You do end up taking on Sven's pet-like nature, making you become a loving pet, eager to serve your owner as Sven does. When you are found by [if HP of Sven is 10 or coonsex > 0]Candy[else if pigfucked > 3]Philip[else if Sandra is in the bunker]Sandra[else]your zookeeper friend[end if], you are taken to their home to become a pair of lustful, loving pets for them. As lustful pets, you are there to satisfy their sexual desires and you submit to playing with their friends eagerly. As conjoined kitties, there are so many ways to please your new owner and their friends. Soon enough, you and Sven are together at the zoo, sharing in the joy of breeding with the great cats as your own watches with a smile.";
					if Player is female and "Sterile" is not listed in the feats of Player:
						say "     Sven fucks you often, pumping his feline seed into you until you bear him kittens. These lovely felines are joined together at the tail as you are. They, and their many siblings to come, grow into lovely pet pairs much like their parents[if HermList is banned]. They come in a mix of couples, sometimes matching males or females, or as a mixed, breeding pair[else]. They come in a mix of couples, any combination of males, females and herms[end if]. These sexy felines always grow to become horny pets and sextoys for their owners, coming in high demand for their unique nature and lustful servitude, many sold for a lot of money by your owner. You and Sven are always very proud of them as they head off into their new lives of sex and servitude, knowing they'll enjoy the same satisfaction as you do.";
				else:
					say "     At times, you feel that something is not quite right or that you are incomplete. But when you feel that way, you need only put your arms around your pet and you feel much better. The feeling never quite goes away, but a little romp with him makes everything a little brighter. You know he loves and adores you, and will never leave you, and this soothes the strange longing.";
[			else if HP of Sven >= 30 and HP of Sven < 50:
				say "***Ending w/confident Sven.";]
			else:
				say "     After your rescue, you are eventually cleared by the military and released with many others. You wander from place to place for a time before settling down when you meet a [if Player is herm]herm[else if Player is female]male[else if Player is male]female[else]neuter[end if] feline that you hit it off with[if Player is male]. She[else]. He[end if] is only partially infected, having gained ears and a tail as their only visible alterations.";
				say "     You move in together and have a pleasant life of indolence and sex [if Player is male]. She[else]. He[end if] is well-to-do, so you can take it easy. Which suits the feline in you just fine.";
				if TailName of Player is "Siamese Cat":
					say "     Over time, you do start to feel like something is missing though and you can't tell what. But one late night, after a particularly energetic romp with your lover and mate, it clicks. You nuzzle and nibble their ears, whispering that you love them as you bring [if Player is male]her[else]his[end if] tailtip to yours. Moments later, they start to fuse together and you are joined at the end of your tails.";
					say "     You both mrowl loudly in orgasm as the pleasure of this rushes through you. You can feel yourself becoming linked to your mate, sharing some sensation with them, as well as a deep, emotional bonding. You both remain individuals, but are also one. You are partners and lovers meant to be together and now inseparable.";
					say "     You kiss and nuzzle your lover as [if Player is male]she[else]he[end if] starts to change, becoming more feline like you and soon becomes your paired twin. Joined together, you are able to enjoy one another's sensations and orgasms, often going off simultaneously. Your minds remain intact and distinct, but you are able to silently share thoughts as you would words.";
					say "     Your partner is briefly surprised by all this, but the loving bond you share soon overcomes the shock of the unforeseen change. You and your lover, now permanently joined, adjust quickly. As you should, for you are whole now.";
				else:
					say "     At times, you feel that something is not quite right or that you are incomplete. But when you feel that way, you need only put your arms around your lover and you feel much better. The feeling never quite goes away, but a little kiss or lick from [if Player is male]her[else]him[end if] makes everything a little brighter.";

Siamese Cats ends here.
