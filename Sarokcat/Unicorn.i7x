Unicorn by Sarokcat begins here.

"Adds a Unicorn to Flexible Survival's Wandering Monsters table"


Section 1 - Creature Responses

to say Unicorn attack:
	if Player is female:
		say "Stop... Haroldtime.[line break]";
		say ".'";
		infect "Unicorn";
	else:
		say ".[line break]";
		say "ment...";
		infect "Unicorn";

To say Unicorn loss:
	say "     Knocking the unicorn to the ground, you once again show that brute force can triumph over speed and precision, her lithe sprinter's body not able to take the punishment you can dish out. She scrambles away from your vicious assault, all four paws scrabbling helplessly along the ground for a second, before managing to find traction. You sigh as she darts away. Even moving as slowly and painfully as she now is, you know she is still far too fast for you to catch. You watch her as she leaves, the unicorn, constantly shooting nervous glances back at you until she is out of sight.'";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "";
	now Name entry is "Unicorn";
	now enemy title entry is "Unicorn Barman";
	now enemy Name entry is "Harold";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "His shining horn mesmerizes you completely, and you submit totally to his every sexual whim, becoming a complete and total plaything of the powerful unicorn.";
	now defeated entry is "[Unicorn loss]";
	now victory entry is "[Unicorn attack]";
	now desc entry is "Sexy barkeep of DUUUUM.";
	now face entry is "sexy equine muzzle, with a beautiful spiraling horn which almost seems to catch and reflect the light extending from your forehead above your new unicorn-like"; [ Face description, format as "Your face is (your text)."]
	now body entry is "slim and lithe, it is almost the very picture of perfection as you balance easily on your beautiful silvery hooves, their soft chiming noise when you walk seeming to fill the air around you with beauty, even as your dainty hoof tipped hands trace over your soft and lovely new curves"; [ Body Description, format as "Your Body is (your text)"]
	now skin entry is "[one of]Beautiful white furred[or]silvery[or]unicorn furred[or]shimmering white fur[or]short brilliant fur covered[at random]"; [ skin Description, format as "You have (your text) skin"]
	now tail entry is "You have an amazing equine tail flicking behind you softly, its beautiful silvery white hair seeming to ripple with a rainbow of reflected colors with every move you make, even as it swishes teasingly behind you."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "[one of]equine[or]unicorn[or]blunt tipped[at random]"; [ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "a small pain blossoms in your forehead, you find yourself groaning slightly as your face begins to flatten and push out into a soft unicorns muzzle, even as a shimmering spiral horn begins to peek out from the center of your forehead. The pain begins to subside as your ears and eyes finish shifting position, and you find yourself grinning a happy equine grin as you look at the shifting spots of color reflected off your new amazing unicorns horn"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "it shifts and changes, your toes merging and melting together as your feet change into beautiful silver hooves, your legs seem to grow more muscled, with a slightly shifted heel to allow for faster running, and your fingers seem to become tipped with silver as well as your fingernails shift and stretch down past the first joint. And you find yourself stretching your new lithe and powerful body almost automatically as the changes finish, leaving you feeling surprisingly energized and aroused"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "it is slowly covered in beautiful short white horse fur, your new hide of pure white hair shining brightly as it reflects the light with every move you make"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "a shimmering silken tail seems to sprout behind you, its beautiful white strands falling like a waterfall down from your ass, until the tip of your new unicorn tail hangs barely a few inches above the floor"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it seems to thicken, a sexy looking sheath begins to form around the base of your increasingly equine looking new cock"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 14;
	now dex entry is 18;
	now sta entry is 13;
	now per entry is 12;
	now int entry is 12;
	now cha entry is 20;
	now sex entry is "Female";  [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 20;
	now lev entry is 2;  [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 5;  [ Amount of Damage monster Does when attacking. ]
	now area entry is "Nowhere";  [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 1;  [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 14;  [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 3;  [ Size of balls ]
	now Nipple Count entry is 2;  [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 8;  [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0;  [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1;  [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 14;
	now Cunt Tightness entry is 6;
	now libido entry is 50;  [ Amount player Libido will go up if defeated ]
	now loot entry is "";  [ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 0;  [ Chance of loot dropping 0-100 ]
	now scale entry is 3;  [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]slim[or]lithe[or]slender[or]perfect[at random]";
	now type entry is "[one of]equine[or]unicorn[or]mythological[as decreasingly likely outcomes]";
	now magic entry is true;
	now resbypass entry is false;  [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is true;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;  [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is "";
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
	[Mouth Length Adjective  is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3; [mouth circumference 1-5, see Mouth Circumference Adjective]
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
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/octapedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]"]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Tail Change entry]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
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
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that is [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]



Section 3 - Endings

when play ends:
	if BodyName of Player is "Unicorn":
		if humanity of Player < 10:
			if Player is female:
				say "     Surrendering to your new powerful herd instincts, you quickly make your way back to your handsome stallion at the bar. The sight of his strong powerful form as you return to the palomino makes you moan with desire as you realize that you need to be his. Harold grins with amusement as you stalk forward on your sexy new silvery hooves, his horn shimmering comfortingly in the light as you quickly slip behind the bar, and surrender yourself to your stallion where everyone can watch. The unicorn stud claims you thoroughly much to the cheers of several of the patrons, and you find yourself lost in lustful pleasure as you orgasm again and again while the lights and music pulse around you. Eventually your stud needs to return to serving drinks for a while, and once you have managed to recover somewhat from your claiming, you happily move to help. Soon your naked unicorn body is draped with silver necklaces and a sexy leather vest of your own, hanging open in the front to give your stallion easy access to your pert pink nipples, and you have become just as much of a fixture behind the bar as he is. Your regular sex shows with your mate continue to get rave reviews, and you are more than happy to invite a few other curious customers to come join you, and while most of them stick to their drinks, you find yourself grinning when several unsuspecting soldiers come in and start hitting on you. Harold grins and gives you a wink as you serve them some of his 'special' unicorn reserve, and you look forward to helping your stallion tame several new mares soon enough...";
			else:
				say "     Giving in to your new powerful unicorn instincts, you soon find yourself prowling the streets hunting for some lovely women to lure off and make your own, and while you almost return to the palomino several times to hunt there, the scent of another established stallion has you backing off automatically. Your hunt through the city is both easy, and fruitless, since while few creatures can resist your mighty new body, or the hypnotic shimmer of your horn, there are also few if any humans left to transform. Before long though, the military begins to push into the city, providing you with an entirely new group of humans to tempt, and you enjoy walking into their squads, and picking one of them out to transform while the rest of them stare at your beautiful white coat and shimmering horn with awe. It isn't long before you have a selection of the choicest mares following you happily through the city, which now seems to be growing more and more confining by the day as the combat intensifies. Eventually you head through the military lines and out of the city into the bright and welcoming forest, none of the soldiers so much as lifting a gun in your direction as you and your mares prance by while they gawk at your beauty. As you settle in to your new forest you find yourself surprisingly content as you and your small herd wanders your new territory, though as word begins to spread about unicorns wandering the world again, your little forest begins to get a small amount of tourist traffic heading through as well. Some of the tourists even manage to leave after catching a glimpse of your herd, being of little interest to you, more often though, they are hypnotized by your shimmering beauty, and practically beg to be your mare, a blessing you are more than happy to give them...";
		else:
			if Player is male:
				say "     When the military finally retrieve you from the city, many of your erstwhile rescuers are in awe of your handsome form and mythical countenance. A fact that you quite quickly put to use as you convince them that like the unicorn of legend you are no real threat to them, and should be let go as soon as possible. It goes to show how few of them actually read the older versions of the legends, as the quickly release you, though several of them stare at you with longing as you leave the camp behind you. Once free of the military's interference however, it is easy enough for you to head to the nearest town, and begin looking for a way to make your fortune. Your beautiful new form and your shimmering horn make it easy to get a decent job, and you find that people are more than willing to confide in you and trust you quite easily now. This works to your advantage as you quickly capitalize on the situation, with promotion and raises coming easily, as well as an ever increasing group of unicorn groupies who begin to gather to follow you around and stare at your beautiful form. Feeling deeply amused, you even begin to charge some of the more attractive and pure of the groupies for the privilege of becoming your mare, something that soon has more and more people clamoring for your attention. Soon you have plenty of money with which to buy a nice little wooded estate a bit out of the city for you and your slowly growing herd of unicorns, and you enjoy the feel of the wind in your hair as you play on the wooded banks of your stream with several of your lovely mares, and whicker with amusement at how eager people are these days for the touch of a unicorn... and how much fun it can be for you to give them that touch...";
			else:
				say "     You are wonderfully happy once the military finally arrives, and glad to be leaving the city, and though you get a number of awed stares from the soldiers, you are much more interested in the thought of being able to run and roam safely wherever you choose. It isn't long before the scientists release you to do so either, unable to bear the thought of running intrusive tests on your splendid new body. As you walk out into the world on your shining silver hooves, you find yourself smiling happily as your horn seems to shimmer with amusement as well, catching everyone's eye and making them sigh with awe. It is easy enough to realize just how useful your new form will be in finding yourself a comfortable new position now that you are outside the city, especially with the near mesmeric powers your horn seems happy to display. Deciding to enjoy things to the fullest you soon begin looking for a good job, and a good candidate to make into a unicorn stud for you to play with as well, your enhanced libido and slightly submissive tendencies desiring a nice stallion to tease and tempt. Soon enough you find both, as you encounter a handsome young CEO at one of the luxury parties you are often invited too due to your unique new look. It isn't long before you get the rich young man all to yourself off to the side and offer him a chance at a new life with you, a chance he wastes no time in accepting. You take time to make sure his transformation isn't going to raise any questions about his identity, before the two of you go off for a week and enjoy each other's body in every way possible. Soon the handsome new unicorn stud is back at work amongst the envious looks of his subordinates, while you are settling in happily with your burning heat finally sated for the season.";
				say "     The two of you soon prove to be a powerful pair, with your powers of persuasion as well as your amazing looks, it is easy enough to manipulate deals and agreements to your new companies benefit, and you both rather enjoy the adoring looks of your many fans as you begin to increase your new wealth many-fold. Soon it becomes evident that your efforts with your new stallion will be bearing fruit, a fact that you find yourself eagerly anticipating, even as you begin to help your mate to pick out several other promising prospects to add to your herd. After all, you certainly won't mind having several subordinate mares around to help you out, and you certainly can't wait to start training the new mares in just how best to pleasure you as well as your stallion... and since unicorns are rumored to be immortal, hopefully you will have a long, sexy life of pleasure with your new herd to look forward to as well, you think happily as you watch your mate begin to transform the first of your many new herd members...";

Unicorn ends here.
