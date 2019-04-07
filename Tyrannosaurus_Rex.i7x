Version 1 of Tyrannosaurus Rex by Shay begins here.
[Version 1 - Initial Setup]

"Adds a Male Tyrannosaurus Rex to Flexible Survival's Wandering Monsters table"

when play begins:
	add { "Tyrannosaurus Rex" } to infections of guy; [he is male]
	add { "Tyrannosaurus Rex" } to infections of girl; [and makes player female]

[ AldricEncounters (Amount player ran into aldric as an enemy)      ]
[  0: never met him                                                 ]
[  4: met him four times                                            ]

AldricEncounters is a number that varies.
setmonster Tyrannosaurus Rex;

Section 1 - Monster Responses

to say aldric wins:
	say "     Defeated, you stop struggling and the sand man pulls you in for a deep kiss, his lips touching yours with a tickling feeling. '[if player is male]Dude[else]Sweetie[end if], now let's have some fun!' He leads you over to a large towel lying nearby in the sand, then pulls off your clothes and lowers you on it to lie on your back.";
	if player is male:[male + herm]
		say "     Kneeling between your legs, he runs his hands down your body, caressing your prone form. Then he leans in to lick over your nipples and kiss your stomach before moving his hands to your legs and lifting them over his shoulders. With a softly spoken 'Relax, baby.' he puts his hard manhood against your asshole and starts pushing in against your pucker, slowly but surely until his cockhead pops in. Accompanied by his hands softly stroking up and down your legs, he sinks more and more into you until he finally bottoms out, his balls tickling your skin.";
		WaitLineBreak;
		say "     'I'm gonna rock your world,' his charming voice tells you, then he starts grinding his hips against your crotch. Thrusting in and out, the feeling of his slightly rough member rubbing your insides has you gasping in lust in no time, grabbing the towel with both hands to hold on to something as you writhe around. Your sandy beach lover has quite some technique, often changing the angle in which he slides into you to rub sensitive spots you barely knew you had. Fucking you with deep thrusts, then pausing for a while and just caressing your body as you get too close to orgasm, he keeps you in a state of sexual bliss for a long time, allowing you to forget about the hardships of survival in this changed world for now.";
		say "     Then, after you don't know how long, he takes out all the stops, pulling out till only the tip of his cock remains inside you and slamming it all the way in again, followed by quick and hard thrusts that quickly drive you over the edge. You shout in pleasure as your balls tighten and long strings of cum shoot from your [cock of player] shaft all over your stomach and chest. The sand man stud isn't far behind with his own orgasm, burying his whole cock deep inside you a final time and pumping a huge load of his seed deep into your asshole.[mimpregchance]";
		WaitLineBreak;
		say "     He rests a moment to catch his breath with his slowly softening cock still inside you, then leans over you and gives you a kiss on the lips. 'You're an amazing lay, baby. Come find me again later if you want to have another go. But for now, just listen to the waves and rest...' He's right about that - your coupling was incredibly satisfying, but pretty exhausting too. As you realize how tired you really are, you feel the sand man pull out of you carefully, then see him walk off along the beach looking for new conquests as you doze off.";
	else if player is female:[female]
		say "     Kneeling between your legs, he runs his hands down your body, caressing your prone form. Then he leans in to lick over your nipples and kiss your stomach before moving his hands to your legs and lifting them over his shoulders. With a softly spoken 'Relax, baby.' he puts his hard manhood against your pussy lips and rubs it against them, then slowly but surely pushes his cockhead into your moist hole. Accompanied by his hands softly stroking up and down your legs, he sinks more and more into you until he finally bottoms out, his balls tickling your skin.";
		WaitLineBreak;
		say "     'I'm gonna rock your world,' his charming voice tells you, then he starts grinding his hips against your crotch. Thrusting in and out, the feeling of his slightly rough member rubbing your insides has you gasping in lust in no time, grabbing the towel with both hands to hold on to something as you writhe around. Your sandy beach lover has quite some technique, often changing the angle in which he slides into you to rub sensitive spots you barely knew you had. Fucking you with deep thrusts, then pausing for a while and just caressing your body as you get too close to orgasm, he keeps you in a state of sexual bliss for a long time, allowing you to forget about the hardships of survival in this changed world for now.";
		say "     Then, after you don't know how long, he takes out all the stops, pulling out till only the tip of his cock remains inside you and slamming it all the way in again, followed by quick and hard thrusts that quickly drive you over the edge. You shout in pleasure as your pussy starts dripping with femcum, part of it absorbed by his member, the rest running down to soak into the towel below. The sand man stud isn't far behind with his own orgasm, burying his whole cock deep inside you a final time and pumping a huge load of his seed directly into your womb.[fimpregchance]";
		WaitLineBreak;
		say "     He rests a moment to catch his breath with his slowly softening cock still inside you, then leans over you and gives you a kiss on the lips. 'You're an amazing lay, baby. Come find me again later if you want to have another go. But for now, just listen to the waves and rest...' He's right about that - your coupling was incredibly satisfying, but pretty exhausting too. As you realize how tired you really are, you feel the sand man pull out of you carefully, then see him walk off along the beach looking for new conquests as you doze off.";
	else:[neuter]
		say "     Kneeling between your legs, he runs his hands down your body, caressing your prone form. Then he leans in to lick over your nipples and kiss your stomach before moving his hands to your legs and lifting them over his shoulders. With a softly spoken 'Relax, baby.' he puts his hard manhood against your asshole and starts pushing in against your pucker, slowly but surely until his cockhead pops in. Accompanied by his hands softly stroking up and down your legs, he sinks more and more into you until he finally bottoms out, his balls tickling your skin.";
		WaitLineBreak;
		say "     'I'm gonna rock your world,' his charming voice tells you, then he starts grinding his hips against your crotch. Thrusting in and out, the feeling of his slightly rough member rubbing your insides has you gasping in lust in no time, grabbing the towel with both hands to hold on to something as you writhe around. Your sandy beach lover has quite some technique, often changing the angle in which he slides into you to rub sensitive spots you barely knew you had. Fucking you with deep thrusts, then pausing for a while and just caressing your body as you get too close to orgasm, he keeps you in a state of sexual bliss for a long time, allowing you to forget about the hardships of survival in this changed world for now.";
		say "     Then, after you don't know how long, he takes out all the stops, pulling out till only the tip of his cock remains inside you and slamming it all the way in again, followed by quick and hard thrusts that quickly drive you over the edge. You shout in pleasure as your whole body is filled with a deep feeling of satisfaction. The sand man stud isn't far behind with his own orgasm, burying his whole cock deep inside you a final time and pumping a huge load of his seed deep into your asshole.[mimpregchance]";
		WaitLineBreak;
		say "     He rests a moment to catch his breath with his slowly softening cock still inside you, then leans over you and gives you a kiss on the lips. 'You're an amazing lay, baby. Come find me again later if you want to have another go. But for now, just listen to the waves and rest...' He's right about that - your coupling was incredibly satisfying, but pretty exhausting too. As you realize how tired you really are, you feel the sand man pull out of you carefully, then see him walk off along the beach looking for new conquests as you doze off.";

to say aldric loses:
	say "     The sand man takes a step back and raises his hands in a pacifying gesture. 'Ok, ok - I give up. You can be on top when I fuck you.' Judging from the hard bulge in his speedos, it doesn't even seem to occur to him that your fight might have been anything other than a sex game for dominance. He's pretty single-minded in his expectation of getting sex with anyone on the beach.";
	if player is male:
		LineBreak;
		say "     Looking over the handsome sand man, you could either mount his cock with you on top [link](1)[as]1[end link], turn the tables and fuck him [link](2)[as]2[end link], try to teach him a painful lesson to leave you alone in the future [link](3)[as]3[end link] or just go [link](4)[as]4[end link].";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 4:
			say "Choice? (1-4)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to ride his cock, [link]2[end link] to fuck him, [link]3[end link] to knee him or [link]4[end link] to just leave.";
		if calcnumber is 1:[mount his cock]
			say "Mount";
		else if calcnumber is 2:[fuck him in the ass]
			say "Fuck";
		else if calcnumber is 3:[knee him in the crotch]
			say "     Calmly stepping up to the beach stud, you tell him that sometimes he should take the hint when someone is not interested... and then you knee him in the groin, leaving him to sink to his knees in a pained whimper as you walk away. Its doubtful that he'll learn anything from this and actually stop bothering you the next time you meet, though there's something oddly satisfying in leaving this pushy guy on his knees and holding his crotch.";
		else:[leave]
			say "     Deciding you should focus on more important stuff right now, you turn away and walk off, leaving a rather surprised and disappointed beach stud behind.";
	else:
		LineBreak;
		say "     You consider getting a ride on that cock of his ([link]Y[as]y[end link]) or just leaving ([link]N[as]n[end link]).";
		if player consents:
			say "Consent";
		else:
			say "     Deciding you should focus on more important stuff right now, you turn away and walk off, leaving a rather surprised and disappointed beach stud behind.";

to say aldricDesc:
	setmongender 3;
	if "Anthro Rex" is not listed in EncounteredEnemies of player: [first encounter]
		say "     Rounding a corner in the seemingly endless halls of the museum, you suddenly find yourself eye to eye with the king of primordial tyrants, the Tyrannosaurus Rex. Seems he was just coming the other way and you almost ran into each other. His soft golden eyes, reptilian in shape and flecked with specks of amber, make it feel like you're looking into a setting sun. He focuses his gaze on you, the reaction betraying hints of a greater intelligence that defies the mind-breaking effects of the nanite infection. Then he blinks with his large lids and breaks the eye-lock, giving you time to take in the rest of his stature. The creature's eyes are framed in a scaled, sharply angled face with a broad, masculine chin. His anthro reptilian body is quite muscular, red and black in coloration and a whopping seven feet tall. ";
		WaitLineBreak;
		say "     Interestingly, he happens to be wearing clothing, the first of which is a dark leather sash that crosses his well-defined pecs and curves down around his hips on one end. Below his flat, scale-covered abs, a ragged-looking pair of rabbit fur shorts covers the hips of the dinosaur, barely containing the sizable package at his crotch. To top the image of a large predator off, his lower body ends in digitigrade legs, armed with large curved claws. Having studied you in turn, the tyrannosaurus's shoulders flex as he straightens himself, then lets out a deafening roar, shaking the more delicate exhibits in the room and making your ears ring. Clenching his human-like hands into loose fists, the man's claws scrape along the edges of his scaly palms. Seeing the sway of his reptilian tail behind him, you can see that he's getting ready to pounce, so you ready yourself for a fight!";
		increase AldricEncounters by 1;
	else if AldricEncounters is 4: [Has met aldric 4 times]
		say "     Walking into yet another large room of the museum, stuffed with priceless artifacts in often easily shattered glass cases, you once again happen upon the king of primordial tyrants, the Tyrannosaurus Rex. His sun-yellow eyes focus on you in recognition, making it clear that you encountered this large muscled male before, making you idly wonder if he may be the only one of his kind. But that remains to be thought about later, as you see the telltale sway of his reptilian tail behind him, telling you that he's about to pounce, you once again ready yourself for a fight. But to your surprise the fight never comes. The large dinosaur starts his move to attack, then suddenly pauses in mid-motion and shakes his head as if to clear it, followed by three steps backwards. 'Wait, no. We've met before, haven't we? I guess I shouldn't just jump anyone I meet, should I?' With that said, he suddenly stretches out his arm and the clawed hand at its end, waiting for you to take it. 'No hard feelings, eh? The Name is Aldric,' he grunts. You reach for his hand, but it has already been retracted, with the large male turning around to go back the way he came, not speaking another word. As you watch him go off into the distance, you can't help but feel you have made good progress with the strange rex - Aldric, today.";
	else:
		say "     Walking into yet another large room of the museum, stuffed with priceless artifacts in often easily shattered glass cases, you once again happen upon the king of primordial tyrants, the Tyrannosaurus Rex. His sun-yellow eyes focus on you in recognition, making it clear that you encountered this large muscled male before, making you idly wonder if he may be the only one of his kind. But that remains to be thought about later, as you see the telltale sway of his reptilian tail behind him, telling you that he's about to pounce, you once again ready yourself for a fight.";

Section 2 - Monster Insertion

Table of Random Critters (continued)
name	enemy title	enemy name	enemy type	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	DayCycle	altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now name entry is "Tyrannosaurus Rex";
	now enemy title entry is "Tyrannosaurus Rex";
	now enemy name entry is "Aldric";
	now enemy type entry is 1; [unique enemy]
	now attack entry is "[one of]He hits you in the head, strong enough to daze, but not hurt you.[or]He grabs your arm for a moment, pulling you in for a quick kiss.[or]He embraces you and gives your ass a quick grope before you can pull away.[at random]";
	now defeated entry is "[aldric loses]";
	now victory entry is "[aldric wins]";
	now desc entry is "[aldricDesc]";
	now face entry is "smooth, with sculpted angular features. A stylish pair of sunglasses sits over your eyes and flowing locks made of fine sand behaving like it was strands of hair surround your face";
	now body entry is "that of an idealized male, with washboard abs and muscled arms and legs";
	now skin entry is "fine white sand, making up your body and"; [ format as "You have (your text) skin"]
	now tail entry is "You have a round, firm bubble butt. A tight black speedo draws others['] looks to it."; [ write a whole Sentence or leave blank. ]
	now cock entry is "human"; [ format as "You have a 'size' (your text) cock ]
	now face change entry is "it shapes itself into a chiseled male visage. A stylish pair of sunglasses coalesces out of a swirl of dust in front of your eyes"; [ format as "Your face feels funny as (your text)." ]
	now body change entry is "it is reshaped into a muscled male form and your chest takes an idealized shape with washboard abs"; [ format as "Your body feels funny as (your text)." ]
	now skin change entry is "it takes on the texture of very fine sand, formed into shape like normal skin and covering your whole body without blemishes or hair"; [ format as "Your skin feels funny as (your text)." ]
	now ass change entry is "it takes the well-rounded shape of an idealized bubble butt. A black speedo coalesces out of a swirl of dust around your hips, covering your curves"; [ format as "Your ass feels funny as (your text)." ]
	now cock change entry is "your manhood becomes human-shaped"; [ format as "Your cock feels funny as (your text)." ]
	now str entry is 16;
	now dex entry is 16;
	now sta entry is 18;
	now per entry is 16;
	now int entry is 12;
	now cha entry is 12;
	now sex entry is "Male";
	now HP entry is 60;
	now lev entry is 8;
	now wdam entry is 8;
	now area entry is "Museum";          [ Case sensitive]
	now cocks entry is 1;               [ number of cocks if sex is 'Male' or 'Both' ]
	now cock length entry is 14;
	now cock width entry is 5;          [ Size of balls ]
	now breasts entry is 2;             [ Number of nipples. ]
	now breast size entry is 0;         [ Size of breasts infection will try to attain ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;               [ number of pussies if sex is 'Female' or 'Both' ]
	now cunt length entry is 0;
	now cunt width entry is 0;
	now libido entry is 10;             [ Amount player Libido will go up if defeated ]
	now loot entry is "";               [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0;          [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3;               [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "sculpted";      [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "sculpted";       [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now DayCycle entry is 0;      [ 0 = Up at all times; 1 = Nocturnal (night encounters only); 2 = Diurnal (day encounters only) ]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Section 3 - Endings

when play ends:
	if bodyname of player is "Tyrannosaurus Rex":
		if humanity of player < 10:
			say "As you succumb to the infection, you move to the beach and spend all your time there from then on, propositioning any person creature you find - and even mostly getting what you want given your good lucks and charming single-mindedness. When the military moves in a while later, you have some intimate contacts with a female soldier scouting the beach and later two of her friends, a man and a women, whom she brings to see you. Together, they decide to smuggle you out of the city to enjoy your company once they're back at their home base. So soon, after being given a shot to make you non-infectious, you find yourself in a shipping crate on a truck.";
			say "Thankfully, your new form doesn't really need to breathe, otherwise this would be pretty uncomfortable. After arriving at your destination, they release you on a small beach, where you spend your time getting regular visits from your soldier friends and also have fun with anyone else who comes along.";
			stop the action;   [no other succumb endings, as the player isn't in the city anymore]
		else:
			say "When the military finally moves in, you're brought to a holding facility like so many others and have to spend quite a while waiting for the doctors to have a look at you. When they finally do, they're a bit nonplussed, with you no longer being an organic life-form, but rather mineral. They give you the regular shot to make you non-infectious, which thankfully works, then send you over to a nearby research lab to be thoroughly prodded and poked for a few days. As it turns out, your new form doesn't actually need to breathe - and neither does it age, which is a nice plus.";
			say "You find your way towards sunny Florida over the next few months, where you end up as a part-time fireman, part time treasure hunter. For both, not needing air is a definite plus - no problems with smoke inhalation, and being able to just walk along the ocean floor, you find many interesting wrecks... old ones, or those that only found their way to the bottom during the nanite infection spread. And hanging around in the sun on a beach, watching the local male and female cuties as your water-logged form dries out again is the ideal way to end any day...";

Tyrannosaurus Rex ends here.
