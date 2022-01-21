Version 1 of Brown Rat by Wahn begins here.
[Version 1 - New Noncombat Infection]

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Brown Rat";
	add "Brown Rat Male" to infections of RodentList;
	add "Brown Rat Male" to infections of FurryList;
	add "Brown Rat Male" to infections of MaleList;
	add "Brown Rat Male" to infections of BipedalList;
	add "Brown Rat Male" to infections of TailList;
	now Name entry is "Brown Rat Male"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[NonCombatError]"; [ Successful attack message ]
	now defeated entry is "[NonCombatError]"; [ Text when monster loses. ]
	now victory entry is "[NonCombatError]."; [ Text when monster wins. ]
	now desc entry is "[NonCombatError]"; [ Description of the creature when you encounter it. ]
	now face entry is "that of an anthro rat with a long, narrow muzzle and twitching whiskers. The short fur on your face gets longer towards the edge of your cheeks and on top of your head, creating a hard to tame 'scruffy' appearance"; [ Face. Format as Your face is [Face of Player]. ]
	now body entry is "that of a wiry street rat, built for survivability. The tough pads on your slender paws and somewhat elongated claws make them perfect for running on asphalt and concrete"; [ Body. Format as "Your body is [Body of Player]." ]
	now skin entry is "various shades of brown-furred"; [ Skin. Format as "Looking at yourself, your body is covered in [Skin of Player] skin." ]
	now tail entry is "You have a long and slender rat's tail growing from your backside. It does wonders for your balance, which could help you get out of sticky situations. Maybe."; [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "[one of]human-like[or]uncut[purely at random]"; [ Cock. Format as "You have a 'size' [Cock of Player] cock." ]
	now face change entry is "your head fills with thoughts of survival on the streets as a long, ratty muzzle forms on your face"; [ Face TF text. Format as "Your face tingles as [face change entry]." ]
	now body change entry is "your body shifts, becoming tall and slender with a wiry figure. Your hands and feet turn into nimble, rat-like paws with small claws at the fingertips"; [ Body TF text, format as "Your body tingles as [body change entry]. ]
	now skin change entry is "short fur in various shades of brown spreads across your body. While it should serve to protect your skin from scrapes and bruises somewhat, you feel that it will be hard to tame and keep from looking 'scruffy'"; [ Skin TF text, format as "Your skin tingles as [skin change entry]. ]
	now ass change entry is "a long and slender rat tail grows from your rear. It is grayish-pink, hairless and should help some with your balance in the future"; [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "it shifts and becomes human-like, complete with uncut foreskin"; [ Cock TF text, format as "Your groin tingles as [cock change entry]." ]
	now str entry is 10; [ These are now the creature's stats... ]
	now dex entry is 14; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 10; [ These values may be used as part of alternate combat.]
	now per entry is 12;
	now int entry is 10;
	now cha entry is 15;
	now sex entry is "nochange"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 22; [ The monster's starting HP. ]
	now lev entry is 1; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 3; [ Monster's average damage when attacking. ]
	now area entry is "Nowhere"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 8; [ Length infection will make cock grow to if cocks. ]
	now Ball Size entry is 3; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 0; [ Size of breasts the infection will try to attain. ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 6; [ Depth of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 3; [ Inches circumference. 3:extremely tight, 5:tight, 7:receptive, 10:open, 11+ gaping ]
	now SeductionImmune entry is false;
	now libido entry is 10; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "";
	now CumItem entry is "brown rat cum";
	now TrophyFunction entry is "-";
	now scale entry is 3;
	now body descriptor entry is "[one of]slender[or]wiry[as decreasingly likely outcomes]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "[one of]rat[or]murine[or]ratty[at random]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;
	now altcombat entry is "default";
	now BannedStatus entry is false;


Table of Game Objects (continued)
name	desc	weight	object
"brown rat cum"	"A plastic water bottle you've filled with rat cum. Its contents are milky white and somewhat thicker than milk. If you didn't know where it was from, you'd almost think it might be some sort of flavored buttermilk. You could drink it to quench your thirst, but who knows what else it might do to you..."	1	brown rat cum

instead of sniffing brown rat cum:
	say "You open the lid for a moment and take a sniff. Bit of a nutty smell, not too bad.";

brown rat cum is a grab object. brown rat cum is cum.
brown rat cum is infectious. Strain of brown rat cum is "Brown Rat Male".
Usedesc of brown rat cum is "[brown rat cum use]";

to say brown rat cum use:
	say "Lifting the plastic bottle to your mouth, you take a drink from it, letting the creamy rat cum run over your tongue and down your throat. Not too bad for taking care of thirst in an emergency. You swish it around in your mouth a little as you slowly finish the bottle off, then give a little belch.";
	PlayerDrink 10;
	SanLoss 3;

Brown Rat ends here.
