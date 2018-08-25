Unicorn by Sarokcat begins here.

"Adds a Unicorn to Flexible Survival's Wandering Monsters table"


Section 1 - Monster Responses

to say Unicorn attack:
	if player is female:
		say "Stop... Haroldtime.[line break]";
		say ".'";
		infect "Unicorn";
	else:
		say ".[line break]";
		say "ment...";
		infect "Unicorn";

To say Unicorn loss:
	say "     Knocking the unicorn to the ground, you once again show that brute force can triumph over speed and precision, her lithe sprinter's body not able to take the punishment you can dish out. She scrambles away from your vicious assault, all four paws scrabbling helplessly along the ground for a second, before managing to find traction. You sigh as she darts away. Even moving as slowly and painfully as she now is, you know she is still far too fast for you to catch. You watch her as she leaves, the unicorn, constantly shooting nervous glances back at you until she is out of sight.'";


Section 2 - Monster Insertion

Table of random critters (continued)
name	enemy title	enemy name	enemy type	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Unicorn";
	now enemy title entry is "Unicorn Barman";
	now enemy name entry is "Harold";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "His shining horn mesmerizes you completely, and you submit totally to his every sexual whim, becoming a complete and total plaything of the powerful unicorn.";
	now defeated entry is "[Unicorn loss]";
	now victory entry is "[Unicorn attack]";
	now desc entry is "Sexy barkeep of DUUUUM.";
	now face entry is "sexy equine muzzle, with a beautiful spiraling horn which almost seems to catch and reflect the light extending from your forehead above your new unicorn-like"; [ Face description, format as "Your face is (your text)."]
	now body entry is "slim and lithe, it is almost the very picture of perfection as you balance easily on your beautiful silvery hooves, their soft chiming noise when you walk seeming to fill the air around you with beauty, even as your dainty hoof tipped hands trace over your soft and lovely new curves"; [ Body Description, format as "Your Body is (your text)"]
	now skin entry is "[one of]Beautiful white furred[or]silvery[or]unicorn furred[or]shimmering white fur[or]short brilliant fur covered[at random]"; [ skin Description, format as "You have (your text) skin"]
	now tail entry is "You have an amazing equine tail flicking behind you softly, its beautiful silvery white hair seeming to ripple with a rainbow of reflected colors with every move you make, even as it swishes teasingly behind you."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "[one of]equine[or]unicorn[or]blunt tipped[at random]"; [ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "a small pain blossoms in your forehead, you find yourself groaning slightly as your face begins to flatten and push out into a soft unicorns muzzle, even as a shimmering spiral horn begins to peek out from the center of your forehead. The pain begins to subside as your ears and eyes finish shifting position, and you find yourself grinning a happy equine grin as you look at the shifting spots of color reflected off your new amazing unicorns horn"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "it shifts and changes, your toes merging and melting together as your feet change into beautiful silver hooves, your legs seem to grow more muscled, with a slightly shifted heel to allow for faster running, and your fingers seem to become tipped with silver as well as your fingernails shift and stretch down past the first joint. And you find yourself stretching your new lithe and powerful body almost automatically as the changes finish, leaving you feeling surprisingly energized and aroused"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "it is slowly covered in beautiful short white horse fur, your new hide of pure white hair shining brightly as it reflects the light with every move you make"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "a shimmering silken tail seems to sprout behind you, its beautiful white strands falling like a waterfall down from your ass, until the tip of your new unicorn tail hangs barely a few inches above the floor"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it seems to thicken, a sexy looking sheath begins to form around the base of your increasingly equine looking new cock"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 14;
	now dex entry is 18;
	now sta entry is 13;
	now per entry is 12;
	now int entry is 12;
	now cha entry is 20;
	now sex entry is "Female";  [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 20;
	now lev entry is 2;  [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 5;  [ Amount of Damage monster Does when attacking. ]
	now area entry is "Nowhere";  [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now cocks entry is 1;  [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 14;  [ Length infection will make cock grow to if cocks]
	now cock width entry is 8;  [ Size of balls ]
	now breasts entry is 2;  [ Number of Breasts infection will give you. ]
	now breast size entry is 8;  [ Size of breasts infection will try to attain ]
	now male breast size entry is 0;  [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;  [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 14;
	now cunt width entry is 6;
	now libido entry is 50;  [ Amount player Libido will go up if defeated ]
	now loot entry is "";  [ Loot monster drops, ]
	now lootchance entry is 0;  [ Chance of loot dropping 0-100 ]
	now scale entry is 3;  [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]slim[or]lithe[or]slender[or]perfect[at random]";
	now type entry is "[one of]equine[or]unicorn[or]mythological[as decreasingly likely outcomes]";
	now magic entry is true;
	now resbypass entry is false;  [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is true;
	blank out the nocturnal entry;  [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";  [ Row used to designate any special combat features, "default" for standard combat. ]


Section 3 - Endings

when play ends:
	if bodyname of player is "Unicorn":
		if humanity of player < 10:
			if player is female:
				say "     Surrendering to your new powerful herd instincts, you quickly make your way back to your handsome stallion at the bar. The sight of his strong powerful form as you return to the palomino makes you moan with desire as you realize that you need to be his. Harold grins with amusement as you stalk forward on your sexy new silvery hooves, his horn shimmering comfortingly in the light as you quickly slip behind the bar, and surrender yourself to your stallion where everyone can watch. The unicorn stud claims you thoroughly much to the cheers of several of the patrons, and you find yourself lost in lustful pleasure as you orgasm again and again while the lights and music pulse around you. Eventually your stud needs to return to serving drinks for a while, and once you have managed to recover somewhat from your claiming, you happily move to help. Soon your naked unicorn body is draped with silver necklaces and a sexy leather vest of your own, hanging open in the front to give your stallion easy access to your pert pink nipples, and you have become just as much of a fixture behind the bar as he is. Your regular sex shows with your mate continue to get rave reviews, and you are more than happy to invite a few other curious customers to come join you, and while most of them stick to their drinks, you find yourself grinning when several unsuspecting soldiers come in and start hitting on you. Harold grins and gives you a wink as you serve them some of his 'special' unicorn reserve, and you look forward to helping your stallion tame several new mares soon enough...";
			else:
				say "     Giving in to your new powerful unicorn instincts, you soon find yourself prowling the streets hunting for some lovely women to lure off and make your own, and while you almost return to the palomino several times to hunt there, the scent of another established stallion has you backing off automatically. Your hunt through the city is both easy, and fruitless, since while few creatures can resist your mighty new body, or the hypnotic shimmer of your horn, there are also few if any humans left to transform. Before long though, the military begins to push into the city, providing you with an entirely new group of humans to tempt, and you enjoy walking into their squads, and picking one of them out to transform while the rest of them stare at your beautiful white coat and shimmering horn with awe. It isn't long before you have a selection of the choicest mares following you happily through the city, which now seems to be growing more and more confining by the day as the combat intensifies. Eventually you head through the military lines and out of the city into the bright and welcoming forest, none of the soldiers so much as lifting a gun in your direction as you and your mares prance by while they gawk at your beauty. As you settle in to your new forest you find yourself surprisingly content as you and your small herd wanders your new territory, though as word begins to spread about unicorns wandering the world again, your little forest begins to get a small amount of tourist traffic heading through as well. Some of the tourists even manage to leave after catching a glimpse of your herd, being of little interest to you, more often though, they are hypnotized by your shimmering beauty, and practically beg to be your mare, a blessing you are more than happy to give them...";
		else:
			if player is male:
				say "     When the military finally retrieve you from the city, many of your erstwhile rescuers are in awe of your handsome form and mythical countenance. A fact that you quite quickly put to use as you convince them that like the unicorn of legend you are no real threat to them, and should be let go as soon as possible. It goes to show how few of them actually read the older versions of the legends, as the quickly release you, though several of them stare at you with longing as you leave the camp behind you. Once free of the military's interference however, it is easy enough for you to head to the nearest town, and begin looking for a way to make your fortune. Your beautiful new form and your shimmering horn make it easy to get a decent job, and you find that people are more than willing to confide in you and trust you quite easily now. This works to your advantage as you quickly capitalize on the situation, with promotion and raises coming easily, as well as an ever increasing group of unicorn groupies who begin to gather to follow you around and stare at your beautiful form. Feeling deeply amused, you even begin to charge some of the more attractive and pure of the groupies for the privilege of becoming your mare, something that soon has more and more people clamoring for your attention. Soon you have plenty of money with which to buy a nice little wooded estate a bit out of the city for you and your slowly growing herd of unicorns, and you enjoy the feel of the wind in your hair as you play on the wooded banks of your stream with several of your lovely mares, and whicker with amusement at how eager people are these days for the touch of a unicorn... and how much fun it can be for you to give them that touch...";
			else:
				say "     You are wonderfully happy once the military finally arrives, and glad to be leaving the city, and though you get a number of awed stares from the soldiers, you are much more interested in the thought of being able to run and roam safely wherever you choose. It isn't long before the scientists release you to do so either, unable to bear the thought of running intrusive tests on your splendid new body. As you walk out into the world on your shining silver hooves, you find yourself smiling happily as your horn seems to shimmer with amusement as well, catching everyone's eye and making them sigh with awe. It is easy enough to realize just how useful your new form will be in finding yourself a comfortable new position now that you are outside the city, especially with the near mesmeric powers your horn seems happy to display. Deciding to enjoy things to the fullest you soon begin looking for a good job, and a good candidate to make into a unicorn stud for you to play with as well, your enhanced libido and slightly submissive tendencies desiring a nice stallion to tease and tempt. Soon enough you find both, as you encounter a handsome young CEO at one of the luxury parties you are often invited too due to your unique new look. It isn't long before you get the rich young man all to yourself off to the side and offer him a chance at a new life with you, a chance he wastes no time in accepting. You take time to make sure his transformation isn't going to raise any questions about his identity, before the two of you go off for a week and enjoy each others body in every way possible. Soon the handsome new unicorn stud is back at work amongst the envious looks of his subordinates, while you are settling in happily with your burning heat finally sated for the season.";
				say "     The two of you soon prove to be a powerful pair, with your powers of persuasion as well as your amazing looks, it is easy enough to manipulate deals and agreements to your new companies benefit, and you both rather enjoy the adoring looks of your many fans as you begin to increase your new wealth many-fold. Soon it becomes evident that your efforts with your new stallion will be bearing fruit, a fact that you find yourself eagerly anticipating, even as you begin to help your mate to pick out several other promising prospects to add to your herd. After all, you certainly won't mind having several subordinate mares around to help you out, and you certainly can't wait to start training the new mares in just how best to pleasure you as well as your stallion... and since unicorns are rumored to be immortal, hopefully you will have a long, sexy life of pleasure with your new herd to look forward to as well, you think happily as you watch your mate begin to transform the first of your many new herd members...";

Unicorn ends here.
