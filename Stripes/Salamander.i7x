Version 2 of Salamander by Stripes begins here.
[Version 2.0 - Bound State added by Blue Bishop]
[Parts of this creature's appearance and transformation are based off the Salamander Femme creature from the multiplayer game]

"Adds a Salamander creature to Flexible Survival's Wandering Monsters table"

Section 1 - Monster Responses

when play begins:
	add { "Salamander" } to infections of girl;
	add { "Salamander" } to infections of Tailweapon; [usable for Tail Strike feat]
	add { "Salamander" } to infections of Reptilelist; [list of reptile infections]
	add { "Salamander" } to infections of Internallist; [list of infections w/internal male genitals]
	add { "Salamander" } to infections of Firebreathlist; [List of fire breathing creatures]

to say salamanderdesc:
	setmongender 4; [creature is female]
	say "     The salamander creature before you is a mix of animal and human body, with a definitively female form. Her body is especially effeminate, with wide hips, thighs, and a thin waist that clamors for attention. Her breasts are quite modest, being pert B-cups. Her arms and legs look quite human, but flex a little more than normal, making her seem sinuous and agile. Her fingers and toes terminate in small, dark claws. She possesses a flat, wide head with a mouth full of diminutive teeth. She has a long, narrow, fleshy tail mounted atop her soft and squishy ass cheeks. Making no effort to hide it, you can also see her moderately large pussy between her legs, wet and waiting.";
	say "     Her smooth skin is a rich red color with yellow and black speckling, predominantly across her breasts and extremities. A shimmer of intense heat radiates from it intensely enough to make the air ripple around her. It seems the nanites have jumbled the old myths of salamanders with its amphibian nature, making this creature into one suitable for two environments, on land and in lava.";

to say losetosalamander:
	if vorelevel is 3 and scalevalue of player < 4 and (a random chance of 1 in 4 succeeds or (player is kinky and a random chance of 1 in 3 succeeds)):
		if HP of player > 0:
			say "     When you submit to the red amphibian she exploits the opening by lashing you from afar with her elongated tongue. The hot, sticky thing clinging against your [bodytype of player] form, the creature reels you in close, wrapping the appendage around you, loop by loop, as it gets some slack from your approach.";
			say "     Limbs bound by her tongue, her wide maw savors your compliance by doting on you, kissing and nuzzling your face. It's quickly apparent that she seems to be sizing you up, hot breath washing over you as you're given a glimpse into her crimson abyss of a maw. If you don't try to break free, it looks like you'll end up as a meal for salamander!";
		else:
			say "     Starting to exhaust yourself, you're unable to defend yourself from being lashed by the red amphibian's elongated tongue. Briefly stunned, it takes a second to realize that the hot, sticky appendage clings to you, utterly refusing to let go!";
			say "     She's at least some distance from you, but it's a struggle to stop the salamander from starting to reel you in. Hungry, drooling maw agape for you to see it's apparent that your ultimate destination is down that crimson abyss, if you don't break free quickly!";
			now struggleatt is 1;
		wait for any key;
		salabind;
	else:
		if HP of player > 0:
			say "     Rather than resist, you submit to the red amphibian. You allow her to push you to the ground, after which she moves atop you to have her way with you";
		else:
			say "     The red amphibian's latest blow leaves you weak and staggered. After that, she's easily able to knock you to the ground and moves atop you to have her way with you";
		say ". With you down, she reins in her heat and rubs her smooth body against yours. Her flesh is slick with a thin coating of slime that causes your own skin to tingle where it touches. This tingling blossoms into a blissful warmth that is arousing, but also mind-numbing. Your thoughts get jumbled and manage to focus on little past having sex with the increasingly alluring amphibian.";
		if player is male and a random chance of 2 in 3 succeeds:		[usually opts for sex]
			say "     Taking your [cock size desc of player] erection in hand, she runs her elongated tongue across her muzzle as she eyes it[if cock length of player > 24]. With great effort[else if cock length of player > 16]. With considerable effort[else]. With obvious eagerness[end if], she lowers herself down onto your pulsing rod. As she starts working her dripping[if cock length of player > 16] and overstuffed[end if] cunt over your [cock of player] cock, she presses her lizard-like face to yours and wriggles her long tongue into your mouth for a tonsil-licking kiss that causes your addled head to spin. Soon you're cumming into that heated, vice-like cunt of hers as she drains your [cum load size of player] load into her womb. Once she's gotten what she wanted, you're left sticky with cum and slime until you can recover your senses.";
		else:
			say "     Pressing her shapely thighs around your head, she pushes her wet and heated cunny right in your face. With her hot juices dripping down onto your mouth, you can't help yourself and dive into licking her smooth-skinned snatch. Already muddleheaded and aroused by effects of her slime, the taste of her pussy overwhelms you. Your tongue plunges into her cunt and licks at her clit as you lap up every drop you can get of her delicious juices[if player is herm]. While you're eating her out, her long, slick tongue slathers across your loins, licking your cock[smn] and diving into your cunt[sfn][else if player is male]. While you're eating her out, her long, slick tongue slathers across your loins, licking your cock[smn][else if player is female]. While you're eating her out, her long, slick tongue slathers across your loins, diving into your cunt[sfn][else]. While you're eating her out, her long, slick tongue slathers across your bare groin[end if]. You keep going at her non-stop until she cums with a messy gush of steaming-hot femcum. Once she's gotten what she wanted, you're left sticky with cum and slime until you can recover your senses.";

to say beatthesalamander:
	say "     Your final blow sends the slender creature stumbling back. The hot aura around her wavers as she's unable to maintain it any longer. She blows you a big, messy raspberry with her elongated tongue and runs off.";


Section 2 - Monster Insertion

Table of Random Critters (continued)
name	enemy title	enemy name	enemy type	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	DayCycle	altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now name entry is "Salamander";
	now enemy title entry is "";
	now enemy name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "The [one of]salamander[or]salamander femme[or]female amphibian[or]red salamander[or]speckled salamander[at random] [one of]scratches at you with her claws[or]smacks you with her tail[or]bites you with her wide mouth[or]contorts in an unnatural manner to punch you in the side[or]grabs onto you and turns up her personal heat, cooking your flesh[in random order].";
	now defeated entry is "[beatthesalamander]";
	now victory entry is "[losetosalamander]";
	now desc entry is "[salamanderdesc]";
	now face entry is "now flatted down with a short muzzle. You have a widened mouth full of diminutive teeth";
	now body entry is "especially effeminate, with wide hips, thighs, and a thin waist that draws the eye. Your limbs are still human, though they flex a little more than could be considered normal. Your digits end in short, dark claws that are probably better suited for climbing than fighting";
	now skin entry is "[one of]smooth[or]sensitive[or]speckled[or]slimy[or]red[or]crimson[at random]";
	now tail entry is "You have a long, fleshy tail growing from your squishy ass cheeks. It starts thick and tapers down gradually along its length.";
	now cock entry is "[one of]red[or]speckled[or]glistening[or]retractable[as decreasingly likely outcomes]";
	now face change entry is "your jaw stretches and warps uncomfortably. Your skull aches as becomes flatter and broader. A short muzzle protrudes forwards and your mouth widens to suit your enlarged jaw. Your long, slimy tongue brushes across your teeth as they become small and numerous";
	now body change entry is "your hips and thighs become wide and rounded. Your waist narrows to a sultry, seductive thinness that further accentuates your effeminate appearance. Your limbs creak and twist as they bend in strange ways, your bones and joints becoming slightly flexible";
	now skin change entry is "it loses any and all hair and becomes smooth. It reddens over the course of the next minute, with small spots and speckles of yellow and black appearing soon after. Your hide has a slight sheen from the thin layer of slime that coats it";
	now ass change entry is "the base of your spine throbs. It creaks in protest as a long, smooth tail bursts from the bottom of your spine";
	now cock change entry is "its flesh turns red. It pulses and throbs as your balls are drawn right up into your body. Your transforming cock bubbles up a mix of precum and semen to coat its surface in a glistening layer of slime. A warm slit forms at your crotch and your altered manhood retracts into it until you next become aroused";
	now str entry is 15;
	now dex entry is 20;
	now sta entry is 13;
	now per entry is 14;
	now int entry is 9;
	now cha entry is 9;
	now sex entry is "Female";
	now HP entry is 66;
	now lev entry is 9;
	now wdam entry is 8;
	now area entry is "Capitol";
	now cocks entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 8; [ Length infection will make cock grow to if cocks]
	now cock width entry is 5; [ Size of balls apparently ;) sneaky Nuku (big balls are underrated.)]
	now breasts entry is 2; [ Number of Breasts infection will give you. ]
	now breast size entry is 2; [Size of breasts infection will try to attain ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 8;
	now cunt width entry is 5;
	now libido entry is 45; [ Amount player Libido will go up if defeated ]
	now loot entry is "";
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]slender[or]flexible[or]curvy[or]effeminate[in random order]";
	now type entry is "[one of]salamander[or]amphibian[in random order]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "firebreath"; [ Row used to designate any special combat features, "default" for standard combat. ]
	now BannedStatus entry is false;

Section 3 - Bound State
[ -- Blue Bishop]

to salabind:
	now lustatt is libido of player;
	now calcnumber is -1;
	let Trixieexit be 0;
	while Trixieexit is 0:
		if HP of player > 0 or humanity of player < 50:
			now obliging is true;
		checkboundrecover;
		if clearnomore is 0, clear the screen;
		if lustatt > 99:
			if boundsegment is 1:
				say "     Finding yourself overtaken by lust, you are given no choice but to furiously [if player is male]jerk yourself off[else]fondle yourself[end if], writhing and twisting in these wet, smoldering confines until you finally find reprieve, [if player is male]unloading your [cum load size of player] load against the supple flesh[else if player is female]cunt throbbing firmly against the supple flesh[else]a particularly trying task given your lack of outlet[end if][if player is male and cock width of player > 20]. This wasn't a particularly wise task, as you're now made to swim in a pool of your own seed, though it thankfully diminishes over time[end if]. Panting to catch your breath, your mental faculties eventually return to you, leaving you to assess the matter at hand.[line break]";
			else:
				say "     Finding yourself overtaken by lust you cry out in ecstasy against the salamander's slick, writhing appendage, [if player is male]unloading your [cum load size of player] load against the open air[else if player is female]cunt throbbing firmly against the open air[else]a particularly trying task given your lack of outlet[end if]. ";
				if enduring is true and struggleatt > 0:
					say "     Panting to catch your breath, you manage to fight her off from pulling you any closer, at least for now...";
				else:
					say "     Panting to catch your breath, she immediately exploits you moment of weakness! Grabbing you between your shoulders, she firmly plunges your head[if tempnum2 is 1] back[end if] down her wide maw.";
					say "     [if tempnum2 is 1]She seems eager to return her victim back within her heated prison of flesh[else if scalevalue of player is 3]She doesn't seem to care that you're around her size, apparently stretchy enough to accommodate you[else]It becomes quickly apparent that she's stretchy enough to engulf you within her depths without any difficulty[end if]. Though she seems to be reducing her body heat, she's still terribly hot enough to make you sweat, mixing with her saliva in slicking her motion as she shoves you down, foot by foot, gullet bulging considerably with its contents, until only your legs remain.";
					say "     Forced into the monster's tight, sticky stomach, it's alight with a[if tempnum2 is 1] familiar,[end if] molten glow, radiating an intense against your vulnerable form. As she forces down what little remains of you, you're forced to curl up to fit within these extremely tight confines. Even though she's apparently flexible enough to contain you, these walls nonetheless cling tightly against you, loudly churning as she [if tempnum2 is 1]teases her constantly-struggling meal[else]climbs back to her feet to take her new meal to a safe place[end if].";
					now struggleatt is 0;
					now tempnum2 is 0;
					now boundsegment is 1;
			if libido of player > 25, decrease libido of player by (libido of player / 10) + 1;
			now lustatt is libido of player;
			if enduring is true:
				decrease humanity of player by 8 + (psycheadjust * 2);
			else:
				decrease humanity of player by 15 + (psycheadjust * 5);
				if struggleatt > 0, decrease struggleatt by 1;
		now enduring is false;
		if boundsegment is 1:
			if (enduring is true and a random chance of 2 in 5 succeeds) or (enduring is false and a random chance of 4 in 5 succeeds):
				increase hunger of player by 1;
				increase thirst of player by 2;
			else if enduring is false or (enduring is true and a random chance of 2 in 3 succeeds):
				increase thirst of player by 1;
			say "     You're trapped within the stomach of a slamander. [one of]The slick walls grind relentlessly against your vulnerable form[or]The heat of this prison causes you to groan[or]The soft glow of your confines is all you can see[at random]. You imagine your only active option is to [bold type]S[roman type]truggle enough until they let you go, else you can [if obliging is true][bold type]O[roman type]blige[else][bold type]A[roman type]bide[end if] them, or [if boundrecover is true][bold type]R[roman type]ecover from[else][bold type]E[roman type]ndure[end if] these questionable circumstances.[line break]";
		else:
			say "     You're tethered to the salamander by her long, adhesive tongue, who doesn't seem intent on letting you go anytime soon! [if struggleatt is 0]She's practically kissing you, she so close to you right now. [else if struggleatt is 1]There's very little distance between you and her. [else if struggleatt is 2]There seems a reasonable amount of distance between you and her. [else]She's straining to keep a hold of you, you're nearly free! [end if]You imagine your only active option is to [bold type]S[roman type]truggle enough until they let you go, else you can [if obliging is true][bold type]O[roman type]blige[else][bold type]A[roman type]bide[end if] them, or [if boundrecover is true][bold type]R[roman type]ecover from[else][bold type]E[roman type]ndure[end if] these questionable circumstances.[line break]";
		say "[bold type]1[roman type] - [link]Struggle[as]1[end link][line break]";
		say "[bold type]2[roman type] - [link][if obliging is true]Oblige[else]Abide[end if][as]2[end link][line break]";
		say "[bold type]3[roman type] - [link][if boundrecover is false]Endure[else]Recover[end if][as]3[end link][line break]";
		say "Sanity: [humanity of player]/ 100	Lust: [lustatt]/100	Hunger: [hunger of player]	Thirst: [thirst of player]	Struggle: [salastrugglebar]";
		if humanity of player < 1:
			LineBreak;
			say "     Eventually you become so drained -- both mentally and physically -- that you wholly give in to your captor, ";
			if bodyname of player is "Salamander" and player is pure:
				say "compelled by your strain to obey her every whim";
			else:
				say "completely transforming into one of her kin, this new strain compelling you to obey her every whim";
			say ". It's only then that you stop being siphoned off into the salamander, but you nonetheless succumb to a terrible, inevitable fate...";
			wait for any key;
			repeat with y running from 1 to number of filled rows in Table of Random Critters:
				choose row y in Table of Random Critters;
				if name entry is "Salamander":
					now monster is y;
					break;
			now bodyname of player is "Salamander";
			now facename of player is "Salamander";
			now tailname of player is "Salamander";
			now skinname of player is "Salamander";
			now cockname of player is "Salamander";
			now tail of player is tail entry;
			now face of player is face entry;
			now skin of player is skin entry;
			now body of player is body entry;
			now cock of player is cock entry;
			now voreloss is true;
			now Trixieexit is 1;
			end the story saying "You lost your mind while bound!";
		else:
			let k be 0;
			now keychar is "INVALID";
			change the text of the player's command to "";
			while keychar is "INVALID":
				now k is the chosen letter;
				translate k;
				if the player's command matches "[number]":
					now keychar is "[number understood]";
			if keychar in lower case exactly matches the text "s" or keychar in lower case exactly matches the text "1" or keychar in lower case exactly matches the text "return" or keychar in lower case matches the text "struggle":
				LineBreak;
				increase struggleatt by 1;
				if boundsegment is 0:
					if struggleatt < 4:
						say "     You strain to pull yourself away from the [one of]salamander[or]amphibian[at random], who tries to pull back. You manage to get [if struggleatt is 1]some[else if struggleatt is 2]more[else]a lot of[end if] distance from her.";
						increase lustatt by 7 + (lustadjust * 2);
						wait for any key;
					else:
						say "     Stretched to her absolute limit, all it takes is a little more effort to send the thing flying back in her face. Flung onto her back with an audible snap, she appears to be stunned, leaving you to turn and make a run for it!";
						cleanboundmemory;
						now pewtergenitalcap is 0;
						now Trixieexit is 1;
						follow the turnpass rule;
				else:
					if struggleatt < 2:
						say "     You struggle against this tight and hot prison, causing it to groan and churn against you.";
						increase lustatt by 7 + (lustadjust * 2);
						if bodyname of player is "Salamander" and player is pure:
							if a random chance of 1 in 5 succeeds:
								infect;
						else if a random chance of 2 in 3 succeeds:
							infect;
						wyvhumanityroll;
						wait for any key;
					else:
						say "     Body churning loudly, finally unable to contain you any longer, your tight prison squeezes your body back up the hole you came before you're blinded by the bright light and dry air of the outside world. Regurgitated on the ground in a puddle of saliva, you weakly pull yourself to your feet, finding yourself someplace near where you were first captured.";
						say "     You make a dash to escape but the salamander -- previously dazed by being forced to expel you -- lashes you with her tongue, nearly sending you flat on your ass as she tries reeling you back in. You may've gotten a head start, but the amphibian has no intention of letting you go that easily...";
						now tempnum2 is 1;
						wait for any key;
						now boundsegment is 0;
						now struggleatt is 1;
				next;
			else if (obliging is true and (keychar in lower case exactly matches the text "o" or keychar in lower case matches the text "oblige")) or (obliging is false and (keychar in lower case exactly matches the text "a" or keychar in lower case matches the text "abide")) or keychar in lower case exactly matches the text "2":
				LineBreak;
				if obliging is true:
					if boundsegment is 0:
						decrease struggleatt by 2;
						say "     You actively allow the [one of]salamander[or]amphibian[at random] to [if struggleatt is -2]finish you off[else]pull you in close[end if]";
						if struggleatt < 0:
							say ". Once[if struggleatt is not -2] you're in range and[end if] she's ready she grabs you between your shoulders and firmly plunges your head[if tempnum2 is 1] back[end if] down her wide maw.";
							say "     [if tempnum2 is 1]She seems eager to return her victim back within her heated prison of flesh[else if scalevalue of player is 3]She doesn't seem to care that you're around her size, apparently stretchy enough to accommodate you[else]It becomes quickly apparent that she's stretchy enough to engulf you within her depths without any difficulty[end if]. Though she seems to be reducing her body heat, she's still terribly hot enough to make you sweat, mixing with her saliva in slicking her motion as she shoves you down, foot by foot, gullet bulging considerably with its contents, until only your legs remain.";
							say "     Forced into the monster's tight, sticky stomach, it's alight with a[if tempnum2 is 1] familiar,[end if] molten glow, radiating an intense against your vulnerable form. As she forces down what little remains of you, you're forced to curl up to fit within these extremely tight confines. Even though she's apparently flexible enough to contain you, these walls nonetheless cling tightly against you, loudly churning as she [if tempnum2 is 1]teases her constantly-struggling meal[else]climbs back to her feet to take her new meal to a safe place[end if].";
							now struggleatt is 0;
							now tempnum2 is 0;
							now boundsegment is 1;
						else:
							say ", [if struggleatt is 0]who's practically kissing you by this point[else]who's quickly closing the distance between the two of you[end if].";
					else:
						say "     You actively submit yourself to the salamander's will, [one of]fleshy[or]slick[at random] prison [one of]briefly tightening around[or]groaning against[at random] you.";
						if a random chance of 1 in 5 succeeds:
							infect;
						else if a random chance of 2 in 3 succeeds:
							infect;
						LineBreak;
						wyvhumanityroll;
					increase lustatt by 14 + (lustadjust * 4);
				else:
					if boundsegment is 0:
						decrease struggleatt by 1;
						say "     You submit to the [one of]salamander[or]amphibian[at random]'s pull";
						if struggleatt < 0:
							say ". Once[if struggleatt is not -1] you're in range and[end if] she's ready, she grabs you between your shoulders and firmly plunges your head[if tempnum2 is 1] back[end if] down her wide maw.";
							say "     [if tempnum2 is 1]She seems eager to return her victim back within her heated prison of flesh[else if scalevalue of player is 3]She doesn't seem to care that you're around her size, apparently stretchy enough to accommodate you[else]It becomes quickly apparent that she's stretchy enough to engulf you within her depths without any difficulty[end if]. Though she seems to be reducing her body heat, she's still terribly hot enough to make you sweat, mixing with her saliva in slicking her motion as she shoves you down, foot by foot, gullet bulging considerably with its contents, until only your legs remain.";
							say "     Forced into the monster's tight, sticky stomach, it's alight with a[if tempnum2 is 1] familiar,[end if] molten glow, radiating an intense against your vulnerable form. As she forces down what little remains of you, you're forced to curl up to fit within these extremely tight confines. Even though she's apparently flexible enough to contain you, these walls nonetheless cling tightly against you, loudly churning as she [if tempnum2 is 1]teases her constantly-struggling meal[else]climbs back to her feet to take her new meal to a safe place[end if].";
							now struggleatt is 0;
							now tempnum2 is 0;
							now boundsegment is 1;
						else:
							say ", [if struggleatt is 0]who's practically kissing you by this point[else if struggleatt is 1]who's quickly closing the distance between the two of you[else]who's gradually closing the distance between the two of you[end if].";
					else:
						say "     You make an effort to tolerate your twisted fate, [one of]fleshy[or]slick[at random] prison [one of]briefly tightening around[or]groaning against[at random] you.";
						if bodyname of player is "Salamander" and player is pure:
							if a random chance of 1 in 5 succeeds:
								infect;
						else if a random chance of 2 in 3 succeeds:
							infect;
						LineBreak;
						wyvhumanityroll;
					increase lustatt by 7 + (lustadjust * 2);
				wait for any key;
				next;
			else:
				LineBreak;
				let tempfixture be 0;
				now enduring is true;
				if boundsegment is 0 and a random chance of 1 in 2 succeeds:
					decrease struggleatt by 1;
					now tempfixture is 1;
				if boundrecover is true:
					if boundsegment is 0:
						say "     With a brief flash of insight, you're able to find a glimpse of mental clarity within this bondage, recovering a small portion of your lost humanity";
						if struggleatt < 0:
							say ". However, this distraction allows her to [if struggleatt is -1]finish you off[else]pull you in close enough[end if], grabbing you between your shoulders and firmly plunging your head[if tempnum2 is 1] back[end if] down her wide maw.";
							say "     [if tempnum2 is 1]She seems eager to return her victim back within her heated prison of flesh[else if scalevalue of player is 3]She doesn't seem to care that you're around her size, apparently stretchy enough to accommodate you[else]It becomes quickly apparent that she's stretchy enough to engulf you within her depths without any difficulty[end if]. Though she seems to be reducing her body heat, she's still terribly hot enough to make you sweat, mixing with her saliva in slicking her motion as she shoves you down, foot by foot, gullet bulging considerably with its contents, until only your legs remain.";
							say "     Forced into the monster's tight, sticky stomach, it's alight with a[if tempnum2 is 1] familiar,[end if] molten glow, radiating an intense against your vulnerable form. As she forces down what little remains of you, you're forced to curl up to fit within these extremely tight confines. Even though she's apparently flexible enough to contain you, these walls nonetheless cling tightly against you, loudly churning as she [if tempnum2 is 1]teases her constantly-struggling meal[else]climbs back to her feet to take her new meal to a safe place[end if].";
							now tempnum2 is 0;
							now struggleatt is 0;
							now boundsegment is 1;
						else:
							if tempfixture is 1:
								say ". It doesn't seem to stop the [one of]salamander[or]amphibian[at random] from pulling you closer, though, [if struggleatt is 0]who's practically kissing you by this point[else if struggleatt is 1]who's quickly closing the distance between the two of you[else]who's gradually closing the distance between the two of you[end if].";
							else:
								say ". The lizard tries to pull you in closer, but you manage to resist!";
					else:
						say "     With a brief flash of insight, you're able to find a glimpse of mental clarity within these confines, recovering a small portion of your lost humanity.";
						if a random chance of 2 in 3 succeeds:
							decrease thirst of player by 2;
							decrease hunger of player by 1;
						else:
							decrease thirst of player by 1;
					now boundrecover is false;
					increase humanity of player by 3;
					if humanity of player > 100, now humanity of player is 100;
				else:
					if boundsegment is 0:
						say "     You actively try to hold your ground and prevent the [one of]salamander[or]amphibian[at random] from pulling you in closer";
						if struggleatt < 0:
							say ". However, it's not enough to stop her from [if struggleatt is -1]finishing you off[else]pulling you in close enough[end if], grabbing you between your shoulders and firmly plunging your head[if tempnum2 is 1] back[end if] down her wide maw.";
							say "     [if tempnum2 is 1]She seems eager to return her victim back within her heated prison of flesh[else if scalevalue of player is 3]She doesn't seem to care that you're around her size, apparently stretchy enough to accommodate you[else]It becomes quickly apparent that she's stretchy enough to engulf you within her depths without any difficulty[end if]. Though she seems to be reducing her body heat, she's still terribly hot enough to make you sweat, mixing with her saliva in slicking her motion as she shoves you down, foot by foot, gullet bulging considerably with its contents, until only your legs remain.";
							say "     Forced into the monster's tight, sticky stomach, it's alight with a[if tempnum2 is 1] familiar,[end if] molten glow, radiating an intense against your vulnerable form. As she forces down what little remains of you, you're forced to curl up to fit within these extremely tight confines. Even though she's apparently flexible enough to contain you, these walls nonetheless cling tightly against you, loudly churning as she [if tempnum2 is 1]teases her constantly-struggling meal[else]climbs back to her feet to take her new meal to a safe place[end if].";
							now tempnum2 is 0;
							now struggleatt is 0;
							now boundsegment is 1;
						else:
							if tempfixture is 1:
								say ". Sadly it does not seem to succeed as you're inched forward, [if struggleatt is 0]to the point that she's practically kissing you by this point[else if struggleatt is 1]quickly closing the distance between the two of you[else]who's gradually closing the distance between the two of you[end if].";
							else:
								say ". After a bit of struggling you manage to prevent yourself from losing any ground!";
					else:
						say "     You make a deliberate effort to resist this prison's influence, [one of]briefly tightening around[or]groaning against[at random] you.";
						wyvhumanityroll;
				LineBreak;
				increase lustatt by 3 + lustadjust;
				wait for any key;
				next;
			say "Invalid action.";

to say salastrugglebar:
	if boundsegment is 0:
		say "[if struggleatt is 3]<< X[end if][if struggleatt is 2]X[else if struggleatt > 2]~[end if][if struggleatt is 1]X[else if struggleatt > 1]~[end if][if struggleatt is 0]X[else if struggleatt > 0]~[end if] [italic type][bracket]--[close bracket][roman type]";
	else:
		say "< [bracket]-[if struggleatt > 0]X[else]-[end if][close bracket]";

Section 4 - Endings

when play ends:
	if bodyname of player is "Salamander": [Needs to be corrected if standard endings are added]
		if voreloss is true and humanity of player < 10:
			say "     Doomed to be a plaything for the Salamander, she often enjoys your company both inside and outside of her. Having completely lost your sanity you can only eagerly oblige your fiery new mistress and attend to her every need. You memory soon becomes nothing more than a blur of your seemingly eternal attendance and the warm feel of her soft, inner flesh...";
		[
		else:
			say "<sane ending>";
		]


Salamander ends here.
