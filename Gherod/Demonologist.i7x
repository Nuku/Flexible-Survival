The Demonologist by Gherod begins here.

Section 1 - Hellish Trashpile

[ Resolution stages                          ]
[   0: Player first encountered the event    ]
[   1: Not the first time                    ]
[   2: Found the tape on trashpile           ]
[   99: Left never to return                 ]

Table of GameEventIDs (continued)
Object	Name
Hellish Trashpile	"Hellish Trashpile"

Hellish Trashpile is a situation.
The sarea of Hellish Trashpile is "Warehouse".

when play begins:
	add Hellish Trashpile to badspots of hellspawn;


LastTrashSearchTurn is a number that varies. [@Tag:NotSaved]
LastTrashSearchTurn is usually 20000.

Instead of resolving a Hellish Trashpile:
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
			HellTrashEvent;

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
		now ImpType is 1; [trash-dumping imp]
		challenge "Imp";
		now ImpType is 0; [reset to scout imps]
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

to DemonicRitualTapeGet:
	say "     With a quick dash, you approach the pile and get your hands down on the pile of torn boxes, empty cans, ragged clothes, and you're careful enough not to touch any of those odd stains you detect in the fabrics. Your efforts allow you to find something quaint, a small camera in the middle of the junk. You take it and see if it works. When you turn it on, it flickers and goes back to black with a loud 'click' sound. Despite your attempts to revive the device, it keeps refusing to work. However, you manage to recover a tape in relatively good conditions. Intrigued, you keep it to yourself, leave the broken camera behind and leave the place. Perhaps there is a way to watch this tape, provided you find some sort of working gadget able to play it...";
	say "     [bold type]Demonic Ritual Tape has been added to your tape inventory![roman type][line break]";
	add "Demonic Ritual Tape" to tapes of Player;
	now resolution of Hellish Trashpile is 2;
	now LastTrashSearchTurn is turns;

to DemonicItemGet:
	say "     With a quick dash, you approach the pile and get your hands down on the pile of torn boxes, empty cans, ragged clothes, and you're careful enough not to touch any of those odd stains you detect in the fabrics. Your efforts reward you with an assorted amount of useless trash, well-worn pieces of clothing that are completely unusable anymore, objects burned beyond recognition, and even what seems to be... hair? Nonetheless, you're not yet ready to give up, as there's more of the pile you haven't searched through, yet.";
	Linebreak;
	let randomnumber be a random number from 1 to 3;
	if randomnumber is:
		-- 1:
			say "     After some time, you manage to get your hands on a bottle of [bold type]Demon Seed[roman type]. Either they don't see any use for this kind of thing anymore, or the demons are really into storing their own stuff in bottles and release them into the surface world, hoping some rather bizarre creature or person would drink this. It smells really sweet, and it does have an odd color, flowing strangely inside at a very warm temperature. Still, you decide to tuck it away in your inventory and call this search done, as there's little left that you haven't rummaged through already.";
			increase carried of demon seed by 1;
		-- 2:
			say "     After some time, you manage to get your hands on a strange pill box in the middle of more trash. Sadly, it's mostly empty, with only one [bold type]Libido Pill[roman type] left. You recall this to be some sort of sex enhancement drug, used to significantly boost the recipient's libido. Doesn't take a genious mind to know why the demons would be so interested in such a thing, provided the ways they find to dominate their enemies. Without giving it much though, you tuck it away in your inventory and call this search done, as there's little left that you haven't rummaged through already.";
			increase carried of libido pill by 1;
		-- 3:
			say "     Sadly, your efforts are in vain. There's nothing of use that you can bring with you. Your only option is to hope for another chance at catching the imp and have another go at the next trash pile he makes.";
		now LastTrashSearchTurn is turns;

Section 2 - Tape - Demonic Ritual

to say DemonicRitualTape:
	say "     In plain darkness, only the cracking steps on dry wood echo through the walls of this yet unknown place. Only then, a faint light reveals the presence of a man, holding a flashlight in the lens['] direction. He glances around with the luminous source as he searches for a way to keep the room illuminated, finally deciding to place it on a nearby table. By the time he makes it back to the camera, an odd feeling of familiarity strikes you as the bookshelves can now be seen surrounding the place. Then, a clear and deep voice sounds from behind the perspective as the camera starts moving. 'There, this should do it. Might only require a few additional items.' You see his hand throwing the contents of some strange vials into a red pentagram drawn on the ground. He does this while holding the camera, and when he points downwards, you see a strange, old looking book by his feet.";
	say "     He carefully reaches down to grab it, what actually seems to be a tome, and opens it with a slight hump. The lens are focused on the symbols in the worn pages, which look ancient. The language is quaint, but he seems to go over it loud and clear without any difficulty, as if he was an expert on the matter. With a pronunciation like you've never heard before, he lowers the tome as he finishes speaking, the pentagram glowing with a dark aura, accompanied by an odd sound of energy flowing around the drawn figures. This makes the flashlight dim, and suddenly, a flash bursts through the room. The man steps back in surprise, as the brief absence of light is broken by a red mist forming above the wooden floor.";
	WaitLineBreak;
	say "     'Was something wrong in the formula? I thought...' his words are interrupted when an odd portal tears through the fabrics of space. 'A direct portal to Hell? But it shouldn't look like this...' You realize, by the surprised tone of his voice, that he summoned something he did not expect. He backs away, as he places the camera on a nearby table, pointing towards the portal. Now you can see his full human shape, wearing some kind of robes, contrasting with the dimming red luminescence, holding the tome in his left hand as the other hovers above the ancient pages, as they seem to somehow leaf through on their own.";
	say "     Out of nowhere, a large purple hand bursts out of the portal, his thick fingers ending in pointy dark claws stretched open, then forming a fist forward as more of the powerful arm reveals itself. A brutish form, covered in hard and powerful muscles, passes through, stepping on the pentagram with heavy steps as his red glowing eyes are fixed on the human. The demon brute grins with his menacing sharp teeth, stroking his huge erection while slowly making his way towards the vulnerable ritualist. Cautiously, the human steps to the side and lets go of the tome a little further away, without any sudden moves, and returns to his previous position. He lets the demon approach him, and surprisingly, his massive purple hand gently reaches for the back of the man's head, almost covering it entirely. Although, this is where the brute's sympathy ends, as the much shorter human is forced on his knees, without any resistance from his part.";
	WaitLineBreak;
	say "     The robed man doesn't waste any time, getting his lips around the demon's hard-on, pulsing with eagerness. The hellish fiend lets out a grunt, only to force his cock deeper into the man's mouth, nearly dislocating his jaw. He doesn't stop there, making the ritualist flinch helplessly as the demon shoves it down his throat, the human now kneeling right between the brute's thick and muscular legs. With his large manhood now deep inside his summoner's throat, the demon brute starts thrusting back and forth, mercilessly fucking the much weaker human's mouth. His struggling to breathe only excites the beast even more, as the ritualist is relentlessly facefucked, the demon's massive pair of balls slamming against his chin with every motion.";
	say "     Holding his summoner's head tight with both his hands, the demon keeps on going for a good long while before he loosens his grasp, allowing the man to have a few desperate gasps for air. This brief mercy is over not too shortly after, as the massive brute grabs the man by his hair and pulls him up towards himself. Growling at his face with his threatening grin, the hellish fiend pushes the ritualist against the bookshelf, easily tearing his robes off thanks to the sharp, coal colored claws adorning the demon's large hands. With a loud slap, the brute feels up the human's bubble cheeks, shoving one thick finger up his tight hole, causing the young man to groan in mild pain. Still, the ritualist arches his back, to which the demon responds with a pleased grunt.";
	WaitLineBreak;
	say "     With his throbbing erection in one hand, the hellish brute keeps fingering the man's hole, slipping in another finger in his tight ass as the young researcher moans helplessly. This only makes the demon hornier as he stretches the human's ass even further, burying more of his thick fingers inside. By the time he's done preparing his summoner, the demon begins rubbing the already soaked tip of his pulsing length against the young man's rear. With a thrust, the brute sinks his manhood inch by inch inside the ritualist's hole, who squirms in a mixture of pain and pleasure as he feels his own ass trying to accomodate the biggest cock that has ever entered him. The demon shows no mercy, pounding that ass like there's no tomorrow, intensifying as the wooden shelf which the human is holding onto cranks audibly.";
	say "     The following next minutes are filled with flesh on flesh clapping, beast-like grunts and whimpering moans, then suddenly, the hellish fiend grabs his summoner, holding the man tight against his own demonic muscular frame, while still deep inside his ass, and turns him towards the camera, giving you an overshadowed front view of the human getting pounded hard by a demon brute. His motions get even more intense, and the demon's balls begin to retract. It's not too long until a loud roar of pleasure is heard echoing through the library, as the demonic fiend reaches his climax, filling the young man's bowels full of corrupted seed. It's so much that some leaks out of his ruined hole and starts forming a pool of thick cum beneath them.";
	WaitLineBreak;
	say "     When you think this is over for the poor human, the portal's light dims again, and another hand tears through the crimson veil. You don't see one, nor two, but three more demon brutes coming out of the portal, with equally sizeable erections, pulsing with desire for some tight hole to breed. They must have followed the first, and do not intend to give the ritualist any time to breathe. With his cock still inside the man, the initial brute turns him over to his friends, slowly backing away from the exhausted young man as he leaves a trail of demon cum, still leaking from the human's gaping hole.";
	say "     Without any warning, one of the demons grabs the summoner's head, forcing his jaw open to take the massive erection deep down to his throat, while the others circle around him, rubbing their own lengths with eager lust. With his hole now more than ready, another of the brutes easily manages to grab the human's ass and shove his hellish cock deep inside. The demons spitroast the young man for quite some time, keeping him suspended between themselves and taking turns on both his ends, fucking and filling his insides with even more thick cum. Every plead of mercy is muffled by the unforgiving facefucking the ritualist is being given, and he's pounded hard and deep until nearly the end of the tape. That is, until they finally pause, only to drag the absolutely cum-coated human along with them through the portal.";
	WaitLineBreak;
	say "     When they're about to disappear, one of the demons turns to the camera. With a curious grunt, he approaches it, tilting his head as he grabs the device with only one of his massive hands. Clearly he doesn't know what it is, but he simply decides to take it with him. This could explain how you were able to find the tape in such an odd manner. However, to your disappointment, the image cuts as soon as he crosses the veil, leaving you only with static noise. With nothing left on the tape to watch, whatever happened to the young man remains a mystery. You haven't seen him turning into one of them as it usually happens, and no ordinary human could flip a tome's pages without touching them. Now, if only you could find this grimoire...";

The Demonologist ends here.
