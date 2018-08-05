Version 1 of Bryony by Song begins here.
[ Version 1.0 - Initial talk options and events - Song                          ]

Bryony is a woman. Bryony is in Equinoid Camp.
The description of Bryony is "[BryonyDesc]".
The conversation of Bryony is { "Watch yourself." }.
The scent of Bryony is "     Bryony smells distinctly masculine, a strong equine musk wafting from her body. Hints of soap and floral perfume barely mask the scent of her virility.".

The HP of Bryony is usually 0.
BryonyBearFuckWatched is a number that varies. BryonyBearFuckWatched is usually 0. [A one-use stat. Not using other established variables since it's binary and not relevant to content other than the conclusion.]

[	HP of Bryony                                                                  ]
[ 0 - Needs to speak to Nakoma about guard duty                                 ]
[ 1 - Spoken to Nakoma                                                          ]
[ 2 - Completed first guard scene                                               ]
[ 3 - Completed second guard scene (bear encounter)                             ]

to say BryonyDesc:
	say "     Bryony stands guard at the front of the camp. The herm's black mane is kept straight and out of her face, showing off her feminine muzzle and dark brown eyes. The white toga keeping her body modest is free of dirt or stains, showing only minor tears from past confrontations. The spear she wields consists of a simple arrowhead attached to a Bo staff with copper wire, making crude use of salvaged materials. Below, solid black hooves are planted on the ground in a proud, sturdy stance, suggesting she takes her role here very seriously.";
	say "     Spotting you watching her, Bryony [if player is blequinoidbodied]gives a nod of acknowledgement. She may not fully trust you yet, but your fully equinoid form puts some of her worries to rest[else]shakes her head and looks away. It seems she's unenthused by an impure creature hanging around the camp[end if].";

Instead of conversing the Bryony:
	if player is blequinoidbodied:
		if HP of Bryony > 2:
			say "     You approach the stoic equinoid, who quickly stands at attention. 'Hail!' she calls. 'What brings you here, [if player is defaultnamed]warrior[else][name of player][end if]?'";
		else:
			say "     You approach the stoic equinoid, who sighs and stands at attention. 'Hail,' she says, although it's clear by her unenthused tone that she still doesn't view you as an equal. 'What are you here for?'";
		say "[BryonyTalkMenu]";
	else:
		say "     When you approach the stoic equinoid, she raises her spear and gives you a warning look. 'Stand back,' Bryony warns, her voice deep and serious.";
		say "[BryonyTalkMenuImpure]";

to say BryonyTalkMenu: [Runs only if the player is fully black equinoid. Otherwise, see BryonyTalkMenuImpure]
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask Bryony how her shift is going";
	now sortorder entry is 1;
	now description entry is "Make small talk with the horse for a while";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask Bryony about her relationship with Amaryllis";
	now sortorder entry is 2;
	now description entry is "Learn more about the equinoids";
	[]
	if HP of Bryony is 0:
		choose a blank row in table of fucking options;
		now title entry is "Ask Bryony if she would like some company while guarding the camp";
		now sortorder entry is 3;
		now description entry is "Offer to help protect the herd";
	else if HP of Bryony is 1:
		choose a blank row in table of fucking options;
		now title entry is "Inform Bryony about Nakoma's proposition";
		now sortorder entry is 4;
		now description entry is "Break the news that Nakoma has elected you to help guard the camp";
	else if HP of Bryony is 2:
		choose a blank row in table of fucking options;
		now title entry is "Offer to help stand guard";
		now sortorder entry is 5;
		now description entry is "Let Bryony know that you're ready for another shift by her side";
	else if HP of Bryony is 3:
		choose a blank row in table of fucking options;
		now title entry is "Offer to help stand guard again";
		now sortorder entry is 6;
		now description entry is "Let Bryony know that you're ready for another shift by her side";
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
			if player consents:
				now sextablerun is 1;
				let nam be title entry;
				if (nam is "Ask Bryony how her shift is going"):
					say "[BryonyTalk1]";
					wait for any key;
					say "[BryonyTalkMenu]";
				if (nam is "Ask Bryony about her relationship with Amaryllis"):
					say "[BryonyTalk2]";
					wait for any key;
					say "[BryonyTalkMenu]";
				if (nam is "Ask Bryony if she would like some company while guarding the camp"):
					say "[BryonyTalk3]";
					wait for any key;
					say "[BryonyTalkMenu]";
				if (nam is "Inform Bryony about Nakoma's proposition"):
					say "[BryonyGuard1]";
				if (nam is "Offer to help stand guard"):
					say "[BryonyGuard2]";
				if (nam is "Offer to help stand guard again"):
					say "[BryonyGuard3]";
		else if calcnumber is 0:
			say "Break off the conversation?";
			if player consents:
				now sextablerun is 1;
				say "     You excuse yourself and step back from Bryony.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say BryonyTalk1:
	say "     The equinoid releases a quiet sigh at your question. 'Do not believe that simply speaking with me will earn you my favor,' she warns, giving you a wary, yet slightly amused look. 'To be frank with you, I am bored out here. The warriors closer to civilization see far more action than we do. I am not necessarily complaining about the reduced risk to hide and hair,' Bryony elaborates, 'but I haven't had something to stick my spear into for days.' You decide to omit the obvious comeback, instead going quiet and giving a respectful nod.";

to say BryonyTalk2:
	say "     Bryony frowns softly. 'Amaryllis is naive, simply put. She refuses to listen to orders, gives our leaders constant lip, and would copulate with outsiders given the opportunity. She might not defy our laws or ethical guidelines, but her actions still endanger the tribe.' The equinoid looks at the smaller herm with a weary expression. 'Still, I cannot find it in me to hate her for it. She is young, dumb, and tired of the humdrum of our simple life. What she needs is a steady partner to keep her company, not fleeting pursuits and fickle interests. She seeks these lovers out in her travels, but she fails to look inwards and understand who she already has. I would pity her if I didn't loathe the trouble her idiocy brings us.'";
	say "     After looking off into the distance for a moment, Bryony centers her gaze on you again. 'You have not wronged our tribe thus far, outsider, but I will continue to be wary of you. You must understand that Amy's previous interests have at times ingratiated themselves with us, only to abuse their privilege for personal gain and abandoning us once they robbed our supplies. It is only natural for us to show caution around fresh blood now.' With a gesture of her spear, she points at Nakoma. 'She trusts you, however, and I defer to the judgment of our leader in these rulings. Do not squander her trust, you understand?' Bryony warns.";

to say BryonyTalk3:
	say "     Bryony shakes her head. 'No. I do not have the authority to delegate tasks for other tribe members. Only Nakoma has this privilege,' she explains. The horse then adds, 'Do not take this as a personal slight. I do not harbor a grudge against you, as I find such sentiments childish and unproductive. This is simply a matter you need to settle with out leader, who will then determine if you are fit for the role.'";

to say BryonyGuard1:
	say "     Bryony gives a gentle sigh at your words. 'I suppose it was inevitable,' she muses sadly. You ask her what she means by that, but the equinoid shakes her head in response. 'It's nothing. Here, grab a spear and let's get started on your training.' Once you've pulled one from a nearby rack, she directs you to stand at the opposite end of the gate. 'You might have a weapon of your own, but crossing our spears is less likely to cause conflict than threatening a visitor with the point of a knife. Now, stand tall and try not to fidget too much. We are the first line of defense when someone chances upon our camp. Do not underestimate the value of a positive first impression.'";
	say "     Heeding the herm's words, you attempt to straighten your back and look as dignified as possible. Bryony criticizes your posture repeatedly, albeit constructively. 'Pull your stomach in. Keep your abs straight. Chest out but not ballooning. Shoulders back, glutes tight. Hold your spear straight. Don't lean your weight to one hoof. Hmn, looking better already.' The horse seems pleased by how quickly you're taking to her instructions. 'Most volunteers flake out by now. Good on you for showing some semblance of discipline for a change.' Something about her praise sends a warm, fuzzy feeling through your body that alleviates any stress or discomfort.";
	WaitLineBreak;
	say "     The rest of your stay proves largely uneventful. A handful of equinoids pass in and out for their daily routine, and some partly transformed stragglers approach in search of food or water. Bryony drives a hard bargain with these visitors, exchanging medkits, weapons, and even the clothes off their back for scraps. Regardless of how lopsided the deal, most of them seem grateful for the opportunity, and those that don't are quickly driven off by the threat of being skewered. When you ask about her draconian attitude, Bryony is quick to explain, 'We cannot afford to run a charity here. Either offer us something substantial in return, or get lost, and don't even try to barter with us.'";
	say "     Sensing some anger in her voice, you decide to drop the subject and go quiet again, focusing on the sounds of nature instead. At times, you swear you hear a sigh cut through the din, but you decide not to broach the subject. Eventually, the equinoid turns her head to say, 'Alright, [if player is defaultnamed]outsider[else][name of player][end if]. I think that'll be all for now. Thank you for taking the time to help out here, and let me know whenever you'd like another shift by my side.' Satisfied with your performance, the equinoid instructs you to return the borrowed spear and turns back to her duties.";
	wait for any key;
	now HP of Bryony is 2;
	follow the turnpass rule;

to say BryonyGuard2:
	say "     Bryony gives a respectful nod and directs you to grab a spear from the weapon rack. After doing so, you return to your post on one side of the gate and do your best to straighten your posture as she demonstrated. 'Ah, spear straight,' the equinoid reminds you, thumping the base against the ground with her arm at a stiff right angle. You try to mimic her motions, fighting against your body's natural urge to go slack again over time.";
	say "     As before, the majority of your time spent at your post is without incident. Hunting parties come and go, survivors come to trade for supplies, and Bryony meets them all with the same cold condescension she did on your previous joint shift. However, you are taken by surprise when a naked woman stumbles through the forest. Her clothes lie in tatters, and her exposed body is covered in scratches and fluids. You are tempted to run forward and assist her, but Bryony holds you back with her spear, waiting for her to approach.";
	WaitLineBreak;
	say "     'Please! I need help! Somebody, please!' the woman calls out. Even as she speaks, brown fur quickly spreads across her head, her face drawing forward into a muzzle and teeth extending to predatory points. 'Halt!' Bryony calls out, raising the edge of her weapon. 'Stand back and explain yourself.' The woman whimpers as fur spreads down her neck and shoulders, mammary flesh swelling and breath growing heavy. 'I- I was attacked and raped by a bear in the woods! Please, I don't have time to go into detail, just let me in!' she pleads. Bryony ignores her request, shaking her head adamantly. 'I cannot. Your transformation poses a threat to the tribe. Stand back.' 'No, no, no!' the woman cries out. 'I'm just going to turn into another mindless beast! Please, I'm begging you, don't just stand there and let this happen! Help me!'";
	say "     To your surprise, Bryony's cool demeanor begins to waver somewhat. 'No, I will not! That is final. Now calm yourself and try to breathe,' she urges. The panicking woman sinks to her hands and knees and bursts out into tears, sobbing uncontrollably as the transformation flows down her torso, her muscles expanding while fat billows from her core. '[if player is defaultnamed]Outsider[else][name of player][end if], I need you to hurry inside and grab a towel from the bathhouse. That is an order.' Adrenaline coursing through your veins, you rush through groups of warriors to the bath where you were initiated, grab a dry towel, and sprint back toward the entrance. Bryony is waiting, legs spread in a sturdy fighting stance and spear extended toward the woman, whose cries have devolved into babbling and moaning as she frantically fingers her sopping wet slit. 'It may be too late for her, but we might as well try,' Bryony reasons as she snatches the towels from your hand.";
	WaitLineBreak;
	say "     With no time to waste, the equinoid tosses you her spear and runs towards the transforming woman, brushing off the milk and nectar still clinging to her face. 'Stay with me,' she commands. You stand back from the spectacle, training your weapon of choice on the couple. Reaching beneath her form, Bryony pulls the bear's hands away and seizes her wrists in an iron grasp, giving her no opportunity to indulge her burning lusts. 'Nooo! Let me go! I need this!' the woman pleads in a low, throaty voice that scarcely resembles her old self. Bryony clearly has no intention to stop, rolling the bear over onto her back and pinning her arms down beneath her knees. 'Oh, will you just pull yourself together?' the equinoid grumbles as she holds the bear's jaws apart with one hand and swabs out the inside of her mouth with a towel, much to the uncomfortable gagging of her subject. When the first one is soaked, she simply tosses it aside and finishes the job with another, wiping away any trace of wetness from the ursine's maw, sex, and milk-leaking nipples.";
	say "     However, try as she might, the transformation has simply progressed too far. With a roar, the female bear continues to squirm and thrash beneath Bryony's brawn, her hips bucking into the air as she throws a lust-fueled fit. 'Oh for fuck's sake-' Bryony grumbles, her tail flicking around in obvious agitation as her muscles strain to keep the increasingly large ursine still. '[if player is defaultnamed]Outsider[else][name of player][end if], don't just stand there! Come and help me keep this whore down!' Heeding her order, you hurry forward and kneel between the bear's legs, hands planting on her thighs to still her wild flailing. Even with your combined strength, the bear proves a challenge to contain, a surge of new instincts driving her to escape at all costs. 'We won't be able to hold her down forever,' Bryony observes, the herm looking up at you a worried expression. 'What do you think we should do?'";
	say "[BryonyBearOptions]";

to say BryonyBearOptions:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Incapacitate her";
	now sortorder entry is 1;
	now description entry is "Stab the bear with a spear to stop her struggling";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Fuck her";
	now sortorder entry is 2;
	now description entry is "Attempt to overwhelm her strain with [if player is neuter]Bryony's[else]your[end if] fluids";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Let her go";
	now sortorder entry is 3;
	now description entry is "Release the bear and try to scare her off";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if player consents:
				now sextablerun is 1;
				let nam be title entry;
				if (nam is "Incapacitate her"):
					say "[BryonyBear1]";
				if (nam is "Fuck her"):
					say "[BryonyBear2]";
				if (nam is "Let her go"):
					say "[BryonyBear3]";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say BryonyBear1: [Incapacitate the bear]
	say "     Bryony looks down at the mutant again. 'Yeah,' she muses in a softer voice, 'that sounds like the only right course of action here.' Reaching back for her spear with one hand, the equinoid holds it high in the air for a moment, then plunges it directly through the bear's abdomen. The creature spasms briefly before going still, her breath slowing down until it stops completely. You cannot determine whether she's unconscious or dead, but she clearly no longer poses a threat.";
	say "     You wipe your brow and stand up on shaky legs, helping a downtrodden Bryony up after you. 'I just...' she murmurs, shaking her head to herself as the two of you step away from the body. 'I still get sentimental about this kind of shit.' Wishing to comfort her, you open your mouth to say something, but Bryony stomps her hoof and turns away from you, walking back to the center of the camp. You watch the equinoid converse with two other warriors, who stop whatever they were doing to pace after the long and hurried strides of their superior. Seeing the bear's body, they quickly fashion a stretcher out of two wooden poles and a very large hammock, then lift the ursine up to carry her out toward the forest.";
	say "     Once the pair has departed, Bryony sits down on a patch of grass and closes her eyes. 'You can go now,' she says, although it seems less like an offer and more like a command. Returning your spear to the weapon rack, you give once last sympathetic look towards the equinoid before returning to the center of the camp, not certain if you made the right call in the heat of the moment.";
	wait for any key;
	now HP of Bryony is 3;
	follow the turnpass rule;

to say BryonyBear2: [Fuck the bear]
	say "     'You want to do [italic type]what[roman type]?' Bryony guffaws, so struck with disbelief that she bursts into nervous laughter. 'Are you out of your fucking [italic type]mind[roman type]? Do you want me to drive a spear through [italic type]your[roman type] chest instead?' The equine shakes her head, shuddering with revulsion at the very notion of fucking an impure partner, much less one who has clearly lost their capacity for unambiguous consent. And yet, with the bear trapped beneath you, the cogs in her head seem to clang and grind to a standstill as arousal takes the wheel. The equine's hefty length leaves an increasingly prominent bulge in her toga, lifting the fabric with steady throbs and pulses. 'Oh, no. No fucking way! My dick doesn't speak for me!' she insists.";
	say "     As if sensing her arousal, the transformed girl beneath her draws a firm, demanding lick across the underside of Bryony's cock. 'Oh, don't even try me,' she warns, though her words break into a nicker as another long sweep stimulates her mottled meat. 'Mnph. That feels... really fucking good...' she admits, slowly sawing her cock back and forth across the relaxing bear's muzzle. A needy moan spills from her maw as her eyes shutter closed in blissful reverie. Seeing the equinoid's readiness, you lean in to press an encouraging kiss to her muzzle, which she accepts and even reciprocates in her lust-fueled lapse of moral high ground.";
	say "[BryonyBearFuckOptions]";

to say BryonyBearFuckOptions:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Fuck her pussy";
		now sortorder entry is 1;
		now description entry is "Stuff her slit while Bryony takes her mouth";
	[]
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Fuck her mouth";
		now sortorder entry is 2;
		now description entry is "Stretch her throat while Bryony takes her cunt";
	[]
	if player is female:
		choose a blank row in table of fucking options;
		now title entry is "Ride her face (vaginal)";
		now sortorder entry is 3;
		now description entry is "Have her lick your pussy while Bryony breeds her";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ride her face (anal)";
	now sortorder entry is 4;
	now description entry is "Have her lick your asshole while Bryony breeds her";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Eat her out";
	now sortorder entry is 5;
	now description entry is "Offer to tease the bear's muff while Bryony fucks her mouth";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Just watch";
	now sortorder entry is 6;
	now description entry is "Suggest that Bryony do the dirty work while you keep your guard up";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Reconsider";
	now sortorder entry is 7;
	now description entry is "Choose a different option instead";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if player consents:
				now sextablerun is 1;
				let nam be title entry;
				if (nam is "Fuck her pussy"):
					say "[BryonyBearFuck1]";
				if (nam is "Fuck her mouth"):
					say "[BryonyBearFuck2]";
				if (nam is "Ride her face (vaginal)"):
					say "[BryonyBearFuck3]";
				if (nam is "Ride her face (anal)"):
					say "[BryonyBearFuck4]";
				if (nam is "Eat her out"):
					say "[BryonyBearFuck5]";
				if (nam is "Just watch"):
					say "[BryonyBearFuck6]";
				if (nam is "Reconsider"):
					say "[BryonyBearOptions]";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say BryonyBearFuck1: [Fuck her pussy]
	say "     While making out with Bryony, you take hold of your equine cock and align its flared tip with bear's dripping sex. You push forward in a single smooth motion, sinking inch after inch of your [cock size desc of player] shaft into her smooth, drenched channel. The ursine's supple folds caress your pulsing cockflesh, clenching and rippling in a stimulating massage that erodes your every inhibition. You begin to thrust into the bear's sordid pussy, driving yourself to the hilt in her softly squeezing depths before pulling almost all the way out again. Your medial ring plucks at her labia with every slam and withdrawal, drawing grunts and low moans from your pinned and eager partner.";
	say "     Soon, Bryony is following your lead, bringing her throbbing flare to the bear's hungry maw before stretching her jaw with her man-meat. The freshly transformed woman's throat proves more than accommodating, forming a warm, wet vise that visibly bulges around Bryony's girth. She shudders and grinds roughly against the bear's face before pulling back to set her pace, arrhythmically pounding her muzzle in her wild need to breed. The potent scent of sex clouds your mind, filling the air in a heady miasma as your slick impacts sound out for all to hear. Catching wind of the commotion, a handful of equines trot over to watch with piqued interest, groping their tits and pumping their lengths to vicariously enjoy the rough and hazy sex the three of you share in.";
	say "     In time, the threesome becomes too much to bear. Poor, pent-up Bryony is the first to flood the bear's depths, pulse after pulse of hot, virile seed washing directly down her gullet. What doesn't stay down splashes out against her crotch, streaking down the bear's muzzle and leaving a growing puddle below. You soon follow suit, taking several hard strokes before grinding your crotch to the bear's gaping folds. You tremble in orgasm, an ecstatic whinny leaving your muzzle as your balls unload in the bear's waiting womb. The thought of siring foals with her sends a shiver down your spine, and your balls begin to ache as you spill all you can give into the ursine's wanton cunt. Your powerful release drives the bear to her own messy climax, squirting and writhing with pure, carnal bliss as a muffled roar ripples over Bryony's cum-slick dick. You've nearly forgotten about your lustful voyeurs, who helpfully spray thick ropes of their seed across the bear's torso, the mess of transformative fluids coating your lover inside and out.";
	WaitLineBreak;
	say "     Just as you'd hoped, the tainted cum takes its toll on the malleable mutant. The fur near her crotch and head is the first to change, growing dark, sleek and lustrous like your own gorgeous coat. Soon, her head reforms into a beautiful equine muzzle, and after spreading through her torso, the nanites flow down through her limbs and extremities. Her salmon pink slit grows thick and puffy, transforming into a sable-fleshed horse's cunt that perfectly houses your pole. A heavy sack forms above her swollen folds, followed shortly by the arrival of a meaty equine cock, spurting messily across her stomach as it fills out to its full glory. Reaching over, Bryony pumps the herm's swollen cockflesh until she cums all over her stomach and breasts, only adding to the slurry of seed glazing her lovely equine body.";
	say "     Spent and brutally satisfied, you pull out of the newly anointed horse herm, shuddering to yourself as a cascade of alabaster cream flows from her dark, plump folds. She reaches below to plug your escaping semen with two thick digits, pushing down to the knuckle in her overflowing sex. Bryony slides free afterwards, breathing hotly as she reclines on her forearms with aftershocks of trembling pleasure. The lust-subsumed equine continues to play with her swollen breasts and pussy until she cums one last time, a weakened nicker leaving her muzzle as she stares up at the sky through half-lidded eyes.";
	WaitLineBreak;
	say "[BryonyBearFuckConclusion]";

to say BryonyBearFuck2: [Fuck her mouth]
	say "     After making out with Bryony, you request to switch positions to make the most out of the situation. You reason that you'd rather take the bear's mouth, and wouldn't she enjoy a nice, snug cleft to stuff and fill with her foals? Subsumed by her lusts, Bryony can't help but agree with your offer, and the two of you rise on unsteady hooves. The bear doesn't budge in the time it takes to swap places, lusting to be used in whatever way her dominant lovers please.";
	say "     Once ready, you kneel atop the ursine's face, taking hold of your length to align its thick, pulsing flare with her maw. The woman licks her chops, then opens her mouth wide, her tongue lolling out lavishly in invitation. You push forward in a single smooth motion, smearing your cockmeat across her palate as her jaw stretches to accept your [cock size desc of player] shaft. The feeling of that warm, wet vise gripping around your sensitive manhood sends a shiver down your spine, and you urgently grind forward, leaving a visible impression of your cock in her throat.";
	WaitLineBreak;
	say "     Soon, Bryony is following your lead, bringing her throbbing flare to the bear's slavering muff before sinking herself into that accommodating channel. The equinoid groans at the feeling, her fingers digging into the earth below as she works herself deeper with several short, rough bucks until she bottoms out the bear's hot cleft. She nickers and grinds roughly against her lover's crotch before pulling back to set her pace, arrhythmically pounding her pussy in her wild need to breed. The potent scent of sex clouds your mind, filling the air in a heady miasma as your slick impacts sound out for all to hear. Catching wind of the commotion, a handful of equines trot over to watch with piqued interest, groping their tits and pumping their lengths to vicariously enjoy the rough and hazy sex the three of you share in.";
	say "     In time, the threesome becomes too much to bear. Poor, pent-up Bryony is the first to succumb, her balls tensing up before she floods the ursine's depths, pulse after pulse of hot, virile seed washing directly into her womb. What doesn't stay in splashes out against her crotch, streaking down her thighs and leaving a growing puddle below. The bliss of being bred drives the bear over the edge, squirting and writhing with pure, carnal bliss as a muffled roar resonates around your cock. The powerful vibrations finally bring you to orgasm, an ecstatic whinny leaving your muzzle as you feed your ravenous partner thick ropes of seed, her throat squeezing rhythmically to milk of your balls of every last drop. You've nearly forgotten about your lustful voyeurs, who helpfully spray thick ropes of their seed across the bear's torso, the mess of transformative fluids coating your lover inside and out.";
	WaitLineBreak;
	say "     Just as you'd hoped, the tainted cum takes its toll on the malleable mutant. The fur near her crotch and head is the first to change, growing dark, sleek and lustrous like your own gorgeous coat. Soon, her head reforms into a beautiful equine muzzle, and after spreading through her torso, the nanites flow down through her limbs and extremities. Her salmon pink slit grows thick and puffy, transforming into a sable-fleshed horse's cunt that perfectly houses Bryony's pole. A heavy sack forms above her swollen folds, followed shortly by the arrival of a meaty equine cock, spurting messily across her stomach as it fills out to its full glory. Taking hold of her shaft, Bryony pumps the herm's swollen fuckstick until she cums all over her stomach and breasts, only adding to the slurry of seed glazing her lovely equine body.";
	say "     Spent and brutally satisfied, you pull out of the newly anointed horse herm, shuddering to yourself as a cascade of alabaster cream flows from her altered maw. When Bryony withdraws, the freshly fucked herm reaches below to plug your escaping semen with two thick digits, pushing down to the knuckle in her overflowing sex. Your fellow guard breathes hotly as she reclines on her forearms with aftershocks of trembling pleasure, her glazed gaze affixed to her lover's bloated belly. The lust-subsumed equine continues to play with her swollen breasts and pussy until she cums one last time, a weakened nicker leaving her muzzle as she stares up at the sky through half-lidded eyes.";
	WaitLineBreak;
	say "[BryonyBearFuckConclusion]";

to say BryonyBearFuck3: [Ride her face (vaginal)]
	say "     After making out with Bryony, you request to switch positions to make the most out of the situation. You reason that cunnilingus would be more enjoyable for you than tribadism, and wouldn't she enjoy a nice, snug cleft to stuff and fill with her foals? Subsumed by her lusts, Bryony can't help but agree with your offer, and the two of you rise on unsteady hooves. The bear doesn't budge in the time it takes to swap places, lusting to be used in whatever way her dominant lovers please.";
	say "     Once ready, you kneel atop the ursine's face, your equine cunt pressing down against her muzzle. Her tongue begins to slide across your folds, long and lazy sweeps that smear your flavor over her palate and sample your leaking juices. The exchange leaves streaks of spit across your petals, a relaxing tingling flowing through your hips as your nanites suppress the transformative effects. Sighing in disbelief that it's come to this, Bryony aligns her huge, pulsing flare with the bear's salmon pink folds. Taking hold of her broad hips for support, she sheathes herself in her pussy in one swift stroke, nectar matting her fur as she grinds against the bear's lips. 'Holy fuck!' Bryony exclaims, surprised by just how pleasant of a vise her lover's deep, slick snatch provides.";
	say "     Eager for more stimulation, you begin to roll your hips against the bear's muzzle, cherishing the feeling of that long, broad tongue sliding into your sex and smearing over your inner walls. She proves quite the skillful lover, rewired mind knowing all the right places to probe and assault with that smooth, flat muscle. Your g-spot in particular is treated to myriad long sweeps, coaxing spurts of sticky wetness for the lustful bear to swallow. While you bask in the feeling of her dexterous ministrations, Bryony slowly withdraws from the girl's gaping cunt. The ursine shudders to herself as her medial ring plucks at her entrance, the equine pulling back until only her tip remains within that slavering pussy. With a grunt, she drives deep into her slit again, stretching her folds to fit that impressively large phallus.";
	WaitLineBreak;
	say "     Soon, Bryony is thrusting into her partner with firm and steady strokes, as disciplined in her lovemaking as her duty as a guard. Loud, slick splats resound with every impact, and the heady scent of sex fills the air in a mind-numbing miasma. Your weight sinks further atop the bear's muzzle, her brown fur ticklish as it brushes over your cleft. You moan and nicker with glee as her wonderful tongue slides deeper into your slavering honeypot, a hair's breadth away from lapping at your cervix. Catching wind of the commotion, a handful of equines trot over to watch with piqued interest, groping their tits and pumping their lengths to vicariously enjoy the rough and hazy sex the three of you share in.";
	say "     In time, the threesome becomes too much to bear. Poor, pent-up Bryony is the first to succumb, her balls tensing up before she floods the ursine's depths, pulse after pulse of hot, virile seed washing directly into her womb. What doesn't stay in splashes out against her crotch, streaking down her thighs and leaving a growing puddle below. The bliss of being bred drives the bear over the edge, squirting and writhing with pure, carnal bliss as a muffled roar resonates through your cunt. The powerful vibrations finally bring you to orgasm, an ecstatic whinny leaving your muzzle as a maelstrom of femcum fills your lover's hungry muzzle. You've nearly forgotten about your lustful voyeurs, who helpfully spray thick ropes of their seed across the bear's torso, the mess of transformative fluids coating the woman inside and out.";
	WaitLineBreak;
	say "     Just as you'd hoped, the tainted cum takes its toll on the malleable mutant. The fur near her crotch and head is the first to change, growing dark, sleek and lustrous like your own gorgeous coat. Soon, her head reforms into a beautiful equine muzzle, and after spreading through her torso, the nanites flow down through her limbs and extremities. Her salmon pink slit grows thick and puffy, transforming into a sable-fleshed horse's cunt. A heavy sack forms above her swollen folds, followed shortly by the arrival of a meaty equine cock, spurting messily across her stomach as it fills out to its full glory. Taking hold of her shaft, Bryony pumps the herm's swollen fuckstick until she cums all over her stomach and breasts, only adding to the slurry of seed glazing her lovely equine body.";
	say "     Spent and brutally satisfied, Bryony pulls out of the equinoid, shuddering to herself as a cascade of alabaster cream flows from her dark, plump folds. The newly anointed horse herm reaches below to plug Bryony's escaping semen with two thick digits, pushing down to the knuckle in her overflowing sex. Giggling at the spectacle, you recline on your forearms with aftershocks of trembling pleasure. Your gaze remains locked to the needy equine as she fingers her pussy until she cums one last time, a weakened nicker leaving her muzzle as she stares up at the sky through half-lidded eyes.";
	WaitLineBreak;
	say "[BryonyBearFuckConclusion]";

to say BryonyBearFuck4: [Ride her face (anal)]
	say "     After making out with Bryony, you request to switch positions to make the most out of the situation. You reason that some rimming would be more enjoyable for you than just watching on the sidelines, and wouldn't she enjoy a nice, snug cleft to stuff and fill with her foals? Subsumed by her lusts, Bryony can't help but agree with your offer, and the two of you rise on unsteady hooves. The bear doesn't budge in the time it takes to swap places, lusting to be used in whatever way her dominant lovers please.";
	say "     Once ready, you kneel atop the ursine's face, your fat equine donut pressing down against her muzzle. Her tongue begins to slide across your rim, long and lazy sweeps that circle your asshole and smear a film of warm saliva over its puffy, sensitive flesh. Warmth billows and spreads as she polishes your pucker to a sticky mirror sheen, making your entire body relax with her intimate, wanton ministrations. You squirm as the tip plucks at your entrance, ripples of pleasure washing over you with each deft flick of the tongue. Sighing in disbelief that it's come to this, Bryony aligns her huge, pulsing flare with the bear's salmon pink folds. Taking hold of her broad hips for support, she sheathes herself in her pussy in one swift stroke, nectar matting her fur as she grinds against the bear's lips. 'Holy fuck!' Bryony exclaims, surprised by just how pleasant of a vise her lover's deep, slick snatch provides.";
	say "     Eager for more stimulation, you begin to roll your hips against the bear's muzzle, cherishing the feeling of that long, broad tongue sliding into your rear and smearing over your inner walls. She proves quite the skillful lover, rewired mind knowing all the right places to probe and assault with that smooth, flat muscle. Your sensitive lining is treated to myriad long sweeps, both spreading her tingling spit and gauging your elasticity with every lascivious motion. While you bask in the feeling of her dexterous ministrations, Bryony slowly withdraws from the girl's gaping cunt. The ursine shudders to herself as her medial ring plucks at her entrance, the equine pulling back until only her tip remains within that slavering pussy. With a grunt, she drives deep into her slit again, stretching her folds to fit that impressively large phallus.";
	WaitLineBreak;
	say "     Soon, Bryony is thrusting into her partner with firm and steady strokes, as disciplined in her lovemaking as her duty as a guard. Loud, slick splats resound with every impact, and the heady scent of sex fills the air in a mind-numbing miasma. Your weight sinks further atop the bear's muzzle, her brown fur ticklish as it brushes against the cleft of your ass. You moan and nicker with glee as her wonderful tongue slides deeper into your bowels, a thick lather of slobber coating the needy lining of your colon. Catching wind of the commotion, a handful of equines trot over to watch with piqued interest, groping their tits and pumping their lengths to vicariously enjoy the rough and hazy sex the three of you share in.";
	say "     In time, the threesome becomes too much to bear. Poor, pent-up Bryony is the first to succumb, her balls tensing up before she floods the ursine's depths, pulse after pulse of hot, virile seed washing directly into her womb. What doesn't stay in splashes out against her crotch, streaking down her thighs and leaving a growing puddle below. The bliss of being bred drives the bear over the edge, squirting and writhing with pure, carnal bliss as a muffled roar resonates through your clenching tract. The powerful vibrations stimulate your depths, making you writhe and buck against the source of this bliss, but never quite finding an outlet due to your lack of genitalia. You've nearly forgotten about your lustful voyeurs, who helpfully spray thick ropes of their seed across the bear's torso, the mess of transformative fluids coating the woman inside and out.";
	WaitLineBreak;
	say "     Just as you'd hoped, the tainted cum takes its toll on the malleable mutant. The fur near her crotch is the first to change, growing dark, sleek and lustrous like your own gorgeous coat. Soon, her head reforms into a beautiful equine muzzle, and it spreads through her torso, then onwards to her head, limbs, and extremities. Her salmon pink slit grows thick and puffy, transforming into a sable-fleshed horse's cunt. A heavy sack forms above her swollen folds, followed shortly by the arrival of a meaty equine cock, spurting messily across her stomach as it fills out to its full glory. Taking hold of her length, Bryony pumps the herm's swollen fuckstick until she cums all over her stomach and breasts, only adding to the slurry of seed glazing her lovely equine body.";
	say "     Spent and brutally satisfied, Bryony pulls out of the equinoid, shuddering to herself as a cascade of alabaster cream flows from her dark, plump folds. The newly anointed horse herm reaches below to plug Bryony's escaping semen with two thick digits, pushing down to the knuckle in her overflowing sex. Giggling at the spectacle, you recline on your forearms while your head buzzes with undirected, sexless pleasure. Your gaze remains locked to the needy equine as she fingers her pussy until she cums one last time, a weakened nicker leaving her muzzle as she stares up at the sky through half-lidded eyes.";
	WaitLineBreak;
	say "[BryonyBearFuckConclusion]";

to say BryonyBearFuck5: [Eat her out]
	say "     After making out with Bryony, you look down at the bear again. The lust-addled mutant grins up at you in response and spreads her legs further, inviting you to use her prostrated body as you please. Tentatively, you slide your fingers along the bear's salmon pink petals. She tenses at the faint contact, sticky wetness clinging to your digits with a strange tingling sensation. You assume this is an attempt to transform you, but it appears that your nanites are quite stubborn and override small doses of the ursine's fluids. Pleased by the revelation, you brush your fingers along her labia in tender sweeps, gently caressing her folds to help tease the bear to excitement. She grunts and moans beneath your wayward touches, clearly eager for more.";
	say "     Bryony uses the opportunity to align her throbbing flare with the bear's hungry maw. After smearing her precum over her face, she pushes forward to stretch her jaw with her man-meat. The freshly transformed woman's throat proves more than accommodating, forming a warm, wet vise that visibly bulges around Bryony's girth. She shudders and grinds roughly against the bear's face before pulling back to set her pace, gruffly pounding her muzzle in her wild need to breed. The potent scent of sex clouds your mind, filling the air in a heady miasma as their slick impacts sound out for all to hear. Catching wind of the commotion, a handful of equines trot over to watch with piqued interest, groping their tits and pumping their lengths to vicariously enjoy the rough and hazy sex on display.";
	WaitLineBreak;
	say "     Swept up in their lustful excitement, you lower your head down to lap at her slippery sex. Your thumb plays with her clit as your tongue drills into her depths, sweeping and curling along her inner walls. Your hungry affection smears sticky honeys over your palate, its intoxicating aroma filling your mind with lurid images. Ripples of undirected lust through your body as you swallow more of her nectar, and waves of tingles wash over your head as strains compete for dominance, shifting back and forth while you devour her pussy with wanton lasciviousness.";
	say "     In time, the threesome becomes too much to bear. Poor, pent-up Bryony floods the bear's depths, pulse after pulse of hot, virile seed washing directly down her gullet. What doesn't stay down splashes out against her crotch, streaking down the bear's muzzle and leaving a growing puddle below. The thick, sticky treat and continued stimulation drives the bear to her own messy climax, squirting and writhing with pure, carnal bliss as a muffled roar ripples over Bryony's cum-slick dick. As you ravenously swallow every gush of ursine honeys, you're only dimly aware of your lustful voyeurs, who helpfully spray thick ropes of their seed across the bear's torso, the mess of transformative fluids coating your lover inside and out.";
	WaitLineBreak;
	say "     Just as you'd hoped, the tainted cum takes its toll on the malleable mutant. The fur near her head is the first to change, growing dark, sleek and lustrous like your own gorgeous coat. Soon, her head reforms into a beautiful equine muzzle, and after spreading through her torso, the nanites flow down through her limbs and extremities. Her salmon pink slit grows thick and puffy, transforming into a sable-fleshed horse's cunt, whose transformative juices help rekindle your own fully equine appearance. A heavy sack forms above her swollen folds, followed shortly by the arrival of a meaty equine cock, spurting messily across her stomach as it fills out to its full glory. Reaching over, Bryony pumps the herm's swollen cockflesh until she cums all over her stomach and breasts, only adding to the slurry of seed glazing her lovely equine body.";
	say "     Spent and brutally satisfied, Bryony pulls out of the equinoid, shuddering to herself as a cascade of alabaster cream flows from her dark, plump folds. The newly anointed horse herm moans and whinnies happily as you continue to service her folds, pushing back against your face with each tender lick along her rippling inner walls. You continue to eat out the equine's thick-lipped pussy until she cums one last time, a weakened nicker leaving her muzzle as she stares up at the sky through half-lidded eyes.";
	WaitLineBreak;
	say "[BryonyBearFuckConclusion]";

to say BryonyBearFuck6: [Just watch]
	say "     After making out with Bryony, you gently pull away from the equinoid. With a wistful sigh, you let her know that it'd probably be safer for her if you stood guard while she did the deed. She nods respectfully at your reasoning, helping you up onto your hooves. After stepping away from the two, you grab a spear and keep a watchful eye on the couple. Moving around the bear, Bryony repositions herself between the her legs and aligns the flare of her swollen horsecock with her salmon pink folds.";
	say "     Without further ado, Bryony begins to push her cock into the ursine's warm, accommodating channel. The equinoid groans at the feeling, her fingers digging into the earth below as she works herself deeper with several short bucks until she bottoms out the bear's hot cleft. She nickers and grinds roughly against her lover's crotch, savoring the feeling of those plush folds gripping and squeezing around her maleness. Once her breathing normalizes again, Bryony pulls back until only the tip remains within her, then roughly slams home again, pushing all the way to the hilt in the moaning bear's muff. In time, she's set a firm and rhythmic tempo of stuffing her lover's elastic box, her dick leaving a visible impression in her stomach with every deep stroke.";
	WaitLineBreak;
	say "     You continue to stand guard while they mate, tempted to pleasure yourself at the display, but steeling your nerves despite. After all, there's the very real chance that Bryony could start succumbing to the bear's infection instead, and you need to be ready to step in at a moment's notice. The potent scent of bestial sex nags at your mind, filling the air in a heady miasma as every slick impact sound out for all to hear. Catching wind of the commotion, a handful of equines trot over to watch with piqued interest, groping their tits and pumping their lengths to vicariously enjoy the rough and hazy sex the two of them share in. One of the more disciplined warriors gives your shoulder a bump with their fist, congratulating you for keeping your cool.";
	say "     In time, the poor, pent-up equine can't hold back any longer and floods her lover's depths, pulse after pulse of hot, virile seed washing directly into her womb. What doesn't stay in splashes out against her crotch, streaking down her thighs and leaving a growing puddle below. The bliss of being bred drives the bear over the edge, squirting and writhing as a lustful roar spills from her maw. Their lustful voyeurs soon reach orgasm and spray thick ropes of tainted seed across the bear's torso, the mess of transformative fluids coating her inside and out.";
	WaitLineBreak;
	say "     Just as you'd hoped, the tainted cum takes its toll on the malleable mutant. The fur near her crotch is the first to change, growing dark, sleek and lustrous like your own gorgeous coat. Soon, her head reforms into a beautiful equine muzzle, and it spreads through her torso, then onwards to her head, limbs, and extremities. Her salmon pink slit grows thick and puffy, transforming into a sable-fleshed horse's cunt. A heavy sack forms above her swollen folds, followed shortly by the arrival of a meaty equine cock, spurting messily across her stomach as it fills out to its full glory. Taking hold of her length, Bryony pumps the herm's swollen fuckstick until she cums all over her stomach and breasts, only adding to the slurry of seed glazing her lovely equine body.";
	say "     Spent and brutally satisfied, Bryony pulls out of the equinoid, shuddering to herself as a cascade of alabaster cream flows from her dark, plump folds. The newly anointed horse herm reaches below to plug Bryony's escaping semen with two thick digits, pushing down to the knuckle in her overflowing sex. Amused by the spectacle, fall at ease now that the former bear's former infection has been eliminated. The well-fucked equine continues to finger her pussy until she cums one last time, a weakened nicker leaving her muzzle as she stares up at the sky through half-lidded eyes.";
	WaitLineBreak; [Different conclusion for watching than joining]
	say "     'Ugh...' Bryony groans, groping her heavy tits and staring down at her half-hard cock. 'Was that... really necessary?' she asks. One of the watching warriors chuckles and pats her shoulder. 'No need to be ashamed, Bryony. You put on a great show [if daytimer is day]today[else]tonight[end if]. Come, what do you say we cycle you out with another guard for a while and head to the baths together?' Still somewhat dazed, the group helps the two of them to their feet and guides them into the safety of the camp, paying no mind to the fluids left behind in the wake of their lovemaking. With nothing better to do, you set your spear back in the weapon rack and follow after them.";
	say "     Once safe and sound, you lower yourself into the warm, scented water to spent some time with the pair. The bath is quite soothing, mostly spent snuggling with the horny new horse herm. You run your hands through her hair while she nuzzles into your neck and shoulder, enjoying the mutual warmth and affection. After a little while, you give her a kiss on the temple goodbye, then climb out of the water to towel off. As you're leaving, you notice Bryony scooching over to nestle in with her new friend, a blush beneath her cheek-fur as the two of them bond over small talk and lazy cuddling. You are pleased by the developments, having neutralized a threat and expanded the herd in the process.";
	wait for any key;
	now HP of Bryony is 3; [No sanity lost since the player chose to watch instead of partake]
	follow the turnpass rule;

to say BryonyBearFuckConclusion: [Used in all bearfuck scenes except 'watch']
	say "     'Ugh...' Bryony groans, groping her heavy tits and staring down at her half-hard cock. 'Was that... really necessary?' she asks. One of the watching warriors chuckles and pats her shoulder. 'No need to be ashamed, Bryony. You put on a great show [if daytimer is day]today[else]tonight[end if]. Come, what do you say we cycle you out with another guard for a while and head to the baths together?' Still somewhat dazed, the group helps the three of you to your feet and guides you back into the safety of the camp, paying no mind to the fluids left behind in the wake of your lovemaking.";
	say "     Once safe and sound, you're lowered into the warm, scented water together to cleanse your body and mind. The bath is quite soothing, mostly spent snuggling with the horny new horse herm. You run your hands through her hair while she nuzzles into your neck and shoulder, enjoying the mutual warmth and affection. After a little while, you give her a kiss on the temple goodbye, then climb out of the water to towel off. As you're leaving, you notice Bryony scooching over to nestle in with her new friend, a blush beneath her cheek-fur as the two of them bond over small talk and lazy cuddling. Your nanite-riddled mind is pleased by the developments, having neutralized a threat and expanded the herd in the process.";
	SanLoss 10;
	wait for any key;
	now HP of Bryony is 3;
	follow the turnpass rule;

to say BryonyBear3: [Let the bear go]
	say "     Bryony gives you a questioning look at your answer. 'You sure about that?' she asks, only to shake her head with a gentle sigh. 'I would've put her out of her misery, but I'll trust your judgment on this one.' Counting down to three, the two of you pull away from the bear in unison and grab your weapons, keeping them trained on the feral beast. Frightened for her life, the woman's first instinct is to bolt from her perceived attackers, grunting with every four-legged lope in the direction of the forest.";
	say "     Relieved to have defused the situation, you wipe your brow and look back at Bryony. The equinoid continues to watch the fleeing bear until it's out sight before turning her attention to you again. 'Well, that went better than I expected,' Bryony admits somewhat sheepishly. 'Good call on letting her go, [if player is defaultnamed]outsider[else][name of player][end if]. I'm glad that we didn't have to resort to more extreme measures.' The equinoid shakes her head again. 'I think I need some time alone, now. Feel free to come back later for another shift together.'";
	wait for any key;
	now HP of Bryony is 3;
	follow the turnpass rule;


to say BryonyGuard3:
	say "     Bryony gives a respectful nod and directs you to grab a spear from the weapon rack. After doing so, you return to your post on one side and stand guard with the herm. Now that you've proven yourself capable, Bryony is much more conversational, helping fill the dead air with small talk about your experiences in the city. You elaborate on your recent exploits and the various creatures you've encountered, informing her about the districts you've been to and the vastly different stains that dominate them. Your partner proves a good listener, asking for more details about certain subjects and just nodding while you speak about others.";
	say "     Time seems to fly this time around, the earlier tension replaced with a much more calm and open atmosphere. Hunting parties leave and return with salvage, traders pass by and offer valuable goods, and the [if daytimer is day]warmth of the sun[else]chill of the night[end if] helps soothe your mind and body. You scarcely even notice that several hours have passed by the time that Bryony thanks for you for your service and ";
	if a random chance of 1 in 2 succeeds:
		say "hands you a little something to show her appreciation.";
		LineBreak;
		let randomnumber be a random number from 1 to 4;
		if randomnumber is:
			-- 1:
				say "[bold type]You gain some food![roman type]";
				increase carried of food by 1;
			-- 2:
				say "[bold type]You gain a water bottle![roman type]";
				increase carried of water bottle by 1;
			-- 3:
				say "[bold type]You gain a bag of chips![roman type]";
				increase carried of chips by 1;
			-- 4:
				say "[bold type]You gain a can of soda![roman type]";
				increase carried of soda by 1;
		LineBreak;
	else:
		say "sends you off again, feeling good about helping around the camp.";
	wait for any key;
	follow the turnpass rule;


to say BryonyTalkMenuImpure: [Runs when the player is not fully black equinoid]
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask about her behavior";
	now sortorder entry is 1;
	now description entry is "Ask Bryony why she's acting so standoffish";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask why she's so wary of outsiders";
	now sortorder entry is 2;
	now description entry is "Ask Bryony why she's cautious about non-equinoid forms";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask about her opinion on Amaryllis";
	now sortorder entry is 3;
	now description entry is "Dig for details on their relationship";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]100 - Nevermind[as]100[end link][line break]?";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if player consents:
				now sextablerun is 1;
				let nam be title entry;
				if (nam is "Ask about her behavior"):
					say "[BryonyTalkImpure1]";
				if (nam is "Ask why she's so wary of outsiders"):
					say "[BryonyTalkImpure2]";
				if (nam is "Ask about her opinion on Amaryllis"):
					say "[BryonyTalkImpure3]";
				wait for any key;
				say "[BryonyTalkMenuImpure]";
		else if calcnumber is 0:
			say "Break off the conversation?";
			if player consents:
				now sextablerun is 1;
				say "     You step back from Bryony, shaking your head slightly as she narrows her eyes at you.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say BryonyTalkImpure1:
	say "     Bryony lowers her weapon somewhat, though her brow furrows at your question. 'Why do you think, outsider? You've gone through our initiation rites, yet you have the audacity to parade yourself as a different form. What kind of example do you think you're setting for the rest of the herd?' The equinoid's muscles tense and she spits on the ground beside her. 'If Nakoma weren't here to berate me, I'd personally strip you of your membership and cast you back outside for this transgression.'";

to say BryonyTalkImpure2:
	say "     'You idiot!' the horse states simply, stamping a hoof against the earth with obvious agitation. 'How else should I respond? You disrespect the tribe with your image. Your incongruous form threatens to transform us, dismantling our scarce coalition of unity and peace. No quarter should be given unless you abide by our customs and superior forms.'";

to say BryonyTalkImpure3:
	say "     'I do not wish Amaryllis harm, for she has committed no crimes and broken no customs. This does not preclude me from finding her stubborn and churlish behavior disrespectful to the tribe. You demonstrate now the dangers of open invitation, for you shirk the advice of our wise leaders and flaunt a foreign form. That who-' Bryony starts, pausing with a frustrated huff before continuing, '-horse, has been nothing but trouble for us. You would do well to heed our leaders['] wishes and cleanse yourself of this contamination.'";


Instead of fucking Bryony:
	if player is blequinoidbodied:
		say "     Bryony smirks at your offer. 'Tempting, but I have a job to do. Sex is just another distraction that I cannot afford right now.'";
	else:
		say "     Bryony scowls at your offer. 'I would [italic type]never[roman type] indulge the thought of having sex with an impure creature like yourself!'";

Bryony ends here.
