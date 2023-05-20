Ziix by Voidsnaps begins here.

[Documentation for variables provided at Wasp Hive.i7x]

Section 1 - NPC declaration

[Ziix is the hive's last warrior.]
Table of GameCharacterIDs (continued)
object	name
Ziix	"Ziix"

Ziix is a man.
ScaleValue of Ziix is 3. [human sized]
Body Weight of Ziix is 9. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Ziix is 8. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Ziix is 1. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Ziix is 5. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Ziix is 2. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Ziix is 8. [length in inches]
Breast Size of Ziix is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Ziix is 2. [count of nipples]
Asshole Depth of Ziix is 9. [inches deep for anal fucking]
Asshole Tightness of Ziix is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Ziix is 1. [number of cocks]
Cock Girth of Ziix is 3. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Ziix is 12. [length in inches]
Ball Count of Ziix is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Ziix is 4. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Ziix is 0. [number of cunts]
Cunt Depth of Ziix is 0. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Ziix is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Ziix is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Ziix is false.
PlayerRomanced of Ziix is false.
PlayerFriended of Ziix is false.
PlayerControlled of Ziix is false.
PlayerFucked of Ziix is false.
OralVirgin of Ziix is false.
Virgin of Ziix is false.
AnalVirgin of Ziix is true.
PenileVirgin of Ziix is false.
SexuallyExperienced of Ziix is true.
TwistedCapacity of Ziix is true. [Twisted Characters can take any penetration, no matter the size]
Sterile of Ziix is true. [steriles can't knock people up]
MainInfection of Ziix is "Wasp Warrior".
Ziix is in Loyalty's End.
Description of Ziix is "[ZiixDesc]".
Conversation of Ziix is { "<This is nothing but a placeholder!>" }.
The scent of Ziix is "[ZiixScent]".

to say ZiixScent:
	say "He smells like honey and musk. There's no mistaking that he's a warrior, judging by the undertone of hard-working sweat.";

to say ZiixDesc:
	if BodyName of player is "Wasp King" and player is pure:
		say "A tall, nude wasp man with yellow and black chitin covering most of his body. His cock is usually flaccid and uncut, with a black shaft and a bright yellow head. He regards you with passing interest as you look him up and down, and you can swear he's flexing his muscles, thought he can't meet your eyes. [if PlayerFucked of Ziix is true]You swear you see his cock twitch. Is he thinking about your time together? [end if]The way he looks at you is reminiscent of an overprotective older brother, though he shows deference to your position as wasp royalty.";
	else:
		say "A tall, nude wasp man with yellow and black chitin covering most of his body. His cock is usually flaccid and uncut, with a black shaft and a bright yellow head. He regards you with passing interest as you look him up and down, and you can swear he's flexing his muscles, thought he can't meet your eyes. [if PlayerFucked of Ziix is true]You swear you see his cock twitch. Is he thinking about your time together? [end if]The way he looks at you is reminiscent of an overprotective older brother.";

Section 2 - Ziix Menus

instead of fucking Ziix:
	if Broken But Alive is not resolved and Resolution of Last Stand is 1:
		say "     He's still asleep despite your best efforts, but he seems none the worse for the wear. Maybe you should come back once he's finished his nap.";
	else if Broken But Alive is not resolved and Resolution of Last Stand is 2:
		say "     The wasp warrior looks like he doesn't have long. [italic type]Maybe you should search the hive for help![roman type][line break]";
	else:
		say "[ZiixSex_Menu]";

instead of conversing Ziix:
	if Resolution of Broken But Alive is not 1:
		say "     Ziix leans against the wall in front of the egg chamber, standing at attention when you greet him[if Resolution of Broken But Alive is 2]. He stares at you with sparkling eyes, no doubt remembering how you protected him from his small bout of madness[else if Resolution of Broken But Alive is 3]. He looks away when you look at him, no doubt still embarrassed about his whorish behavior around his drone brother[end if]. Still, he does nothing to hide his naked body from you, even leaning toward you as though interested in your wandering eye. Though he doesn't have a lot to say, it seems he's willing to interact in other ways.";
		say "[ZiixTalk_Menu]";
	else if Resolution of Last Stand is 2 and Broken But Alive is not resolved:
		say "     While the nanites are trying their best, the wasp's wounds seem determined to stay open, oozing yellowish blood to the hive floor. He seems listless, slumping against the wall with a glazed, far-away expression and no strength left in his powerful-looking body. He doesn't respond to your presence and seems determined to die there. Perhaps an act of kindness would bring him to his senses? You've heard that wasps and bees like sugary drinks. It's also possible that he'd recover his will to live if you found another survivor.";
		say "[ZiixSodaChoice]";
	else if Resolution of Last Stand is 1 and Broken But Alive is not resolved:
		say "     The wasp warrior looks like he doesn't have long. [italic type]Maybe you should search the hive for help![roman type][line break]";

To say ZiixSex_Menu:
	say "     [bold type]What do you want to ask Ziix to do?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if Broken But Alive is resolved:
		choose a blank row in table of fucking options;
		now title entry is "Ask to blow him";
		now sortorder entry is 1;
		now description entry is "The warrior looks like he needs to relax. Why don't you show him how";
	[]
	if Broken But Alive is resolved and hunger of Ziix < 99:
		choose a blank row in table of fucking options;
		now title entry is "Offer to become the hive's ruler";
		now sortorder entry is 2;
		now description entry is "Offer to become the Hive's ruler. Wouldn't it be nice to give them a way to multiply";
	[]
	if hunger of Ziix is 99 and BodyName of Player is not "Wasp King":
		choose a blank row in table of fucking options;
		now title entry is "Ask to become king again";
		now sortorder entry is 2;
		now description entry is "You lost the title of the hive's king, but you'd like to return to your throne. Is he willing to let you come back";
	[]
	if BodyName of Player is "Wasp King" and player is male:
		choose a blank row in table of fucking options;
		now title entry is "Ask to fuck your loyal guard";
		now sortorder entry is 3;
		now description entry is "Ziix's muscular ass looks so tempting. Surely he wouldn't say no to his ruler?";
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
				if (nam is "Blow him"):
					say "[ZiixBlowjob]";
				else if (nam is "Offer to become the hive's ruler"):
					say "[ZiixZantRoyalty]";
				else if (nam is "Ask to fuck your loyal guard"):
					say "[ZiixAssFuck]";
				else if (nam is "Ask to become king again"):
					say "[KingRedo]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the warrior, deciding on a different course of action.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say ZiixTalk_Menu:
	say "     [bold type]What do you want to ask Ziix about?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if Broken But Alive is resolved:
		choose a blank row in table of fucking options;
		now title entry is "Ask him how he feels";
		now sortorder entry is 1;
		now description entry is "Ziix took quite a blow defending the hive. He looks fine now, but is he";
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
				if (nam is "Ask him how he feels"):
					say "[ZiixChat]";
				else if (nam is "Ask him how he feels"):
					say "[ZiixZantRoyalty]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the warrior, deciding on a different course of action.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say ZiixSleepFuck:
	if player is female:
		say "     Hurriedly setting aside your gear, you bare yourself in front of the sleeping wasp-man, licking your lips as your arousal matches his, dribbling pussy juice onto his unconscious body. There's something so delightfully erotic about doing this with someone who's too out of it to protest, and you want to be sure you can finish before he wakes up, so you waste no time climbing onto his lap and lining yourself up. The drooling honey oozing from his manhood spreads over your needy cunt without trouble, and gentle pressure pops his cock past your needy lips, sending his sizable member deep enough to kiss your womb as you lower yourself, letting gravity do the work.";
		say "     The sleeping wasp man barely reacts as you slide up and down his shaft, testing the stretch his sticky cock provides, but you can feel his shaft bounce every time you hilt him, spurting more of that honey-like pre against your cervix. You grow bolder by the second, slamming hard enough to slap your stinging pussy lips against those ebony balls, and lean in, inspecting the hunk's insectoid face as you take advantage of him. He's surprisingly handsome. Even if it weren't for his muscular body and nicely sized member, you'd find the masculine shape of his face attractive. Even the chitin overhanging his mouth like a pair of pseudo-mandibles provides an adorable silhouette, giving him the appearance of cute, blunted fangs. You can't resist that resting face, leaning in for a kiss that the man doesn't return before redoubling your efforts to get off.";
		WaitLineBreak;
		say "     Resting your hands on the wasp man's chest plate, you slap your ass against his balls in a heavy rhythm, moaning your enjoyment and dribbling down his balls with every hilt. He's so big that your insides ache, but you love every second of it, feeling your orgasm cresting closer with every wet sound you wring from your spread lower lips. Surprisingly, the warrior cums first, his face contorting and his hips bucking upward as your stomach swells slightly with his load of honey. His bucking cock and prodigious output sets you off within moments, setting your pussy spasming and coating the wasp man's junk in your fem-cum while your inner walls clamp rhythmically, milking him for every drop. For the first time since you sat on his cock, the warrior speaks, mumbling something that you can barely make out. Did he call you his King? Somehow the thought of ruling over a hive full of sexy wasp men appeals to you, though your honey-basted pussy makes you wonder if Queen is a better term. Maybe you should ask him about a change of leadership when he wakes up?";
		NPCSexAftermath Player receives "PussyFuck" from Ziix;
	else if player is male:
		say "     Hurriedly setting aside your gear, you bare yourself in front of the sleeping wasp-man, licking your lips as your arousal matches his, dribbling pre onto his unconscious body. There's something so delightfully erotic about doing this with someone who's too out of it to protest, and you want to be sure you can finish before he wakes up, so you waste no time climbing onto his lap and lining yourself up. The drooling honey oozing from his manhood spreads over your needy asshole without trouble, and gentle pressure pops his cock past your tight entrance, sending his sizable member deep into you as you lower yourself, letting gravity do the work.";
		say "     The sleeping wasp man barely reacts as you slide up and down his shaft, testing the stretch his sticky cock provides, but you can feel his shaft bounce every time you hilt him, spurting more of that honey-like pre deep into your inner walls. You grow bolder by the second, slamming your ass hard enough to slap against those ebony balls, and lean in, inspecting the hunk's insectoid face as you take advantage of him. He's surprisingly handsome. Even if it weren't for his muscular body and nicely sized member, you'd find the masculine shape of his face attractive. Even the chitin overhanging his mouth like a pair of pseudo-mandibles provides an adorable silhouette, giving him the appearance of cute, blunted fangs. You can't resist that resting face, leaning in for a kiss that the man doesn't return before redoubling your efforts to get off.";
		WaitLineBreak;
		say "     Resting your hands on the wasp man's chest plate, you slap your ass against his balls in a heavy rhythm, moaning your enjoyment and leaking across his abs. He's so big that your prostate feels crushed, but you love every second of it, feeling your orgasm cresting closer with every wet sound you wring from your spread hole. Surprisingly, the warrior cums first, his face contorting and his hips bucking upward as your stomach swells slightly with his load of honey. His bucking cock and prodigious output sets you off within moments, sending your load spraying across his body while your inner walls spasm, milking him for every drop. For the first time since you sat on his cock, the warrior speaks, mumbling something that you can barely make out. Did he call you his King? Somehow the thought of ruling over a hive full of sexy wasp men appeals to you. Maybe you should ask him when he wakes up?";
		NPCSexAftermath Player receives "AssFuck" from Ziix;

to say ZiixExile:
	say "     Are you sure you want to kick the warrior out of the hive?";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes. Fuck him. He attacked you!";
	say "     ([link]N[as]n[end link]) - No. You can't do that to him. It's obvious that he cares. Maybe there's another way?";
	if player consents:
		LineBreak;
		say "     Standing over the partially recovered wasp man, you kick at him until his eyes flutter open, then gesture toward the hive's entrance. You beat him, so you'd prefer that he leave so that you can return to your business. You can't trust someone like him, regardless of what you decide to do here. Still groggy, the wasp man follows your orders without complaint, though you can see the hurt written across his face. You bully him toward the hole in the hive and stand there with your arms crossed until he flies away, his expression changing mid-flight as he seemingly realizes what you've just done. Judging by the hatred on his face, you just made yourself an enemy...";
		repeat with y running from 1 to number of filled rows in Table of Random Critters:
			choose row y in Table of Random Critters;
			if Name entry is "Wasp Warrior":
				now MonsterID is y;
				now area entry is "Outside";
				break;
		now HP of Ziix is 100;
		move Ziix to Nowhere;
	else:
		LineBreak;
		say "     Shaking your head at the thought of kicking the warrior out, you leave him to rest. You'll figure out what to do with him later.";

to say ZiixAssFuck:
	if AnalVirgin of Ziix is true:
		Linebreak;
		say "     As you stare at Ziix's nude body, a thought occurs. You've only seen the barest glance of his muscular ass. If you're going to be king of the hive, you should have unfettered access to your subjects. Closing the distance between yourself and your stalwart protector, you trail your fingertips over his smooth chitin, stopping at the softer section above his awakening cock. You tell him you'd like to have fun and ask him to place his hands on the wall. Ziix's expression changes as he realizes what you want. Antennae twitching, he clutches the wall behind him as if protecting his rear from your gaze by pressing it closer to the organic substance. Clearing his throat, he speaks in a shaky voice. 'W-Why would you want to use me in that way? I can't bear eggs, and surely, Zant has a body more suited-' Seemingly realizing who he's talking to, Ziix swallows, sagging against the wall. 'I shouldn't question you. I'm truly sorry.'";
		WaitLineBreak;
		say "     Following orders with the air of a man headed to the gallows, the warrior places his hands on the wall, spreading his legs and giving you the full view of muscular, well-developed glutes and a tight, untouched hole between them. The pretty onyx-black shade of his rump shines in the ambient light around it, and you can't help but admire how manly he looks, even in this position. Before Ziix loses his nerve, you place your hands on his beautiful rump, massaging the firm cheeks until the muscles beneath smooth skin twitch and dance. His hole twitches as you lean in, clenched so tight that you're sure he could turn coal into diamonds, and you realize that he must be an anal virgin. Maybe it would be a good idea to ease Ziix into it.";
		say "     [bold type]Do you want to use your tongue to loosen him up before you use your cock?[roman type][line break]";
		LineBreak;
		let ZiixRim_Choices be a list of text;
		add "Loosen the poor guy up." to ZiixRim_Choices;
		add "Nah, the best part is how tight he'll be!" to ZiixRim_Choices;
		let ZiixRim_Choice be what the player chooses from ZiixRim_Choices;
		if ZiixRim_Choice is:
			-- "Loosen the poor guy up.": [Rim Ziix. Less Tight.]
				LineBreak;
				say "     Deciding to take mercy on the trembling warrior wasp, you adjust the angle of his hips and slip down to your knees, pressing gentle kisses along his cheeks and zeroing in on the mildly musky entrance between them. Leaning in, you press your lips against it, delighting in his gasp as you introduce yourself to his virgin hole and flick your tongue against the dark star for a small taste. As you'd hoped, he's as sweet as the scent permeating the hive, and the longer you trail your tongue over his entrance, the more you enjoy the taste of sweat mixed with honey. The way that Ziix melts into your touch tells you that he's enjoying your efforts, and before long, you hear the soft patter of honey dripping from his hard cock. Tension disappears by the second until he's using your face as a seat, his wings buzzing with uncertainty at the new sensation. His breath catches in his throat each time your tongue prods into his weakening defenses, and by the time you break through them, he's squirming from side to side, desperate for more. ";
				say "     Ziix's hole clenches softly, yawning open when it relaxes, and you nod at your handiwork. That seems like enough. Now, on to the main event! Setting aside your gear, you pounce on the delectable sight, lining your cock up and kissing your tip against his hole. You're gentle as you enter, stroking your hands over his cheeks and resting your face against his back, between his fluttering wings. He's so tight, but your efforts seem to have loosened him up enough that you can thrust without much issue, and you settle into a steady rhythm, working needy noises from the blissed-out warrior with every slapping thrust that sends his hard cock flopping, splattering the wall with his juices. The world falls away in favor of sweaty, desperate sex, and you feel your orgasm approaching soon enough, never quite cresting over you. Frustrated, you quicken your pace, savagely pounding into the former virgin and sending his voice into a high-pitched whine.";
			-- "Nah, the best part is how tight he'll be!": [Tight and rough.]
				LineBreak;
				say "     Shaking your head, you ignore the temptation of Ziix's clenching hole. You want to savor every bit of his anal virginity. You're sure he'll be extra tight if you don't loosen him up. Besides, he's a warrior. If he can't handle a little bit of discomfort, he shouldn't be in charge of protecting you! Lining yourself up with his innocent ass, you rub your tip against his hole, nuzzling between his wings and gripping his hips as he shivers with anticipation. Cooing for him to brace himself, you apply gentle pressure, grunting as his hole slowly opens up, accepting you into clenching, incredibly tight depths that feel like they'll rip your cock off if you're not careful. Thankfully, he relaxes enough that you can start the arduous task of burying yourself to the hilt, but it's slow going, accompanied by rhythmic clamps that set your head spinning and force you to grit your teeth at the rush of pleasure they bring. When your balls slap against his churning orbs, you're unsure if you can even cum with this vice grip around your base. It'll take some work if you want to mark him as yours!";
		say "     You're not sure how long you pound the poor thing, but what finally brings you over the edge isn't your loud, desperate rhythm. As you're mid-thrust, slapping your heavy balls against Ziix's, you hear his voice, quiet and hoarse, ring out. 'Please. My king. Inside.' He begs, long pauses punching home the meaning of each word and breathy moans punctuating each syllable that manages to squeak out. Fuck. Who could resist that honesty? Slamming home, you fill your loyal warrior to the brim, pressing your forehead against his back and riding out his squirming, clamping desperation. Soft, wet sounds let you know that he's cumming hands-free, and you can feel his inner muscles begging for every drop in tandem with every spurt, welcoming your seed so deep that you wonder if a drop will even leak out. 'Fuck. Is that how it always feels to be bred?' After a few moments of breathless silence, Ziix speaks, wonder coloring his voice. It seems you may have found a new favorite pastime for the warrior! If you want to empty your balls, you suppose you know who to come to.";
		say "     You rest in comfortable silence until your cock softens enough to pop free of Ziix's gaped hole, then you give his rump a soft slap, telling him you'll be back for more later. Leaving him to recover, you gather your gear and shoulder your pack, feeling refreshed and ready to continue your adventures.";
	else:
		Linebreak;
		say "     Stripping off your gear, you ask Ziix if he's ready to take your cock again. You've been looking forward to breeding him again. Squeezing your cock, you show off how hard you are, rolling your foreskin and gathering a pearl of pre at your tip. [If Thirst of Ziix is 1]Surprisingly, [end if]Ziix reacts like a seasoned slut, licking his lips and slipping his hand between his cheeks. Shamelessly fingering himself, he gets down to his knees and arches his back, giving you a show. His entrance is puffy, and it's clear he's been doing this often, his fingers glistening with what looks like his drooling honey, transferred from his cock to his hole. 'Yes, sir. Please breed me again.' He says without a hint of hesitation as he stuffs a second finger into his glistening entrance, a trickle of drool dripping from the corner of his mouth as he begs for attention. Raising an eyebrow at the whorish display, you decide not to question the wasp's attitude change. Instead, you kneel, taking the offered handholds and lining your cock up with Ziix's hastily vacated entrance. Without wasting any time, you shove in, marveling at how soft and welcoming he's become, and set to work breeding him, slapping your balls against his with every punishing thrust. Unlike when you deflowered his ass, Ziix seems determined to show how much he loves everything you're doing to him. He presses into every thrust, his inner walls welcoming you with desperate milking clenches and his hips undulating, working his puffy hole along your shaft like desperate lips. If you stopped, you think he'd ride you.";
		say "     Murmuring your appreciation, you do your best to reward your warrior-turned-buttslut, brutalizing his poor prostate. The rougher you go, the more he seems to enjoy himself, his voice cracking as desperate begging passes his lips and his cock creating a puddle of honey below you as it wordlessly eggs you on. Finally, you shove yourself to the hilt, emptying your balls into Ziix's accommodating depths. When your cock starts firing, he stiffens, moaning his approval and painting the wall before him. Still, his hips never stop moving, his body instinctually fucking itself on your erupting member. Meeting his eagerness with pounding thrusts, you keep going until your cock softens, slapping his ass and praising him for his service. 'T-Thank you.' Ziix says as he turns around, collapsing onto his butt and maneuvering his body, shamelessly fingering his honey-glazed hole as his softened cock bucks weakly, dribbling down his balls. He's still fingerfucking himself as you gather your gear, staring hopefully at your crotch. He stops once he realizes you have no intention of giving him a second round, standing on shaky legs and returning to his post by the egg chamber door, still dripping mixed fluids and panting with exertion.";
	NPCSexAftermath Ziix receives "AssFuck" from Player;
	increase Thirst of Ziix by 1;

to say ZiixBlowjob:
	say "     Sauntering over to Ziix as he stands by the entrance to the egg chamber, you look him over, leaning into him and trailing your hands down his chitinous front, stopping just above his soft cock. Remarking that it looks like he's a bit pent up, you massage his hefty balls, smirking as his cock awakens and drools a glistening string of honey onto your wrist and fingers. You lift the sticky treat to your lips, lapping it off your digits and giving him a show as you savor the addictive sweetness and enjoy the spreading heat it sends through you. 'I-I-' Ziix tries to refute your words, but he trails off as he watches your tongue, looking away and nodding in defeat. 'Yes. I suppose I have been a bit lonely. Standing guard was much less dull with a pretty worker to keep me company.' Spreading his legs, he looks away, clearly offering his shaft to your wandering hands.";
	say "     You remark that if he wants something, he should ask for it. After all, as you slip down to your knees, tossing your gear to the side so that nothing can hide your body from his gaze, it's clear that his body wants your touch even more than he admits. Nuzzling against his peeking cockhead, you swirl your tongue over the drooling golden pre, then nibble his foreskin, tugging it with your front teeth and suppressing a laugh at the cock's eager jump. 'I- Please.' At a loss for words, the wasp warrior is putty in your hands, bucking his hips to smear his cockhead over your lips and paint them in faintly gold fluids. 'Please suck my cock,' he says quietly, unable to meet your eyes. Rewarding Ziix's honesty with a deep kiss to his slick tip, you let him further into your mouth, listening to the quiet, grateful sounds from above as you meander toward his base. There's no rush, and he tastes so good that you don't want to send him to his finish too soon, so your efforts are slow and deliberate, exploring his cock to find every sensitive spot. Ziix's composure slips when you find the right spot, and he lets out a deep moan, his legs shaking and his hips pushing forward to test your throat. It seems your teasing is over, but you're more than happy to let him take the lead, using your tongue on his pistoning cock and feasting on the river of honey that taints every breath you take.";
	WaitLineBreak;
	say "     In due course, he makes a mess of your face, his balls slapping against your chin and churning with his impending orgasm, and his clawed fingers clamped around your head, holding you in place for every pounding thrust. His orgasm is titanic, filling your mouth to the brim and forcing you to swallow to stop yourself from drowning, but his steel-hard grip and the glazed, over-stimulated expression makes it clear that there's no other option. Dutifully, you chug his cum, massaging his balls with both hands and swirling your tongue over the underside of his throbbing dick until the flow slows to gentle drooling and his grip loosens, letting you pull back to breathe and survey the half-hard satisfied member in front of you. It's just so damn pretty. You can't resist kissing it and swiping your tongue over the piss slit, earning a grunt from the hunched, panting warrior. You spend quality time licking every inch of Ziix's manhood clean, paying particular attention to his balls. You only stop once he's soft, lurching to your feet and rubbing your stomach where his deposit has given you a rounded bulge. You thank him for the treat, kissing his cheek and disengaging to grab your gear as he tries to regain his composure.";
	NPCSexAftermath Player receives "OralCock" from Ziix;

to say ZiixChat:
	say "     Looking Ziix up and down, you circle him for a moment, then remark that he's looking better than when you first met him. You're glad that he's not on the brink of death anymore. Ziix blinks and rubs the back of his neck with one hand, murmuring something unintelligible, then clearing his throat, speaking more clearly. 'Uh, yeah. Sorry about that. I wasn't in my right mind. Thank you for giving me a second chance at introductions.' ";
	if Thirst of Ziix > 1:
		say "With a gleam in his eyes, the wasp man continues, his cock jumping as if to punctuate his words with an eager bounce. 'Speaking of introductions- Thank you for showing me how good trying something new feels. I can't keep my fingers out of my ass anymore. Just thinking about how you feel inside me...' Ziix trails off and shuffles slightly, his hand disappearing behind him as he blatantly fingers his backdoor. 'Please don't keep me waiting long. I want more.' He finishes, staring hungrily at your crotch. It seems you've awakened something in him.";

Section 3 - Exile

[Only if you kick him out of the hive. Possible addition to slut storage later?]

to say Ziix Loses:
	if inasituation is true:
		say ""; [dealt with at the event source]
	else:
		say "<This content is not currently implemented>"; [to do: add Ziix anal rape leading to slut storage]

to say Ziix Wins:
	if inasituation is true:
		say ""; [dealt with at the event source]
	else:
		say "<This content is not currently implemented>"; [unsure what to add here]

to say Ziix Desc:
	if inasituation is true:
		say ""; [dealt with at the event source]
	else:
		say "<This content is not currently implemented>";

Section 4 - Ziix Slut Storage

[To do: Literally everything.]

Ziix ends here.