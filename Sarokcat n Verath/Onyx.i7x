Onyx by Sarokcat n Verath begins here.

"Adds a npc to Flexible Survival with a variety of responses and goals..."

section 1- Onyx

Onyxtalk is a number that varies.
Onyxaroused is a number that varies.[not a needed number, but used to set different arousal states if they aren't automatically willing to just hop into bed.]
Onyxquest is a number that varies.[often used for quests or renamed to Onyxquest, see boris for some good examples of this, totally unneeded if the npc doesn't have an associated quest.]
Onyxkeys is a number that varies.[Will be used by the part of the quest that frees him from his cell.]
LastOnyxfucked is a number that varies. LastOnyxfucked is usually 250.
Onyxfucked is a number that varies. Onyxfucked is usually 0.

Onyx is a man.[or woman]
The description of Onyx is "[onyxappearance]";

To say onyxappearance:[his description at each stage, comments on what each stage is linked to will be in these brackets]
	if onyxquest is 0:[onyx is still trapped, or first times you encounter him.]
		say "Standing behind the barred door to his room is a teenage boy of about the right age for a college student. His body already beginning to show the signs of his equine transformation. The boy is wearing nothing but a tight black thong that easily contains his obviously shrinking manhood. The young mans face is slightly pushed out into a growing equine muzzle and his ears have elongated into points and have started moving to the top of his head. You can see that his legs are becoming longer and thinner, and his ankles have shifted upwards on them, forcing him to stand on the balls of his changing feet, his toes already starting to merge to form a rather horselike hoof.  The half fear half lust crazed look in his eyes makes you shudder slightly as you realize how easily that could have been you behind those bars, and possibly could still be.";
	if onyxquest is 1:[onyx has been freed from his cell, but has continued transforming and needs to be persuaded if they are to leave, or if they are going to stay(leave will be harder to achieve then letting him stay).]
		say ".";
	if onyxquest is 2:[Onyx has come with you to freedom, and is waiting at the library, not fully transformed yet, but actually starting to look forward to it and could end up either way.]
		say ".";
	if onyxquest is 3:[Onyx has become convinced to visit the palomino, where she is learning to be a female stripper.]
		say ".";
	if onyxquest is 4:[Onyx has decided to take advantage of the situation, and has become a slightly more dominant male horse in the library, and is looking to convince you to be a proper mare for him. Fully tfed now]
		say ".";
	if onyxquest is 5:[Onyx has decided to stay at the Stables, and is looking forward to becoming a proper mare like all the rest. Fully Tfed Looking forward to some nice training, which maybe you can help her with(maybe harnesses and light bondage?)]
		say "";	
	if onyxquest is 6:[Onyx has decided to stay at the stables, and has cut a deal with them, he gets to stay a stallion, as long as he makes a mare to take his place! And that mare would be you if he can get you in that position. Fully Tfed- likely will take the initiative and see about getting the character into a bridle, saddle, harness, other leather accessories, or maybe just tied up for a while....]
		say "";


	




The conversation of Onyx is { "[Onyxtalking]" };

To say Onyxtalking:
	if Onyxtalk is 0:[first time you encounter the npc text]
		say "'Oh hey,' The partially transformed boy says with a sigh as you approach his cell to talk with him. 'Come to tease me again and try to get me to give in and become a slutty little mare?' He says with a sigh, before shifting to turn and give you a closer look, and blinking in surprise. 'Hey wait, you seem different from the rest of them, you aren[apostrophe]t with the horses here are you?' He says with increasing excitement as he sits up and staggers to the door, obviously slightly unsteady on his legs as he tries to walk. 'It[apostrophe]s good to see someone that isn[apostrophe]t one of those horsemen, here to tell me what a fine filly I will make them. My name is Os... Os.. something, dammit.' The transforming equine curses, his hands gripping the bars as he steadies himself on his obviously changing feet. 'Sorry, they told me to forget that name, and it kind of looks like I am, it has been getting harder and harder to remember things anyways since I arrived here.' He shudders for a second, before sighing and looking at you with his slightly larger then normal eyes pleadingly. 'I guess you can call me Onyx, I mean I know I have another name, and I don[apostrophe]t really like answering to what they call me, but it looks like I don[apostrophe]t have much choice until I can remember my old name.' Onyx says with resignation, staring at his changing feet for a minute, before focusing his attention fully on you again.[line break]";
		say "'Anyways, maybe you can help me, I was brought here with my boyfriend... no wait dammit, my girlfriend, I was, no I still am the guy...' Onyx says, and then groans in confusion, 'Sorry, this whole situation is just messing with my head, if I end up stuck here much longer, I[apostrophe]ll probably end up giving in and being just another sexy little equine fucktoy for all those handsome stallions out there... gah no thats not right.' He sighs with exasperation, before shrugging slightly at you, 'See what I mean? I don[apostrophe]t suppose you could help me get out of this damn cage somehow could you? They say they will only let me out when I am ready to be a proper horse like the rest of them, though from the looks of things that won[apostrophe]t take too much longer.' Onyx says as he rubs one of his hands along the side of his still forming muzzle with worry, before addressing you again. 'Please won[apostrophe]t you give me a hand here? I know that several of the guards have keys to the cells in this area, you just need to find one of the ones on patrol and find a way to get the key from them.' He asks hopefully, as he looks at you plainitvely 'Hopefully before I finish changing, and can still remember that I am a … um, student of... something? I think I remember classes somewhere, thats where we were hiding when they caught us anyways...' Onyx[apostrophe]s voice trails off as he seems to try to recall something, after several minutes of him staring into the distance, you decide to continue on your way, wondering if you should find the key to free the changing boy, or if he is already too far gone to save.";
		increase Onyxtalk by 1;
		now Onyxkeys is 1;
		stop the action;
	if Onyxkeys is 2:
		say "'Hey welcome back,' Onyx says with a smile on his increasingly equine face as he moves over to the bars again, standing much more easily on his changing feet as he does so. You take a minute to look at the boy and notice his transformation seems to have progressed farther, and he is almost more horselike than he is human now. 'Did you find the keys?' The equine like boy asks eagerly, and you wonder whether you should actually set him free or not, still unsure, you hold up the keys where he can see them, and he claps his hands together happily as he looks at you. 'I knew you could do it!' He says happily, watching with his large equine eyes as you unlatch the cell door and swing it open carefully.  Onyx grins as he staggers out of the room, seeming disoriented for a minute as he looks around himself.[line break]";
		say "'I[apostrophe]m free!' He says happily as he looks around himself, before blinking, 'I am finally out of that little cell... this means... I am finally a good little horsy?' He says with some confusion, as he looks at you for help. 'I know I had to be out of there for some reason, but they said I could come out when I was a proper horse, so does this mean I am a proper horse now?' Onyx says as he rubs his head with his hands, obviously having trouble thinking straight right now, 'I think maybe I should just stay here for for a minute and try to think, there was a boy I was supposed to rescue, or was it a girl? Someone else here... Maybe you could help me find out what it is I was supposed to do?' Onyx says hopefully as he looks back up at you again, 'It[apostrophe]s just so hard to think about what happened before I ended up here...  but I know it was important somehow... though I am not sure if it is as important as being a good little filly is...' He says with a confused sigh as he moves over to rest against one of the walls. Looking at him like this, you are pretty sure that he could be pretty easy to manipulate if you could just figure out how to do so, which is probably what the horses here were counting on. Sighing you resolve to look around to see what else you can find in this place to help get him moving again, you do recall he keeps mentioning someone else brought in at the same time he was... maybe you should try finding them. Although you get the feeling that you probably shouldn[apostrophe]t leave him alone for too long in this strange place as he is now.";
		now Onyxtalk is 2;
		now onyxquest is 1;
		now onyxkeys is 3;
		stop the action;
	if Onyxtalk is 1:[Normal short messages the npc will say each time you talk to them]
		say "[one of]'Hey again, made any progress so far on those keys?'[or]'I know I had a name.. and I think it began with an... O? Maybe it was Onyx? No wait, thats my current name...'[or]He whikers at you slightly, then seems embarrassed when he realizes what he did.[or]'Come to visit the prisoner again? You aren[apostrophe]t the only one who likes to come look, plenty of the mares come by to tell me how much fun I can look forward too, and the men... well lets just not talk about what they talk about doing to me' Onyx says, and you notice him starting to blush.[or]'You should be careful hanging around talking to me like this, some of the horses come by here pretty often to keep an eye on me. You wouldn[apostrophe]t want to end up in a cell next to mine now would you?'[or]'Why are you hanging around here talking to me so much? If you want to know what it is like in here, just lock yourself in one of the other cells why don[apostrophe]t you, then you can find out what it is like to be a captive while they teach you about being a proper little horse. [or]'This is getting to me, I keep thinking about how much fun it would be to be a big dumb horse... or better yet, be fucked by one...'[or]'I wonder if there is any way to reverse the changes at this point, or if I am going to end up a horse even if I get out of here...'[at random]";
	if Onyxtalk is 2:[freed onyx short messages]
		say "'[one of]Hey again, welcome back.'[or]'You look familiar, are you going to be a horse too?'[or]'I know I was supposed to be doing something... something important... but what could be more important then being a proper horse?'[or]I think I was in something called college, though for some reason all I get when I try thinking more about it, is a vague sense of boredom... maybe it was so boring I don[apostrophe]t want to remember it?'[or]He neighs at you happily,a smile on his muzzle as he looks around the hallway.[or]I think I could get the hang of this being a horse thing if I could only figure out whether I was supposed to be a stallion or a mare...'[or]You haven[apostrophe]t seen a stallion around here have you? They usually come by here pretty often, and I need to ask them what I was supposed to be doing...'[or]Dammit, I just can[apostrophe]t remember what I was supposed to be doing, do you know?'[at random]";





Instead of fucking the Onyx:
	if lastOnyxfucked - turns is less than 6:
		say "'.";
		stop the action;
	if onyxquest is 0:
		say "'Great, another person teasing me with sex while I am stuck behind bars.' Onyx says with a sigh, 'Sorry but until I get out of here, the only sex I am getting is with my hoof, I mean hand.' He says before blushing slightly. 'I suppose that is another good reason to get me out of here, cause damn I am getting horny in here....'";
	if onyxquest is 1:
		say "'Sex?' Onyx says with some confusion, before giving you an equine smile. 'I think I would love some, cause damn I am soooo fucking horny,' He says as he reaches down to rub his small crotch absentmindedly. 'But I think if we do that, I won[apostrophe]t be able to remember anything else, and I know there was something I had to do... or was it someone that had to do me?' The equine says, before shaking his head at the puzzling situation. 'Maybe we should wait till we figure out what we are going to do first, then we can have some hot heavy sex.... lots and lots of hot and heavy sex...";






Onyx ends here.
