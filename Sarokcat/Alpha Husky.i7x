Version 2 of Alpha Husky by Sarokcat begins here.
[Version 2.1 - Minor scene tweak and humanity loss curbed]

"Adds a Alpha Husky to Flexible Survival's Wandering Monsters table, With Impreg chance"

Section 1 - Monster Responses

Alphahuskypet is a number that varies.
losttoalphahusky is a number that varies.

to say Alpha Husky Desc:
	setmongender 3;
	if inasituation is true:
		say ""; [dealt with at the source of the event]
	else:
		say "     You blink in surprise as a large, handsome anthro husky male appears in front of you, his slim canine muzzle drawn back in an amused grin as he looks you over. Returning the examination, you see that he has a handsome coat of lovely fur and a nice, perky tail wagging behind him, as he obviously enjoys what he is looking at. The beast is obviously one of the rare male alphas that take care of and probably made the many slutty husky bitches around the city. '[one of]You look like you will make a fine bitch for me...[or]Let's see if you know how to submit to an alpha[or]Another soon to be husky bitch for me I see![or]Hello, my lovely little bitch. Time to get fucked![or]You look like you need a pack to belong to. Let me help you with that...[or]It doesn't look like you have embraced your inner slut yet. Here let me help you with that...[or]C'mere, Bitch![or]Let's see now, do you want to do it the hard way, or the doggy style way...[or]I can't wait to get my paws on you![or]Time to show you what an alpha can do![at random]' the horny husky says as he rubs his paws together. His thick, erect canine cock bobs with excitement, and the knot at the base is already starting to swell with anticipation as he strides forward eagerly!";

to say Alpha Husky attack:
	if inasituation is true:
		say ""; [dealt with at the source of the event]
	else:
		increase losttoalphahusky by 1;
		if cunts of player > 0:
			if bodyname of player is "Female Husky":
				say "     You find your body reacting instinctively to the alpha male's victory, your loins filling with heat as all desire to fight and resist drains out of you. The dominant canine grins with amusement as you lie back on the ground and spread your legs for him enthusiastically. 'Now that's what I like to see, a bitch who knows when to submit to her alpha,' the husky male says with an amused chuckle. The sexy and dominant scent of the powerful canine makes you shudder, and your slutty husky pussy dampens in response to his presence. The male is obviously as eager and lust-filled as you, and he wastes no more time with useless words when he pounces onto you.";
				say "     You find yourself whining like a wanton bitch and wrap your legs around his body. His paws hold your waist tightly as his canine cock rubs up against your heat-filled outer lips and teasingly probe your passage. The husky grins as he nips at your neck, his paws gripping your rear while he pushes more and more of his canine rod into your body with every soft thrust. His strong, dominant touch leaves you whimpering with desire as you rock your hips forward to meet his thrusts, his pointed cock sliding into your body like it was made for it. Your insides burn with increased arousal, and you bury your paw-like hands into his soft fur as your inner walls are spread open before him. You find yourself yipping softly with each rocking thrust of his amazing meat into you, your body submitting eagerly to your alpha's touch. Soon, you cry out with pleasure as your pussy stretches enough to allow his wonderful knot inside, your pussy holding it tight like a good bitch as pleasure explodes through your sex-fogged brain. The muscular male grins, his tongue licking and teasing at your exposed neck and chest, as he thrusts into you with renewed vigor. You are soon groaning eagerly as he fucks you and teases you, and his knot massages your insides with every sensual stroke.";
				WaitLineBreak;
				say "     You can feel your mind emptying of any thoughts other than pleasing and serving your alpha, your nice, strong, amazingly powerful alpha. Images of being a nice, proper, slutty husky bitch for your handsome mate fill your head, replacing those old, unnecessary human thoughts. Each press of his body against your own slutty self makes you more and more a needy, horny bitch for him to breed and fill full of lovely, little husky pups. The new thoughts taking root in your mind, you find yourself whining eagerly up at your alpha as he pounds into your body, begging him without words to mark you with his seed and make you his.";
				say "     The alpha grins as your mind finally begins to submit to him just as eagerly as your body, before letting out a low howl of pleasure when his cock begins to spill his lovely alpha seed inside of your body. Your already-aroused body explodes with pleasure as the powerful husky's cum splashes into your womb, each additional pulse of his male essence working hard to quench the burning fire in your body his dominant presence awoke within you. You pant happily as your alpha holds your limp body close while you lay there on the ground beside him, his knot sealing you together as his paws stroke your body happily. 'Now there's a good bitch. Just submit to your alpha and give up this silly wandering around the city to be a good, little pack-slut,' he says teasingly when he finally pulls his softening knot out of your body, his paw petting your head. You whimper slightly at being left all alone as the handsome canine begins to saunter off into the city, his teasing look back over his shoulder at your well-fucked female body almost making you want to run after him and beg him to finish showing you how to be a good, little slut for him and his pack...[impregchance][impregchance]";
				infect "Female Husky";
				decrease humanity of player by 10;
				increase Alphahuskypet by 1;
				if humanity of player < 10:
					end the story saying "[alpha husky bitch]";
			else:
				say "     Throwing you to the ground one last time, the powerful male husky sniffs you for a minute, before grinning happily. 'You'll make a good bitch for me now, won't you?' the victorious canine growls out, his sexy, dominant tone making you shudder as your pussy clenches with need. He wastes no more time with words and pounces you eagerly, pinning you to the ground beneath him. The muscular male rolls you over, pressing his soft-furred chest up to your back as you lie face-down underneath him. His paw-like hands grip your hips, reaching around and spreading your legs wider for him even as they lift your hips up to meet his. The feeling of his hot, excited breath on your neck makes you moan as your body heats up underneath him.";
				say "     His canine cock caresses your damp folds teasingly as he begins to thrust against your rear, and you groan as your body responds to his assault by spreading itself wider before him. You brace yourself underneath him for the amazing pleasure you know the powerful canine is sure to give you. The husky's pointed cock slips into your slick folds and slides into your body with practiced ease, his knotted cock working its way deeper with each short thrust of his furry hips. Your body burns with a strange heat as your inner muscles clutch at his knot, trying desperately to draw every inch of his canine flesh inside you. The thick knot is soon pressing up against your body teasingly with each thrust, the feel of that swell of flesh trying to enter your body making you gasp and pant eagerly. You knew that on some level you should be resisting, but you're too far lost in the pleasure of being a submissive bitch to care. You gasp as his teeth all of a sudden grip the back of your neck, and his tongue licks across your skin, making you shudder.";
				say "     Your body seems to know how to react almost instinctively as he beings to speed up his thrusting, your pussy spreading itself open as if in submission. His knot slips into your body and locks you together, your mind filling with the blissful enjoyment of his entire length finally filling your needy pussy up. Your breath comes in harsh, panting gasps of arousal as he thrusts into your body several more times, before he clutches you even tighter to him, his cock stiffening within you and making you groan as you feel the first spurts of husky cum begin to fill your womb. Your mind shatters and loses any capability for thought as your body spasms around his shaft, and you vaguely hear his howl of triumph as you collapse into a well-fucked heap on the ground. You lie there, your mind completely empty of thought as his paws stroke your sides and belly teasingly, until the husky's knot shrinks a few minutes later. The canine pulls himself out of your body, making you whimper slightly at the sudden absence of that wonderfully filling rod. 'That's a good bitch. Just lie there and let the heat fill your body, and soon, you can let your alpha do all of your thinking for you,' the lecherous husky whispers into your ear teasingly, his words running through your mind temptingly even as the powerful male stalks off into the city, leaving you lying there on the sidewalk to try to recover...[impregchance]";
				infect "Female Husky";
				decrease humanity of player by 10;
				if humanity of player < 10:
					end the story saying "[alpha husky bitch]";
		else:
			choose row monster from table of random critters;
			if HP of player > 1 and sex entry is "Male":
				say "     The alpha stands over you as you cower before him. 'Giving up?' he asks. 'You're not suited to be a bitch, but then again...' He moves about you and grabs your hips, lifting you up onto all fours, then leaving you there as he stares for a moment, perhaps considering the possibilities. As the tension grows, he crouches in front of you, and his thick canine shaft dangles from its sheath, half-full with promise of what is to come. 'Be a good doll,' he huffs. He thrusts his hips forward, and the shaft bobs in motion, tapping against your face. You hesitate a moment, and his paws seize your ears, pulling you into the half-firmed flesh. You take the slick, red pecker in your mouth and taste its saltiness, your tongue flicking over the tip to his immediate growl of approval.";
				say "     'Deeper,' he commands, grinding his furry groin to your face as the shaft slides across your tongue, growing firmer by the moment. Your eagerness builds as his scent fills your nose. You draw back and plunge down along the shaft as he rocks up against you, fucking your mouth with an increasingly fast tempo. You can feel the start of his knot swelling with each motion. He shudders and pushes you back roughly, 'Not yet.'";
				WaitLineBreak;
				say "     He guides you back to all fours, moving around you and shoving your forebody down to the ground while keeping your ass high in the air. 'Let's see how well you prepared me,' he mutters as he aligns his eager canine shaft to your back door and pulls you back, driving into you in a quick, possessive motion. Fullness and satisfaction erupts from your ass as he fills you to the sheath, rubbing his groin up against your back end as his powerful feet scrabble against the ground for ideal placement before he begins to thrust in slow, firm motions. 'Good bitch, good...' he praises as he moves smoothly through your now-lubricated star. His shaft fits in you as if it was meant to be there, easily grinding back and forth. Your skin tingles with the sheer delight of it and the strange submission you feel towards the dog that feels more like your alpha with every slap of his furry sac against your bottom.";
				now sex entry is "Female";
				say "     'I think,' he says as he draws back to the pointed tip, then drives the thick knot of his member into you, 'that I will keep you like this.' The words stop, replaced with a howl of release when he begins to fill your body with hot gushes of seed. Your grasp of your old self feels weak for a moment as strange new adoration for this husky tries to displace it, and your body is hit with a powerful climax. By the time you can even see again, the alpha had departed, leaving you sticky with a reminder of how much better it could be the next time.";
				decrease humanity of player by a random number between 4 and 8;
				if "Strong Psyche" is listed in feats of player, increase humanity of player by a random number between 0 and 2;
				if "Weak Psyche" is listed in feats of player, decrease humanity of player by a random number between 0 and 2;
				if humanity of player < 10:
					end the story saying "[alpha husky bitch]";
			else if sex entry is "Female":
				say "     'My favorite little bitch male,' he says as he approaches you, licking at your face and throat in slow motions. His warm, strong paws rub over your chest as he pushes you back to the ground, laying belly up. His paws caress downwards, and he looks into your eyes, staring. The power of his commanding gaze forces you to look away, which only makes him laugh in pleasure at your submissiveness. 'That's right.' He draws away and slides down, lifting one of your [bodytype of player] legs up and sliding up between them. His already rock-hard shaft presses up against your back door without preparation. Despite this, he enters as smooth as silk and begins to mate with you in slow, deep motions, rocking you against the ground with soft growls of affection and ownership.";
				say "     The rest of the world feels less important then, just that you are satisfying the alpha, your alpha, and that you are being the best pack bitch that you could be. His words say as much, whispering just how good of a bitch you are as he suddenly slams up into you, filling you with his hungry husky cock. His hands move to your belly again, one settling there as the other cradles your hips to hold you up against his potent strokes. Soft, but firm, paws slowly rub you in varying circles that seem to enhance the pressure and pleasure of his dick pressing deep into your bowels, driving you ever faster towards climax. The sensations are too intense, as if you should have already cum, and yet you held yourself back, waiting for some cue. His motions become faster, but shorter, as the tight ring of your ass holds firm to his knot, allowing him precious little room to jerk back and forth. Each pull flashes stars before your eyes in the ever-building intensity.";
				if "Male Preferred" is listed in feats of player:
					say "     He explodes powerfully into you, and your body unwinds along with your mind. Everything melts away as you are washed away in the pleasure of it, unloading yourself entirely in his caring grasp. This time, he waits for you and kisses you once before he departs. 'Just think how much nicer it'll be once you've properly accepted your place as my needy [if cocks of player > 0]male[else]neuter[end if] bitch.'";
				else:
					say "     He explodes powerfully into you, and your body unwinds along with your mind. Everything melts away as you are washed away in the pleasure of it, unloading yourself entirely in his caring grasp. This time he waits for you, and kisses you once before he departs, 'Just think how much nicer it will be once you give in and be a proper bitch for me.'";
				decrease humanity of player by 20;
				if humanity of player < 10:
					end the story saying "[alpha husky bitch]";
			else:
				say "     'You think someone like you can stand up to an alpha?' The victorious husky growls at you, snapping his teeth in your face and making you cringe backwards in submission. 'Better you know your place as the lowly little bitch you should be,' he says with a grin full of canine amusement as he pounces you, pinning you down with his teeth on your neck until he is satisfied with your increasingly nervous body's surrender. Backing off, he sniffs in your direction several times, before stalking off with his tail held high in the air behind him. 'Come back and see me when you are ready to be a proper bitch,' the taunting male calls over his shoulder as you lie there, panting, feeling like you just survived a narrow escape.";
			infect "Female Husky";
		if husky gathering is resolved and fertile pill is owned:
			say "     You notice that one of your pills seems to be missing. A fertile pill. What would the alpha want with one of those? The mystery has no immediate answers, and you proceed back to safer grounds.";
			delete fertile pill;
			now husky gathering is unresolved;

husky gathering is a situation. It is resolved.

Instead of resolving husky gathering:
	say "     A sudden chorus of barks and shouts catches your attention. Just emerging from around the bend is a group, no, pack of huskies. Most appear male, and those males catch sight of you. Approaching with a joyous war cry, they move to try and cut off your escape.";
	Challenge "Alpha Husky";
	if fightoutcome >= 20 and fightoutcome <= 29:
		say "[alpha huskypack lost]";
		continue the action;
	Challenge "Alpha Husky";
	if fightoutcome >= 20 and fightoutcome <= 29:
		say "[alpha huskypack lost]";
		continue the action;
	Challenge "Alpha Husky";
	if fightoutcome >= 20 and fightoutcome <= 29:
		say "[alpha huskypack lost]";
		continue the action;
	if fightoutcome >= 10 and fightoutcome <= 19:
		say "[alpha huskypack victory]";
	else if fightoutcome >= 30:
		say "You manage to make a break for it and flee from the lustful, dominant dogs.";

to say alpha huskypack lost:
	if HP of player < 1:
		say "     The pack laughs and cheers as you submit to their superior numbers. They push you over, and suddenly, your mouth is full of dog cock as one sits down on you, shoving his member into you and starting to rut eagerly with reckless abandon. You feel another husky rifling through your pockets. Are they mugging you? It seems so, as one gives a delighted bark and dashes off with something of yours, bringing it to the alpha husky to admire. You try to voice complaint, but can only get out a muffled whine around the cock filling you. The horny dog straddling your face howls, filling you with salty dog cum and forcing himself forward. Your jaw hurts as the knot is forced past it, leaving you tied to the lusty canine.";
		say "     Time passes, and the sounds of the others grow quieter. You can't see them either, but you can't see much but the thighs of your rapist. He pulls free of your sore mouth and barks a word of thanks before hopping to his feet and dashing off, leaving you to recover.";
		let z be a random owned grab object;
		decrease carried of z by 1;
[		sort invent of the player in random order;	]
[		remove entry 1 from invent of the player;		]
	else: [ player submitted ]
		say "     Seeing you take a submissive posture, the pack immediately stops their assault. They press in at you from all directions, petting and licking you all over. The leader, however, is looking you in the eyes. 'If you want to join us,' he says, 'you will have to be stronger than that.";
		if cocks of player > 0:
			say "     You feel your [cock of player] shaft being buried in the eager mouth of a husky, slurping at you with loud, rude sounds and bobbing against your crotch. Furry paws grasp and caress at your [short ball size] nuts as they growl happily.";
		if cunts of player > 0:
			say "     A wet, slippery, canine tongue delves up into your cunt, lapping at your [cockname of player] sex as they tease at your clit with claw tips carefully. Your sex sings with forced pleasure as the dogs work diligently to bring you to delirious heights.";
		say "     You shudder and spasm as climax hits you like a freight train, feeding hungry husky mouths with your fluids. They work you until you have no further to give and lower you back to the ground gently. The alpha stands over you, his tail wagging. 'Next time.'";


to say alpha huskypack victory:
	choose row monster from table of random critters;
	if player is not submissive:
		say "     You stand victorious as the huskies whimper in defeat. They know who the one in charge is, for now at least. One of the downed dogs rolls over in front of you, paws in the air and wagging his tail. The others join in with soft yelps and whines, endeavoring to win your favor.";
		if humanity of player > 60 or libido of player < 50:
			say "     You have little interest in playing with dogs though. There are better things to be doing, and you leave them behind.";
		else:
			say "     You get the soft urge to play with these dogs and crouch down. You run your [bodytype of player] hands across their scruffs and throats, scratching at their densely furred hides as they start to gather around you, licking and nuzzling with an intense affection for their superior.";
			if cocks of player > 0:
				if cocks of player > 1:
					say "     Your multiple hanging wangs draw two of the huskies. They go for them directly, licking and slurping at them like they were a fine treat. Those wet tongues tease and excite you, barely allowing you to even see your crotch because of their eager snouts pressed against you. Behind them, their tails are wagging fiercely with delight. Another husky, looking left out, circles about you.";
				else:
					say "     You feel a nuzzling at your groin and see a husky softly shoving his snout between your thighs. His wet tongue trails out across your [cock of player] member, admiring its [cock size desc of player] girth and stature. His cold nose brushes against your [short ball size] nuts, and you jump, just in time for another husky to circle around you.";
			else:
				say "     One husky approaches and rears up, pressing his snout to your face before he licks across face and neck, then bares his throat to you. Without thinking about it, you bite him lightly across the exposed windpipe, and he shudders with a potent feeling of submission. As the thrill of owning him runs through you, you barely register another dog moving around behind you.";
			if cunts of player > 0:
				say "     The dog behind you nuzzles against your [tailname of player] ass a moment before he rears up, placing his paw-hands on your shoulders and drawing in for a firm hug from behind. He growls in your ear in a way that seems nothing but adoring. He runs his tongue across your ears and the side of your face, grinding his increasingly hard shaft against your ass as your front is worked over. His pointed dog cock seems to avoid your cunt, at least until you decide that you want to be fucked. You reach behind yourself and guide his twitching member to your [cockname of player] [cunt size desc of player] gash. He needs no further prompting and thrusts firmly into you, taking your wet tunnel with sharp, deep pushes and howling out his love for his alpha queen. [impregchance]";
			else:
				say "     The dog behind you nuzzles against your [tailname of player] ass a moment before he rears up, placing his paw-hands on your shoulders and drawing in for a firm hug from behind. He growls in your ear in a way that seems nothing but adoring. He runs his tongue across your ears and the side of your face, grinding his increasingly hard shaft against your ass as your front is worked over. The narrow end of his raging erection nudges against your asshole, and he pulls away sharply, whining as if he did a bad thing. You give out a growl of your own, reaching back to pull him forward and into yourself. With a happy yelp, he buries himself into your tight back door, filling you with rapid strokes as he yelps and barks with delight at being permitted to mount his alpha.";
			say "     With the pleasure coming from both ends, it is not long before your body seizes in climax. Your cry mixes with those of the canines, shuddering and pressing tight together as hot cum flows between. They are eager to clean you. One volunteers to be your pillow, and another, your blanket, as they all snuggle tightly up to you until you pass into a restful sleep.[impregchance]";
			decrease humanity of player by 20;
			if humanity of player < 10:
				say "[alpha pack victory ending]";
				wait for any key;
				end the story;
			else:
				say "     When you awaken, the pack has already moved on. Taking the cue, you rise and gather your things before moving to safer places.";
	else:
		say "     Your victory feels odd, almost wrong. The huskies circle you a moment before the leader of them suddenly darts forward and plants a sloppy dog kiss against you. 'Little bitch, you fight hard. When will you join us forever?' The words bring a hot blush to your [facename of player] cheeks as some part of you wants to roll over and do just as he said. Would it really be that bad?";
		decrease humanity of player by 10;
		if humanity of player < 10:
			say "[alpha pack submissive victory ending]";
			wait for any key;
			end the story;
		else:
			say "     No! You won't give up that easily! You turn away from the alpha in defiance. He comes up from behind and wraps his arms around you, rubbing your [bodydesc of player] form lightly. 'Your fire burns so bright. It will be all the more delicious when you join us.'";
			if cocks of player > 0:
				say "     His paw dips down across your front and takes a hold of your [cock size desc of player] [cock of player] shaft, squeezing, pulling, and stroking you slowly as he whispers in your ear, 'We will take such good care of you, our strong little bitch. Just imagine.'";
				if cock width of player > 0:
					say "     A wet tongue flicks up over your [short ball size] balls, lapping at it as the alpha jerks you off with that soft, furry paw, working you as he rocks against your back. His scent is all around you, powerful and intimidating. Even though you had won the battle, you can feel your mind losing the war as the idea of being the pack's bitch seems more and more appealing.";
				say "     Your orgasm sneaks up on you, spraying your seed into the air, before another husky snout descends over your shaft, swallowing the rest obediently as you ride it out. The alpha pulls his paw away from your cock and moves instead to petting your belly and sides, stroking your entire form as you twitch in pleasure.";
				decrease humanity of player by 10;
				if humanity of player < 10:
					say "[alpha pack submissive victory ending]";
					wait for any key;
					end the story;
				else:
					say "     When the orgasm fades, the huskies draw back. The room between you and them feels painful, as if the separation were just as visceral as seeing your own arm across the room. The urge to join them was maddening, but you deny it. You watch them as they move away, not moving yourself until they are out of sight.";

to say alpha pack victory ending:
	say "     When you wake up, your pack is assembled around you. Yes, your pack. They've always been your pack, right? A moment of fuzziness fades as one of the huskies approaches with a wagging tail and bows before you. You scratch him behind the ear before shouting out the order to continue the hunt. There were more people to show the way of the pack.";
	say "     Your pack would become a permanent feature of the city, waging successful wars with other violent mutants. Under your wise rule, you forge more peaceful terms with the agreeable sorts. The mall rats become a vital source of supplies and technology, and you trade with them often. Those you defeat in battle are converted to bitches and warriors, depending solely on your discretion.";
	if cocks of player > 0:
		say "     You sire a great many children over the years, swelling the ranks of the pack. It is one of your sons that eventually succeeds you, when you eventually retire to comfort with your many wives.";
	if cunts of player > 0:
		say "     You allow yourself to be bred by only the most potent, strong, and wise of your pack. Your children become exemplars of the pack, helping to lead and protect along your command, and your husbands become your dearest companions.";

to say alpha pack submissive victory ending:
	say "     You can resist no longer. You throw yourself down in front of the alpha with your paws up in the air. The canine leader reaches down to rub across your belly before he gestures for you to stand. 'You are no regular bitch,' he says. 'You defeated us all. There is something special in you.'";
	say "     The praise sends pleasure tingling through your body, and arousal creeps into your loins. He leans forward, bumping his nose into yours. 'You will be the alpha of the bitches. You will show them how best to serve the pack.'";
	say "     You nod quickly, and the others howl their approval. Soon, you are surrounded by your brothers and sisters, licking, kissing, hugging, and stroking. The entire pack breaks down into an orgiastic expression of joy at their powerful bitch. Filled with such love you have not felt before, you eagerly take up your role and serve the rest of your days as the best omega.";

to say alpha husky bitch:
	say "     You surrender to the sensations and take off at a run until the object of your obsession comes into view. That handsome alpha husky is perched on a rock, looking out over the quiet city. He doesn't even see you until you are on him, hugging him from behind.";
	say "     He laughs as he turns about in your arms and gently pries you free of him. His paws rub over your face and through your hair, whispering how good you are for finding him, and how well he will treat you from now on. Your body grows warm and tingly at the words, knowing deep inside that they are true, and that this male will always look out for you.";
	say "     A sudden slap jerks you free of your daze, his paw having slapped you on your [facename of player] ass. 'Now, let's get in gear. We need more females for our pack if we're going to rule this city.' You bob your head in agreement, imagining your alpha with a great many bitches. He deserves them, and you will gladly help him get them. But you know that you will always be his most special bitch.";


To say Alpha Husky loss:
	if inasituation is true:
		say ""; [dealt with at the source of the event]
	else if SarahSlut > 3:
		say "     'You're tougher than I thought,' the alpha says as he looks at you speculatively, his nose working as he sniffs around you for a second, before a grin crosses his muzzle. 'And it looks like you already have tamed a bitch or two yourself,' he says with a chuckle, obviously scenting your lusty husky pet's heat-filled odor still clinging to your body. 'If you want, I suppose I could give you a few pointers on being a proper alpha to them, one pack leader to another,' the canine says with a wink, his offer sounding surprisingly helpful as you think of how much fun it would be to be a proper alpha for your little pets back in the bunker...";
		say "[bold type]Do you take him up on his offer?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Get some tips to be a better alpha.";
		say "     ([link]N[as]n[end link]) - No, you feel like you're fine without his advice.";
		if player consents:
			say "     'Knew you would be interested in that,' he chuckles roughly. You listen eagerly as he begins giving you pointers on how to properly train a husky to serve you, his harsh voice interspersed with soft barks and much wagging of his tail as he passionately describes how an alpha claims their bitch properly. By the time he saunters off into the streets of the city, you feel like that you know quite a bit more about what life is like at the top of a husky pack. Strangely enough, you even feel much more husky-like yourself now too... Shrugging the feeling off, you realize that any such changes could only bring you closer to being a proper alpha for your bitches, and you grin as you saunter down the streets of the city yourself...";
			infect "Alpha Husky";
			infect "Alpha Husky";
		else if losttoalphahusky >= 2 or a random chance of 1 in 2 succeeds:
			say "[bold type]You also briefly consider pouncing on the defeated husky and giving him an added reminder that you beat him. Shall you do this instead?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Get some revenge.";
			say "     ([link]N[as]n[end link]) - No, you're not interested.";
			if the player consents:
				say "     Acting as if you're about to accept his offer, you move in a little closer and then tackle the alpha husky down, growling at him that you think he needs a better reminder that you beat him.";
				caughtthealphahusky;
			else:
				say "     Deciding to just drop the matter entirely, you tell him that you're not interested. 'Your loss,' the husky says with a shrug, wagging his tail as he saunters off. 'Though if you don't want to be a proper alpha for that well-tamed bitch I scented on you, feel free to send her my way anytime!' He gives a barking laugh over his shoulder as he vanishes into the streets of the city.";
		else:
			say "     'Your loss,' the husky says with a shrug, wagging his tail as he saunters off. 'Though if you don't want to be a proper alpha for that well-tamed bitch I scented on you, feel free to send her my way anytime!' He gives a barking laugh over his shoulder as he vanishes into the streets of the city.";
	else if losttoalphahusky >= 2:	[lost at least twice]
		say "     Having been beaten and abused by these male huskies a few times in the past, you growl as you beat him and push him down before he can get away. He makes some snaps at you and tries to pull free, but you've got him.";
		caughtthealphahusky;
	else if a random chance of 1 in 3 succeeds:
		say "     You manage to push the alpha husky down to the ground at the end of your fight before he can slink away. You growl down at him as he makes some snaps at you and tries to pull free, but you've got him.";
		caughtthealphahusky;
	else:
		say "     The powerful male husky growls as you beat him back again, before shaking his battered head at you sadly and turning tail. The anthro canine darts off down the city streets with his tail hanging low as he runs off to hide and lick his wounds. Somehow though, you don't think that will be the last you will see of that strange alpha husky...";


to caughtthealphahusky:
	say "[bold type]Do you feel like teaching the alpha a lesson?[roman type][line break]";
	LineBreak;
	if cocks of player > 0:
		say "     [link]Mount him (1)[as]1[end link][line break]";
		say "     [link]Ride him (2)[as]2[end link][line break]";
		say "     [link]Beat him up (3)[as]3[end link][line break]";
		say "     [link]Leave (4)[as]4[end link][line break]";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 4:
			say "Choice? (1-4)>[run paragraph on]";
			get a number;
			if calcnumber > 0 and calcnumber <= 4:
				break;
			else:
				say "Invalid choice. Choose 1 through 4.";
		if calcnumber is 1:
			say "[alphahuskyfucked]";
		else if calcnumber is 2:
			say "[alphahuskyridden]";
		else if calcnumber is 3:
			say "[alphahuskybeatenup]";
		else if calcnumber is 4:
			say "[alphahuskyreleased]";
	else:
		say "     [link]Ride him (1)[as]1[end link][line break]";
		say "     [link]Beat him up (2)[as]2[end link][line break]";
		say "     [link]Leave (3)[as]3[end link][line break]";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber > 0 and calcnumber <= 3:
				break;
			else:
				say "Invalid choice. Choose 1 through 3.";
		if calcnumber is 1:
			say "[alphahuskyridden]";
		else if calcnumber is 2:
			say "[alphahuskybeatenup]";
		else if calcnumber is 3:
			say "[alphahuskyreleased]";


to say alphahuskyfucked:
	say "     Deciding that this alpha male could use a taste of his own medicine, you roll him over and grab that fluffy tail of his. He gives a mix of growling threats and whimpers, trying to bark and bluster out of his punishment, but this only spurs you on further, wanting to teach the dog a good hard lesson of his own. As you push your cock into his tight tail-hole, his hips push back into your thrust despite his attempts at resistance. And after a few thrusts, he's moaning and panting beneath you, his own cock dribbling precum onto the ground. When you finally cum hard inside him, he cums as well, before slinking off after you release him. His fluffy tail low to cover his creamy hole, he heads back into the city to find someplace to lick his wounds and salvage his injured pride.";

to say alphahuskyridden:
	say "     Deciding to show this alpha male who's in charge, you decide to take what you want from him instead of letting him force it upon you. Slamming his shoulders down firmly, you straddle him and start grinding your hips down onto his crotch. As his sheath starts to fill and his doggy cock emerges, he starts to pant. He struggles a little, still wanting to be dominant and on top, but you growl at him until his ears dip. Only then do you press that throbbing dog cock into your [if cunts of player > 0]juicy pussy[else]tight anus[end if]. You ride him slowly, which makes the normally rough dog whimper for more, but you take your time, savoring both his pleas for you to go faster and the fulfilling ride that you're getting. Once you can't hold back any longer and need release, you pound yourself down onto him hard and fast until you both cum loudly as the canine seed floods your [if cunts of player > 0]womb[else]belly[end if][if cocks of player > 0]. You shoot your own load across the husky's chest as his semen fills you[end if]. Finished with him, you push yourself off and send the cowed dog on his way. He slinks off, his tail low at having been beaten and used for a change, looking for someplace to lick his wounds and salve his pride.[impregchance]";

to say alphahuskybeatenup:
	say "     Deciding this aggressive dog could use a bit of harsh discipline, you give him a few more smacks. 'Bad dog! Bad dog!' You rain blows down upon him, kicking and punching him until he's cowering in a corner. You give his rear a final hard boot and send him running. He slinks off with his tail between his legs to find someplace to lick his wounds and salve his pride.";

to say alphahuskyreleased:
	say "     You growl down at the alpha husky angrily, making him whimper a little, which brings a smile to your face. You push yourself off of him, releasing him. The anthro canine scrambles to his feet and turns tail. He darts off down the city streets with his tail hanging low as he runs off to hide and lick his wounds. Somehow though, you don't think that this will be the last you will see of these strange alpha huskies.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	add "Alpha Husky" to infections of guy;
	add "Alpha Husky" to infections of furry;
	now name entry is "Alpha Husky";
	now attack entry is "[one of]He leaps forward, snapping and snarling at you.[or]The husky poses for a minute, the light catching on his perfect, sexy coat of fur and making you stare in awe and lust.[or]Leaping towards you, he knocks your hands aside, and his canine muzzle lunges forward as he kisses you right on the mouth![or]He dances around you playfully, his teasing antics making you forget that you are supposed to be fighting him for a minute.[or]He darts forward and rubs himself up against your body, his arousing scent clinging to your body even as he retreats back out of reach.[or]He stalks forward confidently, his erect cock drawing your gaze as he rubs his paws over your body teasingly.[at random]";
	now defeated entry is "[Alpha Husky loss]";
	now victory entry is "[Alpha Husky attack]";
	now desc entry is "[Alpha Husky Desc]";
	now face entry is "slim, masculine canine muzzle, a soft grin tugging at the edges of it, and your perky husky ears resting happily on top of your canine face";
	now body entry is "[if latexhuskymode is true]that of a quadrupedal dog with paw-like feet and hands[else]that of a bipedal canine, very much resembling that of a male husky with digitigrade legs, ending in soft powerful paws[end if]";
	now skin entry is "[if latexhuskymode is true]smooth and shiny latex of black and white for[else][one of]soft fur over your[or]husky fur over your[at random][end if]";
	now tail entry is "You have a [if latexhuskymode is true]curved husky tail made of smooth latex[else]long and fluffy husky tail swaying happily behind you[end if].";
	now cock entry is "[if latexhuskymode is true][one of]latex[or]doggy[or]canine[or]knotted[at random][else][one of]canine[or]husky[or]knotted[at random][end if]";
	now face change entry is "[if latexhuskymode is true]it reflows into the smooth, husky head you had before. Your long, rubbery tongue hangs from your mouth, dripping with oily drool[else]it draws forward, pushing out into a proper canine muzzle, your newly elongated tongue slipping free of your new lips and lolling wetly in the air for a minute[end if]";
	now body change entry is "[if latexhuskymode is true]your arms and legs grow malleable and turn into doggy legs for your increasingly canine body. Soon enough, you're back to the quadrupedal husky form you had earlier. It will be a struggle to stand or use your hands now, but being a doggy feels so much better anyhow[else]your legs bend and twist into a proper digitigrade form with soft snapping sounds as the bones flow and change. You look down to see your feet becoming entirely paw-like, even as your hands shift and change as well to become almost as paw-like, barely able to still handle your equipment[end if]";
	now skin change entry is "[if latexhuskymode is true]your skin flows, turning a glossy black and white, flowing around as it becomes a layer of latex in a husky pattern[else]your skin prickles from your head to your toes as fur begins to push through from underneath, soon covering you in a soft, almost comforting, layer of fluffy, white husky fur[end if]";
	now ass change entry is "[if latexhuskymode is true]a long, inflated tail balloons from your behind. It curves and wags, perpetually raised to show off your groin and butt[else]a long canine tail pushes out from your spine, lifting up in a stiff curve as it begins to sway slowly behind you without any conscious input[end if]";
	now cock change entry is "[if latexhuskymode is true]your shaft becomes smooth, latex flesh. It tapers to a point and gains a thick, doggy knot and a sheath of latex rubber to house it[else]it draws up closer to your body, the skin stretching around your crotch to cover your new knotted canine member completely in a soft, furry sheath of husky fur[end if]";
	now str entry is 22;
	now dex entry is 17;
	now sta entry is 21;
	now per entry is 16;
	now int entry is 10;
	now cha entry is 20;
	now sex entry is "Male";  [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 50;
	now lev entry is 8;  [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 10;  [ Amount of Damage monster Does when attacking. ]
	now area entry is "Outside";  [ Current options are 'Outside' and 'Mall' Case sensitive]
	now cocks entry is 1;  [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 9;  [ Length infection will make cock grow to if cocks]
	now cock width entry is 4;  [ Size of balls ]
	now breasts entry is 0;  [ Number of Breasts infection will give you. ]
	now breast size entry is 0;  [ Size of breasts infection will try to attain ]
	now male breast size entry is 0;  [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;  [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 9;
	now cunt width entry is 4;
	now libido entry is 30;  [ Amount player Libido will go up if defeated ]
	now loot entry is "";  [ Loot monster drops, ]
	now lootchance entry is 0;  [ Chance of loot dropping 0-100 ]
	now scale entry is 3;  [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[if latexhuskymode is true][one of]quadrupedal[or]altered[or]animalistic[at random][else][one of]altered[or]animalistic[at random][end if]";  [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "[one of]canine[or]husky[at random]";
	now magic entry is false;
	now resbypass entry is false;  [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	blank out the nocturnal entry;  [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "hump";  [ Row used to designate any special combat features, "default" for standard combat. ]

Alpha Husky ends here.
