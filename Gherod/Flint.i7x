Version 1 of Flint by Gherod begins here.

"Adds Flint, a male cougar who works at the Farm, to the game."

[***********************************************************]
Section 1 - Flint NPC
[***********************************************************]

FlintDoneTalking is a truth state that varies.[@Tag:NotSaved]

Table of GameCharacterIDs (continued)
object	name
Flint	"Flint"

Flint is a man. Flint is in Barn Hayloft.
ScaleValue of Flint is 3. [human sized]
Cock Count of Flint is 1.
Cock Length of Flint is 8.
Ball Size of Flint is 3.
Ball Count of Flint is 2.
Cunt Count of Flint is 0.
Cunt Depth of Flint is 0.
Cunt Tightness of Flint is 0.
Nipple Count of Flint is 2. [2 nipples]
Breast Size of Flint is 0.
[Basic Interaction states as of game start]
PlayerMet of Flint is false.
PlayerRomanced of Flint is false.
PlayerFriended of Flint is false.
PlayerControlled of Flint is false.
PlayerFucked of Flint is false.
OralVirgin of Flint is false.
Virgin of Flint is false.
AnalVirgin of Flint is false.
PenileVirgin of Flint is false.
SexuallyExperienced of Flint is true.
MainInfection of Flint is "".
The description of Flint is "[FlintDesc]".
The conversation of Flint is { "<This is nothing but a placeholder!>" }.
The scent of Flint is "     Flint gives out a somewhat animalistic scent, but very mitigated with an overall clean smell. He must take good care of himself.".

to say FlintDesc:
	say "     Whenever you get his attention, his ample ears give out a twitch as they turn towards you, and his amber eyes lock gaze on yours with a smile. Looking at the feline man, you know him to appear as an anthropomorphic cougar with brown fur all around, lighting up to a cream color in the torso and belly areas. He is tall and well-built in a slender but powerful way, sporting a good mix of agility and might like a true feline. During his tasks around the farm, he can be seen wearing his dark blue handyman jumpsuit, which has a hole behind his rear to allow his furred long tail to pass through and wave freely.";

[***********************************************************]
Section 2 - Flint Talk Menu
[***********************************************************]

instead of conversing Flint:
	now PlayerMet of Flint is true;
	if Flint is in Barn Hayloft:
		say "     With the cougar under the comfortable roof of his place of choice to live, you simply approach him and begin conversation. He seems enthusiastic enough to give you the chance to follow up, a welcoming expression drawn across his feline muzzle.";
	else if Flint is in McDermott Barn:
		say "     When you approach the cougar, he takes a while you notice your presence, quickly turning his face towards yours. Politely, he nods and smiles as if greeting you in silence, while chewing on some food. The feline has manners.";
	else if Flint is in Milking Shed Main:
		if Loyalty of Flint is 1:
			say "     Not even amidst his work the handyman cougar is closed to a conversation. He interrupts his current task for a while to look back at you, greeting you politely. 'Oh hey! Nice to see you! Look, I told you I'd show you around the machines, but they're needing some attention right now, and stuff takes time to get done... But we can still chat, of course!' he says with a smile, as his attention remains divided by the mechanism at his hands and you.";
			say "     <<AUTHOR'S NOTE: Milking Shed content to be added in the future.>>";
		else:
			say "     Not even amidst his work the handyman cougar is closed to a conversation. He interrupts his current task for a while to look back at you, greeting you politely. 'Do you need anything? Any help with the machines?' he asks, as his attention remains divided by the mechanism at his hands and you.";
	WaitLineBreak;
	say "[FlintTalkMenu]";

to say FlintTalkMenu:
	now FlintDoneTalking is false;
	say "     [bold type]What would you like to talk to the farm's handyman about?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Himself";
	now sortorder entry is 1;
	now description entry is "Ask the feline about himself";
	[]
	if Energy of Flint > 0:
		choose a blank row in table of fucking options;
		now title entry is "His work at the farm";
		now sortorder entry is 2;
		now description entry is "Inquire Flint about his job";
	[]
	If Energy of Flint > 1 and Flint is in Barn Hayloft:
		choose a blank row in table of fucking options;
		now title entry is "Have a sex talk";
		now sortorder entry is 3;
		now description entry is "Bring the subject of sex to the cougar";
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
					say "[FlintTalkHimself]";
				if (nam is "His work at the farm"):
					say "[FlintTalkJob]";
				if (nam is "Have a sex talk"):
					say "[FlintTalkSex]";
				wait for any key;
				if FlintDoneTalking is false:
					say "[FlintTalkMenu]"; [looping back to keep talking with him]
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You excuse yourself as Flint gives you an understanding nod.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say FlintTalkHimself:
	say "     Having decided to ask the cougar a bit more about himself, he gives out a somewhat nervous chuckle before pausing with a hesitating look. 'Umm... Well, you can call me Flint, I'm the handyman of the farm, I fix stuff here and there while providing the necessary maintenance to the milking machines so that they keep working without any issues... And that's pretty much everything there's to know about me.' While it is clear that the nice anthro feline doesn't dismiss your questions and doesn't even mind people approaching him, something tells you that there's more than meets the eye. He pauses a lot during his sentences, looking around and scratching the back of his neck. The latter seems like a nervous habit, as he usually follows that up with a deflective answer.";
	say "     'We all have our stories, honestly I'd prefer to just forget about mine. I came here to start anew, and in exchange for food and shelter, all I have to do is provide my services. There isn't anyone as handy as me around here when it comes to mechanical devices... I-I'm not bragging, of course! I just meant that as a... Well, it's a just reason! We all have our talents! For example, I'm a terrible cook...' Flint laughs by the end of his reply, probably thinking to himself how much of a dork he sounded, but you assure him that everything is alright, perhaps even sliding a little compliment on his worthy skills. You managed to get a flattered smile from him, and he spends the next few minutes of your conversation talking about his most recent tinkering.";
	if Energy of Flint is 0:
		now Energy of Flint is 1;

to say FlintTalkJob:
	if Energy of Flint is 1:
		say "     Wondering what it's like to work at the farm, you ask Flint about his main responsibilities. 'In general, I make sure every machine and device is working properly, but I'm mostly just doing maintenance at the milking shed. The milking machines seem to be one of the most profitable sources of income for the farm. I actually enjoy it, to be honest. Fixing stuff has always been my passion...' he replies with a smile. You can actually see the joy in his eyes, slit pupils slightly thickened as he talks about what he enjoys working with. But suddenly, they shrink back to a thin black as he realizes his mind is dwelling in the past. With a brief silence interrupting the flow of the conversation, he then apologizes.";
		say "     'Sorry about that. I keep bringing this up... Heh, it's hard to forget some things, as they don't leave our minds so easily... But I guess it's okay to tell you that my past events had me forsake this passion of mine, hence why I'm enjoying my time here so much. Despite the whole apocalypse, I found relative peace for once in my life...' - he makes another pause, then shrugs before continuing - 'Anyway, wouldn't like this to get dark again. I could probably show you around the farm, sometime! Maybe... Do you happen to take [bold type]an interest in how the machines work?'[roman type] he asks you in the end. You think that perhaps he would like to find someone with common interests, but you could always be honest if that isn't the case.";
		Linebreak;
		say "     ([link]Y[as]y[end link]) - Say yes, it is a subject of your interest.";
		say "     ([link]N[as]n[end link]) - Say no, it doesn't particularly call your attention.";
		if player consents:
			Linebreak;
			say "     The cougar smiles at your response, feeling the excitement in both his expression and voice. 'That's great! Usually I worry about boring people with this stuff... But I'm glad we have that in common. So... whenever you find yourself at the Milking Shed during my shift, I could show you around.' he says, seeming happy for having you there. Perhaps you could pass by during the afternoon and catch him there. Surely he would appreciate your effort.";
			if Loyalty of Flint is 0:
				now Loyalty of Flint is 1; [Showing common interest makes him like the Player more]
		else:
			Linebreak;
			say "     'Ah, I see...' he tries, but he cannot hide his disappointment in this fact. 'People don't have to like the same things, of course, but I admit it would be nice to share this with someone. Nobody around here seems to take an interest in my work, they simply want me to keep doing whatever I'm doing... Anyway, thanks for the talk!' he finishes, before politely turning away.";
			[No changes to Flint's loyalty]
		now FlintDoneTalking is true;
		now Energy of Flint is 2;
	else:
		say "     Wondering what it's like to work at the farm, you ask Flint about his main responsibilities. 'In general, I make sure every machine and device is working properly, but I'm mostly just doing maintenance at the milking shed. The milking machines seem to be one of the most profitable sources of income for the farm. I actually enjoy it, to be honest. Fixing stuff has always been my passion...' he replies with a smile. You can actually see the joy in his eyes, slit pupils slightly thickened as he talks about what he does during his shift.";
		say "     It looks like Flint enjoys his work a lot.";

to say FlintTalkSex:
	If Libido of Flint is 0:
		say "     Now that you are in relative privacy, and after having talked a bit already, you figured this would be a good time to bring the subject of sex to the cougar. He doesn't seem to mind it, albeit you have already noticed he's more reserved than most regarding shared intimacy. The real question is, how open he really is to having sex... to which he has an answer for. 'Not as open as most, I admit. The last time I let my guard down already gave me enough trouble...' he says, hinting at his current appearance to further solidify his position. 'I honestly don't know how I made it out... with that large cougar man pouncing at me... He had me pinned down, then proceeded to violate my ass without mercy, saying he'd make me his...'";
		say "     Despite the anthro cougar's low tone, you notice a bulge growing underneath his jumpsuit. 'It still tingles something in me. I think I... actually liked it. I know this may sound cheesy and you've probably heard this already, but... I'm afraid that if I give in, I'll lose my mind for good... And I definitely don't want that to happen. Not now, that I can see that life has to offer a lot more than I previously thought...'";
		WaitLineBreak;
		say "     You now know that he was actually turned by someone else, another cougar man like he now is, who forced himself upon him, and while he may have been partially enjoying the event, he now regrets having even thought about submitting entirely. He currently holds his mind sane, and seems afraid of pursuing any further sexual relationship with anyone. But you actually can't ignore the sizable bump between his legs, which he seems ashamed about.";
		say "     Do you want to delicately push the subject and perhaps attempt to have him see other ways?";
		Linebreak;
		say "     ([link]Y[as]y[end link]) - Carefully, as you don't want to harm him.";
		say "     ([link]N[as]n[end link]) - Back away, for now.";
		if player consents: [Actively help Flint overcome his fears]
			Linebreak;
			say "     Showing empathy for him, you tell him you completely understand his situation, but argue that maybe it would be best if he came to terms with what happened, as he for sure wouldn't be the only one going through similar things around here. 'I know what you mean, but... how? Every time I think about how that felt, I just...' he looks down to his by now solid erection, still covered underneath his jumpsuit, and stutters during the next few words. 'T-this happens...' You tell him it's okay, and that he is certainly strong enough to deal with this. There is enough to conclude that whatever transformation he had to go through, he already did, and any fears he is having are purely psychological, which is... good, within a certain perspective.";
			say "     Besides that, his boner won't go away, which causes a somewhat awkward situation between you both. What occurs to you is saying that, in order for him to be able to surpass this, he must actually accept he enjoyed part of the intercourse with the manly cougar and let that fact rest on the back of his mind. 'You think it's okay to... think that way? That doesn't make me a slut... does it?' Again, you tell him it's fine to like to shake things up a bit, sometimes, and it doesn't mean he's a slut. But regarding that subject, you ask him about his preferences, as well, once you've got him to open up slightly.";
			WaitLineBreak;
			say "     'I mean... I didn't know I liked being fucked, actually. I didn't know I liked dudes, even. But I admit I've been checking out some boys, besides girls and other [']genders[']... I guess I'm bi? Pansexual? Something around that...' You nod, and encourage him to continue. 'I think I would consider myself a top, before, even though I thought I was straight, but... well, now things are different. I think I'd be open to both sides and all genders.' He says, and you both find yourselves looking into eachothers['] eyes for a while...";
			say "     [bold type]What is your next move?[roman type][line break]";
			Linebreak;
			say "     ([link]Y[as]y[end link]) - Go for it and kiss him.";
			say "     ([link]N[as]n[end link]) - Better not.";
			if player consents: [Going for the kiss leads to sex]
				Linebreak;
				say "[FlintFirstSex]";
			else: [Stopping it has the same effect as backing away, with slightly different text]
				Linebreak;
				say "     Perhaps backing away would be the most sane thing to do, right now. Messing with someone from the farm could get you in trouble, and this seems like Flint's situation needs a very, very delicate approach... You've done what you could for him, and feel like you may have actually helped him, somewhat. 'Thanks... Really. I... know I have to come to terms with what happened, but it was all fairly recent, and... I just need some time. Talking helped, so... thank you, again.'";
				if Loyalty of Flint is 0:
					say "     Before you close the subject at once, however, Flint still adds something. 'If you'd like to come by the Milking Shed while I'm working, I... I'd like to show you around. The milking machines can be quite interesting, I think... ... I don't mean this as any sexual proposition! It's just my work! And... we could spend some more time knowing eachother, I think.' he hurries to say, chuckling along his last words. You nod, and let him know you'll consider.";
					now Loyalty of Flint is 1; [an additional way to make him like the player more]
				now Libido of Flint is 1;
				now FlintDoneTalking is true;
		else: [Let Flint work out his fears on his own, he approves this still]
			Linebreak;
			say "     Perhaps backing away would be the most sane thing to do, right now. Messing with someone from the farm could get you in trouble, and this seems like Flint's situation needs a very, very delicate approach... You start with letting Flint know that everything's fine, and that you don't have to be having this conversation, right now. 'Thanks... Really. I... know I have to come to terms with what happened, but it was all fairly recent, and... I just need some time. Talking helped, so... thank you, again.'";
			if Loyalty of Flint is 0:
				say "     Well, that took an unexpected turn, as it feels like you actually helped him somewhat. But before you close the subject at once, Flint still adds something. 'If you'd like to come by the Milking Shed while I'm working, I... I'd like to show you around. The milking machines can be quite interesting, I think... ... I don't mean this as any sexual proposition! It's just my work! And... we could spend some more time knowing eachother, I think.' he hurries to say, chuckling along his last words. You nod, and let him know you'll consider.";
				now Loyalty of Flint is 1; [an additional way to make him like the player more]
			now Libido of Flint is 1;
			now FlintDoneTalking is true;
	else if Libido of Flint is 1:
		say "     Now that you are in relative privacy, you figured this would be a good time to bring the subject of sex to the cougar, after your previous conversation. 'Still working things out in my mind. I'm not exactly sure what to think, yet... But...' - he gives you a hesitating look, before shrugging and shaking his head - 'I... I think I just need a little while longer.' he finishes, with a forced comforting smile, which is actually a bit unsettling. Something is holding him back on this matter, but for now, you don't insist.";
	else if Libido of Flint is 2:
		say "     Now that you are in relative privacy, you figured this would be a good time to bring the subject of sex to the cougar, after your previous conversations and interactions. 'I actually never thought I'd feel so free... It still bothers me to think about what could have happened if the dude actually fully turned me, but what's done is done. Besides, I think it's way more fun doing it with you...' he replies, chuckling by the end. It seems he's doing well, and actually enjoys your company.";

[***********************************************************]
Section 3 - Flint Sex Menu
[***********************************************************]

Instead of fucking Flint:
	if Libido of Flint is 0:
		say "     Jumping right into a sexual proposal might seem indelicate... Perhaps it would be better if you brought the subject on a conversation, first?";
	else if Libido of Flint is 1:
		say "     The cougar is still sorting out his thoughts about sex, so it would be ill-advised to pursue any sexual activity with him, just yet.";
	else if Flint is not in Barn Hayloft:
		say "     You don't think the cougar will be interested in doing that during his workshift. Maybe you should wait until the end of the afternoon, when he returns to the hayloft.";
	else if lastfuck of Flint - turns < 6:
		say "     lirtatiously, you give the cougar a suggestive look as you slowly approach him, but sadly, he has to refuse you. 'I'm still worn out from our last time... Though I'd be glad to do it another time, again.' he explains, gently patting your shoulder.";
	else:
		say "     Flirtatiously, you give the cougar a suggestive look as you slowly approach him, giving him your best bedroom eyes as you place an indecent proposal on table, the kind that he seems to like... 'I could use some cuddling... Unless you have something else in mind?' he asks, with a playful tone at the end of the sentence.";
		say "     What will you want to do with the farm's handyman?";
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		[]
		choose a blank row in table of fucking options;
		now title entry is "Blow the cougar";
		now sortorder entry is 1;
		now description entry is "Give Flint a blowjob";
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
					if (nam is "Blow the cougar"):
						say "[FlintGiveBlowjob]";
					wait for any key;
			else if calcnumber is 0:
				now sextablerun is 1;
				say "     You politely excuse yourself.";
				wait for any key;
			else:
				say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
		clear the screen and hyperlink list;

to say FlintFirstSex:
	say "     By impulse, or just by mere sense of opportunity, you gently lean over the cougar's muzzle and plant a soft kiss on his lips. He doesn't reciprocate at first, probably from the shock, but you insist on keeping your lips close to his, colliding intermittently, and eventually, he moves his towards yours, parting them just enough to allow some tongue sharing. Within seconds, they are twirling and wrestling against eachother as you savor each and every second of his warm touch, and you lean your torso against his strong furred body as you both come to a much closer proximity. Things heat up, hands sliding down to certain areas, especially yours, which slowly slides down to feel his abs and move towards his fluffy pubic fur from underneath his jumpsuit. He embraces you, having you take a seat on his lap, with your hand resting between both your legs and close to his cock.";
	say "     'I... wasn't expecting this...' - he mutters between kisses - '... But I want it...' Kissing you much more deeply than before, the cougar fully gives in to the situation and makes out with you like one should. His breathing intensifies as his heartbeat rises, excitement taking over both of you as you begin to feel eachother almost passionately. His shyness is quickly replaced by lust as Flint urges to slide the rest of his jumpsuit down his furred legs, and by then, he is completely lost in your affection, not minding anything else but the intimacy you are both sharing with one another.";
	WaitLineBreak;
	say "     As you continue to kiss him, you notice his thick eight incher poking at your thigh, earning for attention, and within the heat of the moment, you simply decide to use your hands for now, wrapping your fingers around the still human looking, yet darkened shaft, throbbing with your caress. In order to give yourself a better angle, you slide to the cougar's side while maintaining body contact, and bring your dominant hand over his cock to start jerking him off. He lets out a moan as your masterful touch slowly rubs across his sensitive penis, embracing you with one of his arms and keeping his lips close to yours, only to plant a few more kisses on you. Only his breathing does the talking as you begin to stroke his cock, his hips motioning pleasure all centered on his sex.";
	say "     It's evident that he's a bit afraid of giving in too deep, but he doesn't stop you at any point. Perhaps he's too overwhelmed to even think about it, after not having touched himself for so long... You definitely noticed how extremely hard his shaft is, throbbing and pulsing with every second of pleasure it receives, and by the looks of it, he won't actually last too long. Now another arm circles around your neck as he thrusts his hips back and forth, effectively fucking your hand, as he greedily kisses you again, his tongue circling around yours as you feel these soft vibrations of his moans being let out one after the other... He doesn't actually need to say anything, you know he's yearning for it, it feels like he's begging you to don't stop...";
	WaitLineBreak;
	say "     And you don't. His movements intensify, and so does yours. Your hand keeps stroking his shaft upwards and downwards, faster and faster, accounting with the jerking motions of his hips, up to a point he cries out in overwhelming pleasure as his whole midriff contracts, followed by an enormously powerful shot of cum that hits both of you in the cheeks! The rest of his load continues to gush out in strong splashes, coating his chest's fur and abs as it eventually begins to wane down, but having successfully coated the cougar's whole torso. He pants, completely taken by how surprisingly powerful his orgasm was, and takes a moment to catch his breath before locking gaze with you.";
	say "     'T-that was... Phew...' he says with a smile on the corner of his muzzle, before sticking his tongue across your cheek, where some of his cum went. 'You've got some here...' he adds, as he slowly licks it off, sliding his tongue across your face very tenderly, even further than where his cum splooged. You figure he's just having his fun, now. 'Sorry about that.' - he says, jokingly apologizing - 'I had that one in for a really long time...' He then makes a long pause after chuckling for a bit, then gives your cheek a tender stroke. 'Thank you. I guess I had nothing to fear, after all... I don't feel any different. I mean, for the worse, at least!' You end up cuddling with eachother for a bit more, until Flint decides it's time to clean up.";
	WaitLineBreak;
	say "     Once you're both up and free of any mess, the handyman gives you a smile as he talks. 'That's... one way to go on about things. You really made me see this differently... I guess all I needed was a reality check. If everything was this easy...' you smile back to him, and while he doesn't continue to speak, he does appreciate your gesture.";
	now FlintDoneTalking is true;
	if Loyalty of Flint is 0:
		WaitLineBreak;
		now Loyalty of Flint is 1;
		say "     Before you part ways, Flint leaves you an invitation. 'Come pay me a visit by the Milking Shed during my shift. I'd like to show you around and... spend some more time with you.' You nod, and let him know that you will consider it.";
	now Libido of Flint is 2;
	NPCSexAftermath Flint receives "Other" from Player;

to say FlintGiveBlowjob:
	say "     Leaning over the cougar with your intention clear, you let him know that you'd like to make him feel good with some oral work down over his parts. He is glad to receive your offer and gives you no resistance, pulling you for a kiss and letting you take over from then on. Right as you get his jumpsuit out of the way to kiss along the path from his neck to his chest, then abs, circling your touch around his toned muscles, he then starts setting things ready for when you arrive down south. Once you're past his pubic fluff, you already have a throbbing eight incher to work with, as you both exchange gazes for a brief second. Considering this a sign to get started, you slide your mouth over his shaft on the sides, bringing one hand to cup his balls with, and begin licking him from the base to the tip across its length.";
	say "     He opens his mouth in awe, letting a slight moan, as you continue giving his dick all the tongue he deserves. Then, and only after you've got him yearning for more, you decide to lean your lips over the tip of his shaft, and wrap them around its girth, slowly taking his member inside the warm and wet depths of your mouth. Feeling his rod pulse against your tongue and cheeks from the inside, you're more than motivated to keep taking it deep, as far as you're able, while you twirl your tongue around his shaft a bit more to entertain him. Flint easily loses himself in the sensations you're providing, and soon, you've got him jerking his hips, but given that it's still not the right time for that, you place both your hands on both his furred thighs and get him to relax.";
	WaitLineBreak;
	say "     The cougar leans his head back and closes his eyes, trying to deal with all the lust that's taking him over as you simply pleasure his cock, undeniably giving him a great time. Taking his member deep inside your throat and out as much as you are able, you begin to make the handyman shake in ecstasy as you pick up the pace, playing with his balls to leave him even more turned on. Judging by how hard his erection is right now, you would guess he is pretty close to release, but decide to edge him for a while, lurking around the point of no return and back, driving him to madness very, very quickly... 'I-I can't take that for much longer...' he says, tempted to grab your head as you feel his hand hovering over you.";
	say "     But you decide to pick up the pace once and for all, sucking him faster and deeper, now holding his cock with one hand as you give yourself the angle to jerk him off with your mouth. Soon, you notice his breathing getting more intense. 'I'm close...' he warns, and while you appreciate his consideration, that is exactly what you are going for. Within seconds, the cougar's rod pulses and throb at a much higher rate, followed by a generous amount of sweet feline cum that ends up coating your teeth and tongue entirely. He looks down on you with a silly smile on his face as his orgasm slowly subsides, still having some drops of spunk fall on your lips and cheek as his dick rests against your face.";
	say "     Now, what will you do with his load in your mouth?";
	Linebreak;
	say "     ([link]Y[as]y[end link]) - Surprise him with a cum-filled kiss.";
	say "     ([link]N[as]n[end link]) - Swallow his load.";
	if player consents:
		say "     With a naughty look in your face, you slowly make your way towards his face, and given that he doesn't offer any resistance, you go for the kiss. He opens his mouth and gladly accepts the deposit you make of his own cum in his. Then, you both make out with each other, snowballing the spunk around and passing it from one to the other with your tongues. Eventually, both of you swallow down what's left, and chuckle at one another once you lift your head away.";
	else:
		say "     Locking your eyes on his, you have him observe you swallow his cum all at once, making sure you let him see it go down your throat. As the thick and warm fluids travel all their way to your stomach, Flint gives you an appreciative look, and you can swear his cock twitched just now, despite being half-hard and done for the session. You are sure that turned him on.";
	say "     'Thanks. That was amazing... I wish we could do this everyday.' he says, winking at you as he strokes your cheek. 'Glad to have met you.'";
	say "     As you both have had your fun, it is time to leave the cougar to rest for another day of work.";
	NPCSexAftermath Player receives "OralCock" from Flint;

[***********************************************************]
Section 4 - Flint Routine
[***********************************************************]

an everyturn rule:
	[if TimekeepingVar is 1 or TimekeepingVar is -7: [midnight]
		move NPC to ROOM X;
		if player is in ROOM X:
			say "     NPC ARRIVES";]
	if TimekeepingVar is 0 or TimekeepingVar is -8: [pre dawn - Flint wakes up]
		if player is in Barn Hayloft:
			say "     [if playermet of Flint is false]The cougar handyman who lives here[else]Flint[end if] is up and awake by now, getting ready for another working day. You hear occasional water running and splashing sounds from a nearby tank, as he seems to be taking care of his morning hygiene. It seems like the cougar likes to keep himself neat and clean, despite the fact he is living in a hayloft. You see him already dressed up in his usual navy blue jumpsuit, his choice of attire for work. He smiles to you once your eyes meet, and greets you verbally once you come at a closer distance. His mood is cheerful as it always seems.";
		now sleeping of Flint is false;
	else if TimekeepingVar is 7 or TimekeepingVar is -1: [early morning - grabbing breakfast]
		if player is in Barn Hayloft and Flint is in Barn Hayloft:
			say "     [if playermet of Flint is false]The anthro cougar excuses himself as he leaves the loft, walking past you with a polite smile[else]Flint waves at you as he leaves the loft. 'I'm gonna grab some food from the barn before running the maintenance shift. Join me there, if you want.' he says, while you see him move hastily past you, as if he was in a hurry[end if].";
		else if player is in McDermott Barn:
			say "     While in here, you see [if playermet of Flint is true]Flint, [end if]the anthro male cougar, and farm's handyman, having some breakfast before heading to work. He's sitting on a nearby chair, all by himself and seeming very focused on his current task, munching on some canned food that he got from the farm's reserves. Sometimes you can catch him staring into the void, as if deep in thought, before taking another bite. He's usually quiet and keeping to himself, even when someone bumps into him, and barely moves an inch if not to bring food to his mouth. Despite this, however, he doesn't seem like the kind of person who'd push people away, able to keep an apparent easygoing mood during most of the time.";
		now Flint is in McDermott Barn;
	else if TimekeepingVar is 6 or TimekeepingVar is -2: [mid-morning - starts maintenance on milking shed]
		if player is in McDermott Barn and Flint is in McDermott Barn:
			say "     [if playermet of Flint is true]Flint,[else]the anthro cougar in the blue jumpsuit[end if] who was eating by the corner of the room seems to have left the barn for now. If he's the handyman, that means he must be running maintenance, probably on the milking machines. Perhaps you'd find him there, in the main area of the Milking Shed.";
		else if player is in Milking Shed Main:
			say "     You see [if playermet of Flint is true]Flint[else]the handyman anthro cougar[end if] checking the milking machines, as if addressing their current state without getting too deep in his analysis. He actually mumbles some words, which while you can't quite hear what he is saying, you have enough to understand he might be slightly annoyed. It doesn't last long, however! Before you know it, the cougar is hard at work, fixing what needs to be fixed and even taking the time to polish some of the mechanical parts until they're shining clean. It is obvious that the feline likes to keep everything tidy and neat.";
		now Flint is in Milking Shed Main;
	else if TimekeepingVar is 5 or TimekeepingVar is -3: [noon]
		if player is in Milking Shed Main:
			say "     The handyman cougar is still working on the machines, making sure they are working properly and even doing some tinkering, probably to get them to work better and with more efficiency. While it's noon, the anthro feline prefers to grab a snack admist his work really quick, moving over to the window in order to take a break and appreciate the sight over the horizon. After his breaks, he's always back to work harder than before, focusing on his duty and sometimes ending up helping some users getting comfortable. He seems pretty careful with his approach, always polite and with a generous smile, but most importantly, very competent.";
	else if TimekeepingVar is 4 or TimekeepingVar is -4: [mid afternoon - returns from work]
		if player is in Milking Shed Main and Flint is in Milking Shed Main:
			say "     [if playermet of Flint is true]Flint[else]the maintenance cougar[end if] is just finishing up his work on the machines. Then, he is seen grabbing his tools and stuff, then take his leave. The guy must be tired from working all day... Perhaps you'd find him at the hayloft, where he retires at the end of his shift.";
		else if player is in Barn Hayloft and Flint is not in Barn Hayloft:
			say "     [if playermet of Flint is true]Flint seems to have arrived from his workshift, walking past and greeting you with a smile[else]The anthro cougar and handyman of the farm seems to have arrived from his workshift, walking past you and greeting you with a polite nod[end if]. He looks really tired after working all day, given the fact he immediately goes take a seat on one of the piles of hay, arranged to look like a comfortable couch, and lean back. Finally, there he is, just relaxing with the straps of his jumpsuit taken off his shoulders and hanging freely on the sides.";
		else if player is in Barn Hayloft:
			say "     Inside, you see [if playermet of Flint is true]Flint[else]the handyman anthro cougar[end if] taking some time to relax after a full day of work. He took another dose of canned food to munch on while seeming lost in thoughts, sitting on a pile of hay that was arranged to serve the purposes of a comfortable couch. It is pretty quiet in here, and he must like the relative peace of this place, judging by how relaxed he looks. Sometimes he closes his eyes and nearly falls asleep.";
		now Flint is in Barn Hayloft;
	[else if TimekeepingVar is 3 or TimekeepingVar is -5: [evening]
		if player is in ROOM Y:
			say "     NPC IS PRESENT AND DOES STUFF";]
	else if TimekeepingVar is 2 or TimekeepingVar is -6: [early night]
		if player is in Barn Hayloft and sleeping of Flint is false:
			say "     [if playermet of Flint is true]Flint[else]the handsome cougar[end if] heads to his hay bed after having taken his jumpsuit off, sleeping completely naked and only covered with a blanket. You best not disturb him, he's a hard worker and needs to have his rest...";
		else if player is in Barn Hayloft:
			say "     [if playermet of Flint is true]Flint[else]the handsome cougar[end if] seems to be sleeping at this time, in his hay bed. He left his jumpsuit on a short hanger he placed nearby, and has a blanked covering his now naked furred body.";
		now sleeping of Flint is true;

Flint ends here.
