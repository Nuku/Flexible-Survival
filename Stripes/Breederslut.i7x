Version 1 of Breederslut by Stripes begins here.
[ Version 1.1 - Heat scene w/Dominick added ]

"Adds a Breederslut infection for use with Dominick."

Section 1 - Creature Responses

when play begins:
	add { "Breederslut" } to infections of furry;
	add { "Breederslut" } to infections of Caninelist; [list of canine infections]
	add { "Breederslut" } to infections of Knotlist; [list of cock infections with a knot]

to say breederslutdesc:
	say "ERROR-Breederslut - You should not be able to encounter them.";

to say losetobreederslut:
	say "ERROR-Breederslut - You should not be able to encounter them.";

to say beatthebreederslut:
	say "ERROR-Breederslut - You should not be able to encounter them.";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Length	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Name entry is "Breederslut";
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]The template attacks you in some abstract manner![or]The template leaves you greater understanding, thereby lowering your resistance to it![or]The template batters you with examples![or]The template firmly makes its point![at random]";
	now defeated entry is "[beatthebreederslut]";
	now victory entry is "[losetobreederslut]";
	now desc entry is "[breederslutdesc]";
	now face entry is "that of a cute doggy with a mid-length muzzle, pointed ears and a happy if vapid expression";
	now body entry is "quite short, not even five feet tall, and with a cute, feminine build. As a Shiba Inu, you've got an overall canine frame and, while bipedal, are quite comfortable moving down onto all fours (for presenting yourself). Your limbs are short and end in partially paw-like hands. Just above your crotch, you have the word [']fucktoy['] tattooed there, always showing through any fur or scales you might have";
	now skin entry is "golden brown and snowy white fur-covered";
	now tail entry is "You have a short, fluffy tail that curls up cutely.";
	now cock entry is "[one of]canine[or]knotted[or]doggy[at random]";
	now face change entry is "pleasant tingles spread across your face. Your mouth distorts, forming a cute little muzzle with a happy doggy smile on it. Your eyes shift position and your ears become short and pointed. By the time the transition is over, you're left with the head of a very cute Shiba Inu atop your shoulders";
	now body change entry is "you start to transform. Shivers of pleasure run through you as your body is changed, becoming small and canine. By the time it's done, you've become a cute and feminine Shiba Inu anthro. After a momentary pause, fresh pinpricks can be felt just above your crotch. Looking down, you can see a tattoo-like marking saying [']fucktoy['] appear there";
	now skin change entry is "pinpricks spread across your skin. From these points, a fluffy coat of fur forms. It's a lovely shade of golden brown across your limbs, shoulders and back, and a snowy white across your chest and neck and chin";
	now ass change entry is "your lower spine tingles. A short, fluffy tail forms above your ass, curling up cutely so as to never hide your cute tush";
	now cock change entry is "takes on a markedly canine shape. It keeps a soft, pinkish flesh tone while gaining a sheath as well. And while it strangely appealing to you, you feel no immediate desire to put your new doggy dong to the test";
	now str entry is 8;
	now dex entry is 8;
	now sta entry is 8;
	now per entry is 8;
	now int entry is 8;
	now cha entry is 16;
	now sex entry is "Female"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 15; [ The monster's starting HP. ]
	now lev entry is 1; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 3; [ Monster's average damage when attacking. ]
	now area entry is "Nowhere"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 0; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 0; [ Length in inches infection will make cock grow to if cocks. ]
	now Ball Size entry is 0; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 12; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Length entry is 16;
	now Cunt Tightness entry is 12;
	now libido entry is 45; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 2; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "cute";
	now type entry is "[one of]canine[or]doggy[or]doge[or]pedigree[as decreasingly likely outcomes]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Table of New Infection Parts (continued)
Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Length	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Name entry is ""; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 5; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 5; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is ""; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [head description of Player] with [eye color of Player], [eye type of Player] eyes and an overall [gender appearance of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...)]
	now Beard Style entry is ""; [short beard style (goatee/three day stubble/full beard/...)]
	now Body Hair Length entry is  0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective  is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3;
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Body Adjective of Player], [Gender Adjective of Player] and your torso is [Torso Description of Player][if Body Hair Length of Player > 0], covered in [Body Hair Adjective of Player] [Hair Color of Player] chest hair[end if]."]
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
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [ass description of Player]."]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Tail Change entry]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking;]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Asshole Tightness entry is 3;
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "tiny, small, tight, wide, gaping"]
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
	now Cunt Length entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/well-used/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that is [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]



Section 3 - Heat

Table of infection heat (continued)
infect name	heat cycle	heat duration	trigger text	description text	heat start	heat end	inheat	fheat (truth state)	mpregheat (truth state)	mpregtrigger
"Breederslut"	400	400	"[bsheat_trigger]"	"puffy and dripping doggy mound"	"[bsheat_start]"	"[bsheat_end]"	"[bsheat]"	true	false	""

to say bsheat_trigger:
	say "     You feel a growing warmth in your lower belly that makes you moan. As it grows stronger, you drop to your knees, feeling your pussy quiver and clench. Your crotch grows damp with pussy juices[if Cunt Length of Player < 8 or Cunt Tightness of Player < 6] as it stretches and swells wider[end if] with a desire to breed. Thoughts of [if HP of Dominick > 0]Dominick[else]some studly canine you can't quite picture[end if] pounding you full of puppies fill your idle thoughts as you go into heat.";
	if Cunt Length of Player < 8, increase Cunt Length of Player by 1;
	if Cunt Tightness of Player < 6, increase Cunt Tightness of Player by 1;

to say bsheat_start:
	if Libido of Player < 45, now Libido of Player is ( 45 + ( Libido of Player * 3 ) ) / 4;

to say bsheat_end:
	if Libido of Player > 20:
		decrease Libido of Player by 10;
		if Libido of Player < 20, now Libido of Player is 20;

to say bsheat:
	increase Libido of Player by 3;
	if Dominick is visible and ( lastfuck of Dominick - turns ) >= 8 and a random chance of Libido of Player in 150 succeeds:
		setmonster "Breederslut";
		choose row MonsterID from the Table of Random Critters;
		LineBreak;
		say "     Looking over at Dominick, you feel another tremble of excitement strike your loins. You start to pant, suddenly feeling very hot - especially between your legs. The sexy husky's nose sniffs the air, turning towards you with a confident grin. His cock twitches and dribbles a strand of pre onto the floor. With your eyes drawn to that meaty red pole, your insides flutter again with heated desire.";
		say "     'Come here, you horny thing,' Dom says, getting up from his seat. 'I know you want it.' His canine shaft, now fully erect, stands proud and ready for you. With the heat only growing stronger in your loins, you obey and head over to him. Moving onto all fours, you present yourself to him with a needy whine.";
		WaitLineBreak;
		say "     Dom places his paws on your rump and gives your ass a squeeze. 'That's a good [if Player is male]wannabe-[end if]bitch,' he says, kneeling down to sniff your puffy dog-cunt. His hot, wet breath fans across your hot, wet folds moments before he gives your dripping cunt a nice, long lick. 'Oh, how I love that taste. Nothing like a bitch in heat to get a stud hard. So hot and ready for a belly full of my puppies. You'd like that, wouldn't you?' he pants in your ear even as he mounts you and sinks his canine cock into your trembling tunnel. All you can do in moan in response, your heat-addled mind loving the thought of your belly getting filled by a litter of his pups.";
		say "     He pounds your juicy cunt with considerable zeal, his cock throbbing inside you all the while. You imagine his doggy dick is drooling precum laced with sperm, a chance to become pregnant even now. Not that you want it to stop; your body simply aches for a thorough fucking. You push back into his thrusts, whining and panting like the bitch in heat you are. He takes the nape of your neck in his jaws and growls his dominance and ownership of you.";
		WaitLineBreak;
		say "     He ruts you like what feels like a long time, having pushed you to several short orgasms. But now a big one is building even as his panting grows heavier. His knot bulges larger, tying the two of you together, ensuring there will be no escape from your deliciously decadent fate. Knowing he's getting close as well turns you on all the more, your overheated womb demanding his gooey load to put out the fiery need burning inside it by this point. And when it does come, it is a powerful blast of cum after another, painting your vagina and leaking into your womb to claim your pups.";
		say "     As his orgasm wanes, his big knot leaves you tied to him and keeping his hot semen inside you. But rather than stop there, he only pauses briefly before resuming his thrusting, pumping that tightly held cock of his inside the clutching grip of your sloppy cunt. You start to moan and pant, your need and pleasure growing again as he fucks you again. And again. And again. You end up breed several more times before he's finally done and allows himself to stop and let his knot go down enough to pull out of you. A cascade of excess canine cum flows from your stretched and well-used cunny, pooling on the floor as you lay in the warm, sticky mess with an expression of dazed contentment on your face.";
		impregnate with "Breederslut";
		now Libido of Player is Libido of Player / 2;
		now lastfuck of Dominick is turns;


Section 8 - Definitions

Definition: a person is breederslutfaced:
	if facename of Player is "Breederslut", yes;
	no;

Definition: a person is breederslutskinned:
	if skinname of Player is "Breederslut", yes;
	no;

Definition: a person is breederslutbodied:
	if bodyname of Player is "Breederslut", yes;
	no;

Definition: a person is breederslutcocked:
	if cockname of Player is "Breederslut", yes;
	no;

Definition: a person is breedersluttailed:
	if tailname of Player is "Breederslut", yes;
	no;


Section 9 - Endings

[
when play ends:
	if bodyname of Player is "Breederslut":
		if humanity of Player < 10:
			if HP of Dominick is 0:
				say "***never met Dominick.";
			else:
				say "     You succumb to your template infection.";
		else:
			say "     You survive, but were infected by the template.";
			if Player is male:							[MALE/HERM]
				say "     Additional text for a male/herm survivor.";
			else if "Sterile" is not listed in feats of Player:	[F-BREEDABLE]
				say "     Additional text for a female survivor who can become preggers.";
			else:									[F-STERILE]
				say "     Additional text for a female survivor who cannot become preggers.";
]

Breederslut ends here.
