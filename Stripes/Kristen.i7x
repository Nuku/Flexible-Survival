Version 2 of Kristen by Stripes begins here.
[ Version 2.5 - Friendly Kristen special sex + 3some w/Janice ]
"Adds an Arctic Fox named Kristen to the Flexible Survival game."

Section 1 - Event

Table of GameCharacterIDs (continued)
object	name
Kristen	"Kristen"

Table of GameEventIDs (continued)
Object	Name
FindingKristen	"FindingKristen"

FindingKristen is a situation.
The sarea of FindingKristen is "Outside".
when play begins:
	add FindingKristen to badspots of girl;
	add FindingKristen to badspots of furry;

Instead of resolving FindingKristen:
	if HP of Kristen is not 0:
		say "ERROR-Kristen-[HP of Kristen]E: This event should already be resolved!";
	else:
		say "     While traveling through the city, you hear a bit of commotion coming from down a side street. At first you're going to just let it go, but you catch sight of a rather human-looking woman rushing past the far end of the alleyway, soon followed by an eager ewe. You wonder if your eyes are playing tricks on you or if she might have an infection that's passably human at first glance.";
		say "     [bold type]Shall you charge to the rescue and hope for the best?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if Player consents:
			say "     Moving quickly, you follow after the pair. Fortunately, you catch up to them as they reach a dead end. The woman's struggling to climb over a wooden barrier at the end of alleyway. The ewe's got the back of her jeans and is trying to pull her down by them. You're momentarily distracted by the glimpse you get of her pantied ass, but shake it off when the girl slips down a foot and the sheep grabs her by the ponytail. The woman cries out and she starts to lose her grip, so you rush in to deal with the horny ewe.";
			say "     Grabbing the ewe, you try to pull her back, but end up dragging down the woman as well. She drops onto some cardboard boxes with her pants half off. At this point, the lustful sheep turns to face you, knowing she's got to deal with you before she can claim her intended prize. You also can hear the sounds of growing activity as more mutants are attracted to the sounds of her lustful baaing.";
			challenge "Ewe";
			if fightoutcome >= 10 and fightoutcome <= 19:
				say "     When you've dealt with the ewe, you look back to see the poor woman still a little dazed from her fall, but starting to rise. You're about to go help her when another ewe rushes forward in search of companionship. The noise of approaching sheep grows louder. If you don't manage to get out of here soon, it sounds like there'll be far more mutton than you can handle here very soon.";
				challenge "Ewe";
				if fightoutcome >= 10 and fightoutcome <= 19:
					say "     After your victory, you turn to check on the woman only to find the mound of crushed boxes empty. Looking up, you can see her atop the wooden wall, looking down at you. ";
					if ( BodyName of Player is "Human" or BodyName of Player is "Herm Human" ) and player is pure and ( Breast Size of Player < 10 and Cock Length of Player < 12 and Ball Size of Player < 16 ) and Nipple Count of Player <= 2 and ( Breast Size of Player < 2 or ( Cock Length of Player < 7 and Ball Size of Player < 7 ) ):
						say "Without further hesitation, she reaches out to grab your hand to help a fellow human. Helping you up and over the well, you run off together for several blocks, only slowing your pace as the sound of the mob fades into the distance.";
					else if Player is bodily human and player is facially human and player is skintone human and tail of Player is "":
						say "She hesitates momentarily, you looking human enough at first glance, but your altered sexuality causing her to pause briefly. It lasts only a moment though before she reaches out with her hand to help you up and over the wooden wall to make your escape with her. You run off together for several blocks, only slowing your pace as the sound of the mob fades into the distance.";
					else:
						say "She hesitates for a few moments, staring at your mutated body. It is only when the sound of the approaching mob catches her attention does she reach out to take your hand. Helping you up and over the wall, you run off together for several blocks, only slowing your pace as the sound of the mob fades into the distance.";
					say "     Clearly having a destination in mind, she sneaks through alleys and behind buildings, trying her best to remain out of sight from the more randy creatures around. 'I really want to thank you for helping me out back there. I don't think I would have made it without your help. I'm Kristen, by the way.'";
					say "     As you introduce yourselves, you're able to take in her appearance. The Caucasian woman stands about five foot ten inches. She has fair skin with only a light tan, leading you to suspect that she's been hiding indoors a lot lately or using quite a bit of sunscreen. She's got shoulder-length dirty blonde hair in a ponytail, which is now partially undone by the rough handling earlier. Her eyes are a very pretty blue and she's got a silver stud earring on each ear.";
					say "     'We're getting close to the place I've been hiding out. I guess I can trust you, so I'll show you. It's not great, but I've been safe enough. If I hadn't gone out to lo- well, if I'd stayed here, I'd not have gotten into that mess earlier.'";
					say "     She's leading you along the rear of a stretch of two-story shops. Several of them have been damaged by the rampage of some creature. She slips into the lower floor of a half-ruined travel agency and grabs the extension ladder stashed inside. Carrying it a few buildings over, she uses it to climb up to the second story of one of them and go through an open window. After you follow her up, the pulls the ladder inside, cutting off the means of entry.";
					now HP of Kristen is 2;
					move player to Kristen's Hideout;
					now Kristen's Hideout is known;
					now Resolution of FindingKristen is 1; [Kristen saved]
					increase score by 20;
			if fightoutcome >= 20 and fightoutcome <= 29:
				say "     The ewe's assault leaves you too weak and dazed to prevent her from grabbing onto the woman and dragging her back down the alley. You can hear the lustful cries of mob of sheep get louder when the poor human's dragged into their midst. Still having enough sense to realize that you very well could be next, you struggle your way up and over the wooden fence and make a run for it.";
				now Resolution of FindingKristen is 98; [player lost, Kristen lost]
				now HP of Kristen is 1;
			else if fightoutcome >= 30:
				say "     Hearing the mob getting closer, you know you need to make your escape before they get here. You sidestep the ewe as she makes a grab for you, sending her crashing right into the woman as she tries to get up. Finding herself atop an unchanged human, the sheep's attention immediately turns to groping and kissing her. With a running start, you use her woolly back as a springboard to hop up onto the wooden wall and climb over it to get away before things get out of hand.";
				now Resolution of FindingKristen is 99; [player ran off, Kristen lost]
				now HP of Kristen is 1;
		else:
			say "     Counting yourself lucky that it's not you being chased for a change, you slip off in the opposite direction as the sound starts to draw the interest of more infected mutants.";
			now Resolution of FindingKristen is 99; [player ran off, Kristen lost]
			now HP of Kristen is 1;
	now FindingKristen is resolved;


Section 2 - Kristen's Hideout

Table of GameRoomIDs (continued)
Object	Name
Kristen's Hideout	"Kristen's Hideout"

Kristen's Hideout is a room. It is fasttravel. It is private. It is sleepsafe.
The description of Kristen's Hideout is "[krishideoutdesc]".

the scent of Kristen's Hideout is "[krishideoutscent]".

to say krishideoutscent:
	if HP of Kristen < 12:
		say "This place smells of potpourri and cleaners, possibly to help mask her human scent from any creatures nosing around.";
	else:
		say "There is a faint scent of vixen mixed in with the other scents in here.";

to say krishideoutdesc:
	if HP of Kristen < 2:
		say "ERROR-Kristen-[HP of Kristen]R: You should be able to get here! Get out!";
		move player to Grey Abbey Library;
		now Kristen's Hideout is unknown;
	else if HP of Kristen < 12:
		say "     This second floor apartment is above a ruined coffee shop. It is fairly small, with a small living room, kitchen, bathroom and bedroom. Despite the modest size, the accommodations are very well maintained and the furnishings seem quite expensive. The furniture is of high quality, is well padded and rests upon hardwood floors. The rooms are decorated with lovely vases and paintings as well as a full-length mirror right in the living room as well as the bathroom and bedroom. It's clear that this place belonged to someone who liked living in the lap of luxury. The place has been kept quite clean given the circumstances. The ladder Kristen uses to get in and out (and to let you in) rests along one wall and the blinds are kept shut.";
	else if HP of Kristen is 12:
		say "[kristentf_phase1]";
		WaitLineBreak;
		now HP of Kristen is 13;
		move player to Grey Abbey Library;
		now lastfuck of Kristen is turns;
	else if HP of Kristen < 16 and lastfuck of Kristen - turns < 4:
		if HP of Kristen < 15:
			say "     [if Libido of Kristen is 2]You promised to give Kristen some time to think. You should give her a little longer before returning[else if Libido of Kristen is 3]As much as you look forward to seducing the transforming woman further, you don't want to rush things. You decide to wait a little longer before returning to see her again[else]As much as you look forward to enjoying the transforming vixen's body, you should give her some time to allow her infection to progress further. Besides, she'll be hornier if you let her change further[end if].";
		else:
			say "     Kristen could use some time to rest and take stock of her situation before you return to see how she's dealing with her changes[if Libido of Kristen is 3]. After the excitement last time, you decide to give her a little more time before attempting to seal the deal again[else if Libido of Kristen is not 2]. As eager as you are to see if the slutty vixen's completed her transformation, you decide to wait a little longer to be sure[end if].";
		WaitLineBreak;
		move player to Grey Abbey Library;
	else if HP of Kristen is 13:
		say "[kristentf_phase2]";
		WaitLineBreak;
		now HP of Kristen is 14;
		move player to Grey Abbey Library;
		now lastfuck of Kristen is turns;
	else if HP of Kristen is 14:
		say "[kristentf_phase3]";
		WaitLineBreak;
		now HP of Kristen is 15;
		move player to Grey Abbey Library;
		now lastfuck of Kristen is turns;
	else if HP of Kristen is 15:
		say "[kristentf_phase4]";
		WaitLineBreak;
		now HP of Kristen is 16;
		move Kristen to Private club room;
		move player to Private club room;
	else:
		say "     The second floor apartment which Kristen had been staying in since the outbreak is vacant now. It is fairly small, and while nicely furnished, holds little of practical use given your current situation. While may be a safe and comfortable place to rest, it doesn't seem nearly as secure as the bunker is.";


Section 2 - Kristen

Kristen is a woman. Kristen is in Kristen's Hideout.
The description of Kristen is "[kristendesc]".
The conversation of Kristen is { "Thanks." }.
kristenmsg1 is a truth state that varies. kristenmsg1 is usually false.	[K mentioned J]
kristenmsg2 is a truth state that varies. kristenmsg2 is usually false.	[general info]
kristenmsg3 is a truth state that varies. kristenmsg3 is usually false.	[J mentioned K]
kristenmsg4 is a truth state that varies. kristenmsg4 is usually false.	[K told about J]
kristenmsg5 is a truth state that varies. kristenmsg5 is usually false.	[prompted for blouse?]
kristentf3fuck is a truth state that varies. kristentf3fuck is usually false.	[fucked Kristen at tf stage 3]

the scent of Kristen is "[kristenscent]".

to say kristenscent:
	if HP of Kristen < 2:
		say "ERROR-Kristen-[HP of Kristen]S: You should be able to find me yet.";
	else:
		say "     Kristen smells [if humanity of Player < 33]tantalizingly[else]pleasantly[end if] human.";

to say kristendesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Kristen], Libido: [Libido of Kristen], Msg 1: [if kristenmsg1 is true]Y[else]N[end if], Msg 2: [if kristenmsg2 is true]Y[else]N[end if], Msg 3: [if kristenmsg3 is true]Y[else]N[end if], Msg 4: [if kristenmsg4 is true]Y[else]N[end if] <- DEBUG[line break]";
	if HP of Kristen < 2:
		say "ERROR-Kristen-[HP of Kristen]L: You should be able to find me yet.";
	else if HP of Kristen < 12:
		say "     Still apparently unchanged, this Caucasian woman stands about five foot ten inches. She has a slender figure with just the right amount of sexy curves to give her feminine allure. She's wearing a white cotton shirt and black jeans. She has fair skin with only a light tan, partially from staying hidden indoors a lot lately as well as her frequent use of sunscreen. She's got shoulder-length dirty blonde hair which she wears in a ponytail. Her eyes are a very pretty blue and she's got a silver stud earring on each ear.";
	else if HP of Kristen < 16:
		say "ERROR-Kristen-[HP of Kristen]L: You shouldn't be able to see me right now.";
	else:
		say "     The now vulpine Kristen is a sensually beautiful vixen. While showing signs of being an arctic fox like Janice with her snowy white fur, she's also got the black gloves and socks of a more traditional fox. Her ears and the tip of her fluffy tail are also charcoal black. It gives her quite the [if Libido of Kristen is 4]sexy[else]elegant[end if] appearance, adding to her exotic allure. She's also continuing to wear the traitorous blouse that started this transformation, [if Libido of Kristen is 2]worn over[else if Libido of Kristen is 3]worn only partly buttoned up to tantalize with[else]left open to show off[end if] her slightly fuller and perkier breasts.";


Section 3 - Conversation Tree

Instead of conversing the Kristen:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Kristen], Libido: [Libido of Kristen], Msg 1: [if kristenmsg1 is true]Y[else]N[end if], Msg 2: [if kristenmsg2 is true]Y[else]N[end if], Msg 3: [if kristenmsg3 is true]Y[else]N[end if], Msg 4: [if kristenmsg4 is true]Y[else]N[end if] <- DEBUG[line break]";
	if HP of Kristen < 2:
		say "ERROR-Kristen-[HP of Kristen]T: You should be able to find me yet.";
	else if HP of Kristen is 2:
		say "     'Welcome to my place. Well, it's not really my place. It belongs to my friend, but it doesn't look like she's coming back by this point.' After an awkward pause, she affects some excitement in her voice and forces a smile.";
		say "     'I was on my way to come see her when things went nutso-bonkers. It was all happening too fast - the power outage, the electronics failure, the quake, people turning into monsters... Madness! I rushed here through that chaos, got inside with her spare key and hid here overnight. I could hear the rampage growing outside. There's a club a few buildings over and the people inside must've turned into something big and destructive. A lot of the buildings along this stretch are wrecked because of it. Even the staircase up here was taken out, trapping me inside.";
		say "     'Which turned out to be a good thing, as it meant those mutant monsters couldn't get up here and find me. At first, I hoped to just wait for someone to come rescue me, but it eventually became clear we're on our own for a while. After that, I had to find a way down. I could see that ladder a few buildings over, but it was out of my reach. I made a rope out of some sheets,' she says, pointing to where that improvised rope still sits in one corner, 'and used it to get down so I could snag the ladder. As long as I'm careful not to be seen, I can get in and out and nothing else will stumble its way into my hideout. I've still got to stay out of sight in case any of those flyers spot me or I ended up besieged, but it's else safe.'";
		now HP of Kristen is 3;
	else if HP of Kristen < 10 and kristenmsg1 is false and a random chance of 1 in 3 succeeds:
		say "     'Once I'd managed to work out a means to get in and out, I went off to look for my friend. I knew it was a long shot, but it wasn't that far and I had to try. I was on the phone with Janice when the network went down, so I knew she had been at this club where I used to work - the Palomino. I snuck my way over there, but I found it overrun with mutants. I couldn't even get close before one spotted me and a bunch rushed after me. I managed to evade them, but after that close call, I held off on looking for... well, there just didn't seem to be much hope.'";
		now kristenmsg1 is true;
		if kristenmsg3 is true:
			say "     Realizing that she must be the Kristen that Janice spoke about, you tell her that you've met her friend. She's almost in tears as you tell her about the vixen, so happy to hear that her friend's happy and safe. 'That sounds so like her. She's always been a little vain and loving luxury. Please let her know that I'm safe at her place.'";
			now kristenmsg4 is true;
		else if janicetalk > 0:
			say "     Realizing that Janice might very well be the arctic fox femme you met at the dance club, you tell Kristen about her. She's almost in tears as you tell her about the vixen, so happy to hear that her friend's happy and safe. 'That sounds so like her. She's always been a little vain and loving luxury. Please let her know that I'm safe at her place.'";
			now kristenmsg4 is true;
	else if HP of Kristen < 12 and kristenmsg1 is true and kristenmsg2 is false and a random chance of 1 in 3 succeeds:
		say "     'I'm not really sure what's going on, but I have noticed a few things. I feel in better shape than I've ever been and I heal really quickly now. I'm also a lot hornier these days. I'm guessing whatever is behind all this has affected everyone, including myself. I've just managed to avoid running into anything to set off a mutation. Like, my friend Janice has a collection of fur shawls in her closet that I don't dare get anywhere near.'";
		now kristenmsg2 is true;
	else if HP of Kristen is 10 and carried of Janice's blouse > 0 and kristenmsg5 is false and a random chance of 1 in 3 succeeds:
		say "     Remembering the blouse Janice gave you, you ponder giving it to Kristen and telling her that you found her friend. While you know she'd be happy to know her friend is alive and (mostly) sane, she might get it into her head to try going there to see her.";
		say "     [bold type]Shall you give it to her?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if Player consents:
			say "[Kristen-giveblouse]";
		else:
			say "     Deciding against it for now, you keep it tucked away in your pack. Should you change your mind, you'll need to [bold type]give Janice's blouse to Kristen[roman type].";
			now kristenmsg5 is true;
	else if HP of Kristen < 12:
		say "     [one of]'I've been raiding my friend's cupboards and gathered what I can from the nearby shops, so I'm okay for now.'[or]'I'm glad I decided to trust you. It's good to have someone to talk to after all this.'[or]'I'm lucky I've managed to stay human for now, but I've got to be careful.'[or]'You need to be careful about what you come into contact with. From what I've seen, lots of stuff - even random objects - can prompt a mutation. There was one guy while I was trying to get here who turned into a cougar just because that was the kind of car he was driving.'[or]'Ever since this started, I've been really horny. I'm sometimes tempted to just give up on all this hiding and throw myself into the arms of one of those sexy creatures I see from the windows. I'm guessing that's how they get you.'[or]'Thanks again for helping me out back there. I don't think I would have made it out of there without your help. That ewe was cute and all, but I've never been a sheep to just follow the herd.'[or]'Stuck here on my own, I can't help but sometimes think of everyone whose lives have been destroyed by this mess. So many dead or driven mad. It's a disaster when you really think about it.'[in random order]";
	else if HP of Kristen <= 15:
		say "ERROR-Kristen-[HP of Kristen]T: You should be able to talk to me.";
	else if HP of Kristen is 16:
		say "     [one of]'It's nice to be back together with Janice. We're better friends than ever[if Libido of Kristen is 2]. Isn't that right?' she asks the other vixen as she pats her bottom[else if Libido of Kristen is 3],' she says, demonstrating this with a very sexy kiss with the other vixen[else],' she says, demonstrating this with gropes of the vixen's breasts from behind[end if].'[or]'Janice has been showing me that there are some definite perks to being a [if Libido of Kristen is 2]beautiful[else if Libido of Kristen is 3]sexy[else]slutty[end if] vixen.'[or]'I've been meeting Janice's other would-be suitors. But don't worry, you're definitely our favorite.'[or]'As nice as it is to be here with Janice, it can be a little too loud at times. Sometimes you just want some quiet time... together.' She runs a paw across your cheek on that final word.[or][if Libido of Kristen is 2]'Thanks for all your help, hon.'[else if Libido of Kristen is 3]'Why don't you stick around? Janice and I would love to show you our appreciation for our mate,' she says while brushing her tail across your side.[else]'I'm quite popular with many of the club-goers.'[end if][or]'The Palomino's always been a good club, but I think I like this new version even better.'[or][if Libido of Kristen is 2]'Do you really think I'm beautiful like this?' she asks with a teasing swish of her tail[else if Libido of kristen is 3]'Tell me again how beautiful I am,' she says as she poses sexily, longing for your approval[else]'Don't you think I look sexy,' she asks, posing wantonly before you[end if].[or]Kristen takes you out into the club to dance for a while, [if Libido of Kristen is 2]the two of you having a good time[else if Libido of Kristen is 3]sharing a slow dance together[else]bumping and grinding her sexy body against yours[end if].[in random order]";


Section 4 - Kristen TF

to say kristentf_phase1:	[denial/anger]
	say "     There is a longer than usual delay from when you signal your arrival to when the ladder is lowered down for you to climb up. Already concerned, you hurry up the ladder and get inside quickly. You find Kristen staring into the living room mirror, hands pressing down and tugging on her now vulpine ears. She's clearly quite agitated and looks over at you. 'I thought this must be a dream brought on by you telling me about Janice. But now you've showed up and they're still here,' she says, rubbing her fox ears. 'Are they really there or am I still dreaming?'";
	say "     Telling her that they're really there, she chokes back a sob and flops bonelessly into a plush chair. 'But they can't be; I've been so careful. I've not had to go out since your last visit. This must be some kind of mistake. It's some kind of mistake, isn't it?' the fox-eared woman pleads with tears in her eyes.";
	WaitLineBreak;
	say "     You shake your head and tell her about your encounter with Janice, telling her you suspect that the blouse she's now wearing was booby-trapped to infect her. Hearing this, she gives a fearful [']yip['] and starts pulling it off, leaving her with just a bra covering her breast. Tossing it to you, you find several long strands of the vixen's white fur on the inside of it, probably from her bushy tail. Giving it a sniff, you catch the faint scent of vulpine and the vixen's arousal on it, somewhat faint and hidden by the masking scents of the apartment.";
	say "     When you confirm your hypothesis, Kristen loses it. Swatting a nearby vase, she sends it flying into the wall. 'That bitch! I'll wring her fuzzy little neck.' She storms around the room, throwing a few more of Janice's expensive furnishings around. 'I'll kick her ass from here to Sunday. No, I'll find the biggest strap-on I can and pound her ass until it's raw. Mmm... that sounds like fun! Eeep!' She freezes mid-step and slaps her hands over her mouth, eyes wide in shock at what she just said. 'Oh no! It's starting to affect my brain,' she says, a bit of a tremble in her voice.";
	WaitLineBreak;
	say "     Noticing that she's been strutting around in her bra and that your eyes are on her, she turns her attention to you. 'That's it, isn't it? This is all your fault! You brought this... this... this horrible [bold type]thing[roman type] to me,' she says, grabbing the blouse and throwing it in your face. 'You're trying to get me infected, too! You want to make me into a slutty beast for you to fuck, don't you?' she snarls. She grabs another vase and sends it flying a foot from your head.";
	say "     Clearly you'll need to help Kristen through this, though how you go about it will likely have profound affects on her by the time it's over. You could try to be [link]supportive (1)[as]1[end link] in the hopes of calming her down. You could take a more [link]seductive (2)[as]2[end link] approach in the hopes of getting her hot for you. Or, you can not bother waiting and take a [link]forceful (3)[as]3[end link] approach to get some hot sexing right now. What shall you do?";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
	if calcnumber is 1:
		say "     Knowing now is not the time to be thinking of yourself, you try to just calm her down so you can help her. At first she's still too angry about everything to really listen, but you finally get her to stop and listen when you remind her that she needs to be quiet or she'll attract undo attention to her hideout and make things worse. She huffs angrily and thumps herself back down in the chair. After screaming into a cushion for a bit, she sits arms crossed and ears back.";
		say "     Reassuring her that she can get through this, you tell her to take a minute to take a deep breath. She closes her eyes and takes a few takes a few slow, deep breaths. As she does, her ears rise up a little. Once she opens her eyes, she's a little calmer, though is still glaring around the room. 'This sucks,' she grumbles.";
		WaitLineBreak;
		if BodyName of Player is "Human" and player is pure:
			say "     You start by telling her that you've met several others who've managed to maintain control despite changing. And she's only changed a little and hasn't been forcibly sexed into transforming, so it should be easier for her to stay sane. 'That's easy for you to say; you're still human,' she snaps.";
			say "     'I am for now, but I know that could easily change,' you tell her. 'You knew this was a possibility you might have to face. But it doesn't mean you have to become one of those wild creatures out there. If you can stay calm and focused, I know you can get through this.'";
		else:
			say "     You start by reminder her that she's not the only one here who's changed and that you've managed to keep it together for the most part. You add that you've met several others who've managed to maintain control despite being radically transformed. And she's only changed a little and hasn't been forcibly sexed into transforming, so it should be easier for her than most to stay sane. 'Well, how do you know I'll be one of the lucky ones?' she snaps.";
			say "     'Part of it might be luck, but a lot of it is self-control,' you tell her. 'You knew this was a possibility you might have to face. But it doesn't mean you have to become one of those wild creatures out there. If you can stay calm and focused, I know you can get through this.' You go on to explain some of the things, like your journal, that you've been using to try and keep a hold of your original personality.";
		say "     'God damn it, Janice. Why'd you have to do this to me?' she snarls, throwing a cushion at the mirror. 'You were my friend.'";
		WaitLineBreak;
		say "     You go over to her slowly and pat her shoulder. 'I'm sure Janice just misses her best friend. Despite having lots of suitors, she's clearly lonely. While you're human, it's not safe for you to visit her. She's been confused by her infection into thinking this is the right way to get her friend back.'";
		say "     Kristen grumbles and huffs, her ears twitching as she fluctuates between being angry with and sad for her friend. 'Look, I'm going to need a while to think about this. Can you give me some time alone?' she asks. You nod and, patting her shoulder again, head back out. Before dropping your head below the window line, you reassure her that you'll come visit her again soon.";
		now Libido of Kristen is 2;
	else if calcnumber is 2:
		say "     Knowing you'll need to be subtle and not rush things with her, especially with her in such a state, you try to calm her down. At first, she's still too angry about everything to really listen, but you finally get her to stop when you take her hands in yours and reassure her that you don't care if she's got a pair of cute foxy ears and neither should she. Her ears, hearing they're cute, perk up for a moment before dropping back again, though not quite so much. She huffs angrily and thumps herself back down into the chair. After screaming into a cushion for a bit, she sits arms crossed and ears back.";
		say "     Reassuring her that you can help her get through this, you take a seat beside her and gently caress her cheek. She closes her eyes and rests her head against your shoulder for a few moments, eyes closed. As she does, her ears rise up a little. Once she opens her eyes again, she's a little calmer, though still glares at her reflection in the mirror. 'This sucks,' she grumbles.";
		WaitLineBreak;
		if BodyName of Player is "Human" and player is pure:
			say "     You start by telling her that things could be much worse. She's still mostly human and that the vixen infection's actually quite lovely in its own way. There are a lot of others out there with more radical and even disgusting forms. 'That's easy for you to say; you're still human,' she snaps.";
			say "     'That may be the case for now, but that could easily change,' you tell her. 'And then my only choice would be to find some infection I could live with. You knew this was a possibility you might have to face, and being a sexy vixen might not be so bad. I'm sure you'll be prettier than even Janice,' you add, giving her an endearing smile.";
		else:
			say "     You start by telling her that things could be much worse. She's still mostly human and that the vixen infection's actually quite lovely in its own way. There are a lot of others out there with more radical and even disgusting forms. 'How do you deal with it?' she asks, looking over your altered form.";
			say "     'I am what I am now, but if I ever start to change into something I don't want, I could always find something more appealing I could live with. You knew this was a possibility you might have to face, and being a sexy vixen might not be so bad. I'm sure you'll be prettier than even Janice,' you add, giving her an endearing smile.";
		say "     'God damn it, Janice. Why'd you have to do this to me?' she snarls, throwing a cushion at the mirror. 'You were my friend.'";
		WaitLineBreak;
		say "     You give Kristen a tender hug, holding her reassuringly. 'I'm sure Janice just misses her best friend. Despite having lots of suitors, she's clearly lonely. You're such a nice girl, of course she wants to see you again,' you say, hugging her again. 'She's just been confused by her infection into thinking this is the right way to get her friend back.'";
		say "     Kristen grumbles and huffs, her ears twitching as she fluctuates between being angry with and sad for her friend as she clutches herself to you for strength. 'Look, I'm going to need a while to think about this. Can you give me some time alone, hon?' she asks. You nod and, patting her shoulder again, head back out. Before dropping your head below the window line, you blow her a quick kiss that makes her blush and perks her ears right back up again.";
		now Libido of Kristen is 3;
	else if calcnumber is 3:
		say "     Having wanted the hot woman for a while, a dark part of you sees this as the perfect opportunity to start acting upon those desires. Grabbing her wrists, you press her to the wall and give her a kiss. At first she's shocked and her ears fall back in anger, but they soon rise as her pent-up lust struggles against it. Popping open her jeans, you slide a hand into them to rub the crotch of her panties, drawing a moan from her even as she squirms with uncertainty. 'But I... I... it's not safe... I could change more...' she pants.";
		say "     Pushing her over to the plush chair, you shove her down onto it. 'If you're going to be a sexy vixen either way, you may as well enjoy it,' you say huskily, nibbling along her neck. 'You're already such a foxy woman, I can hardly wait to [if Player is male]bang you as a fox[else]go to town with you as a fox[end if],' you add as you tug down her jeans and panties enough to bare her crotch. You're pleased to see that her ears aren't her only change, her pubic hair having become a fluff of white fur. You stuff a few fingers into her hot, wet pussy and are delighted by her moans.";
		WaitLineBreak;
		say "     'Wait! Oh! Ahhh! That's so good... I've needed relief for so long. Been so scared to play with myself, I've only gotten off a handful of times since this started.' You nuzzle up to those new ears of hers and nibble on them. This sends shivers down her spine that makes her cunt quiver around your probing digits. Telling her that once she's a lovely Arctic fox, she won't need to worry about holding back any longer.";
		say "     When you guide your free hand to her bra and fondle her covered breasts, her panting turns into yipping. Being so pent up, her excitement grows quickly and soon she's crying out in her first orgasm in far too long. Her hot juices soak her crotch and your hand, and you give her another kiss, this time playing your tongue across hers until her orgasm subsides into a slow grinding of her hips. Withdrawing your fingers, you smile down at her as she basks in the afterglow, telling her that she can feel this good all the time once she's a sexy vixen like Janice.";
		say "     'God damn it, Janice. Why'd you have to do this to me?' she half-heartedly grumbles, throwing a cushion at the mirror. 'You were my friend.'";
		WaitLineBreak;
		say "     Giving her breast a squeeze, you get her to moan again. 'Janice just misses her best friend and wants you to be a sexy vixen so you can help keep her company. She's got plenty of suitors, but she's still lonely. And if you were there with her,' you add, rubbing a slow circle around her nipple, 'you could share in those suitors of hers.'";
		say "     Kristen grumbles, but her ears perk up, that having a certain appeal to her in her presently sex-addled state. She puts an arm around you and rubs her body to yours, a hand even grabbing your ass quickly. 'I... I'm probably going to need a while to think about this. Can I maybe have some time alone to... uh... think?' she asks, her other hand subconsciously slipping to her wet crotch. Grinning and knowing what kind of [']thinking['] she'll probably end up doing, you nod and leave her to it. Before climbing out the window and down the ladder, you tell her you'll be back for more, which causes her ears to twitch.";
		now Libido of Kristen is 4;


to say kristentf_phase2:	[bargaining]
	say "     When you announce your arrival below Kirsten's hideout, she's at the window and lowering the ladder in record time. Heading up, you're helped through the window rather roughly. 'I'm glad you're back. I need your help,' she says frantically, not even bothering to remove the ladder or even close the window before starting, quite unlike herself. As you take care of all that, she continues on. 'Look, you know how the soldiers out there [if XP of Kristen is 0]seem to be resistant to transformation? They've got some kind of spray or pills or something that ups their resistance. [else]have got that spray stuff to make them more resistant and reverse minor changes? [end if]Now, if you can get a bunch of that stuff for me - I mean like a whole lot - maybe you can help me get out of this mess.' She spews out her plan quickly, almost babbling in here eagerness for your assistance. She's pants heavily and grips your shoulders firmly with her paws.";
	say "     The sight of her paws draws your attention to them and you look her over. In addition to her foxish ears, she's now got paw-like hands. They're mostly human in form with elegant digits, but also have pawpads and small claws at the fingertips. Short, black fur covers them, thinning as it crosses her wrists and her human skin resumes. She's wearing her white shirt again, though [if Libido of Kristen is 4]you can see that the white fluff that started at her crotch has crept up past her navel, spreading further[else]you catch a glimpse of some white fluff that's spread from her crotch and up past her navel[end if]. Her figure, already quite lovely, has subtly changed to make her even more appealing. She's got a short fox tail that's started to form as well, only about a foot or so long at present. Following her legs down to her feet, you can see they've become black-furred paws as well, though somewhat more animal-like than her hands. With her changes progressing even without the blouse on any more, it's clear why she's frantic to find a way to stop this.";
	WaitLineBreak;
	say "     '...get away from this mess. Hey! Are you even listening?' she growls angrily while her short tail thrashes. 'This is an emergency! There's got to be a way out of this, so I was thinking we might try getting out of the city. I've got some money saved up; just a couple grand, but you can have it if you can get me out of the city. If it's a local thing, I should be safe once I get away from whatever's causing this mess. I mean, it's not like it's fully changed me yet,' she says with desperate hope.";
	say "     Realizing that your chances of getting past the military cordon are grim, you immediately try to dissuade her from this. Adding that you doubt the infection works that way, seeing how it's spreading despite having taken off the blouse that set it off. The nanites are in her and actively making her more foxish.";
	WaitLineBreak;
	say "     'Maybe the army thing is too risky... So then we need a scientist or a doctor or something. Someone in this crazy city's got to know what's going on and how to cure this. I mean, if it started here, then someone or something set it off, so somebody's got to know what's happening or is at least working on solving it. We just need to find them and then they can fix me. There must be teams of scientists outside the city trying to undo this. If we could get out and find them...' she goes on, returning to escaping the city.";
	say "     She seems ready to keep trying to find a way out of her predicament. How shall you respond?";
	if Libido of kristen <= 2, say "[link][bracket]1[close bracket] - Dissuade her[as]1[end link] from her madcap false hopes,[line break]";
	if Libido of kristen <= 3, say "[link][bracket]2[close bracket] - Snuggle up[as]2[end link] with a promise to keep looking for a solution, or[line break]";
	if Libido of kristen <= 4, say "[link][bracket]3[close bracket] - Shut her up[as]3[end link] by giving her mouth something else to do.";
	now calcnumber is 0;
	let x be Libido of Kristen - 1;
	while calcnumber < x or calcnumber > 3:
		if calcnumber is 1 or calcnumber is 2:
			say "It is too late to try that approach after what you did earlier.";
		say "Choice? ([x]-3)>[run paragraph on]";
		get a number;
	if calcnumber is 1 and Libido of Kristen <= 2:
		say "     Not wanting her to get carried away or try anything foolish, you get her to sit down and talk to her";
		if ( HP of Doctor Matt > 0 and HP of Doctor Matt < 100 ) or ( hospquest >= 2 ):
			say ". Explaining that you've already met someone studying the nanites in the city, you tell her that nothing can be done. The microscopic robots are out of control. At first, she's desperately holding out hope, but eventually it seems to sink in. She sighs heavily and leans back against the couch. 'I just... it's just not fair,' she says sadly.";
		else:
			say ". Saying that you don't think anyone can control this mess - if someone had a solution for it, they'd already be out there curing everyone. And to keep her from doing anything desperately foolish, you add that the military are desperate to keep the infected inside the city. They can't risk the infection spreading any further, so trying to get past them would likely be fatal. She seems ready to continue at first, but then just sighs heavily and leans back against the couch. 'I just... it's just not fair,' she says sadly.";
		say "     Resting your hand on her paw, you give it a soft squeeze. Telling her again that she can get through this and that you'll be there to support her helps to cheer her up a little. She gives you a weak smile. 'Thanks for putting up with me. I think I need to be alone for a while, though.' Nodding, you pat her shoulder reassuringly and leave the apartment, promising to return again soon.";
		now Libido of Kristen is 2;
	else if calcnumber is 2 and Libido of Kristen <= 3:
		say "     Putting your arms around her, you hug her to your [bodydesc of Player] body. Promising that you'll keep looking for her seems to relieve her somewhat. With a soft sigh, she relaxes and rests her head against your shoulder. 'I'm just so scared,' she says. Running your hand along her side and across her hip, you tell her that she needn't be afraid as long as she has you and add that you'll be there to help her. Nuzzling your neck, she hugs you back.";
		say "     Sitting on the sofa with her, you keep her in your arms, holding her comfortingly. She prattles on with few more wild ideas on how she can possibly escape her growing infection, all with no real chance for success. You do your best to comfort her while working to get her to put her trust in you rather than these schemes. Your responses are a mix of promises that you'll keep trying, warnings that she should stay here where it's safe and reassurances that you'll take care of her, no matter what. These are all lightly peppered with comments about how lovely she is or how she'll still be beautiful even as a vixen. Through this, she clings to you with a growing need.";
		say "     Eventually, your promises do mean that you have to head back into the city to at least make a token effort to try and find a solution for her. She is a little reluctant to let you go, torn between her desire for your reassuring presence and her desperate hopes for a cure. Before you make your exit, you pull her into a final hug, squeezing her ass and giving her a passionate kiss. She brushes her padded fingers lightly against her lips as she watches you depart, now left with thoughts of you for the moment instead of her worries.";
		now Libido of Kristen is 3;
	else if calcnumber is 3 and Libido of Kristen <= 4:
		if Player is male:
			say "     Rather than listen to more of these desperate plans, you lightly shove her to sit on the couch. Telling her that she's grasping at straws, you press her face to your crotch. 'And since you're going to end up being a sexy vixen, you may as well enjoy it. And I should get to enjoy it too,' you add, pressing your swelling penis to her face. The scent of your manhood distracts her as her eyes run over your [cock size desc of Player] [Cock of Player] cock. She licks her lips and gives your shaft a tentative lick, her arousal quickly overcoming her caution. After a few more licks, she's sliding your cock into her hot, wet mouth.";
			say "     Rubbing those foxish ears of hers, you tell her what fine vixen slut she'll be. Her ears dip at this at first and she blushes in shame, but they dip less each time you reiterate it and she instead sucks you all the harder. Smiling happily at her response, you get even more turned on and start thrusting between those lovely lips of hers. She moans and relaxes her throat, letting you set the pace for fucking her face. She presses a paw between her legs to play with her juicy pussy while the other fondles her breasts.";
			WaitLineBreak;
			say "     Her growing compliance makes you look forward to the day you'll be able to fuck her as a sexy, horny vixen. Just the thought of that is enough to push you over the top and you pull her face to your crotch and unload your hot semen into her mouth and down her throat. She moans again, swallowing it down with an almost desperate need. Feeding her all you've got to give, [if Ball Size of Player < 20]her mouth is left sticky and drooling cum by the time you're done[else if Ball Size of Player < 32]she's left drooling cum and has a lightly rounded stomach by the time you're done[else]her mouth is overflowing with cum and her stomach is bloated with your seed by the time you're done[end if]. She whimpers softly at your betrayal, but continues to squirm on the couch, fingering herself to a moaning climax. After enjoying that show, you tell her you'll be back to check up on her again soon and warn her not to go out or something else might make her into something much worse than a slutty vixen.";
		else if Player is female:
			say "     Rather than listen to more of these desperate plans, you lightly shove her to sit on the couch. Telling her that she's grasping at straws, you press her face to your crotch. 'And since you're going to end up being a sexy vixen, you may as well enjoy it. And I should get to enjoy it too,' you add, pressing your damp pussy to her face. The scent of your snatch distracts her as her eyes run over your [cunt size desc of Player] cunt. She licks her lips and gives your soft folds a tentative lick, her arousal quickly overcoming her caution. After a few more licks, she's lapping her tongue into your hot, wet cunny.";
			say "     Rubbing those foxish ears of hers, you tell her what fine vixen slut she'll be. Her ears dip at this at first and she blushes in shame, but they dip less each time you reiterate it and she instead licks you with a growing eagerness. Smiling happily at her response, you get even more turned on and grind your netherlips to her mouth. She moans and sucks on your clit, letting you do as you please. She presses a paw between her legs to play with her own juicy pussy while the other fondles her breasts.";
			WaitLineBreak;
			say "     Her growing compliance makes you look forward to the day you'll be able to do this with her as a sexy, horny vixen. Just the thought of that is enough to push you over the top and you pull her face to your crotch and cry out in orgasmic release. Your femcum flows across her tongue and into her mouth. She moans again, lapping it up and swallowing it down with an almost desperate need. After a long and drawn out climax, her face is left sticky with your juices and she's rather dazed in her lust. She whimpers softly at your betrayal, but continues to squirm on the couch, fingering herself to a moaning climax. After enjoying that show, you tell her you'll be back to check up on her again soon and warn her not to go out or something else might make her into something much worse than a slutty vixen.";
		else:
			say "     Rather than listen to more of these desperate plans, you lightly shove her to sit on the couch. Telling her that she's grasping at straws, you press her face to your crotch. 'And since you're going to end up being a sexy vixen, you may as well learn to enjoy it. And I should get to enjoy it too,' you add, pressing your bare crotch to her face. Ordering her to lick you there, you tell her to imagine all the throbbing cocks and juicy pussies she's going to get. She licks her lips, starting to imagine it and becoming aroused. She gives your featureless groin a tentative lick at first, her arousal quickly overcoming her caution. After a few more licks, she closes her eyes and laps and kisses at your crotch.";
			say "     Rubbing those foxish ears of hers, you tell her what fine vixen slut she'll be. Her ears dip at this at first and she blushes in shame, but they dip less each time you reiterate it and she instead licks you with a growing eagerness. Smiling happily at her response, you get even more turned on and grind your flat groin to her mouth. She moans and works her tongue wildly across your skin, clearly imagining those cocks and pussies you tell her she won't be able to resist tasting. She presses a paw between her legs to play with her own juicy pussy while the other fondles her breasts.";
			WaitLineBreak;
			say "     Her growing compliance makes you long for a gender of your own so you can properly enjoy the day you'll be able to do this with her as a sexy, horny vixen. Just the thought of that is enough to push you over the top and you pull her face to your crotch. Having no focused means of release, your [bodytype of Player] body trembles with pent-up arousal and you grind your flat groin against her face hard. She moans again, kissing and licking at it with an almost desperate need to satisfy you. After your unsatisfying release fades, you push her away. She whimpers softly at your betrayal, but continues to squirm on the couch, fingering herself to a moaning climax. After enjoying that show, you tell her you'll be back to check up on her again soon and warn her not to go out or something else might make her into something much worse than a slutty vixen.";
		now Libido of Kristen is 4;

to say kristentf_phase3:	[depression]
	say "     Arriving outside Kristen's, you toss a few pebbles up at the window to let her know you're there. At first there's no answer and you wonder if she's out. After tossing a few more and getting no response, you double-check on the ladder's hiding spot, but don't find it there. Knowing she must be upstairs, you toss a few more pebbles and risk calling up to her. Finally, you see a corner of the blinds be split open as she peers out at you. After a long delay, the window opens and the ladder is lowered out for you.";
	say "     Coming up, you find her sitting on the floor next to the window. She's slumped against the wall [if Libido of Kristen is 4]with a sad expression on her muzzled face, but also a paw stuffed into her shorts[else]with a sad expression on her muzzled face, ears hanging low[end if]. That muzzle is not her only change either, her infection having progressed noticeably since your last visit. Starting from the top, her hair's gone from its previous dirty blond to a lustrous white. A little lower is her muzzle, not fully formed, but definitely vulpine in shape, with a dark nose and markings contrasting sharply with the white fur. The fur on her arms has extended further, nearly to her elbows. This makes the charcoal fur seem like long-sleeved gloves on her arms. Similarly, her legs have black [']socks['] that go almost to her knees. Her tail's also grown further, full and fluffy now, though flopped out limply on the floor.";
	WaitLineBreak;
	if Libido of Kristen is 2:
		say "     'I've tried to hold on, but I don't think I can do it much longer,' she says sadly, her voice drained of life by her depression";
	else if Libido of Kristen is 3:
		say "     'No luck finding a way out of this? I didn't think so,' she says sadly, her voice drained of life by her depression";
	else:
		say "     'Come to finish me off, have you?' she asks flatly, not even bothering to look up";
	say ". 'I just keep changing more and more[if Libido of Kristen is 4], and getting hornier and hornier[end if]. Soon there won't be anything left of the old me at all. There's no point in fighting it. I may as well just wander outside and let some [if Libido of Kristen is 4]sexy[else]strange[end if] creature find me.";
	say "     Given how drained and fatalistic she's sounding, you'll need to do something to shake her out of this funk. How shall you respond?";
	if Libido of kristen <= 2, say "[link][bracket]1[close bracket] - Keep encouraging her[as]1[end link],[line break]";
	if Libido of kristen <= 3, say "[link][bracket]2[close bracket] - Charm her[as]2[end link] during a romantic walk, or[line break]";
	if Libido of kristen <= 4, say "[link][bracket]3[close bracket] - Fuck her[as]3[end link] out of her funk.";
	now calcnumber is 0;
	let x be Libido of Kristen - 1;
	while calcnumber < x or calcnumber > 3:
		if calcnumber is 1 or calcnumber is 2:
			say "It is too late to try that approach after what you did earlier.";
		say "Choice? ([x]-3)>[run paragraph on]";
		get a number;
	if calcnumber is 1 and Libido of Kristen <= 2:
		say "     Responding that would be as good as dying, you give her a rough shake and tell her to keep fighting. She's inconsolate at first, so you remind her that Kristen the person is still in there and that she's got to hold onto that. People never stay the same person throughout their lives; they just don't change this quickly. If she can hold onto herself, she'll be Kristen the vixen; but if not, then Kristen dies and all there is a feral vixen - for as long as that lasts before some monster out there changes her further and even that disappears.";
		say "     'But what's the point then, if I'm now this vixen instead of me?' she asks.";
		say "     'Who says you can't be both?' you respond. 'In this crazy city, there's much worse things to be than a foxy lady.'";
		say "     She nods a little at that. 'Yeah, like those sheep out there. Hoping to be someone's woolly cum-rag before they're someone's mutton,' she says. 'And you'd saved me from that. I guess you're right that things could be worse.'";
		WaitLineBreak;
		say "     With a sniffle, Kristen moves away from the wall and leans against you instead. Putting your arms around her, you hold her comfortingly. Resting her vulpine head against your shoulder, she has a much-needed cry. You let her get it all out, occasionally reassuring her that she can get through this, but mostly just holding her quietly.";
		say "     Some time after she's finished crying, she moves back. Wiping her eyes with her fuzzy wrist, she gives you a weak smile. 'Thanks for being there for me. I should probably go lie down for a while, but can you come check on me again soon?' Leaning in quickly, she gives you a peck on the cheek before rising to her feet. Giving her a final reassurance, you exit through the window and wave to her as she pulls the ladder back in behind you.";
		now Libido of Kristen is 2;
	else if calcnumber is 2 and Libido of Kristen <= 3:
		say "     Taking one of her paws in hand, you pull her up to her feet, telling her that being cooped up in here isn't helping her mood. She sighs and asks if you're just going to find some beast out there to claim her. Pulling her to your side, you tell her that you're not giving up on your foxy vixen. Adding that you'll be there for her, you let your free hand glide across her ass. She rests her head on your shoulder, her tail giving a slight wag.";
		say "     After exiting her haven and stowing the ladder, you talk on a walk through some of the more peaceful areas you've seen. You have to be cautious, but thankfully run into no problems you can't handle with a keen eye or a menacing growl. Eventually, your path takes you to the west end of the city and a cliff overlooking the ocean. Remembering it as a being a rather successful make-out point, you did not arrive here by accident.";
		WaitLineBreak;
		say "     Having already cheered up a little while walking with you, thanks to some friendly conversation peppered with compliments, her mood's started to improve. Sitting with her on a grassy spot near the railing, you put your arm around her and [if daytimer is day]look out over the rolling waves, taking in the fresh sea air. While watching the ocean[else]look up at the stars while listening to the rolling waves, taking in the fresh sea air. While stargazing[end if], you continue to lay on the charm, being complimentary to her new looks and saying stuff like how her natural beauty still shines through even as she's changing. Her mood improves over time, still a little sad, but also hanging on your words, loving the attention after being lonely for so long.";
		say "     You play it cool, not going too fast, though you keep an arm around her back with hand on hip and the other across her tummy, softly stroking her soft fur. After gazing long into her now yellow eyes (describing them as shining, golden gems), you move in to kiss her...";
		WaitLineBreak;
		say "...only to be interrupted by one of those female huskies. 'Oooo! Hawt! Can I join in?' she asks, advancing quickly.";
		WaitLineBreak;
		say "     Grumbling inside at the interruption just as things were getting good, you start to rise to deal with her. But you're beaten to the punch by Kristen, who stomps towards the fluffy dog and smacks her firmly with a rolled up newspaper from the nearby waste bin. She whaps the dog a few times on her muzzle with a snarl.";
		say "     'You bitch! Get your own [if Player is male]man[else if Player is female]girl[else]guy[end if],' she snaps at the canine girl. The husky whimpers and clutches her bopped nose, slinking back several paces before turning and running away with her tail between her legs. Kristen huffs and tosses the paper aside, then laughs a little. Looking back at you, she blushes at her ears and rushes into your arms. Clinging to you tightly, she rests her head against your chest and winds her fluffy tail around you. After this long hug, she lets go and says that she should probably get back before anything meaner finds you. A little reluctant to let her go when you were so close, you do make sure to give her that kiss (along with a pat on the ass) and tell the lovely vixen to be careful before you part ways with a promise to come see her after she's had a chance to rest.";
		now Libido of Kristen is 3;
	else if calcnumber is 3 and Libido of Kristen <= 4:
		say "     'Well, if you're just going to become a slutty vixen anyhow, let's make the most of it. I'm not just going to let some random beast out there have you. You're too sexy a fox to let get away,' you say with a lascivious edge in your voice.";
		say "     Taking one of her paws in hand, you pull her up and onto the couch instead. Sliding down her shorts, you bare her juicy pussy to you[if Libido of Kristen is 4]. She moans and pants, spreading her legs in wanton need despite herself[else]. She doesn't resist as you spread her legs[end if]. Groping a breast from under her shirt, you dip a pair of fingers into her pussy and work them around inside her already dripping cunny.";
		WaitLineBreak;
		say "     'MMm... ohh... but I thought you were my friend. Why're you doing this to me?' she manages to ask between pants as her excited body quivers on the cushions.";
		say "     'That's why I'm doing it,' you say with a smile, licking her muzzle. 'You need to accept that you're a slutty vixen now. It'll be fun, you'll see.' Wriggling your fingers inside her quivering cunny, you tease her clit. '[if Libido of Kristen is 4]Didn't you have fun earlier[else]Doesn't that feel good[end if]?'";
		WaitLineBreak;
		if Player is male:
			say "     She nibbles at her lip and releases a whimper of pleasure. 'Yessss...' she moans softly, 'but...' Cutting off her hesitant objection with a kiss, you move into position atop her. Easing your fingers out of her pussy, you grind your erection against it instead. Her body responds, pressing back against your throbbing meat with a need to be filled. You tease her like that until she's moaning to have you fill her, her earlier concerns forgotten in her lustful state.";
			say "     Hearing her begging for a good fucking, you don't keep her waiting any longer. With a hand on her thigh and the other guiding your cock in, you thrust your [Cock of Player] penis into her vulpine snatch. She yips and yiffs excitedly, finally about to get the fucking she's been trying to resist for so long. And her body, finally getting what it's been needing since she's started to change, pushes back onto your pole to welcome it into her heated depths.";
			WaitLineBreak;
			say "     As you thrust, you tell her what a sexy, beautiful and (most importantly) slutty vixen she's becoming. Worn down by this point, she can't help but moan in agreement. She also grows more vigorous in her participation, running her paws over your chest before moving them to her breasts. She plays with her tits and rubs her pierced nipples in a wanton display that excites you further.";
			say "     Feeling your orgasm approaching, you tell her you're about to cum. 'Ngg... no... not inside me,' she moans even as her hips grind into your thrusts all the harder. Pulling out at the last possible moment, you grab your pulsing rod and spray your load across her sexy body. Between groans, you tell her that next time you'll be finishing in her. Already fingering herself, she plunges her digits in deep and orgasms with a series of moaning yips.";
			WaitLineBreak;
			say "     The spent vixen ends up passing out after her release. Leaving her coated in your cum as a reminder that you'll be back for more, you exit her hidden abode. Storing the ladder away should ensure that she'll be there when you return to finish the job.";
			now kristentf3fuck is true;
		else if Player is female:
			say "     She nibbles at her lip and releases a whimper of pleasure. 'Yessss...' she moans softly, 'but...' Cutting off her hesitant objection with a kiss, you turn yourself around overtop her. Pressing your wet pussy against her new muzzle, she's given a heady nose-full of your aroused scent, further clouding her reason. Easing your fingers out of her pussy, you press your lips to her juicy folds and start licking very delicately. Her body responds, pressing back against your sliding tongue. You continue to tease her with the barest of touches until she's moaning for you to eat her out and slathering her own tongue across your heated folds.";
			say "     Hearing her begging for it and eating you out to get it, you don't keep her waiting any longer. Spreading her pussy open with your fingers, you dive your tongue into her vulpine snatch. She yips and yiffs excitedly, finally getting the release she's been trying to resist for so long. And her body, fueled by the taste and scent of your musky juices, is wracked with pleasure and pulls your hips down onto her face even tighter so her tongue can delve deeper.";
			WaitLineBreak;
			say "     As you eat each other out, you tell her what a sexy, beautiful and (most importantly) slutty vixen she's becoming. Worn down by this point, she can't help but moan in agreement. She also grows more vigorous in her participation, her fingers exploring your pussy[if anallevel is 3] and anus[end if], inside and out, while her tongue ravishes you. She licks and sucks at your clit wantonly to excite you further. Soon, you're both enjoying a crashing orgasm, wetting one another's faces with your feminine juices, as you cry out in release. Her moans of delight are intermixed with yips as her tongue laps up as much of your delicious femcum as she can get.";
			WaitLineBreak;
			say "     The spent vixen ends up passing out after her release. Leaving her muzzle coated in your sticky juices as a reminder that you'll be back for more, you exit her hidden abode. Storing the ladder away should ensure that she'll be there when you return to finish the job.";
		else:
			say "[bracket]***Neuter scene to be added later. - The Mgmt[close bracket][line break]";
		now Libido of Kristen is 4;


to say kristentf_phase4:	[acceptance]
	if Libido of Kristen is 2:
		say "[kristentf_phase4_2]"; [supportive]
	else if Libido of Kristen is 3:
		say "[kristentf_phase4_3]"; [seductive]
	else:
		say "[kristentf_phase4_4]"; [forceful]
	now HP of Kristen is 16;
	increase score by 25;

to say kristentf_phase4_2:		[supportive]
	say "     You're pleased to see Kristen lower the ladder for you promptly when you signal your arrival. Hoping that this is a good sign, you head up into her hideout. She greets you with a weak smile and does a quick turn around, showing that she's fully transformed. 'I guess there's no fighting it now. I'm a fox and I'm just going to have to deal with that.'";
	say "     Looking her over the transformed woman, you can see that she's indeed become fully vulpine. Her muzzle's finished forming and is exotically attractive now. The fur that's spread across her body is an ivory white, like her hair now, and transitions to charcoal black halfway along her upper arm and just under her knees. This almost gives her the appearance of wearing elegant gloves and dark socks. Her ears and the tip of her fluffy tail are also black. Under the fur, her body's changed subtly, her figure becoming more attractive and alluring. She's also taken to wearing the traitorous blouse that started this transformation, worn over her slightly fuller and perkier breasts.";
	WaitLineBreak;
	say "     'I don't know if I would have been able to handle this without you. Whenever it felt like I was going to snap and do something foolish out of fear or lust, I thought of your advice and tried to keep a level head.' She gives you a quick kiss in thanks... or at least that's how it starts. Soon she has her arms draped around you and she's kissing you passionately. 'And if I'm going to be a sexy fox woman, I think I should give this hot new bod of mine a test drive, don't you?' she says with a grin.";
	say "     Taking her paw in hand, you go with her into the bedroom and there you strip one another of clothes and gear. Lowering the beautiful vixen onto the soft bed, you give her another kiss before taking another opportunity to run your eyes over her lovely new form. Your eyes are soon drawn to her wet snatch though and her eager paws urge you gently to move into position. Not wanting to keep you friend or yourself waiting any longer, you ";
	if Player is male:
		say "move atop her and grind your throbbing [Cock of Player] cock against her furry thigh.";
		say "     'Mmmm! Come on, hon. Let's see what this new body of mine can do,' she says with a playful grin as she wraps one leg around your waist. Your [Cock of Player] penis sinks into her [if Cock Length of Player < 8]welcoming pussy with ease[else if Cock Length of Player < 16]juicy pussy[else]juicy pussy with a moan as the vixen's cunny is spread to accommodate your [cock size desc of Player] manhood[end if].";
		WaitLineBreak;
		say "     As the two of you fuck on the plush bed, your hands run over each other's body. You caress her vulpine form, stroking her soft, glossy coat. This petting soon turns more sexual as your hands settle on her breasts. You rub those lovely mounds and tease her pierced nipples, much to her delight. She ends up gripping your ass with one kneading paw while the other [if Breast Size of Player > 0]cups one of your breasts while her thumb teases your nipple[else]caresses your chest and side[end if]. Kristen's pussy squeezes down upon you with every thrust you make, her vulpine body eager for sexual release. As your thrust grows increasingly fast and strong, the bed starts to rock, thumping against the wall. Some small corner of your mind worries for a moment this might be noticed, but the vixen is enjoying this much-anticipated fuck too much to consider pausing or holding back at this point.";
		say "     'Oh yiff! Just keep going! I'm not to wait any longer,' she moans, grinding herself firmly into each thrust. Feeling yourself getting closer, you moan that you're about to cum and make her a cream-filled vixen. Deep in lustful passion, her ears only twitch momentarily as she nibbles her lip, but she's too close now to have you pull out. And as quick as it came, that final worry fades and she cries out in orgasm as she stops holding back. 'Do it! Do it, baby! Pump your cum into my hot vixen pussy!'";
		WaitLineBreak;
		say "     Hearing her unrestrained passion like that pushes you over the top and you drill your rod deep into the lustful vixen and cum hard. Blast after blast of your rich seed is pumped messily into her quivering hole. Feeling your [Cum Load Size of Player] load painting her vaginal walls, she's driven to a second orgasm on the heels of the first. You continue to pound into her, draining all your [Ball Size Adjective of Player] [Balls] will give.";
	else if Player is female:
		say "climb in to join her.";
		say "     Stretching out across the bed, you lay opposite to Kristen and snuggle in close. After some more kissing and playful groping, she turns herself around and into a 69 with you. Given a clear view of her vulpine pussy, you lick your lips and dive in, the vixen doing the same to you. Brushing your fingertips across her damp folds, you take in the alluring scent of her arousal. After parting those juicy lips, you give her clit a slow lick that makes her moan. You then set yourself to the delicious task of eating her out.";
		WaitLineBreak;
		say "     While you are doing so, she is no less diligent in her attempts to pleasure you. She works [if Cunt Tightness of Player < 4]a finger[else if Cunt Tightness of Player < 8]a pair of fingers[else if Cunt Tightness of Player < 12]three fingers[else]her paw[end if] inside your quivering tunnel while lapping across your juicy petals. This is peppered with the occasional kiss or suck at your sensitive clit. After a few quick orgasms, you work each other up carefully, finally building to a crashing climax that has you both cumming hard.";
		say "     'Oh yes! Yes! That feels soooo good.' Hearing her unrestrained passion like that makes it all the better and you wriggle your tongue into the lustful vixen's cunny, to her even greater delight. You eagerly lap up each other's juices until finally you're both left panting and dazed in post-coital bliss. A little wobbly, she turns herself back around to snuggle into your arms, sharing a kiss rich in your mutual juices.";
	else:
		say "into a 69 position alongside her.";
		say "[bracket]***Neuter scene to be added later. - The Mgmt[close bracket][line break]";
	WaitLineBreak;
	say "     After laying in bed together for a while to recover (and, in your case, just enjoy the chance to be in a proper bed for a while), you get up and start helping Kristen gather a few things. She's decided to leave here and go to the Palomino to be with Janice. 'From the sounds of it, she'll need me there to keep her out of trouble. She might do something to really get herself into trouble next time she tries something.' And with that decided and a collection of things the two of them might need packed, you escort the sexy vixen to the club.";
	WaitLineBreak;
	move Kristen to Private Club Room;
	move player to Private Club Room;
	say "     When the two of you arrive and head into the private club room to see Janice, the arctic vixen is overjoyed to see her friend - especially in her new, vulpine state. After a quick hug, Kristen shoves the other vixen down onto her divan and pins her there. 'You conniving bitch,' she growls. 'Tricking me with your blouse to get me infected. Well if you dare think I'm just going to let you off the hook for that, you've got another thing coming.' And with that, she kisses the vixen, groping her between the legs. With aggressive passion, she finger-fucks her friend to a loud and sudden orgasm.";
	say "     With a grin, Kristen licks her juice-laden fingers clean. 'I forgive you, Janice; I understand how hard this must have been for you all on your own. Well, we're here now and I'm going to make sure you stay in line from now on. And now that you've roped me into this and gotten me all foxy, you're going to have to make it up to me... over and over again,' she says sensually with another light brush of her fingertips. Janice, still recovering from all this excitement, can only pant and nod.";
	WaitLineBreak;
	say "     After watching the hot show, you're tempted to join the sexy pair right then and here, but you remain patient and instead help Kristen unpack and settle in. 'Thanks again for all your help. Janice and I should be fine here with this stuff, so if there's anything at her place you'd like, feel free to help yourself.'";
	add { "pepperspray", "food", "food", "water bottle" } to invent of Kristen's Hideout;


to say kristentf_phase4_3:		[seductive]
	say "     You're pleased to see Kristen lower the ladder for you promptly when you signal your arrival. Hoping that this is a good sign, you head up into her hideout. She greets you with a tender smile and strikes a sexy pose before doing a quick turn around, showing that she's fully transformed. 'I guess there's no fighting it now. I'm a fox and I'm just going to have to deal with that.'";
	say "     Looking her over the transformed woman, you can see that she's indeed become fully vulpine. Her muzzle's finished forming and is exotically attractive now. The fur that's spread across her body is an ivory white, like her hair now, and transitions to charcoal black halfway along her upper arm and just under her knees. This almost gives her the appearance of wearing elegant gloves and dark socks. Her ears and the tip of her fluffy tail are also black. Under the fur, her body's changed subtly, her figure becoming more attractive and alluring. She's also taken to wearing the traitorous blouse that started this transformation, partially covering her fuller and perkier breasts.";
	WaitLineBreak;
	say "     You're almost distracted from it by Kristen's sexy new appearance, but you remind yourself that you have a plan in mind to finish seducing the lovely vixen. Taking her paw in hand, you gently caress it while gazing into her golden eyes. After a quick compliment about what a lovely vixen she makes, you offer to take her out on another date. She blushes a bit at her ears and agrees readily";
	if daytimer is day:		[daytime - park picnic]
		say ". Having her gather some supplies from the cupboards, the two of you exit down the ladder. Praising her lovely appearance and reiterating that you'll protect her on the journey, you make your way towards the city park.";
		say "     [if Park Entrance is unknown]Fortunately, your half-remembered details on how to get there turn out to be correct and you luckily avoid any significant trouble on the way[else]Fortunately, you encounter no significant trouble on the way[end if]";
		if diegotalk > 0:	[met Diego]
			say ". Seeing Diego waiting there as usual, you wrap your arm around the vixen protectively and give the coyote a sly wink as you pass. [if diegochanged is 0]He[else]She[end if] makes a show of growling lustfully at her, but slinks off when you advance. Kristen is impressed by your bravery and gives you a hug and a kiss while you and Diego share a thumbs up behind her back.";
		else:			[not met Diego]
			say ". Spotting [if Park Entrance is unknown]a[else]that[end if] coyote hanging out by the entrance, Kristen moves closer and you put your arm protectively around her. He gives her a lecherous look, but makes a show of backing off when you move between them. Kristen hugs and kisses you for being so brave. Glancing over, you spot the coyote, leaning casually against the wall again, give you a wink and a thumbs up behind her back, which you return.";
		WaitLineBreak;
		if loversbench is 0:
			say "     Making your way through the park in search of an appropriate spot, you find a peaceful clearing with an old bench. The bench is marked up with quite a few claw marks and scratches, clearly used often by others since the outbreak, as well as older, carved graffiti hearts. You suspect this bench has been a make-out spot for quite some time, being in a more secluded area in the park. Certainly there is a strong scent of sex hanging around it, even in the open air of the park, gradually starting to arouse you both. Perfect.";
		else:
			say "     Making your way through the park, you lead her to the clearing with the lovers['] bench you'd found earlier. The bench is marked up with quite a few claw marks and scratches, clearly used often by others since the outbreak, as well as older, carved graffiti hearts. You suspect this bench has been a make-out spot for quite some time, being in a more secluded area in the park. Certainly there is a strong scent of sex hanging around it, even in the open air of the park, gradually starting to arouse you both. Perfect.";
		say "     Setting out the supplies you brought on a blanket, you and Kristen enjoy a picnic in the park. While eating the food doesn't make for a particularly grand meal, the place is peaceful and (as you tell Kristen) the company is beautiful. You exchange sweet nothings for a time and, as you're finishing up the last of what you brought, eating shifts more to caresses and kisses. Seeing the bench nearby, you lead the vixen over to this well-used make-out spot. The scent of arousal and sex has you both quite excited by this point and she spreads herself out across it with a needy moan while you strip her of her blouse and jeans.";
		WaitLineBreak;
		if Player is male:
			say "     Kristen sits at an angle across the bench so her hips are pushed out and her dripping pussy is available to you. Getting a grip on the back of the wooden bench, you move your [Cock of Player] cock in position. Wrapping one leg around you, she urges you to enter her.";
			say "     'Oh baby! I've been wanting you for so long! Come now, my hero, and mount this needy vixen,' she moans with a mix of adoration and lust in her lovely eyes. She truly is beautiful, you think to yourself, as you don't keep her waiting any longer. Your [Cock of Player] penis sinks into her [if Cock Length of Player < 8]welcoming pussy with ease[else if Cock Length of Player < 16]juicy pussy[else]juicy pussy with a moan as the vixen's cunny is spread to accommodate your [cock size desc of Player] manhood[end if].";
			WaitLineBreak;
			say "     Caressing her side and sharing kisses, you make love to the lustful vixen. She pants and moans with obvious desire for her studly hero, one paw clutching your shoulder while the other digs its claws into the wooden bench, adding fresh marks to the wood. Kristen's pussy squeezes down upon you with every thrust you make, her vulpine body eager to be mated and filled. As your lovemaking grows increasingly impassioned, it never sinks to the level of just raw sex. It remains loving and tender, as if something about this place or this bench is special. Special like the lovely and beautiful vixen beneath you is.";
			say "     Rubbing one of those lovely breasts of hers and teasing its nipple get her to cry out louder, begging for you to pound her harder. As the wet sounds of sex grow louder, so does the vixen's moans of delight. 'Oh yiff! I want you soooo bad!' she pants, grinding herself firmly into each thrust. Feeling yourself getting closer, you moan that you're going to make her yours by giving her the hot load a lovely vixen like her needs. Lost in her loving desire for you, her ears only twitch as she bites her lip, but can't stop herself from gripping you all the harder. And as quick as it came, that final moment of uncertainty fades and she cries out in orgasm as she loses herself in her loving desire for you. 'Do it! Do it, baby! Pump your cum into your beautiful vixen mate!'";
			WaitLineBreak;
			say "     Hearing her give in like that pushes you over the top and you drill your rod deep into the lustful vixen and cum hard. Blast after blast of your rich seed is pumped messily into her quivering hole. Feeling your [Cum Load Size of Player] load painting her vaginal walls, she's driven to a second orgasm on the heels of the first. You continue to pound into her, draining all your [Ball Size Adjective of Player] [Balls] will give.";
		else if Player is female:
			say "     Given a clear view of her vulpine pussy, you lick your lips and dive in, the vixen moaning in delight as your tongue plays across her sensitive petals. Brushing your fingertips across her damp folds, you take in the alluring scent of her arousal. After parting those juicy lips, you give her clit a slow lick that makes her moan all the more. You then set yourself to the delicious task of eating her out until she cries out in orgasm, adding her femcum to the scents marking the oft-used bench.";
			say "     After her release, she insists you swap places with her. 'I should be the one thanking you. Oh, how I want to thank you,' she purrs with desire as she nuzzles your thigh and licks her way to your crotch. And she is quite diligent in her attempts to pleasure you with lips, tongue and fingers. She works [if Cunt Tightness of Player < 4]a finger[else if Cunt Tightness of Player < 8]a pair of fingers[else if Cunt Tightness of Player < 12]three fingers[else]her paw[end if] inside your quivering tunnel while lapping across your juicy petals. This is peppered with the occasional kiss or suck at your sensitive clit. After an initial orgasm that has you panting, she continues on, working you up carefully, finally building to a crashing climax that has you crying out and cumming hard. Your nails dig into the wood of the bench as your body is overcome with the ecstasy of release.";
			WaitLineBreak;
			say "     'Mmmm yes! You taste soooo good,' she moans between licks. You can see her other paw buried between her legs, vigorously fingering herself to another orgasm as she laps up your hot juices. After licking you clean, she ends up flopped out with her head in your lap, smiling up at you with adoration for you, her chosen lover. And you can't help but smile back, stroking her long, white hair and feeling a tenderness for this beautiful, needy vixen.";
		else:
			say "[bracket]***Neuter scene to be added later. - The Mgmt[close bracket][line break]";
		if loversbench is 0 or loversbench is 1:
			say "     As you're cleaning up your picnic site, you take a few moments to look through the scattered clothes likely dropped and forgotten by others using this popular make-out spot. You have to be careful, as some of the stuff left behind it covered in sticky stains, but by lifting them with a branch, you're able to check them out";
			if scenario is "Bunker" or scenario is "Caught Outside":
				say ". The food you find has been reduced to scraps and crumbs and the drink bottles are empty. You do find a small pocketknife in a pair of khakis, but it's no better than your own, so you toss it aside. A pair of jeans yields something of use though, a small canister of mace, which you store somewhere within easy reach. You leave the rest, finding nothing else of use to you.";
				say "     Pepperspray obtained.";
				increase carried of pepperspray by 1;
				increase score by 5;
			else:
				say ". The food you find has been reduced to scraps and crumbs and the drink bottles are empty. You do find a small pocketknife in a pair of khakis and, thinking it might be a useful tool or perhaps a weapon in a pinch, you take it. A pair of jeans yields something of use though, a small canister of mace, which you store somewhere within easy reach. You leave the rest, finding nothing else of use to you.";
				say "     Pocketknife and pepperspray obtained.";
				increase carried of pocketknife by 1;
				increase carried of pepperspray by 1;
				increase score by 10;
			now loversbench is 2;
		now Park Entrance is known;
		PlayerEat 12;
		PlayerDrink 12;
	else:		[nighttime - Ferris wheel]
		say ". After checking to make sure the coast is clear, the two of you exit down the ladder. Praising her lovely appearance and reiterating that you'll protect her on the journey, you make your way towards the state fair.";
		say "     [if State Fair is unknown]Fortunately, your half-remembered details on how to get there turn out to be correct and you luckily avoid any significant trouble on the way[else]Fortunately, you encounter no significant trouble on the way[end if]";
		if boristalk > 0:	[met Boris]
			say ". Boris waves friendlily to you as you arrive and you introduce Kristen to him. You keep the chat brief, getting some news on the recent creature activity at the fairgrounds before entering the midway with the sexy vixen. Seeing you with such a lovely woman, Boris gives you a big thumbs up. Kristen's a little saddened by the mascot's plight, but you give her a reassuring hug and tell her you'll help make sure she doesn't end up mentally lost and trapped by the infection like he has. She returns the hug with an affectionate kiss.";
		else:			[not met Boris]
			say ". A mascot lion waves in a friendly manner to you both as you arrive. While seeming safe enough, you keep your distance from the strange fellow and continue on to the midway with the sexy vixen. Glancing back at him, Kristen expresses her worry about ending up like him, lost to his infection. You give her a reassuring hug and tell her that you'll make she doesn't end up trapped like that.";
		WaitLineBreak;
		say "     While the midway is full of showy lights and carnival fun, much of it is running itself or being run by strange creatures, so you take care not to get too close. That said, there's also an air of happiness and excitement in the place that's lacking in the rest of the city and soon you start having fun together. Seeing a few other fairgoers safely use some of the game booths, you stop and play at them for a while. You get a laugh when you spot some pink sugar gliders soaring in a circle around some colorful ferrets. The two groups giggle merrily as they exchange light-hearted insults while the ferrets throw candy at the teasing marsupials. After they move on, you and Kristen gather up the scattered candies and enjoy the sweets as you continue having a good time together.";
		say "     With your eventual goal in sight, it's fairly easy to eventually meander your way to the Ferris wheel. Getting in one of the gondolas with her, you slowly ride up. As you ascend, you are treated to a beautiful view of the starry sky and the lights of the fairground. With the beautiful lights above and below, Kristen snuggles in close. Giving her muzzle a tender caress, you once again compare her golden yellow eyes to the twinkling lights before leaning in to give her a kiss. The kiss becomes passionate, and soon heated, as your hands run over each other, pushing aside clothes and gear as your excitement rises.";
		WaitLineBreak;
		if Player is male:
			say "     Kristen sits at an angle across the bench so her hips are pushed out and her dripping pussy is available to you. With some careful manoeuvring, you get your [Cock of Player] cock in position. Wrapping one leg around you, she urges you to enter her.";
			say "     'Oh baby! I've been wanting you for so long! Come now, my hero, and mount this needy vixen,' she moans with a mix of adoration and lust in her lovely eyes. She truly is beautiful, you think to yourself, as you don't keep her waiting any longer. Your [Cock of Player] penis sinks into her [if Cock Length of Player < 8]welcoming pussy with ease[else if Cock Length of Player < 16]juicy pussy[else]juicy pussy with a moan as the vixen's cunny is spread to accommodate your [cock size desc of Player] manhood[end if].";
			WaitLineBreak;
			say "     Caressing her side and sharing kisses, you make love to the lustful vixen. She pants and moans with obvious desire for her studly hero, her paws clutching your shoulders. Kristen's pussy squeezes down upon you with every thrust you make, her vulpine body eager to be mated and filled. As your lovemaking grows increasingly impassioned, the gondola you're riding in gently sways, setting a gentle rhythm for the lovers inside. The mutant carny running the ride does give your pod a leering look as you go by, but lets you keep riding for several passes. From the moans and wet sounds from the other passenger cars, you can tell you two aren't the only ones moved to passion by the beautiful night tonight.";
			say "     Rubbing one of those lovely breasts of hers and teasing its nipple get her to cry out louder, begging for you to pound her harder. Doing so sets the gondola to rocking further, making it quite clear to any looking outside what's occurring within. 'Oh yiff! I want you soooo bad!' she pants, grinding herself firmly into each thrust. Feeling yourself getting closer, you moan that you're going to make her yours by giving her the hot load a lovely vixen like her needs. Lost in her loving desire for you, her ears only twitch as she bites her lip, but can't stop herself from gripping you the harder. And as quick as it came, that final moment of uncertainty fades and she cries out in orgasm as she loses herself in her loving desire for you. 'Do it! Do it, baby! Pump your cum into your beautiful vixen mate!'";
			WaitLineBreak;
			say "     Hearing her give in like that pushes you over the top and you drill your rod deep into the lustful vixen and cum hard. Blast after blast of your rich seed is pumped messily into her quivering hole. Feeling your [Cum Load Size of Player] load painting her vaginal walls, she's driven to a second orgasm on the heels of the first. You continue to pound into her, draining all your [Ball Size Adjective of Player] [Balls] will give.";
		else if Player is female:
			say "     Kristen sits at an angle across the bench so her hips are pushed out and her dripping pussy is available to you. With some careful manoeuvring, you kneel down in the footwell and boost her up a little further. Now given a clear view of her vulpine pussy, you lick your lips and dive in, the vixen moaning in delight as your tongue plays across her sensitive petals. Brushing your fingertips across her damp folds, you take in the alluring scent of her arousal. After parting those juicy lips, you give her clit a slow lick that makes her moan all the more. You then set yourself to the delicious task of eating her out until she cries out in orgasm.";
			say "     The sound of her cries is definitely audible over the whirr of the motor and the creaking of the turning wheel. The mutant carny running the ride does give your pod a leering look as you go by, but lets you keep riding for several passes. From the moans and wet sounds from the other passenger cars, you can tell you two aren't the only ones moved to passion by the beautiful night tonight.";
			WaitLineBreak;
			say "     After her release, she insists you swap places with her. 'I should be the one thanking you. Oh, how I want to thank you,' she purrs with desire as she nuzzles your thigh and licks her way to your crotch. And she is quite diligent in her attempts to pleasure you with lips, tongue and fingers. She works [if Cunt Tightness of Player < 4]a finger[else if Cunt Tightness of Player < 8]a pair of fingers[else if Cunt Tightness of Player < 12]three fingers[else]her paw[end if] inside your quivering tunnel while lapping across your juicy petals. This is peppered with the occasional kiss or suck at your sensitive clit. After an initial orgasm that has you panting, she continues on, working you up carefully, finally building to a crashing climax that has you crying out and cumming hard. Your nails dig into the wood of the bench as your body is overcome with the ecstasy of release.";
			say "     'Mmmm yes! You taste soooo good,' she moans between licks. You can see her other paw buried between her legs, vigorously fingering herself to another orgasm as she laps up your hot juices. After licking you clean, she rests her head in your lap, smiling up at you with adoration for you, her chosen lover. And you can't help but smile back, stroking her long, white hair and feeling a tenderness for this beautiful, needy vixen.";
		else:
			say "[bracket]***Neuter scene to be added later. - The Mgmt[close bracket][line break]";
		increase morale of Player by 5;
	WaitLineBreak;
	say "     [if daytimer is day]Kristen is extra-snugly after the lovemaking, nuzzling and kissing at you as you cuddle her in your arms while sitting on the bench[else]The Ferris wheel stops on your gondola soon after you're finished, the ride operator letting you both out with an amused grin on his face. You and Kristen take a seat on a nearby bench, the vixen snuggling up into your arms[end if]. After taking a few minutes to recover, you and Kristen get up and start making your way back to her hideout. Once there, she starts to gather a few things. You've suggested she instead go stay at the Palomino to be with Janice. 'That sounds like it'd be nice. And if we're there together, I won't have to worry about her seducing you away from me and you can have two sexy vixens instead.' And with that decided and a collection of things the two of them might need packed, you escort the sexy vixen to the club.";
	WaitLineBreak;
	move Kristen to Private Club Room;
	move player to Private Club Room;
	say "     When the two of you arrive and head into the private club room to see Janice, the arctic vixen is overjoyed to see her friend - especially in her new, vulpine state. After a quick hug and a rather hot kiss, Kristen presses the other vixen back down onto her divan and rubs her sexy body against her friend's. 'Well, it looks like you got what you wanted, you sneaky minx,' she purrs sensually. 'Setting me up to get infected like you. I think it's time you get what's coming to you. And I'm sure our [if Player is female]lovely[else]handsome[end if] [if Player is male]mate[else]lover[end if] here will appreciate it as well after all the trouble you've put [if Player is female]her[else]him[end if] through.' And with that, the two vixens start kissing passionately again. With a paw each on the other's breast and between their friend's legs, they grope and fondle each other. With lustful eagerness, they finger-fuck other another while playing with their tits, quickly coming to a loud and sudden orgasm.";
	say "     After licking the juices off their fingers, they share a sloppy kiss which must taste of the two vixens['] pussies. 'If it's going to be as much fun as this, I forgive you, Janice. I guess it must have been hard for you all on your own. Well, we can keep each other company now and we've got a sexy mate to help keep [if Player is female]her[else]his[end if] vixen mates safe and satisfied,' she says sensually, the two of them panting and making a show of turning their juices pussies towards you.";
	WaitLineBreak;
	say "     After watching the hot show, you're tempted to join the sexy pair right then and here, but you remain patient and instead help Kristen unpack and settle in. 'Thanks again for all your help, hon. If Janice and I are missing anything, I'm sure we can get one of her would-be suitors to fetch it for us. So if there's anything at her place you'd like, feel free to help yourself.'";
	if daytimer is day:
		add { "pepperspray", "water bottle" } to invent of Kristen's Hideout;
	else:
		add { "pepperspray", "food", "food", "water bottle" } to invent of Kristen's Hideout;


to say kristentf_phase4_4:		[forceful]
	say "     Arriving outside Kristen's, you take the ladder from where you left it and make your ascent into the second story flat. You're pleased to see her opening the blinds and window promptly, taking it as a sign in your favor. She greets you with a lustful smile and strikes a naughty pose before doing a quick turn around, showing that she's fully transformed. 'I guess there was never any point in fighting it. You were right - I'm a slutty vixen and that's just how it's going to be.'";
	say "     Looking her over the transformed woman, you can see that she's indeed become fully vulpine. Her muzzle's finished forming and is exotically attractive now. The fur that's spread across her body is an ivory white, like her hair now, and transitions to charcoal black halfway along her upper arm and just under her knees. This almost gives her the appearance of wearing elegant gloves and dark socks. Her ears and the tip of her fluffy tail are also black. Under the fur, her body's changed subtly, her figure becoming more attractive and alluring, a fact that she's showing off. She's also taken to wearing the traitorous blouse that started this transformation, left open to show off her fuller and perkier breasts.";
	WaitLineBreak;
	say "     'I couldn't stop thinking about you,' she says, pressing her body to yours. 'I was so tempted to go out and find someone or something to take me. I'd probably have jumped out the window, but I kept telling myself you'd be back to claim me soon. So come on,' she says, removing the blouse and skirt. 'Take me.'";
	if Player is male:
		say "     This is just what you've been hoping to hear and, after quickly shucking your gear, you grab the wanton vixen and press her back to the wall with a lustful kiss. She returns it with equal zeal, no longer holding back. Taking her by the hip, you boost her up. As she wraps her legs around your waist, you thrust into her. Your [Cock of Player] penis sinks into her [if Cock Length of Player < 8]welcoming pussy with ease[else if Cock Length of Player < 16]juicy pussy[else]juicy pussy with a moan as the vixen's cunny is spread to accommodate your [cock size desc of Player] manhood[end if].";
		WaitLineBreak;
		say "     Keeping a hand gripped possessively on her ass, you screw the lustful vixen. She pants and moans loudly, her paws clutching your shoulders as she bounces atop your [cock size desc of Player] rod. Kristen's pussy squeezes down upon you with every thrust you make, her vulpine body eager to be fucked and filled. Grabbing one of those lovely breasts of hers and squeezing its nipple gets her to cry out louder, begging for you to pound her harder.";
		say "     'Oh yiff! I need this soooo bad! More!' she pants, grinding herself firmly into each thrust. Feeling yourself getting closer, you moan that you're going to claim your prize and give her the hot load a slutty vixen like her needs. Her ears twitch and she bites her lip, but can't stop herself from riding you all the harder. And as quick as it came, that final moment of resistance fades and she cries out in orgasm. 'Do it! Do it, baby! Pump your cum into your horny vixen slut!'";
		WaitLineBreak;
		say "     Hearing her give in like that pushes you over the top and you drill your rod deep into the wanton vixen and cum hard. Blast after blast of your rich seed is pumped messily into her quivering hole. Feeling your [Cum Load Size of Player] load painting her vaginal walls, she's driven to a second orgasm on the heels of the first. You continue to pound into her, draining all your [Ball Size Adjective of Player] [Balls] will give.";
	else if Player is female:
		say "     This is just what you've been hoping to hear and, after quickly shucking your gear, you grab the wanton vixen and press her back to the wall with a lustful kiss. She returns it with equal zeal, no longer holding back. Spreading her legs, you grab her crotch and slip a few fingers into the hot hole of hers. You cup her lovely breast in your other hand, fondling it possessively and teasing her pierced nipple to hear her lustful whimpers. She squirms and moans with need, grinding hard against your hand until you drive her to a quick orgasm that has her panting with a need for more.";
		WaitLineBreak;
		say "     Pushing her to the floor, you pin her down and move atop her in a 69 position. Given a clear view of her vulpine pussy, you lick your lips and dive in, the vixen moaning in delight as your tongue plays across her sensitive petals. Brushing your fingertips across her damp folds, you take in the alluring scent of her arousal. After parting those juicy lips, you give her clit a slow lick that makes her moan for more. You then set yourself to the delicious fun of eating her out.";
		say "     While doing so, you grind your crotch into her face and order her to satisfy you as well. Though in her current state, you certainly don't need to command her to do it. With lustful eagerness, she seeks to please you with her lips, tongue and fingers. She works [if Cunt Tightness of Player < 4]a finger[else if Cunt Tightness of Player < 8]a pair of fingers[else if Cunt Tightness of Player < 12]three fingers[else]her paw[end if] inside your quivering tunnel while lapping across your juicy petals. This is peppered with the occasional kiss or suck at your sensitive clit. After an initial orgasm that has you panting, she continues on, working you up carefully, finally building to a crashing climax that has you crying out and cumming hard. As you cum, she gets off again, giving you a fresh taste of her vulpine juices.";
		WaitLineBreak;
		say "     'Mmmm! Soooo good. Oh, I just know I'm going to love being your slutty vixen,' she moans between licks. Hearing her give in like that is the perfect capper for your fun and you sit back up. You stay overtop of her face, leaving her to lick you clean before you'll move off of her. You then pull her into your arms, groping the vixen playfully while in her sex-addled daze.";
	else:
		say "[bracket]***Neuter scene to be added later. - The Mgmt[close bracket][line break]";
	WaitLineBreak;
	say "     After taking a few minutes to recover, you order Kristen to get up start gathering her things. You tell her you'll be taking her to stay at the Palomino with Janice now so your two sexy vixens can be together. 'Oooo! That sounds like it could be lots of fun. I can have fun with her and those would-be suitors while waiting for you to come back and claim your slutty vixen.' And with that decided and a collection of things the two of them might need packed, you escort the sexy vixen to the club.";
	WaitLineBreak;
	move Kristen to Private Club Room;
	move player to Private Club Room;
	say "     When the two of you arrive and head into the private club room to see Janice, the arctic vixen is overjoyed to see her friend - especially in her new, vulpine state. After a groping hug and a lascivious kiss, Kristen gets pressed down onto the divan as the other vixen rubs her sexy body against her friend's. 'You're such a naughty friend,' Kristen moans as Janice runs a paw down her side. 'Getting me infected and turned into a vixen slut. Well, don't stop now, babe... claim your foxy fucktoy.' And hearing that, Janice kisses the vixen, groping her between the legs. With a lustful need, she finger-fucks her newly transformed friend to a loud and sudden orgasm.";
	say "     With a grin, Janice takes a lick from her fingers, sampling Kristen's juices before having the other vixen suck them clean. 'Mmm... You forgive me, don't you?' Janice whispers sensually, still lightly caressing Kristen's soaked pussy. 'We'll have so much fun together, you'll see. It'll be even more fun than before.' Kristen, still recovering from all this excitement, can only nod in response, too lust-addled and too focused on sucking the vixen's digits clean to disagree.";
	WaitLineBreak;
	say "     After watching the hot show, you're tempted to join the sexy pair right then and here, but you remain patient and instead wait for Kristen unpack and settle in. 'Thanks again for showing me what I was missing out on. Janice says I can do [']favors['] for some of her suitors to get anything else we might need, so if there's anything at her place you'd like, feel free to help yourself.'";
	add { "pepperspray", "food", "food", "water bottle" } to invent of Kristen's Hideout;


Section 5 - Sex with Kristen

the fuckscene of Kristen is "[sexwithKristen]".

to say sexwithKristen:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Kristen], Libido: [Libido of Kristen], Msg 1: [if kristenmsg1 is true]Y[else]N[end if], Msg 2: [if kristenmsg2 is true]Y[else]N[end if], Msg 3: [if kristenmsg3 is true]Y[else]N[end if], Msg 4: [if kristenmsg4 is true]Y[else]N[end if] <- DEBUG[line break]";
	if HP of Kristen < 2:
		say "ERROR-Kristen-[HP of Kristen]F: You should be able to find me yet.";
	else if HP of Kristen is 2:
		say "     That's awfully forward of you. Perhaps you should talk to her a little first.";
	else if lastfuck of Kristen - turns < 6:
		say "     'I need a little more time to recover, hon.'";
	else if Player is neuter:
		say "     You're ill-equipped to play with her right now.";
	else if HP of Kristen < 12:
		say "[bracket]***Sorry, sex as human content not present at this time. - The Mgmt[close bracket][line break]";
	else if HP of Kristen >= 16:
		say "[kristentfsexmenu]";


to say kristentfsexmenu:
	say "     Looking over the [if Libido of Kristen is 2]beautiful[else if Libido of Kristen is 3]longing[else]horny[end if] vixen, you decide you're in the mood for some sexual relief. Her lovely body and lustful eagerness has several sexy possibilities run through your mind. What kind of fun are you in the mood for this time?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Fuck her";
		now sortorder entry is 1;
		now description entry is "fuck the sexy fox";
		[]
		if Libido of Kristen is 4:
			choose a blank row in table of fucking options;
			now title entry is "Against the wall";
			now sortorder entry is 2;
			now description entry is "pin her back to the wall and fuck her senseless";
		[]
		if Libido of Kristen is 3:
			choose a blank row in table of fucking options;
			now title entry is "Cock worship + sex";
			now sortorder entry is 2;
			now description entry is "enjoy some oral attention from your loving mate before fucking her";
		[]
		if Libido of Kristen is 2:
			choose a blank row in table of fucking options;
			now title entry is "Lap ride";
			now sortorder entry is 2;
			now description entry is "take her for a ride in your lap";
		[]
		choose a blank row in table of fucking options;
		now title entry is "Blow job";
		now sortorder entry is 5;
		now description entry is "use her muzzle";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Give cunnilingus";
	now sortorder entry is 6;
	now description entry is "eat her out";
	[
	choose a blank row in table of fucking options;
	now title entry is "69";
	now sortorder entry is 7;
	now description entry is "share some mutual oral pleasure";
	]
	if Janice is visible and lastfuck of Janice - turns >= 6:
		if Player is male:									[***lez still needed]
			choose a blank row in table of fucking options;
			now title entry is "Threesome w/Janice";
			now sortorder entry is 9;
			now description entry is "have a threesome with the vulpine hotties";
	[]
	sort the table of fucking options in sortorder order;
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
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if nam is "Fuck her":
					say "[kristentfsex01]";
				else if nam is "Blow job":
					say "[kristentfsex02]";
				else if nam is "Give cunnilingus":
					say "[kristentfsex03]";
				else if nam is "69":
					say "[kristentfsex04]";
				else if nam is "Against the wall":
					say "[kristentfsex05]";
				else if nam is "Cock worship + sex":
					say "[kristentfsex06]";
				else if nam is "Lap ride":
					say "[kristentfsex07]";
				else if nam is "Threesome w/Janice":
					say "[kristenjanice3some00]";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	now lastfuck of Kristen is turns;
	wait for any key;
	clear the screen and hyperlink list;

to say kristentfsex01:
	if Libido of Kristen is 2:
		say "     Putting your arms around the vixen, you offer her a good ole fucking to scratch that itch you're both feeling. She smiles and gives you a quick kiss and squeezes your ass before flopping out across the divan, her body on wanton display. 'Come on then, loverboy. You've got a sexy fox woman to satisfy,' she says with a rumble of arousal in her voice while teasing a finger along her folds. Grinning, you grip your [Cock of Player] manhood and move atop her, brushing it across those damp petals before guiding it into your vulpine lover.";
	else if Libido of Kristen is 3:
		say "     Putting your arms around the vixen and running a hand along her inner thigh, you mumble sweet words about how beautiful she is and how you'd like to show her just how sexy you think she's become. Feeling your erection pressed against her, she smiles and kisses you passionately, paws running along your sides. She lays back across the divan and puts her body on wanton display for her sexy mate. 'Come on then, my mate. I hope this sexy fox woman can satisfy you,' she says with a rumble of arousal in her voice while teasing a finger along her folds. Grinning, you grip your [Cock of Player] manhood and move atop her, brushing it across those damp petals before guiding it into your vulpine lover.";
	else:
		say "     Grabbing the vixen in your arms, you rub between her legs and give her ass a playful swat. Pulling her to you, she can feel your throbbing manhood pressed against her and grinds back against it. She smiles and gives you a wild, tongue-filled kiss while rubbing herself against your hard meat. She spreads herself out across the divan in a wanton display, already fingering herself in anticipation of a much-needed fuck. 'Come on then, you horn dog. You've got a slutty fox woman to satisfy,' she says with a rumble of arousal in her voice while pumping a few fingers wetly between her folds. Grinning, you grip your [Cock of Player] manhood and move atop her, brushing it across those damp petals before guiding it into your vulpine plaything.";
	say "     Your [cock size desc of Player] cock slides into the vixen's pussy [if Cock Length of Player < 8]with ease, her cunny welcoming your pulsing rod into it[else if Cock Length of Player < 16]slowly, her cunny stretching open to accommodate your pulsing rod inside it[else]gradually, her cunny needing to stretch wide to accommodate your pulsing rod inside it[end if]. The vixen gives a long, satisfied sigh as you thrust into her; clearly she's been looking forward to this as much as you have[if Cock Length of Player < 12]. Once fully buried in her[else]. Once you've filled her with as much as she can take[end if], you draw back about halfway and start thrusting, pumping your meat into the moaning fox woman beneath you.";
	if Libido of Kristen is 2:
		say "     Kristen gently rocks her hips up into your thrusts while running her paws over your [bodydesc of Player] body. You share several tender kisses while cupping one of her breasts in your hand. Breaking off from the kissing, you move your head down to first lick and then suck at her nipple. Teasing the bar piercing in it with your tongue gets her to give the most delightfully cute moans and yips. Over time, your pace quickens as your mutual excitement grows until finally coming to a head. You grunt and bite gently on her perky nip as you drive your [cock size desc of Player] cock deep inside her and cum hard. Blast after blast of your hot semen pumps into the lustful vixen and soon she's crying out in release as well[if Ball Size of Player < 12]. You drain your balls painting her womb with your load[else if Ball Size of Player < 24]. You drain your balls stuffing her womb with your ample load[else if Ball Size of Player < 36]. You drain your balls stuffing her womb to overfilling with your impressive load[else]. You drain your balls, stuffing her womb to the point of bloating her belly with your excessive load[end if]. After sex, you share some snuggles and kisses with the sated vixen.";
	else if Libido of Kristen is 3:
		say "     Kristen gently rocks her hips up into your thrusts while caressing her paws over your [bodydesc of Player] body. She kisses you repeatedly between moaning about how wonderful you are and how good you make her feel. Having one hand already cupping a breast, when you break off from the kissing, you move your head down to first lick and then suck at her nipple. Teasing the bar piercing in it with your tongue gets her to give the most delightfully cute moans and yips. Over time, your pace quickens as your excitement grows until finally coming to a head. You grunt and bite gently on her perky nip as you drive your [cock size desc of Player] cock deep inside her and cum hard. Blast after blast of your hot semen pumps into the lustful vixen and soon she's crying out in release as well[if Ball Size of Player < 12]. You drain your balls painting her womb with your load[else if Ball Size of Player < 24]. You drain your balls stuffing her womb with your ample load[else if Ball Size of Player < 36]. You drain your balls stuffing her womb to overfilling with your impressive load[else]. You drain your balls, stuffing her womb to the point of bloating her belly with your excessive load[end if]. After sex, the sated vixen snuggles up to you for some more loving kisses.";
	else:
		say "     Kristen eagerly rocks her hips up into your thrusts while pawing over your [bodydesc of Player] body. You give her several rough kisses, pressing your tongue into her muzzle. The horny vixen's tongue fences with yours while you grope one of her breasts in your hand. Breaking off from the kissing, you move your head down to lick and suck at her nipple. Teasing the bar piercing in it with your tongue gets her moaning and yipping in lustful delight. Already fucking her at a quick pace, you pound into her harder as she wraps her legs around you and her cunny starts to clench and quiver in orgasm. You grunt and bite firmly on her perky nip as you drive your [cock size desc of Player] cock deep inside her and cum hard. Blast after blast of your hot semen pumps into the lustful vixen and her orgasmic cries grow even louder[if Ball Size of Player < 12]. You drain your balls painting her womb with your load[else if Ball Size of Player < 24]. You drain your balls stuffing her womb with your ample load[else if Ball Size of Player < 36]. You drain your balls stuffing her womb to overfilling with your impressive load[else]. You drain your balls, stuffing her womb to the point of bloating her belly with your excessive load[end if]. Having thoroughly fucked your vixen slut, you pull your sticky cock free of her gripping snatch and offer it up to her muzzle. She stuffs it eagerly into her muzzle, licking your cum and her juices from it with a long moan while fingering her messy, leaking pussy.";

to say kristentfsex02:
	if Libido of Kristen is 2:
		say "     Kristen takes your [Cock of Player] cock in hand, pausing to admire her friend's tool before getting on her knees. She gives your [cock size desc of Player] manhood a few teasing licks while stroking it before accepting it into her warm muzzle. Her tongue slides along your shaft as she bobs her muzzle over your pulsing rod. You run your fingers through her headfur as you savor the pleasure her muzzle brings";
	else if Libido of Kristen is 3:
		say "     Kristen takes your [Cock of Player] cock in hand, pausing to admire her mate's tool before getting on her knees. She lavishes your [cock size desc of Player] manhood with licks and nuzzles, letting your pre mark her fur before taking it eagerly into her warm muzzle. Her tongue slides along your shaft as she bobs her muzzle over your pulsing rod. You caress her cheek and rub her ears affectionately as you savor the pleasure her muzzle brings";
	else:
		say "     Kristen takes your [Cock of Player] cock in hand, pausing to admire her favorite lover's tool before getting on her knees. She cannot restrain her eagerness with your [cock size desc of Player] manhood offered up before her, taking it into her warm muzzle right away. Her tongue slides along your shaft as she bobs her muzzle over your pulsing rod. You grip your fingers in her hair so you can thrust firmly int the slutty vixen's muzzle";
	say "[if Player is female]. She even slips a few fingers into your juicy cunny, pushing into your feminine depths each time she sucks down hard[else if CockName of Player is not listed in infections of internallist]. She rubs a paw over your ballsack, kneading and caressing your orbs, longing for their contents[end if].";
	say "     After enjoying the blow job for several minutes, you feel yourself getting close[if a random chance of Libido of Kristen in 6 succeeds]. With your balls churning with imminent release, you pull your cock from her muzzle and stroke it vigorously. With a loud groan, you empty your [Cum Load Size of Player] load across the sexy vixen's face while her tongue hangs out to catch what she can. She's left sticky but looking quite pleased, wiping up dollops of semen with a finger and then licking them up, all with a playful grin[else]. Groaning that you're about to blow, Kristen sucks down on you all the harder, moaning around your meat as you cum with a loud groan. You empty your [Cum Load Size of Player] load into her muzzle for her to swallow down. Releasing your spent shaft, she squeezes out the last few droplets, licking them from your glans with a playful grin[end if].";


to say kristentfsex03:
	if Libido of Kristen is 2:
		say "     In the mood to give Kristen some pleasure while grabbing a taste of vixen, you have her sit at the edge of one of the divans and approach her juicy cunny. She smiles and spreads her legs. 'This is just what I need,' she moans as you first finger and then start licking her pussy";
	else if Libido of Kristen is 3:
		say "     In the mood to lavish some attention upon Kristen for a change (and hungry for a taste of vixen), you have her take a seat at the edge of one of the divans and approach her juicy cunny. 'Oh, such a [if Player is male]gentleman[else]fine lover[end if]. You're so thoughtful,' she moans as you first finger and then start licking her pussy";
	else:
		say "     Wanting a taste of the horny vixen, you grope her while getting her to sit at the edge of one of the divans. Sitting between her legs, you finger her pussy like it belongs to you and start licking her juicy folds. 'Oh, I love it when you play with me,' she moans excitedly";
	say ". You work your fingers back and forth inside her, causing her cunt to quiver and her juices to flow. You lick and kiss at her clit between lapping up her delicious fluids, rich with vulpine arousal. Your tonguework soon has the beautiful vixen panting and moaning as you tease her g-spot at give her folds a light nibble.";
	say "     The [if Libido of Kristen is 2]lovely[else if Libido of kristen is 3]amorous[else]slutty[end if] leans back and stretches with a long sigh of pleasure as you continue eating her out. An upward glance reveals her cupping her beautiful bosom and teasing her pierced nipples. The sight of her playing with her tits turns you on all the more and you slip out your fingers to dive your tongue, directly licking at her sensitive inner walls[if Libido of Kristen is 2 or Libido of Kristen is 3]. Caressing her ass[else]. Grabbing and kneading her ass[end if], you press your lips to her labial folds and work your tongue as deep as you can until the vixen cries out in orgasmic release, soaking your tongue in her femme cum. You lap up as much as you can get while her hips quiver, yipping and moaning until she finally flops over onto the divan, flush and panting for breath.";

to say kristentfsex04:
	say "***";

to say kristentfsex05:
	say "     Wanting another go at your slutty vixen's juicy cunt, you take her by the shoulders and push her back against the wall. Pressing your mouth to hers, you kiss her while groping her ass. Raising her leg around your hip, you get your erect manhood in position and thrust up into her hot, wet tunnel. She gives a moan of pleasure and grips your tightly, her manicured claws digging into your shoulders as you boost her off the ground. Now with both legs around your waist, you pound away at the moaning fox-woman's pussy.";
	say "     Burying your face in her bosom, you lick and kiss at her furry breasts. Lightly nibbling at her pierced nipples gets her moaning and yipping all the more. And that reaction extends to her quivering cunny, which clenches down each time. Janice watches on with amusement, trying to look regal as she lays on the divan all while frigging her dripping cunny frantically.";
	say "     The two of you go at it like this for quite some time, pausing or adjusting the pace as needed to extend your frantic fucking. Certainly the vixen is having trouble holding back, already having had a few quick orgasms and revving up for a big one. Getting fucked like the first time you claimed her is clearly a big turn-on for the horny vixen. And you're rapidly approaching the point of claiming her this way again.";
	say "     By this point, the vixen's cunt is practically pulling and tugging at your cock with a need for the hot seed it can provide and your pulsing rod is more than willing to provide. With a few hard slams, you drive yourself fully into her and groan loudly, unleashing your [Cum Load Size of Player] load into her needy womb[if Ball Size of Player < 12]. Your hot output makes the white fox cry out as her own orgasm can no longer be held back. This sets her vagina into a series of spasms that works to milk every last drop you can give[else if Ball Size of Player < 24]. Your ample output makes the white fox cry out as her own orgasm can no longer be held back. This sets her vagina into a series of spasms that works to milk every last drop you can give[else if Ball Size of Player < 36]. Your impressive output stuffs her to overfilling and makes the white fox cry out as her own orgasm can no longer be held back. This sets her vagina into a series of spasms that works to milk every last drop you can give[else]. Your excessive output stuffs her to the point of bloating her belly. This makes the white fox cry out as her own orgasm can no longer be held back. Her vagina unleashes a series of spasms that works to milk every last drop you can give, making her all the more rounded and overfull[end if]. Finished with her now, you let her drop to the floor and she lays there, panting against the wall as [if Ball Size of Player < 24]a trickle[else]a steady flow[end if] of your gooey semen leaks from her recently stuffed pussy.";

to say kristentfsex06:
	say "     Pulling Kristen into your arms, you hug her close, telling her you want to spend some time with your special vixen. She releases a pleased yip as you give her bottom a squeeze. Her tail flags up and she rubs her body eagerly against yours, her soft-furred bosom pressed [if Breast Size of Player > 0]against your own[else]to your chest[end if]. With loving affection in her eyes, she presses her muzzle to your lips and kisses you passionately.";
	say "     'Oh, my wonderful mate. Here, have a seat so I might please you.' Moving to her knees between your bent legs, she nuzzles at your loins. Moaning as she scents your manhood, she places one paw on your [if CockName of Player is not listed in infections of InternalList]balls[else]hip[end if] even as the other moves between her legs. She starts with a few slow licks along your length before lavishing it with attention. She works her tongue agilely over every square centimeter of your [cock size desc of Player] shaft as she worships it lustfully while fingering her dripping cunny.";
	say "     In time, the tonguework grows more heated and soon enough she's plunging her muzzle down over your erect penis. She licks and sucks at it, swallowing down your precum and searching for more. Her tongue rubs across your shaft and glans in her quest to pleasure you. Her muzzle is warm and wet, a delight around your [Cock of Player] rod[if CockName of Player is not listed in infections of InternalList] while she caresses your balls[end if].";
	say "     As good as this blow job is, you don't want to miss out on the opportunity to mate with the amorous vixen. With some reluctance, you guide her head back and, after thanking her for her wonderful work, tell her to lay down across the divan so you might fuck her. She smiles happily and, pulling her fingers from her dripping snatch with a wet slurp, moves to lay back on the plush lounger. She smiles up at you, runs her paws over her sexy body and spreads her legs, wet fingers now holding her snatch open in lustful invitation. And while you need no further enticement at this point, the sight is still a beautiful and sexy one.";
	say "     Moving overtop of your vulpine mate, you run your hands through her ivory fur. You lean in and kiss her even as you're sliding your [Cock of Player] cock into her wet and heated snatch[if Cock Length of Player < 8]with ease. Her cunny welcomes your pulsing rod into it, eager to have her mate inside her[else if Cock Length of Player < 16]steadily. Her dripping cunny stretches open, slick and ready to accommodate your pulsing rod inside it[else]slowly. Her cunny needs to stretch wide to accommodate your pulsing rod inside it, but is slick and ready thanks to her preparatory fingering[end if]. The vixen releases a deep moan of pleasure into the kiss as you thrust into her[if Cock Length of Player < 12]. Once fully hilted in her[else]. Once you've filled her with as much as she can take[end if], you ease your hips back and start thrusting, pumping your meat into the moaning fox woman while she hugs you tightly.";
	say "     'Oh yes, baby. That feels so good. I love you so much. Mmm... fuck me, my studly mate,' she yips, grinding her hips into your thrusts. She pants heavily, already quite worked up from the fun earlier and you're also getting close to finishing. You do your best to hold out for the eager vixen while giving her the lustful pounding she desires. With one hand on her tit and the other supporting yourself, you fondle her breast and tease her nipple, loving the yips and whimpers of delight as you play with her piercing. This all soon proves to be too much for the lovely vulpine and she arches her back with a loud yiff of orgasmic release. Feeling her cunt squeezing and spasming around your shaft builds your excitement even higher and you fuck her all the more eagerly. With her orgasm waning, you reach your climax and shoot your hot seed into her, setting off a second climax in the female. The scents and sounds of sex are thick in the air as you pump [if Ball Size of Player < 24]every drop of your [Cum Load Size of Player] load into her[else]as much of your [Cum Load Size of Player] load as you can into her, the excess gushing out around your pulsing manhood[end if].";
	say "     After your lustful mating is done, the two of you cuddle for some time. Janice, who's been watching with an eager grin and a paw between her thighs, joins the two of you for some snuggling and heavy petting once your special couples-time is over.";

to say kristentfsex07:
	say "     Moving up beside Kristen, you run your hand along her side and then down to her hip. She grins playfully and gives you a nuzzle, shifting to sit tightly beside you. She runs a paw over your [if Breast Size of Player > 0 and a random chance of 3 in 5 succeeds][short breast size desc of Player] breasts, caressing one and rubbing its nipple[else][bodytype of Player] chest, caressing you sensually[end if]. Snuggling now, you run your hands over each other's body as you share a kiss. And when her paw finds its way to your crotch and takes a hold of your stiff member, you're reaching around to squeeze her bottom.";
	say "     As Kristen gently strokes her friend and lover's shaft, she nuzzles at your neck to give soft nips along your throat. With your head tilted back, you give a soft rumble of pleasure and continue fondling her rear. You run your fingers through the soft fur of her sexy bottom, occasionally pausing to scritch the base of her fluffy tail[if anallevel is 3]or to tease her tailhole with a quick rub[end if]. She murrs at this attention and yips in pleasure when you move from her ass to her pussy, rubbing those wet folds instead. Pressing her hips forward into your touch, she strokes your cock firmly. 'You sure do know how to get a girl worked up. Mmm... I want this [if Cock Length of Player < 6]sexy thing[else]big boy[end if] in me. Right. Now.'";
	say "     Needing no further invitation, you put your arms around her and boost her up into your lap, setting her down right atop your erect member. You lower her down onto it [if Cock Length of Player < 8]in one steady motion, drawing a yip of delight from her as she's penetrated by your full length[else if Cock Length of Player < 16]gently, drawing moaning yips from her as her pussy stretches to accommodate your [cock size desc of Player] cock[else]slowly, taking your time as she whimpers and moans as her pussy stretches to accommodate your [cock size desc of Player] cock[end if]. Once in your lap, she releases a long sigh of pleasure and wriggles atop your meat, reaching back to hug and caress your head. Tilting her muzzle back, you share a sensual kiss, tongues sliding against one another as you French kiss.";
	say "     With your hands on her hips, you raise her up a little before lowering her back down as you push your cock upwards to meet her. Soon these gentle thrusts turn to a pounding ride that has her bouncing in your lap with wet slaps. Her pussy squeezes and tugs at your cock as she rides in your lap, her sexy body working your meat with an eagerness to feel your release. Her lovely breasts sway and bob as she slides up and down your throbbing pole. Slipping a hand between her legs, you rub her sopping[if Cock Length of Player >= 16] and stretched[end if] folds, teasing her clit. Looking over, you can see Janice watching on with eagerness, working a pair of fingers in and out of her juicy slit as she enjoys the show.";
	say "     You share a long, enjoyable ride with the lustful vixen that eventually comes to a climax that has you cry out in ecstasy. Feeling your [Cock of Player] cock pulse meaningfully in her as you paint her vagina with your semen, she moans and wriggles atop you even as you pound her all the harder. The added excitement of you seeding her soon has her yipping in orgasmic delight as well. She continues riding you through your mutual orgasm while you pump your [Cum Load Size of Player] load into her needy womb[if Ball Size of Player >= 6 and Cock Length of Player < 36]. Your impressive output overfills the white fox, causing excess cum to flow out from her well-stuffed cunny[else]. Your excessive output stuffs her to the point of bloating her belly as you overfill the white fox, causing excess cum to flow out from her well-stuffed cunny[end if]. Bringing your hands up to cup her breasts, you gently slow your thrusting as the last few spurts of your semen come out. Cuddling her while enjoying the warm, wet feeling of her sticky, cum-filled slit around your shaft, you share another long kiss with your vulpine friend and lover.";

to say kristenjanice3some00:
	say "     With your arms around Kristen, you snuggle the sexy vixen and caress her sexy body. She releases a soft moan of need and presses her bosom to your chest. Slipping a hand between her thighs, you tease across her damp folds, drawing another moan. Spotting Janice stretching out on her divan, fingers between her legs in anticipation of the coming show, you ";
	if Libido of Kristen is 2:
		say "suggest that you have the Janice join in as well. Kristen smiles at this suggestion and slides her paw down to stroke your [Cock of Player] cock. 'Oh? Think you've got enough to satisfy both horny vixens at once. I'd like to see you try,' she teases, her voice sultry with desire.";
	else if Libido of Kristen is 3:
		say "tell her you want Janice to join in as well. Kristen smiles at this and slides her paw down to stroke your [Cock of Player] cock. 'Mmm... my virile, randy stud - eager to take both [if Player is female]her[else]his[end if] foxy mates at once. Come on then, your lovely vixens need you,' she says, her voice sultry with desire.";
	else:
		say "give her ass a squeeze and tell her you want her over there with Janice so you can take them both. Kristen moans lustfully at the idea and grinds her body against you all the more excitedly. Taking your [Cock of Player] cock in hand, she strokes it eagerly. 'Oh yeah, I'm all for that. That sounds so fucking hot. Come on then, I need a good fucking just thinking about it,' she says, her voice sultry with desire.";
	say "     Janice makes room for you both on her divan, wrapping her arms around Kristen and kissing her passionately. You pause to watch the two vixens tongue-wrestle while their paws roam over each other's body. Your arousal, already strong, grows as you watch the pair until eventually you can no longer restrain yourself. With a hand on each of their asses, you get them to lay on their sides facing one another with a leg raised. Now having access to their juicy pussies as they lavish their friend and lover in lesbian affection, you get your cock lined up with Kristen's hot pussy and join in on the threesome by fucking her first.";
	say "     Your [cock size desc of Player] cock slides into the vixen's pussy [if Cock Length of Player < 8]with ease, her cunny welcoming your pulsing rod into it[else if Cock Length of Player < 16]slowly, her cunny stretching open to accommodate your pulsing rod inside it[else]gradually, her cunny needing to stretch wide to accommodate your pulsing rod inside it[end if]. The vixen moans lustfully into her kiss with Janice as you thrust into her. She buries a pair of fingers in Janice's cunt, fingering her in time to your thrusts, while Janice plays with Kristen's breasts. Knowing you'll need to save your endurance, you start off with slow thrusting, pumping your meat into your [if Libido of Kristen is 2]affectionate[else if Libido of Kristen is 3]adoring[else]lustful[end if] lover for several minutes before pulling out and moving over to give Janice the same treatment. Kristen's vacated cunny gets filled with a few fingers from Janice, keeping the vixen satisfied while you tend to your other lover.";
	say "     You swap back and forth like this a few times, the other girl always eager to finger her friend's pussy while it's her turn to get fucked. This keeps the two vixens hot and wet, ready for their next turn to be filled so there's no need to warm up after each changeover. And the sight of the pair of ivory-furred beauties kissing, caressing, licking and groping each other as you mate them is wonderfully arousing. They share several quick orgasms during your sexy threesome. Were it not for the brief moments of respite while changing over, you'd have popped off long ago, but somehow you manage to hold out, ensuring they both get a thorough and satisfying fucking before your climax can no longer be held back. With a lustful cry, you drive your [cock size desc of Player] cock deep into ";
	let x be Libido of Kristen + 2;
	if a random chance of x in 10 succeeds:
		say "Kristen and cum hard. The vixen cries out in climax and rocks her hips, working her vaginal muscles around your pulsing rod. You pump shot after shot of your [Cum Load Size of Player] load into her[if Ball Size of Player < 12], painting her womb with your seed[else if Ball Size of Player < 24], painting her womb with your ample seed[else if Ball Size of Player < 36], painting her womb with your seed to the point of overfilling it with your impressive load[else], stuffing her womb to the point of bloating her belly with your excessive load[end if]. As you're finishing up, you pull out and pump your still spurting shaft, sending your final shots to splatter Janice's body as Kristen fingers her to a final, powerful climax.";
	else:
		say "Janice and cum hard. The vixen moans in orgasmic release and presses her hips up to meet your now frantic thrusts. Her inner walls squeeze and milk at your cock, drawing spurt after spurt of your gooey cum from your shaft. Your [Cum Load Size of Player] load leaves her [if Ball Size of Player < 12]dribbling your spent semen from her well-fucked pussy[else if Ball Size of Player < 24]drooling your spent semen from her well-fucked pussy[else if Ball Size of Player < 36]drooling your excess semen from her well-fucked and thoroughly-seeded pussy[else]with a bloated belly and drooling your spent seed from her well-fucked pussy[end if] by the time you pull out of her. Still shooting, you pump your shaft and send your last few spurts of cum across Kristen's body as Janice fingers her to a final, powerful climax.";
	say "     After your ménage a trois, the three of you snuggle together, sticky and reeking of sex, but so wonderfully satisfied for it. Many kisses and affectionate gropes are shared. Each of you is given a tongue bath by the other two, licking the wonderful mélange of sexual juices from each other's loins. This results in another set of climaxes that has to be cleaned up as well, though you're all a little too worn out for another go after that. With a sexy vixen in each arm, the three of you take a much-needed rest on the divan to recover after your sexy threesome.";
	now lastfuck of Janice is turns;


Section 8 - Variable Charts

[	HP of Kristen           ]
[ 0 = not encountered     ]
[ 1 = not saved           ]
[ 2 = saved               ]
[ 3 = talked to her       ]
[                         ]
[ 10 = player gets item   ]
[ 11 = item given         ]
[ 12 = triggered          ]
[ 13 = infected, step 1   ]
[ 14 = infected, step 2   ]
[ 15 = infected, step 3   ]
[ 16 = fully tf'd         ]

[     XP of Kirsten       ] [not currently active, but preparatory]
[ 0 = no spray            ]
[ 1 = got spray           ]
[ 2 = using spray         ]

[   Libido of Kristen     ]
[  personality tracker    ]
[ 0 = no change           ]
[ 1 = sexed up as human   ]
[ 2 = reassured           ]
[ 3 = seduced             ]
[ 4 = forced              ]

Section 9 - Temporary Raw Notes


[ lovers bench ]

Section 9 - Endings

[to come later]

Kristen ends here.
