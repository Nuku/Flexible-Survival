Version 4 of New Ewe Store by Sarokcat begins here.
[ Version 4.1 - Ram and Ewe unleashed ]
[ Original version by Sarokcat - Revisions and additional material including all M/M with Leon added by Stripes. ]

"Adds a situation to Flexible Survival with a flock of sheep with a problem."

[ NESProgress (Quest variable)          ]
[   0 = quest not started               ]
[   1 = quest started                   ]
[   2 = heard her in sewers             ]
[   3 = found Mary                      ]
[   4 = returned to store               ]
[   5 = gained bonus feat               ]
[ 100 = Succumbed to Leon as male ewe   ]

[ RamFucked                             ]
[ 0 = Leon not chosen                   ]
[ 1 = Leon chosen                       ]

[ lust of Leon - # of M/M scenes ]

[ EweFucked                             ]
[ 0 = Mary not chosen                   ]
[ 1 = Mary chosen                       ]

Section 1- The Situations

New Ewe Store is a situation.
The sarea of New Ewe Store is "Outside".
when play begins:
	add New Ewe Store to badspots of furry;

NESProgress is a number that varies.

After resolving a New Ewe Store, try looking;

Instead of Resolving a New Ewe Store:
	if NESProgress is 0:
		say "     You come across a small, locally owned grocery store, and to your surprise notice that the lights inside it are still on. There could be something of value left inside, you think to yourself as you approach, only to be halted by a voice from within telling you to stay away, and a strongly barred door. Murmuring audible after that tells you that there are several people in there.";
		say "     [bold type]Do you try to convince them to let you in?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Sure. You can be charming as fuck when you set your mind to it, right?";
		say "     ([link]N[as]n[end link]) - Nah, too much effort.";
		if player consents:
			LineBreak;
			let bonus be (( the Charisma of the player minus 10 ) divided by 2);
			let diceroll be a random number from 1 to 20;
			say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]10[roman type] (Charisma Check):[line break]";
			increase diceroll by bonus;
			if diceroll is greater than 10:
				say "     After convincing the voice that you aren't a threat, the door is quickly opened and you are hurried inside, the door closing rapidly behind you. Looking around, you find yourself being stared at by a small herd of rather sheep-like people, most of their bodies covered in soft wool, with rather sheep-like faces. As you stare around you in astonishment, one of them steps forward and introduces himself as Leon. 'Sorry for trying to turn you away earlier, I got to make sure the herd isn't in danger, you understand. We're all a bit on edge since Mary went out to gather supplies and hasn't returned yet. I'm getting really worried about her... but I can't leave everyone else to search for one ewe, as much as it pains me. You know - would it be possible if you had an eye out for her? If you can help find Mary, we would be happy to help you out in return.";
				If player consents:
					say "     Leon smiles and shakes your hand thankfully as he hears you agree. 'Thank you very much, we've all been worried sick about her. It's not good for someone to be away from the flock for too long.' The watching sheep nod at this statement.";
					increase NESProgress by 1;
				else:
					say "     Leon and the others stare at you reproachfully with their big black sheep eyes as you decline to help. This is making you really uncomfortable, until you can't take it any more and leave.";
					now New Ewe Store is resolved;
			else:
				say "     The occupants of the store turn a deaf ear to your pleas, and soon you are forced to leave before all the noise you are making attracts something even more dangerous in the area.";
		else:
			LineBreak;
			say "     With a shrug, you just turn around and leave. There are easier spots to loot anyways.";
	else if NESProgress is 1:
		if a random chance of 3 in 5 succeeds:
			say "     When passing by a collapsed subway entrance you hear the sounds of soft crying coming from inside, drawing closer you hear the sounds stop suddenly as you approach. Calling out to whoever was crying, you try to convince them that you are there to help.";
			let bonus be (( the Charisma of the player minus 10 ) divided by 2);
			let diceroll be a random number from 1 to 20;
			say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]12[roman type] (Charisma Check):[line break]";
			increase diceroll by bonus;
			if diceroll is greater than 12:
				say "     After a while of calling out, you are about to leave when you hear a small voice reply - a woman, by the sound of it. 'Hello can you help me? I was chased in here by some flying beasts while scavenging some goods for my family, and the entryway came down when they tried to force their way through. It's dark down here and I don't know how to find my way out. Please won't you help me?' After reassuring the voice that you will do the best you can, you look at the collapsed entry carefully and realize you would never be able to dig through that in time. Perhaps you can find another way down through the sewers?";
				now Little Lost Lamb is unresolved;
				increase NESProgress by 1;
			else:
				say "     You talk and you talk but hear nothing further. Perhaps it was only your imagination after all?";
		else:
			say "     Coming across the small grocery store again, and your curiosity gets the best of you, you decide to duck inside quickly to check on matters. The flock of sheep quickly look up from what they were doing to come congregate around you, bleating hopefully for news. You explain to the hopeful faces that you haven't yet seen their missing flock member, and watch the sheep's faces fall as they look at you reproachfully. Feeling vaguely guilty, you let yourself back out.";
	else if NESProgress is 2:
		say "     Coming across the small grocery store again, and your curiosity gets the best of you, you decide to duck inside quickly to check on matters. The flock of sheep quickly look up from what they were doing to come congregate around you, bleating hopefully for news. You explain to the hopeful faces your progress so far on finding their missing flock member, and the sheep-like faces of the flock tighten with worry as they begin to bleat in distress when they learn of their lost lamb's predicament. Leon seems to be rather earnest as he asks for your help in rescuing their trapped lamb from underground and returning her to the flock, unable to resist such a desperate plea, you nod and promise to help as you slip back out the door.";
	else if NESProgress is 3:
		say "     As you travel the deserted streets you notice that you are near the Grocery store again, you find your thoughts drifting to Mary and wondering if she made it home safely. Deciding it can't hurt to stop and check you head that way and are quickly at the store entrance, pushing the door open you are greeted warmly by the small group of sheep inside. Most of them gather around you smiling, as Leon pushes his way to the front of the group to address you. 'We're glad to see you back again safely,' The big ram says with smile on his muzzle. 'Mary told us all about how you helped her out, and we are all very grateful to you.' He pauses for a second as all the other sheep nod in agreement. 'We wish we could find some way to repay you properly for all your help, but your definitely welcome to Rest in our store anytime from now on!' he continues as some of the group clap for you.";
		say "     'As a matter of fact if you want a safe place to stay I'd be more than happy for you to join our flock here if you want. We have a pretty good spot picked out here and some decent supplies, and it's not without some side benefits too,' Leon says with a bit of a leer. 'Just talk to me, whenever you feel like it. Oh, and of course, Mary over there hasn't talked about much else since you rescued her. I think she might have a bit of a crush on you,' Leon says as he gestures to where the ewe whom you saved earlier is peeking around a corner at you. 'If you'd rather join her instead, it wouldn't be a problem either; just go talk to Mary instead.'";
		LineBreak;
		say "     'Either way,' he says as he finishes up, 'thanks for helping us out and we hope you join us again sometime soon.'";
		now NESProgress is 4;
		now New Ewe Store is resolved;
		now New Ewe Storeroom is known;
		move player to New Ewe Storeroom;
		now battleground is "void";


Little Lost Lamb is a situation.
The sarea of Little Lost Lamb is "Mall".

Little Lost Lamb is resolved.

Instead of resolving Little Lost Lamb:
	If NESProgress is 2:
		say "     After searching through the sewers for an hour, you find an opening into the subway tunnels, remembering the person left trapped down there you attempt to find your way through the tunnels to their location.";
		let bonus be (( the Perception of the player minus 10 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus]: [diceroll + bonus], ";
		increase diceroll by bonus;
		if diceroll is greater than 14:
			say "     Carefully marking the twists and turns of the subway, you quickly head to where you think the person was trapped, and almost before you know it you've arrived at a partially collapsed subway station. Calling out you quickly get a response from a shadowy form hiding in the corner, upon realizing you are here to help a Pretty female Ewe steps out into the dim light.";
			say "     Thank you very much for coming to help me, I kept hearing strange things moving around down here and I was getting pretty frightened,' She pauses for a moment to look you over before continuing, 'My name is Mary and I've been trapped down here in the dark alone for what seems like forever, I know it's a lot to ask, but do you suppose you could help me get home to my flock? They must be very worried about me at this point, I've been gone for much longer than I intended.";
			attempttowait;
			say "     When you tell her about the request from Leon and the rest of the sheep at the store, her big black eyes light up and her face breaks out in a sheepy smile.";
			say "     'They sent you to help me? That's great! I guess I have even more reason to be thankful you're here then,' Mary says happily, quickly giving you a woolly hug before reaching down and grabbing a small sack bulging with cans. 'As you can see I was pretty successful before I got chased down here, so I'm ready to go back as soon as you are!'";
			say "     Retracing your steps through the subway you quickly reach the sewer entrance, and the two of you quietly make your way back up to the food court washroom. Her warm three fingered hand clutching yours the whole way. Upon exiting into the mall she quickly looks around blinking at the bright light, perking up considerably as she realizes where she is.";
			attempttowait;
			say "     'You did it! Thank you so much!' Mary exclaims exuberantly. She quickly grabs you in her excitement and plants a big kiss on your lips in thanks, before backing up slightly, her muzzle heating up slightly as she blushes in embarrassment. 'Um. Well, sorry about that... I know the way from here and um, thank you very much again.' She stammers slightly as she reaches for her bag, pausing for a second she pulls out a couple of drinks and fumbles them into your hands with sudden nervousness. 'Um, Here. Just a small way of expressing my gratitude for your help. You should really stop by the store sometime though, so I can thank you properly.' Her woolly face hot with embarrassment, she then flees before you can respond. Touching your lips slightly and thinking about the kiss, you think stopping by the store again might not be such a bad idea after all...";
			increase NESProgress by 1;
			increase carried of water bottle by 1;
			increase carried of soda by 1;
			now Little Lost Lamb is resolved;
		else:
			say "     You hunt through the dark tunnels for what seems like hours, the tunnels twisting and turning until you have lost all sense of direction, eventually you find yourself back where you entered the tunnel. Shuddering you quickly exit the subway tunnels for now... you can always come back later... ";
	else:
		say "     Traveling through the dark sewers, and maintenance passageways underneath the mall, you find an opening leading out into what appear to be the cities subway tunnels. Looking through the passageway, you poke around on the other side of the opening for a minute. You find yourself somewhat worried by the signs that there are a large number of creatures still using the subway actively, and given how easy it would be to get lost in the maze of the subway tunnels, you decide to return to the somewhat more familiar area underneath the mall.";
		now Little Lost Lamb is resolved;


Section 2 - New Ewe Storeroom & NPCs

New Ewe Storeroom is a room. It is fasttravel. It is private.

The description of New Ewe Storeroom is "This small family grocery store is now home to a small flock of sheep, though in most other respects it seems to be a relatively normal store. The shelves are mostly empty now, or full of goods that the flock themselves are using, and some of the narrow aisles have blankets and bedding laid out for the sheep to sleep on, though they have made a place for you if you need to rest(enable rest here). There is a somewhat musky and woolen odor to the place, though the smell seems more comforting and almost arousing than anything else.".

The invent of New Ewe Storeroom is { "chips" , "food" , "water bottle" , "soda" }.

Leon is a man.
The description of Leon is "A strong and relatively rugged looking ram person is hanging around near the registers, keeping an eye on you. You recall his name was Leon.".
The conversation of Leon is { "Baa, baby!" }.
the fuckscene of Leon is "[sexwithleon]".
Leon is in New Ewe Storeroom.

Mary is a woman.
The description of Mary is "A somewhat shy looking ewe woman is watching you carefully as you move around. You remember her introducing herself as Mary.".
The conversation of Mary is { "Baa, honey!" }.
the fuckscene of Mary is "[sexwithmary]".
Mary is in New Ewe Storeroom.

instead of sniffing New Ewe Storeroom:
	say "The storeroom smells of the sheep who live here and their stockpile of jealously kept supplies.";

instead of sniffing Leon:
	say "Leon smells of a male ram and hard work.";

instead of sniffing Mary:
	say "Mary smells like a female sheep and has traces of the city's scents in her wool.";


Instead of conversing the Leon:
	if EweFucked > 0:
		say "     'Hey there, good to see you,' Leon says, 'But I'm not the one you should be talking to. You wouldn't want your little lamb over there to get lonely, would you?";
	else:
		if RamFucked > 0:
			say  "     [one of]'Welcome back to our store!'[or]'Ah you came back to the flock like a good little ewe.'[or]'Be careful out there, I wouldn't want to see one of my flock get hurt.'[or]'Are you sure all you want to do is talk?'[or]'If you don't want to go back out into the city you can stay here anytime.'[or]'I heard there was a big wolf out there, you be careful.'[or]'How is it out there today?'[or]'Almost shearing time again.'[or]Leon bleats at you absentmindedly, before blushing when he realizes what happened.[or]'If you need your ram to [']take care['] of you, just let me know.'[or]'Want to head back to the break(ing) room with me?'[or]'I wonder when rescue will arrive.'[at random]";
		else:
			Say "     'Ah great, I'm glad you came to talk to me, I assume this means you'd like to join our little flock here?'";
			if player consents:
				say "     'Wonderful!' he says, rubbing his rough hooflike hands together. 'I was hoping you'd decide to join us, and we could definitely use someone like you around here!' quickly calling over another of his ewes to watch the storefront, he takes your unresisting arm and leads you through a door with a sign someone had recently changed from [']employees only['] to [']flock only[']. Entering a short narrow hallway, Leon leads you to the left where the same person has changed the break room sign to [']the breaking room['], making you feel a little nervous as he leads you inside.";
				attempttowait;
				say "     The room is well lit from the overhead lights, though that seems to be the only constants with most other break rooms you've seen. At some point most of the furniture seems to have been replaced with low benches, and the rest of the room is stuffed with what appears to be fresh piles of wool made into bedding. The room is covered in a strong musk of sheep and sex, making your head swim and your body tingle. Your attention is once more drawn back to Leon as he runs his hand along your neck, before carefully helping you remove your clothes, leaving you blushing as all of your [skin of player] skin is exposed for him to see." ;
				attempttowait;
				say "     Leon grins as he looks you up and down, before guiding you over to one of the benches to sit.";
				if cocks of player is greater than 0:
					say "     'Hmm looks like you won't fit in here quite yet...' he says, eyeing your male attributes, 'only room in a flock for one Ram at a time. Nothing we can't fix though!'";
				else:
					say "     'Oh yeah, that's what I like to see in woman,' he says, eyeing you lewdly, 'Now we just need to fix the rest of you...'";
				say  "     'First thing we need to do is mark you as part of the flock,' Leon says as he pulls off a bit of wool from his side. 'Need to make sure you smell right to the rest of the flock after all.' You watch as he begins to rub the wool over his cock, pumping it more and more until finally he lets out a low bleating noise as he coats it in his seed. The smell intensifies and the erotic sight makes you unable to protest as he moves closer and begins rubbing the wool he just [']treated['] all over your body. You moan as he massages you with the soft wool, you can swear you almost feel the rams seed sinking into you, marking you as his ewe, his property to do with as he wishes.";
				say  "     The erotic massage continues, until you almost can't take it anymore, only to stop right before you can reach orgasm, leaving you panting and moaning in protest as Leon looks down at you with a grin on his muzzle. 'That should be enough for now,' he says. 'Welcome to my flock little lamb, I'm definitely going to enjoy having you around. You are welcome to stay as long as you like now,' Leon smiles as he turns to leave, 'And if you need I'd be happy to [']take care['] of you anytime you want, I take goood care of all my flock members after all. You know where to find me when your ready' Saying that he winks one of his big innocent looking sheep eyes at you before closing the door behind him. Leaving you to gather your equipment and your dignity back up.";
				say  "     As your getting ready to leave, you can't help but notice you smell a bit like a sheep now yourself, just like all the other flock members in the store. For some reason it doesn't seem to bother you to smell like your fellow sheep, you all belong to the same ram after all... Blushing uncertainly at that thought you return to the main store area.";
				increase libido of player by 10;
				increase RamFucked by 1;
				if girl is not banned and "Male Preferred" is not listed in feats of player:
					infect "Ewe";
					infect "Ewe";
				else:
					infect "Ram";
					infect "Ram";
			else:
				say  "     Ah well, I thought you would make a great addition to the flock. Think it over some more, would you?";

instead of conversing the Mary:
	if HyenaTrailing is 3:
		say "     'You want to know about hyenas in the subways?' the young ewe asks you as she blinks in surprise, 'Actually come to think of it I do think I heard some of them while I was down there. The way they were talking I was kind of scared to say anything, but I am pretty sure there were several small groups that were moving around down there. I think they actually all belonged to some kind of gang though, or at least they kept talking about one.' Mary explains to you as she eyes you hopefully, resting her hoof-like hand on your soft black furred side as she looks up at you. 'I do hope that helps you somehow, I'm always happy to help you out after all you've done for me,' she adds a moment later, and you assure her that her words were a big help.";
		say "     She seems happy with that as she goes back to working on cleaning up the store, and you sigh as you realize that the thing you were afraid of is now the most likely possibility, somehow the items you are looking for have probably ended up in the hands of the hyena gang that is taking over much of the territory of the city... if you want to find the items, you will probably need to investigate them next. It will be quite a task to [bold type]challenge[roman type] the [bold type]hyenas[roman type] in their territory...";
		now HyenaTrailing is 4;
	else if NESProgress is 4:
		say "     'Hi there again! I want to thank you again for all your help. I can't really do much to repay you except by giving you some tips for finding stuff out in the city.' The little ewe speaks softly, nervous next to her hero. 'It's mostly a matter of keeping your eyes open and knowing where to look,' she says, continuing on to give you some anecdotes from her searching, though you do pick up a few ideas which may be helpful. As she starts to go on about nimbly climbing some rubble, stops herself. 'I'm sorry. I was rambling a little.'";
		say "     You have gained the [']Three Bags Full['] feat, which confers +1 to all scavenging rolls and checks.";
		add "Three Bags Full" to feats of the player;
		now NESProgress is 5;
	else if RamFucked > 0:
		say "     Mary smiles at you happily as you greet her. 'It's always good to see you here, but I think the flock leader will be even happier to see you, if you know what I mean,' she says as she gives you a nudge in Leon's direction.";
	else:
		if EweFucked > 0:
			say "     [one of]Your little ewe only responds by throwing her arms around you in a big woolen hug.[or]'Be careful near the capitol building. I think something is going on over there.'[or]'Have you seen any wolves out there?'[or]'Be careful if you go back down into the sewers, I heard a lot of strange things moving around down there.'[or]'I mostly stay in the downtown area when I go scavenging, maybe I'll see you there sometime.'[or]'I heard some strange howling and baying noises near the beach at night the other day, if the church is still there someone might have posted a warning.'[or]'Being a sheep isn't bad, especially if I get to be your sheep.'[or]'Don't tell the others, but sometimes I trade some of my food or water at the mall, the rats there are great scavengers.'[or]'I can't wait for you to rub your [skin of player] body over my fleece again.'[at random]";
		else:
			Say "     'But I'm glad you came over to talk to me. I was kind of hoping I would get a chance to thank you properly,' she says while blushing. 'I really thought we worked well together out there, and you were so brave and strong keeping me safe. I've been thinking, and I'd really like it if we could be part of the same flock, then we could be together all the time. What do you say?'";
			if player consents:
				say "     'Really? You mean it? That's wonderful!' she says with a smile, before grabbing the sides of your face and giving you another big kiss. As she breaks the kiss you stare at her slightly bemused as she blushes, realizing every eye in the store is on the two of you. Glancing around at all the staring eyes she quickly grabs your arm and nearly drags your unprotesting body outside, slamming the door behind you. Pausing for a moment in the street, she quickly makes her way to one of the abandoned buildings next to the store, motioning you to follow as she quickly unlocks the door and slips inside.";
				attempttowait;
				say "     Following Mary into the dimly lit building, you realize someone has gone to some effort to keep it looking abandoned, but out of sight of the front windows it has actually been furnished as a nice little hideaway. Mary is standing there blushing again as she admits 'I found this place a while back, and I cleaned it up for when I needed to get away from the rest of the flock. You're the only other person who knows about it now.' Before you can respond to her surprising statement, she reaches up and kisses you again, taking her time to rub her sheep-like muzzle along your [facename of player] face, and exploring your mouth with her tongue.";
				say "     Breaking the kiss, her face flushed in embarrassment and a bit of desire she moves over to the makeshift couch and gestures for you to come sit next to her. Smiling as you do so, she cuddles up next to you and rests her head on your shoulder. Seeming somewhat embarrassed she begins telling you about her life from before, as a teenager working her way through college at her parents store, and asking questions about your life and what it was like.";
				attempttowait;
				say "     She eventually talks about the infection sweeping the city, and how everyone at the store both employees and customers alike began to change, and all the males fought until Leon was the only male left, and the rest had become ewes like everyone else. Not really wanting to end up like some of the rest of the flock who seemed to lose most of their intelligence the more they stayed there, she volunteered to do much of the scouting and scavenging for the rest. She was able to put Leon off of claiming her personally so far, but she figured it was only a matter of time before he got to her, until she met you. She says with a yawn, staring up at you adoringly, she thinks she could really like being part of your flock instead.";
				say "     You continue to talk about a number of subjects as you both relax, eventually Mary falling asleep in your lap. Softly moving her into a more comfortable position, you realize how much your comfortable time with your new flock member seems to have changed you, even making you smell a bit like her.";
				increase libido of player by 10;
				increase EweFucked by 1;
				if guy is not banned and "Female Preferred" is not listed in feats of player:
					infect "Ram";
					infect "Ram";
				else:
					infect "Ewe";
					infect "Ewe";
			else:
				say  "     'Oh, that's ok then, I understand if you have other things you'd rather do, but I'd really like it if you thought about it some more.'";


Section - Sex w/Leon or Mary

RamFucked is a number that varies. RamFucked is usually 0.
EweFucked is a number that varies. EweFucked is usually 0.
[ marytalked is a number that varies. ]


to say sexwithLeon:
	setmonster "Ram";
	choose row monster from the table of random critters;
	if cocks of player is 0 and cunts of player is 0:
		say "     You're ill-equipped to play with him right now.";
	else if EweFucked is 0 and RamFucked is 0:
		say "     You should [bold type]talk[roman type] to him for a bit first.";
	else if EweFucked > 0:
		say "     'Well that sounds like an interesting offer,' Leon says, 'But I'm not the one you should be talking to now am I? You wouldn't want your little lamb over there to get lonely would you?'";
	else if lastfuck of Leon - turns is less than 6:
		say "     Leon smiles at you as you approach, before shaking his head sadly at you. 'Much as I'd like to spend some more time with you, you aren't the only one in the flock that needs my personal attention. And it wouldn't be fair to the rest of them for me to neglect them like that. But if you come back later, I'm sure we could find some time,' your handsome flock leader says with some amusement..";
	else:
		now lastfuck of Leon is turns;
		let ram be "Ram";
		let ewe be "Ewe";
		say "     Leon looks up from what he was doing as you approach and smiles, 'I can tell what you want, just head on back to the back room and I'll be right there' he says as he calls over one of the other ewes to finish what he was doing. Shuddering in anticipation you find yourself heading through the doorway as your ram suggested, unable to disobey.";
		attempttowait;
		if cunts of player is greater than 0:
			say "     Leon reaches the room right behind you giving you little time to get comfortable, noting you still have your clothes on he quickly gestures for you to strip. You eagerly find yourself removing what little clothing you were wearing, your body tightening in pleasure in spite of yourself at a command from the strong and dominant ram. 'Now that's what I like to see,' He says as he takes in your naked body, his eyes lingering on your now exposed slit. Leon grins as he slowly begins stalking forward, something in the way he moves making you feel smaller and more needy as he draws close to you, his strong masculine musk filling your nose and making your insides clench in need. Reaching out he rests his three fingered hand on your shoulder for a minute, before gently turning you to face away from him.";
			attempttowait;
			say "     Being unable to see what's happening adds an extra erotic flavor to the experience as he gently pushes you forward until you are braced on one of the low padded benches in the room, causing you to shudder in anticipation. Your body tenses as you can feel the tip of his hard cock pressed up against your ass, almost unconsciously you find yourself lifting your ass up higher to provide your ram with easier access to your increasingly wet opening. You hear Leon chuckle softly behind you at your obvious wantonness, before you can turn your head to look behind you, you feel your vagina split open as he impales you with his rod in one swift move. Gasping in shock and pleasure, you quickly lower your head as he begins to slowly slide himself in and out of your needy pussy. You can only moan as you feel your insides shudder and grip his cock tightly, his every move sending shockwaves of pleasure through your body.";
			attempttowait;
			say "     [if skinname of player is ram or skinname of player is ewe]He buries his rough hands in your soft wool, gripping you tighter and then he begins to grip and release as he thrusts into you, his hands massaging your woolen outside as his cock massages your insides with each thrust. [end if][if facename of player is ram or facename of player is ewe]With his strong musk filling your sheep-like nose, you can't help yourself from responding, you quickly find yourself making soft baaing and bleating noises with each and every one of his thrusts. Leon only thrusts harder with each noise, seeming encouraged and turned on by your obvious sign of submission. [end if]As Leon begins to rock his hips forward even faster, you can feel his front leaning over you pressing you down into the bench even further, his rod moving within you making your eyes close in pleasure as your mouth hangs open weakly. You feel your mind emptying out of everything else except for the strong ram above you and his wonderful tool as he breeds you, your body signalling its total submission to his dominance, with your mind quickly following suit. Nothing seems quite as important to you anymore as being just another mindless part of the flock, surrendering body and soul to the strong male above you. As if sensing your readiness to submit, Leon thrusts forward one last time, his voice rising in a triumphant bleat as his cock explodes within you, your mind exploding with pleasure as he coats your insides with his fertile dominant seed. Moaning at the feel of his fertile treasure within you, you find yourself unable to do anything but shudder as aftershocks run through you, before he pulls himself out of you. You can feel him pat you on the back as you lie there helplessly before hearing the door open and shut as he leaves you alone to recover and pull your shattered mind back together. Eventually you recover and manage to clean up and drag yourself back outside, a little bit worried at how easily he reduced you to just another mindless ewe, and a little bit excited by it as well.[impregchance]";
		else:
			if lust of leon is 0:
				say "     Leon reaches the room right behind you giving you little time to get comfortable, noting you still have your clothes on he quickly gestures for you to strip. You quickly find yourself removing what little clothing you were wearing, finding yourself unable to resist a command from the dominant ram in the flock. Leon smiles, then takes a look at you before shaking his head sadly, 'Now this just won't do.' He says as he gestures to your [cock of player] cock, 'There's only room in the flock for one ram at a time ya see.' He continues with a shake of his head, 'Looks like I'm going to need to show you your place in this flock properly, and fix that little problem you got between your legs there.' So saying he quickly moves stalks toward you his posture and movements intimidating as he shows his dominance.";
				attempttowait;
				say "     Forcing you down on your knees he reaches down and begins fondling his own cock in front of you, 'Don't move now.' Leon says with a grunt as he begins to stroke himself. His thick black and pink cock emerges slowly from its woolly sheath in front of your eyes, its tip level with your face as he slowly pumps his hoof-like hand up and down its length. You can't help but stare in fascination as your ram's strong male musk fills the room, its earthy scent going straight to your head and making your own cock tighten in response. Quickening his strokes, before you know it, Leon cums with a loud Baaaing noise, as his seed spurts all over your face, covering you in his sticky ram juices. Blinking to clear your eyes, you can't help but lick your lips, tasting his seed on and in your mouth, as the rest sinks into your skin. As the strong taste of his male seed shoots through you, you can feel your body twisting and changing in response, becoming better suited to being a proper ewe to his ram. 'Ah, that was good,' Leon says as he begins to clean himself up. 'I'm looking forward to our next time already. Especially in seeing how you look as a proper ewe,' he finishes with a lewd wink before ducking out the door and leaving you to clean up on your own before making your own way back to the store, the taste of his seed still filling your mouth.";
			else if the remainder after dividing lust of Leon by 3 is 1:
				if lust of Leon is 1:
					say "     Leon reaches the room right behind you giving you little time to get comfortable, noting you still have your clothes on he quickly gestures for you to strip. You quickly find yourself removing what little clothing you were wearing, finding yourself unable to resist a command from the dominant ram in the flock. Leon smiles, then takes a look at you before shaking his head sadly, 'Now this just won't do,' he says as he gestures to your [cock of player] cock. 'I thought I told you there'd only be room for one ram at a time. I guess I'm going to have to try a little harder to show you your place in this flock,' he says as he puts his three-fingered hand on your shoulder and turns you to face away from him. His other hoof-hand moves down to grab your ass, drawing a little bleat from you.";
				else:
					say "     Leon reaches the room right behind you giving you little time to get comfortable, noting you still have your clothes on he quickly gestures for you to strip. You quickly find yourself removing what little clothing you were wearing, finding yourself unable to resist a command from the dominant ram in the flock. Leon shakes his head as he sees your lingering [cock of player] cock, but seems to grin as well. 'Still sporting that, are you?' he says. 'I think I'd best show you your place in this flock again. Remind you that you're nothing but a ewe, even if you may be a male ewe at that,' he says as he puts his three-fingered hand on your shoulder and turns you to face away from him. His other hoof-hand moves down to grab your ass, drawing a little bleat from you.";
				attempttowait;
				say "     Being unable to see what's happening adds an extra erotic flavour to the experience as he firmly pushes you forward until you are braced on one of the low padded benches in the room, causing you to shudder in anticipation. Your body tenses as you can feel the tip of his hard cock pressed up against your ass, almost unconsciously you find yourself lifting your ass up higher to provide your ram with easier access to your increasingly submissive body. You hear Leon chuckle softly behind you at your obvious wantonness, before you can turn your head to look behind you, you feel your big, strong ram's hard cock press at your tight ring and push into you in one swift and smooth motion. Gasping in shock, pleasure and pain, you quickly lower your head as he begins to slowly slide himself in and out of your tight rump. You can only moan as you feel your insides shudder and grip his cock tightly, his every move sending shockwaves of pleasure through your body. 'Mmm... you like that, don't you? You're no ram, just a big male ewe for me.'";
				attempttowait;
				say "     [if skinname of player is ram or skinname of player is ewe]He buries his rough hands in your soft wool, gripping you tighter and then he begins to grip and release as he thrusts into you, his hands massaging your woolen outside as his cock massages your insides with each thrust[else]His rough hands run over your [skin of player], massaging your [body of player] body as his cock massages your insides with each thrust[end if][if facename of player is ram or facename of player is ewe]. With his strong musk filling your sheep-like nose, you can't help yourself from responding, you quickly find yourself making soft baaing and bleating noises with each and every one of his thrusts. Leon only thrusts harder with each noise, seeming encouraged and turned on by your obvious sign of submission[else]. Leon's strong musk fills the air around you, arousing you further and clouding your senses[end if]. As Leon begins to rock his hips forward even faster, you can feel his front leaning over you pressing you down into the bench even further, his rod moving within you making your eyes close in pleasure as your mouth hangs open weakly. You feel your mind emptying out of everything else except for the strong ram above you and his wonderful tool as he breeds you, your body signalling its total submission to his dominance, with your mind quickly following suit. Nothing seems quite as important to you anymore as being just another mindless part of the flock, surrendering body and soul to the strong male above you.";
				say "     You can feel Leon's hot breath at your ear and hear his bleating grunts as he pounds into you like the virile ram he is. 'Mmm... that feels good, doesn't it? You want to be my ewe, don't you? Tell me that you're nothing but a weak male that wants to be my ewe,' he pants in your ear. You nod eagerly and moan over and over that you're a horny ewe, your woolly mind wanting nothing more than to be a ewe for this big stud of a ram. Clearly pleased with your response, he thrusts forward one last time, his voice rising in a triumphant bleat as his cock explodes within you, your mind exploding with pleasure as he coats your insides with his fertile, dominant seed. Moaning at the feel of his virile treasure within you, you find yourself unable to do anything but shudder as aftershocks run through you. You cum with a moaning bleat, emptying your lesser seed onto the floor. After pulling out, he pats your ass, telling he looks forward to having you as a proper ewe soon. You can only lie there helplessly, giving a soft bleat and nod before hearing the door open and shut as he leaves you alone to recover and pull your shattered mind back together. Eventually you recover and manage to clean up and drag yourself back outside, a little bit worried at how easily he reduced you to just another mindless ewe, and a little bit excited by it as well.[mimpregchance]";
			else if the remainder after dividing lust of Leon by 3 is 2:
				say "     Leon follows right on your heels as you go into the back room. When you don't strip right away, he quickly gestures for you to get undressed. Unable to resist your ram's orders, you pull off your clothes, trying to make a sensual show of it in the hopes of pleasing him. But when you reveal yourself to still be male, he is unimpressed by pushes you down firmly on the bench before you can even finish undressing. 'I was quite clear about what was expected of you, my slutty ewe. There's only going to be one ram in this here flock, one way or another. Now luckily for you, I have a little extra time today to devote to your on-the-job training here,' he says in your ear, his voice quite firm despite its low volume.";
				say "     Keeping you pinned to the bench, he grabs some bands of cloth and binds your hands and feet. By the time he's done, you're spread eagle on the bench with your ass in the air thanks to a raised pad. His hands run across your body, lightly at first before grabbing your ass firmly and giving it a hard squeeze, drawing a moaning bleat from you. Being bound and manhandled by the dominant ram is actually very arousing for you in your submissive need for him. Shall you beg him to [link]punish you (Y)[as]y[end link] or [link]fuck you (n)[as]n[end link]?";
				if the player consents:
					say "     Bleating for him to punish you like the disobedient male ewe you are, he grins and gives your ass a rough spank. 'You do deserve some proper punishment, now don't you? Luckily, I have a few things for more... recalcitrant ewes like you,' he says, swatting your ass hard before striding over to a black cabinet that is just out of your field of vision. You can hear him unlock and open the cabinet, take out a few heavy items and then return to you. Your ass is struck again, this time ";
					if ( lust of leon / 2 ) is odd:
						say "with loud crack as he strikes it with a thick leather paddle. You bleat loudly and pull at your bonds, but are held tightly by them. Tears wet the corners of your eyes at the sting of his blow, but you are also filled with a rush of arousal. Another blow, this time across your other cheek has you cry out again and louder.";
						say "     Leon grabs your chin roughly and squeezes it firmly. 'You're being too loud. Do you want the rest of the staff to know you're being disciplined?' And while there is a kinky rush of excitement at the thought of all the other ewes knowing you're getting punished, Leon doesn't give you a chance to respond, instead forcing a ball gag into your mouth. It proves to be quite effective when he gives you a hard lashing with the leather paddle across your back. Satisfied that your cries are muffled, he strides around you, letting the paddle drag across your [bodytype of player] body, striking you from time to time on various parts of your person.";
						attempttowait;
						say "     Each time you're hit, you moan and grow more aroused. Your [cock of player] penis is rock hard, pulsing and spurting precum with every blow. While a few tears have leaked down your cheeks from the pain, that is far exceeded by the precum that's drooling from your cock. Leon stops behind you, dropping the leather paddle heavily across your back before grabbing your ass in both hands. He grinds his cock between your cheeks and presses it to your tight hole, pushing it in quite firmly. You release a moaning bleat as you're buggered by the dominant ram, your lust-addled mind loving your deserved punishment. 'That's right, you're going to be my ewe, one way or another,' he groans lustfully as he pounds away at you.";
						say "     As the powerful ram drives his cock into you again and again, several of his thrusts are punctuated by blows from the paddle across your shoulders or back. Each blow causes your bound body to buck and your anus to clench down around his cock, much to your ram's obvious delight. And your delight as well, your erection rock hard and your balls aching for release. And while this punishment and fucking is going on, he's constantly reminding you again and again that your place is here as one of his ewes. His eventual release is quite powerful, shooting a hot, thick load of his virile semen into you, claiming you as his male ewe again. The feel of his musky cum filling you finally pushes you over the edge and, while your cries are muffled by the ball gag, you're quite certain the other ewes know full well that you've been seeded again by your ram.[mimpregchance]";
						say "     After he's drained and pulled out, he removes the gag only to replace it with his cock, getting you to suck him clean. Only once that is done does he untie you and allow you to return to the store with the rest of the staff, reeking of sex.";
					else:
						say "by the multiple strikes of a leather lash. You bleat loudly and pull at your bonds, but are held tightly by them. The lingering sting of the lash's many strands cause your cheek to ache warmly, a warmth that also fills your loins with a rush of arousal. Another blow, this time to the other cheek has you whimper and bleat again.";
						say "     Leon strides around to your front and raises your head up to look at him. It's time you serviced your ram to help you learn your place,' he says as he forces a ring gag into your mouth. Once secured tightly, your mouth is held open by it, leaving you open for the ram's cock he stuffs into it. His shaft is forced fully into your mouth and down your throat, burying your nose in the musky scent of his woolen crotch. Losing yourself in his scent, you lick and suck at his cock as best you can.";
						attempttowait;
						say "     Even as he thrusts into your restrained mouth, he continues to flog you. Each blow across your sides, back or ass cause your [bodytype of player] body to stiffen, though it is your [cock of player] cock that stiffens most of all. Your manhood throbs and pulses with every lashing, precum dribbling from your unattended erection. You release moaning bleats around his pulsing rod as you're made to suck off the dominant ram, your lust-addled mind loving your deserved punishment. 'That's right, you're going to be my ewe, one way or another,' he groans lustfully as he pounds away at you.";
						say "     As the powerful ram drives his cock into your mouth again and again, he's constantly reminding you that your place is here as one of his ewes. And you respond to your punishment like a good ewe by sucking at his cock all the harder, eventually earning your reward as he cums with a loud bleat, blasting shot after shot of hot, musky semen into your mouth and down your throat. As you swallow it all down, the excitement of it all sends you over the edge as well, your [cock of player] penis releasing your load even as Leon lashes your ass all the harder for it.";
						say "     After he's drained and pulled out, he removes the ring gag while grinding his cock against your ass meaningfully while calling you a good ewe. Only then does he untie you and allow you to return to the store, sore and reeking of sex.";
					decrease humanity of player by 10;
					if "Strong Psyche" is listed in feats of player, increase humanity of player by 2;
					if "Weak Psyche" is listed in feats of player, decrease humanity of player by 2;
					if girl is not banned and "Male Preferred" is not listed in feats of player:
						infect "Ewe";
					else:
						infect "Ram";
				else:
					say "     Bleating for him to fuck you like the needy male ewe you are, he grins and gives your rear a light swat. Climbing atop you, he licks the edge of your ear while grinding against your ass. 'At least you know your place is right here,' he says softly, 'beneath me.' You shiver with excitement and try to push your ass back against that hard rod of his, but you're too tightly bound. Only when he's good and ready does he thrust into you, an act that causes you to bleat and moan in lustful ecstasy despite the sudden pain of the quick penetration.";
					say "     With you bound beneath him, you can do nothing but moan in pleasure as your inner walls squeeze and grip his cock tightly while he fucks you with rough zeal[if skinname of player is ram or skinname of player is ewe]. He buries his rough hands in your soft wool, gripping you tightly by the coat[else]. He grips your shoulders, pressing you down hard onto the bench[end if] as he rams you like the rutting male he is[if facename of player is ram or facename of player is ewe]. With his strong musk filling your sheep-like nose, you can't help yourself from responding, you quickly find yourself making soft baaing and bleating noises with each and every one of his thrusts. Leon only thrusts harder with each noise, seeming encouraged and turned on by your obvious sign of submission[else]. Leon's strong musk fills the air around you, arousing you further and clouding your senses[end if]. As Leon pounds his cock into your yielding asshole even faster, a growing feeling of submissive bliss fills you, your mind losing itself in the scent of the rutting male atop you. Your mind loses the threads of thought you try to hold onto until only your need for a strong ram inside you is all you can think about. At this moment, you are nothing more than another submissive member of his flock, another needy ewe for him to fuck and breed, even if but a male one.";
					say "     Between his bleating grunts as he pounds into you like the virile ram he is, he echoes your own woolly thoughts, reinforcing them further. 'Mmm... that's how you like it, isn't it? Being fucked like a ewe all the time is what you really want. Deep down, all you are is a weak male who'd much rather be my ewe,' he pants in your ear. You nod eagerly and moan over and over that you're a horny ewe, your lust-addled mind wanting nothing more than to be a sheep in this big stud's flock. Satisfied with your response, he thrusts forward one last time with a loud bleat and cums hard. His balls unleash their heavy payload, sending thick ram semen into your bowels. You are filled with pleasure as he coats your insides with his fertile, dominant seed and cum yourself soon after. Your lesser seed sprays out onto the floor, unworthy of claiming ewes like yourself or the other girls.[mimpregchance]";
					say "     After pulling out, he struts around to your front and wipes his messy cock across your cheeks, leaving smears of his musky semen on your cheeks. With the scent of it right there, you are left in a lustful daze of submissive urges long after he's untied you and left you alone in the room. It is much later before you've regained enough of your senses to stagger out and join the other ewes in the store.";
					decrease humanity of player by 6;
					if "Strong Psyche" is listed in feats of player, increase humanity of player by 1;
					if "Weak Psyche" is listed in feats of player, decrease humanity of player by 2;
			else:
				say "     Leon follows you into the back room and pushes you towards one of the mounds of fragrant wool. Pushing you down onto it, he makes sure your face is buried in the soft, sheep-scented pile. 'Smell that. Take that in. It's the scent of your flock... where you belong,' he says firmly. With your nose buried in it, you can't help but smell the heady scent of sheep and arousal. Clearly you're not the first to be fucked on this pile, the scents of your ram, the ewes and rutting embedded in the wool. It makes you aroused and woolly-headed, your sheep urges coming back strong.";
				say "     Keeping one hoof-hand at the back of your head, he pushes aside any obstructing clothes and brings his erect penis to your rear. He grinds it between your cheeks and you can feel the wet dribbles of his precum running down to your exposed pucker. 'Now, we only need one ram for this flock... but you're my slutty male ewe, aren't you?' he asks, grinding his glans against your asshole in preparation. Lost in the scent of the wool, you moan and do your best to nod while being held down. You find it easier to answer by pushing your rear back, getting his tip to push into you. Leon chuckles at this and rewards your eagerness by thrusting into you, pushing the first few inches into your needy bottom. 'Good girl.' And after a few thrusts, he sinks the rest of it into you with a lustful bleat.";
				attempttowait;
				say "     As the ram ruts you, you moan and pant with growing arousal. Your heavy breathing draws in more of the hot, musky scent of sheep and sex impregnating the wool. It makes you both more aroused and more confused, losing track of yourself in a hazy bliss. 'Nnggg... yeah... you make a fine ewe... and you've got a big, strong ram to fuck you right here. No more need to roam and wander, my slutty lambchop.' His words sink into your woolly mind, eroding your waning resistance as the desire to stay with your flock grows.";
				say "     Leon moves his hands to your shoulders[if skinname of player is ram or skinname of player is ewe], gripping your soft wool[end if] as he ruts you harder and faster. No longer held down, you're able to bring your head up[if facename of player is ram or facename of player is ewe] to make soft baaing and bleating noises with each and every one of his thrusts. Your sheep cries turn him on all the more and he pounds you even harder, much to your delight[end if]. The air is only slightly clearer though, the scent Leon's strong musk filling the room as he fucks you. It matters little though, at this point, you're lost in the joy of rut and want nothing more than to be another submissive member of his flock.";
				attempttowait;
				say "     Between his bleating grunts as he pounds into you like the virile ram he is, he reinforces your own woolly thoughts with his words. 'Mmm... that's right, my needy ewe. Stop this defiance and just stay with your flock. It's where you belong. A weak male ewe like your needs a strong ram to protect and fuck him like a good girl. You nod eagerly and moan repeatedly that you're his needy ewe and for him to fuck you. Tightening his grip on you, he thrusts forward one last time with a loud bleat and cums hard. His balls unleash their heavy payload, sending thick ram semen into your bowels. You are filled with pleasure as he coats your insides with his fertile, dominant seed and cum yourself soon after. Your lesser seed spurts into the woolly pile beneath you, adding to the scents of the flock.[mimpregchance]";
				attempttowait;
				decrease humanity of player by 18;
				if ( bodyname of player is "Ram" or bodyname of player is "Ewe" ) and the player is pure:
					decrease humanity of player by 6;
				if "Strong Psyche" is listed in feats of player, increase humanity of player by 3;
				if "Weak Psyche" is listed in feats of player, decrease humanity of player by 3;
				if ( bodyname of player is "Ram" or bodyname of player is "Ewe" ) and the player is pure and humanity of player < 10:
					now humanity of player is 0;
					say "     After pulling out, the chuckling ram goes to swipe his sticky cock across your woolly ass, but you bleat that you want more. The smile on his white muzzle grows and he instead moves around to let your muzzle at his shaft. You engulf his cum-slick pole in your mouth, licking and sucking on it eagerly in your desire to prove your need to be with your studly ram. You can tell he's pleased with his eagerness as he rubs a hoof-hand through your wool as he caresses your head.";
					attempttowait;
					say "     'Mmmm... I don't usually give my ewes this much... mmm .. attention all at once. But for you, I'll make a special exception this once,' he says, starting to get hard again. 'But only if you'll promise to stop resisting and join your flock. Do that and I'll give you the thorough fucking you clearly need, my horny male ewe.'";
					say "     At this point, you're too lost in your lust to refuse and you moan lustfully about how you want him, promising to be his good slut and needy ewe if he'll only fuck you again. This is enough to get him fully hard and you bleat happily, rolling back over and raising your ass in the air. You press your muzzle into the luxurious wool and its lovely scent, your fluffy little tail raised and twitching. Clearly pleased with your submission and eagerness, he bounds atop you and buries his hard rod into you in one sharp thrust. Already hot and slick from the earlier rutting, he goes in easily, like he belongs there. And he does, your woolly mind tells you, for you are the flock's slutty male ewe. You bleat happily into the warm mound of wool, breathing in its heady scents of the sheep and sex. You lose yourself more and more in the bliss of submission and the soft embrace of the scents of your flock.";
					attempttowait;
					say "     'That's right, my horny ewe. You can stop your roaming ways; you're part of my flock now,' the confident ram says as he pounds your ass. 'No more resisting it. No more need for defiance. Stay here and your big ram'll give you all the fucking you need.' You can only pant, baa and bleat as he fucks you completely senseless, the last fragments of your mind being worn away by the rut and smell of sheep and sex overwhelming you. Your ram is here. Your flock is here. There's no need to worry about leaving, or thinking, or anything other than being a good, submissive, male ewe for Leon.";
					say "     Having already gotten off recently, Leon has a lot of stamina, pounding you for a long, long time. Any attempt by your waning humanity to recover is disrupted by the steady rutting, ram musk, soft wool and sheep scents absorbing all your focus. These moments become weaker and less frequent until they stop altogether, not missed at all by your submissive sheep mind. By the time Leon's reached his second orgasm and pumps a fresh, full load of ram semen into your wanton ass, all that's left is the male ewe he desires you to be. His climax is just as powerful as the last, filling your bowels with his virile seed even as you moan and cum again from being filled by your ram.";
					attempttowait;
					say "     When he's done and pulls out this time, you're too weak and worn to manage to ask for more. All you can manage is a baaing moan before passing out in the mound of scented wool, excess semen leaking from your overfilled ass. Confident that you're fully his now, he leaves you there to return to the store. It is some time later before one of the sheep comes to collect you, bringing you out to join the others in working the store like the loyal, loving ewe you are through and through.";
					wait for any key;
					end the story saying "You have joined Leon's flock as his special male ewe.";
					now battleground is "void";
					wait for any key;
					now skipturnblocker is 1;
					follow the turnpass rule;
					stop the action;
				else if humanity of player <= 0:
					say "     After pulling out, the chuckling ram goes to swipe his sticky cock across your [if skinname of player is ram or skinname of player is ewe]woolly[else]well-used[end if] ass, but you [if facename of player is ram or facename of player is ewe]bleat[else]moan[end if] that you want more. The smile on his white muzzle grows and he instead moves around to let your [if facename of player is ram or facename of player is ewe]muzzle[else]mouth[end if] at his shaft. You engulf his cum-slick pole in your mouth, licking and sucking on it eagerly in your desire to prove your need to be with your studly ram. You can tell he's pleased with his eagerness as he rubs a hoof-hand [if facename of player is ram or facename of player is ewe]through your wool as he caresses your head[else]on the top of your head[end if].";
					attempttowait;
					say "     'Mmmm... I don't usually give my ewes this much... mmm .. attention all at once. But for you, I'll make a special exception this once,' he says, starting to get hard again. 'But only if you'll promise to stop resisting and join your flock. Do that and I'll give you the thorough fucking you clearly need, my horny male ewe.'";
					say "     At this point, you're too lost in your lust to refuse and you moan lustfully about how you want him, promising to be his good slut and needy ewe if he'll only fuck you again. This is enough to get him fully hard and you [if facename of player is ram or facename of player is ewe]bleat[else]moan[end if] happily, rolling back over and raising your ass in the air. You press your [if facename of player is ram or facename of player is ewe]muzzle[else]face[end if] into the luxurious wool and its lovely scent[if tailname of player is ram or tailname of player is ewe], your fluffy little tail raised and twitching[else], your already creamy bottom ready and waiting[end if]. Clearly pleased with your submission and eagerness, he bounds atop you and buries his hard rod into you in one sharp thrust. Already hot and slick from the earlier rutting, he goes in easily, like he belongs there. And he does, your woolly mind tells you, for you are the flock's slutty male ewe. You bleat happily into the warm mound of wool, breathing in its heady scents of the sheep and sex. You lose yourself more and more in the bliss of submission and the soft embrace of the scents of your flock.";
					attempttowait;
					say "     'That's right, my horny ewe. You can stop your roaming ways; you're part of my flock now,' the confident ram says as he pounds your ass. 'No more resisting it. No more need for defiance. Stay here and your big ram'll give you all the fucking you need.' You can only pant, baa and bleat as he fucks you completely senseless, the last fragments of your mind being worn away by the rut and smell of sheep and sex overwhelming you. Your ram is here. Your flock is here. There's no need to worry about leaving, or thinking, or anything other than being a good, submissive, male ewe for Leon.";
					say "     Having already gotten off recently, Leon has a lot of stamina, pounding you for a long, long time. Any attempt by your waning humanity to recover is disrupted by the steady rutting, ram musk, soft wool and sheep scents absorbing all your focus. These moments become weaker and less frequent until they stop altogether, not missed at all by your submissive sheep mind. By the time Leon's reached his second orgasm and pumps a fresh, full load of ram semen into your wanton ass, all that's left is the male ewe he desires you to be. His climax is just as powerful as the last, filling your bowels with his virile seed even as you moan and cum again from being filled by your ram.";
					attempttowait;
					say "     When he's done and pulls out this time, you're too weak and worn to manage to ask for more. All you can manage is a baaing moan before passing out in the mound of scented wool, excess semen leaking from your overfilled ass. Confident that you're fully his now, he leaves you there to return to the store. Left surrounded in the cum-stained wool and filled with infected semen, your body changes, completely becoming the flock's male ewe in body as well as mind. It is some time later before one of the sheep comes to collect you, bringing you out to join the others in working the store like the loyal, loving ewe you are through and through.";
					if girl is not banned and "Male Preferred" is not listed in feats of player:
						setmonster "Ewe";
						choose row monster from the table of random critters;
						now tailname of player is "Ewe";
						now facename of player is "Ewe";
						now skinname of player is "Ewe";
						now bodyname of player is "Ewe";
						now cockname of player is "Ewe";
						now tail of player is tail entry;
						now face of player is face entry;
						now skin of player is skin entry;
						now body of player is body entry;
						now cock of player is cock entry;
						attributeinfect;
					else:
						setmonster "Ram";
						choose row monster from the table of random critters;
						now tailname of player is "Ram";
						now facename of player is "Ram";
						now skinname of player is "Ram";
						now bodyname of player is "Ram";
						now cockname of player is "Ram";
						now tail of player is tail entry;
						now face of player is face entry;
						now skin of player is skin entry;
						now body of player is body entry;
						now cock of player is cock entry;
						attributeinfect;
					now NESProgress is 100;
					wait for any key;
					end the story saying "You have joined Leon's flock as his special male ewe.";
					now battleground is "void";
					wait for any key;
					now skipturnblocker is 1;
					follow the turnpass rule;
					stop the action;
				else:
					say "     After pulling out, the chuckling ram swipes his sticky cock across your [if skinname of player is ram or skinname of player is ewe]woolly [end if]ass, leaving fresh smears of his musky semen across your cheeks. Between the heavy dose of it you ended up breathing in and scent of rut clinging to you, you are left in a lustful daze of submissive urges long after he's left you alone in the room. Even once you start to regain your senses, it takes considerable effort to force yourself up and out of the room so you can clear your head before you give in completely.";
					if girl is not banned and "Male Preferred" is not listed in feats of player:
						infect "Ewe";
					else:
						infect "Ram";
			increase lust of leon by 1;
		if girl is not banned and "Male Preferred" is not listed in feats of player:
			infect "Ewe";
		else:
			infect "Ram";


to say sexwithmary:
	if cocks of player is 0 and cunts of player is 0:
		say "You're ill-equipped to play with her right now.";
	else if EweFucked is 0 and RamFucked is 0:
		say "     You should [bold type]talk[roman type] to her a bit first.";
	else if RamFucked > 0:
		say "     Mary smiles at you happily as you greet her. 'It's always good to see you here, but I think the Flock leader will be even happier to see you, if you know what I mean,' the blushing ewe says as she gives you a nudge in Leon's direction.";
	else if lastfuck of Mary - turns is less than 6:
		say "     Mary blushes happily as she looks around, before sighing sadly at the amused glances the other flock members send her way, 'Sorry, I just can't duck out again from my duties here again so soon. Maybe you could come back a little later?' your cute little ewe says hopefully.";
	else:
		now lastfuck of Mary is turns;
		say "     'Mary blushes eagerly at your advances, nodding shyly she quickly looks around the store before ducking outside with you. Quickly heading over to her nearby hideout she kisses you as soon as the two of you are safe and alone. Breaking off the kiss Mary says, 'I'm so glad to see you again,' she pants eagerly, 'I haven't been able to stop thinking about you since last time.' Before you know it she has quickly stripped you naked and is pushing you down onto the couch.";
		attempttowait;
		if cocks of player is greater than 0:
			say "     Her eyes slowly drift down your body only to stop at your erect [cock of player] cock, staring in licking her lips in anticipation she lowers her head to it and runs her long tongue along the base of it, her eyes crossing as she savors the taste. Unable to wait any longer, she quickly moves herself over you, straddling you as she positions herself over your erect maleness. Before you can say anything she lowers herself onto you in one swift movement, moaning in ecstasy as her soft cavern wraps around your cock.";
			attempttowait;
			say "     Unable to resist the soft feel of her wet folds enveloping you, you bury your hands in the soft wool of her hips, gripping tightly as you thrust upwards. Mary moans in pleasure as you take charge, her inner muscles tightening around you deliciously with your every movement. Soon you settle into a rhythm of short quick thrusts into your willing ewe, her soft body rubbing up against your [skin of player] with every thrust, her face full of animalistic pleasure as she makes soft bleating and moaning noises in time with your thrusting. Before you know it you feel your muscles tense in orgasm, as your cock empties its load into her fertile belly, causing her to shudder in orgasm as well as your seed fills her belly. Panting, she collapses on top of you, your cock still twitching in her, as you both lie there exhausted.";
			attempttowait;
			say "     Waking up after a couple hours, you find yourself alone on the couch, quickly gathering up your belongings you find a short note left behind from Mary. 'I had to return to the store to take care of a few things, though I am definitely looking forward to spending more time with you as soon as we can. Signed, your loyal ewe.' Smiling as you read the note, you feel a surge of satisfaction at having taken care of your ewe properly, and tuck the note into your backpack before heading back over to the store yourself.";
		else:
			say "     Mary's sheep-like face pouts slightly as she takes in your female form, 'It looks like you aren't quite ready to be the ram of the flock yet.' She says as she runs her hands over your body. 'But that doesn't mean we can't have a little bonding time in the flock anyways,' She finishes as she leans over you to lick the side of your face erotically. Wasting no time she begins running her hands up and down your body, teasing and exciting you as she begins to lick and kiss her way down your body. She pays special attention to your nipples and stomach, before finally lowering her head to your wet pussy, which she begins to nibble and tease with her soft lips and flexible tongue. Unable to help yourself you bury your hands in the soft fleece around her head as you moan and writhe underneath her, her marvellously skilled tongue quickly bringing you to the edge of orgasm, before finally making you cry out as you cum, your juices eagerly licked up by her wonderful tongue.";
			attempttowait;
			say "     As you collapse back onto the couch from your amazing orgasm, Mary slowly moves back up your body in order to kiss you again, the taste of your own sexual fluids exploding into your mouth from the deep kiss. Eventually breaking the kiss off, she lies next to you as you drift off into an exhausted sleep. You can vaguely here her comment as you drift off, something about not being able to wait for next time...";
		if guy is not banned and "Female Preferred" is not listed in feats of player:
			infect "Ram";
		else:
			infect "Ewe";

New Ewe Store ends here.
