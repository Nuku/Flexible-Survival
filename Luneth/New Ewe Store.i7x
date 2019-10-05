Version 5 of New Ewe Store by Luneth begins here.
[ Original version by Sarokcat]
[ Version < 4 - Revisions and additional material including all M/M with Leon added by Stripes. ]
[ Version 4.1 - Ram and Ewe unleashed ]
[ Version 5 - Taken over by Luneth]

"Adds a situation to Flexible Survival with a flock of sheep with a problem."

[ NESProgress (Quest variable)          ]
[   0 = quest not started               ]
[   1 = quest started                   ]
[   2 = heard Mary in sewers            ]
[   3 = found Mary                      ]
[   4 = returned to store               ]
[   5 = gained bonus feat               ]
[ 100 = Succumbed to Leon as male ewe   ]


Section 1- The Situations

Table of GameEventIDs (continued)
Object	Name
New Ewe Store	"New Ewe Store"

New Ewe Store is a situation.
The sarea of New Ewe Store is "Outside".
when play begins:
	add New Ewe Store to BadSpots of FurryList;

NESProgress is a number that varies.

After resolving a New Ewe Store, try looking;

Instead of Resolving a New Ewe Store:
	if NESProgress is 0:
		say "     You come across a small, locally owned grocery store, and to your surprise notice that the lights inside it are still on. There could be something of value left inside, you think to yourself as you approach, only to be halted by a voice from within telling you to stay away, and a strongly barred door. Murmuring audible after that tells you that there are several people in there.";
		say "     [bold type]Do you try to convince them to let you in?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Sure. You can be charming as fuck when you set your mind to it, right?";
		say "     ([link]N[as]n[end link]) - Nah, too much effort.";
		if Player consents:
			LineBreak;
			let bonus be (( the Charisma of the player minus 10 ) divided by 2);
			let diceroll be a random number from 1 to 20;
			say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]10[roman type] (Charisma Check):[line break]";
			increase diceroll by bonus;
			if diceroll > 10:
				say "     After convincing the voice that you aren't a threat, the door is quickly opened and you are hurried inside, the door closing rapidly behind you. Looking around, you find yourself being stared at by a small herd of rather sheep-like people, most of their bodies covered in soft wool, with rather sheep-like faces. As you stare around you in astonishment, one of them steps forward and introduces himself as Leon. 'Sorry for trying to turn you away earlier, I got to make sure the herd isn't in danger, you understand. We're all a bit on edge since Mary went out to gather supplies and hasn't returned yet. I'm getting really worried about her... but I can't leave everyone else to search for one ewe, as much as it pains me. You know - would it be possible if you had an eye out for her? If you can help find Mary, we would be happy to help you out in return.";
				if Player consents:
					say "     Leon smiles and shakes your hand thankfully as he hears you agree. 'Thank you very much, we've all been worried sick about her. It's not good for someone to be away from the flock for too long.' The watching sheep nod at this statement.";
					now Resolution of New Ewe Store is 1; [leon trusts you and you agreed to help]
					increase NESProgress by 1;
				else:
					say "     Leon and the others stare at you reproachfully with their big black sheep eyes as you decline to help. This is making you really uncomfortable, until you can't take it any more and leave.";
					now Resolution of New Ewe Store is 2; [leon does trust you and you didn't agree to help]
					now New Ewe Store is resolved;
			else:
				say "     The occupants of the store turn a deaf ear to your pleas, and soon you are forced to leave before all the noise you are making attracts something even more dangerous in the area.";
				now Resolution of New Ewe Store is 3; [leon does not trust you]
		else:
			LineBreak;
			say "     With a shrug, you just turn around and leave. There are easier spots to loot anyways.";
			now Resolution of New Ewe Store is 4; [fuck them sheep]
	else if NESProgress is 1:
		if a random chance of 3 in 5 succeeds:
			say "     When passing by a collapsed subway entrance you hear the sounds of soft crying coming from inside, drawing closer you hear the sounds stop suddenly as you approach. Calling out to whoever was crying, you try to convince them that you are there to help.";
			let bonus be (( the Charisma of the player minus 10 ) divided by 2);
			let diceroll be a random number from 1 to 20;
			say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]12[roman type] (Charisma Check):[line break]";
			increase diceroll by bonus;
			if diceroll > 12:
				say "     After a while of calling out, you are about to leave when you hear a small voice reply - a woman, by the sound of it. 'Hello can you help me? I was chased in here by some flying beasts while scavenging some goods for my family, and the entryway came down when they tried to force their way through. It's dark down here and I don't know how to find my way out. Please won't you help me?' After reassuring the voice that you will do the best you can, you look at the collapsed entry carefully and realize you would never be able to dig through that in time. Perhaps you can find another way down through the sewers?";
				now Little Lost Lamb is active;
				now Resolution of New Ewe Store is 5; [found mary]
				increase NESProgress by 1;
			else:
				say "     You talk and you talk but hear nothing further. Perhaps it was only your imagination after all?";
				now Resolution of New Ewe Store is 6; [couldn't find mary]
		else:
			say "     Coming across the small grocery store again, and your curiosity gets the best of you, you decide to duck inside quickly to check on matters. The flock of sheep quickly look up from what they were doing to come congregate around you, bleating hopefully for news. You explain to the hopeful faces that you haven't yet seen their missing flock member, and watch the sheep's faces fall as they look at you reproachfully. Feeling vaguely guilty, you let yourself back out.";
			now Resolution of New Ewe Store is 7; [ended up back at the store without finding mary]
	else if NESProgress is 2:
		say "     Coming across the small grocery store again, and your curiosity gets the best of you, you decide to duck inside quickly to check on matters. The flock of sheep quickly look up from what they were doing to come congregate around you, bleating hopefully for news. You explain to the hopeful faces your progress so far on finding their missing flock member, and the sheep-like faces of the flock tighten with worry as they begin to bleat in distress when they learn of their lost lamb's predicament. Leon seems to be rather earnest as he asks for your help in rescuing their trapped lamb from underground and returning her to the flock, unable to resist such a desperate plea, you nod and promise to help as you slip back out the door.";
		now Resolution of New Ewe Store is 8; [ended up back at the store while finding mary]
	else if NESProgress is 3:
		say "     As you travel the deserted streets you notice that you are near the Grocery store again, you find your thoughts drifting to Mary and wondering if she made it home safely. Deciding it can't hurt to stop and check you head that way and are quickly at the store entrance, pushing the door open you are greeted warmly by the small group of sheep inside. Most of them gather around you smiling, as Leon pushes his way to the front of the group to address you. 'We're glad to see you back again safely,' the big ram says with smile on his muzzle. 'Mary told us all about how you helped her out, and we are all very grateful to you.' He pauses for a second as all the other sheep nod in agreement. 'We wish we could find some way to repay you properly for all your help, but your definitely welcome to Rest in our store anytime from now on!' he continues as some of the group clap for you.";
		say "     'As a matter of fact if you want a safe place to stay I'd be more than happy for you to join our flock here if you want. We have a pretty good spot picked out here and some decent supplies, and it's not without some side benefits too,' Leon says with a bit of a leer. 'Just talk to me, whenever you feel like it. Oh, and of course, Mary over there hasn't talked about much else since you rescued her. I think she might have a bit of a crush on you,' Leon says as he gestures to where the ewe whom you saved earlier is peeking around a corner at you. 'If you'd rather join her instead, it wouldn't be a problem either; just go talk to Mary instead.'";
		LineBreak;
		say "     'Either way,' he says as he finishes up, 'thanks for helping us out and we hope you join us again sometime soon.'";
		now NESProgress is 4;
		now Resolution of New Ewe Store is 9; [saved mary and she went home]
		now New Ewe Store is resolved;
		now New Ewe Storeroom is known;
		move player to New Ewe Storeroom;

Table of GameEventIDs (continued)
Object	Name
Little Lost Lamb	"Little Lost Lamb"

Little Lost Lamb is a situation.
Little Lost Lamb is inactive.
The sarea of Little Lost Lamb is "Mall".

Instead of resolving Little Lost Lamb:
	If NESProgress is 2:
		say "     After searching through the sewers for an hour, you find an opening into the subway tunnels, remembering the person left trapped down there you attempt to find your way through the tunnels to their location.";
		let bonus be (( the Perception of the player minus 10 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "     You roll 1d20([diceroll])+[bonus]: [diceroll + bonus], ";
		increase diceroll by bonus;
		if diceroll > 14:
			say "Carefully marking the twists and turns of the subway, you quickly head to where you think the person was trapped, and almost before you know it you've arrived at a partially collapsed subway station. Calling out you quickly get a response from a shadowy form hiding in the corner, upon realizing you are here to help a pretty female Ewe steps out into the dim light.";
			say "     'Thank you very much for coming to help me! I kept hearing strange things moving around down here, and I was getting pretty frightened.' She pauses for a moment to look you over before continuing, 'My name is Mary, and I've been trapped down here in the dark alone for what seems like forever. I know it's a lot to ask, but do you suppose you could help me get home to my flock? They must be very worried about me at this point, I've been gone for much longer than I intended.";
			WaitLineBreak;
			say "     When you tell her about the request from Leon and the rest of the sheep at the store, her big black eyes light up and her face breaks out in a sheepy smile.";
			say "     'They sent you to help me? That's great! I guess I have even more reason to be thankful you're here then,' Mary says happily, quickly giving you a woolly hug before reaching down and grabbing a small sack bulging with cans. 'As you can see I was pretty successful before I got chased down here, so I'm ready to go back as soon as you are!'";
			say "     Retracing your steps through the subway you quickly reach the sewer entrance, and the two of you quietly make your way back up to the food court washroom. Her warm three fingered hand clutching yours the whole way. Upon exiting into the mall she quickly looks around blinking at the bright light, perking up considerably as she realizes where she is.";
			WaitLineBreak;
			say "     'You did it! Thank you so much!' Mary exclaims exuberantly. She quickly grabs you in her excitement and plants a big kiss on your lips in thanks, before backing up slightly, her muzzle heating up slightly as she blushes in embarrassment. 'Um. Well, sorry about that... I know the way from here and um, thank you very much again.' She stammers slightly as she reaches for her bag, pausing for a second she pulls out a couple of drinks and fumbles them into your hands with sudden nervousness. 'Um, here. Just a small way of expressing my gratitude for your help. You should really stop by the store sometime though, so I can thank you properly.' Her woolly face hot with embarrassment, she then flees before you can respond. Touching your lips slightly and thinking about the kiss, you think stopping by the store again might not be such a bad idea after all...";
			increase NESProgress by 1;
			increase carried of water bottle by 1;
			increase carried of soda by 1;
			now Resolution of Little Lost Lamb is 1; [saved mary]
			now Little Lost Lamb is resolved;
		else:
			say "You hunt through the dark tunnels for what seems like hours, the tunnels twisting and turning until you have lost all sense of direction, eventually you find yourself back where you entered the tunnel. Shuddering you quickly exit the subway tunnels for now... you can always come back later...";
			now Resolution of Little Lost Lamb is 2; [couldn't find mary]
	else:
		say "     Traveling through the dark sewers, and maintenance passageways underneath the mall, you find an opening leading out into what appear to be the cities subway tunnels. Looking through the passageway, you poke around on the other side of the opening for a minute. You find yourself somewhat worried by the signs that there are a large number of creatures still using the subway actively, and given how easy it would be to get lost in the maze of the subway tunnels, you decide to return to the somewhat more familiar area underneath the mall.";
		now Resolution of Little Lost Lamb is 3; [couldn't find mary]
		now Little Lost Lamb is resolved;


Section 2 - New Ewe Storeroom

Table of GameRoomIDs (continued)
Object	Name
New Ewe Storeroom	"New Ewe Storeroom"

New Ewe Storeroom is a room. It is fasttravel. It is private.

The description of New Ewe Storeroom is "This small family grocery store is now home to a small flock of sheep, though in most other respects it seems to be a relatively normal store. The shelves are mostly empty now, or full of goods that the flock themselves are using, and some of the narrow aisles have blankets and bedding laid out for the sheep to sleep on, though they have made a place for you if you need to rest (enable rest here). There is a somewhat musky and woolen odor to the place, though the smell seems more comforting and almost arousing than anything else.".

The invent of New Ewe Storeroom is { "chips", "food", "water bottle", "soda" }.

instead of sniffing New Ewe Storeroom:
	say "The storeroom smells of the sheep who live here and their stockpile of jealously kept supplies.";

New Ewe Store ends here.
