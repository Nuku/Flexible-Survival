Version 1 of Vanessa by Stripes begins here.

"Adds a centaur-infected woman to Flexible Survival."

Section 0 - Event

Paratrooper is a situation.
The sarea of Paratrooper is "Plains";
when play begins:
	add Paratrooper to badspots of girl;

Instead of resolving a Paratrooper:
	say "     After checking through the crumbling ruins of a building, you notice a figure approaching in the distance.  Seeing as they're humanoid and not rushing wildly towards you, you head cautiously in their direction.  As you draw closer, you make out additional details - she's female, is wearing a camo jacket and is nude below the waist.  This last gives you pause, but she doesn't seem aggressive or lust-crazed, though she does seem to be quite dazed or in shock.  Once you reach her, you can notice further details - ears growing pointed, the start of an equine tail and the strong scent of centaur musk coming from the semen staining her bare thighs.  Given she's still got her heavy boots on, you surmise her pants were torn clean off her by the randy stallion.  Her tummy's still a little rounded, probably with the centaur's load, and possibly even with a bun in the oven.";
	say "     Keeping a little distance, you ask if she's alright.  She blinks a few times, finally noticing you there.  Scratching an itch on her lower belly, she looks you over.  'I... I guess... Blown off course...  Was just trying to regroup...  got interrupted.'  She smiles, still a little dazed, but getting a bit more clearheaded.  'Sorry, I'm Sgt Vanessa Harris.  I was with a paratrooper team, but the drop went bad and we were scattered away from the objective.  I've been trying to make my way back since then.  Had a little run in a while ago.  Bit of a rough ride at first, but at least he was hung like a horse,' she says with a laugh and a wry smile, tugging at her jacket as a fresh rivulet of cum and juices run down her leg as she recalling the event excites her.";
	say "     Feeling her equine tail flick upwards, she seems to just notice her changes now and touches them cautiously.  'Oh no, my immunity boosters must've worn off.  Fuck!  They're not going  to let me cross the lines now.  Look, have you got somewhere safe I can hole up until the main force moves in?' she asks.  Shall you take her back to the bunker?";
	if the player consents:
		say "     'Thanks for the help.  I'm glad I ran into you,' she says, eying you appreciatively.  'It looks like we'll have some time to get to know each other better.'  When you notice her slip a hand down to rub her groin, a part of you can't help but smile at the prospect of having some fun with the changing soldier.";
		move Vanessa to bunker;
		move player to bunker;
		if coleen is bunkered:
			say "[line break]";
			say "     You lead Vanessa back to the bunker and bring her inside.  Before she can have a chance to pick a cot, Coleen rushes over excitedly";
			if coleenslut > 0 or coleenalpha > 0:		[stray or alpha-stray]
				say ", tail wagging wildly.  She comes to attention momentarily in front of her before relaxing.  'Stray Bitch Coleen Varna reporting for duty, sarge,' she says with a big grin.  'I've been scouting the surrounding area to... survey the canine population.  My radio and most of my gear was damaged, so I haven't heard what happened to the others or reported in with Command.  It's good to see you, sarge.  This survivor found and rescued me[if the number of bunkered people + the number of booked people > 3].  Seems to have a knack for finding strays[end if].";
				say "     'As you can see, I've gotten infected.  Picked it up from one of the other survivors here.  It's all good though, being a piece of hot husky action lets me move around outside without drawing any more attention than the other strays do.'  Knowing the sort of attention she draws out there, you try to keep your expression neutral at this admission, but the other soldier doesn't react untowards to it, probably as a result of her own infection.  'It seems you've picked up a bit of something as well,' the husky woman adds.";
				say "     Vanessa nods.  'A brief run-in with a centaur shortly before encountering [if cunts of player > 0]her[otherwise]him[end if].  The stallion was quite impressive, so at least I got my money's worth as it were,' she laughs and winks at Coleen, who grins back.  Come over here and I'll fill you in on what I know until my radio ran out of juice,' she says, glancing at you.  'After that, you'd best keep a little distance so you don't get infected.'";
				say "     Knowing they'll be discussing military matters and remembering their lost squadmates, you decide to give them some privacy for a little while.  As you're walking away, you do catch Coleen saying 'And I want to hear all about this encounter of yours with this centaur stud.'";
			otherwise if coleencollared is 1:				[pet]
				say ", tail wagging wildly.  She comes to attention momentarily in front of her before relaxing.  'Horny Bitch Coleen Varna reporting for duty, sarge,' she says with a big grin.  'I've been keeping morale up with the survivors here.  My radio and most of my gear was damaged, so I haven't heard what happened to the others or reported in with Command.  It's good to see you, sarge.  This survivor found and rescued me[if the number of bunkered people + the number of booked people > 3].  Seems to have a knack for finding strays[end if].";
				say "     'As you can see, I've gotten infected.  Picked it up from one of the other survivors here.  It's all good though, having some hot husky action around helps morale.  My rescuer's been good enough to become our owner to take care of us and our needs.'  Knowing full well the sort of needs she's talking about, you try to keep your expression neutral at this admission, but the other soldier doesn't react untowards to it, probably as a result of her own infection.  'It seems you've picked up a bit of something as well,' the husky woman adds.";
				say "     Vanessa nods.  'A brief run-in with a centaur shortly before encountering [if cunts of player > 0]her[otherwise]him[end if].  The stallion was quite impressive, so at least I got my money's worth as it were,' she laughs and winks at Coleen, who grins back.  Come over here and I'll fill you in on what I know until my radio ran out of juice,' she says, glancing at you.";
				say "     Knowing they'll be discussing military matters and remembering their lost squadmates, you decide to give them some privacy for a little while.  As you're walking away, you do catch Coleen saying 'And I want to hear all about this encounter of yours with this centaur stud.'";
			otherwise:
				say " and comes to attention momentarily in front of her before relaxing.  'Cpl Coleen Varna reporting, sarge,' she says with a big grin.  'Been holed up here for a little while.  I was blown off course during the drop, landing in hot spot two.  My radio and most of my gear was damaged, so I haven't heard what happened to the others or reported in with Command.  It's good to see you, sarge.  This survivor found and rescued me[if the number of bunkered people + the number of booked people > 3].  Seems to have a knack for finding strays[end if].";
				if sarahslut > 0:
					say "     'One of the survivors here has been assisting me with my injuries, but I've picked up some infection because of this.  Nothing terrible - just some cute husky action, as you can see.  It seems you picked up a bit of something as well,' the partially-husky woman adds.";
				otherwise:
					say "     'I've managed to stay clean for now, but it seems you picked up a bit of something,' Coleen adds.";
				say "     Vanessa nods.  'A brief run-in with a centaur shortly before encountering [if cunts of player > 0]her[otherwise]him[end if].  The stallion was quite impressive, so at least I got my money's worth as it were,' she laughs and winks at Coleen[if sarahslut is 0].  Come over here and I'll fill you in on what I know until my radio ran out of juice,' she says, glancing at you.  'After that, you'd best keep a little distance so you don't get infected[otherwise].  Come over here and I'll fill you in on what I know until my radio ran out of juice,' she says, glancing at you.[end if]";
				say "     Knowing they'll be discussing military matters and remembering their lost squadmates, you decide to give them some privacy for a little while.";
		otherwise:
			say "     You lead Vanessa back to the bunker and bring her inside.  She selects a cot and settles in.  At least she's still got some supplies for herself, even putting some of her own onto the bunker's shelves.";
			add "water bottle" to invent of bunker;
			add "food" to invent of bunker;
		increase score by 20;
		now battleground is "void";
		now hp of Vanessa is 1;
	otherwise:
		say "     'Well, thanks anyhow then,' she says, turning around and heading back towards the infected city.";
		now hp of Vanessa is 50;
		increase score by 1;
	Now Paratrooper is resolved;


Section 1 - Vanessa the Centaur

Vanessa is a woman.
The description of Vanessa is "[vanessadesc]";
The conversation of Vanessa is { "Neigh!" }.

the scent of the Vanessa is "Vanessa smells softly of horses[if hp of Vanessa > 3] and arousal[end if].";

to say vanessadesc:
	if hp of Vanessa is 1 or hp of Vanessa is 2:
		say "     A sargeant in the paratrooping squad you saw come down in the city, this female soldier had run afoul of a centaur before meeting you.  While overall humanoid in form, she does have a few centaur features starting to show.  Her ears are pointed and her black hair, shortly cropped when you first met her, has grown out into a short mane.  Occasionally swishing, her equine tail is the same deep black as her hair.  She's still wearing her military jacket, but has only bothered with some black panties to cover her crotch whenever the jacket shifts, leaving her strong, shapely legs exposed.  She has kept her military boots as well, making for an enticing, if slightly unconventional, piece of eye candy walking around.  It seems that those transformations aren't all her suitor's left her with, her belly having a [if hp of Vanessa is 1]small baby bump[otherwise]growing pregnancy[end if] that promises to get much bigger with her growing centaur foal.";
	otherwise if hp of Vanessa is 3:
		say "     A sargeant in the paratrooping squad you saw come down in the city, this female soldier had run afoul of a centaur before meeting you.  With your help, she's become even more equine than when you first met her.  Her head is more centaur-like, her face recognizably hers, but altered to become more centaur-like with a flatter, broader nose and pointed ears.  Her black hair, once cropped short, had grown out into a flowing mane.  Her equine tail is the same deep flack as her hair and is also impressively long and flowing.  She's still wearing her military jacket, but cannot close it over her bloated, maturing pregnancy, leaving it and her dark-nippled breasts hanging out.  At her waist, she's wearing only a pair of black panties.  This leaves her shapely, half-transformed legs exposed.  The upper half of them are sexy and feminine with strong definition from her training, but shortly after her knees, they turn into equine legs ending in black-fetlocked hooves.  The most unusual change aside from the oversized pregnancy are the beginnings of her second pair of equine limbs, a tiny promise of the centaur she wishes to be.";
	otherwise if hp of Vanessa is 4:
		say "***completed tf";


Instead of conversing the Vanessa:
	if hp of Vanessa is 1:
		say "     'Now that I've had a chance to settle in[if Coleen is bunkered] and caught up with Coleen[end if], there's something we need to talk about.  It's been getting pretty clear to me that stud hit the mark and has left me with a little present,' she says, rubbing her rounded tummy.  Given how it's not gone down by this point, you'd have to agree.  'Now, I should probably be upset about this, but that's how things are.  But it does mean there a foal on his way and that can't be easy for a human to handle.  I've been thinking you should look into finding a means to transform me further into a sexy centaur.  Just to help with the birth, you understand?' she adds quickly, though you also notice her hand rub across her groin.  Clearly, she's excited by the thought of transforming further as well.";
		now hp of Vanessa is 2;
	otherwise if hp of Vanessa is 2:
		say "     [one of][if coleen is bunkered]'I'm glad to know at least one of my squad is safe,' she says.  'Thanks for helping Coleen out.'[otherwise]'It'd be nice to know what happened to the rest of my squad,' she says with a sad sigh.[end if][or][if coleen is bunkered and ( coleenslut > 0 or coleenalpha > 0 or coleencollared > 0 )]'It's a little strange seeing Coleen like that, but at least she's safe and happy.  She still knows who she is, even if she's also a cute husky slut now, too.'[otherwise if coleen is bunkered and sarahslut > 0]'Coleen doesn't seem to really mind those husky traits she's picked up.  They look pretty cute on her.'[otherwise if coleen is bunkered]'Coleen's been lucky up to now to avoid infection.  I'm having her keep her distance from me to be on the safe side.  I wouldn't want to be responsible for infecting her.'[otherwise]'Keep an eye out for another other soldiers in need of help.  Several of the scouting teams have run into trouble.  Some from my squad ended up in the park for example, which is a very active zone.[end if][or]'Standing orders are for infected soldiers to hole up somewhere safe until the main recovery mission takes place.  Letting infected soldiers come into contact with the forces guarding the perimeter is too risky.'[or]'Look, I can't tell you about our plans to help rescue the civilians since I'm not privy to them.  Rescue is coming, but the details are being kept from the soldiers so we can't divulge the info if we're corrupted.'[or]'I have a few supplies of my own, so don't worry about me.'[or]'Keep an eye out for a way to transform me a little more so I can cope with this growing foal in me,' she says, patting her tummy.[or]'If I'm to give birth to a centaur foal, I'll need to be a proper mare, I think.'[or]'Thanks for letting me stay here.  This place looks quite secure.'[at random]";
	otherwise if hp of Vanessa is 3:
		say "     [one of][if coleen is bunkered]'I'm glad to know at least one of my squad is safe,' she says.  'Thanks for helping Coleen out.'[otherwise]'It'd be nice to know what happened to the rest of my squad,' she says with a sad sigh.[end if][or][if coleen is bunkered and ( coleenslut > 0 or coleenalpha > 0 or coleencollared > 0 )]'It's a little strange seeing Coleen like that, but at least she's safe and happy.  She makes for a cute husky, she says while brushing her fingers across her pantied crotch.[otherwise if coleen is bunkered and sarahslut > 0]'Coleen's doesn't seem to really mind those husky traits she's picked up.  Good for her, I say.  And we'll both look even prettier when we're all done.'[otherwise if coleen is bunkered]'Coleen's been lucky up to now to avoid infection.  I'm having her keep her distance from me to be on the safe side.  I wouldn't want to be responsible for infecting her, though if she ended up infected...' she adds, trailing off into thought.[otherwise]'Keep an eye out for another other soldiers in need of help.  Several of the scouting teams have run into trouble.  Some from my squad ended up in the park for example, which is a very active zone.[end if][or]'Standing orders are for infected soldiers to hole up somewhere safe until the main recovery mission takes place.  Letting infected soldiers come into contact with the forces guarding the perimeter is too risky.'[or]'Look, I can't tell you about our plans to help rescue the civilians since I'm not privy to them.  Rescue is coming, but the details are being kept from the soldiers so we can't divulge the info if we're corrupted.'[or]'I have a few supplies of my own, so don't worry about me.'[or]'Keep an eye out for more of that hair.  I'd much rather be a proper mare if I'm going to deal with this big foal of mine,' she says, rubbing her bloated belly.[or]'If I'm to give birth to a centaur foal, I'll need to be a proper mare, I think.'[or]'It's so frustrating.  I was so close, but got stuck with these little guys instead of becoming a proper centaur,' she grumbles, giving her stubby proto-legs a tug, vainly trying to get them to fully form.[or]'Thanks for letting me stay here.  This place looks quite secure.'[at random]";
	otherwise if hp of Vanessa is 4:
		say "***completed tf and fucked";

[
			company bitch reporting for duty, sarge.
			company stray reporting as ordered, sarge.
]

Section 2 - Sex with Vanessa

the fuckscene of Vanessa is "[sexwithVanessa]".

to say sexwithVanessa:
	if hp of Vanessa is 1:
		say "     You should probably talk to her first to see how she's settling in.";
	otherwise if hp of Vanessa is 2:
		say "     Vanessa initially smiles at your suggestion, but stops herself.  'Look, we should probably stay focused.  As fun as that sounds, we need to hold out.  I'm already in a bit of a predicament as it is,' she adds, rubbing her rounded belly.  'You should be more concerned with finding a way to help me become more of a centaur mare to deal with this foal of mine rather than trying to get into my panties.  Did you have any luck finding something?'";
		if centaur hair is owned:
			say "     You've managed to find some centaur hair.  Do you want to give her that?";
			if the player consents:
				say "     Taking out the hair sample, you pass them to her.  She takes them and looks them over briefly, then takes a sniff.  Smelling the scent of equine mare on it, she smiles and gets a little glassy-eyed again.  She places the lock of hair at the back of her head where it bonds into her existing hair and turns black to match it.  Her mane grows out further, becoming thick like horsehair.  She moans and runs her hand over her body as other changes start.  Her heavy boots start to stretch, the leather eventually splitting at the seams as she shakes her hoofed feet free.  Black fur rings her fetlocks, though traces of white go up a few more inches before it returns to more human-like legs and skin.";
				say "     Just as she's stabilizing herself on these new hooves of hers, she groans and clutches her belly, her pregnancy rushing forwards to round her belly by several more inches.  Forced to open her jacket or lose that as well, you catch sight of her lovely breasts as her nipples enlarge and darken.  But the most surprising change starts as two small bumps at the underside of her rounded belly.  These bulge her skin and shift around, as if seeking a way out.  Eventually they manage to stretch forward and form the beginnings of another pair of horse legs.  They're only a few inches long and undersized, but are clearly intended to become her second pair of legs once she's fully transformed.  And with that, the nanite infection comes to a halt, leaving her further transformed but by no means a centaur.";
				say "     Vanessa pants and rubs her wet panties, having orgasmed at some point during her transformation.  After a few moments to regain her composure, she looks herself over.  'Well, that didn't really help at all with my foal problem at all,' she says, rubbing her enlarged belly.  'Still, getting closer.  And I have such lovely hooves and legs on the way.  I should make for a pretty hot mare, don't you think?' she says with a giggle before trotting off to try out her half-equine legs.";
				now hp of Vanessa is 3;
			otherwise:
				say "     Deciding to hold out for a moment, you fib and tell her that you've not had any luck yet.  'Be sure to keep your eyes out for something from the centaur mares.'";
		otherwise:
			say "     Pretty sure you don't have anything to help her, you shake your head and tell her you've not had any luck yet.  'Be sure to keep your eyes out for something from the centaur mares.'";
	otherwise if hp of Vanessa is 3:
		say "     'As much as I wa... uh... I should be a centaur to deal with this coming foal, I need a break before we try that again.'  [bracket]More to come eventually. - The Mgmt.[close bracket]";

[
		say "***Inquires about transforming her further";


[if cocks of player > 0].  Besides, it's not like you can knock me up again,' she adds with a giggle.


		if centaur milk is owned:
			say "***do you want to give her the milk?";
			if the player consents:
				say "***tf and sex";
				now hp of Vanessa is 4;
			otherwise:
				say "***no tf";
		otherwise:
			say "***no tf";
	otherwise if hp of Vanessa is 4:
		say "***sex w/Vanessa";
]

[  hp of Vanessa       ]
[ overall status       ]
[ 0 = not met          ]
[ 1 = bunker, no talk  ]
[ 2 = bunker, talked   ]
[ 3 = bunker, part tf  ]
[ 4 = bunker, tf+sex   ]
[ 5 = ...              ]


[  lust of Vanessa        ]
[  pregnancy              ]
[  0 = not preggers       ]
[  <= 12 = early preggers ]
[  13-24 = late preggers  ]
[  25 = birthing time     ]
[ *not yet implemented*   ]


Vanessa ends here.