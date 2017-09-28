Version 1 of Latex Quad Husky by Stripes begins here.
[Version 1.1 - Adds LQH effects to Latexlist]
"Adds an event to transform the player into a Latex Quad Husky and alter the future husky infections a player receives."


Section 1 - Event

Shipping Container is a situation.
The sarea of Shipping Container is "Outside".
latexhuskymode is a truth state that varies. latexhuskymode is usually false.

when play begins:
	add Shipping Container to badspots of furry;
	add Shipping Container to badspots of feral;

Instead of resolving a Shipping Container:
	say "     As you are exploring, you come across a semi turned onto its side with the shipping container shaken loose. Curious, you step up and find the driver's clothes in a sticky pile nearby, the trucking company's logo on both the jacket and the truck. A clipboard nearby has the shipping manifest for the load. Most of it has been faded by the sun, but the contents of the container seem to be something like [']La##x H##ky - 160 units.[']  You're not quite certain what it could be, but perhaps it's something useful. If there are only 160 of them in this one large container, one might be worth snagging. Besides, live contents aren't shipped in these containers, so it's probably safe.";
	say "     [bold type]Shall you try opening up the container?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	if the player consents:
		if guy is banned and girl is banned:
			say "     You pull and pry at the handles to the steel container, but you can't get it to open. Frustrated, you bang the clipboard against the door a few times. You then notice a note written on next page of the shipping manifest stating: [']Contents locked by simultaneous use of both guy and girl flags.[']  You're not quite sure what that means, but it seems the container's locked. Maybe some other time.";
		else:
			now latexhuskymode is true;
			say "     It takes a bit of effort to push open the latches locking the overturned container, but eventually manage to do so by banging noisily to force the last one. When you do so, the doors flap open and several cardboard boxes tumble out onto you. Thankfully the boxes aren't that heavy, but the contents spill out. Hundreds of little, rubber, dog figurines pour out, inundating you in little latex huskies in various poses. Realizing too late what the contents are and that the manifest meant 160 boxes of them, you grumble in frustration, trying to pull yourself free of the shifting mass of two inch figurines and half-empty boxes. It is a struggle to find footing when every move you make seems to send another box of them over you.";
			attempttowait;
			say "     You pause to think of a way out of this before you're completely buried in cheap, kitschy cuteness. And that is when you spot a black mass sliding across the ground from between two buildings. Startled, you try to move only to be swamped again with another wave of huskies. The dark goo, probably drawn by the noise of you opening the container, moves closer and eventually flows into the pile of figurines. Deciding to at least try to escape, you try swimming through the growing mass of huskies as you seek to get away.";
			say "     Finally managing to pull yourself to the edge, you pull your upper body out of the pile but find that the black goo, now streaked with white and grey, has attached itself to you and is climbing up your body. Tendrils from its form lash out, attaching to your wrists and clinging to your back, keeping you from escaping. Your lower limbs start to tingle as you can feel them changing, sending you to the pavement. As the rubbery mass, bloated from consumed figurines continues to spread over you, you can feel a strange, enjoyable, even arousing senstation spreading through your body.";
			attempttowait;
			say "     As it spreads over your hips, you can feel its flowing and rubbing against your groin[if cocks of player > 1]. The cool, latex goo grips your cocks, stroking and squeezing them, making you release a moan of pleasure[else if cocks of player is 1]. The cool, latex goo grips your cock, stroking and squeezing it, making you release a moan of pleasure[end if][if cunts of player > 1]. The flowing mass rubs against your pussies before slipping thick tendrils into you, stuffing your cunts full and pumping into them in a wonderfully pleasant manner[else if cunts of player is 1]. The flowing mass rubs against your pussy before slipping a thick tendril into you, stuffing your cunt full and pumping into it in a wonderfully pleasant manner[end if]. You can feel the press of the goo at your anus, spreading it open and stuffing your backside with a thrusting, pulsing mass of latex slime that feels increasingly enjoyable. As it pounds into you, a big, curved tail balloons out from the base of your spine.";
			say "     The black mass starts to become a part of you, pouring itself deep inside you even as it changes your skin into a smooth layer of black and white latex. Your body is altered as well, your limbs changing to a quadrupedal stance with cute, rubbery paws. Standing and using your forepaws as hands takes effort - being on four legs just feels more comfortable and right for you now. The goo engulfing your face flows into pointed, canine ears and a long muzzle, completing your transition into a four-legged latex husky creature.";
			attempttowait;
			let monf be 1;
			let monm be 1;
			if girl is not banned:		[Adjust Female Husky]
				[puts Female Husky as lead monster for infection and impregnation]
				repeat with y running from 1 to number of filled rows in table of random critters:
					choose row y in table of random critters;
					if name entry is "Female Husky":
						now monster is y;
						break;
				now breasts entry is 6;
				now breast size entry is 3;
				now cunt length entry is 12;
				now cunt width entry is 6;
				now monf is monster;
			if guy is not banned:		[Adjust Alpha Husky]
				[puts Alpha Husky as lead monster for infection and impregnation]
				repeat with y running from 1 to number of filled rows in table of random critters:
					choose row y in table of random critters;
					if name entry is "Alpha Husky":
						now monster is y;
						break;
				now cock length entry is 12;
				now cock width entry is 8;
				now breasts entry is 6;
				now breast size entry is 3;
				now cunt length entry is 12;
				now cunt width entry is 6;
				now libido entry is 90;
				now monm is monster;
			if ( "Female Preferred" is listed in feats of player and girl is not banned ) or guy is banned:
				choose row monf from table of random critters;
				now tailname of player is "Female Husky";
				now facename of player is "Female Husky";
				now skinname of player is "Female Husky";
				now bodyname of player is "Female Husky";
				now cockname of player is "Female Husky";
				attributeinfect;
				now tail of player is tail entry;
				now face of player is face entry;
				now skin of player is skin entry;
				now body of player is body entry;
				now cock of player is cock entry;
				if hellHoundLevel is 0:
					follow the sex change rule;
					follow the sex change rule;
					follow the sex change rule;
			else:
				choose row monm from table of random critters;
				now tailname of player is "Alpha Husky";
				now facename of player is "Alpha Husky";
				now skinname of player is "Alpha Husky";
				now bodyname of player is "Alpha Husky";
				now cockname of player is "Alpha Husky";
				attributeinfect;
				now tail of player is tail entry;
				now face of player is face entry;
				now skin of player is skin entry;
				now body of player is body entry;
				now cock of player is cock entry;
				if hellHoundLevel is 0:
					follow the sex change rule;
					follow the sex change rule;
					follow the sex change rule;
			say "     But that is not all that has changed. Rolling onto your side, your latex tongue hangs from your muzzle as you look between your hind legs, examining your altered groin[if cocks of player > 1]. Your cocks are delicious looking rods of canine meat formed from latex-like flesh. It makes your mouth water just to look at them as thick pre dribbles from them[else if cocks of player is 1]. Your cock is delicious looking rod of canine meat formed from latex-like flesh. It makes your mouth water just to look at it as pre dribbles from it[end if][if cunts of player > 1]. Your pussies are puffy, rubbery mounds made for fucking, leaking an arousing lubricant that tempts you to dive your canine tongue in them[else if cunts of player is 1]. Your pussy is a puffy, rubbery mound made for fucking, leaking an arousing lubricant that tempts you to dive your canine tongue into it[end if]. You can feel that the latex has bonded to you deep inside, ensuring you'll stay a sexy latex husky trotting around on all fours if you are any kind of husky at all. Deeply aroused by the changes and the new instincts trying to take hold, you can't but be pleased by this new development.";
			add { "Female Husky", "Alpha Husky" } to infections of Latexlist;
	Now Shipping Container is resolved;



Latex Quad Husky ends here.
