Version 1 of Larissa for FS by Stripes begins here.
[Version 1.2 - Tweaks for Hospital Quest 2]
"Adds a Zephyr employee named Larissa to the Flexible Survival game"

Section 1 - Basic Larissa

Larissa is a woman. "[larissaview]". She is in Zephyr Lobby.
The conversation of Larissa is { "$$$$$$$$!" }.

To say Larissaballs:
	if cock width of Larissa is less than 3:
		say "[one of]marble-sized[or]tiny[or]very small[at random]";
	otherwise if cock width of Larissa is less than 6:
		say "[one of]plum-sized[or]golf-ball-sized[or]apricot-sized[or]average[at random]";
	otherwise if cock width of Larissa is less than 12:
		say "[one of]lemon-sized[or]large[at random]";
	otherwise if cock width of Larissa is less than 16:
		say "[one of]baseball-sized[or]orange-sized[or]hand-filling[at random]";
	otherwise if cock width of Larissa is less than 20:
		say "[one of]grapefruit-sized[or]massive[at random]";
	otherwise if cock width of Larissa is less than 25:
		say "[one of]cantaloupe-sized[or]giant[or]knee-knocking[at random]";
	otherwise if cock width of Larissa is less than 32:
		say "[one of]basketball-sized[or]ginormous[or]super-inflated[or]watermelon-huge[at random]";
	otherwise:
		say "[one of]floor-dragging[or]beachball-sized[or]gargantuan[or]ground-hanging[at random]";
	say " [one of]balls[or]testicles[or]gonads[at random]";

to say larissaview:
	if hp of Larissa <= 2:
		say "Manning the counter is a female human with no clear signs of mutation. Her name badge declares her to be 'Larissa'.";
	otherwise:
		say "Manning the counter is Larissa, now a [if cocks of Larissa > 0 and cunts of Larissa > 0]herm[otherwise if cocks of Larissa > 0]male[otherwise if cunts of Larissa > 0]female[otherwise]neuter[end if] [form of larissa] who seems pretty pleased with [possadj of Larissa] new look.";

Larissa has a list of text called vials.

The description of Larissa is "[larissadesc]".

the scent of Larissa is "Larissa arches her brow as you sniff the air around her, reaching for something in a nearby drawer.  You do catch a faint hint of lilacs, probably a perfume.".

the linkaction of Larissa is "Possible Actions: [link]talk[as]talk Larissa[end link], [link]smell[as]smell Larissa[end link], [link]fuck[as]fuck Larissa[end link][if hp of Larissa >= 2], [link]TF[as]transform Larissa[end link][end if][line break]";


[-----------------------------------------------------------------------------------------------------]

Section 2 - Appearance

to say larissadesc:
	if hp of Larissa < 3:				[base description]
		say "     She is about five and a half feet, with suntanned flesh.  She seems perfectly human - an oddness in this city.  Her name badge, worn on her generous chest, reads 'Larissa'.  She has straight brown hair that goes down a little past her shoulders.  She wears a lab coat, but it seems more like a uniform than any actual dedication to the sciences.  It certainly looks cute on her though.  Her silver eyes have specks of brown in them, easily seen as she asks how she can help you in a cheerful tone.";
	otherwise if hp of Larissa is 3:
[		say "***human form, to be revised later.";	]
		say "     She is about five and a half feet, with suntanned flesh.  She seems perfectly human - an oddness in this city.  Her name badge, worn on her generous chest, reads 'Larissa'.  She had brown straight hair that goes down a little past her shoulders.  She wears a lab coat, but it seems more like a uniform than any actual dedication to the sciences.  It certainly looks cute on her though.  Her silver eyes have specks of brown in them, easily seen as she asks how she can help you in a cheerful tone.";
	otherwise:
		say "     Through your assistance, Larissa has become infected to become a [if cocks of Larissa > 0 and cunts of Larissa > 0]herm[otherwise if cocks of Larissa > 0]male[otherwise if cunts of Larissa > 0]female[otherwise]neuter[end if] [form of Larissa].  [subjpro_cap of Larissa] has taken on the form of [body of Larissa] over which [subjpro of Larissa] wears a modified lab coat as part of [possadj of Larissa] uniform.  Hanging from one pocket, [subjpro of Larissa] has an identification badge with [possadj of Larissa] name and current photo on it.  [subjpro_cap of Larissa] has a/an [face of larissa] face[if tailed of Larissa is true], [skin of larissa] and a/an [tail of Larissa][otherwise] and [skin of Larissa][end if].  Overall, you think [subjpro of Larissa] looks quite [generallook of Larissa] as [subjpro of Larissa] [if bodycat of Larissa is 0]sits at [possadj of Larissa] desk and types with [possadj of Larissa] [handform of Larissa]s[otherwise if bodycat of Larissa is 1]sits on a raised mat in front of [possadj of Larissa] keyboard, typing away with [possadj of Larissa] [handform of larissa]s[otherwise if bodycat of Larissa is 2]tauric body resting on a mat on the floor in front of [possadj of Larissa] keyboard, typing away with [possadj of Larissa] [handform of Larissa]s[otherwise if bodycat of Larissa is 3]lower body resting on a padded mat while she types away at [possadj of Larissa] keyboard with [possadj of Larissa] [handform of Larissa]s[end if][if winged of Larissa is true].  [possadj_cap of Larissa] wings rustle occasionally as she works[end if][if scalevalue of Larissa is 1].  [possadj_cap of Larissa] small office behind the counter seems quite roomy compared to [possadj of Larissa] tiny body[otherwise if scalevalue of Larissa is 2].  [possadj_cap of Larissa] office behind the counter seems a little roomier now that [subjpro of Larissa][']s gotten a little smaller[otherwise if scalevalue of larissa is 4].  Being rather large, Larissa's small office behind the counter is pretty cramped[otherwise if scalevalue of Larissa is 5].  Having gotten quite huge, Larissa's poor office has become very cramped and has almost no free space for [objpro of Larissa][end if].";
		if breast size of larissa > 0:	[titties!]
			let extrabreastrows be (breasts of Larissa - 2) / 2;
			say "     Poorly obscured by [possadj of Larissa] labcoat, you can see that Larissa has a pair of [breast size desc of Larissa][if breasts of Larissa is 4] with a second smaller pair beneath those[otherwise if breasts of Larissa > 4] with [extrabreastrows] other pairs beneath those[end if].  Also half-hidden, almost as a tantalizing offer, Larissa has [if Larissa is herm]a [cock size desc of Larissa] [cock of Larissa] shaft, a pair of [Larissaballs] and a [cunt size desc of Larissa] wet cunt between her legs[otherwise if Larissa is male]a [cock size desc of Larissa] [cock of Larissa] shaft with a pair of [Larissaballs] between his legs[otherwise if Larissa is female]a [cunt size desc of Larissa] wet cunt between her legs[otherwise if Larissa is neuter]a plain and featureless groin[end if].  [subjpro_cap of Larissa] gives you a playful grin and shifts to give you a better view of [possadj of Larissa] crotch while she works.";
		otherwise:									[no titties :(]
			say "     Poorly obscured by [possadj of Larissa] labcoat, you can see that Larissa has [if Larissa is herm]a [cock size desc of Larissa] [cock of Larissa] shaft, a pair of [Larissaballs] and a [cunt size desc of Larissa] wet cunt between her legs[otherwise if Larissa is male]a [cock size desc of Larissa] [cock of Larissa] shaft with a pair of [Larissaballs] between his legs[otherwise if Larissa is female]a [cunt size desc of Larissa] wet cunt between her legs[otherwise if Larissa is neuter]a plain and featureless groin[end if].  [subjpro_cap of Larissa] gives you a playful grin and shifts to give you a better view of [possadj of Larissa] crotch while she works.";
	if hp of Larissa >= 2:
		say "     If you want to do so, you may [link]transform Larissa[end link][if hp of Larissa > 2] [one of]again[or]further[at random][end if].";


[-----------------------------------------------------------------------------------------------------]

Section 3 - Conversation

Part 1 - General Conversation Tree

zephyrtask is a number that varies.
zephyrpests is a number that varies.

instead of conversing Larissa:
	let vialsnagging be false;
	if scenario is "Researcher" or nanitemeter > 0, let vialsnagging be true;
	if hp of doctor matt is 16:
		say "[zephyrmatt1]";	[start task]
	otherwise if hp of doctor matt is 17 and number of entries in ndmlist > 0 and a random chance of 1 in 3 succeeds:
		say "[zephyrmatt2]";	[task reminder]
	otherwise if hp of doctor matt is 17 and number of entries in ndmlist is 0:
		say "[zephyrmatt3]";	[task completion]
		if hp of Larissa is 0:
			say "     'So, cute stuff,' Larissa adds, 'What're you up to later?'  Cha-ching!";
			now hp of Larissa is 1;
	otherwise if hospquest is 16:
		say "[zephyrmouse1]";	[start task]
	otherwise if hospquest is 17 and number of entries in ndmlist > 0 and a random chance of 1 in 3 succeeds:
		say "[zephyrmouse2]";	[task reminder]
	otherwise if hospquest is 17 and number of entries in ndmlist is 0:
		say "[zephyrmouse3]";	[task completion]
		if hp of Larissa is 0:
			say "     'So, cute stuff,' Larissa adds, 'What're you up to later?'  Cha-ching!";
			now hp of Larissa is 1;
	otherwise if hp of Larissa is 0:
		say "     'We are looking for extracted vial samples.  If you obtain some, please bring it to me to ['][bold type]vialsell <name>[roman type]['] for a credited reward.'";
		if ( hp of doctor matt < 17 or hp of doctor matt >= 100 ) and ( hospquest < 17 ):
			if zephyrtask is 0:
				if furry is not banned and hermaphrodite is not banned:
					say "     She flips through a few papers on her desk, trying to find something.  'We've also been experiencing a bit of a pest problem.  Some of those panther taur creatures have been harassing us.'  She holds a photo of a black feline creature with a furred human upper body and a panther's body instead of legs.  It's fondling its breasts and smiling lewdly at the camera.  'The guards are able drive them off easily enough, but it does upset the other customers.  We're in the business of helping you, but we'll need some help to do that.  If you could go beat up some of them around here, it might discourage them from coming around again.  We'd appreciate your assistance and will reward you for the completion of the task.'";
					now zephyrtask is 1;
					now zephyrpests is 0;
				otherwise if furry is not banned and guy is not banned:
					say "     She flips through a few papers on her desk, trying to find something.  'We've also been experiencing a bit of a pest problem.  Some of those German Shepherd creatures have been harassing us.'  She holds a photo of a German Shepherd person with black and tan fur.  It's growling and making a rude gesture at the camera.  'The guards are able drive them off easily enough, but it does upset the other customers.  We're in the business of helping you, but we'll need some help to do that.  If you could go beat up some of them around here, it might discourage them from coming around again.  We'd appreciate your assistance and will reward you for the completion of the task.'";
					now zephyrtask is 2;
					now zephyrpests is 0;
				otherwise if girl is not banned:
					say "     She flips through a few papers on her desk, trying to find something.  'We've also been experiencing a bit of a pest problem.  Some of those city sprite creatures have been harassing us.'  She holds a photo of a cluster of fairy-winged girls hovering in the air.  Several of them are sticking out their tongues or otherwise making faces at the camera.  'The guards are able drive them back to that [bold type]urban forest[roman type] they live in, but they keep coming back.  They harass the customers and are destructive little pests.  We're in the business of helping you, but we'll need some help to do that.  If you could track them down and beat a few of them up, it might discourage them from coming around again.  We'd appreciate your assistance and will reward you for the completion of the task.'";
					now zephyrtask is 3;
					now zephyrpests is 0;
			otherwise if ( zephyrtask is 1 or zephyrtask is 2 or zephyrtask is 3 ) and zephyrpests >= 4:
				say "     She sets down chips she's munching on.  'Thanks for your assistance with our pest problem.  Our records show that you've confronted and defeated several of them and they've stopped coming around here.  For your assistance, we'll be depositing [special-style-1]100[roman type] credits into your account on top of the standard reward you've been receiving.  Nice work, cute stuff.  What're you doing later?' she adds with a smile and a wink.  Cha-ching!";
				now zephyrtask is 4;
				now hp of Larissa is 1;
				increase freecred by 100;
				increase score by 20;
			otherwise if a random chance of 1 in 3 succeeds and ( zephyrtask is 1 or zephyrtask is 2 or zephyrtask is 3 ):
				say "     She taps away at her computer briefly.  'We're still having a problem with those pesky [if zephyrtask is 1]panther taurs[otherwise if zephyrtask is 2]German Shepherds[otherwise]city sprites[end if].  Please be on the lookout for them.  They're not that tough, but it's annoying to have them keep bothering us.  Beating them up a few times should make them less bold about attacking us.";
	otherwise if hp of Larissa is 1:
		try Larissatfing;
	otherwise if hp of Larissa is 2:
		say "     [one of]'We are still looking for extracted vial samples.  If you obtain some, please bring to me to ['][bold type]vialsell <name>[roman type]['] for a credited reward.'  [subjpro_cap of Larissa] then grins and leans forward.  'Or you can use it to [link]transform[as]transform Larissa[end link] me if it's on my want list.'[or]'At first, I wasn't too keen on coming here and risking getting transformed.  But the more I see the sexy creatures, the more I want to give it a try.'[or]'You guys are all lucky that Zephyr's such a great company that we were able come and help out so fast.  I'm a little surprised how fast we've come up with a lot of this stuff.'[or]'You should know, this nanite thing isn't just happening here.  It's happening all over the country.  Sometimes it's just cities, but in a few places, it's whole states.'[or][if vialsnagging is true]'Don't forget to try getting samples from creatures on my want list.'[otherwise]'If you want to [link]transform[end link] me, you'll need to use a nanite collector from the store here.  Thankfully we're selling them fairly cheap,' [subjpro of Larissa] says.[end if][or]'Next time I can take a break, we should definitely have a little fun,' [subjpro of Larissa] says with a wink.'[at random]";
	otherwise if hp of Larissa is 3:
		say "     [one of]'We are still looking for extracted vial samples.  If you obtain some, please bring to me to ['][bold type]vialsell <name>[roman type]['] for a credited reward.'  [subjpro_cap of Larissa] then grins and leans forward.  'Or you can use it to [link]transform[as]transform Larissa[end link] me if it's on my want list.'[or]'At first, I wasn't too keen on coming here and risking getting transformed.  But the more I see the sexy creatures, the more I want to give it a try.'[or]'You guys are all lucky that Zephyr's such a great company that we were able come and help out so fast.  It's quite surprising how fast we've come up with a lot of this stuff.'[or]'You should know, this nanite thing isn't just happening here.  It's happening all over the country.  Sometimes it's just cities, but in a few places, it's whole states.'[or][if vialsnagging is true]'Don't forget to try getting samples from creatures on my want list so I can [link]transform[as]transform Larissa[end link] again.'[otherwise]'If you want to [link]transform[end link] me, you'll need to use a nanite collector from the store here.  Thankfully we're selling them fairly cheap,' [subjpro of Larissa] says.[end if][or]'Next time I can take a break, we should definitely have a little fun,' [subjpro of Larissa] says with a wink.'[or]'I thought I might be happy sticking as a human for a while longer, but I'm already looking forward to changing again.'[at random]";
	otherwise if hp of Larissa is 4:
		say "     [one of]'We are still looking for extracted vial samples.  If you obtain some, please bring to me to ['][bold type]vialsell <name>[roman type]['] for a credited reward.'  [subjpro_cap of Larissa] then grins and leans forward.  'Or you can use it to [link]transform[as]transform Larissa[end link] me if it's on my want list.'[or]'At first, I wasn't too keen on coming here and risking getting transformed.  But the more I see the sexy creatures, the more I want to give it a try.'[or]'You guys are all lucky that Zephyr's such a great company that we were able come and help out so fast.  I'm a little surprised how fast we've come up with a lot of this stuff.'[or]'You should know, this nanite thing isn't just happening here.  It's happening all over the country.  Sometimes it's just cities, but in a few places, it's whole states.'[or][if vialsnagging is true]'Don't forget to try getting samples from creatures on my want list so I can [link]transform[as]transform Larissa[end link] again.'[otherwise]'If you want to [link]transform[end link] me, you'll need to use a nanite collector from the store here.  Thankfully we're selling them fairly cheap,' [subjpro of Larissa] says.[end if][or]'Next time I can take a break, we should definitely have a little fun,' [subjpro of Larissa] says with a wink.'[or][if lasttf of Larissa - turns < 20]'I'm liking this new look for me.  Don't you think I look [generallook of larissa]?' [subjpro of Larissa] asks with a happy smile[otherwise]'I'm getting a little bored with this new form of mine.  Maybe we should consider picking a new form I can [link]transform[as]transform Larissa[end link] into,' she says.'[end if][or]'What do you think of my [generallook of Larissa] look as a [form of Larissa]?'[at random]";
	if Outside Trevor Labs is not known:
		say "     Larissa grabs a sticky note from her desk.  'Oh, we also have a report of some scientist still operating in the city.  Just a rumour, but you might want to check it out and see if you can get some extra work there.'  She gives you some general directions to get to the area.  It might be worth looking into.";
		now Outside Trevor Labs is known;


Part 2 - Zephyr-Matt Quest

[ See Main Storyline file for now]

[-----------------------------------------------------------------------------------------------------]

Section 4 - Fucking

the fuckscene of Larissa is "[sexwithLarissa]".

to say sexwithLarissa:
	if lastfuck of Larissa - turns < 8:
		say "     'We'll have to put that on hold, hon.  I'm not due to get another break for a while yet.'";
	otherwise if cocks of player is 0 and cunts of player is 0:
		say "     You're ill-equipped to consider fooling around with [objpro of Larissa] at the moment.";
	otherwise if hp of Larissa is 0:
		say "     Larissa pulls a spritz bottle out of the a drawer under the counter, spraying you with diluted vinegar.  You are driven back.  'Is everyone a horny freak now?  Why can't they just all leave me alone so I can work in peace?' she grumbles.";
	otherwise if hp of Larissa is 1 or hp of Larissa is 2:	[unchanged human form]
		now lastfuck of Larissa is turns;
		say "     Larissa grins at your offer to have a little fun and, after getting someone to take over at her desk for a little while, she leads you into the back.  She takes you to the break room and flips a little sign on the door.  The room itself is rather sparse but does have a small cot available.  Pulling off her lab coat, she stretches out, showing off her lovely human form, seemingly pure and unaffected by the nanite infection all around.  She toss the coat and her other clothes over one of the chairs and pulls you into her arms, kissing you firmly while your hands run over each other's bodies.";
		if cocks of player > 0:
			say "     You guide the woman down onto the cot and smile down at her as she spreads her legs for you.  Her skin as lovely and unblemished with a light tan colour almost all over save for that spot you're most interested in exploring.  You onto the bed with her, bringing your mouth to her breasts and kissing her nipples while your hand slides between her legs to rub her pussy.  It feels so good to be with a human woman after so long with only those transformed to entice your lusts.  She brings one of her delicate hands to grasp your [cock size desc of player] [cock of player] maleness, stroking it while you finger her dampening slit.";
			if cock length of player < 20:
				say "     Once the foreplay's gotten you both quite excited and eager for more, you move on to the main event, moving overtop of her and kissing her as you slide your [cock size desc of player] to her wet folds.  She moans and wraps her arms around you as you guide your cock into her [if cock length of player > 12]very slowly, giving her human body plenty of time to adjust to your large phallus[otherwise]slowly, savouring the feel of a real woman's cunt around your again[end if].  Once you're fully inside, you start to thrust, pumping your cock into her[if cocks of player > 2] while the others rub against her belly[otherwise if cocks of player is 2]while your other one rubs against her belly[end if].  You kiss and run your hands over one another while you fuck long and hard before you finally cum and blast your [if cock width of player >= 40]belly-bloating load into her, leaving her stuffed and sated on the cot.  She only returns to her desk after a long break to let your cum drain and her belly to go down enough that she can move again[otherwise if cock width of player >= 20]massive load into her belly, leaving her with a prominent bulge of cum when she heads back to her desk[otherwise if cock width of player > 10]heavy load into her, leaving her full and leaking your cum when she heads back to her desk[otherwise]hot load into her[end if].";
			otherwise:
				say "     Once the foreplay's gotten you both quite excited and eager for more, you move your cock into position to grind against her pussy.  Having a [cock size desc of player] penis, it's quite a lot for the unchanged woman to take, so you content yourself with rubbing it against her womanly body and between her breasts.  She squeezes her big tits around it, licking and kissing at your glans at the crest of each thrust.  You're treated to watching her tease and rub her own nipples while lavishing attention upon your cock, not seeming at all put off by your [cock size desc of player] [cock of player] shaft.  After a very enjoyable titty-fuck with the lovely human, you groan and cum hard, blasting your load across her face and into her open mouth[if cock width of player >= 40].  The massive output of your [ball size] leaves a sticky mess across her, half of the cot and even the back wall[otherwise if cock width of player >= 20].  The large output of your [ball size] leaves a sticky mess across her and half the cot[otherwise if cock width of player > 10].  The considerable output of your [ball size] leaves leaves a sticky mess across her face[otherwise].  She manages to guzzle down most of your load by keeping her lips pressed around your cum slit[end if].  After getting dressed and cleaned back up, she heads back to her desk.";
		otherwise:
			say "     You guide the woman down onto the cot and smile down at her as she spreads her legs for you.  Her skin as lovely and unblemished with a light tan colour almost all over save for that spot you're most interested in exploring.  You onto the bed with her, bringing your mouth to her breasts and kissing her nipples while your hand slides between her legs to rub her pussy.  It feels so good to be with a human woman after so long with only those transformed to entice your lusts.  She brings one of her delicate hands to stroke your wet folds in return, slipping a few fingers exploringly into your [cunt size desc of player] [if cunts of player > 1]pussies[otherwise]pussy[end if], pumping them into you while you tease her dampening slit.";
			say "     You tease and tantalize one another like this for quite a while[if breast size of player > 0], shifting position to let her suckle on your nipples as well[end if].  Once you're both quite worked up, she turns around on the cot, bringing her face between your legs and offering her muff to your mouth in return.  You dig in eagerly, licking and lapping at her juicy pussy while she does the same for you.  You lick and finger one another until you both have a powerful series of orgasms that leave you both satisfied and sticky with juices.  After cuddling together for a while, she wipes up quickly before dressing and heading back to her desk with a happy grin on her face.";
	otherwise if hp of Larissa is 3:					[potentially changed human form]
		now lastfuck of Larissa is turns;
		[***new version to be added later.]
		say "     Larissa grins at your offer to have a little fun and, after getting someone to take over at her desk for a little while, she leads you into the back.  She takes you to the break room and flips a little sign on the door.  The room itself is rather sparse but does have a small cot available.  Pulling off her lab coat, she stretches out, showing off her lovely human form, seemingly pure and unaffected by the nanite infection all around.  She toss the coat and her other clothes over one of the chairs and pulls you into her arms, kissing you firmly while your hands run over each other's bodies.";
		if cocks of player > 0:
			say "     You guide the woman down onto the cot and smile down at her as she spreads her legs for you.  Her skin as lovely and unblemished with a light tan colour almost all over save for that spot you're most interested in exploring.  You onto the bed with her, bringing your mouth to her breasts and kissing her nipples while your hand slides between her legs to rub her pussy.  It feels so good to be with a human woman after so long with only those transformed to entice your lusts.  She brings one of her delicate hands to grasp your [cock size desc of player] [cock of player] maleness, stroking it while you finger her dampening slit.";
			if cock length of player < 20:
				say "     Once the foreplay's gotten you both quite excited and eager for more, you move on to the main event, moving overtop of her and kissing her as you slide your [cock size desc of player] to her wet folds.  She moans and wraps her arms around you as you guide your cock into her [if cock length of player > 12]very slowly, giving her human body plenty of time to adjust to your large phallus[otherwise]slowly, savouring the feel of a real woman's cunt around your again[end if].  Once you're fully inside, you start to thrust, pumping your cock into her[if cocks of player > 2] while the others rub against her belly[otherwise if cocks of player is 2]while your other one rubs against her belly[end if].  You kiss and run your hands over one another while you fuck long and hard before you finally cum and blast your [if cock width of player >= 40]belly-bloating load into her, leaving her stuffed and sated on the cot.  She only returns to her desk after a long break to let your cum drain and her belly to go down enough that she can move again[otherwise if cock width of player >= 20]massive load into her belly, leaving her with a prominent bulge of cum when she heads back to her desk[otherwise if cock width of player > 10]heavy load into her, leaving her full and leaking your cum when she heads back to her desk[otherwise]hot load into her[end if].";
			otherwise:
				say "     Once the foreplay's gotten you both quite excited and eager for more, you move your cock into position to grind against her pussy.  Having a [cock size desc of player] penis, it's quite a lot for the unchanged woman to take, so you content yourself with rubbing it against her womanly body and between her breasts.  She squeezes her big tits around it, licking and kissing at your glans at the crest of each thrust.  You're treated to watching her tease and rub her own nipples while lavishing attention upon your cock, not seeming at all put off by your [cock size desc of player] [cock of player] shaft.  After a very enjoyable titty-fuck with the lovely human, you groan and cum hard, blasting your load across her face and into her open mouth[if cock width of player >= 40].  The massive output of your [ball size] leaves a sticky mess across her, half of the cot and even the back wall[otherwise if cock width of player >= 20].  The large output of your [ball size] leaves a sticky mess across her and half the cot[otherwise if cock width of player > 10].  The considerable output of your [ball size] leaves leaves a sticky mess across her face[otherwise].  She manages to guzzle down most of your load by keeping her lips pressed around your cum slit[end if].  After getting dressed and cleaned back up, she heads back to her desk.";
		otherwise:
			say "     You guide the woman down onto the cot and smile down at her as she spreads her legs for you.  Her skin as lovely and unblemished with a light tan colour almost all over save for that spot you're most interested in exploring.  You onto the bed with her, bringing your mouth to her breasts and kissing her nipples while your hand slides between her legs to rub her pussy.  It feels so good to be with a human woman after so long with only those transformed to entice your lusts.  She brings one of her delicate hands to stroke your wet folds in return, slipping a few fingers exploringly into your [cunt size desc of player] [if cunts of player > 1]pussies[otherwise]pussy[end if], pumping them into you while you tease her dampening slit.";
			say "     You tease and tantalize one another like this for quite a while[if breast size of player > 0], shifting position to let her suckle on your nipples as well[end if].  Once you're both quite worked up, she turns around on the cot, bringing her face between your legs and offering her muff to your mouth in return.  You dig in eagerly, licking and lapping at her juicy pussy while she does the same for you.  You lick and finger one another until you both have a powerful series of orgasms that leave you both satisfied and sticky with juices.  After cuddling together for a while, she wipes up quickly before dressing and heading back to her desk with a happy grin on her face.";
	otherwise:									[infected form]
		now lastfuck of Larissa is turns;
		say "     Larissa has a big grin on her [face of Larissa] face at your offer to have a little fun and, [one of]upon conning someone into taking[or]after getting someone to take[or]after making someone will take[or]upon finding someone to take[at random] over at [possadj of Larissa] desk for a little while, [subjpro of Larissa] leads you into the back.  The [generallook of Larissa] [form of Larissa] takes you to the break room and flips a little sign on the door.  The room itself is rather sparse but does have a small cot available.  Pulling off [possadj of Larissa] lab coat, [subjpro of Larissa] stretches out, showing off [posspro of Larissa]self as [body of Larissa], thanks to your assistance.  [subjpro_cap of Larissa] toss the coat and [possadj of Larissa] other clothes over one of the chairs and pulls you into [possadj of Larissa] arms, kissing you firmly while your hands run over each other's bodies.";
		say "[LarissaTFsex]";


to say LarissaTFsex:		[Menu options to be added later as more scenes are composed?]
	if ( ( cocks of player > 0 and cunts of Larissa > 0 ) or ( cunts of player > 0 and cocks of Larissa > 0 ) ) and a random chance of 3 in 5 succeeds and bodyname of player is listed in infections of Taurlist and bodycat of Larissa is 2:
		say "[Larissasex_taurfun]";
	otherwise if player is herm and Larissa is herm:			[H/H]
		if a random chance of 1 in 2 succeeds:
			say "[Larissasex_MF]";				[player tops]
		otherwise:
			say "[Larissasex_FM]";				[Larissa tops]
	otherwise if cocks of player > 0 and cunts of Larissa > 0:		[M/F, M/H, H/F]
		say "[Larissasex_MF]";
	otherwise if cunts of player > 0 and cocks of Larissa > 0:		[F/M, F/H, H/M]
		say "[Larissasex_FM]";
	otherwise if cocks of Larissa > 0:						[M/M]
		say "[Larissasex_MM]";
	otherwise if cunts of Larissa > 0:						[F/F]
		say "[Larissasex_FF]";
	otherwise:										[?/N]
		say "***Larissa neuter.  No scene yet.";

[ cock/cunt size scaling:
cock length > ( ( cunt length * 2) + cunt width + 2 )		:	over the limit
cock length > ( cunt length + cunt width + 2 )			:	large
cock length	< ( ( cunt length + cunt width + 1 ) / 3 )	:	small

cum output scaling:
cock width >= ( scalevalue + 1 ) * 10				:	super-stuffed
cock width >= ( scalevalue + 1 ) * 5				:	plumped
cock width >= ( ( scalevalue + 1 ) * 5 ) / 2			:	full
]

to say Larissasex_MF:
	say "     You guide the [if cocks of Larissa > 0]herm[otherwise]female[end if] [form of Larissa] down onto the cot and smile down at her as she spreads her legs for you.  The [skin of Larissa] covering her [bodytype of Larissa] body is quite lovely, making you pause to take in her [generallook of larissa] form.  As lovely as the sight is, you can't wait any longer to admire it and hop into bed with her.  You spread her legs and slip your hand between her thighs, rubbing at her [if cocks of Larissa > 0][cock size desc of Larissa] [cock of larissa] maleness and [cunt size desc of larissa] pussy[otherwise][cunt size desc of larissa] pussy[end if][if breast size of Larissa > 0].  You nuzzle at her chest, bringing your mouth to her [breast size desc of larissa] breasts and kissing her nipples[otherwise].  You nuzzle at her chest, then up to her neck to kiss and nibble along it[end if], much to her delight.";
	if cock length of player > ( ( cunt length of larissa * 2 ) + cunt width of larissa + 2 ):			[super-big]
		say "     Your [cock size desc of player] [cock of player] penis is too large [if cunt length of Larissa >= 12]even [end if]for her [cunt size desc of Larissa] pussy, so you satisfy yourself by rubbing your maleness down onto her, grinding it across her juicy folds.  She moans and rubs back against you while running her [handform of Larissa]s over your [bodydesc of player] body as well as your [cock size desc of player] shaft.  Licks and kisses are given as well, gradually getting you worked up to the point where you're about to blow.";
		say "     Sensing your orgasm coming, she presses your glans to her pussy and grinds hard against it.  You cum with a loud moan.  While much of your seed soaks her crotch, some blasts shoot into her[if cock width of player >= 40].  This results in still a sizable amount of semen squirted into the woman[otherwise if cock width of player >= 20].  This results in quite a bit of semen still getting squirted into the woman[end if].  The pleasure of you cumming onto and into her pushes her over the edge into orgasm as well, [if cocks of larissa > 0]spraying her seed across her [bodydesc of Larissa] body and [end if]adding her pussy juices to the sticky mess as her crotch.  You both snuggle together while recovering from powerful climax and, after a little more fun while cleaning each other up, head back out front.";
	otherwise if cock length of player > ( cunt length of larissa + cunt width of larissa + 2 ):			[large]
		say "     Your [cock size desc of player] [cock of player] penis is quite large compared to her [cunt size desc of Larissa] pussy, necessitating that you start slow as you thrust into those wet folds of hers.  She moans and wraps her arms around you as you guide your cock into her [bodytype of Larissa] body, making a visible bump in her belly from having your [cock size desc of player] rod stuffed in her.  She moans and runs her [handform of Larissa]s over your [bodydesc of player] form and, once she's loosened up enough, down to your ass to pull you into faster and harder thrusts.  You lick and kiss one another as well, pressing your lips to her [mouth of Larissa][if breast size of Larissa > 0] between kisses upon her [breast size desc of Larissa] breasts[end if].";
		say "     Sensing your orgasm coming, she pulls your hips forward, pushing you as deep as you can go into her, bulging her belly with your cock as you unleash your hot load[if cock width of player >= ( ( scalevalue of Larissa + 1 ) * 10 )].  Your enormous output causes the [form of Larissa][']s belly to swell greatly, becoming bloated with your seed.  She is left full and leaking your cum for quite some time after you're done before she's able to get up and return to her desk[otherwise if cock width of player >= ( ( scalevalue of Larissa + 1 ) * 5 )].  Your heavy output causes the [form of Larissa][']s belly to swell further, leaving her with a prominent bulge of cum when she heads back to her desk[otherwise if cock width of player >= ( ( ( scalevalue of Larissa + 1 ) * 5 ) / 2 )].  Your large output leaves the [form of Larissa] full and leaking your cum when she heads back to her desk[otherwise].  After you're done, Larissa heads back to her desk with a contented smile on her face[end if].";
	otherwise if cock length of player < ( ( cunt length of Larissa + cunt width of Larissa + 1 ) / 3 ):		[small]
		say "     Your [cock size desc of player] [cock of player] penis is quite small compared to her [cunt size desc of Larissa] pussy, letting you thrust into her easily, but provided limited stimulation for her.  To alleviate this, you rub and tease her wet folds with one hand while thrusting into her, drawing sounds of pleasure from her.  She moans and runs her [handform of Larissa]s over your [bodydesc of player] form and down to your ass, squeezing it firmly and driving you to fuck her harder.  You lick and kiss one another as well, pressing your lips to her [mouth of Larissa][if breast size of Larissa > 0] between kisses upon her [breast size desc of Larissa] breasts[end if].";
		say "     Sensing your orgasm coming, she pulls your hips forward, pushing you fully into her as you unleash your hot load[if cock width of player >= ( ( scalevalue of Larissa + 1 ) * 10 )].  Your enormous output causes the [form of Larissa][']s belly to swell greatly, becoming bloated with your seed.  She is left full and leaking your cum for quite some time after you're done before she's able to get up and return to her desk[otherwise if cock width of player >= ( ( scalevalue of Larissa + 1 ) * 5 )].  Your heavy output causes the [form of Larissa][']s belly to swell, leaving her with a prominent bulge of cum when she heads back to her desk[otherwise if cock width of player >= ( ( ( scalevalue of Larissa + 1 ) * 5 ) / 2 )].  Your large output leaves the [form of Larissa] full and leaking your cum when she heads back to her desk[otherwise].  After you're done, Larissa heads back to her desk with a contented smile on her face[end if].";
	otherwise:		[compatible size - normal]
		say "     You slide your [cock size desc of player] [cock of player] penis into her [cunt size desc of Larissa] pussy, enjoying the wonderful sensation of her squeezing around your maleness.  She moans and runs her [handform of Larissa]s over your [bodydesc of player] form and down to your ass, squeezing it firmly and driving you to fuck her harder.  You lick and kiss one another as well, pressing your lips to her [mouth of Larissa][if breast size of Larissa > 0] between kisses upon her [breast size desc of Larissa] breasts[end if].";
		say "     Sensing your orgasm coming, she pulls your hips forward, pushing you fully into her as you unleash your hot load[if cock width of player >= ( ( scalevalue of Larissa + 1 ) * 10 )].  Your enormous output causes the [form of Larissa][']s belly to swell greatly, becoming bloated with your seed.  She is left full and leaking your cum for quite some time after you're done before she's able to get up and return to her desk[otherwise if cock width of player >= ( ( scalevalue of Larissa + 1 ) * 5 )].  Your heavy output causes the [form of Larissa][']s belly to swell, leaving her with a prominent bulge of cum when she heads back to her desk[otherwise if cock width of player >= ( ( ( scalevalue of Larissa + 1 ) * 5 ) / 2 )].  Your large output leaves the [form of Larissa] full and leaking your cum when she heads back to her desk[otherwise].  After you're done, Larissa heads back to her desk with a contented smile on her face[end if].";


to say Larissasex_FM:
	let larfound be 0;
	[puts Larissa's form as lead monster in case of impregnation]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is infname of Larissa:
			now monster is y;
			now larfound is 1;
			break;
	let baby be 0;
	if child is born or gestation of child is not 0, now baby is 1;
	say "     The [if cunts of Larissa > 0]herm[otherwise]male[end if] [form of Larissa] guides you down onto the cot.  [subjpro_cap of larissa] smiles down at you as [subjpro of larissa] spreads your legs.  'I'm looking forward to being on top for a change,' [subjpro of larissa] says, running a [handform of Larissa] over [possadj of Larissa] [cock size desc of Larissa] [cock of Larissa] manhood.  It dribbles some precum down onto your waiting crotch while [subjpro of Larissa] rubs [possadj of Larissa] [bodydesc of Larissa] body against yours[if breast size of Larissa > 0], pressing [possadj of Larissa] [breast size desc of larissa] bosom down onto you[end if].  Getting increasingly excited, you slide your hands [if cocks of player > 0]past your own maleness [end if]between your thighs and spread your pussy in open invitation to that sexy cock and its now [if cock length of Larissa > 24]hugely[otherwise if cock length of larissa > 12]largely[otherwise if cock length of Larissa > 7]sizably[otherwise]modestly[end if]-hung owner.";
	if cock length of Larissa > ( ( cunt length of player * 2 ) + cunt width of player + 2 ):			[super-big]
		say "     [possadj_cap of Larissa] [cock size desc of Larissa] [cock of Larissa] penis is too large [if cunt length of player >= 12]even [end if]for your [cunt size desc of player] pussy, so [subjpro of Larissa] satisfies [objpro of Larissa]self by rubbing [possadj of Larissa] maleness down against you, grinding it across your juicy folds[if cocks of player > 0] and throbbing shaft[end if][if breast size of Larissa > 0].  You move your hands up to [possadj of Larissa] lovely [breast size desc of Larissa] breasts, caressing them and teasing [possadj of Larissa] nipples[otherwise].  You move your hands up to [possadj of Larissa] lovely [bodytype of Larissa] body, caressing [possadj of Larissa] [bodytype of Larissa] form[end if].  Pressing [possadj of Larissa] [mouth of Larissa] to your lips, [subjpro of Larissa] kisses you with a soft moan of pleasure.  When your hands slide further to caress [possadj of Larissa] [cock of Larissa] shaft and [Larissaballs], [subjpro of Larissa] spurts precum across your [bodydesc of player] body and kisses you all the more excitedly.";
		say "     	With [possadj of Larissa] orgasm approaching, you press [possadj of Larissa] glans to your pussy and grind hard against it.  [subjpro_cap of Larissa] cums with a loud moan of release.  While much of [possadj of Larissa] seed soaks your crotch, some blasts shoot into you[if cock width of Larissa >= 40].  This results in still a sizable amount of semen squirted into you[otherwise if cock width of player >= 20].  This results in quite a bit of semen still getting squirted into you[end if].  Feeling these spurts of [possadj of Larissa] hot semen splashing onto and into your cunt pushes you over the edge into orgasm as well[if cocks of player > 0]spraying your seed across your [bodytype of player] body and [end if]adding your feminine juices to the sticky mess at your crotch.  You both snuggle together while recovering from the powerful climax and, after a little more fun while cleaning each other up, head back out front.[if cock width of Larissa >= 20 or a random chance of 1 in 2 succeeds][impregchance][end if]";
	otherwise if cock length of larissa > ( cunt length of player + cunt width of player + 2 ):			[large]
		say "     [possadj_cap of Larissa] [cock size desc of Larissa] [cock of Larissa] penis is quite large compared to your [cunt size desc of player] pussy, necessitating that [subjpro of Larissa] start slowly as [subjpro of Larissa] thrusts into those wet folds of yours, making a visible bump in your belly from having [possadj of larissa] [cock size desc of Larissa] rod stuffed in you[if breast size of Larissa > 0].  You move your hands up to [possadj of Larissa] lovely [breast size desc of Larissa] breasts, caressing them and teasing [possadj of Larissa] nipples[otherwise].  You move your hands up to [possadj of Larissa] lovely [bodytype of Larissa] body, caressing [possadj of Larissa] [bodytype of Larissa] form[end if].  Pressing [possadj of Larissa] [mouth of Larissa] to your lips, [subjpro of Larissa] kisses you with a soft moan of pleasure.  Once you've loosened up enough, you slide a hand down to rub [possadj of larissa] [Larissaballs] and urge [objpro of larissa] to fuck you faster and harder between kisses.";
		say "     With [possadj of Larissa] orgasm approaching, you knead [possadj of larissa] balls and squeeze your inner walls around [possadj of larissa] maleness.  [subjpro_cap of larissa] pushes as deep as [subjpro of larissa] can into you, bulging your belly with [possadj of larissa] cock as [subjpro of larissa] unleashes [possadj of larissa] hot load[if cock width of Larissa >= ( ( scalevalue of player + 1 ) * 10 )].  [possadj_cap of larissa] enormous output causes your [bodytype of player] belly to swell greatly, becoming bloated with [possadj of larissa] seed.  You are left full and leaking [possadj of larissa] cum for quite some time after [subjpro of larissa][']s done.  When you finally drain or absorb enough to stagger out to the front lobby, you find [objpro of larissa] sitting at [possadj of larissa] desk with a smug look on [possadj of larissa] [face of Larissa] face[otherwise if cock width of player >= ( ( scalevalue of Larissa + 1 ) * 5 )].  [possadj_cap of larissa] heavy output causes your [bodytype of player] belly to swell further, leaving you with a prominent bulge of cum when you stagger back to the front lobby[otherwise if cock width of player >= ( ( ( scalevalue of Larissa + 1 ) * 5 ) / 2 )].  [possadj_cap of larissa] large output leaves your [bodytype of player] belly full and leaking [possadj of larissa] cum when you head back to the front lobby[otherwise].  After [subjpro of larissa][']s done, Larissa heads back to [possadj of larissa] desk with a contented smile on [possadj of larissa] [face of larissa] face[end if].[impregchance][if cock width of Larissa >= 20 and a random chance of 1 in 2 succeeds][impregchance][end if]";
	otherwise if cock length of Larissa < ( ( cunt length of player + cunt width of player + 1 ) / 3 ):		[small]
		say "     [possadj_cap of larissa] [cock size desc of Larissa] [cock of Larissa] is quite small compared to your [cunt size desc of player] pussy, letting [objpro of larissa] thrust into you easily, but provides limited stimulation for you.  To make up for this, [subjpro of larissa] rubs and teases at your wet folds and clit with one [handform of larissa], making you quiver in delight[if breast size of Larissa > 0].  You move your hands up to [possadj of Larissa] lovely [breast size desc of Larissa] breasts, caressing them and teasing [possadj of Larissa] nipples[otherwise].  You move your hands up to [possadj of Larissa] lovely [bodytype of Larissa] body, caressing [possadj of Larissa] [bodytype of Larissa] form[end if].  Pressing [possadj of Larissa] [mouth of Larissa] to your lips, [subjpro of Larissa] kisses you with a soft moan of pleasure.  As [subjpro of Larissa] fucks you, you slide a hand down to rub [possadj of larissa] [Larissaballs] and urge [objpro of larissa] to fuck you faster and harder between kisses.";
		say "     With [possadj of Larissa] orgasm approaching, you knead [possadj of Larissa] balls and squeeze your inner walls around [possadj of Larissa] maleness.  [subjpro_cap of Larissa] pushes fully into you and unleashes [possadj of Larissa] hot load[if cock width of Larissa >= ( ( scalevalue of player + 1 ) * 10 )].  [possadj_cap of Larissa] enormous output causes your [bodytype of player] belly to swell greatly, becoming bloated with [possadj of Larissa] seed.  You are left full and leaking [possadj of Larissa] cum for quite some time after [subjpro of larissa][']s done.  When you finally drain or absorb enough to stagger out to the front lobby, you find [objpro of Larissa] sitting at [possadj of Larissa] desk with a smug look on [possadj of Larissa] [face of Larissa] face[otherwise if cock width of player >= ( ( scalevalue of Larissa + 1 ) * 5 )].  [possadj_cap of Larissa] heavy output causes your [bodytype of player] belly to swell, leaving you with a prominent bulge of cum when you stagger back to the front lobby[otherwise if cock width of player >= ( ( ( scalevalue of Larissa + 1 ) * 5 ) / 2 )].  [possadj_cap of Larissa] large output leaves your [bodytype of player] belly full and leaking [possadj of Larissa] cum when you head back to the front lobby[otherwise].  After [subjpro of larissa][']s done, Larissa heads back to [possadj of Larissa] desk with a contented smile on [possadj of Larissa] [face of larissa] face[end if].[impregchance][if cock width of Larissa >= 20 and a random chance of 1 in 2 succeeds][impregchance][end if]";
	otherwise:		[compatible size - normal]
		say "     [subjpro_cap of larissa] slides [possadj of Larissa] [cock size desc of Larissa] [cock of Larissa] penis into your [cunt size desc of player] pussy, enjoying the wonderful sensation of you squeezing down around [possadj of Larissa] maleness[if breast size of Larissa > 0].  You move your hands up to [possadj of Larissa] lovely [breast size desc of Larissa] breasts, caressing them and teasing [possadj of Larissa] nipples[otherwise].  You move your hands up to [possadj of Larissa] lovely [bodytype of Larissa] body, caressing [possadj of Larissa] [bodytype of Larissa] form[end if].  Pressing [possadj of Larissa] [mouth of Larissa] to your lips, [subjpro of Larissa] kisses you with a soft moan of pleasure.  As [subjpro of Larissa] fucks you, you slide a hand down to rub [possadj of larissa] [Larissaballs] and urge [objpro of larissa] to fuck you faster and harder between kisses.";
		say "     With [possadj of Larissa] orgasm approaching, you knead [possadj of Larissa] balls and squeeze your inner walls around [possadj of Larissa] maleness.  [subjpro_cap of Larissa] pushes fully into you and unleashes [possadj of Larissa] hot load[if cock width of Larissa >= ( ( scalevalue of player + 1 ) * 10 )].  [possadj_cap of Larissa] enormous output causes your [bodytype of player] belly to swell greatly, becoming bloated with her seed.  You are left full and leaking [possadj of Larissa] cum for quite some time after [subjpro of larissa][']s done.  When you finally drain or absorb enough to stagger out to the front lobby, you find [objpro of Larissa] sitting at [possadj of Larissa] desk with a smug look on [possadj of Larissa] [face of Larissa] face[otherwise if cock width of player >= ( ( scalevalue of Larissa + 1 ) * 5 )].  [possadj_cap of Larissa] heavy output causes your [bodytype of player] belly to swell, leaving you with a prominent bulge of cum when you stagger back to the front lobby[otherwise if cock width of player >= ( ( ( scalevalue of Larissa + 1 ) * 5 ) / 2 )].  [possadj_cap of Larissa] large output leaves your [bodytype of player] belly full and leaking [possadj of Larissa] cum when you head back to the front lobby[otherwise].  After [subjpro of larissa][']s done, Larissa heads back to [possadj of Larissa] desk with a contented smile on [possadj of Larissa] [face of larissa] face[end if].[impregchance][if cock width of Larissa >= 20 and a random chance of 1 in 2 succeeds][impregchance][end if]";
	if baby is 0 and gestation of child is not 0 and Larfound is 0:
		now facename of child is infname of Larissa;
		now bodyname of child is infname of Larissa;
		now skinname of child is infname of Larissa;


to say Larissasex_MM:
	let larfound be 0;
	[puts Larissa's form as lead monster in case of impregnation]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is infname of Larissa:
			now monster is y;
			now larfound is 1;
			break;
	let baby be 0;
	if child is born or gestation of child is not 0, now baby is 1;
	if cock length of Larissa > ( ( scalevalue of player + 1 ) * 12 ):	[too big, full body rub + oral]
		say "     He pushes you back onto the cot and presses his [cock size desc of larissa] [cock of larissa] cock down overtop of you with a wide grin.  'Mmm... I think I might be a little big for you now, which means you'd best get to licking,' he chuckles[if cocks of player > 0].  He grinds his cock down overtop of yours[end if][if cock length of Larissa > cock length of player] with a smug grin at being better hung than you[end if] and pushes cock to your face.  Presented with his pulsing rod, you run your hands overtop of it and start licking and kissing it, drawing a low moan of delight from him.  You slide your tongue all over it, taking long, slow licks that get him spurting precum.  You even lick over his gaping cum slit and press your tongue into it, causing him to throw his head back and grip your sides with his [handform of Larissa]s.";
		say "     Grinding his [cock of Larissa] cock down onto your [bodytype of player] body and having you lick and tease it eventually becomes too much for him, driving him to cum hard, shooting his cum all over your face and into your open mouth[if cock width of Larissa >= 30].  You swallow down as much of the [form of Larissa][']s excessive load of semen as you can, but much of it ends up covering your face, the head of the bed and even the wall behind it[otherwise if cock width of Larissa >= 15].  You swallow down much of the [form of Larissa][']s large load of semen, but there's lots of it left covering your face and the head of the bed[otherwise].  You swallow down as much of the [form of Larissa][']s semen as you can get, but much of it ends up covering your face[end if] by the time he's drained.  After having some more fun while helping to get cleaned up[if cocks of player > 0], getting you off as well[end if], he heads back out front and returns to his desk.";
	otherwise:
		say "     The [if cunts of Larissa > 0]herm[otherwise]male[end if] [form of Larissa] guides you down onto all fours, running his hands down your back to grab your ass.  'Mmm... I'm looking forward to being on top for a change,' he says, running a [handform of Larissa] over [possadj of Larissa] [cock size desc of Larissa] [cock of Larissa] manhood.  It dribbles some precum down your back and between your ass cheeks as he guides it into position at your back door.  His [handform of Larissa] gives your rear a squeeze before she teases a finger at your asshole, using his leaking pre to lube and loosen you up.  Getting increasingly excited, you wiggle your bottom and grind back against him in open invitation to that sexy cock and its now [if cock length of Larissa > 24]hugely[otherwise if cock length of larissa > 12]largely[otherwise if cock length of Larissa > 7]sizably[otherwise]modestly[end if]-hung owner.  Grinning, he leans overtop you, pressing his [bodydesc of Larissa] body against yours[if breast size of Larissa > 0], rubbing [possadj of Larissa] [breast size desc of larissa] bosom against your back[end if] as he prepares to mount you.";
		if cock length of Larissa > ( ( scalevalue of player + 1 ) * 6 ):		[large]
			say "     [possadj_cap of Larissa] [cock size desc of Larissa] [cock of Larissa] penis is quite large [if scalevalue of player > 3]even when [end if]compared to your [body size of player] body, necessitating that [subjpro of Larissa] start extra-slow as [subjpro of Larissa] thrusts into that tight ass of yours.  [possadj_cap of Larissa] [cock size desc of Larissa] prick makes a visibly phallic bump in your belly from having so much meat stuffed into you.  You brace yourself as best you can for what's definitely going to be a hell of a ride.  His thrusts are slow at first, but gradually pick up the pace as your body grows used to accommodating her [cock of player] rod.  Soon you're inner walls are squeezing and tugging at his pulsing shaft while his [if breast size of Larissa > 0][breast size desc of Larissa] breasts press down against your back[otherwise][bodydesc of Larissa] body presses down against your back[end if][if scalevalue of player is scalevalue of Larissa].  He nuzzles at your shoulders and neck, kissing and nipping along them[otherwise if scalevalue of player < scalevalue of Larissa].  Being considerably larger than you, the [body size of Larissa] [form of Larissa] keeps you pinned down so he can pound you even harder[otherwise].  The smaller [form of Larissa] grips your ass tightly while pounding you hard and fast with its oversized cock[end if].  You moan and groan beneath him [if cocks of player > 0]while reaching around to grope your [cock size desc of player] [cock of player] cock[otherwise]when he gives your ass a swat and drives hard into you[end if] with a chuckle.";
			say "     With his orgasm fast approaching, you work your ass harder over his prick and his [Larissaballs].  He pushes as deep as he can into you, bulging your belly with his cock as he unleashes his hot load[if cock width of Larissa >= ( ( scalevalue of player + 1 ) * 10 )].  [possadj_cap of larissa] enormous output causes your [bodytype of player] belly to swell greatly, becoming bloated with [possadj of larissa] seed.  You are left full and leaking [possadj of larissa] cum for quite some time after [subjpro of larissa][']s done.  When you finally drain or absorb enough to stagger out to the front lobby, you find [objpro of larissa] sitting at [possadj of larissa] desk with a smug look on [possadj of larissa] [face of Larissa] face[otherwise if cock width of player >= ( ( scalevalue of Larissa + 1 ) * 5 )].  [possadj_cap of larissa] heavy output causes your [bodytype of player] belly to swell further, leaving you with a prominent bulge of cum when you stagger back to the front lobby[otherwise if cock width of player >= ( ( ( scalevalue of Larissa + 1 ) * 5 ) / 2 )].  [possadj_cap of larissa] large output leaves your [bodytype of player] belly full and leaking [possadj of larissa] cum when you head back to the front lobby[otherwise].  After [subjpro of larissa][']s done, Larissa heads back to [possadj of larissa] desk with a contented smile on [possadj of larissa] [face of larissa] face[end if].[mimpregchance][if cock width of Larissa >= 20 and a random chance of 1 in 2 succeeds][mimpregchance][end if]";
		otherwise:
			say "     [possadj_cap of Larissa] [cock size desc of Larissa] [cock of Larissa] penis presses slowly into your [body size of player] body as the former female mounts you.  He thrusts steadily into that tight ass of yours, pushing a little further each time until he's fully sheathed inside you.  You brace yourself as best you can and get your rear into a better position to get pounded by the horny [form of Larissa].  His thrusts are slow at first, but gradually pick up the pace as your body grows used to accommodating her [cock of player] rod.  Soon you're inner walls are squeezing and tugging at his pulsing shaft while his [if breast size of Larissa > 0][breast size desc of Larissa] breasts press down against your back[otherwise][bodydesc of Larissa] body presses down against your back[end if][if scalevalue of player is scalevalue of Larissa].  He nuzzles at your shoulders and neck, kissing and nipping along them[otherwise if scalevalue of player < scalevalue of Larissa].  Being considerably larger than you, the [body size of Larissa] [form of Larissa] keeps you pinned down so he can pound you even harder[otherwise].  The smaller [form of Larissa] grips your ass tightly while pounding you hard and fast with its oversized cock[end if].  You moan and groan beneath him [if cocks of player > 0]while reaching around to grope your [cock size desc of player] [cock of player] cock[otherwise]when he gives your ass a swat and drives hard into you[end if] with a chuckle.";
			say "     With his orgasm fast approaching, you work your ass harder over his prick and his [Larissaballs].  He pushes fully into you, causing you to moan wantonly as he unleashes his hot load[if cock width of Larissa >= ( ( scalevalue of player + 1 ) * 10 )].  [possadj_cap of larissa] enormous output causes your [bodytype of player] belly to swell greatly, becoming bloated with [possadj of larissa] seed.  You are left full and leaking [possadj of larissa] cum for quite some time after [subjpro of larissa][']s done.  When you finally drain or absorb enough to stagger out to the front lobby, you find [objpro of larissa] sitting at [possadj of larissa] desk with a smug look on [possadj of larissa] [face of Larissa] face[otherwise if cock width of player >= ( ( scalevalue of Larissa + 1 ) * 5 )].  [possadj_cap of larissa] heavy output causes your [bodytype of player] belly to swell, leaving you with a prominent bulge of cum when you stagger back to the front lobby[otherwise if cock width of player >= ( ( ( scalevalue of Larissa + 1 ) * 5 ) / 2 )].  [possadj_cap of larissa] large output leaves your [bodytype of player] belly full and leaking [possadj of larissa] cum when you head back to the front lobby[otherwise].  After [subjpro of larissa][']s done, Larissa heads back to [possadj of larissa] desk with a contented smile on [possadj of larissa] [face of larissa] face[end if].[mimpregchance][if cock width of Larissa >= 20 and a random chance of 1 in 2 succeeds][mimpregchance][end if]";
		if baby is 0 and gestation of child is not 0 and Larfound is 0:
			now facename of child is infname of Larissa;
			now bodyname of child is infname of Larissa;
			now skinname of child is infname of Larissa;


to say Larissasex_FF:
	say "     The female [form of Larissa] pushes you down onto the cot and snuggles up beside you on it, running her [handform of Larissa] over your [bodydesc of player] body as she does.  You pull her into a kiss and slide a hand between her legs, sliding your fingers over her [cunt size desc of larissa] [bodytype of larissa] pussy.  This draws a moan from her and she gives your ass a firm squeeze, kissing you even harder before moving her [handform of Larissa] to your dripping folds.  Soon you're fingering one another frantically, rubbing over those wet lips, sensitive clits and clenching inner walls[if breast size of larissa > 0].  You move your mouth to her [breast size desc of Larissa] breasts, kissing at them and sucking on her hard nipples.  She gives delightful cries and her pussy quivers when you nibble on them.  You continue to lavish attention upon one another until finally you both have cum several times, ending with a final powerful orgasm that leaves you both panting on the bed in each other's arms.  When you've had a chance to recover and clean up, you both head back out and the [form of Larissa] returns to her desk with a contented smile on her face.".


to say Larissasex_taurfun:
	if player is herm and Larissa is herm:			[H/H]
		if a random chance of 1 in 2 succeeds:
			say "[Larissasex_taurMF]";				[player tops]
		otherwise:
			say "[Larissasex_taurFM]";				[Larissa tops]
	otherwise if cocks of player > 0 and cunts of Larissa > 0:
		say "[Larissasex_taurMF]";				[player tops]
	otherwise:
		say "[Larissasex_taurFM]";				[Larissa tops]


to say Larissasex_taurMF:
	say "     You guide the [if cocks of Larissa > 0]herm[otherwise]female[end if] [form of Larissa] to the open area beside the cot and move in behind her.  Grinning at your plan[if tailed of larissa is true] and flagging her [tail of larissa][end if], she braces her legs and wiggles her rear end tantalizingly.  The [skin of Larissa] covering her [bodytype of Larissa] body is quite lovely, making you pause to take in her [generallook of larissa] form.  As lovely as the sight is, you can't wait any longer to admire it and mount her tauric form with your own.  With your forelimbs at her sides and your arms around her chest, you move into position[if breast size of Larissa > 0].  You run your hands over her chest, cupping her breasts and playing with her nipples while kissing and nibbling along the back of her neck[otherwise].  You run your hands over her chest while kissing and nibbling along the back of her neck[end if], much to her delight.";
	if cock length of player > ( ( cunt length of larissa * 2 ) + cunt width of larissa + 2 ):			[super-big]
		say "     Your [cock size desc of player] [cock of player] penis is too large [if cunt length of Larissa >= 12]even [end if]for her [cunt size desc of Larissa] pussy, so you satisfy yourself by grinding your maleness against her juicy folds and tauric backside.  She moans and presses back against your [bodydesc of player] form, reaching back for a time to rub her [handform of larissa] over your [cock size desc of player] shaft.  Licks and kisses are given as well, gradually getting you worked up to the point where you're about to blow.";
		say "     Sensing your orgasm coming, you shift your position enough to press your glans to her pussy and grind hard against it.  You cum with a loud moan.  While much of your seed soaks her crotch and your underbelly, some blasts shoot into her[if cock width of player >= 40].  This results in still a sizable amount of semen squirted into the transformed woman[otherwise if cock width of player >= 20].  This results in quite a bit of semen still getting squirted into the transformed woman[end if].  The pleasure of you cumming onto and into her pushes her over the edge into orgasm as well, [if cocks of larissa > 0]spraying her seed across the floor and [end if]adding her pussy juices to the sticky mess as her crotch.  You both snuggle together while recovering from powerful climax and, after a little more fun while cleaning each other up, head back out front.";
	otherwise if cock length of player > ( cunt length of larissa + cunt width of larissa + 2 ):			[large]
		say "     Your [cock size desc of player] [cock of player] penis is quite large compared to her [cunt size desc of Larissa] pussy, necessitating that you start slow as you thrust into those wet folds of hers.  She moans and presses back against your [bodydesc of player] form as you slowly sink your cock into her [bodytype of Larissa] body, making a visible bump in her belly from having your [cock size desc of player] rod stuffed in her.  She moans and wraps her arms around yours, hugging them to her [if breast size of Larissa > 0][breast size desc of Larissa] breasts[otherwise]chest[end if] while you lick and kiss one another, pressing your lips to her [mouth of Larissa].  Your tauric form grips hers as you rut her like a beast, much to your mutual delight.";
		say "     Sensing your orgasm coming, she braces herself with all her legs and pushes back firmly to help you drive as deep as you can go into her, bulging her belly with your cock as you unleash your hot load[if cock width of player >= ( ( scalevalue of Larissa + 1 ) * 10 )].  Your enormous output causes the [form of Larissa][']s belly to swell greatly, becoming bloated with your seed.  She is left full and leaking your cum for quite some time after you're done before she's able to get up and return to her desk[otherwise if cock width of player >= ( ( scalevalue of Larissa + 1 ) * 5 )].  Your heavy output causes the [form of Larissa][']s belly to swell further, leaving her with a prominent bulge of cum when she heads back to her desk[otherwise if cock width of player >= ( ( ( scalevalue of Larissa + 1 ) * 5 ) / 2 )].  Your large output leaves the [form of Larissa] full and leaking your cum when she heads back to her desk[otherwise].  After you're done, Larissa heads back to her desk with a contented smile on her face[end if].";
	otherwise if cock length of player < ( ( cunt length of Larissa + cunt width of Larissa + 1 ) / 3 ):		[small]
		say "     Your [cock size desc of player] [cock of player] penis is quite small compared to her [cunt size desc of Larissa] pussy, letting you thrust into her easily, but provided limited stimulation for her.  To alleviate this, you ride her all the harder while manhandling her humanoid upper body, drawing sounds of pleasure from her.  She moans and wraps her arms around yours, hugging them to her [if breast size of Larissa > 0][breast size desc of Larissa] breasts[otherwise]chest[end if] while you lick and kiss one another, pressing your lips to her [mouth of Larissa].  Your tauric form grips hers as you rut her like a beast, much to your mutual delight.";
		say "     Sensing your orgasm coming, she braces herself with all her legs and pushes back firmly while urging you to ride her even harder.  You pound away at her like with your [cock of player] manhood before driving it fully into her and unleash your hot load[if cock width of player >= ( ( scalevalue of Larissa + 1 ) * 10 )].  Your enormous output causes the [form of Larissa][']s belly to swell greatly, becoming bloated with your seed.  She is left full and leaking your cum for quite some time after you're done before she's able to get up and return to her desk[otherwise if cock width of player >= ( ( scalevalue of Larissa + 1 ) * 5 )].  Your heavy output causes the [form of Larissa][']s belly to swell, leaving her with a prominent bulge of cum when she heads back to her desk[otherwise if cock width of player >= ( ( ( scalevalue of Larissa + 1 ) * 5 ) / 2 )].  Your large output leaves the [form of Larissa] full and leaking your cum when she heads back to her desk[otherwise].  After you're done, Larissa heads back to her desk with a contented smile on her face[end if].";
	otherwise:		[compatible size - normal]
		say "     You slide your [cock size desc of player] [cock of player] penis into her [cunt size desc of Larissa] pussy, enjoying the wonderful sensation of her squeezing around your maleness.  She and wraps her arms around yours, hugging them to her [if breast size of Larissa > 0][breast size desc of Larissa] breasts[otherwise]chest[end if] while you lick and kiss one another, pressing your lips to her [mouth of Larissa].  Your tauric form grips hers as you rut her like a beast, much to your mutual delight.";
		say "     Sensing your orgasm coming, she braces herself with all her legs and pushes back firmly while urging you to ride her even harder.  You pound away at her like with your [cock of player] manhood before driving it fully into her and unleash your hot load[if cock width of player >= ( ( scalevalue of Larissa + 1 ) * 10 )].  Your enormous output causes the [form of Larissa][']s belly to swell greatly, becoming bloated with your seed.  She is left full and leaking your cum for quite some time after you're done before she's able to get up and return to her desk[otherwise if cock width of player >= ( ( scalevalue of Larissa + 1 ) * 5 )].  Your heavy output causes the [form of Larissa][']s belly to swell, leaving her with a prominent bulge of cum when she heads back to her desk[otherwise if cock width of player >= ( ( ( scalevalue of Larissa + 1 ) * 5 ) / 2 )].  Your large output leaves the [form of Larissa] full and leaking your cum when she heads back to her desk[otherwise].  After you're done, Larissa heads back to her desk with a contented smile on her face[end if].";


to say Larissasex_taurFM:
	let larfound be 0;
	[puts Larissa's form as lead monster in case of impregnation]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is infname of Larissa:
			now monster is y;
			now larfound is 1;
			break;
	let baby be 0;
	if child is born or gestation of child is not 0, now baby is 1;
	say "     The [if cunts of Larissa > 0]herm[otherwise]male[end if] [form of Larissa] guides you to the open area beside the cot and moves in behind you.  [subjpro_cap of larissa] grins as you brace your legs and wiggle your rear end tantalizingly at [objpro of Larissa].  'I'm looking forward to mounting that sexy taur body of yours,' [subjpro of larissa] says, running a [handform of Larissa] across your ass.  [subjpro_cap of larissa] doesn't tary, moving [possadj of larissa] [bodydesc of Larissa] body over yours.  She grips you with [possadj of larissa] forelegs and puts [possadj of larissa] arms around your humanoid upper body as [subjpro of larissa] brings [possadj of Larissa] [cock size desc of Larissa] [cock of larissa] into position[if breast size of larissa > 0].  Even as [subjpro of larissa] grinds [possadj of Larissa] cock against your cunny, you can feel [possadj of Larissa] [breast size desc of larissa] breasts pressed against your back[end if].  You moan at this and holds your hips steady with your pussy in invitation of that sexy cock and its now [if cock length of Larissa > 24]hugely[otherwise if cock length of larissa > 12]largely[otherwise if cock length of Larissa > 7]sizably[otherwise]modestly[end if]-hung owner to take you.";
	if cock length of Larissa > ( ( cunt length of player * 2 ) + cunt width of player + 2 ):			[super-big]
		say "     [possadj_cap of Larissa] [cock size desc of Larissa] [cock of Larissa] penis is too large [if cunt length of player >= 12]even [end if]for your [cunt size desc of player] pussy, so [subjpro of Larissa] satisfies [objpro of Larissa]self by rubbing [possadj of Larissa] maleness down against you, grinding it across your juicy folds[if cocks of player > 0], throbbing shaft[smn] and tauric backside[otherwise] and tauric backside[end if][if breast size of player > 0].  [subjpro_cap of Larissa] moves [possadj of Larissa] hands to your breasts, cupping your [short breast size desc of player] bosom, caressing and teasing your breasts and nipples[end if].  Turning your head to the side, you press your lips to [posspro of larissa] in a kiss while moaning in pleasure while [subjpro of larissa] works that [cock of Larissa] manhood against you.  You feel spurts of [possadj of Larissa] precum leak out onto you and kiss [objpro of Larissa] all the more excitedly.";
		say "     	With [possadj of Larissa] orgasm approaching, [subjpro of larissa] presses [possadj of Larissa] glans to your pussy and grinds hard against it, causing you to moan.  [subjpro_cap of Larissa] cums with a loud moan of release as [possadj of Larissa] [Larissaballs] send out their payload.  While much of [possadj of Larissa] seed soaks your crotch, some blasts shoot into you[if cock width of Larissa >= 40].  This results in still a sizable amount of semen squirted into you[otherwise if cock width of player >= 20].  This results in quite a bit of semen still getting squirted into you[end if].  Feeling these spurts of [possadj of Larissa] hot semen splashing onto and into your cunt pushes you over the edge into orgasm as well[if cocks of player > 0]spraying your seed across the floor and [end if]adding your feminine juices to the sticky mess at your crotch.  You both snuggle together while recovering from the powerful climax and, after a little more fun while cleaning each other up, head back out front.[if cock width of Larissa >= 20 or a random chance of 1 in 2 succeeds][impregchance][end if]";
	otherwise if cock length of larissa > ( cunt length of player + cunt width of player + 2 ):			[large]
		say "     [possadj_cap of Larissa] [cock size desc of Larissa] [cock of Larissa] penis is quite large compared to your [cunt size desc of player] pussy, necessitating that [subjpro of Larissa] start slowly as [subjpro of Larissa] thrusts into those wet folds of yours, making a visible bump in your underbelly from having [possadj of larissa] [cock size desc of Larissa] rod stuffed in you[if breast size of player > 0].  [subjpro_cap of Larissa] moves [possadj of Larissa] hands to your breasts, cupping your [short breast size desc of player] bosom, caressing and teasing your breasts and nipples[end if].  Turning your head to the side, you press your lips to [posspro of larissa] in a kiss while moaning in pleasure while [subjpro of larissa] works that [cock of Larissa] manhood further into you.  Once you've loosened up enough, you push back into her thrusts and urge [objpro of larissa] to fuck you faster and harder between kisses.";
		say "     With [possadj of Larissa] orgasm approaching, [subjpro of larissa] picks up the pace and pounds away at you with increasing zeal, [possadj of larissa] [Larissaballs] slapping against you as you're pounded by the lustful taur.  [subjpro_cap of larissa] pushes as deep as [subjpro of larissa] can into you, bulging your belly with [possadj of larissa] cock as [subjpro of larissa] unleashes [possadj of larissa] hot load[if cock width of Larissa >= ( ( scalevalue of player + 1 ) * 10 )].  [possadj_cap of larissa] enormous output causes your [bodytype of player] belly to swell greatly, becoming bloated with [possadj of larissa] seed.  You are left full and leaking [possadj of larissa] cum for quite some time after [subjpro of larissa][']s done.  When you finally drain or absorb enough to stagger out to the front lobby, you find [objpro of larissa] sitting at [possadj of larissa] desk with a smug look on [possadj of larissa] [face of Larissa] face[otherwise if cock width of player >= ( ( scalevalue of Larissa + 1 ) * 5 )].  [possadj_cap of larissa] heavy output causes your [bodytype of player] belly to swell further, leaving you with a prominent bulge of cum when you stagger back to the front lobby[otherwise if cock width of player >= ( ( ( scalevalue of Larissa + 1 ) * 5 ) / 2 )].  [possadj_cap of larissa] large output leaves your [bodytype of player] belly full and leaking [possadj of larissa] cum when you head back to the front lobby[otherwise].  After [subjpro of larissa][']s done, Larissa heads back to [possadj of larissa] desk with a contented smile on [possadj of larissa] [face of larissa] face[end if].[impregchance][if cock width of Larissa >= 20 and a random chance of 1 in 2 succeeds][impregchance][end if]";
	otherwise if cock length of Larissa < ( ( cunt length of player + cunt width of player + 1 ) / 3 ):		[small]
		say "     [possadj_cap of larissa] [cock size desc of Larissa] [cock of Larissa] is quite small compared to your [cunt size desc of player] pussy, letting [objpro of larissa] thrust into you easily, but provides limited stimulation for you.  To alleviate this, [subjpro of larissa] rides you all the harder while manhandling your upper body, getting you to moan in pleasure[if breast size of player > 0].  [subjpro_cap of Larissa] moves [possadj of Larissa] [handform of larissa]s to your breasts, cupping your [short breast size desc of player] bosom, caressing and teasing your breasts and nipples[end if].  You put your arms around [posspro of larissa] and tilt your head back to kiss her lustfully on the [mouth of larissa].  As [subjpro of Larissa] fucks you, you push back into her thrusts and urge [objpro of larissa] to fuck you faster and harder between kisses.";
		say "     With [possadj of Larissa] orgasm approaching, [subjpro of larissa] picks up the pace and pounds away at you with increasing zeal, [possadj of larissa] [Larissaballs] slapping against you as you're pounded by the lustful taur.  [subjpro_cap of larissa] pushes [possadj of larissa] [cock of larissa] cock fully into you and unleashes [possadj of larissa] hot load[if cock width of Larissa >= ( ( scalevalue of player + 1 ) * 10 )].  [possadj_cap of larissa] enormous output causes your [bodytype of player] belly to swell greatly, becoming bloated with [possadj of larissa] seed.  You are left full and leaking [possadj of larissa] cum for quite some time after [subjpro of larissa][']s done.  When you finally drain or absorb enough to stagger out to the front lobby, you find [objpro of larissa] sitting at [possadj of larissa] desk with a smug look on [possadj of larissa] [face of Larissa] face[otherwise if cock width of player >= ( ( scalevalue of Larissa + 1 ) * 5 )].  [possadj_cap of larissa] heavy output causes your [bodytype of player] belly to swell further, leaving you with a prominent bulge of cum when you stagger back to the front lobby[otherwise if cock width of player >= ( ( ( scalevalue of Larissa + 1 ) * 5 ) / 2 )].  [possadj_cap of larissa] large output leaves your [bodytype of player] belly full and leaking [possadj of larissa] cum when you head back to the front lobby[otherwise].  After [subjpro of larissa][']s done, Larissa heads back to [possadj of larissa] desk with a contented smile on [possadj of larissa] [face of larissa] face[end if].[impregchance][if cock width of Larissa >= 20 and a random chance of 1 in 2 succeeds][impregchance][end if]";
	otherwise:		[compatible size - normal]
		say "     [subjpro_cap of larissa] slides [possadj of Larissa] [cock size desc of Larissa] [cock of Larissa] penis into your [cunt size desc of player] pussy, enjoying the wonderful sensation of you squeezing down around [possadj of Larissa] maleness[if breast size of player > 0].  [subjpro_cap of Larissa] moves [possadj of Larissa] [handform of larissa]s to your breasts, cupping your [short breast size desc of player] bosom, caressing and teasing your breasts and nipples[end if].  You put your arms around [posspro of larissa] and tilt your head back to kiss her lustfully on the [mouth of larissa].  As [subjpro of Larissa] fucks you, you push back into her thrusts and urge [objpro of larissa] to fuck you faster and harder between kisses.";
		say "     With [possadj of Larissa] orgasm approaching, [subjpro of larissa] picks up the pace and pounds away at you with increasing zeal, [possadj of larissa] [Larissaballs] slapping against you as you're pounded by the lustful taur.  [subjpro_cap of larissa] pushes [possadj of larissa] [cock of larissa] cock fully into you and unleashes [possadj of larissa] hot load[if cock width of Larissa >= ( ( scalevalue of player + 1 ) * 10 )].  [possadj_cap of larissa] enormous output causes your [bodytype of player] belly to swell greatly, becoming bloated with [possadj of larissa] seed.  You are left full and leaking [possadj of larissa] cum for quite some time after [subjpro of larissa][']s done.  When you finally drain or absorb enough to stagger out to the front lobby, you find [objpro of larissa] sitting at [possadj of larissa] desk with a smug look on [possadj of larissa] [face of Larissa] face[otherwise if cock width of player >= ( ( scalevalue of Larissa + 1 ) * 5 )].  [possadj_cap of larissa] heavy output causes your [bodytype of player] belly to swell further, leaving you with a prominent bulge of cum when you stagger back to the front lobby[otherwise if cock width of player >= ( ( ( scalevalue of Larissa + 1 ) * 5 ) / 2 )].  [possadj_cap of larissa] large output leaves your [bodytype of player] belly full and leaking [possadj of larissa] cum when you head back to the front lobby[otherwise].  After [subjpro of larissa][']s done, Larissa heads back to [possadj of larissa] desk with a contented smile on [possadj of larissa] [face of larissa] face[end if].[impregchance][if cock width of Larissa >= 20 and a random chance of 1 in 2 succeeds][impregchance][end if]";
	if baby is 0 and gestation of child is not 0 and Larfound is 0:
		now facename of child is infname of Larissa;
		now bodyname of child is infname of Larissa;
		now skinname of child is infname of Larissa;


[-----------------------------------------------------------------------------------------------------]


Section 5 - Transformation Mechanics

Part 0 - Variables

Larissa has a text called body. Body of Larissa is usually "charmingly human".
Larissa has a text called skin. Skin of Larissa is usually "evenly tanned skin".
Larissa has a text called Cock. Cock of Larissa is usually "[one of]normal[or]human[or]pink[at random]".
Larissa has a text called face. Face of Larissa is usually "pretty and human".
Larissa has a text called tail. tail of Larissa is usually "".
Larissa has a truth state called tailed.  tailed is usually false.
Larissa has a truth state called winged.  winged is usually false.
Larissa has a text called infname. infname is usually "human".
Larissa has a text called form. form is usually "human".
Larissa has a text called handform. handform is usually "hand".
Larissa has a text called footform. footform is usually "foot".
Larissa has a text called mouth. Mouth is usually "mouth".
Larissa has a text called tftext. tftext is usually "".
Larissa has a text called generallook. generallook is usually "cute".
Larissa has text called Cock Size Desc.
Larissa has text called Cunt Size Desc.
Larissa has text called Breast Size Desc.
Larissa has a number called cocks.
Larissa has a number called breasts.  Breasts of Larissa is usually 2.
Larissa has a number called cunts.  Cunts of Larissa is usually 1.
Larissa has a number called Breast Size.  Breast size of Larissa is usually 4.
Larissa has a number called Cock length.
Larissa has a number called Cock Width.
Larissa has a number called Cunt length.  Cunt length of Larissa is usually 6.
Larissa has a number called Cunt width.  Cunt width of Larissa is usually 3.
Larissa has a number called scalevalue.  The scalevalue is usually 3.
Larissa has a text called bodydesc.  The bodydesc is usually "[one of]average[or]normal[or]unchanged[at random]".
Larissa has a text called bodytype.  The bodytype is usually "human".
Larissa has a text called subjpro_cap.  The subjpro_cap is usually "She".
Larissa has a text called subjpro.  The subjpro is usually "she".
Larissa has a text called possadj_cap.  The possadj_cap is usually "Her".
Larissa has a text called possadj.  The possadj is usually "her".
Larissa has a text called objpro.  The objpro is usually "her".
Larissa has a number called daycycle.
Larissa has a number called bodycat.
Larissa has a number called lasttf.  Lasttf is normally 255.
Larissa has a number called oldgender.  The oldgender is usually 2.
lar_tfcost is a number that varies.  lar_tfcost is normally 50.

Part 2 - Transformation Dialog and Scene

Larissatfing is an action applying to nothing.
understand "Change Larissa" as Larissatfing.
understand "Transform Larissa" as Larissatfing.
understand "TF Larissa" as Larissatfing.

Larissa has a list of text called possible_forms.
Larissa has a list of text called possible_forms_furry.		[Infections contained within the 'furry' flag]
Larissa has a list of text called possible_forms_guy.			[Infections contained within the 'guy' flag]
Larissa has a list of text called possible_forms_girl.		[Infections contained within the 'girl' flag]
Larissa has a list of text called possible_forms_herm.		[Infections contained within the 'hermaphrodite' flag]
Larissa has a list of text called possible_forms_hellspawn.		[Infections contained within the 'hellspawn' flag]
Larissa has a list of text called possible_forms_humorous.		[Infections contained within the 'humorous' flag]

when play begins:
	add { "Panda", "Alpha Husky", "German Shepherd", "Tigress Hooker", "Teddy Bear", "Mammoth", "red kangaroo", "Panther Taur", "Bald Eagle" } to possible_forms_furry of Larissa;
	add { "Panda", "Teddy Bear", "Latex Mistress", "red kangaroo", "Succubus", "Goo Girl", "Centaur Mare" } to possible_forms_girl of Larissa;
	add { "Alpha Husky", "German Shepherd", "Naga", "Bald Eagle" } to possible_forms_guy of Larissa;
	add { "Tigress Hooker", "Mammoth", "Panther Taur", "Dark Elf" } to possible_forms_girl of Larissa;
	add { "Succubus" } to possible_forms_hellspawn of Larissa;

this is the larissa_tfoption rule:
	if furry is not banned, add possible_forms_furry of Larissa to possible_forms of Larissa, if absent;
	if guy is not banned, add possible_forms_guy of Larissa to possible_forms of Larissa, if absent;
	if girl is not banned, add possible_forms_girl of Larissa to possible_forms of Larissa, if absent;
	if hermaphrodite is not banned, add possible_forms_herm of Larissa to possible_forms of Larissa, if absent;
	if hellspawn is not banned, add possible_forms_hellspawn of Larissa to possible_forms of Larissa, if absent;
	if humorous is not banned, add possible_forms_humorous of Larissa to possible_forms of Larissa, if absent;
	if furry is banned, remove possible_forms_furry of Larissa from possible_forms of Larissa;
	if guy is banned, remove possible_forms_guy of Larissa from possible_forms of Larissa;
	if girl is banned, remove possible_forms_girl of Larissa from possible_forms of Larissa;
	if hermaphrodite is banned, remove possible_forms_herm of Larissa from possible_forms of Larissa;
	if hellspawn is banned, remove possible_forms_hellspawn of Larissa from possible_forms of Larissa;
	if humorous is banned, remove possible_forms_humorous of Larissa from possible_forms of Larissa;
	[Adds each list only if it is permitted.  Removal also required because elements will be present multiple times.]

check Larissatfing:
	if hp of Larissa is 0, say "I don't know what you're talking about." instead;
	If Larissa is not visible, say "I don't see [objpro of Larissa] around." instead;

carry out Larissatfing:
	now calcnumber is -1;
	if hp of Larissa is 1:
		say "     'I've been noticing all the interesting new creatures and forms out there that our various agents and researchers have been documenting.  It's had me wondering if I might want to try out a new look.  You know, a bit of a test drive before I settle on the new me,' she says quietly.  Liking where this is going, you lean in a little closer.  'While a lot of samples come through here, I can't really snag them for myself.  They're all logged in the inventory.  But you've proven to be quite helpful and I thought you might want help me out,' she says with a sexy smile.";
		say "     'So to pull this off, I'd need you to snag some vial samples";
		if scenario is not "Researcher" and nanitemeter is 0:
			say ", and for that you'll need to get one of the nanite collectors we have on sale here";
		say ".  With a vial and some credits from you, I'll get a new bod.'  You must make a face at the mention of money as well.  'Oh, now don't be like that.  I'll need it to help with my expenses.  I'll need to pay for a new id card, pay someone to watch my shift, get some new clothes... lots of stuff so we can set this up.  You'll get to help me test drive it, so doesn't that sound worth it, hon";
		if scenario is not "Researcher" and nanitemeter is 0:
			say "?'  She gives you a grin.  'I'll even arrange to give you a big discount on the nanite collector, letting you get it for the employee price.  Just don't tell anyone,' she adds with a wink.";
			nanitecoll_discount;
		otherwise:
			say "?'";
		attempttowait;
		follow the larissa_tfoption rule;
		now hp of Larissa is 2;
	otherwise if hp is 2:
		say "     'I'm still looking forward to changing into some sexy creatures so we can have even more fun together.  I'll need a vial for the creature and [lar_tfcost] credits to cover the various expenses and to make sure someone will cover my shift while we put the new me through the paces,' she says with a wink.";
	otherwise:
		say "     'I'm still interested in trying on some other forms.  Be on the lookout for interesting creatures and snag a vial from them";
		if scenario is not "Researcher" and nanitemeter is 0:
			say ", and for that you'll need to get one of the nanite collectors we have on sale here";
		say ".  With that and [lar_tfcost] credits to cover the expenses, we can have ourselves some fun,' she says with a wink.";
	say "     'Now, I've been making a list of the ones that I've found that would be particularly interesting.  Just let me know if you'd like to have me give it a whirl,' [subjpro of Larissa] adds.";
	sort possible_forms of Larissa;
	repeat with y running from 1 to number of entries in possible_forms of Larissa:
		say "[link][y] - [entry y of possible_forms of Larissa][as][y][end link][line break]";
	say "[link]0 - ABORT![end link][line break]";
	while calcnumber < 0 or calcnumber > number of entries in possible_forms of Larissa:
		say "Choice? (0-[number of entries in possible_forms of Larissa])>[run paragraph on]";
		get a number;
	if calcnumber > 0 and calcnumber <= number of entries in possible_forms of Larissa:
		if entry calcnumber in possible_forms of Larissa is "Panda":
			say "[Larissaisnow-panda]";
		otherwise if entry calcnumber in possible_forms of Larissa is "Alpha Husky":
			say "[Larissaisnow-alphahusky]";
		otherwise if entry calcnumber in possible_forms of Larissa is "German Shepherd":
			say "[Larissaisnow-GSDmale]";
		otherwise if entry calcnumber in possible_forms of Larissa is "Tigress Hooker":
			say "[Larissaisnow-tighooker]";
		otherwise if entry calcnumber in possible_forms of Larissa is "Teddy Bear":
			say "[Larissaisnow-teddybear]";
		otherwise if entry calcnumber in possible_forms of Larissa is "Latex Mistress":
			say "[Larissaisnow-latexmistress]";
		otherwise if entry calcnumber in possible_forms of Larissa is "Naga":
			say "[Larissaisnow-naga]";
		otherwise if entry calcnumber in possible_forms of Larissa is "Mammoth":
			say "[Larissaisnow-mammoth]";
		otherwise if entry calcnumber in possible_forms of Larissa is "red kangaroo":
			say "[Larissaisnow-redkangaroo]";
		otherwise if entry calcnumber in possible_forms of Larissa is "Panther Taur":
			say "[Larissaisnow-panthertaur]";
		otherwise if entry calcnumber in possible_forms of Larissa is "Bald Eagle":
			say "[Larissaisnow-baldeagle]";
		otherwise if entry calcnumber in possible_forms of Larissa is "Dark Elf":
			say "[Larissaisnow-darkelf]";
		otherwise if entry calcnumber in possible_forms of Larissa is "Succubus":
			say "[Larissaisnow-succubus]";
		otherwise if entry calcnumber in possible_forms of Larissa is "Goo Girl":
			say "[Larissaisnow-googirl]";
		otherwise if entry calcnumber in possible_forms of Larissa is "Centaur Mare":
			say "[Larissaisnow-centaurmare]";
	otherwise if calcnumber is 0:
		say "You decide against trying to transform Larissa at this time.";


to nanitecoll_discount:
	if scenario is not "Researcher" and nanitemeter is 0:
		repeat with y running from 1 to number of filled rows in table of Zephyr Goods:
			choose row y from table of Zephyr Goods;
			if name entry is "nanite collector":
				now price entry is 240;
				break;

to say Larissa pre-tf:
	say "     Larissa takes the vial and debits the required credits with an grin.  [subjpro_cap of Larissa] seems quite excited at the prospect of transforming[if hp of Larissa > 2] again[end if].  After getting one of [possadj of Larissa] co-workers to cover the front desk for [objpro of Larissa], the [form of Larissa] leads you into the break room.  Rather sparse, it does have a small cot available.  Pulling off [possadj of Larissa] lab coat, she stretches out, showing off [possadj of Larissa] [bodytype of Larissa] to you one last time before downing the vial in one big gulp.";
	if cocks of Larissa > 0 and cunts of Larissa > 0:
		now oldgender of Larissa is 3;
	otherwise if cocks of Larissa > 0:
		now oldgender of Larissa is 1;
	otherwise if cunts of Larissa > 0:
		now oldgender of Larissa is 2;
	otherwise:
		now oldgender of Larissa is 0;


to say Larissa post-tf:
	say "     Larissa moans and licks [if oldgender of Larissa > 1]her[otherwise]his[end if] lips and takes a seat on the edge of the cot.  As you watch, Larissa's body [tftext of Larissa] as the [infname of Larissa] infection kicks in.  As you watch, [if oldgender of Larissa > 1]she[otherwise]he[end if] gains [skin of Larissa] all over her new [if oldgender of Larissa > 1]her[otherwise]his[end if] [bodytype of Larissa] form.";
	say "     [subjpro_cap of Larissa] presses [possadj of larissa] transformed [handform of Larissa]s between [possadj of larissa] legs and gropes [possadj of larissa] changing crotch as ";
	if cocks of Larissa > 0:		[male/herm]
		say "[if oldgender of Larissa is 1 or oldgender of Larissa is 3][possadj of larissa] shaft shifts and becomes a [cock size desc of Larissa] [cock of Larissa] cock[otherwise][subjpro of Larissa] [one of]grows[or]gains[or]forms[at random] a [cock size desc of Larissa] [cock of Larissa] cock[end if][if cunts of Larissa > 0] with a [cunt size desc of larissa] pussy waiting behind it[end if]";
	otherwise if cunts of Larissa > 0:	[female]
		say "[if oldgender of Larissa is 1 or oldgender of Larissa is 3][possadj of larissa] shaft shrinks and eventually disappears entirely as [possadj of larissa] wet [cunt size desc of larissa] pussy forms[otherwise if oldgender of Larissa is 2][subjpro of Larissa] fingers [possadj of larissa] wet, dripping snatch as it changes in response to [possadj of larissa] transformation to become a [cunt size desc of larissa] pussy[otherwise][possadj of Larissa] bare groin forms a wet [cunt size desc of larissa] pussy[end if]";
	otherwise:					[neuter]
		say "all signs of [possadj of larissa] previous gender fade away, leaving [objpro of larissa] with a bare, genderless groin";
	say ".  'Oh, this feels so good.  Mmm... let's have some fun now,' [subjpro of larissa] says, running [possadj of larissa] paws over [possadj of larissa] altered body wantonly while stepping forward to [possadj of larissa] [bodytype of Larissa] form against yours.  It seems the excitement of transformation's gotten the [form of larissa] eager to see just what [possadj of larissa] new body is like.";
	attempttowait;
	if cocks of player > 0 or cunts of player > 0:
		say "[LarissaTFsex]";
		now lastfuck of Larissa is turns;
	otherwise:
		say "     You get [objpro of Larissa] to lie back on the cot while you run your hands over [possadj of Larissa] new [form of Larissa] body.  Still very aroused from her transformation, [subjpro of Larissa][']s soon moaning in pleasure as you help acquaint [objpro of Larissa] with [possadj of Larissa] body's changes[if breast size of Larissa > 0 and breasts of Larissa > 2].  You bring your lips to [possadj of Larissa] bosom and start kissing [possadj of Larissa] numerous breasts and sucking on [possadj of Larissa] nipples[otherwise if breast size of Larissa > 0].  You bring your lips to [possadj of Larissa] bosom and start kissing [possadj of Larissa] breasts and sucking on [possadj of Larissa] nipples[otherwise].  You bring your lips to [possadj of Larissa] [mouth of Larissa] and kiss [objpro of Larissa] , welcoming [possadj of Larissa] [form of Larissa] tongue into your mouth.";
		if cunts of larissa > 0 and cocks of Larissa > 0:	[herm]
			say "     Meanwhile, your hands have made their way down to [possadj of Larissa] [cock size desc of Larissa] [cock of Larissa] cock and [cunt size desc of Larissa] pussy.  You slide your fingers over them both, stroking, pumping and fingering until she cums with a loud moan of delight[if cock width of Larissa >= 40].  [possadj_cap of Larissa] excessive load makes a considerable[otherwise if cock width of Larissa >= 20].  Her large load makes a big[otherwise].  [possadj_cap of Larissa] spurting shaft makes a sticky[end if] mess which you both have fun cleaning up before [subjpro of Larissa] heads back out front to show off [possadj of Larissa] new body to [possadj of Larissa] coworkers before returning to [possadj of Larissa] desk.";
		otherwise if cunts of Larissa > 0:				[female]
			say "     Meanwhile, your hand make their way down to [possadj of Larissa] [cunt size desc of Larissa] [bodytype of Larissa] pussy.  You slide your fingers over dripping folds, pumping into them and fingering [objpro of Larissa] until [subjpro of Larissa] cums with a loud moan of delight[if cunt length of Larissa + cunt width of Larissa >= 40].  [possadj_cap of Larissa] gushing juices soak both of your lower bodies in a tasty[otherwise if cunt length of Larissa + cunt width of Larissa >= 20].  [possadj_cap of Larissa] flowing juices soak [possadj of Larissa] crotch and your arm in a tasty[otherwise].  [possadj_cap of Larissa] hot juices soak [possadj of Larissa] crotch as your hand in a tasty[end if] mess which you both have fun cleaning up before [subjpro of Larissa] heads back out front to show off [possadj of Larissa] new body to [possadj of Larissa] coworkers before returning to [possadj of Larissa] desk.";
		otherwise if cocks of Larissa > 0:				[male]
			say "     Meanwhile, your hands have made their way down to [possadj of Larissa] [cock size desc of Larissa] [cock of Larissa] cock.  You slide your fingers over it, stroking and pumping until [subjpro of Larissa] cums with a loud moan of delight[if cock width of Larissa >= 40].  [possadj_cap of Larissa] excessive load makes a considerable[otherwise if cock width of Larissa >= 20].  [possadj_cap of Larissa] large load makes a big[otherwise].  [possadj_cap of Larissa] spurting shaft makes a sticky[end if] mess which you both have fun cleaning up before [subjpro of Larissa] heads back out front to show off [possadj of Larissa] new body to [possadj of Larissa] coworkers before returning to [possadj of Larissa] desk.";
		otherwise:								[neuter]
			say "***Neuter Larissa - no content.";


[	hp of Larissa	]
[ 0 = something		]
[ 1 = open for sex	]
[ 2 = explained tf	]
[ 3 = tf'd before		]
[ 4 = transformed		]

[	Bodycat	]
[ 0 = humanoid	]
[ 1 = quadrupedal	]
[ 2 = tauric	]
[ 3 = legless	]

[	Oldgenger	]
[ 0 = neuter	]
[ 1 = male		]
[ 2 = female	]
[ 3 = herm		]


Part 3 - Transformation Mechanics

to Larissadata (x - text):
	let found be 0;
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y from the table of random critters;
		if name entry is x:
			now found is 1;
			now monster is y;
			now cock of Larissa is cock entry;
			if cocks entry > 0:
				now cocks of Larissa is 1;		[single equipment to keep things sane for now]
[				now cocks of Larissa is cocks entry;			]
				now cock length of Larissa is cock length entry;
				now cock width of Larissa is cock width entry;
			otherwise:
				now cocks of Larissa is 0;
				now cock length of Larissa is 0;
				now cock width of Larissa is 0;
			if cunts entry > 0:
				now cunts of Larissa is 1;		[single equipment to keep things sane for now]
[				now cunts of Larissa is cunts entry;			]
				now cunt length of Larissa is cunt length entry;
				now cunt width of Larissa is cunt width entry;
			otherwise:
				now cunts of Larissa is 0;
				now cunt length of Larissa is 0;
				now cunt width of Larissa is 0;
			now breasts of Larissa is breasts entry;
			now breast size of Larissa is breast size entry;
			if breasts of Larissa is 0, now breast size of Larissa is 0;
			if there is a scale in row monster of the table of random critters:
				now scalevalue of Larissa is scale entry;
			otherwise:
				now scalevalue of Larissa is 3;
			if there is a body descriptor in row monster of the table of random critters:
				now bodydesc of Larissa is body descriptor entry;
			otherwise:
				now bodydesc of Larissa is name entry;
			if there is a type in row monster of the table of random critters:
				now bodytype of Larissa is type entry;
			otherwise:
				now bodytype of Larissa is name entry;
			if there is a nocturnal in row monster of the table of random critters:
				if nocturnal entry is true:
					now the daycycle of Larissa is 2;		[night-preferred]
				if nocturnal entry is false:
					now the daycycle of Larissa is 1;		[day-preferred]
			otherwise:
				now the daycycle of Larissa is 0;			[standard]
			break;
	if found is 0, say "Error - Creature [x] not found.";


to say Larissaisnow-panda:
	let goahead be 1;
	if infname of Larissa is "Panda":
		say "[subjpro_cap of Larissa]'s already got that infection.  Do you wish to continue anyhow?";
		if the player consents:
			let goahead be 1;
		otherwise:
			let goahead be 0;
	if goahead is 1:
		if "Panda" is not listed in vials of player:
			say "You don't have one of those vials to offer [objpro of Larissa].";
		otherwise if freecred < lar_tfcost:
			say "You don't have enough credits right now.";
		otherwise:
			deletevial "Panda";
			decrease freecred by lar_tfcost;
			say "[Larissa pre-tf]";
			Larissadata "Panda";
			now form of Larissa is "panda";
			now infname of Larissa is "Panda";
			now handform of Larissa is "paw";
			now footform of Larissa is "paw";
			now skin of Larissa is "black and white fur";
			now tail of Larissa is "stubby tail";
			now tailed of Larissa is true;
			now winged of Larissa is false;
			now face of Larissa is "cute panda";
			now mouth of Larissa is "muzzle";
			now body of Larissa is "a plump and sexy panda";
			now tftext of Larissa is "becomes rounder, plumping out into a round, pudgy figure";
			now generallook of Larissa is "[one of]sexy[or]cute[at random]";
			now bodycat of Larissa is 0;
			now hp of Larissa is 4;
			follow the Larissa breastdesc rule;
			follow the Larissa cockdesc rule;
			follow the Larissa cuntdesc rule;
			say "[Larissa post-tf]";


to say Larissaisnow-alphahusky:
	let goahead be 1;
	if infname of Larissa is "Alpha Husky":
		say "[subjpro_cap of Larissa]'s already got that infection.  Do you wish to continue anyhow?";
		if the player consents:
			let goahead be 1;
		otherwise:
			let goahead be 0;
	if goahead is 1:
		if "Alpha Husky" is not listed in vials of player:
			say "You don't have one of those vials to offer [objpro of Larissa].";
		otherwise if freecred < lar_tfcost:
			say "You don't have enough credits right now.";
		otherwise:
			deletevial "Alpha Husky";
			decrease freecred by lar_tfcost;
			say "[Larissa pre-tf]";
			Larissadata "Alpha Husky";
			now breasts of Larissa is 0;
			now breast size of Larissa is 0;
			now cunts of Larissa is 0;
			now cunt length of Larissa is 0;
			now cunt width of Larissa is 0;
			now bodydesc of Larissa is "[one of]altered[or]animalistic[at random]";
			now form of Larissa is "husky";
			now infname of Larissa is "Alpha Husky";
			now handform of Larissa is "paw";
			now footform of Larissa is "paw";
			now skin of Larissa is "fluffy grey and white fur";
			now tail of Larissa is "curved tail";
			now tailed of Larissa is true;
			now winged of Larissa is false;
			now face of Larissa is "strong husky";
			now mouth of Larissa is "muzzle";
			now body of Larissa is "a strong and confident husky";
			now tftext of Larissa is "becomes fit and strong with an air of confidence";
			now generallook of Larissa is "[one of]confident[or]sexy[or]cute[at random]";
			now bodycat of Larissa is 0;
			now hp of Larissa is 4;
			follow the Larissa breastdesc rule;
			follow the Larissa cockdesc rule;
			follow the Larissa cuntdesc rule;
			say "[Larissa post-tf]";


to say Larissaisnow-GSDmale:
	let goahead be 1;
	if infname of Larissa is "German Shepherd":
		say "[subjpro_cap of Larissa]'s already got that infection.  Do you wish to continue anyhow?";
		if the player consents:
			let goahead be 1;
		otherwise:
			let goahead be 0;
	if goahead is 1:
		if "German Shepherd" is not listed in vials of player:
			say "You don't have one of those vials to offer [objpro of Larissa].";
		otherwise if freecred < lar_tfcost:
			say "You don't have enough credits right now.";
		otherwise:
			deletevial "German Shepherd";
			decrease freecred by lar_tfcost;
			say "[Larissa pre-tf]";
			Larissadata "German Shepherd";
			now breasts of Larissa is 0;
			now breast size of Larissa is 0;
			now cunts of Larissa is 0;
			now cunt length of Larissa is 0;
			now cunt width of Larissa is 0;
			now form of Larissa is "German Shepherd";
			now infname of Larissa is "German Shepherd";
			now handform of Larissa is "paw";
			now footform of Larissa is "paw";
			now skin of Larissa is "glossy black and tan fur";
			now tail of Larissa is "doggy tail";
			now tailed of Larissa is true;
			now winged of Larissa is false;
			now face of Larissa is "canine";
			now mouth of Larissa is "muzzle";
			now body of Larissa is "a humanoid dog";
			now tftext of Larissa is "becomes that of an anthropomorphic German Shepherd";
			now generallook of Larissa is "[one of]strong[or]sexy[or]attractive[at random]";
			now bodycat of Larissa is 0;
			now hp of Larissa is 4;
			follow the Larissa breastdesc rule;
			follow the Larissa cockdesc rule;
			follow the Larissa cuntdesc rule;
			say "[Larissa post-tf]";


to say Larissaisnow-tighooker:
	let goahead be 1;
	if infname of Larissa is "Tigress Hooker":
		say "[subjpro_cap of Larissa]'s already got that infection.  Do you wish to continue anyhow?";
		if the player consents:
			let goahead be 1;
		otherwise:
			let goahead be 0;
	if goahead is 1:
		if "Tigress Hooker" is not listed in vials of player:
			say "You don't have one of those vials to offer [objpro of Larissa].";
		otherwise if freecred < lar_tfcost:
			say "You don't have enough credits right now.";
		otherwise:
			deletevial "Tigress Hooker";
			decrease freecred by lar_tfcost;
			say "[Larissa pre-tf]";
			Larissadata "Tigress Hooker";
			now form of Larissa is "[if cunts of Larissa > 0]tigress[otherwise]tiger[end if]";
			now infname of Larissa is "Tigress Hooker";
			now handform of Larissa is "paw";
			now footform of Larissa is "paw";
			now skin of Larissa is "white tiger fur";
			now tail of Larissa is "striped tail";
			now tailed of Larissa is true;
			now winged of Larissa is false;
			now face of Larissa is "feline";
			now mouth of Larissa is "muzzle";
			now body of Larissa is "a sultry [if cunts of Larissa > 0]tigress[otherwise]tiger[end if]";
			now tftext of Larissa is "becomes that of a sexy and alluring [if cunts of Larissa > 0 and cocks of Larissa > 0]tigress herm[otherwise if cunts of Larissa > 0]tigress femme[otherwise]tiger[end if]";
			now generallook of Larissa is "[one of]beautiful[or]sexy[or]attractive[or]hot[or]slutty[at random]";
			now bodycat of Larissa is 0;
			now hp of Larissa is 4;
			follow the Larissa breastdesc rule;
			follow the Larissa cockdesc rule;
			follow the Larissa cuntdesc rule;
			say "[Larissa post-tf]";


to say Larissaisnow-teddybear:
	let goahead be 1;
	if infname of Larissa is "Teddy Bear":
		say "[subjpro_cap of Larissa]'s already got that infection.  Do you wish to continue anyhow?";
		if the player consents:
			let goahead be 1;
		otherwise:
			let goahead be 0;
	if goahead is 1:
		if "Teddy Bear" is not listed in vials of player:
			say "You don't have one of those vials to offer [objpro of Larissa].";
		otherwise if freecred < lar_tfcost:
			say "You don't have enough credits right now.";
		otherwise:
			deletevial "Teddy Bear";
			decrease freecred by lar_tfcost;
			say "[Larissa pre-tf]";
			Larissadata "Teddy Bear";
			now form of Larissa is "teddy bear";
			now infname of Larissa is "Teddy Bear";
			now handform of Larissa is "padded paw";
			now footform of Larissa is "padded paw";
			now skin of Larissa is "plush brown fur";
			now tail of Larissa is "tail puff";
			now tailed of Larissa is true;
			now winged of Larissa is false;
			now face of Larissa is "plush bear";
			now mouth of Larissa is "muzzle";
			now body of Larissa is "a cute and cuddly teddy bear";
			now tftext of Larissa is "becomes plump with soft stuffing as she becomes a cute teddy bear";
			now generallook of Larissa is "[one of]soft[or]huggable[or]cute[at random]";
			now bodycat of Larissa is 0;
			now hp of Larissa is 4;
			follow the Larissa breastdesc rule;
			follow the Larissa cockdesc rule;
			follow the Larissa cuntdesc rule;
			say "[Larissa post-tf]";


to say Larissaisnow-latexmistress:
	let goahead be 1;
	if infname of Larissa is "Latex Mistress":
		say "[subjpro_cap of Larissa]'s already got that infection.  Do you wish to continue anyhow?";
		if the player consents:
			let goahead be 1;
		otherwise:
			let goahead be 0;
	if goahead is 1:
		if "Latex Mistress" is not listed in vials of player:
			say "You don't have one of those vials to offer [objpro of Larissa].";
		otherwise if freecred < lar_tfcost:
			say "You don't have enough credits right now.";
		otherwise:
			deletevial "Latex Mistress";
			decrease freecred by lar_tfcost;
			say "[Larissa pre-tf]";
			Larissadata "Latex Mistress";
			now form of Larissa is "leather-clad human";
			now infname of Larissa is "Latex Mistress";
			now handform of Larissa is "gloved hand";
			now footform of Larissa is "booted foot";
			now skin of Larissa is "latex skin-suit";
			now tail of Larissa is "";
			now tailed of Larissa is false;
			now winged of Larissa is false;
			now face of Larissa is "masked";
			now mouth of Larissa is "mouth";
			now body of Larissa is "a latex-bound [if cunts of Larissa > 0]woman[otherwise]man[end if]";
			now tftext of Larissa is "gets coated in a layer of black latex which forms over [possadj of Larissa] human body";
			now generallook of Larissa is "[one of]impressive[or]sexy[or]tough[or]kinky[at random]";
			now bodycat of Larissa is 0;
			now hp of Larissa is 4;
			follow the Larissa breastdesc rule;
			follow the Larissa cockdesc rule;
			follow the Larissa cuntdesc rule;
			say "[Larissa post-tf]";


to say Larissaisnow-naga:
	let goahead be 1;
	if infname of Larissa is "Naga":
		say "[subjpro_cap of Larissa]'s already got that infection.  Do you wish to continue anyhow?";
		if the player consents:
			let goahead be 1;
		otherwise:
			let goahead be 0;
	if goahead is 1:
		if "Naga" is not listed in vials of player:
			say "You don't have one of those vials to offer [objpro of Larissa].";
		otherwise if freecred < lar_tfcost:
			say "You don't have enough credits right now.";
		otherwise:
			deletevial "Naga";
			decrease freecred by lar_tfcost;
			say "[Larissa pre-tf]";
			Larissadata "Naga";
			now form of Larissa is "snake-bodied naga";
			now infname of Larissa is "Naga";
			now handform of Larissa is "hand";
			now footform of Larissa is "snake tail";
			now skin of Larissa is "green and yellow scaled skin";
			now tail of Larissa is "coiled tail";
			now tailed of Larissa is true;
			now winged of Larissa is false;
			now face of Larissa is "serpent";
			now mouth of Larissa is "maw";
			now body of Larissa is "a long and flexible naga";
			now tftext of Larissa is "gains a human upper body, but with [possadj of Larissa] lower half melded into a snake's tail";
			now generallook of Larissa is "[one of]impressive[or]sexy[or]imposing[or]wild[at random]";
			now bodycat of Larissa is 3;
			now hp of Larissa is 4;
			follow the Larissa breastdesc rule;
			follow the Larissa cockdesc rule;
			follow the Larissa cuntdesc rule;
			say "[Larissa post-tf]";


to say Larissaisnow-mammoth:
	let goahead be 1;
	if infname of Larissa is "Mammoth":
		say "[subjpro_cap of Larissa]'s already got that infection.  Do you wish to continue anyhow?";
		if the player consents:
			let goahead be 1;
		otherwise:
			let goahead be 0;
	if goahead is 1:
		if "Mammoth" is not listed in vials of player:
			say "You don't have one of those vials to offer [objpro of Larissa].";
		otherwise if freecred < lar_tfcost:
			say "You don't have enough credits right now.";
		otherwise:
			deletevial "Mammoth";
			decrease freecred by lar_tfcost;
			say "[Larissa pre-tf]";
			Larissadata "Mammoth";
			now form of Larissa is "woolly mammoth";
			now infname of Larissa is "Mammoth";
			now handform of Larissa is "meaty hand";
			now footform of Larissa is "heavy foot";
			now skin of Larissa is "shaggy brown fur";
			now tail of Larissa is "short, thin tail";
			now tailed of Larissa is true;
			now winged of Larissa is false;
			now face of Larissa is "elephantine";
			now mouth of Larissa is "mouth";
			now body of Larissa is "a burly mammoth";
			now tftext of Larissa is "becomes quite large and stocky, strong enough to carry [possadj of larissa] swelling endowments";
			now generallook of Larissa is "[one of]impressive[or]powerful[or]imposing[or]primitive[or]mighty[or]massive[at random]";
			now bodycat of Larissa is 0;
			now hp of Larissa is 4;
			follow the Larissa breastdesc rule;
			follow the Larissa cockdesc rule;
			follow the Larissa cuntdesc rule;
			say "[Larissa post-tf]";


to say Larissaisnow-redkangaroo:
	let goahead be 1;
	if infname of Larissa is "red kangaroo":
		say "[subjpro_cap of Larissa]'s already got that infection.  Do you wish to continue anyhow?";
		if the player consents:
			let goahead be 1;
		otherwise:
			let goahead be 0;
	if goahead is 1:
		if "red kangaroo" is not listed in vials of player:
			say "You don't have one of those vials to offer [objpro of Larissa].";
		otherwise if freecred < lar_tfcost:
			say "You don't have enough credits right now.";
		otherwise:
			deletevial "red kangaroo";
			decrease freecred by lar_tfcost;
			say "[Larissa pre-tf]";
			Larissadata "red kangaroo";
			now form of Larissa is "kangaroo";
			now infname of Larissa is "red kangaroo";
			now handform of Larissa is "small paw";
			now footform of Larissa is "elongated foot";
			now skin of Larissa is "russet fur";
			now tail of Larissa is "thick, meaty tail";
			now tailed of Larissa is true;
			now winged of Larissa is false;
			now face of Larissa is "[']roo";
			now mouth of Larissa is "muzzle";
			now body of Larissa is "a wide-hipped kangaroo";
			now tftext of Larissa is "gains wide, muscled hips and legs along with a marsupial pouch";
			now generallook of Larissa is "[one of]sexy[or]impressive[or]bouncy[at random]";
			now bodycat of Larissa is 0;
			now hp of Larissa is 4;
			now cocks of Larissa is 0;
			now cock length of Larissa is 0;
			now cock width of Larissa is 0;
			follow the Larissa breastdesc rule;
			follow the Larissa cockdesc rule;
			follow the Larissa cuntdesc rule;
			say "[Larissa post-tf]";


to say Larissaisnow-panthertaur:
	let goahead be 1;
	if infname of Larissa is "Panther Taur":
		say "[subjpro_cap of Larissa]'s already got that infection.  Do you wish to continue anyhow?";
		if the player consents:
			let goahead be 1;
		otherwise:
			let goahead be 0;
	if goahead is 1:
		if "Panther Taur" is not listed in vials of player:
			say "You don't have one of those vials to offer [objpro of Larissa].";
		otherwise if freecred < lar_tfcost:
			say "You don't have enough credits right now.";
		otherwise:
			deletevial "Panther Taur";
			decrease freecred by lar_tfcost;
			say "[Larissa pre-tf]";
			Larissadata "Panther Taur";
			now form of Larissa is "panther";
			now infname of Larissa is "Panther Taur";
			now handform of Larissa is "clawed paw";
			now footform of Larissa is "padded paw";
			now skin of Larissa is "midnight black fur";
			now tail of Larissa is "feline tail";
			now tailed of Larissa is true;
			now winged of Larissa is false;
			now face of Larissa is "feline";
			now mouth of Larissa is "muzzle";
			now body of Larissa is "a tauric panther";
			now tftext of Larissa is "gains four feline paws to support [possadj of larissa] tauric body and impressive endowments";
			now generallook of Larissa is "[one of]alluring[or]imposing[or]powerful[or]graceful[or]sexy[at random]";
			now bodycat of Larissa is 2;
			now hp of Larissa is 4;
			follow the Larissa breastdesc rule;
			follow the Larissa cockdesc rule;
			follow the Larissa cuntdesc rule;
			say "[Larissa post-tf]";


to say Larissaisnow-baldeagle:
	let goahead be 1;
	if infname of Larissa is "Bald Eagle":
		say "[subjpro_cap of Larissa]'s already got that infection.  Do you wish to continue anyhow?";
		if the player consents:
			let goahead be 1;
		otherwise:
			let goahead be 0;
	if goahead is 1:
		if "Bald Eagle" is not listed in vials of player:
			say "You don't have one of those vials to offer [objpro of Larissa].";
		otherwise if freecred < lar_tfcost:
			say "You don't have enough credits right now.";
		otherwise:
			deletevial "Bald Eagle";
			decrease freecred by lar_tfcost;
			say "[Larissa pre-tf]";
			Larissadata "Bald Eagle";
			now form of Larissa is "eagle";
			now infname of Larissa is "Bald Eagle";
			now handform of Larissa is "small talon";
			now footform of Larissa is "sharp talon";
			now skin of Larissa is "brown feathers";
			now tail of Larissa is "feathered tail";
			now tailed of Larissa is true;
			now winged of Larissa is true;
			now face of Larissa is "avian";
			now mouth of Larissa is "beak";
			now body of Larissa is "a humanoid eagle";
			now tftext of Larissa is "becomes partially avian with winged arms and taloned feat";
			now generallook of Larissa is "[one of]powerful[or]impressive[or]noble[or]graceful[at random]";
			now bodycat of Larissa is 0;
			now hp of Larissa is 4;
			now cunts of Larissa is 0;
			now cunt length of Larissa is 0;
			now cunt width of Larissa is 0;
			now breasts of Larissa is 0;
			now breast size of Larissa is 0;
			follow the Larissa breastdesc rule;
			follow the Larissa cockdesc rule;
			follow the Larissa cuntdesc rule;
			say "[Larissa post-tf]";


to say Larissaisnow-darkelf:
	let goahead be 1;
	if infname of Larissa is "Dark Elf":
		say "[subjpro_cap of Larissa]'s already got that infection.  Do you wish to continue anyhow?";
		if the player consents:
			let goahead be 1;
		otherwise:
			let goahead be 0;
	if goahead is 1:
		if "Dark Elf" is not listed in vials of player:
			say "You don't have one of those vials to offer [objpro of Larissa].";
		otherwise if freecred < lar_tfcost:
			say "You don't have enough credits right now.";
		otherwise:
			deletevial "Dark Elf";
			decrease freecred by lar_tfcost;
			say "[Larissa pre-tf]";
			Larissadata "Dark Elf";
			now form of Larissa is "elf";
			now infname of Larissa is "Dark Elf";
			now handform of Larissa is "nimble hand";
			now footform of Larissa is "petite foot";
			now skin of Larissa is "black skin";
			now tail of Larissa is "";
			now tailed of Larissa is false;
			now winged of Larissa is false;
			now face of Larissa is "elfin";
			now mouth of Larissa is "mouth";
			now body of Larissa is "a drow elf";
			now tftext of Larissa is "becomes human-like, but shorter, more slender and sexier";
			now generallook of Larissa is "[one of]sexy[or]alluring[or]exotic[or]sultry[or]hot[at random]";
			now bodycat of Larissa is 0;
			now hp of Larissa is 4;
			follow the Larissa breastdesc rule;
			follow the Larissa cockdesc rule;
			follow the Larissa cuntdesc rule;
			say "[Larissa post-tf]";


to say Larissaisnow-succubus:
	let goahead be 1;
	if infname of Larissa is "Succubus":
		say "[subjpro_cap of Larissa]'s already got that infection.  Do you wish to continue anyhow?";
		if the player consents:
			let goahead be 1;
		otherwise:
			let goahead be 0;
	if goahead is 1:
		if "Succubus" is not listed in vials of player:
			say "You don't have one of those vials to offer [objpro of Larissa].";
		otherwise if freecred < lar_tfcost:
			say "You don't have enough credits right now.";
		otherwise:
			deletevial "Succubus";
			decrease freecred by lar_tfcost;
			say "[Larissa pre-tf]";
			Larissadata "Succubus";
			now form of Larissa is "succubus";
			now infname of Larissa is "Succubus";
			now handform of Larissa is "long-nailed hand";
			now footform of Larissa is "dainty foot";
			now skin of Larissa is "flawless skin";
			now tail of Larissa is "";
			now tailed of Larissa is false;
			now winged of Larissa is true;
			now face of Larissa is "horned human";
			now mouth of Larissa is "mouth";
			now body of Larissa is "a tempting succubus";
			now tftext of Larissa is "grows a pair of bat-like wings as [subjpro of Larissa] becomes a sexier version of [possadj of Larissa] human self";
			now generallook of Larissa is "[one of]tempting[or]sultry[or]naughty[or]sexy[at random]";
			now bodycat of Larissa is 0;
			now hp of Larissa is 4;
			follow the Larissa breastdesc rule;
			follow the Larissa cockdesc rule;
			follow the Larissa cuntdesc rule;
			say "[Larissa post-tf]";


to say Larissaisnow-googirl:
	let goahead be 1;
	if infname of Larissa is "Goo Girl":
		say "[subjpro_cap of Larissa]'s already got that infection.  Do you wish to continue anyhow?";
		if the player consents:
			let goahead be 1;
		otherwise:
			let goahead be 0;
	if goahead is 1:
		if "Goo Girl" is not listed in vials of player:
			say "You don't have one of those vials to offer [objpro of Larissa].";
		otherwise if freecred < lar_tfcost:
			say "You don't have enough credits right now.";
		otherwise:
			deletevial "Goo Girl";
			decrease freecred by lar_tfcost;
			say "[Larissa pre-tf]";
			Larissadata "Goo Girl";
			now form of Larissa is "slime girl";
			now infname of Larissa is "Goo Girl";
			now handform of Larissa is "flexible hand";
			now footform of Larissa is "column of goo";
			now skin of Larissa is "translucent [one of]green[or]red[or]blue[or]purple[sticky random] gel";
			now tail of Larissa is "";
			now tailed of Larissa is false;
			now winged of Larissa is false;
			now face of Larissa is "smiling girly";
			now mouth of Larissa is "mouth";
			now body of Larissa is "a girl made of colourful goo";
			now tftext of Larissa is "loses her legs as they fuse into a shifting column of slime";
			now generallook of Larissa is "[one of]gooey[or]cute[or]jiggly[or]pretty[or]sexy[at random]";
			now bodycat of Larissa is 3;
			now hp of Larissa is 4;
			follow the Larissa breastdesc rule;
			follow the Larissa cockdesc rule;
			follow the Larissa cuntdesc rule;
			say "[Larissa post-tf]";


to say Larissaisnow-centaurmare:
	let goahead be 1;
	if infname of Larissa is "Centaur Mare":
		say "[subjpro_cap of Larissa]'s already got that infection.  Do you wish to continue anyhow?";
		if the player consents:
			let goahead be 1;
		otherwise:
			let goahead be 0;
	if goahead is 1:
		if "Centaur Mare" is not listed in vials of player:
			say "You don't have one of those vials to offer [objpro of Larissa].";
		otherwise if freecred < lar_tfcost:
			say "You don't have enough credits right now.";
		otherwise:
			deletevial "Centaur Mare";
			decrease freecred by lar_tfcost;
			say "[Larissa pre-tf]";
			Larissadata "Centaur Mare";
			now form of Larissa is "centaur";
			now infname of Larissa is "Centaur Mare";
			now handform of Larissa is "hand";
			now footform of Larissa is "hoof";
			now skin of Larissa is "tan skin and a brown coat";
			now tail of Larissa is "equine tail";
			now tailed of Larissa is true;
			now winged of Larissa is false;
			now face of Larissa is "[one of]centaur[or]human-like[or]pointy-eared human[at random]";
			now mouth of Larissa is "mouth";
			now body of Larissa is "a strong, female centaur";
			now tftext of Larissa is "has her lower body shift and stretch until she has an equine body below her waist";
			now generallook of Larissa is "[one of]athletic[or]sexy[or]pretty[or]exotic[at random]";
			now bodycat of Larissa is 2;
			now hp of Larissa is 4;
			follow the Larissa breastdesc rule;
			follow the Larissa cockdesc rule;
			follow the Larissa cuntdesc rule;
			say "[Larissa post-tf]";


[	hp of Larissa	]
[ 0 = something		]
[ 1 = open for sex	]
[ 2 = explained tf	]
[ 3 = tf'd before		]
[ 4 = transformed		]


[	Bodycat	]
[ 0 = humanoid	]
[ 1 = quadrupedal	]
[ 2 = tauric	]
[ 3 = legless	]


Part 4 - Size Evaluations

This is the Larissa breastdesc rule:
	if breast size of Larissa is less than 1:
		now descr is "[one of]nonexistent[or]entirely flat[or]manly[at random]";
	otherwise if breast size of Larissa is less than 3:
		now descr is "[one of]palmable[or]small[or]dainty[or]slender[or]perky[at random] [character number breast size of Larissa in cupsize] cup";
	otherwise if breast size of Larissa is less than 5:
		now descr is "[character number breast size of Larissa in cupsize] cup";
	otherwise if breast size of Larissa is less than 7:
		now descr is "[one of]large[or]jiggling[or]well-shaped[or]plump[at random] [character number breast size of Larissa in cupsize] cup";
	otherwise if breast size of Larissa is less than 9:
		now descr is "[one of]massive[or]huge[or]heavy[at random] [character number breast size of Larissa in cupsize] cup";
	otherwise if breast size of Larissa is less than 12:
		now descr is "[one of]enormous[or]giant[or]hulking[or]head sized[or]basketball sized[at random] [character number breast size of Larissa in cupsize] cup";
	otherwise:
		now descr is "[one of]gargantuan[or]beachball sized[or]mountainous[or]colossal[or]gigantic[at random] [character number breast size of Larissa in cupsize] cup";
	now breast size desc of Larissa is descr;
	rule succeeds;

This is the Larissa cockdesc rule:
	if cock length of Larissa is less than 3:
		now descr is "[one of]tiny[or]very small[or]puny[at random]";
	otherwise if cock length of Larissa is less than 6:
		now descr is "[one of]smaller than average[or]small[or]below average[at random]";
	otherwise if cock length of Larissa is less than 8:
		now descr is "[one of]average in size[or]normal sized[at random]";
	otherwise if cock length of Larissa is less than 12:
		now descr is "[one of]large[or]sizable[or]well-built[or]longer than average[at random]";
	otherwise if cock length of Larissa is 12:
		now descr is "foot long";
	otherwise if cock length of Larissa is less than 18:
		now descr is "[one of]huge[or]heavy[or]ponderous[or]massive[or]forearm length[at random]";
	otherwise if cock length of Larissa is less than 25:
		now descr is "[one of]giant[or]hulking[or]hypertrophied[or]elephantine[or]monstrous[at random]";
	otherwise:
		now descr is "[one of]mammoth[or]gigantic[or]colossal[or]titanic[or]third leg[at random]";
	now cock size desc of Larissa is descr;
	rule succeeds;

This is the Larissa cuntdesc rule:
	if cunt length of Larissa is less than 3:
		now descr is "[one of]infantile[or]extremely small[or]puny[at random]";
	otherwise if cunt length of Larissa is less than 6:
		now descr is "[one of]smaller than average[or]small[or]below average[at random]";
	otherwise if cunt length of Larissa is less than 8:
		now descr is "[one of]average[or]normal sized[at random]";
	otherwise if cunt length of Larissa is less than 12:
		now descr is "[one of]large[or]thick lipped[or]above average[at random]";
	otherwise if cunt length of Larissa is less than 18:
		now descr is "[one of]belly bulgingly huge[or]inhumanly deep[or]forearm length[at random]";
	otherwise if cunt length of Larissa is less than 25:
		now descr is "[one of]titanic[or]astonishingly deep[or]elephantine[at random]";
	otherwise:
		now descr is "[one of]cavernous[or]seemingly bottomless[or]canyonlike[at random]";
	now cunt size desc of Larissa is descr;
	rule succeeds;


Part 5 - Testing (not for release)

Larissatesting is an action applying to nothing.
understand "Larissatest" as Larissatesting.

carry out Larissatesting:
	[cock/cunt/breast re-evaluations]
	say "Testing Larissa's current status:[line break]";
	say "Infection name: [infname of Larissa]";
	say "Form: [form of Larissa]";
	say "TFtext: [tftext of Larissa]";
	say "Body: [body of Larissa]";
	say "Hand: [handform of Larissa]";
	say "Foot: [footform of Larissa]";
	say "Skin: [skin of Larissa]";
	say "Face: [face of Larissa]";
	say "Mouth: [mouth of Larissa]";
	say "Tail: [tail of Larissa]";
	say "Tailed?: [if tailed of Larissa is true]Yes[otherwise]No[end if]";
	say "Cock: [cock of Larissa]";
	say "Cocks: [if cocks of Larissa > 0][cocks of Larissa] cocks, [cock length of Larissa] inches long ([cock size desc of larissa]) with [cock width of Larissa]-sized balls ([Larissaballs])[otherwise]No cocks: [cock length of Larissa] x [cock width of Larissa][end if].";
	say "Cunts: [if cunts of Larissa > 0][cunts of Larissa] cunts , [cunt length of Larissa] inches deep and [cunt width of Larissa] inches wide([cock size desc of larissa])[otherwise]No cunts: [cunt length of Larissa] x [cunt width of Larissa][end if].";
	say "Breasts: [breasts of Larissa] breasts.  Size: [breast size of Larissa] ([breast size desc of Larissa]).";
	say "Size: [scalevalue of Larissa]";
	say "Body descriptor: [bodydesc of Larissa]";
	say "Body type: [bodytype of Larissa]";
	say "Daycycle: [daycycle of Larissa] = [if daycycle of Larissa is 0]Normal[otherwise if daycycle is 1]Day[otherwise]Night[end if]";
	say "Body Category: [bodycat of Larissa] = [if bodycat of Larissa is 0]humanoid[otherwise if bodycat of Larissa is 1]quadrupedal[otherwise if bodycat of Larissa is 2]tauric[otherwise if bodycat of Larissa is 3]legless[otherwise]unknown![end if]";



Larissa for FS ends here.
