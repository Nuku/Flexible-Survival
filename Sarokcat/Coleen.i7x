Coleen by Sarokcat begins here.
"Adds a military npc to Flexible Survival with a variety of responses and goals..."

Section 1- Coleen events

Womanfruittree is a situation.
The sarea of Womanfruittree is "Park".
Coleendeclined is a number that varies.


Instead of resolving a Womanfruittree:
	If coleendeclined is 1:
		say "Wandering back through the park, you spot the large tree in the distance, and decide to wander over to see what became of the stranded military woman.  Upon reaching the tree you find that [one of]large scratches mar the tree from where something large and winged clawed at it, and the woman is gone, parachute and all.  It looks like one of the wyverns stopped by to roost and found itself a new pet.[or]as you expected the woman is gone when you return, her parachute straps slashed open by something with sharp claws, looking around the area you can see where a large cat of some kind climbed up the tree to get to her, and there are plenty of scratches and signs of clawing at the ground under the tree nearby where the beast obviously took her, the scent of felinoid musk lingering in the area where you find several scraps from her uniform. Looks like some kitty found itself a mate.[or]the woman is gone, and the entire area reeks with the scent of one of those strange large skunks, it looks like one of the creatures wandered upon the trapped woman, and decided to spray the area several times.  The straps of her parachute seem to have stretched and finally broken off the woman as she likely changed under the influence of the skunks spray, letting her fall to the ground to get to know the skunk who sprayed her better.[or]the woman is gone, though it seems like she finally managed to find her way down on her own as her booted footprints lead off towards the city, still it isn[apostrophe]t likely she will survive out there unprepared for long, you are just sorry you wont get to know what kind of creature finally manages to catch her.[or]there is a brand new drone wasp still tangled up in the straps of a parachute, wings waving futilely as she tries to escape, apparently one of the wasps in the park found her and flew up to sting her a few times while she couldn[apostrophe]t dodge, you find yourself smiling slightly at her silly antics as she tries to escape, before continuing on your way.[or]someone came and found the woman hanging here, and decided to take her with them, from all the hoofprints surrounding the tree, it looks like a small herd of equinoids found her, and decided she would be a nice addition to the herd.[or] the parachute straps are now empty, from the looks of things something climbed up the tree and helped her out of them, examining the tree and the surrounding area, you find signs that a lizard woman came by here recently, and even more amusingly, signs that two lizard women left.[or]the woman is gone, but the ground underneath where she was hanging is still damp and you see small pools of white liquid dotting the grass. Taking a closer look at the liquid you realize it is fresh milk, and find yourself smiling as you realize one of the bovines wandering the park must have found her, and given her a nice udder full of milk all her own.[or]there are large claw marks all over the tree where something large climbed it, and the woman has vanished although the shreds of her harness hang empty from the tree, examining the marks in the tree, you end up deciding that one of the bears in the area decided to climb the tree to claim itself a different kind of honey.[or]the womans empty harness is has been dragged up among the branches of the tree, before finally becoming freed from the woman, looking up in the tree you see a flash of a large fluffy squirell tail among the branches, and grin as you leave the area before the new squirell woman spots you.[or]the harness is hanging empty up among the branches of the tree, where from the looks of things someone or several someones had a lot of fun,  from the bits of blue fur around and the scattered feathers, you have to assume that one of those gryphons flying around found her here and had enjoyed the nice treat the tree caught for it.[at random]";
		now Womanfruittree is resolved;
	If mtp is greater then 2:
		say "Wandering through the park, you hear a bit of a commotion in the distance, and spot one of the park creatures trying to get at something in a rather large tree.  After a moment or two the creature gives up in disgust, and wanders off into the park, curious you find yourself venturing closer to see what was so interesting.  Looking up through the tree branches, you are surprised to see a woman dressed in military camoflague is stuck up in the tree, hanging by the remains of her parachute straps from several branches like some kind of fruit. As you stare with your mouth open at the strange woman bearing tree, the woman notices you and begins to talk. 'Hey! You down there, you seem a bit more stable then most of the beasts and things in these parts, would you mind helping me out a little here? I kind of got stuck up here when that big wind scattered my squad, it blew me right into this damn tree and I lost my knife and most of my gear when I hit the branches.  If you could find a way to help me down I would really appreciate it.' The woman says, and as you look closer it seems she is indeed more then a little beat up from her ordeal, and many of her pockets are ripped and torn by the branches, looking at the tree you think you see an easy way up to where she is stuck, but the military obviously has its own agenda in the city as it is, so maybe it would be best just to leave her there.  Do you decide to help her anyways?";
		if player consents:
			say "Deciding that you might as well help the stranded woman, you look around for anything that might help, and spot a small military knife lying partially hidden in the grass a little ways away.  Snatching up the knife, you realize it must have been knocked loose from the womans uniform when she hit the tree, shrugging at your good fortune, you carefully climb up the tree to help the woman out. Reaching the area where her chute strings are tangled about the branches, you carefully cut through the strings while the woman watches you intently, the tree groaning and shaking underneath you.  Finally you cut the last string, and with a shout the woman drops to the ground underneath the tree, landing hard on the dirt, you shout as well as suddenly freed of the womans weight, the branches of the tree shake and lash around underneath you, knocking you out of the tree as well.  You groan as you land heavily on the ground, seeing stars for a minute before dragging yourself back to your feet.[line break]";
			say "Looking over at the woman, she seems to be in even worse shape then you are, and is clutching her ankle in pain, her trip through the branches, and then falling to the ground seem to have left her in no shape to fight or travel through the city safely. Looking up, the woman notices you watching her, and gives a wry grin, 'Thanks for the help there, still it doesn[apostrophe]t look like I am going to get very far like this, but at least i[apostrophe]m out of the tree now.  The names Coleen by the way, and I guess it[apostrophe]s pretty obvious we were sent in to see what the city was like and report back, course my radio is totally smashed now, so I guess I just have to wait for them to eventually move in and secure the city.' Coleen says with a sigh, as she tries to stand, only to wince as she puts some weight on her injured ankle.  'Of course I probably won[apostrophe]t make it that long like this. But I still have to try.' She says, as she looks around for any of her gear that the creatures in the area might not have taken.  Feeling somewhat sorry for her, you hand her back her knife, and mention that you know a relatively safe bunker in the city, and that you can help her get there.  She seems surprised at your generous offer, and happily takes you up on it, as you let her lean on you while you escort her back to the bunker.";
			decrease hp of player by 30;
			now coleenfound is 1;
			move player to Bunker;
			now Coleen is in Bunker;
			now Womanfruittree is resolved;
		otherwise:
			say "You decide not to interfere with the hanging woman,  after all, the military is obviously not doing much for you right now after all.  Though you do find yourself rather curious as to just what creature will eventually manage to reach her up in the tree, and just what she will look like afterwards... maybe you should come back and see later...";
			Now coleendeclined is 1;
			stop the action;
	otherwise:
		say " Traveling through the park you come across a rather large tree, its branches spreading out to cover a wide area, and providing excellent shade and protection from the elements. You stop for a minute to enjoy the nice shady cover the tree provides, as you look out over the park, eventually though, you realize you need to keep moving, and continue on down the trail, leaving the tree behind.";


Section 2- Coleen

Coleentalk is a number that varies.
Coleenfound is a number that varies.
Coleenspray is a number that varies.

Coleen is a woman.
The description of Coleen is "This nervous woman is still dressed in her damaged military attire, though she has managed to find some bandages to wrap her ankle with. She also seems to have relaxed somewhat though due to the safety of the bunker, and has acquired a small pile of books from the library outside she seems to be happily reading through.";


The conversation of Coleen is { "[Coleentalking]" };

To say Coleentalking:
	if Coleentalk is 0:
		say "'Thanks again for all your help,' Coleen says, as she gestures to her freshly bound ankle, 'I don[apostrophe]t want to think about what might have happened to me if you hadn[apostrophe]t shown up to help out. Just seeing all that happened as we passed through the city was a real eye opener, we had no real clue what was going on in here when they sent us in to gather information.' Colleen shudders slightly at that, before looking around the nice secure bunker and smiling. 'Seems you found a nice place to hole up though, it seems kind of sparse but its downright cozy compared to sleeping out in the city, thanks again for bringing me here. I know it isn[apostrophe]t much, but I found a medkit in the library, and there is still plenty of supplies left in it after taking care of my ankle, so I figure you might be able to use it.' She says as she hands you a medkit.[line break]";
		add "medkit" to invent of player;
		say "You received a medkit![line break]";
		say "'Other then that, there is something else I might be able to do to help out, they gave me this experimental spray that they said should help me out in the city, from what I can tell now, I think it might be able to help you fight off the infection somewhat.' Coleen says as she brandishes a small spray can. 'Fortunately it seems to have survived my accident with the tree intact, and while I probably won[apostrophe]t need it staying in here until the military come, it might come in handy for you since you keep going out there.  Just come and ask me to SPRAY you with it if you want to try it out, be careful though, there are only a couple doses in a can this size, and I don[apostrophe]t have any more.' She says as she tucks the can back away safely.  'You won[apostrophe]t have to worry about leaving me here either, I have enough MREs left they should hold me until the rescue, although sadly I don[apostrophe]t have enough to really share, but I wont have to leave the bunker at least, and I will keep the door shut tight until you return.' The woman says as she gives you a small smile, before settling herself down in the corner of the bunker.";   
		increase Coleentalk by 1:
		stop the action
	if Coleentalk is 1:
		say "'[one of]Thanks for all the help![or]Glad to see you back again[or]Be careful out there, it would be pretty lonely here without you.[or]Damn, I found some fun books here to read![or]Let me know if you find any other members of my squad out there[or]Try to be careful out there, this place is much more dangerous then they warned us.[or]It surprised me a lot how much fun many of the infected seemed to be having.[or]Sometimes I find myself wondering what it would be like to just wander outside and find one of infected to fuck...[at random]'";


Coleenspraying is an action applying to nothing.

Understand "Spray me" as Coleenspraying;
Understand "Coleen spray" as Coleenspraying;
Understand "Spray Coleen" as Coleenspraying;

check Coleenspraying;
	if Coleen is not visible, say "how?" instead;



carry out Coleenspraying:
	if Coleenspray is 0:
		say "'Well ok, here goes nothing,' Coleen says as she uncaps the small spray bottle before spraying you with the strange antiseptic smelling liquid. You feel the strange liquid burn and tingle as it sinks into your body, surprisingly you find yourself feeling a little better and more human almost immediately.";
		infect "Human";
		infect "Human";
		increase humanity of player by 20;
		increase Coleenspray by 1;
		stop the action;
	if Coleenspray is 1:
		say "'Ok lets try that again! I only have about enough for one more dose after this,' Coleen warns you as she once again sprays you with the foul smelling liquid again, the tingling feeling spreading through you again, although strangely it seems to be much less strong this time, perhaps the chemicals are losing their effectiveness?";
		infect "Human";
		increase humanity of player by 20;
		increase Coleenspray by 1;
		stop the action;
	if Coleenspray is 2:
		say "'Well alright, it didn[apostrophe]t seem to help as much last time though. And there isn[apostrophe]t much left either.' Coleen says as she once again sprays that strange liquid on you, making your body tingle slightly, though you cant seem to notice any real changes, you still somehow feel slightly more human afterwards.";
		increase humanity of player by 10;
		increase Coleenspray by 1;
		stop the action;
	otherwise:
		say "'Sorry, but that[apostrophe]s it,' She says as she shakes the empty can helplessly, 'It[apostrophe]s all gone now sadly, and I don[apostrophe]t think it was working all that well there at the end anyways.' Coleen says with a sigh."; 


Instead of fucking the Coleen:
	say "'Sorry, but that seems to be how the infection spreads the fastest, and while I know I probably won[apostrophe]t get out of this place without some changes, I think i[apostrophe]d like to try to keep them to a minimum.' Coleen says with a wry shrug.";




when play ends:
	if Coleefound is 1:
		if humanity of player is less than 10:
			say "Finally overcome with your strong beastial instincts to breed, fuck, and spread the infection. You recall where a perfect new pet is waiting for you, nice and safe, and above all unsuspecting, in your bunker. Swiftly returning to the library, you manage to behave long enough to convince Coleen to let you in, where you immediately pounce on her and fuck her like the beast you are. The former soldier moans and pants underneath you, her body shifting and changing as you spread your infection to your new friend.  You ravish her body until her form is as twisted and changed as yours, a perfect match for the wonderful new beast you have become, and then over the course of the next day or so, you keep the new Coleen trapped in the bunker with you while you mate her even more thoroughly, enjoying the way her mind changes more and more with each sexual encounter, as she loses her humanity bit by bit, the infection conquering her mind as easily as it conquered yours, making her little more then a beast just like you.  Finally satisfied, you head out into the city to seek out even more new conquests to spread your glorious new form to, sure in the knowledge that your most recent convert will be doing the same elsewhere in the city as well....";
		otherwise:
			say "Coleen is extremely happy when the rescue arrives, and while she has picked up a few unusual traits from her time spent with you in the bunker, she is still recognizable and mostly human. She manages to talk to several of the military troops that rescue you, and puts in several good words for you based on how you helped her survive, this means the military is more then happy to let you out of the city while they deal with the more important and dangerous beasts still left inside.  Coleen keeps in touch with you as you begin to make a life for yourself afterwards, until finally you lose contact with her after she goes on a scouting mission in the area around the city to make sure none of the beasts managed to escape.  You find yourself alternatively hoping she turns up ok and unchanged, or wondering if she would be happy to welcome you and change you into whatever she became if you hunted her down...";
 
 Coleen ends here.
