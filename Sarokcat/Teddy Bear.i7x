Version 3 of Teddy Bear by Sarokcat begins here.
[Version 3 - Player victory and improved endings]

"Adds a giant teddy bear to Flexible Survival's Wandering Monsters table"

teddyvored is a number that varies.
noteddybearsex is a number that varies.

Section 1 - Creature Responses

to say teddy bear attack:
	choose row MonsterID from the Table of Random Critters;
	if scalevalue of Player <= 3 and a random chance of 2 in 5 succeeds:
		if HP of Player > 0:
			say "     You are pulled into a soft hug by the stuffed bear";
		else:
			say "     You are grabbed by the fluffy, stuffed bear in a tight hug, squeezing the air out of you";
		if teddyvored is even:
			say ". The pink bear smiles down at you, the smile growing wider and wider as it continues. As the wide open smile gets closer, you start to struggle, but the bear keeps a firm grip on you. With a happy giggle, the living plush bear lifts you up, stuffing your head into its open maw. The soft, fabric mouth slides over you smoothly as you're pulled into her.";
			say "     The teddy bear's smooth mouth and velvety tongue slide over your face as you're pulled in further. The sensation is strangely pleasant, erotic even. You moan softly as her muzzle slides over your shoulders and down your [bodytype of Player] body as you're lifted up. Her round, padded paws rub at your [if Player is herm]cock[smn] and cunt[sfn][else if Player is male]cock[smn][else if Player is female]cunt[sfn][else]bare groin[end if], further adding to your pleasure and distracting you from the need to struggle. You slip ever inwards, moving down her velvety throat and down into her warm, padded belly.";
			say "     Her smooth, fabric lining slides smoothly across your flesh[if Player is male], pressing against your engorging shaft[else if Player is female], rubbing against your wet pussy[end if] as you grow aroused despite (or perhaps even because of) your current predicament. Her tummy is soft and squeezes down around you, making you feel sleepy as it closes down around you. As you feel her rub her paws over her stuffed belly, you curl up in her padded stomach as a warm, fuzzy feeling fills you and you drift off.";
		else:
			say ". As has happened before, the pink bear holding you opens its muzzle in a wide, wide grin, pulling you towards it. You try to squirm from its grip, but it's got too strong a hold on you. Your head gets stuffed into its open maw. The soft, fabric mouth slides over you smoothly as you're pulled into her. Her fabric tongue brushes across your face and neck as you're steadily lifted further up and into its mouth.";
			say "     You feel her thump to the ground on her padded ass after raising you vertically, your momentum and gravity sliding your shoulders into her muzzle and down into her throat. Soft, velvety gulping feeds your [bodytype of Player] body into her mouth. Your groin is slathered by her soft tongue. The feel of it across your [if Player is herm]cock[smn] and cunt[sfn][else if Player is male]cock[smn][else if Player is female]cunt[sfn][else]bare groin[end if] causes you to moan and grow aroused despite yourself[if Player is not neuter]. She takes her time licking you, savoring playing with you until she can get you to cum. You and your cum are[else]. After some playful licking, you are[end if] swallowed down, destined for her warm belly. You curl up there, feeling sleepy inside the bear's padded tummy, eventually drifting off into childlike slumber.";
		teddybearvored;
	else if Player is male:
		say "     The giant stuffed bear lets out a happy cry as you collapse, before quickly climbing on top of you. You soon see that someone has stitched a large opening in the crotch, right where a cunt should be. Before you can think about it too much, she quickly stuffs your [Cock of Player] cock into her waiting opening. You cry out as her velvety insides caress you, her body moving and twisting on top of you as her insides massage you like a velvet glove, ripping one of your most intense orgasms ever out of you. Soon your mind begins to cloud over with pleasure as she tirelessly rides you to orgasm after orgasm, hardly pausing at all as she runs her soft plush hands up and down your body, her ursine muzzle planting soft kisses over your face the entire time. Eventually your body can't take anymore, and you pass out in a haze of pleasure. Waking up, there is no sign of your plush tormentor, realizing she has probably gone off to pleasure someone else, you quickly gather up your belongings and leave while you can.";
	else:
		say "     The giant stuffed bear lets out a happy cry as you collapse helplessly. Its hands wander your body for a minute, stripping you naked before it plops down next to you and begins to rub its soft plush body on you. You quickly realize it is actually a female bear, or at least someone has made an appropriate opening, as she rubs herself on your thighs. She then lowers her bearlike muzzle to your female opening and begins to lick and rub at you with her long tongue and furred muzzle, causing you to moan in pleasure. Her plush fur and soft whiskers tickle your thighs as her flexible tongue massages your insides, causing you to clench and rub your legs along her soft sides as the pleasure builds, until finally your orgasm shoots through you, causing you to cry out as you cover her plush face in your female juices. Seeming somewhat smug the giant teddy bear lifts her damp muzzle up, licking it clean as she moves up beside you, gathering you into her soft fluffy arms as you drift off into an exhausted slumber. Waking up later there is no sign of the big fluffy bear, making you feel vaguely sad and lonely as you gather up your belongings and leave.";

To say teddy bear loss:
	if noteddybearsex > 2:
		say "     The strange plush animal whimpers as your last blow knocks it over. It lands with a soft, padded thump onto its back and waves its limbs in the air, having difficulty getting back up. As you've done in the past with them, you ignore her struggles and leave her there. With her temporarily indisposed, you're free to return to what you were doing before she got in your way.";
	else if Player is not neuter:
		say "     The strange plush animal whimpers as your last blow knocks it over. It lands with a soft, padded thump onto its back and waves its limbs in the air, having difficulty getting back up. You consider walking away, but spot a stitched opening at the bear's crotch. This large opening is right where a cunt should be and it gets you wondering if you might have a little fun with her[if Libido of Player > 50] and perhaps burn off a little of your excess libido by using the toy bear[end if].";
		if Player is male:
			say "     Would you like to [link]fuck the stuffed bear (1)[as]1[end link], [link]go for a 69 (2)[as]2[end link] or [link]leave her be (0)[as]0[end link]?";
			now calcnumber is -1;
			while calcnumber < 0 or calcnumber > 2:
				say "Choice? (0-2)>[run paragraph on]";
				get a number;
			if calcnumber is 1:
				say "[teddybearsex]";
			else if calcnumber is 2:
				say "[teddybear69]";
			else if calcnumber is 0:
				say "     Deciding against taking advantage of the poor bear, you leave her where she is. You return to what you were doing before she got in your way.";
				increase noteddybearsex by 1;
		else:
			say "     Would you like to go for a 69 (y) or [link]leave her be (n)[as]n[end link]?";
			if Player consents:
				say "[teddybear69]";
			else:
				say "     Deciding against taking advantage of the poor bear, you leave her where she is. You return to what you were doing before she got in your way.";
				increase noteddybearsex by 1;
	else:
		say "     The strange plush animal whimpers as your last blow knocks it over. It lands with a soft, padded thump onto its back and waves its limbs in the air, having difficulty getting back up. With her temporarily indisposed, you're free to return to what you were doing before she got in your way.";

[
	say "The strange plush animal whimpers in defeat as its stuffing leaks out all over the place. It hurriedly gathers some of its stuffing up before waddling away, shooting scared glances back over its shoulder at you, making you feel vaguely guilty for beating up on a poor stuffed animal.";
]

to say teddybearsex:
	now noteddybearsex is 0;
	say "     Moving in on the fallen bear, you pin her down and press your [bodytype of Player] body down onto her plush form. She squirms a little at first, but giggles and settles down as you get your [Cock of Player] cock lined up with her strategically placed hole. With a gentle push, you slide your [cock size desc of Player] penis into that velvety opening. You can feel those fabric walls squeeze and caress over you each time you thrust into the pink, padded bear.";
	say "     As you continue fucking the living plush, you release her arms and wrap them around her soft body, cuddling her like the big, sexy stuffy she is. She puts her arms around you in return, hugging you back and pulling you against her with every thrust you make. Her ursine muzzle gives you soft kisses all over your face as you fuck her until you cry out in orgasm, shooting your [Cum Load Size of Player] load into her plush pussy and soaking her polyfill insides with your semen.";
	say "     Spent and happy, you rest atop her for a while as she continues to hug you, content to be your plush pillow for a while. Eventually you realize that you should get moving again and reluctantly pull free of her padded arms. She gives a little sigh of disappointment, but contents herself with rubbing her tummy, feeling the warm mess being absorbed into her plush padding.";


to say teddybear69:
	now noteddybearsex is 0;
	say "     Moving in on the fallen bear, you bring your crotch to her face and press your [bodytype of Player] body down onto her plush form. She squirms a little at first, but giggles and settles down as she notices your [if Player is male][Cock of Player] cock[else][cunt size desc of Player] pussy[end if] before her ursine muzzle. After a few light licks with her fabric tongue, she sets her muzzle to work [if Player is male]sucking you off[else]eating you out[end if].";
	say "     As she works her muzzle and tongue over your genitals, you take a moment to examine hers. At her crotch, her stitching opens a hole in her funfur skin that connects to a smooth, velvety passage. Exploring with a finger, you find it soft and very pleasant to the touch, as well as warm and surprisingly animated. It squeezed around your finger much like a real pussy would. Pushing a second digit into her, you fingerfuck her strategically placed hole, much to her obvious enjoyment. Amused and intrigued, you lick along the stitching and into the velvet hole, exciting her further.";
	say "     Playing with her hot tunnel with your tongue and fingers gets her really worked up and she runs her tongue all over your loins in response. With her soft whiskers tickling your thighs, her padded muzzle [if Player is male]squeezes and sucks on your cock until you're pushed to orgasm, shooting your [Cum Load Size of Player] load down her throat to fill her plush tummy[else]presses against your wet folds and her tongue laps into your cunt until you're pushed to orgasm, covering her plush face in your feminine juices[end if].";
	say "     After your powerful orgasm, you're left feeling fuzzy-headed and content. As you're recovering from your orgasm, you feel the bear's plush paws move to your feet and guide them to her muzzle. She gives them a few licks before opening her muzzle and slipping them into her maw. Shall you let her continue?";
	if Player consents:
		say "     Feeling too happy to take notice of what's going on, you are content to enjoy the licking and the soft feel of the bear's muzzle around your feet and ankles. As she continues to sit up, the pleasant sensation moves up to envelop more of your legs. When she reaches your hips, you start to wonder what's going on, but those thoughts are pushed aside when her tongue finds its way to your crotch again. The feel of it across your [if Player is herm]cock[smn] and cunt[sfn][else if Player is male]cock[smn][else if Player is female]cunt[sfn][end if] causes you to moan and grow aroused once again.";
		say "     While it takes a little longer to get you off this time, it is no less pleasant an experience - perhaps even better from the added sensation of her soft muzzle and throat squeezing and rubbing along your lower body. As she gets you to cum for the second time, she opens her mouth wider and raises you up. She lowers you down into her plush maw, swallowing down your [bodytype of Player] body even as she's swallowing down your sexual fluids. It is only as she ursine muzzle is closing around your head before your very eyes that you realize what's happening all too late. But you're also too fuzzy-headed and awash in pleasure to even think of resisting. You curl up happily in the warm embrace of the plush bear's belly, drifting off into a peaceful sleep.";
		teddybearvored;
	else:
		say "     Realizing what's about to happen, you shake the fluff from your mind and pull yourself up. The plush bear gives a soft sigh of disappointment and flops back onto the ground. Her disappointment doesn't last long though, as she contents herself with [if Player is male]rubbing her cum-filled tummy[else]licking her cum-damp muzzle[end if] while your fluids are absorbed into her polyfill padding. Having dealt with the strange bear, you're now free to continue on your way.";
		now Libido of Player is ( 2 * Libido of Player ) / 3;

to teddybearvored:
	choose row MonsterID from the Table of Random Critters;
	now fightoutcome is 23;
	increase teddyvored by 1;
	SanLoss 6;
	if "Strong Psyche" is listed in feats of Player, increase humanity of Player by a random number between 0 and 2;
	if "Weak Psyche" is listed in feats of Player, decrease humanity of Player by a random number between 0 and 2;
	WaitLineBreak;
	if humanity of Player >= 10 or inasituation is true:
		say "     When you come to, you are [one of]behind the counter of one of the carnival stands[or]resting in an out of the way corner[or]resting against a waste bin[or]behind one of the prize booths[at random] with little tufts of polyfill still clinging to you. As you try to brush them off, these little bits of fluff sink into you.";
		infect;  [Added infection from being vored]
	else:
		say "     As you slumber inside that soft belly, you dream of teddy bears and warm hugs. These dreams go on and on, filling your mind with their fuzzy thoughts of plush happiness until that is all that remains. You come to shortly after being let out of the plush bear, rising up and giving her a soft, padded hug with your teddy bear body. You, like her, are a living teddy bear creature, both in body and in mind. After some playful, kinky cuddling together, you skip down the midway, padded paw in padded paw.";
		now teddyvored is -100;
		now XP of Player is 0;  [prevents accidental level up]
		if the player is not lonely, now XP of companion of Player is 0;
		now non-infectious entry is true;  [prevents regular teddy bear infection from occurring]
		now TailName of Player is "Teddy Bear";
		now FaceName of Player is "Teddy Bear";
		now SkinName of Player is "Teddy Bear";
		now BodyName of Player is "Teddy Bear";
		now CockName of Player is "Teddy Bear";
		now tail of Player is tail entry;
		now Face of Player is face entry;
		now Skin of Player is skin entry;
		now Body of Player is body entry;
		now Cock of Player is cock entry;
		attributeinfect;
		if Libido of Player < 30, now Libido of Player is 30;
		now humanity of Player is 0;
		now battleground is "void";
		now combat abort is 1;
		WaitLineBreak;
		end the story saying "Having been consumed by the teddy bear, you've been turned into another of the plush bears roaming the fairgrounds.";
		stop the action;


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
	add "Teddy Bear" to infections of ToyList;
	add "Teddy Bear" to infections of FurryList;
	add "Teddy Bear" to infections of NonOrganicList;
	add "Teddy Bear" to infections of FemaleList;
	add "Teddy Bear" to infections of BipedalList;
	add "Teddy Bear" to infections of TailList;
	now Name entry is "Teddy Bear";
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]The bear windmills its arms and crashes into you, knocking you down.[or]The strange plush bear takes a moment out of combat to give you a big fuzzy hug, causing you to feel vaguely unsettled.[or]Its large plush hands come down hard on your head, making you wonder through the ringing in your ears just what the heck it's stuffed with, lead?[or]Jumping up as it charges, the big fluffy bear knocks you flat as it crashes to the ground.[or]Singing along with the fair music, the fluffy bear prances around seemingly at random, until it ends up ramming into you.[or]Charging forward with its oversized head lowered, the giant bear rams right into you, knocking you both down.[at random]";
	now defeated entry is "[teddy bear loss]";
	now victory entry is "[teddy bear attack]";
	now desc entry is "[mongendernum 4]     A giant teddy bear, covered in soft pink fur toddles down the midway towards you, moving surprisingly fast on its round plush legs. [one of]'Oh good, I was looking for someone to play with!' [or]'Don't you want a prize?' [or]'Take me home with you!' [or]'Don't you want a cuddle?' [or]'You would look great if you were fluffy like me!' [or]'You will be my carnival prize!' [at random]she says as she charges towards you, her large roundish arms windmilling dangerously.";
	now face entry is "large teddy bear like face, with a short muzzle and rosy cheeks. Your big black eyes seem comical and cute, and your mouth is pulled upwards by your muzzle, so it seems as if you are always smiling goofily"; [ Face description, format as "Your face is (your text)."]
	now body entry is "rounded in the middle with somewhat round arms and legs, and plump, plush, paw-like hands, your body almost feels like it is full of some sort of strange stuffing that moves around as you walk, poking yourself you can see your clawed paw sink deeply into your stuffed side with almost no pain whatsoever"; [ Body Description, format as "Your Body is (your text)"]
	now skin entry is "[one of]brown furred[or]softly furred[or]fake furred[or]strangely plush[at random]"; [ skin Description, format as "You have (your text) skin"]
	now tail entry is "You have a short, plush little bear tail attached to your rear, and while it doesn't seem to be made of flesh and blood, you can still feel it as if it were."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "[one of]plush[or]teddy bear[at random]"; [ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "your face balloons outwards as your head seems to swell up, your cheeks stretching out and a cute little muzzle forming as your face becomes that of a happy giant teddy bear"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "it shifts and plumps outwards, your hands and feet becoming fatter and rounder, making it hard to balance as you seem to become much more like a children's toy"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "your flesh tingles and sprouts a soft thick brown pelt of plush fake fur"; ["Your skin feels funny as (your text)." ]
	now ass change entry is "it plumps up, making you feel like you are sitting on some sort of padding, looking behind you, find your new fabric like ass has also sprouted a short little bear tail, which you find yourself wiggling a few times, surprised at how well the bit of fabric responds"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it shifts and seems to fill with some sort of strange stuffing, making it both more sensitive and flexible"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 14;
	now dex entry is 16;
	now sta entry is 20;
	now per entry is 15;
	now int entry is 8;
	now cha entry is 18;
	now sex entry is "Female";  [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 50;
	now lev entry is 5;  [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 7;  [ Amount of Damage monster Does when attacking. ]
	now area entry is "Fair";  [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 0;  [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 0;  [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 0;  [ Size of balls ]
	now Nipple Count entry is 0;  [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 2;  [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0;  [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1;  [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 14;
	now Cunt Tightness entry is 8;
	now libido entry is 30;  [ Amount player Libido will go up if defeated ]
	now loot entry is "lucky horseshoe";  [ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 0;  [ Chance of loot dropping 0-100 ]
	now scale entry is 3;  [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]plush[or]stuffed[or]padded[at random]";
	now type entry is "[one of]toy-like[or]ursine[at random]";  [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;  [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;  [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "bearhugger";  [ Row used to designate any special combat features, "default" for standard combat. ]
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


when play ends:
	if BodyName of Player is "Teddy Bear":
		if humanity of Player < 10:
			if teddyvored is -100:
				say "     You stay together in the state fair with your plushie friend, feeling very happy together. You snuggle and play together often, [if Player is male]fucking her with your plush cock[else if Player is female]licking each other with your velvety tongues[else]licking her with your velvety tongue[end if] and roaming the midway in search of others to cuddle with. From time to time you stumble across other teddy bears like yourselves and have a grand old time together, but other times you're even luckier and find a human. Having been shown how to do it by your pink friend, you really enjoy swallowing them down to give them an extra-special belly hug, helping them to become more happy teddy bears to wander around the fair. You always have a particularly good time meeting up with them again as bears and enjoying soft, plush sex with those you've changed in this manner.";
			else if the player is pure:
				say "     Surrendering to your new instincts, you lie low when the rescue comes. Seeing an opportunity, you stow away in the back of one of the trucks, acting like nothing more than a large stuffed animal until you can eventually sneak away when no one is looking. You wander around several cities, appearing to be a lost toy or placing yourself in donation bins until someone takes you home and you can convert them into another plush animal like yourself. Eventually someone tracks you down on purpose by following the rumors. Pretending to still be a normal stuffed toy, you listen to him explain his plan before deciding to go along with it.";
				say "     It turns out he is the owner of an [']adult['] shop that rents out several rather kinky dolls and plushies to people to use, you and he proceed into a lucrative partnership where he rents you out to an unsuspecting buyer, and when the time is right you convert the buyer into a new animal yourself, and you both return to the shop to be rented out again. It takes some planning but eventually you even manage to convert your shop partner as well, and soon you both have a large collection of other adult animal toys ready for any occasion.";
			else:
				say "     Surrendering to your new instincts, you wander around the city looking for playmates. Many of the mutant creatures roaming the fallen metropolis are happy to use your plush body as a means of sexual release. Their sexual fluids soak into your soft padding, helping to sustain you. After finishing with you, they wander off and you're left looking for a new playmate[if Player is neuter] time and again[end if].";
				if Player is herm:
					say "     You are eventually able to capture an injured soldier separated from his unit. Dragging him off into the ruins, you have sex with the young man again and again. Over the next few days, he becomes a plush hybrid herm like yourself and loses his mind to the infection. Together with your new friend, you fuck one another happily when not searching for others to mate, breed and transform.";
				else if Player is female:
					say "     You are eventually found by a giant puppy creature. Despite your large size, he's much bigger than you and able to drag you around in his muzzle. Unlike the others, he's very happy to keep you as his plush playtoy. He drags you around the city with him, playfights with you, tosses you around and chews on you like the big puppy he is. And when he's done roughhousing, he humps you with his oversized doggy cock, drenching you in his semen until you smell thoroughly of him. Despite the occasional tear, you're very happy with your new friend.";
				else if Player is male:
					say "     You eventually find a plastic woman who stays with you. She has a slender, shapely body with long, thin legs and firm breasts. She looks much like a girl's doll blown up to the size of a real person. Her plastic hair is always beautifully styled and, unlike the children's dolls she resembles, she's got a hot, juicy pussy between her legs that's always eager to have her snuggle bear's cock buried inside. You enjoy a happy life together roaming the city, occasionally attacking the other mutants and survivors for sex, but usually content with each other as playmates.";
		else:
			say "     You are happy when the rescue finally comes, although the rescuers don't really know what to make of you and your teddy bear body. Eventually being cleared as noninfectious you find a job at one of the large malls playing with the children and advertising for the mall. After a time one of the people there gives you a card with a strange web address on it, checking it out later leads you to a whole underground fetish of people fascinated with plush animals. Getting in contact with the person who gave you the card, you quickly end up moonlighting at an adult club for people with this strange fetish, partying all night and getting many compliments on your wonderful [']costume['].";

Teddy Bear ends here.
