Ozeg by Voidsnaps begins here.

a postimport rule:
	if energy of Ozeg is 0:
		now energy of Ozeg is 2500;

Section 1 - Ozeg declaration and infection

Table of GameCharacterIDs (continued)
object	name
Ozeg	"Ozeg"

Ozeg is a man.
ScaleValue of Ozeg is 4. [Larger than human]
Body Weight of Ozeg is 8. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Ozeg is 8. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Ozeg is 3. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Ozeg is 5. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Ozeg is 5. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Ozeg is 15. [length in inches]
Breast Size of Ozeg is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Ozeg is 2. [count of nipples]
Asshole Depth of Ozeg is 24. [inches deep for anal fucking]
Asshole Tightness of Ozeg is 4. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Ozeg is 1. [number of cocks]
Cock Girth of Ozeg is 5. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Ozeg is 14. [length in inches]
Ball Count of Ozeg is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Ozeg is 5. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Ozeg is 0. [number of cunts]
Cunt Depth of Ozeg is 0. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Ozeg is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Ozeg is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Ozeg is false.
PlayerRomanced of Ozeg is false.
PlayerFriended of Ozeg is false.
PlayerControlled of Ozeg is false.
PlayerFucked of Ozeg is false.
OralVirgin of Ozeg is false.
Virgin of Ozeg is false.
AnalVirgin of Ozeg is false.
PenileVirgin of Ozeg is true.
SexuallyExperienced of Ozeg is true.
Energy of Ozeg is 2500.
TwistedCapacity of Ozeg is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Ozeg is true. [steriles can't knock people up]
MainInfection of Ozeg is "Demonic Dragon".
Description of Ozeg is "[OzegDesc]".
Conversation of Ozeg is { "<This is nothing but a placeholder!>" }.
The scent of Ozeg is "[OzegScent]".
Energy of Ozeg is usually 2500.

to say OzegScent:
	say "He smells strangely clean, but musk-heavy.";

to say OzegDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Ozeg] <- DEBUG[line break]";
	say "     Ozeg cuts an imposing figure at first, all masculine muscles and an impressive height, but the more you look at him, the more you pick up on a timid, anxious personality. All those years spent in the basement of the 'haunted' mansion taught the once proud demon humility a little TOO well. Bending before your slightest whim, he clings to your every word, staring at you with stars in his eyes. Even his glowing eyes are somewhat endearing, sitting in a square-jawed, masculine face covered in onyx black scales that gleam in the slightest light. He wears no clothes, preferring instead to shift whenever your gaze roams over his body, as though simultaneously enjoying your leering and welling up with embarassment. Excitement wells when you stare too long, and you notice his cock begin to twitch above big balls, as though begging to be touched.";

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

when play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Demonic Dragon"; [ Name of the overall species of the infection, used so a "male x" and "female x" have "pureblood X" children. ]
	add "Demonic Dragon" to infections of InsectList;
	add "Demonic Dragon" to infections of FurryList;
	add "Demonic Dragon" to infections of MaleList;
	add "Demonic Dragon" to infections of BipedalList;
	now Name entry is "Demonic Dragon";
	now enemy title entry is ""; [ Name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name. ]
	now enemy Name entry is ""; [ Specific name of unique enemy. ]
	now enemy type entry is 1; [ 0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters. ]
	now attack entry is "";
	now defeated entry is "";
	now victory entry is "";
	now desc entry is "";
	now face entry is "draconic in appearance, with a wide maw, sharp teeth, and glowing red eyes with what appear to be flames shimmering within them";
	now body entry is "hulking and muscular, though vaguely barrel shaped";
	now skin entry is "onyx black scales that shimmer iridescently, covering your";
	now tail entry is "You have a long and thick tapered reptilian tail ending in a point, covered in shimmering onyx scales";
	now cock entry is "humanoid, but jet black";
	now face change entry is "it grows wider and longer into a draconic muzzle with razor sharp teeth, glowing eyes and circular nostrils";
	now body change entry is "your muscles grow thicker and stronger, resulting in a bodybuilder-like body";
	now skin change entry is "it hardens into onyx black scales that shimmer in the light, showing an iridescent pattern";
	now ass change entry is "it fills out into two pleasantly plump, but muscular cheeks that jiggle when not clenched";
	now cock change entry is "your cock darkens to an onyx black humanoid dick with foreskin covering its tip";
	now str entry is 20;
	now dex entry is 12;
	now sta entry is 22;
	now per entry is 10;
	now int entry is 10;
	now cha entry is 10;
	now sex entry is "Male";
	now HP entry is 80;
	now lev entry is 10;
	now wdam entry is 15;
	now area entry is "Nowhere";
	now Cock Count entry is 1;
	now Cock Length entry is 12;
	now Ball Size entry is 4;
	now Nipple Count entry is 0;
	now Breast Size entry is 0;
	now Male Breast Size entry is 0;
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0; [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	now SeductionImmune entry is false;
	now libido entry is 50;
	now loot entry is "";
	now lootchance entry is 50;
	now MilkItem entry is "demonic dragon milk"; [ Item to be given to the player if they have this infection and milk themselves. ]
	now CumItem entry is ""; [ Item to be given to the player if they have this infection and jerk off. ]
	now TrophyFunction entry is "-"; [ Function to generate a list of optional loot items, of which the player can choose one after victory. ]
	now scale entry is 4;
	now body descriptor entry is "[one of]smooth[or]scaly[or]hulking[at random]";
	now type entry is "draconic";
	now magic entry is true;
	now resbypass entry is false;
	now non-infectious entry is true;
	now Cross-Infection entry is ""; [ Infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own strain. ]
	now DayCycle entry is 0;
	now altcombat entry is "default";
	now BannedStatus entry is false;

Instead of conversing Ozeg:
	say "[Ozeg_Talk_Menu]";

instead of fucking Ozeg:
	say "[Ozeg_Fuck_Menu]";

to say Ozeg_Fuck_Menu:
	say "     Ozeg isn't paying much attention to you, busily cleaning the room in the nude and inadvertantly showing off his assets. If you wanted to, you could take advantage of him.";
	say "     [bold type]What do you want to do to Ozeg?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Fuck Ozeg";
		now sortorder entry is 1;
		now description entry is "The dragon seemed to love being fucked by the ghostly appendages. Use that plump butt";
	[]
	if player is female:
		choose a blank row in table of fucking options;
		now title entry is "Ask Ozeg to lick you out";
		now sortorder entry is 2;
		now description entry is "Ozeg's tongue looks like fun and you doubt he'll say no. Ride his muzzle";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Rim Ozeg";
	now sortorder entry is 3;
	now description entry is "That fat dragon ass needs some love. Eat him out?";
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
				if (nam is "Fuck Ozeg"):
					say "[OzegAssFuck]";
				else if (nam is "Ask Ozeg to lick you out"):
					say "[OzegOralTonguing]";
				else if (nam is "Rim Ozeg"):
					say "[OzegRimming]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the demonic dragon, deciding on a different course of action.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say Ozeg_Talk_Menu:
	say "     [bold type]What do you want to discuss with Ozeg?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask Ozeg how he likes being free from his years long sexual torment";
	now sortorder entry is 1;
	now description entry is "The poor guy's been edged for years. How does it feel to not have the worst blueballs known to man";
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
				if (nam is "Ask Ozeg how he likes being free from his years long sexual torment"):
					say "[OzegFreedom]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the demonic dragon, deciding on a different course of action.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say OzegFreedom:
	say "     Tapping Ozeg on the shoulder and clearing your throat, you get his attention, politely ignoring his soft, swinging cock as he turns to face you. Explaining that you'd like to check in on him, you ask how he feels now that he's free of his years-long sexual torture. It must feel good not to have achy, overfull balls. Ozeg sits down in front of you, blinking at your question and then looking away with a demure expression more at home on a virgin girl. 'I am very grateful to my masters for freeing me, but I must admit, at times, I miss the embrace of infinite, unending pleasure.' With a far-away look in his eyes, Ozeg touches his chest and shivers. 'Though perhaps I should rely on my masters for that sensation. Are you in need of service?' Leaning in with a sweeping tail like an excited puppy's, Ozeg offers you a view of his soft pecs and drooping cock. Assuring Ozeg that you're not in the mood for the moment, you watch as he returns to cleaning, his cock half-stiffened and his ass blatantly angled to show off. At least you don't have to worry about his willingness. It seems he's happy for any attention you'll give him!";

to say OzegAssFuck:
	say "     Setting aside your gear, you [if Player is not barecrotch]drop your pants [else]stroke yourself to hardness [end if]and step up behind Ozeg. He's busily dusting and rearranging things, but when you touch his rump, his tail lifts high, and his hips sway, showing off the soft entrance beneath the thick appendage. Slowly, he lowers himself to the ground, looking over his shoulder with a needy expression and what you swear would be a blush if not for his scales. 'Please, master. Use me as you see fit.' The dragon murmurs, his hole twitching and clenching before your eyes. Slowly, you test that clamping entrance, slipping three fingers in with the barest pressure and exploring intensely heated depths. He's loose, incredibly so, but his innards melt around your fingers, pulsing and sucking like a talented maw that follows them as they withdraw, puckering before returning to normal.";
	if cock length of player > 12:
		say "     Ozeg's greedy asshole presents a unique opportunity. Your cock is so big that it causes problems with an average partner, but there's no such problem here. Even if you were twice the size you are, Ozeg might take it without complaint. Flopping your massive cock against that greedy hole, you smear the underside against it, delighting in the soft heat of dragon ass. You contemplate taking your time, but with a loose, slutty hole like his, it's better to get to work, so you line your cocktip up, groaning as insistent pressure works you past Ozeg's suckling entrance and into meltingly plush depths. Lewd sounds fill the air as you hump away, marking Ozeg's innards with pre, and his submissive groans crest into pleading, wordless begging as your balls swing heavily, slapping against his draconic taint. Twitching and thick, his tail provides the perfect handhold for you to work out your sexual frustration, clinging to it as you mercilessly use the demon's insides.";
		say "Your first orgasm is so deep inside that nothing drools out around your shaft, swallowed by Ozeg's desperately sucking innards. Rope after rope sloppily paints his inner walls, and you swear you see stars as your balls pulse against warm scales, churning with the effort. You're about to pull out, patting Ozeg's ass softly, when the submissive dragon surprises you, displaying a surprising degree of flexibility as he sits up on his knees, his hole still greedily hugging your cock. Wordlessly, he sits down hard, swallowing your hips between his ass cheeks and grunting as he begins to ride. If it weren't for the blissed-out expression on his face, you'd worry that he was trying to take charge, but instead, it looks like he's just too lost in pleasure to stop himself.";
		WaitLineBreak;
		say "     Eagerly, you match Ozeg's energy, pounding into his loose ass and slapping those jiggling, muscular cheeks. Thankfully, his bouncing desperation reaches its crescendo just as it starts to hurt your pelvis, and you feel him tighten. Orgasm turning him into an incoherent cockslut, Ozeg sits his entire weight on you, his unattended cock painting the wall before him and ruining his earlier attempts to clean the place up with a load that would make a horse jealous. You're not far behind, lifting your hips as best you can into the heavy embrace of the dragon's ass. Tugging his tail, you bite your lip as your second orgasm pounds through you, bloating your hilted cock and spraying deep into the dragon's inner sanctum, marking him as your whore. As Ozeg collapses forward into his puddle of cum, you pat his ass and thank him for letting you use his hole. Referring to you as 'master' doesn't sound bad if you can do this more often.";
	else:
		say "     Your cock isn't huge compared to the dragon's ample size, but you doubt Ozeg will mind. Taking your appendage in one hand, you line it up with that needy, loose hole and stuff yourself to the root. At first, you worry that the dragon's looseness will work against you and make it hard to finish, but that soon proves to be a non-issue. The intense heat of his insides and the buttery, slick sensation of his innards provides an interesting counterpoint to the tightness you'd expect from an ass, and the panting desperation of the big bottom beneath you is infectious, working you into a frenzy that slaps your balls off of his perineum in an increasingly savage rhythm. The dragon's moans reach a higher pitch as your orgasm nears, and he pushes back almost hard enough to buck you off, his ass clenching and trying in vain to grip your dick. The slut's practically begging for it! You're not one to disappoint, so you work yourself over the edge, finishing balls deep and creaming Ozeg's innards with the contents of your balls. You fall backward as the last drops disappear into suckling innards, and you admire the dragon's slightly agape hole as a gentle dribble of your seed rolls down toward his balls, stroking yourself and reaching up to pat the demon's rump. Leaving Ozeg to relieve himself, you gather your gear, watching him stroke himself on all fours and finger his ass with his spare paw. Honestly, being called 'master' may not be terrible if you can fuck that scaly ass whenever you like.";
	NPCSexAftermath Ozeg receives "AssFuck" from Player;

to say OzegOralTonguing:
	say "     Setting aside your gear and freeing your sex from the confines of your clothes, you finger yourself as you use your free hand to tap Ozeg on the shoulder. Nonchalantly, you bring up your thoughts on the dragon's tongue, wondering aloud if he knows how to use it. 'Yes, master. Master Sascha has taught me to use my tongue in new ways.' Ozeg says, licking his lips as he watches your fingers dipping into yourself. With a small amount of difficulty, he slips down to his knees, giving you a nice view of his shapely pecs as he lets his long tongue slip free of his muzzle, nuzzling your legs open with his blunted nose.";
	say "     The first touch of that thick tongue sends a shiver down your spine, then makes you gasp as it darts forward, lapping from between your ass cheeks to your wet feminine sex. Ozeg pays special attention to your clit as his jaws lock around your sex, and if you didn't know better, you'd worry about his sharp teeth, but the submission shining in his eyes dispels your worries. Before long, you're humping forward, using his horns for leverage to keep your sex squarely centered on the whirlwind of activity, slobbing your pleasure button. You're unsure how long you endure Ozeg's desperate tonguing, but every second is sweet torture that leaves you wanting more. You're so close to feeding him the sweetness of your orgasm, and you're pushed over the edge when his tongue parts your lips, unfolding and stretching your cunt, then pressing against the top, finding your sweet spot. Focused on this spot, when he hears your resulting moan, the dragon obliterates it with sloppy tonguing, setting you off and curling your toes with the crashing waves of a powerful orgasm.";
	WaitLineBreak;
	say "     Even Ozeg's aftercare is perfect. Gentle and soft, his foot-long tongue slowly cleans your sex, punctuated by soft kisses against your twitching entrance. Tirelessly, he extends the warm sensations radiating from your satisfied cunt until your grip loosens, letting him suck in grateful breaths and lick his lips free of your nectar. Leaving Ozeg to relieve himself, you gather your gear, watching him stroke himself on all fours and finger his ass with his spare paw, still licking his lips as though searching for more of your flavor. Honestly, being called 'master' may not be terrible if you can ride that thick tongue whenever you like.";
	NPCSexAftermath Player receives "OralPussy" from Ozeg;

to say OzegRimming:
	say "     Catching Ozeg's attention with a slap on his bare behind, you ask him whether he knows just how much he's teasing you. Bent over like that with his tail slowly swaying, you can't help but have the most sinful thoughts. Is that any way for him to treat his 'master?' 'Sorry, sir! I'll-' Yelping, Ozeg seems to understand your intention and leans against the nearest solid object, his tail lifting up and to the side to reveal his tightly clenching pucker. 'I'm sorry. How can I make it up to you?' He says with a shy sort of sultriness. You're not sure how such a brick wall of a man could appear so cute, but he manages it! Praising the dragon for realizing his error, you reward him, grabbing one muscular cheek and weighing its heft in one hand. Squeezing and massaging it as he trembles beneath your fingers, you click your tongue, fixating on the soft ring between them. Dropping to your knees, you nuzzle your cheek against one of those rounded mountains, taking a deep whiff of clean masculinity and telling him to hold still. Tossing aside your gear, you clarify what you're about to do, baring yourself to match the bashful dragon.";
	say "     You breathe deeply for a moment, blowing hot breath across that bashful star, teasing the dragon until you hear a gentle whimper start in his throat. Satisfied with the tease, you slip out your tongue, approaching the space between those cheeks and rolling it against that soft star, tasting clean skin and the barest hint of sweat. You can't resist the temptation for long, and you dig your fingers into the convenient handholds of flexing hips, digging your tongue against Ozeg's hole and testing its tightness. Ozeg groans at your oral antics, melting against your touch, and you hear the telltale crash of items bowled off of a nearby dresser by his body's attempt to go limp. Twitching and tight, his star resists your efforts at first, but it softens with time, admitting your tongue, and before long, your entire appendage drools inside him, tasting masculine musk.";
	say "     You moan into his ass as you make out with that increasingly permissive hole, coating your face with your own saliva and dragon sweat, but you find it increasingly hard to pull away, forgoing air to eat like your life depends on it. Ozeg's legs give out eventually, and you find yourself crashing to the floor, buried under a heated mountain of dragon ass. Too far gone to care, he grinds against your face, riding your tongue as though his life depends on it and smearing your face with his scent. Wetness drools down your chest, and you realize that he's close, refraining from touching himself for your benefit and focusing only on what you're willing to give him.";
	say "     If you want, you could reward the dragon for refusing to touch himself. After all, he seems desperate to cum.";
	say "     [link](Y)[as](y)[end link] Yes, stroke him to orgasm. He deserves it!";
	say "     [link](N)[as](n)[end link] No, make him cum hands free. You feel like teasing!";
	if Player consents:
		say "     Taking pity on the poor dragon, you adjust your position until you find his angrily throbbing cock with both hands, stroking it in time with tongue-darting thrusts against his prostate. Teasing the pulsing underbelly of that fat cock, you spread your legs as if demanding a coating of dragon cum, and give him a target, your genitals. Excitable and sensitive, the dragon doesn't last long under the dual stimulation of your hands and tongue, letting loose a cannon blast of sticky cum that clings to your chest and coats your [if player is male]throbbing cock [else if player is female]wet cunt [end if]with gooey satisfaction. The more intently you lick his pleasure button, the more he dribbles, so you milk him for all he's worth, only stopping when his voice grows hoarse, the cock in your hands pitifully dribbling its last drops. 'Master.' Ozeg moans your title with such a worshipful tone that it could almost be a prayer. Shaking, he regains some of his composure, removing his ass from your face and panting as he zeroes in on the mess he made. Sure to look up at you all the while, he laps his way down your chest, broad tongue tickling your sensitive spots until he reaches your arousal. Without delay, he [if player is male]nuzzles your dripping cock[else if player is female]messes his maw on your cummy cunt[end if] as he attempts to clean you, dutifully pleasuring you all the while.";
	else:
		say "     Grinning inwardly, you ignore that angrily throbbing cock, darting your tongue against Ozeg's prostate and putting all your energy into savaging that needy button. You spread your legs when his shaking reaches a crescendo, as if demanding a coating of dragon cum, and give him a target, your genitals. Excitable and sensitive, the dragon doesn't last long under the intense stimulation of your hands on his ass and your tongue vibrating against his prostate, letting loose a cannon blast of sticky cum that clings to your chest and coats your [if player is male]throbbing cock [else if player is female]wet cunt [end if]with gooey satisfaction. The more intently you lick his pleasure button, the more he dribbles, so you milk him for all he's worth, only stopping when his voice grows hoarse, the cock flopping against your bare chest pitifully dribbling its last drops. 'Master.' Ozeg moans your title with such a worshipful tone that it could almost be a prayer. Shivering, he regains some of his composure, removing his ass from your face and panting as he zeroes in on the mess he made. Sure to look up at you all the while, he laps his way down your chest, broad tongue tickling your sensitive spots until he reaches your arousal. Without delay, he [if player is male]nuzzles your dripping cock[else if player is female]messes his maw on your cummy cunt[end if] as he attempts to clean you, dutifully pleasuring you all the while.";
	say "     You relax under the dragon's worshipful tongue, gripping his horns as his muzzle bobs up and down between your legs, and let him bring you over the edge, mashing his lips against [if player is male]the base of your dick [else if player is female]your throbbing pussy lips [end if]when you finish. Satisfied, you leave him to shakily clean his mess with a cloth, spit-shined ass on display with a slightly gaped, clamping hole and a drooling, half-hard cock adding its last dribbles to the mess. He'll be there for a while- as he keeps re-messing the floor with his fluids- but you get a strange sense of satisfaction at the sheer subservience that shows. Gathering your gear, you slap his ass one more time before you go, admiring how his hips lift to show off your handiwork.";

Ozeg ends here.