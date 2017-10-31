Version 4 of Onyx by Sarokcat n Verath begins here.
[ Version 4.0.1 - Fix for submissive male Onyx at Bunker ]

"Adds an NPC to Flexible Survival with a variety of responses and goals..."

section 1 - Onyx

onyxdma is a number that varies.	[rescued Onyx / dom male / anal on player]
onyxdmc is a number that varies.	[rescued Onyx / dom male / vaginal on player]
onyxdmra is a number that varies.	[rescued Onyx / dom male / reciprocal anal for dom players ]
onyxsmro is a truth state that varies.	onyxsmro is usually false. [rescued Onyx / sub male / player opted to give oral ]
onyxsmrv is a truth state that varies.	onyxsmrv is usually false. [rescued Onyx / sub male / player opted for vaginal ]
onyxsmra is a truth state that varies.	onyxsmra is usually false. [rescued Onyx / sub male / player opted to receive anal ]
onyxfinale is a number that varies.	[rescued Onyx / sub male / cycling endings for oral scenes ]
onyxhappytalk is a truth state that varies. onyxhappytalk is normally false.
Onyxmareslut is a number that varies.	[Stables Onyx / dom male / player into mareslut]
Onyxboislut is a number that varies.	[Stables Onyx / dom male / player into stallionboi]
femonyxq is a number that varies.	[Quest variable for fem onyx]
onyxlapdance is a number that varies.	[number of lap dances from Onyx]
fonyxvagcount is a number that varies.	[number of vaginal sex with Onyx]
fonyxanalcount is a number that varies.	[number of anal sex with Onyx]

Onyx is a man.
The description of Onyx is "[onyxappearance]".
The conversation of Onyx is { "Help me!" }.

instead of sniffing Onyx:		[results for currently uncoded outcomes included]
	if XP of Onyx < 3 or XP of Onyx is 100:
		say "     The young man smells both human and equine.";
	else if ( XP of Onyx >= 3 and XP of Onyx <= 9 ) or XP of Onyx is 50 or XP of Onyx is 51:
		say "     The young man smells even more of horses than before, with his human scent fading further.";
	else if XP of Onyx >= 30 and XP of Onyx <= 49:
		say "     The young mare smells of arousal and sex, clearly enjoying her new life at the club.";
	else if ( XP of Onyx >= 10 and XP of Onyx <= 29 ) or ( XP of Onyx >= 60 and XP of Onyx <= 79 ):
		say "     The young stallion smells of growing male arousal.";
	else if XP of Onyx >= 80 and XP of Onyx <= 99:
		say "     The slutty mare smells strongly of arousal and equine sex.";

To say onyxappearance:[his description at each stage, comments on what each stage is linked to will be in these brackets]
	if XP of Onyx < 3 or XP of Onyx is 100:		[onyx trapped]
		say "     Standing behind the barred door to his room is a teenage boy of about the right age to be a college freshman. His body already beginning to show the signs of his equine transformation. The young man is wearing nothing but a tight black thong that easily contains his obviously shrinking manhood. His face is slightly pushed out into a growing equine muzzle and his ears have elongated into points and have started moving to the top of his head. You can see that his legs are becoming longer and thinner, and his ankles have shifted upwards on them, forcing him to stand on the balls of his changing feet, his toes already starting to merge to form a rather equine hoof. The half fear half lust crazed look in his eyes makes you shudder slightly as you realize how easily that could have been you behind those bars, and possibly could still be.";
	else if ( XP of Onyx >= 3 and XP of Onyx <= 5 ) or XP of Onyx is 50 or XP of Onyx is 51:	[onyx free - leave or stay?]
		say "     Leaning up against the wall is a teenage horseboy, his transforming features are much more obvious now as his face is obviously pushing out into an equine muzzle, and his legs are shifting to the point where he can hardly stand on them without the help of the wall. His feet are nearly fully formed hooves however, and his hands are becoming slightly hoof-like as well, so you can tell it isn't going to be much longer before he finishes changing, though from the small bulge in his tight black thong, you can see that he is still holding on to his manhood, for however much longer that will last at least...";
	else if XP of Onyx >= 6 and XP of Onyx <= 8:			[at Library - unsettled if will be stallion or mare]
		say "     The tall horseboy is seated at one of the empty library desks, and is idly poking at several of the books stacked in front of him curiously. His features have continued to change from when you rescued him from the library, and his face is nearly a full equine muzzle now, and underneath the desk, you are all to well aware of how very equine his legs and body has become. Onyx doesn't seem to mind the changes at all anymore however, and he looks up at you with a rather sexy smile as you approach.";
	else if XP of Onyx is 9:
		if lastfuck of onyx - turns >= 16:
			say "     'Hey, great to see you again, sweety!' Looking over Onyx, it's clear that his presence here has had quite and effect on him, seeing as he's now a she... Slender, ebony body sparsely dressed, it's apparent she's taken quite a liking to the other strippers, finding herself as a seductive beast to be gazed upon by patrons of the bar.";
			say "     'As you can see, I found a way to fit in!' She laughs, gesturing to a quieter corner of the room to talk. You ask her how she's feeling.";
			say "     'Oh, I'm feeling great! There's so much energy here, and I love to dance... I'm not quite as good as my brothers and sisters, but I'm quickly catching on!' She winks at you before moving in closer, 'Anyways, if you ever feel the need for a good time, don't be afraid to ask...' Grinning, she's called over to attend some patrons, leaving you to ponder the situation as she gives you a rather telling view of her exposed ass.";
			now XP of onyx is 30;
		else:
			say "     The tall horseboy is seated at one of the empty stalls, and is idly watches the strippers at the lounge. His features have continued to change from when you rescued him from the library, and his face is nearly a full equine muzzle now, and underneath the desk, you are all to well aware of how very equine his legs and body has become. Onyx doesn't seem to mind the changes at all anymore however, and he looks up at you with a rather sexy smile as you approach.";
	else if XP of Onyx >= 10 and XP of Onyx <= 19:		[Onyx free - stallion at Library, wants player mare]
		say "     Onyx looks like a proper Stallion now, his handsome black equine features, and lovely pelt of jet black horse fur making him look extremely exotic and sexy as he wanders around the library. Noticing you looking at him, he shoots you a rather dominant equine grin, as he flexes slightly for your enjoyment. His obviously large and powerful stallionhood obviously far too large now to be contained in a thong, it hangs half erect between your stallion's legs as if teasing you to come over and worship it properly.";
	else if XP of Onyx is 20:
		say "     Onyx is well on his way to being a proper Stallion now. He has handsome black equine features and lovely pelt of jet black horse fur, making him look extremely exotic and sexy as he wanders around the library. His large and impressive stallionhood cannot be fully contained by his thong and partially pokes free. With your attention on him, it gives an eager twitch and drips a bit of precum. Noticing you looking at him and seeing that, he blushes a bit and turns away with a swish of his tail, as if his body is inviting you to complete your claim on him.";
	else if XP of Onyx >= 21 and XP of Onyx <= 29:
		say "     Onyx looks like a proper Stallion now: fit, strong and sexily submissive. He has handsome black equine features and lovely pelt of jet black horse fur, making him look extremely exotic and sexy as he wanders around the library. Noticing you looking at him, he smiles at your attention and [one of]runs a hand sensually over his body[or]licks his lips tantalizingly as he runs a finger along his half-exposed cock[or]turns and gives his ass a shake while flicking his tail up[or]leans over as he examines a book on a low shelf, toned ass swaying all the while[in random order]. His large and impressive stallionhood cannot be fully contained by his thong and partially pokes free. That's quite the fine stud you've got as your subby lover.";
	else if XP of Onyx >= 30 and XP of Onyx <= 49:		[Onyx has become convinced to visit the palomino, where she is learning to be a female stripper.]
		say "     Onyx seems quite happy as she bobs her head to the beat of the bouncy music, the former teenage boy has obviously adapted well to her new role as a sexy mare. Her lush black equine pelt is draped in a leather harness with shiny silver buckles, and she has is wearing a tight red thong and bra that barely contain her obviously damp and needy mare pussy, and her pert and sexy breasts. You can tell just by the looks that several of the club goers are giving her that she is going to be quite a popular little stripper here at the club, and from the teasing glances she sends you from time to time, she certainly appears grateful for all your help in getting her here.";
	else if XP of Onyx >= 60 and XP of Onyx <= 79:		[Onyx staying as stallion - wants player as replacement mare]
		say "     The formerly weak teenage boy has been replaced by a large and powerful black stallion, his proud muzzle and the wicked glint in his equine eyes promise a lot of fun as he eyes you with anticipation. He still hangs out in the hallway here, though at some point his name has been removed from the room he is standing in front of, and someone has hung the name 'Obsidian' in it's place. Looking at where the powerful stallion shifts his weight teasingly as he gestures you closer, you can't tell whether or not you feel sorry for the next captive they put in the room with him, or envious...";
	else if XP of Onyx >= 80 and XP of Onyx <= 99:		[Onyx staying as mare]
		say "     The transforming boy has finally become a proper mare, and certainly lives up to her new name now. Onyx has become a pure black mare, her lithe equine body seems perfectly proportioned for pleasure as she shifts her weight from hoof to hoof teasingly. She seems to have stopped worrying about anything other than being a properly slutty mare now, and from the looks she is shooting you from time to time, she is more than interested in letting you take her for a ride...";


Section 2 - Conversation Tree

instead of conversing the Onyx:
	if XP of Onyx is 0:			[first time meeting]
		say "     'Oh hey,' the partially transformed guy says with a sigh as you approach his cell to talk with him. 'Come to tease me again and try to get me to give in and become a slutty little mare?' he says with a sigh, before shifting to turn and give you a closer look, and blinking in surprise. 'Hey wait, you seem different from the rest of them. You aren't with the horses here, are you?' he says with increasing excitement as he sits up and staggers to the door, obviously slightly unsteady on his legs as he tries to walk. 'It's good to see someone that isn't one of those horsemen, here to tell me what a fine filly I will make them. My name is Os... Os.. something. Dammit!' the transforming equine curses, his hands gripping the bars as he steadies himself on his obviously changing feet.";
		say "     'Sorry, they told me to forget that name, and it kind of looks like I am. It has been getting harder and harder to remember things anyways since I arrived here.' He shudders for a second, before sighing and looking at you with his slightly larger than normal eyes pleadingly. 'I guess you can call me Onyx, I mean I know I have another name, and I don't really like answering to what they call me, but it looks like I don't have much choice until I can remember my old name,' Onyx says with resignation, staring at his changing feet for a minute, before focusing his attention fully on you again.";
		WaitLineBreak;
		say "     'Anyways, maybe you can help me, I was brought here with my boyfriend... No, wait dammit!  My girlfriend. I was, no I still am the guy...' Onyx says, and then groans in confusion. 'Sorry, this whole situation is just messing with my head. If I end up stuck here much longer, I'll probably end up giving in and being just another sexy little equine fucktoy for all those handsome stallions out there... Gah! No, that's not right.' He sighs with exasperation before shrugging slightly at you.";
		say "     'See what I mean? I don't suppose you could help me get out of this damn cage somehow, could you? They say they will only let me out when I am ready to be a proper horse like the rest of them, though from the looks of things that won't take too much longer,' Onyx says as he rubs one of his hands along the side of his still forming muzzle with worry, before addressing you again.";
		WaitLineBreak;
		say "     'Please won't you give me a hand here? I know that several of the guards have keys to the cells in this area. You just need to find one of the ones on patrol and find a way to get the key from them.' He looks at you plaintively as he continues. 'Hopefully that'll be before I finish changing, and can still remember that I am a... um, student of... something? I think I remember classes somewhere. That's where we were hiding when they caught us anyways...' Onyx's voice trails off as he seems to try to recall something.";
		say "     After several minutes of him staring into the distance, you decide to continue on your way, wondering if you should find the key to free the changing boy, or if he is already too far gone to save.";
		if guy is banned and girl is banned:
			say "     Onyx shakes his head, suddenly coming back into focus just as you're about to leave. He looks at you with a rather sad expression. 'Oh, I just remembered that the guards holding my keys have locked them away. They said something about some kind of ban in effect. I guess I'm stuck in here. Thanks anyhow.'";
			say "[italic type](This storyline cannot proceed with both guy and girl banned.)[roman type][line break]";
			now XP of Onyx is 100;
		else:
			increase XP of Onyx by 1;
			now Equineguardpost is unresolved;
	else if XP of Onyx is 1:	[convo while confined]
		say "     [one of]'Hey again, made any progress so far on those keys?'[or]'I know I had a name.. and I think it began with an... O? Maybe it was Onyx? No wait, that's my current name...'[or]He whickers at you slightly, then seems embarrassed when he realizes what he did.[or]'Come to visit the prisoner again? You aren't the only one who likes to come look, plenty of the mares come by to tell me how much fun I can look forward too, and the men... well let's just not talk about what they talk about doing to me' Onyx says, and you notice him starting to blush.[or]'You should be careful hanging around talking to me like this, some of the horses come by here pretty often to keep an eye on me. You wouldn't want to end up in a cell next to mine now would you?'[or]'Why are you hanging around here talking to me so much? If you want to know what it is like in here, just lock yourself in one of the other cells why don't you, then you can find out what it is like to be a captive while they teach you about being a proper little horse.'[or]'This is getting to me, I keep thinking about how much fun it would be to be a big dumb horse... or better yet, be fucked by one...'[or]'I wonder if there is any way to reverse the changes at this point, or if I am going to end up a horse even if I get out of here...'[at random]";
	else if XP of Onyx is 2:
		say "     'Hey welcome back,' Onyx says with a smile on his increasingly equine face as he moves over to the bars again, standing much more easily on his changing feet as he does so. You take a minute to look at the boy and notice his transformation seems to have progressed farther, and he is almost more equine than he is human now. 'Did you find the keys?' The equine like boy asks eagerly, and you wonder whether you should actually set him free or not, still unsure, you hold up the keys where he can see them, and he claps his hands together happily as he looks at you. 'I knew you could do it!' he says happily, watching with his large equine eyes as you unlatch the cell door and swing it open carefully. Onyx grins as he staggers out of the room, seeming disoriented for a minute as he looks around himself.[line break]";
		say "     'I'm free!' he says happily as he looks around himself, before blinking. 'I am finally out of that little cell. This means... I am finally a good little horsey?' he ponders with some confusion, as he looks at you for help. 'I know I had to be out of there for some reason, but they said I could come out when I was a proper horse, so does this mean I am a proper horse now?' Onyx asks as he rubs his head with his hands, obviously having trouble thinking straight right now.";
		WaitLineBreak;
		say "     'I think maybe I should just stay here for a minute and try to think. There was a boy I was supposed to rescue... or was it a girl? Someone else here... Maybe you could help me find out what it is I was supposed to do?' Onyx says hopefully as he looks back up at you again, 'It's just so hard to think about what happened before I ended up here... but I know it was important somehow... though I am not sure if it is as important as being a good little filly is...' he says with a confused sigh as he moves over to rest against one of the walls.";
		say "     Looking at him like this, you are pretty sure that he could be pretty easy to manipulate if you could just figure out how to do so, which is probably what the horses here were counting on. Sighing, you resolve to look around to see what else you can find in this place to help get him moving again, you do recall he kept mentioning someone else brought in at the same time he was. Maybe you should try finding them. Although you get the feeling that you probably shouldn't leave him alone for too long in this strange place as he is now.";
		now XP of Onyx is 3;
	else if XP of Onyx is 3 or XP of Onyx is 4:		[freed onyx short messages]
		say "     [one of]'Hey again, welcome back.'[or]'You look familiar. Are you going to be a horse, too?'[or]'I know I was supposed to be doing something... something important... but what could be more important than being a proper horse?'[or]'I think I was in something called college, though for some reason all I get when I try thinking more about it is a vague sense of boredom. Maybe it was so boring, I don't want to remember it?'[or]He neighs at you happily, a smile on his muzzle as he looks around the hallway.[or]'I think I could get the hang of this being a horse thing if I could only figure out whether I was supposed to be a stallion or a mare...'[or]'You haven't seen a stallion around here have you? They usually come by here pretty often, and I need to ask them what I was supposed to be doing...'[or]'Dammit, I just can't remember what I was supposed to be doing. Do you know?'[at random]";
	else if XP of Onyx is 5:
		say "     'Welcome back again,' the still changing horseboy says with a smile on his changing muzzle as he lifts a hand in greeting. 'You know some stallions just came by to talk to me while you were gone, and they seemed surprised I got out. They said I had some potential or something,' he says with a slight smile at the thought of the stallions before shaking his head and rubbing his forehead with his changing hands.";
		say "     'Something still doesn't seem quite right though...' he says with a sad and confused sigh. His expression brightens however as you pull out the intricate silver necklace you went to all the trouble of finding. 'This... looks so familiar,' he mutters as you hand it to him and he runs the necklace over through his hands absently, before stopping to read the inscription on the back several times. His equine lips moving slightly as he mutters softly to himself, before blinking and looking at you.";
		WaitLineBreak;
		say "     'Now I remember!  We were captured... and they brought us here to make us like them...' Onyx says with a slightly panicked look on his partially formed muzzle, 'And I can't believe I almost forgot that and gave up. But what about Diana?  Did you find out what happened to her?' he asks nervously, as if afraid to hear the answer. His shoulders slump slightly when you explain that his girlfriend is now well on her way to being a happy slutty mare like all the rest, though he does perk up slightly when you tell him she said he should escape with you if he could. He seems ready to go rushing to her rescue for a minute, before sighing and giving up when you explain just how many mares there are in the area with her.";
		say "     Sighing, Onyx admits that he is pretty sure that he can't actually bring himself to fight any of the more dominant equines right now, and with some persuasion agrees to follow you out of the Stables. It takes a bit of work for you to distract the two guards outside, but you manage to keep their attention long enough for Onyx to slip out unnoticed. Once free of the Stables, you lead your new and slightly unhappy new equine companion back to the safest place you know if in this crazy city, breathing a soft sigh of relief as the library comes into sight and you can both rest and relax for a bit.";
		now XP of Onyx is 6;
		now the vmusings of Onyx is "[onyxmusing]";
		now Onyx is in Grey Abbey Library;
		move player to Grey Abbey Library;
	else if XP of Onyx is 6:
		say "     'Hey thanks again for your help,' the mostly changed equine teenager says with a soft smile as you approach him. 'I know I am going to keep changing, but at least I'm here with you instead of trapped with those crazies back at the Stables,' he says with a soft smile, before sighing slightly. 'I still wish I knew how to fit in properly though now. Everything is just so confusing, and I still am not sure if I am going to end up a stallion or a mare when all this is over with...' Onyx says with a sigh, before giving you a shy grin and a shrug. 'Heck I don't even feel sure about which one I want to end up as. Both ideas seem so sexy and appealing to me sometimes...'";
		say "     He looks off into the distance with a smile on his face for a second, before shrugging and poking at the books in front of him again. Looking at the books yourself, you find yourself grinning as you note he has all sorts of books about horses spread out in front of him, with pictures of both mares and stallions spread out on the table. Glancing up at your new equine acquaintance, you find yourself wondering if maybe you can't find something, or someone out there, to help you finish transforming him into either a sexy stud, or a slutty mare for you to play with... to solve his personal dilemma, of course.";
		now XP of onyx is 7;
	else if XP of Onyx is 7 or XP of Onyx is 8:
		if femonyxq is 1:
			say "     Shall you tell Onyx about the Palomino?";
			if player consents:
				say "     You talk to Onyx about the possibility of leaving to work at the bar.";
				say "     'Oh, huh... I'm not sure, will I be safe there?' You attempt to reassure him, stating that there are others like him there that can help. 'Well... if you think it's a good idea, I'm certain it's probably for the best.' And with that he gathers what little he has and lets you lead him back to the Palomino.";
				now Onyx is in Topless Lounge;
				move player to Topless Lounge;
				now the vmusings of Onyx is "";
				follow the turnpass rule;
				now XP of onyx is 9;
				now femonyxq is 2;
				now lastfuck of onyx is turns;
			else:
				say "     [one of][if XP of Onyx is 7]'This is all very confusing. It's getting hard to cope with these urges, but I don't want to risk getting sex-crazed either.'[else]'I'm still pretty uncertain as to what I'm going to do about all this. But I do feel a little relieved that I didn't lose it after what you did. Thanks for showing me that I can still have some fun.'[end if][or]'Here I am with a cock the size of which most any man would envy and I'm too nervous to risk using it. Funny, eh?' he says, giving a weak laugh.[or]'It's too bad we weren't able to save Diana, but at least I know she's happy there.'[or]'I need to try and hang on to what little I have left of the old Oscar, though there's quite a lot more of Onyx now.'[or]'I still wish I knew how to fit in properly though now. Everything is just so confusing, and I still am not sure if I am going to end up a stallion or a mare when all this is over.'[or]'Do you think anyone can truly recover from all... This?'[or]'So how do you cope with everything that's going on out there?'[or]'At least it's pretty peaceful here at the library. I can focus more on my... dilemma... with fewer distractions.'  A quick glance shows he's looking over more books on horses.[or]'The old me wants me to try staying a man while all my training at the Stables makes being a mare sound really appealing too.'[at random]";
		else:
			say "     [one of][if XP of Onyx is 7]'This is all very confusing. It's getting hard to cope with these urges, but I don't want to risk getting sex-crazed either.'[else]'I'm still pretty uncertain as to what I'm going to do about all this. But I do feel a little relieved that I didn't lose it after what you did. Thanks for showing me that I can still have some fun.'[end if][or]'Here I am with a cock the size of which most any man would envy and I'm too nervous to risk using it. Funny, eh?' he says, giving a weak laugh.[or]'It's too bad we weren't able to save Diana, but at least I know she's happy there.'[or]'I need to try and hang on to what little I have left of the old Oscar, though there's quite a lot more of Onyx now.'[or]'I still wish I knew how to fit in properly though now. Everything is just so confusing, and I still am not sure if I am going to end up a stallion or a mare when all this is over.'[or]'Do you think anyone can truly recover from all... This?'[or]'So how do you cope with everything that's going on out there?'[or]'At least it's pretty peaceful here at the library. I can focus more on my... dilemma... with fewer distractions.'  A quick glance shows he's looking over more books on horses.[or]'The old me wants me to try staying a man while all my training at the Stables makes being a mare sound really appealing too.'[at random]";
	else if XP of onyx is 9: [Female Onyx Addition]
		if lastfuck of onyx - turns >= 16:
			say "     'Hey, great to see you again, sweety!' Looking over Onyx, it's clear that his presence here has had quite and effect on him, seeing as he's now a she... Slender, ebony body sparsely dressed, it's apparent she's taken quite a liking to the other strippers, finding herself as a seductive beast to be gazed upon by patrons of the bar.";
			say "     'As you can see, I found a way to fit in!' She laughs, gesturing to a quieter corner of the room to talk. You ask her how she's feeling.";
			say "     'Oh, I'm feeling great! There's so much energy here, and I love to dance... I'm not quite as good as my brothers and sisters, but I'm quickly catching on!' She winks at you before moving in closer, 'Anyways, if you ever feel the need for a good time, don't be afraid to ask...' Grinning, she's called over to attend some patrons, leaving you to ponder the situation as she gives you a rather telling view of her exposed ass.";
			now XP of onyx is 30;
		else:
			if femonyxq is 2:
				say "     'Geez, it sure is loud in here.' You as if he'll be OK, to which he silently nods. 'It could be worse, the dancers are very entertaining. I... Strangely envy them, having the courage to be the center of attention like that...' He briefly seems lost in thought before returning his attention to you, blushing slightly, 'Anyways, Harold seems like a nice guy, and he think he can get me started off working at tables. Thank you!' Nodding, you decide to leave the equine to enjoy the show.";
				now femonyxq is 3;
			else:
				say "     '[one of]This place is growing on me[or]You should see the dancers[or]I'm sure I'll fit in here eventually[or]Thanks again[at random]!'";
	else if XP of Onyx >= 10 and XP of Onyx <= 19:
		if onyxhappytalk is false and a random chance of 1 in 3 succeeds:
			say "     'Hey, thank you again. I've grown to love my new form now, but I feel more in control; my mind feels a lot clearer, thanks to you.'";
			now onyxhappytalk is true;
		else:
			say "     [one of]'I'm looking forward to thanking you again for all your help, sexy' the mature equine says with a soft pat on your rear.[or]'I think I'm starting to fit in rather well now, aren't I?' he says with a grin and a firm squeeze on your derriere.[or]'This new bod of mine's pretty impressive, isn't it?' he asks, showing off his studly stallion form and impressive stallionhood.[or]'I was wrong to try and suppress these urges entirely. I can handle it much better if I just decide when and how to let them out.'[or]'I may no longer be the old Oscar I used to be, but I'm not the sex-crazed pet they wanted to make out of me at that strange brothel either.'[or]'It's too bad we weren't able to save Diana. I'd sure like to have some fun with her now. But at least I know she's happy there. And if you can check up on her from time to time, at least I'll know she's safe.'[at random]";
	else if XP of Onyx is 20:
		if onyxhappytalk is false and a random chance of 1 in 3 succeeds:
			say "     'Hey, thank you again. I'm really starting to like this new form now. I feel more at ease with my desires and my mind feels a lot clearer, thanks to you.'";
			now onyxhappytalk is true;
		else:
			say "     [one of]'Is it strange that I'm looking forward to having another chance to [']thank you['] for all your help, sexy?' the maturing equine says while eyeing your body with desire and posing temptingly.[or]'I think I'm starting to fit in rather well now. Though I don't really fit in this quite so well,' he adds as he adjusts his ill-fitting thong that can only partly cover his studly equine meat.[or]'I was wrong to try and suppress these urges entirely. I can handle it much better with you helping me to let them out.'[or]'I may no longer be the old Oscar I used to be, but at least I'm not a sex slave at that strange brothel.'[or]'It's too bad we weren't able to save Diana. I'd sure like to have some fun with her now. But at least I know she's happy there.'[at random]";
	else if XP of Onyx >= 21 and XP of Onyx <= 29:
		if onyxhappytalk is false and a random chance of 1 in 3 succeeds:
			say "     'Hey, thank you again. I've grown to love my new form now that I'm not stressing so much about staying in control with you in charge. I feel at ease with my desires and my mind feels a lot clearer, thanks to you.'";
			now onyxhappytalk is true;
		else:
			say "     [one of]'I'm looking forward to having another chance to [']thank you['] for all your help, sexy,' the mature equine says while [if cocks of player > 0]pressing his rear to your crotch[else]posing alluringly[end if].[or]'I think I'm starting to fit in rather well now. Though I don't really fit in this quite so well,' he adds as he adjusts his ill-fitting thong that can only partly cover his studly equine meat.[or]'I was wrong to try and suppress these urges entirely. I can handle it much better with you helping me to let them out.'[or]'I may no longer be the old Oscar I used to be, but at least I'm not a sex slave at that strange brothel. I'd much rather be servicing my friends['] needs than those of strange, perverted monsters.'[or]'It's too bad we weren't able to save Diana, but at least I know she's happy there. And if you can check up on her from time to time, at least I'll know she's safe.'[at random]";
	else if XP of Onyx >= 30 and XP of Onyx <= 49:
		say "     '[one of]Stare all you like, don't worry about the tip!'[or]We can go out back, if you need something looked at.'[or]I hope you're having as much fun as I'm having!'[or]Okay, who stole my last thong?'[or]I'm still very inexperienced when it comes to dancing, but our patrons don't seem to mind!'[at random]";
	else if XP of Onyx is 50:
		say "     'Oh hey it's you again!' Onyx says happily as you approach the changing equine again where he leans up against the wall. 'A couple stallions came by while you were gone, and they seemed surprised about me being out for some reason.' He shrugs as he rubs his forehead with one of his changing hands absently, and you note that his changes seem to be continuing to progress though somewhat more slowly than before. 'Anyways, they stopped to talk, but they just left a bit ago... and now you show up!' he says with a rather equine smile as he grins at you happily. 'Did you figure out what I was supposed to be doing? I'm still pretty confused by everything going on here...' Onyx asks you hopefully, and you find yourself smiling as well as you nod to the changing equine.";
		say "     Onyx listens raptly while you explain that his companion says he should stay and be a good little horsey just like she is, and stay in the Stables so he can eventually keep her company. Onyx seems to smile even broader than before as you slowly relate all the information you learned, and when you finish he nods happily.";
		say "     'So the important thing I need to do is stay here and be the best horse I can be! That sounds a lot like what the stallions said too. And if so many different important people agree that Onyx should be a good horse, then I'll do my best to be the best horse around!' he declares happily as he shifts his weight slightly onto his almost fully formed hooves. 'And maybe you can help me and become a good little horsey too!' Onyx says with a smile as he looks right at you teasingly, and you get the feeling that maybe now you could have some 'fun' with the still changing horsey if you wanted to...";
		now XP of Onyx is 51;
	else if XP of Onyx is 51:
		say "     '[one of]Hey again handsome, welcome back.'[or]'You look like you would make a fine horsey too!'[or]'It's so good not to have to worry about having forgotten something anymore.'[or]I stopped worrying about remembering anything other than how to be a good horsey now. That other stuff wasn't important anyways after all.'[or]He neighs at you happily, a smile on his muzzle as he looks around the hallway.[or]'I think I could get the hang of this being a horse thing if I could only figure out whether I was supposed to be a stallion or a mare...'[or]'You haven't seen a stallion around here have you? They usually come by here pretty often, and I think they might like to meet you.'[or]'So did you want to have some fun yet?'[at random]";
	else if XP of Onyx >= 60 and XP of Onyx <= 79:
		say "     [one of]'Hey there again sexy, feel like another go?'[or]'Want to feel a real stallion again?'[or]'You should stay here more often...'[or]'Stable life suits me don't you think?'[or]'I feel so much better now, I can't even imagine why I was worried about this.'[or]'Know anyone interested in playing the mare for me?' he says teasingly.[or]'Those stallions were right, this feels amazing.'[or]'You will look so sexy walking around on hooves I think.'[or]'Ready to be my mare yet? You know it will be amazingly good.'[or]'I wonder if Daisy will like my new body?' Onyx says with a lascivious grin.[at random]";
	else if XP of Onyx >= 80 and XP of Onyx <= 99:
		say "     [one of]'Hello again, master!'[or]'I feel like such a sexy slut now![or]'I wonder if Daisy will like my new look?[or]'Mmmmm... stallions....'[or]'I love being a mare! Please let me thank you properly for making me so nice and slutty!'[or]'Can you believe I actually thought I wanted to be a stallion at one point? What would I ever do without this wonderfully sensitive pussy of mine?'[or]'Oh master, the Stables are such a wonderful place for a mare, just think of all that lovely thick stallion meat just waiting to fill a mare up!'[at random]";
	else if XP of Onyx is 100:		[stuck in there, cannot be freed]
		say "     [one of]'I know I had a name.. and I think it began with an... O? Maybe it was Onyx? No wait, that's my current name...'[or]He whickers at you slightly, then seems embarrassed when he realizes what he did.[or]'Come to visit the prisoner again? You aren't the only one who likes to come look, plenty of the mares come by to tell me how much fun I can look forward too, and the men... well let's just not talk about what they talk about doing to me' Onyx says, and you notice him starting to blush.[or]'You should be careful hanging around talking to me like this, some of the horses come by here pretty often to keep an eye on me. You wouldn't want to end up in a cell next to mine now would you?'[or]'Why are you hanging around here talking to me so much? If you want to know what it is like in here, just lock yourself in one of the other cells why don't you, then you can find out what it is like to be a captive while they teach you about being a proper little horse. [or]'This is getting to me, I keep thinking about how much fun it would be to be a big dumb horse... or better yet, be fucked by one...'[or]'I wonder if there is any way to reverse the changes at this point, or if I am going to end up a horse even if I get out of here...'[at random]";

Section 3 - Sexy Times

Instead of fucking the Onyx:
	if guy is not banned:		[Default to Horseman]
		setmonster "Horseman";
		choose row monster from the table of random critters;
	else:				[Using Mareslut in case guy is banned]
		setmonster "Mareslut";
		choose row monster from the table of random critters;
	if cocks of player is 0 and cunts of player is 0:
		say "     You consider offering to have sex with Onyx, but recall that you currently have no gender and are unable to satisfy the horse in such a manner.";
	else if XP of Onyx is 9:
		say "     'Oh? Sex is probably the last thing on my mind right now...' he says, perhaps dishonestly, while he gawks at the strippers... Peculiar fellow, it's perhaps best you ask him later.";
	else if lastfuck of onyx - turns < 6:
		say "     'Sorry there, friend,' Onyx says with a sad shake of [if ( XP of Onyx >= 30 and XP of Onyx <= 49 ) or ( XP of Onyx >= 80 and XP of Onyx <= 99 )]her[else]his[end if] equine head. 'I need a bit more time to recover after our last romp, maybe you could come back then?' the transformed equine says with a teasing look as [if ( XP of Onyx >= 30 and XP of Onyx <= 49 ) or ( XP of Onyx >= 80 and XP of Onyx <= 99 )]she goes back to what she[else]he goes back to what he[end if] was doing.";
	else if XP of Onyx < 3 or XP of Onyx is 100:
		say "     'Great, another person teasing me with sex while I am stuck behind bars,' Onyx says with a sigh. 'Sorry, but until I get out of here, the only sex I am getting is with my hoof, I mean hand,' he says before blushing slightly. 'I suppose that is another good reason to get me out of here, cause damn I am getting horny in here...'";
	else if ( XP of Onyx >= 3 and XP of Onyx <= 5 ) or XP of Onyx is 50:	[at Stables, undecided]
		say "     'Sex?' Onyx says with some confusion, before giving you an equine smile. 'I think I would love some, cause damn I am soooo fucking horny,' he says as he reaches down to rub his small crotch absentmindedly. 'But I think if we do that, I won't be able to remember anything else, and I know there was something I had to do... or was it someone that had to do me?' the equine says, before shaking his head at the puzzling situation. 'Maybe we should wait till we figure out what we are going to do first, then we can have some hot heavy sex.... lots and lots of hot and heavy sex...";
	else if XP of Onyx >= 6 and XP of Onyx <= 29:		[at Library]
		if XP of Onyx is 6:
			say "     Given what he's been through, you should probably at least talk to him before making the moves on him.";
		else:
			say "[onyxbunkersex]";
[		say "'Sorry friend,' Onyx says with a shy smile as he moves the pictures of horses around in front of him. 'But I haven't yet figured out what I should be yet, and I figure actually giving in and having sex would kind of make the decision for me... so I think I should pass for now...' he says with a sigh as he goes back to looking at the pictures, and you wonder if maybe there isn't something out there in the city you could find which would help him make the choice you want him to... perhaps in the red light district or one of the clubs in town..."; ]
[		say "***INSERT NEW CONTENT HERE"; ]
	else if XP of Onyx is 31 and cocks of player > 0 and cock length of player <= 15 and a random chance of 3 in 5 succeeds:
		[first time lap dance]
		say "     Catching your look and returning it with a smile, the sexy mare saunters over to you sexily. 'Oh, I've been looking forward to showing you a good time again,' she says sensually. Taking your hand in hers, she leads you off to a private little boudoir and helps you strip down while making a show of baring herself as well.";
		femonyxsex5;
		now XP of Onyx is 32;
	else if XP of Onyx >= 30 and XP of Onyx <= 49:		[at Palomino]
		now lastfuck of onyx is turns;
		femonyxsex;
	else if XP of Onyx is 51:
		now lastfuck of onyx is turns;
		say "     'Oh hey, you want to have some fun with me?' Onyx says with a smile as you approach the changing equine with obvious sexual intent. 'Of course if I am going to be sexy little horse I need to have lots and lots of sex, and you should too so you can be just as sexy a horse as me...' the black equine says with a teasing smile as he draws closer to you, rubbing his softly furred equine body up against your own teasingly, his scent seeming increasingly arousing as the transforming male pulls you close and whispers in your ear. 'Why don't I show you some of the tricks the stallions told me about, and teach you how much fun it is to be saddled up and ridden?' he says teasingly, while his arousing scent makes your head swim with desire, and your body warms up in response to his touch. Do you give in to your building desires and the increasingly arousing touch of the horseboy?'";
		if the player consents:
			say "     You find yourself nodding almost automatically in response to Onyx's surprisingly forceful words, though you don't have much time to think about that as Onyx grins happily at your surrender, and quickly presses your unresisting body up against the wall of the hallway.";
			if cocks of player > 0:
				if cunts of player > 0:
					say "     'Good slut,' you hear Onyx mutter into your ear as he runs his hands over your body teasingly, his large equine fingers brushing your cock lightly, before finding your already damp cunt underneath. 'Looks like you don't really need that pathetic little man meat of yours now do you... what you need is a real stallion's meat in you isn't it?' Onyx says teasingly, as he rubs your damp passage, his touch making you whimper with desire even as you arch your body forward at his touch. 'A nice thick stallionhood like this,' he says, as he pushes your head down until his thick blunt equine cock is right in front of your face, one hand still holding your hands pinned, while his other strokes his surprisingly large changed cock teasingly. Your attention is quickly focused on his large equine member, even as the aroused musk of the dominant stallion fills your mind, your body responding almost automatically like a good little mares as your cock shrinks and your female sex burns with desire. Your eyes fixed on his hooftipped hand as it strokes over his sexy and powerful rod, which now shows no sign of the shrinking you noticed earlier, indeed it seems to have grown drastically, and is still growing to be on par with that of any of the stallions wandering the halls!";
					say "     You find yourself panting with arousal at every sexy pump of his hand up that thick meat, and if you weren't so helpless and restrained you think you wouldn't be able to keep your hands from stroking the sexy equine meat in front of you as well. Soon enough though, Onyx grunts loudly above you, and the tip of his equine member erupts, spilling his thick stallionseed all over your helpless form. You moan with increased arousal and find yourself feeling increasingly needy and surprisingly happy to be covered in the cum of a powerful equine, the feel of it sinking into your skin and changing you is absolutely amazing, and somehow being held in place by the powerful stallion while it happens just makes everything better as well. Eventually he lets you go, and when you look up at the stallion that dominated you so easily, you are somewhat surprised to see that his changes have finished completely, and a powerful black stallion stands where the weak slutboi once stood, the sight of his large proud equine form making you feel even more submissive and horny just by looking at him.";
				else:
					say "     'That's a good slut,' Onyx says teasingly as he presses you up against the wall, his body rubbing up against your own form teasingly, and you can practically feel his cock growing with arousal even as yours seems to shrink under the assault of the surprisingly dominant male. Seeming to notice your reaction, the large black equine gives you a rather amused grin, even as he pins you down even more securely and begins to stroke his increasingly equine cock with his hand. 'You won't be needing that little thing for much longer, not when you can have a big thick equine cock like mine in you now will you?' he says teasingly, his words making you moan even as your attention is drawn down to his large blunt tipped equine member, which now shows no sign of the shrinking you thought you saw earlier, indeed it seems to have grown to be almost on par with the members of many of the horsemen wandering the Stables! Noting your fascination with his thick cock, he shoves you down the wall slightly, so that the tip is almost poking you in the face as he continues to stroke his member with increasing vigor.";
					say "     You find yourself panting with arousal at every sexy pump of his hand up that thick meat, and if you weren't so helpless and restrained you think you wouldn't be able to keep your hands from stroking the sexy equine meat in front of you as well. Soon enough though, Onyx grunts loudly above you, and the tip of his equine member erupts, spilling his thick stallionseed all over your helpless form. You moan with increased arousal and find yourself feeling increasingly needy and surprisingly happy covered in the cum of a powerful equine, the feel of it sinking into your skin and changing you is absolutely amazing, and somehow being held in place by the powerful stallion while it happens just makes everything better as well. Eventually he lets you go, and when you look up at the stallion that dominated you so easily, you are somewhat surprised to see that his changes have finished completely, and a powerful black stallion stands where the weak slutboi once stood, the sight of his large proud equine form making you feel even more submissive and horny just by looking at him.";
			else:
				say "     'Good slut,' you hear Onyx mutter into your ear as he runs his hands over your body teasingly, his large equine fingers stroking your body, before venturing down to your already damp and needy pussy. 'Looks your already wet and ready for me, just like a good little mareslut should be... what your body needs is a real stallions meat in you isn't it?' Onyx says teasingly, as he rubs your damp passage, his touch making you whimper with desire even as you arch your body forward at his touch, unable to deny his statement as your body responds to your increasingly stallionlike captor. 'A nice thick stallionhood like this,' he says, as he pushes your head down until his thick blunt equine cock is right in front of your face, one hand still holding your hands pinned, while his other strokes his surprisingly large changed cock teasingly. Your attention is quickly focused on his large equine member, even as the aroused musk of the dominant stallion fills your mind, your body responding almost automatically like a good little mares as your sex burns with desire, your body aching to be split open by his thick equine rod. Your eyes fixed on his hooftipped hand as it strokes over his sexy and powerful rod, which now shows no sign of the shrinking you noticed earlier, indeed it seems to have grown drastically, and is still growing to be on par with that of any of the stallions wandering the halls!";
				say "     You find yourself panting with arousal at every sexy pump of his hand up that thick meat, and if you weren't so helpless and restrained you think you wouldn't be able to keep your hands from stroking the sexy equine meat in front of you as well. Soon enough though, Onyx grunts loudly above you, and the tip of his equine member erupts, spilling his thick stallionseed all over your helpless form. You moan with increased arousal and find yourself feeling increasingly needy and surprisingly happy to be covered in the cum of a powerful equine, the feel of it sinking into your skin and changing you is absolutely amazing, and somehow being held in place by the powerful stallion while it happens just makes everything better as well. Eventually he lets you go, and when you look up at the stallion that dominated you so easily, you are somewhat surprised to see that his changes have finished completely, and a powerful black stallion stands where the weak slutboi once stood, the sight of his large proud equine form making you feel even more submissive and horny just by looking at him.";
			if girl is not banned and ( "Male Preferred" is not listed in feats of player or guy is banned ):
				infect "Mareslut";
				infect "Mareslut";
				now Onyxmareslut is 1;
			else:
				infect "Stallionboi";
				infect "Stallionboi";
				now Onyxboislut is 1;
			now XP of Onyx is 60;
			if fancyquest > 0:
				increase score by 0; [do nothing action]
			else:
				now fancyaroused is 1;
		else:
			if cocks of player > 0:
				say "     You shake your head slightly to clear it as you push the surprised Onyx back up against the wall, the changing equine surprised and helpless to react as you take charge of the situation. Onyx moans helplessly as your hands roam his already aroused and needy body teasingly, your cock growing increasingly excited as you stroke his soft black fur, even as his cock seems to shrink and vanish as you watch. As your hands rub over his almost completely flat crotch, you can feel his skin part under your touch and a small gush of wetness soaks his panties as a new feminine slit forms, even as her chest begins to swell slightly with newly budding breasts. You can feel yourself grinning eagerly as the new mares heat filled scent fills your head, the new mare moaning with arousal as she responds to your dominant touch with increasing submissiveness, the instincts of a mare in heat obviously already taking over as his body continues to change under your sexual assault. The sight of Onyx becoming a proper mare only serves to excite you and increase your arousal amazingly, your stiff [cock of player] cock rubbing up against her soft body even as one of your hands slowly tugs her soaked thong out of the way, exposing her lovely winking maresex for the first time.";
				say "     You find yourself groaning with pleasure as you position yourself, before thrusting into the Stables newest black mare, filling her tight pussy up with your rod for the first time. She moans and throws her head back submissively, and you can see her muzzle shifting and becoming fully equine even as you pull back and thrust into her again, slowly building up a rhythm as she clutches you tightly to her body and whinnies with need. The feel of her velvety folds massaging your cock, and her now ample breasts rubbing up against your body is just too amazing, and before long you are crying out with pleasure yourself as you fill her eager body with your seed, sealing her fate as just another lusty little mareslut. Groaning as you try to recover from your orgasm, you pull yourself out of her sex, and let her slump down the wall with a happy and rather dazed look on her new fully equine muzzle, her hands roaming her new sexual body even as you gather up your equipment and prepare to head on about your business. Though the sight of her well fucked body leaning up against the wall does make you grin with amusement as you recover from your own powerful orgasm, quite glad you could show the former teenager the joys of being a proper mare like all the rest...";
			else:
				say "     You shake your head slightly to clear it as you push the surprised Onyx back up against the wall, the changing equine seemingly surprised as you take charge of the situation. He moans slightly as your hands roam his body teasingly, your touch lingering on his almost flat crotch and his slightly swelling chest even as you rub your already aroused body against the new equines increasingly sexy form. You can feel yourself grinning as the unsure equine begins to moan with arousal and respond to your dominant touch with increasing submissiveness, his instincts obviously taking over as his body begins to change under your sexual assault. He moans helplessly as he clutches you tight, the slight swellings on his chest blossoming forth into fully formed breasts under your hands, even as you can feel his already diminutive manhood shrink and vanish into his body. For some reason the feeling of Onyx becoming a mare under your touch only increases your arousal, your own pussy dampening with need as you rub your crotch against that of the Stables newest black mare. She moans and throws her head back submissively, and you can see her muzzle shifting and becoming fully equine even as you slip one of your fingers inside her newly formed pussy and begin to massage her velvety soft new mound teasingly. 'Now that's a good looking mare,' you find yourself whispering to the changing mare as her eyes drift closed and she gives herself over to the pleasure of your touch, your arousal growing even harder to contain as you rub your heat filled body up against the newly formed mares sexy black form.[line break]";
				say "     Before long you are moaning almost as hard as Onyx is, as her hands begin to wander your form as well, as she gives herself over to the submissive desires of her new body completely, and you shudder with pleasure as she cries whinnys in pleasure as her first female orgasm wracks her body. The pleasure of taming the sexy mare, and the feel of her body shuddering helplessly against yours, is too much to contain, and you gasp in orgasm as well, pleasure shooting through your body even as the new female Onyx's form slips down the wall limply, with a dazed look in her fully equine new eyes. You find yourself feeling increasingly powerful and dominant as you look down on where Onyx is panting breathlessly against the wall, even as her new hooftipped hands roam her changed body happily. Feeling strangely satisfied with your work here, you gather your wits about you as you prepare to head out to continue roaming the Stables, although you do find yourself thinking that maybe you should come back to visit your own personal pet mare again as soon as she has recovered....";
			Now XP of Onyx is 80;
			now lastfuck of onyx is turns;
			if fancyquest > 0:
				increase score by 0; [do nothing action]
			else:
				now fancyaroused is 1;
	else if XP of Onyx >= 60 and XP of Onyx <= 79:
		if ( Onyxmareslut is 2 and cunts of player > 0 ) or ( Onyxboislut is 2 and cunts of player is 0 ):
			now lastfuck of onyx is turns;
			if cunts of player > 0:	[FEMALE SUCCUMB]
				say "     'Ah! I knew my slut would return to her stallion soon enough. You just can't help but lust after my rod, now can you?' Onyx says with a smirk on his equine muzzle as he reaches out and strokes your body with his hand teasingly, making you moan almost automatically as your well-trained body responds submissively to his touch. 'Now it's time for the real fun though, isn't it slut?' he says teasingly as he rubs your already damp pussy with his powerful hands, making you moan with desire at your stallion's touch, the scent of his heady musk filling your head, and reminding you of just how good it feels to submit and let him have his way with you. Your head swimming with lust, you pant eagerly as he slowly pulls you into the room he once occupied, and pushes you down onto the bed. Your thoughts already filling with images of the handsome black stallion fucking your increasingly eager body, you spread yourself for him eagerly as he climbs up onto the bed on top of you. His hands gather yours up and pin them above your head as his thick black and pink rod rubs up against your thighs. 'What a good little slutty mare you make. You want my cock so bad don't you, little mare?' he says teasingly as he shifts his weight above you, and you find yourself moaning and nodding eagerly, your damp pussy feeling horribly empty and needy as you stare down at his amazingly sexy stallionhood.";
				say "     'Good mare. Time for you to get it in you then,' he says with a chuckle as he lowers his hands down to your hips and positions his cocktip at the entrance to your female passage. You moan and try to lower your hands to grip him to you tighter, only to find that while you were distracted, he managed to fasten the bed's restraints to your hands, keeping them locked above you. Somehow being unable to move your hands seems strangely erotic with a powerful stallion positioned right above you, your body completely at the mercy of his hands and cock as he chuckles and thrusts his wonderful rod right into you. You find yourself letting out a loud whinny of lust and need as his thick meat presses into your body, spreading you wide around him as he begins to thrust into you with increasing force, your needy passage gripping and massaging Onyx's meat with every thrust, as increasingly powerful bursts of pleasure shoot through your body. Before long you are moaning like a proper mare under the powerful stallion's attentions, begging him to fill your needy body with his seed and show you what it feels like to be a mare. Onyx needs little encouragement to do just that, and the black stallion easily fulfills his duties as a stud as he pounds into your body, before giving one last powerful thrust into you as his cock stiffens and fills your waiting womb with his seed, causing you to orgasm harder than ever before as you feel his fertile sperm floating around inside your body.";
				say "     As you lie there with your mind floating blissfully free, you can dimly sense your amazing stallion pulling out of your body, and doing something with your still spread legs, though you find it hard to care about anything like that when you feel so very amazing right now. You do look up however when you hear Onyx's hooves clopping slightly on the floor as he leaves the small room, your needy body already missing a stallion's touch. Onyx grins as he looks back and sees you watching him, and you feel your heart jump slightly as he brandishes a familiar ring of keys, right before he slides the door to the cell you are in shut. Panic chasing away some of the pleasure of your recent mating, you try to struggle and sit up, only to realize that now not only are your hands bound, but he locked some sort of cuffs on your legs as well, completely trapping you spread-eagled on the bed. 'No getting away for you this time,' Onyx chuckles with amusement as you stare at the sexy stallion in shock. 'See the stallions['] deal was, I could stay a stallion as long as I found a mare to take my place here at the Stables... and well then you came along. Don't worry though, from what I've seen so far, you will love being a proper mare, once your training is done anyways,' he says with a chuckle as he walks away from the door taking all your equipment and the keys with him, and the worst part of it is, you aren't even sure if you want to call him back and make him let you go, or call him back and have him fuck your needy body again! Either way though, it looks like you will be staying here a while...";
				wait for any key;
				now Onyxmareslut is 3;
				now humanity of player is 0;
				now body of player is "";
				now bodyname of player is "equine";
				now scalevalue of player is 3;
				now bodydesc of player is "sultry";
				now bodytype of player is "[one of]equine[or]horse-like[at random]";
				now the daycycle of player is 0;
				end the story saying "You become another mareslut at the Stables and Onyx's special plaything.";
				follow the turnpass rule;
			else:						[MALE SUCCUMB]
				say "     'Ah! I knew my slut would return to his stallion soon enough. You just can't help but lust after my rod, now can you?' Onyx says with a smirk on his equine muzzle as he reaches out and strokes your body with his hand teasingly, making you moan almost automatically as your well-trained body responds submissively to his touch. 'Now it's time for the real fun though, isn't it slut?' he says teasingly as he rubs your ass with his powerful hands, making you moan with desire at your stallion's touch, the scent of his heady musk filling your head, and reminding you of just how good it feels to submit and let him have his way with you. Your head swimming with lust, you pant eagerly as he slowly pulls you into the room he once occupied and pushes you face down onto the bed. Your thoughts already filling with images of the handsome black stallion fucking your increasingly eager body, you spread yourself for him eagerly as he climbs up onto the bed on top of you. His hands gather yours up and pin them above your head as his thick black and pink rod rubs up against your backside. 'What a good little slutty colt you make. You want my cock so bad don't you, little slut?' he says teasingly as he shifts his weight above you, and you find yourself moaning and nodding eagerly, your back passage feeling horribly empty and needy as feel his amazingly sexy stallionhood pulsing against you and soaking your lower back with his musky pre.";
				say "     'Good slut. Time for you to get it in you then,' he says with a chuckle as he lowers his hands down to your hips and positions his cocktip at the entrance to your tight passage. You moan and try to move your hands to shift into a better position, only to find that while you were distracted, he managed to fasten the bed's restraints to your hands, keeping them locked above you. Somehow being unable to move your hands seems strangely erotic with a powerful stallion positioned right above you, your body completely at the mercy of his hands and cock as he chuckles and thrusts his wonderful rod right into you. You find yourself letting out a loud whinny of lust and need as his thick meat presses into your body, spreading you wide around him as he begins to thrust into you with increasing force, your needy passage gripping and massaging Onyx's meat with every thrust, as increasingly powerful bursts of pleasure shoot through your body. Before long you are moaning like a proper manwhorse under the powerful stallion's attentions, begging him to fill your needy body with his seed and show you what it feels like to be a horsey slut. Onyx needs little encouragement to do just that, and the black stallion easily fulfills his duties as a stud as he pounds into your body, before giving one last powerful thrust into you as his cock stiffens and fills your waiting bowels with his seed, causing you to orgasm harder than ever before as you feel his fertile sperm filling you deep inside.";
				say "     As you lie there with your mind floating blissfully free, you can dimly sense your amazing stallion pulling out of your body, and doing something with your still spread legs, though you find it hard to care about anything like that when you feel so very amazing right now. You do look up however when you hear Onyx's hooves clopping slightly on the floor as he leaves the small room, your needy body already missing a stallion's touch. Onyx grins as he looks back and sees you watching him, and you feel your heart jump slightly as he brandishes a familiar ring of keys, right before he slides the door to the cell you are in shut. Panic chasing away some of the pleasure of your recent mating, you try to struggle and sit up, only to realize that now not only are your hands bound, but he locked some sort of cuffs on your legs as well, completely trapping you spread-eagled and ass up on the bed. 'No getting away for you this time,' Onyx chuckles with amusement as you stare at the sexy stallion in shock. 'See the stallions['] deal was, I could stay a stallion as long as I found a mare to take my place here at the Stables... and well then you came along. Don't worry though, from what I've seen so far, they'll be happy to have a slutty manwhorse like you just a much, once your training is done anyways,' he says with a chuckle as he walks away from the door taking all your equipment and the keys with him, and the worst part of it is, you aren't even sure if you want to call him back and make him let you go, or call him back and have him fuck your needy body again! Either way though, it looks like you will be staying here a while...";
				wait for any key;
				now Onyxboislut is 3;
				now humanity of player is 0;
				now body of player is "";
				now bodyname of player is "equine";
				now scalevalue of player is 3;
				now bodydesc of player is "feminine";
				now bodytype of player is "[one of]equine[or]horse-like[at random]";
				now the daycycle of player is 0;
				end the story saying "You become another slutty stallionboi at the Stables and Onyx's special plaything.";
				follow the turnpass rule;
		else if Onyxmareslut > 0 or onyxboislut > 0:	[For slut values of 1 and a slut value of 2 when gender doesn't match]
			now lastfuck of onyx is turns;
			if cunts of player > 0:
				say "     'I knew you would be back soon,' Onyx says with a teasing grin as the new and powerful stallion stretches his black furred form teasingly, the sight of his body and the scent of an aroused stallion making your own body respond automatically. You moan as Onyx draws closer to you, your pussy clenching with desire as your body heats up at his soft touch. You swear you can see the increasingly dominant seeming stallion grin as he presses you into one of the open rooms, his powerful body pressed against yours as he guides you over to the bed, before pushing you down on your back. You barely have time to think before the large equine male is on top of you, his form you down underneath him, even as his thick equine cock rubs up between your legs. Helpless to resist the large equine on top of you, either physically or emotionally, you surrender to the moment and the sensations of being pinned underneath the large male, while the blunt tip of his cock strokes the outside of your feminine lips teasingly. You moan in need as he continues to tease you for several minutes with his soft equine lips and hands, and teasing strokes of his equine stallionhood, even as your body burns with increasingly equine heat, your empty slit begging to be filled by the strong powerful male above you. Eventually Onyx grins and you realize you have started begging him out loud for him to fill you, you have little time to think about it however, as the large black stud grunts and buries his thick rod inside of you.";
				say "     The feeling of his warm equine rod filling you up is amazing, and you melt in the stallions arms as he continues to thrust himself into you, feeling increasingly submissive and helpless as the powerful male thrusts into your body. As you clutch Onyx close you find his presence makes you feel increasingly safe and sexy, like you were meant to be a slutty little mare for this powerful stallion, to have him hold you, fuck you, and make you his forever. You groan with pleasure as images of playing the mare for your stallion fill your head, though soon you groan for another reason, as your body explodes with pleasure as the powerful black stud above you lets out a loud whinny, and you feel his thick seed fill your body. You lie there limply as the pleasure washes through you, his cock twitching inside you and filling you up as he kisses and nibbles at your neck teasingly with his equine lips, before pulling himself off of you. Hauling yourself up, you barely manage to stagger out into the hallway after Onyx as he saunters out, the black equine giving you an amused grin as you realize your thighs are still coated in his seed, the realization making you blush, but feeling surprisingly good as well, and as Onyx gives you a knowing wink, you realize you will be back to visit your new found stud again soon enough...[impregchance]";
				if girl is not banned and ( "Male Preferred" is not listed in feats of player or guy is banned ):
					infect "Mareslut";
					if a random chance of 1 in 3 succeeds:
						increase onyxmareslut by 1;
				else:
					infect "Stallionboi";
			else if a random chance of 1 in 2 succeeds:	[MALE V1]
				say "     'Back again?  And still not even the slightest bit mare-like,' he chuckles as he feels you up between the legs. You moan in response to this, finding yourself unable and even unwilling to resist the sexy stallion. 'You certainly act like a needy mare though, don't you?  You're just a horny mare at heart, aren't you?  Well come on, mare. It's time to service your stud,' he says with a big grin, pushing you around to face the wall while he grinds his big stallionhood against your backside.";
				say "     Feeling it there, you moan in desire and push your hips back, grinding your rear right back against his maleness. He grins and lets you ride back against his cock for a while before grabbing your hips firmly and letting his cock slowly slide down into position, leaving a trail of precum as it goes that makes you tingle with lustful desire. He nuzzles at the back of your neck and nips lightly as he presses his large, flared glans against your back door. 'Mmm... that's a good slut. You were always meant to take a real stud's cock inside you, weren't you, my dear?' he says as he pushes his dribbling tip against your pucker. You nod emphatically, starting to beg him to stuff it in you, to fuck you like the slutty manwhorse you are.";
				say "     He must be pleased with your response because he thrusts hard, popping his large glans past your pucker and diving several inches of his wonderful maleness inside you. Your cock quivers with lustful need and you rock yourself back against his thrusts as soon as you recover from the entrance of that wide, flared tip. Your body responds quickly, pressing back to take more and more of the big stud's cock inside you until you feel so full and warm from it that you know he must have it all buried inside your needy ass. He continues to tell you what a good slut you are until finally he cums hard, blasting his hot load deep inside your ass and filling you with his cum.[mimpregchance]";
				if girl is not banned and ( "Male Preferred" is not listed in feats of player or guy is banned ):
					infect "Mareslut";
				else:
					infect "Stallionboi";
					if a random chance of 2 in 5 succeeds:
						increase onyxboislut by 1;
			else:								[MALE V2]
				say "     'Back again?  And still not even the slightest bit mare-like,' he chuckles as he feels you up between the legs. You moan in response to this, finding yourself unable and even unwilling to resist the sexy stallion. 'You certainly act like a needy mare though, don't you?  You're just a horny mare at heart, aren't you?  Well come on, mare. It's time to service your stud,' he says with a big grin, pushing you down onto your knees and holding his long, equine cock in front of your face.";
				say "     You moan in desire at the sight of it and lean forward, giving it a few slow licks at first. You slide your tongue across its flared glans, pleased to hear him nicker in response. You lavish attention upon his maleness for some time with your tongue, tasting its whole length before finally opening your mouth so you can take it in and suck it eagerly. He runs a hand over your [facename of player] and thrusts gently into your mouth. 'Mmm... that's a good slut. You were always meant to please a real stud, weren't you, my dear?' he says as he pushes his lengthy cock forward, forcing you to deep-throat him impressive meat. You eager do your best, playing with his nuts and sucking lustfully until finally your stallion blows his load, pumping his thick seed down your throat.";
				if girl is not banned and ( "Male Preferred" is not listed in feats of player or guy is banned ):
					infect "Mareslut";
				else:
					infect "Stallionboi";
					if a random chance of 1 in 4 succeeds:
						increase onyxboislut by 1;
	else if XP of Onyx >= 80 and XP of Onyx <= 99:
		now lastfuck of onyx is turns;
		if cocks of player > 0:
			say "     Onyx smiles happily and whinnies in greeting as you approach, seemingly unable to speak as she stares with desire at your erect [cock of player] rod. Her obvious need making you grin as she runs her hands over her sleek black mare's body, already anticipating the fun to come as she leans back against the wall with her legs widely spread for you. Her submissive actions make you feel increasingly powerful and dominant as you pin her to the wall, your stiff cock already probing at her damp passage even as she moans happily underneath you. You waste no time in burying yourself inside her new pussy, enjoying every submissive squeak and whinny of pleasure as you pound into her amazingly soft and sensual pussy. Soon you are gripping the little mareslut's hips tightly as she wraps her legs around you, her soft thighs pressing up against your body as you continue to fuck her needy body properly.";
			say "     It isn't long though before her amazing passage has you crying out with pleasure as your body stiffens and you shoot your load into her waiting womb. Your new mare squeals with happiness as she shudders with orgasm as well as she receives your seed. Her needy pussy milks your cock of every last drop of cum as you hold her tight. Eventually though, you are both spent and unable to cum any more, and you reluctantly let your fun new plaything slump to the ground against the wall again, while you gather your stuff up and try to recover from your exertions. Glancing back at the happy and slutty little mare though, you make a note to come back here again once you have recovered, to give your newest mare another lovely taste of the meat she seems to like so much...";
			if guy is not banned and ( "Female Preferred" is not listed in feats of player or girl is banned ):
				infect "Horseman";
			else:
				infect "Mareslut";
		else:
			say "Onyx squeals happily, seemingly unable to speak with excitement as you stroke your hands over her new sensitive black body, and you can smell her intense arousal as she rubs her new form up against you teasingly. Her submissive actions making you feel increasingly dominant as well as horny, and you can feel yourself smirking with amusement as you decide to put the slutty mares new equine muzzle to good use. She seems mildly surprised at first as you push her down to her knees in front of you, only to grin happily as she scents your female arousal, eagerly burying her equine muzzle in your crotch like a good little sexpet. You moan with pleasure at the feel of her velvety equine muzzle nuzzling at your damp feminine sex, her soft lips rubbing over your lips teasingly, as you bury your hands in her soft short mane.";
			say "     Onyx doesn't tease you with her soft touches for long though, being just as eager to please her new mistress as you are to play with this new sexy pet you made. You gasp happily as her flexible equine tongue probes your damp folds, her teasing licks are tentative at first, but soon she is lapping at your sex eagerly, the pleasure growing and building with every amazing pass of that soft equine tongue. Before you know it you are rewarding the slutty mare with a gush of your juices as you cry out in orgasm, coating her muzzle and making her moan happily underneath you as she does her best to lick every drop of your wonderful flavor up. Eventually you gather your wits about you and step back slightly, though Onyx stays there on her hands and knees looking up at you with a happy expression on her muzzle as she smiles at you. You find yourself grinning slightly at the erotic sight as you gather your equipment up, before preparing to continue your journey, leaving the slutty new mare there on her knees behind you like a good little pet...";
			if guy is not banned and ( "Female Preferred" is not listed in feats of player or girl is banned ):
				infect "Horseman";
			else:
				infect "Mareslut";


to say onyxbunkersex:
	if XP of Onyx is 7:
		say "     You approach Onyx as he paces around the library, expression tinged with slight discontent after his departure from the Stables. You make an offer for sex, to which he seems reluctant.";
		say "     'Er, well... I don't know. After all that, I'm not sure if I should. After what happened to Diana... I don't know if I want to end up like that, you know?'";
		say "     Given his current position, you're fairly certain you can offer him oral sex as a means to ease him into the prospect. Should you?";
		if the player consents:
			say "[onyxboral0]";
			now lastfuck of Onyx is turns;
		else:
			say "     You decide that now isn't the best time for this, nodding to him and letting him return to his own troubles.";
	else if XP of onyx is 8:
		if the player is dominant:
			say "     Seeing how Onyx has started to become more accepting of sex and his equine form, you think it might be good to coax him into taking a more submissive role with you. Shall you [link]take charge (y)[as]y[end link] and steer him in that direction or let things with the stallion unfold with him being [link]more dominant (n)[as]n[end link]?";
			if the player consents:
				say "[onyxbsuboral0]";
			else:
				say "[onyxboral1]";
		else:
			say "[onyxboral1]";
		now lastfuck of Onyx is turns;
	else if XP of onyx >= 10 and XP of Onyx <= 19:
		let recanal_skip be 0;
		let analchance be 5;
		let recanalchance be 5;
		if anallevel is 3:
			increase analchance by 2;
			increase recanalchance by 2;
		if "Submissive" is listed in feats of player, increase analchance by 1;
		if "MPreg" is listed in feats of player, increase analchance by 2;
		if anallevel is 1:
			now analchance is 0;
			now recanalchance is 0;
		if onyxdmra is -1, now recanalchance is 0; [will not ask if refused on first offer]
		if cocks of player > 0 and player is dominant and ( onyxdma > 0 or onyxdmc > 0 ) and a random chance of recanalchance in 25 succeeds:
			if onyxdmra is 0:		[First time making the offer]
				say "     Onyx runs his strong hands over your body, holding you close. 'Mmm... You've been such a good slut for me. Now, I know you usually prefer being the one in charge, and your big stud appreciates you giving that up for him. So I've going to let you take a turn on top,' he says, running his strong hand along your throbbing member. 'I received quite a bit of training at the Stables and I thought it might be nice to put it to practical use. You've helped me out so much, I think you deserve a big reward,' he says, stretching out across a table. Laying on his side, he reaches back and holds his ass cheeks apart, giving you a tantalizing view of his ebon pucker - ready, waiting and even pre-lubed.";
				say "     Shall you take him up on his offer and take a turn fucking the stallion stud?";
				if the player consents:
					now recanal_skip is 1;
					say "[onyxbrecanal]";
				else:						[did not accept reciprocal anal]
					now onyxdmra is -1; [reciprocal anal now locked out]
					say "     The big stallion seems a little disappointed when you don't take him up on his offer and slowly gets up off the table. 'If that's how you'd like it, who am I to complain?' he says. 'I'm the big, sexy stud after all.'  You tell him that you'd much rather let the strong stallion have his way with you. He smiles at this and strides forward with confidence, eager to have fun with his slutty friend.";
			else:				[Subsequent offers]
				now recanal_skip is 1;
				say "[onyxbrecanal]";
		if recanal_skip is 1:
			increase score by 0; [do nothing - skip regular scene]
		else if cocks of player > 0 and cunts of player > 0:	[HERM]
			if anallevel is 3 and a random chance of analchance in 25 succeeds:
				say "[onyxbanal]";
			else if a random chance of 2 in 3 succeeds:
				say "[onyxbvag]";
			else:
				say "[onyxboral2]";
		else if cocks of player > 0:							[MALE]
			if a random chance of analchance in 15 succeeds:
				say "[onyxbanal]";
			else:
				say "[onyxboral2]";
		else if cunts of player > 0:							[FEMALE]
			if anallevel is 3 and a random chance of analchance in 32 succeeds:
				say "[onyxbanal]";
			else if a random chance of 2 in 3 succeeds:
				say "[onyxbvag]";
			else:
				say "[onyxboral2]";
		now lastfuck of Onyx is turns;
	else if XP of onyx is 20:
		if cocks of player > 0:
			say "[onyxbsubanal0]";
		else:
			say "[onyxbsubvag0]";
	else if XP of Onyx >= 21 and XP of Onyx <= 29:
		say "[onyxbsubtable]";

to say onyxbsubtable:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	if cocks of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Fuck him";
		now sortorder entry is 1;
		now description entry is "bend him over a table and fuck the stallion";
		choose a blank row in table of fucking options;
		now title entry is "Receive fellatio";
		now sortorder entry is 7;
		now description entry is "have him suck you off";
	if cunts of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Vaginal sex";
		now sortorder entry is 3;
		now description entry is "treat yourself to a horsey ride";
		choose a blank row in table of fucking options;
		now title entry is "Receive cunnilingus";
		now sortorder entry is 8;
		now description entry is "treat yourself to a horsey ride";
	if ( ( cunts of player > 0 and onyxsmrv is true ) or ( cunts of player is 0 and onyxsmra is true ) ) and onyxsmro is true:
		choose a blank row in table of fucking options;
		now title entry is "Onyx takes charge";
		now sortorder entry is 6;
		now description entry is "reward Onyx by letting him do as he pleases";
	choose a blank row in table of fucking options;
	now title entry is "Anal ride";
	now sortorder entry is 5;
	now description entry is "ride the horsey with your ass";
	choose a blank row in table of fucking options;
	now title entry is "Give fellatio";
	now sortorder entry is 9;
	now description entry is "suck that horsey cock";
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry][line break]";
			say "Is this what you want?";
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if nam is "Fuck him":
					say "[onyxbsubanal1]";
				else if nam is "Vaginal sex":
					say "[onyxbsubvag1]";
				else if nam is "Anal ride":
					say "[onyxbsubanalride1]";
				else if nam is "Receive fellatio":
					say "[onyxbsubmoral1]";
				else if nam is "Receive cunnilingus":
					say "[onyxbsubforal1]";
				else if nam is "Give fellatio":
					say "[onyxbsubcocksuck1]";
				else if nam is "Onyx takes charge":
					say "[onyxbsubincharge1]";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	now lastfuck of Alexandra is turns;
	wait for any key;
	clear the screen and hyperlink list;


Section 4 - Rescued Sex Pool

Part 1 - Male Onyx @ Library

to say onyxboral0:
	say "     You quickly advance upon him, already [if scalevalue of player > 3]doubled over[else]on the move[end if] to relinquish his member of its paltry confines.";
	say "     'W-what are you doing? I d-don't think...--' He's interrupted as you quickly pin him against a nearby bookshelf, tongue already alight with wanton fervor as it caresses the length of his soft equine cock. Much in spite his protests, his pent-up lust betrays him, almost immediately growing hard from your affection.";
	say "     [if scalevalue of player < 3]Small as you are, you have a fairly easy vantage point on his cock, though it requires a fair measure of effort to engulf its thick head into your maw, hand moving to fondle[else if scalevalue of player > 3]Your submissive gesture strangely juxtaposed by your clearly larger form, your maw almost immediately engulfs the entire length of his dick, thick tongue escaping your lips to taste[else]Slowly, you move to engulf his cockhead into your maw, it's thickness a particular challenge to overcome as you move a free hand to grope[end if] his achingly full sack. Deep moans elicited from his excited lips, he grows you accept your offer, hands holding you by your irreverent head as he driven by his desire to have you continue.";
	say "     [if scalevalue of player < 4]You eventually manage to get his rod somewhat far down your throat, and it doesn't look it has any plans to come back out if its increasingly flared cockhead has anything to say about it[else]He grips you tightly, the intense sensation of his cock wholly engulfed within your expansive hole driving him wild, feeling his cockhead flare with imminent release[end if]. With a beleaguered whinny, you quickly feel his thick cum flooding your gullet, [if scalevalue of player < 3]and by the second or third successive spurt your stuffed mouth is forced to spray out around your lips until his sexual fluids are dripping down your chin[else if scalevalue of player > 3]and with each successive spurt you swallow down his sizable load with a lascivious fervency, until not a drop of his sexual fluids remains[else]and you find yourself ill-equipped to contend with his expansive load, especially after only being able to engulf about half of his organ, as his sexual fluids soon oozes free of your strained mouth.[end if]";
	say "     Eventually, you [if scalevalue of player < 4]slowly struggle to free yourself of his cock, tongue making a token effort to clean his cock until he allays your need to satisfy him[else]gradually relinquish his cock from your hold, tongue cleaning his cock until you're satisfied with your job[end if]. Still panting, it takes him a moment to recover, but he soon slowly gets up off from the bookshelf and puts his attire back on.";
	say "     'Ah, thank you...' You're about to move on and do your own thing before he stops you. 'Wait... I really do mean it, I feel a lot better now.' You nod to him, expression tinged with a slight smile, before departing proper; he does seem to be in a brighter mood than when you started talking to him.";
	increase libido of player by 10;
	if libido of player > 100, now libido of player is 100;
	now XP of onyx is 8;

to say onyxboral1:
	say "     Advancing upon him, you're already [if scalevalue of player > 3]doubled over[else]on the move[end if] to relinquish his member of its scant confines.";
	say "     'Oh, you want to play this game again, eh?' He backs up against a nearby table to get comfortable as you make your move, already half-hard cock springing free of his thong with little effort, enticing your tongue to caress the along length of the equine organ. Soft moans in approval to your endeavours, you find little difficulty in driving him properly hard.";
	say "     [if scalevalue of player < 3]Small as you are, you have a fairly easy vantage point on his cock, and though you've somewhat acclimated to his size it seems to continue giving you trouble, has it gotten bigger? Regardless, you move a free hand to fondle[else if scalevalue of player > 3]Your submissive gesture strangely juxtaposed by your clearly larger form, your maw almost immediately engulfs the entire length of his dick, thick tongue escaping your lips to taste[else]Slowly, you move to engulf his cockhead into your maw. It would seem you've marginally acclimated to his particular thickness, though it feels like his cock has also become larger in the meanwhile. Regardless, you move a free hand to grope[end if] his heavy ballsac. Softly moaning, his hold on you already apparent as he tries to push his cock deeper into you. It would appear he's growing more comfortable with the concept of using you for his gratification.";
	say "     [if scalevalue of player < 4]You eventually manage to push most of his rod down your throat, and it doesn't look it has any plans to come back out if its increasingly flared cockhead has anything to say about it[else]He grips you tightly, the intense sensation of his cock wholly engulfed within your expansive hole driving him wild, and you feel his cockhead flare with imminent release[end if]. In due time you feel his whole form go ridged, soon followed by a thick flood of his cum, [if scalevalue of player < 4]and though you're a bit more equipped to handle him by the fifth spurt or so it has nowhere to go except all over his crotch and the floor[else if scalevalue of player > 3]and with each successive spurt you swallow down his sizable load with a lascivious fervor, until not a drop of his sexual fluids remains[end if].";
	say "     Eventually, you [if scalevalue of player < 4]slowly pry his cock free from you, tongue endeavouring to clean his cock until he looks satisfied[else]gradually relinquish his cock from your hold, tongue cleaning his cock, leaving only a thin veneer of saliva in its wake[end if]. He seems to recover more quickly, pulling his thong back on, though it's a bit of a struggle to contend with his still somewhat hard cock, and concedes to just leaving it hang out.";
	say "     'Thank you, I feel a lot better right now!' Grinning at you, his form seems to have shifted more into a dominant male. As you turn around to depart, your behind is given a firm slap, further inferring his progressive change.";
	increase libido of player by 10;
	if a random chance of 1 in 3 succeeds or the player is dominant:
		if libido of player > 100, now libido of player is 100;
		now XP of Onyx is 10;

to say onyxboral2:
	say "     As you advance upon him, he moves to grab a seat before he lets you [if scalevalue of player > 3]move down[else]get to work[end if] on his already-exposed member, now too large to possibly fit in such paltry attire.";
	say "     'Heh, my [if scalevalue of player > 3]big sexy[else]sexy little[end if] slut wants his favourite slice of meat, yes?' He leans back against the chair, giving you easy access to his impressive equine organ, enticing your tongue to caress along its length. Deep rumbling in approval, you've become quite adept and driving him hard.";
	say "     [if scalevalue of player < 3]Small as you might be, you prove size to be quite deceptive as by now you can manage his comparatively massive cock with relative ease, engulfing the thick tool deep within your abyss of a mouth. As you continue, you free a hand hand dive under his taut thong to feel[else if scalevalue of player > 4]The stallion seems particularly fond of his comparatively larger consort, perhaps because your scale is so well-suited in handling his sizable cock, easily engulfing his dick within your abyssal maw. As you hilt him, your thick tongue escapes your lips to invade his thong, soaking it in saliva as you taste[else if scalevalue of player > 3]The stallion seems particularly fond of his slightly larger consort, perhaps because your scale is well-suited in handling his sizable cock, though you prior ease is slightly challenged now that he's grown to his proper size once it's fully engulfed within your maw. As you hilt him, your thick tongue escapes your lips to invade his thong, soaking it in saliva as you taste[else]Slowly, you move to engulf his cockhead into your maw. Much in spite its impressive thickness, you've grown fairly adept at engulfing it within your beleaguered orifice, and with a little effort you manage to disappear the entire thing inside your seemingly bottomless hole. As you continue, you free a hand hand dive under his taut thong to feel[end if] his hefty ballsac. Softly nickering, he's grown quite attached to using you as his own personal toy, hands freely caressing along your neck and[if scalevalue of player < 5]back[else]head[end if].";
	say "     [if scalevalue of player < 4]Dizzied by a deprivation of air, your effort's reward seems imminent as you feel his cockhead flaring blatantly within you[else]He grips you tightly, the intense sensation of his cock wholly engulfed within your expansive hole pushing him close to the edge, and you soon feel his cockhead flare with imminent release[end if]. As Onyx lets out one final gasp, your gullet is flooded by a torrent of his virile cum, [if scalevalue of player < 4]and you only struggle briefly to contend with his load, managing to avoid any serious mess[else if scalevalue of player > 3]and though his load is very impressive you show little difficulty in downing each successive spurt[end if].";
	say "     Eventually, you [if scalevalue of player < 4]slowly pry his cock free from you, the stallion preventing you from leaving until you've sufficiently cleaned him[else]gradually relinquish his cock from your hold, tongue cleaning his cock, leaving only a thin veneer of saliva in its wake[end if]. Getting back up, he [if scalevalue of player > 3]takes a moment to clean his thong of your saliva[else]quickly re-adjusts his thong[end if], leaving his large and still-dripping cock to hang free in the open air.";
	say "     'That's a good [if scalevalue of player < 4]little[end if] pet, off you go!' He chuckles, giving your rear a playful smack as he lets you off.";
	increase libido of player by 20;
	if libido of player > 100, now libido of player is 100;


to say onyxbanal:
	if onyxdma is 0:
		say "     As you offer yourself to him he seems to stop you for a moment, reflecting briefly.";
		say "     'No... I think I'd rather have fun with my [if scalevalue of player < 4]little[else]big ol['][end if] toy another way.' He grins, pulling you to a comfortable spot in the library before undressing you and having you lay down on your side. He [if scalevalue of player > 3]walks[else]gets down on his knees and shifts[end if] over to your behind, grinning even more deviously as he grinds his hardening and soon pre-oozing organ against your [bodytype of player] thigh.";
		if scalevalue of player < 4:
			say "     You're not rightly sure how he intends to fit something that big back there, but your uncertainty only fuels his wicked plans further, and you soon feel his blunted tip press teasingly against your exposed pucker. You're given a small mercy as he makes a slow effort of sinking his cock into your hole, quickly strained as you're considerably stretched to accommodate his expansive girth.";
			say "     [if cocks of player > 1]Your own [cock size desc of player] cocks driven hard[else if cocks of player > 0]Your own [cock size desc of player] cock driven hard[else if cunts of player > 0]Blatantly aroused[else]Writhing weakly[end if] as his flesh floods your bowels, he appears singularly intent on sating his fiery lust, even as you [if scalevalue of player < 2]begin to see the outline of dick bulge out from your belly[else]strain to remain clear-minded under such a considerable sensation[end if]. Regardless, you're quickly forced to acclimate to his thick intrusion before he begins to fuck you in earnest.";
			If libido of player > 49:
				If cocks of player > 0:
					say "     Prostate so thoroughly ravaged by his assault, strained gouts of hot cum spurt from your cock[if cocks of player > 1]s[end if] in a staggered [if cock width of player > 12]and quite messy[end if] orgasm, forcing Onyx to taunt you.";
					say "     'Aw, my little fucktoy is so sensitive, how adorable!' You can only help but blush in a mix of pleasure and embarrassment as you sully yourself with [if cock width of player > 12]numerous[end if] strings of your sexual fluids a mess across your [bodydesc of player] torso.";
				else if cunts of player > 0:
					say "     So thoroughly ravaged by his assault, you are overwhelmed with waves of ecstasy as you're wracked with the sensation of your orgasm, your writhes in pleasure becoming more deliberate as your neglected [if cunts of player > 1]pussies drip[else]pussy drips[end if] with sexual frustration. You try to fondle yourself, but Onyx pulls your arms away.";
					say "     'Aw, my little fucktoy is so sensitive, how adorable!' He nips at you playfully, no doubt amused by your apparent torment.";
				say "     Your strained behind eventually finds reprieve as the equine is struck with bliss, first made apparent by the feel of his virile seed flooding the depths of your bowels, [if scalevalue of player < 3]belly bloating almost immediately to accommodate the sizable load, and even then still ill-suited to contain any more, forcing each subsequent throb of his thick cock to spill more of his fluids across the floor[else]body bloating slightly to maintain such a virile load, further exacerbating the strain on your beleaguered form until you feel his flow decline[end if]. For a while he's relegated to resting his sweat-slicked form against your own, panting for air as you feel his dick slowly deflate inside you. He eventually pulls himself free of you, a [if scalevalue of player < 3]flood[else]trail[end if] of his sexual fluids following in its wake.";
				decrease libido of player by 25;
				if libido of player < 0, now libido of player is 0;
			else:
				say "     Your behind is strained under his seemingly endless assault until the equine is finally struck with bliss, first made apparent by the feel of his virile seed flooding the depths of your bowels, [if scalevalue of player < 3]belly bloating almost immediately to accommodate the sizable load, and even then still ill-suited to contain any more, forcing each subsequent throb of his thick cock to spill more of his fluids across the floor[else]body bloating slightly to maintain such a virile load, further exacerbating the strain on your beleaguered form until you feel his flow decline[end if]. For a while he's relegated to resting his sweat-slicked form against your own, panting for air as you feel his dick slowly deflate inside you. He eventually pulls himself free of you, a [if scalevalue of player < 3]flood[else]trail[end if] of his sexual fluids following in its wake.";
				increase libido of player by 20;
			say "     'You're quite the tight fit, love! Er... You might want to clean yourself off, though.' He gives you a reassuring tap on the shoulder before he helps you to your feet. It ends up taking you some time to clean up the mess, and even longer to walk normally again.[mimpregchance]";
		else:
			say "     Clearly interested in having his way with you, you're fairly certain you're large enough to handle his impressive rod, though there's no doubt he seems sure of this as well which means he'll give you no mercy, a sentiment he makes transparent when you feel the blunted tip of his cock thrust firmly into your exposed pucker.";
			say "     His wanton assault [if cocks of player > 1]quickly driving your own, [cock size desc of player] cocks erect[else if cocks of player > 0]quickly driving your own, [cock size desc of player] cock erect[else if cunts of player > 0]rapidly driving you wet with arousal[else]compelling you to watch as he goes on[end if], his impressive cock certainly enough to inflict pangs of impish pleasure across your [if scalevalue of player > 4]massive[else]large[end if] frame, and once he's satisfied with the leeway of your anal ring he begins fuck you in earnest.";
			If libido of player > 69:
				say "     You find yourself more influenced by the smaller individual than you'd want to admit, though you're soon betrayed by your own lust when you cry out, ";
				if cocks of player > 0:
					say "[if cocks of player > 1]cocks exploding with their[else if cocks of player > 0]cock exploding with its[end if] [if cock width of player > 24]massive[end if] load over your naked, [bodydesc of player] torso, much to Onyx's amusement.";
					say "     [one of]'Aw, you're just one big softy, aren't you?'[or]'Ha, looks like you're not big enough to resist me!'[at random] His taunts stinging you with lust-twisted embarrassment as he continues to ride you.";
				else:
					say "writhing visibly in blissful release. You move to offer up your neglected [if cunts of player > 1]pussies[else if cunts of player > 0]pussy[end if] your own affection when you're forced to contend with Onyx's refusal to let you do so.";
					say "     '[one of]Aw, you're just one big softy, aren't you?[or]Ha, looks like you're not big enough to resist me![at random]' His taunts stinging you with lust-twisted embarrassment as he continues to ride you.";
				say "     He, soon, is hit with his own bliss, a flood of the equine's virile seed filling your hungry bowels. He doesn't relent until he is fully drained within the confines of your ever-so-accommodating hole, inevitably collapsing against you, sweat slicked form panting as he slowly gathers his breath. In due time, he pulls his softened cock free of you, wiping himself clean against your ample behind.";
				say "     'Such a big, naughty slut, making all this mess!' He gestures to the [if cock width of player > 24]considerable[end if] mess of your own sexual fluids before leaving you to handle the matter yourself. A little embarrassed, you tidy up before going about your business.[mimpregchance]";
				decrease libido of player by 25;
			else:
				say "     You're eventually offered the equine's virile seed as he too finds bliss, your bowels more than happy to accept as it floods their depths. He doesn't let up until he is fully drained within the confines of your ever-so-accommodating hole, inevitably collapsing against you, sweat slicked form panting as he slowly gathers his breath. In due time, he pulls his softened cock free of you, wiping himself clean against your ample behind.";
				say "     'Geez, you're like a black hole. I don't even phase you, do I?' He remarks incredulously as you straighten yourself out before he lets you off. Admittedly, you're fair bit more aroused from being used like that.[mimpregchance]";
				increase libido of player by 20;
		now onyxdma is 1;
	else if onyxdma is 1:
		say "     You're about to offer yourself to him but he's already on you, pulling you aside and having you undress.";
		say "     'Oh, I'm going to have fun filling my [if scalevalue of player < 4]little[else]big ol'[end if] cum dumpster.'  He grins, laying yourself down on your side. He [if scalevalue of player > 3]walks[else]gets down on his knees and shifts[end if] over to your behind, grinning even more deviously as he grinds his hardening and soon pre-oozing organ against your [bodytype of player] thigh.";
		if scalevalue of player < 4:
			say "     Bracing yourself, you prepare for the inevitable assault he has planned for you, and you soon feel his blunted tip press teasingly against your exposed pucker. By now you're sufficiently acclimated to him, and you're able to accommodate his expansive girth with minimal discomfort, though this only compels him to be more reckless in forcing it down your hole.";
			say "[if cocks of player > 1]Your own, [cock size desc of player] cocks driven hard[else if cocks of player > 0]Your own [cock size desc of player] cock driven hard[else if cunts of player > 0]Blatantly aroused[else]Shifting to best suit him[end if] as his flesh floods your bowels, he appears singularly intent on sating his fiery lust, even as you [if scalevalue of player < 2]begin to see his dick protrude out from your belly[else]struggle to abide his expansive girth[end if]. It takes a little effort, but he finds immense pleasure in hilting his thick intrusion inside you.";
			If libido of player > 49:
				If cocks of player > 0:
					say "     Prostate so thoroughly ravaged by his assault, strained gouts of hot cum spurt from your cock[if cocks of player > 1]s[end if] in a staggered [if cock width of player > 12]and quite messy[end if] orgasm, forcing Onyx to taunt you.";
					say "     'Aw, my little fucktoy is so sensitive, how adorable!'  You can only help but blush in a mix of pleasure and embarrassment as you sully yourself with [if cock width of player > 12]numerous[end if] strings of your sexual fluids a mess across your [bodydesc of player] torso.";
				else:
					say "     So thoroughly ravaged by his assault, you are overwhelmed with waves of ecstasy as you're wracked with the sensation of your orgasm, your writhes in pleasure becoming more deliberate as your neglected [if cunts of player > 1]pussies drip[else]pussy drips[end if] with sexual frustration. You try to fondle yourself, but Onyx pulls your arms away.";
					say "     'Aw, my little fucktoy is so sensitive, how adorable!' He nips at you playfully, no doubt amused by your apparent torment.";
				say "     Your reward soon follows as the equine is also struck with bliss, made apparent you feel his virile seed begin flooding the depths of your bowels, [if scalevalue of player < 3]belly bloating almost immediately to accommodate the sizable load, though now your body's a bit better equipped to handle him, minimizing the subsequent mess of the escaping fluids[else]body bloating slightly to maintain such a virile load, though you've grown to handle the strain of his almost excessive fluids[end if]. Sweat slicked form resting briefly against you whilst he waits for his dick to soften a bit, he eventually pull himself free, leaving a trail of cum in its wake.";
				decrease libido of player by 25;
			else:
				say "     Your behind is strained under his seemingly endless assault until the equine is finally struck with bliss, first made apparent by the feel of his virile seed flooding the depths of your bowels, [if scalevalue of player < 3]belly bloating almost immediately to accommodate the sizable load, though now your body's a bit better equipped to handle it, minimizing the subsequent mess of the escaping fluids[else]body bloating slightly to maintain such a virile load, though you've grown to handle the strain of his almost excessive fluids[end if]. Sweat slicked form resting briefly against you whilst he waits for his dick to soften a bit, he eventually pull himself free, leaving a trail of cum in its wake.";
			say "     'You're quite the tight fit, love! Er... You might want to clean yourself off, though.' He helps you to your feet, offering a reasonably clean towel he scrounged up and leaving you to clean up after yourself.[mimpregchance]";
		else:
			say "     Bracing yourself, there's no doubt that your accommodating size will be his excuse to use you recklessly, and regardless of your [if scalevalue of player > 4]massive[else]larger[end if] scale he's certainly adept at making an entrance when you feel the blunted tip of his impressive cock thrust firmly into your exposed pucker. His wanton assault [if cocks of player > 1]quickly driving your own, [cock size desc of player] cocks erect[else if cocks of player > 0]quickly driving your own, [cock size desc of player] cock erect[else if cunts of player > 0]rapidly driving you wet with arousal[else]compelling you to watch as he goes on[end if], you derive a delightful pleasure in the occupancy of his flesh, and once he's satisfied with the leeway of your anal ring he begins fuck you in earnest.";
			If libido of player > 69:
				say "     Driven by your overwhelming lust, you're soon forced to cry out, ";
				if cocks of player > 0:
					say "[if cocks of player > 1]cocks exploding with their[else if cocks of player > 0]cock exploding with its[end if] [if cock width of player > 24]massive[end if] load over your naked, [bodydesc of player] torso, much to Onyx's amusement.";
					say "     '[one of]Aw, you're just one big softy, aren't you?[or]Ha, looks like you're not big enough to resist me![at random]' His taunts stinging you with lust-twisted shame as he continues to ride you.";
				else if cunts of player > 0:
					say "writhing visibly in blissful release. You move to offer up your neglected [if cunts of player > 1]pussies[else if cunts of player > 0]pussy[end if] your own affection when you're forced to contend with Onyx's refusal to let you do so.";
					say "     '[one of]Aw, you're just one big softy, aren't you?[or]Ha, looks like you're not big enough to resist me![at random]' His taunts stinging you with lust-twisted shame as he continues to ride you.";
				say "     He, soon, is hit with his own bliss, a flood of the equine's virile seed filling your hungry bowels. He doesn't relent until he is fully drained within the confines of your ever-so-accommodating hole, inevitably collapsing against you, sweat-slicked form panting as he slowly gathers his breath. In due time, he pulls his softened cock free of you, wiping himself clean against your ample behind.";
				say "     'Such a big, naughty slut, making all this mess!' He gestures to the [if cock width of player > 24]considerable[end if] mess of your own sexual fluids before leaving you to handle the matter yourself. A little embarrassed, you tidy up before going about your business.[mimpregchance]";
			else:
				say "     You're eventually offered the equine's virile seed as he too finds bliss, your bowels more than happy to accept as it floods their depths. He doesn't let up until he is fully drained within the confines of your ever-so-accommodating hole, inevitably collapsing against you, sweat slicked form panting as he slowly gathers his breath. In due time, he pulls his softened cock free of you, wiping himself clean against your ample behind.";
				say "     'Geez, you're like a black hole. I don't even phase you, do I?' He remarks incredulously as you straighten yourself out before he lets you off. Admittedly, you're fair bit more aroused from being used like that.[mimpregchance]";
				increase libido of player by 25;
	if libido of player > 100, now libido of player is 100;
	if libido of player < 0, now libido of player is 0;


to say onyxbvag:
	if onyxdmc is 0:
		If scalevalue of player < 4:
			say "     'Hm... I think it's only fair that I treat you proper, this time.'  Onyx regards your offer in such a manner, moving to grab a seat as you disrobe for him. Abruptly, he [if scalevalue of player < 3]picks you up and places you on[else]pulls you onto[end if] his lap, forcing your behind to straddle his already-hardening cock.";
			say "     Your affections are relatively brief before the equine is satisfied, pulling you up and repositioning his organ before your relegated to lowering yourself onto it";
			if cunt width of player < 4:
				say ". Immediately, his large dick is forced to contend with [if cunts of player > 1]one of your ill-fitting cunts[else]your ill-fitting cunt[end if], strained grunts elicited between his gritted teeth as he slowly wedges it between the folds of your diminutive flesh, much to your considerable discomfort";
			else if cunt width of player < 7:
				say ". It requires a fair bit of effort for him to embed the blunt head of his dick, brief struggles and a bit of straining on your part is necessary before the folds of your flesh envelop it";
			else:
				say ". Soft groans elicited from him, he seems to take a particular joy in the ease at which he can penetrate [if cunts of player > 1] one of your [cunt size desc of player] holes[else]your [cunt size desc of player] hole[end if], folds of your flesh parting to make way for his thick dick";
			If cunt length of player < 7:
				say ". He makes some effort in engulfing the length of rod within you before he's abruptly stopped. No more than a third of the way into you and you're already filled. It would appear you can contain no more of his sizable malehood. Tinged by slight frustration, you're briefly forced to endure him trying to thrust himself deeper into you before he concedes to making the most of the little inside you.";
			else if cunt length of player < 11:
				say ". He makes some effort in engulfing the length of rod within you before he's abruptly stopped. No more than half-sheathed within you, it would appear you can contain no more of his sizable malehood. Tinged by slight frustration, you're briefly forced to contend with him trying to thrust himself deeper into you before he concedes to making the most of what he's got.";
			else if cunt length of player < 20:
				say ". Slowly sinking his rod deeper into you, he can only go so far before you can contain no more of him[if scalevalue of player < 2], an outline of his malehood visible through your belly[end if].";
			else:
				say ". He's pleasantly surprised that you can abide the length of his rod so easily, sheathing it entirely within the depths of your bottomless hole[if scalevalue of player < 3], though--doubtlessly a product of your diminutive size--his large malehood visibly bulges from your stuffed belly[end if].";
			say "     Soon fucking you in earnest, his strength is clearly illustrated as you bounce against his cock with a wickedly perverse fervor. Driven to sate his own lust, he [if cocks of player > 1]moves a hand to pump one of your hardened cocks, tormenting you with a mix of dual pleasure[else if cocks of player > 0]moves a hand to pump your hardened cock, tormenting you with a mix of dual pleasure[else if breasts of player > 0 and breast size of player > 1]moves his equine lips to suckle one of your exposed breasts, tormenting you with additional pleasure across your form[else]grips your thighs firmly, gently nipping your shoulder in pangs of additional pleasure, tormenting your already sensation-assailed form[end if]. His influence is enough that you soon cry out in blissful orgasm, [if cocks of player > 2]aiming two of your cocks away from him as they release their load, though this is insufficient in saving him from being doused by the remainder[else if cocks of player > 1]aiming your two cocks away from him as it release their load, sparing him from their mess [else if cocks of player > 0]aiming your cock away from him as it releases its load, sparing him from its mess[else]your cunt tightening around his flesh in a transparent hunger for his imminent load[end if].";
			say "[if cunt width of player < 4]Beleaguered hole already forced to contend with the flared head of his equine dick[else]The flared head of his equine dick a clear indication of what is to come[end if], [if scalevalue of player < 3]you begin to bloat almost immediately with the sudden flood of his sexual fluids into your womb, until the remnant of his load is forced to spurt free of your hole[else]you're suddenly assailed by a flood of his sexual fluids, each successive wave stuffing your hole further[end if]. It's not long before his lust subsides in the wake of his release, taking a moment to gather his breath with you before he slowly [if cunt width of player < 4]pries[else]pulls[end if] you free, a trail of sexual fluids in its wake.[impregchance]";
			say "     'I hope you enjoyed your ride as much as I did[if cunt width of player < 4]--even though you're such a tight fit[end if][if cocks of player > 2]. Now, if you excuse me, I have to find some way to clean off this mess you made.'  He gestures to his cum-stained torso before letting you off to attend to his own needs[else].' He lets you off, readjusting his stark attire before returning to his own business[end if]. You stay flopped on the floor for a while, enjoying the lingering afterglow of your horsey ride.";
		else:
			say "     'Hm... I think it's only fair that I treat my big friend proper, this time.'  He gestures to follow him to an open area before having you lay on your back, exposing yourself before him. Your offer is rewarded when he walks between your splayed legs, [if scalevalue of player > 4]vision obscured by your large form you're [end if]met with brief caresses across your [bodytype of player] thighs before you [if scalevalue of player > 4]feel[else]watch as[end if] his hardening cock grind against your nether lips";
			If cunt width of player < 4:
				say ". As he forces the head of his blunt dick into [if cunts of player > 1]one of your cunts[else]your cunt[end if], his struggle elicits a chain of strained grunts. Relegated to contending with your paradoxically small hole, it takes quite a bit of effort for him squeeze it in, wracking you with pangs of sharp pleasure[if cocks of player > 0] and driving you hard in the process[end if].";
			else if cunt width of player < 7:
				say ". The head of his blunt blunt dick parting [if cunts of player > 1]one of your cunts['][else]your cunt's[end if] flesh, you're rapidly forced to contend with his impressive girth. This seems to [if scalevalue of player > 4]audibly[else]visibly[end if] impress the equine, pleased that he can influence someone [if scalevalue of player > 4]much [end if]larger than he so readily[if cocks of player > 0], quickly driving you hard in the process[end if].";
			else:
				say ". Thrusting the head of his blunt dick into [if cunts of player > 1]one of your cunts[else]your cunt[end if], your flesh envelops his with zero difficulty. His initial probing only brief--no doubt driven to make more reckless use of you--he show no restraint in ramping up his pace[if cocks of player > 0], quickly driving you hard in the process[end if].";
			say "     Onyx's hands firmly gripped around your [if scalevalue of player is 4]large, [bodydesc of player] frame[else]thighs[end if], he rides you with a quickly rising fervor, rapidly driving you into a lustful haze[if cocks of player > 1]. Your cocks ooze precum in visible illustration of the same, enough so that he shares the pleasure by opting to stroke one of them in turn[else if cocks of player > 0]. Your cock oozing precum in visible illustration of the same, enough so that he shares the pleasure by opting to stroke it in turn[else]. His thrusts are made increasingly, audibly wet in illustration of the same[end if]. It requires only a moment further before he makes a concluding thrust, forcing his dick [if cunt length of player < 20]as far as he can[else]all the way[end if] into you, flooding your womb with his virile seed and eliciting your own release, [if cocks of player > 1]cocks exploding with their load across your [bodytype of player] torso[else if cocks of player > 0]cock exploding with its load across your [bodytype of player] torso[else]hungry portal tightening around his throbbing rod, milking him of every last drop[end if]. In due time, his flow diminishes, and he inevitably concedes to freeing his now-softened organ from you.[impregchance]";
			say "     '[If cunt width of player < 4]Geez, you'd expect someone as big as you wouldn't be so tight..[run paragraph on][else if cocks of player > 0]Oh, hey now, you've gone and made a mess of yourself[else]Heh, I can't say I don't enjoy such a large ride[end if].'  He gives your behind a parting smack before letting you off, leaving you to [if cocks of player > 0]clean up the mix of sexual fluids across your form[else]straighten yourself up in the wake of that wonderful ordeal[end if].";
		now onyxdmc is 1;
	else if onyxdmc is 1:
		If scalevalue of player < 4:
			say "     'Oh, I think somebody wants some time on their favourite ride!'  Onyx regards your offer in such a manner, moving to grab a seat as you disrobe for him. Once you are ready, he [if scalevalue of player < 3]picks you up and places you on[else]pulls you onto[end if] his lap, forcing your behind to straddle his already-hardening cock.";
			say "     Your affections are relatively brief before the equine is satisfied, pulling you up and repositioning his organ before your relegated to lowering yourself onto it";
			if cunt width of player < 4:
				say ". Only briefly forced to contend with [if cunts of player > 1]one of your ill-fitting cunts[else]your ill-fitting cunt[end if],";
			else if cunt width of player < 7:
				say ". Only taking a few, brief, jerking thrust until he penetrates the folds of your flesh,";
			else:
				say ". Showing zero difficulty in enveloping the organ within [if cunts of player > 1]one of your cunts[else]your cunt[end if],";
			if cunt length of player < 7:
				say " he slowly sinks his rod as far as the shallow hole might abide. It's not much compared to the well-hung horse, but he's ready to make use of what you can provide. It does fill you deliciously full though, which is quite fulfilling.";
			else if cunt length of player < 11:
				say " he slowly sinks his rod as far as the shallow hole might abide, ready to make use of what you can provide. It does fill you deliciously full though, which is quite fulfilling.";
			else if cunt length of player < 20:
				say " he slowly sinks his rod deeper into you, engulfing him wholly with only marginal difficulty[if scalevalue of player < 2], an outline of his malehood visible through your belly[end if].";
			else:
				say " he shows no restraint in easily engulfing the whole of his rod within you[if scalevalue of player < 3], though--doubtlessly a product of your diminutive size--his large malehood visibly bulges from your stuffed belly[end if].";
			say "     Soon fucking you in earnest, his strength is clearly illustrated as you bounce against his cock with a wickedly perverse fervor. Driven to sate his own lust, he [if cocks of player > 1]moves a hand to pump one of your hardened cocks, tormenting you with a mix of dual pleasure[else if cocks of player > 0]moves a hand to pump your hardened cock, tormenting you with a mix of dual pleasure[else if breasts of player > 0 and breast size of player > 1]moves his equine lips to suckle one of your exposed breasts, tormenting you with additional pleasure across your form[else]grips your thighs firmly, gently nipping your shoulder in pangs of additional pleasure, tormenting your already sensation-assailed form[end if]. His influence is enough that you soon cry out in blissful orgasm, [if cocks of player > 2]aiming two of your cocks away from him as they release their load, though this is insufficient in saving him from being doused by the remainder[else if cocks of player > 1]aiming your two cocks away from him as it release their load, sparing him from their mess [else if cocks of player > 0]aiming your cock away from him as it releases its load, sparing him from its mess[else]your cunt tightening around his flesh in a transparent hunger for his imminent load[end if].";
			say "     [if cunt width of player < 4]Beleaguered hole already forced to contend with the flared head of his equine dick[else]The flared head of his equine dick a clear indication of what is to come[end if], [if scalevalue of player < 3]you begin to bloat almost immediately with the sudden flood of his sexual fluids into your womb, until the remnant of his load is forced to spurt free of your cunt[else]you're suddenly assailed by a flood of his sexual fluids, each successive wave stuffing your cunt further[end if]. It's not long before his lust subsides in the wake of his release, taking a moment to gather his breath with you before he slowly [if cunt width of player < 4]pries[else]pulls[end if] you free, a trail of sexual fluids in its wake.[impregchance]";
			say "     '[if cunt width of player < 4]Always the tight fit, as you are[else]I keep dishing it out and you always keep coming back. Impressive[end if][if cocks of player > 2]!  Now, if you excuse me, I have to find some way to clean off this mess you made.'  He gestures to his cum-stained torso before letting you off to attend to his own needs[else].'  He lets you off, readjusting his stark attire before returning to his own business[end if]. You stay flopped on the floor for a while, enjoying the lingering afterglow of your horsey ride.[impregchance]";
		else:
			say "     'Heh, not so big that you're too good for the li'l stallion, I see.'  He gestures to follow him to an open area before having you lay on your back, exposing yourself before him. Your offer is rewarded when he walks between your splayed legs, [if scalevalue of player > 4]vision obscured by your large form you're [end if]met with brief caresses across your [bodytype of player] thighs before you [if scalevalue of player > 4]feel[else]watch as[end if] his hardening cock grind against your nether lips.";
			If cunt width of player < 4:
				say "     Only briefly forced to contend with [if cunts of player > 1]one of your paradoxically ill-fitting cunts[else]your paradoxically ill-fitting cunt[end if], it's only a matter of time before the folds of your flesh envelope the head of his blunt dick[if cocks of player > 0], driving you hard in the process[end if]. You cry out in a mix of surprise, discomfort and pleasure.";
			else if cunt width of player < 7:
				say "     The head of his blunt dick parting [if cunts of player > 1]one of your cunts['][else]your cunt's[end if] flesh, you're rapidly forced to contend with his impressive girth. This seems to [if scalevalue of player < 4]audibly[else]visibly[end if] impress the equine, pleased that he can influence someone [if scalevalue of player < 4]much[end if] larger than he so readily[if cocks of player > 0], quickly driving you hard in the process[end if].";
			else:
				say "     Thrusting the head of his blunt dick into [if cunts of player > 1]one of your cunts[else]your cunt[end if], your flesh envelops his with zero difficulty. His initial probing only brief--no doubt driven to make more reckless use of you--he show no restraint in ramping up his pace[if cocks of player > 0], quickly driving you hard in the process[end if].";
			say "     Onyx's hands firmly gripped around your [if scalevalue of player is 4]large, [bodydesc of player] frame[else]thighs[end if], he rides you with a quickly rising fervor, rapidly driving you into a lustful haze[if cocks of player > 1]. Your cocks ooze precum in visible illustration of the same, enough so that he shares the pleasure by opting to stroke one of them in turn[else if cocks of player > 0]. Your cock oozing precum in visible illustration of the same, enough so that he shares the pleasure by opting to stoke it in turn[else]. His thrusts are made increasingly, audibly wet in illustration of the same[end if]. It requires only a moment further before he makes a concluding thrust, forcing his dick [if cunt length of player < 20]as far as he can[else]all the way[end if] into you, flooding your womb with his virile seed and eliciting your own release, [if cocks of player > 1]cocks exploding with their load across your [bodytype of player] torso[else if cocks of player > 0]cock exploding with its load across your [bodytype of player] torso[else]hungry portal tightening around his throbbing rod, milking him of every last drop[end if]. In due time, his flow diminishes, and he inevitably concedes to freeing his now-softened organ from you.[impregchance]";
			say "     '[If cunt width of player < 4]I'm not even going to ask how someone as big as you can remain so tight like that![run paragraph on][else if cocks of player > 0]Oh, hey now, you've gone and made a mess of yourself![run paragraph on][else]Heh, the bigger the better, wouldn't you agree?[run paragraph on][end if]'  He gives your behind a parting smack before letting you off, leaving you to [if cocks of player > 0]clean up the mix of sexual fluids across your form[else]clean yourself off in the wake of that wonderful ordeal[end if].";
	decrease libido of player by 25;
	if libido of player < 0, now libido of player is 0;


to say onyxbrecanal:		[Onyx reciprocates w/anal]
	if the remainder after dividing onyxdmra by 3 is 0:
		if onyxdmra is not 0:
			say "     Onyx poses sexily for you again, turning around to present his rear to you as he flicks his tail up. 'I figured I'd offer you another shot at taking a turn on top. Fair's fair and all.'  The black stallion makes for a very tantalizing sight with his strong muscles and sexy ass end, and you can't help but run your eyes over him lustfully. 'Come now, I know you want in on this again,' he says, spreading out on the table with his cheeks spread and his ebon pucker again ready and waiting for you. 'Your stallion master orders you to pony up and mount his sexy ass.'";
		say "     Finding yourself rock hard at the tempting sight of the stallion stud's asshole, you move in behind him and grab that meaty, toned ass of his. Hotdogging your cock between those dark cheeks, you take a few slow thrusts to savour your mutual anticipation of what is to come. The horse's tail flicks as he shifts his position a little, putting himself on wanton display as you kiss your cockhead against his lubed anal ring. You ease yourself into him, drawing a [if onyxdmra is 0]whimpering [end if]moan from the big stud. 'Oh man, that's nice[if cock length of player > 12] and big[end if],' he nickers, grinding back into you thrust, to which you give him a teasing swat on the rear.";
		say "     You settle into a steady rhythm, pounding away at the big stud's meaty ass[if onyxdmra is 0]. His equine pucker grips and squeezes at your cock deliciously, obviously retaining some of the coaching he'd picked up from all the lewd stallions preparing him to be a mare slut. And while he's too confident and accepting of his new form to become a subby mare by this point,[else]. His equine pucker squeezes and grips at your cock deliciously as he takes your [cock size desc of player] manhood over and over again. The confident horseman smiles back at you, showing[end if] he's still quite able to enjoy a turn on bottom with his friend who saved him. And enjoy it he clearly is, his equine shaft engorged and leaking pre. As you give his plump nuts a fondle and thrust particularly firmly into him, his big stud cock twitches, slapping against the table, sending a spurt of precum halfway across it. Reaching forward, you take a hold of it and start stroking it for him, seeking to service your stallion stud even as you screw him.";
		say "     The two of you go at it for quite some time. Tempted though you are to pound him hard and fast, you enjoy drawing it out all the more, wanting to enjoy this opportunity fucking the stud for as long as you can manage. And he's quite pleased to take it, giving you a grin that tells you you'll be getting it in kind soon enough from him - an exquisite thought that almost has you cum then and there. Eventually, the aching need for release does get to be too much for you both and, at his urging, you pick up the pace and fuck him hard and fast. Panting and nickering with excitement, his spurts of precum become gushes of semen as he's pushed over the edge. His anal muscles clamp down around you, milking you hard with a need that sends you over the edge just a few thrusts later. You paint his bowels with your [cum load size of player] load as he drains his ample load across the wooden tabletop.";
		say "     Easing your spent shaft from his sticky, leaking rear, you flop down onto the table alongside him. He puts his strong arms around you and hugs you tight, his hands gripping you tightly to his sweaty body. The two of you lay there for some time, needing to recover after that good, long fuck.";
	else if the remainder after dividing onyxdmra by 3 is 1:
		say "     Onyx poses sexily for you again, turning around to present his rear to you as he flicks his tail up. 'I figured I'd offer you another shot at taking a turn on top. Fair's fair and all.'  The black stallion makes for a very tantalizing sight with his strong muscles and sexy ass end, and you can't help but run your eyes over him lustfully. 'Come now, I know you want in on this again,' he says, spreading out on the table with his cheeks spread and his ebon pucker again ready and waiting for you. 'Your stallion master orders you to pony up and mount his sexy ass.'";
		say "     In the mood to be a little more dominant this time, you mount him with little preamble. He stifles a groan at this, but his meaty cock twitches and slaps the table, a sure sign of how good it felt. Getting a good grip on his toned ass, you pound away at him, taking [one of]spaced out, hard thrusts[or]rapid, firm thrusts[or]grinding, full length thrusts[in random order] into the big stud. He pants and nickers, the lingering remnants of his earlier training allowing him to best respond to this with the motion of his hips and inner muscles. And while a glance back of his promises you'll get the same or even more from him soon, you're the one on top right now and you intend to make the most of it. Giving his ass a hard swat draws a delightful moan from the usually dominant stallion, making your grin grow wider and your cock even harder.";
		say "     Once you've gotten him good and riled up and you can feel your own orgasm approaching, you shift positions slightly. Now pounding right against the stallion's prostate, his nickering grows louder and his precum drools into a big pool around his ebon shaft. Knowing he can't take much more, you fondle his ballsac firmly";
		if onyxdmra is 1:
			say ".";
			say "     'Who taught a big stud like you to take it up the ass like a slut,' you pant as you pound away at him.";
			say "     'Any proper stallion should take their turn on bottom and be confident enough to stay a dominant stud. You taught me that,' he replies. 'And I look forward to *ungh* showing you what a dominant stud I can beeeeee,' he cries out, cumming powerfully as he's finally driven to orgasm";
		else:
			say " and pant that he's quite the ass slut for a stallion stud. This last bit of teasing pushes him over the edge, causing him to cum powerfully";
		say ". With his anus clenching down around you and the musky scent of stallion cum heavy in the air from his many sticky splatters, you're pushed to climax as well. You unload your balls into the equine stud, blast after blast of your rich seed soaking his insides.";
		say "     When you're finished, you keep your cock buried in him, grinding your hips to his. You reach around and stroke his meaty, half-hard rod, milking a few last spurts from it. Wiping them up with your fingertips, you give him a taste to suck off of them. You gather up another and this time savour it for yourself. You continue like that, nuzzling his strong shoulder and taking turns sampling the stud's virile seed, until there's nothing but drying streaks of white left staining the table.";
	else:
		say "     After posing sexily for you, Onyx pushes you to lay back and moves overtop you. 'Mmm... I'm feeling a little empty. Let's see how well you can fill me with this [if cock length of player < 12]little [else if cock length of player > 24]big [end if]toy of yours,' he says, grabbing your [cock of player] cock and stroking it. He shifts to straddling your [if scalevalue of player < 3]much smaller form[else if scalevalue of player is 3]smaller form[else]large hips[end if], sitting upon your groin. He grinds his muscular buttocks down onto your manhood, getting you fully hard. Once ready, he takes you in hand and settles himself down onto your throbbing prick with a whinny of pleasure.";
		say "     The confident stud smiles down at you as he holds your shoulders pinned with his strong hands while riding up and down your [cock size desc of player] rod[if cock length of player > 36] as best he can given your massive size[end if]. His own meaty horsecock flops against your [bodytype of player] chest, spurting precum onto you as it does. He rides you with enthusiasm, up and down with confidence in taking what he wants from his lover. His anal passage squeezes around your cock each time those powerful thighs of his push to raise him back up, ensuring it's got a snug grip around you as he pulls upwards. He then slams back down eagerly, driving you back into his hot bowels for another time.";
		say "     You can do little aside from let the big, strong stud ride you, the stallion setting the pace. Between his earlier training and his new dominant streak, he is the one setting the pace and directing the action. You instead move your hands to his engorged equine shaft and begin stroking it, coaxing further spurts of precum to land on your face and chest. You lick up those landing across your lips and moan to the bottoming stud that you're getting close.";
		say "     Going at the pace that he is and with his anal passage working you over to well, you can only hold out for so long. You do your best, wanting to ensure that the dominant male is fully satisfied, but eventually the pressure in your balls boils over. You groan loudly and cum hard, blasting your [cum load size of player] load into the ebon equine. With your hot load shooting into him, Onyx rides you all the harder, finally cumming in powerful blasts that spray across your upper body and face. Even though you do your best to aim his load into your mouth, you end up streaked heavily with gooey horse semen.";
		say "     Onyx keeps riding you past your orgasm's completion, riding until his big balls are drained. Only then does the cum-filled stud stop and rise up off your softening member. You give a weak groan, your cock, balls and hips aching oh so deliciously from the enthusiastic ordeal they've gone through. He rises up[if cock length of player > 36] a little unsteadily[end if] ";
		if anallevel is 3:
			say "before turning and lowering his hips down over your face this time. You end up buried between those powerful thighs of his with his messy, cum-filled horsehole right in front of you.";
			say "     'Go on, [if scalevalue of player < 4]little guy[else]big guy[end if], clean up your mess like a good slut,' he teases. Seeing that dark ring of his before you, coated in your own cum no less, makes you eager to dive right in. And as he relaxes his hole a little, the flow of semen increases, making it all the more appealing. You press your tongue to that puckered ring and, after licking all around it, dive on in. You rim the nickering stallion, cleaning your load from him. By the time you're done and he rises off of you, his black pucker is shiny with spit and clear of any spooge you could reach[if cock width of player > 8], though there's plenty more from your [cum load size of player] load further in his bowels for him to enjoy[end if].";
		else:
			say "and surveys your moaning state of satiation with a self-satisfied smile. He leaves you flopped out there to recover.";
	increase onyxdmra by 1;

[Male Onyx @ Bunker as submissive]

to say onyxbsuboral0:
	say "     Approaching him again, you can't help but be pleased to see how much more of a stud he's become - more confident, stronger and better hung. All the more satisfying once you've got him as your studly sub.";
	say "     With confident touches, you caress his body and down his sides. Your self-assured movements overcome his lingering trepidation, coaxing him to relax and let you take charge. Soon you've got a hand firmly around his cock, stroking it like it belongs to you. You get him fully erect, even drooling and dribbling precum while you tell him how pleased you are with how he's settling in, growing into a nice, strong stallion. He nickers happily at this, standing a little taller after being praised.";
	if cocks of player > 0:
		say "     Pressing your [if cock length of player < 12]shorter[else if cock length of player < 20]comparably long[else]longer[end if] shaft against his, you stroke them together, spreading his pre over it, getting yours shiny and slick while enjoying the moans he makes as you do. With a hand behind his head, you have him look at the two manly rods.";
		say "     'Doesn't it look good?  Hard and slick with your pre. Delicious, even,' you whisper suggestively in his ear. Your hand gently but firmly guides his head lower until your cock is before his muzzle. Very aroused at this point, he opens his muzzle willingly and takes your cock into it. His tongue licks along your shaft while his warm mouth sucks down on you. You caress his mane and ears, telling him what a good stallion he is while thrusting gently into his long muzzle, eventually cumming with a satisfied groan. You tell him to swallow it all down, [if cock width of player >= 30]which he tries his best to do, though some ends up bubbling back as your [cum load size of player] output is a bit too much for him[else if cock width of player >= 20]which he struggles to do, given your [cum load size of player] output[else]which he does happily and hungrily[end if]. You get him to lick you clean and reward the obedient stallion by jacking him off to orgasm.";
	else:
		say "     Moving in even closer still, you press your hips to his, kissing the underside of his cock with your wet puss[yfn]. As your juices mingle with his precum, your folds and his balls grow damp with glistening fluids as you enjoy the moans he makes as you do this. Moving back again, you place a hand on his head and have him look at your hot cunn[yfn].";
		say "     '[if cunts of player > 1]Don't they[else]Doesn't it[end if] look good?  Warm and wet with our juices. Delicious, even,' you whisper suggestively in his ear. Your hand gently but firmly guides his head lower until your [if cunts of player > 1]pussies are[else]pussy is[end if] before his muzzle. Very aroused at this point, his tongue slips out willingly and laps across [if cunts of player > 1]them[else]it[end if]. His tongue plays across your folds and clit[sfn] while you caress his mane and ears, telling him what a good stallion he is while grinding against his equine muzzle. Your words of praise are firm and commanding, instructing him how to best please you until you eventually cum with a satisfied groan. You tell him to lick it all up, which he does happily and hungrily, his broad tongue slathering across and into your quivering puss[yfn]. After he's licked the trails of juices that have run down your legs, you reward the obedient stallion by jacking him off to orgasm.";
	now XP of Onyx is 20;
	now onyxhappytalk is false;
	now the vmusings of Onyx is "";

to say onyxbsubanal0:
	say "     Deciding to finish training Onyx to accept being your subby stallion, you again start with some oral play to ease him into it. He takes little coaxing to again get on his knees, nuzzling and licking at your [cock of player] cock. He goes at it eagerly, running his tongue all over you before taking you into his equine muzzle. You enjoy this blow job for a few minutes, his preparatory training making him skilled and eager enough to tempt you finishing in his mouth. You resist this option, pushing him back and are pleased by the hungry moan he makes as your drooling shaft slips from his lips.";
	say "     Moving to pin the stallion down, you run your hands over his body while hotdogging that sexy ass of his. You enjoy the soft nicker he gives. Taking it as proof of his eagerness to be your sexy bottom, you continue to tease him. Once you've gotten him even more worked up, you let your leaking glans kiss at his dark pucker before pulling away. He groans for you to stop teasing and do it, and your response is to let it brush against his anus again. Self-assuredly commenting that he's becoming quite the cock-hungry bottom, you press against his pucker again and taunt that he'll have to admit it if he really wants you to fuck him. He chews at his lip at first, but his resistance fades as you continue to tantalize him with your manhood while tweaking his nipples.";
	attempttowait;
	say "     'Yes, I want your cock in me. I need it so bad. Come on!  Do me!  I'll be your cock-hungry slut if you'll stop teasing me and just pound me hard!'  His admission, once started reluctantly, quickly becomes quite emphatic. You drive your meat into him, turning the last of it into an elongated moan. You fuck the subby equine with confidence, your need for dominance satisfied with Onyx's conversion into your submissive lover.";
	say "     With him having given in, you reinforce this good behaviour by providing the hard dicking he desires while stroking his stallionhood. You make sure to please your friend even as you lay claim to his ass. You playfully call him a slutty bottom, a cock-hungry stallion, a cum-thirsty horse and so on, enjoying how he squirms in shameful delight and pushes back all the harder at being called such things. Turned on by the whole process, you vigorously pound your increasingly submissive friend's toned ass, reaching your climax in short order after the foreplay and dominance play. You paint the black horse's insides white with your semen all while pumping blast after blast of his own seed from his horsecock. Once you're done and he's left [if cock width of player >= 30]bloated with your mighty output[else if cock width of player >= 20]stuffed and leaking from your impressive output[else]sticky and dribbling your cum[end if], you give that ass of his a firm squeeze as a final reminder that you'll be back for more fun with the obedient equine later.";
	now XP of Onyx is 21;
	now onyxhappytalk is false;

to say onyxbsubvag0:
	say "     Deciding to finish training Onyx to accept being your subby stallion, you again start with some oral play to ease him into it. He takes little coaxing to again get on his knees, nuzzling and licking at your [cunt size desc of player] puss[yfn]. He goes at it eagerly, running his tongue all over you before delving into your quivering hole[sfn]. You enjoy letting him eat you out for a few minutes, his preparatory training making him skilled and eager enough to tempt you finishing this way. You resist this option, pushing him back and are pleased by the hungry moan he makes as his squirming tongue pops from your lips.";
	say "     Moving to pin the stallion on his back, you run your hands over his body while grinding down onto that meaty cock of his. You enjoy the soft nicker he gives. Taking it as proof of his eagerness to be inside your heated tunnel, you continue to tease him. Once you've gotten him even more worked up, you wriggle such that his leaking glans barely dips into [if cunts of player > 1]one of your pussies[else]your pussy[end if] before pulling away. He groans for you to stop teasing and do it, and your response is to let it brush against your sopping hole again. Self-assuredly commenting that he's becoming quite the eager slut, you press against his leaking manhood again and taunt that he'll have to accept that you're in charge if he really wants you to fuck him. He chews at his lip at first, but his resistance fades as you continue to tantalize him with your cunt[sfn] while tweaking his nipples.";
	attempttowait;
	say "     'Yes, I want to stuff your cunt. I need it so bad. Come on!  Take me!  I'll be your slutty stallion if you'll stop teasing me and take my cock in you!'  His admission, once started reluctantly, quickly becomes quite emphatic. You slam down onto his meat, turning the last of it into an elongated moan. You ride the subby equine with confidence, your need for dominance satisfied with Onyx's conversion into your submissive lover.";
	say "     With him having given in, you reinforce this good behaviour by providing the hard ride he desires while fondling his plump balls with one hand and petting his chest with the other. You make sure to please your friend even as you lay claim to his cock and balls. You playfully call him a slutty bottom, a pussy-whipped stallion, your pony plaything and so on, enjoying how he squirms in shameful delight and throbs all the harder inside you at being called such things. Turned on by the whole process, you vigorously pound up and down on your increasingly submissive friend's crotch, reaching your climax in short order after the foreplay and dominance play. Telling him that he can now cum, you cry out in ecstasy as you feel the hot rush of his horsey cum blasting into you shortly after permission is given. Once you're done and have pulled off his spent shaft, you move up further, burying his face between your legs and getting him to lick up the excess spooge leaking out. That done, you give his balls a meaningful rub as a final reminder that you'll be back for more fun with the obedient equine later.[impregchance]";
	now XP of Onyx is 21;
	now onyxhappytalk is false;

to say onyxbsubanal1:
	say "     Presenting your cock to Onyx, all it takes is a tap on his ass to get him leaning across a table with his tail raised. You rub those firm cheeks of his before parting them to finger his dark pucker. he gives a happy nicker and his tail responds by flicking up again. Satisfied by his clear eagerness, you get him lubed up with a spit-covered finger, adding precum to that when you switch to teasing your glans against his crinkled hole. With that enticement and opportunity to ready himself[if cock length of player > 30] at least a little[end if], you push your [cock size desc of player] cock past his anal ring. The big stud gives a very slutty nicker as you penetrate him, making your penis give a strong throb in his hot tunnel.";
	say "     Gripping those toned cheeks of his, you start thrusting, pumping into his tight ass and enjoying his needy moans as you do. Pleased by his acceptance of his role as the bottom, you make sure to tell him what a fine fuck he is and how he's turned into a studly cockslut. You can imagine him blushing a little under his black coat, but he grinds back against you all the harder for it as well. Reaching around, you take his long, equine cock in hand and stroke along it, adding to the obedient horse's enjoyment of getting screwed by you.";
	attempttowait;
	if a random number between 1 and 125 > libido of player:
		say "     You go nice and slow with him, [if cock length of player >= 30]taking your time to ease your [cock size desc of player] cock into his muscular ass[else]letting your [cock size desc of player] cock slip smoothly into his muscular ass[end if]. He pants and moans softly in erotic delight as you screw him with a controlled rhythm, giving him a thorough reaming. The way his anal walls squeeze and tug whenever you grind against his prostate feel so good that you adjust your position periodically to stimulate that sensitive inner gland[if cockname of player is not listed in infections of internallist]. Your balls rub against the subby stallion's own every time you hilt yourself in him, a reminder to him of what'll soon be filling him as you claim him like a stud[end if]. You continue to stroke his throbbing meat, enjoying how full and drippy it is from being fucked silly by you.";
	else:
		say "     You go hard and fast with him [if cock length of player >= 30]as soon as you've eased your [cock size desc of player] cock into his muscular ass[else]from the onset, driving your [cock size desc of player] cock into his muscular ass[end if]. He is full of moans and nickers of lustful delight as you bugger him wildly, giving the horny horse a thorough pounding. The way his anal walls quiver and squeeze around you after particularly hard thrusts feel so good that you can't help but keep adding them every few pushes of your hips[if cockname of player is not listed in infections of internallist]. Your balls slap firmly against the subby stallion's own, a reminder to him of what'll soon be filling him as you claim him like a stud[end if]. You continue to stroke his throbbing meat, enjoying how full and drippy it is from being thoroughly ravaged by you.";
	say "     Your climax comes with a series of firm, confident thrusts that pound hard at his prostate, making the subby male cry out in moaning nickers for you to seed him. And seed him you do, cumming hard into his clenching ass and spilling your [cum load size of player] load into Onyx. He takes it all eagerly, his own climax coming sometime midway through your own, spreading his stallion cum across the smooth tiles of the floor. You make sure to pump him dry (at least temporarily) even as you do the same in his ass. When you're finished, you withdraw your [cock of player] meat from him and finger that sticky pucker of his, telling him once again what a fine fuck he makes as your stallion sub. He sighs contentedly at this, remaining flopped across the table and basking in the afterglow while [if cock width of player >= 30]semen gushes from his overstuffed belly[else if cock width of player >= 20]a rivulet of excess semen leaks from his stuffed bowels[else]a trickle of semen leaks from his creamed hole[end if].";

to say onyxbsubvag1:
	say "     Putting Onyx onto his back, you straddle the submissive stud and grind down onto his equine pole. Rising quickly for his dominant friend, he moans happily you take hold of it and get lined up. With a gentle squeeze of his balls to remind him of who's in charge, you can't help but moan a little as you sink [if cunts of player > 1]one of your cunts[else]your cunt[end if] down onto his satisfyingly large cock. It pulses and throbs inside you with virility, further exciting you. You run your hands over his strong chest and order him to start thrusting. With permission given, the obedient stallion grabs your hips and presses his hips up rhythmically. Each thrust draws a pleasured shiver from you[if cocks of player > 0], making your cock[smn] twitch and throb[end if] as your cunt gets increasingly wet with arousal.";
	say "     You work your hips and squeeze your vaginal walls down around his meat, thoroughly enjoying taking a ride on it. Having his equine shaft buried inside you, knowing it is yours to do with as you wish, is a very satisfying feeling. He's become such a fine, strong stallion, but also an obedient and submissive lover. Having such a big, virile male as your sub to play with as you will is invigorating, adding to the thrill of getting vigorously pounded by him.";
	attempttowait;
	say "     You take a long, enjoyable ride on the stallion's rod and only permit him to cum after you've given him permission when you achieve a screaming orgasm. By that point, he's built up quite the load and blasts shot after shot of gooey horse semen into your cunt and on into your womb. The hot rush of it flooding into you causes your orgasmic delight to resurge, making you cry out again[if cocks of player > 0]. You splatter the slutty stallion with your [cum load size of player] load[else]. You soak the slutty stallion's crotch with your orgasmic juices[end if], ensuring he'll carry your musky scent. Your vagina squeezes and milks at the horse's rod, drawing out all your playmate can give. When done, you [one of]get him to eat you out, swallowing down his own load as he cleans up the excess semen flowing out of your thoroughly fucked cunny[or]rise off of him slowly and stretch, letting his excess semen leak back out onto his spent shaft and drained balls[or]slide up to his chest and grind your hips across his manly torso, letting his excess semen leak out onto his pecs and abs as a sticky, musky mess[cycling].[fimpregchance]";
	now onyxsmrv is true;

to say onyxbsubanalride1:
	setmonster "Horseman";
	choose row monster from the table of random critters;
	say "     Putting Onyx onto his back, you straddle the submissive stud and grind down onto his equine pole. Rising quickly for his dominant friend, he moans happily you take hold of it and get lined up. With a gentle squeeze of his balls to remind him of who's in charge, you can't help but moan a little as you sink your ass down onto his satisfyingly large cock. It pulses and throbs inside you with virility, further exciting you. You run your hands over his strong chest and order him to start thrusting. With permission given, the obedient stallion grabs your hips and presses his hips up rhythmically. Each thrust draws a pleasured shiver from you[if cocks of player > 0], making your cock[smn] twitch and throb[else if cunts of player > 0], making your cunt wet with arousal[end if].";
	say "     You work your hips and squeeze your anal walls down around his meat, thoroughly enjoying taking a ride on it. Having his equine shaft buried inside your ass, knowing it is yours to do with as you wish, is a very satisfying feeling. He's become such a fine, strong stallion, but also an obedient and submissive lover. Having such a big, virile male as your sub to play with as you will is invigorating, adding to the thrill of getting vigorously pounded by him.";
	attempttowait;
	say "     You take a long, enjoyable ride on the stallion's rod and only permit him to cum after you've reached your own orgasm. By that point, he's built up quite the load and blasts shot after shot of gooey horse semen into your rectum and on into your bowels. The hot rush of it flooding into you causes your orgasmic delight to resurge, making you cum harder[if cocks of player > 0]. You splatter the slutty stallion with your [cum load size of player] load[else]. You soak the slutty stallion's crotch with your orgasmic juices[end if], ensuring he'll carry your musky scent. Your anus squeezes and milks at the horse's rod, drawing out all your playmate can give. When done, you [if anallevel is 3 and a random chance of 1 in 3 succeeds]get him to lick your asshole, cleaning away his own load as the excess semen leaks out of your thoroughly fucked hole[else if a random chance of 1 in 2 succeeds]grind atop his spent shaft and balls as you stretch, letting his excess semen leak back out onto them[else if cocks of player > 0]bring your [cock of player] cock to his muzzle, giving him to lick it clean[else]bring your [cunt size desc of player] cunt to his muzzle, getting him to lick it clean[end if] before leaving him in a sticky haze.[mimpregchance]";
	now onyxsmra is true;

to say onyxbsubmoral1:
	say "     Presenting Onyx with your cock, all it takes is a motion for him to get on his knees before he's down and licking it over. You rub his head and [if cockname of player is not listed in infections of internallist]instruct him to lick your balls as well[else if cunts of player > 0]instruct him to get your pussy as well[else]remind him to get every inch of it[end if]. He does so obediently, his tongue working hard to please you. Satisfied with his oral attention, you take hold of your rod and order him to get sucking.";
	say "     The black stallion's muzzle engulfs your [cock size desc of player] shaft eagerly. The hot, wet tunnel of his [if cock length of player > 7]throat[else]mouth[end if] slides across your sensitive flesh as he fellates you eagerly. He works his lips and tongue along your shaft with every bob of his head, [if cock length of player > 30]taking as much of it as he can[else]taking it all in[end if]. You can't help but moan, adding a teasing compliment about how he's turning into a fine cocksucker. This brings a smile to the corners of his lips and gets him to suck down all the harder.";
	attempttowait;
	say "     With the manly stud working over your cock like a slut, you build up to a strong orgasm that has you blast your sticky load into his long muzzle[if cock width of player >= 36]. Your massive load shoots down into his belly, bloating it with your semen to the point of overflowing a little[else if cock width of player >= 24]. Your massive load shoots down into his belly, bloating it with your semen[end if]. He gulps it all down eagerly, sucking you to get every last drop he can manage. Once he's done, he moves his head back slowly, letting his broad tongue and ebon lips slurp you clean as you slide free. Having enjoyed the blow job, you [if remainder after dividing onyxfinale by 3 is 0]cap it off with a sexy show of the subby stallion jerking himself off all across his muscular body[else if remainder after dividing onyxfinale by 3 is 1]treat him to a handjob that has the subby stallion spray long streaks of his seed across the floor, which he then licks up[else]reward the obedient stallion by sucking him off in return, enjoying the gooey load from your subby friend[end if].";

to say onyxbsubforal1:
	say "     Widening your stance, you present your dripping snatch[esfn] to Onyx. All it then takes is a motion for him to get on his knees and bury his face between your legs. He runs his broad tongue over [if cunts of player > 1]them[else]it[end if], licking across and into your puss[yfn]. Rubbing his ears and mane, you [if cocks of player > 0]let your [cock of player] cock[smn] lay across his equine muzzle[else if cunts of player > 1]grind your multiple cunts across his equine muzzle[else]pull him more firmly to your crotch[end if]. He accepts this manhandling happily, his submissive training yielding to your dominant behaviour.";
	say "     The black stallion works his thick tongue deeper into your [cunt size desc of player] cunt, lapping up your juices as your excitement builds. Your hot tunnel squeezes down around that wriggling appendage, especially when he finds a particularly good spot to stimulate. You can't help but moan, adding a teasing compliment about how eager to please he is. This brings a smile to his face as he licks all the faster[if cunts of player > 1]. He swaps between your pussies when instructed, making sure you're thoroughly slathered by that hardworking tongue.";
	attempttowait;
	say "     With the manly stud working over your puss[yfn] like a slut, you build up to a strong orgasm that has you soak his muzzle with your juices. He laps these up, adding licks to your clit[yfn] and pumping fingers into your cunn[yfn] to extend and heighten your orgasmic release. And when you can take no more, you push his head back and have him finish by licking the rivulets of your femmecum and his saliva that [if cunts of player > 1 or cunt length of player >= 12]run all down your legs[else]streak your thighs[end if]. Having enjoyed getting eaten out, you [if remainder after dividing onyxfinale by 3 is 0]cap it off with a sexy show of the subby stallion jerking himself off all across his muscular body[else if remainder after dividing onyxfinale by 3 is 1]treat him to a handjob that has the subby stallion spray long streaks of his seed across the floor, which he then licks up[else]reward the obedient stallion by sucking him off in return, enjoying the gooey load from your subby friend[end if].";

to say onyxbsubcocksuck1:
	say "     Deciding to give your subby stallion a reward for his good behaviour, you direct him to take a seat. Taking hold of his dark equine shaft, you start stroking it, smiling as you watch it grow and rise. He gives a happy nicker and spreads his legs, allowing his dominant lover free access to him. You kneel down and run your hands along his impressive pillar of horsecock, telling him what a fine stud of a horse he's become. He seems a little embarrassed, but his proud cock stiffens further as well.";
	say "     Leaning in closer, you brush your tongue-tip across the blunt crown of his shaft. You lick again, this time teasing at the gaping, drooling cum-slit to get a taste of the precum leaking from it. He nickers happily at this attention and even louder still as you cup his plump equine balls in one hand and welcome the first couple of inches of his cock past your lips. You suck gently on his horsecock while working your tongue over it, getting a few more pulses of precum for your efforts.";
	attempttowait;
	say "     Placing a strong hand on your head, he gently caresses it. 'Ohhh... that feels so good... but shouldn't I be [if cocks of player > 0]doing that for you[else]shouldn't I be the one servicing you[end if]?' he asks. Your answer is to suck down harder and slowly lower your head, gradually taking more of his black spire into your mouth and eventually down your throat. Having your throat gripping and swallowing around his shaft makes it pulse and throb all the harder, which makes you smile. Knowing you'll get the hot, thick treat you're after soon, you lower your head further into his lap until your nose is buried in it, taking in the stallion's scent directly from his musky sheath.";
	say "     Kneading his balls firmly has him nicker with growing excitement. As you bob your head up and down, you work so much of his shaft in and out of your throat that his medial ring passes your lips and only his blunt tip remains in your throat. At this point his self-restraint wavers and he starts to rock his hips and pull on your head, thrusting back into your hot, sucking mouth. You release a muffled moan of pleasure around that thick horsecock stuffed into you and eagerly continue blowing your equine lover.";
	attempttowait;
	say "     The two of you go at it like this for some time, but the subby stallion can only hold out for so long. Eventually the deep-throated blow job and your playing with his nuts become too much for him. Feeling his balls tighten up and his cock pulsate hard, you bury your face in his crotch again and suck down hard around his meat. Onyx gives a loud whinny and unleashes the first of many large, gooey blasts of horsecum deep into your throat to fill your belly with his hot seed. You take the first several shots this way, directly into your stomach to fill you, before easing back to the spray of semen coats back up your throat and eventually is blasting across your tonsils and tongue. With a mouth full of delicious horse seed, you pop his cock free and let his final, extra-thick blast spray onto your face.";
	say "     Onyx flops back in his seat with a sated sigh, a blissful grin spread across his equine face. After savouring that flavourful mouthful, you swallow it down and rise to your feet. Placing your hands on the arms of his chair, you lean over the black stallion and give him a big, messy kiss. He moans into the kiss, unperturbed that it is one sloppy with his semen. He rubs a strong hand on the back of your head and, after clearing your mouth with his broad tongue, moves on to obediently licking your face clean. When he's done and you stand up fully, you smile down at your subby lover and rub his ears affectionately.";
	now onyxsmro is true;

to say onyxbsubincharge1:
	say "     Feeling your obedient stallion deserves a reward and in the mood to get fucked, you tell Onyx to take charge for this time. The submissive stud is a little reluctant at first, but complies with a little additional coaxing. This coaxing comes in the form of fondling his hefty balls and stroking his horsecock get it to rise. A few teasing licks after that seems to be enough to get what you want.";
	say "     'Ohhh!  That's nice. Keep that up,' he moans with a nicker, rubbing a hand over your head. You continue the licking, running your tongue along his full length now that you've gotten his equine shaft completely erect. You slather its blunt tip with spit, licking up his first few first drops of precum as you do. He leans his head back and pulls your head forward with that strong hand of his, pushing himself into your mouth. Now it's your turn to moan as he pushes inch after inch of throbbing black meat down your throat.";
	attempttowait;
	say "     Still holding your head, he starts to thrust into your wet mouth. He works that big, long cock of his steadily deeper with every thrust. You can feel that big, this cock of his pulse and throb in your throat. You lick and suck as best you can upon the stallion's delicious manhood, enjoying his nickers of pleasure as you do. Once most of his cock's been pushed into you, he pumps faster, sinking those last several inches down in one go. Fully stuffed into your hungry maw, he grips your head and pounds away, sliding much of that meaty missile in and out as he fucks your face.";
	if cunts of player > 0:
		say "     With your hand still on his big balls, you can feel them pulse and churn with activity. Knowing his climax is coming, the stallion grunts and pushes you away. He picks you up off your ass and rolls you onto all fours. 'Come on, get that ass of yours in the air,' he says, hand quickly pumping over his slick spire. You obediently and eagerly raise your rump towards the big stud's throbbing rod just in time for it to get blasted with shot after shot of sticky stallioncum. He presses his glans to your pussy and you even feel a gooey spurt of semen push past your wet folds and into your vagina.[if a random chance of 1 in 2 succeeds][fimpregchance][end if]";
		attempttowait;
		say "     With your ass sticky with semen and your cunny slick and ready, he hotdogs his flagging erection between your buns and starts thrusting. In addition to getting his stallionhood back to erection, it also smears his spit-slick shaft with his own semen, further getting it lubed up. It doesn't take long for his cock to be ready again and soon he's lining up to your creamy hole and sinking it into you. He doesn't hold back, making you thankful for the extra lubrication you've gotten, both inside and out. It's only a half-dozen thrusts before the full length of his equine shaft is buried inside your sloppy, quivering cunt.";
		say "     Having cum recently, Onyx has much more endurance, allowing him to pound you long and hard. The feel of that equine rod of his sinking into you over and over again is wonderful. The sensations are particularly delightful from his broad equine glans pushing its way in and out of you and the ridge of his medial ring shifting along inside you. The way it throbs inside you is very satisfying, exciting you more and more until you cry out in orgasmic release.";
		say "     Feeling your vaginal walls clamping down around him during your climax is enough to push him over the edge in short order. Soon his hot seed is blasting deep inside you, flooding your womb with stallioncum. This second orgasm leaves the stallion's balls fully drained and he pulls out with a wet, sticky slurp. Fully sated, the submissive stallion kneels down behind you and presses his muzzle between your cheeks, working to lick your messy cunny clean like the subservient lover he was trained to be.[fimpregchance]";
	else:
		say "     With your hand still on his big balls, you can feel them pulse and churn with activity. Knowing his climax is coming, the stallion grunts and pushes you away. He picks you up off your ass and rolls you onto all fours. 'Come on, get that ass of yours in the air,' he says, hand quickly pumping over his slick spire. You obediently and eagerly raise your rump towards the big stud's throbbing rod just in time for it to get blasted with shot after shot of sticky stallioncum. He presses his glans to your pucker and you even feel a gooey spurt of semen push past it and into your rectum.[if a random chance of 1 in 2 succeeds][mimpregchance][end if]";
		attempttowait;
		say "     With your ass sticky with semen and your back door slick and ready, he hotdogs his flagging erection between your buns and starts thrusting. In addition to getting his stallionhood back to erection, it also smears his spit-slick shaft with his own semen, further getting it lubed up. It doesn't take long for his cock to be ready again and soon he's lining up to your creamy hole and sinking it into you. He doesn't hold back, making you thankful for the extra lubrication you've gotten, both inside and out. It's only a half-dozen thrusts before the full length of his equine shaft is buried inside your clenching, quivering butthole.";
		say "     Having cum recently, Onyx has much more endurance, allowing him to pound you long and hard. The feel of that equine rod of his sinking into you over and over again is wonderful. The sensations are particularly delightful from his broad equine glans pushing its way in and out of you and the ridge of his medial ring shifting along inside you. The way it throbs inside you is very satisfying, exciting you more and more until you cry out in orgasmic release.";
		say "     Feeling your asshole clamping down around him during your climax is enough to push him over the edge in short order. Soon his hot seed is blasting deep inside you, flooding your bowels with stallioncum. This second orgasm leaves the stallion's balls fully drained and he pulls out with a wet, sticky slurp. Fully sated, the submissive stallion kneels down behind you and presses his muzzle between your cheeks, working to lick your messy ass clean like the subservient lover he was trained to be.[mimpregchance]";


Part 2 - Female Onyx @ Palomino

to femonyxsex:
	say "     Gesturing to Onyx, the equine moves from another patron she was talking to before making her way over to you.";
	say "     'Looking for a good time, sweetie? I know a place less noisy...' Guiding you, you're led to a section more out of the way, the beating thrum of the music muffled.";
	If cocks of player > 0:
		say "     Eager to oblige your need, Onyx is already lowering herself[if scalevalue of player > 3] under you[end if] to more easily access your assets, eager digits parting any obstruction in her way to expose your [cock size desc of player] dick[smn] before her curious gaze.";
		say "     '[one of]Oh[or]Hm[or]Ah[at random], [if cock length of player > 12][one of]somebody's been eating their vegetables[or]don't think you'll be able to keep this much from me, honey[or]I wonder if it'll even fit[at random][else][one of]somebody's eager to see me[or]looks like you're all ready for a bit of fun[or]lets get this party started[at random][end if]!' Grinning, her tongue caresses along [if cocks of player > 2]the length of two of them[else if cocks of player is 2]the length of both of them[else]its length[end if], eagerly oozing by her touch as [if cocks of player > 1]they're[else]it's[end if] driven to full arousal.";
		now calcnumber is -1;
		let trixieexit be 0;
		while trixieexit is 0:
			say "[bold type]Choices:[roman type][line break]";
			say "(1) [link]Continue Oral[as]1[end link][line break]";
			say "(2) [link]Fuck her[as]2[end link] [if cock length of player > 15][italic type]- Too large![roman type][end if][line break]";
			say "(3) [link]Fuck her anally[as]3[end link][if cock length of player > 15][italic type]- Too large![roman type][end if][line break]";
			if XP of Onyx >= 32:
				say "(4) [link]Lap dance[as]4[end link][if cock length of player > 15][italic type]- Too large![roman type][end if][line break]";
			while 1 is 1:
				if XP of Onyx < 32:
					say "Choice? (1-3)>[run paragraph on]";
					get a number;
					if calcnumber >= 1 and calcnumber <= 3:
						break;
					else:
						say "Invalid entry.";
				else:
					say "Choice? (1-4)>[run paragraph on]";
					get a number;
					if calcnumber >= 1 and calcnumber <= 4:
						break;
					else:
						say "Invalid entry.";
			if calcnumber is 1:
				femonyxsex1;
				now trixieexit is 1;
			else if calcnumber is 2:
				if cock length of player > 15:
					say "[bracket]Invalid interaction: You're too large[close bracket][line break]";
				else:
					femonyxsex2;
					now trixieexit is 1;
			else if calcnumber is 3:
				if cock length of player > 15:
					say "[bracket]Invalid interaction: You're too large[close bracket][line break]";
				else:
					femonyxsex3;
					now trixieexit is 1;
			else:
				femonyxsex4;
				now trixieexit is 1;
	else:
		femonyxsex4;

to femonyxsex1:
	say "     The equine continues to tease your for a while longer before she starts attending to your need directly, forcing the[if cockname of player is listed in infections of equinelist] blunt[end if] head[if cocks of player > 1] of one of them[end if] past her lips[if cock length of player > 12], no doubt wrestling to force your substantive girth past her supple lips[end if]. With a [if cock length of player > 12]fair[else]little[end if] bit of work she manages to engulf the length of your throbbing organ down her slick, clenching portal, briefly acclimating before she begins to bob against it.";
	say "     Soft moans vibrating against her flesh, the lady can't help but idly fondle herself as she attends to your need, slick, writhing tongue worming around your precum-sputtering cock. Your breath becomes increasingly shallow as you're progressively wracked by the throes of your imminent bliss, as does her voracious need to see it becomes more dire. Shall you attempt to pull yourself free at the last second?";
	if player consents:
		say "     Unable to hold back any longer, you wrench your tool free of the equine's[one of] surprised[or][stopping] hole before you're set off. Your [cum load size of player] load exploding from your dick[smn], [if cocks of player > 1]they stain[else]it stains[end if] Onyx's face and torso[if cock width of player > 18] until she's utterly drenched in the fluid[end if]. Obliging this embarrassing relegation, she idly licks clean along the length of your softening organ once your bliss starts dying down.";
		say "     '[one of]Tsk[or]Hmpf[or]Oh[at random], [one of]now I'm going to have to go and clean myself up[or]you just had to make a mess[or]you sneaky little imp[at random]";
	else:
		say "     Wet sounds of her persistent, deliberate attendance lingering for only a little while longer, it's more than enough to set you off, the equine plummeting the tool down her hole one last time[if cockname of player is listed in infections of knotlist], up to the knot[end if]. Your [cum load size of player] exploding from your dick[smn],[if cocks of player > 2]its brothers staining her torso as [else if cocks of player is 2]its brother staining her torso as [else if cock width of player > 18]the substantial volume quickly sputtering from her lips as [end if] she swallows your release with slow, deliberate gulps, until you bliss finally dies down and Onyx pulls herself free of your softening organ.";
		say "     '[one of]Ah[or]Mmm[or]Hm[at random], [one of]I hope you had as much fun as I did, sweetie[or]hopefully that'll keep your urges at bay[or]I can see you were very eager to see me[at random]";
	say "!' Grinning, she takes a moment to help you clean yourself off before she moves to take care of herself and the room. Stepping out, back into the main area, it's only a few minutes before she leaves as well, cleaned up and ready to attend the customers";

to femonyxsex2:
	if fonyxvagcount is 0 or a random chance of 2 in 3 succeeds:
		say "     Ready for her, the equine wheels around to allow you easy access to her exposed, dripping nethers";
		if cocks of player > 1:
			say ". You imagine you can use [if cocks of player > 2]two[else]both[end if] of your dicks on her[if cock length of player > 10], though you're large enough that you'll have to plug both holes[end if]. Shall you?";
			if player consents:
				if cock length of player < 11:
					say "     Shall you fit both in her cunt? Else you'll plug both holes.";
					if player consents:
						now tempnum is 1;
					else:
						now tempnum is 2;
				else:
					now tempnum is 2;
			else:
				now tempnum is 0;
		else:
			say ".";
			now tempnum is 0;
		say "     '[one of]Don't hold back[or]Knock yourself out[or]Go crazy[at random], [one of]love[or]stud[or]honey[at random].' Eager to get started, you plunge the[if cockname of player is listed in infections of bluntlist] blunt[end if] head of[if tempnum > 0 and cocks of player > 2] two of[else if tempnum > 0] both of[end if] your dick[if tempnum > 0]s[end if] down her inviting hole[if tempnum is 2]s[end if], causing Onyx to moan out in eager bliss, reveling in being railed by you as you quickly build a tempo of pounding her ass, pinning the equine firmly against a wall.";
		say "     Cunt [if cock length of player > 12 and tempnum is 2]and anal ring strained to contain your substantial flesh[else if cock length of player > 12 or tempnum is 1]strained to contain your substantial flesh[else if tempnum is 2]and anal ring easily abiding your rigid flesh[else]easily abiding your rigid flesh[end if], your motion slicked by a mix of her juices and your precum, the heat of your shared fervour coats your bodies in a veneer of sweat. Onyx is particularly loud as she's being rammed[if scalevalue of player > 3] by her much larger partner[end if], too lost in the throes of your own need to concern yourself about whether the commotion is drawing attention to the two of you. You probably can't take much more of this, shall you pull out at the last second?";
		if player consents:
			say "     Right on the brink of bliss you pull your [cock size desc of player] tool[if tempnum > 0]s[end if] free of Onyx's oozing hole, grinding yourself against her for a second longer before finally crying out, [cum load size of player] load painting her back and ass[if cock width of player > 18] until it's utterly drenched[end if]. Idly fondling herself, the equine can only whinny loudly in ecstasy as she's made a mess of, staining the floor further with her own juices. It takes a moment afterwards for things to wind down and for the two of you to catch your breath.";
			say "     'Whew! [one of]It's going to take me a while to clean all this up[or]What a mess[or]Somebody was feeling a little impish[or]Never a dull moment for you[at random]!' Grinning, she takes a moment to help you clean yourself off before she moves to take care of herself and the room. Stepping out, back into the main area, it's only a few minutes before she leaves as well, cleaned up and ready to attend the customers.";
		else:
			if libido of player > 40:
				say "     You can't hold back for much longer, finally crying out in bliss and [if cockname of player is listed in infections of knotlist]tying[else]hilting[end if] yourself as you flood the equine's womb with your [cum load size of player] load[if cock width of player > 18 and tempnum is 2] until it starts to sputter from her stuffed holes[else if cock width of player > 18] until it starts to sputter from her stuffed hole[end if]. More than enough to set her off she whinnies out loudly, [if tempnum is 2]ass[else]pussy[end if] squeezing you sputtering dick[if tempnum > 0]s[end if] tightly";
				if (tempnum > 0 and cocks of player > 3) or cocks of player > 2:
					say ", your unattended cocks staining her thighs.";
				else if (tempnum > 0 and cocks of player > 2) or cocks of player > 1:
					say ", your unattended cock staining her thighs.";
			else:
				say "     It's clear the equine can't hold back any longer, whinnying out loudly as her [if tempnum is 2]ass[else]pussy[end if] tightly squeezes your throbbing dick[if tempnum > 0]s[end if]. More than enough to set your off, you finally cry out in bliss and [if cockname of player is listed in infections of knotlist]tying[else]hilting[end if] yourself as you flood the equine's womb with your [cum load size of player] load[if cock width of player > 18 and tempnum is 2] until it starts to sputter from her stuffed holes[else if cock width of player > 18] until it starts to sputter from her stuffed hole[end if]";
				if (tempnum > 0 and cocks of player > 3) or cocks of player > 2:
					say ", your unattended dicks staining her thighs.";
				else if (tempnum > 0 and cocks of player > 2) or cocks of player > 1:
					say ", your unattended dick staining her thighs.";
			say "     As things begin to wind down and the two of you begin catch your breath you pull yourself free of Onyx's now-oozing hole[if tempnum > 0]s[end if].";
			say "     'Whew! [one of]That was fun[or]What a mess[or]I needed that[or]Never a dull moment for you[at random]!' Grinning, she takes a moment to help you clean yourself off before she moves to take care of herself. Stepping out, back into the main area, it's only a few minutes before she leaves as well, cleaned up and ready to attend the customers.";
	else:
		say "     With your decision made, you motion for Onyx to get down on all fours. She does so eagerly, raising her ass in the air and giving her long tail a flick up. The delectable sight of her sexy ass with her juicy muff ready and waiting for you is a beautiful one. Resting your cock between her cheeks, you make it a point of telling her what a fine mare she's become before thrusting into her slick cunny. Her response is lost in a nickering moan as you mount her and start fucking her.";
		if cocks of player > 2:
			say "     Leaving your extra cocks to hang between her thighs, they slide across her ebony fur[if cock length of player > 12] and slap against her belly[end if] as you thrust into her. ";
		else if cocks of player is 2:
			say "     Leaving your extra cock to hang between her thighs, it slides across her ebony fur[if cock length of player > 12] and slap against her belly[end if] as you thrust into her. ";
		else:
			say "     ";
		say "Her cunny squeezes and tugs at your manhood as you thrust it into her, her body clearly longing for a good fucking. And you're more than happy to give it to the lovely mare. Moving overtop of her, you cup one of her breasts in your hand while supporting yourself with the other arm. She gives a soft neigh as you tweak her nipple and you can feel her cunt spasm around you in delighted response.";
		say "     As you fuck her, she moans about how you make her such a happy mare when you fuck her. 'I wouldn't even be a happy mmmm-mare if it weren't for you. I'd be some -nggg- brainless slut, getting fucked by anyone they told -ohhh yeah- told me to bang. Here I get to be banged by anyone [bold type]I[roman type] like. And I like being banged by you soooo much,' she neighs, grinding back against you harder as her vaginal walls tremble around you on the edge of orgasm. Smiling at how well things have worked out, your pace quickens and you unleash your hot [cum load size of player] load into the black beauty beneath you moments after her own climax hits. You nuzzle and nip at her neck as you send shot after shot into her[if cocks of player > 1] and across her thighs and belly[end if] until your balls are drained. You slip your softening member from her pussy and makes sure to lick it clean before letting you return to the club. She follows you out soon after, having made sure the room's ready for the next stripper girl who needs a private space.";
	if XP of Onyx is 30, now XP of Onyx is 31;
	increase fonyxvagcount by 1;

to femonyxsex3:
	if fonyxanalcount is 0 or a random chance of 2 in 3 succeeds:
		say "     Ready for her, the equine wheels around to allow you easy access to her exposed, dripping nethers";
		if cocks of player > 1:
			say ". You imagine you can use [if cocks of player > 2]two[else]both[end if] of your dicks on her[if cock length of player > 10], though you're large enough that you'll have to plug both holes[end if]. Shall you?";
			if player consents:
				if cock length of player < 11:
					say "     Shall you fit both in her ass? Else you'll plug both holes.";
					if player consents:
						now tempnum is 1;
					else:
						now tempnum is 2;
				else:
					now tempnum is 2;
			else:
				now tempnum is 0;
		else:
			say ".";
			now tempnum is 0;
		say "     '[one of]Don't hold back[or]Knock yourself out[or]Go crazy[at random], [one of]love[or]stud[or]honey[at random].' Eager to get started, you plunge the[if cockname of player is listed in infections of bluntlist] blunt[end if] head of[if tempnum > 0 and cocks of player > 2] two of[else if tempnum > 0] both of[end if] your dick[if tempnum > 0]s[end if] down her inviting hole[if tempnum is 2]s[end if], causing Onyx to moan out in eager bliss, reveling in being railed by you as you quickly build a tempo of pounding her ass, pinning the equine firmly against a wall.";
		say "     Anal ring [if cock length of player > 12 and tempnum is 2]and cunt strained to contain your substantial flesh[else if cock length of player > 12 or tempnum is 1]strained to contain your substantial flesh[else if tempnum is 2]and cunt easily abiding your rigid flesh[else]easily abiding your rigid flesh[end if], your motion slicked by[if tempnum is 2] a mix of her juices and[end if] your precum, the heat of your shared fervour coats your bodies in a veneer of sweat. Onyx is particularly loud as she's being rammed[if scalevalue of player > 3] by her much larger partner[end if], too lost in the throes of your own need to concern yourself about whether the commotion is drawing attention to the two of you. You probably can't take much more of this, shall you pull out at the last second?";
		if player consents:
			say "     Right on the brink of bliss you pull your [cock size desc of player] tool[if tempnum > 0]s[end if] free of Onyx's oozing hole, grinding yourself against her for a second longer before finally crying out, [cum load size of player] load painting her back and ass[if cock width of player > 18] until it's utterly drenched[end if]. Idly fondling herself, the equine can only whinny loudly in ecstasy as she's made a mess of, staining the floor further with her own juices. It takes a moment afterwards for things to wind down and for the two of you to catch your breath.";
			say "     'Oh my! [one of]It's going to take me a while to clean all this up[or]What a mess[or]Somebody was feeling a little impish[or]Never a dull moment for you[at random]!' Grinning, she takes a moment to help you clean yourself off before she moves to take care of herself and the room. Stepping out, back into the main area, it's only a few minutes before she leaves as well, cleaned up and ready to attend the customers.";
		else:
			if libido of player > 40:
				say "     You can't hold back for much longer, finally crying out in bliss and [if cockname of player is listed in infections of knotlist]tying[else]hilting[end if] yourself as you flood the equine's bowels with your [cum load size of player] load[if cock width of player > 18 and tempnum is 2] until it starts to sputter from her stuffed holes[else if cock width of player > 18] until it starts to sputter from her stuffed hole[end if]. More than enough to set her off she whinnies out loudly, ass squeezing you sputtering dick[if tempnum > 0]s[end if] tightly";
				if (tempnum > 0 and cocks of player > 3) or cocks of player > 2:
					say ", your unattended cocks staining her thighs.";
				else if (tempnum > 0 and cocks of player > 2) or cocks of player > 1:
					say ", your unattended cock staining her thighs.";
			else:
				say "     It's clear the equine can't hold back any longer, whinnying out loudly as her ass tightly squeezes your throbbing dick[if tempnum > 0]s[end if]. More than enough to set your off, you finally cry out in bliss and [if cockname of player is listed in infections of knotlist]tying[else]hilting[end if] yourself as you flood the equine's bowels with your [cum load size of player] load[if cock width of player > 18 and tempnum is 2] until it starts to sputter from her stuffed holes[else if cock width of player > 18] until it starts to sputter from her stuffed hole[end if]";
				if (tempnum > 0 and cocks of player > 3) or cocks of player > 2:
					say ", your unattended dicks staining her thighs.";
				else if (tempnum > 0 and cocks of player > 2) or cocks of player > 1:
					say ", your unattended dick staining her thighs.";
			say "     As things begin to wind down and the two of you begin catch your breath you pull yourself free of Onyx's now-oozing hole[if tempnum > 0]s[end if].";
			say "     'Whew! [one of]That was fun[or]What a mess[or]I needed that[or]Never a dull moment for you[at random]!' Grinning, she takes a moment to help you clean yourself off before she moves to take care of herself. Stepping out, back into the main area, it's only a few minutes before she leaves as well, cleaned up and ready to attend the customers.";
	else:
		say "     With your decision made, you motion for Onyx to get down on all fours. She does so eagerly, raising her ass in the air and giving her long tail a flick up. The delectable sight of her sexy ass with her juicy muff and tight tailhole ready and waiting for you is a beautiful one. Resting your cock between her cheeks, you make it a point of telling her what a fine mare she's become before easing into her tight anus. Her response is lost in a nickering moan as you mount her and start fucking her.";
		if cocks of player > 2:
			say "     Leaving your extra cocks to rest between her cheeks, they hotdog her ebony ass[if cock length of player > 12] and dribble onto her lower back[end if] as you thrust into her. ";
		else if cocks of player is 2:
			say "     Leaving your extra cock to rest between her cheeks, it hotdogs her ebony ass[if cock length of player > 12] and dribble onto her lower back[end if] as you thrust into her. ";
		else:
			say "     ";
		say "Her anal muscles squeezes and tugs at your manhood as you thrust it into her, her body clearly longing for a good buggering. And you're more than happy to give it to the lovely mare. Moving overtop of her, you cup one of her breasts in your hand while supporting yourself with the other arm. She gives a soft neigh as you tweak her nipple and you can feel rectum clench down around you in delighted response. After playing with her tits for a while, you move your hand back between her legs to finger her clit and stuff her cunny with a few probing digits.";
		say "     As you fuck her, she moans about how much she loves being a naughty mare and getting it up the ass. 'I've been having so mmm-much kinky fun since I've gotten here. If it weren't for you-oooo! and the girls here helping me, I'd be missing -ohhh- out on all this fun. So go ahead, baby. Pound that ass of mine!' she neighs, grinding back against you harder as you can feel the quiver of her cunt around your fingers on the edge of orgasm. Smiling at how well things have worked out, your pace quickens and you unleash your hot [cum load size of player] load into the black beauty beneath you moments after her own climax hits. You nuzzle and nip at her neck as you send shot after shot into her bowels[if cocks of player > 1] and across her ass and back[end if] until your balls are drained. You slip your softening member from her pussy and makes sure to wipe it clean before letting you return to the club. She follows you out soon after, having made sure the room's ready for the next stripper girl who needs a private space.";
	increase fonyxanalcount by 1;

to femonyxsex4:
	say "     Eagerly obliging your request, Onyx is already lowering herself[if scalevalue of player > 3] under you[end if] to more easily access your assets, eager digits parting any obstruction in her way to expose your [cunt size desc of player] cunt[sfn] before her curious gaze.";
	say "     '[one of]Oh[or]Hm[or]Ah[at random], [one of]somebody's eager to see me[or]looks like you're all ready for a bit of fun[or]lets get this party started[at random]!' Grinning, a digit caresses along the entrance of[if cunts of player > 1] one of[end if] your portal[sfn], slowly sinking it past your supple lips and making you writhe with every irreverent twitch until you're made nice and wet for her.";
	say "     The equine continues to tease your for a while longer before she starts attending to your need directly, closing in to let her tongue take the place of the finger. Her lips embracing your nethers, her thick tongue only briefly tests your ability to accommodate it before she plunges the writhing organ as far as she can, soon building a method of firmly tonguing you.";
	say "     Soft moans vibrating against her flesh, the lady can't help but idly fondle herself as she attends to your need, slick, worming tongue grinding itself against your passage. Your breath becomes increasingly shallow as you're progressively wracked by the throes of your imminent bliss, as does her voracious need to see it becomes more dire.";
	if cocks of player > 0:
		say ". Shall you attempt to pull yourself free and cum on her at the last second?";
		if player consents:
			say "     Unable to hold back any longer, you wrench yourself free of the equine's[one of] surprised[or][stopping] lips and aiming your [cock size desc of player] dick[smn] to her face before you're set off. Your [cum load size of player] exploding from your previously unattended cock[smn], [if cocks of player > 1]they stain[else]it stains[end if] Onyx's face and torso[if cock width of player > 18] until she's utterly drenched in the fluid[end if]. Obliging this embarrassing relegation, she idly licks clean along the length of your softening organ once your bliss starts dying down.";
			say "     '[one of]Tsk[or]Hmpf[or]Oh[at random], [one of]now I'm going to have to go and clean myself up[or]you just had to make a mess[or]you sneaky little imp[at random]";
		else:
			say "     Wet sounds of her persistent, deliberate attendance lingering for only a little while longer, it's more than enough to set you off, the equine loudly sucking you clean of your juices as her lips tightly embraces your cunt. Your [cum load size of player] load exploding from your previously unattended dick[smn], [if cocks of player > 1]they[else]it[end if] waste[smv] your release on the floor. Onyx manages to prolong your bliss for a little while longer until it finally dies down and she pulls herself free of you.";
			say "     '[one of]Ah[or]Mmm[or]Hm[at random], [one of]I hope you had as much fun as I did, sweetie[or]hopefully that'll keep your urges at bay[or]I can see you were very eager to see me[at random]";
	else:
		say "     Wet sounds of her persistent, deliberate attendance lingering for only a little while longer, it's more than enough to set you off, the equine loudly sucking you clean of your juices as her lips tightly embraces your cunt";
		if cocks of player > 0:
			say ". Your [cum load size of player] load exploding from your previously unattended dick[smn], [if cocks of player > 1]they[else]it[end if] waste[smv] your release on the floor";
		say ". Onyx manages to prolong your bliss for a little while longer until it finally dies down and she pulls herself free of you.";
		say "     '[one of]Ah[or]Mmm[or]Hm[at random], [one of]I hope you had as much fun as I did, sweetie[or]hopefully that'll keep your urges at bay[or]I can see you were very eager to see me[at random]";
	say "!' Grinning, she takes a moment to help you clean yourself off before she moves to take care of herself and the room. Stepping out, back into the main area, it's only a few minutes before she leaves as well, cleaned up and ready to attend the customers";

to femonyxsex5:
	say "     After that very sexy warm-up, Onyx cuddles up close to you, running her hands over your [bodydesc of player] body. She nuzzles your ear and nibbles softly with her flat teeth. '[if XP of Onyx is 31]Here, let me show you one of the fun things I've learned from the other girls,' she whispers tantalizingly[else]And I think you were asking for another dance, weren't you, sexy?' she whispers teasingly[end if] as she gently presses you down into a seat. Sliding into your lap, she grinds her shapely buttocks down onto your manhood. You stiffen quickly as she continues to slide and grind down onto you.";
	say "     As she gives you the lap dance, she stretches and sways her equine body in lovely ways. Sometimes she even raising up one leg in a very flexible stretch that puts her on erotic display for you. You're also treated to the tantalizingly lewd display of her shaking her breasts in front of your face[if XP of Onyx is 31]. You come to realize that her movements are partly in time to the music, making a dance out of this lap dance for her special patron. And while the timing's by no means perfect and her doesn't always match the rhythm, it is a profoundly arousing display nonetheless[else]. As before, she's doing her best to make a dance out of this lap dance for her special patron. She's gotten a little better at it as well, though this routine is still by no means completely refined[end if].";
	say "     She goes like this through a couple of songs, getting you good and rile up. And from the hot, wet juices dripping onto you, you can tell it's having a similar effect on her";
	if onyxlapdance is even:
		say ". And when she can't take any more, she drops to her knees between your legs just as the bass drops on the techno tune being played and plunges your [cock of player] meat into her equine muzzle. She sucks you to a moaning climax that blasts shot after shot down her throat while she fingers herself to orgasm. She makes sure to suck all your seed down and lick you clean before getting up and giving you a tongue-filled kiss.";
	else:
		say ". And when you can't take it any longer, you grab her hips just as another song is starting and plunge your [cock of player] meat into her heated cunt. She gives a neighing moan, squirming in delight in your lap as you bounce her vigorously. You cum hard, blasting shot after shot into her clenching tunnel, feeding your [cum load size of player] load into her equine belly. The feel of you seeding her sets her off and she gives a wild neigh of orgasmic release. You fuck her through her climax before finally sagging back in your seat. She gives you a tongue-filled kiss as she slowly, reluctantly, slips off your spent shaft.";
	say "     After getting you cleaned up and dressed again, she sends you off to the main club area while she tidies up the room for the next to use it. She comes out a few minutes later back in her skimpy outfit and tantalizing the other patrons with her shapely body.";
	increase onyxlapdance by 1;


Section 5 - Endings

when play ends:
	if Onyxmareslut is 3:
		say "     Your time at the Stables has been surprisingly pleasant, once you stopped fighting your purpose and your captivity, you came to really enjoy being bound and helpless for all the stallions to use. And use you they did! You had many visitors at first from among the stallions, though your favorite was the big black stallion who captured you in the first place. It wasn't long before you begin responding to your new name, 'Obsidian', and loving your equally sexy new black furred mares body, and once the training was over and you are finally released from the training stall, you make sure to thank Onyx very personally for his help in making you such a sexy little mare. So much so that he had trouble walking for several days afterwards, much to the amusement of his fellow stallions. Eventually though you settle down to your new life as a rather powerful and sexy mareslut, and with your enhanced submissiveness you find you have a real strong client base among those who like to dominate their partners and tie them up. Of course eventually you are shifted over to work with some of the breeding mares more often, and you look back on that time fondly as you sit with your many black foals gathered around you and grin at just how many of them look like that handsome young stallion that still visits you often... and recall how glad you are that you convinced him to stay in the Stables like a good horsey, and how glad you are that he did the same to you as well!";
	else if Onyxboislut is 3:
		say "     Your time at the Stables has been surprisingly pleasant, once you stopped fighting your purpose and your captivity, you came to really enjoy being bound and helpless for all the stallions to use. And use you they did! You had many visitors at first from among the stallions, though your favorite was the big black stallion who captured you in the first place. It wasn't long before you begin responding to your new name, 'Obsidian', and loving your equally sexy new black furred stallionboi body. And once the training was over and you are finally released from the training stall, you make sure to thank Onyx very personally for his help in making you such a sexy little manwhorse. So much so that you have trouble walking for several days afterwards, much to the amusement of his fellow stallions. Eventually though, you settle down to your new life as a rather girly and sex-hungry stallionboi. And with your enhanced submissiveness, you find you have a real strong client base among those who like to dominate their male partners and tie them up. Of course, eventually you are shifted over to work with many of the other stallionbois and eagerly take your position as one of the most sub among them, letting them play at being studs by fucking you until you pass out, overflowing with the cum from all your loving friends. Your big, handsome young stallion still visits you often to remind you that you still belong to him. At these times more than any other, you recall how glad you are that you convinced him to stay in the Stables like a good horsey, and how glad you are that he did the same to you as well!";


[
[ XP of Onyx = consolidated quest content ]
[ 0 = not met ]
[ 1 = talked (keys available) ]
[ 2 = got keys ]
[ 3 = unlocked cage but confused ]
[ 4 = talked to Daisy, plan to free Onyx (locket available) ]
[ 5 = found locket ]
[ 6 = shown locket, moved to Library ]
[ 7 = talked at Library, still uncertain]
[ 8 = gave blow job to calm nerves (not stallion locked) ]
[ 10-19 = Freed stallion - Dom]
[ cock length ~ 20? ]
[ 10 = gave oral again (random - stallion locked) ]
[ ... ]
[ 10-29 = Freed stallion - Sub]
[ cock length ~ 16? ]
[ 20 = made to give oral (stallion sub locked) ]
[ 21 = sex w/sub stallion (vag or anal) ]
[ ... ]
[ 30-49 = Freed mare (Palomino) ]
[ 31 = Fucked mare ]
[ 32 = Received lap dance ]
[ ... ]
[ 50 = talked to Daisy, plan to have Onyx stay ]
[ 51 = talked to Onyx about staying - fuck to lock him in ]
[ 60-79 = Stabled stallion ]
[ 60 = fucked, Onyx locked as stallion ]
[ ... ]
[ 80-99 = Stabled mare ]
[ 80 = fucked, Onyx locked as mare ]
[ ... ]
[ 100 = ban locked ]

***Previous variable system expanded out - for revision/testing - to be removed when proven functional***

	XP of onyx is 0
All 0's - not met

	XP of onyx is 1
met, keys unlocked
onyxtalk = 1
onyxkeys = 1
equineguardpost unresolved

	XP of onyx is 2
got keys
onyxkeys = 2
equineguardpost resolved

	XP of onyx is 3
just freed
onyxtalk = 2
onyxquest = 1


	Path B - opt to make him leave
	XP of onyx is 4
talked to Daisy - opt to make him leave
onyxkeys = 3
Stablestoreroom is unresolved

	XP of onyx is 5
got locket
onyxkeys = 4
Stablestoreroom is resolved

	XP of onyx is 6
show locket (move to Library)
onyxquest = 2
move Onyx to Grey Abbey Library
now the vmusings of Onyx is "[onyxmusing]";
(HP of Onyx is 0)

	XP of onyx is 7
talked at library
HP of Onyx = 1

	XP of onyx is 8
gave oral sex (not Stallion locked)
HP of Onyx = 2

		Path B1 - Onyx stallion (free)
	XP of onyx is 10 (10 - 29)
gave oral again (may prompt this transition)
HP of Onyx = 3
onyxquest = 4 (stallion-locked)
		END PATH B1


		Path B2 - Onyx mare (free)
	XP of onyx is 30 (30 - 49)
Path does not exist yet, but slot should be prepared



	Path A - opt to make him stay

	XP of onyx is 50:
talked to Daisy - opt to make him stay
onyxkeys = 5

	XP of onyx is 51
convince to stay (not yet sexed)
onyxtalk = 4

		Path A1 - Onyx stallion (Stables)

	XP of onyx is 60 (60 - 79)
sex w/Onyx (stallion)
onyxquest = 6
{ Onyxmareslut or Onyxboislut = 1+ )
		END PATH A1 (except for slut variables - independent and unchanged)

		Path A2 - Onyx mare (Stables)

	XP of onyx is 80 (80 - 99)
sex w/Onyx (mare)
onyxquest = 5
		END PATH A2

	END PATH A





	XP of onyx is 100
Ban locked - cleared and reset upon reloading (for fresh reminder)

[ Onyxtalk ]
[ 0 = not met ]
[ 1 = talked (keys avail.) ]
[ 2 = just freed ]
[ ... ]
[ 100 = Ban locked ]


[ Onyxquest ]
[ 0 = trapped ]
[ 1 = freed - undecided ]
[ 2 = library in limbo ]
[ 3 = F Palomino dancer - unused at present ]
[ 4 = M Dommy at Library ]
[ 5 = F at Stables ]
[ 6 = M at Stables ]

[ HP of Onyx ]

[ Onyxkeys ]
[ 0 = not talked ]
[ 1 = keys avail. (talked once) ]
[ 2 = got keys ]


[ Onyxfucked ]
[ onyxdma ]
[ onyxdfa]
[ onyxhappytalk ]
[ Onyxmareslut ]
[ Onyxboislut ]
]

Onyx ends here.
