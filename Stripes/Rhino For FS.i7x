Version 1 of Rhino for FS by Stripes begins here.

"Adds a Rhino creature to Flexible Survivals Wandering Monsters table with impreg chance"

Section 1 - Monster Responses

when play begins:
	add { "Rhino" } to infections of guy;
	add { "Rhino" } to infections of furry;

to say losetorhino:
	say "     The rhino man bowls you over and snorts angrily at you.  Pinning you down, he tears at your clothes and pack, tossing them aside.  His strong arms pin you down and he climbs atop you without any foreplay and grinds his throbbing horn against your ass.  Precum flows down from his cock and gets smeared between your cheeks";
	if cunts of player > 0:
		say ".  After a few strokes while he forces you into the right position, he pulls back and lines his cock with your dripping pussy and drives it hard into you.  You moan and gasp as the big rod pushes its way into you.  Keeping you pinned down, he pumps and thrusts his pulsing cock into you repeatedly as he grunts and snorts until he finally cums hard, blasting his thick semen into you.  His prodigious output fills your womb and swells your tummy before he's finally done.  Sated for now, he gets up and pushes you over, then walks off with a final grunt.";
	otherwise:
		say ".  After a few strokes while he forces you into the right position, he pulls back and lines his cock with your tight pucker and drives hard into you.  You release a muffled scream at the sudden intrusion as the big rod pushes its way into you.  Keeping you pinneddown, he pumps and thrusts into you repeatedly as he grunts and snorts until he finally cums hard, blasting his thick semen into you.  His prodigious output fills your bowels and swells your tummy before he's finally done.  Sated for now, he gets up and pushes you over, then walks off with a final grunt.";

to say beattherhino:
	say "     Managing to finally wear down the powerful creature, you pant for breath and wipe the sweat from your brow before heading off to continue your searching.";

to say rhinodesc:
	say "     The large, grey rhinoman spots you and charges.  You only have a moment to take stock of him before he's upon you to fight.  He's seems rather strongly built, a very tough hide of grey skin and a large horn rising from his pointed face.  A second, even larger horn is equally hard between his legs.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Rhino";		[The creature's name as displayed and used in naming descriptions]
	now attack entry is "[one of]The rhinoceros slams into you with his powerful body![or]The strong rhino man grabs you and tosses you to the side![or]The enraged rhino bashes at you with his powerful fists![or]The wild creature slams his body into you, grinding his large, stiff cock against you as he crushes you in his arms before tossing you down![at random]";
	now defeated entry is "[beattherhino]";				[ Text when monster loses.  Change 'template' as above. ]
	now victory entry is "[losetorhino]";					[ Text when monster wins.  Change 'template' as above. ]
	now desc entry is "[rhinodesc]";						[ Description of the creature when you encounter it. ]
	now face entry is "that of a rhino, with a large horn rising from your pointed face and a second, smaller one behind that.  Your eyes, having moved further to the side of your head, are able to see around your horn as well as providing greater peripheral vision at the cost of losing most of your binocular, forward vision";		[ Face Description, format as the text "Your face is (your text)." ]
	now body entry is "is large and powerfully built, with broad shoulders and thick arms and legs.  Your hands are big and meaty, good for smashing with.  Your feet are large and flat to support your heavy weight";	[ Body Description, format as the text "Your body is (your text)." ]
	now skin entry is "tough, leathery grey";	[ Skin desc., format as the text "Your body is covered in (your text) skin."  Note: the word 'skin' is automatically included at the end. ]
	now tail entry is "Your large behind has a small, thin tail ending in a clump of dark hair draped across it.";	[ Tail desc., written as a full sentence or left blank for none. ] 
	now cock entry is "[one of]rhino[or]dark grey[or]rock hard[at random]";						[ Cock desc., format as "You have a 'size' (your text) cock." ]
	now face change entry is "it stretches and warps, growing and pulling forward into a large muzzle.  A stabbing pain at the end of your face gets stronger and stronger until your large horn grows in and a smaller second one soon follows it.  By the time the changes are complete, you have the large, hard head of a rhino";	[ Face TF text, format as "Your face feels funny as (your text)." ]
	now body change entry is "becomes big and powerfully built.  You broad shoulders and strong muscles to carry your heavy, dense body.  This muscles spread down your arms and legs.  Your hands become big and meaty, with thick fingers and hard fists.  Your feet become large and flat, with small, broad hoof-toes to support your weight";	[ Body TF text, format as "Your body feels funny as (your text)." ]
	now skin change entry is "your skin gets thicker and tougher, in a tough grey hide";	[ Skin TF text, format as "Your skin feels funny as (your text)." ]
	now ass change entry is "it becomes large and firmly muscled.  You feel a funny tingle at the end of your spine as a short, slender tail grows it.  It is grey and leathery with a clump fo dark grey hair at the end";	[ Ass/Tail TF text, format as "Your ass feels funny as (your text)." ]
	now cock change entry is "takes on a dark grey tone and reshapes itself.  It becomes a thick tube of meat, ending in a flared glans similar to an equine cock, but much harder";		[ Cock TF text, format as "Your cock feels funny as (your text)." ]
	now str entry is 17;			[ The player's stats will move towards these values through infection. ]
	now dex entry is 12;			[ Only the monster's dexterity has any effect in combat. ]
	now sta entry is 22;			[ These numbers should reflect a fully infected player's stats, not the attacking monster's. ]
	now per entry is 10;
	now int entry is 6;
	now cha entry is 8;
	now sex entry is "Male";		[ Infection will move the player towards this gender.  Current: 'Male' 'Female' 'Both' ]
	now hp entry is 65;			[ The monster's starting hit points. ]
	now lev entry is 5;			[ Monster level.  (Level x 2) XP for victory.  (Level / 2) XP for losing. ]
	now wdam entry is 9;			[ Monster's average damage when attacking. ]
	now area entry is "Zoo";		[ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1;			[ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 12;		[ Length infection will make cock grow to if cocks. ]
	now cock width entry is 5;		[ Cock width, more commonly used for ball size. ]
	now breasts entry is 0;			[ Number of breasts the infection will give a player. ]
	now breast size entry is 0;		[ Size of breasts the infection will try to attain. ]
	now male breast size entry is 0;    [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;			[ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 0;		[ Depth of female sex the infection will attempt to give a player. ]
	now cunt width entry is 0;		[ Width of female sex the infection will try to give a player. ]
	now libido entry is 40;			[ Target libido the infection will rise towards. ]
	now loot entry is "";			[ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 0;		[ Percentage chance of dropping loot, from 0-100. ]


Section 3 - Endings

when play ends:
	if bodyname of player is "Rhino":
		if humanity of player is less than 10:
			say "     As your mind gives in to your infection, you wander aimlessly and end up at the city zoo.  There you come across a large rhino vehemently ramming his horn against the wall again and again, trying to break through.  After a short conversation with him punctuated by hard cracks of him hitting the concrete barrier, you cannot find fault with his logic and soon join him in his efforts to crack through the wall.";
			say "     When you eventually manage to break through it together, it is as if all the zoo was waiting for that moment.  There air is filled with successful shouting and cheering from creatures who had gathered to watch you both at work, many of whom run off to inform the rest of their pack or herd.  The cries spread out across the zoo, getting louder and louder.  As you and Brian struggle to your feet with pounding headaches, you can hear the sounds of the infected hordes of the zoo coming.  You and Brian hurry through the gap, leading the charge against the few soldiers posted around what seemed until moments ago a closed section of military cordon.  As you both are finally unleashing your pent up lust on some soldiers, hordes of felines, wolves and other creatures come spilling out, spreading out unchecked past the military's lines to spread before they can be contained.  Mixed in with them are many smaller, weaker creatures who spent their time in hiding from the zoo's top predators, but are now free to roam and find places to spread their infection safely.  You bellow out in climax as you watch this surge of lustful freedom and smile, knowing all your hard work and pain has paid off.";
		otherwise:
			say "     Rescued from the city gone wild with infection, you are brought to the military's processing center while they try to sort out the many people they've resuced.  Being of an obviously strong strain, the military tries to recruit you for their needs, but you decide against it in the end.  You tell them that you've had enough of fighting and simply want a quiet, peaceful life.  You get a country home and start working for construction firms.  It is a lot of heavy lifting and manual labour, which comes easily to you strong body.";

[ Edit this to have the correct creature name as well]
Rhino For FS ends here.