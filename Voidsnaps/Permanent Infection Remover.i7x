Permanent Infection Remover by Voidsnaps begins here.

Remove Pinfection is an action applying to nothing.
understand "Remove Pinfection" as Remove Pinfection.

check Remove Pinfection:
	if debugactive is 0:
		say "You aren't currently debugging.";
		stop the action;

carry out Remove Pinfection:
	if Nightmaretf > 0: [Nightmare]
		say "     Removing Nightmare infection! This may ruin questlines associated with it. Proceed?";
		say "     [link](Y)[as](y)[end link] Yes, please remove it.";
		say "     [link](Y)[as](y)[end link] No, I want to keep it.";
		if player consents:
			say "     You've now lost your permanent infection 'Nightmare'. Please be aware that you may need to restart your game (Not import or load a save. A brand new game!) in order to fix this quest and regain this infection.";
			now Nightmaretf is 0;
		else:
			say "     'Nightmare' infection will remain in effect!";
	if wrcursestatus >= 7 and wrcursestatus < 100: [Were-raptor]
		say "     Removing Were-Raptor infection! This may ruin questlines associated with it. Proceed?";
		say "     [link](Y)[as](y)[end link] Yes, please remove it.";
		say "     [link](Y)[as](y)[end link] No, I want to keep it.";
		if player consents:
			say "     You've now lost your permanent infection 'Were-Raptor'. Please be aware that you may need to restart your game (Not import or load a save. A brand new game!) in order to fix this quest.";
			now wrcursestatus is 0;
		else:
			say "     'Were-Raptor' infection will remain in effect!";
	if (JackalManTF > 0 and JackalManTF < 5) or (JackalBoyTF > 0): [Jackalman Transformation]
		say "     Removing JackalMan/Boy infection! This may ruin questlines associated with it. Proceed?";
		say "     [link](Y)[as](y)[end link] Yes, please remove it.";
		say "     [link](Y)[as](y)[end link] No, I want to keep it.";
		if player consents:
			say "     You've now lost your permanent infection 'JackalMan' or 'JackalBoy'. Please be aware that you may need to restart your game (Not import or load a save. A brand new game!) in order to fix this quest.";
			now JackalManTF is 0;
			now JackalBoyTf is 0;
		else:
			say "     'JackalMan' or 'JackalBoy' infection will remain in effect!";
	if isHellhound is true: [Hellhound]
		say "     Removing Hellhound infection! This may ruin questlines associated with it. Proceed?";
		say "     [link](Y)[as](y)[end link] Yes, please remove it.";
		say "     [link](Y)[as](y)[end link] No, I want to keep it.";
		if player consents:
			say "     You've now lost your permanent infection 'Hellhound!'. Please be aware that you may need to restart your game (Not import or load a save. A brand new game!) in order to fix this quest.";
			TraitLoss "Ceryneian Blessed - Feral" for Player;
		else:
			say "     'Ceryneian Blessed - Feral' and its related infection will remain in effect!";
	if "Ceryneian Blessed - Anthro" is listed in feats of Player:
		say "     Removing 'Ceryneian Blessed - Anthro!' This may ruin questlines associated with it. Proceed?";
		say "     [link](Y)[as](y)[end link] Yes, please remove it.";
		say "     [link](Y)[as](y)[end link] No, I want to keep it.";
		if player consents:
			say "     You've now lost your permanent infection 'Ceryneian Blessed - Feral!'. Please be aware that you may need to restart your game (Not import or load a save. A brand new game!) in order to fix this quest.";
			TraitLoss "Ceryneian Blessed - Feral" for Player;
		else:
			say "     'Ceryneian Blessed - Feral' and its related infection will remain in effect!";
	if "Ceryneian Blessed - Feral" is listed in feats of Player:
		say "     Removing Ceryneian Blessed - Feral infection! This may ruin questlines associated with it. Proceed?";
		say "     [link](Y)[as](y)[end link] Yes, please remove it.";
		say "     [link](Y)[as](y)[end link] No, I want to keep it.";
		if player consents:
			say "     You've now lost your permanent infection 'Ceryneian Blessed - Feral!'. Please be aware that you may need to restart your game (Not import or load a save. A brand new game!) in order to fix this quest.";
			TraitLoss "Ceryneian Blessed - Feral" for Player;
		else:
			say "     'Ceryneian Blessed - Feral' and its related infection will remain in effect!";
	if "Ceryneian Blessed - Taur" is listed in feats of Player:
		say "     Removing Ceryneian Blessed - Taur infection! This may ruin questlines associated with it. Proceed?";
		say "     [link](Y)[as](y)[end link] Yes, please remove it.";
		say "     [link](Y)[as](y)[end link] No, I want to keep it.";
		if player consents:
			say "     You've now lost your permanent infection 'Ceryneian Blessed - Taur!'. Please be aware that you may need to restart your game (Not import or load a save. A brand new game!) in order to fix this quest.";
			TraitLoss "Ceryneian Blessed - Taur" for Player;
		else:
			say "     'Ceryneian Blessed - Taur' and its related infection will remain in effect!";
	if "Wasp Royalty" is listed in feats of Player:
		say "     Removing Wasp King infection! This may ruin questlines associated with it. Proceed?";
		say "     [link](Y)[as](y)[end link] Yes, please remove it.";
		say "     [link](Y)[as](y)[end link] No, I want to keep it.";
		if player consents:
			say "     You've now lost your permanent infection 'Wasp Royalty!'. Please be aware that you may need to restart your game (Not import or load a save. A brand new game!) in order to fix this quest.";
			TraitLoss "Wasp Royalty" for Player;
		else:
			say "     'Wasp Royalty' and its related infection will remain in effect!";

Permanent Infection Remover ends here.
