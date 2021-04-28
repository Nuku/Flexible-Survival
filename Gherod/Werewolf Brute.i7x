Version 1 of Werewolf Brute by Gherod begins here.

"Adds the Werewolf Brute species and encounters to Avalon."

[ Version 1 - Created File ]

to say GenerateTrophyList_WerewolfBrute:
	[ Reminder: LootBonus can be +35 at maximum - 10 for Magpie Eyes, 15 for Mugger and 10 from Player Perception]
	if a random chance of (80 + LootBonus) in 100 succeeds: [common drop]
		add "werewolf brute fur" to CombatTrophyList;
	if a random chance of (30 + LootBonus) in 100 succeeds: [common drop]
		add "dirty water" to CombatTrophyList;
	if a random chance of (25 + LootBonus) in 100 succeeds: [uncommon drop]
		add "food" to CombatTrophyList;
	if Debug is at level 10:
		say "DEBUG: Trophy List: [CombatTrophyList].";

Section 1 - Creature Responses

to say Werewolf Brute Wins:
	if inasituation is true:
		say ""; [dealt with at the source of the event]
	else:
		if HP of Player > 0: [player submitted]
			say "     Seeing how large this werewolf is has you consider your actions, so you choose to submit to him by dropping to your knees and raising your hands. He takes a like to this as a grin forms across his muzzle, and the sizable beastman approaches you unchallenged. 'So, playtoy it is? Good choice.' he comments as he grabs you by the chin, forces you to look at him and, locking his gaze on your eyes, he orders you to do as he says. 'You better make me feel good, then. I like my pups tame.'";
		else:
			say "     You do not really stand a chance against such a huge beast, who manages to take you down without much of an effort. As you fall to your knees, sore and defeated, he approaches you with a grin on his muzzle, taking a like to the sight. 'You were not even a challenge! Looks like you need to learn what your place is, little pup.' he comments as he grabs you by the chin, forces you to look at him and, locking his gaze on your eyes, he orders you to do as he says. 'Don't worry, you're gonna like it... They all do.'";
		WaitLineBreak;
		let randomnumber be a random number from 1 to 2; [adjust the latter number for the number of options]
		if randomnumber is:
		-- 1: [facefucks]
			say "     From his sheath is already emerging a big and thick red rod, pulsing with eagerness as it raises to a full erection right in front of you. 'Lick it.' he orders, pulling your head as you inevitably bump your lips on the werewolf's meat, which throbs happily upon your involuntary kiss. He leads you through his shaft as you are made to rub your mouth across, its salty flavor slipping into your taste buds as you start opening your mouth a bit more. 'That's it, pup. Open wide. That's a big cock for you.' His grasp on you is tight and secure, now taking you to the tip of his lupine manhood as your lips begin to part, taking that fat cockhead past them and onto your tongue, sinking it deeper inside your mouth...";
			say "     He lets out a grunt of pleasure as he finds his dick diving into the depths of your throat, your jaw aching from being forced open so much in order to accomodate such a girthy meatlog. But things do not end here, as the werewolf brute is not satisfied with just letting you hold his cock in your mouth or suck it as you normally would. Instead, he keeps his large paw-like hand taking hold of your skull and leads your head back and forth across his length, giving you no option but to endure this facefucking as his penis stretches your throat and keeps your jaw wide open. Precum rapidly starts to leak out of his meat, filling your mouth with more beast manjuice than you are comfortable with, threatening your gag reflex with every thrust.";
			WaitLineBreak;
			say "     But you do not think he cares if you choke or not, as he likes going deep and slow without care for your limits, in fact pushing them with every single motion, as if he enjoyed watching you struggle with his large endowment. 'You got a tight throat. Bet your [if player is female]pussy[else]asshole[end if] feels as good... Heh, maybe something to think about for another time...' he comments, with clear interest for bending you over and fucking you from behind, but preferring to stick to your mouth, this time, as he picks up the pace to facefuck you faster, alternating between moving your head back and forth as if it was a fleshlight toy, to holding it in place as he does all the thrusting.";
			say "     It definitely is a mouthful, even a throatful, keeping your jaw wide open for so long it starts feeling numb. Tears fall from your eyes and slide through your cheeks as you can barely breath between his cock in your throat and him temporary pulling back, but the delight and joy in the beastman's expression as he feels every inch of your oral depths around his manhood is something to note. You try keeping your hands on his legs and push against them if you really need to breath, but the brute's strength is so much that he does not even notice it, you are only kept conscious by the random chances you get to breathe in some air, which is filled with musky pheromones. Some part of you even starts liking this, and you do not know why.";
			WaitLineBreak;
			say "     'Bet you enjoy being handled like an alpha's bitch.' he teases you, keeping that sharp grin and threatening look in his face, but clearly out of all the bliss he is getting from dominating you. Your mind feels blurry as he says these words, mixed in with his animalistic scent, and it all starts sounding like a good... no, great, idea. You look up at him with red and teary eyes, and you think that really does something to him as his huge member twitches inside your mouth. 'Fucking love when you look at me like that, pup.' he says, stroking your cheek and wiping your tears of hard effort. 'Wanna swallow my load? I know you do...' and asks the werewolf as he pets the back of your head with a couple of tender squeezes.";
			say "     And not so long after, you feel the beastman's cock throb and pulse as his generous load unleashes right in your mouth, several thick drops of creamy and sweet-tasting spunk that you are forced to gulp down with the werewolf's thrusts, sending the rest directly down your throat. He nearly howls at the pleasure his climax gives him, which lasts for nearly half-a-minute, all that time delivering copious amounts of cum inside you as his knot remains just behind your lips, tightly wrapped around his cock, throbbing. He then pulls out, finally allowing you all the room you want to breathe, and pats on the head as if you were his little pet.";
			WaitLineBreak;
			say "     'You did good, little pup. Keep that up and you might join our pack as our sex slave! How does that sound? Wanna have lots of big werewolf cocks in you? Hehe, bet you do...' With that, he rubs your head once more before taking his leave. There is a whole mess on your face and in your stomach, which you will have to rest up before being able to get up and continue on your way.";
			CreatureSexAftermath "Player" receives "OralCock" from "Werewolf Brute";
		-- 2: [fucks doggy style, always anal]
			say "     From his sheath is already emerging a big and thick red rod, pulsing with eagerness as it raises to a full erection right in front of you. But he does not seem to be interest in your front. 'How about you bend over?' he asks, in a tone that more seems like an order. Knowing that he means it, you do so [if player is submissive]eagerly[end if], turning around and getting on all fours, exposing your butt to him. 'Yeah... spread those cheeks. I wanna see that hole.' his powerful voice commands you as he takes hold of his erection, stroking it observing your actions. You take a grab of both your asscheeks and spread them to the sides as he asked, giving him a clear view of your pucker.";
			say "     'Get a finger in it...' - he orders, once more - 'unless you wanna risk mine. These are some sharp claws, so... Better be safe, pup. You're gonna need to warm that up for me.' You definitely know what he means, so given your predicament, you better do exactly as he says. By shoving a finger in your hole, you have obeyed and pleased the big werewolf, who gets more into his jerking motions, rubbing that thick and large meat faster as he watches you. 'Keep on adding more... Stretch it wide...' his words continue, and so do you, adding two fingers and getting comfortable with them before progressing into three and more. The beastman then proceeds to crouch behind you, resting his manhood on top of your buttocks, but without disturbing your fingering efforts.";
			WaitLineBreak;
			say "     You feel his pulsing rod like a heavy, thick and warm log, throbbing each second, slowly being rubbed against the space between the beginning of your glutes. He gives your ass a light tap with his dick between his soft thrusts, and after letting you finger yourself for a while more, he begins to slide that girthy dick down through between your asscheeks. You make way for the incoming cock that is so eager to get inside you, and he proceeds to push it against your hole, very slowly. 'Ready to take it in, pup?' he asks, but without even awaiting a reply, you already start feeling it push and stretch your entrance wide open, his hot and thick manhood starting to force its way into you.";
			say "     'Ohh... you're really tight for me... Hope I ain't hurting you... much. Hehe...' he comments as he continues to push his erection into you, and it does feel massive. His thickness is the biggest challenge here, forcing your entrance to stretch wide open in order to accomodate such a cock! The werewolf is now grabbing your hips and taking full control, starting to pound you deep and a little too fast for comfort. 'Fuck... That's such a good hole... My mates would have loved to have you riding them, too...' he teases you, and inevitably, images of a whole pack of horny werewolves surge in your mind, highly suggestive of what he means. You do your best to endure his massive dong buried deep inside your ass as he starts to pick up the pace...";
			WaitLineBreak;
			say "     Now, you are being utterly assfucked in doggy style, and that is not just because he happens to be a werewolf. With you on all fours, he is kneeling behind you, grabbing your hips and keeping your ass in place as he fucks you. You would say he started slow when compared to how deep, rough and hard he gets after a while, his pelvis bumping against your buttocks so hard they make a loud clapping sound on collision. You do not think he is caring about the fat knot at the base of his cock giving signs of swelling as he continues to fuck you really, really deep... To a point you think he is going to bulge out through your belly. 'Oh yeah... I'm gonna fill you up, now...' he warns you, and not long after, you feel his cock pulse deep in your depths.";
			say "     Then, finally, you feel several hot gushes of creamy seed being delivered in quick succession right into your bowels as the large beastman locks himself inside you, taking you in for an embrace as he presses his whole body against you and towards the ground, howling in pleasure. 'That's right...! Fuck yes! Take it all in, little pup...' he grunts and moans in utter bliss as he continues to unload his full balls inside you. Helpless to the situation, you are forced to take everything in and endure a long time of cuddling as he licks your face waiting for his knot to deflate. 'Love being ballsdeep on someone like this. You sure you don't wanna pay my pack a visit?' he asks, in an obvious teasing way, but you are even too exhausted to even think of replying.";
			WaitLineBreak;
			say "     Once the werewolf can finally pull his dick out of you, he does so and stands up, leaving on lying down on the floor with cum leaking through your stretched asshole. 'See you around, pup! Think about my offer... My brothers would love to use you over and over... Bet you'd enjoy that.' He then walks away. You definitely have to take some time to be able to feel your legs and get up on your feet in order to take your leave.";
			CreatureSexAftermath "Player" receives "AssFuck" from "Werewolf Brute";


to say Werewolf Brute Loses:
	if inasituation is true:
		say ""; [dealt with at the source of the event]
	else:
		if fightoutcome is 11: [werewolf brute submitted by libido victory]
			say "     After pulling your best efforts at seducing and teasing this hulking werewolf, his movements become more sluggish as that massive erection swinging around between his legs really gets in his way. After so much throbbing, he finally seems to give up on trying to catch and subdue you, falling on the ground while trying to catch his breath. 'Fuck...! D-don't do this to me...! J-just come sit on this dick and we'll call it even!' he says, putting an end to the fight as he looks at you with pleading eyes.";
			Linebreak;
			say "     ([link]Y[as]y[end link]) - Have some fun with his cock.";
			say "     ([link]N[as]n[end link]) - Leave him there, rock hard alone.";
			if Player consents:
				LineBreak;
				say "     Having downed such a huge werewolf beast all by yourself, in your own way, you figured that you also deserved a reward for your efforts. So, you start walking towards him, and the beastman only continues to look at you, his begging gaze as obvious as the erection he built. But you are not going to sit on his big dick, as he requested, no. First, you crouch down next to him, give his leg and nice and gentle pat, then move your hand towards his crotch as you signal your first intentions. 'Yeah, touch it... Give it a good rub...' the beastman tells you, but you have to show him who is in charge, here. You do as you please, only touching as much as you want, whenever you want and wherever you want.";
				say "     'I'd fuck your brains out if you let me... It'd feel so good...' he keeps on teasing you, too, as his meat only keeps on throbbing and leaking with every touch you give it, or when you are feeling up his large nuts hanging underneath his cock. With both your hands now at work, you slip yourself in between his thick lupine legs for better reach as you position yourself to provide him with a proper handjob. His dick is absolutely enormous, fitting his general size, reaching a foot and half of length while being thicker than a can of soda, all this without accounting for the knot at its base, which you imagine would be extremely effective at locking its receiver in place after an intense fuck.";
				WerewolfBruteLosesHandjob1;
			else:
				LineBreak;
				say "     You decide to leave him there as you take your leave, turning your attention to more important matters. He begs you to not leave him like that, but you pay no further mind to the werewolf brute.";
		else:
			say "     After a strenuous fight, you manage to subdue the big werewolf with the best of your abilities, bringing the beast down with your last efforts. He growls at you, unable to stand up and remaining helplessly defeated. 'Grr! There's no way you could've won!' says the lupine brute, trying his very best to find strength in himself to resist you, but he really looks exhausted. Looking at him, you are left to think if you want to do anything with the tired werewolf, now that you have got him under your thumb.";
			Linebreak;
			say "     ([link]Y[as]y[end link]) - Have some fun with his cock.";
			say "     ([link]N[as]n[end link]) - Leave him there, sore and defeated.";
			if Player consents:
				LineBreak;
				say "     Having downed such a huge werewolf beast all by yourself, you figured that you deserved a reward for your efforts. So, you start walking towards him, and the beastman stops moving a bone, looking at you coming cautiously. 'What do you want?! Having... Ugh...! B-Beaten me up wasn't enough for you?!' he asks, and the werewolf seems really angry at you! However, as you crouch down next to him, you give his leg a nice and gentle pat, moving your hand towards his crotch as you signal your intentions. 'Fucking little perv... Couldn't just leave me without having funny ideas?' he exclaims, but as your hand slips onto his thick furred sheath, a red tip begins to emerge immediately after, betraying the beastman's discontent.";
				say "     'You're lucky I'm sore, or I'd flip you over and fuck your brains out, right now...' he keeps on taunting you as his meat grows to a full erection pretty fast, then only harder and harder as you rub and caress it, then feeling up his large nuts hanging underneath and back to his shaft, now both your hands at work as you slip yourself in between his thick lupine legs for better reach. His dick is absolutely enormous, fitting his general size, reaching a foot and half of length while being thicker than a can of soda, all this without accounting for the knot at its base, which you imagine would be extremely effective at locking its receiver in place after an intense fuck.";
				WerewolfBruteLosesHandjob1;
			else:
				LineBreak;
				say "     You decide to leave him there as you take your leave, turning your attention to more important matters.";

to WerewolfBruteLosesHandjob1:
	WaitLineBreak;
	say "     For now, you are the one doing so to the werewolf (keeping him in place, that is) as you continue to feel his sizable rod as much as you want, stroking and rubbing it as you deem appropriate. With how much you got him hard, he simply concedes, letting you do anything you want with his pulsing erection. Having a dick this big in your hands fills you with ideas, but for now, you merely want to give it a really nice stroking as you move your hands up and down along his thick red shaft. He lets out several long moans as you take your sweet time rubbing his meaty dick all over, only jerking him faster once you are satisfied with your touching. As you pick up the pace, sliding your hands up and down at a quicker rate, the werewolf begins to grit his teeth at the antecipation of an explosive orgasm...";
	say "     But you want to keep him on the edge for a little longer, and so, you alternate between quick strokes to slow and steady caresses around his manhood and nuts. The first thing you notice as he comes close to erupting is his knot wanting to swell, which gives you a clear sign of how close his point of no return gets. With a little more time, you get the beastman taking deep breaths as he begins to get impatient, trying to take things into his own matters... And you shove his hands away the second they come too close to you. 'Fuck...! Just make me cum, already...! Don't you wanna see how much I've got in me?' he asks, in almost an attempt at persuading you, but perhaps you should allow him the release, since you have spent enough time here, already.";
	WaitLineBreak;
	say "     To his joy, you resume your fast stroking, jerking his cock at a good pacing. The effect is almost immediate as his knot begins to swell and a full geyser of cum erupts from his member, shooting all over his own body, leaving a thick trail of spunk along his fur-covered chest and abs. Softly rubbing his shaft, now, you let him have his last moments of pleasure until the last drop oozes out. He nearly howls once his climax subside, and this means it is time for you to get your hands off him, stand up and begin to leave.";
	say "     The werewolf brute says nothing more, simply lying down on the ground for a moment, paying no mind to you.";
	CreatureSexAftermath "Werewolf Brute" receives "Other" from "Player";

to say Werewolf Brute Desc:
	if inasituation is true:
		say ""; [dealt with at the source of the event]
	else:
		say "     In front of you stands a really, really big and burly lupine beast, which resembles an actual werewolf from one or more fantasy stories. You can clearly tell it is a [']he['] given the sizable sheath hanging between his legs. The beastly brute is also abnormally large, being about as twice as tall as an average person, and has a hulking frame capable of smothering a smaller prey into submission if caught in his grasp, covered in a coat of gray fur. His fangs are sharp, as well as his claws, a very dangerous sight to have. As his tail twitches, he looks over to you with an inquisitive look, cautiously approaching you with his intimidating presence.";
		if scalevalue of player < 4:
			say "     'Now, who's this puny thing? Another playtoy?' he asks, chuckling to himself. 'You better know your place, or you're gonna get thrashed pretty badly.' With this, the werewolf brute readies his claws to attack you.";

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Werewolf Brute";
	add "Werewolf Brute" to infections of CanineList;
	add "Werewolf Brute" to infections of FurryList;
	add "Werewolf Brute" to infections of NatureList;
	add "Werewolf Brute" to infections of MaleList;
	add "Werewolf Brute" to infections of SheathedCockList;
	add "Werewolf Brute" to infections of BipedalList;
	add "Werewolf Brute" to infections of TailList;
	now Name entry is "Werewolf Brute";
	now enemy title entry is "";
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]He leaps forward and goes to bite you with his sharp fangs.[or]The big werewolf charges and swipes towards you with one clawed hand.[or]The large lupine beastman tries to tackle you, the impact alone being enough to hurt you![or]He comes dangerously close to deliver a flurry of claw swipes at you, fortunately only leaving you with a few scratches.[or]The large werewolf attempts to pin you down under his strong bulk, but you manage to roll to the side and break free, taking some damage in the process.[or]The lupine brute swings his clawed hands at you with two consecutive strikes, cutting through your skin painfully.[at random]";
	now defeated entry is "[Werewolf Brute Loses]";
	now victory entry is "[Werewolf Brute Wins]";
	now desc entry is "[Werewolf Brute Desc]";
	now face entry is "furred, resembling a big and angry wolf with a fierce and dangerous look, lupine eyes and a large mouth covered with sharp teeth, including a couple of respectable fangs.";
	now body entry is "that of a hulking werewolf, covered in large muscles, gray fur and sharp claws in place of nails";
	now skin entry is "covered in gray fur";
	now tail entry is "You have a moderately long fluffy tail swinging excitedly behind you.";
	now cock entry is "[one of]lupine[or]knotted[or]sheathed[at random]";
	now face change entry is "it flows into a lupine shaped muzzle, with a big mouth covered by sharp teeth and fangs. It gives you a fierce and intimidating look";
	now body change entry is "your bones creak and crack as they morph into a brutish and muscular werewolf body, quite big in size";
	now skin change entry is "a coat of gray fur flows over your body";
	now ass change entry is "a fluffy lupine tail emerges from above your ass, twitching about lightly";
	now cock change entry is "your shaft swells and thickens with sudden arousal, attaining a red tone and a knot at its base as a sheath forms around it";
	now str entry is 38;
	now dex entry is 17;
	now sta entry is 21;
	now per entry is 15;
	now int entry is 12;
	now cha entry is 15;
	now sex entry is "Male";  [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 117;
	now lev entry is 12;  [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 28;  [ Amount of Damage monster Does when attacking. ]
	now area entry is "Avalon";  [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 1;  [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 16;  [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 4;  [ Size of balls ]
	now Nipple Count entry is 2;  [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 0;  [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0;  [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0;  [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0;
	now SeductionImmune entry is false;
	now libido entry is 70;  [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is "werewolf brute fur";  [ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 50;  [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "werewolf brute man-milk";
	now CumItem entry is "werewolf brute cum";
	now TrophyFunction entry is "[GenerateTrophyList_WerewolfBrute]";
	now scale entry is 3;  [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]furred[or]muscled[or]strong[at random]";  [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "lupine";
	now magic entry is false;
	now resbypass entry is false;  [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [sexually transmitted infection for when the player loses; can be left empty if they infect with the monster's own]
	now DayCycle entry is 2;  [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "hump";  [ Row used to designate any special combat features, "default" for standard combat. ]
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
	now Name entry is "Husky Alpha"; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 8; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 2; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is "your ears are drawn upwards to the top of your head and a tooth-filled muzzle pushes forward to give you the head of a proud husky"; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is "a husky with [Head Color of Player] fur"; [partial sentence that fits in "Your face and head resemble that of [Head Description of Player]. You have [Eye Adjective of Player], [Eye Color of Player] eyes and an overall [Gender Adjective of Player] appearance."]
	now Head Adjective entry is "canine"; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is "furred"; [one word descriptive adjective]
	now Head Color entry is "grey and white"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is ""; [partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 0; [hair length in inches]
	now Hair Shape entry is "straight"; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is "white"; [one word color descriptor]
	now Hair Style entry is "buzzcut"; [one word style descriptor (ponytail/mohawk/buzzcut/...) to fit "On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style."]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...) to go into "You have a [Hair Color of Player] [Beard Style of Player]."]
	now Body Hair Length entry is 0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is "blue"; [one word color descriptor]
	now Eye Adjective entry is "round"; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 10; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 10;
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is "slobbery"; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is "pink"; [one word color descriptor]
	now Tongue Length entry is 7; [length in inches]
	now Torso Change entry is "grey and white fur sprouts all over it, giving you a warm and shining coat"; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is "covered in a warm coat of [Torso Color of Player] fur"; [partial sentence, fitting in "Looking down at yourself, you appear [Gender Adjective of Player] with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 1], covered in [Torso Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Torso Color of Player] skin[end if]."]
	now Torso Adjective entry is "canine"; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [torso adornments of Player]."]
	now Torso Skin Adjective entry is "furred"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Torso Color entry is "grey and white"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Torso Pattern entry is ""; [single word color adjective for the dominant pattern of the skin/fur/feathers/scales]
	now Breast Adjective entry is "perky"; [adjective(s) example: round, pointy, perky, saggy, bouncy. This would serve as either a general appearance of a infections breasts or possibly something that may be effected by a item or NPC.]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Nipple Count entry is 2; [count of nipples]
	now Nipple Color entry is "pink"; [one word color descriptor]
	now Nipple Shape entry is "oval"; [shape example: any shape will do as long as it has a baseline with a current infection or item]
	now Back Change entry is ""; [partial sentence that fits in: "Your back [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Back Change entry]."]
	now Back Adornments entry is ""; [partial sentence to fit: "Your back tickles with the feeling of movement caused by [back adornments of Player]."]
	now Back Skin Adjective entry is "furred"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Back Color entry is "grey and white"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is "your fingernails grow into blunt claws and grey-white fur spreads over your paw-hands, then all the way up your arms"; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is "covered in [Arms Color of Player] fur, ending in paw-hands with blunt claws"; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is "furred"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Arms Color entry is "grey and white"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Locomotion entry is "bipedal"; [one word adjective: (bipedal/quadrupedal/octapedal/serpentine/sliding)]
	now Legs Change entry is "they shift into the digitigrade stance of an anthro husky with thick grey and white fur and paws"; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is "that of an anthro husky, with thick [Legs Color of Player] fur covering them from your hips down to the clawed paws"; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is "furry"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is "grey and white"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is "it becomes well-rounded, with grey and white fur sprouting over it"; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is "ass, covered thick grey and white fur"; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [ass shape adjective of Player] [ass description of Player]."]
	now Ass Skin Adjective entry is "furry";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is "grey and white"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is "a mid-length canine tail sprouts from your tailbone, soon covered in grey and white fur"; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is "mid-length, [Tail Color of Player] tail"; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is "furry"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is "grey and white"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 8; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite (< 3), shallow (< 5), average (< 9), deep (< 15), bottomless (15+)"]
	now Asshole Tightness entry is 3; [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "extremely tight, tight, receptive, open, gaping"]
	now Asshole Color entry is "pink"; [one word color descriptor]
	now Cock Count entry is 1;
	now Cock Girth entry is 4; [thickness 1-5, generates the Cock Girth Adjective]
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 9; [length in inches]
	now Cock Change entry is "it takes on a reddish color and canine shape, complete with a pointy tip, knot at the base and a sheath to protect it"; [partial sentence that fits in: "Your cock [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is "is [Cock Color of Player] and has a pointy tip and a knot at the base, as well as a sheath to protect it when not erect"; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [cock adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock description of Player]."]
	now Cock Adjective entry is "canine"; [one word adjective: avian/canine/...]
	now Cock Color entry is "red"; [one word color descriptor]
	now Ball Count entry is 2;
	now Ball Size entry is 3; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is "balls in a furry, low-hanging sack"; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [ball description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0;
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
"werewolf brute fur"	"A tuft of gray fur that looks like it has been pulled out of the coat of a werewolf brute. It's rather soft."	0	werewolf brute fur

werewolf brute fur is a grab object.
It is temporary.
werewolf brute fur is infectious.
Strain of werewolf brute fur is "Werewolf Brute".
Usedesc of werewolf brute fur is "[WWBruteFurUse]";

to say WWBruteFurUse:
	say "Holding the tuft of fur between your fingers, you stroke over it, delighted in its softness. Strangely, the hair disintegrates after a while, becoming a cloud of fine particles that are absorbed into your skin.";

instead of sniffing werewolf brute fur:
	say "The fur has a pleasing, not too strong, animal-like scent.";

Table of Game Objects (continued)
name	desc	weight	object
"werewolf brute cum"	"A plastic water bottle containing a moderate amount of milky white fluid. Almost could be mistaken for some sort of buttermilk, if someone hadn't written 'Werewolf Brute Cum' across the label on the bottle. You [italic type]could[roman type] drink it to quench your thirst, or you maybe just do it for fun. Who knows what else it might do to you though..."	1	werewolf brute cum

werewolf brute cum is a grab object.
werewolf brute cum is cum.
werewolf brute cum is infectious.
Strain of werewolf brute cum is "Werewolf Brute".
Usedesc of werewolf brute cum is "[werewolf brute cum use]";

to say werewolf brute cum use:
	say "Lifting the plastic bottle to your mouth, you take a drink from it, letting the creamy fluid cum run over your tongue and down your throat. Tastes rich and animal-like. Swishing it around in your mouth a little, you finish the bottle off, then stuff it back into your collection of 'empties'.";
	PlayerDrink 5;
	SanLoss 5;

instead of sniffing werewolf brute cum:
	say "You open the lid for a moment and take a sniff. Doesn't smell too bad actually, just kinda nutty.";

Table of Game Objects (continued)
name	desc	weight	object
"werewolf brute man-milk"	"A plastic water bottle filled with what is clearly milk. One could think it was a regular cow's milk, if someone hadn't written 'Werewolf Brute Man-Milk' across the label on the bottle. You [italic type]could[roman type] drink it to quench your thirst. Who knows what else it might do to you though..."	1	werewolf brute man-milk

werewolf brute man-milk is a grab object.
werewolf brute man-milk is milky.
Purified of werewolf brute man-milk is "distilled milk".
werewolf brute man-milk is infectious.
Strain of werewolf brute man-milk is "Werewolf Brute".
Usedesc of werewolf brute man-milk is "[werewolf brute man-milk use]";

to say werewolf brute man-milk use:
	say "Lifting the plastic bottle to your mouth, you take a drink from it, letting the reptilian man-milk run over your tongue and down your throat. Tastes rich and animal-like. Swishing it around in your mouth a little, you finish the bottle off, then stuff it back into your collection of 'empties'.";
	PlayerDrink 15;

instead of sniffing werewolf brute man-milk:
	say "You open the lid for a moment and take a sniff. Smells kinda like any other milk, really.";

Werewolf Brute ends here.
