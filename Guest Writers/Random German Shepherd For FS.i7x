Version 9 of Random German Shepherd For FS by Guest Writers begins here.
[Version 9.3 - Updated to extended heat table - Stripes]
[- Originally Authored By: Telanda Softpaw -]

"Adds a German Shepherd to Flexible Survival's Wandering Monsters table, With Impreg chance"

Section 1 - Monster Responses

fuckable is a number that varies. fuckable is usually 0. [Variable Declaration so we can work choice based on players stats & actions.]
gsd attack is a number that varies. gsd attack is usually 0. [ This is used to detect if the play gave in immediately. ]
Shepherdslut is a number that varies. Shepherdslut is usually 0.

To set male shepherd:
	choose row monster in Table of random critters;
	now sex entry is "Male";
	now breasts entry is 2;

To say male shepherd rape:
	choose row monster in Table of random critters;
	[ This code detects if the victim surrendered, or fought to the last. ]
	now fuckable is 1;
	if sex entry is "Male": [You've been adopted. now you two boys can play ;)]
		if the hp of player is less than 1:
			say "The big male pants and grins down at you as you slump to the ground defeated.[line break]'And that is why I'm Alpha! pup!'[line break]He then sits down next to you, nuzzling at your neck and hugging you lightly.[line break]'But you're a good boy, learn to be a strong pack member.'[line break]Rumbling softly he laps at your injuries, stemming any bleeding and once again causing the telltale burning sensation. Then happy he's done his duty to with his developing pack mate he pads off, leaving you alone to learn and grow stronger.";
			now fuckable is 0;
			infect; [Trigger an infection Roll]
		else:
			say "Your alpha just grins as you give in to him and pounces with a mock growl. He play wrestles with you for a few minutes before sitting down and pulling you against himself, nuzzling at the top of your head and licking your ears[line break]'Good boy, you're learning. Grow strong, always treat me with respect, and you will become a powerful pack member.'[line break]He gives a tight hug and licks you, tongue rasping over your lips and leaving a familiar burning sensation before he stands and walks off once again leaving you alone to learn and grow stronger.[line break]";
			now Shepherdslut is 1;
			now fuckable is 0;
			infect; [Trigger an infection Roll]
	else if the hp of player is less than 1:
		say "The German Shepherd howls in triumph while standing over your beaten form, though your eyes are blurry you can see his sheath starting to thicken and the tip of the monsters shaft poking free of the protective furry tube, pre dribbling from it. With an eager growl he lowers his head and moves to deal with his new victim, rolling you onto your belly then lifting your hips so your rear is up and presented to him.";
	else if gsd attack is greater than 0:		[surrender after attacking him at least once]
		say "The German Shepherd growls and pushes you back into a wall as you surrender, bearing his teeth and making sure you know he's in control. Slowly his hackles drop and he stops growling, while continuing to hold you up against the wall.";
		now Shepherdslut is 1;
		if cunts of the player is 0: [male/neuter player submits]
			say "'Rrrrrf, not stupid at least, you're willing to give in when you can't win.'[line break]He seems to consider you carefully for a moment then makes a decision, keeping you pinned against the wall he begins to firmly lick at your injuries, causing a slight burning sensation spread from them before fading.  After tending to a few of your superficial injuries, he steps back from the wall, a large grin on his muzzle and his tail wagging.[line break]'You'll make a good pack-mate to run with, or will soon at least'[line break]With that he turns and simply walks away, leaving you leaning up against the wall while you feel the male shepherd's blessing and infection slowly spreading.";
			now fuckable is 0;
			set male shepherd;
		else:			[female/herm]
			say "'Next time, don't fight me bitch!  Know your place!'[line break]With a growl he pulls you away from the wall and pushes you down onto all fours.  Mouthing at your neck and shoulder, making sure you can feel the threat of his fangs if you try and fight again, his hot breath washing over your [skin of player] skin. But his mood has shifted; having bested you he now seems eager to enjoy his new toy.";
	else if gsd attack is 0:		[immediately surrender]
		say "The German Shepherd wuffs and eagerly approaches as you signal your submission, his arms slide around you as he hugs you close, licking at your face, nuzzling at your neck, his paw-like hands sliding down, rubbing and squeezing provocatively.[line break]'Ooooh, such a good little bitch, it's much nicer if you just say yes isn't it? So much more enjoyable for both of us.'";
		now Shepherdslut is 1;
		if cunts of the player is 0 and "Male Preferred" is not listed in feats of player:	[male/neuter and player can become female]
			say "He gives an extra little sniff, taking in your [if cocks of player > 0]male [end if]scent then chuckles as he licks your cheek.[line break]'Mmm bitch in spirit and mind, but not in body, it seems.  Don't worry, I can help solve that for you, make you into what you really are.'[line break]He slowly breaks off the hug, turning you around and pushing your shoulders down to make you get on all fours, then moving behind you.";
			now fuckable is 2;
		otherwise if cunts of player is 0 and "Male Preferred" is listed in feats of player: [male/neuter and player can't become female]
			say "He gives an extra little sniff, taking in your [if cocks of player > 0]male [end if]scent then chuckles as he licks your cheek.[line break]'No juicy pussy for your alpha, but I think I'll have fun making you my bitch all the same. You'll be begging me to fuck your ass in the end.' That said, he presses his muzzle against your lips, canine tongue pressing in as he forces the kiss, paws slipping around to squeeze your rump.  Then satisfied that the 'foreplay' has been accomplished he breaks the embrace and turns you around, gently but firmly pushing you down onto all fours. ";
			now fuckable is 2;
		else:	[females/herms]
			say "He presses his muzzle against your lips, canine tongue pressing in as he forces the kiss, paws slipping around to squeeze your rump. Then satisfied that the 'foreplay' has been accomplished he breaks the embrace and turns you around, gently but firmly pushing you down onto all fours.";
	if fuckable > 0:
		say "Unable to look back all you can hear is the Shepherd's eager panting while he manoeuvres you into the position he wants, leathery paw pads running over your [bodytype of player] form as he checks what he has to enjoy before you feel a warm weight on your back and a wet slickness press against you from behind, the pointed canine tip pressing against your body, starting to slide in.";		[ Now do a gender check. ]
		if cunts of player > 0: [ Female Triggers ]
			if Cunt length of player < 6: [ Cunt is to short, can't tie.]
				say "You feel him make one or two tentative thrusts into your sex, just to make sure he's inside you before you hear him growl and begin humping in earnest. His impossibly stiff length jabbing and grinding into your cervix with every thrust, and his rapidly swelling and engorging knot rubbing against your sex's lips.  Above you the Canine whines happily[line break]'S-sooo tight, soooo GNNNGH[line break]He stiffens then howls as you feel his shaft twitch and surge, a little of his infected, potent dog cum splattering inside your womb, most of it leaking out and running down your thighs however.  The large male holds you there for a minute or so, whining happily and nuzzling at your ears. Then without warning he stands and pulls free, pushing you down so that you splatter into the slimy puddle of his seed as he walks off, his still engorged cock squirting every few seconds.";
				if a random number from 1 to 2 is 2, say "[impregchance]";			[Low chance w/tight fit]
			else if Cunt length of player > 5:
				if cunt width of player > 6: [ Overly large width cunt, can fuck with a fully swollen knot.]
					say "You feel him make one or two tentative thrusts into your sex, just to make sure he's inside you before you hear him growl and begins humping in earnest. He eagerly grinds his hips into you, your [cunt size desc of player] lips easily accepting the canine cock and you feel a ticklish itchy feeling, your sex so large the dog's sheath pushes up and into you.[line break]'Oh what a slut you are, how many males have sunk themselves into you, hm? I should have the whole pack use you without pause'.[line break]Grunting and growling he thrusts faster as he approaches his peak, his knot swelling inside you, but he doesn't slow down, gritting his teeth and growling through them as he begins to cum into you he continues to piston and thrust, popping his knotted cock in and out of your sex and making loud lewd noises as he stimulates you to exhaustion.[line break]After 20 or so minutes, he slumps over your prone, unresponsive form, pulling himself free from your overly loose cunt, sighing happily and padding off down a side alley.[impregchance]"; [ regular chance to impreg w/loose pussy]
				else : [ any cunt that is less than knot-fuck size but is deep enough to tie.]
					say "You feel him make one or two tentative thrusts into your sex, just to make sure he's inside you before you hear him growl and begins humping in earnest. He eagerly grinding his hips into you your passage stretches to accept the canine cock as his sheath bunches up and rubs against your outer lips each time he drives his canine shaft in. The German Shepherd begins to hurry his thrusts, panting heavily in your ear as you feel a bulge at the base of his length start to swell and grow, but before you can even try and do anything about it he jerks and drives himself as deep as he possibly can inside you, howling out his pleasure as his knot rapidly swells with his climax.  His knot locking his length inside you as the cock twitches and pulses, the sated canine slumping atop you while rumbling happily and nuzzling and licking at his newest bitch.[line break]After about half an hour he softens enough to pull free, the slimy mix of your own cum and his splattering and drooling onto the floor. The German Shepherd casually walks off, pleased with himself as you rise to your knees, arm's wrapping around your slightly bulging stomach as a few drips run down your legs.  The realisation hits that most of his seed will remain deep within you, forced into your womb by the pressure of being trapped behind his knot. [impregchance]";
					if a random chance of 1 in 2 succeeds, say "[impregchance]";	[Increased chance w/knot in perfect fit]
		else: [ Male Triggers ]
			say "You feel him make one or two tentative thrusts into your arse, just to make sure he's inside you before you hear him growl and begins humping in earnest, eagerly grinding his hips into you, the rigid dog cock driving easily into your rear. He doesn't waste any further time, building up his pace to a energetic fucking, the small bump of his knot sliding through your ring and starting to swell as you feel his sheath bunch up and rub over the sensitive skin. With a soft growl he drives in one last time, panting heavily in your ear as you feel his shaft swell, the knot at its base doubling then tripling in size, tying you beneath the possessive male as you could feel each spurt of tainted canine seed.[mimpregchance]";
			if fuckable is 2:
				if "Male Preferred" is listed in feats of player:
					say "The dog rumbled, lapping affectionately at your cheek as the tainted seed flooded and spread in your rear. 'Such a good bitch...'  He turns your head with one paw-like hand and presses his tongue forcefully into your mouth, kissing passionately as he shifts and tugs on the tie, shifting his knot inside you, letting some of his seed dribble and ooze out over your balls, starting a strange itching sensation.  He continues to ladle on the affection, nuzzling and licking till his knot goes down and he can pull free.  Once he can, he does so suddenly enough to make you yelp in pain, smirking and swatting your rear before walking off.";
				otherwise:
					say "The dog rumbled, lapping affectionately at your cheek as the tainted seed flooded and spread in your rear. 'Such a good bitch... how about we start making you a proper girl?' He turns your head with one paw-like hand and presses his tongue forcefully into your mouth, kissing passionately as he shifts and tugs on the tie, shifting his knot inside you, letting some of his seed dribble and ooze out over your balls, starting a strange itching sensation.  He continues to ladle on the affection, nuzzling and licking till his knot goes down and he can pull free. Once he can, he does so suddenly enough to make you yelp in pain, smirking and swatting your rear before walking off.  'Be a good girl now, I'll be back when you're ready to carry my pups like a proper bitch should.'";
				follow the sex change rule;	[ Trigger infection NOW - sex ]
			else:
				say "Panting and sprawled on your back, the big male doesn't even bother to support his own weight as pants sprawled on your back, shifting about while waiting impatiently for his knot to go down.  As soon as he is able he pulls himself free, knot popping wetly from your rear and causing you to yelp in pain as you collapse on the ground.[line break]'Next time submit to your elder without me having to beat you, bitch.' He calls over his shoulder as he vanishes into a dark dingy alleyway.";
	now gsd attack is 0; [Encounter over, reset for the next time!]

to say gsdfurcolour:
	say "[one of]black and tan [or]sable [or]blue and tan [or] black and silver [sticky random]";

to say take gsd:
	if zephyrtask is 2, increase zephyrpests by 1;
	now gsd attack is  0; [Encounter over, reset for the next time!]
	if a random number from 25 to 100 < libido of the player:
		choose row monster in Table of random critters;
		if sex entry is "Male": [You've been adopted. now you two boys can play ;)]
			if cocks of player is greater than 0:
				now Shepherdslut is 0;
				say "As the German Shepherd lets out a pained and injured whine, he sinks to the ground with his ears folding down, beaten. The sight makes your shaft thicken, and following the instincts he inflicted upon you. You move to show that it is now you who is the Alpha[line break]Sensing your intent the dogs ears perk up and he actually seems to smile a bit, getting on his hands a knees, lifting his tail and flagging it in offering as he looks back over his shoulder and whines a little[line break]You can't hold back, not with your pack mate offering so freely, dropping to your knees behind him you rub and squeeze his rear";
				if cockname of player is "German Shepherd": [Not sure this fixes it, but it's worth a shot.]
					say " before dropping on all fours as well, the motion suiting your sheath enclosed member which slides through the soft tube of fur, triggering rush of pleasure as you shift and position pressing you dribbling tip against the dog's willing star. Then with no preamble you thrust and bury yourself into your waiting pack-mate, startling a yelp out of him before he groans, pushing back as your slick shaft spears in, spreading his tail-hole.  You grip his hips and begin to thrust, panting needily as you feel the peak rush towards you faster than you'd think was possible, startling you into howling as you feel your knot swell and bulge, locking you within your mate, feeling your shaft throb and pulse... a long continual climax, for as long as you remain swollen and tied.[line break]After 30 or so minutes of sated bliss you let out a soft sigh and pull free, and after your knot pops free from his stretched and well used rear the German Shepherd submissively lowers himself to the floor on all fours, just like a normal dog smiling at you as you depart.[line break]'Thank you Alpha'";
				else:
					say " gripping the base of your hard [cock of player] shaft rubbing the pre dribbling tip against him.  Then pushing in, leaning forward and laying onto his back as you sink all the way into the cooperative Shepherd.  Gripping his sides you begin to thrust, pistoning in and out of the proud male, feeling him clench around you, then even push back onto your shaft, just as you reach your peak.[line break]Your pack-mate howls beneath you, tail clenching as you pulse and surge inside him, letting you finish and rest a bit before slowly moving, causing your cock  to pull free with a wet slurp, offering a good view of the males' cum smeared tail hole.[line break]Content and satisfied he nuzzles then lets you leave while he recovers.";
		otherwise if Shepherdslut > 0 and cunts of player > 0:
			say "As the German Shepherd lets out a pained and injured whine, he sinks to the ground with his ears folding down, beaten.  You feel a pulse of desire in your loins, still lusting for this strong male that once dominated you.  You want his cock in you again, but this time you will take what you want instead of being taken.  You growl and charge him, pushing him down onto his back";
			if cockname of player is "German Shepherd" or bodyname of player is "German Shepherd":
				say " to get his cock into your canine twat on your own terms.  You pin him down and grind your wet slit over his sheath, dribbling your juices over it.  The scent of your arousal quickly coaxes his maleness from its sheath and you start sliding over his swelling cock, urging it to full hardness.  As you shift your hips and ease your way down his cock, you nuzzle under his neck and start nipping at his throat with low growls.  The beaten dog tilts his head back in submission, baring his throat to you.";
				say "[if cunt length of player > 5]Taking the full length of his cock[otherwise]Taking as much of his cock as you can into your small pussy[end if], you moan in pleasure as you ride it.  You can feel it throb and pulse inside you, spitting doggy pre into your already wet hole.  You set the pace, working to build yourself up to a powerful climax and enjoying his soft whines beneath you as you keep him from cumming until you're ready.  Finally, when your orgasm comes, it is powerful and sends waves of delight through your whole body.  Taking his throat in your mouth, you growl firmly and pound yourself on his cock[if cunt length of player > 5], popping his swollen knot into you.  Tied with you, the shepherd cums hard, shooting his canine seed into your womb[otherwise], grinding his tip against your cervix and his knot against your pussy's lips.  The shepherd cums hard, shooting his canine seed into your womb[end if][if cunt length of player > 5 and cunt width of player < 7].  With his knot locked in you, you are left tied to the dog.  He bathes your face in doggy kisses while you wait for the knot to come down.  Once it's finally softened enough, you pop it out, [otherwise if cunt length of player > 5 and cunt width of player > 6].  Once his cock stops pulsing his seed into you, you pop your wide cock off his knot, [otherwise].  Once his cock stops pulsing his seed into you, you slide off his cock, [end if]releasing the semen that hasn't been drawn into your womb.  You get up slowly and give his ears a scritch, enjoying the sight of him wagging his tail and lolling his tongue out.  You then grab your gear and head off, leaving him to recover.  You feel much stronger about yourself after having beaten your one-time assailant and taken what you wanted from him instead.";
			otherwise:
				say " to get his cock into your twat on your own terms.  You pin him down and grind your wet slit over his sheath, dribbling your juices over it.  This quickly coaxes his maleness from its sheath and you start sliding over his swelling cock, urging it to full hardness.  As you shift your hips and ease your way down his cock, you keep your hands on his shoulders to hold him down.  The beaten dog tilts his head back in submission, baring his throat to you with his ears lowered.";
				say "[if cunt length of player > 5]Taking the full length of his cock[otherwise]Taking as much of his cock as you can into your small pussy[end if], you moan in pleasure as you ride it.  You can feel it throb and pulse inside you, spitting doggy pre into your already wet hole.  You set the pace, working to build yourself up to a powerful climax and enjoying his soft whines beneath you as you keep him from cumming until you're ready.  Finally, when your orgasm comes, it is powerful and sends waves of delight through your whole body.  Clenching your fingers in his fur, you growl firmly and pound yourself on his cock[if cunt length of player > 5], popping his swollen knot into you.  Tied with you, the shepherd cums hard, shooting his canine seed into your womb[otherwise], grinding his tip against your cervix and his knot against your pussy's lips.  The shepherd cums hard, shooting his canine seed into your womb[end if][if cunt length of player > 5 and cunt width of player < 7].  With his knot locked in you, you are left tied to the dog.  He bathes your face in doggy kisses while you wait for the knot to come down.  Once it's finally softened enough, you pop it out, [otherwise if cunt length of player > 5 and cunt width of player > 6].  Once his cock stops pulsing his seed into you, you pop your wide cock off his knot, [otherwise].  Once his cock stops pulsing his seed into you, you slide off his cock, [end if]releasing the semen that hasn't been drawn into your womb.  You get up slowly and give his ears a scritch, enjoying the sight of him wagging his tail and lolling his tongue out.  You then grab your gear and head off, leaving him to recover.  You feel much stronger about yourself after having beaten your one-time assailant and taken what you wanted from him instead.";
				if cunt length of player < 6:
					if a random chance of 1 in 2 succeeds, say "[impregchance]";	[Lower impreg chance w/o knot]
				otherwise:
					say "[impregchance]";
					if cunt width of player < 7:
						if a random chance of 1 in 2 succeeds, say "[impregchance]";	[Increased chance w/knot in perfect fit]
		otherwise:
			if a random number from 1 to 50 < libido of the player:	[50+ auto-wins]
				say "As the German Shepherd lets out a pained and injured whine, he sinks to the ground with his ears folding down, beaten.  He starts to back away slowly, like a cowed dog.  The excitement of the struggle with the canine has gotten you excited.  Shall you grab him before he gets away and satisfy your lusts?";
				if the player consents:
					now Shepherdslut is 0;
					say "Marching up to him, he slinks down lower and whines softly as you grab him by the scruff of the neck and hold him.  He tries to pull away, but you simply take hold of him more firmly and give his rear a slap.  'Bad dog,' you growl at him.  'Get to licking to show you're sorry.'  With that, you pull his head between your legs, pressing his muzzle to your loins";
					if cocks of player > 0:
						say ".  Having little choice, he nuzzles at your cock and takes a few tentative licks.  When you don't let him go, his ears dip further and he continues licking, soon with increasing vigour.  His doggy tongue slobbers over your throbbing shaft and balls, lavishing attention on them as his eagerness grows.  After leaking pre all across his muzzle, you decide it's time for the main event and guide his muzzle down over your cock.  As he licks and sucks on you, you thrust into his long, canine muzzle until finally you cum, pumping your hot seed into his mouth and down his throat.  His ears dip, but he laps it all from your cock and swallows it down.  When he's done cleaning you, you pull out and leave him on the ground to recover from his defeat.";
					otherwise:
						say ".  Having little choice, he takes a few tentative licks at your pussy.  When you don't let him go, his ears dip further and he continues licking, soon with increasing vigour.  His doggy tongue slobbers over your sensitive folds, lavishing attention on you as his eagerness grows.  Longing for more, you press his muzzle in close and he slips his tongue into your cunt, diving up inside you to lap at your flowing juices.  His long, doggy tongue dives into you again and again, making you moan with pleasure until finally you cum hard, soaking his muzzle in your juices.  He laps up as much as he can and licks your thighs and pussy clean as your climax ebbs.  When he's done cleaning you, you push his muzzle back and leave him on the ground to recover from his defeat.";
				otherwise:
					say "Not wanting to waste more time with the cur, you push him to the ground roughly and leave him there to lick his wounds.";
			otherwise:
				say "The German Shepherd lets out a pained and injured whine as he sinks to the ground, looking at you with a hurt expression for a few moments before lapsing into unconsciousness.";
	else:
		say "The German Shepherd lets out a pained and injured whine as he sinks to the ground, looking at you with a hurt expression for a few moments before lapsing into unconsciousness.";

to say attk gsd:
	now gsd attack is 1; [You've attacked the monster, he won't be happy!]
	say "[one of]The dog growls, swiping at you with an open paw-like hand, dull claws leaving scratches in your [skin of player] skin[or]As you extend to strike, the German Shepherd twists and clamps his jaws on your arm before releasing again, leaving a bloody bite[or]Dodging back, the large canine growls before charging forward, using the extra momentum to tackle and knock you over[at random].";

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "German Shepherd";      [Name of your new Monster]
	now attack entry is "[attk gsd]";         [Text used when the monster makes an Attack]
	now defeated entry is "[take gsd]";       [ Text or say command used when Monster is defeated.]
	now victory entry is "[male shepherd rape][line break]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block]
	now desc entry is "Looking alert and confident, a large bipedal canine creature stands before you.  Standing on digitigrade legs, the large canine sports the [one of]traditional brown and tan[or]subtle blue and tan[or]striking black and silver[at random] fur patterns.  It's completely unclothed, which makes it QUITE clear that this is a [']He['], a furry canine sheath resting against his belly and a pair of golf ball size balls dangling beneath.  Studying you calmly, there seems to be no reaction with the exception of his tail starting to wag enthusiastically as he lets out a hungry growl.  'Oh look, another newcomer.'  His tongue flicks over his lips as he eyes you. 'I wonder if you'll be smart enough to cooperate.'";
	now face entry is "distinctly canine face, with a long canine muzzle filled with sharp teeth and a pair of expressive pointed ears atop your head";
	now body entry is "that of a bipedal dog, with digitigrade legs and paw like hands";
	now skin entry is "coarse [gsdfurcolour]furred";
	now tail entry is "Behind you is a new limb, whipping about expressively... and frequently betraying your mood is a dog[']s tail.";
	now cock entry is "[if looknow is 1] surrounded in a tight [skin of player] sheath, protecting the wonderfully sensitive German Shepherd cock residing within[otherwise]animalistic canine[end if]";
	now face change entry is "Your face draws forward into a canine muzzle, which rapidly fills with teeth and a broad lolling tongue. at the same time your ears become more pointed and expressive and migrate towards the top of your now canine head";
	now body change entry is "your legs bend and twist into digitigrade form with soft subtle snaps of flowing bones. You look down to see your feet becoming entirely paw like and your hands become somewhat paw like with dull black claws in the tips";
	now skin change entry is "your skin prickles from head to toes as fur begins to push through from underneath, soon covering you in a coarse protective coat of [gsdfurcolour]fur";
	now ass change entry is "a long tail pushes from your spine. Rushing straight out then curling between your legs at the feeling of shock as you study the appendage";
	now cock change entry is "your shaft tapers out, becoming slender, though a huge swelling comes into being towards the base, a knot. The skin turns reddish before the whole thing slowly withdraws into a sheath you didn't have a moment ago";
	now str entry is 12;
	now dex entry is 12;
	now sta entry is 14;
	now per entry is 12;
	now int entry is 12;
	now cha entry is 10;
	now sex entry is "Female";          [ Defines which organs will be altered by the infection. current options are 'Male' 'Female' 'Both']
	now hp entry is 20;
	now lev entry is 3;
	now wdam entry is 5;                [ Amount of  Damage monster Does when attacking.]
	now area entry is "Outside";        [ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 1;               [ Used in infection Calculations, if cocks > 0 shaft will grow to cock length & girth dimensions slowly]
	now cock length entry is 8;         [ Length infection will make cock grow to if cocks > 0 ]
	now cock width entry is 4;          [ Width Infection will make cock grow to is cocks > 0 ]
	now breasts entry is 8;             [ Number of Breasts infection will give you. ]
	now breast size entry is 4;         [ Size of breasts infection will try to attain ]
	now male breast size entry is 0;    [ Unknown. ]
	now cunts entry is 1;               [ if > 0 and sex = female or both, indicates the number of female sexes infection will grant you.]
	now cunt length entry is 6;         [ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 4;          [ Width of female sex  infection will try and give you ] 
	now libido entry is 5;              [ Amount libido goes up by if you submit or are defeated by this monster ]
	now loot entry is "";               [ Loot monster drops, ]
	now lootchance entry is 0;          [ Chance of loot dropping 0-100 ]
	now scale entry is 3;               [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]mutated[or]altered[or]animalistic[at random]";
	now type entry is "canine";         [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;           [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;       [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;  [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;      [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";   [ Row used to designate any special combat features, "default" for standard combat. ]

Section 3 - Heat Table

to say gsdheatstart:
	if heatform is 0:
		increase cunt width of player by 1;
	otherwise:
		increase libido of player by 5;

to say gsdheatend:
	if heatform is 0:
		decrease cunt width of player by 1;
		if cunt width of player is 0, now cunt width of player is 1;

Table of infection heat (continued)
infect name	heat cycle	heat duration	trigger text	description text	heat start	heat end	inheat	fheat (truth state)	mpregheat (truth state)	mpregtrigger
--	--	--	--	--	--	--	--	--	--	--

When Play begins:
	Choose a blank row from Table of infection heat;
	now infect name entry is "German Shepherd";
	now heat cycle entry is 7;
	now heat duration entry is 2;
	now trigger text entry is "A sudden throb between your legs catches you off guard, startling a whimper from your throat as you feel a rush of heat between your legs.  Nested between your thighs your canine spade begins to puff up and swell, engorging and becoming looser, a slow but constant seepage of lubricating fluids starting to run down your thigh, making a mess of your [skinname of player] flesh.  You are in heat, and your body is making it easy for any male to find and impregnate you.";
	now description text entry is "swollen and dripping German Shepherd twat ";
	now heat start entry is "[gsdheatstart]";   [Events that trigger at the start of the Heat, in the female-GSD case it increases the cunt width]
	now heat end entry is "[gsdheatend]";       [Events that trigger at the end of the Heat, in the female-GSD case it reduces cunt width]
	now inheat entry is "[defaultheat]";        [This happens each heat cycle, Default is to increase libido by 5]
	now fheat entry is true;
	now mpregheat entry is true;
	now mpregtrigger entry is "A sudden throb in your ass catches you off guard, startling a whimper from your throat as you feel a rush of heat surging inside you.  You can feel your fecund ass preparing itself to be bred as you go into a tainted heat.  Your anal passage quivers and you feel a longing for a nice, canine cock to fill it.";


when play ends:
	if humanity of player is less than 10:
		if bodyname of player is "German Shepherd":
			if Shepherdslut is 1:
				if cunts of player > 0 and cocks of player > 0:			[HERM]
					say "     You don't know what to do. Your mind is a swirl of confused thoughts and you sink to all fours, sobbing and staining the ground with your tears, and precum, cock dripping to the ground in thick strands, cunt leaking honey down along it, making quite a mess. He finds you, though, the German Shepherd. His presence becomes clear when his tongue runs across your crotch, up along your male and female genders in one firm motion. You tense and gasp, and turn to look, but he's already clambering up on you, thrusting into his property, you. You feel complete, and sing out in pleasure as he breeds you. Your seed splashes across the ground as you cum with him, filled with his potent seed. When you've calmed down, he guides you to the pack, where you will remain for the rest of your life.";
				otherwise if cunts of player is greater than 0:			[FEMALE]
					say "     As the last of your normal thoughts flee you, you hear a familiar howl. You take off at a run, scrambling over debris to reach this thing that sets your heart on fire. You find them, a pack of dogs roaming the city. They welcome you with wet tongues and eager hugs, until he steps forward. The alpha, the German Shepherd, takes you aside, welcoming you to the pack, then consummating the deal on the spot, to the cheers and approval of the crowd, leaving your belly bulging with his virility. With him still sealed to you with his knot, the others approach, licking you both, warm welcoming words. Things could be worse...";
				otherwise:									[MALE]
					say "     You hear something, but can't quite place it. You take off and find the pack of dogs without trouble, rushing into their midst, yapping and barking. They bite at you, push you around, but tolerate your presence. You never seem to gain much say with them, remaining the pack omega, picked on, last to eat, but still a member of the pack, and loved, in a different way.";
			otherwise:
				if cunts of player > 0 and cocks of player > 0:			[HERM]
					say "     It is all just too much. Your cock demands attention, your cunt wants to be stuffed, and you have nothing to focus on strongly enough. With a howl, you become a true beast, slaking your unending hunger on anything willing to fill or be filled, or that you can hold down long enough to force into the act. When a female human, stupid enough to enter the infected city, comes across you... Well, she became a fine wife of sorts for you, bearing litter after litter from her pretty naked body. She never transformed, but her mind did seem to change over time, becoming submissive to your breeding desires, and she never leaves you and your increasingly larger family.";
				otherwise if cunts of player is greater than 0:			[FEMALE]
					say "     You feel your humanity slipping away, and hear the call of the pack, but decline its invitation. You stake out your own section of the city, preying on those foolish enough to challenge it. The pack usually stays away from your area, but you do have to fight them off once in a while, almost more of a ceremony than anything else. During one of these tussles, one of their betas pins you down, and what was a wrestling session suddenly turns amorous. Despite no clear... winner... of the battle, the pack leaves happily, and you produce two darling puppies, who remain at your side loyally.";
				otherwise:									[MALE]
					say "     Ever hear of the big bad wolf? It was the last thought that fluttered through your fading mind. You dropped to all fours, cock wagging under you as you prowled the streets, preying on anything with a hole. You develop a preference for mutants, and discover the pleasure of filling different beasts with your hybrid canine pups, at least until you fall into the sewers one day. With a bruised ankle, you watched fearfully as a strange, canine-like mutant approached you. She had a pouch, and several large breasts, and she was dual gendered. She drew you to a breast and let you drink of her sweet milk until the pain stopped, then pushed you onto your back roughly and fucked herself with your cock for six hours. By the time the marathon was over, your animal like mind had decided she was your alpha, and you remained her loyal stud dog ever since.";
	otherwise:
		if bodyname of player is "German Shepherd":
			say "     When the military forces come in to rescue what citizens they can, you go along with them.  Being mostly canine in form, you go along readily with them.  Your body, compared to others they've seen, raises little concern among the military.  As a canine, you are given an offer to join the military, trying to appeal to your instincts for loyalty, but you feel you are too [if Shepherdslut is 1]submissive[otherwise]independent[end if] to make a good recruit and decline.";
			if Shepherdslut is 1:
				if cunts of player > 0 and cocks of player > 0:			[HERM]
					say "     Though you've been given a deep submissive streak thanks to your time with that, handsome, shepherd, you put him behind you and set off to make a normal life for yourself. Your dual gendered nature makes you shy to approach others, fearful that, combined with your mutant nature, they will shun you. You get a quiet job as a secretary and perform admirably, enough to catch the attention of your boss.";
					say "     He invites you out for dinner, and starts courting you, much to your dismay. It's not that you don't like the guy. He's nice enough, good to the people under him, but when the secret gets out... He finally corners you and makes a strong advance. You do little but whimper as his hands wander your exotic form. His fingers drift across your groin, finding your bulging tent there. Soft touches start as he pushes your skirt up and eases you out of your panties. You barely come around as he's laying you back, stroking you with one hand, the other dipping into your furry vulva. It turns out he figured it out some time ago, and he doesn't mind one bit. You bear him several pups gladly as his wife.";
				otherwise if cunts of player is greater than 0:			[FEMALE]
					say "     Though you escape from the city with your mind intact, it is not without impact. You find yourself thinking back to that big alpha and try to replace him with a myriad of other brutes who fail to satisfy your hungry cunt. You take up work in the sex industry, catering to those who like to watch horny mutant sluts get hot and bothered, which you usually are.";
					say "     Some years later, still desperately searching for a male, HE comes wandering in. A stallion with a cock that seems to call out to you. As if fate had ordained the moment, you notice that he seems to be sized for you, and you leap at the chance to perform with him. When he ruts you, it's like magic, and you never leave his side.";
				otherwise:									[MALE]
					say "     You emerge from your experience a bit shaken. Some part of you wants to be a lusty bitch, but you aren't a bitch, you're a guy, and that's hard to reconcile. You experiment with the gay community, which seems to have no big trouble accepting a submissive dog willing to raise his tail at short notice, but you never feel quite right, at least until you run into her, a professed lesbian mutant, a collie, who seems just as uncomfortable as you. You start talking, and hit it off. Shy romance turns to heavy love making on the second date, and you two remain together.";
			otherwise:
				if cunts of player > 0 and cocks of player > 0:			[HERM]
					say "     As you emerge from the helicopter and set loose on the streets near the military's holding facility, a young man among the mob of reporters rushes up to you and starts asking questions rapidly.  What was it like?  Is having fur half as fun as it looks?  This young Internet reporter is a [']furry['] and quite entranced with a sentient dog person, especially a dual-gendered one.  At first, his attentions are quite annoying, but he is quite persistent after your release, even when you bite him once.  Well, a nip, really.  Despite your cold attitude, he does everything he can to be a good friend, helping you find a home and a job and generally being available.  Your anger eventually passes and accept that it's not him you're angry with.  And with it gone, other emotions have a chance to surface.  It's not long before you're sharing more than you ever thought.";
				otherwise if cunts of player is greater than 0:			[FEMALE]
					say "     Life as a bitch is a curious one. You find yourself eager to please, but not in the way that jerk of a dog wanted you to be. You become a courier, hurrying packages from one place to another, even across the wild wastes between cities, braving the dangers of infection and mutants to get mail and packages through.  You have several contacts throughout the infected city, relaying messages, gifts and sometimes illicit items to people within the infected metropolis for a price.  Almost as in direct defiance of your previous dominator, you live your life like a daredevil, wild and free.";
				otherwise:									[MALE]
					say "     Life as man's best friend isn't too bad. You get a job at a factory and become something of the workplace mascot. Everyone always seems happy to see you when you come in. You might not be human anymore, but you don't feel isolated, drinking with the guys and living out a normal life, surrounded by friends.  Your canine nature makes it easy for you to find willing partners, as dog strains are one of the most common while still giving you plenty of variety to enjoy.";

Random German Shepherd For FS ends here.
