Tidepool Event by FwuffyMouse begins here.

Tidepool Treasure is a scavevent.
The sarea of Tidepool Treasure is "Beach".

Instead of resolving a Tidepool Treasure:
	say "     You come across a large tide-pool, easily several feet across and probably about a foot deep in the center. It's full of small coral and shellfish, with starfish latched onto the half-buried rocks and kelp curling under the shallow surface. In the middle of it rests a small object covered in some sort of undersea moss, but it doesn't look natural. Circling the pool for a better view, it's clear that it's a bottle of some kind, perhaps soda or water, and maybe even unopened!";
	say "     [bold type]Do you want to try an take the bottle?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Go for it!";
	say "     ([link]N[as]n[end link]) - Nope!";
	if player consents:
		LineBreak;
		say "     As you wade into the pool, feeling the water lapping your ankles, something feels off. You ignore that little flash of instinct, bending down to grab at the bottle-like object. As you brush aside the kelp wrapped around it, your arm gets grabbed! You quickly look around for the source of it, tracing the it back to a colorful rock with several organic looking holes over it, each of which has another pinkish limb sliding out. Dread washes over you as you hear shifting sand around you, again looking around. In a matter of seconds, dozens of these small slithering things are coming at you, while the ones nearest you are already coiling around your ankles.";
		LineBreak;
		say "     [bold type]You could keep trying to take the bottle, or you could let go and bolt. You also get a twinge of destructive curiosity, urging you to let these odd shellfish spring their trap and not fight it.[roman type][line break]";
		say "     [link](1)[as]1[end link] - Grab it and run like hell!";
		say "     [link](2)[as]2[end link] - Screw this, get out of there!";
		say "     [link](3)[as]3[end link] - Let the creatures take you instead.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to try and steal the bottle, [link]2[end link] to run for it or [link]3[end link] to submit to the trap.";
		if calcnumber is 1:
			LineBreak;
			let bonus be (( the Dexterity of the player minus 10 ) divided by 2);
			let diceroll be a random number from 1 to 20;
			say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]21[roman type] (Dexterity Check):[line break]";
			increase diceroll by bonus;
			if diceroll > 15:
				if a random chance of 1 in 2 succeeds:
					say "     You wrench the prize from its surprisingly strong home, freeing your wrist and bolting for dry land, dodging past the tentacles that lash at your legs. You add the water to your pack and leave the odd tide-pool behind.";
					LineBreak;
					say "[bold type]You gain 1 water bottle![roman type][line break]";
					increase carried of water by 1;
				else:
					say "     You wrench the prize from its surprisingly strong home, freeing your wrist and bolting for dry land, dodging past the tentacles that lash at your legs. You add the soda to your pack and leave the odd tide-pool behind.";
					LineBreak;
					say "[bold type]You gain 1 soda![roman type][line break]";
					increase carried of soda by 1;
			else:
				say "     You pull the bottle out, freeing your wrist at the same time and getting ready to run for it. As you head for dry land you mistime your steps, and one of your legs is dragged out from under you. Stumbling, you find your hands and knees planted in the silt, and the creatures coil their pinkish tentacles around your limbs. They tear up your clothing and discard the scraps, leaving you bare naked on all fours in the center of the pool.";
				say "[tidepoolfail]";
		else if calcnumber is 2:
			LineBreak;
			say "     You leave the bottle behind, taking every precious second you gain by doing so to flee without much trouble.";
		else:
			LineBreak;
			say "     You keep your hand on the bottle, waiting as the tentacles slither up under your pants and further up your outstretched arm. Seams split and scraps are discarded, with the slimy limbs dragging you down into the water on all fours.";
			say "[tidepoolfail]";
	else:
		LineBreak;
		say "     You leave the bottle behind to stay in its pool.";

to say tidepoolfail:
	if player is female:
		say "     One of the tentacles slips between your butt cheeks, having slithered across your belly. It slides back and forth, sliding between your nether lips and spreading that special oil into you. Each pass it makes over your snatch is ever more direct at trying to penetrate you on the way by, spreading you open a bit more insistently each time. Eventually, the strange anemone succeeds, and you let out a surprised gasp as it rapidly slides several inches of smooth, well-lubricated length into you. Evidently the creatures were ready for that, lashing up from silt-stirred waters and into your open mouth. You're seeing color spots as the venom gets into direct contact with mucous membranes inside you, but you don't feel sick or pained. If anything, you feel a bit tipsy and struggle to keep yourself upright in the pool. The initial shock passes, and you become quite aware of the creature sliding slowly deeper into your vagina. You aren't in any state to count inches, and as it slides back out, pressing down against your most sensitive spots, you aren't feeling any real reason to care. The tentacle gently fucking your throat tastes musty, salted by the sea as much as by its own nature.";
		WaitLineBreak;
		say "     As the creature pistons into your mouth and slit, you can feel yourself getting ever wetter, body fully surrendered to the venomous shellfish. That said, you aren't so drugged up that you don't notice a second tentacle start pressing into your tailhole. You sure as hell notice when the one in your mouth seems to cum, suddenly pulsating and shooting into the back of your throat to deposit a thick, musky load of seed, only to pull out and be replaced by another. The ones in your cunt and ass both cum as well. Both pull back and a fresh one plunges into your tailhole, while a pair of them start attacking your quivering snatch. While not individually thick, the sensation of so many all wriggling in you is too much, bringing you to an intense orgasm around the creature's unceasing assault.";
		say "     [if player is male]The creatures release your head long enough to notice another odd sea-creature emerging from the pool and latching onto your cock. It slides itself down onto your member, tiny suckers grabbing your crotch around the base and sticking the hot, convulsing mollusk firmly in place. The inside of it squirms and slides over it, and it feels like tiny tendrils are licking at the head of it[else]The creatures release your head long enough to notice a small creature slither up your leg, but by the time you've seen it you're being fed another eager tentacle. It slides up onto your clit, suckers holding it in place as minuscule tendrils start slithering over it[end if]. Moaning and shaking, you cum again and your limbs give out, dropping over onto your side and remaining trapped in this slimy assault. The creatures never slow their pace, even as they work you into several more blissful, body-wracking climaxes. Eventually, the one in your mouth jerks back, shooting a final load over your body and sliding back down into the water. Finally, the creatures cum into your ass and pull free while the ones grabbing your body slip away, leaving you in the filthy pool with a hungry sea creature stuck to you.";
	else:
		say "     One of the tentacles slips between your butt cheeks, having traveled down over your back. It slides back and forth, slicking your backside up with more of that slick, clear gunk. As that stuff touches your tailhole, you start to relax back there. Each pass it makes through your crack is ever more direct at trying to penetrate you on the way by, prodding at your ass a bit more insistently each time. Eventually, the strange anemone succeeds, and you let out a pained gasp as it rapidly slides several inches of smooth, well-lubricated length into you. Evidently the creatures were ready for that, lashing up from silt-stirred waters and into your open mouth.";
		say "     You're seeing color spots as the venom gets into direct contact with mucous membranes inside you, but you don't feel sick or pained. If anything, you feel a bit tipsy and struggle to keep yourself upright in the pool. The initial shock passes, and you become quite aware of the creature sliding slowly deeper into your bowels. You aren't in any state to count inches, and as it slides back out, pressing down against your prostate, you aren't feeling any real reason to care. The tentacle gently fucking your throat tastes musty, salted by the sea as much as by its own nature.";
		WaitLineBreak;
		say "     The creatures release your head long enough for you to notice another odd sea-creature emerging from the pool and latching onto your cock. It slides itself down onto your member, tiny suckers grabbing your crotch around the base and sticking the hot, convulsing mollusk firmly in place. The inside of it squirms and slides over it, and it feels like tiny tendrils are licking at the head of it. It's all too much at this point, and you cum into the small, latched-on sea creature, clenching down around the triple-threat of tentacles inside you. The limb in your mouth jerks back, shooting a final load over your back and sliding back down into the water. Finally, the creatures cum into your ass and pull free while the ones grabbing your body slip away, leaving you in the filthy pool with a hungry sea creature stuck to you.";
	say "     The action stirred up so much silt and goop in the pool that you'd never mistake it for the serene, glassy spot it once was. Dragging yourself onto drier sand, you start to work at removing the shellfish latched to you. You manage to get it off, but only after [if player is male]it teases your uncomfortably sensitive cock longer than you'd have liked[else]forcing you to cum into your palm as you try to pull it off your clit[end if]. Exhausted but wary, you decide to put some distance between yourself and the pool before sleeping this one off.";

Tidepool Event ends here.
