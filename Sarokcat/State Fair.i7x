Version 1 of State Fair by Sarokcat begins here.
[Version 1.1 - Added convo note about Artemis]

"Adds an adventuring area to Flexible Survival with an unhappy lion and a game."

Section 1 - State Fair environment

Table of GameRoomIDs (continued)
Object	Name
State Fair	"State Fair"

State Fair is a room. It is fasttravel.
The earea of State Fair is "Fair".

The description of State Fair is "     The entrance to the state fair. Colorful banners and signs plaster the large open area. Numerous food shops and game booths are set up near the large ticket booth. The fair entrance seems relatively deserted, and the ticketing area is wide open, allowing people to come and go as they please. While most of the shops and booths are closed up, one of the nearby game booths seems to still be open for business, with an automatic prize dispensing system set up. It looks like the prizes have been somewhat mixed up though. In contrast to the eerie emptiness of the fair entry, you can see some signs of activity and hear some fair noises coming from off to the west down the midway.".

instead of sniffing State Fair:
	say "The scents of popcorn and cotton candy and other treats fill the air. Beneath those enticing scents lie the strange scents of arousal, as if those musky scents are trying to hide beneath them. Among those scents, you catch the whiff of [one of]several felines[or]a rubbery scent[or]plush toys[or]male arousal[or]female heat[or]manly sweat[or]lupine cum[at random]";

Borismate is a number that varies.
boristalk is a number that varies.
Borisquest is a number that varies.
Christyquest is a number that varies.
borisfucked is a number that varies. borisfucked is usually 0.
BorisArtemistalk is a truth state that varies. BorisArtemistalk is usually false.

Table of GameCharacterIDs (continued)
object	name
Boris the lion	"Boris the lion"

Boris the lion is a man.
The description of Boris the lion is "     Standing over by the side of the deserted ticket booth is a person dressed up as a very recognizable cartoon character that is always used to promote the fair. Even you recognize that the person is dressed up as the (semi)famous Boris the lion suit. Moving closer to the familiar face, you realize as he turns to look at you that the suit is far more realistic then any you suit you have ever seen before. A closer look reveals that there are no loose areas of skin on the costume and no signs of seams anywhere. You come to the conclusion that whatever it may have once been, it isn't a suit anymore, it's Boris the lion!".
The conversation of Boris is { "Welcome!" }.
Boris the lion is in State Fair.

the scent of Boris is "Boris smells faintly of funfur and lions[if borisquest is 5]. The scent of his new maleness is strong around him[end if].".

instead of conversing the Boris:
	[puts Plush Lion as lead monster in case of impregnation]
	repeat with y running from 1 to number of filled rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		if Name entry is "Plush Lion":
			now MonsterID is y;
			break;
	if boristalk is 0:
		say "     'Hey there, and welcome to the... oh, who am I kidding,' the lion-costumed man says with a sigh before raising one of his overlarge paws to rub at his face. 'Look, I don't know who you are or what you're doing here, but trust me, you probably don't want to be here. Heck, I don't really want to be here anymore, either, but it's not like I can just leave.' Seeing your slightly confused look, he sighs and explains. 'Look, it's like this. You see me?' He gestures at his plush-furred form. 'I showed up for work early the other day, put on the costume, and now, well, this is what I am. I can't even really remember my old name anymore, and I have a strange desire to hunt down that bastard Arthur the Antelope.' He growls for a minute, staring off into space, before seeming to come back to himself.";
		say "     'Gah, see? I know and you know that there isn't really an Arthur the Antelope out there for me to hunt down, but it still gets to me.' The lion sighs heavily. 'So yeah, you might as well just call me Boris now. Seems more appropriate than anything else these days.' He pauses for a minute in thought before shaking himself and continuing. 'So yeah, if you think this is strange, you really don't want to see what the rest of the fair is like. Things have gotten wild in there. I swear I saw some sort of latex creatures hanging out near the house of wax, the fun house was taken over by some kind of crazy, animalistic clowns,' Boris pauses for a minute to shudder at the thought of clowns, 'and to top it all off, some of the fair prizes are running around on their own attacking people. Giant stuffed animals running around and jumping on people is definitely one of the weirder things I've ever seen. [']Course, the fact that the people turned into more stuffed animals as well is pretty damn weird too if you ask me.' Boris pauses for a second before shaking his overlarge furred head. 'Just trust me on this, you really don't want to go out there.' His warning delivered, Boris the lion returns to leaning against the ticket booth and staring off into space, occasionally sighing.";
		increase boristalk by 1;
	else if companion of Player is rubber tigress and BorisArtemistalk is false:
		say "     'Oh, you ended up bumping into her,' the lion says as he points to your feline companion. 'I spotted her poking around and felt bad for her. None of the other critters running around would show her much interest, and some of the other tigresses were downright mean about it. I [if boristalk < 3]can[else]could[end if] kind of sympathize with her situation, you know? Anyhow, I'm glad she's got a friend.' He leans down and pets the tigress's head with his oversized, plush paw, causing her to purr happily before snuggling up against you and weaving around your legs for more scritches from you.";
		now BorisArtemistalk is true;
	else if boristalk is 1:
		say "     [one of]'Back again? Don't say I didn't warn you.'[or]Seeming startled out of some inner fantasy, Boris looks around for a second before his eyes manage to focus on you. 'Hey kid, you seen an evil antelope go by here? Name of Arthur?'[or]'Heeey there! I'm Boris the lion! How can I help you today!'[or]'Hey there, and welcome to the fair. Please enjoy your stay with us,' he says absentmindedly.[or]'There's poachers in the pride-lands again!'[or]'Strangely enough, it's cooler out here in fur than it was when it was a damn suit.'[or]'I knew I should have quit this job last month when I had the chance...'[or]'Watch out for the stuffed prizes - well, unless you have some strange fantasy about being a plush toy,' Boris warns. 'If you do, though... well, you came to the right place.'[or]'You know, it's funny,' Boris says with a thoughtful expression, 'I can't really remember the last time the fair was this busy.'[or]'There's plenty of food and stuff lying around in the fair,' Boris comments, waving a half-eaten hot dog at you. 'Just stay away from the cotton candy if you know what's good for you.'[or]'If you find a way out of this place, mind letting me know?' Boris says with a sigh. 'Got to be plenty of places that could use a new mascot out there.'[or]'Pride life is the best!' Boris exclaims before catching himself and sighing.[or]'Suffering Savannah!'[or]'Man I wish someone had been wearing the Christy the Lioness suit the other day...' he mutters to himself before blushing and looking embarrassed.[or]'You aren't a poacher, are you? I hate poachers,' Boris says with a growl.[at random]";
	else if boristalk is 2:
		say "     'Any luck with helping me out with my little [']problem[']?' Boris asks you hopefully.";
	else if boristalk is 3:
		say "     'You are definitely the best friend ever. I can't believe how much better I feel now that you helped me out. If I can ever do anything to help you out, you just let me know!' the happy lion says with a smile on his muzzle.";


the fuckscene of Boris is "[borisquestforcock]".

to say borisquestforcock:
	setmonster "Plush Lion";
	if boristalk is 0:
		say "     Perhaps you should introduce yourself first.";
	else if borisquest is 0:
		say "     'Sorry hun, it's not that I might not want to, but well, you see, this WAS intended to be a family friendly fair,' Boris says with a sigh, 'and since we couldn't have the kiddies asking questions about things like that... well, let's just say I'm currently ill-equipped to do much of anything with you,' he says with a sad gesture to his featureless furred crotch.";
		if furry is banned or girl is banned or guy is banned:
			say "(Completion of this quest requires furry, guy and girl content to be available. Sorry.)";
	else if borisquest is 1:
		say "     'Sorry, I am still kinda ill-equipped for that kinda activity,' he says sadly. He seems to perk up however when you tell him about the scene you witnessed in the fair, thinking about the possibilities. 'Well that sounds interesting,' he says thoughtfully. 'I kinda wondered what was going on there, you know. It's not like we gave away anatomically correct plush toys either... Tell you what, if you can help find me something similar, I definitely think it would be worth giving it a shot. It sounds like it might hurt a bit, but I'm willing to take the risk, and I would definitely owe you big time.'";
		now boristalk is 2;
	else if borisquest is 2:
		say "     Sadly relating to Boris what you found in the fair, he gives a sigh. 'Knew it couldn't be just that easy, now could it? Well, maybe you will find another stash around out there somewhere, or maybe there is someplace else in town you could find something like that? We only need to find me one, after all. It shouldn't be TOO hard in a city this size. Maybe try exploring in the seedier parts of town?'";
		increase borisquest by 1;
	else if borisquest is 3:
		say "     Sadly, you again relate to Boris your total lack of success in his quest to be complete, and he gives a sad sigh. 'Knew it couldn't be just that easy, now could it? Well, maybe you will find another stash around out there somewhere, or maybe there is someplace else in town you could find something like that? We only need to find me one, after all. It shouldn't be TOO hard in a city this size. Maybe try exploring in the seedier parts of town?'";
	else if borisquest is 4:
		say "     His eyes goes wide as he looks at the size of the toy you brought him. 'Wow!' Boris says as he takes it from you reverentially. 'This is for me? This is great!' he says as he turns it over in his hands. 'Feline style, too! And god I only wish I used to be hung like that!' Boris turns to you with a large grin. 'I have to go try this on right away! It might take a while before it's ready to go, but come back later and we can see how it went!' Boris says as he starts to turn away, then stops. 'Oh, I almost forgot. I got you a couple things for helping me out like this,' he says as he gestures to a small package sitting next to the ticket booth. Before you can thank him, he runs off with his new acquisition into one of the restrooms. Soon you can hear his sharp growls and moans coming from the restroom while he obviously begins fitting his new member, though it's hard to tell whether the sounds are of pain or pleasure.";
		increase carried of food by 2;
		increase carried of water bottle by 2;
		increase borisquest by 1;
		increase boristalk by 1;
		now lastfuck of Boris is turns;
	else if lastfuck of Boris - turns < 6:
		say "     'Sorry friend,' Boris says with regret. 'I may be as eager as you seem to be to enjoy my new cock, but it still needs a bit of rest before it is ready and roarin['] to go again.'";
	else if borisquest is 5:
		if Player is male:
			if Christyquest is 0:
				say "     'Um, sorry friend,' Boris says as he glances down at your [cock of Player] cock. 'I may owe you a lot for what you've done, but if there is going to be cock involved in any fucking - well, let's just say I would rather it be mine,' Boris says apologetically. 'I just don't swing that way. If things were different.... Hmm, that gives me an idea,' Boris says as he eyes you thoughtfully. 'I think I know where there might be something that could help us both out a lot, since you are obviously interested in getting to know me better,' he says as he pats his newly acquired member. 'Since you went to such pains to find such a nice thing for me, it seems only fair I should find a way for you to try it out,' Boris finishes with a grin. 'You must have liked the look of it after all to pick such a nice one. Anyways,' he says, shaking himself as he gets back to the conversation at hand, 'here is a key to the locker room we use here. There should be a box there marked [']Christy[']. If you bring that back here, we can see about having some real fun,' Boris says with a wink, his muzzle stretched out in a lewd grin as he sends you on your way.";
				now Christyquest is 1;
			else if Christyquest is 1:
				say "     'Sorry friend,' Boris says with a shrug, 'I still don't swing that way. If you really want to try out my new addition, you can go check out that locker room I told you about.'";
			else if Christyquest is 2:
				say "     'Sorry, I STILL don't swing... wait, what do you have there?' Boris says as you approach him, his eyes catching on the rather bulky box you brought back. 'You found it! Wonderful!' he exclaims as he snags the box from you and sets it down on the ground beside him. You watch with curious interest as he deftly undoes the ties holding the box closed with his large paws and opens it, revealing some kind of light gold colored fabric inside. 'Ah, here she is!' Boris says as he carefully gathers up the fabric and lifts it up. You watch as it unfolds into a similar-looking costume to the one Boris became, only slightly smaller and lacking in the mane area. Amusingly enough, it also seems to have a black, pawprint-shaped mark on the costume's ass. 'Christy the Lioness! Man I missed her! I mean, not that I really ever knew the real one... but uh... you know what I mean,' Boris says, a wide grin stretching across his leonine face as he shows the costume to you. 'Now hey, since you obviously want to be with Boris so much since you went to such great efforts to help get me properly equipped, and you keep comin['] over and wanting to play with the new equipment even though you are pretty [']equipped['] yourself, I figure you must really want to make this happen, and now we have the perfect solution!' Boris says as he flourishes the fabric costume. 'You put this on and I figure it should work out for both of us. If whatever changed me is still around, I should get a Christy to play with for a while, and you - you should get a Boris to play with! Either way, just slip it on, and even if it doesn't quite work as intended, I promise to let you play with the new [']little boris['] as much as you want. What do you say?' Boris asks as he looks at you hopefully.";
				if Player consents:
					say "[Christy_ending]";
				else:
					say "     'That's too bad,' Boris says with a sigh as he lowers the costume back into the box and carefully packs it away. 'I was really looking forward to putting the new cock you got for me to good use,' he says as he pats his new, large sheath teasingly.";
					now Christyquest is 3;
			else if Christyquest is 3:
				say "     'Trying again and still with a cock? Am I just that irresistible?' Boris says with a smug smile. 'Well, if you need me so badly, you know what to do,' he says as he reaches back and lifts up the other costume once again. Do you put it on?";
				if Player consents:
					say "[Christy_ending]";
				else:
					say "     'Well, now you're just teasing me,' Boris says as he once more puts the costume up, sighing. 'And I was so looking forward to having some fun, too,' the costumed lion says as he rubs his newly acquired package with a large paw.";
		else:
			if borismate is 0:
				say "     'I figured you would come by and ask me about that sometime soon,' Boris says with a grin as he leans back against the ticket booth, his new member peeking temptingly out of its fresh sheath. 'I didn't think someone would go to such great lengths to help me get my little problem fixed and not stop by to try it out themselves,' Boris says with a rather smug smile on his very leonine face. 'Of course, I'm rather looking forward to trying it out for a bit myself too, so what do you say we have some fun together?' Boris says as he reaches out and rubs one of his large, paw-like hands along the side of your face while his other paw slowly strokes his sheath. You find yourself nodding absently at his suggestion, your eyes fixed on the lovely pink lion cock slowly emerging from Boris's new sheath, both shocked and fascinated by the changes to the catlike sex toy.";
				say "     Noticing where your gaze seemed locked, Boris slowly rubs his paw up and down his stiffening cock, the red dildo somehow having taken on a more natural pinkish red tone, seeming to be a completely real part of the costumed lion's body! 'Like what you see? I have you to thank for it,' Boris whispers softly into your ear, and you can't help but nod as you take in the large size and the soft, backward-curving barbs along the sides of his pointed lion's cock. 'Interested in how real it is now? Maybe you should touch it and find out?' Boris suggests as his paw stops stroking his now-erect cock and guides your hand to it instead, his other hand stroking along your side suggestively.";
				say "     Touching his cock, you are astonished by the erotic feel of his thick member under your hand, and you can't help but wrap your hand around it and start rubbing your hand up and down its length, making Boris moan in pleasure. The feel of Boris's paw-like hands rubbing along your sides is already making you wet with erotic pleasure, and as you stroke his stiff and surprisingly real cock, you just can't help but wonder what it would be like to have that thick feline rod pumping within your body, or what it would taste like if you just lowered your head a bit to take it in your mouth, the thoughts and images making your mouth water as you slowly stroke up and down his length. You are really getting into your fantasies when he takes one of his hands and pulls yours away from his cock with a low groaning noise, making you look up at him in curiosity. 'God, I'm close,' Boris says with a groan, his feline muzzle open and panting, 'but I don't want to waste this first time now on just a handjob. I still have to thank you properly for this lovely cock,' he says as he slowly guides you over to one of the nearby tables. 'So this first time I want to cum right inside that lovely body of yours and fill it all up with my new seed,' Boris says in a low, sexy voice, the imagery making your insides clench in need as he lays you back on the table.";
				WaitLineBreak;
				say "     You find yourself moaning with need as Boris the lionman slowly crawls onto the table above you, his soft fur rubbing against your body as his paws run up and down your hot form. He teasingly inserts one of his paw-like digits into your female passage for a second, making you moan and buck with need, before he brings his paw up and licks your juices off of it. 'Looks like you are nice and ready for this too,' Boris moans out as he positions himself over you, his paws gripping your sides as he rubs his thick cock against your needy passage, making you moan and beg for him to fill you up with that lovely new toy of his. Boris wastes no time in giving you what your body needs so badly. With a grunt, he fills you with that amazing feline cock of his, making you shudder in pleasure as it parts your walls around it, its shape designed for maximum pleasure as the soft barbs massage your inner passage, causing you to writhe underneath him. Boris moans in ecstasy as he lowers his lion head and rests it against your shoulder as he begins to pump his thick rod into your body, obviously as caught up in the pleasure of the moment as you are as your bodies come together again and again, sounds of primal need coming from you both as the pleasure builds even higher. Almost too soon, your bodies are shuddering together as you both explode in orgasm, your walls quivering around his feline rod as it twitches and shoots his hot seed deep inside your waiting body. You both shudder a bit in pleasure as you lie there on the table, locked together and panting heavily from the depths of the experience. You aren't sure how much time passes holding each other tight in this manner before Boris finally moans and pulls his softening cock out of you, leaving you feeling slightly sad and empty for a minute until the feel of his seed moving around within you reminds you that you aren't completely empty now. The two of you lie there for a bit longer, just holding each other close, before Boris sighs and pulls himself off of you to go clean himself up. As you lie alone on the table for a minute, you find yourself thinking that giving the handsome lionman a cock may have been the best idea you have had yet, especially since now you can get him to give it back to you over and over again...[impregchance]";
				now lastfuck of Boris is turns;
				now borismate is 1;
			else:
				say "     'Hey, welcome back again. [']Little Boris['] missed you, if you know what I mean,' Boris says with a wink as you approach him again with obviously lustful intent. You can see his cock get hard and start to poke out of its thick sheath in anticipation as he strides up to you, rubbing his paw hands along your sides as he rubs his body up against yours, his cock extending even further from its sheath as it rubs against your body, making your mouth water and your insides clench in need as you remember how good his cock feels. Seeming to anticipate the coming activity just as much as you are, he guides your hands back to his cock, which you automatically start stroking, the feel of his erotic rod underneath your hands making you feel even more submissive and eager to have it inside you. Seeing you fixated on his stiff cock, Boris lowers his muzzle close to your ear and whispers to you, 'You just can't take your eyes off it, can you? I bet you were fantasizing about it even while you picked it out for me. I bet you are just dying for a taste, aren't you?' Boris says as his paws tease your body and his cock grows even harder under your own hands. 'I can lay you back down and fuck you with it, filling you up with my seed, but I think you might enjoy tasting it even more from the looks of things. What do you say: Do you want me to fill your eager body up with my seed again, or do you want to taste this hot cock you found for me yourself, take it in your mouth and worship it like a good little lioness?' Boris asks in a panting tone, the thought of either outcome obviously making him even more excited as you try to decide what to do. Do you take him in your mouth?";
				if Player consents:
					say "     Licking your lips, you just can't get the thought of his wonderful taste out of your mind as he slowly puts pressure on your shoulders, causing you to drop to your knees in front of him. You find your new position places your face right in front of his erect, pointed cock, the scent of his excited musk hitting your nose strongly and making your mouth water. 'Like what you see?' Boris says smugly. 'Maybe you should try tasting it,' he suggests, his large paws guiding your head closer to his groin. You can't help but think that's a wonderful suggestion, and your mouth opens almost automatically as you draw closer to his cock, your tongue darting out to slowly lick along the base of it. Your mind clouds in pure lust as the taste of his amazing cock explodes inside your mouth, making you moan as you lower one hand down to your dripping pussy, while the other reaches up to stroke along his delicious cock. Boris moans in pleasure as you run your tongue along his cock again, needing more of that wonderful taste, each lick making him groan and twitch under your ministrations as you lavish his cock with your tongue, his musky taste exciting your body beyond belief as you rub yourself.";
					say "     Soon Boris's new lion cock starts to leak pre down from the tip, and the taste of it nearly drives you wild with need, awaking a primal hunger within you as you lick and tease his tip, eager to get every drop of that delicious substance in you. Boris's paws stroke your head as you give in to your desires and take his cock fully into your mouth, your hand moving from stroking its cock down to fondling his set of heavy balls, encouraging them to churn and produce more of that wonderful seed you need so badly. You love the taste and feel of his thick lion cock in your mouth as you run your tongue over it, teasing and tasting it as you engulf more and more of it, almost down to the sheath. 'Mmm, damn you're good at this,' Boris moans above you as his cock twitches, and he thrusts into your mouth slightly as you massage his cock with your tongue and lips. 'Keep this up much longer and you'll have a mouth full of my kitty cream. You want that, don't you?' the lionman pants, his words and exotic taste making you shudder in need and redouble your efforts, all but melting around his cock as you suck, desperately eager for the wonderful treat to come. Soon his body tenses as you tease him to climax, his thick cum exploding into your eager mouth as he shudders in pleasure, the new taste causing you to moan in pleasure as well as you do your best to swallow down every bit of your lovely treat. Finally spent, Boris relaxes back, leaving you to lick your lips and savor the remaining taste of his seed in your mouth, a delightful taste like no other. You can't help but feeling wonderfully satisfied and satiated from your actions, having come yourself several times even as you teased him to climax. As you and Boris both lie there recovering, you realize you already just can't wait to taste him again. Is this what Lisa meant when she said it was a simply [']delicious['] feline toy, or is it just something about Boris...? You aren't sure, but you can't really see why it matters at this point either; all that matters is feasting on that wonderful taste while you can...";
					now hunger of Player is 0;
					now lastfuck of Boris is turns;
				else:
					say "     'Oh, so you want me inside you again, do you? I can't say that I blame you,' Boris says with a grin as he guides you over to the table again, your pussy already growing damp in anticipation. You find yourself moaning with need as Boris the lionman slowly crawls onto the table above you, his soft fur rubbing against your body as his paws run up and down your hot form. He teasingly inserts one of his paw-like digits into your female passage for a second, making you moan and buck with need, before he brings his paw up and licks your juices off of it. 'Hot and ready for me already, I see,' Boris moans out as he positions himself over you, his paws gripping your sides as he rubs his thick cock against your needy passage, making you moan and beg for him to fill you up with that lovely lion cock of his. Boris wastes no time in giving you what your body needs so badly. With a grunt, he fills you with that amazing feline cock of his, making you shudder in pleasure as it parts your walls around it, its shape designed for maximum pleasure as the soft barbs massage your inner passage, causing you to writhe underneath him.";
					say "     Boris moans in ecstasy as he lowers his lion head and rests it against your shoulder as he begins to pump his thick rod into your body, obviously as caught up in the pleasure of the moment as you are as your bodies come together again and again, sounds of primal need coming from you both as the pleasure builds even higher. Almost too soon your bodies are shuddering together as you both explode in orgasm, your walls quivering around his feline rod as it twitches and shoots his hot seed deep inside your waiting body. You both shudder a bit in pleasure as you lie there on the table, locked together and panting heavily from the depths of the experience. You aren't sure how much time passes holding each other tight in this manner before Boris finally moans and pulls his softening cock out of you, leaving you feeling slightly sad and empty for a minute until the feel of his seed moving around within you reminds you that you aren't completely empty now. The two of you lie there for a bit longer, just holding each other close, before Boris sighs and pulls himself off of you to go clean himself up while you bask in the afterglow, already anticipating the next time he fills you up with his seed...[impregchance]";

to say Christy_ending:
	say "     'You will? That's wonderful!' Boris says exuberantly. 'I just knew you would be as turned on by the idea as I was!' he says, the tip of his new member poking out of its sheath showing you just how turned on Boris is by the idea. He quickly leads you over to a table, where he begins to help you into the surprisingly realistic looking lioness costume. You shudder as your feet slip all too easily into the costume and your legs settle inside, the costume tingling where it touches your flesh, almost seeming to tighten up around your legs. While Boris helps you get the costume up over your midsection, you realize the tingling in your legs seems to have lessened somewhat, though now the rest of your body seems to be tingling slightly... Still, you stretch out your lion paws in relief, glad that they no longer feel quite so strange. For a second, something about your having lion paws bothers you, but you are distracted by Boris slipping the costume up over your shoulders and the way it makes your chest tingle. 'Only one last bit left to go,' Boris says as he moves to position the headpiece, his hands on your body making your lioness's tail swish happily behind you.";
	WaitLineBreak;
	say "     For a minute, you find yourself a little worried by the fact that you have a lioness's tail and hindpaws, and you bring your paw-like hands down to stroke it for a second in confusion. You feel sure that you didn't have one just a little bit ago, or did you? You find yourself wondering as Boris prepares the face, but it seems hard to remember why you wouldn't have one, since all lionesses have tails like that, and since you are a lioness yourself, how could you ever not have had one? You don't have long to ponder this question, though, as Boris finally has the headpiece ready to slip onto you, and your mind seems to grow even fuzzier as your face tingles and conforms to the costume. Suddenly, you blink as someone touches you. You look over to the side and sigh in recognition - it's your Boris the lion! You feel like you missed him so much, which seems strange since weren't you just doing something for him... in some kind of fair?";
	WaitLineBreak;
	say "     'Just like mine, as I thought. Don't worry though Christy, I think I know what will work,' Boris says, distracting you from your thoughts as you realize he is addressing you. Of course, you find yourself thinking, I'm Christy the lioness. How could I ever have forgotten that? You blink in surprise at the strangeness of forgetting your own name, hardly even noticing as Boris moves behind you. You do notice, however, when he puts one of his large paws on your back and begins to push your front down over the table. You would resist, but it just seems right to let Boris do whatever it is he wants. He is your lion, after all, or is it you are his little lioness? While you try to absorb that latest thought, you suddenly feel something pressing up between your legs, and you look down to realize that pressed up against your featureless crotch is an amazingly sized lion cock!";
	WaitLineBreak;
	say "     Something seeming totally wrong about this picture, even to your confused mind, you open your mouth to protest, only to have Boris begin pressing the point of his large cock painfully into your empty crotch, making you gasp. 'Now don't worry, this might sting a bit at first,' you hear Boris say with amusement behind you as his hands grip you tightly, holding you in place. You gasp and cry out in pain as his hard member presses into you roughly, writhing underneath him in resistance, but just as you are about to beg for him to stop, you feel strange changes in your body. Your crotch seem to split open around his member, which is now pressing directly into your body! You moan as all the painful sensations you were feeling explode into pleasurable ones instead, and your chest seems to explode in two spots of pleasure as you brace yourself against the table, positioning yourself better for that wonderful cock.";
	WaitLineBreak;
	say "     As your new female passage finishes forming around him, Boris shifts and grips your hips tightly as he begins to fuck you in earnest, causing you to gasp and moan as the intense pleasure shoots through you. Without hesitation, you find yourself giving yourself over to these new feelings, your eyes closing as you picture the handsome Boris fucking you in your mind. Your mind wanders in a sea of pleasure as your new, sensitive breasts brush across the table with each thrust, and you find yourself recalling all your other wonderful times with Boris as you grew up and chased villains together and how you almost caught that awful Arthur the Antelope red-handed several times. But of all your strangely fuzzy memories, you find yourself deciding that this one is definitely the best ever as the pleasure builds up inside you, and you cry out as your body shudders with an intense orgasm. Boris roars behind you as your new pussy, which was literally made for his wonderful lion-like organ, convulses tightly around it, bringing him to orgasm as he shoots his hot seed deep into your body. Yes, you find yourself thinking, your body tingling as his seed fills you, the memory of when Boris the lion finally took his lioness Christy and made her his, now and forever... is definitely going to be your favorite memory for a long time to come, though you look forward to making many more pleasurable memories with Boris as soon as you both have recovered...";
	WaitLineBreak;
	now Christyquest is 4;
	now humanity of Player is 0;
	now body of Player is "nothing";
	now bodyname of Player is "nothing";
	now scalevalue of Player is 3;
	now bodydesc of Player is "plump";
	now bodytype of Player is "[one of]plush[or]leonine[or]costume-like[at random]";
	now SleepRhythm of Player is 0;
	end the story saying "You lose yourself to your new identity.";
	follow the turnpass rule;
	stop the action;


when play ends:
	if Christyquest is 4:
		say "     When you and your pride leader are finally recovered from the decimated city, there seems to be some talk about what to do with the two of you. You are adamant about remaining together with Boris, and he is just as reluctant to be separated from you. You are stuck in military custody for a while as a bit of a novelty, until finally somehow word gets out to some people in the entertainment industry about the two of you. Before you know it, they have arranged for you and Boris to be released and offered you both jobs. You are somewhat unsure, but Boris seems happy to accept, and soon you are starring in your own live action shows, reliving the best times of your life as you act them out for the cameras. You find yourself loving your new job, as you get to enjoy being yourself, and chasing villains for the audience seems to come to you naturally, even though some of the themes are now more adult then you remember. Whatever else happens, though, you are always looking forward to the next time Arthur the Antelope shows up on the set. While you know it's just a costume and not the real Arthur, nothing gives you quite as much of a thrill as foiling his twisted schemes, and maybe, just maybe, you will manage to catch him for good one of these times! There is talk of movies and touring, which is nice enough, but your favorite times are when you and Boris get to spend some alone time in your small pride making even more close memories.";

Table of GameCharacterIDs (continued)
object	name
Carnival game	"Carnival game"

Carnival game is a man.
The description of Carnival game is "Standing open and apparently ready for business, one of the automated carnival games is set up here and seems to be working, although who knows what kind of prizes it will hand out in the current circumstances.".
Carnival game is in State Fair.

instead of sniffing Carnival game:
	say "The automated carnival game smells of cheap wiring and strange prizes.";


Lastgameplay is a number that varies. Lastgameplay is usually 250.
gameplay is a number that varies. gameplay is usually 0.

gameplay is an action applying to nothing.

understand "use game" as gameplay.
understand "try game" as gameplay.
understand "play game" as gameplay.
understand "win prize" as gameplay.

check gameplay:
	if Carnival game is not visible, say "what?" instead;


carry out gameplay:
	if lastgameplay - turns < 4:
		say "     Stepping up to the game booth, you hit the button to activate the contest game, only to sigh when nothing happens. The game must not have reset yet. You should try again later.";
		stop the action;
	else:
		now lastgameplay is turns;
		say "     Stepping up to the gaming booth, you hit the button and all sorts of targets pop up and go whizzing around the booth as happy music plays. Quickly you snatch up the fake gun attached to the booth and shoot for all your worth!";
		let bonus be (( the Dexterity of the player minus 10 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "     You roll 1d20([diceroll])+[bonus]: [diceroll + bonus], ";
		increase diceroll by bonus;
		if diceroll > 14:
			say "Your swift reflexes are the death of all little cardboard targets! They will learn to fear your awesome might! Oh hey, you won a prize, too![line break]";
			let prizegift be a random number from 1 to number of filled rows in the Table of Random Critters;
			choose row prizegift from the Table of Random Critters;
			if there is a loot entry:
				if loot entry is not " ":
					add loot entry to invent of Player;
					say "You acquired 1 [loot entry].";
					increase carried of dirty water by 1;
					say "You acquired some dirty water!";
				else:
					increase carried of dirty water by 1;
					say "You acquired some dirty water!";
			else:
				increase carried of food by 1;
				say "You acquired some carnival food!";
		else:
			say "The game buzzes at you derisively as you lower your plastic weapon in defeat. The evil cardboard and plastic menaces will apparently live to see another day, although you resolve to come back and try again later as you walk away.";



State Fair ends here.
