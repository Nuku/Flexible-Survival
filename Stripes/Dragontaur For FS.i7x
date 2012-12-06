Version 1 of Dragontaur For FS by Stripes begins here.
[Version 1]
"Adds a Dragontaur creature to Flexible Survivals Wandering Monsters table to go along with Sam the Dual-Taur's content."

Section 1 - Monster Responses

when play begins:
	add { "Dragontaur" } to infections of guy;
	add { "Dragontaur" } to infections of furry;
	add { "Dragontaur" } to infections of Tailweapon;		[usable for Tail Strike feat]
	add { "Dragontaur" } to infections of Reptilelist;		[list of reptile infections]
	add { "Dragontaur" } to infections of Taurlist;			[list of tauric infections]


to say losetodragontaur:
	if hp of Sam is 15:
		say "     Sam grabs you roughly and [if scalevalue of player < 4]hefts you over his head.  With a growl, he tosses you several yards away[otherwise]pushes you back with a powerful shove[end if].  You land half on and half off a cot, painfully injuring your back.";
	otherwise:
		say "     Having defeated you, the dragontaur roars trimphantly and presses you to the ground.  It rumbles in your ear as it moves to mount you about [if cunts of player > 0]it's going to breed you full of whelps[otherwise]pound you until you're overflowing with cum[end if] and thrusts into you with little preamble.  It's tapered tip is designed for prying open reluctant holes and pushes its way into your [if cunts of player > 0][cunt size desc of player] pussy with ease[otherwise]tight anus[end if].  The draconic cock thickens as it pushes further into you, each of those ridges on it acting as delightfully pleasurable markers of just how much meat the powerful taur is stuffing inside you.  The dragon fucks you with wild, animalistic abandon, pounding you until you're nearly insensate with lust and finally climax as he blasts shot after shot of his creamy load into your wanton hole, bloating your [if cunts of player > 0]womb[otherwise]belly[end if] with his prodigious output.  Finished, he pushes you aside, leaving you on the ground and leaking his cum from your overstuffed and gaping [if cunts of player > 0]pussy[otherwise]asshole[end if].[impregchance]";
	[more variations needed in the future]


to say beatthedragontaur:
	if hp of Sam is 15:
		say "     You manage to knock Sam down, having beaten the fight out of him.";
	otherwise:
		say "     The beaten dragontaur backs away from you, stumbling somewhat from its injuries.  It opens its maw wide and releases its fire in a wide wave, forcing you back.  It takes this opportunity to make its retreat and take to the air.  It does not fly steadily, but is able to stay airborne and make its escape.";


to say dragontaurdesc:
	if hp of Sam is 15:	[Fight w/Sam]
		say "     Drawn into a fight with Sam, you find yourself facing off against the powerful dragontaur.  He has a draconic head with a pointed muzzle filled with sharp teeth and has pointy horns at the back of it.  His hands have claws and his feet are taloned.  His tail is thick and has a spaded tip.  Sam's hide is covered in thick, hard scales as well.  Both armed and armoured, the dragontaur is a dangerous enemy.";
	otherwise:			[Random Dragontaur]
		say "     Before you is a draconic taur creature, definitely one of Sam's many descendents.  The creature's draconic head has a long, pointed muzzle with a slight curve at the end.  Its blue scales darken towards the back of its head as they approach the base of the ivory horns which jut from the back of its head.  Aside from the large pair at the top, there are three smaller horns on each side.  Its upper body is generally human in shape, but covered in azure scales and is quite toned, showing firm pecs and hard abs under the dense scales.";
		say "     Its lower body is fully draconic, a compact but powerful beast with strong limbs and a stocky frame to support its weight.  Its azure scales give way to harder, steel blue plates along its underbelly.  Atop the back of its tauric body are a pair of draconic wings that are folded alongside its sides at the moment.  It has a long lizard tail ending in a spaded tip.  Beneath its lower body hangs its plump sheath and large balls, from which its ridged cock is starting to emerge.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Dragontaur";		[The creature's name as displayed and used in naming descriptions]
	now attack entry is "[one of]The dragontaur slams its tail into you, bashing you aside![or]The dragontaur rears up and slashes you with its foreclaws![or]It snaps and tears at you with its fangorious maw![or]The dragontaur punches you soundly in the jaw![or]The dragon creature grabs you with its clawed hands and slams its bony head into yours.  The head butt leaves you seeing stars for a moment.[at random]";
	now defeated entry is "[beatthedragontaur]";				[ Text when monster loses.  Change 'template' as above. ]
	now victory entry is "[losetodragontaur]";					[ Text when monster wins.  Change 'template' as above. ]
	now desc entry is "[dragontaurdesc]";						[ Description of the creature when you encounter it. ]
	now face entry is "draconic with a long, pointed muzzle that slight curve at the end.  There are a pair of large ivory horns which jut from the back of your head along with three smaller pairs below that";
	now body entry is "considerably transformed, having gained a tauric lower half that is draconic in appearance.  While your upper body largely resembles that of a strong, fit human being, your lower body is that of a stocky dragon";
	now skin entry is "steel blue scales";
	now tail entry is "You have a thick dragon tail swaying behind you, slapping the ground on occasion with its spaded tip.";
	now cock entry is "[one of]ridged[or]draconic[or]pointed[or]tapered[as decreasingly likely outcomes]";
	now face change entry is "you feel a powerful pounding at the top of your skull.  As this grows worse, your face pushes outward and changes with several snaps and pops.  A draconic muzzle forms as the pain in your skull suddenly fades as large horns push forth from the back of your head";
	now body change entry is "your body shifts and bends unnaturally into two sections.  The upper half reforms into a muscular and masculine body with visible definition.  The lower section becomes that of a four-legged lizard with a stocky frame and taloned claws for feet.  Your hands are a cross between these and normal hands.  Finding yourself with a dragontaur body like Sam's, your mind quickly adjusts to compensate for your new quadrupedal form";
	now skin change entry is "your skin grows thick and hard, forming heavy blue scales across your entire body";
	now ass change entry is "strange twinges run up and down your spine.  Each time these tingles run down, they seem to travel further and further down until the growth of your new, draconic tail is complete";
	now cock change entry is "pulses and throbs with need.  As you watch, it changes shape and becomes more tapered and gains a pointed, conical glans for pushing into its prey.  Ridges form along the length of your cock for added stimulation.  You find yourself looking forward to putting your new tool to use";
	now str entry is 19;			[ These are now the creature's stats... ]
	now dex entry is 19;			[ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 16;			[ These values may be used as part of alternate combat.]
	now per entry is 12;
	now int entry is 14;
	now cha entry is 12;
	now sex entry is "Male";		[ Infection will move the player towards this gender.  Current: 'Male' 'Female' 'Both' ]
	now hp entry is 99;			[ The monster's starting hit points. ]
	now lev entry is 11;			[ Monster level.  (Level x 2) XP for victory.  (Level / 2) XP for losing. ]
	now wdam entry is 10;			[ Monster's average damage when attacking. ]
	now area entry is "nowhere";		[ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1;			[ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 16;		[ Length infection will make cock grow to if cocks. ]
	now cock width entry is 8;		[ Cock width, more commonly used for ball size. ]
	now breasts entry is 0;			[ Number of breasts the infection will give a player. ]
	now breast size entry is 0;		[ Size of breasts the infection will try to attain. ]
	now male breast size entry is 0;    [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;			[ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 0;		[ Depth of female sex the infection will attempt to give a player. ]
	now cunt width entry is 0;		[ Width of female sex the infection will try to give a player. ]
	now libido entry is 70;			[ Target libido the infection will rise towards. ]
	now loot entry is "";			[ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 0;		[ Percentage chance of dropping loot, from 0-100. ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 4;				[ Number 1-5, approx size/height of infected PC body:  1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]strong[or]muscled[or]athletic[or]tauric[at random]";
	now type entry is "[one of]draconic[or]dragontaur[as decreasingly likely outcomes]";
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is true;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "dragontaur";	[ Row used to designate any special combat features, "default" for standard combat. ]


Section 3 - Alt Combat

Table of Critter Combat (continued)
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)	altstrike (rule)
"dragontaur"	firebreath rule	--	--	drtaurpounce rule	20	--	--	--	--	--

this is the drtaurpounce rule:		[double-damage pouncing]
	choose row monster from the table of random critters;
	let rangenum be ( 80 - ( peppereyes * 4 ) );
	let dam be ( ( wdam entry times a random number from rangenum to 120 ) / 50 );	[Double damage]
	if hardmode is true and a random chance of 1 in ( 10 + peppereyes ) succeeds:
		now dam is (dam * 150) divided by 100;
		say "The enemy finds a particular vulnerability in your defense - Critical Hit![line break]";
	say "The [one of][name entry][of]draconid[or]dragontaur[or]dragon creature[purely at random] growls and pounces atop you, [one of]knocking[or]pushing[or]slamming[purely at random] you down briefly.  It's many talons claw at you while the dragon roars.  This [one of]powerful[or]strong[or]devastating[purely at random] assault does [special-style-2][dam][roman type] damage!";
	now damagein is dam;
	say "[noshieldabsorbancy]";		[unable to use shield while pinned]
	if absorb is greater than dam:
		now absorb is dam;
	if absorb is greater than 0:
		say "You prevent [special-style-1][absorb][roman type] damage!";
	decrease hp of the player by dam;
	increase hp of player by absorb;
	follow the player injury rule;
	say "You are [descr].";


Section 4 - Endings

[
when play ends:
	if bodyname of player is "Dragontaur":
		if humanity of player is less than 10:
			say "     You succumb to your template infection.";
		otherwise:
			say "     You survive, but were infected by the template.";
			if cocks of player > 0:							[MALE/HERM]
				say "     Additional text for a male/herm survivor.";
			otherwise if "Sterile" is not listed in feats of player:	[F-BREEDABLE]
				say "     Additional text for a female survivor who can become preggers.";
			otherwise:									[F-STERILE]
				say "     Additional text for a female survivor who cannot become preggers.";
]

[ Edit this to have the correct creature name as well]
Dragontaur For FS ends here.