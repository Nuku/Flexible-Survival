Version 1 of Infections by Core Mechanics begins here.
[ Version 1 - Extracted during dissection of the Story.ni - Wahn]

NewTypeInfectionActive is a truth state that varies.[@Tag:NotSaved] NewTypeInfectionActive is usually false.

Part 1 - Sex Change

skipcockchange is a truth state that varies. skipcockchange is usually false.

This is the sex change rule:
	choose row MonsterID from the Table of Random Critters;
	let singlesexadjust be 0;
	if "Single Sexed" is listed in feats of Player:
		if Player is herm:
			let singlesexadjust be 1; [currently herm]
		else if Player is male:
			let singlesexadjust be 2; [currently male]
		else if Player is female:
			let singlesexadjust be 3; [currently female]
	if "Just One" is listed in feats of Player:
		if Cock Count entry > 1:
			now Cock Count entry is 1;
		if Cunt Count entry > 1:
			now Cunt Count entry is 1;
	[COCK GROWTH/SHRINKAGE]
	if ( the sex entry is "Male" or the sex entry is "Both" ) and Cock Length of Player < Cock Length entry and Cock Count of Player is not 0 and "Female Preferred" is not listed in feats of Player:
		[Grows existing cock, unless "Female Preferred" is selected]
		let prevcock be Cock Length of Player;
		increase Cock Length of Player by 1;
		increase Cock Length of Player by ( Cock Length entry minus Cock Length of Player ) divided by 3;
		if "Modest Organs" is listed in feats of Player and Cock Length of Player > 8:
			now Cock Length of Player is 8;
		if prevcock < Cock Length of Player:		[did cock actually grow?]
			follow the cock descr rule;
			say "You can see your [if Cock Count of Player is 1][one of]cock[or]penis[or]shaft[or]maleness[at random][else][one of]cocks[or]penises[or]shafts[or]malenesses[at random][end if] [one of]engorge[or]swell[or]throb[at random] as [if Cock Count of Player > 1]they gain[else]it gains[end if] in length, becoming [descr]!";
	else if ( the sex entry is "Male" or the sex entry is "Both" ) and Cock Length of Player > ( ( Cock Length entry times 150 ) / 100 ) and "One Way" is not listed in feats of Player:
		[Shrinks existing cock, unless "One Way" is selected]
		let prevcock be Cock Length of Player;
		decrease Cock Length of Player by 1;
		decrease Cock Length of Player by ( Cock Length of Player - ( ( Cock Length entry times 150 ) / 100 ) ) divided by 3;
		if "Male Preferred" is listed in feats of Player or "Herm Preferred" is listed in feats of Player or "Always Cocky" is listed in feats of Player:
			if Cock Length of Player < 5, now Cock Length of Player is 5;
		if "Modest Organs" is listed in feats of Player and Cock Length of Player > 8:
			now Cock Length of Player is 8;
		if prevcock > Cock Length of Player:		[did cock actually shrink?]
			follow the cock descr rule;
			say "Strong [one of]erotic tingles[or]cold waves[or]hot flashes[at random] run over your impressive [CockName of Player in lower case] [if Cock Count of Player > 1][one of]cocks[or]penises[or]shafts[or]poles[at random] as they begin[else][one of]cock[or]penis[or]shaft[or]pole[at random] as it begins[end if] to diminish somewhat to better suit your new infection. [if Cock Count of Player > 1]They dwindle[else]It dwindles[end if] in size, becoming [descr].";
	[BALL GROWTH/SHRINKAGE]
	if ( the sex entry is "Male" or the sex entry is "Both" ) and Ball Size of Player < Ball Size entry and Cock Count of Player is not 0 and "Female Preferred" is not listed in feats of Player:
		[Grows existing balls, unless "Female Preferred" is selected]
		let prevcock be Ball Size of Player;
		increase Ball Size of Player by 1;
		if "Modest Organs" is listed in feats of Player and Ball Size of Player > 4:
			now Ball Size of Player is 4;
		if prevcock < Ball Size of Player:		[did balls actually grow?]
			follow the cock descr rule;
			say "You can [if Player is internal]feel your internal[else]see your[end if] [one of]testicles[or]balls[or]orbs[or]nuts[at random] [one of]tingle[or]churn audibly[or]throb[at random] as they grow larger, [if Player is internal]body straining to abide this[else]your flesh growing taught with the[end if] expansion, leaving you with a [one of]pair[or]set[at random] of [Ball Size Adjective of Player] balls!";
	else if ( the sex entry is "Male" or the sex entry is "Both" ) and Ball Size of Player > ( ( Ball Size entry times 150 ) / 100 ) and "One Way" is not listed in feats of Player:
		[Shrinks existing balls, unless "Female Preferred" is selected]
		let prevcock be Ball Size of Player;
		decrease Ball Size of Player by 1;
		if "Male Preferred" is listed in feats of Player or "Herm Preferred" is listed in feats of Player or "Always Cocky" is listed in feats of Player:
			if Ball Size of Player < 3, now Ball Size of Player is 3;
		if "Modest Organs" is listed in feats of Player and Ball Size of Player > 3:
			now Ball Size of Player is 3;
		if prevcock > Ball Size of Player:		[did cock actually shrink?]
			follow the cock descr rule;
			say "You can feel a [one of]draining of[or]tightness around[or]pressure dropping in[at random] your [if Player is internal]internal[else]impressive[end if] [CockName of Player in lower case] [one of]balls[or]testicles[or]gonads[or]nuts[at random] as they begin to diminish somewhat to better suit your new infection. You cum hard to drain their seed as they dwindle in size, becoming [Ball Size Adjective of Player] balls.";
	[COCK ADDITIONS/SUBSTRACTIONS]
	if Cock Count of Player < Cock Count entry and ( the sex entry is "Male" or the sex entry is "Both" ) and "Female Preferred" is not listed in feats of Player and singlesexadjust is not 3: [player currently female, single sexed]
		[Adds extra cocks if the player has less than the infection, unless "Female Preferred" is selected or a single sexed player is female]
		let prevcock be Cock Count of Player;
		if Player is not male: [adds a cock if the player has none]
			increase Cock Count of Player by 1;
			now Cock Length of Player is 1;
			now the Ball Size of Player is 1;
			increase Cock Length of Player by ( Cock Length entry ) divided by 3;
			if skipcockchange is false:
				now CockName of Player is Name entry;
				now Cock of Player is cock entry;
			if "Modest Organs" is listed in feats of Player and Cock Length of Player > 8:
				now Cock Length of Player is 8;
			if "Modest Organs" is listed in feats of Player and Ball Size of Player > 3:
				now Ball Size of Player is 3;
		else if a random chance of 2 in 3 succeeds and "Just One" is not listed in feats of Player:	[Extra cocks at 67%]
			increase Cock Count of Player by 1;
		if singlesexadjust is 3 and sex entry is "Both":	[female remains female if herm infection]
			remove manhood from Player;
		if prevcock < Cock Count of Player:		[did new cock appear?]
			follow the cock descr rule;
			say "Your groin throbs with intense sensations as a [descr] [cock entry] [one of]cock[or]penis[or]shaft[or]maleness[at random] erupts from you, spurting a few excited streams of fluid as it settles into place.";
	if Cock Count of Player is not 0 and ( the sex entry is "Female" or the sex entry is "Neuter" ) and "One Way" is not listed in feats of Player and singlesexadjust is not 2: [player currently male, single sexed]
		[shrinks & removes cocks if the player has one, infection is female/neuter and "One Way" is not listed]
		let prevcock be Cock Length of Player;
		let prevcock2 be Ball Size of Player;
		decrease Cock Length of Player by 1;
		decrease Cock Length of Player by Cock Length of Player divided by 3;
		decrease Ball Size of Player by 1;
		if "Male Preferred" is listed in feats of Player or "Herm Preferred" is listed in feats of Player or "Always Cocky" is listed in feats of Player:
			if Cock Length of Player < 5, now Cock Length of Player is 5;
			if Ball Size of Player < 3, now Ball Size of Player is 3;
		if (singlesexadjust is 1 or singlesexadjust is 2) and sex entry is "Female":		[male/herm becomes female if female infection]
			remove manhood from Player;
		if prevcock > Cock Length of Player or prevcock2 > Ball Size of Player:		[did cock actually shrink?]
			follow the cock descr rule;
			say "Strange [one of]erotic tingles[or]cold waves[or]hot flashes[at random] run over your [if Cock Count of Player > 1][one of]cocks[or]penises[or]shafts[or]poles[at random] as they begin[else][one of]cock[or]man meat[or]shaft[or]pole[at random] as it begins[end if] to shrink. [if Cock Count of Player > 1]They dwindle[else]It dwindles[end if] in size, becoming [descr] while[if Player is internal] you imagine[end if] your [one of]balls[or]testicles[or]nuts[or]gonads[at random] become [Ball Size Adjective of Player]. ";
			if Cock Length of Player < 1 or Ball Size of Player < 1:
				say "You barely have time to give a whimper as you cease to be a male.";
				remove manhood from Player;
			else:
				say "[line break]";
		if Cock Count of Player > 1 and a random chance of 2 in 5 succeeds and "All The Things" is not listed in feats of Player:
			say "Sudden pleasure runs through one of your doomed [Cock of Player] cocks as it sprays the last of its seed, dwindling down to nothing at all and vanishing, leaving only the powerful orgasm to remember it by.";
			decrease Cock Count of Player by 1;
	else if Cock Count of Player > Cock Count entry and a random chance of 1 in 3 succeeds and "One Way" is not listed in feats of Player and (sex entry is "Male" or sex entry is "Both" ) and "All The Things" is not listed in feats of Player:
		[removes cock if the player has more than the male/herm infection, no "One Way", no "All the Things"]
		say "Sudden pleasure runs through one of your doomed [Cock of Player] cocks as it sprays the last of its seed, dwindling down to nothing at all and vanishing, leaving only [one of]the powerful[or]that final[at random] orgasm to remember it by.";
		decrease Cock Count of Player by 1;
	[CUNT GROWTH/SHRINKAGE]
	if ( the sex entry is "Female" or the sex entry is "Both" ) and Cunt Depth of Player < Cunt Depth entry and Cunt Count of Player is not 0 and "Male Preferred" is not listed in feats of Player:
		let prevcunt be Cunt Depth of Player;
		increase Cunt Depth of Player by 1;
		increase Cunt Depth of Player by ( Cunt Depth entry minus Cunt Depth of Player ) divided by 3;
		if "Modest Organs" is listed in feats of Player and Cunt Depth of Player > 8:
			now Cunt Depth of Player is 8;
		if prevcunt < Cunt Depth of Player:	[did cunt actually grow?]
			follow the cunt descr rule;
			say "You can see your [if Cunt Count of Player is 1][one of]cunt[or]pussy[or]vagina[or]cleft[at random][else][one of]cunts[or]pussies[or]vaginas[or]clefts[at random] [one of]pulse[or]quiver[or]throb[at random][end if] as [if Cunt Count of Player is 1]it grows[else]they grow[end if] deeper into your body, becoming [descr]!";
	else if ( the sex entry is "Female" or the sex entry is "Both" ) and Cunt Depth of Player > ( ( Cunt Depth entry times 150 ) / 100 ) and "One Way" is not listed in feats of Player:
		let prevcunt be Cunt Depth of Player;
		decrease Cunt Depth of Player by 1;
		decrease Cunt Depth of Player by ( Cunt Depth of Player - ( ( Cunt Depth entry times 150 ) / 100 ) ) divided by 3;
		if "Female Preferred" is listed in feats of Player or "Herm Preferred" is listed in feats of Player or "Always A Pussy" is listed in feats of Player:
			if Cunt Depth of Player < 5, now Cunt Depth of Player is 5;
		if "Modest Organs" is listed in feats of Player and Cunt Depth of Player > 8:
			now Cunt Depth of Player is 8;
		if prevcunt > Cunt Depth of Player:		[did cunt actually shrink?]
			follow the cunt descr rule;
			say "Strong [one of]erotic tingles[or]cold waves[or]hot flashes[at random] flow into your ample [if Cunt Count of Player > 1][one of]cunts[or]pussies[or]vaginas[or]clefts[at random] as they begin[else][one of]cunt[or]pussy[or]vagina[or]cleft[at random] as it begins[end if] to diminish somewhat to better suit your new infection. [if Cunt Count of Player > 1]They dwindle[else]It dwindles[end if] in size, becoming [descr].";
	[CUNT TIGHTNESS GROWTH/SHRINKAGE]
	if ( the sex entry is "Female" or the sex entry is "Both" ) and Cunt Tightness of Player < Cunt Tightness entry and Cunt Count of Player is not 0 and "Male Preferred" is not listed in feats of Player:
		let prevcunt2 be Cunt Tightness of Player;
		increase Cunt Tightness of Player by 1;
		increase Cunt Tightness of Player by ( Cunt Tightness entry minus Cunt Tightness of Player ) divided by 3;
		if "Modest Organs" is listed in feats of Player and Cunt Tightness of Player > 5:
			now Cunt Tightness of Player is 5;
		if prevcunt2 < Cunt Tightness of Player:	[did cunt actually widen?]
			follow the cunt descr rule;
			say "You can see your [if Cunt Count of Player is 1][one of]cunt[or]pussy[or]vagina[or]cleft[at random][else][one of]cunts[or]pussies[or]vaginas[or]clefts[at random][end if] [one of]engorge[or]swell[or]throb[at random] as your thighs are nudged apart to make room for those thickening lips, growing wider!";
	else if ( the sex entry is "Female" or the sex entry is "Both" ) and Cunt Tightness of Player > ( ( Cunt Tightness entry times 150 ) / 100 ) and "One Way" is not listed in feats of Player:
		let prevcunt be Cunt Tightness of Player;
		decrease Cunt Tightness of Player by 1;
		decrease Cunt Tightness of Player by ( Cunt Tightness of Player - ( ( Cunt Tightness entry times 150 ) / 100 ) ) divided by 3;
		if "Female Preferred" is listed in feats of Player or "Herm Preferred" is listed in feats of Player or "Always A Pussy" is listed in feats of Player:
			if Cunt Tightness of Player < 3, now Cunt Tightness of Player is 3;
		if "Modest Organs" is listed in feats of Player and Cunt Tightness of Player > 5:
			now Cunt Tightness of Player is 5;
		if prevcunt > Cunt Tightness of Player:		[did cock actually shrink?]
			follow the cunt descr rule;
			say "You can feel a [one of]tightening[or]snugness[or]clenching[at random] from your accommodating [if Cunt Count of Player > 1][one of]cunts[or]pussies[or]vaginas[or]clefts[at random][else][one of]cunt[or]pussy[or]vagina[or]cleft[at random][end if] as you are hit by an unexpected orgasm. The squeezing does not release fully as your wet hole[sfn] shrink[sfv] somewhat to better suit your new infection by becoming tighter.";
	[CUNT ADDITION/SUBSTRACTION]
	if Cunt Count of Player < Cunt Count entry and ( the sex entry is "Female" or the sex entry is "Both" ) and "Male Preferred" is not listed in feats of Player and singlesexadjust is not 2: [player currently male, single sexed]
		[adds cunt if player has less than the infection, no "Male Preferred" and no single sexed males]
		let prevcunt be Cunt Count of Player;
		if Player is not female or Cunt Depth of Player is 0 or Cunt Tightness of Player is 0:
			increase Cunt Count of Player by 1;
			now Cunt Depth of Player is 1;
			now Cunt Tightness of Player is 1;
			increase Cunt Depth of Player by ( Cunt Depth entry ) divided by 3;
			increase Cunt Tightness of Player by ( Cunt Tightness entry ) divided by 3;
			if "Modest Organs" is listed in feats of Player and Cunt Depth of Player > 8:
				now Cunt Depth of Player is 8;
			if "Modest Organs" is listed in feats of Player and Cunt Tightness of Player > 5:
				now Cunt Tightness of Player is 5;
		else if a random chance of 2 in 3 succeeds and "Just One" is not listed in feats of Player:	[2nd+ cunt at 67%]
			increase Cunt Count of Player by 1;
		if singlesexadjust is 2 and sex entry is "Both":	[male remains male if herm infection]
			now Cunt Count of Player is 0;
			now Cunt Depth of Player is 0;
			now Cunt Tightness of Player is 0;
		if prevcunt < Cunt Count of Player:		[did new cunt appear?]
			follow the cunt descr rule;
			say "Your groin throbs with intense sensations as a [descr] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] wetly forms, leaking along a thigh as you quiver.";
	if Cunt Count of Player is not 0 and ( the sex entry is "Male" or the sex entry is "Neuter" ) and "One Way" is not listed in feats of Player and singlesexadjust is not 3: [player currently female, single sexed]
		[removes cunt if player has 1+, no "One Way" and no single sexed females]
		let prevcunt be Cunt Depth of Player;
		let prevcunt2 be Cunt Tightness of Player;
		decrease Cunt Depth of Player by 1;
		decrease Cunt Depth of Player by Cunt Depth of Player divided by 3;
		decrease Cunt Tightness of Player by 1;
		decrease Cunt Tightness of Player by Cunt Tightness of Player divided by 4;
		if "Female Preferred" is listed in feats of Player or "Herm Preferred" is listed in feats of Player or "Always A Pussy" is listed in feats of Player:
			if Cunt Depth of Player < 5, now Cunt Depth of Player is 5;
			if Cunt Tightness of Player < 3, now Cunt Tightness of Player is 3;
		if (singlesexadjust is 1 or singlesexadjust is 3) and sex entry is "Male":	[female/herm becomes male if male infection]
			now Cunt Count of Player is 0;
			now Cunt Depth of Player is 0;
			now Cunt Tightness of Player is 0;
		if prevcunt > Cunt Depth of Player or prevcunt2 > Cunt Tightness of Player:		[did cunt actually shrink?]
			follow the cunt descr rule;
			say "Strange [one of]erotic tingles[or]cold waves[or]hot flashes[at random] run over your [if Cunt Count of Player > 1][one of]cunts[or]pussies[or]vaginas[or]clefts[at random] as they begin to shrink. They dwindle[else][one of]cunt[or]pussy[or]vagina[or]cleft[at random] as it begins to shrink. It dwindles[end if] in size, becoming [descr]. ";
			if Cunt Depth of Player < 1 or Cunt Tightness of Player < 1:
				say "With a sickening noise, you cease to be female all together.";
				remove womanhood from Player;
			else:
				say "[line break]";
		if Cunt Count of Player > 1 and a random chance of 2 in 5 succeeds and "All The Things" is not listed in feats of Player:
			say "An odd, wet noise has you peeking in time to see one of your [one of]cunts[or]pussies[at random] has vanished!";
			decrease Cunt Count of Player by 1;
			follow the cock descr rule;
			follow the cunt descr rule;
	else if Cunt Count of Player > Cunt Count entry and a random chance of 1 in 3 succeeds and "One Way" is not listed in feats of Player and (sex entry is "Female" or sex entry is "Both" ) and "All The Things" is not listed in feats of Player:
		[removes additional cunts if the player has more than the infection, no "One Way" and no "All the things"]
		say "An odd, wet noise has you peeking in time to see one of your [one of]cunts[or]pussies[at random] has vanished!";
		decrease Cunt Count of Player by 1;
	follow the cock descr rule;
	follow the cunt descr rule;
	now skipcockchange is false;
	if PronounChoice of Player is "Auto", follow the SetPlayerPronouns rule;

to grow cock by (x - a number):
	if "Female Preferred" is listed in feats of Player:
		continue the action;
	else if "Single Sexed" is listed in feats of Player and player is female:
		say "Strange [one of]erotic tingles[or]cold waves[or]hot flashes[at random] run over your [one of]cunt[sfn][or]puss[yfn][or]vagina[sfn][or]cleft[sfn][at random] as [ittheyf] begin[sfv] to shrink. [ItTheyf] dwindle[sfv] in size before vanishing with a sickening noise as you cease to be female all together.";
		remove womanhood from Player;
	let prevcock be Cock Length of Player;
	increase Cock Length of Player by a random number from 1 to x;
	if "Modest Organs" is listed in feats of Player and Cock Length of Player > 8:
		now Cock Length of Player is 8;
	if prevcock < Cock Length of Player:		[did cock actually grow?]
		follow the cock descr rule;
		say "You can see your [if Cock Count of Player is 1][one of]cock[or]penis[or]shaft[or]maleness[at random][else][one of]cocks[or]penises[or]shafts[or]malenesses[at random][end if] [one of]engorge[or]swell[or]throb[at random] as [if Cock Count of Player > 1]they gain[else]it gains[end if] in length, becoming [descr]!";
	if PronounChoice of Player is "Auto", follow the SetPlayerPronouns rule;

to grow balls by (x - a number):
	if "Female Preferred" is listed in feats of Player or Cock Count of Player is 0:
		continue the action;
	let prevcock be Ball Size of Player;
	increase Ball Size of Player by a random number from 1 to x;
	if "Modest Organs" is listed in feats of Player and Ball Size of Player > 5:
		now Ball Size of Player is 5;
	if prevcock < Ball Size of Player:		[did balls actually grow?]
		follow the cock descr rule;
		say "You can [if Player is internal]feel your internal[else]see your[end if] [one of]testicles[or]balls[or]orbs[or]nuts[at random] [one of]tingle[or]churn audibly[or]throb[at random] as they grow larger, [if Player is internal]body straining to abide this[else]your flesh growing taught with the[end if] expansion, leaving you with a [one of]pair[or]set[at random] of [Ball Size Adjective of Player] balls!";

Part 2 - Breast Change

This is the breast change rule:
	choose row MonsterID from the Table of Random Critters;
	let singlesexadjust be 0;
	if "Single Sexed" is listed in feats of Player:
		if Player is herm:
			let singlesexadjust be 1; [currently herm]
		else if Player is male:
			let singlesexadjust be 2; [currently male]
		else if Player is female:
			let singlesexadjust be 3; [currently female]
	if Player is FullyNewTypeInfected: [new parts]
		if Nipple Count of Player is not Nipple Count entry:
			decrease Breast Size of Player by 2;
			follow the breast descr rule;
			if ( Nipple Count entry > Nipple Count of Player and "One Pair" is not listed in feats of Player ) or ( Nipple Count of Player is 0 and Nipple Count entry > 0 ):
				say "Your chest tingles intensely as two new sensitive points form up, announcing the arrival of two new [descr] breasts, pressing out of your [Torso Adjective of Player] hide.";
				increase Nipple Count of Player by 2;
			else if Nipple Count entry < Nipple Count of Player and "Bouncy Bouncy" is not listed in feats of Player:
				decrease Nipple Count of Player by 2;
				say "You look down just in time to see two nipples, breasts included, be reabsorbed into your body, leaving nothing but your [Torso Adjective of Player] flesh behind.";
			increase Breast Size of Player by 2;
		if Nipple Count of Player is 0:
			increase score by 0; [do nothing]
		else if the sex entry is "Female" or the sex entry is "Both":
			if Breast Size of Player < Breast Size entry and ( ( "Male Preferred" is not listed in feats of Player and "Flat Chested" is not listed in feats of Player and singlesexadjust is not 2) or "Breasts" is listed in feats of Player ):
				follow the breast descr rule;
				let oldbreast be descr;
				say "You [one of]groan and grab at your chest as[or]give a loud moan, shuddering as[or]almost tip forward in surprise as[or]look down fearfully as a weird sensation builds and[at random] your [oldbreast] breasts ";
				increase Breast Size of Player by 1;
				increase Breast Size of Player by ( Breast Size entry minus Breast Size of Player ) divided by 3;
				follow the breast descr rule;
				say "become [descr] [one of]orbs[or]breasts[or]jugs[or]tits[at random]!";
			else if Breast Size of Player > Breast Size entry and "One Way" is not listed in feats of Player:
				follow the breast descr rule;
				let oldbreast be descr;
				say "You [one of]groan and grab at your chest as[or]give a loud moan, shuddering as[or]almost tip forward in surprise as[or]look down fearfully as a weird sensation builds and[at random] your [oldbreast] breasts ";
				decrease Breast Size of Player by 1;
				decrease Breast Size of Player by ( Breast Size of Player minus Breast Size entry ) divided by 3;
				follow the breast descr rule;
				say "become [descr] [one of]orbs[or]breasts[or]jugs[or]tits[at random]!";
		else if the sex entry is "Male":
			let breasttarget be male breast size entry;
			if "Breasts" is listed in feats of Player:
				if Male Breast Size entry is 0, now breasttarget is breast size entry;
			else if "Male Preferred" is listed in feats of Player or "Flat Chested" is listed in feats of Player or singlesexadjust is 2:
				now breasttarget is 0;
			if Breast Size of Player < breasttarget:
				follow the breast descr rule;
				let oldbreast be descr;
				say "You [one of]groan and grab at your chest as[or]give a loud moan, shuddering as[or]almost tip forward in surprise as[or]look down fearfully as a weird sensation builds and[at random] your [oldbreast] breasts ";
				increase Breast Size of Player by 1;
				increase Breast Size of Player by ( breasttarget minus Breast Size of Player ) divided by 3;
				follow the breast descr rule;
				say "become [descr] [one of]orbs[or]breasts[or]jugs[or]tits[at random]!";
			else if Breast Size of Player > breasttarget and "One Way" is not listed in feats of Player:
				follow the breast descr rule;
				let oldbreast be descr;
				say "You [one of]groan and grab at your chest as[or]give a loud moan, shuddering as[or]almost tip forward in surprise as[or]look down fearfully as a weird sensation builds and[at random] your [oldbreast] breasts ";
				decrease Breast Size of Player by 1;
				decrease Breast Size of Player by ( Breast Size of Player minus breasttarget ) divided by 3;
				follow the breast descr rule;
				say "become [descr] [one of]orbs[or]breasts[or]jugs[or]tits[at random]!";
		if PronounChoice of Player is "Auto", follow the SetPlayerPronouns rule;
	else: [old style]
		if Nipple Count of Player is not Nipple Count entry:
			decrease Breast Size of Player by 2;
			follow the breast descr rule;
			if ( Nipple Count entry > Nipple Count of Player and "One Pair" is not listed in feats of Player ) or ( Nipple Count of Player is 0 and Nipple Count entry > 0 ):
				say "Your chest tingles intensely as two new sensitive points form up, announcing the arrival of two new [descr] breasts, pressing out of your [Skin of Player] hide.";
				increase Nipple Count of Player by 2;
			else if Nipple Count entry < Nipple Count of Player and "Bouncy Bouncy" is not listed in feats of Player:
				decrease Nipple Count of Player by 2;
				say "You look down just in time to see two nipples, [descr] breasts included, be reabsorbed into your body, leaving nothing but [Skin of Player] flesh behind.";
			increase Breast Size of Player by 2;
		if Nipple Count of Player is 0:
			increase score by 0; [do nothing]
		else if the sex entry is "Female" or the sex entry is "Both":
			if Breast Size of Player < Breast Size entry and ( ( "Male Preferred" is not listed in feats of Player and "Flat Chested" is not listed in feats of Player ) or "Breasts" is listed in feats of Player ):
				[breast growth if smaller than infection size, and "Breasts" and NOT either "Male Preferred" or "Flat Chested"]
				follow the breast descr rule;
				let oldbreast be descr;
				say "You [one of]groan and grab at your chest[or]give a loud moan, shuddering[or]almost tip forward in surprise[or]look down fearfully as sensation builds[at random], [Skin of Player] skin glistening as your [oldbreast] breasts ";
				increase Breast Size of Player by 1;
				increase Breast Size of Player by ( Breast Size entry minus Breast Size of Player ) divided by 3;
				follow the breast descr rule;
				say "become [descr] [one of]orbs[or]breasts[or]jugs[or]tits[at random]!";
			else if Breast Size of Player > Breast Size entry and "One Way" is not listed in feats of Player:
				[breast shrinkage if bigger than infection size, and "One Way" not selected]
				follow the breast descr rule;
				let oldbreast be descr;
				say "You [one of]groan and grab at your chest[or]give a loud moan, shuddering[or]almost tip forward in surprise[or]look down fearfully as sensation builds[at random], [Skin of Player] skin glistening as your [oldbreast] breasts ";
				decrease Breast Size of Player by 1;
				decrease Breast Size of Player by ( Breast Size of Player minus Breast Size entry ) divided by 3;
				follow the breast descr rule;
				say "become [descr] [one of]orbs[or]breasts[or]jugs[or]tits[at random]!";
		else if the sex entry is "Male":
			let breasttarget be male breast size entry;
			if "Breasts" is listed in feats of Player: [pulls the female breast size if this feat is selected]
				if Male Breast Size entry is 0, now breasttarget is breast size entry;
			else if "Male Preferred" is listed in feats of Player or "Flat Chested" is listed in feats of Player:
				now breasttarget is 0;
			if Breast Size of Player < breasttarget:
				follow the breast descr rule;
				let oldbreast be descr;
				say "You [one of]groan and grab at your chest[or]give a loud moan, shuddering[or]almost tip forward in surprise[or]look down fearfully as sensation builds[at random], [Skin of Player] skin glistening as your [oldbreast] breasts ";
				increase Breast Size of Player by 1;
				increase Breast Size of Player by ( breasttarget minus Breast Size of Player ) divided by 3;
				follow the breast descr rule;
				say "become [descr] [one of]orbs[or]breasts[or]jugs[or]tits[at random]!";
			else if Breast Size of Player > breasttarget and "One Way" is not listed in feats of Player:
				follow the breast descr rule;
				let oldbreast be descr;
				say "You [one of]groan and grab at your chest[or]give a loud moan, shuddering[or]almost tip forward in surprise[or]look down fearfully as sensation builds[at random], [Skin of Player] skin glistening as your [oldbreast] breasts ";
				decrease Breast Size of Player by 1;
				decrease Breast Size of Player by ( Breast Size of Player minus breasttarget ) divided by 3;
				follow the breast descr rule;
				say "become [descr] [one of]orbs[or]breasts[or]jugs[or]tits[at random]!";
		if PronounChoice of Player is "Auto", follow the SetPlayerPronouns rule;

To grow breasts by (x - a number):
	if "Flat Chested" is listed in feats of Player or Breast Size of Player >= 26:
		continue the action;
	follow the breast descr rule;
	let oldbreast be descr;
	say "You [one of]groan and grab at your chest[or]give a loud moan, shuddering[or]almost tip forward in surprise[or]look down fearfully as sensation builds[at random], [Skin of Player] skin glistening as your [oldbreast] breasts ";
	increase Breast Size of Player by a random number from 1 to x;
	if Breast Size of Player > 26, now Breast Size of Player is 26;
	follow the breast descr rule;
	say "become [descr] [one of]orbs[or]breasts[or]jugs[or]tits[at random]!";
	if PronounChoice of Player is "Auto", follow the SetPlayerPronouns rule;

Part 3 - Infect Code

To Infect:
	choose row MonsterID from the Table of Random Critters;
	if there is no Name entry or ( there is a non-infectious in row MonsterID of Table of Random Critters and non-infectious entry is true):
		continue the action;
	if ( scenario is "Researcher" or nanite collector is equipped ) and ( there is no resbypass in row MonsterID of Table of Random Critters or resbypass entry is false ):
		vialchance Name entry;
	if scenario is "Researcher" and researchbypass is 0 and ( there is no resbypass in row MonsterID of the Table of Random Critters or resbypass entry is false ):
		continue the action;
	if NewTypeInfection entry is true and NewTypeInfectionActive is true:
		if debugactive is 1:
			say "DEBUG -> New Style Infection with [Name entry][line break]";
		NewInfectionRoll;
	else:
		if debugactive is 1:
			say "DEBUG -> Old Style Infection with [Name entry][line break]";
		OldInfectionRoll;
	if "Mutable" is listed in feats of Player and a random chance of 1 in 2 succeeds:		[** Repeat of above code for physical change]
		OldInfectionRoll;
	let x be a random number from 1 to 6;
	if "Mighty Mutation" is not listed in feats of Player:
		now x is 0;
	if x is 1:
		if strength of Player is not str entry:
			if strength of Player > str entry and a random chance of 1 in 10 succeeds:
				if "Bestial Power" is not listed in feats of Player:
					if "Mighty Mutation" is listed in feats of Player and a random chance of 1 in 2 succeeds:
						now x is 0; [do nothing placeholder]
					else:
						say "Your muscles feel weaker as the infection spreads through you.";
						decrease strength of Player by 1;
						decrease capacity of Player by 5;
			if strength of Player < str entry:
				say "You feel your muscles swelling with [Name entry] [one of]strength[or]physique[or]power[at random].";
				increase strength of Player by 1;
				increase capacity of Player by 5;
	if x is 2:
		if Intelligence of Player is not Int entry:
			if Intelligence of Player > Int entry and a random chance of 1 in 10 succeeds:
				if "Bestial Power" is not listed in feats of Player:
					if "Mighty Mutation" is listed in feats of Player and a random chance of 1 in 2 succeeds:
						now x is 0; [do nothing placeholder]
					else:
						say "Your head aches as the infection spreads through you.";
						decrease Intelligence of Player by 1;
			if Intelligence of Player < Int entry:
				say "You feel your mind swelling with [Name entry] [one of]Intelligence[or]wit[or]complexity[at random].";
				increase Intelligence of Player by 1;
	if x is 3:
		if Dexterity of Player is not Dex entry:
			if Dexterity of Player > Dex entry and a random chance of 1 in 10 succeeds:
				if "Bestial Power" is not listed in feats of Player:
					if "Mighty Mutation" is listed in feats of Player and a random chance of 1 in 2 succeeds:
						now x is 0; [do nothing placeholder]
					else:
						say "Your coordination feels weaker as the infection spreads through you.";
						decrease Dexterity of Player by 1;
			if Dexterity of Player < Dex entry:
				say "You feel your hand eye coordination swelling with [Name entry] [one of]Dexterity[or]physique[or]accuracy[at random].";
				increase Dexterity of Player by 1;
	if x is 4:
		if Stamina of Player is not Sta entry:
			if Stamina of Player > Sta entry and a random chance of 1 in 10 succeeds:
				if "Bestial Power" is not listed in feats of Player:
					if "Mighty Mutation" is listed in feats of Player and a random chance of 1 in 2 succeeds:
						now x is 0; [do nothing placeholder]
					else:
						say "Your constitution feels weaker as the infection spreads through you.";
						decrease Stamina of Player by 1;
				if remainder after dividing stamina of Player by 2 is 1:
					decrease maxHP of Player by level of Player plus 1;
			if Stamina of Player < Sta entry:
				say "You feel your body toughening with [Name entry] [one of]Stamina[or]physique[or]power[at random].";
				increase Stamina of Player by 1;
				if remainder after dividing stamina of Player by 2 is 0:
					increase maxHP of Player by level of Player plus 1;
	if x is 5:
		if Perception of Player is not Per entry:
			if Perception of Player > Per entry and a random chance of 1 in 10 succeeds:
				if "Bestial Power" is not listed in feats of Player:
					if "Mighty Mutation" is listed in feats of Player and a random chance of 1 in 2 succeeds:
						now x is 0; [do nothing placeholder]
					else:
						say "Your senses dull as the infection spreads through you.";
						decrease Perception of Player by 1;
			if Perception of Player < Per entry:
				say "You feel your senses swelling with [Name entry] [one of]Perception[or]aptitude[or]feral attention[at random].";
				increase Perception of Player by 1;
	if x is 6:
		if Charisma of Player is not Cha entry:
			if Charisma of Player > Cha entry and a random chance of 1 in 10 succeeds:
				if "Bestial Power" is not listed in feats of Player:
					if "Mighty Mutation" is listed in feats of Player and a random chance of 1 in 2 succeeds:
						now x is 0; [do nothing placeholder]
					else:
						say "You feel more isolated as the infection spreads through you.";
						decrease Charisma of Player by 1;
			if Charisma of Player < Cha entry:
				say "You feel your social sense swelling with [Name entry] [one of]Charisma[or]natural charm[or]pheromones[at random].";
				increase Charisma of Player by 1;
	if Libido of Player < libido entry:
		let oldlib be Libido of Player;
		increase Libido of Player by 1;
		increase Libido of Player by ( libido entry minus Libido of Player ) divided by 3;
		if oldlib < 80 and Libido of Player > 79:
			say "You now have trouble thinking of anything but sexual satisfaction![no line break][if Player is male] Your cock[smn] [ismv] fully erect constantly and drool[smv] precum steadily.[no line break][end if][if Player is female] Your cunt[sfn] overflow[sfv] with hot juices that run down your thighs.[no line break][end if][line break]";
		else if oldlib < 50 and Libido of Player > 49:
			say "Your thoughts have sunk to almost constant depravity![no line break][if Player is male] Your cock[smn] remain[smv] perpetually hard and leaking precum.[no line break][end if][if Player is female] Your cunt[sfn] [isfv] hot and dripping juices as your arousal builds.[no line break][end if][line break]";

To Infect (x - text):
	if scenario is "Researcher" and researchbypass is 0:
		vialchance x;
		continue the action;
	repeat with y running from 1 to number of filled rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		if Name entry exactly matches the text x, case insensitively:
			if BannedStatus entry is true: [banned creatures can't infect]
				if debugactive is 1:
					say "DEBUG -> Can't infect with creature [Name entry] because it has Banned: [BannedStatus entry][line break]";
				break;
			else:
				now MonsterID is y;
				let reset be 0;
				if researchbypass is 1 and non-infectious entry is true:
					now reset is 1;
					now non-infectious entry is false;
				infect;
				if reset is 1:
					now non-infectious entry is true;
				break;

to OldInfectionRoll: [old infections with less body parts made before 07.05.2019]
	choose row MonsterID from the Table of Random Critters;
	let x be a random number from 1 to 5;
	let bodyparts be { 1, 2, 3, 4, 5 };
	sort bodyparts in random order;
	let found be 0;
	repeat with y running through bodyparts:
		now x is y;
		if y is 1:
			if SkinName of Player is Name entry:
				next;
			else:
				now found is 1;
				break;
		if y is 2:
			if FaceName of Player is Name entry:
				next;
			else:
				now found is 1;
				break;
		if y is 3:
			if TailName of Player is Name entry:
				next;
			else:
				now found is 1;
				break;
		if y is 4:
			if BodyName of Player is Name entry:
				next;
			else:
				now found is 1;
				break;
		if y is 5:
			if CockName of Player is Name entry:
				next;
			else:
				now found is 1;
				break;
	if found is 0:
		now x is 4;
	if "Resistant" is listed in feats of Player and a random chance of 1 in 3 succeeds:
		now x is 6; [33% chance of no mutation]
		if x is 6:
			say "Your nanites['] programmed resistance to change prevents further mutation.";
			continue the action;
	if "Microwaved" is listed in feats of Player:
		say "WARNING: [Name entry] nanites detected!";
		if x is 1:
			say "Skin infection imminent";
		if x is 2:
			say "Head infection imminent";
		if x is 3:
			say "Posterior infection imminent";
		if x is 4:
			say "Torso infection imminent";
		if x is 5:
			say "Genital infection imminent";
		say ", Allow?";
		if Player consents:
			say "OK.";
		else:
			say "You wave a tiny microwave transmitter over the affected area. Ahhh, all clean!";
			stop the action;
	if x is 1: [skin]
		if SkinName of Player is not Name entry:
			say "Your skin [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [skin change entry].";
			now SkinName of Player is Name entry;
			if Species Name entry is not "":
				now SkinSpeciesName of Player is Species Name entry;
			else:
				now SkinSpeciesName of Player is Name entry;
			now Skin of Player is skin entry;
	if x is 2: [face]
		if FaceName of Player is not Name entry:
			say "Your face [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [face change entry].";
			now FaceName of Player is Name entry;
			if Species Name entry is not "":
				now FaceSpeciesName of Player is Species Name entry;
			else:
				now FaceSpeciesName of Player is Name entry;
			now Face of Player is face entry;
			now HeadName of Player is ""; [wiping out the new style parts]
			now HeadSpeciesName of Player is ""; [wiping out the new style parts]
	if x is 3: [tail]
		if TailName of Player is not Name entry:
			say "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [ass change entry].";
			now TailName of Player is Name entry;
			if Species Name entry is not "":
				now TailSpeciesName of Player is Species Name entry;
			else:
				now TailSpeciesName of Player is Name entry;
			now tail of Player is tail entry;
			now AssName of Player is ""; [wiping out the new style parts]
			now AssSpeciesName of Player is ""; [wiping out the new style parts]
	if x is 4: [body]
		follow the breast change rule;
		if BodyName of Player is not Name entry:
			say "Your [one of][bodytype of Player] [or][bodydesc of Player] [or][bodydesc of Player] [or][bodytype of Player] [or][at random]body [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [body change entry].";
			now BodyName of Player is Name entry;
			if Species Name entry is not "":
				now BodySpeciesName of Player is Species Name entry;
			else:
				now BodySpeciesName of Player is Name entry;
			now Body of Player is body entry;
			now TorsoName of Player is ""; [wiping out the new style parts]
			now TorsoSpeciesName of Player is ""; [wiping out the new style parts]
			now BackName of Player is ""; [wiping out the new style parts]
			now BackSpeciesName of Player is ""; [wiping out the new style parts]
			now LegsName of Player is ""; [wiping out the new style parts]
			now LegsSpeciesName of Player is ""; [wiping out the new style parts]
			now ArmsName of Player is ""; [wiping out the new style parts]
			now ArmsSpeciesName of Player is ""; [wiping out the new style parts]
		attributeinfect; [sets the new attributes]
		follow the sex change rule;
		say "[line break]";
	if x is 5: [genitals]
		follow the sex change rule;
		if CockName of Player is not Name entry:
			if Player is male, say "Your groin [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [cock change entry].";
			now CockName of Player is Name entry;
			if Species Name entry is not "":
				now CockSpeciesName of Player is Species Name entry;
			else:
				now CockSpeciesName of Player is Name entry;
			now Cock of Player is cock entry;
			now Cock Description of Player is ""; [wiping out the new style parts]
			now Cunt Description of Player is ""; [wiping out the new style parts]
			if Name entry is listed in infections of InternalCockList and internalbypass is true:
				say "[italic type]...After some time, it appears that your balls re-emerge, in spite of this strain's normally internal anatomy.[roman type][line break]";

to NewInfectionRoll:
	choose row MonsterID from the Table of Random Critters;
	let MonsterName be name entry;
	choose a row with name of MonsterName in the Table of New Infection Parts;
	let x be 0;
	let bodyparts be { 1, 2, 3, 4, 5, 6, 7, 8, 9 };
	sort bodyparts in random order;
	let found be 0;
	repeat with y running through bodyparts:
		now x is y;
		if y is 1:
			if HeadName of Player is Name entry:
				next;
			else:
				now found is 1;
				break;
		else if y is 2:
			if TorsoName of Player is Name entry:
				next;
			else:
				now found is 1;
				break;
		else if y is 3:
			if BackName of Player is Name entry:
				next;
			else:
				now found is 1;
				break;
		else if y is 4:
			if ArmsName of Player is Name entry:
				next;
			else:
				now found is 1;
				break;
		else if y is 5:
			if LegsName of Player is Name entry:
				next;
			else:
				now found is 1;
				break;
		else if y is 6:
			if AssName of Player is Name entry:
				next;
			else:
				now found is 1;
				break;
		else if y is 7:
			if TailName of Player is Name entry:
				next;
			else:
				now found is 1;
				break;
		else if y is 8:
			if CockName of Player is Name entry:
				next;
			else:
				now found is 1;
				break;
		else if y is 9:
			if CuntName of Player is Name entry:
				next;
			else:
				now found is 1;
				break;
	if found is 0:
		now x is 2;
	if "Resistant" is listed in feats of Player and a random chance of 1 in 3 succeeds:
		now x is 10; [33% chance of no mutation]
		if x is 10:
			say "Your nanites['] programmed resistance to change prevents further mutation.";
			continue the action;
	if "Microwaved" is listed in feats of Player:
		say "WARNING: [Name entry] nanites detected!";
		if x is:
			-- 1:
				say "Head infection imminent";
			-- 2:
				say "Torso infection imminent";
			-- 3:
				say "Back infection imminent";
			-- 4:
				say "Arms infection imminent";
			-- 5:
				say "Legs infection imminent";
			-- 6:
				say "Ass infection imminent";
			-- 7:
				say "Tail infection imminent";
			-- 8:
				say "Masculine genital infection imminent";
			-- 9:
				say "Feminine genital infection imminent";
		say ", Allow?";
		if Player consents:
			say "OK.";
		else:
			say "You wave a tiny microwave transmitter over the affected area. Ahhh, all clean!";
			stop the action;
	if x is 1: [head]
		if HeadName of Player is not Name entry:
			say "Your [Head Adjective of Player] head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Head Change entry].";
			now HeadName of Player is Name entry;
			if Species Name entry is not "":
				now HeadSpeciesName of Player is Species Name entry;
			else:
				now HeadSpeciesName of Player is Name entry;
			now Head Description of Player is Head Description entry;
			now Head Adjective of Player is Head Adjective entry;
			now Head Skin Adjective of Player is Head Skin Adjective entry;
			now Head Color of Player is Head Color entry;
			now Head Adornments of Player is Head Adornments entry;
			now Eye Adjective of Player is Eye Adjective entry;
			now Mouth Length of Player is Mouth Length entry;
			now Mouth Circumference of Player is Mouth Circumference entry;
			now Tongue Adjective of Player is Tongue Adjective entry;
			now Tongue Color of Player is Tongue Color entry;
			now Tongue Length of Player is Tongue Length entry;
			if Player is conformist: [full change]
				now Eye Color of Player is Eye Color entry;
				now Hair Length of Player is Hair Length entry;
				now Hair Shape of Player is Hair Shape entry;
				now Hair Style of Player is Hair Style entry;
				now Beard Style of Player is Beard Style entry;
				now Hair Color of Player is Hair Color entry;
		[setting the old parts too, as old infections will compare to these]
		if FaceName of Player is not Name entry:
			choose row MonsterID from the Table of Random Critters;
			now FaceName of Player is Name entry;
			if Species Name entry is not "":
				now FaceSpeciesName of Player is Species Name entry;
			else:
				now FaceSpeciesName of Player is Name entry;
			now Face of Player is face entry;
	else if x is 2: [Torso]
		follow the breast change rule;
		if TorsoName of Player is not Name entry:
			say "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry].";
			now TorsoName of Player is Name entry;
			if Species Name entry is not "":
				now TorsoSpeciesName of Player is Species Name entry;
			else:
				now TorsoSpeciesName of Player is Name entry;
			now Torso Description of Player is Torso Description entry;
			now Torso Adjective of Player is Torso Adjective entry;
			now Torso Adornments of Player is Torso Adornments entry;
			now Torso Skin Adjective of Player is Torso Skin Adjective entry;
			now Torso Color of Player is Torso Color entry;
			now Torso Pattern of Player is Torso Pattern entry;
			now Body Hair Length of Player is Body Hair Length entry;
			now Breast Adjective of Player is Breast Adjective entry;
			now Nipple Color of Player is Nipple Color entry;
			now Nipple Shape of Player is Nipple Shape entry;
			if Player is conformist: [full change]
				now Body Weight of Player is Body Weight entry;
				now Body Definition of Player is Body Definition entry;
				now Androginity of Player is Androginity entry;
		attributeinfect; [sets the new attributes]
		follow the sex change rule;
		say "[line break]";
		[setting the old parts too, as old infections will compare to these]
		if BodyName of Player is not Name Entry:
			choose row MonsterID from the Table of Random Critters;
			now BodyName of Player is Name entry;
			if Species Name entry is not "":
				now BodySpeciesName of Player is Species Name entry;
			else:
				now BodySpeciesName of Player is Name entry;
			now Body of Player is body entry;
		if SkinName of Player is not Name Entry:
			choose row MonsterID from the Table of Random Critters;
			now SkinName of Player is Name entry;
			if Species Name entry is not "":
				now SkinSpeciesName of Player is Species Name entry;
			else:
				now SkinSpeciesName of Player is Name entry;
			now Skin of Player is skin entry;
	else if x is 3: [Back]
		if BackName of Player is not Name entry:
			if Back Adornments entry is not "": [no adornments, no message]
				say "Your back [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Back Change entry].";
			now Back Adornments of Player is Back Adornments entry;
			now BackName of Player is Name entry;
			if Species Name entry is not "":
				now BackSpeciesName of Player is Species Name entry;
			else:
				now BackSpeciesName of Player is Name entry;
			now Back Skin Adjective of Player is Back Skin Adjective entry;
			now Back Color of Player is Back Color entry;
		[setting the old parts too, as old infections will compare to these]
		if SkinName of Player is not Name Entry:
			choose row MonsterID from the Table of Random Critters;
			now SkinName of Player is Name entry;
			if Species Name entry is not "":
				now SkinSpeciesName of Player is Species Name entry;
			else:
				now SkinSpeciesName of Player is Name entry;
			now Skin of Player is skin entry;
	else if x is 4: [Arms]
		if ArmsName of Player is not Name entry:
			say "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry].";
			now ArmsName of Player is Name entry;
			if Species Name entry is not "":
				now ArmsSpeciesName of Player is Species Name entry;
			else:
				now ArmsSpeciesName of Player is Name entry;
			now Arms Description of Player is Arms Description entry;
			now Arms Skin Adjective of Player is Arms Skin Adjective entry;
			now Arms Color of Player is Arms Color entry;
		[setting the old parts too, as old infections will compare to these]
		if SkinName of Player is not Name Entry:
			choose row MonsterID from the Table of Random Critters;
			now SkinName of Player is Name entry;
			if Species Name entry is not "":
				now SkinSpeciesName of Player is Species Name entry;
			else:
				now SkinSpeciesName of Player is Name entry;
			now Skin of Player is skin entry;
	else if x is 5: [Legs]
		if LegsName of Player is not Name entry:
			say "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry].";
			now LegsName of Player is Name entry;
			if Species Name entry is not "":
				now LegsSpeciesName of Player is Species Name entry;
			else:
				now LegsSpeciesName of Player is Name entry;
			now Legs Description of Player is Legs Description entry;
			now Legs Skin Adjective of Player is Legs Skin Adjective entry;
			now Legs Color of Player is Legs Color entry;
			now Locomotion of Player is Locomotion entry;
		[setting the old parts too, as old infections will compare to these]
		if SkinName of Player is not Name Entry:
			choose row MonsterID from the Table of Random Critters;
			now SkinName of Player is Name entry;
			if Species Name entry is not "":
				now SkinSpeciesName of Player is Species Name entry;
			else:
				now SkinSpeciesName of Player is Name entry;
			now Skin of Player is skin entry;
	else if x is 6: [Ass]
		if AssName of Player is not Name entry:
			say "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry].";
			now AssName of Player is Name entry;
			if Species Name entry is not "":
				now AssSpeciesName of Player is Species Name entry;
			else:
				now AssSpeciesName of Player is Name entry;
			now Ass Description of Player is Ass Description entry;
			now Ass Skin Adjective of Player is Ass Skin Adjective entry;
			now Ass Color of Player is Ass Color entry;
			now Ass Width of Player is Ass Width entry;
			now Asshole Color of Player is Asshole Color entry;
			now Asshole Depth of Player is Asshole Depth entry;
			if Player is conformist:
				now Asshole Tightness of Player is Asshole Tightness entry;
				say "Your asshole quivers as it becomes [Asshole Tightness Adjective of Player].";
		[setting the old parts too, as old infections will compare to these]
		if SkinName of Player is not Name Entry:
			choose row MonsterID from the Table of Random Critters;
			now SkinName of Player is Name entry;
			if Species Name entry is not "":
				now SkinSpeciesName of Player is Species Name entry;
			else:
				now SkinSpeciesName of Player is Name entry;
			now Skin of Player is skin entry;
	else if x is 7: [Tail]
		if TailName of Player is not Name entry:
			if Tail Change entry is not "": [no tail, no message]
				say "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if Player is HasTail]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if].";
			now TailName of Player is Name entry;
			if Species Name entry is not "":
				now TailSpeciesName of Player is Species Name entry;
			else:
				now TailSpeciesName of Player is Name entry;
			now Tail Description of Player is Tail Description entry;
			now Tail Skin Adjective of Player is Tail Skin Adjective entry;
			now Tail Color of Player is Tail Color entry;
			[setting the old parts too, as old infections will compare to these]
			choose row MonsterID from the Table of Random Critters;
			now tail of Player is tail entry;
	else if x is 8:
		follow the sex change rule;
		if CockName of Player is not Name entry:
			if Player is male, say "Your cock [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [cock change entry].";
			now CockName of Player is Name entry;
			if Species Name entry is not "":
				now CockSpeciesName of Player is Species Name entry;
			else:
				now CockSpeciesName of Player is Name entry;
			now Cock Description of Player is Cock Description entry;
			now Cock Adjective of Player is Cock Adjective entry;
			now Cock Color of Player is Cock Color entry;
			now Ball Count of Player is Ball Count entry;
			[setting the old parts too, as old infections will compare to these]
			choose row MonsterID from the Table of Random Critters;
			now Cock of Player is Cock Adjective entry;
			if Name entry is listed in infections of InternalCockList and internalbypass is true:
				say "[italic type]...After some time, it appears that your balls re-emerge, in spite of this strain's normally internal anatomy.[roman type][line break]";
	else if x is 9:
		follow the sex change rule;
		if Cuntname of Player is not Name entry:
			if Player is female, say "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry].";
			now CuntName of Player is Name entry;
			if Species Name entry is not "":
				now CuntSpeciesName of Player is Species Name entry;
			else:
				now CuntSpeciesName of Player is Name entry;
			now Cunt Description of Player is Cunt Description entry;
			now Cunt Adjective of Player is Cunt Adjective entry;
			now Cunt Color of Player is Cunt Color entry;
			now Clit Size of Player is Clit Size entry;

to attributeinfect:
	attributeinfect silence state is 0;

to attributeinfect silently:
	attributeinfect silence state is 1;

to attributeinfect silence state is ( Silence - a number ): [sets the player values from the new attributes]
	choose row MonsterID from the Table of Random Critters;
	if BodyName of Player is listed in infections of TaurList or BodyName of Player is listed in infections of NoLegList:
		repeat with z running through equipped equipment:
			if taur-compatible of z is false:
				if Silence is 0:
					say "     [bold type]Sadly, the [z] [if plural of z is true]are incompatible with your new body type, so you can do nothing but take them off[else]is incompatible with your new body type, so you can do nothing but take it off[end if].[roman type][line break]";
				now z is not equipped;
	if there is a scale in row MonsterID of the Table of Random Critters:
		if scalevalue of Player is not scale entry:
			now scalevalue of Player is scale entry;
			repeat with z running through equipped equipment:
				if size of z > 0: [size restricted equipment]
					if (scalevalue of Player - size of z > 1):
						if Silence is 0:
							say "     [bold type]You quickly rip your [z] off your body before [if plural of z is true]they are destroyed when you grow larger than they could support[else]it is destroyed when you grow larger than it could support[end if].[roman type][line break]";
						now z is not equipped;
					else if (scalevalue of Player - size of z is 1):
						if Silence is 0:
							say "     [bold type]Your [z] stretches a bit as it is forced to conform to a larger body.[roman type][line break]";
					else if (scalevalue of Player - size of z < -1):
						if Silence is 0:
							say "     [bold type]As you shrink, [z] becomes far too big to fit you. You have little choice but to take [if plural of z is true]them[else]it[end if] off.[roman type][line break]";
						now z is not equipped;
					else if (scalevalue of Player - size of z is -1):
						if Silence is 0:
							say "     [bold type]Your [z] hangs fairly on your now smaller frame.[roman type][line break]";
	else:
		now scalevalue of Player is 3;
	if there is a body descriptor in row MonsterID of the Table of Random Critters:
		now bodydesc of Player is body descriptor entry;
	else:
		now bodydesc of Player is Name entry;
	if there is a type in row MonsterID of the Table of Random Critters:
		now bodytype of Player is type entry;
	else:
		now bodytype of Player is Name entry;
	if DayCycle entry is 2:
		now SleepRhythm of Player is 2; [night-preferred]
	if DayCycle entry is 1:
		now SleepRhythm of Player is 1; [day-preferred]
	else:
		now SleepRhythm of Player is 0; [standard]

Part 4 - Random Infections

to randominfect: [bypasses researcher protection]
	now researchbypass is 1;
	weakrandominfect;
	now researchbypass is 0;

[
to randomInfect:
	let RandomRow be a random number from 1 to the number of rows in the Table of Random Critters;
	choose row RandomRow from the Table of Random Critters;
	while area entry is "Nowhere": [runs circles until it finds an available creature]
		now RandomRow is a random number from 1 to the number of rows in the Table of Random Critters;
		choose row RandomRow from the Table of Random Critters;
	infect Name entry;
]

to weakrandominfect: [does not bypass researcher protection]
	sort Table of Random Critters in random order;
	now MonsterID is 1;
	choose row MonsterID from Table of Random Critters;
	while there is a non-infectious in row MonsterID of Table of Random Critters and (non-infectious entry is true or area entry is "Nowhere"):
		increase MonsterID by 1; [checking the next creature]
		choose row MonsterID from Table of Random Critters; [selecting the next row]
		if there is a non-infectious in row MonsterID of Table of Random Critters and (non-infectious entry is true or area entry is "Nowhere"):
			next;
		if BannedStatus entry is true: [banned creatures can't be used to infect]
			if debugactive is 1:
				say "DEBUG -> Can't infect with creature [Name entry] because it has Banned: [BannedStatus entry][line break]";
			next;
		break;
	choose row MonsterID from Table of Random Critters;
	if non-infectious entry is false and area entry is not "Nowhere": [last check that it selected something fitting]
		infect;

Part 5 - SetMonster Function

to setmonster ( x - text ):
	setmonster x silence state is 0;

to setmonster ( x - text ) silently: [suppresses the debug output]
	setmonster x silence state is 1;

to setmonster ( x - text ) silence state is (Silence - a number): [puts an infection (named x) as lead monster for later use]
	let found be 0;
	choose row MonsterID in the Table of Random Critters;
	if Name entry exactly matches the text x, case insensitively:
		now found is 1;
	else:
		repeat with y running from 1 to number of filled rows in Table of Random Critters:
			choose row y in Table of Random Critters;
			if Name entry exactly matches the text x, case insensitively:
				now found is 1;
				now MonsterID is y;
				break;
	if found is 0:
		say "ERROR - Creature '[x]' not found. (setmonster)[line break]";
	else if debugactive is 1 and Silence is 0:
		say "DEBUG: Current [']monster['] set to: [MonsterID] = [Name entry][line break]";

Part 10 - Infection Overview Terminal

Instead of examining the infection terminal:
	say "     Looking at the terminal, you see a lot of text on its screen. If you want, you can select a category and read it.";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Infections";
	now sortorder entry is 1;
	now description entry is "Check out the list of known infections";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Credits";
	now sortorder entry is 2;
	now description entry is "Check out the 'Credits', whatever that may be";
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
				if (nam is "Infections"):
					say "[TerminalInfections]";
				else if (nam is "Credits"):
					say "[TerminalCredits]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You turn away from the terminal.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say TerminalInfections:
	let z be 0;
	sort Table of Random Critters in lev order;
	repeat with X running from 1 to number of filled rows in Table of Random Critters:
		choose row X from the Table of Random Critters;
		if there is a lev entry:
			increase z by 1;
			say "[Name entry]: Danger Level: [lev entry], Typical Environment: [area entry][line break]";
			if z is 15:
				[say "Press any key to continue.";] [unneeded with 'more' link]
				WaitLineBreak;
				now z is 0;
	say "End Infection list.[line break]";
	wait for any key; [don't apply waiterhater, used to separate monsters from credits]

to say TerminalCredits:
	say "[complete list of extension credits]";



Infections ends here.
