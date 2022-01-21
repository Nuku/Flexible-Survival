Scarab Beetle by Xenophiliac begins here.

"Adds a Scarab Beetle infection to Flexible Survival. It is not a wandering monster, just an infection."

Section 1 - Creature Responses


Section 1 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Scarab Beetle";
	add "Scarab Beetle" to infections of InsectList;
	add "Scarab Beetle" to infections of MythologicalList;
	add "Scarab Beetle" to infections of MaleList;
	add "Scarab Beetle" to infections of InternalCockList;
	add "Scarab Beetle" to infections of OviImpregnatorList;
	add "Scarab Beetle" to infections of Egglaylist;
	add "Scarab Beetle" to infections of HexapedalList;
	add "Scarab Beetle" to infections of FlightList;
	now Name entry is "Scarab Beetle";
	now enemy title entry is "Giant Scarab Beetle"; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is "Amuran"; [specific name of unique enemy]
	now enemy type entry is 1; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[NonCombatError]";
	now defeated entry is "[NonCombatError]";
	now victory entry is "[NonCombatError]";
	now desc entry is "[NonCombatError]";
	now face entry is "an almost-exact replica of a Scarab Beetle. The lower half of your head is occupied entirely by your mouthparts; small appendages surround your actual mouth, which is also flanked by a set of thick, jagged mandibles, capable of slicing through flesh and bone. A set of fluffy antennae protrudes from your head, twitching wildly as you absorb all the smells and senses around you. Your eyes lie near the upper part of your head, off to the sides. Unlike human eyes, they're now compound, insect eyes, entirely pitch-black";
	now body entry is "resembles that of an insect. Your two sets of arms are made up of five individual segments, the end segments terminating in jagged, plated claws. Your legs are similar to your arms, also made up of individual segments, but they end in a flatter, hair-covered foot more suitable for walking. Your back is quite large, a chitinous shield now protecting a set of wide, translucent wings. Since your transformation, your skin has taken on a glimmering [one of]emerald-green[or]sky-blue[or]lavender-purple[or]golden[or]bronze[sticky random] tint, shining beautifully in the [if daytimer is day]day[else]moon[end if]light";
	now skin entry is "chitinous, insectile";
	now tail entry is "";
	now cock entry is "[one of]segmented[or]insectoid[at random]";
	now face change entry is "it begins to transform! The lower half of your head swiftly reshapes itself; the entirety of your lower head soon being replaced by an insectoid mouth, a set of impressive mandibles surrounding the mouthparts of a beetle or grasshopper. Two large, feathered antennae suddenly pop out from your head, twitching and turning of their own volition. Your nose shrinks into your head, rapidly disappearing; your sense of smell is now being maintained by the antennae. Your vision rapidly flashes and adapts as your eyes enlargen and shift position; your eye sockets cease to exist as your pitch-black compound eyes move to the sides of your head. Your head finally settles down, now resembling the head of a beetle";
	now body change entry is "[BeetleBodyChanges]";
	now skin change entry is "it writhes and seethes strangely, ripples coursing through your rapidly-changing skin. It seems to be reshaping into large sections, divided by small indentations into your skin. Soon, your skin stops moving, but rapidly begins to harden, thickening into a hard carapace. Soon enough, your skin resembles that of an insect; a scarab beetle, to be exact";
	now ass change entry is "odd popping and shifting happens internally"; [?]
	now cock change entry is "it begins to change and writhe wildly, strange feelings accompanying the changes. Your shaft begins to shift into segments; soon enough, five individual segments now make up your cock, covered in a hard chitin. Dull ridges along these segments conclude at your cock head, sure to provide even more pleasure to any potential mates";
	now str entry is 20;
	now dex entry is 16;
	now sta entry is 20;
	now per entry is 16;
	now int entry is 16;
	now cha entry is 12;
	now sex entry is "nochange";
	now HP entry is 0;
	now lev entry is 0;
	now wdam entry is 0;
	now area entry is "Nowhere";
	now Cock Count entry is 1;
	now Cock Length entry is 14;
	now Ball Size entry is 2;
	now Nipple Count entry is 0;
	now Breast Size entry is 0;
	now Male Breast Size entry is 0;
	now Cunt Count entry is 1;
	now Cunt Depth entry is 14;
	now Cunt Tightness entry is 6;
	now SeductionImmune entry is false;
	now libido entry is 10;
	now loot entry is "";
	now lootchance entry is 0;
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 3;
	now body descriptor entry is "[one of]chitinous[or]plated[or]ovoid[or]rounded[at random]";
	now type entry is "[one of]insectoid[or]beetle-like[at random]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;
	now altcombat entry is "default";
	now BannedStatus entry is false;




to say BeetleBodyChanges:
	say "all of a sudden, your figure begins to reshape itself, bones and tissues changing and elongating as time goes by. Your arms and legs slim down and extend, reshaping into five individual segments, insectoid in nature. Your feet quickly change into an insectile foot, the bottom of it covered in tiny, sensitive hairs and the entire thing terminating in a large set of spiky claws. Soon to follow are your hands, which change in almost the exact same way as your legs; the palm of your hands now covered in tiny hairs, while your fingers have merged into three large digits, ending in a bug-like claw.";
	say "Soon after your limbs change, your body follows suit. Your back cracks and extends out quickly; you feel a thick set of protective coverings form from your shoulders, growing down to cover your new, translucent beetle wings. Small nubs form below your arms; these soon grow out into a smaller, but nonetheless deadly, pair of arms. Finally, your body ceases changing, leaving you with the form of a beetle";


[ [Will implement soon, hopefully]
Section 3 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Scarab Beetle Infection"	"Infection"	""	Scarab Beetle Infection rule	1000	false

This is the Scarab Beetle Infection rule:
	if Player has a body of "Scarab Beetle":
		trigger ending "Scarab Beetle Infection"; [Here it states, that the ending has been played.]
		say "";]

Scarab Beetle ends here.
