Scarab Beetle by Xenophiliac begins here.

"Adds a Scarab Beetle infection to Flexible Survival. It is not a wandering monster, just an infection."

Section 1 - Monster Responses

when play begins:
	add { "Scarab Beetle" } to infections of Insectlist;      [list of insectile infections]
	add { "Scarab Beetle" } to infections of Internallist;   [list of infections w/internal male genitals]
[Unsure if above is needed]

Section 1 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
   Choose a blank row from Table of random critters;
   now name entry is "Scarab Beetle";
   now attack entry is "Impossible - Error";
   now defeated entry is "Impossible - Error";
   now victory entry is "Impossible - Error";
   now desc entry is "Impossible - Error";
   now face entry is "an almost-exact replica of a Scarab Beetle. The lower half of your head is occupied entirely by your mouthparts; small appendages surround your actual mouth, which is also flanked by a set of thick, jagged mandibles, capable of slicing through flesh and bone. A set of fluffy antennae protrudes from your head, twitching wildly as you absorb all the smells and senses around you. Your eyes lie near the upper part of your head, off to the sides. Unlike human eyes, they're now compound, insect eyes, entirely pitch-black";
   now body entry is "resembles that of an insect. Your two sets of arms are made up of five individual segments, the end segments terminating in jagged, plated claws. Your legs are similar to your arms, also made up of individual segments, but they end in a flatter, hair-covered foot more suitable for walking. Your back is quite large, a chitinous shield now protecting a set of wide, translucent wings. Since your transformation, your skin has taken on a glimmering [one of]emerald-green[or]sky-blue[or]lavender-purple[or]golden[or]bronze[sticky random] tint, shining beautifully in the [if daytimer is day]day[else]moon[end if]light.";
   now skin entry is "chitinous, insectile";
   now tail entry is "";
   now cock entry is "[one of]segmented[or]insectoid[at random]";
   now face change entry is "it begins to transform! The lower half of your head swiftly reshapes itself; the entirety of your lower head soon being replaced by an insectoid mouth, a set of impressive mandibles surrounding the mouthparts of a beetle or grasshopper. Two large, feathered antennae suddenly pop out from your head, twitching and turning of their own volition. Your nose shrinks into your head, rapidly disappearing; your sense of smell is now being maintained by the antennae. Your vision rapidly flashes and adapts as your eyes enlargen and shift position; your eyesockets cease to exist as your pitch-black compound eyes move to the sides of your head. Your head finally settles down, now resembling the head of a beetle";
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
   now cocks entry is 1;
   now cock length entry is 14;
   now cock width entry is 4;
   now breasts entry is 0; [?]
   now breast size entry is 0; [?]
   now male breast size entry is 0;
   now cunts entry is 1;
   now cunt length entry is 14;
   now cunt width entry is 6;
   now libido entry is 10;
   now loot entry is "";
   now lootchance entry is 0;
   now scale entry is 3;
   now body descriptor entry is "[one of]chitinous[or]plated[or]ovoid[or]rounded[at random]";
   now type entry is "[one of]insectoid[or]beetle-like[at random]";
   now magic entry is false; [?]
   now resbypass entry is false; [?]
   now non-infectious entry is false;
   blank out the nocturnal entry;
   now altcombat entry is "default";

to say BeetleBodyChanges:
	say "all of a sudden, your figure begins to reshape itself, bones and tissues changing and elongating as time goes by. Your arms and legs slim down and extend, reshaping into five individual segments, insectoid in nature. Your feet quickly change into an insectile foot, the bottom of it covered in tiny, sensitive hairs and the entire thing terminating in a large set of spiky claws. Soon to follow are your hands, which change in almost the exact same way as your legs; the palm of your hands now covered in tiny hairs, while your fingers have merged into three large digits, ending in a bug-like claw.";
	say "Soon after your limbs change, your body follows suit. Your back cracks and extends out quickly; you feel a thick set of protective coverings form from your shoulders, growing down to cover your new, translucent beetle wings. Small nubs form below your arms; these soon grow out into a smaller, but nonetheless deadly, pair of arms. Finally, your body ceases changing, leaving you with the form of a beetle";

Section 3 - Endings
[Will implement soon, hopefully]
[when play ends:
	if bodyname of player is "Scarab Beetle":
		say "";]

Scarab Beetle ends here.
