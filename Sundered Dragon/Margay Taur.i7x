Margay Taur by Sundered Dragon begins here.
[Version 1.01 Margay Taur TF test phase]
"Adds a fpreg OviImpregnator taur infection to the Flexible Survival game."

Section 1 - Creature Responses

to say losetoMargayTaur:
	say "";

to say beattheMargayTaur:
	say "";

to say MargayTaurdesc:
	say "";

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Margay Taur"; [ Name of the overall species of the infection, used so a "male x" and "female x" have "pureblood X" children. ]
	add "Margay Taur" to infections of FelineList;
	add "Margay Taur" to infections of FurryList;
	add "Margay Taur" to infections of NatureList;
	add "Margay Taur" to infections of FemaleList;
	add "Margay Taur" to infections of BarbedCockList;
	add "Margay Taur" to infections of SheathedCockList;
	add "Margay Taur" to infections of TaurList;
	add "Margay Taur" to infections of OviImpregnatorList;
	add "Margay Taur" to infections of TailWeaponList;
	now Name entry is "Margay Taur";
	now enemy title entry is ""; [ Name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name. ]
	now enemy Name entry is ""; [ Specific name of unique enemy. ]
	now enemy type entry is 0; [ 0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters. ]
	now attack entry is "";
	now defeated entry is "[beattheMargayTaur]";
	now victory entry is "[losetoMargayTaur]";
	now desc entry is "[MargayTaurdesc]";
	now face entry is "cute and innocent like a kitten with wide expressive eyes, natural black eyeliner, and adorable pointed catty ears"; [ Face description, format as "Your face is [Face of Player]." ]
	now body entry is "tauric and pleasingly plump. Your anthro half has a cute muffin top and an adorable outie. While your arms are an efficient mix of feline and human complete with soft paw pads and long retractable claws. Beneath this cuddly exterior though, is a dense layer of hardened muscles[if Affection of Ava is 1]. Growing out of your back is a collection of smooth prehensile tendrils almost as long as you are. Thanks to their size and strength, you often find yourself using them to assist in manual tasks, or support your burgeoning body. Well, when you're not using them for more intimate encounters that is[end if]. From the waist down, your body resembles a chubby hunting cat with four plush digitigrade feline legs";
	now skin entry is "a soft beautiful golden pelt festooned with black rosettes alongside patches of creamy white fur that covers your pale pliable";
	now tail entry is "You have wide fecund hips with an incredibly long prehensile feline tail[if Affection of Ava is 1]. Hidden under the fur on the tip of your tail are subtle lips of your exotic ovi slit, sadly your egg laying limb is only effective on fellow margay taurs[end if].";
	now cock entry is "Barbed and tapered";
	now face change entry is "";
	now body change entry is "";
	now skin change entry is "";
	now ass change entry is "";
	now cock change entry is "";
	now str entry is 18;
	now dex entry is 17;
	now sta entry is 16;
	now per entry is 15;
	now int entry is 10;
	now cha entry is 20;
	now sex entry is "Female"; [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 150; [ How many HP has the monster got? She's not too hard- she doesn't want to win so much as not lose]
	now lev entry is 20; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 25; [Amount of Damage monster Does when attacking. Claws and massive strength]
	now area entry is "Nowhere"; [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 0; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 0; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 0; [ Size of balls apparently ;) sneaky Nuku (big balls are underrated.)]
	now Nipple Count entry is 12; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 13; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 35;
	now Cunt Tightness entry is 20;
	now SeductionImmune entry is false;
	now libido entry is 60; [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is "";
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "margay taur milk";
	now CumItem entry is ""; [ Item to be given to the player if they have this infection and jerk off. ]
	now TrophyFunction entry is ""; [ Function to generate a list of optional loot items, of which the player can choose one after victory. ]
	now scale entry is 5; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]plump[or]tubby[or]fat[or]voluptuous[or]chubby[or]cuddly[or]huggable[at random]";
	now type entry is "feline"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is true;
	now non-infectious entry is true; [non-shiftable lore wise the Margay taur is broken barely functioning infection]
	now Cross-Infection entry is ""; [ Infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own strain. ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "Margay Taur"; [ Row used to designate any special combat features, "default" for standard combat. ]
	now BannedStatus entry is false;


Margay Taur ends here.
