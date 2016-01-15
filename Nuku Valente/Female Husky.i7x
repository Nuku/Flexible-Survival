Version 2 of Female Husky by Nuku Valente begins here.
[Version 2.2 - Victory: Beta capture for Dom]

"Places the original Female Husky creature in a separate file for updated use."

Section 1 - Monster Responses

to say femalehuskydesc:
	say "A slutty husky, a beautiful anthro canine covered in soft, snowy fur. She has a slim, feminine muzzle and perky, overly large ears along with a large, fluffy husky tail. Her chest bears two firm and grope-able C cup breasts along with two B cup pairs of breasts underneath them, all of them oozing small droplets of milk. Her cream-coloured tummy is slightly swollen as if she is barely pregnant, though that will probably change soon if the aching need oozing from her swollen slit is anything to judge by. It's obvious she's become nothing more than a needy whore.";

to say fhuskywinner:
	if cocks of player is greater than 0:
		say "[one of]Having defeated you, the husky begins to pant heavily. She rolls you onto your back and clambers on top of you. Her deft fingers soon have you free of your clothing, tossed to the side as she barks in your face. She slips up and waves her excited furry snatch in your face before settling back, pressing your [cock size desc of player] [cock of player] shaft into her quivering cunt. She howls and yips as she rises and falls against you, her many breast jiggling about with every pound down against you. Her sex is a hot, wet, oven, clenching powerfully and pulling you right over the edge.[line break][line break]As you catch your breath, she rubs over her softly furred belly, glowing with satisfaction at your seeding. Finally, she draws up from you with a wet sucking noise from her sated cunt, and she prowls off, leaving you in a puddle of sweat to recover at your own pace[or]She kneels down and nuzzles into your crotch, biting at you until she has direct access, then running her long, wet, tongue across your increasingly excited [cock size desc of player] [cock of player] cock. Her long snout descends, taking it in entirely as she bobs slowly, suckling and milking your balls with a softly furred hand. It is not long before you are filling her snout, watching her swallow most of it, a little dribbling down her black lips, just to be lapped right back up. She sits up, smiles at you, and quietly departs[at random].";
	otherwise:
		say "She lays down on top of you and grinds lustfully, but you lack the parts she so urgently needs. She does think of one part you have she can use and slides up against you, pressing her hot, musky, snatch against your face, grinding insistently, grunting and whimpering with need. Her hot juices flow down across your nose and mouth, though you are unable to participate much in your current state. Suddenly she arcs her back and howls, almost drowning you in thick husky honeys as she hits peak. She slumps back, panting loudly, and slowly rolls off of you, slinking off into the city.";

to say fhuskybeaten:
	if hp of Dominick >= 60 and hp of Dominick < 100 and cunts of player > 0 and ( bodyname of player is "Breederslut" or facename of player is "Breederslut" ) and inasituation is false:
		let num be 0;
		if a random chance of 1 in 2 succeeds:
			now num is 1;
			say "     She whimpers and falls back, stumbling onto her ass as she looks up at you fearfully.  Her wide, doe-like eyes glisten with terror before she squeezes them shut, and spreads her thighs";
		otherwise:
			say "     Exhausted, she slumps against you, tears streaming along her furry cheeks.  Her paws gently brush at you as she mutters something of an apology";
		say ".  The sight of her sends a tingle of excitement through your cunt.  This cute husky girl might make a good breeder pet for Dominick.  The prospect of pleasing him ends a second shiver of lust through you";
		if cocks of player > 0:
			say ".  Shall you prepare her to be another slutty pet for the [link]alpha stud (1)[as]1[end link], [link]have your own fun(2)[as]2[end link] with her or just [link]leave her (0)[as]0[end link]?";
			now calcnumber is -1;
			while calcnumber < 0 or calcnumber > 2:
				say "Choice? (0-2)>[run paragraph on]";
				get a number;
			if calcnumber is 1:
				say "[fhuskybeaten_dom]";
			otherwise if calcnumber is 2:
				if libido of player > 66 or ( libido of player > 50 and cockname of player is listed in infections of Caninelist ):
					say "[fhuskybeaten_01]";
				otherwise:
					say "[fhuskybeaten_02]";
			otherwise if calcnumber is 0:
				say "     [if num is 1]Despite the temptation, you resist making this poor creature into another plaything for the sexy stud.  You instead leave her there, whining[otherwise].  Resisting the impulse, you push her away from you and simply leave her there[end if].";
		otherwise:
			say ".  Shall you prepare her to be another slutty pet for the [link]alpha stud (Y)[as]y[end link] or just [link]leave her (N)[as]n[end link]?";
			if the player consents:
				say "[fhuskybeaten_dom]";
			otherwise:
				say "     [if num is 1]Despite the temptation, you resist making this poor creature into another plaything for the sexy stud.  You instead leave her there, whining[otherwise].  Resisting the impulse, you push her away from you and simply leave her there[end if].";
	otherwise if cocks of player > 0 and ( libido of player > 66 or ( libido of player > 50 and cockname of player is listed in infections of Caninelist ) ):
		say "[fhuskybeaten_01]";
	otherwise if cocks of player is greater than 0 and libido of player is greater than 30:
		say "     You find yourself tempted to have some fun with the husky female.  Do you?";
		if the player consents:
			say "[fhuskybeaten_02]";
		otherwise:
			say "[fhuskybeaten_00]";
	otherwise:
		say "[fhuskybeaten_00]";


to say fhuskybeaten_00:
	say "     [one of]She whimpers and falls back, stumbling onto her ass as she looks up at you fearfully.  Her wide, doe-like eyes glisten with terror before she squeezes them shut, and spreads her thighs.  Despite temptation, you decide to not take on her offer, and leave her there, whining[or]Exhausted, she slumps against you, tears streaming along her furry cheeks.  Her paws gently brush at you as she mutters something of an apology.  You push her away, but decide against hurting her further, simply leaving her there[at random].";


to say fhuskybeaten_01:
	say "     Overcome by [if cockname of player is listed in infections of Caninelist]the excitement growing in your canine crotch[otherwise]your urges[end if], you shove her back.  She yelps as she falls and twists, landing on all fours.  You grab her wide hips and, without hesitation, slam your [cock size desc of player] [cock of player] pole into her hot depths and begin to breed her on the spot.  She barks and shudders with pleasure, rocking against you as you pump into her round form, caressing her large breasts greedily as you rock her forward.  Her furry flesh rubs against your [bodytype of player] form as you keep her pinned under you, sending tingles through your body.";
	say "     You feel climax strike like a lightning bolt, and you fill her wanting womb with thick squirts of hot, fertile seed.  She arches under you, trembling in pleasure as you empty your [cum load size of player] load into her.  Satisfied, you pull from her, slapping her furry ass before leaving.";

to say fhuskybeaten_02:
	say "     Having bested her, you shove her back. She yelps as she falls and twists, landing on all fours.  You grab her wide hips and, without hesitation, slam your [cock size desc of player] [cock of player] pole into her hot depths and begin to breed her on the spot.  She barks and shudders with pleasure, rocking against you as you pump into her round form, caressing her large breasts greedily as you rock her forward.  Her furry flesh rubs against your [bodytype of player] form as you keep her pinned under you, sending tingles through your body.";
	say "     You feel climax strike like a lightning bolt, and you fill her wanting womb with thick squirts of hot, fertile seed.  She arches under you, trembling in pleasure as you empty your [cum load size of player] load into her.  Satisfied, you pull from her, slapping her furry ass before leaving.";

to say fhuskybeaten_dom:
	say "     Taking hold of the husky girl from behind, you reach around to fondle her breasts and pussy[if scalevalue of player < 3]To accommodate your smaller size, you get her to move down onto her knees with a gentle prompting while rubbing her folds[end if].  Already quite lustful before the fight even began, getting her worked up is an easy task.  You make certain to use several of the techniques Dom showed you to get her really worked up.  And all the while, Dom's scent (which has been clinging to your shiba inu [if player is breederslutbodied]form[otherwise if player is breederslutskinned]fur[otherwise]head[end if]) seeps into her sensitive nose, arousing her all the more.";
	say "     After a few minutes of teasing and only some small orgasms that increase her horniness rather than relieve it, you expect she's gotten quite ready[if cocks of player > 0].  You grind your shaft[smn] against her hip, but take it no further, using [itthemm] to tantalize her all the more[end if].  You nibble her ear and whisper what a horny girl she is and how you can just tell she needs a good, hard fucking.  She moans about how much she needs it[if cocks of player > 0] and tries to push back onto your cock, but[otherwise], and so[end if] you tell her where she can find a true husky stud to screw her.  Quite suggestible at this point, you [one of]say that he's waiting for her[or]describe his studly physique and sexual prowess to her[or]go on about his ideal stud status as a top-ranked husky breeder[or]describe his hard, throbbing cock in lurid detail[at random].";
	say "     Given the vapid nature of these husky girls, you know she'll have a better chance of staying on track long enough to reach the kennel if her addled mind is fully focused on wanting him to breed her.  To ensure this, you assault her a final series of licks, caresses and touches.  At this peak of arousal, you tell her once again that the stud is ready and waiting to give her the fucking she needs.  Ready to breed her full of beautiful pedigree pups.  With your description and directions in her mind, you release her on her way, her lust-addled mind locked on this idealized stud to mate her.  She dashes off, her body aching for the relief her new master will bring, and you can't help but be pleased with your success.";
	now libido of Dominick is 1;
	increase xp of Dominick by 1


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Female Husky";		[The creature's name as displayed and used in naming descriptions]
	now attack entry is "[one of]The sex crazed husky manages to pin you against some debris as she gnaws at your shoulder. You're sure she means it as a come on, but it just hurts.[or]The husky howls in frustration and slices with her dull claws. It seems awkward, but it stings![or]She manages to get her hands on you and squeezes tightly, pressing her delightful assets to you even as she denies you breath in the tight embrace.[at random]";	[Text used when the monster succeeds on an attack]
	now defeated entry is "[fhuskybeaten]";
	now victory entry is "[fhuskywinner]";
	now desc entry is "[femalehuskydesc]";
	now face entry is "slim, feminine muzzle and perky, overlarge ears over a canine";
	now body entry is "that of a [if latexhuskymode is true]quadrupedal dog with paw-like feet and[otherwise]bipedal dog, with digitigrade legs and paw-like[end if] hands";
	now skin entry is "[if latexhuskymode is true]smooth and shiny latex of black and white for[otherwise][one of]soft[or]dense[at random] white fur over your[end if]";
	now tail entry is "You have a [if latexhuskymode is true]curved husky tail made of smooth latex[otherwise]long and fluffy dog's tail swaying behind you[end if].";
	now cock entry is "[if latexhuskymode is true][one of]latex[or]doggy[or]canine[or]knotted[at random][otherwise][one of]canine[or]knotted[or]bright red doggy[or]bestial[at random][end if]";
	now face change entry is "[if latexhuskymode is true]it reflows into the smooth, husky head you had before.  Your long, rubbery tongue hangs from your mouth, dripping with oily drool[otherwise]your face draws forward into a slender canine snout. Your elongated tongue slips free of your new lips, lolling in the air wetly a moment[end if]";
	now body change entry is "[if latexhuskymode is true]your arms and legs grow malleable and turn into doggy legs for your increasingly canine body.  Soon enough you're back to the quadrupedal husky form you had earlier.  It will be a struggle to stand or use your hands now, but being a doggy feels so much better anyhow[otherwise]your legs bend and twist into digitigrade form with soft subtle snaps of flowing bones. You look down to see your feet becoming entirely paw-like and your hands become somewhat paw-like[end if]";
	now skin change entry is "[if latexhuskymode is true]your skin flows, turning a glossy black and white, flowing around as it becomes a layer of latex in a husky pattern[otherwise]your skin prickles from head to toes as fur begins to push through from underneath, soon covering you in a soft, almost comforting, layer of fluffy white fur[end if]";
	now ass change entry is "[if latexhuskymode is true]a long, inflated tail balloons from your behind.  It curves and wags, perpetually raised to show off your groin and butt[otherwise]a long tail pushes from your spine, uplifting in a stiff arc, it begins to sway slowly without your input[end if]";
	now cock change entry is "[if latexhuskymode is true]your shaft becomes smooth, latex flesh.  It tapers to a point and gains a thick, doggy knot and a sheath of latex rubber to house it[otherwise]your shaft tapers out, becoming slender, though a huge swelling comes into being towards the base, a knot. The skin turns reddish before the whole thing slowly withdraws into a sheath you didn't have a moment ago[end if]";
	now str entry is 6;			[ These are now the creature's stats... ]
	now dex entry is 12;			[ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 6;			[ These values may be used as part of alternate combat.]
	now per entry is 6;
	now int entry is 2;
	now cha entry is 16;
	now sex entry is "Female";		[ Infection will move the player towards this gender.  Current: 'Male' 'Female' 'Both' ]
	now hp entry is 15;			[ The monster's starting hit points. ]
	now lev entry is 1;			[ Monster level.  (Level x 2) XP for victory.  (Level / 2) XP for losing. ]
	now wdam entry is 3;			[ Monster's average damage when attacking. ]
	now area entry is "Outside";		[ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 0;			[ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 0;		[ Length infection will make cock grow to if cocks. ]
	now cock width entry is 0;		[ Cock width, more commonly used for ball size. ]
	now breasts entry is 4;			[ Number of breasts the infection will give a player. ]
	now breast size entry is 6;		[ Size of breasts the infection will try to attain. ]
	now male breast size entry is 0;    [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 10;		[ Depth of female sex the infection will attempt to give a player. ]
	now cunt width entry is 6;		[ Width of female sex the infection will try to give a player. ]
	now libido entry is 90;			[ Target libido the infection will rise towards. ]
	now loot entry is "";			[ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 0;		[ Percentage chance of dropping loot, from 0-100. ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 3;				[ Number 1-5, approx size/height of infected PC body:  1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[if latexhuskymode is true][one of]quadrupedal[or]altered[or]animalistic[at random][otherwise]girly[end if]";	[ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender"   Use [one of] to vary ]
	now type entry is "[one of]canine[or]husky[at random]";
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";		[ Row used to designate any special combat features, "default" for standard combat. ]


when play ends:
	if bodyname of player is "Female Husky":
		if humanity of player < 10:
			say "     You are completely lost to your urges, an alpha predator, stalking the ruins of the city.  Ah, but you are not alone, a pack coalesces around you, a dozen of so like minded canines, howling their madness and need to an uncaring sky.  Superior numbers and ferocity make you more than a match for the other beasts loose in the city.  It doesn't take long before the echoing howls, calling your fellows to hunt, causing even the most ferocious mutants and monsters to look for a place to hide from the lustful tide of your husky pack.  Those caught were either devoured, or subdued and dragged back to your dens, their bodies changed and their minds worn down by a furious night of animal passion.  Thick cum filled their every hole, the slick passion of the females coating their cocks and muzzles.  Any female captured is pregnant by dawn, the high birth rate needed to keep up with the attrition rate, the city is not safe.  You are the absolute ruler of your domain, a pity your mind is too far gone to appreciate it.";
		otherwise:
			say "     In this strange new world, there are a hell of a lot worse things to end up as than a husky.  Once things settle down, you move up north, ending up as a bartender in a small city bar frequented by the locals.";
			if cocks of player is greater than 0 and cunts of player is greater than 0:
				say  "     Life isn't bad; it takes a while, but you fit in just fine here. The regular humans accept you, and the mutants appreciate having a good representative in town. One slow weekday night, another herm saunters in and asks for a drink. Shi's beautiful, your heart skipping a beat as hir eyes meet yours. All that practice of keeping your cool behind the heavy oak bar melt away, and you stammer like a teenager as you get hir beer. Shi just smiles, and it isn't long at all till you are off of work, and tangled up in hir arms. The relationship lasts, both of you settling into your dual roles without too much trouble, taking turns bearing pups. Even humans envy the equanimity and quality of your relationship.";
			otherwise if cocks of player is greater than 0:
				say "     The endless tug-of-war between your rational mind and your instincts make adapting to life 'in the normal world' a bit tougher than you expected. Humans and other mutants don't quite follow the same pack mentality your instincts demand. You struggle and it's hard, make no mistake, but you rise above. Of course, it helps that once word gets out just how much fun a male canine is in bed, that you are never short of female company of all shapes and species. With that urge taken care of at least, fitting in becomes a hell of a lot easier. Of course, the universe has a sense of a humor, and not three months later, a group of canines having the same issues as you start a co-op on the west side of town. This proves to be a great place for you, rising to the top of the pack and having your pick of the females-in heat, no less, many of the next generation call you sire.";
			otherwise:
				say  "     Initially, things go quite smoothly. Everyone loves dogs, and your lovely female figure earns more than a few warm smiles and invitations to coffee. Then, unexpectedly, your heat strikes, the rush of pheromones and hormones nearly toppling the fragile life you'd built for yourself. Luckily, you had become friends with a male dragon who understood better than most what you were going through. After a desperate phone call, you go over there, nearly tackling him onto the ground in your rush to soothe the burning need between your legs. The next week is spent in the throes of passion, impaling yourself on his thick shaft every chance you get. The heat passes, but it leaves behind a certain... emptiness, that you know won't be fulfilled till you find a male canine. That little search takes longer than you expected, and two more heats slam into you, driving you into the arms of a menagerie of humans and mutants, their spurts of seed dousing the fire enough for you to function. On a cool summer night, he saunters into the bar: a tall, strong male canine, just perfect. After a few weeks of getting to know each other, your relationship deepens. Everything is going just fine, and then your heat strikes again, and you find yourself in his apartment, on your hands and knees, offering yourself up to him. After what feels like an eternity, he takes you up on, your howls of pleasure mingling as he drives into your needy body. You climax again and again as his thick knot ties you together, his fertile seed flooding your ready womb. It isn't long till your belly rounds with his pups. You feel... fulfilled.";

Female Husky ends here.
