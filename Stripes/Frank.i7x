Version 3 of Frank by Stripes begins here.
[Version 3 - Tie-in for Skunkbeast Lord content]
"Adds a Skunk NPC named Frank to the Flexible Survival game"

Section 1 - Event and Comic Store

Mephitness is a situation.  The level of Mephitness is 6.
The sarea of Mephitness is "High".
when play begins:
	add Mephitness to badspots of guy;
	add Mephitness to badspots of girl;
	add Mephitness to badspots of furry;

Instead of resolving a Mephitness:
	say "     As you travel the city streets, you hear some commotion up ahead and getting closer.  Taking cover, you watch as a hefty fellow with a skunk head and tail wheezes as he runs past you with a trio of skunk girls in hot pursuit.  He staggers and drops his pack as he scrambles to keep going[if Urban Forest is known].  Given your distance from that forested area, it's clear the chase has been going on for a while[end if].  The skunk girls move in, giggling at their panting, exhausted prey.  They seem reinvigorated by their chase coming to a close and their prize ready for the taking.";
	say "     They all seem quite distracted and haven't spotted you.  And that backpack is just sitting there.  Given how much he's already changed, there may not be much point in trying to help him and it may be best to get the supplies.  Do you take this opportunity to charge to the rescue or do you grab the backpack and make a run for it? (Y=Fight, N=Backpack)[line break]";
	if player consents:
		if bodyname of player is "Skunkbeast Lord":
			say "     Yelling for their attention, you charge the skunks.  Seeing their skunkbeast [if cocks of player is 0 and cunts of player is 0]lady[otherwise]lord[end if] approaching and demanding their attention, the girls quickly shove the poor fellow away.  Running up to you, they start to lavish attention upon you, kissing and stroking you in welcome while telling you proudly how they caught a big meanie who tried to make fun of one of your skunkbeasts.  To placate them, you tell the girls how pleased you are with them and that you'll enjoy dealing with him shortly, but first you want to reward them all for their fine service.  They giggle happily at this, giving you more passionate kisses.";
			if cocks of player > 0:
				say "     Picking one of the girls, you get her to lie on her back.  Lining up your cock, you drive it into her wet pussy and fuck her.  Her cries of pleasure are lustful and loud as you pound into her with an animalist need[if skrp is 1].  The skunk head joined to you happily french-kisses the girl at you drive your leaking shaft into her muff[end if][if cunts of player > 0].  The other girls lavish attention upon your pussy and balls, licking your dripping folds and stroking your cum-filled orbs[otherwise].  The other girls lavish attention upon your balls, rubbing your cum-filled orbs[end if].";
				say "     After blasting your hot load into her, another swaps into position, this time on all fours and stuff her full of a fresh load of skunk semen as well.  As you're mounting the third, you notice the first two have returned to their original victim and are having some fun with him.  One girl's riding his cock while the other has pressed his growing muzzle to her creamy muff, forcing him to eat your hot load from her overflowing pussy.  You are too lost in your lustful, skunkbeast instincts to stop this and are even proud of them as you watch him continue to change, skunk fur spreading across his body and his cock turning a lustruous ebon.";
				say "     It's only once you finish with the third girl that you come to your senses enough to order the girls off of him and back to the woods.  They seem a little disappointed, but you growl firmly, reminding them that you said you'd wanted him for yourself.  They scurry off, still leaking skunkbeast cum from their pussies as they leave.  Once they're out of sight, you turn your attention to their victim.  He is a little wary at first, but smiles and thanks you for your help as he recognizes that you don't mean him any harm.  He seems to still be at least partially in control of his faculties.  He looks down at his discarded clothes and shrugs, deciding they're unneeded now.  He tosses his pack over his shoulder and motions for you to follow him.";
			otherwise:
				say "     Picking one of the girls, you get her to lick and stroke your dripping pussy, lavishing attention upon your needy sex.  The other two latch onto nipples and start nursing, licking and suckling to get their fill of your milk.  You moan in pleasure, telling your sexy girls again how pleased you are with them and their wonderful, talented paws and muzzles, riding through several orgasms as they nurse from you.  Eventually you realize that there's a fourth muzzle, the girls having brought over their victim to nurse from you as well.  You are too lost in your lustful, skunkbeast instincts to stop this and moan loudly as he continues to change, skunk fur spreading across his body and his cock turning a lustruous ebon.";
				say "     It's only once you have another crashing orgasm that you come to your senses enough to order the girls off of him pull his muzzle away from your dripping nipple.  They seem a little disappointed, but you growl firmly, reminding them that you said you'd wanted him for yourself.  They scurry off, disappointed by obedient.  Once they're out of sight, you turn your attention to their victim.  He is a little wary at first, but smiles and thanks you for your help as he recognizes that you didn't mean him any harm.  He seems to still be at least partially in control of his faculties.  He looks down at his discarded clothes and shrugs, deciding they're unneeded now.  He tosses his pack over his shoulder and motions for you to follow him.";
			say "     'Thanks again for the help back there.  They got a little upset when I threw a can of tomato juice onto one of those big beasts.  Stupid coyote didn't know what he was talking about.  Been chasing and throwing goo at me almost the whole way back to my store.  Almost made it, too.  Never would have been able to run that far before this whole crazy thing started.'  He only stops talking when he pulls a big bottle of cola from his pack and starts downing it.  He leads you over a few more streets and ushers you into a comic shop, chatting the whole time.  The stairwell is a little difficult for your large body to navigate, but you manage to get inside.";
			wait for any key;
			move player to Comic Shop;
			now Comic Shop is known;
			increase score by 20;
		otherwise:
			say "     Yelling for their attention, you charge the skunks.  The one at the back turns to face you while the others tackle their fallen prey.  He yells and screams, trying to push them back and get back up while they try to kiss and fondle him.";
			now skunkfight is 3;
			challenge "Skunk";
			if skunkfight is 1:
				now skunkfight is 3;
				say "     With the first of them finished, you move in on the other two.  They notice you coming, and after some shoving between the pair, one gets up and heads to deal with you while the other keeps at their prey.  He's become much more skunk-like now, with black and white fur starting to grow in over his body as the femme starts bobbing her muzzle over his stiff cock.  His struggles have stopped and he's moaning in pleasure.  You pull your eyes away from the erotic sight and focus on the one coming at you.";
				challenge "Skunk";
				if skunkfight is 1:
					now skunkfight is 3;
					say "     The last skunk girl releases the now ebon flesh of her prey's cock to face you.  The large fellow moans softly in disappointment, trying to reach for her.  She presses her foot down on his chest.  'Oh, I'll be back for you shortly, sweetie.'  Grinning, she licks her gooey lips and turns to face you.";
					challenge "Skunk";
					if skunkfight is 1:
						say "     With the final skunk girl defeated, you turn to the large skunk fellow, weapon at the ready just in case.  But he smiles and thanks you for your help, seeming still at least partially in control of his faculties.  He looks down at his discarded clothes and shrugs, deciding they're unneeded now.  He tosses his pack over his shoulder and motions for you to follow him.";
						say "     'Thanks again for the help back there.  They got a little upset when I threw a can of tomato juice onto one of those big beasts.  Stupid coyote didn't know what he was talking about.  Been chasing and throwing goo at me almost the whole way back to my store.  Almost made it, too.  Never would have been able to run that far before this whole crazy thing started.'  He only stops talking when he pulls a big bottle of cola from his pack and starts downing it.  He leads you over a few more streets and ushers you into a comic shop, chatting the whole time.";
						wait for any key;
						move player to Comic Shop;
						now Comic Shop is known;
						increase score by 20;
			if skunkfight is 3:
				say "     Deciding you've had enough of this, not really being your fight in the first place, you break away from the skunk girl and make a run for it.  As you are not their intended prize, the skunk doesn't pursue you and instead heads back to the rapidly-changing fellow who is well on his way to becoming and other skunk girl.";
			if skunkfight is 2:
				say "     Defeated, the skunk girl grinds her body against yours, dripping goo onto your crotch and fondling you.  'Mmm... I wish we had more time to play, but we need to get this fool back to receive his just punishment.  He'll make a fine skunk girl for our sexy master to breed.'  She kisses your cheek and runs a paw down your chest.  'You should come see him in the forest.  I'd enjoy seeing you made into another slut for him to breed, too.'  With that, she gets up and starts dragging off the sex-dazed skunk.  He's already started to gain a shapely, feminine figure and will likely be another skunk slut soon enough.";
	otherwise:
		say "     More enticed by the backpack and its potential contents than the certainty of a fight with the trio of skunk girls, you slip out and grab the backpack before making your escape.  You can hear the excited moans of their prey getting louder and more feminine as they transform him into another sultry skunk girl like themselves.  Once you have some safe distance between you and them, you open up the pack to find a collection of snack foods and drinks, through there is a tin of ravioli as well.  A side pocket has a canister of pepperspray which may be useful.";
		say "     Food, chips, soda x2 and pepperspray obtained.";
		increase carried of pepperspray by 1;
		increase carried of food by 1;
		increase carried of chips by 1;
		increase carried of soda by 2;
		increase score by 15;
	now skunkfight is 0;
	Now Mephitness is resolved;


Comic Shop is a room. It is fasttravel. It is private.
The description of Comic Shop is "[comicshopdesc]".

the scent of Comic Shop is "The comic shop smells stale and musty, with an odor of skunk musk in the air as well.".

to say comicshopdesc:
	say "     The shadowy comic shop is on the second floor of a run down building at the edge of the neighbourhood.  It is wedged between other similarly decrepit looking establishments.  Being behind a barred door and upstairs seems to have saved it from the lustful hordes of monsters.  The shop itself is fairly large, but there is little space to move.  There are shelves and displays everywhere for comics, manga and games, making it very difficult to navigate around inside.";


Section 2 - Frank the Skunk

Frank is a man.  Frank is in Comic Shop.
The description of Frank is "[frankdesc]".
The conversation of Frank is { "NERD!" }.
lastFrankfucked is a number that varies.  lastFrankfucked is normally 555.
franksex is a number that varies.
frankmalesex is a number that varies.

the scent of the Frank is "The large skunk fellow smells of musty comics, Cheetohs and male skunk.".

to say frankdesc:
	say "     Frank is a heavy-set skunk fellow.  His encounter with the skunks seems to have slimmed him down a little, but he is still quite portly.  His black and white fur is thick and soft.  As he now has fur, he's forgone wearing clothes aside from a ballcap with the store logo on it.";

Instead of conversing the Frank:
	say "     [one of]'I never should have listened to that stupid coyote,' he grumbles angrily.  'He didn't know what he was talking about at all.'[or]'Do you prefer Batman or Superman?' he asks before going off into a long discussion about comics.[or]'It's too bad there aren't any cool skunk superheroes,' he muses.[or]'Which do you think is better?  4th edition or 3.5?'  Having no idea what the chatty fellow is talking about, you just shrug.[or]'I could really go for some more soda,' he says, having just finished one off.[or]'I hope this all gets sorted out soon,' he says.  'My gaming night is on Fridays and we're just about to face the boss.'[or]'Reading comics help me remember who I was and how much I love them.'[or]'So, I was thinking you must be fourth or fifth level or something.  I'm guessing I'm at about level ten by now,' he says, flexing a little.[or]'So did you see that new superhero movie that came out this summer?' he asks.  Not even waiting for your response, he starts going on about his impressions of the film and its impact on the genre.[in random order]";

the fuckscene of Frank is "[sexwithFrank]".

to say sexwithFrank:
	follow the cock descr rule;
	if skunkbeaststatus is 1:
		[puts Skunkbeast Lord as lead monster for possible impregnation]
		repeat with y running from 1 to number of filled rows in table of random critters:
			choose row y in table of random critters;
			if name entry is "Skunkbeast Lord":
				now monster is y;
				break;
	otherwise:
		[puts Skunk as lead monster for possible impregnation]
		repeat with y running from 1 to number of filled rows in table of random critters:
			choose row y in table of random critters;
			if name entry is "Skunk":
				now monster is y;
				break;
	if cunts of player is 0 and cocks of player > 0:
		if lastFrankfucked - turns < 8:
			say "     You don't want to rush things with him.  Maybe you should wait a little longer before having another go with him.";
		otherwise if frankmalesex is 0:
			say "     Frank seems a little flustered by your request.  'Oh... ahhh... That sounds nice and all, but... umm... ladies only, bro,' he says.  'Here, you can borrow a couple of my comics,' he adds, passing you some comics from under the counter with animal characters in adult situations.  'Just don't get them all sticky,' he cautions you.  Looking over the issues of Genus Male he's passed you and the male on male content within them, perhaps there's still hope for a little fun with the male skunk.";
			increase score by 1;
			increase frankmalesex by 1;
			now lastFrankfucked is turns;
		otherwise if frankmalesex is 1:
			say "     While the skunk is re-shelving in the back area by the gaming table, you bring up the subject of playing around again.  The skunk seems a little flustered by your renewed request, but you quickly tell him you're just enjoying the comics he showed you.  You add that you just want to have a little fun and were checking if he minded if you whipped it out, as it were.  Trying to act nonchalant, the skunk mumbles that you can go ahead, turning back to his shelves.  You slide up onto the sturdy gaming table and stretch out after putting aside your clothes and gear, making sure the skunk's got a good view as he peeks at you occasionally.";
			say "     Running your hands over your [bodytype of player] body, you caress your [skinname of player] flesh with a soft moan before letting a hand drift down between your legs.  You run your fingers lightly over your cock at first, coaxing it from a semi-flaccid state to full erection slowly.  After flipping one pages in the comic to maintain the illusion you're reading it, you take your [cock size desc of player] [cock of player] penis firmly in hand and start stroking, releasing another moan for the skunk's benefit.  This gets him to taking a longer glance, before nervously turning away again, his paw drifting down to his groin to rub his sheath.  Eyeing his ass and not the comic, you pump your meat faster.";
			say "     After flipping unseen pages again, you move your free hand to your backside and start fingering your tight pucker.  Growing rather excited from your masturbation show, you leave dribbles of precum on the table.  Frank's stroking himself as well, clearly aroused by your show and forgetting to hide it.  You lick your lips slowly as you watch his paw pumping over his lovely cock, imagining it inside you as your tease your back entrance.  The large skunk steps a little closer, coming within reach, and you slowly reach over to take a hold of his ebon cock.  Too excited to pull away, he allows you to take his meat in hand.  And moments later, into your mouth.  You lick and suck on it firmly, getting the excited skunk to cum down your throat.  It is surprisingly sweet and delicious.  The excitement of your successful plan sets you off and you spray your hot load across the table.  As the skunk's climax fades into the afterglow, he realizes what's happened and dashes back to the front of the store.";
			increase score by 5;
			increase frankmalesex by 1;
			now lastFrankfucked is turns;
			say "[maleskunkinfect]";
		otherwise if frankmalesex is 2:
			say "     Deciding to try again with the skunk, you lean across his counter and run a hand through his chestfur.  While the skunk is startled, you whisper that you really liked playing with him earlier and would like to have some more.  As you say this, you slide your fingers down to his sheath and start rubbing it.  He groans softly and squirms in his seat.  'But I'm not... I mean... guys don't do it for me...' he mumbles a little, trying to deny it even as his sheath starts to swell and grow.";
			say "     'Oh, I know,' you lie, 'but this is just foolin['] around.  Just a couple of guys helping each other out.'  Moving over the counter, you slide back his white sheath as he grows hard, then drop to your knees in front of him.  You take his cock into your mouth, licking and sucking at it.  You grin as he groans in pleasure and start slathering his dark rod with your spit, preparing him for what you're planning next.  You fondle his balls and weigh those full orbs in your hand, eager for the cum they contain.";
			say "     Once he's well and truly worked up, you ease your mouth back, getting a groan of disappointment from him.  Getting back up, you slide into his lap, moving over his erection.  As he starts to voice an objection, you kiss him to silence the big skunk.  'We're just playing around.  Besides, a hole's a hole, sweetie.  And you're just the guy to fill mine,' you moan as you sink yourself down onto his cock, letting it spread open your back door.  Frank groans again and grips your ass, helping to guide you down his shaft.  You reward him with another kiss and squeeze of your anus around his penis.  The skunk doesn't last long in fucking his first ass, but cums quite hard, pumping a nice, thick load into you.  You cum hard as well, aroused by the act of getting this ostensibly straight skunk to fuck you.  Quite pleased with yourself as you rise from his lap, you make sure to give the sexy skunk a nice view of his cum leaking from your stretched pucker before walking off.[impregchance]";
			increase score by 15;
			increase morale of player by 5;
			increase frankmalesex by 1;
			now lastFrankfucked is turns;
			say "[maleskunkinfect]";
		otherwise if remainder after dividing frankmalesex by 3 is 0:
			say "     Coming back to Frank for more, this time there are no objections and he leads you back to the gaming table where you first coaxed him into playing with you.  His paws slide down to your sides and stroke your hips as he starts kissing you.  Despite his awkward conversation habits and earlier protests, he turns out to be a good lover, attentive to your needs and seeking out sensitive spots to caress and please you.  He lays you back on the table, legs hanging over the side and gets his cock lined up with your [tailname of player] backside.  His black shaft throbs and slides against your cheeks, dribbling precum against your tight hole in anticipation before he slowly sinks his thick meat into you.  He pumps into you steadily, causing you to moan in delight as he fucks you.";
			say "     His paws take hold of your hips and squeeze your ass, gripping it firmly as he thrusts.  As he mates you, his musky scent grows stronger in the air, but it grows increasingly arousing to you until finally you clench down firmly around his cock and cum hard.  You blast your load across your chest and the skunk grins happily at the sight of this.  He growls softly in the back of his throat and drives his cock deep inside you, pumping his hot skunk seed into your bowels.  Finished, he withdraws slowly and kneels down, licking your spent shaft a few times, blushing as he does, to get those last few drops of cum leaking out.  You remain there, resting on the hard table, enjoying the wonderful afterglow as he continues on, licking your semen from your chest.[impregchance]";
			increase frankmalesex by 1;
			now lastFrankfucked is turns;
			say "[maleskunkinfect]";
		otherwise if remainder after dividing frankmalesex by 3 is 1:
			say "     The big skunk grins and strokes his stiffening member at the prospect of more fun with you.  You kneel down in front of him and start licking at his ebon shaft.  Precum dribbles from its tip to be quickly lapped up by you.  As his excitement builds, his musky scent grows and your arousal increases until licking isn't enough and you stuff his thick rod into you mouth.  You lick and suck at it hungrily, making the large fellow moan in pleasure.  He runs his paws over your head and rubs your ears while bundling his big, fluffy tail around you like a warm, furry hug.  You lavish attention on his cock and balls until finally he growls and pumps his thick seed down your throat.  It is surprisingly sweet and delicious, and you lick it all up before swallowing it down.  The skunk, not wanting to leave you unsatisfied, boosts you up onto one of the glass counters and wraps his paw around your cock while nuzzling at your neck.  His soft fur brushes against you while his small, pointed teeth nibble along your throat and shoulder.  As you moan that you're getting close, he tilts his head to watch and moves his fluffy tail into position.  As you cum, you spray your hot seed onto his fluffy, striped tail, adding more streaks of white to it.  After helping you down, he pats your ass and brushes your cum into his fur, mixing your scent into his.";
			increase frankmalesex by 1;
			now lastFrankfucked is turns;
			say "[maleskunkinfect]";
		otherwise if remainder after dividing frankmalesex by 3 is 2:
			say "     The hefty skunk smiles at your proposition and comes around the counter again.  He wraps his arms around you and bundles you up in his fluffy tail, guiding you back to the game table as he kisses you repeatedly.  This time he puts face down on the table and climbs atop you.  He nuzzles and nips at your ears, chirring softly to you as he whispers words of affection and love for his rescuer.  He lines up his throbbing shaft, then slowly sinks his thick meat into you, making you both moan in pleasure.  His black cock pumps into you steadily, causing you to moan repeatedly as his paws wander over your body and caress your sides before moving around to take hold of your cock and balls.  As always, he is an attentive lover, seeking to pleasure you as best he can by timing his thrusts and running those nimble fingers over your sensitive spots.  As he mates with you, his musky scent grows thick in the air, a scent you're finding more and more arousing each time you take the big fellow into you.  The wonderful fucking and his arousing scent eventually become too much for you and you cum hard, clamping your asshole down around his throbbing shaft and spraying your seed onto the floor.  Your tight, clenched hole pushes him over the edge and soon you're rewarded with heavy spurts of his hot, skunk cum to fill your bowels.";
			say "     He remains atop you, pressing down on you with his body, which you find soft and comforting, as if its where you belong.  He nuzzles you and nibbles your ear some more, telling you again how wonderful you are for showing him how enjoyable this could be, then kisses you again.  Long after his erection has gone down, he withdraws from you and gets off you.  Helping you up, he bundles you up in his arms and uses his fluffy tail to wipe your leaking hole clean, making you shiver in delight at the soft touch of his fur.  His paws drift to your belly and rub it gently over your warm, cum-filled tummy.[impregchance]";
			increase frankmalesex by 1;
			now lastFrankfucked is turns;
			say "[maleskunkinfect]";
	otherwise if lastFrankfucked - turns is less than 8:
		say "     The large skunk smiles and brushes his paws over his fluffy chair to straighten it out a little.  'Mmm... that sounds nice, but I could you a bit more of a break.  Besides, I want to finish the last of these issues,' he adds, pointing to the large pile he's set out.";
	otherwise if cunts of player > 0:
		increase franksex by 1;
		now lastFrankfucked is turns;
		if remainder after dividing franksex by 3 is 1:
			say "     Frank grins at your offer and moves around the counter to wrap his arms around you.  He buries you in the soft, musky fur of his chest and wraps his fluffy tail around you.  His paws slide down to your sides and stroke your hips as he starts kissing you.  Despite his awkward conversation habits, he turns out to be a good lover, attentive to your needs and seeking out sensitive spots to caress and please you.  He guides you to another section of the store where the large gaming table sits.  He lays you back on it, legs hanging over the side and gets his cock lined up with your eager pussy.  His black shaft throbs and slides against your wet folds before he slowly sinks his thick meat into you.  He pumps into you steadily, causing you to moan in delight as he fucks you.  His paws drift up your chest to play with your breasts and tease your nipples.  As he mates you, his musky scent grows stronger in the air, but it grows increasingly arousing to you until finally you quiver around his cock and cum hard.  He growls softly in the back of his throat and drives his cock deep inside you, pumping his hot skunk seed into your womb.  Finished, he withdraws slowly and kneels down, licking your wet pussy and thighs until you're clean of any juices and cum that leaked out.  You remain there, resting on the hard table, enjoying the wonderful afterglow.[impregchance]";
		otherwise if remainder after dividing franksex by 3 is 2:
			say "     The big skunk grins and strokes his stiffening member at the prospect of more fun with you.  You kneel down in front of him and start licking at his ebon shaft.  Precum dribbles from its tip to be quickly lapped up by you.  As his excitement builds, his musky scent grows and your arousal increases until licking isn't enough and you stuff his thick rod into your mouth.  You lick and suck at it hungrily, making the large fellow moan in pleasure.  He runs his paws over your head and rubs your ears while bundling his big, fluffy tail around you like a warm, furry hug.  You lavish attention on his cock and balls until finally he growls and pumps his thick seed down your throat.  It is surprisingly sweet and delicious, and you lick it all up before swallowing it down.  The skunk, not wanting to leave you unsatisfied, boosts you up onto one of the glass counters and buries two fingers into your pussy while nuzzling and licking at your breasts.  His soft muzzle brushes over them before he starts licking and sucking your nipples.  He keeps this up, pumping those fingers and teasing your nipples until you cum hard with a lustful moan that makes him smile.  After helping you down, he pats your ass and wipes the wet glass with his fluffy tail.";
		otherwise if remainder after dividing franksex by 3 is 0:
			say "     The hefty skunk smiles at your proposition and comes around the counter again.  He wraps his arms around you and bundles you up in his fluffy tail, guiding you back to the game table as he kisses you repeatedly.  This time he puts face down on the table and climbs atop you.  He nuzzles and nips at your ears, chirring softly to you as he whispers words of affection and love for his rescuer.  He lines up his throbbing shaft, then slowly sinks his thick meat into you, making you both moan in pleasure.  His black cock pumps into you steadily, causing you to moan repeatedly as his paws wander over your body and caress your sensitive nipples.  As always, he is an attentive lover, seeking to pleasure you as best he can by timing his thrusts and running those nimble fingers over your sensitive spots.  As he mates with you, his musky scent grows thick in the air, a scent you're finding more and more arousing each time you take the big fellow into you.  The wonderful fucking and his arousing scent eventually become too much for you and you cum hard, clamping your pussy down around his throbbing shaft.  Your quivering, milking vagina pushes him over the edge and soon you're rewarded with heavy spurts of his hot, skunk cum for your womb.[impregchance]";
			say "     He remains atop you, pressing down on you with his body, which you find soft and comforting, as if its where you belong.  He nuzzles you and nibbles your ear some more, telling you again how lovely you are, then kisses you again.  Long after his erection has gone down, he withdraws from you and gets off you.  Helping you up, he bundles you up in his arms and uses his fluffy tail to wipe your wet, dripping pussy clean, making you shiver in delight at the soft touch of his fur.  His paws drift to your belly and rub it gently over that warm spot deep inside you where your cum-filled womb is.";
		if skunkbeaststatus is 1:
			sblinfect;
		otherwise:
			infect "Skunk";
	otherwise:
		say "     Having no sexual organs of your own, there seems to be little point in trying to have sex with the skunk.";


to say maleskunkinfect:
	if skunkbeaststatus is 1:
		[puts Skunkbeast Lord as lead monster]
		repeat with y running from 1 to number of filled rows in table of random critters:
			choose row y in table of random critters;
			if name entry is "Skunkbeast Lord":
				now monster is y;
				break;
		now sex entry is "Male";		[Temporarily forced to 'Male'... will result in no gender change occurring if F-Pref]
		infect "Skunkbeast Lord";
		if "Female Preferred" is listed in feats of player:
			now sex entry is "Female";
		otherwise if "Herm Preferred" is listed in feats of player:
			now sex entry is "Both";
	otherwise:
		[puts Skunk as lead monster for possible impregnation]
		repeat with y running from 1 to number of filled rows in table of random critters:
			choose row y in table of random critters;
			if name entry is "Skunk":
				now monster is y;
				break;
		now sex entry is "Male";		[temporarily make target gender male]
		now cocks entry is 1;
		now cock length entry is 9;
		now cock width entry is 5;
		infect;
		now sex entry is "Female";		[now back to female]
		now cocks entry is 0;
		now cock length entry is 0;
		now cock width entry is 0;


Section 3 - Endings

[NOTE: For all skunk-related endings, see the 'Skunkbeast Lord' file by Stripes.]

when play ends:
	if ( franksex > 2 or frankmalesex > 2 ) and bodyname of player is not "Skunk" and bodyname of player is not "Skunk Taur" and bodyname of player is not "Skunkbeast Lord":
		if humanity of player > 9:
			say "     When the soldiers come through the city to rescue you and the others, you tell them about Frank secure in his comic shop.  But when they go to retrieve him, he opts not to leave, unable to part with his precious store and collection.  You remain in contact with Frank through correspondence from time to time carried by those brave enough to enter the infected city.  He has reopened the store, stocking his shelves with more books he scavenges from his one-time competitors' abandoned locations and private collections left among the fallen city.  He only has a few customers, as most of the people living there now have little interest in such pursuits, but it makes him happy just to be open again.  He does remember his time with you fondly.  From his letters, he seems a little lonely, though he does have a few [']special customers['] who come to enjoy his company as well as his wares.  You are happy that he at least has some company as well as his books.";


Frank ends here.