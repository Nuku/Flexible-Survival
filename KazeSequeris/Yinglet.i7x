Version 1 of Yinglet by KazeSequeris begins here.

Section 1 - Creature Responses

to say Yinglets wins:
	if Player is male:
		say "     You've been bested by these little ambushers, and you've no choice but to give in to their demands. Judging by the way they smirk and stroke their exposed malehoods, there's only one thing they want. They start arguing about who gets what, but before you can crawl away, the alpha of the group cuts you off and jabs his cock in your face. You bite your lip, but decide cooperation is better for your health. You open your mouth, and he stuffs himself inside. At first you just sit there and take it, letting him hump your face. Eventually though, you start working your tongue around the shaft and adding a bit of suction to better pleasure him. For a moment, you forget that he isn't alone. You're reminded all too suddenly when you feel two pairs of hands spread you from behind! Before you can protest or even process what's about to happen, the two smaller males stuff their smaller members right into your ass, side by side. The double penetration comes as a shock, but luckily they aren't too big to handle.";
		say "     You squirm, trying to find some comfort in your semi-prone position while you endure the frenzied fucking. The largest male makes a sound between a grunt and a squeak, his stick-like arms gripping your head tight as he feeds you his whole cock. You taste a thick, salty liquid flow across your tongue and rapidly fill your mouth. A little manages to escape your lips, but you opt to swallow the rest of it before he suffocates you in the thick fur of his underfluffies. He pulls out and flops backwards, tongue lolling out, and you get your first fresh breath that isn't heavy with his musk. Another moment passes, and you feel the two males in your rear finish one after another. You claw at the dirt as they give you both barrels, pumping your tunnel full of warmth. With them sated, you're free to scamper off, leaving them with grins on their little rodent faces, and you dripping with their seed.";
		CreatureSexAftermath "Player" receives "OralCock" from "Yinglet";
		CreatureSexAftermath "Player" receives "AssFuck" from "Yinglet";
	else if Player is female:
		say "     The yinglet mob surrounds you, snickering at their newest conquest - you. Resigning to their might, you prepare yourself for whatever they have in mind for you. The yinglets close in, dropping their shivs now that they see you nice and compliant. You lie on your back and wait for what's to come. The largest of them proudly steps up and pushes himself up between your legs. The tiny brute lacks any sort of finesse, barely running his tongue along your slit if only to get you slick for himself. He mounts you and unceremoniously crams his malehood into you. Luckily the rat-like creature's small size makes it an easy fit. Meanwhile, his buddies set about using your unoccupied parts. One of them grabs you by the hair and yanks your head his way. Your mouth gets stuffed with yinglet dick, and you've no choice but to suckle at it whilst he thrusts himself between your lips and against your tongue.";
		say "     The other one gets impatient and jumps up on your chest. Straddling your torso, he uses his tiny hands to push your breasts together. When he shoves his cock between your breasts, it's a bit uncomfortable for both of you... but after a while, the pre pouring from his tip lubes you up enough for him to enjoy humping your breasts. Despite the circumstances, you actually find yourself enjoying the attention. The male between your legs helps to sate your own lusts, the groping and massaging motions on your chest are almost hypnotic, and the salty taste of pre on your tongue is surprisingly pleasant. You can feel the trio getting closer to their peaks by the way they thrust against you with increasing enthusiasm. The one on your chest finishes first, cramming his conical length between your breasts and cumming against your neck and chin. He pulls back to finish painting your breasts until he's spent. The male in your mouth is next, hugging himself to your head as the salty taste of his orgasm floods your tongue.";
		WaitLineBreak;
		say "     The largest male is last to finish, seeming to savor his time in your womanly folds. He pumps you full of his seed, tongue lolling from his mouth from pure bliss. You climax with him, inner muscles squeezing tight as they can around his pointed member. Once the 'alpha' of the group pulls himself from you, the trio retrieve their shivs and skitter off, leaving you a sticky mess on the ground. You sigh softly, feeling oddly satisfied, but also... a subtle longing to find more males to mate with. You move along before those unbidden thoughts can go anywhere dangerous.";
		CreatureSexAftermath "Player" receives "OralCock" from "Yinglet";
		CreatureSexAftermath "Player" receives "PussyFuck" from "Yinglet";

to say Yinglets loses:
	say "     The trio of yinglets collapse in haphazard shapes. You toss one that lands on his back and lies there with his limbs in the air, another tumbles over and folds in half, getting a face full of his own butt. The last noodle lands face-first and bends over backwards. If they weren't the most flexible creatures you'd ever seen, you might've worried that you went a little overboard. As they recover though, they immediately surrender and beg for mercy.";
	say "[YingletsSexMenu]";

to say YingletsSexMenu:
	LineBreak;
	say "     [bold type]What do you do with the little troublemakers?[roman type][line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if Player is female:
		choose a blank row in table of fucking options;
		now title entry is "Be fucked by them";
		now sortorder entry is 0;
		now description entry is "Make it up to the poor guys";
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Fuck them";
		now sortorder entry is 2;
		now description entry is "Give them a taste of their own medicine";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Be fucked by them"):
					say "[YingletsFuck1]";
				else if (nam is "Fuck them"):
					say "[YingletsFuck2]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You've had enough of their antics for one day. You assure them you won't harm them any further, and tell them they're in for another beatdown if they tangle with you again. You continue on your way, leaving the needy yinglets in one part relief and two parts disappointment.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say YingletsFuck1:
	say "     The largest of them clasps his hands together and pleads, 'Please, sopretty lady! Sostrong lady! We didn't want no'zing bad! We just... so so needy!' His two underlings chime in together. 'Ya, zis big misunderstand!' 'Yes yes, sopretty lady! Just wanted ze humping!' Poor things, all they need is a little attention. With your own libido urging you on, you step over the largest of the group. He looks fearfully up at you from his vulnerable position on his back, but you reassure him with a smile. You lower your body over his, hand sliding down his tiny body until your fingers graze his length. That seems to do the trick. His quivering stops, and you lower yourself until your netherlips press against his tip. His eyes roll back as you slide yourself down around his cock.";
	say "     The other yinglets watch you ride him with envy, at least until you gesture for one of them to approach. The braver (or perhaps horniest) of the two moves closer, and you lean forward and open your mouth. He gets the idea quite quickly, and excitedly pushes into your mouth. You close your eyes and suckle, one hand reaching back to your rear. You pat your own ass and spread yourself wide, signaling the third yinglet to join in the fun. He does so without hesitation now, stuffing himself into your backdoor with enthusiasm. You find a rhythm and stick to it, moving your hips in a circle while you suckle and lick the length in your mouth. You get really into it pretty quick, making a game of twisting your tongue in a different way, or clenching particularly hard and seeing the reactions of the lust-drunk creatures you've got at your mercy. They way they squirm and coo, seemingly impressed by even the simplest of your actions, leads you to believe these little guys aren't used to such special treatment.";
	WaitLineBreak;
	say "     Soon enough, you feel the males bucking against you faster and faster. You hold your hips in place, letting the boys thrust into you as fast as they please, while you focus on the one in your mouth. He cries out in delight and you taste cum on your tongue. You lock your lips around the base of his shaft and start swallowing each squirt of his seed. The other two drive you to your own peak, and you slam your pussy down on the creature below you (careful not to crush his fragile pelvis). All at once, you cum in unison. After taking a moment to bask in that afterglow, you clean yourself and leave the yinglets in a pleasure-coma on the floor.";
	CreatureSexAftermath "Player" receives "PussyFuck" from "Yinglet";
	CreatureSexAftermath "Player" receives "OralCock" from "Yinglet";
	CreatureSexAftermath "Player" receives "AssFuck" from "Yinglet";

to say YingletsFuck2:
	say "     You feel these little upstarts need a little lesson, and with your own lust demanding attention, you're the perfect person to teach it. You give the 'alpha' a shove onto his back and squat down over him. 'Please, forgive, forgiiive!' He stops fearing for his life when you grab his head and shove his muzzle up against the tip of your cock. He understands his place now... He timidly opens his maw and starts lashing his tongue against your tip, which gives you opportunity to shove some of your shaft inside. He squeaks, but accepts his fate. With their leader submitting so fully to you, the other yinglets are at your beck and call. You call out to them and insist they get to work. They scurry up next to you, eager to avoid your wrath. They stand there looking like idiots, not exactly sure what to do. You roll your eyes and grab them each by the head.";
	say "     You pose them on either side of their leader, muzzles pushed against your groin. They figure it out pretty quick after that... Soon, you've got three tongues lapping over your shaft and balls. While they're certainly unpracticed and lack any sort of technique, it feels wonderful and you find yourself enjoying it immensely. ";
	if Cock Length of Player > 24:
		say "You're far too big to ever fit yourself in one of these creatures, even if they're hella-stretchy. You settle for the next best thing though, and let those tongues and maws lick and suckle you to completion. You give them a sturdy thrust, cock slipping just a bit further into the maw on your tip before blasting it with a heavy dose of cum. Luckily these things seem designed to swallow their food mostly whole, so the one at the end manages to keep up with the flow. ";
	else:
		say "Before you let them get too carried away with licking and suckling your malehood, you decide to proceed with the next part of the punishment. You give them all a shove away from your length. [if Cock Length of Player > 12]You pin the largest yinglet to the ground with one hand and line up your sizable member with his. Given your size, he'll probably be a much better fit than his companions[else]You grab one of the smaller yinglets and pin him to the ground beneath you. His smaller size will make for a much tighter fit for you[end if].";
		WaitLineBreak;
		say "     You bully his smaller member back into its genital slit, pushing your superior length in that labia-like opening. His inner walls are wet and soft, just like a female, with the added bonus of his hardened shaft frotting against yours inside. It's a lovely feeling, and you can't help but thrust into it again and again. All too soon, you feel your climax upon you. You moan aloud and give one final thrust, pumping your load into that tight space. ";
	say "You pull out and unload the rest across the three, as a final goodbye to your would-be assailants. Despite having been on the receiving end, the trio seem to have at least found some relief. Maybe they enjoyed getting used by a stronger male. You warn them about attacking strangers in the future, and take your leave.";
	CreatureSexAftermath "Yinglet" receives "OralCock" from "Player";

to say YingletsDesc:
	say "     You come to a stop and listen carefully. Something tells you you're not alone... and sure enough, you hear the pitter-patter of little feet as three small rodent-like creatures jump out at you! 'Haha, you have fallen for our soclever ambush! Surrender, or get stabby-stabbed!";

Section 2 - Creature Insertion

Table of CombatPrep (continued)
name(text)	PrepFunction(text)
"Yinglet"	"[PrepCombat_Yinglet]"

to say PrepCombat_Yinglet:
	setmongender 13; [creatures are male]

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Yinglet";
	add "Yinglet" to infections of FurryList;
	add "Yinglet" to infections of MagicalList;
	add "Yinglet" to infections of MythologicalList;
	add "Yinglet" to infections of MaleList;
	add "Yinglet" to infections of InternalCockList;
	add "Yinglet" to infections of InternalBallsList;
	add "Yinglet" to infections of BipedalList;
	add "Yinglet" to infections of TailList;
	now Name entry is "Yinglet";
	now enemy title entry is "Gang of Yinglets";
	now enemy Name entry is "";
	now enemy type entry is 0;
	now attack entry is "[one of]One of the creatures takes slashes at you from a few feet away, and you wonder how he plans on landing a hit with those little arms until one of his friends sticks you from behind![Or]The yinglet mob rushes you. You manage to knock some of them away, but one gets in a lucky hit![Or]The yinglets pounce on you all at once! They latch on and start biting and scratching. You throw them off, but not before they manage to deal some damage.[at random]";
	now defeated entry is "[Yinglets loses]";
	now victory entry is "[Yinglets wins]";
	now desc entry is "[YingletsDesc]";
	now face entry is "pointed and rodent-like, but with ears resembling that of a bat. You only have four needle-like teeth in the back of your mouth and a single, over-sized tooth at the front. Your tongue within is thin and birdlike, and your eyes are large and round. Little whisker-like feelers sprout from your brow. Your head is supported on a long, flexible neck"; [ Face description, format as "Your face is [Face of Player]." ]
	now body entry is "very curvy... but less like an hourglass, and more like a noodle. Rather than stand up straight, your body is slouched forward like a raptor, relying on your tail for balance. Your arms are an almost comical mix of super-thin and extra-long. The majority of muscle and fat rests in your shortened upper arms, which very quickly give way to your stick-like forearms. The narrow, clawed digits at the end are surprisingly dexterous, and yet somehow a little clumsy. Your legs feel less like legs, and more like a set of stilts. Your thighs are the thickest where all your legs['] springy muscle resides. Past that point, your legs are very thin, almost stick-like, ending in hands identical to the ones on your arms. Between your legs lies a little slit that houses your genitals"; [ Body Description, format as "Your Body is [Body of Player]." ]
	now skin entry is "fluffy-furred"; [Looking at yourself, your body is covered in (your text) skin.]
	now tail entry is "Your tail is less a limb on its own, and more an extension of your body. It's long, covered in fur, and narrows down to a pointed tip."; [either empty ("") or full sentence, with period]
	now cock entry is "pointed and conical";
	now face change entry is "the bones within reform themselves, a long, pointed snout pushing into your field of view. Your teeth reform into four smaller teeth and a single pointy bucktooth. Your tongue becomes narrow and pointy. You can feel your ears travel up your head, becoming long and pointed. Your eyes widen, proportionally speaking, and a long set of sensitive whiskers sprout from between them";
	now body change entry is "your frame shrinks, your spine pushing out and curving to force your torso forwards until you find your natural standing position resembling that of a small raptor. You feel your muscles and fat underneath grow more wiry, tense, twitchy and lean. Your arms and legs narrow considerably, becoming almost stick-like. A masculine tuft of fur erupts from your chest, which you find yourself taking probably a little too much satisfaction from. Surely the ladies will look your way and the males shall cower in envy at the sight of such a manly tuft! The thought of it arouses you just a bit";
	now skin change entry is "a fluffy layer of thick fur erupts and quickly envelops your entire body";
	now ass change entry is "your spine extends, becoming nearly as long as your torso. It starts thick at the base, then narrows down to a point where a little plume of fluff sprouts";
	now cock change entry is "fleshy folds engulf your cock. Looking down, you are momentarily shocked to see what looks like a female labia. Cautiously, you slip a finger inside, finding a tight tunnel with sensitive inner walls. More importantly, you feel your cock resting safely inside, waiting for action";
	now str entry is 10;
	now dex entry is 18;
	now sta entry is 12;
	now per entry is 18;
	now int entry is 10;
	now cha entry is 12;
	now sex entry is "Male";
	now HP entry is 20;
	now lev entry is 2;
	now wdam entry is 3;
	now area entry is "Beach";
	now Cock Count entry is 1;
	now Cock Length entry is 4;
	now Ball Size entry is 2;
	now Nipple Count entry is 0;
	now Breast Size entry is 0;
	now Male Breast Size entry is 0;
	now Cunt Count entry is 0;
	now Cunt Depth entry is 6;
	now Cunt Tightness entry is 4;
	now SeductionImmune entry is false;
	now libido entry is 40;
	now loot entry is "barnacle encrusted gem";
	now lootchance entry is 30;
	now MilkItem entry is "yinglet milk"; [ Item to be given to the player if they have this infection and milk themselves. ]
	now CumItem entry is "yinglet cum"; [ Item to be given to the player if they have this infection and jerk off. ]
	now TrophyFunction entry is "-"; [ Function to generate a list of optional loot items, of which the player can choose one after victory. ]
	now scale entry is 2;
	now body descriptor entry is "[One of]slender[or]flexible[or]noodle[or]noodle-like[at random]";
	now type entry is "yinglet";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is "";
	now DayCycle entry is 0;
	now altcombat entry is "default";
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is "Yinglet";
	now Name entry is "Yinglet";
	now Body Weight entry is 2;
	now Body Definition entry is 2;
	now Androginity entry is 5;
	now Head Change entry is "Your whole head feels quite strange as";
	now Head Description entry is "";
	now Head Adjective entry is "rodent";
	now Head Skin Adjective entry is "fluffy";
	now Head Color entry is "brown";
	now Head Adornments entry is "";
	now Hair Length entry is 6;
	now Hair Shape entry is "straight";
	now Hair Color entry is "brown";
	now Hair Style entry is "maned";
	now Beard Style entry is "";
	now Body Hair Length entry is 0;
	now Eye Color entry is "yellow";
	now Eye Adjective entry is "wide";
	now Mouth Length entry is 4;
	now Mouth Circumference entry is 3;
	now Tongue Adjective entry is "narrow";
	now Tongue Color entry is "pink";
	now Tongue Length entry is 6;
	now Torso Change entry is "";
	now Torso Description entry is "";
	now Torso Adjective entry is "narrow";
	now Torso Adornments entry is "chestfloof";
	now Torso Skin Adjective entry is "furred";
	now Torso Color entry is "brown";
	now Torso Pattern entry is "plain";
	now Breast Adjective entry is "fluffy";
	now Breast Size entry is 0;
	now Male Breast Size entry is 0;
	now Nipple Count entry is 0;
	now Nipple Color entry is "";
	now Nipple Shape entry is "";
	now Back Change entry is "";
	now Back Adornments entry is "";
	now Back Skin Adjective entry is "furred";
	now Back Color entry is "brown";
	now Arms Change entry is "";
	now Arms Description entry is "";
	now Arms Skin Adjective entry is "furred";
	now Arms Color entry is "brown";
	now Locomotion entry is "bipedal";
	now Legs Change entry is "";
	now Legs Description entry is "";
	now Legs Skin Adjective entry is "furred";
	now Legs Color entry is "brown";
	now Ass Change entry is "";
	now Ass Description entry is "";
	now Ass Skin Adjective entry is "furred";
	now Ass Color entry is "brown";
	now Ass Width entry is 1;
	now Tail Change entry is "";
	now Tail Description entry is "";
	now Tail Skin Adjective entry is "furred";
	now Tail Color entry is "brown";
	now Asshole Depth entry is 8;
	now Asshole Tightness entry is 3;
	now Asshole Color entry is "pink";
	now Cock Change entry is "";
	now Cock Description entry is "";
	now Cock Adjective entry is "conical";
	now Cock Color entry is "pink";
	now Cock Count entry is 1;
	now Cock Girth entry is 2;
	now Cock Length entry is 4;
	now Ball Count entry is 2;
	now Ball Size entry is 2;
	now Ball Description entry is "";
	now Cunt Change entry is "";
	now Cunt Description entry is "";
	now Cunt Adjective entry is "";
	now Cunt Color entry is "pink";
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 3;
	now Clit Size entry is 2;
]

Section 3 - Barnacle Encrusted Gem item

Table of Game Objects (continued)
name	desc	weight	object
"barnacle encrusted gem"	"A shiny green gem that seems to have spent some time underwater. The bits that aren't crusted over are nice to look at, and it seems like something's sloshing around inside..."	1	barnacle encrusted gem

barnacle encrusted gem is a grab object. it is temporary.
[barnacle encrusted gem is infectious. Strain of barnacle encrusted gem is "Yinglet".]
Usedesc of barnacle encrusted gem is "[EncrustedGemUsing]";

to say EncrustedGemUsing:
	say "You hold out the gem and examine it closely. It's so shiny, catching the light in just the right way. The liquid inside seems to swirl about, adding to how pretty it is. Suddenly, it shatters. At first you're confused, wondering how it broke open so easy, but it's short lived when the fluid splashes your face. You try to wipe it off, but it seems to be soaking into your skin!";
	infect "Yinglet";

instead of sniffing barnacle encrusted gem:
	say "The small object smells vaguely like the sea, or more specifically, saltwater. It's musty, but not all that unpleasant.";

Section 4 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Yinglet Infection"	"Infection"	""	Yinglet Infection rule	1000	false

This is the Yinglet Infection rule:
	if Player has a body of "Yinglet":
		trigger ending "Yinglet "; [Here it states, that the ending has been played.]
		if humanity of Player < 10:
			say "     At some point, you start thinking about what you're going to do when you're rescued from this place. You imagine what kind of life you'd have in this tiny weasel-rat body of yours. All those humans, and other creatures bigger than you... You'd have to spend all your time desperately trying not to get stepped on! You consider a job, or a mate... and soon you realize... thinking is hard. But you're so good at it! Yes, back in society, you're a pest at best. But here, you are soso smart! The smartest, strongest yinglet! You decide you no longer wish to be rescued.";
			say "     You roam the area and seek out all the yinglets you can. After a masterful display of your slightly above average strength and wit, they decide to follow you for safety and guidance. You start your own yinglet enclave, where you are heralded by your lessers as [if Player is male]Patriarch. You're the best hunter, fisher, and you know where to find the best clams! You teach your lessers how to fight and defend the females, and of course, you have priority in the females['] breeding schedule. Failing that, there's always a smaller male to slide yourself into when the need is great. [else]Matriarch. You have plenty of males to protect you, and you teach them all the best ways to find food. When you aren't teaching and caring for the young, you're busy making more of them. You have your pick of the males, and of course only the ones you deem worthy get a shot at you. In the end, you may have thrown away your humanity, but among the yinglets, you're a queen! [end if]Yinglets often return to you with their finding of shiny-things, which you gladly accept or bestow upon your favorite underlings as rewards. Sometimes they find more of those little gem-things, filled with swirling liquid. Outsiders who find themselves turned into yinglets themselves soon come to terms with their new position and gladly join your enclave. Thoughts of civilization soon fade into a distant memory, your new life is far more interesting now.";
		else:
			say "     When the rescue came, you weren't too sure what to do with yourself. Your new body made most forms of labor difficult, but eventually you found a use for it. You volunteer yourself to join the relief forces. Fighter, you are not, but your small body and keen perception make you ideal for scouting difficult terrain. You've got a penchant for finding people, and an even greater one for finding shiny valuables that make a pretty penny on the side (when you don't keep it for your own personal collection). You're content with your new life and body, and despite the teasing from your much larger teammates, you come to feel welcome among them. Plus, your unique body and all its flexibilities turns out to be quite a hit for those with a more... exotic taste. You don't spend your nights lonely.";

Yinglet ends here.
