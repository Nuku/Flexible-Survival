Version 3 of Gryphon Companion by Sarokcat begins here.
[Version 2.2 - Player initiated pet sex]
[Version 3   - NPC/Pet double character]
[Version 3.1 - Character relocation - Luneth]

"Adds a special event to Flexible Survival with a potential pet."

gryphoncomforted is a number that varies.

Section 1- Gryphoness

Table of GameCharacterIDs (continued)
object	name
Gryphoness	"Gryphoness"

Gryphoness is a pet. The description of gryphoness is "[gryphonessdesc]". Gryphoness is a part of the player.
The weapon damage of Gryphoness is 5.
The level of Gryphoness is 2.
The Dexterity of Gryphoness is 10.
The summondesc of Gryphoness is "[summongryphoness]".
The dismissdesc of Gryphoness is "[dismissgryphoness]".
The assault of Gryphoness is "[gryphonessassault]".
the fuckscene of gryphoness is "[sexwithgryphoness]".
GryphonessKnowpreg is a number that varies.

understand "Denise" as gryphoness.

to say gryphonessdesc:
	now tempnum is the remainder after dividing libido of gryphoness by 4;
	let T be ( libido of gryphoness / 4 );
	project Figure of BlueGryphon_icon;
	say "     The blue gryphon you helped earlier is staying with you happily, her golden feline lower body blending beautifully with her blue avian upper body, she whistles happily as she follows you through the city[if tempnum is 1]. She seems particularly pleased right now[else if tempnum is 2]. She has a full, rounded belly from a growing pregnancy within her. Empowered by the infection, she seems almost as agile as before and her love for you seems only stronger. Despite, or perhaps because of, her pregnancy, Denise is still quite aroused and horny[else if tempnum is 3]. ERROR-Denise-3L: You should not be able to see Denise right now[end if][if T is 1]. Accompanying her now is your gryphon child, a cute version of Denise in miniature[else if T >= 2]. Accompanying her right now is a pair of your gryphlets, cute versions of Denise in miniature[end if].";

to say summongryphoness:
	now tempnum is the remainder after dividing libido of gryphoness by 4;
	let T be ( libido of gryphoness / 4 );
	now Denise is nowhere;
	project Figure of BlueGryphon_icon;
	if player is not in Garden View: [regular summoning]
		say "     You sing out several notes of the song the way the gryphon you encountered taught you, your voice echoing through the empty city, and before long you hear an answering voice responding, and with flap of wings from above, and you look up just in time to see the herm gryphon you helped hurl herself into your arms, cooing and rubbing up against your body eagerly.";
		if ( tempnum is 0 or tempnum is 1 ) and T is 1:
			say "     Landing moments after Denise is your gryphon child. She is a cute version of Denise in miniature, another blue gryphon herm with a pretty face and a happy smile. She runs up and shares in the hug with you both.";
		else if ( tempnum is 0 or tempnum is 1 ) and T >= 2:
			say "     Landing moments after Denise come a pair of gryphlets, your children. They are a cute version of Denise in miniature, blue gryphon herms with pretty faces and happy smiles. They run up and share in the hug with the both of you.";
		else if tempnum is 2:
			say "     Looking over your lovely companion, you can't help but notice how full and round her belly's grown. She beams happily, rubbing her pregnant belly and you can't help but smile in return. She kisses you and takes your hand in hers, rubbing it over her swollen, pregnant tummy.";
			now GryphonessKnowpreg is 1;
			if T is 1:
				say "     Landing moments after Denise comes your gryphon child. She is a cute version of Denise in miniature, another blue gryphon herm with a pretty face and a happy smile. She runs up and rubs her taloned paws over Denise's maturing pregnancy as well.";
			if T >= 2:
				say "     Landing moments after Denise come a pair of gryphlets, your children. They are cute versions of Denise in miniature, blue gryphon herms with pretty faces and happy smiles. They run up rub their taloned paws over Denise's maturing pregnancy as well, happy about another sibling coming.";
		else if tempnum is 3:
			if T is 0:
				increase weapon damage of gryphoness by 1;
				if GryphonessKnowpreg is 1:
					say "     As Denise rubs her body against yours, you can't help but notice that her pregnant belly is gone. Back to her more slender self, she does have a larger pair of breasts. They are filled with milk for the cute gryphlet you see landing moments after. She comes running up to you both, joining in the hug. Your herm gryphon child is a cute version of Denise in miniature, with blue feathers and golden fur. She has a pretty face and a happy smile, just like her mother. You can't help but feel happy and proud at the sight of her.";
				else if GryphonessKnowpreg is 0:
					say "     Moments after Denise lands, a small gryphon child lands nearby. She is much like the other gryphons you've seen, but much younger in appearance. You are put on your guard, but Denise only smiles and hugs you before running up and gathering the child into her arms and bringing her to you. It seems you'd knocked up the gryphoness and she went through her pregnancy and had her child in the short time you two were separated.";
			else if T is 1:
				increase weapon damage of gryphoness by 1;
				if GryphonessKnowpreg is 1:
					say "     As Denise rubs her body against yours, you can't help but notice that her pregnant belly is gone. Back to her more slender self again, you look over and spot a second gryphlet landing alongside her older sibling. The pair of them run over, joining in the hug. This second herm gryphon child is again Denise in miniature, roughly the size of the first one at her age. She has a pretty face and a happy smile, just like her mother. You can't help but feel happy and proud at the sight of her.";
				else if GryphonessKnowpreg is 0:
					say "     Moments after Denise lands, your maturing gryphon child lands alongside another, younger one. It seems that Denise had another child while you were separated. She is a cute, younger version of her sister. The two herm siblings come up and hug their parents.";
			else if T is 2:
				increase dexterity of gryphoness by 1;
				if GryphonessKnowpreg is 1:
					say "     As Denise rubs her body against yours, you can't help but notice that her pregnant belly is gone. Back to her more slender self again, you look over and spot a trio of young gryphons landing nearby. They run over, joining in the hug. The new child looks much like her siblings did at that age, a cute version of Denise in miniature. The eldest sibling, now almost fully adult, snugs you all tightly and nuzzles before heading off into the city to seek her fortune and a loving mate of her own.";
				else if GryphonessKnowpreg is 0:
					say "     Moments after Denise lands, your gryphon children land nearby accompanied by another new sibling. The new gryphlet looks much like her siblings did at that age, a younger version of Denise. It seems that Denise had another child while you were separated. She is a cute, younger version of her sister. With a happy squawk, the herm siblings run over, joining in their parents['] hug. The eldest sibling, now almost fully adult, snugs you all tightly and nuzzles before heading off into the city to seek her fortune and a loving mate of her own.";
			else if T >= 3:
				if GryphonessKnowpreg is 1:
					say "     As Denise rubs her body against yours, you can't help but notice that her pregnant belly is gone. Back to her more slender self again, you look over and spot a trio young gryphons landing nearby. They run over, joining in the hug. The new child looks much like her siblings did at that age, a cute version of Denise in miniature. As before, the eldest sibling, now almost an adult herself, snugs you all tightly and nuzzles before heading off into the city in search of a loving mate of her own.";
				else if GryphonessKnowpreg is 0:
					say "     Moments after Denise lands, your gryphon children land nearby accompanied by another new sibling. The new gryphlet looks much like her siblings did at that age, a younger version of Denise. It seems that Denise had another child while you were separated. She is a cute, younger version of her sister. The two youngest siblings run over and join in their parents['] hug. As before, the eldest sibling, now almost an adult herself, snugs you all tightly and nuzzles before heading off into the city in search of a loving mate of her own.";
			increase morale of player by 2;
			increase libido of gryphoness by 1;
			now GryphonessKnowpreg is 0;
	else: ['summoning' while standing next to her]
		say "     Stepping over to Denise's nest, you gently whistle several notes of her special song, drawing her attention away from the book of lyrics she was paging through. The gryphoness gives you a beaming smile as she sees you, all ready to go out for new adventures - and an eyeblink later, she's pounced on you with a flap of her wings, crooning and rubbing against your body eagerly. 'Let's go and have some fun,' she says after coming back up from a long kiss with you.";
		if ( tempnum is 0 or tempnum is 1 ) and T is 1: [not pregnant or invisibly pregnant, one kid already born]
			say "     Just moments after Denise comes to stand beside you, your gryphon child lands by her side and pipes in a high voice that she wants to come along as well. She is a cute version of Denise in miniature, another blue gryphon herm with a pretty face and a happy smile. She shares a hug with the both of you and flaps her wings in eager anticipation of an excursion into the city.";
		else if ( tempnum is 0 or tempnum is 1 ) and T >= 2: [not pregnant or invisibly pregnant, 2 or more kids already born]
			say "     Just moments after Denise comes to stand beside you, a pair of gryphlets land by her side. Your two children pipe in their high voices that they want to come along as well. They are a cute version of Denise in miniature, blue gryphon herms with pretty faces and happy smiles. All of you share a family hug, then the little ones flap their wings and bounce around in eager anticipation of an excursion into the city.";
		else if tempnum is 2: [visibly pregnant]
			say "     Looking over your lovely companion, you can't help but notice how full and round her belly's grown. She beams happily, rubbing her pregnant belly and you can't help but smile in return. She says, 'I'm not too swollen to fly, don't worry. Some exercise will do me good.' Then she kisses you and takes your hand in hers, rubbing it over her swollen, pregnant tummy.";
			now GryphonessKnowpreg is 1;
			if T is 1:
				say "     Just moments after Denise comes to stand beside you, your gryphon child lands by her side and pipes in a high voice that she wants to come along as well. She is a cute version of Denise in miniature, another blue gryphon herm with a pretty face and a happy smile. She shares a hug with the both of you and flaps her wings in eager anticipation of an excursion into the city, then also rubs her taloned paws over Denise's maturing pregnancy.";
			if T >= 2:
				say "     Just moments after Denise comes to stand beside you, a pair of gryphlets land by her side. Your two children pipe in their high voices that they want to come along as well. They are a cute version of Denise in miniature, blue gryphon herms with pretty faces and happy smiles. All of you share a family hug, then the little ones flap their wings and bounce around in eager anticipation of an excursion into the city, then also rub their taloned paws over Denise's maturing pregnancy, happy about another sibling coming.";
		else if tempnum is 3: [in an 'absent birth' state - which shouldn't happen, as the player walking into the room or waiting in the room with Denise should have dealt with it]
			say "     ERROR-Denise-3S: You should not able able to smell her right now.";

to say dismissgryphoness:
	move Denise to Garden View;
	if player is not in Garden View: [regular dismiss]
		say "     Pulling Denise the gryphoness close, you give her another deep kiss, then send her off on her own. With a happy, 'See you later, my love,' she swings herself into the air, flying off with strong beats of her large feathered wings.";
	else: [dismissing her in the abbey, next to her nest]
		say "     Pulling Denise the gryphoness close, you give her another deep kiss, then tell her she should stay home for now. With a happy, 'See you later, my love,' she strides over to her nest, then climbs into the comfortable and warm refuge.";

to say gryphonessassault:
	let cc be ( libido of gryphoness / 4 );
	say "[one of]Your gryphon companion [if cc >= 2]and your gryphlets launch themselves[else if cc is 1]and your gryphlet launch themselves[else]launches herself[end if] at your attacker![or]Your eager gryphon ally [if cc >= 2]and your gryphlets pounce[else if cc is 1]and your gryphlet pounce[else]pounces[end if] on your foe![or]A soft song drifts through the melee, distracting your opponent![or]The sweet scent of your gryphon ally gives you the strength to land another hit![or]Taking advantage of your foes distraction, the herm [if cc >= 1]gryphons with you strike out with their[else]gryphon with you strikes out with her[end if] claws.[or]Your [if cc >= 1]allies manage[else]ally manages[end if] to grab onto your opponent, providing you with an opening![or]The gryphoness [if cc >= 2]and her children charge[else if cc is 1]and her child charge[else]charges[end if] into the melee to protect you, and your opponent seems so startled at her charge that they fall backwards.[or]Striking from above, your gryphon ally rakes your opponent with her leonine legs[if cc >= 2] while your gryphlets pelt them with rocks[else if cc is 1] while your gryphlet pelts them with rocks[end if].[or]Your opponent is distracted for a minute by a gryphon landing on their back from above[if cc >= 2] while your gryphlets cheer her on[else if cc is 1] while your gryphlet cheers her on[end if]![or]The gryphon with you slams at your opponent with her wings.[at random]";

instead of sniffing Gryphoness:
	if the remainder after dividing libido of gryphoness by 4 is 0:
		say "Denise smells like a herm gryphoness, aroused and in heat.";
	else if the remainder after dividing libido of gryphoness by 4 is 1:
		say "Denise smells like an aroused herm gryphoness.";
	else if the remainder after dividing libido of gryphoness by 4 is 2:
		say "Denise smells like a pregnant herm gryphoness.";
	else if the remainder after dividing libido of gryphoness by 4 is 3:
		say "ERROR-Denise-3S: You should not able able to smell her right now.";

An everyturn rule:
	if companion of player is Gryphoness and skipturnblocker is 0:
		now tempnum is the remainder after dividing libido of gryphoness by 4;
		if a random number between one and 20 < ( 6 - tempnum ) and lastfuck of gryphoness - turns >= 4:
			say "[sexwithgryphoness]";

to say sexwithgryphoness:
	[puts Hermaphrodite Gryphon as lead monster in case of impregnation]
	repeat with y running from 1 to number of filled rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		if name entry is "Hermaphrodite Gryphon":
			now monster is y;
			break;
	project Figure of BlueGryphon_icon;
	if lastfuck of gryphoness - turns < 4:
		say "You shouldn't pressure the gryphoness too much for it. Give her a short break.";
	else if bodyname of player is "Hermaphrodite Gryphon" or bodyname of player is "Feral Gryphon":
		if player is male:
			let T be a random number between one and five;
			if T is 1:
				say "     Your gryphoness companion sidles up to you and rubs her softly furred body up against yours teasingly. As her heat-filled scent fills your head, you realize that she is eager and ready for you to take her and make her yours. Grinning, you waste no time in wrapping the panting gryphoness in your arms, your tongues tangling in eager lust even as she rubs her crotch up against your own, her damp passage rubbing across the tip of your erect cock teasingly. Groaning as you realize just how much you both need this mating, you stop teasing her and eagerly sink yourself into her body, her soft passage feeling like heaven as it grips your cock as if it were made just for you.";
				say "     Breaking the kiss, Denise throws back her head and lets out a cry of pleasure as she struggles to stay upright even as you thrust into her again and again. Finally the gryphoness can't take the exquisite sensations any longer, and she collapses into your arms, shuddering with ecstasy as her powerful orgasm overtakes her. You cry out in pleasure as well as you fill her eager body with your seed, your knees going weak as the two of you collapse to the ground in a tangle of limbs, soon you are both kissing and rubbing up against each other teasingly on the ground as you try to recover from your amazing orgasms.";
				say "[deniseimpreg]";
			if T is 2:
				say "     Looking over at your gryphoness companion, you realize she has been acting more and more uncomfortable as time goes on. Deciding to move over to comfort her, you draw her into your arms, and she melts up against you happily. You stand there like that for several minutes together, before her taloned hand begins to rub over your erect cock teasingly, her quick recovery from her shyness making you grin as you move to lie her down on the ground, before covering her soft gryphon body with your own. She coos eagerly as you rub her soft breasts with your own taloned hands for a minute, getting her nice and wet and ready for you, before you finally sink your cock into her body.";
				say "     She pants eagerly as she clutches your shoulders with her talons, raising her hips up to meet you with every one of your thrusts, both of your breathing coming out in harsh gasps as you clutch each other tight. Soon both of your eager efforts are rewarded, as your orgasms crash over you both at the same time, your voices mingling in pleasure as you fill her with your seed. Afterwards the two of you enjoy holding each other tight for quite a time, feeling closer than ever, before you eventually both gather yourselves up, and head back out into the city.";
				say "[deniseimpreg]";
			if T is 3:
				say "     You are startled to hear the soft tones of your fellow gryphons song begin to sing out behind you, and you swing around to look, only to find yourself staring in amazement. Seeing she has your attention, Denise continues to rock her hips from side to side teasingly, even as she continues to sing the somewhat teasing notes of her current song. Your gaze is locked to her body as the singing gryphoness slowly gyrates to the music, her leonine paws not missing a beat even as she runs her soft talons down the curves of her body eagerly. As she approaches, you can feel your cock reacting eagerly, even as you realize you have started panting in lust at the delicious show your companion is putting on for you.";
				say "     Drawing closer, Denise swirls around several times, stroking her as she waves her tail around to offer you soft teasing glimpses of her feminine treasure, her hypnotic song weaving through your lust-filled mind as you find yourself moving forward almost eagerly. When you get within reach, she continues to sing even as she begins to rub her hands teasingly over your own gryphonic form, her wings brushing yours even as she rocks her hips suggestively at you. When her teasing touch begins to trace over your stiff cock, your restraint snaps as your mind empties of anything but your absolute need to have this wonderful vision of a gryphoness, and you pounce on her eagerly.";
				WaitLineBreak;
				say "     Her teasing song cuts off with a soft chuckle as you bear her down to the ground, growling and panting with need as you sink yourself into her body eagerly. The gryphoness underneath you grins in triumph as she clutches you closer, as you mate her hard and fast like a beast, your mind taking a back seat to the wonderful sensations of sinking into her feline pussy again and again. Denise groans, as you finally give her the mating she wanted so badly, her soft words begging you to go harder and faster, to breed her and fill her with your seed just like a proper gryphon mate would.";
				say "     Her words sink into your receptive lust fogged brain, and you do your best to comply happily, shooting your seed into her body as she cries out underneath you eagerly. You hardly take time to stop though, before you are moving over her again, your arousal returning with a fierce bestial need as she continues to stroke and tease your body. Eventually you manage to regain control of yourself, lying there on the ground next to your well-fucked gryphoness, you find feeling a little disconcerted at just how easily she managed to reduce you to little more than a sexual beast. Then again, as you recall the intense pleasure of your bestial matings together, you find that a large part of you almost can't wait until she does it again...";
				say "[deniseimpreg]";
				decrease humanity of player by 5;
			if T is 4:
				say "     Looking over at your increasingly lustful gryphon companion, you realize that she is staring back at you eagerly as well. You open your mouth to comment, only to have her shake her head slightly, before turning and dropping to all fours on the ground and looking back over her shoulder at you with a happy grin on her beak. The sight of her winking passage as her tail waves above her rear eagerly makes you pant in need as well, and glancing around you realize that it certainly wouldn't hurt anything to help your gryphon companion out with her own needs.";
				say "     Grinning eagerly, you quickly stalk over to her on your own leonine legs, your [cock of player] rod already ready and eager as you run your talons through the soft fur of her hips, making her shudder with desire. Reaching around her body, you pin her wings to her back as you lean over her, your taloned hands gripping her soft breasts eagerly as you rub your cock up against her damp pussy teasingly. She moans underneath you as your dominant positioning enhances her already strong submissive instincts, her own cock growing stiff as she pants and moans incoherently.";
				WaitLineBreak;
				say "     Deciding to reward her submission, you slowly sink your cock into her all too eager body, her pussy lips parting easily for you as she continues to moan helplessly, her lust fogged mind obviously unable to form coherent sentences, or even coherent thought under your pleasurable assault on her body. Your pleasure growing not only from the wonderful sensations of her body engulfing and massaging your cock so eagerly, but with the dominant joy of reducing your companion to little more than a slutty little pet underneath you as well. You are hardly able to restrain your building pleasure as you thrust into her eager body, your hands teasing her breasts eagerly, each little moan of submission you draw out from the slutty gryphoness underneath you a victory all its own, as your pleasure builds higher and higher.";
				say "     Eventually you can't take it any more, and you are soon spilling your seed into her needy body, every pulse of your cock sending more and more of your dominant cum into her body to lay claim to her heat-filled womb. Panting with exhaustion and a near overload of pleasure yourself, you pull out of her well-fucked body, Denise collapsing on the spot as she pants mindlessly for a while, even while you try to reclaim the shreds of your own scattered wits. Eventually you both manage to haul yourselves up to continue on exploring the city, although from the looks Denise keeps sending you, she seems more eager than ever to explore being your submissive little pet again soon...";
				say "[deniseimpreg]";
			if T is 5:
				say "     [one of]You gryphon companion edges closer and closer as the two of you wander down the streets of the city together, until finally she is right next to you before you realize it, rubbing up against you eagerly even as your body grows hot and needy in response.[or]The scent of your companions female heat washes over you, making you pant eagerly in desire, even as your talons begin to stroke your cock absently. Before you know it, you are crying out in pleasure, your seed spilling out over your talons, as you realize you have spent just spent several minutes masturbating and thinking about your hot gryphoness companion...[or]Stopping to take a break, Denise rubs her full breasts, before staring at you with a grin, the gryphoness coming over and offering you a refreshing drink of her milk right from the source. With her female scent filling your head with lustful thoughts, you are unable to refuse as you find yourself lapping and nibbling at her breasts eagerly, even as she moans in pleasure.[or]As you continue to explore, you are startled when your companion suddenly reaches out and pulls you into a small alcove, you start to ask why, only to moan as she begins to rub herself up against you eagerly, her cock rubbing up against your own as she rubs up against you teasingly. Unable to resist, you quickly give in to the urge to play with your lustful companion, and the two of you are soon panting and gasping in pleasure as you fuck each other up against the walls of the alcove, before eventually returning to your trip through the city, her soft fur covered thighs covered in your fertile seed, even as she rubs her well-fucked passage happily.[deniseimpreg][or]Pausing in your travels, you notice a small rock that will make a good spot to sit, and rest your feet for a minute, your companion obviously has other ideas, as she is soon on her knees between your legs, her flexible tongue licking over your cock, as she runs the edge of her flexible beak over it teasingly, causing you to moan in pleasure and run your talons through her feathers eagerly. Her expert tongue wrapping around your cock, even as her talons massage your balls lightly, eager for your tasty seed. Soon you are rewarding her efforts with an explosion of your fertile cream, which the happy gryphoness eagerly licks up before helping you to stand back up on your now even shakier legs a soft grin spreading across your lips at how eagerly Denise is fitting into the role of a gryphoness pet...[at random]";
		else:
			let T be a random number between one and five;
			if T is 1:
				say "     You find yourself panting with need as Denise begins to rub up against you teasingly, her talons roaming over your gryphon body as her stiff cock presses up against your belly. The sight of her eager readiness and the scent of her gryphonic heat is just too much for you to resist, and before you know it you are wrapping your legs around your fellow gryphon, and helping her sheath her cock in your body. You groan as you rest your head on her chest, even as your strong partner thrusts into your eager female gryphons body, each thrust making you happier and happier to just be a lovely little slutty gryphoness for such a handsome herm.";
				say "     All too soon the two of you are crying out in orgasm, and you can feel your body shuddering eagerly as Denise shoots her thick gryphon seed into your womb. After some time holding each other, you eventually disentangle yourself from the handsome herm gryphon, feeling much more submissive and needy, just like a proper gryphoness should be...[ovichance]";
			if T is 2:
				say "     You cry out in surprise, as you feel your gryphon wings pinned to your sides, only to moan in pleasure as the strong talons of your gryphon companion begin to rub and massage your chest, her hands teasing your nipples even as she rubs her beak against your neck teasingly. You can feel yourself panting in need as you lean forward slightly, the feel of her thick gryphon cock rubbing up against your rear making you even more eager than ever to feel her stiff rod inside you. You can't help but cry out eagerly as she slips herself into your eager passage, her barbs stimulating your heat-filled passage, even as her knot begins to push its way into you.";
				say "     You are unable to resist as your body clutches her gryphon cock inside you eagerly, her cock designed to fit your form perfectly as her knot ties the two of you together. Soon you are moaning wantonly in her arms as she fucks you from behind, the sounds of your bestial rutting echoing through the city around you as you both cry out in orgasm. Eventually her knot shrinks and she pulls herself out of your body, and you find yourself feeling somewhat happy she took the dominant role and bred you properly as you rub your well-fucked body happily.[ovichance]";
			if T is 3:
				say "     You moan as you can feel your body heat up, and your pussy clench in need, the presence of the virile herm gryphon nearby making you feel incredibly horny and slutty as you rub your talons over your heat-filled body. Denise notices your predicament almost immediately, and you can see her amusement as she struts over towards you, though as you look at her, your eyes are continually drawn to the thick gryphon cock resting between her leonine legs. Reaching you she wastes no time in moving around you and softly pushing you down onto all fours, realizing what she has in mind, you can feel yourself growing even wetter, as you lift your rear up for her. The handsome gryphon stud wastes no time taking your eager invitation as she fills your needy body up with her wonderful rod, the feel of her cock splitting you open making you cry out in pleasure.";
				say "     Soon you are panting and begging for her to breed you like an animal, your talons digging into the ground in pleasure with each thrust of her thick cock into your tight passage. Panting and moaning just as eagerly as you are, it doesn't take long for the gryphon stud behind you to give you what your body so urgently needs, and you cry out in pleasure as Denise fills your heat-filled womb with her seed. Eventually she softens and pulls out of your body, leaving you there kneeling on all fours on the ground with your head lowered as you try to recover your wits, something about the situation and your submissive positioning making you feel happy and content like a good little gryphon breeder should be...[ovichance]";
			if T is 4:
				say "     The handsome gryphon stud following you rubs up against you teasingly, making you moan with need as his presence and musk washes over you, seeing your bodies eager instinctual response to her touch, Denise grins eagerly as she pulls you in for a deep kiss, her soft furred chest pressing up against your own, even as her thick erect cock presses up against your inner thighs teasingly. Looking down at her wonderful form, you realize just how needy your body has been growing from the scents of the city and the needs of your own sensitive new hyper-sexualized body. You can feel yourself grinning as well as you realize just how lucky you are to have such a handsome gryphon around to help you sate your growing needs.";
				say "     Wrapping your arms around Denise tightly, the other gryphon lets out a startled squawk as you sit down and pull her down on top of you, your leonine legs rubbing up against her own soft fur teasingly as you reach one of your talons down to stroke and tease at her magnificent feline cock. Unable to mistake your obvious invitation, Denise eagerly presses herself into you, both of you groaning in pleasure as her cock fills you completely. Soon you are writhing underneath her eagerly as she thrusts into you with ever increasing vigor, until finally both of your efforts are rewarded with mind-shattering ecstasy as she fills your body with her lovely seed. Moaning happily as you clutch your lovely mate to you tightly, you realize happily that your lustful actions are likely bringing you one step closer to being a proper gryphon breeder for your new handsome lover... and you already can't wait until your next breeding...[ovichance]";
			if T is 5:
				say "     [one of]You gryphon companion edges closer and closer as the two of you wander down the streets of the city together, until finally she is right next to you before you realize it, rubbing up against you eagerly even as your body grows hot and needy in response.[or]The scent of your companion's potent musk washes over you, making you pant eagerly in desire, even as your talons begin to wander over your body eagerly. Before you know it, you have spent several minutes just rubbing yourself and staring off into the distance, your mind empty of anything but pleasure and potent musk...[or]Stopping to take a break, Denise rubs her full breasts, before staring at you with a grin, the gryphoness coming over and offering you a refreshing drink of her milk right from the source. With her musk filling your head with lustful thoughts, you are unable to refuse as you find yourself lapping and nibbling at her breasts eagerly, even as she moans in pleasure.[or]As you continue to explore, you are startled when your companion suddenly reaches out and pulls you into a small alcove, you start to ask why, only to moan as she begins to rub herself up against you eagerly, her cock probing your needy entrance teasingly. Unable to resist, the two of you are soon panting and gasping in pleasure as you fuck each other up against the walls of the alcove, before eventually returning to your trip through the city, her soft juices dripping down your thighs and making you feel like such a proper happy slut with every step.[ovichance][or]Pausing in your travels, you notice a small rock that will make a good spot to sit, and rest your feet for a minute, your companion obviously has other ideas, as she is soon on her knees between your legs, her flexible tongue licking your pussy eagerly as you moan and run your talons through her feathers eagerly. Her expert tongue teases all your most sensitive inner spots, and soon you are rewarding her efforts with an explosion of your hot juices, which the happy gryphoness eagerly licks up before helping you to stand back up on your now even shakier legs.[at random]";
		infect "Hermaphrodite Gryphon";
		now lastfuck of gryphoness is turns;
	else:
		say "     [one of]The scent of a gryphon in heat drifts over you, making you even hornier than before.[or]The gryphoness comes up and wraps her arms around you and pulls you close to her, and you find yourself changing.[or]Denise lands near you, and the two of you take a few minutes to hug and grope each other, before you have to continue your trek through the city.[or]Denise lands nearby, and the gryphoness offers you a small drink of milk she obviously managed to find somewhere, with her looking at you so eagerly, you are unable to refuse and drink the surprisingly tasty milk while she watches happily.[or]Your gryphon companion lands nearby and is obviously to excited to think straight as she begins to rub her body up against you needily![or]Landing nearby, Denise is rubbing herself and moaning in need, her eyes fixed on you with a desperate need. You are unable to resist as the horny gryphoness pounces you eagerly, and you quickly lose all desire to resist as well, as the two of you begin to mate with ever increasing passion. Eventually you both manage to recover somewhat, and Denise kisses you in happy thanks as she takes off to watch over you from the skies again.[or]'Are you sure you don't want to be a handsome gryphon for me?' Denise says teasingly as she rubs herself up against your body.[at random]";
		infect "Hermaphrodite Gryphon";
		now lastfuck of gryphoness is turns;


Section 2 - Pregnant Gryphon

to say deniseimpreg:
	if the remainder after dividing libido of gryphoness by 4 is 0:
		if a random chance of 1 in 3 succeeds:
			say "Denise rubs her belly, enjoying the warmth of your cum inside her.";
			increase libido of gryphoness by 1;
			now lust of gryphoness is 25;

an everyturn rule:
	now tempnum is the remainder after dividing libido of gryphoness by 4;
	let T be ( libido of gryphoness / 4 );
	if tempnum is 1 or tempnum is 2: [early pregnancy or visible pregnancy]
		decrease lust of gryphoness by 1;       [pregnancy countdown]
		if lust of gryphoness is 0: [time for the birth]
			increase libido of gryphoness by 1;   [increase to tempnum 3 -> birth message for next summon primed]
			if companion of player is gryphoness: [Denise is along as a pet]
				say "     Looking around, you notice that Denise had slipped away while you were distracted with something. You wait for a little while and she returns, but ";
				if T is 0:
					say "not alone. She is cradling a young gryphlet in her arms, nursing her from her bosom. Her pregnant belly is already going down, her child delivered while she had slipped away. You both stroke and hug your new child, looking her over. You feel a swell of happiness and love for this unusual child. Like her mother, the young herm has blue feathers and tawny, leonine fur. She grows quickly and is soon walking alongside her mother, a cute, younger version of Denise in miniature.";
					increase weapon damage of gryphoness by 1;
				if T is 1:
					say "with two children now. She is cradling the younger gryphlet in her arms, nursing her from her bosom. Her pregnant belly is already going down, her child delivered while she had slipped away. You both stroke and hug your new child, looking her over. You feel a swell of happiness and love for this new child. Like her mother and sibling, the young herm has blue feathers and tawny, leonine fur. She grows quickly and is soon walking alongside her mother, a cute, younger version of Denise in miniature.";
					increase weapon damage of gryphoness by 1;
				if T is 2:
					say "with a third child now. She is cradling the youngest gryphlet in her arms, nursing her from her bosom. Her pregnant belly is already going down, her child delivered while she had slipped away. You both stroke and hug your new child, looking her over. You feel a swell of happiness and love for this new child. Like her mother and siblings, the young herm has blue feathers and tawny, leonine fur. She grows quickly and is soon walking alongside her mother, a cute, younger version of Denise in miniature. The eldest sibling, now almost fully adult, snugs you all tightly and nuzzles before heading off into the city to seek her fortune and a loving mate of her own.";
					increase dexterity of gryphoness by 1;
				if T >= 3:
					say "with another new child. She is cradling the youngest gryphlet in her arms, nursing her from her bosom. Her pregnant belly is already going down, her child delivered while she had slipped away. You both stroke and hug your new child, looking her over. You feel a swell of happiness and love for this new child. Like her mother and siblings, the young herm has blue feathers and tawny, leonine fur. She grows quickly and is soon walking alongside her mother, a cute, younger version of Denise in miniature. As before, the eldest remaining sibling, now almost fully adult, snugs you all tightly and nuzzles before heading off into the city to seek her fortune and a loving mate of her own.";
				increase libido of gryphoness by 1; [increase to tempnum 4 = 0 -> no birth message for next summon since player saw the kid already]
				now GryphonessKnowpreg is 0;    [reset, pregnancy over]
			else if player is in Garden View and Denise is in Garden View: [player and Denise are in the library]
				say "     Looking around, you notice that Denise is breathing pretty hard, a hand laying on her swollen stomach. Then she meets your gaze with an intense look and gasps, 'It's time - I can feel the egg coming!' Fortunately, she isn't far from her nest, so it is easy to lead her back to it and allow her to lay on the softer cushions with her wings spread, anticipating the egg's arrival. Thankfully, laying the egg isn't too hard on her transformed physique, as Denise's folds are quite... accommodating for something with large girth coming out - or going in. The effort still clearly tires her out, puffing and panting in time with the throbbing of her womb as her body prepares to release the fully-developed egg, but she doesn't look like she's in any serious pain. After about ten minutes of working up to it, the egg is eventually crowning and slides free of her stretched pussy to land on one of the cushions of her nest.";
				say "     The moment the egg is clear of her body, it starts to rock and shake, a faint tapping coming from within. Denise croons, bending her own head down to tap at the eggshell from the other side with her beak. Soon enough cracks appear and widen before the eggshell finally splits, spilling a small gryphlet into Denise's arms, still damp with egg fluids. Humming happily, your sexy gryphoness cradles the newborn to her breast to nurse, the chick gripping her nipple with a still soft and flexible beak. Fluffy down falls to the floor as the little blue gryphon suckles greedily, growing and gaining an early-teen body, complete with bright blue feathers and golden fur in a matter of moments. At last, the child pulls off the nipple and Denise gives her a soft pat on the head before setting her down.";
				if T is 0:
					LineBreak;
					say "     The cute, younger version of Denise in miniature that is your first child with the sexy gryphoness settles into the nest with her mother, eager to learn everything she can from her. Your little gryphlet is even already talking just minutes after her own birth, giving you a good feeling about having brought a smart and so very cute being into this world. Seems like they'll stay together for some time now.";
					increase weapon damage of gryphoness by 1;
				if T is 1:
					LineBreak;
					say "     The cute, younger version of Denise in miniature that is your second child with the sexy gryphoness settles into the nest with her mother, eager to learn everything she can from her and to play with the older sibling. Your little gryphlet is even already talking just minutes after her own birth, giving you a good feeling about having brought a smart and so very cute being into this world. Seems like Denise will have two little nest-mates for some time now.";
					increase weapon damage of gryphoness by 1;
				if T is 2:
					LineBreak;
					say "     The cute, younger version of Denise in miniature that is yet another child you fathered with the sexy gryphoness settles into the nest with her mother, eager to learn everything she can from her and to play with the two older siblings in the nest. Your little gryphlet is even already talking just minutes after her own birth, giving you a good feeling about having brought a smart and so very cute being into this world. Seems like Denise will have three little nest-mates for some time now - or not, as the eldest sibling, by now almost fully grown to adulthood, decides to use the moment to announce that she's moving out. With a snug and nuzzle for all her gathered family members, the gryphon heads off into the city, using an open window to launch herself into the air. Denise calls after her, wishing her all the best in finding her fortune and a loving mate of her own.";
					increase dexterity of gryphoness by 1;
				if T >= 3:
					LineBreak;
					say "     The cute, younger version of Denise in miniature that is yet another child you fathered with the sexy gryphoness settles into the nest with her mother, eager to learn everything she can from her and to play with the two older siblings in the nest. Your little gryphlet is even already talking just minutes after her own birth, giving you a good feeling about having brought a smart and so very cute being into this world. Seems like Denise will have three little nest-mates for some time now - or not, as the eldest sibling, by now almost fully grown to adulthood, decides to use the moment to announce that she's moving out. With a snuggle and nuzzle for all her gathered family members, the gryphon heads off into the city, using an open window to launch herself into the air. Denise calls after her, wishing her all the best in finding her fortune and a loving mate of her own.";
					say "     As her offspring flies out of view, Denise steps up next to you and rubs her feathered cheek against the side of your head. 'I know I can't keep them forever, but it always seems strange to say goodbye to my little gryphlets. It's so much nicer to be in a nest if there's a whole family, you know.' She looks out over the city again, then back to the small gryphons still in her nest, before adding, 'How about... we make another egg? I love giving you all the children you'll ever want.'";
				increase libido of gryphoness by 1; [increase to tempnum 4 = 0 -> no birth message for next summon since player saw the kid already]
				now GryphonessKnowpreg is 0;   [reset, pregnancy over]
			else: [player isn't present for her egg-birth -> tempnum stays 3 -> primed for birth message on next summon]
				say "You find your mind wandering to Denise, thinking about her and [if GryphonessKnowpreg is 1]her pregnancy[else]missing her for some reason[end if]. Perhaps you should check on her.";
			increase score by 5;
		else if lust of gryphoness is 16: [belly shows after 1 day]
			if companion of player is gryphoness and GryphonessKnowpreg is 0:
				say "     Looking over at Denise, you notice that her belly's starting to swell rounder. She smiles happily at you, running her paws over her growing pregnancy. It seems you successfully knocked her up recently.";
				now GryphonessKnowpreg is 1;
			else if player is in Garden View and Denise is in Garden View and GryphonessKnowpreg is 0:
				say "     Looking over at Denise, you notice that her belly's starting to swell rounder. She smiles happily at you, running her paws over her growing pregnancy. It seems you successfully knocked her up recently.";
				now GryphonessKnowpreg is 1;
			increase libido of gryphoness by 1; [tempnum 1 increased to tempnum 2 for visible pregnancy]


Section 3 - Events

Table of GameEventIDs (continued)
Object	Name
Lonely Gryphoness	"Lonely Gryphoness"

Lonely Gryphoness is a situation.
The sarea of Lonely Gryphoness is "Outside".
when play begins:
	add Lonely Gryphoness to badspots of hermaphrodite;
	add Lonely Gryphoness to badspots of furry;

gryphoncomforted is a number that varies.

Instead of resolving Lonely Gryphoness:
	say "     Traveling through the deserted streets, you hear a strange and rather sad song echoing through the empty streets, its strange beautiful notes making you feel somewhat sad and lonely yourself. Looking around for the source, you think the sound is coming from the top of a nearby apartment building. You are torn between the idea of climbing up the fire escape to see who is making the noise or just standing here and basking in the music.";
	say "     [bold type]Do you climb up to see who is singing?[roman type]";
	if player consents:
		LineBreak;
		project Figure of BlueGryphon_icon;
		say "     Carefully climbing up the fire escape, you find yourself enjoying the strange, haunting song more and more, and you grow increasingly curious as to just who, or what, is creating the music. Eventually reaching the top, you pull yourself up onto the roof, where you are surprised to see one of those blue furred gryphons is staring out over the city with her back to you, soft sweet notes spilling out of her beak as she stares out over the changed city.";
		say "     The sight of one of the changed gryphons singing such a lonely song is rather startling, and you almost can't help but move forward for a closer look. The song cuts off mid note as you slide forward, as the gryphon apparently notices you and whirls around in surprise. ";
		if bodyname of player is "Hermaphrodite Gryphon":
			say "Looking down at your own gryphon-like body, the singing gryphon seems almost embarrassed for a minute, though when you open your mouth to speak, she darts towards you instead. Blinking in anticipation of a fight, you find her arms going around you in a soft hug, and hear her sweet voice whisper 'You're very cute,' in your ear. Before you can actually respond to this, the gryphon lets you go and turns and launches herself from the rooftop, shooting occasional wistful glances back at you as [bold type]she vanishes in the direction of the beach[roman type].";
			infect "Hermaphrodite Gryphon";
			now gryphoncomforted is 1;
			now Resolution of Lonely Gryphoness is 1; [met Denise as a gryphon]
			now Lonely Gryphoness is resolved;
			now Gryphoness nest is active;
		else:
			say "The strange gryphon's eyes seem to fill up with panic as she stares at you, slowly backing away towards the edge of the roof and safety, obviously worried about what you might do. Do you try to convince her you mean no harm?";
			if player consents:
				LineBreak;
				say "     As the gryphon backs away in panic, her eyes wide even as she backs away, you lower your weapon and try to convince her you mean her no harm.";
				let bonus be (( the Charisma of the player minus 10 ) divided by 2);
				let diceroll be a random number from 1 to 20;
				say "You roll 1d20([diceroll])+[bonus]= [special-style-1][diceroll + bonus][roman type] vs [special-style-2]14[roman type] (Charisma Check):[line break]";
				increase diceroll by bonus;
				if diceroll > 14:
					say "     The gryphon stops to listen for a minute, as you try to convince her of your peaceful intentions. While she doesn't actually say anything in response, you take the willingness to listen as a good sign and explain that you were only trying to find the source of that strangely beautiful music you heard. Hearing this, you can see the gryphon's beak pulling up into a small smile, 'You really liked it?' you can hear her say in a soft tone, her sweet voice filling your ears even as she seems to flush in embarrassment.";
					say "     When you nod, the gryphon seems even more flustered, seeming uncomfortable with your praise, and beginning to back up towards the edge of the rooftop again. 'You seem kind of nice...' she says as she turns away from you, before looking back over her shoulder at you as she spreads her feathered wings. 'Maybe I can sing again for you sometime... I think I might like that...' the gryphon says as she launches herself out into the city, leaving you to stare after her as [bold type]she vanishes in the direction of the beach[roman type], wondering just why this gryphon is so different from all the others you have encountered so far.";
					now gryphoncomforted is 1;
					now Resolution of Lonely Gryphoness is 2; [met Denise with charisma check]
					now Lonely Gryphoness is resolved;
					now Gryphoness nest is active;
				else:
					LineBreak;
					say "     Obviously not believing you, the gryphon wastes no time in waiting to hear what you have to say and launches herself into the sky to fly away.";
			else:
				say "     You just watch as the gryphon turns and hurls themselves off the rooftops, wondering idly just why this particular one was acting so much differently than the rest. Shrugging you begin the long climb down from the rooftop, and make your way back out into the city.";
	else:
		say "     Deciding to just stop and enjoy the beautiful music while you can, you pause for a while in the street as the sweet notes wash over you. The sad song causing you to blink back tears more than once as the soft notes wash over you. Eventually the music stops rather abruptly, and you wonder just what might have happened to the singer that would cause them to break off mid note. Sighing, you figure you probably won't be hearing that particular song again, as you continue on out into the city...";
		now Resolution of Lonely Gryphoness is 3; [Denise was taken by something]
		now Lonely Gryphoness is resolved;

Table of GameEventIDs (continued)
Object	Name
Gryphoness nest	"Gryphoness nest"

Gryphoness nest is a situation. Gryphoness nest is inactive.
The sarea of Gryphoness nest is "Beach".
when play begins:
	add Gryphoness nest to badspots of hermaphrodite;
	add Gryphoness nest to badspots of furry;

Instead of resolving Gryphoness nest:
	project Figure of BlueGryphon_icon;
	if gryphoncomforted is 1:
		say "     Wandering along the beach, you hear a few haunting notes drifting over the waves, and recalling that strange gryphon from earlier, hurry down the beach to see if she is more willing to stay and talk this time. After a short distance, you round one of the dunes to see what is likely the same gryphon, idly tossing small stones in the waves as they lap up against the beach soothingly. Looking down, you can't help but wonder just what this particular Hermaphrodite Gryphon is thinking, even as she hums and sings softly and stares out over the water. Deciding to approach carefully so as not to startle her this time, you carefully make a bit of noise even as you slowly begin crossing the dunes to where she is sitting.";
		say "     The gryphon stops singing again and scrambles up as you approach, but seems to relax slightly when she sees it is you, though she does back up slightly, the surf beginning to wash at her leonine hindpaws as she stares at you curiously. You are almost within easy reach of her, and are opening your mouth to begin to say something, only to stare as you see several beasts rising up from the water right behind the gryphon, reaching for her. You try shouting out a warning, but with a startled cry the gryphoness is still jumped by the changed aquatic beasts...";
		say "     [bold type]Do you try to intervene?[roman type][line break]";
		if player consents:
			say "     Diving into the surf recklessly, you quickly manage to distract the sea beasts from the gryphon they are trying to pin down, allowing her to slip out of their grip and stagger back towards the beach. Unfortunately you distract them by providing them with a much more tempting target for their lusts, yourself!";
			fight;
			if fightoutcome >= 10 and fightoutcome <= 19:
				fight;
				if fightoutcome >= 10 and fightoutcome <= 19: [won]
					say "     Recovering from the fight you stagger back out onto the beach, only to find yourself assaulted by a blue furred gryphon instead. You find yourself grinning slightly as the obviously shy gryphon wraps you in her arms, her softly furred body pressing up against your own even as she rubs her gryphon like beak against your [skin of player] cheek. The gryphon releases you after a minute, seeming slightly embarrassed at her actions, as she shifts her feline paws around in the sand nervously. 'Um, thank you for your help,' she says in her soft musical voice as she looks at you curiously, 'It was really nice of you to actually help me like that, since everything has changed... well especially since I've changed, most people have been either afraid of or attacked me on sight,' she says with a soft sigh.";
					say "     'Um, my name is, well it was Denise. I'm not really sure that fits so much now,' the gryphon says as she gestures to where her half erect knotted black gryphon cock is perched above her leonine female entrance. She seems about to say something else, when you both hear something splash in the surf behind you, and she jumps instead, her wings flapping in panic as she looks around. 'Um, maybe this isn't the best place to talk, I have a small alcove up near the beach cliffs where I am staying if you want to stop by and talk sometime,' Denise says as she bunches her hindquarters before leaping into the air. 'I think I would really like having you visit...' you can hear her say, before she turns and flies off, her leonine tail swaying behind her and leaving you with a lot to think about as you continue your journey along the beach.";
				now Resolution of Gryphoness nest is 1; [won]
				now gryphoncomforted is 2;
			if fightoutcome >= 20 and fightoutcome <= 29: [lost]
				say "     Sputtering as you drag yourself back out onto the beach after your defeat, you sigh and collapse onto the sand for a minute. After you have recovered slightly, you remember the gryphon they grabbed, and look around to see what happened to her, sadly after looking around for a bit, you realize the beach is completely empty. Sighing you try to think back, and seem to recall seeing a glimpse of her flying off while you were being helplessly abused by the sea creatures, quite probably giving up on ever seeing you again. Picking yourself up, you shrug and continue along the beach, realizing that there is a good chance if you keep looking you will encounter the strange gryphon again soon. Though hopefully she won't be as startled next time...";
				now Resolution of Gryphoness nest is 2; [lost]
			else if fightoutcome >= 30: [fled]
				say "     Working to get the creature's attention even as you evade it, you do your best to keep its focus on you, drawing it further and further from the gryphoness before finally losing it and doubling back. By the time you make it back there, it seems she flew off while you were making your own escape. Picking yourself up, you shrug and continue along the beach, realizing that there is a good chance if you keep looking you will encounter the strange gryphon again soon. Though hopefully she won't be as startled next time...";
				now Resolution of Gryphoness nest is 3; [fled]
		else:
			say "     You hesitate for a minute, trying to decide if you should risk jumping into the water to try to save the singing gryphon, and possibly ending up sharing whatever fate the beasts have for her. Sadly your hesitation takes the decision out of your hands, as with several splashes, both the beasts and the strange gryphoness have vanished. Scanning the waters, you realize sadly that you will likely not be seeing that particular gryphon again in any recognizable form, or hearing her sing anymore. Sighing you continue along your way down the beach, wondering what else could go wrong today.";
			now Resolution of Gryphoness nest is 4; [Denise lost]
			now Gryphoness nest is resolved;
	else if gryphoncomforted is 2:
		[puts Hermaphrodite Gryphon as lead monster in case of impregnation]
		repeat with y running from 1 to number of filled rows in Table of Random Critters:
			choose row y in Table of Random Critters;
			if name entry is "Hermaphrodite Gryphon":
				now monster is y;
				break;
		say "     Traveling along the beach, you spot the cliffs in the distance where Denise said she was staying, feeling somewhat curious you let your feet wander that way to see if the singing gryphoness is home right now. Wandering along the sands underneath the cliff, you find yourself admiring the serene scenery of the area, the soft sounds of the waves lapping against the sand peacefully making you feel fairly relaxed as you stroll along. Your peaceful moment is broken by a soft whistle, and you look up to realize you almost walked past a small alcove in the rock of the cliffs about ten to fifteen feet above you.";
		say "     You feel a smile tugging at your face as you see a rather familiar looking blue gryphon waving at you from the alcove, looking around you spot a rather rough path that would lead you up to her small cliff abode. After some small amount of struggling, you manage to maneuver your body up the rough path, to step into the small little cave, only to be enveloped in the arms of a happy gryphoness. 'I didn't know if you would actually come!' Denise says happily, before letting you go and backing up into the small cave.";
		WaitLineBreak;
		say "     Looking around the small cave, you find that it is actually stuffed with a strange variety of items, small piles of books, anime figurines, and CDs, stacked next to a pile of band posters. At least half of the small alcove however is taken up with a small pile of tattered cushions, that seem to make up the gryphons bed. Following the gryphon inside, you find that the two of you nearly fill up the small space, bumping into each other slightly, as you move around.";
		say "     'Um just have a seat anywhere,' Denise says as she looks around at the small mess of a cave, before sighing and plopping down on the cushions herself, seeming slightly uncomfortable as you shift around until you are sprawled across the cushions next to her. Noticing she seems rather uncomfortable around you still, you ask her about herself and how she ended up like she currently is as a way to break the ice.";
		LineBreak;
		let bonus be (( the Charisma of the player minus 10 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus]= [special-style-1][diceroll + bonus][roman type] vs [special-style-2]14[roman type] (Charisma Check):[line break]";
		increase diceroll by bonus;
		if diceroll > 14: [charisma check success]
			if bodyname of player is "Hermaphrodite Gryphon":
				say "     'Oh well, since you are interested...' Denise says, as she almost unconsciously rubs her gryphonic body up against your own gryphon-like form. 'Well you see, just a little while ago I and most of the rest of the people in my apartment complex found a container of milk out on our doorstep, with a note saying it was from the apartment manager,' she says with a soft sigh as she rubs her breasts absently. 'I'm sure you know what kind of milk it was, and when I put some in my cereal that morning... well... I spent the next hour in the shower masturbating... and changing,' Denise says with embarrassment, even as her cock stiffens and the scent of her increased arousal washes over you.";
				say "     'I managed to get a hold of myself by the time the knock on the door came, and when I looked outside there was a gryphon just like me standing there, of course I figured they had just changed too when I opened the door.' She sighs as she wraps her arms around you and snuggles closer, seeming to take comfort from your presence as she continues. 'As I'm sure you know, he was a sexy, handsome... lovely looking... gryphon...' Denise says as she begins to pant a little, before blinking and looking at you. 'Not as handsome as you are though... um... sorry,' the gryphoness says as she shifts uncomfortably.";
				WaitLineBreak;
				say "     You can feel a grin spreading across your face as you put your arm around your fellow gryphon and draw her in closer, Denise seeming to stiffen for a minute, before relaxing even more as she snuggles up against you again. 'Well he told me he was there to collect the new submissive breeders, since apparently that's what the milk was supposed to make. And tried to pounce on me to finish my mental changes...' she says with a sigh as she leans against you, obviously becoming more relaxed by the minute as she does so.";
				if player is male:
					say "     'Of course I darted past him and well, in my rush to get away I ended up jumping off the balcony in a panic,' Denise says with a soft sigh as she rubs her taloned hands over your chest absently, making you grin as you stroke your own talons through the increasingly aroused gryphons feathers. 'Course I nearly crashed before I figured out the wings, I was actually kind of expecting to hit the ground, but I just wanted to get away from him so badly,' Denise says as she nuzzles you softly.";
					WaitLineBreak;
					say "     'I didn't want to be his little slutty breeder gryphon right then... or any gryphon's... until I met you...' she says in a happier tone, before seeming to realize just what she said. 'Um I mean... well, you make me feel... so...' she trails off for a minute, seeming to think even as you continue to stroke her soft body with your talons teasingly, the gryphoness almost purring under your touch as she tries to gather her thoughts. 'I think, actually, I wouldn't mind being your pet, I mean I flew off into the city after that, but... it's been so lonely...' she says slowly, her own cock erect and her pussy damp, even as she lowers her gaze down to your own erect [cock of player] cock.";
					say "     You can feel yourself grinning as you realize the effect your body is having on the other gryphon, your body growing more excited by the minute as she presses herself up against you. 'I wanted to resist but... it doesn't really seem so bad now... as long as I can be yours... and then I wouldn't be lonely anymore...' Denise says absently, as her talon reaches down to trace over the tip of your cock teasingly. 'Please... will you finish it? Fuck... fuck me and make me a real gryphon pet. I know the other gryphons want to... but... I want it to be you...' she says with a moan as she rubs her feline hindlegs together absently. The scent of a gryphon in heat fills the room as she looks up at you eagerly, her hand still stroking your cock absently...";
					WaitLineBreak;
					if cockname of player is "Hermaphrodite Gryphon":
						say "     Your erect cock easily makes the decision for you, its soft barbs teased by her talon tips, even as she reaches down to stroke over its swelling knot teasingly. Wasting little time on foreplay given how aroused you are in the small space, you slowly push Denise backwards onto the cushions, her tongue hanging out of the side of her beak as she pants absently while you move between her legs. She moans as you fondle her breasts with your taloned hands teasingly, your mind already imagining them swelling larger and full of milk like a good little gryphoness. Your barbed cock rubs up against her already slick passage, before sinking into her body just like it was made to do, causing her to moan and wrap her arms around you tightly.";
						say "     Grinning you push yourself fully into her, your knot swelling larger as you begin to rock your leonine hind legs up against her own, making her moan and pant in need as she rubs her own feline legs up against you. You can feel your barbs rubbing her insides teasingly even as your knot swells up inside her, becoming harder and harder to pull out with every thrust, her own cock bobbing stiffly and thrusting against you with each thrust of your hips. Finally you can feel yourself lock inside her body, your knot fully inflated as she cries out in pleasure, making you groan eagerly as you rock yourself up against her.";
						WaitLineBreak;
						say "     Her wings wrap around you even as your wings tangle with hers as you both moan eagerly in pleasure, Denise orgasming first, as she shoots her load over her soft furred belly, and her passage shuddering around your cock as it desperately tries to milk it of its fertile gryphonic seed. Your cock responds eagerly, making you groan as your world explodes in pleasure, even as your seed shoots into her womb, your barbs ensuring her body is ready for it, even as your thick knot locks every bit of your sperm inside her body. 'Oh god yes, I can feel it inside me,' Denise moans dazedly, 'It feels so nice and warm inside me, makes me feel so good...'";
						say "     She pants as she clutches you tightly. 'Thank you so much, it feels so good to be a gryphon breeder... I never knew how good it could feel...' she says as she kisses your cheek with her flexible tongue, and rubs her soft furred legs against your body again, causing your cock to begin to stiffen inside her again. 'Please, breed me again... I need it...' She moans as she rubs against your body eagerly, making you grin as you begin to move inside her and do just that.";
						WaitLineBreak;
						say "     Eventually the two of you recover from several long hours of lovemaking, and you realize that Denise seems less interested in the human trappings she had gathered in her cave, and more interested in rubbing herself up against you. You smile as you realize how close she must have been to giving in to her feral gryphon instincts anyways, and feel somewhat lucky you were the one who got to finish the job and make her yours. When you move to leave the small alcove eventually, Denise asks if she can come with you and help you, eagerly offering to do whatever you want if you let her come.";
						say "     Seeing no reason to deny such an earnest request, you nod and she hugs you again happily, her breasts already beginning to leak a little milk like a proper herm gryphons should as rubs her body up against yours. Smiling she teaches you a few notes of the song she was singing, so that no matter where she is in the city, you can always call her right to your side, and she leaves you to head out down the beach back to the city, while she cleans up the alcove and makes some more room in there for extra cushions for a proper nest, and gets rid of some of the unneeded items from her old life.";
						LineBreak;
						now Gryphoness is tamed;
						add "Tamed" to Traits of Gryphoness;
						move Denise to Garden View;
						now gryphoncomforted is 3;
						infect "Hermaphrodite Gryphon";
						say "(The gryphoness is now tamed! You can make it your active pet by typing [bold type][link]pet gryphoness[end link][roman type]and initiate sex with her while active by typing [bold type][link]fuck gryphoness[end link][roman type]. You can see all the pets you have tamed with the [bold type][link]pet[end link][roman type] command. Pets will lower the XP you gain from battle, but can gain levels themselves to be more useful in a scrap. Want to get rid of a pet? Use [bold type][link]pet dismiss[end link][roman type], or just [bold type][link]dismiss[end link][roman type])";
						now Resolution of Gryphoness nest is 6; [male gryphon player with gryphon cock recruited her]
						now Gryphoness nest is resolved;
						follow the turnpass rule;
					else:
						say "     Her eager teasing of your cock, and her begging are too much for you to resist, and almost before you can realize what you are doing, you are clutching the female gryphoness close. She moans in need as you pull her close, turning her face down on the cushions as you pin her wings down underneath your weight. Denise grips the cushions tightly as her leonine tail moves eagerly to the side, letting your [cock of player] cock rub up against her eager passage, your own body almost as eager for this as hers obviously is, you waste no time sheathing yourself in her damp passage.";
						say "     Her talons rip into the cushions as she lets out a low needy moan at the feel of your cock splitting her open, and you grip her body even tighter as you move over her eagerly, your wings flapping behind you slightly even as you rock your leonine hindquarters up against the gryphoness's own lion like lower body. You cry out eagerly as she shifts and pants underneath you, finally giving in to the needy instincts she was denying as she pushes back up against your body and begs for you to fill her with your seed.";
						WaitLineBreak;
						say "     You waste no time in giving the submissive gryphoness the treat she so obviously wants, your cries of pleasure echoing around the small alcove as both orgasm eagerly together. Your cock spurting its seed into her eager body even as her own cock spills its seed on the soft cushions underneath you both. Sighing you unclench your talons from where they were beginning to rip into the cushions as you pull yourself off of her, and Denise moans as she lies there and continues to knead the cushions with her talons for several minutes longer, her ass waving in the air slightly even as a few drops of your seed run down the soft fur of her inner thighs.";
						say "     Eventually you both recover enough to sit up again, Denise smiling at you eagerly as she thanks you for your help in making her understand just how much better being a gryphon is than being just another human. She hugs you eagerly, and the two of you sit there and talk for a bit longer about how much happier she will be as a gryphon, and she teaches you a bit of her favorite song. When you finally get up to leave, Denise asks tearfully if she can come with you, not ready to go back to her lonely lifestyle now that she has found companionship. She brightens up when you nod and tell her she can come along with you. She flies off to clean up and get ready, but lets you know eagerly that all you need to do is sing out a few notes of her song and she will find you.";
						LineBreak;
						now Gryphoness is tamed;
						add "Tamed" to Traits of Gryphoness;
						move Denise to Garden View;
						now gryphoncomforted is 3;
						infect "Hermaphrodite Gryphon";
						say "(The gryphoness is now tamed! You can make it your active pet by typing [bold type][link]pet gryphoness[end link][roman type]. You can see all the pets you have tamed with the [bold type][link]pet[end link][roman type] command. Pets will lower the XP you gain from battle, but can gain levels themselves to be more useful in a scrap. Want to get rid of a pet? Use [bold type][link]pet dismiss[end link][roman type], or just [bold type][link]dismiss[end link][roman type])";
						now Resolution of Gryphoness nest is 7; [gryphon player with non gryphon cock recruited her]
						now Gryphoness nest is resolved;
				else:
					say "     'Of course I darted past him and well, in my rush to get away I ended up jumping off the balcony in a panic,' Denise says with a soft sigh as she rubs her taloned hands over your chest absently, making you grin as you stroke your own talons through the increasingly aroused gryphons feathers. 'Course I nearly crashed before I figured out the wings, I was actually kind of expecting to hit the ground, but I just wanted to get away from him so badly,' Denise says as she nuzzles you softly, 'I didn't want to be his little slutty breeder gryphon right then... or any gryphon's... until I met you...' she says in a happier tone, before seeming to realize just what she said.";
					say "     'Um I mean... well, you make me feel... so...' she trails off for a minute, seeming to think even as you continue to stroke her soft body with your talons teasingly, the gryphoness almost purring under your touch as she tries to gather her thoughts. 'I think, actually, I wouldn't mind being your gryphoness and you could teach me what it was like to be like this...' she says as she rubs her talon over your damp crotch, making you moan softly at her touch. 'I mean I flew off into the city after that, but... it's been so lonely... and if we could learn together...'";
					WaitLineBreak;
					say "     'And you look so needy too... like your body wants to be a breeder gryphon just as badly as mine does...' Denise pants eagerly, her eyes clouded with lust, even as your own mind begins to fill with lusty thoughts as the scent of a herm gryphon in need permeates your senses. Denise moans as her cock stiffens as your own excited musk invades her mind, rubbing herself up against you eagerly as her talon teases your soft passage. You are unable to stop yourself, as your body responds to her touch the way it was designed to, growing damp and needy at the touch of the more masculine gryphon.";
					say "     Before your mind can react, you find yourself laying back on the cushions and spreading your leonine legs eagerly to offer Denise better access to your female gryphon's body. Lost in a haze of lust, and the new sensations coming from her gryphon cock, Denise wastes no time moving up over your body, the soft barbed tip of her cock rubbing up against your outer lips teasingly and making you pant eagerly. You moan as you realize just how much your body wants this herm, her musk invading your mind over the time you spent talking, until you were just as much in heat as any slutty breeding gryphon should be.";
					WaitLineBreak;
					say "     You moan eagerly as Denise sinks her new cock into your body, your legs wrapping around her as she groans in pleasure as she begins to thrust into you eagerly. While she is obviously inexperienced with her cock, her strong instincts guide her easily, her feline barbs rubbing against the sides of your passage in mini explosions of pleasure as she thrusts into you again and again, her knot teasing your lips as it swells larger and larger, before it eventually grows too large to remove as it locks the two of you together in carnal bliss.";
					say "     You shudder underneath her as her knot finally seals your bodies together, and then groan as the gryphon above you cries out eagerly in orgasm, the feel of her warm treasure filling your body with every pulse of her cock causing you to cry out as well as your mind explodes with pleasure. Denise holds you tight, and you feel safe in her arms as the two of you relax together, the new gryphoness much more accepting of her situation now that she has had someone to share it with. You smile as you cuddle together on the slightly ripped cushions, trading jokes and stories as her knot softens within your body, she even teaches you some of the song she was singing earlier, as it is one of her favorites.";
					WaitLineBreak;
					say "     Finally able to slide free of her cock, you cuddle a bit longer before turning to leave, though Denise stops you before you can leave the cave and tells you that if you ever need her help for anything, she is more than happy to come wherever you are. You feel yourself grinning as you nod eagerly thinking of what kind of help the herm gryphon can bring you, and promise to sing out a few bars of her song if you ever can use her help.[ovichance]";
					LineBreak;
					now Gryphoness is tamed;
					add "Tamed" to Traits of Gryphoness;
					move Denise to Garden View;
					now gryphoncomforted is 3;
					infect "Hermaphrodite Gryphon";
					say "(The gryphoness is now tamed! You can make it your active pet by typing [bold type][link]pet gryphoness[end link][roman type]. You can see all the pets you have tamed with the [bold type][link]pet[end link][roman type] command. Pets will lower the XP you gain from battle, but can gain levels themselves to be more useful in a scrap. Want to get rid of a pet? Use [bold type][link]pet dismiss[end link][roman type], or just [bold type][link]dismiss[end link][roman type])";
					now Resolution of Gryphoness nest is 8; [female gryphon player recruited her]
					now Gryphoness nest is resolved;
			else:
				say "     'You want to know about me? Well it's not very interesting, but if you want to know,' Denise says, as she shifts uncomfortably at the memory. 'Well I was pretty much a normal woman before all this happened, nothing special really, just going to work while I was trying to learn to sing, I always did want to be in a band someday you see, not that that is likely to happen now,' she says with a sad sigh as she glances down at her changed body. 'That was up until just a little while ago, when I and most of the rest of the people in my apartment complex found a container of milk out on our doorstep, with a note saying it was from the apartment manager,' she says with a soft sigh as she rubs her fur covered breasts absently.";
				say "     'I suppose it was kind of silly of me not to wonder about that you know? But the milk just smelled so very good it made my mouth water, and I just couldn't resist having some with my cereal,' Denise says with a sigh as she rubs her beak with her talons in embarrassment. 'Before I knew it I had finished the whole thing of milk, and was moaning in pleasure while my body changed... I managed to get to the bathroom so I could... relieve myself...' the gryphon says with some embarrassment, as her taloned hand strokes her erect barbed cock absently, her actions hinting at just what kind of relief the horny gryphoness needed so badly.";
				WaitLineBreak;
				say "     'Well after a while in the bathroom, my changes were finished, and I was able to concentrate at least a little bit again,' the gryphoness says shyly, as the musky scent of an aroused gryphon begins to fill the small cave. 'I kind of started to freak out a little bit over the changes, and was just trying to figure out who to call about all this when the knock on the door came. So when I looked outside and there was a naked blue gryphon just like me standing there, of course I figured they had just changed too, so like an idiot I opened the door to talk to him.'";
				say "     She sighs as she wraps her arms around herself, and you can't help but put your arm around the gryphoness in comfort, making her smile softly as she looks at you, before continuing. 'That's when the handsome gryphon told me just what kind of milk it was that I drank,' Denise says with a sigh as she gestures at her own soft full breasts, 'And that it was going to make me a happy little gryphon breeder for them, and then he tried to pounce on me to 'help me understand what I was missing',' Denise says with a soft grin as you hug her close, her arms wrapping around your shoulders as well as she seems to take comfort from your presence.";
				WaitLineBreak;
				say "     'Well I managed to duck away from him, and ran out onto the apartment balcony, and well, right off of the balcony too. I was kind of panicked at the time,' she says with an embarrassed shrug of her wings as she snuggles closer to you. 'I almost didn't manage to figure out the wings in time, I was just so worried about getting away, and when I figured out I was flying... well that part of it was kind of nice,' Denise says with a smile and a fond look of remembrance on her beak.";
				say "     'Since then, well I have been kind of wandering the city, I tried to talk to people at first... but either they panicked, or I had to run from the other changed...' she says with a sad sigh as she leans up against you, 'I don't really mind the changes to my body all that much really, and I have to admit my singing voice is better than ever now. But I've just been getting so very lonely all by myself, and well,' Denise says as she rubs her cock absently with her taloned hand, 'I get so very horny now too...' she admits shyly as she glances at you curiously to see your reaction.";
				WaitLineBreak;
				say "     'I keep dreaming about... well, the other gryphons, their cocks filling me up, and being nice and full of their eggs... it just keeps getting harder and harder not to go join them...' Denise sighs as you stroke her soft feathers with your hand in understanding. 'I think maybe if I stay with you... I mean, well if you want me to anyways,' Denise suggests after a short time of just sitting there together companionably. 'I mean, if you aren't worried about me infecting you or anything, since I probably am still infectious,' she says with a sigh, before shooting a teasing smile your way.";
				say "     'Though for some reason I keep thinking you would look really cute with a nice beak and a pair of wings, and... um... the other equipment to go with it' Denise says as she snickers at you, as she rubs her breasts with one of her talons. 'And it would be nice to have another gryphon around, maybe then we could... keep each other company and have even have some fun together too...' Denise purrs slightly as she rubs up against your body, the scent of aroused gryphon filling your mind as she stares at you questioningly.";
				say "     [bold type]Do you decide to let her come with you?[roman type][line break]";
				if player consents:
					LineBreak;
					say "     'I can come with you? That's wonderful!' Denise says as she hugs you soundly, before kissing your cheek eagerly, 'Now I won't be all alone anymore!' the gryphoness says happily, as she rubs her soft gryphon body up against you. 'And don't worry about me, I've been learning a lot about surviving lately, so I should be able to pull my own weight!' Denise says proudly as she flexes her gryphon talons and paws eagerly.";
					if player is male:
						say "     'I just need a little bit to clean up around here, and then I'll come find you in the city,' Denise says as she looks around the small cluttered cave for a minute, before looking back at you. 'But first,' the gryphoness says, as she leans closer, her tongue darting out of her beak as she presses it up against your mouth, kissing you gently as she holds you close for a minute, her taloned hand rubbing over your erect cock teasingly as she does so. Denise moans as she draws back from the strange kiss, panting in excitement as she stares at you lustily, before shaking herself slightly.";
						WaitLineBreak;
						say "     'Sorry, it's just that, well, I can hardly wait to finally have someone to play with...' the shy gryphoness says as she smiles at you happily. 'Even if you aren't another gryphon... yet,' she says teasingly, as she proceeds to teach you a few notes of her song so you can call out for her to find you no matter where you are in the city. You find yourself leaving her small cave with a smile on your own face, as you wonder just what kind of new companion the strange gryphoness will make for you, and if you really would mind becoming a gryphon stud to keep her company as she is so obviously hoping you will...";
						LineBreak;
						now Gryphoness is tamed;
						add "Tamed" to Traits of Gryphoness;
						move Denise to Garden View;
						now gryphoncomforted is 3;
						infect "Hermaphrodite Gryphon";
						say "(The gryphoness is now tamed! You can make it your active pet by typing [bold type][link]pet gryphoness[end link][roman type]. You can see all the pets you have tamed with the [bold type][link]pet[end link][roman type] command. Pets will lower the XP you gain from battle, but can gain levels themselves to be more useful in a scrap. Want to get rid of a pet? Use [bold type][link]pet dismiss[end link][roman type], or just [bold type][link]dismiss[end link][roman type])";
						now Resolution of Gryphoness nest is 9; [male player recruited her]
						now Gryphoness nest is resolved;
					else:
						say "     'Just let me clean things up around here a bit, and then I can come find you in the city,' Denise says happily as she looks around the small cluttered cave for a minute, before looking back at you with mischief in her eyes. 'But first,' she says teasingly as she pulls you in for a soft hug and rubs her gryphon beak softly up against your cheeks. 'I wanted to thank you for taking me with you,' she says with a smile, her erect cock rubbing up against your female body and making you moan slightly as she holds you for a minute before letting you go. Denise grins as she sees how excited you are as well, and practically purrs as she continues, 'And I can't wait to thank you properly later either.'";
						say "     She teasingly runs one of her talons through her soft fur. 'And maybe if we are lucky you will end up as a gryphoness just like me,' she says with a wink as she rubs her breasts teasingly, before spreading her wings slightly. 'The flying alone is unbelievably amazing, and then we could go find the other gryphons together...' Denise says with excitement, her own eagerness contagious as you find yourself almost nodding along automatically. Seeing your eager response, she hugs you again happily before she proceeds to teach you a few notes of her song so you can call out for her to find you no matter where you are in the city. You find yourself leaving her small cave with a smile on your own face, as you wonder just what kind of wonderful new companion the Denise will be, and wondering if it would really be so bad to become a breeding gryphon just like her as she is so obviously hoping you will...";
						LineBreak;
						now Gryphoness is tamed;
						add "Tamed" to Traits of Gryphoness;
						move Denise to Garden View;
						now gryphoncomforted is 3;
						infect "Hermaphrodite Gryphon";
						say "(The gryphoness is now tamed! You can make it your active pet by typing [bold type][link]pet gryphoness[end link][roman type]. You can see all the pets you have tamed with the [bold type][link]pet[end link][roman type] command. Pets will lower the XP you gain from battle, but can gain levels themselves to be more useful in a scrap. Want to get rid of a pet? Use [bold type][link]pet dismiss[end link][roman type], or just [bold type][link]dismiss[end link][roman type])";
						now Resolution of Gryphoness nest is 10; [female player recruited her]
						now Gryphoness nest is resolved;
				else:
					say "     Denise sighs as you shake your head, 'It's ok...' she says sadly as she inches away from you and hangs her head down, 'I understand that no one really wants to take the risk of being around something like me now anyways, I might as well just go try to find the other gryphons and see if they at least still want me.' She sighs as she buries her face down in the soft cushions of her bed, ignoring your further attempts to talk to her. You sigh as you eventually work your way down the narrow path outside, wondering if perhaps you shouldn't have handled that differently after all...";
					now Resolution of Gryphoness nest is 11; [told Denise no]
					now Gryphoness nest is resolved;
		else: [charisma check fail]
			say "     Denise shifts uncomfortably as you brush up against her blue furred side, and you notice she seems to be getting aroused by your mere presence. She stammers slightly, before trying to steer the conversation to safer topics such as the strange situation the city is currently in, as well as what strange things you have each seen happen recently. Eventually she gets so distracted and aroused by your presence she asks you timidly to leave for a while, and deciding not to push things too hard right now, you do so. Working your way back down the narrow path, you wonder if you might have better luck stopping by again sometime later, since while you definitely feel a little closer to the strange gryphoness, you have a feeling you could get a lot closer still if you tried...";
	else: [never met Denise before]
		say "     Traveling along the long stretch of the beach, you notice signs of recent occupation on one of the nearby cliffs, and looking closer notice it looks like someone has been gathering small mementos of city life. A small collection of books, posters, and CDs scattered around in a small alcove. From the looks of things, whatever collected these small items comes back to visit relatively often. Sighing as you look at the numerous small scratches in the rock floor obviously made by one of the creatures now roaming the city, you realize you probably don't want to be here the next time they return, and so continue along your way down the beach.";

Gryphon Companion ends here.
