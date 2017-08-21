Version 1 of Panther Taur by Nuku Valente begins here.
[ Version 1.1 - Promoted to level 4. ]
[ Commissioned by AsureaSkie. ]

"Adds a Panther Taur creature to Flexible Survival's Wandering Monsters table"

Section 1 - Monster Responses

when play begins:
	add { "Panther Taur" } to infections of hermaphrodite;
	add { "Panther Taur" } to infections of furry;
	add { "Panther Taur" } to infections of Taurlist;
	add { "Panther Taur" } to infections of Felinelist;
	add { "Panther Taur" } to infections of BarbedCocklist;

to say defeated_panthertaur:
	if zephyrtask is 1, increase zephyrpests by 1;
	say "     The cat mewls sadly, backing away before she raises her hands to her heavy breasts, pressing them together as she gives you a smoldering look. Wouldn't it be nice to make love instead of war?[panthertaur tempt]";

To say panthertaur tempt: [player wins]
	if libido of player - humanity of player > 10:
		if cocks of player > 0:
			say "Overcome by your urges, you grin as you move to mount the inviting taur.";
			say "[mount panthertaur]";
		else if cunts of player > 0:
			say "Overcome by your urges, you eagerly move to let the taur mount and stuff you.";
[			say "[panthertaur mount]";]
		else:
			say "Overcome by your urges, you eagerly move to service the inviting taur.";
			say "[suck panthertaur]";
	else:
		say "As the victor of your fight, you do have the chance to have some fun with the horny panther taur. And options of how to do so. [bold type]What would you like to do?[roman type][line break]";
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		[]
		if cocks of player > 0 [and bodyname of player is not in infections of Taurlist]:
			choose a blank row in table of fucking options;
			now title entry is "Mount the taur";
			now sortorder entry is 1;
			now description entry is "Mount the herm taur and stuff her cunt";
		[]
		choose a blank row in table of fucking options;
		now title entry is "Suck her off";
		now sortorder entry is 2;
		now description entry is "Suck a load from the herm's thick cock";
		[]
		if cunts of player > 0 [and bodyname of player is not in infections of Taurlist]:
			choose a blank row in table of fucking options;
			now title entry is "Ride her cock";
			now sortorder entry is 3;
			now description entry is "Get that thick feline shaft in your cunt on your terms";
		[
		if cocks of player > 0 and bodyname of player is in infections of Taurlist:
			choose a blank row in table of fucking options;
			now title entry is "Mount the other taur";
			now sortorder entry is 4;
			now description entry is "Mount the herm taur and stuff her cunt";
		][
		if cunts of player > 0 and bodyname of player is in infections of Taurlist:
			choose a blank row in table of fucking options;
			now title entry is "Get mounted by the other taur";
			now sortorder entry is 5;
			now description entry is "Offer to let the taur stuff your cunt";
		]
		choose a blank row in table of fucking options;
		now title entry is "Let her use you";
		now sortorder entry is 6;
		now description entry is "Let her stuff you with her cock in whatever way she wishes";
		[]
		repeat with y running from 1 to number of filled rows in table of fucking options:
			choose row y from the table of fucking options;
			say "[link][y] - [title entry][as][y][end link][line break]";
		say "[link]100 - Turn her down[as]100[end link][line break]";
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
					if (nam is "Mount the taur"):
						say "[mount panthertaur]";
					if (nam is "Suck her off"):
						say "[suck panthertaur]";
					if (nam is "Ride her cock"):
						say "[panthertaur ride cowgirl]";
					if (nam is "Let her use you"):
						say "[panthertaur rape]";
					[if (nam is "Mount the other taur"):
						say "[taur mount panthertaur]";
					if (nam is "Get mounted by the other taur"):
						say "[panthertaur mount taur]";]
					wait for any key;
			else if calcnumber is 100:
				say "Resist your urges and reject her offer?";
				if the player consents:
					now sextablerun is 1;
					say "     As you turn her down, the cat gives a soft huff, almost a hiss, then flees on quick feline paws, her shapely rump the last thing seen.";
					wait for any key;
				else:
					say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
			else:
				say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		clear the screen and hyperlink list;

to say panthertaur rape: [panthertaur wins or player gets mounted]
	if cunts of player is 0:
		say "     The feline shoves you roughly to the ground, her lower forepaws on your shoulders as she inches up to you, thrusting her long, barbed shaft against your lips and growling with an obvious desire. Her powerful rear hips rock forward, nudging you until you open your mouth and permit the salty pole across your tongue. The barbs prove soft, caressing over your mouth as she begins to rock into you, purring all the louder with approval. Her paw hands caress over your head, stroking ears and running down over your cheek and [skin of player] skin. You can see her balls bouncing with each thrust, her many breasts jiggling just in front of you.";
		say "     She draws you forward, pressing the shaft as far into your mouth as she can, trying to wedge it down your throat as she goes tense, flooding you with great rushes of feline pudding. Most of it arrives in your belly, a direct injection of protein; some of it backwashes, splattering across her own thick member and across your front. With a satisfied mew, she draws back, freeing herself from your lips with a pop before she settles. She looks at you a moment, then turns and leaves without word, tail swaying.";
		decrease hunger of player by 5;
		if hunger of player < 0, now hunger of player is 0;
	else:
		if cunt length of player < 10 or cunt width of player < 8:
			say "     She moves up behind you, giving a soft purr of approval as she bowls you over onto your back. She clambers over you easily, many soft breasts along her belly rubbing against your [breast size desc of player] chest. She thrusts her hips forward, and you can feel her thick, spined member rubbing along your left leg, then your right as she rocks, trying to find the target. Her powerful lower paws pin you in place as she gets the aim right, nudging the massive head to your [cunt size desc of player] lips and shoving forward.";
			say "     Pain and pleasure alternate as she tries to wedge herself into your resisting passage. Though you are too small to take her, she gives it her best try despite, stretching you and rubbing your walls with her soft spines, sending flashes before your eyes at the overwhelming sensations radiating from your overfilled pussy. As she finds your bottom, she starts to rock as hard as she can, battering against your cervix, her large balls swaying potently with every thrust, her breasts mashing against you.";
			say "With a loud howl, she explodes thickly into you, feline cum spraying everywhere, splashing your thighs and messing up the ground as most of it washes back even as your womb swells with what does make it in.[impregchance] Satisfied, the feline uses a paw to gently rub your chest a moment, then slides free, spines tickling faintly along the way. With a happy sigh, she slips away, leaving you in the puddle.";
			increase cunt length of player by 2;
			increase cunt width of player by 1;
		else:
			say "     The feline brushes her paw like hands across your [skin of player] body, pressing to your front with her two heavy milk bags. Her hands reach for your sides, caressing as she bites at your ears gently, whispering, 'You will do just fine.'[line break][line break]She prowls behind you, then hooks her forepaws around your torso, hefting you up as she eases herself forward. You can feel her firm spear press against your thick lips, then push smoothly into your trembling form. Despite its mass, the cat has no issue fucking your huge pussy, holding you firmly to her lower torso as she rocks against you powerfully, letting her heavy balls slap against you with potent thuds.";
			say "     The barbs of the shaft tickle and pull at your inner walls with every withdraw of the firm tool, sending ecstatic tingles along your spine and keeping your paralyzed form locked in one fitful release after another. Those barbs press harder suddenly, digging softly against your flesh as great floods of seed rush out into your body, rounding your belly with molten heat spreading through you, and pouring in a waterfall back down along the shaft and your thighs, dripping to the ground below.[impregchance] The cat, roaring her satisfaction, is slow to gently pull you free and set you to your shaking feet.";

to say mount panthertaur:
	say "     As if bowing to her superior, the cat turns away from you, flipping up her tail to expose her large feral sex to your hungry eyes. You can feel your [cock size desc of player] [cock of player] equipment rising to readiness as you approach, quickly shedding anything that would keep you from this graceful, claimed, being. Your hands seize at her powerful rear hips as you press up against her, running the tip of your [cock of player] tool up and down against her sex, covering it in the hot, wet dew that she is leaking for you. The smell of it makes your [ball size] ache with need. Her soft mewl snaps you back into focus. You give the majestic beast what she desires, pressing the firm head of your tool to her sex, then easing it in slowly.";
	say "     She looks over her back, almost frowning at your slowness. You pull her back and lunge forward. Her yowl echoes as she screams her approval, and there is nothing to hold either of you back. You rock against her, and she grinds against you, bodies meeting in violent passion. Her honey splatters against the ground as you slam home into her as if every movement were your last, [ball size] rocking under you as you plunge into that hot tight channel. ";
	if cock length of player > 15:
		say "Her cunt is spread lewdly wide around your mammoth cock, but she appears to be in heaven; despite the girth, or perhaps because of it, every wet slap makes her mewl and tremble.";
	else:
		say "[line break]";
	say "     At last, you cannot hold back the tide any longer. Your cry mixes with hers, filling her with seed, making her wet cunt go into spasms around your shaft. She presses back into you powerfully, holding you tight as you release, looking at you over her shoulder as if daring you to not fill her all the way. ";
	if cock width of player < 5:
		say "Your insufficient deposit angers the cat; she gives a displeased growl, then surges forward, leaving your cock glistening as she flees off, disappointed.";
	else if cock width of player > 10:
		say "Your huge balls explode in an amazing torrent of seed. Her tongue extends as her lower belly begins to sag under the weight of your offering. When your orgasm tapers off, she slowly pulls free and begins to, on shaking feet, pad off, satisfied and dizzy.";
	else:
		say "You fire several powerful blasts into her waiting womb. She draws cleanly from you and turns, kissing your cheek, then prowls off.";
		now libido of player is (libido of player + libido of player [+ libido entry [of what?]]) / 3;

to say suck panthertaur:
	say "     Eyeing that heavy shaft below the feline's lower body and feeling your mouth watering slightly, you motion for her to get down and roll over onto her backs. She does so, albeit with a curious look... properly exposing that long barbed shaft for your viewing pleasure. Practically drinking in the sight of it, you lower yourself down to the ground next to her lower body, reaching out and stroking those soft barbs with your fingers. The soft fleshy nubs feel rather interesting to your touch, but thankfully should pose no issues to your current plan, just add a bit of interesting sensation.";
	say "     Once you're in position and ready you lean in, brushing your tongue over the tip of that member and making the taur shiver with a delight, a bead of warm pre instantly on your tongue. You lick it up, savoring the warm and pleasant taste of the herm for a moment before you move in for more, wrapping your lips around that thick tip and starting to suck. Your hands keep themselves busy as well, one wrapping around (or at least gripping) the lower part of that shaft and pumping it while the other moves lower, beneath the taur's balls to get at her cunt and busily fingering and pleasuring it as well.";
	WaitLineBreak;
	say "     At this point her whole body is trembling a bit and her hands are clutching at the ground, though she seems to be doing you the favor of restraining her instinct to thrust and shove her cock down your throat, letting you take it at your own pace. Which you do quite eagerly, stuffing as much of that softly-barbed feline cock into your mouth and doing your best to wedge it into your throat. ";
	if "Vore Predator" is listed in feats of player:
		say "With the unnatural stretchiness of your altered body this happens with little difficulty at all, as you manage to get that thick cock to slide down your throat... and take it in all the way to the base as well. This quite surprises the panthertaur and sends a massive shudder through her body. No longer needing one hand on her cock, you're free to use both of your hands to work her cunt while you bob quickly on her length, swallowing around it in powerful motions...";
		say "     Your dual stimulations of her body soon cause her to roar out in bliss as you bring her to a powerful dual climax. Her heavy cock twitching in your throat as seed floods directly down and into your belly, quickly bloating and filling it with shot after shot of her plentiful seed. Her cunt isn't left out either, and your hands are left completely soaked and likely to smell of her feminine juices for a while. With your pleasurable task complete you pop off of her cock, allowing some of her remaining juices to pool between her many breasts as you stand up and clean yourself off a bit, leaving the now passed-out panthertaur lying there as you return to your adventure.";
		decrease hunger of player by 15;
		if hunger of player < 0, now hunger of player is 0;
		decrease thirst of player by 15;
		if thirst of player < 0, now thirst of player is 0;
	else:
		say "You're sadly unable to do more than press the tip into your throat, but your swallowing against it certainly seems to please the panthertaur and she growls in approval, her hands busy fondling and squeezing her breasts as you work.";
		say "     Your dual stimulations of her cock and cunt soon cause her to roar out in bliss as you bring her to a strong dual climax. Her powerful cock twitching in your throat as seed floods into your mouth, most of it arriving in your belly; some of it backwashes, splattering across her own thick member, your front, and her plentiful breasts. Her cunt isn't left out either, and that hand that was working it is left completely soaked and likely to smell of her feminine juices for a while. With your pleasurable task complete you pop off of her cock, allowing the last few shots of her cum to paint and pool between her many breasts as you stand up and do your best to clean yourself off, leaving the nearly passed-out panthertaur lying there to recover on her own as you return to your adventure.";
		decrease hunger of player by 5;
		if hunger of player < 0, now hunger of player is 0;
		decrease thirst of player by 10;
		if thirst of player < 0, now thirst of player is 0;

to say panthertaur ride cowgirl:
	say "     Deciding you want to take the panther's herm cock into your cunt on your own terms you grin at her, ordering her to get down on her backs. She seems slightly reluctant to do so but complies as you insist, settling on her backs and watching you, displaying her many rows of breasts along with that proud spire and orbs of hers. Shedding any clothes in the way, you quickly move to straddle her underbelly, one hand hefting and guiding that tip to your [cunt size desc of player] lips. Holding it in place, you push yourself back onto it, guiding that tapered tip inside of you with a shiver of excitement from both you and the taur.";
	if cunt length of player < 10 or cunt width of player < 8:
		say "     You let out a grunt as that length proves a bit of a challenge to fit inside your [cunt size desc of player] pussy. Undetered however, you wiggle and brace yourself, slowly rocking and grinding yourself down on that length bit by bit. Gradually, you do manage to stretch yourself out more around that thick spire, but you're still not able to take it all. Once you've fit as much of that length as it seems you're going to be able to take for now, you grip onto her breasts for support and start riding that cock more properly, though you're forced to keep your riding of her somewhat slow for the time being. She still seems to be enjoying it however, and the soft flesh barbs slowly dragging along your walls are sending thrills of pleasure up your spine.";
		WaitLineBreak;
		say "     With the tightness of your [cunt size desc of player] cunt and the thickness of her cock as well as those barbs teasing your walls and your clit, it doesn't look like either of you are going to be lasting long. So it's not too much longer until she shudders and arches under you, cock throbbing powerfully and blasting thick feline scene into your ready depths. Your belly feels slightly bloated for a second before much of it washes back out along her exposed length, splattering her breasts, balls, and your thighs. The sensations of it all is enough to set you off as well, your walls gripping and squeezing around her shaft ";
		if cocks of player > 0:
			say "while your own [if cocks of player > 1]lengths twitch and spray[else]length twitches and sprays[end if] your seed across her plentiful breasts. ";
		else:
			say "while you moan and tremble over her. ";
		say "Once you've both recovered enough, you pull off of her (with a small gush of those fluids that hadn't already spilled out), and get cleaned up before continuing on your way.[impregchance][Line Break]";
		increase cunt length of player by 2;
		increase cunt width of player by 1;
		now libido of player is (libido of player + libido of player [+ libido entry [entry of what?!]]) / 3;
	else:
		say "     The two of you let out a load moan in sync as you easily manage to sink your way down onto that massive spire and you can feel the taur's body rumbling with a heavy purr beneath you. Flashing her a grin, you brace yourself by gripping a pair of her breasts as you push yourself up... before allowing yourself to sink right back down, coaxing another moan from you both. Rather enjoying the thickness of her shaft and the way those soft fleshy barbs drag along your walls, you quickly set a quick pace bouncing yourself up and down on her length, your [cunt size desc of player] passage easily handling it all.";
		WaitLineBreak;
		say "     Your gyrating hips and your hands on her breasts have the taur moaning and squirming beneath you, her hips bucking slightly every now and then to meet your motions. You find you can't quite mind it though, as every thrust brings another thrill of pleasure for you as well. Your hands squeeze onto her breasts as you feel yourself getting closer, speeding up your motions while her forepaws suddenly grip and press down on your shoulders... Making you gasp as you're hilted fully on that cock and cry out, climax hitting you hard while she grinds up hard into you. Your walls squeeze and grip that thick cock, soaking her sheath and balls with your juices";
		if cocks of player > 0:
			say " while your own [if cocks of player > 1]lengths twitch and spray[else]length twitches and sprays[end if] your seed across her plentiful breasts.";
		else:
			say " while you moan and tremble over her.";
		say "     The sensations of your rippling walls send her over the edge in that next moment, and her cock jerks powerfully inside of you as it unloads its potent load, feline cum surging deep inside of you and splattering out around her base as you both revel in your climaxes. You take a moment to gather your wits before giving her a smile and slowly lifting yourself off of her length, seed oozing onto her breasts and dripping onto the ground as you get cleaned up before continuing on your way.[impregchance][Line Break]";
		now libido of player is (libido of player + libido of player + libido entry) / 3;



Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Panther Taur";		[The creature's name as displayed and used in naming descriptions]
	now attack entry is "She [one of]leaps at you and catches you between her heavy breasts, applying the softest crushing you've ever had[or]strikes at you with her clawed hands[or]lashes out with a powerful set of sharp claws[or]rushes right at you, forcing you to back against a wall[at random].";	[Text used when the monster succeeds on an attack]
	now defeated entry is "[defeated_panthertaur]";				[ Text when monster loses.  Change 'template' as above. ]
	now victory entry is "[panthertaur rape]";					[ Text when monster wins.  Change 'template' as above. ]
	now desc entry is "[mongendernum 5]An almost pure black panther creature, with a humanoid torso. Her face has some human features, like that snarl, and her slitted, pretty [one of]blue[or]brown[or]green[at random] eyes, but is, overall, feline in make. She has two large breasts on her upper chest, bouncing lightly with her steps. On her undercarriage rest six more heavy bumps, swaying with every powerful step of those large paws of hers.  Behind her, tucked between her hindlegs, is a thick sheath, large as a can of Pringles, with large seed factories to match, all jostling as she moves. Despite her bulk, she moves with grace and agility, which is a shame, since she seems to think you'd be good prey.";						[ Description of the creature when you encounter it. ]
	now face entry is "feline, with blunt snout, wet black nose and pointed ears above your head";		[ Face Description, format as the text "Your face is (your text)." ]
	now body entry is "bent into a whole new shape, with the body of a black panther attached at your midsection, extending out behind you with four powerful paws[if breasts of player > 2]. All your breasts except the first two rest on the chest of that lower torso, swaying with each step[end if]";	[ Body Description, format as the text "Your body is (your text)." ]
	now skin entry is "[one of]furry[or]black furred[at random]";	[ Skin desc., format as the text "Your body is covered in (your text) skin."  Note: the word 'skin' is automatically included at the end. ]
	now tail entry is "You have a long, black, feline tail that likes to curl and uncurl at its own whim. ";	[ Tail desc., written as a full sentence or left blank for none. ]
	now cock entry is "[one of]black sheathed[or]barbed[at random]";						[ Cock desc., format as "You have a 'size' (your text) cock." ]
	now face change entry is "you feel warmth as your face begins to reshape into a muzzle, long teeth filling your new mouth, tongue becoming rougher. Your ears are tugged as if by an angry mother, soon perched at the top of your head, pointed and twitching";	[ Face TF text, format as "Your face feels funny as (your text)." ]
	now body change entry is "you stagger in place, almost toppling backwards as new legs sprout out, ruining your balance. Fortunately, those new legs dig into the ground, helping to restore your equilibrium as you rapidly grow the torso of a panther from the hips down. Your hands become somewhat paw like, claws sliding free[if breasts of player > 2]. Your breasts quiver as all but the top two migrate downward, settling on the undercarriage of your new torso[end if]";	[ Body TF text, format as "Your body feels funny as (your text)." ]
	now skin change entry is "soft ticklish sensation greets the arrival of a thick pelt of pure black fur across your [bodytype of player] body";	[ Skin TF text, format as "Your skin feels funny as (your text)." ]
	now ass change entry is "you shake it, a new limb extending from it, becoming a long tail, clearly feline in build";	[ Ass/Tail TF text, format as "Your ass feels funny as (your text)." ]
	now cock change entry is "your cock draws up against your belly as a sheath wraps around it. It also grows soft barbs around the head, sure to stimulate any partner";		[ Cock TF text, format as "Your cock feels funny as (your text)." ]
	now str entry is 12;			[ These are now the creature's stats... ]
	now dex entry is 18;			[ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 10;			[ These values may be used as part of alternate combat.]
	now per entry is 12;
	now int entry is 10;
	now cha entry is 10;
	now sex entry is "Both";		[ Infection will move the player towards this gender.  Current: 'Male' 'Female' 'Both' ]
	now hp entry is 27;			[ The monster's starting hit points. ]
	now lev entry is 4;			[ Monster level.  (Level x 2) XP for victory.  (Level / 2) XP for losing. ]
	now wdam entry is 6;			[ Monster's average damage when attacking. ]
	now area entry is "Outside";		[ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1;			[ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 14;		[ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 15;		[ Cock width, more commonly used for ball size. ]
	now breasts entry is 6;			[ Number of breasts the infection will give a player. ]
	now breast size entry is 8;		[ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 0;    [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 14;		[ Depth in inches of female sex the infection will attempt to give a player. ]
	now cunt width entry is 8;		[ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 40;			[ Target libido the infection will rise towards. ]
	now loot entry is "";			[ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 0;		[ Percentage chance of dropping loot, from 0-100. ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 4;				[ Number 1-5, approx size/height of infected PC body:  1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]animalistic[or]exotic[or]tauric[at random]";	[ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender"   Use [one of] to vary ]
	now type entry is "[one of]feline[or]panthertaur[at random]";		[ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "ftaurpounce";		[ Row used to designate any special combat features, "default" for standard combat. ]


Section 3 - Endings

when play ends:
	if bodyname of player is "Panther Taur":
		if humanity of player < 10:
			say "You get the sudden urge to prowl, and begin seeking an ideal mate. Something within you does not allow you to accept any but the strongest.[if cocks of player > 1] Oddly enough, exposed and vulnerable females seem to always be acceptable. Just the thought of pinning a female down and shoving your [cock size desc of player] [cock of player] rod into their depths is enough to give you a raging hard on.[end if]";
		otherwise:
			say "Your feline body draws stares, mixed between envy and disgust. You eventually gather a bit of a following, all too eager to see to your needs as they worship you as some kind of strange new god. Not that you mind much, it's nice to be waited on.";
			if cocks of player > 0:
				say "Strangely enough, some women travel a distance to find you. It seems people are remembering that felines are ancient caretakers of mothers and ask for your blessings over their bellies, usually pregnant already, sometimes now.[line break][line break]Those that are not often present themselves, begging to be filled with your [cock size desc of player] [cock of player] shaft. You are only too pleased to comply, filling such supplicants to overflowing with thick seed, then life. They become priests to you, remaining faithfully at your side as they birth litters of healthy kittens.";
			if cunts of player > 0:
				say "You have your fair share of male suitors, most filled with empty praise and grabbing hands. They are pleasing for satisfying itches but little else. It is not until one arrives with the strength to topple you that you feel the stirrings of something close to love. You welcome the man to your bosom, and at your side, for the rest of your lives, producing a large, healthy family of cats.";

Panther Taur ends here.
