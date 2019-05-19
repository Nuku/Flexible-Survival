Version 2 of Palomino by Verath begins here.
[ Updated files, reordered content, renamed infection to Palomino and made it non-infectious normally ]
[ Two new sex scenes: one random and one timed, then random after - Stripes ]

"Adds a new area (Palomino Club) and the Palomino infection to Flexible Survival."

Section 1 - The Palomino Club

Table of GameRoomIDs (continued)
Object	Name
PALOMINO	"PALOMINO"

The Palomino is a room. It is fasttravel.
The earea of The Palomino is "Outside".

The description of The Palomino is "[palominodesc]".

to say palominodesc:
	say "     Ducking down a darkened alleyway, you find yourself standing in front of a door that has recently been painted dark red. The sound of a techno rhythm from inside is making the door vibrate. Looking above the door, you see a hand lettered sign that simply says 'The Palomino'. Going through the door, you find yourself in a short, ordinary-looking hallway, set slightly apart from the loud music and flashing lights spreading down the hallway from around the far corner.";
	say "     Stepping around the corner of the hall, the room beyond is much bigger than you expected. It has a gothic theme going on - dark, with some rough, black, wooden tables and benches along the sides of the room and smaller, private booths with lower tables secreted away in the darker corners. There are coarse tapestries draped on the walls, one of them depicting a young man resting in the arms of a well-built anthropomorphic stallion. Looking closer at the tapestry, you can see that the young man's legs have started to shift from the knees down into digitigrade horse legs and a blond tail is just starting to grow from above his ass. There is also a random scattering of dark red cushions to offset the cellar dungeon look of the place.";
	say "     A mirror ball sparkles and sends a shimmering wave of reflected colors over the foggy dance floor, where around thirty or so people are dancing to the beat of the music. At the far end of the room, some big speakers are loudly blaring out some canned music, and a thick drink bar with several stools positioned in front of it takes up part of the room as well.";

The invent of The Palomino is { "soda", "soda" }.

instead of sniffing Palomino:
	say "The infected dance club smells strongly of aroused males, sweat and sex. Lots of sex.";


Section 2 - Palomino Infection

when play begins:
	add { "Palomino" } to infections of Equinelist; [list of equine infections]

to say Palominowins:
	say "'wow you got here how did that happen.'";
	wait for any key;
	if Player is male:
		say "yay";
	else:
		say "how the heck did you find me hiding here?";

To say Palominoloses:
	say "how the heck did you manage to get this, that's the real riddle I suppose...'";


Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "";
	now Name entry is "Palomino";
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]She riddles you this and that till you cry.[at random]";
	now defeated entry is "[Palominoloses]";
	now victory entry is "[Palominowins]";
	now desc entry is "The Palomino is watching you!!"; [ Description of the creature when you encounter it.]
	now face entry is "that is a mixture of human and equine features, with a short palomino-like muzzle and dark equine eyes. Your features are only accentuated by the multiple earrings hanging from your new, more equine ears and the long, dark black mane which hangs down the side of your face. The lovely spiked collar Tristian gave you finishes the new look of your face"; [You have a (your text) face."]
	now body entry is "that of a humanoid horse, thick and rather muscular. Your hands and feet have slightly hoof-like fingernails. You are wearing the outfit that your fellow horse goth picked out for you, your strong torso covered in a tight, long-sleeved fishnet shirt, the fishnet pattern tracing down your well-muscled arms to your spiked cuffs. Your thick, black leather pants only serve to accentuate your well-defined lower body, and your slightly hoof-like feet rest easily in the modified black leather boots Tristian had made for you";
	now skin entry is "[one of]palomino spotted[or]lightly furred[or]palomino furred[at random]";
	now tail entry is "You have a long black horse's tail hanging from your rear, swishing from side to side across your rear. Someone has braided a few small pieces of gothic silver jewelry into the tail, and it makes a soft chiming noise as it sways when you walk."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "[one of]stallion[or]equine[or]flared[at random]";
	now face change entry is "you wake up from your long night with the stallion. You yawn and stretch, only to find your mouth opening wider than ever before and a strange loud jingling noise in your ears. Blinking, you reach up to find that your face seems to have changed at some point during the night. As you blink your new equine eyes, you trace your fingers over your new equine snout, and then reach up to tug on your larger equine ears. As your ear jingles again, you realize that at some point while you were resting your partner took time to attach several ear rings to your new ears. The thought makes you smile as you look around, for him, only to spot a spiked leather collar he obviously left out for you. Your new muzzle pulls back into a larger grin as you slip the collar on and get ready to face the day"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "you wake up from your long night with the stallion. You notice your body has changed at some point to be more like his, and you take in your new more equine form in amazement, wiggling your new feet and enjoying its well-shaped form. Looking around, you note that he has laid out a nice new outfit to go with your new body. As you look over the items he left, you find yourself smiling at the fishnet shirt and black leather pants he left you, as well as the proper spiked cuffs and specially modified boots for your new feet"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "you wake up from your long night with the stallion, and you go to scratch it, only to find it seems to be covered in soft, palomino patterned fur, just like your lover's";
	now ass change entry is "you wake up, and you moan and roll over as you reach down, only to feel a large amount of hair covering your ass. Blinking, you look down to see your new long equine tail, which someone has braided several small silver gothic charms into";
	now cock change entry is "you wake up, and you reach down to stroke it, only to find that your morning wood is even more impressive with a thick equine cock, the feel of its new sensitive flared tip making you moan as you stroke it several times with a smile"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 14;
	now dex entry is 17;
	now sta entry is 13;
	now per entry is 10;
	now int entry is 10;
	now cha entry is 18;
	now sex entry is "Male"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 21;
	now lev entry is 2; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 5; [Amount of Damage monster Does when attacking.]
	now area entry is "Palomino"; [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 14; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 2; [ Size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	now Nipple Count entry is 0; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 0; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity] [ Length of female sex infection will attempt to give you. ]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping] [ Width of female sex infection will try and give you ]
	now libido entry is 30; [ Amount player Libido will go up if defeated ]
	now loot entry is ""; [ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]fit[or]toned[at random]";
	now type entry is "equine";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
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
	if BodyName of Player is "Palomino":
		if humanity of Player < 10:
			say "     Surrendering to the infection, you finally realize that you want nothing more than to be a lovely little slutty pony for your handsome male stallion. Wasting no time, you run on your new equine feet back to the club where your new master is waiting. Arriving at the club, you are happy to be welcomed into Tristian's waiting arms, and even happier when your new master lets you know what you will be doing for him from now on. You love your stallion taking you back to the dressing room and helping you into your new stage clothes, and the crowd outside goes wild when he announces your first night as the Palomino's newest stripper! You love the feeling of showing off your handsome [if Player is herm]herm[else if Player is male]male[else if Player is female]female[else]genderless[end if] body on the stage, as you dance and tease the other clubgoers using what you learned here in the club from Tristian and the other dancers.";
			if Player is male:
				say "     Soon you and several other strippers are nearly naked on stage and showing off for the all too appreciative audience, as you grind up against the naked bodies of a black swan, while a well-endowed panther grinds up against you from behind. Your first night is a tremendous success, though the best part is how happy your dominant stud is with you afterwards. You wake up from a night of wonderful sex to find several new piercings for you to wear to demonstrate who you belong to, as well as his tag hanging from your collar. Smiling happily, you settle in to your new life as one of the clubs strippers with ease, dancing all night for the patrons, and dancing with your mate and several other strippers afterwards.";
			else if Player is female:
				say "     Soon you and several other strippers are nearly naked on stage and showing off for the all too appreciative audience, as you grind up against the naked bodies of a black swan, while a well-endowed panther grinds up against you from behind. Your first night on the stage is a tremendous success. Being female, you don't really draw your dominant stud's attention like you used to, but you've got plenty of dancers to enjoy a wild romp with after the show. You wake up from a night of wonderful sex to find yourself in a new harness suitable to your female form and a tag hanging from your collar denoting you as club property. Smiling happily, you settle in to your new life as one of the clubs strippers with ease, dancing all night for the patrons and dancing with several other strippers afterwards.";
				if Player is impreg_ok:
					say "     After one particularly hot show, you and some of the male strippers enact a plan where they get Tristian riled up with a private show. During this, you sneak a ride on his cock after the guys have gotten him too hard with their asses and distract him with their luscious cocks, letting you get fucked by your palomino stud after so long. He seems a little hurt by this treachery at first, but gets over it quickly enough, especially as your belly starts to swell with his foals, more palomino studs to stalk the dance floor and ride the stripper poles.";
			else:
				say "     Soon you and several other strippers are nearly naked on stage and showing off for the all too appreciative audience, as you grind up against the naked bodies of a black swan, while a well-endowed panther grinds up against you from behind. While your genderless body is not much of a draw to many of the patrons, the way you work it and grind against the others with such need makes them shine all the more and adding an exotic flair to the show. Lacking a cock, you draw less of your dominant stud's attention than you used to, but a good show and a few of the other strippers along for the fun is more than enough to get him banging you like he used to. You can always count on at least one of the dancers to give you a proper fucking as well, knowing full well what pleasures your talented ass can bring.";
				say "     And you do get safer the occasional some attention from as well. Some of the males, usually those coming to grips with their new urges, find your lack of a cock an introduction to their lusts to fuck the hot asses they see at the club. Eventually they do move on to fucking the other guys at the club, but they always remember you fondly and come back for the occasional romp with the neuter pony who helped introduce them to the new pleasures they greatly enjoy partaking in. Some you even entice into becoming strippers, adding to the club's roster and regular dancing (and [']dancing[']) partners.";
			say "     When the military finally comes, your business isn't hurt at all, it merely becomes slightly less blatant for a time while the soldiers look around. However, being soldiers, they soon relax to enjoy the pleasures of the club just as much as anyone else, pleased to get some unexpected R&R during their mission. And while some of them manage to stick away from the bar and remain relatively normal, most of the soldiers end up joining the patrons on the dance floor, or in the back rooms, or even on the stripper poles with you, where you can teach the newest members of the club just how much fun it is to be a slutty little palomino stripper...";
		else:
			say "     When the rescue finally comes, the military and civilian authorities put you and Tristian through a battery of tests and interviews before finally allowing the two of you to rejoin normal society. You both suspect that you were released so quickly not so much because they thought that you were safe and sane, but because the authorities had bigger problems to deal with, both in the fight for the city and with some of the other infected being brought in, especially given the large numbers of hyenas.";
			say "     You and Tristian settle down in a smaller city outside Seattle and eventually open up another club catering to the goth, emo, rave, and alternative crowd. Your sexy gothy forms attract many of the more curious clubgoers. No one seems to complain when their sons, daughters, or significant others visit your club and leave with permanent changes as a reminder of their visit. The club's success and large number of repeat customers soon allows you to open a second even larger club in downtown Seattle, and soon after that the two of you are opening clubs in several other major cities.";
			say "     The two of you soon branch out into the sex industry with [']Palomino Magazine['] and the cleaning up of an abandoned film studio to make [']Palomino Videos[']. People are soon flocking to get the monthly releases of your newest issues and videos, eager to see the photo stories of the models being converted into sexy, lusty beasts and your porn movies of the same nature. Both are hot sellers, even in a world with rampant sex, your content letting them enjoy witnessing the process and to take in every well-framed detail[if HP of Tristian > 10 and HP of Tristian < 99]. The issue and movie where Lance and his lover are converted into a slinky goth unicorn boi and a gothy Doberman boi respectively is a particularly hot item[end if]. Within ten years, the Palomino Publishing empire is the biggest name in porn, aimed directly at the lustful needs of this new world.";


Palomino ends here.
