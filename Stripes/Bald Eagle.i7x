Version 2 of Bald Eagle by Stripes begins here.
[ Version 1.0 - Original content - Stripes                  ]
[ Version 2.0 - Victory sex - Stripes                       ]
[ Version 2.1 - Impregnation for M/F sex - Wahn             ]
[ Version 2.2 - Watering Hole event bad end addition - Song ]

"Adds a Bald Eagle creature to Flexible Survival's Wandering Monsters table"


Section 1 - Creature Responses

eagledefeatnum is a number that varies.
noeaglesex is a number that varies.

to say eagledesc:
	setmongender 3;
	choose row MonsterID from Table of Random Critters;
	if "Female Preferred" is listed in feats of Player:
		now sex entry is "Female";
	else if "Herm Preferred" is listed in feats of Player:
		now sex entry is "Both";
	else:
		now sex entry is "Male";
	say "     Your searching is interrupted by a sharp screech from overhead and you spot a large avian swooping down at you, talons grabbing for you. You barely dodge this first swipe as the eagle man screeches in again, this time in anger at missing. [one of]'I'll get you,' he cries[or]'You won't get away,' he cries[or]'You'll be mine, prey,' he snaps[at random] as he swoops around for another pass at you. This humanoid avian has a bald eagle, with dark brown feathers over his body and wings and a bright white over his head and neck. His wings are long and broad, formed into part of his arms. His small, taloned hands are at the midpoint of his wings['] leading edge, able to be used when the not fully extended. His feet end in the bird feet with sharp claws. His beak also looks quite sharp and dangerous.";

to say losetoeagle:
	now noeaglesex is 0;
	let T be 1;
	if Player is submissive, increase T by 1;
	if Player is mpreg_ok, increase T by 1;
	if anallevel is 3, increase T by 1;
	if anallevel is 1, now T is 0;
	say "     Having defeated you, the eagle releases a call of triumph and pushes you down. His cock, poking from his soft feathers, is dripping with pre and eager for use on his captured prey.";
	if Player is female and a random chance of 2 in 3 succeeds:
		if Player is impreg_able and a random chance of 2 in 3 succeeds:
			say "     He roughly turns you over onto all fours and climbs atop you. As he grinds his slick cock against your pussy's wet lips, you can't help but moan a little, your needy cunt suddenly feeling empty. He nips at your shoulder and chuckles. 'Mmm... it sounds like someone's in need of a clutch in her,' he says, rubbing a taloned hand across your tummy. Before you can respond, he shifts his position enough to get his penis lined up and drives his foot-long erection into you, drawing another moan from your trembling body.";
			say "     As he mates you, he continues to nip and nuzzle at your neck and shoulders, reinforcing his dominance over you even as they feel relaxing and pleasurable. Your inner walls quiver and your honeyed juices start to flow as your excitement builds. Your vagina squeezes and pulls at his meaty rod and, after several minutes of steady pounding, is rewarded with the hot rush of the eagle's semen. As he climaxes, he drives hard into you repeatedly, blasting spurt after spurt of thick semen into you. Once spent, he rubs your belly meaningfully once again before taking flight, leaving you panting and leaking his tainted seed.";
		else:
			say "     He roughly turns you over onto all fours and climbs atop you, sinking his slick cock into your pussy. You moan and quickly grow excited despite yourself as his soft feathers slide over your body while his hard rod drives into you. Your inner walls quiver and your honeyed juices start to flow as your excitement builds. He nips at your shoulder and neck with his pointed beak while mating you. After a few minutes of steady pounding, he drives hard into you repeatedly, blasting spurt after spurt of thick semen into you. Even as you're cumming, he pushes you off his spent cock and onto the ground before soaring away.";
		CreatureSexAftermath "Player" receives "PussyFuck" from "Bald Eagle";
	else if Player is not female and a random chance of T in 6 succeeds:
		say "     He roughly turns you over onto all fours and grabs your ass. 'You're no eagless, but you'll do for now,' he says as he climbs atop you, sinking his slick cock into your ass. You groan in discomfort at the sudden penetration, but quickly grow excited despite yourself as his soft feathers slide over your body while his hard rod drives into you. He nips at your shoulder and neck with his pointed beak while ass-fucking you. After a few minutes of steady pounding, he drives hard into you repeatedly, blasting spurt after spurt of thick semen into you, stuffing your bowels with his seed. Even as you're cumming, he pushes you off his spent cock and onto the ground before soaring away.";
		CreatureSexAftermath "Player" receives "AssFuck" from "Bald Eagle";
	else:
		say "     Tucking his wings in, he grabs your head with his taloned fingers, pulling you to his cock. He grinds his throbbing shaft against you, leaking his pre until the scent of it gets to be too much and you take it into your mouth and start sucking. You lick and suck at his cock, moaning in pleasure as you do until finally he cums, spurting his thick seed down your throat, filling your belly with his semen. Finished, he pushes you back and soars away.";
		CreatureSexAftermath "Player" receives "OralCock" from "Bald Eagle";

to say beattheeagle:
	if noeaglesex > 2:
		say "     Defeated, the eagle shrieks angrily and soars off to nurse his wounds. You make no effort to stop it, same as you've done with the others of its kind recently.";
	else if eagledefeatnum < 3 or ( player is neuter ) or noeaglesex > 2:
		say "     Defeated, the eagle shrieks angrily and soars off to nurse his wounds.";
		increase eagledefeatnum by 1;
	else:
		say "     After dealing that last blow to him, the eagle staggers back. You notice him preparing to fly away like the others have before. Shall you grab him for some fun before he can escape?";
		if Player consents:
			now noeaglesex is 0;
			if Player is female:
				say "     As the eagle prepares to take off, you pounce upon him, bearing him to the ground. He is briefly stunned, giving you an opportunity to roll him onto his back and grab onto that foot-long cock of his. You stroke it to full erection and clamber atop him, sinking your juicy pussy down over it with a low moan of satisfaction. As he's starting to come out of it, you keep his shoulders pinned and ride the eagle's cock [if Cunt Depth of Player < 8]as hard and as fast as you can given its large size[else]hard and fast[end if]. He makes no attempt to resist or escape, now bucking his hips to thrust up into you until you both reach a loud, crashing orgasm. Once he's spent and you've taken what you've wanted from him, you slide off, moaning softly as you enjoy the warm feeling of his semen inside you.";
				CreatureSexAftermath "Player" receives "PussyFuck" from "Bald Eagle";
			else:
				say "     As the eagle prepares to take off, you pounce upon him, bearing him to the ground. He is briefly stunned, giving you an opportunity to roll him over onto all fours and guide your cock under his feathery tail. With a low moan of satisfaction, you sink your cock into his rear, finding it [if Cock Length of Player > 12]exceptionally[else if Cock Length of Player > 6]very[else]quite[end if] tight around your [cock size desc of Player] [Cock of Player] rod. Still dazed, he gives a squawk of discomfort and tries to squirm away at first, but you keep a good grip on him until his cries turn to moans of pleasure as he's pushing back into your thrusts for more. With a final, hard push, you drive your pulsing cock[if Cock Length of Player > 12] deep[end if] inside him and cum hard, stuffing the bird with your creamy load. As you're filling him, you reach around and stroke him off, getting him to splatter his load across the ground as he's buggered.";
				CreatureSexAftermath "Bald Eagle" receives "AssFuck" from "Player";
		else:
			increase noeaglesex by 1;
			say "     You make no effort to stop its escape, instead waving your arms at it to shoo the annoying creature away.";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Bald Eagle"; [name of the overall species of the infection, used for children, ...]
	add "Bald Eagle" to infections of AvianList;
	add "Bald Eagle" to infections of AvianpredList;
	add "Bald Eagle" to infections of FurryList;
	add "Bald Eagle" to infections of NatureList;
	add "Bald Eagle" to infections of MaleList;
	add "Bald Eagle" to infections of TaperedCockList;
	add "Bald Eagle" to infections of InternalCockList;
	add "Bald Eagle" to infections of BipedalList;
	add "Bald Eagle" to infections of FlightList;
	add "Bald Eagle" to infections of TailList;
	add "Bald Eagle" to infections of OviImpregnatorList;
	now Name entry is "Bald Eagle"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]The bald eagle swoops in and slashes you with his talons![or]The bird man's pointed beak snaps at you, biting into you![or]The eagle grabs you with his wing hands and grinds his cock against you![or]The eagle man digs his claws deep into your shoulder![at random]";
	now defeated entry is "[beattheeagle]";
	now victory entry is "[losetoeagle]";
	now desc entry is "[eagledesc]";
	now face entry is "now that of a bald eagle, having a long, yellow beak and piercing eyes on a snow white head";
	now body entry is "partially avian, with wings built into your arms and a light, powerful frame. Your hands are small and taloned, placed at the midpoint of the leading edge of your wing, allowing them to be used by partially folding in the wing. Your legs are like a bird's, ending in sharp talons on your four grasping toes";
	now skin entry is "dark brown feathers across your body, covering your";
	now tail entry is "You have a short, feathered tail that is dark brown at the back and white in front.";
	now cock entry is "[one of]slick[or]avian[at random]";
	now face change entry is "your mouth and nose stretch forward and harden into a sharp and pointed beak. Your eyes move to the side as your head completes it transformation into an eagle's";
	now body change entry is "you gain a light, powerful frame with strong shoulders. These changes spread down your arms, forcing the bones to shift and grow long and thin. As your hand bends and extends out, growing into a wing, a second, smaller hand with taloned claws forms at your wrist. Your legs change into those of a bird with sharp talons on your four grasping toes. You are left panting and sweating after such extensive changes, but get up feeling lighter after you recover";
	now skin change entry is "ripples flow across your skin in waves. As these waves pass, small points first rise, then small tufts pop up from them. They surge and grow with each passing ripple, extending out to form a downy coat of dark brown feathers";
	now ass change entry is "you gain a short tail of feathers"; [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "becomes slick and smooth, sliding into a slit in your groin when not in use";
	now str entry is 14;
	now dex entry is 18;
	now sta entry is 12;
	now per entry is 18;
	now int entry is 12;
	now cha entry is 15;
	now sex entry is "Male"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 60; [ The monster's starting HP. ]
	now lev entry is 8; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 11; [ Monster's average damage when attacking. ]
	now area entry is "Plains"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 12; [ Length infection will make cock grow to if cocks. ]
	now Ball Size entry is 2; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 3; [ Size of breasts the infection will try to attain. ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 12; [ Depth of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 6; [ Inches circumference. 3:extremely tight, 5:tight, 7:receptive, 10:open, 11+ gaping ]
	now SeductionImmune entry is false;
	now libido entry is 30; [ Target libido the infection will rise towards. ]
	now loot entry is "eagle feather"; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 40; [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "winged"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "[one of]avian[or]raptor[or]bird-like[at random]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;





Table of Game Objects (continued)
name	desc	weight	object
"eagle feather"	"Exactly what it sounds like."	0	eagle feather

eagle feather is a grab object. eagle feather is infectious. Strain of eagle feather is "Bald Eagle".

Usedesc of eagle feather is "[useeaglefeather]";

to say useeaglefeather:
	say "     After twirling the feather around by the quill, you decide to start brushing is along your face. The soft feel of it brushing against you feels very nice. You continue this for a while until finally noticing that the feather has shrunk away and been absorbed into you.";


Section 3 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Bald Eagle Infection"	"Infection"	""	Bald Eagle Infection rule	1000	false

This is the Bald Eagle Infection rule:
	if Player has a body of "Bald Eagle":
		trigger ending "Bald Eagle Infection"; [Here it states, that the ending has been played.]
		if humanity of Player < 10:
			say "     As your infection progresses beyond the point of return, your human mind fails as your transformation progresses further. Your body alters and your wings become strong enough to carry yourself in flight. Finding a high point to soar from on your first flight, you take the air and soon learn to catch the wind and fly out to the plains at the edge of the city. You set up a small aerie in a tall building overlooking much of it, allowing you to hunt for food or prey for your lusts. While it is a nice spot, you find yourself dissatisfied when the soldiers start moving through the city below, stirring up the prey to battle or into hiding. Sick of their meddling, you fly off over their lines one evening. Your new aerie is set up in the mountains by a river with delicious fish for food and hikers to satisfy your other hungers.";
		else:
			if FaceName of Player is "Bald Eagle" and SkinName of Player is "Bald Eagle":
				say "     After being rescued from the city, you do the only sensible thing for someone in your position - politics. As an eaglemorph, the nation's pride in the bald eagle holds great sway over the voters. You become one of the first infected to be elected to office because of this and rise quickly. You have strong backing from many key demographics, especially the infected masses and the elderly. The upper class also backs you as your appearance and demeanor speaks of authority, strength and determination in the face of the adversity striking the nation. And a strong, stable country is good for steady business. Your predatory nature makes you tough on crime and international policy, but tempered by your understanding of the needs of those transformed and a changing nation's needs in this new world. While never rising to leading the nation, you are a strong figure in politics over a long and illustrious career, ending in a cushy ambassador position overseas in your twilight years.";
			else:
				say "     After being saved by the military from the infected city, you enlist with the Air Force. Despite your wings never quite enabling you to fly, despite many risky tries on your part, you long to soar above the clouds. Feeling a strong affinity for flight, you become a skilled fighter pilot and earn several commendations for missions against some of the giant wyverns and dragons that occasionally appear to wreak havoc in the skies.";

Bald Eagle ends here.
