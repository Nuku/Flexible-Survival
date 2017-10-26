Version 1 of Kyrverth by Speedlover begins here.
[Version 1 of Kyrverth - Creation]

[ KyrverthQuestGiven										]
[ 0: No														]
[ 1: Yes													]

[ libido of Kyrverth                                        ]
[   0: Virgin                                               ]
[   1: Available for sex (not yet written)                  ]

[ KyrverthStage							    				]
[	0: Small dragon											]
[	1: Normal size dragon 									]
[	2: Large dragon											]
[	3: Huge dragon, feral									]


[Kyrverth 'The Firebreather' - NPC.							]
[Sex - Male													]
[Orientation - Straight (at first)							]
[Fightable - No												]
[Infectious - Not at the moment								]
[Ref pic, not owned by FS so don't put in the game - https://d.facdn.net/art/justmegabenewell/1456722931/1456722931.justmegabenewell_yurii2.png	]
[Ref pic 2, same as above, don't put in the game: https://d.facdn.net/art/incorgnito/1506117821/1506117821.incorgnito_forces1websize.png ]
[Pic one for descriptions and sizing]

Section 1 - Basic Setup

Kyrverth is a man. The HP of Kyrverth is usually 0.
The description of Kyrverth is "[KyrverthDesc]".
The conversation of Kyrverth is { "<This is nothing but a placeholder!>" }.
The scent of Kyrverth is "[KyrverthSmellDesc]".
Kyrverth is in Dragons Den.
KyrverthStage is a number that varies. KyrverthStage is usually 0.
KyrverthQuestGiven is a number that varies. KyrverthQuestGiven is usually 0.
KyrverthTimer is a number that varies. KyrverthTimer is usually 10000.
JewelHeistCaught is a number that varies. JewelHeistCaught is usually 0.
SilverToken is a number that varies. SilverToken is usually 0.
KyrverthMaleBoning is a number that varies. KyrverthMaleBoning is usually 0.

[Room Declaration]
West of Entrance to the High Rise District is Overgrown Street.
The description of Overgrown Street is "[OvergrownStreetDesc]".

[Room Declaration - Room will go public after first encounter with Kyrverth]
Dragons Den is a room.
The description of Dragons Den is "[DragonsDenDesc]".

to say OvergrownStreetDesc:
	say "     What used to be a bustling high street in the upmarket end of town now looks like it hasn't been inhabited for years. Buildings with faded paint have smashed windows and vines climbing the walls. The road has cracks running down the length of it and grass pokes through the concrete to grab the sunlight. Towards the end of the street there is an old roundabout with a broken fountain in the center. A tree sprouts from the center of the fountain and shades the area around it. You feel tempted to take a seat under it's leaves for a while.";

to say DragonsDenDesc:
	if KyrverthStage is 0 or KyrverthStage is 1:
		say "     In the depths of an old bank, Kyrverth has made the vault his home. The door broken from it's hinges and laying off to one side, and thick walls around, the room feels cold but safe. In the centre of the room he has made a large wide nest from hay and twigs.";
	else if KyrverthStage is 2 or KyrverthStage is 3:
		say "     In the depths of an old bank, Kyrverth has made the vault his home. The door broken from it's hinges and laying off to one side, and thick walls around, the room feels safe. What was a cold room is now heated by the dragon residing within.";
		if KyrverthStage is 2:
			say "     In the centre of the room he has made a large wide nest from hay and twigs. Bits of chainmail are woven into the bits of wood, and glint in the light shining through the vault door. Occasionally you hear the sounds of the infected in the distance, bangs, crashes, sometimes even moans carry over ruined streets, but it is hard to pay them heed when you are in what feels like such a safe place.";
		else if KyrverthStage is 3:
			say "     In the centre of the room the large nest he made has been broken and remade. Now it is a heap of chainmail, and dragon scales that he curls around at night, safe in the knowledge it cannot be taken without waking him. Bits of chainmail and dragon scales are revealed when Kyrverth wakes, and glint in the light shining through the vault door, making patterns on the walls.";

to say KyrverthDesc:
	if KyrverthStage is 0:
		say "     A small red dragon, just under 5 feet tall. [one of]Tiny[or]Small[or]Little[or]Miniature[or]Minute[at random] red Scales cover him from head to toe and [one of]tiny[or]small[or]little[or]miniature[or]minute[at random] horns peek out from behind a muzzle filled with [one of]tiny[or]small[or]little[or]miniature[or]minute[at random] fangs. His hands are more claws than nails. Talons on his feet grip the ground surely, and scrape lines in the metal floor of the den. A thin tail helps him with balance, it seems to be 4ft long. [one of]Tiny[or]Small[or]Little[or]Miniature[at random] wings sprout from his back and twitch and flap occasionally as he goes about his day, but they don't look [one of]large[or]big[at random] enough to be functional...";
	else if KyrverthStage is 1:
		say "     As you look at the red dragon, about 5 and a half feet tall, you see scales cover him from head to toe. Small horns behind a muzzle filled with sharp teeth and his hands are more claws than nails. Talons on his feet grip the ground surely, and scrape lines in the metal floor of the den. A 5 foot long tail helps balance him, and he seems to be slowly learning to control it in his free time. Scaled red wings twitch and flap occasionally from his back, but you are not sure whether he could fly with them or not. He wears a silver token on a string around his neck and doesn't ever seem to take it off. Kyrverth spends most of his time in the vault, building up his nest. Occasionally he sneaks around the city in search of supplies, which is how you met him.";
	else if KyrverthStage is 2:
		say "     No longer a weakling, Kyrverth is now just over 7 foot tall. The red scaled dragon strikes an intimidating figure, with a large maw containing a scary amount of teeth. He occasionally cleans bits of meat from between them with his claws and talons which are now much larger than before. His wings and tail are fully grown, letting him fly around at will. He occasionally picks up boxes around the room, showing off his newfound strength. His body shape reminds you of a swimmer - Lithe but with obvious muscle. Since you gave him the links of chainmail he has also grown a blond mane that helps to hide the silver token that hangs from a thin chain around his neck, reminding you that somehow this is still the little guy you met not that long ago.";
	else if KyrverthStage is 3:
		say "     No longer a weakling, Kyrverth has become a feral [one of]stud[or]beefcake[at random] of a dragon. Just over 7 foot tall and built like an athlete, the dragon seems to have reached his final size. He is 12 feet long from head to backside, and a reddish tail extends another 8 feet past that. A blond mane sits above a large muzzle with large, expressive blue eyes, which look around constantly for threats to his hoard. A mouth filled with sharp teeth, ready to tear into anything that tries to steal from the dragons den, ensures that whatever he spots, won't get away with the treasure. Wide shoulders conceal massive batlike wings that stretch at times to almost 50 feet wide, you know Kyrverth can fly with them and often see him carrying supplies through the air on his way back to the den. As you look at Kyrverths long prehensile tail, you notice something interesting - Two [one of]large[or]ponderous[or]bulging[or]vast[or]generous[or]considerable[or]hefty[or]immense[at random] balls sit behind a bulging vent. You wonder if you could tempt the dragon into playing with you at some point...";

to say KyrverthSmellDesc:
	if KyrverthStage is 0:
		say "     The dragon barely smells of anything. There is a faint tang to the smell but you struggle to place what it is.";
	else if KyrverthStage is 1:
		say "     The dragon has a slight musk, it smells nice but there is a faint tang to the smell and you struggle to place what it is.";
	else if KyrverthStage is 2:
		say "     The dragon has a musk to him, it smells nice but there is a tang to the smell and you struggle to place what it is. Something about the smell makes you feel [one of]nice[or]good[at random]...";
	else if KyrverthStage is 3:
		say "     The dragon has a [one of]thick[or]pungent[at random] musk that floods the room with a tang that invades your nostils and causes [if cocks of player > 0]your [cock of player] cock to engorge[else]your [one of]cunt[or]vagina[or]nether regions[at random] to moisten[end if]";

Section 2 - Talk

instead of conversing the Kyrverth: [Catches the talk command]
		say "[KyrverthTalk]";

to say KyrverthTalk: [Quest turnin check]
	LineBreak;
	if (SilverToken is 1 and KyrverthStage is 0 and KyrverthQuestGiven is 1): [Quest one end]
		say "     You walk into the vault to see Kyrverth stacking supplies. He spots you and [one of]heads[or]walks[at random] over. 'Hey there! Did you find anything?' You explain that the shop had been looted and his smile falls, then you say that you did find a token. Kyrverth takes the token with a smile and runs a cable through it, turning it into an amulet for him to wear around his neck. As he walks away you could swear he grew a bit, his head just a bit closer to the height of your shoulder. Teeth, claws, and muscles seem a bit more pronounced. Dismissing it as a trick of the mind, you get ready to head back out into the city.";
		now KyrverthStage is 1;
		now KyrverthQuestGiven is 0;
		now SilverToken is 0;
		now KyrverthTimer is turns;
	else if (carried of stray links >= 5 and KyrverthStage is 1 and KyrverthQuestGiven is 1): [Quest 2 end]
		say "     [bold type]Aware of the 5 links of chainmail in your backpack, you wonder whether to give it to Kyrverth[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if player consents:
			LineBreak;
			decrease carried of stray links by 5;
			increase carried of food by 5;
			say "     'You did it!' Kyrverth rushes over and looks at the chainmail you brought back, eyes wide. 'That looks great! Here, let me get you a reward' He goes to a box and grabs 5 packets of food. 'My hoard is going to be awesome!' he says as he swaps the chainmail for the food. You almost drop the food as this time he definitely grows as he puts the bits of chainmail in his hoard. Kyrverth doesn't even seem to notice as his body quickly swells to become an intimidating figure, a little bit taller than you. His wings flap and stretch further and further out from his back, becoming capable of flight. Horns grow through his skin, changing from defensive tools to rather dangerous offensive weapons. While you think about offensive weapons, his claws catch your eye. They twitch and sprout from his hand, now looking like they could rip logs to bits. Kyrverth shivers then gives out a massive roar, revealing a deadly maw.";
			LineBreak;
			say "     As the roar echoes in the distance and slowly fades into the eerie silence of the old city, Kyrverth lets out a yawn and curls up in his nest to nap - Apparently worn out by his growth."
			LineBreak;
			say "     [bold type]You gain 5 food![roman type][line break]";
			WaitLineBreak;
			now KyrverthStage is 2;
			now KyrverthQuestGiven is 0;
			now KyrverthTimer is turns;
		else:
			LineBreak;
			say "[KyrverthNormalChat]";
	else if (carried of dragon scale >= 5 and KyrverthStage is 2 and KyrverthQuestGiven is 1): [Quest 3 (final) end]
		say "     You walk into the Dragon's Den, holding the scales in your hands. A few steps into the room your foot accidentally knocks a box of supplies, making a dull thud. Kyrverth immediately looks up and spots you. Eyeing the scales in your hands, he gives you a big [one of]grin[or]smile[at random] and walks over with some supplies. As he gets to you he hands you the supplies and grabs the scales, almost greedily. This time you know better than to look away. You take a few steps back and drop the supplies to the floor, watching Kyrverth closely. Unlike the previous times his hoard grew, this time Kyrverth changes much more drastically. His entire body seems to bulge in size, growing taller and wider at the same time. He also seems to notice this time, and looks down as his physical power increases. The dragons muscles now seem to be much more toned with an athletic look to them. A small gust of air moves past your face as the drake stretches his wings and his head scratches the ceiling as he touches 10 feet tall.";
		say "     The changes seem to slow down for a second, but as you stand there and watch they simply change direction. Kyrverths hands and feet increase in size disproportionately to his body, claws becoming strong and dangerous but at the same time they force him onto four legs. His tail extends longer, helping him to balance, but a few cracks later and Kyrverth is doomed to walk on four legs from now on - not that he seems to mind. Almost 7 foot tall at his shoulder and 20 feet long, the dragon suddenly roars in pleasure and in surprise looks between his front legs back to his groin. In front of two tiny balls, a black penis grows from a vent between his legs. It grows to it's full size, an unimpressive 6 inches, before both penis and balls surge in size. Each ball grows to stretch his sack [one of]to its limit[or]taut[or]tight[at random], then keeps growing until each one is the size of a baseball, and in his pleasure he begins humping into the air. You watch in amazement as the tapered tip begins to extend out from his vent as his penis grows an inch with every thrust until it is almost 2 feet long! A bulbous knot quickly expands at the base and as Kyrverth goes to grab his penis, but in his haze of pleasure, he barely touches it before he explodes, covering the floor below in semen from his massive sack.";
		WaitLineBreak;
		say "     The red dragon stays there for a few seconds, his massive [one of]penis[or]cock[at random] dripping on the floor, panting in exertion, before he finally opens his eyes and carefully [one of]moves[or]walks[or]navigates[at random] his new body over to you. His new voice sends [one of]shivers[or]goosebumps[at random] down your spine, a deep rumble from his [one of]massive[or]muscled[or]expansive[or]huge[at random] chest 'I thank you for your assistance, but I believe I can easily expand my hoard by myself from now on. I owe you a debt of gratitude, just let me know what it is you want and I will do my [one of]best[or]utmost[at random] to [one of]provide[or]give[or]produce[or]precure[at random] it.'";
		LineBreak;
		say "     [bold type]You gain 10 food![roman type][line break]";
		increase carried of food by 10;
		decrease carried of dragon scale by 5;
		now KyrverthStage is 3;
		now KyrverthTimer is turns;
	else:
		say "[KyrverthNormalChat]";

to say KyrverthNormalChat: [Quest give and normal chat]
	if KyrverthQuestGiven is 0 and (KyrverthTimer - turns >= 6): [Quest give]
		if KyrverthStage is 0:
			say "     'Hi there, would you be willing to help me out? I have been trying to build up a hoard, but it's a bit too dangerous for me out there. Would you be willing to help get the first few [one of]pieces[or]parts[or]bits[at random] of my hoard? You should be able to find something in the [bold type]high rise district[roman type], maybe somewhere that deals in [bold type]jewels?[roman type]";
			now Jewel Heist is not resolved;
		else if KyrverthStage is 1:
			say "     'You're willing to help me out again? Awesome! A proper dragon would defeat some knights and hoard their armour, but they won't come to me and there are some pretty [one of]scary[or]dangerous[at random] monsters between here and there so I can't go to them, could you bring me back [bold type]5 bits of chainmail?[roman type]'";
		else if KyrverthStage is 2:
			say "     'I heard there were some eastern [bold type]dragons[roman type] in the [bold type]park[roman type] ruining our reputation. They are saying that THEY are the best dragons! Pffft, they wish! I would deal with them myself but someone needs to guard this hoard. Would you be willing to give them a telling off? Teach them a lesson, and bring me back [bold type]5 scales[roman type] as a trophy.'";
		else:
			say "DEBUG: You shouldnt be able to see this";
		now KyrverthQuestGiven is 1;
	else: [Normal chat]
		let randomnumber be a random number from 1 to 90;
		if randomnumber >= 1 and randomnumber <= 5:
			say "     'Some would say that a fire breathing person shouldn't have a nest made of flammable materials, but it's been ok so far...'";
		else if randomnumber >= 6 and randomnumber <= 10:
			say "     'Why am I not the same as the other dragons around the city? Not sure.'";
		else if randomnumber >= 11 and randomnumber <= 15:
			say "     'I used to be a sculptor. People always made fun of me - my height, my looks, but they never made fun of my sculptures. I was just delivering a sculpture when this all kicked off, and I think it might have affected me. I'm still myself though, so I have to be thankful for that I suppose.'";
		else if randomnumber >= 16 and randomnumber <= 20:
			say "     'Don't you love the idea of a hoard? A massive fire breathing dragon sitting on top of a huge mound of diamonds, rubies, emeralds, and other gems. Piles of gold around, intricate armour around the place left from dead heroes who tried to steal. Priceless artifacts, forbidden texts and legendary weapons, now that would be a proper hoard...' Kyrverth fades off, dreaming of massive hoards seen in fantasy books.";
		else if randomnumber >= 21 and randomnumber <= 25:
			say "     'Have you seen anything interesting in the city? Anything valuable?'";
		else if randomnumber >= 26 and randomnumber <= 30:
			say "     Kyrverth smiles at you. 'I had a pretty good find today, brought back a pretty decent amount of supplies.'";
		else if randomnumber >= 31 and randomnumber <= 35:
			if KyrverthStage is 0:
				say "     'I wish I [one of]was a stronger dragon[or]wasn't so weak[at random]'";
			else if KyrverthStage is 1:
				say "     'I wish I [one of]was a bigger dragon[or]wasn't so small[at random]'";
			else if KyrverthStage is 2:
				say "     'Look at these muscles, this is awesome!' Kyrverth exclaims, flexing to show off his toned muscles.";
			else if KyrverthStage is 3:
				say "     'I love being a proper dragon, look at this!' Kyrverth flexes an arm, showing off the massively powerful muscles and terrifyingly large claws that he possesses.";
		else if randomnumber >= 36 and randomnumber <= 40:
			if ((cocks of player >= 1 and KyrverthMaleBoning is 0) or KyrverthStage is not 3):
				say "     'Someday Ill look for a mate, hopefully I will have a big enough hoard to draw them in by then...'";
			else if (cocks of player >= 1 and KyrverthStage is 3 and KyrverthMaleBoning is 0):
				say "     'I've been looking for a mate, have you seen any dragonesses?'";
			else if ((cocks of player >= 1 and KyrverthStage is 3 and KyrverthMaleBoning is 1) or cunts of player >= 1):
				say "     'Hows about you and I have some fun?' Kyrverths hand strays toward his vent and strokes it a few times, showing the tip of a massive cock. 'I've been wanting to make some eggs...'";
		else if randomnumber >= 36 and randomnumber <= 40:
			say "     'All my life I've had four limbs. Now I have four limbs and a tail and wings, it can be strange sometimes. I use the limbs almost without thinking, but when I try to use them consciously I'm a lot more clumsy with them.'";
		else if randomnumber >= 41 and randomnumber <= 45:
			if KyrverthStage is not 3:
				say "     'I wonder what my hoard is worth? And in what currency? Ever since the outbreak money has become a bit useless...'";
			else:
				say "     'So as my hoard grows so do I, and the more valuable it is, the more I grow... [one of]What would happen if I had something in my hoard that was priceless?[or]Who determines how valuable it is? Is it the value other people would pay for it, or the value that I place on it?[at random]'";
		else if randomnumber >= 46 and randomnumber < 91: [large chance to see, reminds player about quest]
			if KyrverthStage is 0:
				say "     'Thanks for agreeing to help me out, it's going to be awesome to have a hoard!'";
				if KyrverthQuestGiven is 1:
					say "     'Any luck finding some jewels?'";
			else if KyrverthStage is 1:
				say "     'Thanks for the help' He grabs the silver token around his neck and shows it to you. 'This is [one of]awesome[or]great[at random]!'";
				if KyrverthQuestGiven is 1:
					say "     'Have you found any chainmail? I hate those so-called [']knights['].'";
			else if KyrverthStage is 2:
				say "     'Have a look at this hoard! It looks great, and I couldn't have gotten it together without you.'";
				if KyrverthQuestGiven is 1:
					say "     'Have you fought any eastern dragons? They need taking down a peg...'";
			else if KyrverthStage is 3:
				say "     'That's a great hoard you've given me, I can grow it on my own from now on, but please don't forget that I owe you one.'";
		else:
			say "BUG - [randomnumber]"

Section 3 - Sex [Bear in mind Kyrverth has a massive cock in his final form - 26 inches.]

instead of fucking the Kyrverth:
	if KyrverthStage is 3:
		if (KyrverthTimer - turns < 6): 		[He got fucked in the last 18 hours = 6 turns]
			say "     'Sorry, but not right now, maybe later?'";
		else if cocks of player > 0: 				[Male player]
			if KyrverthMaleBoning is 0:
				say "     'Sorry bro, I do owe you one, but I'm really into girls...'";
				say "[KyrverthMaleCheck]";
			else if KyrverthMaleBoning is 1:
				say "[KyrverthAnalSex]";
		else if ((scalevalue of player <= 1 and "Kinky" is not listed in feats of player) or cunt length of player < 10): [Too small for sex]
			say "     As you walk up to Kyrverth, he looks at you closely, then says, 'Sorry, you are nice and all, but I doubt it would fit.'";
			WaitLineBreak;
		else if cunts of player > 0: [Female player that is large enough]
			say "[KyrverthSex]";
		else: [Player has no gender, large enough]
			if KyrverthMaleBoning is 0:
				say "     'Sorry, I do owe you one, but I'm really into girls, and you don't have those parts...'";
			else if KyrverthMaleBoning is 1:
				say "[KyrverthMaleCheck]";
	else:
		say "     'You're nice and all, but I really need to focus on my hoard.'";

to say KyrverthMaleCheck:
	say "     [bold type]He doesn't sound too sure about that, do you want to try to convince him otherwise?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	if player consents:
		LineBreak;
		Let Randomcharmvar be a random number between 1 and 30;
		say "     [bold type]Rolling [Randomcharmvar]/30 + Charisma of [charisma of player] vs 25: [roman type]";
		if (Randomcharmvar + charisma of player) < 25:
			say "You try to convince the dragon that males are ok too, but he shakes his head, firm in the belief that he is into females and females only.";
		else:
			now KyrverthMaleBoning is 1;
			say "You speak clearly and convincingly, telling Kyrverth that liking girls and guys are not mutually exclusive. He doesn't immediately object, so you keep talking. You talk for almost ten minutes, and at the end he nods his head. 'I think you're onto something there...'";
			now KyrverthTimer is turns;
	else:
		LineBreak;
		say "Deciding not to press the issue, you take a step back and leave him be for now.";

to say KyrverthSex:
	say "Just a placeholder for Kyrverth sex right now, maybe in a future update?";
	if "Kinky" is listed in feats of player and scalevalue is 1:
		say "The rough sex on your small body has taken its toll, and has not done well for your health.";
		decrease HP of player by (maxHP of player / 4);
		if HP of player <= 0:
			now HP of player is 1;
	WaitLineBreak;
	[If player has a cunt length between 10 and 18 or they are scalevalue 1 with the kinky trait, kyrverth stuffs their cunt but can't get balls deep. Cum everywhere.]
	[If the players cunt length > 18, kyrverth fucks them in the cunt, gets balls deep, fucks them, knots, and cums. High chance of impregnation?]

to say KyrverthAnalSex: [For null and male players]
	if scalevalue of player is:
		-- 1:
			if "Kinky" is not listed in feats of player:
				say "     The dragon looks over your tiny form as you make your offer before shaking his head in refusal. 'As much as I'd like to, you're too small. I don't want to hurt you, after all.'";
			else:
				say "     The dragon looks over your tiny form as you make your offer, and he hesitates for a moment before shaking his head. 'I don't think that's a very good idea. I could hurt you.'";
				[say "     [bold type]He does have a valid point, but you can probably convince him to take you anyway. Shall you do so?[roman type]";
				LineBreak;
				say "     [link](Y)[as]y[end link] - Yes.";
				say "     [link](N)[as]n[end link] - No.";
				if player consents:
					say "[KyrverthTinyPlayerAnal]";
				else:
					say "     You concede that the dragon has a good point and drop the matter for now.";]
		-- 2:
			say "[KyrverthSmallPlayerAnal]";
		-- 3:
			say "[KyrverthAveragePlayerAnal]";
		-- 4:
			say "[KyrverthLargePlayerAnal]";
		-- 5:
			say "[KyrverthLargePlayerAnal]";
	now KyrverthTimer is turns;
	[Kyrverth fucks the players ass, stuffing them VERY full. Maybe some variation for larger players. scalevalue 1 is locked unless player has Kinky feat. Ends up knotting them and fills them up with cum.]

to say KyrverthTinyPlayerAnal:
	say "     <Kyrverth uses you like a masturbator>.";
	now HP of player is (HP of player - (maxHP of player / 4));
	if HP of player <= 0:
		now HP of player is 1;

to say KyrverthSmallPlayerAnal:
	say "     Kyrverth grins at your suggestion, showing off his maw full of razor sharp teeth. Not giving you near enough time to react, he slams his massive paw into you, pinning you to the ground as he leans close to your face, growling dominantly at you. 'Strip,' he commands, his deep voice vibrating through your body as you tremble in excitement. You nod and he lifts his paw up to allow you the ability to undress. While you disrobe, the dragon looks over your [bodydesc of player] body, rumbling in approval at what he sees. As your final garmet falls to the floor, the giant dragon speaks again. 'Get on all fours.'";
	if anallevel is 3:
		say "     You obey, clambering down onto all fours, presenting your [bodydesc of player] ass to your lover, begging him to take it. 'Oh believe me, I will. But first...' he trails off, leaving you to wonder what he has in store. Of course, you don't have to wonder for long, as you soon feel a warm and moist rush of breath against your backside. He gives you a few sniffs, taking in your scent before his tongue darts out of his mouth and into your crack, his thick saliva letting it slide in with almost no resistance. You let out a gasp as he continues his assault, the tip of his tapered tongue finding your hole and circling around it, quickly coating it in his thick drool. This goes on for only a few seconds before you feel the slimy organ pressing into your hole, the tapered tip allowing it to slip in with ease despite the size difference between you two.";
		WaitLineBreak;
		say "     He pushes his writhing organ further and further into you, flicking it around to stimulate you further. As more of the tongue is forced into you, you stretch wider and wider. Eventually, he's got nearly a foot of it inside of you, stretching you pleasantly and slicking your insides. The dragon begins to withdraw his tongue, and for a moment, you think he's done. You're only given a moment to think this before he thrusts his tongue back inside you roughly, reaching the same depth he'd been at before in less than a second. He withdraws again, and repeats the ritual until your hole is loose and wet, ready to receive his throbbing cock.[if cocks of player > 0] As he removes his organ for the final time, he presses the tip into your prostate, drawing a moan from your lips.[end if]";
		say "     With your hole dripping drool from his thorough rimming, Kyrverth wastes no time in positioning his massive cock in front of you hole, shifting his body so that he completely blocks you from view. He prods at your pucker a few times, before pressing into your hole, the tapered shaft slipping into you easily, lubricated by his saliva. [run paragraph on]";
	else:
		say "     Kyrverth wastes no time in positioning his massive cock in front of you hole, shifting his body so that he completely blocks you from view. He prods at your pucker a few times, before pressing into your hole, the tapered shaft slipping into you easily, lubricated by his pre. [run paragraph on]";
	say "He gives you a moment to adjust before pressing further into you. Inch after inch sinks into you, until he's a quarter of the way buried inside of you, his ridges making further entry harder. Your belly is already distending rather obviously, a testament to the massive tool taking your hole.";
	WaitLineBreak;
	say "     You're given another moment to adjust before he presses in with even more force, your hole stretching painfully wide as the ridge slips in past your ring[if cocks of player > 0], pressing against your prostate, causing your [cock size desc of player] [cock of player] to throb from pleasure[end if]. With a little more pressure and pushing, you feel the next ridge beginning to slide in, and it too, passes through your hole with a fair amount of pain. You're belly is stretched out in the shape of the dragon's cock, nearly a foot of it buried inside your hole. His assualt continues, pressing the next ridge into you, leaving only one ridge left between you and his massive knot. Soon enough, that ridge slips into you as well and his knot presses firmly against your ass before he pulls back, each ridge coming out of you with a fair amount of resistance. Eventually, on his tip remains inside you.";
	say "     This doesn't last very long, however, as he's soon pushing his length into your hole once more. The protrusions manage to go in a little more easily this time, allowing him to bottom out in about half the time. This time, he yanks his tool out roughly, causing you to gasp in both pain and pleasure[if cocks of player > 0], your cock throbbing and dripping pre[end if]. The dragon pushes into you harshly, finally reaching a speed that's pleasurable for him as well. He continues to thrust into you again and again, and with each thrust, you swear you can feel his ridges getting bigger.";
	WaitLineBreak;
	say "     True enough, his ridges have been flaring outward slightly, adding even more sensation to the thorough fucking your receiving. Each thrust rocks your body forward, and you can't help but moan from the amazing feeling of being taken by this beast's massive cock[if cocks of player > 0], your own tool twitching and throbbing, orgasm close[end if]. It seems like Kyrverth is getting closer to his peak[if cocks of player > 0] as well[end if]. He let's out a roar, as he ruts into you, his knot slamming into your tight hole with so much force you swear he's going to break you. Your eyes go wide as you feel the dragon pushing harder into you, straining your ass as he attempts to knot you.";
	say "     At first, you don't think he's going to be able to. You're proven to be incorrect, however, as he manages to spread you wider and wider around his knot, until you finally pass the widest point, the rest of it popping into you with a loud, wet squelch. [if cocks of player > 0]With your hole tied and your stomach stretched into the shape of a dragon cock, you cum, spilling your [cum load size of player] load onto the ground.[else]With your hole tied, you let out a loud moan of sheer pleasure.[end if] The dragon continues to fuck you, his movements limited by his own knot, which actually seems to be swelling larger along with his ridges as his climax draws near. He lets loose a mighty roar before he cums inside you, rope after rope of dragon seed filling your bowels. The thick cream coats your inner walls instantly before it begins to fill up your insides. You quickly feel full, but it doesn't seem like Kyrverth is anywhere near done, his flood of semen still coming strong. As more of the cum rushes into you, your belly begins to round out more and more. By the time his flow starts to slow, you look almost like your nine-months pregnant, so swollen that you might not be able to move for a little while.";
	WaitLineBreak;
	say "     You're lover waits for a few minutes as his shaft softens and his knot deflates before pulling out of you, a rush of his own seed flowing out after him, covering your ass[if cocks of player > 0] and balls[end if] in it's heady scent. Your arms and legs give out from beneath you, and you flop to the ground. You simply lay there for a moment before you roll over with a groan to look at the massive feral dragon. He gives you a toothy grin. 'That was more fun than I was expecting. Perhaps we should do it again some time?'";

to say KyrverthAveragePlayerAnal:
	say "     Kyrverth grins at your suggestion, showing off his maw full of razor sharp teeth. Not giving you near enough time to react, he slams his massive paw into you, pinning you to the ground as he leans close to your face, growling dominantly at you. 'Strip,' he commands, his deep voice vibrating through your body as you tremble in excitement. You nod and he lifts his paw up to allow you the ability to undress. While you disrobe, the dragon looks over your [bodydesc of player] body, rumbling in approval at what he sees. As your final garmet falls to the floor, the giant dragon speaks again. 'Get on all fours.'";
	if anallevel is 3:
		say "     You obey, clambering down onto all fours, presenting your [bodydesc of player] ass to your lover, begging him to take it. 'Oh believe me, I will. But first...' he trails off, leaving you to wonder what he has in store. Of course, you don't have to wonder for long, as you soon feel a warm and moist rush of breath against your backside. He gives you a few sniffs, taking in your scent before his tongue darts out of his mouth and into your crack, his thick saliva letting it slide in with almost no resistance. You let out a gasp as he continues his assault, the tip of his tapered tongue finding your hole and circling around it, quickly coating it in his thick drool. This goes on for only a few seconds before you feel the slimy organ pressing into your hole, the tapered tip allowing it to slip in with ease despite the size difference between you two.";
		WaitLineBreak;
		say "     He pushes his writhing organ further and further into you, flicking it around to stimulate you further. As more of the tongue is forced into you, you stretch wider and wider. Eventually, he's got nearly a foot of it inside of you, stretching you pleasantly and slicking your insides. The dragon begins to withdraw his tongue, and for a moment, you think he's done. You're only given a moment to think this before he thrusts his tongue back inside you roughly, reaching the same depth he'd been at before in less than a second. He withdraws again, and repeats the ritual until your hole is loose and wet, ready to receive his throbbing cock.[if cocks of player > 0] As he removes his organ for the final time, he presses the tip into your prostate, drawing a moan from your lips.[end if]";
		say "     With your hole dripping drool from his thorough rimming, Kyrverth wastes no time in positioning his massive cock in front of you hole, shifting his body so that he completely blocks you from view. He prods at your pucker a few times, before pressing into your hole, the tapered shaft slipping into you easily, lubricated by his saliva. [run paragraph on]";
	else:
		say "     Kyrverth wastes no time in positioning his massive cock in front of you hole, shifting his body so that he completely blocks you from view. He prods at your pucker a few times, before pressing into your hole, the tapered shaft slipping into you easily, lubricated by his pre. [run paragraph on]";
	say "He gives you a moment to adjust before pressing further into you. Inch after inch sinks into you, until he's a quarter of the way buried inside of you, his ridges making further entry harder. Your belly is already distending noticeably, a testament to the massive tool taking your hole.";
	WaitLineBreak;
	say "     You're given another moment to adjust before he presses in with even more force, your hole stretching wider until the ridge slips in past your ring[if cocks of player > 0], pressing against your prostate, causing your [cock size desc of player] [cock of player] to throb from pleasure[end if]. With a little more pressure and pushing, you feel the next ridge beginning to slide in, and it too, passes through your hole with a fair amount of pleasure and a little bit of pain. You're belly is bulging outwards in the shape of the dragon's cock, nearly a foot of it buried inside your hole. His assault continues, pressing the next ridge into you, leaving only one ridge left between you and his massive knot. Soon enough, that ridge slips into you as well and his knot presses firmly against your ass before he pulls back, each ridge coming out of you with a little bit of resistance. Eventually, on his tip remains inside you.";
	say "     This doesn't last very long, however, as he's soon pushing his length into your hole once more. The protrusions manage to go in a little more easily this time, allowing him to bottom out in about half the time. This time, he yanks his tool out roughly, causing you to gasp in both pain and pleasure[if cocks of player > 0], your cock throbbing and dripping pre[end if]. The dragon pushes into you harshly, finally reaching a speed that's pleasurable for him as well. He continues to thrust into you again and again, and with each thrust, you swear you can feel his ridges getting bigger.";
	WaitLineBreak;
	say "     True enough, his ridges have been flaring outward slightly, adding even more sensation to the thorough fucking your receiving. Each thrust rocks your body forward, and you can't help but moan from the amazing feeling of being taken by this beast's massive cock[if cocks of player > 0], your own tool twitching and throbbing, orgasm close[end if]. It seems like Kyrverth is getting closer to his peak[if cocks of player > 0] as well[end if]. He lets out a roar, as he ruts into you, his knot slamming into your tight hole with so much force you swear he's going to break you. Your eyes go wide as you feel the dragon pushing harder into you, straining your ass as he attempts to knot you.";
	say "     Initially, your hole puts up a fair amount of resistance, however he manages to spread you wider and wider around his knot, until you finally pass the widest point, the rest of it popping into you with a loud, wet squelch. [if cocks of player > 0]With your hole tied and your stomach stretched into the shape of a dragon cock, you cum, spilling your [cum load size of player] load onto the ground.[else]With your hole tied, you let out a loud moan of sheer pleasure.[end if] The dragon continues to fuck you, his movements limited by his own knot, which actually seems to be swelling larger along with his ridges as his climax draws near. He lets loose a mighty roar before he cums inside you, rope after rope of dragon seed filling your bowels. The thick cream coats your inner walls rapidly before it begins to fill up your insides. You soon feel rather full, but it doesn't seem like Kyrverth is anywhere near done, his flood of semen still coming strong. As more of the cum rushes into you, your belly begins to round out more and more. By the time his flow starts to slow, you look like you've gained quite a few pounds, swollen enough that movement might be just a little difficult.";
	WaitLineBreak;
	say "     You're lover waits for a few minutes as his shaft softens and his knot deflates before pulling out of you, a rush of his own seed flowing out after him, covering your ass[if cocks of player > 0] and balls[end if] in it's heady scent. Your arms and legs give out from beneath you, and you flop to the ground. You simply lay there for a moment before you roll over with a groan to look at the massive feral dragon. He gives you a toothy grin. 'That was more fun than I was expecting. Perhaps we should do it again some time?'";

to say KyrverthLargePlayerAnal:
	say "     Kyrverth grins at your suggestion, showing off his maw full of razor sharp teeth. Not giving you near enough time to react, he slams his paw into you, knocking you to the ground before leering over your prone form, growling dominantly at you. 'Strip,' he commands, his deep voice vibrating through your body as you tremble in excitement. You nod and he moves away slightly, giving you enough room to do so. While you disrobe, the dragon looks over your [bodydesc of player] body, rumbling in approval at what he sees. As your final garmet falls to the floor, the giant dragon speaks again. 'Get on all fours.'";
	if anallevel is 3:
		say "     You obey, clambering down onto all fours, presenting your [bodydesc of player] ass to your lover, begging him to take it. 'Oh believe me, I will. But first...' he trails off, leaving you to wonder what he has in store. Of course, you don't have to wonder for long, as you soon feel a warm and moist rush of breath against your backside. He gives you a few sniffs, taking in your scent before his tongue darts out of his mouth and into your crack, his thick saliva letting it slide in with almost no resistance. You let out a gasp as he continues his assault, the tip of his tapered tongue finding your hole and circling around it, quickly coating it in his thick drool. This goes on for only a few seconds before you feel the slimy organ pressing into your hole, the tapered tip allowing it to slip in with ease, even with the slight size difference between you two.";
		WaitLineBreak;
		say "     He pushes his writhing organ further and further into you, flicking it around to stimulate you further. As more of the tongue is forced into you, you stretch wider and wider. Eventually, he's got nearly a two feet of it inside of you, stretching you pleasurably and slicking your insides. The dragon begins to withdraw his tongue, and for a moment, you think he's done. You're only given a moment to think this before he thrusts his tongue back inside you roughly, reaching the same depth he'd been at before in less than a second. He withdraws again, and repeats the ritual until your hole is loose and wet, ready to receive his throbbing cock.[if cocks of player > 0] As he removes his organ for the final time, he presses the tip into your prostate, drawing a moan from your lips.[end if]";
		say "     With your hole dripping drool from his thorough rimming, Kyrverth wastes no time in positioning his massive cock in front of you hole, shifting his body so that he is now standing over you, nearly eclipsing you from view. He prods at your pucker a few times, before pressing into your hole, the tapered shaft slipping into you easily, lubricated by his saliva. [run paragraph on]";
	else:
		say "     Kyrverth wastes no time in positioning his massive cock in front of you hole, shifting his body so that he is standing over you, his body almost eclipsing you from view. He prods at your pucker a few times, before pressing into your hole, the tapered shaft slipping into you easily, lubricated by his pre. [run paragraph on]";
	say "He gives you a moment to adjust before pressing further into you. Inch after inch sinks into you, until he's a quarter of the way buried inside of you, his ridges making further entry harder. Your belly has a very slight bulge in it from his shaft already.";
	WaitLineBreak;
	say "     You're given another moment to adjust before he presses in with a little more force, your hole stretching wider until the ridge slips in past your ring[if cocks of player > 0], pressing against your prostate, causing your [cock size desc of player] [cock of player] to throb from pleasure[end if]. With a little more pressure and pushing, you feel the next ridge beginning to slide in, and it too, passes through your hole with a fair amount of pleasure. You're belly is bulging outwards more noticeably now, nearly a foot of draconic cock buried inside your hole. His assault continues, pressing the next ridge into you, leaving only one ridge left between you and his massive knot. Soon enough, that ridge slips into you as well and his knot presses firmly against your ass before he pulls back, each ridge coming out of you, sending waves of pleasure throughout you. Eventually, on his tip remains inside.";
	say "     This doesn't last very long, however, as he's soon pushing his length into your hole once more. The protrusions manage to go in a little more easily this time, allowing him to bottom out in about half the time. This time, he yanks his tool out roughly, causing you to gasp at the sudden pleasure[if cocks of player > 0], your cock throbbing and dripping pre[end if]. The dragon pushes into you harshly, finally reaching a speed that's pleasurable for him as well. He continues to thrust into you again and again, and with each thrust, you swear you can feel his ridges getting bigger.";
	WaitLineBreak;
	say "     True enough, his ridges have been flaring outward slightly, adding even more sensation to the thorough fucking your receiving. Each thrust jolts you ever so slightly, and you can't help but moan from the amazing feeling of being taken by this beast's massive cock[if cocks of player > 0], your own tool twitching and throbbing, orgasm close[end if]. It seems like Kyrverth is getting closer to his peak[if cocks of player > 0] as well[end if]. He lets out a roar, as he ruts into you, his knot slamming into your tight hole. Your eyes go wide as you feel the dragon pushing harder into you, straining your ass as he attempts to knot you.";
	say "     Your hole only puts up a little resistance, before he manages to spread you wider and wider around his knot, until you finally pass the widest point, the rest of it popping into you with a loud, wet squelch. [if cocks of player > 0]With your hole tied and your stomach bulging vaguely in the shape of a dragon cock, you cum, spilling your [cum load size of player] load onto the ground.[else]With your hole tied, you let out a loud moan of sheer pleasure.[end if] The dragon continues to fuck you, his movements limited by his own knot, which actually seems to be swelling larger along with his ridges as his climax draws near. He lets loose a mighty roar before he cums inside you, rope after rope of dragon seed filling your bowels. The thick cream coats your inner walls rapidly before it begins to fill up your insides. As more of the cum rushes into you, your belly begins to round out a slight bit more. By the time his flow starts to slow, you've swollen enough that movement might present a slight issue.";
	WaitLineBreak;
	say "     You're lover waits for a few minutes as his shaft softens and his knot deflates before pulling out of you, a rush of his own seed flowing out after him, covering your ass[if cocks of player > 0] and balls[end if] in it's heady scent. Your arms and legs give out from beneath you, and you flop to the ground. You simply lay there for a moment before you roll over with a groan to look at the massive feral dragon. He gives you a toothy grin. 'That was more fun than I was expecting. Perhaps we should do it again some time?'";

Section 4 - Events
[Strange sighting - Encounter Kyrverth		]
[Jewel Heist - First Quest					]

Strange Sighting is a situation.
The level of Strange Sighting is 5. [minimum level to find the event]
The sarea of Strange Sighting is "High Rise District". [or "Park", or "Museum", ...]

when play begins: [flags for blocking this event]
	add Strange Sighting to badspots of guy;
	add Strange Sighting to badspots of feral;
	add Strange Sighting to badspots of furry;

Instead of resolving a Strange Sighting:
	say "     As you walk down the street you could swear you saw a glimpse of red in a shop window but as you get close all that can be seen through the broken glass is a dark room with overturned or broken tables and chairs.";
	say "     [bold type]Shall you investigate?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Go inside and have a look.";
	say "     ([link]N[as]n[end link]) - Leave, it's none of your business.";
	if player consents:
		LineBreak;
		say "     You push the door open with one hand and creep in. Through the haze of dust you see what used to be a bar. It looks like people left in a hurry, glasses still on the bar, tables and chairs have been knocked over, and the windows are broken.  Mounted above the counter, a carved wooden dragons head with the maw stuck in a roaring snarl grabs your eye, but you realise there is nothing here of use. As you turn to leave you spot the red again. A tiny bit of tail poking out from behind an overturned table. Creeping up on it, you place your feet well, and might as well be silent. Suddenly the floor creaks under your foot. The red tail twitches and you know what is going to happen next. You dive and grab it as a red blur bursts from behind and heads toward the exit.";
		say "     Though it pulls strongly to get away, you keep your hold of the tail, reel it in and grab its owner's body. As you pin it to the floor you notice you have caught what may well be the smallest dragon in the city. He struggles with you for a second but you hold him easily. Realising he won't be getting away, he goes limp. A few seconds go by, then he says, 'Well, that's not the best of introductions, is it? Shall we start again? I'm Kyrverth.' The diminutive dragon leads you to his hideout, a large vault in the next door bank. It's empty, but the heavy metal door - currently sitting on the ground, one hinge broken - makes you think of what might have been in here in earlier times, and what broke the door off it's hinges...";
		LineBreak;
		say "     As he arrives he hands you a soda, saying, 'Sorry about that. I'm not exactly the biggest dragon, and I heard some of those savages talking about eating me...'";
		say "     [bold type]You head back to the library, maybe you should visit the dragon again in the High Rise District - later, when he's calmed down a bit.[roman type][line break]";
		increase carried of soda by 1;
		WaitLineBreak;
		change the South exit of Overgrown Street to Dragons Den;
		change the North exit of Dragons Den to Overgrown Street;
	else:
		LineBreak;
		say "     You decide to take caution in what could possibly be a trap and continue on your way.";
	now KyrverthTimer is turns;
	now battleground is "void";
	now Strange Sighting is resolved;  [it won't happen again]

instead of going south from Overgrown Street while (KyrverthTimer - turns <= 6 and KyrverthStage is 0): [No other requirements, just 6 turns since the event]
	say "That's probably not the best idea, he's probably still pretty upset.";

Jewel Heist is a situation.
The level of Jewel Heist is 5. [minimum level to find the event]
The sarea of Jewel Heist is "High Rise District". [or "Park", or "Museum", ...]
Jewel Heist is resolved.

when play begins: [flags for blocking this event]
	add Jewel Heist to badspots of guy;
	add Jewel Heist to badspots of feral;
	add Jewel Heist to badspots of furry;

Instead of resolving a Jewel Heist:
	say "     Walking down the street you spot a good source of jewels, a jewellery shop! The faded blue shop has two windows with bars behind them. Display cases inside catch your eye but a wolverine standing in front of the only entrance gives you pause. It would not be easy to try and fight your way past him, and he does not look friendly enough to trade with. You think about Kyrverth and resolve that this would be the easiest way to start his hoard.";
	say "     [bold type]Now if only you could get past the guard at the door... Do you try?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	if player consents:
		LineBreak;
		if JewelHeistCaught is 0:
			say "As you close in, you notice a back alley, do you want to [bold type]continue with your original plan or explore alternative options?[roman type]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Fight.";
			say "     ([link]N[as]n[end link]) - Sneak.";
			if player consents:
				LineBreak;
				say "     Deciding to get it over and done with, you walk up to the wolverine and tell him that you are entering the building, whether he likes it or not. He responds by pulling out hit bat and adopting a fighting stance. Walking up to him, you duck under his first swing and punch him in the gut. Retaliating, he hits your face and as you stumble back, he raises the bat to hit. You manage to get your arm up just in time to block and knock away the bat. He raises his fists but you kick him back before he can strike again. Taking a breath you brace yourself to continue the fight.";
				say "[JewelHeistFight]";
			else:
				LineBreak;
				say "[JewelHeistSneak]";
		else:
			say "[JewelHeistFight]";
	else:
		LineBreak;
		say "     Deciding that discretion is the better part of valour, you return to the library. Maybe try again later?";
		Let Randomsneakvar be a random number between 1 and 30;
		if (Randomsneakvar + dexterity of player) < 25:
			say "     [bold type]Rolling [Randomsneakvar] + Dexterity of [dexterity of player] vs 25: [roman type]";
			say "     The wolverine notices you leaving and chases you down the street, stopping at the end and returning to the store. You get the feeling he will be extra vigilant now he knows the store is a target.";
			now JewelHeistCaught is 1;
	now battleground is "void";

to say JewelHeistSneak:
	say "     The wolverine stands by the front door, a permanent scowl on his face. His hand regularly strokes a bat hanging from a loop on his waist. Deciding not to try and fight him you walk around to the next street and go down the alley to the back of the shop. The rear door looks like it might be alarmed with a wire running down to a small box on the side of the door by the handle. If the alarm goes off you know the wolverine will come running.";
	say "     [bold type]Will you try to disarm it?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	if player consents:
		LineBreak;
		Let Randomsneakvar be a random number between 1 and 30;
		say "     [bold type]Rolling [Randomsneakvar] + Dexterity of [dexterity of player] vs 25: [roman type]";
		if (Randomsneakvar + dexterity of player) < 25:
			say "Almost immediately an alarm goes off, blaring loudly into the night. The wolverine comes around the corner, and he does NOT look happy.";
			say "[JewelHeistFight]";
		else:
			say "You walk into the shop, but it's not what you were expecting. The guard went to all that effort to guard the place and someone has already looted it. Display cases around the room are smashed and the jewellery missing. You look through the drawers behind the desk and find a silver token, round with a hole in the middle. A tag says it is pure silver, maybe this would do for Kyrverth?";
			now Jewel Heist is resolved;
			now SilverToken is 1;
	else:
		LineBreak;
		say "     You didnt want to disarm the door, [bold type]do you want to fight the wolverine or leave?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Fight.";
		say "     ([link]N[as]n[end link]) - Leave.";
		if player consents:
			LineBreak;
			say "[JewelHeistFight]";
		else:
			LineBreak;
			say "     Deciding that discretion is the better part of valour, you return to the library. Maybe try again later?";
			Let Randomsneakvar be a random number between 1 and 30;
			if (Randomsneakvar + dexterity of player) < 25:
				say "     [bold type]Rolling [Randomsneakvar] + Dexterity of [dexterity of player] vs 25: [roman type]";
				say "     The wolverine notices you leaving and chases you down the street, stopping at the end and returning to the store. You get the feeling he will be extra vigilant now he knows the store is a target.";
				now JewelHeistCaught is 1;

to say JewelHeistFight:
	now inasituation is true;
	challenge "Wolverine Guard";
	if fightoutcome > 19 and fightoutcome <= 30: [lost or fled]
		say "     The wolverine knocks you to the ground and wraps his hands around your neck. Not long after you black out. You wake up a few blocks down the road and quickly head back to the library. You curse your failure, knowing that he will be extra vigilant now he knows the store is a target.";
		now JewelHeistCaught is 1;
	else if fightoutcome is 30: [fled]
		say "     The wolverine stands victorious and sends you on your way. You get the feeling he will be extra vigilant now he knows the store is a target.";
		now JewelHeistCaught is 1;
	else if fightoutcome < 20: [player won]
		say "     With a last blow, the wolverine topples to the ground. You step over him and enter the shop";
		say "     You walk into the shop, but it's not what you were expecting. The guard went to all that effort to guard the place and someone has already looted it. Display cases around the room are smashed and the jewellery missing. You look through the drawers behind the desk and find a silver token, round with a hole in the middle. A tag says it is pure silver, maybe this would do for Kyrverth?";
		now Jewel Heist is resolved;
		now SilverToken is 1;
	now inasituation is false;



Section 5 - Endings

[when play ends:
	if (HP of Kyrverth > 0):  [player met him and got as far as seeing him as an npc]
		if humanity of player < 10: [player went feral]
			if HP of Kyrverth is 1: [Kyrverth is at the mall when the game ends]
				if KyrverthRelationship < XXX: [non relationship ending]
					say "     ...";
				else if KyrverthRelationship > XXX: [relationship ending]
					say "     ...";
			else if HP of Kyrverth is 2: [Kyrverth is at the bunker when the game ends]
				if KyrverthRelationship < XXX: [non relationship ending]
					say "     ...";
				else if KyrverthRelationship > XXX: [relationship ending]
					say "     ...";
		else:
			if HP of Kyrverth is 1: [Kyrverth is at the mall when the game ends]
				if KyrverthRelationship < XXX: [non relationship ending]
					say "     ...";
				else if KyrverthRelationship > XXX: [relationship ending]
					say "     ...";
			else if HP of Kyrverth is 2: [Kyrverth is at the bunker when the game ends]
				if KyrverthRelationship < XXX: [non relationship ending]
					say "     ...";
				else if KyrverthRelationship > XXX: [relationship ending]
					say "     ...";]

Kyrverth ends here.
