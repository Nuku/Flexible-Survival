Version 2 of Athanasia by Stripes begins here.
[Version 2 - Volcano Sex]
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
		if fightoutcome >= 10 and fightoutcome <= 19:
			say "     Leaving the other two to try and secure their struggling prey, the second feline moves in to try and deal with this interloper.";
			challenge "Panther Taur";
			if fightoutcome >= 10 and fightoutcome <= 19:
				say "     With the second one dealt with, you charge forward.  The other two are each at opposite sides of the net, struggling to keep it down.  The net has been partially burned away, through the bird's wings and one of its feet are still caught.  Closer now, you can see that it is not only the net, but also the hawk-like bird, which is aflame.  But the flames and fire seem almost to be part of this bird, as if emanating from its feathers.  In your confusion, you almost ram into the next panther, who growls menacingly at you before deciding that you might make a suitable replacement should their bird get away.";
				challenge "Panther Taur";
				if fightoutcome >= 10 and fightoutcome <= 19:	[won]
					say "     With only the last panther holding onto the net, it cannot keep the bird down.  It manages to flap its wings and take to the air.  With its wings spread wide, the fire bird shrieks one last time before unleashing a wave of fire towards the last of the cats.  This burst of fire incinerates the remains of the net and sends the feline running, fleeing with her tail aflame.";
					say "     With an unearthly grace, the phoenix turns about to face you as it hovers.  You are scared you'll receive the same treatment as the cat, but the bird's eyes shine with intelligence.  It nods its head to you, then takes back to the air, the fire fading quickly after that outburst.  You are left with a sense of awe and wonder at the majesty of the creature you helped save.";
					increase score by 15;
					now hp of Athanasia is 1;
					if guy is not banned, now FireAndIce is unresolved;
		if fightoutcome >= 20 and fightoutcome <= 29:			[lost]
			say "     Keeping you pinned down, the feline enjoys having some fun with you as the others from her group return.  They come with buckets of water, tossing them onto the flaming bird until her fires go out and she's left ashen and shivering in the remains of the net.  The panther taurs give some celebratory yells, kisses and gropes before, as a team, dragging off their captured prey in the damaged net.  The soaked bird shivers, but does not struggle as it's taken away to meet its fate.";
		if fightoutcome >= 30:							[fled]
			say "     You manage to make your escape from the felines, leaving them to their original prize.  Hearing some of the others returning, you don't stick around to see what's happening and just try and get more distance between you and the lustful predators.";
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
	say "     After tumbling through the air together, the reindeer manages to pull away from the phoenix and chuckles.  'Well, it wouldn't be a proper Christmas dinner without stuffing the turkey,' he laughs merrily, stroking his throbbing erection and trotting in the air towards the bird.  'Never!' the firebird shrieks as it is covered in flames and sends blasts of fire at the reindeer with flaps of its broad wings.  He weaves and dodges around these, still laughing merrily, seeming to have forgotten about you.";
	say "     As this aerial battle continues, the phoenix's flames begin to wane as the unnatural cold around the reindeer wears the fiery bird down.  As you finish freeing yourself from the tangle of lights, the firebird's attention is on you briefly and it is at this time that the reindeer swoops in to grab the flaming bird.  Feeling the chill up close, its flames die further and almost go out, but make one final surge of resistance as he grinds his cock against its tailfeathers.  There is a massive blast of fire that sends him flying away, so strong you can feel the wave of heat on the ground.  'Ow!  My chestnuts!' he yells, disappearing into the distance.";
	say "     That final blast seems to have taken the last of the firebird's strength and it comes crashing to the ground in a streak of fire.  You rush over it to, certain that it was trying to rescue you in repayment for helping it.  The bird stirs weakly in mound of scorched rubble its rough landing created, but fails to rise.  It's feathers have a dull, ashen look to them, like the embers of a dying fire.  It looks at you again with those strangely intelligent eyes and gives a weak cough.  'My name is Athanasia.  I- I am glad I got to repay you before the end.'";
	say "     'Something is different, wrong...' it pauses to cough, struggling to speak.  '...wrong here.  It is trying to me change... make me different.'  You cradle its head in your arms, stroking its once bright plumage as it continues speaking.  'I am too weak to return to...' it pauses, as if considering its words, '...to return home.  I... I am going to *cough* have to ask you to help me one last time.  Please find a safe spot for it.  Somewhere hot and dry... hottest you can find so... change... safely...' it says weakly, looking at you with pleading in its fading eyes.  You nod, uncertain what the bird means, but wanting to put it at ease in its final moments.";
	say "     Suddenly, the firebird pushes you back, snapping its sharp beak at you.  You scramble back on all fours quickly.  'Back!  It's coming!  Ahhhhhh!' the flaming bird shrieks as the fires surge again, engulfing it in a column of flames.  The fiery bird is consumed by the funeral pyre, leaving behind a pile of ashes and cooling embers.  Within the ashes is a golden egg, roughly the size of a man's head.";
	say "     As you bundle the egg up in some scraps of clothes you find nearby, you ponder the strange event you witnessed.  Reminded of the myth of the phoenix which bursts into flames as it dies to be reborn in an egg, you wonder if you've met someone whose infection is imitating the old legends or if this is something greater.  Left uncertain, you pack away the egg with care while wondering where you could find a place hot enough to hatch a phoenix's egg.";
	increase carried of phoenix egg by 1;
	now FireAndIce is resolved;
	now hp of Athanasia is 2;


Section 2 - The Egg

Table of Game Objects (continued)
name	desc	weight	object
"phoenix egg"	"     It has a golden shell and is roughly the size of a man's head."	10	phoenix egg

phoenix egg is a grab object. it is part of the player. It is not temporary.

instead of using phoenix egg:
	say "     You look over the egg, trying to think of a hot place for it to hatch.";

the scent of the phoenix egg is "     The egg smells faintly of ashes.";

the phoenix egg has a truth state called shownermine.  shownermine of phoenix egg is normally false.
[other show scenes could be created for other NPCs whom the player might show it to]

instead of conversing the Nermine while phoenix egg is owned and shownermine of phoenix egg is false:
	say "     Pulling out the phoenix egg, you put in on the counter in the hopes that Nermine's expertise may be of use.  She remains her normal demeanor, but her golden eyes lock onto it with a hungry greed you've not seen from her before.  'Is that pretty egg for trading with Nermine?  Is nothing special... but maybe Nermine can be giving you a small trinket for it,' she says with an alluring smile.  You shake your head, telling her you're just looking for information.  'It is phoenix egg, but I am seeing you are knowing that.  Nermine live long time, but egg would help her live even longer still,' she says softly.  'Nermine would be trading you...' she starts to say.  Catching her tongue slipping across her lips as she eyes the golden egg with a hunger beyond simple greed, you snatch it from the counter and slide it back into your pack.";
	say "     The jackal woman is clearly disappointed as you take the object of her hunger away.  'Fine!  I am telling you this much because I am being nice.  Phoenix egg is normally hatching shortly after phoenix is burning to ashes.  If not hatched yet, phoenix is weak and needing great heat to be regaining power.  It is bird of fire, of sun.  Powerful heat is being needed to restore it.  Sounds like too much trouble for you.  Nermine could be taking care of that for you,' she says, that hungry look in her eye again.  You clutch your pack tightly and step back.  It's clear you won't be able to trust Nermine on this matter and decide not to mention it to her again.";
	now shownermine of phoenix egg is true;


Section 3 - The Volcanic Cave

Volcanic Cave is a room. "     Partway down the volcanic crater, this cave is filled with heat from the lava further down[if hp of Athanasia >= 5].  The cave is just as hot as before, but with Athanasia here it seems more bearable and only a mild inconvenience[otherwise].  You are hot and sweating, but managing to cope for the moment[end if].  It seems the passage this cave leads into goes much deeper, but the eruption has blocked it off.  The cave contains a few open pools of magma, though the air is a little clearer of noxious gasses.".
down of A Volcanic Crater is Volcanic Cave.

the scent of Volcanic Cave is "The smell of smoke, soot and volcanic gasses is particularly strong here.";

instead of going down from Volcanic Crater:
	if hp of Athanasia < 2:
		say "     You have no reason to go down there.";
	otherwise if hp of Athanasia is 2:
		say "     Looking down into the fiery pit, you are reluctant to go down there, but this is certainly the hottest place around for the phoenix's egg.  Deciding to take a look, you begin to very carefully scale down into the crater.  The great heat makes this a terrible struggle, but you manage to persevere, feeling a need to see it through for Athanasia.  Reaching the tunnels down there, you enter the cave.";
		move the player to Volcanic Cave;
		if phoenix egg is owned:
			say "     You look around the cave and its open magma pools, deciding this place certainly meets the requirements.  Short of throwing it into the volcanic crater itself, this is probably the hottest spot you'll find.  It should also be quite safe down here.  There's no reason anything should venture into this infernal cave to disturb it.  Unpacking it, you bring the egg to one of the magma pools and, hoping you're doing the right thing, lower the egg onto the semi-solid crust covering it.  The soft layer dips and cracks a little, letting some of the lava flow up and pool around the egg.  It seems unharmed by this and even seems to become more golden and lustrous.  You sigh in relief and step away, reminding yourself to return to check on it later.  You feel thirsty and drained after your climb and stay down here.";
			delete phoenix egg;
			now lastfuck of Athanasia is turns;
			now hp of Athanasia is 3;
			increase score by 25;
			increase thirst of player by 12;
			decrease hp of player by ( hp of player / 5 );
		otherwise:
			say "     You look around the cave and its open magma pools, deciding this place certainly meets the requirements.  Short of throwing it into the volcanic crater itself, this is probably the hottest spot you'll find.  It should also be quite safe down here.  There's no reason anything should venture into this infernal cave to disturb it.  You'd best leave this place and collect the egg now that you've found a safe spot for it.  You feel thirsty and drained after your climb and stay down here.";
			increase thirst of player by 12;
			decrease hp of player by ( hp of player / 5 );
	otherwise if hp of Athanasia is 3:
		move the player to Volcanic Cave;
		say "     Checking on the egg, you find it much as you left it, if perhaps a little shinier.  Hopefully that's a good sign.";
	otherwise if hp of Athanasia is 4:
		move the player to Volcanic Cave;
		say "     Inside the cave, you find the broken remains of the phoenix egg blackened and crumbling scattered around the lava pool.  Fearing the worst, you start calling out Athanasia's name while searching the alcoves and crevices of the cavern.  You find nothing and are about to give up hope when there is a loud, triumphant shriek from outside the cave.  Running to its mouth, you see a large, fiery plume of lava boil up before unfolding a pair of wide wings.  The lava pours off the reborn phoenix like water and it comes swooping into the cave.";
		say "     Still aflame, the firebird wraps its wings around you, holding you to her fiery breast, but you are unharmed.  You can feel the inferno of heat, but it does not harm you, only feeling warm and soothing as the red and gold bird nuzzles you.  'You did wonderfully,' the bird says cheerfully, spinning you around in its wings, giving an affectionate nip on the shoulder before setting you down.";
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

the scent of the Athanasia is "The phoenix smells of woodsmoke.";

to say athanasiadesc:
	say "     The phoenix reborn looks much as she did in her last incarnation, fully avian in form and as as tall as a normal human being when upright.  She has rich red and golden plumage over her hawk-like body.  The edges of her wings and the end of tail ripple like the tongue of a flame, but do not harm you as you touch them.  Her golden eyes shine with intelligence and warmth for you and while her sharp, raptor beak looks dangerous, it nuzzles tenderly against your side.  Between her legs is a wet slit, something between a woman's pussy and a bird's cloacal vent.";

Instead of conversing the Athanasia:
	if hp of Athanasia < 5:
		say "     ERROR-Athanasia-5T: You should not be able to speak to me at this point!";
	otherwise if hp of Athanasia is 5:
		say "     [one of]Athanasia smiles and nuzzles her golden beak against you.  'I want to thank you again for helping me.  I don't know if I would have ever woken up without your help.'[or]The phoenix nips at your shoulder.  'I want to [']repay['] you for all you've done soon.'[or]The phoenix rubs her thighs together.  'Mmm... I never felt this way before.  It's so nice.'[or]'I was here before, a long time ago.  Things have certainly changed since then.'[or]'I can feel my strength returning slowly now.'[or]'This strange infection was draining my strength, but now that I've been reborn and let it change me, I feel better than ever,' she says with a soft moan as she runs a wingtip across her wet slit.[at random]";
	otherwise if hp of Athanasia <= 8:
		say "     [one of]Athanasia smiles and nuzzles her golden beak against you.  'I want to thank you again for helping me.  I don't know if I would have ever woken up without your help.'[or]The phoenix nips at your shoulder.  'I hope you'll let me [']repay['] you again soon for all you've done soon.'[or]The phoenix rubs her thighs together.  'Mmm... I can hardly wait to return home and share this gift with the others.'[or]'I was here before, a long time ago.  Things have certainly changed since then.'[or]'I can feel my strength returning slowly now.'[or]'This strange infection was draining my strength, but now that I've been reborn and let it change me, I feel better than ever,' she says with a soft moan as she runs a wingtip across her wet slit.[or]'I've never done anything before in my existence like that.  I want to do it again soon.'[or]'This [']sex['] thing is strange to me, but such a delight.  I'm sure, with a little encouragement, the others will love it too,' she muses.[at random]";
	otherwise:
		say "     [one of]Athanasia smiles and nuzzles her golden beak against you.  'I want to thank you again for helping me.  I don't know if I would have ever woken up without your help.'[or]'At first I didn't understand what all this sex was for aside from fun, but once I laid my first egg, I knew it was something much more.'[or]'I can hardly wait to return with my new clutch so we can share this new gift with the others.'[or]'I was here before, a long time ago.  It was much different back then, but now that I've adapted to it, this is much better,' she says with a smile and a brush of her wingtip across her pussy.[or]'I can feel my strength returning slowly now.'[or]'This strange infection was draining my strength, but now that I've been reborn and let it change me, I feel better than ever,' she says with a soft moan as she runs a wingtip across her wet slit.[or]'Having sex is such a wonderfully new delight for me.  My many chicks and I will certainly have fun introducing the others to it.'[or]'There were so few of us left, but this gift you've given me will change all that.'[at random]";


Section 5 - Sexy Times

the fuckscene of Athanasia is "[sexwithAthanasia]";

to say sexwithAthanasia:
	follow the cock descr rule;
	if hp of Athanasia < 5:
		say "     ERROR-Athanasia-5F: You should be able to proposition me at this point!";
	otherwise if lastfuck of Athanasia - turns < 8:
		say "     'As wonderful as that would be, I want to savour the new pleasures my changed body brings, so let's not rush things too much,' the lovely bird says, nuzzling your side.";
	otherwise:
		if hp of Athanasia is 5:
			now lastfuck of Athanasia is turns;
			now hp of Athanasia is 6;
			say "     Deciding it's pretty clear what the new and improved Athanasia wants, you run your hands over her soft feathers, sliding them down under her tail and stroking over her wet pussy.  It feels so hot to the touch, but does no harm.  Your nerves can tell it is burning, but there is no pain or discomfort that you'd expect with such a heat.  The pheonix moans at your touch, pressing her hindquarters back against your touch and raising her tail.  'Mmm... yes, that feels so good.'";
			if cocks of player > 0:
				say "     Finding yourself increasingly aroused by the red and gold bird, you press your face to her cloacal vagina and start licking and kisses at it, enjoying her mix of bird-like singing and moans of delight.  'This is so nice.  I've never felt like this before.  Oh, I... I need more...' she cries out as you give her clit a nibble.  As your tongue plays across those juicy folds, you toss aside your gear and clothes, stroking your rapidly stiffening cock.";
				say "     Deciding to give her the [']more['] she's looking for, you move in behind her, lining up your cock with her feathered vent.  She moans loudly and shivers in delight as your cock sinks into her wonderfully hot hole.  The heat of her loins fills you, filling you with vigour that drives you to pound into her hard and fast.  She takes this with unabashed ecstasy, revelling in the wild rutting.  You run your hands through her soft, downy feathers as you mate her.  Her flames wash over your painlessly, almost as if they are holding you lovingly.";
				if cock width of player < 12:
					say "     You can feel the heat of her loins flowing into you, pooling inside your groin and seeping into your balls.  They swell a little from this power and feel as if they're filled with magma-hot cum.  This pressure builds and builds until finally you drive your cock deep inside her and release your hot load, blasting wonderfully hot semen deep inside the firebird.  She cries out in a shriek of delight, cumming hard as well as your cum floods her womb.  Once you're drained, you climb off of her and snuggle up with her, enjoying some loving nips from her large beak.";
					increase cock width of player by 1;
				otherwise:
					say "     You can feel the heat of her loins flowing into you, pooling inside your groin and seeping into your balls.  They feel as if they're filled with magma-hot cum.  This pressure builds and builds until finally you drive your cock deep inside her and release your hot load, blasting wonderfully hot semen deep inside the firebird.  She cries out in a shriek of delight, cumming hard as well as your cum floods her womb.  Once you're drained, you climb off of her and snuggle up with her, enjoying some loving nips from her large beak.";
			otherwise:
				say "     Finding yourself increasingly aroused by the red and gold bird, you press your face to her cloacal vagina and start licking and kisses at it, enjoying her mix of bird-like singing and moans of delight.  'This is so nice.  I've never felt like this before.  Oh, I... I need more...' she cries out as you give her clit a nibble.  As your tongue plays across those juicy folds, you bring your hand up to start caressing them.";
				say "     Not equipped to mount the needy bird, you slide several fingers into her instead, giving her a good finger-fucking.  She moans loudly and shivers in delight as your digits sinks into her wonderfully hot hole.  The heat of her loins fills you, filling you with vigour that flows up your arm and drives you to pound into her hard and fast.  She takes this with unabashed ecstasy, revelling in it all the more as you press another finger into her and soon your entire hand.  You stroke your free hand through her soft, downy feathers as you work to please her.  You can feel the heat of her loins flowing into you until finally she can't hold back any longer and cries out in delight, cumming hard with a shriek of pleasure.  Her hot juices wash over you, tasting delicious as you lick up as much as you can get while continuing to thrust through her climax.  After slipping your hand free, you snuggle up with her, enjoying some loving nips from her large beak.";
		otherwise if hp of Athanasia >= 6:
			if hp of Athanasia is 6, now hp of Athanasia is 7;
			if cocks of player > 0 and a random chance of 1 in 3 succeeds:
				say "     Deciding to have some more fun with the fiery bird, you run your hands across her body, ruffling her feathers to get her excited.  She nuzzles her large head against your side as you divest yourself of your clothes and gear.  'I want to try it this way, my friend,' she says, nuzzling her sharp beak down towards your cock.  Eying her sharp beak, you stroke her head feathers and remind her to be careful.  She gives your side a playful nip and releases a chirping chuckle.";
				say "     Opening her beak, Athanasia lets your [cock size desc of player] [cock of player] shaft slide into it before closing it just enough to hold it gently while her broad, thick tongue slides across it.  You can't help but moan as that strong tongue slides across your cock and her seering hot breath blows sensually across your flesh, filling you with a warmth that soaks into you.  You stroke her head, complimenting her on how well she's doing and how quickly she's learning.  You thrust gently into her mouth, but mostly let the giant bird take care of it.";
				if cock width of player < 12:
					say "     You can feel the heat of her mouth flowing into you, pooling inside your groin and seeping into your balls.  They swell a little from this power and feel as if they're filled with magma-hot cum.  This pressure increases until finally you grip her head and your cock throbs in her maw, releasing shot after shot of your hot seed deep down her throat, which she happily swallows down.  Her tongue works you over until you've given every drop you can, then she cuddles you up in her flaming wings.";
					increase cock width of player by 1;
				otherwise:
					say "     You can feel the heat of her mouth flowing into you, pooling inside your groin and seeping into your balls.  They almost feel as if they're filled with magma-hot cum.  This pressure increases until finally you grip her head and your cock throbs in her maw, releasing shot after shot of your hot seed deep down her throat, which she happily swallows down.  Her tongue works you over until you've given every drop you can, then she cuddles you up in her flaming wings.";
			otherwise if cocks of player > 0 and a random chance of 1 in 2 succeeds:
				say "     Deciding to enjoy more intimate time with the phoenix, you run your hands across her body and then down to her hot loins when the turns and presents her tail to you.  'Oh yes, I want you inside me again, my friend,' she calls out, shifting her taloned feat and grabbing for purchase.  You move in behind her, sinking your hard, throbbing cock into her wet, dripping cloacal pussy.  Feeling her heat flowing into you again, you rut her hard and fast, much to her delight.";
				if cock width of player < 12:
					say "     You can feel the heat of her loins flowing into you, centering at your groin and seeping into your balls.  They swell a little from this power and feel as if they're filled with molten lava.  This pressure builds and builds until finally you push your cock deep inside her and cum loudly, blasting wonderfully hot semen deep inside the firebird.  She cries out with a loud, avian shriek of delight, cumming hard as well as your seed floods her womb.  Once you're drained, you climb off of her and snuggle up with her, enjoying some loving nips from her large beak.";
					increase cock width of player by 1;
				otherwise:
					say "     You can feel the heat of her loins flowing into you, pooling inside your groin and seeping into your balls.  They feel as if they're filled with molten lava.  This pressure builds and builds until finally you drive your cock deep inside her and release your hot load, blasting wonderfully hot semen deep inside the firebird.  She cries out in a shriek of delight, cumming hard as well as your cum floods her womb.  Once you're drained, you climb off of her and snuggle up in the bird's downy feathers, enjoying some loving nips from her large beak.";
			otherwise if cocks of player > 0 and a random chance of 1 in 2 succeeds and hp of Athanasia >= 7:
				say "     Deciding to enjoy more intimate time with the phoenix, you run your hands through her soft feathers, scritching at her strong breast.  She chirps happily and, with a little encouragement, rolls onto her back with her wings spread.  She moans softly as your cock nudges between her raised legs and slides across the wet lips of her cloacal pussy.  'Mmm... ready to go again, I see,' she says, nuzzling her beak against your cheek.  You ease yourself slowly into her, sliding your hard, throbbing cock into her wet, dripping cunt.  As her invogourating heat flows into you again, you pound into her zealously, making her chirp and sing in delight.";
				if cock width of player < 12:
					say "     You can feel the heat of her pussy flowing into you, washing through your body and seeping into your testes.  You can sense them getting heavier, fuller as this power suffuses you.  It feels like there is a raging inferno of power within them, one that only makes you stronger and more virile for your avian lover.  This pressure builds and builds until finally you push your cock deep inside her and cum loudly, shooting your hot seed deep inside the phoenix.  She cries out with a shriek of delight, her cloaca clamping down around your shaft and milking it for all it will give of that hot flood.  Once you're drained, you flop down atop the giant bird, nuzzling against her feathers as she folds her wings around you.";
					increase cock width of player by 1;
				otherwise:
					say "     You can feel the heat of her pussy flowing into you, washing through your body and seeping into your testes.  It feels like there is a raging inferno of power within them, one that only makes you stronger and more virile for your avian lover.  This pressure builds and builds until finally you push your cock deep inside her and cum loudly, shooting your hot seed deep inside the phoenix.  She cries out with a shriek of delight, her cloaca clamping down around your shaft and milking it for all it will give of that hot flood.  Once you're drained, you flop down atop the giant bird, nuzzling against her feathers as she folds her wings around you.";
			otherwise if cunts of player > 0 and a random chance of 2 in 5 succeeds:
				say "     Deciding to have some more fun with the fiery bird, you run your hands across her body, ruffling her feathers to get her excited.  She nuzzles her large head against your side as you divest yourself of your clothes and gear.  'Now it's my turn to please your sexual organs, my friend,' she says, nuzzling her sharp beak down towards your groin.  Eying her sharp beak, you stroke her head feathers and remind her to be careful.  She gives your side a playful nip and releases a chirping chuckle.";
				say "     Opening her beak, Athanasia lets her broad, thick tongue slide across your wet folds.  It is exquisitely warm, like a bonfire that doesn't burn and only further stokes the heat in your loins.  Aside from the occasional nip at your side, she keeps her beak out of the way while her tongue works to pleasure you[if cunt width of player > 5].  She even manages to push some of it into you, fucking your loose cunny with that thick, wet organ[end if].  Her tongue keeps working you until you are finally sent over the edge in a crashing orgasm while her wings safely hold you in their fiery embrace[if cocks of player > 0].  Your cock throbs and pulses against her hard beak, spraying your thick seed across her face as it boils over from your overflowing balls[end if].";
			otherwise if cunts of player > 0 and hp of Athanasia >= 7 and cunt length of player >= 10 and a random chance of 1 in 2 succeeds:
				if hp of Athanasia is 7:
					now hp of Athanasia is 8;
					say "     Deciding to have some more fun with the firebird, you run your hands across her body, scritching her to get her excited.  She nuzzles her large head against yours as you set aside your clothes and gear.  'Mmmm... I have a special treat for you.  I made it myself and it's quite nice,' she chirps with a grin.  Her footclaw reaches over and picks up a rather phallic black spire from behind a rock.  It seems quite smooth and well-formed to fill a wanton hole attached to a larger section suitable for the bird's talons to grip.  'I think it will fit quite nicely,' she adds with a grin in her voice.  You are a little reluctant to give the basalt dildo a try, but are too aroused to say no to the eager phoenix at this point.";
				otherwise if hp of Athanasia >= 8:
					say "     Deciding to have some more fun with the firebird, you run your hands across her body, scritching her to get her excited.  She nuzzles her large head against yours as you set aside your clothes and gear.  'Mmmm... I think we should break out my little toy again,' she says with a playful chirp.  Her footclaw reaches over and picks up the basalt dildo.  It is very smooth, shiny, and (as you know) well-formed to fill a wanton hole.  There is a larger section suitable for the bird's talons to grip.  Having already experienced the pleasure of the phoenix's personal toy, you have no reservations about enjoying it once more.";
				say "     The fiery bird lays down on her back with her wings spread and you climb atop her hot, downy feathers and resume scritching her.  You can feel her legs fumble around, eventually grabbing the rocky toy and lining it up to plunge into her pussy.  After several thrusts that make her moan and chirp in delight, the stone spire is slid out of her hot hole and repositioned to push into you.  You moan softly, feeling that heated column push its phallic head past your wet lips and slowly sink into your cunt, filling you deep inside with a warmth that excites you.  You grip her feathers tightly and start pushing back into her thrusts.  You share the toy with like the several minutes, each taking turns.  Glancing back as she pops it from her cloacal pussy, you can see it's become red hot over the course of the session with you both and, when it plunges back into you, the heat of it brings no pain, only the joy of orgasm[if cocks of player > 0].  Your cock pulses against her soft feathers, spraying your hot seed across them[end if].  Athanasia pounds the rocky dildo into you until your climax passes, then drives it back into herself with the same results.  Dropping the well-used toy, she sags back with a sigh of satisfaction, draping her wings across her lover's back.";
			otherwise if hp of Athanasia >= 8 and (cunts of player > 0 or cocks of player > 0) and a random chance of 3 in 5 succeeds:
				if hp of Athanasia is 8:
					say "     Seeking more pleasure from the phoenix, you snuggle up to her and start running your hands through her fiery feathers.  She moans softly and nuzzles you.  'Mmm... do you trust me, my lover?' she asks, nipping gently at your shoulder.  Feeling her warmth seeping into you, you nod.  'Good, for there's something I wish to show you,' she chirps happily and folds her wings around you, holding you tightly to her body.  She carries you like this towards the mouth of the cave, but then leaps off the edge into the volcanic crater.  You scream as you fall together towards the lava and dive into it.";
					say "     Envelopped in the molten rock, you can feel its intense heat all around you.  But it is only invigorating and does not incinerate you as you'd expect.  Feeling the soft nuzzle of the phoenix's beak against your cheek, you open your eyes and see her with a happy and slightly playful look on her face.  With a wing still around you, she flaps the other to swim through the lava, rolling over so you can see the bottom.  A part of you realizes that you're not seeing through the lava, but still you're able to 'see' its bottom.  Resting at the crater's floor are numerous large eggs, golden and glowing, soaking in the lava's incredible heat.";
					say "     Athanasia surfaces, rolling onto her back so you can rest on her body outside of the lava.  'I wanted you to see them.  You and a few other friends I've met have helped me, changed me and even given me eggs.  It has been so very long since there was a new phoenix egg and now there are so many.  And I have you to thank for them all.'  She nuzzles and nips at you affectionately.";
					now hp of Athanasia is 9;
				otherwise:
					say "     As you snuggle up to the phoenix in search of more sex, she wraps her wings around you and nips you lightly.  'Mmm... I feel like another hot bath while we play, my friend,' she says, leading you to the crater's edge.  Despite it being safe when you did it before, you can't help but be nervous as she dives back into the lava with you.  The molten rock envelops you both, bathing you in its intense heat without harm.  You catch another glimpse of her hidden clutch[if a random chance of 1 in 3 succeeds] with a few more eggs added to it[end if] before you both surface.  She floats on her back with you lying atop her flaming plumage.";
					if hp of Athanasia <= 10, now hp of Athanasia is 10;
				if cocks of player > 0 and ( a random chance of 2 in 3 succeeds or hp of Athanasia is 9 ):
					say "     Feeling the heat of the volcano surrounding and suffusing you, you are filled with lustful excitement.  You move into position and line up your [cock size desc of player] [cock of player] cock with the phoenix's hot pussy and sink into her.  Her cunt feels even hotter than the magma and you moan loudly, driving into her with great zeal.  Her fiery body trembles beneath you and she moans in pleasure.  The large bird's beak nips and nuzzles at you as you continue to thrust into her, making her body sway lightly on the molten lava.";
					say "     The firebird's cloacal pussy squeezes and milks at your shaft, wanting a thorough fucking as badly as you do.  You can feel her heat and the heat of the volcano sinking into you, flowing energy into your groin and filling your balls with a powerful heat[if cock width of player < 12] and making them swell further[end if] as you seek to breed this wonderous bird.  As you pound into her, she stretches herself back on the lava, wings wide to take in as much of its energy as she can, still seeking to recover her lost strength.  She sings, a musically chirping birdsong, but with rhythm and cadence to it as well.  Her flames of her feathers grow stronger, burning higher and brighter as her excitement builds.";
					if cock width of player < 12, increase cock width of player by 1;
					say "     Eventually, it is too much for you and you drive hard into her, sinking your aching cock deep into Athanasia's cunt and unleashing your molten load of semen as it overflows from your balls and blasts into the lustful phoenix.  Her singing grows louder and more jubilant as your seed is pumped into her and she cums as well, her cloaca quivering and squeezing at your cock needfully until your balls are drained and you're both left moaning and panting as you float lazily atop her in the lava.  After you've both had some time to recover, she takes you in her talons and flies you back up to the cave.";
				otherwise if a random chance of 1 in 2 succeeds or hp of Athanasia is 9:
					if cunts of player > 0:
						say "     Feeling the heat of the volcano surrounding and suffusing you, you are filled with lustful excitement.  Athanasia nuzzles and nips at you with her beak, raising up her taloned foot to show she's brought her basalt playtoy along.  Molten magma flows off of it and the dark stone has already started to glow a little with heat, but this doesn't hold you back at all, your molten bath having excited you so much that you're open for anything to satisfy your lustful urges.  You move into position, rubbing your [bodytype of player] body down onto hers, nuzzling against her crimson feathers as her taloned feet get a good grip on the rock dildo and sinks it into herself for a few thrusts before switching it over to you.";
						say "     As you feel that red-hot prick push into you, you moan loudly and grip her feathers tightly so you can push yourself back onto it harder.  Your cunt feels so hot and so needy that you whimper as the toy slips out of you so the phoenix can have her turn again.  You share your lover's toy like this, back and forth between you both as she chirps and moans in pleasure.  Laying spread eagle across the lava pool, she basks in the twin pleasures of soaking in the intense heat of the volcano and the intense pleasure of stuffing her overheated cunt.";
						say "     Each time that toy leaves her to plunge back into you, it is hotter and all the more pleasurable.  Your [bodydesc of player] trembles atop the pheonix when you're eventually brought to a crashing orgasm[if cocks of player > 0] that has you spill your hot seed across her feathers[end if].  She pounds the toy into you good and hard, giving you an intense climax that leaves you winded.  As you collapse atop her, she pulls the basalt prick out of you and plunges it back into herself, bringing herself to orgasm moments later.  You both are left moaning and panting as you float lazily atop her in the lava.  After you've both had some time to recover, she takes you in her talons, along with her toy and flies you back up to the cave.";
					otherwise:
						say "     Feeling the heat of the volcano surrounding and suffusing you, you are filled with lustful excitement.  Athanasia nuzzles and nips at you with her beak, raising up her taloned foot to show she's brought her basalt playtoy along.  Molten magma flows off of it and the dark stone has already started to glow a little with heat, but your molten bath has excited you so much that only seems to make it more enticing.  Shall you let her use it on you this time?";
						if the player consents:
							say "     You move into position, rubbing your [bodytype of player] body down onto hers, nuzzling against her crimson feathers as her taloned feet get a good grip on the rock dildo and sinks it into herself for a few thrusts before switching it over to you.  Feeling that heated, glowing rod against you is more intense than before, but still only feels wonderful to you.  Despite the heat, it remains coated in her juices and this lets it be eased into your tight ass.  The warmth of her fiery body flows into you, heated to even greater intensity by the volcano.  This only increases the intensity of your lust and you start pushing yourself back onto the basalt rod.";
							say "     As you feel that red-hot prick pumping inside you, you moan loudly and grip her feathers tightly so you can push yourself back onto it harder.  Your anus feels so hot and so needy that you begin to whimper each time the toy slips out of you.  Your cock feels as hard as the rocky dildo filling you, dribbling a steady stream of precum onto her crimson feathers.  Laying spread eagle across the lava pool, she basks in the twin pleasures of soaking in the intense heat of the volcano and the intense satisfaction of giving you such physical delight.";
							say "     Eventually, it all becomes too much for you and a particularly firm thrust of the hard, heated toy into you pushes you over the edge.  Your cock throbs and blasts your hot load across your lover's flaming feathers.  She pounds the toy into you good and hard, giving you an intense climax that leaves you winded.  She nuzzles and nips at you in return, moaning and chirping as happily as she cums hard in lustful release.  You both are left moaning and panting as you float lazily atop her in the lava.  After you've both had some time to recover, she takes you in her talons, along with her toy and flies you back up to the cave.";
						otherwise:
							say "     Unsure about taking that large toy while in such a precarious position, you instead tell her that you'd really like to see her use it on herself this time.  She gives you a gentle nip on the shoulder and nods, asking you to turn around.  Once you're in position, you get to watch as her legs line up the rocky toy to plunge into her pussy.  As the basalt toy plunges into her stretched cunt again and again, you tease her wet folds and start licking at her clit, lapping up her delicious juices.  As you're doing this, she returns the favour by bringing her beak to your crotch to lick and suck at your throbbing cock.  From this position, your legs overhang off into the molten magma, but despite feeling the great heat of it, it brings no harm and no pain thanks to the phoenix's protection.";
							say "     Enjoying the pleasure of watching the phoenix fuck herself with her homemade toy, you feel her juicy cunt grow hotter and hotter as her excitement builds.  You thrust into her beak lightly, but largely let her work her broad tongue over it as she likes.  With her wings spread out across the surface of the lava pool, Athanasia is basking in the twin pleasures of soaking in the intense heat of the volcano and the intense pleasure of stuffing her overheated cunt.  And added to that is the additional pleasure you lavishing attention upon her stuffed cunt.";
							say "     Your tongue moves back and forth from the firebird's needy cunt and the slick, glowing toy when she slides it backwards to make another thrust.  The heat from it, as always, does you no harm and only seems to fill you with more energy and excitement.  In time, it all becomes too much for the lustful bird and she drives her toy hard into herself one last time, cumming intensely.  As she cums, you thrust your cock into her hot maw, unleashing the fiery load of semen you've built up for her.  You both are left moaning and panting as you float lazily atop her in the lava.  After you've both had some time to recover, she takes you in her talons, along with her toy and flies you back up to the cave.";
				otherwise:
					say "     Feeling the heat of the volcano surrounding and suffusing you, you are filled with lustful excitement.  Eager to satisfy your intense arousal, you carefully move around atop the fiery bird and bring your head to her cloacal pussy while offering your own crotch to the sexy bird.  She nuzzles at your hip and gives you a playful nip before nuzzling at your [if cocks of player > 0 and cunts of player > 0]cock and cunt[otherwise if cocks of player > 0]cock[otherwise]cunt[end if], letting her broad tongue slide across your genitals.  You moan in plesure and bury your face in her crotch, licking and kissing at her hot cunt.  Feeling far hotter than usual, this heat still brings you nothing but pleasure, adding to the strength and heat of your own arousal.";
					say "     Your attention to the phoenix's cloacal pussy makes her moan and chirp in pleasure, which brings a smile to your face.  And she returns the pleasure in kind, [if cocks of player > 0]having taken your cock into her beak and sucking eagerly upon it[otherwise]sliding her tongue across your oversensitve pussy, making your steaming juices flow all the more[end if].  You please one another like this while the recovering phoenix floats across the lava, soaking in its power for added pleasure to this lustful encounter.  And wanting to [one of]make her lava bath even more intense, you cautiously dip your hand into the magma pool and pour it over her cunt, making her squawk in sudden delight.  Taking this as a good sign, you scoop several more handfuls to spread over her heated foldds before take a big scoop and pour it right into her, plunging your hand into her cunt along with the red hot lava[or]satisfy her craving even more, you slide several fingers into her pussy, frigging her quickly with them.  And once she's loosened up, you slide your whole hand down into her needy cunt, pumping into her hard and fast as she squawks in delight[at random].  This sends her crashing over the edge into climax, her hot, dripping cunt clenching down hard around you as her tongue goes into overdrive to get you to cum as well.  You can't hold back long and are soon crying out in delight as well.  You both are left moaning and panting as you float lazily atop her in the lava.  After you've both had some time to recover, she takes you in her talons, along with her toy and flies you back up to the cave.";
				if hp of Athanasia is 9:
					say "     Once back in the cave, she cautions you not to try entering the volcano without her present to protect you.  As with her shielding you here in the volcanic cave, it is her power which is allowing you to survive such heat unscathed.";
			otherwise if cunts of player is 0 and hp of Athanasia >= 7 and a random chance of 2 in 5 succeeds:
				if hp of Athanasia is 7:
					say "     Deciding to have some more fun with the firebird, you run your hands across her body, scritching her to get her excited.  She nuzzles her large head against yours as you set aside your clothes and gear.  'Mmmm... I have a special treat for you.  I made it myself and it's quite nice,' she chirps with a grin.  Her footclaw reaches over and picks up a rather phallic black spire from behind a rock.  It seems quite smooth and well-formed to fill a wanton hole attached to a larger section suitable for the bird's talons to grip.  'I thought you might like to give it a try,' she says with a grin in her voice.  Realizing that she must have in mind, you are a little reluctant to give the basalt dildo a try, but are also quite aroused and part of you finds the phallic spire quite tempting at this point.  Shall you accept her offer?";
				otherwise:
					say "     Deciding to have some more fun with the firebird, you run your hands across her body, scritching her to get her excited.  She nuzzles her large head against yours as you set aside your clothes and gear.  'Mmmm... I think we should break out my little toy again,' she says with a playful chirp.  Her footclaw reaches over and picks up the basalt dildo.  It is very smooth, shiny, and (as you know) well-formed to fill a wanton hole.  There is a larger section suitable for the bird's talons to grip.  Having already seen it in action, you are less reluctant to play with it again.  Shall you let her use it on you this time?";
				if the player consents:
					say "     The fiery bird lays down on her back with her wings spread and you climb atop her hot, downy feathers and resume scritching her.  You can feel her legs fumble around, eventually grabbing the rocky toy and lining it up to plunge into her pussy.  After several thrusts that make her moan and chirp in delight, the stone spire is slid out of her hot hole and repositioned to push into you.  You moan softly and try to relax as that hard, heated dildo probes at your back door.  Coated in her juices, it eases its passage into you, slowly working to stuff your tight ass.  The warmth of her fiery body flows into you, increasing the intensity of your lust.  She takes her time fucking you with her toy while her fiery wings hold you close, letting their heat suffuse you[if cocks of player > 0] and flow into your groin[end if].  Eventually, the pounding of the basalt rod into your anus[if cocks of player > 0], grinding against your prostate, becomes too much and you cry out loudly in lustful release, cumming hard across your avian lover's crimson feathers.  As you orgasm, she nuzzles and nips at you neck and shoulders, moaning and chirping happily[end if] as she climaxes hard in lustful release.  Dropping the well-used toy, she sags back with a sigh of satisfaction, draping her wings across her lover's back.";
				otherwise:
					say "     You take a moment to [if hp of Athanasia is 7]explain to her that hole isn't commonly used for sex (though you do have to add that it's certainly becoming more common these days)[otherwise]remind her that hole isn't most people's first choice for sex (especially with something of that size)[end if], but add that you'd be happy to help her use it on herself.  Pleased with that solution, she lays down on her back with her wings spread and you climb atop her hot, downy feathers facing her groin.  You watch as her legs fumble around a little before eventually grabbing the rocky toy and lining it up to plunge into her pussy.  As the basalt toy plunges into her stretched cunt again and again, you tease her wet folds and start licking at her clit, lapping up her delicious juices[if cocks of player > 0].  As you're doing this, she returns the favour by bringing her beak to your crotch to lick and suck at your throbbing cock[end if].";
					say "     Enjoying the pleasure of watching the phoenix fuck herself with her homemade toy, you feel her juicy cunt grow hotter and hotter as her excitement builds.  Eventually the stone phallus glows a warm red, heated surprisingly hot by the fiery bird's lustful energy.  You lick the smooth, glowing stone, lapping the juices from it as she slides it back before another thrust.  The heat from it, as always, does you no harm and only seems to fill you with more energy and excitement.  In time, it all becomes too much for the lustful bird and she drives her toy hard into herself one last time, cumming intensely[if cocks of player > 0].  As she cums, you thrust your cock into her hot maw, unleashing the fiery load of semen you've built up for her.  Dropping the well-used toy, she sags back with a sigh of satisfaction, draping her wings across her lover's back.";
				if hp of Athanasia is 7, now hp of Athanasia is 8;
			otherwise:
				say "     Deciding to enjoy more intimate time with the phoenix, you run your hands across her body and then down to her hot loins when the turns and presents her tail to you.  Getting down on your knees behind her, you bury your face in those soft feathers, licking and kissing her pussy.  She moans and chirps musically in pleasure especially loudly when you suck at her hard clit.  'Oh yes.  Just like that.  I love this new form of mine so much thanks to you.'  You lavish attention on her cloacal pussy, alternating between your mouth and several fingers, getting her to quiver and moan again and again before she reaches a crashing, fiery climax that sends her hot juices across your face.  You lap up her delicious juices, getting the giant bird clean before letting her roll over onto her back so you can snuggle up in her warm wings.";
		[puts Snow Leopard as lead monster for gender change (appropriate size)]
		repeat with y running from 1 to number of filled rows in table of random critters:
			choose row y in table of random critters;
			if name entry is "Snow Leopard":
				now monster is y;
				break;
		choose row monster from table of random critters;
		if "Female Preferred" is listed in feats of player:
			now sex entry is "Female";
			if cunt length of player < cunt length entry and scenario is not "Researcher", follow the sex change rule;
		otherwise if "Herm Preferred" is listed in feats of player:
			now sex entry is "Both";
			if cunt length of player < cunt length entry and cock length of player < cock length entry and scenario is not "Researcher", follow the sex change rule;
		otherwise:
			now sex entry is "Male";
			if cock length of player < cock length entry and scenario is not "Researcher", follow the sex change rule;


[	hp of Athanasia			]
[ 0 = quest not started/failed	]
[ 1 = freed Athanasia			]
[ 2 = got egg				]
[ 3 = put egg in volcano cave		]
[ 4 = egg ready				]
[ 5 = Athanasia hatched			]
[ 6 = sexed up Athanasia once		]
[ 7 = more sex w/Athanasia		]
[ 8 = shown sex toy 			]
[ 9 = taken into volcano		]
[ 10 = been in the volcano 2+		]


Section 6 - Endings

when play ends:
	if hp of Athanasia >= 5:
		if humanity of player < 10:
			say "     Not long after your mind falls and you are lost to the infection, there is a fiery column which rises into air.  There is a triumphant ring to it, though also a hint of sadness.  You do not notice this event, too caught up in your new, lustful existence.";
		otherwise:
			say "     As you are being taken out of the city by the military forces, everything stops for a moment as a fiery column erupts in the distance, shooting off into the sky.  You watch as the pillar of flame continues to ascend with a triumphant cry filled with ecstasy and joy.  You watch as the column briefly unfolds a broad pair of fiery wings before curling them back in and the blaze seems to implode upon itself.  The soldiers are in chaos at this sight, yelling over their radios to report in and demand orders while you watch with a smile, knowing that Athanasia the Phoenix [if hp of Athanasia >= 9]and her many eggs are on their way home[otherwise]is on her way home[end if], off to share her precious gift with the rest of her people, probably changing them forever.";

Athanasia ends here.