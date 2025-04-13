Swamp Goblin by Voidsnaps begins here.

Section 1 - Creature Insertion

a postimport rule:
	choose row with name of "Swamp Goblin" from the Table of Random Critters;
	now non-infectious entry is false;


Table of CombatPrep (continued)
name(text)	PrepFunction(text)
"Swamp Goblin"	"[PrepCombat_Swamp Goblin]"

to say PrepCombat_Swamp Goblin:
	setmongender 3;

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Swamp Goblin"; [ Name of the overall species of the infection, used so a "male x" and "female x" have "pureblood X" children. ]
	add "Swamp Goblin" to infections of MaleList;
	add "Swamp Goblin" to infections of BipedalList;
	add "Swamp Goblin" to infections of MagicalList;
	now Name entry is "Swamp Goblin"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is ""; [ Name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name. ]
	now enemy Name entry is ""; [ Specific name of unique enemy. ]
	now enemy type entry is 0; [ 0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters. ]
	now attack entry is "[one of]With a sneer, the goblin licks his knife, then somersaults closer, showing remarkable dexterity as he slashes at you.[or]Tossing a small knife from his waist, the goblin aims for your shoulder.[or]Dancing between your legs, the goblin aims at your ankles with his wicked blade.[at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "[Swamp GoblinLoss]";
	now victory entry is "[Swamp GoblinWin]";
	now desc entry is "[Swamp GoblinDesc]";
	now face entry is "masculine, though free of stubble. Messy black hair, pointed ears that swoop back and long hooked nose create an unmistakable goblin-like visage";
	now body entry is "short and skinny, though fairly muscular despite its size. Squat arms and legs stick out from your body, hiding your stealthy quickness with their stubbiness";
	now skin entry is "dark emerald green";
	now tail entry is "";
	now cock entry is "A thick, uncut humanoid";
	now face change entry is "it reshapes itself, giving you masculine features and an angular, masculine Swamp Goblin face. Your mouth shape lends itself to sneers and condescension";
	now body change entry is "you fall to the ground, your chest and limbs reforming into a more compact shape and your bones crackling as they shorten";
	now ass change entry is "it reshapes itself into a muscular ass that clenches into two muscular rocks, but relaxes into two pleasant handfuls with just enough for hands to grip"; [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "it takes on a humanoid uncut appearance with smooth, hairless and somewhat saggy balls beneath it, swaying as you walk";
	now str entry is 14; [ These are now the creature's stats... ]
	now dex entry is 30; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 12; [ These values may be used as part of alternate combat.]
	now per entry is 18;
	now int entry is 18;
	now cha entry is 20;
	now sex entry is "Male"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 70; [ The monster's starting HP. ]
	now lev entry is 10; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 14; [ Monster's average damage when attacking. ]
	now area entry is "Sinking Swamps"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 9; [ Length infection will make cock grow to if cocks. ]
	now Ball Size entry is 3; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 2; [ Size of breasts the infection will try to attain. ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 0; [ Depth of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 0; [ Width of female sex the infection will try to give a player. ]
	now SeductionImmune entry is false;
	now libido entry is 25; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "Swamp Goblin milk"; [ Item to be given to the player if they have this infection and milk themselves. ]
	now CumItem entry is "Swamp Goblin cum"; [ Item to be given to the player if they have this infection and jerk off. ]
	now TrophyFunction entry is "[GenerateTrophyList_Swamp Goblin]"; [ Function to generate a list of optional loot items, of which the player can choose one after victory. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "";
	now type entry is "goblin";
	now magic entry is false; [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [ Infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own strain. ] [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

to say Swamp GoblinDesc:
	say "     Searching for an opening, the goblin sizes you up, his skimpy, patchwork leather armor rustling as he readies a wicked-looking dagger. 'C'mon then. The sooner you give up, the sooner I c'n steal yer shit.' The goblin taunts you, eying your pack with a hungry, covetous expression.";

to say GenerateTrophyList_Swamp Goblin:
	[ Reminder: LootBonus can be +35 at maximum - 10 for Magpie Eyes, 15 for Mugger and 10 from Player Perception]
	if a random chance of (80 + LootBonus) in 100 succeeds: [common drop]
		add "Swamp Goblin Hair" to CombatTrophyList;
	if a random chance of (50 + LootBonus) in 100 succeeds: [common drop]
		add "dirty water" to CombatTrophyList;
	if a random chance of (30 + LootBonus) in 100 succeeds: [uncommon drop]
		add "food" to CombatTrophyList;
	if a random chance of (10 + LootBonus) in 100 succeeds: [rare drop]
		add "clean bandages" to CombatTrophyList;
	if Debug is at level 10:
		say "DEBUG: Trophy List: [CombatTrophyList].";


Table of Game Objects (continued)
name	desc	weight	object
"Swamp Goblin cum"	"A plastic water bottle containing a moderate amount of milky white fluid. Almost could be mistaken for some sort of buttermilk, if someone hadn't written 'Swamp Goblin Cum' across the label on the bottle. You [italic type]could[roman type] drink it to quench your thirst, or you maybe just do it for fun. Who knows what else it might do to you though..."	1	Swamp Goblin cum

Swamp Goblin cum is a grab object.
Swamp Goblin cum is cum.
Swamp Goblin cum is infectious.
Strain of Swamp Goblin cum is "Swamp Goblin".
Usedesc of Swamp Goblin cum is "[Swamp Goblin cum use]";

to say Swamp Goblin cum use:
	say "Lifting the plastic bottle to your mouth, you take a drink from it, letting the creamy cum run over your tongue and down your throat. Tastes rich and animal-like. Swishing it around in your mouth a little, you finish the bottle off, then stuff it back into your collection of 'empties'.";
	PlayerDrink 5;
	SanLoss 5;

instead of sniffing Swamp Goblin cum:
	say "You open the lid for a moment and take a sniff. Doesn't smell too bad actually, just kinda nutty.";

Table of Game Objects (continued)
name	desc	weight	object
"Swamp Goblin man-milk"	"A plastic water bottle filled with what is clearly milk. One could think it was a regular cow's milk, if someone hadn't written 'Swamp Goblin Man-Milk' across the label on the bottle. You [italic type]could[roman type] drink it to quench your thirst. Who knows what else it might do to you though..."	1	Swamp Goblin man-milk

Swamp Goblin man-milk is a grab object.
Swamp Goblin man-milk is milky.
Purified of Swamp Goblin man-milk is "distilled milk".
Swamp Goblin man-milk is infectious.
Strain of Swamp Goblin man-milk is "Swamp Goblin".
Usedesc of Swamp Goblin man-milk is "[Swamp Goblin man-milk use]";

to say Swamp Goblin man-milk use:
	say "Lifting the plastic bottle to your mouth, you take a drink from it, letting the milk run over your tongue and down your throat. Tastes rich and animal-like. Swishing it around in your mouth a little, you finish the bottle off, then stuff it back into your collection of 'empties'.";
	PlayerDrink 15;

Table of Game Objects (continued)
name	desc	weight	object
"Swamp Goblin Hair"	"A tuft of black hair that looks like it has been pulled from the head of a goblin. It's slightly oily."	0	Swamp Goblin Hair

Swamp Goblin Hair is a grab object.
It is temporary.
Usedesc of Swamp Goblin Hair is "[Swamp GoblinFurUse]";

to say Swamp GoblinFurUse:
	say "Holding the tuft of hair between your fingers, you stroke over it, delighted in the scent of masculinity wafting from it. Strangely, the hair disintegrates after a while, becoming a cloud of fine particles that are absorbed into your skin.";
	infect "Swamp Goblin";

Section 2 - Enemy Scenes

to say Swamp GoblinLoss:
	say "     Falling backward as you strike the final blow, the goblin stabs his dagger into the muddy ground below, leaning back on one arm and fixing you with a greedy smirk. 'Guess ye beat my ass. Can't say I don't deserve it.' The roguish goblin seems laid back for someone who just lost a fight, and you can't help but wonder if he planned this. 'Go ahead then. I know the law of the land. Whaddaya want?' How forward. You look over the petite rogue with a wandering eye, lingering on his obviously bulging crotch, straining the patchwork leather barely containing his manhood. You doubt he'd deny you if you asked for something lewd, but should you be uninterested, he seems too exhausted to press the issue.";
	say "     Do you want to demand sexual favors from the fallen rogue?";
	say "     [link]Y[as]y[end link]) - Sure, you wouldn't mind playing with the green-skinned man.";
	say "     [link]N[as]n[end link]) - Nah. You're not in the mood for some goblin sex.";
	if Player consents:
		say "     Despite the goblin's coarse attitude, you can't help the rush of adrenaline that tells you to take him up on his offer. Something about a good fight always seems to get the juices flowing. Now, as you stand over the willing goblin, you ask yourself how you want to take advantage of him.";
		Linebreak;
		say "     How do you want to fuck the goblin?";
		LineBreak;
		let Swamp_Goblin_Sex_Choices be a list of text;
		if Player is male:
			add "Punish the thief with your cock." to Swamp_Goblin_Sex_Choices;
			add "Force him to suck you off." to Swamp_Goblin_Sex_Choices;
		if Player is female:
			add "Make him lick your pussy." to Swamp_Goblin_Sex_Choices;
		let Swamp_Goblin_Sex_Choice be what the player chooses from Swamp_Goblin_Sex_Choices;
		if Swamp_Goblin_Sex_Choice is:
			-- "Punish the thief with your cock.": [Ass fuck.]
				say "     Whipping out your cock, you show it off to the kneeling goblin, watching his eyes glitter for a moment before he regains his composure. Tapping your tip against your palm, you demand to see the goblin's ass, leaving no doubt what you want from him. Someone as petite as he has to be tight, but you're not worried. Anyone with that expression, when confronted with cock, has to be a seasoned slut! ";
				if Cock Length of Player > 10:
					say "'How'm I s'posed to fit that?' Looking horrified at your suggestion but unable to take his eyes off your proportionally massive shaft, the goblin nonetheless strips off his lower garments, looking back at you with a regretful glance as he widens his stance and leans over a nearby stump. 'Hope you're satisfied with a bit 'a rubbin' instead. That'll break me in half!' Still, his hole clenches between those muscular cheeks, and you're unsure if it's in anticipation or fear.";
					say "     Spreading those cheeks further, you slot your cock between them, grinding your tip against his petite hole. His proportions are perfect for taking hold of his hips, and it feels like having a warm, breathing fleshlight in your grip. Sadly though, he seems correct, his hole resisting your tip and pained grunts leaving his mouth whenever you test him, your cock inevitably sliding upward to hotdog his cheeks. After several failed attempts, his cheeks drip with translucent pre-strings, and his gooey hole shimmers, taunting your dick with its proximity. Grunting, you double your efforts, determined to seed that stubborn hole. 'Told you. Now why don't you just finish up, and I can be on my-' Face screwing up in disbelief as a strangled sound leaves his throat; the goblin holds his stomach, staring up at you in fear. Your efforts have paid off, and your cock forces into his unprepared innards with a wet squelch, swelling his stomach out into a lewd bulge.";
					say "     Triumphant, you grip the squirming goblin firmly, feeding more of your oversized cock into his crushingly tight depths. You told him you would fuck him, and you plan to keep your promise! First, you want to feel how deep you can get before you bottom out! Grinding deeper, you eventually hilt, relaxing your grip and enjoying the sight of your cock's heavy throb forcing the goblin's torso upward. That green stomach's bulge twitches in time with your cock, and arms hang limply at the goblin's side while that emerald cock sputters its approval, spraying the cum your dick forces out of him with each prostate-crushing shove. It's easy enough to take a better hold, placing your arms under his pits and bouncing him on your dick as you grow closer to flooding his guts.";
					say "     Groaning your satisfaction, you slam to the hilt, earning a squeal from the cock-drunk man as you set his cock spurting again, yours joining it and swelling his already obscenely stretched gut into a pregnant bulge. He's practically a filled condom by the time you release him, and he falls from your softening cock with an unceremonious plop, his face slack, and his eyes rolled back. It seems you fucked the poor thing into unconsciousness, but if his still leaking cock beneath the crater that was once a tight asshole is any indication, he loved it! Using the goblin's undergarments to wipe your cock clean, you drop them on his face, whistling to yourself as you gather your things and prepare to go on your way. As much as you wish to be left alone, you hope he'll try to rob you again. You haven't drained your balls that well in a while!";
				else:
					say "'Not something I usually do.' The goblin swallows hard before unfastening his belt, tugging down his pants, and finding a nearby stump to lean against as he reveals a muscular butt with little meat. 'But I s'pose I have no choice.' He grumbles, but a hole so tight that it looks like it could snap your dick in half twitches as though beckoning you, and you find it hard to believe that the goblin's a virgin. Lining yourself up, you test the goblin's hole with the tip of your dick, smearing a pearl of pre across the flexing star and pressing forward to feel that sweet resistance. Virgin or not, it's clear that his muscular butt doesn't want any invaders, but you've got the advantage of your cock's natural lubrication, so before long, hot flesh gives way with an audible pop, letting you inside.";
					say "     Moaning aloud, the slutty goblin widens his stance, biting his lower lip and turning his face away from your view. He can deny his enjoyment all he wants, but you can feel his ass wringing your cock, and the soft patter of his dripping arousal on one of the stump's roots gives away how much he's enjoying himself. Even his balls have drawn up, as though he'll cum at any second! Testing your theory, you thrust the first few inches of your cock into that softening hole, reveling in the impossible suction and the goblin's pained pleasure. Your hands settle around the goblin's waist as you work that greedy ass along your cock like a too-small fleshlight, and before long, you've reached the hilt, mashing the spongy spot within his depths that forces needy gasps from his mouth whenever your cock finds it. It's so good that you can barely hold yourself back, and before long, your waist slaps against his muscular cheeks while you drill him, his dick flailing wildly with every thrust and painting the ground below.";
					say "     He cums suspiciously quickly, tightening around your cock and blasting the stump with his guilty enjoyment. Mid-orgasm, his inner walls kick into overdrive, relaxing into soft neediness, then clenching into tight suction that urges you to pound him harder, and he gives up hiding his enjoyment, letting his head loll to the side, and his tongue hangs out as a faraway expression overtakes his gaze. The little slut must be cum-drunk! Rewarding the thief for his body's honesty, you pound harder and harder, with little effort given to his pleasure. Your whole world becomes a slick in and out of your cock, and before long, you feel your orgasm approaching, gritting your teeth as you withdraw to the tip and use his tight entrance to stroke your shaft, delighting in the emerald pout of his hole clinging desperately to your length. Painting greedy walls with rope after rope of cum, you shove to the hilt, putting your whole weight on the slutty goblin's back and trying in vain to give his hole more cock than you have.";
					say "     You withdraw moments later, admiring the slick sheen on your shaft, devoid of globs of cum that the goblin's hole slurped off of it. Your dick fits perfectly between his cheeks, and you kiss your tip against that ruined hole, resisting the urge to shove back in as it clenches lewdly and dribbles a bit of gooey satisfaction along your slit. After all, there's plenty of time to do it again later! Gathering your gear, you slap the goblin man's upturned ass and chuckle, telling him if he doesn't want to get his talented ass fucked again, he'd better stop trying to rob you. Secretly, though, you hope he'll try again.";
			-- "Force him to suck you off.": [Facefuck.]
				say "     Tossing aside your gear well clear of greedy green hands, you heft your cock, grabbing the goblin by one green ear and forcing his nose against the base. Wordlessly, you thrust your dick against his long, pointed nose, making it clear what you want with an impatient grunt. Those emerald lips look soft, and he can't taunt you with a mouthful of dick. It seems like an easy way to kill two birds with one stone. Taken aback by your forwardness, the goblin stares down your shaft, gulping and licking away a drop of drool at the corner of his mouth. It seems he's more of a slut than he lets on, and the straining tent in his leather pants makes it pretty clear that he's as excited about the concept of sucking you off as you are about getting your dick wet. Brown eyes darting away from your gaze, he breathes in slow breaths, testing the scent of your member until your slow grind flops your head against his lips, glossing them with a pearl of pre. Almost immediately, a slightly pointed pink tongue snakes out to lick it away, and a groan vibrates through him as he tastes the slight sweat clinging to your shaft, huffing your musk like a man possessed.";
				say "     Tickled as you are by the hesitant worship, you want your dick sucked! Gripping both of the goblin's ears, you force your cock past his lips, delving deep enough that you wring a surprised gag from him. Of course, this only tightens his throat around your tip, and you continue, eager to hilt yourself. ";
				if Cock Length of Player < 10:
					say "Groaning around your shaft as you mash your base against his lips, the goblin greedily snorts the musk from it, openly stroking an emerald shaft he freed from its leather prison and slathering the underside of your dick with rapid licks. Every drop of pre disappears down his throat, and despite your grip on his ears, he's relaxed completely, taking every inch like a pro. A dreamy, cock-drunk expression sends a surge of further hardness to your dick, and you know right then that you won't be able to stop yourself until you empty yourself into the greedy slut's stomach.";
					WaitLineBreak;
					say "     Taking advantage of the drooling goblin slut's experience, you slam yourself to the hilt at breakneck speed, reveling in the drool that drips down your back and rolls down your thighs. A symphony of gurgling gulps and greedy groans goads you on, and the goblin's spare hand grips your bare ass cheek as though demanding more, and you're more than willing to rise to the occasion. It's easy enough to lift the slight creature, and you lean against a nearby tree once you maneuver him into position, mashing the back of his head into it to give yourself better leverage. Showing some consciousness despite his faraway expression, the rogue helps you along, his finger worming its way between your cheeks and teasing your hole to taunt you into rougher thrusts. His nose leaks your pre, and his chin's a mess of drool and cock musk while his uncut green spire practically pisses arousal, no doubt close to a submissive finish. Through it all, he's still finding all the sensitive spots on your shaft, his tongue rolling over the tip whenever you withdraw before it's flattened against the bottom of his stuffed mouth.";
					say "     When you feel the dam about to burst, your ass relaxes enough to swallow two of the goblin's fingers, your prostate singing as he manipulates it expertly. An assault from both ends is too much to handle, and before you can decide what to do, you're blasting the goblin's throat, sending twin streams of cum blasting out of his nostrils and forcing him to gulp for his life, lest he drown. Twin fists full of messy goblin hair keep him steady as you thrust through your finish, and by the time you're ready to pull back, he's limp and panting, his face a mess of stringing cum and dripping drool. Staring up at you with a vacant expression you can only describe as 'in love with cock,' the goblin struggles to gulp down your load, his shaft spurting its own pleasure to the ground below as the bulge in his throat works its way lower. You don't even have to ask him to clean your shaft. Before you can step away, he's licking the tip, slurping noisily, and running his lips along the underside as if thanking it for defiling him.";
					WaitLineBreak;
					say "     As much as you'd like to watch the goblin worship your cock, your busy schedule forces you to drag him away from your still-dripping tip, and you leave him there, basking in the afterglow. As you gather your gear and spare him one last glance, you smirk at his attempts to clean your seed from his soaked shirt and suck it off his fingers. If he wanted your dick, he should have just asked for it rather than attacking you!";
				else:
					say "Sputtering around your cock, the goblin gags at the sheer size of it, his lips stretched and throat bulging with your manhood. He struggles against your grip, but his mouth is still soft and welcoming, clenching tight with every wet gag that sends drool dripping down your plunging cock. Reddened eyes seem to plead with you, but you ignore them, using him like a squirming fleshlight despite being unable to hilt. Heaving your hips forward, you plunder that tight, unprepared throat, taking full advantage of the nanites' stretchy influence to feed the goblin more cock than he could handle. Struggles soon stop in favor of going limp in your grasp, and you take the opportunity to hilt yourself, delighting in the panicked bursts of air tickling the base of your shaft. Sadly, it's not over yet for the goblin, not by a long shot, as you take up a heavy rhythm that almost breaks his nose with its forcefulness.";
					say "     Wet gurgling coughs massage your cock, and quick bursts of breath suck into underused lungs whenever you withdraw, keeping the goblin on the barest edge of consciousness, but you're too deep in the intense sensation of dripping wet tightness to care. Drool drips down your thighs, dry heaves stroking your cock and forcing that weakly lapping tongue against the pulsing cumvein of your plundering rod, and the longer you spend within that heavenly, unprepared hole, the closer you can feel yourself to marking it as your own. Salvation comes for the thief-turned-cocksleeve in the form of your approaching orgasm. His nose, long since blocked by twin streams of your pre, struggles to take even the shallowest breath, and his gagging's quieted to gentle heaves whenever you hilt. You bet he didn't expect you to use his throat like this, though you couldn't ask him if you wanted, judging by his rolled-back eyes.";
					say "     When you pull back in anticipation of your hard-earned load, he sucks in a grateful breath, some color returning to his cheeks, but his struggles are far from over. Holding him there as your massive cock heaves, you flood his throat with cum, sending twin jets of seed from his already dripping nose and painting his throat with your scent, smirking as he coughs and sputters, barely able to keep up with your volume. Whimpering wordlessly, he attempts to pull back, his stomach swelling beneath his patchwork leather clothes, but you'll have none of it, holding him firm until the last drops taint his tongue. Satisfied with your handiwork, you wipe your dripping cock on the goblin's face, leaving a thin streak of cum and drool dripping from his nose. Telling him he'd better behave if he doesn't want his throat ruined again, you gather your things, secretly hoping he'll test you again. It's not often that you get access to a greedy slut like that, and your cock already itches for more.";
			-- "Make him lick your pussy.": [Facesitting.]
				LineBreak;
				say "     Showing off your lower lips after fumbling with your gear, you demand the goblin's worship, deciding that a bit of tongue-work is in order after being attacked. That pointed tongue showing whenever the goblin speaks looks like it'll do the job, and you straddle the sitting goblin's face, giving a nose full of feminine musk and using pointed ears as handlebars. Grumbling, the goblin settles between your thighs, flashing you a grimace as you tug at his ears. Despite his inhibition, he rolls his tongue over the length of your slit, and soon enough, he's messily eating your cunt, digging between them and swirling over your clit. It's not the worst cunnilingus you've ever experienced, and before long, you're rocking your hips, groaning aloud as you direct the loudly slurping goblin's efforts.";
				say "     A whimper vibrates through your inner walls as you mash your cunt against the goblin's face, drowning him in your wetness. He struggles as you block off his airway, but you're too focused on how good you feel, and you press his limits, sending him tumbling backward and following him down to lock your thighs on either side of his helpless face. Slamming downward, you ride his tongue like a cock, biting your lower lip as your captive licks for his life. When you cum, you stop any pretense of allowing the goblin to breathe, shaking and mashing his lips against your spasming entrance with a needy rhythm that could break bones. Flooding his mouth with your femcum, you lean forward, panting and bucking until you come down from your orgasmic high, then lifting your hips enough to give him room to breathe.";
				WaitLineBreak;
				say "     The goblin seizes the opportunity, sucking in grateful gasps that tease your clit. Judging by the way he's moving, his arousal is giving him a rough time, and as you look back, you notice that big green cock pulsing in the air, attended to by a frantically stroking hand. The greedy goblin's getting off on being used! There's something flattering about watching his efforts, and as you contemplate his soaked, faraway expression and watch him pleasure himself, you wonder if you should reward him for getting you off.";
				say "     [italic type]Do you want to put the goblin's dick to work?[roman type][line break]";
				say "     [link](Y)[as]y[end link] - May as well reward him!";
				say "     [link](N)[as]n[end link] - You got what you wanted. Leave him to take care of it himself";
				if Player consents: [ride his dick]
					say "     Slapping away the goblin's hand, you take hold of his dribbling cock, shimmying your way down his body until it nestles against your still-spasming pussy. Slapping his cheek gently as his face screws up and his cockhead flexes against your entrance, you tell him if he wants to get off, he'd better give you a nice ride first. You won't tolerate an early finish before you get a second orgasm out of the deal! The goblin groans aloud as you take him inside, his expression showing no small degree of effort, humping upward against your insistent rhythm and slopping deep into your sopping cunt. You doubt he'll last long, and the bucking, spurting cock sliding in and out of you confirms it. He's seconds away from finishing, and right as you feel your second finish approaching, he loses the battle, basting your inner depths with premature ejaculation and squirming under you.";
					say "     Overwhelmed by being bred by the submissive creature beneath you, you dive into orgasm, scrubbing your clit with two fingers until you add to the sloppy mess between your legs, marking the goblin's crotch as you did his face. The heady thrill of dominating the rogue makes this one last much longer, and you still feel the satisfying tingle radiating from your used entrance when his softened dick slips from your pussy, defeated. Tapping the goblin's cheek and receiving no response, you stand, gathering your things and touching yourself to his foggy expression. It seems you've fucked him into a short coma, and judging by how much cum drips from you, you've managed to drain his balls. Hopefully, you haven't scared the poor thing off with your aggressiveness. You'd like to take advantage of him again, and you're loathe to give up a tongue that talented!";
					CreatureSexAftermath "Player" receives "PussyFuck" from "Swamp Goblin";
				else: [leave him to masturbate]
					say "     Gathering your gear and admiring the furiously masturbating goblin's vulnerable form, you promise that you'll be back soon for more of that talented tongue. It's a bit of an ego boost to watch him double his efforts after hearing your tease, and as you walk away, you hear a needy, whining voice cry out. It seems the rogue has cum without your help. Imagining what you'll do to him next time, you leave him to recover, no doubt still smelling like sex.";
	else:
		say "     Shaking your head, you tell the expectant goblin that you're not in the mood for sex. You simply didn't appreciate his sneak attack and wanted to teach him a lesson. He grins at you, openly touching himself as you speak. 'Ye don't say? Pity. Next time I'll just try harder to steal your shit. Better watch your back.' Retrieving his knife, the goblin gives you an exaggerated bow. 'See ya, your royal stick-in-the-ass-ness.' With that, he's gone, disappearing into the brush with the barest whisper of a rustle. What a rude little shit. Maybe you should have punished him!";


to say Swamp GoblinWin:
	say "     Dealing the final blow with the blunt end of his knife and sending you sprawling to the ground, the goblin stands over you with a shit-eating grin, tilting your face toward him with the sharp end of the blade. 'Man, if I knew ye were such a pansy, I would have just taken your shit and ran.' Greedy fingers soon drag your pack from your unresisting arms, and the goblin begins rifling through it, tossing your hard-earned supplies to the side in search of loot.";
	if Cock Length of Player > 9: [OwO notices your bulge.]
		say "     'Man, ye're sad. I should up my game. Between you and those scaly fuckers, all I get is roasted fish, veggies, and water bottles filled-' The goblin stops mid-sentence, settling his gaze on your prone body, swallowing, and licking his lips. 'Well, since yer loot is so bad, maybe you can make it up to me.' The goblin's focus soon becomes apparent as he [if Player is not BareCrotch]peels away your lower garments to cradle your manhood [else]cradles your manhood [end if]in his rough fingers, inspecting it like a prized sausage. Struggling weakly, you squirm away from the creature's touch, but you can't stop your cock from reacting to his slow stroke, soon standing full mast in his fist. With no choice but to cooperate, you spread your legs, feeling your balls pull up as pre dribbles down its underbelly, coating emerald fingers. Hopefully, he'll put the knife away before things go further!";
		say "     'Goddamn.' Tossing aside his weapon as his other hand takes hold of your manhood, the goblin smears away the line of drool rolling down his cheek and clears his throat, attempting to appear unphased. 'This fuckin['] thing looks like it could choke an elephant.' His tone does sound jealous, but his expression leads you to believe he's envious of whoever gets to experience your cock, rather than wishing his own was larger. Your suspicions are confirmed as the goblin frees his shaft from the leather confines of his pants, kissing its head against your tip with a satisfied groan. It seems he's obsessed with your dick, and you see a way around losing your supplies by taking advantage of that. Through gritted teeth, you mention that he could sate his curiosity in exchange for letting you go. After all, you're in no state to protest!";
		WaitLineBreak;
		say "     'Nice try.' The goblin scoffs, shaking his head. Still, his cock jumps even as his face takes on an air of indecision. 'I'm not interested in that big, juicy, fuckin'-' His grinding takes on a fevered pitch, and aided by your gooey pre, he slips a bit too far forward, accidentally straddling your cock and pressing your drippy tip against his tight hole. 'I'm not...' All it takes is the barest flex of your cock, and the goblin sits down, going silent as your dick slides into place between muscular cheeks, brushing against his entrance. The 'reluctant' goblin sits down without skipping a beat, taking nearly half your shaft in a single go, and his expression changes almost immediately from reluctance to cocksluttery.";
		say "     'Fuck. Shit. Can't believe I'm-' The goblin's voice cracks as he reaches the base, and his face twists into a pleasured grimace while his rhythm takes on new desperation, his cheeks smacking your balls hard enough to smart. 'So close.' Suddenly, his rhythm grows shaky, and you worry he'll break your dick in half with how tightly he clenches. Clutching the cock-shaped bulge in his stomach with one hand as he steadies himself on your thighs, the goblin starts to fountain his approval, his cock slapping against his stomach with each flex. He cums an impressive amount for such a short guy, but your focus is elsewhere, and you focus on the tight, wet grip around your cock, pressing your hips upward.";
		WaitLineBreak;
		say "     Taking advantage of the limp cock-sleeve's pause, you grab his hips, bouncing him along your entire length. Clinging green fingers encourage you, and each shove forces a high-pitched moan from the muscular slut's mouth, but it isn't until you begin to spurt that he shows the depth of his love for cock, slamming his ass down and burying his face in your chest as he does his best to milk you of every drop. By the time you've finished using the victorious goblin, his stomach's swollen, and his ass leaks your seed to a very-much-still-hard cock. It's a far cry from his earlier cockiness, but you suppose he got everything he wanted, though as you gather up your supplies and repack your pack, he barely twitches. The poor thing will have to come to terms with something new about himself when he wakes up, but for now, you leave him in peace, secretly hoping he'll seek you out. After all, that tight ass was far from the worst.";
	else: [Less interested in dick. Basic blowjob.]
		say "     'Man, ye're sad. I should up my game. Between you and those scaly fuckers, all I get is roasted fish, veggies, and water bottles filled-' The goblin stops mid-sentence, settling his gaze on your prone body. His eyes look you up and down as he shrugs, and the soft sound of rustling draws your eyes lower to his deft fingers, busy at work. 'Guess you should apologize for wasting my time then.' He says as his green cock flops free, his pants falling to the ground as he approaches you, leaving his knife next to the pile of clothes. Your eyes widen as the goblin struts over, resting his humanoid cockhead against your nose and giving you a faceful of slightly sweaty cock musk. When you attempt to pull back, he follows you, aggressively pushing his dick against your lips and clicking his tongue against his teeth. You won't be able to say no unless you want your ass kicked again, even if you want to.";
		say "     'Fuck yeah,' The goblin groans as you let him stuff his humanoid cock past your lips. 'Play with the foreskin. Shit.' Despite his insistence, only the first inches of his shaft grace your tongue, and he seems more interested in rolling his tip in and out, forcing you to taste the marinated flavor of sweaty cock. Thankfully, he doesn't last long, requiring little more than your tongue rolling over the tip of his exposed cock and the gentle tug of suction as he lines up another thrust. To add insult to injury, he pulls out mid-blast, stroking himself over your face and narrowly avoiding gluing your eyes shut in a gooey mosaic.";
		WaitLineBreak;
		say "     'Thanks.' He salutes you sarcastically as he polishes his tip, then wipes it away on his shirt. The goblin puts his lower garments back on without a care for the cum stains he's inflicting on his clothes, leaving you to wipe your face clean with a cloth he discarded nearby. 'Next time, bring better shit, or I might get a bit pissed off. Something shiny. Make it worth beating your ass!' He calls over his shoulder as he walks away, leaving you among your scattered belongings. You grumble as you collect your gear, stuffing items into your backpack willy-nilly until everything's back in its original place. That goblin's high and mighty for someone that cums so quickly! Maybe you should teach him a lesson next time. With how he was staring at your crotch, you're willing to bet that a blowjob isn't all the little green asshole would willingly do!";












Swamp Goblin ends here.