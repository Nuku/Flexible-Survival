Version 1 of Wyatt by Gherod begins here.

"An extension of the Lair Of The Lupines file that adds Wyatt to the game."

[Version 1 - File created, split from the main Lair Of The Lupines file.]

Section 1 - Wyatt NPC

Table of GameCharacterIDs (continued)
object	name
Wyatt	"Wyatt"

Wyatt is a man.
ScaleValue of Wyatt is 4. [normal sized]
Body Weight of Wyatt is 8. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Wyatt is 7. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Wyatt is 1. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Wyatt is 14. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Wyatt is 4.  [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Wyatt is 8. [length in inches]
Breast Size of Wyatt is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Wyatt is 2. [count of nipples]
Asshole Depth of Wyatt is 16. [inches deep for anal fucking]
Asshole Tightness of Wyatt is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Wyatt is 1. [number of cocks]
Cock Girth of Wyatt is 4. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Wyatt is 16. [length in inches]
Ball Count of Wyatt is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Wyatt is 4. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Wyatt is 0. [number of cunts]
Cunt Depth of Wyatt is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Wyatt is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Wyatt is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Wyatt is false.
PlayerRomanced of Wyatt is false.
PlayerFriended of Wyatt is false.
PlayerControlled of Wyatt is false.
PlayerFucked of Wyatt is false.
OralVirgin of Wyatt is false.
Virgin of Wyatt is true.
AnalVirgin of Wyatt is true.
PenileVirgin of Wyatt is false.
SexuallyExperienced of Wyatt is true.
TwistedCapacity of Wyatt is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Wyatt is false. [steriles can't knock people up]
MainInfection of Wyatt is "Werewolf Brute".
Description of Wyatt is "[Wyattdesc]".
Conversation of Wyatt is { "<This is nothing but a placeholder!>" }.
The scent of Wyatt is "     Wyatt's scent is nicely masculine, albeit beastlike, and it is quite pleasant. You feel like this would attract a specific kind of people.".

to say WyattDesc:
	say "     This werewolf seems quite fit and tall, even among the others, though not nearly as hardcore as some, with nicely-sized muscles shaping up his athletic physique under that soft dark grey fur, not too big nor too diminutive. You can tell he takes quite good care of himself. He walks around with only a loincloth, which bulges somewhat, and seems to keep mostly to himself, though looks fairly approachable still. He has a pair of bright green eyes that instantly scan you once you lay yours on his figure, as if examining you back, with little subtlety. Maybe he does not care to be so, and once you are done inspecting him, he shifts his gaze back to some trinket he has in hand.";

WyattDoneTalking is a truth state that varies.[@Tag:NotSaved]

Section 1-1 - Wyatt Talk

instead of conversing Wyatt:
	say "     You approach the werewolf with the intent to talk to him, and he reacts positively. 'Hey there, [mister]. Is there something you need?'";
	WaitLineBreak;
	say "[WyattTalkMenu]";

to say WyattTalkMenu:
	now WyattDoneTalking is false;
	say "     [bold type]What would you like to talk about with Wyatt?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Himself";
	now sortorder entry is 1;
	now description entry is "Ask the athletic werewolf about himself";
	[]
	if Energy of Wyatt > 0:
		choose a blank row in table of fucking options;
		now title entry is "The pack";
		now sortorder entry is 2;
		now description entry is "Ask about his feelings on the pack";
		[]
		choose a blank row in table of fucking options;
		now title entry is "His sexual preferences";
		now sortorder entry is 3;
		now description entry is "Ask about his sexual preferences";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Himself"):
					say "[WyattTalkHimself]";
				else if (nam is "The pack"):
					say "[WyattTalkPack]";
				else if (nam is "His sexual preferences"):
					say "[WyattTalkSex]";
				wait for any key;
				if WyattDoneTalking is false:
					say "[WyattTalkMenu]"; [looping back to keep talking with him]
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You excuse yourself as Wyatt gives a polite nod.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say WyattTalkHimself:
	say "     You ask him about himself, as you intend to get to know him a bit better, and he seems happy to tell you a few things. 'Sure thing. I'm Wyatt, nice to meet you.' He then nods as you also introduce yourself. 'Someone with manners is a rare sight these days. Most just wanna get down to fuck on spot and don't bother getting to know who they're fucking with. I'm glad you're different... Or at least you gave a good first impression.' He puts on a cool smile as he leans back against a wall. 'You're like... sort of Jett's guest or something? I'm cool with that. It's nice that he doesn't mind different people visiting us occasionally. Most people who end up being brought here either want to stay in that pit hole or run away.'";
	say "     This is not strange, as many succumb to their desires easily or panic right away and try hard to flee. You tell him you are just different and prefer keeping an open mind. 'An open mind, you say? That's refreshing to hear. I think you and I could get along just fine, [mister].";
	if Energy of Wyatt is 0:
		now Energy of Wyatt is 1;

to say WyattTalkPack:
	say "     Wondering what his ideas on the pack are, you ask him if he would be willing to share his perspective. He keeps his voice low and you just know he is going to share some unpopular opinion. 'There's too many dudes in here! Not that it's an issue or anything like that, but... I mean, yeah, since I've been made a werewolf I kinda let other dudes blow me if I'm really needing something soft around my cock, but seriously, where are all the chicks? Couldn't we also have these big tit werewolf ladies? Weird fucking thing. Sometimes I need pussy and I gotta... find some myself... somehow. I'm not confident enough to tell this to Jett and hope he'd understand, besides... he has bigger concerns.";
	say "     Although, you have to tell him that you meant this question to be directed towards the pack's dynamics, to which he then continues to speak. 'Ah, the pack itself is fine. I mean, there's some people who disagree with how stuff is done around here, others who are more than fine to not do shit, eat and fuck all day... I'm chill as long as we get by without any trouble. My only issues are what I mentioned just before... Yeah, it can get tough for me just because of that, but I know I'm probably the only dude who thinks this way. Guess this ain't Jett's fault, we just end up turning every slave we fuck into werewolves if we fill them up... And sometimes, that just can't be helped, you know? You gotta just finish inside... Uh, so, yeah, pack dynamics, there's that.'";

to say WyattTalkSex:
	say "     As you consider Wyatt's possible sexual preferences, you ask him to talk to you about them. 'Well I'm frickin' crazy about a nice pair of tits and a juicy wet pussy I can bury my whole dick inside. Seriously, I'm a simple dude! But I guess if there's some guy who's willing enough to please then I could have him suck me off. A tight ass also works... a hole's a hole, a mouth's a mouth, and if you're good you're good. Guess being a werewolf opened my sexuality a bit, but I still really like women and they seem non-existent in this pack. I considered leaving, but... really there's nowhere for me to go and food's good. Guess it ain't too bad, really, I just gotta get creative.'";
	if player is female and breast size of player > 0:
		say "     'Although... I definitely wouldn't say no to you, [mister]... You've got at least a few things I like. And you're pretty good looking.' He winks at you with a confident smirk.";
	if Libido of Wyatt is 0:
		now Libido of Wyatt is 1;

Section 1-2 - Wyatt Sex

instead of fucking Wyatt:
	if Libido of Wyatt is 0:
		say "     You think about making a move on him, but looking at him again, you realize it might not be a good idea to do such a thing without speaking to him first.";
	else:
		if "Player Male to Female" is listed in traits of Wyatt: [variant for players Wyatt knows he transformed]
			if FaceName of Player is "Husky Bitch" and BodyName of Player is "Husky Bitch" and Player is purefemale: [Player retains their female husky appearance]
				now Perception of Wyatt is 2; [Happens when player makes a move on Wyatt while looking like a Husky Bitch after MtF. Wyatt will remember the player as such the last time they had sex]
				if lastfuck of Wyatt - turns < 4:
					say "     You make a move on Wyatt, but given that you have been together recently, he seems a little hesitant. 'Hey hottie... Do you mind coming back later? Right now I'm a little spent, sorry... But I promise to make it up to you.'";
				else:
					say "     You make a move on Wyatt, and he seems more than receptive to you. 'How's my favorite husky lover doing? I like that you keep taking good care of yourself... In fact, that alone gets me in the mood. What did you have in mind?'";
					WaitLineBreak;
					say "[WyattSexMenu]";
			else if player is female and breast size of player > 0:
				if lastfuck of Wyatt - turns < 4:
					if Perception of Wyatt is 2: [first time Wyatt sees player as something other than female husky since the transformation or a time he saw the player looking like a female husky]
						say "     You make a move on Wyatt, but given that you have been together recently, he seems a little hesitant. Plus, he notices your different appearance. 'Hey hottie... Uh... You look a bit different! Have you been taking care of yourself properly? I'd... recommend you don't get near any other males because... I would hate to see you lose those hot feminine curves of yours.' You tell the athletic werewolf that everything is still in place, despite the changes you have gone through lately. 'That's alright, you're still hot, and I'd still fuck you senseless... if I wasn't so spent from last time. Mind, maybe... coming back later? I promise to make it up to you.'";
						now Perception of Wyatt is 1; [still perceives the player as female, now knowing they look different, thus no longer commenting on that fact as long as it persists in this state]
					else if Perception of Wyatt is 1:
						say "     You make a move on Wyatt, but given that you have been together recently, he seems a little hesitant. 'Hey hottie... Do you mind coming back later? Right now I'm a little spent, sorry... But I promise to make it up to you.'";
				else:
					if Perception of Wyatt is 2:
						say "     You make a move on Wyatt, and he seems more than receptive to you, despite your different looks since he helped you transform. 'Oh, hey there... I see you've gotten a little different! Have you been taking care of yourself properly? I'd... recommend you don't get near any other males because... I would hate to see you lose those hot feminine curves of yours.' You tell the athletic werewolf that everything is still in place, despite the changes you have gone through lately. 'Ah, screw it, you're still hot and I still wanna fuck you. What did you have in mind?'";
						now Perception of Wyatt is 1;
					else if Perception of Wyatt is 1:
						say "     You make a move on Wyatt, and he seems more than receptive to you. 'How's my beautiful lover doing? At least still keeping away from nasty transformatives, I see. That's really good... So, what did you have in mind?'";
					WaitLineBreak;
					say "[WyattSexMenu]";
			else: [player did not maintain the gender nor the transformation, may lead to a special MtF scene reusing the original scene for an easily accessible and complete Husky Bitch TF]
				say "     You attempt to make a move on Wyatt, but given the changes you have gone through, completely altering your appearance and body in the process, he does not reciprocate in the way you would wish. 'Uh... I see you went back with your decision... That's fine, I guess, uh... If that's what you want. Although I can't say it gets me in the mood, sorry. If you wanna keep having fun with me, you gotta put in the effort. Maybe just think on what you'll be missing out.' It seems the werewolf is turned off by your change in looks, although he does not seem to have gone away yet.";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Apologize for not being cautious about your transformation.";
				say "     ([link]N[as]n[end link]) - Excuse yourself.";
				if Player consents:
					say "     Guilt strikes you as you perceive the disappointment in Wyatt's eyes, and you are quick to apologize to him for your carelessness. 'Hm... If you really mean it, then maybe we can still fix that...' He approaches you slowly, locking his gaze on yours, then as you feel his touch above your shoulder, he pulls you to him, closer to that strong body covered in soft dark grey fur. 'Let's head over my bedroom. I'll give you what you need.' Before you know it, he has a strong hold of you as you are led to his private quarters...";
					WaitLineBreak;
					say "[WyattSpecialMtF]";
				else:
					say "     As it seems, Wyatt is not keen on having any fun with you looking the way you look, so you simply excuse yourself and leave. 'Oh, so that's it? You're just leaving? And here I thought we had something going on since that... Well, whatever. Just hope you're happier, at least.' He then says nothing more as you simply proceed to retreat.";
		else:
			if player is female and breast size of player > 0:
				if lastfuck of Wyatt - turns < 4:
					say "     You make a move on Wyatt, but given your recent exchange, he dismisses your advances. 'Yeah, I'm sorry. We're fucking horny all the time, but even us werewolf brutes need some time to cooldown, you know... But you can come back later.'";
				else:
					say "     You make a move on Wyatt, and he seems more than receptive to you. 'Oh, so you wanna have some fun together, eh? I'm down. What's on your mind?'";
					WaitLineBreak;
					say "[WyattSexMenu]";
			else:
				if lastfuck of Wyatt - turns < 8:
					say "     You make a move on Wyatt, but due to your recent exchange, he dismisses your advances. 'No, I'm not feeling like it. I already had enough. Try some other dude around here, they may be more than happy to take on your offer.'";
				else:
					say "     You make a move on Wyatt, which despite his preferences, seems to get him thinking. 'Well... You do seem nice enough and willing to make me feel good. I guess we can do something...'";
					WaitLineBreak;
					say "[WyattSexMenu]";

to say WyattSexMenu:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Compliment his body";
	now sortorder entry is 1;
	now description entry is "Show him appreciation";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Offer to blow him";
	now sortorder entry is 2;
	now description entry is "Give Wyatt a blowjob";
	[]
	if player is female and breast size of player > 0 and Resolution of WyattRomance >= 1 and Resolution of WyattRomance < 99:
		choose a blank row in table of fucking options;
		now title entry is "Have him lick your pussy";
		now sortorder entry is 3;
		now description entry is "Allow Wyatt to give you some oral";
		[]
		choose a blank row in table of fucking options;
		now title entry is "Get some vaginal sex";
		now sortorder entry is 4;
		now description entry is "Ask the werewolf to fuck you";
		[]
		choose a blank row in table of fucking options;
		now title entry is "Ask him to dominate you";
		now sortorder entry is 5;
		now description entry is "You are looking for something rough. Perhaps he would be in the mood for that";
	[]
	if player is not female and breast size of player is 0 and Libido of Wyatt >= 3: [for males, basically. Unlocked after having sex with Wyatt at least 2 other times]
		choose a blank row in table of fucking options;
		now title entry is "Ask him if he would fuck you";
		now sortorder entry is 6;
		now description entry is "You may end up with more or less than you ask for, but well... should you";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Compliment his body"):
					say "[WyattSexBodyWorship]";
				else if (nam is "Offer to blow him"):
					say "[WyattSexBlowjob]";
				else if (nam is "Have him lick your pussy"):
					say "[WyattSexFemaleCunnilingus]";
				else if (nam is "Get some vaginal sex"):
					say "[WyattSexFemalePussyFuck]";
				else if (nam is "Ask him to dominate you"):
					say "[WyattDominantSexFemale]";
				else if (nam is "Ask him if he would fuck you"):
					say "[WyattDominantSexMale]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You politely excuse yourself, as you have changed your mind. He simply nods, albeit visibly disappointed.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say WyattSexBodyWorship:
	say "     Looking over Wyatt's impressive physique, a thought crosses your mind as your eyes travel through his musculature, admiring every inch and corner of his mighty lean strength. The interest is evident in your gaze and the werewolf is quick to notice. 'Well, you've been looking at me for a while, is there anything you wanna say?' he asks, although you can tell the intentions behind his words as he gives you a teasing grin, bringing his paw-like hands over his hips and putting his muscular furred chest in full display. He even makes his pecs bounce with a great deal of amusement as he waits for an answer, noticing your eyes following the motions. When your focus finally returns, you tell him that you just think his body is quite attractive.";
	say "     He raises his arms and brings his hands behind his head, giving your yearning sight a bit of muscle flexing to show off a bit more. 'Is that so? I couldn't tell by the way you're looking at me or anything...' his tone is clearly sarcastic, but the amusement in his expression leads you to believe he actually likes this";
	if player is female and breast size of player > 0: [female scene]
		say ". 'So you like muscular guys? Strong and lean like me? Bet these muscles would feel amazing around that pretty body of yours... Well, you've got something I like too,' he means your breasts, as his eyes also stare back at you. Just the idea of the confident beastman in front of you taking interest in your body makes you unexplainably bothered, leaving you to figure out if you either like it or not. You also think his loincloth is hanging a little higher than usual.";
		WaitLineBreak;
		say "     'Tell you what... I'll let you touch me if you let me touch you. And there's no backing away once you're within my reach... But don't worry, I'll treat you right. The way none of these brutes can do...' You exchange looks silently for a while after he finishes speaking, and the decision lies on you to, perhaps, enjoy a body worship session. You will give Wyatt something to play with too, judging by the way he so thirstily looking at your tits.";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Readily approach him.";
		say "     ([link]N[as]n[end link]) - Try to cut this out.";
		if Player consents:
			say "     There is no way you can resist such a handsome werewolf, especially when he is purposefully teasing you. In fact, you do not even give it much thought as your body begins to bring you closer, step after step. Wyatt only observes you moving, then slowly raises his arms once more. 'Come on, don't be shy. Take what you want.' As temptation takes the reins, you place your hands over the werewolf's biceps, which puts a grin of mischief in his muzzle. You get so distracted feeling up the bump of muscle that you barely notice him moving his hand over your chest, giving your breasts a firm, yet gentle, squeeze, followed by a sequence of rubbing that nearly gets you moaning. 'A deal's a deal,' he says, although you can tell this turns him on.";
			say "     'Nice ones you've got... But as you were so hypnotized by my body, how about you rub it all over? It might earn you a [']little['] reward in the end.' You have little to say against the werewolf's suggestion...";
			WyattSexBodyWorshipContinued;
		else:
			say "     You really only intended to compliment him, which led you to inadvertently let the whole situation escalate. As you realize this might get to something you do not want at the moment, you try excusing yourself and apologize Wyatt for the awkward moment. He drops the cocky attitude the minute you express discomfort. 'Oh, no worries... Maybe I misread your intentions and that's on me. Although... you can look at me anytime, I don't mind it at all,' he replies, smiling, as he still confidently stands, yet no longer explicitly teasing you with his body. 'Or perhaps some other time, then? Well, I don't intend to insist, but... I confess I'd like to spend some good time with you. Frankly, you're hot... And really nice...' His voice changes to a low, velvety and smooth tone at his last words.";
			say "     He still hopes to change your mind, with smooth talk and bedroom eyes, while patiently awaiting any further words from you.";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Change your mind and, even if hesitantly, step towards him.";
			say "     ([link]N[as]n[end link]) - Keep your decision and excuse yourself.";
			if Player consents:
				say "     In your own defense, it is hard to resist such a handsome werewolf, especially when he is purposefully teasing you. In fact, you do not even give it much thought as your body begins to bring you closer, step after step. Wyatt only observes you moving, then slowly raises his arms once more. 'Come on, don't be shy. Take what you want.' As temptation takes the reins, you place your hands over the werewolf's biceps, which puts a grin of mischief in his muzzle. You get so distracted feeling up the bump of muscle that you barely notice him moving his hand over your chest, giving your breasts a firm, yet gentle, squeeze, followed by a sequence of rubbing that nearly gets you moaning. 'A deal's a deal,' he says, although you can tell this turns him on.";
				WyattSexBodyWorshipContinued;
			else:
				say "     Deciding to keep your decision, you thank him for the compliment and excuse yourself once more, indicating him that you shall be leaving. He does not hide his disappointment, but makes no further attempts at convincing you. 'Alright, then. Thanks for coming by! You're a really nice sight to have any time of the day.' The werewolf then nods as you head somewhere else.";
	else: [male scene]
		say ". 'So you're into muscular guys, huh? Bet you wished you were this hot and lean... Or maybe you just like being handled like a good little bitch by a stronger dominant male.' Now, Wyatt is clearly provoking you, however, you cannot help but keep staring, the whole situation leaving you unexplainably bothered. 'You're just desperate to feel me up all over, ain't that right? Heh... I can't really judge you. All the other werewolves are so readily available to fuck anyone who offers on request... it gets boring after a while. So easy to get...'";
		WaitLineBreak;
		say "     He keeps putting on a show by flexing his bulging biceps while looking at you right in the eye. 'Although, seeing you looking at me like a sad puppy makes me feel bad... So I might let you touch me. Maybe you just need to get closer to a real man to realize you might better fit the role of a female... I mean to just give you something to consider, of course.' You exchange looks silently for a while after he finishes speaking, and the decision lies on you to, perhaps, enjoy a body worship session. Alternatively, you can just walk away, in case you do not like the tone of what is happening.";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Readily approach him.";
		say "     ([link]N[as]n[end link]) - Cut this out.";
		if Player consents:
			say "     There is no way you can resist such a handsome werewolf, especially when he is purposefully teasing you. In fact, you do not even give it much thought as your body begins to bring you closer, step after step. Wyatt only observes you moving, then slowly raises his arms once more. 'Come on, don't be shy. I know you wanna feel me up.' As temptation takes the reins, you place your hands over the werewolf's biceps, which puts a grin of mischief in his muzzle. 'Strong and solid, aren't they?' he asks, flexing them against your palms. 'I guess you could be a good [boygirl] for me and make sure I enjoy a nice massage. Bet you wouldn't want to waste such a generous offer...' he suggests, knowing you have little to say against it.";
			WyattSexBodyWorshipContinued;
		else:
			say "     You really only intended to compliment him, which led you to inadvertently let the whole situation escalate. As you realize this might get to something you do not want at the moment, you try excusing yourself and apologize Wyatt for the awkward moment. He hears you and laughs, playing it cool even after you have expressed discomfort. 'That's alright, I'm happy to have given you something to remember, at least. I guess I'll see you around, then.' The werewolf then drops his pose, pats you on the shoulder and lets you leave.";

to WyattSexBodyWorshipContinued:
	WaitLineBreak;
	say "     Being given green card to simply feel up the handsome wolfman means you can really just go all out. As you have given his biceps a good amount of rubbing, your hands begin to trail towards his furred chest. His pectoral muscles are quite sizable, not bodybuilder sized but still of a significant measure. They feel solid against your touch, but the soft fur, shorter and brighter in this section, improves this pleasant experience. Everytime he breathes in, you feel his chest expand, all while you keep rubbing his pecs. Eventually, you reach out for his nipples, which turn out to be somewhat sensitive to the werewolf. 'There's something you could do...' he speaks as you feel him reaching for the back of your head, slowly pulling you closer to his chest.";
	say "     He does not stop it until your lips collide with the surface of one of his furred pecs, then led to that very same nipple you were teasing just a few moments ago. 'Just helping you free your hands...' The werewolf smiles as you bring your tongue into play, wiggling it across that sensitive nub as you proceed to move your hands across the sides of his torso. As any werewolf brute, he is big[if scalevalue of player > 3], even for you[end if], due to how well he takes care of his body. All those muscles had a nice mass overall, which you feel up at every corner while your lips remain planted on his pecs. You also give his abs a rub, noticing how popped and rock solid they are, ondulating your touch with every bump of muscle.";
	WaitLineBreak;
	say "     With your focus so taken by such a beautiful body, you take some time to notice movement happening through one of his arms. Between you and him is his hard cock, which you turn down to look at. He is jerking himself off as you worship him, and given how hard it looks, everything points towards that you are doing a good job. Soon enough, Wyatt gently pulls your face back to his pecs, wanting you keep licking at his nips. 'Keep up the good work, [mister]...' This is all the encouragement you need to do your very best at moving your tongue around them, feeling his deep breaths pushing against your mouth while your head keeps locked between that large slab of muscle and the thick paw-like hand.";
	if player is female and breast size of player > 0:
		say "     'I could breed you all fucking day... Make you mine forever. Fuck, I know I want to...'";
	else:
		say "     'I could almost fuck your ass, [boygirl]... Maybe I will, if you keep being this well-behaved...'";
	WaitLineBreak;
	say "     Amidst his lusty words, he hastens his movements, jerking faster and faster. You think he might be getting closer, and your hands cannot have enough of that hot body, continuing to rub him all over while you are still stuck sucking on his chest. 'Yeah, worship me... You wanted it, and now you have it...' It comes to a point you also feel his entire body moving as he strokes so fast and hard, breathing deep and moaning lowly. You feel the pressure on the back of your skull disappearing as Wyatt brings his hand over his, and unsure if by a product of lust or sheer willingness to please in any way, you move your face over his furred armpit. His cock throbs compulsively then, his abs harden and he gets a bit louder, all a sign that you must have just done something he really, really likes.";
	say "     'Fuck...! I'm gonna c-...! A-aah...!' the werewolf moans as he shoots his load right across you, his spurts of thick lupine cum ending up in the floor at a significant distance from where you both are standing. They are a significant amount, and his climax lasts for almost a full minute. He can barely keep standing as his legs bend, his fists clench, his whole body tenses up and he nearly begins howling. 'Oh fuck... I made a mess... Wasn't expecting this to turn me on so much. Shit, I better clean it up before someone comes by...' He takes a few last deep breaths as he squeezes the last drops out of his cock, contemplating the next minutes he will spend trying to clean the floor.";
	WaitLineBreak;
	if player is female and breast size of player > 0:
		say "     'Thanks, hottie. That was fucking hot... I promise that one of these days I'll pay you back. You're not gonna want to leave...' he teases, giving you a wink and light tap on your butt while you are within his reach. It is probably for the best to leave Wyatt to his cleaning before someone, indeed, comes by and sees all this mess.";
	else:
		say "     'You're off the hook for now, [mister]... But keep staring at me like that and I might have to do something about it. I might be straight, but a hole's still a hole...' He shows you such a predatory glare that it gives you the chills, and suddenly you are not sure if this arouses or absolutely terrifies you. Still, you nod to him and decide to leave him be, as he has a lot of cleaning to do.";
	NPCSexAftermath Wyatt receives "Other" from Player;
	if Libido of Wyatt < 3:
		increase Libido of Wyatt by 1;

to say WyattSexBlowjob:
	say "     As you wonder what you would like to do with the athletic werewolf brute, you consider asking him if he would like to simply get blown, since you feel like giving him a blowjob.";
	if player is female and breast size of player > 0:
		say "     Given that your appearance is feminine enough for him, he seems very excited to hear your offer. 'Oh, for sure! I love getting my dick sucked by cuties like you... Damn, it's already getting me hard, just thinking about it.'";
	else:
		say "     He looks back at you, seemingly amused at your offer. 'Well, I won't say no to an eager cocksucker... and I could use the relief. Just hope you can handle it, my [guygal].'";
	say "     With the exchange of words done and intentions revealed, you move towards Wyatt as he beckons you to move to a more relatively private area with him. The werewolf locks his bright green gaze on your eyes and lets you descend upon him, as he tosses his loincloth to the side. Before you, there is a large furred sheath with a thick red tip poking out, soon coming out and growing bigger by the second. He leans back against the wall and lets you do what you want, as his half-hard meat hangs in front of you.";
	say "     Looking up at him, as if seeking his permission, he then nods as you proceed to bring your lips over to his cock. The feeling of your mouth soon enveloping its sensitive surface makes the dark grey werewolf grunt in pleasant surprise, You get your hands around his balls, only giving them a gentle squeeze and rubbing, as you keep on kissing and licking his dong. You opt for a slow approach, giving his manhood a lot of affection until you ensure it is fully hard, throbbing and yearning for something more. When that is the case, you then move to allow his cock past your lips and begin to suck it, letting it in progressively deeper until it fills your mouth completely. 'Guess you know what you're doing! Keep going...'";
	WaitLineBreak;
	say "     Wyatt's cock is rock solid by the time you are tempting it to go further towards your throat, its girthy shape giving you enough challenge to keep things interesting. With your hands, you continue to caress his sack and stroke at the base of his shaft as you get as many inches as you can of his length in your mouth. You never put your tongue to rest either, as it incessantly wiggles and loops around his dick, with your only intention being to bring him pleasure. He notices your dedication and smiles, observing your work from above and enjoying every second. Occasionally, he lets out a moan as the blissful sensations get the better of him, eventually leading him to simply give in to how good it feels.";
	say "     'Feels fucking amazing... You're good at this!' he exclaims joyfully as you continue to suck him, doing your very possible best at pleasing the werewolf with your mouth. 'Keep that up and I'll give you something...' Your reaction to his words is to pick up the pace and suck him harder, deeper than before and going faster with your strokes, which seems to entertain him. The smug smile on his face slowly turns into an expression of pure lust as you sense his climax nearing. Finally feeling it coming, the werewolf puts his hands on the back of his head and flexes his entire torso hard, readying himself for the surge of pleasure that is about to come. 'Fuck, you're gonna make me cum... Really soon...!'";
	WaitLineBreak;
	say "     His body does not fail his words, and soon enough, you feel his whole junk throbbing in your hands and mouth. Wyatt clenches his fists and flexes his entire body as the first gush of thick werewolf cum comes generously filling your mouth with a single spurt, then another, as hard as the previous, and you struggle to keep it all in. Eventually, the rest gushes out of your mouth and coats the entire lower half of your face, dripping down and, in general, making a mess. Your mouth remains completely filled up with the beastman's cum as he looks down on you with a satisfied grin, after catching his breath. 'Phew, that was a mouthful. I tried to warn you...' You nod as you wonder what to do with the cum in your mouth.";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Swallow.";
	say "     ([link]N[as]n[end link]) - Spit it out.";
	if Player consents:
		LineBreak;
		say "     Thinking that spitting his cum out would be rude, you instead swallow it, the thick creamy liquid slowly making its way down your throat, leaving its typical aftertaste lingering at the back of your tongue.";
		if player is female and breast size of player > 0:
			say "     'Don't drink too much of it. I wouldn't want to have you lose that pretty face and become all burly and hairy... But I don't mind feeding you some more any time.' Wyatt then smiles as you head off to clean yourself up.";
		else:
			say "     'Glad we could find something pleasant for both. I suppose if you tend to do a good job consistently, you may have more of where it comes from.' Wyatt then smiles as you head off to clean yourself up.";
	else:
		LineBreak;
		say "     You think you would rather not swallow the cum that happened to enter your mouth and, instead, spit it out. Wyatt just laughs at you. 'What, was that too much for you to handle? Thought you would like its taste. Maybe I should have a talk with the cook to make some of that pineapple stuff.' He then smiles as you head off to clean yourself up.";
	NPCSexAftermath Player receives "OralCock" from Wyatt;
	if Libido of Wyatt < 3:
		increase Libido of Wyatt by 1;

to say WyattSexFemalePussyFuck:
	say "     You give the handsome werewolf a suggestive look as you step towards him, leading his gaze over your feminine body, then even lower. Once you are close enough, you whisper to him that you would like to be properly taken by him and allow him access to your goods, which inevitably react to the anticipation. Your sex grows moist and aroused as you approach the athletic wolfman, even more after seeing his happy expression facing your proposal. 'Did I hear that right?' he asks ask he grabs you by the hips, pulling you to him, a sudden lust bringing him to kiss you in the lips. His advance leads him to push you against the wall and pin you against it, to then bring his large hands lower to lift you.";
	say "     His kisses are passionate, fiery and intense, his tongue twirling around yours in an almost animalistic manner, and you can only wrap your legs around him as the tip of his cock begins to poke at your wet curls. It throbs, warm and thick, wanting to enter you immediately, but Wyatt seems to hold on for now. He continues to kiss you, then licks around your neck, only allowing his shaft to rub against your pussy. Albeit persistently, the werewolf remains contained in his actions, first taking his time to truly appreciate your body. His mighty physique contrasts with your softness and feminity, and his surprising strength keeps you placed way above the ground and against the wall with seemingly no effort.";
	WaitLineBreak;
	say "     Then, with a thrust, you begin to feel his determination to delay the inevitable falter, as the tip of his lupine cock begins to push against your lower lips. 'I wanna fuck you so bad...' he whispers, almost moaning, desperate to get inside you. Seeing no reason to stop him, you let him in, moving the lower half of your body against his member to show that you welcome him. Getting your message, he begins to thrust in once more, this time successfully pushing the tip of his cock into you. Soon, more of his shaft follows, pushing your womanhood open and making space for the girthy meat yearning for your moist insides. 'Feels so good... I'm gonna fuck you hard and deep...'";
	say "     His breathing deepens, as in preparation for what is coming next, and he indeed shows his determination to fulfill his word once you feel him push as much of his cock as he can into you, holding you in place for him to do his deed without any resistance, voluntary or not. His sizable member continues to drill you, only being pushed back out once it cannot go any further inside, and then the act is simply repeated, slowly at first. This gives you shivers of bliss all over, the touch of his cock deep within your womanhood, its girth enough to open you up delightfully... And then, the werewolf embraces you, pulling you close to him, tightly, as he steadily begins to pick up the pace.";
	WaitLineBreak;
	say "     'You feel so amazing...' he mindlessly mutters close to your ear, pushing into you deep as he begins to build up some roughness, lust starting to seriously overtake him. Although, you see no reason to care, as each time he pounds you deep, you only feel better and better. He does not just thrust back and forth like an inexperienced top would do, no, Wyatt actually has a serious hip moving game that seriously threatens to drive you crazy. You cannot quite tell the way he is doing it, but you feel every inch and corner of your feminine sex expertly stimulated by his cock, which goes straight into just the right spots. He might actually be catching up to your body language, as everytime you quiver in his arms, he seems to [']do that thing['] again and again...";
	say "     The closest you can describe his movements is as a mix of almost circular thrusting and grinding, as if he just knows where you need his cock to be. 'You like it when I do that?' he asks, not letting go of his passionate way of love making with you, not even as your pleasure becomes so overbearing you lose the ability to speak, only to be replaced by moaning. In fact, that fills him up with newfound motivation to carry on fucking you senseless, even faster and harder, your focus shifting away from his expert ways of taking you and more into his sheer might and strength, as the way he does it seems so effortless. You are only there, held by him, helpless, every thought of yours dissipating into only absolutely blissful lust.";
	WaitLineBreak;
	say "     He then decides to carry you away from the wall and onto a more comfortable surface, only to pin you down under his strong furred body. One of his thick arms is placed around the back of your neck as you feel your whole self nearly squished under him, only your legs remaining wrapped around the male's waist. Wyatt does not drop his gentleness when handling you, but his size compared to your more delicate frame is enough to make you feel powerless. Now, he has the full angle he needs to properly fuck you as he pleases, pleasure intensifying the faster he goes at it, pounding you not just like a battering ram, but also as an experienced love maker. The wolfman then stares deeply into your eyes for brief moments... and you feel his cock throb compulsively.";
	say "     'Ooh fuck...!' You hear him grunt, stalling his movement for a second, as if hesitating about something that you know is inevitably drawing closer...";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Pull him to you, beg for it, do absolutely anything it takes for him to finish inside you.";
	say "     ([link]N[as]n[end link]) - Let him pull out.";
	if Player consents:
		say "     It should not be such a surprise for him that you end up touching him back, begging him to fill you, after he fucked you so good. However, you did not expect him to react to that so fast, somehow pushing his entire length in and properly knotting himself into you. 'Fuck it, I'm gonna breed you like- FUCK...!' he fails to finish his sentence before shooting his load straight into your womb. Each spurt is so powerful that you definitely feel it gushing into you, even as your own climax hits you like a truck running you over (figuratively), causing your body to quiver and squirm at the sheer amount of pleasure surging through you. Inevitably, you moan loudly as he fills you up more and more, his orgasm lasting for almost a full minute of non-stop cumming. These werewolves surely pack a lot in those large balls of theirs...";
		say "     'Fuck... I hope I don't regret it... But it felt so good...' he says, finally resting his body on top of yours. The weight of his bulk still keeps you from moving, but at least, you are comfortable snuggling with the werewolf brute as he patiently awaits for his knot to deflate. 'You're incredible... I wanna knock you up more often... Maybe even make some wolf pups with you...' he says, chuckling in the end, likely in a joking tone. 'It'd be fun breeding you over and over, though... I've always wanted to be a dad and raise kids with a beautiful woman... I wouldn't have to look for one if I just had you.' Now, you do not think he is joking anymore, and that reminds you of the massive deposit of werewolf cum that was just delivered into your womb.";
		WaitLineBreak;
		say "     'I admit, I may actually enjoy the idea of being a pack alpha, as long as my future pup bearer is willing to stick around. Maybe one day...' He says nothing more before kissing you on the lips, his tongue wildly exploring yours for the next moments. You make out all the way until Wyatt can pull out and away from you, but even that does not stop the kissing. It even feels like after all that, the handsome werewolf could go at it again, judging by how energetic his movements are when helping you up and, still, smooshing your lips away. Finally, he lets go of you, though you definitely can tell he wants you again, soon.";
		say "     'See you, and be careful out there. I'll be here, thinking of you... Looking forward for our next time.'";
	else:
		say "     Figuring it might be best to not conflict Wyatt's thoughts even further, you simply let him pull his cock out of you before it is too late. But this action leads the werewolf to aim his massive load directly at you, and soon, the inevitable happens. 'Fuck, I'm gonna cum...!' he warns you, and soon, you are getting showered by a large load of werewolf cum falling all over you. Each spurt is so powerful that some of it makes it past your head, although most ends up covering your whole body from your face to your waist. The werewolf, however, stares at you dead in the eye as his hand moves to stimulate your pussy, holding his cock firmly with his other hand, as the last shots are still being fired at you.";
		say "     'C'mon, I'm not letting you go without finishing you off...' You actually do not need much to hit your orgasm himself, together with his fingers rubbing against your sex and the feeling of his warm cum splashed all over your body... It is just too much for you not to quiver and squirm around helpless to the surge of overbearing pleasure taking you. 'Yeah, let go, babe... I want you to feel good...' His words only encourage your climax, quickly hitting its peak and lasting for a good while, enough to tire you out completely once it finally subdues.";
		WaitLineBreak;
		say "     'Fuck, that was hot... Mind doing it again soon? Once, you know, you can move your legs again,' he laughs, before he helps you up and goes fetch something to get you cleaned up. 'Am I always making such a mess on you? Damn, I gotta start thinking about finishing inside... Fuck the consequences of that, anything changes up in your body I can always help you turn it back to normal. Plus... Breeding you is an entertaining idea.' He leans in for a kiss before you can reply, then gives out a chuckle in the end. 'You're beautiful...'";
		say "     'Anyway, see you later, and be careful out there. I'll be here, thinking of you... Looking forward for our next time.'";
	NPCSexAftermath Player receives "PussyFuck" from Wyatt;

to say WyattSexFemaleCunnilingus:
	say "     You give the handsome werewolf a suggestive look as you step towards him, leading his gaze over your feminine body, then even lower. Once you are close enough, you whisper to him that you would like something different from him, perhaps by putting that long tongue of his to work. He seems to like your idea, and this time, you lead the action by touching his paw-like hand with yours and bringing it over your body, letting Wyatt know he may touch you as he pleases. Of course, the athletic wolfman takes the opportunity to feel up your body, touching your curves as he slowly pulls you towards him. 'Well well, if that's all you want from me, I can just get started then. Better make my way there...'";
	say "     He then kisses you, moving his hands over your silhouette and towards your breasts, feeling them up with a gentle squeeze. You both step towards a nearby couch which Wyatt carefully pushes you onto to lie down across, almost as if making sure you are comfortable, while keeping himself on top of you exchanging tongues. Wyatt moves in passionately, holding you close to him through the entire process, and having dropped his loincloth, his hard cock now hangs free between his body and yours. 'Let's get to the fun part... Bet you taste really good down there,' the werewolf flirts right before moving his muzzle over your neck. He then proceeds to press his tongue against your skin and begins to make his way down on your body, running it by most of your erogenous spots.";
	WaitLineBreak;
	say "     From the neck through your collarbone, then to your chest, Wyatt gives your tits a nice rub as he circles your aureolae with his tongue, teasing you in almost torturous pleasure as he briefly looks into your eyes, knowing the effect he is having on you. Once he is satisfied with this, he proceeds to go lower, through your midriff, and with his hands, he pushes your legs open and prompts you to relax. The werewolf's head is soon right between them, his tongue wiggling around your wet curls and clit before he begins to press against them, licking up your juices that, by then, are plenty. Eventually, he begins to push into you, beginning to tonguefuck you with nimble and steady movements.";
	say "     As with any other lupine men, Wyatt's tongue has a good reach, and you definitely feel it poking at the insides of your vagina, leaking with moistness as the werewolf savors every bit. The pleasure this sends through your body causes you to squirm slightly, but while you are being held by the wolfman, you cannot run from its source... even if you wanted. He keeps you in position with little effort, as his strength is greater than yours, and makes you endure his surprisingly amazing oral skills for as long as he wants. Wyatt does not even keep the pacing going the same for long, as whenever you feel yourself being driven closer to the edge, he catches on quickly with your body language and takes slower movements to delay it just a little further.";
	WaitLineBreak;
	say "     'Mmh... You taste really good... Hope you're enjoying this as much as I am,' he says amidst a pause as he looks in your eyes once more, then dives back into eating you out. His tongue goes back in and drills through your sex expertly, teasing you in all the good spots, wiggling and twirling non-stop... It just drives you insane, with a bliss you can hardly persist through. In fact, it gets more and more difficult to hold your orgasm, to a point Wyatt is hardly moving his tongue just to keep you on edge. 'Looks like someone's enjoying themselves... Getting close, aren't you?' You nod to him, as you would, in fact, be completely unable to lie about it. 'And here I was just getting started...'";
	say "     His tongue runs over the surrounding area of your womanhood only so that the werewolf can see you squirm and moan in a way akin to desperation, and never forgetting about your sensitive clit. Although, his intention is never to overestimulate you, so every touch is made with utmost caution and gentleness. However, it comes to a point you just have to beg him for it because it is just too difficult to endure all the teasing. Having heard your pleas, he chuckles, and without warning, he pushes his tongue past your lower lips one last time, at the same time moving his hands over your breasts to caress them firmly. You simply feel your tits being fondled so nicely as that slick organ of his travels back and forth into your pussy, the combined stimulation more than enough to set you towards a powerful climax.";
	WaitLineBreak;
	say "     It comes and hits you like a thunder, dizzying you as your body and sex quiver in compulsions of bliss. This powerful wave of pleasure crashes down through your entire self all while Wyatt holds you still and continues to tonguefuck you, all the way until the very end of your climax. After having moaned helplessly, you must catch your breath as your senses begin to slowly return to you at normal levels, now able to think and process your surroundings, a feeling that shows how great of an orgasm that was. Wyatt slowly raises above you with a grin on his muzzle, then leans down to deliver a kiss to your mouth. You can still feel the scent and taste of your own love juices from him.";
	say "     'That was really fun... I don't mind doing it for you more often, all you have to do is ask away. And... I'll make sure you keep coming back for more,' he says, winking at you as he helps you stand. 'See you, gorgeous. I'll be around for when you want a round two, or... whatever number it is by now.'";
	NPCSexAftermath Wyatt receives "OralPussy" from Player;

to say WyattDominantSexFemale:
	say "     Having had sex with the werewolf at least a couple of times already, you wonder if he would be up to doing something more active than the usual, just to shake things up a bit. His eyes widen at your request, half in surprise with a hint of amusement, then replies with a cocky grin. 'So that's what you've been thinking about, huh? You want me to go rough on you? I mean... Fuck, that's hot, but also... Are you sure? I don't wanna hurt you or anything, though I guess if you mean it, then... I'd be happy to oblige...' You reassure him, that is exactly what you want, and this bolsters him with newfound confidence. 'Alright... I see how it is. I suppose we could arrange something...'";
	say "     He eyes you from head to feet, then crosses his arms and looks down at you. 'So you wanna get used like a cum rag, huh...? Slapped around and bred like the bitch you wanna be for me...?' He makes a pause there, staring at you intensely just to see if you back away immediately, but you do not. So, he continues, 'Alright... Though be warned I'll take whatever I want from you first. And when I get to fuck you, it's gonna be doggy-style. I'm gonna be ballsdeep in you, making you my little bitch... You're gonna be like just a sex toy, something for me to use for as long as I want... And in the end, you'll take my load, and I don't fucking care what happens next, you're here to please me. Me only.'";
	WaitLineBreak;
	say "     You cannot hide the fact that a promise for this sort of treatment really arouses you, as you find yourself imagining it already. The werewolf grins at your brief silence, quickly getting the message, but intends to get a direct response from you... And not without some additional teasing. 'Surely you'd like that, right? I mean, of course you wanna be owned by an alpha male. You get to feel my dick inside you after you've gotten it all hard and wet... then to carry my pups in your womb... Which you've been wanting really bad, I'm sure. We both win, yeah?' He goes ahead and also drops his loincloth, not subtly so at all, and you catch a very clear glimpse of his cock protruding through its surrounding furred sheath, slowly hardening before your eyes.";
	say "     Naturally, and seeing such a handsome sexy werewolf growing a boner right in front of you, the answer you give is an agreeable nod. Wyatt smiles and gestures you to approach him. 'Come here, then... You've got a job to do,' he orders, and you start walking towards him. As the wolfman grabs his dick with one hand, he uses the other to pull your head down and directly towards it. 'Open up and start sucking it for me, will ya? We'll get it in your pussy later...' Before you can even think about a reply, you find your mouth meeting the tip of the lupine cock as the latter is quickly pushed past your lips. It looks like you will have to blow him before you can have him take you from behind.";
	WaitLineBreak;
	say "     But it does not seem to be that much of a hard task, as Wyatt takes absolute control. He grabs your head and keeps thrusting into the back of your mouth, giving you time to adjust to his size and savor the pleasant taste of his cock, all while his juices start coming in. You feel that thick precum leaving his cock's slit and hitting your taste buds with a sweet tingle, but you are not given much time to savor the taste as he pulls your head back and forth, causing his cock to slide in and out of your mouth before making it towards your throat. 'Open up wide, my [guygal]! Gotta get all this meat inside... all the way in...' This definitely cuts your breath, since you are forced to swallow the werewolf's dong and have to hold it in as it throbs angrily.";
	say "     He thrusts into your face relentlessly as you place your hands over his furred thighs in a reflex of resistance, pushing slightly against him. He does eventually give you a brief moment to catch your breath, pulling his cock out of your mouth and holding your head by your jaw against his pelvis. 'You're doing pretty well...! Look at this dick, all perked up and throbbing... You did a good job there!' He gives his red meat some rubbing as he looks down at you, keeping your skull in place. Then, you find yourself being brought under his furred sack, each of his nuts almost about the size of tennis balls, and your whole face is buried under all that warm softness as they bounce on your face.";
	WaitLineBreak;
	say "     'Gonna give them a lick, right? Don't think I've placed you there to rest...' he tells you, and taking this as an order, you stick your tongue out and proceed to do as he says. 'Ooh, that's a good [boygirl]... Don't spare an inch, get them both, all over...' Following his directions, you lead your tongue through the entire curvature of his testicles, causing the werewolf to let out a growl of pleasure as he steadily jerks his cock. You make sure you get at least one of them in your mouth and tug on it, then repeating the process with the other, and never without wiggling your tongue all over the both of those orbs. They definitely feel full and heavy against your face, even more so when you press against them, a move which greatly pleases the wolfman.";
	say "     When not acting out of your own volution, however, Wyatt takes the lead and gets what he wants from you, and that really means he holds your head to fit as much as he can from his sack into your mouth. This time, he looks into your eyes with a grin and gives your cheek a couple of light slaps, cheerfully commending you, 'There you go, that's how you do it!' You carry on sating his whims, or rather, licking his balls, since the only other thing you can do is simply observe that large cock being stroked for the next few moments. 'Fuck... Seeing you down there actually turns me on... I'd be glad to make you my bitch anytime if you're gonna keep doing this good...'";
	WaitLineBreak;
	say "     With that said, he pulls his balls from your mouth and shoves his cock back in, thrusting into your throat. This time, he is even rougher, holding your skull with both his hands and fucking your face like he was already ballsdeep in your ass. 'Swallow that cock now, you'll be fine if you do...' You even feel his sack bouncing back and forth against your chin, the pounding power so strong you begin to drop some tears as you struggle to keep up. You do as he says, using your throat to swallow that cock and avoid gagging on it, feeling it bulge in your neck as he continues to facefuck you. Eventually, the werewolf tires of this and pulls out, but not without leaving you gasping for air.";
	say "     'Well fuck... That got me excited! Think now you're ready to get bred... I bet that's what you're really wanting right now, huh?' Upon receiving his command, you turn around and offer him your rear, butt up as you drop on all fours. You recalled that he wanted to take you doggy style, so you get in position. 'Love when my toys remember their place...' he comments, pleased to see you ready for him to get behind you and line up his dick with your womanhood. Then, he begins to press against it with only your juices serving as lubricant, and pushes slowly... 'Hope you're ready to take it, babe... I won't pull out until you're all filled up. Not even if you beg me to stop...'";
	WaitLineBreak;
	say "     You are sure he will follow through with his word, so you brace for the upcoming insertion, which is already happening. His girthy dong pushes your wet curls outwards bit by bit as he buries more of it inside you, [if scalevalue of player < 4]grunting at the tightness of your pussy's insides around his cock[else]enjoying your pussy's good reception of his cock[end if]. 'Fuuck yeah...! You take me so well, babe... Can't wait to fill you up with my pups...' By now, his hands are grabbing your hips and he is pulling you to him, going deeper and deeper into you, until you begin to feel the swollen knot against your stretched labia. 'You could have this everyday... I wouldn't mind making you my permanent bitch... Fuck, I'd love it... Put you on a leash and make you mine...'";
	say "     Then, you feel Wyatt pulling out... only to thrust back in, and will only repeat these movements for the rest of your encounter, at first in a steady manner, then slowly rising the rhythm. His grasp on you remains tight and firm, not letting you back off nor move away any inch, keeping you in place to take that dick over and over... He goes at it even faster, hitting your cunt like a battering ram, pounding you with so much force that you think you might need several days to recover afterwards. This moment is all his, his pleasure placed atop yours, although you cannot help but enjoy the pounding, your vaginal walls all being thoroughly stimulated by the werewolf's significant girth, enhancing your experience even further. You are thoroughly fucked for so long that you lose track of time, all the way until Wyatt begins show signs of near stamina depletion.";
	WaitLineBreak;
	say "     You hear him pant as his movements get more sluggish, but a sudden push startles you as his knot gets inside you. He then leans his body over yours, pushing you towards the ground and placing his arm around your collarbones and chest, one hand over your tits and fondling them, although embracing you so tight you could think he was just about to choke you. Then, the werewolf howls in pleasure as he orgasms inside you, depositing a great amount of cum into your womb, every single drop until the last. This triggers your climax as well, as you are struck by a massive wave of pleasure that causes your entire self to quiver and squirm in complete bliss. This goes on for a good while until Wyatt drops down on top of you, breathing heavily for the first few moments.";
	say "     'Fuck, babe... That was fucking hot... I could get used to this, you know...' You then feel him lick your neck affectionately as he patiently waits for his knot to deflate, resting atop you while you two snuggle on the ground.";
	WaitLineBreak;
	say "     It takes a while, but eventually, he pulls out of you and stands up, helping you in the process. 'Hope we can do this again. It's kinda hot thinking of forcing you down on me and making you take my cock and load... Fuck, I might enjoy this more than I though I would... Uh, better find a safeword! What do you think of periwinkle? Or... Mallet! Ah, well, just think of some, I'm sure it could come in handy, yeah?'";
	NPCSexAftermath Player receives "OralCock" from Wyatt;
	NPCSexAftermath Player receives "PussyFuck" from Wyatt;

to say WyattDominantSexMale:
	say "     Having had sex with the werewolf at least a couple of times already, you wonder if he would be up to doing something more active than the usual, to shake things up a bit. Even if your appearance is not what he most likes, you recall him claiming that a hole is still a hole, and so, taking those words into consideration, you proceed to ask Wyatt if he would like to fuck your ass. His eyes widen at your request, half in surprise with a hint of amusement, then replies with a cocky grin. 'So that's what you've been thinking about, huh? Is that your way to say you'd like me to treat you like a girl? But well, knowing you by now... Maybe you're keen on keeping that masculine appearance for a while...'";
	say "     He eyes you from head to feet, then crosses his arms and looks down at you. 'As I've said before, I prefer girls. But as I've also said before, a hole's just a hole. As long as I can shove my dick in, I don't care. So, unless you wanna get used like a cum rag and take my load once I'm finished, I'd suggest you look for someone else.' He makes a pause there, staring at you intensely just to see if you back away immediately, but you do not, just yet. So, he continues, 'And I'll take whatever I want from you first. If I get to fuck you, it's doggy-style only. When I'm there, it's only your ass I care about. And I won't be gentle either, though you probably like it rough anyway... To sum it up, you'll be my little bitch. Just a sex toy, even, something for me to use for as long as I want...' Following such an extensive list of conditions, you are left wondering if you would like to see this through, after all.";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - You are totally fine with just being used by him.";
	say "     ([link]N[as]n[end link]) - Maybe you are not so keen on these conditions.";
	if Player consents:
		say "     You cannot hide the fact that a promise for this sort of treatment actually arouses you, as you find yourself imagining it already. The werewolf grins at your brief silence, quickly getting the message, but intends to get a direct response from you... And not without some additional teasing. 'Surely you'd like that, right? I mean, it's not too different from what we've done. In fact, it just gets better... You get to feel my dick in your ass after you've gotten it all hard and wet... Which you've been wanting really bad, I'm sure. We both win, yeah?' He goes ahead and also drops his loincloth, not subtly so at all, and you catch a very clear glimpse of his cock protruding through its surrounding furred sheath, slowly hardening before your eyes.";
		say "     Naturally, and seeing such a handsome sexy werewolf growing a boner right in front of you, the answer you give is an agreeable nod. Wyatt smiles and gestures you to approach him. 'Come here, then... You've got a job to do,' he orders, and you start walking towards him. As the wolfman grabs his dick with one hand, he uses the other to pull your head down and directly towards it. 'Open up and start sucking it for me, will ya? We'll get it in your ass later...' Before you can even think about a reply, you find your mouth meeting the tip of the lupine cock as the latter is quickly pushed past your lips. It looks like you will have to blow him before you can have him take you from behind.";
		WaitLineBreak;
		say "     But it does not seem to be that much of a hard task, as Wyatt takes absolute control. He grabs your head and keeps thrusting into the back of your mouth, giving you time to adjust to his size and savor the pleasant taste of his cock, all while his juices start coming in. You feel that thick precum leaving his cock's slit and hitting your taste buds with a sweet tingle, but you are not given much time to savor the taste as he pulls your head back and forth, causing his cock to slide in and out of your mouth before making it towards your throat. 'Open up wide, my [guygal]! Gotta get all this meat inside... all the way in...' This definitely cuts your breath, since you are forced to swallow the werewolf's dong and have to hold it in as it throbs angrily.";
		say "     He thrusts into your face relentlessly as you place your hands over his furred thighs in a reflex of resistance, pushing slightly against him. He does eventually give you a brief moment to catch your breath, pulling his cock out of your mouth and holding your head by your jaw against his pelvis. 'You're doing pretty well...! Look at this dick, all perked up and throbbing... You did a good job there!' He gives his red meat some rubbing as he looks down at you, keeping your skull in place. Then, you find yourself being brought under his furred sack, each of his nuts almost about the size of tennis balls, and your whole face is buried under all that warm softness as they bounce on your face.";
		WaitLineBreak;
		say "     'Gonna give them a lick, right? Don't think I've placed you there to rest...' he tells you, and taking this as an order, you stick your tongue out and proceed to do as he says. 'Ooh, that's a good [boygirl]... Don't spare an inch, get them both, all over...' Following his directions, you lead your tongue through the entire curvature of his testicles, causing the werewolf to let out a growl of pleasure as he steadily jerks his cock. You make sure you get at least one of them in your mouth and tug on it, then repeating the process with the other, and never without wiggling your tongue all over the both of those orbs. They definitely feel full and heavy against your face, even more so when you press against them, a move which greatly pleases the wolfman.";
		say "     When not acting out of your own volution, however, Wyatt takes the lead and gets what he wants from you, and that really means he holds your head to fit as much as he can from his sack into your mouth. This time, he looks into your eyes with a grin and gives your cheek a couple of light slaps, cheerfully commending you, 'There you go, that's how you do it!' You carry on sating his whims, or rather, licking his balls, since the only other thing you can do is simply observe that large cock being stroked for the next few moments. 'Fuck... Seeing you down there actually turns me on... I'd be glad to make you my bitch anytime if you're gonna keep doing this good...'";
		WaitLineBreak;
		say "     With that said, he pulls his balls from your mouth and shoves his cock back in, thrusting into your throat. This time, he is even rougher, holding your skull with both his hands and fucking your face like he was already ballsdeep in your ass. 'Swallow that cock now, you'll be fine if you do...' You even feel his sack bouncing back and forth against your chin, the pounding power so strong you begin to drop some tears as you struggle to keep up. You do as he says, using your throat to swallow that cock and avoid gagging on it, feeling it bulge in your neck as he continues to facefuck you. Eventually, the werewolf tires of this and pulls out, but not without leaving you gasping for air.";
		say "     'Well fuck... That got me excited! Let's move on to your ass... I bet that's what you're really wanting right now, huh?' Upon receiving his command, you turn around and offer him your rear, ass up as you drop on all fours. You recalled that he wanted to take you doggy style, so you get in position. 'Love when my toys remember their place...' he comments, pleased to see you ready for him to get behind you and line up his dick with your anus. Then, he begins to press against it with only a generous drop of his own saliva, having coated the tip and shaft of his meat beforehand, and pushes slowly... 'Hope you're ready to take it, my [guygal]... I won't pull out until you're all filled up. Not even if you beg me to stop...'";
		WaitLineBreak;
		say "     You think he will actually follow through with his word, so you brace for the upcoming insertion, which is already happening. His girthy dong pushes your anal rings outwards bit by bit as he buries more of it inside you, [if scalevalue of player < 4]grunting at the tightness of your hole's insides around his cock[else]enjoying your hole's good reception of his cock[end if]. 'Ooh, you feel good... Heh, should've done this sooner, this is a much better way of using dudes. Fuuck yeah...!' By now, his hands are grabbing your hips and he is pulling you to him, going deeper and deeper into you, until you begin to feel the swollen knot against your stretched pucker. 'You could have this everyday if you wanted, so easily... Just saying...'";
		say "     Then, you feel Wyatt pulling out... only to thrust back in, and will only repeat these movements for the rest of your encounter, at first in a steady manner, then slowly rising the rhythm. His grasp on you remains tight and firm, not letting you back off nor move away any inch, keeping you in place to take that dick over and over... He goes at it even faster, hitting your ass like a battering ram, pounding you with so much force that you think your hole might need several days to recover afterwards. This moment is all his, his pleasure placed atop yours, although you cannot help but enjoy the pounding your prostate is taking, enhancing your experience even further. You are thoroughly assfucked for so long that you lose track of time, all the way until Wyatt begins show signs of near stamina depletion.";
		WaitLineBreak;
		say "     You hear him pant as his movements get more sluggish, but a sudden push startles you as his knot gets inside you. He then leans his body over yours, pushing you towards the ground and placing his arm around your collarbones and chest, embracing you so tight you could think he was just about to choke you. Then, the werewolf howls in pleasure as he orgasms inside you, depositing a great amount of cum into your bowels, every single drop until the last. It goes on for almost about a minute until he drops down on top of you, breathing heavily for the first few moments. 'Yeah, you did good... I might use you again if I find myself in the mood... I can always use a willing cumdump.'";
		say "     It takes a while for his knot to deflate, but eventually, he pulls out of you and stands up, leaving you lying on the ground with his cum leaking out of your butt. 'See you around. Hope you can move your legs in a bit,' he says, chuckling mockingly.";
		NPCSexAftermath Player receives "OralCock" from Wyatt;
		NPCSexAftermath Player receives "AssFuck" from Wyatt;
	else:
		say "     After thinking twice, maybe you do not want it to be done like this. Wyatt has his preferences, but so do you, and if things do not work out, then it is probably for the best to keep it that way. You are honest with him and tell him that this is not how you are feeling it and have decided to call it off. He shrugs, crossing his arms. 'I see, I see... Well, if you want something more passionate, you'd have to look more... you know, female. It's just how it works for me, it wouldn't be fair to tell you otherwise. We'd be fooling each other for no reason... But I appreciate the fact you find me that attractive. Maybe you could watch me taking someone the way you wanted me to take you...'";
		say "     Always the tease, Wyatt gives you a wink before the conversation ends. Maybe some things are not meant to be...? On another hand, if you were to be a female, maybe other options would open up. Surely there must be ways to accomplish this, even if temporarily, if you [italic type]really[roman type] wanted to.";

Section 2 - Wyatt Special scenes

Table of GameEventIDs (continued)
Object	Name
WyattRomance	"WyattRomance"

WyattRomance is a situation.
ResolveFunction of WyattRomance is "". Sarea of WyattRomance is "Nowhere".

[RESOLUTION STAGES]
[0: Romance not yet initiated]
[1: Romance Route initiated]
[At night, when passing by the common room, player may feel curious to explore the bedrooms when hearing some noise.]
[Player must have spoken to Wyatt and have had sex with him at least once.]
[Player must NOT have 'Male Preferred' feat, as it would lead to inconsistencies with the scenes. This would also not make sense with Wyatt's romance path.]
[While the scenes are different for Males and Females, they merge in the end as the player will have to end the scene as a Female.]

[In order to continue the romance, Player must be female and have a feminine appearance. On a certain point forward, going to Wyatt while looking male will prompt him to 'help' the Player transform into a Husky Bitch.]

instead of going to Lair Of The Lupines Common Room while (Resolution of WyattRomance is 0 and PlayerFucked of Wyatt is true and daytimer is night and "Male Preferred" is not listed in Feats of player):
	say "     Upon walking into the Common Room within the lair of the werewolves, at this time of the day, you occasionally hear some noises, presumably of sexual nature, coming from the bedrooms. It is always a curious event that leaves you wondering what could be happening on the other side of the stone doors, but until now, you never really found the will to investigate the matter. Though, this time, you feel as if there is an attempt to keep silent, as it is almost whispering moans you hear. They, unfortunately for their producer, echo through the hall and are easily audible by someone who happens to be fairly close, like you. Should you choose to inspect the source of the noise, it is best that you proceed with caution as to not alert anyone of your presence, lest you intend on getting caught and present yourself to unforeseeable consequences.";
	Linebreak;
	say "     [bold type]Shall you let your curiosity take the reins[roman type]? You should find no difficulty in keeping quiet, for now.";
	say "     [link](1)[as]1[end link] - Go ahead and investigate.";
	say "     [link](2)[as]2[end link] - Let the wolves have their fun in peace.";
	say "     [link](3)[as]3[end link] - Leave and ignore strange noises coming from here, from this point onwards.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to give an excuse, [link]2[end link] to tell him that you've been curious about him or [link]3[end link] to blatantly flirt with the beast that could surely handle someone your size.";
	if calcnumber is 1:
		LineBreak;
		say "     What issue is there in being a little curious? It is not like catching one of these brutes in sexual activities is a rare thing, anyway. As they seem so open about it, you are pretty sure that even if you were caught looking, you would simply be greeted and even, perhaps, invited to join. With certainty on your side, you proceed forward and into the hall leading to all the different bedrooms, following the source of the moans. It is when you get closer that your doubts begin to arise, as you think you just heard something more feminine-sounding. As you have not encountered any female werewolf brutes, you think that maybe it could be one of the slaves that have not been turned yet, but such a thing is very rare as most slaves are males, still. Definitely curious, you attempt to know more.";
		say "     As you step closer to the bedroom in question, you can conclude there is definitely a female inside, or at least someone with a high pitched voice associated with the female sex, if you must not assume their gender by the sound of their vocals alone. In fact, that would be wise in a world like this where transformative infections seldom discriminate whichever bodies they touch. Upon closer inspection, you realize the door is closed, but not locked. Judging by certain furniture sounds from inside, creaking rhythmically, with the occasional grunt and moan coming out, you are certain these individuals are having sex.";
		WaitLinebreak;
		say "     You suppose you could [bold type]try take a peek inside quietly, but that is a much riskier action[roman type]. It is very likely that you will be caught, but if you fear what may come from that, you [bold type]may simply choose to leave[roman type] and not bother them at all.";
		say "     ([link]Y[as]y[end link]) - Quietly push the door open and satisfy your curiosity.";
		say "     ([link]N[as]n[end link]) - You consider this an inappropriate breach of privacy and will just take your leave.";
		if Player consents:
			LineBreak;
			say "     Ready to accept any consequences that may come from your decision, you slowly push the heavy stone door open just enough so you can observe what is happening inside. So far, you are fine, but what your eyes lay upon is definitely a quaint sight. You have a clear shot at the bulk of a dark grey werewolf, which you easily recognize as Wyatt, fucking who seems to be a female husky, significantly smaller than him, as he buries his whole cock inside her with each thrust. With a more careful look, you realize that thick shaft of his is covered with a condom, but it is quite hard to see as you doubt there would be any size of condoms big enough to fully coat that entire thing.";
			say "     When you give it some thought, you remember the time when you conversed with Wyatt about his sexuality and preferences. It all then makes sense, as if he poured any of his personal fluids inside the husky, that would likely transform her due to their infectious nature. The werewolf prefers females, and transforming her into a werewolf brute like him would defeat the purpose of having picked a female slave. But your thoughts do not remain focused for much longer, as the sight of his vicious and passionate fucking, embracing the husky with his powerful furred arms, almost making her disappear out of sight due to his enormous physique in comparison, is something that inevitably draws your attention.";
			WaitLineBreak;
			say "     The thrusts are relentless, and while the husky's pussy looks almost impossibly stretched around the werewolf's girty shaft, she seems to be in pure bliss as the brute takes her with intense pounding. He takes hold of her affectionately, in a way you have never seen a werewolf brute do, and looks so overtook in his lust, his focus so great, that he does not even become aware of your presence. You remain here, observing the intercourse between the brute and the feminine husky, the way Wyatt embraces and kisses her while he is ballsdeep inside her with such vigor, enjoying every second of it as his partner of choice quivers and squirms in total pleasure.";
			LineBreak;
			say "     With all this happening right before your eyes, [bold type]what comes to your mind?[roman type][line break]";
			say "     ([link]Y[as]y[end link]) - This makes you horny and you feel an urge to touch yourself.";
			say "     ([link]N[as]n[end link]) - Maybe you should just quietly observe and be ready to leave.";
			if Player consents:
				LineBreak;
				say "[WyattSpecialVoyeur]";
			else:
				LineBreak;
				say "     The thrusting does not ever stop, not until it eventually leads the wolfman to push his cock all the way into her, knot and everything, once he is about to reach his climax. Then, he does not hold back, grunting and moaning as each and every spurt of cum is shot. The louder noises startle you as Wyatt turns his head up in complete ecstasy, urging you to hide behind the door and out of view. You stand there until his orgasm eventually ends, and with this memory in your mind, you figure it is time to leave him be before he notices you. One last glance shows the werewolf quiety cuddling with the female husky, caressing her chin affectionately as they embrace each other, Wyatt remaining knotted to her for, most likely, the next few minutes.";
		else:
			LineBreak;
			say "     Perhaps it is for the best to leave them be. This is their home, after all.";
	else if calcnumber is 2:
		say "     Perhaps it is for the best to leave them be. This is their home, after all.";
	else if calcnumber is 3:
		say "     Why should you bother the wolves in their own home ever? You decided that you have no interest in things like these and shall avoid them if similar situations arise.";

to say WyattSpecialVoyeur:
	say "     It is true that you always had a thing for this athletic werewolf. You cannot tell if it is his looks alone or the chill and cool guy attitude, but he just turns you on. Seeing him in pure bliss and lust as he fucks someone he is truly into does things to you, like blood rushing to your erogenous areas and tempting you to bring yourself some sexual pleasure. Before you know it, you have your hands over your [if player is male]cock, which was throbbing hard by now[else if player is female]pussy, which was seriously moistening up[else]sensitive spots[end if], as lust overtakes you and clouds your better judgement. Perhaps the risk of him seeing you is also contributing to this... Maybe you would not mind if he caught you.";
	say "     As you continue to observe the neverending thrusts, you are eventually rewarded with the sight of the wolfman pushing his cock all the way into the husky's pussy, knot and everything, as he is about to reach his climax. Then, he does not hold back, grunting and moaning as each and every spurt of cum is shot. The louder noises only makes it all seem more exciting as your gaze remains locked in the scene, watching Wyatt unload inside the husky as she, too, quivers in bliss. Once his orgasm subdues, he lowers himself upon his partner and embraces her to cuddle, as he must wait for his knot to deflate. Even this is a hot sight, as you get a good shot at every part of the brute, his ass and balls raised up as he lies down on top of her.";
	say "     It almost looks like he lined himself up like that on purpose...";
	WaitLineBreak;
	say "     'Hey you... Enjoying the show?' says the werewolf, without even turning to you. This unsettles you, as you have no idea how he knew you were there. Maybe you were a little too loud? Though, he does not seem angry at all. 'I knew you were watching since the start. I got a mirror here pointing towards the door.' Following his explanation, you do try to look for this mirror, as it has naturally escaped your eyes, and you confirm what he just said. There is a small mirror on top of the bedside table turned towards you, which would allow Wyatt to look over the entrance easily. At this fact, you just give a nervous smile. 'It's fine, just because it's you. I'd have told anyone else to piss off.'";
	say "     By now, the werewolf is able to pull his cock away from the husky, and he begins to do so... 'Alright lass, let's take you back to the- Oh shit...' You then see a whole stream of cum following the tip of his half-hard dick and the husky's pussy leaking a significant amount of his cum. It would appear that the condom could not hold the force of his orgasm and got torned. 'Close the door, will you? I've got to take care of something here real quick...' He then bends under the bed to fetch a box, opens it and grabs a bottle with a white liquid inside, looking much like cum. He then brings the bottle over to the husky, whose fur seems to be already changing its tone. At first, you are confused, but as she drinks its contents, you see her fur returning to its former color, giving you an idea of its purpose.";
	WaitLineBreak;
	say "     'There you go... good girl,' he praises her, giving her a kiss as she finishes up the drink. Wyatt then goes ahead and begins explaining himself as he sits down at the edge of the bed, letting the husky rest for a few moments. 'That was just some husky cum, which shifts its drinker's appearance towards a female husky... in most cases. I keep a supply of transformatives to ensure I don't end up turning slaves into werewolf brutes. This girl here's my favorite, and keeping her as an exclusive slave was the only favor I could get from the alpha... I try to keep her looking this way, but as you can see, it's pretty hard. Accidents happen... More often than not,' Wyatt explains as he looks down at the torn condom lying on the floor, in a messy puddle of his own sex fluids.";
	say "     'I guess I told you about this side of me before, right? Thought I haven't told anyone I sneak female slaves into my bedroom and try to not get them turned.' But husky cum cannot come from a female, so you ask him where he managed to get that. 'Well, as you know, it's pretty hard to get stuff past Jett... so, one day, I captured a male husky and milked him off as much as I could, enough to acquire a generous amount. He must be a werewolf by now, though, so if I need more, I either gotta go on a capturing spree or wait until someone gets one and doesn't use him up until he's all changed up.' While you both talk, the werewolf bends over the bed again to fetch his box, then puts it between you and him so you both can have a look at its contents once it is open.";
	WaitLineBreak;
	say "     'Though, I don't like taking chances, so I also harvest a second item to do the job.' Wyatt then slides his hand over the top of the box and takes it off, revealing what is inside. You see the bottle of husky cum he mentioned surrounded by a pile of fur. 'Her own fur also works, though I'm led to believe cum is just a stronger transformative. If you're wondering how I know all of this, well... We've got a really smart guy in the lair that taught me all this, though it's best I don't call his name, maybe.' You then confirm that Wyatt also collects some fur from the female husky in order to secure her appearance and that he definitely has enough knowledge on how to manipulate the nanite infection, even if it does not come directly from him.";
	say "     'Hey, I know it's a lot to ask, but... Care to keep this between you and me? I know I'm probably doing something that'll piss off the others, so I'd like to avoid having to try to explain myself and risking getting it all taken away. I'd be really happy if you kept it a secret.' The athletic werewolf then slides one of his thick paw-like hands over your jaw, caressing it affectionately as he looks directly in your eyes.";
	WaitLineBreak;
	if player is female and breast size of player > 0:
		WyattSpecialVoyeurFemaleRoute;
	else:
		WyattSpecialVoyeurMaleRoute;

to WyattSpecialVoyeurFemaleRoute:
	say "     'Though, I... wouldn't mind to just keep you, either. You're beautiful...' he says, as you notice his cock slowly growing between his furred legs. 'If I had someone like you to make sweet love with everyday, I wouldn't need to do any of this. Plus, I'd keep you safe... No need to worry about scavenging for supplies out there, or evading dangerous creatures. And you'd get a big, strong, hung, and moderately smart, werewolf brute as a boyfriend. But I'd truly be the lucky one, here...' You see Wyatt getting closer and closer to you as he speaks, having pushed the box out of the way, to a point his muzzle is mere inches away from your face. He then stops moving, but you feel the air around you becoming... different. Hotter, if you had to describe it, as the werewolf's breathing gets deeper and his dick even harder.";
	say "     'I'd love to fuck you, [mister]... And don't you worry about our guest, she's fast asleep.' He means the husky girl he fucked before, who really seems deep in her slumber to notice anything happening around her. But, by now, Wyatt is slowly embracing you, his muscled big arms sliding across yours as he brings himself even closer to you. His intentions are clear, but [bold type]you still have not had a chance to express your will[roman type]...";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - You really want him to fuck you.";
	say "     ([link]N[as]n[end link]) - You [italic type]do not really[roman type] want him to fuck you, but...";
	if Player consents:
		LineBreak;
		say "     There is nothing else you would want more than to have this big wolf on top of you, fucking your brains out as passionately as he did to the female husky before you. With that said, you let him approach eagerly as his body meets yours and you begin to feel his weight on you. 'I see that you want it too, right? Can't wait to make you feel so good...' he almost whispers before he starts kissing you, his long tongue soon meeting yours as you give him entry, taken by your lusts. Soon, his mighty bulk is pressing down against you as he takes you in his total embrace, rubbing his large lupine cock between your legs, slowly driving it towards your sex, which is all moistened up by now.";
	else:
		LineBreak;
		say "     ... There is something you cannot quite tell in the way your body responds to his advances, as if you subconsciously wanted this to happen. His beastlike scent feels stronger, to an almost overbearing way, as his body meets yours and you begin to feel his weight on you. 'Let me take care of you... I'll make you feel really good...' he almost whispers before he starts kissing you, his long tongue soon meeting yours as you feel nearly compelled to give him entry. Soon, his mighty bulk is pressing down against you as he takes you in his total embrace, rubbing his large lupine cock between your legs, slowly driving it towards your sex, which is compulsively moistening up.";
	say "     You feel his hands over your breasts, squeezing them gently and rubbing at your, as his tongue passionately invades your mouth with the dedication of a true lover. It feels like he truly appreciates you and prioritizes your pleasure over his, though you continue to feel his throbbing shaft pressing against your wet curls, warmth pulsating from its rock solid girth. Unable to resist, you let him push you atop the bed, not too far from the resting female husky next to you two. His large bulk manages to pin you down underneath him with ease, and as the werewolf grows even more excited, he finally begins to push his cock into you, slowly and gently. This scent you have been catching from him leaves you pleasantly relaxed, your womanhood effectively lubricated, and allows him to easily enter you as he releases a low growl of joy.";
	WaitLineBreak;
	say "     Despite his previous intercourse with the female husky, Wyatt's erection is so genuinely hard that it could have fooled you into believing he has not had any sex for a while. The brute, with his large girth, pushes your curls open in a delightful stretch, inch by inch burying more of his length inside you. It is evident that the lean werewolf is extremely turned on by you, putting on all the effort he can muster to provide you as much pleasure as possible. He keeps you trapped in his arms, his sexual desire taking the reins, further emphasized by each throb his manhood gives every time he licks your face. No further words are shared between you two, only his thrusts against your sex as he feels your pussy wrapped around more and more of his cock.";
	say "     Every moment he is inside you is passionate and fiery, though his gentle manners drop as your pussy grows accustomed to the intrusion. With every thrust comes a harder and deeper one, progressively picking up the pace as the werewolf becomes more assertive in his moves. You feel that large cock of his in its hardest state, pulsating inside you, going back and forth with persistence and force, a vigor Wyatt shows during the entire time. With deep thrusts he fills you with his girth, pushing as much as he can of his member inside you, never letting go of you. His heartbeat joins yours as his hulking furred body tightens yours in his grasp, fucking you even harder, even faster...";
	WaitLineBreak;
	say "     You can tell the male is so aroused that his entire focus shifts towards the insides of your womanhood, quivering around his sizable dick as he continues to fuck you. The lust overtaking you, clouding your every thought and judgement, only drives you towards your orgasm as the werewolf carries on, his manhood throbbing excitedly at the sight of your climax. He looks at you with the happiest smile as you only squirm and quiver in utter bliss, still feeling his hard meat inside you, and you absolutely cannot help it. Your erogenous regions feel so delightfully sensitive that everytime he rubs your breasts or his cock gives out a throb and moves a mere inch, you feel overwhelmed with pleasure.";
	say "     Seeing you so lost in it greatly arouses the werewolf, who then is startled by several consecutive throbbings that his cock begins to give. 'Oh, shit, I forgot... Fuck...!' He hastily pulls his cock out of you and, within nearly a fraction of seconds, he blows his load with so much force it rains all over your body in several spurts. You think some of it might have flown over your head and hit the wall, and a glance would confirm your suspicions. Wyatt cums so much and so hard that you are given a full body coating of the stuff, his orgasm lasting close to a full minute. He then only remains there, panting, his cock still hard and leaking its last drops, on his knees above you and atop the bed.";
	WaitLineBreak;
	say "     'I... Fuck, I don't know what got into me... Uh... hold on a sec.' Wyatt then carefully stands up out of the bed and goes to grab a towel, which he offers to you and even helps you clean yourself. 'That was a big load... And I just had came! You're... amazing!' His cheerful expression causes you to smile as you exchange a few more words before returning to the initial subject that led you both to this. 'So... Yeah, uh... I mean... You... We... We could be sort of... lovers, right? Or is that something you're not interested in? I-if not, that's totally fine, I... don't mind keeping it casual at all! Though I... Yeah, I'd like if you thought about that, so you don't have to give me an answer right now.'";
	say "     It feels like Wyatt is asking you to be his lover, though he does not want to pressure you on that matter. You tell him that is fine and that you shall give him an answer later, once you give it some thought. It is a rather odd request, though, as you have not known each other for that long, but the werewolf must be feeling quite lonely. With some words of comfort, you manage to maintain that smile on his face as you finish cleaning yourself from the mess he has made, getting ready to leave. 'You're leaving? Yeah, I should bring the husky girl back to the pit, she can't just stay here... But hey, I really enjoyed this. I hope we can... repeat it.'";
	WaitLineBreak;
	say "     You cannot deny that a part of your mind is telling you that you really want to repeat this, as the unexplainable desire that struck you before rises again at the mere thought of it. There was something odd about his scent when he was fucking you, almost addictive in its nature... But you must shake these thoughts away as you move to leave, saying goodbye to Wyatt.";
	NPCSexAftermath Player receives "PussyFuck" from Wyatt;
	now Resolution of WyattRomance is 1;

to WyattSpecialVoyeurMaleRoute:
	say "     'Though... You're also... different. You're not really bound to these walls and, despite the state of things out there, you can still hold some thoughts... Unlike most slaves we have. I don't know why, but... I do feel unexplainably attracted to you, even though you don't look like my type. But... we could change that too... That is, if you'd allow me. I've got plenty of materials to make you the perfect female... All you have to do is to let me take care of you.' You see Wyatt getting closer and closer to you as he speaks, with his box in reach, to a point his muzzle is mere inches away from your face. He then stops moving, but you feel the air around you becoming... different. Hotter, if you had to describe it, as the werewolf's breathing gets deeper and his cock begins to rise.";
	say "     'It's okay if you don't want it, though. But you'd look so hot as a girly husky yourself... Makes me hard just picturing you like that... Oh, and don't worry about our guest, she's fast asleep.' He means the husky girl he fucked before, who really seems deep in her slumber to notice anything happening around her. But, by now, Wyatt is slowly embracing you, his muscled big arms sliding across yours as he brings himself even closer to you. His intentions are clear, but [bold type]you still have not had a chance to express your will[roman type]...";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - You just cannot resist his advances... [bold type](MtF Warning)[roman type][line break]";
	say "     ([link]N[as]n[end link]) - No, this is going too far... you must try hard to resist his charms!";
	if Player consents:
		say "     ... There is something you cannot quite tell in the way your body responds to his advances, as if you subconsciously wanted this to happen. His beastlike scent feels stronger, to an almost overbearing way, as his body meets yours and you begin to feel his weight on you. 'You're going to look beautiful, trust me. And you'll enjoy it...' he almost whispers before he starts kissing you, his long tongue soon meeting yours as you feel nearly compelled to give him entry. Soon, his mighty bulk is pressing down against you as he takes you in his total embrace, rubbing his large lupine cock between your legs, slowly driving it deeper in between them as you feel your butthole, as if per some inevitable fact, yearning for it.";
		say "     'I know what the likes of you really enjoy, so I suppose you can have the rest of that bottle... How's that?' With a grin, he resumes pushing you atop the bed, pinning you down under him with his hulking body, giving you no room to escape his grasp, and... you really cannot even muster the will to attempt such a thing, as the sight of such a masculine werewolf brute on top of you makes your arousal spike uncontrollably. The scent emanating from him is overbearing, a masculine beastlike fragrance that clouds your mind to a point you can only think about satisfying him. It only gets worse - or better - as he jerks himself off in anticipation of what he is about to do with you.";
		WaitLineBreak;
		if player is male:
			say "     Your [cock of player] cock only throbs as hard as it can be right before the werewolf, to which he looks at with a smile. 'Would you look at that... Seems like you're enjoying the view.' Then, as unlikely as it could have seem from what you know of him, Wyatt also gives you a hand and strokes your dick for a while, his large paw-like hand rubbing all over that sensitive cockhead of yours, but so slowly that you definitely feel you are not getting enough stimulation. Your body beckons you to thrust into his hand, yet you are held tight between his strong legs, unable to move. 'So eager to become a girl for me, aren't you? Then we should get started on that...'";
		say "     As he seems to be done teasing you, the werewolf finally grabs the bottle of husky cum he gave to the dog girl, which is still at least three quarters full, and opens it, with the evident intent of making you drink its contents. The brute leans over on top of you, with more of his body keeping you pinned down, holds your head up and brings the bottle to your lips. Amidst all this, you can feel his throbbing shaft against your midriff, its warmth obviously clashing against your average body temperature. 'There's still a lot left in it. I'd say... you can have it all.' As he finishes speaking, a grin forms across his muzzle as he pours the husky cum into your mouth and looks in your eyes with evident lust. Your mind cannot even consider the possibility of refusing the brute's will, as your body remains stuck in a stupor of horniness.";
		say "     When your tongue makes contact with the creamy liquid, you feel ecstatic. It is not long until its saltiness beings to slowly travel down your mouth, and when the husky cum fills it, you proceed to swallow it. Wyatt is actually very careful with this as to not make you choke on it, turning this into an actual pleasant experience as you savor that seed's taste to its maximum. 'That's it... What a good girl you're gonna be...'";
		WaitLineBreak;
		infect "Husky Bitch";
		say "     You begin to feel its effects in your body soon enough, but you still have a lot of cum to chug down. Wyatt keeps the bottle inclined so you can have more, the canine cum still steadily being poured into your mouth...";
		WaitLineBreak;
		infect "Husky Bitch";
		say "     As the transformation gradually takes place, your lust is also fueled further the more you drink, which in turn also arouses the werewolf...";
		WaitLineBreak;
		infect "Husky Bitch";
		say "     'Only half way to go now...' he says, already mindlessly stroking himself while holding the bottle with one hand...";
		WaitLineBreak;
		infect "Husky Bitch";
		say "     You yet continue to drink it diligently, just as you are told, your body remaining receptive to the changes...";
		WaitLineBreak;
		infect "Husky Bitch";
		say "     'Just a little more... Can't wait to fuck you...'";
		WaitLineBreak; [To avoid Latex TF and to reaffirm normal female husky infection. Also to remove cock and add a vagina, in case the previous infections don't make that happen]
		now FaceName of Player is "Husky Bitch";
		now Face of Player is "slim, feminine muzzle and large, perky ears over a canine";
		now BodyName of Player is "Husky Bitch";
		now Body of Player is "that of a bipedal dog, with digitigrade legs and paw-like hands";
		now SkinName of Player is "Husky Bitch";
		now Skin of Player is "[one of]softly furred[or]densely furred[or]white-furred[at random]";
		now TailName of Player is "Husky Bitch";
		now Tail of Player is "You have a long and fluffy dog's tail swaying behind you";
		now Cock Count of Player is 0;
		now Ball Size of Player is 0;
		now Cock Length of Player is 0;
		now Cunt Count of Player is 1;
		now Cunt Depth of Player is 10;
		now Cunt Tightness of Player is 3;
		now Breast Size of Player is 4;
		now Nipple Count of Player is 4;
		say "     You do not even realize that you have reached the end of the bottle's contents until nothing more drops in your mouth, instead having to see Wyatt putting it away with a huge smile on his face as he sees your new form before him. 'You're so... fucking hot...' he exclaims, immediately pressing his dong between your legs and your newly acquired pussy, already craving for its first cock. 'I wanna fuck you so badly...' the werewolf moans, pushing his large cock against your wet curls as you feel his hands over your breasts, gently squeezing and rubbing them all over. His scent is so powerful, so great, that you practically beg him to enter you with your body language, moaning helplessly at his touch. This really excites him, until he finally pushes his cock into you, slowly and carefully, as he releases a grunt of joy.";
		WaitLineBreak;
		say "     Despite his previous intercourse with the female husky, Wyatt's erection is so genuinely hard that it could have fooled you into believing he has not had any sex for a while. The brute, with his large girth, pushes your curls open in a delightful stretch, inch by inch burying more of his length inside you. It is evident that the lean werewolf is extremely turned on by you, putting on all the effort he can muster to provide you as much pleasure as possible. He keeps you trapped in his arms, his sexual desire taking the reins, further emphasized by each throb his manhood gives every time he licks your face. No a single word is shared between you two, only his thrusts against your sex as he feels your pussy wrapped around more and more of his cock.";
		say "     Every moment he is inside you is passionate and fiery, though his gentle manners drop as your pussy grows accustomed to the intrusion. With every thrust comes a harder and deeper one, progressively picking up the pace as the werewolf becomes more assertive in his moves. You feel that large cock of his in its hardest state, pulsating inside you, going back and forth with persistence and force, a vigor Wyatt shows during the entire time. With deep thrusts he fills you with his girth, pushing as much as he can of his member inside you, never letting go of you. His heartbeat joins yours as his hulking furred body tightens yours in his grasp, fucking you even harder, even faster...";
		WaitLineBreak;
		say "     You can tell the male is so aroused that his entire focus shifts towards the insides of your womanhood, quivering around his sizable dick as he continues to fuck you. The lust overtaking you, clouding your every thought and judgement, only drives you towards your orgasm as the werewolf carries on, his manhood throbbing excitedly at the sight of your climax. He looks at you with the happiest smile as you only squirm and quiver in utter bliss, still feeling his hard meat inside you, and you absolutely cannot help it. Your erogenous regions feel so delightfully sensitive that everytime he rubs your breasts or his cock gives out a throb and moves a mere inch, you feel overwhelmed with pleasure.";
		say "     Seeing you so lost in it greatly arouses the werewolf, who then is startled by several consecutive throbbings that his cock begins to give. 'Oh, shit, I forgot... Fuck...!' He hastily pulls his cock out of you and, within nearly a fraction of seconds, he blows his load with so much force it rains all over your body in several spurts. You think some of it might have flown over your head and hit the wall, and a glance would confirm your suspicions. Wyatt cums so much and so hard that you are given a full body coating of the stuff, his orgasm lasting close to a full minute. He then only remains there, panting, his cock still hard and leaking its last drops, on his knees above you and atop the bed.";
		WaitLineBreak;
		say "     'I... Oh, what the fuck?! I... Did... Did you... Fuck I fed you all that husky cum! A-are you okay?!' he worringly asks, once he comes to his senses after that overtaking lust both you and him went through. And, indeed, you are now a female husky, but you cannot say you feel bad about it. In fact, your body does not let you have such thoughts when you have just experienced a massive surge of pleasure from such a handsome werewolf. Still, you do regain some soberness over the time, and confusion takes its place in your brain. 'I'm so sorry... I mean, you... you look really hot like that, but... I should've taken a hold of myself...' He looks over your cum drenched body for a while, his mind seemingly gone for a brief seconds, and you can swear his half-hard cock just gave out a throb.";
		say "     'U-Uh... Right! Just hold on a sec.' Wyatt's mind then comes back, and he decides to carefully stand up and out of the bed to go grab a towel, which he offers to you and even helps you clean yourself. 'Well, uh... It's not like this is irreversible, right? You could... always just... find a way to go male again, I suppose. But... Would it be too much if I asked you to give your new body a go? You might like it and... We could... uh... you know... we could date? I-I don't care if you were a dude before, now you're a beautiful... fucking sexy dog girl...' He takes a deep breath as he has to, once again, take hold of his thoughts. 'Right, uh, you don't have to say anything right now, just... consider it, yeah? We could have tons of fun together...'";
		WaitLineBreak;
		say "     It feels like Wyatt is asking you to be his lover, though he does not want to pressure you on that matter. You tell him that is fine and that you shall give him an answer later, once you give it some thought and experiment with this new... body. It is a rather odd request, though, as you have not known each other for that long, but the werewolf must be feeling quite lonely, and he did just cause your gender to change. With some words of comfort, you manage to maintain that smile on his face as you finish cleaning yourself from the mess he has made, getting ready to leave. 'You're leaving? Yeah, I should bring the other husky girl back to the pit, she can't just stay here... But hey, I really enjoyed this. I hope we can... repeat it. The sex part, I mean.";
		WaitLineBreak;
		say "     You cannot deny that a part of your mind is telling you that you really want to repeat this, as the unexplainable desire that struck you before rises again at the mere thought of it. There was something odd about his scent when he was changing you, then fucking you, almost addictive in its nature... But you must shake these thoughts away as you move to leave, saying goodbye to Wyatt. It takes you a while to get used to how your body moves, but you are quick enough to adapt.";
		NPCSexAftermath Player receives "PussyFuck" from Wyatt;
		now Resolution of WyattRomance is 1;
		TraitGain "Player Male to Female" for Wyatt;
	else:
		say "     Even though the touch of his body feels great on you, as his large physique takes you for a warm embrace, the idea of him switching your gender is too much for you. Part of you wants to give in, but you are just not comfortable with this, and there is this corner in your brain that propels you to resist. It is difficult to refuse such a handsome, caring and passionate werewolf when he is practically rubbing himself against you, his penis erect as lust overtakes him, but you... cannot let this happen. You push against him and tell him to stop a few times, until he realizes you do not want this. Knowing better than to go against your will, Wyatt stops and stares back at you with a seemingly embarassed look.";
		say "     'Shit, I'm sorry... I... don't know what got into me... I-I didn't mean to force myself upon you...' You tell him it is alright, you would just prefer to keep your appearance, and if that does not work for him, it is fine. You were the one to walk up on him and behave inappropriately, in the first place. 'Yeah... Let's... just forget this happened, alright? I'm gonna take this husky back to the pit and... You should go, too.' With you both agreeing that you should just part ways for now, you proceed to say your goodbyes as you walk out of Wyatt's room.";
		say "     Perhaps some things are just not meant to be.";
		now Resolution of WyattRomance is 99;

to say WyattSpecialMtF:
	say "     The minute the werewolf pushes you into his bedroom, he closes the door behind you and proceeds to push you atop his bed. He takes his loincloth off at that moment, revealing the soft, but thick, furred sheath hanging between his strong thighs. 'Seems like you've been a bad girl... So I'm not going to be as gentle.' From a drawer he pulls, he also takes a bottle full of a creamy white liquid, which you know very well what it is. 'And something also tells me you just do this on purpose... Maybe you like when I pin you down under me and make you drink some random husky dude's cum. Maybe you love seeing your body regain its womanly curves, feeling that wet pussy return to its due place, then to get stretched and fucked by me just as if it was your first time.'";
	say "     Then, Wyatt laughs as he walks up to you. Slowly, his body meets up with yours as he climbs on top of the bed, placing himself just above you, his knees on each side of your shape, properly pinning you down under him as his weight settles in. 'Well... It's funny how much I'm into that too. How I like seeing you becoming a beautiful woman just for me. So... I'll gladly make you turn into a girl... As many times as necessary... Over and over again. Maybe one day you'll realize that is your true form. Otherwise... Why would you keep coming back to me? You just can't help it, can you...?' His musky scent is now much stronger than before, already leaving you slightly lightheaded. 'I bet you look forward to the day I finally claim you as my very own personal fucktoy. Shaped to my likes. Perfected for my pleasure...'";
	WaitLineBreak;
	say "     As he seems to be done teasing you, the werewolf finally grabs the bottle of husky cum he kept with him, which is still at least three quarters full, and opens it, with the evident intent of making you drink its contents. The brute leans over on top of you, with more of his body keeping you pinned down, holds your head up and brings the bottle to your lips. Amidst all this, you can feel his throbbing shaft against your midriff, its warmth obviously clashing against your average body temperature. 'There's still a lot left in it. I'd say... you can have it all.' As he finishes speaking, a grin forms across his muzzle as he pours the husky cum into your mouth and looks in your eyes with evident lust. Your mind cannot even consider the possibility of refusing the brute's will, as you feel utterly subdued by him.";
	say "     When your tongue makes contact with the creamy liquid, you begin to feel unexplainably ecstatic. It is not long until its saltiness beings to slowly travel down your mouth, and when the husky cum fills it, you proceed to swallow it. Wyatt is actually very careful with this as to not make you choke on it, turning this into an actual pleasant experience as you savor that seed's taste to its maximum. 'I gave it a little spice, this time. Make sure you get everything, right to the last drop...'";
	WaitLineBreak;
	infect "Husky Bitch";
	say "     You begin to feel its effects in your body soon enough, but you still have a lot of cum to chug down. Wyatt keeps the bottle inclined so you can have more, the canine cum still steadily being poured into your mouth...";
	WaitLineBreak;
	infect "Husky Bitch";
	say "     As the transformation gradually takes place, your lust spikes drastically the more you drink, which in turn also arouses the werewolf...";
	WaitLineBreak;
	infect "Husky Bitch";
	say "     'Only half way to go now...' he says, already mindlessly stroking himself while holding the bottle with one hand. There is a fiery, unexplainable desire for his cock hitting you all of the sudden...";
	WaitLineBreak;
	infect "Husky Bitch";
	say "     You yet continue to drink it diligently, just as you are told, your body remaining receptive to the changes... And you are just feeling more and more horny... Its taste is so addictive...";
	WaitLineBreak;
	infect "Husky Bitch";
	say "     'What a good girl! You're almost done... Come on, just a little more...";
	WaitLineBreak; [To avoid Latex TF and to reaffirm normal female husky infection. Also to remove cock and add a vagina, in case the previous infections don't make that happen]
	now FaceName of Player is "Husky Bitch";
	now Face of Player is "slim, feminine muzzle and large, perky ears over a canine";
	now BodyName of Player is "Husky Bitch";
	now Body of Player is "that of a bipedal dog, with digitigrade legs and paw-like hands";
	now SkinName of Player is "Husky Bitch";
	now Skin of Player is "[one of]softly furred[or]densely furred[or]white-furred[at random]";
	now TailName of Player is "Husky Bitch";
	now Tail of Player is "You have a long and fluffy dog's tail swaying behind you";
	now Cock Count of Player is 0;
	now Ball Size of Player is 0;
	now Cock Length of Player is 0;
	now Cunt Count of Player is 1;
	now Cunt Depth of Player is 10;
	now Cunt Tightness of Player is 3;
	now Breast Size of Player is 4;
	now Nipple Count of Player is 4;
	say "     You do not even realize that you have reached the end of the bottle's contents until nothing more drops in your mouth, instead having to see Wyatt putting it away with a huge smile on his face as he sees your new form before him. 'That's more like it. Back to being a beautiful husky girl for her werewolf man.' he exclaims, immediately pressing his dong between your legs and your newly acquired pussy, already craving for its first cock. 'I'm fucking throbbing...' the werewolf moans, pushing his large cock against your wet curls as you feel his hands over your breasts, gently squeezing and rubbing them all over. His scent is so powerful, so great, that you practically beg him to enter you with your body language, moaning helplessly at his touch. This really excites him, until he finally pushes his cock into you, slowly and carefully, as he releases a grunt of joy.";
	WaitLineBreak;
	say "     The brute, with his large girth, pushes your curls open in a delightful stretch, inch by inch burying more of his length inside you. It is evident that the lean werewolf is extremely turned on by you, and perhaps even more with the whole situation that preceded your transformation, putting on all the effort he can muster to provide you as much pleasure as possible. He keeps you trapped in his arms, his sexual desire taking the reins, further emphasized by each throb his manhood gives every time he licks your face. No a single word is shared between you two, only his thrusts against your sex as he feels your pussy wrapped around more and more of his cock.";
	say "     Every moment he is inside you is passionate and fiery, though his gentle manners drop as your pussy grows accustomed to the intrusion. With every thrust comes a harder and deeper one, progressively picking up the pace as the werewolf becomes more assertive in his moves. You feel that large cock of his in its hardest state, pulsating inside you, going back and forth with persistence and force, a vigor Wyatt shows during the entire time. With deep thrusts he fills you with his girth, pushing as much as he can of his member inside you, never letting go of you. His heartbeat joins yours as his hulking furred body tightens yours in his grasp, fucking you even harder, even faster...";
	WaitLineBreak;
	say "     You can tell the male is so aroused that his entire focus shifts towards the insides of your womanhood, quivering around his sizable dick as he continues to fuck you. The lust overtaking you, clouding your every thought and judgement, only drives you towards your orgasm as the werewolf carries on, his manhood throbbing excitedly at the sight of your climax. He looks at you with the happiest smile as you only squirm and quiver in utter bliss, still feeling his hard meat inside you, and you absolutely cannot help it. Your erogenous regions feel so delightfully sensitive that everytime he rubs your breasts or his cock gives out a throb and moves a mere inch, you feel overwhelmed with pleasure.";
	say "     Seeing you so lost in it greatly arouses the werewolf, who then is startled by several consecutive throbbings that his cock begins to give. 'Grrr... I wish I could breed you, but... F-Fuck!' He hastily pulls his cock out of you and, within nearly a fraction of seconds, he blows his load with so much force it rains all over your body in several spurts. You think some of it might have flown over your head and hit the wall, and a glance would confirm your suspicions. Wyatt cums so much and so hard that you are given a full body coating of the stuff, his orgasm lasting close to a full minute. He then only remains there, panting, his cock still hard and leaking its last drops, on his knees above you and atop the bed.";
	WaitLineBreak;
	say "     'Well, fuck. That was fun! Just... be careful with whom you fuck with. While this is fun, it's kind of a drag to milk a husky dude for that much cum so often. And I do prefer fucking you looking like this. A perfect, hot girl ready to be put in bed and fucked senseless.' As the thrill of sex ends, you see that Wyatt seems to have returned to his usual self with a big smile on his muzzle. He even helps you get all cleaned up and ready to return outside, but not before giving you a long, deep and passionate kiss against the wall right next to the door. 'Make sure you keep coming back. You're always fun to hang out with. And fuck... Hard and deep...' he ends, shooting a wink at you as he gives your butt a little playful slap.";
	NPCSexAftermath Player receives "PussyFuck" from Wyatt;

Wyatt ends here.
