Latex Wolf for FS by Hellerhound begins here.
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]

"Adds a LAtex Wolf to Flexible Survivals Wandering Monsters table"

[Description text for this Extension.]

	
Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]

To say latex wolf defeat:
	if libido of player < 50:
		Say "The latex wolf collapses, its head slumped against the ground, and begins to melt away down a nearby stormdrain.";
	if libido of player > 50 and cocks of player is greater than 0:
		Say "The wolf collapses, and you move forward, lifting its rear before it begins to melt, and shove your [cock of player] cock inside its behind. The wolf moans, and continues melting. You pull out before the melting happens near your precious cock, afraid of what might happen.";
	if libido of player > 50 and cocks of player is 0 and cunts of player is greater than 0:
		Say "The wolf melts into a black puddle, draining off into the city. You are unable to sate your lust without touching the melting latex, which is most certainly dangerous.";

To say latex wolf attack:[todo]
	if cunts of player > 0:
		Say "As you fall, the latex wolf rolls you over and sits up, on your hips, impaling you on his red rubbery cock. He then begins to lean forwards and backwards, sliding his doggy shaft in and out of your cunt, squeaking with every thrust. He thrusts faster, and faster, making slapping noises where his black balls hit your ass cheeks, and finally slams your knot inside with a thrust that causes you to hunch up in pain and pleasure. He keeps trying to thrust, even when he is tied, and finally brings himself to orgasm, filling you with black rubbery seed. [impregchance]";
		increase the libido of the player by 60;	
	otherwise:
		say "You fall to the ground, and the wolf pounces, hoping there is something for him to use. When she reveals your endowments, he sighs in disappointment, and raises one leg over you.";
		if the intelligence of the player > 15:
			say "You realize what the wolf is about to do before it does it, and roll out of the way faster than you thought you could. The wolf looks at you, and claws your side before running away.";
			decrease the hp of the player by 8;
		otherwise:
			say "You don't get why the wolf is, oh. The wolf begins to pee on you, yellowish latex spraying over your body, and draining onto the street. The wolf looks at you with satisfaction, and walks off into the city, leaving you to get clean.";
			infect "Latex Wolf";
		 [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.] 


When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Latex Wolf"; [Name of your new Monster]
	now attack entry is "[one of] slaps you with a rubbery pad[or] claws you with plastics nails[or] bites with rubbery teeth[or] pounces forward and bodyslams you[at random]."; [Text used when the monster makes an Attack]
	now defeated entry is "[latex wolf defeat]";
	 [ Text or say command used when Monster is defeated.]
	now victory entry is "[latex wolf attack]";
	now desc entry is "There is rubbery skidding noise, and a black and white latex wolf whips around the corner.";[ Description of the creature when you encounter it.]
	now face entry is "elongated with a muzzle and sharp teeth";[ Face description, format as the text "Your face is (your text)"] 
	now body entry is "small, bent onto all fours";[ Body Description, format as the text "Your Body is (your text)"] 
	now skin entry is "rubbery latex, black furlike patterned";[ skin Description, format as the text "You have (your text) skin"] 
	now tail entry is "Thin and black, your tail whips behind you back and forth.";[ Tail description, write a whole Sentence or leave blank. ]  
	now cock entry is "deep red with a canine knot towards the bottom";[ Cock Description, format as you have a 'size' (your text) cock] 
	now face change entry is "your nose elongates, growing into a muzzle as your teeth sharpen"; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "your body bends, and your spine and skull reform, forcing you down onto all fours"; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "it smoothes, becoming flawless, and growing a black rubbery layer as you watch"; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "a long tail mutates out, black and round, whipping back and forth with your emotions"; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "a knot forms on the base while a sheath forms towards the bottom, and it turns a deep red"; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 16;
	now dex entry is 18;
	now sta entry is 17;					
	now per entry is 16;
	now int entry is 13;
	now cha entry is 12;
	now sex entry is "Male"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 20;			[ How many HP has the monster got? ]
	now lev entry is 5;			[ Level of the Monster, you get this much hp if you win, or this much hp halved if you lose ] 
	now wdam entry is 4;			[Amount of Damage monster Does when attacking.]
	now area entry is "Outside";	[ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 1;			[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 4;		[ Length infection will make cock grow to if cocks]
	now cock width entry is 2;		[ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 0;			[ Number of Breasts infection will give you. ]
	now breast size entry is 0;		[Size of breasts infection will try to attain ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;			[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 0;		[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 0;		[ Width of female sex  infection will try and give you ] 
	now libido entry is 5;			[ Amount player Libido will go up if defeated ]
	now loot entry is "dirty water";			[ Loot monster drops, ]
	now lootchance entry is 0;		[ Chance of loot dropping 0-100 ]
	
[ Edit this to have the correct Name as wall]






Latex Wolf for FS ends here.
