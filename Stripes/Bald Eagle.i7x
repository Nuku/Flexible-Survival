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
			say "     As he mates you, he continues to nip and nuzzle at your neck and shoulders, reinforcing his dominance over you even as they feel relaxing and pleasurable. Your inner walls quiver and your honeyed juices start to flow as your excitement builds. Your vagina squeezes and pulls at his meaty rod and, after several minutes of steady pounding, is rewarded with the hot rush of the eagle's semen. As he climaxes, he drives hard into you repeatedly, blasting spurt after spurt of thick semen into you. Once spent, he rubs your belly meaningfully once again before taking flight, leaving you panting and leaking his tainted seed.[ovichance]";
		else:
			say "     He roughly turns you over onto all fours and climbs atop you, sinking his slick cock into your pussy. You moan and quickly grow excited despite yourself as his soft feathers slide over your body while his hard rod drives into you. Your inner walls quiver and your honeyed juices start to flow as your excitement builds. He nips at your shoulder and neck with his pointed beak while mating you. After a few minutes of steady pounding, he drives hard into you repeatedly, blasting spurt after spurt of thick semen into you. Even as you're cumming, he pushes you off his spent cock and onto the ground before soaring away.[ovichance]";
	else if Player is not female and a random chance of T in 6 succeeds:
		say "     He roughly turns you over onto all fours and grabs your ass. 'You're no eagless, but you'll do for now,' he says as he climbs atop you, sinking his slick cock into your ass. You groan in discomfort at the sudden penetration, but quickly grow excited despite yourself as his soft feathers slide over your body while his hard rod drives into you. He nips at your shoulder and neck with his pointed beak while ass-fucking you. After a few minutes of steady pounding, he drives hard into you repeatedly, blasting spurt after spurt of thick semen into you, stuffing your bowels with his seed. Even as you're cumming, he pushes you off his spent cock and onto the ground before soaring away.[movichance]";
	else:
		say "     Tucking his wings in, he grabs your head with his taloned fingers, pulling you to his cock. He grinds his throbbing shaft against you, leaking his pre until the scent of it gets to be too much and you take it into your mouth and start sucking. You lick and suck at his cock, moaning in pleasure as you do until finally he cums, spurting his thick seed down your throat, filling your belly with his semen. Finished, he pushes you back and soars away.";

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
				say "     As the eagle prepares to take off, you pounce upon him, bearing him to the ground. He is briefly stunned, giving you an opportunity to roll him onto his back and grab onto that foot-long cock of his. You stroke it to full erection and clamber atop him, sinking your juicy pussy down over it with a low moan of satisfaction. As he's starting to come out of it, you keep his shoulders pinned and ride the eagle's cock [if Cunt Depth of Player < 8]as hard and as fast as you can given its large size[else]hard and fast[end if]. He makes no attempt to resist or escape, now bucking his hips to thrust up into you until you both reach a loud, crashing orgasm. Once he's spent and you've taken what you've wanted from him, you slide off, moaning softly as you enjoy the warm feeling of his semen inside you.[ovichance]";
			else:
				say "     As the eagle prepares to take off, you pounce upon him, bearing him to the ground. He is briefly stunned, giving you an opportunity to roll him over onto all fours and guide your cock under his feathery tail. With a low moan of satisfaction, you sink your cock into his rear, finding it [if Cock Length of Player > 12]exceptionally[else if Cock Length of Player > 6]very[else]quite[end if] tight around your [cock size desc of Player] [Cock of Player] rod. Still dazed, he gives a squawk of discomfort and tries to squirm away at first, but you keep a good grip on him until his cries turn to moans of pleasure as he's pushing back into your thrusts for more. With a final, hard push, you drive your pulsing cock[if Cock Length of Player > 12] deep[end if] inside him and cum hard, stuffing the bird with your creamy load. As you're filling him, you reach around and stroke him off, getting him to splatter his load across the ground as he's buggered.";
		else:
			increase noeaglesex by 1;
			say "     You make no effort to stop its escape, instead waving your arms at it to shoo the annoying creature away.";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
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
	now Cunt Tightness entry is 6; [ Width of female sex the infection will try to give a player. ]
	now libido entry is 50; [ Target libido the infection will rise towards. ]
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

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
	now Name entry is ""; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 5; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 5; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is ""; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [Head Description of Player]. You have [Eye Adjective of Player], [Eye Color of Player] eyes and an overall [Gender Adjective of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...) to fit "On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style."]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...) to go into "You have a [Hair Color of Player] [Beard Style of Player]."]
	now Body Hair Length entry is 0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3; [mouth circumference 1-5, see Mouth Circumference Adjective]
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Gender Adjective of Player] with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 1], covered in [Torso Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Torso Color of Player] skin[end if]."]
	now Torso Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [torso adornments of Player]."]
	now Torso Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Torso Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Torso Pattern entry is ""; [single word color adjective for the dominant pattern of the skin/fur/feathers/scales]
	now Breast Adjective entry is ""; [adjective(s) example: round, pointy, perky, saggy, bouncy. This would serve as either a general appearance of a infections breasts or possibly something that may be effected by a item or NPC.]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Nipple Count entry is 2; [count of nipples]
	now Nipple Color entry is ""; [one word color descriptor]
	now Nipple Shape entry is ""; [shape example: any shape will do as long as it has a baseline with a current infection or item]
	now Back Change entry is ""; [partial sentence that fits in: "Your back [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Back Change entry]."]
	now Back Adornments entry is ""; [partial sentence to fit: "Your back tickles with the feeling of movement caused by [back adornments of Player]."]
	now Back Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Back Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is ""; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is ""; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Arms Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/octapedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]." (For players with skin, instead of the period: ", covered in [Ass Color of Player] skin and [Body Hair Description of Player]"]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite (< 3), shallow (< 5), average (< 9), deep (< 15), bottomless (15+)"]
	now Asshole Tightness entry is 3; [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "extremely tight, tight, receptive, open, gaping"]
	now Asshole Color entry is ""; [one word color descriptor]
	now Cock Count entry is 0;
	now Cock Girth entry is 0; [thickness 1-5, generates the Cock Girth Adjective]
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 0; [length in inches]
	now Cock Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cock Change entry is ""; [partial sentence that fits in: "Your cock [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is ""; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [cock adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock description of Player]."]
	now Cock Color entry is ""; [one word color descriptor]
	now Ball Count entry is 0; [allowed numbers: 1 (uniball), 2 or 4]
	now Ball Size entry is 0; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is ""; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [ball description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
]



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
