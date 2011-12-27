Version 7 of Cute Chinchilla Girl For FS by Trav begins here. 
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]

"Adds a Cute chinchilla Girl to Flexible Survivals Wandering Monsters table"
[Description text for this Extension.]

Section 1 - Monster Responses

[ Use To say for overlong behaviours that would make the table difficult to read and understand. Typically needed if there are alot of cock/species/cunt checks. ] 
chinchilladefeat is a number that varies.
to say chinchilla attack:
	if chinchilladefeat is 0: [ first time losing to a chinchilla ]
		say "The cute little ball of fluff gives a high pitched chitter as she triamphantly jumps on your chest, her little plump chinchilla paws sinking gently into your chestflesh.  She stretches up gently giving you a view of her many small breasts lining all the way down her front to the top of a tight and still slightly human chinchilla sex.  'Honey I'm much too fast for you to catch you silly thing,' twitching her tail and tickling you down your belly. Looking at you longingly with soft green eyes, she takes hold of your chin and gives you a long deep kiss.  Her little whiskers tickling your face, sending a long strong heat down your throat.  'Mmm.. that was nice honey she says leaping from your chest, maybe I'll find you again when you are more suitable for some real fun!'  The little chinchilla squeaks before quickly scampering away'";
		now chinchilladefeat is 1;
	otherwise:
		if chinchilladefeat > 0: [ Prefer female action]
			if cunts of player > 0:
				if cunt length of player is less than 15 and cunt width of player is less than 25:
					say "'Still too slow for me! The little chinchilla chitters scampering up to you.  She stands giving you a bit of a seductive pose her many breasts wobbling slightly, before abruptly pouncing you to the ground.  Suddenly your face is filled with swollen chinchilla cunt, hot and swollen dripping with honey.   'Lick' She demands digging her small claws into your chest softly.  Her juice sends tingles down your tongue and you quickly find yourself lapping and carressing the dribbling snatch with gusto.  The chinchilla girl squeals in delight!  Moaning and grinding against your face, the tight mound swelling and growing visibly before your eyes, allowing your tongue to explore further. Her many breasts swell slightly,gently starting to dribble milk along your torso, running over your sides, as she lets out a triamphant 'Squeee!'  Soaking your face and neck in the process, sending shockwaves of tingling heat down your body.  She gently pops free of your face, sticky juices still connecting the slightly as they dribble down your chin. 'Mmm... That was good honey let's play again soon!'  She jumps from your chest fluffs and shakes herself cutely before retreating into the brush.";
					increase cunt width of player by 3;
					increase cunt length of player by 2;
					increase libido of player by 15;
					increase breasts of player by 2;
				otherwise:
					if chinchilladefeat > 0: [ Prefer female action]
						if cunts of player > 0:
							if cunt length of player is greater than 15 and cunt width of player is greater than 25 and libido of player is greater than 50:
								say "Wasting no time in pouncing you down, the chinchilla girl looks at [cunt size desc of player] with big glassy eyes.  'ooohhh! That looks perfect!  She moves downwards dragging her nipples across your [skin of player] body, appearing to plump slightly at the stimulation. The sly little fuzzball kneads gently at your huge petal lips with her huge plump hindpaws and tiny front ones expertly, like it was a huge ball of dough. rubbing her own large glistening sex along it.  You watch with curiousity as she licks her little chops giving a very sly almost sneaky look.   Suddenly the little petite rodent bends her ears back and with and enormous slurrrrk! stuffs her head forwards into the swollen petals.  You let out a long sensual moan as sparks dance in front of your eyes, as your leaking swollen sex betrays you pulliing more and more of the plump little fuzzball inwards.   Two by two her breasts pop inwards till all that is left is her huge plump thrashing paws, which are quickly englufed and pulled within.  You let out a sigh as your pussy closes a bit the last long piece of her fluffy little tail pulling in with a slurp like a long string of spegetti. You can feel her little paw and nipple tips rubbing around your senstive womb pulling wave after wave of little orgasms.  Followed by one of the most mind blowing ones you have ever had, juices explode from your sex and at the same time manage to eject your now sopping wet occupant. [impregchance] The little chinchilla girl squeals happily, rolling on her back and curling her big soft paws, rubbing what looks to be a bit of a swollen tummy.  Her sex dripping with what looks like cum, wondering how that is possible. 'That was lots of fun! Lets do it again sometime!,' she giggles before scurring away into the brush.";
								increase cunt width of player by 3;
								increase cunt length of player by 2;
								increase libido of player by 15;
								increase breasts of player by 2;
			otherwise:
				if chinchilladefeat > 0:[ Prefer male action]
					if cunts of player > 0:
						if cunt length of player is less than 15:
							say "'Still too slow for me! The little chinchilla chitters scampering up to you.  She stands giving you a bit of a seductive pose her many breasts wobbling slightly, before abruptly pouncing you to the ground.  Suddenly your face is filled with swollen chinchilla cunt, hot and swollen dripping with honey.   'Lick' She demands digging her small claws into your chest softly.  Her juice sends tingles down your tongue and you quickly find yourself lapping and carressing the dribbling snatch with gusto.  The chinchilla girl squeals in delight!  Moaning and grinding against your face, the tight mound swelling and growing visibly before your eyes, allowing your tongue to explore further. Her many breasts swell slightly,gently starting to dribble milk along your torso, running over your sides, as she lets out a triamphant 'Squeee!'  Soaking your face and neck in the process, sending shockwaves of tingling heat down your body.  She gently pops free of your face, sticky juices still connecting the slightly as they dribble down your chin. 'Mmm... That was good honey let's play again soon!'  She jumps from your chest fluffs and shakes herself cutely before retreating into the brush.";
							increase libido of player by 15;
		
Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	add "Cute Chinchilla Woman" to infections of girl;
	now name entry is "Cute Chinchilla Woman"; [Name of your new Monster]
	now attack entry is "[one of]She runs swiftly between your legs causing you lose your balance falling back into the ground.[or]With blinding swiftness she gives your ankle a huge chomp![or]She leaps suddenly at you giving your face a swipe with her tiny claws![or]She flails franticly kicking dirt and sharp rocks in all directions ouch![at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "The little ball of fury fluff is almost defeated!  Giving a loud squeak she whirls around suddenly bolting on all fours as fast as her little paws will take her to the nearest underbrush, leaving a huge dust cloud in her wake."; [ Text or say command used when Monster is defeated.]
	now victory entry is  "[chinchilla attack]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.] 
	now desc entry is "A small dainty figure appears jumping out from the brush. Her ears twitch quickly, bringing her attention to you. A small cute chinchilla woman not more than a foot or two tall standing on very large digigrade paws.  Her face flashes with brilliant and attentive green eyes, with a small muzzle with whiskers as long as her body that twitch when she sniffs. She is dressed in a small, brown makeshift cape that covers her back, and drapes down her sides. She is covered in a soft grey pelt down to her long frizzy tail, her underbelly only a slightly lighter shade of grey. You catch a glimpse when she moves that she has many plump breasts that push and squish into each other, but don't seem to hinder her movement in the least. [one of]Not really knowing why you invaded her hunting grounds she fluffs up to defend herself![or]She makes a shrill chittering sound her tail poofing on end as she goes to all fours.[or]You do not belong here she chatters in a high voice![at random],' You wont catch me!";[ Description of the creature when you encounter it.]
	now face entry is "short chinchilla muzzle, small grey mouselike ears, and cute little whiskers adorned on your";[ Face description, format as the text "Your have a (your text) face."] 
	now body entry is "around four feet tall, well toned, with beautiful curves made for speed and grace.  Along with large plump hindpaws that keep you in a digigrade stance but allowing you to walk on all fours easily.";[ Body Description, format as the text "Your Body is (your text)"] 
	now skin entry is "[one of]grey furred[or]downy soft furred[or]furry[at random]";[ skin Description, format as the text "You have (your text) skin"] 
	now tail entry is "You have a cute grey chinchilla tail that fluffs and twitches behind you.";[ Tail description, write a whole Sentence or leave blank. ] 
	now cock entry is "[one of]sheathed[or]chinchilla[or]cute pink[at random]";[ Cock Description, format as you have a 'size' (your text) cock] 
	now face change entry is "your face draws forward into a chinchilla muzzle sprouting soft twitchy whiskers. Your ears migrating to the top of your head twisting into a more rodentlike shape."; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "a soft heat sweeps over you giving a almost falling sensation, shrinking a little smaller.  Your feet grow tremendously leaving you with plump soft chinchilla hind paws, tipped with little black claws. While your hands and arms shrink, as very small tiny claws sprout from your new paw tips."; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "soft warm grey fur spreads rapidly over your form, a lighter grey stripe covering your chest."; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "A long, sprig like tail grows from your butt, complete with a loud *FOOMP!* becoming fluffy."; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "Your shaft tingles with sudden arrousal as it is engulfed in a soft grey sheath, becoming fully pink and rodentlike as it slides back into its new home."; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 10;
	now dex entry is 24;
	now sta entry is 14;					
	now per entry is 12;
	now int entry is 12;
	now cha entry is 10;
	now sex entry is "Both"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 12;			[ How many HP has the monster got? ]
	now lev entry is 4;			[ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ] 
	now wdam entry is 3;			[Amount of Damage monster Does when attacking.]
	now area entry is "Park";	[ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 1;			[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 20;		[ Length infection will make cock grow to if cocks]
	now cock width entry is 11;		[ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 14;			[ Number of Breasts infection will give you. ]
	now breast size entry is 2;		[Size of breasts infection will try to attain ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 30;		[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 35;		[ Width of female sex  infection will try and give you ] 
	now libido entry is 20;			[ Amount player Libido will go up if defeated ]
	now loot entry is "tuft of chin fur";			[ Loot monster drops, ]
	now lootchance entry is 60;		[ Chance of loot dropping 0-100 ]

when play ends:
	if bodyname is "Cute Chinchilla Woman":
		if humanity of player is less than 10:
			say "Following your inner needs, you seek out a soft grassy field and even find other chinchillas.  You spend a great deal of time hunting for food and hiding from the larger predators, when you aren't distracted by trying out the unusual sexual antics of your chinchilla brethren that is.";
		otherwise:
			say "After you are rescued you are snatched up quickly by a producer for making erotic movies and modeling bikinis. Several at once! Your face shows up in many commericals and films as you turn into a huge success!";
			
Table of Game Objects(continued)
name	desc	weight	object
"tuft of chin fur"	"A soft piece of chinchilla fur. Chinchillas are pretty rare maybe it's valuable to someone?"	1	tuft of chin fur

tuft of chin fur is a grab object.

the usedesc of tuft of chin fur is "[tuft of chin fur use]";

to say tuft of chin fur use:
	say "You dont see a real use for this item yet.";
	


[ Edit this to have the correct Name as wall]
Cute Chinchilla Girl For FS ends here.