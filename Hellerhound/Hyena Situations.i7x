Hyena Situations by Hellerhound begins here.
[Several events transferred to Consolidated Outside Events in Song's folder]

Section 1 - Hyena Kill

[Moved to Consolidated Outside Events]

Section 2 - Panther Trap

[Moved to Consolidated Outside Events]

Section 3 - Intact Fountain

Table of GameEventIDs (continued)
Object	Name
Intact Fountain	"Intact Fountain"

Intact Fountain is a situation.
ResolveFunction of Intact Fountain is "[ResolveEvent Intact Fountain]". Sarea of Intact Fountain is "Campus".

to say ResolveEvent Intact Fountain:
	say "     You find a public fountain, intact and even with the water still running despite everything going on in the city and campus. However it looks like the water's purity is less than ensured, judging by the clothing scattered liberally on the ground and sometimes hanging over its edge and dipping into the liquid. The broad rim seems to have been a convenient place for anyone to sit down and fuck on, so you see quite a few splatters of cum and milk on the stone and clouding the formerly clear water. You have no doubt that countless strains of nanites swirl around in this fountain. You could still drink, or maybe collect some samples, but it is at your own risk.";
	say "     Do you drink?";
	if Player consents:
		LineBreak;
		say "     You drink deeply from the fountain, quenching your thirst no matter what the cost.";
		if thirst of Player > 0 or hunger of Player > 0:
			PlayerDrink 10;
			PlayerEat 4;
			say "     You feel less thirsty and hungry after guzzling some thick, infected, tasty water, yum!";
		if "Iron Stomach" is not listed in feats of Player:
			if a random chance of 1 in 3 succeeds:
				randominfect;
			else:
				weakrandominfect;
	else:
		LineBreak;
		say "     You avoid the fountain like it was another nanite plague.";
	if a random chance of one in three succeeds:
		if a random number between 1 and 8 is:
			-- 1:
				if MaleList is not banned and DemonList is not banned:
					WaitLineBreak;
					say "     You identify some demon seed on the side of the fountain. Do you wish to collect it?";
					if Player consents:
						ItemGain demon seed by 1;
						if a random chance of 1 in 5 succeeds, infect "Demon Brute";
					LineBreak;
			-- 2:
				if HermList is not banned and FurryList is not banned:
					WaitLineBreak;
					say "     You find some Gryphon Milk on the fountain. Collect it?";
					if Player consents:
						ItemGain gryphon milk by 1;
						if a random chance of 1 in 5 succeeds, infect "Blue Gryphon Herm";
					LineBreak;
			-- 3:
				if FemaleList is not banned:
					WaitLineBreak;
					say "     You find a glob of goo floating in the fountain water. It appears to be unaffected by the clamor of nanites around it. Collect it?";
					if Player consents:
						ItemGain glob of goo by 1;
						if a random chance of 1 in 5 succeeds, infect "Goo Girl";
					LineBreak;
			-- 4:
				if TransList is not banned and FurryList is not banned:
					WaitLineBreak;
					say "     You find a bunch of what is identifiably dog milk on a spray nozzle that is out of order. Collect it?";
					if Player consents:
						ItemGain dog milk by 1;
						if a random chance of 1 in 5 succeeds, infect "Smooth Collie Shemale";
					LineBreak;
			-- 5:
				if FemaleList is not banned and FurryList is not banned:
					WaitLineBreak;
					say "     There is skunk goo floating in the cloudy water. Collect it?";
					if Player consents:
						ItemGain skunk goo by 1;
						if a random chance of 1 in 5 succeeds, infect "Skunk Female";
					LineBreak;
			-- 6:
				if HermList is not banned and FurryList is not banned:
					WaitLineBreak;
					say "     There is some webbing across sections of the fountain. Do you want to collect it?";
					if Player consents:
						ItemGain spider webbing by 1;
						if a random chance of 1 in 5 succeeds, infect "Spidergirl";
					LineBreak;

Hyena Situations ends here.
