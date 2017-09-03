Version 1 of Dragontaur For FS by Stripes begins here.
[Version 1.3 - Alt Attack tweaked]
"Adds a Dragontaur creature to Flexible Survival's Wandering Monsters table to go along with Sam the Dual-Taur's content."

Section 1 - Monster Responses

dragontaurcatch is a number that varies. dragontaurcatch is normally -45.

when play begins:
	add { "Dragontaur" } to infections of guy;
	add { "Dragontaur" } to infections of furry;
	add { "Dragontaur" } to infections of Tailweapon;		[usable for Tail Strike feat]
	add { "Dragontaur" } to infections of Reptilelist;		[list of reptile infections]
	add { "Dragontaur" } to infections of Taurlist;			[list of tauric infections]


to say losetodragontaur:
	if hp of Sam is 15:
		say "     Sam grabs you roughly and [if scalevalue of player < 4]hefts you over his head. With a growl, he tosses you several yards away[otherwise]pushes you back with a powerful shove[end if]. You land half on and half off a cot, painfully injuring your back.";
	else:
		if cunts of player > 0 or ( anallevel is not 1 and a random chance of 2 in 3 succeeds ):
			say "     Having defeated you, the dragontaur roars triumphantly and presses you to the ground. It rumbles in your ear as it moves to mount you about [if cunts of player > 0]it's going to breed you full of whelps[otherwise]pound you until you're overflowing with cum[end if] and thrusts into you with little preamble. It's tapered tip is designed for prying open reluctant holes and pushes its way into your [if cunts of player > 0][cunt size desc of player] pussy with ease[otherwise]tight anus[end if]. The draconic cock thickens as it pushes further into you, each of those ridges on it acting as delightfully pleasurable markers of just how much meat the powerful taur is stuffing inside you. The dragon fucks you with wild, animalistic abandon, pounding you until you're nearly insensate with lust and finally climax as he blasts shot after shot of his creamy load into your wanton hole, bloating your [if cunts of player > 0]womb[otherwise]belly[end if] with his prodigious output. Finished, he pushes you aside, leaving you on the ground and leaking his cum from your overstuffed and gaping [if cunts of player > 0]pussy[otherwise]asshole[end if].[ovichance]";
		else:
			say "     Having defeated you, the dragontaur rumbles excitedly and presses you to the ground. It murrs in your ear about how [one of]much fun it's going to have with you[or]it's been looking for some fun[at random]. You are beyond resisting its advances at this point, wrapping your arms around him and burying your face to his firm scales, taking in his spicy scent while he chuckles and rubs your head.";
			say "     Stepping over you, he presses his throbbing cock to your face, precum spurting from it across your lips. The musky fluid has a spicy taste that is quite exciting. You find yourself wanting more and lick at his dribbling glans before welcoming his cock into your mouth. You moan in pleasure as that ridged length slides past your lips and over your tongue before pressing its tapered glans down your throat. He presses one of his forepaws at the back of your head, encouraging you to bob your head over his meat as he fucks your face with increasing fervor. You reach up and knead his hefty balls until he finally cums, feeding you a heavy load of his exotically tasting semen. As he's finishing up, he pushes your head back roughly, letting the last few spurts of his seed spray across your face, marking you as having been used by him. Once he's done, you're left feeling full from his large load but still eagerly licking at the cum running down your face for more.";


to say beatthedragontaur:
	if hp of Sam is 15:
		say "     You manage to knock Sam down, having beaten the fight out of him.";
	else if a random number between 1 and 100 < dragontaurcatch and ( cocks of player > 0 or cunts of player > 0):
		say "     The beaten dragontaur backs away from you, stumbling somewhat from his injuries. Like the others, he prepares to release a blast of flame to allow his escape, but you rush forward and clamp his muzzle shut in an arm lock. He thrashes briefly before exhaling a cloud of smoke as the flames fail. You press him to the ground and pin down his wings.";
		say "     [bold type]With him caught, you consider having some fun with him. Shall you go ahead with that plan?[roman type][line break]";	
		Line Break;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if the player consents:
			if cunts of player > 0:
				say "     Deciding that you might indeed want to have some fun with the dragon, but on your own terms, you push the fallen taur over onto his side and grab his cock. While it had been softening and receding after his defeat, it quickly rises back to its full glory as you stroke it. He tries to rise so he can mount you, but you push him back down firmly and instead straddle him. With his rear turned over and the rest of him on his side you're able to position yourself overtop of his cock and guide it into your wet cunt. His tapered glans slips easily into you, spreading you open for his thickening length below it.";
				say "     You run your hands over his scaly hide as you sink more and more of his ridged shaft into you. Each of those ridges provide delightful pleasure to you as they slide across your pussy lips and inner walls. His hips try to buck and thrust into you, but to little avail. You're the one setting the pace this time and, having gotten very aroused by this point, intent to make the most of it. You vary your pace and position several times, riding through several small orgasms while always building yourself higher and not letting the dragon get off. And when your massive orgasm finally comes crashing over your in waves of ecstasy, you ride him hard and fast, pushing the dragon over the edge as well. He roars loudly and cums hard, blasting thick dragoncum deep inside you, filling your womb with his virile seed.[ovichance]";
				say "     Only once you've drained his balls do you ease yourself off of him and stand on weak knees after your mind-blowing climax. The dragontaur staggers to his feet as well. You give his rear a hard swat and send him off now that you're done with him. Cowed, at least for the moment, the powerful beast takes flight and soars away.";
			else:
				say "     Deciding that you might indeed want to have some fun with the dragon, but on your own terms, you keep a grip on the dragon and move around in front of him. Grabbing his horns, you pull his face between your legs so his muzzle's squarely at your cock. Finding himself face to penis with you, he tries to pull back, but you keep a firm grip on his horn with one hand. You slap your cock across his face with the other and order him to get sucking. Beaten, the powerful male has no choice but to comply. He licks slowly across your shaft with his forked tongue.";
				say "     While he only gives a few tentative slides of his tongue at first, soon enough he's lapping over your erection and balls, growing more willing to service the stronger male. Pulling his head closer, he opens his muzzle and slides your cock into his mouth. He fellates you with increasing eagerness as his arousal grows and he becomes an eager participant. You thrust into his muzzle, driving your [cock size desc of player] [cock of player] cock into his mouth harder and faster until you finally cum, feeding the horny dragontaur your cum[if cock width of player > 40] until he's stuffed full and bloated with it[otherwise] and leaving his tummy a little rounded from it all[end if]. You get the dragontaur to lick you clean before you'll release him and send him on his way with a swat on his rear. Cowed, at least for the moment, the powerful beast takes flight and soars away.";
		else:
			say "     Not in the mood to play with the blue dragontaur, you give his ass a hard swat and warn him not to get in your way again. He growls at the swat, but slinks a few feet away before taking to the air and flying off.";
		decrease dragontaurcatch by 15;
	else:
		say "     The beaten dragontaur backs away from you, stumbling somewhat from its injuries. It opens its maw wide and releases its fire in a wide wave, forcing you back. It takes this opportunity to make its retreat and take to the air. It does not fly steadily, but is able to stay airborne and make its escape.";
		increase dragontaurcatch by 33;
		if dragontaurcatch > 90, now dragontaurcatch is 90;


to say dragontaurdesc:
	setmongender 3;		[creature is male]
	if hp of Sam is 15:	[Fight w/Sam]
		say "     Drawn into a fight with Sam, you find yourself facing off against the powerful dragontaur. He has a draconic head with a pointed muzzle filled with sharp teeth and has pointy horns at the back of it. His hands have claws and his feet are taloned. His tail is thick and has a spaded tip. Sam's hide is covered in thick, hard scales as well. Both armed and armoured, the dragontaur is a dangerous enemy.";
	else:			[Random Dragontaur]
		say "     Before you is a draconic taur creature, definitely one of Sam's many descendants. The creature's draconic head has a long, pointed muzzle with a slight curve at the end. Its blue scales darken towards the back of its head as they approach the base of the ivory horns which jut from the back of its head. Aside from the large pair at the top, there are three smaller horns on each side. Its upper body is generally human in shape, but covered in azure scales and is quite toned, showing firm pecs and hard abs under the dense scales.";
		say "     Its lower body is fully draconic, a compact but powerful beast with strong limbs and a stocky frame to support its weight. Its azure scales give way to harder, steel blue plates along its underbelly. Atop the back of its tauric body are a pair of draconic wings that are folded alongside its sides at the moment. It has a long lizard tail ending in a spaded tip. Beneath its lower body hangs its plump sheath and large balls, from which its ridged cock is starting to emerge.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Dragontaur";		[The creature's name as displayed and used in naming descriptions]
	now attack entry is "[one of]The dragontaur slams its tail into you, bashing you aside![or]The dragontaur rears up and slashes you with its foreclaws![or]It snaps and tears at you with its fangorious maw![or]The dragontaur punches you soundly in the jaw![or]The dragon creature grabs you with its clawed hands and slams its bony head into yours. The head butt leaves you seeing stars for a moment.[at random]";
	now defeated entry is "[beatthedragontaur]";				[ Text when monster loses. Change 'template' as above. ]
	now victory entry is "[losetodragontaur]";					[ Text when monster wins. Change 'template' as above. ]
	now desc entry is "[dragontaurdesc]";						[ Description of the creature when you encounter it. ]
	now face entry is "draconic with a long, pointed muzzle that slight curve at the end. There are a pair of large ivory horns which jut from the back of your head along with three smaller pairs below that";
	now body entry is "considerably transformed, having gained a tauric lower half that is draconic in appearance. While your upper body largely resembles that of a strong, fit human being, your lower body is that of a stocky dragon";
	now skin entry is "steel blue scales";
	now tail entry is "You have a thick dragon tail swaying behind you, slapping the ground on occasion with its spaded tip.";
	now cock entry is "[one of]ridged[or]draconic[or]pointed[or]tapered[as decreasingly likely outcomes]";
	now face change entry is "you feel a powerful pounding at the top of your skull. As this grows worse, your face pushes outward and changes with several snaps and pops. A draconic muzzle forms as the pain in your skull suddenly fades as large horns push forth from the back of your head";
	now body change entry is "your body shifts and bends unnaturally into two sections. The upper half reforms into a muscular and masculine body with visible definition. The lower section becomes that of a four-legged lizard with a stocky frame and taloned claws for feet. Your hands are a cross between these and normal hands. Finding yourself with a dragontaur body like Sam's, your mind quickly adjusts to compensate for your new quadrupedal form";
	now skin change entry is "your skin grows thick and hard, forming heavy blue scales across your entire body";
	now ass change entry is "strange twinges run up and down your spine. Each time these tingles run down, they seem to travel further and further down until the growth of your new, draconic tail is complete";
	now cock change entry is "pulses and throbs with need. As you watch, it changes shape and becomes more tapered and gains a pointed, conical glans for pushing into its prey. Ridges form along the length of your cock for added stimulation. You find yourself looking forward to putting your new tool to use";
	now str entry is 19;			[ These are now the creature's stats... ]
	now dex entry is 19;			[ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 16;			[ These values may be used as part of alternate combat.]
	now per entry is 12;
	now int entry is 14;
	now cha entry is 12;
	now sex entry is "Male";		[ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now hp entry is 99;			[ The monster's starting hit points. ]
	now lev entry is 11;			[ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 10;			[ Monster's average damage when attacking. ]
	now area entry is "nowhere";		[ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1;			[ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 16;		[ Length infection will make cock grow to if cocks. ]
	now cock width entry is 8;		[ Cock width, more commonly used for ball size. ]
	now breasts entry is 0;			[ Number of breasts the infection will give a player. ]
	now breast size entry is 0;		[ Size of breasts the infection will try to attain. ]
	now male breast size entry is 0;    [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;			[ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 0;		[ Depth of female sex the infection will attempt to give a player. ]
	now cunt width entry is 0;		[ Width of female sex the infection will try to give a player. ]
	now libido entry is 70;			[ Target libido the infection will rise towards. ]
	now loot entry is "";			[ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0;		[ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 4;				[ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]strong[or]muscled[or]athletic[or]tauric[at random]";
	now type entry is "[one of]draconic[or]dragontaur[as decreasingly likely outcomes]";
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is true;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "dragontaur";	[ Row used to designate any special combat features, "default" for standard combat. ]


Section 3 - Alt Combat

Table of Critter Combat (continued)
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)	altstrike (rule)
"dragontaur"	firebreath rule	--	--	drtaurpounce rule	20	--	--	--	--	--

this is the drtaurpounce rule:		[double-damage pouncing]
	choose row monster from the table of random critters;
	let rangenum be ( 80 - ( peppereyes * 4 ) );
	let dam be ( ( wdam entry times a random number from rangenum to 120 ) / 50 );	[Double damage]
	if hardmode is true and a random chance of 1 in ( 10 + peppereyes ) succeeds:
		now dam is (dam * 150) divided by 100;
		say "The enemy finds a particular vulnerability in your defense - Critical Hit![line break]";
	say "The [one of][name entry][or]draconid[or]dragontaur[or]dragon creature[purely at random] growls and pounces atop you, [one of]knocking[or]pushing[or]slamming[purely at random] you down briefly. Its many talons claw at you while the dragon roars. This [one of]powerful[or]strong[or]devastating[purely at random] assault does [special-style-2][dam][roman type] damage!";
	now damagein is dam;
	say "[noshieldabsorbancy]";		[unable to use shield while pinned]
	if absorb is greater than dam:
		now absorb is dam;
	if absorb is greater than 0:
		say "You prevent [special-style-1][absorb][roman type] damage!";
	decrease hp of the player by dam;
	increase hp of player by absorb;
	follow the player injury rule;
	say "You are [descr].";


Section 4 - Endings

when play ends:
	if bodyname of player is "Dragontaur":
		if humanity of player is less than 10:
			if hp of Sam >= 10 and hp of Sam <= 29:
				if cunts of player > 0 and cocks of player > 0:
					say "     As you lose your humanity to your increasingly dragontaur nature, you feel your lustful drive to breed grow stronger. You and Sam pair up as a couple of increasingly feral dragontaurs. While Sam does maintain more of his old self than you do in the end, he's more than happy to stay in the city and turn the bunker into his personal lair. He breeds you often, filling you plump with dragontaur eggs most of the time. You do make forays with him out into the city as well, siring plenty of offspring of your own in the many sexy females and herms you find out there. With you both breeding strong, draconic offspring, the numbers of dragontaurs in the area quickly grow.";
				else if cunts of player > 0:
					say "     As you lose your humanity to your increasingly dragontaur nature, you feel your lustful drive to breed grow stronger. You and Sam pair up as a couple of increasingly feral dragontaurs. While Sam does maintain more of his old self than you do in the end, he's more than happy to stay in the city and turn the bunker into his personal lair. He breeds you often, filling you plump with dragontaur eggs most of the time. You do make forays with him out into the city as well, getting mounted by other males while Sam partakes in the females. With you both breeding strong, draconic offspring, the numbers of dragontaurs in the area quickly grow.";
				else if cocks of player > 0:
					say "     As you lose your humanity to your increasingly dragontaur nature, you feel your lustful drive to breed grow stronger. You and Sam pair up as a team of increasingly feral dragontaurs. While Sam does maintain more of his old self than you do in the end, he's more than happy to stay in the city and turn the bunker into his personal lair. You often make forays with him out into the city, siring plenty of offspring of your own in the many sexy females and herms you both find out there. With you both breeding strong, draconic offspring, the numbers of dragontaurs in the area quickly grow.";
				else:
					say "     As you lose your humanity to your increasingly dragontaur nature, you feel your lustful drive to breed grow stronger. You and Sam pair up as increasingly feral dragontaurs. While Sam does maintain more of his old self than you do in the end, he's more than happy to stay in the city and turn the bunker into his personal lair. Lacking any defined gender of your own, you often act at the guardian to the dragontaur's lair. You also enjoy the role of servicing the powerful male, particularly enjoying to lick him clean after returning from an expedition into the city to breed the females he finds out there. With the virile dragontaur's efforts out there, the number of his draconic progeny grow steadily.";
			else if hp of Sam >= 30 and hp of Sam <= 49:
				say "***Succumb w/Sam as Vixentaur. Should not be possible.";
			else if hp of Sam >= 50 and hp of Sam <= 69:
				if cunts of player > 0 and cocks of player > 0:
					say "     As you lose your humanity to your increasingly dragontaur nature, you feel your lustful drive to breed grows stronger. You and Sam pair up as a couple of increasingly feral, herm taurs. While Sam does maintain more of her old self than you do in the end, she's more than happy to stay in the city and turn the bunker into her personal lair. You breed with the dracovixentaur often, swapping roles as top or bottom to ensure you're both well bred. You do make forays with her out into the city often, siring plenty of offspring of your own in the many sexy females and herms you find out there. While Sam's offspring are a collection of dragontaurs, vixentaurs and dracovixentaurs, the number of dragontaurs in the area grow to be the most frequent of the three.";
				else if cunts of player > 0:
					say "     As you lose your humanity to your increasingly dragontaur nature, you feel your lustful drive to breed grows stronger. You and Sam pair up as a couple of increasingly feral taurs. While Sam does maintain more of her old self than you do in the end, she's more than happy to stay in the city and turn the bunker into her personal lair. You are bred by the dracovixentaur often, filling you plump with numerous eggs most of the time. You do make forays with her out into the city often, getting mounted by other males while Sam partakes in the females. While Sam's offspring are a collection of dragontaurs, vixentaurs and dracovixentaurs, the number of dragontaurs in the area grow to be the most frequent of the three.";
				else if cocks of player > 0:
					say "     As you lose your humanity to your increasingly dragontaur nature, you feel your lustful drive to breed grows stronger. You and Sam pair up as a couple of increasingly feral taurs. While Sam does maintain more of his old self than you do in the end, she's more than happy to stay in the city and turn the bunker into her personal lair. She allows you to mount her and breed her often, keeping her heavy with eggs most of the time. You do make forays with her out into the city often, enjoying mounting and breeding many of the females you find with her. While Sam's offspring are a collection of dragontaurs, vixentaurs and dracovixentaurs, the number of dragontaurs in the area grow to be the most frequent of the three.";
				else:
					say "     As you lose your humanity to your increasingly dragontaur nature, you feel your lustful drive to breed grows stronger. You and Sam pair up as increasingly feral taurs. While Sam does maintain more of her old self than you do in the end, she's more than happy to stay in the city and turn the bunker into her personal lair. Lacking any defined gender of your own, you often act at the guardian to the dracovixen's lair. You also enjoy the role of servicing the powerful herm, particularly enjoying to lick her clean after returning from an expedition into the city, sucking her cock or licking the leaking cum from her well-used pussy. While Sam's offspring are a collection of dragontaurs, vixentaurs and dracovixentaurs, the number of dragontaurs in the area grow to be the most frequent of the three.";
			else if hp of Sam is 98:
				say "     Shortly after you lose your humanity, you are found by Sam the Dragontaur, who takes you in to be his personal sex toy. He greatly enjoys using you to satisfy his sexual desires. His throbbing dragonhood is pounded into you until you're nothing but an obedient slut for dragon cock. He'll share you often with his offspring or take you with him on his forays into the city, offering you up as a plaything for any creature he desires. He barters the use of your mouth[if cocks of player > 0], cock[end if][if cunts of player > 0], cunt[end if] or ass at times to bribe a potential new lover on occasion. A duty you're more than happy to perform. With the virile dragontaur's efforts out there, the number of his draconic progeny grow steadily.";
		else:
			if hp of Sam >= 10 and hp of Sam <= 29:
				say "     You are able, through the strong connection Sam shares with you, to convince the dragontaur to leave the city with you once the military forces move in to extract the survivors. There is some interest over your unusual forms, but Sam's university's connections to RSX keep you from too much unwanted scrutiny. There is also much interest over the data Sam's managed to collect in his time in the city, [if hospquest is 13 and hp of doctor matt >= 12]which you do arrange to quietly share with Dr. Matt to assist in his research efforts[else if hospquest > 13]which you do manage to slip a copy of to Dr. Mouse before departing[otherwise]but RSX's pull is able to keep it from being confiscated[end if]. The reward you earn for this is quite sizable, more than Sam had originally been anticipating, having gained Rick's share and more due to the exceptional success of his rather enthusiastic work.";
				say "     You and Sam continue his work, entering other infected hot spots to collect samples and classify the creatures within, all while getting to enjoy their myriad variety. Your collective strength and experience make you able to deal with most anything you find while exploring. And if clutches of dragontaurs start popping up in those areas as well, then all the better[if cunts of player > 0]. As Sam's mate, you lay several clutches of dragon eggs as well, helping the spread of the strong, dominant dragontaurs wherever you go[end if].";
			else if hp of Sam >= 30 and hp of Sam <= 49:
				say "***Survive w/Sam as Vixentaur. Should not be possible.";
				say "     You are able, through the strong connection Sam shares with you, to convince the vixentaur to leave the city with you once the military forces move in to extract the survivors. There is some interest over your unusual forms, but Sam's university's connections to RSX keep you from too much unwanted scrutiny. There is also much interest over the data Sam's managed to collect in her time in the city, [if hospquest is 13 and hp of doctor matt >= 12]which you do arrange to quietly share with Dr. Matt to assist in his research efforts[else if hospquest > 13]which you do manage to slip a copy of to Dr. Mouse before departing[otherwise]but RSX's pull is able to keep it from being confiscated[end if]. The reward you earn for this is quite sizable, more than Sam had originally been anticipating, having gained Rick's share and more due to the exceptional success of her rather enthusiastic work.";
				say "     You and Sam continue her work, entering other infected hot spots to collect samples and classify the creatures within, all while getting to enjoy their myriad variety. Your collective strength and experience make you able to deal with most anything you find while exploring. And if clutches of dragontaurs and litters of vixentaurs start popping up in those areas as well, then all the better[if cocks of player > 0]. As Sam's mate, you enjoy siring several clutches and litters in her as well, helping the spread of the strong dragontaurs and sexy vixentaurs wherever you go[end if].";
			else if hp of Sam >= 50 and hp of Sam <= 69:
				say "     You are able, through the strong connection Sam shares with you, to convince the dracovixentaur to leave the city with you once the military forces move in to extract the survivors. There is some interest over your unusual forms, but Sam's university's connections to RSX keep you from too much unwanted scrutiny. There is also much interest over the data Sam's managed to collect in her time in the city, [if hospquest is 13 and hp of doctor matt >= 12]which you do arrange to quietly share with Dr. Matt to assist in his research efforts[else if hospquest > 13]which you do manage to slip a copy of to Dr. Mouse before departing[otherwise]but RSX's pull is able to keep it from being confiscated[end if]. The reward you earn for this is quite sizable, more than Sam had originally been anticipating, having gained Rick's share and more due to the exceptional success of her rather enthusiastic work.";
				say "     You and Sam continue her work, entering other infected hot spots to collect samples and classify the creatures within, all while getting to enjoy their myriad variety. Your collective strength and experience make you able to deal with most anything you find while exploring. And if clutches of dragontaurs, litters of vixentaurs and broods of dracovixentaurs start popping up in those areas as well, then all the better[if cocks of player > 0 and cunts of player > 0]. As Sam's mate, you enjoy siring several offspring in her as well as having her breed you with them, helping the spread of the strong dragontaurs, sexy vixentaurs and herm dracovixentaurs wherever you go[else if cocks of player > 0]. As Sam's mate, you enjoy siring several clutches and litters in her as well, helping the spread of the strong dragontaurs, sexy vixentaurs and herm dracovixentaurs wherever you go[else if cunts of player > 0]. As Sam's mate, you enjoy getting bred with many of her offspring as well, helping the spread of the strong dragontaurs, sexy vixentaurs and herm dracovixentaurs wherever you go[end if].";
			else if hp of Sam is 98:
				say "     When the military arrive to rescue you and the others, you feel somewhat disappointed about not being able to patch things up with Sam, but hope he's enjoying his new life out in the city. There is considerable interest over your new form and you are subject to a battery of tests by the military scientists before finally being released. You visit the university which sponsored Sam's work upon you're release, informing them (in general terms) what happened to their researchers and of the loss of their data. They provide you with a reward for this information. It is unfortunately quite small[if cocks of player > 0], but the human secretary your seduced and banged while there more than makes it worth your time. Being unprepared for the virility of those transformed, she's left bred full of dragontaurs[otherwise], but is enough to make it worth your time[end if].";
				say "     Being a strong and impressive creature, you find work as hired muscle in several capacities. And while some of these tasks may be a little shady, your intimidating physique keeps you from getting into too much trouble (except when you want to make some of your own). It also allows you to impress or dominate many a prospective lover into sex with you[if cocks of player > 0], breeding many a clutch of whelps in your wake[else if cunts of player > 0], bearing many a clutch of eggs which you leave to hatch and spread in your wake[end if] as you travel the countryside.";

Dragontaur For FS ends here.
