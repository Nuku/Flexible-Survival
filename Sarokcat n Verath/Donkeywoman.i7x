Version 1 of Donkeywoman by Sarokcat n Verath begins here.
[ Version 1.4 - Player victory (male) - Stripes ]
[ Version 1.3 - Touch-ups and cross-contamination w/Donkeyman for certain losses/conditions ]

"Adds a Donkeywoman to Flexible Survival's Wandering Monsters table"

Section 1 - Monster Responses

donkeywomanbeaten is a number that varies.
nodonkeywomansex is a number that varies.
donkeywomanfucked is a number that varies.

when play begins:
	add { "Donkeywoman" } to infections of girl;
	add { "Donkeywoman" } to infections of furry;


to say Donkeywoman wins:
	say "     The donkey woman laughs in amusement as you collapse helplessly before her. 'Is that all you have in you?  I do so enjoy it when they put up more of a struggle,' she says with a chuckle as she hauls you to your feet before pinning you up against the wall. 'And now for the fun part,' she says with a wicked grin as she traces the tip of her whip over your chest teasingly.";
	if cocks of player > 0 and bodyname of player is "Donkeyman" and cockname of player is "Donkeyman" and a random chance of 3 in 5 succeeds:
		say "     The feel of the supple leather trailing over your skin makes you groan with arousal, and she snickers as she reaches out to stroke your already powerfully erect cock teasingly. 'It seems you're well on your way to becoming a donkey plaything,' she asks with an evil chuckle as she rubs her soft leather clad body up against you teasingly. 'I see you've not been harnessed up properly. So no chosen mistress yet?' she asks teasingly. As she speaks, she uses the handle of her whip to jiggle your [ball size] a little, as if examining or weighing them[if cock width of player < 5] disdainfully[else if cock width of player < 8] critically[else if cock width of player > 15] almost longingly[end if]. A shiver of pleasure and fear runs down your spine as you picture yourself trussed up as the playtoy for one of these kinky, dominant donkeywomen. Her hand strokes your [cock of player] shaft again teasingly, distracting you from your thoughts as she presses you up against the wall even more eagerly than before.";
		say "     You find yourself groaning as she lowers herself down and begins licking and teasing at the tip of your [cock of player] rod. Her soft, flexible lips feel amazing as she runs them over your cock, nibbling and rubbing it teasingly with her muzzle even as her flexible tongue licks along your length. Awash in the pleasure, your subby donkey instincts keep you from thrusting into her muzzle or pulling her head onto your cock, your infected body recognizing the dominant femme's authority over you. She works your excited member with her hands and mouth until you're right at the edge before stopping. You release a whimpering bray and your on-edge donkey dick bobs with need while she chuckles with amusement. 'Not so fast, you silly burro. You know you can only get to cum when your mistress says you can,' she teases. 'And I have plans for this [if cock length of player < 12]pitiful[else if cock length of player < 24]fine[else]impressive[end if] donkey meat of yours. Let's give you a test ride to see if you're worthy of a proper mistress.'  With that said, the leather-clad jenny winds a loop of her whip around your neck and tugs you down to the floor with a sharp pull.";
		attempttowait;
		say "     With a tight grip on her whip like a collar and leash, she grabs your equine rod and holds it upright. She tantalizes you with a slow display of her lowering herself down onto your [cock size desc of player] erection, pausing to let its flared tip kiss at her juicy folds before lowering herself fully down onto it with a satisfied bray. She goes slowly at first, mindful of how close to release you were not long ago. The feel of her tight, clenching tunnel with its wet heat around your donkey shaft has you panting and moaning softly, though that may also be the tight tugs she gives on the leather wound around your neck. Perhaps it is her dominant attitude, the feel of the leather or maybe even the limited air, but you grow all the harder for it as she rides you and you try your best to hold back until you're permitted your release.";
		say "     After riding you for a while, she gives your impromptu leash another harsh tug. 'You're doing well, little burro. Now show me how much of a strong worker you are and fuck me hard. You can cum when I do,' she says. Given permission to thrust and hopefully soon cum, you buck your hips up hard and fast, pounding into the lustful jenny's hot tunnel. She brays and moans atop you, leather-clad body arched with wild delight. And while the sharp motion causes her to pull back on the whip with every thrust you make, you manage to set up a rhythm and even start to take pleasure from the tight grip around your throat.";
		attempttowait;
		say "     Aroused by her dominance and prolonged teasing of you, you thankfully don't have to endure much longer before you're able to give the domineering jenny the powerful orgasm she requested. And with her crying out in orgasmic release, you're free to cum as well. You fire shot after shot of donkey cum into her vagina, [if cock width of player < 8]painting her vaginal walls with your meagre seed[else if cock width of player < 16]stuffing her vagina with your ample seed[else if cock width of player < 24]filling her womb with your copious seed[else]overfilling her womb to the point of bulging with your excessive seed[end if]. Slipping the whip from your sore throat, she gets up slowly with a satisfied grin on her face. 'You did well enough, I guess,' she teases, rubbing a hoofed foot against your spent and over-sensitive shaft. 'I'll tell the others about you. If you keep up your training, perhaps one of us might take you on as our plaything permanently.'  In your post-orgasmic haze, this sounds wonderfully appealing to you and you release a soft, moaning bray promising to be a good donkey and earn a powerful mistress of your own. She smiles at this response and strides off with a proud swagger, leaving you behind to recover from the ordeal.";
		if guy is banned or ( "Female Preferred" is listed in feats of player and "Submissive" is not listed in feats of player ) or "Dominant" is listed in feats of player:
			infect "Donkeywoman";
		else:
			infect "Donkeyman";
	else if cocks of player > 0:
		say "     The feel of the supple leather trailing over your skin makes you groan with arousal, and she snickers as she reaches out to stroke your already powerfully erect cock teasingly. 'Is my mount already ready to be taken for a ride?' she asks with an evil chuckle as she rubs her soft leather clad body up against you teasingly. 'And we don't even have you all harnessed up proper yet. What a naughty little donkey you will makes,' she says with a chuckle, her words sending a shiver of pleasure and fear down your spine as you picture all sorts of kinky scenarios the dominant donkeywoman might have in mind for you. Her hand strokes your [cock of player] shaft again teasingly, distracting you from your thoughts as she presses you up against the wall even more eagerly than before.";
		say "     You find yourself groaning as she lowers herself down and begins licking and teasing at the tip of your [cock of player] rod. Her soft, flexible lips feel amazing as she runs them over your cock, nibbling and rubbing it teasingly with her muzzle even as her flexible tongue licks along your length. Unable to resist the sensations, you begin thrusting your hips automatically as she lips and sucks on your cock, only to be stopped by the feel of her whip tapping your side lightly in warning. Shuddering with pent up desire, you hold still as she works your excited member with her hands and mouth, only to stop and lift her head back right as you are about to orgasm, your body crying out with need as she chuckles with amusement. 'Silly little donkey, you only get to cum when your mistress says you can,' she teases, causing you to groan as you slump against the wall, her enticing aroma of equine heat and leather filling your head, even as your neglected cock begs for that last bit of stimulation it needs.";
		attempttowait;
		say "     'Now maybe I will let you cum, if you promise to be a good little donkey for your mistress. Do you promise?' she asks teasingly even as she lightly traces one of her fingers along the bottom of your cock. The sensation causes you to gasp and you nod eagerly and stammer out your agreement, willing to agree to nearly anything at this point to finally be allowed to orgasm. She grins as you agree, one of her hands reaching down to begin stroking your cock again, even as the other brings your head down towards her muzzle, where she gives you a deep equine kiss. You groan into her muzzle as she strokes you even more enthusiastically than before, your orgasm building again quickly as she breaks the kiss. 'Now cum for your mistress,' she whispers into your ear as she gives one more powerful stroke of your cock. You find your body shuddering with pleasure as your long-awaited orgasm crashes over you, and you shoot your seed all over the hall and her hand, before finally slumping down against the wall exhausted.";
		say "     'That's a good donkey,' the sexy jenny nickers. 'Now remember your promise,' she adds with a chuckle as she licks a bit of your seed off of her hand. 'I look forward to seeing you back here again soon.'  She then saunters away down the corridors, leaving you to lay there and recover, wondering just what you have gotten yourself into in this place.";
		if guy is banned or ( "Female Preferred" is listed in feats of player and "Submissive" is not listed in feats of player ) or "Dominant" is listed in feats of player:
			infect "Donkeywoman";
		else:
			infect "Donkeyman";
	else:
		say "     The supple leather traces over your skin teasingly, making you shudder as your pussy dampens with arousal, the jenny chuckling at your reaction as her hand reaches down to stroke over your crotch teasingly. 'I would have thought a female would have more stamina than that. Look how hot and needy you are already,' she says with a soft tsking sound as she runs the tip of her riding crop up the inside of your thighs, making you groan with need. 'It definitely looks like you need a lesson or two in discipline and being a proper jenny, don't you?' she asks teasingly as her free hand strokes and plays with your erect nipples. You try to gather your wits together to answer her, only to be silenced by the touch of her finger to your lips. 'Lesson one - a pet doesn't talk back to their mistress,' the donkeywoman says with a mischievous twinkle in her eye as she begins to expertly tease your already hypersensitive body with her hands and her whip.";
		say "     You moan helplessly against the wall as she plays with you, whispering soft instructions into your ears about how to be a good little slave for your mistress as she keeps you expertly at the peak of arousal, unable to finally cum until your mistress lets you. Eventually when she has reduced you to whimpering desperately for completion, she teasingly slips a soft leather collar with a short lead around your neck. She then leads you up and down the hallway on all fours several times, waiting until you finally start acting like a properly submissive pet before finally allowing you to orgasm. The mind shattering pleasure of your long-delayed orgasm wipes you out completely, and you can hardly even hear your mistress's chuckle as she unhooks your lead. She says something about training you again soon, and while you don't quite catch the words, their meaning is heard by some now-tainted part of you. Your wonderful new mistress then saunters off down the hallways, leaving you to slowly recover your wits on your own... if you can.";
		if guy is not banned and ( ( "Male Preferred" is listed in feats of player and "Dominant" is not listed in feats of player ) or "Submissive" is listed in feats of player ):
			infect "Donkeyman";
		else:
			infect "Donkeywoman";


To say Donkeywoman loses:
	choose row monster from the table of random critters;
	increase donkeywomanbeaten by 1;
	if ( cocks of player is 0 ) or ( nodonkeywomansex > 2 and the remainder after dividing nodonkeywomansex by 5 is not 0 ) or ( donkeywomanbeaten < 3 ):
		say "     The powerful-looking mistress seems somewhat less sure of herself as you drive her back[if donkeywomanbeaten > 1] again[end if] with your blows. 'I think you might just be a bit too stubborn for me to train right now,' she says with a sigh as she back off down the passageway carefully. 'Though you certainly would make a good jenny from the looks of things. Don't worry though, I'm sure we will bump into each other again soon, and then I can give you that lesson I promised,' she adds with a smirk as she vanishes down the dimly lit corridors, leaving you standing victorious in the middle of the hallway.";
		if cocks of player > 0 and donkeywomanbeaten > 2, increase nodonkeywomansex by 1;
	else:
		say "     Having been beaten, the powerful-looking mistress seems somewhat less sure of herself as you drive her back with your blows. She starts to complain about your stubbornness as the others have, but you're tired of hearing it from these creatures. Grabbing her, you toss her to the floor roughly. Seeing the donkey female like that is strangely exciting and you're tempted to try teaching her a hard lesson with your hard cock. Shall you give into this urge and fuck her?";
		if the player consents:
			say "     Grabbing the dominant donkeywoman roughly, you pin her to the ground and climb atop her. She struggles and spits in your face, but you've had more than enough of her attitude. Unzipping her leather corset from the bottom, you uncover the dark folds of her pussy and brush a finger teasingly across them. She bites her lip, holding back a whimper even though her hips rock up to press against your touch.";
			say "     Rolling the jenny onto her side, you hold one of her legs over your should while pushing your [cock size desc of player] cock into her juicy cunt. This time she does moan, which brings an even bigger grin to your face. Seeing little reason to restrain yourself against the aggressive and domineering donkey, you start thrusting right away rather than giving her [if cock length of player > 24]a much needed[else]an[end if] opportunity to adjust to having your [cock of player] shaft thrusting into her juicy cunt.";
			attempttowait;
			say "     Spotting her riding crop, you grab it and start whacking her ass while fucking her. She clenches her fists and does her best to hold back her cries, but the occasional moan or whimper of kinky pleasure escapes her lips despite herself. You pound away at the otherwise dominant jenny all the harder, delighting in having turned the tables on her. And from the way her cunt clenches and quivers around your shaft with every blow, you can tell it's exciting her as well despite her resistance.";
			say "     Dominating the donkey mistress turns out to be very enjoyable, turning you on greatly. Pounding her so vigorously without letting up also doesn't help your stamina, pushing you to a fast climax. You end up cumming hard, driving your cock deep into the obstinate female and emptying your balls into her as she brays in orgasmic delight. Once spent, you pull out and slap her across her long face with your messy cock, telling her to get out of here. With no chance to recover after her pounding and wild orgasm, she staggers to her feet, grumbling that she'll teach you a lesson for this next time[if donkeywomanfucked > 2]. You laugh that you look forward to her trying again, telling her she'll get more of the same if she does[end if].";
			if guy is not banned and "Submissive" is listed in feats of player:
				infect "Donkeyman";
			else:
				now sex entry is "nochange";
				infect "Donkeywoman";
				now sex entry is "Female";
			now nodonkeywomansex is 0;
			increase donkeywomanfucked by 1;
		else:
			say "     Rather than give into the temptation, you give the donkeywoman a rough shove with your heel even as she tries to rise. She bites back a whimper and forces herself to her feet defiantly. 'You would make for a fine jenny. Clearly you're in no mood for that lesson right now. But don't worry, I'll try again when you're in a less obstinate mood, my recalcitrant plaything.'  With that, she staggers off down the dimly lit corridor, doing her best to maintain her authoritative poise despite her defeat.";
			increase nodonkeywomansex by 1;


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Donkeywoman";
	now attack entry is "[one of]The sexy donkeywoman lets out a loud braying laugh as she mocks your attempt to escape, the sound making you feel surprisingly submissive.[or]She lashes out at you with her short riding crop, its stinging bite making you feel strangely more submissive with each strike.[or]She reaches out and traces the tip of her whip over you skin teasingly, the touch of the soft leather making you shudder with desire.[or]She raises her whip to strike at you, and as you duck away, her other hand lashes out at you and strikes you square in the face, knocking you back![or]She strides forward confidently, describing lovingly just what kind of strangely sexy bondage games she has in store for you, her words making you shudder slightly with a strange desire to give in to the powerful female and let her have her way with you.[or]She charges right at you and twists aside at the last second, bringing her hand around to grab at your crotch teasingly.[at random]";
	now defeated entry is "[Donkeywoman loses]";
	now victory entry is "[Donkeywoman wins]";
	now desc entry is "[mongendernum 4]     Wandering through the building, you round a corner and come face to face with a Donkeywoman. The tall Donkeywoman looks down at you with a derisive smirk. 'What do we have here?' she asks as she roughly grabs your chin and twists your head side to side, examining you. Too scared to say anything, all you can do is look at her with a dumb expression on your face. Looking her over, you can see that she is dressed in a tight studded leather corset that is barely able to contain her more than ample tits as well as a spiked leather collar and spiked cuffs. She is wearing a pair of modified thigh high boots. Her sleek gray fur and donkey mane Mohawk give her a sinister air. Tapping the whip she's carrying in her other hand against her thigh, she says 'I think someone needs a lesson in discipline. Isn't that right, my little soon-to-be [if cocks of player > 0]donkey[else]jenny[end if]?'"; [ Description of the creature when you encounter it.]
	now face entry is "long, asinine muzzle, with two large equine ears and a short close cropped mane of hair, and a plain leather collar which complements your rather sexy donkey-like face"; [You have a (your text) face."]
	now body entry is "both strong and slender, your well-muscled form and powerful limbs easily suited for both work and sex, and you balance easily on the balls of your slightly hoof-like feet, even as you run your slender hands over your extremely sensitive and aroused body happily";
	now skin entry is "[one of]gray furred[or]silken gray[or]gray hide covered[at random]";
	now tail entry is "A long, sexy black donkey tail stretches out from above your surprisingly muscular ass, its tip trailing just above the ground as you swish it this way and that, finding yourself feeling surprisingly happy at how sexy your new donkey like tail makes you feel.";[ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "[one of]thick[or]equine[or]donkey[at random]";
	now face change entry is "it flattens and stretches out into a more equine like muzzle, your eyes shifting position even as your hair shifts into a short mane, and your ears reposition themselves on top of your head. Lustful thoughts fill your mind, though something seems missing still. Looking around, you spot a bit of leather lying there conspicuously on the ground, and picking it up see that it seems to be a plain and simple collar. Grinning slightly at your luck, you latch the collar loosely around your throat"; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "it shifts and seems to change, growing both more slender and muscular at the same time, your heels rising up slightly as you balance on the balls of your feet as your toes seem to harden slightly, becoming not quite hoof like, but much stronger than before. A rush of arousal surges through you as your body finishes changing into a slightly more donkey like form"; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "it seems to stretch and toughen slightly into a more donkey like hide, silken grey donkey fur pushing out of your changed skin and making you shudder with pleasure as your new coat finishes growing in";
	now ass change entry is "it seems to shift slightly, the muscles moving around as it plumps out, even as soft silken strands of donkey hair begin to push their way out of your spine. Wiggling your ass experimentally, you find your new donkey like tail feels surprisingly good and amazingly sexy as it swishes through the air behind you";
	now cock change entry is "it draws up close to your body, its tip flattening as it flares out into a more equine shape as your skin bulges out to form a proper donkey-like sheath around it"; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 18;
	now dex entry is 22;
	now sta entry is 16;
	now per entry is 18;
	now int entry is 13;
	now cha entry is 20;
	now sex entry is "Female"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 45;
	now lev entry is 6; [ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ]
	now wdam entry is 8; [Amount of Damage monster Does when attacking.]
	now area entry is "Stable"; [ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 0; [ Length infection will make cock grow to if cocks]
	now cock width entry is 0; [ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 2; [ Number of Breasts infection will give you. ]
	now breast size entry is 6; [Size of breasts infection will try to attain ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 15; [ Length of female sex infection will attempt to give you. ]
	now cunt width entry is 10; [ Width of female sex infection will try and give you ]
	now libido entry is 75; [ Amount player Libido will go up if defeated ]
	now loot entry is "lucky horseshoe"; [ Loot monster drops, ]
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]slender[or]strong[at random]";
	now type entry is "[one of]asinine[or]donkey-like[at random]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default"; [ Row used to designate any special combat features, "default" for standard combat. ]


when play ends:
	if bodyname of player is "Donkeywoman":
		if humanity of player is less than 10:
			say "     Finally unable to deny your body's desires any longer, you return to the stables and the comfort and company of your fellow donkeys, sure that they will understand your growing desire to dominate and be dominated. Once back at the Stables and with the scent of leather and equine sex filling your head, you feel even more aroused than ever as you head out into the hallways looking for some fun. Almost immediately you run into an extremely sexy looking jenny, her finely tooled leather a cut above the rest, and the glint in her eye as she looks you up and down makes you shudder with anticipation. The sexy beast wastes no time in leading you to her own personal tack room, where several sexy looking donkeys are already bound and waiting to be played with. The sight of all that bound equine flesh makes you quiver with excitement and arousal. Seeing your reaction, the sexy donkey mistress grins, seemingly pleased at how you are adapting, and soon she is showing you just how to be a proper little top for all the other donkeys, by topping you herself like a proper mistress.";
			say "     Soon you find your place with your new mistress as her assistant. She shows you how to be a proper dom and teaches you that most people are so much happier once they learn to embrace their own submissive natures, something you can certainly understand from personal experience as your mistress's favorite fucktoy and assistant!  After a while you show a positive talent for the work, and she lets you start topping some of her pets while she watches, eventually even helping you start training your own little pets to be properly submissive to your needs. Soon after she helps you set up your own little playroom. Although it seems rather empty of lovely moaning donkey pets for a little while, it soon turns out you got yourself set up just in time, as a large influx of soldiers finds the red light district, and some of them even make their way into the Stables. Before long, you have a lovely room full of bound and helpless soldiers, naked and waiting for you to teach them to embrace their submissive natures and serve your every whim... and you just can't wait to get started!";
		else:
			say "     When the military finally show up to rescue you, you are waiting impatiently for them to arrive, eager to get out of the city and back out into the real world. When their scientists want to examine you more closely however, you panic slightly, afraid they will hold you for all kinds of strange experiments, and not allow you to leave. In desperation you find yourself drawing upon several of your lessons from the city about how to manage people, and using your new more dominant instincts to your advantage, you convince the scientists to let you go free. Once you are free however, you find your new instincts and desires to be harder to ignore, though they are often so beneficial as you begin to make your way in the world again, that soon you rarely bother trying to ignore them. Your dominant personality, and knowledge of just how to get the best results out of people, soon has you rising through the ranks in your new career. The money makes your life increasingly more comfortable, and soon you put your ability to spot the submissiveness in most people to use. As you recruit several good people, you train them to be properly submissive and to follow your orders completely. After several years, you have control of the largest division in your company, and it looks like you will soon be getting a seat on the board of directors as well. You just can't wait to show the board just what they have been missing by not being properly submissive to a sexy little donkey like yourself...";

Donkeywoman ends here.
