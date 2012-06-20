Version 1 of Athanasia by Stripes begins here.
[2:45]
"Adds a non-anthro Phoenix named Athanasia."

Section 1 - Events

Captured Bird is a situation.  The level of Captured Bird is 3.

when play begins:
	add Captured Bird to badspots of girl;
	add Captured Bird to badspots of hermaphrodite;
	add Captured Bird to badspots of furry;

Instead of resolving a Captured Bird:
	say "     Your exploration of the city is interrupted by a loud, avian shriek, soon followed by several feline growls.  There is quite a commotion coming from somewhere off to your left.  You consider moving away, but the noise seems to be remaining in the same spot, so you decide at least risking a quick peek to see what's going on.  Passing between some building, you take cover behind a short fence and gaze out at the small vacant lot across the street.";
	say "     There are several of those panther taurs in the lot surrounding another creature.  The other, a red and yellow bird of some kind, is caught in a net trap the panthers probably set up.  The bird, nearly as big as a person but completely avian in form, shrieks again and struggles frantically against the net, which seems to be on fire.  There is some yelling among the panthers that you can't make out and several of them run off, leaving four securing the corners of the net to hold the struggling bird down.  Unsure of the felines['] motive aside from possible cooking their prey while still in the trap, you do realize that if you're going to do anything, it will have to be now if there is to be any chance of saving the bird.";
	if the player consents:
		say "     Charging across the street, you rush to attack the nearest of the felines, trying to subdue it before the others can come to assist it.";
		challenge "Panther Taur";
		if lost is 0:
			say "     Leaving the other two to try and secure their struggling prey, the second feline moves in to try and deal with this interloper.";
			challenge "Panther Taur";
			if lost is 0:
				say "     With the second one dealt with, you charge forward.  The other two are each at opposite sides of the net, struggling to keep it down.  The net has been partially burned away, through the bird's wing and one of its feet are still caught.  Closer now, you can see that it is not only the net, but also the hawk-like bird, which is aflame.  But the flames and fire seem almost to be part of this bird, as if eminating from its feathers.  In your confusion, you almost ram into the next panther, who growls menacingly at you before deciding that you might make a suitable replacement should their bird get away.";
				challenge "Panther Taur";
				if lost is 0:
					say "     With only the last panther holding onto the net, it cannot keep the bird down.  It manages to flap its wings and take to the air.  With its wings spread wide, the fire bird shrieks one last time before unleashing a wave of fire towards the last of the cats.  This burst of fire incinerates the remains of the net and sends the feline running, fleeing with her tail aflame.";
					say "     With an unearthly grace, the phoenix turns about to face you as it hovers.  You are scared you'll receive the same treatment as the cat, but the bird's eyes shine with intelligence.  It nods its head to you, then takes back to the air, her fire fading quickly after that outburst.  You are left with a sense of awe and wonder at the majesty of the creature you helped save.";
					now hp of Athanasia is 1;
					if guy is not banned, now FireAndIce is unresolved;
		if lost is 1:
			say "     Keeping you pinned down, the feline enjoys having some fun with you as the others from her group return.  They come with buckets of water, tossing them onto the flaming bird until her fires go out and she's left ashen and shivering in the remains of the net.  The panther taurs give some celebratory yells, kisses and gropes before, as a team, dragging off their captured prey in the damaged net.  The soaked bird shivers, but does not struggle as it's taken away to meet its fate.";
	otherwise:
		say "     Figuring that it's not your problem, you slip back the way you came, leaving the cats to their grisly barbeque.";
	now Captured Bird is resolved;


FireAndIce is a situation.  It is resolved.  The level of FireAndIce is 6.

instead of resolving FireAndIce:
	say "You run into a Reindeer.";
	say "     You can feel a disturbing chill in the air and even start to shiver as the temperature starts to drop abruptly.  As you try to bundle yourself up against the unexpected cold around you, you hear some jingling bells from above.  Looking you, you can see snow start to fall and a reindeer flying overhead.  The reindeer has a few Christmas decorations hanging from its antlers and golden bells on red straps on his body.  As he swoops lower, he laughs merrily, leaving another stream of light snow in his wake.";
	say "     The holiday reindeer has no wings or other means to fly, he simply is, trotting lightly in the air as he does.  As he swoops in again, he strokes his stiff cock, firing a few shots of cum at you, intent on sharing some of his holiday cheer with you.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
	say "     But as the reindeer comes swooping in, he pulls something from a satchel at his side and throws it down overtop you.  The blinking bundle opens up into a net made from Christmas lights that are somehow running despite being unpowered.  Caught by surprise, this strange net catches and entangles you.  As you work to push it off, the reindeer swoops in again, but there is a loud shriek in the air as a red blur rushes in, colliding with him.";
	say "     After tumbling through the air together, the reindeer manages to pull away from the phoenix and chuckles.  'Well, it wouldn't be a proper Christmas dinner without stuffing the turkey,' he laughs merrily, stroking his throbbing erection and trotting in the air towards her.  'Never!' the firebird shrieks as it is covered in flames and sends blasts of fire at the reindeer with flaps of its broad wings.  He weaves and dodges around these, still laughing merrily, seeming to have forgotten about you.";
	say "     As this aerial battle continues, the phoenix's flames begin to wane as the unnatural cold around the reindeer wears her down.  As you finish freeing yourself from the tangle of lights, the firebird's attention is on you briefly and it is at this time that the reindeer swoops in to grab the flaming bird.  Feeling the chill up close, its flames die further and almost go out, but make one final surge of resistance as he grinds his cock against its tailfeathers.  There is a massive blast of fire that sends him flying away, so strong you can feel the wave of heat on the ground.  'Ow!  My chestnuts!' he yells, disappearing into the distance.";
	say "     That final blast seems to have taken the last of the firebird's strength and it comes crashing to the ground in a streak of fire.  You rush over it to, certain that it was trying to rescue you in repayment for helping it.  The bird stirs weakly in mound of scorched rubble its rough landing created, but fails to rise.  It's feathers have a dull, ashen look to them, like the embers of a dying fire.  It looks at you again with those strangely intelligent eyes and gives a weak cough.  'My name is Athanasia.  I- I am glad I got to repay you before the end.'";
	say "     'Something is different, wrong...' it pauses to cough, struggling to speak.  '...wrong here.  It is trying to me change... make me different.'  You cradle its head in your arms, stroking its once bright plumage as it continues speaking.  'I am too weak to return to...' it pauses, as if considering its words, '...to return home.  I... I am going to *cough* have to ask you to help me one last time.  Please find a safe spot for it.  Somewhere hot and dry... hottest you can find so... change... safely...' it says weakly, looking at you with pleading in its fading eyes.  You nod, uncertain what the bird means, but wanting to put it at ease in its final moments.";
	say "     Suddenly, the firebird pushes you back, snapping its sharp beak at you.  You scramble back on all fours quickly.  'Back!  It's coming!  Ahhhhhh!' the flaming bird shrieks as the fires surge again, engulfing it in a column of flames.  The fiery bird is consumed by the funeral pyre, leaving behind a pile of ashes and cooling embers.  Within the ashes is a golden egg, roughly the size of a man's head.";
	say "     As you bundle the egg up in some scraps of clothes you find nearby, you ponder the strange event you witnessed.  Reminded of the myth of the phoenix which bursts into flames as it dies to be reborn in an egg, you wonder if you've met someone whose infection is imitating the old legends or if this is something greater.  Left uncertain, you pack away the egg with care while wondering where you could find a place hot enough to hatch a phoenix's egg.";
	add "phoenix egg" to invent of player;
	now FireAndIce is resolved;
	now hp of Athanasia is 2;


Section 2 - The Egg

Table of Game Objects (continued)
name	desc	weight	object
"phoenix egg"	"     It has a golden shell and is roughly the size of a man's head."	10	phoenix egg

phoenix egg is a grab object. it is part of the player. It is not temporary.

instead of using phoenix egg:
	say "     You look over the egg, trying to think of a hot place for it to hatch.";

instead of sniffing the phoenix egg:
	say "     The egg smells faintly of ashes.";

the phoenix egg has a truth state called shownermine.  shownermine of phoenix egg is normally false.
[other show scenes could be created for other NPCs whom the player might show it to]

instead of conversing the Nermine while "phoenix egg" is listed in invent of player and shownermine of phoenix egg is false:
	say "     Pulling out the phoenix egg, you put in on the counter in the hopes that Nermine's expertise may be of use.  She remains her normal demeanor, but her golden eyes lock onto it with a hungry greed you've not seen from her before.  'Is that pretty egg for trading with Nermine?  Is nothing special... but maybe Nermine can be giving you a small trinket for it,' she says with an alluring smile.  You shake your head, telling her you're just looking for information.  'It is phoenix egg, but I am seeing you are knowing that.  Nermine live long time, but egg would help her live even longer still,' she says softly.  'Nermine would be trading you...' she starts to say.  Catching her tongue slipping across her lips as she eyes the golden egg with a hunger beyond simple greed, you snatch it from the counter and slide it back into your pack.";
	say "     The jackal woman is clearly disappointed as you take the object of her hunger away.  'Fine!  I am telling you this much because I am being nice.  Phoenix egg is normally hatching shortly after phoenix is burning to ashes.  If not hatched yet, phoenix is weak and needing great heat to be regaining power.  It is bird of fire, of sun.  Powerful heat is being needed to restore it.  Sounds like too much trouble for you.  Nermine could be taking care of that for you,' she says, that hungry look in her eye again.  You clutch your pack tightly and step back.  It's clear you won't be able to trust Nermine on this matter and decide not to mention it to her again.";
	now shownermine of phoenix egg is true;


Section 3 - The Volcanic Cave

Volcanic Cave is a room. "     Partway down the volcanic crater, this cave is filled with heat from the lava further down[if hp of Athanasia >= 5].  The cave is just as hot as before, but with Athanasia here it seems more bearable and only a mild inconvenience[otherwise].  You are hot and sweating, but managing to cope for the moment[end if].  It seems the passage this cave leads into goes much deeper, but the eruption has blocked it off.  The cave contains a few open pools of magma, though the air is a little clearer of noxious gasses.".
down of A Volcanic Crater is Volcanic Cave.

instead of sniffing Volcanic Cave:
	say "The smell of smoke, soot and volcanic gasses is particularly strong here.";

instead of going down from Volcanic Crater:
	if hp of Athanasia < 2:
		say "     You have no reason to go down there.";
	otherwise if hp of Athanasia is 2:
		say "     Looking down into the fiery pit, you are reluctant to go down there, but this is certainly the hottest place around for the phoenix's egg.  Deciding to take a look, you begin to very carefully scale down into the crater.  The great heat makes this a terrible struggle, but you manage to persevere, feeling a need to see it through for Athanasia.  Reaching the tunnels down there, you enter the cave.";
		move the player to Volcanic Cave;
		if "phoenix egg" is listed in feats of player:
			say "     You look around the cave and its open magma pools, deciding this place certainly meets the requirements.  Short of throwing it into the volcanic crater itself, this is probably the hottest spot you'll find.  It should also be quite safe down here.  There's no reason anything should venture into this infernal cave to disturb it.  Unpacking it, you bring the egg to one of the magma pools and, hoping you're doing the right thing, lower the egg onto the semi-solid crust covering it.  The soft layer dips and cracks a little, letting some of the lava flow up and pool around the egg.  It seems unharmed by this and even seems to become more golden and lustrous.  You sigh in relief and step away, reminding yourself to return to check on it later.  You feel thirsty and drained after your climb and stay down here.";
			delete phoenix egg;
			now lastfuck of Athanasia is turns;
			now hp of Athanasia is 3;
			increase score of player by 25;
			increase thirst of player by 12;
			decrease hp of player by ( hp of player / 5 );
		otherwise:
			say "     You look around the cave and its open magma pools, deciding this place certainly meets the requirements.  Short of throwing it into the volcanic crater itself, this is probably the hottest spot you'll find.  It should also be quite safe down here.  There's no reason anyting should venture into this infernal cave to disturb it.  You'd best leave this place and collect the egg now that you've found a safe spot for it.  You feel thirsty and drained after your climb and stay down here.";
			increase thirst of player by 12;
			decrease hp of player by ( hp of player / 5 );
	otherwise if hp of Athanasia is 3:
		move the player to Volcanic Cave;
		say "     Checking on the egg, you find it much as you left it, if perhaps a little shinier.  Hopefully that's a good sign.";
	otherwise if hp of Athanasia is 4:
		move the player to Volcanic Cave;
		say "     Inside the cave, you find the broken remains of the phoenix egg blackened and crumbling scattered around the lava pool.  Fearing the worst, you start calling out Athanasia's name while searching the alcoves and crevices of the cavern.  You find nothing and are about to give up hope when there is a loud, triumphant shriek from outside the cave.  Running to its mouth, you see a large, fiery plume of lava boil up before unfolding a pair of wide wings.  The lava pours off the reborn phoenix like water and she comes swooping into the cave.";
		say "     Still aflame, the firebird wraps its wings around you, holding you to her fiery breast, but you are unharmed.  You can feel the inferno of heat, but it does not harm you, only feeling warm and soothing as the red and gold bird nuzzles you.  'You did wonderful,' the bird says cheerfully, spinning you around in its wings, giving an affectionate nip on the shoulder before setting you down.";
		say "     The bird spreads its wings for you, showing off its reborn body.  'I was just having a refreshing bath when I heard you calling out for me.  Isn't my new body lovely?' the phoenix asks, preening its rich red and gold plumage.  'And I have changed like I needed to.  Now I'm reborn for this w... this place,' the firebird adds, turning around and raising her tail to show off a plump and wet cloacal pussy which you don't recall being there before.  'Mmmm... and it feels so good,' she adds with a coy glance at you and a shake of her tailfeathers.";
		now hp of Athanasia is 5;
	otherwise:
		move the player to Volcanic Cave;

instead of going up from Volcanic Cave:
	move the player to Volcanic Crater;
	follow the turnpass rule;

an everyturn rule:
	if hp of Athanasia is 3 and lastfuck of Athanasia - turns >= 16 and player is not in the Volcanic Cave and the player is not in the Volcanic Crater:
		say "     You recall the phoenix egg you left at the volcanic crater and remind yourself to go and check on it soon.";
		now hp of Athanasia is 4;
		move Athanasia to Volcanic Cave;


Section 4 - Athanasia

Athanasia is a woman.
The description of Athanasia is "[athanasiadesc]";
The conversation of Athanasia is { "Burninate!" }.
lastfuck of Athanasia is normally 555.

instead of sniffing the Athanasia:
	say "The phoenix smells of woodsmoke.";

to say athanasiadesc:
	say "     The phoenix reborn looks much as she did in her last incarnation, fully avian in form and as as tall as a normal human being when upright.  She has rich red and golden plumage over her hawk-like body.  The edges of her wings and the end of tail ripple like the tongue of a flame, but do not harm you as you touch them.  Her golden eyes shine with intelligence and warmth for you and while her sharp, raptor beak looks dangerous, it nuzzles tenderly against your side.  Between her legs is a wet slit, something between a woman's pussy and a bird's cloacal vent.";

Instead of conversing the Athanasia:
	say "     [one of]Athanasia smiles and nuzzles her golden beak against you.  'I want to thank you again for helping me.  I don't know if I would have ever woken up without your help.'[or]The phoenix nips at your shoulder.  'I want to [']repay['] you for all you've done soon.'[or]The phoenix rubs her thighs together.  'Mmm... I never felt this way before.  It's so nice.'[or]'I was here before, a long time ago.  Things have certainly changed since then.'[or]'I can feel my strength returning slowly now.'[or]'This strange infection was draining my strength, but now that I've been reborn and let it change me, I feel better than ever,' she says with a soft moan as she runs a wingtip across her wet slit.[at random]";

instead of fucking the Athanasia:
	say "     We'll get to that eventually.  (content not yet available)";


Section 5 - Endings (coming soon)

Athanasia ends here.