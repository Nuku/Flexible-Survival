Version 3 of Deer by Stripes begins here.
[Version 3.1 - Restructured for dialog and advancement.  Oversized sex added.  First Hospital Quest 2 optional task - Stripes]
[- Originally Authored By: Nuku Valente -]

"Adds a deer to Flexible Survival's Wandering Monsters table, With Impreg chance"

Section 1 - Event

Unusual Creature is a situation. It is resolved.
The sarea of Unusual Creature is "Park".

After resolving a Unusual Creature, try looking;

Instead of resolving Unusual Creature:
	say "     Your ears pick up a faint sound in your searchings and you approach carefully. Peeking through the bushes, you see a deer, bipedal, female if not for the thick black shaft that dangles between her legs. She is crying quietly, face buried in her palms, body curled against a tree. She doesn't react as you slip in closer, not even noticing you until you're almost on top of you. She gasps loudly when she does notice you, throwing herself back against the tree with wide eyes.";
	say "     'Don't look at me!' she cries, falling in against herself, hugging herself to hide her alien form.";
	say "     Do you grab her?";
	if the player consents:
		say "     You lunge for her and grab a long-limbed arm. Her brown fur is soft to the touch, warm as well. She's wrenched to her feet with a cry, and struggles, but is unable to escape your grip as you haul her back through the city directly for the lab. Sometimes the direct answer is the best one.";
	otherwise:
		say "     Do you console her?";
		if the player consents:
			say "     You kneel beside her and take a hand. Rubbing gently, you tell her that she's not ugly at all. She refuses your word at first, but slowly warms as you coo soft encouragements. She suddenly pulls you close and kisses firmly, her slender snout against your face for a moment. She quickly agrees to come back with you to the lab, smiling as she goes.";
			now deerconsent is 1;
		otherwise if libido of player is greater than 50 and cocks of player is greater than 0:
			say "      Unsure what to do, you obey the urgings of your [cock of player] cock. You grab her and push her to the ground, belly up. Your hands grab at her generous breasts as you slip into her wet, grasping, cunt. She squeals, at first with surprise, then increasingly with pleasure, rising her hips to meet your powerful thrusts. Your bodies dance together, her own cock grinding against your belly each time you plunge deep into her. Her cunt tightens like a vice around you before she arches her back and bleats in delight. You can feel your balls clenching in response, and you fill her belly with hot gushes of seed.";
			attempttowait;
			say "     Sated, she hugs tightly to you, and agrees to accompany you to the lab, blushing and satisfied looking the whole way.";
			now deerconsent is 1;
		otherwise:
			say "     Unsure what to do, you stand and wait. She eventually stops her crying and looks up at you with a confused expression. 'What do you want?' she asks, making her way to her hooves. You explain that you'd like her to come with you and she looks around a moment before shrugging, 'I have nothing better to do,' she admits, and follows you, a little sullen.";
	now battleground is "void";		[blocks a random fight after this event]
	now Unusual Creature is resolved;
	move Susan to primary lab;
	move player to primary lab;


Section 2 - NPC Basics

deerconsent is a number that varies.
susanoversize is a truth state that varies.  susanoversize is usually false.

Susan is a person. "Susan, a bipedal deer.". The description of Susan is "[susandesc]".
The conversation of Susan is { "Bleat!" }.
The fuckscene of Susan is "[sexwithsusan]".

to say susandesc:
	if debugactive is 1:
		say "DEBUG ->  HP: [hp of Susan], deerconsent: [deerconsent], susanoversize: [if susanoversize is true]True[otherwise]False[end if]  <- DEBUG[line break]";
	say "     A bipedal deer with soft brown fur and creamy off-white belly and undertail.  Her nose, eartips and hands are dark hues.  She has large cream covered breasts capped with thick black teats.  She has a hungry, lustful look in her eyes, one hand usually straying to her cock, stroking it almost absentmindedly.  It is disturbingly human in appearance, ebon-black fleshed with a cream sheath at the base.  She has large plum sized balls contained in a creamy coloured softly furred sac.  Despite her animalistic appearances, she has hair like a human, running down to a little past her shoulders, a little darker than the brown fur of the majority of her form.";

instead of sniffing Susan:
	say "The herm deer has a mix of doe and buck scents, heavy with arousal and longing.";

instead of conversing the susan:
	if deerconsent is 0:
		say "     Rather than talk to you, she avoids you entirely.  Eventually you give up in trying to approach her at all as she storms off to another part of the building.";
		remove susan from play;
		now deerconsent is 2;
	otherwise if deerconsent is 1:
		say "     She smiles as you approach her, and reaches to take one of your hands.  'Ignore the creep in the hazmat,' she says.  'This is just about us.  I want a mate, a partner.  Will you be it?' she asks as she leans in and licks your hand once.  Her eyes roam hopefully over your [bodydesc of player] form with perked ears and a twitching tail.";
		say "     Will you agree to be her mate?";
		if the player consents:
			if "Female Preferred" is listed in feats of player:
				say "     She frowns slightly, 'Oh dear, uh, pun not intended.  You simply cannot be my stag.  I can smell it.  Sorry...' She sighs and turns away, walking off.";
				move susan to dark basement;
				remove susan from play;
				now deerconsent is 2;
			otherwise:
				say "     'Really! Fantastic.  I will be your doe.  You will be my stag,' she says with a dreamy sigh.";
				say "     She wraps her arms around you in a firm hug, pressing needfully against you.  Warm tingles sweep over your form as change is felt building.  'Go talk to the doctor. I will wait for you.'";
				deerfy;
				now deerconsent is 2;
		otherwise:
			say "     She looked crushed at your refusal, but instead of arguing the case further, just sulks and wanders off.";
			move susan to dark basement;
			remove susan from play;
			now deerconsent is 2;
	otherwise if deerconsent is 2:
		say "     'You should go talk to the doctor first.  I will wait for you.'";
	otherwise if hp of Susan is 2:
		try fucking the susan;
	otherwise if hp of Susan >= 3 and hp of Susan < 50:
		let doecheck be false;
		if bodyname of player is "Doe":
			now doecheck is true;
		say "     '[one of]I guess it's alright living here.  I mean, the doctor's nice enough... though he does look at me oddly at times.'[or][if doecheck is true]I'm so glad you decided to be my mate,' she says happily[otherwise]Please don't forget about me when all of this is over,' she says with concern[end if].[or][if lastfuck of Susan - turns >= 4 and cocks of player > 0]We should have some more fun again soon,' she says eagerly[otherwise if lastfuck of Susan - turns >= 4]Let's see if we can't get your cock back so you can be my buck again[otherwise]This transformation's made me so excitable.  With the way I'm feeling, I think I'll be ready for another round of fun soon,' she says, stretching and thus inadvertantly putting her sexy doe body on display[end if].[or]You're such a brave buck to keep going out there.  I was so, so scared and confused that I almost broke down completely.  Thank you for finding and helping me,' she says affectionately.[or]There's not too much to do around here when you're not around.  Dr. Matt doesn't want me touching stuff and I don't think that scary dragon downstairs likes me very much.'[or][if hp of Orthas > 3]I don't like how that dragon downstairs looks at you, my deer[otherwise]I don't think that scary dragon downstairs likes me very much[end if].'[at random]";
	otherwise if hp of Susan is 50 and hospcountdown - turns >= 12:
		say "     Susan glances over at the busy Doctor Mouse and moves further away from him before speaking to you.  'I could use your help, my mate.  Now, the doctor's been nice to me and makes sure that I'm brought food, but it's this icky hospital stuff.  He says its perfectly nutricious and all of that, but it's all bland mush.  If anything, it tastes more like medicine and anticeptic cleaners than food.  I need you to bring me some food and water so I can have something edible from time to time.'";
		say "     She takes another glance over at the mouse and, finding him still busy, continues.  'I was helping him when he was figuring out how that enhancement machine we took from the lab.  I've also been taking notes for him while he's run some tests on the staff.  I can fudge those numbers to hide that I used it on you.  But I don't want to risk upsetting the doctor for nothing.  Gimme about a half-dozen meals and bottles of water and we'll call it even,' she says with a grin.";
		now waterneed is 6;
		now foodneed is 6;
		now hp of Susan is 51;
	otherwise if hp of Susan is 51:
		now foodcount is carried of food;
		now watercount is carried of water bottle;
		now tempnum is foodneed;
		now tempnum2 is waterneed;
		repeat with zz running from 1 to 6:
			say "[thefoodening]";
			say "[thewatering]";
		if tempnum > foodneed:
			if foodneed is 0:
				say "     'Great, hon!  I should be able to hold out for quite a while with all this,' she says, stashing the food you've brought in a locker that's been provided to her.  'I promise I'll use it sparingly.'  You quietly look over your depleted supplies, hoping you have enough for yourself as well.";
			otherwise:
				say "     'I'll tuck that away for later.  I'll only use a little every now and then,' the doe says, taking the food from you.  'I could still use another [foodneed] more meal(s) though.'  You quietly look over your depleted supplies, hoping you have enough for yourself as well.";
		if tempnum2 > waterneed:
			if waterneed is 0:
				say "     'Great, sweetie!  A mouthful of this after every meal'll help wash the taste of that hospital gunk out of my mouth after I have to choke it down.  Even the water they bring me in here tastes a little off,' she says quietly.  She discretely stashes the water in her personal locker.  You quietly look over your depleted supplies, hoping you have enough for yourself as well.";
			otherwise:
				say "     'Let me put that away for safe keeping.  Every little bit helps,' the doe says, taking the water from you.  'I could still use another [waterneed] more liter(s) though.'  You quietly look over your depleted supplies, hoping you have enough for yourself as well.";
		if foodneed is 0 and waterneed is 0:
			say "     Having safely stored away the supplies, Dr Matt turns back to you as if wondering why you're still here when there's work to be done[if susan is present].  Susan politely coughs and nods towards the nanite enhancement device while tapping her hoofed foot on the floor[otherwise].  You glare at the doctor for a few seconds before finally pointing to the nanite enhancement device[end if], at which point Dr Matt brushes his gloved hands together and nods, heading over to it as if that was his intention all along.";
			wait for any key;
			now foodwaterbonus is 1;
			featget;
			attempttowait;
			now hp of Susan is 52;
		otherwise if tempnum2 is waterneed and tempnum is foodneed:		[no change]
			say "     'Please don't forget about those supplies I need, my brave stud,' she says quietly.";
			say "     [bracket][foodneed] food and [waterneed] water bottle(s) still needed.[close bracket][line break]";
	otherwise if hp of Susan >= 50:
		let doecheck be false;
		if bodyname of player is "Doe":
			now doecheck is true;
		say "     '[one of]I guess it's alright staying here.  I mean, the doctor's tries to be friendly enough, though he can be a bit cold at times.'[or][if doecheck is true]I'm so glad you decided to be my mate,' she says happily[otherwise]Please don't forget about me when all of this is over,' she says with concern[end if].[or][if lastfuck of Susan - turns >= 4 and cocks of player > 0]We should have some more fun again soon,' she says eagerly[otherwise if lastfuck of Susan - turns >= 4]Let's see if we can't get your cock back so you can be my buck again[otherwise]This transformation's made me so excitable.  With the way I'm feeling, I think I'll be ready for another round of fun soon,' she says, stretching and thus inadvertantly putting her sexy doe body on display[end if].[or]You're such a brave buck to keep going out there.  I was so, so scared and confused that I almost broke down completely.  Thank you for finding and helping me,' she says affectionately.[or]I'm glad Dr. Mouse is giving me little things to do around here.  It helps keep my mind occupied while you're away.  Those big orderlies don't seem particularly friendly, so it's not like I can chat with them.'[or][if hp of Orthas > 3]I'm glad we're done with that dragon.  I didn't like you she looked at you[otherwise]I don't like how those jaguars look at me sometimes.  I can't help feeling like they see me as dinner... but that might just be the timid doe in me talking[end if].'[at random]";


Section 3 - Sex with Susan

to say sexwithsusan:
	if lastfuck of Susan - turns < 4:
		say "     'As fun as it is, I do need a little break every now and again, my sweet.'";
	otherwise if hp of doctor matt is less than 8:
		say "     She blushes and nudges you, 'You should talk to the Doctor first.'";
	otherwise if cocks of player is 0:
		say "     She grinds against you, a hand grabbing between your legs in an obvious groping before her long ears fall.  'Poor baby!'  She leans up to kiss you, lips to lips, infectious tingling sweeping through your body in a powerful rushing wave.  She runs her hands over your [bodydesc of player] body, caressing and snuggling you as the transformations begin.";
		deerfy;
		say "      'Come back later and we can have some fun,' she bids with a wag of her short tail and a smile on her snout.";
		now lastfuck of player is turns;
	otherwise if libido of player is less than 50:
		say "      She rubs up against you gently and runs her hands across your [skin of player] chest.  'It is good to see you,' she whispers as she snuggles close to your [bodytype of player] body, but makes no attempt to push it further than soft chatter and close hugs.";
		deerfy;
	otherwise:
		if cock length of player is greater than 15:
			if susanoversize is false:
				say "     Susan eyeballs your [cock size desc of player] shaft a moment before she shakes her head vigorously.  'That's got to be too large for me,' she exclaims, then leans in.  'Isn't it?'  The sexy doe takes in the scent of your manhood with a soft, needy sigh and then lets her warm tongue bathe across it.  She strokes your [cock of player] pole with her soft palms and gives you another moaning lick.  Pleasant tingles run through your loins as she continues to lather your cock with her tongue until it's glistening with her saliva.";
			otherwise:
				say "     Susan eyeballs your [cock size desc of player] shaft with wide-eyed amazement.  'I was so surprised you could take me with that big cock of yours before.  Let's go for it again.  Just... just go slow,' she adds, your impressive size still quite daunting.  The sexy doe leans in and takes in the scent of your manhood with a soft, needy sigh.  Her soft warm tongue bathes over your [cock of player] pole as she strokes it with her soft palms.  Pleasant tingles run through your loins as she continues to lather your cock with her tongue until it's glistening with her saliva.";
			attempttowait;
			say "     You guide the pretty doe to lay on her back and spread her legs.  Now longing for the [cock size desc of player] cock she's been worshipping so ardently, she puts her arms around you as you get into position atop her.  Lining up your cock to her juicy pussy, you lock your lips to hers and ease forward[if cock length of player > 24].  You go extra slow for your delicate doe, letting her cervine cunt adjust and stretch to accept your massive meat[otherwise].  You go slow for your loving doe, letting her cervine cunt adjust and stretch to fit your oversized meat[end if].  Susan moans into the kiss and hugs you all the tighter, her body quivering in delight as she's penetrated to fully.";
			say "     As you break the kiss and lean up, you're treated to the lovely sight of your cervine lover panting in pleasure as you fuck her.  Her cream-furred breasts jiggle and nicely with every large thrust of your pulsing rod into her[if cock length of player >= 36].  Her chest is stretched visibly by your titanic member's phallic shape[otherwise if cock length of player >= 24].  Her tummy is stretched by your mighty member to raise a phallic bulge that moves with every thrust[otherwise].  Her tummy shows a notable bulge from having your large member stuffed inside her[end if].  She rubs a paw over her plumped tummy in blissful awe.";
			attempttowait;
			say "     'Do it.  Do it, my big buck.  Give it to me and fill your needy doe-oh-oh-oooooh!' she calls out in orgasmic delight.  The feeling of having her hot tunnel squeeze and quiver around you as her femmecum soaks your crotch is wonderful.  It's so good, you can't hold back for long before you two are crying out in climactic release.  You pump your [cum load size of player] load into the moaning doe, painting her uterus with your semen.";
			if susanoversize is false:
				say "     The two of you kiss and snuggle for a while after sex.  You run your hands over her [if cock width of player > 30]cum-swollen belly[otherwise if cock width of player > 20]visibly rounded tummy[otherwise]soft tummy[end if] while she caresses your sides.  'Ooo!  That was... wow!  It's hard to believe I managed to fit that huge cock of yours.  Guess it's another crazy thing about that crazy world.  Ohhh... though I think I'm going to need a bit of a break before going again after that,' she says, brushing her fingertips across her stretched, swolled and leaking pussy.";
				now susanoversize is true;
				now lastfuck of susan is turns - 4;
			otherwise:
				say "     The two of you kiss and snuggle for a while after sex.  You run your hands over her [if cock width of player > 30]cum-swollen belly[otherwise if cock width of player > 20]visibly rounded tummy[otherwise]soft tummy[end if] while she caresses your sides.  'Ooo!  That was... wow!  Such a big, virile buck you are,' she says, brushing her fingertips across her stretched, swolled and leaking pussy.";
		otherwise if cock length of player is less than 6:
			say "     She kneels down in front of you and cups your [cock size desc of player] [cock of player] tool gently, stroking along it with the bare tips of her furry fingers. She firmly strokes along your swiftly hardening shaft as she gazes up into your eyes, 'My great buck, you need to be as large on the outside, as you are on the inside.' You aren't entirely sure what part of you is big on the inside, but cease to care as her snout descends over your cock and begins to suckle noisily at you. Her skilled fingers dip lower to caress your [short ball size] orbs in slow teasing as she bobs against you, working you to greater heights as the tingle of change sweets through you, intensifying with every passing moment.";
			deerfy;
			follow the sex change rule;
			if cock length of player is less than 6:
				say "     The pleasure haze ebbs just slightly as she pulls free of you and returns to slow stroking, 'Still not quite large enough to sate me, my virile buck. We will just wait a little longer.' Her tail wags behind her excitedly as she leans in to lap over the head of your shaft, insufficiently sized or not, and her strokes become firm and fast. Your groans mix with her own as if she could feel your pleasure as if it were within her own body. She squeezes at your entire member with her softly furred paws and your balls clench. Your seed sprays in great milky shots across her long snout, drawing a soft bleat of approval from her. Her long tongue darts to collect the treasure as she raises to her feet, 'Come back later, we can try again.'";
			otherwise:
				say "     With your [cock size desc of player] member now large enough to please, she pushes you back, popping free of you with a lick over her lips. She turns slowly, hands running over her athletic breasts, her wide hips, bending over as she completes the turn away from you. Thick but short tail flits upwards to expose her damp and dewy lips to your view, hot, flush with her mounting arousal. Mounting is just what you had in mind, and you waste no time grabbing her and pulling her back onto your thick member, starting to drive harder and faster as your hands settle on her hips to pull her back against your eager pounds.";
				attempttowait;
				say "     She is no idle partner, driving herself back against every hungry push, groaning, gasping with rising bliss. Her hoofed hands run over your [bodydesc of player] body, lavishing attention upon her lover.  The feel of her wet, grasping cunt wrapped snugly around your [cock of player] member has you almost dizzy as you rock smoothly against her. Your balls pull up sharply, starting to fill her womb with thick gushes of hot seed, making her belly swell forward with the precious load, her body trembling under your own as she shares in the climax with you, squeaking once before a full bleat escapes her.";
				attempttowait;
				say "     You settle down with her, kissing her and licking across her snout as she returns the affections to your face, hugging close. As the lust drains from you both, you eventually get up together. Sharing one last hug, you return to the task of surviving.";
		otherwise:
			say "     She grabs directly for your [cock size desc of player] [cock of player] cock and grins up at you as she strokes it, 'It is just right,' she declares as she pushes you back to the ground, guiding you to lay down and slipping up on top of you. Her warm frame presses softly as it goes and she lines herself up, one hand holding the thick tip of your member, the other parting her nethers. She sinks down along your member, shuddering as it fills her grasping tunnel perfectly. Her wet labia sink down to your groin as she settles on you, breathing hard and just enjoying the feelings for the moment as she gazes into your eyes with a burning affection.";
			attempttowait;
			say "     You reach for her sides, trailing upwards and caressing her chest. Fingers catch thick black teats and her back arches towards you as you flick and tease at them. Her hips raise and fall a few inches at a time, wetly sliding across your excited member, wedged deep inside of her.  Her own member stands stiff and proud, twitching with her pleasure and dripping thick bits of clear precum along its length and onto your [bodytype of player] body even as she rides against you, taking your cock deeper with every drop of her curvy form against you. Your hips are soon moving faster, driving up, bouncing her in firm shuddering motions. Her breasts heave against your grasping hands are you hold her, drawing her down against your increasingly frantic ruts.";
			attempttowait;
			say "     She leans back away from your hands, her hands settling on the ground as she bends almost backwards, rutting in a bent position. Your hands find her belly and sides, rubbing and caressing her, hungry eyes taking in the bulge that your own cock creates along her belly, stretched taut in her new position. She moans softly as her shaft tenses, and begins to fire, splattering herself with her seed as it arcs through the air in powerful streams. A small part of yourself wonders what it would feel like to be filled with that same seed, but that part is quieted for the moment as your own shaft tenses and lurches, filling the willing doe with your fertile offering.";
			attempttowait;
			say "     She straightens, then flops on top of you, squirming as you round her with your cum. Her messy front presses stickily to your [skin of player] front as she hugs tightly to you, heedless of the sticky warmth she shares with you. When your shaft has calmed and lays half firm within her, she leans up to kiss you on either cheek. 'I love you.' she whispers. You smile, grabbing her at the bottom and squeezing her close to snuggle for a moment, enjoying the peace before you are forced to return to other tasks.";
		now lastfuck of Susan is turns;
		deerfy;
		if hp of Susan is 2, now hp of Susan is 3;

[			- previous content for oversized player cock - 
				say "She eyeballs your [cock size desc of player] shaft a moment before she shakes her head vigorously, 'Too large for me,' she exclaims, then leans in. Her soft warm tongue bathes over your [cock of player] pole as she strokes it with her soft palms. Sharp tingles run through your loins as she tries to bring it down to a better size for coupling.";
				if "One Way" is not listed in feats of player:
					decrease cock length of player by ( ( cock length of player - 9 ) / 3 );
					if cock width of player > 9:
						decrease cock width of player by ( ( cock width of player - 6 ) / 3 );
					deerfy;
					follow the sex change rule;
				otherwise:
					deerfy;
					follow the sex change rule;
					say "She tries her best, but your genitals resist any change to get them to shrink down.  She is clearly very disappointed by this outcome.  'I guess you won't be able to be my buck any more,' she says sadly.  Turning away from you, she stifles a sob and rushes out.  Exiting the lab, she heads downstairs and leaves for parts unknown.  Perhaps you'll be able to track her down back at the park.";
					move susan to dark basement;
					remove susan from play;
					now deerconsent is 2;
					repeat with y running from 1 to number of filled rows in table of random critters:
						choose row y in table of random critters;
						if name entry is "Doe":
							now monster is y;
							break;
					now area entry is "Park";
					stop the action;
				if cock length of player is greater than 12:
					say "She pouts a bit as you remain too large for her. Her hands continue to gently pull at your excited length even as she looks disappointed, 'We can try again later.' she promises, leaving you brimming with unsated sexual lust, balls rumbling with seed. Oddly, you feel no urge to approach her again immediately.";
				otherwise:
					say "'Now that is much better,' she decides, squeezing your member with a loud growl of lust, 'Let's try that one more time.'";
					now libido of player is 100;
					try fucking the susan;
]

Section 4 - Monster Table Data

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Doe"; [Name of your new Monster]
	now attack entry is "[if level of player is greater than 5][one of]One of her helpers grabs you from behind as she lands a solid punch in your gut.[or]Just as you dodge past one of her strikes, you feel soft hands pawing at your groin, one of her helpers manhandling you with eager roughness.[or]To the cheer of her herd, she headbutts you, sharp antlers stinging powerfully where they strike.[at random][otherwise][one of]She mashes you against the ground, heavy breasts pressed to you.[or]Her thick cock slaps against you as she roughly shoves at you.[or]Thick horns prove to be quite sharp as they poke you.[or]A sudden kick lands in your midsection as she lands a hoof on you.[at random][end if]"; [Text used when the monster makes an Attack]
	now defeated entry is "[if level of player is greater than 5]Her allies array in front of her suddenly, guarding her as they all start to back away. The fight seems to be over, for now.[otherwise]She gives a loud bleat of pain and scowls at you before she takes flight. Her graceful body carries her long and fast away.[end if]"; [ Text or say command used when Monster is defeated.]
	now victory entry is  "[deer attack]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "A bipedal deer with soft brown fur and creamy off-white belly and undertail. Her nose, eartips and hands are dark hues. Atop her head is a large rack of antlers, proud and powerful. She has large cream covered breasts capped with thick black teats. She has a hungry, lustful look in her eyes, one hand usually straying to her cock, stroking it almost absentmindedly. It is disturbingly human in appearance, ebon-black fleshed with a cream sheath at the base. She has large plum sized balls contained in a creamy coloured softly furred sac. Despite her animalistic appearances, she has hair like a human, running down to a little past her shoulders, a little darker than the brown fur of the majority of her form.[if level of player is greater than 5] [doestats][end if]";[ Description of the creature when you encounter it.]
	now face entry is "that of a furry, [if Susan is in primary lab]feminine[otherwise]antlered[end if], head of an enchanting stag doe. Your eyes burn with a smoldering lust as they look about from the end of your muzzled face";
	now body entry is "feminine and graceful looking. You have long delicate arms and hands, capped with blackened fingertips, like hooves that don't compromise dexterity";
	now skin entry is "brown furred";[ skin Description, format as the text "You have (your text) skin"]
	now tail entry is "Your butt has a deer's tail over it, [skin of player] on the top, soft cream along the underside. The rest of your ass is quite curvy, your tail hiding nothing.";[ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "pitch black human";[ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "your face draws out into a snout, slender with a wide nose, new scents teasing your addled senses as your ears grow long and narrow, twitching towards sounds. Thick fur swells ticklishly over your new contours as a distracting pain builds at the top of your head.[if susan is in primary lab][otherwise] Grand new antler points swell and grow ornately.[end if] You give a pant, long tongue hanging a moment"; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "your limbs grow long and graceful, slender, feminine. Your nails seem to cover your fingertips in a protective hoof each. Your feet chance more dramatically, becoming deer hooves"; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "soft tingles spread in waves as fur sprouts in odd patterns across you, slowly settling into brown fur across sides and back, and a cream line that runs from under your chin to your groin"; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "a short, upturned, and furry tail sprouts into being over your deliciously round and spankable [skin of player] ass"; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "your cock darkens until it is entirely black, but human shaped"; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 16;
	now dex entry is 12;
	now sta entry is 18;
	now per entry is 16;
	now int entry is 12;
	now cha entry is 15;
	now sex entry is "Both"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 30;			[ How many HP has the monster got? ]
	now lev entry is 3;			[ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ]
	now wdam entry is 8;			[Amount of Damage monster Does when attacking.]
	now area entry is "Nowhere";	[ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 1;			[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 9;		[ Length infection will make cock grow to if cocks]
	now cock width entry is 6;		[ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 2;			[ Number of Breasts infection will give you. ]
	now breast size entry is 5;		[Size of breasts infection will try to attain ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 8;		[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 6;		[ Width of female sex  infection will try and give you ]
	now libido entry is 70;			[ Amount player Libido will go up if defeated ]
	now loot entry is "";			[ Loot monster drops, ]
	now lootchance entry is 0;		[ Chance of loot dropping 0-100 ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 3;				[ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "effeminate";	[ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender"   Use [one of] to vary ]
	now type entry is "cervine";		[ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";		[ Row used to designate any special combat features, "default" for standard combat. ]


To say doestats:
	repeat with y running from 1 to number of rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Doe":
			now monster is y;
			break;
	choose row monster in table of random critters;
	now lev entry is level of player minus 1;
	if lev entry < 15:
		now dex entry is lev entry + 6;								[quick dex and hp growth early on]
		now hp entry is lev entry times 10;
		now wdam entry is ( ( lev entry * 2 ) / 3 ) plus 6;
	otherwise:
		now dex entry is 18 + ( lev entry / 5 );							[normal hard mode dex growth at lvl 15+]
		now hp entry is 60 + ( lev entry times 6 );						[boss hard mode hp growth at lvl 15+]
		now wdam entry is ( ( 4 * lev entry ) / 11 ) + 11;					[strong dmg growth for lvl 15+]
	now monsterhp is hp entry;
	say "There are [if lev entry < 21][lev entry divided by 2][otherwise]numerous[end if] other does with her, following her dutifully and gazing at you with their hungry eyes. They look very similar, but lack the antlers.";


Section 5 - Monster Victory

to say deer attack:
	say "She approaches your fallen form with a smile on her cervine face. 'Little doe, this is where you belong, as part of my herd. You had your chance to be the stag,' she says, tongue rolling across her snout as she reaches to rub over your [skin of player] [breast size desc of player] chest.";
	attempttowait;
	if cunts of player is greater than 0:
		say "Wrestling your hips up into position, she pinches your bottom with her hard fingertips, 'Naughty doe, playing so hard to get. See what you're missing.' She sinks into you with a wet squelch, your mutinous body already warm and set for her arrival as she sinks deeply into your grasping cunt, thick plug snugly held within you a moment before she draws back. Her motions are sharp and powerful, thick balls slapping up against your ass with each movement.";
		if breasts of player is greater than 0:
			say "Her hands wrap around you and she softly teases at your nipples, flicking and pinching at them as she rocks against you. As she adjusts her angle of entry, she makes to grab at your [breast size desc of player] breasts, massaging into the sensitive flesh eagerly, kneading at you as her groin grinds up against your ass, pushing that black cock as deep as it can go.";
		say "With a triumphant bleat, she unleashes into your waiting cunt, powerful squirts of virile seed splashing into your belly.[impregchance] You groan with unasked for pleasure, body trembling as climax overtakes you. You clench powerfully around her tool, coating it with your own honies.[if cocks of player is greater than 0] Your [cock size desc of player] dick lurches, then begins to spray against the ground as it abruptly reaches peak as well, emptying your [short ball size] balls in waves of bliss.[end if] You slump to the ground and the deer slips off of you, stroking herself a few last times as she eyes you hungrily, 'Later.' she says, turning to leave.";
	otherwise:
		say "She scowls, 'You are missing something, doe.' She reaches between your legs, rubbing slowly, the soft fur tickling delightfully at sensitive flesh as she caresses you. Warm tingles of nanite change creep through you.";
		follow the sex change rule;
		if cunts of player is greater than 0:
			say "Wrestling your hips up into position, she pinches your bottom with her hard fingertips, 'Naughty doe, playing so hard to get. See what you're missing.' She sinks into you with a wet squelch, your mutinous body already warm and set for her arrival as she sinks deeply into your grasping cunt, thick plug snugly held within you a moment before she draws back. Her motions are sharp and powerful, thick balls slapping up against your ass with each movement.";
			if breasts of player is greater than 0:
				say "Her hands wrap around you and she softly teases at your nipples, flicking and pinching at them as she rocks against you. As she adjusts her angle of entry, she makes to grab at your [breast size desc of player] breasts, massaging into the sensitive flesh eagerly, kneading at you as her groin grinds up against your ass, pushing that black cock as deep as it can go.";
			say "With a triumphant bleat, she unleashes into your waiting cunt, powerful squirts of virile seed splashing into your belly.[impregchance] You groan with unasked for pleasure, body trembling as climax overtakes you. You clench powerfully around her tool, coating it with your own honies.[if cocks of player is greater than 0] Your [cock size desc of player] dick lurches, then begins to spray against the ground as it abruptly reaches peak as well, emptying your [short ball size] balls in waves of bliss.[end if] You slump to the ground and the deer slips off of you, stroking herself a few last times as she eyes you hungrily, 'Later.' she says, turning to leave.";
		otherwise:
			say "She grunts in frustration, 'You refuse to be a proper doe for me,' she complains darkly before rolling you onto your belly, 'No matter, even a man can be made a doe.' she says with a disturbing smile as she hikes your ass up and aligns her heavy block cock to you. She roughly mounts, plunging the thick plug of a member into your poor ass, showing her dominance with her punishing motions. Her hands show her softer side, caressing your front in slow circular rubs, promise of a better future, if you can get past the searing pain and humiliation you are suffering.";
			if cocks of player is greater than 0:
				say "Her soft palm brushes against your [cock of player] member, starting to stroke it in time with her deep pushes into your body. Possible despite yourself, pleasure builds in your loins and spreads through you. You want to release so badly all of a sudden, [cock size desc of player] pole throbbing needfully as she strokes it faster and faster.";
			attempttowait;
			say "She pulls you back suddenly, body rigid as heat begins to spread inside of you from her twitching member.[mimpregchance]";
			if cocks of player is greater than 0:
				say "Your [short ball size] balls lurch and you spray into the air, coaxed on by gentle squeezes of her hand, milking you even as she fills you with her thick seed.";
			say "Her tongue licks over an ear, 'Good doe. You will be welcome in the herd when you learn your place,' she whispers as she draws free and leaves you, bruised but sated. As she goes, you see her scratching lightly at her heavy balls, scheming lustfully of her next conquest.";


Section 6 - Additional Mechanics

to deerfy:
	infect "Doe";
	follow the sex change rule;

deer Den is a room. "You should not be here.". It is unknown. It is private.

After examining deer den:
	say "Stuff happens, then you go home.";
	move the player to Grey Abbey Library;


Section 7 - Endings

when play ends:
	if bodyname of player is "Doe":
		if humanity of player is less than 10:
			if susan is in primary lab:
				say "     Fear grips your heart and you take off running like the wind until you reach Susan's arms, leaping into them and curling up against her a moment. She calms you and pets you. Despite your loss of humanity, she remains clear, and cares for you as a mother, even if she likes playing with you like a lover. When rescue does come, she escorts you to society and continues to care for you to the end of your days, never leaving you wanting for company, or anything else.";
			otherwise if susan is in hidden lab:
				say "     Fear grips your heart and you take off running like the wind until you reach Susan's arms, leaping into them and curling up against her a moment. She calms you and pets you. Despite your loss of humanity, she remains clear, and cares for you as a mother, even if she likes playing with you like a lover. When Dr Mouse leaves the city, she goes with him and takes you into hiding with them.  As the doctor continues his work in the shadows, the deer continues to care for you to the end of your days, never leaving you wanting for company, or anything else.";
			otherwise:
				say "     You can feel your humanity drifting away from you and flee to where your instincts urge you. You find the herd of deer, led by that magnificent stag. On seeing you, Susan steps forward and welcomes you into her arms, holding your shivering form tight to herself, 'Now you see?' she whispers, then lays you down, rutting you to the cheers of the others, many of whom stroke their black cocks over your coupling bodies, spraying you and her with hot strings of seed even as she fills your belly and officially claims you as her own.";
				say "      When she is done, she rises from you, and one of your pack sisters takes her place, rutting you just as eagerly. She rolls over, putting you on top [if cunts of player is greater than 0]and leaving the way open for another sister to come up and claim your ass, sandwiching you between as you're fucked by[otherwise]fucking you wildly before passing you along to[end if] each sister in turn, passed around twice through the entire circle of adoring deer. By the time it is done, you are sore but satisfied, and begin your life as a member of the herd.";
		otherwise:
			if susan is in primary lab:
				say "     When the rescue comes, you return to Susan and leave the city hand in hand. Despite any other loves or friends you pick up, she remains your favored. Her belly is swollen round often with the fruit of your couplings, and she accompanies you almost everywhere, tending to your every whim. You are both happy with the arrangement, and remain together, loving, for the rest of your long lives, eventually tended to by the children you sired and raised so well.";
				if hp of Orthas >= 4:
					say "     Susan remains your loving and loyal doe, bearing twin foals from your union.  Your new family convinces you to settle down with them in a life that, though perhaps unplanned, you still find rewarding.  Her work assisting Dr. Matt's research continues to yield fascinating discoveries.";
					say "     Your two relationships cause some friction at first, but eventually Susan and Orthas learn to live with, and even rely on and care for each other in times of trouble.  Your children grow up together, well-protected and cared for.  Dr. Matt's exposure to your family causes him to reconsider some of his less ethical approaches to science.";
			otherwise if susan is in hidden lab:
				say "     When the rescue comes, you return to Susan and leave the city hand in hand, using your false identities as cover. Despite any other loves or friends you pick up, she remains your favored. Her belly is swollen round often with the fruit of your couplings, and she accompanies you almost everywhere, tending to your every whim. You are both happy with the arrangement, and remain together, loving, for the rest of your long lives, eventually tended to by the children you sired and raised so well.";
			otherwise:
				say "     Your sleek lines attract many. You easily secure a job as a secretary, but live for the weekends, when you'd hit the clubs and dance the night away to the gawkings of others. Though some humans remain fearful on basis of your being mutated at all, more than a few approach you openly, seeing your attention and affection. You show them a good time, on the dance floor, or the bedroom floor, depending on how much you like them. Man, woman, you find yourself not caring as much between the two.";
	if bodyname of player is "Reindeer":
		if humanity of player is less than 10:
			if susan is in primary lab:
				say "     Drawn to it by some fading memory, you fly to Trevor Labs, spreading holiday cheer in your wake.  A rather angry looking dragon comes out, shaking its fist at you and yelling about having to shovel snow now.  You start to laugh, but a fiery blast sends you banking off.  But then there is a joyous yell as a doe runs out and pushes the dragon aside, right into a snowbank.  Feeling a connection to this lovely creature, that fading memory, you zip down and scoop her up into your arms.  You fly off with her as the scaly Scrooge yells 'Good riddance, you pests.'  The doe clutches you tightly, kissing you again and again, saying how she knew you'd come back and how you have a lovely body.  Soon you are mating in the air and she's becoming more and more a holiday-infused reindeer like yourself, joining the herd.  When she start to fly on her own, your lovemaking gets even more acrobatic and the snowfall increases, spreading more holiday cheer over the infected city.";
			otherwise if susan is in Hidden Lab:
				say "     Drawn to it by some fading memory, you fly the City Hospital, spreading holiday cheer in your wake.  Some angry jaguars come out, yelling and shaking their fists at you.  But when several silvery vixens come out and start playing in the snow nude, they seem to get in the spirit of things and join the girls in the fun.  Several mismatched creatures, which your mind interprets as mismatched toys, come out as well to make a snow fort.  You hear a joyous yell or surprise and see an elated doe bouncing up and down at one of the upper story windows, yelling and waving her arms wildly to get your attention.  When she sees you've noticed her, she motions for you to wait, dashes to the stairs and comes running out.  As she climbs down the steps, a mouse in a lab coat grabs her by the wrist, trying to hold her back.";
				say "     Angry that this little Scrooge would try to keep her from enjoying your winter wonderland, you zoom down to them.  You land and shove the mouse to the snowy ground all in one smooth motion.  But when you do, all sound of merriment around you stops.  There is a collective gasp and all eyes are locked on you.  The doe clutches you tightly and whispers fearfully for you to escape.  Wrapping your arms around her, you do just that as the hospital hordes start to charge.  As you fly off with your doe, you can see the mouse stomping about as he berates the others, all cringing fearfully before his ire, slinking back into the gloomy hospital.";
				say "     Having rescued your doe from the grinchy mouse, you soar across the city with her in your arms.  She clutches you tightly, kissing you again and again, saying how she knew you'd come back and how you have a lovely body.  Soon you are mating in the air and she's becoming more and more a holiday-infused reindeer like yourself, joining the herd.  When she start to fly on her own, your lovemaking gets even more acrobatic and the snowfall increases, spreading more holiday cheer over the infected city.";
		otherwise:
			if susan is in primary lab:
				say "     Susan happily joins you when you move north, sharing your home.  At first, she's a merely tolerates your collection of holiday kitsch.  But she loves you deeply all the same, and you her";
				if cocks of player is 0 and "Sterile" is not listed in feats of player:
					say ".  She's a reluctant buck at first, but is soon rutting you every night, much to your delight.  Every year, come Christmas Day, you give birth to a new fawn";
				otherwise if cocks of player is 0:
					say ".  She's a reluctant buck at first, but is soon rutting you every night, much to your delight.";
				otherwise:
					say ".  You rut her often and she ends up giving you a new fawn every year for Christmas.";
				say "     As the holiday season starts to come around, she begins to get more and more into the spirit of things, helping you decorate and even adding to your collection.  Subtly at first, but more quickly as that special day gets nearer and nearer, she grows more beautiful and caribou-like.  Soon enough, she's helping you 'make' the egg nog for the office Christmas party with a sexy Mrs. Claus outfit on her fully reindeer body[if cocks of player > 0] while you rut her from behind[end if].";
			if susan is in Hidden Lab:
				say "     Susan happily joins you when you move north, sharing your home.  Dr Mouse is a little upset about losing his assistant, but you find him a bit grinchy and always keep your dealings with him brief.  At first, she a merely tolerates your collection of holiday kitsch.  But she loves you deeply all the same, and you her";
				if cocks of player is 0 and "Sterile" is not listed in feats of player:
					say ".  She's a reluctant buck at first, but is soon rutting you every night, much to your delight.  Every year, come Christmas day, you give birth to a new fawn";
				otherwise if cocks of player is 0:
					say ".  She's a reluctant buck at first, but is soon rutting you every night, much to your delight.";
				otherwise:
					say ".  You rut her often and she ends up giving you a new fawn every year for Christmas.";
				say "     As the holiday season starts to come around, she begins to get more and more into the spirit of things, helping you decorate and even adding to your collection.  Subtly at first, but more quickly as that special day gets nearer and nearer, she grows more beautiful and caribou-like.  Soon enough, she's helping you 'make' the egg nog for the office Christmas party with a sexy Mrs. Claus outfit on her fully reindeer body[if cocks of player > 0] while you rut her from behind[end if].";

Section X - Notes

[ deerconsent = was deerhappy ]
[ 0 = not active ]
[ 1 = angry - creature ]
[ 2 = happy - NPC w/Dr. Matt ]
[ 50+ = NPC w/Dr. Mouse ]
[ 50 = Moved, nothing new ]


Deer ends here.
