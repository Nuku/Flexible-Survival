Argos by Voidsnaps begins here.

[Hunger of Argon: Controls the event structure. Simulates growth.]
[Resolution of first event: Doesn't do anything besides provide an ability to nix the storyline.]
[Lastfuck of Argon controls when he's going to jump you. Don't let him go too long without release!]

an everyturn rule:
	if Argon is visible:
		if LastFuck of Argon - turns > 8:
			say "[ArgonDelayedGratification]";

a postimport rule:
	if Resolution of Grown Up is 1:
		connect Argon's Nest;

a postimport rule:
	if "Argos Fix" is not listed in Traits of Argon:
		move Argon to Nowhere;
		now Personal Pewter is not tamed;
		now Strange Birth is not Resolved;
		now Grown Up is not Resolved;
		TraitGain "Argos Fix" for Argon;
	

Section 1 - Character Declaration

Table of GameCharacterIDs (continued)
object	name
Argon	"Argon"
Argon	"Argos"

Argon is a man.
ScaleValue of Argon is 4. [Dire wolf sized]
Body Weight of Argon is 3. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Argon is 7. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Argon is 3. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Argon is 5. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Argon is 2. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Argon is 5. [length in inches]
Breast Size of Argon is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Argon is 2. [count of nipples]
Asshole Depth of Argon is 9. [inches deep for anal fucking]
Asshole Tightness of Argon is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Argon is 1. [number of cocks]
Cock Girth of Argon is 4. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Argon is 13. [length in inches]
Ball Count of Argon is 0. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Argon is 0. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Argon is 0. [number of cunts]
Cunt Depth of Argon is 0. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Argon is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Argon is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Argon is false.
PlayerRomanced of Argon is false.
PlayerFriended of Argon is false.
PlayerControlled of Argon is false.
PlayerFucked of Argon is false.
OralVirgin of Argon is false.
Virgin of Argon is false.
AnalVirgin of Argon is false.
PenileVirgin of Argon is true.
SexuallyExperienced of Argon is true.
TwistedCapacity of Argon is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Argon is true. [steriles can't knock people up]
MainInfection of Argon is "PewterConsortPet".
Description of Argon is "[ArgonDesc]".
Conversation of Argon is { "<This is nothing but a placeholder!>" }.
The scent of Argon is "[ArgonScent]".
Argon is in Argon's Nest.

to say ArgonScent:
	say "He smells like a musky animal, with a faint metallic scent mixed in.";

to say ArgonDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Argon] <- DEBUG[line break]";
	say "Argon looks like a  regular pewter consort, though there's something different in the way that he holds himself. There's no doubt that he's a breeder, and every movement accentuates his heavy, dangling balls and humanoid, foreskin hooded cock, which drips intermittenly, marking things with pre. When he notices you looking, he lifts his leg slightly, as if inviting you to climb under him and get a closer look, a low, sensual growl rolling through his half-open maw. Smooth pewter skin catches the light, and a prehensile tail capable of moving like a whip curves above his back, showing his mood with its undulations.";

instead of fucking Argon:
	say "[Argon_Pet_Fuck_Menu]";

Section 2 - Introducing Argon

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
2	"Strange Birth"	Strange Birth	"[EventConditions_Strange Birth]"	Charred Streets	2500	2	100

to say EventConditions_Strange Birth:
	if HP of Doctor Matt >= 15 and HP of Doctor Matt < 100 and PewterPet is Resolved and Player is submissive: [list of conditions here] [Don't side with doctor mouse or you get locked out of this.]
		now CurrentWalkinEvent_ConditionsMet is true;

Table of GameEventIDs (continued)
Object	Name
Strange Birth	"Strange Birth"

Strange Birth is a situation.
ResolveFunction of Strange Birth is "[ResolveEvent Strange Birth]".
Sarea of Strange Birth is "Nowhere";

when play begins:
	add Strange Birth to BadSpots of MaleList;

to say ResolveEvent Strange Birth:
	say "     As you stroll through the capitol district, you notice a large, cave-like hole in the concrete leading down into the darkness. Wary of what might be lurking inside, you listen at the entrance, only to hear a familiar voice grunting and straining as though going through something painful. If you wanted to, you could check out the noise.";
	say "[bold type]Do you want to explore the cave?[roman type][line break]";
	say "     [link](Y)[as]y[end link] - Yes.";
	say "     [link](N)[as]n[end link] - No.";
	if Player consents:
		say "     It takes a while for your eyes to adjust to the gloom, but you have plenty of time as you climb over piles of rubble and pick your way through claw-marked stone. The source of the din grows ever closer as you go, and eventually, you crest a small hill, finding another survivor in a compromised position. Is she giving birth?";
		say "[bold type]Do you want to watch the woman at her most vulnerable?[roman type][line break]";
		say "     [link](Y)[as]y[end link] - Yes. It's quite a show.";
		say "     [link](N)[as]n[end link] - No. You're not into that sort of thing.";
		if Player consents: [birth scene]
			say "     Sitting with her legs spread and a shiny object pushing its way out of her cunt accompanied by floods of liquid lubricant, the otter girl you spotted wandering the capitol district with her pet monster strains and grunts. She seems to be in less pain than you would imagine, and as you watch, she lowers her hand to her clit, rubbing it in time with the gentle rock of her laboring body. Her stomach makes this task harder than it needs to be, bloated and heavily pregnant as it is. She doesn't seem all that bothered, though, displaying remarkable flexibility to get her rocks off, her sweat-covered fur glistening around her open mouth and her eyes tightly closed. After only a few minutes of self-pleasure, the otter manages to expel the creature from her flexing pussy, curling her toes and stroking her pleasure button to a feverish pace as her gaping hole flexes in the open air.";
		else: [creature brings you back to the nest]
			say "     Turning away, you politely wait out the gratuitously sexual sight, staying within earshot out of courtesy for the vulnerable woman. Once you hear a wet plop and the unmistakable sound of orgasm, you peek over the hill of rubble, immediately noticing a metal oval in a puddle of what you assume is pussy juice.";
		say "     What appears to be a smooth piece of metal uncurls at the woman's feet, shaking itself off and scenting the air with a featureless, smooth face, its tongue flicking curiously as a long, snaking tail wiggles curiously above it. Fearless despite its recent introduction to the world, the creature toddles toward you, growing more confident in its steps and sitting at your feet. Looking past you, it squeaks cutely, its tail wagging like a dog's. Hot breath on the back of your neck interrupts your growing compulsion to pet the newborn creature, and you turn toward it, ready to back away from whatever horror confronts you. Thankfully, your caution appears unwarranted as a tilted, featureless metallic head stares back at you, looking from its smaller counterpart to you with an unreadable expression. After a moment, the creature shoves past you, circling around the smaller creature with a sniff, then nosing it toward you and turning its back, busying itself by burying its nose in the otter woman's crotch with a noisy slurp. It seems it wants you to take its progeny and leave.";
		say "     [bold type]Do you want to take the little creature with you? You don't know if the bunker is the best place for something so tiny and inhuman, but maybe you know someone who can take care of it for you![roman type][line break]";
		say "     [link](Y)[as]y[end link] - Yes. It's so cute!";
		say "     [link](N)[as]n[end link] - No. Who knows what that thing will become!";
		if Player consents:
			say "     Scooping up the offered creature, you let out an involuntary grunt at how heavy it is. For something so small, it sits like a pile of bricks in your arms! Still, the way it rolls over onto its back and kicks its little legs at you is too adorable for you to give up, and you lug it back through the tunnel with you, pausing to rest on your knees just outside the hole. With the climb out of the way, it's time to think of the creature's future. You doubt you can bring it home with you- judging by how large its father was, there won't be room for it in the bunker! And besides, you don't even know what it eats! If only you knew someone willing to research its care, maybe you could leave it with them. ";
			say "     As you play with the miniature monster, you ponder your options. Most places you could leave it are out of the question, as it'll become someone's plaything the moment it's old enough, while the rest wouldn't know what to do with it and could kill it through neglect. Suddenly, an idea flashes through your head, and you pick up the pace, cradling the pewter consort to your chest. You know exactly where to leave him! Doctor Matt is looking for test subjects anyway, and he seems smart enough to take care of the little one without unintentionally starving it!";
			WaitLineBreak;
			move Player to Primary Lab;
			say "     Hurrying as best you can with the heavy hatchling in your hands, you breeze past Orthas and up the stairs to Doctor Matt's office, setting down the baby pewter consort and explaining your circumstances to the good doctor. You're sure to emphasize that the creature's father followed his otter 'owner's' instructions and seemed friendly enough, hoping he won't advise you to let your new pet loose on the streets. Heaving your metallic pet from the floor and smiling a bit at the squirming, squeaking creature's attempt to get back to you and away from the transparent face mask covering Dr. Matt, the good doctor inspects the creature's face with a mildly invasive pair of fingers, looking at its teeth and prodding where eyes should be. 'What a strange little thing. I suppose I can have Orthas clear out a lab to serve as a kennel. You don't mind if I take some samples, do you? I'm curious if there's a difference between a tame specimen and its wild counterpart.' You spend the next few minutes discussing the terms of your new pet's room and board. Thankfully, after all you've been through together, Doctor Matt is more than accommodating. His only caveat is that he wants you to [bold type]visit the creature once it's had some time to settle in.[roman type][line break]";
			now Resolution of Strange Birth is 1;
			now hunger of Argon is turns;
		else:
			say "     Ignoring the eyeless whelp's curious squeaks, you push it back toward its parents, sneaking away while it tilts its head and trills at you. You don't need another mouth to feed, and there's no guarantee it'll grow up tame like its 'father!' Still, as you return to the street, you can't help your curiosity, though you doubt you'll see the trio again.";
			now Resolution of Strange Birth is 100;
	else:
		say "     You've long since learned that investigating strange sounds in the dark is a bad idea! Who knows what could be waiting for you! Shouldering your pack, you shake your head and murmur something to the effect of 'nope' to yourself, then continue down the street.";
		now Resolution of Strange Birth is 100;
	now Strange Birth is Resolved;


Section 2 - Naming Argon

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
2	"Grown Up"	Grown Up	"[EventConditions_Grown Up]"	Primary Lab	2500	2	100

to say EventConditions_Grown Up:
	if Resolution of Strange Birth is 1 and (hunger of Argon - turns > 6): [list of conditions here]
		now CurrentWalkinEvent_ConditionsMet is true;

Table of GameEventIDs (continued)
Object	Name
Grown Up	"Grown Up"

Grown Up is a situation.
ResolveFunction of Grown Up is "[ResolveEvent Grown Up]".
Sarea of Grown Up is "Nowhere";

when play begins:
	add Grown Up to BadSpots of MaleList;

to say ResolveEvent Grown Up:
	say "     'Ah! There you are.' Dr. Matt waves you over as he intently stares into the lenses of a microscope, jotting things down in a notebook and muttering to himself. 'Your acquisition has proven to be quite interesting. It's nothing new compared to nanite influence on the 'newer generation' within the city, but these samples are among the first I've seen from such a fantastical creature. You deserve praise for seeing fit to collect it.' Beaming, he pats your shoulder with a gloved hand. 'Though it appears your companion is just as fast-growing as most. Such a fascinating appetite- I wasn't aware that a creature could survive entirely on metal! After an unfortunate incident with a tray of implements, we had to corral him downstairs.'";
	move player to Argon's nest;
	connect Argon's Nest;
	Project the Figure of Pewter_Consort_icon;
	say "     Following Doctor Matt's instructions and leaving him to research, you return to the Trevor Labs Lobby, then navigate to your new pet's new home. Upon opening the door, the first thing that hits you is the smell. It's like you've just walked into a men's locker room at a gay club. The mingled scents of cum and sweaty male cloy and hit you like a wall, growing stronger as the halogen lights illuminate something very different from what you expected. With a long tongue hanging out in a dog-like pant, your pet meets you at the door with a frantically whipping, almost wagging tail. The big boy has grown since you last saw him, rivaling the rutting male that sired him with just as much puppy-like exuberance. Standing at almost your waist, he looks up at you with an eyeless face, spinning around to work off some of his excited energy and showing off an obscenely drippy humanoid cock and heavy metallic balls that flop between his legs. Too overstimulated to hold his excitement, he hops up on his hind legs, sending you crashing to the ground with a playful growl and pinning you with both front paws. With a laugh, you stroke the monster's chin, caught up in his excitement to see you.";
	WaitLineBreak;
	say "     It's clear that he remembers you from your first meeting, and judging by how he leans into your touch and settles in on top of you, he's more than happy to be your pet! Watching him rub himself against your hands, you realize you've thought up a masculine name for the ball of energy- Argon! As if reading your mind, Argon grunts happily at his new name, his attention moving from your hands to your chest, then lower to your crotch. As quickly as he begged for attention, he zeroes in on your ";
	if Player is female:
		say "pussy, nuzzling into it [if Player is not barecrotch]through your pants[end if] and snuffling against your clit, scenting your hole and moistening your nethers with hot breath. [if Player is not barecrotch]Grabbing your garments with his teeth, he yanks them down before you can shoo him away, twisting your body around until you're on your stomach in the process. With your rear vulnerable and bare, he shoves his muzzle between your cheeks, stabbing that long, questing tongue against your pussy until a copious layer of drool and juices allow it to pop through into your dripping twat, swirling over your inner walls with curious technique, tickling your cervix. [else]Grabbing your leg in gentle teeth, he turns you over, shoving his nose between your ass cheeks and mashing it against your hole pussy from behind as his tongue darts into you, exploring your depths with surprising technique. [end if][line break]";
		WaitLineBreak;
		say "     You attempt to struggle, but that bestial tonguing has your legs feeling like jello, and before you know it, you're arching your hips like a bitch in heat, whimpering for more. Long, syrupy laps cover every inch of your inner walls in Argon's affection, and sharp teeth tease your lips with gentle nips, just hard enough to elicit a squeal of overstimulation before relenting. It's a few minutes before he's satisfied with your dripping cunt, pulling back and smacking his lips with a grunt before heaving himself onto your back, curling his front legs around your midsection like a rutting canine and gripping you hard enough that you couldn't escape if you wanted to! Jabbing excitedly at your dripping hole, Argon misses the mark, his blunted head ramming into your clit before deflecting between your thighs and rolling along it, slickening his pewter shaft with your needy drip. A few more missed thrusts smear pre and pussy juice over your lips before he finds his angle, and by the time he stretches you open, you're aching for him, just as worked up by his unintentional tease as he is.";
		say "     Ramming to your cervix in one deep thrust, the monster pants in triumph, wasting no time in pulverizing the entrance to your womb with deep, blunt thrusts. There's little technique to that battering ram approach, but you're too turned on to care, arching your hips and shaking as he uses your hole like a breeding mount. Every thrust paints your innards with sticky precum, and each slap of those full balls sends a warm feeling through your midsection, and before long, you feel your arms beginning to shake. You collapse long before Argon finishes with you, with nothing but his iron grip to hold you up. Your spasming pussy melts around his cock, milking it for all it's worth as orgasms roll together like waves, and you feel the creamy mix of churned juices dripping down your thighs, but it's too hot for you to care, moaning like a whore begging for breeding. He's close- you're not sure how you know, but the thought excites you, and you clamp down, arching your hips to give that fat shaft a better place to empty its payload.";
		WaitLineBreak;
		say "     Argon's frantic fucking reaches a feverish pace. With a strange, guttural sound, he hilts himself, his bloated cocktip bullying your cervix to the side as it seeks more space to claim and finds the last inch of unclaimed territory to the side of the bruised entrance, swelling your stomach as he blasts bestial seed deep inside of you. While his cock was too big to force its way into your womb, that pressurized cum has no such problems, stuffing every inch of your innards with creamy pewter seed. You're positively pregnant-looking by the time he yanks himself free, sending a deluge of cum down your upturned pussy and leaving a mess on your thighs, cooling the gentle burn from the friction of his breeding and the hot slap of his balls. That beastly body comes into view as you twitch and spasm on the ground, and Argon tilts his head as he watches your exhausted body twitch through the aftershocks. Sitting back on his haunches, he brings his drooping meat to bear, leaving his manhood to squelch wetly between your eyes. Thankfully, he seems spent despite the display, though he smears his rod over your face, covering every inch in the last drippings of his manhood.";
		NPCSexAftermath Player receives "PussyFuck" from Argon;
	else if Player is male:
		say "cock, nuzzling it curiously [if Player is not barecrotch]through your pants[end if] and snuffling the tip as it grows, helpless before his hot breath. [if Player is not barecrotch]Grabbing your garments with his teeth, he yanks them down before you can shoo him away, twisting your body around until you're on your stomach in the process. With your rear vulnerable and bare, he shoves his muzzle between your cheeks, stabbing that long, questing tongue against your hole until a copious layer of drool lets it pop through into your unprepared ass, swirling over your inner walls with curious technique. [else]Grabbing your leg in gentle teeth, he turns you over, shoving his nose between your ass cheeks and mashing it against your hole as his tongue darts into you, exploring your depths with surprising technique. [end if][line break]";
		say "     Groaning aloud, you try to struggle, only to feel sharp claws settle on your lower back, stopping you from squirming away as that tongue vibrates inside you, accompanied by a dominant growl. It appears you'll do what Argon likes, whether you want to or not! Somehow, the idea turns you on, and you can't help the steady drip of your excited cock as his tongue loosens you up with heavy laps, his smooth muzzle grinding from side to side as he seeks all the sensitive spots, coating every inch of your insides with heavy drool.";
		WaitLineBreak;
		say "     Satisfied with his handiwork and ready to continue, the horny monster heaves himself over your back, flopping his humanoid cock between your cheeks and rolling it along the dripping mess he made of your hole. Huffing, he finds your entrance with the foreskin hooded tip, then surges forward, penetrating you in one animalistic shove. Wasting no time, he ruts you hard and fast, hunching over your back and forcing your cock against the puddle of pre beneath it, giving its underbelly a slick albeit cold surface to stimulate it. In and out, he violates your hole with heavy thrusts that slap metallic balls against your cheeks hard enough to bring rising heat to the sensitive skin, his size so overwhelming that you feel like he'll turn you inside out. There's nothing gentle about his movements- he's breeding you like a bitch in heat and painting your insides with gooey spurts of precum on every downstroke- but somehow, you feel a strange sort of affection in his breeding, as if he's claiming you as a mate. His claws dig into your arms, pinning them in place, and his tongue drips on your back, but there's no malice in his movements. If he wanted to hurt you, he could, but instead, he's choosing to treat you well.";
		say "     Somehow, that revelation brings a blush to your cheeks. A creature that's only been alive for just over a day has claimed you, reducing you to a breeding mount for his passions, and you're enjoying every second of it. As he brutalizes your prostate with the swollen underside of his heavy cock, you realize with horror- you're about to cum! Again, as though reading your mind, Argon grunts, sheathing himself to the root and pushing his whole weight down on your back. Heat blooms deep within you, and your stomach swells with his spend, your poor innards bathed in thick, gooey heat with every pulse that threatens to overflow you. Those balls aren't for show!";
		WaitLineBreak;
		say "     Swollen to an almost heavily-pregnant size, you groan as the pressure becomes too much, destroying your poor hole with a hot cock and even hotter cum. Jets of it squirt out around your union, drowning out your meager contribution to the puddle below, but your body doesn't let you ignore your orgasm, spasming and milking that bestial shaft for all its worth. Looking satisfied with himself, Argon yanks himself free of your ruined hole, shaking himself softly as he pads around to inspect your sweat-drenched face. Tilting his head, he sits back on his haunches, leaving his manhood to squelch wetly between your eyes. Thankfully, he seems spent, though he smears his rod over your face, covering every inch in the last drippings of his manhood.";
		NPCSexAftermath Player receives "AssFuck" from Argon;
	else:
		say "featureless crotch, nuzzling it curiously [if Player is not barecrotch]through your pants [end if]and snuffling it as you squirm, helpless before his hot breath. [if Player is not barecrotch]Grabbing your garments with his teeth, he yanks them down before you can shoo him away, twisting your body around until you're on your stomach in the process. With your rear vulnerable and bare, he shoves his muzzle between your cheeks, stabbing that long, questing tongue against your rear hole until a copious layer of drool lets it pop through into your unprepared ass, swirling over your inner walls with curious technique.[else]Grabbing your leg in gentle teeth, he turns you over, shoving his nose between your ass cheeks and mashing it against your hole as his tongue darts into you, exploring your depths with surprising technique.[end if][line break]";
		say "     Groaning aloud, you try to struggle, only to feel sharp claws settle on your lower back, stopping you from squirming away as that tongue vibrates inside you, accompanied by a dominant growl. It appears you'll do what Argon likes, whether you want to or not! Somehow, the idea turns you on, and you can't help the roll of your hips as his tongue loosens you up with heavy laps, his smooth muzzle grinding from side to side as he seeks all the sensitive spots, coating every inch of your insides with heavy drool.";
		WaitLineBreak;
		say "     Satisfied with his handiwork and ready to continue, the horny monster heaves himself over your back, flopping his humanoid cock between your cheeks and rolling it along the dripping mess he made of your hole. Huffing, he finds your entrance with the foreskin hooded tip, then surges forward, penetrating you in one animalistic shove. Wasting no time, he ruts you hard and fast, hunching over your back and forcing your featureless bulge against the puddle of monster pre beneath it, giving its surface a slick albeit cold surface to stimulate it. In and out, he violates your hole with heavy thrusts that slap metallic balls against your cheeks hard enough to bring rising heat to the sensitive skin, his size so overwhelming that you feel like he'll turn you inside out. There's nothing gentle about his movements- he's breeding you like a bitch in heat and painting your insides with gooey spurts of precum on every downstroke- but somehow, you feel a strange sort of affection in his breeding, as if he's claiming you as a mate. His claws dig into your arms, pinning them in place, and his tongue drips on your back, but there's no malice in his movements. If he wanted to hurt you, he could, but instead, he's choosing to treat you well.";
		say "     Somehow, that revelation brings a blush to your cheeks. A creature that's only been alive for just over a day has claimed you, reducing you to a breeding mount for his passions, and you're enjoying every second of it. As he brutalizes your stretched inner walls with the swollen underside of his heavy cock, you realize with horror- you're about to cum! Again, as though reading your mind, Argon grunts, sheathing himself to the root and pushing his whole weight down on your back. Heat blooms deep within you, and your stomach swells with his spend, your poor innards bathed in thick, gooey heat with every pulse that threatens to overflow you. Those balls aren't for show!";
		WaitLineBreak;
		say "     Swollen to an almost heavily-pregnant size, you groan as the pressure becomes too much, destroying your poor hole with a hot cock and even hotter cum. Jets of it squirt out around your union, wet sounds drowning out your desperate moans as he thrusts through his finish, the gooey refrain echoing off the walls. Your body doesn't let you ignore your orgasm, spasming and milking that bestial shaft for all its worth. Looking satisfied with himself, Argon yanks himself free of your ruined hole, shaking himself softly like a dog in the rain as he pads around to inspect your sweat-drenched face. Tilting his head, he sits back on his haunches and brings his drooping meat to bear, leaving his manhood to squelch wetly between your eyes. Thankfully, he seems spent despite the display, though he smears his rod over your face, covering every inch in the last drippings of his manhood.";
		NPCSexAftermath Player receives "AssFuck" from Argon;
	LineBreak;
	say "     Grabbing your things from where the amorous monster tossed them, you wince, limping slightly. Argon's done a number on you, and you doubt you'll forget about the breeding you've suffered, but he seems tame enough, following you around with a curious air. You could even take him with you into the city! Those teeth and claws seem like they'd help in a fight. Maybe you should summon your [bold type]Pet Argon [roman type]to get him to come with you!";
	now Resolution of Grown Up is 1;
	now Grown Up is resolved;
	now Personal Pewter is tamed;

to connect Argon's Nest:
	change the southeast exit of Argon's Nest to Trevor Labs Lobby;
	change the northwest exit of Trevor Labs Lobby to Argon's Nest;

Table of GameRoomIDs (continued)
Object	Name
Argon's Nest	"Argon's Nest"
Argon's Nest	"Argos's Nest"

Argon's Nest is a room. It is fasttravel. It is private. It is sleepsafe.
Description of Argon's Nest is "[Argon's Nestdesc]".
the scent of Argon's Nest is "A harsh metallic scent, mixed with masculine musk and the unmistakable scent of a horny male, permeates the trashed room.".


to say Argon's Nestdesc:
	say "     Argon has shredded a blanket in a corner and lined it with half-chewed medical instruments and other metal items (most notably a few mangled dragon scales... You should probably apologize to Orthas.), and the center of it appears consistently damp, with an appearance that leaves little to the imagination. He's certainly a virile boy, isn't he?";

Table of GameCharacterIDs (continued)
object	name
Personal Pewter	"Personal Pewter Pet"

Personal Pewter is a pet.
NPCObject of Personal Pewter is Argon.
understand "Argon" as Personal Pewter.
IDList of Personal Pewter is { "Argon", "Argon", "Personal Pewter Pet", "personal pewter pet" }.
printed name of Personal Pewter is "Argon".
Description of Personal Pewter is "[ArgonDesc]".
Weapon Damage of Personal Pewter is 15.
The level of Personal Pewter is 1.
Dexterity of Personal Pewter is 5.
The summondesc of Personal Pewter is "[SummonArgon]".
The dismissdesc of Personal Pewter is "[DismissArgon]".
The assault of Personal Pewter is "[one of]Opening his jaws, Argon clamps down on your foe's leg, shaking his head and growling.[or]Argon bodychecks your foe, putting his weight to work and knocking them to the ground.[or]Argon whips his tail at your opponent, aiming for their face.[or]Argon claws at your opponent, scratching them with sharp talons![at random]".
the fuckscene of Personal Pewter is "[Argon_Pet_Fuck_Menu]".

to say SummonArgon:
	Project the Figure of Pewter_Consort_icon;
	if Argon is visible: [summoning while standing next to him]
		say "     Whistling for Argon, you smile as he trots to your side, his heavy cock and balls swaying between his legs as he looks up at you curiously. As though catching you staring, he huffs and lifts his leg as though demanding more than just a look, but relents when you promise you'll 'play' with him later, though you feel his nose pressing between your butt cheeks as you turn your back to him, as though he's reminding you who you belong to. Hopefully he behaves himself in public...";
	else: [regular summoning]
		say "     You catch yourself before you start calling for Argon. You doubt he can hear you from this far away, and even if he could, yelling his name is pretty unwise. Who knows what could hear you! [bold type] You should go to Argon's Nest if you want to bring him with you! [roman type]";

to say DismissArgon:
	move Argon to Argon's Nest;
	if Player is not in Grey Abbey Library: [regular dismiss]
		say "     With a huff, Argon looks at you with his smooth, eyeless dome as you attempt to dismiss him, then hops up on you and gives your cheek a long, wet lick, pressing against your front. It's painfully obvious that he's rubbing his half-hard cock all over your front as he shimmies in place, nearly humping you, marking you with his scent until he's satisfied. With something like a smirk, he nips at your ass and noses you, then heads out, no doubt returning to his nest now that he's sure everyone in the library will know you're his breeding bitch.";
	else: [dismissing Argon in the abbey]
		say "     With a huff, Argon flips his tail up at you as you attempt to dismiss him, showing off his masculine appendage as though to say 'Fine, but you'll have to make it up to me later!' Trotting off in the direction of Trevor Labs, he saunters away with a cocky, masculine gait, as though he thinks he's perfectly safe on the streets. You should probably visit him later to make it up to him...";

to say Argon_Pet_Fuck_Menu:
	Project the Figure of Pewter_Consort_icon;
	say "     Whistling for Argon, you watch him appear from a nearby doorway, fresh from exploring. He tilts his head at you and sits, prominently displaying his manhood in the process. Licking his lips, he stares at you expectantly with the space where eyes would be on anyone else, blatantly staring at your crotch. It's not hard to tell what he wants, but the question is: What do you want to do?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Tend to Argon's needs";
	now sortorder entry is 1;
	now description entry is "It's been a while since you've let Argon fuck you. Maybe you should take care of him";
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
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Tend to Argon's needs"):
					say "[ArgonFuck]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     Deciding against having sex with Argon, you pat his head, telling him you can do something together later when you're not so busy. Thankfully, he lets you get away with not fulfilling his needs, huffing and bounding off to explore somewhere close.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say ArgonFuck:
	say "     Stroking along Argon's metallic shoulders, you carefully set aside your things, mindful of the damage his claws could do in the throes of passion. Standing in front of him in the nude, you wait for him to get the hint, moving onto all fours when his snout explores between your legs. His tongue's just as curious as always, and before long, you feel it slurping around inside you, preparing you and tasting your inner depths. It's not long before the tamed monster jumps onto you, lining himself up with all the grace of a horny animal and jabbing your perineum with testing thrusts. It's hard to stay still with all that weight surging forward, but you steel yourself, squaring your hips as the slimy tip of his hardening, dripping manhood rolls along your sensitive ass, threatening to pop in.";
	if Player is female:
		LineBreak;
		say "     Thankfully his cock slots into your lower hole before he slams into your ass, following the slick lips of your pussy and ramming home in one long thrust to claim your cunt. Arching over your back, he grinds deep into you, his blunt cockhead bullying your cervix as heavy balls grind against your pulsing clit. Before long, you feel him start to withdraw, giving you a few seconds of relief from the overstuffed feeling of his massive pole filling you up. Any illusion of gentle behavior disappears as he finds his rhythm, pumping back to the root with enough force to move you forward an inch. Biting your lower lip, you try your best to remain still, arching your back into Argon's rough fucking. He's so big that it's impossible to stay silent, and before long, you're moaning along with his thrusts, whimpering for more as he stuffs you like a well-used breeding mount. You'd think after being fucked once, you'd be used to his animalistic rutting. He doesn't allow you to become complacent, slapping your clit with those massive balls hard enough that your pussy stings from the impact, mixing pleasure with pain until it becomes hard to think.";
		say "    A soft growl brings your attention to the sharp teeth by your ear. Argon's mouth hangs open, drool dripping down his chin, and his breath comes in ragged pants. Judging by the claws digging into your hips, he's getting close! His speed seems to agree, and before long, you feel your arms collapse, leaving your upturned ass to be ravaged by increasingly hard thrusts until, with a low growl, he bottoms out, ravaging your womb with heavy spurts of virility that nearly guarantee pregnancy. Patting Argon as he pants through the afterglow, resting on your back, you attempt to wiggle off of his still-hard cock, holding back a moan as he pulses within you. Strangely, you can't seem to pull yourself away, and before you pull yourself out from under him, you feel his grip tighten. Sharp teeth sink into your shoulder, a warning growl stopping your attempts before you can wriggle out of the pewter grip. That massive cock surges forward again, stirring your already full depths into a foamy mess, and Argon drags you into him, eclipsing your body with his as renewed vigor works your sore depths over in an extended jackhammer. It seems the horny creature isn't done with you yet, and there's no way for you to escape without hurting yourself!";
		NPCSexAftermath Player receives "PussyFuck" from Argon;
	else:
		LineBreak;
		say "     Insistent as he is, it's impossible to stop Argon's cock from piercing your hole. A generous coating of free-flowing pre negates your clenching, and within moments of brushing against it, he pops in with a satisfied sigh, ramming himself to the root in one smooth motion. Giving you no time to adjust, he batters your inner walls with long, hard thrusts, ramming his balls against your hole hard enough to make your rump sting. It's hard to think when Argon hollows you out with that massive fuckstick, but you barely manage to hold on, squaring your hips and pushing back. Your poor prostate takes a beating with every thrust, mashed by the bloated underside of that steely hard cock and sending waves of pleasure from your ass to every inch of your body. It's impossible to tell whether you're cumming or not, your cockhead slapping against your stomach and adding to the messy puddle beneath you with submissive squirts.";
		say "     Grunting his desire, Argon bottoms out, his cock heaving as a flood of pewter cum fills every inch of your innards, swelling your stomach into a sloshing pseudo-pregnancy. It's too much, but clutching claws brook no argument, holding you in place as shallow thrusts aim that firehose of a cock into your innermost depths, and the panting pewter stud's drool drips on your back with every shuddering addition. Sure that he's finished, you attempt to struggle from under the spent beast, patting his side to get his weight off you. Strangely, he hasn't gone soft yet, and the reason for that makes itself clear before the first few inches slide out of your creamy, ruined hole. With a yelp, you feel him surge forward once more. A soft growl echoes in your ear as Argon shows his displeasure, his claws digging further into your hips and his mouth opening to show terrifyingly sharp teeth. Those dripping daggers dig into your shoulder in a mating bite as he maneuvers himself to jackhammer your hole once again, and your poor, overfucked body can only obey, your arms collapsing and your face pressing against the floor as your rear end flops in the horny beast's grip.";
	WaitLineBreak;
	say "     With nothing else to do, you focus on the spreading heat in your swollen stomach, sloshing with every thrust and filling the air with wet sounds that bring a blush to your face. Anyone nearby could tell what was happening to you, and Argon doesn't seem to care who knows that you belong to him. Somehow, the thought of being fucked by something so inhuman in such a public place brings you straight to the edge, and you feel yourself adding to the mess, squirting around that pistoning cock and going limp under that horny assault. You lose track of how many times Argon finishes inside of you, only stopping once he's thrusting a half-hard, flopping cock into your ruined depths. More cum than human at this point, you hold your stomach, wincing as the excess gushes out of your well-seeded hole, gingerly crawling over to your gear and attempting to re-gear yourself once your stomach loses some of its volume. As if apologizing for being rough, Argon licks your wounded shoulder even as the holes from his teeth close up. Still, he seems proud of himself, as if dominating you was the purpose of your entire interaction, not even bothering to clean his drooping, cum-flecked cock, just letting it flop between his legs like a lewd windsock. Does he think you're his mate? You're not sure why, but the idea appeals to you.";

to say ArgonDelayedGratification:
	if "Argon Slut" is not listed in traits of Argon:
		say "     You feel like you've forgotten something important. With Argon trotting at your side, you ponder what it could be. Did you leave something at home? Did you forget to pack something? You know you won't be able to think straight until you figure it out, but you're drawing a blank. Brought back to reality by a low growl, you notice Argon staring at you with a strange hunger. Tail swaying above his back like a scorpion's, he approaches you with a slower gait than usual, not showing the usual happy-go-lucky confidence that he usually does. The reason for your nagging feeling and his change in attitude quickly becomes apparent as he rears up, showing off an angry, steel-hard cock, knocking you to the ground with heavy paws and standing over you. Wasting no time, he brings that massive cock to bear, smearing it over your face as if marking you with a fresh layer of animalistic pre. [bold type]You don't think you're going to get out of this without doing something about Argon's erection.[roman type][line break]";
		LineBreak;
		say "     Argon seems intent on using your body whether you like it or not. Do you want to struggle and attempt to escape, or let him have his way with your throat?";
		say "     [link](Y)[as]y[end link] - Let him use you.";
		say "     [link](N)[as]n[end link] - No. You're not some slut to breed whenever he likes!";
		if Player consents:
			say "     That mouthwatering shaft is impossible to resist, and before you know it, you find yourself opening your mouth to accept the pulsing head, swirling your tongue lovingly around the foreskin hooding it. Every inch of it drips with gooey maleness, and the taste cloys in your mouth, infusing it with animal musk, but somehow, you find yourself craving more, letting short thrusts of Argon's hips test the depth of your throat. It's slow going, but Argon's impatient humps drown your gentle gagging in thick precum, sending it dripping from your nose and forcing you to relax if you don't want to drown. The obscene size of that cock seems to be no issue as your body stretches to accommodate it, but the deeper he goes, the warmer your body feels, and by the time your nose presses against the base, you're squirming with pent-up need. There's no time to undress or deal with your own needs, though- Argon sees to that as he heaves his hips forward, slamming heavy balls against your chin and wringing a wet gag from you.";
			say "     Left with no choice but to hang on for the ride, you massage those heavy low hangers, basking in the heat pouring off of his increasingly demanding thrusts and trying your best to keep your throat open. He's never been gentle with you, but there's a brutality to what he's doing now, as though he's punishing you for letting him go so long without release. Perhaps you're only projecting human emotions onto something too alien for them, but there's no other way to interpret how ruthless his hips have become, bruising your chin with those fat balls and filling the air with wet sounds that would put the most seasoned whore to shame. Cum bubbles burst from your wheezing nostrils as you try to drag in what few breaths you can, sealing your fate as the rutting beast's whore. That's right. There's no denying it- you're his whore, his cumdump, a place to dump his load when he's feeling pent up. You're not sure if it's the influence of his scent or your lust-clouded mind, but you can feel yourself fading into a cock-drunk stupor, unable and unwilling to stop until he blasts your stomach with his load. A sick sense of pride in fulfilling your role keeps you in place, and you feel your eyes rolling back as your eyelids drift closed.";
			WaitLineBreak;
			say "     Thankfully for your screaming lungs, Argon finishes in due time, hilting himself to the root and blasting thick jets of seed that would put any breeding stud to shame. Each gut-busting cannon shot swells your stomach into a burgeoning dome. You're sure you'll drown before the last drop drains, but a wet slurp brings salvation as his rapidly softening cock leaves your mouth, allowing much-needed oxygen to feed your air-starved system. With black clouds around the edge of your vision, you swallow the sticky evidence of your submission, sucking in deep breaths of musk-tainted air and leaning against one silvery side for support. As if smirking at your disheveled state, Argon flashes his sharp teeth at you, his slippery tongue rolling along your cheek and then following your lower lip. His meaning is clear- Argon has claimed you, and he wants you to know it. Slightly ashamed and very turned on, you return the affection, patting his cheek as he cleans his mess with long licks. After a copious coating of pewter drool replaces the cum on your face, you grab a spare cloth from your pack, cleaning yourself up as best you can and preparing to move on.";
			TraitGain "Argon Slut" for Argon;
		else:
			say "     Barely managing to escape from that dripping dick before it shoves past your lips, you roll out from under the pewter consort, scolding him for attempting to force himself on you. You may have allowed it the first time, but you're not willing to let him have unfettered access to your body without your consent! Unfortunately, Argon seems unwilling to take no for an answer, and as you stand up, he squares off with you, his tail twitching like an annoyed cat's. Growling low in his throat, the pissed off pewter pet takes a swipe at you, clearly angry at being denied and ready to show you your place.";
			now inasituation is true;
			challenge "PewterConsortPet";
			now inasituation is false;
			if fightoutcome >= 20 and fightoutcome <= 29: [Player lost]
				say "     As Argon knocks you to the ground, he struts toward you, hips swaying and tail hiked as if parading the fact that he won. With one heavy paw, he pushes you back, squaring his hips and bringing his dangling cock to bear. This time, there's no question what he wants, and rather than grinding against your face, he aims the head squarely between your lips. ";
				say "[ArgonFaceFuck]";
			else if fightoutcome >= 10 and fightoutcome <= 19: [Player won]
				say "     Scolding Argon as you stand over his worn out, panting, but still obviously horny body, you wait for him to regain his footing. Despite grumbling growls, he seems none the worse for the wear, and though he scents the air and 'stares' intently at you, he doesn't attempt to force himself on you again, though he does refuse to move, lifting his leg and slurping at his unattended cock with his long tongue. Sighing, you leave him to tend to himself, watching as he proves perfectly capable of sucking himself off and realizing that his attitude wasn't out of necessity but a sense of entitlement to your body. You doubt this'll be the last time he'll try this. Maybe next time, you should let him have his way. It'll save some time. Within a few minutes, Argon straightens up, licking his lips and shaking softly from side to side, returning to his usual curious self and bounding off to explore, most likely looking for some tasty silverware for an after-orgasm snack. At least there appear to be no hard feelings!";
				now LastFuck of Argon is turns;
			else: [Player ran.]
				say "     Running away from the sex-crazed beast, you manage to put some distance between you, only to find that, as you stop to catch your breath, he's right on your heels. There's not enough time to react as he leaps at you, and before long, you find yourself in the same place as you started, staring up at a massive cock that almost appears angry that you denied it. There's no way out- you're going to have to do what Argon wants! ";
				say "[ArgonFaceFuck]";
	else: [Once you're his slut you show more agency.]
		say "     As Argon noses at your side and huffs, licking drool from his chops and blatantly staring at your ass despite his eyelessness, you realize that he's gone a while without a good draining. Sighing, you pat his head, knowing better than to deny him what he wants. Setting aside your pack, you squat down, confronting the already steel-hard shaft dangling between his legs and pressing a soft peck to the head, kissing away a pearl of pre. Despite your feigned exasperation, you're just as excited as he is, swallowing that gooey treat with gusto and attempting to excite the horny beast with your tongue. ";
		say "[ArgonFaceFuck]";


to say ArgonFaceFuck:
	say "Opening your mouth wide for that slick head, you widen your eyes as the impatient beast humps forward, invading every inch of your mouth without a moment to acclimate and drawing a wet gag of surprise. Mercifully, he's so drippy that his shaft slips right in, but your eyes water as you try to take his length, and you can feel your throat stretch to conform around his dick, slightly sore from the sheer size. You know better than to pull away, though, and you soldier on, trying your best to get him off before you pass out.";[no 5 spaces on this one. connects to another paragraph earlier.]
	say "     Wet slaps fill the air as Argon goes to town on your face, heavy balls slapping against your chin with every lurch of his hips. Within moments, every inch of your face drips with precum, saturating what few breaths you can steal between gags with the unmitigated masculinity of a horny monster, and you soon find that each breath is harder, accompanied by popping orbs of cockslime that bubble from your nose. Still, there's something so alluring about letting him use you, and you can't help but moan with what little breath you have left, vibrating his shaft and pushing him to new heights. You're not sure how long you sit there, but by the time those bulldozing hips grow ragged, signaling his orgasm, you're little more than a sore cocksleeve, held up by nothing but the massive cock plowing your innards. There's a strange sense of accomplishment when your bestial lover hilts, grunting his pleasure, and that spreading warmth in your stomach radiates through your body like a weird sort of hands-free orgasm. Are you enjoying yourself? You're not sure if Argon's seed has an aphrodisiac effect or if you're just a slut, but even when he withdraws his softening cock, you find yourself licking it clean, capturing every drop of masculine nectar and gulping it down.";
	say "     Once you've shined his manhood, Argon twists his head around to give you an approving nod, licking the drool from the corners of his maw and giving your cheek an affection lick as if to say, 'Good job.' ";
	if wslevel is 3: [If watersports is enabled.]
		say "Shortly after, you notice Argon lifting his leg, showing off his manhood once again, and before you can react, you feel warmth trickling down your chest. He's pissing on you! With nothing to do but blush as he marks you with his light yellow stream, you close your eyes, an involuntary moan bringing the salty taste of pure musk to your tongue as he splashes your face. The deluge doesn't stop until your body is completely soaked and you're sitting in a puddle, thoroughly marked as Argon's bitch."; [no 5 spaces on this one. connects to another paragraph earlier.]
	TraitGain "Argon Slut" for Argon;
	NPCSexAftermath Player receives "OralCock" from Argon;

Argontest is an action applying to nothing.

understand "zArgontest" as Argontest.

check Argontest:
	if debugactive is 0, say "You aren't currently debugging!" instead;

carry out Argontest:
	say "     Don't use this command as part of normal play. It is only for testing. It WILL break your save.";
	now HP of Doctor Matt is 15;
	FeatGain "Submissive";
	now PewterPet is Resolved;

Section 3 - Dummy Infection

[PLEASE READ THIS BEFORE ATTEMPTING TO CHANGE THIS SECTION OF THE FILE.]
[This infection was created because the pewter consort infection automatically causes certain events to happen when defeated by reducing HP to 0. Throwing the fight, or losing normally. Because of this, I created this in place of the generic infection as a way to bypass the coding booby traps. This also prevents a vore scene where you eat poor Argon like a common enemy!]

Table of CombatPrep (continued)
name(text)	PrepFunction(text)
"PewterConsortPet"	"[PrepCombat_PewterConsortPet]"

to say PrepCombat_PewterConsortPet:
	say "";

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "PewterConsortPet"; [ Name of the overall species of the infection, used so a "male x" and "female x" have "pureblood X" children. ]
	add "PewterConsortPet" to infections of NonOrganicList;
	add "PewterConsortPet" to infections of FeralList;
	add "PewterConsortPet" to infections of MaleList;
	add "PewterConsortPet" to infections of QuadrupedalList;
	add "PewterConsortPet" to infections of TailList;
	add "PewterConsortPet" to infections of TailweaponList;
	add "PewterConsortPet" to infections of FeralmindList;
	now Name entry is "PewterConsortPet";
	now enemy title entry is ""; [ Name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name. ]
	now enemy Name entry is "Argon"; [ Specific name of unique enemy. ]
	now enemy type entry is 2; [ 0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters. ]
	now attack entry is "The [one of]beast[or]creature[or]consort[at random] [one of]pounces onto you, lashing and nipping you into submission until you finally pry him off[or]bounds nearby to lash you sharply with its tail, driving you backwards[or]clings onto you in an attempt to pin you to the ground, forcing you to pull yourself free[or]grabs one of your appendages with its tail and stumbles you to the ground, quickly scrambling back to your feet[at random].";
	now defeated entry is "";
	now victory entry is "";
	now desc entry is "";
	now face entry is "featureless save for a toothy maw. Your vision is strangely grayscale, save for the alluring, entrancing hues emitted from other living beings";
	now body entry is "lean and feral in build, though thankfully your forehands retain their articulation";
	now skin entry is "[consortskinentry]";
	now tail entry is "You are adorned with a lengthy, prehensile tail, which whistles through the air with a lash.";
	now cock entry is "[one of]normal-looking[or]seemingly human[at random] and uncut";
	now face change entry is "[consortfacechange]";
	now body change entry is "the infection takes hold. Tensing up, your body shifts and adjusts to take on the structure of a feral beast, lean and agile. Looking at your forehands, this strain at least gives you fully articulate digits";
	now skin change entry is "[consortskinchange]";
	now ass change entry is "a long tail sprouts from it. Fairly strong and prehensile, it sings as it's lashed through the air";
	now cock change entry is "it tingles with a strange sensation. Checking it out, it appears to be strangely human, but the change compels it to slightly ooze from its uncut head, your seed taking on a silvery appearance";
	now str entry is 17; [17]
	now dex entry is 17; [17]
	now sta entry is 17; [14]
	now per entry is 13; [13]
	now int entry is 12; [13]
	now cha entry is 15; [15]
	now sex entry is "Male";
	now HP entry is 45; [45]
	now lev entry is 6; [6]
	now wdam entry is 6; [6]
	now area entry is "Nowhere";
	now Cock Count entry is 1;
	now Cock Length entry is 9;
	now Ball Size entry is 3;
	now Nipple Count entry is 0;
	now Breast Size entry is 0;
	now Male Breast Size entry is 0;
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0; [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	now SeductionImmune entry is false;
	now libido entry is 60;
	now loot entry is "pewter seed"; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 45; [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "pewter consort milk"; [ Item to be given to the player if they have this infection and milk themselves. ]
	now CumItem entry is "pewter consort cum"; [ Item to be given to the player if they have this infection and jerk off. ]
	now TrophyFunction entry is "-"; [ Function to generate a list of optional loot items, of which the player can choose one after victory. ]
	now scale entry is 3;
	now body descriptor entry is "[one of]lean[or]feral[or]bestial[at random]";
	now type entry is "[one of]feral[or]bestial[at random]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	now Cross-Infection entry is ""; [ Infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own strain. ]
	now DayCycle entry is 0;
	now altcombat entry is "default";
	now BannedStatus entry is false;

Argos ends here.