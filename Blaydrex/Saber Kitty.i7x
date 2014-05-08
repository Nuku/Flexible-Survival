Version 1 of Saber Kitty by Blaydrex begins here.

"Adds Saber Kitty to Flexible Survivals Wandering Monsters table"
[Description text for this Extension.]

Section 1 - Monster Responses

[ Use To say for overlong behaviours that would make the table difficult to read and understand. Typically needed if there are alot of cock/species/cunt checks. ] 

to say saber attack:
	if cocks of player is greater than 0:
		say "The saber kitty swipes at you one more time, ripping your clothes and knocking you down onto your butt. When you stay down she smiles that toothy smile, drawing extra attention to those pearly white fangs of hers. 'Finally, a male to play with.' she says as she saunters over to you, her pussy dripping audibly onto the floor with her desperate, heat-flled need. She frowns when she notices you arent hard. She pushes your chest, making you lay down, and then straddles your face, keeping her pussy just barely out of reach of your face as she begins to lick your cock. She fondles your cock as she continues licking you. Her breasts rub on your stomach. It isnt long before you begin to smell her heat. The scent starts to fog your mind and you begin to breathe deeply, taking in more and more of her scent. It isnt long before her scent and teasing brings you to a painfully hard erection. The second you are hard she purrs loudly in delight and wastes no time in turning around and impaling herself on your rod. She begins to ride you with reckless abandon, a rather large puddle of her juices rapidly forming under you. It doesn't take long before she orgasms on your cock, sending you over the edge. When you finally stop filling her tight cunt she gets up. She smiles her toothy smile again. 'Open wide, love' she says, placing her pussy over your face, letting some of your combined juices drip all over your face. She then reaches down and lifts your balls before licking under them. 'Ooooh. how i cant wait for you to join me in this bliss.' she says before sauntering off, leaving a trail of her juices dripping onto the floor.";
	otherwise:
		say "The saber kitty swipes at you one more time, ripping your clothes and knocking you down onto your butt. When you stay down she smiles that toothy smile, drawing extra attention to those pearly white fangs of hers. 'Mmmmmmmmm. A pussy for the pussy.' she say as she reaches down and begins to finger your cunt. 'Too bad you wont get to use it, slut.' she says before forcing your [face of player] against her drooling cunt. It doesnt take long before your entire face is covered in her juices. The scent of her overpowering heat begins to fog and your cunt begins to throb with intense need. Despite your need, you cant bring yourself to remove your hands from her thighs as you lustfully lick her cunt. She smirks, grinding her drooling cunt against you. 'Such a good slut. It wont be long before you learn how good it is to be a sexy saber kitty like me if you keep this up.' she says, mewling at your efforts to get her off. It isnt much longer before she cums hard over your already soaked face. Before she can go your lust gets the better of you and you begin to tend to her some more. This only bring more mewling and purring from her. 'Oh yes, youll make such a good saber kitty.' she says in a moan. You bring her to several orgasms before you get too tired. She smiles and walks off, leaving a trail of her dripping juices onto the floor and you completely unsated.";
	infect;
  
to say saber loss:
	if cocks of player is greater than 0:
		say "She staggers back as you deal the final blow. After recovering she purrs happily at finding someone so strong.She approaches you with her toothy smile, drawing extra attention to her pearly white fangs. She gently rubs herself against you, the scent of her heat filling the air. 'Wanna play with the saber kitty, love?' she asks, mewling. Its hard to think. Do you take her up on the offer or do you run before it is too late? You might risk infection if you give in";
		if player consents:
			say "The scent of her heat is just too unbearable for you. Sensing your waivering judgement she smirks and purrs loudly in your ear. She reaches down and begins fondling your balls as she nuzzles your cheek, her sharp fags brushing against your cheek. You can't take much more and throw her to the ground. You begin to violently fuck her, wanting nothing more than to breed this sexy saber kitty. She moans loudly, her pussy juices forming a puddle under her. It doent take long before you blow your load into her, causing her to purr. 'Thanks, love. How about you clean me out a bit?' she entices. Who could say no to such a sexy kitty? You pull out and put your face next to her pussy.Before you have a chance to react she grabs your head and forces you into her cunt. 'Open wide, love. I want you to get every bit of it so you can become a sexy saber kitty like me!' she says, before pushing out all the cum in her cunt into your mouth as well as a bunch of her own juices. You have no choice but to swallow it all. 'Good, slut. Keep it up and youll have such a wonderful time.' she mewls before sauntering off, leaving a trail of her dripping juices on the floor.";
			infect;
		otherwise:
			say "You realize she might have some ulterior motive and push her away. She frowns and sighs. 'Alright, maybe next time, love.' she says before sauntering off, leaving a trail of her dripping juices onto the floor.";
	otherwise:
		say "She smiles, realizing you are not male. Somthing about this just doesny seem right. 'Dont worry, love. Youre already on your way to becoming a sexy saber kitty slut like me. Have fun.' she says before sauntering off leaving a trail of her dripping juices onto the floor";
      
Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	add "saberkitty" to infections of girl;
	add "saberkitty" to infections of furry;
		Choose a blank row from Table of random critters;
	now name entry is "Saber Kitty";		[The creature's name as displayed and used in naming descriptions]
	now attack entry is "[one of]The sexy saber kitty pounces on you and bites into your shoulder, sinking her large fangs in. She eventually lets go, but it hurt a lot. [or] She swipes at you with her claws, scratching you. Hopefully that wint leave a mark.[or]She smirks an grinds her body against your. At first nothing seems suspicious, but then she staps your side with her claw, leaving a gash as she jumps away.[at random]";	[Text used when the monster succeeds on an attack]
	now defeated entry is "[saber loss]";
	now victory entry is "[saber attack]";
	now desc entry is "As youre walking you hear a faint dripping on the ground behind you. You rapidly spin around to see a sexy anthro Sabertoothed Tiger in front of you. It doesnt take long to find the source of the dripping sound as you look down to see her red, swollen pussy dripping copious amounts of fluids onto the ground. She is obviously in heat, and the smell hits you hard in seconds. Her body is beautiful and athletic, with abs and faint but powerful muscles. 'Dont worry, love. Youll learn to enjoy the heat and being knocked up.' she adds before pouncing.";
	now face entry is "feline and beautiful female smilodon, with two sexy fangs showing at all times,";[ Face description, format as the text "Your have a (your text) face."] 
	now body entry is "feminine, with curves to your body that are to die for and some sexy abs.  Your arms have muscles that barely show, but show enough to show that you are indeed stronger than it would seem and end in clawed paws that still can grip things.  Your legs have strong thighs for leaping and pouncing on your prey but are shapely and attactive as well as muscled and end in digitigrade feet.";
	now skin entry is "Covered in a soft beige fur that turns white on the front of your torso and the inside of your ass cheeks";
	now tail entry is "A short saber kitty tail that is covered in fur. it is adorable and seems to wag like a dog tail when you get too excited.";[ Tail description, write a whole Sentence or leave blank. ] 
	now cock entry is "Barbed and knotted saber cock";[ Cock Description, format as you have a 'size' (your text) cock] 
	now face change entry is "you feel your ears tingle and move to the top of your head and arch up in a feline fashion. You watch in horror and fascination as your face pushes out into a cute feline muzzle. Your top canine teeth begin to ache as they groy and push their way out so they are always showing."; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "your body aches pleasurably as all excess fat disapates and takes on an athletic and feminine. Your legs creak as they becom digitigrade. Your arms become sleek and yet slightly muscular ending in pawed hands that are fully usable and have claws."; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "soft, short beige fur sprouts all over your body except on the front of your torso and the inside of your legs and butt where it is white."; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "it pushes out into a shapely, feminine, yet muscular ass. You cant help but to moans as a tail begins to push out. It is short and covered in fur, but adorable."; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "you fall to yourknees, humping the air. The end tapers and grows feline-like barbs. The base begins to form a large knot, like that of a canine. As the transformation ends the cock retreats into a newly formed sheathe."; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 10;			[ These are now the creature's stats... ]
	now dex entry is 15;			[ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 10;			[ These values may be used as part of alternate combat.]
	now per entry is 10;
	now int entry is 1;
	now cha entry is 20;
	now sex entry is "Female";		[ Infection will move the player towards this gender.  Current: 'Male' 'Female' 'Both' ]
	now hp entry is 45;			[ The monster's starting hit points. ]
	now lev entry is 10;			[ Monster level.  (Level x 2) XP for victory.  (Level / 2) XP for losing. ]
	now wdam entry is 12;			[ Monster's average damage when attacking. ]
	now area entry is "Outside";		[ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 0;			[ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 0;		[ Length infection will make cock grow to if cocks. ]
	now cock width entry is 0;		[ Cock width, more commonly used for ball size. ]
	now breasts entry is 2;			[ Number of breasts the infection will give a player. ]
	now breast size entry is 5;		[ Size of breasts the infection will try to attain. ]
	now male breast size entry is 0;    [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 15;		[ Depth of female sex the infection will attempt to give a player. ]
	now cunt width entry is 6;		[ Width of female sex the infection will try to give a player. ]
	now libido entry is 95;			[ Target libido the infection will rise towards. ]
	now loot entry is "Smilodon Cum";			[ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 75;		[ Percentage chance of dropping loot, from 0-100. ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 3;				[ Number 1-5, approx size/height of infected PC body:  1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "slender, yet slightly muscled and sexy";	[ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender"   Use [one of] to vary ]
	now type entry is "feline";
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";		[ Row used to designate any special combat features, "default" for standard combat. ]

when play ends:
	if bodyname of player is "Female Husky":
		if humanity of player < 10:
			say "     You cant hold back the urges of your feline need anymorwe. You go in search for a powerful virile male, preferrable another smilodon. Every male you come across you cant help but want to show the pleasures of being a sexy saber kitty, as well as females. Whenever you run across a fellow smilodon you cant help but submit and play around. Your belly is almost always full of an oncoming litter, otherwise you suffer a never ending heat.";
		otherwise:
			say "     You manage to make it out of the city, but something isnt right. There is always a scratching feeling in the back of your mind. Each passing heat the sctratching grows worse and worse. You spend your days trying to get by, living in this new society, but everything seems wrong. You need a male saber and need a pack. It doesnt take long before you find a sexy tiger and seduce him. You dont know how, but you manage to turn him into a Smilodon. This simple act causes you to lose to your infection. Your new mate spends the next day rutting you until you are sure to be with his litter.After that you and he begin to start raping anyone in sight, turning them into saber kitties like yourself, with only your mate as the only male. Within 24 hours the whole city is nothing but Smilodons. The city is then quarentined. You spend the rest of your days doing nothing but breeding, always having a litter growing in you or being in heat.";
		  
Saber Kitty ends here.
