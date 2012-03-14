Version 1 of Goblin For FS by Stripes begins here.

"Adds a Goblin creature to Flexible Survivals Wandering Monsters table with impregchance"


Section 1 - Monster Responses

when play begins:
	add { "Goblin" } to infections of guy;

to say losetogoblin:
	now goblinfight is 2;
	if cunts of player > 0 and bodyname of player is "Goblin":
		say "     The goblin cackles merrily at his victory and pushes you down onto the ground.  Having found a female goblin, or at least someone close to one, he pushes you onto all fours with his foot and scrambles atop you.  Raising his loincloth, he brings his green cock to your pussy and thrusts into you with no preamble.  He grips your shoulders and pounds away at you, driving his small cock in again and again.  Your body can't help but respond to this, panting and moaning at having a goblin cock inside it.  Your pussy quivers over his penis, milking at it until he cums.  As his hot seed rushes into you, you cum as well with a loud, squealing moan.  Once he's drained his balls into you, he gives you another kick to send you on your way.";
		say "[impregchance]";
	otherwise:
		say "     The goblin cackles at his victory and pushes you to the ground.  Taking your head in his hands, you can they have a surprisingly strong grip for their spindly size.  Pressing your face to his loincloth, the masculine scent it's masking becomes more apparent.  As his cock grows hard, his loincloth is pushed aside to reveal a five inch cock.  Given his body's size, it must seem impressive to him, though you've seen much bigger out in this city.";
		say "     But regardless of its size, its clear what the goblin wants of you.  As he presses his cock to your lips, you give it a few licks before taking it into your mouth.  Its taste is bitter, but also masculine and strong.  You find yourself continuing to lick at it and start sucking it of your own accord, aroused by the sight of the little guy's prominent ballsac.  They are a little bigger than an average man's, making them quite impressive on his small frame.  You grip his green, leathery sac as you bob over his cock, getting him to blast his spunk into your mouth.  Though bitter, you swallow it all down with a soft moan around his meat.  Once his cock gives its last spurt, he pushes you away with his boot and sends you on your way.";


to say beatthegoblin:
	now goblinfight is 1;
	say "     Driving back the little goblin with your blow, you advance to finish him off.  He scrambles away fearfully and makes a run for it, diving through a tight tunnel in one of the mounts of junk.  Even if you could squeeze through there, you don't feel it would be worth it to try and decide to let him go.";


to say goblindesc:
	say "     Before you is a small goblin of a person.  His body has been reduced to barely four feet tall and has misshapen proportions.  His face has a long, pointed nose and chin, and large, pointy ears.  His skin is a leathery green and brown colour.  His limbs are thin and spindly and his fingers are long and nimble.  He wears a crude loincloth and has [one of]a pair of goggles on his head[or]a magnifying monocle over one eye[or]a boy's baseball cap on his head[or]a satchel of small tools[at random].  He cackles as his yellow eyes lock on you, baring his mouthful of sharp teeth.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Goblin";		[The creature's name as displayed and used in naming descriptions]
	now attack entry is "[one of]The cackling goblin bites you![or]The vicious goblin scratches at you with his sharp claws![or]The little goblin jabs you in the leg with a small knife![or]The goblin scrambles onto your back, clawing and scratching as he does![or]The goblin manages to grab your throat with his surprisingly strong hands and tries to choke you![at random]";
	now defeated entry is "[beatthegoblin]";
	now victory entry is "[losetogoblin]";
	now desc entry is "[goblindesc]";
	now face entry is "vaguely human, but twisted in shape.  You have an exaggerated pointy nose and chin, as well as a pair of large, pointed ears";
	now body entry is "short and has malformed proportions.  Your arms and legs are long and spindly, and your hands have strong, nimble fingers for grasping tools or throats";
	now skin entry is "green and brown, leathery";
	now tail entry is "";
	now cock entry is "[one of]green[or]goblin[at random]";
	now face change entry is "your head shifts and changes.  For a moment, you wonder if it will return to normal as your face starts to form.  But then it starts to warp and change.  Your nose grows and elongates into a point and your chin does the same moments later.  You can taste blood in your mouth as new, sharp teeth grow in and you gain a vicious grin.  Your ears feel as if they're being pulled on, stretching and growing until they become large and pointed";
	now body change entry is "you shrink, losing height and becoming a small and spindly creature";
	now skin change entry is "green flows across your skin like spilled paint until your covered in leathery, green skin.  Your shoulders, feet and the tips of your ears are a brownish-green colour";
	now ass change entry is "your ass becomes small and bony";	[ Ass/Tail TF text, format as "Your ass feels funny as (your text)." ]
	now cock change entry is "becomes green in colour and has a slightly more pointed shape";
	now str entry is 8;			[ The player's stats will move towards these values through infection. ]
	now dex entry is 16;			[ Only the monster's dexterity has any effect in combat. ]
	now sta entry is 10;			[ These numbers should reflect a fully infected player's stats, not the attacking monster's. ]
	now per entry is 15;
	now int entry is 14;
	now cha entry is 10;
	now sex entry is "Male";		[ Infection will move the player towards this gender.  Current: 'Male' 'Female' 'Both' ]
	now hp entry is 21;			[ The monster's starting hit points. ]
	now lev entry is 2;			[ Monster level.  (Level x 2) XP for victory.  (Level / 2) XP for losing. ]
	now wdam entry is 4;			[ Monster's average damage when attacking. ]
	now area entry is "Junkyard";		[ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1;			[ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 5;		[ Length infection will make cock grow to if cocks. ]
	now cock width entry is 6;		[ Cock width, more commonly used for ball size. ]
	now breasts entry is 0;			[ Number of breasts the infection will give a player. ]
	now breast size entry is 0;		[ Size of breasts the infection will try to attain. ]
	now male breast size entry is 0;    [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;			[ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 0;		[ Depth of female sex the infection will attempt to give a player. ]
	now cunt width entry is 0;		[ Width of female sex the infection will try to give a player. ]
	now libido entry is 35;			[ Target libido the infection will rise towards. ]
	now loot entry is "";			[ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 0;		[ Percentage chance of dropping loot, from 0-100. ]


when play ends:
	if bodyname of player is "Goblin":
		if humanity of player is less than 10:
			say "     As your goblin body's instincts take over, you cackle to yourself and scamper off through the city.  You are drawn back to the large junkyard at the edge of town.  After some scurrying away from the bigger creatures there, you run into a goblin patrol.  They welcome you before leading you through the junkpiles to their hidden warren.  There are several warrens built into mounds across the junkyard.  Inside, the goblins tinker with trash or scuffle with one another before sating their lusts.  Joining the workers, you set to making traps from the trash.  When the soldiers enter the city, your people are ready with traps scattered around the junkyard to help deal with those who manage to get past its larger defenders.  Those caught in goblin snares are dragged back to the warrens to be raped and converted into more goblins.";
		otherwise:
			say "     After your rescue and release, you stunted and warped body makes you somewhat of an outcast.  Bitter about this, you start coming up with ideas for little traps to hurt or infect those who have slighted you.  After making a small collection of these, you realize that your snares and traps can be sold to others.  With the concern over thieves or assassins with infection-enhanced abilities growing in the minds of the populous, you set up a business installing security systems, traps and defences for homes.  You focus your clever and cruel thoughts into your work, using it as an outlet for your darker goblin instincts, letting you live a happier life.  That and the money you charge rich people to help secure their homes from threats.";

[ Edit this to have the correct creature name as well]
Goblin For FS ends here.