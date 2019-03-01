Version 1 of Rane Events by KorekaBii begins here.

RaneDeedsTracker is a number that varies.

Table of GameEventIDs (continued)
Object	Name
Rane's Good Deed	"Rane's Good Deed"

Rane's Good Deed is a situation.
Rane's Good Deed is inactive.
the sarea of Rane's Good Deed is "Outside".

instead of resolving Rane's Good Deed:
	if RaneDeedsTracker is 0: [first time]
		say "     As you wander through the city, in the distance you sight what appears to be a young woman. On first glance she looks human, but there's something unusual about her... maybe it is the way she moves or the strange green dress covering her body, you're not quite sure. Moving swiftly through the ruins, she appears to be looking for something. Behind her, you can catch short glimpses of a large demonic figure ducking in and out of sight as it seems to be stalking her - quietly and maintaining a set distance. The female apparently hasn't spotted her pursuer yet, though she must have heard something after a few moments longer, because she glances backwards and looks rather frightened, but still seems determined to continue her motions.";
		say "     Attacking her search with fresh vigor by fully concentrating on a half-collapsed store entrance, the girl doesn't notice as the demonic creature slowly inches closer. It isn't until he is very near to where she stands that the young woman catches sight of him. She lets out a frightened scream as she backs up from the towering figure, but one glance at the object the figure is holding causes her to pause and fall quiet. Her fear seems to diminish, turning into a cautious, but hopeful, curiosity instead.";
		WaitLineBreak;
		say "     Hoping to get a closer look of the unlikely scene, you cautiously inch forward. Arriving at a spot from which you have a better view, you are surprised to see that you recognize the creature the girl is talking to. Between the towering male's muscular blue body, telltale white hair, and the fact that he wears little but a loincloth, there's no way it is anyone but your friend, Rane the Blue Devil. Turning your attention from Rane to his female companion, you see now that although at first she looked mostly human, there is a wreath of living leaves upon her head, and the 'clothing' you saw earlier is in fact a mass of dense, green vines. From all appearances, this young woman has been infected with the Greek Nymph strain.";
		say "     Pulled out of your observations by a sudden movement as Rane moves closer to the nymph, you watch as the blue oni tries to put her at ease, grinning while using his right hand to hold up an object that appears to be a small, worn-out leather purse. 'Looking for this?' The nymph's eyes widen in recognition as she examines the presented object. 'Yes, thank you! I was so afraid that it had been lost. It's all I have left...' Although wary of his appearance, the girl slowly moves towards the demon, eager to reclaim her lost possessions. Now only an arm's length away from Rane, she reaches for the purse, grabbing a hold of its worn leather edges. Yet as she tries to tug the purse free, she finds that he isn't letting go of it. 'This must be very important for you to be scavenging so recklessly in a dangerous area,' the demon states, looking down into the girl's eyes with a raised eyebrow.";
		WaitLineBreak;
		say "     The nymph's body tenses, a drop of sweat rolling down her face 'Um... won't you please give it back?' In reply, the blue oni smiles broadly, showing his sharp fangs in one of his unmistakably lewd grins, then responds, 'You were lucky. Some nasty creature was about to carry this away but I snatched it before they could. Don't you think a reward is called for?' The girl looks downcast and sighs. 'You are right, but there's nothing valuable I have to offer in return. I have no money, jewelry, or food, just pictures of my family....' She looks like she may be about to burst into tears, but then Rane lets the purse go and proceeds to cover her hands in his own, kneeling down on one leg to meet her gaze. He responds, 'Seems like you need to take better care of it then. I'd hate to see someone lose what little they have left, when we all have so little to begin with.'";
		say "     For a second, the girl is taken aback by his comment, surprise written clearly on her face. She never takes her gaze off of Rane, looking at him with wide eyes even as she brings her purse up and hugs it to her chest. Looks like she is very grateful to have it back. Silence hangs in the air between them for a little while as she tries to find the right words to reply to him, then eventually just gives a shy smile and wave before whirling around and dashing off. The large blue oni's eyes follow the girl every step of the way, until she disappears around a corner. Rane, getting ready to follow suit, faintly whispers to himself, 'Maybe next time,' before walking off.";
		WaitLineBreak;
		say "     As both of the people you were watching have vanished, once again you find yourself alone. Just to be safe, you wait a few moments before finally coming out of hiding and continuing on your way. Walking away from the scene and down one of the cities['] many ruined pathways, you find yourself thinking about what might have happened and how Rane is much more of a kind soul than you gave him credit for. Looking back on his unexpected act of humanity, you start to feel like you have grown a bit more sane, thinking that even in this fucked-up world there is still some hope after all...";
		SanBoost 15;
		now Rane's Good Deed is resolved; [the end, for now]
		now RaneDeedsTracker is 1; [first good deed completed]

Rane Events ends here.
