Version 2 of Fox Hunt by Song begins here.

[ Version 1.0 - Initial event - Kaleem ]
[ Version 2.0 - Rewrite of initial event and expansion - Song
- Added options to hide or run away
- If caught while hiding, player can choose to fellate the horse or fight them
- Planned but not included content options have been commented out
]

Section 1 - Situation

Fox Hunt is a situation.
The sarea of Fox Hunt is "Park".

Instead of resolving Fox Hunt:
	say "     While taking a walk through a forested section of the park, you hear a strange, indistinct sound in the distance. As the noise draws closer, you realize that it's coming from a small pack of baying hounds, only growing louder and clearer the longer you pause to listen. You a take a cautionary look around the area and realize that you're standing on the only clear path through the underbrush, with naught but some trees to hide behind.";
	say "     [bold type]How do you react to this situation?[roman type][line break]";
	LineBreak;
	say "     ([link]1[as]1[end link]) - Hide behind a tree. The dogs sound like they're quick on their feet, and you don't want to try your luck running away.";
	[say "     ([link]2[as]2[end link]) - Stand your ground. The worst that could happen is having to fend off some mutants if they take umbrage with your presence.";]
	say "     ([link]2[as]2[end link]) - Run away. You bet you could make some distance before they arrive if you're fleet-footed enough.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-2)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2:
			break;
		else:
			[say "Invalid choice. Type [link]1[end link] to hide, [link]2[end link] to stand your ground, or [link]3[end link] to flee.";]
			say "Invalid choice. Type [link]1[end link] to hide or [link]2[end link] to flee.";
	if calcnumber is 1: [Hide]
		say "     Taking what you feel is the most prudent course of action, you swiftly press yourself against the bark of the thickest nearby tree. ";
		if scalevalue of player is 4:
			say "Your large stature makes hiding a much more difficult endeavor, though you make a valiant effort to scrunch yourself into as narrow a frame as you can manage. ";
		if scalevalue of player > 4:
			say "Your enormous stature makes hiding a near-worthless endeavor, any attempt to passably obscure yourself behind the trunk leaving your sides in clear view, and you eventually settle on a position that exposes the least of your body. ";
		say "You pull your chest in with a deep, taut breath and nervously listen to the hounds drawing closer. In the corner of your vision, you catch sight of large latex fox running through the underbrush, his panicked yipping a clear tell that he's the goal of their chase. Following close on the canid's heel is a large group of feral foxhounds, a cacophony of barking and baying filling the air as the four-legged shapes lope past your hiding spot.";
		WaitLineBreak;
		say "     You heave a sigh of relief and are just about to step out of cover when ";
		let diceroll be a random number from 1 to 20;
		let target be 10;
		if "Bad Luck" is listed in feats of player, increase target by 2;
		if "Stealthy" is listed in feats of player, decrease target by 2;
		if hardmode is true, increase target by 2;
		if scalevalue of player is 1, decrease target by 4;
		if scalevalue of player is 2, decrease target by 2;
		if scalevalue of player is 4, increase target by 2;
		if scalevalue of player is 5, increase target by 4;
		if diceroll >= target:
			say "you're startled by the figure of a muscular anthro mustang running after the dogs, calling out their names and cheering them on from a distance. From the appearance of things, you'd guess that the humans-turned-hounds are owned by the horse-man and part of the same hunting party. You collect yourself from the small shock and shake your head incredulously, then take the path in the direction they just came from, relieved that this little diversion didn't bloom into an unwanted altercation.";
		else:
			say "one of the dogs skids to a halt and sniffs, scenting something different in the air. You hesitate, not moving a muscle as it tail wags and muzzle bobs, but your caution is ultimately for naught. The moment the hound spots you, it lets out several loud, excited barks to alert the others, who quickly abandon their pursuit to turn in your direction. What's even more concerning than the assembled canines, however, is the new voice that calls after them, cussing and fuming at the distracted dogs.";
			say "     Walking briskly into view, the chestnut brown stallion is easily seven feet tall. The horse is dressed in ostentatious hunting attire that is strongly reminiscent of English aristocracy. A black equestrian helmet dons his head, little holes cut the resin to allow his elongated ears to jut through. He wears an apple red coat, the form-hugging garment flowing down into boisterous white breeches before terminating in large, sturdy hooves. 'Did I say you could stop, you mangy curs?' comes the rough, haughty tone of an anthro horse-man. He unfurls a whip and cracks the long leather lash in the air once, then twice, each resounding snap making the feral hounds wince. 'Do I need to punish all of you until you obey?' he warns, the dogs whining and pressing themselves to the ground submissively at his words. 'I didn't think so,' the horse laughs, letting out a frustrated snort as he rolls up the whip again. 'Now, what in the good Queen's name did you all stop to stare at?'";
			WaitLineBreak;
			say "     Transfixed by the spectacle of the scene before you, you fail to move in time before the equine notices your presence. His frown gives way to a self-satisfied smirk as he sizes you up, almost as if devouring you with his gaze. 'It appears that we have a spectator,' the horse announces pompously, chuckling to himself as he trots closer to your position. Frozen with fear, you find yourself unable to move your legs - or maybe that's just the effect that the heavy scent of his arousal's having on you on you, making you feel lightheaded and dizzy. The strong equine musk wafts from beneath his clothes, its intoxicating aroma clouding your mind and impeding your judgment. Breathing deeply, your eyes are drawn down to prominent bulge in his breeches, a splotch of wetness forming in the fabric that only enhances the pungent scent of his virility.";
			say "     Moving within arm's reach, the horse-man cups your chin and tilts your gaze to meet his own. 'You have some nerve, distracting the hounds like that. Sabotaging the hunt has incurred you a heavy debt[if scalevalue of player < 4], little one[end if].' You'd nod in understanding, but his firm, commanding grip deprives you of the required range of motion. 'Let's cut straight to the chase, mmh? You owe me a favor, and I'll give you a choice. You can either bend the knee and service your lord,' the stallion offers salaciously, 'or I'll sic the hounds on you, instead. Which would you prefer?'";
			say "     [bold type]How do you try to defuse the situation?[roman type][line break]";
			LineBreak;
			now calcnumber is 0;
			while calcnumber is 0:
				say "     ([link]1[as]1[end link]) - Orally service the horse.";
				[say "     ([link]2[as]2[end link]) - Let the foxhounds have their way with you.";]
				say "     ([link]2[as]2[end link]) - Fight them.";
				now calcnumber is 0;
				while calcnumber < 1 or calcnumber > 2:
					say "Choice? (1-2)>[run paragraph on]";
					get a number;
					if calcnumber is 1 or calcnumber is 2:
						break;
					else:
						[say "Invalid choice. Type [link]1[end link] to orally service the horse, [link]2[end link] to let the foxhounds have their way with you, or [link]3[end link] to fight them.";]
						say "Invalid choice. Type [link]1[end link] to orally service the horse or [link]3[end link] to fight them.";
			if calcnumber is 1:
				say "     Whether it's the veiled threat to comply or the alluring scent of the handsome horse-man before you, your pride gives way to [if player is dominant]a begrudging decision[else if player is submissive]an eager response as your strong submissive instincts swell to the surface[else]a sheepish response[end if]. The equine chuckles dryly and pulls his hand away. He then turns from you, raising his arms by his side while addressing the assembled canines. 'Your master has some business to attend to. I want you all to be obedient and stay put until this little diversion is over, understood?' Well-trained creatures, the hounds bark and wag their tails, then sit down together on the path to guard their master.";
				say "     Swallowing nervously, you steel your resolve and kneel down before the still-clothed stallion, pausing to stare at the prominent tent in his breeches. Up close, the impression of his thick, hard-hard cock through the fabric seems even more imposing, and the intense, tangy heat that wafts from it makes you drool with lustful desire[if player is dominant] in spite of your dominant nature[end if]. The stallion's features curl in a malevolent smirk as he brushes a hand over the back of your head. 'Well...?' he implores. 'Don't keep your lord waiting.'";
				WaitLineBreak;
				say "     On cue, you press your nose to his breeches with a soft, airy moan, a shudder running down your spine. You slide your tongue along the smooth contours of his cockmeat, catching hints of his salty, exciting flavor through the fabric. The taste is invigorating, entrancing, melting away any thoughts of resistance as you drink in his heady essence. You can hardly wait to wrap your mouth around that throbbing ramrod of equine meat and see just how many inches you can stuff down your throat. The horse-man gives a soft nicker and uses his spare hand to unfasten his buckle. 'If you'll do the honors,' he teases in a deep and sultry voice. You can't help but feel a great sense of pride at pleasing the sexy stallion, licking your lips as you remove the buttons along each pantleg. Before you loosen them all, the garment slides down the horse-man's legs to form a useless heap at his hooves. Standing half-naked before you, you take note of his total lack of undergarments and - more importantly - the huge, throbbing horsecock that you've been lusting for all this time.";
				say "     Beyond ready at this point, you reach up to wrap your hands around his meaty equine length. You feel each twitch and bob as you soak your hands in the slick veneer of musk and pre that coats his supple dick, paying special attention to the rigid medial ring midway down his mast. The stallion shivers visibly at your attention, though steadies himself and pushes his hips forward in a stoic plea for more. You giggle softly, drunk on lust, and press a kiss to your lord's flared crown, giving his urethra several slow, languid licks that catch his leaking pre on your palate. Sampling directly from the source, you feel an almost giddy rush of excitement, something about his scent and flavor feeling utterly right to your sex-addled mind. He, the proud leader of the hunt; you, the impudent interloper that must be brought to justice. You crease a dreamy smile at your own debasement, then shiver and moan hotly, all too eager to stroke and pump his length while servicing the stud with your tongue and mouth. If this is the punishment you can expect, maybe you should interfere with his hunts more often?";
				WaitLineBreak;
				say "     Thoughts drifting back to the task at hand, you encircle his flare with patient, grooming licks that both tease and stimulate the stallion's succulent dick. Your sweeps trail away from the fat crown of his cock, their path leading down his ponderous length. Your tongue slithers over the bulging, pulsing cumvein, tracing its imperfect route on the descent. Before long, that meaty pillar rests squarely between your ears, and your mouth is poised to kiss and lick at the stallion's heavy orbs, drinking in the dizzying fragrance of his sack. The horse-man nickers softly, only to let out a whinny of pleasure when you cup his hefty balls, rolling them between palm, thumb and forefingers to excite the sexy hoss further. You start to squeeze and knead into his full, pliant sack, your rhythmic motions eliciting sticky spurts of pre. Soon, his dickhead's all but drooling a slurry of rich pre over your back, that ample stallion spunk leaking down the length of his swollen, turgid meat.";
				say "     'Mmph, that's quite enough!' the equine finally intones, grabbing you by the scruff of your neck to pull you back from his testes. The flare of his cock in clear view again, you begin to salivate with almost famished hunger, aching to have that thing inside you. Your yearning is answered when he smears the dome-shaped tip to your face, slathering your features in a hot, slimy dose of his musky stallion pre. You don't need to wait for your lord's command to take action, opening wide in a seemingly futile effort to fellate the thing. A small part of you wonders just how you're expected to deepthroat him without dislocating your jaw, but all semblance of rational thought is pushed from your mind when the spongy perimeter pops past your teeth. A muted whine leaves your maw as his hands guide you closer, each inch of delectable equine cock a struggle to contain, that cheek-bulging pillar pushing your tongue flat and grinding against the roof of your mouth. It's a rough, claiming conquest that you wouldn't have any other way, giving a half-strangled gurgle as its mottled length sinks past your nanite-numbed uvula and directly down your throat.";
				WaitLineBreak;
				say "     Buried against the horse-man's crotch, your nasal breath is doused in his heady scent, given no reprieve from the sensory overload that threatens to overwhelm your sanity. Your throat burns as it seizes around his prick, trying to wring and milk the stallion of his seed. The line between pleasure and pain grows blurrier as he grinds against your features, urging that throbbing flare deeper into your larynx. You lazily wrap your arms around his waist, the meager, musk-laced oxygen reaching your lungs making you feel pleasantly weak and lightheaded, and your instinctual urge to struggle eventually gives way to placid compliance.";
				say "     After what feels like nearly a minute of doing nothing but lapping at his wonderful lance, your muscles relax enough to allow his bestial cock to drag back out, his grip on your head holding you steady until only the pre-dribbling tip remains within your maw. The fat crown leaks over your tongue, drizzling its heady ambrosia over your taste buds, and the amazing flavor of his rich pre-fluid clouds your mind further. Before you can collect your unfocused thoughts, the stallion drives his length back down your throat, drawing a fluttering, muffled moan around that massive equine dick.";
				say "     A pleasured whinny sounds out from above as he sets to slowly, firmly thrusting into your body, treating you as little more than a sleeve to sate his lusts. The steady patting of his heavy orbs against your chin is strangely exciting, something about the handsome hoss degrading and defiling you turning you on beyond belief. In time, any semblance of care in his movements gives way to animalistic need, the pace of his bucks rising to an almost feverish tempo, slamming against your face with wet splatters of precum that soak your [skin of player] fore. Each pump into your maw [if player is herm]makes your soaked cunt[sfn] clench with need and cock[smn] twitch and spurt at full attention[else if player is female]makes your soaked cunt[sfn] clench with need[else if player is male]makes your cock[smn] twitch and spurt at full attention[else]draws moans, gurgles and trembles of undirected bliss[end if], pleasure buzzing through your nerves and aching, pre-slick throat.";
				WaitLineBreak;
				say "     Just as your vision begins to grow blurry from the lack of oxygen and the stinging pungency of his equine musk, you feel the base of that impressive dick bulge. Sensing what's coming, you grind your face against the sexy horse's crotch, and his hoof-tipped fingers curl to cinch you tight. A cross between a whinny and a cry sounds out above as powerful cannon blasts of equine cum surge into your body, marring your insides with sticky webs of his seed. That ample, overwhelming spunk spills into your stomach and floods back over your palate, bulging your cheeks with the sheer volume of creamy cum. You struggle to swallow it all without sputtering, giving brief, sharp breaths through your nose for air with each pulse and throb of his throat-scrubbing cock inside you. ";
				if player is not neuter:
					say "The submissive bliss of pleasing your lord drives you over the edge, your hands reaching below to ";
					if player is herm:
						say "pump your [cock size desc of player] [if cocks of player > 1]lengths together[else]length[end if] and finger-fuck your sopping wet puss[yfn] through a messy, dual-sexed orgasm that has you splattering the ground with your [cum load size of player] load while trembling in mindless ecstasy.";
					else if player is female:
						say "plunge your fingers into sopping wet cunt[smn], finger-fucking yourself through a messy, trembling orgasm that soaks the ground beneath you.";
					else:
						say "pump your [cock size desc of player] [if cocks of player > 1]lengths together[else]length[end if] as you shudder in orgasm, splattering the ground before you in your [cum load size of player] load.";
				say "     Finally spent, the stallion gives a satisfied snicker as he withdraws his massive cock from your mouth. The still-engorged crown scrapes across your tender flesh and excavates some of his spent, slimy seed with it, the slick spunk spilling from your mouth when his flare pops free. You gasp for air, then collapse forward onto all fours, panting and moaning softly as you hold your bloated, sloshing belly. The heat of his virile seed suffuses your form, wreathing you in warmth and happiness. 'You have served me well,' the haughty horse nickers as he his fingers brush over your cheek. You give a feeble, unthinking nod and lean into his touch, your gaze transfixed on his still-leaking dick while you bask in the miasma of the afterglow.";
				WaitLineBreak;
				say "     Your hazy reverie is interrupted by a bark from one of the waiting foxhounds. Chuckling to himself, the hunt-leader takes a step back and rolls his broad shoulders. He lets out a soft, pleasured sigh and intones, 'That was a very pleasant diversion. Now, be a sport and redress me.' You abide his suggestion without word, your thoughts too mired in hazy bliss to object. Once you've pulled up his breeches, obscuring his cum- and spit-slick dick, the horseman slips his hands under your arms and pulls you up against his muscular frame. 'Next time, consider joining us on our hunt. We could always use another member.' He then releases you, allowing you to stumble back as he turns to address his hounds.";
				say "     With his posh and confident voice, the horseman rallies his dogs around him. 'Our quarry has escaped, although I have dealt with the interloper. It is time to return home.' The hounds slowly rise, yawning and wagging their tails, then follow after their equine master, leaving you behind to gather your unfocused thoughts. The stallion's seed continues to slosh inside your belly as you rise on unsteady feet. You stumble away from the area, relieved that you've made peace with your mind still intact.";
			[if calcnumber is 2:
				say "     FOXHOUND ORGY";]
			if calcnumber is 2:
				say "     Unwilling to debase yourself, you lash out at the smug anthro horse, throwing your full weight into the attack. The stallion, having anticipated this, dodges aside and calls out, 'Hounds! Attack the new quarry!' Before you can continue your assault, the feral dogs have surrounded you, barking and growling aggressively. Looks like you have no choice but to fight off all of them at once.";
				challenge "Feral Foxhound";
				if fightoutcome >= 10 and fightoutcome <= 19: [won]
					say "";
				else if fightoutcome >= 20 and fightoutcome <= 29: [lost]
					say "";
				else if fightoutcome >= 30: [fled]
					say "     Unable or unwilling to fight the pack of feral foxhounds, you seize a gap in their coordinated attacks to flee. However, you're stopped short by a sudden yank on your arm, keeping you in place. 'Not on my watch,' the anthro stallion who has caught you all but growls, keeping his firm hold on you despite your attempts to pull free. When you finally yank away, you stumble back on your ass, his imposing figure looming over you. 'I've had about enough of your insolence. Hounds, stay where you are. I'm going to ravage our quarry myself.' Looks like it's a fight!";
					challenge "";
					if fightoutcome >= 10 and fightoutcome <= 19: [won]
						say "";
					else if fightoutcome >= 20 and fightoutcome <= 29: [lost]
						say "";
					else if fightoutcome >= 30: [fled]
						say "     Again taking the path of least resistance, you attempt to flee from the horseman. You manage to catch a lucky break this time, the stallion not fleet-footed enough to catch you himself and his hounds too stupid to pursue you without a direct order The last thing you hear from him is the word salad of haughty English insults before you turn a corner, sprinting through the trees and underbrush to shake the trail.";
						say "     Once certain that you've made it a safe distance, you bend over to catch your breath and wipe your brow. Relief washing over you, you continue on, glad that you managed to escape the mutants and their perverted little game.";
	[if calcnumber is 2: [Stay put]
		say "";]
	if calcnumber is 2: [Flee]
		say "     Rather than risk hide and hair by staying put, you turn tail and start running. Your legs carry you from the beaten path to avoid the hounds['] most likely route, and you continue to run until they're out of earshot. Relief washing over you, you bend over to catch your breath. You wipe your brow from the exertion, then continue on, glad that you managed to avoid the mutants.";
	increase score by 1;
	now Fox Hunt is resolved;

Section 2 - Monster Insertion

Table of Random Critters (continued)
name	enemy title	enemy name	enemy type	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	DayCycle	altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	add "Feral Foxhound" to infections of guy;
	add "Feral Foxhound" to infections of furry;
	now name entry is "Feral Foxhound"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is "Feral Foxhounds";
	now enemy name entry is "";
	now enemy type entry is 1; [unique enemy]
	now attack entry is "[one of]The hounds nip and bite at you from all sides![or]One of the dogs rears up behind you and pounces, nearly knocking you off your feet.[or]A hound bites into your leg and shakes its head violently![or]One of the dogs flanks you and rams against your side![or]While fending one off, another hound gets a running start and bowls you over, lapping playfully at your face before jumping back again.[at random]";
	now defeated entry is "[BeatTheHounds]";
	now victory entry is "[LostToHounds]";
	now desc entry is "[mongendernum 13]     A pack of quadrupedal foxhounds, about the size of regular dogs, surround you on all sides. Under the command of their equine master, they growl, bark, and try to catch you off-guard in a coordinated effort. Their tails stand tall, the dogs seeming playful yet alert as they circle you with predatory intent.";
	now face entry is "drawn forward into a long canine snout, with broad, floppy ears and a slightly domed skull. Floppy flews hang over either side of your lower jaw, jiggling slightly whenever you talk or bark";
	now body entry is "quadrupedal and sleek, with muscular shoulders and a deep chest tapering down to narrow hindquarters. Your long legs terminate in paws for feet, indistinguishable from those of a normal dog";
	now skin entry is "[one of]tan and white[or]white and tan[at random] furred";
	now tail entry is "You have a firm, sleek tail that curls up when alert or excited.";
	now cock entry is "[one of]canine[or]knotted[at random]";
	now face change entry is "it draws forward into a long canine snout. Large ears sprout from the side of your head and flop down, framing your face, and your flews elongate to hang over your lower jaw";
	now body change entry is "your hips reform and legs shorten with snaps of flowing muscle and bone. Soon enough, you stoop forward on all fours, assuming a distinctly quadrupedal stance. Looking down, you find that your hands and feet have shifted into canine paws, making manual dexterity much more difficult";
	now skin change entry is "soothing tingles spread all over your body. Any hair or blemishes your skin once had slough off, replaced by a smooth, sleek coat of white and tan fur";
	now ass change entry is "a long canine tail pushes out from your spine. The appendage stands stock-stiff for a moment, then relaxes and begins to wag. Your new tail naturally curls upward, though it tucks between your legs when skittish or afraid, betraying your emotions";
	now cock change entry is "a bulb forms at the base, quickly swelling out into the firm base of a knot. The crown becomes tapered and leaky, dribbling a thin slime of pre, and soon its color deepens to a bestial pinkish-red. After spurting a few excited strings of pre over the ground, your altered cock draws back into a plump canine sheath, protecting it when not in use";
	now str entry is 16;
	now dex entry is 10;
	now sta entry is 16;
	now per entry is 20;
	now int entry is 2;
	now cha entry is 6;
	now sex entry is "Male"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 110;
	now lev entry is 7; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 9; [ Monster's average damage when attacking. ]
	now area entry is "Nowhere"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 9; [ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 4; [ Cock width, more commonly used for ball size. ]
	now breasts entry is 0; [ Number of nipples the infection will give a player. ]
	now breast size entry is 0; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 9; [ Depth in inches of female sex the infection will attempt to give a player. ]
	now cunt width entry is 4; [ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 30; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 2; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]canine[or]quadrupedal[at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "canine"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false; [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Fox Hunt ends here.
