Hermaid by Xenophiliac begins here.

"Adds a Hermaid to Flexible Survival's Warehouse table"

Section 1 - Creature Responses

HermaidSub is a number that varies.

to say losetoHermaid:
	if HP of Player > 0:
		say "     Putting up your hands in a sign of surrender, the herm croons joyously at your clear submission. Swimming tantalizingly towards you, you soon find yourself wrapped up in the pretty herm's arms, and you can feel lust building in your body. You find yourself tentatively looking forward to what the herm has in store for you.";
	else:
		say "     Your attacker lures you into throwing a hit, but quickly counters and lands a punch across your head, sending your head spinning and stopping you from thinking for a few moments. As you recover yourself, you find that the beautiful creature has you wrapped in her arms, stopping you from escaping.";
	WaitLineBreak;
	if Player is puremale:
		say "[HermaidMaleLoss]";
	else if Player is purefemale:
		say "[HermaidFemLoss]";
	else if Player is herm:
		say "     The seafaring herm looks at you thoughtfully, as if considering what to do with you. After a moment, she nods to herself and smiles.";
		LineBreak;
		say "[one of][HermaidFemLoss][or][HermaidMaleLoss][at random]";
	else:
		say "[HermaidNeutLoss]";

to say beattheHermaid:
	say "     You land one last hit on the creature, sending her reeling backwards, and stunning her temporarily. She flounders around, trying to get back into fighting condition.";
	WaitLineBreak;
	if a random number between 40 and 120 < Libido of Player:
		say "     The beautiful sea creature looks to have let her guard down, and the battle has awakened some primal urges within you. Do you act on them?";
		if Player consents:
			say "     You wrap your arms around the beautiful creature, holding her tightly, and blocking off any chance of escape. She jumps at the sudden contact and looks at you in fear. When she notes the lustful look in your eyes, however, she smiles seductively at you, and runs her hands sensually over your body.";
			WaitLineBreak;
			if Player is herm:
				say "You can use either your cock or cunt for this scene. Which one do you want to use? (Y for cock, N for pussy)";
				if Player consents:
					say "[HermaidMaleVic]";
				else:
					say "[HermaidFemVic]";
			else if Player is female:
				say "[HermaidFemVic]";
			else if Player is male:
				say "[HermaidMaleVic]";
			else:
				say "[HermaidNeutVic]";
		else:
			say "     You consider having some extracurricular fun with the beautiful herm, but you decide against it. You quickly climb back onto the docks and continue onwards, as you hear the Hermaid dive back into the water.";
	else:
		say "     Taking advantage of the lapse in the Hermaid's attention, you quickly swim to the edge of the nearby dock and pull yourself up. Shaking yourself off and draining your backpack of water, you don't look back as the Hermaid glares holes into the back of your head, before the herm dives down beneath the sea.";

to say HermaidFemVic:
	say "     You move one of your hands around the Hermaid's hips, and swivel yourself around to face her. She leans in to kiss you, and you eagerly return her offer as she draws you into her prodigious bosom. She slowly draws her hands across your skin, holding you in a tight, loving embrace. You both break free of the kiss as you wrap your arms and legs around the beautiful creature, allowing her to support you, which she does easily. You feel something poking at your thighs, and the woman in front of you smiles knowingly as you both get ready for the main course. She runs her hands over your back as she lines her tapered cock up with your [cunt size desc of Player] cunt.";
	WaitLineBreak;
	if Cunt Depth of Player < 12:
		say "     She begins to slowly push into your cunt, putting inch by inch of her tapered cock deep into you. You both let out a loud groan as pleasure overwhelms you both, and you can barely hold yourself together as the exquisite sea woman forces you open. You find that you are unable to take her entire length, and you begin to let out an angered grunt, but she silences you with another loving kiss[if Player is dominant]. You forcefully return her kiss, locking her tongue with yours. You eventually break the kiss, causing the Hermaid to pant lustfully as you break away from each other[else]. You lovingly return the kiss, playfully battling her tongue with yours. You break the kiss soon after, a strand of saliva still hanging between the two of you[end if][if Player is dominant]. You bring your hands to the curvy herm's hips, holding her against you as you massage her tapered length with your cunt. She lets out a half-angered moan as you prevent her from thrusting, making sure that the only pleasure she feels is your pussy clenching around her length. She looks at you desperately, pleading with you to let her lustfully slam her length into you over and over. You smile playfully as you tantalizingly let your arms move back, slowly bringing her length out of you. She tries to slam back and forth, but when she's once again fully buried in your cunt, you hold her there, repeating this same process as she groans to the heavens. You slowly let her begin thrusting into you, making sure that she works for every inch of you[else]. She begins to slowly withdraw herself from your folds, enticing harsh gasps from you as she does so, leaving only the first few inches of her cock within you. She slams her length back into you, eliciting a pleasured scream from you, as she begins her thrusting. Her pace increases as time goes on, and you soon devolve into nothing but pleasured gasps and the occasional lustful scream as she slams her wonderful cock into you. The siren rubs your back lovingly, bringing you to her chest and resting you against her as she fucks you relentlessly[end if]. You both eventually begin thrusting against each other as fast as you can, the mashing of your pelvises echoing around the district and churning the waters around you. The overwhelming pleasure finally gets the best of you and you climax, [one of]screaming loudly to the heavens[or]involuntarily spasming your entire body as you clench your teeth[at random]. Your vagina clamps down on the invading member, wringing out whatever it can from the maiden and triggering her own orgasm. The Hermaid screams soundlessly as she orgasms, filling your fertile womb with her generous offering of life. You both come down from your orgasms and slump against each other, exhausted and sated."; [Add more desc of Herm cunt?]
		now Libido of Player is 0;
	else:
		say "     She begins to push herself into you, slowly spearing your cunt with her tapered cock. [if Player is dominant]Clamping your [cunt size desc of Player] pussy around the tip of her tapered cock, a pleasured moan escapes your lovers lips as your cunt prevents her from entering you. Looking at her with a fake innocence, you feign ignorance as your lover pleadingly looks at you. Drawing out the feelings emanating from your pussy, you let the Hermaid begin to enter you, making sure that she works for every inch of your slit. By the time she bottoms out inside you, she has become nothing more than a lust-driven beast, fully under control of your clenching slit. Watching playfully as your lover tries her very best to sate herself in you, you can only chuckle at how you've turned the playful sea siren into a sex-driven beast. Running a hand down her heaving chest, you worm your way down to her unused cunt, diving two of your fingers into her clenching cunt, causing her to scream loudly as her cock jumps within you, eliciting a yelp from you. She begins to slam into you, driven on by your clenching cunt and digits buried in her own womanhood. Soon enough, your vicious fingering and seizing cunt bring the herm to orgasm, slamming herself into you in short bursts, each thrust depositing a hefty load of Hermaid seed into your waiting womb. The feeling of her seed sloshing around in you triggers your own orgasm, and you groan loudly as you pull the sea herm into a death grip. The herm lets out a sated gasp, and falls back, floating on the water, with you atop her.[else]You simultaneously groan as exquisite feelings rush over you both, and you barely keep yourself from devolving into wanton lust as the Hermaid continues to link herself with you. What feels like an eternity of pleasure later, she bottoms out within you, and your pelvises connect in a moan of pleasure. Between panting breaths and a lust-fogged mind, you see that your new mate is just as horny as you. She gives you a lustful look, and quickly begins to thrust in and out, eliciting a sharp gasp and many moans of pleasure from you as she slams her hips against yours. She continues to speed up her thrusts, and soon the water around you is churning with the speed of your intimacy. This goes on for some time, and you become nothing more than a sex-addled beast, your mind entirely devoted to the waves of pleasure from your [cunt size desc of Player] slit. Soon enough, you feel your orgasm hit you like a brick, just as your partner hits hers. You both cry out loudly as you both cum, your cunt spasming around the cock in you as you feel her ample load of seed fill your womb to the brim, some leaking out of your cunt and into the water. You sigh softly as the Hermaid leans her head against yours, running her hands over your [bodydesc of Player] body lovingly.[end if]";
		now Libido of Player is 0;
	CreatureSexAftermath "Player" receives "PussyFuck" from "Hermaid";
	WaitLineBreak;
	say "     You both rest there for a few moments, her supporting your body as you both enjoy the sounds and feel of the sea. She slowly withdraws from you, some of her wonderful seed leaking from your cunt, and unravels herself from your body. She gives you one long, sensual kiss before she dives beneath the waves, splashing you playfully with her tail. Swimming to a nearby dock, you exhaustedly hoist yourself onto the wood platform. Laying there for a few moments to gather yourself, you get up and prepare to continue your journey. There is a nagging thought in your head, however, that this magnificent creature may be back.";

to say HermaidMaleVic:
	say "     You pull the beautiful water siren to you, engaging her in a hug and kissing her passionately. She eagerly returns your offer, linking your tongues together in a vicious dance for a few moments. You break away from the kiss, and it's apparent that she became aroused by your aggressive tongue-play, if her heavy breathing and protruding cock have anything to say about it. You slowly undo your pants, making sure not to lose them in the water around you, and reveal your [cock size desc of Player] [Cock of Player] cock. She smiles lustfully as she drags a hand down your chest into the water, and grabs your hardening [Cock of Player] member. Slowly and softly running her hand over your cock, you're up to full mast in no time. She withdraws her hand from your prick and wraps her arms across your shoulders, hooking herself around you as she positions herself over your erect rod. Smiling innocently at you and continuing to tease you, the curvy sea woman wordlessly urges you on.";
	LineBreak;
	if Cock Length of Player <= 12:
		say "     You needed no urging of any sort. You thrust forward, burying the first few inches of your [Cock of Player] into the picturesque siren's accommodating cunt, eliciting a thrash of pleasure from your aquatic mate. Her cock jumps a few inches and smacks your stomach, bouncing between the two of you. You begin to quickly thrust in and out of the pleasured Hermaid, and burying more and more of your length into her cunt with each thrust. Before you know it, your entire cock is buried within the Hermaid, and your partner has become a gasping, heaving mess of pleasure. You withdraw fully, eliciting a moan of disapproval, and quickly slam your entire length into the Hermaid, turning the moan into a scream of pleasure[if Player is dominant]. You bring one of your hands to her heaving bust, aggressively massaging one of her breasts. Your partner gives a high-pitched moan, which you silence by burying two of your fingers into her mouth. She sucks on the digits occupying her mouth, looking at you with a subdued look, asking wordlessly for more. You grin at her newfound docile nature, wondering if the playful herm has a more submissive side[else]. Thrusting skillfully in and out of the alluring herm, you pull her into another kiss, locking her to you with both your cock and your tongue. She enthusiastically locks your tongue with hers as she runs a hand fondly down your back, drawing pangs of pleasure as it descends your back. She stops at your hips, and begins pulling you into her, meeting your thrusts with her own strength[end if]. You quicken your pace, and lose yourself in the Hermaid's tight, inviting folds. Her climax is finally signaled by a long moan that devolves into a yell, with her cunt clenching down on your [Cock of Player] rod. Streams of thick cum fly from her foot-long cock, flying into the air and landing in the water, or her. Her tightening cunt proves to be too much for you, and you reach orgasm, yelling loudly blasting her aquatic womb with your [Cum Load Size of Player] load. You sigh and slump forward, resting your head against hers."; [Possibly add more description of Herm dong?]
		now Libido of Player is 0;
	else:
		say "     Taking the Hermaid by surprise, you quickly bury the first few inches of your [Cock of Player] length into her slippery folds, eliciting a spasm of pleasure from your beautiful partner. You continue to thrust forward, your cock being gleefully devoured by the Hermaid's inviting folds. Her cock jumps fully out of her slit, stabbing at your stomach with her own foot-long length. You bat her cock out of the way, instead concentrating on her shuddering cunt. You thrust faster and faster, drawing constant gasps and pleasured moans from both you and her. You soon fit all of your length that you can within the curvy sea siren, but some of your [Cock of Player] remains outside the Hermaid[if Player is dominant]. You keep your ample manhood buried in the curvaceous herm for a few moments, causing her to moan and groan with every throb of your maleness. She tries her best to thrust herself on and off of your cock, but you keep her there, making her feel every vein of your [Cock of Player] cock. She groans angrily as you stay like that, but that groan changes as you slowly pull out of her, reveling in the feeling of her seizing cunt. Leaving just the tip of your cock in the siren, you repeat the same process over, reducing her to nothing more than your plaything[else]. Withdrawing yourself from the siren's marvelous pussy, you begin to thrust into her, fitting as much of your cock into her every thrust. Groaning in unison, you both are swept up in the feelings of pleasure flying out from your mashing groins. Speeding up your thrusts, you run your hands across the sirens perfect back, feeling every curve of your beautiful lover[end if]. You continue to mash pelvises together for what seems to be a long time, but as your simultaneous orgasms hit you, it's all too soon. You release a loud groan of pleasure as you blast your [Cum Load Size of Player] amount of seed into her spasming womb. Her body goes slack, using you as an entire support as her cunt clenches along your length as strings of virile cum fly from her cock, landing behind her in the water. She sags back, laying on the water, as you rub your hands appreciatively along her slim stomach.";
		now Libido of Player is 0;
	CreatureSexAftermath "Hermaid" receives "PussyFuck" from "Player";
	LineBreak;
	say "     Both of you rest there in the water, recovering from the intense fun you just had. The Hermaid stretches and groans, and slowly removes herself from your length. Some of your seeds leaks from her silken folds as she rights herself in the watery turmoil your intercourse created. She kisses you on the cheek and rubs your length sensually, eliciting a gasp from you, before she swims away and dives underwater. You slowly swim towards the nearest dock and hoist yourself onto the wooden platform, resting and drying yourself off. You finally stand up and continue your quest, looking forward to when you can visit the lovely sea maiden again.";

to say HermaidNeutVic:
	say "     You pull the Hermaid against your [bodydesc of Player] body, and begin to roam your hands sensually across her substantial chest and slim stomach, causing her to quietly gasp. Your hands begin to roam lower, causing her gasps to become low, pleasured moans. You find that your sensual roaming has begun to arouse the Hermaid, as her cock emerged from its slit, waving slowly in the lapping water. Leaving one hand to massage one of her supple breasts, your other hand encircles her aquatic cock, slowly jerking her off and causing her to tense up and release a long, pleasured moan. This continues for a few moments, causing her to become fully erect and devolve into moans and gasps. Figuring that she's ready for the main course, you pull her close to you, and line her tapered cock up with your rear entrance, and slowly lower yourself down, her member slowly spearing your ass open.";
	say "     [if Player is dominant]You stop as soon as you've taken the tip of her cock in your backside, doing your best to tighten your ass around her tapered cock. She groans in both pleasure and anger as you stop her from thrusting within you, letting you take over. Beginning to oh-so-slowly descend on her rock-hard rod, you make her feel every inch, every centimeter of your descent, grinning lustfully as your techniques have dissolved your partner into nothing more than a lust-addled brain-dead state. Unable to make any move, the herm looks pleadingly at you as your rear slowly envelops her tapered cock. She can do little more than look helplessly as you begin to slowly move up and down on her cock, biting her lip to suppress her moans of pleasure[else]You groan loudly as you feel her cock open your bowels, and she begins to wantonly thrust forward, lost in lust. You start meeting her thrusts, slamming yourself down as both of you lose yourself to your lust. You feel the Hermaid's expert hands caressing your back lovingly, enhancing the sensations you're feeling from your stuffed ass[end if]. You both quickly start panting in lust and thrusting into each other haphazardly, enveloped in the delightful feelings you're both experiencing. All too soon however, you feel a warmth spreading through your bowels as the Hermaid silently cums, blasting her large load against your walls. This in turn causes you to climax, involuntarily clamping your ass down on the invading member. You both sag backwards, laying in the water.";
	now Libido of Player is 0;
	CreatureSexAftermath "Player" receives "AssFuck" from "Hermaid";
	LineBreak;
	say "     You soon feel the Hermaid withdraw herself, and she rubs your thighs gently before quietly diving beneath the waves. You gather yourself and swim to the nearby dock, hoisting yourself onto the worn platforms. You slowly stretch, and prepare yourself to continue onwards, wishing to return and visit the lovely maiden again.";

to say HermaidFemLoss:
	say "     The beautiful herm slowly repositions herself in front of you, dragging her hands across your skin. She hums quietly to herself as she slowly undresses you, all while causing tingles of pleasure as her hands brush your body affectionately. She drags her hands all along your [bodydesc of Player] body, causing you to shiver at her masterful touch. She brings you closer to herself, bringing your head into an affectionate kiss as her deft hands drift lower and lower. She hums into your mouth as your tongues intertwine as you give yourself over to the pleasures of the sea siren. Her hands reach to your slit, rubbing two fingers gently over the entrance to your womb, eliciting a pleasured gasp from you. This gasp turns into a loud moan as she touches your clit, sending jolts of pleasure directly to your brain. The sea-dweller continues this pleasurable foreplay for a few more moments, quickly turning you into a quivering ball of lust. She withdraws her hand from your cunt, causing you to moan disapprovingly. That moan quickly turns into a pleasured moan, as her hand is replaced with her tapered cock. She smiles lovingly as you lustfully urge her on.";
	say "     She pulls you in for another kiss, and you eagerly comply. She slowly enters your cunt, sending waves of pleasure coursing through your body. You break the kiss prematurely as you let out a scream of pleasure, and your slit tightens around the member buried inside you. The Hermaid coos happily as your cunt turns into a vice, and you can feel her throbbing member buried in you. She withdraws herself from your spasming slit, feeling every vein and throb of her wonderful cock as it does so. She begins to thrust slowly in and out of you, each thrust causing you to moan and groan in pleasure[if Player is submissive]. You begin to lose yourself in the pleasures of the lovely sea siren, and your mind drifts to how delightful it would be to remain with her forever, to be her lover and the mother of her children; you can't think of anything better[else]. She slowly thrusts into you for a while, and you quickly lose track of time, and all you can focus on is the sensation of the sea maiden slamming herself into you[end if]. She begins to speed up her thrusts, and soon you both are moaning and groaning as wonderful feelings flood both of you. Your orgasm hits you suddenly, and you scream out as you hit a wall of pleasure, your eyes rolling up into your head as you slump into the sirens grasp. She soon climaxes, her face becoming an 'O' of pleasure, and you feel every pulse of her cock as she blasts your womb with her sizable load[if Player is submissive]. You let yourself sag into the grip of your lover, hugging her tightly, and burying your head into her chest. She supports you, stroking your hair with her webbed hands, humming quietly to you as you give yourself over to her[end if].";
	now Libido of Player is 0;
	CreatureSexAftermath "Player" receives "PussyFuck" from "Hermaid";
	WaitLineBreak;
	say "     You feel the Hermaid slowly withdraw herself from you, and gives you a long-lasting parting kiss. She sinks beneath the surface of the water as you right yourself in the shifting waves. You pull yourself up onto dry land, and lay there for a few moments, drying off and regaining your senses. You hoist yourself up and prepare to continue on, giving yourself a mental reminder to come and visit here again.";

to say HermaidMaleLoss:
	if anallevel < 3 or a random chance of 1 in 2 succeeds:
		say "     The herm kisses you lustfully, her hands running quickly across your body as she explores all you have to offer. Her hands sneak under your clothes, caressing your skin masterfully as your lust continues to mount. One of her silken hands continues to tingle across your chest, sending pleasurable tingles through your body. Her other hand roams lower, running down your chest to your groin, lustfully groping your [Cock of Player] rod roughly, causing a gasp of pleasure to escape your lips. Continuing to massage your [Cock of Player] cock and balls, and continuing to elicit gasps of pleasure from you, the Hermaid runs her other hand down your chest to your pelvis and removing your pants, letting them sink down to your feet. She slowly moves herself to the front of you, taking pleasure in the fact that she has caused you to become so aroused. Smiling happily, she lines up her inviting slit with your [Cock of Player] cock, tantalizing you with her hands and silken vice while her twelve inches of maleness bobs between the two of you.";
		say "It can't come soon enough, but you finally feel the Hermaid begin to descend on your stiff [Cock of Player] rod, slowly bringing your maleness into her folds. You groan loudly at the sudden entrance as you try desperately to bury yourself fully into the lovely creature, but she holds you back, and smiles all the wider. Slowly, ever so slowly, she sinks onto your cock, all while her maleness bounces off your stomach, leaving smears of her precum across it. She coos delightedly at the sensations she feels, while the only thing you can do is thrust helplessly forward and groan in pleasure[if Player is submissive] Your mind begins to drift, awash in a sea of pleasure. You imagine yourself living below the ocean, being a loving mate to the beautiful creature. Imaging the wonderful life you would lead below the waves and all the beautiful children you would sire causes your cock to thicken and jump, causing your playmate to coo happily[else]. You're almost unable to handle the sensations emanating from your [Cock of Player] maleness that the alluring herm is triggering within you. Seeing the love-drunk look on your face, the Hermaid smiles joyfully as she continues down your cock[end if]. She stops the slow descent onto your throbbing cock, taking all that she wants to take, and raises herself up off of you, leaving only your tip within her. She slams herself down, taking most of your length and causing you both to yelp in pleasure simultaneously. She begins to bounce atop your cock, reducing you to nothing more than a rutting beast as she speeds up. Soon after, she slams herself down one last time as she cums, her cunt spasming around your [Cock of Player] prick. You moan loudly to the sky as you finally cum, blasting her cunt with your [Cum Load Size of Player] load of cum just as her seed blasts from her tapered cock and rains down upon the both of you.";
		now Libido of Player is 0;
		CreatureSexAftermath "Hermaid" receives "PussyFuck" from "Player";
		WaitLineBreak;
		say "     With a contented sigh, the Hermaid draws herself off of you, giving your face an affectionate rub before darting beneath the waves. You soon gather your strength, and swim to the nearby dock and heave yourself onto the platform. Recovering your gear (and yourself), you continue onwards, not entirely sorry that you lost the fight to the lovely herm.";
	else:
		say "     Out of the corner of your eye you think you see the herm smiling mischievously. She forcefully spins you so that you find yourself with your back against her, but escape is still beyond your reach as she continues to hold you confidently in her grasp. Too weak to fight back, she begins to undress you. Her fingers masterfully pulling off each article as they fall to the water, floating, next to you. Only once you are fully nude does she take the liberty of running her hands slyly against your [bodydesc of Player] body, paying extra attention to each of your nipples and nibbling your ears seductively. Thoughts of what might be to come quickly coalesce on a single thought as her cock prods against your backside impatiently. As you start to panic the herm pulls her head next to your ear and hums a soothing tune in your ear while stroking your hair. As she ends her song, one of her hands moves out of sight and she begins nibbling and kissing your neck. Her unseen hand has finally made it to your backdoor. As unwilling as you may or may not be, her digits break through and she slowly starts making circles in your ass, making you shiver each time they pass over your prostate. You feel an orgasm building, surging from your depths, but unfortunately the Hermaid notices as well, and retracts her hand from your behind. As you whimper from being denied while so close, she chuckles softly and grabs you strongly. With a decisive motion, she lifts you up and brings you down so that your asshole is now directly above her cock, waiting to be penetrated.";
		WaitLineBreak;
		say "     After what feels an eternity you feel her tapered tip push into your ass. The penetration is euphoric and you cry out in pleasure as each inch of her foot-long cock enters you. On and on you fall, feeling like each inch is a mile, her cock a thousand, until your cheeks finally rest upon her lap and you shiver from the fullness. The beautiful siren releases your arms and rubs your stomach with one hand, while tilting your head and drawing you into a lustful kiss. She begins to lean backward, her cock still snuggly in your hole, as she pulls you back onto her chest, her bosom cushioning your back as she keeps you afloat in the water. She kisses the back of your neck and grasps your [Cock of Player] cock, slowly running her fingers over the tip. Slowly her phallus begins to extricate itself from your bowels, only to soon replace itself again, rubbing every inch of it against your sensitive interior and prostate. She thrusts again and again, with the question of how she can maintain this floating being pushed out every time she lunges with her beautiful prick. With her strokes now timed with her thrusts, you moan lewdly, [if Player is submissive]losing yourself in the pleasures of the lovely sea siren, and your mind drifts to how delightful it would be to remain with her forever, to be her lover and submit to her embrace forever; you can't think of anything better[else]the herm slowly thrusting into you for a while, and you quickly lose track of time. And all you can focus on is the sensation of the sea maiden slamming herself into you from below[end if]. As her thrusts become more and more erratic, her dick surges and a torrent of cum fills your backside. You both groan as her sperm soaks your innards and the new pressure on your prostate makes your [Cock of Player] dick spew its own up into the air, coating yourself with your [Cum Load Size of Player] load.";
		now Libido of Player is 0;
		CreatureSexAftermath "Player" receives "AssFuck" from "Hermaid";
		WaitLineBreak;
		say "     With a quiet sigh, the Hermaid lazily pulls out of your cum-stuffed belly, nuzzling the nape of your neck tenderly before plunging inaudibly under the waves. You float on the surface of the waves for some time, reclaiming your senses. You swim slowly to the nearest dock, and haul yourself onto the wooden deck. Hoisting yourself onto your feet and trudging back into the city, there's a part of you that wishes you could remain with the beautiful Hermaid.";


to say HermaidNeutLoss:
	say "     She begins to draw her hands across your body, with pleasured gasps from you being the end result. The sea sirens smooth hands run rivulets of pleasure across your skin as she slowly moves around you, all the while keeping you stuck where you are. She snakes her hands through your attire, slowly removing your clothes, ensuring that they don't drift away. As her hands worm lower and lower down your body, she soon finds the place where your genitals should be. Confusion crosses her face as she realizes that you have no cock or cunt. This doesn't seem to remain a problem for long, however. She smiles lustfully and lines up her foot of maleness up with your back entrance, and slowly thrusts forward, opening your bowels to her invading member.";
	say "     You groan in pleasure as her cock widens your ass, diving into your insides. She moans in pleasure as you shiver involuntarily, tightening your backside around her tapered rod. You're able to feel the entirety of the Hermaid's member in your bowels, and moans of pleasure escape you both as she steadily removes her cock from your ass, and starts to thrust forward. Moans and gasps come from both of you as the Hermaid speeds up her thrusting, slowly spearing you more and more on her foot-long rod[if Player is submissive]. The feelings emanating from your dick-stuffed backside is almost too much to handle, strings of pleasure shooting throughout your body, constantly making you scream in enjoyment. The cock buried in you is touching places that you didn't even know existed, and you can't comprehend why you didn't let the Hermaid take you and fuck you before[else]. You've long since stopped trying to resist the alluring Hermaid; her skill with her manhood has caused you to devolve into nothing more than a wet, panting mess[end if]. Her long, sensual thrusts soon devolve into short, swift thrusts, with the majority of her member remaining within you the entire time. Your climax soon rushes over you, and your ass becomes a vice, tightening around the cock buried in your backside as you yell out loudly. The Hermaid is unable to withstand the feelings emanating from your backside, and soon fills your colon to the brim with her substantial load leaving you feeling completely full as she noiselessly screams to the heavens.";
	now Libido of Player is 0;
	CreatureSexAftermath "Player" receives "AssFuck" from "Hermaid";
	WaitLineBreak;
	say "     With a quiet sigh, the Hermaid lazily pulls out of your cum-stuffed belly, nuzzling the nape of your neck tenderly before plunging inaudibly under the waves. You float on the surface of the waves for some time, reclaiming your senses. You swim slowly to the nearest dock, and haul yourself onto the wooden deck. Hoisting yourself onto your feet and trudging back into the city, there's a part of you that wishes you could remain with the beautiful Hermaid.";

to say Hermaiddesc:
	say "     As you trudge through the empty and desolate buildings lining the shore, a quiet splash breaks the silence, resounding through the buildings. Something inescapably pulls you to the water's edge to investigate what might have made that sound - and suddenly find yourself pulled over the edge and underwater by unseen hands. Breaking free from the incorporeal hand's grip, you flounder frantically until you reach the surface again. Looking around, there is no trace of who attacked you - until a large splash resonates behind you and someone surfaces from the depths. It is a stunningly beautiful sea woman, smiling at you, revealing her razor-sharp teeth.";
	if BodyName of Player is "Hermaid":
		say "     The mer-woman coos delightfully when she sees that you're one of them. She genuinely smiles at you, expecting you to willfully embrace her. When you take a defensive posture, however, a pout forms on her face as she prepares herself to fight you.";
	else:
		say "     The sea-dweller before you smiles seductively, waving her impressive bosom at you and doing her best to be enticing. However, when you prepare yourself to fight her, she takes on an angered look, and readies herself to face you.";
	WaitLineBreak;
	say "     This creature is a relatively close comparison to mermaids of yore, that many seafaring men have spoke of. She has the body of a flawless human woman, with beautifully sculpted facial features that complement the voluptuous, buxom chest that she presents. Her lower body consists of two finned legs, with her webbed feet being reminiscent of flippers. Long, flowing hair grows off of her head, dark-blue and matching the ocean. Solid, dark [one of]green[or]blue[or]purple[at random] eyes stare at you, reminding you of the dark fathoms of the deep oceans. Her finned arms and webbed hands end in sharp claws, easily able to hurt or maim someone. Between her legs lie her genitals, with both the male and female parts residing within separate genital slits. As she becomes aroused at the prospect of a conflict, she begins to sprout a foot-long tapered cock, while her feminine opening begins to drool lubricant.";

Section 2 - Creature Insertion

Table of CombatPrep (continued)
name(text)	PrepFunction(text)
"Hermaid"	"[PrepCombat_Hermaid]"

to say PrepCombat_Hermaid:
	setmongender 5; [creature is herm]

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Hermaid";
	add "Hermaid" to infections of AquaticList;
	add "Hermaid" to infections of MythologicalList;
	add "Hermaid" to infections of HermList;
	add "Hermaid" to infections of InternalCockList;
	add "Hermaid" to infections of BipedalList;
	add "Hermaid" to infections of SwimList;
	add "Hermaid" to infections of GillList;
	add "Hermaid" to infections of TailList;
	add "Hermaid" to infections of TailweaponList;
	now Name entry is "Hermaid";
	now enemy title entry is ""; [ Name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name. ]
	now enemy Name entry is ""; [ Specific name of unique enemy. ]
	now enemy type entry is 0; [ 0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters. ]
	now attack entry is "[one of]The Hermaid lungs unexpectedly at you, breaking past your guard and dragging long, bloody streaks across your face and down your chest with her razor-like claws.[or]She dives underwater, and you soon lose track of her. Seconds later, you're dragged underwater and held down, slowly drowning. As you are about to pass out, you break free and surface, coughing up water and much more exhausted than before.[or]The Hermaid snaps at your legs, gouging large chunks out of your limbs.[or]She kicks at you wildly with her webbed feet, landing a few nasty hits across your body.[at random]";
	now defeated entry is "[beattheHermaid]";
	now victory entry is "[losetoHermaid]";
	now desc entry is "[Hermaiddesc]";
	now face entry is "that of a human woman, with beauty only before captured in the greatest of artworks. Deep, solid [one of]green[or]blue[or]purple[sticky random] eyes complement the flowing, dark blue hair that hangs to your shoulders, while your sculpted face could knock anyone off their feet";
	now body entry is "one that even a professional model would be jealous of. Your lithe, curvy form is one that artists can only dream of, while your hips and chest could give plastic surgeons a run for their money. Your finned arms and webbed hands seem out of place compared to the rest of your body, but are well-suited for swimming through the depths of the sea. Even your finned legs have morphed into a form more suitable for swimming, with your webbed feet allowing you to swim gracefully through the seas";
	now skin entry is "light-blue, moist";
	now tail entry is "Sprouting from your backside is a dolphin's tail, complete with dual tail flukes.";
	now cock entry is "[one of]tapered[or]dolphin-esque[or]cetacean[sticky random]";
	now face change entry is "your skull cracks and reforms, shifting beneath your skin. Pain wracks your body as this occurs, and you can feel the shifting bones rearranging. Thankfully, the pain soon subsides, and you're able to recover. You find a mirror and look at yourself, and are shocked at the changes in your appearance. Your face now resembles that of a beautiful human woman, and is stunningly picturesque. Dark, beautiful eyes peer out of perfectly sculpted sockets, with dark-blue hair waving gracefully in the wind as your features reshape to suit the appearance of a Hermaid";
	now body change entry is "your chest and hips protrude out a small amount, and your stomach slims down, giving yourself a superstar look, while also incurring a great deal of pain in the process. Your hands and arms tingle as one long fin grows down your arm, stopping at your wrist. Your fingers and hands reshape, becoming more claw-like and fully webbed as, finally, these changes cease, and you observe your sleek hermaid body";
	now skin change entry is "it turns a light shade of blue, and begins to feel moist to the touch as a layer of moisture forms on your skin";
	now ass change entry is "a fleshy bulb forms at the base of your spine, as the entirety of your backside shifts and reshapes. The bulb begins to expand outwards and assume a distinctly tail-like shape. At the end of this endeavor, you wave your new dolphin tail around, and figure that you can swim much faster now";
	now cock change entry is "the tip of your cock tapers into a point, while your shaft smooths out and turns a pinkish hue. Your new dolphin-esque cock recedes into a genital slit as these changes stop";
	now str entry is 14;
	now dex entry is 17;
	now sta entry is 14; [Mebbe balance?]
	now per entry is 13;
	now int entry is 12;
	now cha entry is 17;
	now sex entry is "Both";
	now HP entry is 65;
	now lev entry is 9;
	now wdam entry is 9;
	now area entry is "Warehouse";
	now Cock Count entry is 1;
	now Cock Length entry is 12;
	now Ball Size entry is 2;
	now Nipple Count entry is 2;
	now Breast Size entry is 3;
	now Male Breast Size entry is 0;
	now Cunt Count entry is 1;
	now Cunt Depth entry is 12;
	now Cunt Tightness entry is 6;
	now SeductionImmune entry is false;
	now libido entry is 70;
	now loot entry is "hermaid kelp";
	now lootchance entry is 40;
	now MilkItem entry is "hermaid milk"; [ Item to be given to the player if they have this infection and milk themselves. ]
	now CumItem entry is ""; [ Item to be given to the player if they have this infection and jerk off. ]
	now TrophyFunction entry is "-"; [ Function to generate a list of optional loot items, of which the player can choose one after victory. ]
	now scale entry is 3;
	now body descriptor entry is "[one of]slender[or]curvy[or]mesmerizing[or]hypnotic[at random]";
	now type entry is "aquatic";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [ Infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own strain. ]
	now DayCycle entry is 0;
	now altcombat entry is "default";
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is ""; [ Name of the overall species of the infection, used so a "male x" and "female x" have "pureblood X" children. ]
	now Name entry is ""; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 5; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 5; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is ""; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [Head Description of Player]. You have [Eye Adjective of Player], [Eye Color of Player] eyes and an overall [Gender Adjective of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [Head Adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...) to fit "On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style."]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...) to go into "You have a [Hair Color of Player] [Beard Style of Player]."]
	now Body Hair Length entry is 0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3; [mouth circumference 1-5, see Mouth Circumference Adjective]
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Gender Adjective of Player] with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 1], covered in [Torso Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Torso Color of Player] skin[end if]."]
	now Torso Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [Torso Adornments of Player]."]
	now Torso Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Torso Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Torso Pattern entry is ""; [single word color adjective for the dominant pattern of the skin/fur/feathers/scales]
	now Breast Adjective entry is ""; [adjective(s) example: round, pointy, perky, saggy, bouncy. This would serve as either a general appearance of a infections breasts or possibly something that may be effected by a item or NPC.]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Nipple Count entry is 2; [count of nipples]
	now Nipple Color entry is ""; [one word color descriptor]
	now Nipple Shape entry is ""; [shape example: any shape will do as long as it has a baseline with a current infection or item]
	now Back Change entry is ""; [partial sentence that fits in: "Your back [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Back Change entry]."]
	now Back Adornments entry is ""; [partial sentence to fit: "Your back tickles with the feeling of movement caused by [back adornments of Player]."]
	now Back Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Back Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is ""; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is ""; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Arms Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/octapedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [Legs Description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]." (For players with skin, instead of the period: ", covered in [Ass Color of Player] skin and [Body Hair Description of Player]"]
	now Ass Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [Tail Description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite (< 3), shallow (< 5), average (< 9), deep (< 15), bottomless (15+)"]
	now Asshole Tightness entry is 3; [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "extremely tight, tight, receptive, open, gaping"]
	now Asshole Color entry is ""; [one word color descriptor]
	now Cock Count entry is 0;
	now Cock Girth entry is 0; [thickness 1-5, generates the Cock Girth Adjective]
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 0; [length in inches]
	now Cock Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cock Change entry is ""; [partial sentence that fits in: "Your cock [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is ""; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [Cock Adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock Description of Player]."]
	now Cock Color entry is ""; [one word color descriptor]
	now Ball Count entry is 0; [allowed numbers: 1 (uniball), 2 or 4]
	now Ball Size entry is 0; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is ""; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [Ball Description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0; [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [Cunt Description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
]


Section 3 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Hermaid Infection"	"Infection"	""	Hermaid Infection rule	1000	false

This is the Hermaid Infection rule:
	if Player has a body of "Hermaid":
		trigger ending "Hermaid Infection"; [Here it states, that the ending has been played.]
		if humanity of Player < 10:
			say "     Unable and unwilling to resist the call you hear, you soon find yourself on the shores of the Warehouse District, where you first met your Hermaid companions. The sounds and scents of the water is music to your ears; the lapping waves, the caws of the sea birds, the smell of salt water that permeates the air. The call of the sea is even stronger here, and you know that it is time to answer that call. Wading into the water, your legs finally merge into one long tail as you begin swimming out to sea, never again to step foot on land. Your new sisters come to meet you, taking you deep into the depths of the sea, to your new life.";
		else:
			say "     Soon enough, the military rolls through in an attempt to contain the situation that has arisen. You present yourself to the military patrols, and after a few tense moments with guns pointed in your direction, you eventually convince the soldiers that you are not feral, and are led through quarantine. You pass through quarantine after multitudes of tests, and emerge back into sane society. Quickly putting your picturesque body to use, you find yourself a job as a professional model, and you soon become the newest craze, with people across the world lining up to see you, and millions of people wanting to be you. You live out the remainder of your long live in luxury, happy as you could be.";

Section 4 - Items

Table of Game Objects (continued)
name		desc	weight	object
"hermaid kelp"		"A still-moist piece of sea kelp, used as an ingredient in some aquatic recipes."	1	hermaid kelp

hermaid kelp is a grab object.
It is temporary.

Usedesc of hermaid kelp is "[HKelpUse]".

to say HKelpUse:
	say "You run the moist piece of plant through your hands for a few moments, noting the leafy feel and grainy texture. Giving it only a moments thought, you roll up the leaf and pop it into your mouth. Chewing on the leaf, you find that it tastes remarkably like lettuce, but with a slightly salty taste.";
	infect "Hermaid";

the scent of hermaid kelp is "As you smell the sea leaf, your nostrils are assaulted with the scents of the sea; the smell of salt water and fish overwhelms your senses, and reminds you of a time where you stood at the edge of the water, looking wordlessly into the vast ocean before you.".

Hermaid ends here.
