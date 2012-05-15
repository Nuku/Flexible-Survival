Version 2 of Harpy by Nuku Valente begins here.
[Version 2 - Central Library content by Stripes]
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]

"Adds a Harpy to Flexible Survivals Wandering Monsters table, With Impreg chance"
[Description text for this Extension.]

Section 1 - Monster Responses

[ Use To say for overlong behaviours that would make the table difficult to read and understand. Typically needed if there are alot of cock/species/cunt checks. ] 
Harpydefeat is a number that varies.
Harpyconsent is a number that varies.

to say Harpy attack:
	if harpyfight is 3:
		say "The harpy swoops in and grabs you, running her taloned hands over your body as the others close in around you.";
		wait for any key;
	otherwise if hp of player is greater than 0:
		say "She swoops down and grabs you up, pressing her lips to yours. Peace sweeps through this form even as your heart hammers in your chest. You pull her tight as she draws you closer, swept away in the fierce exchange. You are unsure how long you remain like that, but eventually she sets you down and shakes her head, 'We will meet again, I hope.' and she takes off.";
		now Harpyconsent is 1;
		wait for any key;
	otherwise:
		say "She grabs at you with her powerful talons, leaving painful marks even as your body flushes with the warm tingles of nanite infection. She shouts at you angrily, scratching until her anger passes, then, with great pumps born of her frustration, she flaps her wings and retreats.";
		wait for any key;
	now harpyfight is 2;

[ [Harpy loss] ]
To say Harpy loss:
	now harpyfight is 1;
	say "Emitting a sudden foul curse, the young woman takes to the air, fleeing before her wounds can ground her.";
	
	
Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	add "harpy" to infections of girl;
	Choose a blank row from Table of random critters;
	now name entry is "harpy"; [Name of your new Monster]
	now attack entry is "[one of]She manages to get a good grip with a talon around an arm, digging her claws in as her wings-arms beat powerfully.[or]She dive bombs from above, knocking you to the ground.[or]A sudden hug has you pressed to her soft front, only to be released above the ground.[at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "[Harpy loss]"; [ Text or say command used when Monster is defeated.]
	now victory entry is  "[Harpy attack]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.] 
	now desc entry is "An athletic looking young woman with feathery wings attached to her arms like fins and great talons for hands and feet. Her legs are also covered in feathers, and she has a fan of feathers over her butt. She has light, flawless, flesh where exposed on her front and chubby, elfin, face. She would be cute if she wasn't scary.";[ Description of the creature when you encounter it.]
	now face entry is "young woman with large, elfin, ears and unruly red hair that barely reaches your shoulders. While a little chubby, it could pass as a human";[ Face description, format as the text "Your have a (your text) face."] 
	now body entry is "built slightly, with slender curves that remind of a teenaged female and an exposed belly button on your [skin of player] front. Feathers spread over your shoulders and back, light brown in color. Your thighs are covered in downy looking feathers, but shins fade into tough looking bird talons that grip the ground securely. Your arms have wings like fins, with powerful flight feathers ready.";[ Body Description, format as the text "Your Body is (your text)"] 
	now skin entry is "smooth and flawless";[ skin Description, format as the text "You have (your text) skin"] 
	now tail entry is "Above your pert ass is a fan of brown feathers curved upwards. ";[ Tail description, write a whole Sentence or leave blank. ] 
	now cock entry is "human";[ Cock Description, format as you have a 'size' (your text) cock] 
	now face change entry is "a soft warmth flows through your head as it dwindles and rounds to nymph like appeal. Your ears stretch a little to the sides as hair shifts in hue."; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "light brown feathers spread rapidly, covering your shoulders and back. Brown feathers spread over your legs, from the hips down towards your shin where it fades towards yellow scaly skin. Your feet become powerful looking bird talons with wicked claws. Even as you consider reaching to touch, wing fins burst from your arms with new feathers."; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "your skin evens out its blemishes, becoming youthful and smooth."; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "you feel your [skin of player] rump rounding as feathers burst free and form a tail fin, upturned and in a fan spread."; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "it thrums with an alien pleasure."; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 14;
	now dex entry is 16;
	now sta entry is 16;					
	now per entry is 14;
	now int entry is 10;
	now cha entry is 16;
	now sex entry is "Female"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 50;			[ How many HP has the monster got? ]
	now lev entry is 6;			[ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ] 
	now wdam entry is 10;			[Amount of Damage monster Does when attacking.]
	now area entry is "Outside";	[ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 0;			[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 0;		[ Length infection will make cock grow to if cocks]
	now cock width entry is 0;		[ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 2;			[ Number of Breasts infection will give you. ]
	now breast size entry is 3;		[Size of breasts infection will try to attain ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 6;		[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 4;		[ Width of female sex  infection will try and give you ] 
	now libido entry is 60;			[ Amount player Libido will go up if defeated ]
	now loot entry is "Fish";			[ Loot monster drops, ]
	now lootchance entry is 0;		[ Chance of loot dropping 0-100 ]

when play ends:
	if bodyname of player is "harpy":
		if humanity of player is less than 10:
			if centrallib is 7:
				say "     As a harpy in the library, you quietly tend to the stacks as do the others.  The guard outside makes sure that you are rarely disturbed, leaving you and your sisters to quietly read most of the time.  On occasion, you fly out into the city to pluck up a [if cunts of player > 0]male to satisfy your needs and give you an egg for the season.  Sometimes, if he's cute enough, smart enough and quiet enough, you [']allow['] him to stay, making him into the newest harpy of the aerie[otherwise]female or herm to satisfy your lusts, screwing her until you're sure she'll grow round with a harpy egg.  Sometimes, if she's cute enough, smart enough and quiet enough, you [']allow['] her to stay, making her into the newest harpy of the aerie[end if][if cocks of player > 0].  The other harpies also enjoy your cock often, many of them getting eggs from you[end if][if cocks of player > 0 and cunts of player is 0].  You have become an unusual creature of myth and legend, the rare male librarian[end if].";
			if hellHoundLevel > 0:			[Hellhound while taken by the librarians]
				say "[line break]     Lost to your new fate as a harpy at the library, you forget about your deal with the hellhound, troubled only be the occasional, unremembered dream or an uncomfortable feeling when reading stories about deals with the devil.  But he does not forget; your foul contract was only delayed to better prepare you for your coming, unending fate.";
				say "     When that times comes, you are pulled into the pits of Hades and given a life of eternal servitude as a sexual slave to the countless foul hellhounds who guard the gates of Hell.  You're chained down, never to fly freely again and made to mate with the hellish dogs.  The fel beasts breed you incessantly[if cunts of player > 0], filling your womb with corrupted eggs[otherwise], forcing you to mount bitches while the males climb atop you[end if].  The blood-red eggs hatch to release more hellhounds, but these have large, raven wings on their backs, allowing the hounds to fly.  The flying hounds add to the dark forces of the underworld.  They nurse from your [if cunts of player > 0]tits[otherwise]cock[end if]and grow strong, eventually joining the others in mating you until the ends of time.";
			otherwise:
				say "     You take flight and are rejoined with other harpies high in a secluded mountain. You are content with one another except when heat strikes. Once a year, each of you feels a 'special' need that cannot be met by your sisters and you descend on the small city below, plucking up a male to satisfy you and give you an egg to care for, until the next year. Most men prove to be pliable enough, and a few even stay, helping to tend to the aeries while the females do business and hunt.";
		otherwise:
			if Harpyconsent is 1:
				say "     You are rescued and taken back to civilization. Though you greatly enjoy having access to flowing water and easy food, you never forget the tingle of her lips on your own. Eventually, driven by longing, you take flight back to that great city, and eventually find her. Convincing her to leave with you would be a whole other adventure...";
			otherwise:
				say "     Adjusting to life as a harpy takes some getting use to. You find that a good perch works better than a couch, and your diet has a lot more nuts and berries than your old diet ever had. Still, you're mostly human, and getting by proves easy enough for such a young, pretty, looking thing.";


[ Edit this to have the correct Name as wall]
Harpy ends here.