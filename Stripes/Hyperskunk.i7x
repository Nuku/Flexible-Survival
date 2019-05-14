Version 1 of Hyperskunk by Stripes begins here.

"Adds a Hyperskunk creature to Flexible Survival's Wandering Monsters table, with impreg chance"


Section 1 - Creature Responses

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


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Length	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Name entry is "Hyperskunk"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]The template attacks you in some abstract manner![or]The template leaves you greater understanding, thereby lowering your resistance to it![or]The template batters you with examples![or]The template firmly makes its point![at random]"; [ Successful attack message ]
	now defeated entry is "[beatthehyperskunk]"; [ Text when monster loses. ]
	now victory entry is "[losetohyperskunk]"; [ Text when monster wins. ]
	now desc entry is "[hyperskunkdesc]"; [ Description of the creature when you encounter it. ]
	now face entry is "lovely skunk head with feminine lines. You have pretty, gray eyes"; [ Face. Format as Your face is [face of Player]. ]
	now body entry is "that of a sexy, wide-hipped skunk"; [ Body. Format as "Your body is [body of Player]." ]
	now skin entry is "fluffy fur in a skunk pattern of black and white over your";
	now tail entry is "You have a big, fluffy striped tail like a skunk."; [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "slate gray"; [ Cock. Format as "You have a 'size' [cock of Player] cock." ]
	now face change entry is "your vision goes briefly blurry. Your jaw pops and shifts as your new head takes shape with a very skunk-like appearance";
	now body change entry is "starts to shift and change starting at your hips. These widen, giving you a large and sexy bottom with wide birthing hips. Your thighs thicken as well to match. As the changes spread further down your legs, your feet become more paw-like, though still largely resemble normal feet. As this continues, spreading upward now, your waist grows fuller. It's not enough to call you fat, but you're not slender either and definitely have a few inches to pinch or for someone to wrap their arms around. Your upper body becomes shapely and sexy and your hands remain mostly human, though with slight traces of the skunk infection you've picked up like small claws instead of fingernails";
	now skin change entry is "you gain a thick and fluffy coat of skunk patterned fur"; [ Skin TF text, format as "Your skin tingles as [skin change entry]. ]
	now ass change entry is "you get a nice, wide bottom with an even wider skunk tail, large and fluffy, to go with it"; [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "becomes thick and meat as it pulses with arousal, shooting spurts of semen. As the changes subside, you can see that aside from its new, slate gray color, it looks rather like a normal, if thick, human dick";
	now str entry is 12; [ These are now the creature's stats... ]
	now dex entry is 12; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 16; [ These values may be used as part of alternate combat.]
	now per entry is 12;
	now int entry is 18;
	now cha entry is 18;
	now sex entry is "Both"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 50; [ The monster's starting HP. ]
	now lev entry is 6; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 5; [ Monster's average damage when attacking. ]
	now area entry is "Nowhere"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 30; [ Length infection will make cock grow to if cocks. ]
	now Ball Size entry is 6; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 10; [ Size of breasts the infection will try to attain. ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Length entry is 30; [ Depth of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 20; [ Width of female sex the infection will try to give a player. ]
	now libido entry is 80; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]womanly[or]full-figured[or]wide-hipped[at random]";
	now type entry is "[one of]skunk[or]mephit[or]hyperskunk[at random]";
	now magic entry is false;
	now resbypass entry is true;
	now non-infectious entry is true;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Table of New Infection Parts (continued)
Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Arms Change	Arms Description	Arms Skin Adjective	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Ass Change	Ass Description	Ass Skin Adjective	Ass Width	Tail Change	Tail Description	tail skin adjective	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Length	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Name entry is ""; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 5; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 5; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is ""; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [head description of Player] with [eye color of Player], [eye type of Player] eyes and an overall [gender appearance of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Adornments entry is ""; [partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...)]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective  is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3;
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Body Adjective of Player], [Gender Adjective of Player] and your torso is [torso description of Player]."]
	now Torso Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [torso adornments of Player]."]
	now Torso Skin Adjective entry is ""; [one word descriptive adjective (furry/scaled/...)]
	now Torso Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Torso Pattern entry is ""; [single word color adjective for the dominant pattern of the skin/fur/feathers/scales]
	now Breast Adjective entry is ""; [adjective(s) example: round, pointy, perky, saggy, bouncy. This would serve as either a general appearance of a infections breasts or possibly something that may be effected by a item or NPC.]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Nipple Count entry is 2; [count of nipples]
	now Nipple Color entry is ""; [one word color descriptor]
	now Nipple Shape entry is ""; [shape example: any shape will do as long as it has a baseline with a current infection or item]
	now Back Change entry is ""; [partial sentence that fits in: "Your back [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Back Change entry]."]
	now Back Adornments entry is ""; [partial sentence to fit: "Your back tickles with the feeling of movement caused by [back adornments of Player]."]
	now Back Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...)]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is ""; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is ""; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...)]
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...)]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [ass description of Player]."]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...)]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Tail Change entry]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...)]
	now Asshole Depth entry is 7; [inches deep for anal fucking;]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Asshole Tightness entry is 3;
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "tiny, small, tight, wide, gaping"]
	now Asshole Color entry is ""; [one word color descriptor]
	now Cock Count entry is 0;
	now Cock Girth entry is 0; [thickness 1-5, generates the Cock Girth Adjective]
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 0; [length in inches]
	now Cock Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cock Change entry is ""; [partial sentence that fits in: "Your cock [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is ""; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [cock adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock description of Player]."]
	now Cock Color entry is ""; [one word color descriptor]
	now Ball Count entry is 0; [allowed numbers: 1 (uniball), 2 or 4]
	now Ball Size entry is 0; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is ""; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [ball description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Length entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/well-used/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that is [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]


[A sample structure for succumbing/surviving messages at the end of the game.]
[Numerous other examples can be found in existing creature files.]

when play ends:
	if bodyname of Player is "Hyperskunk":
		if humanity of Player < 10:		[succumb]
			say "     As you continue to lose yourself to the infection, you give in to the instinctual lusts of your body. You are drawn back to the psych department of the hospital with a desire to see the sexy skunk there again. She welcomes you a smile and is more than happy to continue your sessions by going even more 'in-depth' with them until you're nothing but her lusty pet: another ornamental skunk and sex toy, but a living one this time. She keeps you in her office most of the time, using you as she sees fit. And when she finds new test subjects to experiment with, she is more than happy to showcase you to them as well. You have fun tempting these people into playing with you, your sexy mistress always happy to monitor their responses.";
			if hospquest < 2:
				now hospquest is hospquest; [do-nothing action]
			else if hospquest < 13:
				say "     At one point, she does mention that Dr. Mouse is disappointed to have lost his assistant to her, but aside from wanting a few samples, you are left in her care.";
			else if hospquest is 13 and HP of doctor mouse is 1:	[not defeated]
				say "     At one point, she does mention that Dr. Mouse is still upset with you, but that she'll not tell him where you are or what happened to you. You clutch tightly to the sexy skunk, happy she's here to protect you from the bad mousey. The protective hug soon turns to stroking and groping as you start suckling from her breast. Soon enough, you're getting another good fucking and your worries fade away.";
			else if hospquest is 13 and HP of doctor mouse is 2:	[defeated]
				say "     One evening Dr. Moffatt returns to her office quite upset about the state of the hospital. You have trouble following it, your mind quickly reimagining everything in a more sexual manner, but there was some kind of outburst between the nurses and orderlies in the psych ward, which upset her weasel patients and made everything worse. As she snuggles with you to unwind, you suggest that she just take over. She seems surprised by this idea, as if it couldn't occur to her until you'd mentioned it. You tell her adoringly how clever and sexy and smart and strong and sexy she is, so why shouldn't she be in charge. You keep moaning praise for your lovely mistress through the entirety of what turns out to be a rather lengthy session with her.";
				say "     And while you don't often leave her office, you do start to notice a change in the atmosphere of the hospital when you go out. With the hyperskunk psychologist taking charge of the hospital's forces, order begins to restore itself fairly quickly as she starts swinging her rather busty weight around and putting some rather meaty pressure on those who would disobey her. She expands the psych ward and starts providing her special brand of psychological care to those who wander into the hospital's clutches, helping them to accept their lustful needs and desires. Some are released to add their sexual frenzy and newly-implanted desires into the lustful activity of the city while a few others are kept for more long-term care and study by the mephit doctor.";
			else:
				say "     At one point, she does mention that Dr. Mouse is disappointed to have lost his assistant to her, but aside from wanting a few samples, you are left in her care.";
		else:							[survive]
			say "     When you are rescued by the military, you are examined by some of the military doctors, who are used to the more common skunks they find related to the strain in the park. You tell them a sanitized version of your contact with Dr. Moffatt and one of the psychologists among the group is familiar with her previous work and praises some of her papers. After hearing that you'd had some [']sessions['] with her, he's more than willing to give you a speedy pass on your mental evaluation, not realizing that the respected doctor's professional motivations might have changed. You see no reason to dissuade him and are processed more speedily thanks to his recommendation for release.";
			let xgen be 0;
			if Player is herm:
				let xgen be 1;
			else if Player is male:
				let xgen be 2;
			else if Player is female:
				let xgen be 3;
			if HP of Doctor Moffatt is 8 or HP of Doctor Moffatt is 9 and xgen > 0:
				say "     While you are being held, you do make friends with one person who is only lightly tainted by those commonplace skunks of the park. With your hyper-sexualized body, you easily catch [if xgen is 1 or xgen is 2]her[else]his[end if] attention and pique [if xgen is 1 or xgen is 2]her[else]his[end if] interest, but wait until your release to meet up with [if xgen is 1 or xgen is 2]her[else]him[end if]. It doesn't take you long to tease and tantalize [if xgen is 1 or xgen is 2]her[else]him[end if] into sex, during which you get [if xgen is 1 or xgen is 2]her[else]him[end if] to nurse from you. Your milk, still potent despite the military's treatment, gradually transforms your lover into a busty skunk herm sex pet for yourself.";
			if intelligence of Player > 14 and charisma of Player > 14:
				say "     Still feeling the lingering traces of Dr. Moffatt's conditioning, you decide that becoming a psychologist yourself would be a good move. Most of the study comes to you naturally, though some classes (like Ethics) give you some trouble, though you're clever enough to know what kind of responses they expect from you. And you're not adverse to sleeping with a few teachers to help your grades either. You set up your own practice quietly and deal mainly with those trying to come to grips with their urges after transformation, and you're more than happy to help them explore their new sexual cravings and accept the much more lustful sexual lives they've always secretly wanted. You take particular pleasure in making dominant lovers into submissive, horny sluts.";
				if HP of Doctor Moffatt is 8 or HP of Doctor Moffatt is 9:
					say "     You maintain infrequent correspondence with Dr. Moffatt through those brave (or foolish) enough to enter the infected city. She praises your fine progress and work, encouraging you to continue and providing tips and suggestions that you are always eager to try out on your next unsuspecting patient[if xgen > 0]. You have a very happy life, with any sexual desire you might crave easily fulfilled by manipulating your next patient to satisfy your lustful, kinky needs. You sometimes even let your sex pet join in on the fun, coaxing your patients into playing with her as part of their therapy. A few particularly enjoyable patients are even made into more sex pets, giving you a small harem of hyperskunk sluts at first. As their eventual offspring spread, so does the level of sexual lust and deviance their growing numbers bring about in their wake[end if].";
				else:
					say "     You maintain infrequent correspondence with Dr. Moffatt through those brave (or foolish) enough to enter the infected city. She praises your fine progress and work, encouraging you to continue and providing tips and suggestions that you are always eager to try out on your next unsuspecting patient. She even manages to send you smuggle out another sample of her milk dose for you from time to time, which you always down immediately, loving the exciting sexual pleasure they provide. These eventually overcome the military's treatment, stimulating your infection back into activity, further increasing your kinky urges and your ability to manipulate your patients into lustful deviance[if xgen > 0]. You are careful to only spread it to a few particularly enjoyable patients, giving you a small harem of hyperskunk sluts at first. As their eventual offspring spread, so does the level of sexual lust and deviance their growing numbers bring about in their wake[end if].";
			else:
				say "     Still feeling the lingering traces of Dr. Moffatt's conditioning, you decide to remain in contact with the psychologist who did your evaluation. Making the pretense that you should continue the [']sessions['] you were having with Dr. Moffatt, you visit his private practice after he's done with his work assisting the military. You keep things rather low-key to start, gradually increasing the amount of sexual detail you go into.";
				if HP of Doctor Moffatt is 8 or HP of Doctor Moffatt is 9:
					say "     Prompted by some correspondence you share with Dr. Moffatt through those brave (or foolish) enough to enter the infected city, you set your plan in motion. After a few visits, you slide your sexy body up against his and offer to show him just what your [']sessions['] with Dr. Moffatt were like. Being his last patient for the day (as you'd planned), it turns into a rather intense session that runs long into the night. It even includes you working to turn his secretary into a sexy hyperskunk slut of his very own. You space out your transformation of him much more slowly so his patients aren't startled away until it's too late. His work with them gradually changes, exploring and manipulating their sexual desires, often resulting in many of his human patients to seek out infection under the misconception that it's what they've always desired. You even set up correspondence between the doctor and Dr. Moffatt, letting her provide him with further kinky ideas. You easily convince the doctor to marry you as well, ensuring you have [if xgen > 0]an enjoyable life of lustful satisfaction and kinky pleasure as you get to play with many of his sexually transformed[else]a life where you can live out your kinky desires through your lover's[end if] patients while his money satisfies your material needs.";
				else:
					say "     Prompted by some correspondence you share with Dr. Moffatt through those brave (or foolish) enough to enter the infected city, you set your plan in motion. Once she manages to smuggle out a large supply of the milk doses she had been giving you as part of your sessions, you down it all and slide your sexy body up against his with an offer to show him just what your [']sessions['] with Dr. Moffatt were like. Being his last patient for the day (as you'd planned), it turns into a rather intense session that runs long into the night. It even includes you working to turn his secretary into a sexy hyperskunk slut of his very own, the dosed milk breaking through the military's treatment and reactivating your infection. You space out your transformation of him much more slowly so his patients aren't startled away until it's too late. His work with them gradually changes, exploring and manipulating their sexual desires, often prompting many of his human patients to seek out infection under the misconception that it's what they've always desired. You even set up correspondence between the psychologist and Dr. Moffatt, letting her provide him with further kinky ideas. You easily convince the doctor to marry you as well, ensuring you have [if xgen > 0]an enjoyable life of lustful satisfaction and kinky pleasure as you get to play with many of his sexually transformed patients[else]a life where you can live out your kinky desires through your lover's[end if] patients while his money satisfies your material needs. The harem of hyperskunk herms you help him create make for wonderful servants and pets to serve you in this life of blissful indolence.";

Hyperskunk ends here.
