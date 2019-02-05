Version 2 of Wolfman by Wahn begins here.
[ Version 2.2 - Relocated to College Campus area. ]

"Adds a team of football wolfmen to Flexible Survival's Wandering Monsters table, With Impreg chance"

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
[  50: Joined the cheerleaders                                       ]
[  51: Charisma Test passed                                          ]
[  52: Initiation completed                                          ]
[  99: Kicked off the team                                           ]

[ HP of Jennifer - badass Cheerleader progression                    ]
[   0: not seen her in action yet                                    ]
[   1: saw Jennifer take down the new tryout                         ]
[   2: just heard Jennifer talk about the grabby tryout              ]

[ Dexterity of Jennifer - soda source                                ]
[   0: player doesn't know about the stash                           ]
[   1: player knows about the stash                                  ]

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

JenniferFirstKidSpecialStat is a text that varies.
LastJenniferSoda is a number that varies. LastJenniferSoda is usually 2000.

Section 1 - Monster Responses & Infection

when play begins:
	add { "Football Wolfman" } to infections of guy;
	add { "Football Wolfman" } to infections of furry;
	add { "Football Wolfman" } to infections of Caninelist;

to say Septus wins:
	if HP of Septus is 6:
		if HP of player > 0:
			say "     Unwilling to keep fighting the wolves, you step back and put up your arms, trying to calm them down, but they won't be swayed at this point. Septus tackles into you, knocking you to the ground and the others follow, all piling themselves atop you with angry growls. The last of your strength is crushed out of you, leaving you exhausted while the crowd around cheers excitedly.";
			now HP of player is 0;
		else:
			say "     Unable to keep fighting the wolves, you wobble unsteadily only to be tackled to the ground by Septus. The others quickly follow, all piling themselves atop you with angry growls. The last of your strength is crushed out of you, leaving you exhausted while the crowd around cheers excitedly.";
	else if HP of player > 0:
		say "     'What's this? You're supposed to show what you can do, wimp!' he sneers and shoves you to the ground. With a dismissive 'Maybe I overestimated you' he turns away and walks off.";
	else:
		say "     He steps back a bit as you collapse to your knees in exhaustion. 'Hm, there's potential in you, but you really have to step up your game. Train a bit, build some muscles and come find me again, ok?'";

To say Septus loses:
	if HP of Septus is 6:
		say "     As your blow knocks Septus to his knees, the other wolfmen still standing step back. The crowd, having changed to cheering for you gradually over the course of the match, rush forward and boost you up onto their shoulders[if jenniferwolves is 1], your lupine son carrying you on his shoulders[else], your lupine sons being at the center of those carrying you around on their shoulders[end if].";
	else:
		if bodyname of player is "Football Wolfman":
			say "     Panting, the wolfman steps back from you to catch his breath. With an appreciating nod, Septus says, 'Well done, [if player is female]sister[else]brother[end if]. We need more players like you.'";
		else:
			say "     Panting, the wolfman steps back from you to catch his breath. With an appreciating nod, Septus says, 'Well done, [if player is female]girl[else]man[end if]. You're among the best I've tried out today.'";
		say "     [if (HP of Septus is 0 or HP of Septus is 1 or HP of Septus is 2)]'Keep this up, and you'll have a place in the team soon.' He gives your shoulder a squeeze, then walks off to find more candidates out in the city.[else if (HP of Septus is 3 or HP of Septus is 4)]'You've shown your strength and skill. Why don't you join us in our base camp? It's in a warehouse over near 11th street. Just look for the [bold type]entrance[roman type] of our wolfman [bold type]lair[roman type] - there's a large wolf's head painted on the front wall too, you can barely miss it.'[else if HP of Septus is 5]'See you later at the lair. I'm off to find some new candidates.'[end if]";
		if HP of Septus < 4:
			increase HP of Septus by 1;
		if Entrance to the Lair is inactive and Entrance to the Lair is not resolved and HP of Septus > 3 and HP of Septus < 99:
			now Entrance to the Lair is active;

to say Wolfmandesc:
	setmongender 3;
	choose row monster from the Table of Random Critters;
	if HP of Septus is 100:
		say "     As you explore the ruined city, a tall figure suddenly steps into sight in front of you and gives you a calculating look. It's a well-toned male wolf-morph, standing on two digitigrade legs. His fur is almost completely black, except for a blood red section on his chest that forms the number 7.";
		say "     He nods his lupine head at you, saying 'I'm Septus, the talent scout of the Fairhaven Wolves. You don't look half bad - but are you worth joining the best football team of this changed world?' He gives you a toothy grin, then pounces at you.";
		now HP of Septus is 0;
		repeat with y running from 1 to number of filled rows in Table of Random Critters:
			choose row y in Table of Random Critters;
			if name entry is "Football Wolfman":
				now monster is y;
				break;
		choose row monster from the Table of Random Critters;
		now enemy type entry is 2; [name known]
	else if HP of Septus is 6:
		let debit be 0;
		if hardmode is true and level of player > 12, let debit be level of player - 12;
		now dex entry is 20 + ( ( debit * 2 ) / 5 );
		now HP entry is 95 + ( debit * 5 );
		now monsterHP is 95 + ( debit * 5 );
		now lev entry is 12 + debit;
		now wdam entry is 14 + ( ( debit * 3 ) / 10 );
		now lootchance entry is 0;
		now area entry is "Nowhere";
		say "     Septus and several of the nearest wolves move in to fight out, growling angrily and intent on throwing you out for good. The others clear the area and start cheering and howling in excitement like a rowdy crowd of football fans. At this point, the wolfmen aren't going to hold back like they have been during the recruitment and training, rushing at you like an offensive line. You growl back and flex your powerful, lupine body and charge as well, your wild instincts pumping adrenaline into your blood while a small corner of your mind hopes you haven't gotten in over your head.";
		if jenniferwolves is 1:
			say "     At least you do have at least one supporter out among the wolves encircling the fight and awaiting its outcome. The wolfman son you had with Jennifer is cheering you on from the edge of the area cleared from the match. A few of the other spectators push and growl at him, eventually a fight breaking out between him and another";
		else if jenniferwolves is 2:
			say "     At least you do have a pair of supporters out among the wolves encircling the fight and awaiting its outcome. The wolfman sons you had with Jennifer are cheering you on from the edge of the area cleared from the match. A few of the other spectators push and growl at them, eventually a fight breaking out between them and a couple of others";
		else if jenniferwolves > 2:
			say "     At least you do have a cluster of supporters out among the wolves encircling the fight and awaiting its outcome. The wolfman sons you had with Jennifer are cheering you on from the edge of the area cleared from the match. A few of the other spectators push and growl at them, but their numbers keep the others around them from daring to outright fight these opposition fans";
		if jenniferwolves > 0:
			say ". The sight of [if jenniferwolves > 1]them[else]him[end if] rooting for you boosts your determination to fight and win this battle.";
			if jenniferwolves > 4:
				increase morale of player by 4;
				increase HP of player by 15;
			else:
				increase morale of player by jenniferwolves;
				increase HP of player by jenniferwolves * 3;
	else if HP of Septus is 99:
		say "ERROR-FW99: This creature should no longer be randomly encountered.";
		now area entry is "Nowhere";
		now fightoutcome is 19;
		now combat abort is 1;
	else if HP of Septus >= 7:
		say "ERROR-FW[HP of Septus]: This creature should no longer be randomly encountered.";
		now area entry is "Nowhere";
		now fightoutcome is 19;
		now combat abort is 1;
	else:
		say "     Before you is the strong, muscled wolf you've seen before with 7 emblazoned in red right into his black-furred chest. Septus, the well-toned wolfman talent scout rushes at you, growling [one of]'Let's see what you're made of!'[or]'Let's spar a bit.'[or]'Time for some endurance training.'[at random]";

to say fw_attack:
	if HP of Septus is 6:
		say "[one of]One of the wolfman goes for a tackle, grabbing you with strong hands and pulling you to the ground. Several others pile on top of you, trying to crush the fight out of you.[or]One of wolves slams into from both sides with a sickening crunch.[or]One of the wolves grabs you from behind and holds you in place while the others ram their muscled shoulders into you like you were a tackling dummy until you manage to break free.[or]Septus moves in and, after a few feints, slams a powerful fist into your gut, no longer holding back. The great force of the blow proves why he's one of the team's star players. 'Is that all you got?' he growls.[or]You are grabbed from behind, your arm twisted painfully behind your back, allowing another to grab you and headbutt you so hard your ears ring.[or]A trio of the wolves grab you and lift you up into the air before spiking you down onto the concrete floor with a yell of 'Touchdown!'[at random]";
	else:
		say "[one of]The wolfman goes for a tackle, grabbing you with strong hands and pulls you to the ground.[or]He rushes past you, hitting you with a muscled shoulder and driving the breath from your lungs.[or]He grabs you roughly with strong clawed hands. That'll leave some bruises and scratches for sure.[or]He gives you a hard, but not that painful blow to the chest. Looks like he's pulling some of the punch out of it. 'Come on, show me what you're made of!'[or]He scores a hit against your side, growling 'That was easily avoidable - you need more training!'[at random]";


Section A - Monster Insertion

Table of Random Critters (continued)
name	enemy title	enemy name	enemy type	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	DayCycle	altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now name entry is "Football Wolfman";
	now enemy title entry is "Football Wolfman Recruiter";
	now enemy name entry is "Septus";
	now enemy type entry is 1; [unique enemy]
	now attack entry is "[fw_attack]"; [Text used when the monster makes an Attack]
	now defeated entry is "[Septus loses]";
	now victory entry is "[Septus wins]";
	now desc entry is "[Wolfmandesc]";            [ Description of the creature when you encounter it. ]
	now face entry is "a canine muzzle sticking out of your wolf-like head. The sharp teeth inside it make your smiles and growls pretty unforgettable for others, and the long tongue should come in handy for French kissing";
	now body entry is "tall and well muscled, standing on two legs and showing an interesting mix of lupine and human form. While your legs are fully digitigrade and end in large paws, your arms are changed but still more human-like and end in strong, now clawed, hands";
	now skin entry is "[one of]black furred[or]densely furred[or]furred[at random]";
	now tail entry is "You have a fluffy, mid-length tail growing out of your spine, just above the grabbable buns of your ass.";  [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "[one of]lupine[or]wolf[or]knotted[at random]";
	now face change entry is "it stretches out into a large lupine muzzle, filled with a predator's sharp teeth. A shift goes through your worldview when your ears become pointed and move to the top of your head, your vision becomes somehow 'sharper' and new scents assail your now much more sensitive nose"; [ format as "Your face feels funny as (your text)." ]
	now body change entry is "it morphs into a well toned human-wolf hybrid shape. With the crunching noise of breaking bones, your legs become digitigrade - now ending in large paws instead of feet. Your arms meanwhile fill out with muscles, lengthen a bit and also change the form of their joints slightly. Still, they're closer to human than the legs - even with the new sharp claws at the ends of your fingers"; [ format as "Your body feels funny as (your text)." ]
	now skin change entry is "dense black fur spreads rapidly over your form. Well, mostly black - your chest shows a large '22' on it in blood-red fur, just like your back"; [ format as "Your skin feels funny as (your text)." ]
	now ass change entry is "a mid-length lupine tail sprouts from your backside"; [ format as "Your ass feels funny as (your text)." ]
	now cock change entry is "your member grows thicker as the top of it grows to a sharp point, a large canine knot forming at the base of your new lupine sheath"; [ format as "Your cock feels funny as (your text)." ]
	now str entry is 17;
	now dex entry is 16;
	now sta entry is 15;
	now per entry is 12;
	now int entry is 12;
	now cha entry is 14;
	now sex entry is "Male";            [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 50;
	now lev entry is 6;                 [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 10;               [ Monster's average damage when attacking. ]
	now area entry is "Campus";         [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1;               [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 16;        [ Length infection will make cock grow to if cocks. ]
	now cock width entry is 8;          [ Cock width, more commonly used for ball size. ]
	now breasts entry is 2;             [ Number of nipples the infection will give a player. ]
	now breast size entry is 0;         [ Size of breasts the infection will try to attain. ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;               [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 0;         [ Depth of female sex the infection will attempt to give a player. ]
	now cunt width entry is 0;          [ Width of female sex the infection will try to give a player. ]
	now libido entry is 80;
	now loot entry is "sports drink";   [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 100;        [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3;               [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]strong[or]tall[or]powerful[at random]";
	now type entry is "lupine";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	now DayCycle entry is 0;      [ 0 = Up at all times; 1 = Nocturnal (night encounters only); 2 = Diurnal (day encounters only) ]
	now altcombat entry is "default";
	now BannedStatus entry is false;

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
	PlayerDrink 8;
	wolfmaninfect;

instead of sniffing sports drink:
	say "The drink smells of sugar end electrolytes - perfect to give you some quick energy.";

to wolfmaninfect:
	repeat with y running from 1 to number of filled rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		if name entry is "Football Wolfman":
			now monster is y;
			break;
	now non-infectious entry is false;
	infect "Football Wolfman";
	now non-infectious entry is true;

Section 3 - Event and Wolfman Lair

Table of GameEventIDs (continued)
Object	Name
Entrance to the Lair	"Entrance to the Lair"

Entrance to the Lair is a situation. The level of Entrance to the Lair is 5. Entrance to the Lair is inactive.
The sarea of Entrance to the Lair is "Outside".

Instead of resolving a Entrance to the Lair:
	say "     Looking around a bit, you soon find the warehouse Septus mentioned. It's hard to miss, with a large wolf's head painted on the facade. As you come close to the building, two wolfmen guarding the front instantly spot you. One goes inside, the other stays at the entrance door and eyes you warily. Several minutes later, Septus comes out with the other wolfman, visibly perking up as he spots you. 'It's okay, guys. Our visitor is a friend.' He waves you closer, holding open the door to let you in. The warehouse they made into their base is pretty large and surprisingly well equipped. Between improvised walls made from large boxes there are sections filled with exercise equipment, beds, supplies and whatnot. In the main area at least a score of wolfmen is present, most of which are working out - accompanied by three young human women doing stretches and a little naked cheer-leading routine in front of them.";
	if bodyname of player is "Football Wolfman":
		say "     Septus walks up to one of the women and pulls her close, running his strong hands over her body and licks over her nipples before going in for a deep muzzle to mouth kiss. 'Hi mom, I present to you another candidate for the team. As you can see, already in great shape... why don't you show [if player is male]him[else]her[end if] the benefits of joining us.' He gives her face a last affectionate lick, then grins at you, stepping to the side.";
	else:
		say "     Septus walks up to one of the women and pulls her close, running his strong hands over her body and licks over her nipples before going in for a deep muzzle to mouth kiss. 'Hi mom, I present to you another candidate for the team. Still a bit undecided... why don't you show [if player is male]him[else]her[end if] the benefits of joining us.' He gives her face a last affectionate lick, then grins at you, stepping to the side.";
	WaitLineBreak;
	say "     Jennifer smiles and nods to you, then says 'Let me tell you a bit about the team. You see, the girls and me were cheerleaders on a way to a game when all the chaos started. The school bus was standing at a red light when suddenly a huge shaggy wolf started clawing open the door. The driver tried to get away in a panic, but in the end crashed the bus. And then the wolf was in and started ripping off her clothes. We couldn't do anything but watch as he mounted her. When he finished inside her, he growled and took another girl, filling us one by one with his seed like a totally insatiable animal.'";
	say "     'I was so afraid having that huge beast on top of me - but all that changed when he came and filled my womb with his load. I felt the moment his sperm found my egg.' She lowers a hand to her stomach, then lower and strokes her pussy lips. 'From that moment, I knew it was fate that brought a wolf - our team symbol - to us. We were to be the mothers of a new team, one born to play!' She steps over to Septus, running a hand through his warm chest-fur. What a strange new world, with her son standing taller than she is and looking roughly the same age. 'Our handsome boys are born winners. And we need more players...' She fondles the wolfman's balls for a moment, giving an aroused sigh, then turns back to you. 'But don't let it discourage you that you weren't born as one of them. The team is open to anyone who proves he can play like a wolf.'";
	now HP of Septus is 5;
	now Wolfman Lair is known;
	now Entrance to the Lair is resolved;
	move player to Wolfman Lair;

Table of GameRoomIDs (continued)
Object	Name
Wolfman Lair	"Wolfman Lair"

Wolfman Lair is a room. It is fasttravel. It is private.
The description of Wolfman Lair is "[lairdesc]".

to say lairdesc:
	say "     The warehouse they made into their base is pretty large and surprisingly well equipped. Between improvised walls made from large boxes there are sections filled with exercise equipment, beds, supplies and whatnot. In the main area usually about a score of wolfmen is present, most of which are busy working out - accompanied by young human women cheering them on and doing some suggestive stretches in front of them - in the nude. When one of the wolves takes a break, they often get accompanied by one - or more - of the women to the adjoining sections. In which case lustful moans and howls soon follow[if HP of Septus >= 7 and HP of Septus < 50]. You can't help but smile as you look over at the great, growing team you've got[end if].";

instead of sniffing Wolfman Lair:
	say "A bit of sweat hangs in the air, combined with the pheromone-laden musk of a lot of wolfmen. It makes you feel a bit stronger and strangely competitive...";

instead of navigating Wolfman Lair while (Jenniferfucked > 0 and HP of Jennifer is 0 and a random chance of 1 in 3 succeeds):
	say "[NavCheck Wolfman Lair]";
	if NavCheckReturn is false, stop the action;
	say "     You turn the last corner and spot the warehouse occupied by the wolfmen a little distance away, with its large wolf's head painted on the facade. The two muscular males guarding the entrance are at their usual spots and give you a little wave, but your eyes are immediately drawn to the movement of a petite human form further to the left - it is Jennifer, the head cheerleader of the football team, strolling along the building exterior with a tall male with leopard spots and a black wolf's tail by her side. The beautiful young woman is completely naked, as usual for members of this little tribe of post-humanity, quite comfortable without a stitch of clothing on her. Watching her move along, with sunlight shining on her pale-skinned beauty, until she and the guy she's talking vanish behind the building, you can't help but wonder what exactly is going on over there.";
	LineBreak;
	say "     [bold type]Do you want to go after Jennifer and that other guy?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Sure! Let's see what goes on over there.";
	say "     ([link]N[as]n[end link]) - Nah, maybe it's a private matter.";
	if player consents:
		LineBreak;
		say "     Waving to the guards as you take a corner in your path and hurry after Jennifer and the feline guy. Reaching the corner of the quite expansive warehouse after a little while, you spot some spray-painted marks on the ground of the alley next to it - seems like the team is using it as a racetrack and put distance markers all along it. About 150 feet along the flank of the building, Jennifer is standing with a stopwatch in her hand, cheering on the leopardman-wolfman hybrid you see sprinting at her at a truly impressive speed. She welcomes him with a happy shout as he dashes past and then does a little turn to decelerate and get back to where she is standing. Walking to catch up with them, you hear the words exchanged next, thanks to the narrow alley with metal-sided warehouses reflecting sound quite well.";
		say "     'Five seconds twelve hundreds. Keefer, that's a world record! You'll be an amazing runner for the team!' Jennifer tells the feline male with a happy smile, throwing her arms around him as the young man comes up to her. 'See, you didn't need to be anxious about your performance at all. I told you that you'd be amazing.' The tall furred man chuckles darkly, wrapping his arms around the petite human in front of him and letting a hand wander down to grope her ass possessively. Then he says, 'Oh, I knew girlie. Of course I'm the fastest! It's just that I don't want to play subordinate in your little team here. Not if I can just get a sweet little puta like you to stupidly follow me outside, all alone. Who needs the other fuckers if I can just [italic type]take[roman type] you and keep you all for myself. You're gonna be a fine slut to knock up!'";
		WaitLineBreak;
		say "     'What? No!' Jennifer replies, pushing against Keefer's broad chest and trying to extract herself from his grasp, but the bigger male keeps a firm hold of her. His claws dig a little into her skin, leaving bloody scratches as the leopardman growls, 'Stop struggling! You're mi-' Further words are replaced by a pained shriek as Jennifer knees him in the balls HARD, taking full advantage of the fact that neither of them wears any clothing at all. She ducks out of his grasp and gains a few steps distance, never taking her eyes of the aggressive male. Letting out a furious yowl, the leopardman hybrid pushes aside the pain and straightens again, baring his fangs as he focuses on Jennifer. 'YOU FUCKING BITCH! Seems I gotta beat some obedience into you!' the guy shouts, totally focused on Jennifer. Seems like neither of them has spotted you get. Keefer more hisses than says the words, 'I'll deal with you, slut!'";
		LineBreak;
		say "     [bold type]What do you do now?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Rush forward to interpose yourself between Keefer and Jennifer.";
		say "     ([link]N[as]n[end link]) - The dude looks dangerous. Turn around and run to get the two guards and take him down as a team.";
		if player consents:
			LineBreak;
			say "     Calling to the petite cheerleader to run and get to safety, but she doesn't hear you since her opponent keeps cursing and growling loudly. With nothing left but getting between them, you run towards the two of them - but before you're more than halfway there, Jennifer does the exact opposite of what you intended her to do. She dashes straight at Keefer with a fierce shout on her lips, side-steps a slash with his clawed hand so that it just leaves a shallow gash on her side and grabs his arm to swing herself up, kicking him right in the head with her slender feet. Landing on springy legs behind him, the young woman is standing combat-ready and facing Keefer again in a second, while he still is reeling from the sudden counter. Even as you continue to close with them, you see Jennifer swoop in for another hit on the run, landing a blow on a pressure point at the back of his leg as she dashes past. This leaves Keefer rather stiff in the leg, bending down to hold his limb and grunting in pain.";
			say "     'Okay, that's it. I'll gut you for this, girlie!' the leopardman threatens Jennifer and takes a step towards her. Shortly before you reach the two of them, the young woman goads Keefer with the words, 'You're just a pathetic little kitty with a tiny dick, aren't you? I bet you couldn't even get it up to fuck me with!' Slightly baffled by Jennifer enraging the leopardman even further, you can't help but glance over to her attacker's junk - finding it half-hard and actually of only slightly below-average size. Nevertheless, it seems that the cheerleader hit her mark head-on with him, as the muscular feline lets out an almost feral growl and just throws himself at her with everything he has, an all-out dash led by his unsheathed claws stretched forward.";
			WaitLineBreak;
			say "     Jennifer laughs at the leopardman as she side-steps the furious and uncontrolled lunge, allowing Keefer to run full steam into the side of the next door warehouse, bouncing off its metal walls with a loud crash and collapsing in a heap. Her attention stays on him for a while longer, first to see if he's gonna get up, then to check if he is still breathing after that face-plant into a wall. 'He'll be okay eventually,' comes the young woman's verdict a moment later, turning away from him and walking over to you. She smiles happily at you as she approaches, doing her best to calm down and put the fight behind her. Now that you see her naked form fully from the front and not moving as quickly as before, you see that the scratches and marks she took in the short fight are healing with startling speed, literally closing and completely vanishing in less than a minute. She might look completely human, but this young woman is far from ordinary anymore.";
			say "     'Thank you for wanting to help,' Jennifer says with a smile, coming up to you to plant a peck on your cheek. 'Me and the girls can take care of ourselves, but it still feels really nice to know that others want to stand up for us. And you've definitively earned yourself some fun later, you know.' Sliding an arm around your chest and giving you a friendly squeeze, she glances over her shoulder at Keefer, then shrugs and says, 'Come on, let's get back inside. That trash can lie there and crawl away on his own when he comes to.' And with that, she walks with you up the alley again, arm in arm. Getting back to the guards at the entrance, she tells them, 'Keefer isn't welcome here anymore. Not that I expect him to come back...' After entering the building, Jennifer kisses you again and then peels off to go tell Septus about what happened.";
		else:
			LineBreak;
			say "     Calling to the petite cheerleader to run and get to safety, but she doesn't hear you since her opponent keeps cursing and growling loudly. Not wasting any more time, you then whirl around and run back the way you came, calling loudly for help. By the time you reach the corner of the warehouse, the two wolfman guards are already coming the other way, and all three of you rush to rescue Jennifer from the aggressive leopardman-wolfman hybrid. The scene that awaits you isn't what you expected though, as Jennifer is standing over the feline as he lies in an unconscious heap, her arms crossed as she looks down at him. Looks like he ran face-first into the wall of the next door building and she is checking if he is still breathing. 'He'll be okay eventually,' comes the young woman's verdict a moment later, turning away from Keefer and walking over to you and the wolfmen. She smiles happily at you as she approaches, doing her best to calm down and put the fight behind her.";
			say "     Seeing Jennifer's naked form fully from the front, you recognize scratches and marks on her body, which heal with startling speed, literally closing and completely vanishing in less than a minute. She might look completely human, but this young woman is far from ordinary anymore. 'Thank you for wanting to help,' Jennifer says with a smile, coming up to you to plant a peck on your cheek, then doing the same for the two wolfmen guards. 'Me and the girls can take care of ourselves, but it still feels really nice to know that others want to stand up for us.' Giving each of the three of you friendly squeezes, one after another, she glances over her shoulder at Keefer, then shrugs and says, 'Come on, let's get back inside. That trash can lie there and crawl away on his own when he comes to.' And with that, she walks up the alley again, flanked by you and the wolfmen. After entering the building, Jennifer kisses you again and then peels off to go tell Septus about what happened.";
		now HP of Jennifer is 1; [saw Jennifer take down Keefer]
	else:
		LineBreak;
		say "     With a shrug, you just continue on to the entrance and say hello to the guards, then step into the building. Sitting down to cool off after your trip to the city, you watch the eager bustle of activity inside the warehouse for a while - the training of the cheerleaders and their wolfman offspring, discussions about tactics, shared meals, and of course a good dose of sex going on just out of sight or even right in the open. Eventually, Jennifer comes back into the building alone, making a beeline for Septus standing not too far away from you and telling him, 'Turns out that Keefer won't be joining us after all. He had... other ideas and got a bit grabby.' This comment raises the young man's hackles and he steps up to her with a concerned look on his face, asking, 'Fuck. He seemed okay every time we met. Are you okay Jen?'";
		say "     Striking a pose that gives a glimpse of confidence and ferocity that one usually wouldn't expect from someone with her small stature, Jennifer lets out a melodic laugh. 'You know you don't have to worry about me, but it is always nice to hear that you care. I know why you're one of my favorites,' she replies with a smile, then rises on tiptoe to give Septus a full kiss on the muzzle, escalating to a somewhat sloppy tongue-wrestling match between them. Before long, he picks her up in his strong arms and the two of them walk off to find a private spot to continue their fun. Watching them go, you are left with more questions than answers: How exactly did Jennifer deal with that guy who looked quite big and strong? And what exactly did she mean in her reply? Maybe you should ask her sometime...";
		now HP of Jennifer is 2; [heard about Jennifer taking out Keefer]
	WaitLineBreak;
	move player to Wolfman Lair;

Section 4 - Jennifer, the Cheerleader

[Smells, Description, Conversation and NPC Interaction]

Table of GameCharacterIDs (continued)
object	name
Jennifer	"Jennifer"

Jennifer is a woman. Jennifer is in Wolfman Lair. The HP of Jennifer is normally 0.
The description of Jennifer is "[Jenniferdesc]".
The conversation of Jennifer is { "Grrr!" }.
Jenniferfucked is a number that varies. Jenniferfucked is normally 0.

instead of sniffing Jennifer:
	say "Jennifer has a pretty nice female smell.";

to say Jenniferdesc:
	if debugactive is 1:
		say "DEBUG -> THIRST: [thirst of Jennifer], LUST: [lust of Jennifer], JENNIFERFUCKED: [Jenniferfucked], PREG TIMER: [Jenniferpregnant], OFFSPRING: [Jenniferwolves]<- DEBUG[line break]";
	if (thirst of Jennifer is 0 or thirst of Jennifer is 1): [starting state]
		say "     Jennifer is a petite and beautiful young woman with a friendly expression and shoulder-length blond hair. With her being naked, you got a full view of her lithe and limber human body, trained from long hours of gymnastics and cheer-leading practice[if HP of Septus >= 7 and HP of Septus < 50]. As team leader, she's your personal cheerleader breeder, a privilege you only share with Septus. You will extend that to other players who show real heart in the game, wanting to ensure that she breeds only the strongest and best players for the team[end if]. Her pussy is a bit red and swollen and the nipples of her perky little breasts point hard into the air, indicating her arousal at being watched by you. [Jenniferoffspring]";
	if (thirst of Jennifer is 2): [visibly pregnant by the player]
		say "     Jennifer is a petite and beautiful young woman with a friendly expression and shoulder-length blond hair. With her being naked, you got a full view of her lithe and limber human body, trained from long hours of gymnastics and cheer-leading practice[if HP of Septus >= 7 and HP of Septus < 50]. As team leader, she's your personal cheerleader breeder, a privilege you only share with Septus. You will extend that to other players who show real heart in the game, wanting to ensure that she breeds only the strongest and best players for the team[end if]. Her belly is currently bulging outwards quite a bit, showing the result of your recent coupling growing inside her. The nipples of her perky little breasts point hard into the air, indicating her arousal at being watched by you. [Jenniferoffspring]";

instead of conversing the Jennifer:
	say "[JenniferTalkMenu]";

to say JenniferTalkMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Chat with her";
	now sortorder entry is 1;
	now description entry is "Just talk a bit with Jennifer";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask her about the supply situation of the team";
	now sortorder entry is 80;
	now description entry is "Talk to Jennifer about how they deal with the food scarcity these days";
	[]
	if Dexterity of Jennifer > 0:
		choose a blank row in table of fucking options;
		now title entry is "Ask her for a bottle of soda";
		now sortorder entry is 81;
		now description entry is "Request a bottle of soda from their stash";
	[]
	if Jenniferwolves > 0:
		choose a blank row in table of fucking options;
		now title entry is "Inquire about your offspring";
		now sortorder entry is 87;
		now description entry is "Ask Jennifer about how your son[if Jenniferwolves > 1]s[end if] are doing";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask her about leaving the city";
	now sortorder entry is 88;
	now description entry is "Talk to Jennifer about plans for getting out";
	[]
	if HP of Jennifer > 0:
		choose a blank row in table of fucking options;
		now title entry is "Ask her about her martial abilities";
		now sortorder entry is 90;
		now description entry is "Find out why and how the petite cheerleader could deal with a leopardman on her own";
	[]
	if HP of Septus < 50 and "Cheerbreeder" is not listed in feats of player:
		choose a blank row in table of fucking options;
		now title entry is "Ask to join the cheer-leading squad";
		now sortorder entry is 98;
		now description entry is "Let Jennifer test your dexterity and skill and see if you can join";
	[]
	if HP of Septus >= 50 and HP of Septus < 99:
		choose a blank row in table of fucking options;
		now title entry is "Practice cheer-leading with the others";
		now sortorder entry is 99;
		now description entry is "Join the group of naked young women for some practice moves";
	[]
	if (HP of Septus < 7 or HP of Septus >= 50) and player is male and ( lust of Jennifer > 2 or Jenniferwolves > 1 ) and bodyname of player is "Football Wolfman" and HP of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Suggest you become team manager";
		now sortorder entry is 100;
		now description entry is "Vie to be the team's manager - with appropriate perks";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
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
				if (nam is "Chat with her"):
					say "[JenniferChat]";
				if (nam is "Ask her about leaving the city"):
					say "[JenniferRescueTalk]";
				if (nam is "Ask her about the supply situation of the team"):
					say "[JenniferFoodTalk]";
				if (nam is "Ask her for a bottle of soda"):
					say "[JenniferSodaRequestTalk]";
				if (nam is "Inquire about your offspring"):
					say "[JenniferOffspringTalk]";
				if (nam is "Ask her about her martial abilities"):
					say "[JenniferMartialSkillTalk]";
				else if (nam is "Ask to join the cheer-leading squad"):
					say "[CheerleaderTryout1]";
				else if (nam is "Practice cheer-leading with the others"):
					say "[CheerleaderPractice]";
				else if (nam is "Suggest you become team manager"):
					say "[WolfTeamManager]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from Jennifer, shaking your head slightly as she gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say JenniferChat:
	if HP of Septus < 7:
		if (thirst of Jennifer is 0): [asking for a fuck]
			say "     [one of]Jennifer strokes a hand over her stomach and fondles her pussy lips. 'I think I'm ready for another wolf pup.'[or]Jennifer strokes a hand over her stomach and fondles her pussy lips. 'I need someone to fuck me soon.'[or]As you walk towards Jennifer to talk to her, she gets pulled into a group by the other cheerleaders. Soon they're doing pretty awe-inspiring naked gymnastics, intoning 'Fairhaven Wolves for the win!' You somehow forget what you wanted to say as you watch them bounce up and down.[at random]";
		else if (thirst of Jennifer is 1): [invisibly pregnant by the player]
			say "     Jennifer says 'This morning I had a strange craving for fish sticks and gryphon milk. Must be your doing, sure-shot.' and pulls you in for a quick kiss.";
		if (thirst of Jennifer is 2): [pregnant by the player]
			say "     Jennifer takes your hand and brings it to her bulging belly. You feel your child moving inside her. 'Our little boy is going to be nice and strong.'";
	else if HP of Septus >= 7 and HP of Septus < 50: [player is team manager]
		if thirst of Jennifer is 0:
			say "     [one of]'Let's fuck our way to the top, manager,' she says with a sexy smile and a grope.[or]Jennifer strokes a hand over her stomach and fondles her pussy lips. 'I think I'm ready for you to breed another star player in me.'[or]Jennifer strokes a hand over her stomach and fondles her pussy lips. 'I need you to fuck me soon.'[or]As you walk towards Jennifer to talk to her, she gets pulled into a group by the other cheerleaders. Soon they're doing pretty awe-inspiring naked gymnastics, intoning 'Fairhaven Wolves for the win!' You somehow forget what you wanted to say as you watch them bounce up and down.'[or]'I've been working extra hard with the other girls to get them ready for the season opener, manager. I could sure use a break,' she says, running her hands over your body to show just what kind of break she's longing for.[or]'That big match of yours to become the manager's really gotten the boys excited. They're fucking the cheerleaders all the harder to breed a superstar lineup for the upcoming season.'[or]'I love this crazy infection. We girls get to have all the sex we could ever want, breed lots of sexy wolf pups and always keep such sexy cheerleader figures,' she says with a smile, running her hands along her slender waist and curvy hips.[or]'Mmm... you make such a strong, confident manager. Just what the team needs. And just what I need,' she adds, groping you.[or]'Some of the boys have been looking at me longingly, but they all know you're in charge and that I belong to you. The rest of the girls are more than happy to tend to their needs. They love getting more attention now.'[at random]";
		else if thirst of player is 1:
			say "     [one of]'Let's fuck our way to the top, manager,' she says with a sexy smile and a grope.[or]Jennifer strokes a hand over her stomach and fondles her pussy lips. 'You'll be pleased to know that I'm pretty sure I've got another star player on the way, my studly manager. How about we fuck to celebrate?' she says with a smile.[or]Jennifer strokes a hand over her stomach and fondles her pussy lips. 'I can feel that pleasant glow inside that tells me we've got another pup on the way, manager.'[or]As you walk towards Jennifer to talk to her, she gets pulled into a group by the other cheerleaders. Soon they're doing pretty awe-inspiring naked gymnastics, intoning 'Fairhaven Wolves for the win!' You somehow forget what you wanted to say as you watch them bounce up and down.'[or]'I've been working extra hard with the other girls to get them ready for the season opener, manager. I could sure use a break,' she says, running her hands over your body to show just what kind of break she's longing for.[or]'That big match of yours to become the manager's really gotten the boys excited. They're fucking the cheerleaders all the harder to breed a superstar lineup for the upcoming season.'[or]'I love this crazy infection. We girls get to have all the sex we could ever want, breed lots of sexy wolf pups and always keep such sexy cheerleader figures,' she says with a smile, running her hands along her slender waist and curvy hips.[or]'Mmm... you make such a strong, confident manager. Just what the team needs. And just what I need,' she adds, groping you.[at random]";
		else:
			say "     [one of]'Let's fuck our way to the top, manager,' she says with a sexy smile and a grope.[or]Jennifer strokes a hand over her stomach and fondles her pussy lips. 'Mmm... I can feel the pup inside me kicking. I'm pretty sure we've got another star player in here,' she says, patting her pregnant belly. 'How about we fuck to celebrate?' she says with a smile.[or]Jennifer strokes a hand over her stomach and fondles her pussy lips. 'It seems you've put another pup in my belly, manager. Way to go, stud-muffin.'[or]As you walk towards Jennifer to talk to her, she gets pulled over to help some of the other cheerleaders practice. Pregnant as she is, she coaches them through the pretty awe-inspiring naked gymnastics, intoning 'Fairhaven Wolves for the win!' You somehow forget what you wanted to say as you watch them bounce up and down.'[or]You watch as Jennifer lets on the cheerleaders snuggle her pregnant belly while she's getting fucked by one of the wolfman players. 'Oh, that's good. Keep it up like that you two and you'll breed some more strong pups for the team in no time.'[or]'I've been working extra hard with the other girls to get them ready for the season opener, manager. I could sure use a break,' she says, running her hands over your body to show just what kind of break she's longing for.[or]'That big match of yours to become the manager's really gotten the boys excited. They're fucking the cheerleaders all the harder to breed a superstar lineup for the upcoming season.'[or]'I love this crazy infection. We girls get to have all the sex we could ever want, breed lots of sexy wolf pups and always keep such sexy cheerleader figures,' she says with a smile, running her hands along her pregnant belly.[or]'Mmm... you make such a strong, confident manager. Just what the team needs. And just what I need,' she adds, groping you.[at random]";
	else if HP of Septus >= 50 and HP of Septus < 99: [player on the cheerleader track]
		if (thirst of Jennifer is 0): [asking for a fuck]
			say "     [one of]Jennifer strokes a hand over her stomach and fondles her pussy lips. 'I think I'm ready for another wolf pup.'[or]Jennifer strokes a hand over her stomach and fondles her pussy lips. 'I need someone to fuck me soon.'[or]As you walk towards Jennifer to talk to her, she gets pulled into a group by the other cheerleaders. Soon they're doing pretty awe-inspiring naked gymnastics, intoning 'Fairhaven Wolves for the win!' You somehow forget what you wanted to say as you watch them bounce up and down.'[at random]";
		else if (thirst of Jennifer is 1): [invisibly pregnant by the player]
			say "     Jennifer says 'This morning I had a strange craving for fish sticks and gryphon milk. Must be your doing, sure-shot.' and pulls you in for a quick kiss.";
		if (thirst of Jennifer is 2): [pregnant by the player]
			say "     Jennifer takes your hand and brings it to her bulging belly. You feel your child moving inside her. 'Our little boy is going to be nice and strong.'";

to say JenniferRescueTalk:
	say "     As you bring up the thought of her leaving the city, alone or with the whole football team, a hint of a smile crosses Jennifer's face and she shakes her head. 'As strange as it may sound, I think... yeah, I think the city is the right place for us right now. If you had asked me before, when we were just on that bus and trying to escape, I'd have thrown myself into your arms to take me away, but now so many things have changed.' Her slender hand wanders up to the young woman's navel, touching her [if thirst of Jennifer is 2]bulging[else if thirst of Jennifer is 1]slightly curved[else]flat[end if] belly as Jennifer remembers carrying Septus to term. She lets her gaze wander over the members of their little tribe, the wolfman football team, and her smile only grows broader, with pride shining in her eyes.";
	say "     'All of the chaos and rampart lust may have been a shock to the girls and me at first, but this situation, this city, is like a crucible to forge our new team in. Septus is out there, recruiting the strong and capable to swell our ranks, while our bellies swell with even more players. Even the beasts attacking our home here from time to time are of use; making the boys learn that nothing can stand against a disciplined team working together.' She leans in to you and gives you a peck, then adds, 'It is nice of you to think about such things, but for now, we're good. Really. And Septus even has found another team on the college campus. There are talks about some friendly practice matches between us, you know.'";

to say JenniferFoodTalk:
	say "     Bringing up the topic of where she and the rest of the team do get their food and drink from, you cause Jennifer to chuckle and step up close, sliding her slender arm around yours and turning you one way a bit. 'Tell me, what do you see over there?' she asks, pointing over towards the center of the warehouse. Your gaze wanders over the floor, reaching the expanse of spots mats the team members have laid out there and are doing push-ups on, with a whole row of beautiful and naked cheerleaders practicing routines right next to the muscular young wolfmen. The melodic sound of Jennifer's laughter makes you look at her again, only to have the amused young woman point you the same way again, then adjust your viewpoint a little bit upwards with a hand under your chin.";
	say "     Now that you're not actually staring at the many beautiful and athletic members of the team, the rows of towering industrial shelves that fill the back of the warehouse actually register for the first time. Dozens upon dozens of pallets are stacked right up to the roof on those, and from the looks of it, these are filled with often quite colorful bottles. 'We chose this place with care,' Jennifer tells you with a smile, nodding to the several tons of various soda bottles waiting in the back of the warehouse. 'Every few days, some of the boys take a cartload of bottles to the Smith Haven Mall. The rats living there are crazy for soda, and trade us food back.'";
	if Dexterity of Jennifer is 0:
		now Dexterity of Jennifer is 1; [player knows about the soda stash]

to say JenniferSodaRequestTalk:
	if LastJenniferSoda - turns > 8: [player hasn't gotten soda that day]
		say "     Giving you a friendly nod and a smile as a reply, Jennifer calls out, 'Guys, could one of you please get me one of the bottles from the load for the next trade?' Several of the muscular wolfmen immediately jump up from whatever they were doing and literally have a race to something behind the furthest set of shelves, playfully shouldering each other aside to be the first to get to their goal. You hear some scrambling, laughter and the scratch of their claws on the concrete floor, followed by the victorious young man with the number [one of]one[or]two[or]three[or]four[or]six[or]eight[or]fifteen[or]sixteen[at random] on his chest re-emerging with a soda bottle in his hand. The wolfman proudly dashes through the warehouse and hands it over to Jennifer, receiving a kiss to his muzzle as a reward. Standing on tiptoe, Jennifer sucks on his floppy canine tongue for a few seconds, then rubs the anthro wolf's chest-fur and tells him to get back to training and make her proud. As he runs off again, his tail wagging hard, Jennifer hands you the soda bottle.";
		LineBreak;
		say "[bold type]You have gained a soda bottle![roman type][line break]";
		increase carried of soda by 1;
		now LastJenniferSoda is turns; [last soda at the current turn]
	else:
		say "     As you ask for another bottle of soda, Jennifer lets out a sigh and shakes her head. 'I'm sorry, but these really are mostly for trading with the Mall and I already gave you one only a little while ago. It's not like we don't have a lot of them, but it actually is a pain to get the stuff down from the shelves. The forklift back there is an electric one and seems to be out of power, so people actually have to climb and pass them down one by one.' Sliding her arm around yours and brushing against your side, she adds, 'You could just stay here with us for good, you know. Be one with the team and not worry about going out into the city anymore...'";

to say JenniferOffspringTalk:
	say "     As you ask her about your son[if Jenniferwolves > 1]s[end if], Jennifer steps up to your side and wraps her slender arm around yours, leaning in to press her naked form against your side. Pride is audible in her voice as she points out your firstborn with her, who currently is [one of]training with the other wolfmen[or]chatting up a brunette cheerleader[or]jogging back and forth between one end of the warehouse and the other[or]getting a blowjob from another wolfman[or]lapping the shapely breasts of a cheerleader[or]doing sit-ups[or]pounding a teammate's ass from behind[or]sleeping, with a cheerleader in his arm[or]sleeping, in a comfortable pile of other athletic anthro wolves[or]thirstily swallowing an energy drink[at random]. 'He's grown quickly, our little star. I see a great future for him in the team. Already, he has proven to be one of the ";
	if JenniferFirstKidSpecialStat is:
		-- "strength":
			say "strongest players that we have ever had, ready to just push even the strongest defensive line out of his way!' ";
		-- "dexterity":
			say "fastest and most agile players that we have ever had, ready to run circles around the opposition!' ";
		-- "stamina":
			say "toughest and most steadfast players that we have ever had. No one will get through his defense, that's for sure!' ";
		-- "charisma":
			say "most effective junior captains that we have ever had. Our boy just knows how to talk people into being their best. And my cheerleaders to follow him into his bed too, haha!' ";
		-- "intelligence":
			say "most effective strategists we have ever had. With his sharp mind, he can instantly recognize where the strengths and weaknesses of any opposing lineup are!' ";
		-- "perception":
			say "best quarterbacks we have ever had. He'll spot any opening and weakness and know where to run, carrying the ball to victory!' ";
	say "It is quite clear just how proud Jennifer is about your offspring as the young woman continues to tell you several antics about his latest victories. By the time she winds down a bit, you know a number of interesting stories about your kid, and have the warm feeling of having put someone special into the world.[if Jenniferwolves > 1] Yet things do not end there, as you have fathered further children with the young woman, whom she points out to you one by one, explaining their virtues in detail too.[end if]";

to say JenniferMartialSkillTalk:
	say "     Jennifer smiles and brushes some strands of long blonde hair out of her face, then explains, 'Oh, you want to know why I was able to take down Keefer? Well, a few things come into play there. For one, coach Martens always was a firm believer in self defense classes. She didn't want any of her girls fall victim to groping or worse, especially with us accompanying the team to all those games in other cities. Unfamiliar places, drunk football fans, and all that - you can imagine that it can quickly get out of hand.' The young woman's expression darkens a little, with Jennifer pressing her lips together for a second, then letting out a sigh. 'I wish we knew what happened to her - our coach. She was with us when the bus crashed, and the beast was still rutting her when just about everyone else fell unconscious in exhaustion.'";
	say "     'When we eventually woke up again, with nothing but ripped uniforms on our bodies and the first of our boys growing in our bellies, she and the bus driver were nowhere to be found. Who knows, maybe they were taken by the beast and became his she-wolves...' Falling silent after letting those words fade out, maybe imagining a 'nice' fate for a woman she obviously looked up to, Jennifer eventually shrugs it off and focuses on you again. 'Anyways, we were left there, alone on the wrecked bus, naked and pregnant. But something clearly had happened to all of us. I mean - we just knew that what was inside us was going to he very special and felt great about carrying the future of the team, but it still was a shock for everyone to have been raped and stranded like that. And quite strangely, all physical marks of the wolf being quite [italic type]rough[roman type] when he took us had vanished!'";
	WaitLineBreak;
	say "     Taking your hand and pulling it to her chest, then moving it down over flawless skin and enticing curves as if to show that she is quite perfect and desirable, Jennifer adds, 'All of us had been scratched up from his claws, and the beast ripping away clothes with his teeth. But all of that was gone, like the marks never had been there. And when I led my girls away to search for a place to stay - and have our babies - something attacked us out on the street. It was a weird thing, like a walking statue made from living metal. The interesting thing is that we actually were able to fight it off! I was a bit weirded out at being able to [italic type]bend[roman type] its metal limbs as they were trying to strike me at first, but got used to it quickly. After all, it was my responsibility to lead and protect the others as head cheerleader. And of course, a strong team needs strong and tough mothers, ha!'";
	say "     Smiling happily as she lets her gaze wander over the gathered wolfmen and cheerleaders, she clearly is very content with what the little band of young women brought to bear under her leadership. With a chuckle, Jennifer circles her nipples on both sides, making them hard and erect and then giving some soft pinches to them. 'We definitely needed to be tough after the boys were born too. I can tell you that the little ones were greedy for milk right away, and all too quickly grew teeth. But even the marks of overly eager suckling just vanished in moments. Anyways, overall I can say that me and the girls are not as fragile as we may appear, and we're athletic and trained in self defense too. A number of beasts we can across before moving into this place had to learn that the hard way.' Raising her head and looking at you with a very confident expression, the young woman is a sight to behold - naked and very pleasant on the eyes, yet also strong and fierce.";

Instead of fucking the Jennifer:
	if Jenniferfucked is 0: [first time]
		if player is male: [males]
			say "     You let your gaze wander over Jennifer's naked form, your manhood hardening as you watch her lithe body. As your looks meet for a moment, you indicate your growing bulge - and from the answering lust-filled twinkle in her eye it looks like you're gonna get some action. Eagerly, you strip off your clothing, revealing your naked [bodytype of player] body to the watching crowd of wolfmen and cheerleaders. Jennifer takes two bouncy steps closer then jumps up on you, wrapping her legs around your hips and pulling your head to hers with both hands for a deep kiss. You inevitably find yourself holding the lightweight young woman by her perky ass, tongue-wrestling with a very enthusiastic partner. While you're still a bit dazed by another deep kiss, she reaches down to grab your cock and holds it upwards so she can sink her pussy on top of it.";
			LineBreak;
			say "     It's an amazing feeling to be inside Jennifer, rubbing against the inner walls of her pussy with your shaft as she slides up and down on your cock. Years of gymnastics training have left her very flexible and you bet she could take any size of cock - and having well trained muscles to also grip it tightly and make the fuck a memorable one. With Jennifer bouncing up and down on your cock, her perky breasts are directly in front of your face so you catch one with your mouth and start sucking on it, running your tongue over its nipple.";
			say "     Fucking the hot little cheerleader in the midst of her cheering friends and wolfmen offspring, you quickly feel a rising pressure in your balls. As you gasp that you're close to blowing your load, she answers, 'Ok, hold my legs tight then.' You grasp her slender thighs and before you can wonder much about what she'll do, Jennifer leans back, back and further back until she's basically doing a handstand, only connected to you through your cock in her now upside-down pussy and your hands holding her legs. She tightens her muscles around your manhood, prompting you to fuck her harder.";
			say "     Soon, you reach the point of no return, gasping loudly as your seed shoots into Jennifer's body. Your forceful spurts and the helping force of gravity make sure all of it ends up deep inside her ready womb. The crowd around you cheers and you can hear moans and lustful growls echo through the warehouse as many of them decide to follow your lead, both in the private section and right around you in the training area. Meanwhile, you slowly go down to your knees, lowering Jennifer to lie on her back with your cock still deep inside her and lean over her to make out.";
			let Jpregchance be a random number from 1 to 20;
			if Jpregchance > 10:
				now Jenniferpregnant is 48;      [48h till birth]
				now thirst of Jennifer is 1;     [invisible pregnancy for the first 24h]
				if Jenniferwolves is 0: [first kid]
					FindHighestPlayerStat;
					now JenniferFirstKidSpecialStat is HighestPlayerStat;
		else if player is female: [females]
			say "     You let your gaze wander over Jennifer's naked form, your pussy getting wet as you watch her lithe body. As your looks meet for a moment, you give her a suggestive wink - and from the answering lust-filled twinkle in her eye it looks like you're gonna get some action. Eagerly, you strip off your clothing, revealing your naked [bodytype of player] body to the watching crowd of wolfmen and cheerleaders. Jennifer takes two bouncy steps closer then jumps up on you, wrapping her legs around your hips and pulling your head to hers with both hands for a deep kiss. You inevitably find yourself holding the lightweight young woman by her perky ass, tongue-wrestling with a very enthusiastic partner. While you're still a bit dazed by another deep kiss, she reaches down to fondle your pussy lips. 'Let's have some girl-time,' she says and directs you to carry her over to a nearby bunk bed.";
			say "     There, you lie down side by side, head to hip. Jennifer starts out stroking and fondling your pussy, licking over its folds and rubbing the sensitive clit. You follow suit, imitating her very arousing caresses as best as you can. You don't know exactly how long you two spend pleasing each other, so lost are you in the bliss she fills you with. Only when you reach the peak of your arousal and orgasm, you become aware of your surroundings again and the group of cheerleaders and their wolfmen offspring who cheer you on. As you fall back and lie on the bunk writhing, riding out the orgasm, you feel something soft and furry brush against your leg. It's Septus, grinning up at you, then opening his muzzle to lap at your dripping pussy. He slurps up the juices running out of you and keeps licking you, even sticking his long tongue inside, prolonging your pleasant buzz even more.";
			say "     In the end, you sit back up on the bunk, flanked by both Jennifer and her son, making out with both of them. The onlookers were quite riled up from the show, and you hear moans and lustful growls echo through the warehouse, both in the private section and right around you in the training area.";
		else: [neuter]
			say "     You let your gaze wander over Jennifer's naked form, arousal bubbling up inside you as you watch her lithe body. As your looks meet for a moment, you give her a suggestive wink - and from the answering lust-filled twinkle in her eye it looks like you're gonna get some action. Eagerly, you strip off your clothing, revealing your naked [bodytype of player] body to the watching crowd of wolfmen and cheerleaders. Jennifer takes two bouncy steps closer then jumps up on you, wrapping her legs around your hips and pulling your head to hers with both hands for a deep kiss. You inevitably find yourself holding the lightweight young woman by her perky ass, tongue-wrestling with a very enthusiastic partner. While you're still a bit dazed by another deep kiss, she reaches down to caress your body, stroking your crotch area especially. She directs you to carry her over to a nearby bunk bed.";
			say "     There, you lie down side by side, head to hip. Jennifer runs her fingers over your skin, creating pleasant tingly feelings inside you while you lick and finger her pussy. You don't know exactly how long you two spend pleasing each other, so lost you become in the bliss she fills you with. Only when you reach the peak of your arousal and an orgasm shakes your body, you become aware of your surroundings again and the group of cheerleaders and their wolfmen offspring who cheer you on. As you fall back and lie on the bunk writhing, riding out the orgasm, you feel something soft and furry brush against your leg. It's Septus, grinning up at you, then opening his muzzle to lap at your crotch. He runs his warm tongue over the area a pussy would be while stroking his strong hands up and down your legs, prolonging your pleasure with his caressing touch.";
			say "     In the end, you sit back up on the bunk, flanked by both Jennifer and her son, making out with both of them. The onlookers were quite riled up from the show, and you hear moans and lustful growls echo through the warehouse, both in the private section and right around you in the training area.";
		now lastfuck of Jennifer is turns;
		now Jenniferfucked is 1;
	else if Jenniferfucked > 0: [repeat sex]
		if (lastfuck of Jennifer - turns < 6 and HP of Septus < 7):
			say "     As you approach Jennifer, she immediately sees the lust-filled twinkle in your eyes. Running her hand over your cheek and pulling you in for a quick kiss on the lips, she says 'I'd love to sweety, but I do have some training of my own to do. Can't afford getting rusty with the moves - and the boys would be disappointed if I didn't train with them.' Giving you an apologetic pat on the arm, she steps over to the other cheerleaders to go though very flexible and... bouncy naked gymnastics moves. You decide to join the wolfmen a while as they watch the girls.";
		else if lastfuck of Jennifer - turns < 4 and HP of Septus >= 7 and HP of Septus < 50: [team leader]
			say "     As you approach Jennifer, she immediately sees the lust-filled twinkle in your eyes. Running her hand over your cheek and pulling you in for a quick kiss on the lips, she says 'Oh, I'd love to take a break with our sexy manager, but I do have some training of my own to do. The girls are working on a new move and they'll need me there to help them get it right. I'm sure you understand that while I'm all yours, I've still got my obligations to the team as well. Still, since I don't need to spend time with the other boys, I should be free for you more often.' Giving you a playful grope and another kiss, she steps over to the other cheerleaders to go though very flexible and... bouncy naked gymnastics moves. You decide to join the wolfmen a while as they watch the girls.";
		else if lastfuck of Jennifer - turns < 4 and HP of Septus >= 50 and HP of Septus < 99: [cheer-leading player]
			say "     As you approach Jennifer, she immediately sees the lust-filled twinkle in your eyes. Running her hand over your cheek and pulling you in for a quick kiss on the lips, she says 'Oh, while we often do have some... fun times with each other in the squad, cheer-leading does take some hard work. Sorry, but I do have some training of my own to do. The girls are working on a new move and they'll need me there to help them get it right. I'm sure you understand - and you're welcome to join us.' Giving you a playful grope and another kiss, she steps over to the other cheerleaders to go though very flexible and... bouncy naked gymnastics moves. Maybe you really should join their training sometime and get to learn more moves with your pom-poms...";
		else:
			if HP of Septus < 7 and lust of Jennifer > 0 and the remainder after dividing lust of Jennifer by 3 is 0 and player is male:
				say "     Heading off to grab Jennifer for some fun, you spot her finishing up with [one of]a pair of players[or]one of the other players[or]another wolfman[or]a wolfman's cock in her mouth[or]sucking off a pair of wolves[at random]. Being horny, having to wait and watch is a little frustrating. You can't help but think it'd be nice to not have to share her around with the whole team and wonder how you might be able to manage that. This is only added to as she comes over to you still sticky with cum from the encounter. Not noticing the possessive look you're giving her, she smiles and heads over to you, eager as always for more.";
			else if HP of Septus > 49:
				say "     Heading off to grab Jennifer for some fun, you spot her finishing up with [one of]a pair of players[or]one of the other players[or]a wolfman's cock in her mouth[or]sucking off a pair of wolves[at random]. You're tempted to simply join her take care of the handsome and strong players, but Jennifer finishes up, then comes over to you all still sticky with cum from the encounter. She smiles as she approaches, eager as always for more.";
			else:
				say "     You walk over to Jennifer, who immediately starts smiling as she sees the lust-filled twinkle in your eyes[if HP of Septus >= 7 and HP of Septus < 50]. 'Ready to take your privilege as team manager,' she says with a grin, stretching her naked body in a sexy display of the lead cheerleader's lovely form[end if].";
			wait for any key;
			say "[JenniferSexMenu]";

to say JenniferSexMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Have her blow your cock";
		now sortorder entry is 1;
		now description entry is "Put the cheerleader's mouth to good use";
	[]
	if player is female:
		choose a blank row in table of fucking options;
		now title entry is "Have her lick your pussy";
		now sortorder entry is 2;
		now description entry is "Put the cheerleader's mouth to good use";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Finger her pussy";
	now sortorder entry is 3;
	now description entry is "Finger-fuck Jennifer's pussy to make her cum";
	[]
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Fuck her pussy";
		now sortorder entry is 4;
		now description entry is "Fill the cheerleader with your cock";
	[]
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Take Jennifer's ass";
		now sortorder entry is 5;
		now description entry is "Fill the cheerleader's ass with your cock";
	[]
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Share Jennifer with Septus";
		now sortorder entry is 6;
		now description entry is "Have a hot threesome with them.";
	[]
	Sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
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
				if (nam is "Have her blow your cock"):
					say "[JenniferSex1]";
				else if (nam is "Have her lick your pussy"):
					say "[JenniferSex2]";
				else if (nam is "Finger her pussy"):
					say "[JenniferSex3]";
				else if (nam is "Fuck her pussy"):
					say "[JenniferSex4]";
				else if (nam is "Take Jennifer's ass"):
					say "[JenniferSex5]";
				else if (nam is "Share Jennifer with Septus"):
					say "[JenniferSex6]";
				now lastfuck of Jennifer is turns;
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from Jennifer, shaking your head slightly as she gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say JenniferSex1: [cock sucked by Jennifer]
	say "     Quickly stripping off your clothing, you give Jennifer a deep kiss, then push softly on her shoulders. She kneels down in front of you, smiling up at you and licking her lips as she takes hold of your [cockname of player] shaft. [if HP of Septus >= 7 and HP of Septus < 50]'Mmm... you've been working so hard for the team, my sexy manager. I think you've earned a special treat.' [end if]Holding it up, she starts licking your balls, then runs her tongue up the underside of the shaft, creating a tingly pleasant feeling inside you. As she arrives at the tip, she licks over it, playing with the slit with the tip of her tongue. Then she takes the cockhead into her mouth, softly sucking at it before she returns to lick your balls and shaft.";
	if HP of Septus >= 7 and HP of Septus < 50: [team manager]
		say "     As an added flair between her oral action, she squeezes those buxom breasts for hers around your cock and balls. The feel of her soft, warm flesh against yours makes your penis twitch and dribble with precum. She grins at the sight of it and playfully licks it all up, pleased with herself at having gotten you so worked up. You smile down at her, stroke her head tenderly and moan in pleasure as she works your cock back into her mouth.";
	say "     As you're expertly pleasured by Jennifer, cat-calls and whistles start up from the wolfmen around you[if HP of Septus >= 7 and HP of Septus < 50] and you can't help but smile all the more, knowing this sexy cheerleader's all yours[end if]. You moan loudly as she starts to stroke her hands up and down your cock in between licks and fondles your balls as they build up a heavy load. Pretty soon, you're panting at each of her licks. Anticipating your impending orgasm, she puts her lips around the head of your [cock of player] cock and starts stroking you faster and faster until you quickly reach the point of no return.";
	if HP of Septus < 7 or HP of Septus >= 50: [normal team member or cheerleader]
		say "     Your legs get a bit shaky as an incredible feeling floods your body and spurt after spurt of cum blast into Jennifer's waiting mouth. Two of the wolfmen, Eleven and Nineteen step up beside you and grab your shoulders so you don't fall down. After the last jet of cum, Jennifer sucks on your cock a bit more till it gets soft, then smiles up at you and sticks out her tongue to show you your load. Then she closes her mouth and demonstratively swallows it all. Nineteen presents his own hard wolfman cock to Jennifer and she gets to work blowing him too. 'Your mom is the best cocksucker there is. This feels amazing,' he says to Eleven, who grins and replies 'I know.' and strokes himself, awaiting his turn.";
	else: [team manager]
		say "     With your hands resting on her shoulders, you release a long, low moan of pleasure as you cum hard, pumping your [cum load size of player] load into your personal cheerleader for all watching to see. Jennifer swallows it all down while her tongue plays across your spurting shaft with practiced ease, her time as the team's favorite breeder having trained her well. After the last jet of cum, Jennifer sucks on your cock a bit more till it gets soft, then smiles up at you and sticks out her tongue to show you the last of your load. Then she closes her mouth and demonstratively swallows it all with a loud 'Mmmm.'";
		say "     After such a sexy show, the other wolfmen around have gotten quite aroused. Jennifer makes a teasing show of stretching as she gets up. She gives you a kiss during which you squeeze her ass and finger her juicy pussy. After you release her, she goes over to two of the horny wolves and, taking their cocks in hand, leads them off with a giggle towards two [one of]free[or]available[or]other[or]naked[at random] cheerleaders [one of]they can mount[or]eager for a fuck[or]who start to suck them off while Jennifer coaches them on her technique[at random].";
	increase lust of Jennifer by 1;

to say JenniferSex2: [cunt licked by Jennifer]
	say "     Quickly stripping off your clothing, you give Jennifer a deep kiss, then push softly on her shoulders. She kneels down in front of you, smiling up at you and licking her lips[if HP of Septus >= 7 and HP of Septus < 50]. 'Mmm... let's deal with this juicy problem of yours, my sexy manager,' she purrs with a grin[end if].";
	if HP of Septus < 7 or HP of Septus >= 50: [normal team member or cheerleader]
		say "     She starts by running her tongue over the sensitive folds of your pussy, then inserts two fingers to rub your insides, creating a tingly pleasant feeling inside you. As a woman, she really knows what she's doing, rubbing just the right spots and softly sucking on your clit. Her expert touch creates a lustful buzz, making you swoon a bit until a wolfman, Number Sixteen steps up and grabs hold of your shoulder so you don't fall over. He grins as you moan deeply when Jennifer pushes her fingers deeper inside you and joins in, stroking your body with a strong hand. As Jennifer and Sixteen caress your body, cat-calls and whistles start up from the wolfmen around you. They cheer your two partners on as your gasps and moans get louder and louder until you finally reach the peak of your arousal and have a messy orgasm, squirting femcum over Jennifer's hand. She stands up and holds out her arm to Sixteen so he can lick up your juices, then steps aside to let him lap more of it up directly from your pussy.";
	else: [team manager]
		say "     She starts by running her tongue over the sensitive folds of your pussy, then inserts two fingers to rub your insides, creating a tingly pleasant feeling inside you. As a woman, she really knows what she's doing, rubbing just the right spots and softly sucking on your clit. Having had a lot of practice on the other cheerleaders as well as being flexible enough to do it to herself, her expert tongue and fingers have you moaning within moments. She plays her tongue across your sensitive folds and rubs at your clit, causing shivers of delight to run through your entire body[if anallevel is 3] as she pushes a finger slick with her own pussy juices into your ass as well[end if].";
		say "     As Jennifer continues to pleasure you, the wolfmen and cheerleaders around grow louder with whistles, cat-calls and cheers of their own as your gasps and moans get louder and louder until you finally reach the peak of your arousal and have a messy orgasm, squirting femcum over Jennifer's hand and face. She eagerly licks your thighs clean, lapping away your juices and even pushing you to a second climax before moving back. Around, you can see that many of those watching have paired off and are enjoying some fun of their own, inspired by the team's star couple.";

to say JenniferSex3: [Jennifer's cunt licked/fingered]
	say "     Quickly stripping off your clothing, you give Jennifer a deep kiss, then lead her over to a nearby bench and have her lie down on it with her legs hanging off one end. Kneeling down in front of her, you pull her legs apart, revealing her moist pussy between them[if HP of Septus >= 7 and HP of Septus < 50]. Running your eyes over her beautiful cunt, you can't help but smile at the fact that it's all yours... and you intend to enjoy it right now[end if].";
	if HP of Septus < 7 or HP of Septus >= 50:
		say "     You start by running your tongue over the sensitive folds of your pussy, then insert two fingers to rub her insides, making Jennifer pant in lust. A wolfman, Number Sixteen steps up and joins in, fondling her breasts and sucking on her nipples while you're busy down between her legs. He grins at you when you look up for a moment, and together you comfort Jennifer's body with your hands and tongues. Cat-calls and whistles start up from the wolfmen around you as they step closer to watch the three of you go at it. They cheer you on as Jennifer's gasps and moans get louder and louder until she finally reaches the peak of her arousal and has a messy orgasm, squirting femcum over your hand. You lick some of it off yourself, then hold out your hand to the wolfman to let him taste her too.";
	else:
		say "     You start by running your tongue over the sensitive folds of your pussy, then insert two fingers to rub her insides, making Jennifer pant in lust. You pump your fingers into her wet hole, lapping up the juices at leak from it and flicking across her clit. The scent and taste of it is very arousing, making you look forward to [if player is not male]getting a cock so you can fuck her and breed her again soon[else]fucking her and breeding her again soon[end if].";
		say "     Cat-calls and whistles start up from the wolves and girls around you as they step closer to watch the team's top couple go at it. They cheer you on as Jennifer's gasps and moans get louder and louder until she finally reaches the peak of her arousal and has a messy orgasm, squirting femcum over your hand and onto your face. You lick some of it off yourself, then hold out your hand to the sexy girl, which she makes a show of sucking off your fingers while you lick her thighs clean. This whole show gets several of the wolves around quite hard and the girls quite wet, resulting in some lustful fucking breaking out, making for an arousing show as you enjoy a playful snuggle with your special girl as she basks in the afterglow.";

to say JenniferSex4: [Jennifer's pussy fucked by player]
	if thirst of Jennifer is 2: [pregnant version]
		say "     Jennifer strokes her bulging belly and remarks 'This pregnancy makes me horny as fuck. I need [if HP of player < 7]a[else]your[end if] cock inside me.'";
		say "     Not one to disappoint, you quickly slide off your gear and guide the naked cheerleader to a nearby bench. You kiss her deeply while running a caressing hand over her breasts and belly down to her moist pussy. Sitting on the bench and lying down lengthwise on it, you hold your by now rock-hard erection straight up for her. Jennifer steps up, aligning her folds with the tip of your cock and then slowly starts to sink down on it. It's still amazing to you how tight she can grasp you with a pussy that has taken a lot of large cocks and birthed several wolfmen. Years of gymnastics training really paid off, you'd say[if HP of Septus >= 7 and HP of Septus < 50], and now it's all yours to enjoy[end if].";
		if HP of Septus >= 7 and HP of Septus < 50:
			say "     You run your hands over her hips and knead that sexy ass of hers while the pregnant wolf-breeder rides yours [cock size desc of player] [cock of player] shaft[if cock length of player > 18] like a champ[end if]. The hot juices of her arousal run down your shaft and over your balls as she moans and pants loudly, her body needing a good fucking from the team's studly manager. You rub your hands over her rounded belly, grinning in the knowledge that it's your strong pups in her this time and from now on.";
		say "     Fucking the pregnant cheerleader in the midst of her cheering friends and wolfmen offspring, you quickly feel a rising pressure in your balls. Grabbing her hips, you pull her down on you harder and faster, making both of you moan in pleasure. Then you reach your climax, spurting blast after blast of cum deep inside her, filling her with your [cum load size of player] load. Jennifer leans down over you her baby bulge pressing against your stomach as she gives you a kiss and says 'Thanks, I really needed that.'";
	else: [regular version]
		say "     Sliding off your clothes and stepping up to Jennifer with a very erect and ready cock makes her squeal in anticipation. The perky little gymnast takes two bouncy steps closer, then just jumps up into your arms, wrapping her legs around your hips. You find yourself holding the lightweight young woman by her firm ass, tongue-wrestling with her as she pulls your head up for a very enthusiastic make-out session. While you're still a bit dazed by another deep kiss, she reaches down to grab your [cock of player] cock and holds it upwards so she can sink her pussy on top of it.";
		say "     It's an amazing feeling to be inside Jennifer, rubbing against the inner walls of her pussy with your shaft as she slides up and down on your cock. Years of gymnastics training have left her very flexible and you bet she could take any size of cock - and having well trained muscles to also grip it tightly and make the fuck a memorable one[if HP of Septus >= 7 and HP of Septus < 50]. And knowing that wonderful cunt is all yours to fuck, fill and breed makes you all the happier[end if]. With Jennifer bouncing up and down on your cock, her breasts are directly in front of your face so you catch one with your mouth and start sucking on it, running your tongue over its nipple.";
		if HP of Septus >= 7 and HP of Septus < 50:
			say "     You both vary the pace of your fucking, working together to make it as long and enjoyable as you can[if anallevel is 3 and a random chance of 2 in 5 succeeds]. After rubbing your hand alongside your cock to caress her wet folds, you reach back and grab her ass. You move a slick finger to her anus and slip in into her, causing her to moan in surprised pleasure at the unexpected, kinky intrusion[else]. After rubbing your hand alongside your cock to caress her wet folds, you bring your hand up to her breast and smear her sticky juices around her nipple. She moans in pleasure at your slick touch and then again as you move your lips to that nipple to lick and suck on it[end if]. This added fun gets you both quite aroused as rides your [cock of player] cock with even greater zeal.";
		say "     Fucking the hot little cheerleader in the midst of her cheering friends and wolfmen offspring, you quickly feel a rising pressure in your balls. As you gasp that you're close to blowing your load, she answers, 'Ok, hold my legs tight then.' You grasp her slender thighs as Jennifer leans back, back and further back until she's basically doing a handstand, only connected to you through your cock in her now upside-down pussy and your hands holding her legs. She tightens her muscles around your manhood, prompting you to fuck her harder in this new position.";
		say "     Soon, you reach the point of no return, gasping loudly as your seed shoots into Jennifer's body. Your forceful spurts and the helping force of gravity make sure all of your [cum load size of player] load ends up deep inside her ready womb. The crowd around you cheers and you can hear moans and lustful growls echo through the warehouse as many of them decide to follow [if HP of Septus < 7]your[else]the team's top couple's[end if] lead, both in the private section and right around you in the training area. Meanwhile, you slowly go down to your knees, lowering Jennifer to lie on her back with your cock still deep inside her and lean over her to make out some more.";
		let Jpregchance be a random number from 1 to 20;
		if HP of Septus >= 7, increase jpregchance by 2;
		if Jpregchance > 10 and thirst of Jennifer is 0:
			now Jenniferpregnant is 48;
			now thirst of Jennifer is 1;
			if Jenniferwolves is 0: [first kid]
				FindHighestPlayerStat;
				now JenniferFirstKidSpecialStat is HighestPlayerStat;
	increase lust of Jennifer by 1;

to say JenniferSex5: [fucking Jennifer's ass]
	if thirst of Jennifer is 2: [pregnant version]
		say "     Jennifer strokes her bulging belly and remarks 'This pregnancy makes me horny as fuck. I need [if HP of player < 7]a[else]your[end if] cock inside me.'";
		say "     Not one to disappoint, you quickly slide off your clothes and guide the naked cheerleader to a nearby bunk. You kiss her deeply while running a caressing hand over her breasts and belly down to her moist pussy. Pushing a finger inside, you get it wet with her juices, then turn her around and push it against her pucker. She yelps at the unexpected entrance into her rear, then starts moaning as you rub her insides. Soon you add a second finger, spreading her a bit more and get her ready and panting for your cock.";
		say "     You have her get on all fours on the bunk, then step up behind her and press your manhood into her rear entrance. With her loosened up by your fingering, you have no problems sinking down into her tight embrace and start pumping in and out. From her reaction and the incredibly tight grip around your penis, you don't think she's had anal sex all that often[if HP of Septus >= 7 and HP of Septus < 50] and grin in the knowledge that now that fine ass of hers is yours to break in[end if].";
		if HP of Septus >= 7 and HP of Septus < 50:
			say "     You take your time with fucking her, wanting to draw it out and further train your special girl to take it up the ass whenever you want to lay claim to that sexy bottom of hers. As you thrust into that tight hole of hers, you let your hands roam over her body, squeezing her breasts, pinching her nipples, rubbing her pregnant belly and fingering her pussy so she's increasingly turned on by getting her ass stuffed with your [cock of player] cock. Playing with her body like this also gets you all the more aroused, your achingly hard cock throbbing inside her.";
		say "     Fucking the pregnant cheerleader in the ass in the midst of her cheering friends and wolfmen offspring, you quickly feel a rising pressure in your balls. Grabbing her hips, you slam your hips against her ass harder and faster, making both of you moan in pleasure. Then you reach your climax, spurting blast after blast of cum deep inside her ass[if HP of Septus >= 7 and HP of Septus < 50], staking your claim on it as well[end if] as you pump your [cum load size of player] load into her sexy rear. When you pull your softening erection out of her a while later, Jennifer gives you a kiss and says 'Thanks, I really needed that.'";
	else: [regular version]
		say "     Sliding off your clothes and stepping up to Jennifer with a very erect and ready cock makes her squeal in anticipation. The perky little gymnast takes two bouncy steps closer, then just jumps up into your arms, wrapping her legs around your hips. You find yourself holding the lightweight young woman by her firm ass, tongue-wrestling with her as she pulls your head up for a very enthusiastic make-out session. Reaching down for your hard cock, you hold it up and start pushing the tip against Jennifer's tight asshole. She looks a bit surprised at first that you don't want to fuck her pussy, then goes with the flow and pushes her ass downwards until your cock pops in.";
		say "     It's an amazing feeling to be inside Jennifer's ass, rubbing against the inner walls with your shaft as she slides up and down on your cock. From her reaction and the incredibly tight grip around your penis, you don't think she's had anal sex all that often[if HP of Septus >= 7 and HP of Septus < 50] and grin in the knowledge that now that fine ass of hers is yours to break in[end if]. With Jennifer bouncing up and down on your cock, her breasts are directly in front of your face so you catch one with your mouth and start sucking on it, running your tongue over its nipple.";
		if HP of Septus >= 7 and HP of Septus < 50:
			say "     You take your time with fucking her, wanting to draw it out and further train your special girl to take it up the ass whenever you want to lay claim to that sexy bottom of hers. As you thrust into that tight hole of hers, you let your hands roam over her body, squeezing her breasts, pinching her nipples and fingering her pussy so she's increasingly turned on by getting her ass stuffed with your [cock of player] cock. Playing with her body like this also gets you all the more aroused, your achingly hard cock throbbing inside her.";
		say "     Fucking the hot little cheerleader in the midst of her cheering friends and wolfmen offspring, you quickly feel a rising pressure in your balls. As you gasp that you're close to blowing your load, she answers, 'Ok, hold my legs tight then.' You grasp her slender thighs as Jennifer leans back, back and further back until she's basically doing a handstand, only connected to you through your cock in her now upside-down ass and your hands holding her legs. With this new position, both of you get different feelings from the fucking, making you moan loudly and prompting you to fuck her harder and harder.";
		say "     Soon, you reach the point of no return, gasping loudly as your seed shoots into Jennifer's body. Your forceful spurts and the helping force of gravity make sure all of your [cum load size of player] load ends up deep inside her body, although your little swimmers of course search in vain for an egg in her ass. The crowd around you cheers and you can hear moans and lustful growls echo through the warehouse as many of them decide to follow [if HP of Septus < 7]your[else]the team's top couple's[end if] lead, both in the private section and right around you in the training area. Meanwhile, you slowly go down to your knees, lowering Jennifer to lie on her back with your cock still deep inside her and lean over her to make out some more while keeping your hot, sticky load buried inside her.";
	increase lust of Jennifer by 1;

to say JenniferSex6: [sharing Jennifer with Septus][***]
	if HP of Septus < 7:
		say "     Pulling Septus aside, you ask him if he wants to do a threesome with Jennifer and you, and he eagerly agrees. He obviously can't wait to get it on with the cheerleader and while you take off your clothing, his shaft rapidly slides out of its sheath and hardens. 'Come on buddy,' he says, putting his arm around your shoulders. 'Between me and you' - he reaches down with that and gives your own hardening shaft a few jerks - 'it'll be something she won't soon forget.'";
	else if HP of Septus >= 7 and HP of Septus < 50:
		say "     Pulling Septus aside, you tell him what a great job he's been doing as team captain and ask if he wants a well-earned threesome with Jennifer and you, to which he eagerly agrees. He obviously can't wait to get it on with the cheerleader and while you take off your clothing, his shaft rapidly slides out of its sheath and hardens. 'Come on, buddy,' he says, putting his arm around your shoulders. '[if HP of Septus is 7]The other girls are fine, but they just to compare to her[else]***[end if]. I've been looking forward to some more fun with the team's star couple. And with how much I miss fucking her, between me and you, manager' - he reaches down with that and gives your own hardening shaft a few jerks - 'it'll be something she won't soon forget.'";
	else if HP of Septus >= 50:
		say "     Pulling Septus aside, you ask him if he wants to do a threesome with Jennifer and you, and he eagerly agrees. He obviously can't wait to get it on with two cheerleaders and while you take off your clothing, his shaft rapidly slides out of its sheath and hardens. 'Come on,' he says, putting his arm around your shoulders. 'Between me and you' - he reaches down with that and gives your own hardening shaft a few jerks - 'it'll be something she won't soon forget.'";
	if thirst of Jennifer is 2: [pregnant version]
		say "     The two of you walk over to Jennifer together, your cocks getting just a bit harder as you watch her naked body with its bulging, pregnant belly from close up. Seeing the erections pointing at her, she smiles and remarks. 'I see you boys want to have some fun. Good... this pregnancy makes me horny as fuck. I need a cock - or two - inside me.'";
		LineBreak;
		say "     Taking one cock in each hand, she guides you over to a nearby bunk and pushes Septus to sit on it, then takes a wide stance with her legs and bends over to suck him. You're left standing behind her, your manhood pointing straight at the moist and swollen pussy of the young human woman. Not able to resist entering that inviting cave, you bring your hips forward, cock sliding in between her pussy lips. Jennifer's moans are a bit muffled because of the wolfman cock in her mouth, but she clearly enjoys being filled by your [cock of player] shaft. While you thrust in and out of her body from behind, Septus has his hands on her head, pumping it up and down on his wolfman cock and panting in lust.";
		if HP of Septus < 7:
			say "     Fucking and getting sucked, the wolfman and you grin at each other, thoroughly enjoying Jennifer's body. 'Great fuck, isn't she? But you should try her mouth too - come on, let's switch.' A bit reluctantly, you pull out of the hot cheerleader's body and take Septus's place on the bunk. She immediately grabs hold of your manhood, running her tongue up over its underside before putting the tip in her mouth and sliding her lips down over the shaft. Man, she really knows what she's doing, you think to yourself as you moan loudly.";
		else if HP of Septus >= 7 and HP of Septus < 50:
			say "     Fucking and getting sucked, the wolfman and you grin at each other, thoroughly enjoying Jennifer's body. 'You're lucky to have such a great fuck as your special girl. It's awesome of you to share her as well. Speaking of, let's switch spots.' A bit reluctantly, you pull out of the hot cheerleader's body and take Septus's place on the bunk. She immediately grabs hold of your manhood, running her tongue up over its underside before putting the tip in her mouth and sliding her lips down over the shaft. As she sucks your cock in, you're again glad that you don't have to share her with the rest of the team anymore.";
		else if HP of Septus >= 50:
			say "     Fucking and getting sucked, the wolfman and you grin at each other, thoroughly enjoying Jennifer's body. 'You're lucky to have such a great fuck as your teammate. I bet you fuck her all the time while you train, don't you? So how about letting me have some of that pussy too - come on Let's switch.' A bit reluctantly, you pull out of the hot cheerleader's body and take Septus's place on the bunk. She immediately grabs hold of your manhood, running her tongue up over its underside before putting the tip in her mouth and sliding her lips down over the shaft. Man, she really knows what she's doing, you think to yourself as you moan loudly.";
		say "     Giving you a knowing wink, Septus then rubs his lupine cock up against Jennifer's ass and bends over her, licking her back and reaching around to fondle her breasts and belly. He pulls back after that, aims the pointy tip of his lupine cock at her opening and slams forward in one mighty thrust. Something more animalistic in him takes hold as the wolfman mounts the cheerleader, holding onto her tightly and relentlessly rutting with her. With Jennifer still bobbing up and down on your cock, you watch the wild coupling of the muscular male and slender young woman. Before much longer, a deep growl rolls up in Septus throat, followed by a loud wolf's howl as his body shudders, hips still thrusting against Jennifer as he fills her with his seed.";
		LineBreak;
		say "     After getting his breath back, reason returns to Septus eyes and he looks down at his crotch pressed against Jennifer's backside, then over to you. 'Oh, sorry about that - I knotted inside. It's just... sometimes I can't hold back, not with Jennifer. No wonder father managed to knock up a whole busload of girls in one go if this is what he felt all the time.'";
		LineBreak;
		say "     [bold type]With your balls aching to release their load, you don't think you can wait till Septus's knot goes down. So what now?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Give Jennifer a tasty snack.";
		say "     ([link]N[as]n[end link]) - Fuck Septus's ass instead.";
		if player consents:
			LineBreak;
			say "     Eager to get off, you take hold of the cheerleaders head and face-fuck her, pumping your manmeat in and out between her warm lips and into her throat. Soon, you feel the urgent need to cum rise inside you and pull back a bit until just the tip of your cock is inside her mouth. Spurt after spurt of your cum shoot onto Jennifer's tongue and after you're done, she sticks it out to show it to you, then swallows your seed demonstratively.";
		else:
			LineBreak;
			say "     Standing up, you walk around Septus and Jennifer, your eyes roaming over their somewhat sweaty bodies. Pulling the wolfman's tail up, you run your hands through the soft fur on his behind, groping and squeezing his buns before pulling them apart to have a look at his pucker. As you stroke a finger over it and poke a finger in, he gasps 'Please be gentle[if HP of Septus >= 7 and HP of Septus < 50], manager[end if], we usually don't fuck each other.' Reaching around to stroke his chest, you whisper in his ear 'Of course' then aim your cock and push forward, sinking your hard shaft into his hole. It's amazingly tight an warm, gripping you like a vice and allowing only slow progress deeper inside. It takes a moment for Septus to get used to your intruding member, but soon he's silently moaning at the feelings it brings him.";
			say "     Already pretty close to blowing your load through Jennifer's oral attention, it doesn't take long at all until Septus tight hole gives you the rest. With a lustful groan, you grind your crotch against his ass, pushing your member deep inside him as it starts shooting long strands of your seed. After you finish coming, you stay inside him for a while longer, then pull out and keep the two of them company until they can disengage from each other[if HP of Septus >= 7 and HP of Septus < 50]. Jennifer, once off the knot, snuggles up to you, running her hands over your body while you squeeze your special girl's ass[end if].";
	else: [regular version]
		say "     The two of you walk over to Jennifer together, your cocks getting just a bit harder as you watch her naked body from close up. Seeing the erections pointing at her, she smiles and remarks 'I see you boys want to have some fun. Good... I'm horny as fuck. I need a cock - or two - inside me.'";
		LineBreak;
		say "     Taking one cock in each hand, she guides you over to a nearby bunk and pushes Septus to sit on it, then takes a wide stance with her legs and bends over to suck him. You're left standing behind her, your manhood pointing straight at the moist and swollen pussy of the young human woman. Not able to resist entering that inviting cave, you bring your hips forward, cock sliding in between her pussy lips. Jennifer's moans are a bit muffled because of the wolfman cock in her mouth, but she clearly enjoys being filled by your [cock of player] shaft. While you thrust in and out of her body from behind, Septus has his hands on her head, pumping it up and down on his wolfman cock and panting in lust.";
		if HP of Septus < 7:
			say "     Fucking and getting sucked, the wolfman and you grin at each other, thoroughly enjoying Jennifer's body. 'Great fuck, isn't she? But you should try her mouth too - come on, let's switch.' A bit reluctantly, you pull out of the hot cheerleader's body and take Septus's place on the bunk. She immediately grabs hold of your manhood, running her tongue up over its underside before putting the tip in her mouth and sliding her lips down over the shaft. Man, she really knows what she's doing, you think to yourself as you moan loudly.";
		else if HP of Septus >= 7 and HP of Septus < 50:
			say "     Fucking and getting sucked, the wolfman and you grin at each other, thoroughly enjoying Jennifer's body. 'You're lucky to have such a great fuck as your special girl. It's awesome of you to share her as well. Speaking of, let's switch spots.' A bit reluctantly, you pull out of the hot cheerleader's body and take Septus's place on the bunk. She immediately grabs hold of your manhood, running her tongue up over its underside before putting the tip in her mouth and sliding her lips down over the shaft. As she sucks your cock in, you're again glad that you don't have to share her with the rest of the team anymore.";
		else if HP of Septus >= 50:
			say "     Fucking and getting sucked, the wolfman and you grin at each other, thoroughly enjoying Jennifer's body. 'You're lucky to have such a great fuck as your teammate. I bet you fuck her all the time while you train, don't you? So how about letting me have some of that pussy too - come on Let's switch.' A bit reluctantly, you pull out of the hot cheerleader's body and take Septus's place on the bunk. She immediately grabs hold of your manhood, running her tongue up over its underside before putting the tip in her mouth and sliding her lips down over the shaft. Man, she really knows what she's doing, you think to yourself as you moan loudly.";
		say "     Giving you a knowing wink, Septus then rubs his lupine cock up against Jennifer's ass and bends over her, licking her back and reaching around to fondle her breasts. He pulls back after that, aims the pointy tip of his lupine cock at her opening and slams forward in one mighty thrust. Something more animalistic in him takes hold as the wolfman mounts the cheerleader, holding onto her tightly and relentlessly rutting with her. With Jennifer still bobbing up and down on your cock, you watch the wild coupling of the muscular male and slender young woman. Before much longer, a deep growl rolls up in Septus throat, followed by a loud wolf's howl as his body shudders, hips still thrusting against Jennifer as he fills her with his seed.";
		LineBreak;
		say "     After getting his breath back, reason returns to Septus eyes and he looks down at his crotch pressed against Jennifer's backside, then over to you. 'Oh, sorry about that - I knotted inside. It's just... sometimes I can't hold back, not with Jennifer. No wonder father managed to knock up a whole busload of girls in one go if this is what he felt all the time.'";
		LineBreak;
		say "     [bold type]With your balls aching to release their load, you don't think you can wait till Septus's knot goes down. So what now?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Give Jennifer a tasty snack.";
		say "     ([link]N[as]n[end link]) - Fuck Septus ass instead.";
		if player consents:
			LineBreak;
			say "     Eager to get off, you take hold of the cheerleaders head and face-fuck her, pumping your manmeat in and out between her warm lips and into her throat. Soon, you feel the urgent need to cum rise inside you and pull back a bit until just the tip of your cock is inside her mouth. Spurt after spurt of your cum shoot onto Jennifer's tongue and after you're done, she sticks it out to show it to you, then swallows your seed demonstratively.";
			increase lust of Jennifer by 1;
		else:
			LineBreak;
			say "     Standing up, you walk around Septus and Jennifer, your eyes roaming over their somewhat sweaty bodies. Pulling the wolfman's tail up, you run your hands through the soft fur on his behind, groping and squeezing his buns before pulling them apart to have a look at his pucker. As you stroke a finger over it and poke a finger in, he gasps 'Please be gentle[if HP of Septus >= 7 and HP of Septus < 50], manager[end if], we usually don't fuck each other.' Reaching around to stroke his chest, you whisper in his ear 'Of course' then aim your cock and push forward, sinking your hard shaft into his hole. It's amazingly tight an warm, gripping you like a vice and allowing only slow progress deeper inside. It takes a moment for Septus to get used to your intruding member, but soon he's silently moaning at the feelings it brings him.";
			say "     Already pretty close to blowing your load through Jennifer's oral attention, it doesn't take long at all until Septus tight hole gives you the rest. With a lustful groan, you grind your crotch against his ass, pushing your member deep inside him as it starts shooting long strands of your seed. After you finish coming, you stay inside him for a while longer, then pull out and keep the two of them company until they can disengage from each other[if HP of Septus >= 7 and HP of Septus < 50]. Jennifer, once off the knot, snuggles up to you, running her hands over your body while you squeeze your special girl's ass[end if].";
			increase lust of Jennifer by 1;

Jenniferpregnant is a number that varies.
Jenniferwolves is a number that varies.

To say Jenniferoffspring:
	if Jenniferwolves > 1:
		say "Among the wolfmen training around her in the lair, you spot several who have a distinct resemblance of your own features. Those are your [Jenniferwolves] sons, already large and strong and working at becoming champions...";
	else if Jenniferwolves > 0:
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
	if Jenniferpregnant > 1:
		decrease Jenniferpregnant by 1;


Section 5 - Septus, the wolfman talent scout


Table of GameCharacterIDs (continued)
object	name
Septus	"Septus"

Septus is a man. Septus is in Wolfman Lair. The HP of Septus is normally 100.
The description of Septus is "[Septusdesc]".
The conversation of Septus is { "Grrr!" }.
The icon of Septus is Figure of Septus_icon.
lastSeptusfucked is a number that varies. lastSeptusfucked is normally 555.

instead of sniffing Septus:
	say "Septus has a strong, musky male smell.";

to say Septusdesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Septus] <- DEBUG[line break]";
	say "     Septus is a tall and well muscled wolfman, named for the large number seven shown in bright red on his chest and back. He stands on two legs and shows an interesting mix of lupine and human form. His legs are fully digitigrade and end in large paws while his arms are more human-like and end in strong clawed hands[if HP of Septus >= 7 and HP of Septus < 50]. He's taking to his new role at the team captain quite well, working the others through drills and making sure everyone gets their fair share of rec time with the cheerleaders. And he doesn't slack off either, staying in the thick of it with the rest of the players and working himself as hard, if not harder, than them[end if]. He gives you a tooth-filled smile as he notices you looking at him, obviously pleased to see you here in the lair. You give him a nod and a smile back, letting him know to keep up the great work.";

instead of conversing Septus:
	if HP of Septus < 7 or HP of Septus >= 50: [normal teammate or cheerleader]
		say "     [one of]Septus moves a hand down to his crotch and fondles his balls. 'Got to keep these bad boys drained - having blue balls on the field isn't a good idea.'[or]Septus moves a hand down to his crotch and fondles his balls. 'I can't wait till it's my turn with Jennifer again. Mom's just the best.'[or]As you walk towards Septus to talk to him, another wolfman suddenly jumps him from behind and they start wrestling on the ground. You watch them go at it in their drop of the hat training match, totally forgetting that you wanted to talk to Septus.[or]Septus says 'Mom told me that other team's players don't usually suck each other off. Strange, hm? It's such a good team-building exercise, and tastes great too.'[or]As you walk up towards Septus from behind to talk to him, you suddenly realize that he isn't standing there alone after all. On his knees in front of Septus is another wolfman, busy blowing him off. You watch them go at it until Septus blows his load, then kneels to return the favor, totally forgetting that you wanted to talk to Septus.[at random]";
	else if HP of Septus >= 7 and HP of Septus < 50: [team manager]
		say "     [one of]Septus moves a hand down to his crotch and fondles his balls. 'I think I'll be taking another go with Jennifer soon, if you're not using her. Mom's just the best.'[or]Septus says 'Mom told me that other team's players don't usually suck each other off. Strange, hm? It's such a good team-building exercise, and tastes great too.'[or]As you walk up towards Septus from behind to talk to him, you suddenly realize that he isn't standing there alone after all. On his knees in front of Septus is another wolfman, busy blowing his captain. You watch them go at it until Septus blows his load and, always being fair, kneels to return the favor. This show has you forget that you wanted to talk to Septus.[or]'I've been running the team through exercises and things are looking really good. Things are really coming together,' the team captain tells you.[or]Septus says 'I've got my eye on some players for the [if a random chance of 1 in 2 succeeds]offensive lineup[else]defensive lineup[end if]. I'll point them out to you once they're back for a well-earned [']cheer-leading session['],' he adds with a grin.[or]'We've got a lot of fine players with a lot of heart and a lot of cum. We'll totally make the rest of the teams out there our bitches - literally.' You both grin and laugh, really looking forward to it.[or]'With that big celebration, our numbers have gone up nicely. I won't need to go out recruiting anymore and can focus on training with the team.'[or]As you're heading towards Septus, one of the players tosses him the pigskin and a quick game of fuck football breaks out with about a dozen players. It's much like touch football, but with a quick suck or fuck following a successful tackle. Watching your players fooling around while a group of naked cheerleaders cheer them on, you soon forget having wanted to talk with your team captain and instead enjoy the sex show.[at random]";

Instead of fucking Septus:
	[puts Football Wolfman as lead monster in case of impregnation]
	repeat with y running from 1 to number of filled rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		if name entry is "Football Wolfman":
			now monster is y;
			break;
	if (lastfuck of Septus - turns < 5):
		say "     Septus says 'I'm still worn out from last time. Give me a moment to catch my breath...'";
	else:
		if bodyname of player is "Football Wolfman":
			say "     The wolfman gives your furry body an appreciative look as you walk up to him. A smile crosses his muzzle as he asks 'Hey, [if player is female]sister[else]brother[end if]. What's up?'";
		else:
			say "     The wolfman gives your [bodydesc of player] body a long look as you walk up to him. A smile crosses his muzzle as he asks 'Hey, [if player is female]girl[else]man[end if]. What's up?'";
		wait for any key;
		LineBreak;
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		[]
		choose a blank row in table of fucking options;
		now title entry is "Suck Septus's cock";
		now sortorder entry is 1;
		now description entry is "Give him a blow-job.";
		[]
		if player is male:
			choose a blank row in table of fucking options;
			now title entry is "Have him suck your cock";
			now sortorder entry is 2;
			now description entry is "Get a blow-job.";
		[]
		if player is female:
			choose a blank row in table of fucking options;
			now title entry is "Let Septus fuck your pussy";
			now sortorder entry is 3;
			now description entry is "Let the wolfman breed you.";
		[]
		choose a blank row in table of fucking options;
		now title entry is "Let Septus fuck your ass";
		now sortorder entry is 4;
		now description entry is "Let the wolfman fill your ass with his seed.";
		[]
		if player is male:
			choose a blank row in table of fucking options;
			now title entry is "Take Septus ass";
			now sortorder entry is 5;
			now description entry is "Fill the wolfman's ass with your cock.";
		[]
		sort the table of fucking options in sortorder order;
		repeat with y running from 1 to number of filled rows in table of fucking options:
			choose row y from the table of fucking options;
			say "[link][y] - [title entry][as][y][end link][line break]";
		say "[link]0 - Nevermind[as]0[end link][line break]";
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
					if nam is "Suck Septus's cock":
						say "[SeptusSex1]";
					else if (nam is "Have him suck your cock"):
						say "[SeptusSex2]";
					else if (nam is "Let Septus fuck your pussy"):
						say "[SeptusSex3]";
					else if (nam is "Let Septus fuck your ass"):
						say "[SeptusSex4]";
					else if (nam is "Take Septus ass"):
						say "[SeptusSex5]";
					wait for any key;
					now lastfuck of Septus is turns;
			else if calcnumber is 0:
				now sextablerun is 1;
				say "     You step back from the wolfman, shaking your head slightly as he gives a questioning look.";
				wait for any key;
			else:
				say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
		clear the screen and hyperlink list;

to say SeptusSex1:[player sucks him]
	say "     Stepping up close to the powerful wolfman, you pull his head towards you and meet his muzzle in a deep kiss. While you're still doing some tongue-wrestling with him, one of your hands runs down his ripped body to his crotch. Taking hold of the two furry orbs you soon encounter, you fondle them with your fingers, making Septus moan and pant in growing arousal. Before much longer, his cock pushes out of his sheath as it grows hard and comes to rest hotly against your arm. Giving the horny wolf one last kiss on the muzzle, you sink down on your knees in front of him. Being so close to this virile male, breathing in his musky scent, you can hardly resist and quickly take hold of his canine manhood, running your tongue over its underside. As you reach the pointy tip, you give it a few licks, then push your lips over it and start sucking Septus off. Bobbing up and down on his hard shaft, you take more and more of him in until you're finally down to is thick knot, with the rest of the long cock in your throat.";
	say "     You had him moaning loudly before, but now taking hold of his knot and running your tongue along the edge of it, you really get Septus worked up. He grabs your head with both hands, holding you tightly as he thrusts forward with his hips, fucking your face. Totally focused on sucking his long cock, you had hardly noticed the cheering crowd that formed around the two of you - until one of the other wolves steps up next to Septus, that is. It's the wolfman with the number nine on his chest - already rock hard from watching your little show - and he moves into position holding out his canine erection, intent on joining the fun.";
	WaitLineBreak;
	say "     Not to leave a member of the team hanging, you grab his cock in one hand, stroking up and down on the hard shaft. Then you pull off Septus's manhood, sliding your lips over the new cock and bob up and down on it. Jerking one and blowing off the other, you switch back and forth between both wolfmen, building up their arousal. Before too much longer, as you have Septus's shaft in your mouth, he moans 'I'm soo close...', grabs your head and pulls it against his groin. Accompanied by a loud lust-filled howl, Septus's cock starts twitching as it shoots spurt after spurt of warm wolfman cum directly into your stomach. Almost at the same time, number nine joins in for the howl and long strings of cum pulse from his cock, landing all over your face and chest.";
	say "     After they stop coming, you stand up and take a look around. Judging from the grinning faces and quite a few spots of cum on the ground, it seems like everyone in the crowd thoroughly enjoyed watching the three of you. One of the human cheerleaders gives you a suggestive wink, then grabs a towel out of a nearby box and comes to help you clean up.";

to say SeptusSex2:[he sucks the player]
	say "     Stepping up close to the powerful wolfman, you pull his head towards you and meet his muzzle in a deep kiss. While you're doing some tongue-wrestling with him, arms around his body in a tight embrace, your already half hard cock pokes against his furred body. 'Oh,' Septus says between kisses and reaches down to feel your manhood through your clothes. 'Feels like you need some relief. Want me to take care of that for you?' he asks as he pushes his hand into your pants and takes hold of your shaft. Answered by a lustful moan from you, he grins and gives you another quick kiss on the lips before sinking to his knees in front of you.";
	say "     Quickly undoing the fastenings of your pants, Septus frees your by now fully hard erection to sway in the air in front of his face. He grabs hold of it, holding it up as he slowly runs his long tongue over its underside, then strokes his hand up and down along the shaft as he licks your balls. He's got a pretty long and talented tongue and makes you gasp and moan from his oral attentions. Pulling off your member for a moment he asks, 'Do you like it?' then makes your 'Yessss.....' lead over into a long moan as he goes down on your cock this time.";
	WaitLineBreak;
	say "     Your maleness vanishes into Septus's long muzzle, carefully held away from his sharp teeth and caressed by his tongue. Bobbing up and down on it, he puts his hands to your hips to hold on and gives you a terrific blowjob. Before too much longer, you feel the need to cum rise in your balls and call out 'I'm close. Almost there...' Septus just keeps going, running his tongue over the sensitive skin of your cock until you reach the point of no return. Moaning loudly and getting a bit weak in the knees you orgasm, burst after burst of your seed shooting into Septus mouth.";
	say "     When you finish shooting, your handsome wolfman keeps your cock in his mouth for a moment longer, softly sucking on it to get all of your cum. Then he smiles up at you and swallows it all before standing up and giving you a kiss.";

to say SeptusSex3:[player pussy fucked]
	say "     Stepping up close to the powerful wolfman, you pull his head towards you and meet his muzzle in a deep kiss. While you're still doing some tongue-wrestling with him, one of your hands runs down his ripped body to his crotch. Taking hold of the two furry orbs you soon encounter, you fondle them with your fingers, making Septus moan and pant in growing arousal. Before much longer, his cock pushes out of his sheath as it grows hard and comes to rest hotly against your arm. Giving the horny wolf one last kiss on the muzzle, you take hold of his hard canine manhood and lead him by it to a nearby free bunk, accompanied by wolf-whistles and interested looks from the closer teammates. Quickly removing your clothes, you press your naked body against Septus for another deep kiss and moan 'I need you inside me' to him. Then you lie down on the bunk and spread your legs a bit, giving the wolfman a view of your moist and ready pussy.";
	say "     A lustful growl in his throat, Septus pounces you, his furry body touching yours along its whole length as he sinks his manhood straight into your pussy and wraps his arms around you. Holding you tight against his body, he thrusts deep until he bottoms out with a satisfied growl. After giving you a hungry kiss, he moans 'Hope you like it hard...' as he pulls back almost all the way, then thrusts in again '...and deep. Our mating urges are pretty strong.' Not wasting another breath with talking, Septus starts pounding his hips against yours, his canine cock rubbing sensitive spots all along your inner passage. He goes at it in full throttle, never wavering a moment with his thrusts, but still shows some nice technique, shifting the angle of his entrance every few times. There's definitely something to be said about combining a wolf's tenacity for breeding with human intelligence.";
	WaitLineBreak;
	say "     Given the wild ride Septus gives you, it's no big wonder that you soon get pretty close to orgasm. Reaching down to grab his furry ass, you squeeze his firm cheeks and pull his hips against you even harder with each of his thrusts. Then you feel it - the soft bulge at the base of Septus's cock, his knot - swelling and expanding inside your pussy to tie your bodies together. The delicious feeling of fullness is the last straw to drive you over the edge, making you moan and hold on tight to your handsome wolfman as you ride out an amazing orgasm. At the same time, Septus gives a long, satisfied howl, accompanying his cock spurting a massive load of wolfman seed directly into your womb.[fimpregchance]";
	say "     After Septus's cock stops pulsing with more shots of cum and he gets his breath back, he kisses you and rolls the both of you over to lie on your sides. Still held together by his knot trying to ensure impregnation, he stokes your face softly and says 'You're an amazing lay, baby. Let's do this again - often...'";

to say SeptusSex4:[player ass fucked]
	say "     Stepping up close to the powerful wolfman, you pull his head towards you and meet his muzzle in a deep kiss. While you're still doing some tongue-wrestling with him, one of your hands runs down his ripped body to his crotch. Taking hold of the two furry orbs you soon encounter, you fondle them with your fingers, making Septus moan and pant in growing arousal. Before much longer, his cock pushes out of his sheath as it grows hard and comes to rest hotly against your arm. Giving the horny wolf one last kiss on the muzzle, you take hold of his hard canine manhood and lead him by it to a nearby free bunk, accompanied by wolf-whistles and interested looks from the closer teammates. Quickly removing your clothes, you press your naked body against Septus for another deep kiss and moan 'I need you inside me' to him. Then you lie down on the bunk, spreading and raising your legs to giving the wolfman a view of your asshole, waiting to be filled.";
	say "     A lustful growl in his throat, Septus pounces you, bringing his muzzle up against your pucker. He licks over your exposed opening, then sticks his tongue inside to make it good and wet. Then Septus restraint wears thin, and he quickly moves up to mount you, his furry body touching yours along its whole length as he sinks his manhood straight into your ready hole and wraps his arms around you. Holding you tight against his body, he thrusts deep until he bottoms out with a satisfied growl. After giving you a hungry kiss, he moans 'Hope you like it hard...' as he pulls back almost all the way, then thrusts in again '...and deep. Our mating urges are pretty strong.'";
	WaitLineBreak;
	say "     Not wasting another breath with talking, Septus starts pounding his hips against yours, his canine cock rubbing sensitive spots all along your inner passage. He goes at it in full throttle, never wavering a moment with his thrusts, but still shows some nice technique, shifting the angle of his entrance every few times. There's definitely something to be said about combining a wolf's tenacity for breeding with human intelligence. Given the wild ride Septus gives you, it's no big wonder that you soon get pretty close to orgasm. Reaching down to grab his furry ass, you squeeze his firm cheeks and pull his hips against you even harder with each of his thrusts. Then you feel it - the soft bulge at the base of Septus's cock, his knot - swelling and expanding inside your asshole to tie your bodies together. The delicious feeling of fullness is the last straw to drive you over the edge, making you moan and hold on tight to your handsome wolfman as you ride out an amazing orgasm.";
	say "     [if player is male]Spurt after spurt of your cum arc out of your hard cock, splattering your chest with white streaks. [end if]At the same time, Septus gives a long satisfied howl, accompanying his cock spurting a massive load of wolfman seed deep into your hole. After Septus's cock stops pulsing with more shots of cum and he gets his breath back, he kisses you and rolls the both of you over to lie on your sides. Still held together by his knot trying to ensure impregnation, he stokes your face softly and says 'You're an amazing lay, baby. Let's do this again - often...'[mimpregchance]";

to say SeptusSex5:[Septus ass fucked]
	say "     Stepping up close to the powerful wolfman, you pull his head towards you and meet his muzzle in a deep kiss. While you're still doing some tongue-wrestling with him, one of your hands runs down his ripped body to his crotch. Taking hold of the two furry orbs you soon encounter, you fondle them with your fingers, making Septus moan and pant in growing arousal. Before much longer, his cock pushes out of his sheath as it grows hard and comes to rest hotly against your arm. Giving the horny wolf one last kiss on the muzzle, you take hold of his hard canine manhood and lead him by it to a nearby free bunk, accompanied by wolf-whistles and interested looks from the closer teammates. Quickly removing your clothes, you press your naked body against Septus for another deep kiss and moan 'I want to fuck you' to him. He answers 'Sure, baby - but be gentle, we usually fuck the cheerleaders, not each other...' then gets on the bunk, lying on his back and pulling his legs up to bare his hole for you.";
	say "     Aroused by this muscular wolfman lying before you, waiting, you quickly climb on the bunk with him. Running your hands through the warm fur on his chest, you feel the strong muscles below, then move your hands to his legs and run them down his thighs towards the crotch. Putting a finger into your mouth to get it wet first, you slowly push it against Septus pucker until it yields and allows you entry. Yup, he's pretty tight - must not have been fucked all that often. Taking your time to prepare him for your cock, you spread his hole with one, then two fingers and massage his insides to loosen him up. After a bit longer, you think he's ready - and also, your own cock is aching to get into his tight wolfman ass, so you don't delay any more.";
	WaitLineBreak;
	say "     Leaning over Septus, you feel his chest-fur against you as you kiss his muzzle, meanwhile moving your hips into position. Then it's time to fuck - you thrust forward, sinking your hard shaft into his hole. It's amazingly tight an warm, gripping you like a vice and allowing only slow progress deeper inside. It takes a moment for Septus to get used to your intruding member, but soon he's silently moaning at the feelings it brings him. Your partner now finally ready to get fucked, you pull out of him most of the way, then slide your manhood back into his tight passage, starting up slow thrusts in and out. Guided by rising moans in lust, you speed up bit by bit and before too much longer, the two of you are enthusiastically coupling with each other on the bunk. Septus even says 'Deeper. Deeper.' in between satisfied moans and you eagerly comply.";
	say "     Given the wild ride you're giving Septus, it's no big wonder that he soon moans 'Almost ready *pant* to cum'. Reaching down to grab his hard cock, you stroke it a few times until it starts jerking in your hand, shooting long strings of cum all over his chest. Septus anal muscles twitching around your cock with each of his shots gives you the rest too. As you feel the orgasm rapidly approaching, you drive into the wolfman's deliciously tight asshole one last time, grinding your hips against his as you fill him with your seed. After your shaft shoots its last sting of cum into Septus, you slowly pull out of him and lie back on the bunk to rest for a moment. Turning on your side, you move closer to Septus cuddling up against his furry back and put an arm around him. 'That was... different. But quite nice once one gets into it. We should do it again sometime...'";


Section 6 - Team Manager

to say WolfTeamManager:
	say "     You wave over Septus and Jennifer to talk, then say 'Listen, the team is great - but to really make it out there, after we all get out of the city, you need something else - a manager. You know, someone who takes care of negotiations, thinks up training plans and strategies, arranges things like getting new gear, advertising, the whole lot. You wouldn't want to get distracted from training by constantly having to worry about all these things. I will do that for you...'";
	WaitLineBreak;
	say "     Septus looks at you with a thoughtful expression and slowly nods - at least until you put an arm around Jennifer and continue with 'Of course, there needs to be some compensation for my hard work - part of the team being mine, I'd say. As team manager, from now on, I'll be the only one fucking Jennifer to father our new top players. And of course get to jump the line with the other cheerleaders when I want.'";
	say "     Baring his fangs in anger, Septus growls 'WHAT? Hell no! She's my... they're our... she wouldn't agree to this anyways.' Some of the other players, having overheard what's going on, growl and move in behind the team's talent scout to back him up. But there isn't any such opposition on the slender head-cheerleader's part - in fact, Jennifer seems to be reminiscing about your last coupling, softly moaning as she strokes her breasts. That really rises the wolfman's hackles. He growls 'Get out!' and when you don't immediately start going, he continues with a snarled 'I'll drag your beaten ass out of here if I have to!'";
	WaitLineBreak;
	now HP of Septus is 6;
	challenge "Football Wolfman";
	if fightoutcome >= 10 and fightoutcome < 19:
		say "     After parading you around for a while, the wolves drop you off with Jennifer atop a platform of crates. You pull her to your lupine chest and kiss her wildly, groping her ass as you do. This prompts a fresh wave of cheering, howling and wolf whistles from the crowd. With some effort, you get them to settle down so you can give a victory speech. During this, you tell them that you're the team manager now and that you're going to lead them to the top. It is chock full of trite and cliché sayings about giving 110%, their being the best team you've ever seen and the like, but in the heat of the moment, it all sounds very inspiring to you and to the team. You feel tougher after your victory and are truly eager to lead your team to greatness.";
		say "     Partway through your speech, you call out to have Septus brought over and he's pushed forward by the others. Looking rather worse for the wear for his loss and clearly worried about his future on the team, you put your arm around him, giving him a tight hug. Telling the gathered wolfmen and cheerleaders that he put up a great fight for the team, you announce that you'll be making Septus the team captain. You add that while Jennifer will now be your number one girl for breeding new star players, you'll not break up their winning combination and will generously be letting their new team captain fuck her from time to time to show there are no hard feelings. This surprising announcement sends fresh howls and cheers through the group as well as perking the wolfman back up considerably. To show his thanks, he gives you a crushing hug that rapidly leads into groping and fondling as well.";
		WaitLineBreak;
		say "     With the rush of excitement from having watched a great fight as well as your rousing speech, things quickly devolve among the crowd as they start to break off into groups of threes and fours. The wolfmen and cheerleaders are soon going at it hot and heavy, licking, sucking, kissing and fucking like wild beasts. Not wanting to be left out of the fun, you grab Jennifer's ass and pull her onto your erection. After the first few thrusts have her moaning and squirming, you motion for Septus to come up and take his mom from the front while you get her from behind. He grins and pushes into her, the [if thirst of Jennifer is 2]pregnant [end if]cheerleader's cunny stuffed extra-full by having both of you in there together. Once he's fully thrust inside her, he gives you a big high-five and bounces the horny girl on both your rods.";
		say "     It is a bit of a tight fit inside Jennifer's cunt along Septus's rod, much more than she normally gets, not that she seems to be minding the extra meat at all. If anything, it's making her all the more horny. You grin as she moans and squirms atop you both, her juicy cunny squeezing your two against one another as you both fuck her at once, manager and captain sharing the hot lead cheerleader. The three of you share many a wild, prolonged kiss as you fuck until can't hold back any longer and flood her [if thirst of Jennifer is 0]womb[else]very depths[end if] with virile seed from the team's two top wolves. It is very arousing for you to feel every pulse and throb of Septus's cock as he spurts his load into her alongside you.";
		WaitLineBreak;
		say "     It is some time before [if cockname of player is listed in infections of knotlist]both your knots go[else]Septus's knot goes[end if] down enough to allow you to pop free, lowering the thoroughly stuffed and creamed woman down onto her knees. Despite the powerful pounding and orgasms she's had, she's eager for more and grabs the two cum-soaked cocks in front of her, pulling them to her mouth. She starts with you as team manager, licking and sucking the mix of semen from you before turning to the team captain and doing the same. After that, it's back and forth between you both, working hard to suck you off. The sight of the lovely[if thirst of Jennifer is 2], pregnant[end if] cheerleader swapping back and forth as she sits in the growing pool of cum leaking out of her, is very arousing and has you both hard and ready for more in no time.";
		say "     Taking new positions with Jennifer on all fours, you sink back into her creamy cunt for sloppy seconds while she continues sucking off Septus. While you're just as horny as before, your needs as team manager have you turn your attention to the others around the room for a bit as you leisurely thrust for a few minutes. You can't help but smile at the sight of the team getting along so well and everyone trying so hard to breed more powerful players for your growing team. You spot several groups who've decided to follow your lead and are sharing a cheerleader between a pair of them. And while those girls are struggling a little more at it than top cheerleader and breeder Jennifer could, their cries are those of ecstasy. Others are paired up spitroasting the girls or taking them in their pussy and ass at once. The others who are waiting for their chance with the girls are quite happy to strengthen their ties with their male teammates, stroking, sucking and fucking each other until they're called into the game to fuck one of the girls as soon as a teammate has drained his balls and stepped back.";
		WaitLineBreak;
		say "     Both proud and aroused by the sight of the orgy of team fucking going on, you smile and nod to Septus before setting yourself to the most enjoyable task of pounding the sexy cheerleader the two of you are sharing. The wolfman, already holding her head, starts thrusting harder and faster as well, grinning at the sounds of pleasure coming from her as the two wild wolves have their way with her breeder body. You howl as you cum, adding fresh semen to the hot load already inside her while Septus feeds her the contents of his balls.";
		say "     Things continue this way for quite a long time, the lustful scent of the orgy feeding itself to continue on and on, players swapping in and passing around the cheerleaders until they've all be stuffed so full that their bellies are round with cubs and cum. Eventually it does start to wind down though, some of the players with less endurance dropping out or sticking to the benches and sucking off their teammates rather than going for another fuck themselves. You discreetly keep an eye on them, and glancing over at your new team captain, you can see he's doing the same. You smile, knowing he'll be making them train all the harder for it. You also watch those you last until the end, feeling they'll make the best candidates for the team's starting lineup. After Jennifer sucks you both off a final time while watching the orgy coming to a close, you call a close to the orgy, telling everyone to take a break to get fed and rested before heading back to training. Septus gives Jennifer's ass a swat as she heads off to check on the other cheerleaders and to help those too full to move on their own to get up.";
		now HP of Septus is 7;
		wolfmaninfect;
		increase score by 25;
		if strength of player < 20:
			increase strength of player by 1;
			increase capacity of player by 5;
			say "Your [bold type]strength[roman type] has been increased by 1.";
		else if charisma of player < 20:
			increase charisma of player by 1;
			say "Your [bold type]charisma[roman type] has been increased by 1.";
		else:
			increase maxHP of player by level of player / 2;
			say "Your maximum [bold type]HP[roman type] has been increased by [level of player / 2].";
		decrease humanity of player by 12;
		if thirst of Jennifer is 0:[guaranteed preggers after orgy]
			now Jenniferpregnant is 48;
			now thirst of Jennifer is 1;
		WaitLineBreak;
		follow the turnpass rule;
	else if fightoutcome >= 20 and fightoutcome < 29:
		say "     When the wolves finally climb off of you and Septus pulls you to your feet, you can only groan weakly. 'And here I thought you might turn out to be a star player, but no, you had to be greedy. Mom's told us that a lot of the best guys who sign big contracts just stop trying, dragging the whole team down. To be on this team, you've got to be a team player. This is the end of your career, hot shot.' With a final growl, he tosses you out the door, throwing your gear out after you. As the door is slammed shut, you can hear the start of a team victory orgy. You stagger to your feet and limp back to the library with the knowledge you'll never be welcomed back by the team.";
		move player to Grey Abbey Library;
		now Wolfman Lair is unknown;
		now HP of septus is 99;
	else:
		say "     Turning tail from the pack of football wolfmen, you charge through a gap of the spectators, trying to make your way to the door. The crowd, angry and turning on you like a crowd of rugby hooligans, tackle you to the floor, crushing you under the weight of their numbers. The last of your strength is crushed out of you, leaving you exhausted while the crowd around boos and hisses at your cowardliness.";
		say "     When the wolves finally climb off of you and Septus pulls you to your feet, you can only groan weakly. 'And here I thought you might turn out to be a star player, but no, you had to be greedy. Mom's told us that a lot of the best guys who sign big contracts just stop trying, dragging the whole team down. To be on this team, you've got to be a team player. This is the end of your career, hot shot.' With a final growl, he tosses you out the door, throwing your gear out after you. As the door is slammed shut, you can hear the start of a team victory orgy. You stagger to your feet and limp back to the library with the knowledge you'll never be welcomed back by the team.";
		now HP of player is 0;
		move player to Grey Abbey Library;
		now Wolfman Lair is unknown;
		now HP of septus is 99;

Section 7 - Cheerleading

Table of Random Critters (continued)
name	enemy title	enemy name	enemy type	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	DayCycle	altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now name entry is "Wolfman Cheerleader";
	now enemy title entry is "";
	now enemy name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "    <cheerleaders shouldn't fight, when did you see this?>"; [Text used when the monster makes an Attack]
	now defeated entry is "    <cheerleaders shouldn't fight, when did you see this?>";
	now victory entry is "    <cheerleaders shouldn't fight, when did you see this?>";
	now desc entry is "    <cheerleaders shouldn't fight, when did you see this?>";            [ Description of the creature when you encounter it. ]
	now face entry is "that of a beautiful young woman, framed in shoulder-length hair";
	now body entry is "a well-shaped young woman's, with a slender and flexible build that just seems made for gymnastics. Perfectly rounded perky breasts complete the picture that will take many a man's breath away with its seductive beauty";
	now skin entry is "[one of]perfect[or]soft and sleek[or]beautiful[at random]";
	now tail entry is "You shapely ass has just the right amount of pert buttcheeks to make it deliciously grab-able.";
	now cock entry is "[one of]amazing[or]perfect[or]human-like[at random]";
	now face change entry is "it reshapes itself, creating a beautiful young woman's face. Long strands of hair flow down to your shoulders and complete the picture";
	now body change entry is "you become more slender and flexible before finally stabilizing in the shape of a beautiful young woman. Your breasts and curves now are almost perfect, certainly a view many will admire";
	now skin change entry is "any imperfections are quickly washed away, leaving you with smooth and beautiful skin";
	now ass change entry is "it becomes tight and shapely, with deliciously grab-able cheeks";
	now cock change entry is "it becomes a perfectly shaped human maleness";
	now str entry is 17;
	now dex entry is 16;
	now sta entry is 15;
	now per entry is 12;
	now int entry is 12;
	now cha entry is 14;
	now sex entry is "Female";          [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 1;
	now lev entry is 1;                 [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 1;                [ Monster's average damage when attacking. ]
	now area entry is "Nowhere";        [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 0;               [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 0;         [ Length infection will make cock grow to if cocks. ]
	now cock width entry is 0;          [ Cock width, more commonly used for ball size. ]
	now breasts entry is 2;             [ Number of nipples the infection will give a player. ]
	now breast size entry is 2;         [ Size of breasts the infection will try to attain. ]
	now male breast size entry is 2;        [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;               [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 8;         [ Depth of female sex the infection will attempt to give a player. ]
	now cunt width entry is 6;          [ Width of female sex the infection will try to give a player. ]
	now libido entry is 80;
	now loot entry is "";                              [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0;                    [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3;                              [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]lithe[or]flexible[at random]";
	now type entry is "human";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now DayCycle entry is 0;            [ 0 = Up at all times; 1 = Nocturnal (night encounters only); 2 = Diurnal (day encounters only) ]
	now altcombat entry is "default";
	now BannedStatus entry is false;


to say CheerleaderTryout1:
	if HP of Septus >= 7 and HP of Septus < 50: [manager]
		say "     Jennifer looks at you a bit nonplussed and says 'But - you're our manager. Aren't you far too busy managing everything?' Then she steps up to you on her lithe feet and you get rather distracted by her perky breasts pressing against your side and a delicate hand wandering down to your crotch. 'There's no need to micromanage our training - just give the girls some... attention and they'll be cheering at their best.'";
	else:
		if player is not female and player is not mpreg_ok: [males+neuter, no mpreg]
			say "     As you ask Jennifer if you can join their cheer-leading team, she looks you up and down, then gives a sigh and a shake of her head. 'Hmm... while you might possibly have the skill and ability to do the moves, there's... another requirement.' Looking over to the side, she gives a slight nod to a perky brunette doing stretches not too far away - all the while she's carrying a very obvious pregnant belly. 'You see, we're not just here to cheer, but also are the mothers of the team - and you can't be. Anyways, you've proven that you're a strong player or Septus wouldn't have invited you - so you're welcome as one of us, just not a cheerleader, ok?'";
			say "     With that, Jennifer gives you a consoling pat on the arm, then walks over to join her pregnant teammate in her stretches. You're left standing there, watching the muscular wolfmen and very attractive cheerleaders follow their separate training regimens. Maybe you should just become one of the regular players, or alternatively look into... acquiring the missing ability you need to be a cheerleader.";
		else if player is not female and player is mpreg_ok and player is not mpreg_now: [males+neuter, mpreg ability, not pregnant]
			say "     As you ask Jennifer if you can join their cheer-leading team, she looks you up and down, then gives a sigh and a shake of her head. 'Hmm... while you might possibly have the skill and ability to do the moves, there's... another requirement.' Looking over to the side, she gives a slight nod to a perky brunette doing stretches not too far away - all the while she's carrying a very obvious pregnant belly. 'You see, we're not just here to cheer, but also are the mothers of the team - and you can't be. Anyways-' You interrupt her right then and there and lean closer to tell her about your body's peculiar abilities in a whisper. Her eyes get wider and wider as you explain, and when you finish she says 'Really? Wow, that's... strange.' Then she adds with a chuckle 'Oh well, what isn't these days. And you'd surely give some variety for our boys. So sure, show what you can do.'";
			say "[CheerleaderTryout2]";
		else if player is not female and player is mpreg_now: [males+neuter, mpreg ability, pregnant]
			say "     As you ask Jennifer if you can join their cheer-leading team, she looks you up and down, then gives you a curious look. 'Err, how do you - does that -' Seems like your pregnant belly has her a bit flustered after realizing that you're not in fact female. Leaning closer to tell her about your body's peculiar abilities in a whisper. Her eyes get wider and wider as you explain, and when you finish she says 'Really? Wow, that's... strange.' Then she adds with a chuckle 'Oh well, what isn't these days. And you'd surely give some variety for our boys. Anyways, we're not just here to cheer, but also are the mothers of the team - and you'd be expected to help us bear the next top players - so if you've got not problems with that, sure, show what you can do.'";
			say "[CheerleaderTryout2]";
		else: [female+herm]
			say "     As you ask Jennifer if you can join their cheer-leading team, she looks you up and down, then gives a smiling nod. 'Just to state the obvious - we're not just here to cheer, but also are the mothers of the team - and you'd be expected to help us bear the next top players - if you've got not problems with that, sure, show what you can do.'";
			say "[CheerleaderTryout2]";

to say CheerleaderTryout2:
	LineBreak;
	say "     Leading you over to a large mat on the side of the room, Jennifer calls out for two of her teammates who join her quickly, soon to be followed by several more girls and wolfmen as they direct you to strip and go through a few poses and moves.";
	LineBreak;
	let bonus be (( the Dexterity of the player minus 10 ) divided by 2);
	let diceroll be a random number from 1 to 20;
	say "You roll 1d20([diceroll])+[bonus]: [diceroll + bonus], (Dexterity-Check)";
	increase diceroll by bonus;
	say "     [line break][line break]";
	if diceroll > 16:
		say "     Really showing off what you can do, you perform several difficult moves in front of the cheering (and leering, in case of the wolfmen) crowd. When you finish your demonstration some ten minutes later, Jennifer comes up to you and hands you a towel to wipe the sweat off your naked body. 'You've sure got a lot of potential. You're in - provisionally for now - come join me for training sometime and I'll teach you the moves and everything else you need to know.'";
		now HP of Septus is 50;
	else if diceroll > 9:
		say "     Showing off what you can do, you perform several somewhat difficult moves in front of the cheering (and leering, in case of the wolfmen) crowd. When you finish your demonstration some ten minutes later, Jennifer comes up to you and hands you a towel to wipe the sweat off your naked body. 'You've got potential, though I think you need more training before you can keep up with the other girls. Maybe give it some more time, get more flexible you know, then come back and do another tryout, ok?'";
	else:
		say "     You do your best on the mat, stretching and showing off what you can do, though with the awesome performances they're used to, the watching crowd isn't too impressed. Some of the wolfmen still give you a few hungry leers - you are naked, after all - though the girls shake their heads and give pained expressions as you make some wrong moves. When you finish your demonstration some ten minutes later, Jennifer comes up to you and hands you a towel to wipe the sweat off your naked body. 'Well... it wasn't bad, but - to be honest, you'd have to train quite a bit to catch up with even our weakest teammate. Maybe cheer-leading just isn't for you.'";
	wait for any key;

to say CheerleaderPractice:
	if HP of Septus is 50:
		say "     Jennifer leads you over to several other cheerleaders and has you strip down, then you all line up next to each other and start going through gymnastics moves. All the stretching, moving and dancing really gets your heart pumping, soon making you feel somewhat exhausted but still good from the nice workout and company. It's a great bonding experience with the girls too, as there's some chatting and joking going on during the training and some gentle touches are shared as all of you help each other go through the poses.";
		infect "Wolfman Cheerleader";
		LineBreak;
		say "     When the current training session ends and all the other cheerleaders disperse to rest, or eat, or spend some time with one of the wolfmen, you're left standing next to Jennifer, who smiles and hands you a towel. While you wipe the sheen of sweat off your body, she says 'Nice work on your poses, but being a part of our team isn't just knowing the moves. You have to be able to properly... motivate the players, make [']em give everything they have out of anticipation of the victory party. Wanna show me your skills in that regard?' Her gaze wanders through the room for a moment, then she nods towards two wolfmen standing some distance off and talking excitedly about game strategies. 'How about you try to charm Decimus out of his little discussion? If you can wrap him around your finger, you'll be almost ready to be a full cheerleader.'";
		LineBreak;
		say "     [bold type]What now?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Chat up Decimus.";
		say "     ([link]N[as]n[end link]) - Postpone till later.";
		if player consents:
			LineBreak;
			let bonus be (( the Charisma of the player minus 10 ) divided by 2);
			let diceroll be a random number from 1 to 20;
			say "You roll 1d20([diceroll])+[bonus]: [diceroll + bonus], (Charisma-Check)";
			increase diceroll by bonus;
			say "     [line break][line break]";
			if diceroll > 16:
				say "     Nodding to Jennifer, you saunter over towards the wolfman with the number 10 shown in red fur across his front and back. Donning your most seductive smile and doing some... stretches that show off your body to him, it doesn't take long till the conversation grinds to a halt, with Decimus whole attention riveted to your naked form and his cock quickly growing to full erection. As the horny wolfman gives a distracted excuse to his buddy and starts walking towards you, Jennifer steps up beside you and puts a hand on your shoulder. 'Very well done! I knew you could charm his socks off. Look at how hard you made him.' Giving the approaching wolfman's body a lust-filled look, she says 'You passed - now it's time to deal with the aftermath. Can't let our players get blue-balled, you know. Do you want to relieve him of some pressure, or should I?'";
				LineBreak;
				say "     [bold type]What do you want to do?[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Suck Decimus.";
				say "     ([link]N[as]n[end link]) - Let Jennifer blow him off.";
				if player consents:
					LineBreak;
					say "     Stepping forward to greet the aroused wolfman, you meet his muzzle for a deep kiss, both your hands touching and exploring each other's body while wrestling tongues. Taking hold of the two furry orbs you soon encounter, you fondle them with your fingers, making Decimus moan and pant in clear arousal. Your little show made him quite horny indeed.";
					LineBreak;
					say "     Giving the athletic wolf one last kiss on the muzzle, you sink down on your knees in front of him. Being so close to this virile male, breathing in his musky scent, you can hardly resist and quickly take hold of his canine manhood, running your tongue over its underside. As you reach the pointy tip, you give it a few licks, then push your lips over it and start sucking Decimus off. Bobbing up and down on his hard shaft, you take more and more of him in until you're finally down to is thick knot, with the rest of the long cock in your throat.";
					say "     You had him moaning loudly before, but now taking hold of his knot and running your tongue along the edge of it, you really get Decimus worked up. He grabs your head with both hands, holding you tightly as he thrusts forward with his hips, fucking your face. Totally focused on sucking his long cock, you had hardly noticed the cheering crowd that formed around the two of you - until one of the other wolves steps up next to Decimus, that is. It's Septus - already rock hard from watching your little show - and he moves into position holding out his canine erection, intent on joining the fun.";
					say "     Not to leave a member of the team hanging, you grab his cock in one hand, stroking up and down on the hard shaft. Then you pull off Decimus manhood, sliding your lips over the new cock and bob up and down on it. Jerking one and blowing off the other, you switch back and forth between both wolfmen, building up their arousal. Before too much longer, as you have Decimus shaft in your mouth, he moans 'I'm soo close...', grabs your head and pulls it against his groin. Accompanied by a loud lust-filled howl, his cock starts twitching as it shoots spurt after spurt of warm wolfman cum directly into your stomach. Almost at the same time, Septus joins in for the howl and long strings of cum pulse from his cock, landing all over your face and chest.";
					LineBreak;
					say "     After they stop coming, you stand up and take a look around. Judging from the grinning faces and quite a few spots of cum on the ground, it seems like everyone in the crowd thoroughly enjoyed watching the three of you. Jennifer gives you a suggestive wink that shows you passed the test with a gold star, then grabs a towel out of a nearby box and comes to help you clean up.";
				else:
					say "     Stepping forward to head off the aroused wolfman, the Jennifer charm to captivate Decimus attention. The experienced head cheerleader has him totally focused on her in moments, kissing her, then licking her neck and teasing her breasts with his long tongue. After savoring his attention for a moment, she sinks to her knees and goes down on him, enthusiastically bobbing up and down on his shaft. Taking it deeper and deeper, eventually even all the way up to his thick knot, she really gets Decimus worked up, panting and yipping in lust. Soon he moans 'I'm soo close...', grabs her head and pulls it against his groin. Accompanied by a loud lust-filled howl, his cock starts twitching as it shoots spurt after spurt of warm wolfman cum directly into Jennifer's stomach. The young woman takes it all, then pulls off his manhood with a slurp and a smile.";
				now HP of Septus is 51;
			else if diceroll > 9:
				say "     Nodding to Jennifer, you saunter over towards the wolfman with the number 10 shown in red fur across his front and back. Donning a seductive smile and doing some suggestive stretches that show off your body to him, you make him glance over to you again and again, his cock starting to push out of his sheath. Though then he's distracted again by another of his buddies suddenly coming along and joining in to the conversation about game plans. Not being able to attract his attention again, you finally give up a while after that. Jennifer comes over and pats your shoulder consolingly, then says 'I know he can be a tough nut to crack when he's in the zone with game plans. And you almost had him, too. Don't worry, you'll get him next time.'";
			else:
				say "     Nodding to Jennifer, you walk over towards the wolfman with the number 10 shown in red fur across his front and back. Smiling at him and trying to get him to notice you, you do your best but... fail. When you finally give up, he's still as oblivious to you as he was from the start, totally focused on the discussion he's having. Jennifer comes over to you and pats your shoulder consolingly, then says 'I know he can be a tough nut to crack when he's in the zone with game plans. Don't worry, you'll get him next time.'";
		else:
			say "     Making some excuses that you're a bit too tired right now, you postpone Jennifer's test for now. She says 'Sure, take your time to rest. Next time then. I'm sure if you're as charismatic as you're athletic, you'll have no problems at all then.'";
	else if HP of Septus is 51:
		say "     Jennifer leads you over to several other cheerleaders and has you strip down, then you all line up next to each other and start going through gymnastics moves. All the stretching, moving and dancing really gets your heart pumping, soon making you feel somewhat exhausted but still good from the nice workout and company. It's a great bonding experience with the girls too, as there's some chatting and joking going on during the training and some gentle touches are shared as all of you help each other go through the poses.";
		infect "Wolfman Cheerleader";
		LineBreak;
		say "     When the current training session ends and all the other cheerleaders disperse to rest, or eat, or spend some time with one of the wolfmen, you're left standing next to Jennifer, who smiles and hands you a towel. While you wipe the sheen of sweat off your body, she says 'Nice work. Having shown your skill and your charm, I'd say you're worthy to really become one of us. How about we do your initiation right now? After seeing you during your training, all the boys are quite eager to fill you with your first cub...'";
		LineBreak;
		say "     [bold type](Warning, this will commit you to cause, ensuring that all your future children will be wolfmen)[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Be the center of a gangbang.";
		say "     ([link]N[as]n[end link]) - Postpone your initiation.";
		if player consents:
			LineBreak;
			say "     Giving you a beaming smile, Jennifer puts two fingers between her lips and gives a loud whistle that draws the attention of everyone in the whole wolfman lair. She puts a hand on your shoulder and calls out, 'It's time to welcome a new member into our cheer-leading team,' which immediately results in a loud cacophony of congratulations and appreciative whistles. It doesn't take more than a moment for the wolfman players to gather around the two of you, their canine members already poking out of the sheathes. Before the question of who goes first can even come up, Jennifer grabs Septus hand and pulls him forward, saying 'Septus recruited [if player is male]him[else]her[end if], so he'll start.'";
			if player is female:
				say "     The powerful wolfman eagerly steps close to you, lowering his muzzle to give you a deep kiss. While you're doing some tongue-wrestling with him, you feel several other wolfmen touch you with their clawed hands, stroking and groping your naked body. It's a bit of a wild feeling to be the center of attention for such a large group of virile, furred males, making your arousal soar with each touch, lick and brush of an erect cock against you. You fan feel Septus's long cock press hotly against your leg - until he reaches down to line it up with your ready and dripping sex. His teammates cheer loudly at your lustful gasp when he enters you, sinking his knotted cock deep in one fluid movement.";
				WaitLineBreak;
				say "     A satisfied growl in his throat, Septus sets both his clawed hands on your butt, pulling you against his crotch. Breathing heavily from the desire - the need - to be taken by him, you put your arms around his chest, holding on tightly as you raise your legs and wrap them around his hips. The strong canine effortlessly holds you against his chest and gives you another hungry kiss before moaning, 'Hope you like it hard...,' as he pulls back almost all the way, then pulls your hips down as he thrusts in again, '...and deep. Our mating urges are pretty strong.'";
				say "     Not wasting another breath with talking, Septus starts pounding his hips against yours, his canine cock rubbing sensitive spots all along your inner passage. He goes at it in full throttle, never wavering a moment with his thrusts, but still shows some nice technique, shifting the angle of his entrance every few times. There's definitely something to be said about combining a wolf's tenacity for breeding with human intelligence.";
				WaitLineBreak;
				say "     Given the wild ride Septus gives you, it's no big wonder that you soon get pretty close to orgasm. Hands digging into the fur on his back, you gyrate your hips and push down to meet each of his thrusts. Then you feel it - the soft bulge at the base of Septus's cock, his knot - swelling and expanding inside your pussy - only to be pulled back with a wet slurp at just the last moment. It grows to its full size while resting hotly against your pussy lips, rubbing against them as Septus continues fucking you a moment later. The new sensations are the last straw to drive you over the edge, making you moan and hold on tight to your handsome wolfman as you ride out an amazing orgasm. At the same time, Septus gives a long satisfied howl, accompanying his cock spurting a massive load of wolfman seed deep into your pussy.[fimpregchance]";
				say "     While Septus still pulses with more shots of cum, he gets his breath back and kisses you on the lips, then pants 'Wish I could have knotted you - but we'd have a mutiny here if I kept you all to myself for so long...' He rubs his furry cheeks affectionately against yours, then lowers you on a bed and pulls out with a sigh, almost instantly replaced by Decimus, another wolfman you know from your cheerleader training. Saying 'I can't stop thinking about you since you gave me that awesome show,' he gives you a friendly lick, then sets the tip of his shaft at your entrance...";
				WaitLineBreak;
				say "     In a very satisfying - but really exhausting - orgy, you're fucked by the whole football team after that, with each of them depositing a nice and full load into you. After dozing off while cuddling in the end, you awake some time later in the midst of a furry huddle of somewhat sticky wolfmen. Carefully standing up and making your way without stepping on anyone, you're then taken aside by the other cheerleaders, who gently bathe you, giving you their own welcome with lots of hugs as they do so.[fimpregchance][fimpregchance][fimpregchance][fimpregchance][fimpregchance][fimpregchance]";
			else:
				say "     The powerful wolfman eagerly steps close to you, lowering his muzzle to give you a deep kiss. While you're doing some tongue-wrestling with him, you feel several other wolfmen touch you with their clawed hands, stroking and groping your naked body. It's a bit of a wild feeling to be the center of attention for such a large group of virile, furred males, making your arousal soar with each touch, lick and brush of an erect cock against you. You fan feel Septus's long cock press hotly against your leg - until he reaches down to lift you off your feet with both hands on your buttcheeks. One of the other players helps him out by lining up Septus pointy shaft with your ass, then the strong male slowly lowers you till his erection is poking at your back door. His teammates cheer loudly at your lustful gasp when he enters you, sinking his knotted cock deep in one fluid movement.";
				WaitLineBreak;
				say "     A satisfied growl in his throat, Septus pulls you close against his crotch. Breathing heavily from the desire - the need - to be taken by him, you put your arms around his chest, holding on tightly as you wrap your legs around his hips. The strong canine effortlessly holds you against his chest and gives you another hungry kiss before moaning, 'Hope you like it hard...,' as he pulls back almost all the way, then pulls your hips down as he thrusts in again, '...and deep. Our mating urges are pretty strong.'";
				say "     Not wasting another breath with talking, Septus starts pounding his hips against yours, his canine cock rubbing sensitive spots all along your inner passage. He goes at it in full throttle, never wavering a moment with his thrusts, but still shows some nice technique, shifting the angle of his entrance every few times. There's definitely something to be said about combining a wolf's tenacity for breeding with human intelligence.";
				WaitLineBreak;
				say "     Given the wild ride Septus gives you, it's no big wonder that you soon get pretty close to orgasm. Hands digging into the fur on his back, you gyrate your hips and push down to meet each of his thrusts. Then you feel it - the soft bulge at the base of Septus's cock, his knot - swelling and expanding inside your ass - only to be pulled back with a wet slurp at just the last moment. It grows to its full size while resting hotly against your stretched pucker and crack, rubbing against them as Septus continues fucking you a moment later. The new sensations are the last straw to drive you over the edge, making you moan and hold on tight to your handsome wolfman as you ride out an amazing orgasm. [if player is male]Spurt after spurt of your cum arc out of your hard cock, splattering your chest with white streaks. [end if]At the same time, Septus gives a long satisfied howl, accompanying his cock spurting a massive load of wolfman seed deep into your receptive hole.[mimpregchance]";
				say "     While Septus still pulses with more shots of cum, he gets his breath back and kisses you on the lips, then pants 'Wish I could have knotted you - but we'd have a mutiny here if I kept you all to myself for so long...' He rubs his furry cheeks affectionately against yours, then lowers you on a bed and pulls out with a sigh, almost instantly replaced by Decimus, another wolfman you know from your cheerleader training. Saying 'I can't stop thinking about you since you gave me that awesome show,' he gives you a friendly lick, then sets the tip of his shaft at your entrance...";
				WaitLineBreak;
				say "     In a very satisfying - but really exhausting - orgy, you're fucked by the whole football team after that, with each of them depositing a nice and full load into you. After dozing off while cuddling in the end, you awake some time later in the midst of a furry huddle of somewhat sticky wolfmen. Carefully standing up and making your way without stepping on anyone, you're then taken aside by the other cheerleaders, who gently bathe you, giving you their own welcome with lots of hugs as they do so.[mimpregchance][mimpregchance][mimpregchance][mimpregchance][mimpregchance][mimpregchance]";
			if "Sterile" is listed in feats of player:
				remove "Sterile" from feats of player;
				say "     After having bathed your reproductive organs in such an incredible amount of virile wolfman cum, your sterility is a thing of the past. Seems like even though the wolfmen normally aren't infective, the nanites in them and their fluids refuse to have their further breeding denied and simply fix you up.[impregchance][impregchance][impregchance][impregchance][impregchance][impregchance]";
			LineBreak;
			add "Cheerbreeder" to feats of player;
			say "     You feel something changing deep inside you as your body prepares itself to birth wolfmen - and only wolfmen - in the future. The [']Cheerbreeder['] feat has been added to your list.";
			now HP of Septus is 52;
		else:
			LineBreak;
			say "     You excuse yourself, telling Jennifer that right now is a bad time for you. She gives you an understanding nod, saying 'Ah, too bad - another time then. As I said... the boys really want to have some fun with you.'";
	else if HP of Septus is 52:
		say "     Jennifer leads you over to several other cheerleaders and has you strip down, then you all line up next to each other and start going through gymnastics moves. All the stretching, moving and dancing really gets your heart pumping, soon making you feel somewhat exhausted but still good from the nice workout and company. It's a great bonding experience with the girls too, as there's some chatting and joking going on during the training and some gentle touches are shared as all of you help each other go through the poses.";
		infect "Wolfman Cheerleader";
	wait for any key;

Section 8 - Endings

when play ends:
	if bodyname of player is "Football Wolfman":
		if humanity of player < 10:
			if HP of Septus >= 7 and HP of Septus < 50: [manager]
				say "     As your infection takes a stronger and stronger hold of your mind, you head off to rejoin your team and see how they're coming along. With you there full time, training intensifies for the upcoming big game. Everyone can feel it drawing nearer, game day fast approaching. You and Septus put your top picks through a long series of [']try-outs['] to see who'll earn a position on the starting line-up, eventually setting on your roster and game plan. The plays are drilled in and the cheerleaders know all their cheers by the time the opening game of the season is about to start.";
				say "     When your opponents march onto the field, the open lot across from the warehouse, you look them over. The Soldiers, the opposing team, doesn't look that impressive when compared to your powerful wolfmen, but you know they've been training hard as well. With a big show and a flashy number by your nude cheerleaders, the wolves head out onto the field with the rest of them of them stand at the ready, eager for their chance to play. The Soldiers, clearly taken aback by the enthusiasm of the nude women chanting for the Wolfmen and shaking their sexy bodies, are left at a disadvantage when your team makes the kick and charges into them, knocking through them before they can mount a proper defense.";
				say "     Your opponents use unsavory tactics and resort to their guns to try holding their line. You scream for the refs to call a penalty, but your complaints go unheard. Fortunately, your team knows the plays and they push through with only a few injuries, grabbing more yardage as any soldiers are tackled to the ground. When any of your Wolfmen fall back or stop to fuck fallen soldiers, you or Septus call in the next wolf, keeping your advance fresh and strong as you fight yard by yard to control of the field. As the clock is counting down, you cheer as Septus breaks through the last of the lines, making it to the end zone for a touchdown. After spiking the ball, he pounces upon the stunned commander who's seen his company torn down by the determined wolves and he fucks the major senseless.";
				say "     With the opening game of the season a complete rout, your team celebrates heartily with an overnight orgy. Those fallen soldiers who didn't manage to escape are fucked into a stupor, turning into new rookies and cheerleaders for the team.";
				say "     Ahhh, it's a wonderful game!";
			else if HP of Septus > 49: [went through cheerleading tryouts]
				say "     As you lose your last shreds of humanity, you feel the need to get more players for your team supplant all other concerns. From that point on, you roam the streets of the city, searching for male and female breeding partners to father more wolfmen with. When a squad of male soldiers finally come and take you out of the city, there are at least a dozen of your offspring growing in various wombs - as well as your own. Being calm around the all-male group soldiers, they get lulled into leaving their guard down and don't watch you as closely as other infectees. Their mistake - as you're brought into the quarantine facility, you jump the first female nurse you come across, burying your cock inside her and fucking her with deep strokes before anyone can stop you. You just have time to cum and impregnate her before you get tasered by security and taken away to the lockup of the incurably changed.";
			else: [regular wolfman]
				say "     As you lose your last shreds of humanity, you feel the need to get more players for your team supplant all other concerns. From that point on, you roam the streets of the city, searching for female breeding partners to father more wolfmen with. When a squad of male soldiers finally come and take you out of the city, there are at least a dozen of your offspring growing in various wombs. Being calm around the all-male group soldiers, they get lulled into leaving their guard down and don't watch you as closely as other infectees. Their mistake - as you're brought into the quarantine facility, you jump the first female nurse you come across, burying your cock inside her and fucking her with deep strokes before anyone can stop you. You just have time to cum and impregnate her before you get tasered by security and taken away to the lockup of the incurably changed.";
			stop the action;
		else if HP of Septus >= 7 and HP of Septus < 50: [manager]
			say "     When the rescue comes, you do your best to make the soldiers understand that you know where there's a bunch more wolfmen like you, a huge football team's worth and that you'll need to talk them down if they're to come out peacefully. It takes some effort, but luckily you're able to make the squad leader understand and you're soon able to help get your whole team picked up. You make sure to emphasize that they've not been infecting others, but are themselves transformed.";
			say "     With you there, you're able to tell them that the soldiers are there to take them for registration before the season can begin, there being a delay because of the outbreak. Septus, Jennifer and several others of the smarter ones understand what's really going on, but it helps keep those further gone at ease through the process. Given their numbers, the team is sequestered away from the main populace and given an open field to play games against themselves. This makes it easier for you to maintain control and keep them from being too blatant about their lusts.";
			say "     A few enterprising people, already moving on the chance to capitalize on the possibility of a football league for transformed individuals, are quick to try pulling your team into their plans, being already ready to play. With a little extra pressure from those rich moguls and plenty of bigger problems to deal with, the military releases the team with only a cursory examination of a few of your (hand-picked) players and a quick round of shots. After that, it's just a matter of settling the Wolfmen into their new quarters and strengthening the team while others race to put teams together at all.";
			say "     And all that extra practice and work to breed the best players back in the city pays off in spades, your team running wild on the field through the first half of the season. Once you start trading players - partially to help make things more interesting, but mostly so you can enjoy breaking in the new rookie until they're a proper Wolfman like their new teammates - then the matches start to get more intense and the fanbase grows even faster. Things are tough all around with people struggling to fight out a means to live in this hard new world, and there's nothing like a football game of 'Shifted American Football League' to boost their spirits and give them that extra rush to fight on.";
			if player is male:
				say "     As for you, you always watch your team play from your private skybox, with Jennifer riding your cock or taking it on all fours under you on the bed you had put in. There's something amazingly satisfying with scoring twice at the same time - your wolfmen below, and you in the cheerleader's womb. You sire some of the team's top players with her, there always being at least a couple of your boys on the roster and many others training hard for their chance to play.";
			else if player is female:
				say "     As for you, you get the reputation as the team's tough-as-nails female manager. You always watch your team play from your private skybox, with Jennifer getting groped lustfully in your arms or eating you out. There's something amazingly satisfying about cumming loudly as the crowd cheers for a touchdown. After the game, you and Jennifer are waiting for and ready for Septus, eager for the team captain to breed some more of the team's top players [if player is impreg_ok]in you both[else]in her[end if].";
			else:
				say "     As for you, you get the reputation as a tough negotiator for the team, able to resist the cheap temptations of sex many use as bribes these days. You always watch your team play from your private skybox, with Jennifer getting groped lustfully in your arms or fucked by a strap-on. There's something amazingly satisfying about getting her to cum loudly as the crowd cheers for a touchdown. After the game, you and Jennifer are waiting for and ready for Septus, eager for the team captain to breed some more of the team's top players [if player is mpreg_ok]in you both[else]in her[end if].";
			say "     Ahhh, it's a wonderful game!";
		else if HP of Septus > 49 and HP of Septus < 99: [cheerleader]
			say "     When rescue comes, you're poked and prodded a bit in a medical holding facility outside the city, then declared non-infectious and let go. You seek out the other wolfmen and their cheerleader mothers and join the team for good, training hard to become something special - a wolfman cheerleader among all the young women - and earning the position of co-leader beside Jennifer. Not much later, a crafty businessman announces the creation of the 'Shifted American Football League' - sporting your team in epic battles against (among others) giants, dinosaurs and panther-taurs. Always accompanied by their breathtaking cheer-leading team of course.";
			if player is male:
				say "     The enticing shows you give at each game bring quite a bit of interest from the team's fans with it, with women often trying to sneak in to the hotel- or lockerrooms to get to know you better. You reward those that are clever or persistent about it with a ride on your wolfman cock, filling them with your fertile seed and impregnating them with the next generation of players. Thankfully, the libido of the shifted was accounted for when the S-AFL was thought up, so there's actually a child support provision written right into your contract.";
				if player is female:
					say "     Beside the fan-girls, you also have a very devoted mass of male followers. You pick up one or two of the more muscular and handsome ones sometimes after a game when your pussy demands to be filled...";
			else if player is female:
				say "     The enticing shows you give at each game bring quite a bit of interest from the team's fans with it and you pretty much have a free selection of men from among them. You pick up one or two of the more muscular and handsome ones sometimes after a game when your pussy demands to be filled... which leads to two pregnancies over the next few months and you giving birth to two of the next generation of players. Thankfully, the libido of the shifted was accounted for when the S-AFL was thought up, so there's actually a child support provision written right into your contract.";
			if Jenniferwolves > 1:
				say "     Your sons with Jennifer prove to be excellent players in their own right, making it into the top teams of the new sport. You're very proud every time you see one of them out on the field.";
			else if Jenniferwolves is 1:
				say "     Your son with Jennifer proves to be an excellent player in his own right, earning a place as a Running Back beside you on the field. The first time he scores a winning touchdown, the whole cheer-leading team comes into the lockerroom after the game, riding his cock one after another as a reward. And like father like son, he puts wolf-cubs in quite a few of them.";
		else if HP of Septus is 99:
			say "     When rescue comes, you're poked and prodded a bit in a medical holding facility outside the city, then declared non-infectious and let go. When you hear word of the 'Shifted American Football League' starting up and that the Wolfmen are going to be one of the star teams, you feel an ache pulling to the nascent sport. You go all their games, even the road games, traveling across the dangerous wilds of the chaotic nation between the clusters of civilization. You always pick a seat off at the back to remain unseen, not wanting to be recognized, conflicted over your urge to play and your shame of being kicked off the team.";
			say "     At one of these games, you get spotted by a recruiter from one of the other teams who, recognizing you as having the same body type as the superstar team of the league, pressures you hard to try playing for his boss's team. You resist at first, but soon your urge to play the game wins out and you sign on with the 'Hybrids', one of the more eclectic teams in the league. Unlike most others with a universal infection, their lineup is much more diverse and holds many with hybridized infections.";
			say "     You start out as a rookie prospect, but you soon get noticed thanks to all your added training and natural advantage as a football wolfman. After a few games where you're playing in the second and third line-up, you get pulled in to open a game - against the undefeated Wolfmen. Seeing you facing off against them, you get a lot of angry glares from the opposing team and Septus refuses to meet your glances. So you do the only thing you can, grit your teeth, growl at the wolfman in front of you and play the best damn game you can. It is a rough game, both sides going all out and, despite your team being ranked one of the lowest in the league, you guys manage to keep it close. In the end, you lose by only a few points against a team that regularly has double the score of their opponents. But it's not the near victory or the word from the coach that you'll be a starter from now on that has you most pleased, but it's the pat on the back you get from Septus when the game's done that really gets you stoked.";
		else:
			say "     When rescue comes, you're poked and prodded a bit in a medical holding facility outside the city, then declared non-infectious and let go. You seek out the other wolfmen and their cheerleader mothers and join the team for good, training hard to become one of the best players and earning the position of Quarterback. Not much later, a crafty businessman announces the creation of the 'Shifted American Football League' - sporting your team in epic battles against (among others) giants, dinosaurs and panther-taurs. Always accompanied by their breathtaking cheer-leading team of course.";
			if player is male:
				say "     Your exalted position brings a lot of adoration and fans with it, with women often trying to sneak in to the hotel- or lockerrooms to get to know you better. You reward those that are clever or persistent about it with a ride on your wolfman cock, filling them with your fertile seed and impregnating them with the next generation of players. Thankfully, the libido of the shifted was accounted for when the S-AFL was thought up, so there's actually a child support provision written right into your contract.";
				if player is female:
					say "     Beside the fan-girls, you also have a very devoted mass of male followers. You pick up one or two of the more muscular and handsome ones sometimes after a game when your pussy demands to be filled...";
			else if player is female:
				say "     Your exalted position brings a lot of adoration with it and you pretty much have a free selection of men from among your devoted fans. You pick up one or two of the more muscular and handsome ones sometimes after a game when your pussy demands to be filled... which leads to two pregnancies over the next few months and you giving birth to two of the next generation of players. Thankfully, the libido of the shifted was accounted for when the S-AFL was thought up, so there's actually a child support provision written right into your contract.";
			if Jenniferwolves > 1:
				say "     Your sons with Jennifer prove to be excellent players in their own right, making it into the top teams of the new sport. You're very proud every time you see one of them out on the field.";
			else if Jenniferwolves is 1:
				say "     Your son with Jennifer proves to be an excellent player in his own right, earning a place as a Running Back beside you on the field. The first time he scores a winning touchdown, the whole cheer-leading team comes into the lockerroom after the game, riding his cock one after another as a reward. And like father like son, he puts wolf-cubs in quite a few of them.";
	else:
		if humanity of player > 10:
			if HP of Septus is 5: [beat the entrance test, was at the lair]
				say "     Even if you didn't become a wolfman yourself and join the team, Septus, Jennifer and the others are still very impressed with you. When the creation of the 'Shifted American Football League' is announced several months after you leave the city, you get invited to the first game, joining the players in the lockerroom and watching the action right from the side of the field. As a honorary member, you get a free lifetime ticket for their games and are always welcome in the player areas and at celebrations... which usually turn into orgies between the wolfmen and their cheerleaders sooner or later.";
				if Jenniferwolves > 1:
					say "     Your sons with Jennifer prove to be excellent players in their own right, making it into the top teams of the new sport. You're very proud every time you see one of them out on the field.";
				else if Jenniferwolves is 1:
					say "     Your son with Jennifer proves to be an excellent player in his own right, earning a place as the Quarterback. The first time he scores a winning touchdown, the whole cheer-leading team comes into the lockerroom after the game, riding his cock one after another as a reward. And like father like son, he puts wolf-cubs in quite a few of them.";
			else if HP of Septus >= 7 and HP of Septus < 50:
				say "     When the rescue comes, you do your best to make the soldiers understand that you know where there's a huge football team's worth of infected survivors and that you're the strange team's manager. You do your best to make them understand that you'll need to talk them down if they're to come out peacefully. You make sure to emphasize that they've not been infecting others, but are themselves transformed. It takes some effort, but luckily you're able to make the squad leader understand and you're soon able to help get your whole team picked up.";
				say "     With you there, you're able to tell them that the soldiers are there to take them for registration before the season can begin, there being a delay because of the outbreak. Septus, Jennifer and several others of the smarter ones understand what's really going on, but it helps keep those further gone at ease through the process. Given their numbers, the team is sequestered away from the main populace in large tents and given an open field to play games against each other. This makes it easier for you to maintain control and keep them from being too blatant about their lusts. Leveraging your position as their manager, you're able to make frequent visits to the cordoned off tents where they're being kept.";
				say "     A few enterprising people, already moving on the chance to capitalize on the possibility of a football league for transformed individuals, are quick to try pulling your team into their plans, being already ready to play. With a little extra pressure from those rich moguls and plenty of bigger problems to deal with, the military releases the team with only a cursory examination of a few of your (hand-picked) players and a quick round of shots. After that, it's just a matter of settling the Wolfmen into their new quarters and strengthening the team while others race to put teams together at all.";
				say "     And all that extra practice and work to breed the best players back in the city pays off in spades, your team running wild on the field through the first half of the season. Once you start trading players - partially to help make things more interesting, but mostly so you can enjoy watching the team break in the new rookie until they're a proper Wolfman like their new teammates - then the matches start to get more intense and the fanbase grows even faster. Things are tough all around with people struggling to fight out a means to live in this hard new world, and there's nothing like a football game of 'Shifted American Football League' to boost their spirits and give them that extra rush to fight on.";
				if player is male:
					say "     As for you, you always watch your team play from your private skybox, with Jennifer riding your cock or taking it on all fours under you on the bed you had put in. There's something amazingly satisfying with scoring twice at the same time - your wolfmen below, and you in the cheerleader's womb.";
				else if player is female:
					say "     As for you, you get the reputation as the team's tough-as-nails female manager. You always watch your team play from your private skybox, with Jennifer getting groped lustfully in your arms or eating you out. There's something amazingly satisfying about cumming loudly as the crowd cheers for a touchdown. After the game, you and Jennifer are waiting for and ready for Septus, eager for the team captain to breed some more of the team's top players [if player is impreg_ok]in you both[else]in her[end if].";
				else:
					say "     As for you, you get the reputation as a tough negotiator for the team, able to resist the cheap temptations of sex many use as bribes these days. You always watch your team play from your private skybox, with Jennifer getting groped lustfully in your arms or fucked by a strap-on. There's something amazingly satisfying about getting her to cum loudly as the crowd cheers for a touchdown. After the game, you and Jennifer are waiting for and ready for Septus, eager for the team captain to breed some more of the team's top players [if player is mpreg_ok]in you both[else]in her[end if].";
				say "     Ahhh, it's a wonderful game!";
[
			else if HP of Septus > 49 and HP of Septus < 52:
				say "     <Placeholder for Wolfman Cheerleader Ending>";
]

Wolfman ends here.
