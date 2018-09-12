Version 1 of High Rise Events by Wahn begins here.
[ Version 1 - First Event ]

Road Fuck Aftermath is a situation.
The sarea of Road Fuck Aftermath is "High".

Instead of resolving a Road Fuck Aftermath:
	say "     Traveling through the High Rise District, you come upon an abandoned sports car. The yellow machine is dented at the front, apparently from running over a parking meter, and the driver's side door stands wide open. Interestingly, the windshield of the car has been punctured in two places from the inside, with something narrow and black still sticking through the cracked pane of glass. Curiosity aroused, you check the car out more closely and see that two stiletto heels are embedded in the windshield from the inside. Cum-stains and the shreds of a red dress allow you a fairly good guess of what happened here: by your estimate, the woman who owned the car was out driving when a nanite-infected creature made her swerve, leading to the collision with the meter. Gaining access to the most likely shocked driver, the assailant must have fucked her right there in the car seat. In the resulting struggle (and/or ecstasy), damaging the windshield with a kick from stiletto heels is a definite possibility.";
	LineBreak;
	say "     [bold type]Do you want to grab the heels from the car?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Sure, they are designer shoes!";
	say "     ([link]N[as]n[end link]) - Nope. What use are such things in a situation like yours?";
	if player consents:
		LineBreak;
		say "     It takes some effort not to come into contact with the drying goop on the car seat, but eventually, you manage to pry the shoes out of the windshield and add them to your pack.";
		LineBreak;
		increase carried of stiletto heels by 1;
		now Resolution of Road Fuck Aftermath is 1; [grabbed the shoes]
	else:
		LineBreak;
		say "     With a shrug, you turn your back on the car and leave.";
		now Resolution of Road Fuck Aftermath is 2; [left the shoes]
	now Road Fuck Aftermath is resolved;

High Rise Events ends here.
