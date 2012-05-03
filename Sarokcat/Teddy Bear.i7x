Teddy bear by Sarokcat begins here. 
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]

"Adds a giant teddy bear to Flexible Survivals Wandering Monsters table"
[Description text for this Extension.]

Section 1 - Monster Responses

when play begins:
	add { "Teddy bear" } to infections of girl;
	add { "Teddy bear" } to infections of furry;

[ Use To say for overlong behaviours that would make the table difficult to read and understand. Typically needed if there are alot of cock/species/cunt checks. ] 
to say teddy bear attack:
	If cocks of player is greater than 0:
		say "The giant stuffed bear lets out a happy cry as you collapse, before quickly climbing on top of you. You soon see that someone has stitched a large opening in the crotch, right where a cunt should be. Before you can think about it too much, she quickly stuffs your [cock of player] cock into her waiting opening. You cry out as her velvety insides caress you, her body moving and twisting on top of you as her insides massage you like a velvet glove, ripping one of your most intense orgasms ever out of you. Soon your mind begins to cloud over with pleasure as she tirelessly rides you to orgasm after orgasm, hardly pausing at all as she runs her soft plush hands up and down your body, her bearlike muzzle planting soft kisses over your face the entire time. Eventually your body can[apostrophe]t take anymore, and you pass out in a haze of pleasure.  Waking up, there is no sign of your plush tormentor, realizing she has probably gone off to pleasure someone else, you quickly gather up your belongings and leave while you can.";
	otherwise:
		say "The giant stuffed bear lets out a happy cry as you collapse helplessly. It[apostrophe]s hands wander your body for a minute, stripping you naked before it plops down next to you and begins to rub its soft plush body on you. You quickly realize it is actually a female bear, or at least someone has made an appropriate opening, as she rubs herself on your thighs. She then lowers her bearlike muzzle to your female opening and begins to lick and rub at you with her long tongue and furred muzzle, causing you to moan in pleasure. Her plush fur and soft whiskers tickle your thighs as her flexible tongue massages your insides, causing you to clench and rub your legs along her soft sides as the pleasure builds, until finally your orgasm shoots through you, causing you to cry out as you cover her plush face in your female juices.  Seeming somewhat smug the giant teddy bear lifts her damp muzzle up, licking it clean as she moves up beside you, gathering you into her soft fluffy arms as you drift off into an exhausted slumber.  Waking up later there is no sign of the big fluffy bear, making you feel vaguely sad and lonely as you gather up your belongings and leave.";

To say teddy bear loss:
	say "The strange plush animal whimpers in defeat as it[apostrophe]s stuffing leaks out all over the place, It hurriedly gathers some of its stuffing up before waddling away, shooting scared glances back over its shoulder at you, making you feel vaguely guilty for beating up on a poor stuffed animal.'";
		
	
Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Teddy bear"; [Name of your new Monster]
	now attack entry is "[one of]The bear windmills its arms and crashes into you, knocking you down.[or]The strange plush bear takes a moment out of combat to give you a big fuzzy hug, causing you to feel vaguely unsettled.[or]Its large plush hands come down hard on your head, making you wonder through the ringing in your ears just what the heck its stuffed with, lead?.[or]Jumping up as it charges, the big fluffy bear knocks you flat as it crashes to the ground.[or]Singing along with the fair music, the fluffy bear prances around seemingly at random, until it ends up ramming into you.[or] Charging forward with its oversized head lowered, the giant bear rams right into you, knocking you both down.[at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "[teddy bear loss]"; [ Text or say command used when Monster is defeated.]
	now victory entry is  "[teddy bear attack]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.] 
	now desc entry is "A giant teddy bear, covered in soft pink fur toddles down the midway towards you, moving surprisingly fast on its round plush legs '[one of]Oh good, I was looking for someone to play with![or]Don[apostrophe]t you want a prize?[or]Take me home with you![or]Don[apostrophe]t you want a cuddle?[or]You would look great if you were fluffy like me![or]You will be my carnival prize![at random]' she says as she charges towards you, her large roundish arms windmilling dangerously.";[ Description of the creature when you encounter it.]
	now face entry is "large teddy bear like face, with a short muzzle and rosy cheeks, your big black eyes seeming comical and cute, and your mouth is pulled upwards by your muzzle so it seems as if you are always smiling goofily. Type of";[ Face description, format as the text "Your have a (your text) face."]
	now body entry is "Rounded in the middle with somewhat round arms and legs, and plump, plush, paw-like hands, your body almost feels like it is full of some sort of strange stuffing that moves around as you walk, poking yourself you can see your clawed paw sink deeply into your stuffed side with almost no pain whatsoever";[ Body Description, format as the text "Your Body is (your text)"] 
	now skin entry is "[one of] brown furred[or]softly furred[or]fake furred[or]strangely plush[at random]";[ skin Description, format as the text "You have (your text) skin"] 
	now tail entry is "You have a short plush little bear tail attached to your rear, while it doesn[apostrophe]t seem to be made of flesh and blood, you can still feel it as if it were.";[ Tail description, write a whole Sentence or leave blank. ] 
	now cock entry is "[one of]plush[or]Teddy bear[at random]";[ Cock Description, format as you have a 'size' (your text) cock] 
	now face change entry is "your face balloons outwards as your head seems to swell up, your cheeks stretching out and a cute little muzzle forming as your face becomes that of a happy giant teddy bear"; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "it shifts and plumps outwards, your hands and feet becoming fatter and rounder, making it hard to balance as you seem to become much more like a children[apostrophe]s toy."; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "your flesh tingles and sprouts a soft thick brown pelt of plush fake fur"; ["Your skin feels funny as (your text)" ]
	now ass change entry is "it plumps up, making you feel like you are sitting on some sort of padding, looking behind you, find your new fabric like ass has also sprouted a short little bear tail, which you find yourself wiggling a few times, surprised at how well the bit of fabric responds.."; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "it shifts and seems to fill with some sort of strange stuffing, making it both more sensitive and flexible."; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 14;
	now dex entry is 16;
	now sta entry is 20;					
	now per entry is 15;
	now int entry is 8;
	now cha entry is 18;
	now sex entry is "Female"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 50;			[ How many HP has the monster got? ]
	now lev entry is 5;			[ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ] 
	now wdam entry is 7;			[Amount of Damage monster Does when attacking.]
	now area entry is "Midway";	[ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 0;			[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 0;		[ Length infection will make cock grow to if cocks]
	now cock width entry is 0;		[ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 0;			[ Number of Breasts infection will give you. ]
	now breast size entry is 2;		[Size of breasts infection will try to attain ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 14;		[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 8;		[ Width of female sex  infection will try and give you ] 
	now libido entry is 30;			[ Amount player Libido will go up if defeated ]
	now loot entry is "lucky horseshoe";			[ Loot monster drops, ]
	now lootchance entry is 0;		[ Chance of loot dropping 0-100 ]

when play ends:
	if bodyname of player is "teddy bear":
		if humanity of player is less than 10:
			say "Surrendering to your new instincts, you lie low when the rescue comes, and stow away In the back of one of the trucks, acting like nothing more then a large stuffed animal. Eventually sneaking away when no one is looking. You wander around several cities, appearing to be a lost toy or placing yourself in donation bins until someone takes you home and you can convert them into another plush animal like yourself. Eventually someone tracks you down on purpose by following the rumors, pretending to still be a normal stuffed toy you listen to him explain his plan, before deciding to go along with it. [line break]It turns out he is the owner of an 'adult' shop that rents out several rather kinky dolls and plushies to people to use, you and he proceed into a lucrative partnership where he rents you out to an unsuspecting buyer, and when the time is right you convert the buyer into a new animal yourself, and you both return to the shop to be rented out again.  It takes some planning but eventually you even manage to convert your shop partner as well, and soon you both have a large collection of other adult animal toys ready for any occasion.";
		otherwise:
			say "You are happy when the rescue finally comes, although the rescuers don[apostrophe]t really know what to make of you and your teddy bear body.  Eventually being cleared as noninfectious you find a job at one of the large malls playing with the children and advertising for the mall. After a time one of the people there gives you a card with a strange web address on it, checking it out later leads you to a whole underground fetish of people fascinated with plush animals.  Getting in contact with the person who gave you the card, you quickly end up moonlighting at an adult club for people with this strange fetish, partying all night and getting many compliments on your wonderful 'costume'.";
	

[ Edit this to have the correct Name as wall]
Teddy bear ends here.

.