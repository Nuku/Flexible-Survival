Version 2 of Solstice by Stripes begins here.
[Version 2 - NPC form added]
[Version 2.1 - Minor maintenance and character relocation - Luneth]
"Adds the NPC adventurer Solstice to the Flexible Survival game"

[ HP of Solstice                                                               ]
[ 0 - Never met                                                                ]
[ 1 - Wants artifact                                                           ]
[ 2 - Playet got artifact                                                      ]
[ 3 - Played didn't sex                                                        ]
[ 4 - Player sexed                                                             ]
[ 5 - Booked and met                                                           ]

Section 1 - Treasure Hunting

Table of GameEventIDs (continued)
Object	Name
Adventurer	"Adventurer"

Adventurer is a situation. The level of Adventurer is 5.
The sarea of Adventurer is "Outside".
Adventurer is inactive.

when play begins:
	add Adventurer to badspots of girl;
	add Adventurer to badspots of hermaphrodite;
	add Adventurer to badspots of furry;

Instead of resolving Adventurer:
	if HP of Solstice is 0:
		say "     Traveling the city streets, you take a moment to glance behind you and, as you return your eyes to your path, you find it blocked by another figure. Before you is a female silver fox with several fluffy tails. She's dressed rather more unusually than most others you've met. Her red, sleeveless top is tight over her breasts and she has a pair of khaki shorts with some pouches belted to it. She has a pair of goggles on her head, worn resting above her brow. Slung over her back is a backpack. Her appearance, save for her sexy, vulpine nature would lead you to imagine her as a character in an adventure movie or video game, perhaps raiding tombs or hunting relics. Aside from her paw resting on the machete strapped to her hip, she doesn't seem aggressive.";
		WaitLineBreak;
		say "     'Well, hello there,' she says with a touch of a grin at the edge of her muzzle. 'I spotted you a while ago and have been keeping my eye on you. You might be able to help me with a little something.' You try to think back on recent events, wondering what this vixen may have caught you doing. Warily, you ask her just what she had in mind. 'Oh, nothing like that, sweety. Well, not yet anyhow. If you're good, maybe,' she adds with a tilt of her hip and another sly grin, but you catch her paw back on the machete.";
		say "     'I had a little... misunderstanding with that sphinx woman in the museum. I was taking... an interest in one of the artifacts on display and she didn't take too kindly to that. I'm a treasure hunter by trade and my most recent discovery led me to a piece held in the museum. It's not like it's doing anyone any good in there with the city like this, so what's the harm, I say?' Her numerous, fluffy tails swish behind her. 'I mean, I've already been turned into a fox by this crazy venture and now I've got to deal with a mad sphinx who thinks her museum will somehow remain open.";
		WaitLineBreak;
		say "     You find yourself wondering what she would have done had the outbreak not occurred, but have no time to ask as she presses onwards. 'And that's where you come in. You seem chummy enough with her that she'll let you roam around the museum. I want you to go in and get the Onyx Crow's head for me. It's incorrectly housed in the Greek Artifacts wing, though it's actually of Scythian origin.' Seeing your lack of recognition in your eyes, she just rolls hers. 'Look, it's a carved crow's head made of black stone with some gold on it. It's about the size of baseball. Simple enough?";
		say "     'Once you've got it, just find your way back here and I'll trade you some supplies for it.' With a swish of her hips and numerous tails, she grins. 'And maybe throw in a special reward, too.' With that, she runs off into an alley, disappearing and quickly as she came. You find yourself thinking about her offer, wondering if it's time to make a trip back to the museum.";
		now Adventurer is resolved;
		now Onyx Crow is active;
		now HP of Solstice is 1;
	else if HP of Solstice is 2:
		say "     Managing to find your way through the chaos of the city, you make your way back to the intersection where you first met the vulpine adventurer. True to her word, she steps out from one of the alleyways as you arrive. 'Did you get it?' she asks quickly";
		if Crow Artifact is owned:
			say ". Nodding, you slip off your pack and remove the carving. She smiles happily and snatches it out of your hand, looking it over with a critical eye. 'Yes! I've got it all. I've finally struck it big this time!' she says with elation in her voice. She puts a paw over her mouth, suddenly wary that her raised voice will call undo attention. Grabbing your wrist, she leads you between a few buildings. 'You can call me Solstice by the way. I've been in the treasure hunting biz for a while, but this'll be my best find yet, thanks to you.' She slips into a small, vacant shop and shuts the boarded up door behind you. It looks like it was closed down long before the outbreak, making it a fairly safe place to hide out.";
			delete Crow Artifact;
			WaitLineBreak;
			say "     Setting the onyx carving onto a table, she slips off her own pack and pulls out two cloth-wrapped bundles. Unwrapping them reveals two more onyx carvings, much like the head, but representing the upper and lower body of a crow. 'Those archaeologists who found this didn't know the first thing about what they were talking about. The head's not part of a staff, it's part of a statuary. I traced some clues and found the Scythian tombs where the other two sections were held. The last had been raided by the ancient Greeks, which is how it ended up in Minos's treasure room. And now, if I... can... just...' she says, focusing on the middle piece, turning some subtle mechanism hidden in the stone. 'There!' she says as short pegs pop from the top and bottom of it so it can be fitted to the others. 'The head alone might be a curiosity, but the whole statue will be worth a whole lot mo-wwwahhhhh!'";
			WaitLineBreak;
			say "     As she clicks the final piece into place and turns the golden collar to lock the head on, her elation turns to startled fear as a black energy flows from the statuary. The golden eyes shine brightly as well, pouring a focused beam of golden light into the adventurer's eyes, transfixing her in its gaze. The black energy curls in the air, coiling around Solstice's arms and sinking into her. She groans as the dark glow expands, the darkness seems to seep into her paws, turning them black. This blackness spreads up her arms and into her body, which creaks and pops as the cursed aura changes her. As the blackened fur starts to turn into feathers, the ebon light climbs over her head, changing it as well. Her muzzle hardens and reshapes itself into a pointed beak.";
			say "     When large wings emerge from her back, you manage to overcome your shock at the rapid transformation. Grabbing a nearby length of pipe, you swing it at the cursed artifact. There is a high-pitched shriek as the blow connects, knocking the Onyx Crow from Solstice's taloned paws. The partially-transformed vixen collapses to the floor, scrambling away from the artifact. It shrieks and caws angrily for a few minutes, black talons of dark light clawing around it, seeking its victim? prey? host? before its power seems to fade with a long caw of 'Nooooo!'";
			WaitLineBreak;
			say "     You raise the pipe, ready to strike it again, but find that the end of it has been so blackened by the dark power that it's crumbling away. There are a few clicks and the three parts unlock and fall apart, once again trapping whatever that was. With the pipe still falling apart, you bump the three sections to opposite ends of the room and turn your attention to Solstice.";
			say "     Whatever just happened, whether some bizarre effect of the infection or some strange, magical power, it has left a profound impact on the vixen. Her upper body has been turned into that of a crow, with a largely corvid head, taloned hands like a bird's foot and black feathers across her upper half. There are still some subtle signs of her previous vulpine nature as well, with foxish ears on her head and mammalian breasts filling her red shirt. Her lower body is largely unchanged, though the tips of her tails now end in black plumage.";
			WaitLineBreak;
			say "     She groans and rubs her head. 'Stupid, stupid fox. Rule number one of treasure hunting: Artifacts are _always_ cursed.' She gets back to her feet slowly, looking over her body. Her talons run through her feathers and she moans softly, clearly finding sensual pleasure in her new form. Stretching her wings and stroking her breasts, she turns back to you. 'Now, I do believe I promised you a reward, sweety,' she purrs sensually, a lustful glint in her eyes that wasn't there before.";
			say "     [bold type]Do you want to take her up on her offer?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Yes.";
			say "     ([link]N[as]n[end link]) - No.";
			if player consents:
				say "     Deciding not to miss out on this chance, you agree to the new vulpogryph's offer and she grins happily. Moving over to the small bedroll she's set up here, she shucks her top and shorts quickly, spreading her intriguing body out for you to see. Her lovely breasts are covered in soft, black feathers and her nipples are silvery spots half-hidden beneath that soft down. Looking lower, the feathers transition back to fur at her slender waist. As your eyes travel further, she spreads her legs and teases her wet pussy with a moan. The soft, gray fur of her muff parts to show the dark lips of her waiting sex. She grins at the corners of her beak, crooking a finger for you to approach and get your [']reward['].";
				say "     Drawn in by her alluring body, you move between her legs, kissing along one thigh until you reach her wet folds. You slide your tongue along it, lapping at her pussy. 'Mmm... I should really have let myself have some fun earlier. Though it'll be much nicer now that I've waited for someone special,' she says as she runs her avian talons over your head.";
				WaitLineBreak;
				if player is male:
					say "     She slides her paws to your shoulders and tugs on them lightly, urging you to move atop her. You nuzzle up to her bosom, lick those nipples and then move up to kiss at the corner of her beak. Her feathered body rubs against you as your cock brushes across her furry, vixen pussy before sinking into her, making her moan lustfully. You run your hands over her, enjoying the sensual way her body moves against your as you thrust into her. Her vulpine cunt squeezes and milks at you until you can take no more and thrust deep inside her to unleash your hot load, making her caw in orgasmic release.";
				else:
					say "     She slides her paws along your back and tugs on them lightly, urging you to turn around atop her. You turn around, bringing your pussy over her head while you continue to delve your tongue into her. It takes her a bit of work to get her beak into a position to please you comfortably, but her tongue darts out to lap at your folds while her taloned paws stroke you and slide into your cunt. You dive your tongue in deeper while she fingers you, licking up what flowing juices she can get. You both continue like this until you both cry out in orgasmic pleasure, Solstice cawing loudly in release. Her vulpine cunt squeezes and milks at your tongue as you drive it into her quickly and she pumps her fingers hard and fast into your quivering hole until you both collapse, panting for breath and wet with female juices.";
				WaitLineBreak;
				say "     After some pleasant snuggling, you both get off the bedroll and carefully pack up the separate pieces of the statuary in bundles of cloth. While Solstice doesn't have plans to put it back together, you both certainly agree that you can't just leave it lying around for someone else to find and reassemble. Before you head out, she gives you another kiss and a pat on the behind, saying she'll see you again soon. It's not until you're well on your way that you remember that you never got those supplies from her. Though you can't say that you were displeased with the reward you ended up receiving instead even as you feel her infection starting to spread into you.";
				vulpogryphinfect;
				now Resolution of Adventurer is 1; [had sex with Solstice]
				now Adventurer is resolved;
				now HP of Solstice is 4;
				now lastfuck of Solstice is turns;
				increase score by 25;
			else:
				say "     Feeling rather uncertain about having sex with the recently-transformed Solstice, you quickly change the subject, pointing out that something has to be done about the statue. She seems a little disappointed, but nods and gets up. Using the cloths she had them bundled in, you gather up each piece and wrap them up again. While the vulpogryph doesn't have plans to put it back together, you both certainly agree that you can't just leave it lying around for someone else to find and reassemble. That done, you remind her about your payment and take the food and water from her. It's not much, but it'll certainly help. She also passes you a small voucher card labelled [']50 credits['], saying it's some kind of new money.";
				say "     Bottle of water, food and 50 freecred obtained.";
				increase freecred by 50;
				increase carried of water bottle by 1;
				increase carried of food by 1;
				increase score by 25;
				WaitLineBreak;
				say "     Before you head out, she gives you a big hug, folding her feathery wings around you. She runs her paws along your back, scritching under your backpack while kissing you. As she lets you go, she gives you a little nip with her beak on your neck. Solstice adds a pat on your behind, saying that she'll see you again soon. Walking off, you go a short distance before you feel a tingle start to spread through you. Feeling the encroaching change, you run your hands over your face and neck, looking for some fluid or break where the nanites might be affecting you, but can't find one. It's not until after the change has run its course that you find it, one of the vulpogryph's feathers having gotten stuck under your backpack.";
				vulpogryphinfect;
				now Resolution of Adventurer is 2; [refused sex with Solstice]
				now Adventurer is resolved;
				now HP of Solstice is 3;
				now lastfuck of Solstice is turns;
		else:
			say ", but frowns as you shake your head, telling her you had to leave it somewhere. 'Look, there's no deal until you bring it to me.' She growls a little and grinds her teeth before disappearing back between the buildings.";
	else:
		say "     As you wander through the city, you spot the flash of silver tails at the edge of a rooftop. You rush up the building's fire escape, but by the time you make it there, the roof is empty.";
		now Adventurer is resolved;

Table of GameEventIDs (continued)
Object	Name
Onyx Crow	"Onyx Crow"

Onyx Crow is a situation. The level of Onyx Crow is 5.
The sarea of Onyx Crow is "Museum".
Onyx Crow is inactive.

when play begins:
	add Onyx Crow to badspots of girl;
	add Onyx Crow to badspots of hermaphrodite;
	add Onyx Crow to badspots of furry;

Instead of resolving Onyx Crow:
	if HP of Solstice is not 1:	[should not come up, but just in case, we have this.]
		say "     You find yourself in the Greek Artifacts wing, but are interrupted by the raucous arrival of a large band of Satyrs. Laden with wine and a few nymphs for them to share, they start up an orgy of drinking and sex. There are far too many of them to fight at one time and while it is tempting to join into their debauchery, you manage to pull yourself away lest you lose yourself to their drunken ways.";
		now Onyx Crow is resolved;
	else:
		say "     You manage to find your way to the Greek Artifacts wing where the vixen adventurer said her artifact was housed. Taking a quick look around, you find several priceless items on display. You are quite tempted by a few of them, but doubt you'd be able to smuggle them out when the military arrive. But you have more pressing needs right now and supplies are more valuable than treasure you can't keep. Getting it out can be the vixen's problem.";
		say "     Speaking of, in the next room in the wing, you spot a display case that looks like it's been broken into recently. The wooden case is cracked and even from here, you can see that the lid doesn't close properly anymore. There's some rope tying it shut and a tag labelled 'Restoration needed' on it. If that's her handiwork, it appears the treasure hunter was about to get her prize when she was caught in the act.";
		WaitLineBreak;
		say "     But unfortunately, you also won't have an easy time of it. It appears that Valerie's put a watchdog to guard the artifact. Or three watchdogs. Or three in one. Between you and the case are the three snarling heads of a giant dog beast. Like Cerberus of myth guarding the entrance to the Underworld, so does this monster bar your way to the black treasure.";
		now cerbfight is 3;
		challenge "Cerberus";
		if cerbfight is 3:
			say "     Fleeing the three-headed dog, you run from the wing and try to make your way back to the lobby. You'll have to recover and try coming back later. Maybe the dog will be gone by then, but you don't think you'll be that lucky.";
			now Resolution of Onyx Crow is 3; [fled the cerberus]
		else if cerbfight is 2:
			say "     Having passed out after the lustful creature has had its way with you, you awake to find yourself ejected from the room. You are wet and sticky with canine slobber and the herm's juices, which you try your best to wipe off to remove the evidence of your fight with the guard before returning to the lobby. You'll have to recover and try returning there later. Perhaps you'll fare better next time, though part of you certainly enjoyed losing. You find yourself thinking it might just be more fun to keep losing to the creature.";
			now Resolution of Onyx Crow is 2; [lost to cerberus]
		else if cerbfight is 1:
			say "     Having beaten the guard, you are now free to advance upon the case. Looking it over, you can see that it does indeed hold the Onyx Crow. It is a crow's head carved from a glossy, black stone. The detail is a little rough, but there is an ornate band of gold around its base as well as golden eyes. There are also thin traces of gold that run down the back of its had, forming a stylized pattern. It looks expensive enough, but there must be much more valuable pieces than this one.";
			WaitLineBreak;
			say "     Investigating further, you look over at the museum's description of this piece. It goes on to talk about it being found in a collection of Greek treasures. '...discovered by so-and-so... treasure vault... king of Crete in the year blah-blah-blah...' The only interesting detail comes when it talks about how the Onyx Crow was probably the headpiece to a staff or scepter and likely of ceremonial significance. Examining the carving, you do find that there is a square hole carved into the underside, which the plaque notes historians believe was used to fit it into place on the handle, but all that remains is the headpiece.";
			say "     While this trip to the museum has been interesting, you'd best just bring your find back to the vixen adventurer to receive your reward. You tuck the artifact into the bottom of your pack and leave the area, not wanting to get caught by Valerie in here with stolen goods.";
			increase carried of Crow Artifact by 1;
			increase score by 10;
			now HP of Solstice is 2;
			now Resolution of Onyx Crow is 1; [won vs cerberus]
			now Onyx Crow is resolved;
			now Adventurer is active;


Table of Game Objects (continued)
name	desc	weight	object
"Crow Artifact"	"     The black onyx carving is shaped like a crow's head. It is decorated with golden eyes and an ornate golden band around its base."	3	Crow Artifact

Crow Artifact is a grab object. It is part of the player. It is not temporary.

instead of using Crow Artifact:
	say "     You probably shouldn't be fiddling around with an expensive, and stolen, artifact. You'd best bring it back to that vulpine adventurer.";


an everyturn rule:
	if ( HP of Solstice is 3 or HP of Solstice is 4 ) and Solstice is not in Makeshift Rec Room:
		if lastfuck of Solstice - turns >= 12:
			move Solstice to Makeshift Rec Room;
			if the player is not in Makeshift Rec Room:
				say "You get this odd feeling and consider further checking needs to be done at the abbey.";


an everyturn rule:
	if ( HP of Solstice is 3 or HP of Solstice is 4 ) and Solstice is in Makeshift Rec Room and the player is in the Grey Abbey Library:
		say "     Returning to the central room of the library, you are startled to find a new person casually waiting for you. Solstice is here, leaning against one of the bookshelves, glancing through a book. The vulpogryph smiles and tucks the book back on the shelf as you come striding over[if HP of Fang is 1 or HP of Fang is 2]. Sparing a quick glance to Fang, who seems as surprised to find the intruder here, the guard wolf dips his ears and slinks back, clearly having failed in his guard duties somehow[else if HP of Fang is 3]. Fang growls a little from his post at the door, clearly upset that this intruder somehow managed to get past him unnoticed[end if].";
		say "     'Hey there. Pretty nice setup [if ( number of booked people + number of bunkered people ) > 2]you and your pals have[else]you've[end if] got going here. Not much interest to the critters out there and a reinforced bunker in case things get really bad. Definitely need to get some more supplies for that, though. Things got rather hectic back at my old place, so I figured I could move in here with you, sweety.' She runs a taloned paw along your side.";
		if HP of Solstice is 3:
			say "     Still upset with her about the feather, you push her hand away. 'What? Oh, I'm so sorry, hon. I didn't mean for anything like that to happen. It must've fallen out,' she says apologetically[if the player is partvg]. 'It certainly looks good on you though,' she adds with a grin and another stroke to your altered body[end if]. You calm down, accepting that it could very well have been an accident.";
		say "     You also don't recall telling her where you've been staying and, as if sensing your upcoming question, the vulpogryph grins. 'Oh, I was just keeping an eye on you and followed you back to your clubhouse. You should be a little more careful about that. And I can certainly be of help to you as well, sweety. Being a professional treasure hunter, I'm very good at finding stuff. I could give you some tips... for a price.' She continues running her paw over you. 'A little playtime with my special sweety sounds fair. Though, if you want to skip the [bold type][link]lesson[as]Solstice lesson[end link][roman type] and get straight to the fun, that'd be even better,' she says with a grin at the corner of her long beak.";
		now HP of Solstice is 5;


Section 2 - Solstice the Vulpogryph		[coming soon]

Table of GameCharacterIDs (continued)
object	name
Solstice	"Solstice"

Solstice is a woman.
The description of Solstice is "[solsticedesc]".
The conversation of Solstice is { "Treasure!" }.

to say solsticedesc:
	say "     Transformed by the strange artifact you helped her recover, Solstice has become an unusual, gryphon-like creature. Her upper body is decidedly avian in nature, with black feathers and a crow's head and beak. Her eyes are sharp and have a lustful glint as they look at you. She has a pair of broad, black wings attached to her back as well. Her paws resemble bird-like talons. There are some hints of her previous, vulpine nature as well, with foxish ears and mammalian breasts filling her red shirt. Her lower body is largely unchanged and is that of a sexy, multi-tailed vixen, though those tails are now covered in black plumage. Her fur is a silvery gray in stark contrast to her darker feathers. Along with her red, sleeveless top, the vulpogryph wears a pair of khaki shorts with attached pouches. She's even set up her bedroll in one of the reading rooms to the side of the library and is keeping her small backpack there as well.";

the linkaction of Solstice is "Possible Actions: [link]talk[as]talk Solstice[end link], [link]smell[as]smell Solstice[end link], [link]fuck[as]fuck Solstice[end link], [link]lesson[as]lesson Solstice[end link][line break]";

the scent of Solstice is "Solstice smells of dusty tombs and ancient secrets under a thick layer of arousal.".

Instead of conversing Solstice:
	say "[one of]'It's so nice being here with you, my sweety,' she rumbles, running a paw across your chest.[or]'We should spend more time together, hon.[or]'I'd love to tell you about my adventures. We could make a sexy [link]lesson[as]lesson Solstice[end link] out of them,' she says, nibbling your ear.[or][if player is fullyvg]'You make such a sexy vulpogryph, my dear. I knew you'd make a wonderful mate,' she purrs sensually as she runs her taloned paws over you.[else if player is partvg]'You will be such a sexy vulpogryph when I'm done, my dear. You'll be my perfect mate,' she purrs sensually as she runs her taloned paws over you.[else]'I think you'd look much better as a sexy vulpogryph like me, hon,' she purrs sensually as she runs her taloned paws over you.[end if][or]'Mmm... you should stay here with me, sexy. We could so much fun together.'[or]'I think I'd prefer to stay out here than in the bunker, if it's all the same with you.'[in random order]";


Section 3 - Lesson Time

lessontiming is an action applying to nothing.
lessontime is a number that varies.
solsticefsex is a number that varies.
solsticemsex is a number that varies.
Understand "learn Solstice" as lessontiming.
Understand "learn from Solstice" as lessontiming.
Understand "lesson Solstice" as lessontiming.
Understand "Solstice lesson" as lessontiming.

check lessontiming:
	If Solstice is not visible, say "You can't listen to her stories if she's not around." instead;

carry out lessontiming:
	if lastfuck of Solstice - turns < 8:
		say "     'As much as I'd enjoy that,' Solstice replies, running her taloned paws over you. 'I'm not quite up for claiming my special payment afterwards for your lesson time. And we don't want to miss out on that, do we?'";
	else:
		now lessontime is 1;
		say "     At your offer to hear some of her stories, she smiles leads you off to the side room where she's set up her bedroll. Sitting side by side on it, she snuggles you close, enfolding you in her wings. As she tells you about the time she [one of]went in search of Incan gold[or]excavated a Mayan temple[or]searched for a lost city in the African jungle[or]evaded the Chinese police while hunting for an ancient temple[or]traveled across Europe in search of Roman treasures[or]wandered the Arabian deserts in search of treasure[or]followed a map to undersea treasure[or]fought villainous raiders trying to steal her prize[or]circumventing traps and puzzles centuries old in a lost tomb[in random order], her paws alternate between re-enacting the adventure and fondling you. The story is also broken up by nuzzles and nips from her pointed beak. While the story ends with the adventurer [one of]snagging a golden treasure[or]barely making it out alive[or]with some minor artifact[or]making an archaeological discovery, but gaining no actual treasure[or]escaping as the whole place collapses[or]holding a handful of gemstones and jewelry[or]finding a few trinkets to barely meet her expenses[purely at random], you do get the feeling that it was at least a little exaggerated. Regardless, you do find yourself growing closer to the affectionate woman";
		if perception of player < 20:
			let bonus be (( the intelligence of the player minus 10 ) divided by 2);
			let diceroll be a random number from 1 to 20;
			increase diceroll by bonus;
			if diceroll > 10:
				say " and also picking up a few tips and pointers on how to be a good treasure hunter.";
				say "[bold type]Your perception has increased by 1![roman type][line break]";
				increase perception of player by 1;
			else:
				say " even if you didn't manage to learn anything useful from her [']lesson['] this time.";
		else:
			say " even if you don't think you'll be able to learn more from her [']lessons['].";
		increase libido of player by 10;
		decrease humanity of player by 5;
		increase morale of player by 2;
		if "Strong Psyche" is listed in feats of player, increase humanity of player by 2;
		if "Weak Psyche" is listed in feats of player, decrease humanity of player by 1;
		WaitLineBreak;
		say "[solsticesex]";


Section 4 - Fucking Solstice

the fuckscene of Solstice is "[sexwithSolstice0]".

to say sexwithSolstice0:
	if lastfuck of Solstice - turns < 8:
		say "     'As much as I'd enjoy that,' Solstice replies, running her taloned paws over you. 'I'm not quite up for another go quite yet. Can I get a rain check on that?'";
	else:
		say "     Solstice grins at your offer and takes your hand in hers, rushing you off to the reading room she's claimed as her own. She wraps her wings and tails around you. Her taloned paws run over your body, kneading lightly. They move down to your hips and then around to your ass, gripping it as she pulls you tightly to her. 'Mmm... I've been looking forward to spending some quality time with you, sweety.' She nuzzles her beak against your cheek and nips lightly at your neck.";
		say "[solsticesex]";

to say solsticesex:
	if player is not male:
		say "     Solstice runs her paws between your legs and walks her fingers across your wet folds. She seems a little disappointed that you don't have a penis to fill her, but continues to snuggle up to her chosen mate";
		if solsticefsex is even:
			say ". The vulpogryph lowers you onto your back and slips [if cunt width of player is 1]a finger[else if cunt width of player < 4]a pair of fingers[else if cunt width of player < 6]a trio of fingers[else]a trio of fingers and eventually her whole hand[end if] into your wet cunt. Meanwhile, you play with her feathered breasts, teasing her nipples as you kiss and nuzzle at her beak. She fingers herself with her other paw, but occasionally switches between them, spreading her hot juices onto you and rubbing your pussy juices onto hers. You feel a warm, pleasant tingle every time she does this, as if part of her is flowing into you. She pays particular attention to your clit, perhaps rubbing it in the hopes it will grow into a lovely cock for her.";
			say "     Eventually, the vulpogryph's playful fingers eventually send you over the edge as she switches again. You cum hard, soaking her hand in your juices as you climax. You moan and kiss her passionately over and over again as your cunt quivers in delight. As your climax wanes, she moves the soaked paw to her pussy and fingers herself hard and fast, soon peeking as your juices are rubbed into her vaginal walls. She caws loudly in pleasure and her sweet waters drip down onto your already sticky crotch. She gives you a few last playful nips and rolls over onto her back beside you, moaning softly after her powerful release.";
			say "     'Mmmm... that was very nice, my dear. It felt so good to share myself with you like that. Though think how much better it would be if you had a nice, hard cock to fill me. You should get on that, sweety,' she purrs, running a feather across your sensitive pussy and flicking it across your clit. She rests her head on your chest and you put your arms around her, holding the lovely vulpogryph while feeling much closer to her after your time together.";
		else if solsticefsex is 1:
			say ". After lowering you to the ground and snuggling up beside you, she reaches over for her pack. 'I have something in her to help us, my dear,' she says as she rummages through it. 'I found it while investigating a medieval nunnery. It seems one of the sisters was not as chaste as she should have been.' Pulling it out, she reveals a phallus made of hard, polished wood. 'It's very smooth and was such a nice fit that I decided just to keep it for myself. Though I wouldn't mind sharing it with my special sweety,' she adds, nipping at your neck as she brushes the dildo's glans across your pussy.";
			say "     You moan and spread your legs slowly, tensing just a little. But when she slides it into you, it feels very pleasant and is indeed quite smooth and polished, sliding with ease into your wanton folds. The toy is quite arousing, shaped perfectly to please a woman and the thoughts of chaste, virginal sisters of the cloth using this sends lustful shivers along your spine. You bury your face in Solstice's downy bosom, nuzzling her breasts before moving your lips to her silvery nipple. You lick, kiss and suckle at it and are surprised when it starts to give a little milk. Her taste is exciting, but very hard to describe. You can find no comparison for it, but find it wonderfully unique and made just for you.";
			say "     Solstice works the toy into you for a few minutes, then slowly withdraws it, wanting to take her turn as well. She moans lustfully as she presses it between her wet folds with a mini-orgasm of her own. You stroke your wet folds and finger yourself as you await your turn again, keeping yourself excited, but saving your climax for the wonderful toy. When she returns it to your cunt, you get her to fuck you thoroughly with it, bucking and moaning loudly until finally you have a crashing climax that leaves you panting on your back. Moments later, the toy stuffed back into her, Solstice orgasms as well. You cuddle in each other's arms, panting and soaked in musky, female cum.";
		else if solsticefsex is odd:
			say ". After lowering you to the ground and snuggling to you, she rummages through her bag once again. Pulling out the shapely toy, she grins at you and you nod happily and spread your legs. You nuzzle and kiss one another while taking turns with the smooth dildo inside your gripping cunts. You alternate several times, spreading your pussy juices across it and with each other as you fuck yourselves and each other with it. Nuzzling at her bosom, you nurse for her milk, getting her to moan as you enjoy her unique taste flowing across your tongue. You share the toy back and forth until you both come to a wild, crashing orgasm. Panting after your lovemaking, you cuddle together and she nuzzles you, musing about how much nice it'd be with the real thing.";
		increase solsticefsex by 1;
	else:
		say "     Solstice runs her paws between your legs and across your throbbing cock and full balls. She releases a caw of pleasure and rubs your erection with a lustful moan";
		if the remainder after dividing solsticemsex by 3 is 0:			[Solstice on top]
			say ". She gently guides you down to rest on your back and runs her paws over your body as she leans in to give you a peck. Plucking a feather from her plumage, she grins and slides it teasingly across your inner thigh, then across your balls and over your cock. You groan softly and your cock twitches at the delicate touch of the soft feather teasing you. Solstice nuzzles at your chest while continuing to tickle your thigh and caress your throbbing erection with it.";
			say "     After a few minutes of playful teasing, you are quite hard and leaking and she can wait no longer. Moving atop you, she rubs her vulpine hips down onto yours, grinding her wet folds over your cock before letting you sink into her. She moans and kneads her paws at your chest as she starts riding your pulsing member. Your hands run through her soft plumage and move up to her breasts, caressing the lovely globes of feathered flesh and teasing her nipples to make her release sweet caws of delight.";
			say "     You thrust up into her in time with her bouncing body, pounding her good and hard until you both climax. Your throbbing cock pumps blast after blast of thick seed into her, filling her eager womb with your semen as she caws loudly while cumming. She collapses atop you and snuggles you close, nipping and nuzzling at you. 'Mmm... that was wonderful, my precious mate[if the player is fullyvg]. Aren't you much happier now as a lovely vulpogryph?' she purrs as she rubs her body against yours[else if the player is partvg]. And won't it be even better when you're fully a vulpogryph?' she purrs as she rubs her body against yours[else]. I knew there was something special about you. And won't it be even better when you start turning into a lovely vulpogryph to be my mate?' she purrs as she rubs her body against yours[end if]. Overcome by the pleasure of your lovemaking, you can't help but feel closer to the sex vulpogryph, your mate.";
		else if the remainder after dividing solsticemsex by 3 is 1:		[Solstice on bottom]
			say ". She stretches herself out on the bedroll, showing off her sensually-shaped body for you. Her paws run over her lovely breasts, through her soft feathers as it transitions to fur, then down to her hips. She spreads her legs and brushes her fingers across her pussy, spreading those wet lips in clear invitation to fill her wanton hole.";
			say "     After her lovely display, you move atop her right away, lining up your cock with her cunt and sinking slowly into her, enjoying her lovely moans as she squirms beneath you. You kiss and nuzzle at one another lustfully as you start thrusting, pumping into her lovely body. Her soft fur and feathers feel wonderful against your body as each thrust has you rub against them. She wraps her fluffy tails around you and enfolds you both in her wings, making you feel as if she's cuddling you with her whole body.";
			say "     As you fuck the sexy vulpogryph, she nips at your neck and brushes her beak against your cheek. Your cock throbs and pulses, leaking precum steadily as you pound into her. Her vulpine cunt grips and squeezes at your cock, milking at it[if player is vgcocked] and clamping down around your swelling knot[end if]. Feeling your coming climax, you switch to hard, fast strokes, making her release caws of pleasure with each one.";
			say "     When you do cum, you thrust deep inside her and unleash your hot, thick load into her eager cunt. You pump blast after blast of your hot seed into her, making her caw loudly one last time as she orgasms[if cock width of player >= 20]. Her slender, vulpine tummy bloats up considerably as your excessively large balls drain into her. She moans happily at the sight of this and rubs her taloned paws over she overstuffed womb[else if cock width of player >= 12]. Her slender, vulpine tummy gains a plump bulge from the considerable output of your large balls. She smiles at the sight of this and rubs her taloned paws over the bulge of her filled womb[else]. She smiles in pleasure as she feels you drain your balls into her womb[end if]. Once your cock stops pulsing and your balls are empty, you slide your softening shaft from her and snuggle up beside her.";
		else:											[Solstice 69]
			say " before lowering herself to her knees between your legs. She nuzzles at your thighs and gives you soft nips with her beak while her paws continue to work over your shaft and ballsack. Opening her beak, she starts to lick over your shaft while carefully taking you into her mouth. Her tongue works eagerly to please you, showing a surprising amount of skill given her beaked mouth.";
			say "     You stretch out across her bedroll, allowing her to turn around and bring her hips over your face. With her hot, juicy pussy right there in front of you, you can't help but lick your lips before diving into it with your tongue. She releases a murr of pleasure as you lick at her vulpine cunt, sending quivers of delight through her. As you enjoy your 69 with the exotic gryphoness, you run your hands over each other's body. The motion of her soft fur and feathers across your [bodydesc of player] body feels wonderful.";
			say "     Eventually it all becomes too much for [one of]her and she releases a caw of pleasure as you feel her pussy squeeze down onto your probing tongue and her hot juices soak your face. This sets you off and you cum moments after, shooting your hot seed into her beak. She swallows it down as best she can, but much of it flows down over your spurting loins[or]you and you cum, shooting your hot seed into her beak. She swallows it down as best she can, but much of it flows down over your spurting loins. This sets her off moments later, releasing a caw of pleasure as you feel her pussy squeezing down onto your probing tongue and her hot juices soaking your face[purely at random]. After licking up most of the overflowed semen from your crotch, she turns around to snuggle with you, pressing your face to her bosom to nurse from her again.";
		increase solsticemsex by 1;
	now lastfuck of Solstice is turns;
	if lessontime is 1, vulpogryphinfect; [double-infection from lesson-time]
	vulpogryphinfect;
	now lessontime is 0;


Section 5 - Definitions

Definition: a person is vgfaced:
	if facename of player is "Vulpogryph", yes;
	no;

Definition: a person is vgskinned:
	if skinname of player is "Vulpogryph", yes;
	no;

Definition: a person is vgbodied:
	if bodyname of player is "Vulpogryph", yes;
	no;

Definition: a person is vgcocked:
	if cockname of player is "Vulpogryph", yes;
	no;

Definition: a person is vgtailed:
	if tailname of player is "Vulpogryph", yes;
	no;

Definition: a person is partvg:
	if facename of player is "Vulpogryph", yes;
	if skinname of player is "Vulpogryph", yes;
	if bodyname of player is "Vulpogryph", yes;
	if cockname of player is "Vulpogryph", yes;
	if tailname of player is "Vulpogryph", yes;
	no;

Definition: a person is fullyvg:
	if facename of player is "Vulpogryph" and skinname of player is "Vulpogryph" and bodyname of player is "Vulpogryph" and cockname of player is "Vulpogryph" and tailname of player is "Vulpogryph", yes;
	no;


Section 6 - Endings

when play ends:
	if HP of Solstice >= 5:
		if bodyname of player is "Vulpogryph":
			if humanity of player < 10:
				if player is male:
					say "     As you give in to your new, vulpogryph instincts, Solstice is there for you. She runs her paws over your body and leads you off with her in search of adventure in the wild, changing world. It all soon becomes clear to you. She is your special mate, the one you were meant to be with. Using her knowledge of ancient ruins, you travel to a Mayan temple and make it your new home, intent on nesting there.";
					say "     You are also in luck, able to capture an archeological team that was there before the outbreak struck. Watching for a few days from the jungle, make your plans. Such ideas come easily to you both, being a mix of clever corvid and sly fox. You trick and infect the others through judicious application of infectious feathers and fluids. You end up starting your nest of vulpogryphs with a big team of sexy hybrids eager to raise a healthy brood of vulpogryph pups with their mates... between expeditions to search for more relics and set up new nests in ancient cities and temples. But that is a story for another day.";
				else:
					say "     As you give in to your new, vulpogryph instincts, Solstice is there for you. She runs her paws over your body and leads you off with her in search of adventure in the wild, changing world. It all soon becomes clear to you. She is your special lover, the one you are meant to be with. Using her knowledge of ancient ruins, you travel to one a Mayan temple and make it your new home, intent on nesting there.";
					say "     You are also in luck, able to capture an archeological team that was there before the outbreak struck. Watching for a few days from the jungle, you each pick one from the supply of unchanged humans and make your plans. After snagging your chosen males one night to make into your mates, you trick and infect the others through judicious application of infectious feathers and fluids. You end up starting your nest of vulpogryphs with a big team of sexy hybrids eager to raise a healthy brood of vulpogryph pups with their mates... between expeditions to search for more relics and set up new nests in ancient cities and temples. But that is a story for another day.";
			else:
				say "     As the soldiers are moving into the city to rescue those they can, Solstice comes up and tells you that she'll need to split for a bit and meet up with you later. As an 'adventurer', she explains, some people in authority may not take to kindly to her track record with certain international governments or legal technicalities. She flashes you the contents of her backpack, filled with so many shinies that your half-corvid heart flutters with excitement. With that, she gives you a loving kiss and a grope, promising to get in touch with you once you're released.";
				if player is male:
					say "     After you're cleared by the military and given a treatment that you can already feel fading against your magically-enhanced infection, you set yourself up in a temporary household, knowing that your mate will be coming once the heat's died down. And true enough, she ends up at your doorstep a few weeks later. After some lustful lovemaking to celebrate your happy reunion, you start making plans and move into Solstice's lovely home. While not quite a mansion, it's certainly quite luxurious and has plenty of space for her new mate to move in, as well as any guests you may wish to have over to enjoy your company.";
				else:
					say "     After you're cleared by the military and given a treatment that you can already feel fading against your magically-enhanced infection, you set yourself up in a temporary household, knowing that your friend will be coming once the heat's died down. And true enough, she ends up at your doorstep a few weeks later. After some lustful lovemaking to celebrate your happy reunion, you start making plans and move into Solstice's lovely home. While not quite a mansion, it's certainly quite luxurious and has plenty of space for her new friend, as well as the two cute researchers you manage to snag from a university. These are made into your mates, sexy vulpogryphs with throbbing cocks to fill your needy bodies.";
				say "     You start accompanying Solstice on her expeditions, making them much more successful with someone to watch her back. It doesn't hurt as well that the protection of archaeological sites and museums are rather low on most authority's lists in the new, chaotic world. Your home is soon filled with lovely antiquities and you are quite rich from the funds you gain from private sales to interested collectors. You always have loads of fun on these expeditions and always celebrate the wonderful sex when you get home. Soon, there's a healthy nest of vulpogryph pups running through the halls.";
		else:
			if humanity of player < 10:
				say "     When you succumb to your infection, Solstice sadly packs up her stuff from the library and heads back out into the city. She slips past the military cordon and returns to her life as a treasure hunter.";
			else:
				say "     As the soldiers are moving into the city to rescue those they can, Solstice comes up and tells you that she'll need to split. As an 'adventurer', she explains, some people in authority may not take to kindly to her track record with certain international governments or legal technicalities. You catch a glimpse of something gold inside her backpack and suspect she's gathered quite a few precious items from around the city. The vulpogryph gives to a tight hug and nuzzles you with her beak, saying she'd really wished it'd worked out better with you[if diegochanged < 2], but also that she's met a cute, sneaky coyote who's promised to help her trick her way past the authorities on her expeditions from now on[else], but that she's got plans to snag a sexy archeologist she knows into being her mate and adventuring partner[end if].";

Solstice ends here.
