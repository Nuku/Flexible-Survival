Mushroom Men by AGentlemanCalledB begins here.
"Adds a Mushroom creature with altattacks to Flexible Survival's Wandering Monsters table"

Section 1 - Monster Responses

MMC is a number that varies.
MMP is a number that varies.
SporeCloud is a number that varies.[@Tag:NotSaved] SporeCloud is usually 0.

when play begins:
	add { "Mushroom Men" } to infections of guy;
	add { "Mushroom Men" } to infections of humorous;
	add { "Mushroom Men" } to infections of humanoid;

to say losetoMushroomMen:
	now SporeCloud is 0;
	say "     With your strength worn down by the mushroom men's assault, you are unable to resist as they drag you to the ground, pushing you onto your [if player is female]back[else]stomach[end if]. The small crowd erupts into cheers, shouts and sharp whistles as they begin stripping you of your gear, leaving your body on display for them. Soon there are dozens of tiny hands on your exposed body, stroking and teasing you[if breast size of player > 0 and a random chance of 1 in 2 succeeds]. 'Mmm, they're even better face to face,' one of the mushroom men shouts as he nestles himself between your breasts, stroking one roughly while he pinches the other's nipple, causing you to moan[else if player is mushroombodied or player is mushroomskinned]. 'Just couldn't stay away, huh babe?' comments one of the mushroom men as he rubs against your mushroom form[end if].";
	say "     Eventually the mushroom men begin to congregate at your [if player is female]groin, several of them pulling your legs apart as a small group from the back of the crowd pushes forward[else]ass. One of the larger mushrooms gives it a firm smack, complimenting your [one of]firm[or]cute[or]sexy[or]hot[at random] bottom before waving a group from the back of the crowd over[end if]. Leading this group is a rather large-looking mushroom with a disturbingly phallic look to his cap and body. The two following him look relatively normal, but they are significantly larger than the rest of the group. [one of]'I'm gonna show you a good time babe,'[or]'I hope your ready for this toots,'[or]'I bet you can't wait for this hun,'[at random] says the cock-shaped shroom as he lines the tip of his cap up with your [if player is female]dripping cunt[else]clenched pucker[end if] before his two large companions lift him into the air by his legs, slowly pushing his cap into your body.";
	WaitLineBreak;
	say "     You can't help but moan as the two large mushrooms begin working their phallic brother like a bizarre living dildo, driving him into your body over and over again while he teases your inner walls with his ungentle hands. As the fucking continues the rest of the group begins to drift to the rest of your body teasing any erogenous spots they can find as you fall deeper and deeper in your lust-filled haze. [if player is female]When one of the mushrooms finally begins pinching and tweaking your clit, it all becomes too much and you scream in ecstasy as you cum hard, soaking the two large mushrooms at your crotch in your feminine juices as your spasming tunnel clamps tightly around the fungal intruder, attempting to milk his soft body as if it were a real cock. You feel him squirming inside you, either trying to escape your tight grip or further pleasure you, drawing your orgasm out as each movement sends shivers of pleasure through you[else if player is male]As the fungal fucking builds to a rapid pace, you find your hands drawn to your unattended cock, stroking your erect length in time with the movement of the phallic mushroom. You groan loudly as you finally climax, blowing your load onto the ground beneath you as the mushrooms make a few final thrusts[end if].";
	say "     When the mushroom man is finally pulled from your body[if player is female] with a wet slurp and rush of fluids[end if], he takes a moment to shake himself off before giving each of his larger companions a high five. [one of]'Catch ya later, hun,'[or]'Can't wait to do this again, babe,'[or]'Let's do this again some time, honey,'[at random] your unusual lover shouts over his shoulder as he waves the rest of the group over, leading them back into the forest and leaving you in a well-fucked heap on the ground.[if player is mushroombodied] As you lay there, recovering, you feel a warm tingling welling up inside you as the mushroom man's fungal spores settle within, exciting your mushroom body.[impregchance][end if]";

to say beattheMushroomMen:
	say "     With their numbers dwindling, the few mushroom men who remain standing begin to lose their brazen confidence. Seeing them falter, you move forwards aggressively, chasing the last of them off into the surrounding forest.";

to say MushroomMendesc:
	setmongender 13; [creatures are male]
	now SporeCloud is 0;
	say "     While walking [one of]down a path[or]through some overgrown brush[or]through a dimly lit clearing[at random] you hear [one of]'Hey toots!'[or]'Hey hot stuff!'[or]'Hey cutie!'[or]a sharp wolf whistle[at random] [one of]behind you[or]to your right[or]to your left[or]just ahead of you[at random]. Glancing around you try and locate the source of the call, spotting some movement in a large cluster of mushrooms at the base of a nearby tree. Slowly the pack of mushrooms pull themselves from the ground and turn to face you, giving you a clear view of the partially humanoid forms.";
	say "     The mushroom men come in significant variety, with several distinct shapes and colors, the most concerning among those being the group of strangely phallic-looking ones. While most of them are roughly a foot tall, there are a couple of larger fungi among them, peaking at nearly two feet. While lacking any visible gender, they all seem to carry a distinctly male presence. They begin shouting and cheering crudely as they move towards you.";

to say MushroomMenFaceTF:
	now MMC is a random number between 1 and 5;
	now MMP is a random number between 1 and 3;
	say "the color drains out of it and all your hair falls away. Weight begins building at the top of your head as the pale, smooth flesh begins to expand, growing into a large mushroom cap covered in [if MMC is 1]white[else if MMC is 2]red[else if MMC is 3]pale yellow[else if MMC is 4]pale orange[else if MMC is 5]brown[end if] flesh[if MMP is 1] with off-white spots[else if MMP is 2] with off-white splotches[else if MMP is 3] of varying shades[end if]";


Section 2 - Monster Insertion

Table of Random Critters (continued)
name	enemy title	enemy name	enemy type	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	DayCycle	altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of Random Critters;
	now name entry is "Mushroom Man"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is "Mushroom Men";
	now enemy name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]The group cheers as several of their members run out towards you, shouting lewd comments and offers as they strikes at your lower body.[or]Several of the larger mushrooms grab one of their smaller brethren and toss him at you. [']How [']bout a kiss hun?['] shouts the flying mushroom man, just before he bounces off your face.[or]Several of the larger mushrooms grab one of the smaller members of their group and fling him at you, much to his disapproval. He makes several rude comments and gestures at his brethren as he flies through the air before bouncing off the top of your head.[or][']Why don't you let us show you a good time hot stuff?['] one of the mushrooms asks with a smirk, before several of them leap out of the pack and grab onto your legs, pinching and squeezing you wherever they can.[or]There is a sharp wolf whistle behind you, and you realize some of the group have split off to flank you. Before you have a chance to react several fungi from each group are launched into the air towards you. While most of them miss their target, one lands safely on your shoulder, grabbing your face and pulling you into a rough kiss before you can shake him off.[at random]"; [ Successful attack message ]
	now defeated entry is "[beattheMushroomMen]"; [ Text when monster loses. ]
	now victory entry is "[losetoMushroomMen]"; [ Text when monster wins. ]
	now desc entry is "[MushroomMendesc]"; [ Description of the creature when you encounter it. ]
	now face entry is "mostly human looking with cute[if player is female], feminine[end if] features and a smooth, pale complexion. The large mushroom cap atop your head, however, is far more unusual. It has [if MMC is 1]white[else if MMC is 2]red[else if MMC is 3]pale yellow[else if MMC is 4]pale orange[else if MMC is 5]brown[end if] flesh[if MMP is 1] with off-white spots[else if MMP is 2] with off-white splotches[else if MMP is 3] of varying shades[end if]"; [ Face. Format as Your face is [face of player]. ]
	now body entry is "that of a small mushroom person, with a slim[if player is female], feminine[end if] build and compact features. You are roughly three and a half feet tall from the ground to the top of your [if player is mushroomfaced]cap[else]head[end if]. While your hands are still mostly human, with the notable exception of your missing fingernails, your feet have lost much of their definition, leaving them looking not unlike the stalk of a mushroom"; [ Body. Format as "Your body is [body of player]." ]
	now skin entry is "pale, spongy"; [ Skin. Format as "Looking at yourself, your body is covered in [skin of player] skin." ]
	now tail entry is "Despite its tight appearance, your cute little ass is actually quite soft and spongy feeling[if player is mushroombodied], much like the rest of your mushroom body[end if]."; [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "mushroom-shaped"; [ Cock. Format as "You have a 'size' [cock of player] cock." ]
	now face change entry is "[MushroomMenFaceTF]"; [ Face TF text. Format as "Your face tingles as [face change entry]." ]
	now body change entry is "the world seems to enlarge around you. As your body continues shrinking you gain a slim[if player is female], feminine[end if] build, leaving you with a small, but mostly human looking form. Just as you think your changes are coming to an end, you find yourself struggling to stay upright as new changes begin in your feet. They rapidly lose their definition as they reshape into round, bulbous shapes, leaving them looking much like the stalk of a mushroom"; [ Body TF text, format as "Your body tingles as [body change entry]. ]
	now skin change entry is "any blemishes and hair are swept away. Slowly the color drains out of you, leaving you with smooth, pale, mushroom-like flesh"; [ Skin TF text, format as "Your skin tingles as [skin change entry]. ]
	now ass change entry is "it pulls into a small, tight form"; [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "it shifts to a vaguely mushroom-like shape, with a bulbous, mushroom cap-shaped head and a smooth, stalk-like shaft"; [ Cock TF text, format as "Your groin tingles as [cock change entry]." ]
	now str entry is 12; [ These are now the creature's stats... ]
	now dex entry is 16; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 15; [ These values may be used as part of alternate combat.]
	now per entry is 12;
	now int entry is 10;
	now cha entry is 15;
	now sex entry is "Female"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 24; [ The monster's starting HP. ]
	now lev entry is 3; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 4; [ Monster's average damage when attacking. ]
	now area entry is "Park"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 0; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 0; [ Length infection will make cock grow to if cocks. ]
	now cock width entry is 0; [ Cock width, more commonly used for ball size. ]
	now breasts entry is 2; [ Number of nipples the infection will give a player. ]
	now breast size entry is 3; [ Size of breasts the infection will try to attain. ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 9; [ Depth of female sex the infection will attempt to give a player. ]
	now cunt width entry is 3; [ Width of female sex the infection will try to give a player. ]
	now libido entry is 70; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 1; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]slim[or]small[or]petite[or]fungal[at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "mushroom"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false; [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false; [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "MushroomMen"; [ Row used to designate any special combat features, "default" for standard combat. ]
	now BannedStatus entry is false;

Section 3 - Alt Combat

Table of Critter Combat (continued)
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)	altstrike (rule)
"MushroomMen"	retaliation rule	--	--	swarmattack rule	15	--	--	--	sporecloud rule	--

this is the swarmattack rule:		[damage bonus based on remaining health]
	choose row monster from the Table of Random Critters;
	let basicdam be ( wdam entry * a random number between ( 80 - ( peppereyes * 4 ) ) and 120 ) / 100;
	let dam be basicdam;
	let basicdam be ( basicdam * monsterHP ) / HP entry;
	let dam be dam + basicdam;
	if hardmode is true and a random chance of 1 in ( 10 + peppereyes ) succeeds:
		now dam is (dam * 150) divided by 100;
		say "The enemy finds a particular vulnerability in your defense - Critical Hit![line break]";
	say "     The [name entry] [one of]attack[or]swarm[or]rush[at random] you as a group, [one of]grabbing at your limbs, trying to drag you down[or]attacking you from all sides[or]groping and teasing your body as they swarm over you[at random]. With [if (( monsterHP * 100 ) / HP entry ) > 75]the group still at full strength, the attack easily overwhelms your defenses[else if (( monsterHP * 100 ) / HP entry ) > 50]the majority of the group still fighting, the assault is quite effective[else if (( monsterHP * 100 ) / HP entry ) > 25]most of their group injured or defeated, the attack is only somewhat effective[else]the majority of the group defeated, the attack is severely weakened[end if]. You suffer [special-style-2][dam][roman type] damage.";
	now damagein is dam;
	say "[noshieldabsorbancy]"; [unable to use shield effectively - attacked from multiple angles]
	if absorb > dam:
		now absorb is dam;
	if absorb > 0:
		say "You prevent [special-style-1][absorb][roman type] damage!";
	decrease HP of the player by dam;
	increase HP of player by absorb;
	follow the player injury rule;
	say "You are [descr].";

this is the sporecloud rule:      [Spore aura following spore blast attack]
	choose row monster from Table of Random Critters;
	if SporeCloud is 0 and a random chance of 1 in 5 succeeds:
		say "     As the [name entry] continue fighting their excited movements begin releasing fungal spores into the air!";
		increase SporeCloud by a random number between 1 and 3;
	if SporeCloud > 0:
		if face mask is equipped:
			say "     The air is still filled with fungal spores, but your face mask [one of]prevents you from breathing them in[or]protects you from their influence[or]keeps you from inhaling them[at random].";
			decrease SporeCloud by 1;
			if SporeCloud is 0:
				say "     [one of]With a merciful gust of wind[or]As the battle continues[or]As your fighting begins to move away[at random], the lingering spore cloud finally dissipates.";
		else:
			let dam be wdam entry / 4;
			increase dam by a random number between 0 and 1;
			say "     [one of]Breathing heavily as a result of your continued fighting[or]As you try to catch your breath[or]Taking a deep breath[at random], you inhale the lingering airborne spores, causing a [one of]painful fit of coughing[or]warm tingling in your chest[or]powerful sneeze[at random]. You suffer [special-style-2][dam][roman type] damage.";
			decrease HP of the player by dam;
			if bodyname of player is "Mushroom Men":
				say "     The fungal spores have [one of]an especially strong[or]an unusual[or]a powerful[at random] effect on your mushroom body, arousing you slightly.";
				increase libido of player by a random number between 1 and 3;
			decrease SporeCloud by 1;
			if SporeCloud is 0:
				say "     [one of]With a merciful gust of wind[or]As the battle continues[or]As your fighting begins to move away[at random] the lingering spore cloud finally dissipates.";
			follow the player injury rule;
			say "You are [descr].";
			LineBreak;
			if HP of player < 1 or libido of player > 109:
				if HP of player <= 0, now fightoutcome is 20;
				if libido of player >= 110, now fightoutcome is 21;
				lose;

Section 4 - Definitions

Definition: a person is mushroomfaced:
	if facename of player is "Mushroom Men", yes;
	no;

Definition: a person is mushroomskinned:
	if skinname of player is "Mushroom Men", yes;
	no;

Definition: a person is mushroombodied:
	if bodyname of player is "Mushroom Men", yes;
	no;

Definition: a person is mushroomcocked:
	if cockname of player is "Mushroom Men", yes;
	no;

Definition: a person is mushroomtailed:
	if tailname of player is "Mushroom Men", yes;
	no;

Section 5 - Endings

when play ends:
	if bodyname of player is "Mushroom Men":
		if humanity of player < 10:
			say "     As the fungal infection begins to take root in your mind, you find yourself drawn back to the park. You wander to forested paths aimlessly for some time before coming across a small, clear glade with a single large tree at its center. Attracted to the unusual peace of this place, you settle down at the base of the tree, eventually drifting off to a deep sleep as your body begins to change further.";
			say "     When you finally awaken, you find yourself rooted to the ground just below the knees and your limbs fused to your body, making you look much more like a simple giant mushroom at a glance. However, with the exception of your missing limbs, you still have a rather shapely body, and the wandering groups of mushroom men that happen upon you are more than happy to help you enjoy it. Several groups frequently make return trips to your glade, ensuring your sexual desires are always satisfied. Often after these visits you find your body reacting to the spores left behind by your company, both inside your body and out, causing you to release fertile spores of your own into the nearby soil where more groups of mushroom men quickly grow.";
			say "     The life of a mushroom sextoy for the many mushroom men of the forest is a simple one, but with your mind long lost to the fungal infection you are never unhappy to live it.";
		else:
			say "     When rescue finally arrives, the military scientists are intrigued by your unusual fungal infection but are forced to rush you through the processing camp once you are deemed safe so they can focus on bigger problems. Due to your size, life outside the city is difficult at first, but eventually you find your calling working in a small plant nursery. Working in the soil and tending the plants seems to come naturally to you, and the small business becomes quite prosperous thanks to your efforts.";
			if humanity of player < 30:
				say "     After some time you begin to find small mushrooms growing in the gardens you work increasingly often and find yourself strangely attached to them, transplanting them to a small unused greenhouse at the edge of the property. One evening the nursery's owner sees you sneaking off to the abandoned greenhouse after your shift and quietly follows behind you. When he bursts in on you as you tend to your private mushroom garden, you turn just in time to see many of the mushrooms pull themselves out of the soil and tackle your boss to the ground.";
				say "     You find yourself equal parts horrified and aroused as you watch the mushroom men you spored violate him, coating him inside and out with their infectious spores. Before your eyes, he rapidly changes into curvy female mushroom with her arms and legs fused to her stalk-like body leaving her totally immobile. When the mushroom men finally finish and settle back into the soil, you gather up your ex boss and plant her safely in a large flowerbed at the back of the greenhouse. With the nursery's owner gone, the business soon falls into your hands and you lead it into a prosperous future with your most popular new product, decorative flower pots filled with a colorful variety of mushrooms.";
			else:
				say "     The owners of the nursery even give you a small greenhouse of your own on the property to call home. You take to collecting the unusual plants created by the infection in your small garden home, many of them being perfectly suited to sating your body's sexual desires after a long day of working the nursery.";

Mushroom Men ends here.
