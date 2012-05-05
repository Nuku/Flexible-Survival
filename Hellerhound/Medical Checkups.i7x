Version 1 of Medical Checkups by Hellerhound begins here.
[Version 1.1 - room/door tweaks]

Pediatrics door is a door. "The city lies out of the huge hole in the roof and south wall, jagged edges making the going difficult, but passable.".
Pediatrics Lobby is a room. "The lobby for one of those medical clinics people go to to find a doctor. This is the lobby, or was. The cushy seats are shattered, the wood splintered, and the floor cracked and gouged by huge claws. Cum lies everywhere, and you have to pick your way through the room carefully. The doors to the inner area are still shut and locked. Battered, but intact. Maybe there is someone hiding out there?".
Pediatrics Lobby is fasttravel.
Pediatrics door is dangerous.
North of Pediatrics door is pediatrics Lobby.
South of Pediatrics door is Wandering the City.
The marea of pediatrics door is "Outside".
North of Pediatrics Lobby is Doctors Office.
Doctors Office is a room. "A doctor's office, this one is a wreck.  There are stains everywhere and food and water stockpiled in the cabinets.  The clock is no longer running, and an oil lamp stands on the blue marble counter, on and burning.  It fills the air with smoke.  You idly wonder what happened to the smoke detectors.".

instead of sniffing the Doctors Office:
	say "The doctor's office smells of antiseptic and aroused lizard scents.";

instead of sniffing Pediatrics Lobby:
	say "With the numerous cum stains here, it hard to smell anything but that.";

instead of going north from the Pediatrics Lobby while ( hp of doctor medea is 0 and medeastuff is 0 and medeaget is 0 ):
	say "Examining the door to the north, you can hear some movement behind it and decide to risk knocking, asking if they need any assistance.  'Thank you, no.  I've already been quite thoroughly taken care of, I think,' a female voice responds.  Clarifying that you are a survivor and that you meant if they needed any help in there, you can hear the sounds of heavy objects being pushed aside, allowing you entrance.  'Well, perhaps I can be of assistance to you, then,' the voice responds.  The female voice does seem a little strange and you pick up the sound of clicking claws as she moves around inside, making you reconsider actually going in.";
	now hp of doctor medea is 1;


Doctor Medea is a person. "A doctor, by the name on the door label, [']Doctor Medea['], is busily mixing vials here.".
Doctor Medea is in Doctors Office.
understand "medea" and "doctor" as Doctor Medea.

instead of sniffing Doctor Medea:
	say "The doctor smells of female lizard, though there's a hint of male musk in there as well.";

medeastuff is a number that varies.
medeaget is a number that varies.


The description of Doctor Medea is "[if medeaget is 0]Doctor Medea is a relatively human lizard, clothed, with multicolored scales. You suspect she got caught in the park initially[otherwise]Doctor Medea is a relatively human lizard, clothed, with multicolored scales. You suspect she got caught in the park initially. There is now a stream of darkness forms a line down her skirt to where some whitish cum is dripping. Looks like she came in herself, since the door was dust covered except for your marks[end if].";
The conversation of Doctor Medea is { "Babies!" }.


instead of conversing the Doctor Medea:
	if medeaget is 0:
		say "Doctor Medea is a relatively human lizard, clothed, with multicolored scales. You suspect she got caught in the park initially.";
	otherwise:
		say "Doctor Medea again. All that is different is that a stream of darkness forms a line down her skirt to where some whitish cum is dripping. Looks like she came in herself, since the door was dust covered except for your marks.";
	say "'Hello. I am Doctor Medea. I used to work here, and am only still here because the monster that broke in was too dumb to think of doors as an entrance. The condition of the lobby keeps the other monsters away, thinking this place has already been looted. I could help you?'";
	if the cunts of the player is 0:
		say "'I cannot help you. I specialize in childbirth, and minor illnesses, none of which are occurring with the nanite plague. Maybe I could help if you were Female?'";
	otherwise:
		say "'I could determine if you are pregnant, and with a little help, I could make you more fertile, or sterilize you.'";
		say "Check for pregnancy?";
		if the player consents:
			say "Doctor Medea takes out a machine and places it against your [bodyname of player] abdomen.";
			say "It buzzes, and she looks at the results.";
			if the gestation of the child is greater than 0:
				say "'You are pregnant.'";
				if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
				say "'It has [skinname of child] skin, a [bodyname of child] body, and a [facename of child] face.'";
			otherwise:
				say "'You are not pregnant.'";
		if medeastuff is 1:
			say "Do you want Medea to change your fertility?";
			if the player consents:
				say "Make you sterile(y) or fertile(n)?";
				if the player consents:
					if "Sterile" is listed in feats of the player:
						say "'You are already sterile. I can't do anything more.'";
					otherwise if "Fertile" is listed in the feats of the player and "Selective Mother" is not listed in the feats of the player:
						say "'Do you wish for me to make you NOT fertile?'";
						if the player consents:
							say "She takes out a pair of specially shaped scissors and knocks you out with a cloth. When you wake up, your belly aches.";
							remove "Fertile" from the feats of the player;
						otherwise:
							say "'OK, I respect your judgement.'";
					otherwise if "Selective Mother" is listed in the feats of the player:
						say "'Do you want me to reduce your self control?'";
						if the player consents:
							say "Doctor Medea places a odd looking helmet with wires running from it on your head, and you feel freer, and odder. She removes the helmet, and you get back up.";
							remove "Selective Mother" from the feats of the player;
						otherwise:
							say "'All right.'";
					otherwise:
						say "She takes a pad and straps it to your arm. Within seconds, your body is enveloped with pain, and it slowly fades.";
						say "Medea says 'you are now sterile'";
						add "Sterile" to feats of the player;
				otherwise:
					if "Fertile" is listed in the feats of the player and "Selective Mother" is not listed in the feats of the player:
						say "'I cannot make you more fertile, but I could make you a selective mother?'";
						if the player consents:
							add "Selective Mother" to feats of the player;
							say "Done.";
						otherwise:
							say "'As you wish.'";
					otherwise if "Sterile" is listed in the feats of the player:
						say "'You are sterile, but I can fix that if you wish?'";
						if the player consents:	
							say "'You can now be fertilized.'";
							remove "Sterile" from the feats of the player;
						otherwise:
							say "'Your choice.'";
					otherwise if "Selective Mother" is listed in the feats of the player:
						say "'I can't do any more, sorry.'";
					otherwise:
						say "She takes a plunger and syringe from a cabinet that still looks new, and shoves it up your cunt. She depresses the plunger, and you feel euphoria rushing over you.";
						add "Fertile" to the feats of the player;
			otherwise:
				say "'Ok.'";
		otherwise:
			if medeaget is 0:
				say "'I do not have the materials needed for such an operation. There should be some in a medical delivery truck that was supposed to arrive the day after the infection started. Here is a list.'";
				now medeaget is 1;
			 otherwise if medeaget is 1:
				say "'You need to get the materials. They should be in an abandoned truck!'";
			otherwise if medeaget is 2:
				say "'Yay! You managed to get the supplies! Thanks. I can now do medical work again!'";
				now medeastuff is 1;

Abandoned truck is a situation.
the sarea of abandoned truck is "Outside".

instead of resolving an abandoned truck:
	say "You come across an abandoned truck, filled with medical supplies. The drivers cab is filled with some sort of goo that covers all the entrances. Maybe some of the supplies can be of use?";
	if medeaget is 1:
		say "This must be the truck Medea sent you after!";
		now medeaget is 2;
		say "As you ruffle through the truck, you bring back the parts she requested.";
	otherwise:
		say "Maybe you could find a medkit. Do you wish to try?";
		if the player consents:
			say "You ruffle through the boxes, searching for a medkit and leaving mess in your wake.";
			if a random chance of one in 8 succeeds:
				say "You found a medkit!";
				add "medkit" to the invent of the player;
			otherwise:
				say "You find nothing of interest.";
		otherwise:
			say "You leave the abandoned truck behind and walk on.";


Medical Checkups ends here.
