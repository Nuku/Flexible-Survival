Version 2 of Latex Wolf by Stripes begins here.
[ Version 2.6 - Bounty for Bradford - Stripes]
[- Originally Authored By: Hellerhound -]

"Adds a Latex Wolf to Flexible Survival's Wandering Monsters table"

when play begins:
	add { "Latex Wolf" } to infections of guy;
	add { "Latex Wolf" } to infections of furry;

Section 1 - Monster Responses

To say latex wolf loses:
	if inasituation is true:
		say ""; [dealt with at the event source]
	else:
		say "[RegularLatexWolfLoses]";

to say RegularLatexWolfLoses:
	say "     The latex wolf collapses, its head slumped against the ground. As the creature flops around in its weakened state, your eyes can't help but wander over the feral's body, giving you ideas about what you could do with its muzzle, cock or rear end.";
	LineBreak;
	say "     Would you like to have some fun with the latex wolf ([link]Y[as]y[end link]), or do you just leave ([link]N[as]n[end link])?";
	if player consents:
		LineBreak;
		say "     [LatexWolfSexMenu]";
	else:
		LineBreak;
		say "     You walk away after checking him over for loot.";
	if HP of Bradford is 3:
		if bradfordbounty > 0:
			LineBreak;
			decrease bradfordbounty by 1;
			say "     You hear a soft [if bradfordbounty is 0]double-[end if]ding from your pack. Reminded of your deal with the bounty hunter, Bradford, you pull out the contract he's splitting with you. Looking at it, you can see that the printed value denoting the number remaining has gone down to [bold type][bradfordbounty][roman type]. You can't discern how this was accomplished; the paper and the printing on it seem entirely ordinary[if bradfordbounty is 0]. Seeing how that's completed it, you should be able to see him about getting your cut of the reward[end if].";
		else:
			say "     This encounter reminds you of your deal with bounty hunter, Bradford. You should go see him about getting your share of the reward.";

To say latex wolf wins:
	if inasituation is true:
		say ""; [dealt with at the event source]
	else:
		say "[RegularLatexWolfWins]";

To say RegularLatexWolfWins:
	if ( a random chance of 1 in 4 succeeds or ( player is kinky and a random chance of 1 in 4 succeeds ) ) and inasituation is false:
		say "     As you go down in front of the wolf creature, [if HP of player > 0]unwilling[else]unable[end if] to continue to oppose it, you are pounced upon by the latex creature. As it climbs atop you, it seems to lose structural integrity, melting and flowing down over you. You try to struggle as the black fluid flows over you, gradually engulfing you, but it clings to you tightly and makes it hard to move[if cocks of player > 1]. As the dark goo flows over your cocks, it squeezes at them, making you aroused despite yourself[else if cocks of player is 1]. As the dark goo flows over your cock, it squeezes at it, making you aroused despite yourself[end if][if cunts of player > 1]. The goo forms phallic bulges that are pressed into your cunts, stuffing them full of flowing black latex that throbs inside you, making your vaginas quiver with arousal[else if cunts of player is 1]. The goo forms phallic bulges that are pressed into your cunt, stuffing it full of flowing black latex that throbs inside you, making your vagina quiver with arousal[end if][if anallevel > 1]. More of the thick, flowing latex presses its way into your anus, stuffing your rear with a swelling cock and knot tying it inside you[end if].";
		say "     As your body is subject to this abuse, the black goo continues to spread over you, covering your [bodydesc of player] body and over your [facename of player] head. Your head is engulfed and your mouth and nose covered in flowing latex, cutting off your air supply momentarily. As you begin to grow woozy from lack of oxygen, an air passage is opened and you are allowed to breathe. Having seized control of your [bodytype of player] body, the latex wolf works its flowing, rubbery goo over [if player is female or anallevel > 1]and inside [end if]your flesh, using your body for its own pleasure. It eventually cums, spraying gooey black semen [if player is female or anallevel > 1]inside you[else]over you[end if][if player is male] while pumping out your own seed onto the ground. Your balls drained, it sends a tendril of black goo flowing along your urethra and flowing into your testes, claiming them with its own dark cum until they're full and swollen with it[end if].[impregchance]";
		say "     Weak and thoroughly used by the wolf creature, you are left lying on the ground as it flows off of you, much of its tainted latex having bonded with you. You can feel it sinking into your [bodytype of player] body, seeking to make you like itself.";
		if player is male and cock width of player < 6, increase cock width of player by 1;
		decrease humanity of player by a random number between 2 and 4;
		infect "Latex Wolf";
	else:
		if player is female:
			say "     As you [if HP of player > 0]submit[else]fall to the ground[end if], the latex wolf rolls you over and sits up, on your hips, impaling you on his red, rubbery cock. He then begins to lean forwards and backwards, sliding his doggy shaft in and out of [if cunts of player > 1]one of your [cunt size desc of player] cunts[else]your [cunt size desc of player] cunt[end if], squeaking with every thrust. He thrusts faster, and faster, making slapping noises where his black balls hit your ass cheeks, and finally slams his knot inside with a thrust that causes you to hunch up in pain and pleasure. He keeps trying to thrust, even when he is tied, and finally brings himself to orgasm, filling you with black, rubbery seed.[impregchance]";
		else if player is submissive and anallevel > 1:
			say "     You fall to the ground and the wolf pounces you, hoping there is something for him to use. When your lack of pussy is discovered and the male seems no longer interested in you, you whine softly, your submissive needs coming to the fore as you present yourself to him. Spurred by this wanton display, the latex creature pounces your ass and drives his red, rubbery cock into you. You groan softly at this intrusion, your body welcoming it despite the discomfort initially felt.";
			say "     He rocks his hips, pounding his doggy shaft in and out of your ass, squeaking with every thrust. He thrusts faster, and faster, making slapping noises where his black balls hit your ass cheeks, and finally slams his knot inside with a thrust that causes you to hunch up in pain and pleasure. He keeps trying to thrust, even when he is tied, and finally brings himself to orgasm, filling you with black, rubbery seed.[mimpregchance]";
		else if a random chance of 1 in 3 succeeds or ( anallevel is 3 and a random chance of 1 in 3 succeeds ):
			say "     You fall to the ground, the latex wolf pouncing your ass and driving his red, rubbery cock into you. You groan softly at this intrusion, your body welcoming it despite the discomfort initially felt. He rocks his hips, pounding his doggy shaft in and out of your ass, squeaking with every thrust. He thrusts faster, and faster, making slapping noises where his black balls hit your ass cheeks, and finally slams his knot inside with a thrust that causes you to hunch up in pain and pleasure. He keeps trying to thrust, even when he is tied, and finally brings himself to orgasm, filling you with black, rubbery seed.[mimpregchance]";
		else:
			say "     [if HP of player > 0]Willfully subjecting yourself to the beast's whims[else]Too weak to contend the beast's will any further[end if], you're forced to the ground, giving you a proper view of the canine's rubbery cock, all too eager to be put to use. He presses the twisted organ's tip against your lips, and your mouth [if HP of player < 1 and player is not submissive]reluctantly[else]instinctively[end if] yields to the intrusion, tainted rod's taste of synthetic latex and heady, feral musk overwhelming your senses as the wolf thrusts it into the depths of this open hole.";
			say "     Crimson knot [if scalevalue of player > 3]immediately[else]quickly[end if] banging against your face, an irreverent illustration of his wanton lack of regard, it's not long before the beast forces you to engulf that as well, howling in carnal satisfaction as his bitter black seed floods your throat. [if HP of player < 1 and player is not submissive]Forced[else]Compelled[end if] to swallow down the majority of it, his tainted flow does eventually subside.";
		say "     Need sufficiently sated, he pries his latex knot free of you, ebon ejaculate oozing across the ground from his spent organ";
		let extrainfect be false;
		if wslevel is 3 or (wslevel is 2 and (a random chance of 1 in 3 succeeds or (player is kinky and a random chance of 1 in 3 succeeds))):
			say ". Not content to merely use you, he raises his leg, relieving himself over your [if scalevalue of player > 4]massive, [else if scalevalue of player is 4]larger, [else if scalevalue of player < 3]smaller, [end if][bodytype of player] form, yellowish latex spraying over your body and draining onto the street. Its strong, chemical and acrid scent fills your senses while the latex wolf marks you as his";
			increase libido of player by 2;
			decrease humanity of player by 1;
			if libido of player > 100, now libido of player is 100;
			now extrainfect is true;
		say ".";
		say "     The wolf looks at you with satisfaction and walks off[if showlocale is true] into the city[end if], leaving you to recover from the ordeal.";
		if extrainfect is true, infect "Latex Wolf";

Part 2 - Sex Menu

to say LatexWolfSexMenu:
	say "     What shall you do with the Latex Wolf?";[Which Fuck]
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Butt Fuck";
		now sortorder entry is 1;
		now description entry is "Fuck the Latex Wolf in the ass";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Butt Fuck"):
					say "[ButtFuckLatexWolf]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You back away and shake your head.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say ButtFuckLatexWolf:
	say "     The wolf lets out a needy whimper as you approach, his body squeaking as he lowers his head and lifts his ass towards you invitingly. You have no intention of letting such a nice ass go to waste either, and you remove your equipment as you step forward. You grab hold of his hips, his cool skin stretching between your fingers. Using your firm grip on him to your advantage, you easily align yourself with his pucker, placing the tip of your [cock of player] cock teasingly at the wolf's entrance. The canine whimpers, squeaks and pushes back towards you needily, but your firm grip keeps you in control.";
	say "     You lean over the wolf and thrust forward, sinking deep into his tight tailhole as it stretches around you with a squeak. The lupine lets out a low, pleased rumble at the feeling of your hard length within him and pushes back against your hips with a needful whine. Your pre lubricates his insides, the wolf's hole becoming slick and slidy, making it ease it easy for you to slip out of him, only to force yourself back in. You continue to hammer into the wolf, drawing pleasured groans from both of you as you increase your pace. Resting more of your weight on his back, feeling the sleek smoothness of his latex form against your chest, you reach around his body with one arm and feel around until you manage to grasp the wolven shaft. His length has an unnaturally smooth texture, slickened by a coat of lube-like as you pound against his prostate.";
	WaitLineBreak;
	say "     You stroke the creature's cock in time with your thrusts, fucking him hard enough to rock him forward, causing him to squeak with the movement. The pleasure for you both starts to build, and among the squeaking and heavy breathing, you can hear the wolf whimper, followed by a pleasured howl as he cums. You pull your hand away from his cock as black liquid-latex cum gushes onto the ground. You pause for a moment as the wolf's ears fold and appear to begin melting. He looks back towards you, a happy grin on the canine's face as his whole body starts to soften and melt.";
	say "     You're so close to finishing. Do you pull out and cum safely on him, or do you stay inside and risk getting some of the melting latex on you?";
	say "     [link]Yes[as]y[end link] - Cum Inside";
	say "     [link]No[as]n[end link] - Pull Out";
	if player consents:
		LineBreak;
		say "     You are determined to finish fucking the wolf, holding onto his hips and gripping tightly as you slam into him with reckless abandon. Your pleasure builds as you use the melting wolf's ass like a sex toy, the pressure building until you can't hold it in any longer. With a final thrust, you hilt in him, releasing your seed deep into his rear as it starts to melt and collapse around you. Pulling out, you manage to free yourself from his now-gooey depths, but some of the liquid latex still clings to your spent shaft. It moves like a creature of its own, slowly spreading [If cock width of player > 0]to encapsulate your balls[else]across your crotch[end if]. You try pulling it off of you, but your efforts prove in vain, the ebon latex clinging to your fingers and spreading over more of your body.";
		say "     Helpless to it's attack, it continues to slide across your body, the latex cool to the touch as it slithers across your flesh like a living bodysuit. By the time it covers you completely, it starts to absorb into your skin, merging with you. Whatever damage has been done, has been done, so you reclaim your gear before returning to your goals, wondering if you have made a terrible mistake.";
	else:
		LineBreak;
		say "     Not wanting to risk getting any of the melting wolf on you, you pull out of him, leaving the latex canine to whine, whimper and squeak at you as you finish yourself off with your hand. You spurt your cum onto the melting black mass, watching as it mixes with and is absorbed by the now-rubbery puddle. Relieved at the close call, you put your gear back on before heading back out on your travels.";


Section 2 - Monster Insertion

Table of Random Critters (continued)
name	enemy title	enemy name	enemy type	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	DayCycle	altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;


When Play begins:
	Choose a blank row from Table of Random Critters;
	now name entry is "Latex Wolf"; [Name of your new Monster]
	now enemy title entry is "";
	now enemy name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "The latex wolf [one of]slaps you with a rubbery pad[or]claws you with plastic nails[or]bites with rubbery teeth[or]pounces forward and bodyslams you[at random].";
	now defeated entry is "[latex wolf loses]";
	now victory entry is "[latex wolf wins]";
	now desc entry is "[mongendernum 3]     You are startled when you hear a rubbery, skidding noise [if a random chance of 1 in 2 succeeds]from behind you[else if a random chance of 1 in 2 succeeds]to your left[else]to your right[end if]. Turning to face the noise, you spot a black and white latex wolf whipping around the corner."; [ Description of the creature when you encounter it.]
	now face entry is "elongated with a muzzle and sharp teeth"; [ Face description, format as "Your face is (your text)."]
	now body entry is "small and lupine, bent onto all fours. Your insides feel strange, as if they are made of something shifting and changing"; [ Body Description, format as "Your Body is (your text)"]
	now skin entry is "rubbery latex with black, fur-like patterned"; [ skin Description, format as "You have (your text) skin."]
	now tail entry is "Thin and black, your tail whips back and forth behind you."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "deep red with a canine knot towards the bottom"; [ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "your nose elongates, growing into a muzzle as your teeth sharpen"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "your body bends, and your spine and skull grow soft and reform, forcing you down onto all fours. You can feel your insides churn and flow as if somehow melting together and changing as well"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "it smooths, becoming flawless, and growing a black rubbery layer as you watch"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "a long tail mutates out, black and round, whipping back and forth with your emotions"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "a knot forms on the base while a sheath forms towards the bottom, and it turns a deep red"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 12;
	now dex entry is 18;
	now sta entry is 12;
	now per entry is 16;
	now int entry is 10;
	now cha entry is 12;
	now sex entry is "Male"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 30;
	now lev entry is 5; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you lose ]
	now wdam entry is 5; [Amount of Damage monster Does when attacking.]
	now area entry is "Outside"; [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now cocks entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 6; [ Length infection will make cock grow to if cocks]
	now cock width entry is 4; [ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 0; [ Number of Breasts infection will give you. ]
	now breast size entry is 0; [Size of breasts infection will try to attain ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 0;
	now cunt width entry is 0;
	now libido entry is 5; [ Amount player Libido will go up if defeated ]
	now loot entry is "dirty water";
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]rubbery[or]latex[or]animalistic[or]flexible[at random]";
	now type entry is "lupine"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Section 3 - Progressive Infection

lwcounter is a number that varies. lwcounter is usually 240.

an every turn rule:
	if bodyname of player is "Latex Wolf" and lwcounter - turns > 3:
		let tt be ( 100 - humanity of player ) + libido of player + a random number between 1 and 50;
		if tt < a random number between 1 and 250:
			say "[one of]You feel a strange churning in your latex body and you can feel the metamorphosis spread further[or]You find yourself munching on some rather tasty plastic you found lying around[or][lwmast1][or][lwmast2][or]You eye your supplies, thirsty not for the water, but hungry for the plastic bottle[or]Your contort your flexible latex body and start licking your groin, enjoying the rubbery taste of your leaking fluids and lapping it all up as you climax, spraying into your mouth[in random order]";
			say ". You feel yourself slip a little further into the bizarre infection.";
			decrease humanity of player by a random number from 3 to 8;
			if "Strong Psyche" is listed in feats of player, increase humanity of player by a random number between 0 and 2;
			if "Weak Psyche" is listed in feats of player, decrease humanity of player by a random number between 0 and 2;
			increase libido of player by a random number from 3 to 8;
			if "Horny Bastard" is listed in feats of player, increase libido of player by 1;
			if "Cold Fish" is listed in feats of player, decrease libido of player by 1;
			if libido of player > 100, now libido of player is 100;
			now lwcounter is turns;
			infect "Latex Wolf";

to say lwmast1:
	if player is male:
		say "Overcome with lustful urges, you lay on your back and rub your paws over your cock. You release squeaky growls of pleasure as your pre dribbles onto your body. Your altered paws have trouble gripping your shaft effectively, but you make due with stroking it, eventually spraying your thick, latex-like seed across your body. While you lay there, panting on your back, you lick your paws clean";
	else:
		say "Overcome with lustful urges, you lay on your back and rub your paws over your pussy. You release squeaky growls of pleasure as you tease the latex folds and your juices run down your thighs. Your altered paws have trouble teasing your slit effectively, but you make due with stroking it[if cunt width of player > 3] and pushing a somewhat malleable paw into your cunt[end if]. Driven to climax eventually, you moan loudly and release a spurt of latex-like femme cum. While you lay there, panting on your back, you lick your paws clean";
		if cunt width of player < 5 and "Male Preferred" is not listed in feats of player:
			increase cunt width of player by 1;
			if "Modest Organs" is listed in feats of player and cunt width of player > 5:
				now cunt width of player is 5;

to say lwmast2:
	if player is female:
		say "Overcome with lustful urges, you whimper softly with the need for satisfaction. You spot a plastic rod of roughly the right size and naughty urges fill your mind. Getting yourself lined up properly, you lower your dripping pussy down onto the vaguely phallic object with a moan and start riding it hard and fast. Your pussy grips and squeezes it as if it were a real cock and it becomes increasingly satisfying as your lust builds. Finally climaxing messily, you moan and rise to pull off it, but find your pussy melted and absorbed it after you came";
		if cunt length of player < 8 and "Male Preferred" is not listed in feats of player, increase cunt length of player by 1;
	else:
		say "Overcome with lustful urges, you whimper softly with the need for satisfaction. You spot a foam latex toy and pounce on it, grinding your cock against the strangely enjoyable material. You rub your throbbing erection against it, moaning as you ride it hard and fast. Your precum dribbles out onto it as it feels increasingly satisfying as your lust builds. Finally climaxing messily, you moan and rise onto all fours, finding that much of the toy has melted away, flowing into your body. You gobble down the sticky and cum-soaked remains with relish";


Section 4 - Endings

when play ends:
	if bodyname of player is "Latex Wolf":
		if humanity of player < 10:
			say "     As the infection runs its course, it spreads through your body, changing you more and more into a non-anthro, latex wolf. When the rescue begins, you can hear a strange, ultrasonic siren off in the distance with your improved hearing and are drawn to it. Fire trucks arrive, sirens blaring with teams of soldiers around them. They are spraying down several other latex wolves and foxes who have arrived. You run up to one, yipping and wagging your tail in the hopes of a cure. As you move closer to the truck, you are pointed out and sprayed with a strange chemical.";
			if intelligence of player < 16 or dexterity of player < 24:
				if a random chance of 2 in 3 succeeds:
					say "     You turn your head back and watch as the latex melts off of your body leaving fur underneath. You fall down and whimper as you realize that you are no longer a latex wolf, but instead trapped as a real one even as you feel what remains of your mind fading. The soldiers exclaim in surprise at your incomplete destruction and startling transformation, but you dash off into the city before they can prevent your escape. Under the cover of night, you slink off into the wilderness, mind that of a semi-intelligent wolf.";
				else:
					say "     You gurgle wetly as you feel yourself starting the melt. You struggle to escape, but another truck turns its hose on you and you melt away into another messy stain of latex goo in the wake of the deadly trucks.";
					stop the action;
			else:
				say "     You gurgle wetly as you feel yourself starting to melt, turning into a fluid goo. You struggle over to a nearby drain and dive into it, flowing through the grate. You can faintly hear some commotion above concerning your escape, but can hardly understand it. You do manage to congeal enough to pull yourself onto a ledge and down a side passage before a large rush of the strange solvent is sprayed down after you. You are quite weakened for a time, but do learn to pull yourself partially back together, now a liquid latex wolf.";
				say "     Now immune to the call of the siren, you follow the fire trucks['] path back to their base, consuming the melted wolves and foxes left in their wake, growing larger and larger. By the time you get to their depot, you are twice the size of their fire trucks and attack them. You flow across their lines, easily overpowering them while they're busy trying to refill the trucks. Immune to their weapons, you encircle the soldiers and amuse yourself with them, eating some and stuffing others into any orifice you care to create. Finally, with your overfull balls churning with liquid latex cum, you spray your semen over those still remaining. As they start to change into latex wolves, you chuckle maliciously and turn the hose on them, subjecting them to the same deadly fate as they tried to impose on you. As they howl and squirm, unable to get away, you slurp down all the tasty goo with a vicious grin.";
				say "     You spend the next day collecting more playtoys as well as another latex wolf. You cum over the soldiers and then melt them, letting the latex wolf enjoy the tasty treat and grow into another giant, fluid wolf like yourself. You and your enormous mate track down any of your previous allies in the city you can still find and enjoy playing with them before consuming them. Unstoppable, you both run rampant across the city from time to time, transforming and eating the other, lesser infected when not squirming together in fluidic sex in a large basin.";
				repeat with y running from 1 to number of filled rows in Table of Random Critters:
					choose row y in Table of Random Critters;
					if name entry is "Latex Wolf":
						now monster is y;
						break;
				now tailname of player is "Latex Wolf";
				now facename of player is "Latex Wolf";
				now skinname of player is "Latex Wolf";
				now bodyname of player is "Latex Wolf";
				now cockname of player is "Latex Wolf";
				now tail of player is tail entry;
				now face of player is face entry;
				now skin of player is skin entry;
				now body of player is body entry;
				now cock of player is cock entry;
				attributeinfect "Latex Wolf";
				now cock length of player is cock length of player * 10;
				now cock width of player is cock width of player * 10;
				now cunt length of player is cunt length of player * 10;
				now cunt width of player is cunt width of player * 10;
				now breast size of player is breast size of player * 10;
				if breast size of player > 26, now breast size of player is 26;
				stop the action;
		else:
			say "     As the rescue rolls in, you can hear an ultrasonic siren calling to you. You head out to investigate and can see a series of fire trucks passing through the city with soldiers around them. They are spraying down any latex wolves and foxes that are drawn in by the sound. You signal the soldiers as you step out. They turn to spray you, but hold off as you are still sane enough to speak. Determining that you've not succumb, they have you wait back in the bunker, calling for an extraction team immediately.";
			say "     You are brought back to the base and subjected to some frantic testing. Confirming that you've not fully succumbed, they give you a treatment to protect you from continued, uncontrolled change, saving you from succumbing entirely to your infection. Still trapped in a quadruped body, you have difficulty establishing a normal life. Fortunately, your body hungers less for actual food and is often content with plastic, rubber and latex products for sustenance. You eventually get a job doing quality control for a large toy factory, having a keen eye (and nose) for defective products. And since they partially pay you with any tasty rejects that can't be recycled, you are quite happy with the work.";
			if intelligence of player > 15 and perception of player > 15:
				say "     Your intelligence and keen senses for synthetics allows you to catch the occasional quality issue before the molten plastic is even poured. A supervisor notices you doing this and recommends you move to working at that stage all the time. Your affinity for the material prompts you to start proposing small, cost-effective improvements that are met with increasing support. As costs go down and quality rises, you are promoted to devote part of your time to further innovation. At your own suggestion, you are given a desk with a paw-accessible computer next to the vats so you can taste test each one without breaking from your research.";
				if humanity of player < 25:
					say "     As if driven, you throw yourself into your work more and more. You study the science of polymers, reading books and journals. Research made by studying the latex creatures like yourself which have arisen from the infection has been very fruitful and leads you to more success. Over the years, your company has patented many of your formulas and earned loads of money from them, but you don't stop. You publish papers on your own and attend scientific symposiums, but you happily continue working for the toy manufacturer.";
					say "     One day, you get your team working on a special batch, filling one of the large vats. The complicated mixture is prepared, mixed and melted. As you step up to give it your usual taste test, you fall into it. With a wet moan, you melt into the latex compound while people start yelling and run up to help you. One brave assistant, unconcerned for [if player is male]herself[else]himself[end if], leans over the mess to grab your hand.";
					say "     But instead of just grabbing your hand, you end up flowing over [if player is male]hers[else]his[end if] and across [if player is male]her body. She[else]his body. He[end if] screams in surprise as you envelop [if player is male]her[else]him[end if] and start to rise out of the vat as a huge blob of latex. The rest of the people gathered there flee as you start to reform into a huge latex wolf, just as you had hoped would happen. You release your transforming assistant and coat them in your [if player is male]cum[else]pussy juices[end if] and more of the new formula, making them into a large latex wolf like yourself to be your mate.";
					say "     Together, you both feast upon the contents of the factory, becoming huge, unstoppable, lustful, latex giants. You have fun attacking the nearby factories, using the little humans as food or playtoys in every perverted way you desire. You transform some into small latex wolves to help keep your human toys penned into your city, but most are absorbed or consumed after your fun is done. All your special friends and lovers get extra-special treatment before being made into large wolves to move on to other cities of their own.";
					repeat with y running from 1 to number of filled rows in Table of Random Critters:
						choose row y in Table of Random Critters;
						if name entry is "Latex Wolf":
							now monster is y;
							break;
					now tailname of player is "Latex Wolf";
					now facename of player is "Latex Wolf";
					now skinname of player is "Latex Wolf";
					now bodyname of player is "Latex Wolf";
					now cockname of player is "Latex Wolf";
					now tail of player is tail entry;
					now face of player is face entry;
					now skin of player is skin entry;
					now body of player is body entry;
					now cock of player is cock entry;
					attributeinfect "Latex Wolf";
					now cock length of player is cock length of player * 10;
					now cock width of player is cock width of player * 10;
					now cunt length of player is cunt length of player * 10;
					now cunt width of player is cunt width of player * 10;
					now breast size of player is breast size of player * 10;
					if breast size of player > 26, now breast size of player is 26;

Latex Wolf ends here.
