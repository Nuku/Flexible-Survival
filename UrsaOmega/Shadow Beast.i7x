Version 1 of Shadow Beast by UrsaOmega begins here.
[Version 1.1 - Oral player loss added by Stripes]

"Adds a Shadow Beast creature to the Trevor Labs Underground, with impreg chance."

Section 1 - Monster Responses

when play begins:
	add { "Shadow Beast" } to infections of guy;
	add { "Shadow Beast" } to infections of Felinelist; [list of feline infections]

to say shadowbeastdesc:
	setmongender 3; [creature is male]
	increase mondodgebonus by 5;
	if inasituation is true: [special event]
		say ""; [dealt with in the file where the event is described]
	else:
		if ShadowBeastEventState is 0:
			say "     [one of]You see something shimmer out of the corner of your eye[or]You feel a strange presence behind you[or]You are overtaken by a sense of dread[at random] and you turn to see a black cat step out of the shadows. It looks like a regular panther on all fours, except for the two black tentacles which sprout from its back. They end in gripping pads, which you imagine are ideal for holding victims still. Between its legs you can see a hefty sheath and testicles, demonstrating the breeding ability of the beast. It seems to shimmer, like it's manipulating the light around it; suddenly, it disappears for a second before reappearing before you, claws extended!";
		else if ShadowBeastEventState is 1: [Hunted Survivor Event]
			say "     Rushing forward, you get your hands on the dark tentacle and pull, wrenching the gripping pad at its end from the man's skin. The guy doesn't waste a second of the chance you're giving him, scrambling to his feet and making a panicked dash for the exit. Meanwhile a black feline shape seems to shimmer into sight out of the darkness where the tentacle originated, growling at being cheated out of its prey. As you whirl around to make your escape from this strange beast, you see it vanishing again, somehow manipulating the shadows all around in an eye-twisting effect. Moments later, it's between you and the exit to the surface, coming back into view as it pounces you, both tentacles whipping forward through the air.";
			now ShadowBeastEventState is 0; [pre-fight event part done, back to normal description]
		else if ShadowBeastEventState is 2: [add other event monster appearances here and below]
			say "     <event desc>";
			now ShadowBeastEventState is 0; [pre-fight event part done, back to normal description]

to say losetoshadowbeast:
	if inasituation is true: [special event]
		say ""; [dealt with in the file where the event is described]
	else:
		if a random chance of 1 in 3 succeeds and inheat is not true:		[creature demands oral]
			say "     The black feline grabs you [if HP of player > 0]softly[else]roughly[end if] with its tentacles and restrains you. It snarls before moving overtop of you, pressing its groin to your face. The dark cat's large manhood is ground against you, precum dribbling onto your cheek. Its strong scent is enticing[if player is submissive] and awakens your submissive urges. You moan and part your lips, welcoming it into your willing mouth[else if HP of player > 0], drawing you to welcome it into your willing mouth[else], but you try to resist, turning away. When you do, the beast gives you a warning growl and squeezes its tentacles around you more firmly. Forced to comply, you part your lips and welcome it into your unwilling mouth.";
			say "     Once the shadowy beasts's rod is in your mouth, drooling its musky pre onto your tongue, [if player is submissive or HP of player > 0]you lick and suck on it with a growing lustful need[else]you find yourself licking and sucking on it with a growing lustful need[end if]. This male's cock tastes so wild, so virile that your body desires the feline's seed inside you. And though its barbed member scratches across your throat, the discomfort of this soon turns to an increased sensitivity that allows you to feel its thrusts into you all the better.";
			say "     With its pendulous balls resting at your chin, you can feel those warm orbs pulse and throb moments before the creature snarls in climax. It drives all fifteen inches of its cock into your mouth and empties its copious load down your throat and into your belly, filling you with the warmth of its fertile seed. Tasting the excess that bubbles up around its shaft, you savor the strong taste of this virile creature's semen. A wave of lust overtakes you, filling you with a lustful need for more. But the cat's already done with you and pads off, leaving you feeling horny for more. It takes you an effort to not go off after it or go searching immediately for another of its kind to submit yourself to in the hopes of getting properly bred.";
		else if fightoutcome is 22: [Submit]
			say "     The cat is clearly pleased at your submission to it, adopting a more relaxed stance. The beast tugs at your gear, indicating that you should remove it - a request you comply with quickly, putting your gear aside and kneeling before the creature.";
			say "[sbdoggy style]";
		else:
	[	if fightoutcome is 20 or fightoutcome is 21: [Damage and lust succumb]		]
			say "     The shadowy cat's onslaught is too much to bear, and you fall prostrate before it. The beast senses the last of your resistances failing, and adopts a more relaxed stance, advancing on you with purpose. Despite your weak struggling, it manages to remove your gear quickly with its teeth and tentacles, leaving you shivering and naked on the floor before it.";
			say "[sbmissionary]";

to say beattheshadowbeast: [Victory scenes]
	if inasituation is true: [special event]
		say ""; [dealt with in the file where the event is described]
	else:
		say "     ([link]Y[as]y[end link]) - Grab the Shadow Beasts tail and drag it back for some fun.";
		say "     ([link]N[as]n[end link]) - Let the beast away to lick it's wounds.";
		if player consents: [sex!]
			if player is male:
				say "     Just before the creature can escape, you lunge forward and wrap your hand with the panther tail, bringing it to a quick halt. Inky darkness surrounds your hand as the Shadow beast tries to escape into the darkness unsuccessfully in its wounded state. You reel it in closer, ironically catching one of its own grasping tentacles to pull it closer. There is a moment when you fear its claws will come out, but as you move over the snarling creature and cup its hefty feline balls, the intention becomes clear for it and the beast relaxes. You wrestle the creature gently, bringing it to the ground and spooning it from behind, pressing between its grasping tentacles and grinding into its sleek fur. You stroke its underside with your hands.";
				say "     It's so soft, and your tom-kitty purrs for you. You ache for some fun though, and you probably shouldn't keep a lab full or more of big cats, so you get to business. Feeling around above those hefty nuts you find the big cat's pert ring. As you push your fingers into it, the beast moves its tentacles around your legs and against your inner thighs, stroking softly at your own shaft and balls; it's eager for you too. You pry the big cat open, making it yowl and squirm as you shift your body downwards to get your cock under that tail. Not an easy task with those tentacles still wrapped around your junk, the gripping pads stroking continuously and giving an odd tugging sensation. You push your cock between the fingers you have in shadow cat's hole as you pull them out simultaneously.";
				say "     As you sink into it, the cat gives a loud pleased hiss. You roll your hips, thrusting from your sideways position on the ground and reach over to stroke the shadowbeast's own cock, the barbs catching in your hand as you try to pump it. Green and amber slitted eyes appear in dark corners of the room, watching, but not disturbing you and the yowling beast, waiting their turn to try and tame you, or for you to tame them. As you come to a climax, you thrust yourself into as deep as you can and cry out as you unload. The shadow beast's form ripples, its euphoria briefly messing with its shadow form abilities. There is a splatter, as the beasts length twitches, sending out ropes of its virile seed over the floor between its kicking legs.";
				say "     The tentacles grasping you slacken, and you withdraw your dribbling cock you prepare to move on.";
			else if player is female:
				say "     Lunging forward, much like when the creature had first charged out of the shadows for you, you grab the Shadow Beast's tail and pull yourself up on top of it. You feel like a warrior princess, straddled atop your snarling panther. The tentacles on its back slap at you, and you slap the feline's rear, and get a hold of those tentacles before they can strike you free. Disarmed, the beast tries to turn its head and roll its bright green slitted eyes to look at you. You give the creature a reassuring stroke, there's no need for claws now you're in control. You encourage the creature to roll over beneath you. You are met with a heavenly softness against your folds and inner thighs, that can only be a soft feline belly.";
				say "     There is a poke against your butt cheeks as the beast shifts comfortably though, reminding you why you got a hold of him. Easing back, you push your vulva against that pointed spire, the feline's tip poking open your folds by design. The shadow panther purrs, closing its eyes and making its shadowy body difficult to discern easily beneath you with the only point of color gone, save for the radioactive green color of the cocktip itself and the tentacles hovering languidly over you. You press further, sinking the long cat length further into you, savoring it as both you and the shadow beast squirm, the backwards facing barbs of the cock folding for entry. You push your hands into the soft chest fur, massaging the inky pool beneath you.";
				say "     The beast responds, awkwardly thrusting upwards for your gentle gesture, the first pull back of his hips making you both hiss, overstimulating at first. You feel warm fluid trickle down your inner thigh, the creatures cum and your own transudate quickly forming. Bright, eager slitted eyes open in the shadows around you, more excited shadow beasts hoping for a turn. The gripping tentacle pads of your mount grab ahold of you, bobbing you up and down, the pointed tip nearing your cervix with each thrust. The shadow beast's breath quickens, and the claws dig slightly into you, but you're too aroused to care as your orgasm peaks, blurring the office florescent lights as you lose focus. In the blur you hear a feral yowl beneath you.";
				say "     The beast quivers, launching wads of cum deep into your tunnel and belly till it trickles out over its own plush sheath and orbs. You take time to rub the soft belly beneath you, while his cock goes flaccid, saving yourself the worst of the barbs as you free yourself. You move quickly after, as it takes speed to escape his envious onlookers.";
			else:
				say "     You make a snatch for the feline, but it deftly transforms into shadow, shifting through your fingers in wispy darkness. Up ahead it materializes, staggering and snarling as it makes it's ungainly escape. Every step is stronger than the last, and you know the creature will be healed and prowling the corridors momentarily";
		else: [let the beast go]
			say "     The beast, clearly surprised by your ability to fight it off, gives you a threatening growl as it backs off. Its body shimmers as it tries to slips back into invisibility, but it seems wounding it has hindered its ability to cloak. Instead, it chooses a more conventional form of escape; it darts off into the shadows, its pitch-black body merging with the darkness.";

to say sbmissionary:
	say "     You try to scramble away, but the black cat pounces on you, pinning your arms and upper body, your back pressed to the hard ground with its lithe but surprisingly muscular bulk. You try to kick at the beast, but that only puts your legs in range of the cat's back-tentacles, which lash out and grab your limbs. Before you can wretch them away, they curl around your shins and ankles firmly. [if player is submissive]You gasp as you are dominated by your captor, aroused by the beast's rough handling of your body[else]You struggle against your captor, but you are quickly overpowered[end if]. Your legs are pulled up and apart by the tentacles, raising your rear and exposing your [if player is female]moist slit[else]tight pucker[end if] fully.";
	say "     The feline's cock is fully erect and dripping precum now; it seems a good deal bigger than any regular panther's malehood. Behind it lie two pendulous testicles, practically churning with fertile seed; you shudder[if player is submissive] with pleasure[end if] at the thought of the large cat inseminating you. It looks like you won't have to wait long to experience it for yourself as the feline moves its body over your own doubled-over form, positioning its hips between your splayed legs. You feel the tip of its maleness, rough and wet, brush the inside of your thighs[if player is submissive] and you tremble at the touch, your arousal growing[else] and you start struggling again, only to be frozen by a threatening growl from the cat[end if].";
	WaitLineBreak;
	say "     The shadow beast hunches its hips suddenly, bringing its cock to graze across your [if player is female]labia[else]asshole[end if], coating it in the cat's copious precum. The next movement brings the pointed head of its maleness to push more forcefully at your entrance. The head slips inside your body and you [if player is submissive]moan in submission[else]cry out in disdain[end if] as your [if player is female]cunt[else]pucker[end if] is spread by the feline's erection. The beast hilts himself inside you with a powerful thrust, and begins to fuck you mercilessly, cock pistoning in and out of your [if player is female]snatch[else]anus[end if].";
	say "     Each time the cat pulls back, you feel the rough barbs on the head of its shaft rub your insides uncomfortably; however, after several strokes, the pain becomes strangely pleasurable[if player is impreg_able]. The barbs start to kindle a warmth around your womb, and you wonder how much the strange physiology is effecting your reproductive system; unbidden, thoughts of your belly swelling with the dark beast's spawn swirl in your head[end if]. The feline pounds you, its thick cock plunging into you over and over again. It moves its head to grab your shoulder with its powerful jaws and spread your legs further with its tentacles to thrust even deeper into you. You shudder [if player is submissive]with pleasure [end if]at the sensation of being so thoroughly used by this creature.";
	WaitLineBreak;
	say "     After what feels like an eternity of being roughly bred by the creature, the end seems to be near as the cat speeds up its already frantic thrusting. The beast growls as its climax nears, and with one titanic thrust it bottoms out in you. You feel its huge malehood twitch as the first spurts of hot, fertile cum spurt into your [if player is female]womb[else]rectum[end if], coating your insides with thick ropes of feline seed. The cat continues thrusting throughout its orgasm, pushing its load deeper into you. The flow eventually abates, and the beast pulls out with a wet pop, its cum dribbling from your abused [if player is female]cunt[else]pucker[end if]. The tentacles let your legs down, and the cat slinks away into the shadows, its interest with you lost now that you've served its pleasures.[impregchance]";

to say sbdoggy style:
	say "     The beast circles your prostrated form contentedly, looking over its latest conquest. From the way its sizeable length is quickly slipping from its sheath, you suspect it approves heartily. It pushes you down to your hands and knees with its tentacles, and you maintain the all-fours posture, [if player is submissive]eager to please your shadowy master[else]hoping the cat won't be too rough on you[end if]. The creature stalks behind you, and suddenly you feel the thing's warm breath on your bare skin as it sniffs around your rear. You come to the uncomfortable realization that it's probably ascertaining your ability to bear its offspring; [if player is impreg_able]it purrs with satisfaction at your apparent fertility[else]it gives a growl of disappointment at your inability to bear its young, but seems to be undeterred in mounting you[end if].";
	WaitLineBreak;
	say "     The creature leaps onto your back, its lithe and muscular form draping itself over yours. The soft fur almost feels nice on your back, but you're quickly reminded of what's going on when the beast's forelimbs hook themselves around your hips. A hunch of its own hips brings something rough and wet to slide up your thigh; with some shuffling the creature brings the head of its erection to your [if player is female]moist slit[else]quivering pucker[end if]. A pair of fearsome jaws lock themselves around your shoulder, reminding you of the price of resistance[if player is submissive]. You moan as you feel your bestial master take complete control of you, and you push yourself back against his length, silently begging him to take you[end if]. The beast pushes its length into you, hilting itself in one smooth thrust; the sudden penetration first makes you cry out in pleasure, then in pain as the creature's cruel barbs scrape along your insides.";
	WaitLineBreak;
	say "     The cat pumps in and out of your [if player is female]cunt[else]ass[end if] mercilessly, breeding you hard and deep. Soon, the sensation of the cat's barbs becomes almost pleasant as they rub your [if player is female]vaginal[else]rectal[end if] walls[if player is impreg_able]. They start to kindle a warmth around your womb, and you wonder how much the strange physiology is effecting your reproductive system; unbidden, thoughts of your belly swelling with the dark beast's spawn swirl in your head[end if]. The thing's tentacles descend under your body, stroking your [if cocks of player > 1][cock of player] cocks[else if player is male][cock of player] cock[else if breast size of player > 0]your [breast size desc of player] breasts[else]your bare skin[end if] as it drives its cock into you over and over again. [if player is male]A tentacle wraps itself around your cock[smn], stroking in time with the pounding thrusts. Between this new stimulation and the battering your prostate is receiving, it doesn't take long for you to reach climax, blowing your [cum load size of player] load uselessly on the floor. Your orgasm causes you to clench around the malehood invading you, drawing a lusty purr from your bestial captor[end if]. ";
	WaitLineBreak;
	say "     The beast's thrusting grows faster and deeper, and you push yourself back into the thrusts, [if player is submissive]eager to feel the beast cum inside you[else]eager to end this before it goes on any longer[end if]. The creature tightens its grip around your waist and the mating bite on your shoulder as it hilts itself inside you with one powerful thrust. You feel hot ropes of cum coat your [if player is female]womb[else]rectum[end if] as the creature growls out its climax. It keeps thrusting, pushing its fertile seed deeper into your receptive body. It lays on top of you while its orgasm subsides, [if player is impreg_able]stroking your belly with its tentacles; you shudder and hope its seed didn't take[else]purring contentedly at its latest conquest[end if]. Finally, it dismounts, withdrawing its cock with a wet pop and a dribble of cum from your abused [if player is female]snatch[else]asshole[end if]. As it slinks back into the shadows, you wonder if [if player is submissive]you'll get another chance to play with the cat soon[else]submitting to the beast was worth it[end if].[impregchance]";

ShadowBeastEventState is a number that varies.

Section 2 - Monster Insertion

Table of Random Critters (continued)
name	enemy title	enemy name	enemy type	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	DayCycle	altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now name entry is "Shadow Beast";
	now enemy title entry is "";
	now enemy name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]The beast disappears in a flicker of darkness before reappearing behind you, striking at you![or]The beast lashes out with its tentacles![or]The beast leaps at you![or]The Shadow Beast firmly makes its point![or]One of its tentacles whips though the air and gives you a painful slap.[or]A slash of a clawed paw leaves bloody marks on you.[at random]";
	now defeated entry is "[beattheshadowbeast]";       [ Text when monster loses. Change 'shadowbeast' as above. ]
	now victory entry is "[losetoshadowbeast]";         [ Text when monster wins. Change 'shadowbeast' as above. ]
	now desc entry is "[shadowbeastdesc]";
	now face entry is "that of a panther, sleek and predatory";  [ Face. Format as Your face is [face of player]. ]
	now body entry is "the form of a large feral cat, but with two long tentacles emerging from your back";
	now skin entry is "dark-furred";  [ Skin. Format as "Looking at yourself, your body is covered in [skin of player] skin." ]
	now tail entry is "You have a feline tail that twitches this way and that behind you.";  [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "feline";
	now face change entry is "it reforms into the visage of a panther, complete with a sleek predatory muzzle and cat-like ears";  [ Face TF text. Format as "Your face tingles as [face change entry]." ]
	now body change entry is "it cracks and shifts into a quadrupedal stance, becoming sleek and muscled. You feel like a coiled spring, ready to pounce on prey at a moment's notice. Two long black tentacles with strong gripping pads at their ends grow out of your back, giving you another pair of appendages";
	now skin change entry is "inky black fur covers you from head to toe";
	now ass change entry is "your new feline tail pushes out from somewhere above your rear";  [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "it becomes more tapered, the head of your shaft growing wicked-looking barbs to stimulate your mates with";  [ Cock TF text, format as "Your groin tingles as [cock change entry]." ]
	now str entry is 14;
	now dex entry is 18;
	now sta entry is 12;
	now per entry is 15;
	now int entry is 8;
	now cha entry is 12;
	now sex entry is "Male";              [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 30;
	now lev entry is 3;                   [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 5;                  [ Monster's average damage when attacking. ]
	now area entry is "Sealed";           [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1;                 [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 15;          [ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 7;            [ Cock width, more commonly used for ball size. ]
	now breasts entry is 6;               [ Number of nipples the infection will give a player. ]
	now breast size entry is 0;           [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 0;      [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;                 [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 0;           [ Depth in inches of female sex the infection will attempt to give a player. ]
	now cunt width entry is 0;            [ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 60;               [ Target libido the infection will rise towards. ]
	now loot entry is "";                 [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0;            [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3;                 [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]lithe[or]sleek[or]toned[at random]";  [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender"]
	now type entry is "[one of]feline[or]cat-like[at random]";    [ one-word creature type. Ex: feline, canine, lupine, robotic, human...]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now DayCycle entry is 0;        [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;     [ Row used to designate any special combat features, "default" for standard combat. ]

Section 3 - Events

[ Event by Wahn]
Hunted Survivor is a situation.
The sarea of Hunted Survivor is "Sealed".

when play begins:
	add Hunted Survivor to badspots of guy;

Instead of resolving a Hunted Survivor:
	say "     As you step through the access door into the underground levels under the Trevor Labs and move down the dark corridor beyond, you hear something. The sound of naked feet on the concrete floor echo from somewhere ahead, quickly getting louder as their source gets closer. Then a man bursts out of one of the side passages, clothed in nothing but a few shreds of tattered clothing and running all out towards the exit.";
	if the player is not facially human or the player is not bodily human:
		say "     As he sees your inhuman form, the man gives a panicked scream, scrambling to stop his movement towards you, followed by a mad dash down a side corridor before you can say or do anything. Moments later, a shimmer runs through the darkness where he came from, and for a second you think you can make out a black feline shape, its head turning towards you as it gives a low growl, as if warning you off. Then it is gone again, twisting the shadows around it somehow in an eye-wrenching effect that makes you lose it from view. Further growls echoing along the halls, each one quieter than the one before indicate that it resumed its hunt.";
	else:
		say "     As he sees you, the man shouts 'Run!', just as a long tentacle whips through the air from the darkness behind him and wraps around his left leg. With a panicked scream, the man goes down as his leg is pulled out from under him, hands scratching over the floor as he tries to hold on to something - anything, really.";
		say "     Uh-oh - what now? Maybe try to help this man (Y)? Or would you rather get out of here before you're the next target of a hungry - or horny - monstrosity (N)? ";
		if player consents:
			now ShadowBeastEventState is 1; [special event description instead of the normal one]
			challenge "Shadow Beast";
			if fightoutcome >= 20 and fightoutcome <= 29: [lost/submitted]
				say "     With the tentacled panther back into darkness, you're left alone in the hallway, sticky with its cum leaking out of your [if player is female]pussy[else]ass[end if]. Collecting your gear, you clean up as good as you can and go back to the surface exit, relieved as you leave behind the dark corridors. Of the man you helped escape, there is no trace. He must have kept running, vanishing out into the city. Who knows what already has or will happen to him out there - naked and exhausted as he is. On the other hand... he might just get lucky and you could run into him again.";
			else if fightoutcome >= 30:	                            [fled]
				say "     Ducking under grasping tentacles and evading slashing claws, you run along the corridor. The panther creature is literally just one or two steps behind and at times you can feel its hot breath on your neck, but you manage to get to through the access door and slam it closed behind you. Holding it closed as the shadow beast slams against it several times, you listen to its frustrated roars and snarls. Then everything gets quiet, and just as you think you can let go another heavy bump from the inside almost throws the door open. There is a snarl, then again silence. With the creature clever enough to try to trick you into thinking it's gone, you end up holding tight on the door for half an hour at least before you relax. Seems like it's gone after all, this time...";
				say "     Of the man you helped escape, there is no trace. He must have kept running, vanishing out into the city. Who knows what already has or will happen to him out there - naked and exhausted as he is. On the other hand... he might just get lucky and you could run into him again.";
			else if fightoutcome >= 10 and fightoutcome <= 19: [won]
				say "     After having fought of the tentacled shadow beast, you decide to postpone further underground adventures to another time and walk back towards the access door. Stepping out and closing it behind you gives you relief of the constant tension that there might be something in the darkness, watching you.";
				say "     Of the man you helped escape, there is no trace. He must have kept running, vanishing out into the city. Who knows what already has or will happen to him out there - naked and exhausted as he is. On the other hand... he might just get lucky and you could run into him again.";
		else:
			say "     Whirling around, you run as fast as you can back to the exit and don't look back. The sounds of what's happening behind you follow you though, even though you wish you wouldn't hear the man's panicked struggling, followed by a satisfied-sounding roar and painful scream. Rhythmic grunts and growls interspersed with whimpering indicate that the creature at least didn't hunt the man to eat him, though leaving him to 'just be raped' by some monstrosity from the depths of the underground complex is a bit of a weak excuse. A shudder runs down your spine as you throw the door closed behind you and you do your best to scrub what's happened from your mind.";
	now Hunted Survivor is resolved;

Section 4 - Endings

when play ends:
	if bodyname of player is "Shadow Beast":
		if humanity of player < 10:
			if player is male: [male+herm]
				if player is submissive: [male+sub]
					say "     After you lose your mind to the infection's insidious grip, you find yourself stalking along the streets of the ruined city with a new eagerness as you go on the lookout for something to breed your virile seed into. Though even as you catch a female husky, pulling her legs out from under her with your tentacles and then mounting her, your thoughts wander back to the shadow beast that originally infected you. Feeling his tentacles on your body, just like you're holding your husky prey now, then getting fucked by the large feline. Imagining yourself in her position, you soon fill the husky with your seed, ensuring that her belly will soon swell with a litter of feline/canine hybrids.";
					say "     The wish - the need - to feel a large feline on top of yourself again drives you to return to the darkness of the underground passages under the laboratory. The male that originally infected you quickly appears out of the shadows, tentacles raised in the air, ready to strike in a fight for his territory. But instead of fighting, you lower your head submissively before him, then present your hindquarters, ready to be mounted. The large feline sniffs you, clearly getting aroused from your body's pose and the pheromones it sends out in its need, then pulls himself on your back.";
					say "     His hard, spined shaft finds your asshole and is thrust inside with a loud, satisfied growl. Rocking and grunting with bestial ferocity, with no time for idle pleasantries, he curls his tentacles around your belly to pull you tightly against his thrusting feline form. Minutes turn to hours as the larger male above you ruts his hips into your backside, drenching your thighs with his seed as more than one of his ample loads gush from your hole in hot sticky torrents. It's only when the male can rut no more than he pulls himself off of you, his tentacles uncurling almost regretfully as they slip from around your quivering form.";
					say "     From then on, you visit the strong male every time your libido builds up again, increasingly eager to feel his weight on your back and his spined cock inside you. When the military finally comes in to clean up the city the two of you vanish like ghosts, the large male leading the way through the darkness and you following him into the unknown.";
				else:
					say "     After you lose your mind to the infection's insidious grip, you find yourself stalking along the streets of the ruined city with a new eagerness as you go on the lookout for something to breed your virile seed into. Quickly realizing that it's easier to move and hunt at night, as your black form shifts through the darkness like sand down the slope of a hill, you make darkness your new companion as you sweep through the streets, a wraith in your own right.";
					say "     It takes some time, but finally the patient hunter you now are is rewarded as feline senses guide you to your rightful prey. The female soldier never sees you coming - her back turned towards you as she jabbers into something shiny within her hand - and with lightning quickness you pounce and then roar in triumph as you curl your tentacles around the woman, keeping her struggles to a minimum as you tear at her clothes with your sharp feline claws. Having trusted your senses to get you this far, you know that the other is ready to be bred and soon you are filling the female with your spiny feline cock as you eagerly rock your hips forward into the woman's shuddering human form. Grunting and growling with bestial glee, you breed the female for minutes on end, purging her of her humanity as your seed bears root inside of her deliciously curving feline form.";
					say "     An hour later you remove your tentacles from around the female just as your cock slips free from her dripping feline folds. Seeing her sleek and predatory muzzle turning to face you, you nuzzle against the side of your new mate's neck as she raises herself up to greet you in turn. When the military comes in to clean up the city the two of you vanish like ghosts as you follow the darkness into the unknown - the fruit of your union sagging heavy inside of your mate's belly.";
			else if player is female: [female]
				say "     Once your mind becomes lost to the infection's heavy grasp, you quickly return to the darkness of the underground passages under laboratory, where your knowing mate waits for your arrival. The male wastes little time in looking at your lithe feline form before he pulls himself over your back, impatient to begin cementing your place underneath his power as his spiny feline cock embeds itself within your throbbing feminine folds. Rocking and grunting with bestial ferocity, with no time for idle pleasantries, he curls his tentacles around your belly to pull you tightly against his thrusting feline form.";
				if "Sterile" is not listed in feats of player:	[F-BREEDABLE]
					say "     Minutes turn to hours as the larger male above you ruts his hips into your backside, drenching your thighs with his seed as more than one of his ample loads gush from your twat in hot sticky torrents. It's only when the male can rut no more than he pulls himself off of you, his tentacles uncurling almost regretfully as they slip from around your quivering form. When the larger beast moves around to sniff at your leaking folds you turn to see him purring in delight as he scents his seed having borne fruit.";
					say "     When the military comes in to clean up the city you and your mate take to the shadows to depart his former home as you and happily make your way to parts unknown to prepare for the cubs growing inside your womb.";
				else:
					say "     Minutes turn to hours as the larger male above you ruts his hips into your backside, drenching your thighs with his seed as more than one of his ample loads gush from your twat in hot sticky torrents. It's only when the male can rut no more than he pulls himself off of you, his tentacles uncurling almost regretfully as they slip from around your quivering form. When the larger beast sniffs at your nethers you turn to see a look of disappointment straining his muzzle as he shakes his head almost angrily up at you.";
					say "     When the military comes in to clean up the city you and the male go your separate ways, his disdain at your inability to bear his cubs forcing him to push you away with vicious snaps and snarls.";
			else: [neuter]
				say "     Once your mind becomes lost to the infection's heavy grasp, you find yourself stalking along the streets of the ruined city with a strange eagerness as you go on the lookout for prey to catch. Hunting down a female husky in the night, your tentacles pull her legs out from under her, allowing you to mount her - only to have your animal mind get rather confused as your genderless body doesn't have an outlet for your inbred urges. With a snarl, you leave a clearly disappointed husky lying on the street and vanish into the darkness again.";
				say "     After repeating similar scenes with other prey, becoming increasingly frustrated in the process, you return to the darkness of the underground passages under the laboratory. The male that originally infected you quickly appears out of the shadows, tentacles raised in the air. Debilitatingly horny as you are, you present your hindquarters to him, ready to be mounted. The large feline sniffs you, clearly getting aroused from your body's pose and the pheromones it sends out in its need, though he does seem a bit baffled at your lack of a pussy.";
				say "     Nevertheless, he pulls himself up on your back, his hard, spined shaft finding your asshole, and thrusts in with a growl. Rocking and grunting with bestial ferocity, with no time for idle pleasantries, he curls his tentacles around your belly to pull you tightly against his thrusting feline form. Minutes turn to hours as the larger male above you ruts his hips into your backside, drenching your thighs with his seed as more than one of his ample loads gush from your hole in hot sticky torrents. It's only when the male can rut no more than he pulls himself off of you, his tentacles uncurling almost regretfully as they slip from around your quivering form.";
				say "     From then on, you visit the strong male every time your libido builds up again, increasingly eager to feel his weight on your back and his spined cock inside you. When the military finally comes in to clean up the city the two of you vanish like ghosts, the large male leading the way through the darkness and you following him into the unknown.";
		else: [sane]
			say "     When the military comes to clean up the city the soldiers on duty are a bit unsure how to handle your somewhat unusual form. One of them, being more adventurous than the others, guides you back to the quarantine zone for inspection and anti-infection treatment. The scientists on duty marvel at your unusual appendages, testing them in rather crude methods as they wonder the extent of your control over your tentacles. A firm flick and a resounding smack against the back of one of their heads gives them all the information they need to know.";
			say "     Being treated and then sent on your way, you find yourself unsure about what to do next as you wander the new world without a certain path to follow. Luckily, you end up finding a spot in need of a couple of hands to do some heavy lifting without a lot of questions being asked while passing through a somewhat shady city. With your extra added appendages and feline stamina, you are able to work the longest of those hired and soon find yourself getting into contact with a number of employers on the lookout for a strong back and tight lip. Daylight work turns into nighttime excursions, and soon you find yourself working seedier gigs until your name becomes a hushed whisper on the lips of people with things to hide.";
			say "     A number of jobs, some pleasant, others not, lead you to finding your way into the beds of both 'meta' and regular humans, male and female, on the nights when work runs slow. Those who you spend the most time with end up being marked as people who you can actually call friend.";
			if player is female and "Sterile" is not listed in feats of player:	[F-BREEDABLE]
				say "     It doesn't take long till one of your couplings has predictable results, with your stomach beginning to round out with a litter. Taking an extended leave from work, you rear your young, showing them how to use their tentacles and fade into the shadows.";

Shadow Beast ends here.
