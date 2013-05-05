Version 1 of Shadow Beast by UrsaOmega begins here.
[Version 1 - Initial Release, Additions by Wahn]

"Adds a Shadow Beast creature to the Trevor Labs Underground, with impreg chance."

Section 1 - Monster Responses

when play begins:
	add { "Shadow Beast" } to infections of guy;
	add { "Shadow Beast" } to infections of Felinelist;		[list of feline infections]

to say losetoshadowbeast:
	if fightoutcome is 20 or fightoutcome is 21:  [Damage and lust succumb]
		say "     The shadowy cat's onslaught is too much to bear, and you fall prostrate before it. The beast senses the last of your resistances failing, and adopts a more relaxed stance, advancing on you with purpose. Despite your weak struggling, it manages to remove your gear quickly with its teeth and tentacles, leaving you shivering and naked on the floor before it.";
		say "[sbmissionary]";
	if fightoutcome is 22:                        [Submit]
		say "     The cat is clearly pleased at your submission to it, adopting a more relaxed stance. The beast tugs at your gear, indicating that you should remove it - a request you comply with quickly, putting your gear aside and kneeling before the creature.";
		say "[sbdoggystyle]";
	
to say beattheshadowbeast:                      [Victory scenes WIP]
	say "      The beast, clearly surprised by your ability to fight it off, gives you a threatening growl as it backs off. Its body shimmers as it tries to slips back into invisibility, but it seems wounding it has hindered its ability to cloak. Instead, it chooses a more conventional form of escape; it darts off into the shadows, its pitch-black body merging with the darkness.";

to say sbmissionary:
	say "     You try to scramble away, but the black cat pounces on you, pinning your arms and upper body, your back pressed to the hard ground with its lithe but surprisingly muscular bulk. You try to kick at the beast, but that only puts your legs in range of the cat's back-tentacles, which lash out and grab your limbs. Before you can wretch them away, they curl around your shins and ankles firmly. [if player is submissive]You gasp as you are dominated by your captor, aroused by the beast's rough handling of your body[otherwise]You struggle against your captor, but you are quickly overpowered[end if]. Your legs are pulled up and apart by the tentacles, raising your rear and exposing your [if cunts of player > 0]moist slit[otherwise]tight pucker[end if] fully.";
	say "     The feline's cock is fully erect and dripping precum now; it seems a good deal bigger than any regular panther's malehood. Behind it lie two pendulous testicles, practically churning with fertile seed; you shudder[if player is submissive] with pleasure[end if] at the thought of the large cat inseminating you. It looks like you won't have to wait long to experience it for yourself as the feline moves its body over your own doubled-over form, positioning its hips between your splayed legs. You feel the tip of its maleness, rough and wet, brush the inside of your thighs[if player is submissive] and you tremble at the touch, your arousal growing[otherwise] and you start struggling again, only to be frozen by a threatening growl from the cat[end if].";
	say "     [WaitLineBreak]";
	say "     The shadow beast hunches its hips suddenly, bringing its cock to graze across your [if cunts of player > 0]labia[otherwise]asshole[end if], coating it in the cat's copious precum. The next movement brings the pointed head of its maleness to push more forcefully at your entrance. The head slips inside your body and you [if player is submissive]moan in submission[otherwise]cry out in disdain[end if] as your [if cunts of player > 0]cunt[otherwise]pucker[end if] is spread by the feline's erection. The beast hilts himself inside you with a powerful thrust, and begins to fuck you mercilessly, cock pistoning in and out of your [if cunts of player > 0]snatch[otherwise]anus[end if].";
	say "     Each time the cat pulls back, you feel the rough barbs on the head of its shaft rub your insides uncomfortably; however, after several strokes, the pain becomes strangely pleasurable.[if player is impreg_able] The barbs start to kindle a warmth around your womb, and you wonder how much the strange physiology is effecting your reproductive system; unbidden, thoughts of your belly swelling with the dark beast's spawn swirl in your head.[end if] The feline pounds you, its thick cock plunging into you over and over again. It moves its head to grab your shoulder with its powerful jaws and spread your legs further with its tentacles to thrust even deeper into you. You shudder [if player is submissive]with pleasure [end if]at the sensation of being so thoroughly used by this creature.";
	say "     [WaitLineBreak]";
	say "     After what feels like an eternity of being roughly bred by the creature, the end seems to be near as the cat speeds up its already frantic thrusting. The beast growls as its climax nears, and with one titanic thrust it bottoms out in you. You feel its huge malehood twitch as the first spurts of hot, fertile cum spurt into your [if cunts of player > 0]womb[otherwise]rectum[end if], coating your insides with thick ropes of feline seed. The cat continues thrusting throughout its orgasm, pushing its load deeper into you. The flow eventually abates, and the beast pulls out with a wet pop, its cum dribbling from your abused [if cunts of player > 0]cunt[otherwise]pucker[end if]. The tentacles let your legs down, and the cat slinks away into the shadows, its interest with you lost now that you've served its pleasures. [impregchance]";
	
to say sbdoggystyle:
	say "     The beast circles your prostrated form contentedly, looking over its latest conquest. From the way its sizeable length is quickly slipping from its sheath, you suspect it approves heartily. It pushes you down to your hands and knees with its tentacles, and you maintain the all-fours posture, [if player is submissive]eager to please your shadowy master[otherwise]hoping the cat won't be too rough on you[end if]. The creature stalks behind you, and suddenly you feel the thing's warm breath on your bare skin as it sniffs around your rear. You come to the uncomfortable realization that it's probably ascertaining your ability to bear its offspring; [if player is impreg_able]it purrs with satisfaction at your apparent fertility[otherwise]it gives a growl of disappointment at your inability to bear its young, but seems to be undeterred in mounting you.[end if]";
	say "     [WaitLineBreak]";
	say "     The creature leaps onto your back, its lithe and muscular form draping itself over yours. The soft fur almost feels nice on your back, but you're quickly reminded of what's going on when the beast's forelimbs hook themselves around your hips. A hunch of its own hips brings something rough and wet to slide up your thigh; with some shuffling the creature brings the head of its erection to your [if cunts of player > 0]moist slit[otherwise]quivering pucker[end if]. A pair of fearsome jaws lock themselves around your shoulder, reminding you of the price of resistance. [if player is submissive]You moan as you feel your bestial master take complete control of you, and you push yourself back against his length, silently begging him to take you.[end if] The beast pushes its length into you, hilting itself in one smooth thrust; the sudden penetration first makes you cry out in pleasure, then in pain as the creature's cruel barbs scrape along your insides.";
	say "     [WaitLineBreak]";
	say "     The cat pumps in and out of your [if cunts of player > 0]cunt[otherwise]ass[end if] mercililessly, breeding you hard and deep. Soon, the sensation of the cat's barbs becomes almost pleasant as they rub your [if cunts of player > 0]vaginal[otherwise]rectal[end if] walls. [if player is impreg_able] They start to kindle a warmth around your womb, and you wonder how much the strange physiology is effecting your reproductive system; unbidden, thoughts of your belly swelling with the dark beast's spawn swirl in your head.[end if] The thing's tentacles descend under your body, stroking your [if cocks of player > 1][cock of player] cocks[otherwise if cocks of player > 0][cock of player] cock[otherwise if breast size of player > 0]your [breast size desc of player] breasts[otherwise]your bare skin[end if] as it drives its cock into you over and over again. [if cocks of player > 0]A tentacle wraps itself around your cock[smn], stroking in time with the pounding thrusts. Between this new stimulation and the battering your prostate is recieving, it doesn't take long for you to reach climax, blowing your [cum load size of player] load uselessly on the floor. Your orgasm causes you to clench around the malehood invading you, drawing a lusty purr from your bestial captor[end if]. ";
	say "     [WaitLineBreak]";
	say "     The beast's thrusting grows faster and deeper, and you push yourself back into the thrusts, [if player is submissive]eager to feel the beast cum inside you[otherwise]eager to end this before it goes on any longer[end if]. The creature tightens its grip around your waist and the mating bite on your shoulder as it hilts itself inside you with one powerful thrust. You feel hot ropes of cum coat your [if cunts of player > 0]womb[otherwise]rectum[end if] as the creature growls out its climax. It keeps thrusting, pushing its fertile seed deeper into your receptive body. It lays on top of you while its orgasm subsides, [if player is impreg_able]stroking your belly with its tentacles; you shudder and hope its seed didn't take[otherwise]purring contentedly at its latest conquest[end if]. Finally, it dismounts, withdrawing its cock with a wet pop and a dribble of cum from your abused [if cunts of player > 0]snatch[otherwise]asshole[end if]. As it slinks back into the shadows, you wonder if [if player is submissive]you'll get another chance to play with the cat soon.[otherwise]submitting to the beast was worth it.[end if]";	
	
ShadowBeastEventState is a number that varies.
	
to say shadowbeastdesc:
	if ShadowBeastEventState is 0:
		say "     [one of]You see something shimmer out of the corner of your eye[or]You feel a strange presence behind you[or]You are overtaken by a sense of dread[at random] and you turn to see a black cat step out of the shadows. It looks like a regular panther on all fours, except for the two black tentacles which sprout from its back. They end in gripping pads, which you imagine are ideal for holding victims still. Between its legs you can see a hefty sheath and testicles, demonstrating the breeding ability of the beast. It seems to shimmer, like it's manipulating the light around it; suddenly, it disappears for a second before reappearing before you, claws drawn!";
	otherwise if ShadowBeastEventState is 1: [Hunted Survivor Event]
		say "     Rushing forward, you get your hands on the dark tentacle and pull, wrenching the gripping pad at its end from the man's skin. The guy doesn't waste a second of the chance you're giving him, scrambling to his feet and making a panicked dash for the exit. Meanwhile a black feline shape seems to shimmer into sight out of the darkness where the tentacle originated, growling at being cheated out of its prey. As you whirl around to make your escape from this strange beast, you see it vanishing again, somehow manipulating the shadows all around in an eye-twisting effect. Moments later, it's between you and the exit to the surface, coming back into view as it pounces you, both tentacles whipping forward through the air.";
		now ShadowBeastEventState is 0; [pre-fight event part done, back to normal description]
	otherwise if ShadowBeastEventState is 2: [add other event monster appearances here and below]
		say "     <event desc>";
		now ShadowBeastEventState is 0; [pre-fight event part done, back to normal description]
				
Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Shadow Beast";		[The creature's name as displayed and used in naming descriptions]
	now attack entry is "[one of]The beast disappears in a flicker of darkness before reappearing behind you, striking at you![or]The beast lashes out with its tentacles![or]The beast leaps at you![or]The Shadow Beast firmly makes its point![or]One of its tentacles whips though the air and gives you a painful slap.[or]A slash of a clawed paw leaves bloody marks on you.[at random]";	[Text used when the monster succeeds on an attack]
	now defeated entry is "[beattheshadowbeast]";       [ Text when monster loses.  Change 'shadowbeast' as above. ]
	now victory entry is "[losetoshadowbeast]";         [ Text when monster wins.  Change 'shadowbeast' as above. ]
	now desc entry is "[shadowbeastdesc]";              [ Description of the creature when you encounter it. ]
	now face entry is "that of a panther, sleek and predatory";  [ Face Description, format as the text "Your face is (your text)." ]
	now body entry is "the form of a large feral cat, but with two long tentacles emerging from your back";  [ Body Description, format as the text "Your body is (your text)." ]
	now skin entry is "dark-furred";  [ Skin desc., format as the text "Your body is covered in (your text) skin."  Note: the word 'skin' is automatically included at the end. ]
	now tail entry is "You have a feline tail that twitches this way and that behind you.";  [ Tail desc., written as a full sentence or left blank for none. ]
	now cock entry is "feline";       [ Cock desc., format as "You have a 'size' (your text) cock." ]
	now face change entry is "it reforms into the visage of a panther, complete with a sleek predatory muzzle and catlike ears";  [ Face TF text, format as "Your face feels funny as (your text)." ]
	now body change entry is "it cracks and shifts into a quadrupedal stance, becoming sleek and muscled. You feel like a coiled spring, ready to pounce on prey at a moment's notice. Two long black tentacles with strong gripping pads at their ends grow out of your back, giving you another pair of appendages";  [ Body TF text, format as "Your body feels funny as (your text)." ]
	now skin change entry is "inky black fur covers you from head to toe";  [ Skin TF text, format as "Your skin feels funny as (your text)." ]
	now ass change entry is "your new feline tail pushes out from somewhere above your rear";  [ Ass/Tail TF text, format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it becomes more tapered, the head of your shaft growing wicked-looking barbs to stimulate your mates with";  [ Cock TF text, format as "Your cock feels funny as (your text)." ]
	now str entry is 14;
	now dex entry is 20;
	now sta entry is 12;
	now per entry is 15;
	now int entry is 8;
	now cha entry is 12;
	now sex entry is "Male";              [ Infection will move the player towards this gender.  Current: 'Male' 'Female' 'Both' ]
	now hp entry is 30;                   [ The monster's starting hit points. ]
	now lev entry is 3;                   [ Monster level.  (Level x 2) XP for victory.  (Level / 2) XP for losing. ]
	now wdam entry is 5;                  [ Monster's average damage when attacking. ]
	now area entry is "Sealed";           [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1;                 [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 15;          [ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 7;            [ Cock width, more commonly used for ball size. ]
	now breasts entry is 6;               [ Number of breasts the infection will give a player. ]
	now breast size entry is 0;           [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 0;      [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;                 [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 0;           [ Depth in inches of female sex the infection will attempt to give a player. ]
	now cunt width entry is 0;            [ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 60;               [ Target libido the infection will rise towards. ]
	now loot entry is "";                 [ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 0;            [ Percentage chance of dropping loot, from 0-100. ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 3;                 [ Number 1-5, approx size/height of infected PC body:  1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]lithe[or]sleek[or]toned[at random]";  [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender"]
	now type entry is "[one of]feline[or]catlike[at random]";    [ one-word creature type. Ex: feline, canine, lupine, robotic, human...]
	now magic entry is false;             [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;         [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;    [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;        [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";     [ Row used to designate any special combat features, "default" for standard combat. ]

Section 3 - Events
[ Event by Wahn]
Hunted Survivor is a situation.
The sarea of Hunted Survivor is "Sealed";

when play begins:
	add Hunted Survivor to badspots of guy;
	
Instead of resolving a Hunted Survivor:
	say "     As you step through the access door into the underground levels under the Trevor Labs and move down the dark corridor beyond, you hear something. The sound of naked feet on the concrete floor echo from somewhere ahead, quickly getting louder as their source gets closer. Then a man bursts out of one of the side passages, clothed in nothing but a few shreds of tattered clothing and running all out towards the exit.";
	if bodyname of player is "Tentacle Horror" or bodyname of player is "Shadow Beast" or bodyname of player is "Thought Eater" or bodyname of player is "Flesh Blob":
		say "     As he sees you, the man gives a panicked scream, scrambling to stop his movement towards you, followed by a mad dash down a side corridor before you can say or do anything. Moments later, a shimmer runs through the darkness where he came from, and for a second you think you can make out a black feline shape, its head turning towards you as it gives a low growl, as if warning you off. Then it is gone again, twisting the shadows around it somehow in an eye-wrenching effect that makes you lose it from view. Further growls echoing along the halls, each one quieter than the one before indicate that it resumed its hunt.";
	otherwise:
		say "     As he sees you, the man shouts 'Run!', just as a long tentacle whips through the air from the darkness behind him and wraps around his left leg. With a panicked scream, the man goes down as his leg is pulled out from under him, hands scratching over the floor as he tries to hold on to something - anything, really.";
		say "     Uh-oh - what now? Maybe try to help this man (Y)? Or would you rather get out of here before you're the next target of a hungry - or horny - monstrosity (N)? ";
		if player consents:
			now ShadowBeastEventState is 1; [special event description instead of the normal one]
			challenge "Shadow Beast";
			if fightoutcome >= 20 and fightoutcome <= 29:                 [lost/submitted]
				say "     With the tentacled panther back into darkness, you're left alone in the hallway, sticky with its cum leaking out of your [if cunts of player > 0]pussy[otherwise]ass[end if]. Collecting your gear, you clean up as good as you can and go back to the surface exit, relieved as you leave behind the dark corridors. Of the man you helped escape, there is no trace. He must have kept running, vanishing out into the city. Who knows what already has or will happen to him out there - naked and exhausted as he is. On the other hand... he might just get lucky and you could run into him again.";
			otherwise if fightoutcome >= 30:	                            [fled]
				say "     Ducking under grasping tentacles and evading slashing claws, you run along the corridor. The panther creature is literally just one or two steps behind and at times you can feel its hot breath on your neck, but you manage to get to through the access door and slam it closed behind you. Holding it closed as the shadow beast slams against it several times, you listen to its frustrated roars and snarls. Then everything gets quiet, and just as you think you can let go another heavy bump from the inside almost throws the door open. There is a snarl, then again silence. With the creature clever enough to try to trick you into thinking it's gone, you end up holding tight on the door for half an hour at least before you relax. Seems like it's gone after all, this time...";
				say "     Of the man you helped escape, there is no trace. He must have kept running, vanishing out into the city. Who knows what already has or will happen to him out there - naked and exhausted as he is. On the other hand... he might just get lucky and you could run into him again.";
			otherwise if fightoutcome >= 10 and fightoutcome <= 19:       [won]
				say "     After having fought of the tentacled shadow beast, you decide to postpone further underground adventures to another time and walk back towards the access door. Stepping out and closing it behind you gives you relief of the constant tension that there might be something in the darkness, watching you.";
				say "     Of the man you helped escape, there is no trace. He must have kept running, vanishing out into the city. Who knows what already has or will happen to him out there - naked and exhausted as he is. On the other hand... he might just get lucky and you could run into him again.";
		otherwise:
			say "    Whirling around, you run as fast as you can back to the exit and don't look back. The sounds of what's happening behind you follow you though, even though you wish you wouldn't hear the man's panicked stuggling, followed by a satisfied-sounding roar and painful scream. Rhythmic grunts and growls interspersed with whimpering indicate that the creature at least didn't hunt the man to eat him, though leaving him to 'just be raped' by some monstrosity from the depths of the underground complex is a bit of a weak excuse. A shudder runs down your spine as you throw the door closed behind you and you do your best to scrub what's happened from your mind.";	
	now Hunted Survivor is resolved;
		
Section 4 - Endings

[Endings eventually]
[when play ends:
	if bodyname of player is "Shadow Beast":
		if humanity of player is less than 10:
			say "     You succumb to your Shadow Beast infection.";
		otherwise:
			say "     You survive, but were infected by the Shadow Beast.";
			if cocks of player > 0:							[MALE/HERM]
				say "     Additional text for a male/herm survivor.";
			otherwise if "Sterile" is not listed in feats of player:	[F-BREEDABLE]
				say "     Additional text for a female survivor who can become preggers.";
			otherwise:									[F-STERILE]
				say "     Additional text for a female survivor who cannot become preggers.";]

Shadow Beast ends here.