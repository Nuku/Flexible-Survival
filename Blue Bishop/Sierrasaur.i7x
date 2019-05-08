Version 1 of Sierrasaur by Blue Bishop begins here.
[ Version 1.1 - Bound State Update ]

"Adds a Sierrasaur creature to Flexible Survival's Wandering Monsters table"

Section 1 - Creature Responses

sierrapure is a truth state that varies. sierrapure is usually false. [Used as shorthand to detect if the player is a pure sierran]
sierramem is a number that varies. sierramem is usually 0. [Used to ward repetition of expository prose]
sierramale is a truth state that varies. sierramale is usually false. [A trigger used as shorthand to determine if the player banned herms]

lustatt is a number that varies. lustatt is usually 0.
struggleatt is a number that varies. struggleatt is usually 0.
bsextimer is a number that varies. bsextimer is usually 0.
boundstate is a truth state that varies. boundstate is usually false.
voreloss is a truth state that varies. voreloss is usually false.
psycheadjust is a number that varies. psycheadjust is usually 0.
lustadjust is a number that varies. lustadjust is usually 0.

to say sierradesc:
	choose row MonsterID from Table of Random Critters;
	if "Male Preferred" is listed in feats of Player:
		now sex entry is "Male";
	else if "Female Preferred" is listed in feats of Player:
		now sex entry is "Female";
	else if "Herm Preferred" is listed in feats of Player:
		now sex entry is "Both";
	else if sierramale is true:
		now sex entry is "Male";
	else:
		now sex entry is "Both";
	if bodyname of Player is "Sierrasaur" and player is pure: [purity check shorthand]
		now sierrapure is true;
	else:
		now sierrapure is false;
	psycheeval;
	libidoeval;
	if guy is banned and hermaphrodite is banned:
		say "     You happen upon what appears to be a large boulder jutting from the ground. Prodding it, you find yourself shocked to have the thing grumble at you in response. That's all it appears to do, however, and you eventually choose to depart, minding to avoid such a fixture in the future.";
		now BannedStatus entry is true;
		now fightoutcome is 19;
		now combat abort is 1;
	else:
		if hermaphrodite is banned:
			add { "Sierrasaur" } to infections of guy;
			now sierramale is true;
			setmongender 3; [creature is male]
		else:
			add { "Sierrasaur" } to infections of hermaphrodite;
			setmongender 7; [creature is mherm]
		if sierramem is 0:
			say "     You happen upon what - at first - appears to be a large boulder randomly jutting up from the ground, [if scalevalue of Player > 4]only slightly smaller[else if scalevalue of Player is 4]only slightly larger[else]much larger[end if] than you in size, until the mass begins to stir to life! Crawling to its feet, you see before yourself a bulky and wide-set beast, stout and covered in an earthen-colored, tough, almost chitinous hide as its back spires upwards to make a craggy peak. Directing its attention to the one who disrupted its rest, clearly not at all pleased, it attempts to slowly approach and subdue you, forcing you to keep your distance and deal with this matter.";
			now sierramem is 1;
		else:
			say "     You happen upon another sierran reptile. [one of]Minding its own business, it doesn't take too kindly to your presence, the craggy beast ponderously attempting[or]Your presence disrupting its rest, it's none too pleased by this, the craggy beast ponderously attempting[or]This one seems to be hunting for prey. Perhaps gauging that you might suffice, the craggy beast ponderously attempts[at random] to approach and subdue you, forcing you to keep your distance and deal with them.";


to say losetosierra:
	if HP of Player > 0:
		say "     Instead of fleeing or fighting any further, you choose to offer yourself to the beast. The creature seems indifferent for a moment, approaching you and slowly forcing you to the ground. Once you offer no protest to this act, it takes a moment to regard you, perhaps considering its next course of action, and choosing to start off by pulling free any attire you might have with its maw.";
	else:
		say "     Too exhausted to fight it any more, you fall to your feet. Once more, the beast pins you down, only able to offer up paltry protests against its will. Seemingly indifferent to this whole ordeal, it takes a moment to regard its victim, perhaps considering its next course of action, and choosing to start off by freeing you of any attire you might have worn prior.";
	if scalevalue of Player < 4 and a random chance of 2 in 3 succeeds and vorelevel is not 1:
		say "     Pulling your head upwards, the beast opens its maw wide to swallow you whole within its confines, your sight flooded with utter blackness. [if HP of Player < 1]Instinctively struggling over this particular act, its[else]Its[end if] tongue and fleshy walls are only marginally softer than its hardened exterior, alleviated further by its thick saliva, though you nonetheless feel each ridge and imperfection against its writhing appendage. Its wide visage making the act of gradually inching you deeper inwards quite easy for the beast, its firm walls surround more and more of your [bodydesc of Player] form, the low rumbling made by the reptile matched in volume only by the wet sound of him swallowing you whole.";
		say "     It's rather painstaking about the whole ordeal, not particularly inclined towards any rush[if HP of Player < 1], even as its new victim continues to protest impotently against its firm hold[end if]. It's also pretty shameless in lewdly grinding its firm, barely yielding tongue against your[if Player is neuter] genderless[end if] crotch, as something to hold onto to pull you the rest of the way[if Player is male], dick[smn] no doubt driving hard as a result, much to the reptile's present indifference[else if Player is female], cunt[sfn] no doubt oozing and aching with need as a result, much to the reptile's present indifference[end if]. From there, it's only but a few firm shoves before your feet also disappear within the beast's abyssal maw.";
		say "     Stomach bloating slightly in the wake of its new occupant, these completely dark and churning confines are just as unyielding as the rest of his body, though at least not abrasive enough to render this slick prison particularly uncomfortable. You can feel his infectious influence very faintly draining you, but for some reason you're not passing out. You very quickly get the impression that this creature isn't going to let you go without you forcing your way free.";
		if HP of Player < 1:
			now struggleatt is 1;
		else:
			now struggleatt is 0;
		WaitLineBreak;
		now bsextimer is 5;
		now boundstate is true;
		sierrabind;
	else:
		sierrasex;

boundrecover is a truth state that varies. boundrecover is usually false.
recoverchance is a number that varies. recoverchance is usually -1.
enduring is a truth state that varies. enduring is usually false.
obliging is a truth state that varies. obliging is usually false.

to checkboundrecover:
	if boundrecover is false, increase recoverchance by 1;
	if a random chance of recoverchance in 9 succeeds:
		now boundrecover is true;
		now recoverchance is -1;
	if "Sanity Saver" is listed in the feats of Player, now humanity of Player is 100;

to sierrabind:
	now lustatt is Libido of Player;
	now calcnumber is -1;
	let Trixieexit be 0;
	while Trixieexit is 0:
		if HP of Player > 0 or humanity of Player < 50:
			now obliging is true;
		if bodyname of Player is "Sierrasaur" and player is pure:
			now sierrapure is true;
		else:
			now sierrapure is false;
		checkboundrecover;
		if clearnomore is 0, clear the screen;
		if lustatt > 99:
			say "     Finding yourself overtaken by lust, you are given no choice but to furiously [if Player is male]jerk yourself off[else]fondle yourself[end if], writhing and twisting in these dark, damp confines until you finally find reprieve, [if Player is male]unloading your [Cum Load Size of Player] load against the firm flesh[else if Player is female]cunt throbbing firmly against the firm flesh[else]a particularly trying task given your lack of outlet[end if][if Player is male and ball size of Player > 20]. This wasn't a particularly wise task, as you're now made to swim in a pool of your own seed, though it thankfully diminishes over time[end if]. Panting to catch your breath, your mental faculties eventually return to you, leaving you to assess the matter at hand.[line break]";
			if Libido of Player > 25, decrease Libido of Player by (Libido of Player / 10) + 1;
			now lustatt is Libido of Player;
			if enduring is true:
				decrease humanity of Player by 8 + (psycheadjust * 2);
			else:
				if struggleatt > 0, decrease struggleatt by 1;
				decrease humanity of Player by 15 + (psycheadjust * 5);
		if a random chance of 4 in 5 succeeds and enduring is false:
			increase hunger of Player by 1;
			increase thirst of Player by 2;
		else:
			increase thirst of Player by 1;
		now enduring is false;
		say "     [one of]Your surroundings subtly churn and heave in abiding you, the wet sound of these barely yielding walls rubbing together almost all you can hear while you're blanketed in a shroud of utter darkness[or]Your surroundings hot and firm against you, the lack of much air doesn't prove to be too much of a problem, though this doesn't diminish the issue of your slowly degrading mind and body[or]Barely able to move around within this slick prison, you can faintly hear the beat of the twisted beast's heart in the distance, though you can't effectively pinpoint where it's coming from, or even up from down[at random]. You imagine your only active option is to [bold type]S[roman type]truggle enough until they let you go, else you can [if obliging is true][bold type]O[roman type]blige[else][bold type]A[roman type]bide[end if] them, or [if boundrecover is true][bold type]R[roman type]ecover from[else][bold type]E[roman type]ndure[end if] these questionable circumstances.[line break]";
		say "[bold type]1[roman type] - [link]Struggle[as]1[end link][line break][run paragraph on]";
		say "[bold type]2[roman type] - [link][if obliging is true]Oblige[else]Abide[end if][as]2[end link][line break][run paragraph on]";
		say "[bold type]3[roman type] - [link][if boundrecover is false]Endure[else]Recover[end if][as]3[end link][line break][run paragraph on]";
		say "Sanity: [humanity of Player]/ 100	Lust: [lustatt]/100	Hunger: [hunger of Player]	Thirst: [thirst of Player]	Struggle: [bracket]-[if struggleatt > 1][bold type]X[roman type][else]-[end if][if struggleatt > 0][bold type]X[roman type][else]-[end if][close bracket][line break][run paragraph on]";
		if humanity of Player < 1:
			repeat with y running from 1 to number of filled rows in Table of Random Critters:
				choose row y in Table of Random Critters;
				if Name entry is "Sierrasaur":
					now MonsterID is y;
					break;
			now bodyname of Player is "Sierrasaur";
			now facename of Player is "Sierrasaur";
			now tailname of Player is "Sierrasaur";
			now skinname of Player is "Sierrasaur";
			now cockname of Player is "Sierrasaur";
			now tail of Player is tail entry;
			now face of Player is face entry;
			now skin of Player is skin entry;
			now body of Player is body entry;
			now cock of Player is cock entry;
			now voreloss is true;
			now Trixieexit is 1;
			end the story saying "You lost your mind while bound!";
		else:
			let k be 0;
			now keychar is "INVALID";
			change the text of the player's command to "";
			while keychar is "INVALID":
				now k is the chosen letter;
				translate k;
				if the player's command matches "[number]":
					now keychar is "[number understood]";
			if keychar in lower case exactly matches the text "s" or keychar in lower case exactly matches the text "1" or keychar in lower case exactly matches the text "return" or keychar in lower case matches the text "struggle":
				LineBreak;
				increase struggleatt by 1;
				if struggleatt < 3:
					say "     [one of]You start a bit of a ruckus inside[or]You writhe about and push around[or]You quickly and forcibly make known your protest from within[at random] [one of]this fleshy prison[or]these firm confines[at random], forcing the beast to groan. [if struggleatt is 1]It seems less annoyed and more confused by your disapproval[else]It becomes increasingly difficult for the beast to keep you down. At this rate, it might not see you as worth the trouble[end if].[line break]";
					if bsextimer > 5 and a random chance of bsextimer in 18 succeeds or (hunger of Player > 59 or thirst of Player > 59):
						sierrasex;
						if bodyname of Player is "Sierrasaur" and player is pure:
							if a random chance of 1 in 5 succeeds:
								infect;
						else if a random chance of 2 in 3 succeeds:
							infect;
						now bsextimer is 2;
						if bodyname of Player is "Sierrasaur", decrease humanity of Player by 1;
						if facename of Player is "Sierrasaur" and "Strong Psyche" is not listed in feats of Player, decrease humanity of Player by 1;
						decrease humanity of Player by 3 + psycheadjust;
						WaitLineBreak;
					else:
						if bodyname of Player is "Sierrasaur" and player is pure:
							if a random chance of 1 in 5 succeeds:
								infect;
						else if a random chance of 2 in 3 succeeds:
							infect;
						increase lustatt by 7 + (lustadjust * 2);
						increase bsextimer by 2;
						if bodyname of Player is "Sierrasaur", decrease humanity of Player by 1;
						if facename of Player is "Sierrasaur" and "Strong Psyche" is not listed in feats of Player, decrease humanity of Player by 1;
						decrease humanity of Player by 3 + psycheadjust;
						WaitLineBreak;
				else:
					say "     Finally successful, you're met with the low hacking sound from the beast. Apparently, it wants to relinquish you from its confines, as his firm stomach squeezes you back from whence you came, up through its gullet and out, foot by foot, into the dry, cool open air, made to wallow in a puddle of saliva. Finally having had enough of your fussing, it turns to slowly depart, leaving you to gather your things and go about your business freely once more.";
					cleanboundmemory;
					now Trixieexit is 1;
					follow the turnpass rule;
				next;
			else if (obliging is true and (keychar in lower case exactly matches the text "o" or keychar in lower case matches the text "oblige")) or (obliging is false and (keychar in lower case exactly matches the text "a" or keychar in lower case matches the text "abide")) or keychar in lower case exactly matches the text "2":
				LineBreak;
				if obliging is true:
					say "     You're driven to submit to your current circumstance, your captor [one of]choosing to rest for a moment, the weight of its body bearing down on you slightly[or]choosing to mull about idly, with little mind paid to its occupant[or]rumbling lowly in approval of their occupant[at random].";
					LineBreak;
					if bsextimer > 5 and a random chance of bsextimer in 18 succeeds or (hunger of Player > 59 or thirst of Player > 59):
						increase lustatt by 7 + (lustadjust * 2);
						sierrasex;
						if bodyname of Player is "Sierrasaur" and player is pure:
							if a random chance of 1 in 5 succeeds:
								infect;
						else if a random chance of 2 in 3 succeeds:
							infect;
						now bsextimer is 0;
					else:
						if bodyname of Player is "Sierrasaur" and player is pure:
							if a random chance of 1 in 5 succeeds:
								infect;
						else if a random chance of 2 in 3 succeeds:
							infect;
						increase lustatt by 14 + (lustadjust * 2);
					if a random chance of 2 in 3 succeeds, increase bsextimer by 1;
				else:
					say "     You choose to remain within these confines for a bit longer, your captor [one of]choosing to rest for a moment, the weight of its body bearing down on you slightly[or]choosing to mull about idly, with little mind paid to its occupant[or]rumbling lowly in approval of their occupant[at random].";
					LineBreak;
					if bsextimer > 5 and a random chance of bsextimer in 18 succeeds or (hunger of Player > 59 or thirst of Player > 59):
						sierrasex;
						if bodyname of Player is "Sierrasaur" and player is pure:
							if a random chance of 1 in 5 succeeds:
								infect;
						else if a random chance of 2 in 3 succeeds:
							infect;
						now bsextimer is 0;
					else:
						if bodyname of Player is "Sierrasaur" and player is pure:
							if a random chance of 1 in 5 succeeds:
								infect;
						else if a random chance of 2 in 3 succeeds:
							infect;
						increase lustatt by 7 + (lustadjust * 2);
				if bodyname of Player is "Sierrasaur", decrease humanity of Player by 1;
				if facename of Player is "Sierrasaur" and "Strong Psyche" is not listed in feats of Player, decrease humanity of Player by 1;
				decrease humanity of Player by 3 + psycheadjust;
				increase bsextimer by 1;
				WaitLineBreak;
				next;
			else:
				now enduring is true;
				if boundrecover is true:
					LineBreak;
					say "     With a brief flash of insight, you're able to find a glimpse of mental clarity within these confines, recovering a small portion of your lost humanity.";
					LineBreak;
					if bsextimer > 5 and a random chance of bsextimer in 18 succeeds or (hunger of Player > 59 or thirst of Player > 59):
						sierrasex;
						if bodyname of Player is "Sierrasaur" and player is pure:
							if a random chance of 1 in 5 succeeds:
								infect;
						else if a random chance of 2 in 3 succeeds:
							infect;
						now bsextimer is 0;
						SanBoost 3;
					else:
						if bodyname of Player is "Sierrasaur" and player is pure:
							if a random chance of 1 in 5 succeeds:
								infect;
						else if a random chance of 2 in 3 succeeds:
							infect;
						increase lustatt by 5 + (lustadjust * 2);
						SanBoost 3;
					now boundrecover is false;
				else:
					LineBreak;
					say "     You fight to maintain clarity while stuck in these confines, your captor [one of]choosing to rest for a moment, the weight of its body bearing down on you slightly[or]choosing to mull about idly, with little mind paid to its occupant[or]rumbling lowly in approval of their occupant[at random].";
					LineBreak;
					if bsextimer > 5 and a random chance of bsextimer in 18 succeeds or (hunger of Player > 59 or thirst of Player > 59):
						sierrasex;
						if bodyname of Player is "Sierrasaur" and player is pure:
							if a random chance of 1 in 5 succeeds:
								infect;
						else if a random chance of 2 in 3 succeeds:
							infect;
						now bsextimer is 0;
						if bodyname of Player is "Sierrasaur" and "Strong Psyche" is not listed in feats of Player, decrease humanity of Player by 1;
						decrease humanity of Player by 2 + psycheadjust;
					else:
						if bodyname of Player is "Sierrasaur" and player is pure:
							if a random chance of 1 in 5 succeeds:
								infect;
						else if a random chance of 2 in 3 succeeds:
							infect;
						increase lustatt by 5 + (lustadjust * 2);
						if bodyname of Player is "Sierrasaur" and "Strong Psyche" is not listed in feats of Player, decrease humanity of Player by 1;
						decrease humanity of Player by 2 + psycheadjust;
				increase bsextimer by 1;
				WaitLineBreak;
				next;
			say "Invalid action.";

to sierrasex:
	if boundstate is true:
		say "     Your surroundings tremble as the beast starts to make a low hacking sound. Intent on relinquishing you from its confines, its firm stomach squeezes you back from whence you came, up through its gullet and out, foot by foot, into the dry, cool open air. Made to briefly wallow in a puddle of saliva, the creature is clearly not interested in letting you go, pinning you to the ground.";
	if sierramem is 1:
		say "     Having a clearer view of the reptile's underside, [if sierramale is true]you're exposed to their previously obscured genitalia[else]it appears to be some manner of hermaphrodite[end if]. Large, blunt-headed and fairly rounded cock bobbing subtly before you, you quickly get the impression that this tool is never not hard, even as you don't get the impression it's particularly aroused at this moment. Its base acts as the starting point to a fairly defined, taut cleft, appearing to be a firm and unyielding [if sierramale is true]anal cloaca[else]bestial vent of a cunt[end if].";
		now sierramem is 2;
	if Player is female and Cunt Length of Player > 5 and ((boundstate is true and a random chance of 1 in 8 succeeds) or (boundstate is false and a random chance of 1 in 6 succeeds)):
		say "     Not particularly graceful in its motion, it shamelessly prods your exposed cunt with its rock-hard dick. [if HP of Player < 1]Not particularly inclined to be on the receiving end of it, you deliberately make it difficult for the creature to progress, which only forces it to lay on top of you, pinning you down before shoving[else]Once it gets its aim right, it shoves[end if] its tool past your supple folds. [if sierrapure is true]While the organ is fairly rough, your similar strain is resilient enough to only make it more pleasurable for you[else]Considering how rough and unyielding the organ is, this is a fairly uncomfortable ordeal until it's eventually lubricated by its copious precum[end if][if Player is male], cock[smn] soon driven to attention as well[else if Cunt Count of Player > 2], unattended cunts soon aching with need as well[else if Cunt Count of Player is 2], unattended cunt soon aching with need as well[end if], forcing a moan free from your lips.";
		increase lustatt by 45 + (lustadjust * 10);
		say "     Its initial thrusts are slow and ponderous, though this is only slightly assuaging since it plows you with its entire length with each motion. As it gradually picks up pace, you visibly begin to rock against the beast's motion, the air filling with the sounds of wet, irreverent slapping as it pounds your hole with a deliberate pace. It clearly finds bliss when that same motion briefly becomes erratic and opts to conclude by hilting the organ one last time";
		if (Libido of Player > 49 and boundstate is false) or lustatt > 99:
			say ". The force is more than enough to make you find ecstasy as well, [if Player is male]cock[smn] staining the ground and your torso with your [Cum Load Size of Player] payload[else]feminine portal eagerly tightening around its firm invader[end if], with little regard by the reptile.";
			decrease Libido of Player by (Libido of Player / 10);
			if Libido of Player < 0, now Libido of Player is 0;
			now lustatt is Libido of Player;
			if struggleatt > 0, decrease struggleatt by 1;
			if boundstate is true:
				if enduring is true:
					decrease humanity of Player by 8 + (psycheadjust * 2);
				else:
					decrease humanity of Player by 15 + (psycheadjust * 5);
		else:
			say ", causing your [if Player is male]cock[smn] to ooze meekly[else]feminine portal to tighten around its firm invader[end if] in insufficient orgasm, with little regard by the reptile.";
		say "     Assailed with a flood the beast's virile seed[if boundstate is true] - the volume of which is more substantive than what you'd guess is normal -[else],[end if] [if HP of Player < 1]you struggle impotently under its hold[else if sierrapure is true]you're eager to be filled to brim by your larger kin's seed[else]it fills your womb to the very brim[end if][if sierrapure is false and scalevalue of Player < 4], quickly sputtering from your hole[end if]. [if boundstate is true and sierrapure is true]Clearly, it's used this opportunity to also sustain its twisted offspring[else if boundstate is true]The way it feels being pumped full of that slick fluid, you can guess that this was an excuse to sustain you[else]Oddly enough, being pumped full of that slick fluid has an oddly filling and satisfying effect on you, from what you can feel[end if]. The beast pulls his still-hard dick from your hole with a loud, wet squelch, leaving a trail of cum in its wake.[impregchance][line break]";
	else if anallevel > 1 and (Cunt Count of Player is 0 or anallevel is 3) and a random chance of 1 in 8 succeeds:
		say "     Not particularly graceful in its motion, it shamelessly prods your exposed asshole with its rock-hard dick. [if HP of Player < 1]Not particularly inclined to be on the receiving end of it, you deliberately make it difficult for the creature to progress, which only forces it to lay on top of you, pinning you down before shoving[else]Once it gets it aim right, it shoves[end if] its tool past your anal ring. [if sierrapure is true]While the organ is fairly rough, your similar strain is resilient enough to only make it more pleasurable for you[else]Considering how rough and unyielding the organ is, this is a fairly uncomfortable ordeal until it's eventually lubricated by its copious precum[end if][if Player is male], cock[smn] soon driven to attention as well[else if Player is female], unattended cunt[sfn] soon aching with need as well[end if], forcing a moan free from your lips.";
		say "     Its initial thrusts are slow and ponderous, though this is only slightly assuaging since it plows you with its entire length with each motion. As it gradually picks up pace, you visibly begin to rock against the beast's motion, the air filling with the sounds of wet, irreverent slapping as it pounds your hole with a deliberate pace. It clearly finds bliss when that same motion briefly becomes erratic and opts to conclude by hilting the organ one last time";
		increase lustatt by 35 + (lustadjust * 10);
		if (Libido of Player > 49 and boundstate is false) or lustatt > 99:
			say ". The force is more than enough to make you find[if Player is neuter] paltry[end if] ecstasy as well, [if Player is male]cock[smn] staining the ground and your torso with your [Cum Load Size of Player] payload[else if Player is female]neglected, feminine portal[sfn] gushing against the open air[else]supple hole eagerly tightening around its firm invader[end if], with little regard by the reptile.";
			decrease Libido of Player by (Libido of Player / 10);
			if Libido of Player < 0, now Libido of Player is 0;
			now lustatt is Libido of Player;
			if struggleatt > 0, decrease struggleatt by 1;
			if boundstate is true:
				if enduring is true:
					decrease humanity of Player by 8 + (psycheadjust * 2);
				else:
					decrease humanity of Player by 15 + (psycheadjust * 5);
		else:
			say ", causing your [if Player is male]cock[smn] to ooze meekly[else if Player is female]neglected, feminine portal[sfn] to ooze meekly[else]supple hole to meekly squeeze around its firm invader[end if] in insufficient orgasm, with little regard by the reptile.";
		say "     Assailed with a flood the beast's virile seed[if boundstate is true] - the volume of which more substantive than what you guess is normal -[else],[end if] [if HP of Player < 1]you struggle impotently under its hold[else if sierrapure is true]you're eager to be filled to brim by your larger kin's seed[else]it fills your bowels to the very brim[end if][if sierrapure is false and scalevalue of Player < 4], quickly sputtering from your hole[end if]. [if boundstate is true and sierrapure is true]Clearly, it's used this opportunity to also sustain its twisted offspring[else if boundstate is true]The way it feels being pumped full of that slick fluid, you can guess that this was an excuse to sustain you[else]Oddly enough, being pumped full of that slick fluid has an oddly filling and satisfying effect on you, from what you can feel[end if]. The beast pulls his still-hard dick from your hole with a loud, wet squelch, leaving a trail of cum in its wake.[mimpregchance][line break]";
	else if anallevel is 1 and Cock Count of Player > 1 and a random chance of 1 in 8 succeeds and sierramale is false:
		say "     [if scalevalue of Player < 4]Nearly banging you in the head with that perpetually erect dick, it's[else]It's[end if] not particularly graceful as it moves forward to position its slit over your crotch. Descending to slowly grind against your [cock size desc of Player] dick[smn], [if HP of Player < 1]you're not exactly in the mood for this sort of crude foreplay, but when you try to struggle free, it just pins you down and continues grinding until you're finally compelled into arousal[else if sierrapure is true]your strain of infection makes you already pretty hard as it is, and as such it doesn't take much work to render you fully aroused[else]the fairly crude foreplay eventually does compel you into arousal[end if], raising only to slowly sink back down,[if Cock Count of Player > 1] one of[end if] your tool[smn] now between its lips.";
		say "     The taut cleft is definitely not all that yielding to any sort of intrusion, [if sierrapure is true]though your strain makes you equally as firm, allowing you to impale it with fair ease[else]subjecting you to a fair bit of duress before it finally parts to abide your length[end if], the inner walls only marginally softer on you. Not given much in the way of lubrication, the beast only eases you into the matter by first attempting to engulf the entirety of its length[if Cock Length of Player > 14], a feat not particularly easy given your size[end if]";
		if Player is knotted and Cock Length of Player > 14:
			say ". At first, it becomes a confused by your knot, firmly trying to impale itself with it. Too large for its tight hole to abide, it subjects you to the strain of this endeavor for a while before finally giving up, using what it has access to and bracing itself for what is to follow.";
		else:
			say ". With little work, your tool disappears into its depths[if Player is knotted], knot included[end if]. Shifting slightly, it appears to brace itself for what is to follow.";
		say "     You guess that it used this to know exactly how long you were, because it immediately raises its crotch just high enough that only a portion of your head remains engulfed, before bearing down firmly once more. It gradually builds a motion of repeating this very deliberate and forceful act, the motion quickly slicked with your pre and the beast's emergent sexual fluids, which ooze down to stain your crotch. [if HP of Player < 1]This ritual isn't particularly pleasing to you, but its persistence eventually starts to get to you[else if sierrapure is true]Built exactly for this use[else]The ritual quickly having an effect on you[end if], the weight of its wanton assault eventually squeezes a moan out of your lips, drowned out by the sound of its sex shamelessly slapping against you, moving you with each descent.";
		say "     It doesn't take long, but eventually the reptile lets out a strained groan, hilting your dick one last time[if Player is knotted and Cock Length of Player > 14], this time tying with you proper[end if] before the taut abyss squeezes relentlessly against your tool, its own dick dribbling out a bit of seed, though the fluid release is easily eclipsed by that of its greedy cunt, gushing substantially to stain your torso[if boundstate is true] - in fact, more than you'd guess is normal[end if]";
		increase lustatt by 50 + (lustadjust * 10);
		if (Libido of Player > 49 and boundstate is false) or lustatt > 99:
			say ". This is more than enough to bring you over the edge, spurting your [Cum Load Size of Player] cum into the reptile's depths[if Cock Count of Player > 2], its brothers staining the both of you[else if Cock Count of Player is 2], its brother staining the both of you[end if]. It [if ball size of Player > 20]groans slightly, with how much it's forced to abide, but it does manage to take it all with not much issue[else]barely seems to notice you firing into its depths[end if]";
			decrease Libido of Player by (Libido of Player / 10);
			if Libido of Player < 0, now Libido of Player is 0;
			now lustatt is Libido of Player;
			if struggleatt > 0, decrease struggleatt by 1;
			if boundstate is true:
				if enduring is true:
					decrease humanity of Player by 8 + (psycheadjust * 2);
				else:
					decrease humanity of Player by 15 + (psycheadjust * 5);
		else:
			say "[if boundstate is true] -[else],[end if] causing your cock to spurt weakly into the beast's tight depths, the reptile not seeming all that interested in getting you off properly and subsequently leaving you still lust-addled";
		say ". [if sierrapure is true and boundstate is true]Clearly, your larger kin wishes to bathe its smaller occupant, leaving you awash in its rejuvenating effects[else if boundstate is true and sierramem is 2]The sexual fluids seem to have a rejuvenating effect as they wash over you, clearly indicating that it used this act to sustain its prisoner[else if sierramem is 2]Oddly, the sexual fluids feel a bit rejuvenating when partially coated in it[else if boundstate is true]Bathing you in its sexual fluids, it gives its prisoner a moment to bask in its rejuvenating effects[else]Bathing you in its sexual fluids, it gives you a moment to bask in its rejuvenating effects[end if]. Finally satisfied, it pulls itself free of you, the loud, wet sound of its departure filling the air briefly.";
		if sierramem is 2, now sierramem is 3;
	else: [Oral - Should be most prominent]
		say "     Climbing on top of you with a clear lack of expedience, it shows no restraint in prodding your face with its perpetually hard dick[if boundstate is true and sierrapure is true], the reptile eager to feed its juvenile kin through its[else if boundstate is true]. You get the impression that the reptile feels it needs to compensate for draining you by forcing you to feed from its[else]. Clearly, it expects you to satisfy the reptile's[end if] lewd pipe. [if HP of Player < 1]You try to resist, at first, but this only compels it to be more insistent in pinning you down firmly until you cry out in obligation, your maw enveloping[else]Only briefly reluctant, your maw envelops[end if] the tool's blunt head. Quite firm against your lips, it nonetheless oozes precum almost immediately, even your brief affection amplifying the release of these fluids with considerable expedience.";
		if facename of Player is "Sierrasaur":
			say "     The creature insists on forcing it deeper into you - not that your wide-set maw can't handle it -";
		else:
			say "     The creature insisting on forcing it deeper into you, your ability to breathe is considerably limited,";
		say " [if boundstate is true]though he relents just enough to not overwhelm you, [end if]making you rapidly swallow down his sexual fluids just to keep up. This ritual [if HP of Player < 1]forcibly[else]quickly[end if] [if Player is male]drives your dick[smn] erect, throbbing in the open air[else if Player is female]makes your cunt[sfn] ache with an overwhelming need[else]makes you aroused, though you have no way of sating it[end if], a matter you're too preoccupied right now to properly attend to, as the beast thrusts instinctively against your attending hole.";
		say "     With a low, loud groan, the reptile [if boundstate is true]suddenly pins you down, forcing almost the entire length down your throat, flooding[else]floods[end if] your gullet with its thick, creamy fluid. [if boundstate is true and sierrapure is true]The creature is happy to feed its little companion, generating a fair amount more than what is normal for it, probably also using this time to train you, as your torso bloats to abide the overwhelming flood[else if boundstate is true]The creature is dead set on forcing you to swallow all of it down, and it's quickly clear that it seems to be generating more than usual, your stomach quickly bloating to abide this overwhelming flood[else if sierrapure is true]The creature is happy to feed its little companion, flooding your belly with its virile seed[else]The flood is so substantive, it eventually starts spurting from your lips, ultimately forcing you to pull free of his tool and get doused with the remnant flood of the creature's virile seed[end if].";
		if sierramem is 2:
			say "     [if HP of Player < 1]Thankfully[else if sierrapure is true]Much to your approval[else]Interestingly enough[end if], the taste is not all that bad, this lewd nectar mildly sweet and clearly filling";
			if boundstate is true:
				say ". You imagine this is probably where the essence the beast has been draining has been going, [if sierrapure is true]eager to sustain its twisted offspring[else]though it's odd that it wants to feed it back to you[end if]";
			else:
				say ". You imagine the beast's seed is particularly sustaining, [if sierrapure is true]eager to aid one of its smaller kin[else]strange though it may be[end if]";
			now sierramem is 3;
		else:
			say "     [if HP of Player < 1 and sierrapure is false]Groaning weakly[else]Moaning[end if], you're full with the beast's sweet, tainted nectar";
			if boundstate is true:
				say ", who's [if sierrapure is true]eager to sustain its twisted offspring[else]eager to feed your essence back to you[end if]";
			else:
				say ", who's [if sierrapure is true]eager to aid one of its smaller kin[else]strangely eager to sustain you[end if]";
		increase lustatt by 45 + (lustadjust * 10);
		if (Libido of Player > 49 and boundstate is false) or lustatt > 99:
			say ". Too overtaken by your own need, you almost immediately resort to [if Player is male]jacking yourself off[else if Player is female]fingering yourself[else]fondling yourself[end if] madly right then and there. It doesn't take much work to set you off, [if Cock Count of Player > 1]dicks spurting their [Cum Load Size of Player] load into the open air and making a bigger mess of things[else if Cock Count of Player is 1]dick spurting its [Cum Load Size of Player] load into the open air and making a bigger mess of things[else if Player is female]cunt[sfn] throbbing firmly against your touch[else]barely able to find some reprieve out of your genderless form[end if]. The beast doesn't seem to regard this all that much, letting you perform this ritual.";
			if struggleatt > 0, decrease struggleatt by 1;
			decrease Libido of Player by (Libido of Player / 10);
			if Libido of Player < 0, now Libido of Player is 0;
			now lustatt is Libido of Player;
			if boundstate is true:
				if enduring is true:
					decrease humanity of Player by 8 + (psycheadjust * 2);
				else:
					decrease humanity of Player by 15 + (psycheadjust * 5);
		else:
			say ". Aching with need after the whole ordeal, it takes you a moment to calm down, the beast patiently giving you a moment to catch your breath.";
	if boundstate is false:
		say "     After that, it pulls away, slowly stepping back and letting you depart. It just... stands there, and only watches you passively as you get up and step away, strangely indifferent to your departure as you gather your things and leave.";
	else:
		say "     Pulling back away from you, it's clearly set on consuming you once more[if HP of Player < 1]. You try to fight back, but you're still too weak and exhausted to really do anything, and as such the creature entirely ignores you protests[else if sierrapure is true], your infection compelling a jovial regard at the thought being brought back into your room again[else], that familiar, gaping abyss exposed to you[end if] before his maw gently wraps around your [bodytype of Player] form. Shoving you gradually back down the slick hole, each successive, ponderous gulp sucks you into these unyielding confines until you're forced to reconvene with your [if humanity of Player < 51]new home[else]twisted prison[end if].";
		PlayerEat 3; [Effect is doubled for abducted players]
		PlayerDrink 6;
	PlayerEat 3;
	PlayerDrink 6;

to say beathesierra:
	say "     After struggling with the beast for a while, it disengages from you entirely. Looking it over, it doesn't seem you've put a dent into it, but it does at least appear to have conceded to your will. If you step closer to it, its demeanor is mildly sheepish, inferring a slight submissive gesture from the otherwise indifferent-appearing creature. Matter resolved, you choose to depart."; [Victory sex NYI]


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Length	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Name entry is "Sierrasaur";
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]Slowly[or]Ponderously[at random], the [one of]beast[or]creature[or]reptile[at random] [one of]tries forcing you to the ground, seemingly intent on compelling you into submission than overtly taking you out[or]attempts to tackle you, pinning you to the ground in hopes to subdue you[or]grabs you with its maw, attempting to hold onto you until you exhaust yourself from trying to get free[at random]. Eventually, you [one of]manage to pry yourself away[or]slip out of its hold[at random], [one of]maintaining your distance once more[or]needing a second to catch your breath before continuing[at random].";
	now defeated entry is "[beathesierra]";
	now victory entry is "[losetosierra]";
	now desc entry is "[sierradesc]";
	now face entry is "a wide set, distinctly [one of]reptilian[or]saurian[at random] build";
	now body entry is "a bulky, stout, and feral frame. Naturally inclined to make you stand on all fours, you're at least smaller than your proper kin and still able to articulate";
	now skin entry is "light brown, [one of]tough[or]rhino-hard[at random] hide for";
	now tail entry is "You're adorned with a wide, stubby tail that isn't of much real use to you.";
	now cock entry is "[one of]blunt[or]bestial[at random], always at least partially eager";
	now face change entry is "your head succumbs to an infectious alteration. Widening and taking on fairly saurian features, your field of view also expands to get a better view of your surroundings, a distinct ridge spiring upwards along your crown down to your neck. You imagine it'll be a bit challenging to eat food with this new set of somewhat stubby teeth";
	now body change entry is "you're suddenly made to buckle with intense discomfort. Torso shifting in place to take on a bulky and stout build, a ridge protrudes upward along the spine of your now distinctly bestial build. Limbs widening and becoming heavier, tough spires jut from your elbows and knees, making them fairly awkward and difficult to lift. Thankfully, it appears the infectious strain won't advance as far as it would for those whom it originates from, being much smaller than your similar kin, at least for now. You also maintain a fair bit of articulation in your hands, which is helpful, at least";
	now skin change entry is "you're soon assailed with an overwhelming tension in your body. The intense sensation slowly diminishing, you're revealed to have acquired an extremely tough hide. Having a light brownish hue, it feels extremely resilient, though rather coarse";
	now ass change entry is "a tail slowly begins to sprout. When it's fully formed, it's revealed to be fairly stout and vaguely reptilian. Not particularly long, it takes a bit of work to move on its own, giving you the impression that it's not very effective";
	now cock change entry is "it's subjected to an infectious influence. Looking down to check on [if Cock Count of Player > 1]them, they[else]it, the tool[end if] appears to have taken on a somewhat equine appearance, though the blunt head doesn't flare outwards. More distressingly, [if Cock Count of Player > 1]they seem[else]it seems[end if] perpetually half-aroused, even when that's the last thing on your mind. You guess the infection hasn't progressed enough to make you permanently hard, which is slightly reassuring";
	now str entry is 14; [14]
	now dex entry is 12; [12]
	now sta entry is 22; [22]
	now per entry is 11; [11]
	now int entry is 8; [8]
	now cha entry is 10; [10]
	now sex entry is "Both";
	now HP entry is 155; [155]
	now lev entry is 9; [9]
	now wdam entry is 7; [7]
	now area entry is "Plains"; [Plains]
	now Cock Count entry is 1;
	now Cock Length entry is 14;
	now Ball Size entry is 30;
	now Nipple Count entry is 0;
	now Breast Size entry is 0;
	now Male Breast Size entry is 0;
	now Cunt Count entry is 1;
	now Cunt Length entry is 12;
	now Cunt Tightness entry is 10;
	now libido entry is 10;
	now loot entry is "earthen seed";
	now lootchance entry is 30;
	now scale entry is 3; [Infection strain is smaller than the actual monster]
	now body descriptor entry is "[one of]bulky[or]hulking[or]bestial[at random]";
	now type entry is "[one of]feral[or]bestial[or]reptilian[or]saurian[at random]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now DayCycle entry is 0;
	now altcombat entry is "default";
	now BannedStatus entry is false;

Table of New Infection Parts (continued)
Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Arms Change	Arms Description	Arms Skin Adjective	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Ass Change	Ass Description	Ass Skin Adjective	Ass Width	Tail Change	Tail Description	tail skin adjective	Asshole Length	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Length	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Name entry is ""; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight]
	now Body Definition entry is 5; [scale of 1-9 for body definition]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective: skinny/slender/lithe/average/fit/muscled/pudgy/husky/jacked]
	now Androginity entry is 5; [1-9 scale of male to female]
	[Gender Adjective is generated out of androginity]
	now Head Change entry is ""; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [head description of Player] with [eye color of Player], [eye type of Player] eyes and an overall [gender appearance of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Adornments entry is ""; [partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...)]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective  is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3;
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Body Adjective of Player], [Gender Adjective of Player] and your torso is [torso description of Player]."]
	now Torso Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [torso adornments of Player]."]
	now Torso Skin Adjective entry is ""; [one word descriptive adjective (furry/scaled/...)]
	now Torso Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Torso Pattern entry is ""; [single word color adjective for the dominant pattern of the skin/fur/feathers/scales]
	now Breast Adjective entry is ""; [adjective(s) example: round, pointy, perky, saggy, bouncy. This would serve as either a general appearance of a infections breasts or possibly something that may be effected by a item or NPC.]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Nipple Count entry is 2; [count of nipples]
	now Nipple Color entry is ""; [one word color descriptor]
	now Nipple Shape entry is ""; [shape example: any shape will do as long as it has a baseline with a current infection or item]
	now Back Change entry is ""; [partial sentence that fits in: "Your back [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Back Change entry]."]
	now Back Adornments entry is ""; [partial sentence to fit: "Your back tickles with the feeling of movement caused by [back adornments of Player]."]
	now Back Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...)]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is ""; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is ""; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...)]
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...)]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [ass description of Player]."]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...)]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your tail [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Tail Change entry]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...)]
	now Asshole Length entry is 7; [inches deep for anal fucking;]
	[Asshole Length Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Asshole Tightness entry is 3;
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "tiny, small, tight, wide, gaping"]
	now Asshole Color entry is ""; [one word color descriptor]
	now Cock Count entry is 0;
	now Cock Girth entry is 0;
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 0; [length in inches]
	now Cock Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cock Change entry is ""; [partial sentence that fits in: "Your groin [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is ""; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [cock adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock description of Player]."]
	now Cock Color entry is ""; [one word color descriptor]
	now Ball Count entry is 0;
	now Ball Size entry is 0; [size of balls 1-5: "acorn-sized", "coin-sized", "egg-sized" "goose-egg sized", "ostrich-egg sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is ""; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [ball description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Length entry is 0;
	now Cunt Tightness entry is 0;
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your groin [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt Change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that is [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [Size of Clit (1-5); very small/small/average/large/very large]


Section 3 - Drop Object

Table of Game Objects (continued)
name	desc	weight	object
"earthen seed"	"A small vial of peculiar, regenerative ejaculate"	1	earthen seed

earthen seed is a grab object. earthen seed is infectious. The strain of earthen seed is "Sierrasaur". earthen seed is cum.
the scent of earthen seed is "The warm swill has a heady, masculine scent.".
The usedesc of earthen seed is "[usesierraseed]";

to say usesierraseed:		[only alters sizes, not gender]
	choose row MonsterID from Table of Random Critters;
	setmonster "Sierrasaur";
	if "Male Preferred" is listed in feats of Player:
		now sex entry is "Male";
	else if "Female Preferred" is listed in feats of Player:
		now sex entry is "Female";
	else if "Herm Preferred" is listed in feats of Player:
		now sex entry is "Both";
	else if sierramale is true:
		now sex entry is "Male";
	else:
		now sex entry is "Both";
	say "     Downing the vial of thick seed, you feel mildly rejuvenated, though your body churns with the strain's lingering influence.";
	PlayerEat 2;
	PlayerDrink 4;
	increase Libido of Player by 1;

Section 4 - Endings

when play ends:
	if bodyname of Player is "Sierrasaur":
		if humanity of Player < 10:
			if voreloss is true:
				say "     Succumbing from inside the reptile, you eventually grow obsessively fond of these twisted confines. Though you never grow to full size, you nonetheless remain ever tended to by your parental kin, leaving your new home only to be fed ";
				if (player is female or player is mpreg_ok) and "Sterile" is not listed in feats of Player:
					say "and give birth to the beast's offspring";
				else if Player is male and sierramale is false:
					say "and sire the beast's offspring";
				say ".";
				say "     Over time, the creature's pack grows in size, leaving you with others to deal with";
				if Player is submissive:
					say ". So innately inclined to this role, you eventually find yourself being tossed from beast to beast, like some manner of toy. You find yourself particularly useful as a tool for training the newer and less experienced of your kin";
				else:
					say ". You prove to be a little bit of a nuisance, as you're rather ill-inclined to share your adoptive parent's fleshy abode with new prospects. Your caretaker doesn't seem to mind all that much, even if it proves a bit inconvenient at times";
				say ". In time, all your memory is a blur of the reptiles['] taut, unyielding flesh flooding and enveloping you day in and day out...";
			else:
				say "     Overwhelmed by your infection, you eventually lose all self-control, made to wander the land a ponderous, twisted beast. Your strain eventually progresses until you fully assume the form of your kin, now a mere animal in the eyes of those unwise enough to enter your reach.";
				say "     Encountering one such individual, no doubt searching for survivors, you instinctively subdue them before they are drawn within your slick confines, your new child soon made to be consort. It takes only a few hours of its beloved occupancy, intermittently broken up by your wanton rituals of feeding, until your new companion succumbs as you had, eventually offering itself ";
				if Player is male and ((player is female or player is mpreg_ok) and "Sterile" is not listed in feats of Player) and sierramale is false:
					say "to sire your children";
					if sierramale is true:
						say " and you to sire its";
				else if Player is male and sierramale is false:
					say "for you to sire its children";
				else if (player is female or player is mpreg_ok) and "Sterile" is not listed in feats of Player:
					say "to sire your children";
				else:
					say "to satisfy you on a whim and help you find more to be brought into the fold";
				say ". Over time, you make a great family of beasts, their slow pace belying a bottomless hunger...";
		else:
			say "     You're soon found by the military and gradually reintroduced to normal society. Even though you're assessed to not be infectious, this doesn't stop the strain from eventually progressing to the point where you assume the full scale and stature of your feral kin - though you thankfully retain your mental articulation.";
			say "     The way you are, there's little you can find for conventional work, and you ultimately find yourself following the same line of work of many infected";
			if Player is not neuter:
				say ". Given the regenerative effects of sexual fluids, you find a tidy income selling the stuff to less scrupulous individuals, away from the prying eyes of polite society, which helps for a while";
			say ".";
			say "     You eventually find a particular ring in the sex trade which puts extremely high value on your infection's innately voracious capabilities";
			if "Vore Predator" is listed in feats of Player:
				say ". However, this very quickly turns south when a much more aggressive strain you picked up causes less than desirable results. The ensuing incident eventually forces you deeper into seclusion, away from the public eye.";
			else:
				say ". This turns out to be extremely lucrative, ensuring you live a fairly comfortable life... though it's something you can't easily explain to more civilized fare, especially when claiming to be a 'courier' doesn't quite fit your financial status.";

Sierrasaur ends here.
