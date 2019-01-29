Version 5 of Anastasia by Stripes begins here.
[Version 4 - Salamander Raid touch-ups and post-SR sex menu]
[Version 5 - Introduction Rewrite - By Taelyn]
"Adds a non-anthro Phoenix named Anastasia."

[	HP of Anastasia			]
[ 0 = quest not started/failed	]
[ 1 = freed Anastasia			]
[ 2 = watched by Anastasia]
[ 3 = got egg				]
[ 4 = put egg in volcano cave		]
[ 5 = egg ready				]
[ 6 = Anastasia hatched			]
[ 7 = sexed up Anastasia once		]
[ 8 = more sex w/Anastasia		]
[ 9 = shown sex toy 			]
[ 10 = taken into volcano		]
[ 11 = been in the volcano 2+		]
[ 12 = salamander raid completed ]


ScaleValue of Anastasia is 3. [human sized]
SleepRhythm of Anastasia is 0. [0 = awake at all times, 1 = awake in the day, 2 = awake at night]
Cocks of Anastasia is 0. [cock]
Cock Length of Anastasia is 0. [cock length]
Cock Width of Anastasia is 0. [ball size]
Testes of Anastasia is 0. [no balls]
Cunts of Anastasia is 1. [no pussy]
Cunt Length of Anastasia is 0. []
Cunt Width of Anastasia is 0. []
Breasts of Anastasia is 0. [2 nipples]
Breast Size of Anastasia is 0. [flat]
Humanity of Anastasia is 60.
PlayerMet of Anastasia is false.
PlayerRomanced of Anastasia is false.
PlayerFriended of Anastasia is false.
PlayerControlled of Anastasia is false.
PlayerFucked of Anastasia is false.
OralVirgin of Anastasia is false.
Virgin of Anastasia is true.
AnalVirgin of Anastasia is true.

Section 1 - Events

Table of GameEventIDs (continued)
Object	Name
Captured Bird	"Captured Bird"

Captured Bird is a situation. The level of Captured Bird is 3.

when play begins:
	add Captured Bird to badspots of girl;
	add Captured Bird to badspots of hermaphrodite;
	add Captured Bird to badspots of furry;

Instead of resolving a Captured Bird:
	say "     Your exploration of the city is interrupted by a loud, avian shriek, soon followed by several feline growls. There is quite a commotion coming from somewhere off to your left. You consider moving away, but the noise seems to be remaining in the same spot, so you decide at least risking a quick peek to see what's going on. Passing between some building, you take cover behind a short fence and gaze out at the small vacant lot across the street.";
	say "     There are several of those panther taurs in the lot surrounding another creature. The other, a large, red and yellow bird of some kind, is caught in a net trap the panthers probably set up. The bird, nearly as big as a person but completely avian in form, shrieks again and struggles frantically against the net, which oddly enough seems to be on fire. There is some yelling among the panthers that you can't make out through all the commotion and several of them run off, leaving four securing the corners of the net to hold the struggling bird down. Unsure of the felines['] motive aside from possibly cooking their prey while still in the trap, you realize that if you're going to do anything, it will have to be now if there is to be any chance of saving the bird.";
	say "     [bold type]Will you save the bird?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	if player consents:
		say "     Charging across the street, you rush to attack the nearest of the felines, trying to subdue it before the others can come to assist it.";
		challenge "Panther Taur";
		if fightoutcome >= 10 and fightoutcome <= 19:
			say "     Leaving the other two to try and secure their struggling prey, the second feline moves in to try and deal with you.";
			challenge "Panther Taur";
			if fightoutcome >= 10 and fightoutcome <= 19:
				say "     With the second one dealt with, you charge forward. The other two are each at opposite sides of the net, struggling to keep it down. The net has been partially burned away, through the bird's wings and one of its feet are still caught. Closer now, you can see that it is not only the net, but also the hawk-like bird, which is aflame. You can't help but wonder if you were too late before noticing that despite the flame, the bird's feather's seem unsinged. Distracted for a moment, you almost ram into the next panther, who growls menacingly at you.";
				challenge "Panther Taur";
				if fightoutcome >= 10 and fightoutcome <= 19:	[won]
					say "     With only the last panther holding onto the net, it cannot keep the bird down. It manages to flap its wings and take to the air. With its wings spread wide, the fire bird shrieks one last time before unleashing a torrent of flame towards the last of the cats. This burst of fire incinerates the remains of the net and sends the feline running, fleeing with her tail smoking behind her.";
					say "     The bird moves through the air with an unearthly grace, especially for a bird this large. It banks back towards you, and for a moment you prepare yourself for it to attack you as well, but instead it passes over you as it examines its rescuer closely. You can swear that you can see some sort of intelligence behind the bird's eyes as it nods to you lightly before flying off into the sky.";
					increase score by 15;
					now HP of Anastasia is 1;
					if guy is not banned, now A Familiar Feather is active;
					now Resolution of Captured Bird is 1;	[Saved phoenix]
		if fightoutcome >= 20 and fightoutcome <= 29:			[lost]
			say "     Keeping you pinned down, the feline enjoys having some fun with you as the others from her group return. They come with buckets of water, tossing them onto the flaming bird until her fires go out and she's left ashen and shivering in the remains of the net. The panther taurs give some celebratory yells, kisses and gropes before, as a team, dragging off their captured prey in the damaged net. The soaked bird shivers, but does not struggle as it's taken away to meet its fate.";
			now Resolution of Captured Bird is 2;	[Did not save phoenix]
		if fightoutcome >= 30:							[fled]
			say "     You manage to make your escape from the felines, leaving them to their original prize. Hearing some of the others returning, you don't stick around to see what's happening and just try and get more distance between you and the lustful predators.";
			now Resolution of Captured Bird is 3;	[Ran from trying to save phoenix]
	else:
		say "     Figuring that it's not your problem, you slip back the way you came, leaving the cats to their grisly barbecue.";
		now Resolution of Captured Bird is 99;	[Did not try to save phoenix]
	now Captured Bird is resolved;

Table of GameEventIDs (continued)
Object	Name
A Familiar Feather	"A Familiar Feather"

A Familiar Feather is a situation. It is inactive. The level of A Familiar Feather is 4.

instead of resolving A Familiar Feather:
	say "     As you wander, something catches your eye. A single, scarlet feather with a yellow trimmed edge lays on the ground before you. It seems familiar, bringing up memories of the firebird you rescued some time ago. Picking it up, you turn the feather over a few times between your fingers before a hauntingly beautiful and feminine voice shakes you from your memories.";
	say "     'Our paths cross again,' you hear before turning to see the massive bird from before, but this time you get a good look at it. Roughly as tall as a human, the red and gold, hawk-like avian is perching a few paces from you. Her tail feathers were long, trailing behind her, their edges wreathed in a soft glowing flame as she looks towards you with piercing, golden eyes.";
	WaitLineBreak;
	say "     'Ever since I came to this world, I have been met with nothing but hostility, yet you...' The bird looks you over, examining your form with a curious gaze and a tilt of her head. 'I know not why, but you risked your life, and I would assume, your only life to save me.' She tilts her head the other way, her crest of head feathers flaring for a moment as she seemed to ponder you. 'A curious creature you are. I think I will keep an eye on you.' Without giving you even a moment to question her, the bird launches herself into the air with a single powerful flap of her wings, and just as suddenly as she came, the bird soars into the distance, blazing like a shooting-star across the sky.";
	now A Familiar Feather is resolved;
	now HP of Anastasia is 2;
	if guy is not banned, now FireAndIce is active;


Table of GameEventIDs (continued)
Object	Name
FireAndIce	"FireAndIce"

FireAndIce is a situation. It is inactive. The level of FireAndIce is 6.

instead of resolving FireAndIce:
	say "     As you walk the empty streets, a crumpled up newspaper rolls past you like some pathetic urban tumbleweed, but the breeze that carried it is surprisingly chilly. You look back, cautiously, but see nothing out of place. You turn back, beginning your trek once again, only for the air around you to suddenly drop in temperature. Your muscles tense up as the frost starts to form on the asphalt.";
	say "     A deep bestial growl echoes off the pavement filling you with dread. You try to prepare to fight but your reflexes are slowed by the cold, and before you can react, a massive lizard-like creature lands in front of you, opening its toothy maw and letting out a blast of cold directly into you, knocking you to the ground. You try to get up only to find that the frost has started creep over your body, freezing it in place in a compromising position. Unable to move, you look to the creature who now stalks towards you.";
	WaitLineBreak;
	say "     The giant lizard is more like a wingless dragon. Ground to shoulder, it was as tall as a man, even while on all fours. Its claws dig into the street with each step as it's glowing yellow eyes look towards you with an animalistic hunger. Between the creature's legs, as you would expect by now, is a fully erect, foot-long draconic cock, dripping with desire. His white and blue scaled body moves with grace and power as he looks over you. 'I had hoped... you would be... more of a challenge, my prey,' the frost drake speaks softly as it places a claw gently against your chest, making you feel a new surge of that unnatural cold.";
	say "     An ball of fire suddenly fills your vision as the drake is knocked off of you and sent crashing into the storefront. Before you stands the great phoenix you had seen twice now, her feathers wreathed in flame. She gives you a glance, seemingly making sure you're okay, before returning her attention to drake who has already pushed himself to his feet. 'The mortal is under my protection.' she said, to which the drake responds with a furious growl, then lunges towards her, only for the bird to swiftly launch herself into the air.";
	LineBreak;
	say "     The Drake reacts, sinking his claws into the ground as a pivot, twisting back around and leaping towards the bird. She had little time to react as the creature's jaws latch onto her chest and drag her to the ground with a pained screech. The phoenix's fire burst outwards, scorching the drake and freeing her from his maw, but the battle has just begin. As the bird steps back, her fire ignites the ground beneath her, and ice forms at the drake's feet. With a deep breath, just as he had with you, the frost drake unleashes a vaporous stream of freezing breath. The firebird dodges out of the way, then using her wings, dashes towards the drake, striking at him with flaming talons. Fire and ice collide, and with each strike, steam billows up, obscuring your view other than the bursts of orange and blue light from within the mist.";
	say "     A huge explosion of fire disperses the steam at last, sending the drake flying back until it hits the ground hard, rolling a few times. You wonder for a moment if it has been slain before it slowly pushes to its feet, looks once more towards the phoenix, and then flees into the shadows of the alleyways.";
	WaitLineBreak;
	say "     You feel a warmth as you turn to find the phoenix gently melting the ice that holds you, at last allowing you to break free of your bonds and stand. The phoenix on the other hand, looks more than a little scratched up. Blood drips from her feathers, and her once bright eyes look distant and weak. 'I suppose my debt to you is paid,' she says as she does her best to stand proudly. 'Which makes it all the more difficult for me to ask this of you,' she speaks with shallow breaths.";
	say "     'I am... I'm afraid this life of mine is over.' You open your mouth to speak but she raises a wing to silence you. 'My name is Anastasia, and unlike your kind, a phoenix such as I, live many lives but... I am far from home.' She begins to collapse, only for you to catch her, holding the dying bird in your arms as she shivers and looks up at you. 'I... I am afraid. I am not ready to die my final death.'";
	LineBreak;
	say "     Her eyes seem to glaze over lightly. She looks around as if trying to find your face, but unable to see it. 'Please... Return me to the flames of the earth... Allow me the rise again.' With these words, the life in her eyes fades. You have little time to mourn though as her body suddenly grows searing hot. You drop her on the ground and step back as everything flammable around her starts to ignite; then, she to burst into flames. The fire is intense; even looking at it hurts your eyes, but it isn't long lived. The blaze dies down as quickly as it started, leaving behind a pile of ash.";
	say "     Curious, you find a stick and poke at the ashes until you feel something hard within them. It takes a few minutes for you to work it out of the ash, but to your surprise, a golden phoenix egg has been left behind. Carefully you pick it up, the shell hot but not enough to burn. You gently put the egg away in your pack as you wonder what you should do with such a legendary ovid. If you want to do as the phoenix asked, you would need to find somewhere exceedingly hot, but if you got to see her again, it might be worth it.";
	LineBreak;
	say "[bold type]You received a Phoenix Egg![roman type][line break]";
	increase carried of phoenix egg by 1;
	now FireAndIce is resolved;
	now HP of Anastasia is 3;


Section 2 - The Egg

Table of Game Objects (continued)
name	desc	weight	object
"phoenix egg"	"     It has a golden shell and is roughly the size of a man's head."	10	phoenix egg

phoenix egg is a grab object. it is part of the player. It is not temporary.

instead of using phoenix egg:
	say "     You look over the egg, trying to think of a hot place for it to hatch.";

the scent of the phoenix egg is "     The egg smells faintly of ashes.".

the phoenix egg has a truth state called shownermine. shownermine of phoenix egg is usually false.
[other show scenes could be created for other NPCs whom the player might show it to]

instead of conversing the Nermine while phoenix egg is owned and shownermine of phoenix egg is false:
	say "     Pulling out the phoenix egg, you put in on the counter in the hopes that Nermine's expertise may be of use. She remains her normal demeanor, but her golden eyes lock onto it with a hungry greed you've not seen from her before. 'Does the dear visitor want to trade this pretty egg with Nermine? It sadly is nothing special... but maybe Nermine can part with a small trinket for it,' she says with an alluring smile. You shake your head, telling her you're just looking for information. 'It is a phoenix egg, but the jackaless sees that her visitor knows this already. Nermine has been alive for a long time, and the egg would help her live even longer still,' she says softly. 'Nermine would be trading...' she starts to say. Catching her tongue slipping across her lips as she eyes the golden egg with a hunger beyond simple greed, you snatch it from the counter and slide it back into your pack.";
	say "     The jackal woman is clearly disappointed as you take the object of her hunger away. 'Fine! Keep it then. But Nermine will share some knowledge nonetheless, as not to be called a poor host. Phoenix eggs normally hatch shortly after the phoenix burns to ashes. If it has not yet hatched, the phoenix is weak and needs great heat to regain its power. It is a bird of fire, of the sun. Powerful heat is being needed to restore it. Surely supplying this would be much trouble for the dear visitor. Nermine could be taking care of that instead,' she says, that hungry look in her eye again. You clutch your pack tightly and step back. It's clear you won't be able to trust Nermine on this matter and decide not to mention it to her again.";
	now shownermine of phoenix egg is true;


Section 3 - The Volcanic Cave

Table of GameRoomIDs (continued)
Object	Name
Volcanic Cave	"Volcanic Cave"

Volcanic Cave is a room. "     The volcanic cave is a fairly large atrium-like formation with seemingly three linked passages. Besides the way you came, there is a passage that leads deeper down, but the erruption appears to have collasped the passage, making it inaccsessible.  The final passage seems to be a vent shaft, likly leading outside and preventing the dangerous volcanic gasses from building up.  Most of the cave floor looks rippled due to the cooled lava that at one time flowed through here.  The remaining portions are still active pools of magma, boiling and radiating with intense heat.[if HP of Anastasia is 6] Anastasia is perching on a rock, looking over the cave thoughtfully. [else if HP of Anastasia > 6] Anastasia seems to have created a nest for herself made of various volcanic stones, charred wood, and a few colorful baubles here and there. The proud phoenix herself is perched on a nearby rock, her golden eyes focused on you.[end if]".
down of A Volcanic Crater is Volcanic Cave.

the scent of Volcanic Cave is "The smell of smoke, soot and volcanic gasses is particularly strong here.".

instead of going down from Volcanic Crater:
	if HP of Anastasia < 3:
		say "     You have no reason to go down there.";
	else if HP of Anastasia is 3:
		say "     Looking down into the fiery pit, you are reluctant to go down there, but this is certainly the hottest place around for the phoenix's egg. Deciding to take a look, you begin to very carefully scale down into the crater. The great heat makes this a terrible struggle, but you manage to persevere, feeling a need to see it through for Anastasia. Reaching the tunnels down there, you enter the cave.";
		move player to Volcanic Cave;
		if phoenix egg is owned:
			say "     You look around the cave and its open magma pools, deciding this place certainly meets the requirements. Short of throwing it into the volcanic crater itself, this is probably the hottest spot you'll find. It should also be quite safe down here. There's no reason anything should venture into this infernal cave to disturb it. Unpacking it, you bring the egg to one of the magma pools and, hoping you're doing the right thing, lower the egg onto the semi-solid crust covering it. The soft layer dips and cracks a little, letting some of the lava flow up and pool around the egg. It seems unharmed by this and even appears to have become even more golden and lustrous. You sigh in relief and step away, reminding yourself to return to check on it later. You feel thirsty and drained after your climb and stay down here.";
			LineBreak;
			say "[bold type]Phoenix Egg Removed.[roman type][line break]";
			delete phoenix egg;
			now lastfuck of Anastasia is turns;
			now HP of Anastasia is 4;
			increase score by 25;
			increase thirst of player by 12;
			decrease HP of player by ( HP of player / 5 );
		else:
			say "     You look around the cave and its open magma pools, deciding this place certainly meets the requirements. Short of throwing it into the volcanic crater itself, this is probably the hottest spot you'll find. It should also be quite safe down here. There's no reason anything should venture into this infernal cave to disturb it. You'd best leave this place and collect the egg now that you've found a safe spot for it. You feel thirsty and drained after your climb and stay down here.";
			increase thirst of player by 12;
			decrease HP of player by ( HP of player / 5 );
	else if HP of Anastasia is 4:
		move player to Volcanic Cave;
		say "     Checking on the egg, you find it much as you left it, if perhaps a little shinier. Hopefully that's a good sign.";
	else if HP of Anastasia is 5:
		move player to Volcanic Cave;
		say "     Inside the cave, you find the broken remains of the phoenix egg blackened and crumbling scattered around the lava pool. Fearing the worst, you start calling out Anastasia's name while searching the alcoves and crevices of the cavern. You find nothing and are about to give up hope when there is a loud, triumphant and hawk-like scream from outside the cave. Running to the cave entrance, you see a large, fiery plume of lava boil up before unfolding a pair of wide wings. The lava pours off the reborn phoenix like water as it comes swooping down to perch before you.";
		project the figure of Anastasia_icon;
		say "     Still aflame, the firebird wraps its wings tightly around you. You can feel the fire as it licks across your [skin of player] skin, but it doesn't burn. Her flames only feel warm and soothing like some strange etherial blanket. Anastasia nuzzles her beak against you until she realized what she was doing. The bird quickly let go of you and cleared her throat as she tried to regain her regal composure. 'It seems I am once again in your debt.' she said, then paused. Anastasia's crest flared as she turned around, showing off her new youthful body. 'It feels wonderful to be reborn,' she cooed. 'Though unlike my other lives, being reborn here, in this world... It seems to have changed me.'";
		LineBreak;
		say "     The phoenix looks into the distance thoughtfully. 'I feel... different... But, my cycle has continued, and you...' she turns to look at you with hope in her brilliant eyes. 'I have no right to ask anything more of you, but I must learn of this new world and this new life I have been given, and I would very much like for you to help me, to guide and teach me.' Anastasia walks past you, her feathers gently touching you as she does. 'I will remain here, eagerly awaiting your return.' Anastasia continues into the cave; her tail feathers lifted and flared proudly as the flames dance across them. You are unsure if it is on purpose or not, but it did give you a wonderful view of her cloaca, and you could swear that it seems to glisten with moisture in the light of her flames.";
		now HP of Anastasia is 6;
	else:
		move player to Volcanic Cave;

instead of going up from Volcanic Cave:
	move player to Volcanic Crater;
	if HP of Anastasia < 5:
		follow the turnpass rule;

an everyturn rule:
	if HP of Anastasia is 4 and lastfuck of Anastasia - turns >= 16 and player is not in the Volcanic Cave and the player is not in the Volcanic Crater:
		say "     You recall the phoenix egg you left at the volcanic crater and remind yourself to go and check on it soon.";
		now HP of Anastasia is 5;
		move Anastasia to Volcanic Cave;


Section 4 - Anastasia

Table of GameCharacterIDs (continued)
object	name
Anastasia	"Anastasia"

Anastasia is a woman.
The description of Anastasia is "[Anastasiadesc]".
The conversation of Anastasia is { "Burninate!" }.
The icon of Anastasia is Figure of Anastasia_icon.

the scent of the Anastasia is "The phoenix has a pleasent scent of woodsmoke.".

to say Anastasiadesc:
	say "     The phoenix reborn looks much as she did in her last incarnation, fully avian in form and as tall as a normal human being when upright. She has rich red and golden plumage over her hawk-like body. The edges of her wings tail feathers dance with a softly glowing flame. Her golden eyes look towards you[if loyalty of Anastasia is 2], happy to see you.[else if loyalty of Anastasia is 3]lovingly.[else] with curiostity.[end if].";

Instead of conversing the Anastasia:
	if HP of Anastasia < 5:
		say "     ERROR-Anastasia-5T: You should not be able to speak to me at this point!";
	else if HP of Anastasia is 6:
		say "     [one of]Anastasia smiles and nuzzles her golden beak against you. 'I want to thank you again for helping me. I don't know if I would have ever woken up without your help.'[or]The phoenix nips at your shoulder. 'I want to [']repay['] you for all you've done soon.'[or]The phoenix rubs her thighs together. 'Mmm... I never felt this way before. It's so nice.'[or]'I was here before, a long time ago. Things have certainly changed since then.'[or]'I can feel my strength returning slowly now.'[or]'This strange infection was draining my strength, but now that I've been reborn and let it change me, I feel better than ever,' she says with a soft moan as she runs a wingtip across her wet slit.[at random]";
	else if HP of Anastasia <= 9:
		say "     [one of]Anastasia smiles and nuzzles her golden beak against you. 'I want to thank you again for helping me. I don't know if I would have ever woken up without your help.'[or]The phoenix nips at your shoulder. 'I hope you'll let me [']repay['] you again soon for all you've done soon.'[or]The phoenix rubs her thighs together. 'Mmm... I can hardly wait to return home and share this gift with the others.'[or]'I was here before, a long time ago. Things have certainly changed since then.'[or]'I can feel my strength returning slowly now.'[or]'This strange infection was draining my strength, but now that I've been reborn and let it change me, I feel better than ever,' she says with a soft moan as she runs a wingtip across her wet slit.[or]'I've never done anything before in my existence like that. I want to do it again soon.'[or]'This [']sex['] thing is strange to me, but such a delight. I'm sure, with a little encouragement, the others will love it too,' she muses.[at random]";
	else if HP of Anastasia is 11 and a random chance of 2 in 5 succeeds:
		say "[salamanderraid]";
	else:
		say "     [one of]Anastasia smiles and nuzzles her golden beak against you. 'I want to thank you again for helping me. I don't know if I would have ever woken up without your help.'[or]'At first I didn't understand what all this sex was for aside from fun, but once I laid my first egg, I knew it was something much more.'[or]'I can hardly wait to return with my new clutch so we can share this new gift with the others.'[or]'I was here before, a long time ago. It was much different back then, but now that I've adapted to it, this is much better,' she says with a smile and a brush of her wingtip across her pussy.[or]'I can feel my strength returning slowly now.'[or]'This strange infection was draining my strength, but now that I've been reborn and let it change me, I feel better than ever,' she says with a soft moan as she runs a wingtip across her wet slit.[or]'Having sex is such a wonderfully new delight for me. My many chicks and I will certainly have fun introducing the others to it.'[or]'There were so few of us left, but this gift you've given me will change all that.'[at random]";[Remove once new diolgue is in]


Section 5 - Sexy Times

the fuckscene of Anastasia is "[sexwithAnastasia]";

to say sexwithAnastasia:
	follow the cock descr rule;
	if HP of Anastasia < 6:
		say "     ERROR-Anastasia-5F: You should be able to proposition me at this point!";
	else if lastfuck of Anastasia - turns < 8:
		say "     'As wonderful as that would be, I want to savor the new pleasures my changed body brings, so let's not rush things too much,' the lovely bird says, nuzzling your side.";
	else if HP of Anastasia > 11:
		Anastasiasexmenu;
	else:
		now lastfuck of Anastasia is turns;
		if HP of Anastasia is 5:
			say "[Anastasiasex00]"; [first time]
		else if (player is not neuter) and ( ( HP of Anastasia is 9 or HP of Anastasia is 10 ) and a random chance of 1 in 2 succeeds ) or ( HP of Anastasia > 10 and a random chance of 1 in 4 succeeds ):	[volcano]
			say "[Anastasiasex06a]"; [volcano - lead-in]
			if player is male and ( a random chance of 2 in 3 succeeds or HP of Anastasia is 9 ):
				say "[Anastasiasex06b]"; [volcano - sex]
			else if a random chance of 1 in 2 succeeds or HP of Anastasia is 9:
				say "[Anastasiasex06c]"; [volcano - basalt dildo]
			else:
				say "[Anastasiasex06d]"; [volcano - 69]
			if HP of Anastasia is 9:
				say "     Once back in the cave, she cautions you not to try entering the volcano without her present to protect you. As with her shielding you here in the volcanic cave, it is her power which is allowing you to survive such heat unscathed.";
			if HP of Anastasia < 11, increase HP of Anastasia by 1;
		else if ( HP of Anastasia is 8 and a random chance of 1 in 2 succeeds ) or ( HP of Anastasia > 8 and a random chance of 1 in 4 succeeds ):		[basalt dildo]
			if player is female:
				say "[Anastasiasex05a]"; [basalt dildo - female/herm]
			else:
				say "[Anastasiasex05b]"; [basalt toy - male/neuter]
			if HP of Anastasia is 8, now HP of Anastasia is 9;
		else if player is male and a random chance of 3 in 5 succeeds:	[wants cock]
			if HP of Anastasia >= 8 and a random chance of 2 in 5 succeeds:
				say "[Anastasiasex03]"; [fuck her - on her back]
			else if a random chance of 1 in 2 succeeds:
				say "[Anastasiasex02]"; [fuck her]
			else:
				say "[Anastasiasex01]"; [birdy blow job]
		else if player is female and a random chance of 1 in 2 succeeds:	[wants pussy]
			say "[Anastasiasex04]"; [receive cunnilingus]
		else:
			say "[Anastasiasex07]"; [give cunnilingus]
		if HP of Anastasia < 8, increase HP of Anastasia by 1;
		Anastasiasexchange;

to Anastasiasexmenu:
	say "     In the mood for some more fun with the phoenix, you decide to assist her with some more sexual self-discovery. Having gotten pretty familiar with her habits and desires, you can probably predict what she'll be in the mood for if you use some timing and approach her in the appropriate manner. What would you like to do with the sexy firebird this time?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Mount her";
		now sortorder entry is 1;
		now description entry is "fuck some hot phoenix cunt";
		choose a blank row in table of fucking options;
		now title entry is "On her back";
		now sortorder entry is 2;
		now description entry is "fuck the phoenix while she's laying on her back";
		if player is dominant:
			choose a blank row in table of fucking options;
			now title entry is "Dommy fuck";
			now sortorder entry is 3;
			now description entry is "take charge and fuck the phoenix";
		choose a blank row in table of fucking options;
		now title entry is "Volcano sex";
		now sortorder entry is 4;
		now description entry is "fuck her in the lava pool";
		choose a blank row in table of fucking options;
		now title entry is "Birdy blow job";
		now sortorder entry is 6;
		now description entry is "take a go at the phoenix's beak";
	if player is female:
		choose a blank row in table of fucking options;
		now title entry is "Get cunnilingus";
		now sortorder entry is 7;
		now description entry is "have the phoenix eat you out";
	choose a blank row in table of fucking options;
	now title entry is "Give cunnilingus";
	now sortorder entry is 8;
	now description entry is "eat her out";
	choose a blank row in table of fucking options;
	now title entry is "Basalt dildo";
	now sortorder entry is 4;
	now description entry is "use the phoenix's stone toy";
	choose a blank row in table of fucking options;
	now title entry is "Volcano dildo";
	now sortorder entry is 5;
	now description entry is "bring her dildo into the lava pool";
	choose a blank row in table of fucking options;
	now title entry is "Volcano 69";
	now sortorder entry is 9;
	now description entry is "69 with her while floating on lava";
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> ";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry][line break]";
			say "     [bold type]Is this what you want?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Yes.";
			say "     ([link]N[as]n[end link]) - No.";
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if nam is "Birdy blow job":
					say "[Anastasiasex01]";
				else if nam is "Mount her":
					say "[Anastasiasex02]";
				else if nam is "On her back":
					say "[Anastasiasex03]";
				else if nam is "Get cunnilingus":
					say "[Anastasiasex04]";
				else if nam is "Basalt dildo":
					if player is female:
						say "[Anastasiasex05a]";
					else:
						say "[Anastasiasex05b]";
				else if nam is "Volcano sex":
					say "[Anastasiasex06a]";
					say "[Anastasiasex06b]";
				else if nam is "Volcano dildo":
					say "[Anastasiasex06a]";
					say "[Anastasiasex06c]";
				else if nam is "Volcano 69":
					say "[Anastasiasex06a]";
					say "[Anastasiasex06d]";
				else if nam is "Give cunnilingus":
					say "[Anastasiasex07]";
				else if nam is "Dommy fuck":
					say "[Anastasiasex08]";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	now lastfuck of Anastasia is turns;
	Anastasiasexchange;
	wait for any key;
	clear the screen and hyperlink list;

to say Anastasiasex00:		[first time]
	say "     Deciding it's pretty clear what the new and improved Anastasia wants, you run your hands over her soft feathers, sliding them down under her tail and stroking over her wet pussy. It feels so hot to the touch, but does no harm. Your nerves can tell it is burning, but there is no pain or discomfort that you'd expect with such a heat. The phoenix moans at your touch, pressing her hindquarters back against your touch and raising her tail. 'Mmm... yes, that feels so good.'";
	if player is male:
		say "     Finding yourself increasingly aroused by the red and gold bird, you press your face to her cloacal vagina and start licking and kisses at it, enjoying her mix of bird-like singing and moans of delight. 'This is so nice. I've never felt like this before. Oh, I... I need more...' she cries out as you give her clit a nibble. As your tongue plays across those juicy folds, you toss aside your gear and clothes, stroking your rapidly stiffening cock.";
		say "     Deciding to give her the [']more['] she's looking for, you move in behind her, lining up your cock with her feathered vent. She moans loudly and shivers in delight as your cock sink into her wonderfully hot hole. The heat of her loins fills you, filling you with vigor that drives you to pound into her hard and fast. She takes this with unabashed ecstasy, reveling in the wild rutting. You run your hands through her soft, downy feathers as you mate her. Her flames wash over your body painlessly, almost as if they are holding you in a loving embrace.";
		if cock width of player < 12:
			say "     You can feel the heat of her loins flowing into you, pooling inside your groin and seeping into your balls. They swell a little from this power and feel as if they're filled with magma-hot cum. This pressure builds and builds until finally you drive your cock deep inside her and release your hot load, blasting wonderfully hot semen deep inside the firebird. She cries out in a shriek of delight, cumming hard as well as your cum floods her womb. Once you're drained, you climb off of her and snuggle up with her, enjoying some loving nips from her large beak.";
			increase cock width of player by 1;
		else:
			say "     You can feel the heat of her loins flowing into you, pooling inside your groin and seeping into your balls. They feel as if they're filled with magma-hot cum. This pressure builds and builds until finally you drive your cock deep inside her and release your hot load, blasting wonderfully hot semen deep inside the firebird. She cries out in a shriek of delight, cumming hard as well as your cum floods her womb. Once you're drained, you climb off of her and snuggle up with her, enjoying some loving nips from her large beak.";
	else:
		say "     Finding yourself increasingly aroused by the red and gold bird, you press your face to her cloacal vagina and start licking and kisses at it, enjoying her mix of bird-like singing and moans of delight. 'This is so nice. I've never felt like this before. Oh, I... I need more...' she cries out as you give her clit a nibble. As your tongue plays across those juicy folds, you bring your hand up to start caressing them.";
		say "     Not equipped to mount the needy bird, you slide several fingers into her instead, giving her a good finger-fucking. She moans loudly and shivers in delight as your digits sink into her wonderfully hot hole. The heat of her loins fills you, filling you with vigor that flows up your arm and drives you to pound into her hard and fast. She takes this with unabashed ecstasy, reveling in it all the more as you press another finger into her and soon your entire hand. You stroke your free hand through her soft, downy feathers as you work to please her. You can feel the heat of her loins flowing into you until finally she can't hold back any longer and cries out in delight, cumming hard with a shriek of pleasure. Her hot juices wash over you, tasting delicious as you lick up as much as you can get while continuing to thrust through her climax. After slipping your hand free, you snuggle up with her, enjoying some loving nips from her large beak.";

to say Anastasiasex01:		[blow job]
	say "     Deciding to have some more fun with the fiery bird, you run your hands across her body, ruffling her feathers to get her excited. She nuzzles her large head against your side as you divest yourself of your clothes and gear. 'I want to try it this way, my friend,' she says, nuzzling her sharp beak down towards your cock. Eyeing her sharp beak, you stroke her head feathers and remind her to be careful. She gives your side a playful nip and releases a chirping chuckle.";
	say "     Opening her beak, Anastasia lets your [cock size desc of player] [cock of player] shaft slide into it before closing it just enough to hold it gently while her broad, thick tongue slides across it. You can't help but moan as that strong tongue slides across your cock and her searing hot breath blows sensually across your flesh, filling you with a warmth that soaks into you. You stroke her head, complimenting her on how well she's doing and how quickly she's learning. You thrust gently into her mouth, but mostly let the giant bird take care of it.";
	if cock width of player < 12:
		say "     You can feel the heat of her mouth flowing into you, pooling inside your groin and seeping into your balls. They swell a little from this power and feel as if they're filled with magma-hot cum. This pressure increases until finally you grip her head and your cock throbs in her maw, releasing shot after shot of your hot seed deep down her throat, which she happily swallows down. Her tongue works you over until you've given every drop you can, then she cuddles you up in her flaming wings.";
		increase cock width of player by 1;
	else:
		say "     You can feel the heat of her mouth flowing into you, pooling inside your groin and seeping into your balls. They almost feel as if they're filled with magma-hot cum. This pressure increases until finally you grip her head and your cock throbs in her maw, releasing shot after shot of your hot seed deep down her throat, which she happily swallows down. Her tongue works you over until you've given every drop you can, then she cuddles you up in her flaming wings.";

to say Anastasiasex02:		[fuck her]
	say "     Deciding to enjoy more intimate time with the phoenix, you run your hands across her body and then down to her hot loins when the turns and presents her tail to you. 'Oh yes, I want you inside me again, my friend,' she calls out, shifting her taloned feet and grabbing for purchase. You move in behind her, sinking your hard, throbbing cock into her wet, dripping cloacal pussy. Feeling her heat flowing into you again, you rut her hard and fast, much to her delight.";
	if cock width of player < 12:
		say "     You can feel the heat of her loins flowing into you, centering at your groin and seeping into your balls. They swell a little from this power and feel as if they're filled with molten lava. This pressure builds and builds until finally you push your cock deep inside her and cum loudly, blasting wonderfully hot semen deep inside the firebird. She cries out with a loud, avian shriek of delight, cumming hard as well as your seed floods her womb. Once you're drained, you climb off of her and snuggle up with her, enjoying some loving nips from her large beak.";
		increase cock width of player by 1;
	else:
		say "     You can feel the heat of her loins flowing into you, pooling inside your groin and seeping into your balls. They feel as if they're filled with molten lava. This pressure builds and builds until finally you drive your cock deep inside her and release your hot load, blasting wonderfully hot semen deep inside the firebird. She cries out in a shriek of delight, cumming hard as well as your seed floods her womb. Once you're drained, you climb off of her and snuggle up in the bird's downy feathers, enjoying some loving nips from her large beak.";

to say Anastasiasex03:		[fuck her - on her back]
	say "     Deciding to enjoy more intimate time with the phoenix, you run your hands through her soft feathers, scritching at her strong breast. She chirps happily and, with a little encouragement, rolls onto her back with her wings spread. She moans softly as your cock nudges between her raised legs and slides across the wet lips of her cloacal pussy. 'Mmm... ready to go again, I see,' she says, nuzzling her beak against your cheek. You ease yourself slowly into her, sliding your hard, throbbing cock into her wet, dripping cunt. As her invigorating heat flows into you again, you pound into her zealously, making her chirp and sing in delight.";
	if cock width of player < 12:
		say "     You can feel the heat of her pussy flowing into you, washing through your body and seeping into your testes. You can sense them getting heavier, fuller as this power suffuses you. It feels like there is a raging inferno of power within them, one that only makes you stronger and more virile for your avian lover. This pressure builds and builds until finally you push your cock deep inside her and cum loudly, shooting your hot seed deep inside the phoenix. She cries out with a shriek of delight, her cloaca clamping down around your shaft and milking it for all it will give of that hot flood. Once you're drained, you flop down atop the giant bird, nuzzling against her feathers as she folds her wings around you.";
		increase cock width of player by 1;
	else:
		say "     You can feel the heat of her pussy flowing into you, washing through your body and seeping into your testes. It feels like there is a raging inferno of power within them, one that only makes you stronger and more virile for your avian lover. This pressure builds and builds until finally you push your cock deep inside her and cum loudly, shooting your hot seed deep inside the phoenix. She cries out with a shriek of delight, her cloaca clamping down around your shaft and milking it for all it will give of that hot flood. Once you're drained, you flop down atop the giant bird, nuzzling against her feathers as she folds her wings around you.";

to say Anastasiasex04:		[receive cunnilingus]
	say "     Deciding to have some more fun with the fiery bird, you run your hands across her body, ruffling her feathers to get her excited. She nuzzles her large head against your side as you divest yourself of your clothes and gear. 'Now it's my turn to please your sexual organs, my friend,' she says, nuzzling her sharp beak down towards your groin. Eyeing her sharp beak, you stroke her head feathers and remind her to be careful. She gives your side a playful nip and releases a chirping chuckle.";
	say "     Opening her beak, Anastasia lets her broad, thick tongue slide across your wet folds. It is exquisitely warm, like a bonfire that doesn't burn and only further stokes the heat in your loins. Aside from the occasional nip at your side, she keeps her beak out of the way while her tongue works to pleasure you[if cunt width of player > 5]. She even manages to push some of it into you, fucking your loose cunny with that thick, wet organ[end if]. Her tongue keeps working you until you are finally sent over the edge in a crashing orgasm while her wings safely hold you in their fiery embrace[if player is male]. Your cock throbs and pulses against her hard beak, spraying your thick seed across her face as it boils over from your overflowing balls[end if].";

to say Anastasiasex05a:		[basalt dildo - female/herm]
	if HP of Anastasia is 8:
		say "     Deciding to have some more fun with the firebird, you run your hands across her body, scritching her to get her excited. She nuzzles her large head against yours as you set aside your clothes and gear. 'Mmmm... I have a special treat for you. I made it myself and it's quite nice,' she chirps with a grin. Her footclaw reaches over and picks up a rather phallic black spire from behind a rock. It seems quite smooth and well-formed to fill a wanton hole attached to a larger section suitable for the bird's talons to grip. 'I think it will fit quite nicely,' she adds with a grin in her voice. You are a little reluctant to give the basalt dildo a try, but are too aroused to say no to the eager phoenix at this point.";
	else if HP of Anastasia >= 9:
		say "     Deciding to have some more fun with the firebird, you run your hands across her body, scritching her to get her excited. She nuzzles her large head against yours as you set aside your clothes and gear. 'Mmmm... I think we should break out my little toy again,' she says with a playful chirp. Her footclaw reaches over and picks up the basalt dildo. It is very smooth, shiny, and (as you know) well-formed to fill a wanton hole. There is a larger section suitable for the bird's talons to grip. Having already experienced the pleasure of the phoenix's personal toy, you have no reservations about enjoying it once more.";
	say "     The fiery bird lays down on her back with her wings spread and you climb atop her hot, downy feathers and resume scritching her. You can feel her legs fumble around, eventually grabbing the rocky toy and lining it up to plunge into her pussy. After several thrusts that make her moan and chirp in delight, the stone spire is slid out of her hot hole and repositioned to push into you. You moan softly, feeling that heated column push its phallic head past your wet lips and slowly sink into your cunt, filling you deep inside with a warmth that excites you. You grip her feathers tightly and start pushing back into her thrusts. You share the toy with like the several minutes, each taking turns. Glancing back as she pops it from her cloacal pussy, you can see it's become red hot over the course of the session with you both and, when it plunges back into you, the heat of it brings no pain, only the joy of orgasm[if player is male]. Your cock pulses against her soft feathers, spraying your hot seed across them[end if]. Anastasia pounds the rocky dildo into you until your climax passes, then drives it back into herself with the same results. Dropping the well-used toy, she sags back with a sigh of satisfaction, draping her wings across her lover's back.";

to say Anastasiasex05b:		[basalt dildo - male/neuter]
	if HP of Anastasia is 8:
		say "     Deciding to have some more fun with the firebird, you run your hands across her body, scritching her to get her excited. She nuzzles her large head against yours as you set aside your clothes and gear. 'Mmmm... I have a special treat for you. I made it myself and it's quite nice,' she chirps with a grin. Her footclaw reaches over and picks up a rather phallic black spire from behind a rock. It seems quite smooth and well-formed to fill a wanton hole attached to a larger section suitable for the bird's talons to grip. 'I thought you might like to give it a try,' she says with a grin in her voice. Realizing that she must have in mind, you are a little reluctant to give the basalt dildo a try, but are also quite aroused and part of you finds the phallic spire quite tempting at this point.";
	else:
		say "     Deciding to have some more fun with the firebird, you run your hands across her body, scritching her to get her excited. She nuzzles her large head against yours as you set aside your clothes and gear. 'Mmmm... I think we should break out my little toy again,' she says with a playful chirp. Her footclaw reaches over and picks up the basalt dildo. It is very smooth, shiny, and (as you know) well-formed to fill a wanton hole. There is a larger section suitable for the bird's talons to grip. Having already seen it in action, you are less reluctant to play with it again.";
	say "     [bold type]Shall you accept her offer?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	if player consents:
		say "     The fiery bird lays down on her back with her wings spread and you climb atop her hot, downy feathers and resume scritching her. You can feel her legs fumble around, eventually grabbing the rocky toy and lining it up to plunge into her pussy. After several thrusts that make her moan and chirp in delight, the stone spire is slid out of her hot hole and repositioned to push into you. You moan softly and try to relax as that hard, heated dildo probes at your back door. Coated in her juices, it eases its passage into you, slowly working to stuff your tight ass. The warmth of her fiery body flows into you, increasing the intensity of your lust. She takes her time fucking you with her toy while her fiery wings hold you close, letting their heat suffuse you[if player is male] and flow into your groin[end if]. Eventually, the pounding of the basalt rod into your anus[if player is male], grinding against your prostate, becomes too much and you cry out loudly in lustful release, cumming hard across your avian lover's crimson feathers. As you orgasm, she nuzzles and nips at your neck and shoulders, moaning and chirping happily[end if] as she climaxes hard in lustful release. Dropping the well-used toy, she sags back with a sigh of satisfaction, draping her wings across her lover's back.";
	else:
		say "     You take a moment to [if HP of Anastasia is 8]explain to her that hole isn't commonly used for sex (though you do have to add that it's certainly becoming more common these days)[else]remind her that hole isn't most people's first choice for sex (especially with something of that size)[end if], but add that you'd be happy to help her use it on herself. Pleased with that solution, she lays down on her back with her wings spread and you climb atop her hot, downy feathers facing her groin. You watch as her legs fumble around a little before eventually grabbing the rocky toy and lining it up to plunge into her pussy. As the basalt toy plunges into her stretched cunt again and again, you tease her wet folds and start licking at her clit, lapping up her delicious juices[if player is male]. As you're doing this, she returns the favor by bringing her beak to your crotch to lick and suck your throbbing cock[end if].";
		say "     Enjoying the pleasure of watching the phoenix fuck herself with her homemade toy, you feel her juicy cunt grow hotter and hotter as her excitement builds. Eventually the stone phallus glows a warm red, heated surprisingly hot by the fiery bird's lustful energy. You lick the smooth, glowing stone, lapping the juices from it as she slides it back before another thrust. The heat from it, as always, does you no harm and only seems to fill you with more energy and excitement. In time, it all becomes too much for the lustful bird and she drives her toy hard into herself one last time, cumming intensely[if player is male]. As she cums, you thrust your cock into her hot maw, unleashing the fiery load of semen you've built up for her. Dropping the well-used toy, she sags back with a sigh of satisfaction, draping her wings across her lover's back.";

to say Anastasiasex06a:		[lead-in]
	if HP of Anastasia is 9:
		say "     Seeking more pleasure from the phoenix, you snuggle up to her and start running your hands through her fiery feathers. She moans softly and nuzzles you. 'Mmm... do you trust me, my lover?' she asks, nipping gently at your shoulder. Feeling her warmth seeping into you, you nod. 'Good, for there's something I wish to show you,' she chirps happily and folds her wings around you, holding you tightly to her body. She carries you like this towards the mouth of the cave, but then leaps off the edge into the volcanic crater. You scream as you fall together towards the lava and dive into it.";
		say "     Enveloped in the molten rock, you can feel its intense heat all around you. But it is only invigorating and does not incinerate you as you'd expect. Feeling the soft nuzzle of the phoenix's beak against your cheek, you open your eyes and see her with a happy and slightly playful look on her face. With a wing still around you, she flaps the other to swim through the lava, rolling over so you can see the bottom. A part of you realizes that you're not seeing through the lava, but still you're able to 'see' its bottom. Resting on the crater's floor are numerous large eggs, golden and glowing, soaking in the lava's incredible heat.";
		say "     Anastasia surfaces, rolling onto her back so you can rest on her body outside of the lava. 'I wanted you to see them. You and a few other friends I've met have helped me, changed me and even given me eggs. It has been so very long since there was a new phoenix egg and now there are so many. And I have you to thank for them all.' She nuzzles and nips at you affectionately.";
		now HP of Anastasia is 10;
	else:
		say "     As you snuggle up to the phoenix in search of more sex, she wraps her wings around you and nips you lightly. 'Mmm... I feel like another hot bath while we play, my friend,' she says, leading you to the crater's edge. Despite it being safe when you did it before, you can't help but be nervous as she dives back into the lava with you. The molten rock envelops you both, bathing you in its intense heat without harm. You catch another glimpse of her hidden clutch[if a random chance of 1 in 3 succeeds] with a few more eggs added to it[end if] before you both surface. She floats on her back with you lying atop her flaming plumage.";

to say Anastasiasex06b:		[volcano - sex]
	say "     Feeling the heat of the volcano surrounding and suffusing you, you are filled with lustful excitement. You move into position and line up your [cock size desc of player] [cock of player] cock with the phoenix's hot pussy and sink into her. Her cunt feels even hotter than the magma and you moan loudly, driving into her with great zeal. Her fiery body trembles beneath you and she moans in pleasure. The large bird's beak nips and nuzzles at you as you continue to thrust into her, making her body sway lightly on the molten lava.";
	say "     The firebird's cloacal pussy squeezes and milks at your shaft, wanting a thorough fucking as badly as you do. You can feel her heat and the heat of the volcano sinking into you, flowing energy into your groin and filling your balls with a powerful heat[if cock width of player < 12] and making them swell further[end if] as you seek to breed this wonderous bird. As you pound into her, she stretches herself back on the lava, wings wide to take in as much of its energy as she can, still seeking to recover her lost strength. She sings, a musically chirping birdsong, but with rhythm and cadence to it as well. Her flames of her feathers grow stronger, burning higher and brighter as her excitement builds.";
	if cock width of player < 12, increase cock width of player by 1;
	say "     Eventually, it is too much for you and you drive hard into her, sinking your aching cock deep into Anastasia's cunt and unleashing your molten load of semen as it overflows from your balls and blasts into the lustful phoenix. Her singing grows louder and more jubilant as your seed is pumped into her and she cums as well, her cloaca quivering and squeezing at your cock needfully until your balls are drained and you're both left moaning and panting as you float lazily atop her in the lava. After you've both had some time to recover, she takes you in her talons and flies you back up to the cave.";

to say Anastasiasex06c:		[volcano - basalt dildo]
	if player is female:
		say "     Feeling the heat of the volcano surrounding and suffusing you, you are filled with lustful excitement. Anastasia nuzzles and nips at you with her beak, raising up her taloned foot to show she's brought her basalt playtoy along. Molten magma flows off of it and the dark stone has already started to glow a little with heat, but this doesn't hold you back at all, your molten bath having excited you so much that you're open for anything to satisfy your lustful urges. You move into position, rubbing your [bodytype of player] body down onto hers, nuzzling against her crimson feathers as her taloned feet get a good grip on the rock dildo and sinks it into herself for a few thrusts before switching it over to you.";
		say "     As you feel that red-hot prick push into you, you moan loudly and grip her feathers tightly so you can push yourself back onto it harder. Your cunt feels so hot and so needy that you whimper as the toy slips out of you so the phoenix can have her turn again. You share your lover's toy like this, back and forth between you both as she chirps and moans in pleasure. Laying spread eagle across the lava pool, she basks in the twin pleasures of soaking in the intense heat of the volcano and the intense pleasure of stuffing her overheated cunt.";
		say "     Each time that toy leaves her to plunge back into you, it is hotter and all the more pleasurable. Your [bodydesc of player] form trembles atop the phoenix when you're eventually brought to a crashing orgasm[if player is male] that has you spill your hot seed across her feathers[end if]. She pounds the toy into you good and hard, giving you an intense climax that leaves you winded. As you collapse atop her, she pulls the basalt prick out of you and plunges it back into herself, bringing herself to orgasm moments later. You both are left moaning and panting as you float lazily atop her in the lava. After you've both had some time to recover, she takes you in her talons, along with her toy and flies you back up to the cave.";
	else:
		say "     Feeling the heat of the volcano surrounding and suffusing you, you are filled with lustful excitement. Anastasia nuzzles and nips at you with her beak, raising up her taloned foot to show she's brought her basalt playtoy along. Molten magma flows off of it and the dark stone has already started to glow a little with heat, but your molten bath has excited you so much that only seems to make it more enticing.";
		say "     [bold type]Shall you let her use it on you this time?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if player consents:
			say "     You move into position, rubbing your [bodytype of player] body down onto hers, nuzzling against her crimson feathers as her taloned feet get a good grip on the rock dildo and sinks it into herself for a few thrusts before switching it over to you. Feeling that heated, glowing rod against you is more intense than before, but still only feels wonderful to you. Despite the heat, it remains coated in her juices and this lets it be eased into your tight ass. The warmth of her fiery body flows into you, heated to even greater intensity by the volcano. This only increases the intensity of your lust and you start pushing yourself back onto the basalt rod.";
			say "     As you feel that red-hot prick pumping inside you, you moan loudly and grip her feathers tightly so you can push yourself back onto it harder. Your anus feels so hot and so needy that you begin to whimper each time the toy slips out of you. Your cock feels as hard as the rocky dildo filling you, dribbling a steady stream of precum onto her crimson feathers. Laying spread eagle across the lava pool, she basks in the twin pleasures of soaking in the intense heat of the volcano and the intense satisfaction of giving you such physical delight.";
			say "     Eventually, it all becomes too much for you and a particularly firm thrust of the hard, heated toy into you pushes you over the edge. Your cock throbs and blasts your hot load across your lover's flaming feathers. She pounds the toy into you good and hard, giving you an intense climax that leaves you winded. She nuzzles and nips at you in return, moaning and chirping as happily as she cums hard in lustful release. You both are left moaning and panting as you float lazily atop her in the lava. After you've both had some time to recover, she takes you in her talons, along with her toy and flies you back up to the cave.";
		else:
			say "     Unsure about taking that large toy while in such a precarious position, you instead tell her that you'd really like to see her use it on herself this time. She gives you a gentle nip on the shoulder and nods, asking you to turn around. Once you're in position, you get to watch as her legs line up the rocky toy to plunge into her pussy. As the basalt toy plunges into her stretched cunt again and again, you tease her wet folds and start licking at her clit, lapping up her delicious juices. As you're doing this, she returns the favor by bringing her beak to your crotch to lick and suck at your throbbing cock. From this position, your legs overhang off into the molten magma, but despite feeling the great heat of it, it brings no harm and no pain thanks to the phoenix's protection.";
			say "     Enjoying the pleasure of watching the phoenix fuck herself with her homemade toy, you feel her juicy cunt grow hotter and hotter as her excitement builds. You thrust into her beak lightly, but largely let her work her broad tongue over it as she likes. With her wings spread out across the surface of the lava pool, Anastasia is basking in the twin pleasures of soaking in the intense heat of the volcano and the intense pleasure of stuffing her overheated cunt. And added to that is the additional pleasure you lavishing attention upon her stuffed cunt.";
			say "     Your tongue moves back and forth from the firebird's needy cunt and the slick, glowing toy when she slides it backwards to make another thrust. The heat from it, as always, does you no harm and only seems to fill you with more energy and excitement. In time, it all becomes too much for the lustful bird and she drives her toy hard into herself one last time, cumming intensely. As she cums, you thrust your cock into her hot maw, unleashing the fiery load of semen you've built up for her. You both are left moaning and panting as you float lazily atop her in the lava. After you've both had some time to recover, she takes you in her talons, along with her toy and flies you back up to the cave.";

to say Anastasiasex06d:		[volcano - 69]
	say "     Feeling the heat of the volcano surrounding and suffusing you, you are filled with lustful excitement. Eager to satisfy your intense arousal, you carefully move around atop the fiery bird and bring your head to her cloacal pussy while offering your own crotch to the sexy bird. She nuzzles at your hip and gives you a playful nip before nuzzling at your [if player is herm]cock and cunt[else if player is male]cock[else]cunt[end if], letting her broad tongue slide across your genitals. You moan in pleasure and bury your face in her crotch, licking and kissing at her hot cunt. Feeling far hotter than usual, this heat still brings you nothing but pleasure, adding to the strength and heat of your own arousal.";
	say "     Your attention to the phoenix's cloacal pussy makes her moan and chirp in pleasure, which brings a smile to your face. And she returns the pleasure in kind, [if player is male]having taken your cock into her beak and sucking eagerly upon it[else]sliding her tongue across your oversensitive pussy, making your steaming juices flow all the more[end if]. You please one another like this while the recovering phoenix floats across the lava, soaking in its power for added pleasure to this lustful encounter. And wanting to [one of]make her lava bath even more intense, you cautiously dip your hand into the magma pool and pour it over her cunt, making her squawk in sudden delight. Taking this as a good sign, you scoop several more handfuls to spread over her heated folds before take a big scoop and pour it right into her, plunging your hand into her cunt along with the red hot lava[or]satisfy her craving even more, you slide several fingers into her pussy, frigging her quickly with them. And once she's loosened up, you slide your whole hand down into her needy cunt, pumping into her hard and fast as she squawks in delight[at random]. This sends her crashing over the edge into climax, her hot, dripping cunt clenching down hard around you as her tongue goes into overdrive to get you to cum as well. You can't hold back long and are soon crying out in delight as well. You both are left moaning and panting as you float lazily atop her in the lava. After you've both had some time to recover, she takes you in her talons, along with her toy and flies you back up to the cave.";

to say Anastasiasex07:		[give cunnilingus]
	say "     Deciding to enjoy more intimate time with the phoenix, you run your hands across her body and then down to her hot loins when the turns and presents her tail to you. Getting down on your knees behind her, you bury your face in those soft feathers, licking and kissing her pussy. She moans and chirps musically in pleasure especially loudly when you suck at her hard clit. 'Oh yes. Just like that. I love this new form of mine so much thanks to you.' You lavish attention on her cloacal pussy, alternating between your mouth and several fingers, getting her to quiver and moan again and again before she reaches a crashing, fiery climax that sends her hot juices across your face. You lap up her delicious juices, getting the giant bird clean before letting her roll over onto her back so you can snuggle up in her warm wings.";

to say Anastasiasex08:		[dommy fuck]
	say "     In the mood to enjoy the phoenix's sexy body again, you run your hand along her side and then under her tail to her heated pussy. Fingering it roughly gets a squawk of surprised pleasure from her. Moving with confidence and control, you coax the fiery bird to press her upper body to the ground while raising her tailfeathers, presenting herself to you. With a grin, you pump your fingers in and out of her cloacal pussy faster, enjoying how her hips quiver as her juices run down her thighs. Only once she's good and worked up do you bring your [cock size desc of player] cock to her dripping folds and mount her.";
	say "     Placing your hands on her shoulder blades, both the keep her pinned and to let you bear down upon her, you drive your [cock of player] shaft into her again and again. Feeling her heat flowing into you again, your excitement grows at you rut her all the harder, much to her delight. That heat flows through you and seems to pool inside your testes[if cock width of player < 12]. You can sense them getting heavier and churning with your seed like bubbling magma in need of volcanic release[else]. You can sense your seed churning inside them like bubbling magma in need of volcanic release[end if]. The pressure builds, but you hold it back, pounding the lustful bird harder and faster. Dominated and loving it, all she can do is chirp and trill as she grinds back into you.";
	say "     Eventually, you drive the phoenix to orgasm, her flames welling up and the temperature of her clenching pussy sky-rocketing. She shrieks in delight and moans for you to cum in her. And with all that added heat pouring into you, your balls bubble over and you drive hard into her a final time, burying your [cock size desc of player] [cock of player] cock deep inside the firebird's cunt and unleashing your hot load into her womb in an effort to sire a few more eggs in the crimson bird of flame. Once spent, you pull out and let the tried phoenix flop out on the cave floor, panting and chirping softly in post-orgasmic bliss. Striding over to her face, you fill her beak with your sticky shaft, having her clean up the gooey mix of semen and female juices from it.";
	if cock width of player < 12, increase cock width of player by 1;


[*** - flight scene?
	[else if player is male and HP of Anastasia >= 12 and bodyname of player is listed in infections of Avianpredlist and a random chance of 3 in 7 succeeds:	[***]
		if HP of Anastasia is 12:
			say "     I've been feeling stronger lately. I think I might have the strength for a short flight... a short [']mating['] flight,' she adds coyly, nuzzling her beak against your cheek. Giving your wings a rustle, you try to tell her that you've not quite gotten the hang of flying yes, but she won't hear it. 'In that case, I'll take care of the flying. It will not be a problem. Don't you trust me?' she trills teasingly. Given all the amazing things she's already shown herself capable of, what's one more?";]
]


Section 6 - Salamander Raid

to say salamanderraid:
	say "     Your chat with Anastasia's cut short when the sounds of excited hissing come from outside the cave. The phoenix shrieks angrily and rushes out of the cave, wings flapping wildly. 'Thieves! Egg-stealers! Slinking lizards!' she cries as she takes wing. Following her, you find [if HP of Newt > 0]that the salamander girls are back for another frolicking egg raid in the lava pool[else]a group of salamander girls coming over the lip of the volcano and descending into the lava fearlessly[end if]. While some just splash around in it playfully like it's a pond, others start diving, possibly going for the eggs.";
	say "     Seeing Anastasia dive into the molten magma to defend her clutch, you start scaling the rocky cliff. While leery of entering the intense heat of the lava on your own, you do feel comfortable enough to try driving off the others from its edge. Intercepting one intent on diving into the volcano, you prepare yourself for a fight.";
	now inasituation is true;
	challenge "Salamander";
	if fightoutcome >= 10 and fightoutcome <= 19:
		say "     Some of the other Salamanders have taken notice of you now and are quickly approaching. Moving towards the first of them, you prepare to fight.";
		challenge "Salamander";
		if fightoutcome >= 10 and fightoutcome <= 19:
			say "     Having taken down another of the Salamanders seems to give them pause. After exchanging a hiss with her comrades, one moves in to confront you while the others go to assist their fallen friends.";
			challenge "Salamander";
			if fightoutcome >= 10 and fightoutcome <= 19:
				say "     Having fought as long as possible to ensure her comrades have a chance to escape, this last salamander has passed out. Anastasia, having driven off the others from the lava pool, lands beside you. She looks over the salamander girl with a far colder gaze than any you've seen in the firebird's eyes. Despite the phoenix's obvious scorn, you can't help but find this brave girl strangely cute.";
				say "     [bold type] Shall you bring her inside the cave or toss her over the rim of the crater for her people to reclaim?[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Bring her inside.";
				say "     ([link]N[as]n[end link]) - Toss her over the rim.";
				if player consents:
					say "     The phoenix is displeased with your decision, but allows you to bring the dazed salamander into the cave. At first, she gives you both the cold shoulder, but soon her warm disposition returns. Coming over to check on the girl, she nuzzles her cheek with her beak and coos softly. 'Aw! The poor thing. She fought so hard for her friends and they just left her,' she says with a tenderness in her voice.";
					say "     Enfolding the fiery amphibian in her wings, she lets her flames grow to heat her. And to warm her up further, Anastasia also brushes her wingtip between the salamander's legs, caressing her pussy. Smiling at the corner of her beak as the girl releases some hisses of pleasure, the phoenix brings her over to the molten pool in which her egg incubated. Sitting her on the edge and dipping the girl's legs into the pool, Anastasia takes her basalt dildo in one taloned foot, dips it into the hot magma and guides it into the salamander's hot cunny.";
					say "     The salamander girl moans with pleasure as the phoenix works the stone sex-toy faster. As she starts to come to, she's still quite dazed and doesn't quite know what's going on beyond the warmth and pleasure she's feeling. Nuzzled and nipped by Anastasia, she rocks her hips onto the hot toy's thrusts.";
					say "     'Mmm... Isn't that so much better? Just let me take care of you and I'll make it all better. You'll be a good girl now, won't you?' the phoenix coos, nipping tenderly along the salamander's neck. Moaning a 'so good', though perhaps more in response to the first question than the second, the girl nods blissfully.";
					say "     'And what's your name, little lizard?' she asks.";
					say "     'Not lizard. Amphibian. Salamander,' she moans in response. 'The others call me Newt,' she adds. 'Where are they?' she asks, looking around, trying to take in her surroundings.";
					say "     'They left you, little one, even though you fought so bravely. But I'll take care you,' the phoenix coos, pumping the dildo faster. The salamander girl can only moan in response, panting and hissing louder as her pleasure builds, distracting her from all else. Eventually she ends up crying out in climax, her musky juices running down her thighs and the toy. They hiss and steam as they land on the hot rocks. When the throes of her orgasm pass, she passes out again, this time with a blissful expression on her pretty face.";
					now HP of Newt is 4;
					move Newt to Volcanic Cave;
				else:
					say "     Rather than risk adding more difficulty to your situation, you drag the unconscious salamander up to the edge of the crater and push out. Hopefully one of the other salamanders will come looking for her. After the beating they'd received, hopefully they've learned their lesson and won't be back to trouble the phoenix's nest.";
					now HP of Newt is 3;
					say "     Once back in the cave, Anastasia nuzzles up to you. 'You were very brave, facing them to protect my nest. I should thank you for your help,' she adds, nipping you affectionately with her beak. 'Come, let us celebrate our victory.'";
					now lastfuck of Anastasia is 255;
					say "[sexwithAnastasia]";
				now HP of Anastasia is 12;
	if fightoutcome >= 20 and fightoutcome <= 29:
		say "     Beaten and abused by the victorious salamanders, you're dragged off by them as another prize as they escape the furious phoenix. In her desire to protect her nest, she must not notice you gone until it's far too late. You end up dragged back to the ruins where this group is nesting. There, you're fucked and molested until there's nothing left of you but another horny salamander.";
		now humanity of player is 0;
		setmonster "Salamander";
		choose row monster from the Table of Random Critters;
		now tailname of player is "Salamander";
		now facename of player is "Salamander";
		now skinname of player is "Salamander";
		now bodyname of player is "Salamander";
		now cockname of player is "Salamander";
		attributeinfect;
		now tail of player is tail entry;
		now face of player is face entry;
		now skin of player is skin entry;
		now body of player is body entry;
		now cock of player is cock entry;
		if hellHoundLevel is 0:
			follow the sex change rule;
			follow the sex change rule;
		if libido of player < 45, now libido of player is 45;
		now HP of Newt is 2;
		WaitLineBreak;
		end the story saying "You are fucked and infected until you're nothing more than another salamander girl.";
		now battleground is "void";
		wait for any key;
		now skipturnblocker is 1;
		follow the turnpass rule;
		stop the action;
	else if fightoutcome >= 30:
		say "     Forced to withdraw, you are driven back into the volcanic cave. From there, you watch as the salamanders are eventually driven off by the phoenix, though you can see several of them carrying off eggs as they make their escape. Anastasia shrieks angrily and pursues the fleeing amphibians, only to return much later, tired and saddened by her loss. You clutch the phoenix tenderly and try to console her. She eventually returns to her old self, but it takes time.";
		now lastfuck of Anastasia is turns - 4;
		now HP of Newt is 1;
	now inasituation is false;


Section 7 - Gender Shifting

to Anastasiasexchange:
	[puts Snow Leopard as lead monster for gender change (appropriate size)]
	repeat with y running from 1 to number of filled rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		if name entry is "Snow Leopard":
			now monster is y;
			break;
	choose row monster from Table of Random Critters;
	if "Female Preferred" is listed in feats of player:
		now sex entry is "Female";
		if cunt length of player < cunt length entry and scenario is not "Researcher", follow the sex change rule;
	else if "Herm Preferred" is listed in feats of player:
		now sex entry is "Both";
		if cunt length of player < cunt length entry and cock length of player < cock length entry and scenario is not "Researcher", follow the sex change rule;
	else:
		now sex entry is "Male";
		if cock length of player < cock length entry and scenario is not "Researcher", follow the sex change rule;



Section 8 - Endings

when play ends:
	if HP of Anastasia >= 7:
		if humanity of player < 10:
			say "     Not long after your mind falls and you are lost to the infection, there is a fiery column which rises into the air. There is a triumphant ring to it, though also a hint of sadness. You do not notice this event, too caught up in your new, lustful existence.";
		else:
			say "     As you are being taken out of the city by the military forces, everything stops for a moment as a fiery column erupts in the distance, shooting off into the sky. You watch as the pillar of flame continues to ascend with a triumphant cry filled with ecstasy and joy. You watch as the column briefly unfolds a broad pair of fiery wings before curling them back in and the blaze seems to implode upon itself. The soldiers are in chaos at this sight, yelling over their radios to report in and demand orders while you watch with a smile, knowing that Anastasia the Phoenix [if HP of Anastasia >= 11]and her many eggs are on their way home[else]is on her way home[end if], off to share her precious gift with the rest of her people, probably changing them forever.";



Anastasia ends here.
