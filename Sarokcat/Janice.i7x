Version 3 of Janice by Sarokcat begins here.
[ Version 3.1 - Kristen tie-in tweaks ]

"Adds a npc to Flexible Survival with a variety of responses and goals..."

Section 1 - private rooms


Private club room is a room. 

The description of Private club room is "This smaller back room of the rather rambunctious club is rather mildly lit, the soft light reflecting off the several divans spaced throughout the room. The soft scent of sex and heat filling the air tells you what this room has been used for most recently, though the room only seems to have a single white-furred occupant currently.  The loud club music is only a dimly heard counterpoint to the atmosphere of the room, mostly blocked by the rather thick walls and the cushioned walls. Though for some reason that only serves as a reminder of the fact that it is very unlikely that anyone out in the club could hear anything that goes on in here, no matter how loud or kinky it gets...".
Janice is in Private club room.
[in order to add additional rooms off the main room, merely type the new room and state that it is some direction from your current room. For example]
SouthEast of Private club room is PALOMINO.

the scent of Private club room is "This back room smells of sex, heat and lust and is strong with Janice's vixen aroused scent.".


Section 2 - Janice

Janicetalk is a number that varies.
Janicearoused is a number that varies.[not a needed number, but used to set different arousal states if they aren't automatically willing to just hop into bed.]
Janicequest is a number that varies.[often used for quests or renamed to Janicequest, see boris for some good examples of this, totally unneeded if the npc doesn't have an associated quest.]

Janice is a woman.
The description of Janice is "Lying back on one of the comfortable couches in the area, you see a rather striking looking foxy lady. The white furred vixen is eyeing you with amusement as you look over her soft furred form, your eyes drawn to her rather striking curves, and her obviously comfortably state of nakedness. The vixen being clad only in her soft and tempting looking snowy white fur, as her long bushy tailtip twitches from side to side in amusement.".
The conversation of Janice is { "Foxy!" }.

the scent of Janice is "Janice smells of vixen and lust, perfume and sex, longing and regret.".

the linkaction of Janice is "[janicelinkaction]".

to say janicelinkaction:
	if janicetalk >= 4:
		say "Possible Actions: [link]talk[as]talk Janice[end link], [link]smell[as]smell Janice[end link], [link]fuck[as]fuck Janice[end link], [link]pose[as]pose for Janice[end link][line break]";
	otherwise:
		say "Possible Actions: [link]talk[as]talk Janice[end link], [link]smell[as]smell Janice[end link], [link]fuck[as]fuck Janice[end link][line break]";


Section 3 - Conversation

instead of conversing the Janice:
	if debugactive is 1:
		say "DEBUG -> Talk: [janicetalk], Aroused: [janicearoused], Quest: [janicequest] <- DEBUG[line break]";
		say "DEBUG (Kristen) -> HP: [hp of Kristen], Libido: [libido of Kristen], Msg 1: [if kristenmsg1 is true]Y[otherwise]N[end if], Msg 2: [if kristenmsg2 is true]Y[otherwise]N[end if], Msg 3: [if kristenmsg3 is true]Y[otherwise]N[end if], Msg 4: [if kristenmsg4 is true]Y[otherwise]N[end if] <- DEBUG[line break]";
	if Janicetalk is 0:[first time you encounter the npc text]
		say "     'Well hello there,' the vixen says in a sensually tempting voice, as you approach her to introduce yourself. 'It's nice to see another new face around here. This place does seem to attract all kinds, now doesn't it?' she says with amusement as she sits up and stretches out one of her rather dainty looking paws to shake your hand, before lying back on the divan and adjusting her position slightly, giving you a very tempting view of her perky breasts. 'The name is Janice, and well, unlike most of the others, I didn't get attacked by one of those creatures.  Well, not right away anyway,' Janice says with a small smirk forming on the side of her muzzle, 'And by then, I already had claws of my own to fight them off with.' She grins at you with amusement, her muzzle full of sharp pointy teeth quite evident as the vixen flexes her claws to make a point.";
		say "     'No,' Janice continues after a minute with a soft sigh, 'I ended up this way out of vanity mainly,' she says with a shake of her head before shooting you a teasing smile. 'I always liked fur, especially if it was soft and stylish, and when I finally got an arctic fox fur sash, I just couldn't put it down... Of course now I have a full pelt of beautiful fox fur of my own to run my hands through,' Janice adds, her tail flicking with amusement as she suits her words to actions, running her dainty clawed hands through her soft white fur teasingly. 'I have to admit, while this isn't the way I would have necessarily chosen to wear fur from now on, I certainly am loving the experience,' she says this with obvious enjoyment of her new condition as she winks at you teasingly. 'Of course, since I wasn't infected the [']usual['] way by one of those creatures out there, there happens to be a shortage of other arctic foxes around for me to play with around here,' Janice says with a soft frown on her muzzle, before grinning at you again. 'Of course since it doesn't look like you have settled on a final form yet, maybe you could help me out with remedying that situation sometime. It would be nice to have another fox like me around to stroke and pet...' the vixen says teasingly, as she rubs her paw-like hands along her inner thighs, giving you a glimpse of her damp wetness as she continues. 'If you wanted to show me you were interested in being a pretty fox like me anyways...";
		increase Janicetalk by 1;
	otherwise if Janicetalk is 1:
		say "     'Well, hello again,' she purrs sensually. 'What brings you here to talk to me this time? Interested in having a luscious little fox pelt of your own?' Janice asks teasingly.";
		if player consents:
			say "     'Well then, as I said before, all you have to do is show me how interested you actually are in being nice and foxy. We wouldn't want you to end up regretting it later, after all,' Janice says with a soft smile, flashing her sharp teeth at you as she does so. 'And you wouldn't be the first to claim to be interested only in hopes of getting a little [']tail['], if you know what I mean.' The vixen flips her handsome brush in your direction before continuing. 'Just find something around the city to show me how interested in foxes you are. I am sure you can do that, and then come talk to me again.' The arctic vixen releases an amused chuckle as she settles back on the luxurious couch to see what you will do.";
			now Janicetalk is 3;
			now janicequest is 1;
		otherwise:
			say "     'Just looking for a little fun without any commitment?' Janice says with a slight sigh, 'Well you certainly aren't the only one around here with that kind of attitude, still I think I'll wait for someone more interested in sticking around,' the sexy foxwoman says as she stretches her lithe body out teasingly, before proceeding to ignore your further attempts at conversation.";
			now Janicetalk is 2;
	otherwise if girl is not banned and kristenmsg3 is false:
		say "     'Well, there's one other thing you could do to show your willingness to help me out.  It's a bit of a long shot though.  A few days after this crazy fun kicked in, I was outside and I thought I spotted a friend of mine in the distance - and still human at that.  I called out to her, but some of the other guys outside saw her and ended up chased her away.  She's about 5['] 10', wears blonde hair in a pony tail and dresses pretty casually.'  She goes on to describe her some more.  'I know it's not much to go on, but can you keep an eye out and try [bold type]findingKristen[roman type] for me?";
		now kristenmsg3 is true;
		if hp of Kristen >= 2:
			say "     Telling her that you've already met Kristen[if kristenmsg1 is true] and that she's mentioned her[end if], you get a big hug from the sexy vixen.  'Oh, that's simply wonderful.  So that was her in the distance then.  Is she still alright?  Did something get her?  Turn her into some creature yet or has she managed to remain an uninfected human?' she asks with an excited gleam in her eye.  You fill her in on her friend, telling her that she's quite safe at the vixen's old place.";
			say "     'I'm really glad to hear that.  Please let her know how I'm doing and that I do miss her.  I hope she'll be able to come visit me sometime soon.  Oh!' she adds, reaching under the divan to pull out a designer blouse, '[bold type]give[roman type] this to her so she'll know it's really me.  She's always liked my blouse and wanted one just like it.  I don't need it now that I've permanently got this sexy fur coat, so she should have it.  I'd [italic type]really[roman type] appreciate it if you did that for me,' she says with a sultry tone in her voice.";
			say "- Janice's blouse added to your inventory -[line break]";
			now hp of Kristen is 10;
			now carried of Janice's blouse is 1;
			increase score by 5;
	otherwise if kristenmsg3 is true and hp of Kristen >= 2 and hp of Kristen < 10:
		say "     Telling her that you've met Kristen[if kristenmsg1 is true] and that she'd mentioned her[end if], you get a big hug from the sexy vixen.  'Oh, that's simply wonderful.  Is she still alright?  Did something get her?  Turn her into some creature yet or is she still an uninfected human?' she asks with an excited gleam in her eye.  You fill her in on her friend, telling her that she's quite safe at the vixen's old place.";
		say "     'I'm really glad to hear that.  Please let her know how I'm doing and that I do miss her.  I hope she'll be able to come visit me sometime soon.  Oh!' she adds, reaching under the divan to pull out a designer blouse, '[bold type]give[roman type] this to her so she'll know it's really me.  She's always liked my blouse and wanted one just like it.  I don't need it now that I've permanently got this sexy fur coat, so she should have it.  I'd [italic type]really[roman type] appreciate it if you did that for me,' she says with a sultry tone in her voice.";
		say "- Janice's blouse added to your inventory -[line break]";
		now hp of Kristen is 10;
		now carried of Janice's blouse is 1;
		increase score by 5;
	otherwise if hp of Kristen is 10 and a random chance of 1 in 3 succeeds:
		say "     'Have you gone back to see Kristen yet to [bold type]give[roman type] her my gift?  I do so miss her and want her to know that I'm safe and happy.  She must be so worried.  Please do that for me, sweety,' she purrs with alluring smile.";
	otherwise if hp of Kristen is 11:
		say "     'Oh, so you've given Kristen my gift?  Wonderful.  Simply wonderful.  You're such an eager, helpful friend.  You deserve a special reward for your willingness to help a poor, lonely vixen.'  She puts her arms around you and pulls you down onto her divan while licking slowly across her muzzle as she eyes you lustfully.";
		if cocks of player > 0:
			say "     Soon her paw finds its way to your manhood, stroking your cock to erection and getting it dribbling with pre.  As she strokes your [cock size desc of player] cock, she nuzzles along your neck.  She gives you small nips and nibbles while rubbing her softly furred fur against your [bodydesc of player] body.  Her touch is sensual and her scent is intense with arousal.  The hand job eventually has you cum hard, emptying your [cum load size of player] load across your chest and hers.  'Mmm... you did very well, my dear.  If all goes well, I should be able to see my dear friend again soon,' she grins as licks her paw clean, then moves on to grooming her fluffy fur.";
			say "     Something about the vixen's words make you uneasy.  You should probably go check on Kristen.";
		otherwise if cunts of player > 0:
			say "     Soon her paw finds its way to your pussy, stroking your juicy folds and getting if dripping wet.  As she fingers your [cunt size desc of player] pussy, she nuzzles along your neck.  She gives you small nips and nibbles while rubbing her softly furred fur against your [bodydesc of player] body.  Her touch is sensual and her scent is intense with arousal.  The fingering eventually has you cum hard, soaking her paw and your crotch with your femme juices.  'Mmm... you did very well, my dear.  If all goes well, I should be able to see my dear friend again soon,' she grins as licks her paw clean, then moves on to grooming her fluffy fur.";
			say "     Something about the vixen's words make you uneasy.  You should probably go check on Kristen.";
		otherwise:
			say "     Finding your crotch lacking in a gender, she seems a little disappointed, but instead lets her paws roam across your [bodytype of player] form.  As she caresses your body, she grinds her juicy pussy against your leg and nuzzles along your neck.  She gives you small nips and nibbles while rubbing her softly furred fur against your [bodydesc of player] body.  Her touch is sensual and her scent is intense with arousal.  She lavishes attention upon you while rubbing her wet petals against your thigh until she cries out in orgasm.  'Mmm... you did very well, my dear.  If all goes well, I should be able to see my dear friend again soon,' she grins as wipes up some juices from her crotch and sucks them from her fingertips before moving onto grooming her fluffy fur.";
			say "     Something about the vixen's words make you uneasy.  You should probably go check on Kristen.";
		infect "Arctic fox";
		if janicearoused is 0, now janicearoused is 1;		[player now passed Janice's test, willing or not]
		if janicetalk < 4, now janicetalk is 4;
		now hp of Kristen is 12;
	otherwise if hp of Kristen >= 16 and a random chance of 1 in 3 succeeds:
		if Kristen is in Private Club Room:			[TF'd and here]
			say "     [one of]'Kristen has helped make this place a lot more enjoyable.  It's good to have a friend,' she says, lightly caressing a paw across the other vixen's side in a decidedly sensual manner.[or]'We do hope you'll stay to keep us company for a while,' she says with a alluring smile.[or]'It's so nice having [if libido of Kristen is 2]a friend here[otherwise if libido of Kristen is 3]another sexy vixen here[otherwise]an affectionate vixen[end if] to keep me company.'[or]Janice and Kristen are cuddled up in each other's arms, sharing sensual kisses and teasing caresses.[or]You and Janice have a quick chat while Kristen [if libido of Kristen is 2]brushes her friend's fur and hair[otherwise if libido of Kristen is 3]lightly runs her paws over her friend's body while smiling affectionately at you, playfully teasing you[otherwise]sits between her legs, eating her friend out[end if].[in random order]";
		otherwise:									[TF'd and elsewhere]
			say "***";
	otherwise if janicetalk is 4:
		say "     [one of]'You know I might be able to help you look a bit more... attractive... if you wanted, just ask me to show you some [link]poses[as]pose for Janice[end link] sometime.'[or]'I used to do a lot of well, modelling work, and I know how to look good.  If you want to learn a few tricks, just let me know.'[or]'Are you ready to give up all this wandering around the city and stay with me here yet?'[or]'So, have you been studying your foxes? Would you like a little... 'hands on' study time with me?'[or]''How are you enjoying the Palomino?'[or]'The club is nice enough for me, and I do enjoy dancing occasionally, but it is just to loud for my sensitive ears sometimes...'[or]'I am rather glad the club has nice private little nooks like this to relax in, aren't you?'[or]'Talk, talk, talk. I'm sure we could think of better uses for that little mouth of yours with a little effort...'[or]'Hmmm how many kits would be best do you think for a first litter?'[or]'Isn't this fur simply divine?'[or]'So what plans have you made for once we get out of here, hmm?'[at random]";
	otherwise if janicetalk is 3:
		if little fox is tamed:
			say "     'Yes what can I help you with this time?' Janice says in a slightly bored tone, only to squeak in a rather undignified manner, her action making you jump and look around, only to find yourself grinning as you see the rather disgruntled vixen haul her soft white tail up into her lap, a familiar cute little fox attached happily to the end of the tail.  Janice's dismay doesn't last long in the face of the cute little fox's attention, and she is soon grinning happily as your little friend romps and frolics on her lap, before eventually wandering back over to your feet. 'How very cute, he's your friend is he?' she asks curiously as she looks you up and down, a soft smile playing over her muzzle as you nod and pet your cute little friend absently. 'Well I certainly think that shows plenty of empathy for foxes, and well I could never turn down someone with such a cute little friend, so you should be sure to come around and see me more often ok?' the sexy vixen says with a rather teasing wink before sprawling back out on her couch to watch your little fox frolic around the room happily.";
			now janicetalk is 4;
			now janicearoused is 1;
			increase score by 25;
		otherwise if bodyname of player is "hermaphrodite latex vixen":
			say "     'Well, with a body like that, it's certainly clear that you have something on your mind,' Janice says with a coy smile as she takes in your changed body.  'A soft, pretty fox playtoy,' she adds with some amusement as she eyes you up and down.  Her eyes linger over your changed form as she seems to size you up for a minute before giving you a rather feral vulpine grin.  'I'm glad I suggested you go looking for proof, as it's clear you're off to a good start in becoming a sexy lover for a vixen as lovely as I.  And what a lovely idea that is.  Perhaps you should join me here and we can see about making you even more beautiful.'  She stretches out on her divan and strokes the cushions, eying you with considerable arousal.";
			now janicetalk is 4;
			now janicearoused is 1;
			increase score by 15;
		otherwise if bodyname of player is "Vixen Nurse":
			say "     'Um well, that certainly is an interesting look for you,' Janice says with a slight smirk as she takes in your changed body, 'A little bit feminine and nice and slender, an interesting choice I must admit... though it does rather suit you I think,' the vixen says with some amusement as she eyes you up and down, her eyes lingering over your changed form as she seems to size you up for a minute before giving you a rather feral vulpine grin. 'Well I certainly have to admit you make a rather cute looking fox as is, but you could certainly be much sexier... I guess I will just have to help you with that now won't I?' she asks with a soft chuckle as she lies back on her couch not bothering to hide her amusement or arousal.";
			now janicetalk is 4;
			now janicearoused is 1;
			increase score by 15;
		otherwise if bodyname of player is "Vixentaur":
			say "     'Oh my, that's quite the big, sexy vixen you've become, though I'd certainly prefer something a little more anthropomorphic.  Certainly is a lot of you to snuggle with though,' she murrs with a slow lick along her muzzle.  'I'm not sure what you had to do to find such an interesting fox form, but it is certainly impressive.  How about you come on over here and we'll see if we can't get you back on two feet,' she says as she stretches out across the divan, briefly moving onto all fours and flicking her tail up before draping it back over herself with a sly grin.";
			now janicetalk is 4;
			now janicearoused is 1;
			increase score by 20;
		otherwise if bodyname of player is "Kitsune":
			say "     'Oh my,' Janice says with obvious interest as she looks over your otherworldly body.  'You certainly must have gone out of your way to find such an exotic fox form.'  She runs her eyes up and down you several times, taking in your alluring form.  'Mmm... you look like you'll be lots of fun and you've certainly piqued my interest.  How about you come here and we enjoy that lovely body of yours before you slip into something a little closer to home?' she says with a swish of her fluffy tail between her spread legs.";
			now janicetalk is 4;
			now janicearoused is 1;
			increase score by 25;
		otherwise if bodyname of player is "Fennec":
			say "     'Oh my, that's certainly a cute little fox form you've managed to find for yourself,' Janice says with obvious interest as she looks over your vulpine body.  'Just a touch of the exotic";
			if facename of player is "Fennec":
				say ".  And those ears - I just want to nibble on them";
				increase score by 5;
			say ",' she muses as she runs her eyes up and down you several times, taking in your slender form.  'A bit on the small size though.  How about you come over here and we'll see about getting the little boytoy to grow into a sexy man?'  She gives a swish of her fluffy tail and runs her tongue along her shapely muzzle, putting her sexy body into an alluring pose.";
			now janicetalk is 4;
			now janicearoused is 1;
			increase score by 15;
		otherwise if bodyname of player is "Clockwork Fox":
			say "     'Well, you certainly have a managed to find quite the unusual fox form to pique my interest.  That certainly shows some willingness to try to please me... which is always something I appreciate,' she says with a swish of her fluffy tail.  'How about you come here and we'll see if we can slip you into something a little more comfortable before you start leaking oil all over the floor?' she purrs with a decidedly vulpine grin and a slow paw along her sexy body, making no attempt to mask her interest or arousal.";
			now janicetalk is 4;
			now janicearoused is 1;
			increase score by 15;
		otherwise if bodyname of player is "Latex Fox":
			say "     'This is the best you could do?' Janice says with a soft sigh as she looks at your latex like foxes body, 'Latex? How very... well... I just don't know what to say,' she says with another more exaggerated sigh, 'Still I suppose it shows some willingness to change on your part, and god knows we need to get you looking better before you end up stuck like that...' Janice says with a slight grin as she pats the couch next to her invitingly, 'So how about we get started soon on getting you into a proper fox's body hmm?'";
			now janicetalk is 4;
			now janicearoused is 1;
			increase score by 5;
		otherwise if janicequest is 2:
			say "     'Well, have you decided to become a handsome little fox to keep me company, or are you just bothering me for fun?' Janice asks teasingly as you approach, only to blink in surprise as you pull out the bundle of papers and fox memorabilia you acquired from the zoo. You watch with amusement as the vixen leafs through the papers, her paw idly stroking the soft little plush fox you acquired as well, and find yourself enjoying the sight of her small smile spreading across her muzzle slowly. Eventually she sets the papers down and gives you a sly look as she grins right at you. 'Well now that was a very cunning and clever answer to me, now wasn't it? Very fox-like indeed, and it certainly shows some effort. I think I even managed to learn a bit about foxes myself,' the vixen says with amusement as she lies back on the couch and watches you, 'Now why don't you come over here and learn about vixens first hand, so to speak,' she says with a teasing wink as she stretches out on the couch in front of you.  Her soft pert breasts bounce temptingly in front of you as she arches her back and flicks her tail in your direction.";
			now janicetalk is 4;
			now janicearoused is 1;
			increase score by 10;
		otherwise:
			say "[one of]Shouldn't you be off somewhere trying to impress me?[or]Don't you have something to look for?' she says pointedly.[or]I rather like it here at the club, though I could use some companionship from someone who understands what being a fox is all about,' she says, running her paws over her lush tail.[or]Don't let me keep you from your search, hon.[or]I look forward to seeing what you come up with, my hopeful suitor.[or]I am rather glad the club has nice private little nooks like this to relax in, aren[']t you?[or]Have you seen Tristian out there? Maybe he is more your style if you aren[']t interested in foxes.[or]So, have you been studying your foxes?  Would you like a little... [']hands on['] study time with me?[or]Isn't this fur simply divine?  If you can prove you like foxes, I'll let you stroke it,' she adds with a coy grin.[at random]";
	otherwise if janicetalk is 2:
		say "[one of]'How are you enjoying the Palomino?'[or]'The club is nice enough for me, and I do enjoy dancing occasionally, but it is just to loud for my sensitive ears sometimes...'[or]'I am rather glad the club has nice private little nooks like this to relax in, aren't you?'[or]'Have you seen Tristian out there? Maybe he is more your style if you aren't interested in foxes.'[or]'That Harold at the bar certainly is an interesting looking fellow, if he weren't so busy all the time I might even have invited him back here with me...'[or]'I used to do some modeling you know, I might even try doing some again if we ever get out of here... after all, who wouldn't love to look at this lovely new body of mine?'[or]'Are you still here? How interesting.'[or]'If you are going to hang around here all the time, could you go get me a drink or a snack or something to make yourself useful?'[or]'I could always pose with the best of them, now though, it feels even better than ever.'[or]'I wonder how hard it will be to deal with things like bank accounts after all this is over...'[or]'Did you see some of the creatures out there? it's insane out there!'[or]'I'm actually very grateful to Tristian and the others for finding me and letting me stay here.  I hate to think what might have happened if I had been out there much longer by myself.'[at random]";



Section 4 - Sex

the fuckscene of Janice is "[sexwithjanice]".

to say sexwithjanice:
	if debugactive is 1:
		say "DEBUG -> Talk: [janicetalk], Aroused: [janicearoused], Quest: [janicequest] <- DEBUG[line break]";
	if lastfuck of Janice - turns is less than 6:
		say "     'Sorry, but even us lusty little vixens need a bit of time to recover after such a lovely bit of fun,' Janice says teasingly as she plants a soft kiss on the side of your face before lying back on the wide couch and stretching theatrically. 'And besides my lovely little soon to be fox, haven't you heard that anticipation makes everything better? And I am certainly already anticipating our next little romp eagerly...' she purrs sensually as she gives you a vulpine grin and a soft wink before sending you on your way.";
	otherwise if Janicearoused is greater than 0:
		if cocks of player is greater than 0:
			if cockname of player is "Arctic fox":
				if a random chance of 1 in 3 succeeds:
					say "[janiceoral]";
				otherwise:
					say "     'Now you are talking my language,' Janice says with a teasing flick of her bushy tail as she gives you a sly vixen's smile. and I think I know just the position to put that lovely sexy little knot of yours to good use.' Janice says as she reaches her paw down to stroke the tip of your vulpine cock teasingly. The feel of her soft furred fingers rubbing over your rod makes your already hard member even more aroused as you find yourself reaching for the sexy vixen almost automatically. Janice chuckles teasingly, as she stops you with a paw to your chest, give you a sly wink as she slowly turns around, giving you an excellent view of her exquisitely shaped body as she slowly stretches her front out on the soft couch. Your eyes however are locked on her soft rear as she lifts it up teasingly even as she rests her front on the cushion, her arctic brush of a tail trails over your chest teasingly before she flicks it out to the side to expose her perfectly formed damp pink sex.";
					say "     Your cock grows even stiffer with desire as you take the sexy vixen up on her offer, your arms wrapping around her sexy waist even as you slide your cock into her needy folds, the feel of her soft body parting to welcome you inside is absolutely heaven, causing you to moan with delight even as she yips softly underneath you in pleasure. Something about your position feels so natural as you slowly pull out before thrusting into your vixens sexy body again, her soft yips and moans only encouraging you to go faster and harder as you begin to thrust into her with increasing speed, your swelling knot slipping in and out of her with each thrust. It isn't long before you end up giving yourself over to the wonderful pleasure of mounting your mate, and are panting and yipping just as eagerly as she is as she writhes happily underneath you. Soon your knot has swelled inside her to the point where it won't slip out of her lithe body anymore, and you groan with pleasure as her tight walls lock around your knot tying you together.";
					say "     Unable to pull out fully anymore, you find yourself rocking your hips against her with increased vigor even as her wonderfully tight passage squeezes your knot with every movement, your balls churning with anticipation even as your pointed tip presses deeply into her body.  Her soft fur underneath you feels absolutely amazing as she rocks back against you eagerly, and you can't hold back any longer, and you bury your face in her soft fur as your vulpine rod begins to spill its load into her soft womb. The pleasure is almost overwhelming as her passage rocks and tightens around your vulpine cock as Janice cries out in orgasm as well, her body squeezing and massaging your knot as she tries to milk every last bit of fertile sperm out of you.";
					say "     Gasping with pleasure as you lie on top of her, still tied together by your swollen knot, you find yourself moaning happily as the sexy vixen shifts underneath you, and looking up you see a mischievous twinkle in her eye as she grins back over her shoulder at you.  You moan with surprise and pleasure as she shifts forward, pulling you up onto the couch with her by your still buried cock, the sensation nearly making you pass out with pleasure as she pulls you close and cuddles her soft body up against you murring happily.  Your arms full of soft sexy vixen, you find yourself smiling happily as well, as you lie there with your soft sexy mate waiting for your knot to deflate...";
					infect "Arctic fox";
					infect "Arctic fox";
					now lastfuck of Janice is turns;
			otherwise:
				if a random chance of 3 in 5 succeeds:
					say "[janiceoral]";
				otherwise:
					say "     'Why I thought you would never ask,' Janice says with a teasing smile on her muzzle as she traces one of her slim vulpine paws down her soft white fur teasingly, 'why don't you come over here and put that lovely cock of yours to good use...' she says teasingly as she spreads her legs out to the side slightly, giving you a perfect view of her soft damp pink sex, even as the aroma of a vixen in heat fills your head, causing your cock to grow increasingly aroused in anticipation. You find yourself grinning with delight as you take in the sexy white vixen spread open before you for your pleasure, the sight far too enticing for your lust-filled body to refuse as you move onto the couch with her. You can swear you see a rather vixenish grin cross Janice's muzzle as she reaches her paws up and runs them over your [skin of player] chest, her soft touch making you moan as she wraps her arms around you and pulls you down into her embrace. The feel of her silken soft white fur as it rubs against your sensitive body is amazing, and you groan with pleasure as she lifts her hips up teasingly to rub her damp sex against the base of your cock.";
					say "     Unable to hold back the burning desire building in your cock, you shift your hips on her next teasing pass, and slide into her waiting both with a shared gasp of delight.  Janice moans happily as your cock sheaths itself in her warm willing body, her long legs wrapping around your waist as she rubs up against you encouragingly. Though with the amazing feeling of her tight needy body massaging your cock, you need little encouragement to begin thrusting into her harder and faster than ever. Your body burning with building pleasure even as the vixen underneath you pants and yips in response to every one of your thrusts, her small noises of pleasure making you grin happily, even as the pleasure begins to grow almost too great to contain. You cry out as you bury your head against her softly furred shoulder, your body tensing against Janice's soft form as your orgasm spills over you.  The feel of your cock spilling its seed inside her warm depths is absolutely amazing, her inner walls gripping you tight even as she cries out in pleasure as well, her soft claws running down your back as you hold onto each other tightly. Eventually you find yourself panting for breath as your orgasm begins to subside, and you smile as you feel a small lick on the side of your face as a smiling Janice gives you a soft kiss of thanks. Slowly the two of you pull apart from each other, with the vixen giving you a sly teasing smile as you both relax on the couch and try to recover from the amazingly intense experience.";
					infect "Arctic fox";
					infect "Arctic fox";
					now lastfuck of Janice is turns;
		otherwise:
			say "     'Ah you want me to show you how to be a proper little foxy lady, do you?' Janice says teasingly as she strokes your face with one of her soft dainty paws teasingly. 'Well I think I could enjoy sharing my love for my new fur with a fellow fox lover like you...' she says with amusement as she begins to pull you down onto the couch next to her. You open your mouth to comment, only to find her narrow vulpine muzzle pressed up against your mouth as her sexy vulpine tongue explores your mouth adventurously.  You can only moan into her muzzle as she rubs her soft silken white fur up against your desperately aroused body, something about the situation seeming increasingly right to your lust-filled mind as you begin to kiss her back eagerly. Before long you are both cuddling and kissing each other happily on the rather large couch, the feel of her soft white fur on your skin making you burn with desire for a lovely coat of sexy white fur all your own.  After several minutes of heavy petting, Janice eventually lets you go, and she looks up at you teasingly as you barely manage to stand on your strangely shaky legs. 'Enjoy that did you? Just think how much more fun it will be as a proper vixen just like me... or even better, as a handsome stud fox... though a sexy pair of vixens could always find a nice stud to share, don't you think?' Janice whispers to you teasingly, her enticing words making you almost pant with desire as you think about all the sexy possibilities.";
			infect "Arctic fox";
			infect "Arctic fox";
	otherwise:
		say "     'Sorry, but I am a bit more... selective in my choices of mates than that,' Janice says with a theatrical sigh, as she rubs her white furred legs together teasingly. 'Maybe once you have proven yourself a bit more... interesting, we can see...' she adds teasingly as she reaches out with one of her soft dainty paws to stroke your [skin of player] cheek for a second, before reclining back on her backless couch again.";

to say janiceoral:
	say "     Janice licks her muzzle as she eyes your [cock size desc of player] [cock of player] cock.  'Mmm... I was just thinking I could go for some nice, hard meat in my muzzle,' she murrs, pulling you into her arms and running one paw down your side as the other guides you to lay back on her divan.  'How about we give [if cocks of player > 1]these[otherwise]this[end if] [if cock length of player > 10]bad boy[otherwise if cock length of player > 4]sexy cock[otherwise]little fellow[end if][if cocks of player > 1]s[end if] of yours some proper attention?' she says with a wink before running her tongue slowly along the underside of your shaft[if cock length of player < 6].  'Maybe we can perk him up a little while we're at it,' she adds, giving you another lick[end if].";
	say "     The snow white vixen presses her bosom down around your [cock of player] cock[if cocks of player > 1]s[end if], mashing those soft, warm globes around your meat.  She rocks her chest forward, rubbing those beautiful tits of hers against your pulsing shaft[if cocks of player > 1]s[end if][if cock length of player < 4], releasing it from time to time so she can lick and suck at your [cock size desc of player] manhood[otherwise] while running her tongue along it as well[end if].  She works her tongue expertly over your shaft, sliding sensually over your aroused flesh while sensually gazing up at you with a sexy smile on her muzzle.";
	say "     Between her tonguework and the titty-fuck, it's not too long before you're moaning that you're about to cum.  She brings her muzzle up to the top of your pulsing shaft, wrapping her lips around it while her paw finishes stroking you off.  You blast your hot cream into her muzzle and down her throat, feeding the lustful vixen your cum.  Once you're done, she grins and licks her lips slowly and runs her paws down her sexy body[if cock width of player > 40], now greatly bloated from your huge output[otherwise if cock width of player > 20], now with a plumper belly from your large load[end if].";
	infect "Arctic fox";
	now lastfuck of Janice is turns;



instead of conversing the angie while janicequest is 1:
	say "     'What was that? You need some way to prove just how interesting you find foxes?' The black pantherherm looks at you with a confused expression on her muzzle for a minute, before shrugging slightly. 'Well honestly I am not sure if there is anything like that around here... I have kind of been more interested in well... the feline related items,' She says with a soft purr as she looks around the gift shop, her tail lashing behind her as she stalks over to the side and begins to poke through the mostly destroyed pile of books and papers. You find yourself shifting uncomfortably for a minute as Angie's feline scent teases your body, even as the large panther sorts through the piles of papers.[line break]";
	say "     'Well, here we go,' Angie says finally as she gathers up a bunch of papers, as well as a few small fox magnets and pictures, and even a miraculously intact little fox plush. 'This is about everything the shop has on foxes, though I am still not sure why you are so interested in the little canines,' she says with a slight shrug of her large black furred shoulders, her breasts heaving interestingly with the movement. 'Honestly I would expect you would be trying to avoid being infected, or at the very least pick a luscious and sexy feline form...' The panther herm trails off for a minute with a small smile on her muzzle before shaking her head slightly and grinning back at you ferally. 'Still that's your call honestly, so hey there ya go, plenty of fox stuff, and if that doesn't work out you can always come back here and let me know,' she says with a soft wink, before sending you on your way to leaf through all the different fox related papers and information she gathered for you.";
	now janicequest is 2;


Section 5 - Posing

Vixenposing is an action applying to nothing.
Lastvixenposing is a number that varies. Lastvixenposing is usually 800.
Understand "Mimic Janice" as Vixenposing.
Understand "pose for janice" as Vixenposing.
Understand "Learn from Jance" as Vixenposing.
Understand "Sexy posing" as Vixenposing.
Understand "Pose janice" as Vixenposing.
Understand "foxy posing" as Vixenposing.
Understand "Learn Jance" as Vixenposing.

Check Vixenposing:
	If Janice is not visible, say "And how do you expect to do that?" instead;

carry out Vixenposing:
	if lastVixenposing - turns is less than 6:
		say "     'Not right now, my lovely,' Janice murrs at you as she stretches languidly out on the couch, 'It is just much too much effort for me to put in right now... perhaps later,' she says teasingly as she relaxes on the soft cushion.";
	otherwise if janicetalk < 4:
		say "     'Why should I waste my precious time training someone who isn't willing to show some interest in my own needs?' she asks with an exaggerated sigh and a dismissive wave of her paw.  'Why don't you go out there and find something to prove to this vixen you've got an interest in foxes?'";
	otherwise if bodyname of player is not "Arctic fox":
		say "     'I can't train you how to best use your body sexily if you've not even got the body for it.  Why don't we start by seeing if we can get you looking foxier?' she purrs, stretching out in a sensual display on her divan.";
	otherwise if janicearoused is greater than 0:
		now lastVixenposing is turns;
		say "     'Ah, so you want to learn how to make the best use of that sexy body of yours? Well I suppose it would be quite fun to show you how to move that sexy tail of yours.' Janice says with an amused grin as she stretches her lithe body for a minute, before beginning to show off several extremely enticing poses, her soft furred form looking amazing even as her long white fox tail swishes behind her teasingly.  Soon she is strutting daintily around the room, her every movement setting your blood on fire with desire as she shows off her rather amazing assets for your inspection. After several minutes she stops teasing you, and begins to give you pointers as she makes you walk around the room and pose just like she did, the unusual amount of balance and muscle control required to look so damn enticing is rather surprising, and you try your best to keep up with her increasingly difficult instructions.";
		let bonus be (( the dexterity of the player minus 10 ) divided by 2);
		if Kristen is visible, increase bonus by 2;
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus]: [diceroll + bonus], ";
		increase diceroll by bonus;
		if diceroll is greater than 16:
			say "     'That's it! Now you are getting it!' Janice exclaims happily, as you begin to move and sway your body with an increasing amount of control[if Kristen is visible].  Kristen assists you as well, caressing a paw here or there to help you find the desired poses[end if].  The new positions become much more natural as [if Kristen is visible]Janice[otherwise]she[end if] makes a few small corrections to your form, before pulling you to her in a happy kiss.  Soon you find yourself grinning as she settles back down on her couch to watch you strut your new stuff, and as you strike an increasingly slutty and sexy pose for the lusty vixen[if Kristen is visible]s[end if], you find yourself sure that it will be hard for anyone to resist your charms now!";
			infect "Arctic fox";
			if charisma of player < 24:
				increase charisma of player by 1;
				say "Your charisma has increased by 1!";
		otherwise:
			say "     You sigh as your sad attempt to pose and shift your body like a properly sexy fox fails miserably, and while Janice manages not to laugh at you outright, you can see the twinkle of amusement in her eyes as you once more trip over your own feet before giving up the attempt for now...";
			decrease hp of player by 10;
	otherwise:
		say "     'Show you how to show off your body properly? Now why should I do a think like that for you?' Janice asks slightly scornfully as she looks you up and down for a minute before shaking her head sadly.  'No sorry, maybe if you were interested in being a properly sexy fox I might consider it... but I don't just give out tips to just anyone after all,' the sexy vixen says with a dismissive flick of her fluffy white tail, before going back to stroking her soft fur absently and ignoring you.";


Section 6 - Janice's Blouse

Table of Game Objects (continued)
name	desc	weight	object
"Janice's blouse"	"This designer blouse is a gift from Janice to Kristen."	1	Janice's blouse

Janice's blouse is a grab object.
it is part of the player.
It is not temporary.

instead of using Janice's blouse:
	say "The blouse is meant to be a gift for Kristen.  You should [bold type]give[roman type] it to her.";

the scent of Janice's blouse is "The blouse smells faintly of the vixen's perfume.".

instead of trading Janice's blouse when the current action involves Kristen:
	say "[Kristen-giveblouse]";

to say Kristen-giveblouse:
	say "     Even as you pull out the blouse, Kristen recognizes it right away and quickly takes it from you.  She holds it up to look it over carefully before clutching it to her chest.  'Oh, this is Janice's.  I'd recognize it anywhere";
	if kristenmsg4 is false:
		say ".  Where did you get it?'";
		say "     You tell Kristen about Janice and how you met her friend.  She's almost in tears as you tell her about the vixen, having to dab her eyes with the blouse she's so happy to hear the news.  'That sounds so like her.  She's always been a little vain and loving luxury.  It's so nice of her to give me this to reassure me.  I always a little jealous about her having one and she'd tease me about it,' she laughs.  'Please thank her for me for the lovely gift.'";
		now kristenmsg4 is true;
	otherwise:
		say ".  That means it's really her.";
		say "     Kristen has to dab her eyes a little with the blouse she's so happy to hear the news.  'It's so nice of her to give me this to reassure me.  I always a little jealous about her having one and she'd tease me about it,' she laughs.  'Please thank her for me for the lovely gift.'";
	now hp of Kristen is 11;
	now carried of Janice's blouse is 0;
	increase score by 10;


Janice ends here.
