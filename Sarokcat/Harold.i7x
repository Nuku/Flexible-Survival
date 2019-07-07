Version 4 of Harold by Sarokcat begins here.
[ Version 4 - Drinking contest M/M sex ]

"Adds an NPC to Flexible Survival with a well-stocked bar and a problem..."

an everyturn rule: [bugfix for misplaced npcs 2019-06-08] [TODO: Remove in a month or so]
	if Harold is in NPC Nexus:
		move Harold to Palomino;
	if Drink Bar is in NPC Nexus:
		move Drink Bar to Palomino;


Section 1 - Harold

Haroldtalk is a number that varies.
Haroldaroused is a number that varies.[not a needed number, but used to set different arousal states if they aren't automatically willing to just hop into bed.]
lastrandomharold is a number that varies. lastrandomharold is usually 250.
Haroldfucked is a number that varies. Haroldfucked is usually 0.
tattoohunter is a number that varies.
Harold is in Palomino.

Table of GameCharacterIDs (continued)
object	name
Harold	"Harold"

Harold is a man.
[Physical details as of game start]
ScaleValue of Harold is 3. [human sized]
SleepRhythm of Harold is 0. [0 - awake at all times, 1 - day active, 2 - night active]
Cock Count of Harold is 1. [X cock]
Cock Length of Harold is 18. [X Inches]
Ball Size of Harold is 9.
Ball Count of Harold is 2. [X balls]
Cunt Count of Harold is 0. [X pussy]
Cunt Depth of Harold is 0. [X Cunt]
Cunt Tightness of Harold is 0. [X Cunt]
Nipple Count of Harold is 2. [X nipples]
Breast Size of Harold is 0. [X at the start]
[Basic Interaction states as of game start]
TwistedCapacity of Harold is false. [can not take oversized members without pain]
Sterile of Harold is false.
PlayerMet of Harold is false.
PlayerRomanced of Harold is false.
PlayerFriended of Harold is false.
PlayerControlled of Harold is false.
PlayerFucked of Harold is false.
OralVirgin of Harold is false.
Virgin of Harold is true.
AnalVirgin of Harold is true.
PenileVirgin of Harold is false.
SexuallyExperienced of Harold is true.
MainInfection of Harold is "Unicorn".
The description of Harold is "     Standing behind the bar is a well-built and rather horse-like man, obviously an experienced bartender by the way he handles himself as he dishes out drinks to the patrons. His slightly hoof-like hands not seeming to slow him down at all. A black leather vest resting against his pure white fur makes him look even more striking due to the sharp contrast of colors. Even more striking however is the spiraling horn emerging from the center of the equine's forehead. Its pearlescent sheen catching and reflecting the colored lights of the club, and making it seem to shimmer and burn with a small rainbow of color every time the unicorn bartender moves his head. Catching you looking in his direction, the equine barkeep winks at you and gestures to an open spot at the bar, obviously inviting you to come talk, even as the shining unicorn puts together another drink for one of the strippers.".
The icon of Harold is Figure of Harold_icon.
The conversation of Harold is { "Glug glug!" }.

the scent of Harold is "Harold has an equine scent laced faintly with that of several fine alcohols.".


Section 2 - Conversation

instead of conversing the Harold:
	if Haroldtalk is 0: [first time you encounter the NPC text]
		say "     'Hey there, newcomer, the name's Harold,' the large unicorn says with a smile on his equine muzzle as he leans forward on the bar and stretches out a hand to welcome you. 'Good to see another friendly face around here, especially one that isn't [']too friendly['], if you know what I mean,' Harold says with a chuckling nicker of laughter. 'I'm sure you have bumped into plenty of [']too friendly['] beasts out there already.' He nods knowingly at you as you shake his rather large hoof-like hand. 'Had my own encounter with one, as I'm sure you can tell already. Though strangely enough, it was a horse and not a unicorn that played 'hide the horn' with me.' Harold winks at you as he says this, resting his arms easily on the bar as a fond grin crosses his equine muzzle. 'Dunno why I ended up like this instead of a horse myself, but it does have some benefits - main one of which is that I seem to have kept my sanity while a buncha the others lost it,' the unicorn says with a shrug, before leaning close and saying in a lower tone of voice. 'The secondary benefit, of course, is what I ended up [']hung like['], if ya get what I'm saying,' Harold whispers teasingly for your ears only. His ribald statement makes you smile with amusement, even as you find yourself growing slightly aroused.";
		increase Haroldtalk by 1;
	else if level of Player >= 9 and HP of Joanna is 92 and joannaharoldtalk is 0:
		say "     Going over to Harold, you inquire about Joanna, whom you haven't seen around of late. 'It's been a while, hasn't it?' he says. 'I think she mentioned something about going downtown to check out some overgrown flower gardens she'd spotted. I'm starting to get a little worried. You might want to head down to the high rise district and see if she's in an [bold type]overrun garden[roman type] around there. Just be careful if you do.";
	else if Haroldtalk is 1:
		say "     'Hey there again, been thinking about you actually,' the large unicorn bartender says with a smile as you sit down at the bar. 'I see you still wander around the city a lot, while most of us stick close to safety,' Harold says with a slight questioning tone to his voice. The unicorn smiles as you nod in response and continues, 'Perfect! I was hoping you would say that. See I was wondering what happened to a friend of mine out there, and I was hoping you could go check on them for me if you had some spare time?' Harold asks you hopefully. Do you offer to help the bartender find his friend?";
		if Player consents:
			say "     'Great! You see she runs a little tattoo and piercing parlor not too far away, and while I managed to find my way here safely, I haven't heard a thing about her since before things started going crazy,' Harold says with a sad, whickering sigh. 'Of course with the mess the red light district is in, it would be pretty damn hard for me to go look myself. Even if I do seem to be resistant to other changes, there are plenty of creatures out there that don't think twice about taking captives, and the streets are such a mess it could be a pain finding the place again, even though I have been there plenty of times before,' the unicorn stallion says with another sigh before a grin spreads across his equine face, his horn shining as he nods at you happily. 'Which is where you come in, since I imagine you can find out for me if she is still ok out there, and maybe let her know her favorite bartender is all right and where to come for a drink as well,' he says as he claps you on the shoulder happily before giving you some directions on what to look for. It looks like you are off to the red light district next!";
			now Haroldtalk is 2;
			now tattoohunter is 1;
		else:
			say "     'Ah well, I suppose it probably was too much to ask for,' Harold says with a sigh, 'Don't worry, I won't bring it up again, now can I get you anything to drink?' The dejected unicorn asks halfheartedly.";
			now haroldtalk is 2;
	else if tattoohunter is 4:
		say "     Harold welcomes you back heartily and, before he can ask, you quickly fill him in on your recent rescue of Kara and her new, hyena-like form. He seems rather glad that you found her still sane, but a little disturbed by her new form, though he eventually shrugs and thanks you heartily for your help. You find yourself smiling slightly as the handsome equine barkeep admits he owes you one now, and gives you a teasing wink before returning to serving drinks.";
		now haroldaroused is 1;
		now tattoohunter is 5;
	else if tattoohunter is 2:
		say "     'Welcome back! How did the search go?' Harold greets you enthusiastically as you settle down at the bar, though the unicorn's happy demeanor is quickly replaced by a more somber one as you relate what you found. After explaining that his friend obviously headed out into the city in search of much-needed supplies, and never managed to return, you inform the unhappy unicorn that it is likely some of the creatures in the city managed to get their hands on her, and she is quite possibly just as sex crazed as any other member of whatever species she ended up as. Seeing the dejected look on the equine barkeepers face, you sigh and say you will continue to keep an eye out for her in the city, though it isn't likely you will recognize her if she has changed too much. Harold nods, and promises to think about the problem for a bit to see if he can come up with something to help you find her, before the powerful unicorn goes back to tending the bar.";
		now tattoohunter is 3;
	else if hellgatherquest is 4:
		if tattoohunter is 0:
			say "     'Hey there friend, what can I do for you?' The unicorn barkeep asks as you approach, only to sigh as he skims the list of ingredients you hand him. 'Well, yeah I have these items actually... but they weren't easy to acquire either, tell you what... you help me find out what happened to my friend, and I'll let ya have the stuff you need, what do you say?' The barkeep asks hopefully, and you sigh and nod in agreement, much to the unicorns amusement.";
			now Haroldtalk is 1;
		else if tattoohunter > 2:
			say "     'Well friend, just because things didn't quite work out the way I would have liked them, it doesn't mean I don't owe ya for all your help looking for my friend. Why don't ya show me that list of yours there, and we can see what I've got,' the unicorn barkeep says with a broad smile and a nod of his head as you approach him about the ingredients. He wanders off into a narrow back room for a while, only to return with a small pouch full of some unknown items. 'Well, here ya go. These should be what ya want. Gave ya all of the stock I was saving, since I didn't know how much you would need. And if ya need anything else, you be sure to come visit Harold ok?' the rather saucy unicorn says with a sly wink as you tuck the pouch away and prepare to head back to Nermine with your findings.";
			now hellgatherquest is 5;
	else if Haroldtalk is 2 and a random chance of 2 in 5 succeeds:
		say "     'Am I ever so glad to see you!' Harold says with a hint of desperation coloring his voice. Confused, you cock an eyebrow at the large stallion. 'Look, I know you shouldn't ask this of friends, but I REALLY need your help.' Giving the unicorn a quizzical look, you ask Harold what the problem is. The horned equine curls a finger begging you closer before he himself leans down to whisper something into your ear. 'See, the thing is, the club's slowly running out of food and before long we're going to need to send some people out to go and find some provisions, otherwise things are going to get... uncomfortable... around here for some of us.'";
		WaitLineBreak;
		say "     Harold turns his gaze towards some of the predators in the club and you quickly come to understand the unspoken message. 'I know this not your problem, but I also know you travel outside a lot, so if you could snag maybe ten things of food and maybe ten liters of water, then I'd be really indebted to you.' Letting the other man know that you'll see what you can do, you receive a somber nod from Harold before the bartender pulls himself to stand in his usual upright position back behind his bar. 'Ok. And thanks.' You nod and then turn to leave from the bar to go about your way.";
		now Haroldtalk is 3;
	else if Haroldtalk is 3 and ( carried of water bottle < 10 or carried of food < 10 ) and a random chance of 2 in 5 succeeds:
		say "     [one of]Harold nods for you to come closer and then whispers, 'Did you ever get that food and water I asked you for?' Shaking your head you get a sigh out of the unicorn. 'Look, I know you're busy and all, but I [italic type]really[roman type] need ten things of food and ten things of water, if you can spare them. I'll try to make it worth your while if you can get them ASAP.' Nodding to the other man you tell him that you'll do the best you can.[or]'Did you have any luck finding those supplies I'd asked about?'[or]'Don't forget to keep your eyes open for some of the supplies we need here.'[or]'Most of the staff here don't have much time to collect supplies, so we need help from helpful patrons like you to keep us supplied.'[at random]";
	else if Haroldtalk is 3 and carried of water bottle >= 10 and carried of food >= 10:
		decrease carried of water bottle by 10;
		decrease carried of food by 10;
		say "     When you walk up to Harold to let him know that you have the food and water he needs the unicorn quickly waves a hand to hush you and then nods for you to follow him back behind the bar. Once you're in the back Harold has you unload the food and water over by a small generator powered refrigerator unit and then leads you back to the front.";
		say "     'Thanks a lot for this, I really appreciate it,' Harold whickers gratefully and you nod to the unicorn before turning to head off about your way. 'Hey, hold up a sec.' Stopping you turn to look back at Harold and then find yourself being handed something by the stallion. 'It's not much, but I wanted you to have this. Looking at what the unicorn hands you, you find yourself in possession of a good number of freecred. 'Some guys at Zephyr have been giving these out for nailing the beasts running around... so... yeah...' Wondering how Harold got a hold of these, considering that he's been at the bar the whole time, right before you shrug and then thank the other man for the gift. 'No problem!'";
		increase freecred by 100;
		increase XP of Player by 12 + level of Player;
		now Haroldtalk is 4;
	else if femonyxq is 0 and FemaleList is not banned and XP of Onyx >= 6 and XP of Onyx <= 8:
		say "     As you approach bar, you're stricken with the notion that Onyx might be better suited here than at the Abbey, though you're not sure if all the ladies around might have an effect on him. Shall you raise the topic with him?";
		if FemaleList is warded:
			say "     [italic type][bracket]Ward Caution: Will turn Onyx female[close bracket][roman type][line break]";
		if Player consents:
			say "     You call the bartender over and ask about perhaps sheltering a friend of your who might be able to work for him. When asked why here, in particular, you suggest that it simply felt appropriate, given the name of the bar and the Onyx's equine infection.";
			say "     'Well... [if haroldtalk is 3]We're kinda strapped for supplies here, but[else]Since I like you,[end if] sure, bring them around and we'll see if there's anything that can be done. No harm in it, I suppose.' That worked out easily enough! With this in mind, you should probably return to Onyx and talk to him about the deal.";
			now femonyxq is 1;
		else:
			say "     You ward off the notion, returning your attention to whatever else you might've had in mind.";
			now femonyxq is 99;
	else:
		If a random chance of 1 in 3 succeeds and lastrandomharold - turns >= 8 and LastDrinkserved is not 250:
			say "     'Hey, would you mind tasting this for me?' Harold asks just after pouring a pink tinged liquor from a pair of shakers he had been tossing about into a lone wine glass atop his bar. Seeing the drink, and noting the funny way the liquid shimmers an almost pale white in underneath the flashing lights of the club, you glance up at the bartender, then back to the drink. Shall you try it?'";
			if Player consents:
				say "     Deciding you could go for a drink, you shrug and pick up the glass, taking a sip of it.";
				WaitLineBreak;
				say "[drinkflavor]";
				increase score by 2;
			else:
				say "Deciding to play it safe, you pass on the drink. Harold finds someone else to give it a try.";
				now lastrandomharold is turns - 8;  [added delay before next offer]
		else:
			say "     '[one of]No, I was far from being a virgin, so that can't be why I ended up this way,' Harold says with some exasperation as you open your mouth to talk to him, making you blink in surprise.[or]Try some of the drinks, we make [']em all here!' Harold says proudly.[or]I wish some of the patrons would get back with those supplies I need, we are running low on some of the [']special ingredients['] for some of the drinks.'[or]See Tristian over there? He really helped get this place going right after things went to hell. Maybe you should go talk to him sometime about it.'[or]I was a bartender before all this happened, different bar of course, but I have to admit I like this venue better, lots of eye candy at least!'[or]Eat, Drink, Party! For tomorrow we may be overrun! Or something like that anyways.'[or]Looking to order a drink? Just look at the bar to see what we have available, and then order it.'[or]It's a good thing I don't need to find virgins to play with, given the state the city is in now, I'm not sure there are any left!'[or]We get all types around here now, I have to say, it definitely makes bartending more interesting.[or]We occasionally have some trouble with the roaming beasts trying to get in here or attack people, but there are more than enough of us both here and in the apartment building next door to keep the place safe.'[or]If you need a place to crash sometime, we kind of took over the apartment building next door, blocked off the front access so no one can get in that way, and the side entrance we attached to the club. That's where most of the people here end up when they need to relax, it also has a good basement for the still,' Harold says with a chuckle.[or]If ya need help with something, you are probably in the wrong place, if you need a damn good time and a drink or two, then you are definitely in the right place.'[or]'We burned through most of the stocks of standard booze pretty fast at first, till we figured out how to mix them up to make them last longer, you should let us know how we did after trying some of the drinks.'[at random]";


to say drinkflavor:
	let T be a random number between 1 and 8;
	if T is 1 or T is 2:
		say "     Right away you find that the flavor of the unknown drink is relatively sweet on your tongue. Licking your [FaceName of Player] lips you nod up to the unicorn before swallowing down the rest of the fluid in a single gulp. Letting the sweet, if not somewhat tangy, liquor settle into the back of your throat you savor the unique flavor of the alcoholic beverage for several seconds before swallowing happily. 'I'm glad you enjoyed that,' Harold whickers, very much pleased with himself. 'I'm making a new drink to put up on the drink bar's menu, but I think I need to refine this little concoction of mine some more before I do that,' Harold proudly neighs. You nod to the other, thanking him for his, as of yet, unnamed concoction and then go about your business for the day.";
		PlayerDrink 8;
	if T is 3 or T is 4:
		say "     On first taste you find that the flavor of the drink is rather bland on your palate. A second sip doesn't help your opinion of concoction any and quickly you find yourself shaking your head up at Harold. Smacking your lips you can't stop yourself from flinching in distaste as your tongue seems to go numb for a minute. Noting the sheepish smile on Harold's face you shrug and then down the rest of the liquor as quickly as possible. Setting the glass back down onto the counter you give the unicorn another shake of your head before giving the drink a big thumbs down. 'No good, huh? Damn, guess I'm going to have to fine tune it some more. Maybe if I add some sugar instead of salt?' Harold asks you while curling his lips up into a concentrated frown as he looks at the now empty wine glass. You nod and then give the unicorn your opinion, watching as he stares at you somewhat sagely, before slowly taking your leave of the bar to go about your business.";
		PlayerDrink 4;
	if T is 5:
		say "     The first taste of the unsavory drink immediately makes you spit it out. Coughing and hacking the putrid tasting beverage back up you completely miss out on the fact that Harold has jumped back out of the way so as not to be splashed by your [']review['] of his latest concoction. 'No good, huh?' the unicorn asks somewhat nervously and it takes everything in you to keep from telling the equine man off. Placing the wine glass back down onto the bar you gaze at the disgusting pink liquor for a second before informing Harold of your thoughts on his latest concoction. 'I-I see... well, I'm sorry about that. Guess I need to work on it some more?' Harold asks nervously after reaching up to stroke his long pearlescent horn somewhat sheepishly.";
		PlayerDrink 1;
	if T is 6:
		say "     The first taste of the drink has you pulling back and then staring at Harold somewhat incredulously. The big unicorn blinks at you in some confusion and prepares to open his muzzle to ask what the matter is, but you beat him to the punch as you ask him how much alcohol he put into this unknown beverage. 'About the same amount you'll find in your average Piña colada. Why? Is it too strong?' You look to the unicorn and then down to the pink alcoholic concoction in front of you before bringing your thumb and forefinger fingers up to pinch them together ever so slightly. The unicorn apologetically sighs and then nods his head, but when he tries to get the drink back from you, you are already downing the wine glass so as to polish off the rest. Harold whickers happily once you set the glass onto the bar and you nod at the man before turning to go about your business, stumbling just a tad bit as you do.";
		increase thirst of Player by 2;
		if thirst of Player > 100, now thirst of Player is 100;
	if T is 7:
		say "     At the first taste of the unnamed drink you find yourself instantly feeling somewhat tipsy as the world around you begins to shift ever so slightly. Not letting this deter you however, you knock back the rest of the alcoholic beverage in a single gulp before slamming the wine glass down onto the bar. This proves to be a mistake on your part because very soon you are swaying and giggling in your seat as you look up to Harold with half lidded eyes. Staring up at Harold you suddenly find that the other man looks particularly sexy with all those muscles and that awesome silver mane of his wrapped in that too tight black vest he has on. 'T-too strong?' The unicorn asks while taking a quick step back as something in your drunken eyes has him severely spooked. Seeing his fear and that cute little bob of his throat where his delicious looking Adam's apple is nervously vibrating, you instantly fly over the counter to tackle the unicorn.";
		WaitLineBreak;
		say "     Harold yelps as he catches you with his muscular arms, however, the horned equine is not at all prepared for you to kiss, lick, nip, bite and all out chew on his throat as you quickly find yourself [italic type]hungry[roman type] for the sweet tasting mythic beast. It takes the other almost two minutes to pry your [BodyName of Player] form away from him, but when he does Harold has no time to try and calm you down because you quickly pass out seconds later. In the dim fog of black unconsciousness, you could almost swear that you heard someone say [']WAY too strong['], but you're not sure.'";
		unicornify;
	if T is 8:
		say "     At the first taste of the unnamed drink, you find it rather tasty, with a [one of]fruity[or]strong[or]minty[or]powerful[at random] flavor and a [one of]mild[or]sharp[or]subtle[or]sweet[or]rich[at random] aftertaste. You smile and swallow down the rest of it. It's not quite the sort of thing you'd usually get, but it's pleasant enough and you tell the unicorn so. He seems fairly pleased with your review. 'Well, that one's coming along well, I guess. I'll need to stock up a bit more before I can put it on the menu though. Got to make sure I have a supply of the [']special ingredient['],' he adds with a wink.";
		say "     'Uh oh,' you think to yourself.";
		WaitLineBreak;
		weakrandominfect;
		infect;
		SanLoss 5;
		PlayerDrink 5;
	now lastrandomharold is turns;



Section 3 - Sex Mechanics

the fuckscene of Harold is "[sexwithharold]".

to say sexwithharold:
	setmonster "Unicorn";
	if lastfuck of Harold - turns < 4:
		say "     'Hey now, I know we both had a lot of fun, but I do need to actually serve drinks sometimes as well,' Harold says with an amused grin, 'Don't worry, I am sure I will find time for another 'Unicorn ride' soon enough, and I'm sure the club members would appreciate another show as well,' he says with a chuckle, the thought making you blush even as your body grows warm with anticipation of another lovely exhibitionistic round with the handsome unicorn.";
	else if Haroldaroused > 0:
		now lastfuck of Harold is turns;
		if Player is female:
			say "[haroldfemalesex]";
			unicornify;
			increase haroldaroused by 1;
		else if Player is male:
			say "[haroldmalesex]";
			unicornify;
			increase Libido of Harold by 1;
		else:		[neuter]
			say "     'Heh, sorry there man. While I may not necessarily need virgins or anything, I am still a bit more comfortable with something with a pussy, if ya get my meaning. Though since you did me a favor and seem interested, here's a drink on me... or of me...' the unicorn stallion says with a grin as he sets a glass in front of you. The strangely enticing aroma of the unusual liquor goes right to your head even as you toss it back. The spicy-sweet taste and the kick of the alcohol makes you gasp, even as a happy, lust-filled fog suffuses your brain. You find yourself staring happily at the play of light across the stallion's handsome horn even as you set your drink down.";
			unicornify;
	else:
		say "     'Sorry, friend,' Harold says with a sigh, 'but as tempting as your offer sounds, I can't really leave the bar right now,' the unicorn says with a shrug as he mixes a drink for someone. 'Don't worry though, I am sure you can find plenty of other partners out there more than eager to play with a horny little thing like you,' he adds with a wink before going back to what he was doing.";


Section 4 - Unicorn Rides

to say haroldfemalesex:
	say "     'Well now, I suppose I can't turn down an offer from a friend that helped me out, now can I?' Harold says with a grin as he looks you over for a minute, his horn seeming to gleam almost hypnotically in the flashing light of the club as he gestures you closer. 'Now, I can't leave the bar unattended,' he says as you find yourself moving closer the handsome unicorn stallion. 'But I don't think anyone will mind if we put on a little show of our own now, do you?' he asks teasingly as he reaches out and lifts part of the bar up so he can guide you behind it with him. His sexual scent and the sight of his powerful, erect, equine cock cause your pussy to clench with desperate need even as you nod absently in distracted agreement. 'That's what I thought,' the unicorn male says with a chuckle, even as he pins you against the bar. His strong, hoof-like hands lift your legs up as he braces you against the bar, and his thick, delicious rod presses up against your heat-filled pussy teasingly. You find yourself moaning wantonly as you brace your hands on the bar behind you, his handsome, equine muzzle and shining horn filling your vision even as he begins to rub his cock up against your body teasingly. The situation seems increasingly erotic as you realize that anyone in the club can look over and see the sexy unicorn stud preparing to fuck you right out in the open, and several of the other people at the bar are already watching with interest as he guides his thick length into your eager body.";
	say "     The feeling of his powerful stallionhood filling you is almost too much for your mind to bear, and you cease to care about where you are or how many people might be watching, as soon as you feel his warm, strong rod splitting you open. You groan happily as you lean back on the bar, feeling totally helpless in his arms as he begins to rock his hips into you softly, the feelings causing you to let out soft noises of pleasure with every penetration. Harold soon lowers his muzzle down to run his equine lips over your nipples teasingly, sucking and licking on them even as he pumps himself into your submissive form, his every touch causing your body to burn even hotter with need. Soon you are begging him wantonly to fill you with his seed, not caring who else hears your submission as your body burns for the amazingly sensual unicorn to claim you as his mare and make you his.";
	say "     Your unicorn stallion seems pleased by your near total surrender, and begins to pump his amazing rod into you harder and faster, your dazed eyes watching his shining horn happily as you feel yourself becoming more and more his with every thrust. Finally, after what seems like a near eternity of lust and pleasure, you feel his thick cock begin to spurt his wonderful seed into your body, claiming you as his little unicorn slut as he pumps what feels like gallons of his thick seed into your waiting womb. The thought of being his little, slutty pet and carrying his handsome foals causes you to orgasm as well, your mind awash in submissive pleasure even as he finishes filling you up. Eventually, Harold sets you down on the bar, and you moan and rub your aroused body as he pulls out of you and begins to go back to serving the patrons that have gathered nearby for the show.";
	say "     Looking around at all the people who watched him fuck you, you find yourself feeling strangely satisfied even as you feel his fertile seed leaking out of your well used pussy. Somehow, the thought that all these people saw you used like the lusty unicorn's slut you are is even more attractive now with your stallion's seed filling your body up, their witnessing him claiming your body as his personal fucktoy somehow making it seem even more permanent. Shaking your head slightly to gather your wits, you slowly hop down on the other side of the bar to mild applause, and Harold gives you a wink and a nod, his hypnotic horn flashing teasingly as you prepare to continue your adventure, though you find yourself realizing you will probably be back here to put on another show for the club again soon - if your needy body has anything to say about it.[impregchance][impregchance]";


to say haroldmalesex:
	if Libido of harold is 0:
		say "     'Heh, sorry there man. While I may not necessarily need virgins or anything, I am still a bit more comfortable with something with a pussy, if ya get my meaning. Though since you did me a favor and seem interested, here's a drink on me... or of me...' the unicorn stallion says with a grin as he sets a glass in front of you. The strangely enticing aroma of the unusual liquor goes right to your head even as you toss it back. The spicy-sweet taste and the kick of the alcohol makes you gasp, even as a happy, lust-filled fog suffuses your brain. You find yourself staring happily at the play of light across the stallion's handsome horn even as you set your drink down.";
	else if Libido of harold is 1:
		say "     'Hmm... back for more, are you?' the unicorn asks with a grin. 'I'm guessing that you're looking for another drink. And I take it you want it from the tap this time,' he says with a chuckle and a shimmer of his iridescent horn. 'Well, I can't say I'm too surprised. With all these hot and horny guys around, it'd certainly give a man some ideas.' He moves around to the front of the bar, showing he's already become mostly erect from the prospect of some action with you. 'Even though I was given a rather enjoyable horsie ride to end up like this, I still do much prefer being with a woman. But I'm certainly willing to make an exception for a few friends who've helped me out,' he adds, running a hand along your side, then to the back of your head.";
		say "     Deciding to get to work, you lower yourself onto your knees in front of the unicorn stallion's bar, his cock in your hand. Stroking him slowly, you make a show of licking his cock and nuzzling his balls before taking it into your mouth. His taste is wonderful, rich and enticing, like his personal drink. It makes you all the hungrier to taste his seed. He rubs his hands over your head, moaning softly for you to keep it up. You lavish attention upon his cock, eager to show him how good a man can make another feel.";
		say "     As you bob your head up and down, you can hear the activity immediately around you settle down. The music and dancing continues, but right around you grows quiet. You suspect they're probably more than a little surprised to see a male going down on the unicorn. Chuckling to yourself, you wouldn't be surprised if most of them have already struck out with him. This only encourages you further, reveling in the fact that you're getting something the rest of them can't.";
		say "     And when the unicorn cums, how rich and delicious it is, flowing wonderfully down your throat. It has an indescribable taste that fills you with energy, making you tremble as you cum as well. It's much like the drink he gave you before, but purer and with such a virile flavor as well. Despite his sizable output, you somehow manage to swallow it all down, much to the surprise and envy of those watching around you.";
		increase morale of Player by 1;
		increase Libido of Player by 15;
		if Libido of Player > 100, now Libido of Player is 100;
	else if remainder after dividing Libido of harold by 3 is 2:	[anal]
		say "     'Looking for more, are you?' he says with a chuckle. 'I guess I'm just going to have to show these girly boys here how to properly pound an ass.' And with that, he pulls you around behind the bar and bends you over it, facing the rather surprised group of patrons around. Harold takes a moment to get his stiff cock lined up with your ass, grinding it against your butt a few times[if Libido of harold is 2]. 'I've only done this with that horny black wolf before, so just bear with me while I get started,' he whispers to you as he lets some of his pre dribble onto your asshole[else]. The unicorn takes his time to get started, letting some of his pre dribble onto your asshole[end if]. After he's satisfied you're lubed up and ready, he slowly drives his cock into your rear, making you both nicker in pleasure. Turning your head back, you nuzzle and share a kiss with him, which seems to make his colorful horn scintillate even more, though that may just be the flashing lights of the club.";
		say "     As the amazed patrons watch, Harold pounds away at your ass, pumping his exquisite cock into you again and again, filling you with great pleasure. Despite his inexperience with anal sex, he does an excellent job at it, filling you with waves of pleasure with each thrust. His equine cock feels so good in you, like you belong beneath this virile male. The feel of his flared cock sliding along your inner walls, the rubbing against your prostate, the medial ring slipping in and out of you - it all sends shivers of delight through you which leave you gripping the bar tightly for support. The excitement of getting publicly fucked on the bar, right in front of the others, also is a great thrill.";
		if Libido of harold is 2:							[add-on scene]
			say "     While getting fucked by the horny unicorn, you catch sight of [if HP of Andrew > 0]Andrew[else]a black wolf[end if] running over to the DJ and excitedly gesticulating in your direction. You think little of it, but as the current song fades out early, only to be replaced by a chorus of 'Always, I want to be with you. And make believe with you. And live in harmony, harmony, harmony...' fading in instead, you realize what that was all about. Atop you, Harold groans, but ends up just pounding you all the harder, much to your enjoyment.";
		say "     Harold gives you a wonderful, thorough fucking before finally cumming hard while pumping his hand over your dick. As the stallion's thick, ample load is pumped into you, you feel a rush of pleasure and cum hard as well. You can hear your seed splashing into an ice bucket, possibly to be made into another of the unicorn's strange drink concoctions. As Harold pulls out of you, there's some teasing and solicitations from the others, but he threatens to cut them off from drinks and they give up pretty quick.[mimpregchance][mimpregchance]";
		now Libido of Player is ( Libido of Player + Libido of Player + 50 ) / 3;
	else if remainder after dividing Libido of harold by 3 is 0:	[oral]
		say "     'Back for more fun, are you?' he asks with a chuckle and a shimmer of his horn. 'How does another sample of my special unicorn drink sound?' Responding that it'd certainly hit the spot, you move in around behind the bar and get on your knees. Soon enough, you slide your mouth over his throbbing cock, licking and sucking at it as he continues to tend the bar. He doesn't neglect you though, caressing your head and moaning what a fine job you're doing between filling orders. You roll his balls around in one hand while stroking your cock with the other, finding yourself very excited by the virile taste of the unicorn's manhood.";
		if HP of Andrew > 0 and a random chance of 1 in 4 succeeds:		[add-on scene]
			say "     You notice a familiar, effeminate voice ordering a beer and wave to Andrew from behind the bar, getting the wolf's attention. 'Oh ho, what have we here?' the wolf giggles drunkenly. 'Having fun, are we?' he asks. You respond by moaning softly and sucking harder on the equine cock stuffed down your throat, which is more than answer enough for the gay wolf. 'Mmm... you should come by and visit my booth again soon, hon. Maybe you could give me a bit of that treatment, too.' And with that, he heads back there with his drink.";
			now lastfuck of Andrew is turns + 8;
		say "     You continue to give your friend a blow job behind the bar while he continues working. When you finally get him to cum, he [one of]spills the drink he was making[or]has to grip the wooden bar for support[or]almost fumbles the bottle he was reaching for[at random] as he whinnies loudly. His delicious cum blasts down your throat, flowing into you and filling you with warmth and pleasure that makes you cum hard. Holding the ice bucket for Harold, you make sure to give him another sample of your creamy seed to mix into a few drinks.";
		increase morale of Player by 1;
		increase Libido of Player by 15;
		if Libido of Player > 100, now Libido of Player is 100;
	else:												[drinking contest]
		say "     'Well, well... back for more again. Maybe looking for a chance to ride the unicorn, stud[if Libido of harold is 4]? Well, I've been thinking lately it might not be so bad to have another go at it, just with someone I know better than some randy horse monster. You feel up for it[else]? Care for another shot at it[end if]?' he asks in a low voice with a grin on his face. You can smell that he's already a little tipsy from sampling some of his own stock. With thoughts of taking that equine ass of his, you nod readily. 'Good man. Now, I'm not going to just give it up so easily. We'll have a little drinking contest to decide who gets it in the end,' he chuckles at his own joke.";
		if Libido of harold is even:
			say "     He pulls some bottles from under the bar and starts pouring shots, setting them up in two long rows. 'Okay, so this is how we'll work it. We've got to balance your drink on the back of our hands and drink them like that. Spill it and you can lick it up while I fuck you.' Understanding the rules, you nod to him and get ready to start, eager to win and get a sample of his prize ass.";
			let playernum be level of Player + stamina of Player + dexterity of Player;
			let haroldnum be 36;
			if hardmode is true, increase haroldnum by level of Player / 2;
			let playernum be a random number between 1 and playernum;
			let haroldnum be a random number between 1 and haroldnum;
			say "     [special-style-1][playernum][roman type] vs [special-style-2][haroldnum][roman type]: ";
			if Playernum >= haroldnum:		[player wins]
				say "[if Playernum is haroldnum]Tie![else]Win![end if]";
				say "     You and Harold start taking drinks together while balancing the shot glasses on the back of your hands. It's a little tricky, but you manage to keep them steady. As the contest progresses, it gets harder for you. Even though the nanites help you deal with the alcohol, it is a lot of shots in quick succession and makes you progressively unsteadier. Just as you think you're not going to be able to last much longer, you [if Playernum is haroldnum]both make it through all the drinks on the table. You both stare at the empty shot glasses for a moment before Harold starts to laugh. 'Now that's pretty impressive of you. Not many can keep up with me. I guess you deserve a prize for that,' he says with a smile[else]are saved when Harold's equine muzzle bumps his glass of the back of his hand. He chuckles and concedes defeat[end if], rising a bit unsteadily at first to lean on the bar while motioning for you to join him behind it.";
				say "[dc_fuckHarold]";
			else:
				say "Lose!";
				say "     You and Harold start taking drinks together while balancing the shot glasses on the back of your hands. It's a little tricky, but you manage to keep them steady. As the contest progresses, it gets harder for you. Even though the nanites help you deal with the alcohol, you're dumping a lot of it in quickly and you get you progressively unsteadier. Your [BodyName of Player] hand ends up wobbling too much as you try to bring it to your mouth and the small glass tumbles off. With the drink spilled and Harold smiling at you with his gleaming equine teeth, you've lost and have ended up being the unicorn's ride again.";
				say "[dc_fuckedbyHarold]";
		else:
			say "     He pulls some bottles from under the bar and starts pouring shots, setting them up in pairs in two long rows. 'Okay, so this is how we'll work it. I'll flip the coin. If it lands heads, you drink from the right glass; tails and it's the left. Whoever drinks the right one first scores. First to five wins. Oh, and spilling a drink's the express to being this pony's ride.' Understanding the rules, you nod to him and get ready to start, your competitive nature as well as the prize of hot unicorn ass urges you to win.";
			let playernum be level of Player + stamina of Player + perception of Player;
			let haroldnum be 32;
			if hardmode is true, increase haroldnum by level of Player / 2;
			let playernum be a random number between 1 and playernum;
			let haroldnum be a random number between 1 and haroldnum;
			say "     [special-style-1][playernum][roman type] vs [special-style-2][haroldnum][roman type]: ";
			if Playernum >= haroldnum:		[player wins]
				say "[if Playernum is haroldnum]Tie![else]Win![end if]";
				say "     You and Harold start the contest, the coin flipping high in the air. You both follow it intently for which face it'll fall on, then grabbing for the appropriate drink. You both end up winning some, being moments faster than the other to drain the glass. The race is neck and neck through most of it, [one of]you[or]Harold[at random] grabbing an early lead. It comes down to the wire on the ninth flip as it comes up [one of]heads[or]tails[at random]. Each grabbing for the correct glass[if Playernum is haroldnum], you both make the grab and snag your drinks, but in your rush, your hands bump into each other, sending both shot glass tumbling. You both stare at the spilled booze for a few breaths before laughing loudly. 'Okay, I guess we'll call that a tie,' Harold says. 'I guess I'll be generous and you can claim the prize[else], you get yours first and slam it back quickly, Harold fumbling on the grab, ends up spilling half of the drink across his hoofed hand. With the last drink burning down your throat, you slam the glass onto the bar and smile at him. He chuckles and nods. 'Yeah, yeah. I know. Good for you, now come back here and claim your prize[end if],' he adds with a grin as he leans against the bar and motions for you to come around and join him.";
				say "[dc_fuckHarold]";
			else:
				say "Lose!";
				say "     You and Harold start the contest, the coin flipping high in the air. You both follow it intently for which face it'll fall on, then grabbing for the appropriate shot glass. You manage to win a couple, but the unicorn is the more consistent winner. Falling behind and about to lose, you [one of]make a wild grab for a drink as the coin comes down, resulting in you guessing incorrectly[or]make a fumbling grab for the drink and end up knocking it over in your hurry[or]almost grab for the wrong drink, making you too slow[at random]. Slamming his empty shot glass on the table, he grins as you with his gleaming equine teeth. It seems you've ended up being the unicorn's ride again.";
				say "[dc_fuckedbyHarold]";


to say dc_fuckharold:
	say "     You hurry to the back of the bar and run your hands over that sexy ass of his. He gives a soft nicker and blushes as his tail flips up for you. You give his anus a teasing rub with a wet finger, helping him to relax and ease open for mounting. Quite hard now, you grind your [cock size desc of Player] [Cock of Player] cock against his rear. Feeling it there, he [if Cock Length of Player >= 20]gulps and chuckles that he hopes he hasn't bitten off form than he can chew[else]chews his lip and gives a soft moan[end if]. 'Go ahead, let's get this over with,' he says, though you can tell from his stiff manhood that he's actually just eager to get it started.";
	say "     Lining up your [Cock of Player] cock with his asshole, you ease [if Cock Length of Player > 2]the first few inches into him[else]it[end if] into him and start thrusting. He gives a nicker of pleasure and grips the bar more tightly. After a few heavy breaths during which he tries to adjust to having your [cock size desc of Player] shaft inside him, he nods and pushes back, urging to silently to start fucking him. Being considerate to his lack of practice getting anal, you take it slow at first. Soon enough though, the infection helps him get into it and you can really start pounding away at him. That ass of his is simply divine - wonderfully tight and a smooth, quivering hole for you to fill.";
	say "     And speaking of filling, it's not much longer before you moan in pleasure and bury your rod fully into him, unleashing your [Cum Load Size of Player] load into him. The gathered crowd cheers as you pump your seed into the unicorn's ass, claiming a prize they all wish they could get. This proves to be too much for the male's waning resistance and he neighs loudly as he cums hard. You stroke that throbbing cock of his, aiming it towards one of the ice buckets he's got so he can help enhance more drinks with it. When you're both done, you pause to enjoy the warm, wet feel of his creamy hole around you before pulling out so he can get away from the requests for sloppy seconds from the others at the bar and go get cleaned up.";
	increase score by 5;
	increase morale of Player by 1;
	now Libido of Player is ( Libido of Player + Libido of Player + 50 ) / 3;

to say dc_fuckedbyharold:
	say "     You're rather disappointed that you won't get to fuck the unicorn, but hurry around the bar regardless, eager to have him buried inside you again. He bends you over the bar and grinds his cock between your ass cheeks, letting his precum leak down between them. After smearing some precum over your asshole and more across his equine manhood, he gets them lined up and starts pushing into you with no more preamble. 'Mmmm... to the victor go the spoils,' he nickers, kneading your ass firmly. In his alcohol-fueled eagerness, he doesn't hold back, driving the full length of his horse cock into you, grinning as you nicker and moan as he takes you.";
	say "     As the patrons around the bar enjoy the finale to the drinking contest they've been eagerly watching, you moan louder and grind back onto Harold's cock all the harder, eager to give them a good show. The feel of his pulsing shaft inside you is exquisite - so large and virile, like some divine stud - filling you with waves of pleasure with each thrust. The feel of his flared cock sliding along your inner walls, the rubbing against your prostate, the medial ring slipping in and out of you - it all sends shivers of delight through you which leave you gripping the bar tightly for support. The excitement of getting publicly fucked on the bar, right in front of the others, only makes it all the better.";
	say "     The fucking you receive from him is wilder and rougher than usual, but is nothing but bliss all the same. The stallion pumps frantically at your cock as well, getting you to empty your balls into one of his buckets. Feeling your ass clenching and squeezing around him as you cum is enough to set him off and you're treated to the hot rush of his thick semen claiming your ass again. You're suffused with a rush of pleasure and start cumming all over again. You collapse onto the bar with a soft moan as your stallion stud pulls out. There's a few teasing comments thrown around, mainly directed at the loser, including many requests to have sloppy seconds. You smile at these, but are too worn out for more right now.[mimpregchance][mimpregchance]";
	now Libido of Player is ( Libido of Player + Libido of Player + 50 ) / 3;


to unicornify:
	[puts Unicorn as lead monster in case of impregnation]
	repeat with y running from 1 to number of filled rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		if Name entry is "Unicorn":
			now MonsterID is y;
			break;
	if "Male Preferred" is listed in feats of Player:
		now sex entry is "Male";
	else if "Herm Preferred" is listed in feats of Player:
		now sex entry is "Both";
	else:
		now sex entry is "Female";
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	infect;
	now non-infectious entry is true;

Section 5 - Drink bar


LastDrinkserved is a number that varies. LastDrinkserved is usually 250.
Drinkserved is a number that varies. Drinkserved is usually 0.
Drink bar is in Palomino.

Table of GameCharacterIDs (continued)
object	name
Drink bar	"Drink bar"

Drink bar is a man.
The description of Drink bar is "[drinkbardesc]".

to say drinkbardesc:
	say "     This well-stocked bar is full of a number of drinks you have never seen before. Some of them obviously were made on site or probably nearby, as they are stored in all sorts of different bottles that were clearly scavenged and cleaned for the purpose with their labels removed. A small sign on the bar lists the available drinks. To order a specific drink from the bar, merely [']Order <drink name>['], although a small notation on the drink sign does say that there is a daily drink limit. The list of drinks is as follows:";
	say "     [link]Equestrian Ale[as]order Equestrian Ale[end link], [link]Black Wolf Beer[as]order Black Wolf Beer[end link], [link]Cheetah Chaser[as]order Cheetah Chaser[end link], [link]Succubi Delight[as]order Succubi Delight[end link], [link]Gryphon Gulp[as]order Gryphon Gulp[end link], [link]Satyr Special[as]order Satyr Special[end link], [link]Panda Pint[as]order Panda Pint[end link], [link]Harpy Heaven[as]order Harpy Heaven[end link], [link]Jaguar Lager[as]order Jaguar Lager[end link], [link]Sabre Savager[as]order Sabre Savager[end link], [link]Chocolate Rum[as]order Chocolate Rum[end link], [link]Tigress Tequila[as]order Tigress Tequila[end link], and [link]Zebra Vodka[as]order Zebra Vodka[end link].";

the scent of Drink bar is "The drink bar smells of a myriad of alcoholic drinks. Past the regular scents of booze, there are faint traces of several of the creatures you've seen in the city in the air here.".

Aledrinking is an action applying to nothing.

understand "Order Equestrian Ale" as Aledrinking.
understand "Order Ale" as Aledrinking.

check Aledrinking:
	if Drink bar is not visible, say "You must have already had one drink too many to try that here." instead;


carry out Aledrinking:
	if lastDrinkserved - turns < 6:
		say "     Harold looks at you for a minute thoughtfully, before sighing and shaking his head sadly. 'Sorry friend, I can only give you so much at a time. It's so you can have a drink or two to loosen up a bit, but not enough to get drunk hopefully,' the bartender says with an amused chuckle at the idea. 'Besides, it's actually pretty hard to keep stock up since there haven't been any deliveries from the outside world for a while. We have to be careful how much we give out in a day.' He gives an apologetic shrug, and you sigh and realize you will have to come back again later if you want another drink from the bar.";
	else:
		say "     Harold nods at you as you place your order, pulling a couple of bottles out from behind the bar and mixing your drink with an expert's touch. It isn't long before he sets a glass of dark black ale in front of you. Raising your glass to Harold, you take a long drink, the smooth ale going down easily as its rich taste fills your mouth. Draining the glass, you smack your lips in appreciation of the fine brew. Setting the glass back down on the bar, you grin with amusement as you note that the canny bartender already has another glass set out on the bar for you. Saluting him again with your glass, you drink some more of the rich, dark ale as you enjoy the sights of the busy club. A pleasant buzz starts to set in, even as you realize that your body is beginning to change slightly. Though, in your mildly inebriated state, it is hard to think why that would be a problem.";
		infect "Black Equinoid";
		infect "Black Equinoid";
		SanLoss 5;
		PlayerDrink 5;
		now lastDrinkserved is turns;

Beerdrinking is an action applying to nothing.

understand "Order Black wolf beer" as Beerdrinking.
understand "Order beer" as Beerdrinking.

check Beerdrinking:
	if Drink bar is not visible, say "You must have already had one drink too many to try that here." instead;


carry out Beerdrinking:
	if lastDrinkserved - turns < 6:
		say "     Harold looks at you for a minute thoughtfully, before sighing and shaking his head sadly. 'Sorry friend, I can only give you so much at a time. It's so you can have a drink or two to loosen up a bit, but not enough to get drunk hopefully,' the bartender says with an amused chuckle at the idea. 'Besides, it's actually pretty hard to keep stock up since there haven't been any deliveries from the outside world for a while. We have to be careful how much we give out in a day.' He gives an apologetic shrug, and you sigh and realize you will have to come back again later if you want another drink from the bar.";
	else:
		say "     Harold nods at you as you place your order, pulling a couple of bottles out from behind the bar, and mixing your drink with an expert's touch. It isn't long before he sets a frothing mug of dark, spicy smelling beer in front of you. Raising your mug to Harold, you take a long drink, the rich, flavorful beer going down easily. Its smooth taste evokes images of wolves partying and hunting in packs. Draining the mug, you nod with appreciation as you set it back down on the bar. You find yourself grinning with amusement as you note that the canny bartender already has another mug of the frothy beer set out on the bar for you. Saluting him again with your glass, you drink some more of the amazingly smooth beer as you enjoy the sights of the busy club. A pleasant buzz starts to set in, even as you realize that your body is beginning to change slightly. Though, in your mildly inebriated state, it is hard to think why that would be a problem.";
		andrewinfect;
		SanLoss 5;
		PlayerDrink 5;
		now lastDrinkserved is turns;


Chaserdrinking is an action applying to nothing.

understand "Order Cheetah Chaser" as Chaserdrinking.
understand "Order Chaser" as Chaserdrinking.

check Chaserdrinking:
	if Drink bar is not visible, say "You must have already had one drink too many to try that here." instead;


carry out Chaserdrinking:
	if lastDrinkserved - turns < 6:
		say "     Harold looks at you for a minute thoughtfully, before sighing and shaking his head sadly. 'Sorry friend, I can only give you so much at a time. It's so you can have a drink or two to loosen up a bit, but not enough to get drunk hopefully,' the bartender says with an amused chuckle at the idea. 'Besides, it's actually pretty hard to keep stock up since there haven't been any deliveries from the outside world for a while. We have to be careful how much we give out in a day.' He gives an apologetic shrug, and you sigh and realize you will have to come back again later if you want another drink from the bar.";
	else:
		say "     Harold nods at you as you place your order, pulling a couple of bottles out from behind the bar, and mixing your drink with an expert's touch. It isn't long before he sets out several small glasses full of a nice, golden liquid. Raising one of the chasers to Harold, you toss it back quickly. The amber liquid explodes with flavor in your mouth, even as it works its way down your throat. A pleasant warmth spreading throughout your body as you eye the rest of the chasers set out before you with happy anticipation of a long and enjoyable time. After several more of the increasingly delicious drinks, a pleasant buzz starts to set in, even as you realize that your body is beginning to change slightly. Though, in your mildly inebriated state, it is hard to think why that would be a problem.";
		infect "cheetah woman";
		infect "cheetah woman";
		SanLoss 5;
		PlayerDrink 5;
		now lastDrinkserved is turns;




Delightdrinking is an action applying to nothing.

understand "Order Succubi Delight" as Delightdrinking.
understand "Order Delight" as Delightdrinking.

check Delightdrinking:
	if Drink bar is not visible, say "You must have already had one drink too many to try that here." instead;


carry out Delightdrinking:
	if lastDrinkserved - turns < 6:
		say "     Harold looks at you for a minute thoughtfully, before sighing and shaking his head sadly. 'Sorry friend, I can only give you so much at a time. It's so you can have a drink or two to loosen up a bit, but not enough to get drunk hopefully,' the bartender says with an amused chuckle at the idea. 'Besides, it's actually pretty hard to keep stock up since there haven't been any deliveries from the outside world for a while. We have to be careful how much we give out in a day.' He gives an apologetic shrug, and you sigh and realize you will have to come back again later if you want another drink from the bar.";
	else:
		say "     Harold nods at you as you place your order, pulling a couple of bottles out from behind the bar, and mixing your drink with an expert's touch. It isn't long before he sets a large martini glass in front of you, filled with a fruity smelling, pink liquid and a small straw. Lifting the glass up carefully, you take a sip of the drink and nod in appreciation as the flavorful liquid fills your mouth. Grinning, you turn to take in the room as you continue to sip your large drink, enjoying its complex combination of fruit and alcohol flavors, and trying to figure out just what is actually in this wonderful drink. Almost before you know it, you have managed to drink the whole thing. You sigh as you set the glass back down on the bar, only to blink as you realize your body has been changing without your realizing it as you drank.";
		infect "Succubus";
		infect "Succubus";
		SanLoss 5;
		PlayerDrink 5;
		now lastDrinkserved is turns;


Gryphondrinking is an action applying to nothing.

understand "Order Gryphon gulp" as Gryphondrinking.
understand "Order gulp" as Gryphondrinking.

check Gryphondrinking:
	if Drink bar is not visible, say "You must have already had one drink too many to try that here." instead;


carry out Gryphondrinking:
	if lastDrinkserved - turns < 6:
		say "     Harold looks at you for a minute thoughtfully, before sighing and shaking his head sadly. 'Sorry friend, I can only give you so much at a time. It's so you can have a drink or two to loosen up a bit, but not enough to get drunk hopefully,' the bartender says with an amused chuckle at the idea. 'Besides, it's actually pretty hard to keep stock up since there haven't been any deliveries from the outside world for a while. We have to be careful how much we give out in a day.' He gives an apologetic shrug, and you sigh and realize you will have to come back again later if you want another drink from the bar.";
	else:
		say "     Harold nods at you as you place your order, pulling a couple of bottles out from behind the bar, and mixing your drink with an expert's touch. It isn't long before he sets a tall glass of some sort of milky white liquid in front of you. Raising your glass to Harold, you take a curious drink, the smooth, creamy flavor of some sort of spiced milk drink filling your mouth. The unusual, yet delightful, taste of the drink has you quickly draining the glass, enjoying the way the rum and vanilla spiced milk goes down easily, yet still leaves you thirsty for more. Setting your glass back down on the bar, you grin with amusement as you note that the canny bartender has anticipated your request, and another glass full of the creamy liquid has already been set out on the bar for you. Saluting him again with your glass, you drink some more of the strangely flavored milk as you enjoy the sights of the busy club. A pleasant buzz starts to set in, even as you realize that your body is beginning to change slightly. Though, in your mildly inebriated state, it is hard to think why that would be a problem.";
		infect "Blue Gryphon Herm";
		infect "Blue Gryphon Herm";
		SanLoss 5;
		PlayerDrink 5;
		now lastDrinkserved is turns;

Heavendrinking is an action applying to nothing.

understand "Order Harpy Heaven" as Heavendrinking.
understand "Order Heaven" as Heavendrinking.

check Heavendrinking:
	if Drink bar is not visible, say "You must have already had one drink too many to try that here." instead;


carry out Heavendrinking:
	if lastDrinkserved - turns < 6:
		say "     Harold looks at you for a minute thoughtfully, before sighing and shaking his head sadly. 'Sorry friend, I can only give you so much at a time. It's so you can have a drink or two to loosen up a bit, but not enough to get drunk hopefully,' the bartender says with an amused chuckle at the idea. 'Besides, it's actually pretty hard to keep stock up since there haven't been any deliveries from the outside world for a while. We have to be careful how much we give out in a day.' He gives an apologetic shrug, and you sigh and realize you will have to come back again later if you want another drink from the bar.";
	else:
		say "     Harold nods at you as you place your order, before pulling out a small energy drink bottle and placing it in front of you. You raise your eyebrows at him, but he only grins as he nudges the small bottle towards you. Shrugging, you toss back the small bottle of liquid, gasping as the strangely bitter tasting liquid sears its way down your throat. Blinking in surprise as you set the bottle down, you realize that you strangely feel increasingly light and energized, though your body feels oddly tingly.";
		infect "Harpy";
		infect "Harpy";
		SanLoss 5;
		PlayerDrink 5;
		now lastDrinkserved is turns;


Specialdrinking is an action applying to nothing.

understand "Order Satyr Special" as Specialdrinking.
understand "Order Special" as Specialdrinking.

check Specialdrinking:
	if Drink bar is not visible, say "You must have already had one drink too many to try that here." instead;


carry out Specialdrinking:
	if lastDrinkserved - turns < 6:
		say "     Harold looks at you for a minute thoughtfully, before sighing and shaking his head sadly. 'Sorry friend, I can only give you so much at a time. It's so you can have a drink or two to loosen up a bit, but not enough to get drunk hopefully,' the bartender says with an amused chuckle at the idea. 'Besides, it's actually pretty hard to keep stock up since there haven't been any deliveries from the outside world for a while. We have to be careful how much we give out in a day.' He gives an apologetic shrug, and you sigh and realize you will have to come back again later if you want another drink from the bar.";
	else:
		say "     Harold nods at you as you place your order, pulling a couple of bottles out from behind the bar, and mixing your drink with an expert's touch. It isn't long before he sets a glass of some dark liquid in front of you, the powerful smell wafting off the glass telling you that the satyr special is, unsurprisingly, some kind of powerful wine. Taking a sip, you find yourself quickly gulping the rest as a taste of the amazingly full-bodied wine goes straight to your head. You quickly shove your empty glass back towards the bartender, who only chuckles as the unicorn refills your glass for you. After several more refills, you are pleasantly buzzed, and definitely looking forward to a good party. As you set your glass down and wander out to the dance floor, you hardly even notice or care as your body starts to change to a more suitable form for a long party.";
		infect "Satyr";
		infect "Satyr";
		SanLoss 5;
		PlayerDrink 5;
		now lastDrinkserved is turns;



Pintdrinking is an action applying to nothing.

understand "Order Panda Pint" as Pintdrinking.
understand "Order Pint" as Pintdrinking.

check Pintdrinking:
	if Drink bar is not visible, say "You must have already had one drink too many to try that here." instead;


carry out pintdrinking:
	if lastDrinkserved - turns < 6:
		say "     Harold looks at you for a minute thoughtfully, before sighing and shaking his head sadly. 'Sorry friend, I can only give you so much at a time. It's so you can have a drink or two to loosen up a bit, but not enough to get drunk hopefully,' the bartender says with an amused chuckle at the idea. 'Besides, it's actually pretty hard to keep stock up since there haven't been any deliveries from the outside world for a while. We have to be careful how much we give out in a day.' He gives an apologetic shrug, and you sigh and realize you will have to come back again later if you want another drink from the bar.";
	else:
		say "     Harold nods at you as you place your order, pulling a couple of bottles out from behind the bar, and mixing your drink with an expert's touch. It isn't long before he sets a pint down on the bar next to you. Raising your pint to Harold, you take a nice drink, enjoying the way the liquor slides down your throat and the warm buzz accompanying it. Saluting your unicorn bartender again with your pint glass, you continue to enjoy your drink, getting several refills from the bartender. As the pleasant buzz you feel grows even more powerful, you realize that your body is beginning to change slightly. Though, in your mildly inebriated state, it is hard to think why that would be a problem.";
		infect "Panda";
		infect "Panda";
		SanLoss 5;
		PlayerDrink 5;
		now lastDrinkserved is turns;



Lagerdrinking is an action applying to nothing.

understand "Order Jaguar Lager" as Lagerdrinking.
understand "Order Lager" as Lagerdrinking.

check Lagerdrinking:
	if Drink bar is not visible, say "You must have already had one drink too many to try that here." instead;


carry out Lagerdrinking:
	if lastDrinkserved - turns < 6:
		say "     Harold looks at you for a minute thoughtfully, before sighing and shaking his head sadly. 'Sorry friend, I can only give you so much at a time. It's so you can have a drink or two to loosen up a bit, but not enough to get drunk hopefully,' the bartender says with an amused chuckle at the idea. 'Besides, it's actually pretty hard to keep stock up since there haven't been any deliveries from the outside world for a while. We have to be careful how much we give out in a day.' He gives an apologetic shrug, and you sigh and realize you will have to come back again later if you want another drink from the bar.";
	else:
		say "     Harold nods at you as you place your order, pulling a couple of bottles out from behind the bar, and mixing your drink with an expert's touch. It isn't long before he sets a glass of lager in front of you. Raising your glass to Harold, you take a nice long drink. The crisp taste of a good lager fills your mouth, and you drink it down eagerly, smacking your lips as you try to place the strangely arousing aftertaste the liquid has. Deciding to try another, you smile as you realize that the canny unicorn already has another lager set out on the bar for you. Saluting him again with your new glass, you continue to try to work out just what makes this lager so good. A pleasant buzz starts to set in, even as you realize that your body is beginning to change slightly. Though, in your mildly inebriated state, it is hard to think why that would be a problem.";
		infect "Jaguar Male";
		infect "Jaguar Male";
		SanLoss 5;
		PlayerDrink 5;
		now lastDrinkserved is turns;



Sabredrinking is an action applying to nothing.

understand "Order Sabre Savager" as Sabredrinking.
understand "Order Savager" as Sabredrinking.

check Sabredrinking:
	if Drink bar is not visible, say "You must have already had one drink too many to try that here." instead;


carry out Sabredrinking:
	if lastDrinkserved - turns < 6:
		say "     Harold looks at you for a minute thoughtfully, before sighing and shaking his head sadly. 'Sorry friend, I can only give you so much at a time. It's so you can have a drink or two to loosen up a bit, but not enough to get drunk hopefully,' the bartender says with an amused chuckle at the idea. 'Besides, it's actually pretty hard to keep stock up since there haven't been any deliveries from the outside world for a while. We have to be careful how much we give out in a day.' He gives an apologetic shrug, and you sigh and realize you will have to come back again later if you want another drink from the bar.";
	else:
		say "     Harold nods at you as you place your order, pulling a couple of bottles out from behind the bar, and mixing your drink with an expert's touch. It isn't long before he sets a tall pitcher full of a variety of different liquors up on the bar. He drops what appears to be part of a big tooth in the pitcher before shaking the alcoholic mix up and pouring you a glass. Feeling somewhat adventurous, you take a big drink. The combined flavors of several different types of drink blend pleasantly on your tongue, before the sheer sledgehammer of the powerful alcoholic mix hits your brain, and makes you gasp. Blinking and trying to recover, you find you feel positively primal as you pour yourself another drink from the pitcher. A savage grin crosses your face as you look around the room with a new, more predatory outlook, wondering just who you feel like playing with tonight. You hardly even notice the small changes in your body as you continue to enjoy your drink, other than to note how much easier they will make stalking a partner to play with later on...";
		infect "Sabretooth";
		infect "Sabretooth";
		SanLoss 5;
		PlayerDrink 5;
		now lastDrinkserved is turns;


Rumdrinking is an action applying to nothing.

understand "Order Chocolate Rum" as Rumdrinking.
understand "Order Rum" as Rumdrinking.

check Rumdrinking:
	if Drink bar is not visible, say "You must have already had one drink too many to try that here." instead;


carry out Rumdrinking:
	if lastDrinkserved - turns < 6:
		say "     Harold looks at you for a minute thoughtfully, before sighing and shaking his head sadly. 'Sorry friend, I can only give you so much at a time. It's so you can have a drink or two to loosen up a bit, but not enough to get drunk hopefully,' the bartender says with an amused chuckle at the idea. 'Besides, it's actually pretty hard to keep stock up since there haven't been any deliveries from the outside world for a while. We have to be careful how much we give out in a day.' He gives an apologetic shrug, and you sigh and realize you will have to come back again later if you want another drink from the bar.";
	else:
		say "     Harold nods at you as you place your order, pulling a couple of bottles out from behind the bar, and mixing your drink with an expert's touch. It isn't long before he sets a glass full of dark rum in front of you. Raising your glass to Harold, you take in the pleasantly sweet and smoky odor of the slightly viscous liquid, and smile with anticipation as you take a long drink. Despite its somewhat smoky appearance, the caramel and chocolate flavored rum goes down nice and smooth, and you feel increasingly happy and relaxed as Harold fills your glass up again. You smile at the handsome unicorn and take another nice long drink, feeling delightfully euphoric as you look around the room. Harold keeps your glass topped up even as your body starts to change and shift slightly. Though, in your happy and inebriated state, it is hard to think how anything that feels as good as your body changing like this could be a problem.";
		infect "Chocolate Lab";
		infect "Chocolate Lab";
		SanLoss 5;
		PlayerDrink 5;
		now lastDrinkserved is turns;


Vodkadrinking is an action applying to nothing.

understand "Order Zebra Vodka" as Vodkadrinking.
understand "Order Vodka" as Vodkadrinking.

check Vodkadrinking:
	if Drink bar is not visible, say "You must have already had one drink too many to try that here." instead;


carry out Vodkadrinking:
	if lastDrinkserved - turns < 6:
		say "     Harold looks at you for a minute thoughtfully, before sighing and shaking his head sadly. 'Sorry friend, I can only give you so much at a time. It's so you can have a drink or two to loosen up a bit, but not enough to get drunk hopefully,' the bartender says with an amused chuckle at the idea. 'Besides, it's actually pretty hard to keep stock up since there haven't been any deliveries from the outside world for a while. We have to be careful how much we give out in a day.' He gives an apologetic shrug, and you sigh and realize you will have to come back again later if you want another drink from the bar.";
	else:
		say "     Harold nods at you as you place your order, pulling a couple of bottles out from behind the bar, and mixing your drink with an expert's touch. It isn't long before he sets a small shot glass full of a layered liquid in front of you. The drink is mostly clear, with several thin, stripe-like layers of darker liquid, which makes you grin at the slight resemblance to zebra striping the bartender obviously went to some effort to emulate. Raising your glass to Harold, you toss back the shot, gasping slightly as the liquid burns its way down your throat. A warm, happy sensation spreads outward from your chest as you slam the shot down and smile at Harold. Your smile only grows larger as you note that the canny bartender already has another shot set out on the bar for you. Saluting him again with your glass, you drink several more shots. A pleasant buzz starts to set in, even as you realize that your body is beginning to change slightly. Though, in your mildly inebriated state, it is hard to think why that would be a problem.";
		infect "Zebra Stallion";
		infect "Zebra Stallion";
		SanLoss 5;
		PlayerDrink 5;
		now lastDrinkserved is turns;


Tequiladrinking is an action applying to nothing.

understand "Order Tigress Tequila" as Tequiladrinking.
understand "Order Tequila" as Tequiladrinking.

check Tequiladrinking:
	if Drink bar is not visible, say "You must have already had one drink too many to try that here." instead;


carry out Tequiladrinking:
	if lastDrinkserved - turns < 6:
		say "     Harold looks at you for a minute thoughtfully, before sighing and shaking his head sadly. 'Sorry friend, I can only give you so much at a time. It's so you can have a drink or two to loosen up a bit, but not enough to get drunk hopefully,' the bartender says with an amused chuckle at the idea. 'Besides, it's actually pretty hard to keep stock up since there haven't been any deliveries from the outside world for a while. We have to be careful how much we give out in a day.' He gives an apologetic shrug, and you sigh and realize you will have to come back again later if you want another drink from the bar.";
	else:
		say "     Harold nods at you as you place your order, pulling a couple of bottles out from behind the bar, and mixing your drink with an expert's touch. It isn't long before he sets a small glass of orange tequila in front of you. 'That will put whiskers on ya,' he says with a broad grin. 'Might loosen ya up some, too,' Harold adds with amusement as he goes back to tending the bar, shooting you an occasional amused glance as you raise your glass. Eyeing the tequila suspiciously, you shrug as you pick up the glass and take a big drink. The tequila burns harshly as it goes down, the liquor carrying an even stronger bite then regular tequila, but with a strangely pleasant aftertaste. Realizing you have drained your glass, you set it back down on the bar, gasping slightly as the liquor hits your system, making you feel nice and warm as it loosens you up. Grinning happily, you note that the canny bartender already has another glass set out on the bar for you. Snagging the fresh glass, you quickly drink some more of the powerful liquor, feeling it loosen you right up as it makes your body tingle with excitement. The drink makes you feel nice and sexy, and perhaps even a little bit slutty, as you grin longingly as you look around the room. You enjoy the sights of so many different, horny beasts having fun. You find yourself wondering just what some of the horny dancers would give to have fun with you as well. The thought of selling your body for the night seeming strangely alluring even as your body shifts and changes on the outside to match your new, sexy and slutty inside.";
		infect "Malayan Tiger Herm";
		infect "Malayan Tiger Herm";
		SanLoss 5;
		PlayerDrink 5;
		now lastDrinkserved is turns;

Harold ends here.
