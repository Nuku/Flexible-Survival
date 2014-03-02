Version 2 of Kristen by Stripes begins here.
[ Version 2.1 - Infection progresses further + tweaks]
"Adds an Arctic Fox named Kristen to the Flexible Survival game."

Section 1 - Event

FindingKristen is a situation.
The sarea of FindingKristen is "Outside";
when play begins:
	add FindingKristen to badspots of girl;
	add FindingKristen to badspots of furry;

Instead of resolving FindingKristen:
	if hp of Kristen is not 0:
		say "ERROR-Kristen-[hp of Kristen]E: This event should already be resolved!";
	otherwise:
		say "     While travelling through the city, you hear a bit of commotion coming from down a side street.  At first you're going to just let it go, but you catch sight of a rather human-looking woman rush past the far end of the alleyway, soon followed by an eager ewe.  You wonder if your eyes are playing tricks on you or if she might have an infection that's passably human at first glance.  Shall you charge to the rescue and hope for the best?";
		if the player consents:
			say "     Moving quickly, you follow after the pair.  Fortunately, you catch up to them as they reach a dead end.  The woman's struggling to climb over a wooden barrier at the end of alleyway.  The ewe's got the back of her jeans and is trying to pull her down by them.  You're momentarily distracted by the glimpse you get of her pantied ass, but shake it off when the girl slips down a foot and the sheep grabs her by the ponytail.  The woman cries out and she starts to lose her grip, so you rush in to deal with the horny ewe.";
			say "     Grabbing the ewe, you try to pull her back, but end up dragging down the woman as well.  She drops onto some cardboard boxes with her pants half off.  At this point, the lustful sheep turns to face you, knowing she's got to deal with you before she can claim her intended prize.  You also can hear the sounds of growing activity as more mutants are attracted to the sounds of her lustful baaing.";
			challenge "ewe";
			if fightoutcome >= 10 and fightoutcome <= 19:
				say "     When you've dealt with the ewe, you look back to see the poor woman still a little dazed from her fall, but starting to rise.  You're about to go help her when another ewe rushes forward in search of companionship.  The noise of approaching sheep grows louder.  If you don't manage to get out of here soon, it sounds like there'll be far more mutton than you can handle here very soon.";
				challenge "ewe";
				if fightoutcome >= 10 and fightoutcome <= 19:
					say "     After your victory, you turn to check on the woman find the mound of crushed boxes empty.  Looking up, you can see her atop the wooden wall, looking down at you";
					if ( bodyname of player is "human" or bodyname of player is "herm human" ) and player is pure and ( breast size of player < 10 and cock length of player < 12 and cock width of player < 16 ) and breasts of player <= 2 and ( breast size of player < 2 or ( cock length of player < 7 and cock width of player < 7 ) ):
						say ".  Without further hesitation, she reaches out to grab your hand to help a fellow human.  Helping you up and over the well, you run off together for several blocks, only slowing your pace as the sound of the mob fades into the distance.";
					otherwise if player is bodily human and player is facially human and player is skintone human and tail of player is "":
						say ".  She hesitates momentarily, you looking human enough at first glance, but your altered sexuality causing her to pause briefly.  It lasts only a moment though before she reaches out with her hand to help you up and over the wooden wall to make your escape with her.  You run off together for several blocks, only slowing your pace as the sound of the mob fades into the distance.";
					otherwise:
						say ".  She hesitates for a few moments, staring at your mutated body.  It is only when the sound of the approaching mob catches her attention does she reach out to take your hand.  Helping you up and over the wall, you run off together for several blocks, only slowing your pace as the sound of the mob fades into the distance.";
					say "     Clearly having a destination in mind, she sneaks through alleys and behind buildings, trying her best to remain out of sight from the more randy creatures around.";
					say "     'I really want to thank you for helping me out back there.  I don't think I would have made it without your help.  I'm Kristen, by the way.'";
					say "     As you introduce yourselves, you're able to take in her appearance.  The Caucasian woman stands about 5 foot 10 inches.  She has fair skin with only a light tan, leading you to suspect that she's been hiding indoors a lot lately or using quite a bit of sunscreen.  She's got shoulder-length dirty blonde hair in a ponytail, which is now partially undone by the rough handling earlier.  Her eyes are a very pretty blue and she's got a silver stud earring on each ear.";
					say "     'We're getting close to the place I've been hiding out.  I guess I can trust you, so I'll show you.  It's not great, but I've been safe enough.  If I hadn't gone out to lo- well, if I'd stayed here, I'd not have gotten into that mess earlier.'";
					say "     She's leading you along the rear of a stretch of two-story shops.  Several of them have been damaged by the rampage of some creature.  She slips into the lower floor of a half-ruined travel agency and grabs the extension ladder stashed inside.  Carrying it a few buildings over, she uses it to climb up to the second story of one of them and go through an open window.  After you follow her up, the pulls the ladder inside, cutting off the means of entry.";
					now hp of Kristen is 2;
					move player to Kristen's Hideout;
					now Kristen's Hideout is known;
					now battleground is "void";
					increase score by 20;
			if fightoutcome >= 20 and fightoutcome <= 29:
				say "     The ewe's assault leaves you too weak and dazed to prevent her from grabbing onto the woman and dragging her back down the alley.  You can hear the lustful cries of mob of sheep get louder when the poor human's dragged into their midst.  Still having enough sense to realize that you very well could be next, you struggle your way up and over the wooden fence and make a run for it.";
				now hp of Kristen is 1;
			otherwise if fightoutcome >= 30:
				say "     Hearing the mob getting closer, you know you need to make your escape before they get here.  You sidestep the ewe as she makes a grab for you, sending her crashing right into the woman as she tries to get up.  Finding herself atop an unchanged human, the sheep's attention immediately turns to groping and kissing her.  With a running start, you use her woolly back as a springboard to hop up onto the wooden wall and climb over it to get away before things get out of hand.";
				now hp of Kristen is 1;
		otherwise:
			say "     Counting yourself lucky that it's not you being chased for a change, you slip off in the opposite direction as the sound starts to draw the interest of more infected mutants.";
			now hp of Kristen is 1;
	now FindingKristen is resolved;


Section 2 - Kristen's Hideout

Kristen's Hideout is a room. It is fasttravel. It is private.
The description of Kristen's Hideout is "[krishideoutdesc]";

the scent of Kristen's Hideout is "[krishideoutscent]";

to say krishideoutscent:
	if hp of Kristen < 12:
		say "This place smells of potpourri and cleaners, possibly to help mask her human scent from any creatures nosing around.";
	otherwise:
		say "There is a faint scent of vixen mixed in with the other scents in here.";

to say krishideoutdesc:
	if hp of Kristen < 2:
		say "ERROR-Kristen-[hp of Kristen]R: You should be able to get here!  Get out!";
		move player to Grey Abbey Library;
		now Kristen's Hideout is unknown;
	otherwise if hp of Kristen < 12:
		say "     This second floor apartment is above a ruined coffee shop.  It is fairly small, with a small living room, kitchen, bathroom and bedroom.  Despite the modest size, the accommodations are very well maintained and the furnishings seem quite expensive.  The furniture is of high quality, is well padded and rests upon hardwood floors.  The rooms are decorated with lovely vases and paintings as well as a full-length mirror right in the living room as well as the bathroom and bedroom.  It's clear that this place belonged to someone who liked living in the lap of luxury.  The place has been kept quite clean given the circumstances.  The ladder Kristen uses to get in and out (and to let you in) rests along one wall and the blinds are kept shut.";
	otherwise if hp of Kristen is 12:
		say "[kristentf_phase1]";
		now hp of Kristen is 13;
		move player to Grey Abbey Library;
		now lastfuck of Kristen is turns;
	otherwise if hp of Kristen < 15 and lastfuck of Kristen - turns < 4:
		say "     [if libido of Kristen is 2]You promised to give Kristen some time to think.  You should give her a little longer before returning.[otherwise if libido of Kristen is 3]As much as you look forward to seducing the transforming woman further, you don't want to rush things.  You decide to wait a little longer before returning to see her again.[otherwise]As much as you look forward to enjoying the transforming vixen's body, you should give her some time to allow her infection to progress further.  Besides, she'll be hornier if you let her change further.[end if]";
	otherwise if hp of Kristen is 13:
		say "[kristentf_phase2]";
		now hp of Kristen is 14;
		move player to Grey Abbey Library;
		now lastfuck of Kristen is turns;
[	otherwise if hp of Kristen is 14:
		say "[kristentf_phase3]";
		now hp of Kristen is 15;
		move player to Grey Abbey Library;
		now lastfuck of Kristen is turns;	]
	otherwise if hp of Kristen is 14:
		say "[bracket]Location temporarily closed from this point, but more to come. - The Mgmt[close bracket][line break]";
		move player to Grey Abbey Library;


Section 2 - Kristen

Kristen is a woman.  Kristen is in Kristen's Hideout.
The description of Kristen is "[kristendesc]";
The conversation of Kristen is { "Thanks." }.
kristenmsg1 is a truth state that varies.  kristenmsg1 is usually false.	[K mentioned J]
kristenmsg2 is a truth state that varies.  kristenmsg2 is usually false.	[general info]
kristenmsg3 is a truth state that varies.  kristenmsg3 is usually false.	[J mentioned K]
kristenmsg4 is a truth state that varies.  kristenmsg4 is usually false.	[K told about J]
kristenmsg5 is a truth state that varies.  kristenmsg5 is usually false.	[prompted for blouse?]

the scent of Kristen is "[kristenscent]";

to say kristenscent:
	if hp of Kristen < 2:
		say "ERROR-Kristen-[hp of Kristen]S: You should be able to find me yet.";
	otherwise:
		say "     Kristen smells [if humanity of player < 33]tantalizingly[otherwise]pleasantly[end if] human.";

to say kristendesc:
	if debugactive is 1:
		say "DEBUG -> HP: [hp of Kristen], Libido: [libido of Kristen], Msg 1: [if kristenmsg1 is true]Y[otherwise]N[end if], Msg 2: [if kristenmsg2 is true]Y[otherwise]N[end if], Msg 3: [if kristenmsg3 is true]Y[otherwise]N[end if], Msg 4: [if kristenmsg4 is true]Y[otherwise]N[end if] <- DEBUG[line break]";		
	if hp of Kristen < 2:
		say "ERROR-Kristen-[hp of Kristen]L: You should be able to find me yet.";
	otherwise:
		say "     Still apparently unchanged, this Caucasian woman stands about 5 foot 10 inches.  She has a slender figure with just the right amount of sexy curves to give her feminine allure.  She's wearing a white cotton shirt and black jeans.  She has fair skin with only a light tan, partially from staying hidden indoors a lot lately as well as her frequent use of sunscreen.  She's got shoulder-length dirty blonde hair which she wears in a ponytail.  Her eyes are a very pretty blue and she's got a silver stud earring on each ear.";


Section 3 - Conversation Tree

Instead of conversing the Kristen:
	if debugactive is 1:
		say "DEBUG -> HP: [hp of Kristen], Libido: [libido of Kristen], Msg 1: [if kristenmsg1 is true]Y[otherwise]N[end if], Msg 2: [if kristenmsg2 is true]Y[otherwise]N[end if], Msg 3: [if kristenmsg3 is true]Y[otherwise]N[end if], Msg 4: [if kristenmsg4 is true]Y[otherwise]N[end if] <- DEBUG[line break]";		
	if hp of Kristen < 2:
		say "ERROR-Kristen-[hp of Kristen]T: You should be able to find me yet.";
	otherwise if hp of Kristen is 2:
		say "     'Welcome to my place.  Well, it's not really my place.  It belongs to my friend, but it doesn't look like she's coming back by this point.'  After an awkward pause, she affects some excitement in her voice and forces a smile.";
		say "     'I was on my way to come see her when things went nutso-bonkers.  It was all happening too fast - the power outage, the electronics failure, the quake, people turning into monsters...  Madness!  I rushed here through that chaos, got inside with her spare key and hid here overnight.  I could hear the rampage growing outside.  There's a club a few buildings over and the people inside must've turned into something big and destructive.  A lot of the buildings along this stretch are wrecked because of it.  Even the staircase up here was taken out, trapping me inside.";
		say "     'Which turned out to be a good thing, as it meant those mutant monsters couldn't get up here and find me.  At first, I hoped to just wait for someone to come rescue me, but it eventually became clear we're on our own for a while.  After that, I had to find a way down.  I could see that ladder a few buildings over, but it was out of my reach.  I made a rope out of some sheets,' she says, pointing to where that improvised rope still sits in one corner, 'and used it to get down so I could snag the ladder.  As long as I'm careful not to be seen, I can get in and out and nothing else will stumble its way into my hideout.  I've still got to stay out of sight in case any of those flyers spot me or I ended up besieged, but it's otherwise safe.'";
		now hp of Kristen is 3;
	otherwise if hp of Kristen < 10 and kristenmsg1 is false and a random chance of 1 in 3 succeeds:
		say "     'Once I'd managed to work out a means to get in and out, I went off to look for my friend.  I knew it was a long shot, but it wasn't that far and I had to try.  I was on the phone with Janice when the network went down, so I knew she had been at this club where I used to work - the Palomino.  I snuck my way over there, but I found it overrun with mutants.  I couldn't even get close before one spotted me and a bunch rushed after me.  I managed to evade them, but after that close call, I held off on looking for... well, there just didn't seem to be much hope.'";
		now kristenmsg1 is true;
		if kristenmsg3 is true:
			say "     Realizing that she must be the Kristen that Janice spoke about, you tell her that you've met her friend.  She's almost in tears as you tell her about the vixen, so happy to hear that her friend's happy and safe.  'That sounds so like her.  She's always been a little vain and loving luxury.  Please let her know that I'm safe at her place.'";
			now kristenmsg4 is true;
		otherwise if janicetalk > 0:
			say "     Realizing that Janice might very well be the arctic fox femme you met at the dance club, you tell Kristen about her.  She's almost in tears as you tell her about the vixen, so happy to hear that her friend's happy and safe.  'That sounds so like her.  She's always been a little vain and loving luxury.  Please let her know that I'm safe at her place.'";
			now kristenmsg4 is true;
	otherwise if hp of Kristen < 12 and kristenmsg1 is true and kristenmsg2 is false and a random chance of 1 in 3 succeeds:
		say "     'I'm not really sure what's going on, but I have noticed a few things.  I feel in better shape than I've ever been and I heal really quickly now.  I'm also a lot hornier these days.  I'm guessing whatever is behind all this has affected everyone, including myself.  I've just managed to avoid running into anything to set off a mutation.  Like, my friend Janice has a collection of fur shawls in her closet that I don't dare get anywhere near.'";
		now kristenmsg2 is true;
	otherwise if hp of Kristen is 10 and carried of Janice's blouse > 0 and kristenmsg5 is false and a random chance of 1 in 3 succeeds:
		say "     Remembering the blouse Janice gave you, you ponder giving it to Kristen and telling her that you found her friend.  While you know she'd be happy to know her friend is alive and (mostly) sane, she might get it into her head to try going there to see her.  Shall you give it to her?";
		if the player consents:
			say "[Kristen-giveblouse]";
		otherwise:
			say "     Deciding against it for now, you keep it tucked away in your pack.  Should you change your mind, you'll need to [bold type]give Janice's blouse to Kristen[roman type].";
			now kristenmsg5 is true;
	otherwise if hp of Kristen < 12:
		say "     [one of]'I've been raiding my friend's cupboards and gathered what I can from the nearby shops, so I'm okay for now.'[or]'I'm glad I decided to trust you.  It's good to have someone to talk to after all this.'[or]'I'm lucky I've managed to stay human for now, but I've got to be careful.'[or]'You need to be careful about what you come into contact with.  From what I've seen, lots of stuff - even random objects - can prompt a mutation.  There was one guy while I was trying to get here who turned into a cougar just because that was the kind of car he was driving.'[or]'Ever since this started, I've been really horny.  I'm sometimes tempted to just give up on all this hiding and throw myself into the arms of one of those sexy creatures I see from the windows.  I'm guessing that's how they get you.'[or]'Thanks again for helping me out back there.  I don't think I would have made it out of there without your help.  That ewe was cute and all, but I've never been a sheep to just follow the herd.'[or]'Stuck here on my own, I can't help but sometimes think everyone whose lives have been destroyed by this mess.  So many dead or driven mad.  It's a disaster when you really think about it.'[in random order]";
	otherwise:
		say "***temp";

Section 4 - Kristen TF

to say kristentf_phase1:	[denial/anger]
	say "     There is a longer than usual delay from when you signal your arrival to when the ladder is lowered down for you to climb up.  Already concerned, you hurry up the ladder and get inside quickly.  You find Kristen staring into the living room mirror, hands pressing down and tugging on her now vulpine ears.  She's clearly quite agitated and looks over at you.  'I thought this must be a dream brought on by you telling me about Janice.  But now you've showed up and they're still here,' she says, rubbing her fox ears.  'Are they really there or am I still dreaming?'";
	say "     Telling her that they're really there, she chokes back a sob and flops bonelessly into a plush chair.  'But they can't be; I've been so careful.  I've not had to go out since your last visit.  This must be some kind of mistake.  It's some kind of mistake, isn't it?' the fox-eared woman pleads with tears in her eyes.";
	attempttowait;
	say "     You shake your head and tell her about your encounter with Janice, telling her you suspect that the blouse she's now wearing was booby-trapped to infect her.  Hearing this, she gives a fearful [']yip['] and starts pulling it off, leaving her with just a bra covering her breast.  Tossing it to you, you find several long strands of the vixen's white fur on the inside of it, probably from her bushy tail.  Giving it a sniff, you catch the faint scent of vulpine and the vixen's arousal on it, somewhat faint and hidden by the masking scents of the apartment.";
	say "     When you confirm your hypothesis, Kristen loses it.  Swatting a nearby vase, she sends it flying into the wall.  'That bitch!  I'll wring her fuzzy little neck.'  She storms around the room, throwing a few more of Janice's expensive furnishings around.  'I'll kick her ass from here to Sunday.  No, I'll find the biggest strap-on I can and pound her ass until it's raw.  Mmm... that sounds like fun!  Eeep!'  She freezes mid-step and slaps her hands over her mouth, eyes wide in shock at what she just said.  'Oh no!  It's starting to affect my brain,' she says, a bit of a tremble in her voice.";
	attempttowait;
	say "     Noticing that she's been strutting around in her bra and that your eyes are on her, she turns her attention to you.  'That's it, isn't it?  This is all your fault!  You brought this... this... this horrible [bold type]thing[roman type] to me,' she says, grabbing the blouse and throwing it in your face.  'You're trying to get me infected, too!  You want to make me into a slutty beast for you to fuck, don't you?' she snarls.  She grabs another vase and sends it flying a foot from your head.";
	say "     Clearly you'll need to help Kristen through this, though how you go about it will likely have profound affects on her by the time it's over.  You could try to be [link]supportive (1)[as]1[end link] and try to calm her down.  You could take a more [link]seductive (2)[as]2[end link] approach in the hopes of getting her hot for you.  Or, you can not bother waiting and take a [link]forceful (3)[as]3[end link] approach to get some hot sexing right now.  What shall you do?";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
	if calcnumber is 1:
		say "     Knowing now is not the time to be thinking of yourself, you try to just calm her down so you can help her.  At first she's still too angry about everything to really listen, but you finally get her to stop and listen when you remind her that she needs to be quiet or she'll attract undo attention to her hideout and make things worse.  She huffs angrily and thumps herself back down in the chair.  After screaming into a cushion for a bit, she sits arms crossed and ears back.";
		say "     Reassuring her that she can get through this, you tell her to take a minute to take a deep breath.  She closes her eyes and takes a few takes a few slow, deep breaths.  As she does, her ears rise up a little.  Once she opens her eyes, she's a little calmer, though is still glaring around the room.  'This sucks,' she grumbles.";
		attempttowait;
		if bodyname of player is "human" and player is pure:
			say "     You start by telling her that you've met several others who've managed to maintain control despite changing.  And she's only changed a little and hasn't been forcibly sexed into transforming, so it should be easier for her to stay sane.  'That's easy for you to say; you're still human,' she snaps.";
			say "     'I am for now, but I know that could easily change,' you tell her.  'You knew this was a possibility you might have to face.  But it doesn't mean you have to become one of those wild creatures out there.  If you can stay calm and focused, I know you can get through this.'";
		otherwise:
			say "     You start by reminder her that she's not the only one here who's changed and that you've managed to keep it together for the most part.  You add that you've met several others who've managed to maintain control despite being radically transformed.  And she's only changed a little and hasn't been forcibly sexed into transforming, so it should be easier for her than most to stay sane.  'Well, how do you know I'll be one of the lucky ones?' she snaps.";
			say "     'Part of it might be luck, but a lot of it is self-control,' you tell her.  'You knew this was a possibility you might have to face.  But it doesn't mean you have to become one of those wild creatures out there.  If you can stay calm and focused, I know you can get through this.'  You go on to explain some of the things, like your journal, that you've been using to try and keep a hold of your original personality.";
		say "     'God damn it, Janice.  Why'd you have to do this to me?' she snarls, throwing a cushion at the mirror.  'You were my friend.'";
		attempttowait;
		say "     You go over to her slowly and pat her shoulder.  'I'm sure Janice just misses her best friend.  Despite having lots of suitors, she's clearly lonely.  While you're human, it's not safe for you to visit her.  She's been confused by her infection into thinking this is the right way to get her friend back.'";
		say "     Kristen grumbles and huffs, her ears twitching as she fluctuates between being angry with and sad for her friend.  'Look, I'm going to need a while to think about this.  Can you give me some time alone?' she asks.  You nod and, patting her shoulder again, head back out.  Before dropping your head below the window line, you reassure her that you'll come visit her again soon.";
		now libido of Kristen is 2;
	otherwise if calcnumber is 2:
		say "     Knowing you'll need to be subtle and not rush things with her, especially with her in such a state, you try to calm her down.  At first, she's still too about everything to really listen, but you finally get her to stop when you take her hands in yours and reassure her that that you don't care if she's got a pair of cute foxy ears and neither should she.  Her ears, hearing they're cute, perk up for a moment before dropping back again, though not quite so much.  She huffs angrily and thumps herself back down into the chair.  After screaming into a cushion for a bit, she sits arms crossed and ears back.";
		say "     Reassuring her that you can help her get through this, you take a seat beside her and gently caress her cheek.  She closes her eyes and rests her head against your shoulder for a few moments, eyes closed.  As she does, her ears rise up a little.  Once she opens her eyes again, she's a little calmer, though still glares at her reflection in the mirror.  'This sucks,' she grumbles.";
		attempttowait;
		if bodyname of player is "human" and player is pure:
			say "     You start by telling her that things could be much worse.  She's still mostly human and that the vixen infection's actually quite lovely in its own way.  There are a lot of others out there with more radical and even disgusting forms.  'That's easy for you to say; you're still human,' she snaps.";
			say "     'That may be the case for now, but that could easily change,' you tell her.  'And then my only choice would be to find some infection I could live with.  You knew this was a possibility you might have to face, and being a sexy vixen might not be so bad.  I'm sure you'll be prettier than even Janice,' you add, giving her an endearing smile.";
		otherwise:
			say "     You start by telling her that things could be much worse.  She's still mostly human and that the vixen infection's actually quite lovely in its own way.  There are a lot of others out there with more radical and even disgusting forms.  'How do you deal with it?' she asks, looking over your altered form.";
			say "     'I am what I am now, but if I ever start to change into something I don't want, I could always find something more appealing I could live with.  You knew this was a possibility you might have to face, and being a sexy vixen might not be so bad.  I'm sure you'll be prettier than even Janice,' you add, giving her an endearing smile.";
		say "     'God damn it, Janice.  Why'd you have to do this to me?' she snarls, throwing a cushion at the mirror.  'You were my friend.'";
		attempttowait;
		say "     You give Kristen a tender hug, holding her reassuringly.  'I'm sure Janice just misses her best friend.  Despite having lots of suitors, she's clearly lonely.  You're such a nice girl, of course she wants to see you again,' you say, hugging her again.  'She's just been confused by her infection into thinking this is the right way to get her friend back.'";
		say "     Kristen grumbles and huffs, her ears twitching as she fluctuates between being angry with and sad for her friend as she clutches herself to you for strength.  'Look, I'm going to need a while to think about this.  Can you give me some time alone, hon?' she asks.  You nod and, patting her shoulder again, head back out.  Before dropping your head below the window line, you blow her a quick kiss that makes her blush and perks her ears right back up again.";
		now libido of Kristen is 3;
	otherwise if calcnumber is 3:
		say "     Having wanted the hot woman for a while, a dark part of you sees this as the perfect opportunity to start acting upon those desires.  Grabbing her wrists, you press her to the wall and give her a kiss.  At first she's shocked and her ears fall back in anger, but they soon rise as her pent-up lust struggles against it.  Popping open her jeans, you slide a hand into them to rub the crotch of her panties, drawing a moan from her even as she squirms with uncertainty.  'But I... I... it's not safe... I could change more...' she pants.";
		say "     Pushing her over to the plush chair, you shove her down onto it.  'If you're going to be a sexy vixen either way, you may as well enjoy it,' you say huskily, nibbling along her neck.  'You're already such a foxy woman, I can hardly wait to [if cocks of player > 0]bang you as a fox[otherwise]go to town with you as a fox[end if],' you add as you tug down her jeans and panties enough to bare her crotch.  You're pleased to see that her ears aren't her only change, her pubic hair having become a fluff of white fur.  You stuff a few fingers into her hot, wet pussy and are delighted by her moans.";
		attempttowait;
		say "     'Wait!  Oh!  Ahhh!  That's so good... I've needed relief for so long.  Been so scared to play with myself, I've only gotten off a handful of times since this started.'  You nuzzle up to those new ears of hers and nibble on them.  This sends shivers down her spine that makes her cunt quiver around your probing digits.  Telling her that once she's a lovely Arctic fox, she won't need to worry about holding back any longer.";
		say "     When you guide your free hand to her bra and fondle her covered breasts, her panting turns into yipping.  Being so pent up, her excitement grows quickly and soon she's crying out in her first orgasm in far too long.  Her hot juices soak her crotch and your hand, and you give her another kiss, this time playing your tongue across hers until her orgasm subsides into a slow grinding of her hips.  Withdrawing your fingers, you smile down at her as she basks in the afterglow, telling her that she can feel this good all the time once she's a sexy vixen like Janice.";
		say "     'God damn it, Janice.  Why'd you have to do this to me?' she half-heartedly grumbles, throwing a cushion at the mirror.  'You were my friend.'";
		attempttowait;
		say "     Giving her breast a squeeze, you get her to moan again.  'Janice just misses her best friend and wants you to be a sexy vixen so you can help keep her company.  She's got plenty of suitors, but she's still lonely.  And if you were there with her,' you add, rubbing a slow circle around her nipple, 'you could share in those suitors of hers.'";
		say "     Kristen grumbles, but her ears perk up, that having a certain appeal to her in her presently sex-addled state.  She puts an arm around you and rubs her body to yours, a hand even grabbing your ass quickly.  'I... I'm probably going to need a while to think about this.  Can I maybe have some time alone to... uh... think?' she asks, her other hand subconsciously slipping to her wet crotch.  Grinning and knowing what kind of [']thinking['] she'll probably end up doing, you nod and leave her to it.  Before climbing out the window and down the ladder, you tell her you'll be back for more, which causes her ears to twitch.";
		now libido of Kristen is 4;


to say kristentf_phase2:	[bargaining]
	say "     When you announce your arrival below Kirsten's hideout, she's at the window and lowering the ladder in record time.  Heading up, you're helped through the window rather roughly.  'I'm glad you're back.  I need your help,' she says frantically, not even bothering to remove the ladder or even close the window before starting, quite unlike herself.  As you take care of all that, she continues on.  'Look, you know how the soldiers out there [if xp of Kristen is 0]seem to be resistant to transformation?  They've got some kind of spray or pills or something that ups their resistance.  [otherwise]have got that spray stuff to make them more resistant and reverse minor changes?  [end if]Now, if you can get a bunch of that stuff for me - I mean like a whole lot - maybe you can help me get out of this mess.'  She spews out her plan quickly, almost babbling in here eagerness for your assistance.  She's pants heavily and grips your shoulders firmly with her paws.";
	say "     The sight of her paws draws your attention to them and you look her over.  In addition to her foxish ears, she's now got paw-like hands.  They're mostly human in form with elegant digits, but also have pawpads and small claws at the fingertips.  Short, black fur covers them, thinning as it crosses her wrists and her human skin resumes.  She's wearing her white shirt again, though [if libido of Kristen is 4]you can see that the white fluff that started at her crotch has crept up past her navel, spreading further[otherwise]you catch a glimpse of some white fluff that's spread from her crotch and up past her navel[end if].  Her figure, already quite lovely, has subtly changed to make her even more appealing.  She's got a short fox tail that's started to form as well, only about a foot or so long at present.  Following her legs down to her feet, you can see they've become black-furred paws as well, though somewhat more animal-like than her hands.  With her changes progressing even without the blouse on any more, it's clear why she's frantic to find a way to stop this.";
	say "     '...get away from this mess.  Hey!  Are you even listening?' she growls angrily while her short tail thrashes.  'This is an emergency!  There's got to be a way out of this, so I was thinking we might try getting out of the city.  If it's a local thing, I should be safe once I get away from whatever's causing this mess.  I mean, it's not like it's fully changed me yet,' she says with desperate hope.";
	say "     Realizing that your chances of getting past the military cordon are grim, you immediately try to dissuade her from this.  Adding that you doubt the infection works that way, seeing how it's spreading despite having taken off the blouse that set it off.  The nanites are in her and actively making her more foxish.";
	say "     'Maybe the army thing is too risky... So then we need a scientist or a doctor or something.  Someone in this crazy city's got to know what's going on and how to cure this.  I mean, if it started here, then someone or something set it off, so somebody's got to know what's happening or is at least working on solving it.  We just need to find them and then they can fix me.  There must be teams of scientists outside the city trying to undo this.  If we could get out and find them...' she goes on, returning to escaping the city.";
	say "     She seems ready to keep trying to find a way out of her predicament.  How shall you respond?";
	if libido of kristen <= 2, say "[link][bracket]1[close bracket] - Dissuade her[end link] from her madcap false hopes,[line break]";
	if libido of kristen <= 3, say "[link][bracket]2[close bracket] - Snuggle up[end link] with a promise to keep looking for a solution, or[line break]";
	if libido of kristen <= 4, say "[link][bracket]3[close bracket] - Shut her up[end link] by giving her mouth something else to do.";
	now calcnumber is 0;
	let x be libido of Kristen - 1;
	while calcnumber < x or calcnumber > 3:
		if calcnumber is 1 or calcnumber is 2:
			say "It is too late to try that approach after what you did earlier.";
		say "Choice? ([x]-3)>[run paragraph on]";
		get a number;
	if calcnumber is 1 and libido of Kristen <= 2:
		say "     Not wanting her to get carried away or try anything foolish, you get her to sit down and talk to her";
		if ( hp of Doctor Matt > 0 and hp of Doctor Matt < 100 ) or ( hospquest >= 2 ):
			say ".  Explaining that you've already met someone studying the nanites in the city, you tell her that nothing can be done.  The microscopic robots are out of control.  At first, she's desperately holding out hope, but eventually it seems to sink in.  She sighs heavily and leans back against the couch.  'I just... it's just not fair,' she says sadly.";
		otherwise:
			say ".  Saying that you don't think anyone can control this mess - if someone had a solution for it, they'd already be out there curing everyone.  And to keep her from doing anything desperately foolish, you add that the military are desperate to keep the infected inside the city.  They can't risk the infection spreading any further, so trying to get past them would likely be fatal.  She seems ready to continue at first, but then just sighs heavily and leans back against the couch.  'I just... it's just not fair,' she says sadly.";
		say "     Resting your hand on her paw, you give it a soft squeeze.  Telling her again that she can get through this and that you'll be there to support her helps to cheer her up a little.  She gives you a weak smile.  'Thanks for putting up with me.  I think I need to be alone for a while, though.'  Nodding, you pat her shoulder reassuringly and leave the apartment, promising to return again soon.";
		now libido of Kristen is 2;
	otherwise if calcnumber is 2 and libido of Kristen <= 3:
		say "     Putting your arms around her, you hug her to your [bodydesc of player] body.  Promising that you'll keep looking for her seems to relieve her somewhat.  With a soft sigh, she relaxes and rests her head against your shoulder.  'I'm just so scared,' she says.  Running your hand along her side and across her hip, you tell her that she needn't be afraid as long as she has you and add that you'll be there to help her.  Nuzzling your neck, she hugs you back.";
		say "     Sitting on the sofa with her, you keep her in your arms, holding her comfortingly.  She prattles on with few more wild ideas on how she can possibly escape her growing infection, all with no real chance for success.  You do your best to comfort her while working to get her to put her trust in you rather than these schemes.  Your responses are a mix of promises that you'll keep trying, warnings that she should stay here where it's safe and reassurances that you'll take care of her, no matter what.  These are all lightly peppered with comments about how lovely she is or how she'll still be beautiful even as a vixen.  Through this, she clings to you with a growing need.";
		say "     Eventually, your promises do mean that you have to head back into the city to at least make a token effort to try and find a solution for her.  She is a little reluctant to let you go, torn between her desire for your reassuring presence and her desperate hopes for a cure.  Before you make your exit, you pull her into a final hug, squeezing her ass and giving her a passionate kiss.  She brushes her padded fingers lightly against her lips as she watches you depart, now left with thoughts of you for the moment instead of her worries.";
		now libido of Kristen is 3;
	otherwise if calcnumber is 3 and libido of Kristen <= 4:
		if cocks of player > 0:
			say "     Rather than listen to more of these desperate plans, you lightly shove her to sit on the couch.  Telling her that she's grasping at straws, you press her face to your crotch.  'And since you're going to end up being a sexy vixen, you may as well enjoy it.  And I should get to enjoy it too,' you add, pressing your swelling penis to her face.  The scent of your manhood distracts her as her eyes run over your [cock size desc of player] [cock of player] cock.  She licks her lips and gives your shaft a tentative lick, her arousal quickly overcoming her caution.  After a few more licks, she's sliding your cock into her hot, wet mouth.";
			say "     Rubbing those foxish ears of hers, you tell her what fine vixen slut she'll be.  Her ears dip at this at first and she blushes in shame, but they dip less each time you reiterate it and she instead sucks you all the harder.  Smiling happily at her response, you get even more turned on and start thrusting between those lovely lips of hers.  She moans and relaxes her throat, letting you set the pace for fucking her face.  She presses a paw between her legs to play with her juicy pussy while the other fondles her breasts.";
			say "     Her growing compliance makes you look forward to the day you'll be able to fuck her as a sexy, horny vixen.  Just the thought of that is enough to push you over the top and you pull her face to your crotch and unload your hot semen into her mouth and down her throat.  She moans again, swallowing it down with an almost desperate need.  Feeding her all you've got to give, [if cock width of player < 20]her mouth is left sticky and drooling cum by the time you're done[otherwise if cock width of player < 32]she's left drooling cum and has a lightly rounded stomach by the time you're done[otherwise]her mouth is overflowing with cum and her stomach is bloated with your seed by the time you're done[end if].  She whimpers softly at your betrayal, but continues to squirm on the couch, fingering herself to a moaning climax.  After enjoying that show, you tell her you'll be back to check up on her again soon and warn her not to go out or something else might make her into something much worse than a slutty vixen.";
		otherwise if cunts of player > 0:
			say "     Rather than listen to more of these desperate plans, you lightly shove her to sit on the couch.  Telling her that she's grasping at straws, you press her face to your crotch.  'And since you're going to end up being a sexy vixen, you may as well enjoy it.  And I should get to enjoy it too,' you add, pressing your damp pussy to her face.  The scent of your snatch distracts her as her eyes run over your [cunt size desc of player] cunt.  She licks her lips and gives your soft folds a tentative lick, her arousal quickly overcoming her caution.  After a few more licks, she's lapping her tongue into your hot, wet cunny.";
			say "     Rubbing those foxish ears of hers, you tell her what fine vixen slut she'll be.  Her ears dip at this at first and she blushes in shame, but they dip less each time you reiterate it and she instead licks you with a growing eagerness.  Smiling happily at her response, you get even more turned on and grind your netherlips to her mouth.  She moans and sucks on your clit, letting you do as you please.  She presses a paw between her legs to play with her own juicy pussy while the other fondles her breasts.";
			say "     Her growing compliance makes you look forward to the day you'll be able to do this with her as a sexy, horny vixen.  Just the thought of that is enough to push you over the top and you pull her face to your crotch and cry out in orgasmic release.  Your femmecum flows across her tongue and into her mouth.  She moans again, lapping it up and swallowing it down with an almost desperate need.  After a long and drawn out climax, her face is left sticky with your juices and she's rather dazed in her lust.  She whimpers softly at your betrayal, but continues to squirm on the couch, fingering herself to a moaning climax.  After enjoying that show, you tell her you'll be back to check up on her again soon and warn her not to go out or something else might make her into something much worse than a slutty vixen.";
		otherwise:
			say "     Rather than listen to more of these desperate plans, you lightly shove her to sit on the couch.  Telling her that she's grasping at straws, you press her face to your crotch.  'And since you're going to end up being a sexy vixen, you may as well learn to enjoy it.  And I should get to enjoy it too,' you add, pressing your bare crotch to her face.  Ordering her to lick you there, you tell her to imagine all the throbbing cocks and juicy pussies she's going to get.  She licks her lips, starting to imagine it and becoming aroused.  She gives your featureless groin a tentative lick at first, her arousal quickly overcoming her caution.  After a few more licks, she closes her eyes and laps and kisses at your crotch.";
			say "     Rubbing those foxish ears of hers, you tell her what fine vixen slut she'll be.  Her ears dip at this at first and she blushes in shame, but they dip less each time you reiterate it and she instead licks you with a growing eagerness.  Smiling happily at her response, you get even more turned on and grind your flat groin to her mouth.  She moans and works her tongue wildly across your skin, clearly imagining those cocks and pussies you tell her she won't be able to resist tasting.  She presses a paw between her legs to play with her own juicy pussy while the other fondles her breasts.";
			say "     Her growing compliance makes you long for a gender of your own so you can properly enjoy the day you'll be able to do this with her as a sexy, horny vixen.  Just the thought of that is enough to push you over the top and you pull her face to your crotch.  Having no focused means of release, your [bodytype of player] body trembles with pent-up arousal and you grind your flat groin against her face hard.  She moans again, kissing and licking at it with an almost desperate need to satisfy you.  After your unsatisfying release fades, you push her away.  She whimpers softly at your betrayal, but continues to squirm on the couch, fingering herself to a moaning climax.  After enjoying that show, you tell her you'll be back to check up on her again soon and warn her not to go out or something else might make her into something much worse than a slutty vixen.";
		now libido of Kristen is 4;









Section 5 - Sex with Kristen

the fuckscene of Kristen is "[sexwithKristen]".

to say sexwithKristen:
	if debugactive is 1:
		say "DEBUG -> HP: [hp of Kristen], Libido: [libido of Kristen], Msg 1: [if kristenmsg1 is true]Y[otherwise]N[end if], Msg 2: [if kristenmsg2 is true]Y[otherwise]N[end if], Msg 3: [if kristenmsg3 is true]Y[otherwise]N[end if], Msg 4: [if kristenmsg4 is true]Y[otherwise]N[end if] <- DEBUG[line break]";		
	if hp of Kristen < 2:
		say "ERROR-Kristen-[hp of Kristen]F: You should be able to find me yet.";
	otherwise if hp of Kristen is 2:
		say "     That's awfully forward of you.  Perhaps you should talk to her a little first.";
	otherwise if lastfuck of Kristen - turns < 6:
		say "     'I need a little more time to recover, hon.'";
	otherwise if cocks of player is 0 and cunts of player is 0:
		say "     You're ill-equipped to play with her right now.";
	otherwise:
		say "[bracket]***Sorry, sex content is coming soon. - The Mgmt[close bracket][line break]";
[		now lastfuck of Kristen is turns;	]


Section 8 - Variable Charts

[	hp of Kristen         ]
[ 0 = not encountered     ]
[ 1 = not saved           ]
[ 2 = saved				  ]
[ 3 = talked to her		  ]
[ ...                     ]
[ 8 = player told Kristen ]
[ 9 = player told both    ]
[ 10 = player gets item   ]
[ 11 = item given         ]
[ 12 = triggered          ]
[ 13 = infected, step 1   ]
[...                      ]

[     xp of Kirsten       ]  [not currently active, but preparatory]
[ 0 = no spray            ]
[ 1 = got spray           ]
[ 2 = using spray         ]

[   libido of Kristen     ]
[  personality tracker    ]
[ 0 = no change           ]
[ 1 = sexed up as human   ]
[ 2 = reassured           ]
[ 3 = seduced             ]
[ 4 = forced              ]

Section 9 - Temporary Raw Notes

[
	say "     Arriving outside Kristen's, you toss a few pebbles up at the window to let her know you're there.  At first there's no answer and you wonder if she's out.  After tossing a few more and getting no response, you double-check on the ladder's hiding spot, but don't find it there.  Knowing she must be upstairs, you toss a few more pebbles and risk calling up to her.  Finally, you see a corner of the blinds be split open as she peers out at you.  After a long delay, the window opens and the ladder is lowered out for you.";
	say "     Coming up...
]

[ lovers bench ]

Section 9 - Endings

[to come later]

Kristen ends here.