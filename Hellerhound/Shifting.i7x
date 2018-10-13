Shifting by Hellerhound begins here.

Section 1 - Secure Area Situation

Table of GameEventIDs (continued)
Object	Name
Secure Area	"Secure Area"

Secure Area is a situation. The level of Secure Area is 12.
halodestroyed is a number that varies.

instead of resolving a Secure Area:
	say "     On your jaunt through the city, you come across a yard, mostly intact, covered with barbed wire and odd defensive technology you could have sworn was science fiction. Behind the barriers, one of which is a shimmering halo in midair, stand two creatures, tall, but their silhouette is blurred by the halo, and you cannot make out if they are human or not. You can still make out the huge doors, made of something clearish white...";
	if guy is banned:
		say "     There is a large sign on the fence surrounding the facility which reads: [']Please be advised: This facility is now closed due to a lack of male content.[']";
		now secure area is resolved;
		now Resolution of Secure Area is 100; [content banned]
		continue the action;
	if a random number between 5 and 20 < the perception of the player:
		say "     Oh my god. You realize that the doors are made of diamond. What needs that much protection?";
	say "[line break][line break]";
	say "Do you wish to get to the door?";
	if player consents:
		let dragatorwon be 0;
		let dragatordefeated be 0;
		say "     You run towards the barriers, determined to get inside.";
		if a random number between 5 and 35 < the dexterity of the player:[player gets through to halo]
			say "     Running and jumping and twisting, you manage to get thorough to the halo, which you approach with caution.";
			if a random number between one and 35 < the strength of the player: [breaks halo]
				now halodestroyed is 1;
				say "     You slam the halo with all your might and feel it crumble beneath you, revealing the rest of the way.";
				WaitLineBreak;
				say "     The shimmering dissipated, you look towards the guards at the door, and with a shock realize they are of the Gargoyle infection. You could turn back now, or maybe you want to challenge them?";
				if player consents:
					say "You march froward, and they attack.";
					now dragatorwon is 0;
					challenge "Gargoyle";
					if lost is 1:
						now dragatorwon is 1;
					else:
						challenge "Gargoyle";
						if lost is 1, now dragatorwon is 1;
					if dragatorwon is 1:
						say "You collapse to their vicious defense, and you are carried off after being hit on the back of the head so hard you are knocked unconscious.";
						say "You wake to the sight of the gargoyle filling your vision.";
						say "[gargoyle attack]";
					else:
						say "     You stand, panting, as the last gargoyle collapses.";
						say "     Catching your breath, you march up to the doors and see the hairline crack in the stone.";
						say "     You shove your hands into the opening, cracking the stone while pulling the door with as much strength as your tired body can muster after all that.";
						if a random number between 5 and 30 < the strength of the player:
							say "     The door creaks open, and you walk into the dimly lit area.";
							say "     There are glyphs and writings covering the wall, and some show people in various states of infection. Looking closer, you notice that the writings seem to denote that the nanites can be controlled, but it doesn't show how. You will have to search elsewhere for more information.";
							increase the score by 500;
							now shiftable is 1;
							now Secure Area is resolved;
							now Resolution of Secure Area is 1; [shifting ability gained]
						else:
							say "     The door refuses to budge, and you go on your way, disappointed that you couldn't get any further.";
				else:
					say "     You run, avoiding the menace behind.";
			else:
				say "     The halo resists all your efforts to break through, and you are forced to be on your way.";
		else:
			say "     You trip and fall onto one of the barbed wire fences! Yow!";
			decrease the HP of the player by 20;
			say "     An odd tingling runs through you, and with jarring suddenness you are back on the street, looking away from the secure house.";
	else:
		say "     You wisely avoid what could only be more trouble than it is worth.";

Section 2 - Shifting

shiftable is a number that varies.

shifting is an action applying to one topic.
understand the command "shift" as something new.
understand "shift [text]" as shifting.
understand "shift into [text]" as shifting.
understand "shift to [text]" as shifting.
ttransform is a number that varies.
tmonster is a number that varies.

carry out shifting:
	if shiftable is 0 or shiftable is 1:
		say "You do not know how to do that!";
		stop the action;
	if the humanity of player < 50:
		say "Your feral impulses prevent you from concentrating hard enough to change.";
		stop the action;
	[say "You sense becoming human would be nearly impossible after doing this. Do you wish to continue anyway?";
	if player consents:
		say "";
	else:
		stop the action;]
	let critter be the topic understood;
	let critter list be a list of text;
	repeat with X running from 1 to number of filled rows in Table of Random Critters:
		choose row X from the Table of Random Critters;
		add name entry to critter list;
		if name entry matches the regular expression "^[critter]$", case insensitively:
			now monster is X;
			now ttransform is 1;
			now tmonster is monster;
			break;
	if ttransform is 0:
		now critter list is {};
		repeat with X running from 1 to number of filled rows in Table of Random Critters:
			choose row X from the Table of Random Critters;
			add name entry to critter list;
			if name entry matches the regular expression ".*[critter].*", case insensitively:
				now monster is X;
				now ttransform is 1;
				now tmonster is monster;
				break;
	[say "You shift through all the infections you have seen, searching for the one you want.";
	repeat with x running through critter list:
		say "[x]";]
	if ttransform is 1:
		choose row monster from the Table of Random Critters;
		say "[line break]You concentrate on becoming one with the [name entry]s.";
	if ttransform is 0:
		say "You don't know any such beast.";

an everyturn rule:
	if ttransform is 1:
		transform;
	now tmonster is 0;
	now ttransform is 0;

Section 3 -transform


To transform:
	choose row tmonster from the Table of Random Critters;
	if skinname of player is not name entry:
		say " Your skin [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [skin change entry].";
		now skinname of player is name entry;
		now skin of player is skin entry;
	if facename of player is not name entry:
		say " Your face [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [face change entry].";
		now facename of player is name entry;
		now face of player is face entry;
	if tailname of player is not name entry:
		say " Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [ass change entry].";
		now tailname of player is name entry;
		now tail of player is tail entry;
	follow the breast change rule;
	if bodyname of player is not name entry:
		say "Your body [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [body change entry].";
		now bodyname of player is name entry;
		now body of player is body entry;
		if there is a scale in row monster of the Table of Random Critters:
			now scalevalue of player is scale entry;
		else:
			now scalevalue of player is 3;
		if there is a body descriptor in row monster of the Table of Random Critters:
			now bodydesc of player is body descriptor entry;
		else:
			now bodydesc of player is name entry;
		if there is a type in row monster of the Table of Random Critters:
			now bodytype of player is type entry;
		else:
			now bodytype of player is name entry;
		if DayCycle entry is 2:
			now SleepRhythm of player is 2; [night-preferred]
		if DayCycle entry is 1:
			now SleepRhythm of player is 1; [day-preferred]
		else:
			now SleepRhythm of player is 0; [standard]
	follow the sex change rule;
	follow the sex change rule;
	if cockname of player is not name entry:
		if player is male, say " Your groin [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [cock change entry].";
		now cockname of player is name entry;
		now cock of player is cock entry;
	if strength of player < str entry:
		say "You feel your muscles swelling with [name entry] [one of]strength[or]physique[or]power[at random].";
		increase strength of player by 1;
		increase capacity of player by 5;
	if Intelligence of player < Int entry:
		say "You feel your mind swelling with [name entry] [one of]Intelligence[or]wit[or]complexity[at random].";
		increase Intelligence of player by 1;
	if Dexterity of player < Dex entry:
		say "You feel your hand eye coordination swelling with [name entry] [one of]Dexterity[or]physique[or]accuracy[at random].";
		increase Dexterity of player by 1;
	if Stamina of player < Sta entry:
		say "You feel your body toughening with [name entry] [one of]Stamina[or]physique[or]power[at random].";
		increase Stamina of player by 1;
		if remainder after dividing stamina of player by 2 is 0:
			increase maxHP of player by level of player plus 1;
	if Perception of player < Per entry:
		say "You feel your senses swelling with [name entry] [one of]Perception[or]aptitude[or]feral attention[at random].";
		increase Perception of player by 1;
	if Charisma of player < Cha entry:
		say "You feel your social sense swelling with [name entry] [one of]Charisma[or]natural charm[or]pheromones[at random].";
		increase Charisma of player by 1;
	if libido of player < libido entry:
		say "You can't help but [one of]feel your thoughts drifting towards sex[or]notice that the attributes of [name entry] were very appealing[or]wonder if getting to know these creatures in the biblical sense would be all that bad[at random].";
		now libido of player is the libido entry;

when play ends:
	if shiftable is 2:
		if the humanity of player > 50:
			say "Your knowledge of how to shift aids you when you decide to help the rescue, and as a reward for your help, the army decides to replace the nanites you had with a new kind that do not spread.";
		else:
			say "Your feral impulses prevent the concentration required for shifting, and the knowledge doesn't return until the rescue comes.";
			say "You are unable to choose a form and spend your days changing to whatever suits you. Within a few days of the revitalization of the city, the spy force contacts you, ringing your phone off the hook for hours until you finally return home. They offer you work and give such bonuses and pay that you can't resist. Your ability helps, and the only work you have to do is mimicking the knowledge of who you are impersonating, training yourself for future success.";
		now body of player is "nothing";
		now bodyname of player is "nothing";
		now scalevalue of player is 3;
		now bodydesc of player is "shapeshifting";
		now bodytype of player is "shapeshifter";
		now SleepRhythm of player is 0;
		say "((Being a shapeshifter, your normal ending for your body type is suppressed))";

Shifting ends here.
