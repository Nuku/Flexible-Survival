Version 8 of Demonologist by Gherod begins here.

"Adds Xaedihr, the demonologist, as a NPC and Companion to the game."

[Version 1 - File created, Imp event and tape - Gherod]
[Version 2 - Hell Realm Event and Xaedihr - Gherod]
[Version 3 - Demonic Summoning Support, Library Interactions and NPC scenes (Rane, Atticus) - Gherod]
[Version 4 - Added Dominant Xaedihr route w/ 1st scene - Gherod]
[Version 5 - Added hints at end of tape and Hell Realm. Additionally, added enchantment and spell system to complement the Void Realm addition]
[Version 6 - Art added. New way to acquire Ancient Tome]
[Version 7 - Xaedihr has new interactions with Hayato, also participates in the Youkai Lair Quest]
[Version 8 - Added 1 muscle growth Dom Xaedihr scene]

[ Xaedihr STATS ]
[ LIBIDO ]
[ Libido is used for sex availability and to track Dominant Xaedihr scenes ]
[                                                                          ]
[ 0 - Not open to sex ]
[ \ - Sex available ]
[ 2 - Talked about sex to Xaedihr after having fucked at least once ]
[ 3 - Unlocked 1st Dom Xaedihr scene ]
[ 4 - Unlocked 1st Dom Xaedihr scene, but player is uncertain ]
[ 5 - Submitted to Xaedihr once ]
[ 6 - Talked to Xaedihr after having submitted to him once. Unlocks more scenes. ]

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 1 - Hellish Trashpile
[***********************************************************]
[***********************************************************]
[***********************************************************]

[ Resolution stages                          ]
[   0: Player first encountered the event    ]
[   1: Not the first time                    ]
[   2: Found the tape on trashpile           ]
[   3: Player played the tape                ]
[   99: Left never to return                 ]

Table of GameEventIDs (continued)
Object	Name
Hellish Trashpile	"Hellish Trashpile"

Hellish Trashpile is a situation.
ResolveFunction of Hellish Trashpile is "[ResolveEvent Hellish Trashpile]".
Sarea of Hellish Trashpile is "Warehouse".

when play begins:
	add Hellish Trashpile to BadSpots of DemonList;

LastTrashSearchTurn is a number that varies. [@Tag:NotSaved]
LastTrashSearchTurn is usually 20000.

to say ResolveEvent Hellish Trashpile:
	if Resolution of Hellish Trashpile is 0: [first time]
		say "     Your exploration efforts take you to a rather foggy area, just around another warehouse you have passed by. The sound of dirt scraping between your feet and the asphalt is only thing you hear now as you keep walking through the cemented field, without any signs of life other than yours. The mist disturbing your vision causes your eyes to itch slightly, forcing you to thread carefully as you try to glance around to get to know your surroundings. It appears you've been caught in the middle of some troubling wind as you're crossing a wide road to the next block of buildings straight ahead. You try to make it through quickly, rubbing your teary eyes in an attempt to clear off the dirt as you slip yourself into a sheltered street. It is easier to proceed now, unhindered from any dusty wind as it is blocked by the buildings surrounding you.";
		say "     Amidst your walk, you start feeling some sort of reverberation, one that feels unnatural to you. It's as if you were straying near a reactor core, an ominous sound that nearly makes you feel dizzy. It's when you approach a crossroad that you hear a strange, high pitched voice mumbling from the left, a narrow turn leading to a dark alley. With caution, you lean over the wall and slow down your pacing, reaching over to the corner so you can attentively glance towards the area. Doesn't take you long to catch an eye on what seems to be a tiny crimson whirling portal and a small red figure flying. An imp, of all the possible creatures, dumping trash from the wormhole on the floor. There are waste containers about, but you know better than to hope this specific creature would even care about proper places for junk.";
		WaitLineBreak;
		say "     'Fetch this, clean that, oh! And let's not forget, throw the trash out! Calling out Krokleet to do everything while they sit on their lazy asses and order around!' Turns out the imp's name is Krokleet, and he's complaining about his life as a servant. 'All this useless trash! Why don't they take it out themselves?!' he yells as he finishes throwing another sack of junk into the floor. Realizing what the imp is dumping away comes from a realm you could not have visited before, it's likely that you could find something interesting if you dug around the pile of trash he's making. There might even be some demonic related items that could be useful in the future. One's trash can definitely be another's treasure in this case.";
		now Resolution of Hellish Trashpile is 1;
		HellTrashEvent;
	else if Resolution of Hellish Trashpile > 0 and Resolution of Hellish Trashpile < 99: [not the first time]
		say "     While exploring the surrounding areas of the Warehouse District, you come across a familiar area. Less foggy this time, you quickly recognize this place as the one which led to where you found the imp dumping trash on the floor that other time.";
		if LastTrashSearchTurn - turns < 7: [encountered the imp in the current day]
			say "     However, you doubt the little demon had any time to dump new refuse since your last time digging around in his trashheap, so you think it'd be best to wait a while before you have another go.";
		else:
			say "     You retrace your steps back to the wide open road between the two abandoned warehouses ahead. While it's still windy, nothing compares to the other day, when it was so bad it filled your eyes with dust. With a much easier time now, you cross the road, heading into the building blocks and slip into the street between the two edifices. You pay attention to your surroundings all the time, to see if you can detect that energy which took you to the short demon.";
			say "     Your efforts prove to be fruitful, as the reverberation you heard before is here, tingling around your ears as you proceed deeper into the street. When you make it to the narrow crossroad, you lean over the wall and check the alley. Krokleet is there, mumbling some bad words as he carries on his usual duty. 'It never ends, this damned junk! Why do they keep bringing random prisoners' stuff with them?! This is all useless! Trash!' In a great mood as always, the imp keeps dumping more trash onto the floor. He doesn't seem aware of your presence yet, allowing you to make several choices.";
			if Resolution of Hellish Trashpile < 2: [never acquired tape]
				HellTrashEvent;
			else if Resolution of Hellish Trashpile > 1: [acquired tape]
				HellTrashEvent2;

to HellTrashEvent:
	say "     You could [bold type]wait until he's done[roman type] with his ungrateful duty, or [bold type]draw his attention to you[roman type] and search the pile after beating him in a fight. [bold type]Leaving is also a possibility[roman type], if you prefer to stay out of this. You could also [bold type]leave and avoid this place in the future[roman type] if you're not interested in whatever this imp is dumping.";
	LineBreak;
	say "     [link](1)[as]1[end link] - Wait for the imp to finish.";
	say "     [link](2)[as]2[end link] - Draw the imp's attention to you.";
	say "     [link](3)[as]3[end link] - Leave for now.";
	say "     [link](4)[as]4[end link] - Take your leave and avoid this place from now on.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 4:
		say "Choice? (1-4)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to wait for the imp to leave, [link]2[end link] to fight him after drawing his attention, [link]3[end link] to leave this place or [link]4[end link] to leave for good.";
	if calcnumber is 1: [wait for the imp to leave]
		LineBreak;
		say "     Hidden behind the wall, you wait until the imp finishes his task. 'Finally! I think this is everything! There's still that bloody hall to clean up before...' His speech is cut out as the portal closes behind him. This is your chance to investigate the pile without any disturbances.";
		if Resolution of Hellish Trashpile < 2:
			DemonicRitualTapeGet;
		else:
			DemonicItemGet;
	else if calcnumber is 2: [fight the imp]
		LineBreak;
		say "     Hidden behind the wall, you grab a nearby rock and throw it into the alleyway. It ricochets off the walls, making a loud impact sound that echoes through the narrow pathways. 'Huh?! What was this?! Is someone there?! Answer!' Your strategy worked, as the imp is now walking away from the portal and towards your position. Now's your chance to take him down!";
		say "[FightTrashImp]";
		if Resolution of Hellish Trashpile < 2:
			DemonicRitualTapeGet;
		else:
			DemonicItemGet;
	else if calcnumber is 3: [leave]
		LineBreak;
		say "     Right now, you have no interest in the trashpile, so you simply turn your back and walk away, hoping to return some other time. Carefully making your way out of the narrow pathways, you're soon through the wide roads and back to the main area of the Warehouse District.";
	else if calcnumber is 4: [leave for good]
		LineBreak;
		say "     Deciding you don't want to encounter the imp ever again, you turn your back and walk away. Carefully making your way out of the narrow pathways, you're soon through the wide roads and back to the main area of the Warehouse District. You also take note of this route, so you don't come back here by accident on your future explorations.";
		now resolution of Hellish Trashpile is 99;

to say FightTrashImp:
	say "     A rapid flutter of wings draws your attention to an incoming threat in the shape of a small, red-skinned creature about a foot in height! The slender being has a pair of bat-like wings on his back, a spade-tipped tail, and its relatively handsome face is crowned by an unruly mop of black hair out of which two curved horns poke out of. Wearing nothing but a thin, skimpy loincloth that sways from side to side with every motion, there is little doubt that this tiny demon, who goes by the name of Krokleet, is male.";
	say "     Swooping down on you, the imp gives you an angry frown before clearing his throat and booms out in his strangely high pitched tone. 'How dare you intrude during my duties! Isn't it enough hassle as it is, I'll have to deal with unpleasantries like yourself?!' His voice just makes it look all a bit funny, [if Libido of Skarnoth > 0]nothing like the imps you've encountered before,[end if] and you can't quite suppress a snort at how almost comical he sounds, drawing you a hateful glare from the imp. 'We'll see who's laughing after I give you a well-deserved thrashing, whelp!' he shouts and raises a hand, forming a ball of fire above his palm about an inch in diameter.";
	challenge "Imp Male";
	if fightoutcome < 20: [player won]
		say "     Taking hold of the slender little demon, you grab his head and give it a sharp twist, breaking his neck. He scowls at the pain, but then surprisingly gives a toothy smile. 'Can't kill a demon, you idiot. I'll just end up in hell and find my way back...' he croaks out as the life fades from him. Then as the body goes still, it seems to melt between your fingers, becoming a puff of red smoke that is scattered by the wind.";
	else if fightoutcome > 19 and fightoutcome < 30: [lost]
		if HP of Player > 0:[player submits]
			say "     As you submit to the little demon, the imp lowers his guard, perplexed with your change of attitude. 'What?! You interrupt my work and nearly hit me with a rock... for this?! While he clearly sounds like he's annoyed with your intrusion, the slowly building protrusion beneath his loincloth gives him away. 'At least you know your place as the pathetic mortal you are! Yeah, that's right! I'm the superior race, here! His too-broad mouth pulls into a wide grin showing off a whole row of sharp teeth as he flies over to you. 'Now you'll have to make up for my wasted time! Strip naked, slave!' The hell minion puffs up his chest as he caresses his throbbing shaft, observing you taking off your gear and clothes, dropping them to the ground one by one. Fluttering around your exposed body, he demands that you take some lewd poses to show off - like shaking and spreading your ass or air-humping with your crotch - until he commands you to lie down on your back. he lands on your chest a moment later, placing tiny hooves to stand on your breastbone.";
		else:[player loses]
			say "     You are left swaying badly after the last hit of the little demon and the imp gives an evil chuckle as he flies right up to your face in a flutter of wings. With his too-broad mouth pulling into a wide grin showing off a whole row of sharp teeth, he reaches out to poke your forehead with one finger, then gives a small shove - enough to make you keel over backwards. 'What were you thinking?! You should have realized that you're no match for me! I'm a demon, dumb-fuck! And I am working! Now you'll have to make up for my wasted time!' With those words, the foot-tall being lands on your chest, placing tiny hooves to stand on your breastbone.";
		say "     'I won't go easy on you, bitch! You'll be my fucktoy until I'm done screwing the hell out of you! Hah!' the red-skinned humanoid gleefully says as he taps his right hoof on your chest and rubs his crotch. Wearing nothing but a threadbare loincloth, it is painfully obvious that the demon is hard as a rock - his well-sized cock (for the small body-size) standing straight out under the fabric and tenting it. He clearly gets off on ordering others around. With the flick of a clawed hand, your little captor pulls aside the loincloth a moment later, revealing his bright red shaft and starting to jerk it off with gleeful intensity.";
		WaitLineBreak;
		project the figure of Imp_naked_icon;
		WaitLineBreak;
		say "     'You're nothing but a weak little mortal brought down by my might and power, are you? Go on - say it!' he demands from you while beating off, and given your current position you've got little choice but to obey. This arouses the imp even more, prompting him to play with his balls - squeezing them while giving his shaft a few pulls and swings. 'Let's put that mouth to good use! Yeah, you heard me! I want you to suck my dick like the good fucktoy you are!' His erection throbs even more as he leans over to your face, placing his little hands on both sides of your face and pulling your head with surprising strength. Your lips soon meet the gleaming head of his demon cock, already soaked in precum as it continuously oozes from the slit. With a quick push, your mouth is forced open to take the yet generously sized shaft inside, barely managing to hit your throat as the small imp eagerly thrusts his hips forward.";
		say "     By holding himself half above your face, given how little he weighs, the short demon manages to effectively facefuck you, his erection pulsing with growing lust as he increases the pace. 'That's it, slave! Who's a good fucktoy?' he giggles as he pulls his cock from you with a loud 'pop' sound, stroking it faster and faster as he puts your tongue to work on his red ballsack. You do your best to lick them thoroughly, running your tongue all over his nuts. Soon, the groans and grunts of his weirdly high pitched voice build to a half-shouted roar, and he bucks his hips against the hand gripping his cock. You feel his balls retracting slightly and pulsing in your mouth as he sprays long blasts of cum all over your hair and forehead. The sheer volume of demonic seed he puts out is almost admirable, and you feel every spurt of it being forced out of his sac. Eventually you're forced to close your eyes tightly as a splashed line of cum runs down your eyebrow.";
		WaitLineBreak;
		say "     'Well well - it's been fun playing with you, slut. Wish I could just keep ya, but unfortunately you don't fit the only shitty hell-gate wormhole I can invoke,' the imp says to you and smiles as you carefully open the eye that hasn't got demon cum splashed on its eyelid. 'And eventually, my masters would claim you, stealing all the fun from me! So, how about you keep coming here and submit to me like the filthy weak mortal you are?' The demon flutters away, finishing up his trash dumping on the floor. As you try to stand on your feet, you fail to see a box of some sort being thrown at your face, hitting you right on your nose with surprising force. The imp throws a laughter as you fall back to the ground. 'You look like trash! Hah! See ya some other time, fuckface!' he shouts as he disappears into the portal, the whole thing vanishing together with him.";
		say "     In one way or another, the imp is gone, and you're now free to search the trash he made once you recover your senses. The task is a little more difficult than you anticipated, but eventually, you manage to stand up and focus on your previous objective.";
	else if fightoutcome is 30: [fled]
		say "     You manage to run away and shake the imp, then circle back to the trashpile.";

to HellTrashEvent2:
	say "     You could [bold type]wait until he's done[roman type] with his ungrateful duty, or [bold type]draw his attention to you[roman type] and search the pile after beating him in a fight. [bold type]Leaving is also a possibility[roman type], if you prefer to stay out of this. You could also [bold type]leave and avoid this place in the future[roman type] if you're not interested in whatever this imp is dumping.";
	LineBreak;
	say "     [link](1)[as]1[end link] - Wait for the imp to finish.";
	say "     [link](2)[as]2[end link] - Draw the imp's attention to you.";
	say "     [link](3)[as]3[end link] - Leave for now.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to wait for the imp to leave, [link]2[end link] to fight him after drawing his attention or [link]3[end link] to leave this place.";
	if calcnumber is 1: [wait for the imp to leave]
		LineBreak;
		say "     Hidden behind the wall, you wait until the imp finishes his task. 'Finally! I think this is everything! There's still that bloody hall to clean up before...' His speech is cut out as the portal closes behind him. This is your chance to investigate the pile without any disturbances.";
		if Resolution of Hellish Trashpile < 2:
			DemonicRitualTapeGet;
		else:
			DemonicItemGet;
	else if calcnumber is 2: [fight the imp]
		LineBreak;
		say "     Hidden behind the wall, you grab a nearby rock and throw it into the alleyway. It ricochets off the walls, making a loud impact sound that echoes through the narrow pathways. 'Huh?! What was this?! Is someone there?! Answer!' Your strategy worked, as the imp is now walking away from the portal and towards your position. Now's your chance to take him down!";
		say "[FightTrashImp]";
		DemonicItemGet;
	else if calcnumber is 3: [leave]
		LineBreak;
		say "     Right now, you have no interest in the trashpile, so you simply turn your back and walk away, hoping to return some other time. Carefully making your way out of the narrow pathways, you're soon through the wide roads and back to the main area of the Warehouse District.";

to DemonicRitualTapeGet:
	say "     With a quick dash, you approach the pile and get your hands down on the pile of torn boxes, empty cans, ragged clothes, and you're careful enough not to touch any of those odd stains you detect in the fabrics. Your efforts allow you to find something quaint, a small camera in the middle of the junk. You take it and see if it works. When you turn it on, it flickers and goes back to black with a loud 'click' sound. Despite your attempts to revive the device, it keeps refusing to work. However, you manage to recover a tape in relatively good conditions. Intrigued, you keep it to yourself, leave the broken camera behind and leave the place. Perhaps there is a way to watch this tape, provided you find some sort of working gadget able to play it...";
	say "     [bold type]Demonic Ritual Tape has been added to your tape inventory![roman type][line break]";
	add "Demonic Ritual Tape" to tapes of Player;
	now resolution of Hellish Trashpile is 2;
	now LastTrashSearchTurn is turns;

to DemonicItemGet:
	say "     With a quick dash, you approach the pile and get your hands down on the pile of torn boxes, empty cans, ragged clothes, and you're careful enough not to touch any of those odd stains you detect in the fabrics. Your efforts reward you with an assorted amount of useless trash, well-worn pieces of clothing that are completely unusable anymore, objects burned beyond recognition, and even what seems to be... hair? Nonetheless, you're not yet ready to give up, as there's more of the pile you haven't searched through, yet.";
	LineBreak;
	let randomnumber be a random number from 1 to 3;
	if randomnumber is:
		-- 1:
			say "     After some time, you manage to get your hands on a bottle of [bold type]Demon Seed[roman type]. Either they don't see any use for this kind of thing anymore, or the demons are really into storing their own stuff in bottles and release them into the surface world, hoping some rather bizarre creature or person would drink this. It smells really sweet, and it does have an odd color, flowing strangely inside at a very warm temperature. Still, you decide to tuck it away in your inventory and call this search done, as there's little left that you haven't rummaged through already.";
			ItemGain demon seed by 1 silently;
		-- 2:
			say "     After some time, you manage to get your hands on a strange pill box in the middle of more trash. Sadly, it's mostly empty, with only one [bold type]Libido Pill[roman type] left. You recall this to be some sort of sex enhancement drug, used to significantly boost the recipient's libido. Doesn't take a genius mind to know why the demons would be so interested in such a thing, provided the ways they find to dominate their enemies. Without giving it much though, you tuck it away in your inventory and call this search done, as there's little left that you haven't rummaged through already.";
			ItemGain libido pill by 1 silently;
		-- 3:
			say "     Sadly, your efforts are in vain. There's nothing of use that you can bring with you. Your only option is to hope for another chance at catching the imp and have another go at the next trash pile he makes.";
	now LastTrashSearchTurn is turns;

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 2 - Tape - Demonic Ritual
[***********************************************************]
[***********************************************************]
[***********************************************************]

to say DemonicRitualTape:
	say "     At the beginning of the tape, you see plain darkness, only the cracking steps on dry wood echo through the walls of this yet unknown place. Only then, a faint light reveals the presence of a man, holding a flashlight in the lens['] direction. He glances around with the luminous source as he searches for a way to keep the room illuminated, finally deciding to place it on a nearby table. By the time he makes it back to the camera, an odd feeling of familiarity strikes you as the bookshelves can now be seen surrounding the place. Then, a clear and deep voice sounds from behind the perspective as the camera starts moving. 'There, this should do it. Might only require a few additional items.' You see his hand throwing the contents of some strange vials into a red pentagram drawn on the ground. He does this while holding the camera, and when he points downwards, you see a strange, old looking book by his feet.";
	say "     He carefully reaches down to grab it, what actually seems to be a tome, and opens it with a slight hump. The lens are focused on the symbols in the worn pages, which look ancient. The language is quaint, but he seems to go over it loud and clear without any difficulty, as if he was an expert on the matter. With a pronunciation like you've never heard before, he lowers the tome as he finishes speaking, the pentagram glowing with a dark aura, accompanied by an odd sound of energy flowing around the drawn figures. This makes the flashlight dim, and suddenly, a flash bursts through the room. The man steps back in surprise, as the brief absence of light is broken by a red mist forming above the wooden floor.";
	WaitLineBreak;
	say "     'Was something wrong in the formula? I thought...' his words are interrupted when an odd portal tears through the fabrics of space. 'A direct portal to Hell? But it shouldn't look like this...' You realize, by the surprised tone of his voice, that he summoned something he did not expect. He backs away, as he places the camera on a nearby table, pointing towards the portal. Now you can see his full human shape, wearing some kind of robes, contrasting with the dimming red luminescence, holding the tome in his left hand as the other hovers above the ancient pages, as they seem to somehow leaf through on their own.";
	say "     Out of nowhere, a large purple hand bursts out of the portal, his thick fingers ending in pointy dark claws stretched open, then forming a fist forward as more of the powerful arm reveals itself. A brutish form, covered in hard and powerful muscles, passes through, stepping on the pentagram with heavy steps as his red glowing eyes are fixed on the human. The demon brute grins with his menacing sharp teeth, stroking his huge erection while slowly making his way towards the vulnerable ritualist. Cautiously, the human steps to the side and lets go of the tome a little further away, without any sudden moves, and returns to his previous position. He lets the demon approach him, and surprisingly, his massive purple hand gently reaches for the back of the man's head, almost covering it entirely. Although, this is where the brute's sympathy ends, as the much shorter human is forced on his knees, without any resistance from his part.";
	WaitLineBreak;
	say "     The robed man doesn't waste any time, getting his lips around the demon's hard-on, pulsing with eagerness. The hellish fiend lets out a grunt, only to force his cock deeper into the man's mouth, nearly dislocating his jaw. He doesn't stop there, making the ritualist flinch helplessly as the demon shoves it down his throat, the human now kneeling right between the brute's thick and muscular legs. With his large manhood now deep inside his summoner's throat, the demon brute starts thrusting back and forth, mercilessly fucking the much weaker human's mouth. His struggling to breathe only excites the beast even more, as the ritualist is relentlessly facefucked, the demon's massive pair of balls slamming against his chin with every motion.";
	say "     Holding his summoner's head tight with both his hands, the demon keeps on going for a good long while before he loosens his grasp, allowing the man to have a few desperate gasps for air. This brief mercy is over not too shortly after, as the massive brute grabs the man by his hair and pulls him up towards himself. Growling at his face with his threatening grin, the hellish fiend pushes the ritualist against the bookshelf, easily tearing his robes off thanks to the sharp, coal colored claws adorning the demon's large hands. With a loud slap, the brute feels up the human's bubble cheeks, shoving one thick finger up his tight hole, causing the young man to groan in mild pain. Still, the ritualist arches his back, to which the demon responds with a pleased grunt.";
	WaitLineBreak;
	say "     With his throbbing erection in one hand, the hellish brute keeps fingering the man's hole, slipping in another finger in his tight ass as the young researcher moans helplessly. This only makes the demon hornier as he stretches the human's ass even further, burying more of his thick fingers inside. By the time he's done preparing his summoner, the demon begins rubbing the already soaked tip of his pulsing length against the young man's rear. With a thrust, the brute sinks his manhood inch by inch inside the ritualist's hole, who squirms in a mixture of pain and pleasure as he feels his own ass trying to accommodate the biggest cock that has ever entered him. The demon shows no mercy, pounding that ass like there's no tomorrow, intensifying as the wooden shelf which the human is holding onto cranks audibly.";
	say "     The following next minutes are filled with flesh on flesh clapping, beast-like grunts and whimpering moans, then suddenly, the hellish fiend grabs his summoner, holding the man tight against his own demonic muscular frame, while still deep inside his ass, and turns him towards the camera, giving you an overshadowed front view of the human getting pounded hard by a demon brute. His motions get even more intense, and the demon's balls begin to retract. It's not too long until a loud roar of pleasure is heard echoing through the library, as the demonic fiend reaches his climax, filling the young man's bowels full of corrupted seed. It's so much that some leaks out of his ruined hole and starts forming a pool of thick cum beneath them.";
	WaitLineBreak;
	say "     When you think this is over for the poor human, the portal's light dims again, and another hand tears through the crimson veil. You don't see one, nor two, but three more demon brutes coming out of the portal, with equally sizeable erections, pulsing with desire for some tight hole to breed. They must have followed the first, and do not intend to give the ritualist any time to breathe. With his cock still inside the man, the initial brute turns him over to his friends, slowly backing away from the exhausted young man as he leaves a trail of demon cum, still leaking from the human's gaping hole.";
	say "     Without any warning, one of the demons grabs the summoner's head, forcing his jaw open to take the massive erection deep down to his throat, while the others circle around him, rubbing their own lengths with eager lust. With his hole now more than ready, another of the brutes easily manages to grab the human's ass and shove his hellish cock deep inside. The demons spitroast the young man for quite some time, keeping him suspended between themselves and taking turns on both his ends, fucking and filling his insides with even more thick cum. Every plead of mercy is muffled by the unforgiving facefucking the ritualist is being given, and he's pounded hard and deep until nearly the end of the tape. That is, until they finally pause, only to drag the absolutely cum-coated human along with them through the portal.";
	WaitLineBreak;
	say "     When they're about to disappear, one of the demons turns to the camera. With a curious grunt, he approaches it, tilting his head as he grabs the device with only one of his massive hands. Clearly he doesn't know what it is, but he simply decides to take it with him. This could explain how you were able to find the tape in such an odd manner. However, to your disappointment, the image cuts as soon as he crosses the veil, leaving you only with static noise. With nothing left on the tape to watch, whatever happened to the young man remains a mystery. You haven't seen him turning into one of them as it usually happens, and no ordinary human could flip a tome's pages without touching them. Now, if only you could find this grimoire...";
	if carried of ancient tome is 0:
		say "     From what you have seen, this tome looks very [bold type]ancient[roman type]... perhaps there is someone who could help you find it? It is a magical object, might have a will of its own, even, so it should be tricky to search for it yourself, although it seems to have remained at the [bold type]Library[roman type]... Who could you bring here? Someone curious... maybe a [bold type]college student[roman type]... Those never seem to know when to stop reading about something that intrigues them. It is possible that the [bold type]College Campus[roman type] may have someone you could bring to your shelter in order to acquire this grimoire.";
		say "     Alternatively, [bold type]you could simply try your luck looking around every corner of the Library, especially the dark spots[roman type]. It definitely won't hurt giving it a try...";
	if resolution of Hellish Trashpile < 3:
		now Resolution of Hellish Trashpile is 3;

after going to Darkened Alcove while (Resolution of Hellish Trashpile is 3 and ancient tome is not owned):
	say "     Determined to find that grimoire you saw on the tape, you decide to rummage through most bookshelves you can find in the Library, in hopes that you stumble across the tome somehow.";
	say "     As you walk through what previously seemed to be a very peaceful corner, full of books and knowledge waiting to be read and had, which is now a silent, desolate room with barely anything noteworthy except for its obvious abandoned state, a cracked window and a rotten wooden chair, you find nothing but the remains of what was once a grand library... and disappointment. The book continues to elude you, no matter how thorough your search is. You begin to think that, perhaps, this is a waste of time... Maybe someone already came here and looted the tome, leaving with it to a far, far away place...";
	say "     Perhaps you would never find this tome here...";
	WaitLineBreak;
	say "     You contemplate alternatives as you continue to mindlessly shove away more old books, some too deteriorated to read, even, and think of potential places where someone could have brought such a curious grimoire, or maybe a place where a group of some sort of cultists get together to perform hellish rituals. A myriad of thoughts storm through your mind as you attempt to make sense of this, a current that is abruptly interrupted by the strangest whisper.";
	say "     At first, you think someone sneaked up on you, and as you turn around, so sure that you would find a person, or even a creature, your eyes are met with the darkened landscape of the library once more. Nobody was there... No one but you. In fact, it really seemed you were completely alone, with absolutely not even a single soul to be seen. The odd sensation strikes you again, this time not in the form of a sudden whisper, but something else...";
	WaitLineBreak;
	say "     You turn around to face the bookshelf you were previously interacting with, and you can't believe your own eyes for a second. There is a book laying in the upper shelf. It is a large, seemingly heavy, and has an ancient look to it, like it belonged in the occult section. Within an instant, you grab and examine it with evident confusion, only to come to the conclusion that this is the [bold type]ancient tome[roman type] that you were looking for!";
	say "     How could you have missed something that was right in front of your eyes? Or was it...? Whatever the case may be, you are now in possession of the tome that will allow you to replicate that ritual... And perhaps a few other things as well. You immediately feel a strange urge to read it...";
	now Resolution of Hellish Trashpile is 4;
	ItemGain ancient tome by 1;

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 3 - Hell Realm
[***********************************************************]
[***********************************************************]
[***********************************************************]

Table of GameEventIDs (continued)
Object	Name
Hell Realm	"Hell Realm"

Hell Realm is a situation.
ResolveFunction of Hell Realm is "".
Sarea of Hell Realm is "Nowhere".

to say HellRealmRitual:
	say "     After analyzing the tome, you managed to find the pages regarding the ritual you saw being performed in the tape. By drawing a pentagram on the floor, illuminated by candles, you only need to speak the ancient words written in the book in order to call a portal leading into a realm of Hell. Then, you should expect a crimson wormhole, large enough to allow you through, to take shape in front of you. The way you have to select which realm you end up traveling to is by changing a few words, and to deepen the connection, you need to throw something into the pentagram. A good mix is a bottle of [bold type]Demon Seed[roman type] and a dissolved [bold type]Libido Pill[roman type]. After acquiring these two items, you're all set for an attempt.";
	if carried of demon seed > 0 and carried of libido pill > 0:
		say "     Knowing that you're carrying the necessary items, would you like to perform this Demonic Ritual and travel to Hell? Beware, as it may be a dangerous trip.";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Perform the Demonic Ritual.";
		say "     ([link]N[as]n[end link]) - Close the tome for now.";
		if Player consents:
			LineBreak;
			HellRealmEvent;
		else:
			say "     With your decision made, you delay your attempt at performing the ritual, closing the tome and putting it down.";

to HellRealmEvent:
	say "     It is time to perform the demonic ritual, now that you have finally understood how to do it. With this in mind, you go over every step, beginning with drawing the pentagram on the ground with some chalk you found lying around. Each line is meticulously calculated using reference points, to ensure they come out straight and clean. When you're done, you stand up and appreciate your careful work, and just looking at it gives you a mystic, yet disturbing vibe, a clear warning you're messing with something hellish. As for the required items, you prepare the solution by crushing the libido pill into powder, then sliding it over into the bottle of demon seed. You close the bottle and shake it slightly, to make sure it dissolves properly in the warm liquid. Now with both the pentagram and the items ready, you go over the arcane chant.";
	say "     You guess that if you mess up one word, you'll end up performing something else entirely different or ruin the ritual, so you do a careful review over the tome's pages. There are a few words whose pronunciation still challenges your oral abilities, but it should be close enough to have the ritual result in success. With the theoretic revision done, you approach the pentagram... And remember there's still something missing. The candles on each of the pentagram's five edges. With everything you brought, it should be no problem placing the candles in position and light them up. Indeed, with the candles lit, the scene clearly suggests a demonic ritual about to be performed.";
	WaitLineBreak;
	say "     Now that everything's ready, you open the bottle and throw its contents into the pentagram's center. None of the wild drops erased the candles, and the flames changed colors to a dark blue. Until now, it seems to be progressing as intended, but the hardest part which kept delaying you until this day is yet to be done. Carefully handling the tome in your hands, you take a deep breath and begin the chant. The pentagram reacts to every arcane sentence you finish, and eventually, a faint crimson light begins forming around the room. Just like you saw in the tape, an ominous agglomerate of energy takes shape above the pentagram, informing you that you were successful.";
	say "     In front of you, a whirling red portal grows in width and power, illuminating the place with its crimson energy. You finish the chant and place the tome down, standing wary. A precaution you're wise to take, as you see the same large and purple hand tearing through the wormhole's veil, and soon, the shape of a sturdy and massively muscular body coming out of it, wearing an evil grin and a rock-hard erection down below pointing at you, the sizable demon length throbbing in anticipation for subduing a tight hole. Finding yourself in the same situation as the ritualist who performed this ritual before you, it's time to make a decision regarding your next move. [bold type]You doubt it's only this demon you'll have to confront, if you're thinking about fighting your way. Submitting is also an option, but you don't know what that will do to you...[roman type][line break]";
	LineBreak;
	say "     [link](1)[as]1[end link] - Fight your way into the portal.";
	say "     [link](2)[as]2[end link] - Submit to the demon.";
	say "     [link](3)[as]3[end link] - What if...";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to fight the demon, [link]2[end link] to submit or [link]3[end link] to do something else.";
	if calcnumber is 1:
		LineBreak;
		say "     You didn't come this far to end up enslaved by demonic fiends like the previous fool who dared to mess with them. You're not that fool. If there's a plan, you follow it, and that plan is teaching the demons a lesson! Assuming an aggressive stance, the demon taunts you and challenges you to make the first move.";
		HellRealmBruteFight;
	else if calcnumber is 2:
		LineBreak;
		say "     No matter how hard you attempt to resist, you can't beat this demon, and you can't even think about facing the others, if there are any. Maybe the ritualist submitted on purpose to gain entry, and you resolve suggests you do the same. On your knees in front of the brute, you're about to discover if this was the right move...";
		HellRealmBadEnd1;
	else if calcnumber is 3:
		LineBreak;
		if demon brute is listed in companionList of Player and DemonBruteStatus is 0:
			if DBCaptureQuestVar is 6 or DBCaptureQuestVar is 7:
				say "     It is clear that you have no escape, as the demon stands ready to knock you down, and he probably has some friends on their way, judging from what you saw in the tape. Taking this into account, you look at Brutus, and you look back at the demon at the portal, and within a fraction of seconds, you start pretending you're your pet's captured victim. It takes a while until your demonic companion understands what you're trying to do - which seemed obvious, as you're literally calling him 'Master' and reminding him of an 'exclusivity deal' he made with you - but as soon as he understands the plan, he grins back at the demon brute, grabs you and puts you by his shoulder as if you were a sack of something, accidentally exposing your ass to the enemy.";
				say "     'What?! No sharing the slave? You're no fun!' says the hostile demon brute, followed by a frustrated grunt. '[SubjectProCap of Player] is mine. That was the deal in exchange for [PosAdj of Player] soul and eternal servitude.' clarifies your demon companion assertively as he's questioned about not offering your holes to be plundered raw. Doesn't take much more to convince the brute to back off, as Brutus walks into the portal without a problem. Strangely, the demons couldn't tell the difference between a cleansed one and themselves, however, you guess this might only be limited to the brutes, so the more intelligent ones might be able to detect the lack of corruption in him.";
				say "     With the infiltration successful, Brutus puts you down far from the other brutes['] view, allowing you both to sneak around this strange realm.";
				WaitLineBreak;
				HellRealmTheGrid;
			else:
				say "     What if there was a way to trick them? Maybe something, or someone that could help you get past them... You think to yourself what you could possibly use to achieve this end, but you have nothing worthy. If, maybe, you looked like them, or had the odd chance to befriend a demon brute yourself, you could try to deceive them into granting you passage without any undesired confrontations. Unfortunately for you, the demon brute you did manage to befriend is your unwilling slave, and you have a feeling he'd betray you given the chance, especially since you're literally going to Hell, which is his home and where he would drag you into if you lost against him that day. It'd be a bad idea to trust him with such a plan! Speaking of demons, your enemy is getting impatient, and when you realize that, he's already walking towards you. Looks like he decided your next action for you. It is a fight!";
				HellRealmBruteFight;
		else if BodyName of Player is "Demon Brute" and Player is pure:
			say "     What if there was a way to trick them? Maybe something, or someone that could help you get past them... You think to yourself what you could possibly use to achieve this end, but you have nothing worthy. If, maybe, you looked like them... Wait a second. You look like them! A fully fledged demon brute, just like the ones facing you! And you soon realize you misjudged the situation, as the demon's expression changes to a friendly one. 'Oh, thought it was another one of those audacious little bitches again! Sure I could use raping another one like I did the last time, in this exact same place! He had one tight ass, that fucker... Gotta have another go at him, sometime.' he says. Was he the one in the tape, after all?";
			say "     You shake your head to him and say you were only heading back home, having found nobody to drag along with you. 'Hah, no need to worry. If it keeps going like this, they'll come to us instead. And we'll be happy to fuck them raw and fill up their holes until they can't get up again.' You can't help but notice the brute's dick twitched as he spoke, as if he was imagining it. Well, at least your disguise deceived him well. You start walking towards the portal, shrugging. 'Wait a second...' he adds, freezing your insides as a chill runs down your spine. 'Huh. Funny. You must be new or something, I don't remember your face. We should gangbang a few slaves together, when you've got the chance. Get to know each other.' Definitely it's not the time for leisure, but you do force an acknowledging smile and leap into the portal. You weren't expecting the sensation of pushing, followed by a pulling force, which left you extremely disoriented as you were taken deeper into the wormhole.";
			WaitLineBreak;
			HellRealmTheGrid;
		else:
			say "     What if there was a way to trick them? Maybe something, or someone that could help you get past them... You think to yourself what you could possibly use to achieve this end, but you have nothing worthy. If, maybe, you looked like them, or had the odd chance to befriend a demon brute yourself, you could try to deceive them into granting you passage without any undesired confrontations. Unfortunately for you, the demon is getting impatient, and when you realize that, he's already walking towards you. Looks like he decided your next action for you. It is a fight!";
			HellRealmBruteFight;

to HellRealmBruteFight:
	now inasituation is true;
	Challenge "Demon Brute";
	now inasituation is false;
	if fightoutcome < 20: [won]
		say "     After giving him the beating of his life, the demon vaporizes into ash more shamefully than his massive frame would suggest. However, you're not done yet. Three more shapes are walking through the portal in this precise moment. This group must have been the same that grabbed the ritualist in. You have no other option but to fight them as well!";
		HellRealm3BrutesFight;
	else if fightoutcome > 19 and fightoutcome < 30: [lost]
		say "     No matter how hard you try, you can't beat this demon, and you can't even think about facing the others. Defeated and on your knees in front of the brute, your fate is about to be sealed...";
		HellRealmBadEnd1;
	else if fightoutcome is 30: [fled]
		say "     For a second, you think you escaped, until you suddenly hear a shout of, 'You won't get away that easily!' and your enemy jumps out of the shadows to the side and kicks your legs out from under you.";
		HellRealmBruteFight;

to HellRealm3BrutesFight:
	let GroupFightCounter be 0;
	now fightoutcome is 0; [reset]
	while fightoutcome < 20 and GroupFightCounter < 3: [runs for 3 times or until the player loses or flees]
		now inasituation is true;
		challenge "Demon Brute";
		increase GroupFightCounter by 1;
	now inasituation is false; [reset]
	if fightoutcome < 20: [won]
		say "     The three demons remain defeated by raw force, and a finishing blow leaves them turned into a pile of ash. With your way free, you're now able to proceed into the portal. However, since you're still in the safety of the Grey Abbey Library, you patch up any wounds and bruises left by the brutes before stepping into the portal. The first contact feels strange, as if the energy emanating from the wormhole kept pushing you away, but as soon as your hand slides in, you feel a contrary force pulling you inside, one that you naturally follow as the reverberating magic envelops you.";
		WaitLineBreak;
		HellRealmTheGrid;
	else if fightoutcome > 19 and fightoutcome < 30: [lost]
		say "     Three is too much. There isn't anything you can do when you're outnumbered like this, and the demons quickly overpower you with ease. Defeated and weak, you're held against the floor by the group of brutes, eager to get the fun started with their new acquisition...";
		HellRealmBadEnd2;
	else if fightoutcome is 30: [fled]
		say "     For a second, you think you escaped, until you suddenly hear a shout of, 'You won't get away that easily!' and your enemy jumps out of the shadows to the side and kicks your legs out from under you. All the three demons are back on track, now!";
		HellRealm3BrutesFight;

to HellRealmTheGrid:
	say "     The dimensional voyage left you a little dizzy, but you're now inside the realm where the ritualist was dragged into. As you glance around, it looks like a typical hell depiction of what one would see in any traditional description. There are constructs build with refined brimstone and obsidian, and everything else looks like the inside of a volcano. However, you'd expect to feel the smell of sulfur, and find instead an arousing scent in the air, similar to some sort of aphrodisiac essence that leaves you lightheaded. Hell is where the unfortunate souls come to receive their eternal punishment... Is there a punishment involving sex? You guess there's no other option but to investigate this strange place.";
	say "     The first trial you find is some sort of labyrinth, with multiple paths and directions to follow. Here you hear loud screams and moans, but disturbingly so, they're not of pain or despair, but sound empty and devoid of anything resembling humanity. You haven't yet seen any of these prisoners, but there is a chance you could find the ritualist here. As you walk through the horrific corridor, you see the cells. Like any prison you laid your eyes on already, there are bars on each cell, and inside, you find all sorts of sexual punishments that go beyond your imagination. Some are humans, others were at some point, and the rest of the cells are empty, though you have a feeling they weren't too long ago. These perverted tortures are made with automatized contraptions, and their prisoners were altered to produce extra sexual juices. That's right, each one of these cells hold milking machines to optimize their hosts towards cum and milk production!";
	WaitLineBreak;
	say "     No matter if they were male, female or hermaphrodites, what interests the demons is how much they can milk out of a body. You see some prisoners with impossibly massive boobs hooked up into sucking tubes as all their holes are filled with monster dildos, while their balls, the biggest you've ever seen, and dicks of gigantic proportions are milked thorough by large penis pumping devices. There's a continuous stream of sexual fluids being pulled to be delivered somewhere else in this freak division, and you're sure these prisoners are being injected with something. Even if you were to free them, you doubt they'd be able to walk away from here, as their enormous disproportions would render any movement attempt useless, not to mention being stuck in there for so long certainly hasn't done any good to their muscles.";
	say "     [bold type]You could try to know more about this procedure, or just continue on your way to try to find the ritualist.[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Try to know more about this procedure.";
	say "     ([link]N[as]n[end link]) - This is dreadful, just finish your task as fast as possible.";
	if Player consents:
		LineBreak;
		say "     It is difficult to approach the cells without stumbling on wires and tubes on the outside, but a close analysis reveals that these are all connected to a bigger machine. Luckily, they form a trail along the corridors, so it's easy to follow. Without further ado, you step through and around the corners where the tubes lead, passing by several more cells occupied by these unfortunate souls. At the end of the final corridor, there is an half-open door where the tubes are passing through, into a room with some slightly flickering lights and mechanical noises. This is probably the main installment that allows these contraptions to run, and simultaneously, the source of energy! There doesn't seem to be anyone either around or behind you, but you don't know what you'll find on the other side of the door of steel. [bold type]Do you go in?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Push the door open and go inside.";
		say "     ([link]N[as]n[end link]) - This already went too far. Just return to your main quest.";
		if Player consents:
			LineBreak;
			say "     You can't shake the curiosity out of you, and having reached this far, you decide turning back right now would make all your efforts in vain. With this said, you carefully push the steel door open and pay attention to the tubes by your feet. Pushing it made it crank loudly, however, and whatever could be inside would probably have heard you. Still, you try to be as sneaky as possible. But a familiar voice strikes your ears with a screeching annoying tone. 'What?! You again?! What are you doing here?!' Looks like it's Krooklet, the imp you found before dumping trash in one of the alleys in the Warehouse District. You remember he's some sort of employee, or better said, slave to the demons, and he's probably in charge of doing the prisoner cells['] maintenance. It explains the type of junk he was throwing out before. 'How did you get here?! Answer me!' Looks like you really don't have much choice but to deal with him first. [bold type]You need to react quickly![roman type][line break]";
			LineBreak;
			say "     [link](1)[as]1[end link] - Charge at him!";
			say "     [link](2)[as]2[end link] - Attempt to run away.";
			say "     [link](3)[as]3[end link] - Evaluate other options.";
			now calcnumber is 0;
			while calcnumber < 1 or calcnumber > 3:
				say "Choice? (1-3)>[run paragraph on]";
				get a number;
				if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
					break;
				else:
					say "Invalid choice. Type [link]1[end link] to charge at the imp, [link]2[end link] to try to run away or [link]3[end link] to do something else.";
			if calcnumber is 1:
				LineBreak;
				say "     Let's say you don't really think too much about your next move, but something in your line of thinking made you assume it was a good idea to lunge yourself towards a flying foot-long demon, who is faster and smaller than you. Obviously, [bold type]you just hurt yourself, as the imp counterattacked with a fireball, leaving you slightly singed and collapsed on the floor.[roman type] 'Hah! Is that everything you've got?! Stupid mortals really don't know their places! I'm going to warn the masters, you're done!' With this said, the imp storms away through the door you just opened, his angry mumbling echoing across the corridors. This doesn't sound good, and [bold type]may actually complicate things.[roman type] Well, for now the imp is out of the way, so you're free to investigate this room.";
				if HP of Player > 10:
					decrease HP of Player by 10;
				Now Resolution of Hell Realm is 1; [Krooklet warned the Masters]
			else if calcnumber is 2:
				LineBreak;
				say "     Running away sounds about right. You excuse yourself and get ready to run, but as soon as you give a step towards the door, the imp yells and blasts a fireball in your direction, which passes by you and stalls you on spot. 'Not so fast! Who said you could leave?! Now you'll have to present yourself to the masters! That's right! They'll know what to do with you! Maybe hook you up on the machines! For eternity! HAH!' his screeching voice keeps making your ears want to cry, but as he talks, he gets closer to you... There's an opportunity, and you take it. You smash the imp's head with a closed fist using all your strength, and he collapses on the ground. That was surprisingly easy! Well, now with the imp out of the way, you're free to investigate the room.";
			else if calcnumber is 3:
				if demon brute is listed in companionList of Player and DemonBruteStatus is 0 and (DBCaptureQuestVar is 6 or DBCaptureQuestVar is 7):
					LineBreak;
					say "     You turn to your demon companion, and to the imp, the gesture itself being suggestive enough regarding what you're thinking. The brute nods with a grin as he looks at the little fiend, whose expression changes abruptly when he realizes the big brute is walking towards him. 'Wait, no! Not you! Not another! My quarrel is with that stupid mortal! Why are you even following a surfacer, either way?! WEAK!' yells the imp, but Brutus shows a deaf ear to whatever he says. The tiny demon tries to escape the large purple hand reaching over him, but no matter how hard he tries, your companion is large enough to reach him with little effort.";
					say "     'Gah! Put me down! Let me go! Don't-... mmph!' Despite the imp's pleads for mercy, Brutus grabs his head, engulfing it entirely with his palm, and everything else you hear is just a whimpering, muffled high pitched voice. As you watch, the demon brute turns to you with a hopeful glare, as if awaiting new instructions. [bold type]You suppose you could let your loyal follower have his way with the imp, or just have him find a way to silence the annoying fiend for the time being.[roman type][line break]";
					LineBreak;
					say "     ([link]Y[as]y[end link]) - Allow Brutus to have his way with the imp.";
					say "     ([link]N[as]n[end link]) - Order him to knock the imp out.";
					if Player consents:
						LineBreak;
						say "     Eager to get started, Brutus nods at you with a delighted grin on his face, as he turns to the imp once again. The size difference between one another is more than obvious, and what you see after that is actually what one would expect from such a couple. Seeing your demon friend's raging erection, it is clear on how he plans to use it. With his large hand still covering the little fiend's head, the demon brute slides his precum leaking cock across the little imp, keeping the poor creature trapped under that meaty log. Things get more interesting as Brutus wraps the minion's arms and legs around his thick shaft and begins thrusting, effectively rubbing his enormous length against the little red demon. Amidst his sexual grunts and the useless muffled whimpers released by the imp, the brute mercilessly uses the foot-long fiend for his pleasure in the only way he finds doable.";
						say "     Not shortly after, your demon companion is thrusting faster and in shorter motions, and you almost can't believe how horny he is! Within a matter of seconds, the brute releases the imp's head momentarily, but before the little fucker can say anything, a huge amount of thick demon cum is blasted on his face, all the whimpering ending up instead as gurgling sounds. It doesn't stop there, as Brutus keeps shooting it hard, giving the imp a literal cum bath. You can't even see the hellish minion anymore, only a large pool of jizz as your demon companion admires his deed. He pokes the imp one or two times, but he isn't moving. Maybe that was too intense for the poor thing.";
						WaitLineBreak;
						say "     Feeling satisfied with the outcome, Brutus stands up and walks over to you with his still half-hard member dandling between his muscle-bound legs, realizing you were watching the entire thing wide-eyed. 'Huh... That felt good. He was really tiny.' he says with a shameless smile, showing those sharp teeth of his clearly proud of himself. Well, you suppose now the imp is out of the way for a long time thanks to your demon friend, so you're free to proceed with your investigation.";
					else:
						LineBreak;
						say "     Shaking off your head, you tell him to simply knock him out and be done with it, with emphasis on the 'out' word. Disappointed, Brutus follows your order without questioning, smacking the imp unconscious. He then leaves the little demon lying down on a corner, completely blacked out, and returns to you as you direct your efforts into investigating this room.";
				else:
					LineBreak;
					say "     There's no time for that! With all the hesitation, the imp loses his patience and hits you with a fireball, [bold type]leaving you singed and in pain, despite your attempts at blocking it.[roman type] 'You don't want to answer me?! Fine! Whatever! The Masters will know what to do with you when I present you to them. That's right! Maybe hook you up on the machines! For eternity! HAH!' his screeching voice keeps making your ears want to cry, but as he talks, he gets closer to you... There's an opportunity, and you take it. You smash the imp's head with a closed fist using all your strength, and he collapses on the ground. That was surprisingly easy! Well, now with the imp out of the way, you're free to investigate the room.";
					if HP of Player > 10:
						decrease HP of Player by 10;
			WaitLineBreak;
			say "     As you rummage through every crevice of these devices, you come to an obvious conclusion. The whole thing is, indeed, powered right from here. This is the core room that you were searching for, and with a closer inspection, you find some more interesting facts. Further deep, there are some strange, thick tubes with see-through glass and a lock, with an odd liquid inside. Its color and texture reminds you of the solution you used to replicate the demonic ritual, but that's not all. There are a myriad of other stuff the demons use in these solutions, and judging by the plumbing, this is exactly what they inject in the prisoners. With a profound analysis, you manage to encounter all the necessary materials in a supply box nearby, and a recipe in poor handwriting, but understandable enough.";
			say "     Glancing around, you also notice an adjacent room with the door open. Cautiously, you walk inside and lay your eyes on an empty machine, like those in the cells, however, this one's different, probably a prototype, even. There's still the straps and the pumpers, but it's hard to ignore the several moving tendrils around them, somewhat thick and moist at their smooth tips, with a fairly phallic shape. They seem to have noticed your presence, whatever they are, but they're not hostile. Instead, they seem to be slowly waving around... As if inviting you to take a seat... to touch them, feel them embracing your body, caressing you in every possible way, as you gave in to an eternity of pleasurable sensations...";
			WaitLineBreak;
			say "     You get a grip of yourself moments before you realize you've gotten strangely aroused just from looking at the thing, but a perverted thought involuntarily makes its way into your mind. It wouldn't be so bad, would it? Just giving in to such an exotic contraption, to dive into a slumber of sex and pleasure provided by multiple tentacle-cocks invading all your body holes. You do have the means to hook yourself up, it would be very easy to replicate the solution and arm an injection mechanism with it. All the suffering and pain would end right here, replaced by only the feeling of orgasming over and over again...";
			say "     Or you could just drop that temptation, as oddly sweet as it sounds, and [bold type]mess with the mechanisms to ensure this little demonic scheme is ruined for good.[roman type][line break]";
			LineBreak;
			say "     [link](1)[as]1[end link] - Drop the liquids in the mechanical parts.";
			say "     [link](2)[as]2[end link] - Just leave them be. It's not your problem, anyway.";
			say "     [link](3)[as]3[end link] - Become a demon slave and hook yourself up in the machine. Forever.";
			now calcnumber is 0;
			while calcnumber < 1 or calcnumber > 3:
				say "Choice? (1-3)>[run paragraph on]";
				get a number;
				if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
					break;
				else:
					say "Invalid choice. Type [link]1[end link] to permanently damage the mechanisms, [link]2[end link] to just leave or [link]3[end link] to make the worst mistake of your life.";
			if calcnumber is 1:
				LineBreak;
				say "     This place is getting to your head, so you decide to give it a taste of its own medicine... more or less. Quickly stepping back towards the supply boxes, you grab anything that's liquid and put it in a big flask, unaware of what you're even mixing in there. Then, you walk over the power core, facing the electric system that keeps this mechanical ordeal chugging. Savoring the moment where you get to outsmart a demonic horde that was collecting mortals for this sick purpose, your blood pumps vigorously with adrenaline, as you think of how mad those fiends will be when they find out their precious little plan have been ruined by an ordinary person just like you! Smiling to yourself, you finally drop the strange mixture in there.";
				say "     The result is rather violent. Either you dropped it too fast or that was really effective, as it even shoots sparks in your direction! Fortunately, you backed away in time, but the lights are flickering like mad, and the machines are making the weirdest cranking noises, not to mention that you're actually feeling the ground shaking. You have a feeling you should probably leave this place as soon as possible. Following your intuition, you quickly run through the rooms and outside, closing the door behind you and sealing it shut. And what a good thing you did, as you hear a very loud bang coming from inside. A strange white fluid seems to be leaking out through the small opening underneath the steel door... Uh oh. Did you accidentally create an explosive of some sort? Either way, [bold type]the sound could probably have alerted someone, so you'll have to be on your guard.[roman type] But at the same time, you feel like you did the right thing.";
				WaitLineBreak;
				say "     Taking a deep breath, you focus on your main task and proceed to continue your search. The machines seem to have stopped, which proves that your actions had the intended results. With this in mind, you walk through the remaining corridors, looking for any signs of the robed man from the tape. You don't seem to be able to encounter anything resembling the figure you saw in the tape, and though that could be a very bad sign - that he got hooked up into one of those and was changed beyond recognition - it is still very early to give up. Accelerating your pace, you search for the next exit, which you find with relative ease. Leaving the image of the sex-inducing milking machines and their prisoners behind, you proceed into the next section of this hellish realm.";
				if Resolution of Hell Realm is 1:[Krooklet warned the masters]
					now Resolution of Hell Realm is 2;[Krooklet warned the masters and player destroyed the Grid]
				else:
					now Resolution of Hell Realm is 3;[Krooklet was left knocked out and player destroyed the Grid]
				HellRealmMasters;
			else if calcnumber is 2:
				LineBreak;
				say "     Messing with something you don't know can be dangerous, so you decide to simply step away from everything and return to your task at hand. [if resolution of Hell Realm < 1]Krooklet is still knocked out on the floor, but to ensure you don't find any other surprises, you close the door behind you and seal it shut.[else]You walk through the room and back outside, closing the door behind you and sealing it shut.[end if] Walking through the remaining corridors, you look for any sings of the robed man from the tape. However, you don't seem to be able to encounter anything resembling the figure you saw in the tape, and though that could be a very bad sign - that he got hooked up into one of those and was changed beyond recognition - it is still very early to give up. Accelerating your pace, you search for the next exit, which you find with relative ease. Leaving the image of the sex-inducing milking machines and their prisoners behind, you proceed into the next section of this hellish realm.";
				HellRealmMasters;
			else if calcnumber is 3:
				LineBreak;
				HellRealmBadEnd3;
		else:
			LineBreak;
			say "     You suppose there could be something interesting to be found, however, you already wasted enough time. There's a more pressing matter in hands, and time is precious. With this in mind, you walk through the remaining corridors, looking for any signs of the robed man from the tape. You don't seem to be able to encounter anything resembling the figure you saw in the tape, and though that could be a very bad sign - that he got hooked up into one of those and was changed beyond recognition - it is still very early to give up. Accelerating your pace, you search for the next exit, which you find with relative ease. Leaving the image of the sex-inducing milking machines and their prisoners behind, you proceed into the next section of this hellish realm.";
			HellRealmMasters;
	else:
		LineBreak;
		say "     You suppose there could be something interesting to be found, however, you're not here for that. There's a more pressing matter in hands, and time is precious. With this in mind, you walk through the remaining corridors, looking for any signs of the robed man from the tape. You don't seem to be able to encounter anything resembling the figure you saw in the tape, and though that could be a very bad sign - that he got hooked up into one of those and was changed beyond recognition - it is still very early to give up. Accelerating your pace, you search for the next exit, which you find with relative ease. Leaving the image of the sex-inducing milking machines and their prisoners behind, you proceed into the next section of this hellish realm.";
		HellRealmMasters;

to HellRealmMasters:
	say "     When you make it out of the prison grid, there's a portion of rocky terrain going lower, further ahead. The corridor is rather grand, only faintly illuminated by blue flame torches hanging on the walls along the way. Your steps echo through as you make your way down, and it turns out to be a very long one. Seems like you're descending further into Hell, and there's no way to predict what you'll find next. Perhaps the ritualist, or something else, like a dangerous threat who'll do anything to make you submit. But you don't let any fears stall you as you keep going, eventually finding an opening in front of you, evidenced by the barely increasing light touching the dark rocks.";
	say "     Making it out of the corridor, you find yourself in some sort of hall, intersecting the room you came from and the next. There are some sorts of dark red plantoid pods hanging all over the place, and these things look alive, as you can hear something like a heartbeat sound coming out of them, and their undulating stalks that seem to be transporting something over to them. Perhaps it's how they're fed, but what's inside remains a mystery. There's no way of knowing, as the pods are completely opaque, protected by what looks like chitin plates. It's somewhat disturbing to think that maybe there's a person in there, provided the sort of spectacles you found before, but it could very well be a fact. These demons' minds are more perverted than anything, after all.";
	WaitLineBreak;
	if Resolution of Hell Realm > 0 and Resolution of Hell Realm < 4:
		say "     However, your peaceful observation ends here, as you're caught by surprise when you feel a strange presence. [if Resolution of Hell Realm is 1]You start hearing that annoying screeching tone again mumbling in the distance, but you also hear steps. That can't be the imp Krooklet alone. 'There! The intruder! As I said!' yells the foot-long minion.[else if Resolution of Hell Realm is 2]You start hearing that annoying screeching tone again mumbling in the distance, but you also hear steps. That can't be the imp Krooklet alone. 'There! The intruder! As I said! And he must be the one who destroyed the Grid, as well!' yells the foot-long minion.[else if Resolution of Hell Realm is 3]You start hearing steps coming from up ahead, and stand ready to face what's about to come.[end if] Two tall and slender figures, of opposite genders, glare at you with a sultry and provocative look. 'Oh my! A fully fleshed mortal! It's the second to have come here voluntarily! Well, the first was half-mortal, but still, quite the luck!' speaks the attractive woman, with a voice as sensual as her slim and sexy body, her demon tail wiggling behind her feminine legs. 'We thank you for saving us the trouble to hunt you down but, you see, you can't just freely roam around as if this was your home.' says her male counterpart, lean and fit with an equally handsome face, his wings moving a bit restlessly. 'Come, let us find you an appropriate place for your delicious body to lay down and rest...'";
		say "     It looks clear that you're facing the masters of this place, a succubus and an incubus. They look awfully like the common demons of lust you can find outside, which is odd, but you don't give it much thought. They are demanding you to submit. Looks like you have no choice but to comply or to defeat them in combat. [if Resolution of Hell realm > 0 and Resolution of Hell Realm < 3]Luckily you won't have to deal with Krooklet, as he cowardly flew past you in a rush.[end if]";
		HellRealmSuccubusMaster;
	else:
		say "     Without further ado, you continue walking through the strange hall, hoping to find another batch of prisoners, or signs of your target. You head deeper into the dungeons, leaving the hellish plantoid pods behind.";
		HellRealmCells;

to HellRealmSuccubusMaster:
	now inasituation is true;
	Challenge "Succubus";
	now inasituation is false;
	if fightoutcome < 20: [won]
		say "     After dealing some severe blows, the succubus falls back, wounded physically as much as her pride. 'Fool! You dare to refuse our gift?! You mortals think your petty life is so valuable... You'll submit, want it or not.' shouts the incubus as he charges at you.";
		HellRealmIncubusMaster;
	else if fightoutcome > 19 and fightoutcome < 30: [lost]
		HellRealmBadEnd4;
	else if fightoutcome is 30: [fled]
		say "     For a second, you think you escaped, until you suddenly hear a shout of, 'You won't get away that easily!' and your enemy jumps out of the shadows to the side and kicks your legs out from under you.";
		HellRealmSuccubusMaster;

to HellRealmIncubusMaster:
	now inasituation is true;
	Challenge "Incubus";
	now inasituation is false;
	if fightoutcome < 20: [won]
		say "     Utterly defeated, the incubus too falls back, looking at you infuriated. 'N-no... This can't be...! I cannot be defeated by a mere mortal! Unacceptable!' While he acts all high and mighty, both him and the succubus can't even move to pose any resistance to you. This is your chance to make a run for it, deeper into the dungeons! With this in mind, you dash past the hellish plantoid pods, entering the next section.";
		WaitLineBreak;
		HellRealmCells;
	else if fightoutcome > 19 and fightoutcome < 30: [lost]
		HellRealmBadEnd4;
	else if fightoutcome is 30: [fled]
		say "     For a second, you think you escaped, until you suddenly hear a shout of, 'You won't get away that easily!' and your enemy jumps out of the shadows to the side and kicks your legs out from under you.";
		HellRealmIncubusMaster;

to HellRealmCells:
	say "     Fatigue begins hitting you, as you've been in this place for a while now. You have already went so deep and there isn't anything hinting at how you'll leave this place unless you backtrack the entire way. Focusing on your problems surely isn't the solution to them, however, so you instead decide to keep pushing further. Here, you find another tunnel similar to those of before, with the same gloomy atmosphere that will certainly haunt you for days to come. As you make it across, you find your way into another prison. Unlike the previous, however, these are strangely normal cells, with people behind the bars. Some are cowering, others seem mentally damaged, you don't actually find anyone you can talk to, or is even able to do so.";
	say "     You investigate each one of the cells to the last, at the end of the corridor, and find one strange red haired man who looks a little different than the others. He's currently naked, with only a collar on his neck, sitting on the ground with his head turned down, supported above his knees. Looking fairly human in appearance, the man actually has toned muscles adorning his pale body, and some odd tattoos of a darkish tint on his shoulder and left arm. In an attempt to call for his attention, you hit the prison bars and make your presence obvious, but he remains in the same position, ignoring you. Even so, you insist, asking him if they've heard of a human who voluntarily came here and ended up captured, though unsure of how exactly he looked like.";
	WaitLineBreak;
	say "     Your words made the man lift his head to face you, giving you a good sight at his face. It was strangely flawless, a perfect symmetry only achieved in fantasy depictions of beautiful men, except this one was right in front of you. His eyes were lime green, so bright that they make you feel uneasy. To your surprise, the man raises an eyebrow at you, the expression people make when they're finding something you said very strange. But as you have a good look at him, a familiarity feeling strikes the back of your mind. A clear, masculine but velvety voice reaches your ears as the man ask you a question. 'Who are you?'";
	say "     But before you have the chance to answer, you hear some angry steps coming from the distance, as a distinctive woman shouts from afar. 'You can't run far, mortal! You're ours, now!' [if Resolution of Hell Realm > 0 and Resolution of Hell Realm < 4]You have just barely dealt with them a while ago...[else]It's a couple, an incubus and a succubus, who are probably the masters of this place.[end if] But they're not alone, something you conclude by looking past them, laying your eyes on a massive group of demon brutes following them. And all of them look equally mad. 'It's time for you to give up. You've already caused enough trouble by stepping in here.' says the incubus as they being marching towards you. They outnumber you by a lot, and even though you had the stamina left, you very much doubt you could take all of them at once... Looks like you'll have to submit, after all.";
	WaitLineBreak;
	project Figure of Xaedihr_FullNoRuby_icon;
	say "     'Not so fast, 'masters'. I believe you still have something I want.' The strange man suddenly speaks with an eloquence you never thought he had, standing up behind the prison bars. You peripheral vision barely catches a glimpse at something unusually big dandling between his legs, but you have no way to confirm that as a crimson light envelops him. Suddenly, he's just besides you, fully dressed in some dark robes, pants and boots. Well, looks like you found the ritualist, but you certainly weren't expecting him to look so human, after all this time. You do doubt calling him human is right, judging by what he just did. With an angry snarl, the once beautiful and flirty succubus now looks like an evil madwoman, stopping the march as she yells at him. 'I always knew you weren't for real! I can't believe I let you deceive us!";
	say "     Though the mage gives only one rather long response. 'What, you think I'd willingly consent - excuse me the redundancy - to a fucking messy gangbang provided by four extremely sloppy brutes who don't even know how to tell apart the holes they are so apparently acquainted with, if I didn't have a strong reason for that?! Oh my, your intelligence surely is lacking. All mortals are sluts, is that what you think?! Review your theories, you're clearly in need to reminisce about basic human behavior. That is, if your little brains can achieve that much.' He's mad, that's for sure, but the show isn't over. The ritualist lifts his hand with a peculiar gesture, and you can even feel his focus amidst a moment of intense silence.";
	WaitLineBreak;
	say "     Before any of the demons can react, the mage snaps his fingers, and as he does so, something really off this world happens right in front of your eyes. Some strange, purple tendrils wiggle from the ground right around the demons' feet, and suddenly, more of them begin appearing from the same spots. Within seconds, they're all over the demons, through their legs, arms and necks, even lifting them off the ground. And that's not over! Amidst grunts and cries of rage, the tendrils slip into their sensitive bits, namely their chests, genitals and even their mouths, turning any attempt at shouting into gagging and moaning. When you look at the sorcerer's face, you see a nearly sadistic grin...";
	say "     'That should be enough to keep them busy.' - he declares as he turns to you, grabbing your wrist and shooting a dark red energy ball towards the opposite wall with his free hand - 'Come, we don't have much longer.' The mage pulls you with him towards what seems to be another portal, very similar to the one you created with the tome to reach this place. Is he taking you home? You're not even sure of what's happening anymore...";
	WaitLineBreak;
	HellRealmRubyChamber;

to HellRealmRubyChamber:
	say "     With another dimensional voyage, you disappointingly land on another section of this Hell realm. He did save your life, however, so it isn't all that bad. The place you end up in is a very odd one, a large rocky corridor where you can see some sort of gem at the end, gleaming with an intense red light, connected to several fleshy stalks resembling neurons that pulse in the rhythm of a heartbeat. Hugging the walls, there are some nasty looking phallic tentacles coming from holes as big as someone of your size. 'I don't know what you did, but you managed to wash out all the security those bastards had put in this chamber, giving me the chance to steal what I came for. We have to be quick about this. With your help, we might be successful.' It doesn't look like he's asking for your assistance. Sounds more like he's demanding it.";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Tell him you'll help, thanking him for saving your life.";
	say "     ([link]N[as]n[end link]) - You come here to rescue him and he demands your help? Tell him to fuck off.";
	if Player consents:
		LineBreak;
		say "     You reply thanking him for saving you, and that you'll gladly help him achieve his objective. 'What else could I do, leave you there? Although I do appreciate your words. I really need your help, however.'";
		say "     [bold type]This caused a great first impression on Xaedihr.[roman type][line break]";
		now loyalty of Xaedihr is 10;
	else:
		LineBreak;
		say "     You tell him off, stating that you came here to rescue him and that he doesn't seem a bit thankful for that, instead demanding your help as if you were someone's bitch. 'You don't really have a choice. Either that or I leave you here. Choose wisely.' There goes the niceties. You're forced to bow your head and consent.";
		say "     [bold type]This caused a terrible first impression on Xaedihr.[roman type][line break]";
		now loyalty of Xaedihr is -10;
	say "     'My name is Xaedihr, by the way, in case you need to call out for me. Let's hope you won't.' he says in a rather concerned tone. 'These demons use tentacle traps as natural defense to protect something of value. In this case, it's a ruby that allows one to tamper with dimensional rifts. Removing that artifact over there will severely decrease their mobility in the surface, as well as provide us with a significant power of their own.' - he makes a pause before starting to explain the plan - 'These beasts are sensitive to movement. Once they sense you, they'll begin to wave around, and a wrong step would make them come for you. That is a bad thing.' You notice his serious expression as he puts emphasis on the [']bad['] word.";
	say "     'Obviously the vile demons throw any intruders they can't milk to these beasts. If you think you'd have an eternally pleasant time being continuously molested by them, you're wrong. They eat you together with your soul.' Xaedihr surely makes it look gloomy, but what can be so bad about having those slick, warm and nimble tentacles all over you? (Wait, did you really just think that?) 'So, the plan. I know a spell that pacifies these creatures, allowing you to pass by unharmed, but you cannot, in any circumstance, touch them, as tempting as it may sound. That will trigger their aggressive behavior, and I cannot save you if that happens.' So, he's putting you through the danger while he sits and watches. Well, you guess he'll be busy casting a spell, so it'd be easy for him to get caught up in a moment of distraction.";
	WaitLineBreak;
	say "     'Are you ready?' he asks, though you don't really have a choice. 'Just walk in slowly, stop if they wave around too wildly, and once you get there, just rip the ruby out of the network and walk back to me. Should be very easy if you heard my instructions well.' The mage was definitely clear, there is no doubt, although it still seems like he's taking advantage of you. But as he said, if you follow his recommendations, you should be fine. Holding to those thoughts, you nod at him and get ready to walk through the corridor. With careful steps, you put a foot forward, and that's already enough to cause some tentacles to move. 'Don't worry, I've got the spell.' When you look at him, he's making some arcane gestures, and a looming light forms all across the corridor with a static low frequency sound. Even to you, that feels calming.";
	say "     You resume your journey through the chamber, carefully walking by all the tentacles that seem calm and still for the time being. There's the occasional one flickering by your feet, so you stop for a moment before they retract. They sometimes leave a trail of a sticky fluid behind, which seems to ooze from the tip. You wonder how much of the stuff they're carrying inside, and how it tastes and feels in your mouth (you're having these thoughts again...!) Shaking your head, you look away and focus on the assignment. Finding yourself halfway, you're starting to feel more confident that you'll reach the ruby without a problem. All you need is a few more gentle steps towards it and... it's finally within your reach! Xaedihr keeps channeling the spell to make sure you catch no surprises.";
	WaitLineBreak;
	say "     Glancing around, you then extend your arm and grab the crimson gem, which feels oddly warm to the touch. You can feel the power within it, unlike anything you ever saw. After getting a good grip of it, you pull it out of the wiring network, watching them all being ripped out of the gem with a loud snap, like stretched rubber bands that were abruptly set loose. However, as you do this, you seem to have triggered a nasty reaction from the tentacles on the walls, as they immediately sense your presence. Xaedihr's spell doesn't seem to be having any effect as of now, and you're left at the end of the corridor without a way to go back.";
	say "     [bold type]'Don't move an inch![roman type] I'll come to you!' he shouted from the other side, but to your horror, the tentacles are waving around restlessly, slowly approaching you. They're oozing that liquid again, reminding you of plenty of horny precum leaking cocks reaching for you... and [bold type]they're not stopping![roman type] What should you do?";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Don't move, don't breathe and don't blink.";
	say "     ([link]N[as]n[end link]) - To 'Hell' with it! Get out of there!";
	if Player consents:
		LineBreak;
		say "     You calm yourself down, take a deep breath and don't move, just like Xaedihr said. You also hold your breath and close your eyes, just in case, standing completely still like a lifeless statue. You can, however, hear something curious from ahead of you. Sounds like he's blasting those creatures with some rather explosive spells, and you can sense him closing in to you at a fast pace. Suddenly, you feel a tight warm embrace, fortunately not slickery, but firm, like a person's arms around you, as his hand reaches over the gem in your grasp. You open your eyes, only to see a bright crimson light take you over into a slumber.";
		WaitLineBreak;
		HellRealmEnd;
	else:
		LineBreak;
		HellRealmBadEnd5;

to HellRealmEnd:
	say "     Your head feels heavy and torn apart, as your body refuses to respond to your commands. However, what seems to be a brief paralysis is soon interrupted as you recollect your senses. You're back at the library, safe and sound! The tome is lying next to you, as well as the candles and the pentagram. However, there's no sign of Xaedihr. In fact, it really looks like something hit your head and you had a very bad dream after attempting to replicate the ritual. Was that what happened? You check your inventory, and find that the ritual items are gone. Well, the pain in your head surely is real, and you're also a little bruised. You take some time to be able to stand on your feet, but you eventually manage, grabbing yourself onto the nearby bookshelves. Clean up time awaits you before you can return to your business, so once you're feeling better, you get started.";
	say "     [bold type]You have a nagging feeling in the back of your head that this isn't over yet[roman type], however... The air inside the Library dims a strange energy. You may want to continue exploring outside, something is certainly ought to happen when you return.";
	if Resolution of Hell Realm is 2 or Resolution of Hell Realm is 3:
		now resolution of Hell Realm is 4; [player destroyed the Grid]
	else:
		now resolution of Hell Realm is 5. [player did not destroy the Grid]

to HellRealmBadEnd1: [player is fucked by a single demon and wakes up later hooked up in a milking machine for eternity as a demon slave]
	say "     As you drop your guard looking up at the brute, towering over you with his snarky smirk, you know you're going to have a rough time when a powerful hand reaches over the back of your head and pushes you, forcing your lips to meet the already throbbing demonic dong eager to fuck you into submission. You have no choice but to open your mouth as much as you can, nearly dislocating your jaw as the demon's length is shoved past your tongue and straight deep into your throat. The demon says nothing, only grunting confidently as he facefucks you hard, his sizable balls bouncing back and forth, hitting your chin with every thrust.";
	say "     Deciding that he's well lubricated for now, the demon brute violently pushes you back and turns you around, grabbing you by the hips as he prepares you to be used by him. Unable to struggle, as the brute keeps you pinned down on the floor with his massive muscular body, you feel [if Player is female]your pussy[else]your ass[end if] being painfully stretched around his dick. He doesn't intend to take long, as he's already pounding you with no care for your pleasure, forcing as much of his throbbing erection as he can inside you. Within just a few minutes of non-stop fucking, the demon releases a roar as you begin to feel his cum invading your insides, filling you up with the seed of Hell which bulges out of your stomach. He repeats the process, over and over, as if his stamina had no end, until you black out in his grasp.";
	WaitLineBreak;
	say "     There's no way for you to calculate how much time has passed since you were taken by the demon brute, but you don't really care anymore. When you wake up, you barely have any will to open your eyes given the pleasure you're receiving. You're stuck on some kind of machine that's milking your oversized parts ceaselessly, and there's tubes injecting a strange white liquid inside you that makes you feel completely mindless. There's no way out of this, you're condemned to be forever milked in Hell for the pleasure of the demons... But at least, they make you enjoy it.";
	now battleground is "Void";
	trigger ending "Hell Prisoner";
	end the story saying "You're stuck in Hell - there's no coming back from that!";

to HellRealmBadEnd2: [player is gangbanged by the remaining 3 demons and wakes up later hooked up in a milking machine for eternity as a demon slave]
	say "     The brutes you failed to fight off give you absolutely no time to breathe. As soon as you fall defeated in front of them, they rush to pin you down aggressively[if Player is not naked], tearing your clothes and gear off with their sharp claws[end if] and molest your naked bruised body. Struggling is futile, as they have you tight on their grasps, making any attempt at escaping or retaliating impossible to perform. The only thing you see is the three brutes with their massive erections grinning at you, positioning themselves around you. 'You'll be taught a lesson you'll never forget, mortal. You're our property, now.' said one of them as he spreads your legs open, rubbing the pre-soaked tip of his thick length across your [if Player is female]pussy[else]asshole[end if], intending to skip any kind of foreplay.";
	say "     Another brute places himself underneath you, reaching your chest with his meaty hand and forearm while the other grabs the back of your head, as the other demon stands in front of you, playing with his equally sizable erection bouncing around at just a few centimeters away from your mouth. They plan to take all your holes at once, and that becomes evident as soon as their dicks invade your body in all the ways possible, painfully stretching your insides as they fuck you with no care for your own pleasure. Between hard pounds, grunts and roars, you're mercilessly taken by the group of demon brutes as they fill you up with the seed of Hell over and over again, until your senses go numb and you black out in their grasp.";
	WaitLineBreak;
	say "     There's no way for you to calculate how much time has passed since you were taken by the demon brutes, but you don't really care anymore. When you wake up, you barely have any will to open your eyes given the pleasure you're receiving. You're stuck on some kind of machine that's milking your oversized parts ceaselessly, and there's tubes injecting a strange white liquid inside you that makes you feel completely mindless. There's no way out of this, you're condemned to be forever milked in Hell for the pleasure of the demons... But at least, they make you enjoy it.";
	now battleground is "Void";
	trigger ending "Hell Prisoner";
	end the story saying "You're stuck in Hell - there's no coming back from that!";

to HellRealmBadEnd3: [player hooks themselves up on the tentacle machine, losing themselves forever to the sinful pleasures of being milked for eternity as a demon slave]
	say "     You can't resist the calling in your mind. It's not your own thoughts anymore, there's something in your brain telling you to do this, to embrace the touch of darkness as it fills your heart and soul for the pleasure of these mysterious creatures. With your recently acquired knowledge, you set up the machine with the addicting mixture and prepare the easy, constant injections that will make you feel wonderfully. Thinking about it makes your blood rush, and preparing the whole thing feels like an eternity of time, but it'll all be worth it.";
	say "     When everything is done, [if Player is not naked]you remove your gear, standing completely naked,[end if] and walk over to your new eternal seat, finally giving yourself in to the embrace of the strange purple tendrils as they gladly take you, enveloping your body and caressing you in every sensitive corner of your body, a pleasure completely out of this world. Everything they do is careful and gentle, circling around your chest and claiming your genital area to perpetually stimulate you, and it feels incredible. Eventually, you close your eyes and relax, letting them take control of your mind and body, forever...";
	WaitLineBreak;
	say "     Time becomes irrelevant, and you're changed beyond recognition. Your body adapted to the constant milking made by the tentacles, with oversized tits, balls and cock constantly guzzling as much milk and cum as possible. You're not even stationed in the same place as before, though you could barely notice given your current state. Nothing else matters but how good it feels to keep orgasming endlessly, without any care for the world outside, and the white mixture keeps you well drugged and addicted to it. There's no way out of this, you're condemned to be forever milked in Hell for the pleasure of the demons... But at least, you found a way to enjoy it.";
	now battleground is "Void";
	trigger ending "Hell Prisoner";
	end the story saying "You're stuck in Hell - and you deserved it.";

to HellRealmBadEnd4: [player is fucked by the incubus and the succubus, then turned into their personal pet slave]
	say "     Your energy fails as the demons of lust gain the upper hand and bring you down on the floor, proving to be too much for you. 'I am seriously questioning how you've got this far! As weak as you are, you shouldn't be able to pass through our demon brutes... What a resourceful little mortal you must be! Still, you're done for good.' says the succubus as she walks towards you, followed by the incubus as he taunts you once more 'How pathetic! Clearly you shouldn't have come here. But since you are, how about you compensate us for the hassle you've caused?' When you realize, both the demons are next to you, the male stroking his hardening nine-inch cock as the succubus caresses her sizable, perfect breasts. 'I know a few ways [SubjectPro] could do that...' she adds before crouching down next to you, stroking your face with the back of her hand.";
	say "     Though her gentle manners suddenly shift into a rough grabbing of your head, pulling it to face the incubus eager erection pointing at you. 'I'm sure you'll enjoy this as much as I will.' he says as he takes hold of your chin, gently but forcibly pulling you to kiss the tip, to which you involuntarily open your mouth and rub it around with your tongue. A sudden burst of desire hits you, and before you realize, you're nearly deepthroating the demon while you fondle his balls, causing him to moan at your caressing. 'Now that's working like a charm, isn't it? We'll be able to enslave all of them with this new enchantment...' adds the succubus, though you have no idea what she's talking about. The taste of the incubus['] precum is just too good to care about anything else, and you find in yourself an urge to please him...";
	WaitLineBreak;
	say "     As you're blowing him, his female counterpart is constantly caressing your whole body from behind, and she eventually [if Player is male]takes hold of your already throbbing and leaking member, stroking it with as much vigor as you're sucking the one in your mouth[else] slips a finger inside your already moist and leaking womanhood, rubbing your clit and feeling you up with as much vigor as you're sucking the dick in your mouth.[end if] '[SubjectProCap] is such a good [boygirl], isn't [SubjectPro]? Maybe we could keep [ObjectPro] as your personal slave, hm?' suggests the incubus, amidst lustful moaning, as his partner responds 'I'm not opposed to that idea! We already have plenty of them in the Grid. A little toy for us to play with more... permanently, would be great.' Even as they freely discuss your fate, you can't help but to eagerly continue the given task. Stroking, sucking and licking the incubus['] meat log with utmost dedication, you soon bring him to orgasm.";
	say "     It is when the thick, virile and sweet cum bursts down your throat, forcing you to gulp down every single drop, that you feel properly owned by the demons. Spurt after spurt, you do your best to slurp his entire load right into your stomach, as the incubus thrusts into your mouth in response to your eagerness to swallow his seed. 'Ahh! Yes!! We're definitely keeping [ObjectPro]! It's been so long since I had a release like this, for Asmodeus['] sake!' he moans, as he squeezes the still aplenty leaking jizz out of his cock, shaking it off right into your lips, which you eagerly lick. 'All [SubjectPro] needs now is a collar. Let's bring [ObjectPro] to our chambers and complete [PosAdj] transformation, I can't wait to use [ObjectPro] for the next hours!' adds the succubus as both grab you and take you to somewhere else...";
	WaitLineBreak;
	say "     You don't even notice time passing by you with your new days serving the Masters. As their lair prospers, you spend your feeble existence pleasing your almighty Lord and Mistress, doing everything they say, making sure they praise you in the end with a little sexual relief. You get plenty of use when they're especially happy with your efforts, and eventually, they even let you roam freely knowing you'll always be back for your duties! The problems of the past are long gone, and at each day, the demons get closer to world domination... Soon, everyone will have the pleasure to serve them as you do, knowing they'll be working for someone greater than themselves...";
	now battleground is "Void";
	trigger ending "Hell Prisoner";
	end the story saying "You're stuck in Hell - there's no coming back from that!";

to HellRealmBadEnd5: [player is dragged by the tentacle traps and eaten alive]
	say "     Panic takes over your mind as you start running towards Xaedihr with the gem in your hand. However, things don't go as you had hoped. The tentacles make a quick reach for your body, and some of them manage to get between your feet and legs, making you lose your balance and fall flat on the floor. The impact makes you let the gem go of your hands, rolling forward and far from your reach. There's only the shouts of the enraged sorcerer ringing in your ears as the demonic creatures envelop you in their grasp. Their touch is surprisingly warm and pleasant, as you'd have imagined when you saw them hypnotically wave at you. Soon, your mind is only filled with the lust and desire to feel them all over you as you're pulled from the ground and quickly brought out of the tunnel through one of the holes in the walls.";
	say "     You feel the arousal striking you immediately as a strong scent of addictive pheromones assaults your nostrils, ripping your mind of any sane thoughts. The tentacles surround you almost completely, covering your legs, arms, chest and circling around your neck and torso, rubbing your nipples and genitals ceaselessly while you wiggle and moan, which seems to excite them even further. Eventually, you feel your holes and mouth being invaded by thick cylindrical tendrils, and there's that hot liquid oozing from the tip of each tentacle drenching your body, sending intense waves of increasing pleasurable sensations. There's no way to describe what you're feeling right now, but you've lost all the will to fight. You just want to let everything go and be here forever, continuously drilled and drugged by whatever this beast is, having your holes stretched to insane dimensions while chugging down the sweet stuff it keeps feeding and breeding you with.";
	WaitLineBreak;
	say "     Though this luxurious treatment doesn't come without a consequence. As you're stripped off your freedom of action and thoughts, reduced to a plaything for a demonic tentacle beast, there's no way to escape your inevitable fate. While you're being pulled deeper into the darkness of Hell, your begin losing your senses. Its members are much wider here, enough for you to fit in. It doesn't take too long as you feel something viscous and slimy sliding by your head over to your neck, as you're feeling yourself being pulled deeper into one enormous pulsing fleshy tunnel. You struggle to realize what's happening to you as your entire body is taken by the beast, having slurped you down to your torso, then to your legs, until only your feet remained outside.";
	say "     Making one hungry last throb, the giant tentacle sucks you in to the last inch, sending you into its bowels, where you're left sinking in the inner juices of the demonic creature. You fall into an eternal slumber as you feel yourself melting away, and the most disturbing part is that it's the best thing you ever felt in your now ending life.";
	now battleground is "Void";
	the Player was ended by "Hell's meal";
	trigger ending "Player has died";
	end the story saying "Your body and soul have been devoured by an hellish beast.";

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 4 - Strange Sorcerer
[***********************************************************]
[***********************************************************]
[***********************************************************]

Table of GameEventIDs (continued)
Object	Name
Strange Sorcerer	"Strange Sorcerer"

Strange Sorcerer is a situation.
ResolveFunction of Strange Sorcerer is "".
Sarea of Strange Sorcerer is "Nowhere".

instead of navigating Grey Abbey Library while (Strange Sorcerer is active and Strange Sorcerer is not resolved and Resolution of Hell Realm > 3):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action; [can't nav from the player's location, or already there - so we stop this cold]
	move player to Grey Abbey Library;
	project Figure of Xaedihr_FullNoRuby_icon;
	say "     Back from another day in the wasteland, you arrive at the Grey Abbey Library. You're walking up the stairs at the entrance when you see an intense crimson light bursting out of the cracked windows. To make sure something strange inside didn't blow up the entire place while you were gone, you quickly push the doors open and run inside, but the light is so powerful that you're forced to shelter your eyes. When the energy subsides, you're able to look around and spot a dark-robed figure kneeling on the ground, said light merely gleaming from a gem in its possession. Could it be...?";
	say "     You approach the mysterious shape carefully, to make sure it's not another foe ready to jump on you. 'Are you okay? Hopefully the... Huh? Wait, how did you end up there? How the... How long has it been?!' Turns out you know this voice. It's the man you found in Hell! So he's real after all, as well as what you've been through while in there. You rush to help him up and explain what happened, from when you woke up to this moment. 'It has been that long? That's a considerable delay... Must have been a temporal-spatial distortion, something ended up separating us during the dimensional travel. This only confirms that this world is growing highly unstable, just like how mine started to degenerate...";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Ask him about what he means by 'degenerate'?";
	say "     ([link]N[as]n[end link]) - Just offer him to stay at the Bunker while he recovers.";
	if Player consents:
		LineBreak;
		say "     You question him about this degeneration he's talking about, to which he urges you to pay attention. 'It's no child's play. Your world is getting more vulnerable to demonic presence, and that's just how everything began on mine. This ruby we recovered could be the key to stop the demons, either by stalling them or by allowing us to balance things. Having a gem this powerful in our possession may scare some of them. In fact, I'd go as far as to say that having taken the Crimson Ruby from Hell might have been your world's temporary salvation.' he replies with some concern visible in his expressions.";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Inquire him on what this 'Crimson Ruby' does, exactly?";
		say "     ([link]N[as]n[end link]) - You're all out of questions. Invite him to stay at the Bunker while he recovers.";
		if Player consents:
			LineBreak;
			say "     After he mentioned this gem you recovered, you further question him about it. 'Well, you saw it yourself. It allows its owner to cross dimensions and teleport around, so it's a very powerful gem. Although overusing it has great costs, and you do need to understand magic and wield an extraordinary amount of energy within yourself, like most sorcerers do. Fortunately magic is a talent I always have possessed, and have always been great at it. However even I have to be careful handling such a thing. Each usage tires me more than I'd like to admit.' he answers as he shows off the gleaming red ruby in his hands, spinning it around with his fingers.";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Ask about the contraptions they used in the prison.";
			say "     ([link]N[as]n[end link]) - You're all out of questions. Invite him to stay at the Bunker while he recovers.";
			if Player consents:
				LineBreak;
				say "     You decide to mention those contraptions you found when passing by that sort of prison. 'Ah, the Grid. That's where they keep the mortals they capture. There are numerous realms like this one. Think of it like private companies within the group of megacorporations that Hell is. The demons['] society isn't that different from ours. Anyway, the Grid's purpose is to literally milk the bodies of the captured mortals for their sex and life juices. Why, you ask? Because those liquids carry faint levels of vital energy and is the only thing that can be reproduced. So they effectively turn the mortals into [']gold mines[']. Blood also carries said vital energy, although that'd kill the body, so it's undesirable. Of course, since the quantities are minimal, they must be enhanced and harvested daily.' he says, with an almost disturbing analytical tone.";
				if Resolution of Hell Realm is 4:
					say "     Adding to this, you explain the question by telling him you destroyed that area by permanently damaging the machines. Xaedihr throws a laughter. 'Oh! You did? That's amazing! The demons are going to be set back for a very long time thanks to that! Nothing they didn't deserve, anyway.'";
					say "     [bold type]Xaedihr greatly approved of your actions.[roman type][line break]";
					increase Loyalty of Xaedihr by 5;
				LineBreak;
				say "     ([link]Y[as]y[end link]) - What about the pods you saw in that strange hall? Ask about them.";
				say "     ([link]N[as]n[end link]) - You're all out of questions. Invite him to stay at the Bunker while he recovers.";
				if Player consents:
					LineBreak;
					say "     Besides everything you've seen, you tell Xaedihr that before you found him in those cells, you encountered a few strange pods with plant-like features, except they were all red and pulsing. 'Ugh, those. The demons were trying to breed new kinds of demons. Their research is focused on species['] improvement, anything that can make them more powerful, basically. If they succeed, they might be able to evolve... so it's in our best interest that they fail no matter what. Demons can be fascinating in their beauty, I'll give them that, but the beasts they breed? Horrendous.' he says in reply to your report, clearly worried about whatever the demons are planning. You suppose those pods can only mean bad news.";
					say "     'Anyway... This dimensional voyage made me a little dizzy... I'll have to take some time to recover. It's nice seeing that you're doing okay, at least.' he says as he starts walking towards the library's exit. He's kind of limping, however, moving very slowly with his head low. [bold type]Are you going to let him leave like that?[roman type][line break]" ;
					LineBreak;
					say "     ([link]Y[as]y[end link]) - Invite him to stay at the Bunker while he recovers.";
					say "     ([link]N[as]n[end link]) - Say your goodbyes. Xaedihr will continue on his quest and never return.";
					if Player consents:
						LineBreak;
						say "     Given his dizzy state, which you clearly observe in his lack of balance, you decide to offer him a free stay in the bunker for as long as he needs. 'Thank you. I might have to accept that, I don't know enough about this world to walk around freely, and the library was always a good base.' Carefully, you help Xaedihr walk through and introduce him to his new bed. He gladly takes the time to rest for a while. 'Hey, I know you had no obligation in letting me stay, but I should thank you again for everything. Here, have this, in case we get separated again.' He hands you some sort of trinket, a small pin with a tiny red gem in the middle. He tells you a couple of strange words which make it glow. 'Works like a summon call. When I get better, I'll be able to aid you outside. Just let me know.'";
						say "     The sorcerer needs some rest, so you leave him be for the moment. Eventually, he'll able to get up and occupy himself with some books in the library.";
						LineBreak;
						say "     (Xaedihr the demonologist is now a possible ally! You can make him your active ally by typing [bold type][link]ally Xaedihr[end link][roman type] or [bold type][link]ally demonologist[end link][roman type] and initiate sex with him while active by typing [bold type][link]fuck Xaedihr[end link][roman type]. You can see all the allies you have with the [bold type][link]allies[end link][roman type] command. Allies will lower the XP you gain from battle, but can gain levels themselves to be more useful in a scrap. Want to get rid of an ally? Use [bold type][link]ally dismiss[end link][roman type], or just [bold type][link]dismiss[end link][roman type])[line break]";
						Move Xaedihr to Grey Abbey Library;
						add "Tamed" to Traits of demonologist;
						Now demonologist is tamed;
					else:
						LineBreak;
						say "     Slightly concerned with his physical state, you decide to at least approach him and accompany him outside. 'Thank you for everything you've done. Thanks you to, there might still be hope... I'll do my best to save your world and mine from this plague.' he says with a determined look in his eyes before he continues on his path, eventually disappearing in the horizon. However, something in your gut tells you that you'll never see him again, and you're not sure if that's a good or a bad thing...";
				else:
					LineBreak;
					SSOutOfQuestions;
			else:
				LineBreak;
				SSOutOfQuestions;
		else:
			LineBreak;
			SSOutOfQuestions;
	else:
		LineBreak;
		say "     Given his dizzy state, which you clearly observe in his lack of balance, you decide to offer him a free stay in the bunker for as long as he needs. 'Thank you. I might have to accept that, I don't know enough about this world to walk around freely, and the library was always a good base.' Carefully, you help Xaedihr walk through and introduce him to his new bed. He gladly takes the time to rest for a while. 'Hey, I know you had no obligation in letting me stay, but I should thank you again for everything. Here, have this, in case we get separated again.' He hands you some sort of trinket, a small pin with a tiny red gem in the middle. He tells you a couple of strange words which make it glow. 'Works like a summon call. When I get better, I'll be able to aid you outside. Just let me know.'";
		say "     The sorcerer needs some rest, so you leave him be for the moment. Eventually, he'll able to get up and occupy himself with some books in the library.";
		LineBreak;
		say "     (Xaedihr the demonologist is now a possible ally! You can make him your active ally by typing [bold type][link]ally Xaedihr[end link][roman type] or [bold type][link]ally demonologist[end link][roman type] and initiate sex with him while active by typing [bold type][link]fuck Xaedihr[end link][roman type]. You can see all the allies you have with the [bold type][link]allies[end link][roman type] command. Allies will lower the XP you gain from battle, but can gain levels themselves to be more useful in a scrap. Want to get rid of an ally? Use [bold type][link]ally dismiss[end link][roman type], or just [bold type][link]dismiss[end link][roman type])[line break]";
		Move Xaedihr to Grey Abbey Library;
		add "Tamed" to Traits of demonologist;
		Now demonologist is tamed;
	Now Strange Sorcerer is resolved;

to SSOutOfQuestions:
	say "     You have no more questions to ask Xaedihr right now, so you proceed to invite him to stay at the bunker, given his dizzy state, which you clearly observe in his lack of balance. 'Thank you. I might have to accept that, I don't know enough about this world to walk around freely, and the library was always a good base.' Carefully, you help Xaedihr walk through and introduce him to his new bed. He gladly takes the time to rest for a while. 'Hey, I know you had no obligation in letting me stay, but I should thank you again for everything. Here, have this, in case we get separated again.' He hands you some sort of trinket, a small pin with a tiny red gem in the middle. He tells you a couple of strange words which make it glow. 'Works like a summon call. When I get better, I'll be able to aid you outside. Just let me know.'";
	say "     The sorcerer needs some rest, so you leave him be for the moment. Eventually, he'll able to get up and occupy himself with some books in the library.";
	LineBreak;
	say "     (Xaedihr the demonologist is now a possible ally! You can make him your active ally by typing [bold type][link]ally Xaedihr[end link][roman type] or [bold type][link]ally demonologist[end link][roman type] and initiate sex with him while active by typing [bold type][link]fuck Xaedihr[end link][roman type]. You can see all the allies you have with the [bold type][link]allies[end link][roman type] command. Allies will lower the XP you gain from battle, but can gain levels themselves to be more useful in a scrap. Want to get rid of an ally? Use [bold type][link]ally dismiss[end link][roman type], or just [bold type][link]dismiss[end link][roman type])[line break]";
	Move Xaedihr to Grey Abbey Library;
	add "Tamed" to Traits of demonologist;
	Now demonologist is tamed;
	Now Strange Sorcerer is resolved;

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 5 - NPC
[***********************************************************]
[***********************************************************]
[***********************************************************]

Table of GameCharacterIDs (continued)
object	name
Xaedihr	"Xaedihr"

Xaedihr is a man.
ScaleValue of Xaedihr is 3. [human sized]
Body Weight of Xaedihr is 5. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Xaedihr is 6. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Xaedihr is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Xaedihr is 6. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Xaedihr is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Xaedihr is 4. [length in inches]
Breast Size of Xaedihr is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Xaedihr is 2. [count of nipples]
Asshole Depth of Xaedihr is 12. [inches deep for anal fucking]
Asshole Tightness of Xaedihr is 3. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Xaedihr is 1. [number of cocks]
Cock Girth of Xaedihr is 4. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Xaedihr is 12. [length in inches]
Ball Count of Xaedihr is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Xaedihr is 3. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Xaedihr is 0. [number of cunts]
Cunt Depth of Xaedihr is 0. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Xaedihr is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Xaedihr is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Xaedihr is false.
PlayerRomanced of Xaedihr is false.
PlayerFriended of Xaedihr is false.
PlayerControlled of Xaedihr is false.
PlayerFucked of Xaedihr is false.
OralVirgin of Xaedihr is false.
Virgin of Xaedihr is true.
AnalVirgin of Xaedihr is false.
PenileVirgin of Xaedihr is false.
SexuallyExperienced of Xaedihr is true.
TwistedCapacity of Xaedihr is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Xaedihr is true. [steriles can't knock people up]
MainInfection of Xaedihr is "Incubus".
Description of Xaedihr is "[Xaedihrdesc]".
Conversation of Xaedihr is { "<This is nothing but a placeholder!>" }.
The scent of Xaedihr is "     Xaedihr smells fresh and masculine, giving out the idea he's using cologne, though you never saw him spraying himself with such a thing. Whatever it is, it kind of makes you want more, somehow. Is it a spell?".

to say XaedihrDesc:
	project Figure of Xaedihr_Full_icon;
	say "     The mystic sorcerer you encountered in one of the many Hell realms is, in fact, an half-demon. Nothing gives it away except his looks and aura, a little too out of this world to suggest he's only a human. Xaedihr is a pale redhead with flawless skin, has a short hair styled to his right side, some of it laying softly above his forehead, lime green eyes, a beard to complement his chiseled jawline, and a purple-ish tattoo around his left eye. He's fairly muscular and somewhat bulky even, filling up his clothes just nicely. He wears nothing under his long dark leather jacket, only a pair of tight black pants that gives away his considerable bulge, and some combat boots to complete his edgy look. He wears an earstud on his left ear, and hanging around his neck is a pendant with the Crimson Ruby, gleaming with a mystical energy.";
	if demonologist is listed in companionList of Player:
		say "     [bold type]He is currently following you as your battle companion.[roman type][line break]";

[***********************************************************]
Section 5-1 - As Companion
[***********************************************************]

Table of GameCharacterIDs (continued)
object	name
demonologist	"demonologist"

demonologist is a pet.
NPCObject of demonologist is Xaedihr.
understand "Xaedihr" as demonologist.
IDList of demonologist is { "Xaedihr", "xaedihr", "demonologist" }.
printed name of demonologist is "Xaedihr".
Description of demonologist is "[XaedihrDesc]".
Weapon Damage of demonologist is 15.
The level of demonologist is 1.
Dexterity of demonologist is 15.
The summondesc of demonologist is "[SummonXaedihr]".
The dismissdesc of demonologist is "[DismissXaedihr]".
The assault of demonologist is "[one of]Xaedihr swiftly swings his arm around with a dark aura, striking your foe with a crimson bolt.[or]With an arcane gesture, Xaedihr slashes your foe with an invoked phantom claw, leaving a red trail behind.[or]Your half-demon companion manages to immobilize the enemy with a dark tendril, allowing you to score a quick hit![or]Running to the side, your mage buddy summons a large tendril from the ground, slamming the enemy with great force.[or]Xaedihr gives out a chuckle as he teleports back and forth by the target, quickly stabbing them with a short blade.[or]With a demonic chant, shadow purple flames envelop your foe as Xaedihr snaps his fingers, leaving the target singed with a dark burn.[or]Leaping backwards and spinning around, the sorcerer launches forward a shadow sphere, crashing against the target with considerable power.[at random]".
the fuckscene of demonologist is "[SexWithXaedihr]".

to say SummonXaedihr:
	if Xaedihr is visible: [summoning while standing next to him]
		say "     You call out Xaedihr, inviting him to join you on your day outside. 'Field research it is, then. Might as well practice a few spells. Just don't think I'll be carrying you around like a damsel, please.' He walks up to you, ready to leave.";
	else: [regular summoning]
		say "     You take the trinket Xaedihr gave you to summon him in case you needed and recite the magic words. Not too soon after, he appears next to you like a crimson light. 'Caught up something interesting or you just missed me?' he says, readying himself to follow you.";

to say DismissXaedihr:
	if Player is in Grey Abbey Library:
		say "     You tell Xaedihr that you don't need him right now. 'Huh, I see. Very well, then! I shall return to my studies, then. Just... yell or something, if you need my assistance.' he says before going back to his usual corner at the library.";
	else:
		say "     You tell Xaedihr that you don't need him right now. 'Huh, I see. Very well, then! I'll just walk around and collect a few more samples for my studies. See you back at the library or... you know, just use the trinket.' With that said, Xaedihr walks away, disappearing out of sight.";
	move Xaedihr to Grey Abbey Library;

[***********************************************************]
Section 5-2 - Talk Menu
[***********************************************************]

instead of conversing Xaedihr:
	project Figure of Xaedihr_Portrait_icon;
	say "     As soon as you approach him, Xaedihr notices your presence. 'Came for a chit-chat? I suppose I can indulge you.' says the sorcerer as he crosses his arms, giving you his signature smirk.";
	say "[XaedihrTalkMenu]";

to say XaedihrTalkMenu:
	say "     [bold type]What do you want to talk to Xaedihr about?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if Intelligence of Xaedihr > 0:
		choose a blank row in table of fucking options;
		now title entry is "SPELLS";
		now sortorder entry is 1;
		now description entry is "Check Xaedihr's spells";
		[]
		choose a blank row in table of fucking options;
		now title entry is "ENCHANTING";
		now sortorder entry is 1;
		now description entry is "Ask Xaedihr to enchant something for you";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Himself";
	now sortorder entry is 2;
	now description entry is "Ask Xaedihr to tell you more about himself";
	[]
	choose a blank row in table of fucking options;
	now title entry is "How did he get here";
	now sortorder entry is 3;
	now description entry is "Inquire him about how he ended up in this world";
	[]
	choose a blank row in table of fucking options;
	now title entry is "His affinity with magic";
	now sortorder entry is 4;
	now description entry is "Question about his familiarity with magic";
	[]
	choose a blank row in table of fucking options;
	now title entry is "His goals";
	now sortorder entry is 5;
	now description entry is "Let him know that you'd like to hear about his goals";
	[]
	choose a blank row in table of fucking options;
	now title entry is "The Crimson Ruby";
	now sortorder entry is 6;
	now description entry is "Tell him you'd like to know more about the Demonic Ruby";
	[]
	choose a blank row in table of fucking options;
	now title entry is "The Ancient Tome";
	now sortorder entry is 7;
	now description entry is "Ask him more about the Ancient Tome";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Sex Talk";
	now sortorder entry is 8;
	now description entry is "Bring up the subject of sex";
	[]
	choose a blank row in table of fucking options;
	now title entry is "His opinion on you";
	now sortorder entry is 9;
	now description entry is "Request that he tells what he thinks of you";
	[]
	if "Met Hayato" is not listed in traits of Xaedihr and Hayato is in Darkened Alcove:
		choose a blank row in table of fucking options;
		now title entry is "Introduce Hayato";
		now sortorder entry is 99;
		now description entry is "You probably should, right";
	[]
	if "Met Hayato" is listed in traits of Xaedihr and Resolution of YokLairXaedihr is 1:
		choose a blank row in table of fucking options;
		now title entry is "Ask Xaedihr for his help in finding the onis";
		now sortorder entry is 99;
		now description entry is "He is one of your best options, so just try asking him";
	[
	If loyalty of Xaedihr > 29;
	choose a blank row in table of fucking options;
	now title entry is "What he's going to do next";
	now sortorder entry is 9;
	now description entry is "Inquire about his future plans";
	]
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
				if (nam is "SPELLS"):
					say "[XaedihrTalkSpells]";
				else if (nam is "ENCHANTING"):
					say "[XaedihrTalkEnchanting]";
				else if (nam is "Himself"):
					say "[XaedihrTalkHimself]";
				else if (nam is "How did he get here"):
					say "[XaedihrTalkReason]";
				else if (nam is "His affinity with magic"):
					say "[XaedihrTalkMagic]";
				else if (nam is "His goals"):
					say "[XaedihrTalkGoals]";
				else if (nam is "The Crimson Ruby"):
					say "[XaedihrTalkRuby]";
				else if (nam is "The Ancient Tome"):
					say "[XaedihrTalkTome]";
				else if (nam is "Sex Talk"):
					say "[XaedihrTalkSex]";
				else if (nam is "His opinion on you"):
					say "[XaedihrTalkOpinion]";
				else if (nam is "Introduce Hayato"):
					say "[XaedihrTalkHayato]";
				else if (nam is "Ask Xaedihr for his help in finding the onis"):
					say "[XaedihrTalkYokLair]"; [On Hayato's file]
				wait for any key;
				say "[XaedihrTalkMenu]"; [looping back to keep talking with him]
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the sorcerer, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say XaedihrTalkSpells:
	if Intelligence of Xaedihr > 1:
		say "     Now that your half-demon companion has already learned at least one spell, you can ask him to perform one for you. When you think he would roll his eyes, he actually faces you with interest. 'Is that so? Well, then pick one and we will proceed immediately. Keep in mind this is based of a hypnosis technique, so I would recommend doing this in a safe place. I won't judge your choices, though... do whatever floats your boat.' With that said, he gives you a list of possibilities";
		WaitLineBreak;
		say "[XaedihrSpellsMenu]";
	else:
		say "     Xaedihr hasn't learned any spell, yet. Continue to explore with him and perhaps he will learn some along the way.";
		say "     <<Currently he can only learn one spell in the Void Realm, this will be expanded in future updates. Having the 'Kinky' feat is strongly recommended.>>";

to say XaedihrTalkEnchanting:
	if carried of Null Essence is 0:
		say "     You own nothing that can be enchanted or used to enchant anything at the moment.";
	else:
		say "     You turn to Xaedihr and mention his ability to enchant things, so you ask him if he can do something with anything that you have. 'Sure, I can do a few things. Tell me what you would like.' he says, before giving you a list of possibilities.";
		WaitLineBreak;
		say "[XaedihrEnchantMenu]";

to say XaedihrTalkHimself: [Himself]
	if loyalty of Xaedihr < 10: [NOT a good impression of player-neutral]
		say "     Facing him, you ask if there is any chance Xaedihr will tell a little more about himself. He shrugs at your request, but doesn't leave you hanging for long. 'Well, I'm pale, tall, pretty strong, ridiculously handsome, have red hair, green eyes, and my favorite color is maroon.' You tell him that's not exactly what you meant, to which he rolls is eyes in annoyance. 'Please. There are more interesting matters to talk about rather than what my hobbies are or whatever you're asking about. I'm stuck in your world, and that's enough as it is. The deal was to aid you while I try to find a way to go back.' With this, he turns his face away and crosses his arms. Looks like he's not very keen on discussing this subject in the current circumstances. Maybe if he trusted you more? Right now, he doesn't have a good impression of you.";
	else if loyalty of Xaedihr < 30: [good impression of player]
		say "     Facing him, you ask if there is any chance Xaedihr will tell a little more about himself. He turns to you, hesitant of his answer. 'There's not really much to know... I'm an half-demon, son of a demon of lust who came from a different world. Even I don't know a lot of things about myself. I was hoping for this trip here to help me understand a few things about my homeworld, but so far... No luck.' he replies in a tone of disappointment, though you're ready to cheer him up. 'Thank you for caring, though. That's more than I had in my entire life.' he adds, with a little smile on his face. You know this one is sincere.";
		say "     Clearly Xaedihr must have been through a lot, and you feel like he's not telling you everything. Maybe if you've gotten closer to him, you could understand him better. Perhaps he'll even let you in his story, although you'll have to make him trust you.";
	else if loyalty of Xaedihr > 29: [trusts player]
		if Energy of Xaedihr is 0:
			say "     Facing him, you ask if there is any chance Xaedihr will tell a little more about himself. He stops for a while, hesitating regarding either he should look you in the eyes or towards his own feet. 'Yes... about that... There's a lot I haven't told you. Don't take me wrong, it's just... I had to know I could trust you. My problems are a heavy burden I carry everyday.' Though you already had that feeling about him, you show concern for your mage friend and invite him to take a seat. Spending some time with him will definitely help understanding him better.";
			say "     Sitting next to you on nearby wooden chairs, which still endured these hard times, he takes a deep breath before beginning to speak. 'The world where I come from has been plagued by the same type of nanites as the ones in your world, except mine has long been lost to the demonic force. They gained immense power from having free access to the surface, corrupting and kidnapping all sorts of sex-crazed mortals. It was like a playground for them, and the same could happen to yours if they keep becoming more and more powerful. Stealing the Crimson Ruby from them set them back severely, but they have other ways. Like their imp slave being inherently capable of crossing dimensions through a short wormhole created by himself? The strange pods you found? Breeding new experimental species... They're evolving as we speak!' Xaedihr shows great concern for your world, and that seems to have bothered him all this time.";
			WaitLineBreak;
			say "     'To make matters worse, I was born from a conception between a woman and an incubus. Or, better said, an High Incubus, their evolved form. The mischievous and seductive ones you encounter here? They're nothing alike. The High Incubi are merciless sex predators who'll force you to submission if they have to, and drain every bit of your vital energy for as long as they manage to keep fucking you. They are also bigger in general, which explains my... uh... overall size. Anyway, obviously you already came to the conclusion my father is part of this demonic horde that took over my world, right?' You don't know how to reply to this, but you attempt to press further into the matter, and he doesn't deny you any answers since you've got him talking.";
			say "     'In fact, I got a lot of genetics from my father. Looks, physical aptitude, magical affinity, but fortunately not any other obvious physical demonic trait, except my dark nails and arcane tattoos, though those can pass by being a human's work of art. I'd hate to forcibly look like one of them. I despise my father with a passion, but he's also the reason why I can fight against the likes of him. At least, I can still save your world from demonic domination. Hopefully everything that happened there won't have to come by the same way here. I... just wish I could have saved mine much long ago, when I had the chance to put a stop on my father's plans... But I was too soft-hearted.' The way he speaks strikes you with an empathic sort of sorrow, and you can't help but feel the need to say something when he goes quiet for a while.";
			LineBreak;
			say "     [link](1)[as]1[end link] - Even if he had the chance to do it, it's understandable why he didn't stop him. It's his father, the one who raised him. That makes him more human than devil.";
			say "     [link](2)[as]2[end link] - Being hesitant with doing the right thing is a luxury we cannot afford in times like these. He should have put an end to his father when he could, without looking back.";
			say "     [link](3)[as]3[end link] - Honestly, he should have gone with the flow and learn how to be a proper demon. He'd be much stronger by now, with his world at his feet, and he wouldn't be having these difficulties if he could keep his mind untouched.";
			now calcnumber is 0;
			while calcnumber < 1 or calcnumber > 3:
				say "Choice? (1-3)>[run paragraph on]";
				get a number;
				if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
					break;
				else:
					say "Invalid choice. Type [link]1[end link] to fight the demon, [link]2[end link] to submit or [link]3[end link] to do something else.";
			if calcnumber is 1:
				LineBreak;
				say "     You tell him what you think about the situation with his father and his doomed world, that you understand the hesitation given the fact they had a story together. 'So you don't think I was weak? I mean... It's the first time I've told this to someone. I always only had my own opinion about it, which is that I was too naive in thinking he wouldn't do the world any harm. But I was clearly mistaken.' he replies, looking in the direction of the window by your side. 'So this is a human thing? Feeling empathy for someone else... Is this what drives you? Being able to put yourself in someone else's place? That's some great quality I wish I could have. It'd help me to better understand the human kind.'";
				say "     Noticing the half-demon's melancholic expression and contemplative tone of his voice, you decide to give him some words of comfort before leaving him to his thoughts. 'Thanks for the conversation. It was a good talk, and I was needing it. Obviously, if you ever need me, I also have good ears... sometimes. Though I'll definitely try harder with you, promise!' he adds with a smile. Though Xaedihr can be quite the difficult person, it seems you managed to get through his hard shell. You get the feeling he'll be more empathic when dealing with situations of conflict.";
				now Energy of Xaedihr is 10; [human and empathic approach]
			else if calcnumber is 2:
				LineBreak;
				say "     You tell him what you think about the situation with his father and his doomed world, that he's right to feel like this. He could have kept all this from happening by acting right away instead of being weak. Tough words, but it's the harsh truth he brought himself into. 'Heck, you're absolutely right. I was naive and inexperienced at the time. I could have just finished him off instead of hoping he wouldn't do the world any harm. Clearly, I was mistaken, and now everyone's paying the price. I should've known better. he replies as he clenches his fists, looking down at them with a fierce expression. 'Sometimes you have to be ruthless and unforgiving. That's the way I learned with the demons.'";
				say "     It seems you should give him some words of comfort before you drop the subject, as Xaedihr looks like he's about to go try to break something with his bare hands. 'Thanks for the conversation. It was the first time I told someone else about this. I needed to hear that.' he adds while looking in your eyes, though with an expression of melancholy. You managed to get through his hard shell, but you found a devastated person inside... You get the feeling he will be much harsher when dealing with demons.";
				now Energy of Xaedihr is 20; [human and ruthless approach]
			else if calcnumber is 3:
				LineBreak;
				say "     You tell him what you think about the situation with his father and his doomed world, that he could have used the opportunity to learn more about the demons and become powerful like them, even if that meant he had to fake his way. 'What?! Becoming one of them?! You didn't just suggest that I... embraced my demonic nature, did you?' he questions you, incredulous with what you said. But you think he immediately gives it a second thought. 'Well, you're right in a way. Maybe that would be an effective way to comprehend them. It's also my demon side that allows me to fight them, so if I fully embraced it, I'd be even more powerful. Hm... Tough choice, but it makes sense.' he adds while looking down at his hands, contemplating this new perspective.";
				say "     It seems it's a good time to leave him thinking about it, but before you can drop the subject, he resumes talking. 'Thanks for the conversation. It was the first time I told someone else about this. At the beginning, I thought what you said was ridiculous, but now... It could actually be a functional plan, wouldn't it? My will is strong, I could resist the corruption. I have an objective... I'll need to formulate a plan. Thanks again!' he ends as he grabs his book and starts looking for something. It seems you did manage to cheer him up, but you wonder if this was the right thing to say. Even so, you managed to get through his hard shell! Now only time will tell how he's going to process everything you said...";
				now Energy of Xaedihr is 30; [embracing his demonic nature]
			now loyalty of Xaedihr is 35;
			say "     [bold type]Xaedihr felt much better after this conversation, and is very thankful.[roman type][line break]";
		else if Energy of Xaedihr > 0:
			say "     Facing him, you ask if there is any chance Xaedihr will tell a little more about himself. Between what he already told you about him being an half-demon, son of an High Incubus and the villain of his story, which is an evolved form of the normal Incubus, and everything else that happened in his doomed world where demons have taken over, he actually takes the time to have a deep talk with you, venting about his issues and questions he finds in his mind. Though it has been a long process, you managed to crack his hard shell, and he seems to be able to talk to you fairly easily. In the end, he thanks you for the conversation and returns to his studies."; [looping deep conversation]


to say XaedihrTalkReason: [How did he get here]
	say "     When asked about on how he was still sent here, Xaedihr lowers his head and brings his index finger and thumb over his forehead, scratching his eyebrow as if trying to think. 'As I told you before, it was the ruby. When I teleported you back here, some sort of spatial-temporal distortion must have happened, explaining this delay between the moment you returned and when I appeared. It all looked like mere seconds to me.' - he pauses before continuing - 'I found a way to enter your world through a rift in mine. As the place had a good deal of destruction already, there are dimensional holes just about anywhere. Then I heard that the demonic force is way weaker here, giving me the chance to seek an artifact I needed, a ticket home as well. Even so, I can't seem to use the ruby to return. I'm not sure what happened... I might have to do some more research.'";
	say "     You suppose that you could help him with this. [if loyalty of Xaedihr < 10]However, even if you wanted, he just doesn't seem receptive of any assistance you could provide. Maybe if he trusted you more? Right now, he doesn't have a good impression of you.[else if loyalty of Xaedihr < 30 and loyalty of Xaedihr > 9]However, even if you wanted, he just doesn't seem receptive of any assistance you could provide. Maybe if he trusted you more? Right now, he isn't completely fond of you yet.[else]Maybe you could discuss his future plans and find a way to assist him.[end if]";

to say XaedihrTalkMagic: [His affinity with magic]
	if loyalty of Xaedihr < 10: [NOT a good impression of player-neutral]
		say "     Going directly to the matter that brought your question, you ask Xaedihr to talk a little more about his magic abilities. He gives you a longer silence than you were expecting, then answers in a low tone. 'I do a little magic, yes. As you could see. Though none of it seems useful to get me out of here.' - his attitude quickly turns to sarcasm - 'I don't really know why you must ask such questions. After all, you're not capable of any magic by yourself. Anything I explained to you would be out of your comprehension. Now, if that is all, I'd like to return to my research, unless you [italic type]really[roman type] must continue with this interrogation... To which I prefer you wouldn't.' he replied, before turning his face away in annoyance.";
		say "     Seems like he'd refuse to tell anything too personal. Maybe if he trusted you more? Right now, he doesn't have a good impression of you.";
	else if loyalty of Xaedihr > 9: [good impression of player]
		say "     Going directly to the matter that brought your question, you ask Xaedihr to talk a little more about his magic abilities. He tilts his head and rises an eyebrow, as if mocking your curiosity. 'Why would you want to know? Did you see something that interested you?' Though he teases you, it's true that you can't shake off the image of him immobilizing an entire squad of demons by himself with some sort of dark tendrils. But you tell him that you're curious about his abilities in general. 'Well, it's good you ask that. In fact, I even appreciate the gesture.' Now that you've got his attention, the sorcerer places down the book he was reading and turns to you.";
		say "     'Since long ago I've been like a prodigy, naturally learning my ways through magic. Helps being an half-demon, it's true. Now, what really makes me this powerful is the amount of work and effort I put into understanding every spell to its deepest origins. I even tapped into a form of ancient magic shared amongst incubi warlocks which is the form of the Tendrils of Darkness. It's just a fancy name, but you saw what it can do. And I can invoke them at will!' he explains as he rises a hand, and not shortly after, you feel something slippery rubbing around your thigh. To your shock, you notice one of these so called tendrils feeling your leg around, leaving a trail of some sort of sticky fluid where it passes. Then, it quickly retracts back to the floor where it was coming from. When you look back at Xaedihr, he's laughing with a grin on his face.";
		WaitLineBreak;
		say "     'Don't worry, that doesn't leave a stain and it's actually good for the skin. You know how they can get to be used to go in places...' he laughs a bit more, clearly enjoying teasing you. 'The tendrils are also connected to the neural sensors in the brain related to sexual pleasure. So yes, I feel everything they touch as if they were... an extension of myself.' You have a feeling of exactly what he means by that. 'But that's, of course, not all I can do. I'm a natural expert of demonology and know my way around dark magic. All those shadowy spheres of energy or fiery purple flames are all part of a dark conjuring process. On collision with the enemy, they pretty much hurt. Anyway, I think I've bored you for long enough. Did you need anything else?' he asks as he returns to his book.";
		if Intelligence of Xaedihr is 0:
			WaitLineBreak;
			say "     'Oh, I probably forgot to mention something.' he says, returning his gaze at you. 'Well, I did forget to mention this. Anyway, uh... Since you are so keen in getting into trouble, I may be able to provide you with [bold type]Invoke Dream[roman type] spells.' Invoke Dream spells? What are those? Better ask him. He's not happy that you had to ask what it was. 'Dear Lords, isn't the name itself suggestive enough?! It invokes dreams! That's all it does. And since you can experience them as if they were real, perhaps that would keep you away from, you know, sticky situations with big bad monsters? ... No? Well it's something to consider.' he sighs in some visible annoyance, but continues to speak 'I can't really say when or how will I learn how to acquire them, but it can happen in some situations where I am also present, so be sure to bring me around over dangerous areas if that's what you want.";
			now Intelligence of Xaedihr is 1;

to say XaedihrTalkGoals:
	if loyalty of Xaedihr < 10: [NOT a good impression of player-neutral]
		say "     You approach Xaedihr asking him what his goals are during his stay here. 'My goals? I thought that was obvious. Learning how to get out of here as soon as possible with the ruby in my possession. What else could it be?' he replies, with no hesitation. Though it might seem bold, you still ask why would he want to leave so quickly. 'My world is what matters to me. I now have a way to save it, so, as you can imagine, it's in my interest to do that as quickly as possible. Wouldn't you do the same?' he adds as he returns to his book, closing himself from further questioning. It seems you won't gain any niceties from the half-demon as long as he doesn't show any signs of trusting you. Right now, he doesn't have a good impression of you.";
	else if loyalty of Xaedihr > 9: [good impression of player]
		say "     You approach Xaedihr asking him what his goals are during his stay here. 'Right now, I need to learn more about the magic that's imbued in the ruby. Meaning, a lot of study ahead of me. It is strange how in my world the demons rose to power so effectively, but a gemstone as powerful as this one could very well be the explanation. At the same time, I might find a way to go back...' he says, albeit his last words were hesitant. You boldly decide to continue the question by asking him why is he planning to leave so soon. 'It's not like I want to run away from this place and leave now, but if that meant I could save my world... I would like to try that as soon as possible. Wouldn't you do the same?' he asks back, while returning to his book. 'But of course, first things first, and I'd like to learn as much as I can from your world before that's even a choice.' With this, he turns his focus on his research.";

to say XaedihrTalkRuby:
	say "     Recalling the gem you helped Xaedihr acquire - while risking your life to hellish tentacles - you ask him to tell you more about it. 'The Crimson Ruby is a gem with inherent power that allows its wielder to tap into rifts and other dimensions. Basically a free ticket for the demons before we stole it from them right under their noses.' Although you notice a hint of mockery in his tone, Xaedihr is never happy talking about the demonic force. 'I own it, now. But using its power on my own has tremendous costs, it's not something to carelessly wave around and hope it does something. Still, even if they don't have the ruby anymore, I'm sure they'll find another way to freely travel to this world. They always do. But it won't be a massive horde for a long time.' With this said, the sorcerer returns to his studies.";

to say XaedihrTalkTome:
	if loyalty of Xaedihr < 10: [NOT a good impression of player-neutral]
		say "     When you ask Xaedihr about the Ancient Tome you used to bring up the ritual, he gives you a dreadful glare. 'Are you saying you used it to cast a spell and you don't even know what it is?! Such irresponsibility! You could have doomed your world if you used it innapropriately!' With this reply, you think the better move is to nod apologetically and hope he doesn't give you a sermon. 'The Ancient Tome, as you so called it, is a demonology dark grimoire with tons of spells related to conjuration. If it lies on a fool's possession, it might very well mean the end of the world. I'd advise caution regarding whom you let to lay their hands on it. I'd forbid it, even.' With this said, the half-demon turns back to his studies. He didn't really say anything you didn't already know, but it look like he won't open his mouth to say more about it.";
		say "     Perhaps if he trusted you more? Right now, he doesn't have a good impression of you.";
	else if loyalty of Xaedihr > 9:
		say "     When you ask Xaedihr about the Ancient Tome you used to bring up the ritual, he gives you a preoccupied look. 'Did you actually have the audacity to perform that ritual without knowing exactly what the tome is?!' he replies immediately, to what you answer that you already had an idea of the danger it could pose, but would like to know more. He breathes in relief. 'Well, the Ancient Tome, as you called it, is a demonology dark grimoire with tons of spells related to conjuration. If it lies on a fool's possession, it might very well mean the end of the world. I'd advise caution regarding whom you let to lay their hands on it. I'd forbid it, even.' and as he seems about to go silent, he yet continues 'Although... I suppose I could help you perform some of its rituals [italic type]safely[roman type], as it would also aid in my research. Just let me know before you do anything you'd regret with it.' With this said, the half-demon turns back to his studies.";
		say "     Given his availability to help you explore the Ancient Tome, you suppose you could start giving it another look. Who knows what you might find?";
		now resolution of Corruption of Dreams is 1;

to say XaedihrTalkSex:
	if libido of Xaedihr is 0 and loyalty of Xaedihr > -1: [at least neutral disposition]
		say "     Out of boldness, you bring sex to the conversation. Before you can ask anything else, Xaedihr instantly shifts his gaze towards you with great interest. 'I thought you'd never ask. I've been dying to have fun with someone! There's just so much we can do... Oh, but I do have some conditions. I'm usually top, and always dominant, so don't get any ideas. When we're fucking, I'm in charge. Though that doesn't mean you can't take the initiative, sometimes. I like seeing my partners put up a serious effort in pleasing me.' he says, grinning right at your face. 'Hit me up anytime. Ah, and not to brag, but my loads are quite messy, so make sure you come prepared. Or not... I'd like to see your reaction.' he finishes, chuckling. Looks like he's very eager to get started!";
		say "     Regarding his sexual roles, maybe you can convince him to shift his attitude a bit once you've gained his trust. He doesn't seem to be completely intolerant to change, and you might even be able to bond with him through some pleasant sex.";
		now libido of Xaedihr is 1;
	else if libido of Xaedihr is 0 and loyalty of Xaedihr < 0: [negative disposition]
		say "     Out of boldness, you bring sex to the conversation. Before you can ask anything else, Xaedihr instantly shifts his gaze towards you with great interest. 'Truth be told, I could use the release sometimes, but I do have some conditions. I top, you bottom, and let's keep it like this for a while. Maybe if you try hard enough, we might do other things...' he finishes, giving you a sarcastic look.";
		say "     Well, looks like you'll always play as catcher with him, for now. Maybe you can convince him to shift his attitude a bit once you've gained his trust. He doesn't seem to be completely intolerant to change, and you might even be able to bond with him through some pleasant sex.";
		now libido of Xaedihr is 1;
	else if libido of Xaedihr is 1 and PlayerFucked of Xaedihr is false: [agreed to fuck but still didn't happen]
		if loyalty of Xaedihr > -1: [at least neutral disposition]
			say "     You decide to approach Xaedihr with the subject of sex in mind. As you introduce the matter, your give him some heads up on what you'd like to do with him. 'As I said, I'm all in for a little fun. Just hit me up whenever you want to fuck, and don't be shy about asking anything special either.' he finishes with an unsubtle wink.";
		else if loyalty of Xaedihr < 0: [negative disposition]
			say "     You decide to approach Xaedihr with the subject of sex in mind. As you introduce the matter, your give him some heads up on what you'd like to do with him. He rolls his eyes impatiently. 'As I said, I can fuck you if you want it that badly. Just don't pester me with ifs and don'ts and go directly to what matters. That's such a turn-off when all we want is a quick release.' he finishes, turning to his books and ignoring your presence from that moment onwards.";
	else if libido of Xaedihr > 0 and PlayerFucked of Xaedihr is true: [already fucked]
		if libido of Xaedihr is 2 and loyalty of Xaedihr > 9 and Player is submissive: [triggers Dom Xaedihr]
			DomXaedihr1;
			stop the action;
		else if libido of Xaedihr is 5 and loyalty of Xaedihr > 9 and Player is submissive: [more Dom Xaedihr]
			DomXaedihr2;
			stop the action;
		else if libido of Xaedihr is 6 and loyalty of Xaedihr > 9 and Player is submissive: [more Dom Xaedihr]
			DomXaedihr3;
			stop the action;
		else if loyalty of Xaedihr > -1: [at least neutral disposition]
			say "     You decide to approach Xaedihr with the subject of sex in mind. Recalling your previous encounter, he gives you a smirk, looking at you with a mischievous look. 'Sounds like someone really enjoyed our time together, eh? That's alright... You can have it again with me anytime between breaks, if you need it so bad...' he teases you, giving you a wink and a smile as he turns his attention to his books.";
			if libido of Xaedihr < 2:
				now libido of Xaedihr is 2;
		else if loyalty of Xaedihr < 0: [negative disposition, libido progress is stalled]
			say "     You decide to approach Xaedihr with the subject of sex in mind. 'What, you're unhappy with the service? There's plenty out there free for the take if my twelve inches aren't good enough for you.' You try to explain that's not the issue, but he doesn't hear you, even ignoring your presence from that moment onwards as he turns his attention to his books. Maybe you'll have to keep trying to convince him, or remind him that you enjoy his company.";

to DomXaedihr1:
	say "     You decide to approach Xaedihr with the subject of sex in mind. Recalling your previous encounter, he gives you a smirk, looking at you with a mischievous look. However, this time, he doesn't speak right away. Instead, he approaches you with his chest puffed-out, his lime green eyes locked on yours, and you can't help but feel your heart racing faster as he walks closer to you. 'I have been enjoying my time with you, too. Though I can't stop noticing that your attitude tends to be slightly... submissive towards me.' he murmurs softly, then strokes your cheek. You can feel his broad, warm body touching yours, his strong arms embracing you as he gives your lips a tender kiss. Standing really close to you, he leans over your ear, his deep, clear and masculine voice now whispering...";
	say "     'Are you trying to tell me anything, [if Player is not defaultnamed][name of Player][else]my friend[end if]? Could it be that you can't help but wish to serve someone...? To be claimed by someone... a slave to their needs... a sex toy at their disposal...?' He places his hand on the back of your head as his forehead bumps softly against yours. You're feeling his arousal through his deep, shaky breathing, and the growing pressure against your groin, finding yourself helpless to his teasing for the moment. His hand then slides slowly through your neck and back, getting a rather tight grasp of your buttcheeks as you're pulled against him. You can tell he's hard just out of the thought of dominating you.";
	WaitLineBreak;
	say "     'We won't do anything you don't want to, but... it sure would be hot if you wanted to be my little bitch... Doesn't have to be always, at first...' His lips move to touch yours once more, and you feel like you should give him a reply...";
	LineBreak;
	say "     [link](1)[as]1[end link] - Tell him you'd be more than happy to occasionally become his fucktoy.";
	say "     [link](2)[as]2[end link] - You may be submissive, but you're fine as things are and have no interest in getting any further than this.";
	say "     [link](3)[as]3[end link] - There's no certainty in your mind, right now...";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to tell him you want to submit to him, [link]2[end link] to cut this short or [link]3[end link] to express your uncertainty.";
	if calcnumber is 1:
		LineBreak;
		say "     You barely finish speaking as his tongue finds a way deep in your mouth. Xaedihr is kissing you like he never had before, taking everything he can as he owned you already. 'Mmh... Fuck... You have no idea how much that turns me on, hearing you say it...' Standing there, tugged within his embrace, you look back into his gaze and feel a tremendous sense of safety. 'There's this thing I wanted to try with you, but it might be a little more... hardcore than what our usual stuff. If you're up for it, let me know whenever you're ready to give it a go... alright?' he lets you know, respecting your pacing and letting you decide how far you're willing to submit to him. All you've got to do now is bring it up when you approach him for sex.";
		if loyalty of Xaedihr < 20:
			say "     [bold type]Your new status with the sorcerer earned his respect significantly[roman type][line break]";
			now loyalty of Xaedihr is 20;
		now libido of Xaedihr is 3; [unlocked 1st Dom X sex scene]
	else if calcnumber is 2:
		LineBreak;
		say "     Even though this display was hot, you can't lie to him. Having a tendency to be submissive doesn't mean you want to be someone's bitch all the time, and you have your limits, so you let him know that in response. 'Oh. Uh... I see.' Xaedihr lets go of you gently, and you can't help but have the feeling you just killed his boner. 'That's okay. What we have right now is good, too, so... No need to push you into doing anything you don't want to do, right?' he reassures, giving you a slight smile in an attempt to hide his disappointment. 'Anyway, as per usual, if you need, or want anything, let me know. I'll go back to my studies.' he finishes, pulling away from you as he returns to his usual corner.";
		now libido of Xaedihr is 99; [nothing else will happen]
	else if calcnumber is 3:
		LineBreak;
		say "     With hesitation, you try telling him that you're really not very sure about this, but he then stops you immediately. 'Don't worry, it isn't anything definitive... We don't have to do it if you don't want to. But in any case, there's this thing I wanted to try with you, however it might be a little more... hardcore than what our usual stuff. If you're up for it, let me know whenever you're ready to give it a go... alright? No rush.'  he lets you know, respecting your pacing and letting you decide how far you're willing to submit to him. All you've got to do now is bring it up when you approach him for sex, if you're willing to give it a try.";
		now libido of Xaedihr is 4; [unlocked 1st Dom scene, but player is uncertain]

to DomXaedihr2:
	say "     You decide to approach Xaedihr with the subject of sex in mind. Recalling your previous encounter, you can even sense the arousal in the sorcerer's eyes as the distance between you both shrinks. 'Well, I hope you've enjoyed that. It's not everyone who earns the privilege of becoming my personal sex slave, even for a little while.' He shows a smirk as you feel a hand grab your butt, and then, you are pulled in for an embrace. Your lips touch, tongues connect, and you find yourself being kissed deeply by the half-demon in a wild manner, much unlike his usual regal posture, but so very skillfully. Once he has you practically melting in his arms, he lets go of you with an even bigger smirk.";
	say "     'Submitting to a magic expert has its perks, you know... I could entrance you, enhance your sensory receptors... and I could even control your mind. Nothing a few arcane words won't do... But I suppose we've got enough to entertain ourselves, for now. Perhaps later I may use you, again.' He gazes into your eyes, which seem to gleam with a sort of dim purple glow, and you suddenly feel a surge of hot desire taking over your body as lustful images of your favorite sorcerer and you pass by your mind. Definitely, you felt compelled to consider him your favorite.";
	WaitLineBreak;
	say "     [bold type]You have unlocked the Dominant Xaedihr route[roman type]. This means that you will be able to submit to Xaedihr in a variety of ways from his sex menu, and if you keep in good terms, any additional dominant sex scene added in the future will be immediately available.";
	increase Libido of Player by 20;
	now libido of Xaedihr is 6;

to DomXaedihr3:
	say "     You decide to approach Xaedihr with the subject of sex in mind, and you both talk about your past experiences with one another. Things seem to be going very fine, though he definitely likes turning you on at every opportunity he gets.";
	increase Libido of Player by 5;

to say XaedihrTalkOpinion:
	if loyalty of Xaedihr < 0: [negative impression]
		say "     Wondering what the sorcerer thinks of you in general, you decide to ask him directly about it. He raises an eyebrow at your question, and doesn't respond right away. 'Eh... What can I say? I've had better mates. You know, ones with actual good sense. I mean, you're sure you need to be asking? That alone only proves that you clearly have no idea about anything. Though not everyone's without redemption. I think.' he replies with a sarcastic tone, turning away from you and back to his studies. Whatever you've been saying or doing, he clearly doesn't like you as of now.";
	else if loyalty of Xaedihr > -1 and loyalty of Xaedihr < 10: [neutral]
		say "     Wondering what the sorcerer thinks of you in general, you decide to ask him directly about it. He shows no expression when facing you, acting as if it was an usual question. 'I can't tell much. It hasn't been too long since I met you, nor had seen enough of you to reach to a conclusion. You might be a lovely person, or an incredibly reckless and ignorant one. Or both, though in that case I'd have you psychologically evaluated, as they're ever rarely found together.' With this said, Xaedihr returns to his book, turning away from you. It seems he doesn't hold any particular impression of you right now, so his opinion of you might stand on a fairly neutral ground.";
	else if loyalty of Xaedihr > 9 and loyalty of Xaedihr < 20: [good impression]
		say "     Wondering what the sorcerer thinks of you in general, you decide to ask him directly about it. He faces you with an interested look, scratching his chin with a slight grin. 'Seeking my approval, aren't we?' - he replies, teasing you a bit - 'Well, you're not being a total jackass. I like our talks and our moments, and that makes you a tad higher on my list of things I like. Although I wouldn't get too confident! I might change my mind if you start behaving like a savage, so please don't do that.' he adds, chuckling as he finishes speaking. With this said, he returns to his studies, turning away from you. Whatever you've been saying or doing, Xaedihr seems to be approving you.";
	else if loyalty of Xaedihr > 19 and loyalty of Xaedihr < 30: [likes you]
		say "     Wondering what the sorcerer thinks of you in general, you decide to ask him directly about it. He turns his head to face you, showing a rather shy smile as he focuses his gaze on your eyes. 'You know, I'm actually starting to like you. You're not like most people, so selfish and too self-centered for their own good. I see you caring about those around you, no matter their conditions, and that's a relief to see. Makes my time here easier to pass by while I try to solve these magic mysteries.' he answers as he nods at you, returning to his studies afterwards. It seems Xaedihr is taking a liking on you because of the way you've been acting around him. You feel like he's closer to trusting you.";
	else if loyalty of Xaedihr > 29 and loyalty of Xaedihr < 40: [trusts you enough, open for Demonologist Questline continuation]
		say "     Wondering what the sorcerer thinks of you in general, you decide to ask him directly about it. Going over his book a few more times, he puts it down and walks towards you. 'You're fine. Really fine, for someone I met in both my and your world. Actually, I know I can trust you, which is something I value. I know you won't backstab me like many others have attempted, and failed.' he replies, with some hatred in his eyes, probably remembering some past event. 'I hope you think the same way of me. I believe a good friendship between us could prosper, given the right circumstances, don't you agree?' he adds as he winks at you, followed by his charming grin as he returns to his studies. You're definitely getting into his good graces, and he'll even trust you with his own affairs.";
	else if loyalty of Xaedihr > 39 and loyalty of Xaedihr < 50: [he considers you a friend]
		say "     Wondering what the sorcerer thinks of you in general, you decide to ask him directly about it. Going over his book one more time, he puts it down and walks towards you, placing his arm around your shoulders. 'You're a great definition of friend with benefits, obviously. Probably the best I've had in some time.' he replies as he shows a shameless grin at you. 'I think I was pretty damn lucky that it was you who found that tape. I'm not sure I'd like a different person. Well, maybe I would, but I'm not an easy person and you probably already concluded that. Still, uh... Thanks for the patience. I mean it.' he finishes as he gives you a more serious look, a sign that he really means what he just said. You're definitely gaining his loyalty, and Xaedihr has no issues in saying that to you.";
	else if loyalty of Xaedihr > 49: [earned his true loyalty]
		say "     Wondering what the sorcerer thinks of you in general, you decide to ask him directly about it. He immediately puts his book down when he hears your question, walking towards you and placing his arm around your shoulders. 'I couldn't ask for a better partner. You and I are unstoppable, but that's not what really makes me enjoy your company. Besides all the sex, you're great to talk to, and you've done more for me that anyone in your world and mine together. I think you're an amazing person to be with, and I'd go as far to giving my life for you, if it came to that. Let's hope it won't, or I'll actually have to do it now!' he laughs as he finishes speaking. 'Thank you, sincerely. For everything.'";
		say "     It seems you've learned Xaedihr's total loyalty, and he's not afraid of letting you know it. In fact, he's more than happy to tell you that.";

[***********************************************************]
Section 5-2-1 - Spells Menu
[***********************************************************]

to say XaedihrSpellsMenu:
	say "     [bold type]What spell do you want?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if "Invoke Dream - Void Serpent I" is listed in traits of Xaedihr:
		choose a blank row in table of fucking options;
		now title entry is "Invoke Dream - Void Serpent I";
		now sortorder entry is 1;
		now description entry is "Reproduce the first Oral Vore Loss Scene against the Void Serpent";
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
				if (nam is "Invoke Dream - Void Serpent I"):
					say "[XaedihrSpellsIDVoidSerpentI]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the sorcerer, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say XaedihrSpellsIDVoidSerpentI:
	project Figure of Xaedihr_FullMagic_icon;
	say "     You request the sorcerer to provide you with a lucid dream of being oral vored by the Void Serpent from the Void Realm. He lets out a laughter once you request such a thing. 'Oh my, that really turned you on, didn't it? Ah, I said I wouldn't judge you... But that's kind of cute.' he comments, as he leads you to a comfortable place where you can lie down and let him perform the hypnosis. 'Very well, then, this won't take long. Lie down over here and just hear my voice...' he tells you, sitting by where you are supposed to be.";
	say "     Closing your eyes, you pay attention to his words. His tone is calm and soothing, enough to make you want to fall asleep. His gentle embrace helps, too, and soon, your senses begin to fade away as your body lies dormant.";
	WaitLineBreak;
	VoidSerpentVore1;
	WaitLineBreak;
	say "     With a snap of fingers, Xaedihr wakes you up and you open your eyes. 'Welcome back. I hope you enjoyed it... If not, I don't accept complaints, either.' he says as you thank him for the effort.";

[***********************************************************]
Section 5-2-2 - Enchantments Menu
[***********************************************************]

to say XaedihrEnchantMenu:
	say "     [bold type]What enchantment do you want?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Enchant Xaedihr's Tome";
	now sortorder entry is 1;
	now description entry is "Increase damage caused by Xaedihr's attacks by 1 (Costs 10 Null Essences)";
	[]
	if abyssal edge is owned:
		choose a blank row in table of fucking options;
		now title entry is "Enchant Abyssal Edge";
		now sortorder entry is 2;
		now description entry is "Increase damage made by the Abyssal Edge weapon by 1 (Costs 10 Null Essences)";
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
				if (nam is "Enchant Xaedihr's Tome"):
					say "[XaedihrEnchantTome]";
				else if (nam is "Enchant Abyssal Edge"):
					say "[XaedihrEnchantAE]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the sorcerer, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say XaedihrEnchantTome:
	if carried of null essence < 10:
		say "     Xaedihr frowns at your request, shaking his head. 'Well, I would gladly use them to upgrade my own arsenal, but, you see... you need at least [bold type]ten[roman type] of these null essence things for an enchantment like this. When you have them, then we can do something about it.' With that, you are forced to give up on the idea.";
	else if strength of Xaedihr > 9:
		say "     Xaedihr frowns at your request, shaking his head. 'Well, I would gladly use them to upgrade my own arsenal, but, you see... I think the tome just hit its limit...' he shows you his weapon of choice, but there really isn't any visual difference, so you simply trust his word. With that, you are forced to give up on the idea.";
	else:
		project Figure of Xaedihr_FullMagic_icon;
		say "     'Certainly doable. I shall get onto that. Thank you, by the way, I always appreciate gaining some power for myself.' he tells you, as you hand him the ten null essences...";
		say "     The sorcerer takes the materials to over his corner and proceeds to perform some magical spells that you don't really understand. After a few flashes, ominous sounds and strange flashes of light, the job is complete.";
		ItemLoss null essence by 10;
		say "     [bold type]Xaedihr has gotten stronger![roman type][line break]";
		increase weapon damage of demonologist by 1;
		increase strength of Xaedihr by 1;

to say XaedihrEnchantAE:
	if carried of null essence < 10:
		say "     Xaedihr frowns at your request, shaking his head. 'Well, I could use these items to further augment the Abyssal Edge's damage, but, you see... you need at least [bold type]ten[roman type] of these null essence things for an enchantment like this. When you have them, then we can do something about it.' With that, you are forced to give up on the idea.";
	else if Resolution of AbyssEdgeEnchantLevel > 29:
		say "     Xaedihr frowns at your request, shaking his head. 'Well, I could use these items to further augment the Abyssal Edge's damage, but, you see... I think the sword just hit its limit...' There really isn't any visual difference on the abyssal edge, so you simply trust his word. With that, you are forced to give up on the idea.";
	else:
		project Figure of Xaedihr_FullMagic_icon;
		say "     'Certainly doable. I shall get onto that.' he tells you, as you hand him the ten null essences...";
		WaitLineBreak;
		say "     The sorcerer takes the materials to over his corner and proceeds to perform some magical spells that you don't really understand. After a few flashes, ominous sounds and strange flashes of light, the job is complete.";
		ItemLoss null essence by 10;
		say "     [bold type]Your Abyssal Edge's weapon damage has been increased by 1! It is now at [weapon damage of abyssal edge] damage.[roman type][line break]";
		increase weapon damage of abyssal edge by 1;
		increase Resolution of AbyssEdgeEnchantLevel by 1;

[***********************************************************]
Section 5-3 - Sex Menu
[***********************************************************]

Instead of fucking Xaedihr:
	say "[SexWithXaedihr]";

to say SexWithXaedihr:
	if (lastfuck of Xaedihr - turns < 5):
		say "     Xaedihr gives you a nearly wicked grin as he hears about you wanting to have sex with him. 'A little too horny, aren't we? If we keep fucking all day, I won't be able to get anything else done. Maybe another time?'";
	else if libido of Xaedihr is 0:
		say "     As sexy as your half-demon buddy is, you can't just make advances on him without bringing up the subject first! Try talking to him about the possibility of engaging in sex before proposing some fun.";
	else:
		say "[XaedihrSexMenu]";

to say XaedihrSexMenu:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	say "     Turning to Xaedihr, you give him a rather unsubtle signal as he follows you to a more secluded area. 'Wanting to see me in private? I wonder what that is for...' he says, rolling his eyes in sarcasm, but showing a more playful and suggestive grin in the end.";
	say "     [bold type]Now that you have him in privacy, what exactly do you want to do with Xaedihr?[roman type][line break]";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Give him a handjob";
	now sortorder entry is 1;
	now description entry is "Get your hands on his meaty prick";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Suck his cock";
	now sortorder entry is 2;
	now description entry is "Propose Xaedihr for a blowjob";
	[]
	if Player is male and loyalty of Xaedihr > -1:
		choose a blank row in table of fucking options;
		now title entry is "Get a blowjob";
		now sortorder entry is 3;
		now description entry is "Have Xaedihr sucking your cock";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Have him fuck your ass";
	now sortorder entry is 4;
	now description entry is "Offer your hole to the half-demon";
	[]
	if Player is male and loyalty of Xaedihr > -1:
		choose a blank row in table of fucking options;
		now title entry is "Try to get in his rear";
		now sortorder entry is 5;
		now description entry is "Ask Xaedihr for permission to fuck his ass";
	[]
	if loyalty of Xaedihr > -1 and libido of Xaedihr > 2 and libido of Xaedihr < 99:
		choose a blank row in table of fucking options;
		now title entry is "Have the sorcerer dominate you";
		now sortorder entry is 6;
		now description entry is "Let him know you want to submit to him";
	[]
	if Player is male and loyalty of Xaedihr > -1 and demon brute is listed in companionList of Player and DemonBruteStatus is 0 and (DBCaptureQuestVar is 6 or DBCaptureQuestVar is 7):
		choose a blank row in table of fucking options;
		now title entry is "Propose a threesome with Brutus";
		now sortorder entry is 7;
		now description entry is "Have a threeway with the half-demon and your demon brute companion";
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
				if (nam is "Give him a handjob"):
					say "[XaedihrHandjob]";
				else if (nam is "Suck his cock"):
					say "[XaedihrBlow]";
				else if (nam is "Get a blowjob"):
					say "[XaedihrGetBlown]";
				else if (nam is "Have him fuck your ass"):
					say "[XaedihrAssFucked]";
				else if (nam is "Try to get in his rear"):
					say "[XaedihrFuck]";
				else if (nam is "Have the sorcerer dominate you"):
					say "[XaedihrSubmit]";
				else if (nam is "Propose a threesome with Brutus"):
					say "[XaedihrBrutus]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the half-demon, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say XaedihrHandjob:
	say "     Giving the half-demon a suggestive glance downwards and an all but subtle smile, you place your hand over the side of his waist and lean closer to him, looking in his eyes as your lips nearly meet his. His gaze strikes back at you with an intrigued, yet pleased look in his face, knowing you want to get naughty with him. 'Someone's horny, huh?' he teases, grabbing your wrist and leading your hand over the increasing bulge in his tight black pants. You feel his next words whispered onto your ear 'Want to feel this getting harder as you stroke it?' as he further encourages you to feel his crotch, guiding you to slip your hand under his underwear. He embraces you with his powerful arms, reaching around your waist and pulling you for a deep kiss, a masterful tongueplay that leaves you panting.";
	say "     Carefully, you wrap your fingers around his thick meat, begging to be released out of the constraining clothing as it gets engorged with pumped blood, hardening more and more with each movement you make. 'Gotta get rid of these...' says the sorcerer as he undoes the zip in his pants, which your wrist appreciates, giving you a much wider angle to handle his tool. Inevitably, the considerably sized prick leave his underwear, though you can still only see half of it. 'Damn, you're definitely not bad for a short lifespan mortal...' he comments as you keep stroking his half-hard member, running your fingers up and down through his shaft and teasing him around the tip. Xaedihr bites his lip as you do that. 'Fuck yes! Damn... I think you deserve to see the whole thing...' he adds before completely sliding his pants and underwear downwards, a foot-long of a cock bouncing in freedom, along with a large pair of balls hanging underneath.";
	WaitLineBreak;
	project Figure of Xaedihr_NudeHard_icon;
	say "     'You better work hard, he's demanding...' he winks at you with a teasing grin, clearly speaking of his now throbbing, rock hard dick, urging you to keep stroking it. 'Oh, and don't forget the balls. I love a good tug...'. His pale skin is actually incredibly smooth to the touch, feeling almost like silk, and it's no different down there, making it all more pleasant for you. With a gentle pull, you grab his big nuts with one hand as he asked, to which he lets out a moan in response, and grab his meat by the shaft with the other. You feel it pulsing even harder in your grasp as you keep playing with his balls, pulling and caressing them gently as you rub his cock up and down. 'You have no idea how much I like that...' he even chuckles as he leans his head backwards over the bookshelves, focusing on the pleasure you're giving him.";
	say "     You get serious with the stroking, vigorously bringing your hand from the base of his shaft to the glistening tip, give it a nice squeeze with your thumb, and back down, covering his entire length with your consistent motions. He wasn't kidding, all the rubbing brings you to a sweat until he's giving signs of getting closer to orgasm. 'Oh yeah, that's it... I'm getting there... Don't you dare to stop now...!' he says amidst heavy breathing, almost in a demanding tone, though you have no problem in fulfilling his request. His balls being to retract as you jerk the half-demon's cock faster, with both your hands now. Within moments, you barely need to do any stroking by yourself, as Xaedihr is nearly literally fucking the space between your palms.";
	WaitLineBreak;
	say "     'Aah... Keep going...! Fuck yes! I'm cumming!' he almost shouts, his thick foot-long manhood starting to harden to its peak and throbbing with anticipation. You know it's going to be a huge load as you see the significant first signs of cum oozing out of his slit, sliding down to your fingers. 'Fuuuuck yeah! Take it!' he moans, as loud as he's to shoot hard, and within moments, a great deal of jizz lands right on you with surprising force. He keeps going, thick and generous spurts of cum, one after the other, covering your chest and even your face while his long orgasm lasts. He's not even looking, his eyes are closed and he's biting his lips as he unknowingly covers you in his half-demon seed.";
	say "     'Oh, fuck... Fuck...! Damn! Wow! That... was a HELL of a release!' he exclaims as he opens his eyes to look at you, all drenched in his sex juice, 'Uh... Oops, I guess I... gave you a cum bath. These demon genetics are something else, huh?' You can't help but smile back at him, glad that he enjoyed your treat. 'Just imagine how full you'd be if this entire load ended up inside you... Just a thought.' he teases, winking and grinning at you, wiping out a single drop of cum from your face and licking it off his thumb. 'Hm, still tasty. You should try it. It'd be a fun way to clean yourself. I'd help you, but I must return to my studies. Maybe we can catch up with that little idea later?' With this, the sorcerer gives you one last smile before he returns to his books, leaving you soaked with his sperm. Something tells you he actually did that on purpose.";
	if a random chance of 3 in 4 succeeds and loyalty of Xaedihr < 30:
		say "     [bold type]The time you've spent with Xaedihr made him open up more to you.[roman type][line break]";
		increase loyalty of Xaedihr by 1;
	now PlayerFucked of Xaedihr is true; [he had a sexual encounter with the player]
	now lastfuck of Xaedihr is turns;

to say XaedihrBlow:
	say "     Giving the half-demon a suggestive glance downwards and an all but subtle smile, you place your hand over the side of his waist and lean closer to him, looking in his eyes as your lips nearly meet his. His gaze strikes back at you with an intrigued, yet pleased look in his face, knowing you want to get naughty with him. 'Someone's horny, huh?' he teases, grabbing your wrist and leading your hand over the increasing bulge in his tight black pants. You feel his next words whispered onto your ear 'So, how's it going to be... Your mouth on my cock?' as he further encourages you to feel his crotch, guiding you to slip your hand under his underwear. He embraces you with his powerful arms, reaching around your waist and pulling you for a deep kiss, a masterful tongueplay that leaves you panting.";
	say "     Carefully, you wrap your fingers around his thick meat, begging to be released out of the constraining clothing as it gets engorged with pumped blood, hardening more and more with each movement you make. You decide it's time to give it some fresh air, so you get down on your knees and start undoing the zip in his pants, to pull them down together with his underwear. His foot-long of a schlong nearly jumps out when released, only to harden to its fullest as you grab it with one hand and his balls with the other, giving the latter a gentle tug. 'Ooh, yeah that's it... though it'd feel even better if you used your mouth on them...' he suggests, glancing over you with a playful smile as he grabs your head and pulls you gently towards them.";
	WaitLineBreak;
	project Figure of Xaedihr_NudeHard_icon;
	say "     While stroking his cock, you reach over his testes with your tongue, sliding it all around them before you tug them between your lips. As you suck on them gently, then a little harder, the mage lets out a moan as he caresses the back of your head, encouraging you to continue. 'I really fucking love that...!' He must really like getting his balls played with, but after some time spent there, you think it's time to get back to the main course. With this in mind, you lift your lips away from the half-demons soft nuts and tease him with a lick that goes from the base of his shaft to the glistening tip, feeling a potent sweet sensation once our tongue slips past the slit. 'You're a fucking tease...'";
	say "     You have no intention in making the half-demon wait, so you get your lips wrapped around his thick erection, heading down as deep as you can while your hands are busy fondling and tugging on his balls, knowing what effect that has in him. The sorcerer takes a deep breath, but you can tell he never stops looking at what you're doing. There's further encouragement in his gesture, a slight pressure on the back of your head as you take his length in your mouth, not forcing you, just guiding you to perform exactly how he likes. 'Damn, you have some skill... I could have you do this all day...' he comments amidst a few low moans, now with both his hands on your head as he starts going a little rougher.";
	WaitLineBreak;
	say "     His hips aid your motions as he begins thrusting into your throat, keeping a tight grasp of your head, making any resistance of your part futile. Not that you mind it, as he's actually very careful in not overpushing your limits. 'Your throat surely feels good... Fuck...!' You both keep going at it for a while, your jaw eventually starting to ache, as taking a foot-long thick cock for such a long time is no easy feat. However, the half-demon's inhuman stamina is starting to give in. As your fingers are still caressing his gonads, you feel them beginning to retract, a sign that he's approaching climax. 'I'm getting close... It's gonna be a big one...!' His grip over your head is released, and you find yourself in the chance of deciding [bold type]how you want to finish this.[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Try to swallow his entire load.";
	say "     ([link]N[as]n[end link]) - Have him cover your face in cum.";
	if Player consents:
		LineBreak;
		say "     With your decision made, you don't move away from his cock, instead focusing your attention on his vast length and stroking it as fast as you can. Xaedihr's grip over you returns, and soon after brief seconds of rough hard facefucking, he pushes his cock all the way in your mouth. 'Fuuck yes! Swallow it all!' he shouts as you start feeling a warm, long spurt of his cum going down your throat, followed by another, and another... His cock is pulsing furiously inside you as your stomach gets filled with all that sweet half-demonic load. Only when his orgasm begins to subside he remembers that you need to breathe, pulling his dick out with a popping sound.";
		say "     'Damn! Wow! That... was a HELL of a release!' he exclaims as he opens his eyes to look at you, gasping for air. 'Gave you a little neck workout, huh?' You can't help but smile back at him, glad that he enjoyed your treat. 'Don't worry, you'll be fine and ready for another, I'm sure. There's always more where that came from...' he teases, winking and grinning at you, wiping out a single drop of cum that escaped by your lip and licking it off his thumb. 'Hm, still tasty, isn't it? I mean, most of it went down your throat, but you surely tasted some of it, right? Anyway, I must return to my studies. Hope you enjoyed the meal.' With this, the sorcerer gives you one last smile before he returns to his books.";
	else:
		LineBreak;
		say "     With your decision made, you pull his cock out of your mouth, as you jerk the half-demon's cock faster, with both your hands now. Within moments, you barely need to do any stroking by yourself, as Xaedihr is nearly literally fucking the space between your palms. 'Don't stop, now... Fuck yes! I'm cumming!' he almost shouts, his thick foot-long manhood starting to harden to its peak and throbbing with anticipation. He moans, as loud as he's to shoot hard, and within moments, a great deal of jizz lands right on you with surprising force. He keeps going, thick and generous spurts of cum, one after the other, covering your chest and even your face while his long orgasm lasts. He's not even looking, his eyes are closed and he's biting his lips as he covers you in his half-demon seed.";
		say "     'Oh, fuck... Fuck...! Damn! Wow! That... was a HELL of a release!' he exclaims as he opens his eyes to look at you, all drenched in his sex juice, 'Uh... Oops, I guess I... gave you a cum bath. Told you it was gonna be big.' You can't help but smile back at him, glad that he enjoyed your treat. 'Just imagine how full you'd be if this entire load ended up inside you... Just a thought.' he teases, winking and grinning at you, wiping out a single drop of cum from your face and licking it off his thumb. 'Hm, still tasty. You should try it. It'd be a fun way to clean yourself. I'd help you, but I must return to my studies. Maybe we can catch up with that little idea later?' With this, the sorcerer gives you one last smile before he returns to his books, leaving you soaked with his sperm.";
	if a random chance of 3 in 4 succeeds and loyalty of Xaedihr < 30:
		say "     [bold type]The time you've spent with Xaedihr made him open up more to you.[roman type][line break]";
		increase loyalty of Xaedihr by 1;
	NPCSexAftermath Player receives "OralCock" from Xaedihr;
	now PlayerFucked of Xaedihr is true; [he had a sexual encounter with the player]
	now lastfuck of Xaedihr is turns;

to say XaedihrGetBlown:
	project Figure of Xaedihr_Underwear_icon;
	say "     Giving the half-demon a suggestive glance downwards and an all but subtle smile, you place your hand over the side of his waist and lean closer to him, looking in his eyes as your lips nearly meet his. His gaze strikes back at you with an intrigued, yet pleased look in his face, knowing you want to get naughty with him. 'Someone's horny, huh?' he teases, grabbing your wrist and leading your hand over the increasing bulge in his tight black pants. But you want something different this time, and you tell Xaedihr what's on your mind. 'So you want to get some head, instead? Well... I guess you can take it as a reference for when you're blowing me.' he responds, winking at you, starting by kissing his way towards down below [if Player is not naked]while removing your clothes[else]before your naked body.[end if]";
	say "     The half-demon only drops his long jacket to the floor, and doesn't worry about anything else but your hardening length. When he gropes your cock with his hands, you immediately feel your erection throbbing with his masterful touch, quickly learning your sweet spots before going for the blowjob. [if Cock Length of Player < 12 or Cock Length of Player is 12]'Take notes while I'm deepthroating you, alright? And try not to cum right away...' he teases you just as he's wrapping his lips around the tip of your dick, letting it slowly sink deeper in his mouth. Xaedihr manages to do this without a problem, you almost can't believe how your cock is fully submerged in his throat, feeling like every inch of your shaft is being rubbed across a warm fleshy tunnel. He makes eye contact with you, his provocative lime green gaze telling you how easily he's deepthroating your cock, and it feels incredible...[else if Cock Length of Player > 12]'Well, I can make miracles happen, but not this big. Don't worry, I'll show you an equally effective technique.' he teases you just as he's wrapping his lips around the tip of your dick, having his tongue licking your sensitive glans all over like a wiggling snake. To further excite you, he uses his hands, feeling like soft silk rubbing across your shaft as he does his best to cover your entire manhood. He then focuses on the head, taking as much of it as possible inside and giving it some generous caressing.[end if]";
	WaitLineBreak;
	say "     Of course, the sex expert doesn't leave your balls off the play. He shares a little of his most preferred oral thing by tugging on your balls and gently wiggling his tongue all over them, while feeling them up with one hand. All this pleasure is driving you crazy, rarely you find someone so good and confident about providing others a good time, and he certainly keeps reminding you of that. The sorcerer then places both his hands around your shaft and strokes you softly at first, then going faster and faster. Eventually you're feeling yourself nearing orgasm, and you can't help but start jerking your hips, to which he grins and teases you more.";
	if a random chance of 1 in 2 succeeds: [he swallows]
		say "     'I wonder what your cum tastes like... Might as well give it a try and see!' The half-demon gets his mouth into position as he keeps wanking you off. There's no describing how soft his hands are, your cock simply feels so good in his grasp that you don't want this to be over so soon. When he makes you hit the edge, it's like he heard your thoughts, as he decelerates his motions, now very carefully rubbing across the tip of your cock and over your cum slit. The mage is edging you on purpose, and you stand stiff like a rock, holding for as long as you can. 'Sounds like you really took what I said literally, huh? It's actually cute seeing you wanting to cum so bad but trying to hold it off so hard...' At some point, he stops altogether, with his firm grasp feeling your cock pulsing like mad.";
		WaitLineBreak;
		say "     You can't stand the urge to cum anymore as he kisses your cock softly, opening his mouth around the tip as he starts stroking it again. He jerks it faster... and faster... then he's waiting for your load with his tongue out and looking in your eyes. The image is so hot that you don't even realize you're about to shoot, but he rapidly reacts by taking your outcoming torrents of jizz completely inside his mouth. Milking you out through the entire climax, your body spasms near your abdominal area and standing on your feet becomes a challenge. Never you thought you'd cum so hard at the hands - and mouth - of an half-demon. When it finally begins to subside, Xaedihr pulls your cock out of his mouth, licking off any drop of cum still left around his lips.";
		say "     'Now that was a nice load. Knew this would be worth it. I'm impressed, actually! Though of course you owe it all to my skill, but you don't need to thank me. Hope you enjoyed yourself and have learned with this. he says as he stands up, giving you a pat on your shoulder. 'You owe me a blowjob when you catch your breath, so make sure you come pay later.' Winking at you with a chuckle, Xaedihr leaves to return to his studies. Like always, you're left to clean up the mess on your own... But you get the feeling he enjoys seeing you do that.";
	else: [he checks how far your shoot]
		say "     'I wonder how far you can shoot... Might as well give it a try and see!' says the half-demon as he keeps wanking you off. There's no describing how soft his hands are, your cock simply feels so good in his grasp that you don't want this to be over so soon. When he makes you hit the edge, it's like he heard your thoughts, as he decelerates his motions, now very carefully rubbing across the tip of your cock and over your cum slit. The mage is edging you on purpose, and you stand stiff like a rock, holding for as long as you can. 'Sounds like you really took what I said literally, huh? It's actually cute seeing you wanting to cum so bad but trying to hold it off so hard...' At some point, he stops altogether, with his firm grasp feeling your cock pulsing like mad.";
		WaitLineBreak;
		say "     You can't stand the urge to cum anymore as he kisses your cock softly, positioning himself slightly next to your length as he starts stroking it again. He jerks it faster... and faster... then he's eagerly waiting for your load to burst free. It doesn't take long until you finally feel your load being pushed through your cock, spurts of jizz being shot at such an high force that your body spasms near your abdominal area, standing on your feet becoming a challenge. Never you thought you'd cum so hard at the hands - and mouth - of an half-demon. When it finally begins to subside, Xaedihr lets go of your dick, licking off some of the cum that ended up in his fingers. You can see the trail of semen you created across the floor.";
		say "     'Well well! You covered a really long distance! I'm impressed, actually! Though of course you owe it all to my skill, but you don't need to thank me. Hope you enjoyed yourself and have learned with this.' he says as he stands up, giving you a pat on your shoulder. 'You owe me a blowjob when you catch your breath, so make sure you come pay later. Winking at you with a chuckle, Xaedihr leaves to return to his studies. Like always, you're left to clean up the mess on your own... But you get the feeling he enjoys seeing you do that.";
	if a random chance of 3 in 4 succeeds and loyalty of Xaedihr < 30:
		say "     [bold type]The time you've spent with Xaedihr made him open up more to you.[roman type][line break]";
		increase loyalty of Xaedihr by 1;
	NPCSexAftermath Xaedihr receives "OralCock" from Player;
	now PlayerFucked of Xaedihr is true; [he had a sexual encounter with the player]
	now lastfuck of Xaedihr is turns;

to say XaedihrAssFucked:
	say "     Giving the half-demon a suggestive glance downwards and an all but subtle smile, you place your hand over the side of his waist and lean closer to him, looking in his eyes as your lips nearly meet his. His gaze strikes back at you with an intrigued, yet pleased look in his face, knowing you want to get naughty with him. 'Someone's horny, huh?' he teases, grabbing your wrist and leading your hand over the increasing bulge in his tight black pants. You feel his next words whispered onto your ear 'So, how's it going to be... Wanna feel my cock grow?' as he further encourages you to feel his crotch, guiding you to slip your hand under his underwear. He embraces you with his powerful arms, reaching around your waist and pulling you for a deep kiss, a masterful tongueplay that leaves you panting. You use the chance to guide him over your rear, suggesting that you're wanting something different this time. 'Oh...! I know what you want... And you'll get it. You definitely will.'";
	say "     He's still kissing you when he slips behind you, his lips close to your neck before heading back to your ear. 'If you wanted me to fuck your ass, you could have just asked. I'd take you any day.' His masculine voice sends shivers down your spine as the sexy redhead feels up your butt. You can feel the bump in his pants rubbing against your backside, growing bigger by the second.[if player is naked]In a tease, he slips his bulge between your cheeks, giving you a slight thrust forward before beginning to strip.[else]With his lust increasing, Xaedihr slowly strips you off your gear, kissing his way over as, if by a tease, he slips his bulge between your cheeks, giving you a slight thrust forward before beginning to take his own clothes off.[end if] You feel the redhead crouching down behind you as his soft hands gently slide over your body, and that's when you feel his lips slowly kissing their way across your back. 'If you're going to take me, you'll need to be well prepared. But I can help you with that.'";
	WaitLineBreak;
	project Figure of Xaedihr_NudeHard_icon;
	say "     Not long after, you feel a warm tongue sliding in between your ass cheeks, to which you immediately shift your legs to allow Xaedihr a deeper licking. You can hear - and feel - him chuckling as you give yourself in to his care. His tongueplay is incredible, wiggling around and inside your anus so fluidly that it reminds you he's not completely human. Whatever he's doing is making you feel so good that you let out a moan without knowing. Though this is just the beginning of what he has planned for you. While your mind is distracted enjoying that sweet sensation, you barely notice him getting up, holding you from the back of your neck, and forcing you on fours. 'Ready to take it in the ass like a good [boygirl]? I hope you are.'";
	say "     While he tends to be a tease, Xaedihr doesn't make you wait long for his foot-long to invade your anus. Going in slowly at first, you feel the tip stretching your hole before he slides in the rest. Getting a good grip of your hips, the mage pushes his entire length inside you, or at least, what you can take. Contrary to what it could have seemed, he's being rather gentle with you. 'Your ass feels so good... I fucking love it.' He starts to pound you, [if Player is male]feeling your prostate[else]your pleasure center[end if] stimulated with each thrust, and he surely puts just the right amount of force into it, showing that he really knows what he's doing. At some point, he's fucking you harder, grabbing you by the hips and pulling you to him with each thrust, as you feel his sizable balls against your perineum.";
	WaitLineBreak;
	say "     You recall the half-demon having a good amount of stamina, and that's more evident than ever here. He fucks you for a really good while before he's panting and feeling his load wanting to leave. 'Fuck... It's coming closer... Hope you don't mind me cumming inside...' he says, not really caring about your answer as he picks up the pace and fucks you harder, powerful thrusts that make the skin on skin clashing loud like slaps. Eventually, he leans over you, and you can feel his entire body holding you tight from behind as he's about to cum. Soon, you feel his large meat pulsing inside you, and followed by a grunt of pleasure, he unleashes his half-demonic seed in you. Spurt by spurt you're filled by him, and you too inevitably hit past the edge, [if Player is male]leaving a trail of cum on the floor as you shoot[else]your body shaking in an intense wave of pleasure.[end if][line break]";
	say "     While you both take a time to catch your breaths, Xaedihr pulls out as his seed leaks out of your hole. 'Damn! Wow! That... was a HELL of a release!' he exclaims as he opens his eyes to look at you, creampied by his efforts. 'You're gonna be full for a while, hope I didn't cause you a bellyache.' he teases, winking and grinning at you as you gaze at him from under your shoulder. 'It's a really nice ass you've got, you know? Maybe when this is all over, I can have you as my servant. You know, to take care of any itches I might have during my future researches. No promises, though.' With this, he leaves you to return to his studies, savoring the view of your tired body and cum leaking hole from a distance. The man sure is naughty.";
	if a random chance of 3 in 4 succeeds and loyalty of Xaedihr < 30:
		say "     [bold type]The time you've spent with Xaedihr made him open up more to you.[roman type][line break]";
		increase loyalty of Xaedihr by 1;
	NPCSexAftermath Player receives "AssFuck" from Xaedihr;
	now PlayerFucked of Xaedihr is true; [he had a sexual encounter with the player]
	now lastfuck of Xaedihr is turns;

to say XaedihrFuck:
	say "     Giving the half-demon a suggestive glance downwards and an all but subtle smile, you place your hand over the side of his waist and lean closer to him, looking in his eyes as your lips nearly meet his. His gaze strikes back at you with an intrigued, yet pleased look in his face, knowing you want to get naughty with him. 'Someone's horny, huh?' he teases, grabbing your wrist and leading your hand over the increasing bulge in his tight black pants. You feel his next words whispered onto your ear 'So, how's it going to be... Wanna feel my cock grow?' as he further encourages you to feel his crotch, guiding you to slip your hand under his underwear. He embraces you with his powerful arms, reaching around your waist and pulling you for a deep kiss, a masterful tongueplay that leaves you panting. You use the chance to reach over his rear, feeling up his firm bubbly glutes under your palm. 'Aren't you pushing it a little now? At least request permission first!' he responds, but doesn't feel particularly bothered. He lets you continue, guiding your other hand over and letting you slip them under his pants.";
	say "     'If you want this ass so bad, then... We'll do this my way.' With this said, Xaedihr drops his long jacket to the floor and begins undoing the zip in his pants. [if Player is not naked]You also begin removing your gear in front of him, as he eyes you from head to toe while removing his last piece of clothing.[else]As you're already standing naked in front of him, he eyes you from head to toe while he removes his last piece of clothing.[end if] He proceeds to walk up to you, and you can't help but notice his foot-long of a cock already rock hard, feeling it throbbing against your belly as he gives you another kiss. Now you're free to grope his ass once again before he whispers 'Lie down for me. I need to get my hole wet...' Following his request, you do as he says, sitting back on the floor as observes. 'Heh, you look hot from this angle. Should have done this more often.'";
	WaitLineBreak;
	project Figure of Xaedihr_NudeHard_icon;
	say "     Following the tease, Xaedihr places himself above you, his legs on each side of you as he crouches down on your face. Getting on his knees, he spreads his smooth buttcheeks only centimeters away of your mouth, allowing you to reach his hole with your tongue. 'Ohh... yeah, that's it... Feels fucking great...!' The more he moans, the more he lowers his ass over your face, and he's eventually sitting on you while you rim his anus. Making out with the moist and squishy opening in your brief world of darkness, you can hear the mage moaning, crazy in lust as you slip your tongue in deeper. 'You really like ass, huh? I could have you down there all day...' To your surprise, he presses his butt down softly and grinds over your face, enough to make you unable to breathe for a few seconds, then getting up as he turns around to face you.";
	if Cock Length of Player <= 12: [Xaedihr takes the whole thing]
		say "     His hands move for your cock, giving it a stroke as the mage places himself above it. 'Now that I'm all nice and wet, I should be able to take you in me completely.' Looking down on you with that sexy grin of his, he grabs it firmly and begins squatting down over your throbbing manhood. Soon you feel his tasty hole opening around your prick, feeling so soft and squishy that it makes you shudder in pleasure. The warmth from his body is slowly shared with your dick as it gets in deeper, and he was not lying about being able to take the whole thing. 'There we go... it's all in. You like that, don't you?' he keeps teasing you while moving his butt steadily, up and down, across your entire length. This is enough to make your heart beat faster and wanting to jerk your hips, but the sorcerer keeps you in place. 'I said it had to go my way, didn't I? If you want to enjoy this, you'll have to be a good [boygirl].'";
		WaitLineBreak;
		say "     Frustration gradually takes its place as he forces you to have his ass very slowly, while your brain just begs to go faster. The way your cock rubs across his fleshy tunnel, slick and warm, so tightly wrapped around it, just drives you crazy. It gets even worse when he seems to flex his ass muscles just so you can feel them tighter around your dong. He's thoroughly torturing you with bliss, until the point your hips involuntarily give in, despite his attempts at keeping you still. 'You really want to fuck me, I see... Alright, I'll give it to you.' With this, Xaedihr leans over you slightly, with his hands on your chest, as you feel his overpowering weight over you. With still slow but sensual movement, he's no longer squatting but moving his entire body over you, and you can feel his own meat and balls rubbing against your abdomen.";
		say "     He doesn't stop there. Noticing your desire to fuck him harder, he obliges at a certain point, accelerating his body motions over you, back and forth, faster and faster... 'Damn, this sure feels good...' he comments, amidst some moaning. For someone who says he doesn't bottom as often, the half-demon surely knows how to handle a dick in his ass, and he certainly doesn't disappoint the quicker he moves while riding you. He's not trying to stop you anymore, letting you freely thrust into him, and you go as hard and deep as you can on that sweet bubble butt of his. You've got him smiling and moaning loud, encouraging you to keep going... 'Fuck yes...! Don't stop... Please, don't fucking stop...'";
		WaitLineBreak;
		say "     When you've got him begging like that, you can't really let him down, now. Giving all your might to fuck the hell out of the demonologist, you even grab his legs to attain a more powerful pounding. Inevitably, you start to feel your load pumping through, and you can't find any strength in yourself to resist cumming inside Xaedihr's ass... 'Oh fuck... I'm so close now...' You keep going, not stopping, not even for a second, and definitely not when you're going to make an expert in sex cum hands free! Not too soon after, you're filling the half-demon's rear with your jizz, your manhood pulsing with every spurt leaving through it. Following you, the sorcerer also busts his load all over you and himself, giving you both a cum bath which seems to last for a whole minute.";
		say "     Your orgasms eventually subside, and Xaedihr finds himself still sitting on your meat, panting as he looks down, eyeing your body that he just drenched. 'Damn, making me cum hands free, you nasty thing... We might do this again, after all.' Smiling, he leans over to you and plants a deep kiss on your lips, tongue-wrestling you as your now softie slides off his hole, followed by your cum leaking through. You just lie down there, together, all sweaty and sticky, for some time. Though you'll have to inevitably get up and clean up yourselves.";
	else if Cock Length of Player > 12: [xaedihr takes only a portion of your cock]
		say "     His hands move for your cock, giving it a stroke as the mage places himself above it. 'Now that I'm all nice and wet, I should be able to take... at least a portion of it in me.' Looking down on you with that sexy grin of his, he grabs it firmly and begins squatting down over your throbbing manhood. Soon you feel his tasty hole opening around your prick, feeling so soft and squishy that it makes you shudder in pleasure. The warmth from his body is slowly shared with your dick as it gets in as deep as he possibly can. 'You're quite the big guy, aren't you? I'll need to develop a spell to take all of this...'. He just goes on about teasing you while moving his butt steadily, up and down, across your length. This is enough to make your heart beat faster and wanting to jerk your hips, but the sorcerer keeps you in place. 'I said it had to go my way, didn't I? If you want to enjoy this, you'll have to be a good [boygirl].'";
		WaitLineBreak;
		say "     Frustration gradually takes its place as he forces you to have his ass very slowly, while your brain just begs to go faster. The way your cock rubs across his fleshy tunnel, slick and warm, so tightly wrapped around it, just drives you crazy. It gets even worse when he seems to flex his ass muscles just so you can feel them tighter around your dong. He's thoroughly torturing you with bliss, until the point your hips involuntarily give in, despite his attempts at keeping you still. 'You really want to fuck me, I see... Alright, I'll give it to you.' With this, Xaedihr speeds it up, squatting over your dick a little quicker this time, making eye contact with you as he milks your cock with his ass.";
		say "     He doesn't stop there. Noticing your desire to fuck him harder, he further accelerates his body motions over you, up and down, faster and faster... 'Damn, this sure feels good...' he comments, amidst some moaning. For someone who says he doesn't bottom as often, the half-demon surely knows how to handle a dick in his ass, and he certainly doesn't disappoint the quicker he moves while riding you. 'Fucking hell, I never thought I'd like such a big cock in me...'' He's not trying to stop you anymore, letting you freely thrust into him, and you go as hard and deep as you can on that sweet bubble butt of his. You've got him smiling and moaning loud, encouraging you to keep going... 'Fuck yes...! Don't stop... Please, don't fucking stop...'";
		WaitLineBreak;
		say "     When you've got him begging like that, you can't really let him down, now. Giving all your might to fuck the hell out of the demonologist, you even grab his legs to attain a more powerful pounding, going as deep as you can while trying not to hurt him. Inevitably, you start to feel your load pumping through, and you can't find any strength in yourself to resist cumming inside Xaedihr's ass... 'Oh fuck... I'm so close now...' You keep going, not stopping, not even for a second, and definitely not when you're going to make an expert in sex cum hands free! Not too soon after, you're filling the half-demon's rear with your jizz, your manhood pulsing with every spurt leaving through it. Following you, the sorcerer also busts his load all over you and himself, giving you both a cum bath which seems to last for a whole minute.";
		say "     Your orgasms eventually subside, and Xaedihr finds himself weak on the legs, panting as he looks down, eyeing your body that he just drenched. 'Damn, making me cum hands free, you nasty thing... We might do this again, after all.' Smiling, he lies down on top of you and plants a deep kiss on your lips, tongue-wrestling you as your now softie slides off his hole, followed by your cum leaking through. You just lie down there, together, all sweaty and sticky, for some time. Though you'll have to inevitably get up and clean up yourselves.";
	if a random chance of 3 in 4 succeeds and loyalty of Xaedihr < 30:
		say "     [bold type]The time you've spent with Xaedihr made him open up more to you.[roman type][line break]";
		increase loyalty of Xaedihr by 1;
	NPCSexAftermath Xaedihr receives "AssFuck" from Player;
	now PlayerFucked of Xaedihr is true; [he had a sexual encounter with the player]
	now lastfuck of Xaedihr is turns;

to say XaedihrBrutus:
	say "     Accompanied by your demon brute companion, you shift your gaze from one to the other and ask Xaedihr if he'd be into some threeway fun. He's clearly intrigued at your proposal, but Brutus instantly agrees when you finish speaking. 'Well, I guess now it's a good time as any to join in some group sex. I'm fond of musclebound dudes, as well...' he responds while glancing around the demon's jacked physique. You could tell he's really enjoying the eyecandy. 'Big guys can take me with ease, which is I like best. Surely that won't be a problem for your friend?' - he asks while passing by you, while Brutus stares attentively at the sorcerer - 'I'll let you get behind me, in that case. I've got plenty on the front already.' With the situation planned, Xaedihr grabs your arm, pulling you with him as he approaches the big brute.";
	say "     Usually Xaedihr is not fond of demons, but seeing Brutus['] purified gaze seems to set him at ease. You're standing behind the mage as he slips a hand over your hellish friend's solid chest, from which you hear a low, deep growl of pleasure. 'I wonder what they feed these guys back in Hell... To have them grow so big!' a comment followed by moving his touch lower, across the ripped abs and just above his demonic junk. You distract yourself watching this interaction, only to get aroused by watching the growing interest between both. 'Are you going to keep staring at us, or should we finally get started?' he asks, looking back at you from his shoulder.";
	WaitLineBreak;
	say "     Seeing the half-demon redhead so eager to begin having fun, throwing his long jacket off to the floor in the process and undoing his pants, revealing his also in great shape back muscles, [if Player is not naked]you also decide to strip to your gear and get naked with them.[else]soon to be naked as you are.[end if] Xaedihr has got this pale bubble ass that would be any top's dream, absolutely flawless smooth skin and a great posture that manages to bring the dirtiest fantasies out of the depths of your mind. You see him getting on his knees, with his legs spread apart as he grabs the big demon's cock, which stands erect as soon as his fingers lay on the shaft. The mage looks back at you once more, inviting you to slip your head between his legs for a good time between his cheeks.";
	say "     Giving Brutus a treat of his own, the sorcerer slips his tongue all over the thick throbbing length in a way only he knows, quickly learning about all his sweet spots and nearly driving the brute crazy, something you can conclude by the way he's grunting. Though there's something odd about it, as he seems to patiently allow Xaedihr to do what he wants. He must be really enjoying it! Although he's not the only one grunting when you surprise the half-demon with your tongue in his ass, wiggling it across his tasty hole as you feel it relaxing around it. This mere feeling makes your dick harder and more eager to trade places with your mouth, but you won't be done licking his ass until he's begging you for the fuck. It's rather hot hearing his own moans muffled by a demon brute's cock, but you know that's soon to change.";
	WaitLineBreak;
	say "     You hear a popping sound from above as Xaedihr leans back, taking a deep breath but absolutely smothering your face under his bubble cheeks. He takes these brief seconds to let out a 'Fuck yes!' as you struggle to breathe. Though the mage soon ends your torture as he lifts his ass a bit, ordering Brutus to turn around. 'Treat's over, bud. Now I want a piece of that ass...' he says in a commanding tone, and the brute obeys him with no reluctance, even bending over for him, revealing that massive muscular butt of his, each glute bigger than the sorcerer's face. He gets in position to give Brutus some anal preparation, a rimjob he won't soon forget, as masterful as an real incubus would do. You're left to do the same with Xaedihr's ass still, albeit having to reach a little higher to tonguefuck that hungry hole. He's so relaxed that you think he could take anything in him right now.";
	say "     The demon brute sure likes having his ass rimmed by an expert in sex - and demonology! - something you can hear by his almost animalistic moaning. While you have this smooth skinned ass grinding over your face, begging your tongue to keep squirming inside, a peek would show you - besides that foot-long of a dick nearly obscuring the entirety of your vision - a big muscle butt taking nearly half of Xaedihr's face between the cheeks! Brutus sure is big, but that means he will take the sorcerer's cock, which would be an issue for a normal-sized human, without a problem. You leave his hole to rest and give him a treat by tugging his balls between your lips for a bit, and that has the half-demon grabbing your head by the back with incredible lust, encouraging you to continue while you slip a finger in his ass. He doesn't say anything, his mouth being too busy preparing a hole for the hard fuck that's about to happen, though you can tell he's as horny as you are to get started with the pounding.";
	WaitLineBreak;
	say "     As you look up, you see the demonologist standing above you seconds before you roll over to get behind him. With a loud slap, Xaedihr spreads the brute's ass cheeks before he rubs the hole with the tip of his dong, while pulling you to himself for an embrace. He urges you to watch his dick getting buried inside the demon's muscular butt, and you can't help but get yours between the sorcerer's glutes. 'You like that, don't you? Feeling my ass around your cock just before I let you in...' he whispers to you, arching his body to tease you further while leaning over the brute's backside. From within a certain angle, you're able to look at Xaedihr's manhood slowly entering Brutus['] ass, and you really can't wait to do the same to the sexy redhead still teasing your cock. 'Go ahead... Do it... I know you want to. And so do I...' he asks, as the rest of his length is put inside, causing the demon to grunt in pleasure.";
	say "     The sorcerer's dirty talking only further arouses you, and with a thrust, you start shoving your [Cock of Player] inside him, feeling his soft and smooth hole slowly stretching around the tip. You hold the redhead in your arms from behind as you thrust in deeper, both of you ballsdeep in the asses in front of you. 'Oh, this feels incredible...!' Looks like he loves being in the middle of the trainfuck, getting penetrated from behind while shoving his dick in the oddly submissive brute. With coordination, you're able to make it work, and letting the mage do most of the movement gives you enough window to thrust when his butt moves back. Soon your motions are harder and deeper, your member reaching further inside the sorcerer's rear with every push. Eventually, he lets you rest your cock fully inside him as you conduct the fuck, having Brutus receiving the half-demon's length the way you give it to him.";
	WaitLineBreak;
	if "Kinky" is listed in feats of player:
		say "     Amidst the intensity of fucking, you feel a sudden pull from Xaedihr as he whispers something onto your ear. 'I could make this even more interesting, if you want... just let me know.' You suppose this has something to do with his magical powers. [bold type]Do you give him the green light?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - Keep it 'vanilla'.";
		if Player consents: [add tentacle fun!]
			LineBreak;
			say "     In response to his suggestion, you tell him to go on ahead. You could swear you heard him chuckle after you gave him total freedom, and it's not long until you begin feeling something warm and wet climbing your leg. It's one - wait, not just one, they're many! - of Xaedihr's magical tendrils, wrapping themselves around you and Brutus with utmost gentleness. Their touch feels incredible, and it only gets better when one of them encircles around your balls, fondling them as you keep thrusting against the mage's ass. This is not the end of it, as more find their way around your [bodydesc of Player] body, moving teasingly around your chest, and the more bold ones keep ascending through it only to stop by your face, forcing their way in your mouth! You find yourself giving a blowjob to one of Xaedihr's tendrils, and by the sounds he's making, he's definitely enjoying all the enhanced pleasure you and the demon brute are providing.";
			say "     You hear your companion's beastly grunts as the little creatures coming from the floor stimulate him thoroughly. Seeing Xaedihr so lost in all the blissful sensations just makes you want to go harder on him, though you barely have any control of your actions anymore. The tendrils are all over you, caressing every corner of your body, taking over your will to thrust by making that move for you. Some of them slip inside your own ass to reach over your prostate, making your cock twitch inside the sorcerer, to which he responds by further teasing you with his rear against you. Then you keep hearing the loud flesh on flesh clashing as he keeps fucking Brutus, whom you see sharing the same treatment as you. Soon, you're feeling yourself getting closer to orgasm...";
			WaitLineBreak;
			say "     Within moments, your body begins shuddering as your balls initiate the process of pushing your load through... 'Oh, fuck... I'm getting so close...' says the redhead while he completely dominates both you and Brutus with his tendril magic, and you definitely feel them getting moist and thicker. There's this salty substance oozing from them which looks like precum when Xaedihr tightens their grip and pushes them further inside you, and that's when you can't hold it any longer. The stimulation proves to be too much for you, and you end up filling the sorcerer's anus full of your seed, shooting so hard that you doubt he didn't feel it. At the same time, both Xaedihr and Brutus let out a grunt of pleasure as they also hit their climax, the demon brute finding himself fucked hard as he makes a pool of hellish cum underneath him.";
			say "     'Fuck, it feels too good! Aah!' the sorcerer keeps moaning as both you and Brutus are drenched in the tendrils['] white liquid. Anyone who'd pass by would only hear the mixed grunting and moaning coming from the lot of you, followed by breaths of relief as Xaedihr's snake-like extensions begin retracting back to the ground. When you pop out your dick out of his rear, you feel dizzy and at a loss of words. Every muscle of your body is shaking from the experience. 'That was... fucking amazing. I love mixing these in sex. Hopefully you'll let me do this again, if you want to have another go!' says the magician as he gives you a pat on the back, walking around like nothing happened! He surely has a lot of stamina! 'You too, big guy! You make a good pet, too bad you're taken already.' he gives you a mischievous look while giving Brutus['] bicep a squeeze as he leaves you both there to return to his studies.";
			WaitLineBreak;
			say "     Soaked and bathed in an odd mixture of cum and tentacle juice, you lie down with Brutus as you catch your breath. It takes a while until you're both able to get up and proceed with your day.";
			if a random chance of 3 in 4 succeeds and loyalty of Xaedihr < 30:
				say "     [bold type]The time you've spent with Xaedihr made him open up more to you.[roman type][line break]";
				increase loyalty of Xaedihr by 1;
			NPCSexAftermath Xaedihr receives "AssFuck" from Player;
			now PlayerFucked of Xaedihr is true; [he had a sexual encounter with the player]
			now lastfuck of Xaedihr is turns;
		else: [keep it vanilla]
			LineBreak;
			say "     In response to Xaedihr's suggestion, you shake your head and give him a kiss on the neck to keep the mood. He lets out a soft exhale as you both return your focus to the sex";
			XaedihrBrutusTrainFuckVanilla;
	else:
		XaedihrBrutusTrainFuckVanilla;

to XaedihrBrutusTrainFuckVanilla:
	say "     Your motions begin to fasten up, enjoying the sensation of the half-demon's hole clenching around your length, thrusting back and forth, hard and deep, as you begin feeling the climax starting to come. Hearing both moans and grunts from your two fuck buddies ahead of you turns you on more than anything, and eventually, your body begins shuddering as your balls initiate the process of pushing your load through. 'I'm getting close, here...' says the redhead as he regained his free movement, jerking his hips back and forth, effectively fucking the demon brute's ass while giving you what you need to hit the edge. With a warning spurt of jizz leaving your dick, the sorcerer focus his movements on you, milking your load with his hole until the very last drop falls inside him.";
	say "     'That's some hot stuff right there... now's my turn!' he moans as you keep your still pulsing length inside him, thrusting deeper inside Brutus as he too unloads his seed into him, blasting so hard that even the brute can't help but groan in lust, as he feels the thick juice rapidly filling him up. This sets the demon loose, as you see your companion's cum gushing out in an equally tremendous quantity, forming a pool of cum just underneath him. Xaedihr keeps pounding him as spurts of demonic jizz are still ongoing, his beast-like grunts audible from a distance. 'Oh, fuck yes! Let it all out, big boy! Sounds like you love a good fuck in the as, huh?' he teases as he pulls out, a trail of semen following as it oozes from the brute's hole.";
	WaitLineBreak;
	say "     Tired and sweaty from all the action, you take your time to catch a breath as Xaedihr turns to you. 'That was hot! I hope we'll do this again... Just hit me up if you want to have another go!' he gives you a pat on the back, walking around with more energy than he should have left. He surely has a lot of stamina! 'You too, big guy! You make a good pet, too bad you're taken already.' he gives you a mischievous look while giving Brutus['] bicep a squeeze as he leaves you both there to return to his studies.'";
	if a random chance of 3 in 4 succeeds and loyalty of Xaedihr < 30:
		say "     [bold type]The time you've spent with Xaedihr made him open up more to you.[roman type][line break]";
		increase loyalty of Xaedihr by 1;
	NPCSexAftermath Xaedihr receives "AssFuck" from Player;
	now PlayerFucked of Xaedihr is true; [he had a sexual encounter with the player]
	now lastfuck of Xaedihr is turns;

[***********************************************************]
Section 5-3-1 - Sex Menu - Dom Xaedihr scenes
[***********************************************************]

to say XaedihrSubmit:
	if libido of Xaedihr is 4: [player was uncertain, this will solve that]
		say "     With the previous sex talk you both had, the possibility of submitting to him clearly lingered in your mind, but the response you gave him was uncertain, and he takes note of that from your body language, hesitating in whatever you should say or do when approaching the matter. 'What's wrong? Is it still about that talk we had?' he asks, approaching you gently and taking you in his embrace. 'As I've told you before, it's nothing you have to do if you don't want to. But of course, I'd be... more than happy if you'd let me be in control... You don't have to worry, I'll take good care of you.' says the half-demon as he shows a slight mischievous smile, though keeping his nice gestures. 'I just don't want to tell you what we'll be doing because I want it to be a surprise, but I'm sure you'll like it.'";
		LineBreak;
		say "     His voice sounds reassuring in your head, and his intentions seem to be both his pleasure and yours. You'll have to make up your mind now... [bold type]How is it going to be?[roman type][line break]";
		say "     ([link]Y[as]y[end link]) - Let's do it. He makes it sound like it'll feel very good.";
		say "     ([link]N[as]n[end link]) - Just cut it here. You're not interested in this.";
		if Player consents:
			LineBreak;
			say "     Giving it a thought, certainty forms in your mind as you nod to him, letting him know that you want to proceed. He chuckles and gives you a sexy grin, pulling you to him as he strokes your cheek. 'So you're ready to become my slave for the day? Hah... just kidding, we won't go that far yet... or is that what you wanted?' he teases you, with a louder laugh this time, though he figures it's time to stop joking around and get into action.";
			WaitLineBreak;
			say "[XSubmitTentacleEdging]";
		else:
			LineBreak;
			say "     As you put thought into it, he looks at you hopeful, but you're not really interested in doing this. Your words are received with deep disappointment. 'Alright, I won't insist anymore. If you don't want to do it, who am I to convince you of otherwise. I'd just appreciate that you give me clear answers and don't get my hopes up like this, that's... cruel.' To your surprise, he seems rather angry at you, sighing as he pulls away from you. 'Sorry, I don't want to sound mad and you totally don't deserve that. Just don't do it again, please. I get worked up for nothing...' The more he tries to justify himself, the more you know he's not taking your position well. After a while, he just decides to return to his studies without any further words. It's probably best to give him some time.";
			if loyalty of Xaedihr < 30:
				say "     That seems to have taken a little toll on his loyalty.";
				decrease loyalty of Xaedihr by 3;
			now libido of Xaedihr is 99; [nothing will even happen anymore regarding his libido]
	else if libido of Xaedihr >= 3 and libido of Xaedihr < 6: [a sure response in the sex talk + repeatable scene]
		say "[XSubmitTentacleEdging]";
	else if libido of Xaedihr >= 6: [Dom Xaedihr route unlocked]
		say "     You decide to let your intentions be clear to the sorcerer, that you desire to submit to him, once more. 'Is that so? Who would know you'd be such a willing servant of mine. Very well, then... Since it was your initiative, I'll let you pick how you shall serve me.'";
		LineBreak;
		say "     Following his generous offer, [bold type]what would you like to do with the half-demon?[roman type][line break]";
		WaitLineBreak;
		say "[XaedihrDomSexMenu]";

to say XaedihrDomSexMenu:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Have him edge you with his magic tentacles";
	now sortorder entry is 1;
	now description entry is "Let Xaedihr will use his magical tendrils to have his way with you";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Worship his body and make him feel appreciated";
	now sortorder entry is 2;
	now description entry is "Get down on Xaedihr's muscles";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Get him to facefuck you";
	now sortorder entry is 3;
	now description entry is "Have the sorcerer use your throat";
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
				if (nam is "Have him edge you with his magic tentacles"):
					say "[XSubmitTentacleEdging]";
				else if (nam is "Worship his body and make him feel appreciated"):
					say "[XSubmitBodyWorship]";
				else if (nam is "Get him to facefuck you"):
					say "[XSubmitFacefuck]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the half-demon, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say XSubmitTentacleEdging:
	say "     With the talking out of the way and ready to proceed into the fun, you let the half-demon know that[if libido of Xaedihr > 2 and libido of Xaedihr < 5] you're ready for what he has in mind[else if libido of Xaedihr > 4] you're left craving for some more of that special edging he does so well[end if] Without any further ado, the sorcerer simply leans in for a deep kiss, his hands heading directly for your butt as he gives it a hard squeeze. He practically gives your mouth a full licking with his nimble tongue, taking as much time as he wants. He pulls his lips away after a good while, and while he's grabbing your head, his tongue finds its way across your cheek, slowly sliding upwards and leaving a subtle trail of saliva behind. With a grin, he gets some distance between you both, pushing you back gently.";
	say "     [if Player is not naked]'Take off your clothes, now. And you better put on a show for me, too[else]'Now, show off that sexy body for me[end if].' he orders, and you do as he says. Standing naked in front of the mage, you make sure you do your best at teasing him with your good looks, showing off your [bodydesc of Player][bodytype of player] body and rubbing it all over sensually. Xaedihr also strips as he watches you, unable to hide his arousal, so you turn around and allow him to have a good look at your backside. Putting one hand under one of your glutes, you then give it a slap and turn around again to face the sorcerer, who's already naked with his foot-long of a cock rising to attention. His eyes run through your body from head to toe before he signs you to come closer.";
	WaitLineBreak;
	project Figure of Xaedihr_NudeHard_icon;
	say "     Obliging his command, you walk towards the muscular half-demon, who's already biting his lower lip and giving his manhood a few unaware strokes. Once you're within his reach, he pulls you to him, both your warm bodies rubbing against each other as he plants another passionate kiss on your mouth. As your tongues playfully wrestle against each other, you start feeling two rather slimy and wet tendrils circling around your ankles and calves. Xaedihr's holding you in place, lips attached to yours, all while his magical extensions take a good grasp of your legs and arms, pulling them open and denying you any freedom of movement. Restrained as you are, you find yourself at the sorcerer's complete mercy, who keeps himself at a very short distance from you, now rubbing your body all over with one of his hands as the other is still gently stroking his meat.";
	say "     Somehow his touch feels almost overwhelmingly good, and you can't help but whimper at his caresses. 'If you're already so worked out with this, I can't wait to see you squirm around, begging me to make you cum.' he teases, his words only making your [if Player is male][Cock of Player] penis twitch[else if Player is female]womanhood leak[else]sensitive crotch tingle[end if] with desire. Your only option at getting off is by his actions, as the dark tendrils are holding you still with impressive strength. Now that his intentions are well noted, ";
	if Player is male:
		say "he takes a hold of your throbbing cock, his firm grasp tightening around your shaft as he gently strokes it up and down, slowly yet effectively, giving you so much pleasure that you think you won't last long... However, once you get near the point of no return, he slows down, sometimes stopping altogether, until you're calm, only to proceed stroking again right afterwards.";
		WaitLineBreak;
		say "     'I've got you there... So close...' he murmurs softly as his fingers work your cock around, giving your hips an enormous urge to thrust against his hand. Knowing this, he places both his palms around the tip of your dick, to which you immediately reply with a hard pounding, feeling your shaft rub against the skin of his surprisingly soft hands. You're moaning helplessly when he loosens up his grasp, no longer giving you enough friction for satisfaction. 'That's hot... Trying everything you can for just a little bit of pleasure...' he teases you, holding your shaft again and give you the much needed stroke. To your frustration, he keeps the slow strokes, alternating between them and a few quick ones that get you dangerously close to cum. Once more, he stops abruptly, leaving your dick dangling hard in the air, throbbing mad and needy, as you let out a cry. This only gets worse as one of Xaedihr's tendrils decides to shove itself between your buttocks, rubbing against your hole, and you swear you won't be able to endure such overwhelming amount of pleasure for much longer!";
	else if Player is female:
		say "he places his hand under your vulva, slowly pressing his fingers between the labia as you feel his thumb carefully caressing the area surrounding your clit. His other hand doesn't just worry about his own pleasure, however, as he stops stroking himself for a bit to grope around your chest as well, providing you so much joyful sensations that you feel yourself getting close to orgasm. He senses this, slowing down, sometimes stopping altogether, until you're calm, only to proceed fingering you right afterwards.";
		WaitLineBreak;
		say "     I've got you there... So close...' he murmurs softly as his fingers sink in deeper inside your moist cunt, giving your hips an enormous urge to move around against his hand. Knowing this, he buries his two fingers all the way in, then out in slow motions, to which you immediately reply with a needy moan. But then, he pulls out, followed by a thin stream of your sex juices coating his hand, which he brings to his mouth and licks clean. 'Mmh... That's hot... So desperate for pleasure, aren't you? And quite tasty too...' he teases you, placing his hand back, only barely touching your vulva. But soon, he's fondling it again, giving you his fingers until you're brought close to the edge again, then stops abruptly once more. You let out a cry, but it only gets worse as one of Xaedihr's tendrils decides to join the fun, pressing lightly against your pussy, and you swear you won't be able to endure such overwhelming amount of pleasure for much longer!";
	else:
		say "he gives your sensitive crotch a nice fondling, and his touch on your genderless pleasure area is so masterful that you're quickly left wanting him to go harder. The sorcerer obliges your desires, but only for a moment, as he brings you closer to orgasm with ease. Sensing this, he slows down, sometimes stopping altogether, until you're calm, only to proceed rubbing your lower areas right afterwards.";
		WaitLineBreak;
		say "     I've got you there... So close...' he murmurs softly as he does his best to rub all your sensitive areas, only to stop abruptly once you reach the edge again. He keeps doing this over and over again, only making you wiggle and squirm, whimpering for more. 'Mmh... That's hot... So desperate for pleasure, aren't you?' he teases you, then goes back to edging you, fondling your sexless crotch for a moment, then stopping again, leading you to frustration. You let out a cry, but it only gets worse as one of Xaedihr's tendrils decides to shove itself between your buttocks, rubbing against your hole, and you swear you won't be able to endure such overwhelming amount of pleasure for much longer!";
	say "     This ordeal continues for several minutes, to what seems to be about half an hour. Continuous teasing and caressing, all stopping just before you cross the point of no return, only to resume at its fullest, over and over again... Your mind feels frail as your body can only squirm around, your whimpering just making the sorcerer grin in satisfaction as he continues his torture on you unbothered. He leans over to kiss your neck briefly, then shifts his kissing around your ear, using the chance to whisper 'If you're a good [boygirl], you'll know how to beg.' His words have an almost immediate effect, but only you ultimately decide what to do next. If you beg him, he might let you cum, but if you refuse, who knows what he'll have in store for you...";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Beg him to let you orgasm!";
	say "     ([link]N[as]n[end link]) - Be a bad [boygirl].";
	if Player consents: [player begs and gets to cum the good way]
		LineBreak;
		say "     Building up the overwhelming will in you to get your long awaited release, you give him your best at begging, repeating it once or twice as he smiles back at you, happy with your behavior. 'You want it badly, huh?' he teases you as";
		if Player is male:
			say "his grasp around your cock tightens, stroking your shaft faster and faster, rolling his thumb over the tip, and you can't help but moan and squirm around as you feel your load building up, only to nearly explode all over the sorcerer's bare torso. Each shot of cum only lands on his chest as he gives you an open smile. 'Yeah, that's it! Give me your best!' he encourages you, which somehow seems to deliver even more force to your orgasm, for a few shots at least, until it begins to subside after your body twitched around enough.";
		else if Player is female:
			say "his hand spreads all over your womanhood, with two fingers inside your pussy, wiggling around inside you, and his thumb gives your clit incredible pleasure. You can't help but moan and squirm around as you feel your climax taking over you, as the massive wave of joy surges through your body, leaving an open smile on the half-demon's face. 'Yeah, that's it! Enjoy your reward!' he encourages you, which somehow seems to deliver even more strength to your orgasm, at least until it starts to subside after your body twitched around enough.";
		else:
			say "his caressing over your sensitive parts intensifies, leaving you moaning and squirming around as you feel your climax taking over you. A massive wave of pleasure surges through your body, leaving an open smile on the halfdemons face. 'Yeah, that's it! Enjoy your reward!' he encourages you, which somehow seems to deliver even more strength to your orgasm, at least until it starts to subside after your body twitched around enough.";
		if libido of Xaedihr > 2 and libido of Xaedihr < 5: [3 or 4]
			say "     You're left panting as the mage takes you for another tender embrace. 'You did good... see? Wasn't so bad, was it?' he asks you with a now softer tone, stroking your cheek and delivering a gentle kiss on your lips. 'Hope I left you wanting for more.' he adds, winking at you as his tendrils, which were still holding your body in place, begin releasing you and retracting to the ground. You lose your balance once they deliver you to the floor, but the sorcerer grabs you in time to avoid a nasty fall. 'Did this make you that dizzy?! What will be of you when we move on the more hardcore stuff!' says Xaedihr with a joking tone, but he quickly dismisses what he just said with some final words 'Well, you'll tell me how far you want to go. Another time, perhaps... These spells are not easy to maintain for so long!' he says, before turning away to return to his usual affairs.";
			now libido of Xaedihr is 5;
		else:
			say "     You're left panting as the mage takes you for another tender embrace. 'You did good.' he compliments you with a soft whispering tone, stroking your cheek and delivering a gentle kiss on your lips. Hope I left you wanting for more.' he adds, winking at you as his tendrils, which were still holding your body in place, begin releasing you and retracting to the ground. He's careful enough to hold your body as you're delivered to the floor, since the whole ordeal left you rather dizzy. 'Get some rest now, as I'll do the same. These spells are not easy to maintain for so long!' he says, before turning away to return to his usual affairs.";
	else: [player doesn't beg, gets edged further, cums and gets overstimulated as punishment]
		LineBreak;
		say "     You decide to not give him that, biting your tongue as you attempt to endure this sexual torture. Xaedihr doesn't make it easy for you, though, as his teasing continues without an apparent end. Eventually, a little more time for you is too much, and one wrong rub sets your orgasm off wildly! It is then when";
		if Player is male:
			say "his stroking becomes intense, hand around your shaft jerking you off with tremendous speed. You can't help but moan and squirm around as you feel your load building up, only to nearly explode all over the sorcerer's bare torso. Each shot of cum only lands on his chest as he gives you an open smile. 'Yeah, that's it! Give me your best!' he encourages you, which somehow seems to deliver even more force to your orgasm, for a few shots at least, until it begins to subside after your body twitched around enough.";
			say "     But Xaedihr is not stopping. His hand is still stroking your cock, squeezing every drop of cum out, and you start getting worried since your meat is much more sensitive now. 'What's wrong? You didn't ask me to cum, so I figured you weren't satisfied yet...' he teases you with a devilish grin as he grabs your dick by the shaft and rubs the palm of his hand all over your oversensitive glans! The sensation is unbearable and makes you involuntarily struggle against the tendrils, which are still holding you firmly in place. He continues this for another couple of minutes until you're screaming at the top of your lungs, begging him to stop! It's only when a tear escapes your eyes that he stops abruptly, to your relief.";
		else if Player is female:
			say "his fingering and fondling becomes intense, hand all over your vulva wiggling with tremendous force. You can't help but moan and squirm around as you feel your climax taking over you, as the massive wave of joy surges through your body, leaving an open smile on the half-demon's face. 'Yeah, that's it! Enjoy your reward!' he encourages you, which somehow seems to deliver even more strength to your orgasm, at least until it starts to subside after your body twitched around enough.";
			say "     But Xaedihr is not stopping. His hand is still caressing your parts, even after you've had your pleasure, and you start getting worried once his touch shifts to focus on your oversensitive clit. 'What's wrong? You didn't ask me to cum, so I figured you weren't satisfied yet...' he teases you with a devilish grin as his fingers rub and torture your pleasure spot, the sensation beign so unbearable, making you involuntarily struggle against the tendrils holding you firmly in place, that you're forced to scream at the top of your lungs after a couple of minutes, begging him to stop! It's only when a tear escapes your eyes that he stops abruptly, to your relief.";
		else:
			say "his caressing and fondling becomes more intense, hand all over your sensitive crotch wiggling with tremendous force. You can't help but moan and squirm around as you feel your climax taking over you, as the massive wave of joy surges through your body, leaving an open smile on the half-demon's face. 'Yeah, that's it! Enjoy your reward!' he encourages you, which somehow seems to deliver even more strength to your orgasm, at least until it starts to subside after your body twitched around enough. 'Well, given your current state, I can't really punish you how I'd find appropriate for now... a shame.' he says, eyeing you from head to toe, as if saving the image of you, helplessly entangled in this magic tentacles, in his mind for a bit.";
		WaitLineBreak;
		if libido of Xaedihr > 2 and libido of Xaedihr < 5: [3 or 4]
			say "     He's actually grinning at the corner of his mouth, a sign that he really enjoyed edging you like this. His tendrils, which were still holding your body in place, begin releasing you and retracting to the ground. You lose your balance once they deliver you to the floor, but the sorcerer grabs you in time to avoid a nasty fall. 'Did this make you that dizzy?! What will be of you when we move on the more hardcore stuff!' says Xaedihr with a joking tone, but he quickly dismisses what he just said with some final words 'Well, you'll tell me how far you want to go. And I'm sure you understand I might need to push you to the right ways, yeah? Well, another time, perhaps... For now, get some rest, as I'll do the same. These spells are not easy to maintain for so long!' he says, before turning away to return to his usual affairs.";
			now libido of Xaedihr is 5;
		else:
			say "     He's actually grinning at the corner of his mouth, a sign that he really enjoyed edging you like this. His tendrils, which were still holding your body in place, begin releasing you and retracting to the ground. He's careful enough to hold your body as you're delivered to the floor, since the whole ordeal left you rather dizzy. 'Get some rest now, as I'll do the same. These spells are not easy to maintain for so long!' he says, before turning away to return to his usual affairs.";
	if a random chance of 3 in 4 succeeds and loyalty of Xaedihr < 30:
		say "     [bold type]The time you've spent with Xaedihr made him open up more to you.[roman type][line break]";
		increase loyalty of Xaedihr by 1;
	if Player is female:
		NPCSexAftermath Player receives "DildoPussyFuck" from Xaedihr;
	else:
		NPCSexAftermath Player receives "DildoAssFuck" from Xaedihr;

to say XSubmitBodyWorship:
	say "     Having a good look at the half-demon's great physique, despite him being quite a bookworm, you let him know that it would be proper if you gave his muscles loads of attention, which they deserve. You start by complimenting them, especially his arms and chest, all well-built with a lot of muscle mass to love. It makes one wonder how such a person can maintain a body like this when all they do is read and cast spells... Xaedihr chuckles, then gently grabs you by the chin and makes you look into his eyes. 'Being half a demon has its perks... Big brain, big muscles...' He seems to have stopped there, but you know exactly what else is big, too. But, right now, you would prefer to feel up his body, and the sorcerer clearly does not stop you.";
	say "     As you place your hands over the middle opening on his jacket, you begin to feel up his pecs as you push the rest to the sides, the dark leather resting on top of your hands until, suddenly, they are not. It falls on the floor, leaving Xaedihr's torso bare. 'You like big muscles, huh,' he comments with a grin, following your movements without interfering. It looks like he is letting you choose where you want to go for, while observing your efforts.";
	project Figure of Xaedihr_Underwear_icon;
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Kiss his pecs.";
	say "     ([link]N[as]n[end link]) - Go for his biceps and armpits.";
	if Player consents: [pecs]
		LineBreak;
		say "     With such a marvelous pair of pectorals right in front of you, there is no need to think twice. Immediately, you lean your head over his chest and let your lips collide with the muscly pec, to then kiss it around underneath and towards his nipple. As you even, barely, touch them with your mouth, the mage lets out a hesitant moan, quite as if he was trying to contain it. Noticing that he has failed, the sorcerer exclaims, 'Well... Fuck. They're really sensitive. And most definitely hotwired to my dick, somehow.' You have not been licking around his now hard nipples for long until you hear the mage unzip his pants, having placed his foot-long outside while mindlessly jerking it to an easy full erection.";
		say "     'I really like you there, you know...' His tone seems unsurprised, perhaps because he has considered letting you play with his chest, once. What comes next, however, catches you off guard, as his arm comes around your head and begins to smother your face against his pec. 'Work it with your tongue some more... Yes...' His voice seems to be slowly giving in to his lusts, and you can feel his arm moving to stroke his member while you make out with his pecs. He occasionally allows you to go for the other, but always keeping his hand on the back of your skull. 'Fuck, this is hot... Like nursing on my pecs like a good little [boygirl]? Well, shit, I definitely do love you doing just that... Just... keep sucking on them...'";
	else: [biceps and pits]
		LineBreak;
		say "     Xaedihr is really strong-looking in his upper torso, especially his bulging arms. But, for some reason, you find yourself drawn to his biceps, which seem to eat your eyes back, yearning for attention. The mage notices you staring at them, and it takes you a while to realize he was flexing them for you. 'Love at first sight? I'm sure they'd love you back,' he teases you, bringing one of his arms to your face as he uses his other hand to push your head onto it. 'Don't be shy, give it a kiss!' Your lips are simply smothered against the hard surface surrounding his flexed bicep, forcing them open until your tongue is inevitably licking at it. The sorcerer even flexes in your mouth, having you feel it throb while making out with it.";
		say "     'Bet you like that, too...' He says, while you are stuck and forced to worship his arm, but slowly sliding down on it. Soon, you find your face planted against his armpit, instead, and he makes sure it remains really buried in it. 'Know what else demon genes give me?' He asks, and he does not need an answer. The pheromonal scent hits you right then as an overbearing lust strikes you, making you almost hunger for that pit, turning your whole body on with burning desire as you kiss and lick under his arm. While you cannot see him, you just know he is grinning. 'That's right, my [boygirl] slut... Lick my pits like the bitch you are. Don't bother fighting your urges... That'd please me the most.'";
	project Figure of Xaedihr_NudeHard_icon;
	WaitLineBreak;
	say "     After you spend what feels like several minutes simply worshiping the sorcerer as he sees fit, amidst him stroking his sizable cock and enjoying your dedication thoroughly, he finally decides to pull you away from him slightly, turning your face to his, with his torso very, very close to you, still. Your chin is almost resting in the space between his pecs. 'You know... Maybe you do deserve a reward,' he says, as he brushes your head in sweet affection, 'and I am a mage, after all... Summoning tentacles to fuck your every hole is not the only thing I can do...' As he says this, both his arms embrace you tighter against his pecs, and your face is brought to darkness once he tucks it between his bulging chest.";
	say "     It did not seem like there was this much space in between, before. Your face is definitely engulfed by his pecs, and as his arms hug the rest of you, they also begin to smother you as he pulls you against him. You move yours across his body, but find out that he seems... bigger. And bigger... Every muscle in his body increasing in size as you also feel him getting warmer and heavier. 'Feels fucking good... Unghh... Yeah... like that?' He asks with a chuckle, leaning over on top of you as you are pushed against some surface, pinned down under him as he continues to grow. The pressure of his growing muscles begins to really threaten to crush you, and that is not the only thing that grows... Amidst all this, his previously only twelve inches of cock must have doubled in size as this now bigger than a bodybuilder Xaedihr grinds his whole self against you.";
	WaitLineBreak;
	say "     After a couple of inches more, he lets out a prolonged grunt of pleasure as you feel him vigorously stroke his manhood, then all of the sudden, a really, like, [bold type]really[roman type], powerful geyser of cum splashes right between your bodies and continues to shoot like a broken fire hydrant, covering both your fronts completely in the sticky, messy white stuff! 'Fuuuck! YES!' He gives himself several final strokes as he observes you, pinned down underneath him, receiving his last drops and whatever leaks from his own body onto you. 'Was sort of expecting to last longer, but... Guess who did a really good job.' His mischievous grin combined with an overgrown muscular body is simply too hot for you to not be caressing yourself. To give you some more space, he lifts his body slightly from yours and slides a hand over your parts.";
	say "     It does not take too long until [if Player is male]you add your own load to the mess[else]you are brought into spontaneous quivering due to your orgasm[end if] for the next moments, aided by Xaedihr's touch.";
	WaitLineBreak;
	if "Muscle Growth" is not listed in traits of Xaedihr:
		say "     'Well, well... If you like this form so much, I might have to... Use it more often. In more creative ways... Who knows what my little slave might fantasize with.' It is only when he stands up, finally letting go of you, that you see his body looking more like a demon brute's, musclebound with a huge hanging cock.";
		say "     [bold type]You now know of Xaedihr's ability to transmute.[roman type][line break]";
		TraitGain "Muscle Growth" for Xaedihr;
		WaitLineBreak;
	say "     Once you both take a moment to catch your breath, he helps you up. 'Get some rest now, as I'll do the same. These spells are not easy to maintain for so long!' he says, before turning away to return to his usual affairs.";
	NPCSexAftermath Player receives "Other" from Xaedihr;

to say XSubmitFacefuck:
	say "     As you wonder about the many possibilities that could be proposed to the mage, you happen to become increasingly more interested in one that involves oral sex. Although, you do not want to simply blow him. To explain what you mean, you tell him that you would like Xaedihr to own your throat and fuck it like he would fuck any other tight hole where his cock could fit. Putting it simply, you desire a good old fashioned facefuck. He nods and seems to be thinking about it for a second before delivering a reply. 'So... No magic play at all, it is? I don't think we need magic for something so simple, unless there is a way to make things more interesting, though I fail to conclude what. Perhaps we should, indeed, keep it simple.'";
	say "     Simple it is. Xaedihr refrains from using any magic on this particular request and simply proceeds to push you onto an elevated surface where you can lie down with your face up, right at the edge, enough for him to keep standing up, place both his legs on each side of your head and have his crotch hover above you. He does not fully commit to this position, yet, as you are still readjusting yourself. You start becoming aroused at the mere thought of it, especially as you see him remove his clothes from such an angle, until he is completely naked. You rarely get to see his penis soft as it is, which is still a great and thick dandling meat that is probably still bigger than most average human men when hard. A warm scent immediately reaches your nose as that mixture of demonic and masculine musk makes itself evident, with the half-mage's privates so close to your face.";
	project Figure of Xaedihr_NudeSoft_icon;
	WaitLineBreak;
	say "     Almost immediately, a rush runs through you, like an urge to please him as you beckon the sorcerer to bring the goods down on your face. He slowly does so, placing his balls right on top of your lips as you attempt to take one of them in at a time, your tongue welcoming the orbs with licking and wiggling all around them, which leaves the half-demon pleased. He pats your cheek on one of the sides with a hand and calls you 'Good [boygirl]...' before leaving himself to fully enjoy your caresses. Those cum factories are full and heavy, generously filling your mouth due to their great size, showing just how much of a load he can carry in those, a thought that crosses your mind and bathes you in eagerness to serve.";
	say "     It does not take long for him to become hard from your work on his balls, that large meat of his thickening and reaching its fully erect state in about several seconds. Xaedihr does appreciate this and encourages your efforts with a tender stroke across your jaw that extends towards your chest, only to bring both his hands back up and behind your skull as he begins to adjust his position. He jerks himself for a while, gently pulling his sack from your mouth with a popping sound as you keep your lips wrapped around his nuts until the end, and smiles at you, happy with your dedication. All you see is that huge cock in front of you and the rest of him from his waist up, and the mage then gives you a playful cockslap or two as he realizes you are looking back at him.";
	project Figure of Xaedihr_NudeHard_icon;
	WaitLineBreak;
	say "     His dick surely feels heavy hitting your face like that, and he is not even applying a lot of force on it, but it enough to make you recoil slightly. 'So... are you still certain you want this cock down your throat? Fucked without mercy? No magic to help you...? Taking this entire thing all the way down to my balls over and over again...?' The more he questions you, the more sure you are that you want this, so you eagerly nod at every segment of his sentences. He does not look surprised that you merely confirmed your wishes, and instead smiles before turning around. His ass comes into view before he takes a step back, then he tenderly places one hand under your jaw, as if telling you to open your mouth, and begins to slide his meat past your lips, which you wrap around his shaft the first chance you get.";
	say "     From this angle, his cock can go straight towards your throat and has plenty of space available, which he makes sure to use. 'So eager to please...! Fine, I'll go slow at first...' The demonologist keeps his promise by slowly thrusting down your throat, his cock stretching it from the inside as you feel it bulge through your neck. The fact that he is doing it at this pace actually lets you get used to his one foot long of a dick, which would be quite a challenge to endure, otherwise. He actually has got just the right angle to freely push it in and out of your throat with minimal effort, holding your head by the back of your skull with one hand so that you can keep it in position more easily.";
	WaitLineBreak;
	say "     You manage your gag reflex well for this, as Xaedihr keeps thrusting into your throat. Though, the slow pace does not last very long, and soon, he picks it up and starts doing it just a little faster, still steady, but deep and hard, to see if you can take it. Feeling like a natural, you encourage him with your tongue by wiggling it around his shaft and licking at the tip when it passes by. He keeps finding no resistance whenever he fully buries his meat in your throat, so he continues to increase the speed. Breathing does not get easier for you, as the time you have to do it becomes progressively shorter, which is between inscreasingly faster thrusts. The sorcerer does sometimes notice this and pulls back for a few seconds... Before returning to it at full speed.";
	say "     'You're doing good! Keep it up...' he tells you, holding his manhood throbbing down your throat for longer than usual, then pulls back to resume the facefucking. You are simply there, taking it, moving your lips and tongue wherever you can to give him a little bit of additional pleasure, and you know he appreciates it with a moan or two that he ends up releasing, especially when you manage to do a full circle around the tip of his cock as he pulls back. Sometimes, he lets it linger half-inside your mouth just to feel you doing it a couple of times, and you are then thanked with a thick drop of precum. 'There's no rush, right? You can still worship my cock before I truly destroy that throat of yours...'";
	WaitLineBreak;
	say "     This could be considered a break, as he pulls out almost completely, leaving only his glans still wrapped around by your lips. You lick and kiss them, sliding your lips outwards on your own and rubbing them around that sensitive surface, causing more precum to come out for you in sweet thick drops. You notice that the mage becomes greatly aroused, feeling what you are doing, and this prompts him to end the pause and resume the task. 'Being that good is making me want to blow... Maybe I should just go for it. You deserve a good filling...' Xaedihr says as he, once more, drills your throat at a good rhythm, progressively faster until he arrives at the previous pace. This time, he does not give any signs of wanting to stop so soon.";
	say "     During the next moments, your throat is utterly ravaged. Xaedihr just goes for it, now keeping your head still and in position for every single one of his thrusts, and he stops holding back at all. It is as if your mouth was a fuckhole, as he is fucking it like he would fuck one. The momentum keeps making his balls bounce back and forth against your nose and forehead, heavily, since they are quite big and full, and you are simply forced to swallow the meat, rarely being given a chance to catch a breath. This goes on for a while until the sorcerer feels his climax coming, but until then, there is his cock traversing your esophagus with the expected eagerness of a horny fucker, back and forth so deep and hard that you are truly reminded of who is in charge.";
	WaitLineBreak;
	say "     The demonologist then slows down, thankfully giving you time to breathe, but it seems like he is just preparing for something as he is still thrusting deep into your throat, just in steady intervals. His wet rod slides in and out so easily now that you barely struggle with it at all, and begin to miss the cock when it is gone for more than a second. 'You ready? I'm not letting you waste a drop...' he tells you, and you nod, to show him that you want it. 'Good...' That is the last word you hear before he goes for another round of facefucking, as fast as he can, now forcing you to hold your breath as he drills your throat. Eventually, he lets his cock deep down and holds it in there as it begins to throb at an unusual rate...";
	say "     That is the sign which announces the arrival of his load, rapidly being pumped down your throat as you are merely left with the choice to swallow it all. 'Fuck... YES! There you go... Drink it... All...' Xaedihr keeps on moaning and grunting as his intense orgasm fills your stomach full of cum, deposited in the form of quick and generous shots that you gladly take inside you. The duration of his climax challenges your ability to hold your breath, but before you can get too uncomfortable, he pulls back and lets you breathe... Carefully, though, as there are still drops you could choke on. You keep your lips wrapped around the dick until he removes it completely, sucking up any leftovers.";
	WaitLineBreak;
	say "     He then holds his half-hard dick in front of you with a smile on his face, knowing that you took everything in. 'That was good... You managed. Seems like when you want to be a good [boygirl], you actually perform very decently. I'm glad... This means we can keep doing it.' Once you both take a moment to catch your breath, he helps you up. 'Get some rest now. I've got some notes I want to organize on a study I was performing. Hm... maybe sometime I should let you suck me off while I analyze my books. I think that could make the task slightly less... dull,' he says, before turning away to return to his usual affairs.";
	NPCSexAftermath Player receives "OralCock" from Xaedihr;

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 6 - Library Interactions
[***********************************************************]
[***********************************************************]
[***********************************************************]

[***********************************************************]
Section 6-1 - Xaedihr Experiments
[***********************************************************]

Table of GameEventIDs (continued)
Object	Name
Xaedihr Experiments	"Xaedihr Experiments"

Xaedihr Experiments is a situation.
ResolveFunction of Xaedihr Experiments is "".
Sarea of Xaedihr Experiments is "Nowhere".

[***********************************************************]
Section 6-1-1 - Incubus Experiment
[***********************************************************]

instead of navigating Grey Abbey Library while (Xaedihr is in Grey Abbey Library and resolution of Xaedihr Experiments is 0 and a random chance of 1 in 10 succeeds):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action; [can't nav from the player's location, or already there - so we stop this cold]
	move player to Grey Abbey Library;
	say "     When you arrive back at the Grey Abbey Library, you happen to glance towards where Xaedihr usually is. He's usually sitting there by the corner, surrounded by all kinds of books and papers, writing frantically as he speaks to himself about all the nonsensical magic theories that only the most ancients of the supernatural entities could grasp. Except that now, for some reason, he isn't there. How odd is that, given the fact he spends literally all day browsing all the shelves - and even containers - for more material for his research? Maybe he went for a field exploration, but he usually tells you every time he leaves the premises. You decide to bring up the summoning trinket, but as soon as you touch it, an immediate certainty tells you that he's still in the library. These magic things are really useful.";
	say "     But your curiosity persists, so you decide to sneak around the library in hopes to find him doing something, hopefully not anything dangerous that causes irreversible damage. You do a thorough search around the ground level and the upper floor, but he's nowhere to be found in the main edifice! That only leaves the bunker left, but why would he go there? Questioning yourself will make you no good if you're going to stay still wondering, so you go look for the half-demon in there. Quietly so you don't startle the sorcerer, you go over every corner... until you eventually find him in one of the rooms. The one with the master bed, no less! Why in the world would he be there? You're about to know.";
	WaitLineBreak;
	project Figure of Xaedihr_Full_icon;
	say "     As soon as you enter, Xaedihr immediately notices your presence. 'Oh, hello there. Hope you don't mind me utilizing your space for some personal experimentation? It would benefit us both, I assure you.' he says, with absolute no shame nor hesitation, while there's a fully naked incubus tied up in the bed, enveloped by those strange purple tendrils your mage friend loves bragging about. They're currently wiggling around the demon's body, covering every sensitive spot of his, with one shoved right down his mouth, another in his ass, and a last one sounding the nine inch penis that is typical of his species. The poor thing can't even move an inch, as the tendrils are tightly holding his arms and legs against the mattress, together with the rope attaching his hands to the bed's bars. You do remember Xaedihr telling you these extensions of himself were wired to the pleasure areas of his brain, yet he remains completely unbothered by the tentacle work happening there.";
	say "     There he stands, completely focused on whatever he's writing on that notepad of his and barely paying you any attention. Of course, you eventually ask what this is all about. He takes several seconds to shift his gaze towards you. 'I'm analyzing brain activity on a typically lusty demon when they receive sexual estimulation. This would allow me to understand what motivates their promiscuous behavior. An interesting subject. [bold type]Do you want to observe with me?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Sure, you want to know the end to this.";
	say "     ([link]N[as]n[end link]) - Leave him to his strange affairs.";
	if Player consents:
		LineBreak;
		say "     With certainty, you tell him that you'd like to know more about this procedure. 'So, as you know, my tendrils are an extension of myself. I can not only feel pleasure with them, but I can also attune them to do other things. Like feeling localized neural impulses. This allows me to conduct my research without any of those fancy machines the weird scientists from across the fields use. I find those very impractical, to begin with.' Given how Xaedihr speaks about the nanite experts, one could guess he knows more about them that he'd like to admit. You encourage him to continue. 'The objective here is to understand how their will works. What drives them to behave in such a way.' The way he keeps talking about this with such scientific speech is a little disconcerting, even more when you look at the incubus, who is squirming in pleasure and completely helpless at the care of the tendrils.";
		say "     'It's interesting to note that they do not care about their conditions if they're receiving sexual satisfaction. No behavior associated with peril as long as I promised him a sweet release. A very easy capture, if you ask me. Now look at him, completely submissive.' he goes on, and you can't help but feel a little aroused at the whole scene. The sorcerer's tendrils seem to be jerking the incubus['] meat faster as the fleshy tubes thrust in and out of his hole and mouth, almost moving the demon around in the bed. 'Now, only one thing remains to be seen.' he says as the tendrils increase their efforts at getting the horned creature off, deep and vigorous motions that would throw him into a moaning fest if his mouth was free.";
		WaitLineBreak;
		say "     The purple tentacles are set into a frenzy, stroking the entirety of the incubus['] body with utmost dedication. You get a feeling you hear Xaedihr huff a breathy moan as that happens, and the need to justify it immediately afterwards gives him away. 'Never said the method was perfect... Sometimes they want to be felt...' The demon is soon driven over the edge, and you can see him jerking his hips uncontrollably as the sorcerer's extensions thoroughly milk the cum out of the incubus, in what seems to be an almost minute long orgasm. When it's over, the mage turns to you with a roll of eyes. 'I knew it. They lack the cooldown. Their bodies are specifically made to pursue sex, not to reproduce, but to corrupt others. I always suspected this, but now I know for a fact!'";
		say "     'This is how every hell demon is kept under control, though there's one thing that doesn't make sense...' he now talks to himself, then turning to you once he asks the question. 'What about the pain? What is the pain? Does it manifest differently depending on what the demon represents? I'll need to conduct another test.' he suggests, not really asking for your opinion on the matter. Retracting his tendrils back to oblivion, he then finishes up writing his notes and pile every document together. 'Not with this subject. The one I'm thinking of requires a less intelligent kind of demon. Perhaps a demon brute. Need anything from the mall?' he asks as some sort of dark spell exits his hand, which is now hovering the incubus['] head, and puts him to sleep. 'I've got to, uh... release this one. Though I'll collect some nanite vials, just in case.'";
		WaitLineBreak;
		say "     Whatever Xaedihr is doing with all these experiments, he seems to be very focused on it. You then tell him to make sure he cleans up, now that he's done with his strange experiment, and if he does anything else, you'd like him to be very careful to not break or damage anything. 'Who do you take me for? Of course I'll leave the place clean after I use it, every time. What kind of odd people have you been hanging out with? Oh... Wait, don't answer that. Rest assured.' With this, he returns his focus on what he's doing and you leave him there, returning to the entrance of the Library as if nothing happened.";
		if loyalty of Xaedihr < 27:
			say "     [bold type]Xaedihr appreciated your interest in his research considerably.[roman type][line break]";
			increase loyalty of Xaedihr by 3;
		else if loyalty of Xaedihr < 30:
			say "     [bold type]Xaedihr appreciated your interest in his research.[roman type][line break]";
			increase loyalty of Xaedihr by 1;
		now resolution of Xaedihr Experiments is 2; [player stayed]
	else:
		LineBreak;
		say "     As interesting as it may sound, maybe you shouldn't bother the mage too much with whatever he's doing. You just tell him to make sure he cleans up after he's done with his strange experiment without breaking or damaging anything. 'Who do you take me for? Of course I'll leave the place clean after I use it. What kind of odd people have you been hanging out with? Oh... Wait, don't answer that. Rest assured.' With this, he returns his focus on what he's doing and you leave him there, returning to the entrance of the Library as if nothing happened. Though one can't help but wonder what in the world is he up to...";
		now resolution of Xaedihr Experiments is 1; [player left]

[***********************************************************]
Section 6-1-2 - Demon Brute Experiment
[***********************************************************]

instead of navigating Grey Abbey Library while (Xaedihr is in Grey Abbey Library and resolution of Xaedihr Experiments > 0 and resolution of Xaedihr Experiments < 3 and a random chance of 1 in 5 succeeds):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action; [can't nav from the player's location, or already there - so we stop this cold]
	move player to Grey Abbey Library;
	say "     Coming back from another day outside to the Grey Abbey Library, you happen to glance towards Xaedihr's usual spot, only to find him away once again. Just as a safety measure, you still look around the main edifice before heading into the bunker, where he's probably conducting [if resolution of Xaedihr experiments is 1]another one of those strange experiments you caught him on the other time[else]his next experiment that he mentioned before. Could it be that he actually captured a demon brute all by himself from the mall? You'll have to see it by yourself[end if]. Carefully making your way to the room in question, you're actually surprised by a strange noise of something [bold type]breaking[roman type]! And then a loud smashing sound, followed by heavy footsteps and an enraged grunt! You told Xaedihr to be careful, but that seems to have been a fruitless effort.";
	say "     Though the chaos is not over yet. Before you can make it halfway, the door slams open, and an enraged demon brute rushes towards you. 'Damn it! Careful! Watch out for the beast!'";
	now inasituation is true;
	Challenge "Demon Brute";
	now inasituation is false;
	if fightoutcome < 20: [won]
		say "     With enough effort, you manage to stop the demon brute rampage all by yourself, knocking him down with a powerful blow. The sorcerer then turns to you with a relieved expression.";
		if loyalty of Xaedihr < 30:
			say "     [bold type]He actually smiles at your display of strength.[roman type][line break]";
			increase loyalty of Xaedihr by 1;
	else if fightoutcome > 19 and fightoutcome < 30: [lost]
		say "     Unfortunately for you, the brute manages to knock you out of the way, leaving your bruised body collapsed on the floor. Now, fortunately for you, Xaedihr hasn't given up yet! 'Your kind sure is problematic! Have some of this!' he shouts, followed by a crimson bolt that hits the brute with an immense fiery flash, confounding the demon's senses. He follows up with a powerful shadow sphere spell which smacks the brute's head, knocking him down unconscious. The sorcerer then rushes to you and helps you get up.";
	else if fightoutcome is 30: [fled]
		say "     Thanks to your skill at evading, you manage to get out of the demon's way before he throws himself at you, giving Xaedihr enough opportunity window to strike. 'Your kind sure is problematic! Have some of this!' he shouts, followed by a crimson bolt that hits the brute with an immense fiery flash, confounding the demon's senses. He follows up with a powerful shadow sphere spell which smacks the brute's head, knocking him down unconscious. The sorcerer then rushes to you, wiping a sweat drop off his forehead.";
	WaitLineBreak;
	project Figure of Xaedihr_Full_icon;
	say "     'I know, I know. I'm sorry. I tried to tame a Demon Brute by myself. It... didn't go well.' he admits, giving the back of his head a rather unsubtle scratch as he tries to hide his embarrassment. You're definitely not used to see such a confident magician like him admit defeat. 'These ones are way more aggressive than the incubi... I will never be able to get his attention to test my theory. This was a bad idea, I need to look for another means to understand what makes the pain in demons... Like, it just doesn't make sense, if they're controlled by lust then they shouldn't feel pain. Ugh! I'll never get to the bottom of this by just rambling about it.' Though he clearly seems frustrated, you remind him of that certain detail you told him about before which somehow seemed to have escaped him...";
	say "     'Uuuuh... Right... Not breaking anything... Heh...' he turns his face away from you, but suddenly, his expression goes from shame to something similar of a face that a mad scientist makes when they bump into a breakthrough. 'Breaking! Yes! You're a genius! That's it! Thank you so much for your help!' He even grabs your head and gives you a kiss on the forehead, as if blessing your existence, before storming towards the brute.";
	say "     Maybe it's best to leave him focus on whatever he has discovered thanks to your advertation. You simply dismiss yourself and head back to the Library's main area. Xaedihr doesn't even see you go.";
	now resolution of Xaedihr Experiments is 3;

[***********************************************************]
Section 6-2 - NPC interactions
[***********************************************************]

Table of GameEventIDs (continued)
Object	Name
XaedihrAtticus	"XaedihrAtticus"

XaedihrAtticus is a situation.
ResolveFunction of XaedihrAtticus is "".
Sarea of XaedihrAtticus is "Nowhere".

Table of GameEventIDs (continued)
Object	Name
XaedihrRane	"XaedihrRane"

XaedihrRane is a situation.
ResolveFunction of XaedihrRane is "".
Sarea of XaedihrRane is "Nowhere".

[***********************************************************]
Section 6-2-A - Xaedihr & Atticus
[***********************************************************]

after going to Burned-Out Chapel while (resolution of XaedihrAtticus is 0 and Player is male and Atticus is in Burned-Out Chapel and demonologist is listed in companionList of Player and PlayerMet of Atticus is true and Incubus Offspring Meeting is resolved and Elijah is not in Burned-Out Chapel): [Player has a cock (for now a required condition), Atticus is there, with all his checks, Elijah not in there (too complex), first contact between Xaedihr and Atticus]
	say "     As you step in the chapel with Xaedihr following you around, a glance over your shoulder shows the half-demon quite entertained with the building's architecture, or what's left of it. 'What relationship do you really have with this place? You keep coming back here and I'm still not fully aware of why.' he asks, not looking back at you, but instead fixating his gaze on all the structure's details. 'A shame this burned down. Must have been quite the view... Now it's a house of lust.' finishes the sorcerer with a sarcastic tone as he turns around and walks back to you. 'Have you actually gotten involved with the succubus currently owning this place?'";
	WaitLineBreak;
	say "     It doesn't take long for you both to be welcomed by a young and attractive demon, who instantly spots you by the entrance. His naked body, illuminated by the delicate lights of the candles scattered all around the altar, stands visible to you and at very few steps away. Your half-demon companion follows up with a concluding statement 'Well, of course you did. Why was I hoping for a different turn of events...' as he looks at you with his eyebrow frowned. Seems like the sorcerer was perceptive enough to conclude Atticus is your demon son. With a rather cocky grin on his handsome face, the young demon is to almost open his mouth to greet you, but remains rather surprised at Xaedihr's intense glare. 'Daddy brought a friend this time, I see! Though why does he stare at me like that? Do I look that good?' he boldly strikes a few words towards the mage, who immediately squints his eyes at the incubus.";
	say "     'Nope, that's it, I'm done with this place. Come get me at the entrance when you're done with your fatherly visit. And I don't want to know any details regarding how it went.' He then turns around, about to start walking out of the chapel. [bold type]Will you let him go, or try to make them interact?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - That's his choice, so let him go.";
	say "     ([link]N[as]n[end link]) - Stop him and ask him to stay.";
	if Player consents: [stops the interaction and any future thing between them]
		LineBreak;
		say "     As you do nothing to stop Xaedihr from leaving, he just walks away, leaving you alone at the chapel free to do anything you wish. 'Aw, what a shame! that guy was kind of cute! Wouldn't mind taking him for a ride... Think you can change his mind?' he asks with a mischievous look in his face as you turn your attention to what made you come here.";
		now resolution of XaedihrAtticus is 99;
	else:
		LineBreak;
		if Charisma of Atticus is 1: [player cracked Atticus' shell before - condition prone to change??]
			say "     Putting your shoulder in front of Xaedihr and grabbing his arm, you stop him from walking away, explaining that Atticus is really just your son with Lilith and that you value him as such. 'Phew... for moments I thought you fucked your own son. I mean, I've seen crazier stuff happening around here, and with him being an incubus and all that...' He looks at you, then at Atticus, then back at you again. 'You do still fuck each other, don't you?' Your demonic offspring gives you a rather awkward face, but he can't hide his amusement. 'I guess your bud doesn't know about the bond we share, daddy! I know a few ways we could use to introduce him to the fun!' says the young demon, who catches the mage's attention immediately.";
		else if Charisma of Atticus is 99: [their relationship is merely sexual]
			say "     Putting your shoulder in front of Xaedihr and grabbing his arm, you stop him from walking away, explaining that Atticus is an offspring of your relationship with Lilith and you see no harm in having a little fun. 'Oh sure! I guess! Just have a son with a powerful succubus and fuck him as well! That's totally okay, isn't it?!' He looks more shocked, rather than angry. Your demonic son grows a little impatient and follows up with an expected observation 'So are you going to introduce us to the fun or what?' while eyeing you with an eager smirk. This question caught the mage's attention immediately.";
		say "     'Oh, are we serious now? You can't possibly be suggesting throwing me into a threesome with you both!' exclaims the half-demon, looking at both you and Atticus. 'What's the matter with you? Too afraid to be taking this in you, is that it? Bet you make some funny sounds. Daddy must know!' replies the young demon, pointing to his by now throbbing manhood, and that seems to infuriate the sorcerer. 'Listen here, you little pr...' - he stops himself, taking a deep breath before continuing - 'The only one here who's going to make funny sounds is you, choking and gurgling, when I'm ballsdeep in your sorry throat.' Atticus immediately replies, his teeth shining as bright as his cocky smile 'Oh yeah? Fantasizing with me already? You must be eager to get it, aren't you?' while his index finger visibly slides from the base of his shaft to the tip, by the underline, in an obvious show-off.";
		say "     'I've changed my mind. I'm going to fuck this little bitch until he begs me for mercy. Hold my tome.' says Xaedihr as he hands you his personal grimoire. [bold type]If you don't stop this here, things will certainly get dirty...[roman type][line break]";
		say "     ([link]Y[as]y[end link]) - Cease this, you don't want them getting involved any further.";
		say "     ([link]N[as]n[end link]) - Why stop them? It's getting pretty interesting!";
		if Player consents: [stops the sex and any future interactions]
			LineBreak;
			say "     You don't just grab his tome, putting your arm around Xaedihr's shoulders and take him out of the chapel, despite his protests. 'Oh my... I'm so sorry about that. I don't know what got into me... He was really getting on my nerves!' he exclaims, catching his breath and getting more calm now. 'Thank you for the attention... I'll wait for you here, if you don't mind.' You nod, before going back inside, turning your attention to what brought you to this place.";
			now resolution of XaedihrAtticus is 99;
		else: [you allowed it to continue...]
			LineBreak;
			say "     While holding his tome, you see Xaedihr drop his black long jacket to the floor, revealing his fit and muscular torso, right side adorned with arcane tattoos, to the incubus. They both proudly stand in front of each other, the sorcerer with his chest puffed out while the young demon gives him the naughty looks. Nothing wipes out the grin in Atticus['] face, not even as the half-demon aggressively grabs his hair and pulls his face down against the mage's crotch. 'You better lick that good, you hear me?! Let's see who you'll be calling daddy after I'm done with you!' He doesn't even let the young demon reply, as he pops his proud erection out of his dark pants and shoves it right inside the incubus['] mouth. He's not gentle about it either, as he doesn't waste any time burying his entire foot-long cock down your demon son's throat.";
			say "     Your eyes widen, as you've never seen Xaedihr so lust-crazed and aggressively forcing himself on anyone until this day. Knowing Atticus, he has probably gotten the half-demon under a spell of his own, or he simply managed to piss him off so bad that he ended up earning the facefuck of a lifetime. The sorcerer doesn't even let him breathe, making the young demon swallow his cock whole without a complaint. He thrusts back and forth so hard you're afraid he'll dislocate his jaw, and this whole display starts getting you horny as well. 'Look at ME, bitch! I want to see those eyes as you swallow my cock!' he shouts, moving his leg slightly to the side, allowing him to pound Atticus['] face even harder as your offspring can only remain on his knees. Your own [Cock of Player] penis hardens [if player is naked]for anyone to see[else]under your clothes[end if], and you think it's time to join the fun.";
			WaitLineBreak;
			say "     Placing yourself just behind the young demon, [if player is naked]you grab your by now throbbing meat[else]you lose your gear, grab your by now throbbing meat[end if] and rub it across the incubus['] exposed ass cheeks, while his tail wraps around your leg in what seems to be a show of affection. Xaedihr doesn't even see you coming, as he's too focused on keeping the handsome devil's mouth full. 'You have all that cocky attitude, but in the end you're just a slut, aren't you?' he taunts and chuckles, doing his best at not allowing Atticus to reply with his lips firmly wrapped around the half-demon's shaft. You figure it's time to start pressing the tip of your dick against the alluring demon's pucker, and with a shove, it slides in with little effort, as if he was welcoming you in his back entrance.";
			say "     Feeling is tight hole clenching around your cock gives you mind-blowing sensations, as if your demon boy was sucking it with his butt, but all that creates in you is the will and desire to pound his ass harder and deeper. You thrust in, pushing yourself all the way in until your balls rest against his taint, holding him by the hips and pulling himself to you. Xaedihr keeps up the pace with you, combining rhythms as you two fuck the incubus from both sides. The sorcerer's still grabbing Atticus['] hair, forcing their eyes to meet as a devilish grin shows in the mage's face. 'You're so good at sucking dick you haven't gagged a single time! Sounds like you'll eventually learn your place. Come on, I'll give you a chance to say what you truly are.' teases the sorcerer as he pulls out for a while... 'Fuuuck! You should learn with daddy, he pounds better than y...' Xaedihr doesn't even let him finish the phrase as he puts his cock back in.";
			WaitLineBreak;
			say "     'You're really a fucking prick, aren't you?!' you hear the mage replying to the provocation, fucking the incubus['] face so hard that you even feel it on your side. Sliding your hands across the young devil's back as you lean forward a bit, you shove your cock in as deep as you can, and you think you hear him moan as your pounding gets more intense. The half-demon looks at you with a smirk, and as if you could read his mind, you know exactly what's going to follow when you feel yourself getting closer to the point of no return. 'To show you how much of a bitch you are, we're going to double breed you! Though you must be already used to that.' taunts the sorcerer yet again, and by the look in his face, he should be getting close too.";
			say "     Deciding that it would be better to match his pace, you slow down as you feel yourself roaming around the edge too dangerously, and wait until he hits his climax. 'Fuck... Here it comes!' He leans his head back, eyes closed, and lets out an almost beastly grunt that echoes through the entire chapel. You feel yourself needing to get a release too, and that comes by just as the cum leaves you, a torrent of seed being delivered right inside the incubus['] ass until the very last drop. Gulping sounds are loudly audible from the other side, as Xaedihr pumps out his own load, generous as ever, while Atticus seems to be struggling with swallowing everything, though you know how dedicated he is when pushed to the right ways. Both of your orgasms last for an unusual amount of time, until you can finally catch a breath as your throbbing dicks rest still inside the demon boy.";
			WaitLineBreak;
			say "     Exhausted and surprisingly sore, you pull your cock out of his ass, followed by a splooge of your own cum running down Atticus['] butt. 'Fuck, I... Wow. I don't know what got into me.' says the sorcerer as he comes back to his sobriety. He steps back, allowing the incubus to sit back and look at you both. 'Tired already?' - he provokes with a giggle - 'Knew you couldn't resist me! Though it'd feel great if you retributed the favor.' he continues, and you notice his own foot-long of a demon cock still pulsing like the horny lusty demon he is. 'My tome, please.' requests Xaedihr as he extends his hand to you. Taking some time to remember where you put it, you go get it for him from a corner where you left it, handling over the grimoire with care.";
			say "     'Hope you won't regret saying that.' warns the mage, as he opens his tome and several pages flick on their own. His arcane tattoos glow in a purple gleam as he makes a few gestures. Both you and Atticus look at him with great curiosity, without a clue of what he's up to, until plenty of dark tendrils spawn around the young demon. 'Oh! Ooh! You can do that?! Fuck yes!' shouts the devil with eagerness, as he allows his body to get completely enveloped by the countless restless tentacle-like extensions of Xaedihr surging from the ground. Each member wraps itself around a sensitive spot, like his chest, cock and balls, a few even finding their way back in his ass. He's held in place by others that go around his legs, arms and torso, and your demon son stands immobilized as yet another tendril takes hold of his dick, carefully sliding itself in the slit. He's made to cum, the tendril getting hungrily fed from it, continuing to stimulate Atticus in every way possible.";
			WaitLineBreak;
			say "     The tendrils continue their work as Xaedihr turns to you. 'There, that should keep him entertained for a while. Though I must say, this was really fun. Maybe we can come visit more often?' he says to you with a smile on his face, as Atticus['] grunts and moans are heard in the background. 'Don't worry, I won't steal your spot as his daddy. He'll have to come up with a different title for me.' he continues, throwing a chuckle as you both watch the incubus happily cumming over and over again thanks to Xaedihr's spell. 'I do find it a little... odd that his mother just merely observed without saying a word. But I can get over that.' he finishes, as he glances over Lilith, who's watching back with a seductive gaze and a smile on her face. With little else to add, you both grab your stuff back, since fun is over... for now.";
			if loyalty of Xaedihr < 30:
				say "     [bold type]Xaedihr ended up enjoying himself thanks to you, despite Atticus['] cocky attitude.[roman type][line break]";
				increase loyalty of Xaedihr by 1;
			NPCSexAftermath Atticus receives "AssFuck" from Player;
			NPCSexAftermath Atticus receives "OralCock" from Xaedihr;
			now resolution of XaedihrAtticus is 1; [first scene completed]

[***********************************************************]
Section 6-2-R - Xaedihr & Rane
[***********************************************************]

instead of going up from Grey Abbey Library while ((demonologist is listed in companionList of Player or Xaedihr is in Grey Abbey Library) and loyalty of Xaedihr > 9 and Rane is in Sitting Area and Resolution of XaedihrRane is 0):
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: XAEDIHR / RANE MEETING[line break]";
	say "[XaedihrMeetsRane]";

to say XaedihrMeetsRane:
	project Figure of Xaedihr_Full_icon;
	say "     As you walk up the stairs and head further in the upper floor, a glance has your eyes meet with a rather tall and broad shape, standing next to a window. You can easily see it's Rane, thanks to his identifying oni features and atypical blue skin, just looking outside for a while. Before you can approach him, however, Xaedihr surprises you, coming from behind a bookshelf and walking in front of you. 'Since when you have [italic type]yōkai[roman type] living with you?' He asks, and all you can do is stare back at him. 'This is an Oni! They are extremely evasive... and especially almighty. Though unlike demons, they're not inherently evil or controlled by a bigger entity. They're just... themselves. Some have fought through medieval times, attempting to survive humans['] greed and all that. Sad stories... Maybe for another time.' You're kind of still staring at him, expecting him to request something. 'Well, I'd like to ask you if you could introduce us? He looks like an interesting fellow...'";
	say "     Following the sorcerer's request, will you introduce him to Rane, or would you prefer if they never spoke to each other?";
	say "     ([link]Y[as]y[end link]) - Make the introductions.";
	say "     ([link]N[as]n[end link]) - Don't have them talk to each other.";
	if Player consents:
		LineBreak;
		say "     Nodding at the sorcerer, you guide him towards Rane, who has already caught you in the corner of the eye by now. Xaedihr doesn't seem like the shy kind of guy, but he really curls his shoulders forward when you both walk up to the oni. 'Uh...' he hesitates, suddenly forgetting how to greet a person. Rane raises his eyebrows in amusement, and a smirk forms in his lips as he eyes the half-demon from head to feet. 'Now, isn't that interesting... Aren't you that cute looking redhead who's always with his head buried in the books, down there? I see you a lot of times!' Rane anticipates the talking, throwing a chuckle in what you think it's a genuine attempt at making Xaedihr more comfortable. 'I-It's just... I'm a massive fan of your kind! I've studied the likes of you for years! All the myths and legends, species, from kitsunes to tengus, the entire folklore of your origins, and the onis are my favorites because they come closer to... I... I'm probably babbling a lot, aren't I?' Rane gives you a glare, and with a careful movement of his arm, gives the half-demon a friendly pat on the shoulder. 'How about we have a drink?' asks the oni, clearly entertained by Xaedihr's burst of enthusiasm.";
		say "     'Uhm... I'll have to refuse for now. I just came here to meet you in person. I'm still getting used to this place, familiarizing myself with every bit and corner of the library, but don't want to get too distracted from my research. My apologies.' the sorcerer replies, and he gives you a subtle signal asking you to accompany him out. Rane doesn't insist, aware that this might be a hard case of social ineptitude. 'It's alright, you now know where to find me. The offer is still up, if you change your mind.' he follows with a wink, and Xaedihr excuses himself with a slight bow, though you can see his face is flushed. Once again, the oni gives you an amused look before you have to return to the half-demon's side and hear him out, after he got so intimidated by this encounter.";
		WaitLineBreak;
		say "     'He's... so big. Do you think he noticed I was staring at his crotch all the time?' Well, that was obvious, since his head was lying low during the entire meeting, but you don't really want to make him more nervous, so you just shrug it off. 'You know I'm mostly a top, but when you see a guy like that, you start wondering things... Then I started to pop a boner as these images went in my mind... I'm definitely not used to this. I'm usually a cold prick, but I've been looking at... Rane, was it...? For quite some time before... And I didn't have the courage to walk up to him alone.' It's not everyday Xaedihr admits a weakness, or in this case, a little crush. 'But enough of this talk. I have to focus on important matters and... Well, maybe sometime I'll accept his invitation. No promises, though.' he adds, before you both make your final leave.";
		if loyalty of Xaedihr < 27:
			say "     [bold type]Xaedihr is very grateful for the time you took to help him.[roman type][line break]";
			increase loyalty of Xaedihr by 3;
		else if loyalty of Xaedihr < 30:
			say "     [bold type]Xaedihr is grateful for the time you took to help him.[roman type][line break]";
			increase loyalty of Xaedihr by 1;
		now resolution of XaedihrRane is 1; [you introduced them]
	else:
		LineBreak;
		say "     You hear his request, but you decide to refuse, arguing that you'd prefer if they never talked to one another. 'What? Why...? I mean... What could happen if we...?' He looks at you, clearly disappointed, but asks no further questions. 'Didn't know you were such an attention seeker, honestly. Not sure if you want either of us just for yourself or if there's another reason I cannot comprehend, but fine... have it your way.' He walks past you and heads down the stairs without further ado, [bold type]rather angry at your refusal[roman type].";
		if loyalty of Xaedihr < 30:
			decrease loyalty of Xaedihr by 5;
		now resolution of XaedihrRane is 99; [you chose to have them not speak to each other]

[***********************************************************]
Section 6-2-H - Xaedihr & Hayato
[***********************************************************]

instead of going up from Grey Abbey Library while ((demonologist is listed in companionList of Player or Xaedihr is in Grey Abbey Library) and Hayato is in Darkened Alcove and "Met Hayato" is not listed in traits of Xaedihr):
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: XAEDIHR / HAYATO MEETING[line break]";
	say "[XaedihrMeetsHayato]";

to say XaedihrMeetsHayato:
	say "     Immediately as you arrive at the library, Xaedihr comes rushing at you with a sense of urgency, tome in hand and dark particles surrounding his fingers. 'Careful! We've got an intruder. Some savage oni managed to slip inside our shelter. The kind that eats people! I'll need backup in case it goes on a rampage.' You cannot help but be confused at this sudden act, as the half-demon urges you to stay behind him while you approach the darkened alcove. 'Red onis are extremely dangerous. One wrong step and your skull will serve as a mug of blood. These savages cannot be allowed to walk freely.' Oh, so he means Hayato. Well, you are much more relieved now. All you need to do is explain Xaedihr who Hayato is and, possibly, introduce them.";
	say "     ... But before you manage to do that, he storms inside, running towards the red oni with the pages of his tome flickering frantically. 'Stay right where you are, creature!' he shouts, and suddenly, a myriad of purple tendrils emerge from the ground, wrapping themselves around Hayato's legs and arms. The huge oni looks at you both, his eyes wide open in surprise, confused, as Xaedihr just caught him off guard. However, not even the supernatural strength of his magic tendrils is enough to hinder a mighty demon ogre such as the mighty Hayato, who breaks free from his binds without too much of a trouble. He then shouts 'I'm not a savage! No need for any of this!' as he waves his arms towards you.";
	WaitLineBreak;
	say "     'Preposterous! I can see how you look! I can sense your...! Wait... No, I cannot sense your demonic essence. What trickery is this?! Reveal your secrets to me, now!' the sorcerer demands, this time charging a dark fire ball in his hand which grows by the second. You figure that you should probably intervene before things go very wrong, so you step in front of Xaedihr and beckon him to stop and listen. Then, you tell everything about his background, his story, how he came to be... Every single detail, within the time you have available before he bursts out of impatience. The half-demon looks convinced enough, fortunately. 'That explains it... he doesn't stink like a demon... Definitely doesn't behave like one... If he was an actual red oni, I don't think anyone around here would still be living. He would have just eaten everyone right about now.'";
	say "     Misunderstandings solved, Xaedihr lowers his guard and approaches Hayato in a much different manner. 'Apologies, mister. We can never be too careful in this wretched land. The name's Xaedihr.' he says, extending his hand towards the oni. 'I'm Hayato, but you can call me [']Hal[']. You're a... sorcerer?' he asks, while retributing the mage's gesture. 'Indeed, I am. An expert demonologist, as well. I've seen many things, including an all-out attack of savage red onis into villages of poor and innocent people during my travels. That was ugly... I have seen many aggressive demons, but none like those... They looked like the embodiment of gluttony and wrath combined. That explains why I was so quick to subdue you once I realized you were here. But since you are not a real red oni, I suppose we could have a chat, once in a while.'";
	WaitLineBreak;
	say "     Well, it seems they ended up conversing rather peacefully, so it is best to just leave them at it as they get to know each other. You really cannot tell Xaedihr what to do, either way, you know he will just have his way regardless of what you have to say added with the most snarky remarks, but perhaps this friendship between both him and Hayato will prove to be fruitful, one day...";
	add "Met Hayato" to traits of Xaedihr;

to say XaedihrTalkHayato:
	say "     Seeing that Hayato is, in one way, a demonic creature, you figured Xaedihr would take an interest in him... Or that, at least, you should warn the sorcerer you have befriended a demon he should not mind, as he is not an enemy. Calling the redhead over, you do just that, introducing the red oni to the half-demon. 'Now, that's... peculiar. Seeing one of your kind so calm and contained... Definitely not a true red oni, I must assure you. My name's Xaedihr.' he says, extending his hand towards the oni. 'I'm Hayato, but you can call me [']Hal[']. You're a... sorcerer?' he asks, while retributing the mage's gesture. 'Indeed, I am. An expert demonologist, as well. I've seen many things, including an all-out attack of savage red onis into villages of poor and innocent people during my travels. That was ugly... I have seen many aggressive demons, but none like those... They looked like the embodiment of gluttony and wrath combined. If you hadn't been introduced to me right now, I would most certainly have attempted to subdue you at first sight.'";
	say "     Looks like you did the right thing. It seems they ended up conversing rather peacefully, so it is best to just leave them at it as they get to know each other. You really cannot tell Xaedihr what to do, either way, you know he will just have his way regardless of what you have to say added with the most snarky remarks, but perhaps this friendship between both him and Hayato will prove to be fruitful, one day...";
	add "Met Hayato" to traits of Xaedihr;


[***********************************************************]
Section 7 - Demonic Summoning
[***********************************************************]

Table of GameEventIDs (continued)
Object	Name
Corruption of Dreams	"Corruption of Dreams"

Corruption of Dreams is a situation.
ResolveFunction of Corruption of Dreams is "".
Sarea of Corruption of Dreams is "Nowhere".

when play begins:
	add Corruption of Dreams to BadSpots of DemonList;

[ Resolution stages                          ]
[   0: No extra summoning unlocked           ]
[   1: Extra summoning unlocked              ]
[   2: Player is having strange dreams       ]
[   3: Done through first dream              ]

after resting while (resolution of Corruption of Dreams is 2 and carried of ancient tome is 1):
	say "     You happen to doze off while you're resting, and amidst your sleep, something strange occurs...";
	say "     Opening your eyes, there's nothing but a pitch black scenario enveloping you, the absence of gravity allowing you to float about with no sense of direction, devoid of any piece of clothing. You are lucid, yet feeling trapped in nothingness. Not even a noise bursts out of the thick shell of silence provided by an overwhelming darkness, and you feel vulnerable, as if your mind was an open fortress, inviting anyone to come in... any force evil or not, granted free permission to dwelve around your conscience. This is what happens when you're dreaming... and you sense a powerful, intimidating presence lurking nearby, watching you. You don't know who, or what exactly, but there's this feeling that you are being attentively watched.";
	WaitLineBreak;
	say "     Your heart bursts into a quick beating and you're starting to sweat, the air around you turning scorching hot for a moment. There's a strong pressure being exerted against your body, and only then you realize that you're in movement. Something is grabbing you, a large crimson hand with dark claws, impossibly large in dimension, holding you in its palm with little effort as you stand trapped within its strong fingers. The body of what seems to be a very huge demon forms in front of you, though you're unable to see its face - only bright yellow eyes pierce through the darkness, looming over you with great interest. 'So... this is you. How quaint...' a voice impossibly deep, painfully echoing through every direction, directs these words towards you.";
	say "     Wiggling your body around, you attempt to break free of this giant's grasp, to no avail. He keeps you locked tight, not saying any other word. His menacing gaze merely observes you for what seems to be a very long time, and inexplicably, a strange arousal starts building up in you. There's images of the worst  kinds of debaucheries involving demons and sex running through your mind, and you can't help but feel strangely attracted to it. As if there is a calling inside you, guiding towards this way of living. You even start wondering what it's like to be one of them... And your mind is no longer yours. Between enslaving mortals and practicing the evil, you're left with your inner desire to please your Lord. To satisfy his every whim and command and give your soul to Him...";
	say "     The one you gave your only soul to...";
	WaitLineBreak;
	say "     And just with a bright flash before your eyes, you wake up. Instinctively, you raise your body to a sitting position, panting and sweating. Everything seems to be as you left before you fell asleep. Though there's this insecure feeling overwhelming your mind, like an anxiety spike taking over you. Looking at the ancient tome in your possession seems to bring you an unsettling sense of comfort, as if it brought you safety, somehow. Nonetheless, you can't afford to be stuck with your thoughts about this strange dream, so you stand up and get ready to be on your way.";
	now resolution of Corruption of Dreams is 3; [odd number]

[***********************************************************]
Section 7-1 - DS-The Dullahan Knight
[***********************************************************]

Table of GameEventIDs (continued)
Object	Name
Dullahan Knight	"Dullahan Knight"

Dullahan Knight is a situation.
ResolveFunction of Dullahan Knight is "".
Sarea of Dullahan Knight is "Nowhere".

when play begins:
	add Dullahan Knight to BadSpots of DemonList;

	[ Resolution stages                          ]
	[   0: The ritual remains unknown            ]
	[   1: Ritual is now known in Ancient Tome   ]


[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 8 - Endings
[***********************************************************]
[***********************************************************]
[***********************************************************]

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Hell Prisoner"	"BadEnd"	"Prisoner"	Hell Prisoner rule	20	false

This is the Hell Prisoner rule:
	if ending "Hell Prisoner" is triggered:
		say "     You have delved in far too deep into the demonic realm. Hell has taken you and imprisoned your soul for all eternity. Now you serve only to satisfy the demons['] every whim of any kind, your will broken facing an inevitable fate. There's no hope... nor salvation.";
		the Player is imprisoned;



[***********************************************************]
[***********************************************************]
[***********************************************************]
Section X - Dev Cheats
[***********************************************************]
[***********************************************************]
[***********************************************************]

SkipToXaedihr is an action applying to nothing.
Understand "GetXaedihr" as SkipToXaedihr.

Check SkipToXaedihr:
	if debugactive is 0:
		say "You aren't currently debugging.";
		stop the action;

Carry out SkipToXaedihr:
	move Xaedihr to Grey Abbey Library;
	say "     Xaedihr is now in the Grey Abbey Library.";
	add "Tamed" to Traits of demonologist;
	now demonologist is tamed;
	say "     He is also a pet.";
	now resolution of Hellish Trashpile is 3;
	add "Demonic Ritual Tape" to tapes of Player;
	ItemGain ancient tome by 1 silently;
	now resolution of Hell Realm is 4;
	now Strange Sorcerer is resolved;
	say "     Hell Realm resolved as if player had destroyed the Grid. Ancient Tome is also in your possession now.";
	say "     Set Xaedihr's loyalty?";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - To 30.";
	say "     ([link]N[as]n[end link]) - To 0.";
	if Player consents:
		now loyalty of Xaedihr is 30;
	else:
		now loyalty of Xaedihr is 0;
	say "     Done.";

Demonologist ends here.
