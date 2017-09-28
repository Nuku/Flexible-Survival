Version 1 of Wendy by Wahn begins here.
[Version 1 - Put into its own file]

Section 1 - Events

Cow Hunting is a situation. The level of Cow Hunting is 5.
The sarea of Cow Hunting is "Plains".
when play begins:
	add Cow Hunting to badspots of hermaphrodite; [Cuntboy cowboy]

Instead of resolving a Cow Hunting:
	say "     Roaming through the plains, you see a person a bit off in the distance who waves and starts walking towards you. As he comes closer, you see that it's a guy in the shape of a humanoid horse, wearing a cowboy hat and a nice pair of jeans with an interesting bulge in the crotch area. His chest is bare, showing off a well-built upper body with washboard abs.";
	say "     'Hi there, I'm Corbin James. I was wondering if you might have seen a cow somewhere... an actual one, I mean. Some critter broke through the fences and the cows got out over at the farm I work at. I found most of them, but the best producer, Wendy, is still missing...'";
	LineBreak;
	say "     [bold type]What do you say to him?[roman type][line break]";
	say "     [link](1)[as]1[end link] - 'Sorry, haven't seen any cows.'[line break]";
	say "     [link](2)[as]2[end link] - 'Forget the stupid cow - I'll fuck you now.'[line break]";
	say "     [link](3)[as]3[end link] - 'A Cow? Really? The world's in the middle of all this and you worry about cows?'[line break]";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to say you haven't seen any, [link]2[end link] to rape him or [link]3[end link] to ask if he's serious.";
	if calcnumber is 1: [no]
		LineBreak;
		say "     He nods as you tell him you haven't seen any standard non-infected cows around since before the outbreak. 'Well, thanks anyways. But if you do find her after all please come and tell me over at the farm. It's the [bold type]McDermott family farm[roman type] a few miles that way. Or if you could just bring Wendy along... then there'd be a reward in it for you. No worries, she's pretty tame and tractable as long as there isn't a slavering beast running after her.' With that, the cowboy makes his goodbye and walks off to keep searching.";
		now Missing Cow is unresolved;
		now McDermott Farm Entrance is known;
		move Duke to Sheep Meadow SW; [putting him in his starting position]
		now thirst of Duke is 1; [starting the day/night movement of Duke]
		now thirst of Corbin is 1; [starting the day/night movement of Corbin]
	else if calcnumber is 2: [rape]
		LineBreak;
		say "     The cowboy brings out a 'No! What the hell's wrong with you fu-', then you land the first blow and the conversation comes to a crashing halt.";
		repeat with y running from 1 to number of filled rows in table of random critters:
			choose row y in table of random critters;
			if name entry is "Cowboy Cuntboy":
				now monster is y;
				now area entry is "Plains";
				now non-infectious entry is false;
				break;
		challenge "Cowboy Cuntboy";
	else: [seriously?]
		LineBreak;
		say "     He shrugs 'Why the hell not? Even if I now look like this, it's my job. And a farm isn't the worst place to wait out these strange times - plenty of food, you know. So what about the cow? Have you seen her? No? Well, time to keep searching for me then. If you see her by any chance later - bring the old gal to the [bold type]McDermott farm[roman type] - a few miles that way. There's a reward.' With that, the horsey cowboy walks off to keep searching for the missing cow.";
		now Missing Cow is unresolved;
		now McDermott Farm Entrance is known;
		move Duke to Sheep Meadow SW; [putting him in his starting position]
		now thirst of Duke is 1; [starting the day/night movement of Duke]
		now thirst of Corbin is 1; [starting the day/night movement of Corbin]
	now Cow Hunting is resolved; [event resolved, either peacefully or through combat]
	now battleground is "Void";[avoids random fights after]

Missing Cow is a situation. The level of Missing Cow is 5. Missing Cow is resolved.
The sarea of Missing Cow is "Plains".

Instead of resolving a Missing Cow:
	say "     Roaming through the plains, you suddenly hear loud mooing coming from somewhere and as you look around, you spot an... interesting scene a moderate distance away. Looks like a cow - a regular, non-transformed one - who's just being fucked by a pretty large gryphon. The winged predator is holding the bovine only lightly with his taloned paws as he ruts her from behind and it doesn't look like she's minding getting fucked by him - in fact, the sounds she makes seem rather pleased.";
	say "     This must be Wendy, the missing cow Corbin told you about. There's that reward waiting for you if you manage to bring her back to the McDermott Farm. What do you want to do about her now? You could just... wait, hoping the gryphon might fly off after he got his rocks off - on the other hand, there's no guarantee that the feral beast won't just want a quick snack after sex and could eat her.";
	LineBreak;
	say "     So - wait ([link]Y[as]y[end link]) or attack now ([link]N[as]n[end link])?";
	if player consents:
		LineBreak;
		say "     You decide to just wait the gryphon out, keeping your distance (at first) and finding a good spot from which you can observe them. Lustful moos and gryphon shrieks sound out across the plains as the cow keeps getting mounted by the winged lion, both of them oblivious to anything around them. As you watch the unequal partner's coupling, you find yourself walking slowly towards them, eager to get a better view. Soon you're pretty close - close enough to hear the squelching noises as the gryphon thrusts in and see the wetness of the cow's fur on her backside and the hind legs. This obviously has been going on for quite a while, more than one load of the mythical beast leaking out around his shaft as he pounds into Wendy.";
		say "     The sex continues with unabated wildness for some more time, until you notice the feral gryphon getting louder in his shrieks and faster with the thrusts. Finally he pushes all of his hard cock into her for a final time, knotting with the bovine as he blasts another large load of his seed into her. Staying bound to Wendy for some more time after that, her pussy and womb flooded with his seed held in by the knot, the gryphon rubs the side of his beak and head against her back affectionately, taking care not to hurt her with the sharp tip of his beak.";
		WaitLineBreak;
		say "     An intermediate time later, he dismounts her, pulling his knotted shaft free with a pop and a gush of milky white cum. The gryphon's cock dangles down between his legs, wet and dripping, now quickly softening. Now done with his bovine mate, the large creature looks around, giving a surprised squawk as he notices you for the first time. Putting a somewhat possessive as well as protective paw on the cow's back, he gives you a distrustful look. Not quite sure if this feral creature can even understand you, you raise your hands in a pacifying gesture and concentrate on keeping a calming tone of voice as you explain to him that you just want to bring Wendy back home where she'll be taken care of.";
		say "     Seems like you got through to him on some level... with a last squawk that might be a goodbye, the gryphon rubs his head against Wendy, then jumps into the air, flying off with strong beats of his large wings. You're left standing on the plains with Wendy the cow, now munching calmly on a mouthful of grass as she looks back at you and her pussy twitches as the gryphon's cum keeps dripping out of it.";
		say "     [WendyGryphonAftermath]";
	else: [fight]
		LineBreak;
		say "     Rushing forward, waving your arms and shouting at the gryphon, you get its attention and ruin the mood for the large creature. With an annoyed squawk, the feral dismounts Wendy, then turns to you.";
		challenge "Feral Gryphon";
		if fightoutcome >= 20 and fightoutcome <= 29: [lost]
			say "     Having dealt with you, the gryphon gives a satisfied squawk, then turns back to Wendy. You hear his stomach rumble. Ohoh... that doesn't sound good - and you can't stop him now. The predatory beast walks towards the cow, then... rubs the side of his head against her in visible affection, squawks what you suppose is a goodbye and jumps into the air, flying off with powerful wing-beats. Phew - seems like he doesn't eat what he fucks. You pick yourself up from the ground, then walk over to the peacefully grazing cow. As you walk around her and her hindquarters come into sight, you realize that the gryphon must have been breeding her for some time already - his cum is just dripping out of her.";
			say "     [WendyGryphonAftermath]";
		else if fightoutcome >= 30: [fled]
			say "     At some point as you were running, the feral gryphon turned around and made his way back towards the cow. You just hope that he goes back to fucking her and isn't munching on a piece of beef right now...";
		else if fightoutcome >= 10 and fightoutcome <= 19: [won]
			say "     Having driven the gryphon off, you have a look at Wendy the cow, now calmly munching on a mouthful of grass. She doesn't seem to be bothered at all from having been fucked by a gryphon - multiple times at least, before you arrived, judging from the amount of cum oozing out of her pussy and making the fur on her back end wet and sticky.";
			say "     [WendyGryphonAftermath]";
	now battleground is "Void";[avoids random fights after]

to say WendyGryphonAftermath:
	WaitLineBreak;
	if cocks of player > 0:
		say "     Seeing the thoroughly bred cunt of this large and docile creature right in front of you, the thought comes into your mind that you could just... try her out yourself. It's not like one more load would make much of a difference now, would it? Do you follow through with this idea ([link]Y[as]y[end link]), or just bring the cow back to the McDermott Farm right now ([link]N[as]n[end link])?";
		if player consents:
			LineBreak;
			if scalevalue of player < 3:
				say "     The will to act may be there, but you're just too small to actually do it. There's no way you could get your cock up into Wendy's pussy on your own, and the number of stepladders available out here in the plains is rather low.";
			else if scalevalue of player is 3:
				say "     Speaking in calming tones to the cow, you walk up to her and stroke her fur for a moment until she gets used to your presence. Since she's just a bit too tall for you to just take her, you lead her over a few feet to the stubby remains of a building that stood here before, maneuvering her into the right position next to a fallen wall. Standing on the low rocks, you gently lift her tail and have a look at her pussy. It's pretty large in human terms, but that's just to be expected from a bigger creature. Milky white cum slowly drips from her pussy lips. You pull our your hard cock and rub it up and down over her sex, then aim it right at her opening and push forward, spreading her slick passage with your manhood. For being so big and just having been fucked by a gryphon, Wendy is amazingly tight, instinctively gripping your member with her inner muscles. You pound into her with eager thrusts, not holding back for a second until you soon blast your own cum into Wendy to mingle with the gryphon's in her womb. Satisfied, you pull out, then put your clothes back on.";
			else:
				say "     Speaking in calming tones to the cow, you walk up to her and stroke her fur for a moment until she gets used to your presence and lowers her head again to graze. Then you walk to her back end, gently lift her tail and have a look at her pussy. It's pretty large in human terms, but that's just to be expected from a bigger creature. Milky white cum slowly drips from her pussy lips. You pull our your hard cock and rub it up and down over her sex, then aim it right at her opening and push forward, spreading her slick passage with your manhood. For being so big and just having been fucked by a gryphon, Wendy is amazingly tight, instinctively gripping your member with her inner muscles. You pound into her with eager thrusts, not holding back for a second until you soon blast your own cum into Wendy to mingle with the gryphon's in her womb. Satisfied, you pull out, then put your clothes back on.";
		else:
			LineBreak;
			say "     Fuck a cow? What strange ideas come up inside you these days... the nanites must be getting to you. You do your best to ignore that inner voice.";
	LineBreak;
	say "     Stroking Wendy and feeding her bits of grass, you manage to get the cow moving towards the farm. She's got a rather sedate tempo and often stops to rip off the rare green and more succulent plants along the way, but after about two hours, you finally arrive at the McDermott farm.";
	WaitLineBreak;
	say "     Having been spotted on your approach, the anthro horse cowboy Corbin you met before out in the plains comes to greet you. 'Hey there, you actually found her. Thanks a lot for bringing Wendy back.' He rubs the cow's neck and scritches her on a special spot behind her ears as he talks to her 'You got frightened and ran away, then couldn't find your way back, could you? Poor Wendy, you must be really feeling the pressure in your udder now. Go on, you know the way to the milking shed, I'll be along shortly.' With a pleased 'Moo', the cow trots towards one of the larger buildings on the farm.";
	say "     Corbin nods with a smile as she starts walking, then gets pretty wide eyes as her hindquarters come into sight, still covered in by-now dried cum. 'What the -?' he gasps, turning to you with a questioning look, after which you explain about the gryphon you found the cow with. 'Wow, that's a pretty wild story. One of those winged lion things and Wendy having sex? I'll have to go check her out right now... oh, about the reward - go to the farmhouse and talk to Mr. McDermott, ok?'";
	LineBreak;
	say "     With that, Corbin rushes after the cow, leaving you standing alone at the farm entrance.";
	increase hp of Anthony by 1;
	move player to McDermott Farm Entrance;
	move Wendy to McDermott Barn;
	now Missing Cow is resolved;
	
Section 2 - NPC


Wendy is a woman. The hp of Wendy is normally 0.
The description of Wendy is "[WendyDesc]".
The conversation of Wendy is { "Moh Moo Moh Mooo Moo - Moh!" }.

instead of sniffing Wendy:
	say "Wendy smells like a cow - so a big, furry animal. With her stall being cleaned as often as it does, that's not a half-bad smell.";

to say WendyDesc:
	say "     Wendy is a cow - but not just any cow. She's had quite a bit of excitement out in the dry plains lately, getting lost and having an... interesting time with a large feral gryphon. As you walk up to her stall, she gives a greeting 'Mooh', seemingly recognizing you. Then she turns, moving her hindquarters in your direction and looking back at you. Might just be your imagination, but it's a bit as if she was presenting herself to you, wanting a little more interspecies attention.";

instead of fucking the Wendy:
	if cocks of player is 0:
		say "     Sadly, you won't get very far with Wendy in your current gender state. She might be horny for another fuck by an exotic partner, but just isn't intelligent enough to take an active role and do anything but get fucked by someone's cock.";
	else if lastfuck of Wendy - turns < 4:
		say "     Wendy still seems a little worn from your earlier fun with her. It might be better to give her a bit more of a break. beside, what if you got caught?";
	else:
		if scalevalue of player < 3:
			say "     Looking to have some sexy time with Wendy, you look around a bit for something to solve the problem that you're just so much smaller than her. Finally, you push a hay-bale over into her stall, then climb on it. Speaking in calming tones to the cow, you stroke her fur for a moment so she gets used to your touch, then gently lift her tail and look at her pussy. It's pretty large in human terms, as expected from a bigger creature, and it seems like she's ready and waiting for you to fuck her - seeing that she's pretty wet already. You pull out your hard cock and rub it up and down over her sex, then aim it right at her opening and push forward, spreading her slick passage with your manhood. Wendy's pussy is surprisingly tight, as she instinctively grips your member with her inner muscles. You pound into her with eager thrusts, filling the barn with lustful moans and moo's. Fucking the docile bovine without holding back for a second, it doesn't take all that long until you blast your cum deep into her body.";
			say "     Satisfied, you pull out, then climb down from the hay-bale and get your clothes back in order. You're just carrying the bale out of Wendy's stall when [one of]a horseman farmhand comes into the barn and notices what you're doing. His eyes go from the hay-bale to you, then to Wendy, still with her backside turned to the stall entrance, leaking white cum from her freshly fucked pussy. A knowing smile spreading over his face, the man gives you a wink, then takes another cow to be milked.[or]you hear a creak from above. Looking up, you don't see anyone at the edge of the hayloft, but there might have been someone up there the whole time, watching you fuck the cow...[at random]";
		else if scalevalue of player is 3:
			say "     Looking to have some sexy time with Wendy, you look around a bit for something to solve the problem that you're somewhat smaller than her. Finally, you grab a part of a cut-up wooden beam and lay it on the ground in her stall, stepping up on it. Perfect, now you're in the right height. Speaking in calming tones to the cow, you stroke her fur for a moment so she gets used to your touch, then gently lift her tail and look at her pussy. It's pretty large in human terms, as expected from a bigger creature, and it seems like she's ready and waiting for you to fuck her - seeing that she's pretty wet already. You pull out your hard cock and rub it up and down over her sex, then aim it right at her opening and push forward, spreading her slick passage with your manhood. Wendy's pussy is surprisingly tight, as she instinctively grips your member with her inner muscles. You pound into her with eager thrusts, filling the barn with lustful moans and moo's. Fucking the docile bovine without holding back for a second, it doesn't take all that long until you blast your cum deep into her body.";
			say "     Satisfied, you pull out, then step off your piece of wood and get your clothes back in order. You're just carrying the short beam out of Wendy's stall when [one of]a horseman farmhand comes into the barn and notices what you're doing. His eyes go from the piece of wood to you, then to Wendy, still with her backside turned to the stall entrance, leaking white cum from her freshly fucked pussy. A knowing smile spreading over his face, the man gives you a wink, then takes another cow to be milked.[or]you hear a creak from above. Looking up, you don't see anyone at the edge of the hayloft, but there might have been someone up there the whole time, watching you fuck the cow...[at random]";
		else:
			say "     Looking to have some sexy time with Wendy, you walk up to her backside. Speaking in calming tones to the cow, you stroke her fur for a moment so she gets used to your touch, then gently lift her tail and look at her pussy. It's pretty large in human terms, as expected from a bigger creature, and it seems like she's ready and waiting for you to fuck her - seeing that she's pretty wet already. You pull out your hard cock and rub it up and down over her sex, then aim it right at her opening and push forward, spreading her slick passage with your manhood. Wendy's pussy is surprisingly tight, as she instinctively grips your member with her inner muscles. You pound into her with eager thrusts, filling the barn with lustful moans and moo's. Fucking the docile bovine without holding back for a second, it doesn't take all that long until you blast your cum deep into her body.";
			say "     Satisfied, you pull out, then step back from Wendy and get your clothes back in order. You're just exiting her stall when [one of]a horseman farmhand comes into the barn and notices what you're doing. His eyes go from you to Wendy, still with her backside turned to the stall entrance, leaking white cum from her freshly fucked pussy. A knowing smile spreading over his face, the man gives you a wink, then takes another cow to be milked.[or]you hear a creak from above. Looking up, you don't see anyone at the edge of the hayloft, but there might have been someone up there the whole time, watching you fuck the cow...[at random]";
		now lastfuck of Wendy is turns;

Wendy ends here.
