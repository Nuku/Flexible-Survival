capybara by Voidsnaps begins here.

Section 1 - Creature

Table of CombatPrep (continued)
name(text)	PrepFunction(text)
"Capybara"	"[PrepCombat_capybara]"

to say PrepCombat_capybara:
	setmongender 3;

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Capybara"; [ Name of the overall species of the infection, used so a "male x" and "female x" have "pureblood X" children. ]
	add "Capybara" to infections of FurryList;
	add "Capybara" to infections of MaleList;
	add "Capybara" to infections of BipedalList;
	add "Capybara" to infections of CervineList;
	add "Capybara" to infections of NatureList;
	now Name entry is "Capybara"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is ""; [ Name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name. ]
	now enemy Name entry is ""; [ Specific name of unique enemy. ]
	now enemy type entry is 0; [ 0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters. ]
	now attack entry is "[one of]With a flex of impressive muscles, the muddy capybara man attempts to grapple you, slapping your ass in the process![or]Tackling you into the muck, the capybara teases you even as his grip knocks the air out of you, his half-hard muddy cock grinding against your crotch as he tries to subdue you.[or]Grabbing your legs, the capybara attempts to slam you into the mud, grunting with effort.[at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "[CapybaraLoss]";
	now victory entry is "[CapybaraWin]";
	now desc entry is "[CapybaraDesc]";
	now face entry is "rodent-like with chubby cheeks and whiskers sticking from either side of your nose. Two rounded ears stick up on either side of your head, though they're smaller than a mouse or rat's";
	now body entry is "squat and tubby, though it hides some muscle. Your arms and legs are fairly thick, while your torso is vaguely barrel-shaped";
	now skin entry is "light brown fur that's relatively waterproof";
	now tail entry is "";
	now cock entry is "A thick, uncut cock that drools when you touch it. Seems almost like a perpetually half-hard";
	now face change entry is "it reshapes itself, giving you masculine features and a short, rounded capybara muzzle. Your teeth reshape themselves into blunter, herbivorous ones perfect for aquatic plants, with two buck teeth at the front";
	now body change entry is "you fall to the ground, your chest and limbs reforming into a shape more suited for life in a swamp, with short legs, webbed feet, and a compact shape that seems perfect for floating along";
	now ass change entry is "it reshapes itself into a beautifully juicy, bouncy appearance at home on a chubby guy. It's so big that it wobbles when you walk"; [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "it takes on a thicker human-like appearance, though it hangs down more than the average guy, showing off its length even when soft, above two furry light brown balls";
	now str entry is 20; [ These are now the creature's stats... ]
	now dex entry is 12; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 30; [ These values may be used as part of alternate combat.]
	now per entry is 18;
	now int entry is 15;
	now cha entry is 14;
	now sex entry is "Male"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 110; [ The monster's starting HP. ]
	now lev entry is 9; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 20; [ Monster's average damage when attacking. ]
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
	now MilkItem entry is "capybara milk"; [ Item to be given to the player if they have this infection and milk themselves. ]
	now CumItem entry is "capybara cum"; [ Item to be given to the player if they have this infection and jerk off. ]
	now TrophyFunction entry is "[GenerateTrophyList_Capybara]"; [ Function to generate a list of optional loot items, of which the player can choose one after victory. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "";
	now type entry is "antelope";
	now magic entry is false; [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is true;
	now Cross-Infection entry is ""; [ Infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own strain. ] [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

to say CapybaraDesc:
	say "     Pausing in the middle of your wrestling as he notices you staring, the Capybara lets you look over his chubby, compact form, even turning around to show you his ass with a teasing wiggle. Mud covers his fur from the waist down, but you can see his cock through the mud, half-hard and drooling from the close-quarters contact.";

to say GenerateTrophyList_capybara:
	[ Reminder: LootBonus can be +35 at maximum - 10 for Magpie Eyes, 15 for Mugger and 10 from Player Perception]
	if a random chance of (80 + LootBonus) in 100 succeeds: [common drop]
		add "capybara fur" to CombatTrophyList;
	if a random chance of (50 + LootBonus) in 100 succeeds: [common drop]
		add "dirty water" to CombatTrophyList;
	if a random chance of (30 + LootBonus) in 100 succeeds: [uncommon drop]
		add "food" to CombatTrophyList;
	if a random chance of (10 + LootBonus) in 100 succeeds: [rare drop]
		add "clean bandages" to CombatTrophyList;
	if Debug is at level 10:
		say "DEBUG: Trophy List: [CombatTrophyList].";

Section 2 - Scenes

to say CapybaraWin:
	say "      'Woah, dude.' Beaming, the capybara stands over you, his muddy cock twitching menacingly close to your face. You're lying in the mud where he threw you, staring up at him, but strangely, you don't feel a sense of malice from him. Your hunch is proven right when he reaches out a hand and helps you stand, joining you in the pit and steadying you with a clap on your back. 'Don't look so let down, man. You might win next time!' Confused, you ask why the capybara attacked you if he didn't want to harm you. Barreling out of the muck and trying to wrestle you to the ground wasn't the best greeting. You're slightly annoyed but relieved that he wouldn't push you down and take advantage of you.";
	say "     'C'mon, dude. Haven't you ever just wanted to have fun? Plus, I can make sure you're all tuckered out before I come onto you!' Smirking, the capybara pushes in close, grinding his muddy cock against your front. Before you can protest, he presses plush lips to yours, slipping his tongue into your mouth and slipping a hand down to grab your ass. You melt against the capybara's touch, unintentionally letting your guard down. He's so warm and handsy that your body doesn't know what to do, so you default to opening your legs, letting his hard cock smear muck over your [if Player is barecrotch]genitals [else]the front of your pants. [end if]You're beginning to fear you'll run out of air before he breaks your kiss, but thankfully he lets you go, your lips connected by a string of mixed drool. 'Fuck yeah.' Your chubby paramour says with a soft chuckle, digging blunted claws into your cheeks and trailing his tongue over your neck. [if player is not barecrotch]Talented fingers strip away your gear, tossing it aside, along with your pants, leaving you bare to his touch. [else]Talented fingers tear away your things and throw them to drier ground even as that slippery cock smears pre over your junk, leaving you feeling delightfully dirty. [end if]'You've got a nice ass, dude. I'll be gentle.' he moans against your neck, spreading your cheeks and slotting his foreskin-covered tip against your hole.";
	WaitLineBreak;
	say "     Still hot and heavy with the excited capybara, you can't help yourself, leaning back and spreading your legs for the delightfully dirty penetration. Mud and precum slicken your hole, adding a sloppy symphony of bubbling sounds as your rear is submerged while the capybara thrusts away. You're too far gone to care about the potential consequences of sex in such a filthy place., clinging to the sturdy shoulders before you while your ass stings with the roughness of every heavy thrust. There's nothing stoic about his actions now, and you couldn't be more turned on by his sudden dominance, meeting every sloppy kiss with sucking lips and a roaming tongue. 'Gonna cum inside, dude. Clench down for me.' The capybara says, his voice halting with each desperate kiss and fragmenting his words. Chubby pecs bounce with every shove, and despite the mud's resistance, you can feel his balls tapping against your cheeks. Sadly, he finishes before your orgasm crests, leaving you on edge and wanting beneath his shuddering body, your ass milking each drop of goopy batter from his thick cock. 'Oh, my bad.' the capybara says with a companionable chuckle when he notices your unattended arousal [if player is male]poking from the mud and weeping indignantly at its unfulfilled desire. [else if player is female]glistening through the layer of ooze, so wet that it's almost clean. [end if]Slurping free from your loaded ass, he flops his softened cock [if player is male]against your base, kissing your cock with his dripping tip.[else]between your lower lips.[end if][line break]";
	if player is male:
		say "     Taking hold of your hard cock, the capybara strokes it in time with gentle frotting thrusts, stirring using his cock to massage your balls while talented hands tend to your aching length. Capturing your mouth in a less urgent kiss, he coaxes your tongue into a slow dance, quickening his fingers until you squirm at the dual sensation of his load seeping out of your ass and a mud-assisted handjob. Talented lips swallow your desperate moans even as you paint yourself in a mosaic of white strings, your balls throbbing in time with the capybara's shrinking cock. The kiss is so good that you loathe to break it, leaning into your rodent lover when he begins to pull back and protest with sloppy dissenting noises until, with a suction-filled pop, you break free of the citrusy taste of his mouth, falling backward out of exhaustion.";
	else:
		say "     Humping his flagging cock along your lower lips, the capybara treats your sex to gentle stroking, starting with the area around your pussylips, then meandering to your clit, where he rubs and flicks it with talented fingers. Capturing your mouth in a less urgent kiss, he coaxes your tongue into a slow dance, quickening his fingers until you squirm at the dual sensation of his load seeping out of your ass and a mud-assisted fingering. Talented lips swallow your desperate moans even as you paint his cock in a mosaic of pussyjuice streaks that break through the cum and mud, your inner walls throbbing in time with the capybara's shrinking cock even as your lower lips cradle them. The kiss is so good that you loathe to break it, leaning into your rodent lover when he begins to pull back and protest with sloppy dissenting noises until, with a suction-filled pop, you break free of the citrusy taste of his mouth, falling backward out of exhaustion.";
	WaitLineBreak;
	say "     Basking in the capybara's sweating body heat and the afterglow, you recover from your intense orgasm. Your chubby assailant-turned-lover is as skilled in aftercare as sex, producing a towel from a hidden compartment in a nearby tree and helping you clean yourself off, then seeing you off with a kiss on the forehead. It doesn't feel like you lost a fight, and you can't deny your desire to 'lose' to him again as you walk away from his relaxation spot. Maybe you'll let him wrestle you to the ground next time without resisting.";

to say CapybaraLoss:
	say "      'Woah, dude, time out!' Stopping in the middle of your battle, the capybara man gives you a grin, holding out his hand. 'You're one hell of a mud-wrestler. You beat my ass!' He seems unbothered by this fact, sitting in the mud puddle at his feet and treating you to the erotic sight of his fat shaft bobbing in the muck. 'I don't suppose you want something for your trouble? I'm sure we could figure something out.' The bout got your blood pumping, and the sight of the naked man before you, offering himself, is enough for your mind to wander. Would it be so bad to let yourself explore with a willing partner?";
	say "      [bold type]What do you want to do with the capybara?[roman type][line break]";
	let capybara_Fuck_Choices be a list of text;
	if Player is male:
		add "Ask for a blowjob." to capybara_Fuck_Choices;
		add "Fuck him in the mud." to capybara_Fuck_Choices;
	if Player is female:
		add "Ask him to eat you out." to capybara_Fuck_Choices;
		[add "Frot with his muck-covered cock." to capybara_Fuck_Choices;]
	add "Nothing right now. You're busy!" to capybara_Fuck_Choices;
	let capybara_Fuck_Choice be what the player chooses from capybara_Fuck_Choices;
	if capybara_Fuck_Choice is:
		-- "Ask for a blowjob.":
			LineBreak;
			say "     Jumping at the chance for fun, you toss your gear aside somewhere dry and wade into the mud, erection leading the way. Eagerly, you ask if the capybara's any good with his mouth. You're just as excited as he is, and you'd like to 'blow off some steam' in his throat. The capybara's surprisingly unbothered when confronted with your cock, sampling the tip with the air of a connoisseur and pressing his nostrils to it, breathing in your musk. 'No problem, dude.' Licking his lips, he pats your ass, nuzzling his soft nose against your bouncing tip. 'You may want to sit down for this, though. C'mere.'";
			say "     Before you know it, you're straddling the capybara's chest, resting your ass on his plump pecs while your cock drools down the top of his muzzle. His tongue rolls out, slathering your shaft in drool and trailing over every inch of the underside, and you swear you see stars when lips far too soft to exist wrap around your tip. There's no rush in his movements, nothing to tell you that he's as invested in this as you are, but somehow, you don't mind. Cupping your tip in his furrowed tongue, the capybara places both hands on your ass, controlling your twitching hips. In and out, accompanied by lazy, long licks, your cock drifts in and out of his mouth, numbing your legs with how much sensation concentrates on those scant few inches he lets into that wet heaven. He has you right where he wants you, and he knows it, pulling off and showing you the leaky faucet that is your cocktip.";
			WaitLineBreak;
			say "     'Relax, dude. Nowhere else I'd rather be.' The capybara murmurs as your hips thrust unbidden, rolling his tongue over the base and giving your ass a companionable squeeze. His grip is firm enough to stop your movements but so soft that you could twist free, though you doubt you could bring yourself to! 'Nothing worth doing is worth rushing. You'll see.' Slow, deliberate movements massage every inch of cock, welcoming the length past those talented lips. With nothing to do but enjoy yourself, you kneel there, legs shaking as the capybara nearly melts your genitals with hot slickness. Even your orgasm, rising in your stomach and threatening to spill over like a bursting dam, comes on slowly, accompanied by a busy contentment that has you feeling dopey and overly relaxed. When you finish, the capybara pulls back, leaving your cock to pulse on his gently shimmying tongue and show off each gooey rope that paints his mouth. There's so much of it that you're still flooding his muzzle long after your orgasm plateaus and begins to fade, but each time the tide crests, bringing with it a shuddering mini-gasm, your balls summon another weak jet.";
			say "      'See, buddy? It's better when you take your time.' Muffled around a mouthful of cum before he returns to his earnest cock worship, the capybara swirls the load over your shaft, lapping a foaming coat of your spend over your cock and using it to flavor long bobbing thrusts that coat his muzzle in your seed. Until you're so sensitive that the briefest breath makes you squirm, he continues his sloppy ministrations, letting your cum drip down his chin and add to the mess, patting your ass when he's finished with you and showing off his mouthful before swallowing it in one gulp. As you recover, you rest on the chubby hunk's conveniently plush chest, barely paying attention to your surroundings. Your world has narrowed to your oversensitive cock, and your orgasm sapped all your energy, but you can't imagine walking away. Maybe there's something to the capybara's lazy lifestyle. Sadly, you leave eventually, abandoning the capybara to lounge in his mud wallow and continuing through the swamps, returning to the path.";
			CreatureSexAftermath "Capybara" receives "OralCock" from "Player";
			[]
		-- "Fuck him in the mud.":
			LineBreak;
			say "     Jumping at the chance for fun, you contemplate the naked, delightfully squishy capybara body laid out before you. Considering the rest of his body, you're sure he's hiding a plump ass beneath the muck. Why not explore it? Calmly, you ask him to turn over for you so you can take your prize, hurriedly tossing your gear aside and standing there, nude and erect. 'Damn, bro. Nice.' The capybara says as his eyes roam over your crotch, leaning against the side of the mud wallow and shaking his hips as he shows off a mud-caked pair of buns. You've hit the jackpot! Not only is his ass plump and jiggly, but perfectly shaped, topped by a stubby tail that does little to hide the puckered hole winking at you between them when he grabs one cheek and spreads it.";
			say "     Wading into the muck without a single qualm, you grab greedy hands full of that plush ass, biting your lower lip as the delightfully dirty fur deforms beneath your fingers, letting your digits sink in. An ass this sweet deserves some exploration, so you flop your cock between those cheeks, grunting as the heat welling from that mud-slicked hole caresses your cock tip, inviting you to thrust. You almost forget your goal, pressing your hips against the capybara's cheeks and rocking your cock between those heavenly mounds, letting your precum mix with the muck into a surprisingly pleasant lube. 'Fuck, man. Slip it in.' Lazily, the capybara grinds back against your dick, the furrow between his cheeks guiding your cock's underbelly along his hole. 'Don't want to waste a dick this good.' Despite his words, his expression remains neutral and relaxed, as though this is something he does every day. You feel the oddest desire to rattle him.";
			WaitLineBreak;
			say "     Grunting your desire, you line yourself up, slapping one cheek and ramming yourself home to the root. It's so delightfully tight and meltingly silky-soft that you nearly collapse over his back, but your balls' aching need spurs you on, creating a symphony of sloppy noises as you fuck just above the mud line. From the waist down, your body shines with mud, and you can feel it dripping off your balls, but it doesn't bother you. If anything, the dirtiness of it all has your cock dripping even more. 'Fuck yeah.' Bracing himself against the edge, the capybara spreads his legs, letting your cock's earnest efforts to core him resonate through the quiet clearing. 'Right there.' Openly stroking himself off under the surface, the capybara guides your thrusts as he begs for more, angling his hips until your tip mashes against the sponginess of his prostate. His mouth hangs open, and his composure seems to have broken in favor of cheering you on.";
			say "     The capybara's ass wobbling with every thrust is attractive, but you set your sights on something better. You want a better view of the expressions you're coaxing out of the stoic, carefree man! With some effort, you guide him onto his back, pulling out despite your cock's throbbing protest, only to shove under his balls, rooting around until your tip finds its home and slurps back into heavenly depths. The view is much better now. The capybara's body moves with each heavy thrust, openly panting, stroking that fat cock, and creaming the mud covering that heavy body with thick, gooey drools of pre that sit on top of the darker slickness like icing. With little warning, your orgasm washes over you, dragging a growl from your throat as you grab a fistful of jiggling pec, groping it, and grabbing his cock with your free hand. Stroking him hard and fast, you unload sloppy strings of virility deep into the capybara's hot innards, determined to bring him to his finish.";
			WaitLineBreak;
			say "     'Goddamn!' Grabbing the dirt on either side of him, the capybara arches his back as thick, creamy ropes arc from his cocktip, painting his mud-darkened fur with bright white strings. In a display of uncharacteristic aggressiveness, he grabs your head just as his cock softens in your fingers, slipping his tongue into your mouth and forcing a kiss that tastes like citrus with a hint of the cum that painted his chin. Lying in the muck, you make out with the capybara, letting your cock drain the last dregs of desire into his welcoming hole. Sadly, you gather your things eventually, using a towel the capybara produces from a hidden dry log nearby to clean yourself off. He's still lying there, legs spread and ass dripping with your contribution when you turn to leave, waving you off and lying back as if deflated. You can't help but feel a bit of pride at how tired he looks.";
			CreatureSexAftermath "Capybara" receives "AssFuck" from "Player";
			[]
		-- "Ask him to eat you out.":
			say "     Surprised by the capybara's offer, you contemplate your options as you look over his nude body. A chubby boy like him resembles a comfortable seat. Maybe you should see if he'll let you take a ride? Your pussy's gentle clench pulses as you strip off your gear, baring your sex to his stoic, relaxed expression and idly swirling your finger over your clit. Demurely, you ask if he'd like a taste. 'Sure thing, dude. I don't discriminate.' Patting his chest, the capybara opens his mouth, waggling his tongue invitingly and waiting for you to make the next move. He's trying to play it cool, but his eyes haven't left your pussy since it came into view.";
			say "     Kneeling on the capybara's chest and slowly lowering your sex, you sigh, shivering as hot breath washes over your lips. Tentatively, you grip either side of the capybara's head for stability, then press your lower lips against his mouth, grinding softly against the tip of his tongue. 'Mmm.' Slow and methodical, the capybara swirls his tongue over your lower lips, letting out a rumbling sound of enjoyment as he laps up the first drops of dew. He's certainly not shy. Unlike most men, he hits the ground running, slathering your pussy in long licks and pressing his face into it, filling the clearing with moist sounds. Taken aback by the capybara's eagerness, you relax too much, prompting his hands to grip your ass to keep you in place for his messy tongue. You feel like you're floating. It's impossible to resist grinding against his face, smearing your dripping sex over his mouth, and making his tongue work to stay inside.";
			WaitLineBreak;
			say "    Focusing his attention on your clit, the capybara alternates between sucking it, trailing his tongue lazily, and noisily lapping along your slit. He's a sloppy eater, covering his face in your feminine musk, but somehow that makes it better! You don't need to act like you're not enjoying yourself; you can relax and let your legs turn to jelly. 'Mmmngh.' Perhaps sensing your orgasm approaching, the capybara mashes his mouth against your lower lips, making out with your pussy as though it were your mouth. No matter how much you squirm, he savages your inner walls, his tongue tickling that spot inside that makes you squeak and moan.Too soon, the oversized rodent's motions work you to the edge, then fling you off it. With a warning moan, you sit down hard, crushing cheeks between your thighs and flooding that hard-working mouth with fem-cum. Your orgasm is long, prolonged by sloppy slurping tongue jabs, well-placed nibbles, and even the shaky breaths the capybara manages to sneak around your death grip.";
			say "     Eventually, when your legs stop shaking and your muscles unlock, you release the capybara, lying back and carefully cleaning the mud from your bare ass before gathering your gear. He's still there, licking his lips and waving from his mud pit as his free hand shamelessly strokes his pre-washed cock, when you leave, a pep in your step from his services.";
			CreatureSexAftermath "Player" receives "OralPussy" from "Capybara";
			[]
		-- "Nothing right now. You're busy!":
			LineBreak;
			say "     Shaking your head, you decline the dirty capybara's advances. You've got other places to be and other things to do, and can't afford to waste your time here. He takes your denial in stride, leaning back in the muck and acting like a man in a hot tub. 'Suit yourself, dude.' He says, waving you off. 'Come find me if you change your mind! Nothing like a roll in the mud to blow off some steam!'";

Section 2 - Cum and Milk

Table of Game Objects (continued)
name	desc	weight	object
"capybara cum"	"A plastic water bottle containing a moderate amount of milky white fluid. Almost could be mistaken for some sort of buttermilk, if someone hadn't written 'Capybara Cum' across the label on the bottle. You [italic type]could[roman type] drink it to quench your thirst, or you maybe just do it for fun. Who knows what else it might do to you though..."	1	capybara cum

capybara cum is a grab object.
capybara cum is cum.
capybara cum is infectious.
Strain of capybara cum is "Capybara".
Usedesc of capybara cum is "[capybara cum use]";

to say capybara cum use:
	say "Lifting the plastic bottle to your mouth, you take a drink from it, letting the creamy cum run over your tongue and down your throat. Tastes rich and animal-like. Swishing it around in your mouth a little, you finish the bottle off, then stuff it back into your collection of 'empties'.";
	PlayerDrink 5;
	SanLoss 5;

instead of sniffing capybara cum:
	say "You open the lid for a moment and take a sniff. Doesn't smell too bad actually, just kinda nutty.";

Table of Game Objects (continued)
name	desc	weight	object
"capybara man-milk"	"A plastic water bottle filled with what is clearly milk. One could think it was a regular cow's milk, if someone hadn't written 'capybara Man-Milk' across the label on the bottle. You [italic type]could[roman type] drink it to quench your thirst. Who knows what else it might do to you though..."	1	capybara man-milk

capybara man-milk is a grab object.
capybara man-milk is milky.
Purified of capybara man-milk is "distilled milk".
capybara man-milk is infectious.
Strain of capybara man-milk is "Capybara".
Usedesc of capybara man-milk is "[capybara man-milk use]";

to say capybara man-milk use:
	say "Lifting the plastic bottle to your mouth, you take a drink from it, letting the milk run over your tongue and down your throat. Tastes rich and animal-like. Swishing it around in your mouth a little, you finish the bottle off, then stuff it back into your collection of 'empties'.";
	PlayerDrink 15;

Table of Game Objects (continued)
name	desc	weight	object
"capybara fur"	"A tuft of light brown fur that looks like it has been pulled out of the coat of a capybara. It's nicely soft and waterproof."	0	capybara fur

capybara fur is a grab object.
It is temporary.
Usedesc of capybara fur is "[CapybaraFurUse]";

to say CapybaraFurUse:
	say "Holding the tuft of fur between your fingers, you stroke over it, delighted in its softness. Strangely, the hair disintegrates after a while, becoming a cloud of fine particles that are absorbed into your skin.";
	infect "Capybara";

capybara ends here.