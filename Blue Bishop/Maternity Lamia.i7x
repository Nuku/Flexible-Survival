Version 1 of Maternity Lamia by Blue Bishop begins here.
[ Co-authored by Blue Bishop and Stripes ]
[ Version 1.0 - Player victory ]

"Adds a Lamia creature to Flexible Survival's Wandering Monsters table"

Section 1 - Creature Responses

mlamiaboobmash is a truth state that varies.
mlamiamet is a truth state that varies.
mlamialoss is a number that varies.				[fights lost]
mlamiabeaten is a number that varies.			[fights won]

when play begins:
	add { "Lamia" } to infections of girl;
	add { "Lamia" } to infections of Reptilelist; [list of reptile infections]
	add { "Lamia" } to infections of Internallist; [list of infections w/internal male genitals]

to say lamiadesc:
	say "     Making your way through the hospital, you encounter [if mlamiamet is false]what appears to be a half-human, half snake creature[else]the lamia creature once more[end if]. Dressed in a bulging, clearly ill-fitting nurse's outfit[if mlamiamet is false]. It's also apparent how stacked the lamia is, having to re-tailor the attire to fit her bulging,[else], complete with those[end if] six pairs of breasts, barely able to contain themselves within it. Having spotted you, she's very quick to slither her way over, boobs jiggling with each heave of her large, advancing body. Her human skin is a flawlessly smooth and her scaled hide is a milky white, a sharp contrast to her raven black hair.";
	say "     '[one of]Oh[or]Huh[or]Hey[at random], [one of]what are you doing in here all on your lonesome[or]were you looking for me[or]are you supposed to be here[at random]? [one of]I could use the company[or]I don't think you're supposed to be here[or]Oh well, you look like a fun diversion[at random]...' Reptilian eyes from her otherwise attractive, human face gaze piercingly at you, her intended, [bodytype of Player] victim-to-be before she lurches forward to subdue you!";
	now mlamiamet is true;


to say losetolamia:
	if HP of Player > 0:
		say "     Surrendering to the creature, she seems very quick to ease off and trust your compliance, giggling in excitement and pulling you in a tight embrace. Clothing practically bursting at the seams to contain her numerous breast, you're very firmly [one of][or]re[stopping]introduced to them as she practically tries to smother you in her cleavage.";
		say "     '[one of]Oh[or]Eee[or]Ah[at random], [one of]it's so nice to find some company[or]everyone usually runs away[or]we're going to have so much fun[at random]!' Clearly giddy at the prospect of such an obliging victim, she pulls any attire or supplies from you and tosses them aside.";
	else:
		say "     Collapsing from exhaustion, she cries out in almost overwrought despair, lunging forward to wrap you into a tight embrace. Clothing practically bursting at the seams to contain her numerous breasts, you're very firmly [one of][or]re[stopping]introduced to them as she practically tries to smother you with her cleavage, fussing obsessively over you.";
		say "     '[one of]Oh no[or]Shh[or]Ah[at random], I'm so sorry, [one of]I didn't mean to be so rough[or]you gave me little choice[or]I'll take care of you[at random]!' Clearly, she seems to have twisted her victory into an opportunity to 'care' for you, pulling any attire or supplies from you and tossing them aside.";
	if Player is male and a random chance of 1 in 3 succeeds:
		say "     Scaled coils gently constricting you, they caress along your[if scalevalue of Player > 4], larger[end if] [bodytype of Player] form as her grip gradually tightens around you, the half-serpent repositioning herself as her hand moves along you grope at your[if CockName of Player is listed in infections of internallist] partially[end if] exposed, [cock size desc of Player] dick[smn].";
		say "     '[one of]I really need this[or]This ought to be fun[or]Someone's excited to see me[at random]...' Eager to bring you into full arousal, it doesn't take long for her to get what she wants[if HP of Player <= 0], in spite of your impotent struggles[end if]. Hissing eagerly, her movement finally reveals her[one of][or] familiar,[stopping] triple pussies.";
		say "     Head forcibly buried within her abundant cleavage again, she gradually sinks the[if Player is flared] blunt[end if] head of [if Cock Count of Player > 3]three of your cocks[else if Cock Count of Player is 3]all three cocks[else if Cock Count of Player is 2]both your cocks[else]your cock[end if] within her tight, scaled lips. The creature hissing and moaning with twisted glee, she can barely temper any restraint in burying your flesh inside her, and, [if Player is knotted]after forcing her way past your knot[smn][else]once hilting you within her slick depths[end if], so does her coils tighten further to hide her [one of]newfound[or]familiar[stopping] toy from the outside world[if scalevalue of Player > 3] - a feat made somewhat challenging by your size[end if].";
		say "     '[one of]Calm down[or]Let me take care of this[or]Oh, you feel so nice[at random]...' Writhing, twisting body grinding against you, forced to [if HP of Player > 0]abide[else]endure[end if] the creature's strength as her whole form clenches rhythmically, practically intent on squeezing your bliss from you. As her tainted need grows, your face is made slick with her dribbling teats, [if HP of Player > 0]driven[else]made[end if] to taste her sweet fluid in the heat of the moment.";
		if Libido of Player > 33:
			say "     It's not long before you're finally overtaken, letting out a muffled cry in the darkness as you pump her hole[smn] full of your [Cum Load Size of Player] load[if Ball Size of Player > 5], until she can take no more and it begins to squirt between the crevices of her tightly-gripping coils[end if]. The wet sounds of her continued motions filling the air, she finally hisses out loudly as she's brought to bliss as well barely able to breathe against her near-crushing hold as you're milked dry.";
		else:
			say "     After what seems like an eternity her continued, wet-sounding efforts eventually bring her to bliss, hissing out loudly as her hold tightens to a near-crushing extent, making it difficult to breathe and more than enough to force your own out of you. Letting out a muffled, feeble cry, you pump her hole[smn] full of your [Cum Load Size of Player] load[if Ball Size of Player > 5], until she can take no more and it begins to squirt between the crevices of her tightly-gripping coils[end if].";
			say "     Once things eventually die down and she catches her breath, she uncoils from you and set you down on a nearby bench. She seems to check and fuss over you a bit before being satisfied, the softer gesture betrayed by her prior abuse.";
			say "     '[one of]You sure look tuckered out[or]That was fun[or]That was great[at random]! [one of]I'll be back in a bit[or]Be sure to stick around[or]I'd love to have some more fun with you later[at random]...' Making her parting remark, she wanders off - perhaps compelled by some twisted sense of duty to 'attend' to another victim. In any case, it takes you a while to recover from being left so sore, going back on your way once again.";
	else:
		say "     [if HP of Player > 0]Rather than risk you starting to struggle again[else]Not wanting to risk you getting away[end if], the white lamia coils her lower body around you, smooshing your face into her ample bosom. With your face buried in her boobs, your nose is filled with the softly alluring scent of her milk. Without even realizing it, you shift your lips to one of her many nipples and wrap them around it. You suckle softly as the maternal lamia coos softly about how you're a good [if Player is female]girl[else]boy[end if] and to drink up like a good baby.";
		say "     Her milk flows readily, flowing across your tongue. It is warm, rich and creamy, the flavor so good that you want more. Nursing from her is soothing and you relax more fully, her snug coils around you feeling more like a hug to you than a prison. The wet nurse gently caresses your head as she rocks you gently as she hums a soothing tune.";
		if Libido of Player > 33 and player is not neuter:
			if Player is male:
				say "     You grow aroused as you nurse, a fact that doesn't go unnoticed by the multi-breasted beauty. Feeling your erection[smn] pressing firmly against her hugging tail, she shifts against [itthemm], making you throb all the harder. 'Mmm... such an eager boy,' she coos, separating her coils at your groin so she can reach down and take hold of your [cock size desc of Player] manhood. She continues to have you suckle from her, shifting your head to a fresh breast while she plays with your cock[smn]. Her practiced hand teases your [Cock of Player] penis[esmn] until finally you cum hard, spraying your white load even as her many breasts squirt streams of milk over you. Tired now that you've got a full belly of warm milk and are in the haze of your afterglow, you start to drift off for a nap. You're sleepily aware of the lamia singing a soft lullaby as she tucks you in before leaving you to digest your meal.";
			else:
				say "     You grow aroused as you nurse, a fact that doesn't go unnoticed by the multi-breasted beauty. Feeling your increasingly heated puss[yfn] leaking their juices across her smooth scales, she shifts against [itthemf], making you moan with desire. 'Mmm... such a cute girl,' she coos, separating her coils at your groin so she can reach down and play with your cunn[yfn]. She continues to have you suckle from her, shifting your head to a fresh breast while she plays with your folds and clit[sfn]. Her practiced hand teases your cunt[sfn] until finally you cum hard, soaking her playful fingers with your femcum even as her many breasts squirt streams of milk over you. Tired now that you've got a full belly of warm milk and are in the haze of your afterglow, you start to drift off for a nap. You're sleepily aware of the lamia singing a soft lullaby as she tucks you in before leaving you to digest your meal.";
		else:
			say "     You moan softly as you suckle from the caring wet nurse, your mind clouded with affection for her. She lets you drink your fill, shifting you from one breast to the next when the flow starts to taper off even a little. You nurse happily, thinking of little more than the delicious milk you're getting and your growing love for the maternal lamia feeding you. Eventually, she decides you've had your fill, or at least more than your fair share, and pulls you away from her bosom, giving you a milky kiss instead. Having a belly full of warm milk has made you tired and so you start to drift off for a nap. You're sleepily aware of the lamia singing a soft lullaby as she tucks you in before leaving you to digest your meal.";
			increase Libido of Player by 10;
		say "     You awaken some time later, thankfully having been left undisturbed during your short nap. You weren't moved far, having been put on a nearby [one of]bed[or]gurney[or]examination table[at random] under of a [one of]milk-stained sheet[or]milk-stained blanket[or]cum-stained blanket[or]slightly torn sheet[or]white sheet[or]small blanket[or]few towels[at random]. Moving cautiously, you go recover your gear and head off with a lingering affection for your milk mother.";
		PlayerDrink 12;
		PlayerEat 3;
		SanLoss 10;
		if "Strong Psyche" is listed in feats of Player, increase humanity of Player by a random number between 1 and 3;
		if "Weak Psyche" is listed in feats of Player, decrease humanity of Player by a random number between 1 and 3;
		infect;
	increase mlamialoss by 1;


to say beatthelamia:
	say "     With that final blow, you're able to drive the strange lamia back. She hisses angrily. '[one of]Oh, you're acting like a spoiled child[or]OWwww! That's no fun! You shouldn't be so mean. I just want a hug[or]Well, all you had to say was [']No['][or]If you're going to be like that, you shouldn't have come on to me in the first place[or]Fine! I'm sure I can find someone else who's hungry for all this,' she says, running her hands over her ill-covered breasts. 'Too bad for you[or]Hrumph! I need to get back to the maternity ward anyhow[at random],' the alabaster snake-woman grumbles as she turns about and slithers away in a huff.";
	say "     Part of you is tempted to not let her off so easily this time. Shall you allow yourself to catch her so you can indulge in some fun?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Fuck her";
		now sortorder entry is 1;
		now description entry is "screw the voluptuous viper";
[		if Cock Length of Player > xxx:
			choose a blank row in table of fucking options;
			now title entry is "Titty fuck";
			now sortorder entry is 2;
			now description entry is "nestle your cock between those milky melons"; ]
	if Player is female:
		choose a blank row in table of fucking options;
		now title entry is "Receive cunnilingus";
		now sortorder entry is 3;
		now description entry is "make the lamia eat you out";
	choose a blank row in table of fucking options;
	now title entry is "Breastfeeding";
	now sortorder entry is 4;
	now description entry is "suckle from those milky tits of hers";
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link][0] - Let her go[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number (0-[the number of filled rows in table of fucking options]> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: Shall you [description entry]?";
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if nam is "Fuck her":
					say "[mlamiavsex01]";
				else if nam is "Titty fuck":
					say "[mlamiavsex02]";
				else if nam is "Receive cunnilingus":
					say "[mlamiavsex03]";
				else if nam is "Breastfeeding":
					say "[mlamiavsex04]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     Not wanting to get involved any further, you let the lamia depart and return to your own business.";
			wait for any key;
	increase mlamiabeaten by 1;

to say mlamiavsex01:
	say "     Wanting some relief in exchange for your troubles, you stride over to the serpent woman as she slithers away and grab her arm. She struggles momentarily in her surprise, but when it becomes clear what you want, she relents rather than fight further. '[one of]Oh, you're such a willful one[or]Such a naughty boy[or]If you really wanted to play, you should have just said so[or][if Cock Count of Player >= 3]It'll be nice to have a playmate able to fully satisfy me for a change,' she says, eyeing your multiple cocks. 'Let's see what you've got[else if Cock Count of Player is 2]Well, maybe you can come close to satisfying me with both of those,' she says, eyeing your twin cocks. 'I guess we can give it a try[else]Alright then, if you insist[end if][or]Come on. Take it easy. I was just funning. Alright, let's do this[or]Well, maybe a little fun before I head back to work[at random].' And with that, the lamia allows you to push her onto her back, thereby giving you access to her three wet pussies. The sight of those alabaster folds and their pink interiors, all wet and juicy gets you rock hard and ready. Rather than delay any longer, you move atop her and get your cock[smn] lined up before sinking [if Cock Count of Player > 3]three of them [else if Cock Count of Player is 3]all three of them [else if Cock Count of Player is 3]both of them [end if]into her. She releases a long, hissing moan as you penetrate her.";
	say "     You rock your hips, thrusting steadily into the milk-white lamia";
	if Cock Count of Player > 3:
		say ". Having more cocks than even she has holes, you alternate between them on occasion. This draws out your enjoyment while making sure you're going to be fully satisfied. With your [Cock of Player] penises thrusting into her slick, squeezing cunts, you're awash in pleasure[if anallevel is 3]. You even push one into the tighter hole of her anus just a little lower than the others. She hisses in surprise at this, but quickly starts to enjoy the additional anal stimulation[end if]. Certainly the lamia seems to be quite pleased with your lovemaking, probably rarely getting to be so thoroughly fucked by a lover";
	else if Cock Count of Player is 3:
		say ". Having a trio of cocks for her trio of pussies, you're given a rare opportunity to use all three at once. With them pumping into her slick, squeezing cunts, you're awash in pleasure. Certainly the lamia seems to be quite pleased with your lovemaking, probably rarely getting to be so thoroughly fucked by a lover";
	else if Cock Count of Player is 2:
		say ". Having a pair of cocks for her trio of pussies, you pick the lower two and leave her to finger and tease the last of them. The sight of her playing with herself while your twin rods pound into her makes it all the more exciting. The lamia certainly seems to be enjoying herself as well, moaning and hissing as you stuff two of her needy cunts";
	else:
		say ". Having a trio of pussies to pick from, you alternate between them early on before settling on fucking her lowermost cunny. This leaves the lamia able to play with her unoccupied cunts, the sight of which makes it all the more exciting. And while the half-serpent clearly wants more, she's still certainly enjoying herself immensely, moaning and hissing as you fuck her while she fingers her other needy cunts";
	say ". Once you've settled into a good position and rhythm, you move your hands up to her plump breasts and start playing with a pair of them. Teasing her nipples gets them squirting milk, the rest of her cream-filled tits leaking in response.";
	say "     The pair of you go at it like this for a while, losing yourselves in the lust of sex. When your climax comes, it is [if Cock Count of Player >= 3]a powerful one that pumps your hot seed into all of the lamia's needy holes[else]a strong one that pumps your hot seed into the lamia's squeezing cunt[smn] while she vigorously fingers her unfilled one[smv][end if]. The half-serpent woman cries out in orgasm as you fill her, her vagina[smn] clamping and rippling around you like the coils of a constrictor, squeezing every last drop she can get from you. The milky flow from her breasts increases as her orgasm overwhelms her. She's left panting with a happy smile on her face when you finally pull out of her, leaving her to slither off, leaving a trail of milk and sexual fluids as she goes.";

to say mlamiavsex02:
	say "***titty fuck.";

to say mlamiavsex03:
	say "     Feeling you deserve some relief in exchange for your troubles, you stride over to the serpent woman as she slithers away and grab her by the shoulders. She struggles momentarily in surprise, but relents easily enough rather than continue fighting you. You press the creature to the ground like the serpent she is. Getting on your knees in front of her, you press her pretty human face between your legs and against your wet puss[yfn]. '[one of]Such a naughty girl[or]Oh, you're such a willful one[or]If you really wanted to play, you should have just said so[or]Alright then, if you insist[or]Mmm... Is someone hot and bothered now? Let's see what we can do about that[at random],' she says teasingly as you grind your dripping crotch against her.";
	say "     The lamia's tongue slithered across your wet folds with light touches at first, but she's soon eating you out with gusto[if Cunt Count of Player > 1]. Sensitive to the needs of one with multiple pussies, she makes sure to swap between them from time to time. She's neither too fast or nor too infrequent in doing so, making sure to give the current one plenty of stimulation without letting the pleasure wane too much elsewhere[end if]. She lavishes attention across your sensitive petals, delves into your hot tunnel[sfn] and licks and kisses your clit[sfn]. She shows considerable familiarity and skill with satisfying a woman, providing you with several enjoyable orgasms before you're finally sated enough to let her be on her way.";

to say mlamiavsex04:
	say "     Feeling thirsty after the fight, you feel she should be the one the slake your thirst. You stride over to the serpent woman as she slithers away and grab her breasts from behind. She releases a moan in surprise, but doesn't resist the groping beyond her initial surprise. '[one of]Oh, so now you want them. Make up your mind[or]Such a naughty [if Player is male]boy[else if Player is female]girl[else]thing[end if][or]If you just wanted a drink, you should have just said so[or]Alright then, if you insist[or]Don't! That's for the babies... Well, I guess there's enough to go around[at random],' she says teasingly as you press her back to a wall.";
	say "     You start by groping and fondling her many tits, getting the white-skinned lamia good and worked up. She's so full with milk that it dribbles from her perky nipples constantly and squirts out when you squeeze them. She hisses and moans happily as you play with her heavy breasts, her satisfied sounds growing stronger when you wrap your lips around one of those big nipples and start suckling. Her rich cream is warm and flavorful, making you want more. At first, you swap from nipple to nipple the moment the flow from one starts to wane, but eventually the soothing caresses and her lovely milk help relax you. In the end, you settle down to nursing from one fat nipple.";
	say "     Feeling you settling down, the wet nurse moves to slide her coils around you. But rather than let her ensnare you, you push your arms down to her scaled lower body. Finding a trio of juicy cunts waiting there, you stuff your fingers into a pair of them to keep her from coiling around you. Thus remaining in charge of the situation, you finger-fuck the maternal lamia to a moaning, hissing orgasm that brings an added surge to her milk flow while she's in the throes of her release. Your sexy drink finished, you wipe your lips and end up sucking her femme cum from your fingers as you leave her to slither off back to her duties. You feel the infectious milk in your belly spread its warmth through you.";
	PlayerDrink 12;
	PlayerEat 3;
	SanLoss 5;
	if "Strong Psyche" is listed in feats of Player, increase humanity of Player by a random number between 0 and 1;
	if "Weak Psyche" is listed in feats of Player, decrease humanity of Player by a random number between 0 and 1;
	infect;


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "";
	now Name entry is "Lamia"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]The lamia[or]The altered nurse[or]The creature[or]She[at random] [one of]tries to wrap around you[if scalevalue of Player > 4]r larger form[end if] and pin you into the submission, forcing you to struggle free and put some distance between you and her[or]lashes you firmly with the tail end of her serpentine body[or]attempts to grip at and overpower you, forcing you to pry yourself free of her hold[at random]."; [ Successful attack message ]
	now defeated entry is "[beatthelamia]"; [ Text when monster loses. ]
	now victory entry is "[losetolamia]"; [ Text when monster wins. ]
	now desc entry is "[lamiadesc]"; [ Description of the creature when you encounter it. ]
	now face entry is "rather attractive and human-looking, though sporting reptilian eyes and a snake's tongue";        [ Face. Format as Your face is [Face of Player]. ]
	now body entry is "a slender human's down to the waist, with the lower half being that of a snake's, long and scaly";    [ Body. Format as "Your body is [Body of Player]." ]
	now skin entry is "[one of]soft[or]supple[or]half-scaled[at random]";    [ Skin. Format as "Looking at yourself, your body is covered in [Skin of Player] skin." ]
	now tail entry is "";    [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "[one of]human[or]normal[at random]";                        [ Cock. Format as "You have a 'size' [Cock of Player] cock." ]
	now face change entry is "begins to tingle all over. Briefly dizzy and confused, you check your face to find that it is now of an attractive human's, though with sporting dark, reptilian eyes. Your tongue flicks out almost involuntarily, now the long, forked tongue of a snake's";    [ Face TF text. Format as "Your face tingles as [face change entry]." ]
	now body change entry is "your legs meld into one, elongating into the body of a snake, with your torso being that of a human's. It takes a while to adjust to moving with these powerful coils, but you eventually get the hang of it";    [ Body TF text, format as "Your body tingles as [body change entry]. ]
	now skin change entry is "your torso tingles, being a pale, supple flesh. Everything below the waist, however, grows an array of milky white, glimmering scales";    [ Skin TF text, format as "Your skin tingles as [skin change entry]. ]
	now ass change entry is "you feel something settle in your lower torso, but nothing physically changes that you can see";    [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "it succumbs to some transformative effect. Checking yourself, it appears distinctly human-looking";        [ Cock TF text, format as "Your groin tingles as [cock change entry]." ]
	now str entry is 16; [ These are now the creature's stats... ]
	now dex entry is 19; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 15; [ These values may be used as part of alternate combat. ]
	now per entry is 14;
	now int entry is 13;
	now cha entry is 16;
	now sex entry is "Female"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 85; [ The monster's starting HP. ]
	now lev entry is 12; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 11; [ Monster's average damage when attacking. ]
	now area entry is "Hospital"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 0; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 0; [ Length in inches infection will make cock grow to if cocks. ]
	now Ball Size entry is 0; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 12; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 4; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 3; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 16; [ Depth in inches of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 12; [ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 40; [ Target libido the infection will rise towards. ]
	now loot entry is "fertile pill"; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 30; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 4; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]flexible[or]elongated[at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "[one of]reptilian[or]serpentine[or]lamia[or]snake-like[at random]"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false; [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own] [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "matlamia"; [ Row used to designate any special combat features, "default" for standard combat. ]
	now BannedStatus entry is false;

Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is "";
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
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Body Adjective of Player], [Gender Adjective of Player] and your torso is [Torso Description of Player][if Body Hair Length of Player > 0], covered in [Body Hair Adjective of Player] [Hair Color of Player] chest hair[end if]."]
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
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]"]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Tail Change entry]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
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
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that is [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]



Section 3 - Alt Combat

Table of Critter Combat (continued)
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)	altstrike (rule)
"matlamia"	retaliation rule	lamiaboobinc rule	--	lamiaboob rule	12	--	--	--	--	--


this is the lamiaboobinc rule:			[increasing likelihood of alt attack]
	choose row monstercom from the table of critter combat;
	if mlamiaboobmash is false or a random chance of 2 in 3 succeeds:		[slower increase if she's already booby-mashed]
		increase alt1chance entry by a random number between 1 and 5;
	if alt1chance entry > 40, now alt1chance entry is 40;


this is the lamiaboob rule:	[***]
	choose row monstercom from the table of critter combat;
	now alt1chance entry is 6;
	choose row MonsterID from Table of Random Critters;
	let matlamiacaught be 1;
	let playernum be 50 + ( level of Player * 2 ) + strength of Player; [strength test]
	let matlamianum be 50 + ( lev entry * 2 ) + str entry;
	say "The serpentine woman manages to wind her tail around you, squeezing down...";
[	say "STR TEST: [playernum] vs [matlamianum]:[line break]"; ]
	let playernum be a random number between 30 and playernum;
	let matlamianum be a random number between 30 and matlamianum;
	say "[special-style-1][playernum][roman type] vs [special-style-2][matlamianum][roman type]: ";
	if Playernum >= matlamianum:
		let dam be ( wdam entry times a random number from 80 to 120 ) divided by 133; [75% dmg this round]
		say "Able to keep your arms free, you grab the encroaching coils and force them open enough to escape. The constriction does [special-style-2][dam][roman type] damage before then though.";
		decrease HP of Player by dam;
		now matlamiacaught is 0;
	else:
		let dam be ( wdam entry times a random number from 80 to 120 ) divided by 125; [80% dmg this round]
		say "Her coils ensnare your limbs, trapping them within her body's grip. You can feel the warm, wet touch of her leaking slits as well as she slide across your thigh even as she wraps herself around your tighter. You take [special-style-2][dam][roman type] damage from the constriction. Even as you continue to resist, she mashes your face into her extra-ample bosom.";
		if HP of Player <= 0 or Libido of Player >= 110:
			say "That's enough to take the last of the fight out of you. She continues to have her way with you and you can only put up a token amount of resistance.";
			now matlamiacaught is 2; [unable to continue fighting]
	if matlamiacaught is 1:
		WaitLineBreak;
		increase playernum by stamina of Player + level of Player; [endurance test]
		increase matlamianum by sta entry + lev entry;
[		say "STAM TEST: [playernum] vs [matlamianum]:[line break]"; ]
		let playernum be a random number between 20 and playernum;
		let matlamianum be a random number between 20 and matlamianum;
		say "[special-style-1][playernum][roman type] vs [special-style-2][matlamianum][roman type]: ";
	if matlamiacaught is 1 and playernum >= matlamianum:
		say "You twist and squirm in her grip, doing your best to keep from suffocating amid her fleshy fun-pillows. Eventually, she tosses you aside in frustration. '[one of]Oh, why don't you want to have fun[or]Aren't these good enough for you[or]What? Don't you like hugs[at random]?' she asks, giving a pair of her tits a jiggle, jostling around the rest of the rows as well.";
		now matlamiacaught is 0;
	else if matlamiacaught > 0:
		let dam be ( wdam entry times a random number from 80 to 120 ) divided by 125; [80% dmg this round]
		decrease HP of Player by dam;
		increase Libido of Player by a random number between 4 and 6;
		if "Cold Fish" is listed in feats of Player, decrease Libido of Player by a random number between 0 and 1;
		if "Horny Bastard" is listed in feats of Player, increase Libido of Player by a random number between 0 and 1;
		say "With your face buried in her fleshy fun-pillows, you have trouble breathing. The only air you can get heavily laced with the milky scent of her multi-bosom, dulling your wits even as you grow aroused. And it gets even harder for your poor brain to remain oxygenated when her tail tightens further around your chest. This forced exhalation results in you motorboating those jugs of hers, to her giggling delight. '[one of]Oh! I always love that[or]Tee hee! That tickles[or]Oooo! That's more like it[at random][if matlamiacaught is not 2]!' The experience weakens you, causing [special-style-2][dam][roman type] damage even as you grow more aroused.[else]!'[end if]";
		if HP of Player <= 0 or Libido of Player >= 110 and matlamiacaught is 1:
			say "With your will to fight pretty much gone, she continues to have her way with you as you put up only some token resistance.";
			now matlamiacaught is 2; [unable to continue fighting]
	if matlamiacaught is 1:
		WaitLineBreak;
		increase playernum by intelligence of Player + level of Player; [intelligence test]
		increase matlamianum by int entry + lev entry;
[		say "INTELLIGENCE TEST: [playernum] vs [matlamianum]:[line break]"; ]
		let playernum be a random number between 10 and playernum;
		let matlamianum be a random number between 10 and matlamianum;
		say "[special-style-1][playernum][roman type] vs [special-style-2][matlamianum][roman type]: ";
	if matlamiacaught is 1 and playernum >= matlamianum:
		say "Sensing her grip relax as she laughs, you re-focus yourself on trying to escape. With a strong push, you're able to break free of her coils. She's disappointed at your behavior, but giggles all the more. '[one of]I guess I'll just have to catch you again[or]Now, don't be like that? I can tell you were having fun, too[or]Too rough? Well, come here and I'll give you a hug to make it up to you[at random].'";
		now matlamiacaught is 0;
	else if matlamiacaught > 0:
		let dam be ( wdam entry times a random number from 80 to 120 ) divided by 110; [90% dmg this round]
		decrease HP of Player by dam;
		increase Libido of Player by a random number between 5 and 8;
		if "Cold Fish" is listed in feats of Player, decrease Libido of Player by a random number between 0 and 1;
		if "Horny Bastard" is listed in feats of Player, increase Libido of Player by a random number between 0 and 1;
		say "Her grip eases a little as she laughs and your immediate response is to gasp for air, but all you get is another lungful of her arousing scent followed by a mouthful of nipple. You end up sucking down on her hard nip before you realize what you're doing. Your resistance fades further and you become all the more aroused[if Player is herm]. Your cock[smn] stiffen[smv] and grind[smv] against the firm, muscular tail pressed around it, causing an excess of your feminine juices to leak from your cunt[sfn][else if Player is male]. Your cock[smn] stiffen[smv] and grind[smv] against the firm, muscular tail pressed around it[else if Player is female]. You grind your hips and try to wiggle your legs as fresh feminine juices leak from your cunt[sfn][end if][if matlamiacaught is not 2]. It becomes harder to hold out as you take another [special-style-2][dam][roman type] damage and become further aroused[end if].";
		if HP of Player <= 0 or Libido of Player >= 110 and matlamiacaught is 1:
			say "With your will to fight pretty much gone, she continues to have her way with you as you put up only some token resistance.";
			now matlamiacaught is 2; [unable to continue fighting]
	if matlamiacaught is 1:
		WaitLineBreak;
		increase playernum by 100 + humanity of Player - Libido of Player; [libido/humanity test]
		increase matlamianum by 150;
[		say "LIBIDO/HUMANITY TEST: [playernum] vs [matlamianum]:[line break]"; ]
		let playernum be a random number between 1 and playernum;
		let matlamianum be a random number between 1 and matlamianum;
		say "[special-style-1][playernum][roman type] vs [special-style-2][matlamianum][roman type]: ";
	if matlamiacaught is 1 and playernum >= matlamianum:
		say "The taste of her milk shocks you into the realization of what's going on. Spitting it out across her breast, you push yourself away from her grip. Thankfully, she'd relaxed further when you started nursing, so you're able to squirm free before she can stop you.";
		now matlamiacaught is 0;
	else if matlamiacaught > 0:
		let dam be ( wdam entry times a random number from 80 to 120 ) divided by 100; [100% dmg this round]
		decrease HP of Player by dam;
		increase Libido of Player by a random number between 8 and 12;
		if "Cold Fish" is listed in feats of Player, decrease Libido of Player by a random number between 0 and 2;
		if "Horny Bastard" is listed in feats of Player, increase Libido of Player by a random number between 0 and 2;
		decrease humanity of Player by a random number between 2 and 5;
		if "Strong Psyche" is listed in feats of Player, increase Humanity of Player by 1;
		if "Weak Psyche" is listed in feats of Player, decrease humanity of Player by 1;
		say "Not realizing the danger, you suckle from the lamia's milky nipple. You drink down her creamy milk while she cuddles you in her tender embrace. The nurse coos softly and caresses your head, encouraging you to keep going[if Player is not neuter]. The heat in your loins grows and you grind eagerly against the wet touch of her leaking pussies[else]. You grind eagerly against the wet touch of her leaking pussies[end if] as you suckle. Your thoughts are further muddled and your arousal climbs higher as the infected milk seeks to corrupt you[if matlamiacaught is not 2]. You suffer [special-style-2][dam][roman type] damage as your resistance wanes further and your arousal climbs[end if].";
		LineBreak;
		infect;
		LineBreak;
		say "After this taste of her bounty, she releases you with a happy sigh. '[one of]There. Feeling better now[or]Are you ready to snuggle up for a proper meal now[or]Are you ready for some real fun[or]Has that gotten you ready for feeding time[at random][if scalevalue of Player < 4], little one[end if]?' she coos, slithering around you with a sensual sway.";
		if HP of Player <= 0 or Libido of Player >= 110:
			say "The whole of this has left you weakened and aroused, your willpower too expended to continue resisting at this point.";
			now matlamiacaught is 2;
		choose row monstercom from the table of critter combat;
		now alt1chance entry is 0;
		now mlamiaboobmash is true;
		WaitLineBreak;

[ matlamiacaught - temp variable ]
[ 0 = broke free                 ]
[ 1 = still struggling           ]
[ 2 = defeated before escaping   ]


Section 4 - Endings

when play ends:
	if BodyName of Player is "Lamia":
		if humanity of Player < 10:
			say "     Ultimately overtaken by your infection, you're inevitably drawn back to the hospital. Finally meeting the other lamia there, she greets you with open arms.";
			say "     'There you are! Oh, you want to offer a helping hand? That's great!' Giggling a little, she presses her ample bosom against your similarly infected form, entwining with yours as she welcomes her new assistant. Over time, the two of you happen upon other, unsuspecting victims to 'care' for. The outside world is so very harsh anyways, it's much better that they stay inside where it's safe, with the two of you...";
		else:
			say "     Eventually taken in by the military and processed, you're brought through with relatively little difficult, in spite of your rather strange state.";
			say "     Finding a job as an infected that doesn't involve the sex trade is particularly difficult, especially when you're a giant snake-person. Your strain compels you to work in a maternity ward, but social stigmas mean you'd never be hired for an uninfected ward, and the infected don't produced offspring in such a way that there's ever any need for one.";
			say "     You eventually concede to a more scandalous job of merely 'playing' one for particularly deviant suitors, infected or otherwise";
			if "Horny Bastard" is listed in feats of Player or player is kinky:
				say ". It pays well, and you find yourself rather fond of these twisted games...";
			else:
				say ". As well as it pays, you feel the whole thing to be somewhat beneath your dignity...";

Maternity Lamia ends here.
