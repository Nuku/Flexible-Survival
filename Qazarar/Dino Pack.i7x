Version 1 of Dino Pack by Qazarar begins here.

Section 1 - Monster Responses

DinoPackOral is a number that varies.

to say DinoPackLoss:
	if inasituation is true: [special event]
		say ""; [dealt with in the file where the event is described]
	else: [regular scene]
		if mdasslevel > 5 and (a random chance of 1 in 2 succeeds): [anal focused gangbang]
			say "     A";
			infect "Magic Drake";
		else: [teasing, blowjobs, and bukkake]
			say "     The pack finally wears you out, and you crumple to your knees. They start to circle around you, and make sounds that seem to be laughter. '[if mdasslevel > 2]It seems you're just as much of a little weakling as the mistress said, practically asking to get defeated by us. I think[else if]Oh, you barely put up a fight. I guess you were just asking for this, hmm? Well,[end if] it's about time for us to show you why we're the real hunters around here.' You can't help but nod along, already giving up control to the superior dinosaurs. In moments, their circle draws closer, and their massive shafts seem to grow even harder and more enticing, clearly preparing to show you your proper place. Finally the one that spoke stops moving when he is directly in front of you, his huge member pointing directly at your face. He makes no motion to bring it closer to you, [if player is submissive]but you still find yourself licking your lips in anticipation before stopping[else]clearly taunting you[end if].";
			if mdasslevel > 2: [slutty scene]
				say "     The others give you no time to reflect on your instinctual act, instead pressing in closer, trapping you fully between the myriad of wonderfully oversized cocks. They remain just out of reach, each bobbing up and down as they pleasure themselves, leaving you completely torn on what to do. Yet again you are left without time to think, as they immediately launch into a tirade of taunts. 'Oh, you really are a slut, aren't you? Can't take your eyes off our cocks for even a minute.' You wish you could deny them, but they're completely right. Despite your best efforts you remain entranced by all of their massive members, but not quite able to take that first step. You hear another chuckle from one of the dinos behind you, as they continue mocking you. 'Don't worry, you can have what you want. You just need to admit that you want it.'";
				WaitLineBreak;
				say "     Even in the face of their taunting ultimatum, you know deep down what you're going to choose. You're already craving the sensation of those oversized cocks in your mouth, filling you with everything they can give. You hold out as long as you can, staying completely still as the reptiles slowly stroke their shafts, until finally you can stand it no longer. You lean forward and start licking at the head of the massive cock before you, desperate to service it as fully as you can. The sight of you giving in to your own weakness acts as a signal, and the as yet untouched lizards all close the final distance as well, rubbing their huge dicks all over you, even as their mocking words wash over you. Their taunts can't affect you any more, as the only thing in your focus are the huge cocks all around.";
				say "     After several moments of diving down on the first cock, you finally gather enough clarity of thought to engage further, lifting your hands from your sides in order to grab two of the shafts prodding at you. As you glide up and down the saurian member, you begin to slide your hands back and forth across the others, bringing as much pleasure to the pack as you can. In no time at all you're treated with the first reward for your efforts, as one of the cocks you're jerking starts spasming in your hand, releasing blast after blast of cum onto your face and front. With that splash of semen comes a familiar tingling sensation, much like what you experience when the Magic Drake works her wiles on you. The feeling only drives you to work harder, and you waste no time in moving your hand to another waiting dino, ready to repeat the job.";
				say "     From there you descend into a veritable sea of cocks and cum, slowly working your way through the pack three dicks at a time. A splurt of enchanted jizz from one side is followed by a flood of the very same down your throat, and all you can do is move on to the next pair. Despite yourself, you revel in the action, the knowledge of your slutty choices only amplifying the entire sensation you're experiencing. Finally, however, it comes to an end, with even the large reservoirs of fluids held by each dino emptied onto your skin. They pull back from you, before hurling one final taunt. 'Oh, look at you just kneeling in a pool of cum, like the slut you are. But you're our slut, and a slut for the mistress, and I think that will be far better than anything else you would have been doing.' After those words, the circle breaks, and the crowd of dinos trek off, completely satisfied. On the other hand, you're left glazed and humiliated, eventually lifting yourself back onto your feet, staggering back off into the museum, already dreaming of the next time you run into them.";
				infect "Magic Drake";
				infect "Magic Drake";
			else: [normal loss]
				say "     A";
				infect "Magic Drake";

to say DinoPackVictory:
	if inasituation is true:
		say ""; [dealt with in the file where the event is described]
	else:
		say "     As you land a final solid blow, your target is knocked to the ground. In that moment, the other dinos all scatter, darting away from the site of the battle and quickly disappearing around corners and through doorways. The single remaining dinosaur is lying on the ground, helpless before you.";
		say "     [bold type]You could easily have your way with one of them if you want.[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Have fun with the little dinosaur.";
		say "     ([link]N[as]n[end link]) - Leave it be.";
		if player consents:
			if player is male:
				say "     Now that you've decided to enjoy the colorful reptile, it's simply a matter of how. You could  (Y=Ride, N=Suck)";
				if player consents:
					if player is female: [herm ride]
						say "     A";
					else: [male ride]
						say "     A";
				else: [sucking the dinos]
					say "     A";
			else:
				if player is female: [female ride]
					say "     A";
				else: [neuter ride]
					say "     A";
		else:
			WaitLineBreak;
			say "     Deciding against it, you turn around and head off, leaving the remaining dino to fend for itself.";


to say DinoPackDesc:
	setmongender 3;
	if inasituation is false: [regular text]
		say "     A whole pack of little reptiles, covered in bright scales of various colors and with wickedly sharp teeth and claws, much like those of a velociraptor. The most clearly visible feature is that they have incredibly disproportionate endowments, each dinosaur toting a turbo sized cock, almost the size of their bodies, complete with a matching external sack quite unlike your average lizard. Despite their size, you can see from the gleam in their eyes that they are clearly intelligent. Before you can think further, they suddenly dart forward and swarm you!";
	else:
		say ""; [dealt with at the source]

Section 2 - Monster Insertion

Table of Random Critters (continued)
name	enemy title	enemy name	enemy type	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	DayCycle	altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;


When Play begins:
	add "Dino Pack" to infections of guy;
	Choose a blank row from Table of Random Critters;
	now name entry is "Dino Pack";
	now enemy title entry is "";
	now enemy name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]Several dinos nip at your heels.[or]Two of them manage to rake you with their claws.[or]One leaps at you, landing a savage blow.[at random]";
	now defeated entry is "[DinoPackVictory]";
	now victory entry is "[DinoPackLoss]";
	now desc entry is "[DinoPackDesc]"; [ Description of the creature when you encounter it.]
	now face entry is "Dino Pack face, with a long canine snout filled with the sharp teeth of a powerful predator"; [ Face description, format as "Your face is (your text)."]
	now body entry is "that of a large and very muscled wolf, with canine features that give you a wild and deadly appearance"; [ Body Description, format as "Your Body is (your text)"]
	now skin entry is "[one of]black furred[or]roughly furred[or]furry[at random]"; [ skin Description, format as "You have (your text) skin"]
	now tail entry is "You have a long black tail that trails behind you, your lupine tail displaying your emotions quite clearly."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "[one of]feral canine[or]Dino Pack[or]lupine[at random]"; [ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "your face stretches and creaks as it warps into a long canine snout"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "your bones creak and crack as they morph into a more suitable form for hunting, leaving you with the strong body of a Dino Pack"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "coarse dark fur spreads rapidly over your form, leaving you more capable of enduring the elements"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "a long, bushy black tail emerges from above your ass, twitching about lightly"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "your shaft swells with sudden arousal as the end tapers out to a point, a thick knot swelling up at the base, giving it a distinct canine shape, the entire length taking on an intense reddish color"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 19;
	now dex entry is 14;
	now sta entry is 18;
	now per entry is 14;
	now int entry is 12;
	now cha entry is 10;
	now sex entry is "Male"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 65;
	now lev entry is 9; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 14; [Amount of Damage monster Does when attacking.]
	now area entry is "Forest"; [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now cocks entry is 2; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 20; [ Length infection will make cock grow to if cocks]
	now cock width entry is 14; [ Size of balls ]
	now breasts entry is 6; [ Number of Breasts infection will give you. ]
	now breast size entry is 9; [Size of breasts infection will try to attain ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 15;
	now cunt width entry is 10;
	now libido entry is 50; [ Amount player Libido will go up if defeated ]
	now loot entry is "dire-wolf cum";
	now lootchance entry is 35; [ Chance of loot dropping 0-100 ]
	now scale entry is 4; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]animalistic[or]powerful[or]strong[at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "saurian"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

when play ends: [currently not infectious]
	if bodyname of player is "Dino Pack":
		if humanity of player < 10:
			say "     A";
		else:
			say "     A";

Dino Pack ends here.
