Version 1 of Dullahan by Gherod begins here.

"Adds a Dullahan enemy and infection."

Section 0 - Flags

Section 1 - Creature Responses

to say DullahanDefeat:
	if inasituation is true:
		say "";
	else:
		say "     You shouldn't be able to encounter the dullahan out of a situation. If you are, please let @Gherod know on the FS Discord.";

to say DullahanVictory:
	if inasituation is true:
		say "";
	else:
		say "     You shouldn't be able to encounter the dullahan out of a situation. If you are, please let @Gherod know on the FS Discord.";

to say DullahanDesc:
	if inasituation is true:
		say "";
	else:
		say "     You shouldn't be able to encounter the dullahan out of a situation. If you are, please let @Gherod know on the FS Discord.";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

when play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
	add "dullahan" to infections of DemonList;
	add "dullahan" to infections of MaleList;
	add "dullahan" to infections of BipedalList;
	now Name entry is "dullahan";
	now enemy title entry is "Dullahan Knight"; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 1; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]The statuesque knight swings his greataxe at you, luckily only leaving you with a superficial cut.[or]The demonic warrior knocks you back with his weapon's pommel.[or]With his powerful body, the Dullahan Knight tackles you painfully, causing you to lose your balance for a short time.[or]Rushing at you, the Dullahan swings his greataxe in your direction, its blade tearing through your skin[at random]";
	now defeated entry is "[DullahanVictory]";
	now victory entry is "[DullahanDefeat]";
	now desc entry is "[DullahanDesc]";
	now face entry is "non-existent, instead covered with darksteel in the shape of a durable helmet. A green mist oozes from within.";
	now body entry is "statuesque and musclebound, fit for the art of battle and war. You're almost twice as tall than an average humanoid.";
	now skin entry is "pale and scarred, like one of a seasoned warrior.";
	now tail entry is "You have a plump, muscular ass.";
	now cock entry is "[one of]human[or]veiny[at random]";
	now face change entry is "you feel it dematerializing. Suddenly you find yourself wearing an unremovable darksteel helmet, which is actually replacing your head. A green mist oozes from within.";
	now body change entry is "your overall frame becomes stronger, also growing taller and larger in general. Every muscle in you is rock solid and toned, fit for the art of battle and war";
	now skin change entry is "scars suddenly show up around your now pale blue skin, resembling a seasoned warrior";
	now ass change entry is "it increases in solidity, becoming plump and muscular";
	now cock change entry is "it becomes human-shaped, veins highly visible underneath its pale skin.";
	now str entry is 43;
	now dex entry is 29;
	now sta entry is 50;
	now per entry is 35;
	now int entry is 40;
	now cha entry is 37;
	now sex entry is "Male";
	now HP entry is 227;
	now lev entry is 16;
	now wdam entry is 60;
	now area entry is "Nowhere";
	now Cock Count entry is 1;
	now Cock Length entry is 24;
	now Ball Size entry is 4;
	now Nipple Count entry is 0;
	now Breast Size entry is 0;
	now Male Breast Size entry is 0;
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	now SeductionImmune entry is true;
	now libido entry is 0;
	now loot entry is "dullahan dust";
	now lootchance entry is 50;
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 4;
	now body descriptor entry is "[one of]statuesque[or]musclebound[or]massive[or]hulking[at random]";
	now type entry is "demon";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;
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

Section 3 - Item

Table of Game Objects(continued)
name	desc	weight	object
"dullahan dust"	"A substance similar to powder, green in color"	1	dullahan dust

dullahan dust is a grab object.

instead of sniffing dullahan dust:
	say "The dust doesn't have any particular smell, though you've got to be careful not to inhale it by accident.";

Usedesc of dullahan dust is "[DullahanDustUse]";

to say DullahanDustUse:
	say "You shrug before opening your mouth and throwing the dust into your mouth. It tingles in your tongue and seemingly melts, like pop rocks, making your entire mouth numb for a moment.";

dullahan dust is infectious. Strain of dullahan dust is "dullahan".

Section 4 - Sex menu

to DullahanSex:
	say "     What will you do with the mythical Dullahan, now that you've got the chance?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Get your hands and mouth on his two feet long of a cock";
	now sortorder entry is 1;
	now description entry is "Treat the Dullahan with a cock worship session";
	[]
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Have the demon knight turn around and bend over";
		now sortorder entry is 2;
		now description entry is "Give the Dullahan's ass a good fuck";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Get your hands and mouth on his two feet long of a cock"):
					say "[DullahanBlow]";
				if (nam is "Have the demon knight turn around and bend over"):
					say "[DullahanFuck]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You politely tell the Dullahan that you are done for today and say goodbye to him. He nods, and both of you part ways to your respective realms.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say DullahanBlow: [player blows the Dullahan]
	say "     Eyeing the Dullahan's muscular body, your gaze eventually ends up fixated on his meaty cock, already throbbing with anticipation as his pale blue skin remains exposed for your delight. The statuesque knight towers over you, and you don't even need to kneel in order to kiss his two feet long dick, as it stays on eye level with you while standing. As soon as you include your tongue sliding by the side of his shaft, you feel a supernatural growling coming from him, his deep sounding voice groaning in your mind as you make a real effort at worshipping his lengthy erection. Few words are exchanged between you as your hands slowly stroke his cock, licking over the sides and circling around the tip with the same steady pace, and though you feel you're pleasing the Dullahan, he appreciates your efforts patiently, without rushing you.";
	say "     You take this as a signal that you should take your time, and so you do exactly that. With a slight twist of your head, you place your tongue at the base of his shaft while moving your hands to the tip, and tease his glans with your thumb by gently rubbing it across the sensitive surface. Moving your lips, you go around the length's perimeter, as you're able, and lick your way back to the tip through the shaft's underline, slipping your tongue across his slit to get a taste of that oozing precum, which turns out to be a mix of saltiness and sweetness in taste, caressing your taste buds and inviting you to take more. One of your hands reach for his goose egg-sized balls, feeling heavy in your grasp, and you give them an appreciative squeeze which seems to make the Dullahan's prick pulse repeatedly.";
	WaitLineBreak;
	say "     It is then that you feel his still gloved hand reaching for the back of your head, almost too gently for a warrior, and a slight pressure for you to not move your lips away from the purple rosy head. You take the message, and figure it's time to allow some of the cock in your mouth, as you let your lips stretch around his considerable thickness. The difficulty is obvious when attempting to take such a big dick inside, though you do your best at managing what's humanly possible to achieve. The knight doesn't push it, aware of your physical limits, though he encourages you to do your best by caressing your cheeks and chin. You're very unfamiliar with this nice side of him, though it's a motivation to keep worshipping his manhood.";
	say "     After a few inches rammed against the back of your mouth, you stroke the rest with both your hands, ramping up the pace as your motions hasten. With vigorous movement, you move your hands through his shaft while sucking on the head, causing the demonic knight to jerk his hips slightly and his ballsac to heavily swing back and forth. You just know, by looking at the size of his cum factories, that the load you're about to get from him will be huge! Hearing his deep voice rumbling in your mind, between grunts and moans, is an indicative that the moment will soon happen, so you do your best at stroking, sucking and licking his huge meat, and not long after, you feel the almost monster-sized cock throbbing unceasingly.";
	WaitLineBreak;
	say "     A little of precum teases your tongue as your head is held tight between the Dullahan's large hands, and he starts thrusting into your mouth before a single, thick blast of cum coats its insides, followed by more equally sizeable spurts that are way too much for you to contain. After the third, it's your face getting splooged, and the Dullahan's orgasm is only gaining force as the next shots go over your forehead, completely covering you in the thick white cream as it drops down through your ears and neck. His climax keeps going for a good while until you're completely drenched from the neck up, a few last drops still finding their way outside through his two feet-long prick and landing right on your face. He pushes you back a little, squeezing his dick all the way towards the tip, making yet another full drop of seed slip away.";
	say "     Once again, his speech moves itself into your mind, gently this time. 'It's been very long since I had a mortal like you please me this much. You truly are something else...' he says, patting you in the shoulder. 'Now go. We have already spent enough time and I have my duties to attend to.' With this said, he grabs his loincloth and turns around, walking away. You're left drenched and sticky, and you have no choice but to return to your realm as well.";

to say DullahanFuck: [player fucks the Dullahan]
	say "     Eyeing the Dullahan's muscular body, you then wonder to yourself if the mythical knight would be up for a fuck in the ass. Without hesitation, he turns around and bends over, showing off his solid rear, filled with muscle mass and so plump that it would make a power bottom envious. Between his powerful glutes is an inviting asshole, twitching as your gaze stays fixated on it, inevitably causing you to pop a boner at the sight of a towering knight offering his ass to you. A newfound rush builds within you as [if player is naked]your length stays proudly erect, immediately giving it a stroke[else]you promptly remove your clothes and give your length a stroke[end if] as you watch. But you know better than to just ram your cock in him, you need to truly appreciate his ass and prepare his seemingly tight entrance.";
	say "     With this in mind, you approach the Dullahan and bend just a little - as necessary, because of his statuesque height - take a grab of those meaty cheeks and spread them to slide your tongue across his hole. Your actions cause the massive knight to shiver, and you feel him moaning in your mind as you start working his rear, circling your tongue around his pucker at first, before pressing it inside. It is actually not as tight as it seemed, opening itself around your tongue with ease as your wet and delicate touch licks him thoroughly. Suddenly you feel his colossal butt pushing against you, and you find your face buried between his glutes with your tongue wiggling inside, a signal that the mythical horserider is truly enjoying your treat.";
	WaitLineBreak;
	say "     After getting his anus wet enough, you start to pull out as his hole keeps winking at you, as if begging to get filled with something again. Of course, you oblige its requests as the Dullahan lowers his ass enough for you to be able to rub your cock between his meaty cheeks. After a couple of gentle and playful thrusts, you then slide your tip over the trail to his pucker, then push your manhood in. His ass takes you with little effort and feels tight all the same, enough for you to slide your entire length in. You feel like the Dullahan could take about any size with his stature, and the way his hole seems to hungrily squeeze your dick inside hints that it isn't a design by chance. All the sensations start driving you crazy, and you're soon pounding vigorously, feeling the fleshy tunnel rubbing against your entire size in overwhelming pleasure.";
	say "     The towering knight aids you in the process, bouncing back and forth together with your thrusting motions, and you're allowed to fuck him as hard as the whim takes you. You're already grabbing him by the hips and treat him like a true bottom, burying your cock as deep and hard as you can, feeling your balls hitting his taint as they swing around. His hole proves to be too good for your stamina, as you're already feeling your climax building up with all the pleasure you're feeling. The Dullahan senses this in you, and doesn't let you finish just yet. First it seems like he just doesn't want you to cum inside him, but then you see him turn around, push you off to lie down on the floor, and placing himself above you. He then lowers his ass on your dick, and you're rewarded with his huge hard-on in plain sight, bouncing up and down as he's now riding you.";
	WaitLineBreak;
	say "     The little time you had with your meat outside his ass only delayed your orgasm for so long. He certainly knows what he's doing, and it doesn't take you long until the friction of his insides drives you over the edge. He doesn't even stop as you shoot your load, and doesn't let you move away with his overpowering weight while spurt after spurt of seed leaves you. The Dullahan milks your cock all the way to the last drop, but you're not the only one to reach an orgasm, as a thick blast of cream is shot in your direction, flying above your head and landing all over your body. There doesn't seem to be a near end to the horserider's load, as more and more of it seems to get pumped through his almost monster-sized meat, completely drenching you by his fifth shot. You're forced to close your eyes as it keeps flowing for a little while more, and then a chuckle invades your mind.";
	say "     'Seems you weren't expecting me to enjoy this so much, were you?' he jokes, looking down at you through his faceless helmet. 'In fact I enjoy when a capable opponent can handle my strength.' You guess you'd see him winking if he had eyes to blink, but for now you'll have to take this information from the way he communicates with you. 'Now go. We have already spent enough time and I have my duties to attend to.' With this said, he grabs his loincloth and turns around, walking away. You're left drenched and sticky, and you have no choice but to return to your realm as well.";

Section 5 - Tome Specific Scenes

to say DullahanFirstRead:
	say "     After speaking with Xaedihr, you actually manage to find a section of the tome you haven't explored yet. ";
	if demonologist is listed in companionList of Player or player is in Grey Abbey Library:
		say "You call out for the half-demon, as you think you're onto something important here. 'Huh? What did you find?' he asks, leaning his head over the pages next to you. 'Interesting... I don't remember this ritual being here. But it speaks of the headless knight, Dullahan.'";
	say " A closer inspection leads you to a brief introduction of this mythical entity.";
	WaitLineBreak;
	say "     A spirit imbued with darkness and sorrow, the Dullahan endlessly wanders in a world reigned by death. The pathway only the ones destined to pass away are condemned to take, once the headless knight finds their souls and transports them to their resting place. Male in aspect, sporting a statuesque height and a helmet in the place of his head, the Dullahan is as strong as he is intimidating, making his victim's only hope to surrender immediately. He carries a greataxe made of human bones, ready to decapitate anyone who dares to cross his path. The only way to permanently kill a Dullahan is by finding his head and destroy it, however, doing so will release a vengeful wraith that will haunt his murderer for eternity.";
	if demonologist is listed in companionList of Player or player is in Grey Abbey Library:
		say "     Xaedihr once again turns to you with a unconvinced tone. 'He doesn't look like a fun fellow... Don't you want to mess around with the demon fox instead? Or the tentacles? Or even with me?!' he questions you, but self-awareness strikes him as he notices your interest in the content.";
	else:
		say "     You collect your own thoughts about what you've just read.";
	say " Indeed, this appears to be a rather dangerous creature to be dealing with, and unlike most of the ones you encounter, the headless knight doesn't seem remotely interested in raping his victims. The way the text puts it, it looks like the Dullahan will actually slay anything and anyone in his path. If you want to earn his respect, you'll have to defeat him in battle, and then perhaps you could appeal to his lust. After all, why would the Ancient Tome hoard such a creature if they were devoid of any carnal desire?";
	WaitLineBreak;
	say "     The answer to this question is revealed once you flip the page and see an image of a very tall, barely armored knight - in all honesty, he's only wearing greaves and gauntlets, and something you could barely call shoulder plates, to which a cloak is attached - subduing a human, tied up with chains and a collar, powerless to his overwhelming might. The tome is clear on how the Dullahan claims his victories, and sees sex as an act of domination or submission, depending on the end. It is said that once you're claimed by the demonic spirit, your soul is condemned to travel with him until the end of days. ";
	if demonologist is listed in companionList of Player or player is in Grey Abbey Library:
		say "'In other words, if you lose to him, you become his bitch for all eternity. Huh, I wonder why they didn't put this page before all that nightmare inducing description. He's quite big down there, isn't he? Woow...' says Xaedihr, cutting your line of thoughts abruptly and pointing at the imagine with great interest.";
	else:
		say "In other words, if you ever lose to a Dullahan, your soul will be claimed for all eternity.";
	say "     The ritual procedure is explained soon after. [bold type]Perhaps it's a good idea to make sure Xaedihr is your current companion before trying to face this dangerous foe.[roman type][line break]";
	now resolution of Dullahan Knight is 1;

to say DullahanSummon:
	if resolution of Dullahan Knight is 99:
		say "     The pages on the Dullahan Knight summoning ritual are blank. Your previous actions must have caused this, and now your chance with the mythical headless horserider will forever be gone.";
	else if resolution of Corruption of Dreams is 2 or resolution of Corruption of Dreams is 4 or resolution of Corruption of Dreams is 6:
		say "     You attempt to put your focus on this, but your mind is just too tired right now. Maybe you should get some rest first.";
	else if demonologist is not listed in companionList of Player and resolution of Dullahan Knight is 1: [warning if going the first time without Xaedihr]
		say "     You chose to proceed with summoning a dangerous demonic creature without Xaedihr, who is an expert demonologist able to protect you significantly during your confrontations with the dark knight. The events that will follow can be punishing and unrelentless without proper guidance, and you know what will happen if you lose to the Dullahan in battle. [bold type]Are you sure you wish to dwelve into demonic affairs all by yourself?[roman type][line break]";
		say "     [link](Y)[as]y[end link] - Danger? What danger? Just continue with the ritual.";
		say "     [link](N)[as]n[end link] - Let's be cautious about this.";
		if player consents:
			say "     Nonsense. You consider yourself more than capable of doing this alone. With your decision made, your get ready to perform the ritual.";
			Linebreak;
			DullahanSummon1;
		else:
			Linebreak;
			say "     With your decision made, you cease your actions at once.";
			stop the action;
	else if demonologist is listed in companionList of Player and resolution of Dullahan Knight is 1: [first time, with Xaedihr, skipping warning]
		Linebreak;
		DullahanSummon1;
	else if resolution of Dullahan Knight is 2: [Dullahan rematch]
		Linebreak;
		DullahanSummon2;
	else if resolution of Dullahan Knight > 2 and resolution of Dullahan Knight < 99: [Visiting Dullahan for sparring or sex]
		Linebreak;
		DullahanSummon3;

to DullahanSummon1:
	if demonologist is listed in companionList of Player: [Xaedihr is with player. They cannot lose battle or submit to Dullahan. Death by wrong choices is still possible, but right choices have guaranteed success]
		say "     'Are you ready to begin?' asks your half-demon companion, seemingly fearful of what you might encounter past this point. 'Just be careful. We're dealing with an unknown entity here. I have no idea how difficult this will be for us, so... I advise caution. Just... emphasizing that part.' With everything said and set, you are now ready to perform the ritual, that is, after you move to an open space where the rite can be executed without any major issues. Xaedihr does most of it for you with his greater experience, and insists that you stay behind him. A few arcane gestures and unpronounceable words, and soon, the familiar crimson energy begins enveloping the area in front of you. Soon, the environment around you becomes somewhat gloomier and darker, a misty fog surrounding you.";
		say "     Eventually, you are unable to see anything beyond that curtain of dust, and no summon involves a change in your whereabouts. Something is definitely wrong. Xaedihr goes silent for a while and lets go of the book, which is now floating in front of you both. 'I am certain I have done everything well! This isn't a normal summoning ritual...' he exclaims, worry visible in his expression as the pages flip madly, then an high frequency sound bursting through your ears almost painfully. The inhuman sounds continue in what seems like a true descent to Hell, and the only thing you can do is wait it out.";
		WaitLineBreak;
		say "     'It is subsiding. The fog is getting thinner now.' informs the half-demon, who's breathing in relief. But soon, your faces come to a shock, as the world around you is a dark plain of dead trees, with nothing else around you but dirt and a straightforward road towards the horizon. There is total silence once the magic effects of the ritual are gone, and the Ancient Tome is nowhere to be found. 'Oh, we haven't summoned the Dullahan Knight, it seems.' - he murmurs, turning towards you with a grin - 'The Dullahan Knight has summoned us. Fascinating, isn't it?' You don't quite comprehend what's so fascinating about being trapped in an unknown realm with a genocidal mythical creature about to find you, so instead of agreeing, you start making all sorts of questions, namely how you're going to get out of here.";
		say "     'We have only to wait for the arrival of the Dullahan.' he declares. Before you can say anything else, a sound of a horse at trot is heard in the distance. Each clip-clop sound drawing progressively nearer, until the point you can see an intimidating shadow far ahead. It stops at a considerable distance, one that only allows you to confirm that it is the same creature described in the tome, riding a horse made of darkness. 'Don't move an inch. He'll perceive us as enemies immediately if we do... Well, we are, but that's not the point right now. Our only chance is to let him approach and take his shadow horse down.' he tells you, but you can only turn towards him with an incredulous expression. 'What? Don't question me! I'm the expert here!' With that said, the choice is yours to make.";
		Linebreak;
		DullahanSummon1Choice1;
	else: [player is by himself. They can lose or submit to Dullahan with permanent consequences. No guidance through the event choices. Victory skips next mandatory battle, unlocking direct access to sex scenes]
		say "     With everything now set, you are now ready to perform the ritual, that is, after you move to an open space where the rite can be executed without any major issues. With your experience, you're now able to follow the tome's instructions with relative ease. Flipping through the pages, you first train what you have to do without actually tapping into the magic energy, and only when you feel secure about it, you stand ready for a serious try. A few arcane gestures and nearly unpronounceable words, and soon, the familiar crimson energy begins enveloping the area in front of you. Soon, the environment around you becomes somewhat gloomier and darker, a misty fog surrounding you.";
		say "     Eventually, you are unable to see anything beyond that curtain of dust, and no summon involves a change in your whereabouts. Something is definitely wrong. Silence is everything you can perceive from your surroundings, and the tome starts feeling scorching hot in your hands, making you drop it. To your shock, it remains floating in the air, with its pages flipping madly. You start to get worried, as this really isn't how a typical summoning ritual should go. An high frequency sound bursts through your ears almost painfully as inhuman sounds continue in what seems like a true descent to Hell. The only thing you can do is wait it out.";
		WaitLineBreak;
		say "     Several seconds later, the fog starts getting thinner as it subsides. Breathing in relief, you think things will fix themselves soon after, but comes yet another surprise as the environment in which you were before got replaced with a disturbing scenario. A dark plain, with a few dead trees scattered around, dirt and a straightforward road extending towards the horizon, seeming endless in length. The deafening silence remains, even after all the ritual's magic effects disappear, and nothing but you stands in the middle of the silent place. You can't help but wonder how you're going to get out of here, or even when, as the tome is gone and there's no sign of an escape route around you.";
		say "     Just when you're about to walk around in the desperate intent to find something, you hear a sound of a horse at trot in the distance. Each clip-clop sound draws progressively nearer, until the point you can see an intimidating shadow far ahead. It stops at a considerable distance, one that only allows you to confirm that it is the same creature described in the tome, riding a horse made of darkness.";
		DullahanSummon1Choice1;

to DullahanSummon1Choice1:
	say "     [bold type]What will you do?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Stay put and calm. Wait for him to come.";
	say "     [link](2)[as]2[end link] - Stand with your guard up and watch the Dullahan cautiously.";
	say "     [link](3)[as]3[end link] - Charge ahead and target his horse.";
	say "     [link](4)[as]4[end link] - He looks too strong to face in a battle. Run away!";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 4:
		say "Choice? (1-4)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to stay put and calm, [link]2[end link] to rise your guard, [link]3[end link] to initiate the fight yourself and charge ahead, or [link]4[end link] to attempt an escape.";
	if calcnumber is 1:
		Linebreak;
		if demonologist is listed in companionList of Player:
			say "     Following Xaedihr's recommendation, you decide to stay put and ease your breathing. The Dullahan continues to move in your direction, slowly and steadily. 'Good, he's moving this way. Let him come.'";
		else:
			say "     Following your best intuition, you decide to stay put and ease your breathing. The Dullahan continues to move in your direction, slowly and steadily.";
		DullahanSummon1a;
	else if calcnumber is 2:
		Linebreak;
		say "     Your posture is stationary, but defensive. The Dullahan senses your readiness for battle and swings his greataxe around, keeping it stretched towards one side as he moves towards you.";
		if demonologist is listed in companionList of Player:
			say " 'Wasn't I clear when I told you not to look like a threat? You'll put us both in danger!' - exclaims the half-demon, followed by a sigh - 'But he's coming this way, I guess. Let him approach.'";
		if demonologist is listed in companionList of Player:
			if loyalty of Xaedihr < 30:
				say "     [bold type]Looks like Xaedihr got a little annoyed with your choice.[roman type][line break]";
				decrease loyalty of Xaedihr by 1;
		DullahanSummon1a;
	else if calcnumber is 3:
		Linebreak;
		say "     You have no time for this. If all you need is to take off his horse, then a head-on attack could work, if you're strong enough. With this in mind, you get ready and dash towards the Dullahan,";
		if demonologist is listed in companionList of Player:
			say " hearing Xaedihr cursing from behind you. 'You fool! What did I tell you?!' he tries to put some sense into you, but his voice is soon too far to be clearly audible.";
		else:
			say " somehow questioning your decision as the intimidating shape of the knight becomes more obvious.";
		say " As you approach the dark knight, he moves forward a bit more with his greataxe in hand, ready to counterattack your charge.";
		say "     Your bravery, however, is not rewarded. As soon as you come in reach of the horserider, you're presented with the cold, sharp feeling of his heavy blade across your neck. An intense pain takes over as the world around you spins before your eyes, until you stop feeling anything at all.";
		WaitLineBreak;
		now battleground is "Void";
		the Player was ended by "Decapitated by Dullahan";
		trigger ending "Player has died";
		end the story saying "Your body lies decapitated on the floor in a bloody mess.";
	else if calcnumber is 4:
		Linebreak;
		say "     There is no way you can face a foe like this in battle! You must run away and find a way to escape this realm before it's too late. With this in mind, you turn your tail and start running, only hearing a deep, earth-shaking shout from behind in the form of a single word 'COWARD!'. Soon the horse trot catches up to you, and his intimidating presence is made obvious, right next to you. It's not long before you're presented with the cold, sharp feeling of his heavy blade across your neck. An intense pain takes over as the world around you spins before your eyes, until you stop feeling anything at all.";
		WaitLineBreak;
		now battleground is "Void";
		the Player was ended by "Decapitated by Dullahan";
		trigger ending "Player has died";
		end the story saying "Your body lies decapitated on the floor in a bloody mess.";

to DullahanSummon1a:
	if demonologist is listed in companionList of Player: [Xaedihr gives a 100% chance of success]
		say "     A dead silence remains between you both, but not for long. Soon, the dark knight hurries his shadow horse and charges towards you, with his greataxe ready to swing at you. Xaedihr whispers next to you 'It shouldn't be long, now...' as he quietly readies up a spell. With the Dullahan drawing so closer, your heartbeat accelerates, feeling a cold sweat running down your forehead and your hands shaking. A ghastly, unknown voice speaks to you, in your mind, on the last seconds before the horserider strikes... '...YOUR SOUL IS MINE...'";
		say "     'To Hell with your threats.' says the half-demon, as if he heart it too, and lunges himself at your direction, pushing you to the side and launching a precise strike with a sturdy purple tendril around his mount's legs. The attack is so powerful that the knight is thrown off his shadow horse, which vanishes as it falls on the ground, ending up several meters away from you with a loud crash, but with his greataxe still in reach. 'His horse is gone now, but he's still a formidable enemy. Do not take victory for granted.' warns Xaedihr with a good purpose, as it's not long until the Dullahan manages to stand on his feet, like nothing happened. The ominous voice is heard, once more, but clearer this time '...Fools. You will submit, and your souls shall be claimed...'";
		say "     With a grin, the sorcerer turns to you. 'Well, prepare for a fight! I'll back you up, not matter what happens.'";
		WaitLineBreak;
		DullahanSummon1Fight;
	else: [player relies on a roll for success, dexterity and strength]
		say "     A dead silence remains between you both, but not for long. Soon, the dark knight hurries his shadow horse and charges towards you, with his greataxe ready to swing at you. The only advantage you have is the time at your disposal to react!";
		WaitLineBreak;
		let bonus be (( dexterity of player minus 10 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]15[roman type] (Dexterity Check):[line break]";
		if diceroll + bonus >= 15:
			say "     Your great dexterity and agility allows you to dodge an incoming swing, and you're nimble enough to get a good angle for a critical strike!";
			let bonus be (( strength of player minus 10 ) divided by 2);
			let diceroll be a random number from 1 to 20;
			say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]14[roman type] (Strength Check):[line break]";
			if diceroll + bonus >= 14:
				say "     And with enough strength, your strike is extremely effective! Kicking the shadow horse throws the shape off balance, which vanishes as it falls on the ground, and the knight ends up several meters away from you with a loud crash, but with his greataxe still in reach. You may have removed his horse, but when he manages to stand up again, you get reminded of how strong of a foe he is, even on foot. His ominous voice shows itself in your mind, once more, but clearer this time '...You are valiant. Duel me. The victor takes the spoils.' With this, the Dullahan awaits your move with greataxe in hand.";
				say "     This is a fight you have to win.";
				DullahanSummon1FightSolo;
			else:
				say "     But unfortunately, you weren't strong enough. Without managing to connect a good attack with your initiative, you remain vulnerable, an easy prey for the Dullahan. A ghastly voice surges in your mind... '...YOU HAVE FAILED...!' It's not long before you're presented with the cold, sharp feeling of his heavy blade across your neck. An intense pain takes over as the world around you spins before your eyes, until you stop feeling anything at all.";
				WaitLineBreak;
				now battleground is "Void";
				the Player was ended by "Decapitated by Dullahan";
				trigger ending "Player has died";
				end the story saying "Your body lies decapitated on the floor in a bloody mess.";
		else:
			say "     Unfortunately, you're not fast enough. Without a quick reaction and support, you're vulnerable, and easy prey for the Dullahan. A ghastly voice surges in your mind... '...INTRUDERS WON'T BE SPARED...!' It's not long before you're presented with the cold, sharp feeling of his heavy blade across your neck. An intense pain takes over as the world around you spins before your eyes, until you stop feeling anything at all.";
			WaitLineBreak;
			now battleground is "Void";
			the Player was ended by "Decapitated by Dullahan";
			trigger ending "Player has died";
			end the story saying "Your body lies decapitated on the floor in a bloody mess.";

to DullahanSummon1Fight:
	now inasituation is true;
	challenge "Dullahan Knight";
	now inasituation is false;
	if fightoutcome < 20: [won]
		say "     Against all odds, you actually managed to defeat the knight before Xaedihr had to take over. Your attacks had forced the dark knight to kneel, weak and bruised, and you can hear the appalling voice reaching out to you '...YOU... DID NOT WIN...' and then follows in a more clear tone '...I will not submit to someone who doesn't fight with honor. Come find me again, and fight me fair.' With this, the Dullahan vanishes before your eyes, and you're left alone with your half-demon companion. 'I can't believe you actually defeated him. Though he must have felt offended by this battle's conditions and decided to... not submit. Intriguing.' he says, bringing his hand below his chin as he loses himself in thought for a bit.";
		say "     Not long after, the environment around you begins to shift once more. A familiar mist envelops you, obscuring your view from the dark empty plain, and the sounds aren't as horrific as before. Within a minute, the fog subsides and you see yourselves back to where you performed the ritual, with the Ancient Tome in your possession. You go over the respective pages in a rush, and there seems to be a change in the rituals' words. Xaedihr also comments on it once you show what you've seen. 'This tome truly is a mystery. It's as if it had a life of its own, or if the creatures themselves had an influence over it... I'm going to be entertained for a long time putting all of this together.'";
		WaitLineBreak;
		say "     Just before you're about to part ways, Xaedihr still turns to you in order to add something. 'Anyway, regarding revisiting the Dullahan...' - he makes a pause, looking at you in the eyes with an intense glare - 'You can still take me with you, I guess. Though I'll have to commit in not interfering outside of the ordinary battle backup, or he might take it as an offense again. But don't worry, you'll just have to defeat him again. I believe he'll fully submit to you once you manage to achieve that. But if you lose, it's goodbye.' With that said, he starts walking away, though you still hear him mumbling in the distance 'Now, wouldn't that be interesting to see...'";
		if loyalty of Xaedihr < 30:
			say "     [bold type]The half-demon was very pleasantly surprised at your skill![roman type][line break]";
			increase loyalty of Xaedihr by 5;
		now resolution of Dullahan Knight is 2; [Dullahan has been encountered]
	else if fightoutcome > 19 and fightoutcome < 30: [lost]
		say "     The Dullahan is, indeed, a very formidable foe. Your own efforts were not enough to bring him down, so Xaedihr had to take over with a powerful crimson bolt. A few more spells were necessary to actually finish the knight off, forcing him to kneel, weak and bruised. You can hear the appalling voice reaching out to you '...YOU... DID NOT WIN...' and then follows in a more clear tone '...I will not submit to someone who doesn't fight with honor. Come find me again, and fight me fair.' With this, the Dullahan vanishes before your eyes, and you're left alone with your half-demon companion. 'Well, hadn't you brought me along, you'd be a knight's bitch right now. I accept any form of thanks once we're back.' he comments, winking at you with a grin. 'Though he must have felt offended by this battle's conditions and decided to... not submit. Intriguing.' he says, bringing his hand below his chin as he loses himself in thought for a bit.";
		say "     Not long after, the environment around you begins to shift once more. A familiar mist envelops you, obscuring your view from the dark empty plain, and the sounds aren't as horrific as before. Within a minute, the fog subsides and you see yourselves back to where you performed the ritual, with the Ancient Tome in your possession. You go over the respective pages in a rush, and there seems to be a change in the rituals' words. Xaedihr also comments on it once you show what you've seen. 'This tome truly is a mystery. It's as if it had a life of its own, or if the creatures themselves had an influence over it... I'm going to be entertained for a long time putting all of this together.'";
		WaitLineBreak;
		say "     Just before you're about to part ways, Xaedihr still turns to you in order to add something. 'Anyway, regarding revisiting the Dullahan...' - he makes a pause, looking at you in the eyes with an intense glare - 'You can still take me with you, I guess. Though I'll have to commit in not interfering outside of the ordinary battle backup, or he might take it as an offense again. I believe he'll fully submit to you once you manage to achieve that, so make sure you go well prepared. If you lose, it's goodbye.' With that said, he starts walking away, though you still hear him mumbling in the distance 'Now, wouldn't that be interesting to see...'";
		now resolution of Dullahan Knight is 2; [Dullahan has been encountered]
	else if fightoutcome is 30: [fled]
		say "     But run where? Into the endless horizon? There's no point, and the knight eventually catches up to you after regaining his strength.";
		DullahanSummon1Fight;

to DullahanSummon1FightSolo:
	now inasituation is true;
	challenge "Dullahan Knight";
	now inasituation is false;
	if fightoutcome < 20: [won]
		say "     Moments later, you're both bruised and weakened. The fight you took left you exhausted, but there was still energy in you to deliver the final strike, finishing the headless knight for good. As this happens, the shape before you dematerializes, vanishing in a shadow dust of screams and horrifying visages that leave you frozen in place. There's no telling what will follow, only a long and deafening silence as you look around for something different... but nothing happens. Wind goes still, and the environment around you dead as ever. Close to your feet lies a considerable pile of green dust, which makes you wonder if you actually managed to defeat a mythical demon all by yourself... Is that what happened?";
		say "     [bold type]You've obtained enough dullahan dust for five dosages.[roman type][line break]";
		increase resolution of Corruption of Dreams by 1; [even number]
		ItemGain dullahan dust by 5 silently;
		WaitLineBreak;
		say "     Your questions are answered as soon as when you crouch to lay a hand on the powder. The same voice from before finds itself in your mind, speaking in a calm and clear manner... 'I never had such a formidable opponent. One that wouldn't fall on my first strike, coming here out of either bravery or stupidity, managed to defeat me in a fair duel... I am impressed.' The voice's fluidity gives you a chill that runs down your spine, making your hair standing, although he keeps speaking... 'Do not fear me. I will not take your soul, for you have deserved my respect. However, I would like to ask you a question...' the voice informs, making a brief pause before continuing.";
		say "     [bold type]'Why did you come here to find me? What is that you seek?'[roman type][line break]";
		say "     [link](1)[as]1[end link] - To gain power and dominate those who dare to stand in your way.";
		say "     [link](2)[as]2[end link] - You wish only to serve, and came to seek your true purpose.";
		say "     [link](3)[as]3[end link] - Sheer curiosity brought you to the realms of Hell.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to say you want power, [link]2[end link] to say you wish for servitude or [link]3[end link] to tell the knight that you were brought by curiosity.";
		if calcnumber is 1:
			say "     The ominous voice throws a laughter in your mind that nearly makes you lose your balance. 'Hah! Petty mortals, always wanting more than what they deserve. Though you have demonstrated your strength, and so you have earned the right to see me once more. Perhaps I'll give you what you seek... Who knows.' With this said, the presence within your conscience fades away, and with it, a familiar mist envelops you, obscuring your view from the dark empty plain, the sounds being not as horrific as before. Within a minute, the fog subsides and you see yourselves back to where you performed the ritual, with the Ancient Tome in your possession. You go over the respective pages in a rush, and there seems to be a change in the rituals' words. Looks like the next time you perform it, a different thing may happen.";
			now resolution of Dullahan Knight is 4; [Told Dullahan they want power]
			WaitLineBreak;
		else if calcnumber is 2:
			say "     The ominous voice seems to chuckle at your response, as if amused by it. 'Well well... You could have just submitted to me, and I would have taken you as my slave for all eternity. Lucky you, a capable fighter such as yourself worshipping me as I go about my duties as a soul hoarder... But sadly, I am not allowed to enslave a mortal that has defeated me in combat. However, thanks to that, you have earned the right to see me once more. Perhaps I'll give you what you seek... Who knows.' With this said, the presence within your conscience fades away, and with it, a familiar mist envelops you, obscuring your view from the dark empty plain, the sounds being not as horrific as before. Within a minute, the fog subsides and you see yourselves back to where you performed the ritual, with the Ancient Tome in your possession. You go over the respective pages in a rush, and there seems to be a change in the rituals' words. Looks like the next time you perform it, a different thing may happen.";
			now resolution of Dullahan Knight is 5; [Told Dullahan they want to serve]
			WaitLineBreak;
		else if calcnumber is 3:
			say "     The ominous voice gives you another brief silence, followed by a sigh. 'Really? You put yourself in danger for that? Do you know what forces are you messing with? Do you know the consequences of such a reckless attitude? I won't be sorry if Hell ends up claiming you.' His tone looks a little angry, but he soon calms down. 'Either way, you have defeated me in combat, so you have earned the right to see me once more. Just come up with a better reason, next time.' With this said, the presence within your conscience fades away, and with it, a familiar mist envelops you, obscuring your view from the dark empty plain, the sounds being not as horrific as before. Within a minute, the fog subsides and you see yourselves back to where you performed the ritual, with the Ancient Tome in your possession. You go over the respective pages in a rush, and there seems to be a change in the rituals' words. Looks like the next time you perform it, a different thing may happen.";
			now resolution of Dullahan Knight is 3; [Told Dullahan they arrived out of curiosity. Neutral path.]
			WaitLineBreak;
	else if fightoutcome > 19 and fightoutcome < 30: [lost]
		DullahanBadEnd;
	else if fightoutcome is 30: [fled]
		say "     But run where? Into the endless horizon? There's no point, and the knight eventually catches up to you after regaining his strength.";
		DullahanSummon1FightSolo;

to DullahanSummon2: [Dullahan rematch]
	say "     Reciting the words written in the pages of the Ancient Tome is now enough to perform the ritual. Soon, a strange limbo envelops you, no longer bringing you anywhere, but freezing the world around you. It is then when you realize you've been brought to an alternate dimension, an in-between separating the demonic realm and yours. As intended, your actions are enough to summon the Dullahan, who materializes before you as he walks in your direction with greataxe in hand. There's a faint trace of green mist oozing out of his helmet's front opening as the statuesque knight stands in front of you, as if eyeing you from head to feet.";
	WaitLineBreak;
	say "     He strikes you with a single question, his deep voice barging into your mind like a sharp blade onto your skin. [bold type]'Are you here for a fair duel, mortal?'[roman type][line break]";
	say "     [link](Y)[as]y[end link] - Let's duel.";
	say "     [link](N)[as]n[end link] - Refuse to duel him.";
	if player consents:
		say "     You nod, and bring your guard up. Your acceptance is met with excitement from the knight's behalf. 'Good. Let us fight.'";
		DullahanSummon2Fight;
	else:
		say "     You say that you're not here to fight, and he stops you before you can say anything else. 'Do not waste my time, then. Next time you call me, make sure you're willing to duel me instead of acting like the coward you are.' He turns around and starts walking away, forcing your limbo to break apart. You're painfully shoved back into your realm, the process leaving you very dizzy. It takes you a while until you're able to collect your senses and focus on what you'll be doing next.";

to DullahanSummon2Fight:
	now inasituation is true;
	challenge "Dullahan Knight";
	now inasituation is false;
	if fightoutcome < 20: [won]
		say "     Moments later, you're both bruised and weakened. The fight you took left you exhausted, but there's still enough energy in you to deliver the final strike. However, you're stopped by the Dullahan as he speaks in your mind once more. 'I admit defeat. You are more capable than I initially thought.' You both return to a neutral stance, facing each other with your arms low. 'I never had such a formidable opponent. One that wouldn't fall on my first strike... You're impressive. I shall not take your soul, for you have earned my respect.' Once he finishes his speech, you see the dark knight kneeling in front of you, his helmet head facing the ground, as his voice slips into your mind one more time. 'Is there anything I can do as a reward for your victory?'";
		say "     Now's the time to get dirty with the statuesque knight, if you so desire.";
		increase resolution of Corruption of Dreams by 1; [even number]
		now Resolution of Dullahan Knight is 3; [this path is always treated as neutral]
		WaitLineBreak;
		DullahanSex;
	else if fightoutcome > 19 and fightoutcome < 30: [lost]
		DullahanBadEnd;
	else if fightoutcome is 30: [fled]
		say "     You manage to break out of the fight with the Dullahan, though this does not make him happy. 'You fool. Running away in battle after your last miserable performance. Never show your face again, mortals like you are not worth my time.' He turns around and starts walking away, forcing your limbo to break apart. You're painfully shoved back into your realm, the process leaving you very dizzy. It takes you a while until you're able to collect your senses and focus on what you'll be doing next. Looks like you've lost your chance with this summon.";
		now resolution of Dullahan Knight is 99;

to DullahanSummon3: [Sparring or sex]
	say "     Reciting the words written in the pages of the Ancient Tome is now enough to perform the ritual. Soon, a strange limbo envelops you, no longer bringing you anywhere, but freezing the world around you. It is then when you realize you've been brought to an alternate dimension, an in-between separating the demonic realm and yours. As intended, your actions are enough to summon the Dullahan, who materializes before you as he walks in your direction with greataxe in hand. There's a faint trace of green mist oozing out of his helmet's front opening as the statuesque knight stands in front of you, as if eyeing you from head to feet.";
	WaitLineBreak;
	say "     He salutes you, his deep voice barging into your mind like a sharp blade onto your skin. [bold type]'I see you're back. Looking to spar? Or something else of your liking?'[roman type][line break]";
	say "     [link](1)[as]1[end link] - Spar with the Dullahan.";
	say "     [link](2)[as]2[end link] - You came here for some sex with the statuesque knight.";
	say "     [link](3)[as]3[end link] - You've changed your mind, so you just salute him and say goodbye.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to say you want to spar, [link]2[end link] to say you came for sex or [link]3[end link] to leave.";
	if calcnumber is 1:
		say "     You nod, and bring your guard up. Your acceptance is met with excitement from the knight's behalf. 'Good. Let us fight.'";
		DullahanSummon3Fight;
	else if calcnumber is 2:
		say "     You tell the Dullahan that you were brought by the desire to mess around with him, in more intimate ways. 'Very well, my body is yours to use as you see fit.'";
		DullahanSex;
	else if calcnumber is 3:
		say "     You excuse yourself, saying that you merely wanted to greet him and that'll you be in your way for now. 'Silly mortal. Giving yourself the work to perform a ritual, only to go back with your decision... Alright. Come back when you feel like it.' With this said, you both part ways to your respective realms.";

to DullahanSummon3Fight:
	now inasituation is true;
	challenge "Dullahan Knight";
	now inasituation is false;
	if fightoutcome < 20: [won]
		say "     'That was a good fight. It seems I must still work harder to beat you.' says the Dullahan, as he kneels in front of you, his helmet head facing the ground, as his voice slips into your mind one more time. 'Now, is there anything I can do as a reward for your victory?'";
		say "     Now's the time to get dirty with the statuesque knight, if you so desire.";
		WaitLineBreak;
		DullahanSex;
	else if fightoutcome > 19 and fightoutcome < 30: [lost]
		say "     You don't hold back in this fight, but something seems to be off, as the knight manages to overpower you with moves you were not expecting. There's no option left for you but to claim defeat, as his greataxe hovers above your head. Chuckling, the powerful voice slips into your mind like cutting wind 'Seems like I won, this time. You should never take your victories for granted, mortal. One day I might be able to turn the tables.' he threats you, however the erection building up under his long loincloth betrays his warrior spirit. 'Well... there is something you could do for me as reward for MY victory...' With this said, the Dullahan loses his piece of clothing, revealing his two feet long erection, eager to be touched.";
		WaitLineBreak;
		say "[DullahanBlow]";
	else if fightoutcome is 30: [fled]
		say "     You manage to break out of the fight with the Dullahan, though this doesn't last. He quickly catches up to you with newfound strength, forcing you to resume your encounter.";
		DullahanSummon3Fight;

to DullahanBadEnd:
	say "     No matter how much you try, the shadow knight ends up deflecting every last blow of yours, his strength clearly superior to yours. Your inevitable end draws nearer as he kicks you to the ground, raising his greataxe above you. But it never comes down to end your life. Instead, the Dullahan keeps his gaze at you -or so it looks, as you can't tell for sure since he has only his helmet in the place of his head - and slowly lowers his weapon. One of his greaves is planted firmly above your chest, steadily making its way over your neck. He's huge, his monumental frame overpowering you in every way, able to keep you pinned down with little effort. His voice forces itself in your mind once again... 'I will not take your life. Your soul, however... will serve me better.'";
	WaitLineBreak;
	say "     The cold metal of his greave presses against your cheek, forcing your face to turn as the knight loses his large loincloth. You're only given a view at him once he gets down above you, his legs on each side of your body, and his hand reaching for your neck. With a hard tug, you're pushed to him, only to bump your nose on the still growing shaft of the knight, not even being given any second to look at it before he gives you an order. 'Lick it.' Without a choice [if player is submissive], further motivated by your inherent desire to serve[else], as you're not allowed to push back[end if], you give his manhood a tentative lick, causing its length to harden even further. Impatiently, the demonic entity drags you across the entirety of his meat, towards the base then back to the tip, an enormous two feet-long of a dick standing hard right in front of you. He makes it so that your lips are firmly pressed against the glans. 'You better open wide and serve your new owner. This will be your new... life, from now on.";
	say "     Respecting your new master, you open your mouth as wide as you can, though you barely make it past the glans. The enormous shaft throbs and seems to thicken at each touch you make, turning this into a very difficult task. The only option you have is to stroke his cock with both your hands and run your mouth all over his sensitive spots, though that seems to cause a chuckle on the Dullahan. 'Your physical body truly is pathetic... Let me show you how you're supposed do it.' Fear strikes your senses as he places his large hands on the back of your head, and suddenly, you feel him pulling you. Your mouth presses on his cock so hard that you feel your jaw almost dislocating, and soon, you're helplesly taking his dick.";
	WaitLineBreak;
	say "     You have no idea how you're being able to endure his enormous size being slid inside your mouth... Inch by inch, his cock slides in deeper inside, stretching your throat inhumanly as you feel the monster cock bulging out in your neck. He's not done pushing yet, only stopping when your nose bumps into his hairless crotch. The knight makes you look at him, and no words are spoken as you're forced to hold your breath. Then, he slowly pulls out, feeling like it's your insides coming out through your mouth instead as your stretched throat now feels the emptiness of what used to be there, though his manhood never leaves your lips. Your urge to catch your breath never seems to come...";
	say "     'You've left your physical boundaries. Breathing is no longer necessary.' the Dullahan informs you as he pushes into your mouth once more. His now rock solid length finds itself slipping into your throat again, stretching the fleshy tunnel around his considerable girth. 'Your throat makes a nice fuckhole, mortal... I'm glad I can use it without end.' You feel his cock sliding in and out of your esophagus vigorously as he thrusts powerfully, grabbing you by the ears and moving your head in rhythm with his pounding. Just when you're starting to get used to the treatment, he stops abruptly, then pulls out the same way as before. This time, his dick is removed completely out of your mouth as he gives it a few strokes, though he does reward you with the good sight of his two feet-long pulsing in front of you. 'You feel good... But you don't deserve my load yet.'";
	WaitLineBreak;
	say "     His words strike you [if player is submissive]as a tremendous disappointment, just when your body was craving to be used by him all the time[else]as commanding and compelling, and you outright understand why[end if]... 'We'll have an entire eternity for that.' The Dullahan just pulls you from the ground and makes you walk in front of him, his erection dandling between his legs as you both approach a shadowy shaped wagon. A look over your shoulder has your eyes meeting with the visage of your previous human shell. A body your soul no longer inhabits lies on the floor several meters behind you, one that you won't need nor miss anymore. Not for now, at least, as an eternity of servitude next to your new Master awaits you...";
	WaitLineBreak;
	now battleground is "Void";
	the Player was ended by "Soul taken away by Dullahan";
	trigger ending "Player has died";
	end the story saying "Your soul has been taken away by the Dullahan";

Dullahan ends here.
