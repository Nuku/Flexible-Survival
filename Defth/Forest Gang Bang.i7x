Version 1 of Forest Gang Bang by Defth begins here.

[Forest event - wolves gang bang]

Pack Bang is a situation.
The sarea of Pack bang is "Forest".
When play begins:
	add Pack Bang to badspots of feral;
	add Pack Bang to badspots of guy;

Instead of resolving a Pack Bang:
	say "     Going around what appears to be a darker path in the south part of the forest, you find a place that looks abandoned. Leaves crack under your feet, and branches that have overgrown onto the path get in your way. The only sign that something was here is the path in itself that's big enough for walks or bicycles. It looks really peaceful, but the noises in the background means that you are not alone in here. Howls permeate the place, echoing in the dark part where your eyes can't discern, but you know that you are now likely the prey of a pack of wolves.";
	now inasituation is true;
	now FeralWolfSpecialFightNumber is 1; [pack members]
	say "     You feel your heart beating faster. Quick, you need to make a choice: Do you run away, or stay and confront your enemies?";
	say "     ([link]Y[as]y[end link]) – Run away.";
	say "     ([link]N[as]n[end link]) – Stay and fight.";
	if player consents:
		LineBreak;
		say "     You turn tail and run as fast as you can, but the wolves notice and hunt you down. Your muscles burn and scream as branches hit your face, making small cuts on it, but you don't dare to slow down. Your hunters are left behind except for one, probably the leader of the pack. He stays close to you, his bestial stamina gaining on you, and a root in your way gives him the chance he needs to catch you, tackling you as you stumble over it. Sprawled on the ground, the wolf overtakes you easily and positions himself in the direction you had been running into, intent on driving you back towards his pack. You will need to deal with him quick, or the rest of them will catch up.";
		wait for any key;
		now FeralWolfSpecialFightNumber is 2; [fighting the pack leader]
		challenge "Feral Wolf";
		if fightoutcome >= 20 and fightoutcome <= 29: [lost]
			say "     You are thrown to the ground by the pack-leader, defeated. Your only chance of escaping is now gone. You can hear the others closing in on you two. Looks like they will have a nice prey.";
			say "[FeralWolfGangBang]"; [pack gangbang scene]
		else if fightoutcome >= 30: [fled]
			say "You manage to make your escape from the wolf, leaving him and the rest of his pack behind.";
			now Resolution of Pack Bang is 2; [fled]
		else if fightoutcome >= 10 and fightoutcome <= 19: [won]
			say "     As you beat the wolf that attacked you, and he collapses with a loud pitiful whine, you hear the rustling in the underbrush behind you suddenly stop. Glancing into the woods, you spot one of the pack wolves, looking at you with a hostile stare but not daring to come forward alone. Seems like you frightened the beast by defeating his pack's alpha... which is something you make use of a second later. Running at him, you shout and wave your arms, which sends the wolf fleeing out of sight. You wait a moment to see if others are coming, but it looks like you're rid of them for now. This leaves you behind, alone with the dazed wolf.";
			say "[FeralWolfVictorySex]"; [No need for a prompt, as there's already a prompt where this is defined]
			now Resolution of Pack Bang is 3; [won]
	else:
		LineBreak;
		say "     You turn around, facing the pack of wolves that were hunting you. There are probably five feral wolves in different stages of the infection, with some looking almost like true wolves, while the smallest one still has some ripped clothes attached to his body as well as what looks like a normal teenager hairstyle. But they all look hungry, with their red cocks pointing out of their sheaths and right at you, almost as if saying they are going to use you for release, if you want it or not.";
		wait for any key;
		challenge "Feral Wolf";
		if fightoutcome >= 20 and fightoutcome <= 29: [lost]
			say "[FeralWolfGangBang]";
		else if fightoutcome >= 30: [fled]
			say "You finally run away from the wolves, leaving this part of the forest for good this time.";
			now Resolution of Pack Bang is 2; [fled]
		else if fightoutcome >= 10 and fightoutcome <= 19: [won]
			challenge "Feral Wolf";
			if fightoutcome >= 20 and fightoutcome <= 29: [lost]
				say "[FeralWolfGangBang]";
			else if fightoutcome >= 30: [fled]
				say "You finally run away from the wolves, leaving this part of the forest for good this time.";
				now Resolution of Pack Bang is 2; [fled]
			else if fightoutcome >= 10 and fightoutcome <= 19: [won]
				challenge "Feral Wolf";
				if fightoutcome >= 20 and fightoutcome <= 29: [lost]
					say "[FeralWolfGangBang]";
				else if fightoutcome >= 30: [fled]
					say "You finally run away from the wolves, leaving this part of the forest for good this time.";
					now Resolution of Pack Bang is 2; [fled]
				else if fightoutcome >= 10 and fightoutcome <= 19: [won]
					challenge "Feral Wolf";
					if fightoutcome >= 20 and fightoutcome <= 29: [lost]
						say "[FeralWolfGangBang]";
					else if fightoutcome >= 30: [fled]
						say "You finally run away from the wolves, leaving this part of the forest for good this time.";
						now Resolution of Pack Bang is 2; [fled]
					else if fightoutcome >= 10 and fightoutcome <= 19: [won]
						now FeralWolfSpecialFightNumber is 2; [fighting the pack leader]
						challenge "Feral Wolf";
						if fightoutcome >= 20 and fightoutcome <= 29: [lost]
							say "[FeralWolfGangBang]";
						else if fightoutcome >= 30: [fled]
							say "You finally run away from the wolves, leaving this part of the forest for good this time.";
							now Resolution of Pack Bang is 2; [fled]
						else if fightoutcome >= 10 and fightoutcome <= 19: [won]
							say "     As you beat the pack leader, the rest of the bedraggled pack breaks, fleeing into the forest. A moment later, you are left behind, standing over the dazed wolf.";
							say "[FeralWolfVictorySex]"; [No need for a prompt, as there's already a prompt where this is defined]
							now Resolution of Pack Bang is 4; [won against the whole pack]
		move player to bunker;
		wait for any key;
	now Pack bang is resolved;
	now inasituation is false; [re-enables standard scenes]

to say FeralWolfGangBang:
	now Resolution of Pack Bang is 1; [gangbang]
	setmonster "Feral Wolf";
	say "     The wolves attack your exhausted body, every single one of them wanting to satisfy their lust with your body. The first one jumps on your back, penetrating your [if player is female]cunt [else]ass [end if]. The others growl and bark at their companion's greed, and your moans are soon silenced by another as he jumps on your face, forcing your lips on his red spear. You gag on his cock as the wolf doesn't care about you, and your tongue is squished inside of your mouth to make space for his mad humping. His balls hit your chin while his paws are hugging tight against the back of your head, his growing knot presenting you what is to come.";
	say "     With both trying to knot you, the one fucking your face pushes his knot against your lips, forcing your maw to open, almost unhinging and snapping it. Your eyes tear with the pain, and your throat burns with the huge dick throbbing as it spill hot cum directly in your gullet. The other one turns around now that he has knotted you, and with this, another dog jumps at you, penetrating your asshole. The sudden penetration makes you get away from the one knotting your mouth, your face dripping with your attacker's cum.";
	WaitLineBreak;
	say "     The other wolves look angry and are fighting the one knotted in your pussy. You are pulled and pushed to your limits, and in a vain struggle to scream, your mouth is penetrated by another of the dogs who haven't had a turn yet. You feel hot cum filling your intestines as the one on your ass finally cums, but he doesn't get a chance to knot you as both dogs on your back are pushed from you. Your holes gape without a cock, especially a knotted cock, and the cold wind of the forest send chills down your spine. The dogs fighting for a turn is now just background noise, but your rest doesn't last long as other dogs finally fuck you.";
	say "     You are always used by at least two of the horny wolves. In fact, sometimes, you feel more than two cocks penetrating your now-loose asshole[if player is female] and another one inside of your drenched pussy[end if]. Your mouth hurts from all of the use, and all that you can taste right now is wolf's cum. Your stomach is aching with how full it is, since it was filled from both ends. But the wolves are now long gone, leaving you in a pool of cum. This finally gives you enough time to rest, until you are finally good enough to go back to your adventures.[impregchance]";
	now Resolution of Pack Bang is 1; [gangbang]

Forest Gang Bang ends here.
