Version 2 of Assorted Events by Stripes begins here.
[version 2 - Snow Leopard event ]

"Adds a batch of random events to Flexible Survival scattered around the city."


Section 1- Ninjas?

Fallen Kunoichi is a situation.
The sarea of Fallen Kunoichi is "Museum";
when play begins:
	add Fallen Kunoichi to badspots of furry;

Instead of resolving a Fallen Kunoichi:
	say "     Passing through the halls of the museum, you come across the aftermath of what was an epic battle.  Many of the displays here are knocked over or shattered by what must have been powerful blows by a great weapon.  You can see gouges cut deep into the walls, many stained with blood.  Smaller darts and shuriken are embedded in the wall as well.  The floor is marked with several blood stains and cum puddles, as well as soot marks from flash powder or smoke bombs.  Clearly many battled a great foe here.";
	say "     Half-buried in the ruins of one display, you find the grisly remains of a feline ninja cleaved in two at the waist.  Drawing off its mask, you see her face feminine locked in an expression of great pain and horror.  Something about her death gaze disturbs you deep inside and you are unable to bear the sight of it.  You brush her eyes shut and pull the mask back down over her feline face.  Beside the fallen kunoichi is her weapon, a bo staff with ornate metal tips.  Cautious of any infected blood, you quickly check her [italic type]shinobi shozoko[roman type], but find nothing else of use.";
	say "     Bo staff obtained.";
	add "bo staff" to invent of player;
	increase score by 5;
	Now Fallen Kunoichi is resolved;


Table of Game Objects (continued)
name	desc	weight	object
"bo staff"	"An ornate fighting staff."	2	bo staff

bo staff is an armament. It is part of the player. It has a weapon "[one of]your bo staff[or]your fighting staff[or]your staff[or]your bo staff with a hard whack[or]the long pole[or]your staff with a fast jab[at random]". The weapon damage of bo staff is 3. The weapon type of bo staff is "Melee". It is not temporary.


Suddenly Ninjas is a situation.
The sarea of Suddenly Ninjas is "Museum";
when play begins:
	add Suddenly Ninjas to badspots of furry;
	add Suddenly Ninjas to badspots of guy;

Instead of resolving a Suddenly Ninjas:
	say "     Suddenly!  Ninjas!  Everywhere!";
	say "     You are travelling through the museum, minding your own business when suddenly a pack of ninjas leap out to attack you.  Ninja stars are flying through the air and the dark costumed cats are leaping in to attack you from all sides, brandishing an array of weapons taken from the Japanese history exhibit.  There are too many to try fighting them all.  They would bear your down by sheer numbers and countless poisoned shuriken.  You are forced to try fleeing, but several of the felines leap in to fight you.  You dodge and run, but one is able to make an attempt to stop you, fighting you even as you both run down the hall.";
	challenge "Ninja Cat";
	if lost is 1:
		say "[lostninjahorde]";
	otherwise:
		say "     Having escaped the first as you fought him while running side by side down the hall, you continue your run through the museum.  You dive past a few displays and leap over a small satyr party, knocking over their large ewer of wine.  This causes some distraction as the satyrs get up and turn on the felines, letting you gain a little distance before another one is able to make an attack on you.";
		challenge "Ninja Cat";
		if lost is 1:
			say "[lostninjahorde]";
		otherwise:
			say "     With another ninja evaded and several left behind to deal with the angered satyrs, you duck through the aerospace wing.  Glancing up, you can see the suspended planes and banners sway, telling you there is at least one left up there.  You try leaping over a display cordon and running past the display when the ninja makes his move.";
			challenge "Ninja Cat";
			if lost is 1:
				say "[lostninjahorde]";
			otherwise:
				say "     When that feline withdraws after his defeat, you dive through an employee access door and rush down the passage, coming out in an Early American exhibit.  Uncaring about the value or frailty of the items, you grab several period pieces of furniture and toss them helter-skelter in front of the doorway to block the approaching ninja horde.  Knowing that your impromptu barricade will only hold them off for a short time before they push through or go around, you quickly run back to the relative safety of the museum lobby.";
				increase score by 15;
	Now Suddenly Ninjas is resolved;

to say lostninjahorde:
	say "     With the victorious ninja having finished with you, several others move in to have their way with you as well.  You are groped and fondled by the felines who tease and excite you to arousal and climax again and again.  Their skillful paws roam all over your body while they take turns filling all your holes.  You are pumped full of feline cum again and again by the sexy ninjas who never say a word as they fuck you completely senseless.  Lost in the lust of the ninja lovers, you eagerly take it all.  In the end, you feel as if several cups worth of cum have been pumped into you from every hole and even more coats your body.  You are left panting on the floor in a large puddle of musky semen, moaning as you roll around in it and leaking more cum out to add to it.";
	increase libido of player by 25;
	if libido of player > 100, now libido of player is 100;
	decrease humanity of player by 18;
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Ninja Cat":
			now monster is y;
			break;
	say "[impregchance][impregchance]";
	infect "Ninja Cat";
	infect "Ninja Cat";


Section 2 - Other events

Losing It is a situation.
snowmeowfight is a number that varies.
when play begins:
	add Losing It to badspots of furry;
	add Losing It to badspots of guy;


Instead of resolving a Losing It:
	say "     Travelling through the city you see a stumbling figure with a skirt and a handbag in an alley.  Hoping to find another survivor, you rush over, but are disappointed by her current state.  Her face is reshaping itself into a feline muzzle while fur spreads over the last of her uncovered skin.  But most striking of it is the large erection and hefty balls propping up her... no, his skirt.  Suffering a complete gender swap from the infection, the poor woman has become a snow leopard man.  You try to help him along while he complains about the wretched heat and pants.  Then something changes in his eyes and he looks at you with an animalistic thirst.  He grabs you tightly and tries to wrestle you down, his mind unravelling even as you try to help him.  You escape his grip, but are left with facing the lustful snow leopard.";
	now snowmeowfight is 0;
	challenge "Snow Leopard";
	if snowmeowfight is 1:
		say "     Having dealt with the lustful feline, you get ready to leave, but notice the purse next to the tattered remains of the skirt that was torn off in the fight.  You take a moment to examine these last remnants of the woman's feminine identity.  You carefully avoid several spots of snowmeow cum, whether his or that of the one who changed her, you cannot say, as you shift the clothes around.  You are more successful with her purse, finding a cannister of mace.  It seems she failed to use it in time and paid the price.  You mentally remind yourself to use it before things get out of hand and you end up like her... him.";
		say "     Pepperspray obtained.";
		add "pepperspray" to invent of player;
		increase score by 5;
	otherwise if snowmeowfight is 2:
		say "     After having been beaten by the beautiful feline, you stagger off in a bit of a lustful haze.  Something about the whole experience leaves you lustful and eager for more.";
		increase libido of player by a random number from 3 to 8;
		if "Horny Bastard" is listed in feats of player, increase libido of player by 2;
		if "Cold Fish" is listed in feats of player, decrease libido of player by 2;
		if libido of player > 100, now libido of player is 100;
	otherwise:
		say "     Escaping the crazed feline, you dash off into the city, deciding to search somewhere away from the newly transformed and lustful feline.  Perhaps once it has sated its lusts from its transformation it will wander off and you can return to searching.";
	Now Losing It is resolved;


Concession Stand is a situation.
The sarea of Concession Stand is "Midway";
foodvendor is a number that varies.
when play begins:
	add Concession Stand to badspots of furry;
	add Concession Stand to badspots of guy;

Instead of resolving a Concession Stand:
	if foodvendor is 0:
		say "     Wandering through the bright lights of the state fair, you wander into a cluster of food stands advertising a variety of fried foods and sugary treats.  Most are closed up right now, but one seems to be open with a strange figure manning the stand.  This man is wearing a bright green suit with yellow trim and a yellow bowler hat.  While you think he's human, his features seem to be strangely shifting, making it hard for you to pin down exactly what he looks like.  At moments, you think you see a hint of lupine in his eyes or a feline muzzle, but then you can no longer discern these traits.  For a second you think you see a broad tail, but then it is gone as if it were never there.  Confused by all this, you miss the first part of his sales pitch, where he's trying to entice you into buying some of the snacks he has on sale.  '...so like I said, not a penny from your pocket do I want for them?  A delicious snack to satisfy your cravings and a cool drink to help you beat the heat,' he says as he motions to the tasty looking treats on display and the cans of soda chilling in an ice barrel.  'So, we got a deal?' he asks, holding out his hand.";
		if the player consents:
			say "     As you take the strange salesman's, you can feel a tingle run up through your arm.  The guy grins and hops onto his counter, sitting in front of you as he unzips his pants.  He whips out his cock, and like the rest of him, it is difficult to discern its features.  At times, you think it more feline, others more equine.  Even as you wrap your lips around it and start sucking, the feel and taste on your tongue changes over and over again.  You momentarily find yourself wondering when you started sucking his cock and why, but your mind can't hold onto it and instead you start puzzling over the form of his cock again.  You felt a knot there for a few bobs of your head, but now it seems more like a pair of hemipenises instead.  You keep sucking at his shifting cock, your hazy mind focused on its ever-changing shape and taste.  Eventually, he grips your head and holds you down into his lap as his cock gets quite long and is stuffed down your throat, unleashing a thick rush of cum into your belly.";
			say "     The vendor releases you and flips back behind the counter.  With a broad grin that seems momentarily feline, he passes you a tray of snacks and a can of soda.  You head off, still in a bit of a daze, licking your lips as you try to figure out the flavour of cum you just guzzled down.";
			sort table of random critters in random order;
			now monster is 1;
			infect;
			infect;
			add "chips" to invent of player;
			add "soda" to invent of player;
			decrease humanity of player by a random number between 8 and 6;
			if "Pure" is listed in feats of player, increase humanity of player by a random number between 2 and 5;
			if "Corrupt" is listed in feats of player, decrease humanity of player by a random number between 1 and 4;
			increase foodvendor by 1;
		otherwise:
			say "     Shaking your head and looking away from him, you try to refocus you mind.  Wary of the strangely hypnotic figure, you move away, taking care not to look at him.  You resolve not to return, lest your mind be ensnared again.";
			increase score by 1;
			now Concession Stand is resolved;
	otherwise:
		say "     Your path meandering path through the fair ends up taking you back to those concession stands and you can see the green suited fellow still at his stand.  He waves you over with a broad grin.  Shall you return to his stand?";
		if the player consents:
			if foodvendor is 1:
				say "     As you walk up to the stand, the gentleman sets another tray of fried treats and a can of soda on the counter, then leaps over it.  You don't say a word as he whips out his cock again.  Any thoughts of discussion or dealing with the man fade as you again bury his throbbing meat in your mouth and suck away at it.  He chuckles softly and rubs your head, pumping into your mouth.  You run your tongue over some feline barbs, then across a pointed, canine glans.  It is thick, then long, then almost human, then unnaturally ridged.  These changes continue as you try to figure out each new one, loving the ever-changing delight more and more.  You put a hand to his ballsac and find it changing as well.  The orbs inside always remain quite large and heavy, though their shape shifts subtly.  But more apparent is the soft fur, no the hard scales, no the smooth skin, that covered his scrotum.  This time your lustful cocksucking is rewarded when you feel a knot briefly locking his cock in your mouth and he sprays thick cum into your mouth.  When the knot fades away as if never there, you pull your mouth back and swallow down the semen.  You take your purchased wares with a lustfully clouded mind that lingers as you wander back into the flashy fair.";
				sort table of random critters in random order;
				now monster is 1;
				infect;
				infect;
				add "chips" to invent of player;
				add "soda" to invent of player;
				decrease humanity of player by a random number between 10 and 20;
				if "Pure" is listed in feats of player, increase humanity of player by a random number between 3 and 6;
				if "Corrupt" is listed in feats of player, decrease humanity of player by a random number between 2 and 5;
				increase foodvendor by 1;
			otherwise if foodvendor is 2:
				say "     Knowing what is coming, you help the gentleman open his bright green pants when he moves over the counter.  Pulling out his cock, you stuff it into your mouth with a soft moan, taking delight at having it in your mouth again.  You love how it keeps changing for you, giving you a myriad of delightful tastes and sensations.  He rubs your head and moans softly as you bob over it, running your tongue over it.  You plunge it down your throat as it becomes thick and donkey-like, then suck firmly at it becomes small and lapine.  Its draconic knobs and ridges stimulate your throat as he switches to thrusting into your mouth.  'Oh, you're so good at this,' he moans.  'You should come back again.  Since you're my favorite customer, I'll give you something really special.'";
				say "     Rubbing his balls and sucking his cock, you lavish attention upon him, becoming more and more eager to please him.  When he finally cums, his thick seed comes blasts from a large, leonine cock and you gulp it all down, rubbing your belly as his semen fills it.  You get up and lick your lips, barely remembering to take the food items.  You were so focused on getting the cum, you barely remembered the purchase at all this time.";
				sort table of random critters in random order;
				now monster is 1;
				infect;
				infect;
				add "chips" to invent of player;
				add "soda" to invent of player;
				decrease humanity of player by a random number between 12 and 24;
				if "Pure" is listed in feats of player, increase humanity of player by a random number between 4 and 8;
				if "Corrupt" is listed in feats of player, decrease humanity of player by a random number between 3 and 6;
				increase foodvendor by 1;
			otherwise if foodvendor is 3:
				say "     Your friend the vendor smiles very happily as you come over again.  He doesn't bother to put out any food this time and hops fully over the counter.  Putting his shifting hands (paws?) on you, he leans you over the counter and unzip his fly.  Feeling him move to grope your ass, you moan softly and get your clothes and gear off.  He runs his fingers (talons?) down your back and rubs his throbbing shaft against your rear, making you moan again.";
				wait for any key;
				if cunts of player > 0:
					say "     The vendor lines up his cock to your pussy, then sinks it into you while it is small and musine in form.  It then shifts and becomes thick and equine, filling you deeply.  This sudden change leaves you gasping in pleasure, writhing over his meat.  It changes inside you again and again as he pounds away at you.  His penis drives into you with a canine knot that pops tightly into you, then pulls out with feline barbs that stimulate you walls deliciously.  It rubs your vaginal folds with draconic ridges, then pushses past your cervix as a slimy tendril[if cocks of player > 1].  His hands, feeling like velvety paws for a moment, grip your cocks and stroke them as he fucks you good and hard[otherwise if cocks of player is 1].  His hand, feeling like a velvety paw for a moment, grips your cock and strokes it as he fucks you good and hard[end if].  You writhe under this ever-changing rutting, loving every unique moment of pleasure it gives you.";
				otherwise:
					say "     The vendor lines up his cock to your tight asshole, then sinks it into you while it is small and musine in form.  It then shifts and becomes thick and equine, filling you deeply.  This sudden change leaves you gasping in pleasure, writhing over his meat.  It changes inside you again and again as he pounds away at you.  His penis drives into you with a canine knot that pops tightly into you, then pulls out with feline barbs that stimulate you walls deliciously.  It rubs against your spread anus with draconic ridges, then pushses deep into your bowels as a slimy tendril[if cocks of player > 1].  His hands, feeling like velvety paws for a moment, grip your cocks and stroke them as he fucks you good and hard[otherwise].  His hand, feeling like a velvety paw for a moment, grips your cock and strokes it as he fucks you good and hard[end if].  You writhe under this ever-changing rutting, loving every unique moment of pleasure it gives you.";
				wait for any key;
				say "     'You love that, don't you?' he says in a soft, alluringly feline voice as ear while pounding a new cock into you with each thrust.  You respond by nodding your head eagerly.  'Of course, you'll want it again and again, won't you?'  You can only nod all the more, agreeing with his virile, lapine tone.  'You want to stay here and be my slutty pet to get it all the time.  Just think of it, being my slut, changing into different creatures for me to fuck.  Always new pleasures to be had.  You want that, don't you?' he rumbles in your ear, sounding strong and lupine now.  Lost in the haze of his enthralling power, you can't help but nod vigorously, agreeing to become his, wanting to be used like this over and over again.";
				wait for any key;
				say "     Having given in to him, you can feel the last of your will draining away, succumbing to being your master's slutty pet.  His to change.  His to fuck[if cunts of player > 0].  His to breed[end if].  And he rewards you by driving his cock deep inside you, feeling like an equine's, but so much larger, perhaps an elephant?  With his giant cock thrust deep inside you, he blasts his hot load into you, filling your [if cunts of player > 0]womb[otherwise]ass[end if] with his virile seed.  You moan and pant in delight as its volume bloats your tummy a little, making you feel so full and happy with so much of your new master's cum inside you.";  
				now humanity of player is 9;
				increase foodvendor by 1;
				now tailname of player is "Shifting Pet";
				now facename of player is "Shifting Pet";
				now skinname of player is "Shifting Pet";
				now bodyname of player is "Shifting Pet";
				now cockname of player is "Shifting Pet";
				end the game saying "You submitted to the shifting man at the fair, becoming his slutty pet.";
				wait for any key;
				follow the turnpass rule;
				stop the action;
		otherwise:
			say "     Remembering how the man's appearance has affected you in the past, you turn away and resolve not to return here, lest he affect your mind again and you accept another of his deals.";
			now Concession Stand is resolved;

when play ends:
	if foodvendor is 4:
		if "Male Preferred" is listed in feats of player:
			say "     Your shapeshifting master is true to his word and keeps you as a lustful pet, fucking you in a myriad of ways and in an infinite combination of bodies.  He changes you again and again, spending days or weeks as canines, felines, equines and every other creature.  Almost fully human at times to completely animal at others.  Any form his mind desires and always changing you to another before either of you can become bored of it.  You smile happily as he ensnares others to add to his harem over time, giving you playmates to enjoy.  He alters them to suit his whims as well, creating even greater variety in the pleasures for you to experience.";
		otherwise if "Female Preferred" is listed in feats of player:
			say "     Your shapeshifting master is true to his word and keeps you as a lustful pet, fucking you in a myriad of ways and in an infinite combination of bodies.  He changes you again and again, spending days or weeks as canines, felines, equines and every other creature.  Almost fully human at times to completely animal at others.  Any form his mind desires and always changing you to another before either of you can become bored of it.  You smile happily as he ensnares others to add to his harem over time, giving you playmates to enjoy.  He alters them to suit his whims as well, creating even greater variety in the pleasures for you to experience.  You are bred by him and his pets on numerous occasions, birthing different creatures and hybrids every time.";
		otherwise if "Herm Preferred" is listed in feats of player:
			say "     Your shapeshifting master is true to his word and keeps you as a lustful pet, fucking you in a myriad of ways and in an infinite combination of bodies.  He changes you again and again, spending days or weeks as canines, felines, equines and every other creature.  Almost fully human at times to completely animal at others.  Any form his mind desires and always changing you to another before either of you can become bored of it.  You smile happily as he ensnares others to add to his harem over time, giving you playmates to enjoy.  He alters them to suit his whims as well, creating even greater variety in the pleasures for you to experience.  You are bred by him and his pets on numerous occasions, birthing different creatures and hybrids every time.  Your master takes to becoming a female or a herm at times so you may enjoy breeding her and the other pets on occasion.";
		otherwise:				[all open]
			say "     Your shapeshifting master is true to his word and keeps you as a lustful pet, fucking you in a myriad of ways and in an infinite combination of bodies.  He changes you again and again, spending days or weeks as canines, felines, equines and every other creature.  Almost fully human at times to completely animal at others.  Any form his mind desires and always changing you to another before either of you can become bored of it.  Not even your gender is fixed, changing from males to females and anything in between.  You smile happily as he ensnares others to add to his harem over time, giving you playmates to enjoy.  He alters them to suit his whims as well, creating even greater variety in the pleasures for you to experience.  You are bred by him and his pets on numerous occasions, birthing different creatures and hybrids every time.  Your master takes to becoming a female or a herm at times so you may enjoy breeding her and the other pets on occasion.";
		if hellHoundLevel > 0:
			say "[line break]";
			say "     Lost in the lustful decadence of being a slutpet of any kind for your master, you forget about your deal with the hellhound, troubled only be the occasional, unremembered dream.  But he does not forget.  Having given in to a life of debauchery and sin, your foul contract was only delayed to better prepare you for your coming, unending fate.";
			say "     When that times comes, you are pulled into the pits of Hades and given a life of eternal servitude as a sexual slave to the countless foul hellhounds who guard the gates of Hell.  Your body is changed by them to whatever suits their dark whims and your time in countless forms for your former master has served you well in preparing you for this unending task as the lustful slave to the demonic hounds.  Your body is used in every foul, deviant act imaginable and responds lustfully to their every dark need or twisted whim";
			if cocks of player > 0:
				say ".  Some of the fel beasts allow you to breed the hellhound bitches, but only when they are mounting you at the same time.  Regardless of your form, you always sire pure hellspawn in these hellhounds.  When they eventually grow strong, they join the others in slaking their sexual urges upon your mutable body until the ends of time.";
			otherwise:
				say ".  The fel beasts breed you incessantly, filling your womb with litters of their spawn.  Regardless of your form, they are always pure hellspawn like their brethren.  They nurse from your breasts and grow strong, eventually joining the others in mating you until the ends of time.";
		stop the action;


Lovers Bench is a situation.
The sarea of Lovers Bench is "Park";
loversbench is a number that varies.
when play begins:
	add Lovers Bench to badspots of furry;
	add Lovers Bench to badspots of guy;
	add Lovers Bench to badspots of girl;

Instead of resolving a Lovers Bench:
	if loversbench is 0:
		say "     While travelling through the park, you come across a pair making out lustfully on one of the benches.  The male atop is a anthro wolf with grey fur and a strong build.  The female stretched back on the bench is a spotted feline, perhaps an ocelot.  Their clothes are scattered around the bench and seem partially torn.  You hang back, wary to approach but unwilling to look away from the sight.  You watch as the wolf eases his thick cock into the smaller woman's pussy, making her yowl in delight.  She puts her arms around him and grabs his rear, pulling him into her with each thrust he makes.  The ocelot licks and kisses at the wolf's neck and he brings a paw to caress her breast while the other digs into the back of the wooden bench.  When the wolf finally drives his lupine knot into the feline's cunt, they growl passionately, cumming hard.  You do as well, having started playing with yourself at some point while peeping on the spectacle.  Finished, the wolf sags atop the feline as they start licking and kissing one another.  The ocelot's markings start to spread into the wolf's pelt while her fur takes on a more greyish tint overall.";
		say "     You quietly walk away, ashamed of your peeping and quite certain they have succumb too far to be safe to approach.  Even if currently sated, they are both equally infectious.  But at least they are a couple.";
		increase score by 1;
		increase loversbench by 1;
	otherwise:
		say "     Your meandering through the park brings you back to the lovers['] bench and find them gone, though their scattered clothes remain.  This helps confirm your earlier guess that they'd succumbed.  The bench has quite a few scratches and claw marks on it, clearly having been used by many others since the outbreak, as well as older, carved grafitti hearts.  You suspect this bench has been a make-out spot for quite some time, being in a more secluded spot in the park.  Certainly there is a strong scent of sex hanging around it, even in the open air of the park.  Remembering the lovemaking you witnessed here, you start to get turned on.";
		if scenario is "Bunker" or scenario is "Caught Outside":
			say "     You focus on checking out the scattered clothes for anything of use.  The clothes, as you saw, are a little torn, perhaps from when they were first infected or in their rush to mate at the bench.  Their food has been reduced to scraps and crumbs and their drink bottles are empty.  There is a small pocketknife in the wolf's khakis.  It is no better than your own, so you toss it aside.  The woman's jeans do yield a small cannister of mace, which you store somewhere within easy reach.  You leave the rest, finding nothing else of use to you.";
			say "     Pepperspray obtained.";
			add "pepperspray" to invent of player;
			increase score by 5;
		otherwise:
			say "     You focus on checking out the scattered clothes for anything of use.  The clothes, as you saw, are a little torn, perhaps from when they were first infected or in their rush to mate at the bench.  Their food has been reduced to scraps and crumbs and their drink bottles are empty.  There is a small pocketknife in the wolf's khakis.  Thinking it may be a useful tool or perhaps a weapon in a pinch, you take it.  The woman's jeans do yield a small cannister of mace, which you store somewhere within easy reach.  You leave the rest, finding nothing else of use to you.";
			say "     Pocketknife and pepperspray obtained.";
			add "pocketknife" to invent of player;
			add "pepperspray" to invent of player;
			increase score by 10;
		if companion of player is pink raccoon:
			repeat with y running from 1 to number of filled rows in table of random critters:
				choose row y in table of random critters;
				if name entry is "Raccoon":
					now monster is y;
					break;
			if cocks of player > 0:
				say "     As you're finishing up your scavenging, your pink raccoon pet takes your hand in his and pulls you over to the bench with a soft chirr.  He smiles and kneels on the bench, flagging his tail up to uncover his tight rump.  He makes a needful moan.  It seems your pet wants to enjoy the lovers['] bench with you as well.  The scents here, which have been getting you more aroused, seem all the stronger and you decide to take your pet up on his offer.  You stand behind him and give his rump a squeeze, spreading his cheeks and lining up your cock with his pink pucker.  You dribble pre onto it, then slowly ease into him, enjoying the sound of his soft moan as you penetrate him.";
				say "     Gripping the bench tightly with his little claws, her leaves fresh holes in the wood while you thrust into him.  You stroke his back and sides, telling him what a good pet he is and how much you love him.  Something about the bench makes this more than just sex, but instead lovemaking.  Your coon smiles back at you and his cotton candy scent fills the air, mingling with all the other arousing scents.  You reach around to pump at his cock while you work your cock into his tight bottom.  His pink, banded tail wraps around your waist, snugging you lovingly.";
				say "     After a powerfully long orgasm that pumps your seed into your pet's ass and his own sweet smelling cum is added to bench's scents, you withdraw.  Your pet is extra-snuggly after the lovemaking, nuzzling and kissing at you and you happily return this affection, feeling closer to him.";
			otherwise:
				say "     As you're finishing up your scavenging, your pink raccoon pet takes your hand in his and pulls you over to the bench with a soft chirr.  He smiles and nuzzles you, guiding you to lay back on the bench.  You can see the front of his skirt standing up as his erect cock makes it rise.  He makes a needful moan as you slip a hand under his skirt to fondle his balls.  It seems your pet wants to enjoy the lovers['] bench with you as well.  The scents here, which have been getting you more aroused, seem all the stronger and you decide to take your pet up on his offer.  You stretch back on the bench, leaving one leg draped over the side, giving your pink pet clear access to your dripping slit.  He climbs atop you, lining up his cock even as he nuzzles at your neck.  You scritch his ears and caress his back as his penis sinks into your cunt, enjoying the sound of his soft moan as he slowly, tenderly penetrates you.";
				say "     Gripping the bench tightly with his little claws, her leaves fresh holes in the wood while he thrusts into you.  You stroke his back and sides, telling him what a good pet he is and how much you love him.  Something about the bench makes this more than just sex, but instead lovemaking.  Your coon smiles down at you, kissing and nuzzling your face as you do the same.  His cotton candy scent fills the air, mingling with all the other arousing scents.  You reach around to grab his rump, squeezing it and making him moan as you pull him to thrust harder and harder into your dripping pussy.";
				say "     After a powerfully long orgasm that pumps an impressive load of his coonboi seed into your pussy, he withdraws slowly.  Your pet is extra-snuggly after the lovemaking, nuzzling and kissing at you and you happily return this affection, feeling closer to him.";
				say "[impregchance]";
			infect "Raccoon";
			now libido of player is libido of player / 2;
			decrease humanity of player by 5;
			if "Pure" is listed in feats of player, increase humanity of player by 1;
			if "Corrupt" is listed in feats of player, decrease humanity of player by 1;
			increase xp of pink raccoon by level of pink raccoon + 1;
			increase score by 20;
		otherwise if companion of player is Gryphoness:
			repeat with y running from 1 to number of filled rows in table of random critters:
				choose row y in table of random critters;
				if name entry is "Hermaphrodite Gryphon":
					now monster is y;
					break;
			say "     As you're finishing up your scavenging, Denise takes your hand in hers and grins playfully at you.  She gives you a tug over to the bench.  'We should... umm... I mean, everyone's using this bench for...' she says softly as she sits back on it, running her paws over her lovely body.  Her nipples are quite hard, as is her cock and gryphon juices drip from her aroused pussy.  The scents here, which have been getting you more aroused, seem all the stronger and you decide to take your pet up on her offer.";
			if cocks of player > 0:
				say "     You snuggle up beside her on the bench, nuzzling and kissing one another.  Her paw soon find its way to your cock and strokes at your stiff shaft.  With her other arm around you, she moves to lay back on the bench while guiding you atop her.  Soon enough, you are lining your cock up with that dripping snatch and sinking into her, causing her to moan lustfully.  You continue kissing as you thrust into her, enjoying the warm, wet grip of her cunt around you.  Her paws roam over your body while her taloned feet dig into the bench, adding her marks to those of the others who've used it.  Your sex is lustful, but loving as well, as something about the bench makes this more like lovemaking than raw sex.  With one hand on the bench for support like that wolf, you let the other stroke Denise's bosom as she sings out her love for you and you respond in kind.";
				say "     After a powerfully long orgasm that pumps your seed into the sexy gryphoness's pussy and her own cum sprays across her body and the bench, you withdraw.  Your companion is extra-snuggly after the lovemaking, nuzzling and kissing at you and you happily return this affection, feeling closer to her.";
			otherwise:
				say "     You snuggle up beside her on the bench, nuzzling and kissing one another.  Her paw soon find its way to your pussy and she fingers and teases your wet folds.  With her other arm around you, she moves to sit at one corner of the bench and guides you to sit in her lap.  Soon enough, you are lining up her throbbing cock with your wet hole while kissing your loving companion.  You moan in pleasure as you sink down on her leonine cock, gripping her shoulders.  She nuzzles your bosom, licking and sucking at your nipples before moving her head back up to kiss you.  You continue kissing as you ride in her lap, enjoying the feel of her throbbing meat inside your cunt.  One paw roams over your body while the other digs into the bench, adding her marks to those of the others who've used it.  Your ride her cock lustfully, but loving as well, as something about the bench makes this more like lovemaking than raw sex.  With your arms around her, you hold her lovingly while scritching at her wing roots, which makes her sing out her love for you and you respond in kind.";
				say "     After a powerfully long orgasm that pumps an impressive load of her gryphon seed into your pussy and her own female juices leak onto the bench to join the others, you ease yourself off her spent shaft.  Your companion is extra-snuggly after the lovemaking, nuzzling and kissing at you and you happily return this affection, feeling closer to her.";
				say "[impregchance]";
			infect "Hermaphrodite Gryphon";
			now libido of player is libido of player / 2;
			decrease humanity of player by 5;
			if "Pure" is listed in feats of player, increase humanity of player by 1;
			if "Corrupt" is listed in feats of player, decrease humanity of player by 1;
			increase xp of Gryphoness by level of Gryphoness + 1;
			increase score by 20;
		otherwise if companion of player is Felinoid companion:
			repeat with y running from 1 to number of filled rows in table of random critters:
				choose row y in table of random critters;
				if name entry is "Felinoid":
					now monster is y;
					break;
			if cunts of player > 0:
				say "     As you're finishing up your scavenging, your felinoid companion snuggles up to you, rumbling and purring as he starts nudging you over to the bench with his strong body.  You sit on the bench and he puts his front paws on either side of you, nuzzling and licking at your face.  You can see his aroused cock, red and throbbing as it drips precum on your leg.  It seems your companion wants to enjoy the lovers['] bench with you as well.  The scents here, which have been getting you more aroused, seem all the stronger and you decide to take your pet up on his offer.  You move to lay back on the bench, putting your hips at one edge so your four-legged feline can mount you.  And he quickly does, lining up his cock with your dripping snatch before slowly sinking into you.  You moan in delight and run your paws over his sides and hips as his large, feline cock eases into you.";
				say "     His large paws dig into the bench beside your head, leaving fresh scratches in the wood while he thrusts into you.  You nuzzle and kiss his feline face, telling him what a good kitty he is and how much you love him.  Something about the bench makes this more than just sex, but instead lovemaking.  Your kitty seems to smile down at you as he lickgrooms your face and chest, running his raspy tongue over your breasts.  You reach back to rub his large balls and squeeze his tightly muscled rear while he thrusts into you.  The sex is somehow both wildly animalistic and tenderly loving as the feline beast mates with you.";
				say "     After a powerfully long orgasm that pumps a huge load of his feline seed into your pussy, he eases his spent shaft from your cream-filled cunt.  Your companion is extra-snuggly after the lovemaking, nuzzling and kissing at you and you happily return this affection, feeling closer to him.";
				say "[impregchance]";
			otherwise:
				say "     As you're finishing up your scavenging, your felinoid companion snuggles up to you, rumbling and purring as he starts nudging you over to the bench with his strong body.  You sit on the bench and he puts his front paws on either side of you, nuzzling and licking at your face.  You can see his aroused cock, red and throbbing as it drips precum on your leg.  It seems your companion wants to enjoy the lovers['] bench with you as well.  The scents here, which have been getting you more aroused, seem all the stronger and you decide to take your pet up on his offer.  You put your hands at his hips and get him to climb a little further onto the bench, bringing his large cock within reach of your mouth.  You start licking and kissing at his throbbing meat, then slide your mouth down over it, enjoying his mrowl of pleasure as you do.";
				say "     His large paws dig into the back of the bench, leaving fresh scratches in the wood as he thrusts gently into your muzzle.  You face is buried in his soft fur as you run your fingers through it, stroking his belly and thighs as you lick and suck his cock.  You slide your mouth off, telling him what a good kitty he is and how much you love him as you kiss his cock and balls.  Something about the bench makes this more than just sex, but instead lovemaking.  Your kitty seems to smile down at you as you take him in you mouth again and he starts thrusting soflty.  You reach rub his large balls and squeeze his tightly muscled rear while he rocks his hips.  The sex is somehow both wildly animalistic and tenderly loving as the feline beast pumps his cock as you take it fully into your mouth and down your throat.";
				say "     After a powerfully long orgasm that pumps a huge load of his feline seed into your belly, he eases his spent shaft from your mouth.  Your companion is extra-snuggly after the lovemaking, nuzzling and kissing at you and you happily return this affection, feeling closer to him.";
			infect "Felinoid";
			now libido of player is libido of player / 2;
			decrease humanity of player by 5;
			if "Pure" is listed in feats of player, increase humanity of player by 1;
			if "Corrupt" is listed in feats of player, decrease humanity of player by 1;
			increase xp of Felinoid companion by level of Felinoid companion + 1;
			increase score by 20;
		otherwise:
			increase libido of player by ( 100 - libido of player ) / 4;
		now Lovers Bench is resolved;


CatsandDogs is a situation.
when play begins:
	add CatsandDogs to badspots of furry;

instead of resolving a CatsandDogs:
	say "     As you travel through the city, you come across a pair of old apartment buildings side by side.  The windows are open and the tenants are yelling at one another.  One building appears to be populated entirely by cats and the other by dogs.  They are growling, yowling and making rude gestures at one another.  They jeer at one another and toss trash across the alley dividing their buildings.  Focused on their mutual hatred, they don't notice you, but you do steer clear, certain that you'd not be able to fight off the horde populating either building... or worse, end up as some sort of prize in a battle between them.  You make note of the location and remind yourself to keep away, finding another path around this neighbourhood.";
	now CatsandDogs is resolved;


Tour Bus is a situation.
when play begins:
	add Tour Bus to badspots of furry;

instead of resolving a Tour Bus:
	say "     Your path through the city is interrupted by an overturned tour bus.  It seems there was quite an accident here, with several cars piled up around the bus as well.  You do manage to weave your way through the mess, but it takes some time.  You remind yourself not to take this street again next time when passing through this area.  You head over to check out the bus, hopeful to find something of use in there.  You climb up onto a car, then get on the bus's side.  Looking in the windows, you can see several bags and packs, but you also see large amounts of semen and scratches to the seats.  Regardless of how the accident came to pass, it seems like the occupents were all transformed into more sexual monsters.  Certainly, it would not be safe to enter the bus, given how soaked in cum everything is.";
	say "     You hop back onto the car, then onto the ground.  You start to head on your way, mentally reminding yourself not to take this street again when passing through this area, when you hear a growl from behind you.  Crawling out of the bus, you see a large, cougar herm wearing a cap and coat that leads you to suspect this was once the bus driver.  It growls again and hops onto the ground, coming at you quickly.";
	challenge "Cougar";
	say "     Your encounter with the cougar creature over, you continue on your way, leaving it and its unusual den behind.";
	now Tour Bus is resolved;


Assorted Events ends here.