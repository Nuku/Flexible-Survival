Version 7 of Yamato Dragon For FS by Kohryu begins here. 
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]

"Adds a Yamato Dragon to Flexible Survivals Wandering Monsters table, With Impreg chance"
[Description text for this Extension.]

Section 1 - Monster Responses

[ Use To say for overlong behaviours that would make the table difficult to read and understand. Typically needed if there are alot of cock/species/cunt checks. ] 
to say Yamato Dragon attack:
	say "The male dragon lowers his head to sniff at you.";
	if cocks of player is not greater than 0 and cunts of player is greater than 0:
		Say "After he finishes sniffing you he starts to speak, though he doesn't open his mouth so you're not sure how he is speaking.  'A woman, good.  My body has been...needy, lately.'  He then breathes a plume of blue fire over you, it doesn't burn or hurt, but your clothing disintegrates, revealing all of your body for him to see.  The male dragon then grabs you and lifts you into the air as he stands up on his hind legs.  You look down to see what the dragon has in store for you, and your gaze is met by a massively huge dragon cock, pulsing with it's engorgement.  There's no way you could possibly take that monster of a cock...could you?";
		wait for any key;
		if cunt width of player is less than 10:
			say "The dragon lowers you toward his huge cock and you brace yourself for the pain, but as the cock enters your cunt is quickly stretched to it's limit, and the head of the cock is barely more then half in.  The dragon can see that you're just not big enough for him, and he knows that forcing it would tear you in half.  With a sigh the dragon puts you down as his cock slips back into his body.  Without a word the dragon flies away to look for another female, leaving you relieved that you didn't die by dragon rape today.";
		otherwise:
			say "The dragon lowers you toward his huge cock and you brace yourself for the pain, you are stretched nearly to the limit before the head of the dragon's cock finally goes all the way in with a loud pop.  The dragon gives a growl of satisfaction, while you wince in pain at the large insertion.  Slowly the huge male begins to work you up and down on his shaft, his cock pulling and pushing at your inside, getting deeper and deeper until he hits the entrance to your womb.  You're not even a third of the way down his shaft, but he doesn't seem mind and starts working you on that third a little faster.  You know this should hurt beyond belief, but his cock hits absolutely everything and before you know it you're moaning uncontrollably.  The dragon is working you quicker now, pulling out to the head of his cock before slamming it back to your cervix, making juices spray out of your pussy with every pump.  Suddenly the dragon roars and his cock hardens even more, making even tighter as a torrent of dragon cum rushes into you, your belly bulging obscenely as it floods your womb.[impregchance]  You struggle to breath as the dragon continues to rock you up and down his cock, pumping more and more of his seed into you.  The cum sprays out around his cock from the pressure of him fucking you, and after minutes feeling like you were going to explode he finally stops with one last pump of his cock, shoving it as far into you as he can it pushes past your cervix into your womb and extending your cunt until you can see his cock bulging out of you from the inside.  After he's done it takes the dragon a couple tugs to remove his dick from your womb and body, as it pops free so much cum pours from your used cunt that it looks like a white waterfall.  He places you gently on the ground and flies away without a word.  After all that it takes you a while to pick yourself up an walk away on wobbly legs. ";
	otherwise:
		Say "The dragon doesn't like what he smells and says 'Useless.' before flying off.";
	
Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--;
[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Yamato Dragon"; [Name of your new Monster]
	now attack entry is "[one of]snaps it's neck forward like a snake to bite at you.[or]whips it's tail around, smacking your body off the ground and through the air before landing roughly onto the ground.[or]inhales deeply before breathing a wave of blue fire over you, strangely it doesn't burn but every pain receptor on your body screams in agony.[at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "You finally manage to knock the dragon off balance, but before it falls onto the ground he starts to levitate into the air and says 'You've won this battle, but I will not be slain so easily.' as he flies away."; [ Text or say command used when Monster is defeated.]
	now victory entry is  "[Yamato Dragon attack]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.] 
	now desc entry is "As you're walking through the park you look up and notice a serpent-like creature flying and coiling it's way through the sky.  As you try to figure out how it's flying with no wings the creature spots you staring at it and within an instant it flies to and lands in front of you.  The massive serpent-like dragon looks down upon you with piercing eyes and you suddenly wish you were anywhere but here.";[ Description of the creature when you encounter it.]
	now face entry is "mostly human but with shining silver hair and a mouth-full of bladed teeth";[ Face description, format as the text "Your face is (your text)."] 
	now body entry is "lean and wiry muscled";[ Body Description, format as the text "Your Body is (your text)."] 
	now skin entry is "overlapping green scaled";[ skin Description, format as the text "You have (your text) skin"] 
	now tail entry is "You possess a very long green scaled tail with a fin-like mane of silver hair at the end.";[ Tail description, write a whole Sentence or leave blank. ] 
	now cock entry is "smooth and dark red dragon";[ Cock Description, format as you have a 'size' (your text) cock] 
	now face change entry is "your teeth sharpen into blades and your hair changes into a shining silver color"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "it becomes leaner and taller with strong wiry muscles"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "green overlapping circular scales grow over most of your body, with finer yellow-green scales growing over your chest and belly"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "a very long green scaled tail bursts forth from where your tail-bone used to be.  You take a second to look at it and move it around, and you notice a fin-shaped mane of silver hair that's at the end of the tail.  Done looking at it you move on"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it and your balls are absorbed into your body.  As you wonder what just happened to your junk, your new smooth and dark red dragon cock pops out of it's slit and quickly swells to full size.  It doesn't take you long to realize you can control the state of your erection with just a thought, after messing around with it awhile you command your cock back into your body and move on"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 22;
	now dex entry is 20;
	now sta entry is 20;					
	now per entry is 18;
	now int entry is 20;
	now cha entry is 10;
	now sex entry is "Female"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 100;			[ How many HP has the monster got? ]
	now lev entry is 10;			[ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ] 
	now wdam entry is 35;			[Amount of Damage monster Does when attacking.]
	now area entry is "Park";	[ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 0;			[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 0;		[ Length infection will make cock grow to if cocks]
	now cock width entry is 0;		[ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 0;			[ Number of Breasts infection will give you. ]
	now breast size entry is 0;		[Size of breasts infection will try to attain ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 24;		[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 15;		[ Width of female sex  infection will try and give you ] 
	now libido entry is 45;			[ Amount player Libido will go up if defeated ]
	now loot entry is "";			[ Loot monster drops, ]
	now lootchance entry is 0;		[ Chance of loot dropping 0-100 ]
	
[ Edit this to have the correct Name as wall]
Yamato Dragon For FS ends here.