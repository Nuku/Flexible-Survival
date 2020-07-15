Version 1 of Weapons by Core Mechanics begins here.
[ Written by Wahn ]
[ Version 1 - New File; Collected all weapons from the game to put in here ]

[X moved to Core Mechanics/Weapons.i7x]


Book 1 - Blades

Section 1 - Small Blades


Table of Game Objects (continued)
name	desc	weight	object
"abyssal remnant"	"A very underwhelming weapon that used to be a sword, consisting of only its hilt and a broken base of a rusted blade. It is in terrible conditions, and you doubt it has any use in battle."	2	abyssal remnant

abyssal remnant is an armament. It is not temporary.
It has a weapon "[one of]your broken hilt[or]your broken sword[or]your excuse of a weapon[or]your shattered half-blade[at random]".
The weapon damage of abyssal remnant is 5.
The weapon type of abyssal remnant is "Melee".
The objsize of abyssal remnant is 3.
The scent of the abyssal remnant is "The broken hilt oozes off an overwhelming, and even unthinkable, scent of absolutely... nothing. It is as odorless as the Void, where it came from. It is very similar to the null essences, perhaps they are related?".

Table of Game Objects (continued)
name	desc	weight	object
"bonesaw"	"A stainless steel bonesaw used for medical procedures. A little unwieldy, but sharp."	2	bonesaw

bonesaw is an armament. It is not temporary.
It has a weapon "[one of]the bonesaw[or]your bonesaw[or]your medical blade[or]the stainless steel saw[at random]".
The weapon damage of bonesaw is 7.
The weapon type of bonesaw is "Melee".
The objsize of bonesaw is 3.
The hitbonus of bonesaw is 0. [nothing special]
the scent of the bonesaw is "The bonesaw smells faintly of antiseptic and blood.".

Table of Game Objects (continued)
name	desc	weight	object
"pocketknife"	"Mighty big for a pocket knife, nice and solid too. Could be handy."	1	pocketknife

pocketknife is an armament. It is not temporary.
understand "knife" as pocketknife.
It has a weapon "[one of]your large knife[or]your blade[or]your trusty pocket knife[or]flashing steel[at random]".
The weapon damage of pocketknife is 5.
The weapon type of pocketknife is "Melee".
The objsize of pocketknife is 3.
The hitbonus of pocketknife is -1. [shitty weapon]
The scent of pocketknife is "The pocketknife smells like metal.".

Table of Game Objects (continued)
name	desc	weight	object
"scalpel"	"Small but oh so very pointy, this scalpel can cut through flesh like butter."	1	scalpel

scalpel is an armament. It is not temporary.
It has a weapon "[one of]your small scalpel[or]your blade[at random]".
The weapon damage of scalpel is 6.
The weapon type of scalpel is "Melee".
The objsize of scalpel is 2.
The hitbonus of scalpel is 0. [nothing special]
The scent of scalpel is "The scalpel smells like metal.".

Section 2 - Moderate Blades

Table of Game Objects (continued)
name	desc	weight	object
"cleaver"	"A large kitchen knife, sharp and heavy."	2	cleaver

cleaver is an armament. It is not temporary.
It has a weapon "[one of]your cleaver[or]your kitchen knife[or]your cleaver, screaming 'Oneida!' as you swing it[or]your large knife[or]the large blade[or]your cleaver with a heavy chop[at random]".
The weapon damage of cleaver is 7.
The weapon type of cleaver is "Melee".
The objsize of cleaver is 3.
The hitbonus of cleaver is 0. [nothing special]
The scent of the cleaver is "The heavy blade smells faintly of blood."

Table of Game Objects (continued)
name	desc	weight	object
"combat knife"	"A large combat knife in a belt holster."	2	combat knife

combat knife is an armament. It is not temporary.
It has a weapon "[one of]your large knife[or]your combat knife[or]the large blade[or]your combat knife with a strong thrust[or]your large blade with a quick slash[at random]".
The weapon damage of combat knife is 7.
The weapon type of combat knife is "Melee".
The objsize of combat knife is 3.
The hitbonus of combat knife is 0. [nothing special]
The scent of the combat knife is "The knife smells like metal".

Table of Game Objects (continued)
name	desc	weight	object
"silver knife"	"An ancient silver knife with a ten inch blade and a slight curve to it. It seems particularly well weighted."	2	silver knife

silver knife is an armament. It is not temporary.
It has a weapon "[one of]the silver knife[or]the old knife[or]the curved knife[or]the silver dagger[at random]".
The weapon damage of silver knife is 6.
The weapon type of silver knife is "Melee".
The objsize of silver knife is 3.
The hitbonus of silver knife is 1. [magic]
The scent of the silver knife is "While the silver knife has no strong scent, something about it makes you uneasy whenever you bring it close.".

Section 3 - Large Blades


Table of Game Objects (continued)
name	desc	weight	object
"abyssal edge"	"The enhanced version of what used to be a completely useless hilt. The abyssal edge is now a respectable sword with a dark blade, so sharp it can cut through almost anything."	7	abyssal edge

abyssal edge is an armament. It is not temporary.
It has a weapon "[one of]your dark sword[or]your void blade[or]your respectable black sword[or]your Abyssal Edge[at random]".
The weapon damage of abyssal edge is 19.
The weapon type of abyssal edge is "Melee".
The objsize of abyssal edge is 3.
The hitbonus of abyssal edge is 1. [magic]
The scent of the abyssal edge is "This powerful sword still smells like absolutely nothing, but it does give you a sense of power. You have to be careful not to cut your nose trying to sniff it, though. It would be pointless, as well.".

a postimport rule: [bugfixing rules for players that import savegames]
	if Resolution of AbyssEdgeEnchantLevel > 19:
		now weapon damage of abyssal edge is Resolution of AbyssEdgeEnchantLevel;

Table of Game Objects (continued)
name	desc	weight	object
"ancient blade"	"An ancient sword of Egyptian make, the blade looks as if it was forged yesterday. Hieroglyphics are carved into the blade, telling stories that are long forgotten."	5	ancient blade

ancient blade is an armament. It is not temporary.
It has a weapon "[one of]the ancient blade[or]the Egyptian blade[or]the warrior's blade[at random]".
The weapon damage of ancient blade is 15.
The weapon type of ancient blade is "Melee".
The objsize of ancient blade is 3.
The hitbonus of ancient blade is 1. [magic]
the scent of ancient blade is "The weapon smells of forged metal, with a hint of dirt and dust.".


Table of Game Objects (continued)
name	desc	weight	object
"infected sword"	"A sword with cloudy metal found in a sea of slime. It is infectious, and keeps changing you."	8	infected sword

infected sword is an armament. It is not temporary.
It has a weapon "[one of]your cloudy sword[or]your sword[or]your infected sword[or]your glowing sword[at random][hydraharming]".
The weapon damage of infected sword is 16.
The weapon type of infected sword is "Melee".
The objsize of infected sword is 4.
The hitbonus of infected sword is 1. [magic]
The purified of infected sword is "Nothing".

the scent of infected sword is "The infected sword smells of a myriad of musky scents, all shifting and changing. You can never seem to identify a scent before a new one appears.".

instead of purifying an infected sword:
	say "That doesn't even fit in the microwave. Also, putting metal in one is a really bad idea.";
	stop the action;

Table of Game Objects (continued)
name	desc	weight	object
"viking sword"	"A beautifully crafted sword, about 30 inches long, with a keen edge to its blade. The favorite weapon of your Viking wife, Sonya, it became yours as you married. Better take good care of it - it's a pretty good weapon, well-balanced... and there might be some marital problems ahead if you let it rust or lose it."	5	viking sword

viking sword is an armament. It is not temporary.
It has a weapon "shining steel blade".
The weapon damage of viking sword is 14.
The weapon type of viking sword is "Melee".
The objsize of viking sword is 3.
The hitbonus of viking sword is 1. [mastercraft]
The scent of the viking sword is "The blade smells of nothing but metal. Sonya always kept it clean without fail, and you've done the same since you got it.".


Book 2 - Impact Weapons

Section 1 - Small

Table of Game Objects (continued)
name	desc	weight	object
"belaying pin"	"A stout bit of wood nearly two feet long, made for securing rope on sailing vessels. Currently it has been painted with crude plans for converting it into a sex toy."	2	belaying pin

belaying pin is an armament. It is not temporary.
It has a weapon "[one of]your belaying pin[or]your stout sailcloth securing system[or]your improvised club[or]your hefty pin[or]your rescued dildo-cum-club[or]your salty beatin['] stick[or]your cock-themed skull-cracker[at random]".
The weapon damage of belaying pin is 5.
The weapon type of belaying pin is "Melee".
The objsize of riding crop is 3.
The hitbonus of belaying pin is 0. [nothing special]
The scent of the belaying pin is "The heavy club smells of rum, sodomy, and the lash.".

Table of Game Objects (continued)
name	desc	weight	object
"claw hammer"	"A carpentry hammer with a strong head and a clawed back."	3	claw hammer

claw hammer is an armament. It is not temporary.
It has a weapon "[one of]your hammer[or]your claw hammer[or]your carpenter's hammer[or]the hammer[or]the claw hammer[at random]".
The weapon damage of claw hammer is 6.
The weapon type of claw hammer is "Melee".
The objsize of claw hammer is 3.
The hitbonus of claw hammer is 0. [nothing special]
The scent of the claw hammer is "The sturdy hammer smells of metal and sweat.".


Table of Game Objects (continued)
name	desc	weight	object
"riding crop"	"A leather riding crop used for dealing with recalcitrant steeds and playtoys."	2	riding crop

riding crop is an armament. It is not temporary.
It has a weapon "[one of]your riding crop[or]your crop[or]your leather crop[or]your disciplinary tool[at random]".
The weapon damage of riding crop is 5.
The weapon type of riding crop is "Melee".
The objsize of riding crop is 3.
The hitbonus of riding crop is 0. [nothing special]
The scent of the riding crop is "The riding crop smells of leather and discipline.".

Table of Game Objects (continued)
name	desc	weight	object
"tire iron"	"A heavy tire iron - a good, cliché makeshift weapon."	1	tire iron

tire iron is an armament. It is not temporary.
It has a weapon "[one of]your tire iron[or]the tire iron[or]your metal tire iron[at random]".
The weapon damage of tire iron is 6.
The weapon type of tire iron is "Melee".
The objsize of tire iron is 3.
The hitbonus of tire iron is 0. [nothing special]
The scent of the tire iron is "The tire iron smells of metal and motor oil.".

Section 2 - Moderate

Table of Game Objects (continued)
name	desc	weight	object
"bo staff"	"An ornate fighting staff. A trained martial artist could wield it with greater effectiveness."	3	bo staff

bo staff is an armament. It is not temporary.
It has a weapon "[one of]your bo staff[or]your fighting staff[or]your staff[or]your bo staff with a hard whack[or]the long pole[or]your staff with a fast jab[at random]".
The weapon damage of bo staff is 7.
The weapon type of bo staff is "Melee".
The objsize of bo staff is 3.
The hitbonus of bo staff is 0. [nothing special]
The scent of bo staff is "The staff smells like wood.".

Table of Game Objects (continued)
name	desc	weight	object
"chair"	"A metal folding chair that belongs in a food court. It could serve as a weapon in a pinch!"	10	chair

chair is an armament. It is not temporary.
It has a weapon "[one of]a folding chair[or]your improvised weapon[or]that move you saw on WWE[or]a metal chair to the eyes[at random]".
The weapon damage of chair is 6.
The weapon type of chair is "Melee".
The objsize of chair is 4.
The hitbonus of chair is -1. [not a weapon]
The scent of chair is "The metal chair smells of metal and aging plastic.".

Table of Game Objects (continued)
name	desc	weight	object
"crowbar"	"A big, heavy crowbar. It's not sharp, but it's heavy enough to strike a good blow."	5	crowbar

crowbar is an armament. It is not temporary.
It has a weapon "your crowbar".
The weapon damage of crowbar is 7.
The weapon type of crowbar is "Melee".
The objsize of crowbar is 3.
The hitbonus of crowbar is 0. [nothing special]
The scent of crowbar is "The crowbar smells of metal and motor oil.".

Table of Game Objects (continued)
name	desc	weight	object
"dildo club"	"A big, bright purple dildo. It's about three feet long and has a handle on it for easy swinging."	3	dildo club

dildo club is an armament. It is not temporary.
It has a weapon "[one of]your phallic club[or]your purple latex club[or]your dildo club with a resounding 'Wubba-Wubba-Wubba-Thwack!' sound[or]the three-foot purple schlong[or]the floppy dildo club[or]your oversized dildo[at random]".
The weapon damage of dildo club is 5.
The weapon type of dildo club is "Melee".
The objsize of dildo club is 3.
The hitbonus of dildo club is 0. [nothing special]
The scent of the dildo club is "The sex toy club smells of latex and your humiliated foes."

Table of Game Objects (continued)
name	desc	weight	object
"dirty whip"	"A whip covered with dripping horse cum. It is infectious, and was found abandoned by its owner."	3	dirty whip

dirty whip is an armament. It is not temporary.
It has a weapon "[one of]your whip[or]your cum-soaked whip[or]your messy whip[or]white streak[at random]".
The weapon damage of dirty whip is 9.
The weapon type of dirty whip is "Melee".
The objsize of dirty whip is 3.
The hitbonus of dirty whip is -1. [slick and goopy]
The scent of dirty whip is "The sticky whip smells of equine cum.".

Table of Game Objects (continued)
name	desc	weight	object
"golf club"	"To an overpaid sports star, it is a piece of high-quality equipment meant for a game of style and skill. To you, a blunt instrument."	4	golf club

golf club is an armament. It is not temporary.
It has a weapon "[one of]your golf club[or]your 9 Iron[or]your golf club, getting a bit of a slice on that swing[or]your golf club, calling out FORE! and making a hard swing[at random]".
The weapon damage of golf club is 5.
The weapon type of golf club is "Melee".
The objsize of golf club is 3.
The hitbonus of golf club is 0. [nothing special]
The scent of golf club is "The golf club smells faintly of grass, bad slices and bashed heads.".

Table of Game Objects (continued)
name	desc	weight	object
"horse whip"	"A whip you found and cleaned up. It has metal studs on the lash."	3	horse whip

horse whip is an armament. It is not temporary.
It has a weapon "[one of]your whip[or]your studded whip[or]your metallic whip[or]brown streak[at random]".
The weapon damage of horse whip is 8.
The weapon type of horse whip is "Melee".
The objsize of horse whip is 3.
The hitbonus of horse whip is 0. [nothing special]
The scent of horse whip is "The horse whip smells of leather and oils.".

Table of Game Objects (continued)
name	desc	weight	object
"iron pipe"	"A piece of iron pipe. It might make an adequate blunt weapon."	5	iron pipe

iron pipe is an armament. It is not temporary.
It has a weapon "your iron pipe".
The weapon damage of iron pipe is 5.
The weapon type of iron pipe is "Melee".
The objsize of iron pipe is 3.
The hitbonus of iron pipe is -1. [not a weapon]
The scent of iron pipe is "The iron pipe smells like old rust and whatever that hard, dry gunk inside was.".

Table of Game Objects (continued)
name	desc	weight	object
"metal baseball bat"	"A slightly dented metal baseball bat, inscribed with a symbol of the local college team. It should make for a useful improvised weapon."	6	metal baseball bat

metal baseball bat is an armament. It is not temporary.
It has a weapon "dull steel".
The weapon damage of metal baseball bat is 8.
The weapon type of metal baseball bat is "Melee".
The objsize of metal baseball bat is 3.
The hitbonus of metal baseball bat is 0. [nothing special]
The scent of metal baseball bat is  "The bat smells of metal and traces of smoke.".

Table of Game Objects (continued)
name	desc	weight	object
"nightstick"	"A policeman's nightstick. An effective weapon."	4	nightstick

nightstick is an armament. It is not temporary.
It has a weapon "[one of]your nightstick[or]your t-baton[or]your side-handle baton[or]your police nightstick[or]your black nightstick[at random]".
The weapon damage of nightstick is 6.
The weapon type of nightstick is "Melee".
The objsize of nightstick is 3.
The hitbonus of nightstick is 0. [nothing special]
The scent of nightstick is "     The nightstick smells faintly of violent authority.".

Table of Game Objects (continued)
name	desc	weight	object
"Wukong's staff"	"An simple yet expertly crafted fighting staff, carved then polished with care to provide maximum efficiency. A golden leaf is riveted to the middle of the staff, ornately decorated with detailed figures of various animals, provides your hands with a good grip."	8	wukongStaff

wukongStaff is an armament. It is not temporary.
It has a weapon "[one of]your bo staff[or]your fighting staff[or]your staff[or]your bo staff with a hard whack[or]the long pole[or]your staff with a fast jab[at random]".
The weapon damage of wukongStaff is 18.
The weapon type of wukongStaff is "Melee".
The objsize of wukongStaff is 3.
The hitbonus of wukongStaff is 1. [magic]
The scent of wukongStaff is "The staff smells fainly of cedar.".

Section 3 - Large

Table of Game Objects (continued)
name	desc	weight	object
"awesome bat"	"A heavy branch that you are pretty sure you could use to hit... something."	5	awesome bat

awesome bat is an armament. It is not temporary.
It has a weapon "[one of]awesome bat, a double rainbow appears for a brief second,[awesome bat proc][or]bat of awesomeness[or]indestructible length of awesome-wood[at random]".
The weapon damage of awesome bat is 6.
The weapon type of awesome bat is "Melee".
The objsize of awesome bat is 4.
The hitbonus of awesome bat is 0. [nothing special]
The scent of awesome bat is "The powerful bat smells faintly of wood and the strange fruits that grew on that giant tree.".

Table of Game Objects (continued)
name	desc	weight	object
"Broke-Ass Hoe"	"This garden hoe has seen better days. The end has been broken off, but the long, hard shaft should still be usable as a weapon."	4	Broke-Ass Hoe

Broke-Ass Hoe is an armament. It is not temporary.
It has a weapon "your Broke-Ass Hoe".
The weapon damage of Broke-Ass Hoe is 5.
The weapon type of Broke-Ass Hoe is "Melee".
The objsize of Broke-Ass Hoe is 4.
The hitbonus of Broke-Ass Hoe is -1. [broken]
The scent of Broke-Ass Hoe is "Do you normally make a habit of sniffing your hoes?".

Table of Game Objects (continued)
name	desc	weight	object
"flotsam club"	"A rough log of driftwood, polished smooth by the waves and somehow hardened in the salt water. It is quite cumbersome and were it not lightened by its time in the sea, it would be too heavy to wield at all."	15	flotsam club

flotsam club is an armament. It is not temporary.
It has a weapon "[one of]your giant club[or]your rough club[or]your flotsam log[or]your length of sea hardened wood[at random]".
The weapon damage of flotsam club is 8.
The weapon type of flotsam club is "Melee".
The objsize of flotsam club is 5.
The hitbonus of flotsam club is -1. [not a weapon]
The scent of flotsam club is "The large club smells of the sea and those giant trees.".

Table of Game Objects (continued)
name	desc	weight	object
"golden greathammer"	"A very well preserved, large stonehammer vastly coated in gold, with artistic details carved all over the shaft and its tip's support. It is truly a beautiful piece. It's exceptionally heavy too, making it difficult to handle."	12	golden greathammer

golden greathammer is an armament. It is not temporary.
It has a weapon "[one of]your golden greathammer[or]your heavy golden greathammer[or]your heavy weapon[or]your beautiful golden greathammer[at random]".
The weapon damage of golden greathammer is 14.
The weapon type of golden greathammer is "Melee".
The objsize of golden greathammer is 4.
The hitbonus of golden greathammer is -1. [two-handed]
The scent of golden greathammer is "The beautiful golden greathammer smells of old, due to its age, and has an obvious trace of metallic scent.".

Table of Game Objects (continued)
name	desc	weight	object
"mallet"	"A heavy mallet. If you swung it hard enough, you could easily crack someone's head open."	7	mallet

mallet is an armament. It is not temporary.
It has a weapon "your mallet".
The weapon damage of mallet is 10.
The weapon type of mallet is "Melee".
The objsize of mallet is 3.
The hitbonus of mallet is 0. [nothing special]
The scent of mallet is "The mallet smells faintly of the junkyard where you found it.".

Table of Game Objects (continued)
name	desc	weight	object
"medium sledge"	"A rather well balanced, professional sledgehammer, this particular one seems to also have been reinforced with some steel sheathing on the handle, and while heavy it certainly looks like it could do a lot of damage to either a wall, or any creature that gets in your way."	15	medium sledge

medium sledge is an armament. It is not temporary.
It has a weapon "[one of]your sledgehammer[or]your well balanced sledgehammer[or]your heavy weapon[at random]".
The weapon damage of medium sledge is 12.
The weapon type of medium sledge is "Melee".
The objsize of medium sledge is 4.
The hitbonus of medium sledge is -1. [heavy, two handed]
The scent of medium sledge is "The large sledge smells of metal and broken concrete, plaster and heads.".

Table of Game Objects (continued)
name	desc	weight	object
"spiked club"	"A heavy board with nails you crudely pounded into it to vent your frustration."	8	spiked club

spiked club is an armament. It is not temporary.
It has a weapon "[one of]your spiked club[or]your pointed club[or]your improvised weapon[or]your large club[or]your spiked club with a heavy thump[or]your nail board[or]your spiked club, driving one of the nails into them[at random]".
The weapon damage of spiked club is 6.
The weapon type of spiked club is "Melee".
The objsize of spiked club is 4.
The hitbonus of spiked club is -1. [not a weapon]
The scent of the spiked club is "The heavy club smells of blood, sweat and anger... so much anger.".

Table of Game Objects (continued)
name	desc	weight	object
"zephyr bashing riot shield"	"[RiotShieldAttackDesc]"	4	zephyr bashing riot shield

zephyr bashing riot shield is an armament. It is not temporary.
It has a weapon "[one of]your metal shield[or]your suppressive shield[or]your black shield[at random]".
The weapon damage of zephyr bashing riot shield is 8.
The weapon type of zephyr bashing riot shield is "Melee".
The objsize of zephyr bashing riot shield is 4.
The hitbonus of zephyr bashing riot shield is 0. [nothing special]
the scent of the zephyr bashing riot shield is "The zephyr protective riot shield smells faintly of suppressive authority.".

to say RiotShieldAttackDesc:
	say "     A black shield that zephyr's riot security use to suppress threats. This one is yours, and you've chosen to use it for bashing people out of the way. You might [link]change your mind[as]riotshieldProtectMode[end link] though, and direct your shield to more defensive purposes instead.";

riotshieldProtectMode is an action applying to one topic.

understand "riotshieldProtectMode" as riotshieldProtectMode.

check riotshieldProtectMode:
	if carried of zephyr bashing riot shield < 1:
		say "     What shield? You're not holding one right now.";

carry out riotshieldProtectMode:
	if zephyr bashing riot shield is equipped:
		now zephyr bashing riot shield is not equipped;
		say "     You lower your shield and look at it, contemplating how you can defend yourself instead of using it as a blunt weapon.";
	else:
		say "     You look at your shield, contemplating how you can defend yourself instead of using it as a blunt weapon.";
	ItemLoss zephyr bashing riot shield by 1;
	ItemGain zephyr protective riot shield by 1;

Book 3 - Stabbing Weapons

Table of Game Objects (continued)
name	desc	weight	object
"bronze trident"	"A large, bronze three-pronged spear that is as lightweight as it is deadly."	8	bronze trident

bronze trident is an armament. It is not temporary.
It has a weapon "[one of]your three-pronged spear[or]your deadly trident[or]your bronze spear[or]your majestic weapon of doom[at random]".
The weapon damage of bronze trident is 12.
The weapon type of bronze trident is "Melee".
The objsize of bronze trident is 4.
The hitbonus of bronze trident is 1. [magic]
The scent of bronze trident is "The trident smells like the sea, the moon, the stars and... a strong merman? Weird.".


Table of Game Objects (continued)
name	desc	weight	object
"Makeshift-Spear"	"Made by binding the blade of your old pocket knife to a sturdy wooden rod, this Makeshift-Spear is a much better choice for combat than its two separate parts."	3	Makeshift-Spear

Makeshift-Spear is an armament. It is not temporary.
It has a weapon "your Makeshift-Spear".
The weapon damage of Makeshift-Spear is 6.
The weapon type of Makeshift-Spear is "Melee".
The objsize of Makeshift-Spear is 4.
The hitbonus of Makeshift-Spear is -1. [improvised]
The scent of the Makeshift-Spear is "The wood smells a little musty. It brings back memories of the Urban Forest.".


Table of Game Objects (continued)
name	desc	weight	object
"sharp black tusk"	"One of the tusks of the Void Serpent. It is so sharp that can be used as a quite good weapon, but it's very big and easily throws you off balance."	10	sharp black tusk

sharp black tusk is an armament. It is not temporary.
It has a weapon "[one of]your very sharp tusk[or]your void monster's tusk[or]your sharp black tusk[at random]".
The weapon damage of sharp black tusk is 10.
The weapon type of sharp black tusk is "Melee".
The objsize of sharp black tusk is 4.
The hitbonus of sharp black tusk is -1. [not a weapon]
the scent of the sharp black tusk is "The void serpent's tusk actually manages to have a scent, despite coming from the void, and you do not like it. It's undescribably bad, something between rotten and death, even with the apparent good condition of the tusk.".

Table of Game Objects (continued)
name	desc	weight	object
"spear"	"A Viking spear retrieved from the museum. It is in very good condition for its age."	8	spear

spear is an armament. It is not temporary.
It has a weapon "[one of]your spear[or]the Viking spear[at random]".
The weapon damage of spear is 12.
The weapon type of spear is "Melee".
The objsize of spear is 4.
The hitbonus of spear is 1. [mastercraft]
The scent of spear is "The Viking spear smells of ancient battles. The scent gets your blood pumping for battle.".


Book 4 - Ranged Weapons




Weapons ends here.
