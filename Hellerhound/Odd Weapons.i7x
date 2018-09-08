Version 3 of Odd Weapons by Hellerhound begins here.
[ Garbage Can Lid is now equipment as a shield - Stripes ]

Section 1 - Garbage Can Shield (Fallen Survivor Event)

Table of Game Objects (continued)
name	desc	weight	object
"Garbage Can Shield"	"This aluminum garbage can lid has been transformed into an improvised shield by riveting two loops of leather to the inside, perfect for sticking your forearm through. It is painted gold with a bold, crimson 'V' across the surface. Looks like the paint ran down its front a bit before drying, giving the 'V' a bleeding look."	4	garbage can shield

garbage can shield is equipment. It is not temporary.
The AC of garbage can shield is 28.
The effectiveness of garbage can shield is 30.
The placement of garbage can shield is "body".
The descmod of garbage can shield is "You hold an aluminum garbage can lid strapped to your forearm as an improvised shield. It is painted gold with a bold, crimson 'V' across the surface. Looks like the paint ran down its front a bit before drying, giving the 'V' a bleeding look.".
The slot of garbage can shield is "shield".

the scent of garbage can shield is "Despite everything that you try to do about it, a slight scent of garbage seems to be an inescapable part of this makeshift shield. But hey... one makes use of what you get.".

Fallen Survivor is a scavevent. The sarea of Fallen Survivor is "Allzones".

instead of resolving a Fallen Survivor:
	say "     You come across a succumbed survivor slumped on the pavement with their back to a crumbling building. The motionless yet still breathing body fails to react to anything you do to try and snap them back to consciousness. Dragging the man under a nearby piece of intact roof, you place him in a way that he at least won't be quite as exposed or get rained upon. Still, his eyes do not even focus on you as you open them, just staring off into empty space. Your inability to help this person or even get any answers of what happened to him causes you to feel intensely uncomfortable, and just being close to the body seems to sap your drive and go on and struggle to survive. Maybe you should just... lay down with him. All of this is pointless, isn't it? You're never going to get out of - *CRASH, YOWL*[line break]";
	say "     The sudden metallic noise from behind you makes you jump out of your boots almost, whirling around to see what caused it. You see the tail end of a large house-cat zip around the nearby corner, leaving behind a large disc of metal that must have fallen over as it pushed past it. Upon further examination, you see that it is a garbage can lid - one that has been used to create an improvised shield. There are loops of leather riveted to the inside to slip your forearm through, as well as a painted front. Seems like the survivor had a DIY streak before he succumbed to... whatever got to him. Looking back over to the guy, you realize that you were on the best way to join him in his mind-broken state. Getting into contact seems to have negative side effects. That cat really saved your bacon!";
	WaitLineBreak;
	say "     Glancing back over to the mind-broken survivor, you resolve not to get anywhere close to him again. Hmpf, but hey - at least you got a nice shield out of this dreary situation. Then you notice what seems to be a pale, translucent 'grease' stubbornly smeared across the shield, including on the inside. Could this be what put the guy into the state he is in? Possibly... which means even the shield is useless to you. Or could you wipe it off with some of the scattered and ripped articles of clothing ever-present on the abandoned streets? It'd be risky, as you can't know if you'll manage to get it all off, but that still might be worth it, in the current situation.";
	say "     [bold type]Do you want to take the shield with you?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Sure, it might be useful.";
	say "     ([link]N[as]n[end link]) - Nah, leave it. Surely it also carries his deadly contagion!";
	if player consents:
		LineBreak;
		say "     You gather some scraps of fabric and rub away at the shield, discarding them before they can soak through and any of the gunk touches your skin. Eventually you have the thing fairly clean, enough so to handle it (you hope).";
		say "[bold type]You gain a garbage can shield![roman type][line break]";
		increase carried of garbage can shield by 1;
	else:
		LineBreak;
		say "     Deciding with your better judgement, you resolve to leave the garbage can shield behind. However, you do drag it over and prop it up next to its mind-broken owner, as a bit of a warning sign for someone who might stumble over him. Sadly, this is the only tribute you can give this resourceful survivor...";
	now Fallen Survivor is resolved;

Section 2 - Infected Sword

Table of Game Objects (continued)
name	desc	weight	object
"infected sword"	"A sword with cloudy metal found in a sea of slime. It is infectious, and keeps changing you."	10	infected sword

infected sword is a armament. It is a part of the player. It has a weapon "[one of]your cloudy sword[or]your sword[or]your infected sword[or]your glowing sword[at random][hydraharming]". The weapon damage of infected sword is 16. The weapon type of infected sword is "Melee". It is not temporary. the purified of infected sword is "Nothing". the objsize of infected sword is 4.

the scent of infected sword is "The infected sword smells of a myriad of musky scents, all shifting and changing. You can never seem to identify a scent before a new one appears.".

instead of purifying an infected sword:
	say "That doesn't even fit in the microwave. Also, putting metal in one is a really bad idea.";
	stop the action;

Sword Nest is a situation.
gotsword is a number that varies.
washerenest is a number that varies.
fellforward is a number that varies.

instead of resolving Sword Nest:
	say "     You come across the remains of a giant nest [if washerenest is 1]again[end if], probably belonging to gryphons. It is scattered, and sexual fluids of all kinds, not all from gryphons, cover the ground. It looks as if several gangs of different species fought here.. or maybe 'played' as well. The ground is so thoroughly coated with it that you cannot enter without touching it.";
	now washerenest is 1;
	if the humanity of player < 60: [falling to the nanites]
		say "     Your mind feels fuzzy, and you have a strange desire to roll in the muck. Do you submit?";
		if player consents:
			say "     You run and jump into the slimy muck, a sick splot sounding and echoing between the nearby buildings. The slime coats you as you roll with enthusiasm, losing your mind to the infection faster by the minute.";
			SanLoss 15;
			weakrandominfect; [most of first set don't affect researcher]
			weakrandominfect;
			weakrandominfect;
			weakrandominfect;
			weakrandominfect;
			weakrandominfect;
			randominfect;
			randominfect;
			LineBreak;
			say "...";
			WaitLineBreak;
			say "     The sludge covering you releases that desire, as you orgasm intensely in the muck.";
			say "     You feel another desire rear its head, to drink from the giant puddle.";
			say "     Do you submit?";
			if player consents:
				SanLoss 15;
				say "     You dip your [face of player] head into the slime and suck greedily. It sates your hunger and thirst.";
				weakrandominfect; [more from second batch affect researcher]
				weakrandominfect;
				weakrandominfect;
				weakrandominfect;
				weakrandominfect;
				weakrandominfect;
				weakrandominfect;
				weakrandominfect;
				randominfect;
				randominfect;
				randominfect;
				randominfect;
				say "     Another desire roars inside your head, causing you to start pulling the sludge up into your hands.";
				say "     You manage to stop it, but will you let it continue?";
				if player consents:
					say "     You lose the will to resist and proceed to follow every desire and lust.";
					say "     You grab the slime in your hands and pour it over your head, and then grab some more, and think about what to do with it next.";
					if cunts of player is 1:
						say "     You take your slime-filled hands and shove them up your waiting cunt, filling it with the sludge.";
						say "[randomimpreg][randomimpreg][randomimpreg]";
						say "     You then shove them up your rear, filling it as well.";
					else:
						say "     You decide to try and drink all of the slime you can, tasting its deliciously dirty flavor.";
					say "     After a short while, you collapse, corrupt pleasure roaring through your body.";
					repeat with T running from one to 15:
						randominfect;
					wait for any key;
					now the humanity of player is 0;
					end the story saying "Your humanity submits to the sludge nanites, and you go feral.";
					now battleground is "void";
					wait for any key;
					follow the turnpass rule;
					stop the action;
				else:
					say "     You rein in your lusts and desires almost too late.";
			else:
				say "     You wisely rein in your desires before they got away with you.";
		else:
			say "     You master the desire, and look around paying more attention to detail.";
	if a random number between one and 20 < the perception of the player:
		say "     You spot a sword in the middle of the mess, coated so thoroughly with the juices that you suspect it was the target for the raids, and the source of the jubilation of victory. Its metal is cloudy and coated with thick slime, and the pommel is dried cum of some unknown creature, glowing white. It looks like a powerful, but dangerous weapon. Do you want to walk into the mess and take it?";
		if player consents:
			say "     You slosh through the mess, leaving a trail that fill after a couple of seconds. You get to the sword, and place it in your backpack, and trudge back.";
			now fellforward is 1;
			if a random number between 1 and 25 > the dexterity of the player:
				say "     On the way, you fall headlong into the slime, and it takes a while to get up. After you emerge, you cough up slime and wipe it off your body.";
				increase fellforward by 2;
			else:
				say "     You successfully navigate the mess and emerge where you entered.";
			[now infect with the slime]
			repeat with X running from 0 to fellforward:
				weakrandominfect; [some affects researcher]
				weakrandominfect;
				weakrandominfect;
				randominfect;
				say "     The infected slime changes you.";
				wait for any key;
			increase carried of infected sword by 1;
			now Sword Nest is resolved;
			now Resolution of Sword Nest is 1; [player waded in to get the sword]
		else:
			say "     You leave the mess and its sword there without touching it.";
			now Sword Nest is resolved;
			now Resolution of Sword Nest is 2; [player left the sword]
	else:
		say "     You leave the mess behind, pondering the reason why this occurred here and nowhere else.";
		now Resolution of Sword Nest is 3; [didn't spot the sword]

An everyturn rule:
	if the infected sword is wielded:
		say "[line break]The sword feels slimy in your hand. Maybe you shouldn't be using it. [line break]";
		randominfect;
		say "The infected sword changes you.[line break]";

Section 3 - Dirty Whip

Table of Game Objects (continued)
name	desc	weight	object
"dirty whip"	"A whip covered with dripping horse cum. It is infectious, and was found abandoned by its owner."	3	dirty whip
"horse whip"	"A whip you found and cleaned up. It has metal studs on the lash."	2	horse whip

[
understand "whip" as clean whip.
Does the player mean using the dirty whip when the dirty whip is owned: it is likely.
Does the player mean littering the dirty whip when the dirty whip is owned: it is likely.
Does the player mean littering the clean whip when the clean whip is owned: it is very likely.
Does the player mean grabbing the dirty whip when the dirty whip is visible: it is likely.
Does the player mean grabbing the clean whip when the clean whip is visible: it is very likely.
]

dirty whip is an armament. it is part of the player. It has a weapon "[one of]your whip[or]your cum-soaked whip[or]your messy whip[or]white streak[at random]". The weapon damage of dirty whip is 11. The weapon type of dirty whip is "Melee". It is not temporary.

the scent of dirty whip is "The sticky whip smells of equine cum.".

horse whip is an armament. It is part of the player. It has a weapon "[one of]your whip[or]your studded whip[or]your metallic whip[or]brown streak[at random]". the weapon damage of horse whip is 6. The weapon type of horse whip is "Melee". It is not temporary.

the scent of horse whip is "The horse whip smells of leather and oils.".

Destroyed Bushes is a situation.
the sarea of Destroyed Bushes is "Park".
numwater is a number that varies.
gotwhip is a number that varies.

instead of resolving Destroyed Bushes:
	say "     You come across a circle of bushes crushed flat against the ground, large pools of cum and juices in the revealed space. Horse hoof prints over the ground as well, and the imprint of a human body in one spot testifies to the fact that someone was overtaken by one of the equines.";
	if the humanity of player < 50:
		say "     Do you want to drink from the puddles?";
		if player consents:
			infect "Black Equinoid";
			infect "Black Equinoid";
			decrease thirst of player by 75;
			if thirst of player < 0:
				now thirst of player is 0;
		else:
			say "You leave them alone.";
	say "     Do you wish to look around?";
	if player consents:
		say "     In a nearby bush you find a riding saddle and riding boots, both women's. It seems as if a woman went riding in the park when the infection broke out. Her horse changed, and raped her. Since the clearing is larger than if the horse just fucked her, you assume she changed and submitted as well.";
		if the perception of the player > a random number between one and 20:
			say "     In one of the puddles of cum you find a whip with metal bits strung throughout it. It looks as if the rider carried it, and lost it in the fray. It is currently covered with cum, but if you have enough water, you could change that. Do you wish to?";
			if player consents:
				if carried of water bottle >= 3:
					say "     You have to use a few bottles to wash off the whip, but you manage to get it clean and safe to use.";
					say "     You pick up the now clean whip, and place it in your backpack. It looks like a good weapon.";
					decrease carried of water bottle by 3;
					increase carried of horse whip by 1;
					now Resolution of Destroyed Bushes is 1; [cleaned the whip]
					now Destroyed Bushes is resolved;
					now gotwhip is 1;
				else:
					say "     You don't have enough water. Maybe you could come back when you find more?";
			if gotwhip is 0:
				say "     Do you wish to pick it up anyway?";
				if player consents:
					say "     You pick up the dirty, cum soaked whip with difficulty as it slips about in your hand, the cum getting all over. You finally manage to get it into your backpack.";
					infect "Black Equinoid";
					infect "Black Equinoid";
					infect "Black Equinoid";
					increase carried of dirty whip by 1;
					now gotwhip is 2;
					now Resolution of Destroyed Bushes is 2; [grabbed the dirty whip]
					now the Destroyed Bushes is resolved;
				else:
					say "     You leave the whip where it is.";
	else:
		say "     You leave the scene, avoiding the puddles, and make a mental note to not come back here again.";
		now Resolution of Destroyed Bushes is 3; [didn't investigate the bushes / whip]
		now Destroyed Bushes is resolved;

An everyturn rule:
	if the dirty whip is wielded:
		now researchbypass is 1;
		say "     The cum on the dirty whip slips down onto your hand.";
		infect "Black Equinoid";
		now researchbypass is 0;


Odd Weapons ends here.
