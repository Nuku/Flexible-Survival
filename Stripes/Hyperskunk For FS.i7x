Version 1 of Hyperskunk For FS by Stripes begins here.

"Adds a Hyperskunk creature to Flexible Survival's Wandering Monsters table with impregchance"


Section 1 - Monster Responses

when play begins:
	add { "Hyperskunk" } to infections of hermaphrodite;
	add { "Hyperskunk" } to infections of furry;
	add { "Hyperskunk" } to infections of Tailweapon;

to say losetohyperskunk:
	say "No combat.";

to say beatthehyperskunk:
	say "No combat.";

to say hyperskunkdesc:
	say "No combat.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Hyperskunk";		[The creature's name as displayed and used in naming descriptions]
	now attack entry is "[one of]The template attacks you in some abstract manner![or]The template leaves you greater understanding, thereby lowering your resistance to it![or]The template batters you with examples![or]The template firmly makes its point![at random]";	[Text used when the monster succeeds on an attack]
	now defeated entry is "[beatthehyperskunk]";				[ Text when monster loses.  Change 'template' as above. ]
	now victory entry is "[losetohyperskunk]";					[ Text when monster wins.  Change 'template' as above. ]
	now desc entry is "[hyperskunkdesc]";						[ Description of the creature when you encounter it. ]
	now face entry is "lovely skunk head with feminine lines.  You have pretty, gray eyes";		[ Face Description, format as the text "Your face is (your text)." ]
	now body entry is "that of a sexy, wide-hipped skunk";	[ Body Description, format as the text "Your body is (your text)." ]
	now skin entry is "fluffy fur in a skunk pattern of black and white over your";
	now tail entry is "You have a big, fluffy striped tail like a skunk.";	[ Tail desc., written as a full sentence or left blank for none. ] 
	now cock entry is "slate gray";						[ Cock desc., format as "You have a 'size' (your text) cock." ]
	now face change entry is "your vision goes briefly blurry.  Your jaw pops and shifts as your new head takes shape with a very skunk-like appearance";
	now body change entry is "starts to shift and change starting at your hips.  These widen, giving you a large and sexy bottom with wide birthing hips.  Your thighs thicken as well to match.  As the changes spread further down your legs, your feet become more paw-like, though still largely resemble normal feet.  As this continues, spreading upward now, your waist grows fuller.  It's not enough to call you fat, but you're not slender either and definitely have a few inches to pinch or for someone to wrap their arms around.  Your upper body becomes shapely and sexy and your hands remain mostly human, though with slight traces of the skunk infection you've picked up like small claws instead of fingernails";
	now skin change entry is "you gain a thick and fluffy coat of skunk patterned fur";	[ Skin TF text, format as "Your skin feels funny as (your text)." ]
	now ass change entry is "you get a nice, wide bottom with an even wider skunk tail, large and fluffy, to go with it";	[ Ass/Tail TF text, format as "Your ass feels funny as (your text)." ]
	now cock change entry is "becomes thick and meat as it pulses with arousal, shooting spurts of semen.  As the changes subside, you can see that aside from its new, slate grey colour, it looks rather like a normal, if thick, human dick";
	now str entry is 12;			[ These are now the creature's stats... ]
	now dex entry is 12;			[ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 16;			[ These values may be used as part of alternate combat.]
	now per entry is 12;
	now int entry is 18;
	now cha entry is 18;
	now sex entry is "Both";		[ Infection will move the player towards this gender.  Current: 'Male' 'Female' 'Both' ]
	now hp entry is 50;			[ The monster's starting hit points. ]
	now lev entry is 6;			[ Monster level.  (Level x 2) XP for victory.  (Level / 2) XP for losing. ]
	now wdam entry is 5;			[ Monster's average damage when attacking. ]
	now area entry is "nowhere";		[ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1;			[ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 30;		[ Length infection will make cock grow to if cocks. ]
	now cock width entry is 36;		[ Cock width, more commonly used for ball size. ]
	now breasts entry is 2;			[ Number of breasts the infection will give a player. ]
	now breast size entry is 10;		[ Size of breasts the infection will try to attain. ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 30;		[ Depth of female sex the infection will attempt to give a player. ]
	now cunt width entry is 20;		[ Width of female sex the infection will try to give a player. ]
	now libido entry is 80;			[ Target libido the infection will rise towards. ]
	now loot entry is "";			[ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 0;		[ Percentage chance of dropping loot, from 0-100. ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 3;				[ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]womanly[or]full-figured[or]wide-hipped[at random]";
	now type entry is "[one of]skunk[or]mephit[or]hyperskunk[at random]";
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is true;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is true;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";		[ Row used to designate any special combat features, "default" for standard combat. ]

[A sample structure for succumbing/surviving messages at the end of the game.]
[Numerous other examples can be found in existing creature files.]

when play ends:
	if bodyname of player is "Hyperskunk":
		if humanity of player is less than 10:		[succumb]
			say "     As you continue to lose yourself to the infection, you give into the instinctual lusts of your body.  You are drawn back to the psych department of the hospital with a desire to see the sexy skunk there again.  She welcomes you a smile and is more than happy to continue your sessions by going even more 'in-depth' with them until you're nothing but her lusty pet: another ornamental skunk and sex toy, but a living one this time.  She keeps you in her office most of the time, using you as she sees fit.  And when she finds new test subjects to experiment with, she is more than happy to showcase you to them as well.  You have fun tempting these people into playing with you, your sexy mistress always happy to monitor their responses.";
			if hospquest < 2:
				let x be 0;		[do-nothing action]
			otherwise if hospquest < 13:
				say "     At one point, she does mention that Dr. Mouse is disappointed to have lost his assistant to her, but aside from wanting a few samples, you are left in her care.";
			otherwise if hospquest is 13 and hp of doctor mouse is 1:	[not defeated]
				say "     At one point, she does mention that Dr. Mouse is still upset with you, but that she'll not tell him where you are or what happened to you.  You clutch tightly to the sexy skunk, happy she's here to protect you from the bad mousey.  The protective hug soon turns to stroking and groping as you start suckling from her breast.  Soon enough, you're getting another good fucking and your worries fade away.";
			otherwise if hospquest is 13 and hp of doctor mouse is 2:	[defeated]
				say "     One evening Dr. Moffatt returns to her office quite upset about the state of the hospital.  You have trouble following it, your mind quickly reimagining everything in a more sexual manner, but there was some kind of outburst between the nurses and orderlies in the psych ward, which upset her weasel patients and made everything worse.  As she snuggles with you to unwind, you suggest that she just take over.  She seems surprised by this idea, as if it couldn't occur to her until you'd mentioned it.  You tell her adoringly how clever and sexy and smart and strong and sexy she is, so why shouldn't she be in charge.  You keep moaning praise for your lovely mistress through the entirety of what turns out to be a rather lengthy session with her.";
				say "     And while you don't often leave her office, you do start to notice a change in the atmosphere of the hospital when you go out.  With the hyperskunk psychologist taking charge of the hospital's forces, order begins to restore itself fairly quickly as she starts swinging her rather busty weight around and putting some rather meaty pressure on those who would disobey her.  She expands the psych ward and starts providing her special brand of psychological care to those who wander into the hospital's clutches, helping them to accept their lustful needs and desires.  Some are released to add their sexual frenzy and newly-implanted desires into the lustful activity of the city while a few others are kept for more long-term care and study by the mephit doctor.";
			otherwise:
				say "     At one point, she does mention that Dr. Mouse is disappointed to have lost his assistant to her, but aside from wanting a few samples, you are left in her care.";
		otherwise:							[survive]
			say "     When you are rescued by the military, you are examined by some of the military doctors, who are used to the more common skunks they find related to the strain in the park.  You tell them a sanitized version of your contact with Dr. Moffatt and one of the psychologists among the group is familiar with her previous work and praises some of her papers.  After hearing that you'd had some [']sessions['] with her, he's more than willing to give you a speedy pass on your mental evaluation, not realizing that the respected doctor's professional motivations might have changed.  You see no reason to dissuade him and are processed more speedily thanks to his recommendation for release.";
			let xgen be 0;
			if cocks of player > 0 and cunts of player > 0:
				let xgen be 1;
			otherwise if cocks of player > 0:
				let xgen be 2;
			otherwise if cunts of player > 0:
				let xgen be 3;
			if hp of Doctor Moffatt is 8 or hp of Doctor Moffatt is 9 and xgen > 0:
				say "     While you are being held, you do make friends with one person who is only lightly tainted by those commonplace skunks of the park.  With your hypersexualized body, you easily catch [if xgen is 1 or xgen is 2]her[otherwise]his[end if] attention and pique [if xgen is 1 or xgen is 2]her[otherwise]his[end if] interest, but wait until your release to meet up with [if xgen is 1 or xgen is 2]her[otherwise]him[end if].  It doesn't take you long to tease and tantalize [if xgen is 1 or xgen is 2]her[otherwise]him[end if] into sex, during which you get [if xgen is 1 or xgen is 2]her[otherwise]him[end if] to nurse from you.  Your milk, still potent despite the military's treatment, gradually transforms your lover into a busty skunk herm sex pet for yourself.";
			if intelligence of player > 14 and charisma of player > 14:
				say "     Still feeling the lingering traces of Dr. Moffatt's conditioning, you decide that becoming a psychologist yourself would be a good move.  Most of the study comes to you naturally, though some classes (like Ethics) give you some trouble, though you're clever enough to know what kind of responses they expect from you.  And you're not adverse to sleeping with a few teachers to help your grades either.  You set up your own practice quietly and deal mainly with those trying to come to grips with their urges after transformation, and you're more than happy to help them explore their new sexual cravings and accept the much more lustful sexual lives they've always secretly wanted.  You take particular pleasure in making dominant lovers into submissive, horny sluts.";
				if hp of Doctor Moffatt is 8 or hp of Doctor Moffatt is 9:
					say "     You maintain infrequent correspondence with Dr. Moffatt through those brave (or foolish) enough to enter the infected city.  She praises your fine progress and work, encouraging you to continue and providing tips and suggestions that you are always eager to try out on your next unsuspecting patient[if xgen > 0].  You have a very happy life, with any sexual desire you might crave easily fulfilled by manipulating your next patient to satisfy your lustful, kinky needs.  You sometimes even let your sex pet join in on the fun, coaxing your patients into playing with her as part of their therapy.  A few particularly enjoyable patients are even made into more sex pets, giving you a small harem of hyperskunk sluts at first.  As their eventual offspring spread, so does the level of sexual lust and deviance their growing numbers bring about in their wake[end if].";
				otherwise:
					say "     You maintain infrequent correspondence with Dr. Moffatt through those brave (or foolish) enough to enter the infected city.  She praises your fine progress and work, encouraging you to continue and providing tips and suggestions that you are always eager to try out on your next unsuspecting patient.  She even manages to send you smuggle out another sample of her milk dose for you from time to time, which you always down immediately, loving the exciting sexual pleasure they provide.  These eventually overcome the military's treatment, stimulating your infection back into activity, further increasing your kinky urges and your ability to manipulate your patients into lustful deviance[if xgen > 0].  You are careful to only spread it to a few particularly enjoyable patients, giving you a small harem of hyperskunk sluts at first.  As their eventual offspring spread, so does the level of sexual lust and deviance their growing numbers bring about in their wake[end if].";
			otherwise:
				say "     Still feeling the lingering traces of Dr. Moffatt's conditioning, you decide to remain in contact with the psychologist who did your evaluation.  Making the pretense that you should continue the [']sessions['] you were having with Dr. Moffatt, you visit his private practice after he's done with his work assisting the military.  You keep things rather low-key to start, gradually increasing the amount of sexual detail you go into.";
				if hp of Doctor Moffatt is 8 or hp of Doctor Moffatt is 9:
					say "     Prompted by some correspondence you share with Dr. Moffatt through those brave (or foolish) enough to enter the infected city, you set your plan in motion.  After a few visits, you slide your sexy body up against his and offer to show him just what your [']sessions['] with Dr. Moffatt were like.  Being his last patient for the day (as you'd planned), it turns into a rather intense session that runs long into the night.  It even includes you working to turn his secretary into a sexy hyperskunk slut of his very own.  You space out your transformation of him much more slowly so his patients aren't startled away until it's too late.  His work with them gradually changes, exploring and manipulating their sexual desires, often resulting in many of his human patients to seek out infection under the misconception that it's what they've always desired.  You even set up correspondence between the doctor and Dr. Moffatt, letting her provide him with further kinky ideas.  You easily convince the doctor to marry you as well, ensuring you have [if xgen > 0]an enjoyable life of lustful satisfaction and kinky pleasure as you get to play with many of his sexually transformed[otherwise]a life where you can live out your kinky desires through your lover's[end if] patients while his money satisfies your material needs.";
				otherwise:
					say "     Prompted by some correspondence you share with Dr. Moffatt through those brave (or foolish) enough to enter the infected city, you set your plan in motion.  Once she manages to smuggle out a large supply of the milk doses she had been giving you as part of your sessions, you down it all and slide your sexy body up against his with an offer to show him just what your [']sessions['] with Dr. Moffatt were like.  Being his last patient for the day (as you'd planned), it turns into a rather intense session that runs long into the night.  It even includes you working to turn his secretary into a sexy hyperskunk slut of his very own, the dosed milk breaking through the military's treatment and reactivating your infection.  You space out your transformation of him much more slowly so his patients aren't startled away until it's too late.  His work with them gradually changes, exploring and manipulating their sexual desires, often prompting many of his human patients to seek out infection under the misconception that it's what they've always desired.  You even set up correspondence between the psychologist and Dr. Moffatt, letting her provide him with further kinky ideas.  You easily convince the doctor to marry you as well, ensuring you have [if xgen > 0]an enjoyable life of lustful satisfaction and kinky pleasure as you get to play with many of his sexually transformed patients[otherwise]a life where you can live out your kinky desires through your lover's[end if] patients while his money satisfies your material needs.  The harem of hyperskunk herms you help him create make for wonderful servants and pets to serve you in this life of blissful indolence.";


[ Edit this to have the correct creature name as well]
Hyperskunk For FS ends here.
