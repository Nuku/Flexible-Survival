Version 1 of Caveman by TheRecipe begins here.
[Version 1.1 - new player loss scene - Stripes]

"Adds a Caveman to Flexible Survival's Wandering Monsters table"

Section 1 - Creature Responses

when play begins:
	add { "Caveman" } to infections of MaleList;

to say cavemandesc:
	setmongender 3; [creature is male]
	say "     A caveman straight out of the prehistoric exhibit stands before you. This large, hunched over man is not made of wood or wax however. Even with the cromagnon posture, the hairy humanoid stands at about six feet tall and would be much taller if he stood straight. Massively muscular arms hang down with oversized hands scraping the floor. His feet are gigantic, with toes that are long and nimble.";
	say "     His face is almost human, with a shaggy haircut that almost covers up his trademark heavy brow ridge and large nose. His enormous barrel chest is covered in hair, somewhere between body hair and fur. He wears nothing but a loin cloth and you can see a huge soft cock and enormous hairy nuts hanging from below its ragged hem.";
	say "     He sees you and grunts loudly. Somewhere he has found a huge wooden club and he bashes it against the floor threateningly.";

to say losetocaveman:
	say "     The massively muscled beastman swipes your feet out from under you and plants his large hairy feet on either side of your head. He raises his arms above his head in triumph, the oversized biceps bigger than his own head as he roars in victory";
	if Player is impreg_ok and a random chance of 1 in 3 succeeds:
		say " before bashing you over the head with his club. The blow fills your vision with stars before it all fades to black.";
		say "     As you gradually start to come back to your senses, you become aware of your pounding headache. It is a steady, rhythm that makes you groan. It takes a few moments to realize that the pounding is in time to other things - a motion of your body, a series of slick sounds and that pleasant fullness inside you that comes and goes. Opening your eyes to look around, your vision is still quite hazy, but it seems you're somewhere else in the museum. After a few moments, you become aware that you're on your side on some soft furs with another figure atop you in some cramped [one of]corner of a display[or]storage space[or]cubby hole[at random].";
		say "     A grunt from the figure atop you turns your attention to him and you recognize him as the caveman from earlier. Full realization sets in slowly, but you gradually become aware that the rhythmic pounding you're feeling is all coming cromagnon male fucking you with his huge penis. The sound you've been hearing is the wet slurps of sex, the caveman fucking your well-used hole for what must be the third or fourth time to judge from the amount of semen that's already leaked out of you. Your [if Player is female]womb[else]belly[end if] feels full and warm with it, a sensation you find quite pleasurable once you realize it.";
		say "     Despite his rough [']courtship['] and striking appearance, you find yourself quite attracted to the caveman fucking you. Certainly having proven himself quite the stud, you're eager for another load from him. With your nanites on the job, your headache disappears quickly and you're able to become a more active participant in the mating. Pulling him down for some sloppy kisses, you grind yourself onto his pulsing rod[if Player is female and Cunt Depth of Player < 13], taking as much of it as you can into your well-stuffed cunny[else if Player is female], taking the whole of it into your well-stuffed cunny[else], taking the whole of it into your well-stuffed ass[end if]. He grunts and grabs your [if Breast Size of Player > 0]breast[else]ass[end if] roughly, cumming hard into you, claiming you as his mate once again. Already having drained his balls repeatedly, there's less to give this time, but it is still an impressive amount that fills your [if Player is female]cunt[else]rectum[end if] with a fresh blast of warmth[if Player is not neuter]. You moan and cry out in your own orgasmic release[end if]. Thoroughly exhausted now, the caveman's cock slips from you as he rolls over onto the furs and passes out.[impregchance][impregchance]";
		say "     You lay there for a time, needing to recover your strength after all of this and enjoying basking in the afterglow and the pleasure of having been so thoroughly fucked. Looking over at the caveman, you find yourself quite tempted to just stay with the burly stud. [if humanity of Player > 70]Some small[else if humanity of Player > 40]A[else]A large[end if] part of you toying with the idea of remaining in this [']cave['] of his and simply giving yourself over to him to be his mate. You stretch out on the animal skins and lay there in well-fucked bliss, only roused from this when the caveman grunts, rolls over in his sleep and [one of]drools messily onto the furs[or]farts noisily[or]picks his nose[or]belches raucously[at random]. That a moment of disgust shocks you into realizing you were about to drift off yourself. You shake the thoughts of staying out of your head long enough to make your escape.";
	else:
		say ".";
		say "     Having announced his win to any creature within ear shot, the cromagnon stud has other ideas for you. You look up and see him tear off his loincloth, exposing a huge, erect penis. He tugs on it with his giant fist, his freakishly proportioned hand making the dick look smaller than it is. It is not small.";
		if Player is female:
			say "     He grabs you roughly by your [FaceName of Player] face and flips you around, pressing a huge hand into your back and holding you down. You feel a finger exploring, pushing under you. It is long and thick, bigger than most human cocks and soon it is up inside of your [cunt size desc of Player] cunt.";
			say "     The caveman grunts as he finger fucks you, the grunts growing louder as you begin moaning. Soon, he pulls out the finger and you feel something else pressing against your crotch. You wonder if it is his wooden club, but soon realize it is the caveman's huge prehistoric cock, stretching open your pussy lips around its head.";
			say "     His animalistic instincts take over and he begins fucking his huge dick in and out of you with ferocity and power unexpected from something so close to human.";
			say "     Caring nothing for your pleasure he rams in and out of you, his hairy ballsack smacking against you roughly. You are thankful that it doesn't take very long until the massive club of a caveman cock begins to fire off inside of you, hot cromagnon spunk filling you up in a voluminous quantity.";
			say "     He pulls out, his cock dribbling more spunk onto your naked ass. Wiping himself off, using your [bodydesc of Player] body as a towel before turning and leaving, the caveman abandons you there with nothing but a grunt of smug satisfaction.";
		else:
			say "     He grabs you roughly by your [FaceName of Player] face and flips you around, pressing a huge hand into your back and holding you down. Grunting angrily when he sees you don't have what he is looking for, he turns you back around.";
			say "     Enormous hands hold your head steady and squeeze your mouth open. You try to speak or scream, but before you can, the dripping huge head of the caveman's cock is shoved roughly inside of your face. He begins rocking back and forth, feeding you more and more of his prehistoric wang. You can't help but be impressed with the size and power of the tool and the caveman wielding it and soon you find yourself moaning, desperate to taste the nectar of this brute.";
			say "     You don't have to wait long, as the caveman shoves deep into your throat, past your gag reflex and begins to unload his monstrous, hairy nuts into your throat and stomach. The infected cum backs up into your mouth and you can taste him as he pulls out in satisfaction, cum spraying everywhere, then turns and leaves you there, on your knees and covered in his semen.";

to say beatthecaveman:
	say "     You defeat the caveman, who collapses to the ground after dropping his club with a sad grunt. The big muscular brute looks strangely inviting lying on the ground nursing his wounds, being more human than many of those you've encountered around lately. Do you take advantage of the defeated caveman?";
	if Player consents:
		say "     You smile down at the caveman and tease him with a grunt of your own before having your way with him.";
		if Player is female:
			say "     You rip off the devolved man's loincloth, exposing his throbbing meat, over a foot of caveman cock for you to ride. He gives out a questioning grunt, unsure of your intentions.";
			say "     You show him exactly what you want as you stroke his huge cock a few times, spreading his precum over it, making it nice and wet before you straddle it and ease the thick head into your [cunt size desc of Player] vagina.";
			say "     His cromagnon grunts turn to moans as you bounce up and down on his big prehistoric dong, using it for your own pleasure. It's a luxury being with a creature so well built and strong, he can take a nice rough rider on top of him with ease.";
			say "     You explode with ecstasy on top of him as he begins to cum inside of you, filling you with prehistoric spunk. Still too beat up to move, you lift yourself off him and leave him moaning on the ground, his dick still hard.";
		else if Player is male:
			say "     You rip off his loincloth and slap his tight, muscular, and hairy ass. You massage the beefy muscles of his prehistoric butt and place your [cock size desc of Player] [Cock of Player] cock in between the massive cheeks. The caveman grunts beneath you nervously, knowing what comes next.";
			say "     You shove into him hard, spreading out that ass as you fill him with your [Cock of Player] dick. Wasting no time in using the warm chute of the caveman, pistoning in and out, using him like he wanted to use you. You shove deep and hard, hilting into that sweet ass as you pump your cum deep into the caveman's guts.";
		else:
			say "     You can't pass up the throbbing dick barely contained by the loincloth. You rip it off and go down on the caveman, greedily licking and sucking the huge meat, your moans drowned out only by the moans of the cromagnon man. Soon you are rewarded with a powerful blast of caveman cum in your mouth and you swallow down the gift before moving on.";
	else:
		say "     You leave the caveman on the ground, having no interest in the brute.";

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Neandertal";
	add "Caveman" to infections of MaleList;
	add "Caveman" to infections of HumanList;
	now Name entry is "Caveman";
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]The caveman swings his huge club and smashes you in the head.[or]The caveman grabs you easily in a massive hand and tosses you to the ground.[or]The caveman kicks you with a giant hairy foot![at random]";   [ Successful attack message ]
	now defeated entry is "[beatthecaveman]";
	now victory entry is "[losetocaveman]";
	now desc entry is "[cavemandesc]";
	now face entry is "humanlike, but beetle-browed and hypermasculine, with a lantern jaw and much stubble";      [ Face. Format as Your face is [Face of Player]. ]
	now body entry is "that of a caveman, strongly muscled, with massive, overly long arms";
	now skin entry is "leathery, incredibly hirsute and humanlike";   [ Skin. Format as "Looking at yourself, your body is covered in [Skin of Player] skin." ]
	now tail entry is "";   [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "prehistoric caveman";
	now face change entry is "your brow ridges grows thick and heavy, the bones becoming larger and more prominent, giving you the face of a cromagnon man";   [ Face TF text. Format as "Your face tingles as [face change entry]." ]
	now body change entry is "your body becomes human-like, but freakishly proportioned, with huge arms that touch the ground. Hands and feet grow larger and larger to match, and end up becoming massive and powerful. Your muscles increase with new prehistoric size. With creaks and cracks in your back, you hunch over, feeling much more comfortable in that position now";
	now skin change entry is "it becomes thick and leathery, an enormous amount of human hair growing on it, making it seems almost furlike";
	now ass change entry is "it grows incredibly hairy and muscular";   [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "it grows into human-like shape, thick with veins";      [ Cock TF text, format as "Your groin tingles as [cock change entry]." ]
	now str entry is 18;
	now dex entry is 12;
	now sta entry is 17;
	now per entry is 9;
	now int entry is 9;
	now cha entry is 8;
	now sex entry is "Male";          [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 55;
	now lev entry is 6;               [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 10;             [ Monster's average damage when attacking. ]
	now area entry is "Museum";       [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1;             [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 13;      [ Length in inches infection will make cock grow to if cocks. ]
	now Ball Size entry is 2;        [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2;           [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 0;       [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now Male Breast Size entry is 0;  [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0;             [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]       [ Depth in inches of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]        [ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 45;           [ Target libido the infection will rise towards. ]
	now loot entry is "";             [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0;        [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3;             [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]prehistoric[or]slouching[or]muscled[or]rugged[or]brutish[at random]";
	now type entry is "[one of]caveman[or]hominid[or]cromagnon[as decreasingly likely outcomes]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;    [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
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
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]"]
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
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that is [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]


Section 3 - Endings

when play ends:
	if BodyName of Player is "Caveman":
		if humanity of Player < 10:
			say "     You succumb to your caveman infection, your mind regressing to a simpler, devolved state. You find the city confusing and troublesome and run away until you find a comfortable cave deep in the woods, away from everyone else.";
		else:
			say "     You survive, but you can never live a normal life. Most of the other survivors are furry and have started their own community, but you are almost human, but not quite. The only work you can find is as a subject in college lectures about prehistory and evolution, until a construction foreman sees the massive arms and hands on your freakish body and puts them to good use. The work is hard and simple, perfect for your devolved mind.";

Caveman ends here.
