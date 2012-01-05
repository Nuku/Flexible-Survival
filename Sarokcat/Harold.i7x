Harold by Sarokcat begins here.

"Adds a npc to Flexible Survival with a well stocked bar and a problem..."

section 1- 

Haroldtalk is a number that varies.
Haroldaroused is a number that varies.[not a needed number, but used to set different arousal states if they aren't automatically willing to just hop into bed.]
LastHaroldfucked is a number that varies. LastHaroldfucked is usually 250.
Haroldfucked is a number that varies. Haroldfucked is usually 0.
tattoohunter is a number that varies.
Harold is in The PALOMINO.

Harold is a man.[or woman]
The description of Harold is "Standing behind the bar is a well built rather horse like man, obviously an experienced bartender by the way he handles himself as he dishes out drinks to the patrons, his slightly hooflike hands not seeming to slow him down at all. A black leather vest resting against his pure white fur and making him look even more striking due to the sharp contrast of colours. Even more striking however, is the spiraling horn emerging from the center of the equines forehead, it[apostrophe]s pearlescent sheen catching and reflecting the coloured lights of the club, and making it seem to shimmer and burn with a small rainbow of color every time the unicorn bartender moves his head. Catching you looking his direction, the equine barkeep winks at you, and gestures to an open spot at the bar, obviously inviting you to come talk, even as the shining unicorn puts together another drink for one of the strippers";


The conversation of Harold is { "[Haroldtalking]" };

To say Haroldtalking:
	if Haroldtalk is 0:[first time you encounter the npc text]
		say "'Hey there Newcomer, the names Harold,' The large unicorn says with a smile on his equine muzzle as he leans forward on the bar and stretches out a hand to welcome you. 'Good to see another friendly face around here, especially one that isn[apostrophe]t 'too friendly', if you know what I mean.' Harold says with a chuckling nicker of laughter. 'Plenty of 'too friendly' beasts out there already that I[apostrophe]m sure you have encountered already.' He nods knowingly at you as you shake his rather large hooflike hand. 'Had my own encounter with one as I[apostrophe]m sure you can tell already, though strangely enough it was a horse and not a unicorn that played 'hide the horn' with me.' Harold winks at you as he says this, resting his arms easily on the bar as a fond grin crosses his equine muzzle. 'Dunno why I ended up like this instead of a horse myself, but it does have some benefits, main one of which is that I seem to have kept my sanity while a buncha the others lost it.' The unicorn says with a shrug, before leaning close and saying in a lower tone of voice, 'The secondary benefit of course is what I ended up 'hung like' if ya get what I[apostrophe]m saying.' Harold whispers teasingly for your ears only, his ribald statement making you smile with amusement, even as you find yourself growing slightly aroused.";
		increase Haroldtalk by 1;
		stop the action;
	if Haroldtalk is 1:
		say "'Hey there again, been thinking about you actually.' The large unicorn bartender says with a smile as you sit down at the bar. 'I see you still wander around the city a lot, while most of us stick close to safety.' Harold says with a slight questioning tone to his voice. The unicorn smiles as you nod in response and continues, 'Perfect! I was hoping you would say that, see I was wondering what happened to a friend of mine out there, and I was hoping you could go check on them for me if you had some spare time?' Harold asks you hopefully.  Do you offer to help the bartender find his friend?";
		if player consents:
			say "'Great! You see she runs a little tattoo and piercing parlor not too far away, and while I managed to find my way here safely, I haven[apostrophe]t heard a thing about her since before things started going crazy.' Harold says with a sad whickering sigh, 'Of course with the mess the red light district is in, it would be pretty damn hard for me to go look myself, even if I do seem to be resistant to other changes, there are plenty of creatures out there that don[apostrophe]t think twice about taking captives, and the streets are such a mess it could be a pain finding the place again, even though I have been there plenty of times before.' The unicorn stallion says with another sigh before a grin spreads across his equine face, his horn shining as he nods at you happily. 'Which is where you come in, since I imagine you can find out for me if she is still ok out there, and maybe let her know her favorite bartender is all right and where to come for a drink as well.' He says as he claps you on the shoulder happily before giving you some directions on what to look for. It looks like you are off to the red light district next!";
			now Haroldtalk is 2;
			now tattoohunter is 1;
			stop the action;
		otherwise:
			say "'Ah well, I suppose it probably was too much to ask for,' Harold says with a sigh, 'Don[apostrophe]t worry, I won[apostrophe]t bring it up again, now can I get you anything to drink?' The dejected unicorn asks halfheartedly.";
			now haroldtalk is 2;
			stop the action;
	if tattoohunter is 4:
		say "Harold welcomes you back heartily, and before he can ask you quickly fill him in on your recent rescue of Kara, and her new hyenalike form. He seems rather glad that you found her still sane, but a little disturbed by her new form, though he eventually shrugs and thanks you heartily for your help. And you find yourself smiling slightly as the handsome equine barkeep admits he owes you one now, and gives you a teasing wink before returning to serving drinks.";
		now haroldaroused is 1;
		now tattoohunter is 5;
		stop the action;
	if tattoohunter is 2:
		say "'Welcome back! How did the search go?' Harold greets you enthusiastically as you settle down at the bar, though the unicorn[apostrophe]s happy demeanor quickly is replaced by a more somber one as you relate what you found. After explaining that his friend obviously headed out into the city in search of much needed supplies, and never managed to return, you inform the unhappy unicorn that it is likely some of the creatures in the city managed to get their hands on her, and she is quite possibly just as sex crazed as any other member of whatever species she ended up as.  Seeing the dejected look on the equine barkeepers face, you sigh and say you will continue to keep an eye out for her in the city, though it isn[apostrophe]t likely you will recognize her if she has changed too much.  Harold nods, and promises to think about the problem for a bit to see if he can come up with something to help you find her, before the powerful unicorn goes back to tending the bar.";
		now tattoohunter is 3;
		stop the action;
	if hellgatherquest is 4:
		if tattoohunter is 0:
			say "'Hey there friend, what can I do for you?' The unicorn barkeep asks as you approach, only to sigh as he skims the list of ingredients you hand him. 'Well, yeah I have these items actually... but they weren[']t easy to acquire either, tell you what... you help me find out what happened to my friend, and I[']ll let ya have the stuff you need, what do you say?' The barkeep asks hopefully, and you sigh and nod in agreement, much to the unicorns amusement.";
			now Haroldtalk is 1;
			stop the action;
		if tattoohunter is greater than 2:
			say "'Well friend, just because things didn[apostrophe]t quite work out the way I would have liked them to doesn[apostrophe]t mean I don[apostrophe]t owe ya for all your help looking for my friend, why don[apostrophe]t ya show me that list of yours there, and we can see what i[apostrophe]ve got.' The unicorn barkeep says with a broad smile and a nod of his head as you approach him about the ingredients, He wanders off into a narrow back room for a while, only to return with a small pouch full of some unknown items. 'Well here ya go, these should be what ya want, gave ya all of the stock I was saving since I didn[apostrophe]t know how much you would need, and if you need anything else, you be sure to come visit Harold ok?' The rather saucy Unicorn says with a sly wink as you tuck the pouch away and prepare to head back to Nermine with your findings.";
			now hellgatherquest is 5;
			stop the action;
	if Haroldtalk is 2: [Normal short messages the npc will say each time you talk to them]
		say "'[one of]No I wasn[apostrophe]t a virgin, so that can[apostrophe]t be why I ended up this way.' Harold says with some exasperation as you open your mouth to talk to him, making you blink in surprise.[or]Try some of the drinks, we make em all here!' Harold says proudly.[or]I wish some of the patrons would get back with those supplies I need, we are running low on some of the 'special ingredients' for some of the drinks..'[or]See Tristian over there? He really helped get this place going right after things went to hell, maybe you should go talk to him sometime about it.'[or]I was a bartender before all this happened, different bar of course, but I have to admit I like this venue better, lots of eye candy at least!'[or]Eat, Drink, Party! For tomorrow we may be overrun! Or something like that anyways.'[or]Looking to order a drink? Just look at the bar to see what we have available, and then order it. [or]It[apostrophe]s a good thing I don[apostrophe]t need to find virgins to play with, given the state the city is in now, I[apostrophe]m not sure there are any left!'[or]We get all types around here now, I have to say, it definitely makes bartending more interesting.[or]We occassionally have some trouble with the roaming beasts trying to get in here or attack people, but there are more then enough of us both here and in the apartment building next door to keep the place safe.'[or]If you need a place to crash sometime, we kind of took over the apartment building next door, blocked off the front access so no one can get in that way, and the side entrance we attached to the club.  That[apostrophe]s where most of the people here end up when they need to relax, it also has a good basement for the still.' Harold says with a chuckle.[or]If ya need help with something, you are probably in the wrong place, if you need a damn good time and a drink or two, then you are definitely in the right place.'[or]'We burned through most of the stocks of standard booze pretty fast at first, till we figured out how to mix them up to make them last longer, you should let us know how we did after trying some of the drinks.'[at random]";





Instead of fucking the Harold:
	if lastHaroldfucked - turns is less than 4:
		say "'Hey now, I know we both had a lot of fun, but I do need to actually serve drinks sometimes as well.' Harold says with an amused grin, 'Don[apostrophe]t worry, I am sure I will find time for another 'Unicorn ride' soon enough, and I[apostrophe]m sure the club members would appreciate another show as well.' He says with a chuckle, the thought making you blush even as your body grows warm with anticipation of another lovely exhibitistic round with the handsome unicorn.";
		stop the action;
	if Haroldaroused is 1:
		now lastHaroldfucked is turns;
		if cunts of player is greater than 0:
			say "'Well now, I suppose I can[apostrophe]t turn down an offer from a friend that helped me out now can I?' Harold says with a grin as he looks you over for a minute, his horn seeming to gleam almost hypnotically in the flashing light of the club as he gestures you closer. 'Now I can[apostrophe]t leave the bar unattended,' He says as you find yourself moving closer the handsome unicorn stallion, 'But I don[apostrophe]t think anyone will mind if we put on a little show of our own now do you?' He asks teasingly as he reaches out and lifts part of the bar up so he can guide you behind it with him, his sexual scent and the sight of his powerful erect equine cock causing your pussy to clench with desperate need even as you nod absently in distracted agreement.  'That[apostrophe]s what I thought,' The unicorn male says with a chuckle, even as he pins you  up against the bar, his strong hooflike hands lifting your legs up as he braces you against the bar, his thick delicious rod pressing up against your heat filled pussy teasingly.  You find yourself moaning wantonly as you brace your hands on the bar behind you, his handsome equine muzzle and shining horn filling your vision even as he begins to rub his cock up agains your body teasingly. The situation seems increasingly erotic as you realize that anyone in the club can look over and see the sexy unicorn stud preparing to fuck you right out in the open, and several of the other people at the bar are already watching with intrest as he guides his thick length into your eager body.[line break]";
			say "The feeling of his powerful stallionhood filling you is almost too much for your mind to bear, and you cease to care about where you are or how many people might be watching, as soon as you feel his warm strong rod splitting you open. You groan happily as you lean back on the bar, feeling totally helpless in his arms as he begins to rock his hips into you softly, the feelings causing you to let out soft noises of pleasure with every penetration. Harold soon lowers his muzzle down to run his equine lips over your nipples teasingly, sucking and licking on them even as he pumps himself into your submissive form, his every touch causing your body to burn even hotter with need. Soon you are begging him wantonly to fill you with his seed, not caring who else hears your submission as your body burns for the amazingly sensual unicorn to claim you as his mare and make you his. [line break]";
			Say "Your unicorn stallion seems pleased by your near total surrender, and begins to pump his amazing rod into you harder and faster, your dazed eyes watching his shining horn happily as you feel yourself becoming more and more his with every thrust. Finally after what seems like a near eternity of lust and pleasure, you feel his thick cock begin to spurt his wonderful seed into your body, claiming you as his little unicorn slut as he pumps what feels like gallons of his thick seed into your waiting womb. The thought of being his little slutty pet and carrying his handsome little foals causes you to orgasm as well, your mind awash in submissive pleasure even as he finishes filling you up. Eventually Harold sets you down on the bar, and you moan and rub your aroused body as he pulls out of you and begins to go back to serving the patrons that have gathered nearby for the show. [line break]";
			say "Looking around at all the people who watched him fuck you, you find yourself feeling strangely satisfied even as you feel his fertile seed leaking out of your well used pussy. Somehow the thought that all these people saw you used like the lusty unicorn slut you are is even more attractive now with your stallions seed filling your body up, their witnessing him claiming your body as his personal fucktoy somehow making it seem even more permanent.  Shaking your head slightly to gather your wits, you slowly hop down on the other side of the bar to mild applause, and Harold gives you a wink and a nod, his hypnotic horn flashing teasingly as you prepare to continue your adventure, though you find yourself realizing you will probably be back here to put on another show for the club again soon if your needy body has anything to say about it....[impregchance][impregchance]";
			infect "Unicorn";
			stop the action;
		otherwise:
			say "'Heh sorry there man, while I may not necessarily need virgins or anything, I am still a bit more comfortable with something with a pussy, if ya get my meaning. Though since you did me a favor and seem interested, heres a drink on me... or of me..' The unicorn stallion says with a grin as he sets a glass in front of you, the strangely enticing aroma of the strange liquor going right to your head even as you toss it back. The spicy sweet taste and the kick of the alchol makes you gasp, even as a happy lust filled fog fills your brain, and you find yourself staring happily at the play of light across the stallions handsome horn even as you set your drink down";
			infect "Unicorn";
			stop the action;
 	otherwise:
		say "'Sorry, friend,' Harold says with a sigh, 'but as tempting as your offer sounds, I can[apostrophe]t really leave the bar right now.' The unicorn says with a shrug as he mixes a drink for someone, 'Don[apostrophe]t worry though, I am sure you can find plenty of other partners out there more then eager to play with a horny little thing like you.' He says with a wink before going back to what he was doing."; 



Section 2 - Drink bar 


LastDrinkserved is a number that varies. LastDrinkserved is usually 250.
Drinkserved is a number that varies. Drinkserved is usually 0.
Drink bar is in The PALOMINO.


Drink bar is a man.
The description of Drink bar is "This well stocked bar is full of a number of drinks you have never seen before, some of them obviously made on site or probably nearby, as they are stored in all sorts of different bottles obviously scavanged and cleaned for the purpose with their labels removed. A small Sign on the bar lists the available drinks. To order a specific drink from the bar, merely 'Order 'drink name'', although a small notation on the drink sign does say that there is a daily drink limit. The list of drinks is as follows.  Equestrian Ale. Black wolf beer. Cheetah Chaser. Succubi Delight. Gryphon gulp. Satyr Special. Panda Pint. Harpy heaven. Jaguar Lager. Sabre Savager. Chocolate Rum. Tigress Tequila. And Zebra Vodka.  ";

Aledrinking is an action applying to nothing.

understand "Order Equestrian Ale" as Aledrinking;
understand "Order Ale" as Aledrinking;  

check Aledrinking:
	if Drink bar is not visible, say "You must have already had one drink to many to try that here." instead;


carry out Aledrinking:
	if lastDrinkserved  - turns is less than 8:
		say "Harold looks at you for a minute thoughtfully, before sighing and shaking his head sadly. 'Sorry friend, I can only give you so much at a time. So you can have a drink or two to loosen up a bit, but not enough to get drunk hopefully.' The bartender says with an amused chuckle at the idea, 'Besides, it[apostrophe]s actually pretty hard to keep stock up since there haven[apostrophe]t been any deliveries from the outside world for a while, so we have to be careful how much we give out in a day.' He continues with an apologetic shrug, and you sigh and realize you will have to come back again later if you want another drink from the bar.";
	otherwise:
		say "Harold nods at you as you place your order, pulling a couple of bottles out from behind the bar, and mixing your drink with an experts touch, it isn[apostrophe]t long before he sets a glass of dark black ale in front of you. Raising your glass to Harold, you take a long drink, the smooth ale going down easily as its rich taste fills your mouth. Draining the glass, you smack your lips in appreciation of the fine brew, setting the glass back down on the bar, you grin with amusement as as you note that the canny bartender already has another glass set out on the bar for you. Saluting him again with your glass, you drink some more of the rich dark ale as you enjoy the sights of the busy club, a pleasant buzz starting to set in, even as you realize that your body is beginning to change slightly, though in your mildly inebriated state, it is hard to think why that would be a problem.";
		infect "black equinoid";
		infect "black equinoid";
		decrease humanity of player by 5;
		decrease thirst of player by 5;
		now lastDrinkserved is turns;

Beerdrinking is an action applying to nothing.

understand "Order Black wolf beer" as Beerdrinking;
understand "Order beer" as Beerdrinking;  

check Beerdrinking:
	if Drink bar is not visible, say "You must have already had one drink to many to try that here." instead;


carry out Beerdrinking:
	if lastDrinkserved  - turns is less than 8:
		say "Harold looks at you for a minute thoughtfully, before sighing and shaking his head sadly. 'Sorry friend, I can only give you so much at a time. So you can have a drink or two to loosen up a bit, but not enough to get drunk hopefully.' The bartender says with an amused chuckle at the idea, 'Besides, it[apostrophe]s actually pretty hard to keep stock up since there haven[apostrophe]t been any deliveries from the outside world for a while, so we have to be careful how much we give out in a day.' He continues with an apologetic shrug, and you sigh and realize you will have to come back again later if you want another drink from the bar.";
	otherwise:
		say "Harold nods at you as you place your order, pulling a couple of bottles out from behind the bar, and mixing your drink with an experts touch, it isn[apostrophe]t long before he sets a frothing mug of dark spicy smelling beer in front of you. Raising your mug to Harold, you take a long drink, the rich flavorful beer going down easily, its smooth taste evoking images of wolves partying and hunting in packs. Draining the mug, you nod with appreciation as you set the mug back down on the bar. You find yourself grinning with amusement as as you note that the canny bartender already has another mug of the frothy beer set out on the bar for you. Saluting him again with your glass, you drink some more of the amazingly smooth beer as you enjoy the sights of the busy club, a pleasant buzz starting to set in, even as you realize that your body is beginning to change slightly, though in your mildly inebriated state, it is hard to think why that would be a problem.";
		infect "Alpha Wolf";
		infect "Alpha Wolf";
		decrease humanity of player by 5;
		decrease thirst of player by 5;
		now lastDrinkserved is turns;






Chaserdrinking is an action applying to nothing.

understand "Order Cheetah Chaser" as Chaserdrinking;
understand "Order Chaser" as Chaserdrinking;  

check Chaserdrinking:
	if Drink bar is not visible, say "You must have already had one drink to many to try that here." instead;


carry out Chaserdrinking:
	if lastDrinkserved  - turns is less than 4:
		say "Harold looks at you for a minute thoughtfully, before sighing and shaking his head sadly. 'Sorry friend, I can only give you so much at a time. So you can have a drink or two to loosen up a bit, but not enough to get drunk hopefully.' The bartender says with an amused chuckle at the idea, 'Besides, it[apostrophe]s actually pretty hard to keep stock up since there haven[apostrophe]t been any deliveries from the outside world for a while, so we have to be careful how much we give out in a day.' He continues with an apologetic shrug, and you sigh and realize you will have to come back again later if you want another drink from the bar.";
	otherwise:
		say "Harold nods at you as you place your order, pulling a couple of bottles out from behind the bar, and mixing your drink with an experts touch, it isn[apostrophe]t long before he sets out several small glasses full of a nice golden liquid. Raising one of the chasers to Harold, you toss it back quickly, the amber liquid exploding with flavor in your mouth, even as it works its way down your throat. A pleasant warmth spreading throughout your body as you eye the rest of the chasers set out before you with happy anticipation of a long and enjoyable time. After several more increasingly delicious drinks, a pleasant buzz starting to set in, and you realize that your body is beginning to change slightly, though in your mildly inebriated state, it is hard to think why that would be a problem.";
		infect "cheetah woman";
		infect "cheetah woman";
		decrease humanity of player by 5;
		decrease thirst of player by 5;
		now lastDrinkserved is turns;




Delightdrinking is an action applying to nothing.

understand "Order Succubi Delight" as Delightdrinking;
understand "Order Delight" as Delightdrinking;  

check Delightdrinking:
	if Drink bar is not visible, say "You must have already had one drink to many to try that here." instead;


carry out Delightdrinking:
	if lastDrinkserved  - turns is less than 8:
		say "Harold looks at you for a minute thoughtfully, before sighing and shaking his head sadly. 'Sorry friend, I can only give you so much at a time. So you can have a drink or two to loosen up a bit, but not enough to get drunk hopefully.' The bartender says with an amused chuckle at the idea, 'Besides, it[apostrophe]s actually pretty hard to keep stock up since there haven[apostrophe]t been any deliveries from the outside world for a while, so we have to be careful how much we give out in a day.' He continues with an apologetic shrug, and you sigh and realize you will have to come back again later if you want another drink from the bar.";
	otherwise:
		say "Harold nods at you as you place your order, pulling a couple of bottles out from behind the bar, and mixing your drink with an experts touch, it isn[apostrophe]t long before he sets a large martini glass in front of you, filled with a fruity smelling pink liquid, and a small straw. Lifting the glass up carefully, you take a sip of the drink, and nod in appreciation as the flavorful liquid fills your mouth. Grinning you turn to take in the room as you continue to sip your large drink, enjoying its complex combination of fruit and alcohol flavors, and trying to figure out just what is actually in this wonderful drink. Almost before you know it, you have managed to drink the whole thing, and you sigh as you set the glass back down on the bar, only to blink as you realize your body has been changing without your realizing it as you drank";
		infect "Succubus";
		infect "Succubus";
		decrease humanity of player by 5;
		decrease thirst of player by 5;
		now lastDrinkserved is turns;

Gryphondrinking is an action applying to nothing.

understand "Order Gryphon gulp" as Gryphondrinking;
understand "Order gulp" as Gryphondrinking;  

check Gryphondrinking:
	if Drink bar is not visible, say "You must have already had one drink to many to try that here." instead;


carry out Gryphondrinking:
	if lastDrinkserved  - turns is less than 6:
		say "Harold looks at you for a minute thoughtfully, before sighing and shaking his head sadly. 'Sorry friend, I can only give you so much at a time. So you can have a drink or two to loosen up a bit, but not enough to get drunk hopefully.' The bartender says with an amused chuckle at the idea, 'Besides, it[apostrophe]s actually pretty hard to keep stock up since there haven[apostrophe]t been any deliveries from the outside world for a while, so we have to be careful how much we give out in a day.' He continues with an apologetic shrug, and you sigh and realize you will have to come back again later if you want another drink from the bar.";
	otherwise:
		say "Harold nods at you as you place your order, pulling a couple of bottles out from behind the bar, and mixing your drink with an experts touch, it isn[apostrophe]t long before he sets a tall glass of some sort of milky white liquid in front of you. Raising your glass to Harold, you take a curious drink, the smooth creamy flavor of some sort of spiced milk drink filling your mouth. The unusual yet delightful taste of the drink has you quickly draining the glass, enjoying the way the rum and vanilla spiced milk goes down easily, yet still leaves you thirsty for more. Setting your glass back down on the bar, you grin with amusement as as you note that the canny bartender has anticipated your request, and another glass full of the creamy liquid has already been set out on the bar for you. Saluting him again with your glass, you drink some more of the strangely flavored milk as you enjoy the sights of the busy club, a pleasant buzz starting to set in, even as you realize that your body is beginning to change slightly, though in your mildly inebriated state, it is hard to think why that would be a problem.";
		infect "Hermaphrodite Gryphon";
		infect "Hermaphrodite Gryphon";
		decrease humanity of player by 5;
		decrease thirst of player by 5;
		now lastDrinkserved is turns;

Heavendrinking is an action applying to nothing.

understand "Order Harpy Heaven" as Heavendrinking;
understand "Order Heaven" as Heavendrinking;  

check Heavendrinking:
	if Drink bar is not visible, say "You must have already had one drink to many to try that here." instead;


carry out Heavendrinking:
	if lastDrinkserved  - turns is less than 6:
		say "Harold looks at you for a minute thoughtfully, before sighing and shaking his head sadly. 'Sorry friend, I can only give you so much at a time. So you can have a drink or two to loosen up a bit, but not enough to get drunk hopefully.' The bartender says with an amused chuckle at the idea, 'Besides, it[apostrophe]s actually pretty hard to keep stock up since there haven[apostrophe]t been any deliveries from the outside world for a while, so we have to be careful how much we give out in a day.' He continues with an apologetic shrug, and you sigh and realize you will have to come back again later if you want another drink from the bar.";
	otherwise:
		say "Harold nods at you as you place your order, before pulling out a small energy drink bottle and placing it in front of you. You raise your eyebrows at him, but he only grins as he nudges the small bottle towards you, shrugging you toss back the small bottle of liquid, gasping as the strangely bitter tasting liquid sears its way down your throat. Blinking in surprise as you set the bottle down, you realize that you strangely feel increasingly light and energized, though your body feels strangely tingly. ";
		infect "harpy";
		infect "harpy";
		decrease humanity of player by 5;
		decrease thirst of player by 5;
		now lastDrinkserved is turns;


Specialdrinking is an action applying to nothing.

understand "Order Satyr Special" as Specialdrinking;
understand "Order Special" as Specialdrinking;  

check Specialdrinking:
	if Drink bar is not visible, say "You must have already had one drink to many to try that here." instead;


carry out Specialdrinking:
	if lastDrinkserved  - turns is less than 6:
		say "Harold looks at you for a minute thoughtfully, before sighing and shaking his head sadly. 'Sorry friend, I can only give you so much at a time. So you can have a drink or two to loosen up a bit, but not enough to get drunk hopefully.' The bartender says with an amused chuckle at the idea, 'Besides, it[apostrophe]s actually pretty hard to keep stock up since there haven[apostrophe]t been any deliveries from the outside world for a while, so we have to be careful how much we give out in a day.' He continues with an apologetic shrug, and you sigh and realize you will have to come back again later if you want another drink from the bar.";
	otherwise:
		say "Harold nods at you as you place your order, pulling a couple of bottles out from behind the bar, and mixing your drink with an experts touch, it isn[apostrophe]t long before he sets a glass of some dark liquid in front of you, the powerful smell wafting off the glass telling you that the satyr special is not surprisingly some kind of powerful wine. Taking a sip, you find yourself quickly gulping the rest as a taste of the amazingly full bodied wine goes straight to your head, and you quickly shove your empty glass back towards the bartender, who only chuckles as the unicorn refills your glass for you. After several more refills, you are pleasantly buzzed, and definitely looking forward to a good party as you set your glass down and wander out to the dance floor, hardly even noticing or caring as your body starts to change to a more suitable form for a long party.";
		infect "Satyr";
		infect "Satyr";
		decrease humanity of player by 5;
		decrease thirst of player by 5;
		now lastDrinkserved is turns;



Pintdrinking is an action applying to nothing.

understand "Order Panda Pint" as Pintdrinking;
understand "Order Pint" as Pintdrinking;  

check Pintdrinking:
	if Drink bar is not visible, say "You must have already had one drink to many to try that here." instead;


carry out pintdrinking:
	if lastDrinkserved  - turns is less than 6:
		say "Harold looks at you for a minute thoughtfully, before sighing and shaking his head sadly. 'Sorry friend, I can only give you so much at a time. So you can have a drink or two to loosen up a bit, but not enough to get drunk hopefully.' The bartender says with an amused chuckle at the idea, 'Besides, it[apostrophe]s actually pretty hard to keep stock up since there haven[apostrophe]t been any deliveries from the outside world for a while, so we have to be careful how much we give out in a day.' He continues with an apologetic shrug, and you sigh and realize you will have to come back again later if you want another drink from the bar.";
	otherwise:
		say "Harold nods at you as you place your order, pulling a couple of bottles out from behind the bar, and mixing your drink with an experts touch, it isn[apostrophe]t long before he sets a Pint down on the bar next to you. Raising your pint to Harold, you take a nice drink, enjoying the way the liqour slides down your throat, and the warm buzz that accompanies it. Saluting your unicorn bartender again with your pint glass, you continue to enjoy your drink, getting several refills from the bartender, even as pleasant buzz grows even more powerful, and you realize that your body is beginning to change slightly, though in your mildly inebriated state, it is hard to think why that would be a problem.";
		infect "panda";
		infect "panda";
		decrease humanity of player by 5;
		decrease thirst of player by 5;
		now lastDrinkserved is turns;



Lagerdrinking is an action applying to nothing.

understand "Order Jaguar Lager" as Lagerdrinking;
understand "Order Lager" as Lagerdrinking;  

check Lagerdrinking:
	if Drink bar is not visible, say "You must have already had one drink to many to try that here." instead;


carry out Lagerdrinking:
	if lastDrinkserved  - turns is less than 6:
		say "Harold looks at you for a minute thoughtfully, before sighing and shaking his head sadly. 'Sorry friend, I can only give you so much at a time. So you can have a drink or two to loosen up a bit, but not enough to get drunk hopefully.' The bartender says with an amused chuckle at the idea, 'Besides, it[apostrophe]s actually pretty hard to keep stock up since there haven[apostrophe]t been any deliveries from the outside world for a while, so we have to be careful how much we give out in a day.' He continues with an apologetic shrug, and you sigh and realize you will have to come back again later if you want another drink from the bar.";
	otherwise:
		say "Harold nods at you as you place your order, pulling a couple of bottles out from behind the bar, and mixing your drink with an experts touch, it isn[apostrophe]t long before he sets a glass of lager in front of you. Raising your glass to Harold, you take a nice long drink, the crisp taste of a good lager fills your mouth, and drink it down eagerly, smacking your lips as you try to place the strangely arousing aftertaste the liquid has. Deciding to try another you smile as you realize that the canny unicorn already has another lager set out on the bar for you. Saluting him again with your new glass, you continue to try to work out just what makes this lager so good, a pleasant buzz starting to set in, even as you realize that your body is beginning to change slightly, though in your mildly inebriated state, it is hard to think why that would be a problem.";
		infect "Jaguar";
		infect "Jaguar";
		decrease humanity of player by 5;
		decrease thirst of player by 5;
		now lastDrinkserved is turns;



Sabredrinking is an action applying to nothing.

understand "Order Sabre Savager" as Sabredrinking;
understand "Order Savager" as Sabredrinking;  

check Sabredrinking:
	if Drink bar is not visible, say "You must have already had one drink to many to try that here." instead;


carry out Sabredrinking:
	if lastDrinkserved  - turns is less than 6:
		say "Harold looks at you for a minute thoughtfully, before sighing and shaking his head sadly. 'Sorry friend, I can only give you so much at a time. So you can have a drink or two to loosen up a bit, but not enough to get drunk hopefully.' The bartender says with an amused chuckle at the idea, 'Besides, it[apostrophe]s actually pretty hard to keep stock up since there haven[apostrophe]t been any deliveries from the outside world for a while, so we have to be careful how much we give out in a day.' He continues with an apologetic shrug, and you sigh and realize you will have to come back again later if you want another drink from the bar.";
	otherwise:
		say "Harold nods at you as you place your order, pulling a couple of bottles out from behind the bar, and mixing your drink with an experts touch, it isn[apostrophe]t long before he sets a tall pitcher full of a varity of different liqour up on the bar, and drops what appears to be part of a big tooth in the pitcher before shaking the alcoholic mix up and pouring you a glass. Feeling somewhat adventurous, you take a big drink, the combined flavors of several different types of drink mixing pleasantly on your tongue, before the sheer sledgehammer of the powerful alcholic mix hits your brain, and makes you gasp. Blinking, and trying to recover, you find you feel positively primal as you pour yourself another drink from the pitcher, a savage grin crossing your face as you look around the room with a new more predatory outlook, wondering just who you feel like playing with tonight. You hardly even notice the small changes in your body as you continue to enjoy your drink, other then to note how much easier they will make stalking a partner to play with later on...";
		infect "Sabretooth";
		infect "Sabretooth";
		decrease humanity of player by 5;
		decrease thirst of player by 5;
		now lastDrinkserved is turns;


Rumdrinking is an action applying to nothing.

understand "Order Chocolate Rum" as Rumdrinking;
understand "Order Rum" as Rumdrinking;  

check Rumdrinking:
	if Drink bar is not visible, say "You must have already had one drink to many to try that here." instead;


carry out Rumdrinking:
	if lastDrinkserved  - turns is less than 6:
		say "Harold looks at you for a minute thoughtfully, before sighing and shaking his head sadly. 'Sorry friend, I can only give you so much at a time. So you can have a drink or two to loosen up a bit, but not enough to get drunk hopefully.' The bartender says with an amused chuckle at the idea, 'Besides, it[apostrophe]s actually pretty hard to keep stock up since there haven[apostrophe]t been any deliveries from the outside world for a while, so we have to be careful how much we give out in a day.' He continues with an apologetic shrug, and you sigh and realize you will have to come back again later if you want another drink from the bar.";
	otherwise:
		say "Harold nods at you as you place your order, pulling a couple of bottles out from behind the bar, and mixing your drink with an experts touch, it isn[apostrophe]t long before he sets a glass full of dark rum in front of you. Raising your glass to Harold, the pleasantly sweet and smoky odor of the slightly viscuous liquid, and smile with anticipation as you take a long drink. The somewhat smokey caramel and chocolate flavored rum goes down nice and smooth, and you feel increasingly happy and relaxed as Harold fills your glass up again. You smile at the handsome unicorn, and take another nice long drink, feeling nice and euphoric as you look around the room, Harold keeping your glass topped off even as your body starts to change and shift slightly, though in your happy and inebriated state, it is hard to think how anything that feels as good as your body changing like this could be a problem.";
		infect "Chocolate Lab";
		infect "Chocolate Lab";
		decrease humanity of player by 5;
		decrease thirst of player by 5;
		now lastDrinkserved is turns;


Vodkadrinking is an action applying to nothing.

understand "Order Zebra Vodka" as Vodkadrinking;
understand "Order Vodka" as Vodkadrinking;  

check Vodkadrinking:
	if Drink bar is not visible, say "You must have already had one drink to many to try that here." instead;


carry out Vodkadrinking:
	if lastDrinkserved  - turns is less than 6:
		say "Harold looks at you for a minute thoughtfully, before sighing and shaking his head sadly. 'Sorry friend, I can only give you so much at a time. So you can have a drink or two to loosen up a bit, but not enough to get drunk hopefully.' The bartender says with an amused chuckle at the idea, 'Besides, it[apostrophe]s actually pretty hard to keep stock up since there haven[apostrophe]t been any deliveries from the outside world for a while, so we have to be careful how much we give out in a day.' He continues with an apologetic shrug, and you sigh and realize you will have to come back again later if you want another drink from the bar.";
	otherwise:
		say "Harold nods at you as you place your order, pulling a couple of bottles out from behind the bar, and mixing your drink with an experts touch, it isn[apostrophe]t long before he sets several a small shotglass full of a layered  liquid in front of you. The drink is mostly clear, with several thin stripelike layers of darker liquid, which makes you grin at the slight resemblance to zebra striping the bartender obviously went to some effort to emulate. Raising your glass to Harold, you toss back the shot, gasping slightly as the liquid burns it[apostrophe]s way down your throat, a warm happy sensation spreading outward from your chest as you slam the shot down and smile at Harold. Your smile only grows larger as you note that the canny bartender already has another shot set out on the bar for you. Saluting him again with your glass, you drink several more shots, a pleasant buzz starting to set in, even as you realize that your body is beginning to change slightly, though in your mildly inebriated state, it is hard to think why that would be a problem."; 
		infect "Zebra";
		infect "Zebra";
		decrease humanity of player by 5;
		decrease thirst of player by 5;
		now lastDrinkserved is turns;


Tequiladrinking is an action applying to nothing.

understand "Order Tigress Tequila" as Tequiladrinking;
understand "Order Tequila" as Tequiladrinking;  

check Tequiladrinking:
	if Drink bar is not visible, say "You must have already had one drink to many to try that here." instead;


carry out Tequiladrinking:
	if lastDrinkserved  - turns is less than 6:
		say "Harold looks at you for a minute thoughtfully, before sighing and shaking his head sadly. 'Sorry friend, I can only give you so much at a time. So you can have a drink or two to loosen up a bit, but not enough to get drunk hopefully.' The bartender says with an amused chuckle at the idea, 'Besides, it[apostrophe]s actually pretty hard to keep stock up since there haven[apostrophe]t been any deliveries from the outside world for a while, so we have to be careful how much we give out in a day.' He continues with an apologetic shrug, and you sigh and realize you will have to come back again later if you want another drink from the bar.";
	otherwise:
		say "Harold nods at you as you place your order, pulling a couple of bottles out from behind the bar, and mixing your drink with an experts touch, it isn[apostrophe]t long before he sets a small glass of orange tequila in front of you. 'That will put whiskers on ya,' He says with a broad grin, 'Might loosen ya up some too.' Harold finishes, with amusement as he goes back to tending the bar, shooting you an occassional amused glance as you raise your glass. Eying the tequila suspiciously, you shrug as you pick up the glass and take a big drink. The tequila burns harshly as it goes down,  the liquor carrying an even stronger bite then regular tequila, but with a strangely pleasant aftertaste. Realizing you have drained your glass, you set it back down on the bar, gasping slightly as the liquor hits your system, making you feel nice and warm as it loosens you up. Grinning happily, you note that the canny bartender already has another glass set out on the bar for you. Snagging the fresh glass, you quickly drink some more of the powerful liqour, feeling it loosen you right up as it makes your body tingle happily, the drink making you feel nice and sexy, and perhaps even a little bit slutty as you grin happily and look around the room, enjoying the sights of so many different horny beasts having fun, and you find yourself wondering just what some of the horny dancers would give to have fun with you as well, the thought of selling your body for the night seeeming strangely alluring even as your body shifts and changes on the outside to match your new sexy and slutty inside...";
		infect "Tigress Hooker";
		infect "Tigress Hooker";
		decrease humanity of player by 5;
		decrease thirst of player by 5;
		now lastDrinkserved is turns;

Harold ends here.


