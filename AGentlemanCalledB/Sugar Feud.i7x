Sugar Feud by AGentlemanCalledB begins here.
[version 1 - CCM event]

"Adds a series of events for the Sugar Glider and Sugar Ferret creatures to the midway."
[Events will eventually be compiled into a single consolidated event.
See also; "Sweet Exchange", "Caught Glider" - Stripes\assorted events]

Sugar Shack is a situation.
The sarea of Sugar Shack is "Midway".
when play begins:
	add Sugar Shack to badspots of furry;
	add Sugar Shack to badspots of girl;
	add Sugar Shack to badspots of humorous;

Instead of resolving a Sugar Shack:
	setmonster "Sugar Glider";
	choose row monster in table of random critters;
	say "     Turning a corner you see a rather curious sight ahead down the midway, one of those brightly colored sugar glider girls scampering around a large stall at the end of the row. As you're considering turning back to avoid a confrontation with the excited marsupial, she spots you watching and calls out to you, waving you over eagerly. Finding yourself curious what she's up to you approach slowly, wary of some sort of trap the giggling girl may have set up, but you reach the stall without incident and find it to be, unsurprisingly, a candy stall.";
	say "     When you step up to the counter there's no sign of the glider who was here moments ago. Peering over the counter, you see the shelves of the stall have been picked clean, but there is a large cotton candy machine in the back that appears mostly undisturbed. 'Isn't it great!?' You whip around to find the source of the voice behind you, finding yourself face to face with the grinning sugar glider. 'And it still works!' she cheers, grabbing your arm and pulling you around to the door at the back of the stall, then inside.";
	WaitLineBreak;
	say "     As she flips on the machine, you hear the muffled sound of a generator stirring to life somewhere under the stall. The sugar glider bounces and cheers with glee as the cotton candy machine begins warming up. Soon the machine is heated and humming happily, simply awaiting the ingredients for its fluffy treat, which the sugar glider is all too happy to provide. 'Red or blue?' she asks you, fishing into her pouch and pulling out two handfuls of small sugary candies. 'Too slow!' she shouts before you even have a chance to open your mouth, dropping both handfuls of candy into the machine with a smile.";
	say "     She squeals with excitement as the machine begins spinning her contribution into sugary fluff, and when she can wait no longer, she simply reaches into the open drum, forgoing the sticks entirely as she collects a great spool of the stuff on her arm. Pulling out a sizable mass of the cottony fluff, the eager glider wastes no time digging in, burying her face in the cotton candy with a muffled 'Mmmm', filling her mouth with the stuff before waving her candy coated hand in your face, offering you a taste. You pull a small piece of the fluff off her arm and poke it into your mouth, savoring the powerful sweetness of the fresh cotton candy, and soon you're reaching for another piece. The two of you continue like this for some time, until her arm has been picked clean. After licking the last of the sweet fluff from between her fingers, the sugar glider gives you a cute smirk and offers you her paw. With the sugary taste of the last batch still on your lips, part of you wants to reach out and accept her paw, but a small part of you wonders if it's really a good idea. Will you take the sugar glider's offer?";
	if player consents:
		say "     'What's the worst that could happen?' you ask yourself as you take the glider's open paw and return her smirk. She cheers as she reaches back into the drum full of spinning cotton candy, pulling your own arm in with her. An itchy tingling sensation builds as the candy fluff collects on your arm, but you are soon distracted from that and the sugar glider wraps her long tail around you, pulling you in close and planting a quick kiss on your cheek.[run paragraph on]";
		if skinname of player is "Sugar Glider" and bodyname of the player is "Sugar Glider":
			say "     Moments later when the sugar glider pulls your hand back out of the cotton candy machine, you are delighted to find it covered in soft candy fluff and dig in with a cheer. Distracted by the delicious sugary treat, you hardly notice the sugar glider shifting to the other side of you, taking hold of you other arm and pulling it into the humming machine, this time all the way up to your shoulder.";
		else:
			say "     Moments later when the sugar glider pulls your hand back out of the cotton candy machine you are momentarily disappointed to find it lacking the large spool of sugar fluff you were expecting[run paragraph on]";
			if skinname of player is not "Sugar Glider":
				say ", but you discover it now matches the sugar glider's own paw exactly [if player is male]except that the thick coat of cotton candy fur that reaches up to your elbow is bright blue[else]with a thick coat of bright pink cotton candy fur reaching up to your elbow[end if][run paragraph on]";
			say ". Entranced by watching the [if player is not sugargliderskinned]thick fur[else]changes[end if] slowly creep up your arm, you hardly notice the sugar glider shifting to the other side of you, taking hold of you other arm and pulling it into the humming machine, this time all the way up to your shoulder.";
		say "     With your face so close to the sweet smelling candy, your sugar clouded mind struggles to find a reason to resist her advances, and when you feel the sugar glider's free hand at the back of your head you can only giggle in anticipation. [if player is not sugargliderfaced]'You're going to be such a cute sugar glider,'[else]'This oughtta help you loosen up,'[end if] she whispers into your ear, placing another kiss on your cheek before plunging your head into the whirling candy filled drum. Fully focused on the cotton candy whirling around you, all you can do is open your mouth and try to catch all you can, giggling uncontrollably as the sugary fluff builds up on your face,[run paragraph on]";
		if facename of player is not "Sugar Glider":
			say " pressing against your flesh and forming a thick [if player is male]blue[else]pink[end if] cotton candy hide on your shifting head. As the changes roll through you[run paragraph on]";
		say " the fluff seems to press right into your mind, further clouding your thoughts and pushing any lingering resistance out.";
		say "     You groan with disappointment as you are pulled from your cotton candy filled dream but soon find yourself face to face with your giggling lover once again. [if player is not sugargliderskinned]'You look lovely,' she says with a[else]She stares deep into your large eyes with a loving[end if] smile, before pressing her muzzle to your own in a deep kiss. Her long, agile tongue darts around your mouth with practiced mastery, easily outmaneuvering your own and filling your mouth with her deliciously sweet flavor. Meanwhile her dexterous paws are roaming across your body, quickly stripping you of your clothing and gear as she presses you up against the stall wall.";
		if player is neuter:
			say "     As the sugar glider's paws roam across your body, she gently brushes across your bare groin, massaging your tender flesh softly as waves of pleasure ripple through your pelvis.";
			follow the sex change rule;
		if player is male:
			say "     She breaks your kiss with a giggle and slowly begins descending down your body, her long slick tongue teasing your [if breasts of player > 0 and breast size of player > 0]breasts[else if breasts of player > 0]nipples[else]body[end if] [if breasts of player > 0 and breast size of player > 0 and player is not sugargliderskinned]as the cotton candy fur creeps over them[else if breasts of player > 0 and player is not sugargliderskinned]as the cotton candy fur spreads past them[else if player is not sugargliderskinned]as the cotton candy fur spreads[end if], continuing downwards until her muzzle is buried in your groin. Her dexterous tongue slides along your eager cock, wrapping around it and teasing your balls before her muzzle descends down your length. You moan in delight and run your paws through the sugar glider's thick fur as her head bobs up and down your maleness, her gentle sucking and squeezing sending tingles of pleasure through your shaft [if player is female]while her tongue slips out past your shaft[smn] to tease the outer folds of your moistening puss[yfn][end if], but before you reach climax she releases you. Pulling her muzzle from your shaft with a wet slurp, she kisses the tip of your [if player is not sugarglidercocked]now bright pink [end if]cock before smiling up at you and spreading herself out on the stall floor, teasing her syrupy drooling cunts with a pair of fingers as her long tail pulls you closer.";
			say "     You eagerly jump on your supine companion, quickly aligning your already excited shaft[smn] with her ready cunt[smn]. She squeals with delight as you press into her, her long tail wrapping tightly around your own as her paws grip at the thick cotton candy fur descending down your back. Your eager fucking quickly builds to a steady rhythm as sweet nectars spill out around your member, and soon the sugar glider cries out in delight beneath you, her spasming cunt[smn] gripping you tightly as orgasm rolls through her, pushing you to your own peak as you cum with a groan of ecstasy.";
		else if player is female:
			say "     She breaks your kiss with a giggle and slowly begins descending down your body, her long slick tongue teasing your [if breasts of player > 0 and breast size of player > 0]breasts[else if breasts of player > 0]nipples[else]body[end if] [if breasts of player > 0 and breast size of player > 0 and player is not sugargliderskinned]as the cotton candy fur creeps over them[else if breasts of player > 0 and player is not sugargliderskinned]as the cotton candy fur spreads past them[else if player is not sugargliderskinned]as the cotton candy fur spreads[end if], continuing downwards until her muzzle is buried in your groin. Her dexterous tongue teases your needy puss[yfn], slowly playing along your outer folds and stroking across your clit, sending tingles of pleasure through you. You moan in delight, running your fingers through her thick pink cotton candy fur as her agile tongue presses deeper into you, her cute pink nose rubbing delightfully against your clit as she probes your depths, but before you reach climax she pulls back suddenly. He long tongue makes one last slow pass over your [if player in not sugarglidercocked]now syrupy pink [end if]netherlips before she spreads herself out across the floor. The sugar glider smiles up at you coyly, stroking her own drooling cunts with a pair of fingers as her tail pulls you closer.";
			say "     You eagerly jump on your supine companion, moving atop her so that her delightful tongue can continue to pleasure you as you eye her dripping, sugary snatches eagerly. As the sugar glider begins to lap at your drooling folds once again, you press your muzzle to one of her cunts, slowly working your [if player is sugargliderfaced]own[else]new[end if] nectar hungry tongue across her honeyed flower, delighting in the sugary taste of her womanly fluids. As her practiced tongue works deeper and deeper into your trembling passage, you do your best to return the delightful feeling to your lover, pressing your tongue deep into her body as your muzzle grinds against her outer folds. Your cries of pleasure are muffled by the syrupy cunt your muzzle is buried in as your sugary lover rapidly pushes you towards climax, much like her own cries, as your trembling tongue drives the sugar glider to her own crashing orgasm, soaking your face in her sweet feminine juices.";
		say "[fullSugarGliderTF]";
		decrease humanity of player by 25;
		if "Junk Food Junky" is listed in feats of player, decrease humanity of player by 10;
		if humanity of player < 10:
			say "     As you bask in the afterglow of your orgasm, your attention is drawn back to the cotton candy machine, still humming away happily as it continues spinning that delicious candy fluff. Still craving yet more sugary treats you go back to the machine for more cotton candy. As you're reaching in, swirling your arm around, the Sugar Glider comes over and starts lifting you into the machine. Rather than fight her, you giggle happily and let her boost you in. Tumbling around in the swirling vortex of sweet colors, you feel more and more cotton candy clinging to you, sinking into your body. When the machine's finally shut off and your dizzy self is helped out of the cotton candy machine, your mind has been spun and fluffed until it is filled with nothing but thoughts of sweets and sex, or sweet, sweet sex. Giggling happily, you collapse into the arms of the sugar glider, still quite dizzy, and give her a sugary kiss, eager for more fun.";
			wait for any key;
			now humanity of player is 0;
			now battleground is "void";
			WaitLineBreak;
			end the story saying "Having succumbed to the sweet, sweet desire, there is nothing left in your head but sugary fluff.";
		else:
			say "     Spent, you collapse atop your lover as the last of your changes ripple down your legs, encouraged by the sticky nectars coating your thighs. The sugar glider hugs you tightly in a loving embrace that spans most of your body thanks to the soft membrane between her arms and legs. She nuzzles gently against your [if player is male]face and licks your cheek softly[else]tail[end if] with a sigh of contentment as your transformation comes to and end. As you bask in the afterglow of your sweet, sugary sex your attention is drawn back to the cotton candy machine, still humming away happily as it continues spinning that delicious candy fluff. Even as the sugar induced fog starts to recede in the wake of your climax, your mouth waters at the thought of that sweet, sweet treat. Will you give in to the urge to go back for more?";
			if player consents:
				say "     Listening to your sweet tooth, you go back to the machine for more cotton candy. As you're reaching in, swirling your arm around, the Sugar Glider comes over and starts lifting you into the machine. Rather than fight her, you giggle happily and let her boost you in. Tumbling around in the swirling vortex of sweet colors, you feel more and more cotton candy clinging to you, sinking into your body. When the machine's finally shut off and your dizzy self is helped out of the cotton candy machine, your mind has been spun and fluffed until it is filled with nothing but thoughts of sweets and sex, or sweet, sweet sex. Giggling happily, you collapse into the arms of the sugar glider, still quite dizzy, and give her a sugary kiss, eager for more fun.";
				wait for any key;
				now humanity of player is 0;
				now battleground is "void";
				WaitLineBreak;
				end the story saying "Having given in to the sweet, sweet desire, there is nothing left in your head but sugary fluff.";
			else:
				say "     Deciding you need to get out of this sickly sweet dream while you still have a mind to, you do your best to shake your head clear of the sugary haze and quickly gather your gear to leave before the sugar glider can recover from her afterglow and tempt you with more sweet fun.";
				decrease hunger of player by 3;
				if "Junk Food Junky" is listed in feats of player, decrease hunger of player by 3;
	else:
		say "     Deciding not to risk spending anymore time with this giggling sugar glider, you push her hand away and make for the exit. As you're leaving the sugar glider blows a long raspberry just before something strikes you sharply in the back of the head. Turning around you see her still sticking her tongue out at you with a cute scowl, having had enough of her silly antics, you pick up the broken pieces of the lollipop she threw at you and leave the stall.";
		increase carried of crushed candies by 1;
	now Sugar Shack is resolved;

to say fullSugarGliderTF:
	[puts Sugar Glider as lead monster in case of impregnation]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Sugar Glider":
			now monster is y;
			break;
	now tailname of player is "Sugar Glider";
	now facename of player is "Sugar Glider";
	now skinname of player is "Sugar Glider";
	now bodyname of player is "Sugar Glider";
	now cockname of player is "Sugar Glider";
	now tail of player is tail entry;
	now face of player is face entry;
	now skin of player is skin entry;
	now body of player is body entry;
	now cock of player is cock entry;
	if hellHoundLevel is 0:
		follow the sex change rule;
		follow the sex change rule;

Sugar Feud ends here.
