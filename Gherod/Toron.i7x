Version 1 of Toron by Gherod begins here.

"Adds Toron, the bartender of the Hellfire Club, to the game."

[Version 1 - Moved Toron to his own file, as it was getting cramped in Mogdraz's file]

[***********************************************************]
Section 1 - Toron NPC
[***********************************************************]

ToronDoneTalking is a truth state that varies.[@Tag:NotSaved]

Table of GameCharacterIDs (continued)
object	name
Toron	"Toron"

Toron is a man. Toron is in Hellfire Lounge.
ScaleValue of Toron is 3. [human sized]
Cock Count of Toron is 1.
Cock Length of Toron is 9.
Ball Size of Toron is 4.
Ball Count of Toron is 2.
Cunt Count of Toron is 0.
Cunt Depth of Toron is 0.
Cunt Tightness of Toron is 0.
Nipple Count of Toron is 2. [2 nipples]
Breast Size of Toron is 0.
[Basic Interaction states as of game start]
PlayerMet of Toron is false.
PlayerRomanced of Toron is false.
PlayerFriended of Toron is false.
PlayerControlled of Toron is false.
PlayerFucked of Toron is false.
OralVirgin of Toron is false.
Virgin of Toron is false.
AnalVirgin of Toron is false.
PenileVirgin of Toron is false.
SexuallyExperienced of Toron is true.
MainInfection of Toron is "".
The description of Toron is "[ToronDesc]".
The conversation of Toron is { "<This is nothing but a placeholder!>" }.
The scent of Toron is "     Toron smells... like nothing. He's completely odorless. You can't help but think there's something quite odd about this fellow.".

to say ToronDesc:
	say "     You perceive Toron as a purple skin colored human with unnaturally bright pink eyes, although the lighting in the lounge give his bare torso a slight red tone at night... It's confusing, and truth be told, you're not really sure about his real colors, only that he is far from being a human. He's tall within the average scale, and very muscular, with incredibly handsome features. However, he gives you this feeling of... uncertainty, like he's not what he really looks like, and the occasional scaly tentacle appearing right behind him to grab drinks and bottles out of his arms['] reach may help explain why you feel this way. He stands behind a counter all the time, though he's usually wearing some tight black jeans.";
	if perception of player >= 19:
		say "     [italic type]His shape dims like a very thick liquid when you look at him attentively for a long time. You try not to do that often, however, as his counter gaze almost seems to petrify you.[roman type][line break]";

[***********************************************************]
Section 2 - Toron Talk Menu
[***********************************************************]

instead of conversing Toron:
	say "     You come close to the bar counter, as Toron immediately turns his attention to you. 'Drinks on the house, by Mogdraz's order. How lucky, not many gain his respect like that.' he says, his voice clear and low as if caressing your ears. He surely is charming. 'So, what can I get you?'";
	say "[ToronTalkMenu]";

to say ToronTalkMenu:
	now ToronDoneTalking is false;
	say "     [bold type]Is there something you want from the Hellfire Club's bartender?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Order a drink";
	now sortorder entry is 1;
	now description entry is "Order a drink at the bar";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Recent events";
	now sortorder entry is 2;
	now description entry is "Request an update on what's going on";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Himself";
	now sortorder entry is 3;
	now description entry is "Ask Toron to tell you more about himself";
	[]
	choose a blank row in table of fucking options;
	now title entry is "His work";
	now sortorder entry is 4;
	now description entry is "Inquire him about his work";
	[]
	if Energy of Toron > 0:
		choose a blank row in table of fucking options;
		now title entry is "Sex";
		now sortorder entry is 5;
		now description entry is "Bring up the obvious subject";
		[]
	if Energy of Toron > 1:
		choose a blank row in table of fucking options;
		now title entry is "History with Mogdraz";
		now sortorder entry is 6;
		now description entry is "Ask him about his relationship with Mogdraz";
	[]
	if resolution of An Hellish Introduction > 1:
		choose a blank row in table of fucking options;
		now title entry is "About Xaedihr";
		now sortorder entry is 7;
		now description entry is "Ask if he knows Xaedihr";
	[]
	if resolution of Ambush The Purifier < 99 and HP of Araqiel is 1 or HP of Araqiel is 2:
		choose a blank row in table of fucking options;
		now title entry is "About that odd Angel...";
		now sortorder entry is 8;
		now description entry is "He might like to know about the angel you've seen fucking demons";
	[]
	if Resolution of Ambush The Purifier > 7 and Resolution of Ambush The Purifier < 49:
		choose a blank row in table of fucking options;
		now title entry is "Mogdraz and Araqiel";
		now sortorder entry is 9;
		now description entry is "Ask Toron what he knows about the relationship between these two.";
	[]
	if abyssal remnant is owned:
		choose a blank row in table of fucking options;
		now title entry is "Restore Abyssal Remnant";
		now sortorder entry is 10;
		now description entry is "Show Toron what is left of the sword you found in the Void Realm and hope for a restore.";
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
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Order a drink"):
					say "[ToronTalkDrinks]";
					now ToronDoneTalking is true;
				if (nam is "Recent events"):
					say "[ToronTalkNews]";
					now ToronDoneTalking is true;
				if (nam is "Himself"):
					say "[ToronTalkHimself]";
				if (nam is "His work"):
					say "[ToronTalkWork]";
				if (nam is "Sex"):
					say "[ToronTalkSex]";
				if (nam is "History with Mogdraz"):
					say "[ToronTalkMogdraz]";
				if (nam is "About Xaedihr"):
					say "[ToronTalkXaedihr]";
				if (nam is "About that odd Angel..."):
					say "[ToronTalkPurifier]"; [on Araqiel file]
				if (nam is "Mogdraz and Araqiel"):
					say "[ToronTalkMogdrazAraqiel]"; [on Araqiel file]
				if (nam is "Restore Abyssal Remnant"):
					say "[ToronTalkAE]";
				wait for any key;
				if ToronDoneTalking is false:
					say "[ToronTalkMenu]"; [looping back to keep talking with him]
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You excuse yourself as the bartender continues his tasks.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say ToronTalkDrinks:
	if HellfireDrinkTimer > 0 and "Created Sparkling Water" is not listed in traits of Toron:
		say "     You can't have another drink while the effects of the previous one persists. Try again later.";
		wait for any key;
		say "[ToronTalkMenu]";
	else if HellfireDrinkTimer > 0 and "Created Sparkling Water" is listed in traits of Toron:
		say "     You can't have another drink while the effects of the previous one persists, but you can have a Sparkling Water to cleanse the effects. Would you like that?";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes, drink some Sparkling Water.";
		say "     ([link]N[as]n[end link]) - No, you're fine as you are.";
		if player consents:
			Linebreak;
			say "[DrinkSparklingWater]";
			wait for any key;
			say "[HellfireClubDrinksMenu]";
		else:
			Linebreak;
			say "     If that is so, then you will have to try again later if you want to order another drink.";
			wait for any key;
			say "[ToronTalkMenu]";
	else:
		say "     Since drinks are on the house, you might as well get one. 'Very well, though I must remind you that only the special selection is available for you, exclusively. Its effects last [bold type]24 hours[roman type] and you cannot consume any other until it leaves your system. In return, you get a physical or mental boost, depending on which drink you order. Sounds useful, doesn't it?'";
		say "[HellfireClubDrinksMenu]";

to say ToronTalkNews:
	say "     You ask Toron to share some gossip, and also update you on recent events happening around the area. He leans over the counter and speaks low.";
	say "     [one of]'All kinds of people come and go from here, but they can't help themselves when they see the boss getting serviced. Some stare and jerk off, it's pretty hilarious.'[or]'You wouldn't believe if I told you I've been asked to tentacle rape an anthro wolf, would you?'[or]'Mogdraz just had a special client, and he made a generous pay. What he wanted in exchange? To feel his navel. That was it.'[or]'Incubi and succubi are such a drag, sometimes. Flirting, flirting, and... oh, more flirting. And their thoughts? Literally useless.'[or]'Demon Brutes seem to be a problem around the mall's sewers. Have you been there?'[or]'There's this mega beast called Behemoth wandering around the Dry Plains who seems to be able to... slurp people in with their dicks and pussies? Very... odd. But... intriguing.'[or]'I've heard of an imp dumping hell trash somewhere in the Warehouse District. What an odd place to do it, honestly.'[or]'Why are the Incubi swarming the College Campus? I'm wondering, since their original base is the Red Light District. Curious, is it not?'[or]'Alpha huskies, alpha german shepherds, alpha this and that, all over the place preying on new additions to their packs... then they often come here to get dominated by an experienced demon. Oops.'[or]'Those orcs at the Warehouse District, looking for new breeders... They have this really nice brew.'[or]'Have you met an Oni? Those are interesting demons... and pretty big ones, too. They quite often get me weak on the knees... it's what you call this leg bone thingie, right?'[at random]";
	if HellfireOrcBrewTimer - turns > 4 and HellfireOrcBrewTimer is not 20000:
		say "     'Also, I've got a new drink, thanks to your offering of orc brew and orc cum. The [bold type]Orcish Bomber[roman type] has been added to the menu. Give it a try!'";
		now HellfireOrcBrewTimer is 20000;
	if HellfireBlackAleTimer - turns > 4 and HellfireBlackAleTimer is not 20000:
		say "     'Also, I've got a new drink, thanks to your offering of a sharp black tusk. The [bold type]Black Ale[roman type] has been added to the menu. Let me know if its taste isn't too exquisite... And if it doesn't give you a bellyache.'";
		now HellfireBlackAleTimer is 20000;
	if HellfireSparklingWaterTimer - turns > 4 and HellfireSparklingWaterTimer is not 20000:
		say "     'Also, I've got a new drink, thanks to your offering of a null essence. The [bold type]Sparkling Water[roman type] has been added to the menu. It should taste like... sparkling water, really. Nothing out of the ordinary. Can probably quench your thirst.'";
		now HellfireSparklingWaterTimer is 20000;

to say ToronTalkHimself:
	say "     Looking forward to know more about this strange demon, you ask him to tell you about himself. He looks flattered by your interest, but not entirely surprised. 'I get that question many times, in fact.' he replies, looking at you in the eye for a longer time than you're comfortable with. Then, you're somehow feeling relaxed... and safe... your thoughts suddenly vanishing from your mind and... Wait, what just happened? You return to your senses and find yourself confused, frantically looking around as Toron laughs. 'It is a dangerous question, too. Gives me enough time to pluck a secret from you.' Your eyes widen, as you understand that this was some kind of hypnosis he just performed on you. 'Ah, don't worry... It was nothing special. Maybe. That depends on how important it is for you.'";
	say "     He almost speaks in riddles, but he's still evading your question, so you redirect the conversation to that point. 'I am simply the bartender of the Hellfire Club, a loyal friend to Mogdraz... And someone whose bad side you don't want to be in. So... behave.' And those are the only things he says. Then, he's just staring at you with a sly smile, and his eyes are simply too irresistible to not stare back at... But remembering what happened just a while ago, it's probably for the best to not give in, else you want to accidentally let him know everything that is to know about you. 'They say the eyes are the soul's mirrors... careful.' Oh, and apparently he can read your thoughts.";

to say ToronTalkWork:
	say "     Knowing that the Hellfire Club is... not so simply just a club, the same should apply to its bartender. So you ask Toron a little more about it. 'My work here? Serving drinks... cleaning up and polishing glasses... Keeping everything as clean as possible... You have no idea how wild our clients get sometimes. There's cum, girl juices, even milk sometimes - yes, tit milk, I'm not even kidding! - covering the floor at the corners they take for a quick fuck, and then it stinks! Imagine those dogs, cats, foxes, bulls, wolfs, bears, horses, gorillas, all fucking around for an entire night, and you can imagine the stench. Why is the demon kink so popular...? I don't get it. Are we that alluring?! And the sexual proposals I get...! And not just to suck me off or eat my ass, no, they are attracted to my tentacles! MY TENTACLES!' As he says this, he plops a big fat one on top of the counter. 'Who would want this in their beavers and tacos? Or slurp on this? It's just a scaly tentacle with suckers, like the ones octopuses have! Is this kinky?!'";
	say "     Sounds like you've triggered Toron's frustrations about his work and clientele. 'I apologize, I must have gotten a little worked up. This ain't so bad, though I often wonder why Mogdraz has brought me here. I am a simple demon, who feeds on secrets. I may be able to provide you with some... gossip or actually useful information. Just ask, as long as you remain in the good guys['] list.' He seems to be some sort of informant, besides being a bartender.";
	say "     [bold type]He might be very useful if you want to know things.[roman type][line break]";
	if Energy of Toron is 0:
		now Energy of Toron is 1;

to say ToronTalkSex:
	say "     Given Toron's take on sexual proposals he gets, you're not quite sure if you should be asking this question, but you lose nothing in doing so. Still, you choose to ask the question softly, maybe starting with if he ever has any sex at all, given where he is working at. 'Sometimes I do... with people I like. Not just anyone. There aren't many I fancy... I like strong hands and beautiful eyes. Like Mogdraz's... yes, he's a good reference. We have our fun, sometimes, with his minions. Group sex is fun, but only during the day. At night, I'm stuck here, pouring drinks, serving them, and sweet talking customers into providing me knowledge.' Seems like the purple demon prefers being submissive, and is only available for more engaging fun during the day.";
	say "     [bold type]You can try your luck, if you fit his preferences.[roman type][line break]";
	if Libido of Toron is 0:
		now Libido of Toron is 1;
	if Energy of Toron is 1:
		now Energy of Toron is 2;

to say ToronTalkMogdraz:
	say "     Toron and Mogdraz work together, and he has mentioned the demon boss a lot of times throughout your conversations. So your curiosity brings you to this question, specifically, what kind of relationship they maintain. Asking the bartender about it, he looks to the side and leans over the counter, speaking in a lower tone. 'I was our former Lord's informant. Right after his heir betrayed him and ran off, Mogdraz basically kidnapped me and made me work for him. I think I kind of let myself... uh... get fascinated by such a virile and powerful demon such as the Demon Lord of our world... and Mogdraz reminded me of him a lot without the bad parts, which was simply perfect. Mogdraz is one wholesome individual. He's not evil... nor corrupted... nor under the influence of Hell... unlike most of our kind. In a way, he freed me. And I am very thankful of that.'";
	say "     The informant of a Demon Lord?! Just how powerful are these demons... 'Very powerful, but in this world we are sort of limited, as the same laws do not apply. That might come to protect us in the end, who knows.' He replied to your... thought. Right, he can read your thoughts. 'Sorry about that. It's a bad habit.' he apologizes, 'But answering your initial question, my relationship with Mogdraz is... let's say we're close friends with benefits. And I'll let you know a little secret... He likes plushies. Says they're cuddly. It's kind of funny...' You thank him for what he shared, especially the last part, which is quite interesting, to say the least.";

to say ToronTalkXaedihr:
	say "     Now that Xaedihr is known around the club, you figure you could ask Toron if he knows him, too. 'Xaedihr... Yes, I know him well. Too well. I'm not sure if he's told you that, but he is the heir of the Demon Lord in our world. His only son, who saw his father falling into a deeper greed for power, and actually becoming powerful enough to defy Hell itself. Poor kid has seen things... He's not even fully demon, his mother was a human who died giving him birth, as his father is quite an unimaginably strong entity. Never shed a tear for his lover, he was more interested in training Xaedihr to become his successor, and even fused him with an aspect of darkness, leaving him with permanent marks. The tattoo on his shoulder and arm... That's it. And this aspect can be summoned at will, as he has mastered it. Otherwise, the aspect would have taken control of his mind, and possibly to become the Lord's underling. Quite sad if that were to happen.'";
	say "     Seems like Toron knows a lot more about Xaedihr than even the half-demon himself. 'You saw how he brought down two of Mogdraz's best hellfire demons so easily? You've got a powerful companion on your side... and with a very delicate heart. His tough shell is merely for self-protection. Gain his trust, and you'll have a friend for life, but hurt him, and you'll... be having a bad time.' You thank Toron for sharing this information with you, to which he nods. 'Just keep it discrete.'";

to say ToronTalkAE:
	say "     Given the extremely poor condition of the sword you pulled back in the Void Realm, you ask Toron if he knows what it is and if he can do something about it. When you show the broken hilt to him, his eyes widen. 'You... You didn't do that, did you?!' he asks, and all you can say in response is... not denying the obvious. 'I really hope the seal is not that broken, then. If what you released from pulling that sword got out, it would be the end of the world... probably of all existence... I don't want to think about that. I believe it is imperative that we restore this sword and slay that creature at once! Do you have null essences?' You suppose you've seen some already, but you have to ask how many he would need.";
	say "     'I would need around... [bold type]25 Null Essences[roman type] to restore this. Yes, that should be enough.'";
	if carried of null essence > 24:
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes, you have what you need.";
		say "     ([link]N[as]n[end link]) - You are not ready to do this, yet.";
		if player consents:
			Linebreak;
			say "     Having enough of the stuff with you, it is time to restore this useless weapon into its glorious former shape. 'Very well, this shouldn't take long. Would you wait here?' he asks, as he takes the abyssal remnant and the pack of null essences with him to the back room.";
			ItemLoss abyssal remnant by 1;
			WaitLineBreak;
			say "     You hear a lot of noise. Hammering, strange flashes, ominous whispers that you think it's just your imagination but never cease to be there, nonetheless, and time goes by... You glance around the lounge, play with your fingers, with a glass that's nearby, all while you anxiously wait for the results...";
			WaitLineBreak;
			say "     But soon enough, Toron returns, with a weapon in hand. A pretty normal sized sword, black in color and a very sharp blade, which also looks light enough to be handled well by anyone that doesn't have a lot of training with swords. 'What a formidable weapon... This will surely keep you safe in the Void. Well, everywhere, actually! It is a really, really good sword...' Toron compliments the now restored Abyssal Edge, as he handles it to you. 'Use it responsibly.'";
			say "     You are now in possession of the legendary [bold type]Abyssal Edge[roman type].";
			ItemGain abyssal edge by 1 silently;
		else:
			Linebreak;
			say "     You tell Toron that you would like to postpone this, and he doesn't question you. 'Do what you think it is best.' he says, before returning to his duties.";
	else:
		WaitLineBreak;
		say "     A whole twenty five?! You don't have that many... 'Well, if you don't have them, I suppose I can't help you. We will be helpless against that beast, since you need the sword to actually have a chance at destroying him. Whatever you do, don't ever feed him any essences. Don't make him stronger... The world would fall, and that would be on you.' With that said, he returns to his duties.";
		say "     Was he referring to the Dark Tyrant being some sort of doombringer? If that's so, it would be a good idea to fix this as soon as possible, right?";

HellfireDrinkTimer is a number that varies. HellfireDrinkTimer is usually 0. [@Tag:NotSaved]
HellfireOrcBrewTimer is a number that varies. HellfireOrcBrewTimer is usually 20000. [@Tag:NotSaved]
HellfireBlackAleTimer is a number that varies. HellfireBlackAleTimer is usually 20000. [@Tag:NotSaved]
HellfireSparklingWaterTimer is a number that varies. HellfireSparklingWaterTimer is usually 20000. [@Tag:NotSaved]

to say HellfireClubDrinksMenu:
	say "     [bold type]Toron hands you a list with the drinks he has on stock[roman type]. 'This is what I have right now.'";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Order a Hellfire Swizzle";
	now sortorder entry is 1;
	now description entry is "A drink that increases your might (+1 strength)";
	[]
	if "Created Orcish Bomber" is listed in traits of Toron:
		choose a blank row in table of fucking options;
		now title entry is "Order an Orcish Bomber";
		now sortorder entry is 1;
		now description entry is "A drink that substantially increases your might, at the cost of accuracy (+2 strength, -1 dexterity)";
	[]
	if "Created Heaven's Kiss" is listed in traits of Toron:
		choose a blank row in table of fucking options;
		now title entry is "Order a Heaven's Kiss";
		now sortorder entry is 1;
		now description entry is "A drink that substantially increases your charisma (+2 charisma)";
	[]
	if "Created Black Ale" is listed in traits of Toron:
		choose a blank row in table of fucking options;
		now title entry is "Order a Black Ale";
		now sortorder entry is 1;
		now description entry is "A drink that increases your physical stats at the cost of the mental ones (+1 strength, +1 dexterity, +1 stamina, -1 intelligence, -1 charisma, -1 perception)";
	[]
	if "Created Sparkling Water" is listed in traits of Toron:
		choose a blank row in table of fucking options;
		now title entry is "Order a Sparkling Water";
		now sortorder entry is 1;
		now description entry is "A drink that is really good at quenching your thirst. It also eliminates any other drink effects.";
	[]
	if orc brew is owned and "Created Orcish Bomber" is not listed in traits of Toron and HellfireOrcBrewTimer is 20000:
		choose a blank row in table of fucking options;
		now title entry is "Show him the orc brew";
		now sortorder entry is 2;
		now description entry is "He might be interested in the orc brew";
	[]
	if sharp black tusk is owned and "Created Black Ale" is not listed in traits of Toron and HellfireBlackAleTimer is 20000:
		choose a blank row in table of fucking options;
		now title entry is "Show him the sharp black tusk";
		now sortorder entry is 2;
		now description entry is "He might be interested in the sharp black tusk";
	[]
	if null essence is owned and "Created Sparkling Water" is not listed in traits of Toron and HellfireSparklingWaterTimer is 20000:
		choose a blank row in table of fucking options;
		now title entry is "Show him the null essence";
		now sortorder entry is 2;
		now description entry is "He might be interested in the null essence";
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
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Order a Hellfire Swizzle"):
					say "[DrinkHellfireSwizzle]";
				if (nam is "Order an Orcish Bomber"):
					say "[DrinkOrcishBomber]";
				if (nam is "Order a Heaven's Kiss"):
					say "[DrinkHeavensKiss]";
				if (nam is "Order a Black Ale"):
					say "[DrinkBlackAle]";
				if (nam is "Order a Sparkling Water"):
					say "[DrinkSparklingWater]";
				if (nam is "Show him the orc brew"):
					say "[GiveToronOrcBrew]";
				if (nam is "Show him the sharp black tusk"):
					say "[GiveToronSharpBlackTusk]";
				if (nam is "Show him the null essence"):
					say "[GiveToronNullEssence]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You excuse yourself as the bartender continues his tasks.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say DrinkHellfireSwizzle:
	say "     You make a request for a Hellfire Swizzle, a spicy drink served at ambient temperature, with ingredients containing something that probably comes from hellfire demons, though it's perfectly safe... allegedly. 'Right on.' says Toron, as he prepares the mix. Adding all the components of the drink into a mixer, he shakes its contents until it attains a pretty crimson red color, then pours it onto a flat, tall and narrow glass, decorated with a grapefruit and a cherry on top. 'Here you go' he says, sliding the glass towards you. The drink smells strong, kind of tingling your nose. Well, time to have a taste.";
	say "     The sensation is fiery, as expected, with a hint of sweetness to it, and a sensation similar to a hot variant of peppermint, making your mouth much hotter than before. Still, it's easily drinkable, and absolutely tasty, so you finish it off in a fairly short time. After you've had the whole thing, you feel invigorated with newfound strength.";
	FeatGain "Hellfire Swizzle";
	say "     Your [bold type]Strength has increased by 1[roman type] for the next [bold type]24 hours.[roman type][line break]";
	statchange "Strength" by 1 silently;
	now HellfireDrinkTimer is 8;
	decrease thirst of player by 7;

to say DrinkOrcishBomber:
	say "     You make a request for an Orcish Bomber, a powerful drink served at ambient temperature, made as an improved orc brew using components from orc cum, though it's perfectly safe... allegedly. 'Right on.' says Toron, as he prepares the mix. Adding all the elements of the drink into a mixer, he shakes its contents until it attains a very transparent white color, then pours it onto a flat, very short and narrow glass, served simply like a shot. 'Here you go. This one's strong.' he says, sliding the glass towards you. The drink smells faintly of orc, though nothing unbearable at all, being quite pleasing and soft to the nose... until you take a deeper whiff, and you nearly feel lightheaded. Well, time to have a taste.";
	say "     The flavor is very intense, a mix between sweet and salty, its texture slightly thick, just like a liquor. You drink it all it one go, and feel it burning down your throat, a sensation only increasing with time, before it starts subsiding. It leaves a bitter aftertaste on the back of your mouth. This is one very strange drink, but you can already feel its effects pumping your muscles a bit, as your movements get slightly harder.";
	FeatGain "Orcish Bomber";
	say "     Your [bold type]Strength has increased by 2, while your Dexterity has decreased by 1,[roman type] for the next 24 hours.";
	statchange "Strength" by 2 silently;
	statchange "Dexterity" by -1 silently;
	now HellfireDrinkTimer is 8;
	decrease thirst of player by 3;

to say DrinkHeavensKiss:
	say "     You make a request for a Heaven's Kiss, a suave drink served cold, made with fresh flavored ingredients such as mint, citrines and a hint of something sweet that is considered a [']secret ingredient[']... 'Right on.' says Toron, as he prepares the mix. Adding all the elements of the drink into a mixer, he shakes its contents until it attains a color between cyan and green, very opaque and bright, served in an elegant wide standing glass. 'Here you go. Hope you enjoy this one.' he says, sliding the glass towards you. The drink smells sweet and light, so good that you could just stay here and feel its scent for a good while, so pleasant and soft to your nostrils. Well, time to have a taste.";
	say "     The flavor is exactly what you expect, [italic type]heavenly[roman type]! It's not too sweet, nor too acid, there's just the right balance within those spectrums, and it gives you such a good time that you insist on slowly sipping through the drink. The aftertaste is fresh, and leaves you with an exceptionally good breath. You feel like you could charm anyone during a conversation.";
	FeatGain "Heaven's Kiss";
	say "     Your [bold type]Charisma has increased by 2[roman type] for the next 24 hours.";
	statchange "Charisma" by 2 silently;
	now HellfireDrinkTimer is 8;
	decrease thirst of player by 9;

to say DrinkBlackAle:
	say "     You make a request for a Black Ale, a strong drink served at ambient temperature, made with the remains of a Void Serpent's tusk and venom, safely distilled to provide a safe drink. 'Right on.' says Toron, as he prepares the mix. Adding all the elements of the drink into a mixer, he shakes its contents until it attains a very pitch black color, very opaque, served in a wide and short glass. 'Here you go. It shouldn't make you feel sick, but in any case... Let me know if it does. It's a tricky one to make.' he says, sliding the glass towards you. The drink smells awfully, you're not going to lie about that... the scent burns through your nostrils and it makes you shed a tear. Maybe the taste isn't so bad?";
	say "     When you take a sip, you realize it doesn't taste as bad as it smells. It is very bitter, almost like coffee, but leaves a tiny bit of a tingling sensation and a taste of alcohol. Up to you to decide if this is to your liking, but it surely does make your body feel stronger... Your mind, however, feels a little woozy after you are finished with the drink.";
	FeatGain "Black Ale";
	say "     Your [bold type]Strength, Dexterity and Stamina has increased by 1, while your Intelligence, Perception and Charisma has decreased by 1[roman type] for the next 24 hours.";
	statchange "Strength" by 1 silently;
	statchange "Dexterity" by 1 silently;
	statchange "Stamina" by 1 silently;
	statchange "Intelligence" by -1 silently;
	statchange "Perception" by -1 silently;
	statchange "Charisma" by -1 silently;
	now HellfireDrinkTimer is 8;
	decrease thirst of player by 3;

to say DrinkSparklingWater:
	say "     You make a request for a Sparkling Water, a very plain drink that consists of water with sparkles. Tasteless, but refreshing and at room temperature, it quenches your thirst and cleanses your body. 'Right on' say Toron, as he prepares the mix. Adding the water to the glass and a single piece of null essence into it, he then shakes the drink just enough so that the bubbles cover the entire liquid, then adds a drop of some essence he has available. 'This is something I developed to counter the sickening effect of the null essences. Hope you enjoy this one.' he says, sliding the glass towards you. The drink has no smell either, and it stings your nose if you breathe it in too close, just like sparkling water. Well, time to drink it.";
	say "     It is indeed tasteless, apart from the stinging in your tongue, but it is very refreshing.";
	if "Hellfire Swizzle" is listed in feats of Player:
		FeatLoss "Hellfire Swizzle";
	if "Orcish Bomber" is listed in feats of Player:
		FeatLoss "Orcish Bomber";
	if "Heaven's Kiss" is listed in feats of player:
		FeatLoss "Heaven's Kiss";
	if "Black Ale" is listed in feats of player:
		FeatLoss "Black Ale";
	now HellfireDrinkTimer is 0;
	decrease thirst of player by 15;
	say "     Any effects from other drinks at the club have been removed.";

an everyturn rule:
	if "Hellfire Swizzle" is listed in feats of Player:
		if HellfireDrinkTimer <= 0:
			FeatLoss "Hellfire Swizzle";
			say "     It has been at least a full day since you've had that drink at the Hellfire Club, and the effect has been flushed out of the system by now. As a result, you've lost the boost from the drink, but are able to have another one.";
			statchange "Strength" by -1 silently;
		else:
			decrease HellfireDrinkTimer by 1;
	if "Orcish Bomber" is listed in feats of Player:
		if HellfireDrinkTimer <= 0:
			FeatLoss "Orcish Bomber";
			say "     It has been at least a full day since you've had that drink at the Hellfire Club, and the effect has been flushed out of the system by now. As a result, you've lost the boost from the drink, but are able to have another one.";
			statchange "Strength" by -2 silently;
			statchange "Dexterity" by 1 silently;
		else:
			decrease HellfireDrinkTimer by 1;
	if "Heaven's Kiss" is listed in feats of player:
		if HellfireDrinkTimer <= 0:
			FeatLoss "Heaven's Kiss";
			say "     It has been at least a full day since you've had that drink at the Hellfire Club, and the effect has been flushed out of the system by now. As a result, you've lost the boost from the drink, but are able to have another one.";
			statchange "Charisma" by -2 silently;
		else:
			decrease HellfireDrinkTimer by 1;
	if "Black Ale" is listed in feats of player:
		if HellfireDrinkTimer <= 0:
			FeatLoss "Black Ale";
			say "     It has been at least a full day since you've had that drink at the Hellfire Club, and the effect has been flushed out of the system by now. As a result, you've lost the boost from the drink, but are able to have another one.";
			statchange "Strength" by -1 silently;
			statchange "Dexterity" by -1 silently;
			statchange "Stamina" by -1 silently;
			statchange "Intelligence" by 1 silently;
			statchange "Perception" by 1 silently;
			statchange "Charisma" by 1 silently;
		else:
			decrease HellfireDrinkTimer by 1;
	if "Created Orcish Bomber" is not listed in traits of Toron:
		if HellfireOrcBrewTimer - turns < 4:
			add "Created Orcish Bomber" to traits of Toron;
	if "Created Black Ale" is not listed in traits of Toron:
		if HellfireBlackAleTimer - turns < 4:
			add "Created Black Ale" to traits of Toron;
	if "Created Sparkling Water" is not listed in traits of Toron:
		if HellfireSparklingWaterTimer - turns < 4:
			add "Created Sparkling Water" to traits of Toron;

to say GiveToronOrcBrew:
	say "     Since you're carrying a special drink that you've got from the orcs, you suppose Toron would be interested in its special characteristics, so you show him the stuff. 'You've got an orc brew? Splendid! I've been wanting to get one, but I just hadn't had any luck! Let me see.' he says, extending his hand towards you. Plucking the bottle out of your inventory, you give it to the bartender, who starts examining it immediately. 'The color, and texture...' he comments, as he opens the bottle to take a whiff. 'Even the smell... Do they... Do they put their cum in here? That's why it's such a wonder, huh... Orc cum is pretty much addictive, people drink this stuff and get hooked up. Sorry for the question but... Do you happen to have some raw [bold type]orc cum[roman type] with you?";
	WaitLineBreak;
	if orc cum is owned:
		say "     Knowing that you have at least one bottle of Orc Cum in your inventory...";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Hand him some.";
		say "     ([link]N[as]n[end link]) - Better not, for now.";
		if player consents:
			Linebreak;
			say "     Might as well give this a try. You take the bottle of Orc Cum out and hand it to Toron, who gladly accepts your offer. 'Good! I needed this. Very well, I'll be able to create something new with this. If it's a success, I'll just... send someone to harvest the ingredients. Oh, don't look at me like that, I bet they would enjoy having some eager demons milking them for their cum... since this land is as strange as it is. Anyway, I'll bring these in, though I'll need some time until I can get something done. Come back later, perhaps I'll have news.' Taking both ingredients you have just provided him with, Toron takes them inside, returning to his duties shortly after.";
			ItemLoss orc cum by 1;
			ItemLoss orc brew by 1;
			now HellfireOrcBrewTimer is turns;
			wait for any key;
			say "[HellfireClubDrinksMenu]";
		else:
			Linebreak;
			say "     You shake your head, telling him that you don't have one available at the moment. 'Ah, I see... Then have the brew back, I can't do anything with it without this specific ingredient. Though feel free to come back to me with it whenever you get some orc cum. I might just be able to improve this brew...'";
			wait for any key;
			say "[HellfireClubDrinksMenu]";
	else:
		say "     You shake your head, telling him that you don't have one available at the moment. 'Ah, I see... Then have the brew back, I can't do anything with it without this specific ingredient. Though feel free to come back to me with it whenever you get some orc cum. I might just be able to improve this brew...'";
		wait for any key;
		say "[HellfireClubDrinksMenu]";

to say GiveToronSharpBlackTusk:
	say "     Given the strange nature of this item, you decide to handle it to Toron in hopes he could have some idea of what to do with it. 'A tusk?! Of a... Void Serpent? Let me see if it still carries some of its venom.' he says, before taking it from your hands. Before you could say anything, he grabs a really sharp knife, and begins to cut through the tusk from the base to the tip. The material is so tough that he has trouble making the blade pierce, but once it does, a very dark liquid begins to leak out of the tusk. 'Interesting... I wonder if I can make a drink using this... I would have to filter all of its strange effects, but it surely does look promising. Come back later, and I will add it to the menu.' he tells you, thanking you for the offering.";
	say "     This also means that your hard earned tusk got lost forever... But at least you will have a new drink! And hopefully a good one...";
	ItemLoss sharp black tusk by 1;
	now HellfireBlackAleTimer is turns;
	wait for any key;
	say "[HellfireClubDrinksMenu]";

to say GiveToronNullEssence:
	say "     Given the strange nature of this item, you decide to handle it to Toron in hopes he could have some idea of what to do with it. 'Now now, what is this? A null essence from the Void Realm? Interesting how you manage to get your hands on one of these... They are not rare per se, but they seem to have a knack for being attracted to biological humans. Yes, even if they are transformed beyond recognition due to the nanites thing, this is something otherworldly we are talking about. Anyway... If I can turn this into a powder...' he speaks, as he takes a mortar and pestle, puts the null essence in, and tries to smash it. 'Hm, no good... It's too tough. I only manage to barely scratch it, like this... Have you tried to eat them?' he asks, looking at you.";
	say "     There really is no need to think about this, you would rather not put one of those things in your mouth. It really looks like a plain black rock, so why would you even eat it? 'Then I will have to simulate that, hold on just a second...' he tells you, as he goes grab some sort of completely transparent liquid. 'It's just water, in case you are wondering.' No one never can be too sure if a colorless liquid is actually just water around here, so he cannot really judge you for being too careful. With that said, he pours the water into the recipient, and the null essence begins to dissolve. Looks like he managed to turn this into sparkling water...? 'Interesting. I wonder what properties this holds. I will make sure this is safe to drink, then you can come and try it for yourself, alright? Thanks again for the idea. I will handle the supplying myself.' he says, as he takes the drink and all the materials to the back room.";
	say "     Null essences make Sparkling Water when mixed with water... now that's something...";
	ItemLoss null essence by 1;
	now HellfireSparklingWaterTimer is turns;
	wait for any key;
	say "[HellfireClubDrinksMenu]";

[***********************************************************]
Section 3 - Toron Sex Menu
[***********************************************************]

Instead of fucking Toron:
	if Libido of Toron is 0:
		say "     Maybe you should talk to him about sex before you jump right into it...";
	else if Libido of Toron > 0:
		if player is submissive:
			say "     As submissive as you are, you doubt Toron would take any interest in you, or that you would be interested in having sex with him. You have a preference for submitting to others, and so does he.";
		else if lastfuck of Toron - turns < 6:
			say "     As much as you want to get in some more fun with Toron, you have to give him a break to recover. Even crazy shapeshifting demons don't have that much stamina.";
		else:
			if daytimer is night:
				say "     You wish to get into some fun with Toron during his night shift, and as soon as you suggest that to the bartender, you can see him blush a little. 'You know I'm working, right...?' He throws a chuckle, but you have a few ideas that won't bother his duties... much.";
			else:
				say "     You wish to get into some fun with Toron during the day, when he has some free time. With that in mind, you're about to make a move with a few ideas in mind while he's distracted with polishing the glasses...";
			now sextablerun is 0;
			blank out the whole of table of fucking options;
			[]
			if daytimer is night:
				choose a blank row in table of fucking options;
				now title entry is "Rim and finger his ass";
				now sortorder entry is 1;
				now description entry is "Get on the other side of the counter and play with his butt";
			[]
			if daytimer is day:
				if player is male:
					choose a blank row in table of fucking options;
					now title entry is "Fuck his ass";
					now sortorder entry is 1;
					now description entry is "Grab his ass and give him some hard pounding right here";
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
					if Player consents:
						let nam be title entry;
						now sextablerun is 1;
						if (nam is "Rim and finger his ass"):
							say "[ToronNightAssPlay]";
						if (nam is "Fuck his ass"):
							say "[ToronDayAssFuck]";
						wait for any key;
				else if calcnumber is 0:
					now sextablerun is 1;
					say "     You politely excuse yourself as Toron continues on with his duties.";
					wait for any key;
				else:
					say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
			clear the screen and hyperlink list;

to say ToronNightAssPlay:
	say "     You lean towards Toron in order to whisper into his ear, letting him know what you're going to do to him once you discretely go around the counter and get on his side. Telling him to be a good bartender and continue his duties as if nothing was happening also helps him not being able to come up with an answer, and instead, he remains still as you approach him. You duck behind the counter so nobody can see you quietly approaching the bartender, who is actually not wearing anything from his waist down, something that is impossible to realize on the client's side. That must be so that, occasionally, a slimey, octopus-like tentacle can take form from around the beginning of his legs to grab a distant bottle or some other ingredient, though he maintains a pair of completely normal humanoid legs to sustain his weight, and with that, a magnificent bubblebutt waiting to get grabbed by you.";
	say "     He doesn't stop you, so you position yourself around his legs, sliding your hands over his thighs from the backside, then around his glutes. His purple skin is really soft, and you hear him moan slightly as you feel it, with a little of arousing discomfort, as he struggles to keep his mind on serving drinks. You don't want to rush anything here, so first, you begin to feel up his ass cheeks, teasing his hand-filling ballsack in the process, causing him to get his about nine inch cock to grow into full erection. The bartender archs his back a little, letting you take a better look at his blue-ish pucker. It's shaped like a plump donut hole, twitching along with your touch, giving you the feeling it can take a dick of any size and shape, perfectly fuckable for hours in a row without getting irreversibly stretched.";
	WaitLineBreak;
	say "     As you are getting acquainted with his marvelous butt, each plump glute clenching and bouncing with your caressing, you slide in a single finger right between his cheeks to feel that inviting hole, moist and squishy to the touch. He takes a deep breath, moaning 'Fuck...' as he turns his head downwards to have a brief look at you, then back smiling to possibly an approaching client - you can't really see what is going on from your angle - while you have your own fun. It feels amazing just rubbing his anus, it's incredibly warm and welcoming, and a plethora of ideas just pop up in your mind... Only if you could do anything you wanted to his ass right here, right now... Though perhaps you can give it a good lick.";
	say "     Spreading his asscheeks at last, you lean in to bury your face between his bubbly glutes, your lips touching his pucker as you give it a kiss, before sliding your tongue just around the entrance before you try to press it in a little bit, humming as you feel its incredible taste. 'A[one of] Hellfire Sw-ah... S-swizzle [or] Black Ch-aah...Cherry D-Drink [or]Tequila Sh-ooh... S-shot [or]-aah... S-simple B-beer [or] most refined w-... oh fuck... I-I mean, Red Wine C-[or]Black Lemon Lime V-ooh... Vodka [at random] coming out...!' he says to the client amidst a moan you've caused, and lucky him that his tentacles are able to do the work, though even those are shaking with the pleasure you're providing him. With your wiggling tongue, you lick his hole thorough before you make a bigger effort into pressing further inside, only to find out it just happens to welcome you so easily, yet so tightly, that you can caress all of his fleshy insides with ease. It almost feels like his ass is pulling your tongue, as hungry as he is, and it's not so long until Toron is moving his ass back and forth so he can feel you tonguefucking him deeper.";
	WaitLineBreak;
	say "     Putting your hands on each of his glutes, you twist and roll your tongue to the sides, while pushing it in and out as you go. Toron can barely hold his urge to moan, and you're sometimes able to hear a really low one, when nobody's nearby. Though enough is enough, you think, and pulling your tongue out of his hole, leaving it with a kiss, you figure it's time to use your hands, now that his anus has been prepared. Slowly, you press your index finger against his pucker, watching it being buried inside progressively as you keep pushing, causing the shapeshifting demon to let out a silent moan, the only audible part being a huff of desperate breathing, unable to hold his excitement. You're giving him hell during work, torturing him with pleasure, as he so much likes to feel his warm asshole filled up.";
	say "     Now having your finger fully inside, you add another as soon as you can, opening his blinking orifice even more, and yet it holds your fingers tightly. His moisty insides, however, provide you with some slipperiness that makes it easy for you to push them in and out, then you think that perhaps adding another to the two that are already inside would be what he needs. You're getting him really horny as you do this, and without being able to hold back any longer, he just blatantly grabs his dick and starts jerking off to the sensations that you're giving him, his asshole clenching around your fingers rather hard. Feeling him pushing his ass backwards, you shove in your fourth finger, leaving only your thumb out. He takes everything really eagerly, as deep as until your palm...";
	WaitLineBreak;
	say "     He humps his ass against your hand harder and harder, and you begin to feel that maybe your quartet of fingers isn't enough to satisfy his mega hungry butt, so without thinking too much about it, you begin to curl your thumb... then rub its tip across his stretched pucker... and slowly, it slips inside, as your entire hand follows. And he is effortlessly taking it all in, his ass welcoming your fist until past your carpal bones, reaching as far as your wrist... this guy can take it all! Now you're effectively fisting him as he jerks off, moaning intensely - though as low as he can, poor thing - while you bump into his prostate harder and harder. His ass nearly strangles your hand at some point, and as you feel his insides clenching around it, he says by almost whispering 'I'm gonna cum, fuuuck...!'";
	say "     You're able to feel his lower body work to shoot his load, and looking forward, you see him painting the lower side of the counter white with each powerful spurt of cum that goes increasingly harder, each shot resulting in a single ass clenching, which actually feels amazing around your fist and wrist, for a good while. You make sure you wiggle your hand as much as you can while inside him until his orgasm finally starts to subside, then you pull it out, observing his asshole retracting back to its original size, slowly closing in before your eyes. 'Oh, sweet fuck... Damn! I... hope you're around during the day...' he says, catching his breath and regaining his composure after such an intense climax. Curiously, your hand has no smell, even while being soaked in slimey juice, but it tastes really good.";
	WaitLineBreak;
	say "     With discretion, you leave by the side of the counter and back into the lounge area. You are under the impression that Mogdraz saw you sneak out of there, but even if he did, he doesn't seem to disapprove of that.";
	now lastfuck of Toron is turns;

to say ToronDayAssFuck:
	say "     Upon having decided what to do with Toron during his freetime, you simply head past the counter and grab him from behind, almost making him drop the glass. 'Whoa, careful...! Mogdraz will have my head if I break his things...' he says, although he doesn't stop you from putting your hands around his naked hips and brushing your growing [if player is not naked]bulge[else]exposed shaft[end if] against his ass cheeks. The bartender responds to your advances by placing down the glass and arching his back, so you can feel him pressing his rear against you, glancing at you over his shoulder while biting his underlip. 'You're gonna bend me over the counter and claim this ass right here? Give the boss a show?' he asks you, and it's hard to resist doing such right now. In fact, you feel the urge to do it as soon as he gives you that idea...";
	say "     Taking hold of him, you turn him around and push him against the bar counter, pushing his back forward and forcing him to bend over in front of you, his purple, gorgeous bubble butt pointing in your direction. He lets out a moan at the loud ass slap you give him as you get your hands on his glutes, feeling all the plumpness of his bubble cheeks under your palms before you start to spread them. Reaching closer, you [if player is not naked]whip out your [cock of player] dick[else]grab your [cock of player] dick[end if] and bring it over the space between his glutes, rubbing it across his perinium and over his donut hole. It's already feeling amazing against your shaft, and you can't wait to shove your cock inside him when you feel that moist hole winking hungrily at the sight of your manhood. Slowly, you being to press the tip against his orifice, only slightly as his entrance embraces your length as you thrust, burying it inside inch by inch as the slick walls of his insides pulse with desire.";
	WaitLineBreak;
	say "     'Fuck... You feel so good in me...' he lets you know, moaning as you invade his ass, pushing more and more of your meat inside. You can't help but wonder if it's really okay to enjoy fucking the bartender with his boss eyeing you both from his corner, though his gaze is of interest, rather than contempt. 'Get it all in me... Please...' he begs you, and you're happy to oblige, pushing in every inch until the last. No matter how large your dick is, he takes it all, and the sensation is truly amazing. You really feel like he could take anything, all while making it feel so good and tight around your shaft. With just a little more pushing, your pelvis finally rests against his glutes, with only your balls remaining outside, and it almost feels like his ass is blowing your dick by how much it's clenching softly around your length. Grabbing Toron's wrists, you pull them and hold them against his lower back with one hand, while leaning yourself over on top of him, resting the other above the back of his head.";
	say "     The demon lets out a moan, as he begs you 'Ahh... Yes...! Please fuck me... Really hard...' The burst of sexual adrenaline fills you, and with one first long and hard pounding, you begin to fuck Toron with eagerness, following up with more deep thrusts where you can feel your entire length rubbing across his warm flesh tunnel. Building up the rhythm, you use your arms over him to support your weight as he gets pinned down with no other choice other than taking your cock as hard as you decide to fuck him, and you don't go easy on him. With all the action going on, you just feel like thrusting harder and deeper, pounding his ass like a battering ram, over and over like you own him.";
	WaitLineBreak;
	say "     Your powerful movements manage to make the wooden counter tremble with each thrust, glasses and bottles threating to fall over as your pounding gets more intense, and the demon can't help himself but to moan and grunt as you go. There's nothing stopping you from keeping on fucking the club's bartender, who's so eager at letting you claim his ass, for as long as your heart desires. Slipping your arm around his neck, you gently bite his ear, which sends Toron in a moaning frenzy, so excited by the way you're completely taking control over him. Things get so intense that, eventually, you feel yourself coming closer to the edge, and you can imagine that your demon bottom is feeling it too. You keep trusting deep, but slower, as you let him know that you're going to fill him up.";
	say "     He gasps, just enough to be able to say some encouraging words, such as 'Please...' and 'Breed me full of your spunk...!' in a breathy tone, as he's completely overtaken by the intensity of your assfucking. Within seconds, in your entire body surges a wave of pleasure and joy as your manhood begins to harden to his maximum, then throb with each hot shot of jizz being deposited inside the demon's ass. You continue to thrust and pound Toron until the very last spurt happens, coating his insides as he, too, delivers his own load on top of the counter, against which his own dick was rubbing all this time. 'Fuuuck... YES! Oh fuck...' he comes up with few words to describe what he's feeling right now, only trying to catch his breath as you slowly soften while still inside his hole.";
	WaitLineBreak;
	say "     When it's time to pull out, only a single drop follows as you remove your shaft from his hole, and it feels like his butt just slurped up everything that you've given him. 'That... that was a good feeding... my ass is pleased, and so am I... W-were we too noisy?' he asks, looking over you, then over to Mogdraz, who's still sitting by his sofa in his usual corner, who looks back at you for a few seconds, with something bulging and rather large between his legs. Then he gives a chuckle and continues on talking to one of his servants. 'Oh... Looks like he really was watching us... Well, me, getting... you know... Fuck, That was hot.' says Toron to you, while he gets set on cleaning the mess that he made all over the counter. 'I'm down to do this again, if you are... When I... uh, have time.'";
	NPCSexAftermath Toron receives "Assfuck" from Player;

Toron ends here.
