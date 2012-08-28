Version 1 of Wolfman by Wahn begins here.
[Version 0.2 - everything but the second npc done]

"Adds a team of football wolfmen to Flexible Survivals Wandering Monsters table, With Impreg chance"

Section 1 - Events	

Wolfman Talent Scout is a situation. The level of Wolfman Talent Scout is 6.
The sarea of Wolfman Talent Scout is "Outside";
when play begins:
	add Wolfman Talent Scout to badspots of furry;      [wolfman]
	add Wolfman Talent Scout to badspots of guy;        [male wolfman]
	add { "Football Wolfman" } to infections of guy;
	add { "Football Wolfman" } to infections of furry;

Instead of resolving a Wolfman Talent Scout:
	say "     As you explore the ruined city, a tall figure suddenly steps into sight in front of you and gives you a calculating look. It's a well-toned male wolf-morph, standing on two digigrade legs. His fur is almost completely black, except for a blood red section on his chest that forms the number 7.";
	say "     He nods his lupine head at you, saying 'I'm Septus, the talent scout of the Fairhaven Wolves. You don't look half bad - but are you worth joining the best football team of this changed world?' He gives you a toothy grin, then pounces at you.";
	challenge "Football Wolfman";	
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Football Wolfman":
			now monster is y;
			break;
	now area entry is "Outside";
	increase score by 5;
	Now Wolfman Talent Scout is resolved;
	
Entrance to the Lair is a situation. The level of Entrance to the Lair is 5.  Entrance to the Lair is resolved.
The sarea of Entrance to the Lair is "Outside";

Instead of resolving a Entrance to the Lair:
	say "     Looking around a bit, you soon find the warehouse Septus mentioned. It's hard to miss, with a large wolf's head painted on the facade. As you come close to the building, two wolfmen guarding the front instantly spot you. One goes inside, the other stays at the entrance door and eyes you warily. Several minutes later, Septus comes out with the other wolfman, visibly perking up as he spots you. 'It's okay, guys. Our visitor is a friend.' He waves you closer, holding open the door to let you in.";
	say "     The warehouse they made into their base is pretty large and surprisingly well equipped. Between improvised walls made from large boxes there are sections filled with exercise equipment, beds, supplies and whatnot. In the main area at least a score of wolfmen is present, most of which are working out - accompanied by three young human women doing stretches and a little naked cheerleading routine in front of them.";
	if bodyname of player is "Football Wolfman":
		say "     Septus walks up to one of the women and pulls her close, running his strong hands over her body and licks over her nipples before going in for a deep muzzle to mouth kiss. 'Hi mom, I present to you another candidate for the team. As you can see, already in great shape... why don't you show [if cocks of player > 0]him[otherwise]her[end if] the benefits of joining us.' He gives her face a last affectionate lick, then grins at you, stepping to the side.";
	otherwise:
		say "     Septus walks up to one of the women and pulls her close, running his strong hands over her body and licks over her nipples before going in for a deep muzzle to mouth kiss. 'Hi mom, I present to you another candidate for the team. Still a bit undecided... why don't you show [if cocks of player > 0]him[otherwise]her[end if] the benefits of joining us.' He gives her face a last affectionate lick, then grins at you, stepping to the side.";
	say "     Jennifer smiles and nods to you, then says 'Let me tell you a bit about the team. You see, the girls and me were cheerleaders on a way to a game when all the chaos started. The school bus was standing at a red light when suddenly a huge shaggy wolf started clawing open the door. The driver tried to get away in a panic, but in the end crashed the bus. And then the wolf was in and started ripping off her clothes. We couldn't do anything but watch as he mounted her. When he finished inside her, he growled and took another girl, filling us one by one with his seed like a totally insatiable animal.'";
	say "     'I was so afraid having that huge beast on top of me - but all that changed when he came and filled my womb with his load. I felt the moment his sperm found my egg.' she lowers a hand to her stomach, then lower and strokes her pussy lips. 'From that moment, I knew it was fate that brought a wolf - our team symbol - to us. We were to be the mothers of a new team, one born to play!'";
	say "     She steps over to Septus, running a hand through his warm chest-fur. What a strange new world, with her son standing taller than she is and looking roughly the same age. 'Our handsome boys are born winners. And we need more players...' She fondles the wolfman's balls for a moment, giving an aroused sigh, then turns back to you. 'But don't let it discourage you that you weren't born as one of them. The team is open to anyone who proves he can play like a wolf.'";
	now hp of Septus is 5;
	now Wolfman Lair is known;
	now Entrance to the Lair is resolved;
	move player to Wolfman Lair;
	
Wolfman Lair is a room. It is fasttravel. It is private. 
The description of Wolfman Lair is "[lairdesc]";

instead of sniffing Wolfman Lair:
	say "A bit of sweat hangs in the air, combined with the pheromone-laden musk of a lot of wolfmen. It makes you feel a bit stronger and strangely competitive...";

to say lairdesc:
	say "     The warehouse they made into their base is pretty large and surprisingly well equipped. Between improvised walls made from large boxes there are sections filled with exercise equipment, beds, supplies and whatnot. In the main area usually about a score of wolfmen is present, most of which are busy working out - accompanied by young human women cheering them on and doing some suggestive stretches in front of them - in the nude. When one of the wolves takes a break, they often get accompanied by one - or more - of the women to the adjoining sections. In which case lustful moans and howls soon follow.";
	
Section 2 - Monster Responses & Infection 

to say Septus wins:
	if hp of player is greater than 0:
		say "     'What's this? You're supposed to show what you can do, wimp!' he sneers and shoves you to the ground. With a dismissive 'Maybe I overestimated you' he turns away and walks off.";
	otherwise:
		say "     He steps back a bit as you collapse to your knees in exhaustion. 'Hm, there's potential in you, but you really have to step up your game. Train a bit, build some muscles and come find me again, ok?'";

To say Septus loses:
	if bodyname of player is "Football Wolfman":
		say "     Panting, the wolfman steps back from you to catch his breath. With an appreciating nod, Septus says 'Well done, [if cunts of player > 0]sister[otherwise]brother[end if]. We need more players like you.'"; 
	otherwise:
		say "     Panting, the wolfman steps back from you to catch his breath. With an appreciating nod, Septus says 'Well done, [if cunts of player > 0]girl[otherwise]man[end if]. You're among the best I've tried out today.'"; 
	say "     [if (hp of Septus is 0 or hp of Septus is 1 or hp of Septus is 2)]'Keep this up, and you'll have a place in the team soon.' He gives your shoulder a squeeze, then walks off to find more candidates out in the city.[otherwise if (hp of Septus is 3 or hp of Septus is 4)]'You've shown your strength and skill. Why don't you join us in our base camp? It's in a warehouse over near 11th street. Just look for the [bold type]entrance[roman type] of our wolfman [bold type]lair[roman type] - there's a large wolf's head painted on the front wall too, you can barely miss it.'[otherwise if hp of Septus is 5]'See you later at the lair. I'm off to find some new candidates.'[end if]";
	if hp of Septus < 4:
		increase hp of Septus by 1;
	if hp of Septus is 4:
		now Entrance to the Lair is unresolved;


to say Wolfmandesc:
	say "     Septus, the well-toned wolfman talent scout rushes at you, growling [one of]'Let's see what you're made of!'[or]'Let's spar a bit.'[or]'Time for some endurance training.'[at random]";

Section A - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Football Wolfman";         [The creature's name as displayed and used in naming descriptions]
	now attack entry is "[one of]The wolfman goes for a tackle, grabbing you with strong hands and pulls you to the ground.[or]He rushes past you, hitting you with a muscled shoulder and driving the breath from your lungs.[or]He grabs you roughly with strong clawed hands. That'll leave some bruises and scratches for sure.[or]He gives you a hard, but not that painful blow to the chest. Looks like he's pulling some of the punch out of it. 'Come on, show me what you're made of!'[or]He scores a hit against your side, growling 'That was easily avoidable - you need more training!'[at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "[Septus loses]";   [ Text or say command used when Monster is defeated.]
	now victory entry is  "[Septus wins]";    [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "[Wolfmandesc]";            [ Description of the creature when you encounter it. ]
	now face entry is "a canine muzzle sticking out of your wolf-like head. The sharp teeth inside it make your smiles and growls pretty unforgettable for others, and the long tongue should come in handy for french kissing";
	now body entry is "tall and well muscled, standing on two legs and showing an interesting mix of lupine and human form. While your legs are fully digigrade and end in large paws, your arms are changed but still more human-like and end in strong, now clawed, hands.";
	now skin entry is "[one of]black furred[or]densely furred[or]furred[at random]";
	now tail entry is "You have a mid-length fluffy tail growing out of your spine just above the grabbable buns of your ass.";  [ Tail desc., written as a full sentence or left blank for none. ]
	now cock entry is "[one of]lupine[or]wolf[or]knotted[at random]";
	now face change entry is "your face stretches out into a large lupine muzzle, filled with a predator's sharp teeth. Your worldview shifts a bit as your ears become pointed and move to the top of your head, your vision becomes somehow 'sharper' and new scents assail your now much more sensitive nose."; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "your body morphs into a well tones human-wolf hybrid shape. With the crunching noise of breaking bones, your legs become digitigrade - now ending in large paws instead of feet. Your arms meanwhile fill out and lengthen a bit and also change the form of their joints slightly. Still, they're closer to human than the legs - even with the new sharp claws on the hands."; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "dense black fur spreads rapidly over your form. Well, mostly black - your chest shows a large '22' on it in blood-red fur, just like your back"; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "a mid-length lupine tail sprouts from your backside"; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "your member grows thicker as the top of it grows to a sharp point, a large canine knot forming at the base of your new lupine sheath"; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 14;
	now dex entry is 20;
	now sta entry is 15;   
	now per entry is 18;
	now int entry is 12;
	now cha entry is 16;
	now sex entry is "Male";		[ Infection will move the player towards this gender.  Current: 'Male' 'Female' 'Both' ]
	now hp entry is 70;			[ The monster's starting hit points. ]
	now lev entry is 6;                 [ Monster level.  (Level x 2) XP for victory.  (Level / 2) XP for losing. ]
	now wdam entry is 15;               [ Monster's average damage when attacking. ]
	now area entry is "";               [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1;               [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 16;        [ Length infection will make cock grow to if cocks. ]
	now cock width entry is 10;         [ Cock width, more commonly used for ball size. ]
	now breasts entry is 0;             [ Number of breasts the infection will give a player. ]
	now breast size entry is 0;         [ Size of breasts the infection will try to attain. ]
	now male breast size entry is 0;    [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;               [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 0;         [ Depth of female sex the infection will attempt to give a player. ]
	now cunt width entry is 0;          [ Width of female sex the infection will try to give a player. ]
	now libido entry is 80;             [ Target libido the infection will rise towards. ]
	now loot entry is "Sports Drink";   [ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 100;        [ Percentage chance of dropping loot, from 0-100. ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 3;               [ Number 1-5, approx size/height of infected PC body:  1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]strong[or]tall[or]powerful[at random]";
	now type entry is "lupine";
	now magic entry is false;           [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;       [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is true;   [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;      [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";   [ Row used to designate any special combat features, "default" for standard combat. ]

Section 3 - Sports Drink

Table of Game Objects (continued)
name	desc	weight	object
"Sports Drink"	"A plastic bottle filled with a clear reddish sports drink. The brand symbol is a black wolf's head."	1	sports drink

sports drink is a grab object.
the usedesc of sports drink is "[sportsdrinkuse]".
it is part of the player.
It is temporary.

to say sportsdrinkuse:
	say "You open up the bottle and put it to your mouth. The drink tastes pretty nice, and you practically feel new energy running through your body.";
	decrease thirst of player by 8;
	if thirst of player < 0, now thirst of player is 0;
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Football Wolfman":
			now monster is y;
			break;
	now non-infectious entry is false;
	infect "Football Wolfman";
	now non-infectious entry is true;	


instead of sniffing sports drink:
	say "The drink smells of sugar end electrolytes - perfect to give you some quick energy.";


Section 4 - Jennifer, the Cheerleader

[ thirst states of Jennifer                                          ]
[   0: Starting State - asking for a fuck                            ]
[   1: invisibly pregnant by the player                              ]
[   2: visibly pregnant by the player                                ]
[ hunter states of Jennifer                                          ]
[   0: hasn't had sex with the player                                ]
[   1: had sex with the player                                       ]
[ Jenniferpregnant - timer for the next birth (48h from start)       ]
[ Jenniferwolves   - number of offspring                             ]

[Smells, Description, Conversation and NPC Interaction]

Jennifer is a woman.  Jennifer is in Wolfman Lair.  The hp of Jennifer is normally 0.
The description of Jennifer is "[Jenniferdesc]";
The conversation of Jennifer is { "Grrr!" }.
lastJenniferfucked is a number that varies.  lastJenniferfucked is normally 555.
Jenniferfucked is a number that varies. Jenniferfucked is normally 0.

instead of sniffing Jennifer:
	say "Jennifer has a pretty nice female smell.";

to say Jenniferdesc:
	if (thirst of Jennifer is 0 or thirst of Jennifer is 1):   [starting state]
		say "     Jennifer is a petite and beautiful young woman with a friendly expression and shoulder-length blond hair. With her being naked, you got a full view of her lithe and limber human body, trained from long hours of gymnastics and cheerleading practice. Her pussy is a bit red and swollen and the nipples of her perky little breasts point hard into the air, indicating her arousal at being watched by you. [Jenniferoffspring]";
	if (thirst of Jennifer is 2):                              [visibly pregnant by the player]
		say "     Jennifer is a petite and beautiful young woman with a friendly expression and shoulder-length blond hair. With her being naked, you got a full view of her lithe and limber human body, trained from long hours of gymnastics and cheerleading practice. Her belly is currently bulging outwards quite a bit, showing the result of your recent coupling growing inside her. The nipples of her perky little breasts point hard into the air, indicating her arousal at being watched by you. [Jenniferoffspring]";

instead of conversing the Jennifer:
	if (thirst of Jennifer is 0):       [asking for a fuck]
		say "     [one of]Jennifer strokes a hand over her stomach and fondles her pussy lips. 'I think I'm ready for another wolf pup.'[or]Jennifer strokes a hand over her stomach and fondles her pussy lips. 'I need someone to fuck me soon.'[or]As you walk towards Jennifer to talk to her, she gets pulled into a group by the other cheerleaders. Soon they're doing pretty awe-inspiring naked gymnastics, intoning 'Fairhaven Wolves for the win!' You somehow forget what you wanted to say as you watch them bounce up and down.'[at random]";
	if (thirst of Jennifer is 1):   [invisibly pregnant by the player]
		say "     Jennifer says 'This morning I had a strange craving for fish sticks and gryphon milk. Must be your doing, sure-shot.' and pulls you in for a quick kiss.";
	if (thirst of Jennifer is 2):   [pregnant by the player]
		say "     Jennifer takes your hand and brings it to her bulging belly. You feel your child moving inside her. 'Our little boy is going to be nice and strong.'";

Instead of fucking the Jennifer:
	if (Jenniferfucked is 0):   [first time]
		if(cocks of player > 0):      [males]
			say "     You let your gaze wander over Jennifer's naked form, your manhood hardening as you watch her lithe body. As your looks meet for a moment, you indicate your growing bulge - and from the answering lust-filled twinkle in her eye it looks like you're gonna get some action. Eagerly, you strip off your clothing, revealing your naked [bodytype of player] body to the watching crowd of wolfmen and cheerleaders.";
			say "     Jennifer takes two bouncy steps closer then jumps up on you, wrapping her legs around your hips and pulling your head to hers with both hands for a deep kiss. You inevitably find yourself holding the lightweight young woman by her perky ass, tongue-wrestling with a very enthusiastic partner. While you're still a bit dazed by another deep kiss, she reaches down to grab your cock and holds it upwards so she can sink her pussy on top of it.";
			say "     It's an amazing feeling to be inside Jennifer, rubbing against the inner walls of her pussy with your shaft as she slides up and down on your cock. Years of gymnastics training have left her very flexible and you bet she could take any size of cock - and having well trained muscles to also grip it tightly and make the fuck a memorable one. With Jennifer bouncing up and down on your cock, her perky breasts are directly in front of your face so you catch one with your mouth and start sucking on it, running your tongue over its nipple.";
			say "     Fucking the hot little cheerleader in the midst of her cheering friends and wolfmen offspring, you quickly feel a rising pressure in your balls. As you gasp that you're close to blowing your load, she answers 'Ok, hold my legs tight then.' You grasp her slender thighs and before you can wonder much about what she'll do, Jennifer leans back, back and further back until she's basically doing a handstand, only connected to you through your cock in her now upside-down pussy and your hands holding her legs. She tightens her muscles around your manhood, prompting you to fuck her harder.";
			say "     Soon, you reach the point of no return, gasping loudly as your seed shoots into Jennifer's body. Your forceful spurts and the helping force of gravity make sure all of it ends up deep inside her ready womb. The crowd around you cheers and you can hear moans and lustful growls echo through the warehouse as many of them decide to follow your lead, both in the private section and right around you in the training area. Meanwhile, you slowly go down to your knees, lowering Jennifer to lie on her back with your cock still deep inside her and lean over her to make out.";
			let Jpregchance be a random number from 1 to 20;  	
			if Jpregchance > 10:
				now Jenniferpregnant is 48;      [48h till birth]
				now thirst of Jennifer is 1;     [invisible pregnancy for the first 24h]
		otherwise if (cunts of player > 0):  [females]
			say "     You let your gaze wander over Jennifer's naked form, your pussy getting wet as you watch her lithe body. As your looks meet for a moment, you give her a suggestive wink - and from the answering lust-filled twinkle in her eye it looks like you're gonna get some action. Eagerly, you strip off your clothing, revealing your naked [bodytype of player] body to the watching crowd of wolfmen and cheerleaders.";
			say "     Jennifer takes two bouncy steps closer then jumps up on you, wrapping her legs around your hips and pulling your head to hers with both hands for a deep kiss. You inevitably find yourself holding the lightweight young woman by her perky ass, tongue-wrestling with a very enthusiastic partner. While you're still a bit dazed by another deep kiss, she reaches down to fondle your pussy lips. 'Let's have some girl-time' she says and directs you to carry her over to a nearby bunk bed.";
			say "     There, you lie down side by side, head to hip. Jennifer starts out stroking and fondling your pussy, licking over its folds and rubbing the sensitive clit. You follow suit, imitating her very arousing caresses as best as you can. You don't know exactly how long you two spend pleasing each other, so lost are you in the bliss she fills you with. Only when you reach the peak of your arousal and orgasm, you become aware of your surroundings again and the group of cheerleaders and their wolfmen offspring who cheer you on.";
			say "     As you fall back and lie on the bunk writhing, riding out the orgasm, you feel something soft and furry brush against your leg. It's Septus, grinning up at you, then opening his muzzle to lap at your dripping pussy. He slurps up the juices running out of you and keeps licking you, even sticking his long tongue inside, prolonging your pleasant buzz even more.";
			say "     In the end, you sit back up on the bunk, flanked by both Jennifer and her son, making out with both of them. The onlookers were quite riled up from the show, and you hear moans and lustful growls echo through the warehouse, both in the private section and right around you in the training area.";
		otherwise:       [neuter]
			say "     You let your gaze wander over Jennifer's naked form, arousal bubbling up inside you as you watch her lithe body. As your looks meet for a moment, you give her a suggestive wink - and from the answering lust-filled twinkle in her eye it looks like you're gonna get some action. Eagerly, you strip off your clothing, revealing your naked [bodytype of player] body to the watching crowd of wolfmen and cheerleaders.";
			say "     Jennifer takes two bouncy steps closer then jumps up on you, wrapping her legs around your hips and pulling your head to hers with both hands for a deep kiss. You inevitably find yourself holding the lightweight young woman by her perky ass, tongue-wrestling with a very enthusiastic partner. While you're still a bit dazed by another deep kiss, she reaches down to caress your body, stroking your crotch area especially. She directs you to carry her over to a nearby bunk bed.";
			say "     There, you lie down side by side, head to hip. Jennifer runs her fingers over your skin, creating pleasant tingly feelings inside you while you lick and finger her pussy. You don't know exactly how long you two spend pleasing each other, so lost you become in the bliss she fills you with. Only when you reach the peak of your arousal and an orgasm shakes your body, you become aware of your surroundings again and the group of cheerleaders and their wolfmen offspring who cheer you on.";
			say "     As you fall back and lie on the bunk writhing, riding out the orgasm, you feel something soft and furry brush against your leg. It's Septus, grinning up at you, then opening his muzzle to lap at your crotch. He runs his warm tongue over the area a pussy would be while stroking his strong hands up and down your legs, prolonging your pleasure with his caressing touch.";
			say "     In the end, you sit back up on the bunk, flanked by both Jennifer and her son, making out with both of them. The onlookers were quite riled up from the show, and you hear moans and lustful growls echo through the warehouse, both in the private section and right around you in the training area.";
		now lastJenniferfucked is turns; 
		now Jenniferfucked is 1;
	otherwise if (Jenniferfucked > 0):   [repeat sex]
		if (lastJenniferfucked - turns < 6):
			say "     As you approach Jennifer, she immediately sees the lust-filled twinkle in your eyes. Running her hand over your cheek and pulling you in for a quick kiss on the lips, she says 'I'd love to sweety, but I do have some training of my own to do. Can't afford getting rusty with the moves - and the boys would be disappointed if I didn't train with them.' Giving you an apologetic pat on the arm, she steps over to the other cheerleaders to go though very flexible and... bouncy naked gymnastics moves. You decide to join the wolfmen a while as they watch the girls.";
		otherwise:
			say "     You walk over to Jennifer, who immediately starts smiling as she sees the lust-filled twinkle in your eyes.";
			wait for any key;
			say "[JenniferSexMenu]";
			now lastJenniferfucked is turns; 

to say JenniferSexMenu:
	blank out the whole of table of fucking options;
	if (cocks of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Have her blow your cock";
		now sortorder entry is 1;
		now description entry is "Put the cheerleader's mouth to good use.";
		now toggle entry is JenniferSex rule;
	if (cunts of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Have her lick your pussy";
		now sortorder entry is 2;
		now description entry is "Put the cheerleader's mouth to good use.";
		now toggle entry is JenniferSex rule;
	choose a blank row in table of fucking options;
	now title entry is "Finger her pussy";
	now sortorder entry is 3;
	now description entry is "Finger-fuck Jennifer's pussy to make her cum.";
	now toggle entry is JenniferSex rule;		
	if (cocks of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Fuck her pussy";
		now sortorder entry is 4;
		now description entry is "Fill the cheerleader with your cock.";
		now toggle entry is JenniferSex rule;
	if (cocks of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Take Jennifer's ass";
		now sortorder entry is 5;
		now description entry is "Fill the cheerleader's ass with your cock.";
		now toggle entry is JenniferSex rule;
	sort the table of fucking options in sortorder order;
	change the current menu to table of fucking options;
	carry out the displaying activity;
	clear the screen;

This is the JenniferSex rule:
	choose row Current Menu Selection in table of fucking options;
	let nam be title entry;
	say "[title entry]: [description entry][line break]";
	say "Is this what you want?";
	if player consents:
		decrease menu depth by 1;
		clear the screen;
		if (nam is "Have her blow your cock"):
			say "[JenniferSex1]";
		otherwise if (nam is "Have her lick your pussy"):
			say "[JenniferSex2]";	
		otherwise if (nam is "Finger her pussy"):
			say "[JenniferSex3]";
		otherwise if (nam is "Fuck her pussy"):
			say "[JenniferSex4]";
		otherwise if (nam is "Take Jennifer's ass"):
			say "[JenniferSex5]";
		wait for any key;

to say JenniferSex1:    [cock sucked by Jennifer]
	say "     Quickly stripping off your clothing, you give Jennifer a deep kiss, then push softly on her shoulders. She kneels down in front of you, smiling up at you and licking her lips as she takes hold of your [cockname of player] shaft.";		  
	say "     Holding it up, she starts licking your balls, then runs her tongue up the underside of the shaft, creating a tingly pleasant feeling inside you. As she arrives at the tip, she licks over it, playing with the slit with the tip of her tongue. Then she takes the cockhead into her mouth, softly sucking at it before she returns to lick your balls and shaft.";
	say "     As you're expertly pleasured by Jennifer, cat-calls and whistles start up from the wolfmen around you. You moan loudly as she starts to stroke her hands up and down your cock in between licks and fondles your balls as they build up a heavy load. Pretty soon, you're panting at each of her licks. Anticipating your impending orgasm, she puts her lips around the head of your cock and starts stroking you faster and faster until you quickly reach the point of no return.";
	say "     Your legs get a bit shaky as an incredible feeling floods your body and spurt after spurt of cum blast into Jennifer's waiting mouth. Two of the wolfmen, Eleven and Nineteen step up beside you and grab your shoulders so you don't fall down. After the last jet of cum, Jennifer sucks on your cock a bit more till it gets soft, then smiles up at you and sticks out her tongue to show you your load. Then she closes her mouth and demonstratively swallows it all.";
	say "     Nineteen presents his own hard wolfman cock to Jennifer and she gets to work blowing him too. 'Your mom is the best cocksucker there is. This feels amazing.' he says to Eleven, who grins and replies 'I know.' and strokes himself awaiting his turn.";
			
to say JenniferSex2:    [cunt licked by Jennifer]
	say "     Quickly stripping off your clothing, you give Jennifer a deep kiss, then push softly on her shoulders. She kneels down in front of you, smiling up at you and licking her lips.";		  
	say "     She starts by running her tongue over the sensitive folds of your pussy, then inserts two fingers to rub your insides, creating a tingly pleasant feeling inside you. As a woman, she really knows what she's doing, rubbing just the right spots and softly sucking on your clit. Her expert touch creates a lustful buzz, making you swoon a bit until a wolfman, Number Sixteen steps up and grabs hold of your shoulder so you don't fall over. He grins as you moan deeply when Jennifer pushes her fingers deeper inside you and joins in, stroking your body with a strong hand.";
	say "     As Jennifer and Sixteen caress your body, cat-calls and whistles start up from the wolfmen around you. They cheer your two partners on as your gasps and moans get louder and louder until you finally reach the peak of your arousal and have a messy orgasm, squirting femcum over Jennifer's hand. She stands up and holds out her arm to Sixteen so he can lick up your juices, then steps aside to let him lap more of it up directly from your pussy.";
	
to say JenniferSex3:    [Jennifer's cunt licked/fingered]
	say "     Quickly stripping off your clothing, you give Jennifer a deep kiss, then lead her over to a nearby bench and have her lie down on it with her legs hanging off one end. Kneeling down in front of her, you pull her legs apart, revealing her moist pussy between them.";		  
	say "     You start by running your tongue over the sensitive folds of your pussy, then insert two fingers to rub her insides, making Jennifer pant in lust. A wolfman, Number Sixteen steps up and joins in, fondling her breasts and sucking on her nipples while you're busy down between her legs. He grins at you when you look up for a moment, and together you comfort Jennifer's body with your hands and tongues.";
	say "     Cat-calls and whistles start up from the wolfmen around you as they step closer to watch the tree of you go at it. They cheer you on as Jennifer's gasps and moans get louder and louder until she finally reaches the peak of her arousal and has a messy orgasm, squirting femcum over your hand. You lick some of it off yourself, then hold out your hand to the wolfman to let him taste her too.";

to say JenniferSex4:    [Jennifer's pussy fucked by player]
	if(thirst of Jennifer is 2):    [pregnant version]
		say "     Jennifer strokes her bulging belly and remarks 'This pregnancy makes me horny as fuck. I need a cock inside me.'";
		say "     Not one to disappoint, you quickly slide off your clothes and guide the naked cheerleader to a nearby bench. You kiss her deeply while running a caressing hand over her breasts and belly down to her moist pussy. Sitting on the bench and lying down lengthwise on it, you hold your by now rock-hard erection straight up for her. Jennifer steps up, aligning her folds with the tip of your cock and then slowly starts to sink down on it. It's still amazing to you how tight she can grasp you with a pussy that has taken a lot of large cocks and birthed several wolfmen. Years of gymnastics training really paid off, you'd say.";
		say "     Fucking the pregnant cheerleader in the midst of her cheering friends and wolfmen offspring, you quickly feel a rising pressure in your balls. Grabbing her hips, you pull her down on you harder and faster, making both of you moan in pleasure. Then you reach your climax, spurting blast after blast of cum deep inside her. Jennifer leans down over you her baby bulge pressing against your stomach as she gives you a kiss and says 'Thanks, I really needed that'";
	otherwise:      [regular version]
		say "     Sliding off your clothes and stepping up to Jennifer with a very erect and ready cock makes her squeal in anticipation. The perky little gymnast takes two bouncy steps closer, then just jumps up into your arms, wrapping her legs around your hips. You find yourself holding the lightweight young woman by her firm ass, tongue-wrestling with her as she pulls your head up for a very enthusiastic make-out session. While you're still a bit dazed by another deep kiss, she reaches down to grab your cock and holds it upwards so she can sink her pussy on top of it.";
		say "     It's an amazing feeling to be inside Jennifer, rubbing against the inner walls of her pussy with your shaft as she slides up and down on your cock. Years of gymnastics training have left her very flexible and you bet she could take any size of cock - and having well trained muscles to also grip it tightly and make the fuck a memorable one. With Jennifer bouncing up and down on your cock, her breasts are directly in front of your face so you catch one with your mouth and start sucking on it, running your tongue over its nipple.";
		say "     Fucking the hot little cheerleader in the midst of her cheering friends and wolfmen offspring, you quickly feel a rising pressure in your balls. As you gasp that you're close to blowing your load, she answers 'Ok, hold my legs tight then.' You grasp her slender thighs as Jennifer leans back, back and further back until she's basically doing a handstand, only connected to you through your cock in her now upside-down pussy and your hands holding her legs. She tightens her muscles around your manhood, prompting you to fuck her harder in this new position.";
		say "     Soon, you reach the point of no return, gasping loudly as your seed shoots into Jennifer's body. Your forceful spurts and the helping force of gravity make sure all of it ends up deep inside her ready womb. The crowd around you cheers and you can hear moans and lustful growls echo through the warehouse as many of them decide to follow your lead, both in the private section and right around you in the training area. Meanwhile, you slowly go down to your knees, lowering Jennifer to lie on her back with your cock still deep inside her and lean over her to make out some more.";
		let Jpregchance be a random number from 1 to 20;  	
		if Jpregchance > 10:
			now Jenniferpregnant is 48;
			now thirst of Jennifer is 1;

to say JenniferSex5:    [fucking Jennifer's ass]
	if(thirst of Jennifer is 2):    [pregnant version]
		say "     Jennifer strokes her bulging belly and remarks 'This pregnancy makes me horny as fuck. I need a cock inside me.'";
		say "     Not one to disappoint, you quickly slide off your clothes and guide the naked cheerleader to a nearby bunk. You kiss her deeply while running a caressing hand over her breasts and belly down to her moist pussy. Pushing a finger inside, you get it wet with her juices, then turn her around and push it against her pucker. She yelps at the unexpected entrance into her rear, then starts moaning as you rub her insides. Soon you add a second finger, spreading her a bit more and get her ready and panting for your cock.";
		say "     You have her get on all fours on the bunk, then step up behind her and press your manhood into her rear entrance. With her loosened up by your fingering, you have no problems sinking down into her tight embrace and start pumping in and out. From her reaction and the incredibly tight grip around your penis, you don't think she's had anal sex all that often.";
		say "     Fucking the pregnant cheerleader in the midst of her cheering friends and wolfmen offspring, you quickly feel a rising pressure in your balls. Grabbing her hips, you slam your hips against her ass harder and faster, making both of you moan in pleasure. Then you reach your climax, spurting blast after blast of cum deep inside her ass. When you pull your softening erection out of her a while later, Jennifer gives you a kiss and says 'Thanks, I really needed that'";
	otherwise:      [regular version]
		say "     Sliding off your clothes and stepping up to Jennifer with a very erect and ready cock makes her squeal in anticipation. The perky little gymnast takes two bouncy steps closer, then just jumps up into your arms, wrapping her legs around your hips. You find yourself holding the lightweight young woman by her firm ass, tongue-wrestling with her as she pulls your head up for a very enthusiastic make-out session. Reaching down for your hard cock, you hold it up and start pushing the tip against Jennifer's tight asshole. She looks a bit surprised at first that you don't want to fuck her pussy, then goes with the flow and pushes her ass downwards until your cock pops in.";
		say "     It's an amazing feeling to be inside Jennifer's ass, rubbing against the inner walls with your shaft as she slides up and down on your cock. From her reaction and the incredibly tight grip around your penis, you don't think she's had anal sex all that often. With Jennifer bouncing up and down on your cock, her breasts are directly in front of your face so you catch one with your mouth and start sucking on it, running your tongue over its nipple.";
		say "     Fucking the hot little cheerleader in the midst of her cheering friends and wolfmen offspring, you quickly feel a rising pressure in your balls. As you gasp that you're close to blowing your load, she answers 'Ok, hold my legs tight then.' You grasp her slender thighs as Jennifer leans back, back and further back until she's basically doing a handstand, only connected to you through your cock in her now upside-down ass and your hands holding her legs. With this new position, both of you get different feelings from the fucking, making you moan loudly and prompting you to fuck her harder and harder.";
		say "     Soon, you reach the point of no return, gasping loudly as your seed shoots into Jennifer's body. Your forceful spurts and the helping force of gravity make sure all of it ends up deep inside her body, although your little swimmers of course search in vain for an egg in her ass. The crowd around you cheers and you can hear moans and lustful growls echo through the warehouse as many of them decide to follow your lead, both in the private section and right around you in the training area. Meanwhile, you slowly go down to your knees, lowering Jennifer to lie on her back with your cock still deep inside her and lean over her to make out some more.";

Jenniferpregnant is a number that varies.
Jenniferwolves is a number that varies.

To say Jenniferoffspring:
	if Jenniferwolves is greater than 1:
		say "Among the wolfmen training around her in the lair, you spot several who have a distinct resemblance of your own features. Those are your [Jenniferwolves] sons, already large and strong and working at becoming champions...";
	otherwise if Jenniferwolves is greater than 0:
		say "Among the wolfmen training around her in the lair, you spot one who has a distinct resemblance of your own features. He is the fruit of your coupling with Jennifer, already large and strong and working at becoming a real champion.";

An everyturn rule:
	if Jenniferpregnant is 1:
		say "You have a strange feeling in your body, as if you somehow just know that one of your offspring has entered this world. Maybe you should go check on Jennifer in Wolfman Lair...";
		increase Jenniferwolves by 1;
		increase score by a random number between 5 and 10;
		now Jenniferpregnant is 0;
		now thirst of Jennifer is 0;
	if Jenniferpregnant is 24:
		now thirst of Jennifer is 2;   [visible pregnancy]
	if Jenniferpregnant is greater than 1:
		decrease Jenniferpregnant by 1;

Section 5 - Septus, the wolfman talent scout

[ HP states of Septus                                                ]
[   0: Starting State                                                ]
[   1: Defeated once                                                 ]
[   2: Defeated twice                                                ]
[   3: Defeated three times, told the player about the lair          ]
[   4: Player knows about the lair                                   ]
[   5: Player was at the lair                                        ]

Septus is a man.  Septus is in Wolfman Lair.  The hp of Septus is normally 0.
The description of Septus is "[Septusdesc]";
The conversation of Septus is { "Grrr!" }.
lastSeptusfucked is a number that varies.  lastSeptusfucked is normally 555.

instead of sniffing Septus:
	say "Septus has a strong, musky male smell.";

to say Septusdesc:
	say "     Septus is a tall and well muscled wolfman, named for the large number seven shown in bright red on his chest and back. He stands on two legs and shows an interesting mix of lupine and human form. His legs are fully digigrade and end in large paws while his arms are more human-like and end in strong clawed hands. He gives you a tooth-filled smile as he notices you looking at him, obviously pleased to see you here in the lair.";

instead of conversing the Septus:
	say "     'I'll get something interesting to say soon...' (to be written)";

Instead of fucking the Septus:
	say "     'Thanks, but that'll have to wait until the scenes are actually written...'";

Section 6 - Endings

when play ends:
	if bodyname of player is "Football Wolfman":
		if humanity of player is less than 10:
			say "     As you lose your last shreds of humanity, you feel the need to get more players for your team supplant all other concerns. From that point on, you roam the streets of the city, searching for female breeding partners to father more wolfmen with. When a squad of male soldiers finally come and take you out of the city, there are at least a dozen of your offspring growing in various wombs. Being calm around the all-male group soldiers, they get lulled into leaving their guard down and don't watch you as closely as other infectees. Their mistake - as you're brought into the quarantine facility, you jump the first female nurse you come across, burying your cock inside her and fucking her with deep strokes before anyone can stop you. You just have time to cum and impregnate her before you get tasered by security and taken away to the lockup of the incurably changed.";
			stop the action;
		otherwise:
			say "     When rescue comes, you're poked and prodded a bit in a medical holding facility outside the city, then declared non-infectious and let go. You seek out the other wolfmen and their cheerleader mothers and join the team for good, training hard to become one of the best players and earning the position of Quarterback. Not much later, a crafty businessman announces the creation of the 'Shifted American Football League' - sporting your team in epic battles against (among others) giants, dinosaurs and panther-taurs. Always accompanied by their breathtaking cheerleading team of course.";
			if (cocks of player > 0):
				say "     Your exalted position brings a lot of adoration and fans with it, with women often trying to sneak in to the hotel- or lockerrooms to get to know you better. You reward those that are clever or persistent about it with a ride on your wolfman cock, filling them with your fertile seed and impregnating them with the next generation of players. Thankfully, the libido of the shifted was accounted for when the S-AFL was thought up, so there's actually a child support provision written right into your contract.";
				if (cunts of player > 0):
					say "     Besides the fangirls, you also have a very devoted mass of male followers. You pick up one or two of the more muscular and handsome ones sometimes after a game when your pussy demands to be filled...";			  
			otherwise if (cunts of player > 0):
				say "     Your exalted position brings a lot of adoration with it and you pretty much have a free selection of men from among your devoted fans. You pick up one or two of the more muscular and handsome ones sometimes after a game when your pussy demands to be filled... which leads to two pregnancies over the next few months and you giving birth to two of the next generation of players. Thankfully, the libido of the shifted was accounted for when the S-AFL was thought up, so there's actually a child support provision written right into your contract.";
			if(Jenniferwolves > 1):
				say "     Your sons with Jennifer prove to be excellent players in their own right, making it into the top teams of the new sport. You're very proud every time you see one of them out on the field.";
			otherwise if(Jenniferwolves is 1):
				say "     Your son with Jennifer proves to be an excellent player in his own right, earning a place as a Running Back besides you on the field. The first time he scores a winning touchdown, the whole cheerleading team comes into the lockerroom after the game, riding his cock one after another as a reward. And like father like son, he puts wolf-cubs in quite a few of them.";
	otherwise:
		if humanity of player > 10:
			if (hp of Septus is 5):    [beat the entrance test, was at the lair]
				say "     Even if you didn't become a wolfman yourself and join the team, Septus, Jennifer and the others are still very impressed with you. When the creation of the 'Shifted American Football League' is announced several months after you leave the city, you get invited to the first game, joining the players in the lockerroom and watching the action right from the side of the field. As a honorary member, you get a free lifetime ticket for their games and are always welcome in the player areas and at celebrations.";
				if(Jenniferwolves > 1):
					say "     Your sons with Jennifer prove to be excellent players in their own right, making it into the top teams of the new sport. You're very proud every time you see one of them out on the field.";
				otherwise if(Jenniferwolves is 1):
					say "     Your son with Jennifer proves to be an excellent player in his own right, earning a place as the Quarterback. The first time he scores a winning touchdown, the whole cheerleading team comes into the lockerroom after the game, riding his cock one after another as a reward. And like father like son, he puts wolf-cubs in quite a few of them.";
			
Wolfman ends here.