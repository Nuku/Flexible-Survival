Version 1 of Bird of Paradise by Stripes begins here.
[Version 1.2 - M/F player victory]
[This monster was translated from the multiplayer game automatically by Nuku Valente, but may, most likely, have been written by someone else.]

"Adds Bird of Paradise to Flexible Survival."

nobirdofparadisesex is a number that varies.
bopseen is a truth state that varies. bopseen is usually false.
bopdefeated is a number that varies.

to say birdofparadisedesc:
	setmongender 4; [creature is female]
	if bopseen is true:
		say "     Another of the beautifully colorful avians lands in front of you and begins her mating dance. Her exotic motions and vibrant plumage are alluring, drawing your eyes to her lovely breasts and tantalizing pussy. The slender, curvaceous bird uses her lovely call and sexy motions to try and entice you. You find yourself wanting to move with her, to touch those lovely feathers of hers. She swishes her long, colorful tail and you shake your head, trying to pull yourself together before you're drawn in by those large and lovely eyes of hers again.";
	else:
		say "     A beautifully colorful avian being comes soaring out of the air and lands in front of you. Making several exotic poses that show off her feminine curves and bright plumage, the bird woman gives a musical song as she dancing towards you. Her slender body is covered in long, stunning feathers of all imaginable colors and hues, making her look like a living rainbow, or perhaps a well-stocked artist's palette. Some of the feathers are exceptionally long and curl upwards at the ends, giving her the appearance of wearing an exquisite technicolor cloak. Her head is crowned with a large, almost unwieldy crest of fluffy feathers that curve forward in a range of autumn colors. Two glassy, translucent eyes peer out from above a thick, curved beak - they're so wide and empty that you feel you could easily lose yourself in the bird of paradise's rather hypnotic gaze. Her body is warm and inviting, with a definite sense of the approachable and perhaps even huggable to her. A lovely pair of wings sprouts from the bird's back, bands upon bands of soft, melding colors forming a living rainbow. She has a pair of grand breasts upon her chest, fluffy and soft with a coat of downy feathers. Her arms are long, slender and firm beneath the colorful array of feathers covering her upper arms and the sheen of golden scales that cover her forearms and hands. Her hands end in long, dexterous fingers, each one tipped with small, pointy talons that look as if they were designed for getting a good grip on various small objects. Her legs are solid and look as if they've some muscle definition to them, which is quite reasonable considering the heavy-looking claws she has on her scaled feet. Her tailfeathers are so long that they sweep the ground as she walks, yet somehow still manage to remain spotless despite that. The feathers themselves are large and broad, starting from a deep violet from within their shafts and gradually warming through all the colors of the rainbow up to the edges. Through glimpses you catch as she does her exotic dance towards you, you catch side of her large, tantalizing pussy with its soft cushion of bright feathers around it.";
		now bopseen is true;


to say losetobirdofparadise:
	say "     The rather rambunctious mating dance over with, the bird woman takes a deep breath and starts to sing. The very notion sounds silly at first, but as the music begins to flow and ebb around you, you suddenly find your will to fight on rapidly draining. Surrounded by song, you're content to stand motionless with your mouth agape as the bird of paradise steps forward, her talons clicking against the ground in time with her music. Those eyes, that glassy stare, they seem to grow to fill the entire world as your surroundings melt away, leaving nothing but the clear light blue of the avian's gaze and the music - oh god, the music, you're sure that the bird of paradise hasn't so much as touched you and yet against all logic, you feel warm and good all over and there's a dull heat pulsing down below and the song, it's everywhere, EVERYWHERE!";
	say "     You can't take it anymore; throbbing in time to bird of paradise's mesmerizing singing, you barely feel your [if Player is male]balls empty themselves as she sinks her cunt down over your pulsing shaft and your [end if][if Cunt Count of Player > 1]cunts explode in oozing wetness and[else if Cunt Count of Player is 1]cunt explode in oozing wetness and your [end if]spine tingles as shivers run down its length. Unable and unwilling to fight back, you can only lie exhausted on the ground, squirming with the last of your strength as the unearthly beauty of bird of paradise's music completely overwhelms you, and darkness slowly falls.";
	now Libido of Player is Libido of Player / 2;


to say beatthebirdofparadise:
	if bopdefeated is 3 and player is male:
		increase bopdefeated by 1;
		say "     As your blows stagger the beautiful bird, you leap forward and tackle her to the ground before she can make her escape like the others. She squawks and flaps her wings wildly, trying to break free, but is too weakened by the fight to get away. Having been worked up by her lustful dancing and alluring song, you're reluctant to let her go now that you've got her. Shall you have your way with the vibrant bird (Y) or shall you let her go (N)?";
		if Player consents:
			say "[bopvictorysex1]";
		else:
			say "     You pin the bird firmly to the ground, hand around her beak to keep her silent. You growl at the bird and grind a knee into her ribs, threatening to do worse if she bothers you again. Feeling you've made your point, you release her with a final swat on her feathered rear, sending her flying away with a pained chirp.";
	else if bopdefeated > 3 and player is male and a random chance of bopdefeated in ( bopdefeated + 3 ) succeeds:
		increase bopdefeated by 1;
		say "     Getting yourself into position, you move in close and knock the beautiful bird to the ground with your final blow only to tackle her down moments later. She squawks and tries to get free, but you've gotten quite worked up from her tempting show and consider getting yourself some release. Shall you have your way with the vibrant bird (Y) or shall you let her go (N)?";
		if Player consents:
			say "[bopvictorysex1]";
		else:
			say "     You pin the bird firmly to the ground, hand around her beak to keep her silent. You growl at the bird and grind a knee into her ribs, threatening to do worse if she bothers you again. Feeling you've made your point, you release her with a final swat on her feathered rear, sending her flying away with a pained chirp.";
	else:
		say "     Having beaten the colorful bird woman, she shrieks angrily and takes flight, leaving you in search of a more cooperative mate. As the bird leaves, your arousal decreases a little once the temptation is out of sight.";
		if bopdefeated < 3, increase bopdefeated by 1;
		now Libido of Player is ( Libido of Player * 4 ) / 5;


to say bopvictorysex1:
	say "     With the colorful bird pinned beneath you, it is simply a matter of slipping out your cock with one hand while you hold her down with the other. When you drive your [Cock of Player] cock into her, she sings musically in delight only to be cut off by your hand wrapping around her beak. Not wanting her to captivating song to ensnare you, you keep her keep a firm grip on it while plowing into her. All she can do is moan and whimper in pleasure as you keep driving yourself into the downy ass of hers, stuffing her cunt with your [cock size desc of Player] manhood over and over again.";
	say "     She stopped resisting long, but you keep that beak of hers shut as a precaution, though your other hand is freed to roam over her luscious body. You grope her feathered breasts, slap her pretty ass and tease her clit, delighting in her muffled moans of pleasure as you have your way with her. The bird, used to being in control and having her way the males she ensnares, is unprepared for being on the receiving end of such rough sex and finds herself cumming repeatedly. After getting to cum several times, you drive your [Cock of Player] shaft [if Cock Length of Player > 12]as deep as it'll go[else]fully[end if] into her and drain your balls into her spasming cunt. When you're done, you pull out, wipe your sticky shaft across her downy ass and leave her then in a sex-addled daze.";
	now Libido of Player is ( Libido of Player * 2 ) / 5;


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
	add "Bird of Paradise" to infections of AvianList;
	add "Bird of Paradise" to infections of FurryList;
	add "Bird of Paradise" to infections of NatureList;
	add "Bird of Paradise" to infections of FemaleList;
	add "Bird of Paradise" to infections of TaperedCockList;
	add "Bird of Paradise" to infections of InternalCockList;
	add "Bird of Paradise" to infections of BipedalList;
	add "Bird of Paradise" to infections of FlightList;
	add "Bird of Paradise" to infections of TailList;
	now Name entry is "Bird of Paradise"; [Name of your new Monster]
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "The lovely bird continues to sing and dance, draining your will to fight, tempting you with her vibrant body.";
	now defeated entry is "[beatthebirdofparadise]";
	now victory entry is "[losetobirdofparadise]";
	now desc entry is "[birdofparadisedesc]";
	now face entry is "[if Player is bopskinned]crowned with a large, almost unwieldy crest of fluffy feathers that curve forward in a range of autumn colors, vaguely resembling a feathery mohawk[else]smooth and rounded all around, looking rather bare and like it's missing something[end if]. Two glassy, translucent eyes peer out from above a thick, curved beak - they're so wide and empty that one could easily lose themselves in their hypnotic gaze";
	now body entry is "warm and inviting, [if Player is bopskinned] with feathers forming a well-groomed layer over[else]showing off[end if] [if Player is female]your generous, feminine curves[else if Player is male]your strong, powerful chest[else]your avian torso[end if][if Player is bopskinned]. As you continue to look over yourself, you feel a strong impulse to run your fingers through your soft, colorful plumage and its rainbow mix of warm and cool colors[end if]. A lovely pair of wings sprouts from your back, bands upon bands of soft, melding colors forming a living rainbow across them. Your arms are long, slender and firm beneath the [if Player is bopskinned]coat of soft and fluffy feathers[else]sheen of golden scales[end if] that cover much of your shoulders and forearms. Your hands end in long, dexterous fingers, each one tipped with small, pointy talons that look as if they were designed for getting a good grip on various small objects. Your legs are solid and look as if they've some muscle definition to them, which is quite reasonable considering the heavy-looking claws on your scaled feet";
	now skin entry is "multicolored, feathered";
	now tail entry is "[if Player is bopskinned]Your tailfeathers are so long that they sweep the ground as you walk, yet somehow still manage to remain spotless despite that. The feathers themselves are large and broad, starting from a deep violet from within their shafts and gradually warming through all the colors of the rainbow up to the edges[else]Your ass is firm and muscular, the sort of thing you only find on magazine covers, but there seems to be something missing about it despite its perfection[end if].";
	now cock entry is "[one of]warm[or]enticing[or]inviting[at random]";
	now face change entry is "your field of vision widens as your eyes become inhumanly large and glassy, pupils practically vanishing from sight[if Player is bopskinned]. A new weight on your head prompts you to look up, and you notice the tip of a feathered crest in your vision even as your new beak grows in[else]. A sharp pain pricks at the front of your face, intensifying steadily until a new beak emerges from where your mouth one was[end if]";
	now body change entry is "your ribs crack and shift as your torso firms up and thrusts outward to accommodate the changes taking place within, [if Player is bopskinned]feathers growing to cover you even as [end if]a pair of opulent, long-edged wings [if Player is bopskinned]unfold[else]unfolding[end if] from your back. You take a deep breath instinctively, and let it out with a gasp - that's a rather impressive set of lungs you've got now. With a soft squelching sound, your hands turn into talons, flesh melting away and skin hardening over your fingers as the change begins to sweep upwards, [if Player is bopskinned]covering your arms in soft, fine feathers in every color of the rainbow[else]golden scales forming on your skin all the way up to your shoulders[end if]. Your feet shift and twist, flesh migrating upwards from your toes to your thighs, leaving your lower legs looking rather bare. Huge, hooked talons push their way out of your toes, forcing you to drag them about as you walk. Seems like everyone's going to be blaming you for the scuff marks on their floors now";
	now skin change entry is "a queer tingling creeps its way across your skin, and you gasp aloud as long, flowing feathers of every conceivable color blossom forth, making you feel warm and good all over. It's possible that some others might think you look silly for looking as if someone dumped a paint store over you, but who cares what they think, eh? You're beautiful and you know it";
	now ass change entry is "a powerful warmth gathers in your rear, followed quickly by [if Player is bopskinned]a strange weight that turns out to be an exquisite fan of tailfeathers, each one already as long as you're tall and still growing by the moment. Thankfully, the growth eventually slows, but not before you're sporting the kind of rear plumage one usually only finds in the presence of royalty[else]your ass shaping up and firming out into something worthy of a supermodel. Despite how good it looks though, you still feel slightly unbalanced and bare, as if there should be something more that just isn't present. You can't help but wonder at what you're missing as you rub your sexy ass[end if]";
	now cock change entry is "a strangely sensual sensation wells up in your groin, and when you peer down for a look, you find that your [if Cock Count of Player > 1]shafts have[else]shaft has[end if] turned extremely sensitive, a sheen of clear fluid glistening off [if Cock Count of Player > 1]their lengths[else]its length[end if] even as the slightest touch of any sort sends shivers running up your spine. Oh, this is going to be pleasantly awkward";
	now str entry is 10;
	now dex entry is 16;
	now sta entry is 10;
	now per entry is 15;
	now int entry is 12;
	now cha entry is 18;
	now sex entry is "Female"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 45; [ How many HP has the monster got? She's not too hard- she doesn't want to win so much as not lose]
	now lev entry is 9; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 8; [Amount of Damage monster Does when attacking. Claws and massive strength]
	now area entry is "Zoo"; [ Current options are 'Outside' and 'Mall'. Case sensitive. If you go down to the woods today, you're in for a big surprise]
	now Cock Count entry is 0; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 0; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 0; [ Size of balls apparently ;) sneaky Nuku (big balls are underrated.)]
	now Nipple Count entry is 2; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 6; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 12;
	now Cunt Tightness entry is 7;
	now libido entry is 45; [ Amount player Libido will go up if defeated ]
	now loot entry is "";
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]slender[or]sexy[or]alluring[or]winged[at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "avian"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "boparadise"; [ Row used to designate any special combat features, "default" for standard combat. ]
	now BannedStatus entry is false;

[
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
]



Section 3 - Alt Combat

Table of Critter Combat (continued)
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)	altstrike (rule)
"boparadise"	bopsong rule	--	--	--	--	--	--	--	--	--

bopsongcount is a number that varies.

this is the bopsong rule:
	choose row MonsterID from the Table of Random Critters;
	say "The exotic bird's sexy dancing and singing is quite tantalizing, seeking to entice you into giving into her advances. She flashes her breasts and juicy cunt at you, singing softly and alluring as she does.";
	let playernum be 150 + humanity of Player + ( level of Player * 2 ) + charisma of Player + ( plmindbonus * 3) - Libido of Player;
	let bopnum be 200 + ( lev entry * 2 ) + ( cha entry * 2 ) + ( monmindbonus * 3);
	if peppereyes > 0, decrease bopnum by 75;
	if BodyName of Player is "Bird of Paradise":
		decrease playernum by 12;
	else if BodyName of Player is listed in Infections of Avianlist:
		decrease playernum by 6;
	if FaceName of Player is "Bird of Paradise":
		decrease playernum by 12;
	else if FaceName of Player is listed in Infections of Avianlist:
		decrease playernum by 6;
[	say "TEST: [playernum] vs [bopnum]:[line break]";]
	now playernum is a random number between 1 and playernum;
	let bopnum be a random number between 1 and bopnum;
	say "[special-style-1][playernum][roman type] vs [special-style-2][bopnum][roman type]: ";
	if Playernum >= bopnum:
		say "As captivating and tantalizing as the large birds song and mating dance may be, you manage to avert your eyes and regain your senses.";
		wait for any key;
	else:
		let xx be ( lev entry + 10 ) / 10; [ xx=1 unless hard mode or otherwise boosted]
		let rangenum be ( 80 - ( peppereyes * 4 ) );
		let dam be ( ( wdam entry times a random number from rangenum to 120 ) / 100 );
		increase Libido of Player by a random number between 5 and 10;
		if BodyName of Player is "Bird of Paradise":
			increase dam by a random number between 0 and xx;
		if FaceName of Player is "Bird of Paradise":
			increase dam by a random number between 0 and xx;
		if BodyName of Player is listed in Infections of Avianlist:			[all avians more aroused]
			increase Libido of Player by a random number between 0 and 2;
		if FaceName of Player is listed in Infections of Avianlist:
			increase Libido of Player by a random number between 0 and 2;
		say "[if BodyName of Player is listed in infections of Avianlist or FaceName of Player is listed in infections of Avianlist]Your avian nature is particularly captivated by the exotically captivating [one of]bird[or]female[at random] before you and you start to sing back to her, starting to move in time with her dancing[else]Unable to look away from the [one of]sexy[or]exotic[or]alluring[or]vibrant[or]colorful[at random] [one of]bird woman[or]avian[or]bird of paradise[purely at random]'s sensual and erotic motions, your feel an increasing need to [one of]be with her[or]join in her dance[or]stop and listen to her song[or]simply enjoy the musical song[purely at random][end if]. The entire display drains some of your resistance, arousing you further and tempting you to give in and join in the bird's mating dance! You take [special-style-2][dam][roman type] damage!";
		decrease HP of the player by dam;
		follow the player injury rule;
		say "You are [descr][if HP of Player > 0 and Libido of Player < 110] and it takes an effort of will to refocus your mind and break your gaze away from those deep eyes of hers[end if].";
		now peppereyes is 0; [pepperspray wears off]
		if HP of the player > 0 and Libido of Player < 110:
			wait for any key;
		else:
			if HP of Player <= 0, now fightoutcome is 20;
			if Libido of Player >= 110, now fightoutcome is 21;
			Lose;
		rule succeeds;


Section 4 - Definitions

Definition: a person is bopfaced:
	if FaceName of Player is "Bird of Paradise", yes;
	no;

Definition: a person is bopskinned:
	if SkinName of Player is "Bird of Paradise", yes;
	no;

Definition: a person is bopbodied:
	if BodyName of Player is "Bird of Paradise", yes;
	no;

Definition: a person is bopcocked:
	if CockName of Player is "Bird of Paradise", yes;
	no;

Definition: a person is boptailed:
	if TailName of Player is "Bird of Paradise", yes;
	no;

Section 5 - Endings

[
when play ends:
	if BodyName of Player is "Template":
		if humanity of Player < 10:
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

Bird of Paradise ends here.
