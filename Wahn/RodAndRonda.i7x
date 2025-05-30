Version 1 of RodAndRonda by Wahn begins here.
[ Original by Stripes                                             ]
[ Version 1.3 - Flagging fight w/Slut Rat as a situation          ]
[ Version 2.0 - Rework of both chars                              ]

[ Rod                                                             ]
[                                                                 ]
[ Background:                                                     ]
[   - 18 years old, just had a birthday a day before the outbreak ]
[   - has a violent dad with bitchy stepmother                    ]
[   - does not want to go "home", prefers the mall                ]
[                                                                 ]
[ Language: Skater boy talk                                       ]
[     Dude/Dudette: person                                        ]
[     Mob: to have bad style, bad behavior                        ]
[     Thrasher: an avid or enthusiastic skater                    ]
[     Snake: someone who cuts you off, rude                       ]
[     Stoked: happy                                               ]
[     Poser: pretender, fake                                      ]

Section 1 - Rod

Table of GameCharacterIDs (continued)
object	name
Rod Mallrat	"Rod Mallrat"

Rod Mallrat is a man.

Rod Mallrat is in Mall FoodCourt.
Rod is a trader.
ScaleValue of Rod Mallrat is 3. [human sized]
SleepRhythm of Rod Mallrat is 0. [0 - awake at all times, 1 - day active, 2 - night active]
Body Weight of Rod Mallrat is 3. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Rod Mallrat is 5. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Rod Mallrat is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Rod Mallrat is 5. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Rod Mallrat is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Rod Mallrat is 5. [length in inches]
Breast Size of Rod Mallrat is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Rod Mallrat is 2. [count of nipples]
Asshole Depth of Rod Mallrat is 8. [inches deep for anal fucking]
Asshole Tightness of Rod Mallrat is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Rod Mallrat is 1. [number of cocks]
Cock Girth of Rod Mallrat is 2. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Rod Mallrat is 6. [Length in Inches]
Ball Count of Rod Mallrat is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Rod Mallrat is 2. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Rod Mallrat is 0. [number of cunts]
Cunt Depth of Rod Mallrat is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Rod Mallrat is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Rod Mallrat is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Rod Mallrat is false.
PlayerRomanced of Rod Mallrat is false.
PlayerFriended of Rod Mallrat is false.
PlayerControlled of Rod Mallrat is false.
PlayerFucked of Rod Mallrat is false.
OralVirgin of Rod Mallrat is false.
Virgin of Rod Mallrat is true.
AnalVirgin of Rod Mallrat is true.
PenileVirgin of Rod Mallrat is false.
SexuallyExperienced of Rod Mallrat is true.
TwistedCapacity of Rod Mallrat is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Rod Mallrat is true. [steriles can't knock people up]
MainInfection of Rod Mallrat is "Mall Rat".
Description of rod mallrat is "[roddesc]".
Conversation of Rod Mallrat is { "empty" }.
The scent of Rod is "[if HP of Ronda is not 100]Rod smells of rats and his mall home[else]Rod smells of slutty rats and sex. Lots of sex[end if].".
The icon of Rod Mallrat is figure of Rod_icon.

to say roddesc:
	project Figure of Rod_icon;
	if Rod is in Mall FoodCourt:
		if MaleInterest of Player is false: [no sexual interest at all, more neutral description]
			say "     Rod is an anthro rat rocking a skater look, consisting of grey khaki-punk shorts and a tank top depicting a cow being abducted by an UFO. A shiny silver earring in his left earlobe rounds out the outfit and provides some extra cool points. He's about average height for a human, his slender rodent body mostly covered in white fur, with just his shoulders and part of his face being grey, as well as having a mop of black hair on top of his head. A pink, twitching nose surrounded by fine whiskers and sky-blue eyes are the other noticeable features of his face. Pink-skinned hands, slender feet and a long tail round out the image of the young man.";
			if Ronda is not in Mall Atrium:
				say "     Currently, he's looking like a wreck, with dark circles under his eyes as he's not getting any sleep from what happened to Ronda. Worry is drawn all over his features, and he paces up and down trying to think of something to do.";
			else:
				say "     As he notices your attention, the mall rat gives you a smile and little wave. Cheerful and fairly relaxed, the young man is propped up against the wall, idly listening to some music through a pair of earphones that look fairly comical clamped over his overlarge ratty ears.";
		else: [player interested in men and pays more attention to his body]
			say "     Rod is a handsome anthro rat rocking a skater look, consisting of grey khaki-punk shorts and a tank top depicting a cow being abducted by an UFO. A shiny silver earring in his left earlobe rounds out the outfit and provides some extra cool points. He's about average height for a human, his slender rodent body mostly covered in white fur, with just his shoulders and part of his face being grey, as well as having a mop of black hair on top of his head. A pink, twitching nose surrounded by fine whiskers and sky-blue eyes are the other noticeable features of his face. Pink-skinned hands, slender feet and a long tail round out the image of the young man.";
			if Ronda is not in Mall Atrium:
				say "     Currently, he's looking like a wreck, with dark circles under his eyes as he's not getting any sleep from what happened to Ronda. Worry is drawn all over his features, and he paces up and down trying to think of something to do.";
			else: [normal]
				say "     Inevitably, your gaze wanders down south, checking out his bulge. Rod notices your pointed stare and a grin flickers over his features, with the mall rat pushing out his chest a little bit to show his best side. Things don't go further than that as he doesn't seem interested in flirting, but he's sure a little flattered by the attention. Cheerful and fairly relaxed, the young man is propped up against the wall, idly listening to some music through a pair of earphones that look fairly comical clamped over his overlarge ratty ears.";
	else: [Todo: Rebuild Slutrat description]
		if FemaleHermInterest of Player is false:
			say "     Rod has become a slut rat. She has wide hips, a tight waist and large bosom. She has a black leather outfit like most of the other slut rats, though hers is certainly much skimpier, showing off her new breasts, cute ass and bulging crotch. She has a very feminine face, though you can still pick out a few traces that remind you of the old Rod to help you identify her. She has black fur and a long, naked rat tail. She's managed to keep some of her personality thanks to Ronda, but is thoroughly a horny slut rat now.";
		else:
			say "     Rod has become a sexy slut rat. She has curvy hips, a tight waist and large bosom. She has a black leather outfit like most of the other slut rats, though hers is certainly much skimpier, showing off her new breasts, cute ass and bulging crotch. She has a very feminine face, though you can still pick out a few traces that remind you of the old Rod to help you identify her. She has black fur and a long, naked rat tail. She's managed to keep some of her personality thanks to Ronda, but is thoroughly a horny slut rat now.";

instead of conversing Rod Mallrat:
	project Figure of Rod_icon;
	if PlayerMet of Rod Mallrat is false:
		say "     As you approach, the mall rat's hand dips into his pocket to pull out a music player and pause it, then tugs his earphones down so they rest around his neck. 'What up?' he says with a smile, flicking some strands of his black hair out of his face so he can meet your gaze with his active, sky-blue eyes. Pushing himself away from the wall he was leaning against, the young man takes a step forward and adds, 'Haven't seen you around here before, so welcome to the Smith Haven Mall, [dude]! I'm Rod. Always stroked to meet new people! At least those that aren't going to go mob on folks, you know.' Gaze flicking to the entrance of the mall for a second, he shudders a little, then quickly pushes any worries about the outside aside. 'So, you coming to stay? To wait out all the craziness going on out there?' Rod asks next, giving you a friendly and curious expression.";
		say "     You introduce yourself in turn, then give a casual explanation of what brings you to the mall today, to which the mall rat listens attentively. 'Wow, so you go out there on the streets regularly? All over the city? Man, that's pretty gnarly! Most of the refugees coming in are telling scary stories about everything going on out there. Really not my scene, to roam the streets Mad-Max style. Guess we were the lucky ones, hanging out here when things went down. Got everything we need, right here in the mall. My girl, the other rats, and all the cool stuff from the stores. Of course, for the best things, one has to wait a bunch until it's your turn. I keep myself busy tinkering with stuff in the meantime. So if you got something to trade, I might be interested in that.'";
		now PlayerMet of Rod Mallrat is true; [met and introduced]
		say "[RodTalkMenu]";
	else:
		say "[RodTalkMenu]";

to say RodTalkMenu:
	say "     [bold type]What do you want to talk with Rod about?[roman type][line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Talk about his background";
	now sortorder entry is 1;
	now description entry is "Let him tell you about himself";
	[]
	if tmapfound is 1:
		choose a blank row in table of fucking options;
		now title entry is "Show him the treasure map you found";
		now sortorder entry is 10;
		now description entry is "Maybe Rod can read it";
	[]
	if hospquest is 8 and nerminepackage > 0 and "Jaguar Orderlies Discussed" is not listed in Traits of Rod and HP of Ronda is not 100:
		choose a blank row in table of fucking options;
		now title entry is "Ask him about the jaguar orderlies visiting the mall";
		now sortorder entry is 11;
		now description entry is "Maybe Rod knows about what went down with them";
	[]
	if AlexProgress is 2 and HP of Ronda is not 100:
		choose a blank row in table of fucking options;
		now title entry is "Ask him if he knows where Darrell is";
		now sortorder entry is 12;
		now description entry is "Maybe Rod can tell you where to find him";
	[]
	if HP of Ronda > 0:
		choose a blank row in table of fucking options;
		now title entry is "Talk about Ronda";
		now sortorder entry is 13;
		now description entry is "Discuss the things going on with Rod";
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
				let DoneTalking be false;
				now sextablerun is 1;
				if (nam is "Talk about his background"):
					say "[Rod_BackgroundTalk1]";
					now DoneTalking is true;
				else if (nam is "Show him the treasure map you found"):
					say "[Rod_TreasureMap]";
				else if (nam is "Ask him about the jaguar orderlies visiting the mall"):
					say "[Rod_JaguarOrderlyVisit]";
				else if (nam is "Ask him if he knows where Darrell is"):
					say "[Rod_Darrell]";
				else if (nam is "Talk about Ronda"):
					say "[Rod_RondaSlutrat]";
				if DoneTalking is false: [looping around for more talk options]
					say "[RodTalkMenu]";
				else:
					wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You say your goodbyes and step back from the slender mall rat.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say Rod_BackgroundTalk1:
	say "     'Ah, not that much to tell about me,' Rod answers with a shrug. 'Name's Rod, and I'm out of Cyprus Hills, ten minutes that way.' As he says this, the mall rat gives a vague wave towards the southwest. 'And no, I got no plans on going back there. I'm eighteen now, had my b-day a day before this whole mess started. Ronda, myself and a bunch of friends were actually here to celebrate when things went down. It was supposed to be a nice day at the mall, browsing the stores, lunch, watching a movie and all that. Didn't quite turn out as expected, eh? What a birthday present from the universe, pfft!' The anthro rodent rolls his eyes theatrically, but you can't help but feel that he's not really that bothered at having transformed into his current shape.";
	say "     'Anyways, my dad's a total bastard, and the stepmonster he dragged in last year is worse. So, fuck them, I got all I need right here. Not saying it wouldn't be kinda funny to swing by the place and see them turned into slugs or something like that! Though with dad's temperament, he might possibly have turned into some sort of ogre, snatching passersby and ripping off their arms and legs to chew on. Asshole broke more than one of my boards when he was in one of his rages.' As he says this, the young man absent-mindedly rubs the side of his chest. The somewhat pinched expression on his face makes you wonder if he's remembering some sort of physical incident... in any case, Rod falls silent after that, not too keen to continue the conversation right now.";
	TraitGain "Background Talk" for Rod;

to say Rod_RatTalk:
	say "...";

to say Rod_TreasureMap:
	say "     'Oh hey that scratching looks kinda familiar!' Rod says when you show him the map, snatching it out of your hands he looks at it from several angles. 'Aha! This is from Jarrod!' he says in an enthusiastic tone, then suddenly walks off on quick feet, clutching the piece of paper in his hand. You barely have time to make a sound of protest, at which point the mall rat absent-mindedly calls over his shoulder, 'Oh. I'll be right back, [dude]. Wanna show this to the others!' And with that, he vanishes between the throng of people coming and going to the food court. You've got no choice but to see your suspected treasure map be carried off with suspicious suddenness. Thoughts of the map being slapped on a photo copier crop up in your mind, but you tell yourself that this is a bunch of mall rats in the end. Of all people, they're the least likely to set out from the safe and comfortable confines of the Smith Haven Mall...";
	say "     Shrugging to yourself, you spend some time wandering around the food court, people-watching and listening to the bustle of activity. It does take quite a while, but eventually Rod returns, eagerly waving your message/map, as well as another piece of paper in the air. 'Hey [dude], sorry about the delay. Took a bunch of us to puzzle this stuff out, Jarrod has terrible handwriting, and we had to stop by the book store to get an atlas,' he says as he hands the documents over. 'Oh, sorry - guess I should explain about Jar a bit first. He's one of us, a real adventurous type though. I mean, most reasonable rats don't see the appeal to going out there into danger, and I got my own issues with going 'home' or anywhere near that place. Jarrod on the other hand, he just up and left after hearing people talking about some friendly sea rats twins down at the coast! All of us have been worried about where he might have gotten off to, as he's been gone for a good while. If you see him, please let us know that he's okay, right?'";
	WaitLineBreak;
	say "     Giving Rod a noncommittal half-nod, you then raise the map and the piece of paper, glancing down at it. Looks like the mall rats translated what was written on it, and wrote it down in a more readable fashion. 'Turns out that's some kinda map as ya figured. There were enough landmarks in his description for us to match the drawing up to a section of local costline. The x that marks the spot is on some island that ain't too far away from the beach actually. No clue what's supposed to be there though, but Jar did at a warning about pirates[if level of Player < 7]! You'd best toughen yourself up before trying to find a way over there[else]! Best be careful[end if].' Rod pats your arm, then adds, 'But I'm sure I don't have to tell you that. After all, you're the one regularly trecking through all the dangerous city roads and all that. A bit too much excitement for me, that's for sure. But I'm sure you'll have a rad story to tell after! And if ya see those sea rats, say hi for us too!'";
	say "     Having finished what he wanted to say, Rod then wanders back over to his usual spot in the food court. You're left standing looking down at your original map, and the translated map with a small speck of land not far off the coast circled - with this you might be able to find the pirates! And maybe some treasure too! [bold type]You'll need to find a boat first though, as it is a bit far to swim in the ocean currents... [roman type][line break]";
	increase tmapfound by 1;

to say Rod_JaguarOrderlyVisit:
	say "     As you mention the hospital and the jaguar oderlies who're serving as Doctor Mouse's muscle, Rod's expression darkens. 'Those big, spotted hairballs that rolled in here the other day? That was a bad scene, [dude]. They started to get fresh with some of the girls in the atrium and tried to drag them off. Well, we wouldn't put up with that! I mean, those dudes were scary, but there's a whole bunch of us mall rats!' As if to demonstrate his seriousness, Rod attempts to square his shoulders and makes a fist - which isn't all that impressive, given that he's built like a slightly muscular stick figure. Realizing this himself, the young man shrugs and gives you a smile. 'Okay, fine... we made a loud stink about them being asshats. Pelted them with thrown drinks, and someone threw a lit string of firecrackers. The noise of that drew the wolverines to move in to set them straight! But still, we had a talk with the security boss, and don't want none of them goons and their friends in here again!'";
	TraitGain "Jaguar Orderlies Discussed" for Ronda;

to say Rod_Darrell:
	say "     Asking for the guy that Alex wanted you to find in the mall, you get a nod from Rod. 'Darrell? Yeah, he was here when it all went down. But... you might be a little surprised[if HP of Ronda is 0 or HP of Ronda is 10]. Go talk to my girl, she knows where he is.'[else].' He shrugs, and points to the north. 'Go ask the others. They might know where he is.' He seems a little bummed.[end if]";
	if Ronda is not in Mall Atrium:
		say "     Following Rod's guidance, you arrive in the atrium of the mall and approach one of the various mall rats there. After going back and forth between a few of them, eventually someone says, 'Yeah, sure! I know where he is.' Half-turning away from you, she waves to someone and calls out, 'Darrell, c'mere!' Following his gaze, you see various people in the densely packed mall, but no one matching the description you were given. Then one of the mall rats of a somewhat further away group peels off and makes his way towards you, weaving in between the various passersby. Looks like the city's star point guard is now a good deal furrier and rattier. There's a hint of greater than usual muscle mass on his white-furred frame, but overall he's got the fairly slender build typical for the anthro rodents. As the man arrives, he gives you a casual nod, 'What's up?' You are introduced to each other, and after some brief explanation, the white rat nods.";
		say "     'You can go tell Alex I appreciate his concern, but I'm pretty good here at this point.' Not yet willing to admit failure in your task to bring him to Alex, you spend a minute trying to convince him to come with you, but he stands firm on it. 'Nah, I'm good here, man. Got all I need with my new friends,' Darrell finally states, then heads back to talk to some of the other rats, giving fist bumps to a buddy and then putting his arms around a pair of the girls. Letting out a sigh, you mentally prepare yourself to give Alex mixed news the next time you see him.";

to say Rod_RondaSlutrat: [leaving this here in case someone wants to play the old slutrat content]
	if HP of Ronda is 1 or HP of Ronda is 2:
		say "     [one of]'I miss my sweet Ronda.'[or]'Oh, hey there,' he says with a sigh.[or]'Watch out for those infected rats. Dunno where they came from, but they're bad news. The rats they get don't come back.'[at random]";
	else if HP of Ronda is 3:
		say "     [one of]'So, will you help me out?'[or]'Have you gone to find out what the dog-woman in the shop needs to help Ronda?'[or]'You should go visit Nermine and see what she needs. You promised you'd help fix Ronda.'[at random]";
	else if HP of Ronda is 4 or HP of Ronda is 5:
		say "     [one of]'Don't give up. Please keep looking for the stuff Nermine needs.'[or]'Thanks for helping me out.'[or]'Have you had any luck in finding the stuff to help Ronda?'[or]'Remember, she wanted something from a lizard girl at the park and the awesomest fruit you can find from the forest.'[at random]";
	else if HP of Ronda is 6:
		say "     'Thanks for helping me out. Good luck finding that other stuff.'[line break]";
	else if HP of Ronda is 7:
		say "     'Dude! Bring that to Nermine.";
	else if HP of Ronda is 8:
		if Slut Rat Den is unknown:
			say "     'Now comes the tough part, dude. You'll need to find the nest of those infected rats and all like black-ops infiltrate the place. They drag off anyone they beat, so the best way would be to let them catch you and see if you can learn the way there. I'd totally do it myself, but no rat they take ever makes it back.'";
		else:
			say "     'Well, since you know how to find them, now we need to figure out which one of them is Ronda. That'll be trickier. She's got a tattoo of a red heart on her thigh right by her... you know. She did it back when we started going out, before we became professional mall rats instead of just human ones. But the tattoo's still there, giving her a red patch of fur[if SlutRatDenPoolTable is 3].' Having gotten well acquainted with both Eight-Ball and Skeeball, you know neither of them have a mark like that. Nor have any of the others you've spotted. But that's only a handful of slut rats out of a few dozen who come and go[else].' Having spent some time with several of the slut rats, you've not spotted any of them with a mark like that yet. But that's only a handful out of a few dozen who come and go[end if].";
			say "     'You'll need to cozy up to the rats until you find Ronda,' he continues. 'Once you find her, get her somewhere alone and give her the stuff. Use these chocolates, bud. They're her fave. Just be careful. We'll only get one shot at this.'";
			now HP of Ronda is 9;
	else if HP of Ronda is 9:
		say "     'Please keep looking for my dear, sweet Ronda. She's got a heart-shaped mark right here,' he says, tapping at his inner thigh.";
	else if HP of Ronda is 10:
		say "     [one of]'Thanks for helping out with Ronda.'[or]'You got stuff to trade? I love tinkering with stuff. Just give it to me and watch me in action.'[or]'Dude, keep an eye on those rats. They're still down there.'[or]'Like the threads? My girl picked them out for me.'[or]'Dude, just chillin['].'[or]'Sup?'[or]'It's good to have Ronda back, but man, does she ever play rough now,' he says, rubbing his backside.[or]'Ronda and I really appreciate all your help getting us back together.'[or]'It's so nice having Ronda back. Though her new... ummm... you know... Got to get used to that.'[or]'I'm so happy that Ronda's back safe and sound.'[at random]";
	else if HP of Ronda is 99:
		say "[one of]'Oh, hey there.'[or]'You got stuff to trade? I could use something to tinker with to take my mind off things.'[or]'I miss my sweet Ronda.'[or]'Oh, hey there,' he says with a sigh.[or]'Please be careful. We don't want to lose you too.'[or]'Sup?'[at random]";
	else if HP of Ronda is 100:
		say "[one of]'Hey there, sweet stuff.'[or]'I'm still up for a little trading and tinkering. It gives me something to do between sex.'[or]'Thanks again for helping Ronda and I get back together.'[or]'Mmm... this new me is so sexy.'[or]'I only remember bits about my life before coming here, but it can't be as great as this.'[or]'We should play around again soon.'[or]'Everyone's been so nice to me down here, making sure I get fucked all the time.'[or]'Ronda's always got first dibs on me, but she loves seeing me get fucked by the others, too.'[at random]";
	else:
		say "[one of]'Oh, hey there.'[or]'You got stuff to trade? I love tinkering with stuff. Just give it to me and watch me in action.'[or]'I miss my sweet Ronda.'[or]'Oh, hey there,' he says with a sigh.[or]'Sup?'[at random]";

the fuckscene of Rod Mallrat is "[sexwithRod]".

to say sexwithRod:
	setMonster "Mall Rat";
	if HP of Ronda is not 100:
		if Ronda Mallrat is in the Mall Atrium:
			if HP of Ronda is 0:
				say "'Dude! I'm already taken. Ronda would kill me if I fooled around. Besides,' he adds with a wink, 'she's quite the sweet ride in the sack. I'm covered.'";
			else if HP of Ronda is 10:
				say "'Dude! You should know what Ronda'd do to me if I fooled around. Makes me sore just thinking about it.'";
		else:
			say "Rod just sighs sadly and shakes his head.";
	else if lastfuck of Rod - turns < 4:
		say "Rod smiles and runs her paws over her body. 'Mmm... that sounds like fun, but Ronda wants another go at me and she's got first dibs. Maybe later, sweetie.'";
	else:
		let x be 0;
		say "     Rod smiles happily at your offer and pops the few catches on her outfit, getting nude in record time. The slutty rat moans lustfully and drops to her knees in front of you. With her paws on your groin, she starts licking your crotch. ";
		if Player is male:
			let x be 1;
			say "She runs her tongue over your throbbing penis, then sinks her muzzle down over it, licking and sucking hungrily. Her paws tease your nuts and work the shaft as you start fucking the slutty rat's face. You run your hands through her dark hair and rub her ears, telling her what a good, slutty rat she is. Pleased by your words, her tongue and lips work all the harder to please you.";
		else if Player is female:
			say "She runs her tongue over your wet labia, then dives her tongue into your cunt, licking and lapping zealously. Her paws tease your clit and folds as you grind your pussy against her face. You run your hands through her dark hair and rub her ears, telling her what a good, slutty rat she is. Pleased by your words, her tongue and lips work all the harder to please you.";
		else:
			say "Saddened to see your bare groin, she nips and licks at it while running her paws along your thighs. She pulls you down to snuggle in her arms, guiding your lips to one of her nipples and coaxing you to nurse milk from her breast. As you drink down the ratty milk, Rod strokes a paw over your head, whispering that she'll help you get better while her other paw plays with your asshole, granting you a little sexual relief even as you start to feel the effects of her milk.";
			say "[slut rat growth]";
		if Player is male:
			if x is 1 and a random chance of 1 in 5 succeeds:
				say "     Really quite enjoying the slutty rat's tonguework, you run your hands over her head and keep thrusting into her mouth. With the prospect of receiving such a tasty treat from you, she starts licking and sucking all the more eagerly, intent on getting you off. You scritch her round ears and thrust into her muzzle, your cock throbbing and spurting precum across her tongue to be slathered across your meat. It's clear that Rod's new instincts (as well as all her recent practice) has made her quite good at sucking cock, and you cum with a loud groan as you feed your hot, thick seed to the horny rat slut.";
			else if a random chance of 3 in 5 succeeds:
				say "     With the foreplay done, Rod moves onto all fours and raises her tail, offering her wet pussy to you. Full of lustful excitement after the earlier play, you dive atop her, lining up your cock and sinking into her dripping folds. She moans loudly and starts rocking back onto your shaft, making a big show of it for those watching around you both. You run your hands over her body, tease her nipples and slap her ass a few times during your vigorous mating before finally blasting your hot load into the horny rat slut.";
			else:
				say "     With the foreplay done, you sit and pull Rod into your lap so she's facing away from you (and towards the other rats watching the show). Full of lustful excitement after the earlier play, she quickly gets her dripping pussy lined up with your [Cock of Player] cock and lowers herself down onto it. She moans loudly and starts bouncing eagerly on your [cock size desc of Player] erection, making a big show of it for those watching around you both. You run your hands over her body, tease her nipples and slap her ass a few times during your vigorous mating before finally blasting your hot load into the horny rat slut.";
		else:
			say "     With the foreplay done, you press Rod onto her back and grab her throbbing cock. Lining it up with your [if Player is female]pussy[else]asshole[end if], you sink yourself down onto it, eliciting a long moan from Rod. Her large shaft and hefty balls throb, clearly those having gotten less attention as she's the den's favorite bottom. She moans loudly and writhes in pleasure on the cushions as you ride her, making a big show of it for those watching around you both. She's better hung than the average slut rat despite her [']lowly['] position, giving you a greatly satisfying fuck out of it as well. When she finally cums, you both cry out loudly as her hot seed floods into your [if Player is female]womb[else]ass[end if].[impregchance]";
		infect "Slut Rat";
		SanLoss 5;
		decrease Libido of Player by 25;
		if Libido of Player < 50, now Libido of Player is 50;
		now lastfuck of Rod is turns;



Section 2 - Ronda

Table of GameCharacterIDs (continued)
object	name
Ronda Mallrat	"Ronda Mallrat"

Ronda Mallrat is a woman.

Ronda Mallrat is in Mall Atrium.
ScaleValue of Ronda Mallrat is 3. [human sized]
SleepRhythm of Ronda Mallrat is 0. [0 - awake at all times, 1 - day active, 2 - night active]
Body Weight of Ronda Mallrat is 3. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Ronda Mallrat is 4. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Ronda Mallrat is 8. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Ronda Mallrat is 5. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Ronda Mallrat is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Ronda Mallrat is 5. [length in inches]
Breast Size of Ronda Mallrat is 4. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Ronda Mallrat is 2. [count of nipples]
Asshole Depth of Ronda Mallrat is 8. [inches deep for anal fucking]
Asshole Tightness of Ronda Mallrat is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Ronda Mallrat is 0. [number of cocks]
Cock Girth of Ronda Mallrat is 0. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Ronda Mallrat is 0. [Length in Inches]
Ball Count of Ronda Mallrat is 0. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Ronda Mallrat is 0. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Ronda Mallrat is 1. [number of cunts]
Cunt Depth of Ronda Mallrat is 8. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Ronda Mallrat is 2. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Ronda Mallrat is 3. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Ronda Mallrat is false.
PlayerRomanced of Ronda Mallrat is false.
PlayerFriended of Ronda Mallrat is false.
PlayerControlled of Ronda Mallrat is false.
PlayerFucked of Ronda Mallrat is false.
OralVirgin of Ronda Mallrat is false.
Virgin of Ronda Mallrat is false.
AnalVirgin of Ronda Mallrat is false.
PenileVirgin of Ronda Mallrat is true.
SexuallyExperienced of Ronda Mallrat is true.
TwistedCapacity of Ronda Mallrat is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Ronda Mallrat is true. [steriles can't knock people up]
MainInfection of Ronda Mallrat is "Slut Rat".
Description of Ronda Mallrat is "[Rondadesc]".
Conversation of Ronda is { "empty" }.
The scent of Ronda is "[if HP of Ronda is not 100]Ronda smells of cheap perfume, rats and her mall home[else]Ronda smells of slutty rats, cheap perfume and lots of sex[end if].".

a postimport rule: [bugfixing rules for players that import savegames]
	if HP of Ronda is 100:
		now the icon of Rod Mallrat is figure of pixel;
		now the icon of Ronda is figure of RondaSR_icon;

to say Rondadesc:
	if HP of Ronda is 0: [Mall Rat]
		project Figure of Ronda_icon;
		if FemaleInterest of Player is false: [no sexual interest at all - more neutral description]
			say "     Ronda is a well-dressed and punk-stylish mall rat, with luscious brunette hair cascading over her shoulders and framing a face with large green eyes and a dainty rodent muzzle. Clearly taking very good care of herself, her cream-colored fur looks glossy and healthy, and the nails of her pink hands and feet are painted with shiny red nailpolish that has sparkly silver motes mixed into it. She is wearing a pair of denim short shorts that barely cover a few inches of her thighs, as well as a cute pink crop-top exposing her tummy. On the top, a dark pink oval draws attention to her chest, while at the same time bearing the words 'Sorry, I'm taken' - classic jealousy bait. A varsity jacket in light red and white, with the initials of a local college sports team, rounds out her outfit.";
			say "     As she notices your attention, a slight smirk crosses the young woman's face, and she angles herself to show off her good side, one hand casually brushing her long hair back. Her gaze flicks over to you for a second, as if to check if you're giving her the appropriate level of adoring looks, and being somewhat disappointed that she's not getting that. With a little bit of a huff, she moves her gaze back to focusing mainly on her fellow mall dwellers, giving special attention to other styled female mall rats. Her competition for status and attention, judging by the somewhat high-nosed looks she throws them, while giving 'lesser' females and male rats smiles and winks, chatting with those in her orbit.";
		else:
			say "     Ronda is a sexy, well-dressed and punk-stylish mall rat, with luscious brunette hair cascading over her shoulders and framing a face with large green eyes and a dainty rodent muzzle. Clearly taking very good care of herself, her cream-colored fur looks glossy and healthy, and the nails of her pink hands and feet are painted with shiny red nailpolish that has sparkly silver motes mixed into it. She is wearing a pair of denim short shorts that barely cover a few inches of her thighs, as well as a cute pink crop-top exposing her tummy. On the top, a dark pink oval draws attention to the small but perky breasts it covers, giving just a hint of her nipples pressing the fabric up over her breasts. At the same time, the top bears the words 'Sorry, I'm taken' - classic jealousy bait. A varsity jacket in light red and white, with the initials of a local college sports team, rounds out her outfit.";
			say "     As she notices your attention, a slight smirk crosses the young woman's face, and she angles herself to show off her good side, one hand casually brushing her long hair back. Her gaze flicks over to you for a second, as if to check if you're giving her the appropriate level of adoring looks, with a hint of a smile playing over her muzzle as she sees you're interested. Then she moves back to focusing mainly on her fellow mall dwellers, giving special attention to other styled female mall rats. Her competition for status and attention, judging by the somewhat high-nosed looks she throws them, while giving 'lesser' females and male rats smiles and winks, chatting with those in her orbit.";
	else if HP of Ronda is 10: [Old content (not reworked) - Restored Mall Rat (herm)]
		project Figure of Ronda_icon;
		say "     Ronda is mostly back to her old self, outwardly looking much the same, if perhaps a few inches taller. She has wide hips, a narrow waist and a good-sized bust, all covered in the latest of mall rat fashions. She wears a bright button that says 'Large and in charge!' Hmmm. Her naked, pink tail flickers with an unending energy as she looks about with active interest. Her lips are stained a deep red and her claws are all manicured and covered in sparkling motes. She takes care of herself, clearly. Even her white and spotted fur is glossy and healthy looking. If anything, she seems even sexier than before her disappearance. She certainly seems more popular, with a gaggle of giggling girls around her at all times as she [one of]talks about fashion[or]talks about boys[or]talks about her exciting adventure under the mall[or]talks about music[or]gossips with them[at random].";
	else if HP of Ronda is 100: [Old content (not reworked) - Slutrat]
		project Figure of RondaSR_icon;
		say "     Ronda is a slut rat now, with a sexy body, dark fur and a horny disposition. She wears a black leather outfit like the other slut rats and carries herself with confidence, being one of the earliest and most dominant rats in the group. And her new fucktoy, Rod, has made her even more popular, with her other slut rat sisters lavishing attention upon her to be allowed an opportunity to stuff her one-time boyfriend. Knowing to look for it, you can spot her heart-shaped marking on her thigh, though it's changed from red to a deep black, even darker than the fur around it. She may retain a few traces of her old personality thanks to having Rod there, but she is thoroughly a horny slut rat now.";
	else:
		say "ERROR-Ronda-[HP of Ronda]L: You should not be able to converse with Ronda at this point.";

[
'I know that this fashion line doesn't do your size. Did you sew that outfit yourself? Bit crooked there at the edge too. And I'm sorry to tell you, but even when you garb a pig in bright fabrics, it's still a pig inside.' Raising her eyebrow, Ronda gives Lisa a pitying look, then shrugs and starts to leave. Quite intentionally, she 'stumbles' as she does so, spilling the milkshake in her hand all over Lisa's top and soaking the fabric through and through.
]


instead of conversing Ronda Mallrat:
	project Figure of Ronda_icon;
	if PlayerMet of Ronda Mallrat is false:
		say "     As you approach, the mall rat's large green eyes flick up and down over you in a heartbeat, and you can't help but feel like your appearance and social standing just got taken in and judged. Apparently, you rank high enough to warrant a friendly smile from her, accompanying the words, 'Hey there, sugar. Welcome to the mall! You can call me Ronda.' As she says this, the rat half-raises one hand, wiggling her fingers more to show off their sparkly polish than to greet you. Introducing yourself in turn, you're guided along by her for a miniature tour of the mall, parading past several small groups of mall rats while Ronda points out what is where, and proclaims, 'Always nice to see new people come to visit our mall, especially if they have the good manners to introduce themselves to rats of importance.' She's giving some side-eye to another pretty rat nearby as she says it and plays up her own status, drawing a little jealous glance from that one. Looks like Ronda just landed the hit she wanted to make.";
		now PlayerMet of Ronda Mallrat is true; [met and introduced]
		say "[RondaTalkMenu]";
	else:
		say "[RondaTalkMenu]";

[
	else if HP of Ronda is 0:
		project Figure of Ronda_icon;
		say "[one of]'Hey there, sugar, you just call me Ronda.'[or]'You meet Rod? He's my boy. You be nice to him, or I will be very... upset.'[or]'Those clothes are out of date, hon. You should update your wardrobe.'[or]'Being a mall rat is way better than being a human, no offense or anything to humans.'[or]'We can find anything we need here in the mall; it is our Eden.'[at random]";
	else if HP of Ronda > 0 and HP of Ronda < 10:
		say "ERROR-Ronda-[HP of Ronda]T: You should not be able to converse with Ronda at this point.";
	else if HP of Ronda is 10:
		project Figure of Ronda_icon;
		say "[one of]'Those clothes are out of date, hon. You should update your wardrobe.'[or]'Being a mall rat is way better than being a human, no offense or anything to humans.'[or]'We can find anything we need here in the mall; it is our Eden.'[or]'Thanks again for the assist,' she says.[or]'Me and the girls are getting along really well since I got back. [']Really['] well,' she says with a wink and a grin.[or][if HP of Lucy is 0]'Have you met Lucy?' she asks, hugging one of the rat girls nearby. 'We've become good friends since I got back.' Lucy smiles and discreetly runs her paw over Ronda's lap[else]'I hope you and Lucy are getting along well. And don't worry, I'll keep an eye on her while you're away,' she says with a wink[end if].[or]'Rod's such a good boy. Knows his place.'[at random]";
	else if HP of Ronda is 100:
		project Figure of RondaSR_icon;
		say "[one of]'I feel so much better now that I have my sweet Rod to play with.'[or]'Feel free to play with Rod whenever I'm not using her.'[or]'I love living here with my slutty Rod and all my sexy friends. This is paradise.'[or]'Thanks again for your help with Rod. Having her here makes everything so much better.'[or]'Rod's such a good slut. Knows her place.'[at random]";
]

to say RondaTalkMenu:
	say "     [bold type]What do you want to talk with Ronda about?[roman type][line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Talk about her background";
	now sortorder entry is 1;
	now description entry is "Let him tell you about herself";
	[]
	if HP of Ronda is not 100 and hospquest is 8 and nerminepackage > 0 and "Jaguar Orderlies Discussed" is not listed in Traits of Ronda:
		choose a blank row in table of fucking options;
		now title entry is "Ask her about the jaguar orderlies visiting the mall";
		now sortorder entry is 11;
		now description entry is "Maybe Ronda knows about what went down with them";
	[]
	if AlexProgress is 2 and HP of Ronda is not 100:
		choose a blank row in table of fucking options;
		now title entry is "Ask her if she knows where Darrell is";
		now sortorder entry is 12;
		now description entry is "Maybe Ronda can tell you where to find him";
	[
	if HP of Ronda > 0:
		choose a blank row in table of fucking options;
		now title entry is "Talk about Ronda";
		now sortorder entry is 13;
		now description entry is "Discuss the things going on with Ronda";
	]
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
				let DoneTalking be false;
				now sextablerun is 1;
				if (nam is "Talk about her background"):
					say "[Ronda_BackgroundTalk1]";
				else if (nam is "Ask her about the jaguar orderlies visiting the mall"):
					say "[Ronda_JaguarOrderlyVisit]";
				else if (nam is "Ask her if she knows where Darrell is"):
					say "[Ronda_Darrell]";
				else if (nam is "Talk about Ronda"):
					say "[Ronda_RondaSlutrat]";
				if DoneTalking is false: [looping around for more talk options]
					say "[RondaTalkMenu]";
				else:
					wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You say your goodbyes and step back from the slender mall rat.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say Ronda_BackgroundTalk1:
	say "     'Oh, sure! I can tell you that you're speaking to one of the first mall rats! The original crew, you understand? Not a later arrival.' The last words are accompanied by a second of side-eye directed to one of Ronda's rivals in the social hierarchy of the rat pack, before she turns her full attention back to you. 'A little while back, the day all of this started, my man Rod and I, plus a number of our friends went to spend a day here in the Smith Haven Mall. It's always a blast to go browsing in all the stores, and we wanted to celebrate his birthday too, with some good food and a movie. Things started out fairly slow, the changes I mean, and all of us were fairly focused on the screen, only really noticing that something was going on when the lights came on at the end. It was a little bit of a shock at first, to find that you've grown fur, but it's actually quite lovely, isn't it? As for why we turned to this shape, I guess it might have had something to do with Julie. She's got two pet rats, fancy ones with special patterns. Not that she had them with her that day, but some fur might have stuck to her jacket or so...'";
	say "     A thought crops up in your mind almost on its own, and you spend a second contemplating the possibility of an enterprising band of regular rats gnawing a well-hidden hole to enter the cinema and having nightly feasts on the never-ending bonanza of dropped snacks and half-dried puddles of spilled soda. Wisely choosing not to mention this theory, you keep the possibility that the mall rats are descended from vermin living in the walls to yourself. Never noticing your bief mental excursion, Ronda continues, 'Since then, our numbers have grown steadily. Mostly from other friends having made it to the mall, and a number of refugees deciding the rat lifestyle was for them, but we've also had a number of births - oooh, the ratlings are soo cute!' Letting out a little squeal at the memory of little baby mall rats, Ronda bites her lip, then shakes her head. 'Not that I'm ready to have kids myself yet, of course! Me and Rod are using protection, that's for sure! Thankfully, the gals over from the community center keep handing out condoms for everyone, going around to remind everyone that we must not let the population explode, hah.'";
	TraitGain "Background Talk" for Ronda;

to say Ronda_JaguarOrderlyVisit:
	say "     Mentioning the jaguar orderlies that serve as Doctor Mouse's muscle results in Ronda ruffling her nose in disgust. 'You asking about those macho hairball rejects from Shock Therapy? Suzie and Anna were talking to them after they rolled in here like they owned the place. Just a little playful flirting to tease their boys. No harm in it. But the kitties started getting fresh. They offered them a ride in their swanky helicopter, which was tempting, but that'd mean leaving the mall, so the girls said [']No way['].' She shakes her head as if the sheer idea of going outside is an unthinkable proposition. 'Well, those kitty-litter heads didn't like that and started to get pushy about it. By that point, their boyfriends had had enough and rallied the troops to deal with them. One of the pyromaniac rats had a string of firecrackers, and threw that at the goons, amid them being pelted with flung milkshakes and whatnot. Then the wolverines arrived and kicked them out.'";
	say "     'Us rats sent someone to talk to the wolverine boss too, and we made sure that they'd never be let in again! They came poking back once or twice, but they're not allowed to shop here anymore. No way, no how. They got sent packing each time.'";
	TraitGain "Jaguar Orderlies Discussed" for Ronda;

to say Ronda_Darrell:
	say "     Inquiring about Darrell and explaining why you are trying to find him, Ronda responds, 'Yeah, sure! I know where he is.' Half-turning away from you, she waves to someone and calls out, 'Darrell, c'mere!' Following her gaze, you see various people in the densely packed mall, but no one matching the description you were given. Then one of the mall rats of a somewhat further away group peels off and makes his way towards you and Ronda, weaving in between the various passersby. Looks like the city's star point guard is now a good deal furrier and rattier. There's a hint of greater than usual muscle mass on his white-furred frame, but overall he's got the fairly slender build typical for the anthro rodents. As the man arrives, he gives you a casual nod, then asks Ronda, 'What's up?' She introduces you to each other, and after some brief explanation, the white rat nods.";
	say "     'You can go tell Alex I appreciate his concern, but I'm pretty good here at this point.' Not yet willing to admit failure in your task to bring him to Alex, you spend a minute trying to convince him to come with you, but he stands firm on it. 'Nah, I'm good here, man. Got all I need with my new friends,' Darrell finally states, then heads back to talk to some of the other rats, giving fist bumps to a buddy and then putting his arms around a pair of the girls. Letting out a sigh, you mentally prepare yourself to give Alex mixed news the next time you see him.";
	now AlexProgress is 3;

to say Ronda_RondaSlutrat:
	say "...";

the fuckscene of Ronda Mallrat is "[sexwithRonda]".

to say sexwithRonda:
	setmonster "Slut Rat";
	if HP of Ronda is 0:
		project Figure of Ronda_icon;
		say "'Hey now, I ain't no floozy rat like some. I've already got me a sexy guy wrapped around my finger. Why would I need you?' she says, making the other girls nearby giggle.";
	else if HP of Ronda is 10:
		project Figure of Ronda_icon;
		say "'Mmmm... that sounds pretty nice, but I get plenty of action. Don't I girls?' she says, eliciting giggles from the other nearby rat girls.";
	else if HP of Ronda is 100:
		project Figure of RondaSR_icon;
		if lastfuck of Ronda - turns < 6:
			say "'I was thinking of having another go at my sexy little fucktoy soon,' she purrs as she looks over at Rod flashing her ass at her. 'Maybe a little later.'";
		else:
			say "     Ronda grins as you come up to her, clearly knowing what you have in mind. Before you can even start to ask, she presses her lips to yours, kissing you lustfully, then pushes you down onto the cushions. She leaps atop you, grinding her throbbing cock against you as Rod helps her out of her outfit. 'Mmm... Time to thank you again for helping Rod and I get back together, sweetie.' Rod holds his lover's cock in position as Ronda thrusts eagerly into your [if Player is female]pussy[else]ass[end if] and starts pounding away at you. Her large, heavy balls slap against your thighs and you can make out the wet sounds of Rod obediently licking her girlfriend's pussy even as her throbbing penis fucks you. You moan in delight beneath her, thoroughly enjoying the rough fucking the dominant rat gives you. You cry out in delight when Ronda finally jams her large, thick meat as deep as she can into you and unleashes her hot load, flooding your [if Player is female]womb[else]bowels[end if] with her thick, virile semen.[impregchance]";
		now lastfuck of Ronda is turns;


Section 3 - Unleashing the Slut Rats

instead of trading the demon seed when the current action involves the Ronda:
	if HP of Ronda is 0:
		project the figure of RondaSR_icon;
		say "     Ronda looks confused at the gift, 'What the heck is this gunk?' she asks, sniffing at it, then flicking a tongue out to taste it. The moment her tongue caresses the surface, she tenses, then lets out a long, airy groan. Other rats nearby come to investigate the noise, and she is soon sharing with about half a dozen of them, licking and lapping until there's none left.";
		say "     The six rats are all panting loudly now as their breasts starts to swell up dramatically and their pants bulge with newfound virility. A sudden shout breaks their reverie. The other mall rats have noticed the goings on, and converge to drive off the infected, Ronda included, forcing the changed rats off into the sewers.";
		ItemLoss demon seed by 1;
		now Ronda is nowhere;
		now HP of Ronda is 1;
		repeat with y running from 1 to number of filled rows in Table of Random Critters:
			choose row y in Table of Random Critters;
			if Name entry is "Slut Rat":
				now area entry is "Mall";
				break;
		extend game by 16;
		increase score by 20;
		now lastfuck of Rod is turns;
	else:
		say "     You think it'd probably be best if you didn't give that to Ronda. It could start this whole mess over again.";


Section 4 - Saving Ronda

Chapter 1 - Interactions w/Rod and Nermine

instead of going to Mall FoodCourt while ( HP of Ronda is 1 and lastfuck of rod - turns >= 16 ):
	move player to Mall FoodCourt;
	if FurryList is banned or FemaleList is banned or HermList is banned or HumorousList is banned or MaleList is banned:
		say "     Rod seems particularly down and you go over to talk to him. He sighs sadly and tells you about how he went to the mysterious shop in the mall to look for a cure for Ronda. 'But the spooky dog-woman said nothing could be done for her. She had some weird, mumbo-jumbo explanation. Something about needing the creatures that have been banned or something. So, I guess nothing can be done for her.' With that, he slumps off to be alone at one of the tables in the far corner of the food court.";
		say "     (This quest requires that Furry, Girl, Guy, Hermaphrodite, and Humorous content all be unbanned.)[line break]";
		now HP of Ronda is 2;
	else:
		say "     Rod comes up to you as you arrive. He seems a little more animate than he's been of late, if still rather disheveled. 'Hey, can I ask a favor? I was, like, you know, totally missing Ronda. You know about Ronda, dontcha? She was there when those infected rats popped up and swarmed the place. You must've missed it, but it was a bad scene, dude.' You keep quiet, thinking it best that Rod and the other rats not know about your part in that incident. 'But yeah, there I was, totally bummed, when I went [']Dude!['] and got this brainwave to talk to that weird dog-girl at that creepy shop. She was all spooky and stuff, but she said there might be a way to help Ronda. But that's when she told me that I'd need to get some stuff out in the city, and I'm not to keen on leaving the mall, you know. So brainwave number two comes and I'm thinking my friend can help me with it. So that's where you come in.' Feeling a little guilty about what happened, you agree to visit the shop on the west side of the Atrium and see what needs to be done.";
		now HP of Ronda is 3;

instead of conversing the Nermine while ( HP of Ronda is 3 and NermineTalk > 0 ):
	say "     Nermine smiles as you bring up the topic of Ronda and the slut rats. 'Ahh... the humble storekeeper was wondering who the rat boy would find to be helping him. Ironic that he should be picking the jackaless's visitor, eh?' she says, leaning across her counter. 'Well, perhaps there will be a lesson to learn, when not to play around with things outside of someone's understanding. Now, as Nermine told the rat boy, she should be needing some things to be making a cure for his love. He is bound too tightly to the mall and cannot be leaving, even for the girl he loves. But for others, that is no problem, is it?' Looking down the length of her muzzle at you, Nermine continues, 'Firstly, a number of lizards roam one of the large city parks, pretending to be artists. Maybe Nermine's guest could go find one of them and sample the juices from their womanly flower?'";
	say "     As she says this, Nermine chuckles and raises her eyebrows. 'This should not be too hard a task. More difficult is the fruit needed. In the city, a forest has sprouted out of nowhere. In it, there are grand trees roaming the streets, moving around on their own power. These are producing fruits capable of restoring a person. Eating these fruits, they are changing to become human again, or at least appearing to be human. What Nermine requires is the best and shiniest of these fruits to counteract the corruption affecting the Ronda-rat. Other items are already in the shopkeeper's possession, from rare herbs to a blessed mixing bowl.'";
	now HP of Ronda is 4;


before conversing the Nermine while HP of Ronda is 5:
	if lizard juice is owned and awesomest fruit is owned:
		say "[Rondaitems]" instead;

to say Rondaitems:
	say "     Pulling out the items Nermine needed to help Ronda, you place them on the counter. She smiles happily and takes them. 'And now it is time to be talking about Nermine's payment for this. The last items Nermine is needing complete the cure are to be found in a private collection in the city. Downtown, there is high rise condo of private art collector. He is keeping veil and staff in his penthouse suite. Nermine is wanting you to be collecting them for her. Veil needed to complete cure, staff is payment. One trip for both. Easy for one working so hard to make amends.";
	now HP of Ronda is 6;
	now Art Collector is active;
	increase score by 10;
	ItemLoss lizard juice by 1;
	ItemLoss awesomest fruit by 1;

before conversing the Nermine while HP of Ronda is 7:
	say "[Rondaitems2]" instead;

to say Rondaitems2:
	say "     Nermine smiles as you hand over the items to her, examining them with a critical eye. 'The delightful guest is being most helpful in this. The staff of Tiresias will be looking good in Nermine's collection,' she says, placing the seemingly ordinary stick in the case. 'It is an unfortunate requirement to be burning the veil, but having one prize is better than none.' With that, she takes it and the other items you gathered as well as a collection of other small items which probably belonged to Ronda into the back to prepare them. When she finally emerges some time later, she hands a vial of gray fluid to you. 'This is to be given to the Ronda-rat. It will be purging the dark power within her. Be careful, this being just the one chance for her, and it will not work on another. There are no further of the needed supplies to replicate it again, at least not in this city.";
	now HP of Ronda is 8;

before conversing the Nermine while ( HP of Ronda is 8 or HP of Ronda is 9 ) and a random chance of 1 in 3 succeeds:
	say "     You have the cure you need. Now you are needing to be finding the Ronda and giving it to her. Talk to the Rod-rat about this.";

Table of Game Objects (continued)
name	desc	weight	object
"lizard juice"	"A small vial of the creamy, white cum from one of those lizard girls."	1	lizard juice

lizard juice is a grab object. It is not temporary.

instead of using lizard juice:
	say "You need to save that to help Ronda.";

the scent of lizard juice is "The creamy white fluid has a thick, musky scent.".


Chapter 2 - The Art Collector Event

Table of GameEventIDs (continued)
Object	Name
Art Collector	"Art Collector"

Art Collector is a situation.
ResolveFunction of Art Collector is "[ResolveEvent Art Collector]". The level of Art Collector is 9.
Art Collector is inactive.
Sarea of Art Collector is "High".

artattempt is a number that varies.

to say ResolveEvent Art Collector:
	if artattempt is 0:
		say "     Managing to follow Nermine's directions through the available paths through the chaotic city, you manage to circumvent other creatures and obstacles to make it to the address she's provided you. Looking up at the high rise building, your legs ache at the thought of scaling its stairs to reach the penthouse, but there is no other option. You move quietly inside and carefully make your way to the stairwell to begin your ascent. It is long and tiring, but you press on, not wanting to risk being found in such a confined space with the countless creatures which probably inhabit this building. You can see several wet splotches on the stairs, many quite fresh.";
		say "     After an ascent which leaves you hungry, thirsty and aching, you make it to the access to the penthouse suite. Opening the door, you step into the antechamber connecting to the inoperative elevator and the large doors to the suite. Finding them unlocked, you slip quietly into the spacious foyer and living room, looking at the various pieces on display. One of them, a veil and simple staff are held in a glass case. The veil is a simple band of old, grayed cloth and the staff is little more than a wooden walking stick made from a straight branch, neither having anything remarkable about them. As you look over the case, you try to decide how best to get at the contents, but are interrupted by an angry growl behind you. Turning, you find a large leopardman stalking out of the nearby bedroom and spot several sexy leopardesses on the bed waiting for his return after dealing with the would-be thief. This creature was once likely the art collector and has since gathered a harem of horny females to add to his collection.";
	else:
		say "     Managing to make your way back to the high rise with the art collector's suite atop it, you pause, reluctant to head up and possibly face the powerful leopardman again. Gathering your resolve, you make your way inside and begin your arduous ascent anew. It is long and tiring, but you press on, not wanting to risk being found in such a confined space with the countless creatures which probably inhabit this building. You can see several wet splotches on the stairs, many quite fresh.";
		say "     After an ascent which leaves you hungry, thirsty and aching, you find yourself in front of the penthouse suite again. Opening the door, you step into the antechamber connecting to the inoperative elevator and the large doors to the suite. Finding them still unlocked, you slip quietly into the spacious foyer and living room, looking at the various pieces on display before heading over to the one containing the veil and simple staff. As you approach it, but are again interrupted by an angry growl from the large leopardman stalking out of the nearby bedroom. The several sexy leopardesses are still spread out on and around the bed waiting for his return after dealing with the would-be thief.";
	increase thirst of Player by 12;
	increase hunger of Player by 6;
	decrease HP of Player by ( HP of Player divided by 6 );
	say "     As the leopardman growls again and stalks towards you, you get a good look at the powerful feline male. His strong body is covered with leopard-like fur, and as he rises up to two feet and flexes his claw-tipped hands, you get a very good look at his rather erect feline cock. Looking around quickly, you realize the leopardman has moved to block your exit. As you prepare to fight, you can see a playful grin cross the muzzle of the obviously aroused feline. '[one of]You'll pay for this interruption[or]I don't have time, you wretched thief[or]Let's get this over with quick. I have more important matters to deal with[or]I'm going to turn you in a scratching post[in random order],' he says as he leaps forward after his prey. Already weakened from your long climb, you hope you're still up for a fight.";
	now inasituation is true;
	challenge "Leopardman";
	now inasituation is false;
	if fightoutcome < 20: [player won]
		say "     With the leopardman driven off, you can hear the lustful yowls of the felines get louder as they start to climb off the bed. Unwilling to face down a pack of heat-ridden females, you quickly smash the case, grab the items and make a run for it. You dash to the antechamber and into the stairwell, rushing down the first couple of flights. When you don't hear any pursuit, you relax a little and cautiously slow down, hoping they decided to coax the defeated male from the other room to satisfy them. You look over the strange, unassuming items and hope they are worth the effort as you stow them away carefully and make your way back outside.";
		increase score by 20;
		now HP of Ronda is 7;
		now Resolution of Art Collector is 1; [won]
		now Art Collector is resolved;
	else if fightoutcome > 19 and fightoutcome < 30: [lost]
		say "     The powerful leopard grabs you and runs his paws over you, as if trying to decide what to do with the thief he's caught. But before he can come to a decision, the heat-ridden females on his bed start to yowl in lustful need, longing for the strong male to rejoin them. The muscled feline grabs you roughly and drags you out onto his large patio. While the impressive view of the skyline would normally draw your attention, it is the ground that soon fills your view as he hurls you over the side of the building. You scream as you plummet quickly, spreading yourself out as best you can to slow your fall, but with little effect as the pavement seems to rush up at you. As you are about to strike the ground, everything mercifully goes black.";
		now artattempt is 1;
		wait for any key;
		clear the screen;
		say "[bold type]Splud![roman type][line break]";
		wait for any key;
		now heat enabled is false; [temporarily turning off heat effects]
		now skipturnblocker is 1; [temporarily turns off several other end of turn effects]
		if "Rapid Healing" is not listed in feats of Player, follow the turnpass rule;
		if "Regeneration" is not listed in feats of Player, follow the turnpass rule;
		follow the turnpass rule;
		follow the turnpass rule;
		follow the turnpass rule;
		follow the turnpass rule;
		now heat enabled is true; [heat effects turned back on]
		now skipturnblocker is 0; [restores normal end of turn functions for the final turn skip after the scene]
		now HP of Player is 1;
		increase hunger of Player by 5;
		increase thirst of Player by 5;
		decrease morale of Player by 20;
		SanLoss 8;
		say "     When you finally awaken, sore and aching all over but somehow alive, you give thanks to the powerful healing abilities of the infection. You slowly struggle to rise, the healing process having taken much out of you. You have left a noticeable dent and several cracks in the pavement where you landed, as well as a sizable red stain. Looking at it as you struggle to get up, you notice that something else is off - the lighting very different now. Looking up, you see that it's [short time of day] now, many hours since your ill-fated fight with the leopardman. After what feels like a Herculean effort, you make it to your feet and stagger off to find someplace to heal in peace.";
		now Resolution of Art Collector is 2; [lost]
	else if fightoutcome is 30: [fled]
		say "     You manage to feint past the enraged, aroused feline and charge out of the suite. You rush for the stairs with him in hot pursuit, but the lustful moans of the heat-ridden females draw him back inside, letting you escape. You run down as quick as you can for the first several flights, just in case, then slow to a more reasonable pace for your long defeated descent. You'll have to recover and try coming back another time.";
		now artattempt is 1;
		now Resolution of Art Collector is 3; [fled]

Chapter 3 - The Rescue Attempt

to say RondaRescue:
	[puts Slut Rat as lead monster in case of impregnation]
	repeat with y running from 1 to number of filled rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		if Name entry is "Slut Rat":
			now MonsterID is y;
			break;
	say "     Looking around the room, you spot several of the rats in mid-coitus and try to check them out without looking too interested. Not that the rats would mind, per se, but you might get roped into playing with them and lose track of your actual goal.";
	let the bonus be (( Perception of Player minus 10 ) divided by 2);
	let the dice be a random number from 1 to 20;
	say "You roll 1d20([dice])+[bonus]+[level of Ronda] -- [dice + bonus + level of Ronda]: vs 17.";
	if dice + bonus + level of Ronda < 17:
		increase level of Ronda by 2;
		say "     Looking around the various rats in the den at the moment, you aren't able to spot one with Ronda's red heart on their fur. You try to keep a mental list of who you've already checked, though it's hard to tell the slutty rats apart at times.";
	else:
		say "     You are about to give up when you spot a flash of red on one of the large rats. This well-endowed herm has another rat's muzzle buried under her hefty balls and licking her snatch. You'd almost missed it because her big testicles were covering the little red heart. You're tempted to join in right away, but you won't be able to tempt her somewhere secluded until she's done with her current playtoy anyhow. You snuggle back with one of the other rats and sit back to enjoy the show.";
		if SlutRatDenPoolTable is 3:
			if slutratsub > 5 or Cock Count of Player is 0:	[bottom]
				say "     Finding yourself in Eight-ball's arms, you moan in pleasure as the rat starts playfully teasing you. You giggle happily and wiggle back against her cock, soon rewarded with the pleasant joy of having her cock slide up into your [if Player is female]hot pussy[else]tight ass[end if]. You bounce in his lap as you both enjoy the show, watching as Ronda rolls the other rat onto all fours and fucks her good and hard until she's full of overflowing semen, and so are you.[impregchance]";
			else:			[top]
				say "     Finding yourself in Skeeball's arms, you moan in pleasure as the rat starts playfully teasing you. You giggle happily and pull her into your lap. The slutty rat grinds herself down onto your cock and moans in pleasure as you drive it into her, bouncing her in your lap as you both enjoy the show. You watch as Ronda rolls the other rat onto all fours and fucks her good and hard until she's full of overflowing semen, and so is Skeeball.";
		else:
			say "     You make out with the sexy slut rat you've found, playing around until you have both have a powerful orgasm while you watch Ronda fuck the small rat beneath her until she's full of overflowing semen.";
		infect "Slut Rat";
		WaitLineBreak;
		project the figure of RondaSR_icon;
		say "     After the sexy show is over, you keep an eye on Ronda, letting her relax for a bit and hopefully become aroused enough to be tempted away for some more fun. Noticing her cock start to throb as her fingertips subconsciously slide over it, you snuggle up beside her and run your paw across her hip. At first, she doesn't seem very interested, but you start teasing her. Once you begin to get her attention, you discreetly slip out the pack of deluxe chocolates, which really pique her interest. Whispering that you don't really have enough for everyone, you wrap your paw around her cock and lead her off towards a shadowy alcove where some junk and supplies are kept. She follows with a paw on your ass, squeezing it.";
		say "     Once out of sight of the others, Ronda stuffs several of the chocolates into her muzzle, moaning in pleasure before pressing you into a chocolatey kiss. Her tongue dives into your mouth, sharing the chocolate and hazelnut flavor with you as her paws run all over your body. Fully hard and leaking precum, she grinds her cock against you lustfully. 'Oh, I've missed these so much,' she moans. 'It's like I can... almost remember...' she says softly. You tell her that there are more waiting for her, that you'll help her remember, that her boyfriend's sent you to help change her back. You slide the small vial of gray liquid from your pack.";
		WaitLineBreak;
		say "     Eating another chocolate, Ronda pauses for a moment, struggling with her memories. 'I... I remember there was someone... gave me these. Rod! Yes, that was his name. I can't believe I almost forgot him.' She presses her lips to yours in another kiss, almost making you drop the vial as she pushes her chocolate-coated tongue into your mouth. 'Oh, thanks for helping me remember. But you should help me bring him here so he can be with us.";
		say "( NOTE: Luring Rod down may disrupt some other game content or have odd glitches/inconsistencies. It is also considered non-canon. - The Mgmt. )[line break]";
		say "     [bold type]'He'd be so sexy as a big, slutty rat, don't you think?'[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if Player consents:
			LineBreak;
			say "[helpingRonda]";
		else:
			LineBreak;
			say "[helpingrod]";

to say helpingRonda:
	say "     Perhaps it's just your current, slut rat nature talking, but the idea of turning the tables around on Rod and getting him infected sounds very tempting. You pull Ronda into another wet and chocolatey kiss, telling her that's a wonderful idea. You end up dropping the vial on the floor and it breaks open, unnoticed by you both as you kiss and grope one another. With your bodies and loins grinding against one another, you almost begin having sex, but manage to focus to remember that you need to invite a third rat down here for your threesome.";
	say "     You and Ronda slip out of the den and make your way back towards the connection into the mall, playfully groping and pinching each other along the way. When you get close to the hole, you have Ronda wait out of sight around a corner while you proceed up into the Smith Haven Mall. Trying not to attract unwanted attention, you head over to Rod, who looks hopeful at your return. You quickly tell him to stay quiet before telling him that you've found Ronda. Making an excuse that getting everyone excited about Ronda's escape would actually just get in the way, you tell him that his poor, sweet girl's hurt and needs his help to make it the rest of the way. You add with a nudge and a wink that this is his chance to be the big hero for her. Excited all the more at that, he quickly grabs your wrist and rushes towards the hole. You follow along, letting him take the lead back beneath the mall.";
	WaitLineBreak;
	say "     Once underground, you point Rod towards where Ronda's waiting for him and he goes charging off towards the room at the end of that maintenance tunnel. 'Rod, honey? Is that you?' Ronda asks from the shadows. 'Oh please, come help me. I've missed you so much,' she says with longing. The mallrat rushes towards her, only to stop short as Ronda emerges from the shadows, revealing her intact, slut rat nature. Rod screams and turns to run, but you are behind him, cutting off his escape. Ronda grabs him and stuffs the last of the chocolates into his mouth before giving him a passionate kiss. 'Oh, Rod, I've missed you a lot, sweetie,' she whispers in his ear while holding his muzzle shut. 'And I can't wait to show you just how much I've missed you again and again,' she adds, grinding her throbbing shaft against his hip even as your clawed hands tear away at his clothes.";
	say "     Even though Rod's eyes are wide with fear, his body can't help but start to respond to the attention of the two slutty rats holding him. As you stroke his rock hard cock, you can see why Ronda wants him back with a nice, big cock like his. You give it several slow licks and roll his large, ratty balls in your paw. Ronda's moved in behind him now, grinding her cock against his ass, then lining it up with his back door. 'I've been gone for a while. You haven't been straying, have you?' He stifles a groan as you envelop his cock with your lips and start sliding his maleness into your mouth, shaking his head vehemently. 'No? That's good, but things will be different now. My man's going to be a proper slutty rat now,' she purrs. And with that, she starts sinking her large cock into the other rat's backside with a moan from both of them.";
	say "     'And you'll be my slutty rat, bending over for any of the girls I want to fuck you, taking my [']Rod['] whenever I want,' she says with added emphasis, pushing her rod hard into her Rod, making the rat moan. With the mallrat's cock in your mouth, you can feel it already starting to change and grow larger, exciting you further. You run your paws across his hips and legs, feeling them changing to become feminine and increasingly sexy. Just as you glance up and spot the beginning of breasts on Rod's chest, he groans loudly and cums hard, draining his balls of their pent-up mallrat cum to make room for the slut rat semen that's now making them swell larger. After gulping down most of it, release his still hard cock and get up, pulling him into a kiss and presses the rest of his load into your mouth with this tongue, giving Rod his first taste of semen, though what will certainly not be his last.";
	WaitLineBreak;
	say "     Looking Rod over, your eyes slide over his increasingly feminine features, his swelling chest and curvy body to his hips. There you spot his enlarged cock and balls, but also some dampness running down his legs. Knowing Ronda's not cummed yet, holding back to give her boyfriend a thorough fucking for his first time, you drop back to your knees to investigate. Pushing up those bloated balls, you find a wet puss waiting there, growing larger as the new herm continues to transform. You give that virgin cunt a few licks, delighting in Rod's moans at this new pleasure.";
	now tempnum is 0;
	if Player is not male:		[no option, ride Rod's rod]
		say "     Rod's body is growing larger as well, though not quite as big as her dominant girlfriend. The newly-minted herm's fur is also becoming darker as the slut rat infection spreads rapidly through her body. Deciding that you want more than a suck on her cock, you coax the lustfully fucking pair to sit back on a nearby crate. With Rod positioned in Ronda's lap, still taking the bigger rat's cock up her ass, the transforming rat's cock is ready and waiting there for you to ride.";
		now tempnum is 2;
		WaitLineBreak;
	else:					[option to fuck or ride]
		say "     Rod's body is growing larger as well, though not quite as big as her dominant girlfriend. The newly-minted herm's fur is also becoming darker as the slut rat infection spreads rapidly through her body. Deciding that you want more than a suck on her cock, you coax the lustfully fucking pair to sit back on a nearby crate.";
		say "     [bold type]With Rod positioned in Ronda's lap, still taking the bigger rat's cock up her ass, the transforming rat's spread legs offer up her wet pussy to you and her throbbing cock is upright and available for you to ride as well.[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Take her pussy.";
		say "     ([link]N[as]n[end link]) - Ride her cock.";
		if Player consents:
			LineBreak;
			now tempnum is 1;
		else:
			LineBreak;
			now tempnum is 2;
	if tempnum is 1:
		decrease SlutratSub by 2; [somewhat more dom]
		if SlutratSub < 0, now SlutratSub is 0;
		say "     Spreading the rat's legs a little further, you boost those heavy balls up a little and get your cock into position. Rod bites her lip before the last of her resistance fails and she moans loudly for you to fuck her, which you quite happily do. 'Mmm... that's my good, slutty Rod,' Ronda says, nipping her ear. 'Ride those cocks. Mmm... I can hardly wait to see you stuffed with your first litter.' Rod bounces herself vigorously in Ronda's lap while hugging you close.";
		say "     As you fuck, the reunited couple continue to go on about how they've missed each other and how sexy the new Rod looks. By the time you're driving your cock deep into her cunt and finally unleash your load into her new womb just moments after Ronda's semen floods her ratty bottom, Rod's finished her transformation into a sexy slut rat with curvy hips, a plump bosom, throbbing cock and dark fur. Despite starting out male, she's become a very girly slut rat and smaller than most. She's definitely going to be a popular fucktoy around the den.";
	else:
		increase SlutratSub by 1; [slightly more sub]
		if SlutratSub > 10, now SlutratSub is 10;
		say "     With a paw around Rod's enlarged cock, you climb onto her lap and get your [if Player is female]pussy[else]asshole[end if] lined up with its dribbling tip. Rod bites her lip before the last of her resistance fails and she moans loudly for you to let her fuck you, which you quite happily do. 'Mmm... that's my good, slutty Rod,' Ronda says, nipping her ear. 'Stuff that [if Player is female]cunt[else]ass[end if]. Mmm... I can hardly wait to see you stuffed with your first litter,' she adds while fingering his still-virgin pussy. Rod bounces herself vigorously in Ronda's lap while hugging you close, working her pulsing cock hard into you.";
		say "     As you fuck, the reunited couple continue to go on about how they've missed each other and how sexy the new Rod looks. By the time you're cumming while Ronda's semen floods her ratty bottom and Rod's blasting her load into your [if Player is female]womb[else]bowels[end if], Rod's finished her transformation into a sexy slut rat with curvy hips, a plump bosom, throbbing cock and dark fur. Despite starting out male, she's become a very girly slut rat and smaller than most. She's definitely going to be a popular fucktoy around the den.[impregchance]";
	say "     You and Ronda fuck Rod a few more times, showing her many of the pleasures her new body has to offer. Ronda eventually decides to take her boyfriend turned fucktoy down to the den to show her off to the others. Rod seems much more coherent than most slut rats after their initiation and Ronda seems to still remember in part. You guess that having each other to support and remind one another of their identities has helped them remember a little better. But that romp you shared certainly proves that they're slut rats through and through now as well.";
	WaitLineBreak;
	say "     When you head back up to the Mall, you tell everyone that Rod dragged you both down under the Mall after he'd decided to finally go searching for Ronda. You tell them that you tried to help him, but that the big rats down there got him and that you barely got away yourself. Still high on the excitement of what happened below, you feel no guilt about your duplicitous actions, feeling much closer to your slut rat sisters now.";
	say "     Nermine gives you an inscrutable look as you're explaining what happened to the sad mall rats around you, but she says nothing. She was asked to help reunite Rod and Ronda, and that's happened... after a fashion. Pretty much Nermine's usual stock and trade.";
	SanLoss 20;
	increase score by 100;
	now HP of Ronda is 100;
	move Rod to Slut Rat Den;
	now the icon of Rod Mallrat is figure of pixel;
	now the icon of Ronda is figure of RondaSR_icon;
	move Ronda to Slut Rat Den;
	move player to Mall FoodCourt;


to say helpingrod:
	say "     You start to tell her that's Rod's waiting for her to come back to the Mall. As you try to explain that you've found a way to change her back, she shakes her head at that and grinds her hard cock against you harder. 'Change? Why would I want to change? We're the sexiest beasts on the planet. Mmm... enough talking. Let's fuck, sweet stuff,' she rumbles, grinding her hard cock against you. You'll have to fight her before you can get her to take it.";
	LineBreak;
	say "     Despite your hopes of saving her, you find yourself facing off against the slut rat Ronda. She is a tall and intimidating wall of fur and leather, appearing female at first glance. But you know better, sporting a bulging package under her tight, leather outfit. She has a lustful look in her eyes, having decided she'd rather repay you for the chocolates with sex than listening to what you have to say. You try to calm her down and get her to focus, but that moment of remembrance is fading. In her confusion, she seems to think you're just looking to scrap to see who's on top, as the slut rats sometimes do. Being the first of the slut rats, she is a little bigger and tougher than the others.";
	SlutRatRondaUpgrade;
	now inasituation is true;
	challenge "Slut Rat";
	now inasituation is false;
	SlutRatStatReset;
	if fightoutcome >= 20 and fightoutcome <= 29: [lost]
		say "     Victorious, Ronda pushes you down onto one of the crates and climbs atop you roughly. You moan as she grinds her cock against your backside. 'See! Told you I was sexiest beast around. And the only change going on around here is that I'm going to make you into my sexy bitch for the next half hour,' she rumbles, pressing her thick rod deep into you. Your moans at being penetrated stifle any attempt to tell her about the potion and soon enough, with the large rat pumping her cock into your [if Player is female]pussy[else]ass[end if], you forget about it as well. As she starts pounding you harder, you drop it to get a better grip on the crate. True to her word, Ronda pounds you long and hard for the next half hour, swapping positions a few times, making sure she's blasted thick rat cum into you from both end and splattering it all over your face[if Player is not neuter], making you cum several times as well from her enthusiastic fucking[end if]. During the course of this wild session, any last vestiges of Ronda's previous life fade away completely, buried forever under her new slut rat persona.[impregchance]";
		SanLoss 10;
		increase Libido of Player by 20;
		if Libido of Player > 80, now Libido of Player is 80;
		infect "Slut Rat";
		say "     After being beaten by Ronda and in the ensuing wild romp, the small vial is knocked aside and shatters, spilling its contents onto the dirty floor, ending any hope of saving her. Once she's sated herself, she heads back to the main group, what brief moment of clarity she had is gone forever. After you recover, you make your way back up to the food court.";
		move player to Mall Foodcourt;
		say "     Back up in the mall, you head over to Rod and give him the bad news that Ronda was too far gone to be saved. Heartbroken, the depressed rat slumps off somewhere to be alone for a while.";
		now HP of Ronda is 99;
	else if fightoutcome >= 30: [fled]
		say "     As you make an attempt to flee from the slut rat, your hand gets knocked by hers, sending the vial tumbling to the ground and breaking. Its contents spill out onto the dirty floor, ending any hope of saving her. Ronda follows you briefly before heading back to the main group, what brief moment of clarity she had is gone forever. Having successfully gotten away from her, all you can do is make your way back up to the mall food court.";
		move player to Mall Foodcourt;
		say "     Back up in the mall, you head over to Rod and give him the bad news that Ronda was too far gone to be saved. Heartbroken, the depressed rat slumps off somewhere to be alone for a while.";
		now HP of Ronda is 99;
	else if fightoutcome >= 10 and fightoutcome <= 19: [won]
		now HP of Ronda is 10;
		move Ronda to Mall Atrium;
		increase score by 50;
		say "     You manage to knock Ronda down long enough to jump on top of her. It takes some effort to resist fucking her then and there, your ratty blood all worked up, but you rein it in. You tell the sexy rat to open wide, which she does, thinking she's going to get a meaty treat. You instead quickly dump the serum down her throat and put your hand over her mouth to keep her from spitting it up. Eventually forced to swallow, Ronda releases a muffled gasp as you keep your hand over her mouth and she starts to thrash. She almost manages to push you off, the renewed strength from her fear only held in check by her lack of control of her changing body. As the potion takes effect, Ronda begins to shrink down a little and the harsher features of her slut rat face diminish, starting to look more like her old self. As clarity and recognition return to her eyes, she stops struggling and looks around, taking in her surroundings as if for the first time. You whisper firmly that you're rescuing her from some dangerous creatures and she's got to be quiet as they're still around here. Cautiously, you take your hands from her and thankfully she doesn't scream.";
		say "     'What's going on? Last thing I remember, I was hanging out with the girls and then... it all gets hazy. There's just vague images of rats and sex. Where's Rod? Is he okay?' It seems she's thankfully forgotten how she ended up this way in the first place. You quickly tell her that Rod sent you to rescue her. 'Oh, my dear, sweet Rod,' she says lovingly holding her paws at her chest. And that's when she notices her large, and now ill-fitting, leather outfit. You quickly put your hand over her mouth again, silencing her cry of surprise. You tell her that you'll explain on the way back and grab a sheet from the pile of junk to bundle herself in. She nods and clutches it tightly to herself. You notice that her changes are still slowly progressing, with her fur now something between her previous white and spotted pelt and the dark tones of the slut rats.";
		WaitLineBreak;
		say "     You head over to the archway leading out of the entrance and make sure the coast is clear before motioning for her to follow you. Moving quickly and quietly, you lead Ronda back out of the sewers by the safest route you know. In the dark tunnels, it's hard to tell but the changes eventually seem to subside, with her only a little bigger than before, but otherwise looking the same. On the way, you give her a marginally edited version of the situation with the slut rats, leaving out your involvement in the whole fiasco. She tells you she only has a few, vague memories of her time as a slut rat and readily accepts your version of events.";
		move player to Mall Foodcourt;
		say "     Back at the food court, Ronda rushes past you and into Rod's arms. There's a lot of kisses and tears between the reunited pair, drawing the attention of the other rats until they're surrounded by a mob of rats with questions. Eventually, it gets to be too much for Ronda, who snaps at them that she just got back and wants some time with her man. Grabbing him roughly by the wrist, she pushes through the crowd, grabs you with her other paw and drags you both into the back of one of the fast food joints for a little privacy.";
		WaitLineBreak;
		say "     Ronda gives you a wild kiss, diving her tongue into your mouth. 'Thanks again, sweetie,' she says before turning her attention to Rod. 'Mmmm... and now for my clever man,' she rumbles, pushing her rat body against Rod's and letting the sheet she was wearing like a toga slide down. As his paws roam over her body while kissing, they eventually drift lower and Rod suddenly stops short. With her back to you, it takes you a moment to realize that Ronda's cock hasn't gone away completely, but you catch sight of her plump balls as well as her dripping pussy as her tail flicks with excitement.";
		say "     'Things are going to be a little different from now on, sweetie,' Ronda rumbles, turning Rod around to press his chest against the fridge. Lining up her cock, she presses it to his back door. 'I've been gone for a while. You haven't been straying, have you? I know that slut Lucy's had her eyes on you.' He stifles a groan and shakes his head vehemently. 'No? That's good. But I still think you need a reminder that you're [bold type]my[roman type] man.' With that, she starts sinking it into the other rat's backside with a moan from both of them.";
		WaitLineBreak;
		say "     As Ronda starts pounding away at Rod in earnest, he looks back at you, blushing brightly at his ears. Catching the glance, Ronda looks back at you, her rescuer, and grins. 'Mmm... let [if Player is female]her[else]him[end if] watch. That is, unless [if Player is female]she[else]he[end if][']d rather join in. What do you say? One time offer,' she adds, flicking up her tail to flash her wet cunt again.";
		say "     What will it be? Shall you [link]join in (1)[as]1[end link], [link]stay and watch (2)[as]2[end link] or [link]leave (3)[as]3[end link] the two to get reacquainted?";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to join in, [link]2[end link] to stay and watch and [link]3[end link] to leave.";
		if calcnumber is 1:
			if Player is male:
				say "     Deciding to get in on the action, you move in behind Ronda, getting your [Cock of Player] cock lined up with her cunt. Rod starts to protest, but Ronda just gives him another hard thrust. 'Oh sweetie. Don't be jealous. You know I love you very much, but our hero here needs to be rewarded. You'll get your turn later. How does that sound?' she adds, reaching around to stroke his throbbing cock while pushing deep into him again. He moans and nods eagerly. 'Mmm... that's why I love my big, hard Rod,' she rumbles. 'He knows his girl's in charge.'";
				say "     That resolved, Ronda grins back at you and flicks her tail up meaningfully. Knowing you've got to the go-ahead, you thrust into her eager cunt, pressing her hard and deep into her boyfriend. It takes a few attempts to set up a steady rhythm, but soon enough you're pounding into Ronda as she drives into Rod. Her cunt squeezes and tugs at your meat, working your cock expertly even with the distraction of fucking Rod at the same time. Between that and her aggressive lust, you suspect that Ronda has more lingering traces of her slut rat condition than just her cock. You decide not to dwell on this, instead wanting to enjoy the rat's hot, wet pussy. As she groans loudly in orgasm, blasting her hot seed into her boyfriend's belly, her vaginal walls clamp down around you and you pump your load into her. Rod cums seconds later, spraying his semen across the steel fridge door as his tummy's plumps up a little from all the cum his girlfriend's pumping into him.";
				say "     After withdrawing and Rod and Ronda change positions, Ronda sends you on your way, saying she wants more private time with him. 'We have so much to catch up on,' she says with a grin, stroking her cock as it gets hard again.";
				if Libido of Player > 50, now Libido of Player is 50;
			else if Player is female:
				[puts Mall Rat as lead monster in case of impregnation]
				repeat with y running from 1 to number of filled rows in Table of Random Critters:
					choose row y in Table of Random Critters;
					if Name entry is "Mall Rat":
						now MonsterID is y;
						break;
				say "     Deciding to get in on the action, you move over to Rod and Ronda. You run a hand across her ass and down to finger her pussy, eliciting a moan from her. Grabbing Rod's hips, she pulls him back (all while backing onto your fingers) and tells you to get in front of him. Rod starts to protest, but Ronda just gives him another hard thrust. 'Oh sweetie. I won't be jealous this one time. You know I love you very much, but our hero here needs to be rewarded. Just don't go thinking you can get away with this with anyone else. Understand?' she adds, reaching around to give his hard cock a firm squeeze while pushing deep into him again. He moans and nods eagerly. 'Mmm... that's why I love my big, hard Rod,' she rumbles. 'He knows his girl's in charge.'";
				say "     That resolved, you move in front of Rod and get your pussy lined up with his cock, letting him thrust into your eager cunt as Ronda pushes behind him. It takes a few attempts to set up a steady rhythm, but soon enough Rod's pounding into you as Ronda drives into him. His large, throbbing cock pulses inside you, fucking you deliciously well, even with the distraction of being fucked by his girlfriend at the same time. From her aggressive lust, you suspect that Ronda has more lingering traces of her slut rat condition than just her cock. You decide not to dwell on this, instead wanting to enjoy the rat's big, hard cock inside you. Seconds after Ronda groans loudly in orgasm, blasting her hot seed into her boyfriend's belly, Rod cums as well, sending his hot seed flowing up into your womb. Your own orgasm soon follows, cumming loudly as you feel the rat's nuts being drained into you even as his own tummy plumps a little from all the cum his girlfriend's pumping into him.[impregchance]";
				say "     After withdrawing and Rod and Ronda change positions, Ronda sends you on your way, saying she wants more private time with him. 'We have so much to catch up on,' she says with a grin, stroking her cock as it gets hard again.";
				if Libido of Player > 50, now Libido of Player is 50;
			else:
				say "     You consider joining in on the action, but remember that you're ill-equipped for such fun and will have to simply watch instead.";
				now calcnumber is 2;
		if calcnumber is 2:
			say "     Deciding to watch rather than join in, you move to a better vantage point to watch the action. Rod starts to protest, but Ronda just gives him another hard thrust. 'Oh sweetie. You know I love you very much, but our hero here deserves to see what a lovely couple we make. If you put on a good show, you'll get your turn later. How does that sound?' she adds, reaching around to stroke his throbbing cock while pushing deep into him again. He moans and nods eagerly. 'Mmm... that's why I love my big, hard Rod,' she rumbles. 'He knows his girl's in charge.'";
			say "     That resolved, you settle in to watch as Ronda's large cock thrusts into Rod repeatedly. She strokes his erection and rubs his balls, making his shaft flow with precum. Rod's quite well hung but, while you can't be certain, it seems that Ronda's lingering slut rat cock is still larger than his. As her nimble fingers play over the leaking shaft, she takes her time, clearly drawing out the show for you[if Player is male]. You start stroking yourself as you watch, eliciting a grin from her[else if Player is female]. You start fingering yourself as you watch, eliciting a grin from her[end if]. Eventually, the herm rat pushes deep into her boyfriend's backside, blasting her hot seed into him and Rod cums a few seconds later, spraying his semen across the steel fridge door as his tummy's plumps up a little from all the cum his girlfriend's pumping into him[if Player is not neuter]. You groan in orgasm as well, having thoroughly enjoyed the show[end if].";
			say "     After withdrawing and Rod and Ronda change positions, Ronda sends you on your way, saying she wants more private time with him. 'We have so much to catch up on,' she says with a grin, stroking her cock as it gets hard again.";
		if calcnumber is 3:
			say "     You shake your head and tell them that you'd not want to get in the way of their loving reunion and head out, hearing Rod start moaning again as Ronda turns her full attention back on buggering her boyfriend.";
		say "     On the way out, you do snag some supplies from the counter, the two rats too occupied to notice you helping yourself to them. Not that you think they'd object, but they're a bit too distracted to see that you're properly rewarded for your efforts.[line break]";
		ItemGain food by 1;
		ItemGain chips by 1;
		ItemGain soda by 1;
		increase score by 100;

Table of GameEventIDs (continued)
Object	Name
Mall Utility Room	"Mall utility room"
Mall Utility Room	"Mall Utility Room"

Mall Utility Room is a situation.
ResolveFunction of Mall Utility Room is "[ResolveEvent Mall Utility Room]".
Sarea of Mall Utility Room is "Mall".

when play begins:
	add Mall Utility Room to BadSpots of DemonList;

to say ResolveEvent Mall Utility Room:
	if Resolution of Mall Utility Room is 0: [first encounter]
		say "     While exploring the maze-like warrens underneath the mall, you can't help but get turned around multiple times, as it's an absolute chaos down here. There are at least three different sets of tunnels, from the mall's own maintenance passages/steam tunnels, to sewers and storm drains, with plenty of connection points between each of those (planned and unplanned). In one spot, there's an access door or hatch standing open, unlocked and left accessible by who knows who, in other areas it looks like some creature just forced its way through, smashing a hole in the wall or burrowing through the ground to allow access to the next passage beneath across a ramp of rubble. Along the same lines, a number of previously existing passages have been barricaded, have collapsed or are otherwise impassable. As you walk, climb and stumble through these corridors, breathing musky, stale air and peering into the darkness between the few working emergency lights and small fires people have lit here or there, one thing is certain:";
		say "     [bold type]You're not alone. [roman type]Between the almost constant sounds of dripping water and gurgling fluids, further sounds reach your ears, echoing through the tunnels: Footsteps and slithering sounds, growled animalistic noises, disturbingly sexual gasps and roars, seemingly far-off indistinct voices, and many more unidentifyable acoustics. Not that this is a constant soundscape though, as there can be minutes at a time that are almost completely quiet, until another sound from an unexpected direction makes your heartbeat quicken suddenly. All in all, this keeps you in a weird intermediate spot of seemingly being all alone in the tunnels, while still having the creepy feeling of something watching you, maybe just waiting in the next patch of darkness...";
		WaitLineBreak;
		say "     Reaching another large hole where something caved in the side wall of a storm drain, you step through it to find yourself in a concrete utility tunnel. The only source of light is a dimly glowing yellow emergency lamp some twenty feet along the lefthand passage, right across from a grey metal door bearing the sign 'UTILITY ROOM - KEEP OUT'. Curiosity drives you forward, walking up to see if this might be a place worth checking out in this dismal underground maze. Then the scent of stale cum hits you, and your eyes flick down to see a white-ish smear on the dirty ground, tracked along in a quarter circle when the door was last opened. The semen is dried and crusty, but is on top of most of the grime, so not all that old.";
		UtilityRoomChoicePoint;
	else if Resolution of Mall Utility Room is 1: [postponed]
		say "     Following the memories of a previous excursion through the maze-like warren of tunnels underneath the mall, you find yourself in that service tunnel again, no less creepy than the last time. The only source of light is a dimly glowing yellow emergency lamp some twenty feet along the lefthand passage, right above a grey metal door at the end of the tunnel, which bears the sign 'UTILITY ROOM - KEEP OUT'. Slowly walking closer, you approach the door, this time seeing a wet shimmer on the ground - there's fairly fresh cum there, still wet and contributing to the white trackmarks of the door's opening and closing. With the cloying scent of the semen rising into your nostrils, you give the door a wary look, trying to decide if you want to step through it.";
		UtilityRoomChoicePoint;

to UtilityRoomChoicePoint:
	LineBreak;
	say "     [bold type]Maybe you should re-evaluate going in there... [roman type][line break]";
	LineBreak;
	let Mall_Utility_Choices be a list of text;
	add "Boldly throw open the door and stride into the room with your head held high." to Mall_Utility_Choices;
	add "Crack the door a little first and peek in before you enter." to Mall_Utility_Choices;
	add "Put your ear against the door and listen, then enter." to Mall_Utility_Choices;
	add "Turn around and leave this place behind (for now)." to Mall_Utility_Choices;
	add "Decide you don't even want to know what is in there (at all)." to Mall_Utility_Choices;
	let Mall_Utility_Choice be what the player chooses from Mall_Utility_Choices;
	if Mall_Utility_Choice is:
		-- "Boldly throw open the door and stride into the room with your head held high.":
			LineBreak;
			say "     Smiling in the face of the unknown, you boldly step up to the door and pull on its handle without hesitation. It is surprisingly heavy, and a little rusty in the hinges, so you have to put in some force - a little too much, as the door is equally hard to stop once it starts moving, and it swings through its full movement range until smacking noisily against the tunnel wall! Thus havina announced your presence far and wide, you just roll with it and rush right into the room beyond. ";
			say "[Mall_Utility_Room_Desc]";
		-- "Crack the door a little first and peek in before you enter.":
			LineBreak;
			say "     Slowly approaching, you take care not to step on the cum-stain on the floor and take hold of the door handle. The utility room door is surprisingly heavy, and a little rusty in the hinges, creating a squeal as you pull it open. The dim room beyond doesn't seem to hold any immediate danger, at least in the slice you can see through the crack of the door. After observing a moment for any movement within, so give a shrug to yourself and then step into the room. ";
			say "[Mall_Utility_Room_Desc]";
		-- "Put your ear against the door and listen, then enter.":
			LineBreak;
			say "     Slowly approaching, you take care not to step on the cum-stain on the floor and lay your ear against the door, listening intently for any sign of activity on the other side. All is quiet, more so than in the tunnels behind you, in fact. Doesn't seem like anyone is home right now, so you take hold of the door handle. The utility room door is surprisingly heavy, and a little rusty in the hinges, creating a squeal as you pull it open, then step into the room beyond. ";
			say "[Mall_Utility_Room_Desc]";
		-- "Turn around and leave this place behind (for now).":
			LineBreak;
			say "     Hesitation stretches out the next moment as you contemplate what to do, then decide to leave exploring here for... another time, maybe. Backing away from the door, you turn around and start to retrace your steps to where you started from.";
			now Resolution of Mall Utility Room is 1; [postponed]
		-- "Decide you don't even want to know what is in there (at all).":
			LineBreak;
			say "     You've seen enough horror movies to know that entering creepy underground rooms is not advisable. Though along the same lines, you wonder for a second why you're even down here in the first place, then push that thought aside and turn around, retracing your steps. As you leave the door behind, you make a firm resolution to not come back.";
			now Resolution of Mall Utility Room is 100; [avoided for good - unless the slutrat quest is started]
			now Mall Utility Room is resolved;

to say Mall_Utility_Room_Desc:
	say "Glancing around, you see that what once was just an unremarkable utility room has been transformed into something else entirely. Lit by more than a dozen large, slow-burn candles set on the metal shelving along the walls, the place looks more like the underground lair of some sort of cult, complete with mildly disturbing paraphernalia taking the place of maintenance worker's tools: There are plenty of jars and bottles with unknown fluids in various colors, gags and various items of BDSM bondage gear, and even a human skull staring at you from hollow eye-sockets. The centerpiece of it all is a large pentagram spray-painted on the concrete floor in the middle of the room, with fresh, black candles set at each point of the symbol's central star.";
	say "     Unsure what to make of this ritual chamber, you keep looking around and spot another door on the opposite side of the room. Instantly deciding that you should check that out first, you lay your hand on the door handle and try it, slowly and carefully, but find the metal door locked. Seems like that won't lead you on anywhere, so you turn back to investigate your surroundings instead. Stepping up to the nearest shelf, you have a look at the bottles and jars - none of them are labeled, or if they were, had their labels scraped off. Blue, green, purple - there's plenty of colors to go around with these, but more than a few are filled with milky white goop. A little closer examination of one such jar with a dried smear down its outside reveals that this is what was to be expected - cum. You can't help but idly wonder what would produce enough of the stuff to fill all the containers you see (if everything white actually is cum, that is). There must be gallons of the stuff in here!";
	WaitLineBreak;
	say "     You avoided thinking of which poor person might have lost their head so far, but at some point investigating the skull becomes inevitable, sitting in its prominent position on the shelf flanked by two burning candles. It's a human skull alright, very skull-shaped and everything, grinning at you with white-shining teeth. All in all, the thing really is surprisingly clean, suspiciously so, and you soon realize that it's made from plastic. A halloween decoration, placed here for atmosphere, you guess. Having found the skull to be fake, some inner voce tells you to look at the black candles too, and you step over to pick one up, flipping it around. There's a price sign on the bottom: 'Candles & More, 1 standing candle, unscented, long-burning. 14,99$' - pricy stuff, for not even having any scent, and you remember seeing that store up in the mall. Seeing that this cultist lair seems to be stocked with mundane items from the shopping mall above, you feel much less threatened by the whole setup now...";
	say "     ...Until you make the mistake of wanting to cross the center of the pentagram that is, where you're hit by a wave of dizzyness, with the cloying scent of cum hitting you like a brick to the face. Eyes watering and heart racing, you half-stumble and fall to one knee, from where you catch sight that there is [italic type]another[roman type] circle enscribed on the ceiling above! Someone must have spent hours on a stepladder to do all that. The second circle consists of blocky foreign letters wrapped in a band to match the pentagram, and a bunch of strange symbols within. Looking at them and trying to make heads or tails of the curved, crossing lines starts to hurt you in the eyes before long, as if someone was pushing a freezing icepick down your optic nerves. Heart racing, you rush to leave the pentagram - for a second, it feels like you're pushing against an invisible, spongy barrier impeding your progress, but then you manage to push past whatever that is, freeing your movement so suddenly that you almost brain yourself against one of the room's concrete walls.";
	LineBreak;
	say "     [bold type]Shaking your head at the weird combination of being in a cheaply set up, but nevertheless quite real, ritual chamber, you decide to... [roman type][line break]";
	LineBreak;
	let Mall_Utility_Choices be a list of text;
	add "Steal some of the cum jars, for your own purposes." to Mall_Utility_Choices;
	add "Just get out of there, and quickly!" to Mall_Utility_Choices;
	let Mall_Utility_Choice be what the player chooses from Mall_Utility_Choices;
	if Mall_Utility_Choice is:
		-- "Steal some of the cum jars, for your own purposes.":
			LineBreak;
			say "     Making extra sure you skirt around the pentagram in a wide circle, you step up to the closest shelf and quickly swipe two of the cum containers, adding them to your backpack. Then you duck out of the room and push the entrance door closed behind you, more than glad to leave that place and its dark secrets behind!";
			ItemGain demon seed by 2;
		-- "Just get out of there, and quickly!":
			LineBreak;
			say "     Not wanting to stay any second longer in the place, you rush to the entrance door and step through, then push it closed to get a layer of metal between that pentagram and yourself. Even as you plunge back into the darkest spots of the tunnels while retracing your steps, you can't help but feel glad that you left the ritual chamber and its dark secrets far behind you.";
	now Resolution of Mall Utility Room is 2; [examined the room]
	now Mall Utility Room is resolved;

[
Section 5 - Captive Rat

Table of GameEventIDs (continued)
Object	Name
Captive Rat	"Captive Rat"

Captive Rat is a situation.
ResolveFunction of Captive Rat is "[ResolveEvent Captive Rat]". The level of Captive Rat is 6.
Prereq1 of Captive Rat is Mall Utility Room.
Prereq1Resolution of Captive Rat is { 2 }.
Sarea of Captive Rat is "Mall".

when play begins:
	add Captive Rat to BadSpots of MaleList;
	add Captive Rat to BadSpots of HermList;
	add Captive Rat to BadSpots of FurryList;
	add Captive Rat to BadSpots of DemonList;

to say ResolveEvent Captive Rat:
	say "     As you're making your way though the almost lightless tunnels of a storm drain that is connected to the overall maze of passages underneath the mall, you hear the sound of someone talking, or maybe chanting coming from a large hole where something smashed its way through the drain's side wall, which leads to one of the mall's utility tunnels - and not just any utility tunnel, but the one with the hidden ritual room at the end of it! Remembering what you saw in there, you cautiously approach the opening and lean forward to look down the tunnel on the left. The metal door at the end of the hallway is standing half-open, with flickering light from the candles within the former utility room throwing dancing shadows onto the wall. You can also clearly hear a male voice chanting words now, in a weird language you don't recognize, and which doesn't really sound human at all. A second voice can be made out too, this one female if you had to guess, which is a little difficult as it's mostly whimpering and begging with slurred words.";
	LineBreak;
	say "     [bold type]What do you do? [roman type][line break]";
	LineBreak;
	let Mall_Utility_Choices be a list of text;
	add "Approach quietly and have a look at what is going on." to Mall_Utility_Choices;
	add "What's going on in there is none of your business. Just get out of here!" to Mall_Utility_Choices;
	let Mall_Utility_Choice be what the player chooses from Mall_Utility_Choices;
	if Mall_Utility_Choice is:
		-- "Approach quietly and have a look at what is going on.":
			LineBreak;
			say "     Thankfully, the sounds of whatever is going on in there are enough to cover any noise you make as you approach, until you're in front of the opening of the utility room's door. Glancing within carefully as not to make your presence obvious, the first thing you see is a female mall rat, lying on the ground in the center of the pentagram. She seems a little worse for wear, naked body barely covered by a few remaining scraps of clothing that must have been ripped or cut off her, while the young woman's arms are tied behind her back. On top of that, she'S clearly drugged in some way, squirming in her bonds in a fairly uncoordinated manner and letting out desperate whimpers and rambling, almost incomprehensible pleading. Chancing a second of leaning forward a little bit more, you see the person chanting - he's garbed in an oversized black robe, complete with a deep hood that's hiding his features. All you can make out of the cultist's form underneath the robe is literally in the five inches under its bottom end, where you catch a glimpse of slender foot-paws and the tip of a pink, hairless tail emerging under the fabric. Looks like the cultist is a rat too!";
			say "     Before you have any chance of reacting, the ritual chant reaches a climactic point, and there is a spark of light mid-air, in the center and halfway between the upper and lower circle. The pin-prick of brightness remains where it is, turning a deep crimson red a second later, at which point purple smoke starts to emerge from the coin-sized portal. More and more smoke pools into our reality, arranging itself into a towering humanoid shape, then solidifies with a roar, revealing the beast being summoned to be a demon brute! 'There is your payment for our pact, the first of many!' the cultist calls out, nodding to the captive rat, then adds, 'She's ready to be your plaything, and my last test! Take her and fill her with your essence! Everything else is prepared!' Whipping his horned head around to look at the tied woman between his clawed feet, the demon reveals a frightfully wide smile of dozens of sharp teeth. His massive cock throbs visibly, eager to sheathe itself into the rat.";
			say "[Captive_Rat_Ritual_Choicepoint]";
		-- "What's going on in there is none of your business. Just get out of here!":
			LineBreak;
			say "     Shaking your head to the mere concept of sticking your nose into whatevre is going on in there, you quietly turn around and leave. Sometimes it's best to look out for your own interests...";
			now Resolution of Captive Rat is 100; [turned away]
	now Captive Rat is resolved;

to say Captive_Rat_Ritual_Choicepoint:
	LineBreak;
	say "     [bold type]What do you do? [roman type][line break]";
	LineBreak;
	let Captive_Rat_Ritual_Choices be a list of text;
	add "Storm into the room and stop this vile deal!" to Captive_Rat_Ritual_Choices;
	add "Hang back and grimly bear witness to what'll happen." to Captive_Rat_Ritual_Choices;
	add "Watch arousedly as the demon takes his time with the rat." to Captive_Rat_Ritual_Choices;
	add "Get out of here! You don't want to see this!" to Captive_Rat_Ritual_Choices;
	let Captive_Rat_Ritual_Choice be what the player chooses from Captive_Rat_Ritual_Choices;
	if Captive_Rat_Ritual_Choice is:
		-- "Storm into the room and stop this vile deal!":
			LineBreak;
			say "     ";
		-- "Hang back and grimly bear witness to what'll happen.":
			LineBreak;
			say "     ";
		-- "Watch arousedly as the demon takes his time with the rat.":
			LineBreak;
			say "     ";
		-- "Get out of here! You don't want to see this!":
			LineBreak;
			say "     This really isn't your scene! You turn around and run away, trying to tune out the screams that start before you're even back into the storm drain tunnels. As you leave the ritual chamber behind, you make a firm resolution to not come back.";
			now Resolution of Captive Rat is 99; [fled the ritual]
]

RodAndRonda ends here.
