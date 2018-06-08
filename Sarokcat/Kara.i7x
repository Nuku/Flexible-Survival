Version 2 of Kara by Sarokcat begins here.
[Version 2 - Improved dialog]

"Adds an NPC to Flexible Survival with a variety of responses and goals..."

section 1- Kara

karahbtalk is a truth state that varies. karahbtalk is normally false.

Kara is a woman.[or woman]
The description of Kara is "The sexy looking hyena herm you rescued seems to have found a leather jacket somewhere, and a pair of leather boots she has obviously had to customize to fit her new hyena paws. Her mobile hyena ears have a small array of silver and gold hoops and studs in them, and she has several smaller piercings spaced rather sexily across her muzzle. Her soft hyena patterned fur also has several visible designs in it along the arms and her thighs, the ink of her tattoos seeming to have coloured the hyena fur as it grew in. Catching you looking at her, the new hyena herm eyes you back curiously, and with not a little bit of lust..".
The conversation of Kara is { "Yip!" }.

the scent of Kara is "Kara smells like an aroused hyena herm.".

the linkaction of Kara is "Possible Actions: [link]talk[as]talk Kara[end link], [link]smell[as]smell Kara[end link], [link]fuck[as]fuck Kara[end link][if HP of Kara > 0], [link]tattoo me[end link], [link]pierce me[end link][end if][line break]";


instead of conversing the Kara:
	if HP of Kara is 0:[first time you encounter the NPC text]
		say "'Hey again!' Kara says with a happy grin on her hyenalike muzzle, her enticing sexual aroma filling the air and distracting you slightly even as she rubs her body up against yours teasingly. 'It looks like my favorite rescuer came back to check on me, though as you can see I am doing fine so far,' she says as she gestures at the shop. 'I even have gotten some of the machinery back up and running on generator power now that I have supplies, so I can ink and pierce again,' the hyena herm says with a fond smile on her predatory muzzle as she traces one of the designs on the wall with her claw lovingly. 'I really owe you for your help too, so once I get a few more things together I hope you will let me give you a tattoo on the house,' Kara says with a smile, 'Not a piercing though... well not yet, I only have a small supply of those, and I kinda promised most of them to the rest of the hyena gang... maybe if you joined we could have some real fun and get you pierced up nice and sexy though,' she says with a dreamy smile on her muzzle as she traces her claw down your chest, obviously picturing you as a sexy herm hyena as she strokes her cock happily with her other hand and moans. She seems to catch herself and pulls back a bit and seems slightly embarrassed by her reaction as she shrugs and looks away for a minute. 'Well anyways, if you need anything like that, you be sure to come back and talk to me anytime ok? Or just stop in if you are in the neighborhood, I would love to hear more about how Harold is doing and what's going on out in the city,' she says as she looks back at you with a sexy grin on her muzzle even as the light twinkles off her piercings, giving the hyena tattooist a rather exotic look as she stares at you happily.";
		increase HP of Kara by 1;
	else if matriarchowned is 1:
		if a random chance of 1 in 2 succeeds:
			if bodyname of player is "Herm Hyena":
				say "[one of]Kara looks up at you for a moment before blinking and bowing submissively to her matriarch.[or]'Ah Matriarch, what can I help you with mistress?' the pierced hyena says with a sly wink as she presents her obviously aroused body for your appraisal.[or]'Hello matriarch, have you come to get a piercing from your loyal subject?'[or]'I almost didn't recognize you, matriarch. What brings you here?'[or]'Wow, something about you just seems so... masterful, it makes me feel so very... slutty...'[or]'Oh! Good to see you Matriarch, come for a tattoo? I have several fun ones.'[or]'Have you talked to Harold lately? He could be a useful source of information for the gang if used properly.'[or]'Be careful in this corner of the city sexy one, the rest of the gang hasn't managed to get much of a foothold in this district yet.'[at random]";
			else:
				say "[one of]Kara seems dismayed at your current appearance. 'Oh, my matriarch! You should take care of that sexy hyena body of yours better[if tatsave is not 1]. Perhaps you'd allow me the honour of providing you with a suitable tattoo to help with that[end if].'[or]'Oh, Matriarch! It is such a joy to have you here, but I'm sad to not see your great hyena beauty.'[or]'May I perhaps supply you with some piercings to enhance this less than ideal form you currently wear?' she asks with a mix of eagerness and trepidation.[or]'Have you talked to Harold lately? He could be a useful source of information for the gang if used properly.'[or]'Be careful in this corner of the city sexy one, the rest of the gang hasn't managed to get much of a foothold in this district yet.'[at random]";
		else:
			say "[karagentalk]";
	else if matriarchdefeated is 1 and bodyname of player is "Herm Hyena":
		if a random chance of 1 in 2 succeeds:
			say "[one of]'Hey another gang member, good ta see ya.'[or]Kara looks you over for a minute, before dismissing you as just another submissive gang member like her.[or]'Be careful around this area, not many hyenas around for support if ya get in trouble.'[or]'Seen any sign of the military lately? Wonder what's going on out there.'[or]'Welcome back to the shop, did ya need a tattoo or a piercing?'[or]'Heard you challenged the matriarch, not the smartest hyena in the pack are ya? Or maybe ya just wanted to feel what a real dominant was like on top of you?' Kara says with a raised eyebrow and a wink.[or]'Of all the creatures out there I could have ended up as, I never thought I'd end up as a sexy little hyena! Or that I would enjoy being one this much.'[or]'Ever just wonder what it would be like to give in, put on a collar and stop trying to pretend to be dominant? Just let someone else make all the hard decisions while you be a good little slut... I've thought about it a lot lately...'[or]'Heard anything from Harold lately? Wish we could find a way to get him in the gang too, he'd make a lovely pet don't you think?'[at random]";
		else:
			say "[karagentalk]";
	else if matriarchdefeated is 2:
		if karahbtalk is false:
			say "Kara grins at you as you try to talk to her, 'Oh look, the lovely little slutpet is trying to talk to me normally, has the sexy little breeding pet managed to forget its place already?' she asks curiously as a broad hungry grin spreads across her muzzle, 'Maybe I should show you what it means to be a proper pet again? You'd like that wouldn't you? You like being helplessly dominated underneath a real hyena, while they have their way with your submissive little body...' The hyena herm pants out lustfully as she runs her pawed hands over your body teasingly. The feel of her rough hyena fur as it brushes up against your sensitive body making you shudder slightly with arousal, even as her teasing words and voice remind you of how wonderful it felt to give in to your instincts and submit before the full gang of hyenas. 'Oh yes,' the more dominant hyena says in a low amused voice as she looks over your aroused form, 'now that's the look of a good little slutpet now. Ready and eager for the taking, maybe I should give you a few obedience lessons in how to be a good little pet... wouldn't you like that little slut?' Kara asks you teasingly, her hyena muzzle just inches away from your ear as she continues to whisper naughty suggestions to you for several minutes, causing your brain to nearly shut down from overwhelming arousal. Eventually she grins and stands back, leaving you panting and only half aware of what's going on as she smirks at you. 'Remember now, if you want me to show you how to be a proper little pet, all you need to do is ask,' she says as she throws one last teasing wink your way, before turning back to reorganizing her shops stock, leaving your needy body standing there begging to be used like a proper pets should be...";
			infect "Herm Hyena";
			now karahbtalk is true;
		else if a random chance of 1 in 2 succeeds:
			if bodyname of player is "Herm Hyena":
				say "[one of]'How are you enjoying being a gang slut?' she asks while running her paws over you. 'Getting to be used by all those strong, dominant hyenas.'[or]'The matriarch was right about you being a needy bitch slut deep down,' she says while grinding her cock against your thigh, causing you to moan loudly.[or]'I like you like this. This way, even a lowly gang sub like me can get a chance to have some fun with a needy gang bitch,' she says while groping you. This causes you to shiver and moan in response, much to her delight.'[or]'Getting fucked and bred by the gang's members all the time. Mmm... I must say, I find that rather tempting.'[or]'Have you talked to Harold lately? Perhaps a slutty gang bitch like you could tempt some info out of him. And even if not, I'm sure he'd enjoy fucking that fine ass of yours like everyone else does,' she rumbles in your ear while squeezing your behind, forcing you to stifle a needy moan.[or]'Be careful in this corner of the city. The rest of the gang hasn't managed to get much of a foothold in this district yet, so a tempting slut like you could get into a lot of trouble quickly.'[at random]";
			else:
				say "[one of]'What are you doing out of uniform, little slut? I know it's in your nature to submit and get fucked all the time, but you're also gang property now.'[or]'[if tatsave is not 1]If you're having trouble keeping your proper hyena form because you're such a submissive slut, you should have me tattoo something to help remind you of who you belong to[else]That tattoo of yours should be able to act as a reminder of who you belong to so you can stay a good bitch for the gang[end if].'[or]'Perhaps we could have some fun later and we can see if I can get you looking more like the hyena bitch you really are.'[or]'It's nice that you've turned out to be a slut for the hyena gang. This way even a lowly gang sub like me gets an opportunity to use a needy gang bitch.'[or]'Have you talked to Harold lately? Normally I'd not encourage a gang bitch to fraternize outside of the gang, but he's a friend and you might be able to show him what rewards the hyena gang can offer someone of his resourcefulness.'[or]'Be careful in this corner of the city. Gang presence is low here and a tempting slut such as yourself might get into more trouble than just losing your hyena spots.'[at random]";
		else:
			say "[karagentalk]";
	else if hyg is 4 and bodyname of player is "Herm Hyena":
		if a random chance of 1 in 2 succeeds:
			say "[one of]'Oh, thank you for stopping by at my parlour,' she says with submissive deference to you.[or]'I'm always happy to serve the powerful hyena gang.' From the way she said 'serve', you're quite certain she's hoping for more than just your patronage to her shop.[or]'Be careful around this area, not many hyenas around for support if ya get in trouble.'[or]'Seen any sign of the military lately? Wonder what's going on out there.'[or]'Welcome back to the shop, did ya need a tattoo or a piercing?'[or]'Of all the creatures out there I could have ended up as, I never thought I'd end up as a sexy little hyena! Or that I would enjoy being one this much.'[or]'This place is one of the few spots around here that the gang has any influence.'[or]'Heard anything from Harold lately? Wish we could find a way to get him in the gang too, he'd make a lovely pet don't you think?'[at random]";
		else:
			say "[karagentalk]";
	else if bodyname of player is "Herm Hyena":
		if a random chance of 1 in 2 succeeds:
			say "[one of]'Say, you make for a pretty sexy hyena yourself, hon.'[or]'With a look like that, you should consider joining the hyena gang.'[or]'We hyenas are getting organized. If you want to be on the winning team, go looking for the gang signs.'[or]'Times are changing and we hyenas are the only ones strong enough to take over and sexy enough to deserve to do it. If you join up and play your cards right, you might even manage a good position for yourself.'[or]'Things are falling apart and soon it's going to come down to people fighting to grab everything they can get. We hyenas are naturally hunters and scavengers, so we've just realized this faster than most. So we're ganging up to make sure that we are ready to take over and end up on top.'[or]'Seen any sexy bikers lately? Be sure to invite them to stop by if you do!'[or]'How's Harold doing now?'[or]'I think I am comfortable staying at the shop, besides you never know when some other hyenas might stop by for some fun...' she says with a soft hyena laugh as she rubs her new body happily.[or]'If you need a tattoo I might be able to help you out with that a bit later. Piercings are a bit trickier though.'[or]'Sorry about the mess in the shop, not really set up to help anyone out yet, though maybe I will be able to soon.'[or]'You should show Harold just how sexy a hyena can be.'[at random]";
		else:
			say "[karagentalk]";
	else if HP of Kara is 1:	[Normal short messages the NPC will say each time you talk to them]
		if a random chance of 1 in 5 succeeds:
			say "[if hyg is not 4]'If ya want to find the gang, just go looking for their gang signs around town, and then they will find you,' she says with a grin.[else]'It's nice to have you in the gang with us. That way it feels like I've got a friend in there with me. Not that the gang hasn't been really [']friendly['] with me, but you know what I mean.'[end if]";
		else:
			say "[karagentalk]";


to say karagentalk:	[generalized conversation stuff]
	say "[one of]'You know, I think I am gonna like this whole hyena thing.'[or]'Never belonged to a gang before, this one just... seems right though.'[or]'I saw a lot of crazy stuff while I was out there getting supplies, I feel pretty lucky that I ran across those bikers when I did, it could have been a lot worse... and they give an awesome ride too,' Kara says with a lewd grin and wink.[or]'I swear I saw a wandering cock out there... just a giant cock. Creepiest thing ever... well except maybe politics...'[or]'Seen any sexy bikers lately? Be sure to invite them to stop by if you do!'[or]'How's Harold doing now?'[or]'I think I am comfortable staying at the shop, besides you never know when some hyenas might stop by for some fun...' she says with a soft hyena laugh as she rubs her new body happily.[or]'Never really thought of hyenas as sexy before, but damn I rock this look.'[or]'If you need a tattoo I might be able to help you out with that a bit later. Piercings are a bit trickier though.'[or]'Sorry about the mess in the shop, not really set up to help anyone out yet, though maybe I will be able to soon.'[or]'You should invite Harold to stop by sometime and maybe bring some friends. I can invite some gang members... and we could have a LOT of fun, you know?'[at random]";


the fuckscene of kara is "[sexwithkara]".

to say sexwithkara:
	if HP of Kara is 0:
		say "You might want to talk to her before rushing into that.";
	else if lastfuck of Kara - turns < 6:
		say "'Hey, I can only do so much so fast. If you are that eager, maybe you should invite some of the other gang members over and we could have some real fun, or stop by the hideout to visit them,' Kara says with a smile as she rubs her clawed hand over your [skin of player] skin teasingly, her touch making you shudder with arousal as your mind fills with images of sexy, slutty hyena sex.";
[	else if matriarchowned is 1:
		say "(---  Content currently incomplete. No sex for you. :(  ---)";
		now lastfuck of Kara is turns;
	else if matriarchdefeated is 1:
		say "(---  Content currently incomplete. No sex for you. :(  ---)";
		now lastfuck of Kara is turns;
	else if matriarchdefeated is 2:
		say "(---  Content currently incomplete. No sex for you. :(  ---)";
		now lastfuck of Kara is turns;									]
	else if bodyname of player is "Herm Hyena":
		say "[karasex1]";
		infect "Herm Hyena";
		now lastfuck of Kara is turns;
[	else if player is submissive:
		say "(---  Content currently incomplete. No sex for you. :(  ---)";
		infect "Herm Hyena";
		now lastfuck of Kara is turns;									]
	else:
		say "'Sorry, but I kind of was hoping for another hyena, if you know what I mean,' Kara says with a feral grin as she sizes you up. 'Ever since those wonderful sexy bikers, I haven't been able to think about much else. Especially so since I am part of the [']gang['] now too,' she says with a shake of her head. 'Though if you were to join the gang as well... well just think how much fun we could have...' the slutty hyena herm says teasingly. She runs her clawed hand over your body and then plants a deep lusty kiss right on your mouth, her sharp teeth rubbing up against yours as her taste fills your mouth. Her tongue teases your own for a minute, before she breaks the kiss and backs off for a second, leaving you panting with arousal as she shoots you a wink. 'Think about it anyways...' she says as she goes back to what she was doing.";

to say karasex1:
	setmonster "Herm Hyena";
	if cocks of player > 0:
		say "     Putting a paw on the hyena girl's hip, you pull her close. With a soft growl of lust, you grab her breast and kiss her. She moans at this rough treatment and spreads her lips, inviting your tongue into her muzzle. Your tongue wrestles with hers even as you pull her leather jacket off her shoulders and push her down onto the padded table while grabbing her ass firmly. You spread her legs and take hold of her piercing-studded cock with one hand and her pussy with the other, pumping at her shaft and sinking a pair of fingers into her cunt. You moans and yips with lustful need, her black cock dribbling precum and her pussy sopping wet.";
		say "     Feeling that she's ready to go now, you get your cock lined up with her hot, wet hole and thrust into her hard. She grips the edge of the padded seat and arches her back, crying out for you to fuck her hard. Grinning, you do just that, thrusting hard enough to make the heavy table scrape a few inches back over the course of the pounding you give her. As you feel yourself about to cum, [one of]you grab her cock again and pump at it wildly, getting her to spray her seed across her face and tits as you fill her with your [cum load size of player] load[or]you grab her head roughly and push her muzzle down over her own cock, making her suck herself off as you fill her with your [cum load size of player] load[or]you pull out suddenly, making her whimper in disappointment. She begs for you to finish her off and you relent, thrust hard back into her so you can fill her with your [cum load size of player] load[or]you pull out suddenly, making her whimper in disappointment. You press your cock, slick with her juices against her own and start pumping the both of them together. You end up sending your [cum load size of player] load as well as hers to leave a sticky mess all across her face and breasts[at random]. When you're done, you wipe your cock against her thigh and leave her there, sticky and reeking of sex.";
	else:
		say "     Putting a paw on the hyena girl's hip, you pull her close. With a soft growl of lust, you grab her breast and kiss her. She moans at this rough treatment and spreads her lips, inviting your tongue into her muzzle. Your tongue wrestles with hers even as you pull her leather jacket off her shoulders and push her down onto the tattooing chair. You grab her black cock and, while plunging a pair of fingers into her pussy, pump at her pre-dribbling shaft.";
		say "     Feeling that she's ready to go now, you climb into the chair atop her, lining up your pussy with her pulsing cock and sinking down onto it. She moans and yips with lustful need, rocking her hips up to thrust into you even as you ride her hard and fast. You grope and squeeze her breasts, pinching her pierced nipples[if breasts of player > 0 and breast size of player > 0] while her studded tongue laps across yours[end if]. Her pulsing, piercing-studded rod feels wonderful inside you, adding extra stimulation to the already wonderful pleasure a hyena cock can bring. It's good to have a sexy, submissive hyena to use as you'd like - a welcome change from her much more arrogant brethren. Pushing down hard, you force her knot into you [if cunt width of player < 4]with some discomfort[else if cunt width of player < 7]with a little difficulty[else]easily enough[end if] and clamp down tightly around it. This is enough to send Kara over the edge, pumping her hot load into you and you ride her until she's drained. Once her knot's gone down enough, you pull free and leave her there, panting and reeking of sex.[impregchance]";


Tattooplayer is an action applying to nothing.

understand "Tattoo me" as Tattooplayer.
understand "get Tattoo" as Tattooplayer.

check Tattooplayer:
	if Kara is not visible, say "There is a little more to getting a tattoo than drawing pictures on your body and poking yourself with a sharp pointy object, though you can feel free to do that to yourself if you want, but if you actually want a real tattoo you will need to find someone who knows how to make one." instead;

tatstatus is a number that varies.
tatsave is a number that varies.

carry out Tattooplayer:
	If tatstatus is 0:
		say "'Ah hey, ready for some ink? This could be fun!' Kara says with a rather feral grin as she pulls out some sort of needle gun and practically drags you over to one of the working chairs and strapping you in before you can protest. 'Now then, let's see, there are a lot of different designs we could put on that wonderful body of yours... and I have had some amusing ideas about ways to make the tattoos more effective too...' yhe brightly coloured hyena says with a grin as she pats her jars of ink fondly, before examining her canvas carefully. 'Let's see now, how about I try to guess what would go best on you... How about a hyena tattoo, currently a personal favorite?' the hyena says with a carnivores smile as she looks down at you with amusement, waiting for your response.";
		if player consents:
			say "'Excellent!' Kara exclaims happily as she claps her paws together in glee, her smile growing even wider as she leans over your helpless body eagerly. 'Good to see someone with taste in here for once!' the hyena herm says with a happy sigh as she leans over your prone body with the needle gun, before setting the gun down for a second with a grin. 'Actually wait right here, a special tattoo like this needs a [']special['] additive as well, I'll be right back with it,' she says as a rather wicked look spreads across her predatory muzzle, before grabbing some of her ink and disappearing into the back room, leaving you strapped down to the chair helplessly. You think you hear some muffled moans coming from the bathroom in back, but can't quite make out anything more, fortunately enough though, Kara is back after only a few minutes, though her fur seems strangely disheveled and she can't seem to stop grinning as she settles back down next to you. 'Sorry about that, just had to get a little special binder for the ink, should make things much more interesting now...' the hyena herm says with a rather self satisfied smirk on her muzzle as she loads up the needlegun and goes to work on your body before you can respond.[line break]";
			say "After what seems like several hours of having your skin pierced without rest, Kara eventually sighs slightly and steps back, putting the needle gun down as she looks over her work with a tired grin. 'There we go now, one sexy Hyena tattoo for my rescuer, with a little bit of my own personal special hyena additive,' she says with a grin as she runs her claw over your new tattoo teasingly. 'Trust me, it should definitely help you get in touch with your inner hyena from now on,' Kara says with a teasing wink as she lets you up to admire your new rather lifelike tattoo.";
			infect "Herm Hyena";
			add "Hyena Tattoo" to feats of player;
			now tatstatus is 1;
			now tatsave is 1;
		else:
			say "'No? Well I suppose not everyone has learned to appreciate hyenas like I have. Too bad though,' she says with a sad shake of her head. 'I had a great idea for some [']additive['] for that tattoo... Still, how about a strong and powerful dragon tattoo? Always popular!' Kara says with a nod of her head at several large stylized pieces of dragon art positioned around the room.";
			if player consents:
				say "'Hah, I knew it! Everyone always wants a dragon tattoo,' the hyena woman says with a slight smirk as she prepares the inks for application. 'Though I might have a few ideas on how to spice the tattoo up a bit... Amazing the inspiration you can find in the middle of a strange situation...' Kara says with a slight chuckle that makes you slightly nervous for a minute. Before you can protest however she pounces on you and you are forced to hold still and grit your teeth as the needles begin to pierce your skin...";
				say "After what seems like several hours of having your skin pierced without rest, Kara eventually sighs slightly and steps back, putting the needle gun down as she looks over her work with a tired grin. 'There we go now, one sexy little tattoo for my rescuer, I even used some special additives I found while I was out and about, nothing but the best for my sexy little hero eh?' the hyena herm says with a teasing wink as she lets you up to admire your new rather lifelike tattoo.[line break]";
				say "[bold type]Your strength has increased by 2![roman type][line break]";
				add "Dragon Tattoo" to feats of player;
				now tatstatus is 1;
				now tatsave is 2;
				increase strength of player by 2;
				increase capacity of player by 10;
			else:
				say "'No? Not a dragon person either, well I can't really blame you there, I have always preferred cats myself, or at least I used to...' Kara sighs slightly as a soft smile teases at her muzzle 'I never realized before just how sexy it could be to get pounded by a bunch of sexy studly hyenas... are you sure you don't want the hyena tattoo? No? Ah well then, how about a lithe and powerful hunting cat?' she asks with amusement as she gestures with one pawlike hand at some of the flash around the room depicting various hunting cats in stalking poses.";
				if player consents:
					say "'Ah a cat it is! Not as sexy as a lovely slutty hyena perhaps, but probably the next best thing,' Kara says with some amusement as she grins down at your prone form for a second. 'So lithe and flexible, mmm yes, and you have to wonder what that raspy tongue would feel like on fur...' She moans with arousal for a second, as one of her paw like hands strokes over her soft hyena like fur for a minute. 'So hot and sexy, I bet you would love to pet a little pussy now wouldn't you? Or maybe you want to be petted? Either way I have the most wonderful idea for your tattoo,' the lust-filled hyena says with a rather disturbing grin as she goes to work on your body[line break].";
					say "After what seems like several hours of having your skin pierced without rest, Kara eventually sighs slightly and steps back, putting the needle gun down as she looks over her work with a tired grin. 'There we go now, one sexy little tattoo for my rescuer. I even used some special additives I found while I was out and about. Nothing but the best for my sexy little hero, eh?' the hyena herm says with a teasing wink as she lets you up to admire your new, rather lifelike tattoo.[line break]";
					say "[bold type]Your dexterity has increased by 2![roman type][line break]";
					add "Feline Tattoo" to feats of player;
					now tatstatus is 1;
					now tatsave is 3;
					increase dexterity of player by 2;
				else:
					say "'Not a cat person? How about wolves instead? A knot can feel amazing inside you, you know,' Kara says with a rather lewd grin as she strokes her knotted black hyena cock with one hand as she looks at you inquiringly, 'Good hunters too, even if they do hang out in packs, very perceptive indeed.'";
					if player consents:
						say "'Ah the call of the knot wins again! Though of course canines aren't the only ones with knots in the city now...' Kara says with a grin as she strokes her own thick black cock for a minute, your helpless body obviously exciting the hyena above you. 'Of course I can't blame you for wanting a nice sexy wolf on your body, after all, now that I have had some experience with a knot myself, I don't think I would turn down a wolf on my back either, if you know what I mean,' she says with a rather lewd wink and a slight moan as she leans over slightly on her stool as if making room for something to mount her obviously excited body. Her words bring to mind all kinds of canines and beasts on top of your body as well, though you have little enough time to think about that before the needles start to pierce your skin and the tattooing starts.[line break]";
						say "After what seems like several hours of having your skin pierced without rest, Kara eventually sighs slightly and steps back, putting the needle gun down as she looks over her work with a tired grin. 'There we go now, one sexy little tattoo for my rescuer, I even used some special additives I found while I was out and about, nothing but the best for my sexy little hero eh?' the hyena herm says with a teasing wink as she lets you up to admire your new rather lifelike tattoo.[line break]";
						say "[bold type]Your perception has increased by 2![roman type][line break]";
						add "Wolf Tattoo" to feats of player;
						now tatstatus is 1;
						now tatsave is 4;
						increase perception of player by 2;
					else:
						say "'Not up for being knotted right now? Well maybe later...' the hyena herm says with a rather smug smirk as she looks over some of the art in the shop. 'Ah I know! Maybe you are a bit more into equines! Perhaps a nice unicorn like you said Harold is? Supposed to be a great symbol of virility and stamina,' Kara says with a wink as she points at several pieces of artwork depicting surprisingly sexy unicorns positioned around the room.";
						if player consents:
							say "'Ah I knew we would find a tattoo that would be perfect for you!' Kara says with a happy smile as she prepares her inks, 'I suppose I should have guessed as much, after all, who wouldn't like a bit of extra stamina? And you are here on behalf of a unicorn as well, maybe you have a bit of a thing for him eh?' the hyena artist says with a low chuckle, as she shifts her body around to position the tattoo gun over your bound and helpless body. 'Speaking of Harold, that gives me an idea for just the sexiest little pose for your unicorn... one of his favorites as I recall, so be sure to give him a good long look at it when you stop back by the bar ok?' Kara says with a rather lewd grin and a wink before she goes to work on your body with the inks and needles.";
							say "After what seems like several hours of having your skin pierced without rest, Kara eventually sighs slightly and steps back, putting the needle gun down as she looks over her work with a tired grin. 'There we go now, one sexy little tattoo for my rescuer, I even used some special additives I ah.. acquired from some people over at the stables, nothing but the best for my sexy little hero eh?' the hyena herm says with a teasing wink as she lets you up to admire your new rather lifelike tattoo.[line break]";
							say "[bold type]Your stamina has increased by 2![roman type][line break]";
							add "Unicorn Tattoo" to feats of player;
							now tatstatus is 1;
							now tatsave is 5;
							increase stamina of player by 2;
						else:
							say "'Not feeling up to a little horseplay today? Ah well, let's see...' your hyena captor says with a speculative glance around the room as she waves the needlegun around as if eager to finally get to work. 'Well I suppose there is always a tattoo for wisdom and intelligence, birds and gryphons are good for that, and I saw some lovely blue feathered models out in the city earlier... how about it?' Kara says with a happy grin as she looks down at you hopefully.";
							if player consents:
								say "'Ah, a Gryphon person, is it?' Kara says with a lewd grin. 'I heard some of the other hyenas talking about wing size carrying over to other sizes too. Going to test it out, are you? Or maybe you already have?' the hyena tattooist says with a soft moan as she shifts around above you obviously excited by the thought, before looking down at your bound form lustily. 'I saw the sexiest model for it too the other day. Not as good as a sexy slutty hyena, of course, but then again, what is?' she asks you teasingly, not even waiting for a response as she leans over you and the needlegun goes to work on your surprisingly sensitive skin.[line break]";
								say "After what seems like several hours of having your skin pierced without rest, Kara eventually sighs slightly and steps back, putting the needle gun down as she looks over her work with a tired grin. 'There we go now, one sexy little tattoo for my rescuer. I even used some special additives I found while I was out and about. Nothing but the best for my sexy little hero, eh?' the hyena herm says with a teasing wink as she lets you up to admire your new rather lifelike tattoo.[line break]";
								say "[bold type]Your intelligence has increased by 2![roman type][line break]";
								add "Gryphon Tattoo" to feats of player;
								now tatstatus is 1;
								now tatsave is 6;
								increase intelligence of player by 2;
							else:
								say "'No? Well you must want something pretty special then. Unfortunately I'm fresh out of ideas as to what...' She looks down at you for a minute before sighing. 'And now I'm just not feeling the excitement anymore. Maybe you should come back and visit me again when you have a better idea of what you want...' the hyena herm says with a sad sigh as she undoes the straps and lets you up, before going back to stow her equipment away again, her disappointment at your lack of enthusiasm obvious.";
	else if tatstatus is 1:
		say "Hey back again? Liking your tattoo?' Kara says with a feral grin, as she glances at your brightly coloured tat, 'I mean if you want me to remove it I have the materials to do so, but the scar from doing so would mean you couldn't get another until it healed and that takes forever...' Kara shrugs slightly, before stroking some of her patterned colourful fur absently, 'So what do you say, happy with your tat? Or do you want it off?' Get your tattoo removed?";
		if player consents:
			now tatsave is 0;
			say "'Damn, that's too bad, and it looked so hot on you too,' she says with a sigh, before leading you back to a small room off to the side with some medical looking equipment. 'This is going to hurt a bit, so here ya go,' you hear Kara say from behind you, before something pricks your side and the world seems to swim out of focus before unconsciousness claims you. You eventually wake up feeling strangely groggy and achy in one of the tattoo chairs, and looking around you notice Kara absently sketching new pieces of rather hyenalike art to hang on the walls. Seeing you are awake, the new gang member gives you a toothy grin before coming over to check on you. 'Sorry about that, Always easier to do the painful stuff when the subject isn't able to scream or squirm around. Your all done now, no more tattoo for you,' she says with a soft sigh as she helps you unsteadily back to your feet. 'I'd like to say come back again for a new one sometime, but... well with the materials and the scarring from the tattoo removal, I probably won't be able to put another tattoo on you before the military come. So I guess you just have to go on being your plain old self, though maybe you could look me up if we ever get out of here and we can see about inking you up proper then,' the hyena artist says with a wink as she trails her claw over your skin teasingly, before handing you back your pack and going back to what she was doing.";
			now tatstatus is 2;
			if "Hyena Tattoo" is listed in feats of the player:
				Remove "Hyena Tattoo" from feats of the player;
			if "Dragon Tattoo" is listed in feats of the player:
				Remove "Dragon Tattoo" from feats of the player;
				decrease strength of player by 2;
				decrease capacity of player by 10;
			if "Feline Tattoo" is listed in feats of the player:
				Remove "Feline Tattoo" from feats of the player;
				decrease dexterity of player by 2;
			if "Wolf Tattoo" is listed in feats of the player:
				Remove "Wolf Tattoo" from feats of the player;
				decrease Perception of player by 2;
			if "Unicorn Tattoo" is listed in feats of the player:
				Remove "Unicorn Tattoo" from feats of the player;
				decrease stamina of player by 2;
			if "Gryphon Tattoo" is listed in feats of the player:
				Remove "Gryphon Tattoo" from feats of the player;
				decrease Intelligence of player by 2;
		else:
			say "'Thought you would be! It definitely suits you after all, and if any of those creatures out there are smart enough to ask where ya got such a sexy tat, you send em to me, especially if they are hyenas,' Kara says with a teasing wink before going back to what she was doing.";
	else if tatstatus is 2:
		say "'Hey welcome back, sorry you didn't like your tattoo earlier, but like I said, not enough material for another one, and besides your wound will take days to heal properly from getting the last one removed anyways,' Kara says with a shrug of her spotted shoulders and a lopsided grin as she looks at you sadly.";


piercingquest is a number that varies.

Pierceplayer is an action applying to nothing.

understand "Pierce me" as Pierceplayer.
understand "get piercing" as Pierceplayer.

check Pierceplayer:
	if Kara is not visible, say "There is a little more to getting a piercing than just poking holes in your body and sticking things in them, though you can feel free to do that to yourself if you want, but if you actually want a real and useful piercing, you will need to find someone who knows how to do so properly." instead;

piercestatus is a number that varies.
piercesave is a number that varies.
piercingquest is a number that varies.

carry out Pierceplayer:
	If piercestatus is 0:
		if matriarchowned is 1:
			say "'The matriarch wants a piercing? Wow... I'm honored!' the colourful pierced hyena says with a happy grin as she bobs her head at you submissively. 'I just hope I can find something special enough for someone so wonderful... Well actually I do have a few special piercings I was saving for a really special client, and it would be harder to get any more special than you after all!' Kara says eagerly as she gestures you to take a seat in her work chair while she retrieves several small boxes full of studded jewelry and rings from various spots where they were hidden in the tattoo parlor.[line break]";
			say "You settle back in the comfy chair as Kara goes to work on your majestic form, your submissive subject eagerly holding up different pieces of jewelry for your opinion before carefully piercing your ears in several places. The slight pain of the piercing as well as the enticing view of your fellow hyena's body makes the entire situation seem increasingly erotic the longer it goes on, and by the time she is attaching the last of the piercings to your muzzle, you are feeling far more dominant and hornier than ever. And the sight of Kara's lovely excited body is just too tempting to pass up as she leans over you. You feel a grin stretch your face wide as she begins to lean in to adjust some of the piercings, putting herself in the perfect position for you to give her a little 'reward' for her services. The submissive hyena gasps in surprise as she feels your hand wrap around her thick black cock, her gasps quickly turn to moans however as you give the excited member a few strokes. The look of pleasure on Kara's muzzle only encourages you a bit more as you draw in the lesser hyena for a teasing kiss, one hand stroking the light fur on her head, while the other continues to tease her privates. The lips of her muzzle are soft and sweet as you place your mouth on them, and the slight taste of metal from her pierced tongue only serves to amuse you further, though as your hand wanders downward to her clit and her damp pussy you discover her tongue isn't the only fun piercing your little hyena has for you to play with.[line break]";
			say "Grinning slightly as you break the lewd kiss, you can see Kara panting desperately in need as your hands play with her body, her own pawlike hands gripping the arms of the chair tightly as she moans with delight. A feeling of incredible power and dominance washes through you as you see how easily she submits to your touch, the sight of a fellow hyena all but begging for you to let them cum exciting you in all sorts of ways. Glancing at the nearby mirror, you are surprised for a second at the extremely dominant picture laid out before you, a sexy pierced hyena slut at the mercy of your own sexy body, with the powerful tribal style jewelry and piercings only seeming to accentuate the imagery. The effect is to make you feel very much like a conquering tribal or medieval ruler of some sort, dominating your sexy subjects... A feeling you are sure you will grow to appreciate very quickly indeed, you think with a smirk on your face as you decide to finish teasing your fellow hyena and let her finally have her reward. With both of your hands and your mouth working over her body in earnest at last, it isn't long before Kara is screaming out her pleasure to the empty studio, as she spills her seed on the floor like an offering to her new goddess before collapsing in exhaustion. Grinning with pleasure as you step away from the chair, you pause for a second to admire your new powerful look in the mirror, before continuing on your way and leaving her lying there on the floor to recover.[line break]";
			add "Matriarch Piercing" to feats of the player;
			now piercestatus is 1;
			now piercesave is 1;
			increase charisma of player by 4;
			increase maxHP of player by 30;
		else if matriarchdefeated is 1:
			Say "'Oh hey you want a piercing?' Kara says with a smug smirk on her hyena-like face, 'Yeah I can see where a little failed slut like you would want a sexy little piercing to show the world just how submissive you are... Don't worry, I am sure I can find something to show your status around here...' the more dominant hyena says with a chuckle, her attitude making you blush slightly even as arousal runs through your body at her dominant tone and posture. You find yourself not able to resist in the least as she pushes you down into her working chair, before she begins digging through the cabinet next to you eagerly. After several minutes of searching, you hear Kara let out a yip of pleasure as she pulls out a thin series of chain links, and several small ring piercings and turns to you with a large grin across her muzzle.. The sight of all the cold metal about to pierce your skin makes you shudder nervously, unsure if this is really a good idea anymore, but you aren't given a chance to protest as Kara quickly and professionally attaches a nipple ring to each of your nipples, the cold metal rubbing up against your flesh feeling surprisingly good even as she threads the small chain between them so whenever one of them moves, all the other rings tug and tease at your other breasts. You moan slightly with lust even as she moves back to admire her work and attach a couple of small tinkling bells to your nipples as well. Kara stands back and admires her work with a lusty grin, even as you struggle with yourself trying not to cry out at the pleasure that shoots through your body when she tugs on the silver chain teasingly. You moan as you try to get used to the feeling of the chain and the piercings rubbing their smooth metal against your body and groan at how very sensitive your nipples now seem to be, with every movement of your body sending out a soft ringing noise as if to advertise your readiness to anything that might be nearby. Eventually though, you manage to get control of yourself again, and she lets you up to recover from the swift piercing, although even now, you aren't sure you will ever be fully recovered from the sexy sensations, at least not as long as you have these lovely piercings in you advertising your sluttiness for all to see and hear...";
			add "Nipple Piercing" to feats of the player;
			now piercestatus is 1;
			now piercesave is 2;
		else if matriarchdefeated is 2:
			say "'Oh hey you want a piercing?' Kara says with a smug smirk on her hyena-like face, 'Yeah I can see where a little breeding slut like you would want a sexy little piercing to show the wold just how nice and submissive you are... Don't worry, I have just the thing for you...' the more dominant hyena says with a chuckle, her powerful attitude making you feel both aroused and submissive as she straps you tightly into her working chair, the tight bands of leather holding you in place only making the situation seem increasingly more erotic as she pulls out a thin series of chain links, and several small ring piercings. The sight of all the cold metal about to pierce your skin makes you shudder with excitement as Kara quickly and professionally attaches a nipple ring to each of your nipples, the cold metal feeling surprisingly good even as she threads the small chain between them so whenever one of them moves, all the other rings tug and tease at your other breasts. You pant with lust and arousal even as she moves down to do a soft piercing right at the most sensitive spot on your groin, making you gasp and writhe helplessly against your bonds, even as she connects your newest piercing to your others via another length of small chain. Kara stands back and admires her work with a lusty grin, even as you writhe in pleasure against the straps, the more dominant hyena reaching down occasionally to tug on one of the connected chains and send pleasure shooting through you all over again. Eventually though, she lets you up to recover from the swift piercing, although now that your new chained piercing is complete, you aren't sure you will ever recover fully from the constantly lustful sensations...";
			add "NippleandChain Piercing" to feats of the player;
			now piercestatus is 1;
			now piercesave is 3;
		else if bodyname of player is "Herm Hyena":
			say "'Oh hey, a fellow hyena wants a piercing? I can do that!' Kara says with a toothy grin on her muzzle as she looks you up and down speculatively. 'Well hmm, pretty much a blank canvas to work with, too. Let's see what we should do with you... Maybe something simple to start?' she says in a rather thoughtful tone as she guides you over to one of the many chairs in the tattoo parlor. 'Now just hold still, this might sting a bit...' the other hyena says with a smirk as she brandishes several shining bits of metal and some other tools and goes to work on you. The feel of the cold metal piercing your flesh makes you shudder for a minute, but the other hyena is both quick and professional, and before you can really think about the pain much, she is done and whipping you around to look at her mirror. Glancing in you see that you now have several rather handsome metal loops and chains hanging from your ears in a rather interesting almost tribal style, which give you a rather striking new look indeed.";
			add "Hyenastyle Piercings" to feats of player;
			now piercestatus is 1;
			now piercesave is 4;
			increase charisma of player by 2;
		else:
			say "'Interested in a piercing? Well honestly I kind of need to save what piercings I do have left for the rest of the gang...' Kara says with a short shrug, before looking back at you speculatively. 'Though I suppose I could work something out if you were to find me a new supply of material somewhere in town. I do owe you after all,' the pierced hyena says with a grin as she cocks her head at you in amusement, 'Though you really should consider going hyena like me, it's the greatest experience ever...'";
			now piercingquest is 1;
	else if piercestatus is 1:
		say "Oh hey, looking at piercings again? Well, to get redone properly, I would have to remove your older piercing first. Is that what you want me to do?' Kara asks you curiously. Do you get your piercing removed?";
		if player consents:
			now piercestatus is 0;
			now piercesave is 0;
			say "'Well that's your loss I suppose, though it looked so very nice on you...' she says with a soft sigh as she gets a pair of sterile metal cutters out of a drawer. 'Maybe I will have a new idea for a piercing for you for next time though,' Kara says with a hyena-like grin as she goes to work removing your piercing.";
			if "NippleandChain Piercing" is listed in feats of the player:
				Remove "NippleandChain Piercing" from feats of the player;
			if "Hyenastyle Piercings" is listed in feats of the player:
				Remove "Hyenastyle Piercings" from feats of the player;
				decrease charisma of player by 2;
			if "Nipple Piercing" is listed in feats of the player:
				Remove "Nipple Piercing" from feats of the player;
			if "Matriarch Piercing" is listed in feats of the player:
				decrease maxHP of player by 30;
				decrease charisma of player by 4;
				Remove "Matriarch Piercing" from feats of the player;
		else:
			say "'Sounds good to me!' the hyena herm says with a grin as she looks you up and down appraisingly. 'I have to admit, I think it looks damn sexy like that myself,' she says as she strokes her thick knotted hyena cock absently, the sight making your mouth water slightly...";
	else if piercingquest is 3:
		say "'Oh hey, these supplies should help a lot! Should be enough to help some of the more important gang members out, with just a little bit left over for you. What do you say, want a piercing?";


An everyturn rule:
	if "NippleandChain Piercing" is listed in feats of the player:
		if libido of player < 80:
			now libido of player is 80;
		if child is not born and gestation of child > 0:
			if a random chance of 1 in 3 succeeds:
				decrease gestation of child by 1;
		if a random number between one and 20 < 6:
			say "You feel increasingly bestial and aroused due to your sexy piercing, as your nipples and genitals are teased more and more with each step, reminding you of just what a slutty, submissive creature you really are deep down inside.";
			decrease humanity of the player by 2;
	if "Nipple Piercing" is listed in feats of the player:
		increase libido of player by 5;
		[add increase encounter chance by 1 to this piercing as well]
	if "Matriarch Piercing" is listed in feats of the player:
		If a random chance of 1 in 4 succeeds:
			increase Morale of player by 2;
			increase libido of player by 2;
	if "Hyena Tattoo" is listed in feats of the player:
		if a random chance of 1 in 4 succeeds:
			say "You feel a warm heat spread throughout your body from the strange hyena tattoo Kara gave you. You grin almost ferally, feeling both powerful and horny as increasingly hyena-like instincts and thoughts invade you heat-filled mind.";
			increase libido of player by 10;
			infect "Herm Hyena";

Instead of conversing the Nermine while piercingquest is 1:
	say "'Ah my lovely little customer wishes to find some bits of metal for piercing people with?' Nermine says with a soft smirk on her black canine muzzle. 'Well while I might have a few rather... unusual piercings lying around here somewhere. Nermine's has always focused on stocking the more exotic items instead of bulk items like your hyena friend wants,' the jackaless says with a shrug of her soft black furred shoulders as she seems to think for a minute before continuing. 'Perhaps you should try checking around town for a shop that caters to such things, or looking around under the mall itself. Nermine is sure there are plenty of interesting bits of jewelry and metal in the storerooms down there that no one has looted yet... though if you find anything interesting and unique, don't forget to let your favorite shopkeeper know,' she says with a teasing wink of her eye as she leans forward on the counter, giving you an interesting view of her cleavage for a minute before going back to what she was doing.";
	say "{This content is not yet complete - Sorry}";
	now piercingquest is 2;

Kara ends here.
