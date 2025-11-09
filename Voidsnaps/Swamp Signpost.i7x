Swamp Signpost by Voidsnaps begins here.

[This is simply the in-game equivalent of a wiki. Read this in game or on the github to find out where my content is!]

Table of GameEventIDs (continued)
Object	Name
Mossy Signpost	"Mossy Signpost"

Mossy Signpost is a situation.
ResolveFunction of Mossy Signpost is "[ResolveEvent Mossy Signpost]".
Sarea of Mossy Signpost is "Sinking Swamps".


to say ResolveEvent Mossy Signpost:
	say "     <Hello! This is the author of the swamps, Voidsnaps. This is not a normal event. I'm sorry if this is jarring, but I thought it was a good idea to present an in-game wiki of sorts when I realized that many people had never seen anything I've created or contributed to! This will only include my own content as otherwise I'd be sitting here typing for months on end, but I genuinely hope that it helps! If ever you'd like to see this information again, please type 'Swamp Signpost' in game. It is case sensitive and does not need the quotation marks.>";
	TraitGain "Swamp Info" for Player;
	VoidsnapsInfoDump;
	now Mossy Signpost is Resolved;


to VoidsnapsInfoDump:
	say "     [bold type]Which area would you like information on?[roman type]";
	let Swamp_Infodump_Area_Choices be a list of text;
	add "Beach." to Swamp_Infodump_Area_Choices;
	add "Capitol District." to Swamp_Infodump_Area_Choices;
	add "Forest." to Swamp_Infodump_Area_Choices;
	add "Library." to Swamp_Infodump_Area_Choices;
	add "Outside." to Swamp_Infodump_Area_Choices;
	add "Swamps." to Swamp_Infodump_Area_Choices;
	add "Nowhere, I'm not interested right now." to Swamp_Infodump_Area_Choices;
	let Swamp_Infodump_Choice be what the player chooses from Swamp_Infodump_Area_Choices;
	if Swamp_Infodump_Choice is:
		-- "Beach.":
			VoidsnapsInfoDump_Beach;
		-- "Capitol District.":
			VoidsnapsInfoDump_Capitol;
		-- "Forest.":
			VoidsnapsInfoDump_Forest;
		-- "Library.":
			VoidsnapsInfoDump_Library;
		-- "Outside.":
			VoidsnapsInfoDump_Outside;
		-- "Plains.":
			VoidsnapsInfoDump_Plains;
		-- "Swamps.":
			VoidsnapsInfoDump_Swamps;
		-- "Zoo.":
			VoidsnapsInfoDump_Zoo;
		-- "Nowhere, I'm not interested right now.":
			VoidsnapsInfoDump_Decline;


to VoidsnapsInfoDump_Beach:
	say "     [bold type]Which content would you like information on?[roman type]";
	let Swamp_Infodump_Beach_Choices be a list of text;
	add "Lazaros the Gator." to Swamp_Infodump_Beach_Choices;
	add "Go back to the area selector" to Swamp_Infodump_Beach_Choices;
	add "Exit the menu." to Swamp_Infodump_Beach_Choices;
	let Swamp_Infodump_Beach_Choice be what the player chooses from Swamp_Infodump_Beach_Choices;
	if Swamp_Infodump_Beach_Choice is:
		-- "Lazaros the Gator.":
			say "     Lazaros can first be found through the Sunbathing Gator event on the beach. After you have some fun with him, you can meet him again, and he'll give you directions to his place up on the cliff. At night, he'll be waiting for you up there, and during the day he'll be on the beach for repeat fun.";
			say "     Lazaros has some public fun built in, some body worship, a healthy dose of angst, and a desire to get to know you better. While he IS bisexual, he has a preference for men.";
			VoidsnapsInfoDump_Beach; [looping back to stay in the menu]
		-- "Go back to the area selector":
			VoidsnapsInfoDump;
		-- "Exit the menu.":
			say "     Exiting the swamp signpost infodump.";

to VoidsnapsInfoDump_Capitol:
	say "     [bold type]Which content would you like information on?[roman type]";
	let Swamp_Infodump_Capitol_Choices be a list of text;
	add "Addicted Breeder Tape." to Swamp_Infodump_Capitol_Choices;
	add "Argon the Pewter Consort." to Swamp_Infodump_Capitol_Choices;
	add "Wasp King Infection." to Swamp_Infodump_Capitol_Choices;
	add "Zant the Wasp." to Swamp_Infodump_Capitol_Choices;
	add "Ziix the Wasp." to Swamp_Infodump_Capitol_Choices;
	add "Go back to the area selector" to Swamp_Infodump_Capitol_Choices;
	add "Exit the menu." to Swamp_Infodump_Capitol_Choices;
	let Swamp_Infodump_Capitol_Choice be what the player chooses from Swamp_Infodump_Capitol_Choices;
	if Swamp_Infodump_Capitol_Choice is:
		-- "Addicted Breeder Tape.":
			say "     This tape requires two things in order to be played: First, you must find the camera in the 'Lost Camera' Event by hunting or exploring from 'outside.' (Most commonly the entrance to the grey abbey library.) Second, you must find the tapes at the 'Messy Hideout' event in the capitol district.";
			say "     This content contains male pregnancy, bestiality, and mindbreaking. Like most of my content, it is INCREDIBLY gay.";
			VoidsnapsInfoDump_Capitol;
		-- "Argon the Pewter Consort.":
			say "     In order to access Argon, you must first complete the event 'PewterPet' in the capitol district. After that, 'Strange Birth' will become available to players that have the 'Submissive' feat, who have progressed Doctor Matt's storyline far enough. (And did not side with Doctor Mouse. You only need to complete the storyline enough to reach, but not finish, the mapping the city section.) Once you collect baby Argon, he'll grow up relatively fast and try to exert his dominance over you at his nest in Trevor Labs!";
			say "     Argon has mild watersports (optional), a focus on bestiality with the feral in charge, forced sex, and dominance.";
			VoidsnapsInfoDump_Capitol; [looping back to stay in the menu]
		-- "Wasp King Infection.":
			say "     As part of the wasp storyline in the capitol district (search for Draconic Ruckus after you've hit level 8), you may become the wasp king. This is a permanent infection, which means it'll renew itself until you remove it. If you're having trouble, use the debug code 'zRemoveWaspKing' to remove the permanent infection (you must be infected by something else after you remove its permanence to see a change, but it won't renew itself after that). Later, this infection will allow the player to grow the hive and increase the number of interactable NPCs and events.";
			VoidsnapsInfoDump_Capitol;
		-- "Zant the Wasp.":
			say "     One of two wasps that survived the dragon attack that resulted in their brethren's deaths, Zant is remarkably unbothered. Lazy to a fault and single-minded, Zant exists to fuck, with pheromone-laced fur to help his goal. His appearance is similar to a velvet ant. While he may not be very nuanced, he's GREAT at his job, so try out his charms.";
			say "     Zant's got a heavy focus on musk and musk-related mind control. His scent is boner-inducing to nearly anyone nearby and the player is no exception. His cum is basically honey, so those with a sweet tooth should be satisfied. Together with Ziix, he can help the player become the new wasp king.";
			VoidsnapsInfoDump_Capitol;
		-- "Ziix the Wasp.":
			say "     The polar opposite of Zant, Ziix is the warrior of the hive. He nearly died attempting to protect the king, and he carries guilt because of it. You might be able to get him to open up with some time, both figuratively and literally. His latent buttsluttery could be the key to helping him move on, or you could take a less sexual approach in future content.";
			say "     Like Zant, Ziix has honey for cum, but he'll take a bit longer to open up unless his brother's involved. Together with Zant, he'll help you become the new king of the hive. Don't send him away if you want to interact with him!";
			VoidsnapsInfoDump_Capitol;
		-- "Go back to the area selector":
			VoidsnapsInfoDump;
		-- "Exit the menu.":
			say "     Exiting the swamp signpost infodump.";

to VoidsnapsInfoDump_Forest:
	say "     [bold type]Which content would you like information on?[roman type]";
	let Swamp_Infodump_Forest_Choices be a list of text;
	add "Alistair the knight." to Swamp_Infodump_Forest_Choices;
	add "The Knight encounter." to Swamp_Infodump_Forest_Choices;
	add "Go back to the area selector" to Swamp_Infodump_Forest_Choices;
	add "Exit the menu." to Swamp_Infodump_Forest_Choices;
	let Swamp_Infodump_Forest_Choice be what the player chooses from Swamp_Infodump_Forest_Choices;
	if Swamp_Infodump_Forest_Choice is:
		-- "Alistair the knight.":
			say "     In order to encounter Alistair, the knight, you must first be level 10. Then simply search for 'Gruff Gallant And Misguided' within the forest. Win or lose the ensuing fight to lock in a path for his storyline. Losing multiple times will turn Alistair into your knight, while winning multiple times will turn Alistair into your squire. There are extra scenes unlocked after winning/losing against him 3 times, respectively.";
			say "     This character contains themes of bestiality, musk, rape, and fantasy (monster vs human) pseudo-racism. As per usual, it's super gay, though there are more limited scenes for female player characters!";
			VoidsnapsInfoDump_Forest;
		-- "The Knight encounter.":
			say "     Not to be confused with Alistair, the generic knight can be found wandering around the forest when the player is around level 11. It has varying scenes based on whether the player looks like a human, knight, squire, or furry.";
			VoidsnapsInfoDump_Forest; [looping back to stay in the menu]
		-- "Go back to the area selector":
			VoidsnapsInfoDump;
		-- "Exit the menu.":
			say "     Exiting the swamp signpost infodump.";

to VoidsnapsInfoDump_Library:
	say "     [bold type]Which content would you like information on?[roman type]";
	let Swamp_Infodump_Library_Choices be a list of text;
	add "Leon the Ram." to Swamp_Infodump_Library_Choices;
	[add "" to Swamp_Infodump_Library_Choices;]
	add "Go back to the area selector" to Swamp_Infodump_Library_Choices;
	add "Exit the menu." to Swamp_Infodump_Library_Choices;
	let Swamp_Infodump_Library_Choice be what the player chooses from Swamp_Infodump_Library_Choices;
	if Swamp_Infodump_Library_Choice is:
		-- "Leon the Ram.":
			say "     Leon can be found at the New Ewe Store. You must not choose Mary as the main interest for your character within the store, and then he will be available for male characters to play with. Despite being a lady's man, he's got some extraordinarily gay predilections that he'll not-so-healthily explore with you.";
			say "     Leon's centered around musk, bondage, and sexuality play. If you play with him enough as a male PC he'll get addicted to you, resulting in a bad end.";
			VoidsnapsInfoDump_Library; [looping back to stay in the menu]
		-- "Go back to the area selector":
			VoidsnapsInfoDump;
		-- "Exit the menu.":
			say "     Exiting the swamp signpost infodump.";

to VoidsnapsInfoDump_Outside:
	say "     [bold type]Which content would you like information on?[roman type]";
	let Swamp_Infodump_Outside_Choices be a list of text;
	add "Cassian the Squire." to Swamp_Infodump_Outside_Choices;
	add "The Demon Fox (Kal Ren)." to Swamp_Infodump_Outside_Choices;
	add "Doctor Mouse's himbo pet route." to Swamp_Infodump_Outside_Choices;
	add "Janaz, Kal Ren's son." to Swamp_Infodump_Outside_Choices;
	add "Kerry the Minotaur." to Swamp_Infodump_Outside_Choices;
	add "The Komainu mini-event." to Swamp_Infodump_Outside_Choices;
	add "Ozeg the Demonic Dragon." to Swamp_Infodump_Outside_Choices;
	add "Raymond the Psychic Mouse boy." to Swamp_Infodump_Outside_Choices;
	add "Rhidall the Sandman." to Swamp_Infodump_Outside_Choices;
	add "Sascha the transman Catboy." to Swamp_Infodump_Outside_Choices;
	add "Tobias the Doberman." to Swamp_Infodump_Outside_Choices;
	add "Go back to the area selector" to Swamp_Infodump_Outside_Choices;
	add "Exit the menu." to Swamp_Infodump_Outside_Choices;
	let Swamp_Infodump_Outside_Choice be what the player chooses from Swamp_Infodump_Outside_Choices;
	if Swamp_Infodump_Outside_Choice is:
		-- "Cassian the Squire.":
			say "     Cassian has not gotten much content yet, but you can find him at player level 10, by searching for the event 'Loyal Lad' from the grey abbey library front door.";
			say "     Cassian's quest will allow you to find his mindbroken, transformed master. The only sex scenes you will see are between his former knight and the knight's new master, which is a brief gay orgy.";
			VoidsnapsInfoDump_Outside;
		-- "The Demon Fox (Kal Ren).":
			say "     In order to encounter Kal Ren, you must first find the Ancient Tome. You may either find it by searching the hellish trashpile and watching the tape you find there, then going to the darkened alcove within the grey abbey library, or by recruiting Eric in his transman form and waiting for the Arcane Tome event to happen within the library. After accessing the book enough times, you'll be able to summon him. There are different storylines based on how you react to his first battle. Winning gives you access to a storyline where Kal Ren can impregnate you, resulting in offspring you can have incestuous semi-consensual fun with. (Janaz.) You may only see Kal Ren if you are male with no vagina and no breasts.";
			say "     Kal Ren's content contains violent sex, size changing, oversized cocks, forced incest, a general disdain for the player, and biting.";
			VoidsnapsInfoDump_Outside;
		-- "Doctor Mouse's himbo pet route.":
			say "     Progressing through Doctor Matt's storyline will eventually put you at odds with Doctor Mouse. Should you decide to take Doctor Matt's side, Doctor Mouse will eventually transform into a chimera. If you have gone to the Slut Storage before this fight, you will get the option to move Doctor Mouse to the Slut Storage. Fucking him enough will result in the option to make him into your bodyguard, pet, or boyfriend, through the use of mind control. He will then be a controllable pet, no matter which of the three you pick.";
			say "    Doctor Mouse is a hybrid chimera monster with a focus on muscle, drugging, and mind control with the player in charge. You can rape him and make him like it.";
			VoidsnapsInfoDump_Outside;
		-- "Janaz, Kal Ren's son.":
			say "     Only accessible to players that defeated Kal Ren, Janaz is the player's son with the demonic fox. Rather than his father's bipedal appearance, he is feral, though there is a certain resemblance. His job is initially to stalk and fuck the player, until the player decides to treat him a bit better, resulting in a bit of rebellion. The player can then free him from Kal Ren with the help of Baron.";
			say "     Janaz is a feral, and is only available to male players due to the constraints of his father. His content is centered around non-consensual sex, incest, and dominance. Once the player frees him, their bond will become a bit less rapey.";
			VoidsnapsInfoDump_Outside; [looping back to stay in the menu]
		-- "Kerry the Minotaur.":
			say "     Originally written by Wahn, this character starts with the event 'Dangerous Load,' explorable from the grey abbey library entrance. There are additional scenes if you choose to not help the soldiers with their transformed comrade.";
			say "     Kerry's content is very rape and transformation heavy, with a side of excessive cum and brain drain (intelligence loss). It is also entirely gay.";
			VoidsnapsInfoDump_Outside;
		-- "The Komainu mini-event.":
			say "     Sadly this is just a singular event that can be found while hunting from the grey abbey library. It's just a big fluffy dumb guy sucking some random dick.";
			VoidsnapsInfoDump_Outside;
		-- "Ozeg the Demonic Dragon.":
			say "     Initially misunderstood as a haunting in the basement of the haunted house the player explores with the help of Sascha, Ozeg is a former demonic general that was summoned into the mortal world at the behest of the house's long dead owner. He was sexually tortured (and edged) for longer than he can remember, and he latches onto the player as his new master once freed of the ghost hands that kept him on edge for so long. You will naturally encounter him at the end of the haunted house quest.";
			say "     Despite his prodigious size, Ozeg is very submissive due to years of torturous sex. With a focus on master/slave dynamics and the mindset of a servant, he's ready to fulfill his master's wishes!";
			VoidsnapsInfoDump_Outside;
		-- "Raymond the Psychic Mouse boy.":
			say "     Rejected by the hermaphroditic mothers that birthed them, the male mental mice have set up shop in an old restaurant. Their leader's been watching you for a while, and he's quite taken with you, desiring to meld his mind with yours and claim you as his own. His diminuitive size may cause some problems with that, but he certainly won't give up on his true love! Search for Ruined Restaurant to find him!";
			say "     Raymond's content is fairly romantic (almost creepily so) and revolves around shared consciousness and mindmelding.";
			VoidsnapsInfoDump_Outside;
		-- "Rhidall the Sandman.":
			say "     Rhidall is tied to other characters, rather than existing as his own standalone character. The first character he'll visit is Philip and simply required Philip to be settled in the library's shed. The second is Eric, whose scene requires the player to NOT have the center of attention feat, Eric to be a man with a pussy, and for Eric to be at the library. The third is David, whose scene requires David to be in the bunker, the player to NOT be the Center of Attention, and David to have had sex with the player multiple times.";
			say "     Rhidall's content centers around male/male sex, possible threesomes, wet dreams, and somnophilia.";
			VoidsnapsInfoDump_Outside;
		-- "Sascha the transman Catboy.":
			say "     First found while exploring for the event Wild Kitty, Sascha's first event is in three parts. Being flirty but not too forward will get him to open up to you, and by the third part, he'll ask you to go on a little adventure through an abandoned building. Afterwards, you can fuck him on the roof. Particularly well-endowed players will be able to see a special frottage scene. Next, you will find Sascha in the warehouse district by exploring or hunting for the event Rough But Sweet, trying to escape from a mutant he's upset. You can go for another round in the warehouse while you wait for the mutants to leave. Finally, Sascha will find you again in Kitty Adventures and ask you to help him explore a haunted house.There's also a bonus scene (Pegged By A Pussycat) you may see while exploring the warehouse district if you've been anally training the orc Mul for long enough, in which Sascha will show that he's more than well-endowed enough to satisfy the green buttslut (with the help of a trusty strap-on).";
			say "     Sascha is a trans man with a pussy. He greatly prefers men, but he'll put his tongue to work on female players as well! His content contains some acrobatic sex, slutty behavior, and an overall free spirited feel. Within the haunted house, there are also some scenes with magical hands molesting Sascha.";
			VoidsnapsInfoDump_Outside;
		-- "Tobias the Doberman.":
			say "     Technically Tobias is found in the mall parking lot at first, but his trailer is elsewhere, so I've placed him here within the Outside category. Tobias is a top, with a focus on anal sex (as the only pups he wants are the kind he can sell as pets). Fully canine players can also choose a voluntary bad-end where they allow Tobias to train them, resulting in a new puppy-mindset.";
			say "     Tobias is dominant, but not cruel. There's not a lot to explain about him, so just see what happens!";
			VoidsnapsInfoDump_Outside;
		-- "Go back to the area selector":
			VoidsnapsInfoDump;
		-- "Exit the menu.":
			say "     Exiting the swamp signpost infodump.";

to VoidsnapsInfoDump_Plains:
	say "     [bold type]Which content would you like information on?[roman type]";
	let Swamp_Infodump_Plains_Choices be a list of text;
	add "Sandy the Centauress." to Swamp_Infodump_Plains_Choices;
	add "Go back to the area selector" to Swamp_Infodump_Plains_Choices;
	add "Exit the menu." to Swamp_Infodump_Plains_Choices;
	let Swamp_Infodump_Plains_Choice be what the player chooses from Swamp_Infodump_Plains_Choices;
	if Swamp_Infodump_Plains_Choice is:
		-- "Sandy the Centauress.":
			say "     Formerly a sex slave for one of the many bands of centaurs roaming the plains, Sandy can be saved as part of Thomas's quests. At first she's only able to fulfill her purpose as a fuckhole, but with some patience and help from other members of Thomas's herd, she can open up to you.";
			say "     Sandy has both straight and lesbian sex scenes. There's no particular focus on any kinks, outside of pseudo-bestiality involving her horsy back-half.";
			VoidsnapsInfoDump_Plains;
		-- "Go back to the area selector":
			VoidsnapsInfoDump;
		-- "Exit the menu.":
			say "     Exiting the swamp signpost infodump.";

to VoidsnapsInfoDump_Swamps:
	say "     [bold type]Which content would you like information on?[roman type]";
	let Swamp_Infodump_Swamps_Choices be a list of text;
	add "Alon the Water Dragon." to Swamp_Infodump_Swamps_Choices;
	add "Baron the Witchdoctor." to Swamp_Infodump_Swamps_Choices;
	add "Capybara Encounter." to Swamp_Infodump_Swamps_Choices;
	add "Helios the fire dragon." to Swamp_Infodump_Swamps_Choices;
	add "Ignacio the poison dart frog." to Swamp_Infodump_Swamps_Choices;
	add "Kosk the Lizardman." to Swamp_Infodump_Swamps_Choices;
	add "Matteo the Treefrog." to Swamp_Infodump_Swamps_Choices;
	add "Mimic Event." to Swamp_Infodump_Swamps_Choices;
	add "Riker the Naga." to Swamp_Infodump_Swamps_Choices;
	add "Sitatunga Encounter." to Swamp_Infodump_Swamps_Choices;
	add "Soot the Dragomancer." to Swamp_Infodump_Swamps_Choices;
	add "Swamp Goblin Encounter." to Swamp_Infodump_Swamps_Choices;
	add "Sweaty Bear Encounter." to Swamp_Infodump_Swamps_Choices;
	add "Uram the Orogg." to Swamp_Infodump_Swamps_Choices;
	add "Go back to the area selector" to Swamp_Infodump_Swamps_Choices;
	add "Exit the menu." to Swamp_Infodump_Swamps_Choices;
	let Swamp_Infodump_Swamps_Choice be what the player chooses from Swamp_Infodump_Swamps_Choices;
	if Swamp_Infodump_Swamps_Choice is:
		-- "Alon the Water Dragon.":
			say "     Like Helios, Alon is part of Soot's storyline, started in the 'Mysterious Door' event. He is the second dragon you'll capture, and is quite a bit more willing to live in captivity than the rest. He's laid back and prefers absurdity to honesty.";
			say "     Like all the dragons in Soot's storyline, Alon comes with ovoposition content and a heavy focus on breeding/being bred by a feral dragon, though the pregnancy is magically sped along for the player. Mpreg feat is not required! Alon's appearance changes as his pregnancy progresses.";
			VoidsnapsInfoDump_Swamps; [looping back to stay in the menu]
		-- "Baron the Witchdoctor.":
			say "     Baron is in the lizardman village. After completing Kosk's fetch quest, you can go directly to his shop. He also plays a part in Janaz's storyline!";
			say "     Baron is a cockslut. Female players can only eat his ass. Baron is mainly focused on anal sex with him on the receiving end, and he does not have any genitals of his own. Fans of big scaly butts and featureless crotches should enjoy him.";
			VoidsnapsInfoDump_Swamps; [looping back to stay in the menu]
		-- "Capybara Encounter.":
			say "     The capybara is just a monster encounter in the swamps. He is male, and has a focus on sex in the mud. He's available to players around level 9.";
			VoidsnapsInfoDump_Swamps; [looping back to stay in the menu]
		-- "Helios the fire dragon.":
			say "     Helios is the first of the dragons you'll capture at Soot's behest. He doesn't require anything special other than reaching level 16+ and following the quest that Soot gives you. He's initially resistant to your advances, but with such a bratty attitude, one shouldn't feel guilty about forcing themselves on him~.";
			say "     As with all the dragons in Soot's storyline, Helios is heavily focused on oviposition and can be dominated by players of either gender, resulting in magically sped up pregnancies for players, or a more conventional pregnancy if Helios is bred by the player. Players may also have sex with him immediately after he gives birth, if they have a penis.";
			VoidsnapsInfoDump_Swamps; [looping back to stay in the menu]
		-- "Ignacio the poison dart frog.":
			say "     Part of an overarching storyline within the swamps, Ignacio is the older brother of Matteo. The player may meet him after Kosk asks them for help with investigating a series of disappearances.";
			say "     Ignacio contains some light drugging and does not quite have sex scenes yet, as his storyline is still progressing. However, the player can watch him get molested by Riker as part of the existing storyline. Look forward to later incest scenes and light dating between the player and Ignacio.";
			VoidsnapsInfoDump_Swamps; [looping back to stay in the menu]
		-- "Kosk the Lizardman.":
			say "     Kosk is the lizardman that blocks the entrance to the lizardman village. You can access his scenes by taking on his quest, which is to find seasoning for him to cook with. You can find said seasoning by exploring from the grey abbey library door for 'Spicy Encounter.'";
			say "     Kosk's content is focused around public sex. Canonically he's bisexual, but there's something secretive about him, and the way everyone in the village seems to come to him with their problems. Perhaps there's something else going on that you might find out later. ;)";
			VoidsnapsInfoDump_Swamps; [looping back to stay in the menu]
		-- "Matteo the Treefrog.":
			say "     Ignacio's younger brother. Is introduced as part of Ignacio's storyline. He's been broken in by Riker and forced to perform all sorts of sex acts. He's blatantly addicted now, and seeks out the sensory thrills he's become accustomed to. Like Ignacio, he doesn't yet have his own content to work through after the quest, but that'll change soon enough!";
			say "     Ignacio's content is focused around soft-mindbreak, sex addiction, and (later) incest. You'll likely be able to romance him as well as his brother!";
			VoidsnapsInfoDump_Swamps; [looping back to stay in the menu]
		-- "Mimic Event.":
			say "     Initially a crate of supplies in the swamps, it turns out to be a writhing mass of tentacles that seeks to impregnate the player as part of its life cycle. The player doesn't get to hold onto said eggs for long, but that's part of the fun! Find it by hunting for Suspicious Package in the swamps!";
			VoidsnapsInfoDump_Swamps; [looping back to stay in the menu]
		-- "Riker the Naga.":
			say "     First introduced as the antagonist of Ignacio and Matteo's quest, Riker can be broken down into the player's sex slave, dosed with enough orc cum to forcibly turn him into an orc breeder (sending him off to the orc lair to be used off-screen), or sided with to earn his trust and betrays the frog boys.";
			say "     Riker likes to drug, break in sexually, and sell creatures of all genders and species. Staying on his good side requires a certain level of submission, but if you commit yourself a bit too much, he may take advantage of that and use you to make a quick buck. As a sex slave he's far more useful to the player and quietly lets them do as they like. A followup scene for him as an orc breeder is also planned.";
			VoidsnapsInfoDump_Swamps; [looping back to stay in the menu]
		-- "Sitatunga Encounter.":
			say "     Coming in both male and female variants, the Sitatunga encounters involve a rarely seen swamp antelope. Players can find and play with them by searching in the swamps at around level 8.";
			VoidsnapsInfoDump_Swamps; [looping back to stay in the menu]
		-- "Soot the Dragomancer.":
			say "     Soot is currently only a bit player as part of the dragon harem questline started by finding the Curious Door event in the swamps. As you collect and breed the dragons, he'll become less decrepit and may find himself feeling more up to having some fun. Stay tuned!";
			VoidsnapsInfoDump_Swamps; [looping back to stay in the menu]
		-- "Swamp Goblin Encounter.":
			say "     The swamp goblin encounter can be found in the swamps (duh!) where male players will find he's not quite as turned off by large insertions as you'd think. The bigger you are the more he seems to enjoy it. Bet you didn't think that someone that small could fit something so huge! Players looking to have some size related fun can find him at around level 10.";
			say "     The swamp goblin is mostly focused around size difference and belly bulging, with a healthy dose of monsterfucking.";
			VoidsnapsInfoDump_Swamps; [looping back to stay in the menu]
		-- "Sweaty Bear Encounter.":
			say "     The sweaty bear is just a jogger on a run through the swamps. He gets a little excited by exercise, and will fight you when you happen by him. Don't worry though, he doesn't mean anything by it!";
			say "     Focused around musk and sweat, the bear is more than willing to fuck you, let you fuck his sheath, or eat your vagina! Put him through his paces if you happen to run into him.";
			VoidsnapsInfoDump_Swamps; [looping back to stay in the menu]
		-- "Uram the Orogg.":
			say "     First found wandering the swamps, Uram is an orc-variant called an Orogg. Much larger than the average orc, he's got grey-ish skin, sloshingly full pecs, and an intense need to pamper those he sees as his son. Choosing to drink from his chest will result in a full body transformation that lets the player conform to his perfect daddy's boy, and will let the player impregnate him.";
			say "     Characterized by pseudo-incest, Uram wants to pamper the player, giving them a belly full of milk and empty balls, then sending them on their way. While you aren't REALLY his son, don't tell him that. You don't want to make Daddy cry~.";
			VoidsnapsInfoDump_Swamps; [looping back to stay in the menu]
		-- "Go back to the area selector":
			VoidsnapsInfoDump;
		-- "Exit the menu.":
			say "     Exiting the swamp signpost infodump.";

to VoidsnapsInfoDump_Zoo:
	say "     [bold type]Which content would you like information on?[roman type]";
	let Swamp_Infodump_Zoo_Choices be a list of text;
	add "Rhino Encounter." to Swamp_Infodump_Zoo_Choices;
	add "Go back to the area selector" to Swamp_Infodump_Zoo_Choices;
	add "Exit the menu." to Swamp_Infodump_Zoo_Choices;
	let Swamp_Infodump_Zoo_Choice be what the player chooses from Swamp_Infodump_Zoo_Choices;
	if Swamp_Infodump_Zoo_Choice is:
		-- "Rhino Encounter.":
			say "    The rhino encounter can be found fairly early on in the zoo. It's mostly focused on somnophilia and sex in the mud, with a side of nonconsensual sex for players that lose to him.";
			VoidsnapsInfoDump_Zoo; [looping back to stay in the menu]
		-- "Go back to the area selector":
			VoidsnapsInfoDump;
		-- "Exit the menu.":
			say "     Exiting the swamp signpost infodump.";

to VoidsnapsInfoDump_Decline:
	say "     <See you when you need information again! Remember, just say 'Swamp Signpost' to return to these menus.>";



VoidsnapsInfoDump2 is an action applying to nothing.

Understand "Swamp Signpost" as VoidsnapsInfoDump2.

carry out VoidsnapsInfoDump2:
	VoidsnapsInfoDump;



Swamp Signpost ends here.