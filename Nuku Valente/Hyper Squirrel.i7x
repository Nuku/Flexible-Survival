Version 2 of Hyper Squirrel by Nuku Valente begins here.
[Version 2 - More Wild Squirrel fun - Stripes]

"Adds a situation to Flexible Survival with a hyperactive mechanic squirrel."

Section 1 - Hyper Squirrel Girl Event

Hyper Squirrel Girl is a situation.
hsrp is a number that varies.
Lastsquirrelfuck is a number that varies. Lastsquirrelfuck is usually 250.
squirrelfucked is a number that varies. squirrelfucked is usually 0.
squirrelspot is a number that varies.
when play begins:
	add Hyper Squirrel Girl to badspots of furry;
	add Hyper Squirrel Girl to badspots of hermaphrodite;

After resolving a Hyper Squirrel Girl, try looking;

Instead of Resolving a Hyper Squirrel Girl:
	if hsrp is 0:
		say "As you wander around, you get the feeling that you're being watched. Catching a few brief glances of red fur, you realize your pursuer is playing with you. Growing tired of this, you sit down, and wait. A few minutes pass, when you hear a giggle to you left. You whip your head around, and there stands a squirrel girl, wearing the tattered remains of a buttoned shirt, buttons long gone. Squirrel herm, you correct yourself, as you notice the large bulge in her pants. Before you can call out to her, she takes off... but you have a feeling she'll be back.";
		increase hsrp by 1;
		stop the action;
	if hsrp is 1:
		say "You once again feel someone's eyes on you, probably that squirrel herm again. Attempting to catch her off guard, you bolt to the nearest building, trying catch her before she runs again.";
		let bonus be (( the Perception of the player minus 10 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus]: [diceroll + bonus], ";
		increase diceroll by bonus;
		if diceroll is greater than 20:
			say "You find a great hiding place and hurry to it as quietly as you can, ";
		otherwise if diceroll is greater than 12:
			say "You spot an acceptable hiding place and creep towards it, ";
		otherwise:
			say "You don't see any good hiding places, so you just try to quietly duck down, ";
		now bonus is ( ( diceroll minus 12 ) divided by 2 ) plus (( the Dexterity of the player minus 10 ) divided by 2);
		now diceroll is a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus]: [diceroll + bonus], ";
		increase diceroll by bonus;
		if diceroll is greater than 15:
			say "You find a good spot to hide, and as she tries to locate you, she walks right past your hiding spot. You dive at her, pinning her to the ground... where she giggles again. 'That was fun! It's been far too long since someone's played with me.' Before you can ask her what she means, in the blink of an eye, she's out of your grasp, in front of you.[line break][line break]You get up, in a sitting position, and ask how she became a squirrel. 'Well,' she begins, 'I was on my way to classes, when two squirrel herms that looked kinda like I do now appeared... Anyway, one pinned me down, while the other forced me to suck her off...' Her eyes glaze over as her erection, ever present, seems to grow another inch, forcing her pants ever-tighter. She rubs you with her breasts, arousal showing on your own parts.";
			increase libido of player by 10;
			if libido of player is less than 50:
				say "'You are cute and all', she says, sighing, 'But I get the feeling you wouldn[apostrophe]t keep up with me. Learn to be half as hungry as I am and we can talk, ok?' She rises up and leans over, kissing your forehead before she departs with a wink.";
				stop the action;
			say "She sits and talks with you for a short time, explaining who she is, 'I[apostrophe]m Snow. I was a nice normal student before it all went down... Could be worse though. Most of the varmints around here are pretty braindead if you know what I mean. The huskies are kind of fun, but banging pure sluts gets old. Say, you seem like you have something between your ears.' She reaches and rubs the top of your head lightly, 'What say I come with you? I promise to not leave the toilet up and clean up after myself. It will be fun!";
			say "Do you permit her to come?";
			if the player consents:
				say "'Wait. I need something first. My breasts are too small,' she complains, though you have reason to doubt the truth of this statement, watching her mammaries jiggle about. 'You have something to fix that?'";
				say "Give her something?";
				if the player consents:
					if the distilled milk is owned:
						let number be 0;
						repeat with Q running through invent of the the player:
							increase number by 1;
							if q matches the regular expression printed name of distilled milk:
								remove entry number from invent of the player;
								break;
						say "'Awesome! Let[apostrophe]s go.' She grabs your distilled milk and swallows it down even as she urges you to lead the way. She rises and follows you back to the bunker with a grin. As she walks, her already large, furry, breasts swell several inches. Her paws rub over them encouraging as she walks, eyes half lid and soft moans echoing the pleasure she feels. When you arrive at the bunker, she sets up shop upstairs, in the library.";
						now snow is in Grey Abbey Library;
						move player to Grey Abbey Library;
						try looking;
						increase score by 5;
						now hyper squirrel girl is resolved;
					otherwise:
						say "'Aw, you don't have what I need. You get some, and you got yourself a girl with talents. Trust me, it will be worth it.' She leans over to kiss either of your cheeks, then dances off into the city in a prance.";
						stop the action;
				otherwise:
					say "'Well fine, play that way. I need a bigger chest. You want me, find me, and bring the goods,' she says, vanishing back into the city.";
					stop the action;
			otherwise:
				say "'Well shoot then, I can do just fine on my own', she insists, and is gone in a trail of hyperactivity.";
				now hyper squirrel girl is resolved;
		otherwise:
			say "You think she won`t be able to find you here, in this dark corridor. You hear her footsteps echoing ever-closer, when they fall silent. Suddenly, she appears behind you, lightly tapping your back. As you curse in surprise, she laughs at your feeble attempt to grab her. 'Too slow again! Come on, catch me...' You follow her giggles outside, as she turns a corner, and vanishes.";


Section 2 - Snow
				
Squirrel Den is a room. It is fasttravel. It is private.	[This is just a holding spot and not a real room]

The description of Squirrel Den is "Not a literal squirrel den, a basement actually. It is warm and dark in here. You can see books piled in messy stacks, and a small cot set to the side. It seems whomever lives here is stocked for the long haul, with small bottles of water and packaged food up on a shelf. There is a soft, musky, scent in the air.";
Snow is a person.
The description of Snow is "This sexual beauty is about six feet, with the features of a squirrel. She sports a massive pair of heaving breasts, larger than any you've seen, and a large bulge in her pants, barely covering the massive cock and huge balls. She normally has her tattered shirt and 'too-tight' pants, but they always seem to vanish before they can be damaged any further.[line break][line break]Snow loves messing with weapons. Type [bold type]upgrade (weapon)[roman type] and she'll give it a working over.";
Snow is in Squirrel Den.
The conversation of Snow is { "I love tinkering around with things, making them better.", "I was earning a degree in engineering!", "If we get rescued, what am I gonna do?", "Wonder what happened to the two that grabbed me...", "You have anyone you care about out there?", "Howdy!" };

instead of sniffing Snow:
	if skinname of player is "squirrel":
		say "Snow's powerful scent is very alluring now, reminding you of those wild squirrels, which gets your blood pumping and your loins ache with increasing arousal.";
	otherwise:
		say "Snow smells has a musky and alluring scent, a mix of male and female.  Her scent has hints of sex, nuts, oil and metal to it beneath that powerful smell of herm squirrel.";

A person can be a smither.
An armament can be improved.
Snow is a smither.

Smithing is an action applying to one thing.

Understand "upgrade [owned grab object]" as smithing.

Check smithing:
	if the noun is not owned, say "You can[apostrophe]t offer what you don[apostrophe]t have." instead;
	if the noun is not armament, say "They can only work on weapons." instead;
	If the noun is improved, say "It is as good as it gets." instead;
	if the noun is wielded, say "Stop wielding it first." instead;
	if a smither is not visible, say "Who is going to upgrade it? I see no one here." instead;

Carry out smithing:
	say "You offer up [the noun] to Snow. Snow smiles and blows you a kiss before moving off with it and tinkering it with a while before offering it back to you, mildly improved.";
	increase the weapon damage of the noun by 1;
	now the noun is improved;


Section 3 - Sexing up Snow

instead of fucking Snow:
	if lastsquirrelfuck - turns is less than 12:
		say "She laughs loudly and gives you a shove, 'Hey, I want to keep it fresh. Go find something else to do huh?'";
		stop the action;
	now lastsquirrelfuck is turns;
	let lust be 0;
	let oversized be 0;
	let response1 be "";
	if skinname of player is "squirrel":
		if hp of Snow is 1 and hp of Snow > squirrelspot:		[Met Wild Squirrels once]
			now squirrelspot is hp of Snow;
			say "     Snow looks at you with some shock a moment before she grabs at your thick white fur, 'Oh, you ran into them!' she exclaims, 'And you got away, and you're sexy!' She stops talking then, shuddering and growing painfully hard. She begins to pant, almost hyperventilating as she shoves you up against a wall and kisses you fiercely for a moment, robbing you of breath. Finally, she draws back, swallowing heavily, 'I.. am so sorry. You just... smell like them. God, I... I almost didn... stayed with them. It was hard, ok?' She smiles gently, 'I[apostrophe]m glad you got away.'";
			now tailname of player is "squirrel";
			now tail of player is "You have a short white squirrel's tail above a shapely ass. It twitches when you're excited, wagging back and forth.";
		otherwise if hp of Snow > squirrelspot:				[Met Wild Squirrels again since seeing Snow last]
			now squirrelspot is hp of Snow;
			say "     Snow buries her face in your thick, white fur again, taking in the squirrel scent with a deep, longing moan.  'Oh, you found them again.  I can still smell them on you.  Mmm... so sexy!'  She wraps her arms around you tightly, kissing you fiercely as she rubs her throbbing cock against you.  'Oh, that smell makes me want to go out and find them again.  I know we shouldn't, but my body keeps wanting to do it.'  Shall you help Snow resist or give in along with her? (Y=resist, N=give in)";
			if the player consents:
				say "     You take Snow's cock in hand and stroke it, telling her that you're here for her and that she can satisfy herself with you as much as she needs.  Kissing you passionately again, she moans her thanks and grinds her throbbing meat against you.  'Oh, I really need to get off.  Let's have some fun.'";
			otherwise:
				say "[snowsquirrelgivein]";
				wait for any key;
				follow the turnpass rule;
				stop the action;
	say "     Snow gives a bright giggle as you advance on her and she grabs at your right hand, drawing you tight to her curvy front. She grinds against you, the lump in her pants growing firm as she bites at an ear, 'Want to play? I am in the mood!'[line break]";
	let squirrelanal be 0;
	if cock length of player > 4 and cock length of player < 16 and a random chance of 1 in 6 succeeds:		[ 1 in 6 of asking for anal ]
		say "     Snow looks you over and gives you a coy grin before turning around and slipping down her pants.  She lifts her tail, flashing her ass and pussy at you, giving her rear a wiggle.  'Mmm.. I'm in the mood for something different, hon?  How about you take back door and stuff my tight nut hole?' she asks with a grin.  'What's the problem?  Can't a girl-boy want something a little kinkier?'  She swishes her tail around again while fingering her wet pussy, then spreading her juices over her pucker, getting it slick and glistening.  Will you take her up on her offer?";
		if the player consents:
			now squirrelanal is 1;
			say "     As you move in and grind your stiffening member against her behind, she grins in pleasure and braces herself against the nearby workbench.  Pleased as punch, she moans happily as you press your glans to her slick hole and leak precum onto it, getting her even more wet and ready.  As you sink your throbbing shaft into her, you grip her hips and press yourself to her back.  'Ohhh... that's so [if cock length of player < 10]nice[otherwise]big[end if].  Do me, baby!  Stuff my tight, squirrely ass,' she demands, giving a squeeze around your [cock size desc of player] [cock of player] cock before pushing herself further onto it.  Needing no more encouragement, you start pounding away at the eager herm.";
			say "     With your cock stuffed fully inside her plush rump, you move your hands to her bosom, groping those large tits of hers she enjoys so much.  You pinch and tease her nipples, making her whimper and squirm all the more in delight as you fuck her, making the ride even more pleasant as those shivers of pleasure translate into ripples of her inner walls around your [cockname of player] shaft.  She releases the table and ends up pressed down atop it as she brings her paws to stroke her neglected cock and finger her pussy at the same time.  You ride her good and hard until finally you push deep inside her fuzzy bottom and unleash your hot seed, filling her ass with your creamy cum.  She's set off as well, spraying a sizable load of squirrel cum under her worktable and soaking her other paw in her juices.  Worn out from the heavy fucking and satisfying finish, you both stay slumped there for a while, enjoying the pleasure of your kinky romp together while you tell her what a sexy squirrel she is.";
			now wild squirrels is not resolved;
		otherwise:
			say "     Snow frowns a little.  'Well, fine, be that way then.  It's too bad you don't know a good thing when you see it, but I guess not everyone's into that kind of thing.  I'm still up for some fun, hon.  Let's see what other trouble we can get into,' she adds with a grin.";
	if a random number from 1 to 2 is 1 and squirrelanal is 0: [ tries to use her cock]
		if the cunts of the player is 0 or cunt length of player is less than 10 or cunt width of player is less than 4: [ oral ]
			say "     'I feel like these need a work out,' she says, reaching below her legs to slowly rub over her distended balls through her pants. She gives off a soft chittering sigh as soft churning is heard, her cum factories ramping up production even as she leers at you lustfully. 'You are going to pucker up and give me a big ole kiss where it counts,' she insists, undoing her pants and letting her huge pink member bob into the air, demanding attention.";
			say "     Give her what she wants?";
			if the player consents:
				say "     You help Snow up onto a counter where she leans back against a pile of books and runs her hands down her form, cupping her large member and caressing along it before she directs it up at you. You run your fingers along the excited member, drawing a soft, appreciative chitter from Snow as she half lids her eyes. Your tongue flicks over the sensitive tool, lapping up the precum as it flows. It is strangely sweet across your tongue with a tangy hit almost hidden in it. You wrap your [facename of player] lips around it and begin to suckle softly at the head, letting your tongue taste of the prefluids as they flow more powerfully with every touch.";
				say "     Your fingertips find her bulging veins, tracing them as you lightly stroke the member, feeling its heat and angry throbbing. Snow is moaning and cooing with delight at the attention, her breath short and rapid as she watches you fellate her with gusto. As you sink down along the tool, she suddenly grabs at you, yelping, then shrieking. You can see her balls lurch visibly, then your mouth is flooded with huge blasts of cum, pouring in salty sprays into your waiting gullet as she rocks her hips into you, trying to bury as much of her tool into you as she can, left panting and exhausted, but with a happy smile on her face.";
			otherwise:
				say "     She looks at you a bit hurt, and lowers a hand to rub at her balls lightly, 'Well damn, don[apostrophe]t go getting a girl all riled up just to shoot her down. Excuse me, I need some alone time,' and she retreats to the far corner of the area. Not long after, soft indecent sounds begin to be heard.";
				stop the action;
		otherwise: [ vanilla ]
			let baby be 0;
			if child is born or gestation of child is not 0, now baby is 1;
			now wild squirrels is not resolved;
			say "     She grabs at your hips and suddenly thrusts you up against a library counter, deft fingers working at your clothes, 'You won't be needing any of that,' she promises as she leaves it pooled around your ankles with a bright grin and increasingly large, throbbing, bulge in her pants. The presence looks almost painful as she gives you a firm slap across your [bodyname of player] ass. She starts to squirm free of her pants as she speaks softly, 'Now don[apostrophe]t you worry none. I[']ll be right gentle.' She allows her huge, pink, member to pop free, bulging with thick veins along its human shaped but inhumanly pink and massive, length. Thick gobs of preseed run down its underbelly towards her heavy, grapefruit sized, balls. At least she's not as big as those panther taurs.";
			say "     She brushes the tip of the member against your [cunt size desc of player] [cockname of player] nethers, teasing at you for a long moment before she eases into you, giving a playful growl as she does so. 'You know,' she says, suddenly looking thoughtful even as she plunges into you, '[one of]I cannot remember if I was a girl or a boy to start[or]Fucking you is the best fuck I ever had[or]Will you bear my child? You would make an awesome mom, I bet[or]Maybe next time you can be on top[at random].' As the moment of glib passes, she grips your hips more firmly, starting to rock against you in deep, urgent, pushes, pistoning against your wet sex as she leans in against your back.";
			say "     Her breasts as absolutely huge, aided in part by her gift of distilled milk, pressing their furry mass against your [skin of player] back as she grinds against you, moaning with increasing fervor as her heavy balls slap against your thighs with every rapid pierce into your [bodyname of player] body, her hands eagerly caressing you from behind, exploring your every contour. With a sudden lurch, she seals herself against you, and heat spreads through your body in pulsing waves of rich squirrel seed running through your body.[impregchance]";
			if baby is 0 and gestation of child is not 0:
				now facename of child is "squirrel";
				now bodyname of child is "squirrel";
				now skinname of child is "squirrel";
	otherwise if squirrelanal is 0: [ tries to use her vag ]
		if the cocks of player is 0: 	[ Have player eat her out, skipped if anal occurred]
			say "     She hops back, looking thoughtful for a moment before she drops her tight pants to the ground and flops back onto a chair, wide legged, 'Today, my fine survivalist, you are going to show me how good you are diving for treasure' She rolls over and presents her rump towards you, tail raised up over her back. Her nethers glisten in the light, pinkened where visible through the soft fur, demanding attention. You approach her and run your hands lightly over her ass, petting and admiring her fine rump as she chitters quietly. Your fingers gently work towards her slickened sex, rubbing against the hot lubricants and exploring the contours of those swollen lips.";
			say "     She leans back against you, giving a sudden whine, and you don't keep her waiting longer. You press forward, extending your tongue and lapping across her hot lips. She is a sweet girl, juices flowing sweetly across tongue as you softly nibble at those delicate folds. You find her clit, erect and aching and make her squeal with the lashing you deliver to it, her tail flailing about above her as her toes curl and quiver in the intense pleasure of it. The pussy lips gush eagerly against your exploring tongue as she begins to get messy, coating your face with the sticky fluids as she trembles in climax. You give her no quarter, working her higher and higher as you nuzzle deeply into those yielding folds. You lose track as you pleasure the busty squirrel, but when she finally pushes you back, the seat is absolutely filthy with the deep musk of her pleasure, and the ground beneath is sticky with a puddle of cum produced by her neglected cock, still dripping with seed.";
		otherwise:	[ Have player fuck her]
			if cock length of player is less than 8: 		[ expand player's equipment ]
				say "     She grabs at your groin and examines your [cock size desc of player] [cock of player] member critically, 'You know, with this whole crazy thing going on, we can be as big as we want, let me show you.' She nuzzles against the head of your shaft, tickling it with her soft muzzle fur before her warm wet tongue caresses over the tip slowly, sending oddly sharp tingles through your member. Even as she begins to slurp at the tip, it starts to grow pink and firm, growing into her slowly stroking hands as she descends on it, suckling and nibbling most carefully.";
				increase cock length of player by 2;
				follow cock descr rule;
				say "     As pleasure radiates from your groin, she looks up into your eyes, smiling around your [descr] shaft as it swells slowly against her lustful attentions, pressing all the more firmly against you. With a wet pop, she draws free, flicking tongue over the tip one last time. 'See, already getting better,' she says encouragingly as she strokes in long lazy motions over your excited flesh, other hand moving to rub at your [skin of player] balls, caressing the [ball size] orbs gently as they begin to tingle and grow as well. The pleasure of it is too much, and you explode in thick strands of fertile spunk, painting Snow across her snout. She yelps out a laugh before sealing her lips around that bulging opening, swallowing the rest down eagerly before letting your satisfied member settle down. With a final nuzzle, she rises up, 'You get used to that bad boy, and we can continue later.'";
				increase cock width of player by 2;
				now cockname of player is "squirrel";
				now cock of player is "bright pink";
				now wild squirrels is not resolved;
			otherwise:
				say "     She draws you forward, fingers gently tugging at your clothes as she presses her large breasts to your front, 'I want to feel you on the inside,' she breathes into an ear, nipping it as she lays back with you on top, grinding her firm groin to you. When you are both disrobed, her furry fingers curl about your [cock size desc of player] [cock of player] spear and guides it up towards her moist petals. She hooks a leg around you as she angles it in, drawing you forward. You thrust into her firmly and she shudders with delight, her sopping passage offering nothing but pleasure to the abrupt entry. She grabs at you and pulls herself tight, rubbing her curvaceous front against you as she begins to rock her hips along that intruding shaft.";
				say "     Her tail flickers and spasms, brushing against your [ball size] cum filled orbs occasionally as she coos and moans with satisfaction. Her own shaft, hard and aching with sexual awakening, prods gently into your belly as you rock deeply into the willing squirrel. The tool drips thick gobs of pre seed along both bellies, neglected but not forgotten. She grabs a hand suddenly, and pulls it up to her huge chest, encouraging you to caress and explore its thick fur and thicker soft flesh.";
				say "     She urges you on faster, faster, seemingly capable of taking any punishment you can mete out for her, each hearty pound making her body jiggle in a most distracting way as her passage clenches and trembles along your [cock of player] cock, welcoming your building load. You bite at her neck and cheek, hugging tight to her as she grows like a vice around you. You can hold it no longer, filling her cunt with great jets of seed, your [ball size] balls drawing up tight as you flood her womb with your fertile spunk. Worn with sudden fatigue, you settle on her, and she gently cuddles with you, holding you close and whispering sweet things in your ears.";
				now wild squirrels is not resolved;
	increase morale of player by 15;
	increase squirrelfucked by 1;


to say snowsquirrelgivein:
	say "     Taking Snow's paw in yours, you rush out with her, leaving the Abbey behind before either of you can think better of it.  Whether by some scent on the air of by blind luck, you soon run into the pair of lustful squirrels.  Finding you with Snow, they are all the more pleased and chitter happily as they welcome you both into their arms.  Soon you are all rolling around in the grass, fucking like wild animals.  Snow is made to stuff her cock down your throat while your [if cunts of player > 0 and cunt length of the player is greater than 8]dripping pussy[otherwise]tight rump[end if] is stuffed by one of the wild squirrels while Snow is getting the same treatment from the other.  You moan around Snow's throbbing meat, tasting her leaking pre growing more addictive and arousing as you watch the light of intelligence fading from her eyes even as you can feel your own mind fading away.  Your last coherent thought is how happy you are that you'll be sharing this new life with the beautiful Snow.";
	if "Male Preferred" is not listed in feats of player:
		if breasts of player < 2, now breasts of player is 2;
		if breast size of player < 4, now breast size of player is 4;
		if cunts of player is 0, now cunts of player is 1;
		if cunt length of player < 9, now cunt length of player is 9;
		if cunt width of player < 6, now cunt width of player is 6;
		if "Modest Organs" is listed in feats of player:
			now cunt length of player is 8;
			now cunt width of player is 4;
	if "Female Preferred" is not listed in feats of player:
		if cocks of player is 0, now cocks of player is 1;
		if cock length of player < 9, now cock length of player is 9;
		if cock width of player < 6, now cock width of player is 6;
		if "Modest Organs" is listed in feats of player:
			now cock length of player is 8;
			now cock width of player is 4;
	say "     After guzzling down her now infectious seed and each getting filled from behind, you become more and more a wild squirrel for your sexy lover and mate.  You pull her into your arms and chitter happily as your loins change, becoming better suited to please her and she chitters back as she changes as well";
	if cocks of player > 0:
		say ".  Pulling her into your lap, you push your cock into her pussy and bounce her in your lap, her large breasts pressed to your chest.  The wild squirrels stand to either side of you, letting you both suck squirrel cock while fucking your new mate.  This beastial fucking goes on until you cum hard, filling her womb with your cum and each getting another tasty load from the squirrels down your throat.  After that, you're mounted again by the wild pair while Snow takes a turn sucking you off.  The romp continues on like this through a myriad of pairings and positions for hours despite the fact you both succumbed long ago.  Eventually, you four run off together back to the their nest to rest before going off in search of others to share your addictive lust with.";
	otherwise:
		say ".  Pulling you into her lap, Snow slides her cock into your pussy and bounce her in your lap, her large breasts pressed to your chest.  The wild squirrels stand to either side of you, letting you both suck squirrel cock while fucking your new mate.  This beastial fucking goes on until she cums hard, filling your womb with her cum and each getting another tasty load from the squirrels down your throat.  After that, you're mounted again by the wild pair while Snow takes a turn eating out your cum-leaking box.  The romp continues on like this through a myriad of pairings and positions for hours despite the fact you both succumbed long ago.  Eventually, you four run off together back to the their nest to rest before going off in search of others to share your addictive lust with.";
	now bodyname of player is "squirrel";
	now skinname of player is "squirrel";
	now body of player is "curved but athletic looking, a dancer's body perhaps. Your legs are thick and powerful, built for swift climbing and terminating in paws that have sharp grasping claws.";
	now skin of player is "white furred";
	now tailname of player is "squirrel";
	now tail of player is "You have a short white squirrel's tail above a shapely ass. It twitches when you're excited, wagging back and forth.";
	now face of player is "set of two long white squirrel ears twitching above your head, a long rodent snout with bucked teeth jutting out of your";
	now facename of player is "squirrel";
	now cockname of player is "squirrel";
	now cock of player is "bright pink";
	now humanity of player is 0;
	now libido of player is 100;
	now scalevalue of player is 3;
	now bodydesc of player is "[one of]athletic[or]curvy[or]agile[at random]";
	now bodytype of player is "[one of]rodent[or]squirrel-like[at random]";
	now the daycycle of player is 0;
	end the game saying "You and Snow have lost your minds to the attentions of the two squirrels, your body becoming covered in thick white fur, face becoming pointed and narrow even as your new muzzle is filled with thick shots of seed. You moan and chitter as your belly swells with the gifts of your lovers, your body blossoming into buxom hermaphroditic squirreltude as your humanity eludes you. You feel at home with these two and take a turn with each, enjoying every combination of cock, cunt and mouth with them and petting their long bushy tails before you all rise, satisfied, and hunt the city together.";


Section 4 - Wild Squirrels

Wild Squirrels is a situation.
Wild Squirrels is resolved.

Instead of resolving a wild squirrels:
	say "As you wander, you get the feeling that you are being watched somehow....";
	let bonus be (( the Perception of the player minus 10 ) divided by 2);
	let diceroll be a random number from 1 to 20;
	say "You roll 1d20([diceroll])+[bonus]: [diceroll + bonus], ";
	increase diceroll by bonus;
	if diceroll is greater than 20:
		say "     You spot a trap and flee before it can be sprung. Loud chitters sound from behind you as you flee.";
		stop the action;
	say "     A crushing weight descends on you from behind as a beast tackles you. Its teeth nip at your ear as great soft paws grab at your front and belly, rubbing you quite affectionately. It feels very curvy, with the exception of a very stiff erection that shoves rudely against your backside as it molests you eagerly. Just as you start to struggle against the beast, another grabs you at the face, paws at your cheeks as it guides you up to look at it. It looks like Snow, but isn't, no intelligence in those eyes as it chitters soothingly and leans in to kiss you firmly, bestial lips to yours.";
	say "Resist?";
	if the player consents:
		let bonus be (( the Strength of the player minus 10 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus]: [diceroll + bonus], ";
		increase diceroll by bonus;
		if diceroll is greater than 20:
			say "     You manage to throw off the beast on top of you with a mighty shove! She squeaks in surprise and tumbles away even as the other grabs at you. Her soft white paw closes on your [if cocks of player is greater than 1][cock size desc of player] [cock of player] dick[otherwise]chest[end if] but you're having none of it, pulling away from her and fleeing to safety, their angry chitters echoing behind you as you leave the squirrels in your dust.";
			stop the action;
		otherwise:
			say "     Despite your protests and struggles, you find your mouth being guided to a large, pink, dick. The squirrel presses it into you as pre splashes across your tongue, and resistance seems to melt from you. As you start to nurse, she fills your mouth with that salty fluid, each gulp draining the will from you as you gulp down a few mouthfuls, now pliant and ready to play with the squirrels.";
			decrease the humanity of the player by 10 + hp of Snow;
	if hp of Snow is even:
		if the cunts of the player is greater than 0 and cunt length of the player is greater than 8:
			say "     One of the squirrels grabs you at the hips and rubs across your sides and backs with those, oh so soft, paws as she eases up into you. Her thick, pink, shaft buries warmly into your waiting snatch as she pulls you back into her lap, slowly settling to the ground with you, bouncing you up and down in her lap as she grunts and coos with pleasure. Your body tingles with growing delight as her infectious seed already works at your insides, weakening your desire to resist her and filling you with an urge to be filled with her.";
		otherwise:
			say "     One of the squirrels makes a sad sort of noise, almost apologetic, before she shoves you forward, grabs your hips, and plunges her thick cock into your back door, rocking easily into your ass as the thick sprays of her pre lubricate you, both in body and mind. Her rough attentions feel better by the moment as you find yourself moaning with desire, pressing back against her as she claims you.";
		say "     The other squirrel approaches from the front. She reaches for your [skin of player] [if breast size of the player is greater than 0][breast size desc of player][otherwise]flat[end if] chest and rubs slowly as she presses slowly to your front, her stiff erection rubbing against your belly as she guides you to a large white furred breast. You are soon nursing at her, filling your belly with the intoxicating and warming fluids she can offer. Part of you wonders how Snow got away from these two at all as you feel your will to do so crumbling with time, your body aroused as never before even as she pulls you from her teat and pushes her cock to your lips, slowly easing the thick pink length into your mouth and rocking slowly against you.";
		decrease the humanity of the player by 10 + ( hp of Snow * 3 );
	otherwise:
		if cocks of player > 0:
			say "     After thrusting her tasty cock into your mouth a few times to make sure that you're nice and compliant, she withdraws and pulls you into her welcoming arms.  Guided onto the ground atop her, she kisses you lustfully while her partner lines up your cock with the squirrel's pussy even as she lines up her own cock with your [if cunts of the player is greater than 0 and cunt length of the player is greater than 8]wet snatch[otherwise]tight asshole[end if].  They chitter softly between themselves for a moment, holding you in place before the one behind you pushes forward, easing her throbbing cock into you and making you moan as you are made to thrust into her partner at the same time.  As you are sandwiched between them while they fuck you, your body tingles with growing delight as her infectious pre leaks into you, arousing you further and making you long to be filled by her.";
			say "     The one beneath you chitters happily at the fucking she's getting and licking and kissing all over your face as her cock leaks precum as its pressed between your bodies.  It seems all too soon that you're cumming hard into her even as your [if cunts of the player is greater than 0 and cunt length of the player is greater than 8]hot pussy[otherwise]tight ass[end if] is filled by the other herm as she drains her heavy balls into you.  As you are stuffed with the warm, intoxicating cum, you can feel a growing longing to stay with them.  The same longing that Snow must have felt.  Your will to resist them crumbles further as you cum hard again into the squirrel herm before passing into a hazy afterglow.";
		otherwise if the cunts of the player is greater than 1 and cunt length of the player is greater than 8:		[2+ adequate cunts]
			say "     After thrusting into your mouth a few more times to make sure that you're nice and compliant, she withdraws and pulls you into her welcoming arms.  Guided onto the ground atop her, she kisses you lustfully while her partner lines up one of your pussies with the cock of the lower squirrel even as she lines up her own cock with another waiting pussy.  They chitter softly between themselves for a moment before the one atop you thrusts into your waiting snatch, pushing you down onto her partner's cock at the same time.  Having both well-endowed herms filling you at the same time is very arousing, especially as their infectious and arousing precum leaks into you.  You are fucked wildly by the both of them, making you moan and climax several times.";
			say "     Your strongest climax comes of course as the pair orgasm with loud chitters, blasting their seed into you one after the other.  You can feel their hot loads shooting into you, filling you with warmth and arousal.  With their intoxicating fluids filling you, you can feel a growing longing to stay them.  The same longing that Snow must have felt.  Your will to resist them crumbles further as you orgasm loudly before passing into a hazy afterglow.";
		otherwise if cunts of player is 1 and cunt length of the player is greater than 8:		[1 adequate cunt]
			say "     After thrusting into your mouth a few more times to make sure that you're nice and compliant, she withdraws and pulls you into her welcoming arms.  Guided onto the ground atop her, she kisses you lustfully while her partner lines up your pussy with the cock of the lower squirrel even as she lines up her own cock with your tight asshole.  They chitter softly between themselves for a moment, dripping precum onto your back entrance to prepare you, before the one atop you thrusts into your slick hole, pushing you down onto her partner's cock at the same time.  Having both well-endowed herms filling you at the same time is very arousing, especially as their infectious and arousing precum leaks into you.  You are fucked wildly by the both of them, making you moan and climax several times.";
			say "     Your strongest climax comes of course as the pair orgasm with loud chitters, blasting their seed into you one after the other.  You can feel their hot loads shooting into you, filling you with warmth and arousal.  With their intoxicating fluids filling you, you can feel a growing longing to stay them.  The same longing that Snow must have felt.  Your will to resist them crumbles further as you orgasm loudly before passing into a hazy afterglow.";
		otherwise:
			say "     After thrusting into your mouth a few more times to make sure that you're nice and compliant, she withdraws and pulls you into her welcoming arms.  Guided onto the ground atop her, she kisses you lustfully while her partner lines up your snug asshole with the cock of the lower squirrel even as she grinds her own cock with your tight asshole.  They chitter softly between themselves for a moment, dripping precum onto your back entrance to prepare you, before the one atop you grinds down on your ass, pushing you down onto her partner's cock at the same time.  You are made to ride in her lap until you're nicely stretched by the herm's cock.  Once you're hole is relaxed and you feel only pleasure because of their arousing precum, you are made to slide off her cock to allow the one atop you to have a turn.  They take turns with you like this, sharing you between them back and forth.  Having the well-endowed herm swapping between you is very arousing, especially as their infectious and arousing precum affects you more and more.  You are fucked wildly by the both of them, making you moan and climax several times.";
			say "     Your strongest climax comes of course as the pair orgasm with loud chitters, blasting their seed into you.  First one shoots her load into your bowels, then the next has her cock quickly stuffed into to keep her partner's load inside as she fills you as well.  Their hot semen fills you with warmth and arousal.  With their intoxicating fluids inside you, you can feel a growing longing to stay them.  The same longing that Snow must have felt.  Your will to resist them crumbles further as you orgasm loudly before passing into a hazy afterglow.";
		decrease the humanity of the player by 10 + ( hp of Snow * 4 );
	increase hp of Snow by 1;
	if the humanity of the player is less than 10:
		now the bodyname of the player is "squirrel";
		if "Male Preferred" is not listed in feats of player:
			if breasts of player < 2, now breasts of player is 2;
			if breast size of player < 4, now breast size of player is 4;
			if cunts of player is 0, now cunts of player is 1;
			if cunt length of player < 9, now cunt length of player is 9;
			if cunt width of player < 6, now cunt width of player is 6;
			if "Modest Organs" is listed in feats of player:
				now cunt length of player is 8;
				now cunt width of player is 4;
		if "Female Preferred" is not listed in feats of player:
			if cocks of player is 0, now cocks of player is 1;
			if cock length of player < 9, now cock length of player is 9;
			if cock width of player < 6, now cock width of player is 6;
			if "Modest Organs" is listed in feats of player:
				now cock length of player is 8;
				now cock width of player is 4;
		end the game saying "You lose your mind to the attentions of the two squirrels, your body becoming covered in thick white fur, face becoming pointed and narrow even as your new muzzle is filled with thick shots of seed. You moan and chitter as your belly swells with the gifts of your lovers, your body blossoming into buxom hermaphroditic squirreltude as your humanity eludes you. You feel at home with these two and take turns with each, enjoying every combination of cock, cunt and mouth with them and petting their long bushy tails before you all rise, satisfied, and hunt the city together.";
	otherwise:
		say "The pleasure overwhelms you as your front and back explode in the ecstasy of being filled. You manage a loud, muffled, moan of bliss as darkness gently slips over you. Despite passing out, you can still, somehow, feel the squirrels settling you to the ground and kissing over your body as it changes, growing furrier and more squirrel like by the moment. Their soft tongues clean you entirely before they leave, and finally the dreams come. When you awaken, they are nowhere in sight.";
	now bodyname of player is "squirrel";
	now skinname of player is "squirrel";
	now body of player is "curved but athletic looking, a dancer's body perhaps. Your legs are thick and powerful, built for swift climbing and terminating in paws that have sharp grasping claws.";
	now skin of player is "white furred";
	now tailname of player is "squirrel";
	now tail of player is "You have a short white squirrel's tail above a shapely ass. It twitches when you're excited, wagging back and forth.";
	now face of player is "set of two long white squirrel ears twitching above your head, a long rodent snout with bucked teeth jutting out of your";
	now facename of player is "squirrel";
	now cockname of player is "squirrel";
	now cock of player is "bright pink";
	now scalevalue of player is 3;
	now bodydesc of player is "[one of]athletic[or]curvy[or]agile[at random]";
	now bodytype of player is "[one of]rodent[or]squirrel-like[at random]";
	now the daycycle of player is 0;
	now wild squirrels is resolved;


When play ends:
	if Snow is in Grey Abbey Library:
		if hp of the player is greater than 0:
			if humanity of the player is less than 10:
				say "     Snow abandons the idea of being saved when you go feral and she joins you in the city, remaining close at your side and becoming like a pack member to you, adoring and loving.  Your life with her as a wild squirrel is one of beastial lust as you spend much of your day fucking one another in the squirrel's den they've set up in a small home near a cluster of acorn trees.  From time to time, you and the others will snag a poor, unprepared person and fuck them into submission, adding another squirrel to your numbers.  When there gets to be too many for your small home, a group breaks off to find a new home to claim as a nest.  But you and Snow always remain there along with your first pair of wild lovers";
			otherwise:
				if bodyname of player is "squirrel":
					say "     Your squirrel body arouses little interest, being a rather mundane creature, if one they've only seen in you and Snow to date.  You don't mention the arousing power of the wild squirrels you and Snow encountered for fear they'd think you capable of the same.  After your eventual release, you and Snow settle down together, becoming lovers and mates.";
					say "     You get a small home together in the suburbs of a new city, picking one with a large acorn tree out front.  Your neighbours are a little shy and nervous around you at first, though squirrels are cute and safe enough that they soon get used to you.  And when you start making acorn butter and other nut treats for them come fall, they're even friendlier still.  Though it certainly doesn't hurt that the acorn butter is made with some squirrel cum.  While not able to infect them, it gets them quite aroused and soon you and Snow are often having sex with many of your neighbours, both men and women";
				otherwise:
					say "     Snow settles down after being rescued.  She turns to you for affection more consistently, and eventually asks to be your girl(boy?) friend.  She is a wonderfully friendly and helpful companion, always willing to help you out on a project or making repairs to your home";
				if sandra is in bunker:
					say ".  Snow approaches Sandra one day when you are out. When you come back, Sandra has a silly expression on her face and Snow looks pleased. After that day, the two are very close friends and begin to act openly affectionate with one another, often dragging you into their play";
			if cocks of the player is greater than 0:
				say ".  Snow eagerly bears children for you over time, enjoying the expansive effect each kit has on her already huge bustline.";
				increase score by 5;
			if cunts of player > 0:
				say ".  You both are quite pleased as well when Snow manages to get you knocked up with some squirrel kits.";
			otherwise:
				say ".";

Hyper Squirrel ends here.
