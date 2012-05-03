Version 1 of Bald Eagle For FS by Stripes begins here.

"Adds a Bald Eagle creature to Flexible Survivals Wandering Monsters table"


Section 1 - Monster Responses

when play begins:
	add { "Bald Eagle" } to infections of guy;
	add { "Bald Eagle" } to infections of furry;

to say losetoeagle:
	say "     Having defeated you, the eagle releases a triumph call and pushes you down.  His cock, poking from his soft feathers, is dripping with pre and eager for use on his captured prey";
	if cunts of player > 0 and a random chance of 2 in 3 succeeds:
		say ".  He roughly turns you over onto all fours and climbs atop you, sinking his slick cock into your pussy.  You moan and quickly grow excited despite yourself as his soft feathers slide over your body while his hard rod drives into you.  He nips at your shoulder and neck with his pointed beak while mating you.  After a few minutes of steady pounding, he drives hard into you repeatedly, blasting spurt after spurt of thick semen into you.  Even as you're cumming, he pushes you off his spent cock and onto the ground before soaring away.";
	otherwise:
		say ".  Tucking his wings in, he grabs your head with his taloned fingers, pulling you to his cock.  He grinds his throbbing shaft against you, leaking his pre until the scent of it gets to be too much and you take it into your mouth and start sucking.  You lick and suck at his cock, moaning in pleasure as you do until finally he cums, spurting his thick seed down your throat, filling your belly with his semen.  Finished, he pushes you back and soars away.";

to say beattheeagle:
	say "     Defeated, the eagle shrieks angrily and soars off to nurse his wounds.";

to say eagledesc:
	choose row monster from table of random critters;
	if "Female Preferred" is listed in feats of player:
		now sex entry is "Female";
	otherwise if "Herm Preferred" is listed in feats of player:
		now sex entry is "Both";
	otherwise:
		now sex entry is "Male";
	say "     Your searching is interrupted by a sharp screech from overhead and you spot a large avian swooping down at you, talons grabbing for you.  You barely dodge this first swipe as the eagle man screeches in again, this time in anger at missing.  [one of]'I'll get you,' he cries[or]'You won't get away,' he cries[or]'You'll be mine, prey,' he snaps[at random] as he swoops around for another pass at you.  This humanoid avian has a bald eagle, with dark brown feathers over his body and wings and a bright white over his head and neck.  His wings are long and broad, formed into part of his arms.  His small, taloned hands are at the midpoint of his wings['] leading edge, able to be used when the not fully extended.  His feet end in the bird feet with sharp claws.  His beak also looks quite sharp and dangerous.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Bald Eagle";		[The creature's name as displayed and used in naming descriptions]
	now attack entry is "[one of]The bald eagle swoops in and slashes you with his talons![or]The bird man's pointed beak snaps at you, biting into you![or]The eagle grabs you with his wing hands and grinds his cock against you![or]The eagle man digs his claws deep into your shoulder![at random]";
	now defeated entry is "[beattheeagle]";
	now victory entry is "[losetoeagle]";
	now desc entry is "[eagledesc]";
	now face entry is "now that of a bald eagle, having a long, yellow beak and piercing eyes on a snow white head";
	now body entry is "partially avian, with wings built into your arms and a light, powerful frame.  Your hands are small and taloned, placed at the midpoint of the leading edge of your wing, allowing them to be used by partially folding in the wing.  Your legs are like a bird's, ending in sharp talons on your four grasping toes";
	now skin entry is "dark brown feathers across your body, covering your";
	now tail entry is "You have a short, feathered tail that is dark brown at the back and white in front";
	now cock entry is "[one of]slick[or]avian[at random]";
	now face change entry is "your mouth and nose stretch forward and harden into a sharp and pointed beak.  Your eyes move to the side as your head completes it transformation into an eagle's";
	now body change entry is "you gain a light, powerful frame with strong shoulders.  These changes spread down your arms, forcing the bones to shift and grow long and thin.  As your hand bends and extends out, growing into a wing, a second, smaller hand with taloned claws forms at your wrist.  Your legs change into those of a bird with sharp talons on your four grasping toes.  You are left panting and sweating after such extensive changes, but get up feeling lighter after you recover";
	now skin change entry is "ripples flow across your skin in waves.  As these waves pass, small points first rise, then small tufts pop up from them.  They surge and grow with each passing ripple, extending out to form a downy coat of dark brown feathers";
	now ass change entry is "you gain a short tail of feathers";	[ Ass/Tail TF text, format as "Your ass feels funny as (your text)." ]
	now cock change entry is "becomes slick and smooth, sliding into a slit in your groin when not in use";
	now str entry is 14;
	now dex entry is 18;
	now sta entry is 12;
	now per entry is 18;
	now int entry is 12;
	now cha entry is 15;
	now sex entry is "Male";		[ Infection will move the player towards this gender.  Current: 'Male' 'Female' 'Both' ]
	now hp entry is 60;			[ The monster's starting hit points. ]
	now lev entry is 8;			[ Monster level.  (Level x 2) XP for victory.  (Level / 2) XP for losing. ]
	now wdam entry is 11;			[ Monster's average damage when attacking. ]
	now area entry is "Plains";		[ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1;			[ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 12;		[ Length infection will make cock grow to if cocks. ]
	now cock width entry is 5;		[ Cock width, more commonly used for ball size. ]
	now breasts entry is 1;			[ Number of breasts the infection will give a player. ]
	now breast size entry is 3;		[ Size of breasts the infection will try to attain. ]
	now male breast size entry is 0;    [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 12;		[ Depth of female sex the infection will attempt to give a player. ]
	now cunt width entry is 6;		[ Width of female sex the infection will try to give a player. ]
	now libido entry is 50;			[ Target libido the infection will rise towards. ]
	now loot entry is "";			[ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 0;		[ Percentage chance of dropping loot, from 0-100. ]


when play ends:
	if bodyname of player is "Bald Eagle":
		if humanity of player is less than 10:
			say "     As your infection progresses beyond the point of return, your human mind fails as your transformation progresses further.  Your body alters and your wings become strong enough to carry yourself in flight.  Finding a high point to soar from on your first flight, you take the air and soon learn to catch the wind and fly out to the plains at the edge of the city.  You set up a small aerie in a tall building overlooking much of it, allowing you to hunt for food or prey for your lusts.  While it is a nice spot, you find yourself dissatisfied when the soldiers start moving through the city below, stirring up the prey to battle or into hiding.  Sick of their meddling, you fly off over their lines one evening.  Your new aerie is set up in the mountains by a river with delicious fish for food and hikers to satisfy your other hungers.";
		otherwise:
			if facename of player is "Bald Eagle" and skinname of player is "Bald Eagle":
				say "     After being rescued from the city, you do the only sensible thing for someone in your position - politics.  As an eaglemorph, the nation's pride in the bald eagle holds great sway over the voters.  You become one of the first infected to be elected to office because of this and rise quickly.  You have strong backing from many key demographics, especially the infected masses and the elderly.  The upper class also backs you as your appearance and demeanor speaks of authority, strength and determination in the face of the adversity striking the nation.  And a strong, stable country is good for steady business.  Your predatory nature makes you tough on crime and international policy, but tempered by your understanding of the needs of those transformed and a changing nation's needs in this new world.  While never rising to leading the nation, you are a strong figure in politics over a long and illustrious career, ending in a cushy ambassador position overseas in your twilight years.";
			otherwise:
				say "     After being saved by the military from the infected city, you enlist with the Air Force.  Despite your wings never quite enabling you to fly, despite many risky tries on your part, you long to soar above the clouds.  Feeling a strong affinity for flight, you become a skilled fighter pilot and earn several commendations for missions against some of the giant wyverns and dragons that occasionally appear to reek havoc in the skies.";

Bald Eagle For FS ends here.