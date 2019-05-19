Version 2 of Wildcat by Stripes begins here.
[Version 2.1 - Tweaks to loss scene probabilities - Stripes]

"Adds a Wildcat creature to Flexible Survival's Wandering Monsters table, with impreg chance"


Section 1 - Creature Responses

when play begins:
	add { "Wildcat" } to infections of hermaphrodite;
	add { "Wildcat" } to infections of furry;

to say wildcatdesc:
	setmongender 5; [creature is herm]
	say "     [if showlocale is true]Emerging from a pile of junk, rises[else]You are suddenly ambushed by[end if] a looming, feline form. This gigantic feline is over seven feet tall and about five wide at the shoulders, [if scalevalue of Player < 4]it towers over your smaller form[else if scalevalue of Player > 4]it's clearly the largest thing around here, smaller to you as it may be[else if scalevalue of Player is 4]it approximately matches your own size[end if]. Her head is shaped much like a housecat's, but much larger and more feral. She has some striped markings and [one of]a notched ear[or]a scarred muzzle[or]a scratched nose[or]is using a Buick hood ornament as an eyepatch[at random]. The big kitty has loose pieces of junk, mostly car panels, parts and hubcaps strapped on to act as both camouflage and armor over her brown and rust-colored fur. She has warped and bent a car hood into a chestplate, covering her large breasts and midriff. Given the marks on it and the size of her massive paws, she probably did it by hand. Looking down further, you spot another bulging plate between her legs. Given you experience with creatures in this city, you don't need to see underneath it to know what's waiting there for you if this wildcat has her way.";


to say losetowildcat:
	if HP of Player > 0:
		say "     Offering up your submission to the beast, her demeanor shifts to one of smug approval, clearly - by her wagering - illustrating your understanding of who's the top feline [if showlocale is true]of this junkyard[else]around here[end if]. Not intent on rewarding your compliance with being too easy on you, she immediately pins your[if scalevalue of Player > 4] larger[end if] form against [if showlocale is true and scalevalue of Player < 5] the hood of a wrecked car[else]the ground[end if]. ";
	else:
		say "     With one final effort, she [if scalevalue of Player < 4]grapples your weakened form and throw you upon the ground,[else]strikes you across the brow, causing you to crumple to the floor and[end if] leaving you in an exhausted, dazed heap. With no further protest you might offer against her will, she grabs hold of you[if scalevalue of Player < 4] once more[end if] and [if showlocale is true and scalevalue of Player < 5]pins you against the hood of a nearby wrecked car, exposing you before the feline[else]exposes yourself before the feline[end if]. ";
	say "Unbuckling her makeshift attire, she bares her ample breasts and sizeable cock before you, already clearly aroused in anticipation for what is to follow.";
	if Player is female and Cunt Depth of Player > 7 and a random chance of 1 in 2 succeeds:
		say "     With a firm assertion of her strength, she pulls you against her ample bosom, your senses quickly made aware of her ploy as the feline's impressive tool probes [if Cunt Count of Player > 1]one of your exposed cunts[else]your exposed cunt[end if]. [if HP of Player < 1 and player is not submissive]Instinctively, you muster what protests your fatigued form might offer, but your discontent only incurs the dissuasion of her sharp claws as they dig into your back, forcing you to comply[else]Compelled by your own lust, your lips would confer their tainted reassurance as they embrace one of her large nipples, such a submissive gesture rewarded by the beast's pleased rumbles[end if]. The feline's organ descending upon the folds of your flesh, a [if Cunt Depth of Player < 13]low mrowl escaping her lips as she forces the rod[else]soft mewl escaping her lips as she thrusts her rod[end if] deeper with [if HP of Player < 1 and player is not submissive]little regard to your weak resistance[else]a barely restrained need[end if].";
		say "     [if showlocale is true and scalevalue of Player < 5]Car loudly creaking against[else]Frame ground firmly against the earth as it abides[end if] the feline's rising fervor, [if scalevalue of Player < 3]the ponderous scale of her dick bulges visibly from your tiny frame[else if scalevalue of Player is 3]you can barely contain the ponderous scale of her dick[else]her dick's soft barbs torment you further[end if] as she continues to pound your stuffed hole. [if HP of Player < 1 and player is not submissive]Howling in wanton passion, you writhe impotently against her tightening hold, compelling within you a fear that you might suffocate[else]Nursing from her impressive offerings, her tainted, rust-tinged cream only compels your wanton desire further[end if]. This persistent, wild [if HP of Player < 1 and player is not submissive]abuse[else]sex[end if] continues for some measure of time before ";
		if Libido of Player > 33:
			say "you cry out in bliss, [if Player is male]your own, [cock size desc of Player] cock[smn] staining her soft fur with your wasted seed[else][cunt size desc of Player] cunt tightening against that slick tool out of a primal greed[end if], and compelling your [if HP of Player < 1 and player is not submissive]captor[else]mate[end if] to follow suit, womb rapidly flooded with a torrent of the beast's thick, virile cum.";
		else:
			say "your [if HP of Player < 1 and player is not submissive]captor[else]mate[end if] moans out in bliss, womb rapidly flooded with a torrent of the beast's thick, virile cum, and compelling you to soon follow suit, [if Player is male]your own, [cock size desc of Player] cock[smn] staining her soft fur with your wasted seed[else][cunt size desc of Player] cunt tightening against that slick tool out of a primal greed[end if].";
		say "     Heavy balls relieved of their payload, she [if HP of Player < 1 and player is not submissive]wrenches[else]pulls[end if] herself free of your hole, its slicked departure an audible punctuation to her perverse [if HP of Player < 1 and player is not submissive]abuse[else]deed[end if] before leaving you as you are: a [if HP of Player < 1 and player is not submissive]used[else]spent[end if] pile left leaking the feline's white fluid[if showlocale is true and scalevalue of Player < 5] atop the hood of a now further-wrecked vehicle[else], exposed to the open air[end if]. Eventually, you regain what mental faculties you can muster before heading back out[if showlocale is true] into the junkyard[end if].[impregchance]";
	else if (scalevalue of Player > 2 or player is twistcapped) and ((player is female and anallevel is 3) or Cunt Count of Player is 0) and ((anallevel is 3 and a random chance of 1 in 2 succeeds) or (anallevel is 2 and a random chance of 1 in 4 succeeds)):
		say "     With a firm assertion of her strength, she pulls you against her ample bosom, your senses quickly made aware of her ploy as the feline's impressive tool probes your exposed anal ring. [if HP of Player < 1 and player is not submissive]Instinctively, you muster what protests your fatigued form might offer, but your discontent only incurs the dissuasion of her sharp claws as they dig into your back, forcing you to comply[else]Compelled by your own lust, your lips would confer their tainted reassurance as they embrace one of her large nipples, such a submissive gesture rewarded by the beast's pleased rumbles[end if]. The feline's organ descending upon your tight pucker, a [if scalevalue of Player < 4]low mrowl escaping her lips as she forces the rod[else]soft mewl escaping her lips as she thrusts her rod[end if] deeper with [if HP of Player < 1 and player is not submissive]little regard to your weak resistance[else]a barely restrained need[end if].";
		say "     [if showlocale is true and scalevalue of Player < 5]Car loudly creaking against[else]Frame ground firmly against the earth as it abides[end if] the feline's rising fervor, [if scalevalue of Player < 3]the ponderous scale of her dick bulges visibly from your tiny frame[else if scalevalue of Player is 3]you can barely contain the ponderous scale of her dick[else]her dick's soft barbs torment you further[end if] as she continues to pound your stuffed tailpipe. [if HP of Player < 1 and player is not submissive]Howling in wanton passion, you writhe impotently against her tightening hold, compelling within you a fear that you might suffocate[else]Nursing from her impressive offerings, her tainted, rust-tinged cream only compels your wanton desire further[end if]. This persistent, wild [if HP of Player < 1 and player is not submissive]abuse[else]sex[end if] continues for some measure of time before ";
		if Libido of Player > 45 and player is not neuter:
			say "you cry out in bliss, [if Player is male]your own, [cock size desc of Player] cock[smn] staining her soft fur with your wasted seed[else][cunt size desc of Player] cunt[sfn] oozing your spent honey, staining her soft fur[end if], and compelling your [if HP of Player < 1 and player is not submissive]captor[else]mate[end if] to follow suit, bowels rapidly flooded with a torrent of the beast's thick, virile cum.";
		else:
			say "your [if HP of Player < 1 and player is not submissive]captor[else]mate[end if] moans out in bliss, bowels rapidly flooded with a torrent of the beast's thick, virile cum, ";
			if Player is not neuter:
				say "compelling you to soon follow suit, [if Player is male]your own, [cock size desc of Player] cock[smn] staining her soft fur with your wasted seed[else][cunt size desc of Player] cunt[sfn] oozing your spent honey, staining her soft fur[end if].";
			else:
				say "tormenting you with your own, barely-satiable need.";
		say "     Heavy balls relieved of their payload, she [if HP of Player < 1 and player is not submissive]wrenches[else]pulls[end if] herself free of your hole, its slicked departure an audible punctuation to her perverse [if HP of Player < 1 and player is not submissive]abuse[else]deed[end if] before leaving you as you are: a [if HP of Player < 1 and player is not submissive]used[else]spent[end if] pile left leaking the feline's white fluid[if showlocale is true and scalevalue of Player < 5] atop the hood of a now further-wrecked vehicle[else], exposed to the open air[end if]. Eventually, you regain what mental faculties you can muster before heading back out[if showlocale is true] into the junkyard[end if].[mimpregchance]";
	else if BodyName of Player is "Wildcat" and player is male and a random chance of 1 in 2 succeeds:
		say "     Sharp claws trace across your [bodytype of Player] frame, [if HP of Player < 1]an assertion of her dominion[else]briefly teasing you[end if] before her paw descends upon your exposed, [cock size desc of Player] dick[smn]. She offers up an approving purr[if HP of Player < 1], feigning a measure of tenderness[end if] as she compels you to arousal[if HP of Player < 1 and player is not submissive] against your better judgment[end if], her influence [if HP of Player < 1 and player is not submissive]eventually[else]expediently[end if] rewarded. Doubtlessly not a manner of creature to take its time, you watch on as the feline pulls herself [if showlocale is true]onto the car as well, the beleaguered junk sagging with an audible creak under your shared weight[else]on top of you[end if], aiming [if Cock Count of Player > 1]one of your cocks[else]your cock[end if] for her feminine portal. View obstructed by her own impressive organ, you can only feel her endeavors as she slowly sinks its head within the folds of her supple flesh.";
		say "     [if HP of Player < 1 and player is not submissive]A rigid, conflicted mess as you are, contesting the tainted affection the beast would inflict upon you, her talons pin you against the vehicle[else]Compelled by your own tainted need, you muster a measure of reciprocation, lifting your arms to caress the beast's voluptuous breasts, much to her audible approval[end if]. [if Cock Length of Player > 12]Only requiring but a brief moment to acclimate to your impressive organ[else]Enveloping your organ with ease[end if], she's quick to rock herself against your[if HP of Player < 1] battered[end if] form, [if showlocale is true]automobile groaning with[else]her moans twisted punctuation for[end if] each fervent descent, the [if daytimer is day]day[else]night[end if] air is quickly filled with the sounds of wild sex.";
		if Libido of Player > 33:
			say "     Eager to [if HP of Player < 1]exact her payment for your trespass[else]abide your tribute[end if], you can't help but soon find yourself crying out in bliss, flooding the depths of the feline, [if Cock Count of Player > 2]its exposed brothers staining your entwined nethers, and [else if Cock Count of Player is 2]its exposed brother staining your entwined nethers, and [end if]her own orgasm soon following thereafter. Pumping her bobbing dick madly, her climax is made glaringly apparent when you're doused by a torrent of the beast's thick cum, greedy cunt a noose's hold around your dick in the wake of this.";
		else:
			say "     Pumping her bobbing dick madly, her inevitable climax is made glaringly apparent when you're doused by a torrent of the beast's thick cum, greedy cunt a noose's hold around your dick in the wake of this, eager to [if HP of Player < 1]exact her payment for your trespass[else]abide your tribute[end if]. With such tainted influence as this you can't help but quickly find your own bliss, flooding the depths of the feline[if Cock Count of Player > 2], its exposed brothers staining your entwined nethers, and[else if Cock Count of Player is 2], its exposed brother staining your entwined nethers[end if].";
		say "     Satisfied[if HP of Player < 1] with your subjugation[end if], she pulls herself free of you[if showlocale is true], deep dent left in the wreck as a result of this romp[end if]. Her inevitable departure offers you a moment to recover from the ordeal, cleaning off the mess she's made in her wake before you also return from whence you came.";
	else:
		say "     Shifting to sit atop you[if showlocale is true and scalevalue of Player < 5], the car sags further under the burden of her weight as[end if] you are offered up a much more intimate presentation of the feline's impressive tool, already oozing beads of her thick fluids in excitement[if HP of Player < 1 and player is not submissive]. Instinctively, you try to push your free of her oppressive weight, compelling your captor to pull your head firmly against you, sharp talons tracing the back of your neck in illustration of what might follow should you fail to comply[end if]. ";
		if HP of Player > 0 or player is submissive:
			say "[if scalevalue of Player < 4]The thing is rather intimidating for someone of your size, but your caution is only brief before you're[else]Proud rod offered before you, you're almost immediately[end if] compelled to caress along its throbbing length with your tongue, beast offering up a soft purr as regard for your wanton affection. ";
		say "Eventually, you're [if HP of Player < 1 and player is not submissive]forced[else]compelled[end if] to envelop the dick's head within your lips [if scalevalue of Player > 3]with much[else if scalevalue of Player is 3]with some[else]without[end if] difficulty, tainted, heady musk compelling [if Player is not neuter]you into arousal[else]your own, insatiable lust[end if].";
		say "     [if HP of Player < 1 and player is not submissive]Forcibly pulling[else]Twisted need compelling[end if] you to engulf [if scalevalue of Player < 4]each progressive inch of the organ with an agonizing desire[else if scalevalue of Player is 4]the organ until not so much as an inch remains exposed[else]the organ in its entirety almost immediately[end if], [if HP of Player < 1 and player is not submissive]your imposed endeavors rigid and conflicted as you're made to pleasure this beast[else]your tongue caresses the beast's rigid, throbbing length with an impish glee[end if]. She offers up [if HP of Player < 1 and player is not submissive]low mrowls[else]purring rumbles[end if] as her response, the taste of her emergent pre driving your own lust further[if HP of Player < 1 and player is not submissive] against what better judgment you might have wielded prior[end if]. [if Player is male]Unattended dick[smn] grinding against the feline's soft fur[else if Player is female]Unattended cunt[sfn] staining the feline's soft fur with an agonizing desire[else]The feline's cunt grinding firmly against your genderless frame[end if], [if Player is not neuter]she's quite intent on having you attend to her needs, preventing you from offering yourself any manner of reprieve[else]tormenting you and your barely satiable lust[end if]. Your efforts are inevitably [if HP of Player < 1 and player is not submissive]'rewarded', the cat wrenching her dick from you, stroking herself for but a few foreboding seconds longer before your face is quickly assailed by a torrent of the beast's thick cum[else]rewarded, the cat offering up a cry of bliss before you're forced to abide each gout of the beast's thick cum as it floods down your gullet[end if].";
		say "     Now that she is satisfied she lets you off; however, your unattended need forces you into a wanton haze, driven [if HP of Player < 1 and player is not submissive]to an embarrassing scramble to lick yourself clean of the tainted seed that paints your face[else]to feast upon what remnant seed might have escaped your lips[end if] [if Player is not neuter]as you furiously pleasure yourself[end if]. You do eventually recover, spent[if HP of Player < 1 and player is not submissive]and shamed[end if], and you pull yourself from the [if showlocale is true and scalevalue of Player < 5]wrecked vehicle[else]ground[end if], returning from whence you came.";

[ORIGINAL CONTENT--
	say "     Defeated by the powerful feline, you are pushed to the ground beneath her as she growls. She places a heavy paw on your chest, holding you down with her weight, but careful not to crush you provided you don't resist. Her paws slide to the leather belts used to hold on her armor and unbuckles her chestpiece and codpiece. Her exposed breasts and cock are quite large, impressive organs you're sure you'll be getting familiar with quite soon.";
	if Player is female or a random chance of 1 in 3 succeeds:
		say "     Grabbing you in her strong paws, she drags you over to a nearby car and presses you down atop its hood. Getting atop you, she buries your head in her ample bosom. You can feel her hard cock probing between your legs and you whimper softly in a mix of worry and anticipation of having that big, throbbing, feline cock stuffed into you. With her strong scent surrounding you, you nuzzle over to her large nipple and start licking and sucking at it, making her rumble in pleasure.";
		say "     With her cock lined up against your [if Player is female]wet pussy[else]tight asshole[end if], she thrusts steadily into you, rather restrained for a wild feline[if Cunt Depth of Player < 10 or Cunt Tightness of Player < 6]. Her massive cock spreads your tight hole open painfully, making you thankful for her slow approach[else]. Her massive cock sinks into you slowly, making you moan as it stuffs you[end if]. As she thrusts, you quickly grow to enjoy the powerful mating of the feline atop you. You can feel the strength of her large body under the soft fur covering it. The hard cock stuffing you stimulates your sensitive inner walls with soft barbs that only add to your pleasure. As you nurse from her large nipple, you're rewarded with creamy milk. It is very arousing, if having a slightly rusty taste to it.";
		say "     As your excitement builds, so does her pace, pounding harder and faster, making the car creak beneath you as the whole front end sags on its old shocks with each hard slam into you near the end. There is no discomfort at all from this wild sex, quite the opposite actually. Each powerful push she makes sends shivers of delight through your loins until finally you start cumming hard. As your [if Player is female]cunt[else]ass[end if] clenches down around her thick piston in climax, she mrowls loudly and starts pumping blast after blast of thick, feline seed into you until you're stuffed to the point of overflowing. When she's finally done draining her large balls into you, she gets off the hood and walks off, leaving you there, leaking her cum from your abused but very satisfied body.[impregchance]";
	else:
		say "     Holding you pinned down under her, she takes her huge cock in a paw and starts stroking it quickly. With it pointed at your face, you can see the throbbing meat clearly and get spurts of her precum splattering onto you almost immediately. As you watch her paw sliding over that feline shaft, you can see her heavy ballsack twitching moments before her hot semen starts to blast onto you in thick, heavy spurts. With your face coated in her seed, you can't help but have some leak into your mouth when she applies a little extra pressure to your chest to get you to gasp. Getting a taste of it, you can't help but start licking your lips to get more. Soon, you're running your hands through it to gather it up to suck off your fingers. Satisfied, the powerful feline leaves you like that, strapping her makeshift armor back on while you greedily gobble down as much of her cum as you can get.";
]

to say beatthewildcat:
	say "     Managing several strong hits on the armored feline, you force her back. She growls makes to swing at you again, but then pounces ten feet up onto a pile of junk, then leaps off somewhere on the other side, making her escape.";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "";
	now Name entry is "Wildcat"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]Your ears ring after the wildcat bashes you in the head with her powerful fist![or]The giant cat grabs a rusty muffler from the pile of clubs you in the side with it![or]The feline herm tackles you with her huge body![or]The wildcat grabs your head and slams it against her armored chestplate. Clang![or]The wild feline grabs large handfuls of debris from the junkpile and hurls it at you with a growl![or]Wrapping her powerful arms around you in a bearhug, she grinds her covered crotch against you![or]Finding an old car radiator in the junk, she wields it with ease and batters you with it![or]The big feline slashes at you with her powerful claws, growling deep in her throat![or]The wildcat herm gets her paws on you, grabbing your ass and groin roughly as she fondles you with a rough chuckle![at random]";
	now defeated entry is "[beatthewildcat]";
	now victory entry is "[losetowildcat]";
	now desc entry is "[wildcatdesc]";
	now face entry is "that of a feline, with some striping across your brow";
	now body entry is "large and powerfully built. You have broad shoulders and strong arms and legs. Your hands and feet have become feline paws, though your fingers are still able to flex and manipulate objects";
	now skin entry is "a coat of rusty fur with some darker brown markings which has spread across your";
	now tail entry is "You have a fluffy, feline tail with rusty, brown fur that twitches from time to time.";
	now cock entry is "[one of]barbed[or]feline[or]barbed feline[or]rust red[at random]";
	now face change entry is "your head changes and shifts, becoming that of a feral wildcat";
	now body change entry is "your body shifts and changes, becoming larger than your once human body. Your shoulders grow broad and powerful before the changes spread down your arms and legs and the same happens to them. As the infection spreads to your hands and feet, they shift into feline paws";
	now skin change entry is "rusty, brown fur spreads across your body. Dark brown markers appear on your back and sides as the infection spreads through you";
	now ass change entry is "your hips become strong and firm as a long, feline tail grows from your ass. It is covered in rusty, brown fur";
	now cock change entry is "shifts and turns a rust red color as it takes on a feline shape and gains soft, stimulating barbs";
	now str entry is 22;
	now dex entry is 18;
	now sta entry is 18;
	now per entry is 14;
	now int entry is 12;
	now cha entry is 10;
	now sex entry is "Both"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 100; [ The monster's starting HP. ]
	now lev entry is 9; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 16; [ Monster's average damage when attacking. ]
	now area entry is "Junkyard"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 16; [ Length infection will make cock grow to if cocks. ]
	now Ball Size entry is 3; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 6; [ Size of breasts the infection will try to attain. ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 16; [ Depth of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 10; [ Width of female sex the infection will try to give a player. ]
	now libido entry is 33; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 4; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]muscled[or]powerful[or]broad-shouldered[at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "feline"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
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
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Tail Change entry]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
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



when play ends:
	if BodyName of Player is "Wildcat":
		if humanity of Player < 10:
			say "     As it becomes harder to maintain your human thoughts, you are drawn back to the large scrapyard. There, your instincts lead you across the maze of wrecked cars and old junk to a work area. Several large, powerful felines are at work here, stripping down the old cars and fashioning weapons and armor from them. You pick up a car side panel and start to warp it into shape with your powerful paws. There is a brief glance from hulking cats before they get back to work, accepting you among them as you start to make your own suit of junkyard armor. It is a long process to make, but it is your own and you celebrate by letting one of the sexy felines help you take it off. Your yowls of lust carry across the junkyard that night, and many other nights as you enjoy the pleasures of your big, powerful lovers.";
			say "     When the soldiers come into the city in force, you and the other felines are ready for them, having fortified by the scrapyard with improvised weapons and defenses. You capture or drive off the squads sent against you, acting as protectors of those who live in the discarded junk. Your people make trades with several other factions, selling tools and weapons from your forges for supplies or captured soldiers to further add to your numbers.";
		else:
			say "     Once out of the infected city, your powerful body makes many people you meet worried at first. But you are a gentle giant, more interested in tinkering with old junk or working on cars. You get a job as a mechanic and are quite successful at it. Your powerful body is an asset at this work, helping you move heavy parts with ease. Working for a trucking company, you enjoy coming in each day to maintain their fleet of diesel trucks. It's particularly fun to show off in front of the tough truckers, easily slinging around heavy engine parts with one hand. Impressed, you even get a few who aren't put off by your feline form and who'll slip off with you to your office for a little break after dropping off their big rig.";

Wildcat ends here.
