Version 3 of Icarus by Stripes begins here.
[Version 3.4 - Sex menu post-attic and more attic scenes]

"Adds Icarus the Blue Chaffinch as an NPC to the Flexible Survival game."

Section 1 - Icarus the Blue Chaffinch

Icarus is a person.
The description of Icarus is "[Icarusdesc]";
The conversation of Icarus is { "Wilder!" }.
icarusscene1 is a truth state that varies.  icarusscene1 is usually false.
icarusscene2 is a truth state that varies.  icarusscene2 is usually false.
tti_scene is a number that varies.
ttIcarus is a number that varies.  ttIcarus is normally 255.
icarussex6_variant is a number that varies.  icarussex6_variant is normally 1.
icarus_cumstuff is a number that varies.

[See Blue Chaffinch file for collecting Icarus.]

the scent of Icarus is "[if hp of Icarus >= 50]Breathing in the soft, pleasant scent of the confident songbird makes you feel submissive and aroused.[otherwise if facename of player is listed in infections of Avianpredlist]The blue songbird smells like prey.[otherwise]The blue songbird has a soft, pleasant scent.[end if]";


to say Icarusdesc:
	say "     This avian fellow is covered in bright blue plumage that is very even in colour across most of his body.  Only the ends of his wings and tail are a much darker midnight blue on the flight feathers, and his lower belly and the underside of his narrow tail are downy and white.  He has a puffy looking body compared to his slender arms and legs thanks to his soft feathers.  His head is rounded and shaped like that of a finch, though his beak is thicker.  Double-checking with one of the nature books in the library, you've confirmed that your assumption was right and that he's almost certainly been infected to resemble an exotic blue chaffinch.  His eyes are like black beads with a touch of white feathers just above and below.";
	if hp of Icarus < 50:
		say "     Lacking a name of his own, you've decided to call him Icarus.  Once strong and arrogant, your repeated rough treatment of him as a predatory avian has affected the passerine to the point that he's accepted to become your songbird slut[if hp of Icarus > 7].  He's recovered from his wounds, as if they never were, ready for a fresh assault from his predatory hunter[end if].  He usually spends his daytime hours up in the rafters, singing softly[if the number of booked people > 2] for the others[end if].  He seems fairly happy here, as if accepting the spacious library as his birdcage.";
	otherwise:
		say "     Lacking a name of his own, he's taken on the name of Icarus.  After you'd brought him back here, he ended up reverting to his stronger, more arrogant attitude and has asserted his dominance over you.  No longer satisfied with being neglected as your songbird slut, he's made you into his slut instead.  He usually spends his daytime hours up in the rafters, singing softly and strutting around as if he rules the roost.  He seems quite pleased with himself.  As you're watching him, the thought of letting the little guy dominate you again gets you a little excited.";

Instead of conversing the Icarus:
	if hp of Icarus is 0 or hp of Icarus is 7 or hp of Icarus is 9:
		say "ERROR-Icarus-[hp of Icarus]L: You should not be able to find me!";
	otherwise if hp of Icarus < 50:
		say "[icarustalk_sub]";
	otherwise:
		say "[icarustalk_dom]";

to say icarustalk_sub:
	if hp of Icarus is 1:
		say "     He looks around the library in a very bird-like manner, his head twisting and turning as he looks.  This is a pretty nice place you've got in here.  Pretty spacious and the rafters make for a good perching spot.  It seems safe enough, too.  Good little cage for your caught birdie.'  Now that he's not trying to sound tough, you notice that he's got a soft, musical voice.";
		say "     He fidgets around for a moment, his wings rustling a little.  'Look... I... can you play with me like that again soon?' he asks with a touch of nervous excitement in his voice.  'I'd never have gone for that before, with a guy, especially not on the bottom.  But... just... something about it - the terror, the pain, the viceral lust.  I've never been so turned on in my life and I want you to do it again.  You were so... powerful - your talons grabbing me, your beak flashing - my blood was pumping with fear and anticipation before you tore into me with that cock of yours.  Any time you feel like being the scary predator bird, I'll be your weak, delicious prey.'";
		now hp of Icarus is 2;
	otherwise if icarusscene1 is false and a random chance of 1 in 3 succeeds:
		say "     Icarus flies down when you wave him over.  While you chat for a bit, he talks about the few bits he remembers about his old life.  'I remember being a big, tough guy before.  Strong and confident.  So when I woke up like this, part of me just couldn't accept it and tried to keep being that guy.  But you helped me realize that I'm a cute songbird slut now and how nice that can be.  I get to be your special birdie prey too, which makes it all the better.'  You suspect there's more to it than that, but don't press the matter for now.";
		now icarusscene1 is true;
	otherwise if hp of Icarus < 7:
		say "     [one of]Icarus sings a melodious tune from the rafters while you listen for a spell.[or]Holding up a nature book, Icarus shows you some photos of blue chaffinches.  'It seems they're only found on the Canary Islands.  I wonder how I ended up becoming one.  I don't really remember how I got transformed.  All I know is that I didn't see any others around.'[or]'You were such a wild hunter out there when you caught me.  It was so exhilerating.  I'm looking forward to you taking me like that again.'[or]'You don't need to worry about feeding me.  I managed to raid the zoo stores early on for a bunch of birdfeed, so I've got plenty of seeds.'[or]'I can hardly wait until the next time you feel like making me your prey and sinking your talons and cock into me.'[at random]";
	otherwise if icarusscene1 is true and icarusscene2 is false and a random chance of 1 in 3 succeeds:
		say "     Icarus flies down when you wave him over.  You go to a quiet corner of the library and talk more about what happened.  After reassuring you again that he's fine with what happened, though he acknowledges he reasonably shouldn't be.  'I got better, so why feel bad about it.  And it was such a rush that I want to do it again.'  He seems a little nervous, but also quite eager to repeat those events.";
		say "     Shifting focus a little, you ask him again what it was like being dead.  'I don't rightfully remember what happened while I was kaput.  As I was going out, I knew I was dying.  Things faded off to black and... something.  It must've been the infection putting me back together.  I eventually woke up, like I said.  That's it.'  He shrugs and you both fall into silent thought.";
		now icarusscene2 is true;
	otherwise:
		say "     [one of]Icarus sings a melodious tune from the rafters while you listen for a spell.[or]Icarus gives his feathery rear a tantalizing shake.  'I've stored some of my birdseed up in the attic.  That way I'll have something to eat the next time I need to recover from a rough session with the wild predator,' he says with a grin.[or]'I won't tell others what happened up there.  That's just between us, my vicious predator,' he whispers, rubbing his feathered body against yours.[or]'I can hardly wait until the next time you feel like making me your prey and sinking your talons and cock into me.'[at random]";

to say icarustalk_dom:
	if hp of Icarus is 50:
		say "     Icarus speaks with with a deeper tone, more like when you first met him, but his confidence sounding more genuine to you now.  'I think this'll work out much better for us.  You enjoy being the slut to the sexy bird much more.  I can tell,' he says with a firm squeeze of your ass and a grope at your crotch, drawing a moan from you.  'I should never have let you convince me to try being the bottom, you silly fucktoy.  But everything'll be right now that you know your place.'";
		if cunts of player > 0:
			say "     As he continues to manhandle you, he slips a pair of digits into your cunt and pumps them inside you roughly.  'Mmm... I'm really looking forward to breeding a few clutches of chicks in my horny slut.  Doesn't that sound nice?'  He gives your ass a swat and struts off, licking your juices from his fingers as he does.";
		otherwise:
			say "     As he continues to manhandle you, he pushes a pair of digits into your ass and pumps them inside you roughly.  'Mmm... I'm really looking forward to fucking you raw again and again to [']repay['] you for making me your bitch for a while.  Doesn't that sound nice?'  He gives your ass a swat and struts off, chuckling to himself.";
		now hp of Icarus is 51;
	otherwise:
		say "     [one of]Icarus sings a melodious tune from the rafters while you listen for a spell.[or]'You must've managed to confuse me somehow, making me think I wanted to be a bottom bitch.  I've always been a big stud and no crazy infection's going to change that.  And I'm going to enjoy proving it to you over and over again, my slutty fucktoy.'[or]'I've got myself covered for food.  I was smart and snagged a bunch of birdseed from the zoo stores early on.'[or]'I'm already looking forward to my next chance to put you in your place,' he says, rubbing at his groin.  You feel a little weak in the knees as a rush of excitement runs through your loins at the thought of what he may intend for you next time.[or]Icarus runs his clawed hands across your body.  'Don't get any silly thoughts about getting uppity.  Your place is beneath me and you know it,' he says with confidence as he gropes you.  You can't help but moan, responding to the aggressive little bird's touch with a lustful desire for more.[at random]";


Section 2 - Sexxxings

Part 0 - Basic Sex Menus

the fuckscene of Icarus is "[sexwithIcarus]".

to say sexwithIcarus:
	if hp of Icarus is 0 or hp of Icarus is 7 or hp of Icarus is 9:
		say "ERROR-Icarus-[hp of Icarus]F: You should not be able to find me!";
	otherwise if hp of Icarus is 1:
		say "     How about you talk to him first before fucking the little songbird again?";
	otherwise if cocks of player is 0 and cunts of player is 0:
		say "     Lacking any gender of your own, you feel there's little point in going to Icarus for sex.";
	otherwise if lastfuck of Icarus - turns < 6:
		if hp of Icarus < 50:
			say "     'Oh, I'm still worn out from the last time, but I [if bodyname of player is listed in infections of Avianpredlist and facename of player is listed in infections of Avianpredlist]do so want to go again soon[otherwise]hope you'll consider being the scary predator next time[end if].'";
		otherwise:
			say "     'It's nice to see you so eager to be my slut, but I think it's your turn to wait and go without for a little longer.'";
	otherwise if hp of Icarus < 50:
		say "[icarussex_sub]";
	otherwise:
		say "[icarussex_dom]";
		now lastfuck of Icarus is turns;

to say icarussex_sub:
	if hp of Icarus < 10:
		if cocks of player is 0:
			if hp of Icarus < 7 and lust of Icarus > 6 and lust of Icarus < 100:
				say "[icarussex0_dom]";
				now lastfuck of Icarus is turns;
			otherwise if lust of Icarus <= 100:
				say "     The blue bird blushes a little and looks away, his wings fluttering.  'Look, before I might've, but... you see... to me you'll always be my fearsome, male hunter and it just wouldn't feel right.  If I wanted some pussy, I could just go out on the town and get it,' his old, macho voice coming back slightly for a bit before returning to normal.  'But for you, I just want to be your songbird slut and your prey, like you said.'  He shifts around eagerly on his taloned feat, clearly remembering the previous times you had your way with him.";
				if hp of Icarus < 7, increase lust of Icarus by 3;
			otherwise if lust of Icarus > 100:
				say "[bracket]***No M/F scenes available at present - Mgmt.[close bracket]";
		otherwise if bodyname of player is listed in infections of Avianpredlist and facename of player is listed in infections of Avianpredlist:
			if hp of Icarus >= 8 and a random chance of 1 in 2 succeeds:
				say "[icarussex6_ap]";
			otherwise if hp of Icarus is 5 or ( hp of Icarus > 5 and a random chance of 1 in 5 succeeds ):
				say "[icarussex5_ap]";
			otherwise if hp of Icarus > 3 and a random chance of 2 in 5 succeeds:
				say "[icarussex4_ap]";
			otherwise if a random chance of 3 in 5 succeeds:
				say "[icarussex3_ap]";
			otherwise if hp of Icarus is 2:
				say "[icarussex1_ap]";
			otherwise:
				say "[icarussex2_ap]";
			now lastfuck of Icarus is turns;
			now lust of Icarus is 0;
		otherwise:
			if hp of Icarus < 7 and lust of Icarus > 6 and lust of Icarus < 100:
				say "[icarussex0_dom]";
			otherwise if a random chance of 3 in 5 succeeds:
				say "[icarussex3]";
			otherwise if hp of Icarus is 2:
				say "[icarussex1]";
			otherwise:
				say "[icarussex2]";
			now lastfuck of Icarus is turns;
			if hp of Icarus < 7, increase lust of Icarus by 2;
	otherwise if hp of Icarus is 10:
		if bodyname of player is listed in infections of Avianpredlist and facename of player is listed in infections of Avianpredlist and a random chance of 1 in 5 succeeds:
			say "[icarussex5_ap]";
		otherwise:
			say "     As you consider having some fun with [if bodyname of player is listed in infections of Avianpredlist and facename of player is listed in infections of Avianpredlist]your little birdie prey[otherwise]Icarus[end if], what sort of fun did you have in mind this time?";
			now sextablerun is 0;
			blank out the whole of table of fucking options;
			if cocks of player > 0:
				choose a blank row in table of fucking options;
				now title entry is "Blow job";
				now sortorder entry is 2;
				now description entry is "get him to suck you off";
				choose a blank row in table of fucking options;
				now title entry is "Over a table";
				now sortorder entry is 3;
				now description entry is "bend him over a table and fuck him";
			if cocks of player > 0 and bodyname of player is listed in infections of Avianpredlist and facename of player is listed in infections of Avianpredlist:
				choose a blank row in table of fucking options;
				now title entry is "Rough sex";
				now sortorder entry is 4;
				now description entry is "pull him into a side room and fuck him hard";
				choose a blank row in table of fucking options;
				now title entry is "Attic";
				now sortorder entry is 6;
				now description entry is "chase him into the attic and tear into him";
			sort the table of fucking options in sortorder order;
			repeat with y running from 1 to number of filled rows in table of fucking options:
				choose row y from the table of fucking options;
				say "[link][y] - [title entry][as][y][end link][line break]";
			say "Pick the corresponding number> [run paragraph on]";
			while sextablerun is 0:
				get a number;
				if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
					now current menu selection is calcnumber;
					choose row calcnumber in table of fucking options;
					say "[title entry]: Are you looking to [description entry]?";
					if player consents:
						let nam be title entry;
						now sextablerun is 1;
						if nam is "Blow job":
							if bodyname of player is listed in infections of Avianpredlist and facename of player is listed in infections of Avianpredlist:
								say "[icarussex2_ap]";
							otherwise:
								say "[icarussex2]";
						otherwise if nam is "Over a table":
							if bodyname of player is listed in infections of Avianpredlist and facename of player is listed in infections of Avianpredlist:
								say "[icarussex3_ap]";
							otherwise:
								say "[icarussex3]";
						otherwise if nam is "Rough sex":
							say "[icarussex4_ap]";
						otherwise if nam is "Attic":
							say "[icarussex6_ap]";
						now lastfuck of Icarus is turns;
						now lust of Icarus is 0;
						wait for any key;
				otherwise:
					say "Invalid Option.  Pick between 1 and [the number of filled rows in the table of fucking options].";
			clear the screen and hyperlink list;

to say icarussex_dom:
	say "     Feeling the need to be Icarus's fucktoy again, you catch his attention from the rafters with a tantalizing display of your body.  Seeing your wanton display, he gives a pleased chirp and flies down to join you.  As he nears the ground, you can see his cock already starting to poke from his feathery crotch";
	if a random chance of 2 in 5 succeeds:
		say "[icarussex1_dom]";	[oral]
	otherwise if cunts of player > 0:
		say "[icarussex2_dom]";	[m/f]
	otherwise:
		say "[icarussex3_dom]";	[m/m]
	Icarusinfect;


Part 1 - Icarus Sub Sex

to say icarussex1:		[first time - oral]
	say "     In the mood for some fun with your little songbird, you call him down with the intent on training him to suck cock.  Once he's landed, you grab him and push his face to your crotch.  You grind your throbbing rod against his feathered face, telling him to get to work.  He gulps nervously, but you also see an eagerness in his eyes as he stares at your [cock size desc of player] [cock of player] penis[esmn].";
	say "     He starts with a few tentative licks before you instruct him to open wide.  Holding his head as he opens his beak, you guide your cocktip to it and pull his head forward.  He gives a wet groan as you push your shaft into his mouth, forcing the little birdie to take your [cock size desc of player] [cock of player] meat[if cock length of player > 20].  It takes a firm pull on Icarus's head to press your glans into his mouth and then down his throat, but the passarine only takes it with another moan of pleasure despite its [cock size desc of player] size[otherwise if cock length of player > 10].  It takes a bit of an extra push to get your glans into his small beak and down his throat, but the passarine only takes it with another moan of pleasure despite its [cock size desc of player] size[otherwise].  The passarine takes it in with a moan of pleasure[end if] as you stuff his virgin mouth with cock for the first time.";
	say "     Now that you're in his mouth[if cock length of player > 10] and throat[end if], you pat your birdie slut's head and order him to start sucking.  He tries his best, but the little guy's quite inexperienced at it.  His new body's sexual instincts do seem to be helping him along, letting him use his beak without nipping you while learning quickly.  It takes a few pointers and a little while for him to get warmed up, but soon enough he's sucking you off like he's done it plenty of times.  Chuckling that he's turning into quite the cock slut, you grin as a blush of red shows through his blue cheekfeathers.";
	say "     With him working eagerly to suck you off, it's only a matter of time before you groan that you're about to cum.  He tries to pull back, but you grip his head tightly, telling him that you've got some tasty seed to feed the little birdie.  He blushes all the more and sucks hungrily for it just as your reach your climax and start pumping your thick load into him[if cock width of player > 35].  Your [cum load size of player] load stuffs the poor songbird so bloated and full of your cum that eventually leaks out of the edges of his beak as he overflows.  His body is left rounded like a feathery balloon from it all.  He can only give a wet, gurgling chirp as you pull out and a gush of your hot cum pours of his mouth before he manages to swallow and hold back the flow[otherwise if cock width of player > 25].  Your [cum load size of player] load stuffs the poor songbird until he's rounded like a feathery balloon.  When you pull out, he gives a wet, gurgling chirp as a little of your hot cum trickles from his beak before he manages to swallow and hold the rest inside[otherwise if cock width of player > 15].  Your [cum load size of player] load leaves the poor songbird somewhat chubbier looking than before, his belly stuffed quite full with your seed.  When you pull out, he gives a weak chirp and licks his beak[otherwise].  He gives a weak chirp when you pull out, then licks his beak[end if].  Before leaving him there on the floor to recover, you tell him that he did well for a first time and that you look forward to giving him plenty more training at it.  He can't help but blush and grin at the prospect.";
	now hp of Icarus is 3;

to say icarussex1_ap:		[first time - oral - avian pred version]
	say "     In the mood for some fun with your little songbird, you call him down with the intent on training him to suck cock.  Once he's landed, you grab him roughly and push his face to your crotch.  You grind your throbbing rod against his feathered face, telling him to get to work.  He gulps nervously, but you also see an eagerness in his eyes as he stares at your [cock size desc of player] [cock of player] penis[esmn].";
	say "     He starts with a few tentative licks before you instruct him to open wide.  Holding his head as he opens his beak, you guide your cocktip to it and pull his head forward sharply.  He gives a wet groan as you push your shaft into his mouth, forcing the little birdie to take your [cock size desc of player] [cock of player] meat[if cock length of player > 20].  It takes a firm pull on Icarus's head to press your glans into his mouth and then down his throat, but the passarine only takes it with another moan of pleasure despite its [cock size desc of player] size[otherwise if cock length of player > 10].  It takes a bit of an extra push to get your glans into his small beak and down his throat, but the passarine only takes it with another moan of pleasure despite its [cock size desc of player] size[otherwise].  The passarine takes it in with a moan of pleasure[end if] as you stuff his virgin mouth with cock for the first time.";
	say "     Now that you're in his mouth[if cock length of player > 10] and throat[end if], you grip your birdie slut's head and start thrusting into his mouth while ordering him to start sucking.  He tries his best, but the little guy's quite inexperienced at it.  His new body's sexual instincts do seem to be helping him along, letting him use his beak without nipping you while learning quickly.  It takes a few instructions and a little practice for him to get warmed up, but soon enough he's sucking you off like he's done it plenty of times.  Chuckling that he's turning into quite the cock slut, you grin as a blush of red shows through his blue cheekfeathers and pound into his maw all the harder.";
	say "     With him working eagerly to suck the big, strong predator off, it's only a matter of time before you groan that you're about to cum.  He tries to pull back, but you yank his head forward again, telling him that you're not letting him get out of this and adding that you've got plenty of tasty seed to feed your caged birdie.  He moans and blushes all the more, sucking hungrily for it just as your reach your climax and start pumping your thick load into him[if cock width of player > 35].  Your [cum load size of player] load stuffs the poor songbird so bloated and full of your cum that eventually leaks out of the edges of his beak as he overflows.  His body is left rounded like a feathery balloon from it all.  He can only give a wet, gurgling chirp as you pull out and a gush of your hot cum pours of his mouth before he manages to swallow and hold back the flow[otherwise if cock width of player > 25].  Your [cum load size of player] load stuffs the poor songbird until he's rounded like a feathery balloon.  When you pull out, he gives a wet, gurgling chirp as a little of your hot cum trickles from his beak before he manages to swallow and hold the rest inside[otherwise if cock width of player > 15].  Your [cum load size of player] load leaves the poor songbird somewhat chubbier looking than before, his belly stuffed quite full with your seed.  When you pull out, he gives a weak chirp and licks his beak[otherwise].  He gives a weak chirp when you pull out, then licks his beak[end if].  Before leaving him there on the floor now that you're through, you tell him that you look forward to giving him plenty more training at it.  He can't help but blush and smile at the prospect.";
	now hp of Icarus is 3;

to say icarussex2:		[oral]
	say "     Motioning for Icarus to come down, you grope and fondle the bird as he lands.  After stroking him to get him excited, you pull out your own erection and tell him to get sucking.  There is an eagerness in his eyes as he looks at your shaft and is soon on his knees, nuzzling and licking at your cock[smn] and balls.  Showing more flair than his first attempt at it, his licking is accompanied by the soft stroking of his soft feathers against you sensitive flesh, sending shivers of delight through you.";
	say "     Pleased wiht his improvement, you rub a hand over his head before pushing it forward with an order to move on to sucking.  He nods and opens his beak wide, leaning forward to take your [cock size desc of player] [cock of player] shaft in his mouth.  Feeling he's going a little slow after his sensual touches have gotten you worked up, you pull him forward, forcing more of your cock into his open maw[if cock length of player > 10] and down his throat[end if].  He moans in pleasure at this rough treatment of himself and starts sucking down on your shaft[if cock length of player > 20] as he works to get the rest of your impressive manhood into his mouth[end if].";
	say "     Now that you're in his mouth[if cock length of player > 10] and throat[end if], you pat your birdie slut's head and start thrusting while he works hard to suck you off.  You tease him, saying he's learning quickly to be a cock slut.  He blushes red under his blue feathers, but also goes down on you all the more eagerly.";
	say "     With him working eagerly to suck you off, it's only a matter of time before you groan that you're about to cum.  He makes no attempt to pull back, knowing you'll want to finish in him, accepting as you thrust harder into his mouth.  After a few more hard pushes into him, you orgasm and start pumping your creamy cum into him.  This pushes Icarus over the edge and his cock, untouched from earlier, pulses and spurts his avian cum onto the floor as he gulps down your seed[if cock width of player > 35].  Your [cum load size of player] load stuffs the poor songbird so bloated and full of your cum that eventually leaks out of the edges of his beak as he overflows.  His body is left rounded like a feathery balloon from it all.  He can only give a wet, gurgling chirp as you pull out and a gush of your hot cum pours of his mouth before he manages to swallow and hold back the flow[otherwise if cock width of player > 25].  Your [cum load size of player] load stuffs the poor songbird until he's rounded like a feathery balloon.  When you pull out, he gives a wet, gurgling chirp as a little of your hot cum trickles from his beak before he manages to swallow and hold the rest inside[otherwise if cock width of player > 15].  Your [cum load size of player] load leaves the poor songbird somewhat chubbier looking than before, his belly stuffed quite full with your seed.  When you pull out, he gives a weak chirp and licks his beak[otherwise].  He gives a weak chirp when you pull out, then licks his beak[end if].  Before leaving him there on the floor to recover, you tell him that he did well and that you look forward to giving him plenty more training at it, which has him blush, grin and lick his beak.";

to say icarussex2_ap:		[oral - avian pred version]
	say "     Motioning for Icarus to come down, you grope and fondle the bird as he lands.  After stroking him to get him excited, you pull out your own erection and tell him to get sucking.  There is an eagerness in his eyes as he looks at your shaft and is soon on his knees, nuzzling and licking at your cock[smn] and balls.  Showing more flair and eagerness than his first attempt at it, his licking is accompanied by the soft stroking of his soft feathers against you sensitive flesh, sending shivers of delight through you.";
	say "     Pleased with his improvement, you place a hand at the back of his head while guiding your cock into his beak with an order to move on to sucking.  He nods and opens his beak wider as you press his head down overtop of your [cock size desc of player] [cock of player] shaft.  In the mood to get on with it after his sensual touches have gotten you worked up, you pull him forward, forcing more and more of your cock into his open maw[if cock length of player > 10] and down his throat[end if].  He moans in pleasure at this rough treatment of himself and sucking down on your shaft[if cock length of player > 20] as you work to get the whole of your impressive manhood into his mouth[end if].";
	say "     Now that you're in his mouth[if cock length of player > 10] and throat[end if], you grip your birdie slut's head in both hands and start thrusting firmly into it while he works hard to suck you off.  You tease him, saying that your tasty treat is learning quickly to be a cock slut.  He blushes red under his blue feathers, but also goes down on you all the more eagerly.";
	say "     With him working eagerly to suck you off, it's only a matter of time before you groan that you're about to cum.  He makes no attempt to pull back from the impressive hunter's cock, knowing you'll want to finish in him, accepting as you thrust all the harder into his mouth.  After a few more slams into him, you orgasm and start pumping your creamy cum into him.  This pushes Icarus over the edge and his cock, untouched from earlier, pulses and spurts his avian cum onto the floor in large splatters as he gulps down your seed[if cock width of player > 35].  Your [cum load size of player] load stuffs the poor songbird so bloated and full of your cum that eventually leaks out of the edges of his beak as he overflows.  His body is left rounded like a feathery balloon from it all.  He can only give a wet, gurgling chirp as you pull out and a gush of your hot cum pours of his mouth before he manages to swallow and hold back the flow[otherwise if cock width of player > 25].  Your [cum load size of player] load stuffs the poor songbird until he's rounded like a feathery balloon.  When you pull out, he gives a wet, gurgling chirp as a little of your hot cum trickles from his beak before he manages to swallow and hold the rest inside[otherwise if cock width of player > 15].  Your [cum load size of player] load leaves the poor songbird somewhat chubbier looking than before, his belly stuffed quite full with your seed.  When you pull out, he gives a weak chirp and licks his beak[otherwise].  He gives a weak chirp when you pull out, then licks his beak[end if].  Before leaving him there on the floor now that you're done with him, you tell him that he did well and that you look forward to giving him plenty more training at it, which has him blush, grin and lick his beak.";
	if hp of Icarus is 3, now hp of Icarus is 4;

to say icarussex3:		[sex]
	say "     Feeling the need to have some fun with your little songbird, you call him down.  As he's landing, you grab him and push him down over one of the tables.  He moans as you push up his tailfeathers and spread his spindly legs, exposing the bird's white-feathered bottom.  The small passarine squirms and chirps a little, struggling not to get away, but enough so you have to pin him down as you get your cock lined up with his pucker.  As you push into him, he gives a groan of discomfort and pleasure, his tight hole being forced to spread open for your [cock size desc of player] [cock of player] phallus.";
	say "     He settles down a little as you start humping away, chirping as he soon starts to beg for more.  Knowing how he's grown to like it, you grip one of his thin, feathered legs tightly and pound his ass hard and deep.  Even as he whimpers at the pain, he's also moaning in delight.  When you reach around to stroke him off, his cock is throbbing hard and dripping with precum.  Teasing him for being such a puny, little slut, you grin as he moans and nods in agreement, loving being a horny cock slut now.";
	say "     You keep it up, something in the weak bird's behaviour egging you on to be rough with him.  And certainly, he loves it as well.  The throbbing of his cock in your hand and the way his asshole tightens around you suddenly is all the warning you get before the stuffed bird cums hard, splattering his load on the floor as you cum a few moments later, claiming his ass once again[if cock width of player > 35].  Your [cum load size of player] load leaves the poor songbird so bloated and full of your cum that some leaks out of his beak.  His body is left rounded like a feathery balloon from it all.  He can only give a weak chirp as you pull out and your hot cum pours of his stretched and stuffed ass, slowly deflating[otherwise if cock width of player > 25].  Your [cum load size of player] load leaves the poor songbird rounded like a feathery balloon.  When you pull out, he gives a weak chirp as your hot cum pours of his stretched and stuffed ass, slowly deflating[otherwise if cock width of player > 15].  Your [cum load size of player] load leaves the poor songbird somewhat chubbier looking than before, his belly stuffed quite full with your seed.  When you pull out, he gives a weak chirp as hot cum leaks from his stretched and stuffed ass[otherwise].  He gives a weak chirp when you pull out, hot cum leaking from his stretched and creamy ass[end if].  While taking a moment to check that your birdie pet's still fine, you wipe your cock clean on his blue tailfeathers before heading off, leaving him there to eventually recover.";

to say icarussex3_ap:		[sex - avian pred version]
	say "     Feeling the need to have some fun with your little songbird prey, you call him down.  As he's landing, you grab him and push him down over one of the tables quite roughly.  He moans as you push up his tailfeathers and spread his spindly legs, exposing the bird's white-feathered bottom.  The small passarine squirms and chirps a little, struggling not to get away, but enough so you as the strong predator have to pin him down as you get your cock lined up with his pucker.  As you push into him, he gives a groan of discomfort and pleasure, his tight hole being forced to spread open for your [cock size desc of player] [cock of player] phallus.";
	say "     He continues to squirm as you start humping away, driving you to grip him painfully hard with your talons.  Your lust and your instincts, already worked up by having the cute passarine beneath you, cause you to dig your talons into him to keep your prey from escaping.  Icarus cries out as you grip his ass painfully hard, though his cry is definitely one of pleasure.  When you reach around to stroke him off, his cock is rock hard and dribbling precum steadily.  Grinning, you nips hard at his shoulder with your beak, calling him your puny, slutty treat and grinning happily and he moans and nods in agreement, loving being the slutty prey for such a fearsome predator.";
	say "     You keep it up, something in the weak bird's behaviour egging you on to be rough with him.  Your bite his shoulder firmly with your beak several times while stuffing his ass with your dribbling rod.  And certainly, he loves it as well.  The throbbing of his cock in your hand and the way his asshole tightens around you suddenly is all the warning you get before the stuffed bird cums hard, splattering his load on the floor as you cum a few moments later, claiming his ass once again[if cock width of player > 35].  Your [cum load size of player] load leaves the poor songbird so bloated and full of your cum that some leaks out of his beak.  His body is left rounded like a feathery balloon from it all.  He can only give a weak chirp as you pull out and your hot cum pours of his stretched and stuffed ass, slowly deflating[otherwise if cock width of player > 25].  Your [cum load size of player] load leaves the poor songbird rounded like a feathery balloon.  When you pull out, he gives a weak chirp as your hot cum pours of his stretched and stuffed ass, slowly deflating[otherwise if cock width of player > 15].  Your [cum load size of player] load leaves the poor songbird somewhat chubbier looking than before, his belly stuffed quite full with your seed.  When you pull out, he gives a weak chirp as hot cum leaks from his stretched and stuffed ass[otherwise].  He gives a weak chirp when you pull out, hot cum leaking from his stretched and creamy ass[end if].  While giving him a bruisingly hard nip, you wipe your cock clean on his blue tailfeathers before heading off, leaving him there to eventually recover.";

to say icarussex4_ap:		[rough avian sex]
	say "     In the mood to play with your little songbird prey, you grab him roughly when he comes down and pull him into one of the side rooms.  There you push him to the ground and sink your talons into him, stroking your cock and chuckling that you've caught yourself a tasty morsel.  He winces in pain as your claws dig into him, but also moans loudly, turned on by the harsh treatment by the powerful predator.  You are also getting quite excited, your predatory avian instincts getting you very worked up.";
	say "     'Oh, don't hurt me,' he moans, squirming playfully.  'I'll do [italic type]anything[roman type] if you'll let me go.'";
	say "     You grin at the corners of your beak and grab his head, pushing his face to your groin.  'Anything, my little treat?  Then start by sucking me off.'  You run a sharp talon down his cheek before grabbing his shoulders, claws poking at the skin beneath.  He shivers a little (more in excitement than fear) and complies with your demands, taking your [cock size desc of player] cock into his beak[if cock length of player > 20] with some effort[otherwise] with a little effort[end if].  You let the horny bird go at it for a while, working his tongue and palate over your [if cock length of player > 10]hefty [end if]meat while his saliva gets it nice and slick.";
	say "     When you feel ready, you push the blue bird away, shoving him onto his ass.  Taken by surprise, he can only moan as you push him onto all fours and get your wet cock lined up with his tight pucker.  Kissing it to his asshole, you rub it teasingly there before thrusting it in with no more preamble.  He calls out with a cry of pained pleasure as the stronger bird takes him hard.  Atop the smaller guy, you nip and bite at his shoulders with your beak as you fuck him.  After having being taken several times, he's much easier to penetrate, but remains a delightfully tight fuck.";
	say "     You take delight in his musical cries as you pound away at him, his hard cock slapping against his tummy and spurting precum across the floor.  The weaker bird's behaviour excites you greatly, your instincts getting stronger and weakening your restraint.  Your nips get harder, biting into his flesh hard enough to make him bleed while your claws dig into him.  The little birdie beneath you whimpers at the pain, but pushes himself back into your thrusts all the more for it.";
	say "     A few last thrusts push you over the edge.  Biting hard as your talons dig in, you restraint the shuddering passarine, drive your cock deep inside him and unleash your hot load.  You pump your [cum load size of player] load into your prey with a triumphant cry that drowns out his own orgasmic cry of pain.  The blue bird cums messily, spraying shot after shot of stick avian cum onto the floor beneath him as the powerful predator tears into him and fills him[if cock width of player > 35].  Your [cum load size of player] output leaves the wounded songbird so bloated and full of your cum that some leaks out of his beak.  His body is left rounded like a feathery balloon from it all.  He can only give a weak chirp as you pull out and your hot cum pours of his stretched and stuffed ass, slowly deflating[otherwise if cock width of player > 25].  Your [cum load size of player] output leaves the wounded songbird rounded like a feathery balloon.  When you pull out, he gives a weak chirp as your hot cum pours of his stretched and stuffed ass, slowly deflating[otherwise if cock width of player > 15].  Your [cum load size of player] output leaves the wounded songbird somewhat chubbier looking than before, his belly stuffed quite full with your seed.  When you pull out, he gives a weak chirp as hot cum leaks from his stretched and stuffed ass[otherwise].  The wounded songbird gives a weak chirp when you pull out, hot cum leaking from his stretched and creamy ass[end if].  You give him a final nip and lick at one of his bloodied wounds.  This sends a rush of dark excitement through you, the taste of the little bird wonderful to the avian hunter in you.  But having just gotten off, you rein it in, wipe your cock across his softly feathered ass and leave him laying there in a pool of his increasingly red-streaked semen with a smile on his exhausted face.";
	if hp of Icarus is 4, now hp of Icarus is 5;


Part 2 - Icarus Sub Sex - Extreme Content

to say icarussex5_ap:		[uncontrolled avian sex]
	say "     Wanting to play with your songbird prey, you call for him to come down.  He continues to sing his musical song as if not hearing you.  When you call out to him again, he glances at you with a slight grin, flutters his wings a little and sings on.  Frustrated and wanting the bird all the more, you call out to him again with an avian screech.  With that, he stops singing and starts to move, but rather than coming down to you, he instead retreats further into the rafters.";
	say "     Frustrated now by this obvious taunting, you rush up the stairs to the upper level.  With another sharp screech, you head out onto the rafters after him without a thought to the risk.  While not quite able to fly, your wings do give you some added control as you hop from one wooden beam to the next in pursuit of your prey.  Seeing you coming for him, he gives a fearful chirp and tries to get away, but not too hard, just enough to keep up the chase as he taunts you with flicks of his blue tail and shake of his downy ass.";
	attempttowait;
	say "     Eventually the chase leads up into the attic and you corner the little bird in there.  Panting hard, he hops from one leg to the next, looking for an avenue of escape but finding none.  With a sharp cry, you leap atop your passarine prey, sinking your talons into him and pressing him to the ground.  He shivers and moans as you press him to the dusty floor and yank up his tail with little preamble, your blood pumping hard and your instincts largely in control.  With a bruisingly hard nip on his shoulder, you drive your cock into him with one harsh thrust that gets him as hard as a rock.";
	say "     Your sex up in the secluded attic is harsh and merciless, your avian infection lustful after the hunt.  The blue bird chirps in pain and moans in delight as you take him hard.  So excited by the chase, you give him bloody bites and scratches as you manhandle his body and use him as your fucktoy.  His body shudders from the wounds and the pounding he's receiving, his cock hard and pulsing with excitement as he moans for more and to take him harder.";
	if hp of Icarus is 5:
		say "     With your predatory, avian instincts exciting you, you find it difficult to hold back any longer.  You have caught your prey and he is at your mercy.  Shall you [link]let loose (Y)[as]y[end link] and let your wild impulses do as they will, or will you [link]rein it in (N)[as]n[end link] to keep yourself from going too far?  [bracket]WARNING: Extreme violence occurs if you accept.[close bracket] ";
		if the player consents:
			say "[icarussex5_ap_x]";
		otherwise:
			say "[icarussex5_ap_s]";
	otherwise if hp of Icarus is 6:
		attempttowait;
		say "[icarussex5_ap_s]";
	otherwise if hp of Icarus >= 8:
		attempttowait;
		say "[icarussex5_ap_x2]";

to say icarussex5_ap_s:	[standard version of scene 5]
	say "     You take some care to not hurt your special catch too badly and instead focus on pounding him pretty ass harder and harder.  His body shudders under you, his birdie feet clawing at the wooden floor as you relentlessly fuck your caught prey until he cums with a loud, musical cry of lustful delight.  This load is the largest yet from him, the chase and his capture clearly having gotten Icarus very worked up.  Shot after shot of avian cum marks the floor, adding the scent of your prey's semen to that of his blood in the air.";
	say "     The sight and scent of all this along with the thought that you've driven him to this point sends a rush of wild excitement through you.  You bite down hard onto his shoulder, drawing blood again and cum into him as his orgasm's coming to an end.  The rush of fresh pain and your hot semen filling him sets him off again with another set of cum blasts[if cock width of player > 35].  Your [cum load size of player] load pumps more and more seed into the wounded songbird until he's so bloated and full that your seed leaks out of his beak.  He can only give a weak chirp as he's left a bloated, feathery balloon of cum.  When you pull out, your hot cum pours from his stretched and stuffed ass, slowly deflating him[otherwise if cock width of player > 25].  Your [cum load size of player] load pumps more and more seed into the wounded songbird until he's bloated and full.  He can only give a weak chirp as he's left a bloated, feathery balloon of cum.  When you pull out, your hot cum pours from his stretched and stuffed ass, slowly deflating[otherwise if cock width of player > 15].  Your [cum load size of player] load pumps more and more seed into the wounded songbird until he's left with a chubby tummy full of your seed.  He gives a weak chirp as hot cum leaks from his stretched and stuffed ass when you pull out[otherwise].  The wounded songbird gives a weak chirp when you pull out, hot cum leaking from his stretched and creamy ass[end if].  Grabbing the birdie's head, you stuff your cock in his mouth, forcing him to suck your messy cock clean.  When he's done, you drop his head and let it fall to the floor.  You leave him behind in the dark room, panting and leaking cum as his nanites rush to heal these fresh wounds.";
	if hp of Icarus is 5, increase hp of Icarus by 1;

to say icarussex5_ap_x:	[extreme version of scene 5]
	say "     Unwilling or unable to hold back your instinctual desires, you allow your wild nature to have full rein.  You dig your claws in deeper and pound away at him harder and harder.  His body shudders under you, his birdie feet clawing at the wooden floor as you relentlessly fuck him while biting down hard onto his neck with your predatory beak.  His body shudders and squirms beneath you with added vigour as the taste of his blood fills your mouth.  He releases groan, his ass clenching down hard around you as he cums even as your hard beak digs deeper into his neck.  This load is the largest yet from him, the chase and his capture clearly having gotten Icarus very worked up.  Shot after shot of avian cum marks the floor, adding the scent of your prey's semen to that of his blood in the air.";
	say "     The taste of your prey's flesh and the scent of his release sends a rush of wild excitement through you.  You bite down harder, tearing into his neck as you cum.  Even as you pound as his feathery ass, blasting shot after shot of your seed into him, his struggles grow weaker, his lifeblood flowing across your tongue.  But in the heat of the moment, you don't care about the consequences, only seeking to sate your instinctual hungers upon your captured prey.  Even as he's sagging weakly beneath you, he continues to cum, shooting splatters of his semen into the growing pool of blood beneath him until he gives a weak, gurgling sigh and collapses.";
	attempttowait;
	say "     It is some time after you've finished cumming that you start to realize that you're starting to chew into the unmoving bird's shoulder.  Your humanity struggles to pull itself out of the instinctual haze you've been in.  It takes some effort, the wild rush of the hunt and the raw pleasure of succumbing to those dark impulses is strong and has filled you with an excitement that you lingers.  The rush of adrenaline, the taste of his blood, the ecstasy of your release, the completion of the hunt - all alluring dark pleasures you want to sink into again.";
	say "     Regaining some control, you quickly push yourself away, eyes locked on his torn throat and still tasting his bloody flesh in your beak.  You swallow it down without thinking, your human mind causing your stomach to shudder, but your predatory body manages to hold down your sinister meal.  When you look back at him, your eyes lock with his unblinking eyes.  You can't be sure how long you stare into them and it takes considerable effort to avert your gaze, reaching over to brush them closed.";
	say "     You grab a stray sheet and pull it over his body and mess of blood and semen leaking from it, not wanting to look at it any longer to help bury those instincts you can still feel inside you.  You clean yourself up as best you can with some rags and leave the room, closing the door behind you, trying to hide this dark deed you've done[if ( the number of booked people + the number of bunkered people ) > 2] from the others[end if].  But you can't hide it from yourself and you head back downstairs with a heavy conscience.  All the while, the dark recesses of your avian mind eagerly await another such release.";
	decrease hunger of player by 6;
	if hunger of player < 0, now hunger of player is 0;
	now libido of player is libido of player / 2;
	now humanity of player is humanity of player / 2;
	remove Icarus from play;
	now hp of Icarus is 7;
	now ttIcarus is turns;
	now tti_scene is 0;


to say icarussex5_ap_x2:	[repeating extreme version of scene 5]
	say "     The caught passarine shivers and squirms beneath you.  'Do it,' he whispers softly as he squeezes down harder around your cock.  Your human restraint cannot rein in your predatory impulses, that dark corner of your mind whispering that he wants it and that he'll be restored.  Your avian instincts take charge and you allow your wild nature to run wild, digging your claws deeper into his tender body and pounding away at him harder and harder.";
	say "     His body shudders under you, his birdie feet clawing at the wooden floor as you relentlessly fuck him while biting down hard onto his neck with your predatory beak.  His body shudders and squirms beneath you with added vigour as the taste of his blood fills your mouth.  He releases groan, his ass clenching down hard around you as he cums even as your hard beak digs deeper into his neck.  The small songbird cums long and hard, the chase, his capture and the rough treatment clearly having gotten Icarus very worked up.  Shot after shot of avian cum marks the floor, adding the scent of your prey's semen to that of his blood in the air.";
	attempttowait;
	say "     The taste of your prey's flesh and the scent of his release sends a rush of wild excitement through you.  You bite down harder, tearing into his neck as you cum.  Even as you pound as his feathery ass, blasting shot after shot of your seed into him, his struggles grow weaker, his lifeblood flowing across your tongue.  With nary thought to what you're doing, only seeking to sate your instinctual hungers upon your captured prey, you bite down harder.  Even as he's sagging weakly beneath you, he continues to cum, shooting splatters of his semen into the growing pool of blood beneath him until he gives a weak, gurgling, and strangely contented sigh before collapsing.";
	say "     Your dark impulses and the songbird's perverse desire satisfied, you pull out, pumping the last few spurts of your seed across his crumpled body.  You swallow down the chunk of torn flesh, your predatory tongue loving the taste of it.  As the haze starts to lift, you can't help but feel a little ill at ease with what you've done, but part of your infected mind relishes the rush of it and is reluctant to let your humanity reassert itself.  Knowing (hoping?) that he'll recover in time, you nuzzle him tenderly and brush his eyes closed.  After pulling the bloody sheet across his body, you leave his still body in the dark, secluded attic.";
	decrease hunger of player by 6;
	if hunger of player < 0, now hunger of player is 0;
	decrease libido of player by libido of player / 5;
	decrease humanity of player by 20;
	remove Icarus from play;
	now hp of Icarus is 9;
	now ttIcarus is turns;


to say icarussex6_ap:		[violent avian sex]
	say "     Looking up at the rafters, you spot your songbird prey and run your tongue along your beak.  Your predatory instincts long to catch your prey and satisfy their dark desires upon him.  At first, you consider resisting the impulse, but a corner of your mind whispers that he's asked you to keep doing it to him and that he'll recover eventually.  With these excuses, you allow your darker nature take over.  Heading up the stairs to the upper floor, you approach the rafters and release a shrill, avian cry.";
	say "     Startled by the call of a predator, the blue passarine releases a chirp of fear.  He flutters frantically further into the rafters, you giving chase with another sharp screech.  While not quite able to fly, your wings do give you some added control as you hop from one wooden beam to the next in pursuit of your prey.  Seeing you coming for him, he flies around further, evading you with tantalizing flicks of his blue tail and shakes of his downy ass, driving you on.";
	attempttowait;
	if hp of Icarus >= 10 and cock width of player > 35 and libido of player > 50 and a random chance of 2 in 5 succeeds:
		if icarus_cumstuff is even:
			say "     The chase eventually drives your songbird prey into the attic where you corner him.  Wide eyed and panting at having been trapped again, you stalk closer and closer, eventually leaping atop the little bird and bearing him down under your weight.  He groans as you press him roughly to the floor, grinding his face against the wood even as you grind your own wood against his ass.  You pull his feathered tail up sharply, yanking a few feathers out as you do.  With a firm grip on his neck with the other hand, you jam your cock into the little birdie, causing your enlarged balls to slap against his thighs.  He gives a moan of delight despite the painful mistreatment and pushes back into your hard thrust.";
			say "     With your raging libido and wild instincts dominating your actions, you pound into him relentlessly.  Hidden away in the secluded attic, there is no one to hear his moans and chirps of pain and delight as you fuck him hard.  So excited by the chase, you give him several bloody bites and scratches as you manhandle his body and use him like a fucktoy.  His body shudders from the wounds and the pounding he's receiving, his cock hard and pounding with excitement as his little heart races.";
			say "     Being quite aroused even before coming up here, your balls ache for release and it isn't long before you reach your climax.  You drive your [cock of player] cock into him deep and unleash your [cum load size of player] load into him.  Even as your copious semen fills him to the point that his belly is bloated and rounded like a feathery balloon and cum leaks from his beak, his body squirms atop your rod as he sprays his own meager load onto the wooden floor.  After your orgasm subsides, you find yourself still feeling rather aroused and your [ball size] could stand another draining.  Does your lust drive you to fuck him again (Y) or do your predatory instincts win out and finish the hunt (N)?";
			if the player consents:
				say "     As you resume fucking the overfull bird, he groans wetly and tries to squirm, but he's so full and too well pinned that he can hardly move.  Keeping his ass raised and his head pressed down so you and pound his feathery ass caused the load already in there to continue to well up from his beak in a growing pool.  With him stuffed so full, he makes for a wonderfully padded and squishy little birdie to fuck.  Knowing that it is your own seed that's turned him into a cum-filled fucktoy makes it all the better.";
				say "     When you climax again, pumping another [cum load size of player] load into him, the leaking cum flowing from his mouth becomes a gush of thick, white goo pouring from his gasping beak.  His taloned hands claw at the floor and his pinned wings try to flutter as he struggles for breath.  His wet gurgles fill the attic as the only thing he can manage to breathe in is your semen, filling his lungs and drowning him in your virile output.  His eyes are wide and his squirming becomes frantic, but you don't let up, clamping his beak tight and preventing him for pulling in air.  Eventually he grows weak and passes out from lack of oxygen with a final, gurgling sigh.  The pulsing of your rod pumping your seed into him doesn't stop until the beating of his heart has stopped as well.";
				say "     When you pull out and your hot cum continues to leak out of him from both ends, you can't help but grin, perversely delighted at having proven your virility in such a grisly manner.  You spread the sheet over him, though it does little to cover the extensive mess you've made.  That done, you leave his lifeless body there, distended and leaking cum into the ever-growing pool and soaking his death shroud.";
				decrease libido of player by libido of player / 3;
			otherwise:
				say "     With your lust satiated enough for now, your predatory instincts take the fore once again.  Grabbing his head roughly, one hand clamped firmly around his beak and the digging into his shoulder, you keep his upper body pressed firmly against the floor.  Knowing what's coming, the passarine's eyes are wide with fear and excitement, heart racing in his chest as you bring you beak to his throat and tear into him.  You can taste his bloody flesh in your mouth, seasoned with your cum leaking from his ripped esophagus.  With his throat torn out, the little birdie's wet, gurgling struggles soon grow weak and, with a final shudder, stop.  You tear out a few more chunks, swallowing your bloody feast before pulling your spent shaft from his cooling body.  You spread the sheet over him, leaving the nanites to do their work.";
				decrease hunger of player by 6;
				if hunger of player < 0, now hunger of player is 0;
				decrease libido of player by libido of player / 5;
		otherwise:
			say "     The chase eventually drives your songbird prey into the attic where you corner him.  Wide eyed and panting at having been trapped again, you stalk closer and closer, eventually leaping atop the little bird and bearing him down under your weight.  Grabbing both his arms, you pull them tightly behind his back, pinning his wings down as you do, and pull him into his lap.  Feeling your stiff member beneath him, his tail fans and raises, letting you get your pulsing rod lined up with his tight hole.  With a hard, painful yank on his arms, you pull him downwards, forcing him onto your [cock size desc of player] [cock of player] shaft.  He gives pained chirp, but he also moans in pleasure, especially when you force him fully down so he's seated on your large, heavy balls.";
			say "     His weak, little body can't resist as you fuck him roughly, bouncing him atop your [cock of player] manhood.  Between your raging libido and wild instincts, your captured prey receives a very hard pounding that has him moaning and chirping in pain and delight.  So excited by the chase, you give him several nips with your sharp beak that leave bloody marks on his blue feathers.  His body shudders from the wounds and the pounding he's receiving, his cock hard and pounding with excitement as his little heart races.";
			say "     Being quite aroused even before the hunt, your balls ache for release and it isn't long before you reach your climax.  You yank him down harshly, impaling him on your [cock size desc of player] cock and sending your [cum load size of player] load into him.  With so much semen coming from your huge balls, his belly is bloated and rounded like a feathery balloon.  As you watch the passarine swell, his penis twitches and throbs, spraying his much smaller load in large arcs to splatter onto the floor several feet away.  After your orgasm subsides, you find yourself still feeling rather aroused and your [ball size] could stand another draining.  Does your lust drive you to fuck him again (Y) or do your predatory instincts win out and finish the hunt (N)?";
			if the player consents:
				say "     As you resume fucking the overfull bird, he groans wetly and tries to squirm, but he's so full and tightly held that he can hardly move.  Forcing him to start bouncing in your lap again, his already overfull belly sloshes from all the cum filling him.  With him stuffed so full, he makes for a wonderfully padded and squishy little birdie to fuck.  Knowing that it is your own seed that's turned him into a cum-filled fucktoy makes it all the better.";
				say "     When you climax again, pumping another [cum load size of player] load into him, the fresh rush of cum makes him swell more and more.  His belly grows rounder and rounder with every pulse of your cock.  Releasing his arms, you grab onto his belly so you can keep his bloated body from falling off your rod until you're done.  He gurgles wetly as some of your seed wells up from his beak, but most of it stays inside his increasingly strained belly.";
				say "     Eventually, he can't take the strain any longer and his stomach bursts.  Blood, guts and loads of cum pour from his torn abdomen, spilling out across the floor.  He gives a cry that is in part one of pain, but also of relief at the pressure finally releasing.  As the life leaks out of his body, you pull him off your still spurting rod and dig your beak into his torn belly, dining upon his cum-stained viscera even as he watches until the light fades from his eyes and his head slumps down.  You enjoy a few last bites before leaving the rest.";
				say "     Looking over what your [ball size] have done, you can't help but grin, perversely delighted at having proven your virility in such a grisly manner.  You spread the sheet over him, though it does little to cover the extensive mess you've made.  That done, you leave his lifeless body there, leaking blood and cum into an ever-growing pool and soaking his death shroud.";
				decrease libido of player by libido of player / 3;
			otherwise:
				say "     With your lust satiated enough for now, your predatory instincts take the fore once again.  You push the bloated bird off of you and onto his back.  Knowing what's coming, the passarine's eyes are wide with fear and excitement, struggling to rise even as you leap atop him.  Your talons dig into his bloated belly, tearing into it and sending his entrails spilling out.  Blood, guts and cum pour from the wound as he chirps in pain.  With the scent of your prey's blood in the air, you dig your beak into his torn belly, dining upon his cum-stained viscera even as he watches.  He reaches up weakly, brushing his hand across your head in a caress before his head slumps down and the light fades from his eyes.  You enjoy a few last bites before swallowing your bloody feast.  You spread the sheet over him, leaving the nanites to do their work.";
				decrease libido of player by libido of player / 5;
			decrease hunger of player by 6;
			if hunger of player < 0, now hunger of player is 0;
			decrease libido of player by libido of player / 5;
		increase icarus_cumstuff by 1;
	otherwise:
		if icarussex6_variant is 1:	[add cycling/random variations here]
			say "     Eventually the chase leads up into the attic and you corner the little bird in the secluded room.  Panting hard, he flutters around the room as you move in.  With a sharp cry, you leap atop your passarine prey, sinking your talons into him and pressing him to the ground.  He shivers and moans as you press him onto his back and grab his little legs, spreading them forcefully and pulling his hips up to yours.  At this point, your blood is pumping hard and your instincts are in control.  With a bruisingly hard nip on his shoulder, you drive your cock into him with one harsh thrust that gets him as hard as a rock.  His cry is both one of pain and of delight.";
			say "     Hidden in the dark attic, you don't hold back, pounding into him mercilessly.  Your avian infection has its prey and is wildly lustful.  The blue bird chirps in pain and moans in delight as you take him hard.  So excited by the chase, you give him bloody bites and scratches as you manhandle his body and use him as your fucktoy.  His body shudders from the wounds and the pounding he's receiving, his cock hard and pulsing with excitement as he moans for more and to take him harder.";
			say "     His stiff member twitches each time you drive into his frail body, the spurts of precum soon being replaced by shots of cum as you send him over the edge with your rough mistreatment of his body.  His stuffed ass clenches down around your cock as he orgasms long and hard.  Even as this increases your pleasure, it drives you dig your claws into the wooden floor as you grip his little legs tighter so you can thrust harder to push into that clamped hole.";
			attempttowait;
			say "     As your climax comes, you unleash your hot seed into his bowels while tearing your beak into his chest.  His body shudders, fresh spurts of his cum splattering across you both even as his blood flows from the growing wound.  He squirms and struggles weakly, your strong, predator body easily able to restrain your prey.  The taste of fresh meat, hot with lust and fear, is delicious to you and tear into him without restraint.  In time, his struggles cease, his arms falling to the floor and his body hanging limp as you continue to tear into him.  You pull your spent shaft and bloody beak from his unmoving, lifeless body, swallowing down the last visceral mouthful.";
			increase icarussex6_variant by 1;
		otherwise if icarussex6_variant is 2:
			say "     The chase eventually leads up into the attic and you corner the little bird in there.  Wide eyed and short of breath, he backs himself into a corner as you draw nearer.  With a sharp cry, you leap atop your passarine prey, digging your talons into him and slamming him against the wall.  He shivers and moans as you lift the little fellow with ease and and spread his legs wide.  Grinding your stiff manhood against his feathery bottom, you are caught up in your wild, instinctual lust and sink your claws into his thighs even as your cock plows into his ass.  He releases a pained chirp, but his cock throbs and pulses, full and hard with arousal, the little bird delighting in the painful mistreatment of his body.";
			say "     Safe from prying eyes in the secluded attic, you don't hold back, pounding into him mercilessly.  Your avian infection has its prey and is wildly lustful.  The blue bird chirps in pain and moans in delight as you thrust into him again and again, battering his well-used ass with your cock and his body against the wall behind him.  With your instincts running wild, you dig your beak into his shoulder and your claws deep into his legs.  And while he whimpers and moans from you tearing into him, there are many moans of pleasure mixed in with his cries of pain.  His stiff shaft pulses and throbs with excitement as he cries out for you to fuck him harder.";
			attempttowait;
			say "     Seeking to fuck him all the harder, you wrench his legs further up and apart.  There comes a tearing pop as you wrench one of his legs from its socket.  He cries you loudly and cums messily, spraying his seed onto you both even as his eyes water from the pain.  Buried deep inside him now, your cock pulses and throbs, dumping your [cum load size of player] load into your mutilated prey.";
			say "     When you're done filling him, you drop him unceremoniously to the floor, his leg twisted at an unnatural angle.  He struggles to move, his wings flapping weakly.  The sight of the injured bird instantly captivates the attention of your predatory instincts and you pounce atop him, taloned feet digging into his belly, tearing out his entrails.  The scent of his blood and his fear are thick in the air, smelling wonderfully exciting to you.  As he starts to grow weak, you bury your beak into his open belly, tearing into his flesh for a grisly meal.  As the light fades from his eyes, he brushes his hand lightly across your face[one of], his liver lodged in your bloody beak[or], a chunk of his abdominal muscles dangling from your beak[or]as you tear a length of his intestines from his gored belly[at random].  You tear out a few more pieces of your passarine prey before moving back from his lifeless body, swallowing down the final, visceral mouthful.";
			increase icarussex6_variant by 1;
		otherwise:
			say "     Cornering him in the attic again, you move in to grab him.  He tries to get away, fluttering around the room and trying to reach the door, but you manage to catch him by the ankle and pull him out of the air.  You swing him to the ground, bashing him hard against [one of]the wooden floor[or]a wooden truss[or]the wooden wall[at random].  He cries out in pain as the breaking of bone can be heard, a wing snapped from the blow.  Seeing your prey wounded, wing unable to flap properly, your avian instincts drive you to pounce atop him.  Digging your beak into his wounded wing, you hold the struggling songbird and drive your stiff cock into his ass, causing him to moan and spurt precum across the floor despite (or perhaps because of) the pain.";
			say "     With your instincts running wild, you revel in having your prey at your mercy and fuck him hard.  Lost in your dark lusts, you can only grin as you hear the rough cracking and grinding of his broken wing bones as you pull on it.  And while this makes him chirp and whimper in pain, he also moans and pushes back into your thrusts as best he can.  His cock is hard with arousal, twitching and dribbling precum onto the wood floor with every hard bash of your penis against his prostate.";
			say "     Excited by the taste of his blood flowing into your beak as you dig it deeper into his broken wing, you give a hard thrust and climax.  Shot after shot of your thick seed is pumped into your wounded prey, claiming his ass even as you ravage his body.  Digging your claws into his ass, you grip him tightly while filling him with your [cum load size of player] load.  Red stains his blue feathers as you fuck him into a stupor.";
			attempttowait;
			say "     Your beak sinks deeper into his wing, biting into the meaty flesh.  As you tear a chunk of raw meat from his shattered wing, the weak passarine releases a long moan and cums, spraying splatters of white cum onto the bloody floor.  This quivering asshole around your cock draws a few more spurts of semen from you, adding to your instinct-addled enjoyment of your grisly meal.  Even as the little bird's orgasm wanes, so does his consciousness, passing out from blood loss as you dine upon the raw white meat of his wing.  It is only once he starts to grow cold that you pull out and release him.";
			now icarussex6_variant is 1;
		say "     Your dark impulses satiated in giving the songbird his perverse release, you wipe the blood from your beak and your hands.  You shift his body into a more comfortable position and drape the sheet over it like a blanket.  Were it not for the crimson stains and the coppery scent, one could almost believe he were just resting.  And given the microscopic nanites working to restore him, in a way he is.  As you leave close the secluded room behind you, you hope your latest assault upon him was not too much to recover from.  Still feeling the excitement of the hunt and the kill, your concern is tainted by the longing for the next time you can snare your pretty prey bird.";
		decrease hunger of player by 6;
		if hunger of player < 0, now hunger of player is 0;
		decrease libido of player by libido of player / 5;
	decrease humanity of player by 20;
	remove Icarus from play;
	now hp of Icarus is 9;
	now ttIcarus is turns;

Part 3 - Icarus Dom Sex

to say icarussex1_dom:
	say ".  The sight of it makes you lick your lips and when he lands, you're already on your knees and pressing your face into his groin to get at it.  He chuckles and grips your head firmly, [one of]slapping his cock against your cheek before letting you take it into your mouth[or]ramming his cock into your open mouth[or]grinding his hard shaft against your face before allowing you to suck on it[at random].";
	say "     The taste of the bird's manhood excites you greatly, making you eager to suck of the dominant bird.  Your tongue plays across his firm, warm flesh and laps up the precum dribbling from it.  He keeps a firm grip on you, pumping his hips as he thrusts into your open mouth.  You can't help but feel aroused at the idea that you're submitting yourself to the small bird's control, allowing him to use you as he pleases.  The blue passarine certainly seems pleased as well, grinning as he enjoys his cocksucking fucktoy.";
	say "     You run your hands through his soft feathers, caressing the soft, downy feathers covering his ballsac.  When his talons dig into your shoulder and his thrusting accelerates, you suck down on him all the harder, eager to please your diminutive master.  Your efforts are rewarded when you feel his cock pulsing in your mouth, sending his hot semen across your tongue and down your throat.  You swallow it all down dutifully, savouring the lingering taste of it on your palate.  He gives your ass a swat and flies back up into the rafters, chirping happily at his virility.";

to say icarussex2_dom:	[m/f]
	setmonster "Blue Chaffinch";
	choose row monster from the table of random critters;
	if a random chance of 1 in 2 succeeds:
		say ".  Your eagerness for it has you bending over, your wet pussy already on display for him when he lands.  He [one of]leans in and nips firmly at your hip with his sharp beak[or]gives your rump a hard swat, making you moan[or]leans in and runs his tongue across your dripping folds[at random] before moving in to mount you.";
		say "     After teasing you with a few brushes of his cock across your [cunt size desc of player] pussy, getting you to moan your need to be fucked again, he chirps his pleasure at your submission and thrusts into you hard.  He keeps a firm grip on your ass, claws digging in a little as he drives his seven inch shaft into you over and over again.  You push back into every thrust he makes, proving yourself to be the wanton slut for his cock that he reminds you again you are.  There's just something about giving up control to the aggressive little bird that really turns you on to the point that you can't resist.  His rough treatment of your body is exciting as well, his clear power over you arousing you both greatly.";
		say "     You moan and whimper beneath him as he bites firmly onto your shoulder and grips your legs with his taloned feet, the pain only enhancing the pleasure running through you as he pounds harder and harder.  His wings flap frantically as he plows into you zealously, soon cumming as he sends shot after shot of his avian cum into your hot, needy womb.  You can feel his semen flowing into you, seeking to impregnate you.  Your pussy quivers around the throbbing, pulsing rod, your own orgasm making you cry out.  When he's done, he dismounts from you and takes a moment to look over his handywork in the form of his load leaking from your well-fucked hole before flying back up to the rafters.[fimpregchance]";
	otherwise:
		say ".  Your arousal grows as you eye the stiffening object of your desires and strip down quickly.  You spread yourself on the floor and start fingering your pussy, longing to replace those digits with the aggressive passarine's manhood.  He struts around you, looking you over and pumping a few spurts of pre across your [bodytype of player] body.";
		say "     Having feasted his eyes on his lustful slut's body, he moves atop your [bodydesc of player] form and lines up his cock.  Wasting little time, he thrusts confidently into you while his taloned hands grab your [if breast size of player > 0][breast size desc of player] breasts[otherwise]hips[end if].  His seven inch shaft pumps steadily into your wet, needy cunt as the chaffinch chuckles.";
		say "     'Such a horny slut you make, spread and moaning for your birdie lover.  You look much better this way,' he says between thrusts, his hands running over your body.  His words and his touch make you feel both demeaned and sexy all at once, pleased to draw the confident avian's lecherous interest and lustful for more.  Your body responds to your growing arousal, causing you to pant and moan as your pleasure builds.";
		say "     You moan and whimper beneath him as he grips your ass firmly, digging his claws in as he thrusts hard, jabbing his full length into you just as he starts to cum.  The pain of his talons gets muddled with the pleasure you feel from his pulsing rod and the hot spurts of semen coming from it.  You cry out in ecstasy, cunt spasming around his cock, drawing his avian seed into your womb.  You grip his hips, keeping him buried inside you, wanting to get every last drop.";
		say "     'Such a good, needy hen.  Eager to get filled by your master's eggs, are you?' he says with a smirk on his beak.  He rubs his hand across your belly as he pulls out.  You sigh softly at his touch, enjoying the warm knowledge that his virile load's nestled deep inside you.  The thought of being knocked up by him, made into his breeding hen, is very exciting to you at this moment [if player is impreg_able]and you hope to have a clutch growing in you soon[otherwise if player is impreg_ok]and you long to get him to breed you again when you're ready[otherwise]and you find yourself longing to find a means to let that happen[end if].[fimpregchance]";


to say icarussex3_dom:	[m/m]
	setmonster "Blue Chaffinch";
	choose row monster from the table of random critters;
	if a random chance of 1 in 2 succeeds:
		say ".  Your eagerness for it has you bending over, your ass already on display for him when he lands.  He [one of]leans in and nips firmly at your hip with his sharp beak[or]gives your rump a hard swat, making you moan[or]slides a pair of slick fingers into your butt[at random] before moving in to mount you.";
		say "     After teasing you with a few brushes of his cock across your pucker, getting you to moan your need to be fucked again, he chirps his pleasure at your submission and thrusts into you hard.  He keeps a firm grip on your ass, claws digging in a little as he drives his seven inch shaft into you over and over again.  You push back into every thrust he makes, proving yourself to be the wanton slut for his cock that he reminds you again you are.  There's just something about giving up control to the aggressive little bird that really turns you on to the point that you can't resist.  His rough treatment of your body is exciting as well, his clear power over you arousing you both greatly.";
		say "     You moan and whimper beneath him as he bites firmly onto your shoulder and grips your legs with his taloned feet, the pain only enhancing the pleasure running through you as he pounds harder and harder.  His wings flap frantically as he plows into you zealously, soon cumming as he sends shot after shot of his avian cum into your squeezing bowels.  You can feel his semen flowing into you as his glans batters your prostate.  Your anus quivers around the throbbing, pulsing rod, your own orgasm making you cry out.  When he's done, he dismounts from you and takes a moment to look over his handywork in the form of his load leaking from your well-fucked hole before flying back up to the rafters.[mimpregchance]";
	otherwise:
		say ".  Your arousal grows as you eye the stiffening object of your desires and strip down quickly.  You lay sideways on the floor, one thigh raised to give your avian stud a good view of your ready ass.  You run a finger between your cheeks and tease at your crinkled hole, longing to have that digit replaced with the aggressive passarine's manhood.  He struts around you, looking you over and pumping a few spurts of pre across your [bodytype of player] body.";
		say "     Having feasted his eyes on his lustful slut's body, he moves into position and lines up his cock.  Wasting little time, he thrusts confidently into you while his taloned hands grab your raised leg.  He grips you tightly as he pumped his seven inch shaft steadily into your tight, needy asshole while the chaffinch chuckles.";
		say "     'Such a horny slut you make, spread and moaning for your birdie lover.  You look much better this way,' he says between thrusts, his hands running over your [bodydesc of player] body.  His words and his touch make you feel both demeaned and sexy all at once, pleased to draw the confident avian's lecherous interest and lustful for more.  Your body responds to your growing arousal, causing you to pant and moan as your pleasure builds.";
		say "     You moan and whimper beneath him as he grips your leg firmly, digging his claws in as he thrusts hard, jabbing his full length into you just as he starts to cum.  The pain of his talons gets muddled with the pleasure you feel from his pulsing rod and the hot spurts of semen coming from it.  You cry out in ecstasy, ass squeezing around his cock, milking him for as much avian seed as he'll give.  You grip his hips, keeping him buried inside you, wanting to get every last drop.";
		say "     'Such a good, needy hen.  You're much better suited as the bottom in our relationship, aren't you?' he says with a smirk on his beak.  He gives your ass a squeeze as he pulls out.  You moan softly at his touch, enjoying the warm knowledge that his virile load's nestled deep inside you.  The thought that you're better off as the birdie's slutty bottom lingers in your mind, making you look forward to submitting to the confident male again soon.";


Section 3 - The Tell-Tale Icarus

an everyturn rule:
	if hp of Icarus is 7 and skipturnblocker is 0:
		if turns is even and ttIcarus - turns >= 8 and tti_scene is 2:
			if player is in bunker or player is in grey abbey library:
				say "     Feeling uneasy and nervous, your glance always seems to stray towards the attic and the body you've left there.  You wander outside for a short walk, hoping to clear your head of the dark thoughts that cloud your mind.  But you find little solace, your guilt returning, making you feel like you're being watched.  The rare roaming mutant you spot seems to stare at you, as if they know what you've done.  You know that can't be true, but you feel it all the same.";
				say "     Things get worse as you take a wrong turn and momentarily lose track of where you are.  As you're looking around to get your bearings, you hear the flutter of wings.  As you turn to face the noise, there is a flash of blue just outside your vision.  You turn again, but it is gone.  When a crow caws in the distance, you spin around and start to run.  Looking around wildly, you stumble out of the alleyway, eventually coming to a street you recognize and quickly make your way back to the library, heart pounding in your chest.";
			otherwise:
				say "     Feeling uneasy and nervous, you wander outside for a short walk, hoping to clear your head of the dark thoughts that cloud your mind.  But you find little solace, your guilt returning, making you feel like you're being watched.  The rare roaming mutant you spot seems to stare at you, as if they know what you've done.  You know that can't be true, but you feel it all the same.";
				say "     Things get worse as you take a wrong turn and momentarily lose track of where you are.  As you're looking around to get your bearings, you hear the flutter of wings.  As you turn to face the noise, there is a flash of blue just outside your vision.  You turn again, but it is gone.  When a crow caws in the distance, you spin around and start to run.  Looking around wildly, you stumble out of the alleyway, eventually coming to a street you recognize and quickly make your way back, heart pounding in your chest.";
			now tti_scene is 3;
		otherwise if tti_scene is 4 and a random chance of 2 in 5 succeeds:
			if player is in grey abbey library or player is in bunker:
				if player is in grey abbey library:
					say "     You pace around the library, trying your best to ignore the attic and the body you left up there.  You strongly consider going up there and trying to figure out some means of removing it in secret, but these thoughts are brought to a crashing halt when you see a familiar blue figure outside in the distance.  You rush to the doors and around the corner, heading to the intersection.  You look around, but there is no sign anyone was there.";
				otherwise if player is in bunker:
					say "     You pace around the bunker, trying your best to ignore the attic and the body you left up there.  You strongly consider going up there and trying to figure out some means of removing it in secret.  Drawn back again, you step out into the library and turn towards the stairs, but you are brought to a crashing halt when you see a familiar blue figure outside in the distance.  You rush to the doors and around the corner, heading to the intersection.  You look around, but there is no sign anyone was there.";
				say "     Sweating heavily, you rush back inside and hurry upstairs.  Your pace drops quickly though, reduced to barely ascending a step every few seconds.  You slowly make your way back upstairs and across the rafters to the secluded attic.  You pause outside the door, screwing up your courage to enter.  As the room is revealed, the bloody sheet is still there, but the body is gone.  Stumbling into the room on weak knees, you pull aside the sheet, needing to see for yourself, finding only a bloody stain on the floor where you did the killed the poor bird.";
				attempttowait;
				say "     You drop to your knees, your mind trying to comprehend what's happening.  Looking around, you spot a nearby open window.  Did something fly in and make a grisly meal of your victim?  Or worse, did the infection make him into a zombie or ghost, now haunting you?";
				say "     As this horrifying thought sends a shiver down your spine, the feeling lingers and you realize you're not alone in the increasingly cramped room.  Turning slowly, you find Icarus standing by the door, looking gaunt and partially molted, especially ragged around the red scar across this throat.  Convinced you are indeed being haunted, the bird back as a shambling horror from beyond the grave, you scramble back quickly.  You only make it a few feet before you crash into a stack of empty boxes, sending them tumbling down onto you.  Screaming wildly that you're sorry, the shock causes you to black out.";
				attempttowait;
				say "    When you come to, Icarus is beside you, wiping your brow with a damp rag.  It takes you a moment to take this in, but you sit bolt upright when you do.  'It's alright.  You're fine,' he says in his musical voice.  There is a little roughness to it, but not what you'd expect from some undead horror come back to haunt you.";
				say "    'Me?  I'm fine?!' you ask, a hint of madness in your voice.  You pull yourself together, looking at him more carefully.  You're now able to realize that he's neither dead nor undead, looking more like he's been sick or starved.  The scar at his throat is not the same bloody wound you inflicted, but a mostly healed scar.  Touching it gently, you can feel the warmth of his living flesh, and not some cold and clammy zombie.";
				attempttowait;
				say "    'You've seen how this infection keeps healing everyone.  I guess it'll take a lot more than that to kill someone for good now.  I'm not sure how long I was out, but I was really weak when I came to.  Barely knew what was going on, only that I was so tired, but also so hungry.  I guess recovering from that took a lot out of me, so food was the only thing I could think of for a while.";
				say "    'Eventually I found some and things started to come back into focus slowly as I continued to recover.  I... I considered staying away, but kept wandering back around here.  I'd watch you sometimes, but I couldn't decide if I wanted to return after what happened.'  He shivers a little, wringing his hands.";
				attempttowait;
				say "    After a long pause, you ask him what it was like.  'Scary... but exciting.  When you let loose like that, my little heart was racing, my body was going wild.  It hurt, but it felt so good as it hurt.  I'd never been so turned on in my life.'  You're startled by his response, having misunderstood your question and stunned you with his response to it.";
				say "    He puts his little hands on your leg, stroking it gently.  'I'd like to feel that way again, too.  I'm pretty much healed, so the next time you want to be the wild predator and tear into your prey, go right ahead,' he says with a grin.  With that, he gets up slowly and heads out, leaving you with much to think about.";
				now hp of Icarus is 8;
				move Icarus to Grey Abbey Library;
			otherwise:
				say "     [one of]That uneasy feeling of being watched returns.  You subconsciously wipe your hands[or]The sight of a blowing blue rag at the edge of your vision startles you[or]For a moment, you think you spot Icarus, but when you chase after the apparition, it is gone[or]You can't help but feel edgy around others, always worried they'll somehow know what you've done, smell the blood on your hands[or]A distant birdsong startles you, setting your heart racing[at random].  The stress of this is really getting to you.  You consider heading back to the library to confront your guilt.";
		otherwise if a random chance of 3 in 10 succeeds:
			if player is in bunker or player is in grey abbey library:
				say "     [one of]You have a nervous, uneasy feeling, as if you're being watched.  A shiver runs down your spine.[or]Your mind starts to stray to what happened to Icarus, but you push the thoughts away.[or]You can't help but glance up at the rafters, drawn to the attic where the deed was done.[or]Glancing upstairs, you try to convince yourself that it was the infection, that you're not at fault, but your thoughts don't ring true.[or]For a moment, the shadows on your hands make them look like they're covered in blood.  You feel momentarily ill and want to wash them thoroughly.[or]You feel an uneasy chill, as if someone knows what you've done.[in random order]";
			otherwise:
				say "     [one of]You have a nervous, uneasy feeling, as if you're being watched.  A shiver runs down your spine.[or]Your mind starts to stray to what happened to Icarus, but you push the thoughts away.[or]When a passing songbird reminds you of Icarus, you feel a rush of guilt.  You try to convince yourself that it was the infection, that you're not at fault, but your thoughts don't ring true.[or]For a moment, the shadows on your hands make them look like they're covered in blood.  You feel momentarily ill and want to wash them thoroughly.[or]You hear the chirping of a bird, not unlike Icarus's musical tune, but scratchy and rough, almost dirge-like.  It stops as suddenly as it started, leaving you feeling ill at ease.[or]You feel an uneasy chill, as if someone knows what you've done.[in random order]";
			if tti_scene < 2, increase tti_scene by 1;
			if tti_scene is 3, now tti_scene is 4;
	otherwise if hp of Icarus is 9:
		if ttIcarus - turns >= 12:
			move Icarus to Grey Abbey Library;
			now hp of Icarus is 10;
			if ( player is in bunker or player is in grey abbey library ) and skipturnblocker is 0:
				say "     You hear the pleasant birdsong of your blue passarine up in the rafters again, signalling that he's recovered and returned to his perch[if player is in grey abbey library].  When you look up at him, he grins and gives his rear a tantalizing shake, eager for more[end if].  Some dark part of you is excited at the prospect of running wild upon him again sometime soon.";
				increase libido of player by libido of player / 5;
				if libido of player > 100, now libido of player is 100;


Section 4 - Icarus Dominance

to say icarussex0_dom:
	setmonster "Blue Chaffinch";
	choose row monster from the table of random critters;
	say "     Icarus seems to sigh when you signal for him to come down.  He's rather slow at coming down to join you, taking his time before flying down to the ground floor.  He preens one of his wings as he gives you a sidelong glance.";
	say "     'I'm not quite sure what you had in mind, but you're not giving me what I thought was coming.  You get me all worked up to be the songbird pet to a big, strong, male predator and you go and change on me.  I might've been better off the way things were before,' he says to you, his demeanor and posture changing as his voice changes pitch towards the end, returning to his previous, tough-guy attitude.  Moving in closer, he runs his taloned hands over your body, gripping your shoulders quite firmly.  'Maybe you'd rather be on the bottom from now on,' he says, pushing you firmly back onto one of the tables.";
	say "     The smaller bird's burst of frustration-driven dominance is exciting, tempting you into letting him fuck you.  Shall you let him (Y) or will you reassert your dominance (N)?";
	if the player consents:
		say "     Your lust getting the best of you, you don't resist as the aggressive little bird moves his throbbing cock into position.  Excited by his dominant attitude, you spread your legs for him, allowing the blue passarine to press his leaking glans against your [if cunts of player > 0]wet pussy[otherwise]tight anus[end if].  Chuckling, he digs his claws firmly into you and thrusts into you with a hard push of his hips.  You moan at the rough intrusion, but are aroused by it as well.";
		say "     Pounding away at you now, the blue bird has a smug grin on his beak, clearly pleased at having turned the tables on you.  As his pulsing rod dives into your [if cunts of player > 0]wet[otherwise]tight[end if] hole again and again, Icarus chuckles and nips firmly at your shoulder with his beak.  Your arousal continues to climb as he works his cock with some skill and his hands run over your [bodytype of player] body.";
		say "     'Mmm... that's right - moan you little chick.  You like it much better this way, don't you?' he says, [if cocks of player > 0]stroking your cock[otherwise]pinching your nipples[end if] as he does.  He pauses in his thrusting and even starts to pull out, causing you to whimper with need.  'Such a needy slut you are, moaning to get fucked by a little birdie.  Well, if you want me to finish fucking you, you'll be admitting you want to be my fucktoy from now on.'";
		say "     You bite your lip and try to resist, but you're far too aroused.  The feel of his hard, throbbing cock with only its glans left inside you, about to be taken out of your needy hole, has you whimper again and relent.  Begging him to fuck you, to make you into his birdie fucktoy, you cry out in relief as his cock moves again, this time inward.  Quite pleased with himself, Icarus chirps as he nips at you, giving you the hard fucking your body's crying out for by this point.";
		say "     Soon enough, you are pushed over the edge as the aggressive passarine [if cocks of player > 0]pumps firmly at your shaft[otherwise]pinches your clit[end if] and cry out in lustful ecstasy.  The feel of your [if cunts of player > 0]cunt[otherwise]ass[end if] squeezing down around his shaft as you orgasm is enough to put his arousal over the top and his cock pulses and throbs inside you, spurting shot after shot of avian cum into your [if cunts of player > 0]womb[otherwise]bowels[end if], cementing his claim upon you.  As he's finishing up, he pulls out and strokes his last few spurts onto your loins, further marking you as his plaything now.  As you sag back onto the table, panting after the rough fucking you got, the last of your thoughts of dominance over the chaffinch fade away completely and you're left as his fucktoy now.[impregchance]";
		Icarusinfect;
		now hp of Icarus is 50;
	otherwise:
		say "     You push aside the temptation to let him fuck you and grab the blue bird firmly by the shoulders.  Being small and light, you lift him easily and turn so he's the one pinned back on the table now.  Icarus tries to wrestle his way back on top, but you are, as proven in the past, much stronger than he is.  Squeezing down hard on his shoulders and slamming him back onto the table, you growl for him to remember his place.";
		if cunts of player > 0 and cocks of player > 0:		[herm]
			say "     Being partially male and partially female, you are presented with the option of riding the bird's cock (Y) or fucking him again (N).";
			if the player consents:
				say "[icarussex0_sub_f]";
			otherwise:
				say "[icarussex0_sub_m]";
		otherwise if cunts of player > 0:	[female]
			say "[icarussex0_sub_f]";
		otherwise:		[male]
			say "[icarussex0_sub_m]";


to say icarussex0_sub_f:
	say "     'So you're thinking that you can just take what you want if I'm not the big, bad birdie?  Is that it?' you growl, slamming him back onto the table again.  'Whether I'm a predatory bird right now or not, you're still my songbird slut and that's that.'";
	say "     You climb atop him and grab his cock, which is rock hard from the rough treatment.  'Looking to get a little pussy, are you?  Well, I'll let you get some, but don't forget that I'm the one giving it to you.  You're not taking it.  And if you don't get any again for a while, I don't want to hear a peep out of you about it,' you add, squeezing his balls quite hard, making him release a pained cheep.";
	say "     Feeling quite aroused by your dominance of the little upstart, you grind your hips over his, letting your juices wet his throbbing rod.  Giving his nuts another squeeze, you slam yourself down onto his shaft and start riding him vigorously.  The little fellow ends up getting shaken about roughly as you ride his seven inch cock for all its worth.  His cries are a mix of moans and chirps of pleasure despite (or perhaps even because of) some rather hard thumps onto the hardwood table.";
	say "     Between his pent-up desires and the rough treatment, he doesn't end up holding out very long.  After a few minutes of the vigorous fucking, he digs in his talons, clawing at the wood as he thrusts up into you and cums with a musical cry of ecstasy.  Feeling his pulsing, spurting rod inside you, you moan and slam down onto his rod a few more times before cumming as well.  You only stop riding after your climax has passed, heedless of his squirming as his spent shaft becomes oversensitive after his own orgasm has ebbed.";
	say "     Before you let your little birdie fly back up to the rafters, you grab his head roughly and pull him close.  'You're my songbird slut now, for me to use - or not use - as I see fit.  There's more going on around here than just you, little birdie.  Don't forget that again,' you say with a firm growl before pulling him off the table and onto the floor before walking away.";
	now lust of Icarus is 101;


to say icarussex0_sub_m:
	say "     'So you're thinking that you can just take over as the big, bad birdie if I'm not being one?  Is that it?' you growl, slamming him back onto the table again.  'Whether I'm a predatory bird right now or not, you're still my songbird slut and that's that.'";
	say "     You grab his little legs and lift them up, spreading them.  You can see that his cock has gotten rock hard from the rough treatment.  'It looks like you just need a reminder that I'm on top, not you.  So I set the rules.  And rule number one is [']Little upstart birdies get fucked.[']  And if you don't get any again for a while, I don't want to hear a peep out of you about it,' you add, squeezing his balls quite hard, making him release a pained cheep.";
	say "     Feeling quite aroused by your dominance of the little upstart, you grind your [cock size desc of player] cock against his ass, making the little guy squirm a bit as part of him tries to resist.  But he also moans and his cock twitches, the passarine clearly turned on by the prospect of being violated by you again.  Not wanting to disappoint, you grab his little legs in a tight grip and slam your [cock of player] rod right into him.  He gives a loud, chirping cry of pain and pleasure at being so roughly taken, spurts of his precum splattering across his blue breast.  Once buried in the moaning bird's stretched anus, you pound his downy ass for all its worth.  His cries are a mix oof moans and chirps of pleasure despite (or perhaps even because of) some rather hard thumps onto the hardwood table.";
	say "     Between his pent-up desires and the rough treatment, he doesn't end up holding out very long.  After a few minutes of the vigorous fucking, he digs in his talons, clawing at the wood as his stretched hole clenches down on you and he cums messily with a musical cry of ecstasy.  Watching his pulsing, spurting rod spraying its white load across his blue chest, , you moan and slam your rod into him a few more times before cumming as well, pumping your [cum load size of player] load into the thoroughly fucked bird.  You only stop riding after your climax has passed, heedless of his squirming as ass and prostate become oversensitive after his own orgasm has ebbed.";
	say "     Before you let your little birdie fly back up to the rafters, you grab his head roughly and pull him close.  'You're my songbird slut now, for me to use - or not use - as I see fit.  There's more going on around here than just you, little birdie.  Don't forget that again,' you say with a firm growl before pulling him off the table and onto the floor before walking away.";
	now lust of Icarus is 100;




to Icarusinfect:
	setmonster "Blue Chaffinch";
	choose row monster from table of random critters;
	if "Male Preferred" is listed in feats of player:
		now sex entry is "Male";
	otherwise if "Herm Preferred" is listed in feats of player:
		now sex entry is "Both";
	otherwise:
		now sex entry is "Female";
	infect;


[ hp of Icarus ]
[ 0 = untamed  ]
[ 1 = at bunker, no talk ]
[ 2 = talked  ]
[ 3 = taught to suck cock ]
[ 4 = sucked cock of pred again ]
[ 5 = rougher sex w/pred ]
[ 6 = had attic sex, light version ]
[ 7 = had attic sex, dark version ]
[ 8 = back ]
[ 9 = gone ]
[ 10 = back again ]
[ 50 = dom ]
[ 51 = dom - talked ]

[ lust of Icarus ]
[ 0 - 6 = building frustration ]
[ 7+ = attempt to dom ]
[ 100 = sub male-only ]
[ 101 = sub m/f allowed ]


Icarus ends here.