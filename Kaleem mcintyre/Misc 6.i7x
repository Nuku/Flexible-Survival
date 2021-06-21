Misc 6 by Kaleem mcintyre begins here.
[Several events transferred to Consolidated Outside Events in Song's folder]
[Renamed 'Pegasus' event due to clashing with the 'Pegasus' enemy - Kurainyx]

"Miscellaneous events to be added to Flexible survival."

Section 1 - Winged Horse

Table of GameEventIDs (continued)
Object	Name
Winged Horse	"Winged Horse"

[Resolutions of Winged Horse Event                                                                 ]
[1 = Ran along side the horse, but was not noticed.                                                ]
[2 = Attacked the horse and won the fight. Horse was beaten unconscious.                           ]
[3 = Attacked the horse, but lost the fight. Horse has found a boost of confidence.                ]
[4 = Attacked the horse, but fled the fight. Horse is left confused.                               ]
[5 = Player attempted to attack the horse, but failed to even ground it. Went unnoticed.           ]
[6 = Pegasus Player 'flew' with the horse. Both had a fun time playing in the skies.               ]
[7 = Player startled the horse. It no longer feels safe in the dry plains now, but wasn't attacked.]

Winged Horse is a situation.
ResolveFunction of Winged Horse is "[ResolveEvent Winged Horse]".
Sarea of Winged Horse is "Plains".

to say ResolveEvent Winged Horse:
	say "     Your trek through the hot and barren plains gives you moment to pause. Wiping a hand across your brow, you scan the horizon past the haze of heat and open up your senses. It's still, aside from the occasional gust of wind taking a billow of dust and sand to the air. There's movement, for sure, but for now it's only small rodents and insects playing out their lives, oblivious to the chaos of the city. Grains of sand tickle at your nose, but only threatening the barest hint of a sneeze. It's quiet and peaceful for once. Which is probably why you were able to hear that faint noise. The graceful beat of wings at flight.";
	say "     Craning your neck, you scan your surroundings for the source of the disturbance. You spy it quickly, alone in the sky like a shimmering sparkling dot. Giving it a moment, the perpetrator of broken silence finally takes shape. A Pegasus, with a shimmering coat of gold and white, gallops across the blue prairie of the sky only it has access to. As it grows closer, swooping down in a joyful dive, you can make out more details of the mythical beast. Its flowing mane, the beat of its wings, the powerful surge of its muscles with every effort. It's finally free and unbound by the dangers of the world. The would-be spirit in flight feels almost in reach now and you can feel a surge of emotion. It hasn't taken notice of you yet and you feel driven to act.";
	LineBreak;
	say "     [bold type]What will you do?[roman type][line break]";
	LineBreak;
	now sextablerun is 0; [Bring up options]
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Run with it"; [Try for a moment of clarity]
	now sortorder entry is 1;
	now description entry is "Try to join the equine in its run";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Throw a rock"; [Be an asshole]
	now sortorder entry is 2;
	now description entry is "Try to bring it back down to reality";
	[]
	if BodyName of Player is listed in infections of FlightList:
		choose a blank row in table of fucking options;
		now title entry is "Take a leap"; [Make an attempt to join the Pegasus in the sky]
		now sortorder entry is 3;
		now description entry is "Use your wings to join it";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - You've better things to do[as]0[end link][line break]";
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
				if (nam is "Run with it"):[Why are you doing this?]
					say "[WingedHorse_RunFree]";
				else if (nam is "Throw a rock"):[Why would you do this?]
					say "[WingedHorse_BeDick]";
				else if (nam is "Take a leap"):[Try not to spook the horse]
					say "[WingedHorse_FlyWith]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;[The player's not interested in the event]
			say "     You shake your head. Flights of careless freedom are for those who don't weigh the dangers properly. You'll not be left open by that.";
			wait for any key;
		else: [That's not an option dummy!]
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;
	[now Winged Horse is resolved;] [will not reoccur]

to say WingedHorse_RunFree:[A calming run with a partner who need not know your wish to be as free]
	say "     You want to be free too! Gathering what youthful spirit that's in you, you take off running after the majestic beast. Your legs pump as hard as they can as your eyes swiftly break between your partner in levity and the ground before your feet. It hasn't noticed you yet, but that doesn't matter to you right now. Your lungs sting with the purifying freshness of the plains air. You feel the wind rush past you, a warm and smooth caress across your [Skin of Player] skin. This feeling, like the city and its troubles have been left behind, your legs carrying you to safety. A part of you revels in the freedom, sharing only a part of what that white and gold child of happiness must feel each day.";
	say "     Your foot catches on something you missed. You stumble to a halt, doubled over and heaving in the hot and dry air, to the dismay of your lungs. You manage to crack an eye towards the sky, sweat beading on your lashes, only to find the Pegasus galloping away into the blue yonder. Falling onto your backside, you lean back onto your hands as you take in the last of mythical creature as its slowly reduced to that shimmering dot again. A twinkling star in the bright daylight, you ruminate. It never saw you, but you feel it would have broken the illusion if it had. Better a single soul escape the chaos for but a moment. You've finally caught your breath, hauling yourself up to standing as you dust yourself off. It wasn't much, but it felt nice to share in that brisk calm.";
	SanBoost 20;
	now Resolution of Winged Horse is 1; [memory point for what the player did - just ran with it]

to say WingedHorse_BeDick:[You know this isn't the right thing to do... so why does it feel good?]
	say "     Be it indignant anger or bottled frustrations, the sight of the beast brings out only spite. Just the sight of the creature carelessly bounding overhead, as if the world and its struggles are beneath it, makes your blood hot. You quickly scan the ground for anything hard and round. If it was the last thing you did, you were going to melt its wings and be there when it rejoined us plebeians on earth. There, a rock! Big enough to fit in your fist, but light enough to throw. Now if only you can nail the bird-brained equine in the head.";
	let bonus be (( Strength of Player minus 10 ) divided by 2);
	let diceroll be a random number from 1 to 20;
	say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]15[roman type] (Strength Check):[line break]";
	if diceroll + bonus >= 15: [The player threw the rock hard enough]
		say "     The stone rockets from your palm. A harsh reminder of reality charging forth towards a fanciful target blissfully unaware.";
		let bonus be (( dexterity of Player minus 10 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]13[roman type] (Dexterity Check):[line break]";
		if diceroll + bonus >= 13:[A direct hit!]
			say "     THWACK. A direct hit! The winged horse jerks this way and that, concussion wiping clean its perception of the world it had just owned. You give yourself a moment to celebrate before you pick up running towards the erratically tumbling ball of feathers. You keep your eyes glued to the falling equine angel, it looks to have regained its senses but its too late. A bolder blocks your sight of the impact, but the deep and mighty sound of its arrival lets you know you melted some wings. Now it's time to be reality's welcoming party. You bound past the rock...";
			wait for any key;
			now inasituation is true; [suppress normal texts]
			challenge "Pegasus"; [No inasituation needed, as the player is fighting the Pegasus with the option to sex it]
			if fightoutcome < 20: [player won, then leaves as there's no point beating an unconscious horse.]
				say "     Reeling from your last hit, the Pegasus stumbles as it tries to stay up. It's apparent that it can't see very well, its vision swimming and eyes drifting about as it tries to keep them locked on you. You ready yourself to strike again when the equines front left knee finally buckles. The first movement of an avalanche, as the rest of the horse comes tumbling down. A cathartic breath finally leaves your body, breath you hadn't known you were holding as the fight drew to a close. Staring down at the crumpled heap of white and gold, you feel a rush. The Pegasus thought it could escape this world, but you were there to remind it, drag it back kicking and neighing.";
				say "     You can see its chest rise and fall from this angle, so its not dead. A lesson learned, you hazard, no point beating it while its unconscious. Approaching and squatting near its wings, you pluck a few to stash in your pack, a victory trophy perhaps? Taking a quick glance around the area, you can see a few others that were drawn to the commotion. None dare venture out, too scared for what you would do to them maybe? It doesn't matter, you did what you wanted to do and now it's time to leave. Turning back, you retrace your steps back to where you first saw the winged equine. The path now in before you, you resume your journey.";
				ItemGain Pegasus Quill by 5;
				now Resolution of Winged Horse is 2; [memory point for what the player did - threw stone, fought and won]
			else if fightoutcome > 19 and fightoutcome < 30: [lost]
				say "     The ground rushes up to meet you, a cloud of dirt spraying as your face impacts. What's going on, this isn't supposed to be how this goes. Taking a moment to scratch at the earth in frustration, you whirl around onto your side and glare at the Pegasus that just beat you. You weren't aware a horse could look smug, but you'll be damned if that's not the only way you can describe this overgrown pony. It snorts at you as it takes its time trotting in place, a giddy victory dance. Whatever emotion you felt before is ten times worse now, but a part of you reigns that in. This battle was lost, but that doesn't mean you won't have another chance to put this horse in its place.";
				say "     Finished with its non-verbal bragging, the winged equine finally takes off. Dirt and sand are blown about by its wings, stinging your eyes and getting in your mouth. You swear you can hear nickering as the Pegasus flies off into the horizon, dipping and soaring with its new found confidence. Spitting a glob of dirt to the ground, you struggle back to standing, sore all over from the beating you just received. Glancing about, yeah there are others watching, drawn to the area by the commotion. Face burning hot with blush, you quickly make your way back to where you first saw the flying pigeon with hooves. Nothing to do now but get back on the path and hope for another chance.";
				now Resolution of Winged Horse is 3; [memory point for what the player did - threw stone, fought and lost]
			else if fightoutcome is 30: [fled]
				say "     There's no point to fighting this stupid bird-horse. You make for a swing only to bail part way through, a feint to make the Pegasus flinch. While the sparkling white equine is distracted, you turn on your heel and make a break for it. Your point's been made, melted the damn wings off the would-be Daedalus. Beating the horse at this point would be taking things a step too far. Once you're sure you're out of sight, around the bend of an upcropping of rocks, you chance a glance back at your opponent. The grounded mythical beast is looking around in confusion, scuffed up from its fall, but otherwise unharmed and real wings intact. A smirk creeps across your face as you turn around and trace your way back to where you began. 'Showed that horse what's what,' you silently brag to yourself as you strut your way down the path, a regular ol['] cock of the walk.";
				SanBoost 5; [so do you feel better about yourself? Well, do ya? Big man?]
				now Resolution of Winged Horse is 4; [memory point for what the player did - threw stone, fought and fled]
			now inasituation is false; [suppress normal texts]
		else: [Threw hard enough, but crappy aim]
			say "     Only for your instrument of humility to sail harmlessly past your target. The Pegasus bucks and whinnies at the near miss, tearing off in a direction furthest from you. You may not have melted its wings but you've shattered its fantasy, if only briefly. You watch the wide and round haunches of the equine strain and flex to its fearful flight. It'll probably be back, you tell yourself as you focus on your own path again, so you'll have your chance yet.";
			now Resolution of Winged Horse is 5; [Player tried to be hostile, but was not even noticed.]
	else: [You throw like a kid. This is an 18+ game, so get out of here.]
		say "     You chuck the rock as hard as you can. It sails through the air, but falls tragically short of its mark. You curse under your breath, the creature didn't even notice your attempt. It really was out of reach for those of us still bound to the earth. For now at least. There will always be next time. Something that careless always makes repeat mistakes. Your eyes fall back to the path you were traveling. It's time to get moving again.";
		now Resolution of Winged Horse is 5; [Player tried to be hostile, but was not even noticed.]

to say WingedHorse_FlyWith: [Scene that plays out if the player chooses to attempt to join the Pegasus in flight]
	say "     The white winged horse need not be the only one who's free. Before it passes too far from your reach, you crouch and spread your [bodySpeciesName of Player in lower case] wings. After a brief strain of build up, you launch into the air. While not exactly flight, it would be enough to join your fellow sky dweller for a while. The grounds decent slows, your first arc at its peak. You use your wings to control your fall, building yourself up for the next leap to the sky. Feet having barely touched the ground, this time you soar towards the heavens and your soon-to-be feathered friend. It finally takes notice as its personal world is pierced by an intruder.";
	if BodyName of Player is "Pegasus" and Player is pure:[Body check to see if player is pure Pegasus, easier to not spook horse]
		let bonus be (( Charisma of Player minus 10 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]5[roman type] (Charisma Check):[line break]";
		if diceroll + bonus >= 5:
			say "     Startling at first, it starts to turn to flee before it recognizes a fellow Pegasus. Muscles relax from sudden tension as the equine uses its sudden change in momentum to pull a friendly loop in the air. You aren't there when it returns though, you're falling back to earth as your faux-flight ends. Quickly kicking off from the ground, you rejoin the mythical beast. Understanding sparkles in the equines eyes and it dives under where your arc would peak. For a moment you hear a joyful whinny beneath you as you soar through the air. This joyful respite continues for some time, the more skilled Pegasus playfully darting around you whenever you touch the clear blue sky. When you finally tire, you come to a bouncing stop. Your lungs burn with the dry air as you look back up towards your feathered friend. Knowing its fun is at an end, it gives a mischievous snort and pulls two more loops before galloping off to where it calls home. Finally catching your breath, you smile at the memories you just made. Letting the experience settle in your soul before you start to look for the path you were on.";[Horse sees you and isn't spooked. Player has a moment to play with the Pegasus]
			SanBoost 30;
			now Resolution of Winged Horse is 6; [Pegasus met a fellow Pegasus in the dry plains and had a good time.]
		else:
			say "     The flying equine startles, bucking wildly and letting loose a whinny. It jerks violently away and attempts to flee. Confused as to why a fellow Pegasus would act so, you turn to look behind, thinking perhaps a predator had followed you without your knowledge. Laying eyes on only empty baked dirt and sand, you turn back. The Pegasus is long gone by now, feathers lazily drift in the currents of the air serving as evidence of its efforts to escape. Perhaps your sudden intrusion didn't give the equine enough time to see who was rushing towards it. As you slowly descend back to the soil, minor adjustments to your [bodySpeciesName of Player in lower case] wings ensuring a safe fall, you ponder if you'll have another chance to join the mythical beast. Landing with soft crunch of dirt beneath your feet, despite your disappointment you wager you will indeed have another chance. For now, your path awaits."; [Despite being Pegasus, the player's sudden intrusion spooked horse]
			now Resolution of Winged Horse is 7; [Horse feels unsafe flying in the dry plains now]
	else:[Player isn't a Pegasus and just a stranger running up to say hello. Easier to spook horse. Mention this.]
		let bonus be (( Charisma of Player minus 10 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]16[roman type] (Charisma Check):[line break]";
		if diceroll + bonus >= 16: [Despite running up light a madman, play was able to appear non-threatening enough to not spook]
			say "     The horse starts at your sudden entry to its world. You do your best to show that you mean no harm, as best you can given your need to still fly. Perhaps due to your communication skills, you are able to calm the horse before it can bolt. The ground begins to rush back up as your temporary flight ends, your touchdown acting as yet another launching point. When you return to the sky, the white equine remains, though you can still sense a healthy dose of skepticism. You are able to keep pace with the mythical beast, though the paired flight in freedom is somewhat soiled by the fact that the Pegasus keeps its distance. It doesn't last all that long before the shining horse breaks away and begins its flight back to wherever it calls safety. Next you land, you bounce to a stop. Somewhat disillusioned by the way your encounter went, you can't help but understand. [bold type]You aren't even a Pegasus[roman type], so suspicion was the only safe course of action. With a sigh, you decide to return to the path you were on. There's no use dwelling on this now.";
			now Resolution of Winged Horse is 7; [Horse feels unsafe flying in the dry plains now]
		else: [Player ran up like a madman and spooked the horse]
			say "     The flying equine startles, bucking wildly and letting loose a whinny. It jerks violently away and attempts to flee. Sudden movement like this throws your balance and you are forced to focus on not plummeting to the ground. Wildly throwing your [bodySpeciesName of Player in lower case] wings about, you only manage to slow your fall and roughly crash into the dirt. Mostly uninjured, you scramble to your feet and quickly scan the sky for the equine. The Pegasus is long gone by now, feathers lazily drift in the currents of the air serving as evidence of its efforts to escape. You must have spooked the poor thing. After all, [bold type]you aren't even a Pegasus[roman type], so you suppose it only makes sense that your sudden appearance would come off as hostile. A slight blush heats your face as you realize your social faux pas. Dusting yourself off, you look for the path you were on, hoping to put this behind you for now.";
			now Resolution of Winged Horse is 7; [Horse feels unsafe flying in the dry plains now]

Section 2 - Guess that Character One

Table of GameEventIDs (continued)
Object	Name
Guess that Character One	"Guess that Character One"

Guess that Character One is a situation.
ResolveFunction of Guess that Character One is "[ResolveEvent Guess that Character One]".
Sarea of Guess that Character One is "Campus".
When play begins:
	Add Guess that Character One to BadSpots of FurryList;
	Add Guess that Character One to BadSpots of MaleList;

to say ResolveEvent Guess that Character One:
	say "     While making your way across the college campus, you come to a stop as you notice two students, or anthro mutants you assume are students, seeming to argue with each other while sitting together out on the campus's lawn. Not seeing anything dangerous about the others you hesitantly move closer to them to see what the altercation is about. When you do however, you find yourself blinking at what you hear coming from one of them. 'Omae o korosu!' A slim, but toned half naked brown wolf says. The lupines blue eyes are twinkling dangerously as he shouts to a smaller calico cat feline whose bright violet eyes are smiling up at him. Both are sitting on the ground together with a three foot distance between them and from the looks of things it would seem that the wolf is trying to get a point across to the feline. The calico cat seems to be missing it as he smiles charmingly up at the other. 'Omae o kisu?' The feline repeats, though somewhat off the mark. 'Omae o korosu!' The wolf snarls. A little bit of foam is seeping down the side of his dark muzzle as anger shoots through his bristling hide. 'Omae o kisu!' The feline purrs in pride as his long tail goes flailing around wildly behind his tri-colored feline's back.";
	WaitLineBreak;
	say "     Obviously these two are having a translation failure, but from what you can see of the purple-eyed feline the other knows exactly what it is saying is incorrect. If what you are seeing is correct the calico is doing what he's doing just to rile the other, but from the way the wolf looks as though he is ready to kill the feline you have to wonder if the calico knows what he's getting himself into. 'Omae o kisu!' The wolf shouts as loud as he can and then blinks as what he just said registers inside of his brain. The calico is moving through the air faster that you can see as the feline pounces on the wolf, knocks the other down and then proceeds to snog the hell out of the lupine. All the wolf can do is hold on for the ride, and the calico's waist, as the feline begins to hump up and down on top of the other's somewhat lanky form while rushing hands down to remove the spandex shorts the lupine has on.";
	WaitLineBreak;
	say "     It's only when the calico has the wolf's lower half naked that the feline pulls back, his violet eyes have almost turned black with desire, and then proceeds to go down on the wolf. Hot mouth moving to slurp along the wolf's impressive sheath you don't notice it when three other forms come around side of the couple until a grunt forces the calico to slide his maw off from around the now panting wolf's hard red rocket. When you tip your own head up from the spectacle that is the brown wolf's engorged organ, after wiping the drool from off the edge of your lips, you see a bipedal dragon standing next to a lion with half his face covered by his long ginger colored hair and a smaller cheetah laughing playfully while looking down at the two. 'I take it that you won the bet between you two?' The cheetah asks in a dignified manner that makes you wonder what manner of breeding the spotted feline had before his untimely transformation. 'Yep! He said he'd kiss me and so I'm kissing him!' The calico winks to the other feline and then turns his head back to look at the now whimpering wolf. 'You belong to me, wolf boy. Now shut up and let me have my fun.' And with that the calico bends his head back down and then resumes giving the lupine an inspiring blowjob.";
	WaitLineBreak;
	say "     You stay to watch until the wolf arches, howls and then gushes his seed down into the calico's sucking throat before smirking and then turning around to walk away. Obviously this group of friends is very close, else you don't think that the others would have stayed to watch the calico sucking off the wolf as they had without saying anything in conjecture. Had you turned around you would have seen the calico flip the wolf over and then press his nose into the other's rump in order to tongue fuck the lupine's upturned hole, but by then you are already on your way somewhere else. The howl of the wolf would stick in your mind for a while though.";
	now Guess that Character One is resolved;


Section 3 - Guess that Character Two

[Moved to Consolidated Outside Events]


Section 4 - Guess that Character Three

Table of GameEventIDs (continued)
Object	Name
Guess that Character Three	"Guess that Character Three"

Guess that Character Three is a situation.
ResolveFunction of Guess that Character Three is "[ResolveEvent Guess that Character Three]".
Sarea of Guess that Character Three is "Red".
When play begins:
	Add Guess that Character Three to BadSpots of FurryList;
	Add Guess that Character Three to badspots of HermList;
	Add Guess that Character Three to BadSpots of MaleList;

to say ResolveEvent Guess that Character Three:
	say "     Making your way down the streets of the red light district you find yourself watching an interesting sight as one tigress hooker is standing in between two furry male cat figures who seem to be somewhat perplexed with the she-cat. Curiosity getting the better of you, you walk over to see what's going on, but keep well enough away so that you won't be drawn into the situation, unless things dictate else. 'What part of [']we ain't interested['] don't you get, lady?' A hulking tom cat in a grease pit uniform says while growling somewhat angrily at the red dress wearing female. 'Awww, but honey, I could show you and your little friend here such a good time.' The tigress winks before running a finger down the line of her dress and to the bulge sticking out just slightly. 'Uhm, miss. We're not...that is...my friend and I...we're...uhm.' The more lithe ginger furred feline wearing the same uniform as his cohort stumbles over his words while looking up and down the sexy frame of the tigress. It takes the female a second to understand the lankier feline's words, but once she does... 'Ohhh! Well if you two were into each then you should have just said so earlier.' Waving her hand dismissively the feline hooker brushes the two males off suddenly.";
	WaitLineBreak;
	say "     'What!? Where did you get such a crazy idea from, lady?!' The hulking muscular male rants at the now bored looking tigress. Coincidentally this happens at the same time the smaller tom cat says, 'Bingo!' It doesn't take long before the two males are turning their heads to stare at one another in confusion. From what you can see these two have some personal issues to work out between one another. Laughing and shaking your head you move along about your business just as the two males start to sputter and then rub the back of their heads at the same time.";
	now Guess that Character Three is resolved;


Section 5 - Scopaesthesia

Table of GameEventIDs (continued)
Object	Name
Scopaesthesia	"Scopaesthesia"

Scopaesthesia is a situation.
ResolveFunction of Scopaesthesia is "[ResolveEvent Scopaesthesia]".
scopnum is a number that varies.
When play begins:
	Add Scopaesthesia to BadSpots of FurryList;
	Add Scopaesthesia to BadSpots of MaleList;

to say ResolveEvent Scopaesthesia:
	if scopnum is 0:
		say "     Walking along the streets, you find yourself freezing as you feel someone watching you. Turning your head and looking around you find that no one, either mutate or human, is anywhere nearby. However, the feeling of being watched still bothers you. Picking your feet up and moving at a quick pace you decide to move along before something gets started that you may not want to finish.";
		now scopnum is 1;
		now sarea of Scopaesthesia is "Red";
		increase score by 1;
	else if scopnum is 1:
		say "     Minding your own business while walking down the streets of the red light district, you find yourself stopping suddenly when your senses begin to scream at you. Not sure what's going on you turn your head to look around the area cautiously. Not seeing anything strange you shrug and then continue about your way. Ten minutes later the same feeling comes across your mind. Grunting and then stopping dead you spin around behind you, hoping to catch whoever is trying to follow you, or whatever. You end up finding a lustful mutant growling and grinning at you with sinful desire in their eyes. Looks like you've found your mysterious stalker. Now you can let them know how you feel about them by bashing their head in!";
		fight;
		LineBreak;
		say "     Finishing up with the inconvenient altercation, you make your way down the street with a glide in your stride. That is, right until you feel like someone is watching you again.";
		now scopnum is 2;
		now sarea of Scopaesthesia is "Campus";
		increase score by 5;
	else if scopnum is 2:
		say "     Getting to the campus grounds, you find yourself breathing a sigh as you walk underneath a large tree and then settle down for a quick rest. Hunkering down while looking around the somewhat lively college, you smile to yourself at how the mutated students seem to be adjusting so easily to their new lives. Wondering if you'll ever be that calm with what's happening, you close your eyes to rest, but you quickly snap them open wide when you get the sense that someone is watching you. Getting up and looking around you find yourself getting a few weird looks from the passing mutants as you whip your head back and forth while searching for danger. Eventually someone comes up to speak to you. 'Hey pal, you OK?' A large orca guy says while cocking an eyebrow at you. Shakily you tell him that you think someone is watching you. 'Really?' The large killer whale wearing the black mesh shirt looks around and quickly you feel the sense of someone staring at you fade. 'Well, I'd don't see anybody, well except those cute cheetah girls over there.'";
		WaitLineBreak;
		say "     You turn to see who the larger male is talking about and then shake your head before telling the other that the feeling is gone now. 'Oh, well OK. If you don't feel comfortable being alone, you can to my dorm and stay with me a while. There's not a lot to eat or drink, but hey...' The other shrugs somewhat helplessly, and all you can do is nod and smile at him before telling him that you have to go. 'Oh, OK. See ya around, pal.' The orca turns to leave and you grab your stuff to do the same, however the suddenly spine tingling sensation of being watched returns.";
		now scopnum is 3;
		now sarea of Scopaesthesia is "Park";
		now level of Scopaesthesia is 9;
		increase score by 5;
	else if scopnum is 3:
		say "     Deciding to relax a bit at the park, you find yourself quickly being accosted by several Leopardmen. The growling and snarling felines seem to have a bone to pick with you, preferably the ones both within your body.";
		challenge "Leopardman";
		challenge "Leopardman";
		challenge "Leopardman";
		say "     Brushing yourself off after that dealing with the spotted menaces, you wonder why in the hell would you be attacked by such a group before your mind rings out a warning. Flipping your head back and forth you try and figure out why you suddenly feel so uncomfortable in the park. However, before you can the feeling dissipates. Shivering and then grunting you decide that maybe a pleasant walk in the park is not worth the aggravation of dealing with whatever is going on right now.";
		now scopnum is 4;
		now sarea of Scopaesthesia is "High";
		now level of Scopaesthesia is 0;
		increase score by 10;
	else if scopnum is 4:
		say "     Running through the high rise district, you make your way through the narrow spaces of the alleyways of the buildings as you try and outrun the mutants after you. Not something unusual in this city, really. It's only after losing the group, after you climb over a chain link fence and then around several more buildings, that you stop and breathe a sigh. Chuckling at the incredulity of the situation you stop and then turn your head. Thinking that you saw something, or rather [']someone['] slip through the shadows behind you, you quickly make your way out of the alleyway.";
		now scopnum is 5;
		now sarea of Scopaesthesia is "Beach";
		increase score by 10;
	else if scopnum is 5:
		say "     Making your way to the beach, you end up spotting someone standing idly on the sands while looking at the sky above. Not wanting to disturb them you quietly make your way over to someplace else, however, before you can take so many as three steps the sudden feeling of being watched comes over you again like a crashing wave. Whipping your head around you find that there is no one around, save for the mysterious person still looking up into the skyline. Shivering and then shaking your head you wonder if the unknown person is the one who's been tailing you all this time. Going over to them, if only to confirm or deny your theory, you find yourself pausing in mid step when the figure lowers their head and then turns toward you. What you see causes your eyes to widen in complete disbelief because there in front of you stands... yourself!?";
		WaitLineBreak;
		say "     Not knowing what to think or say or feel, you look at the undeniably [']human['] form of yourself before this all began. You gasp when this person reach out a hand for you. Not sure about what to do, you find yourself walking forward to take the other's hand without thought. Yet just before you can reach your doppelganger, you find that your feet have frozen solid into place and your body has become almost like lead. Both fear and uncertainty grab at your heart as you continue to try and pick your feet up, but every time you try nothing happens. When the other you finally sees that you aren't coming, you can only stare in painful silence as you watch your other self slowly back away from where they had been standing into the waters of the ocean. As the other you continues to move back you find that the human you is slowly starting to ripple and then fade away into nothing.";
		WaitLineBreak;
		say "     A gasps tears you from the scene as you find yourself coming awake on the beach. Sand on your face and wild eyes blinking rapidly in confusion as you pull yourself up from off the ground you're not sure when you fell asleep but you do know that you must have been out a while because your body feels really stiff. Shaking like a dog you pat yourself down to remove much of the grit from off of your body before turning away to go about your business. The sudden feeling as though something is not quite right though makes you roll your head around the side of your shoulder to have a look at the rippling seashore. A faint sense of longing makes you confused for several minutes but you shrug the feeling away before it can become too strong for you to take. The dream you just had is already becoming a faded memory.";
		SanLoss 5;
		increase score by 25;
		now Scopaesthesia is resolved;


Misc 6 ends here.
