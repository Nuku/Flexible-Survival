Uram by Voidsnaps begins here.

[Used Variables:]
[Impregtimer of Uram- Tracks pregnancy. Gives birth at 24 energy. 0 energy=not pregnant.]
[Thirst of Uram- Offspring count. Affects named sons and incestuous orgy content.]

A postimport rule:
	if Resolution of Daddy's Here is not 100:
		Change the North Exit of Edge Of The Swamp to Dam Control Center;
		Change the South Exit of Dam Control Center to Edge Of The Swamp;

An EveryTurn Rule:
	if ImpregTimer of Uram > 0: [pregnant]
		increase ImpregTimer of Uram by 1; [ticking upwards every turn]
		if debugactive is 1:
			say "     DEBUG: Uram's pregnancy advanced one turn. Current Turn: [ImpregTimer of Uram], Target Value: 24";
		if ImpregTimer of Uram is 20:
			say "     [bold type]It's probably a good idea to stay close to Uram for the next few hours, if you want to be present for the birth of your son.[roman type][line break]";
		else if ImpregTimer of Uram is 24:
			if Player is in Dam Control Center:
				say "<Placeholder birth scene. Will be updated once offspring NPCs are populated.>";
				[
				increase OffspringCount of Uram by 1; [Offspring number increase by 1]
				]
			else:
				say "     You get the feeling you should visit Uram soon, and maybe apologize for missing the birth of your son.";
				TraitGain "Absent_Birth" for Uram;
			now ImpregTimer of Uram is 0; [preg reset]
			TraitLoss "Pregnancy Cravings" for Uram;

Section 1 - Infections and NPC

Chapter 1 - Infections

[Uram's infection]

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Orog";
	now Name entry is "Incestuous Orog Father";
	add "Incestuous Orog Father" to infections of HumanoidList;
	add "Incestuous Orog Father" to infections of MaleList;
	add "Incestuous Orog Father" to infections of BipedalList;
	now enemy title entry is ""; [ Name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name. ]
	now enemy Name entry is ""; [ Specific name of unique enemy. ]
	now enemy type entry is 1; [ 0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters. ]
	now attack entry is "";
	now defeated entry is "[Incestuous Orog Father_Loses]";
	now victory entry is "[Incestuous Orog Father_Wins]";
	now desc entry is "[Incestuous Orog Father_Desc]";
	now face entry is "a handsome jawline lined with stubble forms. Your nostrils are relatively flat with a thick nose, and your hair becomes long and silky, framing your masculine features well, while your lips plump, giving you a slight pout without approaching excess";
	now body entry is "bulky and squishy in all the right places, with fat packed on to give your masculine body plenty of padding despite its musculature. Your chest is particularly large, with pecs that could almost be called breasts if not for their defined shape";
	now skin entry is "a clay-like grey color skin that's fairly unremarkable, but smooth and silky to the touch";
	now tail entry is "";
	now cock entry is "a large, drooping foreskin-covered grey cock with a gunmetal grey head peeking past the hood. The urethra is quite stretchy, bringing to mind all the things you could do with your";
	now face change entry is "it reshapes itself, giving you masculine features and a defined jawline. You could be mistaken for an orc";
	now body change entry is "you fall to the ground, your chest and limbs reforming into a bulky, masculine new shape. Your fingers become thicker while your stomach swells like a body builder that's stopped dieting and let themselves gain a dozen extra pounds, and your feet soon follow suit, becoming large enough to support your increased frame";
	now skin change entry is "grey skin takes over, leaving you silky smooth all over";
	now ass change entry is "it becomes tight and firmly muscled, then swells slightly, giving it a bit of bounce when you move";
	now cock change entry is "it takes on a more human-like shape, turning grey in color and dripping an eager string of pre while plumping to half-mast.";
	now Cock Count entry is 1;
	now str entry is 22;
	now dex entry is 12;
	now sta entry is 20;
	now per entry is 11;
	now int entry is 12;
	now cha entry is 12;
	now sex entry is "Male"; [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 80; [ How many HP has the monster got? ]
	now lev entry is 9; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 8; [ Amount of Damage monster Does when attacking.]
	now area entry is "Nowhere"; [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 18; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 3; [ Size of balls ]
	now Nipple Count entry is 2; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 0; [ Length of female sex infection will attempt to give you. ]
	now Cunt Tightness entry is 0; [ Width of female sex infection will try and give you ]
	now SeductionImmune entry is false;
	now libido entry is 25; [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is ""; [ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "Orog Milk"; [ Item to be given to the player if they have this infection and milk themselves. ]
	now CumItem entry is "Orog Cum"; [ Item to be given to the player if they have this infection and jerk off. ]
	now TrophyFunction entry is "-"; [ Function to generate a list of optional loot items, of which the player can choose one after victory. ]
	now scale entry is 2; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]bulky[or]muscular[or]squishy[at random]";
	now type entry is "orcish";
	now magic entry is false; [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [ Infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own strain. ]  [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

to say Incestuous Orog Father_Loses:
	say "How the heck did you get here?";

to say Incestuous Orog Father_Wins:
	say "How the heck did you get here?";

to say Incestuous Orog Father_Desc:
	say "How the heck did you get here?";

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Orog";
	now Name entry is "Incestuous Orog Son";
	add "Incestuous Orog Son" to infections of HumanoidList;
	add "Incestuous Orog Son" to infections of MaleList;
	add "Incestuous Orog Son" to infections of BipedalList;
	now enemy title entry is ""; [ Name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name. ]
	now enemy Name entry is ""; [ Specific name of unique enemy. ]
	now enemy type entry is 1; [ 0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters. ]
	now attack entry is "";
	now defeated entry is "[Incestuous Orog Son_Loses]";
	now victory entry is "[Incestuous Orog Son_Wins]";
	now desc entry is "[Incestuous Orog Son_Desc]";
	now face entry is "youthful and masculine. You're definitely conventionally handsome, and you doubt any guys (or girls) would fail to notice how hot you are";
	now body entry is "lithe and well muscled, built for power but compact. You're of average height, with an average 'cut' physique you'd expect from any twenty-something at a gym";
	now skin entry is "smooth and grey, with thick hair under your arms";
	now tail entry is "";
	now cock entry is "a human-like cock with a tight foreskin. The head drools pre as though signalling your virility at all times";
	now face change entry is "it reshapes itself, giving you masculine, youthful features. Strong tusks jut from your lower jaw, and your lips plump slightly";
	now body change entry is "you fall to the ground, your chest and limbs reforming into a cut, masculine new shape. Your hands curl into fists as muscles solidify all over your body, giving you a powerful sillhouette";
	now skin change entry is "soft grey skin covers your body while hair sprouts under your pits, giving off a masculine musk";
	now ass change entry is "it becomes tight and firmly muscled, with an appearance like a two rocks when you flex it";
	now cock change entry is "it takes on a more human-like appearance, dripping its approval as foreskin covers your tip";
	now Cock Count entry is 1;
	now str entry is 22;
	now dex entry is 12;
	now sta entry is 20;
	now per entry is 11;
	now int entry is 12;
	now cha entry is 12;
	now sex entry is "Male"; [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 80; [ How many HP has the monster got? ]
	now lev entry is 9; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 8; [ Amount of Damage monster Does when attacking.]
	now area entry is "Nowhere"; [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 15; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 3; [ Size of balls ]
	now Nipple Count entry is 2; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 0; [ Length of female sex infection will attempt to give you. ]
	now Cunt Tightness entry is 0; [ Width of female sex infection will try and give you ]
	now SeductionImmune entry is false;
	now libido entry is 25; [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is ""; [ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "Orog Milk"; [ Item to be given to the player if they have this infection and milk themselves. ]
	now CumItem entry is "Orog Cum"; [ Item to be given to the player if they have this infection and jerk off. ]
	now TrophyFunction entry is "-"; [ Function to generate a list of optional loot items, of which the player can choose one after victory. ]
	now scale entry is 2; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]sleek[or]flexible[or]slender[at random]";
	now type entry is "orcish";
	now magic entry is false; [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [ Infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own strain. ]  [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

to say Incestuous Orog Son_Loses:
	say "How the heck did you get here?";

to say Incestuous Orog Son_Wins:
	say "How the heck did you get here?";

to say Incestuous Orog Son_Desc:
	say "How the heck did you get here?";

Chapter 2 - Cum and Milk Items

Table of Game Objects (continued)
name	desc	weight	object
"orog man-milk"	"A plastic water bottle filled with what is clearly milk. One could think it was a regular cow's milk, if someone hadn't written 'Orog Man-Milk' across the label on the bottle. You [italic type]could[roman type] drink it to quench your thirst. Who knows what else it might do to you though..."	1	orog man-milk

orog man-milk is a grab object.
orog man-milk is milky.
Purified of orog man-milk is "distilled milk".
orog man-milk is infectious.
Strain of orog man-milk is "Incestuous Orog Son".
Usedesc of orog man-milk is "[orog man-milk use]";

to say orog man-milk use:
	say "Lifting the plastic bottle to your mouth, you take a drink from it, letting the milk run over your tongue and down your throat. Tastes rich, sweet, and comforting. Swishing it around in your mouth a little, you finish the bottle off, then stuff it back into your collection of 'empties'. As you stand there, a sudden wave of vertigo comes over you, and to your amazement, you watch as your body morphs, beoming slim and grey-skinned, with a healthy amount of muscle. Your cock grows to an obscene size for your body type, and your face morphs into a humanoid shape, with a square jaw and fluffy unkempt hair. You're unmistakably masculine, and there's no doubt that you're a pure male now. The lingering taste of milk on your tongue swells your manhood, and you can't shake the desire to fuck someone while drinking more. Idly, you wonder if you could find a daddy to take your cock.";
	PlayerDrink 15;
	LibidoBoost 15;
	turn player into "Incestuous Orog Son" silently;

instead of sniffing orog man-milk:
	say "You open the lid for a moment and take a sniff. Smells kinda like any other milk, really.";

Table of Game Objects (continued)
name	desc	weight	object
"orog cum"	"A plastic water bottle containing a moderate amount of milky white fluid. Almost could be mistaken for some sort of buttermilk, if someone hadn't written 'Orog Cum' across the label on the bottle. You [italic type]could[roman type] drink it to quench your thirst, or you maybe just do it for fun. Who knows what else it might do to you though..."	1	orog cum

orog cum is a grab object.
orog cum is cum.
orog cum is infectious.
Strain of orog cum is "Incestuous Orog Father".
Usedesc of orog cum is "[orog cum use]";

to say orog cum use:
	say "Lifting the plastic bottle to your mouth, you take a drink from it, letting the creamy cum run over your tongue and down your throat. Tastes rich and salty, with a vaguely addictive flavor. Swishing it around in your mouth a little, you finish the bottle off, then stuff it back into your collection of 'empties'. Seconds after you zip your pack closed, you feel a vibrating tingle wash over your body, doubling over as the intense sensation of a full-body change comes over you. Your skin ripples, changing to a dull grey hue that's perfectly smooth and hairless, while your body morphs into a larger form, swelling your chest into bouncy pecs even as your ass follows suit, jiggling as though begging to be touched. Your cock swells to an obscene size, and as you lie their stroking it, you can't help but lick your lips of leftover cum, the warm feeling it leaves you with demanding that you suck some more straight from the source. Idly, you wonder if you have any sons wandering the city that you can lavish your brand of fatherly affection on.";
	PlayerDrink 15;
	SanLoss 5;
	turn Player into "Incestuous Orog Father" silently;

instead of sniffing orog cum:
	say "You open the lid for a moment and take a sniff. Doesn't smell too bad actually, just kinda nutty and a little sweet.";

Chapter 3 - NPCs

Table of GameCharacterIDs (continued)
object	name
Uram	"Uram"

Uram is a man.
ScaleValue of Uram is 4. [human sized]
Body Weight of Uram is 7. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Uram is 8. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Uram is 1. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Uram is 5. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Uram is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Uram is 6. [length in inches]
Breast Size of Uram is 3. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Uram is 2. [count of nipples]
Asshole Depth of Uram is 15. [inches deep for anal fucking]
Asshole Tightness of Uram is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Uram is 1. [number of cocks]
Cock Girth of Uram is 3. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Uram is 18. [length in inches]
Ball Count of Uram is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Uram is 5. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Uram is 0. [number of cunts]
Cunt Depth of Uram is 0. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Uram is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Uram is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Uram is false.
PlayerRomanced of Uram is false.
PlayerFriended of Uram is false.
PlayerControlled of Uram is false.
PlayerFucked of Uram is false.
OralVirgin of Uram is false.
Virgin of Uram is false.
AnalVirgin of Uram is false.
PenileVirgin of Uram is false.
SexuallyExperienced of Uram is true.
TwistedCapacity of Uram is true. [Twisted Characters can take any penetration, no matter the size]
Sterile of Uram is true. [steriles can't knock people up]
MainInfection of Uram is "Incestuous Orog Father". []
Description of Uram is "[UramDesc]".
Conversation of Uram is { "<This is nothing but a placeholder!>" }.
The scent of Uram is "[UramScent]".
Uram is in Drone Quarters.
ImpregFunction of Uram is "[ImpregUram]".

to say ImpregUram:
	if ImpregTimer of Uram is 0: [not already pregnant]
		if debugactive is 1:
			say "     DEBUG: Impregnation successful! A new son is growing in Uram now!";
		now ImpregTimer of Uram is 1; [Pregnant. 3 days till sons.]
	else:
		if debugactive is 1:
			say "     DEBUG: Can't impregnate Uram, already pregnant!";

to say UramDesc:
	say "     Uram is at least seven feet tall, with a beefcake physique and massive pecs that almost qualify as breasts. His hair is long and black, stopping in the middle of his back, while his eyes are a bright green that fix you with a doting, fatherly expression whenever you're in view. He's not shy, showing off his body with nothing but an impractical loincloth bursting at the seams with his softened cock. Beneath said loincloth his grey, fat cock dangles, drooling like his chest. ";
	if ImpregTimer of Uram > 12:
		say "His stomach bulges obscenely, filled with the seeds of your incestuous union. You often catch him rubbing his stomach, and he seems to be walking around in a permanent state of arousal, letting his cockhead drool down his thigh from his ill-fitting loincloth. He openly stares at your cock, showing his pregnancy cravings.";
	else if ImpregTimer of Uram > 0:
		say "His stomach has a slight bulge, filled with the seeds of your incestuous union. You often catch him rubbing his stomach, and he seems to be walking around in a permanent state of arousal, letting his cockhead drool down his thigh from his ill-fitting loincloth. He openly stares at your cock, showing his pregnancy cravings.";

to say UramScent:
	say "     Uram smells like masculine musk with a hint of milky sweetness, due to the neverending leakage from his bare chest.";


Section 2 - First Meeting

Table of GameEventIDs (continued)
Object	Name
Daddy's Here	"Daddy's Here"

Daddy's Here is a situation.
ResolveFunction of Daddy's Here is "[ResolveEvent Daddy's Here]".
Sarea of Daddy's Here is "Sinking Swamps".
when play begins:
	add Daddy's Here to BadSpots of MaleList;
	add Daddy's Here to BadSpots of IncestList;
	add Daddy's Here to BadSpots of HumanoidList;

to say ResolveEvent Daddy's Here:
	say "     As you explore the swamps, you fall into a sort of stupor. The singing cicadas and warmth of the air around you blur into the sound of your feet squishing on the muddy ground, and before you realize where you are, you've wandered off the beaten path. Broken from the mild trance, you look around, sighing as you recognize how utterly lost you are. 'Aw. Don't cry, sweety. Are you lost?' An unfamiliar voice makes you jump, and you whirl to meet the newcomer, finding your face squished in two grey, soft mountains. 'Don't worry, Daddy's here.' The tall man coos, dragging you close and placing you in a bear hug. Despite the crushing strength surrounding you, you think you could manage to wriggle free if you wanted to, though the sweet scent wafting from those pecs isn't all that unpleasant. Maybe you should see what he wants?";
	LineBreak;
	say "     [bold type]Should you try to wiggle free?[roman type][line break]";
	LineBreak;
	say "     [link](Y)[as]y[end link] - Yes. You want no part of this!";
	say "     [link](N)[as]n[end link] - No. The hug feels kinda nice, and you might get to feel up those pecs!";
	if Player consents: [Bye bye daddy orc]
		LineBreak;
		say "     Pushing with all your might, you extricate yourself from the man's grip. Without sparing him another glance, you run in the opposite direction, stumbling over muddy banks and nearly landing in dirty swamp water. You run for a few minutes before deciding you're far enough away, and the hum of cicadas is all you can hear. Pausing to catch your breath, you realize you've returned to the main path. Breathing a sigh of relief, you shoulder your pack, then continue, thankful that you didn't let yourself fall into whatever debauchery the mystery man had in mind. No one calls themselves 'daddy' without sexual motives!";
		now Resolution of Daddy's Here is 100; [choked off content]
	else: [Hello new daddy.]
		LineBreak;
		say "     Despite your misgivings, you can't shake just how comfortable the grey pillows sandwiching your face are, so you melt against them, nodding and squeaking out an affirmation that you ARE lost. Sadly, you have to come up for air eventually, and you struggle slightly, popping your face free of soft grey mountains and sucking in a grateful breath. 'Silly thing.' Pressing grey lips to your forehead, the orc-like man sweeps a ham hand underneath your rump as though you were a child, his bare chest jiggling as he steps forward. 'Can't leave you out here~. Let's take you home where it's warm and dry.' Humming to himself, he continues with leisurely strides, carrying you further from where he first grabbed you until you don't recognize the area around you. You feel a bit of trepidation at being treated like a child, but something about the fatherly presence hugging you to his pecs soothes you, and you feel a blush coloring your cheeks as you scan his masculine face. He does remind you of what you thought your dad looked like when you were a child, though you didn't feel the same heat in your lower half back then, and your father didn't have two upward-pointing tusks jutting from his lower lip. Do you secretly have daddy issues?";
		say "     As you ponder the ramifications of this revelation, you notice that the sound of muddy steps changed to the wet slap of feet on concrete. Looking around, you realize that you've ended up somewhere new. The grey hulk has carried you into a spacious concrete room filled with desks and machinery. With a start, you realize that you must be inside the dam's control room. How long did you zone out? Gently, the orc sets you down in a nearby chair, his pecs wobbling as you get a better view of the man that calls himself 'daddy.' He's bigger than an average human- at least 7 feet tall, with a physique that would put most bodybuilders to shame, but an unmistakable softness to every part of him. Black hair cascades down his shoulders like a lion's mane, framing his doting green eyes. Not a stitch of clothing covers his body save a heroically strained leather loincloth that leaves nothing to the imagination.";
		WaitLineBreak;
		say "     'Now, why was a cutie like you lost in those scary woods?' the orc asks, kneeling to your level. 'You'll catch a cold or get captured by one of those mean froggies.' The orc is uncomfortably close, so much so you can feel the heat pouring off his skin. Fuck, why do you want to bury your face in those ridiculously juicy pecs? Stammering, you tear your eyes away from that glorious set of masculine tits. Explaining your situation, you feel like a child lost at a grocery store talking to a clerk- if the clerk were a barely clothed hunk. There's just something about him that disarms you. 'Oh, you must be so hungry after wandering for so long.' The orc coos with the air of a parent listening to a long-winded story. 'Why don't I give you a drink~?' Before you can stop him, the orc shoves his chest toward your face, intensifying the sweet scent you smelled before until you see its source, a gentle trickle dripping from the man's grey nipple.";
		LineBreak;
		say "     He doesn't force you to drink, but you get the idea you might hurt your host's feelings if you decline. [bold type]Do you want to risk whatever infection may come with sucking down some orc milk?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes. You can't resist the sweet, almost ice-cream-like scent pouring off of that muscular chest.";
		say "     ([link]N[as]n[end link]) - No. You know better to ingest anything a mutant offers you these days.";
		if Player consents:
			now Resolution of Daddy's Here is 1;
			LineBreak;
			say "[OrogBreastFeed]";
			move Player to Dam Control Center;
		else:
			LineBreak;
			say "     Politely, you turn your head to the side, declining the orc's offer. Instead, you ask the strangely alluring orc whether he can give you a map so you can return to where you need to be. As pleasant as his company appears to be, you can't trust the fuzzy thoughts you get in his presence, and you'd prefer to approach things with a cool head. The strange orc seems taken aback by your refusal, but doesn't press you, instead shrugging and crossing his arms beneath his prodigious chest. 'Fine~. I think there's a map lying around here somewhere. I used it when I first woke up.' He pouts a bit, taking on an air of someone far younger and less imposing. 'You should come back sometime. I'll leave the door unlocked if you get thirsty~.' With that, he leaves you at the desk, disappearing further into the complex and returning with a detailed map to show you the way back to the swamps.";
			now Resolution of Daddy's Here is 2;
		move Uram to Dam Control Center;
		Change the North Exit of Edge Of The Swamp to Dam Control Center;
		Change the South Exit of Dam Control Center to Edge Of The Swamp;
	now Daddy's Here is Resolved;

Section 3 - Location

Table of GameRoomIDs (continued)
Object	Name
Dam Control Center	"Dam Control Center"

Dam Control Center is a room.
Description of Dam Control Center is "[DamControldesc]".

to say DamControldesc:
	say "     A cozy, well-kept control room with a huge window overlooking the reservoir on one side and various desks with control panels littered with buttons. The reservoir looks a little low, but thankfully whatever is draining it seems to be holding steady a few feet above the max waterline. Could this be what flooded the swamps? Puttering around the control room is Uram, still half nude and humming to himself as he keeps things well-kept. In one corner, you can see Uram's bed, a cot that's collapsed but still seems usable.";

Section 4 - Introduction

Table of WalkinEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
1	"Daddy Dearest"	Daddy Dearest	"[EventConditions_Daddy Dearest]"	Dam Control Center	2500	2	100

to say EventConditions_Daddy Dearest:
	now CurrentWalkinEvent_ConditionsMet is true;

Table of GameEventIDs (continued)
Object	Name
Daddy Dearest	"Daddy Dearest"

Daddy Dearest is a situation.
ResolveFunction of Daddy Dearest is "[ResolveEvent Daddy Dearest]".
The level of Daddy Dearest is 0.
Sarea of Daddy Dearest is "Nowhere".

to say ResolveEvent Daddy Dearest:
	if Resolution of Daddy's Here is 2:
		say "     As you open the creaking metal door that to the hallway leading to the reservoir dam's control room, you come face to face with the orc from earlier. Actually, now that you've gotten a closer look, he seems to be heavier than the orcs you've seen. Maybe he's an orog? You think you've seen something about a grey skinned orc called an orog in a book you read once... Stammering an awkward hello, you swallow, trying to meet his eyes instead of staring at his bare chest. With a wide grin and a chuckle, the orc crosses his arms, accenting his pendulous pecs even more and drawing your attention to the twin streams of milk leaking from his nipples like a multispout sprinkler. 'Oh! Welcome back, sweetheart. Come right in~. I'm Uram, by the way, but you can just call me Daddy~.' He coos his words, turning to the side and flashing you a view of an ass that could crush a small animal, covered in only a loincloth that wedges those plush cheeks apart, as he makes his way back to the Dam Control Center.";
	else if Resolution of Daddy's Here is 1:
		say "     Eagerly, you throw open the creaking metal door and go willingly to meet your daddy. It's a shame that you don't know his name yet, but you hope that you'll be able to make that up to him. He's right where you'd expect him to be, leaning against one of the former work stations, and you can't contain yourself, throwing yourself at him and climbing up in his lap to mash your lips against his ";
		if BodyName of Player is "Incestuous Orog Son" and Player is pure:
			say "to show him who he belongs to, stuffing your tongue into his mouth. Your tusks clanking together with his. Your cock hardens in no time, and you moan as he strokes it for you, returning your affection with milking strokes. Fuck, you love your daddy so much. ";
		else:
			say "before you can stop yourself, letting your natural instincts take over. Thankfully he doesn't seem to care that you're being so forward, patiently returning your oral affection and cupping your ass to hold you on his lap. ";
		say "     'Aw, daddy missed you too~.' the orc coos as he massages your rear, his hardening bulge brazenly flopped over your crotch and drooling through the loicloth that barely holds it at bay. 'Though I'm not a very good daddy, am I? I didn't even tell my boy what my name is! My name's Uram, but just call me Daddy.'";
	now Daddy Dearest is Resolved;


Section 5 -  Sex Scenes

to say OrogBreastFeed:
	if Resolution of Daddy's Here is 1: [Jumped at first offer to breastfeed.]
		say "     Before you know it, you dart forward, letting out a strained whimper as you fill your mouth with soft grey skin. You weren't hungry before, but the moment the thick fluid leaking from that puffy nipple touches your tongue, you feel a ravenous hunger rising in your stomach, spurring you to suck. Greedily, you dig your fingers into the shuddering man's muscles, afraid the intensely sweet, addictive fluid will stop before you get your fill. 'That's it. Such a sweet boy...' The grey orc coos, wrapping his arms around you and holding you to his breast with an almost motherly affection. 'You know, I've always wanted a family. Do you think I'd make a good daddy?' Fuck. You can barely think as you guzzle the thick drink, feeling warmth spreading through your stomach and the telltale tingle of changes wracking your body. There's no denying that you feel warm and safe in this perverse embrace, but somehow there's something else. An itch deep inside of you that you didn't know was there. You don't just want this man's coddling- you deserve it. A wave of possessiveness washes over you as you feel new thoughts reconfiguring your brain to match the new attitude, and you dig your teeth into his pec with a dominant snarl, clamping down on the source of your rich meal.";
		say "     [if Player is barecrotch and Player is purefemale]You feel a strange tingling as your sex closes up, replaced by swelling, heavy grey balls, and your clit grows to attention, fattening into a sizable humanoid cock crowned with a juicy pearl of pre. [else if Player is male and Player is barecrotch]You feel your cock changing, taking on a grey hue and leaking fat pearls of pre as it stands at attention, throbbing with each gulp of milk and threatening to peel back the foreskin covering the thick head. [else]Your pants tighten as maleness grows to fill them, forcing you to kick your way out of them and bare your now grey humanoid cock. [end if][if Player is female and Player is not barecrotch]There's no sign of your pussy, but you've got a nice fat pair of balls to compliment your newly grown shaft, taking up the space where your cunt once was. [end if]The rest of your body changes to match your genitals, growing toned and grey just like your 'daddy's,' though your physique is far more lithe, and your height is at least a foot shorter than his. Strangely, you even feel a familial closeness, as though being erect and nude with the older male is the most natural thing.";
		WaitLineBreak;
		say "     'Such a good boy.' The orc daddy coos, his breath coming in soft pants that cause his chest to jiggle, drawing your eye to his untouched pec. You latch onto it just as you feel his fist settle around your cock, and you chew at his nipple as he settles into a slow stroke, dragging you out of your chair and onto his kneeling form. It's clear that he's enjoying himself as much as you are, and you can feel a massive member drooling onto your stomach, pressed against your side. 'Cum for daddy, sweetheart.' Those words are so perverse that you can't help yourself, fucking your daddy orc's hand with increasingly aggressive thrusts until you feel your full stomach coiling into knots, then releasing your hold on his tooth-marked pec to groan your satisfaction into the cleft between those pillowy mounds. You cum like a firehose, soaking the nude orc in thick ropes of jizz and painting his open mouth alongside a good swathe of his heaving chest, thrusting helplessly against his milking strokes. The hunky hulk sets you back into the chair, kneeling between your legs and cooing as he drags his tongue along your physique, gathering your seed and swallowing it gratefully. 'You're going to be such a good boy for Daddy. You'll come back and show me how much you love me.' He murmurs as he takes your softening cock between talented lips, cleaning off the last drips of your finish.";
		say "     Wordlessly, you nod, lost in the afterglow and too tired from your sated stomach and emptied balls to protest the pleasure of being licked clean. You let your eyes drift closed as the transformation takes its toll, and before long, you're asleep.";
		now Resolution of Daddy's Here is 3;
		NPCSexAftermath Player receives "Stroking" from Uram;
	else if Resolution of Daddy's Here is 2: [Declined at first, asked about it later.]
		say "     Ever since you saw Uram's dripping pec inches in front of your face, you've been unable to clear the image from your mind. Quietly, you ask Uram if his offer still stands, shuffling in place as he seems confused at your words. With your cheeks burning, you explain that you're thirsty and wonder aloud if he wants to let you drink from his leaky pecs. 'Daddy's always got time for you!' The bubbly orog says with a bright grin. Patting his lap, he kneels on the floor before you with his loincloth tented slightly to show his excitement. 'Such a good boy.' Uram coos as you settle into his lap, his breath coming in soft pants that cause his chest to jiggle, drawing your eye to his untouched pec. You latch onto it just as you feel his fist settle around your cock, and you chew at his nipple as he settles into a slow stroke, holding you to his freely flowing milk dispenser. It's clear that he's enjoying himself as much as you are, and you can feel a massive member drooling onto your stomach, pressed against your side, as you suck down impossibly rich, sweet milk. 'Cum for daddy, sweetheart.'";
		say "     Those words are so perverse that you can't help yourself, fucking your daddy orc's hand with increasingly aggressive thrusts until you feel your full stomach coiling into knots, then releasing your hold on his tooth-marked pec to groan your satisfaction into the cleft between those pillowy mounds. You cum like a firehose, soaking the nude orc in thick ropes of jizz and painting his open mouth alongside a good swathe of his heaving chest, thrusting helplessly against his milking strokes. The hunky hulk sets you in a nearby chair, kneeling between your legs and cooing as he drags his tongue along your physique, gathering your seed and swallowing it gratefully. 'You're going to be such a good boy for Daddy. You'll come back and show me how much you love me, won't you?' He murmurs as he takes your softening cock between talented lips, cleaning off the last drips of your finish.";
		say "    Wordlessly, you nod, lost in the afterglow and too tired from your sated stomach and emptied balls to protest the pleasure of being licked clean. You let your eyes drift closed as the transformation takes its toll, and before long, you're asleep.";
		now Resolution of Daddy's Here is 3;
		NPCSexAftermath Player receives "Stroking" from Uram;
	else if BodyName of Player is "Incestuous Orog Son" and Player is pure and Player is male: [Repeatable scene. Resolution of Daddy's Here must be 3. Can't get here without the resolution being 3 anyway, so it's not needed in the conditions.]
		say "     Fascinated as always by your orog daddy's bountiful pecs, you waste no time grabbing them. They're your property, just like your slut of a father. With a cocky grin, you tell your father to take off his pants, tossing aside your gear and shoving him against a nearby counter, then mashing your hardening cock against his lazy behemoth. Darting your head forward, you clamp your mouth over his squishy pec, digging your teeth in and suckling at the milk that gushes forth from his savaged nipple with a satisfied growl. 'Such a hungry boy. Slow down, sweety. Daddy's here.' Uram groans as he follows your orders, his hard-hard cock draping over your raging erection and drooling pre. One grey hand cups the back of your head as he spreads his thighs, letting your cock explore the space behind his balls until you feel the unmistakable heat of a needy pucker. 'That's it, baby. Daddy will take care of you.' He says as your cock teases his hole, welcoming you to ravage him.";
		LineBreak;
		say "     You could fill Uram up, if you wanted to. Your orog instincts are calling for you to breed his fertile hole, and with how full your balls feel, you're sure you'll fuck a son into him. [bold type]Do you want to fuck him?[roman type][line break]";
		LineBreak;
		say "     [link](Y)[as]y[end link] - Yes. Fuck him.";
		say "     [link](N)[as]n[end link] - No. You just want to tease him.";
		if Player consents: [Pregnant daddy.]
			LineBreak;
			say "     With a needy moan, you surge forward, claiming the orog daddy's hole and forcing his legs into the air. Still, you greedily gulp from his chest, slapping your balls against his upturned ass and making a mess of the control board beneath you with sweat and milk that breaks through the sucking seal. He's so slick inside that you bottom out instantly, but his ass is so well-trained that it strokes your cock, sucking it like a talented mouth and massaging your length. Your coupling grows wetter by the second, aided by the softness welcoming your cock and milking every drop of pre. Like a sticky spiderweb, it connects your slapping balls to the orog's cheeks, marking Uram with a musky reminder of his son's love. It's impossible to slow down, and you doubt you would if you could. You're too full of energy from your gluttonous slurping and too turned on by the incestuous situation you've found yourself in.";
			say "     'Fuck your daddy~.' The orog begs, his legs wrapping around your waist and his hands roaming down your back as he seemingly attempts to fit his whole pec in your mouth, mashing your teeth and tongue against that dribbling nipple. His cock slaps obscenely against his stomach with every thrust, squirting sloppy strings of desire and painting your smooth skin, while his tongue hangs out of his mouth and his hair drips with sweat. 'Daddy wants to make you a brother. Please don't pull out.' Fuck. The absurdity and frank desire in Uram's begging bring the ride of your orgasm surging to the surface, and you pound your way to an explosive finish, ruining the orog's hole with increasingly sloppy thrusts and brutalizing his poor prostate. A wet pop signals that your cock's slipped into a secondary channel, and right as your tip kisses against a spongy cervix, you blast it with what feels like weeks of pent-up cum, bottoming out with your churning balls firmly pressed against the orog's sloppy entrance.";
			WaitLineBreak;
			say "     'Such a big boy~.' Uram whimpers as you swell his stomach with the sheer volume of your output, breaking your savage breastfeeding to clank his tusks against yours in a sloppy, milk-tainted kiss even as you feel his cock bounce and sputter between you, covering the space between you with creamy white. Suddenly tired from your efforts and the fullness in your stomach, you yawn, resting your head against sticky muscles. Uram's body is just too comfortable, and before long, you doze off, spurred by his soft humming and the gentle way he ruffles your hair.";
			NPCSexAftermath Uram receives "AssFuck" from Player;
			now impregtimer of Uram is 1;
			if Hungry Daddy is Resolved:
				TraitGain "Pregnancy Cravings" for Uram;
		else: [Cum on his ass.]
			LineBreak;
			say "     You shake your head. While Uram's offer is tempting, you don't want to fuck oroglings into him right now. The sensation against your cockhead is divine, though, and your thoughts turn from suckling to your orog daddy's ass. How would it feel wrapped around your cock? Goaded by your inner perversion, you pull free of Uram's pec, admiring the bite marks you left on the otherwise pristine skin, then summoning your strength to flip the bulky orog onto his stomach, giving you a better view of his pre-streaked grey rump and dangling, half-hard cock  with big hairless balls. With a greedy groan, you sandwich your cock between those grey mountains, grinding your cock's underbelly against his puffy hole.";
			say "     'Aw. Come on, baby. Fill daddy up~.' Uram pouts as you fuck his cheeks, wiggling his rear and looking over his shoulder at you. He has to bend his legs slightly for you, but he doesn't seem to mind, letting you do as you like as his chest presses against the control board, ruining the dials with incessantly leaking milk. 'You don't have to be gentle. Daddy wants every inch.' Gritting your teeth and barely resisting the urge to fuck that slutty hole into oblivion, you smack the orog daddy's ass, growling at him to shut up. You want to sample his ass before you fuck it, and you plan to make a mess. If he gets you off, you might let him take your dick next time. 'You're so mean to your daddy.' Uram whimpers, wiggling his ass and resting his cheek on his bicep, fixing you with those pretty green eyes. 'Oh well. Daddy loves you anyway. As long as you're happy~.'";
			WaitLineBreak;
			say "     Fuck. What was it about Uram's tone that set your balls churning? Hearing him so casually refer to himself as your father in the same sentence as begging for your cock makes your rock-hard tool ready to paint that ample canvas. As he reaches down to stroke himself, you double your efforts to get off, watching your cockhead appear between his cheeks and then disappear into the sticky heat between them. Finally, with a panting groan, you slap his ass cheeks, letting your cockhead follow his crack upward and painting his back with the evidence of your enjoyment. As you feel exhaustion settle over you, courtesy of your bulging, milk-stuffed stomach and the warm heat of the orog's hole against your still leaking tip, you collapse against his back, yawning and settling your arms around his waist. A short nap couldn't hurt.";
			NPCSexAftermath Uram receives "Stroking" from Player;
	else: [Resolution of Daddy's Here is 3, body is not incestuous orog son. Repeatable if you change your infection. WILL change you. You'll get this always if you don't have a dick and have breastfed. Sorry pure female players.]
		LineBreak;
		say "     With a dry throat and a wandering eye, you ask the orog if he'll let you drink from his neverending milk fountains, shuffling in place and trying your best to ignore the arousal growing in your lower stomach. You remember the last time he let you drink, and you can't help but hope for an encore, but you'd settle for just falling asleep in those muscular arms with a full stomach. 'Oh, poor baby boy. Did you get bullied by one of those meanies in the city?' Uram says as if noticing your body isn't the same smooth grey twink he saw last. 'Come here. Let daddy feed you!' Plopping down in a groaning wheeled chair, he pats his lap, letting his loincloth flutter to the floor and offering you a set next to the massive cock drooling against his stomach. It seems he's just as excited by the prospect as you are.";
		say "     Following his lead, you toss aside your gear, leaving yourself in the nude and hopping onto the offered seat. Greedily, you mash your open mouth against his pec, taking long pulls of sweet, ice-cream-like milk and spreading your legs as heat overtakes your body, heralding the changes you've come to expect. Within moments, you've returned to a form that matches your daddy's, aided by his stroking hand on your cock. 'That's it, sweety. Drink as much as you like~!' Uram encourages you, smearing his cock over your stomach as he milks your needy manhood with patient fingers. The scent of his manly musk is so strong, mixed with that heady sweetness of ever-present milk, that you lose track of time, your body helplessly relaxing into the pleasure. Before long, you groan your release, painting his fingers, and close your eyes, dazed by the twisting knot of desire in your swollen, milk-filled stomach. He strokes you for what feels like hours, licking his fingers clean whenever you squirt for him, and by the time you pass out from exhaustion, you're half-hard, drooling between fingers that have stilled, just holding your manhood in a comforting grasp, and you've lost all your strength. Thankfully, those full pecs make a nice pillow, so you snuggle between them, listening to your daddy's heartbeat in contented bliss.";
	turn Player into "Incestuous Orog Son" silently;
	follow the turnpass rule;
	say "     Awakening feeling fresh and clean, you notice your gear is neatly placed on a nearby desk. A quick whiff tells you it's been washed, and it even smells like fabric softener! How he managed to clean your things so well without power is a mystery, but you're grateful nonetheless. You'll have to remember to thank him later.";

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
3	"Hungry Daddy"	Hungry Daddy	"[EventConditions_Hungry Daddy]"	Dam Control Center	2500	8	100

to say EventConditions_Hungry Daddy:
	if Hungry Daddy is not resolved and impregtimer of Uram > 0: [list of conditions here]
		now CurrentWalkinEvent_ConditionsMet is true;

Table of GameEventIDs (continued)
Object	Name
Hungry Daddy	"Hungry Daddy"

Hungry Daddy is a situation.
ResolveFunction of Hungry Daddy is "[ResolveEvent Hungry Daddy]".
Sarea of Hungry Daddy is "Nowhere". [standard walkins that cannot be hunted for are Nowhere, but walkin events can also be made huntable as an alternate access way]

to say ResolveEvent Hungry Daddy:
	say "     'There's my sweet boy~.' Uram gushes as you enter his home, crossing the distance between you and kneeling in front of you with difficulty, cradling his stomach. [if Player is not barecrotch]Tugging your pants down, he [else]He [end if]nuzzles your cock without delay, his tongue eagerly teasing its tip until you feel yourself hardening against his lips, spurred on by hot breath and eager kisses. 'Daddy's missed you so much. And I'm just so hungry.' He pants, letting your cock rest between his eyes and breathing deeply from your hairless sack. Licking your lips, you watch the desperate orog and tease him by waggling your cock from side to side, watching him follow it. The pregnancy hormones must have him bent out of shape, and you can't deny that the sight of him on his knees begging for dick has you feeling similarly. With a grin, you slot your cock between his lips, wordlessly agreeing to satisfy his craving.";
	say "     A needy gag follows your cock sliding home, and greedy eyes stare up at you as Uram's hands clutch your rear, holding you there while he gulps hungrily, swallowing your pre like a man in the desert desperate for water. He wastes no time, sloppily pleasing your manhood, his lips growing slick with drool until you feel so slippery you worry you'll glide free of his lips. The intense suction pulling you deeper prevents that, though, greedily guiding every drop of your arousal down his throat. Taking fistfuls of your greedy daddy's hair, you take advantage of his position to thrust forward, reveling in the hot, twisting silk assaulting your shaft. Soon enough, you're pounding his throat, biting your lower lip, and watching his full, milky pecs bounce in time with every slap of your balls against his chin. You doubt you'll last long, but you plan to squeeze every bit of sensation out of his mouth before you finish!";
	WaitLineBreak;
	say "     Gurgling happily with every hilt of your painfully hard cock, the orog squeezes your ass, meeting every thrust as drool drips down your balls to mess up his chest with the result of his tender oral ministrations. His eyes have drifted closed, but every time you pull back, they flutter slightly, opening to be sure you're not pulling away from him. Warning your daddy as you feel your balls draw up, you slam home, fucking his face with shallow thrusts that wring desperate strangled noises from his stuffed throat. When you erupt, you worry that you'll drown him, but your fears seem unfounded as the orog swallows loudly, his nose dripping with the overflow and his eyes tearing up, staring up at you with desperate desire. Until your cock softens enough to flop free, the orog suckles at it, slurping up every twitching dribble. So desperate for every drop, Uram follows them down your balls, licking up the mess he made and thanking each orb with whorish suckles that mess his face further. With his face smeared in cum and his chest not much better, he licks his lips, murmuring in a hoarse voice. 'Thank you, baby,' he coos, chest heaving and cock messing the floor beneath his swollen stomach.";
	say "     You let the heavily pregnant orog nurse on your softened cock until it grows too sensitive to continue, then pat his head, stating that you have other things to do. You'll feed him again soon, but for now, he has to be content with the load you gave him. it's hard to walk away from that pouting expression, but you're sure your daddy will understand.";
	TraitGain "Pregnancy Cravings" for Uram;
	now Hungry Daddy is Resolved;

to say OrogFaceFuck:
	say "     Noticing Uram's desperate gaze eying your cock, you offer to satisfy his cravings. He nods eagerly, kneeling in front of you with difficulty, cradling his stomach and licking his lips in anticipation. [if Player is not barecrotch]Tugging your pants down, he [else]He [end if]nuzzles your cock without delay, his tongue eagerly teasing its tip until you feel yourself hardening against his lips, spurred on by hot breath and eager kisses. 'Daddy's missed you so much. And I'm just so hungry.' He pants, letting your cock rest between his eyes and breathing deeply from your hairless sack. Licking your lips, you watch the desperate orog and tease him by waggling your cock from side to side, watching him follow it. The pregnancy hormones must have him bent out of shape, and you can't deny that the sight of him on his knees begging for dick has you feeling similarly. With a grin, you slot your cock between his lips, wordlessly agreeing to satisfy his craving.";
	say "     A needy gag follows your cock sliding home, and greedy eyes stare up at you as Uram's hands clutch your rear, holding you there while he gulps hungrily, swallowing your pre like a man in the desert desperate for water. He wastes no time, sloppily pleasing your manhood, his lips growing slick with drool until you feel so slippery you worry you'll glide free of his lips. The intense suction pulling you deeper prevents that, though, greedily guiding every drop of your arousal down his throat. Taking fistfuls of your greedy daddy's hair, you take advantage of his position to thrust forward, reveling in the hot, twisting silk assaulting your shaft. Soon enough, you're pounding his throat, biting your lower lip, and watching his full, milky pecs bounce in time with every slap of your balls against his chin. You doubt you'll last long, but you plan to squeeze every bit of sensation out of his mouth before you finish!";
	WaitLineBreak;
	say "     Gurgling happily with every hilt of your painfully hard cock, the orog squeezes your ass, meeting every thrust as drool drips down your balls to mess up his chest with the result of his tender oral ministrations. His eyes have drifted closed, but every time you pull back, they flutter slightly, opening to be sure you're not pulling away from him. Warning your daddy as you feel your balls draw up, you slam home, fucking his face with shallow thrusts that wring desperate strangled noises from his stuffed throat. When you erupt, you worry that you'll drown him, but your fears seem unfounded as the orog swallows loudly, his nose dripping with the overflow and his eyes tearing up, staring up at you with desperate desire. Until your cock softens enough to flop free, the orog suckles at it, slurping up every twitching dribble. So desperate for every drop, Uram follows them down your balls, licking up the mess he made and thanking each orb with whorish suckles that mess his face further. With his face smeared in cum and his chest not much better, he licks his lips, murmuring in a hoarse voice. 'Thank you, baby,' he coos, chest heaving and cock messing the floor beneath his swollen stomach.";
	say "     You let the heavily pregnant orog nurse on your softened cock until it grows too sensitive to continue, then pat his head, stating that you have other things to do. You'll feed him again soon, but for now, he has to be content with the load you gave him. it's hard to walk away from that pouting expression, but you're sure your daddy will understand.";
	NPCSexAftermath Uram receives "OralCock" from Player;

Section 6 - Talk and Fuck Menus

Instead of conversing Uram:
	say "[UramTalkMenu]";

Instead of fucking Uram:
	if lastfuck of Uram - turns < 3:
		say "     The orog daddy frowns and pats your cheeks, kissing your forehead. 'Sorry, baby. I know you're hungry, but Daddy needs a little while to build up a good supply. I don't want you going hungry! Come back in just a little while and you can do whatever you want to me.' Blatantly staring at your crotch, ram licks his lips, his expression promising that he's as disappointed as you are.";
	else:
		say "[UramFuckMenu]";

to say UramFuckMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask for a drink";
	now sortorder entry is 1;
	now description entry is "Uram has plenty of milk. Ask for some";
	[]
	if "Pregnancy Cravings" is listed in Traits of Uram:
		choose a blank row in table of fucking options;
		now title entry is "Feed the Pregnant Orog";
		now sortorder entry is 2;
		now description entry is "Uram looks hungry. Offer him your cock";
	[]
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
				if (nam is "Ask for a drink"):
					say "[OrogBreastFeed]";
				else if (nam is "Feed the Pregnant Orog"):
					say "[OrogFaceFuck]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the Orog Daddy, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say UramTalkMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask about Uram's past";
	now sortorder entry is 1;
	now description entry is "How did Uram get into this place? Why is he in the Dam Control Center";
	[]
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
				if (nam is "Ask about Uram's past"):
					say "[UramPast]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the Orog Daddy, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say UramPast:
	say "     Curiosity gets the better of you, and you ask Uram how he came to be in this place- and why he was wandering the swamps when you got lost. How is the reservoir dam connected to him? 'I dunno.' He says with a shrug. 'I woke up in this place, surrounded by all these little yellow notes. They said all sorts of weird stuff, like how to work the dials, and one of them was really sad. Anyway, I just started wandering around because I was bored!' Rooting around in a nearby drawer, he pulls out out a stack of post its and hands them to you. Shaky handwriting covers the papers in varying levels of coherency, filled with technical jargon, and one of them reads a bit like a dying man's note.";
	say "     'These may be my last  words. It's been a few days since I watched the others melt away and disappear into the water. I can only assume that I'm next. I've left instructions to control the water level in the dam. My only regret is that I never started a family of my own.' The note ends abruptly, trailing off the page. As you finish reading, you feel your eyes drawn to the drawer, and with a start, you notice Uram's likeness on a book. It proudly declares 'Mathfinder: Dragons and Drudgery! Racial Expansion.' With a start, you realize that Uram may have written this note before he transformed. Maybe his love of fantasy and desire to start a family combined to make him the way he is? You debate telling him the truth, but you doubt it would accomplish anything, and he seems happy enough.";

Uram ends here.