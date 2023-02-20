Version 1 of Komainu by Voidsnaps begins here.

Table of GameEventIDs (continued)
Object	Name
Good Doggy	"Good Doggy"

Good Doggy is a situation.
ResolveFunction of Good Doggy is "[ResolveEvent Good Doggy]".
The level of Good Doggy is 0.
Sarea of Good Doggy is "Outside".

to say ResolveEvent Good Doggy:
	GoodDoggyEvent;

to GoodDoggyEvent: [Komainu]
	say "     As you wander the streets, you hear a concerning sound. Something between a whine and a muffled growl grows stronger as you walk toward it, and before long, a peculiar sight appears before you. What seems to be a wall of fluffy, dazzlingly colorful fur, with a curly mane ringing its neck and continuing downward, has something half its size clutched in brawny arms, standing in an alleyway. If you listen closely, you can make out what it's saying. 'Good doggy! Why are you trying to run away? Just be nice, and we can snuggle for a while.' The larger of the two coos, sandwiching a canine face between colossal pecs and muffling its indignant cries in a forest of fur. Its catch struggles, thrashing wildly and snarling, but soon falls limp, its tail between its legs. You don't think you'd be able to break the creature's grip, and it seems that the husky came to the same conclusion.";
	say "     As the creature cuddles the struggling dog, you take the opportunity to get a closer look at him. The strange hybrid between a lion and dog has fur that's bright and cheery, with a light blue, curly mane accentuating a darker red pelt, and a trail of blue continues down his bare chest, disappearing into a white, skimpy loincloth that does nothing to hide a massive bulging manhood. His shirt is reminiscent of a kimono, though it seems too small to contain his chest and softly rounded belly, hanging off his shoulders and gathering loosely on his muscled arms. Still, his fur takes over that job nicely, you'd assume. 'See? That wasn't so hard!' Soon, the fluffy creature's iron grip loosens, allowing the husky up for an exaggerated gasp of air. Sitting down, he drags the husky back into his grip for another hug, his newly acquired angle showing off his catch's squirming ass and swinging balls. 'Everyone's so angry all the time. Just let me cuddle all the fluffy boys!' The hulk says with a huff, his canine muzzle contorting into a childish pout.";
	say "     [bold type]Do you want to continue watching? Considering where you are, this won't remain innocent for long.[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Continue watching.";
	say "     ([link]N[as]n[end link]) - Leave. You're not interested.";
	if Player consents: [watch]
		LineBreak;
		say "     'Don't be sad, puppy. I know what you boys like. You'll let me pet you more if I make you happy, won't you?' The maned creature sighs happily and rubs his cheek against the husky's, ignoring the smaller male's lowered ears. Lifting his prey with little effort, he spreads the husky's legs, giving you an eyeful of the pink hole between his cheeks below that flagging tail. With the difference in their size, you assume that he's about to give the alpha husky a reaming, but instead, he lifts the nude creature's crotch to eye level, dragging a surprised gasp from the alpha husky. A lapping tongue draws a confused moan from the husky's lips, coating his dangling orbs in a layer of drool, and the soft sounds of a suckling maw fill the air as the peculiar creature treats him to his oral expertise. Slowly, the husky's expression fades from bewilderment to surprise and then to a melting, pleasured expression, his tongue hanging out and his paws moving to the top of a bobbing head.";
		say "     Moments pass as increasingly sloppy sounds mingle with the alpha husky's pleasured sounds, his hips moving in an unmistakable rhythm as his giant companion sucks his manhood. Any hint of struggle disappears in pursuit of more pleasure, and a high-pitched, desperate whine fills the air as he crams himself as deeply as he can, going still as his balls churn, his hole twitching and winking. You grow jealous as wet gulps echo through the small space, and you barely prevent yourself from calling out, asking to join. You're still not sure if the strange creature would react the same to your presence. [bold type]Perhaps you should search for it another time[roman type].";
		now Resolution of Good Doggy is 1; [Player watched]
	else: [leave]
		LineBreak;
		say "     Deciding not to risk becoming the fluffy creature's next 'victim,' you turn and walk away. Your life is hard enough without a clingy wall of fluff.";
		now Resolution of Good Doggy is 99; [Player skipped out on the event, no interest]
	now Good Doggy is resolved; [won't happen again]

Komainu ends here.