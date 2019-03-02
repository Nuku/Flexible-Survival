Version 1 of HornyHorsey by femtoAmpere begins here.
"Adds a hermaphrodite equine named Ammy to the game."
[ Version 1.1 - Minor sex scene fix ]
[  Feel free to add scenes! However, if it's very... alternative stuff, I'd greatly appreciate it if you'd ask me first if it's okay what you want to do with Ammy <3 ]
[  You can contact me at femtoAmpere289 at gmail.com ]

[ v0.21, Jan 2014 ]




[

AFFECTION TABLE
0: Never met
1: Talked once
2: Talked twice
3: Removed her bra
4: Poledance
5: Lapdance
6: Friend with benefits

]




Section 0 - Variables and Items

AmmyAffection is a number that varies.
AmmyLastEvent is a number that varies.
AmmyLastEvent usually is 666.

Table of Game Objects (continued)
name	desc	weight	object
"black bra"	"The fine black lacy bra you received from Ammy. It's made of silk and feels soft to the touch, looking rather expensive. However, the fact that the sexy equine dancer wore it makes it even more valuable to you. You can almost smell her scent emanating from the bra."	1	black bra

black bra is a grab object. It is part of the player. It is not temporary. [it is infectious.]

Instead of using black bra:
	say "     You look over the Ammy's bra. The faint scent of her on it is enticing.";

the scent of black bra is "[blackbrascent]".

to say blackbrascent:
	say "     As you smell the black lacy bra, a sweet female scent with a hint of musk invades your mind, reminding you of the equine dancer from the club...";
	if libido of player < 40:
		increase libido of player by 10;
	else if libido of player < 60:
		increase libido of player by 5;
	else if libido of player < 80:
		increase libido of player by 1;
	if libido of player > 100, now libido of player is 100;

Instead of wearing black bra:
	say "     Don't be silly - you'd rather keep it as a gift than actual clothing.";




Section 1 - Lounge and Flatlet

Table of GameRoomIDs (continued)
Object	Name
Topless Lounge	"Topless Lounge"

Topless Lounge is a room. Topless Lounge is southeast of Palomino.
The description of Topless Lounge is "     Moving through some rose-red curtains, you spot a small passage. At the end of the short hallway is an opening and a sign, reading 'Topless Lounge'. The room you enter isn't very big, pretty long but narrow. Red seats and couches around dark oval tables surround a raised stage with a dancing pole on it, some of the smaller tables even having their very own pole. Faint light radiates from candles that are stylishly placed on each of the round tables. There's not much going on here, most of the area empty. Even the small bar installed along the room is unattended, although it's still filled with some most exquisite bottles of various liquids. From behind, you can still hear the dull beat of the loud music in the main room as you move along."

the scent of Topless Lounge is "     The thick air smells of alcohol and sugar from all the sweet, colorful drinks.".

Table of GameRoomIDs (continued)
Object	Name
Ammy's Flatlet	"Ammy's Flatlet"

Ammy's Flatlet is a room. [Ammy's Flatlet is south of Topless Lounge.]
The description of Ammy's Flatlet is "     This small flatlet is pretty clean, at least compared to the rest of the Palomino. It looks like it was used as a storage room at first, but Ammy's living here now. A nice big bed in the middle of the room catches your attention the most. It looks comfortable and almost royal... well, at least compared to the usual ruins in the rest of this world. Dark red pillows and blankets on top of white sheets are complemented by a black metal frame.[line break]     There's a window with iron bars in a corner of the room through which one can look out at the streets above. There's also another door, probably leading outside, although it must have at least five different locks on it. The rest of the room is pretty spartan: a few dimmable lights, a small black counter next to the bed, a wardrobe, and an empty storage shelf visible along the concrete walls. The wooden floor creaks whenever you hear Ammy walking on it with her hooves.".

the scent of Ammy's Flatlet is "     The small room surprisingly smells not like the rest of the club at all. Its smell reminds you of rose petals with a hint of sweets, even with the lack of air circulation the air seems pretty fresh.".

'Employees Only' Door is a closed unopenable door. The 'Employees Only' Door is south of Topless Lounge and north of Ammy's Flatlet.
The description of 'Employees Only' Door is "     Hidden beyond some curtains there is a heavy wooden door with a big sign on it, reading 'Employees Only' and a heart drawn next to it with red paint or lipstick.".




Section 2 - Ammy

Table of GameCharacterIDs (continued)
object	name
Ammy	"Ammy"

Ammy is a woman. Ammy is in Topless Lounge.
The description of Ammy is "[ammy_desc]".

The conversation of Ammy is { " " }

the scent of Ammy is "[ammyscent]".

to say ammyscent:
	say "     The horny equine smells arousingly soft and sweet, yet very slightly musky.";
	increase libido of player by 5;

Instead of asking Ammy about "DEBUG":
	say "My affection now is [AmmyAffection][line break]";
	say "My last event was at [AmmyLastEvent] turns[line break]";
	say "My last sexevent was at [lastfuck of Ammy] turns![line break]";
	say "Current turns are [turns] turns";

Instead of asking Ammy about "DEBUG_INFECTME":
	say "Ammy pushes you back, you naughty little thing you!";
	ammy_infect;


Section 3 - Conversation

Instead of conversing Ammy:
	if AmmyLastEvent is not turns:
		if AmmyAffection is:
			-- 0:
				say "     As you approach her she gets up and starts talking to you. 'Hey there sweetheart, glad to see someone new around~' she says with a rather curious voice. 'You can call me Ammy, I help out at various things and dance on the pole there from time to time so I'm allowed to stay here.' You try to say something, but find yourself investigating her curves further until she laughs you off.";
				say "     'Maybe I can dance for you too?' she says teasingly. 'Nyehehee... well, maybe later~' and turns away again.";
				now AmmyAffection is 1;
				now AmmyLastEvent is turns;
			-- 1:
				say "     'Oooh, it's you again! Still around, hmmm? Why don't you sit next to me?' she says, offering you the chair next to her couch.";
				say "     'So, stranger. What are you doing here? Have business to do? Or are you just strolling around in search for company in this broken world? I remember the time before all of this had started... I never ever thought I'd be able to work in a place like this. But nowadays things seem to change rather... quickly. Nyahahaa~' she laughs. Being close to your newfound friend, you're finally able to talk to her, still you simply have to continue eying her body further while you do.";
				say "     Just as you finally want to say something to Ammy you hear a glass breaking in the other room and the horse's ears rise suddenly, saying 'Sorry pal, gotta look after that! We'll pick up from here later, alright?' She quickly gets up and walks away, her hooves clopping muffled as they hit the soft floor. You cannot else but stare after her as she walks - feeling mesmerized by the graceful swaying of her hips and the way her purple tail moves along with it. Enjoying the view a sudden thought strikes you, this is a topless lounge, isn't it? Possibly you should ASK her ABOUT TAKING OFF the BRA if you dare next time you see her.";
				now AmmyAffection is 2;
				now AmmyLastEvent is turns;
			-- 2:
				say "[one of][ammy_idletalk][or]     'Oh hi there again! Hope you're having fun here at the Palomino... with me?' the equine tells you with a wink of her eye. You surely do! Yet you somewhat wonder if Ammy would TAKE OFF her BRA if you'd ASK her... after all this should be a topless lounge![at random]";
			-- 3:
				say "     'Oooh, hi there again lovely!' the white equine greets you with a smile before approaching you, 'I'm glad you found your way back here again.'";
				say "     The curvy horse lady looks to the side before she continues, 'I was wondering... do you see this dancing pole over there on my favorite couch? I kinda... thought you might enjoy a little 'show'? - I need to practice anyway, and after all I think I might like making you happy?' - tilting her head to the side a bit while speaking to you.";
				if player consents:
					now AmmyAffection is 4;
					now AmmyLastEvent is turns;
					say "     Ammy cheers and nuzzles at you before taking you by the wrist, pulling you with her a bit as she heads towards the pole on her special corner.";
					say "[ammy_poledance]";
				else:
					say "     'Aww! But okay... maybe next time?' Ammy says before giving you a little kiss on the forehead, trotting off again.";
			-- 4:
				say "     Ammy's ears rise up into your direction as you approach her. Quickly she gets up and hugs you tightly, her naked breasts (un)pleasantly pressing against your [ammy_playerchestdesc] as she starts talking with her soft voice 'Hey there again sweetheart! How have you been? I've been missing you!'";
				say "     You two sit down and chat a little, obviously getting closer with Ammy. It takes a while and a little pause in the conversation as you slowly realize again how curvy and well formed the body of your company is again - the fact that she's not wearing a top is not making it better! You blush a little as you notice her eying her body again, starting to grin and looking at you: 'Hmm, there's no one around at the moment... and usually there won't be for a while at this time. Possibly I could do something more... private for you than last time?'";
				say "     Do you want Ammy to perform a lapdance for you?";
				if player consents:
					say "[ammy_lapdance]";
					now AmmyAffection is 5;
					now 'Employees Only' Door is openable;
				else:
					say "     'Oooh, I see you're busy with something else,' Ammy says in a sad voice. 'I think I also should get going. Talk to you again later sweetheart!'";
			-- otherwise:
				say "[if lastfuck of Ammy is not turns][one of]     'Ooh there you are again lovely! What are you up to? Having something 'special' in mind?' Ammy asks you with one of her eyebrows raised.[or]     The white equine falls into you, arms embracing your body while giving your forehead a kiss with her muzzle, 'Where have you been? I was missing you!'[or][ammy_idletalk][at random][else if AmmyAffection > 4][one of]     If you want me to dance for you again, you can always ask me to, sweetheart.[or][ammy_idletalk][at random][else][ammy_idletalk][end if]";
	else:
		say "[ammy_idletalk]";


Instead of asking Ammy about "Poledance":
	if AmmyAffection > 4:
		say "     'You want me to do that again? Well... sure! Just come here.' Ammy smiles and teasingly points to her favorite spot. Of course you take a seat there quickly.";
		say "[ammy_poledance]";
	else:
		say "     'Hrm. What exactly makes you think I'd give you a free show?' the equine states and smiles and sticks her tongue out playfully at you.";

Instead of asking Ammy about "Lapdance":
	if AmmyAffection >= 5:
		if lastfuck of Ammy is not turns:
			say "     'Ooh... I see where you are hinting lovely!' the equine whispers into your ear and points at the 'Employees Only' door. Of course you eagerly wait at her flatlet for the 'entertainment'";
			say "[ammy_lapdance]";
		else:
			say "     'You greedy little thing you!' Ammy giggles before she continues, 'I'm sorry... but at the moment I'm not really in the mood for that, alright sweetie?'";
	else:
		say "     'Hmm... why would I do that? Do you have anything... special to offer?' Ammy states teasingly, looking at you with one eyebrow raised.";

Instead of asking Ammy about "contact/Contact":
	say "     Oh? If you want to stay in touch with me - I used to have a website on furaffinity.net! It's https://furaffinity.net/user/femtoAmpere if you want to write that down. I do not know if the internet ever comes back online, but in case it does, you can try finding me there, sweetheart.";

Instead of asking Ammy about "help":
	say "     'Aww, hope I didn't confuse you! Here are some tips I can give you,' Ammy says, handing you a small notecard with a little heart drawn onto it.";
	LineBreak;
	say "     1 - I don't always have something new to say to you lovely! Sometimes you just have to wait a day... or a turn (whatever this is!) until I have something new for you.";
	say "     2 - If you want to stay in touch with me, just ask me about contact! You might be surprised.";
	say "     3 - 'Oh, and if you want to reset me just type [']ask Ammy about Debug_Startover[']!'";

Instead of asking Ammy about "DEBUG_STARTOVER":
	say "I'll pretend I have never met you before lovely <3";
	now AmmyAffection is 0;

Instead of asking Ammy about "take/taking off bra":
	if AmmyAffection is 2:
		say "     'Nyahahahahaa,' she laughs. 'Well, I see what you mean... and technically you are totally right of course! I wasn't paying much attention because no one really was around before...' she says, turning her head a bit to the side while looking at you. 'Any special reason why you ask about that?' she asks with a broad grins.";
		say "     'Oh I think I know what you want...' she asks teasingly, then turns her back to you and fondles around the snaps of her bra with her soft hands. You can hear a faint click as you start watching black silky bra sliding off her body, falling to the ground as she turns around again slowly.";
		say "     With huge eyes you look at her ample bosom slowly drifting into view as she turns to you again. The view of her soft breasts moving while the equine turns around towards you is just delightful! Pink nipples on top of white boobs staring at you, it just makes such a perfect sight! - Still gazing in awe you catch a glimpse of her smile as she leans forward now, poking at your shoulder with one finger. 'I'm glad you enjoy the sight, but you forgot one thing,' she says in a soft voice, 'you're also still wearing something up there!' Not being able to compete to that logic you grinningly take off your upper clothes, exposing your [ammy_playerchestdesc]. It looks like Ammy's also pleased by what she sees... 'You're quite a saucy one, aren't you?' Nyehee, here - take my bra as a gift,' she laughs, putting it on the table next to you before walking off again, leaving you standing with your literal drooling mouth open.";
		say "     Obeying the rules of the club, you drop your upper clothes every time you enter the lounge now as well.";
		add "black bra" to invent of topless lounge;
		now AmmyAffection is 3;
		now AmmyLastEvent is turns;
	else if AmmyAffection < 2:
		say "     'Why would I do that?' the horsey lady asks you teasingly, but getting kind of nervous now you don't want to bug her further.";
	else:
		say "     'I've dropped it already! What more could you possible want? Nyehehehee~' she tells you with a smile while intentionally giving you a wonderful view of her bare chest.";
		increase libido of player by 5;

Instead of asking Ammy about "take/taking off panties/pants":
	say "     Ammy rolls her eyes and looks upwards before stroking over the side of her muzzle and looking back to you with a mischievous grin on her face, 'Hmmmm... not right now I suppose. But who knows what happens later...' she tells you with a one-eyed wink.";

Instead of asking Ammy about "pony/ponies":
	say "     'What? PONIES?! I am a strong HORSE, you know!' she tells you with a slightly annoyed look in her face. 'Or... a sparklingly colorful unicorn... but still more of a horse than a pony!'";

Instead of asking Ammy about "Rarity":
	say "     Ammy looks from side to side as you ask her. 'Rarity? Who's that? Should I know her? I mean, if that character I don't know is female. Or a character. Or [']someone[']...'";




Section 4 - Sexy Times

Instead of fucking Ammy:
	If AmmyAffection <= 2:
		say "     'Uhm. I'm flattered by your offer... and I know things tend to go very fast here... but... NO!' the equine states slightly annoyed and pushes you away.";
	else if AmmyAffection <= 4:
		say "     'Oh... oh my, I... I don't know. You're sure kinda cute! But... no, I'm sorry,' Ammy tells you in her sweet voice, obviously being not completely uninterested.";
	else:
		if lastfuck of Ammy is not turns:
			say "     As you approach the equine, she gets your intention immediately and only answers 'Ooh you little kinky thing you!' with a wink of her left eye. She takes you by the wrist and guides you into her private flatlet behind the 'Employees Only' door, placing you gently on the bed there.";
			say "[ammy_sexengine]";
		else:
			say "     Ammy hugs you before resting some of her weight onto you, 'I'm sorry lovely... I might be a [']horny['] horse... but even I need some time to recover,' kissing your forehead with her soft muzzle before she walks off again.";




to say ammy_sexengine:
	say "[one of]     She guides you to her favorite couch and just pushes you onto it. You don't have long to gaze at her curvy body and wonderful breasts until she gets down onto you, sitting in your lap.[line break][ammy_sex_lap][or][ammy_sex_fellatio_giving][or][ammy_sex_fellatio_receiving][or][if player is male][ammy_sex_frombehind][else][ammy_sexengine][end if][at random]";
	if lastfuck of Ammy is not turns, now lastfuck of Ammy is turns;
	now player is in Ammy's Flatlet;


to say ammy_sex_lap:
	say "     Smilingly, you look down at your partner's crotch in your tight embrace, pleased by the growing bulge in her ever so tight panties, her white arms resting on your shoulders. Bringing your hands around her back, you find yourself exploring the equine's body downwards until you reach her flickering tail and round arse. [if AmmyAffection <= 5]'Oh my... I'm happy you finally give in to my tease,' Ammy says in slow, chanting words, looking[else]Looking[end if] at you with a sensual expression, the horse lady then suddenly leans forward and kisses you deeply. The thick equine tongue invading your mouth as one arm slides off your shoulder and frantically gropes at your crotch and starts caressing your equipment. The other hand explores your [bodyname of player] body, while you explore hers.";
	say "     You suddenly hear a snap and then feel something moving in your thighs, breaking the long kiss and looking down. What you see -and feel- there is her engorging shaft, that just ripped the tight black panties apart.";
	say "     'Aww, that keeps happening,' she says, removing the remains of the panties. [if AmmyAffection <= 5]'So you finally get to see me without any clothes after all, hmm?' [else]'Nyehehee~ looks like sometimes I can even have a third horn,' she tells you with a one eyed wink. [end if]Her huge cock is growing harder by the moment. It's mostly equine in shape with a medial ring on half of its length and just as bright and pink from that ring upwards as the nipples on her fantastic breasts. [if AmmyAffection <= 5]'Don't worry, I've got all you might want,' she says with a faint giggling nicker[else]A faint giggling nicker escaping her mouth[end if] as her large cock rubs against your crotch.";
	say "     While you were distracted, the herm's soft hands were fondling around your waist, getting rid of whatever you might have worn, revealing your [if player is male]hard [cockname of player] cock[else if player is female]wet folds[end if].";
	say "     After spending a few more moments in this hot embrace you find the idea of grabbing her cock enticing. Will you?";
	if player consents:
		say "     You wrap your hand around the base of the horsemeat in front of you, while the other begins to fondle the furred balls underneath. It barely fits around the shaft in your grip as you let your hand slowly wander up, rubbing along the length.";
		say "     'Mmh...' you hear escaping her soft mouth. Saying nothing else, just smiling at your doing Ammy leans back a bit, watching you work her. While fondling her sack you occasionally caress her cunt with one hand while the other continues to jack her off.";
		say "     It doesn't take long until you hear the horse's breathing getting heavier and you pick up pace. Taking intensive care of her wet folds too now your pumping getting more rough while precum is running down the big shaft in front of you. Her hips moving rhythmically with your pumping you watch her body writhing, enjoying your doing on her[if player is male]. Your own erection is aching merely due to the situation you are in as you notice Ammy starting to hump so enthusiastically that she's rubbing at your very own erection with her tools, rubbing your [cock of player] cock against her equine cock, making yourself dribble precum already[else if player is female]. You yourself feel so horny, merely due to the very situation you are in already. You feel your thighs getting wetter as suddenly you notice Ammy starting to hump so enthusiastically into your grasp that she's rubbing against your folds with her equine cock, spreading them already by the thickness of it[end if].";
		if player is not male or a random chance of 1 in 2 succeeds:
			say "     [if player is male]Your own erection is aching merely due to the situation you are in as you notice Ammy starting to hump so enthusiastically that she's rubbing at your very own erection with her tools, rubbing your [cock of player] cock against her equine cock, making yourself dribble precum already. [else if player is female]You yourself feel so horny, merely due to the very situation you are in already. You feel your thighs getting wetter as suddenly you notice Ammy starting to hump so enthusiastically into your grasp that she's rubbing against your folds with her equine cock, spreading them already by the thickness of it. [end if]The sexy equine in front of you moans deeply as she leans more forward, arms resting on your shoulders. Her head looking down, vision following your doing. You feel your forehead touching hers, her horns rubbing against yours.";
			say "     Movements getting faster and more fierce by the second. She's humping into your grab as you start using both hands on her cock.";
			say "     'Nyah... haah... you shou... You should be caref...' Ammy tries to say in her current lust overwhelmed state, 'hah, or I'll... haah... HAAH,' muttering and moaning, trying to delay her peak until she's pushed over the edge and begins cumming. You can feel the wetness beyond her balls at her female folds as cum begins shooting out of the huge horsecock in your grasp. [one of]Leaning downwards you quickly take the tip into your mouth and try to swallow as much of the delicious white liquid as possible. Glob after glob is being pushed out of her massive tool, too much for you to swallow all as some of the cum being squeezed out of your mouth again, dripping onto your [ammy_playerchestdesc] or running down Ammy's length.[or]The massive amount of cum is literally splattering your [ammy_playerchestdesc] with the white liquid. It smells nice actually as you enjoy the shower of the seemingly endless supply of cream.[at random]";
			say "     The smell and taste of all this mixed body fluids and this sexual strengths of this creature right in front of you is sending you a wave of pleasure as well, hitting you so hard that you also are thrown over the edge and join her bliss, peaking harshly. A few more moments you can feel shot after shot moving through the horse's huge tool until the orgasm finally fades for both of you and Ammy sighs relieved.";
			say "     The two of you breathe heavily in the afterglow. 'Ooh my... thank you, that was good! Just what I needed,' Ammy tells you in a happy voice and kisses you again. After a few seconds she backs off and licks her chops, smiling. 'Well... looks like I made quite a mess... sorry for that! I'll have to get going and get myself some new panties. See you again soon, I hope.' Ammy winks at you with one eye before she gets up and trots off, shouting back at you before she vanishes around the corner, 'Oh, maybe you should get a shower!'";
			say "     Will you?";
			if player consents:
				say "     You get up quickly and head off to the club's showers, cleaning yourself before coming back to the lounge.";
			else:
				say "     You rather lay back and enjoy the musky smell of the mess you're covered in until you start feeling something.";
				ammy_infect;
		else:
			say "     Leaning forward Ammy places her hands on your shoulders, eyes closed with a concentrated expression in her face. 'W..wh..wait! I don't want to get too much ahead without giving you something in return,' she gasps with a smile before nuzzling at your cheek. Of course you obey, stopping your doing and pulling your hands from between the two of you, giving the equine a second to catch breath.";
			say "     Ammy looks at you happily, moving forward against you, her breasts rubbing at your face... her prick at your [ammy_playerchestdesc]. [if breast size of player > 0]In fact, her long equine cock is quickly finding its way in between your breasts[else]Her long equine prick is drooling precum across your chest[end if] as she kneels above your groin now. Almost painfully slowly starts sliding downwards, until you can feel the tip of your cock entering her wet folds. She slowly moves down further until you are completely engulfed in her accommodating pussy. You hear her groan as she rises again, then falls again on your cock. Ammy's body rubs against yours as she begins to ride you, quickly picking up in pace, steadily fucking you, her surprisingly soft pussy sliding around your cock. Her rhythm reaches the steady beat of the dull beat of the music of the other room.";
			say "     You need to start panting in pleasure as the horse in your lap rides you, her huge horsecock rubbing along your front, pre sloshing out of it. Her cunt engulfing you fully as you feel yourself being even deeper into her depths. Your hands grip her thighs tightly, enforcing the rocking between your bodies. While your bodies slide against each other, you breathe heavy, not able to deny your upcoming peak any longer as you suddenly hear the herm on top of you whine out loudly in your lap. The pleasure you are giving Ammy is sending you right over the edge as well as you both writhe in pleasure at the very heels of your orgasms. Her snatch contracting around your engulfed cock, neighing as you pump her full. Her shaft between the two of you spewing huge amounts of cum between your bodies, painting your [skin of player] skin and her fur in a sticky white layer of cum.";
			say "     Seconds feel like minutes as you peak. It takes a felt eternity until you come down again, panting. Feeling a bit dizzy you lift your head up, looking deep into Ammy's gaze. You both don't say a word and just remain in this close position for a bit until she pulls herself off, her still huge, semi-erect prick flopping against your belly.";
			say "     'That was nice...' she says in her soft voice and hugs you in a sticky embrace. After a while she gets up and tells you she wants to shower or it'll be a hell of getting her fur and mane clean again or something you don't really get, her long tail moving along swaying hips.";
			if a random chance of 1 in 3 succeeds, ammy_infect;
	else:
		[***Scene missing? - brief opt-out for now]
		say "     Rather than let things get out of hand, you rein yourself in and switch to some affectionate snuggling. While this does leave the equine herm a little blue-balled, she's seems to appreciate a good snuggle as well. She eventually has to get back to work, giving you a peck on the cheek before going with a smile.";

to say ammy_sex_fellatio_giving:
	say "     With the sexy herm equine standing tall in front of you and looking at you expectantly you don't waste any time and get down on her, licking your chops. Nuzzling at the insides of that black panties you inhale the at the same time sweet and musky scent. One hand roaming along her inner thighs in front of you, the other finding its way to her bubble butt, caressing it. Suddenly you feel one of Ammy's hands caressing your [facename of player] head, the other one gently pulling down her (again black) lacy panties, revealing her wonderful tools. Suckling on the horse's balls while caressing her thighs gently with your hands you slowly work your way up her engorging equipment, licking along the tasty shaft as she starts to pet your head.";
	say "     It doesn't take long until you reach the tip of the slowly becoming hard horsecock with your mouth and you start taking it in. You need to hold the huge shaft with both hands while engulfing the broad tip with your mouth, as you hear a low moan from the white equine. You start bobbing your head back and forth, trying to get as much as possible of Ammy's shaft into your mouth. You still need to hold it with one hand, while with the other one you start fondling around her balls and cunt. You notice the warmth and liquids radiating from her wet folds, a sickly sweet scent emerging from them. It doesn't take too long until a copious amount of precum is emerging from the cocktip buried in your mouth already. Closing your eyes you gulp it down, savoring the wonderful taste of it as your free hand drifts downwards, tainted with the horse's liquids, you take also care of your own emerging needs.";
	say "     You hear a deep breath from the equine lady followed by a soft nicker, as you open your eyes again and look up. Her eyes are closed, she's holding your [facename of player] head with one hand, while the other is kneading her breasts. The herm obviously enjoying your services as your hand alternately taking care of her equipment and your own. Still breathing heavy, you also notice that she's thrusting her hips along with your bobbing, her hand on your head guiding you. Moans adding to her heavy breathing, movements getting fiercer by the minute.";
	say "     You're sure the equine's enjoying your work, not wanting to stop, you use both of your hands now on the horse's equipment, pumping at what's not buried in your mouth from her hard cock while massaging her pussy. You hear Ammy delightfully squealing, having trouble with your grip due to the ferocious thrusting of her. The precum emerging from her cock also is accelerating heavily, leaking from your mouth, running along and dripping from the shaft. Her female sex so wet that liquid runs down her inner thighs, droplets falling to the ground occasionally.";
	say "     From this situation it doesn't take long until you hear her whine out in bliss. One final strong thrust pushing as much as possible of her cock into your mouth. Head pointing upwards, arching her back forward she begins to orgasm, cum flooding your mouth. You try to swallow down as much as possible but quickly finding yourself at the limit, letting it just run down your [bodytype of player] body. More and more waves of cum hit you, her female sex also squirting liquids until the powerful peak finally begins to fade.";
	say "     'Haaaah... oh my, thank you! I needed this! I'm sorry... but I got to get going now. Perhaps we can do something like this again soon? And next time you won't get away this easy! Nyehehee~' she laughs and gives you a hug, picking up her panties that lay on the ground before leaving.";
	if a random chance of 1 in 3 succeeds, ammy_infect;

to say ammy_sex_fellatio_receiving:
	say "     With an evil grin on her face, Ammy keeps looking at you as her gaze slowly drifts downwards, eying your crotch. While licking her chops she looks back at your face, speaking in a teasing voice, 'Would you like if I'd make you happy down there, hmm?'";
	say "     Blushing a bit you just nod in anticipation while the beautiful equine leans against you, getting rid of everything you might have worn around your hips in the close embrace, then pushing you back onto the next comfortable seating opportunity. Not losing eye contact, you just let yourself fall down until you find yourself in a sitting position all while Ammy follows you, going down into a kneeling position in front of your crotch - her eyes in the very same level as your crotch. Already from this sight and the anticipation of what's to come you feel yourself getting aroused[if player is herm], your pecker slowly filling with blood and a general wetness beyond your balls making itself noticeable[else if player is male], your pecker slowly filling with blood[else if player is female], a wetness beyond your folds already making itself noticeable[end if]. The curvy equine slowly nuzzles at your inner legs while her hands caress your sides, her breasts jiggling with the sensual movements. Slowly she draws her muzzle closer to your crotch, hands roaming along your rear.";
	say "     Staring in awe you watch the horse start to lick at your crotch, her broad tongue feeling heavenly as she touches your [skin of player] skin. A stray hand rubbing your thigh while she's spoiling you, suckling [if player is male]at your balls, licking at the base of your shaft, which has become a rock hard boner in the meantime[else]along your oh so wonderfully sensitive folds which are getting pretty juicy slowly[end if]. You need to take a deep breath at the wonderful feelings Ammy's giving you.";
	say "     Lick after slow lick she's [if player is male]moving upwards your shaft, twitching from the pleasure each time her tongue touches it[else]stretching, probing your cunt deeper and deeper with every lick[end if]. Just a few more slow licks until [if player is male]she arrives at the top of your cock where as she pauses[else]you can feel her entering your very depths with her long thick tongue[end if]. Fine strains of saliva pulling from your [if player is male]cock[else]cunt[end if] as she moves away a few centimeters, looking at you teasingly with an evil smile on her face.";
	say "     [if player is male]Pre is running down your shaft already[else]Juices are flowing down your thighs[end if] as a few wordless moments pass, the two of you looking into each other's eyes until suddenly the curvy equine in front of you [if player is male]takes the tip into her mouth[else]starts French kissing your vagina[end if], making you gasp from the pleasure of it. 'Mmm... you taste interesting! I wonder if there's more...' she says teasingly after a few tentative suckles while she begins to perform further.";
	say "     You need to groan at the sudden feelings as your [if player is male]tool is[else]folds are[end if] getting worked on with expertise. [if player is male]It doesn't take long until she takes your whole cock in to her long muzzle, fondling your [cockname of player] sack with one hand. [end if]You slowly start bucking in a rhythm with Ammy's [if player is male]sucking[else]licking[end if], enjoying the very nice fellatio. Your hands roaming around until you finally get a grasp onto of her horns, guiding her movements. The other of your hand gently caresses her soft furred head in your lap. You can feel a faint warm breeze on your [skin of player] skin, escaping her nostrils while your body writhes within the overwhelming pleasures.";
	say "     Meanwhile Ammy is taking care of herself with her free hand, stroking along her huge hard cock that reaches out of her twisted panties or fingering into her female sex while working at you. With a faint gaze you notice she's already drooling precum as well.";
	say "     Brought back by another shore-bursting wave of pleasure you slowly feel your peak approaching and faintly try to push the horse between your legs away her away, but she obviously insists to continue. Along with your own groans you can hear her moan as well while [if player is male]your shaft is locked in her mouth[else]her tongue's deep inside you[end if].";
	if (a random chance of 1 in 2 succeeds and player is female) or cocks of player < 0:
		say "     While you keep writhing in pleasure and waiting for the moment where you simply cannot deny your peak anymore you cannot else but keep staring at Ammy's thick, drooling horsecock. You try to murmur out something but simply not being able to stop her until she seems to sense your point of interest on her and she finally [if player is male]takes your cock out of her mouth[else]pulls out[end if]. Looking at you grinning you know that she knows what you thought as she gets up and falls onto you, kissing you. The [if player is male]salty taste of your precum[else]nice taste of your female juices[end if] mixing with her wonderfully tasting saliva. She stays in this kiss with you for a few seconds while she positions herself onto you, slowly entering your already hypersensitive folds with her huge horsecock, making you moan loudly into her mouth during the kiss.";
		say "     Furiously you can feel her thrusting into you, getting deeper and deeper, making horsey sounds while fucking you. A few more thrusts, getting deeper with every single one you can hear her breath heavy. Just as you feel almost like exploding from the pleasure of the deep penetration with her thick cock you can feel her cum, not simply getting but right throwing you over the edge and you start peaking with her[if player is male], your own cock spewing jizz in between your touching bodies[end if]. Cum flooding you, squirting right out of your vagina again when she thrusts into it with another load. A few moments pass that feel like hours and Ammy collapses on top of you, licking at your neck. 'Nyaaah~ I hope that was what you had in mind,' the horse whispers into your ear and giggles.";
		say "     You stay in this position for a few minutes, kissing and cuddling with each other in blissful afterglow.";
	else:
		say "     Your thrusting is getting more and more uncontrolled until finally you begin to orgasm. You can feel your jizz shooting into her mouth while you watch her swallowing down all of it. While you writhe your body in peak you also notice her cumming from the taste of your own cum, painting the [one of]area between your legs[or]floor under your[at random] white while juices are dripping from between her legs. You need to throw your head back as shot after shot spurts out of your cock.";
		say "     While your orgasm finally fades, you spot Ammy's cleaning up your cock eagerly, enjoying you to the last drop. After she's done she gets up and sits next to you, leaning her curvy, soft-furred body against yours in afterglow.";
	if a random chance of 1 in 5 succeeds, ammy_infect;

to say ammy_sex_frombehind:
	say "     Standing right next to her comfortable looking bed the white equine closes her eyes while gently embracing you with her petite arms, pressing her soft furred body against you. Your own hands start to stroke along her curves, feeling the soft fur on them, her wonderful sweet and rosy smell invading your nostrils. Pulling even closer to each other your [facename of player] face touches her muzzle, lips touching each other while you feel her caressing your cheek. You suckle on each other's lips a few times before you start kissing, her wide tongue dancing with yours. During your tight embrace you feel your bodies rubbing against each other, her soft breasts with perky nipples pressing against your [ammy_playerchestdesc]. All while Ammy's hands slowly roam downwards your back and sides until they eventually arrive at whatever you wear on your hips, entering it and brushing over your crotch. You find yourself moaning into the kiss, pushing your lips harder against hers as you notice a grin forming on her beautiful equine face, her eyes still closed enjoying the moment.";
	say "     A few further moments pass until you can feel Ammy shoving down your pants, her athletic equine legs brushing against yours occasionally while she helps you getting rid of your clothes. With your already hard cock freed now you just need to thrust forward a bit as the tip touches the soft fur on the herm's belly. A few seconds later she breaks the kiss, nuzzling and suckling at your neck as she turns around, her wonderfully shaped back facing you now. Taking your hands, placing one on top of her breast and one at her hip right at the edge of her panties you gladly help her to take them off as well. The horse's butt rubbing against your crotch, brushing along your balls and [cockname of player] cock while she sways her hips from side to side, helping you push her panties down further every move.";
	say "     After a few shoves you can see her male parts already dropping out, the thick shaft semi-erect. A low groan followed by a heavy breathing 'Brr...' is escaping Ammy's muzzle from time to time while you rub your equipment between her wonderful but cheeks she's moving so sensually, smearing precum at them and the base of her tail while your other hand keeps groping her hand filling boobs until you finally make her pants drop down her legs and she steps out of them with two clops on the wooden floor, her floppy cock moving to the motion.";
	say "     Having both of your hands free now you start caressing all of her curvy body as she leans backwards, thick neck and head turning to the side so that her lips are able to meet yours again for another kiss. Some sensual moments later she breaks the feeling kiss again and licks at the side of your head, up onto your ear as you hear her whisper into it in slow, chanting words 'Take me~'.";
	say "     You find yourself suckling at her shoulders and neck, enjoying the feeling of the soft hairs of her mane as she turns her head back forward again. You don't hesitate long before positioning your [cockname of player] cock between her thighs, going down a bit while she tries to rise up further until you manage to find her already damp folds with your tool. Ammy throws her head upwards and moans a bit while inhaling deeply as you enter her awaiting cunt with the tip of your penis. You grasp one of her juicy thighs and lift the leg up to the side to have a better passage, almost heaving her whole weight as you start penetrating her deeper in a steady rhythm. The other hand still massaging and groping at her ample breasts thrust after thrust you can feel yourself entering her folds deeper, each time lifting her one still standing hoof a bit off the ground while she turns her head to you again, kissing you.";
	say "     After another invigorating moan of Ammy you break the kiss after a while and stop, gently putting her lifted leg back to the ground and pleasurably suckling at her shoulder again before you push her forward onto the bed in front of you two. Gladly playing along the unicorn lands on the sheets on all fours, proudly presenting her wonderful rear to you while she crawls forward a bit before looking back at you expectantly with her deep blue eyes.";
	say "     Going after her you get on the bed as well, starting to lick her buttocks where still some precum is visible from what you smeared there before. Working your way downwards you eventually lick your way through to her dripping folds, spreading them. Playing with them with your tongue while you watch Ammy's body writhe in pleasure, breathing heavy with her eyes closed as she enjoys your doing. Once you spent some time down there you work your way upwards again. Along her cheeks... up to the base of her tail. Licking and suckling first on her lower back, slowly traveling upwards until her neither regions are in reach of your dick again. Tentatively rubbing your cock along her cheeks, butthole and finally along her cunt you nibble at her ear as you hear the equine under you murmur, still with her eyes closed 'G- Go on. Please!'.";
	say "     Climbing on top of the horny horse beneath you, you grab her hips and finally start slamming your [cock size desc of player] cock into her vagina as hard as you can. You need to watch her horns as she gasps and throws her head upwards in pleasure. 'OhhAAH ooh my, Nnngh~ Neigh!' You need to groan as well as you thrust into her, her depths so warm and accommodating to your penis as you get deeper and deeper with each thrust. Hammering into Ammy's female sex you find yourself lost in pleasure - but so is she obviously. The curvy equine's body beneath you writhing in the sexual energy of your mating as you notice her having trouble not getting pinned down by your thrusting. It still doesn't take long until you notice Ammy rhythmically responding to you with her own body, making you going even deeper into her depths.";
	say "     With her furious movements you occasionally hear her huge, precum dribbling cock slapping against her belly or swaying out sideways next to her hips... you possibly could push her frantically to the edge if you'd also start jacking it off while fucking her?";
	if player consents:
		say "     A very mischievous grin forms on your face as you move a bit downwards during your fucking, leaning forward until you touch her shoulders with your [ammy_playerchestdesc] from time to time. Leaving only one arm supporting you, placed next to hers on the sheets, you use the other one to grope at her sensitive breasts, kneading at them. Ammy's eyes shoot open as she looks down at your doing in her lust-crazed state, almost poking a hole into a pillow next to her with her horns in the movements. Turning her head upwards again, looking forwards she tries to say something, 'NyaaAAh, you... you better slow down because I won't... I won't... NYAAA, You... You Oh my GOSH!' she cries out loudly as your one free hand found its way downwards to her raging erection. The huge horsecock already well lubed from precum as you work it off.";
		say "     The equine's body underneath you writhes lost in pleasure as you notice her losing control slowly, trying to soften your relentless fucking with her movements now. Also getting close to peak you do not stop. Quite the contrary, you love making her crazy... the unspeakable pleasure she's in giving you pleasure as well. A few more moments pass until you hear her breathing changing. Heavy snorts coming out of Ammy's nostrils as you hear her neigh silently again and again until she cries out 'aaaAAAAh!', followed by a loud nicker as she begins cumming. Her insides milking your cock as they contract around it, taking you right with her as you do one final thrust. Her cock spurting jizz onto the bed beneath her, forming a wide line of thick, creamy cum along the bed - the range of the line not even stopping at the edge she's turned to. Meanwhile you feel your own cum filling her. Pump for pump you're filling her depths, the pleasure of the peak making it feel like minutes until you both finally come down. Exhausted Ammy falls to the side as you pull out, some cum flowing down her thighs as it spurts out of her vagina.";
	else:
		say "     Rather continuing what you're already doing you grasp her hips tightly and continue to slam into her passage. Ammy keeps exhaling loudly every time you penetrate her deeper, her body slowly moving more forward with every thrust, not being able to compensate the force of yours any more. With one strong thrust of yours she suddenly drops forward, being pushed onto laying on her belly, rising up just with her front again as you hear her moan from the additional pleasure she's getting from her cock being squeezed between the ground and her belly. Having slipped out of Ammy she suddenly turns her head and looks back to you now with a displeased look in her face, 'I... I'm sorry! D- Don't stop!'";
		say "     Smilingly you grab her sensitive shoulders and pull her back up onto you. In fact you pull her so hard that she ends up more sitting on top of your lap rather than laying in front of you while you kneel there. Not wasting any time you two continue where you stopped, Ammy guiding your tool right back into her again before teetering up and down. 'Oh yes that's SO much better,' the white furred beauty whispers as you two start to get into the rhythm again. The equine's tail keeps whipping you softly while you push and pull her, licking and suckling at her shoulders and neck while you rock her. Ammy keeps arching her back, holding herself up only by her two petite hands placed behind her hips onto your sides. Watching this female in front of you ache and burn in pleasure brings you even closer to the edge until with final thrust you feel yourself explode into the unicorn.";
		say "     Already with the first shot of jizz you pump into her belly you can feel her contracting around you, waving her head from side to side as she moans loudly, joining you in bliss. You groan and wriggle your hips uncomfortably as you keep Ammy as tight on you as possible while she just keeps moaning louder and louder, cum spurting out of her cock while she arches her back even further - messing up all the nice made bed with lots of creamy white horsecum. A few timeless moments that feel like minutes you stay in this blissful state until both of you slowly calm down again, Ammy exhausted falling off you, cum dripping out of her used folds.";
	say "     Now you two lay there, catching breath until eventually Ammy states 'Oh my... I hope you just had as much fun as I did' before hugging you, nuzzling and cuddling against you before she notices the mess around you, giggling. You spend a few more minutes of blissful afterglow together until the energetic horse gets up again, sweetly kissing you on your forehead before leaving.";

[
to say ammy_sex_ontable:
	say "SHE'S LAYING ON THE TABLE IN FRONT OF YOU";
	[
	-> ...
	]

to say ammy_sex_onwall:
	say "SHE PINS YOU UP AGAINST A WALL"; [if cocklength > 10 ++suck]
	[
	-> Fall over, continue on floor?
	-> ...
	]

to say ammy_sex_cowgirl:
	say "MISSIONARY/COWGIRL/REVERSE";
	[
	-> ...
	]

]




Section 5 - Variable Text Blocks

to say ammy_desc:
	if AmmyAffection <= 2:
		say "     Looking around you spot a curvy figure laying there on one of the cherry-red leather couches. She's an anthropomorphic horse... well, for the most part at least. Lights are reflecting fuzzily from her silky white fur that covers her whole form. Her neck is long and strong, a soft equine head on top of it. In a row two curly white horns standing out from her forehead. Fine hairs form the equine's mane, deep purple in hue. Her tail's got the same purple hue, reaching down long legs tipped with hooves that support her sensually curved body.";
		say "     She's wearing a skimpy black bra surrounding her ample breasts and tight black panties around her wide hips. Slowly getting a view of her crotch you also notice the sizable bulge in her panties, making you wonder how much of a female she actually is... as suddenly you notice that she spotted you eying her body, looking back into your direction with her blue eyes, smiling widely.";
	else if AmmyAffection <= 5:
		say "     Ammy is laying there on one of the cherry-red leather couches, looking stunningly beautiful. She's an anthropomorphic horse, or more an odd kind of unicorn. Lights are reflecting fuzzily from her silky white fur, that covers her whole form. Her neck is long and strong, a soft equine head on top of it, looking into your direction. A pentagram pendant with a gem in the middle of it is hanging around her horse neck, resting on her chest. Fine hairs form the equine's mane, deep purple in hue. Her tail's got the same purple hue, reaching down her long legs that are tipped with hooves to support her sensually curved body.";
		say "     The view of her naked breasts is something very enjoyable, even mesmerizing a bit... She's wearing tight black panties around her wide hips. A sizable bulge in her panties is making you wonder what's hiding under it, however, you enjoy what you can already visualize in your imagination.";
	else:
		say "     Ammy the equine hermaphrodite is laying there on one of the cherry-red leather couches, looking stunningly beautiful with her amazing curves. She's an anthropomorphic horse, or more an odd kind of unicorn. Lights are reflecting fuzzily from her silky white fur, that covers her whole form. Her neck is long and strong, a soft equine head with blue eyes on top of it, looking into your direction, smiling as she notices you. In a row towards her muzzle two curly white horns with a hint of golden color standing out from her forehead. Fine hairs form her mane, deep purple in hue. Sometimes she has bound some of them together with a hair tie or adds some jewelry into loose strands or around her horns. A pentagram pendant with a gem in the middle of it is hanging around her strong horse neck, resting on her chest. Her tail's got the same purple hue as her mane, long hairs reaching down her tall legs that are tipped with hooves to support her sensually curved body. The view of her naked breasts is something very enjoyable, even mesmerizing a bit... the tight black panties she's wearing around her wide hips again makes you fantasize about what hides behind them and what you could do with... or to her.";
		say "     [one of]Ammy is also wearing a few ribbons, wrapped around her thighs. They seem to be part of some lacy underwear set.[or]The horse's also wearing some long black leather gloves and similar leather stockings around her juicy legs... you wonder if she also hide a whip somewhere.[or]Ammy also is wearing [one of]pink[or]red[at random]-black striped stockings, they seem to be a bit vintage in style.[at random]";

to say ammy_idletalk:
	say "     [one of]Hey there sweetheart~[or]Nyeheheee~ this is the best apocalypse ever![or]DO NEVER EVER call me a PONY!!![or]Hmm... people called me a duocorn or bicorn already, but I guess it's up for your liking what you prefer.[or]This body still keeps surprising me, suppose there still are things left to explore, she tells you with a seductive grin.[or]I wonder how I got this weird colors in my fur...[or]Hey! Will you get off my favorite couch please?![line break]     ...or at least make some room for me![or][if AmmyAffection > 3]Hey, hey! Eyes are up here! [else]You like my outfit? [end if][or]If you need any help, you can always ask me for it, sweetheart![line break]     (type 'ask Ammy about help')[at random]";


to say ammy_playerchestdesc:
	say "[if breast size of player > 0][breast size desc of player] breasts[else][bodytype of player] chest[end if]";

to ammy_infect:
	if furry is banned or ( guy is banned and girl is banned and hermaphrodite is banned ):
		increase score by 0; [do nothing]
	else:
		let rinflist be a list of numbers;
		if girl is not banned:
			add 1 to rinflist; [Mareslut]
		if guy is not banned:
			add 2 to rinflist; [Horseman]
			add 3 to rinflist; [Stallionboi]
			add 4 to rinflist; [Zebra]
			add 5 to rinflist; [red horse]
			add 6 to rinflist; [Unicorn]
		if hermaphrodite is not banned:
			add 7 to rinflist; [black equinoid]
		sort rinflist in random order;
		if entry 1 of rinflist is:
		-- 1: infect "Mareslut";
		-- 2: infect "Horseman";
		-- 3: infect "Stallionboi";
		-- 4: infect "Zebra";
		-- 5: infect "Red Horse";
		-- 6: unicornify;
		-- 7: infect "Black Equinoid";


to say ammy_poledance:
	say "     A smile forms on Ammy's lips as you lean back and watch her climb onto the table with the pole on it. You watch eagerly as she starts leaning herself against the pole, arms grabbing the pipe up above her head as the metal touches her chest. A second later her whole body seems to be attracted to the pole, sticking to it as she narrows her eyes halfway down and starts looking at you, the grin in her face becoming wider.";
	say "     Slowly but steadily the beautiful equine starts rhythmically moving her body along the pole, her horns occasionally causing a faint crackle sound as they bump against the metal. She slowly starts lifting her [one of]left[or]right[at random] leg, one hoof on her foot slowly losing contact while balancing on the other as she starts rubbing her inner thigh against the thick pipe, thrusting forward and backward again in a steady motion - making her tail dance mesmerizingly in the faint light. You have problem of not starting to drool with your mouth hanging open wide like that as you hear the horse chuckle sweetly, the lifted leg slowly curling around the metal pole Ammy lifts herself up and starts turning in a circle around it. Within the same motion she leans backwards until she lets go of the pole and turns upside down, looking at you with a smile while her boobs jiggle from the movements and her beautiful mane's long hair slowly falls downwards.";
	say "     With big eyes you watch the equine drifting down the pole until she reaches the table, where she lets herself drift onto. She keeps laying in front of you in a mess with all her mane and tail's hair for a few moments, leaving you staring in awe until she turns around slowly, getting onto all fours and crawling into your direction a bit. Her eyes in one level with yours, still having a warm smile on her face. Just as you're about to notice your still open mouth she pushes herself back to the pole, gripping it behind above her head with her hands, pulling back into a crouching position with her front facing you, having legs closed.";
	say "     Slowly spreading her legs to the sides a wonderful view of her crotch is coming to you - a not exactly unexpected bulge hidden in this skimpy but for some reason everything covering black lacy panties she's wearing. Waiting in front of you with her legs spread widely, her rear almost touching the table she looks down to you, 'You like what you see? I certainly do hope so' and smiles at you for another moment before pulling herself up the pipe again - every movement still within this oh so sensual rhythm.";
	say "     Once standing again Ammy turns around, giving you a view of her back... and rear she starts leaning forward while raising her ass, swaying her hips from side to side, tail dancing to the rhythmic motion. You notice her closing her eyes while nuzzling against the metal pole she's holding onto. The rocking of her hips is getting more and more wild by the minute, the nuzzling more passionate, making you crazy. This sensual movement of those wide hips and great arse is just too hot. A few more seconds pass until you hear the equine moan silently 'Nnngh~' and you notice the bulge in her panties is growing.";
	say "     The now heavier breathing horse suddenly looks back to you, her eyes shooting open as she turns around again and sits in front of you in a kneeling position, 'Nnngh~ I... hope you liked. But I better stop [']practicing['] now before something happens...' Ammy chuckles and turns to the side, hopping off the table and leaning forward to you, horns touching your forehead as she slides along it, giving it a kiss with her soft muzzle before she leaves quickly.";
	increase libido of player by 15;

to say ammy_lapdance:
	say "     'Aww, honey - let's have some fun~' the white unicorn tells you while gently shoving you back onto [one of]the next chair[or]her favorite couch[at random].";
	say "     At the very moment you collide with the surface of your comfortable sitting device you feel Ammy's rear right at your [bodytype of player] leg already. With the woman's back facing you, you can examine the juicy curves of this sensual body merely a few inches away from you. The fine hairs of her cute pink tail are tickling you while she's sitting on your upper leg, wide hips rubbing along it in a steady rhythm. While the horse does so you can feel the bulges in her crotch rubbing, moving. She buries her hands in the mane behind her head while looking upwards, her spine, her whole body moving along with her rhythm from side to side. Occasionally you see one of her breasts bouncing to the side, the outline of a sideboob next to such a great back giving you a more than wonderful view.";
	say "     You do not know where to look first while the female in front of you slowly starts leaning forward. You can feel her silky fur on your [skin of player] skin, one arm moving around your back, pulling herself closer. Her whole body turning, now sitting with her side to you, sliding her sexy rear nearer to your crotch while pulling your upper body closer her shoulder, dangerously close to her naked, wonderfully soft boobs. You notice that she's looking at you, giggling about how you don't know where to look first with your eyes.";
	say "     Sultry sitting on top of your crotch the equine lady then pulls away. You can hear dull clops as hooves hit the ground, her soft touch brushing along your neck while she dances her way down onto all fours. Facing her tail and ass again you watch her arching backwards until she's almost touching the ground in this kneeling position.";
	say "     While she's looking at you upside-down you need to smile. Ammy waits in this position for a few seconds then turns around and starts crawling into your direction sexily. On the heels of your feet she gets up and starts rolling her hips sensually while moving in closer to you again. Standing and shaking right in front of you, you cannot else but eye the equine's hips thrusting at your face, still being covered by this way too skimpy black lacy panties.";
	say "     You don't even notice she's so close already that she's standing directly over your lap, slowly spreading her legs and moving downwards giving you another great view of her wonderful breasts, with your eyes being exactly on one level with them. She ends up sitting on your lap again, this time facing you. The white equine slowly places her hands on your upper arms, moving upwards to your shoulders while she rolls her head upwards, her mane dancing with her movements. A low groan escaping her sweet mouth as she ends up almost touching your lips with her soft muzzle, her hands sliding down your back, her boobs touching your [ammy_playerchestdesc]. All of her otherwise so rhythmic movements stop at this point suddenly as she looks deep into your eyes and takes your wrists with her petite hands, placing them onto the sides of her soft furred hips.";
	say "     Will you grab her hips and possibly continue further or rather back up?";
	say "     (Yes = Grab them, No = back up)";
	if player consents:
		say "     'Ahh... I'm glad you approve lovely.' Ammy whispers into your ear in a slow, chanting voice.";
		now AmmyAffection is 6;
		now lastfuck of Ammy is turns;
		say "[ammy_sex_lap]";
	else:
		say "     After letting a few seconds pass in this loving pose the Ammy gets up again, rubbing her crotch against your chest and face, then turns around again, stretching her unguligrade legs while touching her hooves with her fingers, giving you another fantastic view of the bulges under her black panties.";
		say "     With a thud she falls back, sitting sideways in your lap again. 'Nyehehee~ quite the gentleman, are we? I really did enjoy that! Hope you did too~' You need to blush as she looks at the [if player is male]raging erection in your pants[else]dripping wet arousal between your legs[end if].";
		say "     'And... who knows, maybe we can do something even more private next time...' the white horse tells you in a seductive and sexy voice followed by a one eyed wink before she gets up and walks away.";
		[say "First you wonder why she was in such a rush suddenly, but as you look after her walking a bit uncomfortably you just need to grin as you notice the bulge in her panties have grown a little bigger too.";]


HornyHorsey ends here.
