Version 8 of Messy Pig For FS by Anonymous begins here.
[Version 8 - Victory sex]
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]

"Adds a Monster name to Flexible Survivals Wandering Monsters table"
[Description text for this Extension.]

Section 1 - Monster Responses

[ Use To say for overlong behaviours that would make the table difficult to read and understand. Typically needed if there are alot of cock/species/cunt checks. ] 
to say messypigattack:
	if cunts of player > 0:
		Say "The pig girl charges at you one last time, and in your weakened state you fall backwards landing painfully on your butt. The pig quickly pins you down with her heavy body. She turns, and your vision is filled with large, fat, pig butt. Perhaps due to being lazy she lies down, drowning your face in her behind, as she hungrily goes about eating you out! Clearly this creature has an appetite for your sex! She digs her snout deep as she laps at it greedily, and you can do nothing but struggle weekly as she pins your head with her huge butt. After some time the pleasure of the pig girls meal becomes impossible to ignore, and you find your body quivering as you cum. The Pig finally stands up and waddles off. You cough, finally having fresh air as you climb to your knees shakily. ";
	else:
		say "The pig girl looks you over and huffs angrily. Apparently you're not quite what she wanted! She turns around, giving you a large view of her large behind before she kicks some dirt and mud into your face. You sneeze, and by the time you are able to see again she is gone.";


to say beatthepig:
	if ( cockname of player is "Messy Pig" or cockname of player is "Piggy" ) and libido of player > 33 and cocks of player > 0:
		say "     The pig, when realizing that the encounter is not going well, turns to make a run for it.  But as you catch a glimpse of her wet pussy as she turns away, your porcine cock throbs with need.  Before you have a chance to think about it, you leap atop her, making her squeal loudly.  She struggles to pull away, but you manage to keep a grip on the sow and pull out your throbbing pig sticker.  With a loud, piggish oink, you thrust your stiff penis into her cunt.  She continues to squirm and struggle, but it soon becomes less a matter of her trying to get away as more part of the game of fucking the sow.  She squeals and paws at the ground with her hoof-like hands as you thrust into her again and again.  Your cock throbs inside her as you drive it in one last time, [if cock length of player > 19]making her belly bulge with your overgrown meat, [end if]pumping your hot cum deep inside her as your porcine cock seeks to breed this plump sow.  When you're finished with her, you give her ass a swat, sending her squealing again as she waddles away quickly, dripping your semen from her well-used pussy as she goes.";
	otherwise:
		say "     The pig, when realizing that the encounter is not going well, turns tail and waddles away faster than you thought possible. You hear its squeals of terror die down as it leaves your range of hearing. Looks like you win!";

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--;
[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	add "Messy Pig" to infections of girl;
	add "Messy Pig" to infections of furry;
	Choose a blank row from Table of random critters;
	now name entry is "Messy Pig"; [Name of your new Monster]
	now attack entry is "[one of]The Pig creature charges at you, slamming forcefully into your stomach and knocking the wind out of you![or]Chomp! The Pig bites your arm. Perhaps disappointed in your taste, she backs off and prepares for another attack.[at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "[beatthepig]"; [ Text or say command used when Monster is defeated.]
	now victory entry is  "[messypigattack]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.] 
	now desc entry is "You hear a strange snorting sound, and looking around you see a bizarre creature. It rests on all fours, but its body seems human enough to stand on two legs. It appears to be a large, pinkish humanoid. She's quite fat, and has a large pig snout for a face. Floppy pig ears also adorn her head, and peak through her oddly human hair. Six breasts in two rows line her underside, and over her large bottom there is a cute and curly pig's tail. Her hands end in cloven hooves, as do her feet. She spots you and looks up at you with hungry eyes! Uh oh!";[ Description of the creature when you encounter it.]
	now face entry is "a pudgy face with a large pig's snout and two floppy ears";[ Face description, format as the text "Your face is (your text)."] 
	now body entry is "fat and heavy, and also somewhat smelly";[ Body Description, format as the text "Your Body is (your text)."] 
	now skin entry is "a pink-ish hue, more like that of a Pig then a human";[ skin Description, format as the text "You have (your text) skin."] 
	now tail entry is "Twisting to look around with some difficulty, you can see you have a curly, pig tail.";[ Tail description, write a whole Sentence or leave blank. ] 
	now cock entry is "";[ Cock Description, format as you have a 'size' (your text) cock] 
	now face change entry is "you feel an odd feeling against your nose, as if invisible hands are molding and shaping it. As well as stretching it. Right before your eyes you see your nose deform, become large and snout-like, perfectly matching that of a pig. Your ears can also be felt changing into large and floppy versions of their former selves"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "your stomach gurgles, and your body quickly start to put on fat! Your small frame billows with sudden and heavy fat completely ruining your figure. There is a mildly unpleasant smell in the air after the change as well, and it does not take long to realize it's you"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "it tingles all over, as it's colour shifts mildly. The change isn't too obvious at first, but you quickly realize you're much pinker then you used to be"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "it starts to rumble, and grow. Become comically large and fat. As if that weren't bad enough, a pinch of your tail bone signifies the growth of a curly pig tail to call your own"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "becomes pink and human-like"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 12;
	now dex entry is 12;
	now sta entry is 17;					
	now per entry is 12;
	now int entry is 8;
	now cha entry is 8;
	now sex entry is "Female"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 50;			[ How many HP has the monster got? ]
	now lev entry is 3;			[ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ] 
	now wdam entry is 3;			[Amount of Damage monster Does when attacking.]
	now area entry is "Mall";	[ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 0;			[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 8;		[ Length infection will make cock grow to if cocks]
	now cock width entry is 4;		[ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 6;			[ Number of Breasts infection will give you. ]
	now breast size entry is 4;		[Size of breasts infection will try to attain ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 6;		[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 4;		[ Width of female sex  infection will try and give you ] 
	now libido entry is 45;			[ Amount player Libido will go up if defeated ]
	now loot entry is "";			[ Loot monster drops, ]
	now lootchance entry is 0;		[ Chance of loot dropping 0-100 ]

[See Philip: 'Hungry Boar Man' by hiccup for endings]
	
[ Edit this to have the correct Name as wall]
Messy Pig For FS ends here.