Version 2 of Mannequin by Wahn begins here.
[Version 2 - Meeting Event folded into the monster description]

"Adds a Neuter Mannequin to Flexible Survival's Wandering Monsters table"

MannequinFirstEncounter is a number that varies. MannequinFirstEncounter is normally 0.

Section 1 - Monster Responses

to say mannequin wins:
	say "     The living doll grips you tightly and a strange sensation washes over you, as if part of your being is drained away. Before your eyes, its features change, making it look a bit more like yourself. You take your chance while it's distracted with checking out its new body and run away.";

to say mannequin loses:
	say "     The mannequin silently collapses at your feet. Even though it's thoroughly beaten, it still weakly reaches for you, its face showing a desperate expression. You quickly get some road between it and you before it stands up again.";

to say mannequinDesc:
	setmongender 0;
	if MannequinFirstEncounter is 0:
		say "     Passing by a loading-dock in the warehouse district, you spot two humanoid dogs cutting a hole in the fence and slip through. Curious what the bulldog and german shepherd are doing in there, you inconspicuously follow them between the long rows and stacks of shipping containers.";
		WaitLineBreak;
		say "     'Which one did the coyote say the food was in?' the shepherd asks gruffly, to which the bulldog replies 'A red one, with Transglobal on the side.' Looking up and down the lines of containers, the shepherd wails 'But almost all of them are red!' The bulldog shrugs and walks over to the nearest container and opens it up. 'Oh hey, seventy flatsceen TVs - how... useless, without electricity. Let's check the next one.'";
		say "     The two of them open up several more containers, but find nothing of use in this post-apocalyptic city. 'I'm beginning to think Diego sent us on a wild goose chase,' the shepherd growls. 'Ok, ok... let's just open up this last one, then go back to the park and have some words with that coyote...' his buddy replies, then pulls open another container and yelps in surprise. 'Now that's freaky - for a moment I thought this container was full of people.'";
		WaitLineBreak;
		say "     The german shepherd steps in front of the door and looks in too. 'Nah, those are just those dress dummies they use in stores. Normal lifeless puppets, see...' and pokes the first mannequin in the container in the chest - which promptly grabs him by the arm. Within moments, dozens of mannequins pour out of the container and wrestle both dogs to the ground. They jostle against each other with a desperate tenacity, each trying to touch one of their captives. Then you see them change, taking on characteristics of the dogs - one growing out a muzzle, another suddenly sprouting fur, etc.";
		say "     After the changes stabilize, all of the mannequins lose interest in their captives and start to disperse, each striking out on its own. Left behind on the ground are two more mannequins - those must be the two former dogs, their essence drained away. As they start to get up too, you decide it's time to leave and make your way back to the hole in the fence. One of the mannequins got there before you, though. It might have absorbed the knowledge of its location from the dogs, or just have been lucky. Now it turns to you, eager to make your shape its own.";
		now MannequinFirstEncounter is 1;
	else:
		say "     You cross paths with an animated mannequin which looks like an idealized male in his mid-twenties, with muscled arms, legs and chest and a featureless crotch. It has a pale flesh-colored skin-tone and a chiseled-looking face including sculpted wavy hair. As the mannequin notices you, an almost desperate, needful look crosses its face and it rushes at you.";

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Mannequin";
	now attack entry is "[one of]It hits you in the head, strong enough to daze, but not hurt you.[or]It grabs your arm for a moment with a strong grip before you can pull away. That'll leave quite a bruise.[or]It grabs your leg for a moment with a strong grip before you can pull away. That'll leave quite a bruise.[at random]";
	now defeated entry is "[mannequin loses]";
	now victory entry is "[mannequin wins]";
	now desc entry is "[mannequinDesc]";
	now face entry is "smooth, with striking angular features like a statue";
	now body entry is "that of an idealized male, with washboard abs and muscled arms and legs";
	now skin entry is "pale and flawless";[ format as the text "You have (your text) skin"]
	now tail entry is "";[ write a whole Sentence or leave blank. ]
	now cock entry is "human";[ format as "You have a 'size' (your text) cock ]
	now face change entry is "it shapes itself into a chiseled male visage"; [ format as "Your face feels funny as (your text)" ]
	now body change entry is "your limbs are reshaped into a muscled male form and your chest takes an idealized shape with washboard abs"; [  format as "Your body feels funny as (your text)" ]
	now skin change entry is "all blemishes and hairs vanish, leaving you with flawless pale skin"; [ format as "Your skin feels funny as (your text)" ]
	now ass change entry is "it takes the well-rounded shape of an idealized bubble butt"; [ format as "Your ass feels funny as (your text)" ]
	now cock change entry is "your manhood becomes human-shaped and covered in pale skin"; [ format as "Your cock feels funny as (your text)" ]
	now str entry is 16;
	now dex entry is 22;
	now sta entry is 13;
	now per entry is 16;
	now int entry is 12;
	now cha entry is 15;
	now sex entry is "Neuter";
	now HP entry is 75;
	now lev entry is 10;
	now wdam entry is 10;
	now area entry is "Warehouse";         [ Case sensitive]
	now cocks entry is 0;                  [ number of cocks if sex is 'Male' or 'Both' ]
	now cock length entry is 0;
	now cock width entry is 0;             [ Size of balls ]
	now breasts entry is 2;                [ Number of nipples. ]
	now breast size entry is 0;            [ Size of breasts infection will try to attain ]
	now male breast size entry is 0;       [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;                  [ number of pussies if sex is 'Female' or 'Both' ]
	now cunt length entry is 0;
	now cunt width entry is 0;
	now libido entry is 10;                [ Amount player Libido will go up if defeated ]
	now loot entry is "nullifying powder"; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 35;            [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3;                  [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "idealized";      [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "human";             [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	blank out the nocturnal entry;         [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";

Section 3 - Endings

when play ends:
	if bodyname of player is "Mannequin":
		if humanity of player < 10:
			say "As you succumb to the infection, you drift aimlessly through the city and go for anyone crossing your path, overpowering them and absorbing how they look. Being in the form for an unfortunate soldier whose shape you stole earlier almost gets you out of the city when the military finally moves in, but following your unrestrained urges you try assimilating a medic who wants to check you out. Tasered till you collapse, you end up in a small cell and later get shipped to a research lab, where scientists study how you constantly shift and change. As a quite valuable asset for espionage developments, you never leave that facility again...";
			stop the action; [no other endings - player removed from the city]
		else:
			say "Remaining in control of the urges to acquire the shapes of others and become them, you experiment a bit and learn that with some concentration you can shift without leaving others as identity-less infected mannequins. When the military finally moves in, you're taken to a holding facility, where doctors poke and prod you for days on end. Overhearing two doctors talk, you catch '...ites active and in constant flux. The subject wasn't exposed to a one-time change, but something else. That makes [if player is male]him[else if player is female]her[else]it[end if] far too dangerous to be released. I recommend perm...' Since you don't think you'd get out of there alive - if at all, you use the next chance you get with an orderly and overpower him to flee the facility after absorbing his shape.";
			say "There's quite a bit of panic when people realize you're gone and soldiers swarm out to create roadblocks and hunt for you. It's touch and go for a while, but you manage to avoid capture. A week later and several hundred miles distant, with you laying low in a small town, you think you're home free - until you walk into your motel room and find a man in a suit waiting for you. 'Quite impressive, your escape. We need people like you. A bit of training and you'd make a fine addition to the agency...'";
			say "Recognizing a deal you can't decline, you let yourself be recruited and end up a spy, traveling all over the world. Your ability to become anyone you want to be creates a rumor, then a legend of the super-spy 'The Chameleon'. Eventually movie-directors get a hold of the story and bring out an award-winning series of films about you. You make a game out of appearing as a minor role in every last one of them - never in the same shape twice though.";

Section 4 - Item drop

Table of Game Objects (continued)
name	desc	weight	object
"nullifying powder"	"A small bag of strange, white powder. Your digits tingle when they touch it, but it's otherwise not infectious."	1	nullifying powder

nullifying powder is a grab object.
the scent of nullifying powder is "It has a very obvious, chalky scent about it.".
The usedesc of nullifying powder is "[nullpowderuse]";

to say nullpowderuse:
	say "[line break]     [one of]Upon inspection, it's not particularly infectious and most certainly inedible[or]You briefly inspect the powder[stopping]. You [one of]deduce[or]recall[stopping] that you can apply it to certain parts of your anatomy to reduce their size or remove them outright.";
	let trixieexit be 0;
	while trixieexit is 0:
		say "[bold type]Diminish Anatomy:[roman type][line break]";
		say "(1) [if player is male][link]Cock[as]1[end link][else][italic type]Cock-specific interaction[roman type][end if][line break]";
		say "(2) [if player is male][link]Balls[as]2[end link][else][italic type]Balls-specific interaction[roman type][end if][line break]";
		say "(3) [if player is female][link]Cunt[as]3[end link][else][italic type]Cunt-specific interaction[roman type][end if][line break]";
		say "(4) [if breast size of player > 0][link]Breasts[as]4[end link][else if breasts of player > 0][link]Nipples[as]4[end link][else][italic type]Chest-specific interaction[roman type][end if][line break]";
		LineBreak;
		say "(0) [link]Abort[as]0[end link][line break]";
		while 1 is 1:
			say "Choice? (0-4)>[run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= 4:
				break;
			else:
				say "Invalid entry.";
		if calcnumber is 1:
			if player is not male:
				say "[bracket]Invalid interaction: You don't meet the criteria[close bracket][line break]";
			else if cocks of player is 1 and cock length of player < 4 and ("Male Preferred" is listed in feats of player or "Herm Preferred" is listed in feats of player or "Single Sexed" is listed in feats of player):
				say "     At this point, the powder will have no effect on you.";
			else:
				if cocks of player > 1 and cock length of player > 3:
					say "     Is the goal to remove a spare cock? Otherwise, you'll reduce their size.";
					if player consents:
						decrease cocks of player by 1;
						follow the cock descr rule;
						say "     You apply the powder to a single rod. [if cock length of player > 10]In spite of its size[else]After several applications[end if], it gradually diminishes into nothing, leaving you with [if cocks of player is 1]one cock[else][cocks of player] cocks[end if].";
					else:
						if cock length of player > 29:
							decrease cock length of player by 6;
						else if cock length of player > 18:
							decrease cock length of player by 4;
						else:
							decrease cock length of player by 2;
						follow the cock descr rule;
						say "     You apply the powder to your rods. After a while, they shrink down to the point where they're now [cock size desc of player] in size.";
				else if cock length of player < 4:
					if cocks of player > 1:
						say "     Given how small they are, you could probably remove ALL of them. Shall you? Else you'll only remove one.";
						if player consents:
							if "Male Preferred" is listed in feats of player or "Herm Preferred" is listed in feats of player or "Single Sexed" is listed in feats of player:
								now cocks of player is 1;
								follow the cock descr rule;
								say "     You apply the powder to all of your rods. All except one shrink down to nothing. [italic type]It seems that something prevents you from having less than one cock[roman type].";
							else:
								now cocks of player is 0;
								follow the cock descr rule;
								say "     You apply the powder to all your rods. After a bit of work, they all shrink down to nothing. With no companion, your balls also disappear[if player is internal], though it doesn't really make any visual difference[end if]";
						else:
							decrease cocks of player by 1;
							follow the cock descr rule;
							say "     You apply the powder to a single rod. [if cock length of player > 10]In spite of its size[else]After several applications[end if], it gradually diminishes into nothing, leaving you with [if cocks of player is 1]one cock[else][cocks of player] cocks[end if].";
					else:
						now cocks of player is 0;
						follow the cock descr rule;
						say "     You apply the powder to your rod. After a bit of work, it shrinks down to nothing. With no companion, your balls also disappear[if player is internal], though it doesn't really make any visual difference[end if]";
				else:
					if cock length of player > 29:
						decrease cock length of player by 6;
					else if cock length of player > 18:
						decrease cock length of player by 4;
					else:
						decrease cock length of player by 2;
					follow the cock descr rule;
					say "     You apply the powder to your rod. After a while, it shrinks down to the point where it's now [cock size desc of player] in size.";
				now trixieexit is 1;
		else if calcnumber is 2:
			if player is not male:
				say "[bracket]Invalid interaction: You don't meet the criteria[close bracket][line break]";
			else if cock width of player < 4:
				say "     At this point, the powder will have no effect on you. It seems you'll need to remove your cock[smn] or develop internal genitalia if you want to make them disappear.";
			else:
				if cock width of player > 29:
					decrease cock width of player by 6;
				else if cock width of player > 18:
					decrease cock width of player by 4;
				else:
					decrease cock width of player by 2;
				follow the cock descr rule;
				say "     You apply the powder to [if player is internal]where your sack might be[else]your sack[end if]. After a while, they[if player is internal] seem to[end if] shrink down to the point where you[if player is internal], presumably,[end if] have [ball size].";
			now trixieexit is 1;
		else if calcnumber is 3:
			if player is not female:
				say "[bracket]Invalid interaction: You don't meet the criteria[close bracket][line break]";
			else if cunts of player is 1 and cunt length of player < 4 and cunt width of player < 5 and ("Female Preferred" is listed in feats of player or "Herm Preferred" is listed in feats of player or "Single Sexed" is listed in feats of player):
				say "     At this point, the powder will have no effect on you.";
			else:
				if cunts of player > 1 and cunt length of player > 3:
					say "     Is the goal to remove a spare hole? Otherwise, you'll reduce the size of all of them.";
					if player consents:
						decrease cunts of player by 1;
						follow the cunt descr rule;
						say "     You apply the powder to a single portal. [if cunt length of player > 10 or cunt width of player > 10]In spite of its size[else]After several applications[end if], it gradually diminishes into nothing, leaving your with [if cunts of player is 1]one cunt[else][cunts of player] cunts[end if].";
					else:
						if cunt length of player > 29:
							decrease cunt length of player by 6;
						else if cunt length of player > 18:
							decrease cunt length of player by 4;
						else if cunt length of player > 3:
							decrease cunt length of player by 2;
						if cunt width of player > 29:
							decrease cunt width of player by 6;
						else if cunt width of player > 18:
							decrease cunt width of player by 4;
						else if cunt width of player > 3:
							decrease cunt width of player by 2;
						follow the cunt descr rule;
						say "     You apply the powder to your portals. After a while, they shrink down to the point where they're now [cunt size desc of player] in size.";
				else if cunt length of player < 5 and cunt width of player < 5:
					if cunts of player > 1:
						say "     Given how small they are, you could probably remove ALL of them. Shall you? Else you'll only remove one.";
						if player consents:
							if "Female Preferred" is listed in feats of player or "Herm Preferred" is listed in feats of player or "Single Sexed" is listed in feats of player:
								now cunts of player is 1;
								follow the cunt descr rule;
								say "     You apply the powder to all of your portals. All except one shrink down to nothing. [italic type]It seems that something prevents you from having less than one cunt[roman type].";
							else:
								now cunts of player is 0;
								follow the cunt descr rule;
								say "     You apply the powder to all your portals. After a bit of work, they all shrink down to nothing.";
						else:
							decrease cunts of player by 1;
							follow the cunt descr rule;
							say "     You apply the powder to a single portal. [if cunt length of player > 10 or cunt width of player > 10]In spite of its size[else]After several applications[end if], it gradually diminishes into nothing, leaving your with [if cunts of player is 1]one cunt[else][cunts of player] cunts[end if].";
					else:
						now cunts of player is 0;
						follow the cunt descr rule;
						say "     You apply the powder to your portal. After a bit of work, it shrinks down to nothing.";
				else:
					if cunt length of player > 18:
						decrease cunt length of player by 4;
					else if cunt length of player > 4:
						decrease cunt length of player by 2;
					if cunt width of player > 18:
						decrease cunt width of player by 4;
					else if cunt width of player > 4:
						decrease cunt width of player by 2;
					follow the cunt descr rule;
					say "     You apply the powder to your portal. After a while, it shrinks down to the point where it's now [cunt size desc of player] in size.";
				now trixieexit is 1;
		else if calcnumber is 4:
			if breast size of player is 0 and breasts of player is 0:
				say "[bracket]Invalid interaction: You don't meet the criteria[close bracket][line break]";
			else if breast size of player > 0:
				if breasts of player > 2:
					say "     You have multiple pairs. Is your aim to remove a set, nipples and all? Otherwise you'll reduce the size of all of them.";
					if player consents:
						decrease breasts of player by 2;
						follow the breast descr rule;
						say "     You apply the powder to a single rack. [if breast size of player > 12]In spite of their size[else]After several applications[end if], it gradually diminishes into nothing, leaving you with [if breasts of player < 3]one set of knockers[else][breasts of player] sets of knockers[end if].";
					else:
						if breast size of player > 29:
							decrease breast size of player by 6;
						else if breast size of player > 18:
							decrease breast size of player by 4;
						else:
							decrease breast size of player by 2;
						follow the breast descr rule;
						say "     You apply the powder to your racks. After a while, they shrink down to the point where they're now [breast size desc of player] in size.";
				else if breast size of player < 4:
					if breasts of player > 2:
						say "     Given how small they are, you could probably flatten ALL of them. Shall you? Else you'll remove one entirely, nipples and all.";
						if player consents:
							now breast size of player is 0;
							follow the breast descr rule;
							say "     You apply the powder to all your racks. After a bit of work, they all shrink down until they're completely flat.";
						else:
							decrease breasts of player by 2;
							follow the breast descr rule;
							say "     After a bit of work you manage to remove a set, leaving you with [if breasts of player < 3]a single pair[else][breasts of player] pairs[end if].";
					else:
						now breast size of player is 0;
						follow the breast descr rule;
						say "     You apply the powder to your rack. After a bit of work, they shrinks down until they're completely flat.";
				else:
					if breast size of player > 29:
						decrease breast size of player by 6;
					else if breast size of player > 18:
						decrease breast size of player by 4;
					else:
						decrease breast size of player by 2;
					follow the breast descr rule;
					say "     You apply the powder to your rack. After a while, it shrinks down to the point where it's now [breast size desc of player] in size.";
				now trixieexit is 1;
			else:
				if breasts of player > 2:
					say "     Your chest is completely flat. You could, however, remove your nipples. Shall you remove one set? Else you'll remove all of them.";
					if player consents:
						decrease breasts of player by 2;
						say "     After a bit of work you manage to remove a set, leaving you with [if breasts of player < 3]a single pair[else][breasts of player] pairs[end if].";
					else:
						now breasts of player is 0;
						say "     After a bit of work you manage to remove all pairs of nipples, leaving your chest completely barren.";
				else:
					now breasts of player is 0;
					say "     Your chest is completely flat, so you decide to remove your nipples instead. After a bit of work you manage to remove the pair, leaving your chest completely barren.";
				now trixieexit is 1;
		else:
			say "     You decide against using the item right now and stow it away.";
			now trixieexit is 1;
			add "nullifying powder" to invent of player;

Mannequin ends here.
