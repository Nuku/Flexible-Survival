Version 2 of Wolfman by Wahn begins here.
[Version 2 - Team Manager by Stripes]

"Adds a team of football wolfmen to Flexible Survivals Wandering Monsters table, With Impreg chance"


Section 1 - Monster Responses & Infection 

when play begins:
	add { "Football Wolfman" } to infections of guy;
	add { "Football Wolfman" } to infections of furry;
	add { "Football Wolfman" } to infections of Caninelist;

to say Septus wins:
	if hp of Septus is 6:
		if hp of player > 0:
			say "     Unwilling to keep fighting the wolves, you step back and put up your arms, trying to calm them down, but they won't be swayed at this point.  Septus tackles into you, knocking you to the ground and the others follow, all piling themselves atop you with angry growls.  The last of your strength is crushed out of you, leaving you exhausted while the crowd around cheers excitedly.";
			now hp of player is 0;
		otherwise:
			say "     Unable to keep fighting the wolves, you wobble unsteadily only to be tackled to the ground by Septus.  The others quickly follow, all piling themselves atop you with angry growls.  The last of your strength is crushed out of you, leaving you exhausted while the crowd around cheers excitedly.";
	otherwise if hp of player is greater than 0:
		say "     'What's this? You're supposed to show what you can do, wimp!' he sneers and shoves you to the ground. With a dismissive 'Maybe I overestimated you' he turns away and walks off.";
	otherwise:
		say "     He steps back a bit as you collapse to your knees in exhaustion. 'Hm, there's potential in you, but you really have to step up your game. Train a bit, build some muscles and come find me again, ok?'";

To say Septus loses:
	if hp of Septus is 6:
		say "     As your blow knocks Septus to his knees, the other wolfmen still standing step back.  The crowd, having changed to cheering for you gradually over the course of the match, rush forward and boost you up onto their shoulders[if jenniferwolves is 1], your lupine son carrying you on his shoulders[otherwise], your lupine sons being at the center of those carrying you around on their shoulders[end if].";
	otherwise:
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
	choose row monster from the table of random critters;
	if hp of Septus is 100:
		say "     As you explore the ruined city, a tall figure suddenly steps into sight in front of you and gives you a calculating look. It's a well-toned male wolf-morph, standing on two digitigrade legs. His fur is almost completely black, except for a blood red section on his chest that forms the numbers 07.";
		say "     He nods his lupine head at you, saying 'I'm Septus, the talent scout of the Fairhaven Wolves. You don't look half bad - but are you worth joining the best football team of this changed world?' He gives you a toothy grin, then pounces at you.";		
		now hp of Septus is 0;
	otherwise if hp of Septus is 6:
		let debit be 0;
		if hardmode is true and level of player > 12, let debit be level of player - 12;
		now dex entry is 20 + ( ( debit * 2 ) / 5 );
		now hp entry is 95 + ( debit * 5 );
		now monsterhp is 95 + ( debit * 5 );
		now lev entry is 12 + debit;
		now wdam entry is 14 + ( ( debit * 3 ) / 10 );
		now lootchance entry is 0;
		now area entry is "nowhere";
		say "     Septus and several of the nearest wolves move in to fight out, growling angrily and intent on throwing you out for good.  The others clear the area and start cheering and howling in excitement like a rowdy crowd of football fans.  At this point, the wolfmen aren't going to hold back like they have been during the recruitment and training, rushing at you like an offensive line.  You growl back and flex your powerful, lupine body and charge as well, your wild instincts pumping adrenaline into your blood while a small corner of your mind hopes you haven't gotten in over your head.";
		if jenniferwolves is 1:
			say "     At least you do have at least one supporter out among the wolves encircling the fight and awaiting its outcome.  The wolfman son you had with Jennifer is cheering you on from the edge of the area cleared from the match.  A few of the other spectators push and growl at him, eventually a fight breaking out between him and another";
		otherwise if jenniferwolves is 2:
			say "     At least you do have a pair of supporters out among the wolves encircling the fight and awaiting its outcome.  The wolfman sons you had with Jennifer are cheering you on from the edge of the area cleared from the match.  A few of the other spectators push and growl at them, eventually a fight breaking out between them and a couple of others";
		otherwise if jenniferwolves > 2:
			say "     At least you do have a cluster of supporters out among the wolves encircling the fight and awaiting its outcome.  The wolfman sons you had with Jennifer are cheering you on from the edge of the area cleared from the match.  A few of the other spectators push and growl at them, but their numbers keep the others around them from daring to outright fight these opposition fans";
		if jenniferwolves > 0:
			say ".  The sight of [if jenniferwolves > 1]them[otherwise]him[end if] rooting for you boosts your determination to fight and win this battle.";
			if jenniferwolves > 4:
				increase morale of player by 4;
				increase hp of player by 15;
			otherwise:
				increase morale of player by jenniferwolves;
				increase hp of player by jenniferwolves * 3;
	otherwise if hp of Septus is 99:
		say "ERROR-FW99: This creature should no longer be randomly encountered.";
		now area entry is "nowhere";
		now fightoutcome is 19;
		now combat abort is 1;
	otherwise if hp of Septus is 7:
		say "ERROR-FW7: This creature should no longer be randomly encountered.";
		now area entry is "nowhere";
		now fightoutcome is 19;
		now combat abort is 1;
	otherwise:
		say "     Before you is the strong, muscled wolf you've seen before with 07 emblazoned in red right into his black-furred chest.  Septus, the well-toned wolfman talent scout rushes at you, growling [one of]'Let's see what you're made of!'[or]'Let's spar a bit.'[or]'Time for some endurance training.'[at random]";

to say fw_attack:
	if hp of Septus is 6:
		say "[one of]One of the wolfman goes for a tackle, grabbing you with strong hands and pulling you to the ground.  Several others pile on top of you, trying to crush the fight out of you.[or]One of wolves slams into from both sides with a sickening crunch.[or]One of the wolves grabs you from behind and holds you in place while the others ram their muscled shoulders into you like you were a tackling dummy until you manage to break free.[or]Septus moves in and, after a few feints, slams a powerful fist into your gut, no longer holding back.  The great force of the blow proves why he's one of the team's star players.  'Is that all you got?' he growls.[or]You are grabbed from behind, your arm twisted painfully behind your back, allowing another to grab you and headbutt you so hard your ears ring.[or]A trio of the wolves grab you and lift you up into the air before spiking you down onto the concrete floor with a yell of 'Touchdown!'[at random]";
	otherwise:
		say "[one of]The wolfman goes for a tackle, grabbing you with strong hands and pulls you to the ground.[or]He rushes past you, hitting you with a muscled shoulder and driving the breath from your lungs.[or]He grabs you roughly with strong clawed hands. That'll leave some bruises and scratches for sure.[or]He gives you a hard, but not that painful blow to the chest. Looks like he's pulling some of the punch out of it. 'Come on, show me what you're made of!'[or]He scores a hit against your side, growling 'That was easily avoidable - you need more training!'[at random]";


Section A - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Football Wolfman";         [The creature's name as displayed and used in naming descriptions]
	now attack entry is "[fw_attack]"; [Text used when the monster makes an Attack]
	now defeated entry is "[Septus loses]";   [ Text or say command used when Monster is defeated.]
	now victory entry is  "[Septus wins]";    [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "[Wolfmandesc]";            [ Description of the creature when you encounter it. ]
	now face entry is "a canine muzzle sticking out of your wolf-like head. The sharp teeth inside it make your smiles and growls pretty unforgettable for others, and the long tongue should come in handy for french kissing";
	now body entry is "tall and well muscled, standing on two legs and showing an interesting mix of lupine and human form. While your legs are fully digitigrade and end in large paws, your arms are changed but still more human-like and end in strong, now clawed, hands";
	now skin entry is "[one of]black furred[or]densely furred[or]furred[at random]";
	now tail entry is "You have a mid-length fluffy tail growing out of your spine just above the grabbable buns of your ass.";  [ Tail desc., written as a full sentence or left blank for none. ]
	now cock entry is "[one of]lupine[or]wolf[or]knotted[at random]";
	now face change entry is "it stretches out into a large lupine muzzle, filled with a predator's sharp teeth. A shift goes through your worldview when your ears become pointed and move to the top of your head, your vision becomes somehow 'sharper' and new scents assail your now much more sensitive nose"; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "it morphs into a well toned human-wolf hybrid shape. With the crunching noise of breaking bones, your legs become digitigrade - now ending in large paws instead of feet. Your arms meanwhile fill out with muscles, lengthen a bit and also change the form of their joints slightly. Still, they're closer to human than the legs - even with the new sharp claws at the ends of your fingers"; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "dense black fur spreads rapidly over your form. Well, mostly black - your chest shows a large '22' on it in blood-red fur, just like your back"; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "a mid-length lupine tail sprouts from your backside"; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "your member grows thicker as the top of it grows to a sharp point, a large canine knot forming at the base of your new lupine sheath"; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 17;
	now dex entry is 16;
	now sta entry is 15;
	now per entry is 12;
	now int entry is 12;
	now cha entry is 14;
	now sex entry is "Male";		[ Infection will move the player towards this gender.  Current: 'Male' 'Female' 'Both' ]
	now hp entry is 50;			[ The monster's starting hit points. ]
	now lev entry is 6;                 [ Monster level.  (Level x 2) XP for victory.  (Level / 2) XP for losing. ]
	now wdam entry is 10;               [ Monster's average damage when attacking. ]
	now area entry is "Outside";		[ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1;               [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 16;        [ Length infection will make cock grow to if cocks. ]
	now cock width entry is 8;        	[ Cock width, more commonly used for ball size. ]
	now breasts entry is 2;             [ Number of breasts the infection will give a player. ]
	now breast size entry is 0;         [ Size of breasts the infection will try to attain. ]
	now male breast size entry is 0;    [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;               [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 0;         [ Depth of female sex the infection will attempt to give a player. ]
	now cunt width entry is 0;          [ Width of female sex the infection will try to give a player. ]
	now libido entry is 80;             [ Target libido the infection will rise towards. ]
	now loot entry is "sports drink";   [ Dropped item, blank for none.  Case sensitive. ]
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

Section 2 - Sports Drink

Table of Game Objects (continued)
name	desc	weight	object
"sports drink"	"A plastic bottle filled with a clear reddish sports drink. The brand symbol is a black wolf's head."	1	sports drink

sports drink is a grab object.
the usedesc of sports drink is "[sportsdrinkuse]".
it is part of the player.
It is temporary.

to say sportsdrinkuse:
	say "You open up the bottle and put it to your mouth. The drink tastes pretty nice, and you practically feel new energy running through your body.";
	decrease thirst of player by 8;
	if thirst of player < 0, now thirst of player is 0;
	wolfmaninfect;

instead of sniffing sports drink:
	say "The drink smells of sugar end electrolytes - perfect to give you some quick energy.";

to wolfmaninfect:
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Football Wolfman":
			now monster is y;
			break;
	now non-infectious entry is false;
	infect "Football Wolfman";
	now non-infectious entry is true;	


Section 3 - Event and Wolfman Lair

Entrance to the Lair is a situation. The level of Entrance to the Lair is 5.  Entrance to the Lair is resolved.
The sarea of Entrance to the Lair is "Outside";

Instead of resolving a Entrance to the Lair:
	say "     Looking around a bit, you soon find the warehouse Septus mentioned. It's hard to miss, with a large wolf's head painted on the facade. As you come close to the building, two wolfmen guarding the front instantly spot you. One goes inside, the other stays at the entrance door and eyes you warily. Several minutes later, Septus comes out with the other wolfman, visibly perking up as he spots you. 'It's okay, guys. Our visitor is a friend.' He waves you closer, holding open the door to let you in.";
	say "     The warehouse they made into their base is pretty large and surprisingly well equipped. Between improvised walls made from large boxes there are sections filled with exercise equipment, beds, supplies and whatnot. In the main area at least a score of wolfmen is present, most of which are working out - accompanied by three young human women doing stretches and a little naked cheerleading routine in front of them.";
	say "     [line break]";
	if bodyname of player is "Football Wolfman":
		say "     Septus walks up to one of the women and pulls her close, running his strong hands over her body and licks over her nipples before going in for a deep muzzle to mouth kiss. 'Hi mom, I present to you another candidate for the team. As you can see, already in great shape... why don't you show [if cocks of player > 0]him[otherwise]her[end if] the benefits of joining us.' He gives her face a last affectionate lick, then grins at you, stepping to the side.";
	otherwise:
		say "     Septus walks up to one of the women and pulls her close, running his strong hands over her body and licks over her nipples before going in for a deep muzzle to mouth kiss. 'Hi mom, I present to you another candidate for the team. Still a bit undecided... why don't you show [if cocks of player > 0]him[otherwise]her[end if] the benefits of joining us.' He gives her face a last affectionate lick, then grins at you, stepping to the side.";
	say "     Jennifer smiles and nods to you, then says 'Let me tell you a bit about the team. You see, the girls and me were cheerleaders on a way to a game when all the chaos started. The school bus was standing at a red light when suddenly a huge shaggy wolf started clawing open the door. The driver tried to get away in a panic, but in the end crashed the bus. And then the wolf was in and started ripping off her clothes. We couldn't do anything but watch as he mounted her. When he finished inside her, he growled and took another girl, filling us one by one with his seed like a totally insatiable animal.'";
	say "     'I was so afraid having that huge beast on top of me - but all that changed when he came and filled my womb with his load. I felt the moment his sperm found my egg.' she lowers a hand to her stomach, then lower and strokes her pussy lips. 'From that moment, I knew it was fate that brought a wolf - our team symbol - to us. We were to be the mothers of a new team, one born to play!'";
	say "     [line break]";
	say "     She steps over to Septus, running a hand through his warm chest-fur. What a strange new world, with her son standing taller than she is and looking roughly the same age. 'Our handsome boys are born winners. And we need more players...' She fondles the wolfman's balls for a moment, giving an aroused sigh, then turns back to you. 'But don't let it discourage you that you weren't born as one of them. The team is open to anyone who proves he can play like a wolf.'";
	now hp of Septus is 5;
	now Wolfman Lair is known;
	now Entrance to the Lair is resolved;
	move player to Wolfman Lair;

	
Wolfman Lair is a room. It is fasttravel. It is private.
The description of Wolfman Lair is "[lairdesc]";

to say lairdesc:
	say "     The warehouse they made into their base is pretty large and surprisingly well equipped. Between improvised walls made from large boxes there are sections filled with exercise equipment, beds, supplies and whatnot. In the main area usually about a score of wolfmen is present, most of which are busy working out - accompanied by young human women cheering them on and doing some suggestive stretches in front of them - in the nude. When one of the wolves takes a break, they often get accompanied by one - or more - of the women to the adjoining sections. In which case lustful moans and howls soon follow[if hp of Septus is 7].  You can't help but smile as you look over at the great, growing team you've got[end if].";

instead of sniffing Wolfman Lair:
	say "A bit of sweat hangs in the air, combined with the pheromone-laden musk of a lot of wolfmen. It makes you feel a bit stronger and strangely competitive...";


Section 4 - Jennifer, the Cheerleader

[ thirst states of Jennifer                                          ]
[   0: Starting State - asking for a fuck                            ]
[   1: invisibly pregnant by the player                              ]
[   2: visibly pregnant by the player                                ]
[ Jenniferfucked                                                     ]
[   0: hasn't had sex with the player                                ]
[   1: had sex with the player                                       ]
[ Jenniferpregnant - timer for the next birth (48h from start)       ]
[ Jenniferwolves   - number of offspring                             ]
[ lust of Jennifer - number of M/F w/Jennifer                        ]

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
		say "     Jennifer is a petite and beautiful young woman with a friendly expression and shoulder-length blond hair. With her being naked, you got a full view of her lithe and limber human body, trained from long hours of gymnastics and cheerleading practice[if hp of Septus is 7]. As team leader, she's your personal cheerleader breeder, a priviledge you only share with Septus.  You will extend that to other players who show real heart in the game, wanting to ensure that she breeds only the strongest and best players for the team[end if]. Her pussy is a bit red and swollen and the nipples of her perky little breasts point hard into the air, indicating her arousal at being watched by you. [Jenniferoffspring]";
	if (thirst of Jennifer is 2):                              [visibly pregnant by the player]
		say "     Jennifer is a petite and beautiful young woman with a friendly expression and shoulder-length blond hair. With her being naked, you got a full view of her lithe and limber human body, trained from long hours of gymnastics and cheerleading practice[if hp of Septus is 7]. As team leader, she's your personal cheerleader breeder, a priviledge you only share with Septus.  You will extend that to other players who show real heart in the game, wanting to ensure that she breeds only the strongest and best players for the team[end if]. Her belly is currently bulging outwards quite a bit, showing the result of your recent coupling growing inside her. The nipples of her perky little breasts point hard into the air, indicating her arousal at being watched by you. [Jenniferoffspring]";

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
			say "     [line break]";
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
			if hp of Septus < 7 and lust of Jennifer > 0 and the remainder after dividing lust of Jennifer by 3 is 0 and cocks of player > 0:
				say "     Heading off to grab Jennifer for some fun, you spot her finishing up with [one of]a pair of players[or]one of the other players[or]another wolfman[or]a wolfman's cock in her mouth[or]sucking off a pair of wolves[at random].  Being horny, having to wait and watch is a little frustrating.  You can't help but think it'd be nice to not have to share her around with the whole team and wonder how you might be able to manage that.  This is only added to as she comes over to you still sticky with cum from the encounter.  Not noticing the possessive look you're giving her, she smiles and heads over to you, eager as always for more.";
			otherwise:
				say "     You walk over to Jennifer, who immediately starts smiling as she sees the lust-filled twinkle in your eyes[if hp of Septus is 7].  'Ready to take your priviledge as team manager,' she says with a grin, stretching her naked body in a sexy display of the lead cheerleader's lovely form[end if].";
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
	if (cocks of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Share Jennifer with Septus";
		now sortorder entry is 6;
		now description entry is "Have a hot threesome with them.";
		now toggle entry is JenniferSex rule;
	if cocks of player > 0 and ( lust of Jennifer > 2 or Jenniferwolves > 1 ) and bodyname of player is "Football Wolfman" and hp of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Suggest you become team manager";
		now sortorder entry is 100;
		now description entry is "Vie to be the team's manager - with appropriate perks";
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
		otherwise if (nam is "Share Jennifer with Septus"):
			say "[JenniferSex6]";
		otherwise if (nam is "Suggest you become team manager"):
			say "[WolfTeamManager]";
		wait for any key;

to say JenniferSex1:    [cock sucked by Jennifer]
	say "     Quickly stripping off your clothing, you give Jennifer a deep kiss, then push softly on her shoulders. She kneels down in front of you, smiling up at you and licking her lips as she takes hold of your [cockname of player] shaft.";
	say "     Holding it up, she starts licking your balls, then runs her tongue up the underside of the shaft, creating a tingly pleasant feeling inside you. As she arrives at the tip, she licks over it, playing with the slit with the tip of her tongue. Then she takes the cockhead into her mouth, softly sucking at it before she returns to lick your balls and shaft.";
	say "     As you're expertly pleasured by Jennifer, cat-calls and whistles start up from the wolfmen around you. You moan loudly as she starts to stroke her hands up and down your cock in between licks and fondles your balls as they build up a heavy load. Pretty soon, you're panting at each of her licks. Anticipating your impending orgasm, she puts her lips around the head of your cock and starts stroking you faster and faster until you quickly reach the point of no return.";
	say "     Your legs get a bit shaky as an incredible feeling floods your body and spurt after spurt of cum blast into Jennifer's waiting mouth. Two of the wolfmen, Eleven and Nineteen step up beside you and grab your shoulders so you don't fall down. After the last jet of cum, Jennifer sucks on your cock a bit more till it gets soft, then smiles up at you and sticks out her tongue to show you your load. Then she closes her mouth and demonstratively swallows it all.";
	say "     Nineteen presents his own hard wolfman cock to Jennifer and she gets to work blowing him too. 'Your mom is the best cocksucker there is. This feels amazing.' he says to Eleven, who grins and replies 'I know.' and strokes himself awaiting his turn.";
	increase lust of Jennifer by 1;

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
		if Jpregchance > 10 and thirst of Jennifer is 0:
			now Jenniferpregnant is 48;
			now thirst of Jennifer is 1;
	increase lust of Jennifer by 1;

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
	increase lust of Jennifer by 1;

to say JenniferSex6:    [sharing Jennifer with Septus]
	say "     Pulling Septus aside, you ask him if he wants to do a threesome with Jennifer and you, and he eagerly agrees. He obviously can't wait to get it on with the cheerleader and while you take off your clothing, his shaft rapidly slides out of its sheath and hardens. 'Come on buddy' he says, putting his arm around your shoulders. 'Between me and you' - he reaches down with that and gives your own hardening shaft a few jerks - 'it'll be something she won't soon forget.'";
	if(thirst of Jennifer is 2):    [pregnant version]
		say "     The two of you walk over to Jennifer together, your cocks getting just a bit harder as you watch her naked body with its bulging pregnant belly from close up. Seeing the erections pointing at her, she smiles and remarks 'I see you boys want to have some fun. Good... this pregnancy makes me horny as fuck. I need a cock - or two - inside me.'";
		say "     [line break]";
		say "     Taking one cock in each hand, she guides you over to a nearby bunk and pushes Septus to sit on it, then takes a wide stance with her legs and bends over to suck him. You're left standing behind her, your manhood pointing straight at the moist and swollen pussy of the young human woman. Not able to resist entering that inviting cave, you bring your hips forward, cock sliding in between her pussy lips. Jennifer's moans are a bit muffled because of the wolfman cock in her mouth, but she clearly enjoys being filled by your [cock of player] shaft. While you thrust in and out of her body from behind, Septus has his hands on her head, pumping it up and down on his wolfman cock and panting in lust.";
		say "     Fucking and getting sucked, the wolfman and you grin at each other, thoroughly enoying Jennifer's body. 'Great fuck, isn't she? But you should try her mouth too - come on, let's switch.' A bit reluctantly, you pull out of the hot cheerleader's body and take Septus place on the bunk. She immediately grabs hold of your manhood, running her tongue up over its underside before putting the tip in her mouth and sliding her lips down over the shaft. Man, she really knows what she's doing, you think to yourself as you moan loudly.";
		say "     Giving you a knowing wink, Septus then rubs his lupine cock up against Jennifer's ass and bends over her, licking her back and reaching around to fondle her breasts and belly. He pulls back after that, aims the pointy tip of his lupine cock at her opening and slams forward in one mighty thrust. Something more animalistic in him takes hold as the wolfman mounts the cheerleader, holding onto her tightly and relentlessly rutting with her. With Jennifer still bobbing up and down on your cock, you watch the wild coupling of the muscular male and slender young woman. Before much longer, a deep growl rolls up in Septus throat, followed by a loud wolf's howl as his body shudders, hips still thrusting against Jennifer as he fills her with his seed.";
		say "     [line break]";
		say "     After getting his breath back, reason returns to Septus eyes and he looks down at his crotch pressed against Jennifer's backside, then over to you. 'Oh, sorry about that - I knotted inside. It's just... sometimes I can't hold back, not with Jennifer. No wonder father managed to knock up a whole busload of girls in one go if this is what he felt all the time.'";
		say "     [line break]";
		say "     With your balls aching to release their load, you don't think you can wait till Septus knot goes down. So what now? Do you want to give Jennifer a tasty snack (Y), or fuck Septus ass instead (N)?";
		if player consents:
			say "     Eager to get off, you take hold of the cheerleaders head and face-fuck her, pumping your manmeat in and out between her warm lips and into her throat. Soon, you feel the urgent need to cum rise inside you and pull back a bit until just the tip of your cock is inside her mouth. Spurt after spurt of your cum shoot onto Jennifer's tongue and after you're done, she sticks it out to show it to you, then swallows your seed demonstratively.";
		otherwise:
			say "     Standing up, you walk around Septus and Jennifer, your eyes roaming over their somewhat sweaty bodies. Pulling the wolfman's tail up, you run your hands through the soft fur on his behind, groping and squeezing his bunds before pulling them apart to have a look at his pucker. As you stroke a finger over it and poke a finger in, he gasps 'Please be gentle, we usually dont't fuck each other.' Reaching around to stroke his chest, you whisper in his ear 'Of course' then aim your cock and push forward, sinking your hard shaft into his hole. It's amazingly tight an warm, gripping you like a vice and allowing only slow progress deeper inside. It takes a moment for Septus to get used to your intruding member, but soon he's silently moaning at the feelings it brings him.";
			say "     Already pretty close to blowing your load through Jennifer's oral attention, it doesn't take long at all until Septus tight hole gives you the rest. With a lustful groan, you grind your crotch against his ass, pushing your member deep inside him as it starts shooting long strands of your seed. After you finish coming, you stay inside him for a while longer, then pull out and keep the two of them company until they can disengage from each other.";
	otherwise:      [regular version]
		say "     The two of you walk over to Jennifer together, your cocks getting just a bit harder as you watch her naked body from close up. Seeing the erections pointing at her, she smiles and remarks 'I see you boys want to have some fun. Good... I'm horny as fuck. I need a cock - or two - inside me.'";
		say "     [line break]";
		say "     Taking one cock in each hand, she guides you over to a nearby bunk and pushes Septus to sit on it, then takes a wide stance with her legs and bends over to suck him. You're left standing behind her, your manhood pointing straight at the moist and swollen pussy of the young human woman. Not able to resist entering that inviting cave, you bring your hips forward, cock sliding in between her pussy lips. Jennifer's moans are a bit muffled because of the wolfman cock in her mouth, but she clearly enjoys being filled by your [cock of player] shaft. While you thrust in and out of her body from behind, Septus has his hands on her head, pumping it up and down on his wolfman cock and panting in lust.";
		say "     Fucking and getting sucked, the wolfman and you grin at each other, thoroughly enoying Jennifer's body. 'Great fuck, isn't she? But you should try her mouth too - come on, let's switch.' A bit reluctantly, you pull out of the hot cheerleader's body and take Septus place on the bunk. She immediately grabs hold of your manhood, running her tongue up over its underside before putting the tip in her mouth and sliding her lips down over the shaft. Man, she really knows what she's doing, you think to yourself as you moan loudly.";
		say "     Giving you a knowing wink, Septus then rubs his lupine cock up against Jennifer's ass and bends over her, licking her back and reaching around to fondle her breasts. He pulls back after that, aims the pointy tip of his lupine cock at her opening and slams forward in one mighty thrust. Something more animalistic in him takes hold as the wolfman mounts the cheerleader, holding onto her tightly and relentlessly rutting with her. With Jennifer still bobbing up and down on your cock, you watch the wild coupling of the muscular male and slender young woman. Before much longer, a deep growl rolls up in Septus throat, followed by a loud wolf's howl as his body shudders, hips still thrusting against Jennifer as he fills her with his seed.";
		say "     [line break]";
		say "     After getting his breath back, reason returns to Septus eyes and he looks down at his crotch pressed against Jennifer's backside, then over to you. 'Oh, sorry about that - I knotted inside. It's just... sometimes I can't hold back, not with Jennifer. No wonder father managed to knock up a whole busload of girls in one go if this is what he felt all the time.'";
		say "     [line break]";
		say "     With your balls aching to release their load, you don't think you can wait till Septus knot goes down. So what now? Do you want to give Jennifer a tasty snack (Y), or fuck Septus ass instead (N)?";
		if player consents:
			say "     Eager to get off, you take hold of the cheerleaders head and face-fuck her, pumping your manmeat in and out between her warm lips and into her throat. Soon, you feel the urgent need to cum rise inside you and pull back a bit until just the tip of your cock is inside her mouth. Spurt after spurt of your cum shoot onto Jennifer's tongue and after you're done, she sticks it out to show it to you, then swallows your seed demonstratively.";
			increase lust of Jennifer by 1;
		otherwise:
			say "     Standing up, you walk around Septus and Jennifer, your eyes roaming over their somewhat sweaty bodies. Pulling the wolfman's tail up, you run your hands through the soft fur on his behind, groping and squeezing his bunds before pulling them apart to have a look at his pucker. As you stroke a finger over it and poke a finger in, he gasps 'Please be gentle, we usually dont't fuck each other.' Reaching around to stroke his chest, you whisper in his ear 'Of course' then aim your cock and push forward, sinking your hard shaft into his hole. It's amazingly tight an warm, gripping you like a vice and allowing only slow progress deeper inside. It takes a moment for Septus to get used to your intruding member, but soon he's silently moaning at the feelings it brings him.";
			say "     Already pretty close to blowing your load through Jennifer's oral attention, it doesn't take long at all until Septus tight hole gives you the rest. With a lustful groan, you grind your crotch against his ass, pushing your member deep inside him as it starts shooting long strands of your seed. After you finish coming, you stay inside him for a while longer, then pull out and keep the two of them company until they can disengage from each other.";
			increase lust of Jennifer by 1;

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
[ 100: Starting State                                                ]
[   0: After the first meeting                                       ]
[   1: Defeated once                                                 ]
[   2: Defeated twice                                                ]
[   3: Defeated three times, told the player about the lair          ]
[   4: Player knows about the lair                                   ]
[   5: Player was at the lair                                        ]
[   6: Player vying to be team manager                               ]
[   7: Team manager                                                  ]
[  99: Kicked off the team                                           ]


Septus is a man.  Septus is in Wolfman Lair.  The hp of Septus is normally 100.
The description of Septus is "[Septusdesc]";
The conversation of Septus is { "Grrr!" }.
lastSeptusfucked is a number that varies.  lastSeptusfucked is normally 555.

instead of sniffing Septus:
	say "Septus has a strong, musky male smell.";

to say Septusdesc:
	say "     Septus is a tall and well muscled wolfman, named for the large numbers zero-seven shown in bright red on his chest and back. He stands on two legs and shows an interesting mix of lupine and human form. His legs are fully digitigrade and end in large paws while his arms are more human-like and end in strong clawed hands[if hp of Septus is 7]. He's taking to his new role at the team captain quite well, working the others through drills and making sure everyone gets their fair share of rec time with the cheerleaders. And he doesn't slack off either, staying in the thick of it with the rest of the players and working himself as hard, if not harder, than them[end if]. He gives you a tooth-filled smile as he notices you looking at him, obviously pleased to see you here in the lair. You give him a nod and a smile back, letting him know to keep up the great work.";

instead of conversing Septus:
	if hp of Septus < 7:
		say "     [one of]Septus moves a hand down to his crotch and fondles his balls. 'Got to keep these bad boys drained - having blue balls on the field isn't a good idea.'[or]Septus moves a hand down to his crotch and fondles his balls. 'I can't wait till it's my turn with Jennifer again. Mom's just the best.'[or]As you walk towards Septus to talk to him, another wolfman suddenly jumps him from behind and they start wrestling on the ground. You watch them go at it in their drop of the hat training match, totally forgetting that you wanted to talk to Septus.[or]Septus says 'Mom told me that other team's players don't usually suck each other off. Strange, hm? It's such a good teambuilding excercise, and tastes great too.'[or]As you walk up towards Septus from behind to talk to him, you suddenly realize that he isn't standing there alone after all. On his knees in front of Septus is another wolfman, busy blowing him off. You watch them go at it until Septus blows his load, then kneels to return the favor, totally forgetting that you wanted to talk to Septus.[at random]";
	otherwise if hp of Septus is 7:
		say "     [one of]Septus moves a hand down to his crotch and fondles his balls. 'I think I'll be taking another go with Jennifer soon, if you're not using her. Mom's just the best.'[or]Septus says 'Mom told me that other team's players don't usually suck each other off. Strange, hm? It's such a good team-building excercise, and tastes great too.'[or]As you walk up towards Septus from behind to talk to him, you suddenly realize that he isn't standing there alone after all. On his knees in front of Septus is another wolfman, busy blowing his captain. You watch them go at it until Septus blows his load and, always being fair, kneels to return the favor.  This show has you forget that you wanted to talk to Septus.[or]'I've been running the team through exercises and things are looking really good.  Things are really coming together,' the team captain tells you.[or]Septus says 'I've got my eye on some players for the [if a random chance of 1 in 2 succeeds]offensive lineup[otherwise]defensive lineup[end if].  I'll point them out to you once they're back for a well-earned [']cheerleading session['],' he adds with a grin.[or]'We've got a lot of fine players with a lot of heart and a lot of cum.  We'll totally make the rest of the teams out there our bitches - literally.'  You both grin and laugh, really looking forward to it.[or]'With that big celebration, our numbers have gone up nicely.  I won't need to go out recruiting anymore and can focus on training with the team.'[or]As you're heading towards Septus, one of the players tosses him the pigskin and a quick game of fuck football breaks out with about a dozen players.  It's much like touch football, but with a quick suck or fuck following a successful tackle.  Watching your players fooling around while a group of naked cheerleaders cheer them on, you soon forget having wanted to talk with your team captain and instead enjoy the sex show.[at random]";

Instead of fucking Septus:
	[puts Wolfman as lead monster in case of impregnation]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Wolfman":
			now monster is y;
			break;	
	if(lastfuck of Septus - turns < 5):
		say "     Septus says 'I'm still worn out from last time. Give me a moment to catch my breath...'";
	otherwise:
		if bodyname of player is "Football Wolfman":
			say "     The wolfman gives your furry body an appreciative look as you walk up to him. A smile crosses his muzzle as he asks 'Hey, [if cunts of player > 0]sister[otherwise]brother[end if]. What's up.'"; 
		otherwise:
			say "     The wolfman gives your [body of player] body a long look as you walk up to him. A smile crosses his muzzle as he asks 'Hey, [if cunts of player > 0]girl[otherwise]man[end if]. What's up.'"; 
		wait for any key;
		say "  [line break]";
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		choose a blank row in table of fucking options;
		now title entry is "Suck Septus cock";
		now sortorder entry is 1;
		now description entry is "Give him a blow-job.";
		if (cocks of player > 0):
			choose a blank row in table of fucking options;
			now title entry is "Have him suck your cock";
			now sortorder entry is 2;
			now description entry is "Get a blow-job.";
		if (cunts of player > 0):
			choose a blank row in table of fucking options;
			now title entry is "Let Septus fuck your pussy";
			now sortorder entry is 3;
			now description entry is "Let the wolfman breed you.";
		choose a blank row in table of fucking options;
		now title entry is "Let Septus fuck your ass";
		now sortorder entry is 4;
		now description entry is "Let the wolfman fill your ass with his seed.";
		if (cocks of player > 0):
			choose a blank row in table of fucking options;
			now title entry is "Take Septus ass";
			now sortorder entry is 5;
			now description entry is "Fill the wolfman's ass with your cock.";
		sort the table of fucking options in sortorder order;
		while sextablerun is 0:
			repeat with y running from 1 to number of filled rows in table of fucking options:
				choose row y from the table of fucking options;
				say "[link][y] - [title entry][as][y][end link][line break]";
			say "Pick the corresponding number> [run paragraph on]";
			get a number;
			if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
				now current menu selection is calcnumber;
				choose row calcnumber in table of fucking options;
				say "[title entry]: [description entry][line break]";
				say "Is this what you want?";
				if player consents:
					let nam be title entry;
					clear the screen and hyperlink list;
					now sextablerun is 1;
					if nam is "Suck Septus cock":
						say "[SeptusSex1]";
					otherwise if (nam is "Have him suck your cock"):
						say "[SeptusSex2]";
					otherwise if (nam is "Let Septus fuck your pussy"):
						say "[SeptusSex3]";
					otherwise if (nam is "Let Septus fuck your ass"):
						say "[SeptusSex4]";
					otherwise if (nam is "Take Septus ass"):
						say "[SeptusSex5]";
		wolfmaninfect;
		now lastfuck of Septus is turns;


to say SeptusSex1:		[player sucks him]
	say "     Stepping up close to the powerful wolfman, you pull his head towards you and meet his muzzle in a deep kiss. While you're still doing some tongue-wrestling with him, one of your hands runs down his ripped body to his crotch. Taking hold of the two furry orbs you soon encounter, you fondle them with your fingers, making Septus moan and pant in growing arousal. Before much longer, his cock pushes out of his sheath as it grows hard and comes to rest hotly against your arm.";
	say "     [line break]";
	say "     Giving the horny wolf one last kiss on the muzzle, you sink down on your knees in front of him. Being so close to this virile male, breathing in his musky scent, you can hardly resist and quickly take hold of his canine manhood, running your tongue over its underside. As you reach the pointy tip, you give it a few licks, then push your lips over it and start sucking Septus off. Bobbing up and down on his hard shaft, you take more and more of him in until you're finally down to is thick knot, with the rest of the long cock in your throat.";
	say "     You had him moaning loudly before, but now taking hold of his knot and running your tongue along the edge of it, you really get Septus worked up. He grabs your head with both hands, holding you tightly as he thrusts forward with his hips, fucking your face. Totally focused on sucking his long cock, you had hardly noticed the cheering crowd that formed around the two of you - until one of the other wolves steps up next to Septus, that is. It's the wolfman with the number nine on his chest - already rock hard from watching your little show - and he holds moves into position holding out his canine erection, intent on joining the fun.";
	say "     Not to leave a member of the team hanging, you grab his cock in one hand, stroking up and down on the hard shaft. Then you pull off Septus manhood, sliding your lips over the new cock and bob up and down on it. Jerking one and blowing off the other, you switch back and forth between both wolfmen, building up their arousal. Before too much longer, as you have Septus shaft in your mouth, he moans 'I'm soo close...', grabs your head and pulls it against his groin. Accompanied by a loud lust-filled howl, Septus cock starts twitching as it shoots spurt after spurt of warm wolfman cum directly into your stomach. Almost at the same time, number nine joins in for the howl and long strings of cum pulse from his cock, landing all over your face and chest.";
	say "     [line break]";
	say "     After they stop coming, you stand up and take a look around. Judging from the grinning faces and quite a few spots of cum on the ground, it seems like everyone in the crowd thoroughly enjoyed watching the three of you. One of the human cheerleaders gives you a suggestive wink, then grabs a towel out of a nearby box and comes to help you clean up.";

to say SeptusSex2:		[he sucks the player]
	say "     Stepping up close to the powerful wolfman, you pull his head towards you and meet his muzzle in a deep kiss. While you're doing some tongue-wrestling with him, arms around his body in a tight embrace, your already half hard cock pokes against his furred body. 'Oh' Septus says between kisses and reaches down to feel your manhood through your clothes. 'Feels like you need some relief. Want me to take care of that for you?' he asks as he pushes his hand into your pants and takes hold of your shaft. Answered by a lustful moan from you, he grins and gives you another quick kiss on the lips before sinking to his knees in front of you.";
	say "     [line break]";
	say "     Quickly undoing the fastenings of your pants, Septus frees your by now fully hard erection to sway in the air in front of his face. He grabs hold of it, holding it up as he slowly runs his long tongue over its underside, then strokes his hand up and down along the shaft as he licks your balls. He's got a pretty long and talented tongue and makes you gasp and moan from his oral attentions. Pulling off your member for a moment he asks 'Do you like it?' then makes your 'Yessss.....' lead over into a long moan as he goes down on your cock this time.";
	say "     Your maleness vanishes into Septus long muzzle, carefully held away from his sharp teeth and caressed by his tongue. Bobbing up and down on it, he puts his hands to your hips to hold on and gives you a terrific blowjob. Before too much longer, you feel the need to cum rise in your balls and call out 'I'm close. Almost there...' Septus just keeps going, running his tongue over the sensitive skin of your cock until you reach the point of no return. Moaning loudly and getting a bit weak in the knees you orgasm, burst after burst of your seed shooting into Septus mouth.";
	say "     [line break]";
	say "     When you finish shooting, your handsome wolfman keeps your cock in his mouth for a moment longer, softly sucking on it to get all of your cum. Then he smiles up at you and swallows it all before standing up and giving you a kiss.";

to say SeptusSex3:		[player pussy fucked]
	say "     Stepping up close to the powerful wolfman, you pull his head towards you and meet his muzzle in a deep kiss. While you're still doing some tongue-wrestling with him, one of your hands runs down his ripped body to his crotch. Taking hold of the two furry orbs you soon encounter, you fondle them with your fingers, making Septus moan and pant in growing arousal. Before much longer, his cock pushes out of his sheath as it grows hard and comes to rest hotly against your arm.";
	say "     [line break]";
	say "     Giving the horny wolf one last kiss on the muzzle, you take hold of his hard canine manhood and lead him by it to a nearby free bunk, accompanied by wolf-whistles and interested looks from the closer teammates. Quickly removing your clothes, you press your naked body against Septus for another deep kiss and moan 'I need you inside me' to him. Then you lie down on the bunk and spread your legs a bit, giving the wolfman a view of your moist and ready pussy.";
	say "     A lustful growl in his throat, Septus pounces you, his furry body touching yours along its whole length as he sinks his manhood straight into your pussy and wraps his arms around you. Holding you tight against his body, he thrusts deep until he bottoms out with a satisfied growl. After giving you a hungry kiss, he moans 'Hope you like it hard...' as he pulls back almost all the way, then thrusts in again '...and deep. Our mating urges are pretty strong.'";
	say "     Not wasting another breath with talking, Septus starts pounding his hips against yours, his canine cock rubbing sensitive spots all along your inner passage. He goes at it in full throttle, never wavering a moment with his thrusts, but still shows some nice technique, shifting the angle of his entrance every few times. There's definitely something to be said about combining a wolf's tenacity for breeding with human intelligence.";
	say "     [line break]";
	say "     Given the wild ride Septus gives you, it's no big wonder that you soon get pretty close to orgasm. Reaching down to grab his furry ass, you squeeze his firm cheeks and pull his hips against you even harder with each of his thrusts. Then you feel it - the soft bulge at the base of Septus cock, his knot - swelling and expanding inside your pussy to tie your bodies together. The delicious feeling of fullness is the last straw to drive you over the edge, making you moan and hold on tight to your handsome wolfman as you ride out an amazing orgasm. At the same time, Septus gives a long satisfied howl, accompanying his cock spurting a massive load of wolfman seed directly into your womb. [fimpregchance]";
	say "     After Septus cock stops pulsing with more shots of cum and he gets his breath back, he kisses you and rolls the both of you over to lie on your sides. Still held together by his knot trying to ensure impregnation, he stokes your face softly and says 'You're an amazing lay, baby. Let's do this again - often...'";

to say SeptusSex4:		[player ass fucked]
	say "     Stepping up close to the powerful wolfman, you pull his head towards you and meet his muzzle in a deep kiss. While you're still doing some tongue-wrestling with him, one of your hands runs down his ripped body to his crotch. Taking hold of the two furry orbs you soon encounter, you fondle them with your fingers, making Septus moan and pant in growing arousal. Before much longer, his cock pushes out of his sheath as it grows hard and comes to rest hotly against your arm.";
	say "     [line break]";
	say "     Giving the horny wolf one last kiss on the muzzle, you take hold of his hard canine manhood and lead him by it to a nearby free bunk, accompanied by wolf-whistles and interested looks from the closer teammates. Quickly removing your clothes, you press your naked body against Septus for another deep kiss and moan 'I need you inside me' to him. Then you lie down on the bunk, spreading and raising your legs to giving the wolfman a view of your asshole, waiting to be filled.";
	say "     A lustful growl in his throat, Septus pounces you, bringing his muzzle up against your pucker. He licks over your exposed opening, then sticks his tongue inside to make it good and wet. Then Septus restraint wears thin, and he quickly moves up to mount you, his furry body touching yours along its whole length as he sinks his manhood straight into your ready hole and wraps his arms around you. Holding you tight against his body, he thrusts deep until he bottoms out with a satisfied growl. After giving you a hungry kiss, he moans 'Hope you like it hard...' as he pulls back almost all the way, then thrusts in again '...and deep. Our mating urges are pretty strong.'";
	say "     Not wasting another breath with talking, Septus starts pounding his hips against yours, his canine cock rubbing sensitive spots all along your inner passage. He goes at it in full throttle, never wavering a moment with his thrusts, but still shows some nice technique, shifting the angle of his entrance every few times. There's definitely something to be said about combining a wolf's tenacity for breeding with human intelligence.";
	say "     [line break]";
	say "     Given the wild ride Septus gives you, it's no big wonder that you soon get pretty close to orgasm. Reaching down to grab his furry ass, you squeeze his firm cheeks and pull his hips against you even harder with each of his thrusts. Then you feel it - the soft bulge at the base of Septus cock, his knot - swelling and expanding inside your asshole to tie your bodies together. The delicious feeling of fullness is the last straw to drive you over the edge, making you moan and hold on tight to your handsome wolfman as you ride out an amazing orgasm.[if cocks of player > 0]Spurt after spurt of your cum arc out of your hard cock, splattering your chest with white streaks.[end if] At the same time, Septus gives a long satisfied howl, accompanying his cock spurting a massive load of wolfman seed deep into your hole. [mimpregchance]";
	say "     After Septus cock stops pulsing with more shots of cum and he gets his breath back, he kisses you and rolls the both of you over to lie on your sides. Still held together by his knot trying to ensure impregnation, he stokes your face softly and says 'You're an amazing lay, baby. Let's do this again - often...'";

to say SeptusSex5:		[Septus ass fucked]
	say "     Stepping up close to the powerful wolfman, you pull his head towards you and meet his muzzle in a deep kiss. While you're still doing some tongue-wrestling with him, one of your hands runs down his ripped body to his crotch. Taking hold of the two furry orbs you soon encounter, you fondle them with your fingers, making Septus moan and pant in growing arousal. Before much longer, his cock pushes out of his sheath as it grows hard and comes to rest hotly against your arm.";
	say "     [line break]";
	say "     Giving the horny wolf one last kiss on the muzzle, you take hold of his hard canine manhood and lead him by it to a nearby free bunk, accompanied by wolf-whistles and interested looks from the closer teammates. Quickly removing your clothes, you press your naked body against Septus for another deep kiss and moan 'I want to fuck you' to him. He answers 'Sure, baby - but be gentle, we usually fuck the cheerleaders, not each other...' then gets on the bunk, lying on his back and pulling his legs up to bare his hole for you.";
	say "     Aroused by this muscular wolfman lying before you, waiting, you quickly climb on the bunk with him. Running your hands through the warm fur on his chest, you feel the strong muscles below, then move your hands to his legs and run them down his thighs towards the crotch. Putting a finger into your mouth to get it wet first, you slowly push it against Septus pucker until it yields and allows you entry. Yup, he's pretty tight - must not have been fucked all that often. Taking your time to prepare him for your cock, you spread his hole with one, then two fingers and massage his insides to loosen him up.";
	say "     After a bit longer, you think he's ready - and also, your own cock is aching to get into his tight wolfman ass, so you don't delay any more. Leaning over Septus, you feel his chest-fur against you as you kiss his muzzle, meanwhile moving your hips into position. Then it's time to fuck - you thrust forward, sinking your hard shaft into his hole. It's amazingly tight an warm, gripping you like a vice and allowing only slow progress deeper inside. It takes a moment for Septus to get used to your intruding member, but soon he's silently moaning at the feelings it brings him.";
	say "     Your partner now finally ready to get fucked, you pull out of him most of the way, then slide your manhood back into his tight passage, starting up slow thrusts in and out. Guided by rising moans in lust, you speed up bit by bit and before too much longer, the two of you are enthusiastically coupling with each other on the bunk. Septus even says 'Deeper. Deeper.' in between satisfied moans and you eagerly comply.";
	say "     [line break]";
	say "     Given the wild ride you're giving Septus, it's no big wonder that he soon moans 'Almost ready *pant* to cum'. Reaching down to grab his hard cock, you stroke it a few times until it starts jerking in your hand, shooting long strings of cum all over his chest. Septus anal muscles twitching around your cock with each of his shots gives you the rest too. As you feel the orgasm rapidly approaching, you drive into the wolfman's deliciously tight asshole one last time, grinding your hips against his as you fill him with your seed.";
	say "     After your shaft shoots its last sting of cum into Septus, you slowly pull out of him and lie back on the bunk to rest for a moment. Turning on your side, you move closer to Septus cuddling up against his furry back and put an arm around him. 'That was... different. But quite nice once one gets into it. We should do it again sometime...'";


Section 6 - Team Manager

to say WolfTeamManager:
	say "     You wave over Septus and Jennifer to talk, then say 'Listen, the team is great - but to really make it out there, after we all get out of the city, you need something else - a manager.  You know, someone who takes care of negotiations, thinks up training plans and strategies, arranges things like getting new gear, advertising, the whole lot.  You wouldn't want to get distracted from training by constantly having to worry about all these things.  I will do that for you...'";
	attempttowait;
	say "     Septus looks at you with a thoughtful expression and slowly nods - at least until you put an arm around Jennifer and continue with 'Of course, there needs to be some compensation for my hard work - part of the team being mine, I'd say.  As team manager, from now on, I'll be the only one fucking Jennifer to father our new top players.  And of course get to jump the line with the other cheerleaders when I want.'";
	say "     Baring his fangs in anger, Septus growls 'WHAT?  Hell no!  She's my... they're our... she wouldn't agree to this anyways.'  Some of the other players, having overheard what's going on, growl and move in behind the team's talent scout to back him up.  But there isn't any such opposition on the slender head-cheerleader's part - in fact, Jennifer seems to be reminiscing about your last coupling, softly moaning as she strokes her breasts.  That really rises the wolfman's hackles.  He growls 'Get out!' and when you don't immediately start going, he continues with a snarled 'I'll drag your beaten ass out of here if I have to!'";
	attempttowait;
	now hp of Septus is 6;
	challenge "Football Wolfman";
	if fightoutcome >= 10 and fightoutcome < 19:
		say "     After parading you around for a while, the wolves drop you off with Jennifer atop a platform of crates.  You pull her to your lupine chest and kiss her wildly, groping her ass as you do.  This prompts a fresh wave of cheering, howling and wolf whistles from the crowd.  With some effort, you get them to settle down so you can give a victory speech.  During this, you tell them that you're the team manager now and that you're going to lead them to the top.  It is chock full of trite and cliche sayings about giving 110%, their being the best team you've ever seen and the like, but in the heat of the moment, it all sounds very inspiring to you and to the team.  You feel tougher after your victory and are truly eager to lead your team to greatness.";
		say "     Partway through your speech, you call out to have Septus brought over and he's pushed forward by the others.  Looking rather worse for the wear for his loss and clearly worried about his future on the team, you put your arm around him, giving him a tight hug.  Telling the gathered wolfmen and cheerleaders that he put up a great fight for the team, you announce that you'll be making Septus the team captain.  You add that you'll be sharing Jennifer with him, as well as any player who shows they deserve it when they play.  This surprising announcement sends fresh howls and cheers through the group as well as perking the wolfman back up considerably.  To show his thanks, he gives you a crushing hug that rapidly leads into groping and fondling as well.";
		attempttowait;
		say "     With the rush of excitement from having watched a great fight as well as your rousing speech, things quickly devolve among the crowd as they start to break off into groups of threes and fours.  The wolfmen and cheerleaders are soon going at it hot and heavy, licking, sucking, kissing and fucking like wild beasts.  Not wanting to be left out of the fun, you grab Jennifer's ass and pull her onto your erection.  After the first few thrusts have her moaning and squirming, you motion for Septus to come up and take his mom from the front while you get her from behind.  He grins and pushes into her, the [if thirst of Jennifer is 2]pregnant [end if]cheerleader's cunny stuffed extra-full by having both of you in there together.  Once he's fully thrust inside her, he gives you a big high-five and bounces the horny girl on both your rods.";
		say "     It is a bit of a tight fit inside Jennifer's cunt along Septus's rod, much more than she normally gets, not that she seems to be minding the extra meat at all.  If anything, it's making her all the more horny.  You grin as she moans and squirms atop you both, her juicy cunny squeezing your two against one another as you both fuck her at once, manager and captain sharing the hot lead cheerleader.  The three of you share many a wild, prolonged kiss as you fuck until can't hold back any longer and flood her [if thirst of Jennifer is 0]womb[otherwise]very depths[end if] with virile seed from the team's two top wolves.  It is very arousing for you to feel every pulse and throb of Septus's cock as he spurts his load into her alongside you.";
		attempttowait;
		say "     It is some time before [if cockname of player is listed in infections of knotlist]both your knots go[otherwise]Septus's knot goes[end if] down enough to allow you to pop free, lowering the thoroughly stuffed and creamed woman down onto her knees.  Despite the powerful pounding and orgasms she's had, she's eager for more and grabs the two cum-soaked cocks in front of her, pulling them to her mouth.  She starts with you as team manager, licking and sucking the mix of semen from you before turning to the team captain and doing the same.  After that, it's back and forth between you both, working hard to suck you off.  The sight of the lovely[if thirst of Jennifer is 2], pregnant[end if] cheerleader swapping back and forth as she sits in the growing pool of cum leaking out of her, is very arousing and has you both hard and ready for more in no time.";
		say "     Taking new positions with Jennifer on all fours, you sink back into her creamy cunt for sloppy seconds while she continues sucking off Septus.  While you're just as horny as before, your needs as team manager have you turn your attention to the others around the room for a bit as you leisurely thrust for a few minutes.  You can't help but smile at the sight of the team getting along so well and everyone trying so hard to breed more powerful players for your growing team.  You spot several groups who've decided to follow your lead and are sharing a cheerleader between a pair of them.  And while those girls are struggling a little more at it than top cheerleader and breeder Jennifer could, their cries are those of ecstasy.  Others are paired up spitroasting the girls or taking them in their pussy and ass at once.  The others who are waiting for their chance with the girls are quite happy to strengthen their ties with their male teammates, stroking, sucking and fucking each other until they're called into the game to fuck one of the girls as soon as a teammate has drained his balls and stepped back.";
		attempttowait;
		say "     Both proud and aroused by the sight of the orgy of team fucking going on, you smile and nod to Septus before setting yourself to the most enjoyable task of pounding the sexy cheerleader the two of you are sharing.  The wolfman, already holding her head, starts thrusting harder and faster as well, grinning at the sounds of pleasure coming from her as the two wild wolves have their way with her breeder body.  You howl as you cum, adding fresh semen to the hot load already inside her while Septus feeds her the contents of his balls.";
		say "     Things continue this way for quite a long time, the lustful scent of the orgy feeding itself to continue on and on, players swapping in and passing around the cheerleaders until they've all be stuffed so full that their bellies are round with cubs and cum.  Eventually it does start to wind down though, some of the players with less endurance dropping out or sticking to the benches and sucking off their teammates rather than going for another fuck themselves.  You discretely keep an eye on them and, glancing over at your new team captain, you can see he's doing the same.  You smile, knowing he'll be making them train all the harder for it.  You also watch those you last until the end, feeling they'll make the best candidates for the team's starting lineup.  After Jennifer sucks you both off a final time while watching the orgy coming to a close, you call a close to the orgy, telling everyone to take a break to get fed and rested before heading back to training.  Septus gives Jennifer's ass a swat as she heads off to check on the other cheerleaders and to help those too full to move on their own to get up.";
		now hp of Septus is 7;
		wolfmaninfect;
		increase score by 25;
		let strup be 0;
		let charup be 0;
		if strength of player < 18:
			increase strength of player by 1;
			increase capacity of player by 5;
			now strup is 1;
		if charisma of player < 18:
			increase charisma of player by 1;
			now charup is 1;
		if strup is 1 or charup is 1:
			say "Your [if strup is 1 and charup is 1][bold type]strength[roman type] and [bold type]charisma[roman type] have[otherwise if strup is 1][bold type]strength[roman type] has[otherwise][bold type]charisma[roman type] has[end if] gone up by 1.";
		otherwise:
			increase maxhp of player by level of player / 2;
		decrease humanity of player by 12;
		if thirst of Jennifer is 0:		[guaranteed preggers after orgy]
			now Jenniferpregnant is 48;
			now thirst of Jennifer is 1;
		attempttowait;
		follow the turnpass rule;
	otherwise if fightoutcome >= 20 and fightoutcome < 29:
		say "     When the wolves finally climb off of you and Septus pulls you to your feet, you can only groan weakly.  'And here I thought you might turn out to be a star player, but no, you had to be greedy.  Mom's told us that a lot of the best guys who sign big contracts just stop trying, dragging the whole team down.  To be on this team, you've got to be a team player.  This is the end of your career, hot shot.'  With a final growl, he tosses you out the door, throwing your gear out after you.  As the door is slammed shut, you can hear the start of a team victory orgy.  You stagger to your feet and limp back to the library with the knowledge you'll never be welcomed back by the team.";
		move player to Grey Abbey Library;
		now Wolfman Lair is unknown;
		now hp of septus is 99;
	otherwise:
		say "     Turning tail from the pack of football wolfmen, you charge through a gap of the spectators, trying to make your way to the door.  The crowd, angry and turning on you like a crowd of rugby hooligans, tackle you to the floor, crushing you under the weight of their numbers.  The last of your strength is crushed out of you, leaving you exhausted while the crowd around boos and hisses at your cowardess.";
		say "     When the wolves finally climb off of you and Septus pulls you to your feet, you can only groan weakly.  'And here I thought you might turn out to be a star player, but no, you had to be greedy.  Mom's told us that a lot of the best guys who sign big contracts just stop trying, dragging the whole team down.  To be on this team, you've got to be a team player.  This is the end of your career, hot shot.'  With a final growl, he tosses you out the door, throwing your gear out after you.  As the door is slammed shut, you can hear the start of a team victory orgy.  You stagger to your feet and limp back to the library with the knowledge you'll never be welcomed back by the team.";
		now hp of player is 0;
		move player to Grey Abbey Library;
		now Wolfman Lair is unknown;
		now hp of septus is 99;


Section 7 - Endings

when play ends:
	if bodyname of player is "Football Wolfman":
		if humanity of player is less than 10:
			if hp of Septus is 7:
				say "***succumb as Football Wolfman manager.";
			otherwise:
				say "     As you lose your last shreds of humanity, you feel the need to get more players for your team supplant all other concerns. From that point on, you roam the streets of the city, searching for female breeding partners to father more wolfmen with. When a squad of male soldiers finally come and take you out of the city, there are at least a dozen of your offspring growing in various wombs. Being calm around the all-male group soldiers, they get lulled into leaving their guard down and don't watch you as closely as other infectees. Their mistake - as you're brought into the quarantine facility, you jump the first female nurse you come across, burying your cock inside her and fucking her with deep strokes before anyone can stop you. You just have time to cum and impregnate her before you get tasered by security and taken away to the lockup of the incurably changed.";
			stop the action;
		otherwise if hp of Septus is 7:
			say "***survive as manager.";
		otherwise if hp of Septus is 99:
			say "***survive as FW-reject.";
		otherwise:
			say "     When rescue comes, you're poked and prodded a bit in a medical holding facility outside the city, then declared non-infectious and let go. You seek out the other wolfmen and their cheerleader mothers and join the team for good, training hard to become one of the best players and earning the position of Quarterback. Not much later, a crafty businessman announces the creation of the 'Shifted American Football League' - sporting your team in epic battles against (among others) giants, dinosaurs and panther-taurs. Always accompanied by their breathtaking cheerleading team of course.";
			if (cocks of player > 0):
				say "     Your exalted position brings a lot of adoration and fans with it, with women often trying to sneak in to the hotel- or lockerrooms to get to know you better. You reward those that are clever or persistent about it with a ride on your wolfman cock, filling them with your fertile seed and impregnating them with the next generation of players. Thankfully, the libido of the shifted was accounted for when the S-AFL was thought up, so there's actually a child support provision written right into your contract.";
				if (cunts of player > 0):
					say "     Besides the fan-girls, you also have a very devoted mass of male followers. You pick up one or two of the more muscular and handsome ones sometimes after a game when your pussy demands to be filled...";			  
			otherwise if (cunts of player > 0):
				say "     Your exalted position brings a lot of adoration with it and you pretty much have a free selection of men from among your devoted fans. You pick up one or two of the more muscular and handsome ones sometimes after a game when your pussy demands to be filled... which leads to two pregnancies over the next few months and you giving birth to two of the next generation of players. Thankfully, the libido of the shifted was accounted for when the S-AFL was thought up, so there's actually a child support provision written right into your contract.";
			if(Jenniferwolves > 1):
				say "     Your sons with Jennifer prove to be excellent players in their own right, making it into the top teams of the new sport. You're very proud every time you see one of them out on the field.";
			otherwise if(Jenniferwolves is 1):
				say "     Your son with Jennifer proves to be an excellent player in his own right, earning a place as a Running Back besides you on the field. The first time he scores a winning touchdown, the whole cheerleading team comes into the lockerroom after the game, riding his cock one after another as a reward. And like father like son, he puts wolf-cubs in quite a few of them.";
	otherwise:
		if humanity of player > 10:
			if (hp of Septus is 5):    [beat the entrance test, was at the lair]
				say "     Even if you didn't become a wolfman yourself and join the team, Septus, Jennifer and the others are still very impressed with you. When the creation of the 'Shifted American Football League' is announced several months after you leave the city, you get invited to the first game, joining the players in the lockerroom and watching the action right from the side of the field. As a honorary member, you get a free lifetime ticket for their games and are always welcome in the player areas and at celebrations... which usually turn into orgies between the wolfmen and their cheerleaders sooner or later.";
				if(Jenniferwolves > 1):
					say "     Your sons with Jennifer prove to be excellent players in their own right, making it into the top teams of the new sport. You're very proud every time you see one of them out on the field.";
				otherwise if(Jenniferwolves is 1):
					say "     Your son with Jennifer proves to be an excellent player in his own right, earning a place as the Quarterback. The first time he scores a winning touchdown, the whole cheerleading team comes into the lockerroom after the game, riding his cock one after another as a reward. And like father like son, he puts wolf-cubs in quite a few of them.";
			otherwise if hp of Septus is 7:
				say "***Survive as non-FW manager.";

Wolfman ends here.