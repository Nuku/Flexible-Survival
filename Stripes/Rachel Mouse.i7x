Version 1 of Rachel Mouse by Stripes begins here.

"Adds a Mental Mouse 'companion' named Rachel."

Section 1 - Encounter

Quiet Apartment Building is a situation.
The sarea of Quiet Apartment Building is "Red";
when play begins:
	add Quiet Apartment Building to badspots of hermaphrodite;
	add Quiet Apartment Building to badspots of furry;

Instead of resolving a Quiet Apartment Building:
	say "     Wandering off from the main strip, you come across a small, three story apartment building that seems quiet and relatively untouched.  You find yourself looking it over, wondering if you should go in and take a look around";
	if bodyname of player is "Mental Mouse" and humanity of player <= 75:
		say ".  There's just something about the place that seems to be calling to you and before you can even consider otherwise, you head in to search it.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		say "[mouseapts]";
	otherwise:
		say ".  The place seems safe and inviting.  You don't see any cum stains or piles of discarded clothes around and there's no noise of creatures rustling about inside.  The place isn't that big, it shouldn't take you that long to check it out.  Perhaps you'll find something of use or even some survivors.  Shall you follow your hunch and go in to search the place?";
		if the player consents:
			say "[mouseapts]";
		otherwise:
			say "     Deciding against it and suddenly wary of this impulse to enter the building, you back away quickly.  You catch sight of some small mice looking from the windows as you back away.  Again, you feel that call to go inside and quickly turn and run, wanting to get some distance between you and the strange mice who tried to lure you in.";
	Now Quiet Apartment Building is resolved;


to say mouseapts:
	[puts Mental Mouse as lead monster in case of impregnation]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Mental Mouse":
			now monster is y;
			break;
	say "     You step into the small apartment building and look around, still feeling oddly at ease.  The main doors are unlocked and you enter the lobby.  There is an apartment door slightly ajar at the back of the hall beside the steps up to the next floor and you head towards it.  As you reach out and push it open, you are tackled from behind by someone.  No, it's multiple someones.  There is a mob of grey mice which slipped quietly from the other rooms to tackle out.  More come out from the apartment ahead of you and you are pulled in.  You struggle, but there are too many of them on top of you already, weighing you down and overpowering you.  While they may only be three feet tall, they are already about a dozen grabbing you and you can sense many more in the hall behind you.";
	say "     'We called and you have come.  You will join us in mousedom.  Join us in being of one mind.  Accept us and be part of the mouse collective,' they say, speaking in unison.  With so many of them around you, your mind throbs under the assault of thoughts that are not your own, hearing those words spoken both in your ears and in your brain.  These mice, somehow all of one united mind, are trying to overpower your will.  They drew you in here and now these beautiful, busty mice have you.  These sexy herms pull you over to the couch, kissing and fondling you as they do.  You find yourself growing increasingly aroused by their short, mouse-like bodies and faces.  They have such lovely, feminine bodies, large breasts and sizeable cocks as well.  Why were you be resisting them, you find yourself wondering.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	say "     Sensing your increasing willingness, they release you and help you up onto the couch where you are snuggled by a bunch of them.  Others set up in groups around the room, playing with one another.  The mice run their paws over your [skinname of player] flesh while kissing and fondling you.  One of them, somehow particularly beautiful despite looking pretty much the same as the rest, snuggles herself against you and starts kissing you passionately.  She is meant to be with you, to be your mate.  Your mind is so full of happiness, having found so many beautiful lovers and a perfect mate.";
	if cocks of player > 0:
		increase rachelfuck by 1;
		say "     After breaking the kiss, the lovely mouse, whom you somehow know is called Rachel, slides down over your body, moving her hips to your groin.  Your throbbing cock, already hard thanks to the helpful ministrations of another mouse, is held into position by that mouse so Rachel can lower herself down onto it[if cock length of player > 18].  The sexy mouse moans and squeaks as she tries to take your throbbing cock in, slowly stretching her wet cunny open to accept your huge cock.  Her belly bulges considerably, stretching her small tummy to accept it, but accept it she does.  Her paws rub over her filled belly and she starts riding you as best she can[otherwise if cock length of player > 12].  The sexy mouse moans and squeaks as she tries to take your throbbing cock in, slowly lowering her wet cunny down over your large cock.  Her belly bulges somewhat, stretching her small tummy as it fills her.  Her paws rub over her filled belly and she starts riding you eagerly[otherwise].  The sexy mouse moans and squeaks as she slides herself onto your throbbing cock.  Loving the feel of having you inside her, she starts riding you eagerly[end if].";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		say "     The other mice around you run their paws over your bodies, seeking to share in welcoming you into their group.  With so many of the psychic mice around you, you can feel their pleasure as they have sex all around you.  You are surrounded in it, faintly sharing in all of it: sucked cocks, licked nipples, fingered pussies, fucked cunts, throbbing cocks and so much more.  And most of all, the joy of fucking your beautiful mate, Rachel.  Her small, cute form.  Her lovely breasts, which you can't help but fondle.  Her hot cunt, which you eagerly thrust into again and again.";
		say "     Soon enough, it all overwhelms you and you cum hard into her, spurting your rich, hot semen into her.  Feeling your orgasm, she cums as well, soaking your crotch in her feminine juices.  Her hard cock twitches against your tummy and you can sense her holding back, wanting to share that with you as well.  As soon as your orgasm passes, you help her slide off your spent shaft, eager to help your musine mate";
		if cunts of player > 0:
			say ".";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			say "     Shifting onto your side, you rest one leg against the back of the couch and drape the other down, offering up your dripping pussy to her.  She smiles as another mouse, sensing your intent, spreads your wet folds for you and third guides Rachel's cock into you.  You both squeak in delight as she pumps into you hard and fast, already very close.  You pull the other two into your welcoming arms, bringing their cocks to your mouth so you can alternate between sucking each of them off while that mousecock fucks you to another orgasm that all four of you share.  You suck down their delicious semen while enjoying the feel of your mate's hot seed flowing into your womb.";
			say "[impregchance]";
		otherwise:
			say ".  Eyeing her eight inch, throbbing manmeat, you can sense her mind, the collective mind, seeking how you'd prefer to enjoy it.  Shall you suck her off (Y) or stretch out and let her fill your ass (N)?";
			if the player consents:
				say "     Sensing your desires, the mouse slides herself back up your body, bringing her throbbing cock to your mouth.  You wrap your lips around it and start sucking.  She rocks her hips, thrusting into your mouth, already very close.  You can feel another mouse at your cock, licking and sucking it clean while a third moves in behind Rachel to lap at the cum leaking from her cunt.  Sharing in all this soon gets to be too much and you cum again as Rachel blasts her seed down your throat while you feed another load to that helpful mouse sucking you off.";
			otherwise:
				say "      Sensing your desires, the mouse slides back and helps you roll onto your front.  Another helpful mouse spreads your ass cheeks for her, Giving her a good view of your tight pucker as another guides her cock into position for a nice, smooth entry into you.  You groan softly, but are filled with pleasure at having her cock slowly stuffing your backside.  She runs her paws over your back as starts pounding away at you hard and fast, already very close.  You pull the other two into your welcoming arms, bringing their cocks to your mouth so you can alternate between sucking each of them off while that mousecock fucks you to another orgasm that all four of you share.  You suck down their delicious semen while enjoying the feel of your mate's hot seed flowing into your bowels.";  
	otherwise:
		say "     After breaking the kiss, the lovely mouse, whom you somehow know is called Rachel, slides down over your body, moving her hips to your groin.  The soft folds of your pussy, already dripping wet thanks to the helpful ministrations of another mouse, is held open by that mouse while Rachel lines up her cock before thrusting it slowly into you.  You moan in pleasure as the lovely mouse makes love to you.  Her pink cock thrusts into you again and again, throbbing inside your squeezing cunt.  The sexy mouse fucking you squeaks in pleasure as she pumps into you at a steadily increasing pace.";
		say "     The other mice around you run their paws over your bodies, seeking to share in welcoming you into their group.  With so many of the psychic mice around you, you can feel their pleasure as they have sex all around you.  You are surrounded in it, faintly sharing in all of it: sucked cocks, licked nipples, fingered pussies, fucked cunts, throbbing cocks and so much more.  And most of all, the joy of being fucked by your beautiful mate, Rachel.  Her small, cute form.  Her lovely breasts, which you can't help but fondle.  Her throbbing penis, which you eagerly milk at with your vaginal walls.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		say "     Soon enough, it all overwhelms you and you cum hard around her cock as it pulses inside you, sending her hot semen flowing up into your womb.  Feeling your orgasm, she cums in synch, increasing the ecstacy you both feel.  Her pussy quivers and a little of her juices dribble down onto your thighs, but you can sense her holding back, wanting to share that with you as well.  As soon as her orgasm passes, you help her slide out, eager to help your musine mate.";
		say "     With your arms as her hips, you help the small mouse move across you to bring her dripping cunt to your face.  You dive right in, sliding your tongue over her soft folds, licking and teasing her clit to get more squeaks of delight from her.  As you're doing so, you feel another mouse move in are return the favour to you, lapping up the excess cum dribbling from your stuffed cunny.  Soon enough, that licking muzzle moves away, replaced by a new cock to fuck you and fill you.  Overjoyed at this, you lick at Rachel's dripping cunt all the more eagerly until the two mice cum with you.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	say "     The lovemaking continues like this for a quite a while, with you both changing positions often while some of the other mice help out or join in.  You can feel you losing yourself in the maelstrom of united mouse minds.  But it is so overwhelming that you only find pleasure in this and continue fucking the beautiful creatures, longing more and more to be with fully one of them.  Eventually, the mice all get quite tired out and you start to drift off as well, snuggled up with your arms around your mate and many other lovely mice resting all around you.";
	say "     Left in a haze after the orgy, you can feel the tingles of change coming from all the mousecum you've inundated with, turning you into a mouse like them.  As your bond with them grows, you can faintly sense their slumbering minds around you.";
	now mousecurse is 1;
	decrease humanity of player by 20 + a random number between 1 and 10;
	if "Pure" is listed in feats of player, increase humanity of player by a random number between 5 and 10;
	if "Corrupt" is listed in feats of player, decrease humanity of player by a random number between 1 and 5;
	if bodyname of player is not "Mental Mouse", now mousecounter is 0;
	say "[fullmousification]";
	if hellHoundLevel is 0:
		follow the sex change rule;
		follow the sex change rule;
	say "[line break]";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	if libido of player < 60, now libido of player is 60;
	now libido of player is ( libido of player + 1 ) / 3;
	if humanity of player < 10:
		say "     For a moment you consider trying to leave while the mice are asleep, but your mate shifts a little and squeaks softly, squeezing you tighter.  Unwilling to leave her, or them, you rest your head against hers, drifting further from yourself into the mouse collective.";
		end the game saying "You give yourself up to the mouse collective, joining their united hive-mind in joyous mousedom.";
		wait for any key;
		follow the turnpass rule;
		stop the action;
	otherwise:
		say "     It slowly dawns on you that the mice, exhausted from the wild orgy, have passed out and can't stop you from leaving.  You slowly disentangle yourself from them.  It takes considerable effort of will to let go of the mouse girl you were bonded with so recently.  You creep slowly from the room, moving as quietly as a mouse.  Also worried about them hearing your excited thoughts of escape, you do your best to blank your mind.  There is a heart-pounding moment as you try to pick up your pack and gear without making a noise or disturbing the mice beside it.  Once in the hall, you ease the apartment door mostly closed, blocking yourself from view.  But you don't relax at all, still taking it nice and slow as you try to make your escape.  Eventually, after what feels like an hour, though it's probably only a minute or two, you make it to front door and exit the building.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		say "     Only to be met with Rachel, nude save for the grin on her face, waiting for you.  You glance around quickly, but don't see any of the others coming.  'Don't worry,' she says softly.  'I can sense that you're not quite ready to accept being one of us.'  She steps up beside you and runs a paw over your chest.  'Not yet, that is.'";
		say "     'We found you.  Sensed you among those in the city.  You have a mind flexible enough to become one with us.  Even if you don't know that now, I know you'll come to accept us, and accept me, in time.'  She runs her paws over you again, sharing a sense of her devotion with you.  'The mouse collective will keep looking for you now.  Even if you change now, they'll be able to find you.  Unless I'm with you, that is,' she adds, running a finger along the edge of your sensitive mouse ears, sending a thrill of pleasure through you, both body and mind.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		say "     Before you can ask her why, she senses the question (or perhaps just guesses it), and gives you a peck on the cheek.  'Oh, I'm quite sure I'll be able to convince you on my own.  I'll just have to show you how wonderful being a mousey can be.  I'd much rather convince you.  It'll be more fun this way,' she adds with a soft, squeaking giggle.  Lacking any other options, it seems best if you let the mouse girl come with you.  Certainly, if you try to leave without her, she'll raise the alarm.  It is only by her good graces that you're able to leave at all.  Besides, she probably wouldn't have let you exit at all if she'd senses you wouldn't take her along.";
		if the player is not lonely:
			say "     Rachel stares at your [companion of player], who had been hiding outside since you got here, and it slinks off.  She smiles and takes your hand in hers, chirring softly.";
		now mouse girl is tamed;
		now the companion of the player is mouse girl;
		say "     (The mouse girl is now [']tamed['] and has made herself your active pet! Should you dismiss her from your side, you can reactivate her as your pet by typing [bold type]pet mouse girl[roman type].  You can see all the pets you have tamed with the [bold type][link]pet[as]pet[end link][roman type] command. Pets will lower the xp you gain from battle, but can gain levels themselves to be more useful in a scrap. You may still remove her as your active pet using [bold type][link]pet dismiss[as]pet dismiss[end link][roman type], or just [bold type][link]dismiss[as]dismiss[end link][roman type], but then the mouse collective will be tracking you again.)";
		increase score by 20;
		wait for any key;

to say fullmousification:
	[puts Mental Mouse as lead monster in case of impregnation]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Mental Mouse":
			now monster is y;
			break;
	now tailname of player is "Mental Mouse";
	now facename of player is "Mental Mouse";
	now skinname of player is "Mental Mouse";
	now bodyname of player is "Mental Mouse";
	now cockname of player is "Mental Mouse";
	attributeinfect;
	now tail of player is tail entry;
	now face of player is face entry;
	now skin of player is skin entry;
	now body of player is body entry;
	now cock of player is cock entry;


Section 2 - Mouse Girl Pet

mouse girl is a pet.  mouse girl is a part of the player;
The description of mouse girl is "[racheldesc]".
The weapon damage of mouse girl is 5;
The level of mouse girl is 3;
The Dexterity of mouse girl is 15;
The summondesc of mouse girl is "Walking up to join you before you even call out for her, Rachel the mouse girl grins up at you.";
The assault of mouse girl is "[rachelattack]";
rachelfuck is a number that varies.

understand "Rachel" as mouse girl.

to say rachelattack:
	choose row monster from table of random critters;
	if name entry is "Mental Mouse":
		say "[one of]The mouse girl glares angrily at one of the mice facing you, causing her to reel back from your mate's mental assault![or]The psychic mouse girl clenches her paw in a squeezing motion and tenses her face in concentration.  While not held or hurt by this, one of the mice is slowed momentarily, allowing you to get in a glancing blow![or]Pressing her fingertips to her temples, Rachel focuses hard, causing one of them to groan in mental pain![or]The mouse girl makes firm, grabbing motions with her hands and one of the mice collapses to her knees and cums hard, as if groped from afar![or]Rachel moves up behind one of the mice and pinches her ear.  Your enemy becomes glassy-eyed and wobbles as your mate's mind slams into hers![at random]";
	otherwise:
		say "[one of]The mouse girl glares angrily at your foe, causing them to reel back from her mental assault![or]The psychic mouse girl clenches her paw in a squeezing motion and tenses her face in concentration.  While not held or hurt by this, your enemy is slowed momentarily, allowing you to get in a glancing blow![or]Rachel, putting her fingertips to her temples, focuses hard on your enemy, causing them to groan in mental pain![or]The mouse girl makes firm, grabbing motions with her hands and your foe groans softly, as if groped from afar![or]Rachel moves up behind your foe, placing a paw lightly on their back.  Your enemy becomes glassy-eyed for a moment as their fighting resolve is weakened![at random]";

to say racheldesc:
	say "     This short, grey mouse is cute and sexy, with an idealized feminine body in miniature.  While only three feet tall, the bosom and cock on this rodent herm are above average for a normal human.  She has long, grey hair that flows down her back and her round, mouse ears poke out from it.  She has found a cute sundress somewhere.  It is a light blue that goes well with her fur colour, but does little to hide her large tits or erection when aroused.  That's probably why she chose it.";
	say "     Despite her small size, this mouse girl has considerable psychic powers.  From what you've seen and sensed, she's probably one of the strongest among them.  Having been selected by the mouse collective's hive mind as your intended mate, you sensed her powerful mind and can't help but feel a strong attachment to her.  Intent on coaxing you back to them, she has chosen to accompany you to show you the pleasures of mousedom to convince you to return.  You'll have to keep her close by if you want to avoid having the mice constantly tracking you down.";
	say "     As if sensing your mind focused on her, the mouse girl [one of]bends over to pick something up, swishing her tail to lift the back of her dress and flash her pussy at you[or]runs her paws along her feminine body[or]teases her nipples in a little show for you[or]brushes the front of her dress, making the growing erection under it more prominent[or]grins coquettishly[or]sends a fresh wave of her love for you into your mind[or]nibbles at some cheese and crackers she found, somehow making it seem sexy[at random].  You can't help but think as you look at her that joining the mouse collective wouldn't be so bad if it means being with her.";
	if a random chance of 2 in 5 succeeds, decrease humanity of player by 1;

instead of sniffing the mouse girl:
	say "Rachel smells faintly of mice and arousal, and you find yourself thinking back on the wonderful experience you had with them.";
	if a random chance of 1 in 3 succeeds, decrease humanity of player by 1;


Section 3 - Sexxxings

An everyturn rule:
	if companion of player is mouse girl:
		increase libido of player by 5;
		let diceroll be a random number from 40 to 200;			[lust check vs 200, player libido 40 or less auto-wins]
		if diceroll < libido of player:
			if cocks of player > 0 and cunts of player > 0:
				let T be a random number between 1 and 9;
				if T is 1 or T is 2:
					say "[rachelsexmale1]";
				if T is 3 or T is 4:
					say "[rachelsexmale2]";
				if T is 5:
					say "[racheloral]";
				if T is 6 or T is 7:
					say "[rachelsexfemale1]";
				if T is 8 or T is 9:
					say "[rachelsexfemale2]";
			if cocks of player > 0:
				let T be a random number between 1 and 5;
				if T is 1 or T is 2:
					say "[rachelsexmale1]";
				if T is 3 or T is 4:
					say "[rachelsexmale2]";
				if T is 5:
					say "[racheloral]";
			otherwise:
				let T be a random number between 1 and 5;
				if T is 1 or T is 2:
					say "[rachelsexfemale1]";
				if T is 3 or T is 4:
					say "[rachelsexfemale2]";
				if T is 5:
					say "[racheloral]";
			if a random chance of 1 in 2 succeeds, now researchbypass is 1;
			infect "Mental Mouse";
			now researchbypass is 0;
			if mousecounter is even, increase mousecounter by 1;

to say rachelsexmale1:
	say "     Sensing your growing arousal, Rachel runs her paws over your body, then down to your cock.  Your erection throbs in her paw and is soon in the cute mouse's mouth.  She licks and sucks on it briefly before moving onto all fours and raising her tail for you.  Seeing those wet folds waiting for you, you move atop her small body, lining up your erection before sinking it into her snug, squeezing grip.  She squeaks and moans beneath you as you thrust[if cock length of player > 18].  Your huge penis stretches her out considerably, but she takes it all, happy to share herself with you[otherwise if cock length of player > 12].  Your large penis bulges her slender waist as you fuck her, but she takes it all, happy to share herself with you[otherwise].  Your penis throbs inside her, taking it all and happy to share herself with you[end if].  You pound into your musine mate until you both cum together, sharing in the sensations of your lovemaking as your minds touch.";
	increase rachelfuck by 1;
	now libido of player is ( libido of player + 1 ) / 3;
	decrease humanity of player by a random number between 1 and 5;
	if "Pure" is listed in feats of player, increase humanity of player by a random number between 0 and 1;
	if "Corrupt" is listed in feats of player, decrease humanity of player by a random number between 0 and 1;

to say rachelsexmale2:
	say "     Feeling turned on, your eyes drift over to the mouse girl accompanying you.  She grins and slips off her dress as she senses your intent, climbing into your arms.  You cuddle the small mouse to you, cuddling her in your arms as she grips her arms and legs around you tightly.  You help her settle into position on your throbbing cock, fucking her while standing.  [if cock length of player > 18].  Your huge penis stretches her out considerably, but she takes it all for you[otherwise if cock length of player > 12].  Your large penis bulges her slender waist as you fuck her, but she manages to take it all[otherwise].  Your penis throbs inside her, stuffed fully inside her[end if].  Hugging her tightly, you thrust up into her, loving her squeaks of pleasure she gives.  As you make love to the beautiful mouse, you share the sensations of sex with her, feeling her pleasure as well.  You cum together, filling her with your seed as she sprays her load across your body.";
	increase rachelfuck by 1;
	now libido of player is ( libido of player + 1 ) / 3;
	decrease humanity of player by a random number between 1 and 5;
	if "Pure" is listed in feats of player, increase humanity of player by a random number between 0 and 1;
	if "Corrupt" is listed in feats of player, decrease humanity of player by a random number between 0 and 1;

to say rachelsexfemale1:
	say "     Sensing your arousal, Rachel snuggles up to you and nuzzles you crotch.  Her small tongue slides out to tease at your wet pussy.  Pressing her lips to your dripping folds, she teases her tongue across your clit and nibbles lightly at your sensitive petals, making you moan in delight.  You run your fingers over her head, stroking her sensitive ears and through her soft hair.  With her mind touching yours, she is able to sense exactly what brings you the most pleasure and soon brings you to a crashing orgasm that makes you weak in the knees.  Kneeling in front of her, the small mouse wraps her arms around you, giving you a kiss wet with your own juices.";
	now libido of player is ( libido of player + 1 ) / 2;
	decrease humanity of player by a random number between 1 and 3;
	if "Pure" is listed in feats of player, increase humanity of player by a random number between 0 and 1;
	if "Corrupt" is listed in feats of player, decrease humanity of player by a random number between 0 and 1;

to say rachelsexfemale2:
	say "     The cute mouse girl takes your hand in hers and smiles up at you coquettishly.  Her free hand moves along your hip, then finds its way between your legs to tease your wet pussy.  Moaning softly at her touch, you find yourself unable to resist an urge to mate with this lovely mouse girl.  Finding a comfortable spot, you stretch out on your back, legs spread and welcome her into your arms.  She lines her cock up with your pussy and sinks slowly into you.  You give a squeak of pleasure as she fucks you, pumping her mousemeat into you.  Without a word, she adjusts her thrusts to best please you, slow or fast, hard or soft, from moment to moment until finally, minds touching, you both orgasm together.  You can't help but think how wonderful it would be like this with her all the time, to be her mousey lover and joined with the rest of those sexy mice.";
	now libido of player is ( libido of player + 1 ) / 3;
	decrease humanity of player by a random number between 1 and 5;
	if "Pure" is listed in feats of player, increase humanity of player by a random number between 0 and 1;
	if "Corrupt" is listed in feats of player, decrease humanity of player by a random number between 0 and 1;

to say racheloral:
	say "     The mouse girl's ears twitch as a lustful urge fills you, sensing you a moment before you pounce her into a hug.  Squeaking playfully, you roll her onto her back and bury your face between her legs.  You lick and kiss at her throbbing cock, running your tongue over its pink flesh.  Human in form and sheathless, her erection is about eight inches of throbbing mousehood.  She strokes her fingers over your head, moaning in pleasure as you lick and suck at her cock until she cums hard.  Sharing in her pleasure, you cum as well, feeling her orgasm as well as your own.  You gulp down her creamy cum, then nuzzle up lick her nipples before kissing her.";
	now libido of player is ( ( libido of player + 1 ) * 2 ) / 3;
	decrease humanity of player by a random number between 1 and 4;
	if "Pure" is listed in feats of player, increase humanity of player by a random number between 0 and 1;
	if "Corrupt" is listed in feats of player, decrease humanity of player by a random number between 0 and 1;


Section 4 - Endings

when play ends:
	if mouse girl is tamed:
		if humanity of player is less than 10 and ( bodyname of player is "Albino Mouse" or bodyname of player is "Mental Mouse" ):
			say "     Giving into your musine urges, you fully accept Rachel, and the whole of the mouse collective, into your mind.  Becoming one with them, your own mind recedes away to make room for the united minds of the mice.  You love them all, but love Rachel the most of all.  The mouse girl who was willing to accompany you into the city, to risk losing you to let you come to this point on your own, is your special mate among the group, though all those in the collective are your lovers.  From your frequent matings, there comes several lovely children who exceptionally powerful from your chosen union, helping the making the mouse collective even stronger.  Several of them move to help be part of new nests, forming an interconnected web of hive-minds that cannot be resisted, growing slowly, secretly, around the world.";
		otherwise:
			say "     When the military comes to rescue you and the other survivors they can find, Rachel seems very nervous and fretful.  You don't have to ask, knowing she's aware you'll be leaving the city without becoming a member of the mouse collective - without joining her.  With tears in the corner of her eyes, the mouse girl hugs herself to you tightly.  You can sense that she longs to overpower your will or to summon the others, to force you to come.  From what you've sensed of her power and from the strength of your bond to her, she might even be able to do it, but she loves you too much to bring herself to do so.  Hugging the small mouse girl, you give her a parting kiss before she runs off into the city.  Your sense of her mind fades as she runs off, filled with a mix of sadness at her loss as well as joy for your success";
			if rachelfuck > 3:
				say ".  There is another joy as well, coming from the knowledge that her womb now carries your sired young";
				increase score by 10;
			say ".";


Rachel Mouse ends here.