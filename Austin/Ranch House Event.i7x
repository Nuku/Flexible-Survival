Ranch House Event by Austin begins here.

[An expansion of an old event by Austin, with preread and tips from Prometheus]

Table of GameEventIDs (continued)
Object	Name
Ranch House	"Ranch House"

Ranch House is a situation.
ResolveFunction of Ranch House is "[ResolveEvent Ranch House]".
Sarea of Ranch House is "Plains".

when play begins:
	add Ranch House to BadSpots of MaleList;
	add Ranch House to BadSpots of FemaleList;
	add Ranch House to BadSpots of FurryList;

to say ResolveEvent Ranch House:
	if Resolution of Ranch House is 0: [player hasn't seen the event before]
		say "     You come across the ruins of what was probably a ranch house. Finding that the front door has been bashed open, and just in case, you carefully approach to peer and listen to the inside. When you feel sure that you can't see or hear anyone inside, you decide to pass through the remains of the door and search through the broken home. You find some old framed pictures on the wall of what you assume were the previous owners of the house, but other than that and some antique furniture, it seems that most of the house has been emptied of anything worth taking. When you realize that you won't find anything else worthwhile inside, you decide to look around outside and notice what seems to be a stable. Going over, you explore the stable in the hopes that you'll be luckier in your search, but only find the strong smell of horses permeating the structure.";
		say "     You take care where you step, avoiding the mess of dirt and hay, as well as the white puddles of equine cum which show that the people and creatures here likely became infected. Hoof-prints in the dirt around the stable head off out into the plains where the transformed horses probably live now in some altered form. As you approach one of the doors inside the stable, you hear noises coming from the other side, as well as noticing some fresh prints on the ground telling you that some of the horses may still be lurking around."; [Paragraph Length 800 - 1000] [steff:describe the outside of the ranch house when you first find it, what it looks like, the condition, if it looks abandoned or maintained etc.]
		say "[RanchHouse_Choice1_Point]";
	else if Resolution of Ranch House is 1: [player was there before, remembers that]
		say "     You find yourself back at the decrepit ranch house and stable that you saw before. Knowing that there isn't anything of interest in the house, your attention focuses on the stable hoping that the creature that was there last time is still around. You take care where you step, not wanting to stand in any of the many pools of equine cum. When you approach the door of the stable, you hear the same noises coming out of inside the stable as last time as well as noticing some fresh prints on the ground, telling you that in fact the creature may still be lurking around.";
		say "[RanchHouse_Choice1_Point]";

to say RanchHouse_Choice1_Point:
	LineBreak;
	say "     [bold type]What do you do now?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Go inside the barn and see who is inside.";
	say "     [link](2)[as]2[end link] - Cautiously approach one of the windows and look inside.";
	say "     [link](3)[as]3[end link] - Walk away and avoid this place (for good).";
	say "     [link](4)[as]4[end link] - Pass up on exploring this place for now, but remember it to return in the future.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 4:
		say "Choice? (1-4)> [run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] Go inside the barn and see who is inside, [link]2[end link] Cautiously approach one of the windows and look inside, [link]3[end link] Walk away and avoid this place, or [link]4[end link] Avoid this place for now, but remember it to return in the future.";
	LineBreak;
	if calcnumber is 1: [Go straight in]
		say "[RanchHouse_Choice1]"; [Go straight in]
	else if calcnumber is 2: [Cautiously approach a window]
		say "[RanchHouse_Choice2]";
	else if calcnumber is 3:
		say "     You leave and make a mental note to avoid the area in the future.";
		now Ranch House is resolved; [will not reoccur]
	else if calcnumber is 4:
		say "     Having other things to do right now, you leave, but keep the place in mind. Maybe you can return to the [bold type]Ranch House[roman type] in the future.";
		now Resolution of Ranch House is 1; [player was here before, did not go in but wanted to return]

to say RanchHouse_Choice1: [Go inside the barn and see who is inside]
	say "     You cautiously grab the knob of the stable door, feeling the cold metal as you open the door in a swift movement. However, you fail to realize that behind it was an improvised alarm mechanism made of buckets. Upon being knocked down, they alert the creatures inside which immediately flee the area, the commotion preventing you from identifying them. All but one, who is left behind due to it being tied down in one of the stalls. Upon taking a closer look, you see a small centaur mare that was forced to be on a milking machine repurposed as a sex toy. Upon taking a closer look, you see a small centaur mare lying on her belly that, judging from the rope bindings and ball-gag, it is safe to assume that she most likely has been hooked up to the milking machine not by her own decision. Either that, or she's a really kinky mare.";
	LineBreak;
	say "     [bold type]What do you do now?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Free her and let her go with the others.";
	say "     [link](2)[as]2[end link] - Take advantage of the situation.";
	say "     [link](3)[as]3[end link] - Leave the place, not worrying about her bound state.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)> [run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to free her and let her go with the others, [link]2[end link] to take advantage of the situation, or [link]3[end link] to leave the place not worrying about how she is left.";
	LineBreak;
	if calcnumber is 1:
		say "     You decide to approach the mare in order to help her but only manage to frighten her as you get closer. Stopping for a second to let her know that you only want to help, she relaxes just a bit but is still cautious as you approach to shut down and remove the milking machine and her bindings. Once her bindings are loose she quickly gallops from the room, but not before looking back at you through the open door. She gives you a long stare before making her way to the direction where the rest of the creatures went.";
		now Resolution of Ranch House is 10; [player freed the centaur mare]
	else if calcnumber is 2:
		if Player is male: [male]
			say "     You get closer to the mare, admiring her beauty, and seeing that you could have some fun with her. Putting your hands on her flank causes her to flinch with surprise and fear, however, as you move your hand slowly across her body towards her pussy the initial fear turns into pleasure. Her pussy starts to twitch with desire so you take off your pants and, using the left over cum inside as lube, you slowly start penetrating her. To your surprise even though she has been with a lot of stallions before you, she is still really tight, making the two of you moan in pleasure. After a while of you fucking her, she starts to match your movements, wanting more, so you decide to give it to her and fill her with your cum. As you climax, because of the milking machine and your actions, she also squirts. Having had your fun with her, you decide that the best course of action would be leave as soon as you can with the centaur mare still tied up.";
			CreatureSexAftermath "Centaur Mare" receives "PussyFuck" from "Player";
		else if Player is female: [female]
			say "     You get closer to the mare, admiring her beauty, and seeing that you could have some fun with her. Putting your hands on her flank causes her to flinch with surprise and fear, however, as you move your hand slowly across her body towards her pussy the initial fear turns into pleasure. Her pussy starts to twitch with desire so you take off your pants and, using the left over cum inside as lube, you slowly start penetrating her with your fingers while also masturbating. To your surprise, even though she has been with a lot of stallions before you, she is still really tight, making her moan in pleasure. After a while of you fingering her, she starts to match your movements, wanting more, so you decide to give it to her and speed up the motions making the two of you get closer. Unable to resist any more the centaur mare squirts, with you following suit soon after. Having had your fun with her, you decide that the best course of action would be leave as soon as you can, abandoning the still tied-up centaur mare.";
		else: [neuter]
			say "     You get closer to the mare, admiring her beauty, and seeing that you could have some fun with her. Putting your hands on her flank causes her to flinch with surprise and fear, however, as you move your hand slowly across her body towards her pussy the initial fear turns into pleasure. Her pussy starts to twitch with desire so, using the left over cum inside as lube, you slowly start penetrating her with your fingers. To your surprise, even though she has been with a lot of stallions before you, she is still really tight, making her moan in pleasure. After a while of you fingering her, she starts to match your movements, wanting more, so you decide to give it to her and speed up the motions. She rapidly becomes closer and closer to orgasm until she is unable to resist any more and squirts. Having had your fun with her, you decide that the best course of action would be leave as soon as you can with the centaur mare still tied up.";
		now Resolution of Ranch House is 11; [player took advantage of the centaur mare]
	else if calcnumber is 3:
		say "     Not interested in the creature, you leave.";
		now Resolution of Ranch House is 12; [player left the mare behind]
	now Ranch House is resolved; [will not reoccur]

to say RanchHouse_Choice2: [Cautiously approach one of the windows and look inside]
	say "     You stealthily get close to the broken window, the smell of sex hitting your nose as you approach. When you look inside of the stable, you are taken aback by the view, a small group of centaurs having some fun between them. Some male on male, female on female, and some mares getting impregnated.";
	LineBreak;
	say "     [bold type]What do you do now?[roman type][line break]";
	say "     [link](1)[as]1[end link] - You decide to stay and watch.";
	say "     [link](2)[as]2[end link] - You decide to not risk it.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-2)> [run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to stay and watch, or [link]2[end link] to not risk it and leave.";
	LineBreak;
	if calcnumber is 1:
		say "     In the center of the room you see a mare lying on her back with her legs spread while a centaur is over her, the two of them going roughly almost as if they are in heat by the look of it. Next to them you see a small centaur alone giving himself a blowjob; thanks to the position you notice a sparkle in his butt, most probably a butt plug. In a corner you see a three-way of males, the first one lying on his belly while the second is on top of him on his knees, and lastly the third one is fully standing letting the whole speed go by the movements of the middle one. Beside some hay bales, two mares are in each other's embrace, lips locked and fingers caressing their partner's breasts. Meanwhile, at the end of the stalls you see one door open and a line of centaurs seemingly excited for their turn to get inside.";
		say "     After you watch them and are about to leave, a twink centaur stallion stops you and asks, 'You know, if you had fun watching, maybe next time you could join and I can show you a good time myself.' He seductively walks around teasing you, moving his hips and giving you a generous view of his ass while also slapping his horse cock against his under-belly letting you know what he means. With a wink, he then turns back to his compatriots in the building, to chill out and maybe clean up a bit after themselves. As you leave the ranch behind, you can't help but think about the invitation you were given. Maybe that could lead to some fun in the future...";
		now Resolution of Ranch House is 13; [player watched a centaur orgy]
	else if calcnumber is 2:
		say "     Not wanting to get involved, you leave this place.";
	now Ranch House is resolved; [player was invited to return]

Ranch House Event ends here.
