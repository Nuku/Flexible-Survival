Version 2 of Goo Girl by Nuku Valente begins here.
[ Version 1.0 - Original file, unknown content - Unknown author                 ]
[ Version 1.1 - Taken from story.ni file and given dedicated file - Blue Bishop ]
[ Version 2.0 - Overhaul - Blue Bishop                                          ]
[ Version 2.1 - Typo, grammar, and parsing cleanup - Song                       ]

"Adds a Goo Girl creature to Flexible Survival's Wandering Monsters table"

Section 1 - Creature Responses

when play begins:
	add { "Goo Girl" } to infections of girl;
	add { "Goo Girl" } to infections of humanoid;

goocolor is a number that varies.[@Tag:NotSaved]

to say goovictory:
	if inasituation is true:
		stop the action;
	if HP of Player > 0:
		say "     Surrendering to the goo girl, you allow the creature to move in closer, looking as giddy as ever. '[one of]Oh[or]Hm[or]Ah[at random], [one of]eager for a bit of fun, are we?[run paragraph on][or]it's play time![run paragraph on][or]how nice of you to offer![run paragraph on][at random]' ";
	else:
		say "     Losing the will to fight, you fall to your knees, allowing the creature to move in closer, clearly giddy over defeating you. '[one of]Hmpf[or]Ha[or]Oh[at random], [one of]that'll show you[or]I hope you like to play[or]this'll be fun[at random]!' ";
	say "Wrapping her undulating arms around your [if scalevalue of Player < 2]smaller, [else if scalevalue of Player > 3]larger, [end if][bodydesc of Player] form, her transparent appendages carefully worm around, fondling around lewdly and easily prying away any obstruction in her way.";
	if Player is male and (a random chance of 1 in 2 succeeds or (player is not female and anallevel < 3)):
		say "     [if HP of Player < 1 and player is not submissive]Forcing[else]Bringing[end if] you to lay on your back, she writhes her way on top of you, crotch enveloped in her amorphous base. Positioned such that her crotch meets yours, your [cock size desc of Player] dick[if Cock Count of Player > 1]s are[else] is[end if] visibly trapped within her transparent torso[if Cock Length of Player > 14 and Cock Count of Player is 1], visibly bulging to contain it[else if Cock Length of Player > 10 and Cock Count of Player > 1], visibly bulging to contain them[end if]. Her gelatinous form eagerly kneading the whole of your length[smn], it's no effort for her to drive you to full arousal.";
		say "     '[one of]I think somebody likes that[or]We're just getting started here[or]You should see the look on your face[at random]!' Teasing you, [if Player is female and anallevel is 3]you feel her malleable mass flood your ass and cunt[sfn], further stimulating[else if Player is female]you feel her malleable mass flood your cunt[sfn], further stimulating[else if anallevel is 3]you feel her malleable mass flood your ass, further stimulating[else]she caresses your [bodytype of Player] form, offering gentle affection to[end if] you. Dark sewers filled with the wet sounds of her writhing body against your [bodydesc of Player] frame, you're made to watch on as she grins at you, taking a certain joy in seeing you squirm against her overwhelming touch.";
		say "     It doesn't take long before you finally cry out in bliss, firing off your [Cum Load Size of Player] load into her torso, where you might see it fill her. [if Ball Size of Player > 5]Moaning weakly, she visibly bulges to contain your impressive release, her body eagerly milking[else]Moaning softly, her body eagerly milks[end if] you dry of every last drop you have to offer. She continues to stimulate you for a while longer until it's clear you can offer her no more.";
		say "     '[one of]Hmm[or]Mm[or]Ah[at random], [if Ball Size of Player > 5][one of]it looks like I'm stuck here for a while[or]I feel a little dizzy after all that[or]this is going to go straight to my hips[at random][else][one of]that was fun[or]that's just what I needed[or]we should play again, soon[at random][end if]!' Giggling at you, you're allowed to pull yourself free of her[if Ball Size of Player > 5] bloated[end if] mass before she disappears into the darkness, taking a while to clear your head and clean up the mess she left behind.";
	else if Player is female:
		say "     Pinning you to the ground, you feel the creature's gooey digits softly fondle your cunt[sfn]. Not intent on teasing you for too long, you immediately feel them forced past [if Cunt Count of Player > 1]the supple lips of one of them[else]your supple lips[end if]. [if Cunt Count of Player > 2]Arm becoming formless under the pressure of your [cunt size desc of Player] portal, it forces its way into your other holes, soon stimulating them simultaneously[else if Cunt Count of Player is 2]Arm becoming formless under the pressure of your [cunt size desc of Player] portal, it forces its way into your other hole, soon stimulating them simultaneously[else if anallevel is 3]Arm becoming formless under the pressure of your [cunt size desc of Player] hole, it forces its way past your anal ring, soon stimulating them simultaneously[else]Arm becoming formless under the pressure of your [cunt size desc of Player] hole, you feel its warm touch coating your ass[end if].";
		say "     '[one of]I like it when they squirm like that[or]I think somebody's enjoying themselves[or]Oh, this is fun[at random]!' Giggling as you writhe against her deeply penetrating touch, she watches on, loud squelching from each motion echoing through the damp sewers. [if Player is male]Your unattended dick[smn] wave[smv] against the open air, strings of precum sticking to your lower torso and the ground below[else]Your puss[yfn] drip[sfv] against her persisting assault, juices consumed by her malleable touch[end if].";
		say "     After being pounded for a fair while, you finally cry out in bliss, [if Player is male]spilling your [Cum Load Size of Player] load against the earth[else]needy hole[sfn] squeezing against the goo girl's touch[end if]. Giggling, she takes every effort to prolong your bliss, pounding your hole[if Cunt Count of Player > 1 or anallevel is 3]s[end if] with persistent determination until it's clear that her new[if scalevalue of Player > 3], big[end if] friend is completely spent. Satisfied with using you so, she pulls her arm free of your [bodytype of Player] form, lightly caressing along its abused[if Player is male] and cum-stained[end if] surface to 'clean' you of any mess - a veneer of her [if tempnum2 is 1]blue[else if tempnum2 is 2]green[else]purple[end if] slime following in its wake - before pulling back.";
		say "     '[one of]Hmm[or]Mm[or]Ah[at random], [one of]I made such a mess[or][if HP of Player < 0]that'll teach you[else]I think you enjoyed that[end if][or]we should play again, soon[at random]!' Giggling at you, she departs, returning to the darkness once more. It takes you a while to recover from the whole ordeal and dry yourself off.";
	else:
		say "     Pinning you to the ground, you feel the creature's gooey digits softly fondle your ass. Not intent on teasing you for too long, you immediately feel them forced past your anal ring. Arm becoming formless under the pressure of your[if scalevalue of Player > 3] large[end if] hole, you feel its warm touch coating your behind.";
		say "     '[one of]I like it when they squirm like that[or]I think somebody's enjoying themselves[or]Oh, this is fun[at random]!' Giggling as you writhe against her deeply penetrating touch, she watches on, loud squelching from each motion echoing through the damp sewers. [if Player is male]Your dick[smn] wave[smv], unattended, against the open air, strings of precum sticking against your lower torso and the ground[else]Your genderless body is set aflame with a seemly insatiable need, causing you to moan weakly[end if].";
		say "     After being pounded for a fair while, you cry out in bliss, [if Player is male]spilling your [Cum Load Size of Player] load against the earth[else]body rigid against the goo girl's touch[end if]. Giggling, she takes every effort to prolong your bliss, pounding your hole with a persistent determination until it's clear that her new[if scalevalue of Player > 3], big[end if] friend is completely spent. Satisfied with using you so, she pulls her arm free of your [bodytype of Player] form, lightly caressing along its abused[if Player is male] and cum-stained[end if] surface to [']clean['] you of any mess - a veneer of her [if tempnum2 is 1]blue[else if tempnum2 is 2]green[else]purple[end if] slime following in its wake - before pulling back.";
		say "     '[one of]Hmm[or]Mm[or]Ah[at random], [one of]I made such a mess[or][if HP of Player < 0]that'll teach you[else]I think you enjoyed that[end if][or]we should play again soon[at random]!' Giggling at you, she departs, returning to the darkness once more. It takes you a while to recover from the whole ordeal and dry yourself off.";
	now tempnum2 is 0;

To say goodefeat:
	if inasituation is true:
		stop the action;
	say "     Fending the goo girl off she reels back, compressing herself lowly before you and pouting in submission";
	if Libido of Player > 30 or "Dominant" is listed in feats of Player:
		say ". Perhaps you could have a bit of fun with her?";
		if Player consents:
			if Player is male and (player is not female or a random chance of 1 in 2 succeeds):
				if Cock Length of Player > 20:
					say "     Slowly approaching the prone, jelly lady, you lower your [cock size desc of Player] dick[smn] to her exposed lips. Some resistance is felt, but you press more firmly, and she begins to spread out around [if Cock Count of Player > 1]one of your tools[else]your tool[end if]. You push further, deeper, marveling at the deliciously tight, snug fit her body offers to your sensitive body. Rearing back, she cries out, lifted entirely from the ground, impaled on your [cock size desc of Player] pole.";
					say "     Your throbbing tool has stretched her round, making her look more like a colored condom than a girl, though her assets do jiggle quite nicely against your raging cock. You grab for them and start to caress, jerking yourself off while teasing the goo girl, and you can feel yourself rising rapidly toward release. Cum billows up your spear, flooding her with your [Cum Load Size of Player] load";
					if Ball Size of Player > 5:
						say ". The huge gobs of it explode into her, making her mouth bulge, then spew out of her, running down her front in a messy drizzle of your virile seed. Her entire form goes murky with the volume of seed you inject into her";
					else:
						say ", gobs of it flooding her transparent form";
					say ". She squirms on your great pole before she melts free of it, becoming a limp pool on the ground before you, worn out from the session.";
				else:
					say "     You expose your eager, [cock size desc of Player] cock[smn] before the girl as you move over her. Your mouth finds a translucent nipple, and a [one of]strawberry[or]grape[or]cherry[at random] flavor dances across your tongue as you suckle firmly. She awakens with a soft moan that raises in pitch as you start to ease[if Cock Count of Player > 1] one of[end if] your firm [cock of Player] tool[smn] into her quivering passage.";
					say "     She rocks up against you, her hands grabbing at your sides, pulling you closer as you thrust faster, harder, her body able to take you with scarcely any effort at all. She trembles as hot honey runs down your length, climaxing powerfully against you. The taste in your mouth seems to grow more intense and the passage holding your cock firmly ripples delightfully. You can feel yourself tensing, then exploding into the jellied female, staining her pristine flesh with blasts of milky gray.";
					say "     As you come down from your high, she kisses you on either cheek, then melts into the ground, gone.";
			else if Player is female:
				say "     Approaching the girl, you reach for her form and grab a hand, rubbing it between your own before pressing it between your thighs. The contact seems to rouse the girl, who blinks open her largely featureless eyes. As if understanding your intent, she smiles all the more and presses up into you. Her warm, thick, hand surges up, spreading you and exploring into your welcoming [cunt size desc of Player] hole[sfn].";
				if Cunt Length of Player > 12:
					say "     She gives a delighted giggle when she notices just how big your passage is, then surges forth. She seems to melt before you as her entire form flows warm and rippling into your waiting body. She fills your trembling folds even as she leaks and penetrates your innermost womb, making your belly become round with her presence. The sensation of being fucked from the inside grows stronger by the moment as your body rocks, your [if Breast Size of Player > 0][breast size desc of Player] breasts[else]body[end if] shuddering as you grab at your now full belly, moaning and almost senseless in the overload of it all.";
					say "     When you regain consciousness, you feel the sensation, but subtly different. Opening your eyes shows the goo girl over you, rocking into you with a gooey shaft, rutting you with wild abandon. Your awakening startles her, however, and she suddenly goes red as if caught in the act. She flows away rapidly.";
				else:
					say "     She fills up your tight sex to the brim, then pushes harder. The feel of her undulating flesh inside of you sends wild spikes of pleasure through your body even as she works at stretching you with every crashing wave she sends against your cervix and along your overstimulated walls. You're soon on the ground under the gooey creature as she works you over. As it becomes too much, she draws from you, reforming to her usual human-like shape. She leans over to kiss your cheek, a soft peck, and she flows away swiftly.";
			else:
				say "     Having no penis or vagina, you settle for molestation. You crouch down beside the female creature and set your hands on her jiggly breasts, kneading them firmly, sure that your caresses will do little harm to the pliable flesh.";
				say "     She comes to with a soft moan, looking up at you with those featureless eyes and reaching for your hands as they wander her front. She guides one down to her winking vulva and presses it firmly. You gently brush along the sensitive flesh, feeling it shudder and jiggle beneath your fingers as you slowly part it and slip a finger into her depths, rubbing your [bodytype of Player] form against her. She arches her back and cries out in delight, pressing your hand closer, a second finger slipping in.";
				say "     Emboldened, you press your fist in easily, her sex gobbling it up, then your forearm, thrusting it into the depths of the jellied girl to her obvious satisfaction. You lose track of yourself, fascinated with her capacity as you shove in the rest of your arm, the area filled with loud squelching sounds.";
				say "     Her wail almost hurts your ears as she seems to have a full body earthquake of an orgasm, your arm and torso drenched in her fluids before she melts beneath you, passing out with that smile on her face, lost to the intense climax. Cleaning yourself off, you go about your business once more.";
		else:
			say "     You decide against it, letting the creature slide off into the dark.";
	else:
		say ". Slowly, the creature slinks back into the darkness, freeing you to go about your business once more.";

to say goodesc:
	setmongender 4; [creature is female]
	choose row MonsterID from Table of Random Critters;
	if "Male Preferred" is listed in feats of Player:
		now sex entry is "Male";
	else if "Herm Preferred" is listed in feats of Player:
		now sex entry is "Both";
	else:
		now sex entry is "Female";
	now tempnum2 is a random number between 1 and 3;
	if inasituation is true:
		stop the action;
	say "     A jiggling girl of [if tempnum2 is 1]blue[else if tempnum2 is 2]green[else]purple[end if] color appears from the darkness, having spotted you. You can see through her, mostly, her gelatin-like flesh tinting the dim light behind her with its lustrous shade. Her upper torso is well defined, with large breasts somehow jiggling just a little more noticeably than the rest of her. Her lower body seems to meld into a grand base of goop just past her thighs, her legs permanently held together. With soft slurping sounds, she propels herself at you like an incoming wave, hands outstretched for you with an unwavering smile.";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Length	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Name entry is "Goo Girl"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of][if Player is male]With a swipe of a flexible hand, she bypasses your clothes, slithering under them to grab at your [cock size desc of Player], [cock of Player] shaft and start squeezing, causing pain and pleasure in equal parts[else if Player is female and Cunt Length of Player < 12]She surges towards you and grabs at your crotch. Her fluid body flows through creases and cracks, finding your [cunt size desc of Player] pussy and diving into it with great zeal, stretching and buzzing harshly, almost making you dizzy with forced pleasure[else if Player is female and Cunt Length of Player > 11]The goo girl grabs at your crotch and suddenly seems to be shrinking. Your [cunt size desc of Player] cunt suddenly sings in pleasure as she flows into you rapidly, making your belly bloat wide for a moment as she fully inhabits your womb before she spills back out in a great, warm rush of thick fluids[else]She swats at you with a flexible hand, bruising you between the legs[end if].[or]She hugs you into her soft bosom. It would be kind of nice if you could breathe![or]A thousand tiny tendrils suddenly spread from her body, slapping at you wildly. It's fortunate that they are not too hard.[at random]";
	now defeated entry is "[goodefeat]";
	now victory entry is "[goovictory]";
	now desc entry is "[goodesc]";
	now face entry is "that of a pretty human's, yet with a curiously disquieting smile"; [ Face. Format as Your face is [face of Player]. ]
	now body entry is "human-like, but melded together just at your thighs, flowing together into a large and bulbous base of [skin of Player] flesh"; [ Body. Format as "Your body is [body of Player]." ]
	now skin entry is "[one of]jellied[or]gelatin-like[or]translucent[at random] [if goocolor is 1]blue[else if goocolor is 2]purple[else]green[end if]"; [ Skin. Format as "Looking at yourself, your body is covered in [skin of Player] skin." ]
	now tail entry is ""; [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "[one of]partially fluid[or]flexibly semi-solid[or]jellied[at random]"; [ Cock. Format as "You have a 'size' [cock of Player] cock." ]
	now face change entry is "you can feel your face reshaping into rather pretty, human proportions. An urge overtakes you and you smile, and never stop"; [ Face TF text. Format as "Your face tingles as [face change entry]." ]
	now body change entry is "[googirlbodychange]"; [ Body TF text, format as "Your body tingles as [body change entry]. ]
	now skin change entry is "[googirlskinchange]"; [ Skin TF text, format as "Your skin tingles as [skin change entry]. ]
	now ass change entry is "you get an odd feeling, but see no change"; [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "your [cock size desc of Player] dick gives a powerful lurch as strange fluid rushes up into it, making it swell a moment before the former color drains, leaving the new, somewhat flexible, gelatin behind. A squeeze confirms that it is still solid enough to get the job done"; [ Cock TF text, format as "Your groin tingles as [cock change entry]." ]
	now str entry is 8;
	now dex entry is 10; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 10; [ These values may be used as part of alternate combat.]
	now per entry is 10;
	now int entry is 10;
	now cha entry is 5;
	now sex entry is "Both"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 30;
	now lev entry is 2; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 3; [ Monster's average damage when attacking. ]
	now area entry is "Mall"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 0; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 6; [ Length in inches infection will make cock grow to if cocks. ]
	now Ball Size entry is 2; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 3; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Length entry is 20; [ Depth in inches of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 20; [ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 40; [ Target libido the infection will rise towards. ]
	now loot entry is "glob of goo"; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 100; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]mutated[or]flowing[or]altered[at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "gelatinous"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own] [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
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


to say googirlbodychange:
	say "your body changes";
	if skinname of Player is "Goo Girl":
		say ". Looking over yourself afterwards, you appear human; however, you feel a strange throbbing building in your shins. Lower legs drawn together, they flow into one another, creating a [skin of Player] base of flesh that goes up to your lower thigh";
	else:
		say ". Looking over yourself afterwards, it seems that you're human! Something feels off about it, however";

to say googirlskinchange:
	let tempnum be goocolor;
	now goocolor is a random number between 0 and 3;
	if goocolor is tempnum, increase goocolor by 1;
	if goocolor is 4, now goocolor is 0;
	say "a ripple of tingles rushes through your entire body as you sink towards the ground, then rise again, wobbling along the way. A glance at a hand shows that you can see right through your now jello-like flesh, [if goocolor is 1]blue[else if goocolor is 2]purple[else]green[end if] in color";
	if bodyname of Player is "Goo Girl":
		say ". Moreover, your lower legs are drawn together, flowing into one another and creating a base of flesh that goes up to your lower thigh";

Section 3 - Endings

when play ends:
	if bodyname of Player is "Goo Girl":
		if humanity of Player < 10:
			say "     With a body of jello, your prospects of benevolent rescue are slim, not that you feel much urge for that anymore anyway. You descend into the darkness and [']greet['] those foolish enough to follow. Your undulating form and increasingly skillful teases draw a few more curious souls to your bosom than might otherwise be tempted to go looking.";
			if Cunt Length of Player > 20:
				say "     One day you capture a woman poking around. You wrestle her to the ground and draw her up into your greedy form. The experience is like one extended orgasm, and her every struggling motion is a spike of sensation. You keep her inside for a month before you release her, but by then the damage is done. What emerges is another goo creature like yourself, and she no longer wishes to leave. You grow to enjoy the company.";
		else:
			say "     Your jello-like form proves to be quite a curiosity, especially seeing how it seems immune to the usual signs of aging. You discover that those you absorb for a few hours can be renewed within your undulating form, and you offer the service out to the wealthy, who enjoy a false second youth. They don't live any longer, but they do it as a fit and healthy twenty-something-year-old body.";

Goo Girl ends here.
