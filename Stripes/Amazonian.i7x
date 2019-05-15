Version 1 of Amazonian by Stripes begins here.
[ Version 1.2 - Estosterogen pill added ]
[This monster was translated from the multiplayer game automatically by Nuku Valente, but may, most likely, have been written by someone else.]

"Adds Amazonian to Flexible Survival."

when play begins:
	add { "Amazonian" } to infections of hermaphrodite;
	add { "Amazonian" } to infections of humanoid;

noamazoniansex is a number that varies.

to say amazoniandesc:
	setmongender 5;
	say "     Before you is a tough, muscled woman with a no-nonsense expression on her beautiful face. She has a deep, bronze tan to her toned flesh. Her long, brown hair is tied back in a ponytail with a metal clasp, keeping it out of her eyes. This physically imposing woman wears a leather breastpiece with a fur ruff at her crotch. You notice a clear bulge down there, showing you just how self-sufficient this Amazonian woman is without a man.";
	say "     Raising her weapon, she glares at you[if Player is not female]. 'You are unneeded here, worthless male. You will be shown your place,' she growls[else if Player is herm]. 'Ahh, another warrior woman to test myself against. Come, prove your might and you may be my mate,' she says with a lustful grin[else if Player is female]. 'Come here, sweet lass. Let me show you that you don't need a worthless male to please you,' she says with a lustful grin[end if].";

to say losetoamazonian:
	choose row MonsterID from the Table of Random Critters;
	now noamazoniansex is 0;
	if wslevel is 3 and a random chance of 1 in 3 succeeds:
		if HP of Player > 0:
			say "     The amazonian woman grabs you roughly and slams you to the ground when you give up the fight early. 'What a useless, cowardly creature you are,' she growls with disdain. 'Why should I consent to [if Player is female]breeding such a feeble warrior[else]taking one such as you as a mate[end if] if you will not struggle to the end? You are naught but waste.' And with that, she presses her foot down onto your gut and starts to urinate. The hot stream splatters across your chest and face. Digging her heel in harder, you groan in discomfort, which allows her piss to leak into your mouth, forcing you to taste the acrid liquid.";
			say "     After her bladder is drained, she keeps you in place with her foot and strokes her throbbing erection. Already quite aroused by her mistreatment of her cowardly foe, it doesn't take long before she cums. Adding to the mess, you're covered in sticky splatters of her gooey semen. 'That is the only sample you'll get of my warrior seed. Now away with you,' she snarls, giving you a harsh kick to the side. You are forced to scramble away, wet and reeking of cum and urine.";
			decrease HP of Player by wdam entry;
		else:
			say "     Defeated by the powerful amazonian, you are unable to resist when she grabs you and presses you up against a wall. 'You fought bravely, little [if Player is female]girl[else]man[end if], but I am the greater warrior. And now, to claim my prize,' she says with a lustful grin. Baring your ass, she flips aside her loincloth to reveal her sixteen inch long cock and grind it between your cheeks. '[if Player is female]And now to prove that I am better than any man[else]And now I'll show you the only thing men are good for[end if].' And with that, she thrusts her thick rod into your [if Player is female]juicy pussy[else]tight asshole[end if].";
			say "     [if Player is female]Your pussy is spread open around the herm warrior's throbbing cock as she fucks you, pounding away at your increasingly wet hole as you can't help but respond to the vigorous fucking you're receiving[else]Your asshole is spread open around the herm warrior's throbbing cock as she fucks you, pounding away at your painfully stretched hole. As the vigorous fucking continues, the discomfort fades and the pleasure of getting pounded in the ass grows to replace it[end if]. She keeps you pressed against the broken wall as she drives her pulsing rod into you again and again. When she finally cums, she empties her hot seed inside you, [if Player is female]coating your womb in her virile sperm[else]filling your bowels with her virile sperm[end if].";
			say "     Once finished, she pulls out, but does not release you, instead grinding her semi-hard shaft messily against your rear. 'Mmm... I've found you to be a most enjoyable [if Player is female]mate[else]plaything[end if]. Perhaps I might keep you for my harem. Let me leave you with something to remind you to whom you belong,' she whispers softly as she licks along the edge of your ear. You feel a heat wash across your ass, your nose catching the acrid scent of urine. She's pissing on you, marking you as her property. You wriggle and squirm, but her grip is strong and you're too worn from earlier to break free. She chuckles as you try to resist, only growing more excited and you feel a surge in the flow of hot liquid. You even feel a splatter of it spray against your creamy, leaking hole, staking her claim again on it. When her bladder's drained, she releases you and drives you off, saying she looks forward to challenging you again soon.";
	else if HP of Player > 0:
		say "     Unwilling to continue to resist this powerful woman, you drop to your knees before her, intent on letting her have her way with you. She seems displeased that you've given up so easily and pushes you roughly to the ground with her heel. 'Why should I [if Player is female]breed with one such a you if you will not fight to the last[else]want one such as you as a mate if you will not fight to the last[end if]?' she growls. 'You are useless to me but as a means of amusement.'";
		say "     With that said, she grabs your head and pushes your face to her loincloth, forcing you to take in the heady scent of her arousal. Despite the short fight, it seems it's gotten her blood flowing and she needs some relief. Pushing back the furry cloth, she frees her sixteen inch cock and presses it to your face, forcing you to take it in your mouth. The scent of her pussy is there as well, but you are not allowed near it, instead forced to suck her off.";
		say "     She thrusts into your mouth rather brutally, cramming that massive cock of hers down your throat. It seems like hours go by before she is moaning above you. Her hand grips the top of your head in a painfully tight hold as she pull out all but the last inch. 'Swallow it all, my little pretty, or you'll never be big and strong. Big girls need to drink lots to get big muscles.'";
		say "     The flow of semen is almost enough to pour back out your nostrils before you even have a chance to swallow the first shot. Subsequent pulses of sperm also threaten to flow in too fast to swallow or spit out. Some overflow sprays out of your mouth, covering the ground, and this is immediately followed by a swift blow to the back of your head that leaves you seeing stars followed by blackness as you feel the bulbous head of Amazonian's cock pop out of your mouth and the last few spurts of seed spray onto your chest as you collapse.";
	else:
		say "     Beaten to the ground by the powerful amazonian's last blow, you are pinned down by her. 'You fought well, little [if Player is female]girl[else]man[end if], but you are mine now,' she says with a lustful grin. Pushing aside her loincloth, she frees her large, sixteen inch member and presses it to your [if Player is female]hot pussy[else]tight asshole[end if]. 'It's time for me to claim my prize[if Player is not female] and show you the only thing men are good for[end if],' she says, thrusting her thick rod into you.";
		say "     [if Player is female]Your cunt is spread open by her large shaft as she starts fucking you, pounding into your juicy hole with the intent of breeding another powerful amazon in you[else]Your asshole is spread open by her large shaft as she starts fucking you, pounding your tight anus to drain her balls into you like a sex slave for her needs[end if]. She keeps you pinned down with her strong body and drives her pulsing rod into you again and again, fucking you until she finally cums, emptying her hot seed inside you. Once she's done with you, she pulls out and gets up, dragging you to your feet and sending you on your way with a firm spank on your rear.[impregchance]";


to say beattheamazonian:
	say "     Having beaten the powerful woman, you look down at her. Beneath her loincloth you can see both her juicy cunt and her thick cock. It's clear she's gotten quite excited from the fight and is quite aroused in her defeat.";
	if noamazoniansex > 2:
		say "     [bold type]As with the others of her kind, you send her on her way with a firm swat on her rear to remind her of her defeat.[roman type]";
	if Player is male:
		say "     [bold type]Shall you claim your prize and fuck her?[roman type]";
	else:
		say "     [bold type]Shall you claim your prize and use that cock of hers as you'd please?[roman type]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	if Player consents:
		if Player is puremale:
			say "     Pinning the amazonian woman down, you pull aside her loincloth and press a pair of fingers into her juicy cunt. She moans and tries to struggle, claiming she needs no man, but her clear arousal and her eyes on your throbbing cock betray her desires for you to prove otherwise. Getting your pulsing rod lined up with her, you sink it into her hot pussy, making her moan loudly as you start fucking her. You pound away at the warrior woman, thrusting into her again and again. Despite her protests, she cums several times before you are done with her, clearly aroused at being fucked by a man who could beat her in combat.";
			say "     When you're done with her, you pull her up and grope her leaking, cum-filled pussy, reminding her that she was taken by a male. Despite her anger at this, it's clear that she's quite turned on by it as well, as if she's had something forbidden, taboo and therefore wonderfully arousing. You send her on her way with a firm swat on her rear as an added reminder of her defeat.";
		else if Player is male:
			say "     Pinning the amazonian woman down, you pull aside her loincloth and press a pair of fingers into her juicy cunt. She moans and pants, clearly aroused by another herm who could best her. She spreads her legs, offering her hot pussy to you as you thrust into her. She clutches you tightly as you fuck her, moaning that she wants you to cum inside her, to breed a strong girl inside her. In your lust and excitement, you are more than happy to do so, pounding her hard and fast until she's cum several times and you've drained your hot seed into her, claiming her womb with your seed. When you're done with her, you pull her to her feet, fingering her cum-slick pussy with a grin before swatting her ass as a reminder of her defeat.";
		else:
			say "     Pinning the amazonian woman down, you grab her cock and rub over it, intent on taking what you want from her. She moans softly as you stroke her cock to its full sixteen inches before climbing atop it. Her large, throbbing rod feels wonderful inside you as you start riding it, pushing it into your [if Player is female]juicy cunt[else]tight ass[end if] and bouncing atop it hard and fast. You ride the warrior woman's cock until she cums hard, pumping her hot load into you, claiming it for yourself with a moan of delight. When you're done with her, you pull her to her feet, squeeze her drained cock and swat her ass firmly as a reminder of her defeat.[impregchance]";
	else:
		say "     Having beaten the amazonian woman and having no more use for her, you pull her to her feet and send her on her way with a firm swat on her rear as a reminder that she was beaten by you.";
		increase noamazoniansex by 1;


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Length	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Name entry is "Amazonian"; [Name of your new Monster]
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]She[or]The Amazonian[or]The Amazon woman[or]The muscular herm[at random] [one of]strikes you with a powerful punch[or]connects with a snap kick[or]strikes you with a powerful blow[at random].";
	now defeated entry is "[beattheamazonian]";
	now victory entry is "[losetoamazonian]";
	now desc entry is "[amazoniandesc]";
	now face entry is "human in shape, though with beautifully shaped bone structure. Your hair is long and has a silken shimmer, falling all the way down to your ass";
	now body entry is "[if Player is herm]musclebound, but feminine, with a wasp-thin waist and wide, child-bearing hips. The muscles are somewhat bulkier than is typical for a woman though[else if Player is female]musclebound, but feminine, with a wasp-thin waist and wide, child-bearing hips[else if Player is male]muscular and strong, though with a somewhat narrow waist and slightly wider hips that give them an almost hourglass figure... although a very slight one[else]muscular and androgynous, a very athletic build that could be male or female... depending on the lighting[end if]. Your body bears the telltale definition of someone who works out continuously, who is extremely proud of their strength. Your arms are slender, but with a great deal of muscular definition under the taut skin. Your legs are muscular in an athletic way. Fine toned thighs and calves that lead into almost-dainty feet that never quite sit flat on the ground; always ready to move in some way";
	now skin entry is "bronze-toned";
	now tail entry is ""; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "[one of]uncircumcised[or]human[or]normal, flesh-toned[or]thin, mushroom-shaped[at random]";
	now face change entry is "you feel your head alter, bones reshaping as a warmth suffuses your skin. There is a sense of pressure and almost taffy-like stretching as your skull reforms into a delicate and feminine shape. It is once again human... but beautifully so in a way that is undeniable"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "you feel muscles and bones shifting as many changes occur. Many pounds of pure muscle begin stretching your skin almost to the point where you fear it will split! You feel more muscles threatening to split your skin wide open as it is drawn tight against the emerging strength on your bones. A burning and stretching sensation fills your legs and feet, muscles and tendons stretching as raw strength is quickly gained. Your Achilles tendon shortens suddenly, forcing you to walk on the balls of your feet. Interestingly, this is to your advantage as it keeps you ready to react to danger more quickly than if your feet sat flat on the ground"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "any hair or fur you may have immediately falls out as your skin begins to take on a heavily tanned tone. The only hair left is on top of your head and your eyebrows, even those look to be shaped in a vain and beautiful way";
	now ass change entry is "you feel your ass tensing up, the flesh tightening with a sudden expansion of muscle and a bit of fatty padding";
	now cock change entry is "you feel a burning sensation in your cock as it reforms into a perfectly normal human one... though uncircumcised";
	now str entry is 16;
	now dex entry is 16;
	now sta entry is 16;
	now per entry is 12;
	now int entry is 10;
	now cha entry is 12;
	now sex entry is "Both"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 66; [ How many HP has the monster got? She's not too hard- she doesn't want to win so much as not lose]
	now lev entry is 9; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 12; [Amount of Damage monster Does when attacking. Claws and massive strength]
	now area entry is "Museum"; [ Current options are 'Outside' and 'Mall'. Case sensitive. If you go down to the woods today, you're in for a big surprise]
	now Cock Count entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 16; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 3; [ Size of balls apparently ;) sneaky Nuku (big balls are underrated.)]
	now Nipple Count entry is 2; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 3; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Length entry is 16;
	now Cunt Tightness entry is 6;
	now libido entry is 45; [ Amount player Libido will go up if defeated ]
	now loot entry is "estosterogen pill";
	now lootchance entry is 12; [ Chance of loot dropping 0-100 ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]muscled[or]strong[or]toned[or]feminine[at random]";
	now type entry is "[one of]human[or]amazonian[as decreasingly likely outcomes]";
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



Section 3 - Estosterogen Pill

Table of Game Objects (continued)
name	desc	weight	object
"estosterogen pill"	"This bi-color pill has a pair of interconnected rings marked onto it, one with a cross and the other with a plus quartering them."	1	estosterogen pill

estosterogen pill is a grab object. It is temporary. It is a part of the player.

the usedesc of estosterogen pill is "[estosterogen pill use]";

before using a grab object (called x):
	if x is estosterogen pill:
		LineBreak;
		if "Male Preferred" is listed in feats of Player or "Female Preferred" is listed in feats of Player or "Single Sexed" is listed in feats of Player:
			say "Your feat will not allow this to work.";
			stop the action;
		continue the action;

to say estosterogen pill use:
	if Player is herm:		[HERM]
		increase Cock Length of Player by 2;
		increase Ball Size of Player by 1;
		increase Cunt Length of Player by 2;
		increase Cunt Tightness of Player by 1;
		say "You feel a rush of warmth to your loins as your dual-gendered genitals grow suddenly. ";
		say "Your [cock of Player] penis[esmn] swell[smv] beyond the point of simply growing erect, gaining in length to become [if Cock Count of Player is 1]a [end if][cock size desc of Player] cock[smn]. Your balls plump up a little as well with a surge of added virility. ";
		follow the cunt descr rule;
		say "Even as this is occurring, you watch your puss[if Cunt Count of Player > 1]ies['][else]y's[end if] lips puff up as your cunt enlarges and deepens, becoming [descr]. ";
	else if Player is female:				[FEMALE]
		now Cock Count of Player is 1;
		now Ball Size of Player is 6;
		now Cock Length of Player is 4;
		increase Cunt Length of Player by 2;
		increase Cunt Tightness of Player by 1;
		follow the cunt descr rule;
		say "You feel an aching warmth rush to your loins. ";
		say "You watch as your puss[if Cunt Count of Player > 1]ies['][else]y's[end if] lips puff up as your cunt enlarges and deepens, becoming [descr] with rapid growth. ";
		say "As this is occurring, a twinge centered at your clit increases rapidly. With a sudden surge of growth, your love button enlarges into a phallic growth, soon becoming separate from the cunt from which it spawned to become a [cock size desc of Player] [cock of Player] cock with its own set of balls[if cockname of Player is listed in infections of internallist] forming inside you[end if]. ";
	else if Player is male:				[MALE]
		increase Cock Length of Player by 2;
		increase Ball Size of Player by 1;
		now Cunt Count of Player is 1;
		now Cunt Length of Player is 6;
		now Cunt Tightness of Player is 4;
		say "You feel an aching warmth rush to your loins. ";
		say "Your [cock of Player] penis[esmn] swell[smv] beyond the point of simply growing erect, gaining in length to become [if Cock Count of Player is 1]a [end if][cock size desc of Player] cock[smn]. Your balls plump up a little as well with a surge of added virility. ";
		say "Even as this is occurring, you feel your bare groin clench as internal changes begin. There comes a pulling sensation as a wet passage opens and flesh folds form around it. Within moments, you have a wet pussy and needy little cunt between your legs as well. ";
	else:								[NEUTER]
		now Cock Count of Player is 1;
		now Ball Size of Player is 6;
		now Cock Length of Player is 4;
		now Cunt Count of Player is 1;
		now Cunt Length of Player is 6;
		now Cunt Tightness of Player is 4;
		say "You feel an aching warmth rush to your loins. ";
		say "With your body in shock, you feel your bare groin clench as internal changes begin. Soon you feel pushing and pulling sensations there as both a wet passage opens and a pillar of flesh rises. Soon enough, you've grown a [cock size desc of Player] [cock of Player] cock and a [cunt size desc of Player] cunt as your gender suddenly reverses from neither to both male and female in one. ";
	if "Flat Chested" is not listed in feats of Player:
		if Nipple Count of Player is 0:
			now Nipple Count of Player is 2;
			now Breast Size of Player is 2;
			say "With a feeling of tightness at your chest, you see a pair of breasts form on your chest even as new nipples pop out to cap them, concluding your sudden gender shift.";
		else if Breast Size of Player is 0:
			now Breast Size of Player is 2;
			say "With a feeling of tightness at your chest, you see a pair of breasts form on your chest, concluding your sudden gender shift.";
		else:
			increase Breast Size of Player by 1;
			if Breast Size of Player > 10, increase Breast Size of Player by 1;
			if Breast Size of Player > 26, now Breast Size of Player is 26;
			follow the breast descr rule;
			say "With a feeling of tightness and a flush of warmth at your chest, you see your breasts inflating, giving you a set of [descr] tits.";


[
when play ends:
	if bodyname of Player is "Amazonian":
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

Amazonian ends here.
