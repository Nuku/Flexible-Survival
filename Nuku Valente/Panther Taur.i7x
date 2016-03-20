Version 1 of Panther Taur by Nuku Valente begins here.
[ Version 1.1 - Promoted to level 4. ]
[ Commissioned by AsureaSkie. ]

"Adds a Panther Taur creature to Flexible Survival's Wandering Monsters table"

Section 1 - Monster Responses

when play begins:
	add { "Panther Taur" } to infections of hermaphrodite;
	add { "Panther Taur" } to infections of furry;

to say felitaur rape:
	if cunts of player is 0:
		say "The feline shoves you roughly to the ground, her lower forepaws on your shoulders as she inches up to you, thrusting her long, barbed shaft against your lips and growling with an obvious desire. Her powerful rear hips rock forward, nudging you until you open your mouth and permit the salty pole across your tongue. The barbs prove soft, caressing over your mouth as she begins to rock into you, purring all the louder with approval. Her paw hands caress over your head, stroking ears and running down over your cheek and [skin of player] skin. You can see her balls bouncing with each thrust, her many breasts jiggling just in front of you.[line break][line break]She draws you forward, pressing the shaft as far into your mouth as she can, trying to wedge it down your throat as she goes tense, flooding you with great rushes of feline pudding. Most of it arrives in your belly, a direct injection of protein; some of it backwashes, splattering across her own thick member and across your front. With a satisfied mew, she draws back, freeing herself from your lips with a pop before she settles. She looks at you a moment, then turns and leaves without word, tail swaying.";
		decrease hunger of player by 5;
		if hunger of player is less than 0, now hunger of player is 0;
	otherwise:
		if cunt length of player is less than 10 or cunt width of player is less than 8:
			say "She moves up behind you, giving a soft purr of approval as she bowls you over onto your back. She clambers over you easily, many soft breasts along her belly rubbing against your [breast size desc of player] chest. She thrusts her hips forward, and you can feel her thick, spined member rubbing along your left leg, then your right as she rocks, trying to find the target. Her powerful lower paws pin you in place as she gets the aim right, nudging the massive head to your [cunt size desc of player] lips and shoving forward.[line break][line break]Pain and pleasure alternate as she tries to wedge herself into your resisting passage. Though you are too small to take her, she gives it her best try despite, stretching you and rubbing your walls with her soft spines, sending flashes before your eyes at the overwhelming sensations radiating from your overfilled pussy. As she finds your bottom, she starts to rock as hard as she can, battering against your cervix, her large balls swaying potently with every thrust, her breasts mashing against you. With a loud howl, she explodes thickly into you, feline cum spraying everywhere, splashing your thighs and messing up the ground as most of it washes back even as your womb swells with what does make it in.[impregchance][line break][line break]Satisfied, the feline uses a paw to gently rub your chest a moment, then slides free, spines tickling faintly along the way. With a happy sigh, she slips away, leaving you in the puddle.";
			if cunt length of player is less than 10, increase cunt length of player by 2;
			if cunt width of player is less than 8, increase cunt width of player by 1;
		otherwise:
			say "The feline brushes her paw like hands across your [skin of player] body, pressing to your front with her two heavy milk bags. Her hands reach for your sides, caressing as she bites at your ears gently, whispering, 'You will do just fine.'[line break][line break]She prowls behind you, then hooks her forepaws around your torso, hefting you up as she eases herself forward. You can feel her firm spear press against your thick lips, then push smoothly into your trembling form. Despite its mass, the cat has no issue fucking your huge pussy, holding you firmly to her lower torso as she rocks against you powerfully, letting her heavy balls slap against you with potent thuds.[line break][line break]The barbs of the shaft tickle and pull at your inner walls with every withdraw of the firm tool, sending ecstatic tingles along your spine and keeping your paralyzed form locked in one fitful release after another. Those barbs press harder suddenly, digging softly against your flesh as great floods of seed rush out into your body, rounding your belly with molten heat spreading through you, and pouring in a waterfall back down along the shaft and your thighs, dripping to the ground below.[impregchance] The cat, roaring her satisfaction, is slow to gently pull you free and set you to your shaking feet.";
 
To say felitaur tempt:
	if humanity of player - libido of player is less than a random number from 40 to 75:
		if cocks of player is less than 1 and cunts of player is greater than 0:
			say "[felitaur rape]";
		otherwise if cocks of player is greater than 0:
			say "As if bowing to her superior, the cat turns away from you, flipping up her tail to expose her large feral sex to your hungry eyes. You can feel your [cock size desc of player] [cock of player] equipment rising to readiness as you approach, quickly shedding anything that would keep you from this graceful, claimed, being.[line break][line break]Your hands seize at her powerful rear hips as you press up against her, running the tip of your [cock of player] tool up and down against her sex, covering it in the hot, wet dew that she is leaking for you. The smell of it makes your [ball size] ache with need. Her soft mewl snaps you back into focus. You give the majestic beast what she desires, pressing the firm head of your tool to her sex, then easing it in slowly.[line break][line break]She looks over her back, almost frowning at your slowness. You pull her back and lunge forward. Her yowl echoes as she screams her approval, and there is nothing to hold either of you back. You rock against her, and she grinds against you, bodies meeting in violent passion. Her honey splatters against the ground as you slam home into her as if every movement were your last, [ball size] rocking under you as you plunge into that hot tight channel.[if cock length of player is greater than 15] Her cunt is spread lewdly wide around your mammoth cock, but she appears to be in heaven; despite the girth, or perhaps because of it, every wet slap makes her mewl and tremble.[end if][line break][line break]At last, you cannot hold back the tide any longer. Your cry mixes with hers, filling her with seed, making her wet cunt go into spasms around your shaft. She presses back into you powerfully, holding you tight as you release, looking at you over her shoulder as if daring you to not fill her all the way. [if cock width of player is less than 5]Your insufficient deposit angers the cat; she gives a displeased growl, then surges forward, leaving your cock glistening as she flees off, disappointed.[otherwise if cock width of player is greater than 10]Your huge balls explode in an amazing torrent of seed. Her tongue extends as her lower belly begins to sag under the weight of your offering. When your orgasm tapers off, she slowly pulls free and begins to, on shaking feet, pad off, satisfied and dizzy.[otherwise]You fire several powerful blasts into her waiting womb. She draws cleanly from you and turns, kissing your cheek, then prowls off.[end if]";
		otherwise:
			say "[felitaur rape]";
	otherwise:
		say "The cat gives a soft huff, almost a hiss, then flees on quick feline paws, her shapely rump the last thing seen.";

to say defeated_panthertaur:
	if zephyrtask is 1, increase zephyrpests by 1;
	say "The cat [one of]looks entirely irritated at the constant abuse on her perfect body. With a haughty harumph, she suddenly turns tail, raising it to expose her thick, furry netherlips, then bolts off.[or]mewls sadly, backing away before she raises her hands to her heavy breasts, pressing them together as she gives you a smoldering look. Wouldn't it be nice to make love instead of war?[felitaur tempt][at random]";

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Panther Taur";		[The creature's name as displayed and used in naming descriptions]
	now attack entry is "She [one of]leaps at you and catches you between her heavy breasts, applying the softest crushing you've ever had[or]strikes at you with her clawed hands[or]lashes out with a powerful set of sharp claws[or]rushes right at you, forcing you to back against a wall[at random].";	[Text used when the monster succeeds on an attack]
	now defeated entry is "[defeated_panthertaur]";				[ Text when monster loses.  Change 'template' as above. ]
	now victory entry is "[felitaur rape]";					[ Text when monster wins.  Change 'template' as above. ]
	now desc entry is "[mongendernum 5]An almost pure black panther creature, with a humanoid torso. Her face has some human features, like that snarl, and her slitted, pretty [one of]blue[or]brown[or]green[at random] eyes, but is, overall, feline in make. She has two large breasts on her upper chest, bouncing lightly with her steps. On her undercarriage rest six more heavy bumps, swaying with every powerful step of those large paws of hers.  Behind her, tucked between her hindlegs, is a thick sheath, large as a can of Pringles, with large seed factories to match, all jostling as she moves. Despite her bulk, she moves with grace and agility, which is a shame, since she seems to think you'd be good prey.";						[ Description of the creature when you encounter it. ]
	now face entry is "feline, with blunt snout, wet black nose and pointed ears above your head";		[ Face Description, format as the text "Your face is (your text)." ]
	now body entry is "bent into a whole new shape, with the body of a black panther attached at your midsection, extending out behind you with four powerful paws[if breasts of player is greater than 2]. All your breasts except the first two rest on the chest of that lower torso, swaying with each step[end if]";	[ Body Description, format as the text "Your body is (your text)." ]
	now skin entry is "[one of]furry[or]black furred[at random]";	[ Skin desc., format as the text "Your body is covered in (your text) skin."  Note: the word 'skin' is automatically included at the end. ]
	now tail entry is "You have a long, black, feline tail that likes to curl and uncurl at its own whim. ";	[ Tail desc., written as a full sentence or left blank for none. ] 
	now cock entry is "[one of]black sheathed[or]barbed[at random]";						[ Cock desc., format as "You have a 'size' (your text) cock." ]
	now face change entry is "you feel warmth as your face begins to reshape into a muzzle, long teeth filling your new mouth, tongue becoming rougher. Your ears are tugged as if by an angry mother, soon perched at the top of your head, pointed and twitching";	[ Face TF text, format as "Your face feels funny as (your text)." ]
	now body change entry is "you stagger in place, almost toppling backwards as new legs sprout out, ruining your balance. Fortunately, those new legs dig into the ground, helping to restore your equilibrium as you rapidly grow the torso of a panther from the hips down. Your hands become somewhat paw like, claws sliding free[if breasts of player is greater than 2]. Your breasts quiver as all but the top two migrate downward, settling on the undercarriage of your new torso[end if]";	[ Body TF text, format as "Your body feels funny as (your text)." ]
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
		if humanity of player is less than 10:
			say "You get the sudden urge to prowl, and begin seeking an ideal mate. Something within you does not allow you to accept any but the strongest.[if cocks of player is greater than 1] Oddly enough, exposed and vulnerable females seem to always be acceptable. Just the thought of pinning a female down and shoving your [cock size desc of player] [cock of player] rod into their depths is enough to give you a raging hard on.[end if]";
		otherwise:
			say "Your feline body draws stares, mixed between envy and disgust. You eventually gather a bit of a following, all too eager to see to your needs as they worship you as some kind of strange new god. Not that you mind much, it's nice to be waited on.";
			if cocks of player is greater than 0:
				say "Strangely enough, some women travel a distance to find you. It seems people are remembering that felines are ancient caretakers of mothers and ask for your blessings over their bellies, usually pregnant already, sometimes now.[line break][line break]Those that are not often present themselves, begging to be filled with your [cock size desc of player] [cock of player] shaft. You are only too pleased to comply, filling such supplicants to overflowing with thick seed, then life. They become priests to you, remaining faithfully at your side as they birth litters of healthy kittens.";
			if cunts of player is greater than 0:
				say "You have your fair share of male suitors, most filled with empty praise and grabbing hands. They are pleasing for satisfying itches but little else. It is not until one arrives with the strength to topple you that you feel the stirrings of something close to love. You welcome the man to your bosom, and at your side, for the rest of your lives, producing a large, healthy family of cats.";

Panther Taur ends here.
