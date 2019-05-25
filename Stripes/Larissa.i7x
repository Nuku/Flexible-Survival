Version 1 of Larissa by Stripes begins here.
[Version 1.2 - Tweaks for Hospital Quest 2]
"Adds a Zephyr employee named Larissa to the Flexible Survival game"

Section 1 - Basic Larissa

Table of GameCharacterIDs (continued)
object	name
Larissa	"Larissa"

Larissa is a woman. "[larissaview]". She is in Zephyr Lobby.
The conversation of Larissa is { "$$$$$$$$!" }.

To say Larissaballs:
	if Ball Size of Larissa < 3:
		say "[one of]marble-sized[or]tiny[or]very small[at random]";
	else if Ball Size of Larissa < 6:
		say "[one of]plum-sized[or]golf-ball-sized[or]apricot-sized[or]average[at random]";
	else if Ball Size of Larissa < 12:
		say "[one of]lemon-sized[or]large[at random]";
	else if Ball Size of Larissa < 16:
		say "[one of]baseball-sized[or]orange-sized[or]hand-filling[at random]";
	else if Ball Size of Larissa < 20:
		say "[one of]grapefruit-sized[or]massive[at random]";
	else if Ball Size of Larissa < 25:
		say "[one of]cantaloupe-sized[or]giant[or]knee-knocking[at random]";
	else if Ball Size of Larissa < 32:
		say "[one of]basketball-sized[or]ginormous[or]super-inflated[or]watermelon-huge[at random]";
	else:
		say "[one of]floor-dragging[or]beachball-sized[or]gargantuan[or]ground-hanging[at random]";
	say " [one of]balls[or]testicles[or]gonads[at random]";

to say larissaview:
	if HP of Larissa <= 2:
		say "Manning the counter is a female human with no clear signs of mutation. Her name badge declares her to be 'Larissa'.";
	else:
		say "Manning the counter is Larissa, now a [if Cock Count of Larissa > 0 and Cunt Count of Larissa > 0]herm[else if Cock Count of Larissa > 0]male[else if Cunt Count of Larissa > 0]female[else]neuter[end if] [LarissaForm] who seems pretty pleased with [possadj of Larissa] new look.";

Larissa has a list of text called vials.

The description of Larissa is "[larissadesc]".

the scent of Larissa is "Larissa arches her brow as you sniff the air around her, reaching for something in a nearby drawer. You do catch a faint hint of lilacs, probably a perfume.".

the linkaction of Larissa is "Possible Actions: [link]talk[as]talk Larissa[end link], [link]smell[as]smell Larissa[end link], [link]fuck[as]fuck Larissa[end link][if HP of Larissa >= 2], [link]TF[as]transform Larissa[end link][end if][line break]";


[-----------------------------------------------------------------------------------------------------]

Section 2 - Appearance

to say larissadesc:
	if HP of Larissa < 3:				[base description]
		say "     She is about five and a half feet, with suntanned flesh. She seems perfectly human - an oddness in this city. Her name badge, worn on her generous chest, reads 'Larissa'. She has straight brown hair that goes down a little past her shoulders. She wears a lab coat, but it seems more like a uniform than any actual dedication to the sciences. It certainly looks cute on her though. Her silver eyes have specks of brown in them, easily seen as she asks how she can help you in a cheerful tone.";
	else if HP of Larissa is 3:
[		say "***human form, to be revised later.";]
		say "     She is about five and a half feet, with suntanned flesh. She seems perfectly human - an oddness in this city. Her name badge, worn on her generous chest, reads 'Larissa'. She had brown straight hair that goes down a little past her shoulders. She wears a lab coat, but it seems more like a uniform than any actual dedication to the sciences. It certainly looks cute on her though. Her silver eyes have specks of brown in them, easily seen as she asks how she can help you in a cheerful tone.";
	else:
		say "     Through your assistance, Larissa has become infected to become a [if Cock Count of Larissa > 0 and Cunt Count of Larissa > 0]herm[else if Cock Count of Larissa > 0]male[else if Cunt Count of Larissa > 0]female[else]neuter[end if] [LarissaForm]. [subjpro_Cap of Larissa] has taken on the form of [LarissaBody] over which [subjpro of Larissa] wears a modified lab coat as part of [possadj of Larissa] uniform. Hanging from one pocket, [subjpro of Larissa] has an identification badge with [possadj of Larissa] name and current photo on it. [subjpro_Cap of Larissa] has a/an [LarissaFace] face[if LarissaTailed is true], [LarissaSkin] and a/an [LarissaTail][else] and [LarissaSkin][end if]. Overall, you think [subjpro of Larissa] looks quite [LarissaGeneralLook] as [subjpro of Larissa] [if LarissaBodycat is 0]sits at [possadj of Larissa] desk and types with [possadj of Larissa] [LarissaHandForm]s[else if LarissaBodycat is 1]sits on a raised mat in front of [possadj of Larissa] keyboard, typing away with [possadj of Larissa] [LarissaHandForm]s[else if LarissaBodycat is 2]tauric body resting on a mat on the floor in front of [possadj of Larissa] keyboard, typing away with [possadj of Larissa] [LarissaHandForm]s[else if LarissaBodycat is 3]lower body resting on a padded mat while she types away at [possadj of Larissa] keyboard with [possadj of Larissa] [LarissaHandForm]s[end if][if LarissaWinged is true]. [possadj_cap of Larissa] wings rustle occasionally as she works[end if][if ScaleValue of Larissa is 1]. [possadj_cap of Larissa] small office behind the counter seems quite roomy compared to [possadj of Larissa] tiny body[else if ScaleValue of Larissa is 2]. [possadj_cap of Larissa] office behind the counter seems a little roomier now that [subjpro of Larissa][']s gotten a little smaller[else if ScaleValue of Larissa is 4]. Being rather large, Larissa's small office behind the counter is pretty cramped[else if ScaleValue of Larissa is 5]. Having gotten quite huge, Larissa's poor office has become very cramped and has almost no free space for [objpro of Larissa][end if].";
		if Breast Size of Larissa > 0:	[titties!]
			let extrabreastrows be (Nipple Count of Larissa - 2) / 2;
			say "     Poorly obscured by [possadj of Larissa] labcoat, you can see that Larissa has a pair of [Breast Size Desc of Larissa][if Nipple Count of Larissa is 4] with a second smaller pair beneath those[else if Nipple Count of Larissa > 4] with [extrabreastrows] other pairs beneath those[end if]. Also half-hidden, almost as a tantalizing offer, Larissa has [if Larissa is herm]a [Cock Size Desc of Larissa] [LarissaCock] shaft, a pair of [Larissaballs] and a [Cunt Size Desc of Larissa] wet cunt between her legs[else if Larissa is male]a [Cock Size Desc of Larissa] [LarissaCock] shaft with a pair of [Larissaballs] between his legs[else if Larissa is female]a [Cunt Size Desc of Larissa] wet cunt between her legs[else if Larissa is neuter]a plain and featureless groin[end if]. [subjpro_Cap of Larissa] gives you a playful grin and shifts to give you a better view of [possadj of Larissa] crotch while she works.";
		else:									[no titties :(]
			say "     Poorly obscured by [possadj of Larissa] labcoat, you can see that Larissa has [if Larissa is herm]a [Cock Size Desc of Larissa] [LarissaCock] shaft, a pair of [Larissaballs] and a [Cunt Size Desc of Larissa] wet cunt between her legs[else if Larissa is male]a [Cock Size Desc of Larissa] [LarissaCock] shaft with a pair of [Larissaballs] between his legs[else if Larissa is female]a [Cunt Size Desc of Larissa] wet cunt between her legs[else if Larissa is neuter]a plain and featureless groin[end if]. [subjpro_Cap of Larissa] gives you a playful grin and shifts to give you a better view of [possadj of Larissa] crotch while she works.";
	if HP of Larissa >= 2:
		say "     If you want to do so, you may [link]transform Larissa[end link][if HP of Larissa > 2] [one of]again[or]further[at random][end if].";


[-----------------------------------------------------------------------------------------------------]

Section 3 - Conversation

Part 1 - General Conversation Tree

zephyrtask is a number that varies.
zephyrpests is a number that varies.

instead of conversing Larissa:
	let vialsnagging be false;
	if scenario is "Researcher" or nanitemeter > 0, let vialsnagging be true;
	if HP of Doctor Matt is 16:
		say "[zephyrmatt1]"; [start task]
	else if HP of Doctor Matt is 17 and number of entries in ndmlist > 0 and a random chance of 1 in 3 succeeds:
		say "[zephyrmatt2]"; [task reminder]
	else if HP of Doctor Matt is 17 and number of entries in ndmlist is 0:
		say "[zephyrmatt3]"; [task completion]
		if HP of Larissa is 0:
			say "     'So, cute stuff,' Larissa adds, 'What're you up to later?' Cha-ching!";
			now HP of Larissa is 1;
	else if hospquest is 16:
		say "[zephyrmouse1]"; [start task]
	else if hospquest is 17 and number of entries in ndmlist > 0 and a random chance of 1 in 3 succeeds:
		say "[zephyrmouse2]"; [task reminder]
	else if hospquest is 17 and number of entries in ndmlist is 0:
		say "[zephyrmouse3]"; [task completion]
		if HP of Larissa is 0:
			say "     'So, cute stuff,' Larissa adds, 'What're you up to later?' Cha-ching!";
			now HP of Larissa is 1;
	else if HP of Larissa is 0:
		say "     'We are looking for extracted vial samples. If you obtain some, please bring it to me to ['][bold type]vialsell <name>[roman type]['] for a credited reward.'";
		if ( HP of Doctor Matt < 17 or HP of Doctor Matt >= 100 ) and ( hospquest < 17 ):
			if zephyrtask is 0:
				if FurryList is not banned and HermList is not banned:
					say "     She flips through a few papers on her desk, trying to find something. 'We've also been experiencing a bit of a pest problem. Some of those panther taur creatures have been harassing us.' She holds a photo of a black feline creature with a furred human upper body and a panther's body instead of legs. It's fondling its breasts and smiling lewdly at the camera. 'The guards are able drive them off easily enough, but it does upset the other customers. We're in the business of helping you, but we'll need some help to do that. If you could go beat up some of them around here, it might discourage them from coming around again. We'd appreciate your assistance and will reward you for the completion of the task.'";
					now zephyrtask is 1;
					now zephyrpests is 0;
				else if FurryList is not banned and MaleList is not banned:
					say "     She flips through a few papers on her desk, trying to find something. 'We've also been experiencing a bit of a pest problem. Some of those German shepherd creatures have been harassing us.' She holds a photo of a German shepherd person with black and tan fur. It's growling and making a rude gesture at the camera. 'The guards are able drive them off easily enough, but it does upset the other customers. We're in the business of helping you, but we'll need some help to do that. If you could go beat up some of them around here, it might discourage them from coming around again. We'd appreciate your assistance and will reward you for the completion of the task.'";
					now zephyrtask is 2;
					now zephyrpests is 0;
				else if FemaleList is not banned:
					say "     She flips through a few papers on her desk, trying to find something. 'We've also been experiencing a bit of a pest problem. Some of those city sprite creatures have been harassing us.' She holds a photo of a cluster of fairy-winged girls hovering in the air. Several of them are sticking out their tongues or otherwise making faces at the camera. 'The guards are able drive them back to that [bold type]urban forest[roman type] they live in, but they keep coming back. They harass the customers and are destructive little pests. We're in the business of helping you, but we'll need some help to do that. If you could track them down and beat a few of them up, it might discourage them from coming around again. We'd appreciate your assistance and will reward you for the completion of the task.'";
					now zephyrtask is 3;
					now zephyrpests is 0;
			else if ( zephyrtask is 1 or zephyrtask is 2 or zephyrtask is 3 ) and zephyrpests >= 4:
				say "     She sets down chips she's munching on. 'Thanks for your assistance with our pest problem. Our records show that you've confronted and defeated several of them and they've stopped coming around here. For your assistance, we'll be depositing [special-style-1]100[roman type] credits into your account on top of the standard reward you've been receiving. Nice work, cute stuff. What're you doing later?' she adds with a smile and a wink. Cha-ching!";
				now zephyrtask is 4;
				now HP of Larissa is 1;
				increase freecred by 100;
				increase score by 20;
			else if a random chance of 1 in 3 succeeds and ( zephyrtask is 1 or zephyrtask is 2 or zephyrtask is 3 ):
				say "     She taps away at her computer briefly. 'We're still having a problem with those pesky [if zephyrtask is 1]panther taurs[else if zephyrtask is 2]German Shepherds[else]city sprites[end if]. Please be on the lookout for them. They're not that tough, but it's annoying to have them keep bothering us. Beating them up a few times should make them less bold about attacking us.";
	else if HP of Larissa is 1:
		try Larissatfing;
	else if HP of Larissa is 2:
		say "     [one of]'We are still looking for extracted vial samples. If you obtain some, please bring to me to ['][bold type]vialsell <name>[roman type]['] for a credited reward.' [subjpro_Cap of Larissa] then grins and leans forward. 'Or you can use it to [link]transform[as]transform Larissa[end link] me if it's on my want list.'[or]'At first, I wasn't too keen on coming here and risking getting transformed. But the more I see the sexy creatures, the more I want to give it a try.'[or]'You guys are all lucky that Zephyr's such a great company that we were able come and help out so fast. I'm a little surprised how fast we've come up with a lot of this stuff.'[or]'You should know, this nanite thing isn't just happening here. It's happening all over the country. Sometimes it's just cities, but in a few places, it's whole states.'[or][if vialsnagging is true]'Don't forget to try getting samples from creatures on my want list.'[else]'If you want to [link]transform[end link] me, you'll need to use a nanite collector from the store here. Thankfully we're selling them fairly cheap,' [subjpro of Larissa] says.[end if][or]'Next time I can take a break, we should definitely have a little fun,' [subjpro of Larissa] says with a wink.'[at random]";
	else if HP of Larissa is 3:
		say "     [one of]'We are still looking for extracted vial samples. If you obtain some, please bring to me to ['][bold type]vialsell <name>[roman type]['] for a credited reward.' [subjpro_Cap of Larissa] then grins and leans forward. 'Or you can use it to [link]transform[as]transform Larissa[end link] me if it's on my want list.'[or]'At first, I wasn't too keen on coming here and risking getting transformed. But the more I see the sexy creatures, the more I want to give it a try.'[or]'You guys are all lucky that Zephyr's such a great company that we were able come and help out so fast. It's quite surprising how fast we've come up with a lot of this stuff.'[or]'You should know, this nanite thing isn't just happening here. It's happening all over the country. Sometimes it's just cities, but in a few places, it's whole states.'[or][if vialsnagging is true]'Don't forget to try getting samples from creatures on my want list so I can [link]transform[as]transform Larissa[end link] again.'[else]'If you want to [link]transform[end link] me, you'll need to use a nanite collector from the store here. Thankfully we're selling them fairly cheap,' [subjpro of Larissa] says.[end if][or]'Next time I can take a break, we should definitely have a little fun,' [subjpro of Larissa] says with a wink.'[or]'I thought I might be happy sticking as a human for a while longer, but I'm already looking forward to changing again.'[at random]";
	else if HP of Larissa is 4:
		say "     [one of]'We are still looking for extracted vial samples. If you obtain some, please bring to me to ['][bold type]vialsell <name>[roman type]['] for a credited reward.' [subjpro_Cap of Larissa] then grins and leans forward. 'Or you can use it to [link]transform[as]transform Larissa[end link] me if it's on my want list.'[or]'At first, I wasn't too keen on coming here and risking getting transformed. But the more I see the sexy creatures, the more I want to give it a try.'[or]'You guys are all lucky that Zephyr's such a great company that we were able come and help out so fast. I'm a little surprised how fast we've come up with a lot of this stuff.'[or]'You should know, this nanite thing isn't just happening here. It's happening all over the country. Sometimes it's just cities, but in a few places, it's whole states.'[or][if vialsnagging is true]'Don't forget to try getting samples from creatures on my want list so I can [link]transform[as]transform Larissa[end link] again.'[else]'If you want to [link]transform[end link] me, you'll need to use a nanite collector from the store here. Thankfully we're selling them fairly cheap,' [subjpro of Larissa] says.[end if][or]'Next time I can take a break, we should definitely have a little fun,' [subjpro of Larissa] says with a wink.'[or][if LarissaLastTF - turns < 20]'I'm liking this new look for me. Don't you think I look [LarissaGeneralLook]?' [subjpro of Larissa] asks with a happy smile[else]'I'm getting a little bored with this new form of mine. Maybe we should consider picking a new form I can [link]transform[as]transform Larissa[end link] into,' she says.'[end if][or]'What do you think of my [LarissaGeneralLook] look as a [LarissaForm]?'[at random]";
	if Outside Trevor Labs is not known:
		say "     Larissa grabs a sticky note from her desk. 'Oh, we also have a report of some scientist still operating in the city. Just a rumor, but you might want to check it out and see if you can get some extra work there.' She gives you some general directions to get to the area. It might be worth looking into.";
		now Outside Trevor Labs is known;


Part 2 - Zephyr-Matt Quest

[ See Main Storyline file for now]

[-----------------------------------------------------------------------------------------------------]

Section 4 - Fucking

the fuckscene of Larissa is "[sexwithLarissa]".

to say sexwithLarissa:
	if lastfuck of Larissa - turns < 8:
		say "     'We'll have to put that on hold, hon. I'm not due to get another break for a while yet.'";
	else if Player is neuter:
		say "     You're ill-equipped to consider fooling around with [objpro of Larissa] at the moment.";
	else if HP of Larissa is 0:
		say "     Larissa pulls a spritz bottle out of a drawer under the counter, spraying you with diluted vinegar. You are driven back. 'Is everyone a horny freak now? Why can't they just all leave me alone so I can work in peace?' she grumbles.";
	else if HP of Larissa is 1 or HP of Larissa is 2:	[unchanged human form]
		now lastfuck of Larissa is turns;
		say "     Larissa grins at your offer to have a little fun and, after getting someone to take over at her desk for a little while, she leads you into the back. She takes you to the break room and flips a little sign on the door. The room itself is rather sparse but does have a small cot available. Pulling off her lab coat, she stretches out, showing off her lovely human form, seemingly pure and unaffected by the nanite infection all around. She toss the coat and her other clothes over one of the chairs and pulls you into her arms, kissing you firmly while your hands run over each other's bodies.";
		if Player is male:
			say "     You guide the woman down onto the cot and smile down at her as she spreads her legs for you. Her skin as lovely and unblemished with a light tan color almost all over save for that spot you're most interested in exploring. You onto the bed with her, bringing your mouth to her breasts and kissing her nipples while your hand slides between her legs to rub her pussy. It feels so good to be with a human woman after so long with only those transformed to entice your lusts. She brings one of her delicate hands to grasp your [Cock Size Desc of Player] [Cock of Player] maleness, stroking it while you finger her dampening slit.";
			if Cock Length of Player < 20:
				say "     Once the foreplay's gotten you both quite excited and eager for more, you move on to the main event, moving overtop of her and kissing her as you slide your [Cock Size Desc of Player] to her wet folds. She moans and wraps her arms around you as you guide your cock into her [if Cock Length of Player > 12]very slowly, giving her human body plenty of time to adjust to your large phallus[else]slowly, savoring the feel of a real woman's cunt around your again[end if]. Once you're fully inside, you start to thrust, pumping your cock into her[if Cock Count of Player > 2] while the others rub against her belly[else if Cock Count of Player is 2]while your other one rubs against her belly[end if]. You kiss and run your hands over one another while you fuck long and hard before you finally cum and blast your [if Ball Size of Player >= 7]belly-bloating load into her, leaving her stuffed and sated on the cot. She only returns to her desk after a long break to let your cum drain and her belly to go down enough that she can move again[else if Ball Size of Player >= 5]massive load into her belly, leaving her with a prominent bulge of cum when she heads back to her desk[else if Ball Size of Player > 3]heavy load into her, leaving her full and leaking your cum when she heads back to her desk[else]hot load into her[end if].";
			else:
				say "     Once the foreplay's gotten you both quite excited and eager for more, you move your cock into position to grind against her pussy. Having a [Cock Size Desc of Player] penis, it's quite a lot for the unchanged woman to take, so you content yourself with rubbing it against her womanly body and between her breasts. She squeezes her big tits around it, licking and kissing at your glans at the crest of each thrust. You're treated to watching her tease and rub her own nipples while lavishing attention upon your cock, not seeming at all put off by your [Cock Size Desc of Player] [Cock of Player] shaft. After a very enjoyable titty-fuck with the lovely human, you groan and cum hard, blasting your load across her face and into her open mouth[if Ball Size of Player >= 7]. The massive output of your [Ball Size Adjective of Player] [Balls] leaves a sticky mess across her, half of the cot and even the back wall[else if Ball Size of Player >= 5]. The large output of your [Ball Size Adjective of Player] [Balls] leaves a sticky mess across her and half the cot[else if Ball Size of Player > 3]. The considerable output of your [Ball Size Adjective of Player] [Balls] leaves a sticky mess across her face[else]. She manages to guzzle down most of your load by keeping her lips pressed around your cum slit[end if]. After getting dressed and cleaned back up, she heads back to her desk.";
		else:
			say "     You guide the woman down onto the cot and smile down at her as she spreads her legs for you. Her skin as lovely and unblemished with a light tan color almost all over save for that spot you're most interested in exploring. You onto the bed with her, bringing your mouth to her breasts and kissing her nipples while your hand slides between her legs to rub her pussy. It feels so good to be with a human woman after so long with only those transformed to entice your lusts. She brings one of her delicate hands to stroke your wet folds in return, slipping a few fingers exploringly into your [Cunt Size Desc of Player] puss[yfn], pumping them into you while you tease her dampening slit.";
			say "     You tease and tantalize one another like this for quite a while[if Breast Size of Player > 0], shifting position to let her suckle on your nipples as well[end if]. Once you're both quite worked up, she turns around on the cot, bringing her face between your legs and offering her muff to your mouth in return. You dig in eagerly, licking and lapping at her juicy pussy while she does the same for you. You lick and finger one another until you both have a powerful series of orgasms that leave you both satisfied and sticky with juices. After cuddling together for a while, she wipes up quickly before dressing and heading back to her desk with a happy grin on her face.";
	else if HP of Larissa is 3:					[potentially changed human form]
		now lastfuck of Larissa is turns;
		[***new version to be added later.]
		say "     Larissa grins at your offer to have a little fun and, after getting someone to take over at her desk for a little while, she leads you into the back. She takes you to the break room and flips a little sign on the door. The room itself is rather sparse but does have a small cot available. Pulling off her lab coat, she stretches out, showing off her lovely human form, seemingly pure and unaffected by the nanite infection all around. She toss the coat and her other clothes over one of the chairs and pulls you into her arms, kissing you firmly while your hands run over each other's bodies.";
		if Player is male:
			say "     You guide the woman down onto the cot and smile down at her as she spreads her legs for you. Her skin as lovely and unblemished with a light tan color almost all over save for that spot you're most interested in exploring. You onto the bed with her, bringing your mouth to her breasts and kissing her nipples while your hand slides between her legs to rub her pussy. It feels so good to be with a human woman after so long with only those transformed to entice your lusts. She brings one of her delicate hands to grasp your [Cock Size Desc of Player] [Cock of Player] maleness, stroking it while you finger her dampening slit.";
			if Cock Length of Player < 20:
				say "     Once the foreplay's gotten you both quite excited and eager for more, you move on to the main event, moving overtop of her and kissing her as you slide your [Cock Size Desc of Player] to her wet folds. She moans and wraps her arms around you as you guide your cock into her [if Cock Length of Player > 12]very slowly, giving her human body plenty of time to adjust to your large phallus[else]slowly, savoring the feel of a real woman's cunt around your again[end if]. Once you're fully inside, you start to thrust, pumping your cock into her[if Cock Count of Player > 2] while the others rub against her belly[else if Cock Count of Player is 2]while your other one rubs against her belly[end if]. You kiss and run your hands over one another while you fuck long and hard before you finally cum and blast your [if Ball Size of Player >= 7]belly-bloating load into her, leaving her stuffed and sated on the cot. She only returns to her desk after a long break to let your cum drain and her belly to go down enough that she can move again[else if Ball Size of Player >= 5]massive load into her belly, leaving her with a prominent bulge of cum when she heads back to her desk[else if Ball Size of Player > 3]heavy load into her, leaving her full and leaking your cum when she heads back to her desk[else]hot load into her[end if].";
			else:
				say "     Once the foreplay's gotten you both quite excited and eager for more, you move your cock into position to grind against her pussy. Having a [Cock Size Desc of Player] penis, it's quite a lot for the unchanged woman to take, so you content yourself with rubbing it against her womanly body and between her breasts. She squeezes her big tits around it, licking and kissing at your glans at the crest of each thrust. You're treated to watching her tease and rub her own nipples while lavishing attention upon your cock, not seeming at all put off by your [Cock Size Desc of Player] [Cock of Player] shaft. After a very enjoyable titty-fuck with the lovely human, you groan and cum hard, blasting your load across her face and into her open mouth[if Ball Size of Player >= 7]. The massive output of your [Ball Size Adjective of Player] [Balls] leaves a sticky mess across her, half of the cot and even the back wall[else if Ball Size of Player >= 5]. The large output of your [Ball Size Adjective of Player] [Balls] leaves a sticky mess across her and half the cot[else if Ball Size of Player > 3]. The considerable output of your [Ball Size Adjective of Player] [Balls] leaves a sticky mess across her face[else]. She manages to guzzle down most of your load by keeping her lips pressed around your cum slit[end if]. After getting dressed and cleaned back up, she heads back to her desk.";
		else:
			say "     You guide the woman down onto the cot and smile down at her as she spreads her legs for you. Her skin as lovely and unblemished with a light tan color almost all over save for that spot you're most interested in exploring. You onto the bed with her, bringing your mouth to her breasts and kissing her nipples while your hand slides between her legs to rub her pussy. It feels so good to be with a human woman after so long with only those transformed to entice your lusts. She brings one of her delicate hands to stroke your wet folds in return, slipping a few fingers exploringly into your [Cunt Size Desc of Player] puss[yfn], pumping them into you while you tease her dampening slit.";
			say "     You tease and tantalize one another like this for quite a while[if Breast Size of Player > 0], shifting position to let her suckle on your nipples as well[end if]. Once you're both quite worked up, she turns around on the cot, bringing her face between your legs and offering her muff to your mouth in return. You dig in eagerly, licking and lapping at her juicy pussy while she does the same for you. You lick and finger one another until you both have a powerful series of orgasms that leave you both satisfied and sticky with juices. After cuddling together for a while, she wipes up quickly before dressing and heading back to her desk with a happy grin on her face.";
	else:									[infected form]
		now lastfuck of Larissa is turns;
		say "     Larissa has a big grin on her [LarissaFace] face at your offer to have a little fun and, [one of]upon conning someone into taking[or]after getting someone to take[or]after making someone will take[or]upon finding someone to take[at random] over at [possadj of Larissa] desk for a little while, [subjpro of Larissa] leads you into the back. The [LarissaGeneralLook] [LarissaForm] takes you to the break room and flips a little sign on the door. The room itself is rather sparse but does have a small cot available. Pulling off [possadj of Larissa] lab coat, [subjpro of Larissa] stretches out, showing off [PossPro of Larissa]self as [LarissaBody], thanks to your assistance. [subjpro_Cap of Larissa] toss the coat and [possadj of Larissa] other clothes over one of the chairs and pulls you into [possadj of Larissa] arms, kissing you firmly while your hands run over each other's bodies.";
		say "[LarissaTFsex]";


to say LarissaTFsex:		[Menu options to be added later as more scenes are composed?]
	if ( ( player is male and Cunt Count of Larissa > 0 ) or ( player is female and Cock Count of Larissa > 0 ) ) and a random chance of 3 in 5 succeeds and BodyName of Player is listed in infections of Taurlist and LarissaBodycat is 2:
		say "[Larissasex_taurfun]";
	else if Player is herm and Larissa is herm:			[H/H]
		if a random chance of 1 in 2 succeeds:
			say "[Larissasex_MF]"; [player tops]
		else:
			say "[Larissasex_FM]"; [Larissa tops]
	else if Player is male and Cunt Count of Larissa > 0:		[M/F, M/H, H/F]
		say "[Larissasex_MF]";
	else if Player is female and Cock Count of Larissa > 0:		[F/M, F/H, H/M]
		say "[Larissasex_FM]";
	else if Cock Count of Larissa > 0:						[M/M]
		say "[Larissasex_MM]";
	else if Cunt Count of Larissa > 0:						[F/F]
		say "[Larissasex_FF]";
	else:										[?/N]
		say "***Larissa neuter. No scene yet.";

[ cock/cunt size scaling:
cock length > ( ( Cunt Depth * 2) + cunt width + 2 )		:	over the limit
cock length > ( Cunt Depth + cunt width + 2 )			:	large
cock length	< ( ( Cunt Depth + cunt width + 1 ) / 3 )	:	small

cum output scaling:
cock width >= ( scalevalue + 1 ) * 10				:	super-stuffed
cock width >= ( scalevalue + 1 ) * 5				:	plumped
cock width >= ( ( scalevalue + 1 ) * 5 ) / 2			:	full
]

to say Larissasex_MF:
	say "     You guide the [if Cock Count of Larissa > 0]herm[else]female[end if] [LarissaForm] down onto the cot and smile down at her as she spreads her legs for you. The [LarissaSkin] covering her [LarissaBodyType] body is quite lovely, making you pause to take in her [LarissaGeneralLook] form. As lovely as the sight is, you can't wait any longer to admire it and hop into bed with her. You spread her legs and slip your hand between her thighs, rubbing at her [if Cock Count of Larissa > 0][Cock Size Desc of Larissa] [LarissaCock] maleness and [Cunt Size Desc of Larissa] pussy[else][Cunt Size Desc of Larissa] pussy[end if][if Breast Size of Larissa > 0]. You nuzzle at her chest, bringing your mouth to her [Breast Size Desc of Larissa] breasts and kissing her nipples[else]. You nuzzle at her chest, then up to her neck to kiss and nibble along it[end if], much to her delight.";
	if Cock Length of Player > ( ( Cunt Depth of Larissa * 2 ) + Cunt Tightness of Larissa + 2 ):			[super-big]
		say "     Your [Cock Size Desc of Player] [Cock of Player] penis is too large [if Cunt Depth of Larissa >= 12]even [end if]for her [Cunt Size Desc of Larissa] pussy, so you satisfy yourself by rubbing your maleness down onto her, grinding it across her juicy folds. She moans and rubs back against you while running her [LarissaHandForm]s over your [BodyDesc of Player] body as well as your [Cock Size Desc of Player] shaft. Licks and kisses are given as well, gradually getting you worked up to the point where you're about to blow.";
		say "     Sensing your orgasm coming, she presses your glans to her pussy and grinds hard against it. You cum with a loud moan. While much of your seed soaks her crotch, some blasts shoot into her[if Ball Size of Player >= 7]. This results in still a sizable amount of semen squirted into the woman[else if Ball Size of Player >= 5]. This results in quite a bit of semen still getting squirted into the woman[end if]. The pleasure of you cumming onto and into her pushes her over the edge into orgasm as well, [if Cock Count of Larissa > 0]spraying her seed across her [LarissaBodyDesc] body and [end if]adding her pussy juices to the sticky mess as her crotch. You both snuggle together while recovering from powerful climax and, after a little more fun while cleaning each other up, head back out front.";
	else if Cock Length of Player > ( Cunt Depth of Larissa + Cunt Tightness of Larissa + 2 ):			[large]
		say "     Your [Cock Size Desc of Player] [Cock of Player] penis is quite large compared to her [Cunt Size Desc of Larissa] pussy, necessitating that you start slow as you thrust into those wet folds of hers. She moans and wraps her arms around you as you guide your cock into her [LarissaBodyType] body, making a visible bump in her belly from having your [Cock Size Desc of Player] rod stuffed in her. She moans and runs her [LarissaHandForm]s over your [BodyDesc of Player] form and, once she's loosened up enough, down to your ass to pull you into faster and harder thrusts. You lick and kiss one another as well, pressing your lips to her [LarissaMouth][if Breast Size of Larissa > 0] between kisses upon her [Breast Size Desc of Larissa] breasts[end if].";
		say "     Sensing your orgasm coming, she pulls your hips forward, pushing you as deep as you can go into her, bulging her belly with your cock as you unleash your hot load[if Ball Size of Player >= ( ( ScaleValue of Larissa + 1 ) * 10 )]. Your enormous output causes the [LarissaForm][']s belly to swell greatly, becoming bloated with your seed. She is left full and leaking your cum for quite some time after you're done before she's able to get up and return to her desk[else if Ball Size of Player >= ( ( ScaleValue of Larissa + 1 ) * 5 )]. Your heavy output causes the [LarissaForm][']s belly to swell further, leaving her with a prominent bulge of cum when she heads back to her desk[else if Ball Size of Player >= ( ( ( ScaleValue of Larissa + 1 ) * 5 ) / 2 )]. Your large output leaves the [LarissaForm] full and leaking your cum when she heads back to her desk[else]. After you're done, Larissa heads back to her desk with a contented smile on her face[end if].";
	else if Cock Length of Player < ( ( Cunt Depth of Larissa + Cunt Tightness of Larissa + 1 ) / 3 ):		[small]
		say "     Your [Cock Size Desc of Player] [Cock of Player] penis is quite small compared to her [Cunt Size Desc of Larissa] pussy, letting you thrust into her easily, but provided limited stimulation for her. To alleviate this, you rub and tease her wet folds with one hand while thrusting into her, drawing sounds of pleasure from her. She moans and runs her [LarissaHandForm]s over your [BodyDesc of Player] form and down to your ass, squeezing it firmly and driving you to fuck her harder. You lick and kiss one another as well, pressing your lips to her [LarissaMouth][if Breast Size of Larissa > 0] between kisses upon her [Breast Size Desc of Larissa] breasts[end if].";
		say "     Sensing your orgasm coming, she pulls your hips forward, pushing you fully into her as you unleash your hot load[if Ball Size of Player >= ( ( ScaleValue of Larissa + 1 ) * 10 )]. Your enormous output causes the [LarissaForm][']s belly to swell greatly, becoming bloated with your seed. She is left full and leaking your cum for quite some time after you're done before she's able to get up and return to her desk[else if Ball Size of Player >= ( ( ScaleValue of Larissa + 1 ) * 5 )]. Your heavy output causes the [LarissaForm][']s belly to swell, leaving her with a prominent bulge of cum when she heads back to her desk[else if Ball Size of Player >= ( ( ( ScaleValue of Larissa + 1 ) * 5 ) / 2 )]. Your large output leaves the [LarissaForm] full and leaking your cum when she heads back to her desk[else]. After you're done, Larissa heads back to her desk with a contented smile on her face[end if].";
	else:		[compatible size - normal]
		say "     You slide your [Cock Size Desc of Player] [Cock of Player] penis into her [Cunt Size Desc of Larissa] pussy, enjoying the wonderful sensation of her squeezing around your maleness. She moans and runs her [LarissaHandForm]s over your [BodyDesc of Player] form and down to your ass, squeezing it firmly and driving you to fuck her harder. You lick and kiss one another as well, pressing your lips to her [LarissaMouth][if Breast Size of Larissa > 0] between kisses upon her [Breast Size Desc of Larissa] breasts[end if].";
		say "     Sensing your orgasm coming, she pulls your hips forward, pushing you fully into her as you unleash your hot load[if Ball Size of Player >= ( ( ScaleValue of Larissa + 1 ) * 10 )]. Your enormous output causes the [LarissaForm][']s belly to swell greatly, becoming bloated with your seed. She is left full and leaking your cum for quite some time after you're done before she's able to get up and return to her desk[else if Ball Size of Player >= ( ( ScaleValue of Larissa + 1 ) * 5 )]. Your heavy output causes the [LarissaForm][']s belly to swell, leaving her with a prominent bulge of cum when she heads back to her desk[else if Ball Size of Player >= ( ( ( ScaleValue of Larissa + 1 ) * 5 ) / 2 )]. Your large output leaves the [LarissaForm] full and leaking your cum when she heads back to her desk[else]. After you're done, Larissa heads back to her desk with a contented smile on her face[end if].";


to say Larissasex_FM:
	let larfound be 0;
	[puts Larissa's form as lead monster in case of impregnation]
	setmonster LarissaInfName;
	let baby be 0;
	if child is born or gestation of Child is not 0, now baby is 1;
	say "     The [if Cunt Count of Larissa > 0]herm[else]male[end if] [LarissaForm] guides you down onto the cot. [subjpro_Cap of Larissa] smiles down at you as [subjpro of Larissa] spreads your legs. 'I'm looking forward to being on top for a change,' [subjpro of Larissa] says, running a [LarissaHandForm] over [possadj of Larissa] [Cock Size Desc of Larissa] [LarissaCock] manhood. It dribbles some precum down onto your waiting crotch while [subjpro of Larissa] rubs [possadj of Larissa] [LarissaBodyDesc] body against yours[if Breast Size of Larissa > 0], pressing [possadj of Larissa] [Breast Size Desc of Larissa] bosom down onto you[end if]. Getting increasingly excited, you slide your hands [if Player is male]past your own maleness [end if]between your thighs and spread your pussy in open invitation to that sexy cock and its now [if Cock Length of Larissa > 24]hugely[else if Cock Length of Larissa > 12]largely[else if Cock Length of Larissa > 7]sizably[else]modestly[end if]-hung owner.";
	if Cock Length of Larissa > ( ( Cunt Depth of Player * 2 ) + Cunt Tightness of Player + 2 ):			[super-big]
		say "     [possadj_cap of Larissa] [Cock Size Desc of Larissa] [LarissaCock] penis is too large [if Cunt Depth of Player >= 12]even [end if]for your [Cunt Size Desc of Player] pussy, so [subjpro of Larissa] satisfies [objpro of Larissa]self by rubbing [possadj of Larissa] maleness down against you, grinding it across your juicy folds[if Player is male] and throbbing shaft[end if][if Breast Size of Larissa > 0]. You move your hands up to [possadj of Larissa] lovely [Breast Size Desc of Larissa] breasts, caressing them and teasing [possadj of Larissa] nipples[else]. You move your hands up to [possadj of Larissa] lovely [LarissaBodyType] body, caressing [possadj of Larissa] [LarissaBodyType] form[end if]. Pressing [possadj of Larissa] [LarissaMouth] to your lips, [subjpro of Larissa] kisses you with a soft moan of pleasure. When your hands slide further to caress [possadj of Larissa] [LarissaCock] shaft and [Larissaballs], [subjpro of Larissa] spurts precum across your [BodyDesc of Player] body and kisses you all the more excitedly.";
		say "     With [possadj of Larissa] orgasm approaching, you press [possadj of Larissa] glans to your pussy and grind hard against it. [subjpro_Cap of Larissa] cums with a loud moan of release. While much of [possadj of Larissa] seed soaks your crotch, some blasts shoot into you[if Ball Size of Larissa >= 40]. This results in still a sizable amount of semen squirted into you[else if Ball Size of Player >= 5]. This results in quite a bit of semen still getting squirted into you[end if]. Feeling these spurts of [possadj of Larissa] hot semen splashing onto and into your cunt pushes you over the edge into orgasm as well[if Player is male]spraying your seed across your [BodyType of Player] body and [end if]adding your feminine juices to the sticky mess at your crotch. You both snuggle together while recovering from the powerful climax and, after a little more fun while cleaning each other up, head back out front.[if Ball Size of Larissa >= 20 or a random chance of 1 in 2 succeeds][impregchance][end if]";
	else if Cock Length of Larissa > ( Cunt Depth of Player + Cunt Tightness of Player + 2 ):			[large]
		say "     [possadj_cap of Larissa] [Cock Size Desc of Larissa] [LarissaCock] penis is quite large compared to your [Cunt Size Desc of Player] pussy, necessitating that [subjpro of Larissa] start slowly as [subjpro of Larissa] thrusts into those wet folds of yours, making a visible bump in your belly from having [possadj of Larissa] [Cock Size Desc of Larissa] rod stuffed in you[if Breast Size of Larissa > 0]. You move your hands up to [possadj of Larissa] lovely [Breast Size Desc of Larissa] breasts, caressing them and teasing [possadj of Larissa] nipples[else]. You move your hands up to [possadj of Larissa] lovely [LarissaBodyType] body, caressing [possadj of Larissa] [LarissaBodyType] form[end if]. Pressing [possadj of Larissa] [LarissaMouth] to your lips, [subjpro of Larissa] kisses you with a soft moan of pleasure. Once you've loosened up enough, you slide a hand down to rub [possadj of Larissa] [Larissaballs] and urge [objpro of Larissa] to fuck you faster and harder between kisses.";
		say "     With [possadj of Larissa] orgasm approaching, you knead [possadj of Larissa] balls and squeeze your inner walls around [possadj of Larissa] maleness. [subjpro_Cap of Larissa] pushes as deep as [subjpro of Larissa] can into you, bulging your belly with [possadj of Larissa] cock as [subjpro of Larissa] unleashes [possadj of Larissa] hot load[if Ball Size of Larissa >= ( ( scalevalue of Player + 1 ) * 10 )]. [possadj_cap of Larissa] enormous output causes your [BodyType of Player] belly to swell greatly, becoming bloated with [possadj of Larissa] seed. You are left full and leaking [possadj of Larissa] cum for quite some time after [subjpro of Larissa][']s done. When you finally drain or absorb enough to stagger out to the front lobby, you find [objpro of Larissa] sitting at [possadj of Larissa] desk with a smug look on [possadj of Larissa] [LarissaFace] face[else if Ball Size of Player >= ( ( ScaleValue of Larissa + 1 ) * 5 )]. [possadj_cap of Larissa] heavy output causes your [BodyType of Player] belly to swell further, leaving you with a prominent bulge of cum when you stagger back to the front lobby[else if Ball Size of Player >= ( ( ( ScaleValue of Larissa + 1 ) * 5 ) / 2 )]. [possadj_cap of Larissa] large output leaves your [BodyType of Player] belly full and leaking [possadj of Larissa] cum when you head back to the front lobby[else]. After [subjpro of Larissa][']s done, Larissa heads back to [possadj of Larissa] desk with a contented smile on [possadj of Larissa] [LarissaFace] face[end if].[impregchance][if Ball Size of Larissa >= 20 and a random chance of 1 in 2 succeeds][impregchance][end if]";
	else if Cock Length of Larissa < ( ( Cunt Depth of Player + Cunt Tightness of Player + 1 ) / 3 ):		[small]
		say "     [possadj_cap of Larissa] [Cock Size Desc of Larissa] [LarissaCock] is quite small compared to your [Cunt Size Desc of Player] pussy, letting [objpro of Larissa] thrust into you easily, but provides limited stimulation for you. To make up for this, [subjpro of Larissa] rubs and teases at your wet folds and clit with one [LarissaHandForm], making you quiver in delight[if Breast Size of Larissa > 0]. You move your hands up to [possadj of Larissa] lovely [Breast Size Desc of Larissa] breasts, caressing them and teasing [possadj of Larissa] nipples[else]. You move your hands up to [possadj of Larissa] lovely [LarissaBodyType] body, caressing [possadj of Larissa] [LarissaBodyType] form[end if]. Pressing [possadj of Larissa] [LarissaMouth] to your lips, [subjpro of Larissa] kisses you with a soft moan of pleasure. As [subjpro of Larissa] fucks you, you slide a hand down to rub [possadj of Larissa] [Larissaballs] and urge [objpro of Larissa] to fuck you faster and harder between kisses.";
		say "     With [possadj of Larissa] orgasm approaching, you knead [possadj of Larissa] balls and squeeze your inner walls around [possadj of Larissa] maleness. [subjpro_Cap of Larissa] pushes fully into you and unleashes [possadj of Larissa] hot load[if Ball Size of Larissa >= ( ( scalevalue of Player + 1 ) * 10 )]. [possadj_cap of Larissa] enormous output causes your [BodyType of Player] belly to swell greatly, becoming bloated with [possadj of Larissa] seed. You are left full and leaking [possadj of Larissa] cum for quite some time after [subjpro of Larissa][']s done. When you finally drain or absorb enough to stagger out to the front lobby, you find [objpro of Larissa] sitting at [possadj of Larissa] desk with a smug look on [possadj of Larissa] [LarissaFace] face[else if Ball Size of Player >= ( ( ScaleValue of Larissa + 1 ) * 5 )]. [possadj_cap of Larissa] heavy output causes your [BodyType of Player] belly to swell, leaving you with a prominent bulge of cum when you stagger back to the front lobby[else if Ball Size of Player >= ( ( ( ScaleValue of Larissa + 1 ) * 5 ) / 2 )]. [possadj_cap of Larissa] large output leaves your [BodyType of Player] belly full and leaking [possadj of Larissa] cum when you head back to the front lobby[else]. After [subjpro of Larissa][']s done, Larissa heads back to [possadj of Larissa] desk with a contented smile on [possadj of Larissa] [LarissaFace] face[end if].[impregchance][if Ball Size of Larissa >= 20 and a random chance of 1 in 2 succeeds][impregchance][end if]";
	else:		[compatible size - normal]
		say "     [subjpro_Cap of Larissa] slides [possadj of Larissa] [Cock Size Desc of Larissa] [LarissaCock] penis into your [Cunt Size Desc of Player] pussy, enjoying the wonderful sensation of you squeezing down around [possadj of Larissa] maleness[if Breast Size of Larissa > 0]. You move your hands up to [possadj of Larissa] lovely [Breast Size Desc of Larissa] breasts, caressing them and teasing [possadj of Larissa] nipples[else]. You move your hands up to [possadj of Larissa] lovely [LarissaBodyType] body, caressing [possadj of Larissa] [LarissaBodyType] form[end if]. Pressing [possadj of Larissa] [LarissaMouth] to your lips, [subjpro of Larissa] kisses you with a soft moan of pleasure. As [subjpro of Larissa] fucks you, you slide a hand down to rub [possadj of Larissa] [Larissaballs] and urge [objpro of Larissa] to fuck you faster and harder between kisses.";
		say "     With [possadj of Larissa] orgasm approaching, you knead [possadj of Larissa] balls and squeeze your inner walls around [possadj of Larissa] maleness. [subjpro_Cap of Larissa] pushes fully into you and unleashes [possadj of Larissa] hot load[if Ball Size of Larissa >= ( ( scalevalue of Player + 1 ) * 10 )]. [possadj_cap of Larissa] enormous output causes your [BodyType of Player] belly to swell greatly, becoming bloated with her seed. You are left full and leaking [possadj of Larissa] cum for quite some time after [subjpro of Larissa][']s done. When you finally drain or absorb enough to stagger out to the front lobby, you find [objpro of Larissa] sitting at [possadj of Larissa] desk with a smug look on [possadj of Larissa] [LarissaFace] face[else if Ball Size of Player >= ( ( ScaleValue of Larissa + 1 ) * 5 )]. [possadj_cap of Larissa] heavy output causes your [BodyType of Player] belly to swell, leaving you with a prominent bulge of cum when you stagger back to the front lobby[else if Ball Size of Player >= ( ( ( ScaleValue of Larissa + 1 ) * 5 ) / 2 )]. [possadj_cap of Larissa] large output leaves your [BodyType of Player] belly full and leaking [possadj of Larissa] cum when you head back to the front lobby[else]. After [subjpro of Larissa][']s done, Larissa heads back to [possadj of Larissa] desk with a contented smile on [possadj of Larissa] [LarissaFace] face[end if].[impregchance][if Ball Size of Larissa >= 20 and a random chance of 1 in 2 succeeds][impregchance][end if]";
	if baby is 0 and gestation of Child is not 0 and Larfound is 0:
		now FaceName of Child is LarissaInfName;
		now BodyName of Child is LarissaInfName;
		now SkinName of Child is LarissaInfName;


to say Larissasex_MM:
	let larfound be 0;
	[puts Larissa's form as lead monster in case of impregnation]
	repeat with y running from 1 to number of filled rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		if Name entry is LarissaInfName:
			now MonsterID is y;
			now larfound is 1;
			break;
	let baby be 0;
	if child is born or gestation of Child is not 0, now baby is 1;
	if Cock Length of Larissa > ( ( scalevalue of Player + 1 ) * 12 ):	[too big, full body rub + oral]
		say "     He pushes you back onto the cot and presses his [Cock Size Desc of Larissa] [LarissaCock] cock down overtop of you with a wide grin. 'Mmm... I think I might be a little big for you now, which means you'd best get to licking,' he chuckles[if Player is male]. He grinds his cock down overtop of yours[end if][if Cock Length of Larissa > Cock Length of Player] with a smug grin at being better hung than you[end if] and pushes cock to your face. Presented with his pulsing rod, you run your hands overtop of it and start licking and kissing it, drawing a low moan of delight from him. You slide your tongue all over it, taking long, slow licks that get him spurting precum. You even lick over his gaping cum slit and press your tongue into it, causing him to throw his head back and grip your sides with his [LarissaHandForm]s.";
		say "     Grinding his [LarissaCock] cock down onto your [BodyType of Player] body and having you lick and tease it eventually becomes too much for him, driving him to cum hard, shooting his cum all over your face and into your open mouth[if Ball Size of Larissa >= 30]. You swallow down as much of the [LarissaForm][']s excessive load of semen as you can, but much of it ends up covering your face, the head of the bed and even the wall behind it[else if Ball Size of Larissa >= 15]. You swallow down much of the [LarissaForm][']s large load of semen, but there's lots of it left covering your face and the head of the bed[else]. You swallow down as much of the [LarissaForm][']s semen as you can get, but much of it ends up covering your face[end if] by the time he's drained. After having some more fun while helping to get cleaned up[if Player is male], getting you off as well[end if], he heads back out front and returns to his desk.";
	else:
		say "     The [if Cunt Count of Larissa > 0]herm[else]male[end if] [LarissaForm] guides you down onto all fours, running his hands down your back to grab your ass. 'Mmm... I'm looking forward to being on top for a change,' he says, running a [LarissaHandForm] over [possadj of Larissa] [Cock Size Desc of Larissa] [LarissaCock] manhood. It dribbles some precum down your back and between your ass cheeks as he guides it into position at your back door. His [LarissaHandForm] gives your rear a squeeze before she teases a finger at your asshole, using his leaking pre to lube and loosen you up. Getting increasingly excited, you wiggle your bottom and grind back against him in open invitation to that sexy cock and its now [if Cock Length of Larissa > 24]hugely[else if Cock Length of Larissa > 12]largely[else if Cock Length of Larissa > 7]sizably[else]modestly[end if]-hung owner. Grinning, he leans overtop you, pressing his [LarissaBodyDesc] body against yours[if Breast Size of Larissa > 0], rubbing [possadj of Larissa] [Breast Size Desc of Larissa] bosom against your back[end if] as he prepares to mount you.";
		if Cock Length of Larissa > ( ( scalevalue of Player + 1 ) * 6 ):		[large]
			say "     [possadj_cap of Larissa] [Cock Size Desc of Larissa] [LarissaCock] penis is quite large [if scalevalue of Player > 3]even when [end if]compared to your [Body Size Adjective of Player] body, necessitating that [subjpro of Larissa] start extra-slow as [subjpro of Larissa] thrusts into that tight ass of yours. [possadj_cap of Larissa] [Cock Size Desc of Larissa] prick makes a visibly phallic bump in your belly from having so much meat stuffed into you. You brace yourself as best you can for what's definitely going to be a hell of a ride. His thrusts are slow at first, but gradually pick up the pace as your body grows used to accommodating her [Cock of Player] rod. Soon you're inner walls are squeezing and tugging at his pulsing shaft while his [if Breast Size of Larissa > 0][Breast Size Desc of Larissa] breasts press down against your back[else][LarissaBodyDesc] body presses down against your back[end if][if scalevalue of Player is ScaleValue of Larissa]. He nuzzles at your shoulders and neck, kissing and nipping along them[else if scalevalue of Player < ScaleValue of Larissa]. Being considerably larger than you, the [Body Size Adjective of Larissa] [LarissaForm] keeps you pinned down so he can pound you even harder[else]. The smaller [LarissaForm] grips your ass tightly while pounding you hard and fast with its oversized cock[end if]. You moan and groan beneath him [if Player is male]while reaching around to grope your [Cock Size Desc of Player] [Cock of Player] cock[else]when he gives your ass a swat and drives hard into you[end if] with a chuckle.";
			say "     With his orgasm fast approaching, you work your ass harder over his prick and his [Larissaballs]. He pushes as deep as he can into you, bulging your belly with his cock as he unleashes his hot load[if Ball Size of Larissa >= ( ( scalevalue of Player + 1 ) * 10 )]. [possadj_cap of Larissa] enormous output causes your [BodyType of Player] belly to swell greatly, becoming bloated with [possadj of Larissa] seed. You are left full and leaking [possadj of Larissa] cum for quite some time after [subjpro of Larissa][']s done. When you finally drain or absorb enough to stagger out to the front lobby, you find [objpro of Larissa] sitting at [possadj of Larissa] desk with a smug look on [possadj of Larissa] [LarissaFace] face[else if Ball Size of Player >= ( ( ScaleValue of Larissa + 1 ) * 5 )]. [possadj_cap of Larissa] heavy output causes your [BodyType of Player] belly to swell further, leaving you with a prominent bulge of cum when you stagger back to the front lobby[else if Ball Size of Player >= ( ( ( ScaleValue of Larissa + 1 ) * 5 ) / 2 )]. [possadj_cap of Larissa] large output leaves your [BodyType of Player] belly full and leaking [possadj of Larissa] cum when you head back to the front lobby[else]. After [subjpro of Larissa][']s done, Larissa heads back to [possadj of Larissa] desk with a contented smile on [possadj of Larissa] [LarissaFace] face[end if].[mimpregchance][if Ball Size of Larissa >= 20 and a random chance of 1 in 2 succeeds][mimpregchance][end if]";
		else:
			say "     [possadj_cap of Larissa] [Cock Size Desc of Larissa] [LarissaCock] penis presses slowly into your [Body Size Adjective of Player] body as the former female mounts you. He thrusts steadily into that tight ass of yours, pushing a little further each time until he's fully sheathed inside you. You brace yourself as best you can and get your rear into a better position to get pounded by the horny [LarissaForm]. His thrusts are slow at first, but gradually pick up the pace as your body grows used to accommodating her [Cock of Player] rod. Soon you're inner walls are squeezing and tugging at his pulsing shaft while his [if Breast Size of Larissa > 0][Breast Size Desc of Larissa] breasts press down against your back[else][LarissaBodyDesc] body presses down against your back[end if][if scalevalue of Player is ScaleValue of Larissa]. He nuzzles at your shoulders and neck, kissing and nipping along them[else if scalevalue of Player < ScaleValue of Larissa]. Being considerably larger than you, the [Body Size Adjective of Larissa] [LarissaForm] keeps you pinned down so he can pound you even harder[else]. The smaller [LarissaForm] grips your ass tightly while pounding you hard and fast with its oversized cock[end if]. You moan and groan beneath him [if Player is male]while reaching around to grope your [Cock Size Desc of Player] [Cock of Player] cock[else]when he gives your ass a swat and drives hard into you[end if] with a chuckle.";
			say "     With his orgasm fast approaching, you work your ass harder over his prick and his [Larissaballs]. He pushes fully into you, causing you to moan wantonly as he unleashes his hot load[if Ball Size of Larissa >= ( ( scalevalue of Player + 1 ) * 10 )]. [possadj_cap of Larissa] enormous output causes your [BodyType of Player] belly to swell greatly, becoming bloated with [possadj of Larissa] seed. You are left full and leaking [possadj of Larissa] cum for quite some time after [subjpro of Larissa][']s done. When you finally drain or absorb enough to stagger out to the front lobby, you find [objpro of Larissa] sitting at [possadj of Larissa] desk with a smug look on [possadj of Larissa] [LarissaFace] face[else if Ball Size of Player >= ( ( ScaleValue of Larissa + 1 ) * 5 )]. [possadj_cap of Larissa] heavy output causes your [BodyType of Player] belly to swell, leaving you with a prominent bulge of cum when you stagger back to the front lobby[else if Ball Size of Player >= ( ( ( ScaleValue of Larissa + 1 ) * 5 ) / 2 )]. [possadj_cap of Larissa] large output leaves your [BodyType of Player] belly full and leaking [possadj of Larissa] cum when you head back to the front lobby[else]. After [subjpro of Larissa][']s done, Larissa heads back to [possadj of Larissa] desk with a contented smile on [possadj of Larissa] [LarissaFace] face[end if].[mimpregchance][if Ball Size of Larissa >= 20 and a random chance of 1 in 2 succeeds][mimpregchance][end if]";
		if baby is 0 and gestation of Child is not 0 and Larfound is 0:
			now FaceName of Child is LarissaInfName;
			now BodyName of Child is LarissaInfName;
			now SkinName of Child is LarissaInfName;


to say Larissasex_FF:
	say "     The female [LarissaForm] pushes you down onto the cot and snuggles up beside you on it, running her [LarissaHandForm] over your [BodyDesc of Player] body as she does. You pull her into a kiss and slide a hand between her legs, sliding your fingers over her [Cunt Size Desc of Larissa] [LarissaBodyType] pussy. This draws a moan from her and she gives your ass a firm squeeze, kissing you even harder before moving her [LarissaHandForm] to your dripping folds. Soon you're fingering one another frantically, rubbing over those wet lips, sensitive clits and clenching inner walls[if Breast Size of Larissa > 0]. You move your mouth to her [Breast Size Desc of Larissa] breasts, kissing at them and sucking on her hard nipples. She gives delightful cries and her pussy quivers when you nibble on them. You continue to lavish attention upon one another until finally you both have cum several times, ending with a final powerful orgasm that leaves you both panting on the bed in each other's arms. When you've had a chance to recover and clean up, you both head back out and the [LarissaForm] returns to her desk with a contented smile on her face.";

to say Larissasex_taurfun:
	if Player is herm and Larissa is herm:			[H/H]
		if a random chance of 1 in 2 succeeds:
			say "[Larissasex_taurMF]"; [player tops]
		else:
			say "[Larissasex_taurFM]"; [Larissa tops]
	else if Player is male and Cunt Count of Larissa > 0:
		say "[Larissasex_taurMF]"; [player tops]
	else:
		say "[Larissasex_taurFM]"; [Larissa tops]


to say Larissasex_taurMF:
	say "     You guide the [if Cock Count of Larissa > 0]herm[else]female[end if] [LarissaForm] to the open area beside the cot and move in behind her. Grinning at your plan[if LarissaTailed is true] and flagging her [LarissaTail][end if], she braces her legs and wiggles her rear end tantalizingly. The [LarissaSkin] covering her [LarissaBodyType] body is quite lovely, making you pause to take in her [LarissaGeneralLook] form. As lovely as the sight is, you can't wait any longer to admire it and mount her tauric form with your own. With your forelimbs at her sides and your arms around her chest, you move into position[if Breast Size of Larissa > 0]. You run your hands over her chest, cupping her breasts and playing with her nipples while kissing and nibbling along the back of her neck[else]. You run your hands over her chest while kissing and nibbling along the back of her neck[end if], much to her delight.";
	if Cock Length of Player > ( ( Cunt Depth of Larissa * 2 ) + Cunt Tightness of Larissa + 2 ):			[super-big]
		say "     Your [Cock Size Desc of Player] [Cock of Player] penis is too large [if Cunt Depth of Larissa >= 12]even [end if]for her [Cunt Size Desc of Larissa] pussy, so you satisfy yourself by grinding your maleness against her juicy folds and tauric backside. She moans and presses back against your [BodyDesc of Player] form, reaching back for a time to rub her [LarissaHandForm] over your [Cock Size Desc of Player] shaft. Licks and kisses are given as well, gradually getting you worked up to the point where you're about to blow.";
		say "     Sensing your orgasm coming, you shift your position enough to press your glans to her pussy and grind hard against it. You cum with a loud moan. While much of your seed soaks her crotch and your underbelly, some blasts shoot into her[if Ball Size of Player >= 7]. This results in still a sizable amount of semen squirted into the transformed woman[else if Ball Size of Player >= 5]. This results in quite a bit of semen still getting squirted into the transformed woman[end if]. The pleasure of you cumming onto and into her pushes her over the edge into orgasm as well, [if Cock Count of Larissa > 0]spraying her seed across the floor and [end if]adding her pussy juices to the sticky mess as her crotch. You both snuggle together while recovering from powerful climax and, after a little more fun while cleaning each other up, head back out front.";
	else if Cock Length of Player > ( Cunt Depth of Larissa + Cunt Tightness of Larissa + 2 ):			[large]
		say "     Your [Cock Size Desc of Player] [Cock of Player] penis is quite large compared to her [Cunt Size Desc of Larissa] pussy, necessitating that you start slow as you thrust into those wet folds of hers. She moans and presses back against your [BodyDesc of Player] form as you slowly sink your cock into her [LarissaBodyType] body, making a visible bump in her belly from having your [Cock Size Desc of Player] rod stuffed in her. She moans and wraps her arms around yours, hugging them to her [if Breast Size of Larissa > 0][Breast Size Desc of Larissa] breasts[else]chest[end if] while you lick and kiss one another, pressing your lips to her [LarissaMouth]. Your tauric form grips hers as you rut her like a beast, much to your mutual delight.";
		say "     Sensing your orgasm coming, she braces herself with all her legs and pushes back firmly to help you drive as deep as you can go into her, bulging her belly with your cock as you unleash your hot load[if Ball Size of Player >= ( ( ScaleValue of Larissa + 1 ) * 10 )]. Your enormous output causes the [LarissaForm][']s belly to swell greatly, becoming bloated with your seed. She is left full and leaking your cum for quite some time after you're done before she's able to get up and return to her desk[else if Ball Size of Player >= ( ( ScaleValue of Larissa + 1 ) * 5 )]. Your heavy output causes the [LarissaForm][']s belly to swell further, leaving her with a prominent bulge of cum when she heads back to her desk[else if Ball Size of Player >= ( ( ( ScaleValue of Larissa + 1 ) * 5 ) / 2 )]. Your large output leaves the [LarissaForm] full and leaking your cum when she heads back to her desk[else]. After you're done, Larissa heads back to her desk with a contented smile on her face[end if].";
	else if Cock Length of Player < ( ( Cunt Depth of Larissa + Cunt Tightness of Larissa + 1 ) / 3 ):		[small]
		say "     Your [Cock Size Desc of Player] [Cock of Player] penis is quite small compared to her [Cunt Size Desc of Larissa] pussy, letting you thrust into her easily, but provided limited stimulation for her. To alleviate this, you ride her all the harder while manhandling her humanoid upper body, drawing sounds of pleasure from her. She moans and wraps her arms around yours, hugging them to her [if Breast Size of Larissa > 0][Breast Size Desc of Larissa] breasts[else]chest[end if] while you lick and kiss one another, pressing your lips to her [LarissaMouth]. Your tauric form grips hers as you rut her like a beast, much to your mutual delight.";
		say "     Sensing your orgasm coming, she braces herself with all her legs and pushes back firmly while urging you to ride her even harder. You pound away at her like with your [Cock of Player] manhood before driving it fully into her and unleash your hot load[if Ball Size of Player >= ( ( ScaleValue of Larissa + 1 ) * 10 )]. Your enormous output causes the [LarissaForm][']s belly to swell greatly, becoming bloated with your seed. She is left full and leaking your cum for quite some time after you're done before she's able to get up and return to her desk[else if Ball Size of Player >= ( ( ScaleValue of Larissa + 1 ) * 5 )]. Your heavy output causes the [LarissaForm][']s belly to swell, leaving her with a prominent bulge of cum when she heads back to her desk[else if Ball Size of Player >= ( ( ( ScaleValue of Larissa + 1 ) * 5 ) / 2 )]. Your large output leaves the [LarissaForm] full and leaking your cum when she heads back to her desk[else]. After you're done, Larissa heads back to her desk with a contented smile on her face[end if].";
	else:		[compatible size - normal]
		say "     You slide your [Cock Size Desc of Player] [Cock of Player] penis into her [Cunt Size Desc of Larissa] pussy, enjoying the wonderful sensation of her squeezing around your maleness. She and wraps her arms around yours, hugging them to her [if Breast Size of Larissa > 0][Breast Size Desc of Larissa] breasts[else]chest[end if] while you lick and kiss one another, pressing your lips to her [LarissaMouth]. Your tauric form grips hers as you rut her like a beast, much to your mutual delight.";
		say "     Sensing your orgasm coming, she braces herself with all her legs and pushes back firmly while urging you to ride her even harder. You pound away at her like with your [Cock of Player] manhood before driving it fully into her and unleash your hot load[if Ball Size of Player >= ( ( ScaleValue of Larissa + 1 ) * 10 )]. Your enormous output causes the [LarissaForm][']s belly to swell greatly, becoming bloated with your seed. She is left full and leaking your cum for quite some time after you're done before she's able to get up and return to her desk[else if Ball Size of Player >= ( ( ScaleValue of Larissa + 1 ) * 5 )]. Your heavy output causes the [LarissaForm][']s belly to swell, leaving her with a prominent bulge of cum when she heads back to her desk[else if Ball Size of Player >= ( ( ( ScaleValue of Larissa + 1 ) * 5 ) / 2 )]. Your large output leaves the [LarissaForm] full and leaking your cum when she heads back to her desk[else]. After you're done, Larissa heads back to her desk with a contented smile on her face[end if].";


to say Larissasex_taurFM:
	let larfound be 0;
	[puts Larissa's form as lead monster in case of impregnation]
	repeat with y running from 1 to number of filled rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		if Name entry is LarissaInfName:
			now MonsterID is y;
			now larfound is 1;
			break;
	let baby be 0;
	if child is born or gestation of Child is not 0, now baby is 1;
	say "     The [if Cunt Count of Larissa > 0]herm[else]male[end if] [LarissaForm] guides you to the open area beside the cot and moves in behind you. [subjpro_Cap of Larissa] grins as you brace your legs and wiggle your rear end tantalizingly at [objpro of Larissa]. 'I'm looking forward to mounting that sexy taur body of yours,' [subjpro of Larissa] says, running a [LarissaHandForm] across your ass. [subjpro_Cap of Larissa] doesn't tary, moving [possadj of Larissa] [LarissaBodyDesc] body over yours. She grips you with [possadj of Larissa] forelegs and puts [possadj of Larissa] arms around your humanoid upper body as [subjpro of Larissa] brings [possadj of Larissa] [Cock Size Desc of Larissa] [LarissaCock] into position[if Breast Size of Larissa > 0]. Even as [subjpro of Larissa] grinds [possadj of Larissa] cock against your cunny, you can feel [possadj of Larissa] [Breast Size Desc of Larissa] breasts pressed against your back[end if]. You moan at this and holds your hips steady with your pussy in invitation of that sexy cock and its now [if Cock Length of Larissa > 24]hugely[else if Cock Length of Larissa > 12]largely[else if Cock Length of Larissa > 7]sizably[else]modestly[end if]-hung owner to take you.";
	if Cock Length of Larissa > ( ( Cunt Depth of Player * 2 ) + Cunt Tightness of Player + 2 ):			[super-big]
		say "     [possadj_cap of Larissa] [Cock Size Desc of Larissa] [LarissaCock] penis is too large [if Cunt Depth of Player >= 12]even [end if]for your [Cunt Size Desc of Player] pussy, so [subjpro of Larissa] satisfies [objpro of Larissa]self by rubbing [possadj of Larissa] maleness down against you, grinding it across your juicy folds[if Player is male], throbbing shaft[smn] and tauric backside[else] and tauric backside[end if][if Breast Size of Player > 0]. [subjpro_Cap of Larissa] moves [possadj of Larissa] hands to your breasts, cupping your [short Breast Size Desc of Player] bosom, caressing and teasing your breasts and nipples[end if]. Turning your head to the side, you press your lips to [PossPro of Larissa] in a kiss while moaning in pleasure while [subjpro of Larissa] works that [LarissaCock] manhood against you. You feel spurts of [possadj of Larissa] precum leak out onto you and kiss [objpro of Larissa] all the more excitedly.";
		say "     With [possadj of Larissa] orgasm approaching, [subjpro of Larissa] presses [possadj of Larissa] glans to your pussy and grinds hard against it, causing you to moan. [subjpro_Cap of Larissa] cums with a loud moan of release as [possadj of Larissa] [Larissaballs] send out their payload. While much of [possadj of Larissa] seed soaks your crotch, some blasts shoot into you[if Ball Size of Larissa >= 40]. This results in still a sizable amount of semen squirted into you[else if Ball Size of Player >= 5]. This results in quite a bit of semen still getting squirted into you[end if]. Feeling these spurts of [possadj of Larissa] hot semen splashing onto and into your cunt pushes you over the edge into orgasm as well[if Player is male]spraying your seed across the floor and [end if]adding your feminine juices to the sticky mess at your crotch. You both snuggle together while recovering from the powerful climax and, after a little more fun while cleaning each other up, head back out front.[if Ball Size of Larissa >= 20 or a random chance of 1 in 2 succeeds][impregchance][end if]";
	else if Cock Length of Larissa > ( Cunt Depth of Player + Cunt Tightness of Player + 2 ):			[large]
		say "     [possadj_cap of Larissa] [Cock Size Desc of Larissa] [LarissaCock] penis is quite large compared to your [Cunt Size Desc of Player] pussy, necessitating that [subjpro of Larissa] start slowly as [subjpro of Larissa] thrusts into those wet folds of yours, making a visible bump in your underbelly from having [possadj of Larissa] [Cock Size Desc of Larissa] rod stuffed in you[if Breast Size of Player > 0]. [subjpro_Cap of Larissa] moves [possadj of Larissa] hands to your breasts, cupping your [short Breast Size Desc of Player] bosom, caressing and teasing your breasts and nipples[end if]. Turning your head to the side, you press your lips to [PossPro of Larissa] in a kiss while moaning in pleasure while [subjpro of Larissa] works that [LarissaCock] manhood further into you. Once you've loosened up enough, you push back into her thrusts and urge [objpro of Larissa] to fuck you faster and harder between kisses.";
		say "     With [possadj of Larissa] orgasm approaching, [subjpro of Larissa] picks up the pace and pounds away at you with increasing zeal, [possadj of Larissa] [Larissaballs] slapping against you as you're pounded by the lustful taur. [subjpro_Cap of Larissa] pushes as deep as [subjpro of Larissa] can into you, bulging your belly with [possadj of Larissa] cock as [subjpro of Larissa] unleashes [possadj of Larissa] hot load[if Ball Size of Larissa >= ( ( scalevalue of Player + 1 ) * 10 )]. [possadj_cap of Larissa] enormous output causes your [BodyType of Player] belly to swell greatly, becoming bloated with [possadj of Larissa] seed. You are left full and leaking [possadj of Larissa] cum for quite some time after [subjpro of Larissa][']s done. When you finally drain or absorb enough to stagger out to the front lobby, you find [objpro of Larissa] sitting at [possadj of Larissa] desk with a smug look on [possadj of Larissa] [LarissaFace] face[else if Ball Size of Player >= ( ( ScaleValue of Larissa + 1 ) * 5 )]. [possadj_cap of Larissa] heavy output causes your [BodyType of Player] belly to swell further, leaving you with a prominent bulge of cum when you stagger back to the front lobby[else if Ball Size of Player >= ( ( ( ScaleValue of Larissa + 1 ) * 5 ) / 2 )]. [possadj_cap of Larissa] large output leaves your [BodyType of Player] belly full and leaking [possadj of Larissa] cum when you head back to the front lobby[else]. After [subjpro of Larissa][']s done, Larissa heads back to [possadj of Larissa] desk with a contented smile on [possadj of Larissa] [LarissaFace] face[end if].[impregchance][if Ball Size of Larissa >= 20 and a random chance of 1 in 2 succeeds][impregchance][end if]";
	else if Cock Length of Larissa < ( ( Cunt Depth of Player + Cunt Tightness of Player + 1 ) / 3 ):		[small]
		say "     [possadj_cap of Larissa] [Cock Size Desc of Larissa] [LarissaCock] is quite small compared to your [Cunt Size Desc of Player] pussy, letting [objpro of Larissa] thrust into you easily, but provides limited stimulation for you. To alleviate this, [subjpro of Larissa] rides you all the harder while manhandling your upper body, getting you to moan in pleasure[if Breast Size of Player > 0]. [subjpro_Cap of Larissa] moves [possadj of Larissa] [LarissaHandForm]s to your breasts, cupping your [short Breast Size Desc of Player] bosom, caressing and teasing your breasts and nipples[end if]. You put your arms around [PossPro of Larissa] and tilt your head back to kiss her lustfully on the [LarissaMouth]. As [subjpro of Larissa] fucks you, you push back into her thrusts and urge [objpro of Larissa] to fuck you faster and harder between kisses.";
		say "     With [possadj of Larissa] orgasm approaching, [subjpro of Larissa] picks up the pace and pounds away at you with increasing zeal, [possadj of Larissa] [Larissaballs] slapping against you as you're pounded by the lustful taur. [subjpro_Cap of Larissa] pushes [possadj of Larissa] [LarissaCock] cock fully into you and unleashes [possadj of Larissa] hot load[if Ball Size of Larissa >= ( ( scalevalue of Player + 1 ) * 10 )]. [possadj_cap of Larissa] enormous output causes your [BodyType of Player] belly to swell greatly, becoming bloated with [possadj of Larissa] seed. You are left full and leaking [possadj of Larissa] cum for quite some time after [subjpro of Larissa][']s done. When you finally drain or absorb enough to stagger out to the front lobby, you find [objpro of Larissa] sitting at [possadj of Larissa] desk with a smug look on [possadj of Larissa] [LarissaFace] face[else if Ball Size of Player >= ( ( ScaleValue of Larissa + 1 ) * 5 )]. [possadj_cap of Larissa] heavy output causes your [BodyType of Player] belly to swell further, leaving you with a prominent bulge of cum when you stagger back to the front lobby[else if Ball Size of Player >= ( ( ( ScaleValue of Larissa + 1 ) * 5 ) / 2 )]. [possadj_cap of Larissa] large output leaves your [BodyType of Player] belly full and leaking [possadj of Larissa] cum when you head back to the front lobby[else]. After [subjpro of Larissa][']s done, Larissa heads back to [possadj of Larissa] desk with a contented smile on [possadj of Larissa] [LarissaFace] face[end if].[impregchance][if Ball Size of Larissa >= 20 and a random chance of 1 in 2 succeeds][impregchance][end if]";
	else:		[compatible size - normal]
		say "     [subjpro_Cap of Larissa] slides [possadj of Larissa] [Cock Size Desc of Larissa] [LarissaCock] penis into your [Cunt Size Desc of Player] pussy, enjoying the wonderful sensation of you squeezing down around [possadj of Larissa] maleness[if Breast Size of Player > 0]. [subjpro_Cap of Larissa] moves [possadj of Larissa] [LarissaHandForm]s to your breasts, cupping your [short Breast Size Desc of Player] bosom, caressing and teasing your breasts and nipples[end if]. You put your arms around [PossPro of Larissa] and tilt your head back to kiss her lustfully on the [LarissaMouth]. As [subjpro of Larissa] fucks you, you push back into her thrusts and urge [objpro of Larissa] to fuck you faster and harder between kisses.";
		say "     With [possadj of Larissa] orgasm approaching, [subjpro of Larissa] picks up the pace and pounds away at you with increasing zeal, [possadj of Larissa] [Larissaballs] slapping against you as you're pounded by the lustful taur. [subjpro_Cap of Larissa] pushes [possadj of Larissa] [LarissaCock] cock fully into you and unleashes [possadj of Larissa] hot load[if Ball Size of Larissa >= ( ( scalevalue of Player + 1 ) * 10 )]. [possadj_cap of Larissa] enormous output causes your [BodyType of Player] belly to swell greatly, becoming bloated with [possadj of Larissa] seed. You are left full and leaking [possadj of Larissa] cum for quite some time after [subjpro of Larissa][']s done. When you finally drain or absorb enough to stagger out to the front lobby, you find [objpro of Larissa] sitting at [possadj of Larissa] desk with a smug look on [possadj of Larissa] [LarissaFace] face[else if Ball Size of Player >= ( ( ScaleValue of Larissa + 1 ) * 5 )]. [possadj_cap of Larissa] heavy output causes your [BodyType of Player] belly to swell further, leaving you with a prominent bulge of cum when you stagger back to the front lobby[else if Ball Size of Player >= ( ( ( ScaleValue of Larissa + 1 ) * 5 ) / 2 )]. [possadj_cap of Larissa] large output leaves your [BodyType of Player] belly full and leaking [possadj of Larissa] cum when you head back to the front lobby[else]. After [subjpro of Larissa][']s done, Larissa heads back to [possadj of Larissa] desk with a contented smile on [possadj of Larissa] [LarissaFace] face[end if].[impregchance][if Ball Size of Larissa >= 20 and a random chance of 1 in 2 succeeds][impregchance][end if]";
	if baby is 0 and gestation of Child is not 0 and Larfound is 0:
		now FaceName of Child is LarissaInfName;
		now BodyName of Child is LarissaInfName;
		now SkinName of Child is LarissaInfName;


[-----------------------------------------------------------------------------------------------------]


Section 5 - Transformation Mechanics

Part 0 - Variables

LarissaBody is a text that varies. LarissaBody is usually "charmingly human".
LarissaSkin is a text that varies. LarissaSkin is usually "evenly tanned skin".
LarissaCock is a text that varies. LarissaCock is usually "[one of]normal[or]human[or]pink[at random]".
LarissaFace is a text that varies. LarissaFace is usually "pretty and human".
LarissaTail is a text that varies. LarissaTail is usually "".
LarissaTailed is a truth state that varies. LarissaTailed is usually false.
LarissaWinged is a truth state that varies. LarissaWinged is usually false.
LarissaInfName is a text that varies. LarissaInfName is usually "human".
LarissaForm is a text that varies. LarissaForm is usually "human".
LarissaHandForm is a text that varies. LarissaHandForm is usually "hand".
LarissaFootForm is a text that varies. LarissaFootForm is usually "foot".
LarissaMouth is a text that varies. LarissaMouth is usually "mouth".
LarissaTFText is a text that varies. LarissaTFText is usually "".
LarissaGeneralLook is a text that varies. LarissaGeneralLook is usually "cute".
LarissaBodyDesc is a text that varies. LarissaBodyDesc is usually "[one of]average[or]normal[or]unchanged[at random]".
LarissaBodyType is a text that varies. LarissaBodyType is usually "human".
Nipple Count of Larissa is usually 2.
Cunt Count of Larissa is usually 1.
Breast Size of Larissa is usually 4.
Cunt Depth of Larissa is usually 6.
Cunt Tightness of Larissa is usually 3.
LarissaBodycat is a number that varies.
LarissaLastTF is a number that varies. LarissaLastTF is normally 255.
LarissaOldgender is a number that varies. The LarissaOldgender is usually 2.
LarissTFcost is a number that varies. LarissTFcost is normally 50.

Part 2 - Transformation Dialog and Scene

Larissatfing is an action applying to nothing.
understand "Change Larissa" as Larissatfing.
understand "Transform Larissa" as Larissatfing.
understand "TF Larissa" as Larissatfing.

Larissa_possible_forms is a list of text that varies.[@Tag:NotSaved]
Larissa_possible_forms_furry is a list of text that varies.[@Tag:NotSaved]		[Infections contained within the 'furry' flag]
Larissa_possible_forms_guy is a list of text that varies.[@Tag:NotSaved]			[Infections contained within the 'guy' flag]
Larissa_possible_forms_girl is a list of text that varies.[@Tag:NotSaved]		[Infections contained within the 'girl' flag]
Larissa_possible_forms_herm is a list of text that varies.[@Tag:NotSaved]		[Infections contained within the 'hermaphrodite' flag]
Larissa_possible_forms_hellspawn is a list of text that varies.[@Tag:NotSaved]		[Infections contained within the 'hellspawn' flag]
Larissa_possible_forms_humorous is a list of text that varies.[@Tag:NotSaved]		[Infections contained within the 'humorous' flag]

when play begins:
	add { "Panda", "Husky Alpha", "German Shepherd Male", "Tigress Hooker", "Teddy Bear", "Mammoth", "Red Kangaroo", "Panther Taur", "Bald Eagle" } to Larissa_possible_forms_furry;
	add { "Panda", "Teddy Bear", "Latex Mistress", "Red Kangaroo", "Succubus", "Goo Girl", "Centaur Mare" } to Larissa_possible_forms_girl;
	add { "Husky Alpha", "German Shepherd Male", "Naga", "Bald Eagle" } to Larissa_possible_forms_guy;
	add { "Tigress Hooker", "Mammoth", "Panther Taur", "Dark Elf" } to Larissa_possible_forms_herm;
	add { "Succubus" } to Larissa_possible_forms_hellspawn;

this is the larissa_tfoption rule:
	if FurryList is not banned, add Larissa_possible_forms_furry to Larissa_possible_forms, if absent;
	if MaleList is not banned, add Larissa_possible_forms_guy to Larissa_possible_forms, if absent;
	if FemaleList is not banned, add Larissa_possible_forms_girl to Larissa_possible_forms, if absent;
	if HermList is not banned, add Larissa_possible_forms_herm to Larissa_possible_forms, if absent;
	if DemonList is not banned, add Larissa_possible_forms_hellspawn to Larissa_possible_forms, if absent;
	if HumorousList is not banned, add Larissa_possible_forms_humorous to Larissa_possible_forms, if absent;
	if FurryList is banned, remove Larissa_possible_forms_furry from Larissa_possible_forms;
	if MaleList is banned, remove Larissa_possible_forms_guy from Larissa_possible_forms;
	if FemaleList is banned, remove Larissa_possible_forms_girl from Larissa_possible_forms;
	if HermList is banned, remove Larissa_possible_forms_herm from Larissa_possible_forms;
	if DemonList is banned, remove Larissa_possible_forms_hellspawn from Larissa_possible_forms;
	if HumorousList is banned, remove Larissa_possible_forms_humorous from Larissa_possible_forms;
	[Adds each list only if it is permitted. Removal also required because elements will be present multiple times.]

check Larissatfing:
	if HP of Larissa is 0, say "I don't know what you're talking about." instead;
	If Larissa is not visible, say "I don't see [objpro of Larissa] around." instead;

carry out Larissatfing:
	now calcnumber is -1;
	follow the larissa_tfoption rule;
	if HP of Larissa is 1:
		say "     'I've been noticing all the interesting new creatures and forms out there that our various agents and researchers have been documenting. It's had me wondering if I might want to try out a new look. You know, a bit of a test drive before I settle on the new me,' she says quietly. Liking where this is going, you lean in a little closer. 'While a lot of samples come through here, I can't really snag them for myself. They're all logged in the inventory. But you've proven to be quite helpful and I thought you might want help me out,' she says with a sexy smile.";
		say "     'So to pull this off, I'd need you to snag some vial samples";
		if scenario is not "Researcher" and nanitemeter is 0:
			say ", and for that you'll need to get one of the nanite collectors we have on sale here";
		say ". With a vial and some credits from you, I'll get a new bod.' You must make a face at the mention of money as well. 'Oh, now don't be like that. I'll need it to help with my expenses. I'll need to pay for a new id card, pay someone to watch my shift, get some new clothes... lots of stuff so we can set this up. You'll get to help me test drive it, so doesn't that sound worth it, hon";
		if scenario is not "Researcher" and nanitemeter is 0:
			say "?' She gives you a grin. 'I'll even arrange to give you a big discount on the nanite collector, letting you get it for the employee price. Just don't tell anyone,' she adds with a wink.";
			nanitecoll_discount;
		else:
			say "?'";
		WaitLineBreak;
		now HP of Larissa is 2;
	else if HP is 2:
		say "     'I'm still looking forward to changing into some sexy creatures so we can have even more fun together. I'll need a vial for the creature and [LarissTFcost] credits to cover the various expenses and to make sure someone will cover my shift while we put the new me through the paces,' she says with a wink.";
	else:
		say "     'I'm still interested in trying on some other forms. Be on the lookout for interesting creatures and snag a vial from them";
		if scenario is not "Researcher" and nanitemeter is 0:
			say ", and for that you'll need to get one of the nanite collectors we have on sale here";
		say ". With that and [LarissTFcost] credits to cover the expenses, we can have ourselves some fun,' she says with a wink.";
	say "     'Now, I've been making a list of the ones that I've found that would be particularly interesting. Just let me know if you'd like to have me give it a whirl,' [subjpro of Larissa] adds.";
	sort Larissa_possible_forms;
	repeat with y running from 1 to number of entries in Larissa_possible_forms:
		say "[link][y] - [entry y of Larissa_possible_forms][as][y][end link][line break]";
	say "[link]0 - ABORT![end link][line break]";
	while calcnumber < 0 or calcnumber > number of entries in Larissa_possible_forms:
		say "Choice? (0-[number of entries in Larissa_possible_forms])>";
		get a number;
	if calcnumber > 0 and calcnumber <= number of entries in Larissa_possible_forms:
		if entry calcnumber in Larissa_possible_forms is "Panda":
			say "[Larissaisnow-panda]";
		else if entry calcnumber in Larissa_possible_forms is "Husky Alpha":
			say "[Larissaisnow-alphahusky]";
		else if entry calcnumber in Larissa_possible_forms is "German Shepherd Male":
			say "[Larissaisnow-GSDmale]";
		else if entry calcnumber in Larissa_possible_forms is "Tigress Hooker":
			say "[Larissaisnow-tighooker]";
		else if entry calcnumber in Larissa_possible_forms is "Teddy Bear":
			say "[Larissaisnow-teddybear]";
		else if entry calcnumber in Larissa_possible_forms is "Latex Mistress":
			say "[Larissaisnow-latexmistress]";
		else if entry calcnumber in Larissa_possible_forms is "Naga":
			say "[Larissaisnow-naga]";
		else if entry calcnumber in Larissa_possible_forms is "Mammoth":
			say "[Larissaisnow-mammoth]";
		else if entry calcnumber in Larissa_possible_forms is "Red Kangaroo":
			say "[Larissaisnow-redkangaroo]";
		else if entry calcnumber in Larissa_possible_forms is "Panther Taur":
			say "[Larissaisnow-panthertaur]";
		else if entry calcnumber in Larissa_possible_forms is "Bald Eagle":
			say "[Larissaisnow-baldeagle]";
		else if entry calcnumber in Larissa_possible_forms is "Dark Elf":
			say "[Larissaisnow-darkelf]";
		else if entry calcnumber in Larissa_possible_forms is "Succubus":
			say "[Larissaisnow-succubus]";
		else if entry calcnumber in Larissa_possible_forms is "Goo Girl":
			say "[Larissaisnow-googirl]";
		else if entry calcnumber in Larissa_possible_forms is "Centaur Mare":
			say "[Larissaisnow-centaurmare]";
	else if calcnumber is 0:
		say "You decide against trying to transform Larissa at this time.";


to nanitecoll_discount:
	if scenario is not "Researcher" and nanitemeter is 0:
		repeat with y running from 1 to number of filled rows in table of Zephyr Goods:
			choose row y from table of Zephyr Goods;
			if Name entry is "nanite collector":
				now price entry is 240;
				break;

to say Larissa pre-tf:
	say "     Larissa takes the vial and debits the required credits with a grin. [subjpro_Cap of Larissa] seems quite excited at the prospect of transforming[if HP of Larissa > 2] again[end if]. After getting one of [possadj of Larissa] co-workers to cover the front desk for [objpro of Larissa], the [LarissaForm] leads you into the break room. Rather sparse, it does have a small cot available. Pulling off [possadj of Larissa] lab coat, she stretches out, showing off [possadj of Larissa] [LarissaBodyType] to you one last time before downing the vial in one big gulp.";
	if Cock Count of Larissa > 0 and Cunt Count of Larissa > 0:
		now LarissaOldgender is 3;
	else if Cock Count of Larissa > 0:
		now LarissaOldgender is 1;
	else if Cunt Count of Larissa > 0:
		now LarissaOldgender is 2;
	else:
		now LarissaOldgender is 0;


to say Larissa post-tf:
	say "     Larissa moans and licks [if LarissaOldgender > 1]her[else]his[end if] lips and takes a seat on the edge of the cot. As you watch, Larissa's body [LarissaTFText] as the [LarissaInfName] infection kicks in. As you watch, [if LarissaOldgender > 1]she[else]he[end if] gains [LarissaSkin] all over her new [if LarissaOldgender > 1]her[else]his[end if] [LarissaBodyType] form.";
	say "     [subjpro_Cap of Larissa] presses [possadj of Larissa] transformed [LarissaHandForm]s between [possadj of Larissa] legs and gropes [possadj of Larissa] changing crotch as ";
	if Cock Count of Larissa > 0:		[male/herm]
		say "[if LarissaOldgender is 1 or LarissaOldgender is 3][possadj of Larissa] shaft shifts and becomes a [Cock Size Desc of Larissa] [LarissaCock] cock[else][subjpro of Larissa] [one of]grows[or]gains[or]forms[at random] a [Cock Size Desc of Larissa] [LarissaCock] cock[end if][if Cunt Count of Larissa > 0] with a [Cunt Size Desc of Larissa] pussy waiting behind it[end if]. ";
	else if Cunt Count of Larissa > 0:	[female]
		say "[if LarissaOldgender is 1 or LarissaOldgender is 3][possadj of Larissa] shaft shrinks and eventually disappears entirely as [possadj of Larissa] wet [Cunt Size Desc of Larissa] pussy forms[else if LarissaOldgender is 2][subjpro of Larissa] fingers [possadj of Larissa] wet, dripping snatch as it changes in response to [possadj of Larissa] transformation to become a [Cunt Size Desc of Larissa] pussy[else][possadj of Larissa] bare groin forms a wet [Cunt Size Desc of Larissa] pussy[end if]. ";
	else:					[neuter]
		say "all signs of [possadj of Larissa] previous gender fade away, leaving [objpro of Larissa] with a bare, genderless groin. ";
	say "'Oh, this feels so good. Mmm... let's have some fun now,' [subjpro of Larissa] says, running [possadj of Larissa] paws over [possadj of Larissa] altered body wantonly while stepping forward to [possadj of Larissa] [LarissaBodyType] form against yours. It seems the excitement of transformation's gotten the [LarissaForm] eager to see just what [possadj of Larissa] new body is like.";
	WaitLineBreak;
	if Player is not neuter:
		say "[LarissaTFsex]";
		now lastfuck of Larissa is turns;
	else:
		say "     You get [objpro of Larissa] to lie back on the cot while you run your hands over [possadj of Larissa] new [LarissaForm] body. Still very aroused from her transformation, [subjpro of Larissa][']s soon moaning in pleasure as you help acquaint [objpro of Larissa] with [possadj of Larissa] body's changes[if Breast Size of Larissa > 0 and Nipple Count of Larissa > 2]. You bring your lips to [possadj of Larissa] bosom and start kissing [possadj of Larissa] numerous breasts and sucking on [possadj of Larissa] nipples[else if Breast Size of Larissa > 0]. You bring your lips to [possadj of Larissa] bosom and start kissing [possadj of Larissa] breasts and sucking on [possadj of Larissa] nipples[else]. You bring your lips to [possadj of Larissa] [LarissaMouth] and kiss [objpro of Larissa], welcoming [possadj of Larissa] [LarissaForm] tongue into your mouth.";
		if Cunt Count of Larissa > 0 and Cock Count of Larissa > 0:	[herm]
			say "     Meanwhile, your hands have made their way down to [possadj of Larissa] [Cock Size Desc of Larissa] [LarissaCock] cock and [Cunt Size Desc of Larissa] pussy. You slide your fingers over them both, stroking, pumping and fingering until she cums with a loud moan of delight[if Ball Size of Larissa >= 40]. [possadj_cap of Larissa] excessive load makes a considerable[else if Ball Size of Larissa >= 20]. Her large load makes a big[else]. [possadj_cap of Larissa] spurting shaft makes a sticky[end if] mess which you both have fun cleaning up before [subjpro of Larissa] heads back out front to show off [possadj of Larissa] new body to [possadj of Larissa] coworkers before returning to [possadj of Larissa] desk.";
		else if Cunt Count of Larissa > 0:				[female]
			say "     Meanwhile, your hand make their way down to [possadj of Larissa] [Cunt Size Desc of Larissa] [LarissaBodyType] pussy. You slide your fingers over dripping folds, pumping into them and fingering [objpro of Larissa] until [subjpro of Larissa] cums with a loud moan of delight[if Cunt Depth of Larissa + Cunt Tightness of Larissa >= 40]. [possadj_cap of Larissa] gushing juices soak both of your lower bodies in a tasty[else if Cunt Depth of Larissa + Cunt Tightness of Larissa >= 20]. [possadj_cap of Larissa] flowing juices soak [possadj of Larissa] crotch and your arm in a tasty[else]. [possadj_cap of Larissa] hot juices soak [possadj of Larissa] crotch as your hand in a tasty[end if] mess which you both have fun cleaning up before [subjpro of Larissa] heads back out front to show off [possadj of Larissa] new body to [possadj of Larissa] coworkers before returning to [possadj of Larissa] desk.";
		else if Cock Count of Larissa > 0:				[male]
			say "     Meanwhile, your hands have made their way down to [possadj of Larissa] [Cock Size Desc of Larissa] [LarissaCock] cock. You slide your fingers over it, stroking and pumping until [subjpro of Larissa] cums with a loud moan of delight[if Ball Size of Larissa >= 40]. [possadj_cap of Larissa] excessive load makes a considerable[else if Ball Size of Larissa >= 20]. [possadj_cap of Larissa] large load makes a big[else]. [possadj_cap of Larissa] spurting shaft makes a sticky[end if] mess which you both have fun cleaning up before [subjpro of Larissa] heads back out front to show off [possadj of Larissa] new body to [possadj of Larissa] coworkers before returning to [possadj of Larissa] desk.";
		else:								[neuter]
			say "***Neuter Larissa - no content.";


[	HP of Larissa	]
[ 0 = something		]
[ 1 = open for sex	]
[ 2 = explained tf	]
[ 3 = tf'd before		]
[ 4 = transformed		]

[	LarissaBodycat	]
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

to LarissaData (x - text):
	let found be 0;
	repeat with y running from 1 to number of filled rows in Table of Random Critters:
		choose row y from the Table of Random Critters;
		if Name entry is x:
			now found is 1;
			now MonsterID is y;
			now LarissaCock is cock entry;
			if Cock Count entry > 0:
				now Cock Count of Larissa is 1; [single equipment to keep things sane for now]
[				now Cock Count of Larissa is Cock Count entry;]
				now Cock Length of Larissa is Cock Length entry;
				now Ball Size of Larissa is Ball Size entry;
			else:
				now Cock Count of Larissa is 0;
				now Cock Length of Larissa is 0;
				now Ball Size of Larissa is 0;
			if Cunt Count entry > 0:
				now Cunt Count of Larissa is 1; [single equipment to keep things sane for now]
[				now Cunt Count of Larissa is Cunt Count entry;]
				now Cunt Depth of Larissa is Cunt Depth entry;
				now Cunt Tightness of Larissa is Cunt Tightness entry;
			else:
				now Cunt Count of Larissa is 0;
				now Cunt Depth of Larissa is 0;
				now Cunt Tightness of Larissa is 0;
			now Nipple Count of Larissa is Nipple Count entry;
			now Breast Size of Larissa is breast size entry;
			if Nipple Count of Larissa is 0, now Breast Size of Larissa is 0;
			if there is a scale in row MonsterID of the Table of Random Critters:
				now ScaleValue of Larissa is scale entry;
			else:
				now ScaleValue of Larissa is 3;
			if there is a body descriptor in row MonsterID of the Table of Random Critters:
				now LarissaBodyDesc is body descriptor entry;
			else:
				now LarissaBodyDesc is Name entry;
			if there is a type in row MonsterID of the Table of Random Critters:
				now LarissaBodyType is type entry;
			else:
				now LarissaBodyType is Name entry;
			if DayCycle entry is 2:
				now the SleepRhythm of Larissa is 2; [night-preferred]
			if DayCycle entry is 1:
				now the SleepRhythm of Larissa is 1; [day-preferred]
			else:
				now the SleepRhythm of Larissa is 0; [standard]
			break;
	if found is 0, say "Error - Creature [x] not found.";


to say Larissaisnow-panda:
	let goahead be 1;
	if LarissaInfName is "Panda":
		say "[subjpro_Cap of Larissa]'s already got that infection.";
		say "     [bold type]Do you wish to continue anyway?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if Player consents:
			let goahead be 1;
		else:
			let goahead be 0;
	if goahead is 1:
		if "Panda" is not listed in vials of Player:
			say "You don't have one of those vials to offer [objpro of Larissa].";
		else if freecred < LarissTFcost:
			say "You don't have enough credits right now.";
		else:
			deletevial "Panda";
			decrease freecred by LarissTFcost;
			say "[Larissa pre-tf]";
			LarissaData "Panda";
			now LarissaForm is "panda";
			now LarissaInfName is "Panda";
			now LarissaHandForm is "paw";
			now LarissaFootForm is "paw";
			now LarissaSkin is "black and white fur";
			now LarissaTail is "stubby tail";
			now LarissaTailed is true;
			now LarissaWinged is false;
			now LarissaFace is "cute panda";
			now LarissaMouth is "muzzle";
			now LarissaBody is "a plump and sexy panda";
			now LarissaTFText is "becomes rounder, plumping out into a round, pudgy figure";
			now LarissaGeneralLook is "[one of]sexy[or]cute[at random]";
			now LarissaBodycat is 0;
			now HP of Larissa is 4;
			follow the Larissa breastdesc rule;
			follow the Larissa cockdesc rule;
			follow the Larissa cuntdesc rule;
			say "[Larissa post-tf]";


to say Larissaisnow-alphahusky:
	let goahead be 1;
	if LarissaInfName is "Husky Alpha":
		say "[subjpro_Cap of Larissa]'s already got that infection.";
		say "     [bold type]Do you wish to continue anyway?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if Player consents:
			let goahead be 1;
		else:
			let goahead be 0;
	if goahead is 1:
		if "Husky Alpha" is not listed in vials of Player:
			say "You don't have one of those vials to offer [objpro of Larissa].";
		else if freecred < LarissTFcost:
			say "You don't have enough credits right now.";
		else:
			deletevial "Husky Alpha";
			decrease freecred by LarissTFcost;
			say "[Larissa pre-tf]";
			LarissaData "Husky Alpha";
			now Nipple Count of Larissa is 0;
			now Breast Size of Larissa is 0;
			now Cunt Count of Larissa is 0;
			now Cunt Depth of Larissa is 0;
			now Cunt Tightness of Larissa is 0;
			now LarissaBodyDesc is "[one of]altered[or]animalistic[at random]";
			now LarissaForm is "husky";
			now LarissaInfName is "Husky Alpha";
			now LarissaHandForm is "paw";
			now LarissaFootForm is "paw";
			now LarissaSkin is "fluffy gray and white fur";
			now LarissaTail is "curved tail";
			now LarissaTailed is true;
			now LarissaWinged is false;
			now LarissaFace is "strong husky";
			now LarissaMouth is "muzzle";
			now LarissaBody is "a strong and confident husky";
			now LarissaTFText is "becomes fit and strong with an air of confidence";
			now LarissaGeneralLook is "[one of]confident[or]sexy[or]cute[at random]";
			now LarissaBodycat is 0;
			now HP of Larissa is 4;
			follow the Larissa breastdesc rule;
			follow the Larissa cockdesc rule;
			follow the Larissa cuntdesc rule;
			say "[Larissa post-tf]";


to say Larissaisnow-GSDmale:
	let goahead be 1;
	if LarissaInfName is "German Shepherd Male":
		say "[subjpro_Cap of Larissa]'s already got that infection.";
		say "     [bold type]Do you wish to continue anyway?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if Player consents:
			let goahead be 1;
		else:
			let goahead be 0;
	if goahead is 1:
		if "German Shepherd Male" is not listed in vials of Player:
			say "You don't have one of those vials to offer [objpro of Larissa].";
		else if freecred < LarissTFcost:
			say "You don't have enough credits right now.";
		else:
			deletevial "German Shepherd Male";
			decrease freecred by LarissTFcost;
			say "[Larissa pre-tf]";
			LarissaData "German Shepherd Male";
			now Nipple Count of Larissa is 0;
			now Breast Size of Larissa is 0;
			now Cunt Count of Larissa is 0;
			now Cunt Depth of Larissa is 0;
			now Cunt Tightness of Larissa is 0;
			now LarissaForm is "German Shepherd Male";
			now LarissaInfName is "German Shepherd Male";
			now LarissaHandForm is "paw";
			now LarissaFootForm is "paw";
			now LarissaSkin is "glossy black and tan fur";
			now LarissaTail is "doggy tail";
			now LarissaTailed is true;
			now LarissaWinged is false;
			now LarissaFace is "canine";
			now LarissaMouth is "muzzle";
			now LarissaBody is "a humanoid dog";
			now LarissaTFText is "becomes that of an anthropomorphic German shepherd";
			now LarissaGeneralLook is "[one of]strong[or]sexy[or]attractive[at random]";
			now LarissaBodycat is 0;
			now HP of Larissa is 4;
			follow the Larissa breastdesc rule;
			follow the Larissa cockdesc rule;
			follow the Larissa cuntdesc rule;
			say "[Larissa post-tf]";


to say Larissaisnow-tighooker:
	let goahead be 1;
	if LarissaInfName is "Tigress Hooker":
		say "[subjpro_Cap of Larissa]'s already got that infection.";
		say "     [bold type]Do you wish to continue anyway?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if Player consents:
			let goahead be 1;
		else:
			let goahead be 0;
	if goahead is 1:
		if "Tigress Hooker" is not listed in vials of Player:
			say "You don't have one of those vials to offer [objpro of Larissa].";
		else if freecred < LarissTFcost:
			say "You don't have enough credits right now.";
		else:
			deletevial "Tigress Hooker";
			decrease freecred by LarissTFcost;
			say "[Larissa pre-tf]";
			LarissaData "Tigress Hooker";
			now LarissaForm is "[if Cunt Count of Larissa > 0]tigress[else]tiger[end if]";
			now LarissaInfName is "Tigress Hooker";
			now LarissaHandForm is "paw";
			now LarissaFootForm is "paw";
			now LarissaSkin is "white tiger fur";
			now LarissaTail is "striped tail";
			now LarissaTailed is true;
			now LarissaWinged is false;
			now LarissaFace is "feline";
			now LarissaMouth is "muzzle";
			now LarissaBody is "a sultry [if Cunt Count of Larissa > 0]tigress[else]tiger[end if]";
			now LarissaTFText is "becomes that of a sexy and alluring [if Cunt Count of Larissa > 0 and Cock Count of Larissa > 0]tigress herm[else if Cunt Count of Larissa > 0]tigress femme[else]tiger[end if]";
			now LarissaGeneralLook is "[one of]beautiful[or]sexy[or]attractive[or]hot[or]slutty[at random]";
			now LarissaBodycat is 0;
			now HP of Larissa is 4;
			follow the Larissa breastdesc rule;
			follow the Larissa cockdesc rule;
			follow the Larissa cuntdesc rule;
			say "[Larissa post-tf]";


to say Larissaisnow-teddybear:
	let goahead be 1;
	if LarissaInfName is "Teddy Bear":
		say "[subjpro_Cap of Larissa]'s already got that infection.";
		say "     [bold type]Do you wish to continue anyway?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if Player consents:
			let goahead be 1;
		else:
			let goahead be 0;
	if goahead is 1:
		if "Teddy Bear" is not listed in vials of Player:
			say "You don't have one of those vials to offer [objpro of Larissa].";
		else if freecred < LarissTFcost:
			say "You don't have enough credits right now.";
		else:
			deletevial "Teddy Bear";
			decrease freecred by LarissTFcost;
			say "[Larissa pre-tf]";
			LarissaData "Teddy Bear";
			now LarissaForm is "teddy bear";
			now LarissaInfName is "Teddy Bear";
			now LarissaHandForm is "padded paw";
			now LarissaFootForm is "padded paw";
			now LarissaSkin is "plush brown fur";
			now LarissaTail is "tail puff";
			now LarissaTailed is true;
			now LarissaWinged is false;
			now LarissaFace is "plush bear";
			now LarissaMouth is "muzzle";
			now LarissaBody is "a cute and cuddly teddy bear";
			now LarissaTFText is "becomes plump with soft stuffing as she becomes a cute teddy bear";
			now LarissaGeneralLook is "[one of]soft[or]huggable[or]cute[at random]";
			now LarissaBodycat is 0;
			now HP of Larissa is 4;
			follow the Larissa breastdesc rule;
			follow the Larissa cockdesc rule;
			follow the Larissa cuntdesc rule;
			say "[Larissa post-tf]";


to say Larissaisnow-latexmistress:
	let goahead be 1;
	if LarissaInfName is "Latex Mistress":
		say "[subjpro_Cap of Larissa]'s already got that infection.";
		say "     [bold type]Do you wish to continue anyway?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if Player consents:
			let goahead be 1;
		else:
			let goahead be 0;
	if goahead is 1:
		if "Latex Mistress" is not listed in vials of Player:
			say "You don't have one of those vials to offer [objpro of Larissa].";
		else if freecred < LarissTFcost:
			say "You don't have enough credits right now.";
		else:
			deletevial "Latex Mistress";
			decrease freecred by LarissTFcost;
			say "[Larissa pre-tf]";
			LarissaData "Latex Mistress";
			now LarissaForm is "leather-clad human";
			now LarissaInfName is "Latex Mistress";
			now LarissaHandForm is "gloved hand";
			now LarissaFootForm is "booted foot";
			now LarissaSkin is "latex skin-suit";
			now LarissaTail is "";
			now LarissaTailed is false;
			now LarissaWinged is false;
			now LarissaFace is "masked";
			now LarissaMouth is "mouth";
			now LarissaBody is "a latex-bound [if Cunt Count of Larissa > 0]woman[else]man[end if]";
			now LarissaTFText is "gets coated in a layer of black latex which forms over [possadj of Larissa] human body";
			now LarissaGeneralLook is "[one of]impressive[or]sexy[or]tough[or]kinky[at random]";
			now LarissaBodycat is 0;
			now HP of Larissa is 4;
			follow the Larissa breastdesc rule;
			follow the Larissa cockdesc rule;
			follow the Larissa cuntdesc rule;
			say "[Larissa post-tf]";


to say Larissaisnow-naga:
	let goahead be 1;
	if LarissaInfName is "Naga":
		say "[subjpro_Cap of Larissa]'s already got that infection.";
		say "     [bold type]Do you wish to continue anyway?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if Player consents:
			let goahead be 1;
		else:
			let goahead be 0;
	if goahead is 1:
		if "Naga" is not listed in vials of Player:
			say "You don't have one of those vials to offer [objpro of Larissa].";
		else if freecred < LarissTFcost:
			say "You don't have enough credits right now.";
		else:
			deletevial "Naga";
			decrease freecred by LarissTFcost;
			say "[Larissa pre-tf]";
			LarissaData "Naga";
			now LarissaForm is "snake-bodied naga";
			now LarissaInfName is "Naga";
			now LarissaHandForm is "hand";
			now LarissaFootForm is "snake tail";
			now LarissaSkin is "green and yellow scaled skin";
			now LarissaTail is "coiled tail";
			now LarissaTailed is true;
			now LarissaWinged is false;
			now LarissaFace is "serpent";
			now LarissaMouth is "maw";
			now LarissaBody is "a long and flexible naga";
			now LarissaTFText is "gains a human upper body, but with [possadj of Larissa] lower half melded into a snake's tail";
			now LarissaGeneralLook is "[one of]impressive[or]sexy[or]imposing[or]wild[at random]";
			now LarissaBodycat is 3;
			now HP of Larissa is 4;
			follow the Larissa breastdesc rule;
			follow the Larissa cockdesc rule;
			follow the Larissa cuntdesc rule;
			say "[Larissa post-tf]";


to say Larissaisnow-mammoth:
	let goahead be 1;
	if LarissaInfName is "Mammoth":
		say "[subjpro_Cap of Larissa]'s already got that infection.";
		say "     [bold type]Do you wish to continue anyway?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if Player consents:
			let goahead be 1;
		else:
			let goahead be 0;
	if goahead is 1:
		if "Mammoth" is not listed in vials of Player:
			say "You don't have one of those vials to offer [objpro of Larissa].";
		else if freecred < LarissTFcost:
			say "You don't have enough credits right now.";
		else:
			deletevial "Mammoth";
			decrease freecred by LarissTFcost;
			say "[Larissa pre-tf]";
			LarissaData "Mammoth";
			now LarissaForm is "woolly mammoth";
			now LarissaInfName is "Mammoth";
			now LarissaHandForm is "meaty hand";
			now LarissaFootForm is "heavy foot";
			now LarissaSkin is "shaggy brown fur";
			now LarissaTail is "short, thin tail";
			now LarissaTailed is true;
			now LarissaWinged is false;
			now LarissaFace is "elephantine";
			now LarissaMouth is "mouth";
			now LarissaBody is "a burly mammoth";
			now LarissaTFText is "becomes quite large and stocky, strong enough to carry [possadj of Larissa] swelling endowments";
			now LarissaGeneralLook is "[one of]impressive[or]powerful[or]imposing[or]primitive[or]mighty[or]massive[at random]";
			now LarissaBodycat is 0;
			now HP of Larissa is 4;
			follow the Larissa breastdesc rule;
			follow the Larissa cockdesc rule;
			follow the Larissa cuntdesc rule;
			say "[Larissa post-tf]";


to say Larissaisnow-redkangaroo:
	let goahead be 1;
	if LarissaInfName is "Red Kangaroo":
		say "[subjpro_Cap of Larissa]'s already got that infection.";
		say "     [bold type]Do you wish to continue anyway?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if Player consents:
			let goahead be 1;
		else:
			let goahead be 0;
	if goahead is 1:
		if "Red Kangaroo" is not listed in vials of Player:
			say "You don't have one of those vials to offer [objpro of Larissa].";
		else if freecred < LarissTFcost:
			say "You don't have enough credits right now.";
		else:
			deletevial "Red Kangaroo";
			decrease freecred by LarissTFcost;
			say "[Larissa pre-tf]";
			LarissaData "Red Kangaroo";
			now LarissaForm is "kangaroo";
			now LarissaInfName is "Red Kangaroo";
			now LarissaHandForm is "small paw";
			now LarissaFootForm is "elongated foot";
			now LarissaSkin is "russet fur";
			now LarissaTail is "thick, meaty tail";
			now LarissaTailed is true;
			now LarissaWinged is false;
			now LarissaFace is "[']roo";
			now LarissaMouth is "muzzle";
			now LarissaBody is "a wide-hipped kangaroo";
			now LarissaTFText is "gains wide, muscled hips and legs along with a marsupial pouch";
			now LarissaGeneralLook is "[one of]sexy[or]impressive[or]bouncy[at random]";
			now LarissaBodycat is 0;
			now HP of Larissa is 4;
			now Cock Count of Larissa is 0;
			now Cock Length of Larissa is 0;
			now Ball Size of Larissa is 0;
			follow the Larissa breastdesc rule;
			follow the Larissa cockdesc rule;
			follow the Larissa cuntdesc rule;
			say "[Larissa post-tf]";


to say Larissaisnow-panthertaur:
	let goahead be 1;
	if LarissaInfName is "Panther Taur":
		say "[subjpro_Cap of Larissa]'s already got that infection.";
		say "     [bold type]Do you wish to continue anyway?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if Player consents:
			let goahead be 1;
		else:
			let goahead be 0;
	if goahead is 1:
		if "Panther Taur" is not listed in vials of Player:
			say "You don't have one of those vials to offer [objpro of Larissa].";
		else if freecred < LarissTFcost:
			say "You don't have enough credits right now.";
		else:
			deletevial "Panther Taur";
			decrease freecred by LarissTFcost;
			say "[Larissa pre-tf]";
			LarissaData "Panther Taur";
			now LarissaForm is "panther";
			now LarissaInfName is "Panther Taur";
			now LarissaHandForm is "clawed paw";
			now LarissaFootForm is "padded paw";
			now LarissaSkin is "midnight black fur";
			now LarissaTail is "feline tail";
			now LarissaTailed is true;
			now LarissaWinged is false;
			now LarissaFace is "feline";
			now LarissaMouth is "muzzle";
			now LarissaBody is "a tauric panther";
			now LarissaTFText is "gains four feline paws to support [possadj of Larissa] tauric body and impressive endowments";
			now LarissaGeneralLook is "[one of]alluring[or]imposing[or]powerful[or]graceful[or]sexy[at random]";
			now LarissaBodycat is 2;
			now HP of Larissa is 4;
			follow the Larissa breastdesc rule;
			follow the Larissa cockdesc rule;
			follow the Larissa cuntdesc rule;
			say "[Larissa post-tf]";


to say Larissaisnow-baldeagle:
	let goahead be 1;
	if LarissaInfName is "Bald Eagle":
		say "[subjpro_Cap of Larissa]'s already got that infection.";
		say "     [bold type]Do you wish to continue anyway?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if Player consents:
			let goahead be 1;
		else:
			let goahead be 0;
	if goahead is 1:
		if "Bald Eagle" is not listed in vials of Player:
			say "You don't have one of those vials to offer [objpro of Larissa].";
		else if freecred < LarissTFcost:
			say "You don't have enough credits right now.";
		else:
			deletevial "Bald Eagle";
			decrease freecred by LarissTFcost;
			say "[Larissa pre-tf]";
			LarissaData "Bald Eagle";
			now LarissaForm is "eagle";
			now LarissaInfName is "Bald Eagle";
			now LarissaHandForm is "small talon";
			now LarissaFootForm is "sharp talon";
			now LarissaSkin is "brown feathers";
			now LarissaTail is "feathered tail";
			now LarissaTailed is true;
			now LarissaWinged is true;
			now LarissaFace is "avian";
			now LarissaMouth is "beak";
			now LarissaBody is "a humanoid eagle";
			now LarissaTFText is "becomes partially avian with winged arms and taloned feat";
			now LarissaGeneralLook is "[one of]powerful[or]impressive[or]noble[or]graceful[at random]";
			now LarissaBodycat is 0;
			now HP of Larissa is 4;
			now Cunt Count of Larissa is 0;
			now Cunt Depth of Larissa is 0;
			now Cunt Tightness of Larissa is 0;
			now Nipple Count of Larissa is 0;
			now Breast Size of Larissa is 0;
			follow the Larissa breastdesc rule;
			follow the Larissa cockdesc rule;
			follow the Larissa cuntdesc rule;
			say "[Larissa post-tf]";


to say Larissaisnow-darkelf:
	let goahead be 1;
	if LarissaInfName is "Dark Elf":
		say "[subjpro_Cap of Larissa]'s already got that infection.";
		say "     [bold type]Do you wish to continue anyway?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if Player consents:
			let goahead be 1;
		else:
			let goahead be 0;
	if goahead is 1:
		if "Dark Elf" is not listed in vials of Player:
			say "You don't have one of those vials to offer [objpro of Larissa].";
		else if freecred < LarissTFcost:
			say "You don't have enough credits right now.";
		else:
			deletevial "Dark Elf";
			decrease freecred by LarissTFcost;
			say "[Larissa pre-tf]";
			LarissaData "Dark Elf";
			now LarissaForm is "elf";
			now LarissaInfName is "Dark Elf";
			now LarissaHandForm is "nimble hand";
			now LarissaFootForm is "petite foot";
			now LarissaSkin is "black skin";
			now LarissaTail is "";
			now LarissaTailed is false;
			now LarissaWinged is false;
			now LarissaFace is "elfin";
			now LarissaMouth is "mouth";
			now LarissaBody is "a drow elf";
			now LarissaTFText is "becomes human-like, but shorter, more slender and sexier";
			now LarissaGeneralLook is "[one of]sexy[or]alluring[or]exotic[or]sultry[or]hot[at random]";
			now LarissaBodycat is 0;
			now HP of Larissa is 4;
			follow the Larissa breastdesc rule;
			follow the Larissa cockdesc rule;
			follow the Larissa cuntdesc rule;
			say "[Larissa post-tf]";


to say Larissaisnow-succubus:
	let goahead be 1;
	if LarissaInfName is "Succubus":
		say "[subjpro_Cap of Larissa]'s already got that infection.";
		say "     [bold type]Do you wish to continue anyway?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if Player consents:
			let goahead be 1;
		else:
			let goahead be 0;
	if goahead is 1:
		if "Succubus" is not listed in vials of Player:
			say "You don't have one of those vials to offer [objpro of Larissa].";
		else if freecred < LarissTFcost:
			say "You don't have enough credits right now.";
		else:
			deletevial "Succubus";
			decrease freecred by LarissTFcost;
			say "[Larissa pre-tf]";
			LarissaData "Succubus";
			now LarissaForm is "succubus";
			now LarissaInfName is "Succubus";
			now LarissaHandForm is "long-nailed hand";
			now LarissaFootForm is "dainty foot";
			now LarissaSkin is "flawless skin";
			now LarissaTail is "";
			now LarissaTailed is false;
			now LarissaWinged is true;
			now LarissaFace is "horned human";
			now LarissaMouth is "mouth";
			now LarissaBody is "a tempting succubus";
			now LarissaTFText is "grows a pair of bat-like wings as [subjpro of Larissa] becomes a sexier version of [possadj of Larissa] human self";
			now LarissaGeneralLook is "[one of]tempting[or]sultry[or]naughty[or]sexy[at random]";
			now LarissaBodycat is 0;
			now HP of Larissa is 4;
			follow the Larissa breastdesc rule;
			follow the Larissa cockdesc rule;
			follow the Larissa cuntdesc rule;
			say "[Larissa post-tf]";


to say Larissaisnow-googirl:
	let goahead be 1;
	if LarissaInfName is "Goo Girl":
		say "[subjpro_Cap of Larissa]'s already got that infection.";
		say "     [bold type]Do you wish to continue anyway?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if Player consents:
			let goahead be 1;
		else:
			let goahead be 0;
	if goahead is 1:
		if "Goo Girl" is not listed in vials of Player:
			say "You don't have one of those vials to offer [objpro of Larissa].";
		else if freecred < LarissTFcost:
			say "You don't have enough credits right now.";
		else:
			deletevial "Goo Girl";
			decrease freecred by LarissTFcost;
			say "[Larissa pre-tf]";
			LarissaData "Goo Girl";
			now LarissaForm is "slime girl";
			now LarissaInfName is "Goo Girl";
			now LarissaHandForm is "flexible hand";
			now LarissaFootForm is "column of goo";
			now LarissaSkin is "translucent [one of]green[or]red[or]blue[or]purple[sticky random] gel";
			now LarissaTail is "";
			now LarissaTailed is false;
			now LarissaWinged is false;
			now LarissaFace is "smiling girly";
			now LarissaMouth is "mouth";
			now LarissaBody is "a girl made of colorful goo";
			now LarissaTFText is "loses her legs as they fuse into a shifting column of slime";
			now LarissaGeneralLook is "[one of]gooey[or]cute[or]jiggly[or]pretty[or]sexy[at random]";
			now LarissaBodycat is 3;
			now HP of Larissa is 4;
			follow the Larissa breastdesc rule;
			follow the Larissa cockdesc rule;
			follow the Larissa cuntdesc rule;
			say "[Larissa post-tf]";


to say Larissaisnow-centaurmare:
	let goahead be 1;
	if LarissaInfName is "Centaur Mare":
		say "[subjpro_Cap of Larissa]'s already got that infection.";
		say "     [bold type]Do you wish to continue anyway?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if Player consents:
			let goahead be 1;
		else:
			let goahead be 0;
	if goahead is 1:
		if "Centaur Mare" is not listed in vials of Player:
			say "You don't have one of those vials to offer [objpro of Larissa].";
		else if freecred < LarissTFcost:
			say "You don't have enough credits right now.";
		else:
			deletevial "Centaur Mare";
			decrease freecred by LarissTFcost;
			say "[Larissa pre-tf]";
			LarissaData "Centaur Mare";
			now LarissaForm is "centaur";
			now LarissaInfName is "Centaur Mare";
			now LarissaHandForm is "hand";
			now LarissaFootForm is "hoof";
			now LarissaSkin is "tan skin and a brown coat";
			now LarissaTail is "equine tail";
			now LarissaTailed is true;
			now LarissaWinged is false;
			now LarissaFace is "[one of]centaur[or]human-like[or]pointy-eared human[at random]";
			now LarissaMouth is "mouth";
			now LarissaBody is "a strong, female centaur";
			now LarissaTFText is "has her lower body shift and stretch until she has an equine body below her waist";
			now LarissaGeneralLook is "[one of]athletic[or]sexy[or]pretty[or]exotic[at random]";
			now LarissaBodycat is 2;
			now HP of Larissa is 4;
			follow the Larissa breastdesc rule;
			follow the Larissa cockdesc rule;
			follow the Larissa cuntdesc rule;
			say "[Larissa post-tf]";


[	HP of Larissa	]
[ 0 = something		]
[ 1 = open for sex	]
[ 2 = explained tf	]
[ 3 = tf'd before		]
[ 4 = transformed		]


[	LarissaBodycat	]
[ 0 = humanoid	]
[ 1 = quadrupedal	]
[ 2 = tauric	]
[ 3 = legless	]


Part 4 - Size Evaluations

This is the Larissa breastdesc rule:
	if Breast Size of Larissa < 1:
		now descr is "[one of]nonexistent[or]entirely flat[or]manly[at random]";
	else if Breast Size of Larissa < 3:
		now descr is "[one of]palmable[or]small[or]dainty[or]slender[or]perky[at random] [character number Breast Size of Larissa in cupsize] cup";
	else if Breast Size of Larissa < 5:
		now descr is "[character number Breast Size of Larissa in cupsize] cup";
	else if Breast Size of Larissa < 7:
		now descr is "[one of]large[or]jiggling[or]well-shaped[or]plump[at random] [character number Breast Size of Larissa in cupsize] cup";
	else if Breast Size of Larissa < 9:
		now descr is "[one of]massive[or]huge[or]heavy[at random] [character number Breast Size of Larissa in cupsize] cup";
	else if Breast Size of Larissa < 12:
		now descr is "[one of]enormous[or]giant[or]hulking[or]head-sized[or]basketball-sized[at random] [character number Breast Size of Larissa in cupsize] cup";
	else:
		now descr is "[one of]gargantuan[or]beachball-sized[or]mountainous[or]colossal[or]gigantic[at random] [character number Breast Size of Larissa in cupsize] cup";
	now Breast Size Desc of Larissa is descr;
	rule succeeds;

This is the Larissa cockdesc rule:
	if Cock Length of Larissa < 3:
		now descr is "[one of]tiny[or]very small[or]puny[at random]";
	else if Cock Length of Larissa < 6:
		now descr is "[one of]smaller than average[or]small[or]below average[at random]";
	else if Cock Length of Larissa < 8:
		now descr is "[one of]average in size[or]normal-sized[at random]";
	else if Cock Length of Larissa < 12:
		now descr is "[one of]large[or]sizable[or]well-built[or]longer than average[at random]";
	else if Cock Length of Larissa is 12:
		now descr is "foot long";
	else if Cock Length of Larissa < 18:
		now descr is "[one of]huge[or]heavy[or]ponderous[or]massive[or]forearm length[at random]";
	else if Cock Length of Larissa < 25:
		now descr is "[one of]giant[or]hulking[or]hypertrophied[or]elephantine[or]monstrous[at random]";
	else:
		now descr is "[one of]mammoth[or]gigantic[or]colossal[or]titanic[or]third leg[at random]";
	now Cock Size Desc of Larissa is descr;
	rule succeeds;

This is the Larissa cuntdesc rule:
	if Cunt Depth of Larissa < 3:
		now descr is "[one of]infantile[or]extremely small[or]puny[at random]";
	else if Cunt Depth of Larissa < 6:
		now descr is "[one of]smaller than average[or]small[or]below average[at random]";
	else if Cunt Depth of Larissa < 8:
		now descr is "[one of]average[or]normal-sized[at random]";
	else if Cunt Depth of Larissa < 12:
		now descr is "[one of]large[or]thick lipped[or]above average[at random]";
	else if Cunt Depth of Larissa < 18:
		now descr is "[one of]belly bulgingly huge[or]inhumanly deep[or]forearm length[at random]";
	else if Cunt Depth of Larissa < 25:
		now descr is "[one of]titanic[or]astonishingly deep[or]elephantine[at random]";
	else:
		now descr is "[one of]cavernous[or]seemingly bottomless[or]canyonlike[at random]";
	now Cunt Size Desc of Larissa is descr;
	rule succeeds;


Part 5 - Testing (not for release)

Larissatesting is an action applying to nothing.
understand "Larissatest" as Larissatesting.

carry out Larissatesting:
	[cock/cunt/breast re-evaluations]
	say "Testing Larissa's current status:[line break]";
	say "Infection name: [LarissaInfName]";
	say "Form: [LarissaForm]";
	say "TFtext: [LarissaTFText]";
	say "Body: [LarissaBody]";
	say "Hand: [LarissaHandForm]";
	say "Foot: [LarissaFootForm]";
	say "Skin: [LarissaSkin]";
	say "Face: [LarissaFace]";
	say "Mouth: [LarissaMouth]";
	say "Tail: [LarissaTail]";
	say "Tailed?: [if LarissaTailed is true]Yes[else]No[end if]";
	say "Cock: [LarissaCock]";
	say "Cocks: [if Cock Count of Larissa > 0][Cock Count of Larissa] cocks, [Cock Length of Larissa] inches long ([Cock Size Desc of Larissa]) with [Ball Size of Larissa]-sized balls ([Larissaballs])[else]No cocks: [Cock Length of Larissa] x [Ball Size of Larissa][end if].";
	say "Cunts: [if Cunt Count of Larissa > 0][Cunt Count of Larissa] cunts, [Cunt Depth of Larissa] inches deep and [Cunt Tightness of Larissa] inches wide ([Cock Size Desc of Larissa])[else]No cunts: [Cunt Depth of Larissa] x [Cunt Tightness of Larissa][end if].";
	say "Breasts: [Nipple Count of Larissa] breasts. Size: [Breast Size of Larissa] ([Breast Size Desc of Larissa]).";
	say "Size: [ScaleValue of Larissa]";
	say "Body descriptor: [LarissaBodyDesc]";
	say "Body type: [LarissaBodyType]";
	say "Daycycle: [SleepRhythm of Larissa] = [if SleepRhythm of Larissa is 0]Normal[else if SleepRhythm of Larissa is 1]Day[else]Night[end if]";
	say "Body Category: [LarissaBodycat] = [if LarissaBodycat is 0]humanoid[else if LarissaBodycat is 1]quadrupedal[else if LarissaBodycat is 2]tauric[else if LarissaBodycat is 3]legless[else]unknown![end if]";

Larissa ends here.
