Version 1 of Andrew by Stripes begins here.
"Adds a primarily M/M Wolf NPC named Andrew to the Flexible Survival game"


Section 1 - Private Booths

Private Booths is a room.  Private Booths is east of PALOMINO.  The description of Private Booths is "     Looking around the shadowy, semi-private booths in this corner of the club, you spot several signs of patrons having used them for some fun.  Many of the vinyl padded seats of the booths, and even some of the round tables, have large splatters of cum on them.  While the booths themselves look rather new, it's clear that they've suffered a lot of wear recently, with fresh claw marks in the wood and cushions alike from mutated patrons in the throws of lustful passion.".

instead of sniffing Private Booths:
	say "The booths smell strongly of male lust of numerous varieties, though wolf is definitely omnipresent in the air in this area.";


Section 2 - Andrew

Andrew is a man.  Andrew is in Private Booths.
The description of Andrew is "     [one of]S[or]Adjusting the sizable bulge in his pants while s[or]Watching the guys on the dance floor while s[or]Sipping idly at a drink while s[or]Rubbing the large bulge in his black cargo pants as a particularly sex ass walks past him while he's s[or]S[as decreasingly likely outcomes]itting in the cornermost booth, this black furred wolf bobs his head to the beat.  The fellow is of average height and build, but has a considerably lupine body.  His arms end in pawlike hands and his legs have become digitigrade, though his wolf tail seems longer than those of others you've seen.  He's going topless, wearing only a pair of black cargo pants held up by a rainbow belt.  Below that brightly coloured belt is a very sizable bulge that draws your eyes before you notice your staring and look back up at his face.  Having noticed your glance, his mischevious violet eyes look you over through his shaggy headfur as his ears perk in your direction and he gives you a lupine smile while twirling a fingertip in one of the messy splatters of white goo on the table at this particularly sticky booth.".
The conversation of Andrew is { "Sex?" }

instead of sniffing the Andrew:
	say "Andrew is saturated with the scent of male lust, both his and that of many others.";

Instead of conversing the Andrew:
	if hp of Andrew is 0:
		now hp of Andrew is 1;
		say "     The wolf's tail swishes slowly as he smiles up at you.  'Well, hey there[if cocks of player > 0 and cunts of player is 0], cute stuff[otherwise if cocks of player > 0], sweetie[end if],' he says with a slightly effeminate voice.  'I don't think we've had a chance to talk yet.  I'm Andrew,' he says, offering you his paw.  Deciding to be polite, you give it a quick shake.  'I kinda work here.  Strictly volunteer, you see, helping to keep everyone's morale up in these troubled times.  There are so many poor guys out there with strange changes.  Powerful, new urges they can't cope with.  And so here I am, ready and willing to help,' he chuckles in his soft voice while spreading his arms wide, almost knocking over the last of his black beer.  'Eep!  Almost lost my fine brew there,' he says, finishing it off.";
		if cocks of player > 0:
			say "     'So, care to join me in seeking a little relief from the stresses of this crazy city of ours?' he says, eying your crotch as he slides his long tongue along the inside of his glass to get the last few drops.  He smiles mischeviously as his violet eyes watch your reaction to his teasing tonguework.";
	otherwise if cocks of player > 0:
		say "[randombodypart]";
		say "     [one of]'Are you having a good time?'[or]'Grab a drink from the bar and let's chat.'[or]'Looking for a little fun, sweetie?' he asks softly.[or]'Looking to snuggle with this big, bad wolf,' he teases, rubbing his crotch.[or]'Need a little stress relief, honey.'[or]'I've been hanging out at this club since before the outbreak and I like it even better now.'  He leans a little closer.  'Being able to fuck here in my booth is much more fun.'[or]'Mmm... what's say you snuggle up in here beside me,' he says with his vaguely feminine voice while sliding a finger slowly through one of the sticky puddles of cum on the table before licking it away from his fingertip.[or]'Have you tried the [']Black Wolf Beer[']?  I help Harold make it,' he says, rubbing his bulging crotch.  'I highly recommend it.'[or]'Look at the set of buns on that one,' he giggles.  'Mm-Mm-Mmmm...'[or]'So what have you b...' he starts to ask, but trails off as a sexy [bodyselector] with a big cock walks into view.[or]You and the wolf chat, but it constantly devolves into him commenting on the sexual prowess of the various guys around the club as he spots them and waves.  Noticing your frustration at his constant distraction, he gives you a hug and a grope.  'I'm sorry, hon.  It's just tough being popular sometimes,' he says with an exaggerated sigh, before giving a girlish giggle and nipping you playfully.  He becomes more attentive, at least long enough to finish your conversation.[in random order]";
	otherwise:
		say "[randombodypart]";
		say "     [one of]'Are you having a good time?'[or]'Grab a drink from the bar and let's chat.'[or]'I've been hanging out this club since before the outbreak and I like it even better now.'  He leans a little closer.  'Being able to fuck here in my booth is much more fun.'
[or]'You should head onto the dance floor and have some fun,' he says with his vaguely feminine voice while sliding a finger slowly through the sticky puddles of cum on the table, drawing various dicks before licking the rest from his fingertip.[or]'Have you tried the [']Black Wolf Beer[']?  I help Harold make it,' he says, rubbing his bulging crotch.  'I highly recommend it.'[or]'Have you heard this song before?' he asks.[or]'Look at the set of buns on that one,' he giggles.  'Mm-Mm-Mmmm...'[or]'So what have you b...' he starts to ask, but trails off as a sexy [bodyselector] with a big cock walks into view.[or]He mumbles some vague response to you as he leans across the table, eying the guys walking around.[or]You and the wolf chat, but it constantly devolves into him commenting on the sexual prowess of the various guys around the club as he spots them and waves.  He's clearly very popular.[in random order]";


Section 3 - Sexy Times

instead of fucking the Andrew:
	[puts Alpha Wolf as lead monster for possible impregnation]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Alpha Wolf":
			now monster is y;
			break;
	if hp of Andrew is 0:
		say "     Now that's rather forward of you.  You should at least talk to the guy first.";
	otherwise if cocks of player is 0:
		say "     Andrew shifts a little in his booth, his tail subconsciously moving to cover his groin.  'Oh... umm... well, I'm more of a man's man, you see?  I mean, empirically speaking, I might consider it, but there's... just so many sexy guys here and they always get my motor running,' he says with a grin.  'Sorry, hon.'";
	otherwise if lastfuck of Andrew - turns < 6:
		say "     'Mmm... I'm always up for more fun, but I promised one of the other guys some special wolf action and I don't want to disappoint him.  Maybe later, hon.'";
	otherwise if hp of Andrew is 1:
		say "     Andrew pulls you into the booth to snuggle with him, running his black paws across your [bodydesc of player] body, kneading at your chest.  'Mmm... I'm glad you took up my offer.  I'm always eager to [']meat['] new guys,' he giggles, licking along your ear.  A paw drifts down to your groin, fondling your cock as he grinds his bulging crotch against you.  'But since it's our first time, how about I get a taste for you,' he says, nipping at your neck.  You moan and nod, eager to feel the playful wolf's muzzle and tongue on your dick.";
		say "     [if scalevalue of player > 3]Shoving the table out of the way of your large body and pushing[otherwise]Pushing[end if] you to the back of the booth, he climbs onto the seat and buries his muzzle between your legs, licking and lapping eagerly at your erection.  You moan softly and run your hands through the wolf's shaggy headfur.  His tongue works up and down your shaft while fondling your nuts.  His warm breath washes over your crotch as he takes you into his mouth eagerly.  His head bobs and his tongue works you over with considerable skill, the wolf being clearly as well-practiced as he claimed.";
		say "     As he blows you, he undoes his belt and slides down his pants, freeing his large, lupine cock and heavy ballsac.  His meat is a girthy ten inches with an thick knot at its base.  It pulses as he strokes over it, dribbling considerable precum down over his shaft and sheath as well as onto the padded seat.  Even with the sound of the club's music in the background, you start to hear the wet sounds of him sucking you off and stroking his slick cock.";
		say "     With the gay wolf working your [cock size desc of player] [cock of player] cock and the added show of him playing with himself, you cum quite hard, blasting shot after shot of your hot seed down his throat.  His tongue slathers over your [if cock length of player > 16] shaft[otherwise]balls[end if] as you cum.  As your orgasm is finishing, he moans in pleasure and his ballsac tightens up before shooting large globs of cum from his throbbing dick.  Some splatters onto the you, onto him, the underside of the table and even the back of the booth beside you.  Andrew sits up slowly, licks his muzzle and smiles happily.  'Mmm... very tasty.  Come back for more any time, sweetie.'";
		now lastfuck of Andrew is turns;
		andrewinfect;
		now hp of Andrew is 2;
	otherwise:
		say "     Andrew grins at your offer and runs his paws over your [bodydesc of player] body with obvious lust.  'Mmm... I'm certainly up for some fun again, sweetie.  Now what exactly did you have in mind,' he says with his slightly feminine voice while walking a paw down to your crotch[if cunts of player > 0].  'I'm up for either top or bottom.  But if I top, I'd be taking your back door in, hon,' he says softly to make sure that'd be alright[otherwise].  'I'm up for either top or bottom, sweetie.  What do you feel like?' he asks while nibbling your ear[end if].";
		say "     Do you want to fuck him (Y) or get fucked (N)?";
		if the player consents:
			say "     The wolf leans against the table and raises his tail, having gotten out of the cargo pants while you were deciding.  His heavy balls and cock slap down onto the wood as he smiles back at you.  His long tail swishes in slow invitation and you don't wait any longer.  Moving in behind him, you grind your hard [cock of player] shaft against his rear and he moans playfully.  'Come on, honey.  Show me what you can do.'  Not wanting to disappoint, you line your glans up with his tight pucker and slowly sink into him.  His asshole spreads with practiced ease, relaxing enough to take your [cock size desc of player] cock into him, but staying tight enough to squeeze and tug at it nicely.  He moans in pleasure as you penetrate him, then reach around to stroke his lupine cock.";
			say "     As you fuck the wolf over the table, a few others around take notice for a little while but clearly aren't surprised or upset by it.  Clearly a regular appearance, especially from the black wolf, they don't interrupt your fun together.  A few other couples around do start up soon after though, adding to the experience.  You pound him vigorously while stroking him off, your hand very slick from the copious amounts of precum running down his dick and pooling on the table.  His inner walls rub over your sensitive shaft, moving and gripping around you to eventually drive you to a powerful orgasm that sends your hot seed deep into the gay wolf's asshole.  Feeling your hot load filling him[if cock width of player > 16] more and more as your oversized balls drain[otherwise if cock width of player > 8] as your large balls drain[end if], he howls in pleausre and cums hard, shooting his sticky load across the table and the back of the booth in another messy display.  As his last shots are firing, he starts lapping up a big puddle of it within reach.  After you pull out, he gives you a slobbery kiss that's rich with the taste of his semen and pats your ass in thanks for the nice fuck.";
			now lastfuck of Andrew is turns;
			andrewinfect;
		otherwise:
			say "     [if scalevalue of player > 3]Pushing the table out of the way to make some extra space, the[otherwise]The[end if] wolf leads you to climb into the booth with your ass up for him.  His paws stroke over your rear, giving it an appreciative squeeze before he lines up his ten inch cock and slides it between your cheeks a few times.  'Mmm... I've got a nice, big dose of wolf saved up for you, [one of]sweetie[or]honey[at random],' he says, lining up his leaking glans against your pucker.  He rubs it against your back entrance, letting his copious precum get you slick before slowly starting to ease into you.  He takes his time at first, letting his pre soak your inner walls to ease his passage until he's finally sheathed himself into you and starts fucking you in earnest.";
			say "     As you moan beneath him each time his thick meat pushes against your prostate, Andrew slips a paw around to [if cunts of player > 0]slide a finger over your wet folds.  'Such a naughty herm you are, taking it up the ass like a slutty boytoy,' he teases before moving his paw around your cock and stroking your throbbing maleness[otherwise]wrap around your cock and start stroking you.  'Mmm... you've got a tight, sexy ass.  I can hardly wait to get my knot into it,' he moans and thrusts harder, slapping his heavy ballsac against your thighs[end if].  Despite his words, he does hold back and take his time, making sure you get a long and wonderful ride before eventually pressing his knot against your pucker, stretching it around the thick base thanks to his excessive pre.  Once fully tied with you, he howls lustfully, heard by many even over the loud music, and cums hard into you.  The wolf's big load gets pumped into you, shot after shot of thick hot cum that starts to swell your tummy and pushes you to orgasm loudly as well, spraying your [if cock width of player > 16]huge load[otherwise if cock width of player > 8]big load[otherwise]sticky load[end if] onto the booth below you, adding to the many musky messes left by the well hung wolf and his many lovers.  After his knot goes down and his softening shaft pops free with an overflow of wolfcum from your ass, he pats your messy bottom and gives you a kiss.[mimpregchance]";
			now lastfuck of Andrew is turns;
			andrewinfect;


to andrewinfect:
	[puts Alpha Wolf as lead monster for possible impregnation]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Alpha Wolf":
			now monster is y;
			break;
	let tempvalue be sex entry;
	if "Female Preferred" is listed in feats of player:
		now sex entry is "Female";
	otherwise if "Herm Preferred" is listed in feats of player:
		now sex entry is "Both";
	otherwise:
		now sex entry is "Male";
	infect "Alpha Wolf";
	now sex entry is tempvalue;


Andrew ends here.