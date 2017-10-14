Version 1 of PIG Frat by Stripes begins here.
[ Version 1 - Initiation ]

"Expands upon the Frat House event with a full location at the College Campus area of Flexible Survival."

piginitiation is a number that varies.

Section 1 - Initial Event

Frat House is a situation. The level of Frat House is 3.
The sarea of Frat House is "Campus".
when play begins:
	add Frat House to badspots of girl;
	add Frat House to badspots of furry;

Instead of resolving a Frat House:
	say "     Exploring the edge of campus, you can hear the raucous sounds of drunken partying happening nearby. Approaching cautiously, you find a large frat house with numerous boars, hogs and sows partying out on the lawn. All of them are carousing with beer in hand or lustfully fucking one another, or both. Despite the messy state of the pigs, there's something tempting about their carefree partying that draws your attention to watch. You find yourself a little too drawn to watch a well-hung hog fucking a squealing sow and fail to notice one of the messy pigs sneaking up on you. With a lustful squeal, she charges, trying to force herself onto you.";
	challenge "Messy Pig";
	say "     That over, you decide to leave before the others have a chance to investigate the commotion, leaving the Phi Iota Gamma fraternity behind. Things are just a little too busy there right now to consider approaching.";
	change south exit of Greek Street to Phi Iota Gamma;
	change north exit of Phi Iota Gamma to Greek Street;
	now Frat House is resolved.


Section 2 - Phi Iota Gamma Frat House

Phi Iota Gamma is a room. It is fasttravel. It is private.
The description of Phi Iota Gamma is "[phiiotagammadesc]".

the scent of Phi Iota Gamma is "The frat house smells strongly of stale beer, pigs and sex.".

[Note: See Philip for the other half of gaining access.]

to say phiiotagammadesc:
	if piginitiation is 0:
		say "     Seeing how things have calmed down after the massive kegger, you decide to approach the frat house. Not that the party's actually stopped, it's just died down to those die-hards still conscious after the big party. You can see several sows and hogs flopped out on the messy lawn, some still making out and others just passed out. Approaching the steps, your way is blocked by a big boar with a small keg under his meaty arm. After slamming back a big swig straight from it, he looks you over.";
		if bodyname of player is not "Messy Pig" and bodyname of player is not "Piggy" and facename of player is not "Messy Pig" and facename of player is not "Piggy":
			say "     Unimpressed, he gives a beer-scented belch. 'What do you think you're doing here? Members and guests only,' he says curtly.";
			say "     [bold type]Shall you tell him that you're looking to join up or just let it go and leave?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Join up.";
			say "     ([link]N[as]n[end link]) - Leave.";
			if the player consents:
				say "     In the hopes of gaining access, you tell him that you're interested in joining. He snorts at this and gives you a light shove back. 'Like I said, members and guests only. If you want to join the mighty Phi Iota Gamma...'  There is a pause for a cacophony of snorting comes from he and all the pigs within earshot, even those clearly dead drunk. '...you've got to find a member willing to sponsor you[if cunts of player > 0]. Given how things are these days, we're not so picky about it being guys only, but you[else]You[end if] need a senior frat brother in good standing to vouch for you. Until then, shove off, you mooch.'";
				say "     Since trying to force your way in will likely bring the whole frat down upon you, you decide to leave for now. You try to think if anyone you've met might be a member of the fraternity.";
				now piginitiation is 2;
			else:
				say "     You tell him that it was your mistake and leave as quickly as you can without stirring up the porcine people.";
				now piginitiation is 1;
		else:
			say "     He eyes your porcine features with a lustful leer, but still blocks you from coming in. 'You may look the part, but its members and guests only,' he says.";
			say "     [bold type]Shall you tell him that you're looking to join up or just let it go and leave?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Join up.";
			say "     ([link]N[as]n[end link]) - Leave.";
			if the player consents:
				say "     In the hopes of gaining access, you tell him that you're interested in joining. 'Well, you might fit in here with a little help, but like I said, it's members and guests only. If you want to join the mighty Phi Iota Gamma...'  There is a pause for a cacophony of snorting comes from he and all the pigs within earshot, even those clearly dead drunk. '...you've got to find a member willing to sponsor you[if cunts of player > 0]. Given how things are these days, we're not so picky about it being guys only, but you[else]You[end if] need a senior frat brother in good standing to vouch for you. When you do, I'll be happy to help with your initiation.'";
				say "     Since trying to force your way in will likely bring the whole frat down upon you, you decide to leave for now. You try to think if anyone you've met might be a member of the fraternity.";
				now piginitiation is 2;
			else:
				say "     You tell him that it was your mistake and leave as quickly as you can without stirring up the porcine people.";
				now piginitiation is 1;
		WaitLineBreak;
		move player to College Campus;
	else if piginitiation is 1:
		say "     As before, you find some light carousing and sex going on around the frat house[if a random chance of 2 in 5 succeeds]. There seems to be some noisy activity going on inside, [one of]an orgy[or]a drinking contest[or]an eating contest[or]some sweaty sex[in random order] from the sounds of it[end if]. That big boar's still sitting on the porch[one of], stuffing his face with some dry pretzels from a plastic jug[or], working on his next mini-keg[or], enjoying a blow job from one of the sows[in random order]. Seeing you coming up, he grunts and gets up to block the steps.";
		say "     [bold type]Shall you ask to join the frat or take the hint and leave?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Ask to join the frat.";
		say "     ([link]N[as]n[end link]) - Take the hint and leave.";
		if the player consents:
			if bodyname of player is not "Messy Pig" and bodyname of player is not "Piggy" and facename of player is not "Messy Pig" and facename of player is not "Piggy":
				say "     In the hopes of gaining access this time, you tell him that you're interested in joining. He snorts at this and gives you a light shove back. 'Like I said, members and guests only. If you want to join the mighty Phi Iota Gamma...'  There is a pause for a cacophony of snorting comes from he and all the pigs within earshot, even those clearly dead drunk. '...you've got to find a member willing to sponsor you[if cunts of player > 0]. Given how things are these days, we're not so picky about it being guys only, but you[else]You[end if] need a senior frat brother in good standing to vouch for you. Until then, shove off, you mooch.'";
				say "     Since trying to force your way in will likely bring the whole frat down upon you, you decide to leave for now. You try to think if anyone you've met might be a member of the fraternity.";
			else:
				say "     In the hopes of gaining access this time, you tell him that you're interested in joining. 'Well, you might fit in here with a little help, but like I said, it's members and guests only. If you want to join the mighty Phi Iota Gamma...'  There is a pause for a cacophony of snorting comes from he and all the pigs within earshot, even those clearly dead drunk. '...you've got to find a member willing to sponsor you[if cunts of player > 0]. Given how things are these days, we're not so picky about it being guys only, but you[else]You[end if] need a senior frat brother in good standing to vouch for you. When you do, I'll be happy to help with your initiation.'";
				say "     Since trying to force your way in will likely bring the whole frat down upon you, you decide to leave for now. You try to think if anyone you've met might be a member of the fraternity.";
			now piginitiation is 2;
		else:
			say "     You tell him that it was your mistake and leave as quickly as you can without stirring up the porcine people.";
			now piginitiation is 1;
		WaitLineBreak;
		move player to College Campus;
	else if piginitiation is 2 or piginitiation is 3:
		say "     As before, you find some light carousing and sex going on around the frat house[if a random chance of 2 in 5 succeeds]. There seems to be some noisy activity going on inside, [one of]an orgy[or]a drinking contest[or]an eating contest[or]some sweaty sex[in random order] from the sounds of it[end if]. That big boar's still sitting on the porch[one of], stuffing his face with some dry pretzels from a plastic jug[or], working on his next mini-keg[or], enjoying a blow job from one of the sows[in random order]. Seeing you coming up, he grunts and gets up to block the steps.";
		if bodyname of player is not "Messy Pig" and bodyname of player is not "Piggy" and facename of player is not "Messy Pig" and facename of player is not "Piggy":
			say "     'Look, I told you that you can't join up without a sponsor. The mighty Phi Iota Gamma...'  Again, he pauses to oink and snort loudly along with his frat brothers. '...doesn't let just anyone join up. You'll need to find a senior member in good standing willing to support your joining up. As you can see, we've got no lack of willing members, so only the best get to join the mighty Phi Iota Gamma.'  And with this, another round of oinking and snorting starts up. No further ahead for your troubles, you turn to go even before the noise dies down.";
		else:
			say "     'Look, I'm glad to see you're eager to join up, but you can't do so without a sponsor. The mighty Phi Iota Gamma...'  Again, he pauses to oink and snort loudly along with his frat brothers. '...is the best around. You'll need to find a senior member in good standing willing to support your joining up. You might look like you'll fit in, but we've got no lack of willing members, so only the best get to join the mighty Phi Iota Gamma.'  No further ahead for your troubles, you turn to go even before the noise dies down.";
		WaitLineBreak;
		move player to College Campus;
	else if piginitiation is 4:
		say "     The Phi Iota Gamma fraternity is quite literally a sty, but it suits its residents. The large, multi-room frat house is populated by carousing, lustful pigs in various states of inebriation, fornication and incapacitation. Aside from the boars and sows lounging out on the front lawn and the burly doorkeeper (Big Willy) keeping an eye on things from the porch, there's more members inside the common room (littered with empty beer cans), kitchen (devoid of any real food) and their bedrooms (reeking of porcine sex). A lot of the pigs here are passed out right now after their last rousing party, but surely you can find a frat member or two to have some fun with if you'd like.";


Section 3 - Initiation

to say pig_fratinitiation:
	say "     With Philip by your side, you approach the frat house again. As before, there's a collection of porcine people hanging around the place. Some are drinking or making out while a few are passed out. It seems you've come during a bit of a lull, as things are mostly quiet inside. But still that big boar's on the steps, drinking and keeping watch. As he sees you approach, he gets up moves to block your entry.";
	say "     'Back again, I see. Who's your big friend here?' he asks with a snort.";
	say "     Philip ignores him briefly, looking over the frat house and various pig mutants out on the lawn. After a good, long look, he smiles. 'Ah, this place never changes. Just like I remember it.'  You find that a little hard to believe, but the infection's probably muddied his memories on it. Still looking, he moves to go up the steps, but the big guy blocks him.";
	say "     'Where do you think you're going?' he snorts, putting arm against the bannister to bar the path. 'Members and guests only.'";
	say "     Your friend slams his big gut forwards with an oink, causing the other pig to stumble back a foot or two. 'The name's Philip and I was Phi Iota Gamma's Grand Porker back when you were getting your first short and curlies. This piglet here is my guest and we're coming in.'  And with that, he moves to go continue on his way, but the burly boar moves in front of him again, this time with a completely different attitude.";
	say "     'Wait! You don't mean you're Philip the Grand? The Grand Porker from eight years ago? The guy who once drank forty beers in ten minutes and then mud wrestled five pledges at once during their initiation? The only undefeated champion of the mud pit?'  Philip chuckles and nods to this and the guy's eyes go wide and he's left briefly stunned. When he recovers his wits, he and Philip break out into the intricate secret handshake your friend tried to teach you, full of shakes, slaps and oinks.";
	say "     'Man! You are the stuff of legends! Did you really put a dozen pigs in the dean's office?'  Not even waiting for an answer, he turns and starts calling out to the others that Philip the Grand is here. This rouses all but the most drunken of pigs into a cacophony of discussion.";
	say "     'What, Philip the Grand?'  'Grand Porker Philip is here?'  'Whozzat?'  'Biggest Grand Porker there ever was.'  'I heard he ate something like 300 chicken wings in one night.'  'No, I'd heard it was almost 350.'  'Someone get him a beer.'  'Yeah, let's party to celebrate!'";
	WaitLineBreak;
	say "     And with that, you and Philip ushered bodily into the fraternity by the excited mob of pigs. Drinks are passed around, an ornamental bathrobe is draped over Philip's shoulders and he's given a seat of honour. At first, you are a secondary concern, everyone wanting to toast this legendary member. Jokingly told it's tradition by their seniors, the freshmen are made to lick his piggy feet and take turns sucking his cock. You watch laughing and drinking alongside the others [if cocks of player > 0 and girl is not banned]while some sow licks and sucks your [cock of player] cock[else if cocks of player > 0]while some young male porker licks and sucks your [cock of player] cock[else]while a lusty frat boar eats you out[end if].";
	say "     As the last of them is pushed away, you're noticed and shoved forward, told to pay your respects to the veteran Grand Porker as well. Philip chuckles and presses your face to his musky loins, thick with slobber from those who've come before you. 'If you're looking to join the frat, you've got to be initiated. Get to work, pledge,' he oinks. Already quite aroused and muddled-headed from the experience, his heady scent is very enticing and you plunge your mouth over his manhood, licking and sucking it eagerly. The frat boars laugh and tease you, several of them groping you while you work that thick pillar of pork with your lips and tongue. And when the big pig's about to blow, someone presses your face right into his crotch so you're forced to swallow down every last drop of it - not that you mind by this point.";
	if cocks of player > 0 and ( girl is not banned ):
		say "     Like the beer, you get passed around between several boars and sows. Over the course of it, you have sex with several of them while everyone gets well and truly inebriated and thoroughly fucked. You quickly lose track of how many times you've been cum in or on and how many hot holes you've filled. Throughout it all, you become increasingly porcine, transformed by the raucous partygoers into another messy frat pig.";
	else if cocks of player > 0:
		say "     Like the beer, you get passed around between several boars. Over the course of it, you have sex with several of them while everyone gets well and truly inebriated and thoroughly fucked. You quickly lose track of how many times you've been cum in or on and how many hot holes you've filled. Throughout it all, you become increasingly porcine, transformed by the raucous partygoers into another messy frat pig.";
	else:
		say "     Like the beer, you get passed around between several boars. Over the course of it, you have sex with several of them while everyone gets well and truly inebriated and thoroughly fucked. You quickly lose track of how many times you've been cum in or on. Throughout it all, you become increasingly porcine, transformed by the raucous partygoers into another messy frat pig.";
	WaitLineBreak;
	say "     After a drinking contest that leaves a few boars passed out on the floor, Philip rises from his seat and waves for everyone's attention. 'It's great to be back here *hic* with all of ya at the mighty Phi Iota Gamma...'*  You're surrounded by the most raucous fit of oinking and squealing yet, and you join right in. '...and you've given me a great welcum... uh-welcome backsh, as always. Now, I know what you all want teh see, so the magooni... uh... the magnanomush Philip the Grand won't keep you waiting any longer.'  Many in the crowd, knowing what's coming, get more excited and the press of piggish flesh around you gets thicker. 'I think itsh time we finish this new piglet's initiashun up proper-like, don't you?' he says as he motions for two of the biggest boars to grab you.";
	say "     'Yeah!' comes the cry from the crowd.";
	say "     'And how do we do that here at Phi Iota Gamma?' he bellows.";
	say "     'Mud! Pit! Mud! Pit! Mud! Pit!' the chant rises up as you're carried bodily out the back door. Before you can even take stock of your situation, you're tossed face first into the muddy hole that makes up most of the back yard.";
	say "     Taking off his decorated robe with a flourish, he poses for everyone. His pudgy fingers run over his flabby body, giving his big rolls a shake. 'Philip! Philip! Philip!...'";
	say "     With a loud squeal, he dives right into the mud, tackling you as you try to stand up in the knee deep muck. You and he roll around, wrestling in the mud. Moving in the mud is difficult for both of you, adding to the amusement for the crowd, though your opponent is clearly in his element here. You try to fight him off, but he's as slick as the greased pig and always seems to squirm out of your grip. His oinking laugh, along with that of the crowd, fill your floppy pig ears as he easily knocks you off your feet several times.";
	say "     As the match goes on, it's clear he's drawing it out and toying with you. Angry at this, you try to fight back, but you never seem to make any headway before you're pulled back down or tossed aside. And the feel of his body, especially his hard cock, is very distracting. Add to that the musky scent of all the frat's boars suffusing the mud and coming off your sweaty opponent and it gets hard for you to focus. When your struggles turn to groping and fondling, the big pig laughs and presses your face to his flabby body. Suffocating in his manly scent, you're pressed steadily deeper into the muck and finally pinned beneath him.";
	WaitLineBreak;
	say "     With the match over, you try to get up, but he just keeps you pinned down in the mud. 'No way, piglet. Ya losht and now itsh time for you tah get porked. Itsh tradishun,' he slurs, laughing. Were you in your right mind, you'd know that couldn't have been the tradition, but it certainly is now. Feeling his thick meat at your [if cunts of player > 0]wet pussy[else]tight back door[end if], you obediently raise your ass for the greatest of Grand Porkers. You squeal in delight for all to hear as you're penetrated by their legendary leader, signalling the start of an orgy of messy, muddy sex.";
	if cunts of player > 0:
		say "     Surrounded by the sights, sounds and scents of porcine sex, you try to press back into every thrust of Philip's. It's difficult to push back with your arms and legs stuck in the cool mud, but it also helps cushion your body, adding a unique pleasure to the carnal act. And the way you're getting pounded hard and fast by the hog just feels right to you now. Wallowing in the muck and getting fucked by the big hog atop you is just what a losing [if cocks of player > 0]boar-[end if]sow like you deserves. You lost, so you get porked - it's tradition.";
		say "     His piggish hands roam over your body, groping and fondling your porcine flesh as he pounds away at you. Reaching back, you grab his heavy balls in your muddy hand and grope them. You feel them throb and be drawn up as the big pig raises one last cheer for his frat before driving his manhood fully into you and cumming hard. You feel every splash of his hot, greasy load shooting into you, coating your womb with his seed. This sets you off in a squealing fit of ecstasy as you cum. Your body quivers as you ride his pulsing shaft for all it'll give.";
	else:
		say "     Surrounded by the sights, sounds and scents of porcine sex, you try to press back into every thrust of Philip's. It's difficult to push back with your arms and legs stuck in the cool mud, but it also helps cushion your body, adding a unique pleasure to the carnal act. Having that big, manly pig atop you, thrusting his greasy pole into your ass just feels right to you now. Wallowing in the muck and getting fucked by the big hog atop you is just what a losing boar like you deserves. You lost, so you get porked - it's tradition.";
		say "     His piggish hands grab you by the shoulders, pushing your upper body down into the mud as she plows into you harder and faster. You been pushed out towards the edge of the mud pit, so you're able to keep your head out enough to breathe, but barely. Reaching back, you grab his heavy balls in your muddy hand and rub them against your own. You feel them throb and be drawn up as the big pig raises on last cheer for his frat before driving his manhood fully into you and cumming hard. You feel every splash of his hot, greasy load shooting into you. His semen sprays against your prostate and fills your rectum. With your ass in the air, it flows down deeper as each fresh shot replaces the last until the pig's finally drained. The experience sends you over the edge, cumming messily, leaving streaks of white across the muddy earth.";
	if wslevel is 3:
		say "     When he's done, Philip pulls his sticky cock from your creamy [if cunts of player is 0]rear[else]pussy[end if] and rises slowly. With a push from him, you're rolled over onto your back. Looking up, you see him and the other frat members surrounding you - big, sexy piggies all. And with big, thick cocks all down pointed at you.";
		say "     'Time for you to be anointed as one of our brotherhood, piglet. All hail the mighty Phi Iota Gamma!' he oinks. As they all start oinking and grunting, they release their bladders, full and heavy with the spoils of drinking. Their hot piss rains down upon you, washing off the mud even as they mark you as one of their own. When the big gatekeeper's flow passes across your face, you grin up at him and make a show of opening your mouth wide, welcoming his hot, acrid urine into your mouth. Drinking it down reminds your bladder that it's similarly overfilled and you start pissing yourself[if cocks of player > 0], adding your piss to the streams shooting onto your belly[else], soaking your thighs as your piss arcs from your peehole into the wallow[end if]. When they're all done, you're pulled from the mud, the scent of your whole frat clinging to you.";
	else:
		say "     When he's done, Philip pulls his sticky cock from your creamy [if cunts of player is 0]rear[else]pussy[end if] and rises slowly. With a push from him, you're rolled over onto your back. Looking up, you see the whole of the frat surrounding you - big, sexy piggies all. And with big, thick cocks all in hand and being pumped quickly.";
		say "     'Time for you to be anointed as one of our brotherhood, piglet. All hail the mighty Phi Iota Gamma!' Philip oinks, once again in the ceremonial bathrobe. As they all start oinking and grunting, they start to cum, splatters of greasy cum raining down onto your already messy body. Their semen coats you all over as they mark you as one of their own. When the big gatekeeper grunts and sprays at your face, you make a show of opening your mouth wide, welcoming his thick, gooey cum into your mouth. The perverseness of all this has you [if cocks of player > 0]jerking yourself off wildly until your seed's mingling with the rest of their, symbolizing your unity as members of this messy fraternity of dirty pigs[else]spread your legs and hold your pussy lips wide, giving the boars a succulent target to shoot at. When anyone manages a hit, you pump your plump fingers into your cunny, working their cum deep inside you[end if]. When they're all done, you're pulled from the mud, the scent of your whole frat clinging to you.";
	WaitLineBreak;
	decrease humanity of player by 30;
	if "Strong Psyche" is listed in feats of player, increase humanity of player by a random number between 4 and 8;
	if "Weak Psyche" is listed in feats of player, decrease humanity of player by a random number between 4 and 8;
	setmonster "Piggy";
	choose row monster from the table of random critters;
	now tailname of player is "Piggy";
	now facename of player is "Piggy";
	now skinname of player is "Piggy";
	now bodyname of player is "Piggy";
	now cockname of player is "Piggy";
	attributeinfect;
	now tail of player is tail entry;
	now face of player is face entry;
	now skin of player is skin entry;
	now body of player is body entry;
	now cock of player is cock entry;
	if libido of player < 45, now libido of player is 45;
	if humanity of player < 10:
		if cunts of player is 0 and girl is not banned:
			say "     The party continues on from there with plenty more sex and drinking, though many adjourn to their rooms for more private romps or to pass out. You get dragged up to the doorkeeper's room along with some sows for some added fun. You have a lot of wild, piggish sex with him and the girls over the next several hours. Eventually you all end up passing out. When you wake up, the girls are gone, but your new roommate is still there. And like a good roommate and freshman member should, you take his cock into your snout and wake him up with a good-morning blow-job.";
		else:
			say "     The party continues on from there with plenty more sex and drinking, though many adjourn to their rooms for more private romps or to pass out. You get dragged up to the doorkeeper's room along with a few other members for some added fun. You have a lot of wild, piggish sex with them over the next several hours. Eventually you all end up passing out. When you wake up, others are gone, but your new roommate is still there. And like a good roommate and freshman member should, you take his cock into your snout and wake him up with a good-morning blow-job.";
		WaitLineBreak;
		end the game saying "You succumb to your piggish desires and remain at the frat house.";
		now battleground is "void";
		wait for any key;
		now skipturnblocker is 1;
		follow the turnpass rule;
		stop the action;
	else:
		say "     The party continues on from there with plenty more sex and drinking, though many adjourn to their rooms for more private romps or to pass out. You lose track of the time and eventually pass out underneath Philip, a part of you remembering to stay with him. You're roused from this slumber as the big guy gets up and quietly starts to leave. Seeing him going, you stagger to your feet and ask why he's not staying. 'Oh, that's how you stay a legend. Swing by, impress them all and then go so the tales can spread and grow. Every time I come back, my exploits are all the bigger. Like me, eh?' he chuckles quietly, rubbing his flabby belly.";
		say "     You find yourself quite tempted to stay with at the frat, knowing they'd happily find a space for you, but manage to shake off the urge. If you don't go now, you'll probably never leave. It takes you a few minutes to find your gear and pull it out from under some passed out pig men, but get do manage to get out without giving into that urge to suck one last cock. Much of what happened is a blur in your mind thanks to the drinking and brain-addling sex, but you do proudly recall how you're now a member of the best fraternity there is - the mighty Phi Iota Gamma! *oink*  *grunt* *snort*[line break]";
		if player is impreg_able, impregnate with "Piggy";
		now skipturnblocker is 1;
		follow the turnpass rule;
		follow the turnpass rule;
		now skipturnblocker is 0;
		now piginitiation is 4;
		now lastfuck of Philip is turns;


Section 4 - Frat Members

frat members is a person.
The description of frat members is "     There's a varied set of frat members and their sow girlfriends having fun in and around the frat house. Plump and messy pigs, some are drinking or having sex while others are simply lounging about or sleeping off their last bender. Most are nude, though a couple of them have a college jersey or frat sweater stretched over their rounded bodies. Despite, or perhaps because of, their messy and crude behaviour, a part of you finds joining in on their fun quite appealing.".
The conversation of frat members is { "Oink!" }.
frat members is in Phi Iota Gamma.

the scent of frat members is "The frat members all smell of pigs, beer and sex.".

instead of conversing the frat members:
	say "     You try to chat with some of the members, but they aren't really interested in talking about much aside from beer and sex.";

the fuckscene of frat members is "[sexwithfratmembers]".

to say sexwithfratmembers:
	if lastfuck of frat members - turns < 4:
		say "     While you had lots of fun, you're not sure if you're quite up for more messy sex with one of the frat members quite yet.";
	else:
		say "     Looking around for possible playmates, you find yourself with several options. What do you feel in the mood for?";
		say "[bracket]Only one option at present, but more can be added. - The Mgmt[close bracket][line break]";
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		choose a blank row in table of fucking options;
		now title entry is "Get fucked by one of the boars";
		now sortorder entry is 1;
		now description entry is "find a horny hog to pork you";
		choose a blank row in table of fucking options;
		now title entry is "Suck some boar cock";
		now sortorder entry is 2;
		now description entry is "wrap your lips around the nearest pig's meat";
[		if cocks of player > 0:
			choose a blank row in table of fucking options;
			now title entry is "Fuck one of the sows";
			now sortorder entry is 3;
			now description entry is "pick a random sow and pork her";]
		repeat with y running from 1 to number of filled rows in table of fucking options:
			choose row y from the table of fucking options;
			say "[link][y] - [title entry][as][y][end link][line break]";
		while sextablerun is 0:
			say "Pick the corresponding number> [run paragraph on]";
			get a number;
			if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
				now current menu selection is calcnumber;
				choose row calcnumber in table of fucking options;
				say "Shall you [description entry]?";
				if player consents:
					let nam be title entry;
					now sextablerun is 1;
					if nam is "Get fucked by one of the boars":
						say "[fratmembersex01]";
					else if nam is "Suck some boar cock":
						say "[fratmembersex02]";
					else if nam is "Fuck one of the sows":
						say "[fratmembersex03]";
			else:
				say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
		now lastfuck of frat members is turns;
		increase hp of frat members by 1;
		wait for any key;
		clear the screen and hyperlink list;

to say fratmembersex01:
	say "     Approaching one of the big pigs, you run your hands over his body and down to his groin. Asking him if he'd care to stick his big sausage in you, he heartily agrees. With an oink, he shoves you over and onto all fours, moving to mount you right there. The big, sweaty boar of a man presses his porcine atop of yours and thrusts his stiff cock into your ";
	if cunts of player > 0:
		say "juicy pussy. Grabbing your chest, he gropes you while pounding his thick meat into you. '[one of]Mmm... I love fucking slutty sows like you[or]It's great living here. All the pussy a hog could want[or]Take it, you dirty sow[at random],' he oinks. His throbbing rod feels great inside you and his strong, musky scent is arousing, turning you on all the more.";
		say "     You and he got at it for quite a while, the big male rutting you with pounding thrusts. His flabby body presses down atop you, warm and slick against you. He snuffles at your ear and fondles your [if cocks of player > 0]erection[else if breast size of player > 1]tits[else]stuffed pussy[end if] while fucking you. With a loud oink, he drives himself fully into you and unleashes his greasy pig cum deep inside you, seeking to breed you. After fucking you, he pulls out and [one of]staggers off to get some more drink[or]rolls over to pass out[or]belches and heads off to find another sow to screw[in random order].";
	else:
		say "tight rectum. Grabbing your sides, he holds you tightly as his thick meat pushes its way into you, violating your back entrance with his greasy flesh. Once he's buried inside you, he lowers himself overtop you and starts rutting you with grunting thrusts. '[one of]Mmm... you're a tight little sow-boy, aren't you?' he chuckles[or]You're quite the slut for pig cock, aren't you?' he teases[or]Ain't quite a juicy pussy, but it's a close second, slut,' he oinks[or]This frat's awesome. Plenty of ass when you can't get no pussy,' he says[or]I've got a big, greasy load just right for a slutty bottom like you,' he oinks[in random order]. His throbbing rod feels great inside you and his strong, musky scent is arousing, turning you on all the more.";
		say "     You and he go at it for quite a while, the big male rutting you with pounding thrusts. His flabby body presses down atop you, warm and slick against your back. He gives your ass the occasional slap, calling you a dirty sow while he fucks you. After several minutes of wild, sticky rutting, he drives his large shaft deep inside your bowels and unleashes his greasy load of pig cum into your bowels. You can feel his cock throb with each shot of hot semen into you. After fucking you, he pulls out and [one of]staggers off to get some more drink[or]rolls over to pass out[or]belches and heads off to find a proper sow to screw[or]wipes his cock across your ass and flops down in a chair[in random order].";
	infect "Messy Pig";

to say fratmembersex02:
	say "     Heading over to a sexy porker flopped out on the sofa, you drop to your knees between his legs. Without introductions or preamble, you grab hold of his cock and stuff it right into your mouth. He gives a grunt of surprise and [one of]presses your face right into his musky groin[or]proclaims what a great frat this is[or]oinks that you're quite the slut[or]takes another big swig of his beer[or]chuckles that all new members should be as eager as you to service the seniors[at random]. You slide your tongue up and down his throbbing pole, lapping up the greasy precum that leaks from it. You work your lips up and down his pink shaft as you bob your head and suck down harder. Fondling his hefty balls, you grow all the hungrier for their contents and are soon rewarded for your efforts. His gooey, greasy cum floods your mouth and runs down your throat, filling your belly with an exciting warmth. Once he's drained, you lick your chops and stride off, excited in the feeling of being such a horny cockslut.";
	infect "Messy Pig";

to say fratmembersex03:
	say "***";


[ piginitiation ]
[ 0 = not encountered ]
[ 1 = encountered     ]
[ 2 = asked to join   ]
[ 3 = told Philip     ]
[ 4 = initiated       ]

PIG Frat ends here.
