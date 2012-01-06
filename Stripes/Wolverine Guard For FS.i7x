Version 1 of Wolverine Guard For FS by Stripes begins here.
[Version 1.1 - added exclusions]
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]
"Adds a Wolverine Guard creature to Flexible Survivals Wandering Monsters table, with Impreg chance"
[Description text for this Extension.]

Section 1 - Monster Responses

[ Use To say for overlong behaviours that would make the table difficult to read and understand. Typically needed if there are alot of cock/species/cunt checks. ]

when play begins:
	add { "Wolverine Guard" } to infections of guy;
	add { "Wolverine Guard" } to infections of furry;

wolvloc is a text that varies.
wolvfightresult is a number that varies.

to say losetowolverine:
	now wolvfightresult is 2;
	if lbfight is 0:
		if cunts of player > 0:
			if a random chance of 2 in 3 succeeds:
				say "     The obsessed wolverine knocks you to ground, getting ready to strike again when he starts to sniff at you.  Soon, he[apostrophe]s buried his muzzle between your legs and sniffing your crotch.  He grabs you roughly and drags you back towards the [wolvloc] he was protecting so aggressively.";
				say "     Keeping you pinned down, he looks around for any other threats to his post.  This gives you a moment to look around as well, but you can[apostrophe]t spot anything of use or wealth around.  Any food has long since been eaten by the wolverine and you don[apostrophe]t see anything of particular value to you or anyone in this crisis.";
				say "     Satisfied that he won[apostrophe]t be interrupted, he quickly tears off your remaining clothes and presses his nose against your wet pussy, licking at it before rolling you over.  He quickly mounts you, driving his large, brown cock deep inside you.  He pants and growls as he pounds into you hard and fast, driving his thick meat in over and over again until he finally releases a hot blast of seed deep inside you.";
				say "     [impregchance]";
				say "     As he cum inside you, he grows more gentle, nuzzling you and snuffling at your ear.  He gives your neck and shoulder a few nips before dismounting and firmly sending you on your way.";
			otherwise:
				say "     The obsessed wolverine strikes you down onto the pavement and growls as he strikes you again and again.  His slavering muzzle drips saliva onto you as he snaps those crushing jaws at you.  He batters you until he[apostrophe]s satisfied that you won[apostrophe]t dare return and then finally drives you off from the [wolvloc] he[apostrophe]s protecting so aggressively.";
		otherwise:
			say "     The obsessed wolverine strikes you down onto the pavement and growls as he strikes you again and again.  His slavering muzzle drips saliva onto you as he snaps those crushing jaws at you.  He batters you until he[apostrophe]s satisfied that you won[apostrophe]t dare return and then finally drives you off from the [wolvloc] he[apostrophe]s protecting so aggressively.";
	otherwise if lbfight is 1:
		if cunts of player > 0:
			if a random chance of 2 in 3 succeeds:
				say "     The obsessed wolverine knocks you to ground, getting ready to strike again when he starts to sniff at you.  Soon, he[apostrophe]s buried his muzzle between your legs and sniffing your crotch.  He grabs you roughly and drags you back towards the [wolvloc] he was protecting so aggressively.";
				say "     Keeping you pinned down, he looks around for any other threats to his post.  This gives you a moment to look around for a way out of this predicament, but find none.";
				say "     Satisfied that he won[apostrophe]t be interrupted, he quickly tears off your remaining clothes and presses his nose against your wet pussy, licking at it before rolling you over.  He quickly mounts you, driving his large, brown cock deep inside you.  He pants and growls as he pounds into you hard and fast, driving his thick meat in over and over again until he finally releases a hot blast of seed deep inside you.";
				say "     [impregchance]";
				say "     As he cum inside you, he grows more gentle, nuzzling you and snuffling at your ear.  He gives your neck and shoulder a few nips before dismounting and firmly sending you on your way, forcing you to leave that section of the museum and to head back to the main foyer.";
			otherwise:
				say "     The obsessed wolverine strikes you down to the floor and growls as he strikes you again and again.  His slavering muzzle drips saliva onto you as he snaps those crushing jaws at you.  He batters you until he[apostrophe]s satisfied that you won[apostrophe]t dare return and then finally drives you off from the Medieval History wing of the museum.";
		otherwise:
			say "     The obsessed wolverine strikes you down to the floor and growls as he strikes you again and again.  His slavering muzzle drips saliva onto you as he snaps those crushing jaws at you.  He batters you until he[apostrophe]s satisfied that you won[apostrophe]t dare return and then finally drives you off from the Medieval History wing of the museum.";


to say beatthewolverine:
	now wolvfightresult is 1;
	if lbfight is 0:
		if cunts of player > 0 and libido of player > 39 and bodyname of player is "Wolverine Guard":
			say "     Having managed to beat the wolverine until you finally knocked him down, you look over the powerful male and you feel a yearning inside you.  The excitement of the fight has gotten your wolverine body quite aroused.  Your eyes wander down to the hefty package between his legs and you see that his cock is half-hard as well, aroused by the scent of a strong female.  Do you give in to your urges and ride that thick monster?";
			if the player consents:
				say "     Finding the prospect very enticing, you take a hold of his thick shaft and stroke it to full erection.  He rumbles appreciatively and rocks his hips, thrusting into your warm paw.  Once you[apostrophe]ve gotten him sufficiently ready, you climb atop that thick pole and line it up with your wet pussy.";
				say "     You take it slow at first, despite your instincts screaming to cram it in, letting yourself adjust to its girth and enjoy the feeling of him filling you.  But once you[apostrophe]ve finally gotten it all in, you start riding hard and fast, eager to let this strong male mate with you.";
				say "     As you ride him, you start growling and snapping at him and he growls and nips in return.  As your mating continues, it only grows more loud and aggressive, almost as violent as the fight that led up to it until finally he[apostrophe]s pumping his hot load into you and satisfying that burning need inside you.";
				say "[impregchance]";
				say "     Your mating done, you both settle down, licking and nuzzling each other for a few minutes.  You pull yourself off his flagging erection and head back on your way, leaving him to continue to guard his [wolvloc] with strong, instinctual dedication.";
			otherwise:
				say "     You resist the urge to give in to your lust and turn away, quickly leaving him before you can have second thoughts.";
		otherwise:
			say "     Having managed to beat the wolverine until you finally knocked him down, you give him a final blow to put him unconscious.  You move past him to look at the [wolvloc] was guarding.  You search around carefully, but can[apostrophe]t seem to find anything to warrant the aggressive defense of this location.  Any food around here has already been consumed by the mad creature and there is nothing of material interest for you to use.  You shake your head at the poor fellow, driven by strange instincts to uselessly guard this spot.";
	otherwise if lbfight is 1:
		say "     Having managed to beat the wolverine until you finally knocked him down, you give him a finally blow to put him unconscious.  You move past him to look up at the longship he was guarding, ready to continue with your mission.";


to say wolverinedesc:
	if lbfight is 0:
		say "[wolverinelocation]";
		say "     As you travel through the streets, you are spotted by a large, muscled beast.  Were he not so tall, you would call him stocky, nearly as wide as he is tall, but all muscle.  He has a battered security company [one of]jacket on his animalistic body[or]hat on his animalistic head[at random].  He is covered in dark fur with a few lighter patches.  His face narrows into a dark muzzle with lighter fur above his brow and at his shoulders.  He growls angrily as he watches you.  You spot the company logo on his clothing - Wolverine Security.";
		say "     He is prowling around a [wolvloc], his instincts having locked him into aggressively guarding it.  You seem to have come too close and set him off.  Before you can back away, he charges at you aggressively, powerful paws raised to strike.";
	otherwise if lbfight is 1:
		say "     You find yourself facing off with a large, muscled beast.  Were he not so tall, you would call him stocky, nearly as wide as he is tall, but all muscle.  He has a battered security company jacket on his animalistic body.  He is covered in dark fur with a few lighter patches.  His face narrows into a dark muzzle with lighter fur above his brow and at his shoulders.  He growls angrily as he watches you.  You spot the company logo on his clothing - Wolverine Security.";
		say "     He has moved himself between you and the boat and is approaching to expel the intruder, his instincts having locked him into aggressively guarding his post at the museum.  Stepping over the ropes into the display area seems to have set him off.  Before you can back away, he charges at you aggressively, powerful paws raised to strike.";

to say wolverinelocation:							[sets random location for the wolverine]
	let T be a random number between 1 and 16;
	if T is 1:
		now wolvloc is "cluster of cars";
	if T is 2:
		now wolvloc is "fire hydrant";
	if T is 3:
		now wolvloc is "hotel lobby";
	if T is 4:
		now wolvloc is "condo high-rise";
	if T is 5:
		now wolvloc is "small store";
	if T is 6:
		now wolvloc is "burned-out restaurant";
	if T is 7:
		now wolvloc is "small office building";
	if T is 8:
		now wolvloc is "women's boutique";
	if T is 9:
		now wolvloc is "bank truck, overturned and empty";
	if T is 10:
		now wolvloc is "modern sculpture in a small plaza";
	if T is 11:
		now wolvloc is "phone booth";
	if T is 12:
		now wolvloc is "newspaper stand";
	if T is 13:
		now wolvloc is "chip wagon";
	if T is 14:
		now wolvloc is "sausage stand";
	if T is 15:
		now wolvloc is "bus shelter";
	if T is 16:
		now wolvloc is "parking garage";

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
   Choose a blank row from Table of random critters;
   now name entry is "Wolverine Guard"; [Name of your new Monster]
   now attack entry is "[one of]The aggressive male clubs you with his heavy fist, staggering you for a moment![or]The wolverine slashes his claws across your side before you can pull away![or]The wolverine's teeth snap at you, but you grab his shoulders to keep him from sinking them into you.  This leaves you open for a pair of hard jabs to the breadbasket![or]The powerful creature lands a heavy punch to your temple![or]The guard manages to land a powerful uppercut that rattles your teeth![or]The aggressive creature swings a series of wild punches.  You manage to block some, but the barage wears you down further![at random]"; [Text used when the monster makes an Attack]
   now defeated entry is "[beatthewolverine]"; [ Text or say command used when Monster is defeated.]
   now victory entry is "[losetowolverine]"; [Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
   now desc entry is "[wolverinedesc]";[ Description of the creature when you encounter it.]
   now face entry is "now wolverine's head, with a strong muzzle.  Aside from the lighter patches above your brows, you dark brown fur covers your face";[ Face description, format as the text "Your face is (your text)."]
   now body entry is "stocky and muscled, coiled and itching for a fight";[ Body Description, format as the text "Your body is (your text)."]
   now skin entry is "dark brown fur with lighter patches at your sides, flanks and rear to cover your";[ skin Description, format as the text "You have (your text) skin."]
   now tail entry is "You have a short, thickly furred tail hanging from your rear.";[ Tail description, write a whole Sentence or leave blank. ] 
   now cock entry is "brown";[ Cock Description, format as you have a 'size' (your text) cock]
   now face change entry is "it shifts and changes, forming a short muzzle.  Your new nose and muzzle twitch as your whiskers grow in.  Coarse, dark fur starts to spread over it, giving you a wolverine's head"; [ face change text. format as "Your face feels funny as (your text)." ]
   now body change entry is "it grows tougher, becoming tall, yet stocky in build.  You have wide shoulders and a large body that is all coiled muscle.  Your hands and feet become paw-like, with black claws at the ends of your digits.  You become aware of your own growing scent, strong and mustelid in odor.  You feel yourself filling with aggressive power, as well as an urge to protect... something"; [ body change text. format as "Your body feels funny as (your text)." ]
   now skin change entry is "coarse fur spreads across your body.  It is a dark brown with some lighter patches forming along your sides, flanks and rear"; [ skin change text. format as "Your skin feels funny as (your text)." ]
   now ass change entry is "you start to shift, gaining a short, thickly furred tail"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
   now cock change entry is "it becomes brown in colour, but otherwise human-like in appearance.  As you watch, your new shaft is bundled up in a coarse-furred sheath which spreads down to cover your ballsac as well"; [ cock change text. format as "Your cock feels funny as (your text)." ]
   now str entry is 16;
   now dex entry is 14;
   now sta entry is 18;                    
   now per entry is 12;
   now int entry is 8;
   now cha entry is 10;
   now sex entry is "Female";     [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
   now hp entry is 111;            [ How many HP has the monster got? ]
   now lev entry is 8;            [ Level of the Monster, you get this much xp if you win, or this much xp halved if you loose ]
   now wdam entry is 15;            [Amount of Damage monster Does when attacking.]
   now area entry is "High";    [ Location of monster, in this case the High Rise District]
   now cocks entry is 0;            [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
   now cock length entry is 0;        [ Length infection will make cock grow to if cocks]
   now cock width entry is 0;        [ Size of balls apparently ;) sneaky Nuku]
   now breasts entry is 2;            [ Number of Breasts infection will give you. ]
   now breast size entry is 3;        [Size of breasts infection will try to attain ]
   now male breast size entry is 0;    [ Breast size for if Sex="Male", usually zero. ]
   now cunts entry is 1;            [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
   now cunt length entry is 12;        [ Length of female sex  infection will attempt to give you. ]
   now cunt width entry is 4;        [ Width of female sex  infection will try and give you ]
   now libido entry is 50;            [ Set to zero in this monster to control elsewhere ]
   now loot entry is "";            [ Dropped item.  Key will be used later ]
   now lootchance entry is 0;        [ Chance of loot dropping 0-100 ]


when play ends:
	if bodyname of player is "Wolverine Guard":
		if humanity of player is less than 10:
			say "     You find your growing urge to protect and defend your post increasing.  Cutting short your wandering, you head back to the bunker at the Abbey to clear your head.  Once there, you decide to scout around from top to bottom, making sure it[apostrophe]s secure before you relax.  You find nothing, but still remain on edge, and patrol on guard for any disturbances.  You keep at your post, staying on watch without rest, protecting it from the monsters of the city and the soldiers who later arrive.  You keep it, and its contents, safe from interlopers day after day.";
		otherwise if hp of doctor matt <= 100:
			say "     You hold out until the rescue comes and you are taken in by the military.  You wait impatiently for your release, always on edge and feeling that there[apostrophe]s something you should be doing.  You are eventually moved into the care of Dr. Matt, who has you alternate with Orthas as his personal guard at the research station the military sets him up at to combat the spreading infection.  While on duty, you are tireless in your vigil, protecting your post and feeling a sense of fulfillment from doing so.";
		otherwise:
			say "     You hold out until the rescue comes and you are taken in by the military.  With your false identity never questioned, you wait impatiently for your release, always on edge and feeling that there[apostrophe]s something you should be doing.  One day, you are released and are quickly picked up by a large van.  You are quietly taken to where Dr Mouse is hiding, apparently having funnelled some bribes through a third party to gain custody of you.  He takes you on as his private security guard, watching over him as he conducts his secret research.  He works for a variety of foreign countries and infected factions[if susan is in hidden lab].  Susan continues to accompagny him as an assistant and a lover for you when off duty[end if].  While on duty, you are tireless in your vigil, protecting your post and feeling a sense of fulfillment from doing so.";

[ Edit this to have the correct Name as well]
Wolverine Guard For FS ends here.