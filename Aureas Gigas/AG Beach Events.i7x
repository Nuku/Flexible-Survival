Version 1 of AG Beach Events by Aureas Gigas begins here.

NereidRelationship is a number that varies.

Riptide is a situation.
The sarea of Riptide is "Beach".

Instead of resolving a Riptide:
	say "     Walking along the coastline you see a black-furred anthro bear standing a little distance out in the ocean, the water at waist-high level. As the waves approach him, he jumps and bobs up in the water. You see him repeat this action for a couple more times, before a massive one starts to curl and crashes into him. Knocked off his feet, the ursine male tries to scramble to stand up but the strong undertow prevents him getting his bearings before the next wave hits. It seems like the guy is being pulled away from the shore by a strong riptide. With his feet no longer touching any sand, the unskilled swimmer panics and tries swimming straight to shore. Unfortunately, he keeps getting dragged further from the shore with every wave.";
	say "     Before you have any time to react, another swimmer bolts toward his location, she is able to reach the poor bear quite quickly and grabs him. Then she begins to swim horizontal to the shore to get out of the rip current. Once out she pulls the bear onto the shore. Now that she's out of the water you have a much better view of the rescuer. She's an anthro shark girl, her notably large toned muscles and giant tail helped her in saving the guy. With a caring tone she asks 'Are you all right? Those rip currents can be deadly if you aren't prepared.' Coughing up a bit of sea water, the ursine replies, 'Thanks... I'd be a goner if you hadn't shown up.' Patting him on the shoulder the piscine girl begins to explain what to do if he gets caught in another rip current.";
	WaitLineBreak;
	say "     Bashfully, the black-furred man explains, that he grew up inland and that this was his first time at a beach. The waterlogged ursine blushes and states 'Ironically, I was more worried about a shark attack than drowning.' Beaming a large grin that shows off her sharp teeth, the shark girl jokes, 'I was thinking about it, but you've got way too much fur.' Taking the wise-crack in stride, the sopping wet male retorts, 'Such a shame. How about I make it up to you by paying for a meal at the café?' The athletic shark girl chuckles and says, 'Deal.' The pair then head off, leaving you to appreciate that even in this twisted world, there are still people out there who watch out for others.";
	now Riptide is resolved;

Hang Ten is a situation. The sarea of Hang Ten is "Beach".

when play begins:
	add Hang Ten to badspots of girl;

Instead of resolving a Hang Ten:
	say "     Strolling on the beach, you suddenly see a girl rush towards the ocean carrying a surfboard above her head. She shouts energetically as she enters the water. 'Ugh I've been out of the water, way too long! This feels soo good!' With a better view of the woman, you can see that she is a gorgeous-looking human. She has tanned skin, flowing blonde hair, and piercing green eyes. Based on the wetsuit and a sticker of the local colleges logo on her surfboard, it appears that she's a naiad from the college. Of course, seeing how comfortable she seems in sea water it seems more appropriate to call her a nereid. The lady sets her board in the sea, hops on it and begins to paddle out to deeper waters.";
	say "     Finding a spot where the sea water crests ideally for surfing, the nereid begins to ride the surf She carves the waves like they are made of butter. Paddling over to some other surfers who point her to certain areas, it looks she's asking them where the best locations to hang ten are. With a confident grin, she challenges all of them to a surfing contest, but only one, an anthro otter male accepts the challenge. The two paddle out to a point where the sea water is choppy. With how rough the sea water can hit, only the truly skilled surfers would try to ride the waves here. Initially, the pair seem to be on equal footing, but then the nereid busts out some serious moves, hanging ten with cat-like grace. The mustelid is hardly able to keep up, and wipes out after attempting to ride a thirty footer. The victorious nereid gives off a beaming grin and paddles closer to your location.";
	WaitLineBreak;
	say "     When she's in shallow water, the surfer dismounts the board, walks close to you on the beach, and sets her board upright. Then she gives you a playful smile and says flirtatiously, 'I'm Ione by the way. Like what you saw?' You nod and ask how she got so good. The blonde haired lady explains, 'I was born and raised here in the city, my family used to come out to this beach all the time when I was a kid. Spent most of my spring and summer weekends out here in the waves, got pretty good at swimming and riding a surfboard. After high school I joined Tenvale College's swimming team, on P-day all of us got transformed into water nymphs. It seems like the call of the sea changed me, unlike the rest of them, I got turned into a nereid. I don't mind the change.' Cupping her ample breasts, she says amusedly, 'Grew a couple of cup sizes. I used to be flat as my board.' Eyeing you with a lustful look in her eye, 'So was my skill with the board the only thing that caught your eye... or was there something more?' she asks.";
	say "     [bold type]Are you interested in her body or is it just her skills with the board that got your notice?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Want to see more of her body.";
	say "     ([link]N[as]n[end link]) - Not interested.";
	if player consents:
		say "     With a small wink, you note that you wouldn't mind seeing more of the athlete's form. A wry smile emerges on her face as she chimes in, 'Well now, I wouldn't want to disappoint a new fan.' She begins to unzip her wetsuit showing off her toned abs and her bountiful D-cup breasts. The nereid begins to tease you by cupping them together to accentuate her cleavage, an occasional finger-circles around one of her hard nipples. With this awe-inspiring sight, one of your hands reaches out but is turned away by the water nymph, who says temptingly, 'This isn't gonna be that type of thing [if player is female]kitten[else]tiger[end if]. I'm not the kind of girl who hooks up with someone they just met. So sit back and enjoy the show.'";
		say "     The nereid turns around as she begins to peel the wetsuit off of her body, giving you a fantastic view of her curvy butt and pussy. Once naked, she begins to lean herself against her pink surfboard. Squatting with her legs open, the surfer girl spreads her cunts lips with a lustful gaze in her emerald green eyes. Softly moaning as she inserts one finger into her tempting hole, she asks, 'Is this turning you on [if player is female]kitten[else]tiger[end if]?' After you nod, the blonde haired woman adds another finger while her thumb rubs her clit. As she picks up the tempo, moaning loudly at this point. Some of the surfers she was talking to whoop and cheer. This only emboldens the water nymph to go faster, she soon climaxes squirting femcum over the sand. The vivacious athlete takes a couple of seconds to catch her breath, but soon puts on her wetsuit and heads back into the water. She gives you a friendly wave and you head off.";
		now NereidRelationship is 1; [met and watched her rub herself to climax]
	else:
		say "     You tell the nereid you were only interested in how she was able to shred the waves. Taking this in stride, the blonde surfer grins and proclaims, 'Always good to have a fan, if you find a board I could teach you some tricks.' She then paddles out to ride some more waves. Having another friendly face on the beach.";
		now NereidRelationship is 2; [met and kept things to a clothed, friendly level]
	now Hang Ten is resolved;

Parasol nap is a situation.
The sarea of Parasol nap is "Beach".

Instead of resolving Parasol nap:
	project the Figure of Parasol_Nap_icon;
	say "     As you walk along the beach coast, you see an anthro rat mulling about nearby. The gray-furred rodent has an athletic build and is wearing blue board shorts. Pacing around casually, he is sneaking the occasional suspicious glance at the other pedestrians. When he feels that no one is watching, the guy walks closer to a nearby beach umbrella. Curious what is going on, you also move in the same direction - and soon get the same view as the rat: Asleep on a pink beach towel underneath the large parasol is a beautiful anthro canine. The dog-like femme is lying on her stomach showing off her hourglass figure. Her fluffy tail is upturned and shows off her pussy and small tailstar.";
	say "     Giving one last quick gaze around, the rat has a mischievous grin as looks over the curvaceous napper. He pulls down his shorts to reveal a rapidly hardening cock. The veiny human-like dick is a solid eight inches long. The horny rodent runs a finger along the head of his rod, while his other hand cradles his above average-sized balls. Once his rod is fully erect, the voyeuristic rodent pumps his shaft with fast motions, hoping to finish before anyone notices. While jerking his penis, the male lets out a small grunt and murmurs, 'Damn this bitch is hot.' The sleeping canine's body begins to stir. Hearing animalistic moans coming from close by, the dog-like woman turns her head to see the leering beach boy with precum leaking from the tip. At that very moment, the anthro rat unleashes his load, coating the golden furred woman's left thigh with his seed. The lady lets out a startled scream as the pervy rat begins to bolt - running in your direction, possibly giving you a chance to tackle him.";
	WaitLineBreak;
	say "     [bold type]Are you going to take any action in this situation?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Tackle the rat.";
	say "     ([link]N[as]n[end link]) - Walk away.";
	if player consents:
		say "     You rush to knock the perv to the ground. Having his breath knocked out of him by the hard hit, the rodent is unable to get away before the orca male lifeguard approaches. He gives you an appreciative nod while he drags rat away, saying happily, 'Thanks for the assist. Been trying to catch this guy for a while now. Frigging asshole is going to be banned from the beach.' Wiping the cum off of her thigh with her beach towel, the doggy girl says in a grateful tone, 'Thank you. It's not a fun experience waking up to some guy wanking onto you, I'd rather have that kinda thing happen when I'm awake.' She then gives you an affectionate peck on the cheek. You give a wave goodbye and head off to explore the city again.";
	else:
		say "     Not wanting to get involved in this business, you let the rodent run past you and hide in a mass of crowded infected. Meanwhile some male orca lifeguard comes running to the canine victim, asking what happened and what the culprit looked like. It seems this is the type of risk that can occur when falling asleep in an open area after P-day.";
	now Parasol nap is resolved;

AG Beach Events ends here.
