German Shepherd Bitch by Kirov begins here.

"Adds a female variant of the German Shepherd to Flexible Survival's wandering monsters table."

Section 0 - Monster Variables, Flags, and Markers

gsbBuffer is a number that varies. [@Tag:Notsaved]			[ Buffer used to temporarily store values ]
gsbBuffer is usually 0.

gsbKatherine is a truth state that varies. [@Tag:Notsaved]	[ controls whether a particular encounter is with Katherine ]
gsbKatherine is usually false.

[ Energy of Katherine										- counts the number of consecutive player victories over Katherine ]
[ 0 = baseline			]
[ 3 = familiar			]
[ 5 = submissive		]
[ 7 = recruitable		]

[ HP of Katherine											- controls whether Katherine has been met for the first time ]
[ 0 - not yet met 		]
[ 1 - met				]

a postimport rule: [bugfixing rules for players that import savegames]
	repeat with y running from 1 to number of filled rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		if Name entry is "German Shepherd Bitch":
			now MonsterID is y;
			now area entry is "Outside";
			break;

Section 1 - Monster Description

to say gsbDescription:
	setmongender 4; [creature is female]
	if inasituation is true:
		say "";
	else:
		if HP of Katherine > 0 and a random chance of 1 in 3 succeeds:
			now gsbKatherine is true;
		else:
			now gsbKatherine is false;
			if HP of Katherine is 0 and a random chance of 1 in 3 succeeds:
				now HP of Katherine is 1;
		if gsbKatherine is true:
			[ The player is encountering Katherine ]
			project Figure of Katherine_icon;
			if Energy of Katherine < 3:
				say "     Walking along the street, you hear a familiar patter of pawsteps behind you. You turn and are not surprised when you're faced with the sight of an anthro canine sporting the distinctive coat pattern of a German shepherd. From the lack of clothes, it's quite apparent she's female. Your eyes are drawn to her B cup breasts and the sway of her hips as she walks, but her feminine curves are complemented by an athletic build and tough demeanor. 'Well, look who we have here. Trespassing on my turf again?' she says, [bold type]clearly recognizing you from past encounters.[roman type] From the way she carries herself, it's clear she's seen her fair share of scuffles and won, and the stance she takes as you finish taking her in tells you she intends to add one more to the list.";
			else if Energy of Katherine < 5:
				say "     Walking along the street, you hear a familiar patter of pawsteps behind you. You turn and are not surprised when you're faced with the sight of an anthro canine sporting the distinctive coat pattern of a German shepherd. From the lack of clothes, it's quite apparent she's female. Your eyes are drawn to her B cup breasts and the sway of her hips as she walks, but her feminine curves are complemented by an athletic build and tough demeanor. '[one of]You again? This ought to be a fun challenge,[or]Don't think I'll go easy on you this time! I'm tougher than I look,[or]You're going down this time. Then maybe we can have some fun my way afterwards,[or]You won't get me again! I've been training,[at random]' she says. [bold type]Clearly she's run into you before,[roman type] and she's not very happy about losing the fight. She takes a fighting stance and gives you a bring-it-on wave with her hand, eager to prove herself this time around.";
			else:
				say "     Walking along the street, you hear a familiar patter of pawsteps behind you. You turn and are not surprised when you're faced with the sight of an anthro canine sporting the distinctive coat pattern of a German shepherd. From the lack of clothes, it's quite apparent she's female. Your eyes are drawn to her B cup breasts and the sway of her hips as she walks, but her feminine curves are complemented by an athletic build and tough demeanor. 'Ooh, hey there [if Player is male]stud[else]sexy[end if]. How about a friendly spar so you can prove to me you're really an Alpha[if Player is male] male[else if Player is female] bitch[else][end if],' she says teasingly. [bold type]You recognize this particular bitch from past encounters,[roman type] and after beating her so many times, she clearly recognizes you as her Alpha, though she still wants you to prove it once again.";
		else:
			[ The player is encountering a random gsb ]
			say "     Walking along the street, you hear the soft patter of pawsteps behind you. Expecting to find a creature as you turn, you are instead faced with the sight of an anthro canine sporting the distinctive coat pattern of a German shepherd. From the lack of clothes, it's quite apparent she's female. Your eyes are drawn to her [one of]A[or]B[at random] cup breasts and the sway of her hips as she walks, but her feminine curves are complemented by an athletic build and tough demeanor. From the way she carries herself, it's clear she's seen her fair share of scuffles and won, and the stance she takes as you finish taking her in tells you she intends to add one more to the list.";

to say gsbAttack:
	say "[one of]The shepherd takes a swing at you, raking your skin with her claws.[or]She kicks out with her long legs, connecting with a resounding thump. You can really feel the power behind those thick thighs of hers![or]The dog pounces at you, nearly taking you down to the floor before you can escape her grasp and stand back up.[at random]";

Section 2 - Monster Victory Scenes

to say gsbVictory:          [Scene for when the GSB defeats the player]
	if gsbKatherine is true:
		now Energy of Katherine is 0;
	if inasituation is true:
		say "";
	else:
		if Player is male:
			now gsbBuffer is 0;
			say "[gsbDom]";
			CreatureSexAftermath "German Shepherd Bitch" receives "PussyFuck" from "Player";
		else if Player is female:
			[Placeholder scene]
			say "     The German shepherd bitch knocks you to the floor. She rifles through your stuff for anything of value before stripping you naked. She sees your female parts and decides she's not interested. Then she turns to depart, leaving you to recover on your own.";
		else:
			[Placeholder scene]
			say "     The German shepherd bitch knocks you to the floor. She rifles through your stuff for anything of value before stripping you naked. She sees your neuter parts and decides she's not interested. Then she turns to depart, leaving you to recover on your own.";

Section 3 - Monster Defeat Scenes

to say gsbDefeat:           [Scene for when the player defeats the GSB]
	if gsbKatherine is true:
		increase Energy of Katherine by 1;
	if inasituation is true:
		say "";
	else:
		say "     The German shepherd bitch stumbles from your final blow, clearly struggling to keep her balance. She drops to one knee to avoid falling flat on her ass, breathing heavily as she does so. You keep yourself at the ready as she struggles to stand back up, the tough bitch clearly eager to stay in the fight. But her body betrays her, and she collapses down onto all fours before you, head hanging in defeat.";
		if gsbKatherine is true and Energy of Katherine > 4:
			say "     The bitch looks back up at you from the ground, panting heavily in excitement. She's clearly turned on by being beaten by such a strong opponent. She gives you an imploring look as she whines in need, expecting you to claim her as your own. 'Please,' she begs in a needy voice. 'I need an Alpha to fuck me!'";
		else if gsbKatherine is true and Energy of Katherine > 2:
			say "     The bitch looks back up at you from the ground, panting heavily in excitement. She's clearly turned on by being beaten by such a strong opponent. She gives you an imploring look as she whines in need, but says nothing more. Perhaps she's starting to enjoy your victories over her.";
		say "     The fight with the bitch has gotten you a bit excited. If you wanted to have some fun, you could easily take this opportunity to use her for your own desires. [bold type]Do you take advantage of the fallen shepherd?[roman type][line break]";
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		if Player is male:
			choose a blank row in table of fucking options;
			now title entry is "Fuck Her";
			now sortorder entry is 1;
			now description entry is "Show the bitch a good time by fucking her pussy";
			[]
			if gsbKatherine is true and Energy of Katherine > 6 and HP of Katherine < 2:
				choose a blank row in table of fucking options;
				now title entry is "Recruit Her";
				now sortorder entry is 2;
				now description entry is "Make her YOUR bitch";
				[]
		if Player is female:
			choose a blank row in table of fucking options;
			now title entry is "Receive Oral";
			now sortorder entry is 3;
			now description entry is "Put the bitch's mouth to work on your pussy";
		[]
		choose a blank row in table of fucking options;
		now title entry is "Eat Her Out";
		now sortorder entry is 9;
		now description entry is "Make up for the fight by licking her pussy";
		[]
		repeat with y running from 1 to number of filled rows in table of fucking options:
			choose row y from the table of fucking options;
			say "[link][y] - [title entry][as][y][end link][line break]";
		say "[link]0 - Let her go[as]0[end link][line break]";
		now calcnumber is -1;
		while sextablerun is 0:
			say "Pick the corresponding number> [run paragraph on]";
			get a number;
			if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
				now current menu selection is calcnumber;
				choose row calcnumber in table of fucking options;
				say "[title entry]: [description entry]?";
				if Player consents:
					let nam be title entry;
					now sextablerun is 1;
					if nam is "Fuck Her":
						say "[gsbDefeatSex1]";
					else if nam is "Recruit Her":
						say "[gsbRecruitSex1]";
					else if nam is "Receive Oral":
						say "[gsbDefeatSex2]";
					else if nam is "Eat Her Out":
						say "[gsbDefeatSex3]";
					wait for any key;
			else if calcnumber is 0:
				say "     Deciding you're not in the mood, you wave the German shepherd off and move on, leaving her to recover from the fight.";
				now sextablerun is 1;
		clear the screen and hyperlink list;

to say gsbDefeatSex1:			[pussy fuck]
	if gsbKatherine is true:
		if Energy of Katherine < 3:
			now gsbBuffer is 0;
			say "[gsbFuck]";
		else if Energy of Katherine < 5:
			now gsbBuffer is 1;
			say "[gsbFuck]";
		else:
			say "[gsbFuckKatherine]";
	else:
		say "[gsbFuck]";
	CreatureSexAftermath "German Shepherd Bitch" receives "PussyFuck" from "Player";

to say gsbDefeatSex2:			[female player receives oral]
	if gsbKatherine is true:
		say "[gsbOralKatherine]";
	else:
		say "[gsbOral]";
	CreatureSexAftermath "German Shepherd Bitch" receives "OralPussy" from "Player";

to say gsbDefeatSex3:			[eat her out]
	if gsbKatherine is true and Energy of Katherine > 4:
		now gsbBuffer is 0;
		say "[gsbPleasureKatherine]";
	else:
		say "[gsbPleasure]";
	CreatureSexAftermath "Player" receives "OralPussy" from "German Shepherd Bitch";

Section 4 - Monster Sex Scenes

to say gsbDom:
	[ requires gsbBuffer parameter to be set ]
	[ 0 - Encounter with GSB in the wild ]
	[ 1 - Katherine after recruiting ]
	if gsbBuffer is 1:
		say "     Sensing you want her to take charge, Katherine saunters over to you with a wicked smile, and grabs you rather possessively. 'I can tell my Alpha likes a girl who's willing to take what she wants from time to time,' she says as she pulls you in close and gives you a seductive lick across the lips. The feeling of her wet canine tongue tickles, and the strong grip of her paws around your hips leaves you shuddering and at her mercy. She growls assertively before guiding you down onto your back, where she eagerly strips you and prepares to mount your quickly hardening [Cock of Player] cock.";
	else if HP of Player > 0: [Player submitted]
		say "     Happy with your submission, the German shepherd bitch roughly pushes you to the ground, a little over-eager to have her way with you. She begins divesting you of your gear and clothes, and at first, you're afraid she's going to take them and leave you bare to fend for yourself. 'Don't worry, babe,' she says calmly. '[one of]I'm not gonna hurt you. Too much[or]You won't be needing these for what I have planned[at random].' She climbs on top of you, straddling you with her powerful legs and leaving you helpless to do anything but go along for the ride.";
	else: [Player defeated]
		say "     Defeated, you stumble back from the German shepherd bitch before falling to your knees. You look up at her to see a wicked grin on her face. With your face now at crotch level, it's easy to see how excited the fight has made her, and you can already smell her arousal. She slowly saunters over to you, swaying her hips seductively, before she gently reaches out and gives you the tiniest of nudges. With your body still too weak from the fight, it's enough to send you toppling to the floor. 'Ha! Too easy,' she says as she begins to strip you naked. 'Time to have a little fun.' You're unable to resist as she climbs atop you and straddles your hips with her powerful legs.";
	say "     Now that she has you exactly where she wants you, the bitch begins to slowly and sensually gyrate her hips against your crotch, raising her arms up in the air and shaking her bust to give you a little show. The sight of her well-toned body on display before you quickly brings you to full mast. Smiling at you all the while, she gives a possessive growl as she feels your [Cock of Player] member harden between her legs. You're tempted to reach up and play with her body, but before you can, she leans down and grabs you by the wrists, pinning you down in place. You moan helplessly in pleasure as she rubs her now-dripping pussy against your shaft, teasing you with the promise of being inside her. She keeps you locked in place for some time, eagerly grinding against you for her own pleasure.";
	WaitLineBreak;
	say "     The dominant hound coats your [Cock of Player] member in her feminine juices, clearly turned on by watching you squirm and writhe beneath her. But her patience begins to wear thin, as she reaches down and grabs you by the base, guiding you inside her pussy. You both gasp in pleasure as you finally slip into her depths. Her nethers are warm and slick, and you're astonished at how sinfully tight she is. She slowly sinks down onto your [cock size desc of player] cock, taking you all the way to the hilt. She pauses for a moment to adjust to the sensation, her doggy tongue dangling from her mouth as she pants in pleasure. Then, without loosing her grip on you, she raises herself from your crotch until just the tip of your penis remains inside her. The coldness of the air bites at your skin as you are removed from her warm embrace, but only for a split second. She slams her hips down again, returning you to the warmth of her canine muff. The female shepherd repeats the process several more times, slowly building up to a pace that soon has the both of you reeling in ecstasy.";
	say "     Lost in the throes of passion, her grip on your wrists begins to loosen. With the excitement of your romp with the lustful doggy, you barely even notice, but your hands, now free from their prison, naturally drift to her hips on their own. Her own paws begin to wander over your [bodytype of player] body, exploring every curve and stroking gently against her mate. She howls to the sky as you start meeting her thrusts with your own, doubling the intensity of your shared bliss. She may have put on a tough-dog attitude for your fight, but she's clearly a wanton slut for cock. Eventually, you can hold out no longer. Your member throbs as you orgasm, releasing your seed inside her. The feeling of your [cum load size of player] load being pumped inside her is enough to send the bitch over the edge, and she orgasms along side you. Her pussy clenches tight around you, milking you for everything you have.";
	WaitLineBreak;
	say "     The German shepherd collapses on top of you as her orgasm comes to an end. She nuzzles into the crook of your neck, and you reach up to embrace her, enjoying the feel of her soft fur between your fingers. Her tail wags at your touch, and the two of you rest in each others arms as you come down from your highs. She gives a contented sigh as you soften and slip out with a splash of cum. She sits up and gives you a slobbery doggy kiss on the cheek. 'Thanks for the amazing fuck, handsome. [if gsbBuffer is 1]I'm glad to have you as my Alpha[else]Maybe we can make an Alpha out of you someday yet[end if],' she says with a suggestive wink before leaping up and leaving you to your own devices.";

to say gsbFuck:
	[ requires gsbBuffer parameter to be set ]
	[ 0 - rough ]
	[ 1 - enjoyable ]
	say "     Deciding your in the mood to use the bitch's pussy, you walk up to the anthro dog and grab her roughly by the scruff of the neck. You nearly lift her off the ground as you throw her onto her back. She grunts at your rough treatment, but [if gsbBuffer is 0]the defeated shepherd is too exhausted to resist[else]she smiles nonetheless, knowing what's coming next from your past encounters[end if]. You strip off your vestments before kneeling down before her. Gripping her legs to make sure she can't get away, you lift them up to your shoulders and spread them apart to expose her canine snatch. You flop your hardened [Cock of Player] member atop her fluffy mound, which elicits a slutty moan from the German shepherd. You tease her about how much she seems to enjoy it, to which she replies by [if gsbBuffer is 0]turning her head away and avoids your gaze, suppressing any further moaning[else]giving a happy bark and a wag of her tail[end if].";
	WaitLineBreak;
	say "     You slide your cock back and forth across her pussy, making sure to drag it across her sensitive clit each time. A shudder runs up her spine at your touch, and you smile knowingly as her juices begin to flow. You continue until [if gsbBuffer is 0]the hardened expression on her face begins to soften[else]she begins to whimper at your teasing[end if], then suddenly thrust yourself inside her without warning. She shouts out in surprise, her eyes going wide at the sensation. Sinking yourself down to the hilt, you give a sigh of pleasure as you revel in the tightness of her cunt. You hold yourself there for a moment before slowly pulling out to the tip, the bitch subconsciously whining as she feels you depart.";
	say "     A chuckle escapes from your mouth at the cute noises she's making, and she blushes before [if gsbBuffer is 0]growling at you, attempting to recover at least some of her dignity[else]looking away in embarrassment[end if]. Undeterred, you start to pick up the pace regardless, thrusting in and out of her. You fuck the German shepherd bitch long and hard, enjoying the sensations of her wonderful pussy. Despite her [if gsbBuffer is 0]resistance[else]embarrassment[end if], you do your best to make sure she enjoys it as well, varying the angle of your thrusts and probing her sensitive g-spot with your [Cock of Player] shaft.";
	WaitLineBreak;
	say "     Your efforts are soon rewarded. You look down to see the brown and black dog with her eyes glazed over and her tongue lolling out as she loses herself in your shared pleasure. Releasing her legs, you bring your face down to her muzzle and assault her mouth in a sloppy kiss. She puts up no resistance as you explore her muzzle with your tongue. Then it's your turn to be surprised as the [if gsbBuffer is 0]formerly resistant [end if]bitch eagerly begins returning the kiss, her long doggy tongue quickly overpowering your own. You reach up your hands to caress her breasts, further stimulating her as you continue to pound and kiss her. It's too much for the horny canine, and she moans into your mouth as she climaxes. Her pussy clamps down around you, and the tightness pushes you into your own orgasm. Your lips parting, you both cry in ecstasy as you fill her with your seed.";
	say "     You pant heavily as you finish spurting inside her. When you finally finish, you give her a quick peck on the nose before pulling out and standing back up. Still exhausted both from the fight and now your long fuck-session, she remains resting on the ground as you dress. She keeps her legs parted, giving you nice view of your handiwork as it begins to dribble out of her. She stares at the mess longingly, perhaps imagining herself filled with your pups. [if gsbBuffer is 0]If you ever run into her again, maybe next time she won't be so resistant[else]You can tell she really enjoyed it[end if].";

to say gsbFuckKatherine:
	say "     Deciding your in the mood to use the bitch's pussy, you tell her as much and eagerly begin stripping off your clothes. She gives a happy bark at your decision and lays down on her back, raising her legs in the air to present you with her already damp muff. 'Well aren't you a slutty little doggy,' you say as you watch her eagerly get into position without you having to lift a finger. 'Anything for my Alpha,' she moans back at you, slowly beginning to finger her cunny as you kneel down before her. You lay your [Cock of Player] member atop her fluffy mound, and a slutty moan escapes from the bitch's muzzle as she wags her tail in happiness.";
	WaitLineBreak;
	say "     Grabbing her by the hips, you slide your cock back and forth across her pussy, making sure to drag it across her sensitive clit each time. A shudder runs up her spine at your touch, and you smile knowingly as her juices begin to flow. 'Please Alpha,' she says, looking adoringly up at you. 'Make me yours. Make me your bitch.' You continue teasing her until she looks as though she's ready to pass out from pleasure, then suddenly thrust yourself inside her without warning. She shouts out in surprise, her eyes going wide at the sensation before she relaxes her muscles and takes you inside. You know she's yours now. Sinking yourself down to the hilt, you give a sigh of pleasure as you revel in the tightness of your bitch's cunt. You hold yourself there for a moment before slowly pulling out to the tip, your bitch subconsciously whining as she feels her Alpha depart.";
	say "     A chuckle escapes from your mouth at the cute noises she's making, and she blushes as you sink yourself inside her again. Sensing she's ready for more, you begin to pick up the pace and really pound her, thrusting in and out. You fuck the German shepherd bitch long and hard, enjoying the sensations of her wonderful pussy. Knowing your duty as her Alpha, you do your best to make sure she enjoys it as well, varying the angle of your thrusts and probing her sensitive g-spot with your [Cock of Player] shaft. 'Yes!' she screams up into the air. 'Fuck me Alpha. Fuck me hard. I want to feel your cum inside me.' Turned on by her dirty talk, you tell her you're going to fuck her senseless, and you redouble your efforts until her shouts turn to nothing but unintelligible barks and growls.";
	WaitLineBreak;
	say "     Your efforts are soon rewarded. You look down to see the brown and black dog with her eyes glazed over and her tongue lolling out as she loses herself in your shared pleasure. Releasing her hips, you bring your face down to her muzzle and assault her mouth in a sloppy kiss. She puts up no resistance as you explore her muzzle with your tongue. Then it's your turn to be surprised as your bitch eagerly begins returning the kiss, her long doggy tongue quickly overpowering your own. You reach up your hands to caress her breasts, further stimulating her as you continue to pound and kiss her. It's too much for the horny canine, and she moans into your mouth as she climaxes. Her pussy clamps down around you, and the tightness pushes you into your own orgasm. Your lips parting, you both cry in ecstasy as you fill her with your seed, marking her as yours.";
	say "     You pant heavily as you finish spurting inside her. When you finally finish, you give her a quick peck on the nose before pulling out and standing back up. Exhausted from your long fuck-session, she remains resting on the ground as you redress. She keeps her legs parted, giving you nice view of your handiwork as your [cum load size of player] load begins to dribble out of her. She stares at the mess longingly, perhaps imagining herself filled with your pups. 'Thank you Alpha' she says as she wipes up some of your cum with her paw, then slowly licks it clean with a smile, enjoying the taste.";

to say gsbOral:
	say "     Deciding to put her mouth to good use, you grab the German shepherd and roll her over on to her back. She gives a grunt as you roughly handle her, but she's unable to resist you after the fight. Swinging one leg up and over the dog, you straddle her torso, pinning her down beneath you. Her ears flatten against her head, embarrassed at the submissive position she now finds herself in. You smile at her predicament. Seeing her lovely breasts on display, you reach down and give them a loving squeeze. She stifles a moan at your touch, then gives a stubborn growl, clearly telling you how unhappy she is with the situation.";
	say "     You grab her by the head with both hands and bring your crotch to her face. 'Better start licking, bitch,' you say to her. She gives a hesitant whine before deciding she has no other choice. Her long doggy tongue darts forth from her muzzle, taking exploratory laps at your pussy. You give a short cry as you feel her moist digit tease against your labia. Apparently a little turned on by your reaction, the unwilling bitch finally relents and starts to become more vigorous with her licking.";
	WaitLineBreak;
	say "     Her forceful tongue pushes further into your cunt with each lap, spreading your lips apart. Pleasure courses through your body as she services you, and you pet her head like a dog to reward her behavior. Your feminine juices begin to leak down and across her face, soaking her brown fur in your scent. Perhaps eager to get you off so she can be free, she changes tactics and withdraws her tongue to lick at your clit. You gasp at the sensation, once again tightening your grip and pressing her muzzle against you, much to her chagrin.";
	say "     Riding the shepherd's face for some time, you eventually hit your limit and come to a wonderful climax. Your femcum leaks out onto the bitch beneath you, further soaking her already drenched face. She'll be marked with your scent for some time. As you come down from your high, you reluctantly step up from the German shepherd and grab your gear. Your cowed opponent remains on the floor until you pull her up. She's still bitter about her treatment, but you thank her nonetheless and send her on her way with a pat on the ass.";

to say gsbOralKatherine:
	say "     Deciding to put her mouth to good use, you grab the German shepherd and roll her over on to her back. She wiggles within your grip as you handle her, eager for what's to come. Swinging one leg up and over the dog, you straddle her torso, pinning her down beneath you. Her ears perk up, and she licks her lips as her gaze fixes on your crotch. Looking down and seeing her lovely breasts on display, you reach out and give them a loving squeeze. She lets out a slutty moan as you caress her, loving the feel of your hands on her body.";
	say "     You then grab her by the head with both hands and bring your crotch up to her face. 'Be a good bitch and start licking' you say to her. She gives you a smile before setting to her task with enthusiasm. Her long doggy tongue darts forth from her muzzle, taking exploratory laps at your pussy. You give a short cry as you feel her moist digit tease against your labia. Turned on at pleasing her Alpha, the obedient bitch reaches around to grab you by the ass and starts to become more vigorous with her licking.";
	WaitLineBreak;
	say "     Her forceful tongue pushes further into your cunt with each lap, spreading your lips apart. Pleasure courses through your body as she services you, and you pet her head like a dog to reward her behavior. Your feminine juices begin to leak down and across her face, soaking her brown fur in your scent. Eager to prove her worth to her partner, she changes tactics and withdraws her tongue to lick at your clit. You gasp at the sensation, once again tightening your grip and pressing her muzzle against you, much to her delight.";
	say "     Riding the shepherd's face for some time, you eventually hit your limit and come to a wonderful climax. Your femcum leaks out onto the bitch beneath you, further soaking her already drenched face. She'll be marked with your scent for some time. As you come down from your high, you reluctantly step up from the German shepherd and grab your gear. Your willing bitch remains on the floor until you help her up, complementing her on a job well done. Wagging her tail at your praise, she thanks you, and you send her on her way with a pat on the ass.";

to say gsbPleasure:
	say "     You flip the German shepherd bitch over on to her back and walk around to kneel down between her legs. The dog is too exhausted to resist you, and you spread her legs to expose her pussy. A faint scent of arousal wafts up into the air, which only strengthens as you bring your face closer to her furry mound. The dazed shepherd gives a huff, surprised that you would pleasure her rather than take her for yourself. She visibly relaxes, and you lower your head to nuzzle into her crotch.";
	say "     The scent of her pussy becomes overwhelming as you bury your face into the fluff surrounding her nethers. You struggle at first to find her lips among the tangle of fur, to which the recovering canine gives a small chuckle. That chuckle turns to a gasp as you finally find your mark, and you begin eagerly licking away. You tighten your grip around her thighs as you set to work, lapping at the bitch's pussy with enthusiasm. As the horny canine's arousal grows, she becomes more bold, and you feel a paw reach down to stroke over your head.";
	WaitLineBreak;
	say "     Sensing no malintent from the defeated dog, you allow her to continue with her groping. You rather enjoy the feeling of her fingers trailing through your hair as you eat her out, and you return your attention to the juicy muff before you. You take things up a notch and begin probing between her lips with your tongue. She growls appreciatively at your ministrations, enjoying the attention. You withdraw to bring your tongue to her clit, which elicits a moan and a tightening grip on your head. You play with her like this for some time, swapping between tongue-fucking her and swirling around her sensitive nub.";
	say "     Eventually, the stimulation proves to much for her, and you feel the walls of her pussy clamp down rhythmically around your tongue. You pick up the pace as she climaxes, and her femcum splurts across your face. Left panting from your oral skills, the shepherd releases your head and relaxes back into the ground. Licking your lips clean of her juices, you stand back up and redress before leaving her to recover.";

to say gsbPleasureKatherine:
	if gsbBuffer is 1:
		say "     You push Katherine down on to the ground so that she's resting on her back. She looks up at you longingly, begging for attention from her Alpha. Deciding to give her just that, sink down on the ground between her legs, spreading them apart to expose her pussy. A faint scent of arousal wafts up into the air, which only strengthens as you bring your face closer to her furry mound. The shepherd gives a pleased huff, happy to receive such a treat from her mate. She lies back and relaxes, and you lower your head to nuzzle into her crotch.";
	else:
		say "     You approach the defeated German shepherd, and she looks up at you longingly, begging for attention from her Alpha. Deciding to give her just that, you twirl your finger in a gesture to roll over like a dog, and the obedient bitch happily complies. You walk around to kneel down between her legs and spread them to expose her pussy. A faint scent of arousal wafts up into the air, which only strengthens as you bring your face closer to her furry mound. The shepherd gives a pleased huff, happy to receive such a treat from her mate. She lies back and relaxes, and you lower your head to nuzzle into her crotch.";
	say "     The scent of her pussy becomes overwhelming as you bury your face into the fluff surrounding her nethers. You struggle at first to find her lips among the tangle of fur, to which the recovering canine gives a small chuckle. That chuckle turns to a gasp as you finally find your mark, and you begin eagerly licking away. You tighten your grip around her thighs as you set to work, lapping at the bitch's pussy with enthusiasm. As the horny canine's arousal grows, she becomes more bold, and she reaches her paws down to stroke over your head.";
	WaitLineBreak;
	say "     Encouraging you with her touch, she keeps you pressed up against her crotch. You rather enjoy the feeling of her fingers trailing through your hair as you eat her out, and you return your attention to the juicy muff before you. You take things up a notch and begin probing between her lips with your tongue. She growls appreciatively at your ministrations, enjoying the attention. You withdraw to bring your tongue to her clit, which elicits a moan and a tightening grip on your head. You play with her like this for some time, swapping between tongue-fucking her and swirling around her sensitive nub.";
	say "     Eventually, the stimulation proves to much for her, and you feel the walls of her pussy clamp down rhythmically around your tongue. You pick up the pace as she climaxes, and her femcum splurts across your face. Left panting from your oral skills, the shepherd releases your head and relaxes back into the ground. Licking your lips clean of her juices, you stand back up to see her totally passed out in bliss. You smile, knowing she's come to love being your bitch, then quickly redress before leaving her to recover.";

to say gsbRecruitSex1:
	say "     Seeing the dog down on her hands and knees fills you with the desire to take her like the bitch she is. You walk around behind her to get a better view of her ass. The horny slut obliges you, lifting her tail to show off her dripping pussy and looking back at you with a needy whine. You quickly strip naked before kneeling down behind her, allowing your hardening [cock of player] shaft to rest against her slit. You grope her toned butt, enjoying the feel of her soft fur and warm flesh in your hands. Then you reach up and stroke her back, petting her like a dog. 'Are you gonna be a good bitch for me?' you ask.";
	say "     The German shepherd gives you another needy whine before thrusting backwards, trying to spear herself against you. You quickly grab the scruff of her neck to hold her in place, teasing her entrance, but not yet slipping inside. 'Well?' you ask again.";
	say "     'Yes!' she barks. 'Yes! I'll be a good bitch. I'll be [italic type]your[roman type] good bitch.' That's what you wanted to hear. You let go of her neck, and she almost knocks you backwards as she eagerly pushes herself onto your cock. You bring your hands to her hips and start to meet her thrusts with your own. Soon you're rutting away at the sexy canine like nothing else matters.";
	WaitLineBreak;
	say "     You lean over the bitch's back to get a better angle on her snatch, groping her breasts. You bring your head level with her own, where you can hear her pant and moan with every thrust. 'You know,' you whisper into her hear . 'I could fuck you like this everyday if you come home with me.' You tweak one of her nipples, eliciting a sharp yip. 'So what do you say? Wanna come back to my place?'";
	say "     She doesn't even hesitate to give you her response. 'Yes!' she barks at you again. 'I wanna go home with you. I want you to fuck me and fill me with cum every chance you get. I want to be your bitch, for you to use whenever you want!' The thought of being yours, combined with your enthusiastic thrusting, makes her cum on the spot. You smile at yourself in victory. You've managed to take this strong, powerful canine and tame her. You don't let up, continuing to pound her quivering love-hole.";
	say "     You finally reach your own climax, moaning as you pump your [cum load size of player] load into her. You slump down on top her, then roll over, bringing her with you. The two of you lay there, recovering from your ordeal. 'I'm Katherine, by the way,' she says to you. It catches you off guard, but you suddenly realize you never even knew her name, despite all your past encounters. You introduce yourself, and the two of you chitchat for a bit as you cuddle. When you finally get up and redress, you feel like you know Katherine a little better, which is good, since she's decided to move into the Rec Room in the library you told her about.";
	now Energy of Katherine is 0;
	NPCSexAftermath Katherine receives "PussyFuck" from Player;
	move Katherine to Makeshift Rec Room;
	now HP of Katherine is 2;

Section 5 - Monster Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	say "[gsbInsert]";

to say gsbInsert:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "German Shepherd";
	add "German Shepherd Bitch" to infections of CanineList;
	add "German Shepherd Bitch" to infections of FurryList;
	add "German Shepherd Bitch" to infections of NatureList;
	add "German Shepherd Bitch" to infections of FemaleList;
	add "German Shepherd Bitch" to infections of TaperedCockList;
	add "German Shepherd Bitch" to infections of KnottedCockList;
	add "German Shepherd Bitch" to infections of SheathedCockList;
	add "German Shepherd Bitch" to infections of BipedalList;
	add "German Shepherd Bitch" to infections of TailList;
	now Name entry is "German Shepherd Bitch";
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[gsbAttack]";
	now defeated entry is "[gsbDefeat]";
	now victory entry is "[gsbVictory]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block]
	now desc entry is "[gsbDescription]";
	now face entry is "distinctly canine, with a long canine muzzle filled with sharp teeth and a pair of expressive pointed ears atop your head";
	now body entry is "that of a bipedal dog, with digitigrade legs and paw-like hands";
	now skin entry is "coarse, brown and black furred";
	now tail entry is "Behind you is a dog's tail, which whips about expressively and frequently betrays your mood.";
	now cock entry is "[if looknow is 1]shaft, surrounded in a tight sheath surrounded by [Skin of Player] skin, protecting the wonderfully sensitive German shepherd[else][one of]knotted[or]animalistic canine[or]doggy[at random][end if]";
	now face change entry is "it draws forward into a canine muzzle, which rapidly fills with teeth and a broad, lolling tongue. At the same time, your ears become more pointed and expressive and migrate towards the top of your now canine head";
	now body change entry is "your legs bend and twist into digitigrade form with soft subtle snaps of flowing bones. You look down to see your feet becoming entirely paw-like and your hands become somewhat paw-like with dull black claws in the tips";
	now skin change entry is "fur begins to push through from underneath, soon covering you in a coarse, protective coat of brown and black fur";
	now ass change entry is "a long tail pushes from your spine. It rushes straight out, then curls between your legs at the feeling of shock as you study the appendage";
	now cock change entry is "your shaft tapers out, becoming slender, though a huge swelling comes into being towards the base, a knot. The skin turns reddish before the whole thing slowly withdraws into a sheath you didn't have a moment ago";
	now str entry is 12;
	now dex entry is 13;
	now sta entry is 14;
	now per entry is 12;
	now int entry is 12;
	now cha entry is 10;
	now sex entry is "Female"; [ Defines which organs will be altered by the infection. current options are 'Male' 'Female' 'Both']
	now HP entry is 20;
	now lev entry is 3;
	now wdam entry is 5; [ Amount of Damage monster Does when attacking.]
	now area entry is "Outside";
	now Cock Count entry is 0; [ Used in infection Calculations, if cocks > 0 shaft will grow to cock length & girth dimensions slowly]
	now Cock Length entry is 0; [ Length infection will make cock grow to if cocks > 0 ]
	now Ball Size entry is 0; [ Width Infection will make cock grow to is cocks > 0 ]
	now Nipple Count entry is 8; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 4; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0;
	now Cunt Count entry is 1; [ if > 0 and sex = female or both, indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 8;
	now Cunt Tightness entry is 3;
	now SeductionImmune entry is false;
	now libido entry is 20; [ Amount libido goes up by if you submit or are defeated by this monster ]
	now loot entry is "german shepherd bitch fur";
	now lootchance entry is 50; [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]muscled[or]animalistic[at random]";
	now type entry is "canine"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is "German Shepherd Male"; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default"; [ Row used to designate any special combat features, "default" for standard combat. ]
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is "German Shepherd";
	now Name entry is "German Shepherd Bitch"; [matching infection name to Table of Random Critters]
	now Body Weight entry is 4; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 8; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 8; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is "your ears are drawn upwards to the top of your head, standing upright in pointy wedges. A moderately broad muzzle pushes forward to give you the head of a German shepherd"; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is "a German shepherd with [Head Color of Player] fur"; [partial sentence that fits in "Your face and head resemble that of [Head Description of Player]. You have [Eye Adjective of Player], [Eye Color of Player] eyes and an overall [Gender Adjective of Player] appearance."]
	now Head Adjective entry is "canine"; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is "furred"; [one word descriptive adjective]
	now Head Color entry is "tan"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is ""; [partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 0; [hair length in inches]
	now Hair Shape entry is "straight"; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is "brown"; [one word color descriptor]
	now Hair Style entry is "buzzcut"; [one word style descriptor (ponytail/mohawk/buzzcut/...) to fit "On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style."]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...) to go into "You have a [Hair Color of Player] [Beard Style of Player]."]
	now Body Hair Length entry is 0; [numerical value, 0 to 5 (none/smooth/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is "amber"; [one word color descriptor]
	now Eye Adjective entry is "round"; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 10; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 7;
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is "long"; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is "pink"; [one word color descriptor]
	now Tongue Length entry is 7; [length in inches]
	now Torso Change entry is "tan and black hair sprouts all over it, giving you a shiny coat of dense fur"; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is "covered in a dense coat of [Torso Color of Player] fur"; [partial sentence, fitting in "Looking down at yourself, you appear [Gender Adjective of Player] with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 1], covered in [Torso Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Torso Color of Player] skin[end if]."]
	now Torso Adjective entry is "canine"; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [torso adornments of Player]."]
	now Torso Skin Adjective entry is "furred"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Torso Color entry is "tan and black"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Torso Pattern entry is ""; [single word color adjective for the dominant pattern of the skin/fur/feathers/scales]
	now Breast Adjective entry is "pointy"; [adjective(s) example: round, pointy, perky, saggy, bouncy. This would serve as either a general appearance of a infections breasts or possibly something that may be effected by a item or NPC.]
	now Breast Size entry is 4; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Nipple Count entry is 8; [count of nipples]
	now Nipple Color entry is "pink"; [one word color descriptor]
	now Nipple Shape entry is "oval"; [shape example: any shape will do as long as it has a baseline with a current infection or item]
	now Back Change entry is ""; [partial sentence that fits in: "Your back [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Back Change entry]."]
	now Back Adornments entry is ""; [partial sentence to fit: "Your back tickles with the feeling of movement caused by [back adornments of Player]."]
	now Back Skin Adjective entry is "furred"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Back Color entry is "tan"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is "your fingernails grow into blunt claws and tan fur spreads over your paw-hands, then moves up towards your shoulders"; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is "covered in [Arms Color of Player] fur, ending in paw-hands with blunt claws"; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is "furred"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Arms Color entry is "tan"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Locomotion entry is "bipedal"; [one word adjective: (bipedal/quadrupedal/octapedal/serpentine/sliding)]
	now Legs Change entry is "they shift into the digitigrade stance of an anthro German shepherd with dense, tan fur, ending in a pair of paws"; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is "that of an anthro German shepherd, with dense, [Legs Color of Player] fur covering them from your hips down to the clawed paws"; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is "furry"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is "tan"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is "it becomes fairly narrow and small, with tan fur sprouting over it"; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is "ass, covered dense tan fur"; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [ass shape adjective of Player] [ass description of Player]."]
	now Ass Skin Adjective entry is "furry";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is "tan"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 2; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is "a mid-length canine tail sprouts from your tailbone, soon covered in tan fur"; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is "mid-length tail with [Tail Color of Player] fur"; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is "furry"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is "tan"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 8; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite (< 3), shallow (< 5), average (< 9), deep (< 15), bottomless (15+)"]
	now Asshole Tightness entry is 2;
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "extremely tight, tight, receptive, open, gaping"]
	now Asshole Color entry is "pink"; [one word color descriptor]
	now Cock Count entry is 0;
	now Cock Girth entry is 0; [thickness 1-5, generates the Cock Girth Adjective]
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 0; [length in inches]
	now Cock Change entry is "it takes on a reddish color and canine shape, complete with a pointy tip, knot at the base and a sheath to protect it"; [partial sentence that fits in: "Your cock [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is "is [Cock Color of Player] and has a pointy tip and a knot at the base, as well as a sheath to protect it when not erect"; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [cock adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock description of Player]."]
	now Cock Adjective entry is "canine"; [one word adjective: avian/canine/...]
	now Cock Color entry is "red"; [one word color descriptor]
	now Ball Count entry is 0;
	now Ball Size entry is 0; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is "balls in a furry, snug sack"; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [ball description of Player]."]
	now Cunt Count entry is 1;
	now Cunt Depth entry is 8; [length in inches]
	now Cunt Tightness entry is 3;
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Change entry is "it takes on a canine appearance, complete with a clit at the top"; [partial sentence that fits in: "Your groin [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt Change entry]."]
	now Cunt Description entry is "is [Cunt Color of Player]-colored and shaped like that of a canine bitch, with delicate nether lips and the clit at the top"; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [cunt description of Player]."]
	now Cunt Adjective entry is "canine"; [one word adjective: avian/canine/...]
	now Cunt Color entry is "pink"; [one word color descriptor]
	now Clit Size entry is 2; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
]

Table of Game Objects (continued)
name	desc	weight	object
"german shepherd bitch fur"	"A tuft of tan fur that looks like it has been pulled out of the coat of a German shepherd. It's nicely soft."	0	german shepherd bitch fur

german shepherd bitch fur is a grab object.
Usedesc of german shepherd bitch fur is "[gsbFurUse]".

It is temporary.

to say gsbFurUse:
	say "Holding the tuft of fur between your fingers, you stroke over it, delighted in its softness. Strangely, the hair disintegrates after a while, becoming a cloud of fine particles that are absorbed into your skin.";
	infect "German Shepherd Bitch";

instead of sniffing german shepherd male fur:
	say "The fur has a pleasing, not too strong, animal-like scent.";

to say gsdheatstart:
	if heatform is 0:
		increase Cunt Tightness of Player by 1;
	else:
		increase Libido of Player by 5;

to say gsdheatend:
	if heatform is 0:
		decrease Cunt Tightness of Player by 1;
		if Cunt Tightness of Player is 0, now Cunt Tightness of Player is 1;

Table of infection heat (continued)
infect name	heat cycle	heat duration	trigger text	description text	heat start	heat end	inheat	fheat (truth state)	mpregheat (truth state)	mpregtrigger
--	--	--	--	--	--	--	--	--	--	--

When Play begins:
	Choose a blank row from Table of infection heat;
	now infect Name entry is "German Shepherd Bitch";
	now heat cycle entry is 7;
	now heat duration entry is 2;
	now trigger text entry is "A sudden throb between your legs catches you off guard, startling a whimper from your throat as you feel a rush of heat between your legs. Nested between your thighs, your canine spade begins to puff up and swell, engorging and becoming looser, a slow but constant seepage of lubricating fluids starting to run down your thigh, making a mess of your [SkinSpeciesName of Player in lower case] flesh. You are in heat, and your body is making it easy for any male to find and impregnate you.";
	now description text entry is "swollen and dripping German shepherd twat ";
	now heat start entry is "[gsdheatstart]"; [Events that trigger at the start of the Heat, in the female-GSD case it increases the cunt width]
	now heat end entry is "[gsdheatend]"; [Events that trigger at the end of the Heat, in the female-GSD case it reduces cunt width]
	now inheat entry is "[defaultheat]"; [This happens each heat cycle, Default is to increase libido by 5]
	now fheat entry is true;
	now mpregheat entry is true;
	now mpregtrigger entry is "A sudden throb in your ass catches you off guard, startling a whimper from your throat as you feel a rush of heat surging inside you. You can feel your fecund ass preparing itself to be bred as you go into a tainted heat. Your anal passage quivers and you feel a longing for a nice, canine cock to fill it.";

a postimport rule: [bugfixing rules for players that import savegames]
	if there is a Name of "German Shepherd Bitch" in the Table of Random Critters:
		say "";
	else:
		say "[gsbInsert]";

German Shepherd Bitch ends here.
