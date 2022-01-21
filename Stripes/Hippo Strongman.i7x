Version 1 of Hippo Strongman by Stripes begins here.
[ Version 1.1 - Added vaginal/anal player loss scenes for Hippo players. ]

"Adds a Hippo Strongman creature to Flexible Survival's Wandering Monsters table, with impreg chance"


Section 1 - Creature Responses

to say hippodesc:
	setmongender 3; [creature is male]
	say "     Traveling through the fairgrounds, your path is suddenly blocked by the appearance of a large, muscled figure. The hippo-headed man flexes his bare muscles. 'I am the Mighty [one of]Bruno[or]Maximus[or]Supremo[or]Atlas[or]Gigantus[or]Goliath[or]Granite[in random order]!' he exclaims. 'Strongest of the strong, mightiest of the mighty!' he cries out, flexing again. As this bizarre strongman continues his showman spiel, he flexes to display his impressive muscles. You spot his stall nearby and see that a crude hippo head has been painted onto the strongman poster and the name has been re-written a few times already. He's even given the crudely drawn face the same little moustache and chin beard. Aside from his hippo head and big muscles, he has gray skin and is wearing nothing but a few leather straps and an ill-fitting loincloth that cannot contain his infection-enhanced maleness. As his babbling comes to an end, you catch him saying something about fighting you to prove his strength before he charges.";

to say losetohippo:
	if BodyName of Player is "Hippo" and ( ( player is female and a random chance of 3 in 5 succeeds ) or ( Cunt Count of Player is 0 and a random chance of anallevel in 5 succeeds ) ):
		say "     The victorious strongman knocks you to the ground with a cheer. Raising his arms in the air in triumph, he brags about how he is the strongest of all. He then brushes aside his loincloth to release his throbbing cock. With his 16 inch member on display, you can't help but become aroused, your body starting to respond to the victor's urges. When he moves you onto all fours, you grind back against his thick, bulging member, moaning for him to prove his might again. Running his meaty hands along your muscled back and grabbing your strong shoulders, he [if Player is female]thrusts into your juicy cunt[else]ploughs into your tight asshole[end if] with a raucous laugh.";
		if Player is female:
			say "     He pumps his hips steadily, sliding that gray cock of his into your juicy hole while his huge balls slap against you. The feel of the strongman's pole ringing your bell has you moaning beneath him with ever-expanding desire. With thoughts of the big, strong children such a mighty stud could give you, you push back into his thrusts and work your inner muscles around his mighty rod. Eventually he gives you what you're craving, pumping his hot load into your needy cunt and flooding your womb with his virile, steroid-rich semen. After pulling out, he has you lick him clean before sending you on your way with a warm feeling filling your tummy.[impregchance]";
		else:
			say "     He pumps his hips vigorously, stuffing that gray cock of his into your tihgt hole while his huge balls slap against you. The feel of the strongman's pole driving into you has you moaning beneath him with ever-expanding desire. With growing lust and admiration for the mighty stud who's bested you, you push back into his thrusts and squeeze your anal muscles around his mighty rod. Eventually he gives you what you're craving, that final proof of his superior might, as he climaxes and pumps his hot load into your ass. His virile, steroid-rich semen floods your bowels. After pulling out, he has you lick him clean before sending you on your way with a warm feeling filling your belly.[mimpregchance]";
	else:
		say "     The victorious strongman cheers his own success and slams you to your knees. Holding you in place with one meaty hand, the other brushes aside his loincloth to release his throbbing cock. At about 16 inches, his gray cock is quite huge, as are the balls beneath it. The hippo's cock is quite thick as well and bulges with throbbing veins. As his precum dribbles out from that impressive cock, you find yourself longing for a taste and lick the dribbling tip. His pre is quite invigorating and you start licking and sucking at his cock for more. He pushes you to take more and more of his cock into your mouth until finally he's managed to stuff the full, monstrous thing into you. With it stuffed down your throat, you have trouble breathing, but that doesn't seem to matter now, only sucking at that muscled male's meat does. When he finally cums, you are quite lightheaded, but enjoy the feel of that ample load pumping into your belly so much that you cum as well. Still coming, he pulls his cock free and you gasp for breath even as he paints your face with the other half of his big load.";
		say "     Feeling quite satisfied from the ample load in your belly, you wander off without direction before finally ending back where you started. You feel a little better from the effects of his powerful, steroid-filled cum, but also hornier as well.";
		increase HP of Player by ( Stamina of Player / 2 ) + a random number between 2 and 4;
		if HP of Player > maxHP of Player, now HP of Player is maxHP of Player;
		increase Libido of Player by a random number between 6 and 12;
		if "Horny Bastard" is listed in feats of Player, increase Libido of Player by 2;
		if "Cold Fish" is listed in feats of Player, decrease Libido of Player by a random number between 1 and 4;
		if Libido of Player > 100, now Libido of Player is 100;
		decrease humanity of Player by a random number from 1 to 3;
		if "Strong Psyche" is listed in feats of Player, increase humanity of Player by a random number between 0 and 1;
		if "Weak Psyche" is listed in feats of Player, decrease humanity of Player by a random number between 0 and 1;

to say beatthehippo:
	say "     Your last blow sends the big hippo staggering back. 'Impossible! None is stronger than the Great [one of]Crusher[or]Giganticus[or]Monstro[or]Ultro[or]Steelfist[or]Ivan[or]Samson[in random order]!' he yells, grabbing up his show items with ease and running off with them. 'You've not seen the last of me!' he yells. Wait... didn't he have a different name earlier?";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Hippo"; [name of the overall species of the infection, used for children, ...]
	add "Hippo" to infections of FurryList;
	add "Hippo" to infections of NatureList;
	add "Hippo" to infections of MaleList;
	add "Hippo" to infections of BipedalList;
	add "Hippo" to infections of TailList;
	now Name entry is "Hippo"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is "Hippo Strongman"; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]The hippo strongman crushes you with his muscly arms![or]The strongman delivers a pair of powerful blows with his meaty fists![or]The hippo strongman grabs you roughly and slams you down so hard onto his strength test that he rings the bell... or maybe that's just the ringing in your head![or]The big hippo bashes you with the large mallet for his strength test![or]Grabbing one of his heavy barbells, he heaves it at you. You manage to get partially out of the way, but are still struck hard by one of the metal ends![or]The strongman lobs several of his dumbbells at you, painfully slamming the weights into you![or]The muscled hippoman strikes your jaw with a fist as hard as stone![at random]"; [ Successful attack message ]
	now defeated entry is "[beatthehippo]"; [ Text when monster loses. ]
	now victory entry is "[losetohippo]"; [ Text when monster wins. ]
	now desc entry is "[hippodesc]"; [ Description of the creature when you encounter it. ]
	now face entry is "the broad head and large mouth of a hippo";
	now body entry is "big and muscled, with oversized definition and impressive muscle tone. Your fingers have become short and meaty, making it a little harder for you to do delicate work with them";
	now skin entry is "a thick, gray hide and glistens as if some body oil has been spread across your";
	now tail entry is "You have a short, thick tail ending in a clump of ragged hair.";
	now cock entry is "[one of]gray[or]purplish-gray[at random]";
	now face change entry is "your head distorts and a giant maw forms. Your jaw aches from this transition as it progresses, spreading up over the rest of your head until you have a big hippo head on your shoulders";
	now body change entry is "becomes large and hugely muscled, swelling with strength. Your hands change as your fingers become short and thick, giving you strong, but clumsy fists";
	now skin change entry is "it turns rough and gray in color";
	now ass change entry is "a small tail forms behind you. It is short and thick, with a clump of ragged hair at its tip";
	now cock change entry is "becomes a dark, purplish-gray in color but is mostly human in shape";
	now str entry is 24; [ These are now the creature's stats... ]
	now dex entry is 12; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 16; [ These values may be used as part of alternate combat.]
	now per entry is 12;
	now int entry is 8;
	now cha entry is 14;
	now sex entry is "Male"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 52; [ The monster's starting HP. ]
	now lev entry is 6; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 15; [ Monster's average damage when attacking. ]
	now area entry is "Fair"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 16; [ Length infection will make cock grow to if cocks. ]
	now Ball Size entry is 3; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 0; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 0; [ Size of breasts the infection will try to attain. ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [ Inches circumference. 3:extremely tight, 5:tight, 7:receptive, 10:open, 11+ gaping ]
	now SeductionImmune entry is false;
	now libido entry is 30; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]muscled[or]big[or]strong[at random]";
	now type entry is "hippo"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;





Section 3 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Hippo Infection"	"Infection"	""	Hippo Infection rule	1000	false

This is the Hippo Infection rule:
	if Player has a body of "Hippo":
		trigger ending "Hippo Infection"; [Here it states, that the ending has been played.]
		if humanity of Player < 10:
			say "     Unable to resist your new instincts any longer, your humanity leaves you as your new body's urges take over. You make your way back to the State Fair and come across another hippo strongman. You team up with him, proving your might together in your successful two-man show. That is, if you measure success by how often you manage to beat the other creatures you encounter and sate your lusts on them. When the soldiers come in, their guns are a problem, but a sly coyote pops up and gives you an idea on how to deal with them. Laying out one of the safety nets from the acrobatic show and covering it with dirt, you make a huge trap for them. A couple of fast fairground creatures zip around, luring in the separate teams to reach the central square together. With the combined strength of two mighty hippos (and maybe a little help from others at the fairgrounds... but just a little), you manage to catch yourselves a whole squad of soldiers in your net. You and the other creatures divvy up your prize, taking several soldiers to fuck and convert each.";
		else:
			say "     Upon the arrival of the soldiers, you are brought back to their holding facility before finally being cleared. You get a job at a professional gym as a trainer and bodybuilding coach, helping others work to get a muscled body like yours. Some of the patrons are a little edgy about you at first, but they warm up to you in time and you become part of the group. It certainly helps that they're seeing results from working with you, never suspecting that [if Player is male]you've been adding a little [']personal something['] to their protein shakes[else]the milk in their protein shakes is your own[end if] to help them along. While non-infectious, it is a strong muscle booster and undetectable to testing due to its rather unique source. As another added perk, the gym also provides you with many well-muscled lovers to satisfy your animal lusts.";

Hippo Strongman ends here.
