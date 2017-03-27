Version 1 of Horseman Farmhands by Wahn begins here.
[Version 1 - New group creature]
	
Horseman Farmhands is a man. The hp of Horseman Farmhands is usually 0.
The description of Horseman Farmhands is "[FarmhandsDesc]".
The conversation of Horseman Farmhands is { "<This is nothing but a placeholder!>" }.
The scent of Horseman Farmhands is "     The horseman farmhands smell nicely masculine, with a little bit of fur, straw and sweat in the mix. Seems like they're not adverse to doing some good and solid work for their boss at the farm.".

to say FarmhandsDesc:
	if debugactive is 1:
		say "DEBUG -> Horseman Farmhands: HP: [hp of Horseman Farmhands] <- DEBUG[line break]";	
	say "     <This is the basic description of Horseman Farmhands. Body, Clothing, etc. can be laid out here>";

instead of conversing the Horseman Farmhands:
	say "     ...";
	
instead of fucking the Horseman Farmhands:	
	if (lastfuck of Horseman Farmhands - turns < 6): [he got fucked in the last 18 hours = 6 turns]
		say "     <Reason why Horseman Farmhands doesn't feel like having sex right now. Exhaustion, duty, or otherwise>";
	otherwise: [ready for sex]
		say "     As you walk up to Horseman Farmhands, <positive reaction at being approached for sex>";	
		wait for any key;
		say "[FarmhandsSexMenu]";

to say FarmhandsSexMenu:
	say "[line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if cocks of player > 0: [only males and herms can get a blowjob]
		choose a blank row in table of fucking options;
		now title entry is "Get a blowjob";
		now sortorder entry is 1;
		now description entry is "Let Horseman Farmhands suck you off";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Suck Horseman Farmhands off";
	now sortorder entry is 2;
	now description entry is "Wrap your lips around the horseman's equine shaft";
	[]
	if cocks of player > 0 and Horseman FarmhandsTrackingProgress is 3: [only males and herms can fuck him, virgin Horseman Farmhands]
		choose a blank row in table of fucking options;
		now title entry is "Talk the handsome farmhand into giving up his virginity";
		now sortorder entry is 3;
		now description entry is "Take the horseman's ass for a ride";
	[]	
	if cocks of player > 0 and Horseman FarmhandsTrackingProgress > 3: [only males and herms can fuck him, also just for Horseman Farmhands who isn't a virgin]
		choose a blank row in table of fucking options;
		now title entry is "Fuck the handsome farmhand's ass";
		now sortorder entry is 4;
		now description entry is "Take the horseman's ass for a ride";
	[]
	if cunts of player > 0: [only females and herms can take him in the pussy]
		choose a blank row in table of fucking options;
		now title entry is "Take Horseman Farmhands's shaft in your pussy";
		now sortorder entry is 5;
		now description entry is "Offer sex to the hunky horseman";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Take Horseman Farmhands's shaft in your ass";
	now sortorder entry is 5;
	now description entry is "Offer sex to the hunky horseman";
	[]	
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]100 - Nevermind[as]100[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Get a blowjob"):
					say "[Horseman FarmhandsSex1]";
				if (nam is "Suck Horseman Farmhands off"):
					say "[Horseman FarmhandsSex2]";
				if (nam is "Talk the handsome farmhand into giving up his virginity"):
					say "[Horseman FarmhandsSex3]";
				if (nam is "Fuck the handsome farmhand's ass"):
					say "[Horseman FarmhandsSex4]";
				if (nam is "Take Horseman Farmhands's shaft in your pussy"):
					say "[Horseman FarmhandsSex5]";
				if (nam is "Take Horseman Farmhands's shaft in your ass"):
					say "[Horseman FarmhandsSex6]";					
				wait for any key;
		otherwise if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the horseman farmhand, shaking your head slightly as he gives a questioning look.";
				wait for any key;
			otherwise:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		otherwise:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say Horseman FarmhandsSex1: [oral on the player]
	say "     A";

to say Horseman FarmhandsSex2: [oral on Horseman Farmhands]
	say "     A";

to say Horseman FarmhandsSex3: [virgin Horseman Farmhands fucked]
	say "     A";

to say Horseman FarmhandsSex4: [non-virgin Horseman Farmhands fucked]
	say "     A";

to say Horseman FarmhandsSex5: [Horseman Farmhands fucks player pussy]
	say "     A";

to say Horseman FarmhandsSex6: [Horseman Farmhands fucks player ass]
	say "     A";


to say Farm Shower Peek:
	say "     As you come onto the open square between the farm buildings, you notice an open window a bit along the side of the worker barracks. Something about it wakes your curiosity and the thought that you might stroll over and take a casual look inside almost appears on its own in your head.";
	say "     [bold type]Do you want to follow the impulse to check it out?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Yeah, let's have a look!";
	say "     ([link]N[as]n[end link]) - Nah, you don't want to be called a peeping tom.";
	if player consents:
		say "     [line break]";
		say "     Walking over in a casual unhurried tempo, you step up to the open window and glance inside. As it turns out, this is a bathroom window - and one leading to a big, communal bathroom. Just opposite your window, a whole row of shower cabins can be seen - one of which is just being occupied by a horseman. The bare-ass naked stallion hangs his towel on a hook next to the cabin, then turns on the water and steps under the warm spray. He clearly enjoys the water running down over his muscular body and washing away the sweat and grime of a long work day. Soon, the wet stallion starts to apply shampoo to the chestnut-brown coat all over his body and the mane of longer hair on his head and down between his shoulder-blades. You can't help but appreciate the show as the hunky farmhand soaps himself up, your gaze drawn to his fit body.";
		say "     [bold type]Do you keep watching?[roman type][line break]";
		say "     ([link]Y[as]y[end link]) - Sure! You wanna see more hot horseman action!";
		say "     ([link]N[as]n[end link]) - Nah, that's enough now.";
		if player consents:
			say "     [line break]";
			say "     Stepping up even closer to the window, you feast your eyes on the stallion as he rubs and massages to shower gel into every last bit of his body, including those strong, long legs - going down all the way to his hooves so he has to bend over to reach all the way. Definitively a sexy ass on this horsey, that's fore sure. Eventually, the farmhand steps fully under the spray of water, letting it wash over his lean body. Small, soapy bubbles are carried along with it, sliding down over his muscular back, firm buttocks and long, toned legs. It is quite a sight to behold... and totally draws you into its spell. So much so that when the farm worker finally stops the water and turns around to grab his towel, you're still staring in through the window - getting an even more interesting full-frontal view of a very well hung male.";
			say "     Noticing you looking in the window from the corner of his eye makes a faint smile appear on the anthro stallion's muzzle - who then pointedly doesn't look your way and proceeds to slowly rub himself dry, still standing in a wide-legged stance that leaves absolutely nothing to the imagination. Once he is done dabbing the last little gleaming drop of water from his toned body, he hangs the towel over a bar to dry, then lowers a hand to his crotch. Strong fingers close around the very impressive piece of horseflesh dangling between his legs, holding it up for you to get a good look - and then the horseman raises his head to focus his gaze right at you. Chuckling, he winks at you and then walks away through a nearby archway, no doubt leading to their lockerroom. The guy is totally unconcerned about his nakedness - or your eyes taking in every little bit of him - but then... with that package, he doesn't have to be after all.";
		otherwise:
			say "     [line break]";
			say "     Ducking out of sight, you can't help but smile at the eye-candy strolling around on this farm. Still, best to get back to more important matters now.";
	otherwise:
		say "     [line break]";
		say "     You put the thought out of your head and turn your attention to more important things.";


Horseman Farmhands ends here.