Version 2 of Latex Wolf by Stripes begins here.
[ Version 2.6 - Bounty for Bradford - Stripes]
[- Originally Authored By: Hellerhound -]

"Adds a Latex Wolf to Flexible Survival's Wandering Monsters table"

when play begins:
	add { "Latex Wolf" } to infections of guy;
	add { "Latex Wolf" } to infections of furry;

Section 1 - Creature Responses

To say latex wolf loses:
	if inasituation is true:
		say ""; [dealt with at the event source]
	else:
		say "[RegularLatexWolfLoses]";

to say RegularLatexWolfLoses:
	say "     The latex wolf collapses, its head slumped against the ground. As the creature flops around in its weakened state, your eyes can't help but wander over the feral's body, giving you ideas about what you could do with its muzzle, cock or rear end.";
	LineBreak;
	say "     Would you like to have some fun with the latex wolf ([link]Y[as]y[end link]), or do you just leave ([link]N[as]n[end link])?";
	if Player consents:
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
		say "     As you go down in front of the wolf creature, [if HP of Player > 0]unwilling[else]unable[end if] to continue to oppose it, you are pounced upon by the latex creature. As it climbs atop you, it seems to lose structural integrity, melting and flowing down over you. You try to struggle as the black fluid flows over you, gradually engulfing you, but it clings to you tightly and makes it hard to move[if Cock Count of Player > 1]. As the dark goo flows over your cocks, it squeezes at them, making you aroused despite yourself[else if Cock Count of Player is 1]. As the dark goo flows over your cock, it squeezes at it, making you aroused despite yourself[end if][if Cunt Count of Player > 1]. The goo forms phallic bulges that are pressed into your cunts, stuffing them full of flowing black latex that throbs inside you, making your vaginas quiver with arousal[else if Cunt Count of Player is 1]. The goo forms phallic bulges that are pressed into your cunt, stuffing it full of flowing black latex that throbs inside you, making your vagina quiver with arousal[end if][if anallevel > 1]. More of the thick, flowing latex presses its way into your anus, stuffing your rear with a swelling cock and knot tying it inside you[end if].";
		say "     As your body is subject to this abuse, the black goo continues to spread over you, covering your [bodydesc of Player] body and over your [FaceName of Player] head. Your head is engulfed and your mouth and nose covered in flowing latex, cutting off your air supply momentarily. As you begin to grow woozy from lack of oxygen, an air passage is opened and you are allowed to breathe. Having seized control of your [bodytype of Player] body, the latex wolf works its flowing, rubbery goo over [if Player is female or anallevel > 1]and inside [end if]your flesh, using your body for its own pleasure. It eventually cums, spraying gooey black semen [if Player is female or anallevel > 1]inside you[else]over you[end if][if Player is male] while pumping out your own seed onto the ground. Your balls drained, it sends a tendril of black goo flowing along your urethra and flowing into your balls, claiming them with its own dark cum until they're full and swollen with it[end if].[impregchance]";
		say "     Weak and thoroughly used by the wolf creature, you are left lying on the ground as it flows off of you, much of its tainted latex having bonded with you. You can feel it sinking into your [bodytype of Player] body, seeking to make you like itself.";
		if Player is male and Ball Size of Player < 6, increase Ball Size of Player by 1;
		decrease humanity of Player by a random number between 2 and 4;
		infect "Latex Wolf";
	else:
		if Player is female:
			say "     As you [if HP of Player > 0]submit[else]fall to the ground[end if], the latex wolf rolls you over and sits up, on your hips, impaling you on his red, rubbery cock. He then begins to lean forwards and backwards, sliding his doggy shaft in and out of [if Cunt Count of Player > 1]one of your [cunt size desc of Player] cunts[else]your [cunt size desc of Player] cunt[end if], squeaking with every thrust. He thrusts faster, and faster, making slapping noises where his black balls hit your ass cheeks, and finally slams his knot inside with a thrust that causes you to hunch up in pain and pleasure. He keeps trying to thrust, even when he is tied, and finally brings himself to orgasm, filling you with black, rubbery seed.[impregchance]";
		else if Player is submissive and anallevel > 1:
			say "     You fall to the ground and the wolf pounces you, hoping there is something for him to use. When your lack of pussy is discovered and the male seems no longer interested in you, you whine softly, your submissive needs coming to the fore as you present yourself to him. Spurred by this wanton display, the latex creature pounces your ass and drives his red, rubbery cock into you. You groan softly at this intrusion, your body welcoming it despite the discomfort initially felt.";
			say "     He rocks his hips, pounding his doggy shaft in and out of your ass, squeaking with every thrust. He thrusts faster, and faster, making slapping noises where his black balls hit your ass cheeks, and finally slams his knot inside with a thrust that causes you to hunch up in pain and pleasure. He keeps trying to thrust, even when he is tied, and finally brings himself to orgasm, filling you with black, rubbery seed.[mimpregchance]";
		else if a random chance of 1 in 3 succeeds or ( anallevel is 3 and a random chance of 1 in 3 succeeds ):
			say "     You fall to the ground, the latex wolf pouncing your ass and driving his red, rubbery cock into you. You groan softly at this intrusion, your body welcoming it despite the discomfort initially felt. He rocks his hips, pounding his doggy shaft in and out of your ass, squeaking with every thrust. He thrusts faster, and faster, making slapping noises where his black balls hit your ass cheeks, and finally slams his knot inside with a thrust that causes you to hunch up in pain and pleasure. He keeps trying to thrust, even when he is tied, and finally brings himself to orgasm, filling you with black, rubbery seed.[mimpregchance]";
		else:
			say "     [if HP of Player > 0]Willfully subjecting yourself to the beast's whims[else]Too weak to contend the beast's will any further[end if], you're forced to the ground, giving you a proper view of the canine's rubbery cock, all too eager to be put to use. He presses the twisted organ's tip against your lips, and your mouth [if HP of Player < 1 and player is not submissive]reluctantly[else]instinctively[end if] yields to the intrusion, tainted rod's taste of synthetic latex and heady, feral musk overwhelming your senses as the wolf thrusts it into the depths of this open hole.";
			say "     Crimson knot [if scalevalue of Player > 3]immediately[else]quickly[end if] banging against your face, an irreverent illustration of his wanton lack of regard, it's not long before the beast forces you to engulf that as well, howling in carnal satisfaction as his bitter black seed floods your throat. [if HP of Player < 1 and player is not submissive]Forced[else]Compelled[end if] to swallow down the majority of it, his tainted flow does eventually subside.";
		say "     Need sufficiently sated, he pries his latex knot free of you, ebon ejaculate oozing across the ground from his spent organ";
		let extrainfect be false;
		if wslevel is 3 or (wslevel is 2 and (a random chance of 1 in 3 succeeds or (player is kinky and a random chance of 1 in 3 succeeds))):
			say ". Not content to merely use you, he raises his leg, relieving himself over your [if scalevalue of Player > 4]massive, [else if scalevalue of Player is 4]larger, [else if scalevalue of Player < 3]smaller, [end if][bodytype of Player] form, yellowish latex spraying over your body and draining onto the street. Its strong, chemical and acrid scent fills your senses while the latex wolf marks you as his";
			increase Libido of Player by 2;
			decrease humanity of Player by 1;
			if Libido of Player > 100, now Libido of Player is 100;
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
	if Player is male:
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
			if Player consents:
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
	say "     The wolf lets out a needy whimper as you approach, his body squeaking as he lowers his head and lifts his ass towards you invitingly. You have no intention of letting such a nice ass go to waste either, and you remove your equipment as you step forward. You grab hold of his hips, his cool skin stretching between your fingers. Using your firm grip on him to your advantage, you easily align yourself with his pucker, placing the tip of your [Cock of Player] cock teasingly at the wolf's entrance. The canine whimpers, squeaks and pushes back towards you needily, but your firm grip keeps you in control.";
	say "     You lean over the wolf and thrust forward, sinking deep into his tight tailhole as it stretches around you with a squeak. The lupine lets out a low, pleased rumble at the feeling of your hard length within him and pushes back against your hips with a needful whine. Your pre lubricates his insides, the wolf's hole becoming slick and slidy, making it ease it easy for you to slip out of him, only to force yourself back in. You continue to hammer into the wolf, drawing pleasured groans from both of you as you increase your pace. Resting more of your weight on his back, feeling the sleek smoothness of his latex form against your chest, you reach around his body with one arm and feel around until you manage to grasp the wolven shaft. His length has an unnaturally smooth texture, slickened by a coat of lube-like as you pound against his prostate.";
	WaitLineBreak;
	say "     You stroke the creature's cock in time with your thrusts, fucking him hard enough to rock him forward, causing him to squeak with the movement. The pleasure for you both starts to build, and among the squeaking and heavy breathing, you can hear the wolf whimper, followed by a pleasured howl as he cums. You pull your hand away from his cock as black liquid-latex cum gushes onto the ground. You pause for a moment as the wolf's ears fold and appear to begin melting. He looks back towards you, a happy grin on the canine's face as his whole body starts to soften and melt.";
	say "     You're so close to finishing. Do you pull out and cum safely on him, or do you stay inside and risk getting some of the melting latex on you?";
	say "     [link]Yes[as]y[end link] - Cum Inside";
	say "     [link]No[as]n[end link] - Pull Out";
	if Player consents:
		LineBreak;
		say "     You are determined to finish fucking the wolf, holding onto his hips and gripping tightly as you slam into him with reckless abandon. Your pleasure builds as you use the melting wolf's ass like a sex toy, the pressure building until you can't hold it in any longer. With a final thrust, you hilt in him, releasing your seed deep into his rear as it starts to melt and collapse around you. Pulling out, you manage to free yourself from his now-gooey depths, but some of the liquid latex still clings to your spent shaft. It moves like a creature of its own, slowly spreading [If Ball Size of Player > 0]to encapsulate your balls[else]across your crotch[end if]. You try pulling it off of you, but your efforts prove in vain, the ebon latex clinging to your fingers and spreading over more of your body.";
		say "     Helpless to it's attack, it continues to slide across your body, the latex cool to the touch as it slithers across your flesh like a living bodysuit. By the time it covers you completely, it starts to absorb into your skin, merging with you. Whatever damage has been done, has been done, so you reclaim your gear before returning to your goals, wondering if you have made a terrible mistake.";
	else:
		LineBreak;
		say "     Not wanting to risk getting any of the melting wolf on you, you pull out of him, leaving the latex canine to whine, whimper and squeak at you as you finish yourself off with your hand. You spurt your cum onto the melting black mass, watching as it mixes with and is absorbed by the now-rubbery puddle. Relieved at the close call, you put your gear back on before heading back out on your travels.";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;


When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "";
	now Name entry is "Latex Wolf"; [Name of your new Monster]
	now enemy title entry is "";
	now enemy Name entry is "";
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
	now Cock Count entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 6; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 2; [ Size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	now Nipple Count entry is 0; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 0; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	now libido entry is 5; [ Amount player Libido will go up if defeated ]
	now loot entry is "dirty water";
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]rubbery[or]latex[or]animalistic[or]flexible[at random]";
	now type entry is "lupine"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
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


Section 3 - Progressive Infection

lwcounter is a number that varies. lwcounter is usually 240.

an every turn rule:
	if BodyName of Player is "Latex Wolf" and lwcounter - turns > 3:
		let tt be ( 100 - humanity of Player ) + Libido of Player + a random number between 1 and 50;
		if tt < a random number between 1 and 250:
			say "[one of]You feel a strange churning in your latex body and you can feel the metamorphosis spread further[or]You find yourself munching on some rather tasty plastic you found lying around[or][lwmast1][or][lwmast2][or]You eye your supplies, thirsty not for the water, but hungry for the plastic bottle[or]Your contort your flexible latex body and start licking your groin, enjoying the rubbery taste of your leaking fluids and lapping it all up as you climax, spraying into your mouth[in random order]";
			say ". You feel yourself slip a little further into the bizarre infection.";
			decrease humanity of Player by a random number from 3 to 8;
			if "Strong Psyche" is listed in feats of Player, increase humanity of Player by a random number between 0 and 2;
			if "Weak Psyche" is listed in feats of Player, decrease humanity of Player by a random number between 0 and 2;
			increase Libido of Player by a random number from 3 to 8;
			if "Horny Bastard" is listed in feats of Player, increase Libido of Player by 1;
			if "Cold Fish" is listed in feats of Player, decrease Libido of Player by 1;
			if Libido of Player > 100, now Libido of Player is 100;
			now lwcounter is turns;
			infect "Latex Wolf";

to say lwmast1:
	if Player is male:
		say "Overcome with lustful urges, you lay on your back and rub your paws over your cock. You release squeaky growls of pleasure as your pre dribbles onto your body. Your altered paws have trouble gripping your shaft effectively, but you make due with stroking it, eventually spraying your thick, latex-like seed across your body. While you lay there, panting on your back, you lick your paws clean";
	else:
		say "Overcome with lustful urges, you lay on your back and rub your paws over your pussy. You release squeaky growls of pleasure as you tease the latex folds and your juices run down your thighs. Your altered paws have trouble teasing your slit effectively, but you make due with stroking it[if Cunt Tightness of Player > 3] and pushing a somewhat malleable paw into your cunt[end if]. Driven to climax eventually, you moan loudly and release a spurt of latex-like femme cum. While you lay there, panting on your back, you lick your paws clean";
		if Cunt Tightness of Player < 5 and "Male Preferred" is not listed in feats of Player:
			increase Cunt Tightness of Player by 1;
			if "Modest Organs" is listed in feats of Player and Cunt Tightness of Player > 5:
				now Cunt Tightness of Player is 5;

to say lwmast2:
	if Player is female:
		say "Overcome with lustful urges, you whimper softly with the need for satisfaction. You spot a plastic rod of roughly the right size and naughty urges fill your mind. Getting yourself lined up properly, you lower your dripping pussy down onto the vaguely phallic object with a moan and start riding it hard and fast. Your pussy grips and squeezes it as if it were a real cock and it becomes increasingly satisfying as your lust builds. Finally climaxing messily, you moan and rise to pull off it, but find your pussy melted and absorbed it after you came";
		if Cunt Depth of Player < 8 and "Male Preferred" is not listed in feats of Player, increase Cunt Depth of Player by 1;
	else:
		say "Overcome with lustful urges, you whimper softly with the need for satisfaction. You spot a foam latex toy and pounce on it, grinding your cock against the strangely enjoyable material. You rub your throbbing erection against it, moaning as you ride it hard and fast. Your precum dribbles out onto it as it feels increasingly satisfying as your lust builds. Finally climaxing messily, you moan and rise onto all fours, finding that much of the toy has melted away, flowing into your body. You gobble down the sticky and cum-soaked remains with relish";


Section 4 - Endings

when play ends:
	if BodyName of Player is "Latex Wolf":
		if humanity of Player < 10:
			say "     As the infection runs its course, it spreads through your body, changing you more and more into a non-anthro, latex wolf. When the rescue begins, you can hear a strange, ultrasonic siren off in the distance with your improved hearing and are drawn to it. Fire trucks arrive, sirens blaring with teams of soldiers around them. They are spraying down several other latex wolves and foxes who have arrived. You run up to one, yipping and wagging your tail in the hopes of a cure. As you move closer to the truck, you are pointed out and sprayed with a strange chemical.";
			if intelligence of Player < 16 or dexterity of Player < 24:
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
					if Name entry is "Latex Wolf":
						now MonsterID is y;
						break;
				now TailName of Player is "Latex Wolf";
				now FaceName of Player is "Latex Wolf";
				now SkinName of Player is "Latex Wolf";
				now BodyName of Player is "Latex Wolf";
				now CockName of Player is "Latex Wolf";
				now tail of Player is tail entry;
				now Face of Player is face entry;
				now Skin of Player is skin entry;
				now Body of Player is body entry;
				now Cock of Player is cock entry;
				attributeinfect "Latex Wolf";
				now Cock Length of Player is Cock Length of Player * 10;
				now Ball Size of Player is Ball Size of Player * 10;
				now Cunt Depth of Player is Cunt Depth of Player * 10;
				now Cunt Tightness of Player is Cunt Tightness of Player * 10;
				now Breast Size of Player is Breast Size of Player * 10;
				if Breast Size of Player > 26, now Breast Size of Player is 26;
				stop the action;
		else:
			say "     As the rescue rolls in, you can hear an ultrasonic siren calling to you. You head out to investigate and can see a series of fire trucks passing through the city with soldiers around them. They are spraying down any latex wolves and foxes that are drawn in by the sound. You signal the soldiers as you step out. They turn to spray you, but hold off as you are still sane enough to speak. Determining that you've not succumb, they have you wait back in the bunker, calling for an extraction team immediately.";
			say "     You are brought back to the base and subjected to some frantic testing. Confirming that you've not fully succumbed, they give you a treatment to protect you from continued, uncontrolled change, saving you from succumbing entirely to your infection. Still trapped in a quadruped body, you have difficulty establishing a normal life. Fortunately, your body hungers less for actual food and is often content with plastic, rubber and latex products for sustenance. You eventually get a job doing quality control for a large toy factory, having a keen eye (and nose) for defective products. And since they partially pay you with any tasty rejects that can't be recycled, you are quite happy with the work.";
			if intelligence of Player > 15 and perception of Player > 15:
				say "     Your intelligence and keen senses for synthetics allows you to catch the occasional quality issue before the molten plastic is even poured. A supervisor notices you doing this and recommends you move to working at that stage all the time. Your affinity for the material prompts you to start proposing small, cost-effective improvements that are met with increasing support. As costs go down and quality rises, you are promoted to devote part of your time to further innovation. At your own suggestion, you are given a desk with a paw-accessible computer next to the vats so you can taste test each one without breaking from your research.";
				if humanity of Player < 25:
					say "     As if driven, you throw yourself into your work more and more. You study the science of polymers, reading books and journals. Research made by studying the latex creatures like yourself which have arisen from the infection has been very fruitful and leads you to more success. Over the years, your company has patented many of your formulas and earned loads of money from them, but you don't stop. You publish papers on your own and attend scientific symposiums, but you happily continue working for the toy manufacturer.";
					say "     One day, you get your team working on a special batch, filling one of the large vats. The complicated mixture is prepared, mixed and melted. As you step up to give it your usual taste test, you fall into it. With a wet moan, you melt into the latex compound while people start yelling and run up to help you. One brave assistant, unconcerned for [if Player is male]herself[else]himself[end if], leans over the mess to grab your hand.";
					say "     But instead of just grabbing your hand, you end up flowing over [if Player is male]hers[else]his[end if] and across [if Player is male]her body. She[else]his body. He[end if] screams in surprise as you envelop [if Player is male]her[else]him[end if] and start to rise out of the vat as a huge blob of latex. The rest of the people gathered there flee as you start to reform into a huge latex wolf, just as you had hoped would happen. You release your transforming assistant and coat them in your [if Player is male]cum[else]pussy juices[end if] and more of the new formula, making them into a large latex wolf like yourself to be your mate.";
					say "     Together, you both feast upon the contents of the factory, becoming huge, unstoppable, lustful, latex giants. You have fun attacking the nearby factories, using the little humans as food or playtoys in every perverted way you desire. You transform some into small latex wolves to help keep your human toys penned into your city, but most are absorbed or consumed after your fun is done. All your special friends and lovers get extra-special treatment before being made into large wolves to move on to other cities of their own.";
					repeat with y running from 1 to number of filled rows in Table of Random Critters:
						choose row y in Table of Random Critters;
						if Name entry is "Latex Wolf":
							now MonsterID is y;
							break;
					now TailName of Player is "Latex Wolf";
					now FaceName of Player is "Latex Wolf";
					now SkinName of Player is "Latex Wolf";
					now BodyName of Player is "Latex Wolf";
					now CockName of Player is "Latex Wolf";
					now tail of Player is tail entry;
					now Face of Player is face entry;
					now Skin of Player is skin entry;
					now Body of Player is body entry;
					now Cock of Player is cock entry;
					attributeinfect "Latex Wolf";
					now Cock Length of Player is Cock Length of Player * 10;
					now Ball Size of Player is Ball Size of Player * 10;
					now Cunt Depth of Player is Cunt Depth of Player * 10;
					now Cunt Tightness of Player is Cunt Tightness of Player * 10;
					now Breast Size of Player is Breast Size of Player * 10;
					if Breast Size of Player > 26, now Breast Size of Player is 26;

Latex Wolf ends here.
