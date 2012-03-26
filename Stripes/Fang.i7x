Version 1 of Fang by Stripes begins here.
"Adds Fang the Feral Wolf to the Flexible Survival game"

Section 1 - Fang the Feral Wolf

Fang is a person.
The description of Fang is "[fangdesc]";
lastFangfucked is a number that varies.  lastFangfucked is normally 555.
[See Feral Wolf file for collecting Fang.]

instead of sniffing the Fang:
	say "The scarred wolf has an arousing male scent.";

to say fangdesc:
	say "     The feral wolf creature seems to be doing better in his new home.  Looking more confident and strong as he sits obediently on watch.  His fur is a mix of black and dark grey fur that blends into the shadows as he watches the door with his bright, yellow eyes.  You are pleased with how he's turning out so far.  He's not made a mess around the Library and remains on his long, rope leash.  The fact that he cleverly unties and reties its anchoring point to get around when you're not looking doesn't bother you very much, as the fact he still wears it shows he recognizes your authority as his [if cocks of player > 0]master[otherwise]mistress[end if].";

Instead of conversing the Fang:
	say "     The wolf creature listens attentively as you speak to him.";


Section 2 - Sexxxings

instead of fucking the Fang:
	[puts Feral Wolf as lead monster in case of impregnation]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Feral Wolf":
			now monster is y;
			break;
	if lastFangfucked - turns is less than 8:
		say "     Fang got off fairly recently, so you'd probably have a better time with him if you give him a little longer to recover.";
	otherwise if cunts of player > 0:
		now lastFangfucked is turns;
		say "     Watching the powerful form of the wolf move around as he paces by the door, you find yourself looking to satisfy a growing urge within you.  Deciding to use your wolf pet to fill that need, you walk over and pet his head, scritching his ears.  His ears perk up at the show off affection and nuzzles at your hand, licking your fingers.  Putting aside your pack and clothes, he almost seems to smile and his cock starts to swell and slide from his sheath.  Bracing yourself against a desk, you lean over and call the wolf to you, ordering him to start licking you.  His tongue dives in right away, slathering your crotch and sliding into your cunt in an effort to please his alpha and earn his reward.";
		say "     After a few minutes of very pleasurable attention by his lupine tongue that makes your pussy quiver and cum in ecstacy, you decide he's done well and call him up to mount you.  Obeying his alpha, he leaps onto your back, bracing his front paws beside your hands on the desk and drives his penis into you.  His wolf cock spreads your slathered cunt open and he starts thrusting into you.  You press back into his thrusts and urge him to take you harder and faster, like the wild beast he is.  You order him to fuck you hard, to show his alpha what a strong male he is, to breed you like the animal he is.  He licks and nips at your neck, growling softly as he obeys and starts pounding his feral body against yours.  You moan and growl in pleasure beneath him, enjoying the rough fucking from your pet.  His throbbing, leaking cock pumps into you again and again, filling your whole body with ecstacy with each push into you.  As his swollen knot finally pops into you, he howls in pleasure and unleashes his hot, thick seed into you in an effort to breed you.  When his knot finally goes down and he hops off of you, you give his ears a scritch, tell him how well he did and let him give you a few licks to clean the leaking excess before gathering up your stuff and getting back to other matters.";
		say "[impregchance]";
		now libido of player is ( ( libido of player * 2 ) / 5 );
	otherwise:
		say "     For some reason, you don't feel like playing with Fang right now.  (No such content)";


Section 3 - Endings

when play ends:
	if Fang is in the Grey Abbey Library:			[ Fang the guard wolf]
		if humanity of player < 10:
			say "     Having had his alpha succumb to the infection, Fang leaves behind his rope leash and heads back into the city to find his fortune elsewhere.";
		otherwise:
			say "     When the military comes, you worry about how they'll react to Fang.  He's been quite loyal and not caused any trouble, but his beastial form distresses the soldiers.  As the squad leader moves up to tell you the wolf can't come, Fang pads quietly in front of you and sits down.  Clearing his throat, he starts talking with some difficulty.  In anticipation of this moment, it's clear to you he's spent some time among the library stacks reading in preparation.   With his clearly rational arguments (albeit cribbed from the philosophy section), he's able to plead his case well enough to join you.  While two soldiers remain with guns trained on him, the rest of the squad moves on to inspect and search the rest of the building.  You quietly pat the wolf's head before going along to show them the rest of the place.  Needing no more recognition, his tail wags once and he sits patiently waiting to join you in your new life as you home's loyal guardian and your secret lover.";


Fang ends here.