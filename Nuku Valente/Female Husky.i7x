Version 3 of Female Husky by Nuku Valente begins here.
[ Version 1.0 - Original form, unknown content - Unknown writer                                          ]
[ Version 2.0 - Moved to Nuku Valente folder. Added Latex Husky mode - Stripes                           ]
[ Version 2.1 - Player victory sex adjustment - Stripes                                                  ]
[ Version 2.2 - Victory: Beta capture for Dom - Stripes                                                  ]
[ Version 2.3 - Victory: Dominant w/knot and cunnilingus scenes added - Stripes                          ]
[ Version 3.0 - Comprehensive writing cleanup. Added cunnilingus scene for female/herm victors - Song    ]

"Places the original Female Husky creature in a separate file for updated use."

Section 1 - Monster Responses

to say femalehuskydesc:
	setmongender 4; [creature is female]
	if inasituation is true:
		say ""; [dealt with at the source of the event]
	else:
		say "     A beautiful anthro canine covered in soft, snowy fur. She has a slim, feminine muzzle and perky, overly large ears, along with a large, fluffy husky tail. Her chest bears two firm and gropeable C cup breasts along with two B cup pairs of breasts underneath them, all of them oozing small droplets of milk. Her cream-colored tummy is slightly swollen as if she is barely pregnant, though that will probably change soon if the aching need oozing from her swollen slit is anything to judge by. It's obvious that she's become nothing more than a needy whore.";

to say fhuskywinner:
	if inasituation is true:
		say ""; [dealt with at the source of the event]
	else if player is male:
		if a random chance of 1 in 2 succeeds:
			say "     Having defeated you, the husky begins to pant heavily. She rolls you onto your back and clambers on top of you. Her deft fingers soon have you free of your clothing, tossed to the side as she barks in your face. She slips up and waves her excited furry snatch in your face before settling back, pressing your [cock size desc of player], [cock of player] shaft into her quivering cunt. She howls and yips as she rises and falls against you, her many breast jiggling about with every pound down against you. Her sex is a hot, wet oven, clenching powerfully and pulling you right over the edge.";
			say "     As you catch your breath, she rubs over her softly furred belly, glowing with satisfaction at your seeding. Finally, she draws up from you with a wet sucking noise from her sated cunt, then prowls off, leaving you in a puddle of sweat to recover at your own pace.";
		else:
			say "     She kneels down and nuzzles into your crotch, biting at you until she has direct access, then runs her long, wet tongue across your [cock of player], increasingly excited cock. Her long snout descends, taking it in entirely as she bobs slowly, suckling and milking your balls with a softly furred hand. It is not long before you are filling her snout, watching her swallow most of it, a little dribbling down her black lips, just to be lapped right back up. She sits up, smiles at you, and quietly departs.";
	else:
		say "     She lays down on top of you and grinds lustfully, but you lack the parts she so urgently needs. She does think of one part you have she can use and slides up against you, pressing her hot, musky snatch against your face, grinding insistently, grunting and whimpering with need. Her hot juices flow down across your nose and mouth, though you are unable to participate much in your current state. Suddenly she arcs her back and howls, almost drowning you in thick husky honeys as she hits peak. She slumps back, panting loudly, and slowly rolls off of you, slinking off into the city.";

to say fhuskybeaten:
	if inasituation is true:
		say ""; [dealt with at the source of the event]
	let num be 0;
	if a random chance of 1 in 2 succeeds:
		now num is 1;
		say "     She whimpers and falls back, stumbling onto her ass as she looks up at you fearfully. Her wide, doe-like eyes glisten with terror before she squeezes them shut and spreads her thighs";
	else:
		say "     Exhausted, she slumps against you, tears streaming along her furry cheeks. Her paws gently brush at you as she mutters something of an apology";
	let domtempting be false;
	if HP of Dominick >= 60 and HP of Dominick < 100 and player is female and ( bodyname of player is "Breederslut" or facename of player is "Breederslut" ) and inasituation is false:
		now domtempting is true;
		say ". The sight of her sends a tingle of excitement through your cunt. This cute husky girl might make a good breeder pet for Dominick. The prospect of pleasing him ends a second shiver of lust through you";
		if player is male:
			say ". You could prepare her to become another slutty pet for the alpha stud, though perhaps you might just having some fun of your own.";
		else:
			say ". You could prepare her to become another slutty pet for the alpha stud or just let her go.";
	else if player is male:
		say ". You find yourself considering having some fun with the hapless creature's body. Do you take advantage of the situation and use the husky female to sate your lusts?";
	else:
		say ". You find yourself considering having some fun with the hapless creature, but can't really decide what to do at this time.";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if domtempting is true:
		choose a blank row in table of fucking options;
		now title entry is "Recruit for Dominick";
		now sortorder entry is 1;
		now description entry is "send the lust-crazed husky to Dom to be bred";
	[]
	if "Dominant" is listed in feats of player and player is male and cock length of player > 5 and player is knotted:
		choose a blank row in table of fucking options;
		now title entry is "Dominate and tie";
		now sortorder entry is 2;
		now description entry is "take what you want and knot the husky bitch's hot cunt";
	[]
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Quickie fuck";
		now sortorder entry is 3;
		now description entry is "get your rocks off by fucking the husky bitch";
	[]
	if player is female:
		choose a blank row in table of fucking options;
		now title entry is "Lesbian licking";
		now sortorder entry is 4;
		now description entry is "make the doggy girl eat you out";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Lick her cunt";
	now sortorder entry is 9;
	let luststuck be 0;
	if libido of player > humanity of player and libido of player > 75, now luststuck is 1;
	[]
	now description entry is "eat out that juicy canine muff";
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	if luststuck is 0, say "[link]0 - Let her go[as]0[end link][line break]";
	now calcnumber is -1;
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: Shall you [description entry]?";
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if nam is "Quickie fuck":
					say "[fhuskybeaten_01]";
				else if nam is "Recruit for Dominick":
					say "[fhuskybeaten_dom]";
				else if nam is "Dominate and tie":
					say "[fhuskybeaten_02]";
				else if nam is "Lesbian licking":
					say "[fhuskybeaten_03]";
				else if nam is "Lick her cunt":
					say "[fhuskybeaten_04]";
				wait for any key;
		else if calcnumber is 0:
			if libido of player > humanity of player:
				say "     You want to let her go, but your aroused body and nanite-addled mind are far too gone to allow it!";
				now luststuck is 1;
			else:
				say "     Having fought off her wild advances and driven her back, you see little in continuing to hurt the poor creature. You simply push her away and decide against harming her further, simply leaving her there.";
				now sextablerun is 1;

[
to say fhuskybeaten_00:
	if a random chance of 1 in 2 succeeds:
		say "     She whimpers and falls back, stumbling onto her ass as she looks up at you fearfully. Her wide, doe-like eyes glisten with terror before she squeezes them shut and spreads her thighs. Despite temptation, you decide not to take her up on her offer and leave her there, whining.";
	else:
		say "     Exhausted, she slumps against you, tears streaming along her furry cheeks. Her paws gently brush at you as she mutters something of an apology. You push her away, but decide against hurting her further, simply leaving her there.";
] [Not used, so commented out]

to say fhuskybeaten_01:
	if libido of player > a random number between 30 and 150:
		say "     Overcome by [if cockname of player is listed in infections of Caninelist]the excitement growing in your canine crotch[else]your urges[end if], you shove her back. She yelps as she falls and twists, landing on all fours. Without hesitation, you grab her wide hips and slam your [cock size desc of player], [cock of player] pole into her hot depths, beginning to breed her on the spot. She barks and shudders with pleasure, rocking against you as you pump into her round form, caressing her large breasts greedily as you rock her forward. Her furry flesh rubs against your [bodytype of player] form as you keep her pinned under you, sending tingles through your body.";
	else:
		say "     Having bested her, you shove her back. She yelps as she falls and twists, landing on all fours. You grab her wide hips and slam your [cock size desc of player], [cock of player] pole into her hot depths, beginning to breed her on the spot. She barks and shudders with pleasure, rocking against you as you pump into her round form, caressing her large breasts greedily as you rock her forward. Her furry flesh rubs against your [bodytype of player] form as you keep her pinned under you, sending tingles through your body.";

to say fhuskybeaten_02:
	say "     Grabbing your canine foe, you press her to the ground with a lustful growl. The husky gives a needy whimper, responding to your dominance once you force her onto all fours. You slap her ass with your hard erection and order that tail of hers up. She complies readily, her instinctual needs making her present herself.";
	WaitLineBreak;
	say "     You slide your cock across her dripping folds, getting her all the more hot and bothered. Soon she's panting and whimpering with need, which brings a grin to your face. While you know it's easy to get these bitches into such a state, you still feel a swell of pride at having done so - or is that just your knot starting to show? Taking that as your queue, you plunge your hard rod into her heated cunny, drawing a happy bark from her. Her vagina quivers and squeezes around you as you sink inch after inch into her.";
	say "     Planting your hands on her shoulders, you press them to the ground so you can thrust down into her. Your growing knot bumps against her wet petals and sensitive clit again and again. You can feel her starting to stretch open, preparing to be tied. You pause there, half-hard knot pressed at her entrance, and lean forward.";
	WaitLineBreak;
	say "     'Mmmm... you feel that, slut?' you ask as you hold your hips steady, your knot hard and warm against her cunt's sopping lips. 'You know what'll happen if I tie you - a bellyful of a stranger's pups inside you. Even knowing that, you want it, don't you?'";
	say "     [one of]Her response it to whimper and moan louder as she grinds her hips back in a clear need to be knotted[or]She whimpers and moans inarticulately, trying to urge you to finish fucking her senseless despite being beyond words[or]She moans how she needs that knot in her as she grinds her hips back[or]She moans how her cunt aches for your knot and her womb for your pups[at random]. After a few light motions that are more teasing than efforts to push in, you draw your hips back and plunge hard into her. A few drives of this rough pounding is all it takes to finish forcing your swollen knot in, ensuring there will be no escape from being bred. She releases a lustful [one of]bark[or]growl[at random] and cums hard, her cunt clenching around your meat. You slap her doggy ass and make hard, short thrusts, tugging around your fully engorged knot in that tight grip while you hump her like a dog would. You call her a good bitch as you climax, dumping your hot seed into her needy womb. You pump shot after shot until [if cock width of player > 30]her belly swells to appear pregnant as you fire your [short ball size] balls['] massive load into her womb[else if cock width of player > 20]her belly distends in a slight bulge from your hefty load[else]spent[end if].";
	WaitLineBreak;
	say "     You're left tied to the panting bitch for quite a while, giving your sperm ample opportunity to attack her eggs. You know she'll be full with pups soon thanks to you. And with all the creatures running around, what's a few more going to matter? When your knot does finally go down enough for you to pop free, you pull it out. The husky girl gives a feeble, needy whimper, having passed out from the ordeal. You leave her there and go on your way, only a small trickle of your cum leaking out of her stretched hole at this point.";

to say fhuskybeaten_03:
	say "     You assuage the desperate canine's worries, running your hands through her soft, smooth fur and letting her know that everything will be alright. She relaxes at your touch, her earlier mania waning. Smiling at the amicable husky, you guide her flush on her back while methodically teasing her form, pampering her with a constant stream of sultry insinuations and encouragement. Your movements soon lead between her thighs, spreading them gently, and your fingers stroke along her damp, pouting folds, tracing all the way from the base of her nectar-drenched vagina to the sensitive nub of her clit. Your spare hand explores her furry mounds throughout, thumb brushing over her nipples to tease and toy with the beautiful husky below you. Pleased by her obedience, you lean up sweep your tongue along the rim of her silky ears, licking and nibbling on them playfully while whispering sweet nothings.";
	say "     You continue to torment the curvy canine beneath you, working her up until she's squirming and begging you to fuck her. All too happy to oblige, you move around above her head, then kneel down in a comfortable position, your [cunt size desc of player] cunt poised directly above her muzzle. She doesn't hesitate to indulge you, her long tongue lolling free to attack your labial lips while her paw-like hands serve to pleasure herself in turn. Her firm and hurried sweeps prove imprecise, yet very enjoyable, what she lacks in finesse more than made up for by her wild enthusiasm. Once satisfied with her appetizer, that spit-slick muscle drives deep into your snatch, chasing after more of your heady female honeys. Her furry snout tickles at your sensitive slit, the added stimulation sending jolts of pleasure through your loins[if player is male] while your neglected cock[smn] twitch[esmv] in time with her sweeps[end if].";
	WaitLineBreak;
	say "     All too soon, her ravenous attention drives you over the edge, spilling your juices across her slender canine muzzle. [if player is male]Your rigid length[smn] ripple as you mar her fur with your [cum load size of player] load, streaking her plush coat in alabaster ropes. [end if]You cry out in bliss and clench your thighs together with every potent throb, feeding her wet splatters of your sticky, nourishing nectar. The husky eagerly swallows as much as she can, slathering you depths in saliva as she imbibes with noisy gulps. She continues to jill herself to a powerful orgasm, her hazy groans muffled in the sordid confines of your sex.";
	say "     Spent and brutally satisfied, you withdraw from the husky's damp snout, dripping your remaining juices all over her face as you rise. The resulting slick splatters are quickly lapped up, her tongue sliding over her chops as her tail wags proudly. You lean over the girl's supine form to share one last tongue-filled kiss, then gather your bearings and depart, your mind still awash in the miasma of sex.";

to say fhuskybeaten_04:
	say "     Having stopped her uncontrolled advances, you decide to help the poor girl out now that she's not trying to assault you. Getting her on her back, you grab her legs and spread them wide. With her wet, canine muff on display, you can feel the heat from it and smell her arousal. You bury your face between her thighs and lap at her juicy folds.";
	say "     The husky girl moans and whimpers as your tongue plays across her, finally providing her some much-needed attention. You lick at her hot pussy, lapping up her flowing juices. As your tonguework continues, she pants and yips with growing excitement, especially as you delve deeper. You push into her cunny, teasing across her inner walls as her vaginal muscles quiver around you. You lap deep and fast, tongue-fucking the horny husky until she cums in a barking orgasm that soaks your face with her femcum.";
	say "     With her wild lust temporarily sated, the husky girl heads off without further trouble. Her tail wags happily, wafting the scent of her arousal. You take a moment to wipe yourself clean before returning to your own affairs, pleased to have given the poor canine at least some fleeting relief from her need.";

to say fhuskybeaten_dom:
	say "     Taking hold of the husky girl from behind, you reach around to fondle her breasts and pussy[if scalevalue of player < 3]. To accommodate your smaller size, you get her to move down onto her knees with a gentle prompting while rubbing her folds[end if]. Already quite lustful before the fight even began, getting her ready is an easy task. You make certain to use several of the techniques Dom showed you to get her really worked up. All the while, Dom's scent (which has been clinging to your shiba inu [if player is breederslutbodied]form[else if player is breederslutskinned]fur[else]head[end if]) seeps into her sensitive nose, arousing her all the more.";
	say "     After a few minutes of teasing and several small orgasms that increase her need rather than relieve it, you expect she's quite ready now[if player is male]. You grind your shaft[smn] against her hip, but take it no further, using [itthemm] to tantalize her all the more[end if]. You nibble her ear and whisper what a horny girl she is and how you can just tell she needs a good, hard fucking. She moans about how much she needs it[if player is male] and tries to push back onto your cock, but[else], and so[end if] you tell her where she can find a true husky stud to screw her. Quite suggestible at this point, you [one of]say that he's waiting for her[or]describe his studly physique and sexual prowess to her[or]go on about his ideal stud status as a top-ranked husky breeder[or]describe his hard, throbbing cock in lurid detail[at random].";
	say "     Given the vapid nature of these husky girls, you know she'll have a better chance of staying on track long enough to reach the kennel if her addled mind is fully focused on wanting him to breed her. To ensure this, you assault her a final series of licks, caresses and touches. At this peak of arousal, you tell her once again that the stud is ready and waiting to give her the fucking she needs, eager to breed her full of beautiful pedigree pups. With your description and directions in her mind, you release her on her way, her lust-addled mind locked on this idealized stud to mate her. She dashes off, her body aching for the relief her new master will bring, and you can't help but be pleased with your success.";
	now libido of Dominick is 1;
	increase XP of Dominick by 1


Section 2 - Monster Insertion

Table of Random Critters (continued)
name	enemy title	enemy name	enemy type	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	DayCycle	altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now name entry is "Female Husky"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is "";
	now enemy name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]The sex-crazed husky manages to pin you against some debris as she gnaws at your shoulder. You're sure she means it as a come on, but it just hurts.[or]The husky howls in frustration and slices with her dull claws. It seems awkward, but it stings![or]She manages to get her hands on you and squeezes tightly, pressing her delightful assets to you even as she denies you breath in the tight embrace.[at random]";
	now defeated entry is "[fhuskybeaten]";
	now victory entry is "[fhuskywinner]";
	now desc entry is "[femalehuskydesc]";
	now face entry is "slim, feminine muzzle and large, perky ears over a canine";
	now body entry is "that of a [if latexhuskymode is true]quadrupedal dog with paw-like feet and[else]bipedal dog, with digitigrade legs and paw-like[end if] hands";
	now skin entry is "[if latexhuskymode is true]smooth and shiny, black and white latex[else][one of]softly furred[or]densely furred[or]white-furred[at random][end if]";
	now tail entry is "You have a [if latexhuskymode is true]curved husky tail made of smooth latex[else]long and fluffy dog's tail swaying behind you[end if].";
	now cock entry is "[if latexhuskymode is true][one of]latex[or]doggy[or]canine[or]knotted[at random][else][one of]canine[or]knotted[or]bright red doggy[or]bestial[at random][end if]";
	now face change entry is "[if latexhuskymode is true]it reflows into the smooth, husky head you had before. Your long, rubbery tongue hangs from your mouth, dripping with oily drool[else]your face draws forward into a slender canine snout. Your elongated tongue slips free of your new lips, lolling in the air wetly for a moment[end if]";
	now body change entry is "[if latexhuskymode is true]your arms and legs grow malleable and turn into doggy legs for your increasingly canine body. Soon enough you're back to the quadrupedal husky form you had earlier. It will be a struggle to stand or use your hands now, but being a doggy feels so much better anyhow[else]your legs bend and twist into digitigrade form with soft, subtle snaps of flowing bones. You look down to see your feet becoming entirely paw-like while your hands develop soft padding and claws[end if]";
	now skin change entry is "[if latexhuskymode is true]your skin flows, turning a glossy black and white, flowing around as it becomes a layer of latex in a husky pattern[else]your skin prickles from head to toes as fur begins to push through from underneath, soon covering you in a soft, almost comforting layer of fluffy white fur[end if]";
	now ass change entry is "[if latexhuskymode is true]a long, inflated tail balloons from your behind. It curves and wags, perpetually raised to show off your groin and butt[else]a long tail pushes from your spine. Uplifting in a stiff arc, it begins to slowly sway without your input[end if]";
	now cock change entry is "[if latexhuskymode is true]your shaft becomes smooth, latex flesh. It tapers to a point and gains a thick, doggy knot and a sheath of latex rubber to house it[else]your shaft tapers out, becoming slender, though a huge swelling comes into being towards the base, forming a knot. The skin turns reddish before the whole thing slowly withdraws into a sheath you didn't have a moment ago[end if]";
	now str entry is 6;
	now dex entry is 12; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 6; [ These values may be used as part of alternate combat.]
	now per entry is 6;
	now int entry is 2;
	now cha entry is 16;
	now sex entry is "Female"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 15;
	now lev entry is 1; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 3; [ Monster's average damage when attacking. ]
	now area entry is "Outside"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 0; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 0; [ Length infection will make cock grow to if cocks. ]
	now cock width entry is 0; [ Cock width, more commonly used for ball size. ]
	now breasts entry is 4; [ Number of nipples the infection will give a player. ]
	now breast size entry is 6; [ Size of breasts the infection will try to attain. ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 10; [ Depth of female sex the infection will attempt to give a player. ]
	now cunt width entry is 6; [ Width of female sex the infection will try to give a player. ]
	now libido entry is 90; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[if latexhuskymode is true][one of]quadrupedal[or]altered[or]animalistic[at random][else][one of]feminine[or]girly[at random][end if]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "[one of]canine[or]husky[at random]";
	now magic entry is false;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false; [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;


when play ends:
	if bodyname of player is "Female Husky":
		if humanity of player < 10:
			say "     You are completely lost to your urges, an alpha predator, stalking the ruins of the city. Ah, but you are not alone. A pack coalesces around you, a dozen of so like-minded canines, howling their madness and need to an uncaring sky. Superior numbers and ferocity make you more than a match for the other beasts loose in the city. It doesn't take long before the echoing howls, calling your fellows to hunt, cause even the most ferocious mutants and monsters to look for a place to hide from the lustful tide of your husky pack. Those caught are either devoured or subdued and dragged back to your dens, their bodies changed and their minds worn down by a furious night of animal passion. Thick cum fills their every hole, the slick passion of the females coating their cocks and muzzles. Any female captured is pregnant by dawn, and with the high birth rate needed to keep up with the attrition rate, the city is not safe. You are the absolute ruler of your domain. A pity your mind is too far gone to appreciate it.";
		else:
			say "     In this strange new world, there are a hell of a lot worse things to end up as than a husky. Once things settle down, you move up north, ending up as a bartender in a small city bar frequented by the locals.";
			if player is herm:
				say "     Life isn't bad; it takes a while, but you fit in just fine here. The regular humans accept you, and the mutants appreciate having a good representative in town. One slow weekday night, another herm saunters in and asks for a drink. Shi's beautiful, your heart skipping a beat as hir eyes meet yours. All that practice of keeping your cool behind the heavy oak bar melt away, and you stammer like a teenager as you get hir beer. Shi just smiles, and it isn't long at all until you are off of work and tangled up in hir arms. The relationship lasts, both of you settling into your dual roles without too much trouble, taking turns bearing pups. Even humans envy the equanimity and quality of your relationship.";
			else if player is male:
				say "     The endless tug-of-war between your rational mind and your instincts make adapting to life in [']the normal world['] a bit tougher than you expected. Humans and other mutants don't quite follow the same pack mentality your instincts demand. You struggle, and it's hard, make no mistake, but you rise above. Of course, it helps that once word gets out just how much fun a male canine is in bed, you are never short of female company of all shapes and species. With that urge taken care of at least, fitting in becomes a hell of a lot easier. Of course, the universe has a sense of a humor, and not three months later, a group of canines having the same issues as you start a co-op on the west side of town. This proves to be a great place for you, rising to the top of the pack and having your pick of the females - in heat, no less, and many of the next generation call you sire.";
			else:
				say "     Initially, things go quite smoothly. Everyone loves dogs, and your lovely female figure earns more than a few warm smiles and invitations to coffee. Then, unexpectedly, your heat strikes, the rush of pheromones and hormones nearly toppling the fragile life you've built for yourself. Luckily, you had become friends with a male dragon who understood better than most what you were going through. After a desperate phone call, you go over there, nearly tackling him onto the ground in your rush to soothe the burning need between your legs. The next week is spent in the throes of passion, impaling yourself on his thick shaft every chance you get. The heat passes, but it leaves behind a certain... emptiness, that you know won't be fulfilled until you find a male canine. That little search takes longer than you expected, and two more cycles of heat slam into you, driving you into the arms of a menagerie of humans and mutants, their spurts of seed dousing the fire enough for you to function. On a cool summer night, he saunters into the bar: a tall, strong male canine, just perfect. After a few weeks of getting to know each other, your relationship deepens. Everything is going just fine, and then your heat strikes again. You find yourself in his apartment, on your hands and knees, offering yourself to him. After what feels like an eternity, he takes you up on your plea, your howls of pleasure mingling as he drives into your needy body. You climax again and again as his thick knot ties you together, his fertile seed flooding your ready womb. It isn't long until your belly rounds with his pups. You feel... fulfilled.";

Female Husky ends here.
