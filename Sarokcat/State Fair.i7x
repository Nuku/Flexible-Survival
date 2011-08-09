State Fair by Sarokcat begins here.

"Adds an adventuring area to Flexible Survival with a unhappy lion and a game."

Section 1- State Fair enviornment

State fair is a room. It is fasttravel. 

The description of State fair is "The entrance to the state fair, colourful banners and signs plaster the large open area. Numerous food shops and game booths are set up near the large ticket booth. The fair entrance seems relatively deserted, and the ticketing area is wide open, allowing people to come and go as they please. While most of the shops and booths are closed up, one of the nearby game booths seems to still be open for business, with an automatic prize dispensing system set up, it looks like the prizes have been somewhat mixed up though. In contrast to the eerie emptiness of the fair entry, you can see some signs of activity and hear some fair noises coming from off to the west down the midway.";

Midway is a room.
Midway entry is a door. "The midway stretches to the west.". It is dangerous.

West of Midway entry is Midway.
West of State fair is Midway entry.

The marea of Midway entry is "Midway".

boristalk is a number that varies.
Borisquest is a number that varies.
Christyquest is a number that varies.
Lastborisfucked is a number that varies. Lastborisfucked is usually 250.
borisfucked is a number that varies. borisfucked is usually 0.

Boris the lion is a man.
The description of Boris the lion is "Standing over by the side of the deserted ticket booth is a person dressed up as a very recognizable cartoon character that is always used to promote the fair.  Even you recognize that the person is dressed up as  the (semi)famous Boris the lion suit.  Moving closer to the familiar face, you realize as he turns to look at you that the suit is far more realistic then any you suit you have ever seen before, a closer look shows there is no loose areas of skin on the costume, and no signs of seams anywhere. You come to the conclusion that whatever it may have once been, it isn[apostrophe]t a suit anymore, its Boris the lion!";
Boris the lion is in State fair.

The conversation of Boris the lion is { "[boristalking]" };

To say boristalking:
	if boristalk is 0:
		say "'Hey there and welcome to the... oh who am I kidding,' the lion costumed man says with a sigh, before raising one of his overlarge paws to rub at his face. 'Look I don[apostrophe]t know who you are, or what you are doing here, but trust me, you probably don[apostrophe]t want to be here. Heck I don[apostrophe]t really want to be here anymore, but its not like I can just leave.'  Seeing your slightly confused look he sighs and explains. 'Look it[apostrophe]s like this, you see me?' he gestures at his plush furred form. 'I showed up for work early the other day, put on the costume, and now well. This is what I am, I can[apostrophe]t even really remember my old name anymore, and I have a strange desire to hunt down that bastard Arthur the Antelope,' He growls for a minute, staring off into space, before seeming to come back to himself. [line break]";
 		say "'Gah see? I know and you know that there isn[apostrophe]t really an Arthur the antelope out there for me to hunt down, but It still gets to me.' the lion sighs heavily, 'So yeah you might as well just call me Boris now, seems more appropriate then anything else these days.' He pauses for a minute in thought, before shaking himself and continuing. 'So yeah, if you think this is strange, you really don[apostrophe]t want to see what the rest of the fair is like.  Things have gotten wild in there, I swear I saw some sort of latex creatures hanging out near the house of wax, the fun house was taken over by some kind of crazy animalistic clowns,' Boris pauses for a minute to shudder at the thought of clowns, 'And to top it all off some of the fair prizes are running around on their own attacking people. Giant stuffed animals running around and jumping on people is definitely one of the weirder things I ever saw, course the fact that the people turned into more stuffed animals as well is pretty  damn weird too if you ask me.'  Boris pauses for a second, before shaking his overlarge furred head, 'Just trust me on this, you really don't want to go out there.' His warning delivered, Boris the lion returns to leaning against the ticket booth and staring off into space, occasionally sighing.";
		increase boristalk by 1;
		stop the action;
	if boristalk is 1:
		say "[one of]'Back again? don[apostrophe]t say I didn[apostrophe]t warn you.'[or]Seeming startled out of some inner fantasy, Boris looks around for a second before his eyes manage to focus on you, 'Hey kid, you seen an evil antelope go by here? Name of Arthur?'[or]'Heeey there! I[apostrophe]m Boris the lion! How can I help you today!'[or]'Hey there and welcome to the fair, please enjoy your stay with us.' he says absentmindedly.[or]'There[apostrophe]s  poachers in the pride-lands again!'[or]'Strangely enough, it[apostrophe]s cooler out here in fur then it was when it was a damn suit'[or]'I knew I should have quit this job last month when I had the chance....'[or]'Watch out for the stuffed prizes, well unless you have some strange fantasy about being a plush toy,' Boris warns, 'If you do though... well you came to the right place,'[or]'You know, it[apostrophe]s funny,' Boris says with a thoughtful expression 'I can[apostrophe]t really remember the last time the fair was this busy.'[or]'There[apostrophe]s plenty of food and stuff lying around in the fair' Boris comments, waving a half eaten hot dog at you, 'Just stay away from the cotton candy if you know what[apostrophe]s good for you.'[or]'If you find a way out of this place, mind letting me know?' Boris says with a sigh, 'Got to be plenty of places that could use a new mascot out there.'[or] 'Pride life is the best!' Boris exclaims, before catching himself and sighing.[or]'Suffering Savannah!'[or]'Man I wish someone had been wearing the Christy the lioness suit the other day...' he mutters to himself, before blushing and looking embarrassed.[or]'You aren[apostrophe]t a poacher are you? I hate poachers' Boris says with a growl.[at random]";
	if boristalk is 2:
		say "'Any luck with helping me out with my little, 'problem'?' Boris asks you hopefully";
	if boristalk is 3:
		say "'You are definitely the best friend ever, I can[apostrophe]t believe how much better I feel now that you helped me out, if I can ever do anything to help you out you just let me know!' The happy lion says with a smile on his muzzle'";




borisfucking is an action applying to nothing.

Understand "fuck boris the lion" as borisfucking;
Understand "fuck boris" as borisfucking;

check borisfucking:
	if boris is not visible, say "who?" instead;



carry out borisfucking:
	if borisquest is 0:
		say "'Sorry hun, it[apostrophe]s not that I might not want to, but well, you see this WAS intended to be a family friendly fair.' Boris says with a sigh, 'And since we couldn't have the kiddies asking questions about things like that... well lets just say I[apostrophe]m currently ill equipped to do much of anything with you.' he says with a sad gesture to his featureless furred crotch.";
		stop the action;
	if borisquest is 1:
		say "Sorry, I am still kinda ill equipped for that kinda activity' he says sadly. He seems to perk up however when you tell him about the scene you witnessed in the fair, and thinks about the possiblities.  'Well that sounds interesting,' He says thoughtfully, 'I kinda wondered what was going on there you know, its not like we gave away anatomically correct plush toys either...  Tell you what, if you can help find me something similar I definitely think it would be worth giving it a shot, it sounds like it might hurt a bit, but I[apostrophe]m willing to take the risk, and I would definitely owe you big time.";
		now boristalk is 2;
		stop the action;
	if borisquest is 2:
		say "sadly relating to Boris what you found in the fair he gives a sigh, 'Knew it couldn[apostrophe]t be just that easy now could it? Well maybe you will find another stash around out there somewhere, or maybe there is someplace else in town you could find something like that... we only need to find me one after all, it shouldn[apostrophe]t be TOO hard in a city this size...";
		increase borisquest by 1;
		stop the action;
	if borisquest is 3:
		say "sadly you again relate to Boris your total lack of success in his quest to be complete, and he gives a sad sigh, 'Knew it couldn[apostrophe]t be just that easy now could it? Well maybe you will find another stash around out there somewhere, or maybe there is someplace else in town you could find something like that... we only need to find me one after all, it shouldn[apostrophe]t be TOO hard in a city this size...";
		stop the action;
	if borisquest is 4:
		say "His eyes goes wide as he looks at the size of the toy you brought him,  'Wow' Boris says as he takes it from you reverentially, 'This is for me? This is great!' He says as he turns it over in his hands, 'Feline style too! And god I only wish I used to be hung like that!'  Boris turns to you with a large grin, 'I have to go try this on right away! It might take a while before its ready to go, but come back later and we can see how it went!' Boris says as he starts to turn away, then stops, 'Oh I almost forgot, I got you a couple things for helping me out like this,' he says as he gestures to a small package sitting next to the ticket booth.  Before you can thank him, he runs off with his new acquisition into one of the restrooms.  Soon you can hear his sharp growls and moans coming from the restroom, as he obviously begins fitting his new member, though its hard to tell whether the sounds are of pain or pleasure.";
		Add "food" to invent of player;
		Add "food" to invent of player;
		Add "water bottle" to invent of player;
		Add "water bottle" to invent of player;
		increase borisquest by 1;
		increase boristalk by 1;
		now lastborisfucked is turns;
		stop the action;
	if lastborisfucked - turns is less than 6:
		say "'Sorry friend,' Boris says with regret, 'I may be as eager as you seem to be to enjoy my new cock, but it still needs a bit of rest before it is ready and roarin to go again.'";
		stop the action;
	if borisquest is 5:
		if cocks of the player is greater than 0:
			if christyquest is 0:
				say "'Um, sorry friend,' Boris says, as she glances down at your [cock of player] cock, 'I may owe you a lot for what you[apostrophe]ve done, but if there is going to be cock involved in any fucking, well lets just say I would rather it be mine.' Boris says apologetically.  'I just don[apostrophe]t swing that way, if things were different...... hmm that gives me an idea.' Boris says as he eyes you thoughtfully.  'I think I know where there might be something that could help us both out a lot, since you are obviously interested in getting to know me better.' He says as he pats his newly acquired member, 'Since you went to such pains to find such a nice thing for me, it seems only fair I should find a way for you to try it out.' Boris finishes with a grin, 'You must have liked the look of it after all to pick such a nice one.  Anyways, ' He says, shaking himself as he gets back to the conversation at hand, 'Here is a key to the locker room we use here, there should be a box there marked 'Christy'.  If you bring that back here we can see about having some real fun.' Boris says with a wink, his muzzle stretched out in a lewd grin as he sends you on your way.";
				now christyquest is 1;
				stop the action;	
			if christyquest is 1:
				say "'Sorry friend,' Boris says with a shrug, 'I still don[apostrophe]t swing that way.  But if you really want to try out my new addition you can go check out that locker room I told you about.'";
				stop the action;
			if christyquest is 2:
				say "'Sorry, I STILL don[apostrophe]t swing... wait what do you have there?' Boris says as you approach him, his eyes catching on the rather bulky box you brought back.  'You found it! Wonderful!' He exclaims as he snags the box from you and sets it down on the ground beside him. You watch with curious interest as he deftly undoes the ties holding the boxes closed with his large paws, and opens the box up revealing some kind of light gold coloured fabric inside.  'Ah here she is!' Boris says as he carefully gathers up the fabric and lifts it up, you watch as it unfolds into a similar looking costume to the one Boris became, only slightly smaller and lacking in the mane area, amusingly enough it also seems to have a black pawprint shaped mark on the costumes ass.  'Christy the Lioness! Man I missed her! I mean, not that I really ever knew the real one... but uh.. you know what I mean.' Boris says, a wide grin stretching across his leonine face as he shows the costume to you, 'Now hey, since you obviously want to be with Boris so much since you  went to such great efforts to help get me properly equipped, and you keep comin over and wanting to play with the new equipment even though you are pretty 'equipped' yourself.  I figure you must really want to make this happen, so now we have the perfect solution!' Boris says as he flourishes the fabric costume.  'You put this on and I figure it should work out for both of us, if whatever changed me is still around, I should get a Christy to play with for a while, and you, you should get a Boris to play with! Either way just slip it on and even if it doesn[apostrophe]t quite work as intended, I promise to let you play with the new 'little boris' as much as you want? What do you say?' Boris asks as he looks at you hopefully.";
				if player consents:
					say "'You will? That[apostrophe]s wonderful!' Boris says exuberantly, 'I just knew you would be as turned on by the idea as I was!' He says, the tip of his new member poking out of its sheath showing you just how turned on Boris is by the idea.  He quickly leads you over to a table, where he begins to help you into the surprisingly realisitic looking lioness costume. You shudder as your feet slip all too easily into the costume and your legs settle inside, the costume tingling where it touches your flesh, as it almost seems to tighten up around your legs. While Boris helps you get the costume up over your midsection, you realize the tingling in your legs seemed to have lessened somewhat, though now the rest of your body seems to be tingling slightly... Still you stretch out your lion paws in relief, glad that they no longer feel quite so strange. For a second something about your having lion paws bothers you, but you are distracted by Boris slipping the costume up over your shoulders, and the way it makes your chest tingle.  'Only one last bit left to go.' Boris says as he moves to position the headpiece, his hands on your body making your lionesses tail swish happily behind you.[line break]";
					say "For a minute you find yourself a little worried at the fact that you have a lioness tail and hindpaws, and you bring your pawlike hands down to stroke it for a second in confusion.  You feel sure that you didn[apostrophe]t have one just a little bit ago, or did you? You find yourself wondering as boris prepares the face, but it seems hard to remember why you wouldn[apostrophe]t have one, since all lionesses have tails like that, and since you are a lioness how could you ever not have had one?  You don[apostrophe]t have long to ponder this question, though, as Boris finally has the headpiece ready to slip onto you, and your mind seems to grow even fuzzier as your face tingles and conforms to the costume.  Suddenly you blink as someone touches you, you look over to the side and sigh in recognition, its your Boris the lion! You feel like you missed him so much,  which seems strange since weren[apostrophe]t you just doing something for him.. in some kind of fair?[line break]";
					say "'Just like mine, as I thought. Don[apostrophe]t worry though Christy, I think I know what will work.' Boris says, distracting you from your thoughts as you realize he is addressing you.  Of course you find yourself thinking, I[apostrophe]m Christy the lioness, how could I ever have forgotten that, you blink in surprise at the strangeness of forgetting your own name, hardly even noticing as Boris moves behind you.  You do notice however, when he puts one of his large paws on your back and begins to push your front down over the table, you would resist, but it just seems right to let Boris do whatever it is he wants, he is your lion after all.   While you try to absorb that latest though, suddenly you feel something pressing up between your legs, and you look down to realize that pressed up against your featureless crotch is an amazingly sized lion cock!";
					say "Something seeming totally wrong about this picture, even to your confused mind, you open your mouth to protest, only to have Boris begin pressing the point of his large cock painfully into your empty crotch making you gasp.  'Now don[apostrophe]t worry, this might sting a bit at first,' You hear Boris say with amusement behind you, as his hands grip you tightly keeping you in place bent over the table.  You gasp and cry out in pain as his hard member presses into you roughly, you writhe underneath him in resistance. But just as you are about to beg for him to stop, you feel strange changes in your body, and you feel your crotch seem to split open around his member, which is now pressing directly into your body!  You moan as all the painful sensations you were feeling explode into pleasureable ones instead, your chest seems to explode in two spots of pleasure too as you brace yourself against the table, positioning yourself better for that wonderful cock. [line break]";
					say "As your new female passage finishes forming around him, Boris shifts and grips your hips tightly as he begins to fuck you in earnest, causing you to gasp and moan as the intense pleasure shoots through you.  Without hesitation you find yourself giving yourself over to these new feelings, and find your eyes closing as you picture the handsome Boris fucking you in your mind.  Your mind wanders in a sea of pleasure, as your new sensitive breasts brush across the table with each thrust, and you find yourself recalling all your other wonderful times with Boris as you grew up and chased villians together, and how you almost caught that awful Arthur the Antelope red handed several times.  But of all your strangely fuzzy memories you think this one is definitely the best ever, you find yourself deciding as the pleasure builds up inside you, and you cry out as your body shudders with an intense orgasm.  Boris roars behind you, as  your new pussy which was literally made for his new organ convulses tightly around it, bringing him to orgasm as his he shoots his hot seed deep into your body.  Yes you find yourself thinking, your body tingling as his seed fills you, the memory of when Boris the lion finally took his lioness Christy and made her his, now and forever... is definitely going to be your favorite memory for a long time to come, though you look forward to making many more pleasureable memories with Boris as soon as you both have recovered...";
					now christyquest is 4;
					decrease humanity of player by 100;
				otherwise:
					say "'That[apostrophe]s too bad,' Boris says with a sigh as he lowers the costume back into the box and carefully packs it away.  'I was really looking forward to putting the cock you got for me to good use.'";
					Now christyquest is 3;
					stop the action; 
			If christyquest is 3:
				say "'Trying again and still with a cock? Am I just that irresistible?' Boris says with a smug smile,  'Well if you need me so badly you know what to do..' He says as he reaches back and lifts up the other costume once again.  Do you put it on?";
				if player consents:
					say "You will? That[apostrophe]s wonderful!' Boris says exuberantly, 'I just knew you would be as turned on by the idea as I was!' He says, the tip of his new member poking out of its sheath showing you just how turned on Boris is by the idea.  He quickly leads you over to a table, where he begins to help you into the surprisingly realisitic looking lioness costume. You shudder as your feet slip all too easily into the costume and your legs settle inside, the costume tingling where it touches your flesh, as it almost seems to tighten up around your legs. While Boris helps you get the costume up over your midsection, you realize the tingling in your legs seemed to have lessened somewhat, though now the rest of your body seems to be tingling slightly... Still you stretch out your lion paws in relief, glad that they no longer feel quite so strange. For a second something about your having lion paws bothers you, but you are distracted by Boris slipping the costume up over your shoulders, and the way it makes your chest tingle.  'Only one last bit left to go.' Boris says as he moves to position the headpiece, his hands on your body making your lionesses tail swish happily behind you.[line break]";
					say "For a minute you find yourself a little worried at the fact that you have a lioness tail and hindpaws, and you bring your pawlike hands down to stroke it for a second in confusion.  You feel sure that you didn[apostrophe]t have one just a little bit ago, or did you? You find yourself wondering as boris prepares the face, but it seems hard to remember why you wouldn[apostrophe]t have one, since all lionesses have tails like that, and since you are a lioness how could you ever not have had one?  You don[apostrophe]t have long to ponder this question, though, as Boris finally has the headpiece ready to slip onto you, and your mind seems to grow even fuzzier as your face tingles and conforms to the costume.  Suddenly you blink as someone touches you, you look over to the side and sigh in recognition, its your Boris the lion! You feel like you missed him so much,  which seems strange since weren[apostrophe]t you just doing something for him.. in some kind of fair?[line break]";
					say "'Just like mine, as I thought. Don[apostrophe]t worry though Christy, I think I know what will work.' Boris says, distracting you from your thoughts as you realize he is addressing you.  Of course you find yourself thinking, I[apostrophe]m Christy the lioness, how could I ever have forgotten that, you blink in surprise at the strangeness of forgetting your own name, hardly even noticing as Boris moves behind you.  You do notice however, when he puts one of his large paws on your back and begins to push your front down over the table, you would resist, but it just seems right to let Boris do whatever it is he wants, he is your lion after all.   While you try to absorb that latest though, suddenly you feel something pressing up between your legs, and you look down to realize that pressed up against your featureless crotch is an amazingly sized lion cock!";
					say "Something seeming totally wrong about this picture, even to your confused mind, you open your mouth to protest, only to have Boris begin pressing the point of his large cock painfully into your empty crotch making you gasp.  'Now don[apostrophe]t worry, this might sting a bit at first,' You hear Boris say with amusement behind you, as his hands grip you tightly keeping you in place bent over the table.  You gasp and cry out in pain as his hard member presses into you roughly, you writhe underneath him in resistance. But just as you are about to beg for him to stop, you feel strange changes in your body, and you feel your crotch seem to split open around his member, which is now pressing directly into your body!  You moan as all the painful sensations you were feeling explode into pleasureable ones instead, your chest seems to explode in two spots of pleasure too as you brace yourself against the table, positioning yourself better for that wonderful cock. [line break]";
					say "As your new female passage finishes forming around him, Boris shifts and grips your hips tightly as he begins to fuck you in earnest, causing you to gasp and moan as the intense pleasure shoots through you.  Without hesitation you find yourself giving yourself over to these new feelings, and find your eyes closing as you picture the handsome Boris fucking you in your mind.  Your mind wanders in a sea of pleasure, as your new sensitive breasts brush across the table with each thrust, and you find yourself recalling all your other wonderful times with Boris as you grew up and chased villians together, and how you almost caught that awful Arthur the Antelope red handed several times.  But of all your strangely fuzzy memories you think this one is definitely the best ever, you find yourself deciding as the pleasure builds up inside you, and you cry out as your body shudders with an intense orgasm.  Boris roars behind you, as  your new pussy which was literally made for his new organ convulses tightly around it, bringing him to orgasm as his he shoots his hot seed deep into your body.  Yes you find yourself thinking, your body tingling as his seed fills you, the memory of when Boris the lion finally took his lioness Christy and made her his, now and forever... is definitely going to be your favorite memory for a long time to come, though you look forward to making many more pleasureable memories with Boris as soon as you both have recovered...";
					now christyquest is 4;
					decrease humanity of the player by 100;
				otherwise:
					Say "'Well now your just teasing me,' Boris says as once more places the costume up, sighing, 'And I was so looking forward to having some fun too.'";
					stop the action;
		otherwise:
			say "borissexscene to be smexified";
			now lastborisfucked is turns;	
			stop the action;


when play ends:
	if christyquest is 4:
		say "When you and your pride leader are finally recovered from the decimated city, there seems to be some talk about what to do with the two of you, you are adamant about remaining together with Boris, and he is just as reluctant to be separated from you.  You are stuck in military custody for a while as a bit of a novelty, until finally somehow word gets out to some people in the entertainment industry about the two of you.  Before you know it they have arranged for you and Boris to be released, and offered you both jobs, you are somewhat unsure, but Boris seems happy to accept, and soon you are starring in your own live action shows, reliving the best times of your life as you act them out for the cameras. You find yourself  loving your new job, as you get to enjoy being yourself, and chasing villians for the audience seems to come to you naturally, even though some of the themes are now more adult then you remember.  Whatever else happens though, you are always looking forward to the next time Arthur the Antelope shows up on the set, while you know its just a costume and not the real Arthur, nothing gives you quite as much of a thrill as foiling his twisted schemes, and maybe just maybe, you will manage to catch him for good one of these times! There is talk of movies and touring, which is nice enough, but still your favorite times are the times when you and Boris get to spend some alone time in your small pride making even more close memories."





Carnival game is a man.
The description of Carnival game is "standing open and apparently ready for business, one of the automated carnival games is set up here and seems to be working, although who knows what kind of prizes it will hand out in the current circumstances.";
Carnival game is in State fair.


Lastgameplay is a number that varies. Lastgameplay is usually 250.
gameplay is a number that varies. gameplay is usually 0.

gameplay is an action applying to nothing.

understand "use game" as gameplay;
understand "try game" as gameplay;
understand "play game" as gameplay;
understand "win prize" as gameplay;

check gameplay:
	if Carnival game is not visible, say "what?" instead;


carry out gameplay:
	if lastgameplay - turns is less than 4:
		say "stepping up to the game booth, you hit the button to activate the contest game, only to sigh when nothing happens, the game must not have reset yet, you should try again later..";
		stop the action;
	otherwise:
		now lastgameplay is turns;
		say "Stepping up to the gaming booth, you hit the button and all sorts of targets pop up and go whizzing around the booth as happy music plays. Quickly you snatch up the fake gun attached to the booth and shoot for all your worth!";
		let bonus be (( the Dexterity of the player minus 10 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus]: [diceroll + bonus], ";
		increase diceroll by bonus;
		if diceroll is greater than 14:	
			say "Your swift reflexes are the death of all little cardboard targets! They will learn to fear your awesome might! Oh and hey you won a prize too!";
			let prizegift be a random number from 1 to number of filled rows in the table of random critters;
			choose row prizegift from the table of random critters;
			if there is a loot entry:
				if loot entry is not " ":
					add loot entry to invent of player;
					say "you acquired 1 [loot entry]";
					add "dirty water" to invent of player;
					say "you acquired some dirty water!";
				otherwise:
					add "dirty water" to invent of player;
					say "you acquired some dirty water!";
			otherwise:
				add "food" to invent of player;
				say "You acquired some carnival food!";	
		otherwise:
			say "The game buzzes at you derisively, as you lower your plastic weapon in defeat, the evil cardboard and plastic menaces will apparently live to see another day, though you resolve to come back and try again later as you walk away.";





State Fair ends here.


