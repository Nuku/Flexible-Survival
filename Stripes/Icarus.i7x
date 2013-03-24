Version 1 of Icarus by Stripes begins here.
[Version 0 - Raw character, no content]

"Adds Icarus the Blue Chaffinch as an NPC to the Flexible Survival game"

Section 1 - Icarus the Blue Chaffinch

Icarus is a person.
The description of Icarus is "[Icarusdesc]";
The conversation of Icarus is { "Wilder!" }.

[See Blue Chaffinch file for collecting Icarus.]

the scent of Icarus is "[if facename of player is listed in infections of Avianpredlist]The blue songbird smells like prey.[otherwise]The blue songbird has a soft, pleasant scent.[end if]";


to say Icarusdesc:
	say "     This avian fellow is covered in bright blue plumage that is very even in colour across most of his body.  Only the ends of his wings and tail are a much darker midnight blue on the flight feathers, and his lower belly and the underside of his narrow tail are downy and white.  He has a puffy looking body compared to his slender arms and legs thanks to his soft feathers.  His head is rounded and shaped like that of a finch, though his beak is thicker.  Double-checking with one of the nature books in the library, you've confirmed that your assumption was right and that he's almost certainly been infected to resemble an exotic blue chaffinch.  His eyes are like black beads with a touch of white feathers just above and below.";
	say "     Lacking a name of his own, you've decided to call him Icarus.  Once strong and arrogant, your repeated rough treatment of him as a predatory avian has affected the passerine to the point that he's accepted to become your songbird slut.  He usually spends his daytime hours up in the rafters, singing softly[if the number of booked people > 2] for the others[end if].  He seems fairly happy here, as if accepting the spacious library as his birdcage.";


Instead of conversing the Icarus:	[***]
	if hp of Icarus is 0:
		say "ERROR-Icarus-0L: You should not be able to find me!";
	otherwise if hp of Icarus is 1:
		say "     He looks around the library in a very bird-like manner, his head twisting and turning as he looks.  This is a pretty nice place you've got in here.  Pretty spacious and the rafters make for a good perching spot.  It seems safe enough, too.  Good little cage for your caught birdie.'  Now that he's not trying to sound tough, you notice that he's got a soft, musical voice.";
		say "     He fidgets around for a moment, his wings rustling a little.  'Look... I... can you play with me like that again soon?' he asks with a touch of nervous excitement in his voice.  'I'd never have gone for that before, with a guy, especially not on the bottom.  But... just... something about it - the terror, the pain, the viceral lust.  I've never been so turned on in my life and I want you to do it again.  You were so... powerful - your talons grabbing me, your beak flashing - my blood was pumping with fear and anticipation before you tore into me with that cock of yours.  Any time you feel like being the scary predator bird, I'll be your weak, delicious prey.'";
		now hp of Icarus is 2;
	otherwise:
		say "***";


Section 2 - Sexxxings

Part 0 - Basic Sex Menu

the fuckscene of Icarus is "[sexwithIcarus]".

to say sexwithIcarus:			[***]
	if hp of Icarus is 0:
		say "ERROR-Icarus-0F: You should not be able to find me!";
	otherwise if hp of Icarus is 1:
		say "     How about you talk to him first before fucking the little songbird again.";
	otherwise if cocks of player is 0 and cunts of player is 0:
		say "     Lacking any gender of your own, you feel there's little point in going to Icarus for sex.";
	otherwise if lastfuck of Icarus - turns < 6:
		say "     'Oh, I'm still worn out from the last time, but I [if bodyname of player is listed in infections of Avianpredlist and facename of player is listed in infections of Avianpredlist]do so want to go again soon[otherwise]hope you'll consider being the scary predator next time[end if].'";
	otherwise if hp of Icarus is 2:
		if cocks of player is 0:
			say "     The blue bird blushes a little and looks away, his wings fluttering.  'Look, before I might've, but... you see... to me you'll always be my fearsome, male hunter and it just wouldn't feel right.  If I wanted some pussy, I could just go out on the town and get it,' his old, macho voice coming back a bit for a bit before returning to normal.  'But for you, I just want to be your songbird slut and your prey, like you said.'  He shifts around eagerly on his taloned feat, clearly remembering the previous times you had your way with him.";
		otherwise if bodyname of player is listed in infections of Avianpredlist and facename of player is listed in infections of Avianpredlist:
			say "***";
		otherwise:
			say "***";


Icarus ends here.