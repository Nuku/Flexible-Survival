jackalboy by Sarokcat begins here.
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]

"Adds a jackalboy to Flexible Survivals Wandering Monsters table, With Impreg chance"
[Description text for this Extension.]

Section 1 - Monster Responses

[ Use To say for overlong behaviours that would make the table difficult to read and understand. Typically needed if there are alot of cock/species/cunt checks. ] 

to say jackalboy attack:
	say "'wow you got here how did that happen.'";
	wait for any key;
	if cocks of player is greater than 0:
		say "yay";
		infect "jackalboy";
	otherwise:
		say "yowza";
		infect "jackalboy";


To say jackalboy loss:
	say "how the heck did you manage to get this, you are just that awesome I guess.'";

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "jackalboy"; [Name of your new Monster]
	now attack entry is "[one of]She riddles you this and that till you cry.[at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "[jackalboy loss]"; [ Text or say command used when Monster is defeated.]
	now victory entry is  "[jackalboy attack]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.] 
	now desc entry is "The jackalboy is watching you!!";[ Description of the creature when you encounter it.]
	now face entry is "narrow canine face, with a long sleek muzzle and a nicely flattened forehead, your golden eyes seem to take in every aspect of the world around you, as your sleek jackal ears swivel around on top of your head to catch the faintest noise. You can[apostrophe]t help but enjoy how much your mistress seems to like your new jackal[apostrophe]s "; [Your have a (your text) face."] 
	now body entry is "slim and sleek, only lightly muscled with slightly digigrade legs and jackal like feet, your slim body is the perfect type of body for a submissive little jackal boy like yourself.";[ Body Description, format as the text "Your Body is (your text)"] 
	now skin entry is "[one of]dark black[or]sleek black furred[or]jackal furred[at random]";[ skin Description, format as the text "You have (your text) skin"] 
	now tail entry is "You have a sleek black furred jackals tail attached to your rear, it seems to sway happily over your tight ass with every step you take.";[ Tail description, write a whole Sentence or leave blank. ] 
	now cock entry is "[one of]canine[or]jackalboy[or]jackal-like[or]knotted[at random]";[ Cock Description, format as you have a 'size' (your text) cock] 
	now face change entry is "Your face tingles as your mouth pushes forward into a sleek black muzzle, and your eyes blur as they shift in both colour and position, new sounds and smells explode through your enhanced senses as your new jackal[apostrophe]s muzzle finishes forming and your ears finish shifting into proper canine ears, swiveling around on top of your head like a proper jackals."; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "it seems to slim down, its form becoming both sleek and slim as it seems to shorten slightly. You can feel your legs shift and change as well, causing you to stumble for a minute as your heels seem to shift upwards on your legs, shifting your weight forward onto the balls of your changing feet. Soon your feet finish changing and you find yourself balancing easily on your new jackal like paws, as you stand on your slender digigrade jackal legs."; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "A soft tingling sensation spreads across your skin as soft, sleek, black jackal fur begins to push its way out of your body, swiftly covering your body in a sexy coat of short dark fur."; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "a strange tingling sensation seems to grow in your rear, as it softens and flattens somewhat, then with a soft pulling sensation you feel a thin black canine tail slowly extend from your tailbone, lengthening until it is down past your knees before the changing stops. ."; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "your shaft thins and changes, its tip tapering to a point while its base seems to swell up slightly before being covered in a soft black sheath of fur."; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 8;
	now dex entry is 20;
	now sta entry is 10;					
	now per entry is 22;
	now int entry is 18;
	now cha entry is 26;
	now sex entry is "Male"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 100;			[ How many HP has the monster got? ]
	now lev entry is 10;			[ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ] 
	now wdam entry is 20;			[Amount of Damage monster Does when attacking.]
	now area entry is "Foyer";	[ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 1;			[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 8;		[ Length infection will make cock grow to if cocks]
	now cock width entry is 4;		[ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 0;			[ Number of Breasts infection will give you. ]
	now breast size entry is 0;		[Size of breasts infection will try to attain ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;			[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 0;		[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 0;		[ Width of female sex  infection will try and give you ] 
	now libido entry is 30;			[ Amount player Libido will go up if defeated ]
	now loot entry is "Chipped tooth";			[ Loot monster drops, ]
	now lootchance entry is 0;		[ Chance of loot dropping 0-100 ]

when play ends:
	if bodyname of player is "jackalboy":
		if humanity of player is less than 10:
			if cocks of the player is greater than 0:
				say "Looking around the city, you finally realize your true purpose in life, and hurry back to the shop where your wonderful mistress is waiting.  You arrive back just in time as not much later your mistress closes up the doors for a while so the military can hunt through the city without bothering the two of you as you become even better acquainted. Eventually after you have worshipped every inch of your lovely mistresses divine body with your tongue and your hands several times, she decides to reopen the shop for a bit.  You are only partially surprised at the fact  that when she opens the store front, it now opens out onto a bustling street in some other city entirely, soon you are happily fetching things and tidying the store for her during the day, while after hours she rewards you for your loyal service by playing with your body and letting you worship her own. As the days pass into years and then decades you realize that you never seem to grow any taller or stronger, and neither you or your mistress ever seem to age, and take it as just another sign of the perfection of your wonderful forms.  You are a perfectly happy pet jackal boy for your mistress, now and forever, just like you wanted to be, and while you will certainly never be her equal or true mate, you are still happy and filled with the joy of being allowed to serve and pleasure her as often as you can.";	
			otherwise:
				say "Looking around the abandoned city, you finally realize that your true purpose in life is in serving and being a happy little jackal pet.  A smile tugs across your muzzle as you hurry back to the mall and your mistress, only to find yourself unable to find the mysterious store any longer, your mistress obviously having given up on you and closed up shop already.  You find yourself at a loss for what to do, as you wander aimlessly through the streets, and are soon captured by one of the groups of beasts still roaming the city, hardly even putting up a fight as they take you back to their lair. The beasts seem surprised at the fact that you don[apostrophe]t change under the influence of the infection, but you soon become a prized treasure, as your servile nature makes you a happy pet for your new masters, and you belly swells again and again with their fully changed offspring.  The fact that you do not seem to age and can bear the offspring of just about any of the beasts in the city, combined with the fact that you are so eager and willing to serve any master now that your mistress has vanished, makes you a valuable treasure in the ongoing struggle in the city.  And you find yourself changing hands several times, even ending up in the military's hands several times, only to betray the humans to your beastial masters as soon as you discover they don[apostrophe]t intend to use you like a proper little pet and fill you with their seed.  Soon the city is left to the beasts, and you spend the rest of your long life in service to one faction or another, sometimes changing factions monthly, other times staying a happy pet of one group for decades.  You really find yourself not caring who you serve, your mind completely overcome with the joy of helping your current masters, and the simple pleasures of being their well used fuckpet.... you just sometimes wish you could find the store again someday, so you could thank the jackal woman properly for all the wonderful help she gave you....";
		otherwise:
			if cunts of the player is greater than 0:
				say "Rescued from the city with your mind intact, you still feel somewhat alone and lonely even as you try to fit back into normal society.  Most nights your thoughts are filled with worry as you think of the lovely Jackal woman back in the city who made you her helper, and find yourself  wondering how she is getting along without you there to help see to her needs. You do ask the military if any of them have come across your one time mistress, only to find that none of them even managed to come across her store no matter how hard they looked.  Feeling somewhat despondent, much like a pet without an owner or a servant without a master, you try to fill the time with work, finding pleasure in serving someone, even if it isn[apostrophe]t anywhere near as much pleasure as serving your mistress brings.  Several people take advantage of your servile nature, and before you know it one of them has sent you to deliver a package to some shady characters in the bad side of town. You are surprised when they seem very eager to see you, and unwrap the package immediately to reveal a small studded collar, you are confused until the person begins to fit the collar tightly around your neck, and realize that you yourself were the real delivery! You struggle slightly, but like any well trained pet, you swiftly find yourself eagerly responding to the commands of your new master, and are soon unable to even think about resisting his commands glad to finally have someone to serve properly, as a pet and slave instead of as servant. Your new master wastes no time in breaking you in himself, and you soon come to enjoy every minute of your new life spent serving him and his friends both with your talents and your body.  Eventually your master gives you the best reward of all, by filling your belly with his seed, and granting you the joy of bearing more slutty little pets to eventually serve his every whim, and you can[apostrophe]t even imagine any other fate could be more glorious then this new life is.";  
			otherwise:
				say "Rescued from the city with your mind intact, you still feel somewhat alone and lonely even as you try to fit back into normal society.  Most nights your thoughts are filled with worry as you think of the lovely Jackal woman back in the city who made you her helper, and find yourself wondering how she is getting along without you there to help see to her needs. You do ask the military if any of them have come across your one time mistress, only to find that none of them even managed to come across her store no matter how hard they looked.  Feeling somewhat despondent, much like a pet without an owner or a servant without a master, you try to fill the time with work, finding pleasure in serving someone, even if it isn[apostrophe]t anywhere near as much pleasure as serving your mistress brought you.  You wander through many jobs, a number of people enjoying your servile attitude as you do whatever they want, your heart growing heavier with every day as you long for a proper master or mistress to serve again.  Eventually while on a task for your current employer, you pass by a familiar looking shop door in the local mall, you immediately stop what you are doing, and abandon your task as you happily step into a very familiar shop and find your mistress looking up at you with a grin from across the counter.  Your heart sings with joy as you realize that somehow, even after being taken out of the city, you have found your way back to the place you now belong...";  


[ Edit this to have the correct Name as wall]
jackalboy ends here.