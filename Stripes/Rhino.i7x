Version 1 of Rhino by Stripes begins here.

"Adds a Rhino creature to Flexible Survival's Wandering Monsters table, with impreg chance"

Section 1 - Creature Responses

to say rhinodesc:
	setmongender 3; [creature is male]
	say "     The large, gray rhinoman spots you and charges. You only have a moment to take stock of him before he's upon you to fight. He's seems rather strongly built, a very tough hide of gray skin and a large horn rising from his pointed face. A second, even larger horn is equally hard between his legs.";

to say losetorhino:
	say "     The rhino man bowls you over and snorts angrily at you. Pinning you down, he tears at your clothes and pack, tossing them aside. His strong arms pin you down and he climbs atop you without any foreplay and grinds his throbbing horn against your ass. Precum flows down from his cock and gets smeared between your cheeks.";
	if Player is female:
		say "     After a few strokes while he forces you into the right position, he pulls back and lines his cock with your dripping pussy and drives it hard into you. You moan and gasp as the big rod pushes its way into you. Keeping you pinned down, he pumps and thrusts his pulsing cock into you repeatedly as he grunts and snorts until he finally cums hard, blasting his thick semen into you. His prodigious output fills your womb and swells your tummy before he's finally done. Sated for now, he gets up and pushes you over, then walks off with a final grunt.[impregchance]";
	else:
		say "     After a few strokes while he forces you into the right position, he pulls back and lines his cock with your tight pucker and drives hard into you. You release a muffled scream at the sudden intrusion as the big rod pushes its way into you. Keeping you pinned down, he pumps and thrusts into you repeatedly as he grunts and snorts until he finally cums hard, blasting his thick semen into you. His prodigious output fills your bowels and swells your tummy before he's finally done. Sated for now, he gets up and pushes you over, then walks off with a final grunt.[impregchance]";

to say beattherhino:
	say "     Managing to finally wear down the powerful creature, you [one of]get him to charge blindly past you and tumble into a nearby enclosure. Glancing down, you see him laying there, exhausted[or]dodge his final, blind charge and get him to bash right into a wall and pass out[or]breathe a sigh of relief as he finally passes out, completely exhausted[or]avoid his last charge and he plows off into the bushes. When he doesn't come back out, you conclude he's passed out, exhausted[at random]. You pant for breath and wipe the sweat from your brow before heading off to continue your searching.";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Rhino"; [name of the overall species of the infection, used for children, ...]
	add "Rhino" to infections of FurryList;
	add "Rhino" to infections of NatureList;
	add "Rhino" to infections of MaleList;
	add "Rhino" to infections of BluntCockList;
	add "Rhino" to infections of SheathedCockList;
	add "Rhino" to infections of BipedalList;
	add "Rhino" to infections of TailList;
	now Name entry is "Rhino"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]The rhinoceros slams into you with his powerful body![or]The strong rhino man grabs you and tosses you to the side![or]The enraged rhino bashes at you with his powerful fists![or]The wild creature slams his body into you, grinding his large, stiff cock against you as he crushes you in his arms before tossing you down![at random]";
	now defeated entry is "[beattherhino]"; [ Text when monster loses. ]
	now victory entry is "[losetorhino]"; [ Text when monster wins. ]
	now desc entry is "[rhinodesc]"; [ Description of the creature when you encounter it. ]
	now face entry is "that of a rhino, with a large horn rising from your pointed face and a second, smaller one behind that. Your eyes, having moved further to the side of your head, are able to see around your horn as well as providing greater peripheral vision at the cost of losing most of your binocular, forward vision"; [ Face. Format as Your face is [Face of Player]. ]
	now body entry is "large and powerfully built, with broad shoulders and thick arms and legs. Your hands are big and meaty, good for smashing with. Your feet are large and flat to support your heavy weight"; [ Body. Format as "Your body is [Body of Player]." ]
	now skin entry is "tough, leathery gray"; [ Skin. Format as "Looking at yourself, your body is covered in [Skin of Player] skin." ]
	now tail entry is "Your large behind has a small, thin tail ending in a clump of dark hair draped across it."; [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "[one of]rhino[or]dark gray[or]rock hard[at random]"; [ Cock. Format as "You have a 'size' [Cock of Player] cock." ]
	now face change entry is "it stretches and warps, growing and pulling forward into a large muzzle. A stabbing pain at the end of your face gets stronger and stronger until your large horn grows in and a smaller second one soon follows it. By the time the changes are complete, you have the large, hard head of a rhino"; [ Face TF text. Format as "Your face tingles as [face change entry]." ]
	now body change entry is "becomes big and powerfully built. You broad shoulders and strong muscles to carry your heavy, dense body. This muscles spread down your arms and legs. Your hands become big and meaty, with thick fingers and hard fists. Your feet become large and flat, with small, broad hoof-toes to support your weight"; [ Body TF text, format as "Your body tingles as [body change entry]. ]
	now skin change entry is "your skin gets thicker and tougher, in a tough gray hide"; [ Skin TF text, format as "Your skin tingles as [skin change entry]. ]
	now ass change entry is "it becomes large and firmly muscled. You feel a funny tingle at the end of your spine as a short, slender tail grows it. It is gray and leathery with a clump of dark gray hair at the end"; [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "takes on a dark gray tone and reshapes itself. It becomes a thick tube of meat, ending in a flared glans similar to an equine cock, but much harder"; [ Cock TF text, format as "Your groin tingles as [cock change entry]." ]
	now str entry is 17;
	now dex entry is 12;
	now sta entry is 22;
	now per entry is 10;
	now int entry is 6;
	now cha entry is 8;
	now sex entry is "Male"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 77; [ The monster's starting HP. ]
	now lev entry is 5; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 9; [ Monster's average damage when attacking. ]
	now area entry is "Zoo"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 12; [ Length infection will make cock grow to if cocks. ]
	now Ball Size entry is 3; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 0; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 0; [ Size of breasts the infection will try to attain. ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [ Inches circumference. 3:extremely tight, 5:tight, 7:receptive, 10:open, 11+ gaping ]
	now SeductionImmune entry is false;
	now libido entry is 40; [ Target libido the infection will rise towards. ]
	now loot entry is "rhino cum"; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 42; [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "";
	now CumItem entry is "rhino cum";
	now TrophyFunction entry is "-";
	now scale entry is 4; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]muscled[or]beefy[or]muscular[at random]";
	now type entry is "rhino"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;





Table of Game Objects (continued)
name	desc	weight	object
"rhino cum"	"Exactly what it sounds like."	1	rhino cum

rhino cum is a grab object. rhino cum is infectious. rhino cum is temporary. Strain of rhino cum is "Rhino". rhino cum is cum.

Usedesc of rhino cum is "[drinkrhinocum]";

to say drinkrhinocum:
	say "     Following the strange urge you have, you slam back the bottle of rhino cum you found. It has a strong taste to it, but you find it very exciting despite its salty flavor";
	if Player is male and Cock Length of Player < 12:
		say ". You feel a throbbing in your groin as your cock[smn] expand[smv] another inch almost immediately after you finish your drink";
		increase Cock Length of Player by 1;
	say ".";
	increase Libido of Player by 5;

the scent of rhino cum is "The contents of the jar of rhino cum smell strong and musky.".

Section 3 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Rhino Infection"	"Infection"	""	Rhino Infection rule	1000	false

This is the Rhino Infection rule:
	if Player has a body of "Rhino":
		trigger ending "Rhino Infection"; [Here it states, that the ending has been played.]
		if humanity of Player < 10:
			say "     As your mind gives in to your infection, you wander aimlessly and end up at the city zoo. There you come across a large rhino vehemently ramming his horn against the wall again and again, trying to break through. After a short conversation with him punctuated by hard cracks of him hitting the concrete barrier, you cannot find fault with his logic and soon join him in his efforts to crack through the wall.";
			say "     When you eventually manage to break through it together, it is as if all the zoo was waiting for that moment. There air is filled with successful shouting and cheering from creatures who had gathered to watch you both at work, many of whom run off to inform the rest of their pack or herd. The cries spread out across the zoo, getting louder and louder. As you and Brian struggle to your feet with pounding headaches, you can hear the sounds of the infected hordes of the zoo coming. You and Brian hurry through the gap, leading the charge against the few soldiers posted around what seemed until moments ago a closed section of military cordon. As you both are finally unleashing your pent up lust on some soldiers, hordes of felines, wolves and other creatures come spilling out, spreading out unchecked past the military's lines to spread before they can be contained. Mixed in with them are many smaller, weaker creatures who spent their time in hiding from the zoo's top predators, but are now free to roam and find places to spread their infection safely. You bellow out in climax as you watch this surge of lustful freedom and smile, knowing all your hard work and pain has paid off.";
		else:
			say "     Rescued from the city gone wild with infection, you are brought to the military's processing center while they try to sort out the many people they've rescued. Being of an obviously strong strain, the military tries to recruit you for their needs, but you decide against it in the end. You tell them that you've had enough of fighting and simply want a quiet, peaceful life. You get a country home and start working for construction firms. It is a lot of heavy lifting and manual labor, which comes easily to you strong body.";

Rhino ends here.
