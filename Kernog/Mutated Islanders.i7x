Version 1 of Mutated Islanders by Kernog begins here.

"Adds male and female version of Mutated Islander, with cock-vore content"

Section 1 - Monster Responses

when play begins:
	add { "Mutated Islanded" } to infections of guy;

to say mutatedIslanderDesc:
	if inasituation is true:
		say "";
	else:
		say "    The nearby bushes crack and bristle, as a muscular man rushes out at you. He is massive in more than one regard. Not only do you [if scalevalue of player is 5]get easily matched in height[else if scalevalue of player is 4]barely reach his neck[else if scalevalue is 3]barely reach his chest[else if scalevalue is 2]barely reach his belly[else]barely reach his groin[end if], his massive girth bouncing with each of his steps on his tanned thighs. '[one of]There you are![or]Found you![or]Fill me, Stranger![or]My balls feel so empty...[at random]'";


[ Player is forcefully cock-vored. No bonus ]
to say loseMutatedIslander:
	if inasituation is true:
		say "";
	else:
		if scalevalue of player >= 5 :
			say "     Obviously too big to be used in any other way, the islander sits on your belly, knocking the air out of you, and humps energetically his massive erection on your [bodyname of player] body, showering it with his musky pre. Your comfort seems not to be the islander's priority, and he seems to actually revel in mashing his thick glans against your [facename of player] face. His grunts turn more and more guttural, until, with a couple of final thrusts, the mutated islander lets out a long, thunderous moan, and cum begins to gush out of his cock. A literal torrent of thick white spunk, which splashes over your face in an unending stream. With the weight of the islander pinning you down, you are forced to take most of it. You almost drown a couple of time, as the thick, salty semen flows freely into your mouth, and as you are forced to gulp it down in order to not choke.";
		say "    'Yes, finally!' the mutated islander shouts triumphantly. He hurriedly jerks off until his massive cock reaches a towering erection. He grabs you, and pulls you face-first against his urethra. Coated by the copius amounts of pre which leak from his pee-hole, the successive pushes make you eventually slip your [facename of player] head inside the islander's shaft. He moans loadly, and another gush of pre splashes on you. You cannot help but wonder how, even with the islander's humonguous size, it seems to accomodate you, stretching around your head like rubber. The outline of your head becomes a clearly visible bulge under the tanned skin.";
		if scalevalue of player is 4:
			say "      The mutated human's plans get derailed, as your large [bodyname of player] body cannot go further down. The man groans in frustration, he rams your face inside his cock again and again. Each time you plunge down the islander's urethra, your nostrils fill with male musk. The islander wraps his arms around your chest, and sits down. Holding you and his cock in a vertical position, he humps your gasping, wriggling body until he lets out a long, rattled moan. 'Fuuuuuck!' he shouts, as he cums hard. A torrent of cum geyzers out from his ball. He holds you tightly, and since your head blocks the way, the gallons of cum force their way through your mouth and into your stomach. Your belly bulges out almost comically, as the islander empties himself inside of you, as if you were a living condom.";
		else:
			say "      Your shoulders, then your chest follows it, with some effort, and your [bodyname of player] form slowly disappears inside his cock. As your head reaches the base of his shaft, the mutant lets out a shudder which reverberates all the way down your prison. 'Damn, that feels good.' As soon as [if scalevalue of player is 3]only your ankles pathetically jiggle out[else]your entire body is squished inside[end if], the islander grabs his massive erection with both hands, and resume his prior jerk off. Each of your panicked struggles only make the man even more aroused and pleasured. Eventually, with a loud moan, he cums hard.  A torrent of cum geyzers out from his ball and straight into your face. the gallons of cum force their way through your mouth and into your stomach. Your belly bulges out almost comically. Eventually even your body and the nanites cannot keep up, and the pressure pushes you back outside. You crash several meters away, covered from head to toe in thick globs of semen, and your belly filled with the stuff.";
		say "     The islander falls on his back, knocked out by the power of his own orgasm. Dizzled by the quantites of pre and cum spilled over and inside you, you do not waste your chance, and walk away, while your nanites cope with what you endured.";

[ Player can voluntarily be cock-vored. This allows him to recover health as time passes]
to say beatMutatedIslander:
	if inasituation is true:
		say "";
	else:
		say "     The islander falls heavily on his back";

Section 2 - Monster Insertion



Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Mutated Islanded M";
	now attack entry is "[one of][or][or][or][at random]";
	now defeated entry is "[beatMutatedIslander]";
	now victory entry is "[loseMutatedIslander]";
	now desc entry is "[mutatedIslanderDesc]";
	now face entry is "charmingly human";
	now body entry is "charmingly human";
	now skin entry is "smooth";
	now tail entry is "";
	now cock entry is "[one of]normal[or]flesh-toned[or]uninfected[or]human[at random]";
	now face change entry is "it seems to tingle, moving slightly, with a start you realize it's human"; [ format as "Your face feels funny as (your text)." ]
	now body change entry is "your muscles writhe about under your skin, slowly settling back into a human shape"; [  format as "Your body feels funny as (your text)." ]
	now skin change entry is "all the hair on your body seems to fall out at once only to have what would be considered normal human hair sprout back out"; [ format as "Your skin feels funny as (your text)" ]
	now ass change entry is "your hips seem to return to a normal human's figure"; [ format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it seems to feel hot, then after a few gasps you realize it looks completely human"; [ format as "Your cock feels funny as (your text)" ]
	now str entry is 13;
	now dex entry is 21; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 14; [ These values may be used as part of alternate combat.]
	now per entry is 12;
	now int entry is 12;
	now cha entry is 15;
	now sex entry is "Male";
	now HP entry is 40;
	now lev entry is 7; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 6; [ Monster's average damage when attacking. ]
	now area entry is "Island"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 20; [ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 10; [ Cock width, more commonly used for ball size. ]
	now breasts entry is 2; [ Number of breasts the infection will give a player. ]
	now breast size entry is 5; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 20; [ Depth in inches of female sex the infection will attempt to give a player. ]
	now cunt width entry is 10; [ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 50; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 5; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "muscled"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender"   Use [one of] to vary ]
	now type entry is "human"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false; [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default"; [ Row used to designate any special combat features, "default" for standard combat. ]


Section 3 - Endings

[ Player becomes either a crazed or a reveling cock-voring monstruosity ]
when play ends:
	if bodyname of player is "Mutated Islander":
		if humanity of player < 10:
			say "     Having lost your mind, the mutated islander's infection takes over your body in dramatic fashion. [if cock length of player < 20]Your cock grows to inhuman proportions and it[else]your already inhumanly-sized cock[end if] begins to fill empty, desperately empy despite the humongous testicles hanging below. Before the military eventually put you down, you scour the island's forest, ambushing any unfortunate passerby investigating the island's secret, and push them down inside your scrotum.";
		else:
			say "     Keeping a semblance of sanity, you return to Vohr Island, and manage to find other mutated islanders, who have retained their wits like you. They guide you to the abandoned military base, in the process of being reconstructed into a small village. You live there in autarcy with your kin, until the noise of the helicopters replace the seagulls.'";


Mutated Islanders ends here.
