Version 1 of Dragon Pool Toy by Hina Vache begins here.
[Version 1.0 - Created Creature. (Coded by Kurainyx)]
[Version 1.1 - Added libido numbers - Kurainyx]

"Adds a Dragon Pool Toy creature to Flexible Survival's Wandering Monsters table"


Section 1 - Creature Responses

to say DragonPoolToyDesc:
	setmongender 5; [creature is herm]
	if "Dragon Pool Toy" is listed in EncounteredEnemies of Player:  [If the player had already encountered a Dragon Pool Toy]
		say "     As you wander the area, you soon find yourself back at the trash pile. Just as before, the Dragon Pool Toy remains motionless on top of the junk. Knowing full well that it is a trap, you merely stare at the beast for a few moments before turning and starting to walk away. A quick series of squeaks is heard behind you. Turning around rapidly, you have just enough time to dodge its attempted tackle. Once more, the dragon rears up and lets out its 'ferocious' squeak of a roar as it prepares to attack.";
	else:   [First time meeting. Surprises player with a sneak attack]
		say "     As you explore the surrounding area, you are forced to stifle a laugh. Before you, lying on a pile of junk, is a fully-inflated and very cartoonish dragon toy. The thing is positively massive, standing a good ten feet tall, being the kind of pool toy people place in the waters of a lake or beach to ride on. The object is a neon-purple with fins instead of normal legs, a 'sail' atop its head, and a long tail. Deciding that it is safe to check out, you begin to walk around the toy, inspecting it closely. As you make your way to its rear, you groan and slap your hand into your face, shaking your head slightly. Either this crazy infection got to an innocent toy, or some sick company decided to get real creative by adding both a vagina and a penis, both impressively sized, to the toy. Against your better judgement, you decide to push your hand into the large slit experimentally. Grimacing as you feel the damp walls of the toy, you begin to remove your hand only to see the toy swing at you with its rear flipper.";
		choose row MonsterID from the Table of Random Critters;
		let bonus be ( perception of Player + dexterity of Player - 20 ) divided by 2;
		let featbonus be 0;
		if "Wary Watcher" is listed in feats of Player:
			increase featbonus by 3;
		let dice be a random number from 1 to 20;
		say "     You roll 1d20: [dice]+[bonus]+[featbonus] = [dice + bonus + featbonus][line break]";
		if dice + bonus + featbonus > 12 + ( ( dex entry - 10 ) / 2 ):
			say "     You deftly dodge the blow. ";
		else:
			let dammy be 8;
			if hardmode is true:
				increase dammy by ( square root of lev entry );
			decrease HP of Player by dammy;
			say "     You are smacked right in the face, and you groan as you take [dammy] from the attack.";
		say "     Seems that the plague did more than give this toy a set of genitals, it also gave it life. As you ready yourself for combat, you once again prevent yourself from laughing due to the toy rearing up for a powerful roar, only for a cute squeak to come out.";

to say LoseToDragonPoolToy:
	if HP of Player > 0:	[Player submitted]
		say "     Instead of fighting the large beast toy, you decide to lower your guard and present yourself. The toy looks at you with its lifeless eyes for a few moments, trying to decide if you're attempting to trick it. After it feels assured enough that you're serious about letting it have its way with you, it moves closer to begin the fun.";
	if vorelevel > 1 and scalevalue of Player < 5 and (a random chance of 1 in 4 succeeds or (player is kinky and a random chance of 1 in 3 succeeds)):	[Oral Vore]
		say "     Between the awkward movements the creature makes as it 'walks' due to its fins for legs, and the fact that with each movement a squeak lets out from the dragon, you try your best not to laugh as the creature works its way towards you. The creature seems displeased with you finding enjoyment in its plight, or at least you think it seems displeased if the squeak of a roar is any indication. The beast charges at you once more, but having no will to fight anymore, you can only wait as it finally reaches you. It huffs angrily, squeaking noisily in your face before biting down on your head. Having no real teeth, the bite does not hurt, but it does feel awkward to be engulfed by a plastic maw. The beast doesn't seem to be satisfied with just your head as it soon starts pulling in more and more of you inside. Squirming does not help though, only enticing it to swallow you faster.";
		say "     Before you know it, you are completely taken into the monster and sliding down its lengthy neck. After a few moments, you're deposited into what appears to be some sort of stomach sack. You press firmly against the walls of your plastic prison, feeling them push out but not all that far. Looking around, you cannot seem to locate the tube that dumped you into here. Before you can locate any means of escape, you can hear the hissing of air escaping the monster, meanwhile the prison seems to get smaller by the second. Starting to freak out, you start punching and kicking your confines, but soon, the prison forms fittingly around your entire frame. You're unable to do anything for a few minutes as you hear your captor move about. Soon, your eyes are able to see something other than plastic walls as the head of the beast slides over yours. You feel a tug on your arm, then another on your leg, and then a third forcing your head to turn.";
		WaitLineBreak;
		say "     The beast has not only swallowed you, but has shrunk itself to put itself on you like a suit, and you are now literally looking through its eyes. The creature begins to force you to move, wandering the area as it searches for something. Walking along the edge of the beach, it soon finds exactly what it is looking for as you see a group of Bottlenose Toys laughing and playing with each other. The beast that is holding you captive lets out a squeak to alert them of your presence, to which they all look at your oversexualized body with this 'suit' on. Walking over, it grabs one of the girls, spinning them around, and instantly impaling her on its hard, inflatable draconic member. You feel yourself thrusting away at the girl, but feel none of the pleasure of penetrating her. You are forced to watch as this strange beast pounds away at her sex mercilessly before pumping her full of liquid plastic instead of cum. But that is not the end of it. You are forced to spin around and look at the rest of the flock of girls... This could take a while.";
		say "     You spend a long time watching as the toy breeds each of the girls tirelessly before the last one falls, and the toy lets out a triumphant squeak. It walks you both back to the pile you found it before carelessly spewing you out of its mouth, luckily depositing you onto the soft sand as it lays down to rest, your own aching body tired and sore from the constant thrusting you were made to perform.";
		LibidoBoost 20;
	else if ublevel > 1 and scalevalue of Player < 5 and (a random chance of 1 in 4 succeeds or (player is kinky and a random chance of 1 in 3 succeeds)):	[Unbirth Bound State]
		say "     As you pant, lying in pure defeat from the ridiculous toy, you raise a curious eyebrow as the beast turns its back to you, seeming to let you escape. But this thought is only for a fleeting moment as the beast soon lowers its backside down atop you, taking your entire head into its female sex in a single instant. Struggle as you may, you are too worn down from the fight to be able to properly resist the monster as it slowly sinks more and more of your being into its female genitals. Before long, you feel your feet being sucked in, the last of you now inside of the dragon. You squirm around as best you can given your tight confines. It isn't long before you hear an odd sound. Looking around in the dimly glowing insides of the monster, you're able to see some strange yellow spots spreading around. A quick prod of one spot near your finger confirms that it's rather hard compared to the soft latex innards of the pool toy. It appears the beast is trying to put you in an egg! What will you do?";
		LibidoBoost 20;
		wait for any key;
		now boundsegment is 1;
		DragonPoolToyBind;
	else if Player is female:	[Vaginal sex]
		say "     The beast takes its time looking over your prone figure before letting out a series of happy squeaks as it finds what it is looking for. It knocks you onto your stomach before jumping somewhat clumsily on top of you. Given its sheer size, you expect to be crushed instantly, but being full of air, it is fairly light as it lay atop you, shifting nonstop. You wonder what it is doing before you soon have your answer as you feel a prod against your cunt. The beast clearly is eager to use a pussy, and it has found one. It wastes no time in thrusting desperately to try and begin its sexual assault on your much smaller body, though most of the thrusts miss their mark entirely before one finally manages to sink part of the tip into your sex. Before you can prepare yourself, the toy thrusts in extra hard, sinking as much of its tool into you as your body can take.";
		say "     Given how [if Cunt Depth of Player < 11]small you are, you're unable to take more than half of the cock[else if Cunt Depth of Player < 20]positively deep your sex goes, you find it fairly easy to take most of his tool, practically the entirety of it[else]impossibly deep you are, you completely engulf his cock in your depths, making the beast squeak happily that it found a mate that could take it so completely[end if]. Wasting no time, the monster begins to pound away in earnest, seeking to breed its newest victim. Each thrust quickly becomes more brutal and bestial than the last, soon having you pushed into the sand below you despite the lack of real weight above you. It does not take long for the beast to reach its climax though as you feel a warm liquid rush into your waiting womb. You begin to wonder which of you two is really the inflatable as you are forced to watch your belly swell before your eyes, soon looking like a woman deep into pregnancy with quadruplets. After what seems like an hour, you finally feel a stop to the increasing pressure in your womb. Looking up, you notice that the toy has shrunken to an easily manageable size, to which you throw it as far as you can. Squatting, you push out as much of the liquid plastic cum as you can onto the ground before leaving, hoping that the fact that it isn't real sperm will prevent you from getting knocked up.[impregchance]";
		LibidoLoss 40;
		CreatureSexAftermath "Player" receives "PussyFuck" from "Dragon Pool Toy";
	else:	[Anal]
		say "     The beast takes its time looking over your prone figure before squeaking out in frustration, clearly not finding what it is looking for. It knocks you onto your stomach before jumping somewhat clumsily on top of you. Given its sheer size, you expect to be crushed instantly, but being full of air, it is fairly light as it lay atop you, shifting nonstop. You wonder what it is doing before you soon have your answer as you feel a prod against your bum. The beast clearly is eager to use a hole, and it has found one. You bite your lip as the massive member pokes your rectum time and again before finally finding purchase as the tight hole gives in and open up to allow a bit of the dragon in. Given the inch, the monster takes the mile as it lets out its squeaky roar and thrusts in hard, giving you no time to get accustomed to its girth as it forces you to take as much of the plasticky tool as your body can handle at once. The pool toy remains still for a moment before beginning to thrust hard, over and over, as it seeks to breed your tight hole, each thrust more bestial than the last.";
		say "     You're forced to take the brutal breeding for what seems like hours as it pounds away. After what seems like an eternity, you start to detect a strange scent, and you can feel the plastic-like, balloony member start pulsing in your tail hole. The pool toy must be getting close to cumming. With one final squeaky roar of triumph, the beast begins to pump its load into your gut, massive bout after massive bout of a liquid plastic-like substance gushing into your colon. The dragon continues to pump its cum into you for a few minutes, the barely noticeable weight becoming lighter by the second as your stomach grows from the burden it must contain before you finally feel it stop. Looking up, the once massive pool toy has now shrunken to a much smaller size and is clearly unable to move by its own devices in its current state. Throwing the deflated toy off of yourself, you groan as you take your gravid belly, pushing out as much of the cum out of you as you can before you leave.";
		LibidoLoss 40;
		CreatureSexAftermath "Player" receives "AssFuck" from "Dragon Pool Toy";

to say BeatTheDragonPoolToy:
	say "     The dragon starts to deflate under your assault, forcing it to retreat and leave you to your exploration.";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
	add "Dragon Pool Toy" to infections of ReptileList;
	add "Dragon Pool Toy" to infections of FurryList;
	add "Dragon Pool Toy" to infections of ToyList;
	add "Dragon Pool Toy" to infections of HermList;
	add "Dragon Pool Toy" to infections of KnottedCockList;
	add "Dragon Pool Toy" to infections of InternalCockList;
	add "Dragon Pool Toy" to infections of BipedalList;
	add "Dragon Pool Toy" to infections of TailList;
	add "Dragon Pool Toy" to infections of TailweaponList;
	now Name entry is "Dragon Pool Toy";
	now enemy title entry is ""; [name of the encountered creature at combat start - "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of][or][in random order].";
	now defeated entry is "[BeatTheDragonPoolToy]";
	now victory entry is "[LoseToDragonPoolToy]";
	now desc entry is "[DragonPoolToyDesc]";
	now face entry is "very dragon-like, with a snout full of sharp teeth, a long serpentine tongue, pointed fin-like ears, and a cute pair of horns";
	now body entry is "slender and fit, with wide hips and a narrow waist. It's perfect for swimming or having a good romp in the proverbial hay";
	now skin entry is "what looks like to be scales at a glance, but it is actually smooth and feels almost like plastic. The dark-purple hue glistens softly in the light";
	now tail entry is "A long, reptilian tail with a fin at the tip adorns your rump. Whenever you aren't paying attention to it, the tail seems to have a mind of its own, either swaying back and forth playfully or raising itself to allows those behind you a look at your rump and sex";
	now cock entry is "is draconic in nature. Ridges line the shaft to help please your partner, and a bulbous knot adorns the base so that you can tie with whomever you are currently playing with";
	now face change entry is "you feel a tugging sensation, and you watch in awe as a snout starts pushing out. You can feel your teeth sharpening, becoming like razors. As soon as that finishes, another change begins, and you feel a cute pair of horns pushing out of the back of your head. The last to change are your ears, which become pointed and get a fin-like appearance";
	now body change entry is "you slump to the ground with pain. It isn't intense, but certainly present. After a few moments, the pain subsides. You look down and are greeted with a rather fit body, with a tight waist and slender figure. The only thing out of place are the wide hips, as if to say you'd be birthing... a lot";
	now skin change entry is "your chest suddenly feels irritated and itchy. Going to scratch it, you find that it feels... different. Removing any obstacles and looking at the spot, your jaw drops as a purple scaly-looking patch of skin that feels almost like plastic sits where you were scratching, but you don't have long to ponder as it suddenly begins to spread rapidly, consuming the entirety of your chest in moments. The flood of purple moves at an astounding rate, quickly consuming your entire body";
	now ass change entry is "it begins to get warm for no apparent reason. You find yourself dropping to all fours and presenting your rear like a bitch-in-heat to whomever may be watching. You pant and groan in needy agony as you feel something large starting to emerge just above your rear, but just like how the sensation had suddenly started, it stops. Standing up, you find a new weight on your backside as a large tail with a dorsal fin at the tip helps you keep your balance";
	now cock change entry is "it tingles and instantly gets hard. You can't help but to begin masturbating, but no matter how much you try to pleasure yourself, climax seems just out of reach from your changing member as ridges begin to line the shaft. You growl in desperation before suddenly crying out in release as you cum, a knot suddenly forming at the base so that you can tie to any partner you desire";
	now str entry is 15;
	now dex entry is 20;
	now sta entry is 13;
	now per entry is 14;
	now int entry is 9;
	now cha entry is 9;
	now sex entry is "Herm";
	now HP entry is 100;
	now lev entry is 10;
	now wdam entry is 10;
	now area entry is "Beach";
	now Cock Count entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 9; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 2; [ Size of balls apparently ;) sneaky Nuku (big balls are underrated.)]
	now Nipple Count entry is 2; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 4; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 20;
	now Cunt Tightness entry is 6;
	now libido entry is 0; [ Amount player Libido will go up if defeated ]
	now loot entry is "";
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now scale entry is 5; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "draconic";
	now type entry is "draconic";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default"; [ Row used to designate any special combat features, "default" for standard combat. ]
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



Section 3 - Bound State

to DragonPoolToyBind:		[Modified bound state that does not use lust or sanity]
	now calcnumber is -1;
	let Trixieexit be 0;
	while Trixieexit is 0:
		if clearnomore is 0, clear the screen;
		now obliging is true;
		checkboundrecover;
		if boundcounter is 3:
			say "     You groan as the yellow soon completely encapsulates you, no amount of the purple innards of the dragon's cunt visible anymore. Knocking on the object confirms your suspicions. The dragon has created some sort of plastic egg around you, golden in color. You're unsure what the purpose of this egg is, but it cannot be good. Good news is, you hear a soft thump as your surroundings shake. The beast must have laid you and is walking away, if the muffled squeaks are any indication.";
			now boundsegment is 0;
			now boundcounter is 0;
			now struggleatt is 0;
		if boundsegment is 1:
			say "     You're stuck inside of the dragon's cunt. A quick glance around shows some hard yellow spots separate from the walls of the faux vagina are starting to form. You'd best act quick if you don't want to end up in some strange egg. You imagine your only active options are to [bold type]S[roman type]truggle enough until they let you go, or just [if obliging is true][bold type]O[roman type]blige[else][bold type]A[roman type]bide[end if] them.[line break]";
		else:
			say "     You're completely engulfed by some strange golden egg laid by the dragon pool toy. The plastic is hard but clearly brittle, easy to break through given enough effort. You imagine your only active options are to [bold type]S[roman type]truggle your way out, or just [if obliging is true][bold type]O[roman type]blige[else][bold type]A[roman type]bide[end if] yourself to remain in confinement.[line break]";
		now enduring is false;
		say "[bold type]1[roman type] - [link]Struggle[as]1[end link][line break][run paragraph on]";
		say "[bold type]2[roman type] - [link][if obliging is true]Oblige[else]Abide[end if][as]2[end link][line break][run paragraph on]";
		say "Struggle: [DragonPoolToyStruggleBar][line break][run paragraph on]";
		let k be 0;
		now keychar is "INVALID";
		change the text of the player's command to "";
		while keychar is "INVALID":
			now k is the chosen letter;
			translate k;
			if the player's command matches "[number]":
				now keychar is "[number understood]";
		if keychar in lower case exactly matches the text "s" or keychar in lower case exactly matches the text "1" or keychar in lower case exactly matches the text "return" or keychar in lower case matches the text "struggle":
			LineBreak;
			increase struggleatt by 1;
			if boundsegment is 1:
				if struggleatt is 1:
					say "     You squirm about furiously, hoping that with enough effort, you will make your way back to the entrance.";
					if a random chance of 1 in 5 succeeds:
						infect;
					wait for any key;
				else:
					say "     With enough struggling, you feel your feet make their way out of the dragon. Using all of your might, you manage to wiggle out your hands as well and soon push yourself free. The dragon lets out a sad squeak before waddling away, clearly not interested in trying to put you back in... this time.";
					cleanboundmemory;
					now Trixieexit is 1;
					follow the turnpass rule;
			else:
				if struggleatt < 3:
					say "     You use what little room you have available in your housing to punch and kick at a spot in the wall of the egg, hearing soft cracks with each smack.";
					if a random chance of 2 in 5 succeeds:
						infect;
					wait for any key;
				else:
					say "     You let out a triumphant cry of freedom as the shell finally gives way, allowing [if daytimer is day]sunlight[else]moonlight[end if] to pour in. You continue to smash away at the egg, eager to be free now that the hole in the shell makes it more simple to damage your confines. Soon enough, you spill out, panting in utter exhaustion before taking stock of yourself.";
					cleanboundmemory;
					now Trixieexit is 1;
					follow the turnpass rule;
			next;
		else if (obliging is true and (keychar in lower case exactly matches the text "o" or keychar in lower case matches the text "oblige")) or (obliging is false and (keychar in lower case exactly matches the text "a" or keychar in lower case matches the text "abide")) or keychar in lower case exactly matches the text "2":
			LineBreak;
			if obliging is true:
				if boundsegment is 1:
					say "     You decide that you are actually in a spot that you would like to be. Maybe being in an egg wouldn't be so bad.";
					LibidoBoost 10;
					if a random chance of 2 in 5 succeeds:
						infect;
					increase boundcounter by 1;
				else:
					say "     You decide to sit in the strange egg. Surely there is nothing bad that can happen. Everything is fine. It is actually rather cozy in here.";
					LibidoBoost 10;
					if a random chance of 3 in 5 succeeds:
						infect;
			else:
				say "     Invalid command. Please report this error on the Discord server.";
			LineBreak;
			wait for any key;
			next;
		else:
			LineBreak;
			say "     Invalid command. Please report this error on the Discord server.";
			cleanboundmemory;
			now Trixieexit is 1;
			follow the turnpass rule;
		say "Invalid action.";


to say DragonPoolToyStruggleBar:
	if boundsegment is 1:
		say "[bracket]-[if struggleatt > 0][bold type]X[roman type][else]-[end if]";
	else:
		say "[bracket]-[if struggleatt > 1][bold type]X[roman type][else]-[end if][if struggleatt > 0][bold type]X[roman type][else]-[end if][close bracket][line break][run paragraph on]";


Dragon Pool Toy ends here.
