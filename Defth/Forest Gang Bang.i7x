Version 1 of Forest Gang Bang by Defth begins here.

[Forest event - wolves gang bang]

Pack Bang is a situation.
The sarea of Pack bang is "Forest".
When play begins:
	add Pack Bang to badspots of feral;
	add Pack Bang to badspots of guy;

Instead of resolving a Pack Bang:
	Say "     Going around what appears to be a darker path in the south part of the forest, the place looks abandoned, leaves crack under your feet, branches that had overgrown the path get in your way. The only signal that something was here is the path in itself, big enough for walks or bicycles, sometimes you see walls with overgrown herbs on it. It looks really peaceful but the noises in the background make sure to show you are not alone in here. Howls permeate the place, echoing in the dark part where your eyes can't tell what is happening in there. But this you know, you are the prey of a pack of wolves.";
	now inasituation is true;
	now FeralWolfSpecialFightNumber is 1; [pack members]
	Say "     You feel your heart beating faster, quick you need to make a choice: Do you run away? Or stay and confront your enemies?";
	say "     ([link]Y[as]y[end link]) – Run away.";
	say "     ([link]N[as]n[end link]) – Stay and fight.";
	if player consents:
		say "     [line break]";
		Say "     You turn tail and run as fast as you can, but the wolves notice and hunt you down. Your muscles burn and scream, the branches hit your face making small cuts on it, but you don't dare to slow down. Your hunters are left behind except for one, probably the leader of the pack stays close to you, his bestial stamina gaining on you. But a root on your way gives him the chance he needed to catch you, sending you falling down as you stumble over it. Sprawled on the ground, the wolf overtakes you easily and positions himself in the direction you had been running into, intent on driving you back towards his pack. You will need to deal with him quick or the rest of them will catch up.";
		wait for any key;
		now FeralWolfSpecialFightNumber is 2; [fighting the pack leader]
		challenge "Feral Wolf";
		if fightoutcome >= 20 and fightoutcome <= 29:    [lost]
			say "     You are thrown in the ground by the pack-leader - defeated, your only chance of escaping is now gone. You can hear the others closing in on you two, looks like they will have a nice prey.";
			say "[FeralWolfGangBang]"; [pack gangbang scene]
		else if fightoutcome >= 30:     [fled]
			say "You manage to make your escape from the wolf, leaving him and the rest of his pack behind.";
		else if fightoutcome >= 10 and fightoutcome <= 19:     [won]
			say "     As you beat the wolf that attacked you, and he collapses with a loud pityable whine, you hear the rustling in the underbrush behind you suddenly stop. Glancing into the woods, you spot one of the pack wolves, looking at you with a hostile stare but not daring to come forward alone. Seems like you frightened the beast by defeating his pack's alpha... which is something you make use of a second later, running at him, shouting and waving your arms - which sends the wolf fleeing out of sight. You wait a moment to see if others are coming, but it looks like you're rid of them for now. This leaves you behind, alone with the dazed wolf.";
			say "     [bold type]What do you want to do with the beast?[roman type][line break]";
			say "     [line break]";
			say "     ([link]Y[as]y[end link]) - Fuck him!";
			say "     ([link]N[as]n[end link]) - Let him go.";
			say "[FeralWolfVictorySex]";
		now Pack bang is resolved;
	else:
		say "     [line break]";
		say "     You turn around facing the pack of wolves that were hunting you, there are probably five feral wolves in different stages of the infection – with some looking almost like true wolves and what appears to be the smallest one still having some rip clothes attached to his body and what would look like a normal hairstyle in a teenager. But they all look hungry, with their red cocks pointing out of their sheaths, those red spears pointing at you almost as if saying they are going to use you for release, if you want it or not.";
		wait for any key;
		challenge "Feral Wolf";
		if fightoutcome >= 20 and fightoutcome <= 29:    [lost]
			say "[FeralWolfGangBang]";
		else if fightoutcome >= 30:     [fled]
			say "You finally run away from the wolves, leaving this part of the forest for good this time.";
		else if fightoutcome >= 10 and fightoutcome <= 19:     [won]
			challenge "Feral Wolf";
			if fightoutcome >= 20 and fightoutcome <= 29:    [lost]
				say "[FeralWolfGangBang]";
			else if fightoutcome >= 30:     [fled]
				say "You finally run away from the wolves, leaving this part of the forest for good this time.";
			else if fightoutcome >= 10 and fightoutcome <= 19:     [won]
				challenge "Feral Wolf";
				if fightoutcome >= 20 and fightoutcome <= 29:    [lost]
					say "[FeralWolfGangBang]";
				else if fightoutcome >= 30:     [fled]
					say "You finally run away from the wolves, leaving this part of the forest for good this time.";
				else if fightoutcome >= 10 and fightoutcome <= 19:     [won]
					challenge "Feral Wolf";
					if fightoutcome >= 20 and fightoutcome <= 29:    [lost]
						say "[FeralWolfGangBang]";
					else if fightoutcome >= 30:     [fled]
						say "You finally run away from the wolves, leaving this part of the forest for good this time.";
					else if fightoutcome >= 10 and fightoutcome <= 19:     [won]
						now FeralWolfSpecialFightNumber is 2; [fighting the pack leader]
						challenge "Feral Wolf";
						if fightoutcome >= 20 and fightoutcome <= 29:    [lost]
							say "[FeralWolfGangBang]";
						else if fightoutcome >= 30:     [fled]
							say "You finally run away from the wolves, leaving this part of the forest for good this time.";
						else if fightoutcome >= 10 and fightoutcome <= 19:     [won]
							say "     As you beat the pack leader, the bedraggled rest of the pack breaks, fleeing into the forest. A moment later, you are left behind, standing over the dazed wolf.";
							say "     [bold type]What do you want to do with the beast?[roman type][line break]";
							say "     [line break]";
							say "     ([link]Y[as]y[end link]) - Fuck him!";
							say "     ([link]N[as]n[end link]) - Let him go.";
							say "[FeralWolfVictorySex]";
		now Pack bang is resolved;
		move player to bunker;
		wait for any key;
	now inasituation is false; [re-enables standard scenes]

to say FeralWolfGangBang:
	say "     The wolves attack your exhausted body, every single one of them wanting to satisfy their lust with your body, the first one jumps on your back penetrating your [if cunts of player > 0]cunt [else]ass [end if]the others growl and bark at their companion's greed, and your moans are soon silenced by another as he jumps on your face, forcing your lips on his red spear. You gag on his cock as the wolf doesn't care about you, your tongue is squished inside your mouth to make space for his mad humping. His balls hit your chin, his paws are hugging tight against the back of your head, his growing knot presenting you what is to come.";
	say "     With both trying to knot you. The one fucking you face pushes his knot against your lips forcing your maw to open almost unhinging and snapping. Your eyes tear with the pain and your throat burns with the huge dick throbbing as it spill hot cum directly in your gullet. The other one turns around now that he has knotted you and with this another dog jumps at you, penetrating your asshole. The sudden penetration makes you get away from the one knotting your mouth. Your face finally free and dripping with your attackers cum.";
	WaitLineBreak;
	say "     The other wolves look angry and are fighting the one knotted in your pussy. You are pulled and pushed to your limits, and in a vain struggle to scream the pain your mouth is penetrated by another of the dog who hadn't a turn yet. You feel hot cum filling your intestines as the one on your ass finally cums, but he doesn't get a chance to knot you as both dogs on your back are pushed from you. Your holes gape without a cock, especially a knotted cock, and the cold wind of the forest send chills down your spine. The dogs fighting for a turn is now but a background noise. But your rest doesn't last long as other dogs finally fuck you.";
	say "     You are always used by at least two of the horny wolves, in fact sometimes you felt more than two cocks penetrating your now loose asshole[if cunts of player > 0] and another one inside your drenched pussy[else].[end if] Your mouth hurts from all the use and all you can taste right now is the taste of wolf's cum, you stomach aching with how it's full, since it was filled from both ends. But the wolves are now long gone, leaving you in a pool of cum. But this finally gives you enough time to rest, until you are finally good enough to go back to your adventures.";

Forest Gang Bang ends here.
