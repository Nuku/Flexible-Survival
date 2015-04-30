Version 2 of Mannequin by Wahn begins here.
[Version 2 - Meeting Event folded into the monster description]

"Adds a Neuter Mannequin to Flexible Survival's Wandering Monsters table"

MannequinFirstEncounter is a number that varies.  MannequinFirstEncounter is normally 0.

Section 1 - Monster Responses

to say mannequin wins:
	say "     The living doll grips you tightly and a strange sensation washes over you, as if part of your being is drained away. Before your eyes, its features change, making it look a bit more like yourself. You take your chance while it's distracted with checking out its new body and run away.";

to say mannequin loses:
	say "     The mannequin silently collapses at your feet. Even though it's thoroughly beaten, it still weakly reaches for you, its face showing a desperate expression. You quickly get some road between it and you before it stands up again.";

to say mannequinDesc:
	if MannequinFirstEncounter is 0:
		say "     Passing by a loading-dock in the warehouse district, you spot two humanoid dogs cutting a hole in the fence and slip through. Curious what the bulldog and german shepherd are doing in there, you inconspicuously follow them between the long rows and stacks of shipping containers.";
		say "     [line break]";
		say "     'Which one did the coyote say the food was in?' the shepherd asks gruffly, to which the bulldog replies 'A red one, with Transglobal on the side.' Looking up and down the lines of containers, the shepherd wails 'But almost all of them are red!' The bulldog shrugs and walks over to the nearest container and opens it up. 'Oh hey, seventy flatsceen TVs - how... useless, without electricity. Let's check the next one.'";
		say "     The two of them open up several more containers, but find nothing of use in this post-apocalyptic city. 'I'm beginning to think Diego sent us on a wild goose chase.' the shepherd growls. 'Ok, ok.. let's just open up this last one, then go back to the park and have some words with that coyote...' his buddy replies, then pulls open another container and yelps in surprise. 'Now that's freaky - for a moment I thought this container was full of people.'";
		say "     [line break]";
		say "     The german shepherd steps in front of the door and looks in too. 'Nah, those are just those dress dummies they use in stores. Normal lifeless puppets, see...' and pokes the first mannequin in the container in the chest - which promptly grabs him by the arm. Within moments, dozens of mannequins pour out of the container and wrestle both dogs to the ground. They jostle against each other with a desperate tenacity, each trying to touch one of their captives. Then you see them change, taking on characteristics of the dogs - one growing out a muzzle, another suddenly sprouting fur, etc.";
		say "     After the changes stabilize, all of the mannequins lose interest in their captives and start to disperse, each striking out on its own. Left behind on the ground are two more mannequins - those must be the two former dogs, their essence drained away. As they start to get up too, you decide it's time to leave and make your way back to the hole in the fence. One of the mannequins got there before you, though. It might have absorbed the knowledge of its location from the dogs, or just have been lucky. Now it turns to you, eager to make your shape its own.";
		now MannequinFirstEncounter is 1;
	otherwise:
		say "     You cross paths with an animated mannequin which looks like an idealized male in his mid-twenties, with muscled arms, legs and chest and a featureless crotch. It has a pale flesh-colored skin-tone and a chiseled-looking face including sculpted wavy hair. As the mannequin notices you, an almost desperate, needful look crosses its face and it rushes at you.";

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Mannequin"; [Name of your new Monster]
	now attack entry is "[one of]It hits you in the head, strong enough to daze, but not hurt you.[or]It grabs your arm for a moment with a strong grip before you can pull away. That'll leave quite a bruise.[or]It grabs your leg for a moment with a strong grip before you can pull away. That'll leave quite a bruise.[at random]";
	now defeated entry is "[mannequin loses]";      [ Text or say command used when Monster is defeated.]
	now victory entry is  "[mannequin wins]";       [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "[mannequinDesc]";              [ Description of the creature when you encounter it.]
	now face entry is "smooth, with striking angular features like a statue";
	now body entry is "that of a idealized male, with washboard abs and muscled arms and legs";
	now skin entry is "pale and flawless";[ skin Description, format as the text "You have (your text) skin"]
	now tail entry is "";[ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "human";[ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "it shapes itself into a chiseled male visage"; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "your limbs are reshaped into a muscled male form and your chest takes an idealized shape with washboard abs"; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "all blemishes and hairs vanish, leaving you with flawless pale skin"; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "it takes the well-rounded shape of an idealized bubble butt"; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "your manhood becomes human-shaped and covered in pale skin"; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 16;
	now dex entry is 22;
	now sta entry is 13;
	now per entry is 16;
	now int entry is 12;
	now cha entry is 15;
	now sex entry is "Neuter";
	now hp entry is 75;
	now lev entry is 10;
	now wdam entry is 10;
	now area entry is "Warehouse";						[ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 0;											[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 0;								[ Length infection will make cock grow to if cocks]
	now cock width entry is 0;								[ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 2;										[ Number of Breasts infection will give you. ]
	now breast size entry is 0;								[Size of breasts infection will try to attain ]
	now male breast size entry is 0;					[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;											[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 0;								[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 0;								[ Width of female sex  infection will try and give you ]
	now libido entry is 10;										[ Amount player Libido will go up if defeated ]
	now loot entry is "";          			  	 	[ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 0;     			  		[ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3;											[ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "idealized";	[ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender"   Use [one of] to vary ]
	now type entry is "human";								[ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;									[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;							[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;				[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;						[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";					[ Row used to designate any special combat features, "default" for standard combat. ]

Section 3 - Endings

when play ends:
	if bodyname of player is "Mannequin":
		if humanity of player is less than 10:
			say "As you succumb to the infection, you drift aimlessly through the city and go for anyone crossing your path, overpowering them and absorbing how they look. Being in the form for an unfortunate soldier whose shape you stole earlier almost gets you out of the city when the military finally moves in, but following your unrestrained urges you try assimilating a medic who wants to check you out. Tasered till you collapse, you end up in a small cell and later get shipped to a research lab, where scientists study how you constantly shift and change. As a quite valuable asset for espionage developments, you never leave that facility again...";
			stop the action; [no other endings - player removed from the city]
		otherwise:
			say "Remaining in control of the urges to acquire the shapes of others and become them, you experiment a bit and learn that with some concentration you can shift without leaving others as identity-less infected mannequins. When the military finally moves in, you're taken to a holding facility, where doctors poke and prod you for days on end. Overhearing two doctors talk, you catch '...ites active and in constant flux. The subject wasn't exposed to a one-time change, but something else. That makes [if cocks of player > 0]him[otherwise if cunts of player > 0]her[otherwise]it[end if] far too dangerous to be released. I recommend perm...' Since you don't think you'd get out of there alive - if at all, you use the next chance you get with an orderly and overpower him to flee the facility after absorbing his shape.";
			say "There's quite a bit of panic when people realize you're gone and soldiers swarm out to create roadblocks and hunt for you. It's touch and go for a while, but you manage to avoid capture. A week later and several hundred miles distant, with you laying low in a small town, you think you're home free - until you walk into your motel room and find a man in a suit waiting for you. 'Quite impressive, your escape. We need people like you. A bit of training and you'd make a fine addition to the agency...'";
			say "Recognizing a deal you can't decline, you let yourself be recruited and end up a spy, travelling all over the world. Your ability to become anyone you want to be creates a rumor, then a legend of the super-spy 'The Chameleon'. Eventually movie-directors get a hold of the story and bring out an award-winning series of films about you. You make a game out of appearing as a minor role in every last one of them - never in the same shape twice though.";

Mannequin ends here.
