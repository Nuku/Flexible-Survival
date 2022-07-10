Version 1 of Elstan by Gherod begins here.

"An extension of the Lair Of The Lupines file that adds Elstan to the game."

[Version 1 - File created, split from the main Lair Of The Lupines file.]

Section 1 - Elstan NPC

Table of GameCharacterIDs (continued)
object	name
Elstan	"Elstan"

Elstan is a man.
ScaleValue of Elstan is 4. [normal sized]
Body Weight of Elstan is 8. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Elstan is 9. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Elstan is 1. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Elstan is 14. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Elstan is 4.  [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Elstan is 8. [length in inches]
Breast Size of Elstan is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Elstan is 2. [count of nipples]
Asshole Depth of Elstan is 16. [inches deep for anal fucking]
Asshole Tightness of Elstan is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Elstan is 1. [number of cocks]
Cock Girth of Elstan is 4. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Elstan is 18. [length in inches]
Ball Count of Elstan is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Elstan is 4. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Elstan is 0. [number of cunts]
Cunt Depth of Elstan is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Elstan is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Elstan is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Elstan is false.
PlayerRomanced of Elstan is false.
PlayerFriended of Elstan is false.
PlayerControlled of Elstan is false.
PlayerFucked of Elstan is false.
OralVirgin of Elstan is false.
Virgin of Elstan is true.
AnalVirgin of Elstan is true.
PenileVirgin of Elstan is false.
SexuallyExperienced of Elstan is false.
TwistedCapacity of Elstan is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Elstan is true. [steriles can't knock people up]
MainInfection of Elstan is "Werewolf Brute".
Description of Elstan is "[Elstandesc]".
Conversation of Elstan is { "<This is nothing but a placeholder!>" }.
The scent of Elstan is "     Elstan's scent is quite beastlike and masculine, nearly intoxicatingly so[if player is submissive]. It arouses you, getting you to think how good it would be to serve him[else if player is dominant]. It fills you with an urge to compete with him for who is stronger[else]. It makes your groin tingle and your heart race[end if].".

to say ElstanDesc:
	say "     This brute seems to be a bodybuilder, judging by how much muscle he has, but you cannot deny that he is, by werewolf brute standards, a quite handsome fellow. The tall and muscular lupine beast has light brown fur and seems very proud of his physique, always standing up straight with his large chest puffed out. He could very well rival even Jett in strength, as you really cannot see anyone else with as much bulk as him other than the alpha himself. He does not wear anything to cover his sheathed bits, which hang heavily between his legs, and also seem to be bigger than most. However, his expression does not inspire confidence, making him seem not easily approachable. Whenever you pass by him, his crystal blue eyes only trace your figure with clear contempt.";

ElstanDoneTalking is a truth state that varies.[@Tag:NotSaved]

Section 1-1 - Elstan Talk

instead of conversing Elstan:
	if "Pride Hurt" is listed in traits of Elstan:
		say "     As soon as you approach him, he shifts his gaze towards you with contempt and anger, even showing his sharp teeth to you. That is a clear message stating [']do not come near me[']. You really have pissed him off, it seems. Now, you could always wait until [bold type]he approaches you in the Oubliette[roman type], instead, and let him take the initiative.";
	say "     He barely seems to mind your presence when you try to address him, but he eventually turns to you with an unamused expression, 'What do you want?'";
	WaitLineBreak;
	say "[ElstanTalkMenu]";

to say ElstanTalkMenu:
	now ElstanDoneTalking is false;
	say "     [bold type]What would you like to talk about with Elstan?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Himself";
	now sortorder entry is 1;
	now description entry is "Ask the tough werewolf about himself";
	[]
	if Energy of Elstan > 0:
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
	if Resolution of JettDominance is 2:
		choose a blank row in table of fucking options;
		now title entry is "Persuade Elstan to take Jett's spot";
		now sortorder entry is 99;
		now description entry is "Jett wanted you to persuade Elstan to take his spot while you did the deed. Shall you try";
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
					say "[ElstanTalkHimself]";
				else if (nam is "The pack"):
					say "[ElstanTalkPack]";
				else if (nam is "His sexual preferences"):
					say "[ElstanTalkSex]";
				else if (nam is "Persuade Elstan to take Jett's spot"):
					say "[ElstanTalkGiftJett]";
				wait for any key;
				if ElstanDoneTalking is false:
					say "[ElstanTalkMenu]"; [looping back to keep talking with him]
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You excuse yourself as Elstan immediately starts to mind something else.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say ElstanTalkHimself:
	if loyalty of Elstan < 5:
		say "     You want to know more about this werewolf, who seems sort of distant from everyone else apart from his friend. 'Why are you trying to get to know me? I don't date losers,' he replies, shrugging off any attempts of getting closer. You try to explain that it is nothing like that, you just want to know a bit more about himself. Knowing that he puts a lot of effort on his body, you compliment and appreciate his physique, which seems to get his interest somewhat. 'At least you have eyes. Fine, my name's Elstan. Remember it. And I'm the toughest werewolf brute you're ever gonna find, so you better also remember that.' He does not seem to lack in modesty, but you have a better idea of how to get him to keep talking.";
		say "     Reinforcing his ideas, you tell him that he does look really tough, probably even enough to rival the alpha all by himself. 'You mean Jett, the wannabe alpha? Pft, you want a real alpha, you come to me. I should be the one leading this pack. I have a much better idea where to put all these losers to work instead of fucking all day and hide like our lives depended on it. Stupid idea... We could have a fucking fortress, instead we're living in this underground shithole.' It seems he strongly disagrees with how things are done in here.";
		say "     Though, perhaps he would tell you more if you built some relationship with him? Right now, he seems very closed to communication.";
	else:
		say "     You want to know more about this werewolf, who seems sort of distant from everyone else apart from his friend. However, as you have already shared intimate moments with one another, he seems more receptive to dialogue. 'Wanting to get to know great Elstan here better? Can't blame you... Aren't I your favorite, after all?' He grins to himself as he pulls you closer to him, wrapping his strong arm around your shoulders. Then, he has you both take a seat before he begins talking. You make sure you show yourself to be the best listener he could ever find.";
		say "     'Guess you aren't too bad either, so I'm gonna tell you this. As you probably already know, we were all humans before, and we had lives before coming to live in this hole. I was the sexiest motherfucker alive, that kinda dude you'd wanna worship the first second you laid your eyes on him. That was me, an athlete at the peak of his life. I even did modeling, just so you know, and I had a shit ton of cash. Which, by the way, all went to fucking shits once this madness started! So yeah, if I look pissed all the time, now you know why. I had everything, and now I have to content myself with fucking rocks for a gym. Not fun.' You feel like you could give him some encouraging words and tell him he is still quite a good looking werewolf, despite what happened.";
		WaitLineBreak;
		say "     'Well, yeah, at least I kept my good looks... And someone who digs them,' he says before a chuckle, 'Bodybuilding was my career, and now it may never happen again, but hey, maybe I can be at some entertainment parties, or work at some place they require inhuman strength... I'm sure you know just how strong I am.' You obviously confirm his affirmation and proceed to thank him for sharing this with you. 'Heh, well... I shouldn't deny a cute little slut some talking with their idol, right? Should give you some more motivation to make me feel really good... Hehe...'";
	if Energy of Elstan is 0:
		now Energy of Elstan is 1;

to say ElstanTalkPack:
	if loyalty of Elstan < 5:
		say "     When asking him about the pack, he chuckles sarcastically. 'What pack? This ain't no pack, just a bunch of horny dogs. Jett doesn't put them to work, they don't do anything worthwhile, just fuck and eat all day... Pathetic. We could be shoving our dicks in literally every creature out there and make a real pack, our pack, much bigger. Then, we'd take over the entire city and we wouldn't have to hide in here like pussy cats! Could have all the shit we wanted with little effort. Demons, orcs, whatever you can think of, fuck them, they wouldn't stand a chance against us.' He really thinks strongly about this and you doubt there is anything you could do to change his mind.";
	else:
		say "     When asking him about the pack, he chuckles sarcastically. 'Yeah, pack. I think you already know what I think of this. Though, I suppose I don't completely hate it. While I still think it's a fucking waste we're stuck in this shithole only fucking and eating all day and Jett doesn't really fucking care, I... Wouldn't really feel safer anywhere else. I still think we could fuck everyone who'd get in our ways and expand your pack, take over territory and rule over everyone else, though... I suppose there's not much to rule over. It could be fun turning them all into more werewolves, heh... And we could still improve our situation. Yeah, I just wish Jett listened to me more often. At least put these fucking useless shits to work, make them scavenge for some actual fun stuff and work on improving our home instead of keeping it to supplies only, and if any other group got in our way, it's fucking war on them and we win! Easy!'";
		say "     'Anyway, this subject gets me pissed. Let's just move on.' It seems he still thinks very strongly about this, but at least he does not sound completely unreasonable anymore.";

to say ElstanTalkSex:
	if Loyalty of Elstan >= 5:
		say "     Giving your growing relationship with Elstan, you bring up the subject of sex in order to understand the dynamic between you two a little better. 'Heh... It's been working alright, yeah? Truth is, I'd fucking die for a good little slut who spoils me and does everything I want, and it just gives my balls sweet tingles when I humilliate them in front of others, call them all sorts of nasty names and see their cheeks blush when they hear me talk to them like that. Not to mention... When they stroke my ego so good like you do... Now that gets me rock hard. I don't really know how you're going to survive this... One day I'm gonna get so horny I'll split you open and break you... Unless that's what you want, you fucking bitch?'";
		say "     If you were not into this, you would have stopped getting along with Elstan long ago, so you nod to his every word like a good [boygirl], your heart racing as you hope for just a few words of praise from him. 'Yeah... You're that good little slut I was just talking about. Keep being good and I'll surely get nastier with you... I may even get you a collar and make you my pet slut, eh? How does that sound, hm? You wanna be a good [boygirl], yeah?' He then pats you on the head and strokes your cheek as he grins, probably thinking of all the things he could do to you. Well, you surely are thinking of them right now, and he probably knows it. 'Go dumb for me, slut... Let Elstan do all the thinking for you. That's all you gotta keep doing...'";
	else:
		if Libido of Elstan <= 1:
			say "     There is no denying that Elstan looks really strong... and is actually very handsome for a werewolf. With this in mind, you decide to ask him about what he is most into, but he looks at you dead in the eye. 'How long will it take you to realize what I'm into?' he says, the a grin begins to show across his muzzle. 'Maybe I'll show you, one day... When you crawl [bold type]back to your place[roman type].' He says nothing more and just leaves you thinking. Does he mean the [bold type]oubliette[roman type]?";
			now Libido of Elstan is 1;
		else if Libido of Elstan is 2:
			say "     Given your last encounter, you tell him you would like to know more about his sexual interests, even though he gave you a glimpse of what really gets him going. 'Thought it'd be quite obvious when I brought you to my room. You still didn't get it? Dumb slut...' he chuckles when he insults you, not able to help himself but to smile. 'But that's alright. I'll know where to find your ass so I can keep reminding you.'";
			if player is submissive:
				say "     [italic type]And you blush, due to your submissive instincts, seeing how much he likes to belittle you. There is a lot of stuttering in your words afterwards, which amuses the werewolf. 'Oh... The little bitch likes being told [SubjectPro]'s a dumb slut? What a fucking loser...' The humiliation is real, but Elstan also begins to pop a boner, his crimson rod poking out of his thick furred sheath and rising up. 'You better start walking out of here while you can. I'll know where to find your ass when I feel like using it again.'";

Section 1-2 - Elstan Sex

instead of fucking Elstan:
	if Libido of Elstan <= 1:
		say "     You make an advance on Elstan, but he simply pushes you aside, looking angry. 'What the fuck do you think you're doing? You're not gonna get anything from me when you fucking want, bitch.' It looks like that will not work with him.";
	else if Libido of Elstan is 1:
		say "     You make an advance on Elstan, but he does not feel keen on letting you get any closer to him. 'What do you think this is? You ask and you get it? Fuck no. Go back to your hole and, if I feel like it, I might come pick you up.' It seems you will have to follow his rules if you want to get any of that meat.";
	else if Libido of Elstan is 2:
		if "Pride Hurt" is listed in traits of Elstan:
			say "     You attempt to make an advance on Elstan, but as soon as you approach him, he shifts his gaze towards you with contempt and anger, even showing his sharp teeth to you. That is a clear message stating [']do not come near me[']. 'Fuck off,' is the only thing he says to you. You really have pissed him off, it seems. Now, you could always wait until [bold type]he approaches you in the Oubliette[roman type], instead, and let him take the initiative.";
		else if lastfuck of Elstan - turns < 4:
			say "     You make an advance on Elstan, which you gain enough confidence for, given your past encounters. He does not shove you off, but since you were just together recently, the muscular werewolf does not seem to be in the mood. 'Didn't you have enough already? I gotta do some workout, beat it.'";
		else:
			if Loyalty of Elstan < 5:
				say "     You make an advance on Elstan, which you gain enough confidence for, given your past encounters. Once, he would push you away and tell you off, but now, the muscular werewolf cannot help himself but get turned on at how much craving you show for him. 'Wow, you really do like being my bitch, huh? Want it so badly you keep asking me for it... Alright, let's have some fun then. I'll let you suggest some way I can use you, as I'm in such a good mood.'";
			else:
				say "     You make an advance on Elstan, which you gain enough confidence for, given your past encounters. As you have been at this for a while, he acts like he just knows you will come back for him one way or another, and gives you a cocky grin. 'Look who's back...! This slut really can't help [ObjectPro]self but to keep coming back to the best werewolf in this whole fucking place... Come in closer, let's hear how my little bitch [boygirl] is hoping to worship me this time. I may even let [ObjectPro] if I like what I hear...' While he obviously puts on that tough dominant guy posture as usual, you also notice his fuzzy tail wagging a bit excitedly.";
			say "     It seems you can get some action with the big werewolf Elstan, however, [bold type]you are likely to have to do it right here, in front of all the other werewolves...[roman type][line break]";
			WaitLineBreak;
			say "[ElstanSexMenu]";

to say ElstanSexMenu:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Worship his muscles";
	now sortorder entry is 1;
	now description entry is "Give his body some deserved appreciation";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Suck his cock";
	now sortorder entry is 2;
	now description entry is "Tell him you would like to give him a blowjob (outcomes may vary)";
	[]
	if Loyalty of Elstan >= 3:
		choose a blank row in table of fucking options;
		now title entry is "Watch him working out";
		now sortorder entry is 3;
		now description entry is "Observing the werewolf in admiration is also a way to appreciate him, right";
	[]
	if Loyalty of Elstan >= 5:
		choose a blank row in table of fucking options;
		now title entry is "Ask him to use your throat again";
		now sortorder entry is 4;
		now description entry is "Do you want him to facefuck you like he did before";
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
				if (nam is "Worship his muscles"):
					say "[ElstanSexMuscleWorship]";
				else if (nam is "Suck his cock"):
					say "[ElstanSexBlowjob]";
				else if (nam is "Watch him working out"):
					say "[ElstanSexWorkoutWatch]";
				else if (nam is "Ask him to use your throat again"):
					say "[ElstanSexFacefuckRepeat]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			if Loyalty of Elstan > 3:
				say "     Figuring that you may have preferred to do something else with your time, you excuse yourself. 'You keep blueballing me like that... You don't know what you're getting into,' he replies, his eyes narrow as his deep, calm voice reaches your ears.";
			else:
				say "     Figuring that you may have preferred to do something else with your time, you excuse yourself. 'Well, then stop fucking wasting my time!' he replies, annoyed.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say ElstanSexMuscleWorship:
	say "     You start by simply complimenting his body, appreciating all the hard work he has been putting in those big muscles, so large and powerful that not even his thick coat of fur can smooth them out. Amidst that, you even say the magic words, that he could easily rival their alpha werewolf. This alone is enough to form a wide grin on Elstan's face as he starts flexing his whole body, looking over himself as he listens to you. 'Yeah... I'm the biggest, strongest and smartest of all the werewolves in here. I'm glad you recognize that. You're, at least, not a dumb bitch.' You even tell him more, that with such might and brain, everyone should adore and worship him, going as far as to tell him he really is the sexiest fucker in the entire region.";
	say "     The only reason you continue to wash him with compliments, unless you actually and genuinely meant all of it, is that every nice word seems to make that sizable and thick red prick of his perk up more and more, to the point he has got a throbbing boner, prompting the werewolf to look at you with bedroom eyes. 'Fuck, you learn quickly too... Seems like you know just how to woo me,' he says to you in a deep and soft tone that makes your tummy rumble, all while he walks up to you and pushes you against a wall. He leans over towards you, his muzzle mere inches away from your face, arms pushing against the rocky surface behind you... and he speaks again, almost whispering, 'And are you gonna do something about it, or is that all talk and no action?'";
	WaitLineBreak;
	say "     Hearing his words and feeling the air around you heat up, you begin to feel like you are nearly drowning in a sea of pheromones, with that musky, beastlike scent of Elstan's sweat, which is so masculine and powerful that your loins begin to cry in need of touch";
	if player is submissive:
		say ". This [italic type]is certainly enough to alter your expression, as you cannot help but look back into his eyes with a pleading and helpless gaze, which only flares the almost predatory glare Elstan has over you. It evidently turns him on, knowing how easily your submissive instincts dance to his whims, at his command, eager to please him[roman type]";
	else:
		say ". This evidently rubs him just right, knowing how easily he can turn you on and have his way, even when he simply lets his body speak.";
	say ". Being this close to him only further suggests to your mind that you should actually put your words into deeds, even more as you sort of subconsciously place your hands over the sides of his wide torso and slowly slide them upwards. The werewolf lets out a low growl as you touch him, then you become aware of what you are doing and simply proceed with it, going over his fuzzy pectorals and realizing how massive each muscle pec feels in your grasp.";
	say "     'Hrr... Should bend you over and spread that [if player is female]pussy[else]ass[end if] wide open right here... But this gets me so fucking hard...' he says, amidst more growling, and then you find your head being pulled into his furred chest, your lips colliding with the nipple underneath all that coat. Something big and throbbing comes in contact with your neck, keeping your head in place, and that is actually his enormous bicep as he wraps his arm around your skull. 'Suck on them, rub me all over, fucking worship me like your life depended on it.' You are effectively trapped in the spot between his right pec and his armpit, left with no other option but to suck on that seemingly very sensitive nipple. So, you do exactly that, wrapping your lips around that meaty nub and wiggling your tongue all around, practically suckling on it.";
	WaitLineBreak;
	say "     'Fuck... Yeah, that's a good little bitch... do it like I'm your god, because I fucking am.' You want him to miss nothing you can eagerly provide, putting everything you can into worshipping the werewolf. The size of his muscles alone is smothering you a little, but it all adds to your excitement, moreover with your generous touch all over his other pec and all the way down to his abs. This is especially enjoyable as you simply close your eyes and feel up his size and bulk, noticing how truly massive this guy is. Every muscle is rock solid, bulging out delightfully in pure mass and sheer might, a physique that would embarass the average bodybuilder back in the days. Even the werewolves' thighs are of an impressive width, though with all the movement you are making, your forearm occasionally collides with the huge cock down below, throbbing in response.";
	say "     Elstan's breathing gets deeper and more desperate, such is the intense lust boiling within the beast. 'Grab me, grope me, fucking feel up this body... You wanted it, didn't you?! Now you got it, don't hold back...' He flexes harder against, well, your entire body as he leans against you, almost squashing you against the wall as he holds you as close as you can get to him. You are not just sucking on his nipples anymore, figuring that he may prefer a broader approach around the entire area between his arms and chest, including the bicep, with lots of slobbering licks and kisses. This happens while you, simultaneously, grope him in the other pec, the bicep in the other arm, that side of his torso, and even his glutes. During all this, you never purposefully touch his junk. Not once, apart from the accidental ones.";
	WaitLineBreak;
	say "     Because you focus purely on his body. You are here to worship his physique, and your mind is dead set on that. But amidst your actions, you find yourself suddenly locked under the werewolf's armpits, pulled into them as your face gets buried in a very warm pit of masculinity, a scent so powerful that it makes you knees weak. Then, Elstan begins to breathe hastily and grunt like he is just having an orgasm... 'Fuck, I'm cumming... Fuck!' Well, no, he really is having one. With only all this body worship that you were not even done with, Elstan came hands-free against the wall, your doubts cleared once you feel some of the warm liquid hit you from the side, where his sizable member keeps throbbing against. And a lot of it.";
	say "     He keeps on grunting as an almost seemingly endless stream of werewolf jizz coats both the wall behind you and the right side of your body, all this while you get choked under his pit due to the overpowering grip of his muscular arms. Elstan loosens it once he feels you are squirming around too much, but that causes you to inhale all that hot musky scent at once, leaving you very lightheaded. In a reflex, you hold yourself onto the wall behind you, accidentally splashing some of the cum in there with your whole arm and hand. Elstan starts chuckling as he steps back, admiring the mess he has just made. 'That's a fucking good bitch. Keep that up and you might even earn my tolerance. It's been a while since someone made me cum like that... hands-free.'";
	WaitLineBreak;
	say "     The light brown werewolf then pats you on the head as he is about to leave. 'Definitely put me in a good mood. Now get outta my sight before that changes.' You hastily retreat before his threats mean anything real. The mess he has made is still there, however. Maybe he'll just get someone to clean it up... In some manner.";
	if Loyalty of Elstan < 10:
		say "     [bold type]In his own way, Elstan seems to like you more.[roman type][line break]";
		increase Loyalty of Elstan by 1;
	NPCSexAftermath Elstan receives "Other" from Player;

to say ElstanSexBlowjob:
	if Loyalty of Elstan < 3:
		say "     Shifting your gaze over to the handsome werewolf's crotch, a thought crosses your mind that he may very well enjoy hearing, or so you think. Nevertheless, you are keen on asking him about it, which leads you to propose a blowjob to him. At first, he looks at you from the corner of his eye, as if he was suspicious of that offer, before he grunts and turns to face you heads on. 'Is that a feeble attempt to gain access to the my goods without any effort? You just come here, say you wanna suck my dick and expect me to nod and agree to it?' You admit that you did not think he would take that as an offense and that you purely meant it as a way to treat him with something nice and pleasant. 'Is that so? Or are you just a little bitch hungry for my cock? If that's it, you should get in line.'";
		say "     You get the feeling he is expecting something more out of you. Perhaps [bold type]this would require convincing at the cost of your own dignity[roman type], but for you, it may just be a small price to pay for some hot fun. Shall [bold type]you subject yourself to this?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Stroke his ego as much as you can.";
		say "     ([link]N[as]n[end link]) - You have no time nor patience for this. Leave him at once. This may piss him off, however.";
		if Player consents:
			ElstanSexBlowjob1;
		else:
			say "     But you find yourself in a certain mood that does not tolerate a certain egotistical werewolf playing hard to get, so you kindly wish him good luck with finding someone as good as you in that [']line['] of his. You may have done so in a multitude of ways, but the main message gets across to him and... he does not look happy. 'Oh yeah? Then good luck finding dick as good as mine, slut! Hint, you won't, because there's none. And that's your fucking loss!' he shouts in response, angrily. It is clear that you hurt his pride, but there is no way back now. You commit to this and proceed to leave, clearly having left the werewolf upset as he resumes his exercises. You are certain it shall pass, but maybe you should not come back to him in a while.";
			if Loyalty of Elstan > 0:
				say "     [bold type]Elstan did not appreciate that at all, and that took a heavy toll on your relationship with him.[roman type][line break]";
				decrease Loyalty of Elstan by 5;
				if Loyalty of Elstan < 0:
					now Loyalty of Elstan is 0;
			TraitGain "Pride Hurt" for Elstan;
	else:
		if Loyalty of Elstan >= 5 and "Rough Player Starter" is listed in traits of Elstan: [facefuck scene]
			TraitLoss "Rough Player Starter" for Elstan;
			TraitGain "Rough Player - Facefuck" for Elstan; [unlocks repeatable facefuck scene]
			say "     Shifting your gaze over to the handsome werewolf's crotch, a thought crosses your mind that he may very well enjoy hearing, or so you think. Nevertheless, you are keen on asking him about it, which leads you to propose a blowjob to him[bold type]. This time, however, something different happens...[roman type][line break]";
			WaitLineBreak;
			say "     Elstan immediately smirks when he hears you, although he finishes his current exercise before addressing the matter, placing down the rocks he repurposed as dumbbells on the ground before turning his handsome lupine muzzle in your direction. He says nothing, only lays his eyes on you as he takes deep breaths, then slowly begins to take one step after another towards you, maintaining his crystal blue eyes locked on yours. There is not much distance between you, so it takes only a few moves on his behalf to be on arm's reach of you.";
			ElstanSexBlowjobFacefuck;
		else: [Variant introduction for players Elstan is starting to like]
			say "     Shifting your gaze over to the handsome werewolf's crotch, a thought crosses your mind that he may very well enjoy hearing, or so you think. Nevertheless, you are keen on asking him about it, which leads you to propose a blowjob to him. At first, he looks at you from the corner of his eye, as if he was suspicious of that offer, but then, a cocky smirk forms across his muzzle before he raises his hand towards you, to beckon you to approach him. 'What's that? You wanna suck my cock?' he asks, in a loud and clear tone that was surely heard by anyone who happened to be in the vicinity. His grin only widens before he continues, placing his large paw-like hand over your shoulder, 'That's a privilege not everyone deserves, you gotta work for it... But if you're a good little bitch, you'll know how to convince me, right?'";
			say "     Indeed, you know what that means. He wants to hear your sweet words of praise and worship, even if that comes at the cost of your own dignity. Elstan likes it not for the sake of humiliating you (or perhaps he does, a little bit) but he just cannot help himself when he is being adored like a god. It turns him on, almost intoxicatingly so, and you know exactly how to achieve that. If one is to be honest, there really seems to be no problem in doing that. In fact, you now feel more comfortable to do it than ever...";
			WaitLineBreak;
			ElstanSexBlowjob1;

to say ElstanSexFacefuckRepeat:
	say "     Recalling one of your past encounters, you decide to approach Elstan and dearly ask him if he could do that with you again, including the way he approached you and told you exactly what he was going to do to you. He immediately smirks, as if amused by your request, turning his long muzzle towards you still amidst a chuckle. 'Wow, really? Damn... You like to be manhandled by me that much, huh? And you want me to do it the exact same way I did before...? Hehe...' Noticing your readiness to give yourself to him, the werewolf puts a pause to his workout and begins to walk in your direction, maintaining his crystal blue eyes locked on yours. There is not much distance between you, so it takes only a few moves on his behalf to be on arm's reach of you.";
	ElstanSexBlowjobFacefuck;

to ElstanSexBlowjob1:
	say "     Inspiring yourself as you look over the perfect specimen of a werewolf that Elstan is, you begin to talk about how he is the best of them all, that he is the most handsome and strongest, and you go as far as to say that even Jett should kneel to him, as he is so much better than him. While you could be lying (or not), this does not matter to the werewolf, only your words of praise filling his ego. And then, you explain that it is merely due to this fact that you wish to please him, because he deserves to be pleased and serviced as much as he ever wishes. The more you talk, the more his cock begins to show past his furred sheath, especially when you emphasize his qualities, good looks and strength.";
	say "     'Yeah, I'm the fucking best and you know it. That makes you better than most bitches I get to fuck,' he says, turning to you, along with his growing boner, stopping whatever he is doing to talk to you. 'Or are you telling me all this because you really happen to be a little slut, who just can't control themselves near Elstan here? Is it the impressive sight? Hehe...' You simply tell him that you would be the biggest slut just for him, because you know he likes it and definitely deserves it. Your best signal that your efforts are working is the consistent throbbing his cock is giving as it gets even closer to a full erection. 'Oh yeah? The biggest slut? A little cumdump like you? Bet you can even tell us apart just from looking at our dicks... As you must be so acquainted with all of them.'";
	WaitLineBreak;
	say "     No, you have to say that his is special, that his is the best, and there is none like his. If Elstan was the only one you could worship, it would suffice, as it would be such a great privilege already. Nobody else would come as close to his greatness. And you know he loves hearing this, as his cock size is looking monstrous by now. 'Alright, fine. You know how to woo me, I'll give you that. Shit, I'm so hard just hearing you talk I could fuck you right here and now... But you wanted to suck me off, so you get only what you asked for. I'm sure you won't mind an audience, knowing how much of a dirty whore you are...' The werewolf grins as he beckons you to approach him, giving you permission to touch his body.";
	say "     Though, as soon as you are within reach, he grabs you by the head and pushes you down, your face being brought right to his cock as you bump your nose on the rigid shaft. 'Careful there, might hurt yourself...' he says, chuckling mischievously as he slaps your cheek a couple more times with a few swings of his massive prick. 'C'mon, it ain't gonna suck itself, bitch.' Your dignity investment has finally paid off, as you can now simply move your lips towards that delightful looking meat and begin to slide them across his shaft, which makes the werewolf smile. 'Yeah, worship every inch like I deserve it. Show everyone how it's done,' he tells you, a little louder than his usual tone, which calls the attention of some nearby werewolves, including Kirnon, the silver one.";
	WaitLineBreak;
	say "     All that remains for you to do is to follow Elstan's demands and appreciate every inch of his cock with your mouth, lips and tongue, kissing and licking all over that pulsating rod while you cup the werewolves['] balls with one hand, playing with them gently as you carefully rub those orbs, feeling their mass and weight due to how full they are. 'Look at that, bitch [boygirl]... You've got everyone's eyes on you. Now everyone knows you're MY bitch, so you better not make me look bad.' You put all your effort into this, eventually bringing your lips to the tip of his cock, then part them to allow as much of that large meat as you can fit inside your mouth. You have to open really wide to get it in, but you do, and continue to push yourself.";
	say "     With repeated movements, you slide your lips further deeper along his shaft, then back and forth, progressively managing to get more of his cock in your mouth, but what really matters is how much you are stroking and rubbing it, which greatly pleases Elstan. 'That's it... Keep that up and you'll get a nice reward,' he says, which is all the motivation you need to prolong your efforts. Hastening your pace, you suck him harder and faster, your hands following as such. A glance over your shoulder would reveal some of the werewolves in the audience absent-mindedly caressing themselves as they observe you blowing Elstan, perhaps fantasizing about being in either your place or the muscular wolfman's...";
	WaitLineBreak;
	say "     'Oh yeah, don't stop now, I'm getting there...' You continue as he demands, even as your neck aches and your arms threaten to falter, doing your absolute best to keep going. 'Almost there...' he warns, and you make a final push, sucking him as deep and fast as you can, hands stroking the entirety of his shaft where your lips cannot reach, and soon, his balls begin to raise. Elstan breathes deeply before he releases a loud grunt, grabs your head and keeps you in place, burying more of his cock inside your throat than you would feel comfortable with. Finally, he starts shooting his load directly into your stomach, powerful shots that you are forced to swallow almost as if you were chugging down a bottle full of it.";
	if Loyalty of Elstan < 3:
		say "     Everyone keeps their eyes on you as Elstan ensures you drink his cum to the very last drop, before finally letting go of your head and allowing you to breathe with a bellyful of wolf spunk. 'That was good, slut. You put up a good show too!' He then turns around, picks up some weights and resumes his exercising, ignoring you completely from that point on. The wolfmen who were watching you all stare at you hoping you would come assist them with their erections, except Kirnon, who seemed to have ignored your display since it started. You figure you have had enough and simply consider leaving.";
		WaitLineBreak;
		say "     [bold type]Do you wish to say goodbye to Elstan before you go?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Say something to him. It feels wrong just leaving like that.";
		say "     ([link]N[as]n[end link]) - No, just leave. That is how he wants it.";
		if Player consents:
			say "     Even though he completely disregarded your existence right after he made you swallow his cum, you still insist in approaching him. The look on his face is best described as perplexed when you politely thanked him for the fun activity. 'Uh... Did I forget to tell you to fuck off? Oh, yeah, I actually did. So... fuck off.' He says it like that, but his eyes loom over you long enough to give you the impression he actually appreciated your gesture. 'Alright, or you could stare and admire the best werewolf in the den, yeah? Just do it quietly. I gotta focus.' Well, that was a little less hostile statement from him, so you are content with having done this before you commited to leaving.";
			if Loyalty of Elstan < 10:
				say "     [bold type]In his own way, Elstan seems to like you more.[roman type][line break]";
				increase Loyalty of Elstan by 1;
		else:
			say "     You discard that thought and commit to being on your way.";
	else: [variant for players Elstan starts to like more]
		say "     Everyone keeps their eyes on you as Elstan ensures you drink his cum to the very last drop, before finally letting go of your head and allowing you to breathe with a bellyful of wolf spunk. 'You did great... as expected from you.' He then gives your face a few slaps with his half-hard meat as he lets out a chuckle. 'Good little bitch did so well I might give [ObjectPro] a reward if [SubjectPro] kisses my body all the way back up...' Elstan slides his index and thumb under your chin, making you turn your gaze at him, and waits for you to follow his suggestion. Beginning with a kiss above the base of his sheath, you do as he says, your lips colliding with his pelvis, following through his waist, his soft fur-covered abs and all the way towards his chest, until you are almost standing up completely.";
		say "     His large hand had followed your movements, and suddenly, he grabs you by the jaw and slowly brings his long muzzle towards you. Just like that, you are then given a werewolf's kiss, tongue pushing and sliding past your lips. Elstan assaults your mouth like he owns you, making out with you for several seconds as the others watch, even Kirnon, whom you can spot from the corner of your eye. The handsome werewolf then pulls back, finally letting go of you with only a smirk and a low, suggestive growl. He then turns around, picks up some weights and resumes his exercising without any further words. You do not think any are needed, either, so you simply commit to being on your way, with your heart still pounding against your chest because of that powerful kiss.";
		if "Rough Player - Facefuck" is not listed in traits of Elstan:
			TraitGain "Rough Player Starter" for Elstan; [guarantees that next time Elstan will propose a rough facefuck]
	NPCSexAftermath Player receives "OralCock" from Elstan;

to ElstanSexBlowjobFacefuck:
	say "     Then, the werewolf gently strokes your cheek with the back of his fingers, his figure approaching yours until the both of you stand very close to each other, the heat of his presence caressing your body more and more. 'You're always looking forward to please me, ain't that right...?' he asks, this time with a low tone so deep it makes your stomach rumble. This unusually calm demeanor of his actually manages to freeze you up, the only thing you are still able to do being nodding in concordance. 'Yeah...' he then utters, steadily turning his hand around as he keeps brushing it against the side of your face, until it is his palm that does so for brief moments. Finally, it fully settles down by your cheek and jawline as you find his thick thumb softly flicking your lips.";
	WaitLineBreak;
	say "     At this point, you are pushed all the way towards a rocky wall as Elstan's massive silhouette nearly traps you in between that and himself. What light is left in your surroundings is gone with his towering physique overshadowing you, only the blue glow of his eyes remaining in your sight for several seconds as your vision adapts to the shift of the lighting. Slowly and steadily, his thumb pushes against your lips, forcing them to part as he slides it in deeper. He then presses that thick finger of his against your tongue, which prompts you to start licking, and following his approving grunt, your motivation grows as far as to make you begin sucking on it. 'Hmm...' He utters little to no words at all, and only then, he grabs his cock, which has popped out by now, and begins to slowly jerk it with his one free hand.";
	say "     'You're such a great little slut... So good, in fact, that I'm feeling... inclined to try something new. Nobody else gets this special treatment, so you better appreciate it...' He pushes his thumb all the way to its base a little more suddenly that you would expect right as he finishes those words, so much that, in a reflex, you raise your own hands and place them around his. This causes the werewolf to grin, seeing how he startled you. 'If I've made you my bitch before... today, I'm gonna make you my fucktoy. And I'll use you up until you break... Make you take every - single - drop - of what I'm going to pump into you,' he says this as he thrusts his thumb against your throat with every pause, inevitably causing you to let out a moan or two.";
	WaitLineBreak;
	say "     'Everyone's gonna see what a good little bitch you are once they see you swallowing this cock. You're going to open that mouth wide and take every inch of this big wolf meat, and you're gonna take it like a champ... Because that'll make me happy. And you wanna make me happy, right...?' All you do is nod as his thumb once more presses against the lower side of your mouth, from the inside, and moments later, you feel your head being pulled lower, a clear sign that you should give absolutely no resistance to his wants and simply follow the force. This leads to you dropping to your knees in front of the werewolf as he lifts one leg, to place his foot atop a nearby workout bench, and eventually, your face lines up directly with his huge lupine cock, throbbing excitedly.";
	say "     'Aren't you the biggest slut there is? You can't wait to choke on my dick, can you...? Hehe...' The hand whose thumb was deep in your mouth soon pulls away and instead goes for your skull, your whole head being grabbed by the werewolf as he pulls you towards that yearning meatlog of his. Immediately, the tip of his cock begins to push against your lips, which forces your mouth to open. You brace yourself to take inch after inch of that massive werewolf cock as Elstan thrusts it into you, nearly dislocating your jaw as you try desperately to accomodate the whole thing. Due to its enormous size, you can barely take a mere few inches before a struggle takes place, and seeing how hard you are trying to do as he pleases, the strong beasty male pulls back just enough to allow you to take a breather. 'Easy now... We're just getting started...'";
	WaitLineBreak;
	say "     You do not have to do much more other than enduring the ordeal as the werewolf takes full control of the situation. Grabbing your head with both hands, he guides you back and forth along his thick shaft, further pushing his length in deeper down your throat. He goes at it slowly during the first attempts at making you take more and more of his size, each time causing that huge meatlog to throb as Elstan lets out a low growl of satisfaction. He keeps your head in a tight grip between his large and strong hands, looking down and occasionally locking eye contact with you. Eventually, you get more used to the massive intrusion threatening to stretch your throat around its girth irreversibly, but so does the big lupine man as he begins to want to move his hips too, an urge to fuck your face building up within his body language.";
	say "     'Seems like it's easing in now... All that practice's now paying off, huh?' he teases you, now going at it deeper than before, no longer simply moving your head back and forth, but rather holding it in place as he lets his hips do the work. At some point, you are held completely still, and it is only his thrusts that you feel pounding your face as he praises you, 'You're holding up alright...! Hehe...' It is at that moment Elstan picks up the pace and really puts in force in his thrusts, pushing most of the remaining inches in until your lips hit the swollen bump that is his knot, so thick you would not be able to take it in on your own without a forceful push... And without it hurting.";
	WaitLineBreak;
	say "     Fortunately, Elstan seems content in pounding your mouth with whatever remains of his cock before the knot, even if he is not too gentle about it. Before he was slamming that swollen base against your lips, the werewolf was already increasing the strength of his thrusts, treating your throat like just another fuckhole he is very happy to stretch with his entire length. Now, it is one hundred percent a fuckhole he is very happy to use as he drills your esophagus even deeper and faster, alternating between isolated thrusting and moving your head back and forth, and occasionally joining both together in the proper rhythm. Most of what you feel is that girthy rod bulging through your neck as it gets buried down your throat over and over again.";
	say "     'Mmh... Who's a good little bitch, taking my whole cock in like it's nothing, eh?' He then pulls it off for moments, giving you brief seconds to catch your breath, and proceeds to slap you twice on the cheek with his heavy meatlog. It is so rock hard that it almost feels like he is hitting you with a brick! 'Heh... Barely anyone gets me going like this... Seems like you may deserve a reward, after all...' With that said by the werewolf, he resumes the facefucking by pushing his cock back into your mouth, holding your skull tight and really, really putting in the work to thrust into you like he owns you, leaving you helpless as your throat is thoroughly ravaged by him. 'Hnng... gonna pump a big fat load down your throat, and you're gonna swallow it to the end...'";
	WaitLineBreak;
	say "     He does not seem to be joking, given how vigorously he is fucking your mouth, never slowing down, not even by a bit. It only gets more intense from here onwards as he goes at it faster and deeper, still keeping your head in place as he hips do all the work. Eventually, Elstan lets out a longer grunt, his breathing becoming more intense and deeper, and it is when you feel his cock throbbing unusually more frequently that you know what is about to come... 'Oh yeah, it's right here...' he warns before the inevitable happens. Suddenly, a huge stream of werewolf jizz finds itself running down your throat and being deposited directly into your stomach as Elstan fills you up like nobody's business, so much of it you even feel it swelling above its normal size...!";
	say "     'Every... fucking... DROP!' His voice booms as he shouts amidst his orgasm, every shot so powerful you certainly feel the force they hit your insides with. Slowly, he pulls his cock out, giving your throat so much needed relief, and only lets the rest of his cum leak into your tongue as he keeps you still in his grasp, making sure you keep drinking those salty and creamy drops that are still coming out in abundance. 'Oooh, fuuuck... That was a good one... Too bad you didn't get to see it, though I think it doesn't matter since you drank it all up, yeah?' Elstan strokes your cheek as he watches you lick his dick clean with a big grin on his muzzle. 'Good [boygirl]. This is how you worship me. Wanna keep on my good side... you be a good little slut and I'll be sure to get you some nice surprises...'";
	WaitLineBreak;
	say "     Definitely having been left in a good mood, Elstan taps the top of your head as he lets go of you, chuckling to himself as his self-pride seems overflowing. You are left to digest a fuck ton of werewolf cum, on the other hand, and it was so much of it that you feel stuffed. Would this count as a meal? It did somehow make you not want to eat anything for some time, that is certain.";
	if Loyalty of Elstan < 10:
		say "     [bold type]In his own way, Elstan seems to keep liking you more and more.[roman type][line break]";
		increase Loyalty of Elstan by 1;
	NPCSexAftermath Player receives "OralCock" from Elstan;

to say ElstanSexWorkoutWatch: [can be extended with more possible outcomes]
	say "     With a different approach in mind, you make your move on the muscular werewolf, telling him just how good that body of his looks and how you would like to watch him lift some weights. Immediately, you see Elstan's pecs give a bounce each as he hears your words, and you do not think it was a conscious move. In fact, the werewolf looks like he is about to smile, but he still puts on the tough guy posture. 'So you like looking at my muscles, is that what you're saying?' he asks, moving closer to you as that huge, muscular chest of his really makes itself obvious on how massive it is. It also stands about only a few inches away from your face. He then lets out a chuckle, satisfied with his own display. 'Heh... Maybe I'll let you watch, but I might need to charge. Just stick around and I'll let you know in the end what you're due...'";
	say "     Elstan then turns around - more slowly than he normally would - glancing over his shoulder as he gives you a wide view of his back muscles before heading back to where he was before. He then picks up two rocks with each hand, which serve as improvised dumbbells, and begins to work on those biceps by lifting them one after the other with great control. You can swear his arms look even bigger as he does that, the biceps bulging up enormously the more he continues to lift and flex. He does this several times, you do not really bother counting since your eyes are fully focused on his physique, and he seems to really put on a show everytime he brings those rocks close to his chest, then slowly brings them low, on one arm, then the other... It is almost hypnotic.";
	WaitLineBreak;
	say "     With every repetition, you notice Elstan's cock poking out of his furred sheath, but you try your best to keep your focus on his muscles as he goes over his exercises. His erection, however, continues to grow, and it becomes hard to keep your eyes on one place. He does not seem bothered by this in the slightest, however, since he continues doing those lifts like nothing is happening, and as time passes by, his beasty musk becomes more evident. The werewolf breathes more intensely as he continues to push his muscles to the limit, and seemingly very happy to have an attentive spectator. That huge cock of his continues to throb alongside his every exercise.«, enormous nuts hanging underneath that make you think of how massive his loads must be...";
	say "     'Hey, got lazy eyes or something? Thought you wanted to look at my muscles, not my dick...' he says, but it is so hard to ignore something so big throbbing right before your eyes as he continues to pump his godlike physique... Or, at least, you tell him something along those lines. 'Sure, a little slut like you can't help but admire a big werewolf hunk like me, that's only natural... Though, I think it's time you pay up. This show ain't for free...' With that said, Elstan moves back towards you, and almost too quickly for you to even realize, he grabs you by the back of your head and plants your face directly into one of his sweaty armpits, a sudden wave of heat crashing over your features with the musky scent of a lupine beast.";
	WaitLineBreak;
	say "     'Lick them up. I worked up a sweat... hehe.' Locked by his strong arm with overwhelming force right under his pit, it seems you have no other choice but to do as he says, lest you want to risk getting your head even more smothered than it is right now, as you do not think Elstan will let you go until he is satisfied. To make the werewolf happy, you oblige and give his fuzzy pits several licks, feeling the salty sweat on your taste buds with every move. Your vigorous efforts are noticed by the lupine man himself, who grunts appreciatively as he pats your head. 'Now that's a really good [boygirl]! Taking great care of your favorite werewolf, eh? You like that?' His voice is loud enough to call the attention of others... Not that you can see anything, however. There is only darkness surrounding your eyes, followed by armpit fur.";
	say "     'Sure you do, bitch... Here, have my other one, still needs a good licking,' he says as he moves your head to his other pit, having you put your tongue to work on that one as well. The way Elstan is grabbing you makes your body face his directly, and with it, that huge hard cock of his finds a nice resting place against your torso's front, while throbbing and warm. You even think he might be enjoying the skin on skin contact as he does keep rubbing it against you while you are busy licking up his sweat. 'Keep that up and I might have to get you doing more of this... Surely you wouldn't mind being my personal pit licker, would you?' He then pulls the rest of your body close to him, giving you a light squeeze as you continue to wiggle your tongue around the damp pit, the musk of it and the heat eventually making you feel slightly lightheaded.";
	WaitLineBreak;
	say "     Although, you cannot help but feel the arousal that comes from the body contact with the huge werewolf, with all those hard muscles surrounding you as they are. It only makes it harder to say no to him, to the point you instinctively refuse to even consider that option. Though, as things get even hotter and steamier, Elstan pulls you away with a big wide smile on his face, fresh air now breathable as you attempt to recover from that. 'Alright, that's enough. More than that and it'll seem I'm rewarding you. A little bitch like you would certainly be fucking enjoying this...' Amidst your horny dizziness, and as you catch your breath, you happen to point out that he still has this enormous erection which was left unattended.";
	say "     'Oh, yeah... Such a shame, isn't it?' He then makes it bounce up and down on its own as it throbs rock hard, your eyes involuntarily following its movement before you realize your full attention had shifted towards it. 'Look at that... can't help yourself but stare a it... Though, I've got a workout to finish. Keep this image in your mind for the next time I'll need to use you, yeah? Know you've made big Elstan here happy... Hehe...' Absolutely shamelessly, Elstan simply turns his attention back to the next exercises he had planned, even as his stubborn erection continues sticking upwards as it is, for any passersby to see. Obviously, the other werewolves cannot help but peek at the great specimen that Elstan is, working on his phenomenal physique with his huge hard cock dandling around.";
	WaitLineBreak;
	say "     And you are just left there with your own lusts unattended. Maybe it would be wise to not push it, however, and take care of them somewhere else...";
	if Loyalty of Elstan < 10:
		say "     [bold type]In his own way, Elstan seems to have appreciated that.[roman type][line break]";
		increase Loyalty of Elstan by 1;
	NPCSexAftermath Player receives "Other" from Elstan;
	increase Libido of Player by 50;

Section 1-2-1 - Elstan Oubliette Scenes

to say WerewolfBruteLairElstanWorship:
	say "     You hear the noisy trapdoor above you open as the shadow of a very, very large and muscular werewolf brute looks down on you with a fierce look, his eyes piercing your soul like shiny and small dots of light. He only makes a grunt as he inspects you from a distance. 'You'll do,' he says, as he pulls you from the oubliette with the force of a beast, so effortlessly that you could as well be made of only feathers. You have seen large werewolves, but this one is especially big, he could very well have fooled you as the alpha brute. 'I don't like sharing. You're my bitch and only mine for now. Got it?' His voice is deep and commanding, almost to a threatening level, so you nod to him. 'Good. You're coming with me.' You immediately [bold type]recognize this werewolf as Elstan[roman type], who seems keen on using you for his personal pleasure this time.";
	if "Pride Hurt" is listed in traits of Elstan:
		WaitLineBreak;
		say "     [italic type]Although, given your recent interactions, you remember that you have managed to piss the werewolf off with a certain attitude of yours. 'Heh... So you're a little bitch after all, still coming here out of your own volition...' You get the feeling that he does not seem to have forgotten that, either.[roman type][line break]";
		WaitLineBreak;
		say "     'Don't worry, I'll take special pleasure in putting you in your place... Because you're a fucking little slut. And you come here because you can't help it. It's in your nature, isn't it?' With that having been said, the brute roughly puts you over his shoulder and starts walking, carrying you with one arm wrapped around you and his hand on your butt. He does not seem to want to linger in the pit, as he goes straight into the dorms area. You are brought to one of the bedrooms, which seems to be a private one, his, to be exact. There, he keeps you hanging over his shoulder, with your face hovering just above his furry pecs. 'You just wanna be a cum rag for us big wolves, don't you? I know that's what you want... You can tell me all about it, now that it's just you and me here...'";
		say "     You notice that as he keeps talking, that huge cock of his continues to pulsate harder and harder, as if talking to you like that actually turned him on. Obviously, you fail to turn your eyes away from such a thick, meaty wolf prick that keeps practically calling out to you with each throb. 'If you weren't such a pussy and were actually straightforward with your feelings towards me, you know... I'd make you the happiest bitch in this fucking shithole. Alas, you're keen on fucking with me, instead. Which I'd respect, if I didn't keep finding you in the fucking slaves' pit!' He has a point, which you nod to as he continues to speak, 'But that just shows you're not just a bitch, nor a slut. You're a fucking shameless whore. And you can't even look away from my dick while I'm talking to you!'";
		WaitLineBreak;
		say "     That really would be asking too much, especially when his monstrous shaft continues to throb right in front of you, even leaking precum as he carries on saying all that nasty stuff to you. There is no doubt about this, it turns him on talking rough to you. 'You know what? I was gonna do the usual with you, but seeing you looking over my dick as you are, like a starving bitch who just couldn't get any cock for themselves for a whole year, I'm actually feeling sorry for you. So... How about this, instead...' As he says this, you almost [italic type]feel[roman type] him grin as he grabs your head by the back of your skull and moves your forward, towards his cock. Once your upside down face is lined up with that huge thing, he pulls you to him, thrusting his tool against your lips and forcefully pushing it in.";
		say "     His grip on your butt is tight, and he continues to caress your asshole with one of his thick fingers as he pulls your head all the way down his cock. You cannot possibly take all of that comfortably, but he simply does not care, and is rough in the way he forces you to deepthroat him. 'Hope you choke on it, slut. And you better, or it's no fun... Hehe...' With his intent keen on further humiliating you, he thoroughly fucks your throat as if it were a common fleshlight, forcing you to swallow it and depriving you of breathing. This is all about him and his pleasure, and for him, it just feels better if you struggle, which you inevitably do. This is a really strong werewolf handling you like a fucktoy, pounding your throat like he would fuck a hole, all while laughing at your misery.";
		WaitLineBreak;
		say "     'That's not what you wanted? The best fucking cock in the whole den? Well, then take it, you bitch! If you do well enough, I might switch entries... Now that you'd love, wouldn't you?' You can almost tell he gets off more from the way he treats you than by actually attempting to choke you out with his cock, but he keeps his moves relentless, threatening to dislocate your jaw as he buries all he can of his meat down your throat over and over for so long that you even begin to feel numb around your face's lower half. Having made a mess of spit and precum all over, trailing from various points of your face and his cock all the way to the floor, he finally decide to pull you away, finally granting you a respite of fresh breathable air, despite your need to cough. And, you guessed it, the view really turns him on.";
		say "     'You look like shit. Good.' As his cock gives yet another throb, Elstan tosses you onto the bed, smirking happily at the sight of your defeated state. 'Bend over the bed. I've deemed you worthy of getting fucked properly. Your lucky day.'";
		NPCSexAftermath Player receives "OralCock" from Elstan;
	else:
		say "     With that having been said, the brute roughly puts you over his shoulder and starts walking, carrying you with one arm wrapped around you and his hand on your butt. He does not seem to want to linger in the pit, as he goes straight into the dorms area. You are brought to one of the bedrooms, which seems to be a private one, his, to be exact. Then, as you thought you were going to be put on the bed, the werewolf instead tosses you onto the floor. 'That's your place. At least until you prove yourself.' He then moves his large paw over your face and presses down on you, obscuring it entirely from outside view. 'Worship me, bitch. Work that tongue over my soles. And you better do it right!'";
		WaitLineBreak;
		say "     You get the feeling he is not fully aware of how strong he is. There is barely any room to move your mouth around his large paw, but you try your best, sticking it out and licking over his soles the best way you possibly can, as enthusiastically as you can get. As you half expected, the brute does not really bother praising you for your effort, only giving himself sexual satisfaction as he observes you, jerking his huge canine cock with your eyes locked on your movements. He grunts, only occasionally, but out of some pleasure he gets from demeaning you, as you can tell. The brute often keeps grinding his footpaw against your face, only to feel greater stimulation from your hard work. 'Hrr... Get it between the toes... Just like that...'";
		say "     The increasing momentum you feel is a great indicative that the brute is truly enjoying himself, despite how grumpy he sounds. He seems to be jerking off faster as he forces you to worship his feetpaws, the rush of power getting him more and more horny. It helps the fact that you really cannot even match his physical strength, even if you wanted to try, as this brute is so ridiculously strong. However, the time he spends with his footpaw on your face comes to an end, as he seems to have had enough. 'I'm so fucking horny... Bend over the bed. Ass up,' he commands, impatiently waiting for you to get up as he puts his foot back and watches you. 'Quickly, bitch! Or you'll get me all soft again from waiting!'";
		WaitLineBreak;
	say "     When you finally manage to put yourself in position, the werewolf is already moving in to grope at your butt, give it a few hard slaps and enjoy your reactive flinching, as each time it grows more painful. Although, as you glance over your shoulder, the brute's cock keeps on throbbing, looking even bigger and harder than before. 'Does it hurt? Aw... Poor little bitch can't take a beating from a real alpha werewolf like me? Just wait until I'm done with you...' he mocks you as he places his dong right between your asscheeks, determined to take your anal entrance. It truly makes you almost yelp as he presses his girthy dong against your hole, slowly pushing it in with only his leaking precum serving as lube.";
	say "     'That's it... Ease in, bitch, you ain't gonna be rid of me so soon...' He leans over you, his muzzle close to your ear, as he whispers these words that are meant to taunt you, all while he shoves more and more of his girthy inches inside you. It feels like he is stretching your entire rear with every thrust he makes deeper, forcing you to arch your back and try your best at relaxing. His muscular arms are wrapped around your torso, his claws lightly scratching your chest, when one of his thick hands finds its way to your neck, grasping and squeezing it just enough to make you gasp. The control he has over you is absolutely intoxicating, rendering you powerless as you take his huge cock all the way to the knot.";
	WaitLineBreak;
	say "     'Your ass is so tight... Just the way I like. I'll leave you all stretched up... You won't even feel your legs...' he continues as he picks up the pace, his thrusts becoming deeper, harder and done faster, pounding your ass like a beast in heat, unable to stop nor slow down as soon as he catches his desired rhythm. This leaves you feeling utterly opened up from behind due to how thick his cock is, the length easily reaching [if player is male]your prostate, smashing it continuously and causing[else]quite sensitive depths, able to make you quiver from the[end if] tingling, overwhelming pleasure. It comes you a point you cannot help but moan, and each time you do it, the werewolf grasps your neck tighter just to hear you wheeze instead. You swear his cock throbs only at the sounds you make due to this.";
	say "     Then, you are violently pushed forward, slamming your face and arms against the bed, as the brute takes hold of your hips, changing to doggy style. 'I'll fucking breed you until you leak my cum from every hole in your body, cocksleeve. That's all you're good for.' With this said, he [italic type]really[roman type] picks up the pace. As before he was fucking you fast and hard, he know moves like a battering ram, pounding your ass with such speed and force that you feel your insides bouncing within your body... and an incredible pleasure in your rectum. You moan, groan and beg for more, lost in your lust, not necessarily with your words but with your body language, which pleases the werewolf.";
	WaitLineBreak;
	say "     'My balls are so fucking heavy... Fuck, I gotta... Hnng...!' You hear him roar as he makes one final push, his swollen knot going past your anal ring as he fully buries that big girthy rod inside you, throbbing and throbbing... Until this huge, ridiculous, even, load of warm beastly cum invades your bowels and begins to fill you almost like a balloon, swelling your belly in almost an instant, and extending through what seems like a full minute. 'Oooh yeahh... Good cum dumpster, heheh...' While he is still shooting into you, the werewolf leans down again, wrapping his muscular and furred arms around your torso and resting his muzzle next to your skull, just above your shoulder.";
	if "Pride Hurt" is listed in traits of Elstan:
		say "     [italic type]'I hope you've learned to be a good bitch now... But I'll be sure to remind you whenever you step out of your limits. And actually... I've got several more loads to fill you up with. But I'm still not gonna be nice about it, because... I get the feeling you like it. And since my mood has improved...'[roman type] he then licks your face with his large tongue, coming from a maw that could terrify anyone with all those sharp teeth and a gaping end. 'Keep being good and Elstan here will take good care of you. The other sluts will envy you, because you get to have my attention while they don't...' You can feel him already wanting to pound your ass again, even as his knot is still keeping him inside you, allowing little movement, but you know what expects you as soon as he finally gets his inevitable freedom back...";
		TraitLoss "Pride Hurt" for Elstan;
		WaitLineBreak;
	else:
		say "     'Mmh... Looks like we'll have to wait, now... I'm pleased with you. Hope you don't have any plans for today, because... I still got a few more loads to put in you...' he informs you, licking your face with his large tongue, coming from a maw that could terrify anyone with all those sharp teeth and a gaping end. 'There's a reason they call me the big bad wolf... heheh...' You can feel him already wanting to pound your ass again, even as his knot is still keeping him inside you, allowing little movement, but you know what expects you as soon as he finally gets his inevitable freedom back...";
		WaitLineBreak;
	clear the screen;
	say "     You have completely lost track of time and fail to realize how long it has passed, but when you regain awareness of your whereabouts, you find yourself back in the oubliette with a very swollen belly and several small puddles of cum next to your butt. It is still leaking, even, and your hole has been in better conditions. It feels stretched and overly-sensitive, but worse, you really cannot feel your legs. They barely obey your brain, which is not good if you intended to be able to walk. Perhaps you should rest a little longer...";
	NPCSexAftermath Player receives "AssFuck" from Elstan;
	if Libido of Elstan is 1:
		now Libido of Elstan is 2;
	else if Libido of Elstan is 2:
		if Loyalty of Elstan < 10:
			say "     [bold type]In his own way, Elstan seems to like you more.[roman type][line break]";
			increase Loyalty of Elstan by 1;


Section 2 - Elstan Special Scenes

to say ElstanTalkGiftJett:
	say "     You take a deep breath before you bring this subject, as you have a feeling Elstan will not take it too greatly, but you have decided to give it a shot. Politely, you tell him that you have a message from the alpha werewolf, or rather, a request. He immediately interrupts you, puffing out his chest as he places his hands over his hips. 'Oh, the alpha has a [']request['] for me and he sends his new little bitch to deliver the message? Cute. You really are a little slut, aren't you? Doing everything you're told?' He then laughs, just enjoying making fun of you for a while. 'Now, what does his royal ass want? I'm actually curious. It's not everyday I get asked a personal favor from him.'";
	say "     As uncalled for as that was, you have a task at hand and intend to complete it, so you disregard Elstan's attitude and proceed to inform him of Jett's will. He... does not look happy upon hearing your words. 'What the fuck? He wants me to do his job?! And not only that, just the job he could very well fucking do on his own and leave me in charge of things that matter, since he can't fucking do it at all! That fucking prick sends you here for what, so I don't fucking punch him in the face?!' You swear even his massive muscles start pumping at the rage that has been built inside him. He really does not seem to like Jett, and now you really just had been shown proof of that. Nonetheless, your job is not done...";
	WaitLineBreak;
	let bonus be (( charisma of player minus 10 ) divided by 2);
	let diceroll be a random number from 1 to 20;
	say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]12[roman type] (Charisma Check):[line break]";
	if diceroll + bonus >= 12: [Managed to calm him down]
		say "     Perhaps you feel inspired today, or you are just extremely charismatic, but you manage to pull the seemingly impossible. Through a carefully placed speech and words, you try telling Elstan that, perhaps, this is Jett's way to show he trusts him and wants to find a way to improve their relationship. It may be because he cares that he has sent you to ask Elstan to replace him for a while, and this is more of a test to you than it is to him. The brown muscular werewolf seems to think twice before he says his next thing.";
		say "     'Alright, look. I don't fucking like when he just picks me as his second option, or uses me to cover the frickin' holes he leaves behind. Well, I'd gladly put my dick in his asshole to teach him a fucking lesson, but you get what I mean. It just fucking sucks to be in my place! All I get from him is this kind of treatment, as if I'm secondary! Or if I just wasn't good enough for his standards. Whatever, I still think I should've taken his place because I'm plain better at doing his job than he is.' You give him an understanding look, but then, you figure you can tell him that if he does prove he can do a better job than him, he might be sending the right message to the alpha.";
		WaitLineBreak;
		say "     'Hm... You do have a point. I can do gatekeeping. And I can do it better than him. Yeah, I'll just show him that. You know what... You're not that bad after all. Still a little bitch, and I'll still make fun of you and treat you like one, but at least I know deep down you've got a brain. That's better than most...' The way he glares at you once he says that makes you feel a little uneasy, but you thank him for his... compliments? Let us call them that, for now.";
		say "     'Go [bold type]tell Jett[roman type] I'll be there. Just gimme a sec,' he says, before you have confirmation that your task is on its way to completion.";
		if Loyalty of Elstan < 10:
			increase Loyalty of Elstan by 1;
		now Resolution of JettDominance is 3; [persuaded Elstan successfully]
	else: [No luck there...]
		say "     You try to reason with Elstan, but he is having none of that. He truly thinks Jett is being an asshole by doing this. 'Fuck you! And fuck him! I'm not doing any of that. Good fucking luck trying to be his little bitch, you're not getting his favor at the cost of my fucking hard work!' Well, that complicates things. You cannot really return to Jett without completing this, so... What shall you do?";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Take even more time trying to convince him.";
		say "     ([link]N[as]n[end link]) - Just beg him to do this for you and tell him you would do anything for it.";
		if Player consents:
			say "     Well, this is going to take a while, but you really have to succeed in this task. Figuring that Elstan will need a whole lot of convincing, you give up on your next few hours to follow him on his workout routine, much to his annoyance.";
			WaitLineBreak;
			follow the turnpass rule;
			say "     'You're really insistent, aren't you? Or you just like watching me lift some weights and punch stuff? Because if it ain't none of that, I'm thinking you're just trying to piss me off.' You tell him it is not that, in fact, you are simply trying to fulfill a request the alpha werewolf brute dearly asked of you. Though, everytime you mention Jett, Elstan grunts and reacts negatively. You know for a fact there is some rivalry between them, which is indeed adding a certain difficulty to this task. Nonetheless, you must insist, and so, you try to spend some time accompanying the muscular werewolf's exercises. Amidst one, he puts his weights on the ground and looks at you dead in the eye.";
			say "     'Fuck this, I'll do this fricking stupid shit he asked so you can fuck off and leave me alone! Fuck's sake, how can you be so fucking persistent?! That ain't the kind of bitch I like, for sure. Not one who bitches about what they fucking want done for them!' It is clear Elstan does not like being told what to do, but it is not like you were given any choice. He forced you to insist... 'Just go fucking [bold type]tell Jett[roman type] I'll be there, I need only a sec to get finished around here. And you... Just fuck you! I'll fist your ass open senseless right on spot if I have to look at you any fucking minute longer!' He then turns around to leave and finish his workout.";
			WaitLineBreak;
			say "     Your persistence tactic worked, and so, you can call this quest a success. Now, you can go back to Jett.";
			now Resolution of JettDominance is 4; [persuaded through persistence and exhaustion]
		else:
			say "     Out of desperation, you simply beg him to please take the spot, and that you shall do anything for him to make that happen. You think that just annoyed him even more, but that also caused his hanging furred sheath to thicken visibly. 'You fucking slut... Is that all you've got to say?! So things don't work out in your favor and you just beg like a bitch? You truly are one, after all!' He then walks towards you and, suddenly, you find yourself pinned against the wall, with his large paw-like hand surrounding your neck...";
			WaitLineBreak;
			say "     'Beg me. Go on... Do what you do best, slut...' He leans his head over to the side of your skull, then presses his muscular chest against your body, and you start feeling something throbbing against you, as if it was just slowly growing. This is the game he wants to play, so you oblige, although the force of his thick fingers around your vulnerable throat is making it somewhat difficult for you to speak. You give him what he wants to hear and beg him to help you, which makes him growl lowly. 'Bitches like you turn me on, you know... But it's such a shame you simp for that crappy alpha over there when you could have someone so much better to serve...'";
			say "     His grasp tightens, which makes you whimper, and in turn, the werewolf gives your whole face a big and long lick. 'I'll go take that fake-ass alpha's spot, since you really want his dick up your [if player is female]pussy[else]ass[end if], just so you can get that curiosity out of your mind. You've got a much better one here, longing to breed you like the good bitch you are...' You then feel a very girthy and heavy cock slapping against your midriff. 'Consider this a favor from me... I don't give them away that often. And in turn... just get down under that trapdoor over there, and I'll grab you for a good, deep, hard fuck...' Elstan then gives your face another lick before telling go of your neck, which aches from the strain. 'Go [bold type]tell Jett[roman type] I'll be there, I just need a sec.'";
			WaitLineBreak;
			say "     Now, you can finally catch your breath as the werewolf steps back from you, looking at you dead in the eye. It makes your heart skip a beat before he turns around to go finish his workout.";
			say "     You have had your own reasons to do this, but whatever they were, it made you feel quite dirty. Either way, you can go back to Jett.";
			if Libido of Elstan < 1:
				now Libido of Elstan is 1;
			now Resolution of JettDominance is 5; [persuaded Elstan... through questionable ways]

Elstan ends here.
