Horseman by Sarokcat n Verath begins here.
[ Version 2.0 - scenes partially rewritten & adjusted for Dry Plains & Farm events]

"Adds a Horseman to Flexible Survival's Wandering Monsters table"

Section 1 - Creature Responses

when play begins:
	add { "Horseman" } to infections of guy;
	add { "Horseman" } to infections of furry;

to say HorsemanDesc:
	setmongender 3; [creature is male]
	if horsefight is 0:			[normal]
		say "     Coming around a corner you slam into what feels like a solid wall - looking up you see you have run into one of the horsemen. He looks down at you with confusion as you take a step back. Standing on digitigrade legs that are covered in a cream colored fur up to his thickly built human torso. On his right bicep is the same intricate interlocking horseshoe tattoo that the guards at the front door have. An impressive equine package bulges his ripped khaki shorts. His heavy three fingered hands are capped with hooflet-like nails. His short tail flicks behind him in annoyance. Still looking at you with confusion written all over his fully equine head and face you begin to wonder if this men were chosen more for their body mass than brains. 'You don't look like you're supposed to be here,' he grumbles. 'I better take you back to processing so they can make a proper horsey fucktoy out of ya.'";
	else if horsefight is 1:		[fight on Dry Plains]
		say "     The muscular horseman steps up to you with balled fists. Standing on digitigrade legs that are covered in a cream colored fur up to his thickly built human torso, his right bicep bears an intricate interlocking horseshoe tattoo. An impressive equine package bulges his ripped khaki shorts and behind him, a short tail flicks in annoyance. He grumbles. 'By the time I'm done with you, you're gonna be a proper horsey fucktoy.'";
	else if horsefight is 2: [fight in the farm worker barracks]
		say "     'Fuck off,' the farmhand growls and swings a punch at you.";

to say Horseman wins:
	if horsefight is 0:			[normal]
		if Player is female:
			say "     The tall horseman grins happily as you fall down before his might, his equine eyes roving over your body as he steps forward on his powerful hooves. 'Now I should really take you down to the rest of the herd, so we can all make a lovely little filly out of you, but first I think I'm going to have a little fun with that slutty little pussy of yours myself,' he says with a leer on his muzzle while stroking his already erect equine cock in anticipation. You try to raise a protest, but he just stalks over to you, powerful equine legs shifting his weight easily as his hooves clop on the ground, then reaches down and pushes you onto your back on the ground. 'Usually prefer a bed for this, or at least a mounting block, but this should be fun too,' he mutters absently as he positions himself over you. The horseman's strong arms hold you down easily as he brushes his large equine rod against your body, then brings its tip to rest against your crotch. You can feel your pussy getting damp and can't suppress a needful moan as your body begins to warm up under the influence of his powerful sexual musk. 'Now hold on, it's time for this horse to take you for a ride,' your captor says with a rough chuckle, before beginning to push his thick length into your body.";
			LineBreak;
			say "     His equine shaft feels like it is nearly splitting you in two as he pushes it into you an inch at a time, though you can't deny that you also shudder with pleasure from lying under this powerful creature and having his flared manhood spreading open your innermost depths. The slight pain of being stuffed full of his thick horsecock soon is fully overwhelmed by the sensations of being filled so very completely by the virile male. Your inner walls grip his cock tightly as he begins to thrust into you, your juices coating his thick length as he moves as much of his wonderful rod as possible into your body with each rocking movement of his powerful hips. You groan and throw your head back while he thrusts into you, your body rocking on the ground with every thrust. His equine member makes your needy body feel so very good, even as the musk of a stallion in rut clouds your mind with lust and images of a whole stable full of the other horny horsemen fill your head enticingly - images of all those massive stallionhoods ready and willing to use your tight body. It's just too much for your mind to take, and you cry out in orgasm as your body shudders underneath the horseman. Your inner walls convulse around his thrusting shaft as you come, giving his cock a massage that drives the male horseman over the edge as well, him letting out a loud whinny of pleasure as he empties his load into your body.";
			LineBreak;
			say "     You groan in arousal and lie back as his seed shoots into your womb, filling your body up with blast after massive blast of cum. Before long, it begins spilling out around the sides of his cock as you reach your maximum capacity and he pulls out, coating your front with his still spurting seed, even as more of it his fertile equine treasure leaks out from between your thighs. You can only moan contentedly and lie back on the ground as the powerful male stands up and stretches himself, before grinning down at you with amusement, 'That was fun, I think I'll let you go now this time, provided of course you come back by here again soon, so I can [']catch['] you again,' he says with another soft chuckle, before staggering unsteadily down the halls himself, leaving you lying there covered in his cum. It takes a moment before you can shake off the effects of being mated by him, then are able to gather your things back up and head out again.[impregchance]";
			infect "Horseman";
		else:
			say "     The powerful horseman scoffs as you collapse in front of him helplessly, 'Wasting my time on a puny little male runt like you? Why, you don't even have a proper cunt to fuck,' the horseman says with a crude chuckle as he strokes his thick equine meat speculatively. 'Still maybe with a bit of help you can become sexy little stud like me - though obviously not as handsome,' he says with a neighing chuckle then begins to jerk off and soon groans in pleasure. Looking up at the masturbating horseman, you are hit full in the face with the first blast of his sticky white equine seed as he brings himself to orgasm and shoots all over you. You gasp in surprise and the taste of his equine cum fills your mouth - much to the horseman's amusement. He continues to stroke himself, coaxing more and more seed out of his rod onto you, even as your body begins to shudder and feel strange in response. Your thoughts seem slower and more filled with lust with every second, and you lie there with a silly grin on your face while he finishes coating you with his cum. 'There now, maybe that will help you fit in here better,' he says with an equine grin and starts walking down the passage away from you. 'Or even better yet, maybe you'll soon have a nice slutty little mare cunt for me to fuck instead! Can't wait till I see you next time!' he calls back over his shoulder, leaving you lying there covered in his equine seed.";
			infect "Horseman";
	else if horsefight is 1:		[fight on Dry Plains]
		if Player is female:
			say "     The tall horseman grins happily as you fall down before his might, his equine eyes roving over your body as he steps forward on his powerful hooves. 'Now I should really take you to the stables, so we can all make a lovely little filly out of you, but first I think I'm going to have a little fun with that slutty little pussy of yours myself,' he says with a leer on his muzzle while stroking his already erect equine cock in anticipation. You try to raise a protest, but he just stalks over to you, powerful equine legs shifting his weight easily as his hooves clop on the ground, then reaches down and pushes you onto your back on the ground. 'Usually prefer a bed for this, or at least a mounting block, but this should be fun too,' he mutters absently as he positions himself over you. The horseman's strong arms hold you down easily as he brushes his large equine rod against your body, then brings its tip to rest against your crotch. You can feel your pussy getting damp and can't suppress a needful moan as your body begins to warm up under the influence of his powerful sexual musk. 'Now hold on, it's time for this horse to take you for a ride,' your captor says with a rough chuckle, before beginning to push his thick length into your body.";
			LineBreak;
			say "     His equine shaft feels like it is nearly splitting you in two as he pushes it into you an inch at a time, though you can't deny that you also shudder with pleasure from lying under this powerful creature and having his flared manhood spreading open your innermost depths. The slight pain of being stuffed full of his thick horsecock soon is fully overwhelmed by the sensations of being filled so very completely by the virile male. Your inner walls grip his cock tightly as he begins to thrust into you, your juices coating his thick length as he moves as much of his wonderful rod as possible into your body with each rocking movement of his powerful hips. You groan and throw your head back while he thrusts into you, your body rocking on the ground with every thrust. His equine member makes your needy body feel so very good, even as the musk of a stallion in rut clouds your mind with lust and images of a whole stable full of the other horny horsemen fill your head enticingly - images of all those massive stallionhoods ready and willing to use your tight body. It's just too much for your mind to take, and you cry out in orgasm as your body shudders underneath the horseman. Your inner walls convulse around his thrusting shaft as you come, giving his cock a massage that drives the male horseman over the edge as well, him letting out a loud whinny of pleasure as he empties his load into your body.";
			LineBreak;
			say "     You groan in arousal and lie back as his seed shoots into your womb, filling your body up with blast after massive blast of cum. Before long, it begins spilling out around the sides of his cock as you reach your maximum capacity and he pulls out, coating your front with his still spurting seed, even as more of it his fertile equine treasure leaks out from between your thighs. You can only moan contentedly and lie back on the ground as the powerful male stands up and stretches himself, before grinning down at you with amusement, 'That was fun. I think I'll let you go now this time - it'll be nice to know you're still out here, wild and untamed until I can [']catch['] you again,' he says with another soft chuckle and walks away, leaving you lying there covered in his cum. It takes a moment before you can shake off the effects of being mated by him, then are able to gather your things back up and head out again.[impregchance]";
			infect "Horseman";
		else:
			say "     The powerful horseman scoffs as you collapse in front of him helplessly, 'Wasting my time on a puny little male runt like you? Why, you don't even have a proper cunt to fuck,' the horseman says with a crude chuckle as he strokes his thick equine meat speculatively. 'Still maybe with a bit of help you can become sexy little stud like me - though obviously not as handsome,' he says with a neighing chuckle then begins to jerk off and soon groans in pleasure. Looking up at the masturbating horseman, you are hit full in the face with the first blast of his sticky white equine seed as he brings himself to orgasm and shoots all over you. You gasp in surprise and the taste of his equine cum fills your mouth - much to the horseman's amusement. He continues to stroke himself, coaxing more and more seed out of his rod onto you, even as your body begins to shudder and feel strange in response. Your thoughts seem slower and more filled with lust with every second, and you lie there with a silly grin on your face while he finishes coating you with his cum. 'There now, maybe that will help you fit in here better,' he says with an equine grin and starts walking down the passage away from you. 'Or even better yet, maybe you'll soon have a nice slutty little mare cunt for me to fuck instead! Can't wait till I see you next time!' he calls back over his shoulder, leaving you lying there covered in his equine seed.";
			infect "Horseman";
	else if horsefight is 2: [fight in the farm worker barracks]
		say "     The muscled equine farmhand knocks you to the ground with a punch to the stomach, looking down on you in disdain as you cough and try to catch your breath. 'Just stay out of things that don't concern you,' he growls, then turns away from you and joins the crowd around Corbin.";

To say Horseman loses:
	if horsefight is 0:			[normal]
		say "     The powerful horseman shakes his head slightly to clear it, before charging right at you again, obviously not knowing when he is beat. His attack is clumsy and easily avoided, as he is still off balance from the beating you have recently been giving him, and it is easy enough to sidestep and guide him right into a wall. The powerful beast groans and collapses up against the wall, a slightly stupefied look on his face as he stares off into space, obviously stunned. Shaking your head slightly, you continue along your way before he can try to stop you again.";
	else if horsefight is 1:		[fight on Dry Plains]
		say "     The powerful horseman shakes his head slightly to clear it, before charging right at you again, obviously not knowing when he is beat. His attack is clumsy and easily avoided, as he is still off balance from the beating you have been giving him, and it is easy enough to sidestep and send him crashing to the ground. The powerful beast groans and collapses, a slightly stupefied look on his face as he stares off into space, obviously stunned as he lays flopped out on the grass.";
	else if horsefight is 2: [fight in the farm worker barracks]
		say "     The muscled equine farmhand shakes his head slightly to clear it, before trying to punch you once again, obviously not knowing when he is beat. His attack is clumsy and easily avoided, as he is still off balance from the beating you have been giving him, and it is easy enough to sidestep and send him crashing to the ground. Groaning and holding his head as he is, you don't think he'll get up anytime soon.";

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Length	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Name entry is "Horseman";
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]He rears back and kicks out at you with one of his large powerful legs![or]The powerful horseman grins evilly as he lowers his head slightly and rams his forehead into yours brutally.[or]He strokes his powerful equine cock teasingly, his masculine equine musk filling your head and sapping your will to fight.[or][at random]";
	now defeated entry is "[Horseman loses]";
	now victory entry is "[Horseman wins]";
	now desc entry is "[HorsemanDesc]";
	now face entry is "dominated by a broad equine muzzle, with large round blue eyes, and rather expressive horse-like ears, sitting atop your new face"; [ Face description, format as "Your face is (your text)."]
	now body entry is "large and muscular, with strong digitigrade equine legs ending in powerful hooves supporting, your muscular form, your strong hands seem to be slightly hoof-like as well, the ends of your fingers tipped with little hooflet like nails";
	now skin entry is "[one of]horse-like[or]dappled[or]brown and white patterned[or]softly furred[or]short fur covered[at random]";
	now tail entry is "You have a long, thick, horse-like tail swaying behind you, almost reaching to the ground. Its long strands of coarse hair cover your ass completely as it flicks this way and that seemingly on its own."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "[one of]equine[or]horse-like[or]blunt[or]powerful[at random]";
	now face change entry is "your mouth stretches forward, your nose flattening as it merges with your forming equine muzzle. You find yourself groaning slightly as your forehead flattens and your eyes shift their position to the sides slightly even as your ears lengthen into larger and pointed horse-like ears, which come to rest atop your now extremely equine face"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "your muscles seem to shift around underneath your skin, and your legs cramp as your heels move up your legs, causing you to stumble slightly as you are forced to assume a more digitigrade stance on your changing feet, your toes seeming to flatten and merge together until you are standing on powerful horse-like hooves. The rest of your body finishes changing as well, your hands having acquired rather hoof-like nails, and your chest and torso is broader and more equine looking"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "coarse horse-like fur begins to push its way out of your flesh, the brown and white patterned fur forming into several rather interesting dappled patternings as it finishes covering your body completely.";
	now ass change entry is "it seems to tighten into a rather broader and flatter ass, and long strands of thick equine hair begin to sprout from the base of your spine, quickly growing out to form a rather long and handsome equine tail which hangs down past your knees and seems to flick from side to side as if it had a mind of its own";
	now cock change entry is "it grows erect and aroused, before beginning to shift and change. The point of your cock broadening and flattening slightly into a rather blunt equine shape, while a proper sheath forms around the base of your cock, and a ribbed ring forms about halfway up your rather larger member"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 28;
	now dex entry is 16;
	now sta entry is 24;
	now per entry is 14;
	now int entry is 8;
	now cha entry is 14;
	now sex entry is "Male";            [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 90;
	now lev entry is 9;                 [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 12;               [ Amount of Damage monster Does when attacking.]
	now area entry is "Stable";         [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 1;               [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 20;        [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 3;          [ Size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	now Nipple Count entry is 0;             [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 0;         [ Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0;               [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Length entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]         [ Length of female sex infection will attempt to give you. ]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/well-used/open/gaping]          [ Width of female sex infection will try and give you ]
	now libido entry is 70;             [ Amount player Libido will go up if defeated ]
	now loot entry is "Spotted fur";    [ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 0;          [ Chance of loot dropping 0-100 ]
	now scale entry is 4;               [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]muscled[or]strong[at random]";
	now type entry is "[one of]equine[or]horse-like[at random]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;      [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Table of New Infection Parts (continued)
Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Arms Change	Arms Description	Arms Skin Adjective	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Ass Change	Ass Description	Ass Skin Adjective	Ass Width	Tail Change	Tail Description	tail skin adjective	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Length	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

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
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Tail Change entry]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...)]
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
   [ Row used to designate any special combat features, "default" for standard combat. ]


when play ends:
	if bodyname of Player is "Horseman":
		if humanity of Player < 10:
			if Player is female:
				say "";
			else:
				say "     Your head feels increasingly fuzzy as your instincts begin to take over more and more, and you find yourself forgetting what you were supposed to be doing, your thoughts increasingly filled with powerful sexual desires and the need to find a mare - or someone to make into a proper mare. Following your half forgotten memories, you eventually manage to find your way to a large building that seems familiar, and spotting a couple of other horsemen at the entry, you remember that this place was called the stables or something. Shaking your head slightly to try to clear it, you recall that stables are place for horses, and since you are a horse, obviously you should be here. With that worked out, you feel a smile cross your increasingly equine muzzle. As you wander over to the door, the guards stop to chat with you for a minute, then lead you over to your new quarters. You find yourself loving being a horse and guarding the building, especially since all the mares are more than happy to play with a handsome stud of a stallion like yourself when they aren't busy with their clients. Of course the military does eventually stick its nose into your happy life soon enough, as they pour into the city and try to pacify it. They are no match for you and your herd mates in the close confines of the city however, and soon your herd is swelling even larger than ever before as more and more of their patrols succumb to the infection. Of course occasionally a patrol makes it all the way to the Stables themselves, where you are more than happy to let them in to look around... after all, the mares can always use more customers, and you can always use more mares once they have finished changing...";
		else:
			if Player is male:
				say "     Rescued from the city with your mind still barely intact, though your memories seem to be growing increasingly fuzzy as time goes on, the military takes you back to their base of operations where they can try to help you deal with the infection. Of course before long they don't have much time to worry about a rather muscular and handsome horseman like yourself, and while there is some talk about enrolling you in the army to fight the other infected, they decide it is safer for everyone if they just send you on your way. Once free, you wander around aimlessly for a while, unable to remember clearly what it was you used to do, or should be doing, until finally you end up trying to get drunk in a bar, when several people start a fight nearby. The fight was easy enough for you to break up, and in doing so you ended up getting a job as a bouncer for the bar as well, a job that seems to suit you well enough. After a while you become good friends with the barkeep and several of the rest of the staff, enjoying your new position, and the fact that you don't need to worry about the past any longer. Of course something still seems to be missing from your life, and once you realize what it is, you find yourself grinning happily as you go to meet the barkeep at his apartment after the bar closes. You just know he will look so much better as a nice handsome stallion, and then the two of you can get started on making the rest of the staff into a proper herd...";
			else:
				say "     The military manages to rescue you from the city before you can give in to the infection, and you go with them to their base happily, though several of the soldiers seem surprised by your powerful new equine build, and the glimpses they get of your sexy horse-like pussy. Eventually the scientists try to take a look at you, and are rather confused by the conflicting changes in your body, however having much more pressing matters to deal with, they rather reluctantly release you so they can focus on the other dangerous things going on in the city itself. Wandering around free, you find your memories of things before the infection are rather hazy, and you can't recall where you should be going now that you are free, or even if you had a career of some kind to continue. You continue to wander around aimlessly for a while, before eventually running into a small group of other changed creatures going about their business. The [one of]hyenas[or]wolves[or]huskies[or]rats[or]deer[at random] seem rather nervous around you at first, but soon seeing how lost you are, they decide to let you tag along with them. Soon though your powerful build proves to be useful in discouraging or even solving trouble several times, and they become increasingly more accepting of you. Before long several of the males have even offered to share your bed at night, an offer that you more than eagerly find yourself accepting. Eventually you feel content as a member of your new, rather strange herd, and while the main male isn't the normal kind of equine herd leader, his cock certainly feels amazing enough when he plunges it into you most nights, and you look forward to being nice and full of his offspring very soon now, and probably for the rest of your long and full life as well...";

Horseman ends here.
