Version 2 of Consolidated Park Events by Song begins here.
[ Version 1.0 - Coded by Stripes to consolidate many of the excess background events ]
[ Version 2.0 - Sweeping update - Song
	- Renamed "CEPark" to "Consolidated Park Events" for clarity
	- Moved file from Stripes' folder to Song's folder. To see the detailed GitHub changelog for the file pre-move, access the primary repository using a commit earlier than this one, or check a stale branch from another contributor. This will allow you to look at the history of the now-removed CEPark in Stripes' folder
	- Restructured content into separate event names under the same file. This allows players to hunt for specific events and avoids a generic and uninformative event title
	- General writing and formatting cleanup
]

"Consolidates a collection of simple and background events to clear up the Park area."


Section 1 - Strange Sight (by Kaleem)

Table of GameEventIDs (continued)
Object	Name
Strange Sight	"Strange Sight"

Strange Sight is a situation.
The sarea of Strange Sight is "Park".

Instead of resolving Strange Sight:
	say "     Walking through the forested area of the park, you get the unnerving feeling that something is watching you. Mind instantly on edge, you find your senses spreading out around you as you try and locate the unknown entity, then whip your head over to a clump of bushes when you suddenly hear them rustle. After seeing so many mutants taking what they want by force, you're eager to turn tail and flee, but on deeper introspection, you realize that the feeling you're getting right now isn't exactly foreboding so much as it is just... uncomfortable. It's like someone is staring at you from across a room without saying anything, studying you.";
	say "     Steeling your resolve, you find your feet taking you over to the bushes before you can weigh the pros and cons of giving in to your curiosity. Moving closer to the foliage, you take a few calming breaths before reaching out with a shaky hand to part the clump of leaves. Once you do, you nearly jump back at the sight before you. Standing regal on four legs is some kind of bizarre hybrid, sporting the body of a horse, the face of a human, and scales of myriad colors in place of fur. Armor-like hide covers the creature's neck on down to its chest, catching the surrounding light in strange and mysterious ways. On top of the monster's head stands an impressive white, spiral-shaped horn that has to be almost twelve inches long, if not more. A shaggy mane of green hair spills out around the side of the beast's neck, doing nothing to hide the human face of the mutant staring back at you.";
	say "     Not knowing what to say or do as the lips of the stallion-like animal rise up to smile at you, your body seems to freeze in place as you stare at it. The strange amalgamation gives you a small nod, as though approving of you in some way, then turns to scamper off somewhere into the park. A long and bushy tail whips behind its back just as it disappears out of sight.";
	increase score by 1;
	now Strange Sight is resolved;


Section 2 - Anxious Soldiers (by Kaleem)

Table of GameEventIDs (continued)
Object	Name
Anxious Soldiers	"Anxious Soldiers"

Anxious Soldiers is a situation.
The sarea of Anxious Soldiers is "Park".

Instead of resolving Anxious Soldiers:
	say "     Seeing a group of soldiers patrolling the park, you find your spirits lifting and run over to them to ask for help. You quickly realize that this was a mistake. The moment they catch sight of you, the armed humans raise the barrels of their guns while yelling at you to halt. Skidding to an immediate stop, you find yourself somewhat confused as the uniformed men and women glare at you before turning their heads to talk to one another. The conversation between the assembled group of soldiers has your stomach knotting with butterflies while your heart freezes inside of your chest, the words [italic type]contaminated[roman type] and [italic type]neutralize[roman type] coming up far too many times for comfort. Given that there are five of them in total, you don't think that it would be wise to try and test your luck against them. Deciding that it's time to get lost, you flip your head to the left and then gasp and wave one of your hands around frantically while shouting [italic type]monster[roman type]. The five soldiers instantly swing their guns in the direction you're pointing toward and start firing wildly. You quickly run away before they can realize that they've been tricked.";
	now Anxious Soldiers is resolved;


Section 3 - Mysterious Girl (by Kaleem)

Table of GameEventIDs (continued)
Object	Name
Mysterious Girl	"Mysterious Girl"

Mysterious Girl is a situation.
The sarea of Mysterious Girl is "Park".

Instead of resolving Mysterious Girl:
	say "     While taking a quick break in the park, you find yourself stumbling over a peculiar sight. Not exactly sure of what you're seeing, you gaze at a young girl lying down in slumber beside a large pine tree. This in itself wouldn't have been so mysterious were it not in fact that the female in question is surrounded by several feral wolves, all of whom were now looking at you with evil intent in their darkened eyes. Not exactly sure what's going on, you take several tentative steps back from the assembled pack of wolves, just in time to hear the girl mewl and then sneeze somewhat softly in her sleep. Most of the wolves flip their heads around to look at the (probably seventeen-year-old) human female, though you do notice that their pointed ears are still aimed in your direction. The young woman, who you just now happen to really get a better look at, seems to be almost completely human save for a few key features. With a slightly pale complexion, thin limbs for arms and legs, a pair of furry wolf ears placed neatly up onto her head, and a gothic-looking dress on, you have to wonder what's up with this bizarre girl and why she's not being instantly violated by the feral creatures sitting around her.";
	say "     Interestingly enough, your answer comes when one of the wolves, a shaggy, brown-furred thing that looks as though it hadn't seen water in days, shuffles itself up and over so that it can dip its snout under one of the female's prone hands. Said hand slowly starts to pet the beast's snout, and you feel as though there's something very [italic type]off[roman type] about this kid. When bleary eyes open with several sleepy blinks, you feel your blood freeze as crimson eyes turn to regard you with a somewhat confused look. There's just too much age and wisdom in those orbs for the girl to be human, and you quickly feel the need to leave. Swallowing thickly, you nod to the teenager, who stares at you impassively, then back away so that you can turn and run. Moving away on fast feet, you're left wonder who or what that young girl was.";
	now Mysterious Girl is resolved;


Section 4 - Fox Hunt (by Kaleem)

Table of GameEventIDs (continued)
Object	Name

Groundskeepers Cabin is a situation.
The sarea of Groundskeepers Cabin is "Park".

Instead of resolving Groundskeepers Cabin:
	say "     While traveling through the park, you come across a small, locked building set back in the vegetation. Closer investigation reveals a small sign that someone knocked over, declaring it to be one of the park buildings and for employees only. Deciding that you don't really care about the employees only rule in these circumstances, you search around the small building to try to find a way in, only to be frustrated at the way the building is locked up tight. Sighing, you are eventually forced to go on your way, but maybe you will be back to try again later.";
	now Groundskeepers Cabin is resolved;


Section 6 - Badger Sighting (by Sarokcat)

Table of GameEventIDs (continued)
Object	Name

Badger Sighting is a situation.
The sarea of Badger Sighting is "Park".

Instead of resolving Badger Sighting:
	say "     While traveling through the park, you hear a growling and snarling noise from the other side of one of the nearby bushes. Taking a careful look over the bushes, you note that one of those striped skunkbeasts seems to be threatening one of the bears wandering the park. The bear seems intimidated for some reason and is backing off slowly, which is confusing since the beast doesn't have its tail raised. In fact, on closer inspection, you realize that its coloration is slightly different, and its build is considerably stockier. It isn't until it scrapes its long claws along the ground and growls at the bear, sending it running, that you realize this is actually some kind of badger.";
	say "     After scaring the bear off, the creature begins to scent the air and look around - he must be looking for you! You recall that badgers are one of the most dangerous and possessive burrowing creatures around, and you realize that if he gets his hands on you, he likely won't let you go. You turn and flee into the park before he can track you down.";
	now Badger Sighting is resolved;


Section 7 - Empty Jeep (by Sarokcat)

Table of GameEventIDs (continued)
Object	Name

Empty Jeep is a situation.
The sarea of Empty Jeep is "Park".

Instead of resolving Empty Jeep:
	say "     While traveling through the park, you come across what is obviously a caretaker's jeep. The off-road vehicle is sitting in the middle of a grassy area with the driver-side door hanging wide open. Moving closer to investigate, you notice that a strange and powerful smell is coming from within the jeep, and you realize with a sinking feeling that whoever was inside probably got sprayed by one of those wandering skunks and been transformed into another sex-crazed beast. Sadly, you realize that whether the jeep works or not is irrelevant, as the powerful and lingering musk would probably change you into a skunk before you got very far. Sighing, you continue on your way.";
	increase the score by 1;
	now Empty Jeep is resolved;


Section 8 - Small Fire (by Sarokcat)

Table of GameEventIDs (continued)
Object	Name

Small Fire is a situation.
The sarea of Small Fire is "Park".

Instead of resolving Small Fire:
	say "     While traveling through the park, you come across an area where someone seems to have recently set a small fire. The fire is slowly burning in a pit of stones in what looks to be the start of a small campsite. Sadly, it seems like the fire has almost burned itself out, and you see no signs of whoever or whatever started the fire in the first place. Figuring that it would be best to keep moving in case the fire attracts something dangerous, you continue along your way.";
	increase the score by 1;
	now Small Fire is resolved;


Section 9 - Torn Vegetation (by Sarokcat)

Table of GameEventIDs (continued)
Object	Name

Torn Vegetation is a situation.
The sarea of Torn Vegetation is "Park".

Instead of resolving Torn Vegetation:
	say "     While traveling through the park, you come across an area where the vegetation is ripped and torn, and the ground is churned up and tossed around. You look around cautiously, but you can't see anything that could cause this level of devastation - at least not nearby. Determining that it seems safe for now, you move closer to the damaged area and try to figure out what might have happened. From what little you can tell as an inexperienced observer, there seem to be two different types of rather large claw marks, and it seems likely that two of the infected beasts ended up fighting each other here. Observing the amount of damage they made, you shudder for a minute and hurry on your way. Surviving until the rescue seems harder every day...";
	increase the score by 1;
	now Torn Vegetation is resolved;


Section 10 - Abandoned Picnic (by Sarokcat)

Table of GameEventIDs (continued)
Object	Name

Abandoned Picnic is a situation.
The sarea of Abandoned Picnic is "Park".

Instead of resolving Abandoned Picnic:
	say "     While traveling through the park, you come across a series of picnic tables set up for the casual parkgoer. Normally this wouldn't be worthy of note, but it seems like someone tried to set up a large picnic here on one of the tables fairly recently. You look around and try calling out to whoever the other person might be, but all you find are some small signs of a scuffle not far away. Sighing, you look through the remains of the picnic, and while bugs and the outdoors have gotten to much of it, you manage to find some still-sealed chips that you take with you.";
	increase carried of chips by 1;
	increase the score by 5;
	now Abandoned Picnic is resolved;


Consolidated Park Events ends here.
