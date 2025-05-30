Riker by Voidsnaps begins here.


[Traits:
Working With Riker: Became his assistant. Submissive toward him.]

Table of GameCharacterIDs (continued)
object	name
Riker	"Riker"

Riker is a man.
ScaleValue of Riker is 4. [human sized upper half, longer snake body]
Body Weight of Riker is 3. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Riker is 5. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Riker is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Riker is 6. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Riker is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Riker is 6. [length in inches]
Breast Size of Riker is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Riker is 2. [count of nipples]
Asshole Depth of Riker is 8. [inches deep for anal fucking]
Asshole Tightness of Riker is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Riker is 2. [number of cocks]
Cock Girth of Riker is 3. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Riker is 12. [Length in Inches]
Ball Count of Riker is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Riker is 2. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Riker is 0. [number of cunts]
Cunt Depth of Riker is 0. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Riker is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Riker is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Riker is false.
PlayerRomanced of Riker is false.
PlayerFriended of Riker is false.
PlayerControlled of Riker is false.
PlayerFucked of Riker is false.
OralVirgin of Riker is false.
Virgin of Riker is true.
AnalVirgin of Riker is false.
PenileVirgin of Riker is false.
SexuallyExperienced of Riker is true.
TwistedCapacity of Riker is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Riker is true. [steriles can't knock people up]
MainInfection of Riker is "".
Description of Riker is "[RikerDesc]".
Conversation of Riker is { "<This is nothing but a placeholder!>" }.
Scent of Riker is "[RikerScent]".
Libido of Riker is usually 5000.

to say RikerDesc:
	say "      You're not quite sure what to make of the naga standing in front of you. On one hand, the cowboy hat tilted rakishly on his head is slightly comical, but there's nothing funny about the stare he fixes you with. Frankly, he looks like he's going to eat you. Slitted yellow pupils regard you with no small amount of contempt, and a flicking tongue gives you the impression he thinks of you as prey. Sizable dark spots start at the naga's humanoid (but still quite reptillian) chest, melting seamlessly into an anaconda-esque pattern along his tapering tail, drawing your eye when they coil, as though practicing for something sinister. Altogether, Riker appears to be someone you should not fuck with, ";
	if "Working With Riker" is listed in Traits of Player:
		say "even though you have a working 'business' relationship. You haven't seen much evidence that the man has any sense of loyalty to anyone but his faceless 'clients.'";
	else:
		say "though there's not much he can do about it anymore, now that you've kicked his ass and freed his captives. Silently, you thank yourself for chaining the naga up.";

to say RikerScent:
	say "      Riker smells like petrichor and masculinity, with a hint of sandalwood. Clearly he doesn't pay much attention to vanity in this respect, and you suspect his smell is related to slithering around in the damp, committing heinous deeds.";

Instead of fucking Riker:
	if "Working With Riker" is listed in Traits of Player: [Somewhat equals. Still you're the bottom.]
		if lastfuck of Riker - turns < 6:
			say "     <Under construction. This will continue later!>";
		else:
			say "[RikerPartnerSexMenu]";
	else: [Riker defeated, he is your bound sex slave.]
		if lastfuck of Riker - turns < 6:
			say "     <Under Construction. There is nothing here currently.>";
		else:
			say "[RikerBeatenSexMenu]";



to say RikerBeatenSexMenu:
	say "<There's nothing here yet, sorry! There will be more down the road!>";

to say RikerPartnerSexMenu:
	say "<There's nothing here yet, sorry! There will be more down the road!>";

Table of CombatPrep (continued)
name(text)	PrepFunction(text)
"Naga Trafficker"	"[PrepCombat_Naga Trafficker]"

to say PrepCombat_Naga Trafficker:
	setmongender 3;

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Naga Trafficker";
	add "Naga Trafficker" to infections of AmphibianList;
	add "Naga Trafficker" to infections of NatureList;
	add "Naga Trafficker" to infections of MaleList;
	add "Naga Trafficker" to infections of InternalCockList;
	add "Naga Trafficker" to infections of BipedalList;
	now Name entry is "Riker";
	now enemy title entry is "Naga Trafficker";
	now enemy Name entry is ""; [ Specific name of unique enemy. ]
	now enemy type entry is 0; [ 0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters. ]
	now attack entry is "[one of]Swiping at you with swift claws, the naga slices at your exposed arms, aiming for an opening.[or]Attempting to grab you in slithering coils, the naga tries to constrict you, blatantly feeling you up even as he crushes your poor body. Thankfully, you break free before he can do much damage, but you're sure you'll feel it in the morning![or]Throwing a haymaker punch at your face, the naga tries to knock you out in one go, though he doesn't land a solid hit.[at random]";
	now defeated entry is "<Fight Only for Now.>";
	now victory entry is "<Fight Only for Now.>";
	now desc entry is "<Fight Only for Now.>";
	now face entry is "<Fight Only for Now.>";
	now body entry is "<Fight Only for Now.>";
	now skin entry is "<Fight Only for Now.>";
	now tail entry is "<Fight Only for Now.>";
	now cock entry is "<Fight Only for Now.>";
	now face change entry is "<Fight Only for Now.>";
	now body change entry is "<Fight Only for Now.>";
	now skin change entry is "<Fight Only for Now.>";
	now ass change entry is "<Fight Only for Now.>";
	now cock change entry is "<Fight Only for Now.>";
	now str entry is 24;
	now dex entry is 20;
	now sta entry is 24;
	now per entry is 20;
	now int entry is 14;
	now cha entry is 19;
	now sex entry is "Male"; [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 130;
	now lev entry is 12; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 15; [ Amount of Damage monster Does when attacking. ]
	now area entry is "Nowhere"; [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 10; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 3; [ Size of balls ]
	now Nipple Count entry is 2; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0;
	now SeductionImmune entry is false;
	now libido entry is 30; [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is ""; [ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 50; [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "naga trafficker milk";
	now CumItem entry is "";
	now TrophyFunction entry is "";
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is ""; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "";
	now magic entry is false;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is true;
	now Cross-Infection entry is ""; [sexually transmitted infection for when the player loses; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "hump"; [ Row used to designate any special combat features, "default" for standard combat. ]
	now BannedStatus entry is false;









Riker ends here.