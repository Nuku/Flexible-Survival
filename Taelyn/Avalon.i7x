Version 1 of Avalon by Taelyn begins here.
[Version 1.0 - New Dungeon - Taelyn]

"Adds Dungeon to Flexible Survival, entering the game from the Urban Forest."

[ Avalon Falls                                                                             ]
[                                                                                          ]

AvalonRoomConnection is a number that varies.[@Tag:NotSaved]

an everyturn rule:
	if Fall-O-the-Wisp is resolved and Resolution of Fall-O-the-Wisp > 0 and Resolution of Fall-O-the-Wisp < 99 and AvalonRoomConnection is 0:
		change the north exit of Mysterious Glade to Virgin's Pass; [connecting the location to the travel room]
		change the south exit of Virgin's Pass to Mysterious Glade; [connecting the location to the travel room]
		now AvalonRoomConnection is 1; [room connected]

Section 1 - Entrance Event

Part 1 - The Arcanologist

instead of going north from Southern Burrow Entrance while (PlayerMet of Arcanologist is false):
	move player to Mysterious Glade;
	say " 	Entering the glade, you are greeted by the sight of a human, or at least you thought he was for a moment. On closer inspection, he is indeed another infected survivor; one who is now sporting elf ears and a wolf tail. Luckily, unlike so many things, the man doesn't seem interested in fighting you in the slightest. Instead, he is on his hands and knees, looking closely at the leaves with a magnifying glass. He wears a beige button-down shirt and a pair of gray jeans; on his back is a seemingly well-equipped backpack, and you can see the corner of a book peeking out of it. The elf's tail wags slowly as he stands up and turns to you.";
	say " 	The elf notices your presence and quickly turns to face you with one hand against the knife on his belt, just in case you were intending to attack, but after a tense few moments, he relaxes. 'Hello, my friend! I hadn't expected to see another sane survivor out here,' he says with a smile. From the front, you can see that he is dashingly handsome. He has green eyes, a chiseled jaw, and his shirt is unbuttoned, showing off his lean, muscled chest and abs. He is one of those guys who is hot enough make a straight guy reconsider his sexuality. The elf adjusts his glasses, then runs his fingers through his messy hair. 'Are you looking for Avalon too?' he asks with an excited look on his face.";
	WaitLineBreak;
	say " 	Seeing your confused expression, his excitement only increases. 'Ever since the outbreak, strange tears in our reality have started appearing, and surely you've noticed, but some beings that are now in our world are able to use powers that shouldn't be possible, yet they are. Magic!' His tail wags rapidly, obviously enjoying being able to talk to someone else. 'I want to take this chance to study magic and the creatures that use it. I suppose that you could call me an... Arcanologist,' he says proudly.";
	say " 	'Anyways, I have heard rumors that one of these rifts has opened up in the old Avalon Recreational Park near here, but I can't seem to find the entrance just yet. It's taking its toll too. As you may have guessed, I have had a run in with an elf and a wolf already.' He gestures to his current form. 'But hey! At least I'm hot now!' He adjusts his pack and gives you a winning smile. 'Well, my friend, we should part ways for now. Perhaps next time we meet, it will be in a land of magic!' With that, the Arcanologist leaves the glade, likely to go set up camp or look elsewhere. You can't help but wonder if he was right though. Could there really be an entrance into this, Avalon, within this glade?";
	now PlayerMet of Arcanologist is true;

Part 2 - Avalon Entrance

Table of GameEventIDs (continued)
Object	Name
Fall-O-the-Wisp	"fallothewisp"

Fall-O-the-Wisp is a situation.
The sarea of Fall-O-the-Wisp is "Nowhere".

when play begins:
	add Fall-O-the-Wisp to badspots of girl;
	add Fall-O-the-Wisp to badspots of guy;
	add Fall-O-the-Wisp to badspots of furry;

instead of resolving Fall-O-the-Wisp:
	WispFollow;

to WispFollow:
	say "     As you examine the Runestone, a glimmer of blue light catches your eye, but when you look in that direction, you find nothing. You wonder if your mind is playing tricks on you before returning to what you were doing, only to find a glowing orb of soft blue light staring back at you - or at least you think it is. Two brighter spots of light within it appear to be eyes and even blink at you. How such a thing could even exist is beyond you. The blue wisp makes a gentle whirring noise before floating back towards the edge of the glade, almost as if it is beckoning you to follow it.";
	Linebreak;
	say "     [bold type]Question?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Follow the strange creature.";
	say "     [link](2)[as]2[end link] - Leave it be for now.";
	say "     [link](3)[as]3[end link] - This seems fishy to you. Better leave and never come back.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to A, [link]2[end link] to B or [link]3[end link] to C.";
	if calcnumber is 1:
		LineBreak;
		say "     You hesitate to pursue a mysterious glowing spirit, but your curiosity wins out in the end, so despite your better judgment, you push forward and leave the glade behind.";
		WaitLineBreak;
		say "     The wisp leads you through the dense brush, pushing past branches as twigs snap beneath your feet, but progress is slow. The wisp speeds up, and you do your best to keep it in your sights, but despite your best efforts, it vanishes from your view just beyond some bushes. In one last desperate attempt to find your luminescent guide, you rush forward, only to trip on a stray root before tumbling down an incline. Coming to a sudden halt, you wait a moment for the world to stop spinning before slowly righting yourself, only to get an eyeful of something that you did not expect you would ever be presented with.";
		say "     In front of you is a feral unicorn, balls deep in what looks to be a deer-taur girl pressed against a stone table, who seems to be greatly enjoying the experience, if her breathy moans are anything to judge by. As if the sight isn't strange enough, a small, red, anthro lizard seems to be sitting on a rock, watching the two while munching on a bag of popcorn. All three stop briefly as they notice you, but quickly resume their activities, your presence being of little bother to them.";
		Linebreak;
		say "     What will you do? You can wait for the two lovers and their voyeur to finish, or try to interfere, which will likely upset them to no small degree.";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Enjoy the show.";
		say "     ([link]N[as]n[end link]) - Crash the party.";
		if player consents:[Watch]
			LineBreak;
			say "     Not wanting to risk interrupting or upsetting the fantastical lovers or their onlooker, you decide that it is for the best to wait the whole situation out. The cervitaur girl's human-like torso is pressed against the smooth stone as she holds tightly to the chains bolted to the side of the table to steady herself. Her [']stallion['] has speared himself deep into her arousal-slickened cunt, rocking her whole body forwards as she moans. The unicorn is no gentleman though, and as soon as he is in, he pulls out, only to slam back into her with a wet slap as their hips press together. The two continue, the girl letting out sounds of pleasure each time he sinks into her depths just right.";
			say "     The unicorn rams deep into the cervitaur a few more times before letting out a majestic whinny in triumph. His [']doe['] cries out joyfully as her belly bulges impressively with a large load of magical pony jizz. The two are left panting as the lizard creature, now bored with the show, finishes off the last of its snack before tossing the bag to the ground and wandering off. It isn't long after that the unicorn pulls out of the girl, heading into the forest on his own. Lastly, the cervitaur looks toward you, blushing a little before bounding away as well, leaving you alone to ponder what you had just witnessed and where you now are.";
			LineBreak;
			say " 	It seems that you have found the magic land of [bold type]Avalon[roman type]. Who knows what you will find in a land of fantasy?";
			wait for any key;
			move player to Virgin's Pass;
			now Resolution of Fall-O-the-Wisp is 1; [watched]
		else:[Fight]
			LineBreak;
			say "     The lizard watches you from his rock as you approach the two, giving you a look that says 'not a good idea'. Ignoring him, you approach the pair. The deer lady is too lost in the moment to notice you, but her stallion mate turns towards you, nostrils flaring as he pulls out of the girl. 'What?' she squeaks now that she is no longer being fucked, but upon seeing you and the unicorn's aggressive stare, she huffs and bounds off down the road.";
			say "     The unicorn's feet dig into the dirt, its horn lowers, the lizard munches popcorn excitedly!";
			now inasituation is true;
			challenge "Feral Unicorn";
			now inasituation is false;
			if fightoutcome >= 10 and fightoutcome <= 19:[won]
				say "     With the unicorn defeated, the small red lizard jumps up and cheer excitedly. Before you know what is happening, the reptile shoves a bag of chips into your arms, apparently having an extra bag with him. 'That was awesome!' he says in a higher pitched, slightly raspy voice. 'Come join us Kobolds. We're much more fun than those heroes, and I think that our master will like you a lot.' With that, the Kobold runs up the north road. You think to yourself how strange this place is as you look around.";
				LineBreak;
				say "     It seems that you have found the magic land of [bold type]Avalon[roman type]. Who knows what you will find in a land of fantasy?";
				increase carried of chips by 1;
				wait for any key;
				move player to Virgin's Pass;
				now Resolution of Fall-O-the-Wisp is 2; [fought+won]
			else if fightoutcome >= 20 and fightoutcome <= 29:[lost]
				say "     With his rival defeated, the unicorn rears up and whinnies in victory. He takes a look at you one last time, then sniffs at the air before heading off in the same direction the deer-taur had gone. Seems he is more interested in finishing his session with her than he was with doing anything with you.";
				say "     The red reptile gives off a little raspy giggle before giving you a thumbs up, standing, and walking out of view, leaving you to clean yourself up and recover before you can move on.";
				LineBreak;
				say "     It seems that you have found the magic land of [bold type]Avalon[roman type]. Who knows what you will find in a land of fantasy?";
				wait for any key;
				move player to Virgin's Pass;
				now Resolution of Fall-O-the-Wisp is 3; [fought+lost]
			else if fightoutcome is 30: [fled]
				say "You realize that it was a horrible mistake to try to mess with a unicorn's business, and you book-it out of there, running up the North road which was the only path available to you as you hear the laughter of the lizard behind you, seemingly amused by the events. The dirt road leads you through the tees until you come upon an intersection, at last letting you rest and ponder this experience as well as where you now are.";
				LineBreak;
				say "     It seems that you have found the magic land of [bold type]Avalon[roman type]. Who knows what you will find in a land of fantasy?";
				wait for any key;
				now Avalon-Crossroads is known;
				move player to Avalon-Crossroads;
				now Resolution of Fall-O-the-Wisp is 4;
			move Runestone to NPC Nexus;
			change the north exit of Mysterious Glade to Virgin's Pass; [connecting the location to the travel room]
			change the south exit of Virgin's Pass to Mysterious Glade; [connecting the location to the travel room]
			now Fall-O-the-Wisp is resolved;
	else if calcnumber is 2:
		LineBreak;
		say "     Following strange, glowing forest-spirits seems like a good way to get yourself cursed or killed. Turning the other way, you leave the wisp behind, though you can't help but wonder where it would have lead you.";
		now Resolution of Fall-O-the-Wisp is 99; [postponed]
	else:
		LineBreak;
		say "     Choosing this option will prevent access to a lot of content. Are you sure?";
		say "     ([link]Y[as]y[end link]) - Yes, I don't want the content.";
		say "     ([link]N[as]n[end link]) - No, let me have a chance to try again later.";
		if player consents:
			say "     Following strange, glowing forest-spirits seems like a good way to get yourself cursed or killed. Turning the other way, you leave the wisp behind, wanting nothing to do with it.";
			now Fall-O-the-Wisp is resolved;
			move Runestone to NPC Nexus;
			now Resolution of Fall-O-the-Wisp is 100; [rejected]
		else:
			say "     Following strange, glowing forest-spirits seems like a good way to get yourself cursed or killed. Turning the other way, you leave the wisp behind, though you can't help but wonder where it would have lead you.";
			now Resolution of Fall-O-the-Wisp is 99; [postponed]

Section 2 - Rooms

Part 1 - Mysterious Glade

Table of GameRoomIDs (continued)
Object	Name
Mysterious Glade	"Mysterious Glade"

Mysterious Glade is a room.
Mysterious Glade is north of Southern Burrow Entrance.
The description of Mysterious Glade is "[MysteriousGlade desc]".
The earea of Mysterious Glade is "Forest".

to say MysteriousGlade desc:
	say "     The deeper you travel into the forest, the more difficult it becomes to recognize what your surroundings used to be. Streets and sidewalks have crumbled into dirt, and thick grass has sprouted from the new soil. The further you walk, the more degraded the houses become. Following what seems to be a footpath, you eventually come to a glade. It is difficult to tell, but it seems like it could have originally been a cul-de-sac of some sort, now a small clearing within the dense woods. Thin streams of light manage to cut through the canopy, letting in just enough light to give the glade an almost storybook appearance.";
	LineBreak;
	say "[bold type]South[roman type] of you is the Southern Burrow Entrance.";
	if Fall-O-the-Wisp is resolved:
		LineBreak;
		say "[bold type]North[roman type] of you is the hidden entrance to Virgin's Pass in Avalon.";

[Runestone starts here]
Table of GameCharacterIDs (continued)
object	name
Runestone	"Runestone"

Runestone is a man.
Runestone is in Mysterious Glade.
The description of Runestone is "     A small disk-shaped stone with strange markings sits on the ground, covered by the grass. It would have been easy to miss if you were looking in the wrong place. Maybe you should [bold type]inspect[roman type] the runestone further?".
the linkaction of Runestone is "Possible Actions: [link]inspect[as]Inspect Runestone[end link][line break]".

[Defining actions possible relating to the Runestone]
InspectRunestone is an action applying to nothing.

[Start Runestone understand]
understand "Inspect Runestone" as InspectRunestone.
understand "Inspect Stone" as InspectRunestone.

check InspectRunestone:
	if Runestone is not visible, say "You don't see anything like that here." instead;
	if Fall-O-the-Wisp is inactive, say "Sadly, this content has been removed by your block settings that removed girl/guy/furry content from the game." instead;

[Runestone action]
carry out InspectRunestone:
	WispFollow;


Part 2 - Virgin's Pass

Table of GameRoomIDs (continued)
Object	Name
Virgin's Pass	"Virgin's Pass"

Virgin's Pass is a room.
The description of Virgin's Pass is "[VirginsPass desc]".

to say VirginsPass desc:
	say "     A long dirt road stretches out from North to South with heavy stones and thick brush on the eastern side, while on the western side, what looks like a stone table stands ominously with shackles chained onto its sides. A wooden sign is posted next to it that reads 'Bind the sullied maiden to the alter and the unicorns will come to restore their purity.'";
	LineBreak;
	say "     To the [bold type]North[roman type] the road extends into the distance. A wooden directional sign pointing that way says, 'The Crossroads'.";
	LineBreak;
	say "     The path [bold type]South[roman type] of you is faint and leads uphill, through some brush and towards the Mysterious Glade.";[Could add a chance to hurt yourself because of rough terrain]

Part 3 - Avalon Crossroads

Table of GameRoomIDs (continued)
Object	Name
Avalon-Crossroads	"Avalon-Crossroads"

Avalon-Crossroads is a room.
Avalon-Crossroads is fasttravel.
Avalon-Crossroads is private.
Avalon-Crossroads is north of Virgin's Pass.
The description of Avalon-Crossroads is "[AvCrossroads desc]".

to say AvCrossroads desc:
	say "     You find yourself in a clearing at the center of the forest where the North-South, and East-West roads meet. The area is clearly used for more than passing though as there are clear evidence of burned out campfires, broken wagon wheels, and other useless junk here and there, suggesting that the Crossroads is used as a place to camp, trade, and meet up. At one corner, a wooden sign shows where each road leads.";
	say "[bold type](Note: North, West, and Eastern Paths are all a work in progress and will become available once finished)[roman type]";[Remove once areas are available]
	LineBreak;
	LineBreak;
	say "[bold type]-[roman type]Up the [bold type]North[roman type] road lead to the Castle.";
	LineBreak;
	say "[bold type]-[roman type]Going down the [bold type]South[roman type] road would bring you to Virgin's Pass.";
	LineBreak;
	say "[bold type]-[roman type]The [bold type]West[roman type] road heads into Knightwood.";
	LineBreak;
	say "[bold type]-[roman type]The part of the sign pointing [bold type]East[roman type] looks like it used to say something else, but has been vandalized to say, '[bold type]Kobolds!!![roman type]' in shoddy, knife-carved text.";

Section 3 - Random Encounters

An everyturn rule:
	if (player is in Virgin's Pass or player is in Avalon-Crossroads) and a random chance of 1 in 3 succeeds:
		let randomnumber be a random number from 1 to 1;
		if randomnumber is:
			-- 1:
				challenge "Feral Unicorn";
[			-- 2:
				[]
			-- 3:
				[]
			-- 4:
				[]
			-- 5:
				]

Avalon ends here.
