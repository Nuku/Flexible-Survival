Version 1 of Equinoid Camp for FS by Stripes begins here.
[Version 1.2 - Player initiated pet sex]
"Adds a camp for the Black Equinoids and a few NPCs to interact with."

Section 1 - Contact

to say equinoidcampinvite:
	say "     As you prepare to leave, the equinoid moans for you to wait.  'Stop, mighty hunter.  Perhaps you are worthy to join us after all.  A few of the others have spoken of the defeats you have given them.  We are a herd of powerful warriors and the herd could use others like you.  I'm sure you would find our companionship most enjoyable,' she adds, running her hands over her body sexily.  Shall you take her up on her offer and meet with her herd?";
	if the player consents:
		now equinoidstatus is 6;
		say "     Deciding this might at least be worth looking into, you help the fallen equinoid to her feet.  You order her to lead the way, telling her that you'll at least go to meet with them.  She smiles and nods, confident in her tribe's greatness to convince you.  She takes you deeper into the park along a path you'd not noticed before.  In time, you reach a barricade of wooden stakes with a stern looking horse herm guarding the gate.";
		say "     'Halt, Amaryllis!  Who is this outsider you bring to the herd?  You were warned, Amaryllis.  No more strays.'  The large equine plants the base of her spear firmly in the ground and glares at the equinoid with you.";
		say "     Amaryllis snarls indignantly.  'This is no stray, Bryony.  This is the warrior who has been defeating our patrols.  [if cunts of player > 0]She[otherwise]He[end if] is interested in joining the herd,' she says, running a hand almost possessively over you while glaring at the larger herm.";
		say "     Bryony just snorts in response and reiterates that only members of the herd may enter the camp.  As the two equinoids start to argue, it draws the attention of others.  When one strides up wearing an ornate headdress made from carved wood and colourful wire, the others grow silent.  This one, clearly someone in authority, looks you over.";
		say "     'So, Amaryllis, you have found another?  Your eagerness to grow the pride is commendable, but is this one truly worthy?  Many of the herd are not happy to see [if cunts of player > 0]her[otherwise]him[end if] here after entering our territory and fighting with your herd sisters.'";
		say "     Glancing around, you do see that the crowd has grown and not all of them are looking at you with the usual sexual interest you've come to expect from the infected, but instead with a sterner look.  Perhaps this wasn't such a good idea, but you can't really back down now either, at least not to their faces.  You decide the best course of action is to be strong, as they seem to respect that.  You tell their leader that you've seen their strength and that you've proven your own to them.  You add that Amaryllis has spoken of the herd and has convinced you that you would be stronger together.";
		say "     Their leader scrutinizes you with a keen eye while you talk.  'Perhaps you might convince us of your good intentions towards the herd.  We are in a dispute with the Painted Wolves.  Confront and defeat them on our behalf and perhaps you might be found worthy.'  There is considerable whispering among the equines and Amaryllis blanches a little.";
		say "     Seeing a way out, you agree to her terms.  You are ordered to defeat at least three of them before you'll be welcome again at their gates.  While you're uncertain how they could know if you were actually successful, there's no need for you to come back if you don't want to either.";
	otherwise:
		now equinoidstatus is 5;
		say "     You shrug and turn away, leaving her behind as she alternatively moans for you to come and threaten you with reprisals for rejecting the herd.  You have little worry though, having beaten several of these [']great warriors['] already.";


Section 2 - Equinoid Camp

Equinoid Camp is a room. It is fasttravel. It is private.
The description of Equinoid Camp is "[equicampdesc]".

the scent of Equinoid Camp is "The equinoid came smells strongly of the horse people living there.".


instead of navigating Equinoid Camp while equinoidstatus is 10:
	[puts Black Equinoid as lead monster in case of impregnation]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "black equinoid":
			now monster is y;
			break;
	say "     Following the path you were shown, you head towards the equinoid camp, but are stopped at the outer barricade.  Bryony is there again and she glares at you angrily and readies her spear.  You stand your ground and tell her that you want to speak with their leader, as you've passed her test.  Others have begun to approach, drawn by the noise.";
	say "     Amaryllis is among them and she runs into your arms, clearly elated at your success, but many of the others still seem skeptical of you.  Before she and Amaryllis have a chance to start arguing again, their leader appears and separates the pair.  She then turns to you.";
	if the player is perminfected:
		say "     Their leader looks for over for a while, but then frowns and motions for several of the warriors.  'This one is tainted and unable to become one of us.  To welcome one in such a state into our midst would lead to our destruction.  The traveller may take this as reward for their help against the wolves, but that is all.'  A basket of fruit is tossed at your feet while the warriors step forward, ushering you to leave after claiming your reward.";
		increase carried of food by 2;
		now equinoidstatus is 100;
		now Equinoid Camp is unknown;
		move player to Park Entrance;
	otherwise if cocks of player is 0 and cunts of player is 0:
		say "     Their leader looks you over, but frowns at your lack of gender.  'You are of no use to the herd in such a state as this.  Return to us when you are ready and we will talk.'";
		move player to Park Entrance;
	otherwise:
		say "     'I see that you have returned.  I was uncertain if you would, even when I'd heard you'd dealt with several of the wolves.  I have spoken with the other leaders and, while several are uncertain of your right to join us,' she says, looking at Bryony, 'they have accepted to welcome you in peace while within our walls if you join our great tribe.  The enemy of our enemy has the right to prove themselves our friend.'";
		say "     Speaking softer to just you now, she adds.  'They are a good people though, and will accept you in time if you accept them.  I expect you will still have trouble with some outside the camp though.  Show them your strength and they will respect you in time.'";
		say "     She raises her voice again, so all assembled may here.  'You will need to undergo the purification ritual to truly become one of us.  To accept to join us is to accept this.  Shall you do so?";
		if the player consents:
			say "     Speaking aloud for the others to hear, you tell her that you are ready to join the tribe and become one of them.  The reaction among the group is mixed, but it seems most are willing to accept this.  Some though, as you were warned, seem displeased but hold their tongues.  Amaryllis, for her part, is elated and grabs your hand, leading you through the gate as Bryony grudgingly opens it.  Amaryllis sticks her tongue out at her while the other black equinoid glares at her.";
			say "     You are followed by several others through the trees and into the camp of the equinoids.  It's a rather primitive community, with wooden huts and barns that make little use of scavenged materials.  They clearly expect you to seem impressed by it, so you do your best to appear that way.  Amaryllis leads you to one of the larger halls and you enter with the others.  There, a scented bath is prepared as well as several of the equinoids.";
			if cocks of player > 0:
				say "     You bathe in the warm waters with Amaryllis, the rich scents filling your head and arousing you.  The equinoids around the bath run their hands over your [bodydesc of player] body, groping you as they wash you while Amaryllis kisses you and runs her hands down between your legs.  As she strokes your cock to erection, several more equinoids enter, strong warriors these.  They stand at the edge of the bath and are stroked by the bath servants, their cocks all pointed at you.";
				say "     But you are given little opportunity to notice that, as Amaryllis is now moving atop your erect shaft and sinking down onto it with a soft nicker of pleasure.  She's straddled your hips facing you and begins riding your [cock of player] cock while running her hands over your chest.  As the first splatters of equinoid cum start spraying onto you both, you're already fucking wildly and soon you're cumming hard with a loud neigh of delight.  You can feel the equinoid seed soaking into you even as you seek to breed the lovely one riding you.";
				say "     Bathed, anointed and having consummated with the equinoids, you rise from the musky waters as one of them.  You feel much closer to this strong people.  Exiting the large hall, you go out into the compound with a greater appreciation for the simple life they live with nature.  While a few of them move away, many great you as one of them now that you've been properly welcomed into the herd.";
			otherwise:
				say "     You bathe in the warm waters with Amaryllis, the rich scents filling your head and arousing you.  The equinoids around the bath run their hands over your [bodydesc of player] body, groping you as they wash you while Amaryllis kisses you and runs her hands down between your legs.  As she fingers your pussy, you can see her equine cock at the ready.  At this time, several more equinoids enter, strong warriors these.  They stand at the edge of the bath and are stroked by the bath servants, their cocks all pointed at you.";
				say "     But you are given little opportunity to notice that, as Amaryllis is now pulling you into her lap and atop her erect shaft and sinking it into you with a soft nicker of pleasure.  Straddling her hips, you begin riding her throbbing cock while she runs her hands over your chest.  As the first splatters of equinoid cum start spraying onto you both, you're already fucking wildly and soon you're cumming hard with a loud neigh of delight as your lover pumps her hot seed into you.  You can feel the equinoid seed soaking into you even as you're being bred by the lovely one you're riding.[impregchance]";
				say "     Bathed, anointed and having consummated with the equinoids, you rise from the musky waters as one of them.  You feel much closer to this strong people.  Exiting the large hall, you go out into the compound with a greater appreciation for the simple life they live with nature.  While a few of them move away, many greet you as one of them now that you've been properly welcomed into the herd.";
			decrease humanity of player by 20;
			now tailname of player is "black equinoid";
			now facename of player is "black equinoid";
			now skinname of player is "black equinoid";
			now bodyname of player is "black equinoid";
			now cockname of player is "black equinoid";
			attributeinfect;
			now tail of player is tail entry;
			now face of player is face entry;
			now skin of player is skin entry;
			now body of player is body entry;
			now cock of player is cock entry;
			attempttowait;
			if libido of player < 30, now libido of player is 30;
			if humanity of player < 10:
				say "     Overwhelmed by your transition, thoughts of your old life fade away.  You choose to accept living in the peaceful village with the equinoids.  In time, the you and the others seem to forget that you were ever unwelcome and you live a simple life with the strong and beautiful equinoids.";
				wait for any key;
				now equinoidstatus is 11;
				end the story saying "You join the equinoid herd as another of their people.";
				now battleground is "void";
				wait for any key;
				follow the turnpass rule;
				stop the action;
			otherwise:
				now equinoidstatus is 12;
				say "     You are brought in front of the tribal leaders, with the one you've met before sitting with a youthful looking equinoid beside her.  'Newcomer, we welcome you into the tribe and the herd.  You are now one with us and welcome among us.  As you have voiced intentions of continuing to travel and explore the fallen city for the time being, it has been decided that this cannot be permitted alone.  Those who have been recently welcomed are still weak and vulnerable to the outside influences of the creatures of the city.";
				say "     'To protect and guide our newest member, we shall send one of our young warriors with you.  Liliana is to accompany you, to protect you and to guide you back to us should you stray from the herd.'  The equinoid rises stiffly and walks to your side[if the player is not lonely], forcing your [companion of player] to step aside for her[end if].  Amaryllis gives her a bit of a jealous glance, but Liliana is either oblivious to it or ignores it entirely.  'We expect you to keep her with you.  This is to be a journey for her as well as protection for you.  We will not be pleased if you do not fulfill your duties in this regard.'  You glance over at your new equinoid companion and nod to the tribal leader before heading into the compound to look around.";
				now equinoid warrior is tamed;
				now the companion of the player is equinoid warrior;
				say "     (The equinoid warrior is now [']tamed['] and has made herself your active pet! Should you dismiss her from your side, you can reactivate her as your pet by typing [bold type]pet equinoid warrior[roman type] and initiate sex with her while active by typing [bold type][link]fuck equinoid warrior[end link][roman type].  You can see all the pets you have tamed with the [bold type][link]pet[as]pet[end link][roman type] command. Pets will lower the xp you gain from battle, but can gain levels themselves to be more useful in a scrap. You may still remove her as your active pet using [bold type][link]pet dismiss[as]pet dismiss[end link][roman type], or just [bold type][link]dismiss[as]dismiss[end link][roman type], though the herd may not be pleased about that.)[line break]";
				increase score by 25;
				wait for any key;
				move player to Equinoid Camp;
		otherwise:
			say "     Reaction to your rejection of the offer is mixed.  Amaryllis is clearly disappointed, but Bryony smiles smugly.  Many of the tribe seem offended while others are more ambivalent to this.  Their leader nods and motions for one of the herd to approach with a basket.  'We accept your decision.  We are an honourable people and will provide you this in thanks for your help with the wolves instead,' she says, passing you the small basket of fruit.  She drops her voice while talking to you.  'Do not expect that all of the tribe will be pleased with this slight.  It would be wise to expect some of the warriors to come seeking to more forcibly add you to the herd as another of their mares instead.'";
			say "     She turns back to those gathered.  'The traveller has assisted us against the wolves and so may leave here in peace.'  And with that, and a little grumbling from some, the equinoids disperse, Amaryllis walking sadly away while Bryony watches you go.";
			increase carried of food by 2;
			now equinoidstatus is 100;
			now Equinoid Camp is unknown;
			move player to Park Entrance;


to say equicampdesc:
	if equinoidstatus < 12:
		say "ERROR-EQ-[equinoidstatus]: This location should be closed.";
	otherwise:
		say "(***Equinoid camp to be added later.)[line break]";


Section 2 - Equinoid Warrior Pet

equinoid warrior is a pet.  equinoid warrior is a part of the player.
The description of equinoid warrior is "[lilianadesc]".
The weapon damage of equinoid warrior is 7.
The level of equinoid warrior is 3.
The Dexterity of equinoid warrior is 12.
The summondesc of equinoid warrior is "Liliana strides up to your side with a determined look on her equine face.".
The assault of equinoid warrior is "[lilianaattack]".
the fuckscene of equinoid warrior is "[sexwithliliana]".

understand "Liliana" as equinoid warrior.

to say lilianaattack:
	say "[one of]The equinoid warrior slams your opponent with one of her great hoof hands.[or]Liliana throws out a fast, sharp kick with one of her hooves to your foe's midsection.[or]The equinoid warrior growls and unleashes a flurry of fast blows.[or]Liliana clocks your opponent with the shaft of her spear.[or]Your equinoid companion strikes with her spear.[at random]";

to say lilianadesc:
	say "     This black equinoid may look a little younger than the others, but she's as much a warrior as the rest of her tribe.  Liliana has a tall, imposing figure with strong muscles and a glossy coat of black hair.  She has bright, hazel eyes and a pretty smile with white, flat teeth.  She's dressed in a simple robe that only covers but does not truly hide the shape of her muscled bosom or equine cock.";

the scent of the equinoid warrior is "Liliana smells of the equinoids, reminding you of the herd.".

to say sexwithliliana:
	if lastfuck of equinoid warrior - turns < 4:
		say "You just had some fun with her recently.  Try checking back with her a little later.";
	otherwise if bodyname of player is "black equinoid" and the player is pure:
		say "     During a free moment, Liliana sidles up to you and runs her hoofed hands over your body.  She gives a sexy sigh as she looks over your impressive, equinoid form before kissing you, inflaming your passions further";
		let qq be { 1, 1 };				[oral]
		if cunts of player > 0, add 2 to qq;	[fucked]
		if cocks of player > 0, add 3 to qq;	[fuck her]
		if cunts of player is 0 and ( "More Anal" is listed in feats of player or "MPreg" is listed in feats of player ) and "Submissive" is listed in feats of player, add 4 to qq;	[anal]
		sort qq in random order;
		if entry 1 of qq is 1, say "[eqwarsex1]";
		if entry 1 of qq is 2, say "[eqwarsex2]";
		if entry 1 of qq is 3, say "[eqwarsex3]";
		if entry 1 of qq is 4, say "[eqwarsex4]";
		now libido of equinoid warrior is 0;
		if libido of player < 30, now libido of player is 30;
		infect "black equinoid";
		now lastfuck of equinoid warrior is turns;
	otherwise:
		say "     During a free moment, Liliana sidles up to you and runs her hoofed hands over your [bodytype of player] body.  'We need to get you looking like a proper equinoid again.'  She nickers softly as she takes her cock in hand and starts stroking it, rubbing it against you.  Precum leaves slick trails across your body as she does this";
		if a random chance of 1 in 3 succeeds:
			say ".  You find yourself growing excited and take over stroking her, leaving her free to run her hands over your [bodydesc of player] body[if breast size of player > 0].  She starts by rubbing over your bosom, playing with your breasts and teasing your nipples[end if][if cocks of player > 1].  Her hands drift down to your cocks, taking one in each and stroking them[otherwise if cocks of player is 1].  Her hands drift down to your cock and strokes it[end if][if cocks of player is 1 and cunts of player > 0].  Her free hand moves a little lower and slips a finger into your pussy, causing you to moan in response[otherwise if cunts of player > 0].  She rubs a hand between your legs and over your wet folds before slipping a finger into your pussy, causing you to moan in response[end if].  You continue stroking her as you enjoy this attention from her until she cums, blasting her seed across your body.  As the semen soaks into you, you feel more equinoid.";
		otherwise:
			say ".  You find yourself growing excited and lower yourself so you can take her cock in hand and guide it to your mouth.  She moans softly and runs her hands over your [facename of player] head.  You work the throbbing, dribbling meat with your tongue and mouth until she cums, feeding you her thick load.  As your body absorbs the tasty treat, you feel more equinoid.";
		infect "black equinoid";
		now lastfuck of equinoid warrior is turns;


An everyturn rule:
	if companion of player is equinoid warrior and skipturnblocker is 0:
		if bodyname of player is "black equinoid" and the player is pure:
			increase libido of equinoid warrior by 20;
			if libido of equinoid warrior + libido of player > 200 and lastfuck of equinoid warrior - turns >= 4:
				say "     During a free moment, Liliana sidles up to you and runs her hoofed hands over your body.  She gives a sexy sigh as she looks over your impressive, equinoid form before kissing you, inflaming your passions further";
				let qq be { 1, 1 };				[oral]
				if cunts of player > 0, add 2 to qq;	[fucked]
				if cocks of player > 0, add 3 to qq;	[fuck her]
				if cunts of player is 0 and ( "More Anal" is listed in feats of player or "MPreg" is listed in feats of player ) and "Submissive" is listed in feats of player, add 4 to qq;	[anal]
				sort qq in random order;
				if entry 1 of qq is 1, say "[eqwarsex1]";
				if entry 1 of qq is 2, say "[eqwarsex2]";
				if entry 1 of qq is 3, say "[eqwarsex3]";
				if entry 1 of qq is 4, say "[eqwarsex4]";
				now libido of equinoid warrior is 0;
				if libido of player < 30, now libido of player is 30;
				infect "black equinoid";
				now lastfuck of equinoid warrior is turns;
		otherwise if lastfuck of equinoid warrior - turns >= 4 and a random chance of 1 in 5 succeeds:
			say "     During a free moment, Liliana sidles up to you and runs her hoofed hands over your [bodytype of player] body.  'We need to get you looking like a proper equinoid again.'  She nickers softly as she takes her cock in hand and starts stroking it, rubbing it against you.  Precum leaves slick trails across your body as she does this";
			if a random chance of 1 in 3 succeeds:
				say ".  You find yourself growing excited and take over stroking her, leaving her free to run her hands over your [bodydesc of player] body[if breast size of player > 0].  She starts by rubbing over your bosom, playing with your breasts and teasing your nipples[end if][if cocks of player > 1].  Her hands drift down to your cocks, taking one in each and stroking them[otherwise if cocks of player is 1].  Her hands drift down to your cock and strokes it[end if][if cocks of player is 1 and cunts of player > 0].  Her free hand moves a little lower and slips a finger into your pussy, causing you to moan in response[otherwise if cunts of player > 0].  She rubs a hand between your legs and over your wet folds before slipping a finger into your pussy, causing you to moan in response[end if].  You continue stroking her as you enjoy this attention from her until she cums, blasting her seed across your body.  As the semen soaks into you, you feel more equinoid.";
			otherwise:
				say ".  You find yourself growing excited and lower yourself so you can take her cock in hand and guide it to your mouth.  She moans softly and runs her hands over your [facename of player] head.  You work the throbbing, dribbling meat with your tongue and mouth until she cums, feeding you her thick load.  As your body absorbs the tasty treat, you feel more equinoid.";
			infect "black equinoid";
			now lastfuck of equinoid warrior is turns;

to say eqwarsex1:
	say ".  You lower yourself so you can take her cock in hand and guide it to your mouth.  She moans softly and runs her hands over your equine head, rubbing your ears and nickering softly.  You work the throbbing, dribbling meat with your tongue and mouth, working the throbbing length in your long throat until she cums, feeding you her thick load, which you swallow down eagerly, pleased to have pleasured your tribal companion.";

to say eqwarsex2:
	[puts black equinoid as lead monster in case of impregnation]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "black equinoid":
			now monster is y;
			break;
	say ".  Her hoofed hands slide over your body and soon guides you to lie down.  She moves atop you, sliding her equine shaft into your juicy cunt so she may fuck you.  You kiss and caress one another as she youthful equinoid pounds into you with energetic zeal, cumming hard and sending her hot seed flowing into your womb.  After some snuggling, you both get back up and prepare to continue your journey together.[impregchance]";
	now libido of player is libido of player / 2;

to say eqwarsex3:
	say ".  Her hoofed hands slide over your body and downwards.  As they wrap around your cock, you know what she wants and you have her lie down.  Moving atop her, you slide your equine shaft into her lovely body and fuck her.  You kiss and nip at the youthful equinoid as you thrust into her, cumming hard as she cries out in release.  After some snuggling, you both get back up and prepare to continue your journey together.";
	now libido of player is libido of player / 2;

to say eqwarsex4:
	[puts black equinoid as lead monster in case of impregnation]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "black equinoid":
			now monster is y;
			break;
	say ".  Her hoofed hands slide over your body and grab your rear, giving it a firm squeeze.  Knowing what she needs of you, you move onto all fours and raise your tail.  She presses her cock to your tight pucker and pushes it into you with a soft nicker.  The youthful equinoid pounds into you with energetic zeal, cumming hard and sending her hot seed flowing into your bowels[if cocks of player > 0].  You cannot help but cum in response, spraying your submissive seed onto the ground[end if].  After some snuggling, you both get back up and prepare to continue your journey together.[mimpregchance]";
	now libido of player is libido of player / 2;


Definition: a person is blequinoidbodied:
	if the bodyname of the player is "black equinoid", yes;
	no;



Equinoid Camp for FS ends here.
