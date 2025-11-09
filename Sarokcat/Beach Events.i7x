Beach Events by Sarokcat begins here.

"Adds a series of random events to Flexible Survival located at or focusing on the beach."

Section 1 - Beach bum

Table of GameEventIDs (continued)
Object	Name
Beach Bum	"Beach Bum"

Beach Bum is a situation.
ResolveFunction of Beach Bum is "[ResolveEvent Beach Bum]".
Sarea of Beach Bum is "Beach".

to say ResolveEvent Beach Bum:
	if Resolution of Beach Bum is 0:
		say "     Traveling along the rough beach, you hear a voice call out to you from nearby, turning you see what seems to be a rough figure sitting outside a small tent on the edge of the beach. The tent is surrounded by what seems to be a large pile of junk, partially covered in sand, and the figure itself is so covered in rags and a multitude of various different pieces of clothing that its true form is impossible to determine.";
		say "     The strange person calls out to you again, and against your better judgment you move a bit closer, until a normal conversation is possible. In a raspy, hard to understand voice, the figure explains that they live here, scavenging useful items from the beach and trading for food and other items. Apparently the scavenging has been good lately, with all sorts of strange and unusual items washed up along the beach. Unfortunately, the people he usually deals with for food have all pretty much become too changed to deal with, and he was wondering if you would be willing to take their place doing some trading for him.";
		if Player consents:
			say "     The strange bum seems rather happy to hear it, and you imagine he is smiling underneath all that cloth as he offers you a bit of something to take away with you as a sign of your partnership... admittedly not something you would usually have chosen for yourself though, but it would be rude to refuse.";
			let bumtrade be a random number from 1 to number of filled rows in the Table of Random Critters;
			choose row bumtrade from the Table of Random Critters;
			if there is a loot entry:
				if loot entry is not " " and loot entry is not "":
					ItemGain loot entry by 1;
				else:
					ItemGain dirty water by 1;
			now Resolution of Beach Bum is 1; [player traded]
		else:
			say "     The bum seems to sigh sadly, as he waves you on your way, you get the feeling you probably won't be seeing him around here much longer...";
			now Resolution of Beach Bum is 99; [disinterest]
			now Beach bum is resolved;
	else if Resolution of Beach Bum is 1:
		say "     Traveling along the long beach you once again see the strange pile of junk and bits of ship wreckage that mark the location of the strange beach bum. Recalling your bargain with the strange person, you trudge over to see if you have anything he might want to trade for.";
		if chips is owned:
			say "     Spying something he definitely wants, the beach bum moves more swiftly than you would normally have given him credit for, snatching your package of chips, and ripping it open before you can say a word. In seconds it is stuffing chips into its mouth, pieces of chips flying everywhere and covering its cloth wrappings in bits of chip and grease. Glancing up from its gruesome feast, the bum seems almost embarrassed as it offers you several items from its strange hoard.";
			ItemLoss chips by 1;
			let bumtrade be a random number from 1 to number of filled rows in the Table of Random Critters;
			choose row bumtrade from the Table of Random Critters;
			if there is a loot entry:
				if loot entry is not " " and loot entry is not "":
					ItemGain loot entry by 1;
				else:
					ItemGain dirty water by 1;
			let bumtrade be a random number from 1 to number of filled rows in the Table of Random Critters;
			choose row bumtrade from the Table of Random Critters;
			if there is a loot entry:
				if loot entry is not " " and loot entry is not "":
					ItemGain loot entry by 1;
				else:
					ItemGain dirty water by 1;
		else if food is owned:
			say "     Glancing through your stuff, the bum seems somewhat happy to have found some spare food, which they quickly swipe, before offering you a small item from their beach findings.";
			ItemLoss food by 1;
			let bumtrade be a random number from 1 to number of filled rows in the Table of Random Critters;
			choose row bumtrade from the Table of Random Critters;
			if there is a loot entry:
				if loot entry is not " " and loot entry is not "":
					ItemGain loot entry by 1;
				else:
					ItemGain dirty water by 1;
		else:
			say "     After taking a look at what you have available, the strange bum sighs and shakes its cloth wrapped head sadly, apparently finding nothing edible amongst your offerings. The strange creature waves you away, and feeling somewhat relieved, you continue along the beach.";


Section 2 - Flotsam bits

Table of GameEventIDs (continued)
Object	Name
Flotsam Bits	"Flotsam bits"
Flotsam Bits	"Flotsam Bits"

Flotsam Bits is a situation.
ResolveFunction of Flotsam Bits is "[ResolveEvent Flotsam Bits]".
Sarea of Flotsam Bits is "Beach".

to say ResolveEvent Flotsam Bits:
	say "     Wandering along the beach, you spy a small pile of flotsam washed up on the beach. Approaching cautiously, everything seems safe enough, so you spend a moment searching through the detritus. The only thing of use that you turn up is a sea hardened bit of wood that could possibly serve as a giant club. It is a large log of driftwood with several branch stubs protruding from it. A couple are placed such that you could swing it like a massive club or battering ram. Despite its time in the salt water, the wood is unusually hard, reminding you of the giant tree creatures you've spotted in the city. Shrugging, you take the bit of wood with you and continue along the beach.";
	ItemGain flotsam club by 1;
	now Flotsam Bits is resolved;

[flotsam club moved to Core Mechanics/Weapons.i7x]


Section 3 - Strange tide

Table of GameEventIDs (continued)
Object	Name
Strange Tide	"Strange tide"
Strange Tide	"Strange Tide"

Strange Tide is a situation.
ResolveFunction of Strange Tide is "[ResolveEvent Strange Tide]".
Sarea of Strange Tide is "Beach".

to say ResolveEvent Strange Tide:
	say "     Walking along the beach, you notice a strange roiling of the tide. Not far out in the water, pausing to look for a minute, it seems almost as if the tide is being disturbed from below. Closer inspection reveals that you can almost see something large moving around down there, or perhaps several somethings moving together. Realizing how vigorously whatever is down there must be moving, you decide to continue on your way before it notices you.";
	now Strange Tide is resolved;


Section 4 - Strange wave

Table of GameEventIDs (continued)
Object	Name
Strange Wave	"Strange wave"
Strange Wave	"Strange Wave"

Strange Wave is a situation.
ResolveFunction of Strange Wave is "[ResolveEvent Strange Wave]".
Sarea of Strange Wave is "Beach".
when play begins:
	add Strange Wave to BadSpots of FemaleList;
	add Strange Wave to BadSpots of FurryList;

to say ResolveEvent Strange Wave:
	say "     Strolling along the water's edge, the cool foam washes over your ankles with each receding wave, leaving a refreshing tingle on your skin. The vast expanse of the ocean stretches out before you, its rhythmic murmurs a familiar comfort. This stretch of beach, nestled against the fragmented urban landscape, offers a temporary reprieve from the city's chaotic reality, a place where the air, thick with the tang of salt, can momentarily clear the nanite-induced haze of daily survival. You pick up a polished shell, admiring its iridescent sheen, feeling the quiet solitude of the moment. Suddenly, a strange, guttural groan, deep and resonant, echoes across the water, cutting through the peaceful lapping of the waves. Your head snaps up, eyes scanning the horizon. A flash of movement catches your attention: far out, just beyond the breaking surf, the merest hint of a sinuous, scaled neck arcs above the waves as a reptilian head glances briefly in your direction. Then, with an almost concussive force, a massive wave surges from that very spot, rushing towards the shore with alarming speed.";
	say "     [bold type]You should...[roman type][line break]";
	let Strange_Wave_Choices be a list of text;
	add "Brace. It's just water, right?!" to Strange_Wave_Choices;
	add "RUN. Better safe than sorry." to Strange_Wave_Choices;
	let Strange_Wave_Choice be what the player chooses from Strange_Wave_Choices;
	if Strange_Wave_Choice is:
		-- "Brace. It's just water, right?!":
			LineBreak;
			say "     A stubborn resolve sets in as the thought 'It's just water, right?!' ghosts about your mind, even as the monstrous size of the approaching wave suggests otherwise. Digging your heels into the wet sand, you brace for impact, adopting a wide stance, arms slightly bent, ready to absorb the inevitable crash. The rhythmic thud of the ocean, usually calming, now sounds like a drumbeat of impending force. You squint against the glare, focusing on the incoming wall of water, a strange mix of apprehension and defiance hardening your features. The wave crashes over you with immense force, knocking the breath from your lungs. You reel, completely submerged for a disorienting moment, the roaring surf enveloping you.";
			say "     As the water recedes, leaving you soaked and sputtering, you shake your head, blinking away the stinging salt. Your entire body is drenched, but it's not just clear seawater clinging to you. A surprising amount of frothy, iridescent green 'sea foam' stays behind as a residue, a thick, slick film clinging to your skin, hair, and clothes. An immediate, deep heat spreads across your exposed flesh, an unsettling haziness begins to cloud your mind, and a profound, visceral hunger stirs within you, an echo of a primal passion you didn't even know existed, as the tingling sensation intensifies.";
			infect "Feral Sea Dragon";
		-- "RUN. Better safe than sorry.":
			LineBreak;
			say "     Without a second thought, you pivot and break into a frantic sprint. Your feet pound against the wet sand, digging in for traction as you put as much distance as possible between yourself and the churning surf. The salty mist still clinging to your skin feels less like a tingle and more like a warning now, urging you onward. Your lungs burn with the exertion, but the image of that serpentine neck and the immense wave fuels your flight. You don't dare look back, focusing solely on the higher, drier ground, putting the inexplicable encounter and the unsettling feeling it left behind firmly in your past.";
	now Strange Wave is resolved;


Section 5 - Smashed boat

Table of GameEventIDs (continued)
Object	Name
Smashed Boat	"Smashed boat"
Smashed Boat	"Smashed Boat"

Smashed Boat is a situation.
ResolveFunction of Smashed Boat is "[ResolveEvent Smashed Boat]".
Sarea of Smashed Boat is "Beach".

to say ResolveEvent Smashed Boat:
	say "     As you go along the beach, you come across a boat smashed up against some rocks. Seeing no one around, you move closer to investigate. From what you can tell, it looks like whoever was on this boat was trying to flee whatever was going on in the city, having stocked up on supplies, and a chart to the next city down the way. Unfortunately, it doesn't look like they made it that far... but you do decide to take some of their supplies with you, since you doubt they will be needing them anymore wherever or whatever they now are.";
	ItemGain food by 2;
	ItemGain water bottle by 1;
	now Smashed Boat is resolved;


Section 6 - Dragon voyeurism

Table of GameEventIDs (continued)
Object	Name
Dragon Voyeurism	"Dragon voyeurism"
Dragon Voyeurism	"Dragon Voyeurism"

Dragon Voyeurism is a situation.
ResolveFunction of Dragon Voyeurism is "[ResolveEvent Dragon Voyeurism]".
Sarea of Dragon Voyeurism is "Beach".
when play begins:
	add Dragon Voyeurism to BadSpots of FemaleList;
	add Dragon Voyeurism to BadSpots of MaleList;
	add Dragon Voyeurism to BadSpots of FurryList;

to say ResolveEvent Dragon Voyeurism:
	say "     The salty tang bites at your tongue, a sharp, invigorating contrast to the stale air of the ravaged city behind you. Each grain of warm sand beneath your feet offers a soft crunch, a small, grounding sound against the vast, indifferent expanse of the ocean. While the city has been forever changed since the nanite transformations started to tear any sense of normalcy apart, this stretch of coastline feels like a peculiar sanctuary. Scattered across the sand, a few transformed beings - an oversized crab-woman trying to balance a beach ball on her pincers, a couple of furry otter-men dozing on faded towels - create a semblance of bizarre normalcy. It's not the battlefield many other districts have become, but a pervasive tension still hums beneath the surface, a constant reminder that this altered world offers no true haven.";
	say "     Rounding a gentle curve in the coastline, where the beach narrows into a small, secluded cove, the tranquil rhythm is violently shattered. The concussive sound of heavy splashing, a furious churning of water, echoes from the hidden alcove. It's an unnatural noise, far too violent for mere waves. Curiosity overriding caution, you move forward quickly, taking a few quiet steps before carefully peeking around the jutting rock formation that creates the cove. Your breath catches, and your eyes widen at the shocking tableau. Partially submerged in the churning shallows, a truly massive male sea dragon, its blue and white scales glistening wetly, pins a human diver beneath its immense weight. The diver's wetsuit is brutally torn open, ripped aside by powerful claws, leaving her breasts exposed and heaving. Her legs are wrapped around the dragon's scaled flank, pulling him deeper, as his thick, purple cock plunges repeatedly into her, a primal rhythm already driving her to ecstatic gasps. Her body, already beginning to expand and subtly scale, writhes against him, nanite-fueled horniness evident in her desperate movements.";
	say "     [bold type]It is clearly far too late to intervene, so you're left with options to...[roman type][line break]";
	let Dragon_Voyeurism_Choices be a list of text;
	add "Watch. Live dragon porn is hot!" to Dragon_Voyeurism_Choices;
	add "Leave. This isn't something you want to see." to Dragon_Voyeurism_Choices;
	let Dragon_Voyeurism_Choice be what the player chooses from Dragon_Voyeurism_Choices;
	if Dragon_Voyeurism_Choice is:
		-- "Watch. Live dragon porn is hot!":
			LineBreak;
			say "     The woman's face, already flushed and contorted with pleasure, is a canvas of pure ecstasy as the massive dragon thrusts into her, his immense purple cock stretching her to unimaginable limits. Her happy cries, ragged and raw, blend with the deep, guttural grunts of the male, creating a primal symphony that ignites a fire in your own loins. The strong musk of their mating, heavy and animalistic, permeates the air, a scent that seems to burrow into your very being, awakening a deep, carnal excitement you hadn't known you possessed. You find yourself utterly unable to move, your eyes locked onto the strangely erotic, horrifying, and utterly compelling scene unfolding before you, even as your hands begin an almost involuntary journey over your own aroused body. The initial caution you felt begins to melt away, replaced by an almost hypnotic fascination.";
			say "     With each powerful plunge, the male dragon's hips collide with hers, sending sprays of foamy water and slick body fluids flying into the air. The sounds are wet, explicit, and utterly captivating. Her cooing and writhing grow more frantic, her small, human frame seeming to stretch and expand under the relentless assault as the profound changes continue sweeping over her. Patches of her skin ripple, scales starting to emerge along her thighs and belly, blending with the expanding flesh around her pussy. The size difference, initially so stark, begins to lessen with alarming speed, her body swelling to better accommodate the colossal penetration. She arches her back, roaring a guttural cry of pure, nanite-fueled abandon, her legs clenching around the scaled flank of her massive partner, urging him deeper still.";
			WaitLineBreak;
			say "     You move closer, drawn by an irresistible force, your feet sinking silently into the soft sand. The sounds and smells intensify, surrounding you, consuming your senses. You are halfway over the dune now, fully exposed, but utterly heedless of any danger, lost in the spectacle. The dragon's deep thrusts become a frenzy, his grunts turning into ragged bellows as he nears his climax. The woman's transformation accelerates, her human features blurring into something distinctly reptilian, her limbs elongating, fingers thickening into claws, her eyes glowing with a feral, draconic intensity. Her cries are no longer fully human, but a nascent dragoness's roar, echoing her mate's as she convulses under his powerful body, her pussy gripping him with unimaginable force.";
			say "     Finally, the sea dragon bellows, a deep, resonant roar that shakes the very air, as he spills his seed into what was just moments ago a human diver. The colossal load floods her, her newly formed body clenching around him, absorbing the potent fluid. Her roar of ecstatic release joins his, a triumphant duet of bestial pleasure. She is now utterly indistinguishable from any of the other female sea dragons, her transformation complete. The two stay there in the low surf for a minute, shuddering violently, their bodies locked in a final embrace of spent pleasure. The only sounds are their ragged breathing and the gentle lapping of the waves.";
			WaitLineBreak;
			say "     The male sea dragon slowly pulls out, his purple cock, still dripping with her fluids and his own, sliding free with a loud, wet schlorp. He drags his immense bulk back into the deeper surf, his powerful tail fin propelling him forward with a majestic ease. The newly made dragoness, her scales still glistening, looks around for a minute, a flicker of confusion in her now draconic eyes, before her gaze locks onto his retreating form. A primal instinct seems to take over. She lets out a triumphant, eager squall, then quickly dives into the surf after him, her powerful new body swimming with astonishing speed to catch up to the beast that changed her, and now undeniably owns her.";
			say "     You gasp, a strange mixture of relief and keen disappointment washing over you as they vanish into the waves. But the sense of an ending is fleeting; an undeniable, desperate urge grips you. You run, scrambling over the dune, heedless of the shifting sand, racing towards the water's edge. Your eyes strain, wanting to catch one last glimpse, to hold onto the raw, primal energy they radiated. As you reach the surf, the receding tide brings with it a frothy, shimmering green foam – the residual cum from their intense mating, churned by the waves. It washes over your exposed legs and arms, coating your skin in a strangely warm, slick film. An immediate, deep heat spreads through your limbs, an unsettling haziness begins to cloud your mind, and a profound, visceral hunger stirs within you, an echo of the primal passion you just witnessed, clinging to you with the scent and residue of their ecstatic union.";
			increase Libido of Player by 30;
			infect "Feral Sea Dragon";
			infect "Feral Sea Dragon";
			infect "Feral Sea Dragon";
		-- "Leave. This isn't something you want to see.":
			say "     You quickly avert your gaze, the shocking sight burning behind your eyelids. This isn't a scene you wish to witness, let alone linger near. The primal sounds of wet flesh meeting wet scales, the diver's ecstatic cries, and the deep, guttural grunts of the dragon are already too much, too unsettling, too loud. Turning swiftly, you put your back to the horrifying display, quickening your pace along the beach. The sand beneath your feet grinds with renewed urgency as you try to outrun the echoes of transformation and unchecked desire. Even as you put distance between yourself and the secluded cove, the sounds persist. The waves still crash, but beneath them, carried on the salty breeze, you can still faintly hear the diver's high-pitched moans, mingling with deeper, animalistic growls of pleasure until you're finally out of earshot.";
	now Dragon Voyeurism is resolved;

Section 7 - relaxing scene

Table of GameEventIDs (continued)
Object	Name
Relaxing Scene	"relaxing scene"
Relaxing Scene	"Relaxing Scene"

Relaxing Scene is a situation.
ResolveFunction of Relaxing Scene is "[ResolveEvent Relaxing Scene]".
Sarea of Relaxing Scene is "Beach".

to say ResolveEvent Relaxing Scene:
	say "     Moving along down the silent beach, a glint on the water catches your attention. You immediately realize that it was just a flash of light on the water, but the view is so impressive you stop and stare anyways. The sounds of the soft waves lapping the beach, the reflected glow of the light on the water, the crisp clean air, it all makes for such an idyllic and relaxing scene that you feel refreshed and happier after even just a moment of standing their soaking it all in..";
	SanBoost 20;
	now Relaxing Scene is resolved;


Section 8 - Plundered boat

Table of GameEventIDs (continued)
Object	Name
Plundered Boat	"Plundered boat"
Plundered Boat	"Plundered Boat"

Plundered Boat is a situation.
ResolveFunction of Plundered Boat is "[ResolveEvent Plundered Boat]".
Sarea of Plundered Boat is "Beach".

to say ResolveEvent Plundered Boat:
	say "     Walking along the beach, you come across a half sunk boat sticking out of the water, curiosity getting the best of you, you wade over to inspect the boat. Hauling yourself aboard you immediately note signs of a struggle, it looks like several people tried to put up some kind of fight here, but there are no signs of either the winners or the losers. Moving around the boat, you note that someone appears to have already plundered the boat and taken anything of value, although you do find a bit of ripped cloth that looks like it might be from some sort of bandana, the black cloth appears to have the skull and bones of a pirate logo printed on it, although the skulls teeth are pointed and shark-like. Shrugging and unable to find anything of use, you wade back to the beach and continue on your way.";
	now Plundered Boat is resolved;


Section 9 - Tainted yacht

Table of GameEventIDs (continued)
Object	Name
Tainted Yacht	"Tainted Yacht"

Tainted Yacht is a situation.
ResolveFunction of Tainted Yacht is "[ResolveEvent Tainted Yacht]".
Sarea of Tainted Yacht is "Beach".
when play begins:
	add Tainted Yacht to BadSpots of HermList;
	add Tainted Yacht to BadSpots of FurryList;

to say ResolveEvent Tainted Yacht:
	say "     While moving along the nearly deserted coast, you spot a small, sixty foot yacht anchored nearby. You think with a bit of effort you might be able to swim out to the anchored boat. Do you try?";
	if Player consents:
		fight;
		say "     Making it to the ship at last, you tiredly haul yourself aboard, only to stare around you in shock. The deck is a slippery mess of fluid, and champagne glasses and bits of clothing lie scattered around the deck forlornly. Looking around inside carefully, you find the ship seems deserted, at least the front cabin is, you look around to try to figure out what happened here, and spot a few small journal entries in the log. Skimming the log you begin to understand what happened. While apparently the owners of this yacht were intending to wait out the infection in style with a close group of friends, one of the people they let on the boat must have been infected already and not shown it yet. Soon after they set up anchor for their nightly party, the orgy must have started, spreading the conversion throughout the small enclosed ship like a wildfire.";
		say "     Searching the ship further could be dangerous, as not all of the creatures may have abandoned ship fully, still you decide to check to see if the boat still runs. Unfortunately something seems to have flooded the engines, rendering them currently inoperable, moving forward to open the hatchway leading to the engines, you are overcome with the strong scent of musk and sex, making your skin twitch with the first signs of impending change. Quickly slamming the door shut you realize that an orgy seems to have taken place near the engine room, and whatever the engine is flooded with, trying to clean it out would most likely result in you turning into whatever creature these people became. Quickly abandoning that idea, you go check the food supplies only to find that they like everything else on the ship, are tainted with the results of the boats occupants long orgy. Sighing, you go about gathering up some of the least tainted of the water supplies before heading back to shore, only slightly changed by your experience.";
		ItemGain dirty water by 2;
		infect "Gator Herm";
		infect "Gator Herm";
		now Resolution of Tainted Yacht is 1; [got in the yacht]
	else:
		say "     Deciding some things are best left alone, you continue your nice walk along the sands.";
		now Resolution of Tainted Yacht is 99; [disinterest]
	now Tainted Yacht is resolved;


Section 10 - Strange castle

Table of GameEventIDs (continued)
Object	Name
Strange Castle	"Strange castle"
Strange Castle	"Strange Castle"

Strange Castle is a situation.
ResolveFunction of Strange Castle is "[ResolveEvent Strange Castle]".
Sarea of Strange Castle is "Beach".

to say ResolveEvent Strange Castle:
	say "     Traveling along the beach, you come to an area where someone has obviously recently been hard at work. Just sitting there near the surf is an extremely intricately made sand castle, a magnificent looking edifice with numerous carefully sculpted towers and many fine details. Looking around you can't see any sign of who might have made such a thing, and then just abandoned it here. Shaking your head at the strange little building, you continue along your way, the waves behind you beginning to erode away at the small castle's structure.";
	now Strange Castle is resolved;


Section 11 - otter view

Table of GameEventIDs (continued)
Object	Name
Otter View	"otter view"
Otter View	"Otter View"

Otter View is a situation.
ResolveFunction of Otter View is "[ResolveEvent Otter View]".
Sarea of Otter View is "Beach".
when play begins:
	add Otter View to BadSpots of FurryList;

to say ResolveEvent Otter View:
	say "     As you wander along the beach, you hear some laughter and splashing from the cove up ahead. Moving forward to take a closer look, you spy a small group of otters, laughing and frolicking in the shallow water. You smile at the innocently playful creatures for a while, until their play starts to get a bit more 'hands on' with each other. At which point you continue on your journey before they notice you.";
	now Otter View is resolved;


Section 12 - Cream stand

Table of GameEventIDs (continued)
Object	Name
Cream Stand	"Cream stand"
Cream Stand	"Cream Stand"

Cream Stand is a situation.
ResolveFunction of Cream Stand is "[ResolveEvent Cream Stand]". The level of Cream Stand is 2.
Sarea of Cream Stand is "Beach".
when play begins:
	add Cream Stand to BadSpots of HermList;
	add Cream Stand to BadSpots of FurryList;

to say ResolveEvent Cream Stand:
	say "     Wandering along the beach, you notice someone seems to have recently set up one of the ice cream stands, though you don't spot anyone nearby. It is something of a hot day - perhaps you should go help yourself to some ice cream?";
	if Player consents:
		say "     Deciding to have some ice cream, you move over to the small ice cream stand, and open up the cooler packed full of vanilla ice cream. Picking up a scooper, you place a hefty scoop on one of the cones and begin to eat the white flavorful treat. The taste of the ice cream makes you wonder for a second, as it doesn't taste quite like normal vanilla ice cream does, but since the taste is absolutely delicious, you eagerly finish off the cone anyways. Thinking about getting seconds, all of a sudden you moan as your stomach churns, and your body starts to writhe and change, before you can do more than wonder just what was in that ice cream, a shadow swoops down and takes advantage of your distraction!";
		decrease HP of Player by 20;
		infect "Blue Gryphon Herm";
		challenge "Blue Gryphon Herm";
		say "     The gryphon being long gone, you shake your head as you begin to recover from the ice cream and the attack, and take a closer look at the back part of the ice cream stand while you are here. You find some small containers of gryphon milk which were obviously fed into the ice cream machine in order to bait the gryphon's little trap. Sighing at the waste, you continue on your way, though you do take a couple containers of the leftover milk, just in case it might come in handy later... or if you find another ice cream machine, that did taste pretty good after all...";
		ItemGain gryphon milk by 2;
		now Resolution of Cream Stand is 1; [got ice cream]
	else:
		say "     Being cautious by nature, you decide to forgo the tasty beach treat, and keep to your own supplies.";
		now Resolution of Cream Stand is 99; [no ice cream]
	now Cream Stand is resolved;


Section 13 - Lucky seashell

Table of GameEventIDs (continued)
Object	Name
Lucky Seashell	"Lucky seashell"
Lucky Seashell	"Lucky Seashell"

Lucky Seashell is a situation.
ResolveFunction of Lucky Seashell is "[ResolveEvent Lucky Seashell]".
Sarea of Lucky Seashell is "Beach".

to say ResolveEvent Lucky Seashell:
	say "     As you wander along the beach, you enjoy the feel of the sand underneath your feet and the beautiful sky overhead... until you nearly trip on something half buried in the sand. Cursing you look down and discover a large seashell was revealed when you nearly tripped over it, curiously you pick the shell up and marvel at the iridescent sheen of the shell. Just holding the thing makes you feel a bit better about things, who knows, maybe finding the shell means today will be a lucky day after all you think to yourself!";
	let T be a random number between one and five;
	if T is 1:
		say "     Finding the shell makes you scour the beach and pay much more attention to your surroundings as you continue on your walk, just in case there are any other such treasures. And while you don't actually find any more treasures on your trip down the beach, you do feel as if your eyes have become a bit sharper from the experience.";
		StatChange "Perception" by 2;
	else if T is 2:
		say "     Walking along the beach afterwards with a spring in your step, you scan the sands around you just in case something else useful turns up, and after just a short time, you spot a bottle of water! Wow this really must be your lucky day!";
		ItemGain water bottle by 1;
	else if T is 3:
		say "     Walking along the beach with the shell in hand, you can't help but play at tossing the thing up and down in your hands as you travel, enjoying the look of it as it spins in the air, and the challenge of catching it quickly and accurately. Eventually you manage to drop it into the surf, and no matter how hard you look you don't find the shining shell again. Still you resolve to pay a bit more attention to how you move your hands from now on so you don't drop anything else important, and playing with the shell already made you more aware of their positioning, so it isn't a total loss";
		StatChange "Dexterity" by 2;
	else if T is 4:
		say "     Traveling along with the shell, it seems like tripping over it was the least of your worries today! Your walk turns into a harrowing experience as you slip on the sand and fall several times, the wind blows sand into your face, and your feet seem to find every rock on the beach. Deciding maybe it was the shells fault after the fourth time you are nearly dragged out to sea by a sudden wave, you toss the shining pretty thing into the sea from whence it came. You feel much more ragged from the experience, though it has taught you a bit about stubbornly enduring things...";
		StatChange "Stamina" by 2;
	else:
		say "     Taking the shell along with you, you find that it seems to make the day brighter as you carry it and makes you feel a bit more human just to have it with you. Eventually reaching the end of your walk, you set the shell back down on the beach so it can brighten someone else's day up like it did yours'";
		SanBoost 20;
	now Lucky Seashell is resolved;

Beach Events ends here.
