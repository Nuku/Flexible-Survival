New Ewe Store by Sarokcat begins here.

"Adds a situation to Flexible Survival with a flock of sheep with a problem."

Section 1- the situation

New Ewe Store is a situation.

The sarea of New Ewe Store is "Outside";

NES is a number that varies.
Lastramfuck is a number that varies. Lastramfuck is usually 250.
Lastewefuck is a number that varies. Lastewefuck is usually 250.
ramfucked is a number that varies. Ramfucked is usually 0.
ewefucked is a number that varies. ewefucked is usually 0.

Ramfucking is an action applying to nothing.

understand "fuck leon" as ramfucking;
understand "fuck ram" as ramfucking;

check ramfucking:
	if Leon is not visible, say "who?" instead;

Ewefucking is an action applying to nothing.

Understand "fuck mary" as ewefucking;
Understand "fuck ewe" as ewefucking;

check ewefucking:
	if Mary is not visible, say "who?" instead;


Instead of ramfucking while ramfucked is 0:
	try conversing the leon;

Instead of ewefucking while ewefucked is 0:
	try conversing the mary;

Carry out ramfucking:
	if lastramfuck - turns is less than 8:
		say "Leon smiles at you as you approach, before shaking his head sadly at you. 'Much as I'd like to spend some more time with you, you aren't the only one in the flock that needs my personal attention. And it wouldn't be fair to the rest of them for me to neglect them like that, but if you come back later I'm sure we could find some time.'.";
		stop the action;
	now lastramfuck is turns;
	say "[ram attack]";
	ramify;

Carry out ewefucking:
	if lastewefuck - turns is less than 8:
		say "Mary blushes as she looks around, before sighing, 'Sorry, i can't duck out again from my duties here again so soon. Maybe you could come back a little later?' she says hopefully.'.";
		stop the action;
	now lastewefuck is turns;
	say "[ewe attack]";
	ewefy;


After resolving a  New Ewe Store, try looking;


Instead of Resolving a New Ewe Store:
	if nes is 0:
		say "You come across a small locally owned grocery store, and to your surprise notice that the lights inside it are still on.  There could be something of value left inside you think to yourself as you approach, only to be halted by a voice from within telling you to stay away, and a strongly barred door.  Do you try to convince them to let you in?.";
		If player consents:
			let bonus be (( the Charisma of the player minus 10 ) divided by 2);
			let diceroll be a random number from 1 to 20;
			say "You roll 1d20([diceroll])+[bonus]: [diceroll + bonus], ";
			increase diceroll by bonus;
			if diceroll is greater than 10:
				say "After convincing the voice that you arent a threat, the door is quickly opened and you are hurried inside, the door closing rapidly behind you.  Looking around you find yourself being stared at by a small herd of rather sheeplike people, most of their bodies covered in soft wool, with rather sheeplike faces.  As you stare around you in astonishment one of them steps forward and introduces themselves as Leon, and wonders if you can help them with a small problem. Apparently one of their small flock was out gathering supplies and hasn't returned yet, if you can help find her then they would be happy to help you out in return.";
				If player consents:
					say " 'Thank you very much, We've all been worried sick about her. It's not good for someone to be away from the flock for to long' The watching sheep nod at this statement.";
					increase nes by 1;
					stop the action;
				otherwise:
					say "They stare at you reproachfully with their big black sheep eyes making you uncomfortable, until you can't take it any more and leave.";
			otherwise:
				say "The occupants of the store turn a deaf ear to your pleas, and soon you are forced to leave before all the noise you are making attracts something even more dangerous in the area.";
	If nes is 1:
		if a random chance of 1 in 2 succeeds:
			say "When passing by a collapsed subway entrance you hear the sounds of soft crying coming from inside, drawing closer you hear the sounds stop suddenly as you approach. Calling out to whoever was crying, you try to convince them that you are there to help.";
			let bonus be (( the Charisma of the player minus 10 ) divided by 2);
			let diceroll be a random number from 1 to 20;
			say "You roll 1d20([diceroll])+[bonus]: [diceroll + bonus], ";
			increase diceroll by bonus;
			if diceroll is greater than 12:
				say "After a while of calling out, you are about to leave when you hear a small voice reply.";
				say "Hello can you help me?  I was chased in here by some flying beasts while scavenging some goods for my family, and the entryway came down when they tried to force their way through.  It's dark down here and I don't know how to find my way out. Please won[apostrophe]t you help me?'  After reassuring the voice that you will do the best you can, you look at the collapsed entry carefully and realize you would never be able to dig through that in time, perhaps you can find another way down through the sewers?";
				now the sarea of New Ewe Store is "Mall";
				increase nes by 1;
				stop the action;
			otherwise:
				say "you talk and you talk but hear nothing further, perhaps it was only your imagination after all?";
		otherwise:
			say "Coming across the small grocery store again, and your curiosity gets the best of you, you decide to duck inside quickly to check on matters. The flock of sheep quickly look up from what they were doing to come congregate around you, bleating hopefully for news. You Explain to the hopeful faces that you haven't yet seen their missing flock member, and watch the Sheep's faces fall as they look at you reproachfully. Feeling vaugely guilty you let yourself back out.";
	If nes is 2:
		say "After searching through the sewers for an hour, you find an opening into the subway tunnels, remembering the person left trapped down there you attempt to find your way through the tunnels to their location.";
		let bonus be (( the Perception of the player minus 10 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus]: [diceroll + bonus], ";
		increase diceroll by bonus;
		if diceroll is greater than 14:
			say "Carefully marking the twists and turns of the subway, you quickly head to where you think the person was trapped, and almost before you know it you've arrived at a partially collapsed subway station.  Calling out you quickly get a response from a shadowy form hiding in the corner, upon realizing you are here to help a Pretty female Ewe steps out into the dim light.";
			say "Thank you very much for coming to help me, I kept hearing strange things moving around down here and I was getting pretty frightened,' She pauses for a moment to look you over before continuing, 'My name is Mary and I've been trapped down here in the dark alone for what seems like forever, I know its a lot to ask, but do you suppose you could help me get home to my flock? They must be very worried about me at this point, I've been gone for much longer then I intended.";
			wait for any key;
			say "When you tell her about the request from Leon and the rest of the sheep at the store, her big black eyes light up and her face breaks out in a sheepy smile.";
			say "'They sent you to help me?  That's great! I guess i have even more reason to be thankful you're here then,' Mary says happily, quickly giving you a wooly hug before reaching down and grabbing a small sack bulging with cans.  'As you can see I was pretty successful before i got chased down here, so I'm ready to go back as soon as you are!'";
			say "Retracing your steps through the subway you quickly reach the sewer entrance, and the two of you quietly make your way back up to the food court entrance. her warm three fingered hand clutching yours the whole way.  Upon exiting into the mall she quickly looks around blinking at the bright light, perking up considerably as she realizes where she is.";
			wait for any key;
			say "'You did it! Thank you so much!' Mary exclaims exuberantly.  She quickly grabs you in her excitement and plants a big kiss on your lips in thanks, before backing up slightly, her muzzle heating up slightly as she blushes in embarrasment. 'Um. Well, sorry about that...  I know the way from here and um, thank you very much again.' She stammers slightly as she reaches for her bag, pausing for a second she pulls out a few cans of soda and puts them down.  'Um, Here. Just a small way of expressing my gratitude for your help. You should really stop by the store sometime though, so i can thank you properly' Her wooly face hot with embarrasment she then flees before you can respond.  Touching your lips slightly and thinking about the kiss, you think stopping by the store again might not be such a bad idea after all....";
			increase nes by 1;
			add "water bottle" to invent of mall;
			add "soda" to invent of mall;
			now the sarea of new ewe store is "Outside";
			stop the action;
		otherwise:
			say "you hunt through the dark tunnels for what seems like hours, the tunnels twisting and turning until you have lost all sense of direction, eventually you find yourself back where you entered the tunnel,  Shuddering you quickly exit the subway tunnels for now... you can always come back later... ";
	if nes is 3:
		say "As you travel the deserted streets you notice that you are near the Grocery store again, you find your thoughts drifting to Mary and wondering if she made it home safely.  Deciding it cant hurt to stop and check you head that way and are quickly at the store entrance, pushing the door open you are greeted warmly by the small group of sheep inside. Most of them gather around you smiling, as Leon pushes his way to the front of the group to address you.";
		say " 'We're glad to see you back again safely,' The big ram says with smile on his muzzle. 'Mary told us all about how you helped her out, and we are all very grateful to you.' He pauses for a second as all the other sheep nod in agreement.  'We wish we could find some way to repay you properly for all your help, but your definitely welcome to Rest in our store anytime from now on!' he continues as some of the group clap for you.";
		wait for any key;
		say "'As a matter of fact if you want a safe place to stay I'd be more then happy for you to join our flock here if you want. We have a pretty good spot picked out here and some decent supplies, and its not without some side benefits too,' Leon says with a bit of a leer. 'Just talk to me, whenever you feel like it'";
		say " 'Of course Mary over there hasn't talked about much else since you rescued her, i think she might have a bit of a crush on you,' Leon says as he gestures to where the Ewe you saved earlier is peeking around a corner at you. 'If you'd rather join her instead it wouldn't be a problem either, just go Talk to Mary, instead.'";
		wait for any key;
		say "'Either way,' He says as he finishes up, 'Thanks for helping us out and we hope you join us again sometime soon.'";
		now New Ewe Store is resolved;
		now New Ewe Storeroom is known;






New Ewe Storeroom is a room. It is fasttravel. It is private.

The description of New Ewe Storeroom is "This small family grocery store is now home to a small flock of sheep, though in most other respects it seems to be a relatively normal store.  The shelves are mostly empty now, or full of goods that the flock themselves are using, and some of the narrow aisles have blankets and bedding laid out for the sheep to sleep on, though they have made a place for you if you need to rest(enable rest here). Their is a somewhat musky and woolen odor to the place, though the smell seems more comforting and almost arousing then anything else.";

Leon is a man.
The description of Leon is "A strong and relatively rugged looking ram person is hanging around near the registers, keeping an eye on you, You recall his name was Leon.";
Leon is in New Ewe Storeroom.
Mary is a woman.
The description of Mary is "A somewhat shy looking ewe woman is watching you carefully as you move around, You remember her introducing herself as Mary.";
Mary is in New Ewe Storeroom.


The conversation of Leon is { "[leonchat]" };

To say leonchat:
	if ewefucked > 0:
		say "Hey there, good to see you,' Leon says, 'But I'm not the one you should be talking to, you wouldn't want your little lamb over there to get lonely would you? ";
	otherwise:
		if ramfucked > 0:
			say  "[one of]Welcome back to our store![or]'Ah you came back to the flock like a good little ewe.'[or]'Be careful out there, i wouldn't want to see one of my flock get hurt'[or]'Are you sure all you want to do is talk?'[or]'IF you don't want to go back out into the city you can stay here anytime'[or] 'I heard there was a big wolf out there, you be careful'[or] 'How is it out there today?'[or]'Almost shearing time again.'[or]Leon bleats at you absentmindedly, before blushing when he realizes what happened.[or] 'If you need your ram to 'take care' of you, just let me know.'[or]'Want to head back to the break(ing) room with me?'[or]'I Wonder when rescue will arrive.'[at random] ";
		otherwise:
			Say "Ah great, I'm glad you came to talk to me, I assume this means you'd like to join our little flock here?";
			if player consents:
				say " 'Wonderful!' he says, rubbing his rough hooflike hands together.  'I was hoping you'd decide to join us, and we could definitely use someone like you around here!' quickly calling over another of his ewes to watch the storefront, he takes your unresisting arm and leads you through a door with a sign someone had recently changed from employees only to  marked 'flock only'  Entering a short narrow hallway, Leon leads you to the left where the same person has changed the break room sign to 'the breaking room', making you feel a little nervous as he leads you inside.";
				wait for any key;
				say "The room is well lit from the overhead lights, though that seems to be the only constants with most other break rooms you've seen. At some point most of the furniture seems to have been replaced with low benches, and the rest of the room is stuffed with what appears to be fresh piles of wool made into bedding. The room is covered in a strong musk of sheep and sex, making your head swim and your body tingle. Your attention is once more drawn back to Leon as he runs his hand along your neck, before carefully helping you remove your clothes, leaving you blushing as all of your [skin of player] skin is exposed for him to see." ;
				wait for any key;
				say "Leon grins as he looks you up and down, before guiding you over to one of the benches to sit.";
				if cunts of player is greater than 0:
					say "'Hmm looks like you won't fit in here quite yet...' he says, eyeing your male attributes, 'only room in a flock for one Ram at a time.  Nothing we cant fix though!'";
				otherwise:
					say "'Oh yeah, that's what I like to see in woman,' he says, eyeing you lewdly, 'Now we just need to fix the rest of you...'";
				say  "'First thing we need to do is mark you as part of the flock,' Leon says as he pulls off a bit of wool from his side. 'Need to make sure you smell right to the rest of the flock after all.'  You watch as he begins to rub the wool over his cock, pumping it more and more until finally he lets out a low bleating noise as he coats it in his seed.  The smell intensifies and the erotic sight makes you unable to protest as he moves closer and begins rubbing the wool he just 'treated' all over your body.  You moan as he massages you with the soft wool, you can swear you almost feel the rams seed sinking into you, marking you as his ewe, his property to do with as he wishes.";
				say  "The erotic massage continues, until you almost can't take it anymore, only to stop right before you can reach orgasm, leaving you panting and moaning in protest as Leon looks down at you with a grin on his muzzle.  'That should be enough for now,' he says, 'Welcome to my flock little lamb, I'm definitely going to enjoy having you around.  You are welcome to stay as long as you like now,' Leon smiles as he turns to leave, 'And if you need I'd be happy to 'take care' of you anytime you want, I take goood care of all my flock members after all.  You know where to find me when your ready' Saying that he winks one of his big innocent looking sheep eyes at you before closing the door behind him. Leaving you to gather your equipment and your dignity back up.";
				say  "As your getting ready to leave, you cant help but notice you smell a bit like a sheep now yourself, just like all the other flock members in the store. For some reason it doesn't seem to bother you to smell like your fellow sheep, you all belong to the same ram after all...  Blushing uncertainly at that thought you return to the main store area.";
				increase libido of player by 10;
				increase ramfucked by 1;
				Ramify;
			otherwise:
				say  "Ah well, I thought you would make a great addition to the flock, think it over some more would you?";

to Ramify:
	repeat with y running from 1 to number of rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "ram":
			now monster is y;
			break;
	infect;
	infect;
	infect;


The conversation of Mary is { "[marychat]" };

To say marychat:
	if ramfucked > 0:
		say "Mary smiles at you happily as you greet her 'It's always good to see you here, but i think the Flock leader will be even happier to see you if you know what i mean.' She says as she gives you a nudge in Leon's direction";
	otherwise:
		if ewefucked > 0:
			say  "[One of]Your little ewe only responds by throwing her arms around you in a big woolen hug.[or]'Be careful near the capitol building, i think something is going on over there.'[or] 'Have you seen any wolves out there?'[or]'Be careful if you go back down into the sewers, i heard a lot of strange things moving around down there'[or]'I mostly stay in the downtown area when i go scavenging, maybe i'll see you there sometime.'[or] 'I heard some strange howling and baying noises near the beach at night the other day, if the church is still there someone might have posted a warning.'[or]'Being a sheep isn't bad, especially if i get to  be your sheep.'[or] 'Don't tell the others, but sometimes i trade some of my food or water at the mall, the rats there are great scavengers.'[or]'I can't wait for you to rub your [skin of player] body over my fleece again.'[at random]";
		otherwise:
			Say "'Hi there again, I'm glad you came over to talk to me, I was kind of hoping I would get a chance to thank you properly' She says while blushing, 'I really thought we worked well together out there, and you were so brave and strong keeping me safe. I've been thinking, and i'd really like it if we could be part of the same flock, then we could be together all the time, what do you say?'";
			if player consents:
				say "'Really? You mean it?  That's wonderful!' she says with a smile, before grabbing the sides of your face and giving you another big kiss.  As she breaks the kiss you stare at her slightly bemused as she blushes, realizing every eye in the store is on the two of you. Glancing around at all the staring eyes she quickly grabs your arm and nearly drags your unprotesting body outside, slamming the door behind you. Pausing for a moment in the street, she quickly makes her way to one of the abandoned buildings next to the store, motioning you to follow as she quickly unlocks the door and slips inside.";
				wait for any key;
				say "Following mary into the dimly lit building, you realize someone has gone to some effort to keep it looking abandoned, but out of sight of the front windows it has actually been furnished as a nice little hideaway.  Mary is standing there blushing again as she admits 'I found this place a while back, and i cleaned it up for when i needed to get away from the rest of the flock. You[apostrophe]re the only other person who knows about it now.' Before you can respond to her surprising statement, she reaches up and kisses you again, taking her time to rub her sheeplike muzzle along your [facename of player] face, and exploring your mouth with her tounge.";
				say "Breaking the kiss, her face flushed in embarrassment and a bit of desire she moves over to the makeshift couch and gestures for you to come sit next to her. Smiling as you do so, she cuddles up next to you and rests her head on your shoulder. Seeming somewhat embarrassed she begins telling you about her life from before, as a teenager working her way through college at her parents store, and asking questions about your life and what it was like.";
				wait for any key;
				say "She eventually talks about the infection sweeping the city, and how everyone at the store both employees and customers alike began to change, and all the males fought until Leon was the only male left, and the rest had become ewes like everyone else. Not really wanting to end up like some of the rest of the flock who seemed to lose most of their intelligence the more they stayed there, she volunteered to do much of the scouting and scavenging for the rest.  She was able to put Leon off of claiming her personally so far, but she figured it was only a matter of time before he got to her, until she met you. She says with a yawn, staring up at you adoringly, she thinks she could really like being part of your flock instead.";
				say "You continue to talk about a number of subjects as you both relax, eventually Mary falling asleep in your lap. Softly moving her into a more comfortable position, you realize how much your comfortable time with your new flock member seems to have changed you, even making you smell a bit like her.";
				increase libido of player by 10;
				increase ewefucked by 1;
				ewefy;
			otherwise:
				say  "'Oh, that's ok then, I understand if you have other things you[apostrophe]d rather do, but i'd really like it if you thought about it some more.'";

to ewefy:
	repeat with y running from 1 to number of rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "ewe":
			now monster is y;
			break;
	infect;
	infect;
	infect;





when play ends:
	if bodyname of player is "ram":
		if humanity of player is less than 10:
			say "[one of]You wander the city aimlessly, your mind consumed with lewd thoughts and your body consumed with need, eventually you are captured by a large wolf who carries you off to a makeshift den before having his way with you.  He uses you hard and often, his Knot stretching you in the most amazing ways and tieing you to him, you stay behind in the den while he often goes out hunting for supplies or fresh converts. Before he comes back and puts you on his wonderful knot again.  Inevitably you end up pregnant with his seed, and bear him many pups, which you often clothe in your own wool....[or] As your grip on your humanity weakens, you find yourself giving in to your more instintual side. You end up wandering the city alone, the feelings of loneliness without a flock tearing at you constantly. Searching desperately for someplace to belong, you come across a changed group of smooth collies.  Unable to resist as they bark and nip at you, you are quickly herded into a makeshift pen.  The collies treat you well, almost like a pet, though they seem to enjoy playing at herding you around and taking care of you.  Eventually they manage to hunt up a few more sheep for their small flock, including a familiar looking ram that seems particularly attracted to you...[or]Feeling your mind fading, you stumble back to the store and the sense of safety it provides. Making it there safely Leon and the flock take you in and take care of you, letting you sleep curled up amongst the other sheep.  When the rest of the flock is rescued later, they take you with them to their new pasturage, where you can spend the day with the regular uninfected sheep grazing, and the nights in the pen either with Leon or one of the regular rams he buys.  You happily bear them both many little lambs...[at random]";
		otherwise:
			say "Rescue finally arrives, and you and your flock happily leave the city for greener pastures.  Finding yourself somewhat of an outcast due to your unusual changes, you end up sticking together closely with your flock, at least they understand what it's like.  Eventually Leon sets up a small organic farm in the countryside for your flock, and you learn to enjoy the fresh air and the open pastures.  and most especially you come to enjoy the almost nightly visits from your Ram.  Having quickly become one of his favorites Leon takes you almost every night, ensuring you are happy and complacent carrying his little lambs,  you happily bear him many offspring, spending most of your days pregnant or tending to his little ones, until eventually you can't really recall ever doing anything else...";
	if bodyname of player is "ewe":
		if humanity of player is less than 10:
			say "Your mind giving out under the strain of the infection, you head out into the city, Mary following along like a good little ewe. You quickly set about finding more members to convert to your flock, increasing your numbers for a time and protecting the trail of Ewes following you. Unfortunately you aren't alone in the city and are beset on all sides by different predators and infected until finally you and your flock are captured by a group of hyenas.  At first it is somewhat disconcerting to be surrounded by predators, but soon you realize it isn't all bad.  As the only male you are indispensible to them, and you are kept in some comfort, your only duty is to breed the Ewes all day and relax.  Eventually you don't even mind one or two of your flock disappearing every now and then, and you even come to enjoy being sheared....";
		otherwise:
			say "You and Mary are quite happy when the rescue arrives, allowing you to leave the city once you are determined to be safe enough. You travel together for a while, but it is lonely with only the two of you.  You decide to settle down and raise a larger flock eventually, opening a small clothing and fabric store before settling down to breed some new young lambs.  The demand for your handspun clothing and well made designs quickly outstrips your ability to keep up, and so you find yourself hiring on a few other young women to help, who eventually join the flock eagerly after a gift of some of your 'specially treated' wool garments. You soon enough have a rather brisk buisness going, and a small but ever increasing flock to take care of you. Though the next time the building inspecter complains about the multiple occupancy you just might have to invite her into the flock as well....";



New Ewe Store ends here.
