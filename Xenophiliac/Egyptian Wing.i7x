Version 1 of Egyptian Wing by Xenophiliac begins here.

"Adds a NPC and NPC area to Flexible Survival's Wandering Monster table."



Section 1 - Events

Egyptian Wing is a situation. The level of Egyptian Wing is 10.
The sarea of Egyptian Wing is "Museum".

Instead of Resolving a Egyptian Wing:
	say "     Exploring the halls of the city's museum, you're amazed at the sheer amount of archaic objects on display; artifacts and relics from across the globe are here, objects from different times in humanity's lifetime proudly presented throughout the hallways of the Museum. Haphazardly choosing a corridor to follow, you continue to be astounded by the insane amount of history and knowledge present, learning so much in your brief jaunts through the labyrinthine passages. So enraptured by the exhibits within, you almost barge straight into an information sigh standing in the middle of the corridor, barely preventing yourself from bashing yourself against it. Glaring irritatedly at the offending signpost, you take a second to read the notice, wondering what's so important that someone left it in the middle of the hallway. Displayed in bold lettering across the paper tacked to the signpost is:";
	say "[line break]";
	say "     [bold type]   The Egyptian Wing[roman type]";
	say "[line break]";
	say "     [bold type]Come see the wonders[roman type]";
	say "[line break]";
	say "     [bold type]    of Ancient Egypt![roman type]";
	say "[line break]";
	say "[WaitLineBreak]";
	say "     You recall that this is where Valerie said that she was in when the nanite outbreak began; you can only begin to imagine what wonders await you in the exhibits ahead. Grabbing your map, you mark down the location of the Egyptian Wing; you don't want to forget how to get here.";
	move player to Egypt Wing Entrance;
	now Egypt Wing Entrance is known;
	now Egyptian Wing is resolved;

[Jade Scarab event located in Sarokcat's Consolidated Museum file]

Finding Winged Orb is a situation. Finding Winged Orb is resolved.
The sarea of Finding Winged Orb is "Park".

instead of resolving Finding Winged Orb:
	say "     Walking through what used to be the city park, you're struck by how much the park has changed. The trees haven't been trimmed in forever, grass is now overrunning the sidewalks; the park is not in a good state. An unfamiliar gling catches your eye as you contemplate the park, however, glimmering out from a nearby tree. Carefully looking around, you check to make sure no one is nearby; seeing no creatures present, you carefully approach the tree, wondering what could be shining so brightly.";
	say "     You eventually come to the tree that's so brightly shining, still on the lookout for any sex-crazed creatures. Finally glimpsing the object stuck in the tree, surprise soon overwhelms you at what lies buried within it. An elegant, ornate emblem protrudes from the majestic tree, somehow partially buried in the trunk. From the glances you can see, it looks as if the emblem resembles the carving on Amuran's sarcophagus; a circle with two majestic wings protruding from its sides. This has to be one of Amuran's sigils, somehow buried partially within the tree. Taking a large breath and steeling yourself for what you have to do, you grab onto a thick branch and begin to climb the tree; the artifact is only a few feet up.";
	let bonus be ((dexterity of player minus 10) divided by 2);
	let dice be ( a random number from 1 to 20);
	say "     You roll 1d20 ([dice]) + ([bonus]) versus 14 - You scored [dice plus bonus] in a dexterity check.";
	if dice + bonus >= 14:
		say "     Easily able to shimmy yourself up the tree, you find yourself faced with the shining emblem, still buried within the tree. Gripping the emblem with both of your hands and giving the emblem a hard pull, your strength wins out and without a sound, the sigil comes free, shining brightly in the [if daytimer is day]daytime air[otherwise]nighttime air[end if]. Getting a much better look at the sigil, it's definitely an exact representation of the carving on Amuran's sarcophagus; a circle, most likely a representation of the sun, flanked on both sides by large feathered wings. Holding this emblem in your hands, you soon feel raw [']Power['] running through you; if this is any indication as to what power Amuran has, it must be incredible. Storing the sigil in your backpack, you quickly climb down, preparing to continue on your way.";
		increase carried of winged sun by 1;
		now Finding Winged Orb is resolved;
	otherwise:
		say "     Doing your best to climb up, you find yourself having trouble scaling the massive tree. Eventually, however, you're able to drag yourself to where the emblem is, still sticking out from the trunk of the tree. Resting on the thick branch you climbed up to, you grab the emblem and pull with all your might. With a quick release, you yank out the sigil; however, the sudden movements unbalance you, and you tumble swiftly to the earth below. A loud [']THUD['] signifies you hitting the ground, a low, pained groan escaping you as you lay there, recovering yourself. You push yourself up after a few moments, your entire body sore after the fall you've just experienced. Glancing up, it seems that your fall has also attracted a local creature!";
		fight;
		if lost is 1:
			say "     Exhausted, sticky, and lying on the ground after your recent defeat, you're at least content that you were able to keep the emblem hidden. Heaving yourself up, you do your best to recover and head out, reminding yourself to give the emblem to Amuran.";
			increase carried of winged sun by 1;
			now Finding Winged Orb is resolved;
		otherwise:
			say "     Exhausted after your battle, you're still happy that you were able to find one of the sigils that Amuran needs. Hoisting yourself up, you ready yourself to continue, remembering to deliver the emblem to the divine servant.";
			increase carried of winged sun by 1;
			now Finding Winged Orb is resolved;

Section 2 - Areas and Rooms

Egypt Wing Entrance is a room. it is fasttravel. it is private.
Egyptian Wing Foyer is a room.
Mythical Murals is a room.
Golden Doors is a room.
Temple of Set is a room.
Sanctum of Horus is a room.

[Egypt Wing Entrance]
The description of Egypt Wing Entrance is "[EgyptWingEntrDesc]".

to say EgyptWingEntrDesc:
	say "     Streching out before your gaze is the Egyptian exhibit of the city's museum. While much of this exhibit is crumbling or destroyed as a result of recent events, the areas that are unscathed provide an incredible amount of awe and wonder. The unbroken glass cases ahead of you hold gold jewelry and ancient tablets, while displays of archaic pottery contend to the craftsmaship of the ancient Egyptians. Looking forward, you see that a large foyer is ahead, providing access to the rest of the intact wing.";
instead of sniffing Egypt Wing Entrance:
	say "     The scent of the museum has not changed much, but you do detect a faint hint of dry desert air.";

North of Egypt Wing Entrance is Egyptian Wing Foyer.

[Egyptian Wing Foyer]
The description of Egyptian Wing Foyer is "[EgyptWingFoyerDesc]".

to say EgyptWingFoyerDesc: [East passage left for possible further expansions]
	say "     This section of the museum wing serves as the foyer of the Egyptian exhibits. Paintings and tapestries hang along the wall, depicting stories, gods and peoples long forgotten. A few glass cases still remain unbroken, displaying simple artifacts with little seeable value. Pieces of broken glass and pottery line the floor, the current occupants of the Museum obviously not concerned with historical preservation. To the east lied a passage further into the Egyptian Wing, but a recent collapse has blocked off that hallway. Further ahead, what looks to be some sort of large artifact lies in the passage ahead, heavily peaking your curiosity. Lastly, westward lies a very plain room, bare of glass displays or other artifacts.";

instead of sniffing Egyptian Wing Foyer:
	say "     The smell of dry, barren air is much stronger here, having rapidly replaced the smell of the museum behind you.";

North of Egyptian Wing Foyer is Golden Doors.
South of Egyptian Wing Foyer is Egypt Wing Entrance.
East of Egyptian Wing Foyer is Mythical Murals.

[Mythical Mural]
The description of Mythical Murals is "[MythicalMuralDesc]".

to say MythicalMuralDesc:
	say "     Thinking that this room was barren, you're astounded as you enter this place; your previous observation was entirely mistaken. Lining the walls of this room are gargantuan murals, preserved almost perfectly in thick glass cases. Scenes and people unknown to you are depicted beautifully on the hardy papyrus rolls, spelling out some of the myths and beliefs of the long-dead Egyptians. Looking across them, you're able to see that there are three separate canvases present, one on each wall. You consider trying to [bold type]analyze[roman type] the large [bold type]murals[roman type], to see if you're able to decipher what they are portraying.";

instead of sniffing Mythical Murals:
	say "     This room smells overwhelmingly of dust and aged paper, bringing your thoughts back to old paperbacks you used to have.";

West of Mythical Murals is Egyptian Wing Foyer.

EgyptMuralExamine is an action applying to nothing.

understand "analyze mural" as EgyptMuralExamine.
understand "analyze murals" as EgyptMuralExamine.

check EgyptMuralExamine:
	if player is not in Mythical Murals, say "     There are no murals to examine here." instead; [works?]

carry out EgyptMuralExamine:
	if intelligence of player > 15:
		say "    Deciding that trying to learn what these murals are depicting would be something to do, you approach the murals and put your mind to the task of deciphering the painting.";
		say "    The northern mural, most likely being the first in the set, is your first target. Looking over it, the left of the massive painting is taken up by a large man sitting on a throne, staring regally ahead. You immediately recognize the seated man as Osiris, the Egyptian god of the dead; both the husband of Isis and the father of Horus. Dressed in exquiside, regal garb and wearing a magnificent crown, he is portrayed as the pharaoh of Egypt and the benefactor of the Egyptian people. Strangely enough, instead of illustrated with green skin, signifying his death, Osiris is instead depicted as a living man, not yet having met his fate.";
		say "     On the other side of this mural, under the watchful gaze of Osiris, the people of Egypt bow before their rightful pharaoh. Men, women, and children kneel down in front of his throne, giving themselves over to the rule of Osiris. This mural is obviously depicting the time when Osiris was the ruling pharaoh of Egypt, bringing forward an age of prosperity for the empire of the Nile.";
		say "[WaitLineBreak]";
		say "     Walking over to the eastern mural, you find this one much less jovial. Two men are displayed on the left side of the mural, one of them Osiris, pharaoh of Egypt. The other man, standing behind Osiris, can only be Set, the god of violence and chaos. Tricking Osiris into getting into a wooden box, Set seals Osiris within it, filling the box with lead and throwing it into the Nile. Set brutally ends the reigh of Osiris, Set's jealousy having proven the victor.";
		say "     Searching throughout Egypt, Isis, the husband of Osiris, hunted for his corpse; she finally founds it embedded within a wooden pillar within a palace along the Phoenician coast. Removing the coffin of her husband, she finds Osiris dead, Set's violent methods having killed the king of Egypt. Reciting a spell of revival, Isis brings Osiris' body to life, with the subsequent intimate relations resulting in Isis' insemination. Her spell soon wears off, and Osiris once again dies.";
		say "     Continuing the story on the right side of this mural, you see Isis hiding Osiris' body somewhere in Egypt, away from the wrathful vengeance of Set. Retreating herself into the desert, she soon births a son; Horus, lord of the sky. Set, having found out what Isis had done, hunts throughout Egypt for her and her son. Stumbling upon the body of Osiris, Set flies into a vengeful rage and tears his body into pieces, scattering them across Egypt.";
		say "[WaitLineBreak]";
		say "     Wandering over to the final mural, you can tell that the finale is still before you. Already having raised Horus to adulthood, Isis once again travels through Egypt, collecting the dismembered parts of her husband. Reconstructing Osiris' body and mummifying him, Isis prepares Osiris for the traditional burial of the Egyptian people. Watching her dedication to Osiris, the rest of the Egyptian pantheon admires her love of Osiris; together, the pantheon resurrects Osiris, who thusly becomes the undead god of the underworld.";
		say "      The end of the mural illustrates the conclusion of the conflict between Osiris' family and Set. Horus, having grown to manhood, goes forward to fight Set. The two of them fight, their blades crossing rapidly and violently. Eventually, Horus gains the upper hand, and soon overtakes Set, besting him in combat. Having beaten his enemy in combat, Horus avenges his father and takes over rulership of Egypt.";
		say "     You come out of your thoughtful stupor, having finished deciphering the giant scrolls hanging from the walls. Your mind occupied in contemplation of the story you just read, you stand there a few more moments, your thoughts wandering through the knowledge of Egypt you possess. Soon enough, you figure that you should continue your exploration; there may be more things to learn of that residing within these halls.";
	otherwise:
		say "     Putting your mind to the task of deciphering these paintings, you use all of your knowledge to try and figure out what these walls say. However, despite all of your thought, you are unable to make any progress on finding what these murals say. Sighing to yourself, you decide that it may be best to come back later, when you've learned more.";

[Golden Doors]
The description of Golden Doors is "[GoldenDoorsDesc]".

EgyptianRiddle is a number that varies.
MenuRiddleNumber is a number that varies.
calcnumber is a number that varies.
LastRiddle is a number that varies.

to say GoldenDoorsDesc:
	say "     The most striking thing about this room is the enormous set of doors in front of you. [if EgyptianRiddle is 2]These doors used to be closed, but using your intellect, you were able to best the riddle and open the doors[otherwise]Made out of what appears to be solid gold, these grandiose doors bar the way into the room ahead, whatever that may be. Quickly surmising that this was probably not built with the museum structure, your mind flies as you contemplate what could be hidden behind them[end if]. Less promenent is a path westward, leading into a shadowy room, lit only by torchlight.";
instead of sniffing Golden Doors:
	say "     This room smells quite similar to the rest of the Egyptian Wing, albeit with a tinge of metal to it.";

North of Golden Doors is Sanctum of Horus.
South of Golden Doors is Egyptian Wing Foyer.
West of Golden Doors is Temple of Set.

instead of going north from Golden Doors while EgyptianRiddle is 0: [add cycling riddles?]
	say "     Approaching the solid metal doors in front of you, you look around for some sort of way to open the doors. Even with all of your detective prowess, however, there seems to be no way to open the gigantic doors. No levers, no buttons; not even a door handle. These doors seem to be standing here permanently, keeping everything out; or keeping something in. Deciding as one last-ditch effort to try and push the doors, you put all your might forward to open these great doors. Your efforts prove fruitless, however; even though you thought nothing would happen, you figure it was worth a shot. Stepping back and taking a discouraged look at the imposing portals, you're quite shocked when [']something['] begins to appear on the golden doorways, rapidly etching itself into the solid metal slabs.";
	say "     Stepping closer, you can see that something, or someone, is writing directly into the doorways. It takes a few moments for the writing to cease, and you wait with bated breath the entire time. Left in the metal of the door is a paragraph of text, spelling out a passage; strangely enough, it's in English, legible to you. Reading through the text, it seems that it's a riddle! It reads:";
	say "[line break]";
	say "[WaitLineBreak]";
	say "    I view the world in little space,";
	say "[line break]";
	say "      Am always changing place;";
	say "[line break]";
	say "  No food I eat, but by my power,";
	say "[line break]";
	say " Procure what millions do devour.";
	say "[line break]";
	now MenuRiddleNumber is 0;
	now LastRiddle is 8;
	now calcnumber is -1;
	while MenuRiddleNumber is 0:
		say "You're able to think of a few answers off the top of your head:";
		say "[line break]";
		say "(0) [link]Take a guess[as]0[end link][line break]";
		say "(1) [link]Rain[as]1[end link][line break]";
		say "(2) [link]Electricity[as]2[end link][line break]";
		say "(3) [link]The Sun[as]3[end link][line break]";
		say "(4) [link]Soil[as]4[end link][line break]";
		while 1 is 1:
			say "Choice? (0-4)> [run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= 4:
				break;
			otherwise:
				say "Invalid Number. Try Again.";
		if calcnumber is 0:
			say "     Deciding to take a wild guess, you mull over the riddle in your head and say out loud the first thing that comes to your mind.";
			let bonus be ((intelligence of player minus 10) divided by 2);
			let dice be ( a random number from 1 to 20);
			say "     You roll 1d20 ([dice]) + ([bonus]) versus 22 - You scored [dice plus bonus] in an intelligence check.";
			if dice + bonus >= 22:
				say "     Incredibly enough, the first thing that comes to your mind is the correct answer. As you yell aloud [']The Sun['], the great golden doors in front of you let out a massive metal groan, beginning to slowly creak open in a cacophony of noise. After a few agonizingly slow moments, the doors slam against the inside walls, opening the way forward.";
				now EgyptianRiddle is 2;
				now MenuRiddleNumber is 1;
			otherwise:
				say "     Unsurprisingly, the answer you come up with proves to be incorrect. Yelling it aloud does nothing, your voice echoing throughout the halls loudly. The etched wording on the doors flutters and disappears, leaving behind the smooth golden barricades which are so rudely blocking your way. Trying to reactivate the riddle also seems to be fruitless; the wording does not appear despite your best effort. It seems that you'll have to wait some time to try again.";
				now LastRiddle is 1;
				now EgyptianRiddle is 1;
				now MenuRiddleNumber is 1;
		otherwise if calcnumber is 3:
			say "     Choosing [']The Sun['] as your answer, you say it out loud to the imposing doors. Surprisingly, you hear something shift behind them, and in just a few seconds, the doors begin to unseal. Soon after, the solid metal slabs slam against the wall, now open and revealing the way in.";
			now EgyptianRiddle is 2;
			now MenuRiddleNumber is 1;
		otherwise:
			say "     Saying your chosen answer, it seems that it's incorrect. The etched lettering on the metal doors shimmers and disappears, leaving behind the smooth golden doors. Doing your best to get the riddle back seems to be for naught; the words do not reappear. You may have to wait some time to attempt the riddle again.";
			now EgyptianRiddle is 1;
			now LastRiddle is 1;
			now MenuRiddleNumber is 1;

instead of going north from Golden Doors while LastRiddle < 9 and EgyptianRiddle is 1:
	say "     Trying to activate the riddle is not working; it seems that you'll have to wait for some time.";

instead of going north from Golden Doors while EgyptianRiddle is 1:
	say "     Wanting to take another shot at solving the mysterious riddle, you approach the foreboding doors and wait. Soon enough, the familiar etching of the puzzle appears. Seeing that it has not changed, the riddle still reads:";
	say "[line break]";
	say "[WaitLineBreak]";
	say "    I view the world in little space,";
	say "[line break]";
	say "      Am always changing place;";
	say "[line break]";
	say "  No food I eat, but by my power,";
	say "[line break]";
	say " Procure what millions do devour.";
	say "[line break]";
	now MenuRiddleNumber is 0;
	now LastRiddle is 8;
	now calcnumber is -1;
	while MenuRiddleNumber is 0:
		say "You're able to think of a few answers off the top of your head:";
		say "[line break]";
		say "(0) [link]Take a guess[as]0[end link][line break]";
		say "(1) [link]Rain[as]1[end link][line break]";
		say "(2) [link]Electricity[as]2[end link][line break]";
		say "(3) [link]The Sun[as]3[end link][line break]";
		say "(4) [link]Soil[as]4[end link][line break]";
		while 1 is 1:
			say "Choice? (0-4)> [run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= 4:
				break;
			otherwise:
				say "Invalid Number. Try Again.";
		if calcnumber is 0:
			say "     Deciding to take a wild guess, you mull over the riddle in your head and say out loud the first thing that comes to your mind.";
			let bonus be ((intelligence of player minus 10) divided by 2);
			let dice be ( a random number from 1 to 20);
			say "     You roll 1d20 ([dice]) + ([bonus]) versus 22 - You scored [dice plus bonus] in an intelligence check.";
			if dice + bonus >= 22:
				say "     Incredibly enough, the first thing that comes to your mind is the correct answer. As you yell aloud [']The Sun['], the great golden doors in front of you let out a massive metal groan, beginning to slowly creak open in a cacophony of noise. After a few agonizingly slow moments, the doors slam against the inside walls, opening the way forward.";
				now EgyptianRiddle is 2;
				now MenuRiddleNumber is 1;
			otherwise:
				say "     Unsurprisingly, the answer you come up with proves to be incorrect. Yelling it aloud does nothing, your voice echoing throughout the halls loudly. The etched wording on the doors flutters and disappears, leaving behind the smooth golden barricades which are so rudely blocking your way. Trying to reactivate the riddle also seems to be fruitless; the wording does not appear despite your best effort. It seems that you'll have to wait some time to try again.";
				now LastRiddle is 1;
				now MenuRiddleNumber is 1;
		otherwise if calcnumber is 3:
			say "     Choosing [']The Sun['] as your answer, you say it out loud to the imposing doors. Surprisingly, you hear something shift behind them, and in just a few seconds, the doors begin to unseal. Soon after, the solid metal slabs slam against the wall, now open and revealing the way in.";
			now EgyptianRiddle is 2;
			now MenuRiddleNumber is 1;
		otherwise:
			say "     Saying your chosen answer, it seems that it's incorrect. The etched lettering on the metal doors shimmers and disappears, leaving behind the smooth golden doors. Doing your best to get the riddle back seems to be for naught; the words do not reappear. You may have to wait some time to attempt the riddle again.";
			now LastRiddle is 1;
			now MenuRiddleNumber is 1;

An everyturn rule:
	if LastRiddle > 0:
		if LastRiddle < 9, increase LastRiddle by 1;

instead of going west from Golden Doors while SethTempleNumber is 1:
	say "     A large stone door blocks your path forward; the temple has been sealed by a force unknown.";

[Temple of Set]
The description of Temple of Set is "[TempleOfSetDesc]".

to say TempleOfSetDesc:
	say "     Walking into the inky shadow of this room, you squint your eyes as you examine the room, trying your best to work out what's in here. The only light you have are from lit torches along the wall, shining low light throughout the strange alcove. As your eyes slowly adjust to the darkness, a large statue exposes itself to you, standing watchfully in the back of the room. [if intelligence of player > 15]You immediately recognize this as a statue of Set, Egyptian lord of chaos[otherwise]You don't know the significance of the statue, but you feel very intimidated by it[end if]. Build in front of the imposing statue is a simple stone altar, a few lines of heiroglyphics lining the sides of the table. On each side of the altar lie sizable stone statues; Jackal-headed guards watch over the shrine, holding deadly metal blades.";
	say "     Finally drawing your eyes to what lies on the altar, you barely contain a gasp as the item lying there. An exquisite golden sword lies on the altar, torchlight glinting off of the exquisite blade. It would take almost no effort to [bold type]pick up[roman type] the[bold type] antique sword[roman type] off of the altar.";
instead of sniffing Temple of Set:
	say "     You're unable to pin down the smell of this room; you think it's constantly changing.";

East of Temple of Set is Golden Doors.

SethTempleNumber is a number that varies.
SwordOfSeth is an action applying to nothing.

check SwordOfSeth:
	if player is not in Temple of Set, say "     What sword?" instead;

understand "pick up antique sword" as SwordOfSeth.
understand "pick up sword" as SwordOfSeth.
understand "pick up" as SwordOfSeth.

carry out SwordOfSeth:
	say "     Taking a deep breath and dashing forward, you grasp the sword lying on the altar. Instantly, the torchlight dims to a dark red and you get the overwhelming feeling that you just did something incredibly [italic type]bad[roman type]. Sprinting towards the door, you almost run face-first into something blocking your path; a mass of stone now blocks your way. You quickly realize that the stone guardians have somehow animated, both of the beasts blocking your way out.";
	challenge "Jackal Guard";
	if lost is 1:
		say "     Thoroughly destroyed by the Jackal guardians, you're forced to relinquish the sword while barely keeping your life. A thick stone door seals the temple, blocking your passage in.";
		now SethTempleNumber is 1;
		move player to Golden Doors;
	challenge "Jackal Guard";
	if lost is 1:
		say "     Thoroughly destroyed by the Jackal guardians, you're forced to relinquish the sword while barely keeping your life. A thick stone door seals the temple, blocking your passage in.";
		now SethTempleNumber is 1;
		move player to Golden Doors;
	otherwise:
		say "     Having vanquished the stone guardians and claimed the ancient sword, you leave the temple as a massive stone door seals it behind you. You're shocked at the sudden thump of the closing door, and you can only wonder if you've earned the ire of a powerful being...";
		increase carried of ancient blade by 1;
		now SethTempleNumber is 1;
		move player to Golden Doors;

[Sanctum of Horus]
The description of Sanctum of Horus is "[SanctumOfHorusDesc]";

AmuranAwoken is a number that varies.

to say SanctumofHorusDesc:
	say "     Walking past the golden doors into the room beyond, the most noticeable object in this room is a large, golden sarcophagus, standing [if AmuranAwoken is 0]closed[otherwise]open[end if] against the northern wall. Rays of light shine down from cracks in the ceiling, beams bouncing around the room and brightening the sanctum with sunlight. Colorful, vivid paintings span the walls of this entire room, people and places sacred to Egyptian mythology depicted in incredible detail. A circular pool of fresh, clean water sits directly in the center of this room; how the pool is being maintained, you're not entirely sure. Surrounding this pool of water is a large, stone rim, easily large enough to sit or lay comfortably.";
	if AmuranAwoken is 0:
		say "     Approaching the sarcophagus centered against the northern wall, you're surprised that the golden coffin is not covered in hieroglyphics; instead, there are only two large symbols engraved in the solid funerary box. The first symbol lies on the upper half of the sarcophagus; it consists of a simple circle with feathered wings extending from its sides. The symbol below it looks to be an insect of some sort; a beetle, if you had to guess. The beetle's front legs lie outstretched, holding an orb above it's head. Taking a quick look at the seal on the sarcophagus, you don't think it would be that difficult to [bold type]remove the cover[roman type] aside and reveal what's within; you're not sure if that's a good idea, however.";
	otherwise:
		say "     The sarcophagus against the northern wall is now open, the lid of the coffin lying against the wall nearby. Its former occupant is now living within this shrine, the insectoid creature keeping the sanctum immaculate.";
		
instead of sniffing Sanctum of Horus:
	say "     While this room smells just like the rest of the Egyptian Wing, every whiff of the warm air reminds you of bright, sunny days.";

South of Sanctum of Horus is Golden Doors.

RevealAmuran is an action applying to nothing.

check RevealAmuran:
	if player is not in Sanctum of Horus, say "     There's no sarcophagus to open here." instead;

understand "remove the cover" as RevealAmuran.
understand "remove cover" as RevealAmuran.

carry out RevealAmuran:
	say "     Looking at the sarcophagus across the water, do you want to try and open the golden casket?";
	if the player consents: [Smut, more interactions and quest to come soon]
		say "     In the end, you decide to go against your better judgment, wanting to reveal whatever it is that lies inside the sarcophagus. Walking around the pool of water and up to the shining coffin, the sarcophagus is even more glorious up close. While it looked made of plain gold from afar, the sarcophagus is actually inlaid with multitudes of precious gemstones, many of which you're unable to name. Alongside the gemstones, you're able to tell that the sarcophagus is not made of just gold; strings of different-colored metals run beautifully across the coffin's surface; it looks as if the metals are actually flowing. You can't begin to comprehend how much money this thing is worth to the right person; selling it would make you exceedingly rich.";
		say "     Unfortunately for you, there probably isn't a buyer in the city right now, considering the condition it's in. You still let yourself make a mental reminder to pick this up when everything blows over; if it blows over, that is. Checking delicately along the seal of the sarcophagus, it seems that the lid is latched on at a few points around the coffin; it would be a (somewhat) simple matter to unseal this sarcophagus. You're soon able to pop out a latch, releasing with a loud, grating screech. Soon enough, the cover of the sarcophagus is unlatched; all you have to do is push the lid aside.";
		say "     Once again pushing with all your might, the lid of the sarcophagus falls before you, screeching aside and falling to the ground with a massive [']THUMP[']. Taking a deep breath, you step in front of the open coffin, waiting for the worst to happen. It takes a moment for light to filter into the dark sarcophagus, but once you see what's in there, you're unable to hold back a gasp of surprise.";
		say "[WaitLineBreak]";
		say "     What's currently resting inside the golden sarcophagus is definitely not a mummy; you're pretty sure it's not dead, either. The only way you could describe it is as a humanoid insect; some sort of hybrid beast. Stepping back a few steps, you take a few moments to examine the strange creature, trying to figure this beast out. The creature's legs look to be made out of individual segments; four or five separate segments, if your estimations are correct. The bottom segment ends in large, flat claws, well-suited to both attacking and walking. Its chest is covered with a thick carapace, with small impressions dividing up parts of it; this creature seems to have a thick exoskeleton shielding its body. Any part of its body that's covered by this exoskeleton shines a magnificent green; it's like the creature is carved from a massive emerald. You're presently unable to fully tell what it has on its back, but you think that this creature also sports a grand set of wings, similar to its smaller brethren. Two sets of spindly arms extend from its shoulders, one set right below the other, and both currently crossed over its chest. These limbs are almost carbon-copies of the beast's legs, with four or five segments ending in claws. These claws, however, look closer to normal hands, albeit built for an insectoid.";
		say "     It begins looks even stranger as you continue to examine the beast. Atop the creature's short neck lies an insectile head, easily the strangest part of the strange beast. Occupying the lower half of the creature's head is a malicious set of insectile mouthparts; you recall from a few nature documentaries that they can be extremely painful to humans, and fatal to smaller prey. Protruding forward from the front of its head, above its mandibles, is a long set of feathered antennae; these seem to be roughly two feet long, jutting out prominently in the sun-lit air. More to the sides of its head lie what you presume to be its eyes; large black orbs stare ahead, entirely devoid of any color.";
		say "     You take a few more steps back, letting your brain process the sights you're seeing. This whole experience is incredibly surreal to you; golden riddle doors, a beautiful sanctuary inside the city, a humanoid bug inside a sarcophagus. You've no idea if there's some mystical force at work here or if you've just gone completely insane. Looking at the large creature inside the casket, you're entirely unsure what to do with the thing. Leaving it here out in the open seems like an incredibly bad idea; who knows what kind of sex-crazed creature could come stumbling in. Sighing to yourself, you look at the lid laying on the ground, reluctantly figuring that you need to reseal the sarcophagus. Leaning down and bracing yourself against the ground, you pick up the cover and subsequently almost fall over; it feels light as a feather! Once again chalking this up to magic or other things beyond your comprehension, you lift the lid easily and place it next to the coffin, preparing to line the lid up with the casket.";
		say "[WaitLineBreak]";
		say "     You're entirely unprepared, however, when an emerald blur slams directly into you, knocking your breath out with tons of force. Finding yourself thrown back to the ground below with a chitinous hand at your throat and a green body atop yours, you're not sure if surviving is in the cards for you. You quickly surmise that the creature inside the sarcophagus was, in fact, not dead; it's clearly alive, if the solid black eyes staring at you are any indication. Keeping you still with one heavy hand, the creature above you (presumedly) looks you over, long antennae twitching wildly above you.";
		say "     'Thief. Bandit. Scavenger. Housebreaker. Looter. Villian. Desecrator! Who be you that so defiles my abode? Speak!' It takes you a moment to process that the creature above you is speaking, the thundering, vehement voice actually emanating from the clicking jaws of the beast above you. Feeling the grip around your throat loosen slightly, you hastily explain yourself, saying that you were just exploring and happened to come across the sarcophagus.";
		say "     Once again becoming silent, the creature above you looks to be contemplating your answer, thinking through the whole situation. With the low thundering sound that the creature's voice seems to consist of, it once again speaks, responding to your explanation. 'Be that as it may, the conduits are yet missing, and you before me is doubtless the most likely culprit. Reveal them at once or face justice, thief.'";
		say "[WaitLineBreak]";
		say "     Rapidly explaining that you have no idea what it's talking about, you do your best to make your case as a naive explorer; you have an overwhelming feeling that further enraging this creature is an extremely bad idea. Silent, tension-filled moments pass, the beast firmly in control of your life. Thankfully, you feel the grip around your neck loosen, slowly but surely relenting its assault. With a low sigh and a heavy grunt, the insectoid above you deftly rights itself, releasing you in the process.";
		say "     'There is no deceit within you, mortal; you are not the blasphemer that must be hunted.' With that, the insectile man dismisses you, apparently done talking for now. Slowly, you get up, watching the strange creature carefully, in case it changes its mind. Gathering your scattered equipment, the creature meanwhile languidly explores its surroundings, looking and examining everything around as you prepare to leave. You think it best to leave it to its devices for now; maybe trying to talk to it later will prove fruitful.";
		now AmuranAwoken is 1;
		now hp of Amuran is 1;
		move Amuran to Sanctum Of Horus;
	otherwise:
		say "     You conclude that it might not be a good time to open the strange sarcophagus.";

instead of conversing Amuran:
	if hp of Amuran < 5:
		say "     Any of your attempts to talk to the strange beast are totally in vain. It seems to be in some sort of meditation.";
	otherwise if AmuranAwoken is 1:
		say "     Approaching the strange insectoid, you're surprised when your movements are noticed. Turning to regard you with its unblinking stare, the creature's eyes bore holes into your head as you gather your thoughts and try to speak. Eventually, you decide on the most basic of questions: Who are you?";
		say "     'It has been ages since I've contemplated that question.' you hear after a few moments, the low, thundering voice of the being in front of you again filling your head. 'Individuality is not of consequence when one is an agent of sacred providence; the servants of deities rarely concern themselves with identity.' Once again, silence fills the air as the insectoid in front of you shifts around, seemingly deep in thought. 'For ease of understanding, I shall be known as Amuran; to you, or others of the mortal persuasion here. While not truly my title, it says what needs to be said.'";
		say "     The creature's answers seem to have just confused you more; its talk of divinity and gods is strange, even for this city. A few moments pass as you mull over its answer, doing your best to figure out what was just said. You ultimately decide to question it about all the talk of deities, curious as to what it's talking about. Mortals, divinity; surely this thing isn't a god?";
		say "     A deep, reverberating sound echoes throughout the chamber at your inquiries; it takes a moment for you to register that the thing known as Amuran is laughing. 'No, young one. I am no celestial; merely a servant of one. Under the benevolent light of the lord Horus do I serve, the right hand of the Sun God. Nor would I choose not to; it is honor incarnate to serve Him.' Your question answered, albeit cryptically, you subsequently inquire as to why Amuran is here? Surely (if what he claims to be true is true) a godly servant has more important things to do than sit around in a nanite-infected city?";
		say "[WaitLineBreak]";
		say "     A deep, sorrowful sigh meets your questioning. 'My duty within this plagued city, ordained by my lord Horus, is to... locate an object that was... misplaced. An object that, luckily, was revealed by the chaos caused the scourge now rampaging throughout your homestead. That, in and of itself, would not be a difficult task; but the complexity of my order has deepened considerably. We divine servants, along with our natural abilities, are afforded conduits of energy, through which we channel our deities' will; the same conduits which I falsely accused you of plundering. Mine, however, were displaced in my expedition to this place.' Amuran once again sighs deeply, visibly distressed at the situation. 'Without them, I am not within my full powers; I cannot leave this mystic sanctuary, either. The doors you so easily crossed keep me locked within, and without divine interference, I am trapped here.'";
		say "     'And that, young one, is both who I am and what my task is. How long my undertaking shall last, I do not know. Intervention from my lord is needed for me to continue, but' Amuran pauses for a moment 'the gods are... flighty. Beseeching my lord will take time, but so do all things.' Taking a more postured and regal stance, Amuran crosses his arms across his chest and bows to you, apparently thanking you. 'I am grateful to you for the conversation, young one. As simple and self-pitying as it was, millennia have elapsed since I last spoke to a mortal. It has been invigorating.' Seemingly done speaking for now, Amuran ambles over to a spot in front of the glimmering pool, subsequently sitting down and assuming a meditative stance; if you had to guess, he's trying to talk to someone high up. Mulling the entire situation over in your head, you consider offering your help to the divine servant. Do you?";
		if the player consents:
			say "[AmuranQuestAccept]";
			now AmuranAwoken is 2;
			now Finding Winged Orb is unresolved;
		otherwise:
			say "[AmuranQuestReject]";
			now AmuranAwoken is 3;
	otherwise if AmuranAwoken is 3:
		say "     Finding Amuran once again deep in meditation, it seems that he has not done anything but meditate since you've last seen him. Thinking back to your last conversation, the offer to help him in his quest once again comes to the forefront of your thoughts. Do you bring up the offer to the divine insect-man?";
		if the player consents:
			say "[AmuranQuestAccept]";
		otherwise:
			say "[AmuranQuestReject]";
	otherwise if carried of jade scarab is 1:
		say "     Finding Amuran still meditating in front of the pool of water, he does not notice your approach; or, if he does, refuses to show it. Going up beside the insect-man and tapping on his plated shoulder, you wait patiently for Amuran to respond to your prodding. Soon enough, he turns to regard you, patiently letting you speak your mind. Digging into your bag and pulling out the emerald-colored metal scarab, Amuran's black eyes immediately focus on the conduit lying in your hands. Presenting the powerful object to him, you give him the mystical object, returning it to him.";
		say "     Swiftly rising to his feet, Amuran slowly brings his chitinous hands to rest on the gleaming scarab; the metal sigil immediately releases a blast of white light, visually exploding in the warm air of the sanctuary. When your vision returns, the sigil is gone! Amuran still stands in front of you, however; releasing a long, contented sigh, you can tell he's quite pleased with the turn of events.";
		say "     'Many thanks to you, young one, for returning that which was lost. I have little of value to you, but power should suffice.' Instantly bringing a plated hand to your head, you feel energy surge through you, overwhelming your mind. Mere seconds later, you feel Amuran's hand leave your head; you take a few moments to steady yourself and figure out what was done to you. You think that he gave you some sort of divine ability; you feel much stronger mentally!";
		say "[bold type]     Your perception, intelligence, and charisma have all increased by 1![roman type]";
		increase charisma of player by 1;
		increase intelligence of player by 1;
		increase perception of player by 1;
		increase lust of Amuran by 1;
		decrease carried of jade scarab by 1;
	otherwise if carried of winged sun is 1:
		say "     Unsurprisingly, you see that Amuran has (probably) not moved from his sitting position since you've last seen him; he's still sitting in front of the glimmering pool of water, meditating peacefully. Quietly approaching him, you quickly figure out that he still does not notice you. Once again tapping his shoulder, he soon turns to look at you, letting you talk first. Searching around in your pack for his emblem, you pull out the winged sun and hand it to him, giving him back one of his godly conduits.";
		say "     Rapidly closing his chitinous hands over his sigil, beams of light begin to eminate from the emblem, shining out brilliantly in the warm air surrounding you. In a few seconds, a blast of orange light shoots out from the shining emblem; as the light fades, it seems that the sigil is gone. Standing in front of you is a contented-looking Amuran, stretching out happily in the shining rays of the sun.";
		say "     'I extend my thanks to you, mortal, for bringing back that which belongs to me. There is nothing physical that I can give you in return, but I hope that power should do.' Rapidly putting an insectoid hand to your head, you feel bolts of divine energy shoot through you, soon overpowering your senses. Only seconds later, the bursts of energy end; Amuran removes his hand, and you take a few moments to gather your thoughts. Looking over yourself, you feel stronger, faster; it seems as if you were given a small blessing!";
		say "[bold type]     Your strength, dexterity, and stamina have all increased by 1![roman type]";
		increase strength of player by 1;
		increase dexterity of player by 1;
		increase stamina of player by 1;
		increase lust of Amuran by 1;
		decrease carried of winged sun by 1;
	otherwise if lust of Amuran is 2:
		say "     Approaching the meditating insect-man, you're quite surprised when Amuran turns to notice you first, instead of you having to patiently wait for him. Nonchalantly rising to his chitinous claws and turning to you, he crosses his arms over his chest and bows to you; most likely thanking you for the return of his abilities. Finishing his wordless thanks a few moments later, he rises to his full majesty before speaking.";
		say "     'I must award my sincerest of thanks, young one, for the assistance you have rendered me. It would have been many a twilight before I could have departed this holy temple, lost so as my power was. Now, however, I return to full strength, and can carry out my task.' Telling him that you were quite happy to help, you ask what he has to do to find this relic.";
		say "     'Simply locate it and return it to my lord Horus, mortal. It will still take some time, unfortunately; while my gifts of seering have strengthened with the return of Horus['] seals, the prevalence of untamed magic amongst this city has blocked much of my sight. I only know that it is located in a place of fire and smoke; a rampaging inferno amongst the ruins of civilization. I must find my way through this maze of stone and metal you call a city, in order to find this burning conflagration and complete my task.'";
		say "[WaitLineBreak]";
		say "     Having explored parts of the city, you could say that you are somewhat proficient in navigating the 'maze of stone and metal'. The opportunity to one again assist Amuran presents itself; do you want to help him complete his charge, or let him finish his task alone?";
		if the player consents:
			if Approaching the Capitol Building is known:
				say "     As Amuran prepares to head out into the city, you once again grab his attention; you inform him that you (probably) know right where the relic is. In all of your explorations, there's only one place that you've found that matches what he described; the area around the Capitol building. Telling Amuran that it would be no problem to show him where it is, he stops and stares at you unwaveringly.";
				say "     After a few seconds of Amuran glaring holes into your head, it seems that you may have offended him somehow. As you begin to apologize for your apparent slight, he rears his head back and starts laughing. After a few (more) seconds, he calms down, looking at you with the insectoid equivalent of a smile.";
				say "     'Once again, young one, I find myself in your debt. Come then, lead the way forward, if you so wish.' Smiling, you head out, the large insect-man following closely behind you.";
				say "     You're swiftly able to find your way to the ruins of the Capitol district, navigating the ruins of the city expertly. Althought the journey only takes you maybe an hour, you chat with Amuran the entire way, wanting to learn more about the strange man. The scarab-man tells you of his deeds, and of all the incredible (at least to you) things that he's done in his immortal life. Your life, by comparison, seems incredibly boring, but Amuran seems interested in it all the same.";
				say "     Finally, the both of you find the Capitol district. It looks just as great as ever; smoke clouds billowing into the air, ruins burning endlessly. Looking stoically into the distance, Amuran thinks a moment before speaking.";
				say "     'I assume you've been here, mortal, and may not need my warnings. But still, be wary; this does not look pleasant.";
				now lust of Amuran is 0;
				now hp of Amuran is 6;
				say "[AmuranFinalQuest]";
			otherwise:
				say "     While you can't think of a spot inside the city that matches the (albeit vague) description Amuran gave you, you're still quite committed to helping him. Grabbing his attention as he prepares to leave, you let him know that you're once more willing to help, he stares at you for a few moments before beginning to laugh heartily.";
				say "     Standing there, you can't help but feel embarrassed; you're not sure whether or not he's laughing at you or something else. Soon enough, he ceases his laughing, and looks at you with what could only be described as a smile.";
				say "     'Mortal, you've once again exceeded the expectations of an ancient beast. I will not refuse your assistance, if you are so willing to help. Guide the way, young one.' Smiling at the big bug, you heroically take the lead, confidentally heading out of the Museum.";
				say "[WaitLineBreak]";
				follow the turnpass rule;
				say "     The both of you walk throughout the city, looking for the spot that Amuran believes the artifact to be. A few creatures take an interest in you personally, but when they see the strange, imposing insectoid behind you, they quickly back off.";
				say "[line break]";
				follow the turnpass rule;
				say "     Your trek continues onwards for another few hours. During the explorations, you and Amuran talk about your lives and experiences, figuring out more about each other. While your adventures cannot hold a candle to the things Amuran has seen or done, he still seems quite interested in [']normal['] mortal life.";
				say "     Finally, you come across the area that Amuran must have seen. Smoke and dust fills the air ahead of you, the ruins of buildings burning with everlasting fires. Releasing a heavy sigh, Amuran speaks: 'Yes, this is the place that I saw.' Turning to look at you, he continues: 'We must venture into the burning ruins. As always, be on guard, young one.'";
				now Approaching the Capitol Building is known;
				now lust of Amuran is 0;
				now hp of Amuran is 6;
				say "[AmuranFinalQuest]";
		otherwise:
			say "     Deciding to stay out of this, you thank him for the explanation and wish him luck in his endeavour. Amuran nods to you, and without further ado, marches stoically towards the open set of doors; soon enough, you're left alone in the mythic sanctum. You're almost sure that he'll be back soon, though; it'll just take some time.";
			now hp of Amuran is 10;
			now lust of Amuran is 0;
	otherwise if AmuranAwoken is 4:
		say "     After a few days away, it seems that Amuran has returned. In the familiar position of calm meditation, it seems that Amuran has completed his assignment, and seems quite satisfied with the situation. Leisurely ambling up to the stoic beetle-man, you're quite curious as to the conclusion of his quest. Sensing your approach, Amuran casually stands up, visibly content, and dare you say, happy. Asking him how his search went, he leisurely responds, more relaxed than you've ever seen him.";
		say "     'Well, young one. It took some nights, but I was able to locate the ashen ruins where the lost relic lay. Recovering Horus['] ankh was simple enough, though the inhabitants of the heated world proved partly a nuisance; but they could not stand against Horus['] light. The lost piece of Horus has been returned, and my lord is quite pleased with the situation; which, of course, pleases me to no end. I have been informed that my services will not be required for as long as Horus['] foresight can see; as such, I am free for now. I believe I shall take many seasons to explore and investigate this world again; it has been aeons since I've done so. For manyith a time, young one, I must extend my gratitude for your assistance in recovering the lost sigils; without that, my task would not be done.' Crossing his arms and bowing to you, it seems that Amuran will remain on Earth for a long, long time (most likely for millennia after your death).";
		now AmuranAwoken is 5;
		now hp of Amuran is 6;
	otherwise if AmuranAwoken is 2:
		say "     'Have you made progress in your search?' Amuran says to you, his black eyes staring at you questioningly. Informing him that you've yet to find both conduits, Amuran gives you a nod before returning to his meditations.";
	otherwise:
		say "     [one of]Amuran looks to be, as usual, meditating in front of the pool of water.[or]'Greetings, young one. Your explorations go well, I hope.'[or]Surprisingly enough, Amuran looks to be reading a thick tome. From what you can see, the book is a treatise on [']modern['] history; modern to Amuran, at least. Where he got the book from, you're not entirely sure. Did he find the library?[or]A low humming permeates the room, the source of which you soon see; Amuran's wings are out, buzzing periodically in the warm air. Even an immortal insect's wings get tired of being confined all the time.[or]'My appreciation for your assistance cannot be overstated, mortal; many thanks to you, once again.'[or]'Have you encountered anything of note in this diseased city, young one?'[or]Amuran can be seen cleaning one of the many priceless relics that are scattered amongst the room; keeping this room clean is obviously a point of pride to him.[at random]";

Amuran is a man.
The description of Amuran is "[AmuranDescription]";

The conversation of Amuran is { "Spooky Scary Scarab Beetle." }.
The scent of Amuran is "     The insectoid man smells of magic and sand, evoking memories of places long-forgotten.";

instead of fucking Amuran:
	if AmuranAwoken is 1:
		say "     You figure that it's probably not the best idea to broach the subject of sex to the creature that you just released; the same one that seemed extremely angered (or at least disinterested) in you.";
	otherwise if AmuranAwoken < 5:
		say "     Considering the tasks that Amuran is faced with, it's probably not the best time to broach the idea of sex to Amuran. Maybe once he's completed his divine duties you could propose it to him.";
	otherwise if AmuranAwoken is 5:
		say "     Finally deciding to proposition Amuran for some [']extracurricular['] fun, you put a sensuous swagger into your step as you approach the sitting insect-man. Noticing you immediately, Amuran cocks his bug-eyed head at you; you're unsure if he's picked up on your subtle hint. Rising to his impressive stature as you slowly walk up to him, he patiently waits for you to speak, as he usually does. Curling your finger in a [']come here['] gesture, Amuran looks all the more confused, but lowers himself down to you, placing his chitinous head next to yours. Whispering into (presumably) ears, you quietly ask him if he would like to engage in [']A favored mortal pasttime['].";
		say "     The celestial insect-man stands still for a moment, a quizzical look on his face. Rising back up, you're unsure of whether or not Amuran understands you. Moments later, however, a [']smile['] crosses his face, just as his form shudders as he begins to chuckle quietly.";
		say "     'So, the young one is not untouched by the plague that ravishes this city; I was beginning to think you were all but immune.' Still standing there, you feel somewhat embarrassed by Amuran's humor; that is, until his plated arms engulf you in a strong hug. Lifting you up off your feet, you once again find your face equal with his, his mouth close to yours.";
		say "[WaitLineBreak]";
		say "     'Well how could I refuse such an offer?' Chuckling quietly the entire time, he accepts your proposition, and you feel a prodding at your thighs; looking down, it seems that Amuran is DEFINITELY male; a 14-inch cock has emerged from behind the plate that covered his groin. It, like Amuran's arms and legs, is made up of individual segments, dull ridges running along his entire length. It seems that Amuran is just as ready as you are. What kind of mortal fun do you want to engage in with the celestial bug?";
		say "[AmuranSexMenu]";
		now AmuranAwoken is 6;
	otherwise:
		say "     Once again asking Amuran if he wants to [']have some mortal fun,['] Amuran chuckles quietly to himself in response. 'You mortals are always so insatiable.' Your offer is not rejected, however; Amuran's cock begins to protrude from its plated compartment, all 14 inches of bug-cock growing for your pleasure. What do you want to do with him?";
		say "[AmuranSexMenu]";

to say AmuranDescription:
	if debugactive is 1:
		say "DEBUG -> HP: [hp of Amuran], LUST: [lust of Amuran] <- DEBUG[line break]";
	otherwise:
		say "     This being is probably one of the strangest people you've come across lately. You could only describe [if AmuranAwoken is 1]it[otherwise]him[end if] as a humanoid bug, humanoid in shape, size and intelligence, but appearing physically like a beetle. [if AmuranAwoken is 1]Its[otherwise]His[end if] legs are made up of separate segments, similar to many types of insects and beetles. The bottom segment terminates in a claw-like foot, flattened and suitable for walking. [if AmuranAwoken is 1]Its[otherwise]His[end if] arms are identical to [if AmuranAwoken is 1]its[otherwise]his[end if] legs, made up of multiple segments. Below the first set of arms lie another set, exactly the same as the set above. These pairs of arms end in sharp, thin claws, still quite similar to human hands.";
		say "     [if AmuranAwoken is 1]Its[otherwise]His[end if] chest is plated with thick carapace, marred only by symmetrical indentations which slightly divide up [if AmuranAwoken is 1]its[otherwise]his[end if] chest. On the back of [if AmuranAwoken is 1]it[otherwise]him[end if] sits a pair of thin, clear wings, protected by an emerald-tinted carapace. While you have not seen [if AmuranAwoken is 1]it[otherwise]him[end if] fly, it must be an amazing sight.";
		say "     Sitting atop [if AmuranAwoken is 1]its[otherwise]his[end if] short neck is an insectoid head, looking out into the world investigatively. Off to the sides of the long head lie [if AmuranAwoken is 1]its[otherwise]his[end if] eyes, consisting of solid black spheres staring out unnervingly. Two furry antennae jut out from [if AmuranAwoken is 1]its[otherwise]his[end if] head, swiveling and twitching constantly, taking in sounds and smells everywhere. Occupying [if AmuranAwoken is 1]its[otherwise]his[end if] lower half of [if AmuranAwoken is 1]its[otherwise]his[end if] head is a large, malicious-looking insectoid mouth. A large pair of mandibles make up the majority of [if AmuranAwoken is 1]its[otherwise]his[end if] mouth, with tiny sets of mandibles complementing the eating abilities of the bigger set.";
		say "     [if AmuranAwoken is 1]Between the creature's legs looks to be a single plate of chitin, covering whatever gentials this creature has, if any[otherwise if AmuranAwoken < 6]Sitting between Amuran's insectoid legs looks to be a plate of emerald-green chitin. While Amuran sounds quite male, you're unsure if he has a cock; or any genitalia, for that matter[otherwise]You know from experience that Amuran has a 14-inch segmented, insectile cock hiding behind a chitinous plate. How that's comfortable, you have no idea[end if].";

an everyturn rule:
	if hp of Amuran > 0:
		if hp of Amuran < 5, increase hp of Amuran by 1;

an everyturn rule:
	if hp of Amuran > 9:
		if hp of Amuran is 38:
			move Amuran to Sanctum of Horus;
			now AmuranAwoken is 4;
		otherwise:
			increase hp of Amuran by 1;

to say AmuranQuestAccept:
	say "     Thinking over it for a few more moments and ultimately deciding to offer your assistance to him, you approach the sitting beetle-man and patiently wait for him to notice you. As the minutes tick by, however, it seems that he's too deep in meditation to notice you standing next to him. Politely, you tap him on his chitinous shoulder, trying to get his attention; and with a heavy shift, you do. He swivels his head to look at you, antennae twitching systematically in the sunlight of the sanctuary. A few moments of uncomfortable silence later, you speak up, informing him that you're willing to help him with his predicament.";
	say "    You let loose a yelp and step back as Amuran reveals his wings, opening up the massive appendages to the cool air. Twitching them rapidly and wildly, he stares ahead a few seconds before folding his wings back against him. 'It appears that I may be indebted to you, young one, if your offer is genuine. It will likely prove the quicker solution, if you truly do wish to help.' Looking at you , it takes a minute for you to realize that Amuran is waiting for an affirmative answer. Confirming that you do, in fact, wish to assist, he bows his head to you as a sign of thanks. 'Your help is quite welcome, and your offer is accepted. One conduit calls from nearby, a place of ancients and living history; another sings from a cultivated wild, soon to be reclaimed by nature; I cannot get a clearer impression as limited as I am. If you are able to find them, please return them to me forthwith; then I shall be able to complete my task.' Having said his piece, Amuran returns to his meditations. Your task now set before you, there are a few places within the city that sound like what he described...";
	now AmuranAwoken is 2;
	now Finding Winged Orb is unresolved;

to say AmuranQuestReject:
	say "     Deciding against offering Amuran help for now, you leave the insect-man to his meditating and consider coming back later to help.";

to say AmuranFinalQuest: [Includes foreboding about (possibly) nothing, or another idea that may or may not come to fruition]
	say "[WaitLineBreak]";
	say "     Steeling yourself for the coming hardships ahead, you look at Amuran to guide both of you forward. Staring ahead intently, Amuran stands unmovingly, looking as if he's turned to stone. Finally, he points somewhere forward, apparently indicating the direction in which you need to go. 'It lies in that direction, young one. Let us progress, and find this ancient relic; let our task be done.' As he steps forward, however, he stops again; cocking his beetle-esque head to the side, he seems as if he's listening to something.";
	say "     Staying like this for a few moments, you begin to worry about Amuran, thinking that something may have [']actually['] happened to him. As you move to try and wake him, however, he puts a hand in front of you, stopping you from moving. Turning to look at you with as serious an expression as he can, he begins to speak, an almost afraid tone in his voice. 'We must be swift, young one; something [']Evil['] brews here; writhing, growing as we speak. Neither of us can face it; I know not of this earth that could. Let us go now, and leave quickly.";
	say "     Staring back at him with a worried expression, you nod, and gesture for him to lead the way. Striding forward, Amuran begins his trek, you following close behind. What could be growing here? From the sound of it, it's definitely not good.";
	say "[WaitLineBreak]";
	say "     Your wandering seems to take forever, Amuran taking seemingly winding paths through the Capitol district. Both of you pass by the ruins of human civilization, old offices and houses crumbling down under the everlasting fires. Shadows scurry in the ruined cars and the chunks of stone, whatever creatures living here following you intently. While any sane person would go crazy here, Amuran strides forward intently, his posture regal and commanding as he disregards everything but his goal. The creatures watching you seem to be put off by the divine warrior, not attacking the both of you even though you're deep in their turf.";
	say "     After some time, the both of you arrive at what used to be a large apartment complex. Single-story apartments circle around a large courtyard, which used to contain parking spaces. The majority of the buildings have collapsed, while any cars that were here are long gone; this area is just as destroyed as everything else. Slowing down and eventually coming to a complete stop, your companion standing still in the crackling, hot air.";
	say "     Shifting around slightly, Amuran suddenly rears himself up, subsequently slamming his arms into the ground in the center of the square. You're unable to hold back a gasp of awe as the earth around him shakes and shudders, dust and dirt rippling back and flying out. Seconds pass as Amuran's will reshape the ground, a testament to the power he wields. Eventually, things calm down, the dust settling back down as the heavy shaking stops. Amuran still stands where he was, stoic as ever. However, a small crater has formed in front of him, and floating eerily in the air is what you presume to be the object that Amuran searches for.";
	say "[WaitLineBreak]";
	say "     Hovering magically in the air is a silver ankh; engraved into it is a carving of an eye, an eyebrow carved above it. A long carving curves under the eye, ending in a spiral tail. Finally, an elegant line extends down somewhat, completing the engraving. Surrounding the engraved ankh is a shimmering fog; a protective shield of some sort? Gesturing you forward, Amuran looks intently at the missing artifact, his goal nearly at hand. Approaching him, you let Amuran speak.";
	say "     'My lord Horus['] ankh has protected itself over the aeons of separation. Be on guard, young one. I must free it, but enemies approach. Do your best to prevent interruptions; they will make the ritual take longer.' Giving you one final nod before walking forward into the crater, Amuran stands before the floating relic and begins to chant in a language you can't understand. Now that he's distracted, the beast that's been tracking you makes an appearance and charges!";
	challenge "Ash Dragator";
	if lost is 1:
		say "     Having had its way with you, the beast charges down the crater, intent on attacking Amuran. To its sudden surprise, however, it soon ceases to exist, a massive beam of light emanating from Amuran's hands colliding with the beast. Immediately turning back to the task at hand, Amuran returns to chanting, just as another creature charges you!";
		challenge "Dark Elf";
		if lost is 1:
			say "     Once again, you're thoroughly beaten. And once again, the beast charges down, intent on taking the relic for itself. Amuran notices this, and the same beam of white-light blasts out of his outstretched hands, obliterating the onrushing creature. Rising shakily to your feet, you hope this monster is the last one to attack you!";
			challenge "Dark Elf";
			if lost is 1:
				say "     Every creature thus far has been able to best you, but as Amuran obliterates this last beast, the glimmering shield around the ankh dissipates. Stepping forward and grabbing the ankh, he swiftly turns around and sprints out of the crater, scooping you up on the way out. You don't really remember much of the trip back, but when you come to, you're back at the shrine again, Amuran watching over you carefully. Helping you up and dusting you off, Amuran stands you up before him, doing his best to help you recover after your [']escapades['].";
				say "[WaitLineBreak]";
				say "[FinalQuestConclusion]";
			otherwise:
				say "     Luck finally seems to be on your side; you're able to beat down the marauding beast, sending it skulking back into the ruins. As you do so, Amuran finishes his ritual, the silver ankh revealed to the world for the first time in aeons. Slowly and carefully taking the ankh in his grasp, he subsequently leaves the crater, the scar of his presence remaining open to the world. Patiently waiting for you to recover somewhat, the both of you soon depart, leaving the husk of the Capitol district behind you. And after a quick trip back, you and Amuran find yourselves at the Sanctum of Horus, (relatively) safe and sound.";
				say "[WaitLineBreak]";
				say "[FinalQuestConclusion]";
		otherwise:
			say "     While you lost to the first beast to charge you, the second creature to do so fell before you, driven off by your fighting abilities. In due time, Amuran finishes his ritual, close to completing the task that was assigned to him. Casually stepping out of his crater, he bows slightly to you, thanking you for your stalwart defense. Stepping forward, it seems that Amuran is taking the lead; you're quite content to let him do so. Soon enough, the both of you find your way back to the shrine that Amuran calls home.";
			say "[WaitLineBreak]";
			say "[FinalQuestConclusion]";
	otherwise:
		say "     So handily defeating the beast that was stalking you, whatever other creatures may have been interested in attacking you decide to back off. Nothing else interrupts you as Amuran leisurely completes his ritual, the shimmering fog around the ankh disappearing completely. Walking forward and gingerly picking up the ankh, he prepares to leave with the relic, his task almost complete. Nodding gratefully, Amuran gestures to you to lead the way. Picking yourself up, you heroically lead the way forward, glad that you could have been of help to such a powerful being. The both of you leisurely make your way back to the shrine, once again chatting happily with each other.";
		say "[WaitLineBreak]";
		say "[FinalQuestConclusion]";

to say FinalQuestConclusion:
	say "     Looking at you sincerely, it's easy to tell that Amuran is extremely grateful for your help. Placing his spiky hands on your shoulders, he bows his head, thanking you in what seems to be his traditional way.";
	say "      'Truly do I have to thank you, my friend. Without your continued aid, my duties on this planet would have taken what you would say decades, or maybe centuries. While time tends to not matter to those not of mortal persuasion, it is... rather pleasant to not have to wait those years out. Now, lend me time to deliver my charge.' Stepping away from you and into the pool of crystal-clear water, Amuran places the ankh within the pool while also sitting down in it.";
	say "     A blindingly-bright beam of white light shoots down onto him, apparently coming from nowhere. The ankh shines gloriously, and from what you can see from your semi-covered eyes, is floating up into the air. One last brilliant flash of light marks the disappearance of the relic, bathing the room in brilliant orange light as it vanishes from this plane of existance. Mere seconds after that, the beam of light ceases, leaving the room as bright as it was before this whole affair.";
	say "[WaitLineBreak]";
	say "     All and all, the entire ordeal only lasted roughly 15 seconds, by your count. Your eyes slowly readjust to the light within the sanctum, and taking a quick stock of the room, everything seems to be alright. Amuran slowly rises to his feet, stretching out languidly in the warm, sunny air; he also releases his wings, the massive appendages waving haphazardly. Finally, he finishes his happy, contented stretching, leisurely making his way out of the pool, dripping water onto the floor.";
	say "     Approaching you, it's easy to tell that he's rather happy, if the display a moment ago wasn't enough. Again giving you that odd, bugman [']smile['], he begins to speak, the tone of his voice conveying the pleased state he's in.";
	say "     'My lord Horus is extremely pleased with this turn of events. His ankh has been returned, once lost for millennia. Having finished my task, I have been told that my abilities will not be needed for many years; likely millennia. I believe I wish to use this time to explore your mortal world; it's been many an aeon since I've had the pleasure. Once again, young one, I remain indebted to you; should you need assistance, do not hesitate to request it.' It seems that Amuran, having finished his task, is going to remain here for (definitely) the forseeable future.";
	now AmuranAwoken is 5;

calcnumber is a number that varies.

to say AmuranSexMenu:
	now calcnumber is -1;
	now xp of Amuran is 0;
	while xp of Amuran is 0:
		say "[line break]";
		say "(0) [link]Nevermind[as]0[end link][line break]";
		if cunts of player > 0:
			say "(1) [link]Get Fucked[as]1[end link][line break]";
			say "(2) [link]Get Stuffed - Anal[as]2[end link][line break]";
			say "(3) [link]Jerk Him[as]3[end link][line break]";
			say "(4) [link]Blow Him[as]4[end link][line break]";
			while 1 is 1:
				say "Choice? (0-4)> [run paragraph on]";
				get a number;
				if calcnumber >= 0 and calcnumber <= 4:
					break;
				otherwise:
					say "Invalid Number. Try Again.";
			if calcnumber is 1:
				say "[AmuranCuntStuffed]";
			otherwise if calcnumber is 2:
				say "[AmuranAnal]";
			otherwise if calcnumber is 3:
				say "[AmuranJerkedOff]";
			otherwise if calcnumber is 4:
				say "[AmuranBlown]";
			otherwise:
				say "[AmuranNevermind]";
		otherwise:
			say "(1) [link]Get Stuffed - Anal[as]2[end link][line break]";
			say "(2) [link]Jerk Him Off[as]3[end link][line break]";
			say "(3) [link]Blow Him Off[as]4[end link][line break]";
			while 1 is 1:
				say "Choice? (0-3)> [run paragraph on]";
				get a number;
				if calcnumber >= 0 and calcnumber <= 3:
					break;
				otherwise:
					say "Invalid Number. Try Again.";
			if calcnumber is 1:
				say "[AmuranAnal]";
			otherwise if calcnumber is 2:
				say "[AmuranJerkedOff]";
			otherwise if calcnumber is 3:
				say "[AmuranBlown]";
			otherwise:
				say "[AmuranNevermind]";

to say AmuranNevermind:
	say "     You decide not to have sex with the scarab-man. Maybe some other time?";

to say AmuranBlown:
	say "     Reaching out a hand to grasp Amuran's jutting cock, your insistence is met with another chuckle from the big bug; his chuckle turns into a clicking-sounding groan as you begin to run your hand over his ridged cock, feeling the entirety of his rigid manhood in your grip. Your mind already made up, you strip down as much as you can with one of your hands occupied and kneel yourself down before the insect, fully intent on taking his length down your throat. Bringing the segmented head of Amuran's chitinous cock to your mouth, you absent-mindedly wonder how long it's been since Amuran's engaged in [']mortal fun['] with someone other than you; from the sound of his chittering and occasional spasming of his wings, it's been a while. Giving him one last, rough stroke, you quickly engulf his cock; his chittering grows all the louder as you do, your mouth setting to work getting him off.";
	say "      It's quite a strange sensation, having the insect's cock stuffed in your mouth; with his cock being made of the same hard, plated material covering his form, the chitin is definitely a unique feeling. It's not at all unpleasant, however, and the pleasured sounds coming from your scarab beetle partner continue to goad you on, wanting to give the bug as best a climax as you can. Taking more and more of Amuran's segmented cock down your throat as you bob your head, you soon find that you've taken his entire length down your throat, your face level with a chitin plate at his groin. Finally taking a part in the activities, the bug-man above you brings two of his plated claws to your head, beginning to rub and knead gently, obviously quite worked up from your ministrations.";
	say "[WaitLineBreak]";
	say "     Surprisingly enough, Amuran's stamina is much greater than you thought, especially for someone who (likely) hasn't engaged in sex in a very, very long time. After a while, you figure it's been long enough, and use all of your talents to get the chittering scarab off. Licking over whatever exposed dick you can while sucking along his entire length finally brings him to the edge. Releasing a low groan while buzzing his wings wildly, Amuran shoots glob after glob of dense bug-sap down your throat, still caressing your head gently as he does. Eventually, after you've swallowed what feels like gallons of bug-juice, his flow of seed finally slows, just as he settles himself down. Languishly withdrawing his chitinous cock from your throat, you take deep gasps of air as a few weak spurts of insect-cream hit your face and mouth.";
	say "     After a few moments of recovery, you unsteadily stand up, your stomach thoroughly full of savory seed and face covered with it. With a low, contented sigh, Amuran sags down, apparently somewhat exhausted. [one of]'Mm, thanks to you, young one. It looks as though you've learned some things from your stay here.'[or]'You mortals always seem to be experts in the art of pleasure, if my judgment is to be trusted. Thanks to you, mortal.'[or]Not saying anything, he scratches across your head lovingly, silently thanking you for your gift of bliss.[at random] Stepping up, [if scalevalue of player > 2]you give him a rough kiss on his cheek, returning his affections.[otherwise]you find yourself unable to reach his height; he, instead, crouches down, allowing you to give him a rough kiss on his cheek, showing your own passions.[end if]";
	if "Kinky" is listed in feats of player:
		say "     Gathering up your things, you lavishly gather up all of his seed splattered across your face, letting it dribble off your hand straight into your waiting mouth. Making absolutely sure he saw that, you give him a sensuous wave and a wink, telling him that you'll soon be back.";
	otherwise:
		say "     Gathering up your things, you quickly clean yourself off, washing up in the pool of water conveniently present. Giving Amuran one last wave, you head out, wondering what other kinds of fun you could have with him.";
	infect "Scarab Beetle";
	increase libido of player by 20;
	now xp of Amuran is 1;
	infect "Scarab Beetle";

to say AmuranJerkedOff:
	say "      Taking the initiative and wrapping a hand around your scarab partner’s rigid cock, his insectile chucklings are soon turned into chitters of pleasure as you run your hand over the ridged tool that Amuran has. Deciding to quickly pleasure the bug with your skillful hands, you massage up and down his motionless length, pleasured churrs being your reward. Bringing your other hand to meet its brother, the insect-man is soon quivering uncontrollably, his wings buzzing wildly in the warm air. Kneeling down in front of the shivering scarab, you continue to rub and caress his segmented tool, hands kneading every inch of his plated cock. Amuran’s chittering continues to grow wilder as you pleasure him, his claws gripping the air repeatedly as his wings whirr constantly; your affections are very welcome, it seems.";
	say "     Eventually, after what seems like forever, your talented ministrations bring the insect-man to a spectacular finish. With a low groan while his wings go into overdrive, Amuran blasts wave after wave of insect-seed out of his ridged dick, directly onto your waiting form. Feeling every throb of his bug-cock as each blast of cum splatters across your face and chest, you can’t help but become more and more aroused as you get fully plastered in his celestial seed. Finally his flow of seed stops, though not after you’ve been fully painted white. Coming down from his orgasmic high, Amuran is greeted by the sight of you coated in his load; taking a moment to absorb the sight, the scarab’s familiar chuckling soon returns. Slightly aggravated at his [‘]constant[‘] chuckling, especially after the (presumably) enjoyable handjob you just gave him, you irritatedly ask him what he finds so humorous.";
	say "     ‘Nothing in particular, young one. It has just been a very long time since a mortal knelt before me like you do so now. Thanks to you, young one, for the gift of pleasure.’ Offering the pool of water for your cleaning purposes, you take him up on the offer and clean yourself up as best you can. Gathering up your equipment, you throw the bug one last wave and wink before heading out, hoping to come back soon.";
	increase libido of player by 15;
	now xp of Amuran is 1;
	infect "Scarab Beetle";

to say AmuranAnal:
	say "     Knowing right where you want the bug, you tantalizingly remove all of your clothes, making sure every movement arouses him even more. Throwing your clothes to the side after your sensual show, Amuran watches you intently as you lay yourself back on the warm, sun-lit pool rim, displaying your ";
	if cocks of player > 0 and cunts of player > 0:
		say "[if cocks of player > 1]slick cocks[otherwise]hardening cock[end if] and [if cunts of player > 1]dripping womanhoods[otherwise]dripping cunt[end if]";
	otherwise if cocks of player > 0:
		say "[if cocks of player > 1]already-hard cocks[otherwise]rock-solid cock[end if]";
	otherwise if cunts of player > 0:
		say "[if cunts of player > 1]feminine slits[otherwise]cunt[end if]";
	otherwise:
		say "[bodydesc of player] thighs and ass";
	say " to the lascivious celestial.[if cunts of player is 0 and cocks of player is 0][otherwise]You have no intention of using your equipment, however; you have a different plan in mind.[end if] His pitch-black eyes roving over your prone form, you give Amuran a [']come hither['] expression as he eyes you; he quickly obliges, each step bobbing his cock in the warm air. Stopping just short of running you over, Amuran seems to be on the same train of thought as you; slowly lining his plated cock up with your rear, he grips your legs with his chitinous hands, steadying you against the ridged member pressing at your back entrance. Doing your best to relax, you reach out and stroke Amuran's chitinous chest, your touch wordlessly edging him on.";
	say "     With a suddenness you're not used to seeing from the cautious, deliberate bug, you abruptly feel your rear filled with the first few inches of insect cock; you're unable to do anything but moan in pleasure at the sudden intrusion. Amuran churrs lowly as he enters you, your rear clenching down on his cock, gripping it ever so pleasurably. Stopping his advance into your back end, his solid cock throbbing sensually as he breathes; you're able to feel every one, all of them sending blasts of pleasure through your [bodydesc of player] self. You stay like that for a few moments, locked to the bug by the ridged dick spearing your rear";
	if cocks of player > 0 and cunts of player > 0:
		say ". [if cocks of player > 1]Your cocks standing rigid[otherwise]Your cock rock-hard[end if] and [if cunts of player > 1]cunts already dripping[otherwise]your slit already waiting to be filled[end if]";
	otherwise if cocks of player > 0:
		say ". [if cocks of player > 1]Your cocks solid in the warm air[otherwise]Your dick rigid from all the pleasure you're feeling[end if]";
	otherwise if cunts of player > 0:
		say ". [if cunts of player > 1]Your pussies dripping and neglected[otherwise]Your feminine gash wishing to be filled[end if]";
	otherwise:
		say ". Blasts of pleasure overwhelming your mind";
	say ", you wrap your legs around the bugman's chitinous body, locking the two of you together in an affectionate bond. Taking you up on your wordless offer, Amuran thrusts forward, burying his plated cock in your rear.";
	say "[WaitLineBreak]";
	say "     Your world goes blank, you being entirely unable to process [']anything['] that's happening. Storms of pleasure wrack your head as your ass is crammed full of bug-cock, the ridged dick utterly filling your rear. Your pleasured moans combine with Amuran's low churrs, combining into a cacophony of noise echoing throughout the sanctum. Within seconds, he begins slowly thrusting into you, withdrawing more and more of his ridged cock with each thrust. Within mere moments, he's pistoning rapidly into your rear, every drive making explosions go off in your head as gasps of joy escape your lips. Soon enough, the ability for logical thought leaves you, the only thing you can think about are the consecutive feelings of emptiness and fullness coming from your backside. You finally give up trying to follow what's happening; laying back down, you let your eyes roll into your head as Amuran thrusts swiftly into you, basking in the white-hot glow of pleasure. After a few more minutes of this, the dam finally bursts; with a wordless yell of pleasure, you hit your climax, ";
	if cocks of player > 0 and cunts of player > 0:
		say "[if cocks of player > 1]cocks spraying your seed all across your stomach[otherwise]blasting your load into the air[end if] while [if cunts of player > 1]your cunts gush femcum down onto the ground[otherwise]your cunt sprays liquid onto the stone below[end if]";
	otherwise if cocks of player > 0:
		say "[if cocks of player > 1]your cocks shooting your seed everywhere[otherwise]cock firing cum into the warm air[end if]";
	otherwise if cunts of player > 0:
		say "[if cunts of player > 1]your pussies spraying femcum onto the cock below them[otherwise]cunt spasming wildly as it looks for something to grasp[end if]";
	otherwise:
		say "ass spasming wildly around the dick spearing it";
	say ". Your convulsing body triggers the insect-man's own orgasm, a thrumming churr echoing out as he fills your bowels with bug-cum, filling you with both a cock and cum. You sag down completely, savoring the utter fullness residing in your stomach.";
	say "     Letting loose one last groan, Amuran lethargically withdraws his cock from your rear, every second of it sending little bolts of pleasure through you. Finally, the whole of his cock is withdrawn, the last segment making you groan as it's removed. Letting you down, he takes a few steps back, stretching out as his cock retreats back behind a chitinous plate. After a few moments of resting peacefully on the warm stone below you, you heft yourself up, feeling your belly slosh with every movement. Contentedly gathering your gear, you give the bug-man a sensuous wink and letting him know that you might be back soon. Turning to head out, you're left with the low chuckles of the bug as you head out.";
	now xp of Amuran is 1;
	now libido of player is 0;
	infect "Scarab Beetle";

to say AmuranCuntStuffed:
	say "     Looking over Amuran’s chitinous, insectoid self, the desire to have him filling your [cunt length of player] cunt overwhelms you; quickly taking the initiative, you remove your clothes and throw them aside, revealing your [breast size of player] bosom to the warm air of the sanctum. Amuran watches you intently, enjoying the show you’re putting on; chittering quietly, he [if AmuranAwoken is 6]ambles towards you[otherwise]holds you closer[end if], his own desires awoken. [if AmuranAwoken is 6]Putting on a sensuous pose, you slowly wiggle yourself around as Amuran approaches you, giving him even more of a show as he walks up to you. With a sudden roughness that you wouldn’t expect from him, he wraps his arms around your [bodytype of player] figure and lifts you off your feet; this brings him face-to-face with you, while also placing his ridged cock at your cunt, solid and throbbing[otherwise]Shuffling you around while churring quietly, the bug-man lines up his prodigious, segmented cock up with your dripping slit, preparing for the fun to come[end if].";
	say "     Bringing his head up next to yours, Amuran nuzzles your head appreciatively, his fuzzy antennae tickling your face. His chittering rapidly turns a deeper tone, as suddenly you find your [bodydesc of player] impaled upon [if cunt length of player > 13]the entirety of his segmented cock, his insectile tool sending waves of incredible pleasure throughout your quivering body[otherwise]some of his chitinous dick, each segment inside you rubbing your trembling walls perfectly[end if]. The insect-man, having slammed you down as far as he could, releases a low churr as he's overrun with pleasure; you, on the other hand, are unable to restrain blissful gasps as his thick tool rubs every inch of your gripping womanhood, the segmented cock filling you wonderfully.";
	say "[WaitLineBreak]";
	say "     Already reduced to a trembling mess, being speared on thick scarab-cock and such, you barely recover your composure before a sudden emptiness overwhelms you; languishly withdrawing himself from your [cunt length of player] slit, Amuran chitters and buzzes in pleasure as his cock scrapes against the walls of your cunt, reveling in the sensations of your [bodytype of player] form is giving him. Leaving just the first segment of his rigid dick buried in your [cunt length of player] cunt, he holds the both of you there for a few moments; you're able to feel every miniscule throb of his chitinous cock, every quick beat of his buzzing wings as you're held still, pleasure filling you to the brim. Soon enough, and with a low churr, Amuran hilts himself in you as far as he can, replacing the gaping emptiness with a lovely fullness once again. Still hefting your [bodydesc of player] figure off the ground, the scarab-man soon begins thrusting into you rapidly, his apparent instinctual urges taking over.  Every thrust of his ridged cock sends bolts of pleasure through your entire form, and you're soon left a panting, lustful mess in his chitinous claws.";
	say "     You can't keep track of anything as you're speared repeatedly, entirely unable to think of anything except for the blasts of pleasure coming from your speared [cock of player] cunt. His unearthly stamina revealing itself, your scarab partner thrusts into you continuously, seemingly intent on fucking you forever. Finally unable to handle the ocean of pleasure washing over you, you cry out wildly as your orgasm hits; gushes of your fluid soak his cock and the ground below you as your eyes roll to the back of your skull, mind going blank as your nerves are fried from pleasure. Your wild movements and spasming cunt prove to be too much for the ancient bug to handle, and with a loud series of chitters, globs of bug-sap whell up from his chitinous form and hit your waiting womb, packing you full of Amuran's heavy seed. You can do nothing but moan incoherently as you both hit your peaks, savoring the fullness of your bug-stuffed cunt.";
	say "     Both of you simultaneously letting out a contented sigh, one of Amuran's hands moves up to stroke your head absent-mindedly; hefting you up against his body, you both bask in the afterglow of your union. 'I did not believe you would desire me; I am glad to be proven wrong, young one.', he says after a moment, still churring quietly. Slowly removing his ridged tool from your well-creamed cunt, with every inch drawing weak gasps, the scarab-man finally untangles himself from you, setting you down on wobbly legs. Taking a few moments to regain your strength (after being held up for who knows how long), you rub your seed-stuffed stomach absent-mindedly, a wonderful feeling of warmth emanating from your womb. Leaning up, you give Amuran a kiss on his chitinous cheek, getting a soft churr as a response. Leisurely gathering up your equipment, you prepare to head out, feeling happy and content at the fullness residing in your belly.";
	now xp of Amuran is 1;
	now libido of player is 0;
	infect "Scarab Beetle";

Section X - Items

Table of Game Objects (continued)
name	desc	weight	object
"ancient blade"	"An ancient sword of Egyptian make, the blade looks as if it was forged yesterday. Heiroglyphics are carved into the blade, telling stories that are long forgotten."	6	ancient blade

ancient blade is an armament.
It is part of the player.
It has a weapon "[one of]the ancient blade[or]the Egyptian blade[or]the warrior's blade[at random]".
The weapon damage of ancient blade is 15.
The weapon type of ancient blade is "Melee".
It is not temporary. 
the scent of ancient blade is "The weapon smells of forged metal, with a hint of dirt and dust.".

Table of Game Objects (continued)
name	desc	weight	object
"jade scarab"	"This beautiful piece of divine craftsmanship glimmers in the light."	3	jade scarab

jade scarab is a grab object.
it is not temporary.
it is part of the player.
the scent of jade scarab is "The metal scarab smells of metal, with a faint hint of something you can't recall...".
the usedesc of jade scarab is "[JadeScarabUse]".

to say JadeScarabUse:
	say "[line break]";
	say "     Unable to resist looking at the divine sigil, you take the glimmering scarab out of your bag and hold it out, the strange emblem glowing bright in the [if daytimer is day]warm, sunny[otherwise]cool, night[end if] air. Staring into the glowing, shimmering colors of the god-crafted emblem, you find your thoughts escaping you as your mind becomes utterly devoted to the gleaming object before you.";
	say "     Coming to your senses a while later, it seems that you've been staring at the conduit for some time. Deciding that it may not be a good idea to keep staring at it, you hide the scarab in your pack, unnerved by the power it seemed to wield over you.";

Table of Game Objects (continued)
name	desc	weight	object
"winged sun"	"A feeling of godly warmth eminates from this intricate piece of beautiful metal."	3	winged sun

winged sun is a grab object.
it is not temporary.
it is part of the player.
the scent of winged sun is "You're overwhelmed with the scent of hot, dry air; it's almost like you're standing on the surface of the sun.".
the usedesc of winged sun is "[WingedSunUse]".

to say WingedSunUse:
	say "[line break]";
	say "     Wanting another glance at the divine token, you take the symbol out of your pack; immediately after being exposed to the outside air, the emblem glows brightly, shining out in the [if daytimer is day]daytime[otherwise]nighttime[end if] air. Holding this beautiful sigil, you think of the warmth of desert sands, the hot sun beating down on you as you bask in the dry desert air...";
	say "     Shaking yourself out of your own thoughts sometime later, you feel a great warmth inside yourself. Quickly storing the emblem back into your bag, you feel yourself rapidly cooling off as the sigil leaves your grasp. Shivering in the chillingly-cold air, everything around you feeling much too cold now.";

Egyptian Wing ends here.