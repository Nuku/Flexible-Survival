Version 2 of Toy Store by Song begins here.
[ Version 1 - Original event ]
[ Version 2 - Full rewrite of event. Dys contributed heavily, writing up most of the sex scene on defeat/submission ]
[ - This creature was originally created by Hellerhound and has since been relocated to Song's folder after substantial overhauls - ]

Toy Store is a situation. The level of Toy Store is 1.
when play begins:
	add Toy Store to badspots of guy;
	add Toy Store to badspots of furry;

toystoreseen is a truth state that varies. toystoreseen is usually false.
toystoreoverride is a truth state that varies. toystoreoverride is usually false.

instead of resolving a toy store:
	setmonster "Latex Fox";
	choose row monster from the table of random critters;
	now non-infectious entry is true;
	say "     During your travels, you come across [if toystoreseen is true]the abandoned toy store again[else]an old-fashioned toy store[end if]. The building is surprisingly intact, standing in stark contrast to the ruins that surround it. A pair of curtains has been drawn together behind the windows, making it difficult to see what's inside. [if toystoreseen is true]Unfortunately, you still see some movement inside the store, suggesting that whoever was here last has made it their home[else]As you approach, you catch a flash of a orange through a gap in the fabric, and you immediately stop yourself to think this through[end if].";
	say "     [bold type]Do you still wish to enter now that you know that someone - or something - is waiting inside the store?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - You're confident that you can handle whatever is inside there. If you're lucky, you might even find something of use to you.";
	say "     ([link]N[as]n[end link]) - Without a clear view, you have no idea what kind of mutants (or how many of them) are inside the toy store. You'd rather avoid the risk.";
	if player consents:
		say "     Gathering your courage, you open the front door and step inside. You immediately realize that this place is filled to the brink with latex foxes, a whole nest of them playing with each other on the ground. Almost every piece of furniture has been overturned in their frenzy, and rubber cum streaks the walls in a musty sheen, its heady odor overwhelming your senses. As soon as they notice your presence, the rubbery canids['] attention turns to you, eager to turn you into just another squeaky playmate.";
		if libido of player > 49 and (humanity of player < 50 or player is kinky or player is submissive) and player is not dominant: [Kinky, Submissive, and low humanity players with 50+ libido are given a chance to submit without violence. Dominant players will never consider this]
			say "     Although you should be preparing to fight, a part of you longs to just give in and let these foxes have their way with you. You try to dispel the urge, but the sight of so many virile creatures and the intoxicating scent of sex in the air only excite you further. Sensing your hesitance, they reign in their urge to take what they want by force. One of them presses his muzzle against your thigh before looking up at you with knowing, imploring eyes, the creature's cum-slick shaft throbbing beneath his belly. More of them follow suit, and your thoughts grow hazier as they rub and brush against you, teasing you with that sleek, slick contact and their obvious arousal. It'd be nice to take the edge off, you tell yourself, rubbing one of them behind the ear as you fantasize about being fucked by these playful, well-endowed foxes.";
			say "     [bold type]Do you give in to the powerful urge to succumb to your lusts?[roman type][line break]";
			say "     ([link]Y[as]y[end link]) - Why wouldn't you? These creatures seem intent on showing you a good time.";
			say "     ([link]N[as]n[end link]) - You can't just give in like that. Fight back!";
			if player consents:
				say "     Unthinkingly, you kneel down into the fray of horny vulpines and give one of them a deep and hungry kiss, his tongue entwining with your own before sliding down your throat. His breath fills your lungs with a potent aphrodisiac that leaves you lightheaded and aroused, the heady aroma making it difficult to focus on anything but the pleasure of their smooth, featureless paws and bestial red cocks rubbing against you. Your own desires are only amplified by the chemicals lacing your breath, and you're panting hotly by the time the fox pulls away again. With the last thought of resistance erased from your mind, you lower yourself onto all fours, eager to be used.";
				WaitLineBreak;
				say "[toystoreloss]";
			else:
				say "     With your last ounce of self-control, you pull away from the lustful canids. You defiance is at first met with curiosity, then with several aggressive, squeaky yaps as they begin to stalk closer. Seeing that they're not about to take [']no['] for an answer, you raise your [if weapon object of player is journal]fists[else]weapon[end if] and prepare to fight.";
				WaitLineBreak;
				say "[toystorefight]";
		else: [Player does not fit above criteria for immediate submit option]
			say "     Drawing closer to you from all sides with aggressive, squeaky yaps, you raise your [if weapon object of player is journal]fists[else]weapon[end if] and prepare to fight.";
			WaitLineBreak;
			say "[toystorefight]";
	else: [Leave the toy store. Allows returning to investigate again later]
		say "     You're hesitant to enter given the movement inside and the way the curtains have been suspiciously drawn shut. What if the occupants are just waiting to ambush an unsuspecting visitor? Erring on the side of caution, you decide to leave the store alone - for now.";
		now toystoreseen is true;
	now non-infectious entry is false; [Redundant check to clear prop for players who don't lose/submit]
	WaitLineBreak; [Pause to ensure all content is fully seen before moving back to previous nav point]


to say toystorefight:
	now toystoreoverride is true; [overrides normal win/loss scenes every fight]
	let GroupFightCounter be 0;
	now fightoutcome is 0; [reset]
	while fightoutcome < 20 and GroupFightCounter < 10: [runs for 10 times or until the player loses or flees]
		now inasituation is true;
		if GroupFightCounter > 0:
			say "     After knocking one out, the others surge forward.";
		challenge "Latex Fox";
		increase GroupFightCounter by 1;
	now inasituation is false; [reset]
	if fightoutcome < 20: [player won]
		say "[toystorewin]";
	else if fightoutcome is 20: [health loss]
		say "     While harmless individually, the sheer number of these twisted beings proves too much for your body to bear. You collapse on your knees, battered and bruised, the pungent scent of virility that suffuses the area infecting your mind. Groaning weakly, you're unable to protest when one of the rubbery canids laps at your face, then presses his long and shiny tongue into your mouth, curling around your own slick muscle before stuffing itself down your throat. Held in place by more of the smooth-skinned creatures, your feeble squirms of resistance gradually fade as your lungs are filled with a potent aphrodisiac that leaves you lightheaded and aroused. The heady aroma makes it difficult to focus on anything but the pleasure of their smooth, featureless paws and bestial red cocks rubbing against you. Eventually succumbing to your fate, you're pressed onto all fours by the eagerly awaiting foxes, the influence of their tainted breath leaving you aching to be filled.";
		WaitLineBreak;
		say "[toystoreloss]";
	else if fightoutcome is 21 or fightoutcome is 22: [libido or submission loss]
		say "     Your libido getting the better of you, you [if weapon object of player is journal]lower your fists[else]lay down your arms[end if] and kneel between the fray of horny vulpines. You pull one of them close to share a deep and hungry kiss, his tongue entwining with your own before sliding down your throat. His breath fills your lungs with a potent aphrodisiac that leaves you lightheaded and aroused, the heady aroma making it difficult to focus on anything but the pleasure of their smooth, featureless paws and bestial red cocks rubbing against you. Your own desires are only amplified by the chemicals lacing your breath, and you're panting hotly by the time the fox pulls away again. With the last thought of resistance erased from your mind, you lower yourself onto all fours, eager to be used.";
		WaitLineBreak;
		say "[toystoreloss]";
	else if fightoutcome is 30: [fled]
		say "     Swarmed by the creatures, you see no other option but to flee before they beat you down. You shake the fox gnawing on your leg off and turn tail, weaving past their quadrupedal bodies as you run out of the store. Several of them continue to pursue you for nearly half a block before skidding to an abrupt halt, not wishing to stray too far from the safety of their territory. Shiny tails swishing with agitation, the cartoony critters yap their contempt for you and return to the toy shop.";
		say "     Once you've set some more distance between yourself and the den, you bend over to catch your breath, your lungs still filled with lingering scent of rubbery sex. While the encounter could have gone better, you've at least managed to escape with your mind and body intact. You make a mental note to avoid this area in the future and continue on your way.";
	now Toy Store is resolved;
	now toystoreoverride is false; [resumes normal win/loss scenes after the event]


to say toystorewin:
	say "     With a brutal, decisive blow, you strike down the last of the lustful foxes, leaving him whimpering on the ground. Those that haven't been knocked unconscious scamper out the front door to hide, clearly afraid of you now. Relieved that the exhaustive fight's over, you search the now-empty store for anything of use, and you find some food and water in exchange for your troubles. Stuffing them in you pack, you leave the canids['] sex-sullied den before they have a chance to recover and return to this place.";
	LineBreak;
	if a random chance of 1 in 2 succeeds:
		say "[bold type]You gain 1 dirty water![roman type][line break]";
		increase carried of dirty water by 1;
		say "[bold type]You gain 1 water bottle![roman type][line break]";
		increase carried of water bottle by 1;
	else if a random chance of 1 in 2 succeeds:
		say "[bold type]You gain 2 dirty water![roman type][line break]";
		increase carried of dirty water by 2;
	else:
		say "[bold type]You gain 2 water bottles![roman type][line break]";
		increase carried of water bottle by 2;
	say "[bold type]You gain 2 food![roman type][line break]";
	increase carried of food by 2;

to say toystoreloss:
	if player is female: [Females and herms]
		say "     One of the rubber vulpines approaches your presented rear, pressing his cool nose into your crack. You feel him take a few sniffs before that long, broad tongue begins to lap along your folds[if anallevel is 3] and sensitive anal rim[end if], coating them in a thing layer of his warm, rubbery saliva. The alien feeling sends a shiver down your spine, and you can't help but take in a sharp breath as he presses that organ inside of your warm, wet depths, making sure to get you nice and ready for what's to come. [if player is male]Your cock[smn] throb[smv] in eager anticipation, your inebriated mind enjoying this strange situation. [end if]A pair of paws wrap around your waist as he mounts you, that rubber flesh squeaking as it rubs and grinds against yours. Soon, you feel that tapered canine length gently prodding at your hole, the combination of his saliva and his pre making your tender flesh tingle as he slowly spreads you open, drawing a long, low moan from you. Not to be left out, another fox takes advantage of your open mouth, sliding his length into you in one smooth motion, that tapered tip prodding the back of your throat while his balls brush across your chin. The overwhelming taste and aroma of heady animal musk combined with the odd scent of synthetics fills your lungs, suffusing your palate as that cock drools a bit of its tainted pre onto your tongue. You aren't able to bask in it for long, however, as the foxes begin to move in a slow, careful dance, pressing in and out, in and out, riddling your body with intense pleasure each time your folds are stretched around the canine cock stuffing your cunt and your mouth is filled with that sleek, musky length.";
		say "     Their tenderness doesn't last forever though, those thrusts growing progressively more fervent and excited as their respective peaks draw near. You can feel that swelling knot ramming into your folds with every thrust, the fox's balls slapping against your [if player is male]own[else]form[end if] each time he hilts you. The one using your mouth isn't left out either, his tip finally making its way deeper, slipping down your throat, causing your flesh to bulge slightly as your muscles ripple and squeeze around the intruding organ. They continue to rail your body[if player is male] while your own, unattended cock[smn] dribble[smv] and drool[smv] across the ground[end if], gentle pats, slaps, and the occasional squeak resounding through the room. After what feels like hours of rutting to your lust-addled mind, the fox behind you finally cums, letting out a yip as he presses that knot past your battered gates, locking you to him as he dumps his tainted seed into your waiting womb. The pleasure of being filled drives you over the edge, your cunt squirting around his tying bulb[if cunts of player > 1] and unfilled holes quivering jealously[end if][if player is male] while your cock[smn] spurts your load onto the floor beneath you[end if]. The fox using your mouth isn't left out, however, slamming home with one final thrust, his knot slipping past your teeth and locking your face to his throbbing organ. Rope after rope of their corrupted seed spills into you, filling you from both ends. You gurgle wetly, failing to swallow all of that fluid, tasting the strange mix of musk and latex on your tongue even as it spills past your lips and drools down your face in runny rivulets. The fox in your cleft finds it slightly less difficult to keep his load inside you, pump after pump filling you with an amazing pressure, your belly just slightly bulging by the time his climax finally begins to taper down.";
		WaitLineBreak;
		say "     Eventually, their knots shrink enough for them to pull out, their cum-slick cocks prying free with a loud squelch while a cascade of cool, rubbery semen flows down your chin and thighs. The rest of the males in the room don't give you much of a chance to recover, another pair soon mounting your form. You're subjected to this ritual over and over again, countless canids using you for their pleasure, bringing you to myriad mind-rending climaxes and bloating your form with their seed. Eventually, you feel your consciousness slipping away, and everything fades to black.";
		say "     When you come to, the twisted creatures are gone, leaving you lying alone in a pool of [if player is male]both your own cum and theirs[else]their cum[end if], your stomach still swollen from all the latex seed they pumped into you. You can't help but lick your lips, your body still trembling in the aftershocks of pleasure.[fimpregchance][fimpregchance][fimpregchance][fimpregchance]";
	else if anallevel > 1: [Males and neuters who don't mind anal]
		say "     One of the rubber vulpines approaches your presented rear, pressing his cool nose into your crack. You feel him take a few sniffs before that long, broad tongue begins to lap along your clenching rim, coating it in a thin layer of his warm, rubbery saliva. The alien feeling sends a shiver down your spine, and you can't help but [if anallevel is 3]take in a sharp breath as he presses that organ inside your rippling tract, making sure to get you nice and ready for what's to come[else]whine as he pulls away, moving to give another latex beast a chance at you[end if]. [if player is male]Your cock[smn] throb[smv] in eager anticipation, your inebriated mind enjoying this strange situation. [end if]A pair of paws wrap around your waist as he mounts you, that rubber flesh squeaking as it rubs and grinds against yours. Soon, you feel that tapered canine length gently prodding at your hole, using a combination of his saliva and his pre to slowly spread you open, drawing a long, low moan from you. Not to be left out, another fox takes advantage of your open mouth, sliding his length into you in one smooth motion, that tapered tip prodding the back of your throat while his balls brush across your chin. The overwhelming taste and aroma of heady animal musk combined with the odd scent of synthetics fills your lungs, suffusing your palate as that cock drools a bit of its tainted pre onto your tongue. You aren't able to bask in it for long, however, as the foxes begin to move in a slow, careful dance, pressing in and out, in and out, riddling your body with intense pleasure each time your tract stretches around the canine cock stuffing your rear and your mouth is filled with that sleek, musky length.";
		say "     Their tenderness doesn't last forever though, those thrusts growing progressively more fervent and excited as their respective peaks draw near. You can feel that swelling knot ramming into your rim with every thrust, the fox's balls slapping against your [if player is male]own[else]barren groin[end if] each time he hilts you. The one using your mouth isn't left out either, his tip finally making its way deeper, slipping down your throat, causing your flesh to bulge slightly as your muscles ripple and squeeze around the intruding organ. They continue to rail your body[if player is male] while your own, unattended cock[smn] dribble[smv] and drool[smv] across the ground[end if], gentle pats, slaps, and the occasional squeak resounding through the room. After what feels like hours of rutting to your lust-addled mind, the fox behind you finally cums, letting out a yip as he presses that knot past your ring, locking you to him as he dumps his tainted seed into your helpless form. [if player is male]The new pressure against your prostate drives you over the edge, your cock[smn] spurting your load onto the floor beneath you. [end if]The fox using your mouth isn't left out, however, slamming home with one final thrust, his knot slipping past your teeth and locking your face to his throbbing organ. Rope after rope of their corrupted seed spills into you, filling you from both ends. You gurgle wetly, failing to swallow all of that fluid, tasting the strange mix of musk and latex on your tongue even as it spills past your lips and drools down your face in runny rivulets. The fox in your rear finds it slightly less difficult to keep his load inside you, pump after pump filling you with an amazing pressure, your belly just slightly bulging by the time his climax finally begins to taper down.";
		WaitLineBreak;
		say "     Eventually, their knots shrink enough for them to pull out, their cum-slick cocks prying free with a loud squelch while a cascade of cool, rubbery semen flows down your chin and thighs. The rest of the males in the room don't give you much of a chance to recover, another pair soon mounting your form. You're subjected to this ritual over and over again, countless canids using you for their pleasure, [if player is male]bringing you to myriad mind-rending climaxes and [end if]bloating your form with their seed. Eventually, you feel your consciousness slipping away, and everything fades to black.";
		say "     When you come to, the twisted creatures are gone, leaving you lying alone in a pool of [if player is male]both your own cum and theirs[else]their cum[end if], your stomach still swollen from all the latex seed they pumped into you. You can't help but lick your lips, your body still trembling in the aftershocks of pleasure.[mimpregchance][mimpregchance][mimpregchance][mimpregchance]";
	else: [Males and neuters who dislike anal]
		say "     One of the rubber vulpines approaches your rear. Going wide-eyed, you try to squirm away from the inquisitive fox, earning a curious look from him. You make your wishes clear by turning around and opening wide instead, preferring your anal ring untarnished. With a playful yip, the vulpine lines himself up with your open mouth, sliding his length into you in one smooth motion, that tapered tip prodding the back of your throat while his balls brush across your chin. The overwhelming taste and aroma of heady animal musk combined with the odd scent of synthetics fills your lungs, suffusing your palate as that cock drools a bit of its tainted pre onto your tongue. [if cocks of player > 1]Below, you feel several more foxes nuzzling against your bevy of quickly hardening cocks, and soon their maws are wrapped around your lengths, polishing every inch of them. [else if player is male]Below, you feel another fox rubbing the side of his muzzle against your quickly hardening cock, and soon that maw is wrapped around your length, his long tongue polishing every inch of it. [end if]The fox begins to roll his hips, dragging his rubbery dick back and forth in your mouth, in and out, riddling your mind with intense, perverted pleasure each time you're is filled with that sleek, musky length.";
		say "     His tenderness doesn't last forever though, those thrusts growing progressively more fervent and excited as his peak draws near. You can feel that swelling knot ramming into your lips with every thrust, the fox's balls slapping against your chin. Eventually his tip makes its way deeper, slipping down your throat, causing your flesh to bulge slightly as your muscles ripple and squeeze around the intruding organ. He continues to rail your body[if player is male] while your own cock[smn] [ismv] serviced[end if], gentle pats, slaps, and the occasional squeak resounding through the room. At last, the fox slams home with one final thrust, his knot slipping past your teeth and locking your face to his throbbing dick as he cums into your gullet. [if cocks of player > 1]The rush of heady, intoxicating semen drives you over the edge, your cocks spurting your load down your vulpine attendants['] waiting throats. [else if player is male]The rush of heady, intoxicating semen drives you over the edge, your cock spurting your load down your vulpine attendant's waiting throat. [end if]Rope after rope of his corrupted seed spills into you, and you gurgle wetly, failing to swallow all of that fluid, tasting the strange mix of musk and latex on your tongue even as it spills past your lips and drools down your face in runny rivulets.";
		WaitLineBreak;
		say "     Eventually, his knot shrinks enough for him to pull out, his cum-slick cocks prying free with a loud squelch while a cascade of cool, rubbery semen flows down your chin. The rest of the males in the room don't give you much of a chance to recover, another soon stuffing your mouth. You're subjected to this ritual over and over again, countless canids using you for their pleasure, [if player is male]bringing you to myriad mind-rending climaxes and [end if]slightly bloating your form with their seed. Eventually, you feel your consciousness slipping away, and everything fades to black.";
		say "     When you come to, the twisted creatures are gone, leaving you lying alone in a pool of their cum, your stomach still swollen from all the latex seed they pumped into you. You can't help but lick your lips, your body still trembling in the aftershocks of pleasure.";
	setmonster "Latex Fox"; [Redundant code here because Inform throws a fit otherwise!]
	choose row monster from the table of random critters;
	now non-infectious entry is false; [Allows the fox to infect again]
	infect "Latex Fox";
	infect "Latex Fox";
	infect "Latex Fox";
	infect "Latex Fox";
	infect "Latex Fox";
	infect "Latex Fox";
	infect "Latex Fox";
	infect "Latex Fox";
	infect "Latex Fox";
	infect "Latex Fox"; [Complete infection after the orgy]
	SanLoss 20;

Toy Store ends here.
