Version 3 of Rabbit Pack by Guest Writers begins here.
[Version 3.1 - Updated to extended heat table - Stripes]
[- Originally Authored By: Lago Moro -]

"Adds a Rabbit Pack to Flexible Survival's Wandering Monsters table."
[Description text for this Extension.]

Section 1 - Creature Responses

when play begins:
	add { "Rabbit" } to infections of girl;
	add { "Rabbit" } to infections of guy;
	add { "Rabbit" } to infections of furry;

to say rabpackdesc:
	setmongender 19; [creatures are mixed/variable]
	choose row MonsterID from the Table of Random Critters;
	say "A little humanoid rabbit appears in front of you! Less than three feet tall and completely naked, it looks like a young human, except for the ears and the short coat of fur covering [one of]his body. He[or]her body. She[at random] is smelling something from you, and you back away quickly.";
	if "One Pair" is listed in feats of Player:
		now area entry is "Nowhere"; [removes from random intercounters and infection]
		now non-infectious entry is true;
		say "However, something in your scent sends the critter away from you. (They won't attack you if you have the One Pair feat.)[combat abort]";
		now fightoutcome is 19;
	else if "Just One" is listed in feats of Player:
		now area entry is "Nowhere"; [removes from random intercounters and infection]
		now non-infectious entry is true;
		say "However, something in your scent sends the critter away from you. (They won't attack you if you have the Just One feat.)[combat abort]";
		now fightoutcome is 19;
	else:
		say "However, the creature is not alone. In an instant, you are surrounded by about ten rabbit-like creatures, some females, other males, all wanting YOU!";

to say rabpackvictory:
	if fightstatus is 3, now fightstatus is 2;
	if bodyname of Player is "Rabbit":
		say "The rabbit creatures take all of you into a nearby abandoned building. They... no, it has plans for you, and it doesn't want unwanted guests.[line break]After laying you to the ground, they step back, sitting or crouching around you. Instinctively, you group together all of your copies, for how your injures can afford. One of them slowly creeps closer, making a noise, an attempt to tranquilize you. [one of]He[or]She[at random] hugs you, kissing tenderly your forehead until you calm down. The other part soon join in...";
		WaitLineBreak;
		say "It's so slow... not lazy or sluggish, but constantly building up your pleasure, a tiny bit at a time. Couples and groups changes constantly, without a pattern, and you weakly realize that a few of your own copies are making out with each other. Even your thoughts are interweaving with... well... hir, and you find your consciousness passing from male to female in a pinkish blur... either by you or to you, cocks are [one of]jerked[or]sucked[or]inserted[at random], breasts [one of]massaged[or]milked[at random], asses [one of]groped[or]prodded[at random], cunts [one of]licked[or]fingered[or]filled[at random]... every so often a [one of]sweet[or]warm[or]lovely[at random] kiss...";
		say "After at least hours, it finally ends. After a little rest, they escort you back to where they ambushed you, worn-out but satisfied.[impregchance]";
		decrease Libido of Player by 50;
	else:
		say "The rabbit creatures lift you in unison and transport you into a nearby abandoned building, before any unwanted guest shows up.[line break]They lay you gently on the ground and admire your body, obviously pleased by what they got; they crawl on you, caressing, licking gently...[line break][rabpacka][rabpackb][rabpackc]";
		say "Your body can't resist their attentions, and you orgasm, matting a few of them. This doesn't stop them, as they keeps stimulating you, themselves, and each other, indifferently, no matter how spent any of you are...[line break]When it finally ends, those who can still stand guide the others somewhere else. You curl on the ground and fall asleep, trying to recover.";

to say rabpacka:
	if Breast Size of Player > 6:
		say "They immediately eye your generous bosom; two of them, one for side, kneel down and begin sucking and fondling your [Breast Size of Player] breasts.";
	else:
		say "You feel a weight on your chest as one of them sits on it, smiling happily at you. [one of]She then slides closer, putting her pussy right in front of you. You comply, licking it while she sighs and moans[or]He leans closer and kisses you lovingly, while you can feel a small pressure as his cock slides out on is own, a little spot of pre already matting your skin[at random].";

to say rabpackb:
	if Player is male:
		if Cock Length of Player > 10:
			say "Meanwhile, you feel someone grabbing your cock and pressing it against its body. It must be a [one of]he, as you can feel his own penis and balls being rubbed against your member[or]she, since you feel two soft breasts being pressed against it[at random]. Sure it feels good...";
		else:
			say "Meanwhile, you feel someone grabbing your cock and slowly jerking it while [one of]licking across its length[or]sucking its tip[or]massaging your balls[at random]. Sure it feels good...";

to say rabpackc:
	if Player is female:
		if Cunt Tightness of Player > 7:
			say "At the same time you feel at least a pair of tongues licking your feminine folds. You can't see what exactly is going on, but the increasing moistness of your groin is a sure indication...";
		else:
			say "At the same time you feel someone gently licking your feminine folds. It's not invasive, but constant and agonizingly slow, just like everything else they are doing to you...";


to say rabpackbeaten:
	if fightstatus is 3, now fightstatus is 1;
	say "You finally manage to incapacitate most of them. You go away while those still conscious are dragging their comrades to safety.";

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Length	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Name entry is "Rabbit"; [Name of your new Monster]
	now enemy title entry is "Rabbit Pack";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]They pounce on you all at the same time![or]One of them crawls on your back and hits you in the head. More than once.[or]You lose your balance and fall on the ground! They try to pin you down![or]One of them manages to flank you and attack by surprise.[at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "[rabpackbeaten]"; [ Text or say command used when Monster is defeated.]
	now victory entry is "[rabpackvictory]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "[rabpackdesc]"; [ Description of the creature when you encounter it.]
	now face entry is "that of a rabit, with distinctive ears sprouting from the top of your head and flopping downwards"; [ Face description, format as "Your face is (your text)."]
	now body entry is "short but agile"; [ Body Description, format as "Your Body is (your text)"]
	now skin entry is "short fur covering almost every inch of your body"; [ skin Description, format as "You have (your text) skin"]
	now tail entry is "You have a [one of]short[or]fluffy[or]twitchy[at random] rabbit tail."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "human-like"; [ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "floppy bunny ears sprout from the top of your head and hang on the sides of your face"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "you feel your head spin and lose consciousness. When you wake up, you open your eyes... your multiple pair of eyes. To your horror, you see that you have been split into many smaller copies of your previous form! Luckily, you retained your personality and mental sanity... but for how long?"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "a little coating of fur covers you from head to toe. Feels almost like velvet"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "A little tail sprouts, waggling"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it becomes humanlike, covered with foreskin. A pair of soft balls descends as well"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 6;
	now dex entry is 15;
	now sta entry is 10;
	now per entry is 18;
	now int entry is 12;
	now cha entry is 12;
	now sex entry is "Both"; 					[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 80;
	now lev entry is 4; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 4; [ Amount of Damage monster Does when attacking.]
	now area entry is "High"; [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 5; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 4; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 3; [ Size of balls apparently ;) sneaky Nuku]
	now Nipple Count entry is 10; [ Number of Breasts infection will give you. ]
	now Breast Size entry is 3; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 5; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Length entry is 4; [ Length of female sex infection will attempt to give you. ]
	now Cunt Tightness entry is 3; [ Width of female sex infection will try and give you ]
	now libido entry is 10; [ Amount player Libido will go up if defeated ]
	now loot entry is "lucky horseshoe";
	now lootchance entry is 0;
	now scale entry is 1; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]youthful[or]slender[or]cute[at random]";
	now type entry is "[one of]bunny[or]rabbit[at random]";
	now magic entry is false;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false; [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Table of New Infection Parts (continued)
Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Arms Change	Arms Description	Arms Skin Adjective	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Ass Change	Ass Description	Ass Skin Adjective	Ass Width	Tail Change	Tail Description	tail skin adjective	Asshole Length	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Length	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Name entry is ""; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight]
	now Body Definition entry is 5; [scale of 1-9 for body definition]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective: skinny/slender/lithe/average/fit/muscled/pudgy/husky/jacked]
	now Androginity entry is 5; [1-9 scale of male to female]
	[Gender Adjective is generated out of androginity]
	now Head Change entry is ""; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [head description of Player] with [eye color of Player], [eye type of Player] eyes and an overall [gender appearance of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Adornments entry is ""; [partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...)]
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
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Body Adjective of Player], [Gender Adjective of Player] and your torso is [torso description of Player]."]
	now Torso Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [torso adornments of Player]."]
	now Torso Skin Adjective entry is ""; [one word descriptive adjective (furry/scaled/...)]
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
	now Back Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...)]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is ""; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is ""; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...)]
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...)]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [ass description of Player]."]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...)]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your tail [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Tail Change entry]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...)]
	now Asshole Length entry is 7; [inches deep for anal fucking;]
	[Asshole Length Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Asshole Tightness entry is 3;
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "tiny, small, tight, wide, gaping"]
	now Asshole Color entry is ""; [one word color descriptor]
	now Cock Count entry is 0;
	now Cock Girth entry is 0;
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 0; [length in inches]
	now Cock Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cock Change entry is ""; [partial sentence that fits in: "Your groin [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is ""; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [cock adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock description of Player]."]
	now Cock Color entry is ""; [one word color descriptor]
	now Ball Count entry is 0;
	now Ball Size entry is 0; [size of balls 1-5: "acorn-sized", "coin-sized", "egg-sized" "goose-egg sized", "ostrich-egg sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is ""; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [ball description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Length entry is 0;
	now Cunt Tightness entry is 0;
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your groin [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt Change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that is [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [Size of Clit (1-5); very small/small/average/large/very large]


when play ends:
	if bodyname is "Rabbit":
		if humanity of Player < 10:
			say "Your memories dissolves as the infection makes you a feral. A pack of mutants, guided by a single consciousness, always trying to fight for survival or to quench your thirst of sex.";
		else:
			say "You need some psychiatric help, but you finally manage to adapt to your strange condition. You then manage to find a work in a [one of]restaurant[or]hotel[or]supermarket[or]theme park[at random]. A little team working together in synchronicity for the price of one-and-a-half normal worker is convenient, after all...";

[ +++++ ]

Table of infection heat (continued)
infect name	heat cycle	heat duration	trigger text	description text	heat start	heat end	inheat	fheat (truth state)	mpregheat (truth state)	mpregtrigger
--	--	--	--	--	--	--	--	--	--	--

When Play begins:
	Choose a blank row from Table of infection heat;
	now infect Name entry is "Rabbit"; [ This should be exactly the same as your monster name in the main table]
	now heat cycle entry is 400; [ This is the number of days a heat "cycle" lasts, usually 7 ]
	now heat duration entry is 400; [ This is how many days of the cycle you are actually in heat. default is 1, set it to the same as cycle for permanently in heat.]
	now trigger text entry is "[rabpacktrigger]"; [ This is the text that is written to the screen when the player comes into heat]
	now inheat entry is "[rabpackinheat]"; [This final say block is triggered every 3 hours the player is in heat. you can use defaultheat or write your own. defaultheat raises libido value by 5 every 3 hours. ]
	now fheat entry is true;
	now mpregheat entry is true;
	now mpregtrigger entry is "[rabpacktrigger]";

to say rabpackinheat:
	if bodyname of Player is "Rabbit" and ( Cock Count of Player + Cunt Count of Player > 1 ):
		say "[one of]Repeat: there is only a me. A single me. A single consciousness. There is no 'we', only 'I'. I can't go insane now.[or]Maybe is the infection, but you find yourself calling a male body a 'cock', and a female one a 'pussy', or similar... what the hell...[or]Even if your individual bodies are weaker, you can coordinate them with ease. And two pair of eyes are better than just one, for example.[or]You realize one of your copies is acting affectionately towards another one, on its own. You can't help it: it's like a tic.[or]How was it? A female copy for every cunt and a male one for every penis? So what would happen if you were to lose both?[or]Note to self: talking and generally do things in perfect synchrony tends to unnerve people.[or]It is a bit odd to define the whole bunch of your copies [']your body[']. You still want to cling to how much sanity you have left, though.[at random]";
		increase Libido of Player by 1;
		decrease humanity of Player by 1;
	else:
		now turns in heat is 0;
		now animal heat is False;
		now inheat is False;

to say rabpacktrigger:
	if bodyname of Player is "Rabbit" and ( Cock Count of Player + Cunt Count of Player > 1 ):
		say "This is probably the strangest situation you have ever been into. Instinctively you know what exactly is going on, but in practice you are scared and confused. Let's see... you can have female or male 'bodies', but not herms... you have a 'body' for every cock or pussy you had... and what else...";
	else:
		now turns in heat is 0;
		now animal heat is False;
		now inheat is False;

[ +++++ ]

Rabbit Pack ends here.
