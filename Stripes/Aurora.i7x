Version 1 of Aurora by Stripes begins here.
[Version 0.8 - Frameword]

"Adds a frost giantess companion."

Section 1 - Encounter

Giant's Frozen Yogurt is a situation.
The sarea of Giant's Frozen Yogurt is "Capitol".
the level of Giant's Frozen Yogurt is 5.
when play begins:
	add Giant's Frozen Yogurt to badspots of girl;

Instead of resolving a Giant's Frozen Yogurt:
	if hp of frost giantess is 0:			[first time finding]
		say "     Turning down some damaged streets, you get to an area where the ground is cracked and there are several flows of molten magma.  As you're surveying this, you hear a booming female voice call out to you.  Looking over, you find a large figure standing on the opposite side of one of these lava streams.  She waves her arms frantically over her head and continues to call out, trying to get your attention.  Curiously cautious, you approach.";
		say "     The giantess stands roughly 10 or 11 feet tall and has a strong build with some obvious muscle to it.  Her skin is powder blue in colour and she has darker blue hair.  Her eyes are purple, as are her lips and nipples.  These last you can partially see through the stretched material of her torn shirt trying to cope with her enlarged body and bosom.  While proportionately about a C-cup to her size, that makes them something more like big F-cup tits.  Her pants, now stretched to their limit around her hips, are now tight shorts on her large frame.";
		attempttowait;
		say "     'Hey!  Help!  Oh please!  Can you help me?' the frost giantess continues to call even as you come closer, though less loudly now.  As you're nearing her, she wobbles a little and staggers back a few steps.  'Oh, sorry.  The heat of that lava is too much for me.  I can barely stand to be close to it for more than a minute.  I can't take much more of this.'  She takes a moment to wipe her brow, which is running with sweat like a block of melting ice in the heat.";
		say "     'My name is Aurora.  I got trapped here when the volcano went off,' she says, waving back across the parking lot behind her to the damaged shop.  [']Giant's Frozen Yogurt['] the ash-covered sign says - explaining much.  'The lava's cut me off completely and I'm running out of food.  I don't know what's going on here or why I'm like this or what those monsters I've been seeing are or anything.  It's just so crazy.  Oh, you need to find a way to help get me out of here!  You wouldn't happen to know where you can get a crane, would you?' she adds with a wavering laugh, taking another step back.";
		attempttowait;
		say "     Looking around, you can see that a couple of fissures and lava streams come together around the parking lot of the trendy yogurt stand, effectively encircling it in flowing magma.  While some spots are narrow enough that she might jump across them, that's too deadly a risk.  Should the ground break on either side or her strength and speed waver in the heat, she'd end up in the lava.";
		say "     You do spot a damaged section of wall near a narrower section of the molten moat.  If you could knock it down, Aurora might be able to cross there.  But should even try?  It won't be easy and the giantess certainly looks powerful.  If she turns on you or becomes a rampaging sex monster like the others around, that would be a definite problem.  It might be safer for everyone to leave her here until the military can deal with her.  Shall you make the attempt?";
		if the player consents:
			say "[freeing_aurora]";
		otherwise:
			say "     You take a few steps back from the moat of lava and tell her that you don't know how to get her across.  You tell her to go back into the yogurt shop and wait for the military rescue.  She nods, seeming a little cheered to hear that a rescue will come.  She thanks you for trying and staggers her way back inside.  You wipe your sweaty brow, glad you've managed to avoid possible trouble.";
			now Giant's Frozen Yogurt is resolved;
	otherwise:
		say "     You manage to make your way back to the molten moat encircling Aurora and the trendy yogurt shop she's been trapped in.  Calling out to her, she emerges and waves happily to you.  You head back over to the broken section of wall to make another attempt at knocking it over to make a bridge.";
		say "[freeing_aurora]";


to say freeing_aurora:
	let aurorafreed be false;
	increase thirst of player by 6;
	say "     Approaching the wall of rubble, you can feel the heat of the lava even through it, though it is somewhat more bearable with it shielding you.  The concrete cinder blocks are hot to the touch and have cracks between and through several of them.  The damage is extensive enough that you're hopeful you can knock part of it down, though you do worry about it breaking apart uselessly rather than falling over intact.";
	if medium sledge is owned and scalevalue of player > 2:
		say "     Wielding your sledgehammer, you bash at the weakened base of the wall, widening the cracks and breaking new holes.  It is hot work, but you can see immediate progress.  With it getting increasingly wobbly, you send a few heavy blows into the middle of the wall section, causing the whole thing to break free start to lean precariously.  A final big wind-up and overhead swing sets it falling.";
		now aurorafreed is true;
	otherwise:
		let bonus be ( strength of player - 10 ) / 2;
		let toolbonus be 0;
		let sizebonus be 0;
		let stbackbonus be 0;
		if "Strong Back" is listed in feats of player:
			now stbackbonus is 2;
		if claw hammer is owned, increase toolbonus by 1;
		if crowbar is owned:
			increase toolbonus by 3;
		otherwise if bo staff is owned or trident is owned or spear is owned:
			increase toolbonus by 2;
		let sizebonus be ( scalevalue of player * 2 ) - 6;
		let dice be a random number from 1 to 20;
		let total be dice + bonus + toolbonus + sizebonus + stbackbonus + hp of frost giantess;
		say "You roll 1d20([dice])+[bonus]+[toolbonus + sizebonus + stbackbonus + hp of frost giantess] = [total] vs 16: ";
		if total is greater than 15:
			say "You quickly examine the fractured wall, trying to find a way to topple it across the lava flow[if toolbonus > 0].  Assessing your available tools and equipment, you get started[end if][if claw hammer is owned].  You start with your hammer, trying to continue the breaks along the bottom, chipping away where you can, helping a little[end if][if crowbar is owned].  Jamming your crowbar into one of the cracks, you pry at the wall, further destabilizing it[otherwise if bo staff is owned].  Jamming your bo staff into one of the cracks, you use it for added leverage[otherwise if trident is owned].  Jamming the shaft of your trident into one of the cracks, you use it for added leverage[otherwise if spear is owned].  Jamming the shaft of your spear into one of the cracks, you use it for added leverage[end if][if sizebonus > 0].  Your [body size of player] body is of added advantage, adding greater weight to your push against it[otherwise if sizebonus < 0].  Your [body size of player] body doesn't help, but you throw what weight you can behind it[end if][if stbackbonus > 0].  You throw your strong back into it as it starts to lean over, your mighty legs, shoulders and back muscles all pushing hard as it starts to go down[end if].  In the end, you put all your might into it with a final attempt that sets it falling.";
			now aurorafreed is true;
		otherwise:
			say "You quickly examine the fractured wall, trying to find a way to topple it across the lava flow[if sizebonus > 0].  Your [body size of player] body is of added advantage, adding greater weight to your push against it[otherwise if sizebonus < 0].  Your [body size of player] body doesn't help though, your decreased weight making the task more difficult for you[end if]";
			if toolbonus > 0:
				say ".  Unfortunately, even with the tools and equipment you have available, you are unable to topple the wall before the heat and fumes become too much for you and you have to withdraw for now.  Aurora thanks you for the attempt and asks you to keep looking for a way to help her.";
			otherwise:
				say ".  Unfortunately, you are unable to topple the wall before the heat and fumes become too much for you and you have to withdraw for now.  Aurora thanks you for the attempt and asks you to keep looking for a way to free her."; 
			now hp of frost giantess is 1;
		if aurorafreed is true:
			say "     Thanks to your efforts, a section of the concrete wall collapses, falling across the lava stream.  It cracks in a few spots, but manages to largely hold together.  Worried that it won't stay together for long, you hop across to help the giant woman.  She heaves a small chest freezer onto her back like a backpack and rushes to join you by the lava's edge.  Being so close to the lava makes her a little wobbly, but you're able to support her enough to help her across.  The two of you put some distance between the magma flow and soon you're both feeling much better.";
			attempttowait;
			say "     Once she's had a chance to recover, she looks much better.  The giant woman looks [if scalevalue of player < 5]down [end if]at you with a friendly smile.  'Come here, cutey!' she exclaims, grabbing you in those strong arms of hers, crushing you in an over-enthusiastic hug.  'Thank you, thank you, thank you so much.'  She turns from side to side roughly while squeezing you tight.  You manage a weak groan that gets her to stop.  'Oh, sorry.  I guess I don't really know my own strength.'";
			say "     She pauses for a moment, looking around the devastated city.  'Look.  Things seem really crazy out here and I want to repay you for saving me.  Now, I've never really been much of a fighter, but just look at me,' she says, flexing an arm to make her bicep bulge.  'I can come with you and help keep you safe, if you'd like.  Besides,' she adds, looking you up and down with an appreciative grin, 'maybe we can think of some other ways I can repay you, too.'";
			now hp of frost giantess is 2;
			now frost giantess is tamed;
			say "     (The frost giantess is now tamed!  You can make her your active pet by typing [bold type][link]pet frost giantess[as]pet frost giantess[end link][roman type].  You can see all the pets you have tamed with the [bold type][link]pet[as]pet[end link][roman type] command.  Pets will lower the xp you gain from battle, but can gain levels themselves to be more useful in a scrap.  Want to get rid of a pet?  Use [bold type][link]pet dismiss[as]pet dismiss[end link][roman type], or just [bold type][link]dismiss[as]dismiss[end link].[roman type])[line break]";
			increase score by 10;
			now Giant's Frozen Yogurt is resolved;


Section 2 - Pet Data

frost giantess is a pet.  frost giantess is a part of the player.
The description of frost giantess is "[aurora_desc]".
The weapon damage of frost giantess is 8.
The level of frost giantess is 2.
The Dexterity of frost giantess is 7.
The summondesc of frost giantess is "Hearing your call, Aurora the frost giantess comes over to join you at your side.  She flexes her arms, adjusts her freezer backpack and gives you a merry slap on the back that [if scalevalue of player < 4]nearly knocks you over[otherwise]makes you stumble momentarily[end if].".
The assault of frost giantess is "[aurora_attack]".

the fuckscene of frost giantess is "[sexwithaurora]".

the scent of frost giantess is "The giantess smells pleasantly of frozen yogurt.  There's also a light scent of the sweat from exertion, but not unpleasantly so.".

understand "Aurora" as frost giantess.

to say aurora_desc:
	say "     Aurora the frost giantess is about 10 and a half feet tall and has a strong build with some obvious muscle to it.  While not toned to body-builder level, her muscles do have obvious definition as if from regular exercise.  Added to her overall size, this makes her quite physically powerful.  Her skin is pale blue in colour and she has darker blue hair.  Her eyes are purple, as are her lips and nipples.  These last you can partially see through the stretched material of her torn shirt trying to cope with her enlarged body and bosom.  Were she of normal height, they'd be nice C-cups; being as large as she is, they're something more like big F-cup tits.  Her pants, now stretched to their limit around her hips, are now tight shorts on her large frame, hugging her strong hips and toned buttocks.";
	say "     She's friendly and eager to help you, willing to even come along and fight by your side.  While no trained warrior, her punches hit like a ton of bricks.  The heat of the city does wear on her, which is why she's carries a small retail ice cream freezer like a backpack.  It's full of frozen yogurt and somehow is always cold despite not even being plugged in.  Fighting will eventually tire her out and overheat her, but she'll keep fighting as long as you do out of loyalty.";

to say aurora_attack:
	choose row monster from the table of random critters;
	say "[one of]Grabbing a large chunk of rubble, the giantess hurls it into your opponent[or]One of the giantess's wild blows strikes your foe, knocking them back[or]Aurora [if scale entry < 3]stomps on the much smaller foe[otherwise]gives your opponent kick with her massive foot[end if][or]The giantess's meaty fist bashes into your opponent[or]Balling both fists together, she swings them down onto the [name entry][at random]![run paragraph on]";
to say sexwithaurora:
	say "Sex will come soon.";

Aurora ends here.
