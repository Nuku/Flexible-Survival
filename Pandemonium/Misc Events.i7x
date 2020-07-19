Misc Events by Pandemonium begins here.


Section 1 - Tide Pool Trouble [rewritten by Pandemonium]

Table of GameEventIDs (continued)
Object	Name
Tide Pool Trouble	"Tide Pool Trouble"

Tide Pool Trouble is a situation.
The sarea of Tide Pool Trouble is "Beach".

Instead of resolving a Tide Pool Trouble:
	say "     As you meander down the beach, waves crash against rocks not too far ahead of you. The rocks litter this part of the shore. You cannot help but walk on some, but most of these are beter described as boulders. Not much farther ahead, there are various boulders jutting out from the shore, towering above you the size of small buildings. You see the tide pools at your feet as you walk towards these towering boulders. Small fish swim as you move from rock to rock. As you approach the tallest rock, you notice something in one of the tide pools under that great boulder causes the water to splash out vigorously. The water seems to bubble out from the shallow water. Could this be the entrance to some underwater cavern? The water seems to positively come alive as you approach.";
	say "     [bold type]Do you inspect the roiling tide pool?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Get closer to the strange waters.";
	say "     ([link]N[as]n[end link]) - Decide to walk back the other way.";
	if player consents:
		LineBreak;
		say "     You slowly move toward the tide pool. The water is white from how vigorously it roils. You are closer now, close enough to see what's in the pool. There's a figure you can just barely make out in the white waters. It looks... it looks like... a slithering ball of tentacles! Or wait, no, that's just a snake coiling around something beneath the surface of the water. It's chasing something under there! Before you have a chance to back away, a rat darts out of the pool, heading right for you! The snake, in turn, slithers out of the water. You tense up, ready to fight, to defend yourself against this reptilian predator. But seeing you, the little rat hesitates, giving the snake all the time it needs to catch its prey. You stand there, almost in shock, as the snake devours the rat.";
		say "     Once it completely swallows its prey, the snake slithers onto a nearby rock away from the shore to digest the poor rat. Looking back at the tide pool, you see that its waters are calm once more. Strange how the pool returns to normal so quickly. Now that nothing's stirring up the water, you can see some colorful fabric at the bottom of the pool. After checking to make sure nobody's around to pounce on you, you bend down to the tide pool and stick your hand into it. You retrieve what turns out to be striped board shorts and see that they're in remarkably good shape. At least you got something out of all of this, even though it has unsettled you a little to see the animals fight of life and death.";
		ItemGain striped board shorts by 1;
		SanLoss 5;
	else:
		LineBreak;
		say "     Looking at the intensity of the water, you're certain something is down there that will attack you. You're pretty sure you can even hear the faint squeaks of a monster coming from the water's surface. Rather than dealing with a fight with an unknown foe, though, you decide to walk back. You pick up your pace as you leave the strange tide pools behind you.";
	now Tide Pool Trouble is resolved;

Misc Events ends here.
