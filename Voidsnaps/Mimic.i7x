Mimic by Voidsnaps begins here.

[Resolutions:]
[-Suspicious Package:]
[1: Opens up repeat mimic event.]
[100: No more mimic encounters.]

Table of GameEventIDs (continued)
Object	Name
Suspicious Package	"Suspicious Package"

Suspicious Package is a situation.
ResolveFunction of Suspicious Package is "[ResolveEvent Suspicious Package]".
Sarea of Suspicious Package is "Sinking Swamps".

to say ResolveEvent Suspicious Package:
	say "     As you wander the swamps, you come upon a strangely clean-looking crate. A red cross decorates the side, and the top appears popped, giving a hole large enough to stick your arm through and feel around for supplies. Resisting the urge to rush forward and claim your unforeseen windfall, you stop yourself. Would supplies be left alone this deep in a forest? The lizardmen wandering the forest must have seen this by now. Why would they leave anything behind? Pondering the crate, you step closer, your gaze catching a glint inside the container. There's definitely something inside there- and from the looks of it, if you reach your arm inside, you can grab it. The question is, is it worth the risk?";
	LineBreak;
	say "     [bold type]Should you stick your arm inside the suspicious crate?[roman type][line break]";
	let Suspicious_Package_Choices be a list of text;
	add "Nope! Turn around and walk away. Something must be wrong with it." to Suspicious_Package_Choices;
	add "Fuck it. You need supplies." to Suspicious_Package_Choices;
	let Suspicious_Package_Choice be what the player chooses from Suspicious_Package_Choices;
	if Suspicious_Package_Choice is:
		-- "Nope! Turn around and walk away. Something must be wrong with it.":
			LineBreak;
			say "     With a sigh, you abandon whatever hides in the care package. It's not worth going against your gut, and these days an otherwise small mistake could be catastrophic. Still, you can't help but look over your shoulder as you walk away. Was the lid always skewed to the right, and was the cross painted on the side always ragged? Shaking your head, you shudder as your mind races with what could have caused the differences you noticed. It's best to avoid this place from now on.";
			now Resolution of Suspicious Package is 100; [no more mimic]
		-- "Fuck it. You need supplies.":
			LineBreak;
			say "     Throwing caution to the wind, you lean against the box, stuffing your hand into the darkness inside and groping around for the shiny object. You realize your mistake almost immediately when you feel your arm stop in its tracks, gripping something soft and malleable, but it's already too late. Something long and serpentine wraps around your wrist and tugs you flush with the crate top, and moist heat licks along your skin. The box unfurls with patient movements, wood cracking, and splintering until the splinters resemble sharp carnivorous teeth. A writhing mass of pale blue tentacles slithers along your arm, creeping across your chest, and you lurch into the newly created space, tugged by the death grip on your trapped appendage. Strange noises accompany the creature's movements, and you soon realize it's coming from the mass in front of your face. Frighteningly moist sounds like stirring macaroni and cheese, interspersed with the drip, drip of fluids assaulting your ears as the centerpiece comes into view- a thick rod that pulses as if greeting you, looking much like an oversized, throbbing cock.";
			say "[MimicTrapSprung]";
			now Resolution of Suspicious Package is 1; [opens up repeat event]
			now Playful Package is active;
	now Suspicious Package is Resolved;

to say MimicTrapSprung:
	say "     The myriad tentacles work their way under your clothes, securing new holds on your arms with coiling meticulousness, taking advantage of their twisting flexibility to strip you down to bare skin and toss aside your things, covered in a thin sheen of slime. ";
	if Player is female:
		say "Questing tentacles converge on your lower lips, pausing as though sniffing the air, then waggling from side to side, darting forward to inspect your nethers. Slippery tips spread your lower lips for the sightless creature's amusement, and you feel one of them twist around your clit, shining it with slippery slime that puts your pussy's secretions to shame. It grows bolder by the second, twisting and convulsing as dozens of thin spaghetti-like tentacles fill your sex, cramming every nook and cranny and giving your stomach an unsightly bulge, stopping once they nudge your cervix.";
		LineBreak;
		say "     You wish you weren't enjoying yourself, but the undulating mass mimics a vibrator, and you're so wet from mixed dripping juices you can feel it dripping down your thighs. Maybe submitting won't be so bad? This creature's curiosity is far less destructive than its appearance suggests, and the heat growing in your midriff sends thoughts of danger fleeing. A sensation unlike anything else you've ever felt begins at the entrance to your womb. Parts of you that no cock could ever reach are stinging with a gentle stretch, and whatever's piercing your womb's gate grows thicker by the second. With a start, you realize- the creature's opening you up! You kick your legs in frustration, hoping to discourage its exploration and bring its attention back to stimulating your needy passage. Your protest is in vain- a sudden pop heralds the sullying of your most intimate place, and that gooey drool dripping from the pale blue tentacles relaxes flesh that should be screaming in pain.";
		WaitLineBreak;
		say "     The majority of the mass withdraws, leaving an honor guard of appendages to hold your sex open, along with your gaping cervix, and that throbbing appendage below you grows closer, spitting its delight against your pussy lips and bathing your clit in hot slime. Lowering you to its pseudo-cock, the creature shudders with delight as its fat tip pops past your entrance, rippling with excitement with each inch that violates you. You can't look away from the bulge in your stomach, biting your lip at the pleasurable sensation of being busted wide open. You don't know if it's the texture of slippery flesh or the slime basting your cunt affecting your judgment, but you can barely think- All that runs through your head is the intense need for this creature to breed you! Trying in vain to sit on that questing cock, you encourage it deeper, eager for more.";
		say "     Every inch of your sex receives the same stretching treatment as it slurps its bloated tip into your womb until it brushes the far wall. With that impassible barrier reached, it withdraws, a series of bulges along its length caressing your inner walls with every movement. It's so intense that you crest the edge of your orgasm without warning, creaming the shaft and clamping down, encouraging a faster rhythm. Increasingly brutal thrusts draw heavy groans from your pleasure-wracked body. Orgasms blend into near-constant sensations, and your stomach distends, showing that tentacle cock's progress. You're on the edge of passing out, but you try your best to hang on, whimpering loudly enough that your voice echoes through the clearing.";
		WaitLineBreak;
		say "      The final straw is that massive tentacle shaft's finish. Just when you expect you'll be fucked open for eternity, and only moments before your mind welcomes it, the tip quivers, belching out something too solid to be cum. Several more objects follow, accompanied by a generous helping of lubricant, until your stomach swells into pregnancy, then you feel the smaller tentacles withdraw, accompanied by the throbbing tentacle dick. The tentacles wrapping your limbs lower you to the ground outside of the fleshy interior of the creature, and it seals itself up as you regain your state of mind, bringing your fingers to your stomach and rubbing over the bulging outline of a full womb. You can feel the individual shape of each oval within you, and prodding them makes your pussy throb and dribble thick slime. There's no doubt- You're pregnant with this thing's eggs.";
		say "     Gathering your gear, you hold your stomach, too oversensitive to dress yourself, even if you wanted to. It's hard to remember where the path through the shady swamp is, but you walk in the general direction of it. Sadly, before you find it, you feel your stomach quake and double over. A motherly compulsion draws you toward the murky water like something is guiding you. Before you can approach the problem from a logical point of view, you're squatting, lowering your aching, overworked pussy to the cooling water's surface. The quickening in your stomach intensifies before you can dip yourself in, and the eggs so aggressively pumped into your womb shift, slurping free of their temporary home and disappearing into the water below. Each one large enough to stretch your poor pussy; the eggs fire off one after another, aided by clenching, orgasm-induced contractions until you're holding a flat stomach, two fingers probing your empty cunt.";
		WaitLineBreak;
		say "     Retrieving your things from where they were thrown to the side when your body demanded relief, you re-equip yourself, eager to get past what happened to you. It's slow going, but you return to where the path is, ready to continue your exploration of the swamps and trying your best to forget your bestial progeny hatching something in the water below. Maybe they'll join their 'father' (the crate creature) later.";
		CreatureSexAftermath "Player" receives "PussyDildoFuck" from "Mimic";
	else if Player is male:
		say "The myriad tentacles work their way under your clothes, securing new holds on your arms with coiling meticulousness, taking advantage of their twisting flexibility to strip you down to bare skin and toss aside your things, covered in a thin sheen of slime. Questing tentacles slip and slide over your balls, prodding beneath them. They almost seem disappointed as they explore the seam leading toward your ass, searching for something that's not there but quivers when they find your entrance. The creature's slippery appendages prod your ass, smearing it with a coating of goo dripping from every inch of serpentine tentacle arms. Then you feel the collective grip of the curious creature shift, bringing you to a soft landing in its fleshy interior.";
		say "     The throbbing appendage in front of you droops as the monstrous amalgam rethinks its approach. A trio of pale blue humanoid cocks with bulbous heads slither from the mass around it, their tips weeping pre, and telescope in front of your maleness like snakes tasting the air before they crowd your manhood, sandwiching it in slippery flesh and rubbing against it from all sides. Slime and pre coats every inch of your shaft through their efforts, kissing their tips against yours and sending glittering strings of messiness drooling down it. You can't help your growing erection, gritting your teeth and thrusting against the creature's frottage. It's such a strange sensation- like you're being triple-teamed by hung men- and the pulsing underbelly of one of the tentacles slurping between your ass cheeks with each thrust has your hips pushing up like a wanton slut. Each moment brings you closer to not caring, and your balls certainly agree, pulsing with the desire to finish.";
		WaitLineBreak;
		say "     One of the tentacle cocks takes over for the rest, wrapping your cock in slithering coils and grinding its drippy slit against your flexing tip. It seems intent on something, and when its lips open up, accepting your dick into tight confines, you can only gasp, thrusting upward to fuck the pseudo-pussy and marveling at the stretchiness of the lengthy shaft. Not to be outdone, the twin shafts that abandoned yours jostle against your unguarded ass, slopping against each other with the copious slipperiness they cover your ass with. One of them crams itself into your relaxing hole before you can register what it's doing to you, slamming home until your stomach visibly churns with serpentine length. Its companion breaks through before the other's frenzy is over, spreading you wide, and you watch as they grind against each other, twisting into a braided duet that alternates heavy shoves.";
		say "     It's impossible to think with your dick sucked expertly and your sloppy hole wrecked by pounding thrusts, but there's still enough of your wits to realize that the creature's released its hold on your arms and legs. You could escape if you wanted to, but rather than running, you grip the expertly slurping tentacle, chest heaving as you frantically masturbate yourself in the makeshift fleshlight. You're seconds away from what feels like a flood of an orgasm, spurred on by increasingly violent shoves against your prostate. With a triumphant moan, you unleash your desire into the tentacle's tender grip, freezing and feeling drool drip down the corner of your mouth as you finish. Every undulating push distends your overworked stomach, timed perfectly with every shot of gooey bliss into the sucking grip, and your body twists against the fleshy cushion beneath it, lost in the desire to fuck your way through the intense sensation.";
		WaitLineBreak;
		say "     The creature soon joins you in orgasm, stilling itself as heaving pumps work a bulbous payload through its length, stretching your hole on its way through, then basting your innards so thoroughly that you swear you can taste it. One, two, three, then more loads fill your system, overloading it and swelling your stomach into a pregnant bulge. You lie there in carnal bliss as the creature's cocks withdraw, its seed flooding the slimy innards of the busted open box. Like a true gentleman, it caresses your skin, helping you to your feet with a gentle push and patting your ass with a drooping cocktip, leaving a stamp of seed on one butt cheek. Message received, you gather your things, too oversensitive to do much more than gingerly shuffle away with your gear in your hands, feeling your stomach drain as you head back to the road.";
		say "     Thankfully, most of the monster cum leaves your gaped hole before you run into anyone else, and you dress next to the lion's share of it, thankful for the tingling of nanites bringing your ass back to its original state as you shoulder your pack. You doubt you could fight with the added load.";
		CreatureSexAftermath "Player" receives "DildoAssFuck" from "Mimic";
	else:
		say "     The creature's excited roaming tentacles slow to a stop as they find your nullfied bulge, twitching away from it like an annoyed cat's tail. With an air of annoyance, its appendages flip you over, bringing down a heavy flattened tentacle on your exposed ass as if berating you for depriving it of genitals to play with. Expelling you from the fleshy writhing mass, it seals itself up, its blank crate giving you what you assume is the cold shoulder. [bold type]It seems if you want to play with this strange creature, you need a cock or a pussy.[roman type][line break]";

Table of GameEventIDs (continued)
Object	Name
Playful Package	"Playful Package"

Playful Package is a situation.
Playful Package is inactive. [Default inactive, activated by accepting the creature's advances.]
ResolveFunction of Playful Package is "[ResolveEvent Playful Package]".
Sarea of Playful Package is "Sinking Swamps".

to say ResolveEvent Playful Package:
	say "     Returning to the spot where you last saw the mysterious crate full of tentacles, you approach it without fear. It's right where you left it, though it's tucked itself against a tree, moving through unknown means. Unfurling like the petals of a flower when you approach, curious appendages reaching out from the fleshy interior and wooden 'teeth' respectfully far from your body, it greets you with gentle caresses, thin tentacles twining through your fingers. It seems your past experience has tamed the creature. Maybe it's more intelligent than you thought. You contemplate the thicker tentacles in the center, surrounding the pseudo-member that sits unmoving, glimmering with the slime that festoons the creature's inner workings. Now that you've returned, do you want to use the creature's unique services? It's already twining against your arms and legs as if begging for attention, tugging eagerly at you without forcing you closer.";
	say "     [bold type]Do you want to let the friendly monster fuck you?[roman type][line break]";
	say "     [link](Y)[as]y[end link] - Yes. All those tentacles look like fun.";
	say "     [link](N)[as]n[end link] - No, you don't have time.";
	if Player consents:
		if Player is female:
			say "     [if Player is not barecrotch]Tugging your pants down just enough [else]Spreading your pussy lips [end if]to expose yourself, you show off your feminine sex, touching yourself as the curious tentacles orient themselves, 'watching' curiously. The wetter your sex grows, the more excited they get until you feel their slimy touch coiling from all sides, drawing you closer into its tender embrace and dragging your hand away from its gentle fingering.";
		else if Player is male:
			say "     [if Player is not barecrotch]Tugging your pants down enough [else]Caressing and tugging your length [end if]to show off your growing cock, you stroke yourself to the captive audience of telescoping tentacles. They're close enough that you could touch your drippy cock tip to them, and the more you leak, the more excited they get, wiggling and scenting the air. When the dangling string of pre touches one of their tips, they abandon their voyeuristic wiggling, approaching you from all sides and gripping your limbs to drag you closer.";
		say "[MimicTrapSprung]";
	else:
		say "      Shaking your head, you pat the friendly tentacles softly, murmuring that you're sorry you can't play with them right now. Stepping back, you wave to the creature as it closes up into its protective wooden shell, leaving you in peace. Now that you think about it, do you have the time to waste here? It would be easy enough to avoid this place to prevent disappointing the poor thing.";
		say "     [bold type]Do you want to avoid the friendly monster from now on?[roman type][line break]";
		say "     [link](Y)[as]y[end link] - Yes. You don't want to encounter it again.";
		say "     [link](N)[as]n[end link] - No, you're just busy.";
		if Player consents:
			say "     Marking down the location in your mental map, you decide to avoid the friendly tentacle monster from now on. You're sure it'll be fine. It'll find someone else to sate its desires.";
			now Resolution of Suspicious Package is 100;
			now Playful Package is Resolved;
		else:
			say "     No! Why would you want to leave such an adorable creature alone? You'll come back later and sate its lusts, you're just busy right now and can't spare the time. You barely resist the urge to apologize to the mute monster, walking away and sparing it a glance as the crate seems to sag, looking as unhappy as an inanimate object ever could.";

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Lizardfolk";
	add "Mimic" to infections of ReptileList;
	add "Mimic" to infections of FurryList;
	add "Mimic" to infections of NatureList;
	add "Mimic" to infections of MaleList;
	add "Mimic" to infections of TaperedCockList;
	add "Mimic" to infections of BipedalList;
	add "Mimic" to infections of TailList;
	now Name entry is "Mimic";
	now enemy title entry is ""; [ Name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name. ]
	now enemy Name entry is ""; [ Specific name of unique enemy. ]
	now enemy type entry is 1; [ 0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters. ]
	now attack entry is "";
	now defeated entry is "[Mimic_Loses]";
	now victory entry is "[Mimic_Wins]";
	now desc entry is "[Mimic_Desc]";
	now face entry is "";
	now body entry is "";
	now skin entry is "";
	now tail entry is "";
	now cock entry is "";
	now face change entry is "";
	now body change entry is "";
	now skin change entry is "";
	now ass change entry is "";
	now cock change entry is "";
	now Cock Count entry is 2;
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
	now Cock Length entry is 12; [ Length infection will make cock grow to if cocks]
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
	now MilkItem entry is "mimic milk"; [ Item to be given to the player if they have this infection and milk themselves. ]
	now CumItem entry is ""; [ Item to be given to the player if they have this infection and jerk off. ]
	now TrophyFunction entry is "-"; [ Function to generate a list of optional loot items, of which the player can choose one after victory. ]
	now scale entry is 2; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]sleek[or]muscular[at random]";
	now type entry is "reptilian";
	now magic entry is false; [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [ Infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own strain. ]  [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

to say Mimic_Wins:
	say "Not actually a scene. Placeholder.";

to say Mimic_Loses:
	say "Not actually a scene. Placeholder.";

to say Mimic_Desc:
	say "Not actually a scene. Placeholder.";



Mimic ends here.