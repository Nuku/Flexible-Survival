Version 1 of Panda by Sarokcat begins here.
[ Version 1.1 - Variant for fight w/Medea ]

"Adds a panda to Flexible Survival's Wandering Monsters table"


Section 1 - Creature Responses

when play begins:
	add { "Panda" } to infections of girl;
	add { "Panda" } to infections of furry;


to say panda appears:
	setmongender 4;  [creature is female]
	if medeapanda is true:
		say "     You find yourself facing off against a very pregnant female panda. She's dressed in naught but a t-shirt that's been stretched tightly over her ample belly and bosom. You can see the shadow of her black nipples through the thinned fabric. Her pussy and thighs are wet with what might be femcum or amniotic fluid, or quite possibly both. It seems you'll have to subdue her[if HP of Doctor Matt is 20 or HP of Doctor Matt is 21] with care[end if] if you don't want to be rather rudely involved in the delivery.";
		decrease pldamagebonus by weapon damage of Player / 2;
	else:
		say "     Traveling down the zoo paths, you are startled to see a black and white patterned humanoid bear charge through the landscaping and end up right in front of you, panting from the exertion of running around like mad, her modest breasts heave with every breath as she scans the area";
		if Player is male:
			say ". The panda-like woman's eyes fix on you, and then drop down to your [cock of Player] cock. 'Ooooh a male!' she exclaims. [one of]'Please fuck me now!' [or]'Did you know pandas are an endangered species?' she asks slyly. 'Want to help me repopulate?' [or]'Yes! Take me now!' [or]'Finally I can get laid!' [or]'You're mine!' [or]'Finally I found a man!' [or]'You would make a handsome panda!' [at random]the pandawoman says lustily. Not waiting to see your response, she charges forward clearly intent on getting laid.";
		else:
			say ". The panda-like woman's eyes fix on you, scanning over your female form, and seeming disappointed at what they find. 'Another woman?' the panda cries out in exasperation. [one of]'We don't need any more competition for mates around here!' [or]'You won't get the men while I'm around!' [or]'Maybe we can MAKE you a man!' [or]'You must have hidden the men for yourself! I'll beat their location out of you!' [or]I needed someone to vent my frustration on anyways,' [at random]she says with a growl of pure frustration. Not bothering to let you respond, she charges forward, fire in her eyes.";

to say panda attack:
	choose row MonsterID from the Table of Random Critters;
	if medeapanda is true:
		say "     [if HP of Player > 0]Rather than fight a pregnant woman about to go into labor, you decide to just give up and let her have her way[else]You end up getting beaten rather than giving you all to fight a pregnant woman about to go into labor[end if].";
		now non-infectious entry is true;
	else if Player is male:
		say "     'Finally!' she says as she sends you crashing to the ground exhausted! 'Now we can have some fun!' the pandalike woman says with a happy grin as she flops onto the ground next to you, her arms quickly reaching out and pulling you close. Her heat scent fills your nostrils as she slowly strokes one of her panda-like claws along the underside of your cock. 'Oh thank god, I need this so bad,' she says with a shudder, her smell and her attentions exciting you as well as she clutches you even closer, pressing your chest up against her modest breasts as she rubs her crotch against yours. Unable to resist her desperate need, and the arousal she is stirring in you, you move your cock into position up against her heat swollen lips.";
		say "     Not waiting for you to make the next move, she grabs your ass with her clawed hand as she pulls you up forcing your cock into her, causing you both to gasp in pleasure. The feel of her swollen lips embracing and massaging your cock is wonderful, as you begin to piston yourself into her, her claws tracing lightly over your body as she moans in encouragement. You find her need is almost contagious, as you find yourself growing almost as eager as she obviously is, clutching her to you as you both writhe together on the soft landscaping, thrusting into her harder and faster, while she begs you to go even harder still. You are almost taken by surprise by the force and swiftness of your own orgasm as you shoot into her, her claws tightening on your ass as her body shudders in its own orgasm as her hot walls clench and massage your cock, trying to coax it out of every last bit of seed.";
		say "     Eventually she relaxes with a sigh, her claws leaving slightly bloody marks behind as she unclenches her hands, and you both lie there for a moment dazed by the wonderfully strong experience. She seems to recover first, pulling herself up and out of your arms and stretching, before one of her hands rests over her stomach and a happy expression crosses her face. 'Oh, I feel so much better now,' the panda woman says, as she looks down at your still exhausted body, 'Thank you so much for helping me out with that, you should come back by here more often, just in case I need your type of [']help['] again,' she says, leaning down to give you a peck on the cheek from her small muzzle, before staggering off into the zoo to look for a safe place to rest, leaving you to recover from the experience on your own.";
		infect "Panda";
	else:
		say "     'So there!' the tired panda woman shouts as she knocks you to the ground one final time, only to double over herself moaning. 'Ah, now I'm even more worked up than before!' she moans out, one hand massaging her breast while she rubs herself with the other hand. The panda glances around before fixing her dark eyes on you again. 'You! You're the reason I got all worked up! You can help me fix it!' she says as she pounces on you before you can escape.";
		say "     Crashing down on top of you, the panda-like woman is soon running her hands along your body, her heat scent filling your nostrils as her hands explore you. 'Mmm now if only you had a cock we could do this properly,' you hear her mutter to herself, her hand rubbing up over your groin, the tips of her panda claws teasing along your female entrance. 'Come on now, I'm not about to do all the work,' she teases you as her claws start to slip inside you, their cool texture teasing at your passage and making you gasp. You don't resist as she guides your hands to her own passage, which is hot and swollen with need.";
		say "     The panda gasps above you as you begin to stroke her feminine lips, her own hand starting to stroke and penetrate harder you as a reward. You find yourself starting to really get into this strange situation as her body grinds up against yours in need, enjoying how she writes at your touch, and enjoying the stroking touches she gives in return. You can feel your orgasm building as her claw scrapes softly against the depths of your passage, massaging and stimulating you in all the right places. As your orgasm threatens to overtake you, you find your hands working harder as you massage both her inner lips with one hand, while your other teases her breasts, desperate to bring her over the edge with you. Finally you gasp and orgasm around her fingers, your own diving even deeper into her and stimulating her much-needed body to its own orgasm. You lie there panting in pleasure, the strange experience making you feel amazingly good, even with just her fingers involved, as she recovers from her own orgasm, collapsed half on top of you. 'Ah, that took some of the edge off,' the pandawoman says with a happy grin as she picks herself up off you. 'And now to find a real male!' the panda declares before she charges off into the park again, leaving you lying there, still breathless.";
		infect "Panda";


To say panda loss:
	if medeapanda is true:
		say "     Despite fighting with added care and holding back some of your strength due to your foe's gravid state, you're still more than a match for the panda and are able to wear her down to the point that she's no longer trying to fight.";
	else:
		say "You knock the already tired panda woman back on her furry ass. She sits there for a minute, a slightly puzzled look on her face, before her eyes roll up in her head and she passes out, the fight on top of the chase obviously too much for her. Her body collapses back on the zoo path, sprawled out bonelessly, you check to make sure she is still alive, and find that she is just deeply asleep. Sighing in relief, you decide to continue on your way while you can, leaving the sex crazed panda to sleep it off behind you.";

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Length	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Name entry is "Panda";
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]She charges at you eagerly![or]Lowering her head, she rams it into you, knocking you on your ass.[or]She slaps you with her big bearlike paw![or]Charging forward, she manages to trip, and goes rolling out of control right into you![at random]";
	now defeated entry is "[panda loss]";
	now victory entry is "[panda attack]";
	now desc entry is "[panda appears].";
	now face entry is "a blend of panda and human features, with large dark eyes surrounded by black rings, your short round ears swivel around nimbly"; ["You have a (your text) face."]
	now body entry is "Stocky and somewhat rounded, you have a slightly ursine body, though obviously still with some human influences, your legs are however slightly shorter, as are your arms, giving you a rather rounded, appearance. Though your hands are tipped with panda-like claws, they are still easily able to grip and manipulate objects"; [ Body Description, format as "Your Body is (your text)"]
	now skin entry is "[one of]black and white patterned[or]panda furred[or]soft furred[or]short panda furred[at random]"; [ skin Description, format as "You have (your text) skin"]
	now tail entry is "You have a small, fluffy panda tail hanging down your ample backside."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "[one of]bearlike[or]panda[or]thick black[at random]"; [ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "your mouth pushes forward slightly until it resembles a short muzzle, new scents exploding into your nose as it changes slightly, and your vision blurs as your eyes widen, and become better able to see in the dark, and you can feel black circles forming around them. Finally your face itself begins to take on a more rounded shape, with the ears moving to the top of your head"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "shoulders widen, and your legs seem to shrink. Your chest and body rounds out into a more bearlike build, as sharp claws grow out of your hands and feet"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "short fur begins to push out of your skin, the soft black and white patterned fur quickly covering your entire body in a pandalike coat"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "it expands, new muscles forming underneath your new soft padding, a short pandalike tail extends slightly behind you"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it draws up tighter between your legs, becoming thicker and more bearlike as it is drawn into its new sheath"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 17;
	now dex entry is 15;
	now sta entry is 17;
	now per entry is 14;
	now int entry is 12;
	now cha entry is 14;
	now sex entry is "Male";  [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 60;
	now lev entry is 7;  [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 10;  [ Amount of Damage monster Does when attacking. ]
	now area entry is "Zoo";  [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 1;  [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 10;  [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 3;  [ Size of balls ]
	now Nipple Count entry is 0;  [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 0;  [ Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0;  [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0;  [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Length entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/well-used/open/gaping]
	now libido entry is 40;  [ Amount player Libido will go up if defeated ]
	now loot entry is "lucky horseshoe";  [ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 0;  [ Chance of loot dropping 0-100 ]
	now scale entry is 3;  [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]plump[or]rounded[or]padded[or]stocky[or]chubby[at random]";
	now type entry is "[one of]panda[or]ursine[at random]";  [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;  [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;  [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "bearhugger";  [ Row used to designate any special combat features, "default" for standard combat. ]
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



Section 3 - Endings

when play ends:
	if bodyname of Player is "Panda":
		if humanity of Player < 10:
			if Player is male:
				if Player is female:
					say "     Your needs becoming all consuming, your mind snaps as you hurry back to the zoo, desperate to find relief from your constant arousal. Soon you find several of the panda women that were wandering the zoo, and they eagerly present themselves for you to sate your maleness on. Your arousal is slightly lessened by the many matings with the panda women, but the burning need within your body is still unsatisfied. The panda women are eager to lead you back to the panda enclosure, where you find several more women to sink your maleness into, but your own female needs are still unmet, your need rising even as you sink your cock into yet another pandawoman. Your mind becomes more and more feral with need, as you take to prowling the zoo looking for a mate, and returning to the panda enclosure again and again after each unsuccessful hunt in order to blunt your need among the many willing females there. Eventually you return from one of your hunts to find the panda enclosure has a new occupant, somehow they managed to find another male panda while you were gone! Desperate, you chase off the other females currently courting the male, and present yourself for him, groaning as he sinks into you like you have needed for so long. The male fucks you hard like you have fucked so many other pandas yourself, and it feels so wonderful, the sensations grow even better when several of the other panda women you chased off come over to investigate your unoccupied cock. It takes some doing, but soon you buried inside a pandawoman, while the male panda is buried inside you, you groan and growl ferally as finally your burning heat is quenched by their efforts. No longer needing to prowl and hunt, your days are spent happily in the enclosure, your mind a haze of bliss, your long period of need having reduced you little more than an animalistic state of being. Eventually humans return to the zoo, but you hardly notice, too busy fucking and being fucked as often as possible.";
				else:
					say "     Finally accepting your fate, you return to the zoo, where several of the needy panda women soon find you. Not resisting, you let them haul you off into the underbrush, where you do your best to sate their burning need as often as your cock can harden, enjoying every second of your task. When their desperation has lessened somewhat, you head back to the panda enclosure with them, where you understand there are even more pandas in need of your attentions. Finding several more panda women in the enclosure, you are quickly busy once more, only pausing occasionally for water and the surprisingly tasty bamboo shoots planted here. You lose all track of time as you fall into your new role, breeding and eating and sleeping fill your days pleasantly. Eventually the military returns to the city, and several specialists are amazed at the amount of panda people, that are living there, even more amazing it seems to them is how many of the females are now pregnant. You care little about their debate over what to do with you and the other two pandamen they find in the zoo, enjoying your simple life with your mates caring for you. Eventually though you and your mates are split up to other zoos, making you somewhat unhappy for a time, soon you have several new more interesting mates, as the conservationists decide to try seeing what will come of placing you with regular unaltered pandas. Soon you are not only contributing to your new race of humanoid pandas, but also helping to save an endangered species as well... or so they tell you, all you care about is the females, and the tasty food...";
			else:
				say "     Finally giving in to the rising need inside you, you return to the zoo, desperately hoping to find a male to help quell your new burning desires. You search the zoo tirelessly for a time, occasionally teased by glimpses of other male creatures prowling the area, but are unable to catch them and make them help you. The entire time your mind is filled with images of strong male panda's as your need grows even more desperate. Soon you resort to teaming up with several other pandawomen in the hunt for a male, their needs as desperate as yours. Finally one of your fellow pandas manages to snag a male, and whatever he was before, by the time your turn comes to sate your needs, he is a pure pandaman, and eagerly gives you the fucking you need so badly. Once your needs are quenched for the time being, you and the rest bring him back to the panda enclosure, where several less fortunate pandawomen eagerly compete for his attentions. Soon your heat rises again, and you too join in the competition for the males attentions. You lose track of the time spent this way, until once more the humans return to the zoo, you and several of the other pandawomen eagerly try to capture some of the men when they appear, but they are ready for your attempts and you are easily overpowered. You end up their captive in a lab for a while, where you try to convince them several times that you are still intelligent, you just have these unbelievably strong needs. Unfortunately it is hard to be very convincing when your animalistic desires are growing stronger the longer you are unmated, fortunately for you, they decide to try an experiment with you and a couple other captives. Primarily due to the endangered nature of the species you so closely resemble, they take the chance and send you to a zoo as part of an experimental breeding program. Although you really don't care much about why or what they are doing, once you are put in the pen with the feral male panda. As you start to tease him with your needy scent you are happy to realize that finally you have a male all to yourself, and maybe he will finally quench this burning need in you for good... or at least until after you are done bearing his cubs...";
		else:
			say "     Rescued from the city with your mind mostly intact, you then have to find something to do with the rest of your life. Your pandalike appearance and form stands you in good stead however, as many people seem to respond favorably to it, letting you try your hand at many different jobs. Eventually though you are approached by several people representing one of the major conservation organizations, since they feel your appearance makes you uniquely suited to being their new spokesperson. Trying out this new job, you find it is the best one yet, with good pay and benefits, as well as becoming a recognizable face in many households. Kids often stop you to get your autograph and play with you when you travel in public, and even some adults ask for autographs as well. Perhaps the best benefit, is the several months each year you get to spend in some of the panda preserves, helping take care of and spend quality time with the magnificent bears you are working to save.";


Panda ends here.
