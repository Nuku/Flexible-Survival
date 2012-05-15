Alpha Fang Scenes by Nuku Valente begins here.
"Adds another scene to Fang"

Every turn when in Grey Abbey Library:
	if fang is not visible, continue the action;
	if hp of fang is 3:
		let x be 0;
	otherwise:
		continue the action;
	let qualify be 0;
	let playerlust be 0;
	let fanglust be 0;
	if lust of player is greater than 60:
		now qualify is 1;
		now playerlust is 1;
	if ( lastFangfucked - turns is greater than ( 19 - hp of Fang ) ):
		now qualify is 1;
		now fanglust is 1;
	if qualify is 0:
		continue the action;
	if fanglust is 1 and playerlust is 0:
		say "[fangrapeplayer]";
		continue the action;
	if fanglust is 1 and playerlust is 1:
		say "[fangmutuallust]";
		continue the action;
	say "[fangplayerlust]";
	
to say fangplayerlust:
	say "Scene to be written.";

to say fangrapeplayer:
	say "'You[']re late', says Fang as he approaches you. His scent is intoxicatingly strong and his [one of]puppy pecker[or]doggy dong[at random] is jutting from his sheath, heavy and ready. Any word of complaint you may have had is lost as the wolf gives you a penetrating look, brokering no argument. There was a punishment to be had and a service to be rendered, and that was all there was to it. He grabs at you and brings you to a desk, pushing you against it so you're bent over it.";
	if breast size of player is greater than 0 and breasts of player is greater than 0:
		say "Your [skin of player] [breast size desc of player] breasts are squished against the smooth wood of the desk as he moves you into position, rubbing your nipples against the grain.";
	say "He reaches around and removes any barrier to your bottom, tossing it aside for later with a soft, eager, growl. Though you weren['] very aroused when you walked in, his intense scent sends warm tingles through your form now, making you pant as you begin to warm up. [run paragraph on]";
	if cock length of player is greater than 0 and cocks of player is greater than 0:
		say "Your cock[if cocks of player is greater than 1]s[end if] swell[if cocks of player is greater than 1]s[end if], [cock of player] flesh throbbing, dangling in the air and dripping pre to the ground. [run paragraph on]";
	if cunt length of player is greater than 0 and cunts of player is greater than 0:
		say "You feel warmth seeping through your feminine lips as you moisten with readiness and increasing anticipation. The thought of your alpha taking you was becoming more delicious by the moment.";
	

to say fangmutuallust:
	say "Scene to be written.";
		

Alpha Fang Scenes ends here.
