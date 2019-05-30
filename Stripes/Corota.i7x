Version 1 of Corota by Stripes begins here.
[Version 1.1 - Promoted to lvl 11 (swapped spots with Impala)]
[This monster was translated from the multiplayer game automatically by Nuku Valente, but may, most likely, have been written by someone else.]

"Adds Corota to Flexible Survival."

Section 1 - Creature Responses

to say corotadesc:
	setmongender 4; [creature is female]
	choose row MonsterID from Table of Random Critters;
	if "Male Preferred" is listed in feats of Player:
		now sex entry is "Male";
	else if "Herm Preferred" is listed in feats of Player:
		now sex entry is "Both";
	else:
		now sex entry is "Female";
	say "     This strange, serpentine creature is covered in ocher, darkly veined flesh. Her head is snakelike, set above a long neck. Two vicious horns jut through her brow, while her fangs are longer than expected for a snake her size. Most notable is her ability to split her head down its center, forming two crude but functioning half heads each with their own neck half. Her body is lean and has a pair of leathery wings spread from her back, golden brown dust hazing around her. She has two petite breasts on her chest. Her arms are human in shape, but she is gifted with two too many. Her legs are leonine, intimidating in shape. Her tight, rump-less ass is hidden beneath a pair of tails. Each limb looks to be prehensile, nearly as long as she is tall and ending in a spiked knob. Beneath those tails is a wide, female cleft of ocher flesh.";
	say "     As it approaches you, it waves its wings, sending a wave of that dust at you. It fills the air and stings your eyes and lungs, making it difficult to breathe. Coughing a little, you prepare to fight it off. Periodically, the creature waves its wings again, ensuring the dusty cloud remains.";


to say losetocorota:
	choose row MonsterID from the Table of Random Critters;
	if a random chance of 3 in 5 succeeds:
		if Player is male:
			say "     The corota brings you to the ground with a rough sweep of their tail, staring down at your broken and bruised form. Sniffing at the air with nose and tongue, the serpent creature smiles down at you in a way only a feral can. 'Yes, strong mate. Deserving mate,' she hisses, going between your legs and working your length with her forked tongue. Whether it turns you on or you merely struggle, suddenly there is a painful sensation in the base of your cock as the corota appears to have bitten into you with their fangs. Bringing their head up to smile at you, again with that feral look, you can see a venom of a different color than normal dripping from their fangs.";
			say "     You don't have long to consider what they did before your length explodes to full, veins bulging as it's forced to be ready for the serpent creature. Too weak to crawl away, too tired to push them off, you're forced to watch as they spread their lower lips before spearing themselves on your cock[if Cock Length of Player > 12], your head forced rapidly past their cervix into their waiting womb[end if]. Bouncing up and down on you pole, 'poison' no longer necessary to keep you readied, you are stuck for some time with nothing but the wet squelching noises and the corota's impassioned hisses to distract you.";
			say "     Eventually, body's betrayal complete, you give the corota their much desired seed, balls swollen by the venom forcing them into crazed overproduction along with your regular load amount. The milking goes on for almost five minutes, and you don't want to consider how much of your mass was [']recycled['] for their pleasure while you watch their belly slowly bloat wider and wider. When the flow finally comes to a halt, you feel more spent than you have ever felt before. The corota doesn't even seem to give you a cursory look as they waddle off, their footfalls followed by the sound of an occasional wet impact as thick wads of spunk fall between their legs.";
			increase thirst of Player by 5;
			infect;
		else if Player is female:
			say "     The corota brings you to the ground with a rough sweep of their tail, staring down at your broken and bruised form. Sniffing at the air with nose and tongue, the serpent creature smiles down at you in a way only a feral can. 'Thirsty from fight,' they hiss, diving between your legs greedily. In seconds, your labia and hips are covered in a mass of nonvenomous bites, the corota's many hands slapping at your hips as they seem to forget that you aren't a giant jug of fluid. Whether they beat you until terrified beyond control, or the rough abuse is one of your special buttons, you eventually give the corota their much desired drink. Not even bothering to give so much as a 'Thanks,' the serpent creature stomps away from you to slake the rest of their thirst elsewhere.";
		else:
			say "     The corota brings you to the ground with a rough sweep of their tail, staring down at your broken and bruised form. Failing to see anything that catches their interest, the corota gives a snarl and turns around, raising both their tails high to bring down on you. Raising your arms to shield your face, you barely have the time to sigh in relief as each miss your arms and head by scant inches. You were so weak, for it to be seemingly beneath the serpent creature to even bother to make sure they've finished the job. The corota flaps their large wings to take to the skies, leaving you coated in a small layer of their dust.";
	else if a random chance of 1 in 4 succeeds:
		say "     Mind muddled trying to stay focused on the battle, you fail to catch the sweep of the tail until almost too late. Only by acting in the last second do you go from taking a scythe in the gut to having yourself smashed to the floor. Seemingly satisfied with 'only' flooring you for the count, the corota stomps off to vent its frustrations on another victim.";
		decrease HP of Player by wdam entry;
	else if a random chance of 1 in 3 succeeds:
		say "     Focusing on the tail and great claws of the corota, you forget about the obvious threat until it's already in your face. Literally. Your cheeks explode in pain as two great fangs sink into them, being used to inject a significant amount of poison into your mouth as the serpent-woman kisses you. You barely have the time or desire to consider that a half foot higher or lower, and you might not be in a position to ever complain again. When the fangs finally pull out, the corota smashes you roughly to the ground with a two handed overhead strike, and you're left there sputtering, and spitting blood and toxins from your mouth. While you've heard eating a rattlesnake's toxin is harmless, you aren't in the least bit willing to test that out with infected snake bites.";
		decrease HP of Player by wdam entry;
		infect;
	else if a random chance of 1 in 2 succeeds:
		say "     A low sweep by the corota's tail knocks you to the ground, the chimeric critter quickly leaping upon your prone form and clawing at it with their leonine half. Fortunately, they don't seem to strike anything vital before they get bored with you, crawling off your sore body and giving it a final, hard stomp to the gut before hurrying off.";
		decrease HP of Player by wdam entry;
	else:
		say "     Out of breath, and needing a breather, you try to pull back from the fight with the corota to regain your breath. For a moment, it looks like the corota is going to allow you to do so, turning their back on you and beginning to walk away. Then you notice the small cloud of dust forming between their wings, too late to get out of the way or close your mouth before the corota sends the dust cloud straight into your open mouth with a quick flap of their wings. Gasping now in pain as the particles cling to your throat and insides of your breathing organs, you haven't the environmental awareness to notice them repeating the action again and again. Face going blue, you pass out to wake up some time later covered in the ochre dust, throat raw and demanding a drink soon.";
		increase thirst of Player by 5;


to say beatthecorota:
	say "     Your final blow causes the twin-headed creature to stumble back and hiss angrily. It uses its four arms to block further blows as it retreats a few steps. 'Good fight,' it hisses respectfully. 'I give... for now.' With that, it turns and flaps it wings, taking to the air in a burst of dusty air. You cover your mouth and back away, waiting for the air to clear as it flies off in search of sport elsewhere.";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is ""; [name of the overall spe<cies of the infection, used for children, ...]
	add "Corota" to infections of ReptileList;
	add "Corota" to infections of FurryList;
	add "Corota" to infections of NatureList;
	add "Corota" to infections of FemaleList;
	add "Corota" to infections of BarbedCockList;
	add "Corota" to infections of BipedalList;
	add "Corota" to infections of FlightList;
	add "Corota" to infections of TailList;
	add "Corota" to infections of TailweaponList;
	now Name entry is "Corota"; [Name of your new Monster]
	now enemy title entry is ""; [name of the encountered creature at combat start - "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]The corota[or]She[or]The serpent-hybrid[or]The bifurcated creature[as decreasingly likely outcomes] [one of]sweeps your feet out from under your with a pass of its powerful tails[or]bashes its thick tails against you[or]moves its head in to bite, splitting them at the last moment to avoid your block and bite you from two sides[or]sinks its fangs into your side[or]slashes at you with its claws, rending at your flesh[at random]";
	now defeated entry is "[beatthecorota]";
	now victory entry is "[losetocorota]";
	now desc entry is "[corotadesc]";
	now face entry is "snake-like, set above a long neck. Two [one of]large[or]vicious[or]curved[at random] horns jut through your brow, while your fangs are longer than expected for a snake your size. Most notable is your ability to split your head down its center, forming two crude but functioning half heads each with their own neck half. It is most disconcerting that doing so does not feel strange to you at all";
	now body entry is "lean and flexible, but overall human in form. Two large, leathery wings spread from your back with golden brown dust hazing around them. Your arms are human in shape, but you are gifted with two too many. Your legs are leonine, intimidating in shape and ending in clawed paws";
	now skin entry is "ocher, darkly veined";
	now tail entry is "Your tight, rump-less ass is hidden beneath a pair of tails. Each limb looks to be prehensile, nearly as long as you are tall and ending in a spiked knob.";
	now cock entry is "[one of]barbed[or]split[or]free hanging[or]hemipenis[or]serpentine[at random]";
	now face change entry is "a lump that starts at the base of your throat quickly turns into an entire facial cramp. In seconds, your neck is quickly extending to several times its old length, while your face stretches at the same time to a more serpentine shape. Feeling like it's done transforming, you suddenly feel an explosion of expanding bone in your forehead, warning you of more to come. Just as you feel a sensation that can best be described as ripping start from the tip of your face to the base of your neck, you hear a tearing sound, and your head and neck split apart, turning into a pair of functioning halves. Your arms shoot up to force the two together and you find that they fuse together as readily as they split apart, your head capable of breaking from one into two on a whim";
	now body change entry is "you're left gasping for air as your body tightens, some of its mass shifting through you and settling in your back. When the pressure finally comes to a halt, your body is forced to double over in pain as two great, leathery wings form from the mass in your back. When the wings are dried off some hours later, you notice the ample amounts of golden dust falling off. Your arms begin to tingle as though being prickled all over, soon returning back to their original shape and build. They even have that little blemish in that one spot! Any celebration at the nanites work is cut short as suddenly, with a great deal of pain, it feels like some thing's trying to force its way through your chest. In a burst of growth, you've got a second pair of arms resting about halfway down your body. The changes continue, moving lower as the muscles and bones in your lower half twist and crack, warning you of the coming changes in their own special, painful way. As the changes come to a halt, you find your body slender and flexible and your legs very leonine, well suited for raking someone with their claws";
	now skin change entry is "your body takes an ocher tint as its veins darken noticeably, becoming readily traceable with the naked eye.";
	now ass change entry is "your lower spine feels like someone's trying to tear it in two, and in a way someone (well, something) is! Exploding out in a burst, your spinal column extends into two long tails, each capped with a spiked knob. Once some muscle finally grows in on the limb, you find that each limb is fully prehensile. If only it weren't so bloody painful growing them!";
	now cock change entry is "a pressure builds in your cock[smn] as the nanites within struggle for dominance. In the end, they seem to agree on a mutual condition, your groin[smn] finally exploding into change. In seconds you're left amazed and disturbed as your cock splits down the center, small barbs forming along its length. Waiting for it to slide into your body for protection, you're further surprised as it continues to hang limply, waiting to be aroused.";
	now str entry is 14;
	now dex entry is 19;
	now sta entry is 14;
	now per entry is 15;
	now int entry is 12;
	now cha entry is 10;
	now sex entry is "Female"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 68; [ How many HP has the monster got? She's not too hard- she doesn't want to win so much as not lose]
	now lev entry is 11; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 9; [Amount of Damage monster Does when attacking. Claws and massive strength]
	now area entry is "Plains"; [ Current options are 'Outside' and 'Mall'. Case sensitive. If you go down to the woods today, you're in for a big surprise]
	now Cock Count entry is 2; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 12; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 3; [ Size of balls apparently ;) sneaky Nuku (big balls are underrated.)]
	now Nipple Count entry is 2; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 2; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 12;
	now Cunt Tightness entry is 8;
	now libido entry is 45; [ Amount player Libido will go up if defeated ]
	now loot entry is "corota venom";
	now lootchance entry is 20; [ Chance of loot dropping 0-100 ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]serpentine[or]slender[or]flexible[at random]";
	now type entry is "[one of]hybrid[or]serpentine[or]chimera[at random]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "corota"; [ Row used to designate any special combat features, "default" for standard combat. ]
	now BannedStatus entry is false;

Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

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
	[Mouth Length Adjective  is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
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


Section 3 - Alt Attack - Corota Dust

Table of Critter Combat (continued)
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)	altstrike (rule)
"corota"	retaliation rule	--	--	--	--	--	--	--	corotadust rule	--

this is the corotadust rule:		[draining cloud]
	choose row MonsterID from Table of Random Critters;
	say "     The corota's dust hangs in the air, a constant irritation. ";
	let playernum be 12 + ( stamina of Player * 2 ) + level of Player;
	if face mask is equipped, increase playernum by 12;
	let corotanum be ( sta entry * 2 ) + lev entry;
	let playernum be a random number between 1 and playernum;
	let corotanum be a random number between 1 and corotanum;
	if Playernum > corotanum:
		say "You cough a little, but fight on unhindered for the moment.";
	else:
		let dam be ( ( wdam entry times a random number from 80 to 120 ) / 250 ); [40% damage]
		if face mask is equipped, decrease dam by 1;
		say "You cough violently as you're forced to breathe in more of the dust. You take [special-style-2][dam][roman type] damage!";
		LineBreak;
		decrease HP of Player by dam;
		if HP of Player < 1:
			if HP of Player <= 0, now fightoutcome is 20;
			if Libido of Player >= 110, now fightoutcome is 21;
			lose;

Section 4 - Drop Item - Corota Venom

Table of Game Objects (continued)
name	desc	weight	object
"corota venom"	"Some toxic, ochre yellow liquid that you've preserved in a jar... for some reason."	1	corota venom

corota venom is a grab object. It is a part of the player. corota venom is infectious. The strain of corota venom is "Corota".
the usedesc of corota venom is "[corotavenomuse]".

to say corotavenomuse:
	say "     Feeling brave or foolish, you try drinking down the snake venom. It stings as it goes down, making you weak in the knees and cough as it starts to burn at your throat and stomach. You curl up in a ball of pain as the heat spreads, setting off something inside you.";
	decrease HP of Player by 10;

the scent of corota venom is "The snake venom has a strong, stinging scent that reminds you slightly of the creature's dusty powder.".


Section 5 - Endings

[
when play ends:
	if BodyName of Player is "Template":
		if humanity of Player < 10:
			say "     You succumb to your corota infection.";
		else:
			say "     You survive, but were infected by the corota.";
			if Player is male:							[MALE/HERM]
				say "     Additional text for a male/herm survivor.";
			else if "Sterile" is not listed in feats of Player:	[F-BREEDABLE]
				say "     Additional text for a female survivor who can become preggers.";
			else:									[F-STERILE]
				say "     Additional text for a female survivor who cannot become preggers.";
]

Corota ends here.
