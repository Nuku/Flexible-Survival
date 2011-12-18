Fancy by Sarokcat n Verath begins here.

"Adds a npc to Flexible Survival with a variety of responses and goals..."

section 1- Fancy

Fancytalk is a number that varies.
Fancyaroused is a number that varies.[not a needed number, but used to set different arousal states if they aren't automatically willing to just hop into bed.]
Fancyquest is a number that varies.[often used for quests or renamed to Fancyquest, see boris for some good examples of this, totally unneeded if the npc doesn't have an associated quest.]
LastFancyfucked is a number that varies. LastFancyfucked is usually 250.
Fancyfucked is a number that varies. Fancyfucked is usually 0.

Fancy is a man.[or woman]
The description of Fancy is "A rather sexy looking mare eyes you with amusement from where she is seated at the small table she is using as a desk, wearing only her soft pelt of white horse fur and a set of white panties that reveal far more then they conceal. Her body is well built, and nicely rounded in all the right places, the horsewoman has nice strong thighs, and her powerful hooves stretch out in front of her, her legs slightly parted teasingly as she gives you a good view of her tightly stretched panties. She rests her equine muzzle on her slightly hooflike hands as she looks at you with anticipation, her deep blue eyes twinkling with amusement as she cocks her ears forward to hear what you have to say.";


The conversation of Fancy is { "[Fancytalking]" };

To say Fancytalking:
	if Fancytalk is 0:[first time you encounter the npc text]
		say "'Well hey there, interesting to see a new face all the way over here.' The white mare says with a smile on her muzzle, before chuckling slightly to herself. 'Let me guess, the receptionist is off playing with that donkey toy of hers again, and there was no one at the front?' She says with some amusement as she looks up at you, when you just shrug, she sighs and continues. 'Yeah well, figured as much, well since they let you in here you must be a customer of some stripe, either that or a very fast talker, either way, welcome to 'The Stables'.' The mare says as she leans back and halfheartedly gestures with one of her hooftipped hands at the building.[line break]";
		say "'It might be a bit old and all, but it[apostrophe]s still nice and sturdy, and above all pretty damn secure, which has certainly become a more important factor due to recent events.' The mare says, before focusing her attention back on you fully. 'The names Fancy, and I[apostrophe]m kind of the mare in charge of this area, though it doesn[apostrophe]t take much to keep things running smoothly enough. Though it certainly could be a bit better if we could only get some proper supplies.' Fancy says with a shrug, 'Still, this is the Mares quarters, which as you can see, is where all the mares stay and hang out when they aren[apostrophe]t 'working'.' She pauses for a minute as she grins at you, stretching her hooves out in front of her teasingly as she leans back on her stool slightly. 'In case you haven[apostrophe]t figured it out yet, the stables is a 'working house', a pleasure palace, or to put it pretty bluntly, a proper whorehouse. It used to be people would come here on trips or vacation, and the women would come over from the red light district, and do some 'room service' of their own.' Fancy says as she watches your reaction with amusement. 'Now the owner just rents out members of his 'stable' to anyone who has something to trade, I understand he used to be an avid collector of horses at one point, and now well, he just moved on to collecting a different type of horseflesh.' The mare says with some amusement.[line break]";
		say "'So that[apostrophe]s the basics, though I am sure you had figured most of it out for yourself already, after all, you did come here for a reason I[apostrophe]m sure.' Fancy says with a smile, before sighing, 'Sad to say though, most of us mares over here are relaxing for now, and while I am sure you could certainly manage to entice several of them to play with you, they really are supposed to be resting and waiting their turn.' She says as she glances around at the few mares hanging around nearby pretending not to be listening. 'So if you are looking for some fun you should head back and go through the doors to the main building, north of the reception desk. Of course if you just want to hang around with some mares, well feel free to hang around here as long as you want.' Fancy says with a smile as she shifts her weight forward to give you a nice view of her ample breasts. 'And I[apostrophe]m sure if you hang around here a while we can certainly find ways to help you fit in so to speak, and maybe you could even help me get this place fixed up a bit if you wanted. It would certainly be appreciated after all.'";
		increase Fancytalk by 1;
		stop the action;
	if fancyquest is 14:
		say "'Any word back on the ingredients we need? Or the item that was ordered from her?' Fancy says with a hopeful smile as she looks up at you eagerly, and you feel rather embarrassed as you shake your head and she sighs unhappily. 'Well keep trying... We can[apostrophe]t keep the plan from the stablemaster much longer...' The white mare says with some disappointment as she goes back to her duties as head mare.";
	if fancyquest is 13:
		say "'Looking great there you sexy beast you,' Fancy says with a smile as she takes in your new surprisingly sleek black horselike countenance, and your shimmering black furred hide. 'I have a bit of bad news for you though,' the white mare says with a soft sigh as she shakes her head slightly, 'I think the stablemaster is getting suspicious, and well, it would of course have been too much to hope that he wouldn[apostrophe]t notice the power coming on and the new atmosphere around here. Though I don[apostrophe]t think he knows about you yet, after all, you[apostrophe]re still here aren[apostrophe]t you?' She says with a sly grin on her muzzle before continuing. 'But this means we probably have to act a bit faster then intended, and you are going to need another dose even sooner then expected, and one with a bit of extra kick as well if you know what I mean.' The mare winks at you teasingly before smoothing her hand through her soft white fur and continuing nervously. 'The problem is, well we haven[apostrophe]t managed to collect another draft of the main ingredient yet, and I haven[apostrophe]t managed to get another of the horsemen to go to the weird shop at the mall where I get the special additives to mix into it that help to make you just as powerful as the stablemaster is.  Plus I ordered a special item from her as well a while ago, and while it wasn[apostrophe]t quite ready last I heard she needed some special ingredients to finish it...' Fancy sighs helplessly, before looking up at you coyly. 'Maybe you could go check on the shop near the mall? Though I heard it moves sometimes... I think the shopkeepers name was Nermine, and well... no one else I trust will go near her after what happened to the last stallion to visit her, though in my defense, she does make a lovely little cow, and her milk is quite nice!' She says nervously, before sighing and looking up at you hopefully, her words and attitude making you wonder just what kind of trouble you are about to get into.";
		now fancyquest is 14;
		stop the action;
	if fancyquest is 12:
		say "'Going to finish your drink? A lot of work went into acquiring it after all.' Fancy says teasingly as she leans back at her desk, obviously hoping for a sexy show.";
		stop the action;
	if fancyquest is 11:
		if provingstallionhood is 3:
			say "'Excellent work!' Fancy says as you return once again to the now familiar mares quarters. 'I heard back from several of the stallions about your smashing victory, and now everyone is behind you pretty solidly, or at least willing to wait and see what happens.' She says with a sexy smile as she pulls out another of those vials filled with the increasingly familiar multicoloured liquid. 'And best of all, I managed to get the ingredients together to mix up another batch of the stablemasters special drink for you. Which should really help toughen you up a bit more, and best of all, should sexy you right up as well.' The mare smirks slightly with amusement as she passes over the full vial, obviously anticipating the changes to your body almost as much as you are beginning to.";
			now fancyquest is 12;
			add "nightmare vial" to invent of player;
			stop the action;
		otherwise:
			say "'Did you need some help working out what to do?' Fancy asks as you return to talk with her again. 'Go hunt around outside until you find a hyena rep, and have them take you to their negotiator, you won[apostrophe]t talk to the matriarch most likely, but one of her lackeys, and they will probably make you put on a show or test you somehow before agreeing. After that, go explore in the stables proper until you find a horseman who can guide you to where the worst doubters of your ability are, at which point you can pummel some sense into them!' She says with increasing excitement as she grins up at you.";
			stop the action;
	if fancyquest is 10:
		say "'Oh I love the new look!' Fancy says with a broad smile as she takes in your newly changed face, her eyes examining your shapely new muzzle and lovely new mane. 'And I really like your mane! You are going to be a big hit around here I can tell already!' She says as she fans herself teasingly with her hand, her honest appreciation making your new equine muzzle stretch in a grin as you glance around at several of the other obviously aroused mares eyeing you speculatively. 'Still we do have a few things left to do, thanks to your efforts, a lot of the mares are on board, but some of the stallions are starting to get nervous, the stablemaster isn[apostrophe]t known for being lenient, and quite frankly most of them don[apostrophe]t think you have a chance in hell of actually replacing him. Not to mention several of the deals he has going on around town that certainly benefit the stables.' Fancy says with a sigh, before shrugging and leaning forward slightly, her bright blue equine eyes fixed on you intently. 'That[apostrophe]s why we need a show of force, to keep them quiet a bit longer while you get more powerful, and so they can help me get your next drink prepared. So we need to make you seem both competent and powerful, fortunately several of us have come up with a way for you to do both, though it is going to require a bit of effort on your part.' She pauses for a minute and looks at you hopefully, seeming relieved when you nod at her eagerly.[line break]";
		say "'Well first things first, we need you to help 'renegotiate' an agreement we recently made with one of the largest gangs in the city, the hyenas. Honestly the current agreement pretty much favors the hyenas, and several people have been grumbling about it already.' Fancy smiles as she pulls out a sealed piece of paper and passes it over to you. 'This is a somewhat more fair agreement that I think they might go for, it[apostrophe]s still somewhat in their favor unfortunately, but well they do outnumber us by a fair bit.' She says with a shrug, and you nod as well as you tuck the paper away safely. 'But if you can get the few concessions on that paper agreed to, I think that would silence a lot of the dissenters, and be a good step towards proving how tough you are. Once you have got the agreement, come back to the stables, and several of the stallions have agreed to let you prove yourself by taking on several of the stablemasters closest supporters. If you can beat them, it will be a big blow to the stablemasters reputation, and certainly silence any doubts as to your ability to hold your own.' The sexy white mare says with a nervous grin as she sends you on your way, and you find yourself sighing slightly as you prepare to go 'bargain' with the hyena gang out in the city.";
		now fancyquest is 11;
		now provingstallionhood is 1;
		stop the action;
	if fancyquest is 9:
		say "'Well? Going to take a drink? We can[apostrophe]t exactly keep pressing forward with fixing this place up if you aren[apostrophe]t powerful enough to replace the current stablemaster after all!' The sexy white mare says with a teasing smile as she looks you up and down speculatively.";
		stop the action;
	if fancyquest is 8:
		if generatorfixing is 4:
			say "'Welcome back!' Fancy greets you exuberantly as you approach, 'No need to tell me about it, everyone noticed when some of the lights came back on and the refrigerators started working again. This is going to make life around here so much better for everyone!' She says with a happy smile, and you can see several of the other nearby mares nodding in agreement and eyeing you speculatively. 'Here you definitely earned this,' Fancy says as she passes you another vial full of that strange yet powerful liquid, 'Several of the mares helped me acquire the ingredients this time, call it a thank you for all the work you have done for us so far, plus we can[apostrophe]t wait to see how our new 'master' turns out!' She says with a fond wink as she grins up at you.";
			now fancyquest is 9;
			add "nightmare vial" to invent of player;
			stop the action;
		otherwise:
			say "'Still having trouble finding the information you need? Remember once you find a good reference guide head out back of the stables to help them hook it up!' Fancy says with a broad smile and a happy tone, 'I just can[apostrophe]t wait to have power again! Even if we will have to ration it!'";
	if fancyquest is 7:
		say "'Ah there you are, and I see you definitely look a bit better now as well,' Fancy says teasingly as she eyes your new equine tail with open admiration, before shaking her head slightly and refocusing her attention on your face.  'Still now that you have started to change, we have to keep things moving before the current stablemaster finds out about this, Since you definitely aren[apostrophe]t ready to take him on quite yet, and I certainly can[apostrophe]t help but obey if he asks me anything.' The white mare says with a soft sigh before shaking her equine head sadly, 'Not that he ever really comes down here that is, which should give us some time.' Fancy says hopefully, before giving you a rather sexy equine grin as she flicks her mobile ears teasingly, 'Which we should definitely use to get on top of things around here, especially with all the new repairs to be made... speaking of which, several of the stallions could use a bit of help with actually.' She says with a sigh as she rubs her forelock ruefully, 'They may be well endowed and all, but just not so much in the brain department anymore.' The mare shakes her head ruefully before looking back at you with a smile. [line break]";
		say "'Which is where we could use a bit of your help honestly, they brought back a pretty nice generator, several of them actually, as well as some solar panels. and in theory we should have power, and hot water again now... if they could only figure out how to get it running and wire it into the building without shorting everything out, or hurting someone else.' The white mare actually snickers slightly as she leans closer for a minute and whispers in a low voice. 'One of the stallions actually managed to shock himself pretty good messing around with it, his fur is still standing straight up and he has a hilarious stutter now as well! Not that it hasn[apostrophe]t gotten him plenty of sympathy from the ladies as well.' Fancy chuckles at the situation, and gives you a little wink, and you can feel yourself grinning a bit as well at the image she paints. 'But well, thats where we could use your help, if you know anyone in town who knows electronics or can find some good instructions on the subject, well they could sure use the help out back, and to be honest I really don[apostrophe]t trust the stallions to mess with something that dangerous on their own.' She says with a smile, and remembering the vast number of books back in the library, you nod to the sexy mare, and assure her you will do your best to find out what you need to know so you can hook the power up.";
		now fancyquest is 8;
		now generatorfixing is 1;
		stop the action;
	if fancyquest is 6:
		say "'Not having second thoughts are you?' Fancy asks teasingly as she gestures at the strange vial she handed you. 'If you want to become stablemaster and continue to help out around here, you are going to need the power that gives you...' She says with a soft smile, before winking slightly, 'Besides I just can[apostrophe]t wait to see how you turn out!'";
		stop the action;
	If fancyquest is 5:
		say "'Your back! Thanks a ton for all the help so far,' Fancy says with a happy smile as she sees you approach, 'Everyone s starting to take an interest in keeping the place in better shape now, and things are starting to get a bit more comfortable around here, and a bit safer too now that we are fixing some of the underground areas.' The white mare says with a smile as she pats your arm in thanks, her hand lingering a bit longer then necessary as she strokes your arm slightly before continuing. 'In fact, considering all you have done for us, you have made several friends around here, and more then a few mares are hoping you will join us on a more permanent basis at some point, including me.' Fancy says with a soft blush as she winks at you.  'You are actually doing a much better job of paying attention to the needs of the equines around here so far than the stablemaster is... which actually brings up an interesting question...' Fancy pauses for a minute as if trying to decide exactly what to say, before sighing and leaning forward to address you directly, her equine eyes staring directly into yours as she continues. 'Have you thought about maybe well, challenging the stablemaster at some point? We could really use someone with your strength and concern for the stables in that position instead of the current owner.' The white mare asks you in a rather low voice as she looks up at you hopefully. Do you decide to take her up on her offer to replace the stablemaster? ";
		if player consents:
			say "'That[apostrophe]s wonderful! Of course you aren[apostrophe]t powerful enough to take him on yet, and I am not sure everyone would accept you as the new stablemaster yet either.' Fancy says in a low voice as she rubs the side of her muzzle thoughtfully 'Well first you need a much more powerful equine form than anyone else has, fortunately I can actually help you with that after having been here so long and watched the stablemaster whenever I could...' She says with a rather mischieveous smile as she glances around quickly before continuing, 'I even managed to acquire an item of his, which should let you start to acquire a similar form once you use it.... though it will take a bit more time and possibly some help from some of the others here to acquire more items.' She says with a sigh as she slips you a small wrapped package which seems to hold some form of glass inside, 'So if you keep helping me fix things around here, and get to know more people, we should be able to make you strong enough to replace the stablemaster, and get you the support of the stablehands as well.' She says with a smile as she leans back and relaxes, while you take the item she gave you and examine it more closely, finding it to be a small glass container filled with some murky white and black liquid....";
			now fancyquest is 6;
			add "nightmare vial" to invent of player;
			stop the action;
		otherwise:
			say "'Thats... really too bad,' Fancy says with a soft sigh, 'Well I suppose it was good of you to help us out a little bit at least, though I probably won[apostrophe]t ask you for any more help in the future.' The white mare says with a sigh as she goes back to what she was doing.";
			now fancyquest is 0;
			stop the action;
	if fancyquest is 4:
		say "'Having trouble finding a suitable spot? Well don[apostrophe]t worry, I am sure you will find one if you keep looking.' Fancy says with a bright smile on her equine muzzle, 'And I really appreciate the help you are giving us with this, why if the stablemaster cared half as much for the stables as you do.... well maybe we can get into that later...' She says with a teasing wink.";
		stop the action;
	if fancyquest is 3:
		say "'Back again and looking to help?' Fancy asks you with a happy smile as you approach her again, though she doesn[apostrophe]t wait for a response on your part before continuing. 'Well now that we have some stuff to do some patchwork around here, we could use some help getting some of the larger pieces we need to do some repairs.' She says with a rather determined nod of her equine head. 'Now I don[apostrophe]t expect you to go hauling beams and construction tools back here on your own or anything, but I do need you to find and secure us a good supply of the items. Here.' She says as she hands you what looks like a small radio transceiver. 'I had one of the mares who knows a little bit about electronics still put this together, and I bullied a few of the stallions into agreeing to go out to pick up the items once you find them. it[apostrophe]s amazing what a horse will do when his source of sex is threatened,' Fancy says with a soft equine snicker as she shakes her head at the silliness of the stallions. 'All you need to do is locate a good spot somewhere in the city, possibly a large hardware store or construction site, clean it out, and then guard it while the stallions head there and haul off the materials. Should be simple for a fine and powerful specimen like yourself right?' The white mare says with a teasing wink as she settles back down in her chair.";
		now fancyquest is 4;
		stop the action;
	If fancyquest is 2:
		let feathers be 0;
		repeat with z running through invent of player:
			if z is "Wyvern Goop", increase feathers by 1; 
		if feathers > 4:
			say "'Ah yes! That sticky stuff should work fine to plug up some of the holes and hold some of the walls together when it hardens! Perfect!' Fancy says with increasing enthusiasm as she looks at your pack.";
			let feathers be 0;
			repeat with z running through invent of player:
				if z is "Tiger patch", increase feathers by 1; 
			if feathers > 4:
				say "'And you have some rubber patches here too! Though that is a very odd patterned rubber.' She says with an intrigued tone as she looks at the striped patches of rubber before shrugging absently. 'Still they should work great for patching some of the wiring and covering smaller holes, and since it looks like it might be still infectious, I wonder if we could find a 'volunteer' to try a patch or two on so we could get more whenever we needed... Though maybe thats a thought for later.' Fancy says in an extremely cheerful tone as she takes the items from you and sets them aside. 'I[apostrophe]ll have several of the mares work on the repairs in their spare time, and I have to thank you for your help as well, it[apostrophe]s really nice to have someone actually follow through on getting us some help around here. She says with an equine grin as she leans back and stretches slightly, 'I wish the stablemaster would take more of an interest in the running of the place instead of just enjoying the place... but still..' Fancy sighs slightly on the last note, before shrugging helplessly. 'Still what can we get you for your help.... I know!' She says with a smile as she stands up and stretchs slightly, 'Wait right here.' She says as she wanders off, her tail swaying teasingly behind her as she vanishes into one of the nearby rooms, before returning with a rather interesting looking large black leather duster. 'This should help, and look pretty sexy as well,' Fancy says with a wink as she slips the soft leather coat onto you, and you note that the leather appears to be not only rather sexy looking, but is also reinforced against most types of physical damage as well!";
				delete Wyvern Goop;
				delete Wyvern Goop;
				delete Wyvern Goop;
				delete Wyvern Goop;
				delete Wyvern Goop;
				delete Tiger patch;
				delete Tiger patch;
				delete Tiger patch;
				delete Tiger patch;
				delete Tiger patch;
				add "Sexy Leather duster" to feats of the player;				
				if "Toughened" is listed in feats of the player:
					increase stamina of player by 5;
					say "your stamina has increased by 5!";
					now fancyquest is 3;
					stop the action;
				otherwise:
					add "Toughened" to feats of the player;
					increase stamina of player by 2;
					say "your stamina has increased by 2 and you feel a bit tougher!";		
					now fancyquest is 3;
					stop the action;
			otherwise:
				say "'Though it looks like we still need some rubber patches to go with the plaster like stuff.' Fancy says with a sigh, 'Maybe you should look around somewhere with a lot of balloons or something? wasn[apostrophe]t there a fair in town?' She says hopefully as she looks at you.";
				stop the action;
		otherwise:
			say "'Still no luck on finding the materials?' Fancy says with a sad sigh, 'I am sure you can find some of them out there in the city somewhere, it doesn[apostrophe]t matter if they are infectious or not really, in fact it might be mildly preferable honestly...' She says with an equine grin as she gives you a wink.";
			stop the action;
	if fancyquest is 1:
		if fancyaroused is greater than 1:
			say "'Hey again there sexy,' Fancy says with a teasing wink as she looks at you curiously for a minute, only to blink when you mention the ignored memos. 'It figures they would just throw them away like that,' The sexy white mare says with a sigh, 'But its nothing you need to worry your little head about right now,' She says with a soft teasing smile as she stretches her nearly naked form out teasingly, seemingly unworried about the problem right now with you in front of her.";
			Now fancyquest is 0;
			stop the action;
		otherwise:
			say "'Hey there again, did you have some more questions about this place or did you need help with something?' Fancy says with a soft smile on her white muzzle as she looks up at you again, only to blink in surprise as you mention the stack of memos you found, and that you were actually wondering if she needed help instead. Fancy blinks in surprise, and then sighs, 'So they just tossed all my requests on a desk somewhere and forgot about them? That sounds about normal for this place, so I don[apostrophe]t know why I am surprised.' She shakes her equine head sadly, before concentrating her attention on you again. 'And while I am sure I[apostrophe]m probably not supposed to get help from outside sources, if you are offering I certainly can[apostrophe]t afford to turn down some help.' Fancy says with a rueful smile as she looks at you expectantly. Do you offer to help out?";
			if player consents:
				say "'Great! I could really use some help around here,' Fancy says happily as she rubs her hands together and smiles, 'Now lets see, what to deal with first...' She pauses for a minute as she stares around the mares quarters speculatively, before smiling and turning her large equine blue eyes back to you. 'I know! Since unlike most of us, you can still go out into the city and find things, and unlike the stallions you might actually bring back something other then new recruits, maybe you could bring me a few items.' The white mare says with a smile as she looks at you, and her grin only grows larger when you nod in agreement, 'Great! Well the first thing I suppose we really need is some supplies to we can  use to help patch this place up a bit. If you could get us some kind of sticky goop or substance to fill in holes and plug some of the leaks with, and maybe a bit of rubber to patch some of the wiring with, it would be a great start.' She says with a small smile, 'About five samples of each should be enough to get us started.' Fancy says with a happy nod of her equine head as she sends you on your way, and you wonder idly where you will find the required items...";
				now fancyquest is 2;
				stop the action;
			otherwise:
				say "'Ah well, I shouldn[apostrophe]t be surprised I suppose, it isn[apostrophe]t like anyone else wants to help out around here anyways...' She says with a sigh, before going back to pointedly ignoring you. ";
				now fancyquest is 0;
				stop the action;
	if fancyaroused is 1:
		say "'It was nice of you to help Daisy and Onyx out with their distraction I must admit,' the white mare says with a soft smile as she looks up at you with a teasing wink. 'One would almost think you wanted to stay around and help me keep this place running smoothly.' Fancy says with a soft smile as she looks around the mare[apostrophe]s quarters before returning to eying you speculatively.";
		stop the action;
	if Fancytalk is 1:[Normal short messages the npc will say each time you talk to them]
		say "[one of]'Hanging around the mares area some more? We are always glad to see a friendly face.'[or]'Back again? Maybe you are interested in a position here at the Stables? Or maybe even several positions?' Fancy says with a suggestive grin.[or]'Those damn horsemen are always breaking things on accident, and never fixing them. I swear...'[or]'Try some of the food over there on the table, you might like it.'[or]'So, what do you like in a mare?' Fancy asks you teasingly, 'Breasts, legs, or ass?' She says, her hands rubbing over each part in turn as she watches your reactions.[or]'Were you looking for something here? Or maybe you were looking for someone?' Fancy asks you teasingly.[or]'I wish I could get some help around here sometimes, I only have two hooves after all!'[or]'You know what one of the best parts about this place? When they say hung like a horse around here, they really aren[apostrophe]t kidding!' Fancy says with a snicker.[or]'It[apostrophe]s good to have a nice safe stall to sleep in here while things go to hell out there, you should try it yourself sometime.'[or]'Enjoying the Stables so far?'[at random]";





Instead of fucking the Fancy:
	if lastFancyfucked - turns is less than 6:
		say "'";
		stop the action;
	if fancyaroused is 1:
		say "'Hmm that sounds like an interesting proposition,' The white mare says with a teasing grin as she looks you up and down appraisingly, 'But as you can see from all the mares and stallions around this place, I certainly am not lacking for sex anytime I feel the need for some 'action' so to speak.' Fancy says with a soft chuckle as she runs one of her hoof tipped hands through her mane of silvery hair absently, her chest heaving interestingly as she does. 'Though I might be interested in having a more, long term companion around... And given the help you gave Onyx and daisy in deciding to be proper members of the stables, I think you might have the right mindset to help me out with this place. If you would be interested in staying around a while that is....' She says with an equine grin as she looks at you and waits for your response.";
		if player consents:
			say "'Well thats a wonderful offer and I would love to take you up on it actually, but as you can see the author is lazy and hasn[apostrophe]t fnished this increasingly smexy side quest, so you will just have to enjoy helping me patch the place up until they do.' The mare says with a teasing smile as she goes back to what she was working on.";
		otherwise:
			now fancyaroused is 5;
			say "That[apostrophe]s just too bad then, but seeing as I have all these delicious equines to choose from for casual fun, I think I will just have to decline your offer for now.' Fancy says with a slightly dismissive shrug of her large shoulders.";
	otherwise:
		say "'Sorry, there friend, but I think we should keep things professional between us, for now anyways.' The sexy white mare says with a teasing wink, 'Maybe after we get to know each other better, we can really 'Get to know each other,' but until that happens...' She shrugs softly, and gives you an equine grin as she leans back on her stool, her long equine tail swishing across the ground absently behind her."; 













[Fancyquest-
	Male dominant, must have turned onyx female in the stables or outside.
	She will want you to take out several key players around the stables... since the 'master' hasn[apostrophe]t been listening to her much lately, and she thinks you might have what it takes to become a better 'master'. And will provide you with several stolen drinks that supposedly helped the 'master' gain power. (TF items a la nermine.)
	Female- even if you havent messed with onyx, she needs a number of items from around town to help fix the area up, and she thinks you could be the one to collect them, which will turn you into a slutty sexy female mare over time, and guarantee you a prime spot in the stables as her slutty lover, guard, and collector.]




Section 2- Nightmare vial

nightmaretf is a number that varies.

Table of Game Objects (continued)
name	desc	weight	object
"nightmare vial"	 "a small vial of some strange whitish liquid, though flashes of red and black can be glimpsed inside the swirling vial"	1	 nightmare vial

nightmare vial is a grab object. It is part of the player. Understand "Vial" and "Nightmare" as nightmare vial. 

The usedesc of nightmare vial is "[nightmaremagic].";

To say nightmaremagic:
	if jackalmantf is greater than 0:
		say "For some reason your body seems to fight with itself for a minute as you ingest the vial of strange liquid, and you get flashes of dark images and strange places in your eyes as your body convulses helplessly. Eventually though the tremors fade, and you lie there panting on the ground for several minutes before you are able to move again, though looking yourself over you can[apostrophe]t see that the strange vial of liquid changed any of your nice and sexy jackal like features...";
		stop the action;
	if jackalboytf is greater than 0:
		now jackalboytf is 5;
		say "You feel strange as the liquid runs down your throat, feeling strangely more dominant and less like a good little jackal slut as the changes begin to run through your body.";
	if nightmaretf is 0:
		say ".[line break]";
		now tailname of player is "Nightmare";
		now tail of player is "You have a long sexy shimmering equine tail swaying teasingly behind you, its silken black and deep red coloured strands seeming to catch and bend the light slightly around themselves until they almost appear to burn with an inner dark fire with every step you take.";
		increase dexterity of player by 5;
		say "your dexterity has increased by 5!";
		now fancyquest is 7;
		now nightmaretf is 1;
		stop the action;
	if nightmaretf is 1:
		say "[line break]";
		now skin of player is "[one of]dark black[or]sleek black furred[or]jackal furred[at random]";
		now skinname  of player is "jackalman";
		increase charisma of player by 3;
		say "your charisma has increased by 3![line break]";
		increase stamina of player by 3;
		say "your stamina has increased by 3!";
		now fancyquest is 10;
		now nightmaretf is 2;
		stop the action;
	if nightmaretf is 2:
		Say ".[line break]"; 
		now facename of player is "jackalman";
		now face of player is ".";
		now fancyquest is 13;
		increase charisma of player by 4;
		say "your charisma has increased by 4!";
		increase perception of player by 4;
		say "your perception has increased by 4!";
		now jackalmantf is 3;
		stop the action;
	if nightmaretf is 3:
		say "Pulling the small golden ankh the jackal man gave you out of your pack, you feel an eager grin spreading across your black and gold muzzle, realizing that this ankh will surely be the final one needed to complete your transformation into a complete Jackal. The strange enticing scent from the ankh fills your muzzle as you begin to rub the golden charm softly, enjoying the feel of the soft metal warming up and melting into you yet again. Soon the warmth from the ankh spreads from your hands throughout your body, as the changes begin to take place, with your hands changing first as the tips of your fingers lengthen and become claw tipped, while your palms grow tougher and more like proper pads. Your attention is soon diverted from your hands, as the warm sensation spreads throughout your entire body feeling like a series of soft massaging hands as they reshape your body, causing your muscles to shift and change under the skin becoming more powerful as they pull tight across your body. Your changing muscles giving your body  a slightly more bestial look as your the changes move down your legs, your joints cracking as your legs shift and change. Your heels are pulled upwards and off the ground as your ankles move higher up on your legs, your feet seeming to stretch forward as new claws push out of your new jackal like paws. [line break]";
		say "The changes finally finished, you look down at yourself as the warm pleasant sensation finally fades, a grin stretching over your muzzle as you realize that your body seems to have become both lean and powerful now, your whipcord like muscles rippling over your new beastman like body with every movement. You stretch yourself out, shaking the kinks out of your new muscles, enjoying the feel of a powerful predatory body built for speed and strength both in and out of combat.  You notice thin tracings of gold patterns adorn the fur of your body now as well as your face, accentuating your well toned look, stretching again, you enjoy how natural and proper your new form feels on you. The thought of Nermine crosses your mind as you admire yourself, and you can hardly wait to see just what the lovely jackal shopkeeper thinks about your new form as well. A grin crosses your muzzle as you wonder if what the jackal man said about your 'irresistible' new attraction is true, and you find yourself growing aroused at the very thought of the proper little jackal woman panting and begging you for more. You decide you will have to investigate that possibility at some point soon, as you stretch out your new more canine legs, before heading out into the city again with confidence.";
		now bodyname of player is "jackalman";
		now body of player is "strong and powerful, nicely muscled with bestial digigrade legs and jackal like feet, your hands ending in sharp jackal like claws.  Your tough body displays your feral power for all to see, and is a perfect type of body for such a powerful jackal man like yourself..";
		now cockname of player is "jackalman";
		now cock of player is "[one of]canine[or]jackalman[or]jackal-like[or]knotted[at random]";
		increase strength of player by 4;
		say "your Strength has increased by 4!";
		increase dexterity of player by 2;
		say "your dexterity has increased by 2!";
		now jackalmantf is 4;
	


An everyturn rule:
	if nightmaretf is 1:
		if tailname of player is not "Nightmare":
			say "Your spine cracks and shifts, and your rear shifts and changes slightly as your lovely red and black equine tail once more grows out of your rear, its soft sexy strands feel rather comforting as they overwhelm your more recent infection.";
			now tailname of player is "Nightmare";
			now tail of player is "You have a long sexy shimmering equine tail swaying teasingly behind you, its silken black and deep red coloured strands seeming to catch and bend the light slightly around themselves until they almost appear to burn with an inner dark fire with every step you take.";
	if nightmaretf is 2:
		if tailname of player is not "jackalman":
			say "Your ass tingles as it shifts and changes while you watch, a pleasant sensation stealing over you as the power of the ankh you used returns your body to a proper form, your jackal like tail reforming behind you.  Its sleek dark presence behind you proving that its power is stronger then your more recent infection .";
			now tailname of player is "jackalman";
			now tail of player is "You have a long sleek jackal[apostrophe]s tail attached to your rear, it seems to sway happily over your thickly muscled ass in a predatory manner as you move.";
		if skinname of player is not "jackalman":
			say "Your skin seems to writhe and twitch, as if something were fighting underneath the surface, soon you can see patches of silky soft black jackal fur once more pushing their way out of your body.  The fur continues to spread in a pleasurable wave as the other infection is conquered, until finally your entire body is covered in its dark softness once again.";
			now skinname of player is "jackalman";
			now skin of player is "[one of]dark black[or]sleek black furred[or]jackal furred[at random]";
	if nightmaretf is 3:
		if tailname of player is not "jackalman":
			say "Your ass tingles as it shifts and changes while you watch, a pleasant sensation stealing over you as the power of the ankh you used returns your body to a proper form, your jackal like tail reforming behind you.  Its sleek dark presence behind you proving that its power is stronger then your more recent infection.";
			now tailname of player is "jackalman";
			now tail of player is "You have a long sleek jackal[apostrophe]s tail attached to your rear, it seems to sway happily over your thickly muscled ass in a predatory manner as you move.";
		if facename of player is not "jackalman":
			say "You feel a strange discontent building in your head, as your face seems to burn and flex, its external form not matching that of your internal jackal, causing you to snap and snarl even as the bones in you face begin to shift and stretch again, and you let out a loud howl of triumphant pleasure as your face reshape itself back into a proper jackals visage, your grin once more stretching your muzzle as your gold dusted black fur settles in once more over your handsome jackals countenance.";
			Now facename of player is "jackalman";
			now face of player is "narrow canine face, with a long sleek muzzle and a nicely flattened forehead, your face is painted with a soft shimmering pattern of golden dust, accentuating your deep golden eyes. Your appearance seeming both predatory, and strangely sexy at the same time.";
		if skinname of player is not "jackalman":
			say "Your skin seems to writhe and twitch, as if something were fighting underneath the surface, soon you can see patches of silky soft black jackal fur once more pushing their way out of your body.  The fur continues to spread in a pleasurable wave as the other infection is conquered, until finally your entire body is covered in its dark softness once again.";
			now skinname of player is "jackalman";
			now skin of player is "[one of]dark black[or]sleek black furred[or]jackal furred[at random]";
	if nightmaretf is 4:
		if tailname of player is not "jackalman":
			say "Your ass tingles as it shifts and changes while you watch, a pleasant sensation stealing over you as the power of the ankh you used returns your body to a proper form, your jackal like tail reforming behind you.  Its sleek dark presence behind you proving that its power is stronger then your more recent infection .";
			now tailname of player is "jackalman";
			now tail of player is "You have a long sleek jackal[apostrophe]s tail attached to your rear, it seems to sway happily over your thickly muscled ass in a predatory manner as you move.";
		if facename of player is not "jackalman":
			say "You feel a strange discontent building in your head, as your face seems to burn and flex, its external form not matching that of your internal jackal, causing you to snap and snarl even as the bones in you face begin to shift and stretch again, and you let out a loud howl of triumphant pleasure as your face reshape itself back into a proper jackals visage, your grin once more stretching your muzzle as your gold dusted black fur settles in once more over your handsome jackal countenance.";
			Now facename of player is "jackalman";
			now face of player is "narrow canine face, with a long sleek muzzle and a nicely flattened forehead, your face is painted with a soft shimmering pattern of golden dust, accentuating your deep golden eyes. Your appearance seeming both predatory, and strangely sexy at the same time.";
		if skinname of player is not "jackalman":
			say "Your skin seems to writhe and twitch, as if something were fighting underneath the surface, soon you can see patches of silky soft black jackal fur once more pushing their way out of your body.  The fur continues to spread in a pleasurable wave as the other infection is conquered, until finally your entire body is covered in its dark softness once again.";
			now skinname of player is "jackalman";
			now skin of player is "[one of]dark black[or]sleek black furred[or]jackal furred[at random]";
		if bodyname of player is not "jackalman":
			say "Your body seems to twist and warp, your muscles heating up again as your body fights the outside infection. Soon enough you can feel your form twisting and warping back into the proper and powerful shape of a predatory jackal.";
			now bodyname of player is "jackalman";
			now body of player is "strong and powerful, nicely muscled with bestial digigrade legs and jackal like feet, your hands ending in sharp jackal like claws.  Your tough body displays your feral power for all to see, and is a perfect type of body for such a powerful jackal man like yourself..";
		if cockname of player is not "jackalman":
			now cockname of player is "jackalman";
			now cock of player is "[one of]canine[or]jackalman[or]jackal-like[or]knotted[at random]";





Fancy ends here.


