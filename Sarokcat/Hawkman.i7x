Version 2 of Hawkman by Sarokcat begins here.
[ Version 2 - M/M Hawkman victory and tweaked scenes - Blue Bishop and Stripes ]

"Adds a Hawkman to Flexible Survival's Wandering Monsters table"


nohawkmansex is a number that varies.
hawkmanbeaten is a number that varies.

Section 1 - Monster Responses

when play begins:
	add { "Hawkman" } to infections of guy;
	add { "Hawkman" } to infections of furry;


to say hawkmandesc:
	setmongender 3;  [creature is male]
	choose row monster from Table of Random Critters;
	if "Male Preferred" is listed in feats of player:
		now sex entry is "Male";
	else if "Herm Preferred" is listed in feats of player:
		now sex entry is "Both";
	else:
		now sex entry is "Female";
	if inasituation is true:
		stop the action; [details are taken care of at the event source]
	say "     As you wander through the city streets, you hear a whistling sound from above and look up to see a powerful avian form swooping down towards you. You jump back as it lands right in front of you and get a closer look at the anthro raptor's body as he stalks towards you on taloned feet. The strange bird-man has large, hawk-like wings stretching out from his back, clearly flight-ready given the creature's aerial approach. He is covered in a rather soft and beautiful looking plumage of brown, layered feathers with ivory-white countershading. The obviously male creature is half-erect as he cocks his avian head to the side appraisingly, and you swear you can see a lecherous grin stretching across his beak as he leaps forward to attack.";

to say Hawkman wins:
	if inasituation is true:
		stop the action; [details are taken care of at the event source]
	now nohawkmansex is 0;
	if player is female or ( anallevel is 3 and a random chance of 2 in 5 succeeds ) or ( player is mpreg_ok and a random chance of 2 in 5 succeeds ):
		if player is not female and a random chance of 3 in 5 succeeds:
			if HP of player > 0:
				say "     The hawkman grins wide when you give in to him and he wastes no time in leaping forward, knocking your unresisting form to the ground. He chuckles happily as he rubs his feathered form against your [bodydesc of player] body while divesting you of your gear. Groping you between the legs as he does, he gives a cawing laugh. 'Well, you're nothing but a big hen, ain't you?' he says teasingly, nipping at your neck while grinding his stiffened member against your rear and fondling your [if player is male]manhood as it reacts[else]your bare groin[end if].";
			else:
				say "     The hawkman grins proudly upon your defeat and he wastes no time in leaping forward, knocking your exhausted form to the ground. He chuckles happily as he rubs his feathered form against your [bodydesc of player] body while divesting you of your gear. Groping you between the legs as you squirm ineffectually, he gives a cawing laugh. 'Prey, I'm going to make you my hen,' he says teasingly, nipping at your neck while grinding his stiffened member against your rear meaningfully. He reaches around and fondles your [if player is male]manhood, causing it to react involuntarily[else]bare groin, causing you to moan involuntarily[end if].";
			say "     You are manhandled onto all fours by the lustful bird even as your own arousal heightens[if HP of player <= 0] despite yourself[end if]. His wings enfold around you possessively, keeping his prey/plaything safely trapped/enclosed. The true context of the situation becomes increasingly blurred for you as a growing need to allow the hawkman to fuck you overwhelms your reason as his masculine scent and confident, possessive manner affect your nanite-addled mind. He chuckles and pumps his cock eagerly when you reach back and spread your cheeks, baring your waiting pucker to [if HP of player > 0]your dominant lover[else]the victorious raptor[end if]. From that point, he wastes little time in mounting you, burying his narrow pink cock in your exposed behind and causing you to moan in pleasure.";
			WaitLineBreak;
			say "     Having the avian organ inside you feels wonderful, the hawkman thrusting it skillfully and energetically into your hot hole. Your anal passage grows increasingly wet as his precum lubes you up, allowing him to fuck you harder and faster still, much to your mutual delight. You lean your chest forward and stretch your arms out, effectively raising your ass and allowing him to penetrate deeper [if HP of player > 0]like some lustful he-hen to this studly hawk[else]into his captured man-slut prey[end if]. You pant and moan beneath him as he fucks you, his virile rod pulsing and throbbing inside you[if player is male]. Your prostate thrums from the stimulation and your balls throb with arousal until finally spilling over in a loud and lustful orgasm. The hawkman chuckles as you climax[else]. Your body quivers with unfocused ecstasy as the stimulation eventually makes you cry out. The hawkman chuckles at your uncontrolled response[end if], nipping firmly at your shoulder and neck, and drives himself deep into you, spraying his hot load into your ass. You can't help but moan and blush a bit at how good it feels to have his semen flowing into your bowels [if HP of player > 0]as he cums in his horny lover[else]of his misused prey[end if].[movichance]";
			say "     When he pulls out, you flop over onto your side with a dazed, contented smile on your face and a trickle of hawk seed leaking from your well-used hole. After wiping his spent shaft across your hip, he takes flight, leaving you to gradually recover your wits - though you feel a lingering longing for the confident male to reclaim you again soon.";
		else:
			say "     The hawkman's beak spreads open in a wide grin as you finally stop fighting him. He wastes no time in leaping forward and knocking your unresisting form to the ground, chuckling happily as he rubs his surprisingly soft feathers up against your body eagerly. You find yourself moaning softly as his avian form pins you to the ground, his taloned feet gripping your legs and stroking them lightly as he spreads them wide open for him. His wings open wide and enclose the two of you in a small tent smelling strongly of his masculine presence, and your body begins to burn with need even as he positions his narrow pink cock in front of your [if player is female]already damp female opening[else]exposed behind[end if]. You feel strangely comfortable and protected as he buries himself in your waiting [if player is female]passage[else]hole[end if], and you moan happily with pleasure as he nuzzles your neck with his hooked raptor beak.";
			say "     The feel of his avian organ in your body is absolutely wonderful, as it seems to reach deep inside you and stroke you in all the right places. The almost hypnotic building rhythm of his short thrusts into your body makes your mind fill with pleasure as you bury your fingers in his lovely, feathered sides. It isn't long before you are gasping and shuddering in [if player is not neuter]orgasm[else]ecstasy[end if] underneath him as he fills your [bodydesc of player] body with his wonderful avian seed. You can feel it flowing into you to pool inside your [if player is female]womb[else]bowels[end if]. Your [bodytype of player] body responds eagerly to his seeding with a rush of amazing pleasure even as he cries out his triumph to the empty streets around you. You find yourself smiling happily as he pulls himself off of you. The hawkman rubs his beak over your well-used body a few times before taking to the air again. As you begin to try to gather your wits about you, you find yourself almost idly wondering as you rub your belly whether or not you will see the handsome bird again anytime soon...[ovichance]";
		infect "Hawkman";
	else:
		say "     Knocking you to the ground, the hawkman screams his triumph, strutting around you in a particularly avian stride. As you sit up, the birdman pushes you back down with one taloned foot before taking to the sky again. Dizzy and rubbing the bump at the back of your head, you can only stare in surprise as he begins to stroke himself off above you, the hunt and the combat obviously having only increased the strange creature's arousal. Within a minute, he shudders, his cock twitching as he covers your beaten form with his sticky white seed. The seed seems to tingle even as it sinks into your body, and the watching hawkman lets out a sound of satisfaction before flying off into the city in search of more prey, leaving you lying there trying to deal with your new changes.";
		infect "Hawkman";


To say Hawkman loses:
	if inasituation is true:
		stop the action; [details are taken care of at the event source]
	if hawkmanbeaten < 3 or cocks of player is 0:
		say "     With one last vicious blow, you knock the hawkman back, the creature seemingly surprisingly fragile for all its striking power, and as it hops back and takes to the sky again to flee, you wonder if its bones are just as delicate as most birds... Sighing you turn to continue on your way, though you resolve to keep a better eye on the sky above just in case more of those surprisingly sexy hawkmen are in the area.";
	else if nohawkmansex > 2:
		say "     As you've done with the others of his kind recently, you pull the bird back to the ground and pull some of his tailfeathers out as a painful reminder not to mess with you again.";
	else:
		say "     With a final, vicious blow, you knock the hawkman back. Prepared for the avian's escape attempt, you reach out and grab it by the ankle as it starts to flap its wings. Too weak, you pull it to the down, slamming it to the ground, leaving it vulnerable to you. Shall you take advantage of the bird (Y) or let it go (N) now that it knows you're stronger than it?";
		if player consents:
			if hawkmanbeaten is odd:
				say "     Wanting some proper payback, you pin the weakened bird beneath you and grind your cock beneath its tail feathers. It squawks indignantly, but a firm hand on around its beak and thrust forward has you mounting the bird and fucking its tight ass[if cock length of player > 36]. You stuff as much as you can in the hawkman's ass, filling his slender body to capacity with your throbbing meat[else if cock length of player > 18]. You stuff your [cock size desc of player] cock entirely into the hawkman's ass, filling him with your throbbing meat[else]. You stuff your [cock size desc of player] cock into the hawkman's ass, working your full length into him[end if]. You pound away at him, loving the feel of his tight ass around your pulsing shaft as you fuck him until you cum[if cock width of player > 30]. Your massive load leaves him bloated and full like a stuffed holiday bird, unable to move he's so full[else if cock width of player > 15]. Your heavy load leaves him stuffed and leaking cum as he staggers away[else]. Your creamy load is pumped into him, leaving his rump and tailfeathers sticky with your seed once you're done[end if].";
			else:
				say "     Feeling the need to teach the raptor to pick his would-be prey more wisely, you grab the weakened bird by the tailfeathers and pull his ass up. He gives an indignant squawk, but cannot prevent you from pressing your throbbing member between his feathery cheeks. With your other hand pressing his head to the ground, you drive your [cock of player] manhood into his tight ass[if cock length of player > 36]. You stuff as much of your [cock size desc of player] cock as you can get into his slender body, filling him with your throbbing meat[else if cock length of player > 18]. You stuff your [cock size desc of player] cock entirely into him, filling him with your throbbing meat[else]. You stuff your [cock size desc of player] cock fully into him[end if].";
				say "     While it's tempting to finish quickly, you manage to resist the urge - at least for a little while - wanting to thoroughly show this would-be predator the depth [if cock length of player > 18](and girth) [end if]of his error in attacking you. As you continue fucking the panting bird, weak moans and soft caws start to escape his beak. You reach around and let your fingertips brush against his stiffened member, proving you're well aware the raptor's hard and dripping despite himself. He blushes and closes his eyes in shame, but also pushes up into your thrusts a little. You can feel his anus squeeze around your pulsing rod in more than just reaction to your thrusts and you reward this response by taking his throbbing penis in hand and stroking it.";
				say "     You bugger the increasingly compliant hawk until finally you achieve climax. Driving your cock deep into his thoroughly pounded ass, you unleash your balls['] [cum load size of player] payload into him[if cock width of player > 30]. Your massive load blasts wave after wave of semen into him until he's left bloated and full like a stuffed holiday bird. So full he's unable to move, he can only quiver and caw weakly in orgasm even as your excess load overflows his stretched pucker. He rolls over onto his side, weak, dazed and unable to move. You leave him there, going about your own business with a proud smile on your face for your accomplishment[else if cock width of player > 15]. Your mighty load gushes wad after wad of semen into him, stuffing him until he's full. With the heat of your seed filling his bowels, he struggles to clench around you as he caws loudly in orgasm. Once spent, he slips off of you slowly and weakly staggers to his feet. Laden down with your [cum load size of player] load, he can only stumble off in a weak daze. You let him leave, instead returning to your own affairs with a proud smile on your face[else]. Your creamy load is pumped into him, painting his bowels with streaks of your semen. Feeling you climax inside him, he clenches down around you and caws in orgasm. Once spent, he slips off your slowly and he staggers to his feet. Blushing as he tries to hide his sticky rump and tailfeathers, he takes to the air. You let him leave at this point, returning to your own affairs[end if]. At least now one of those troublesome hawks has learnt his lesson.";
		else:
			say "     To reinforce your victory, you pull a few feathers from the bird's tail, making him squawk in pain.";
			increase nohawkmansex by 1;
	increase hawkmanbeaten by 1;


Section 2 - Monster Insertion

Table of Random Critters (continued)
name	enemy title	enemy name	enemy type	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	DayCycle	altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now name entry is "Hawkman";
	now enemy title entry is "";
	now enemy name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]He lashes out at you with his wing, the powerful wing strike smashing you backwards.[or]The hawkman flaps his wings and gains a leaps into the air, lashing out at you with his powerful rear talons.[or]he grabs at you with his taloned fingers.[or]He charges forward, his wings flapping behind him giving his speed as he barrels into you.[or]He lets out a loud screech causing you to duck instinctively as he barrels forward.[or]He stalks forward teasingly, his rhythmic movements almost hypnotic as he postures in front of you.[or]He strikes forward with his large, predatory beak and rubs it against you teasingly.[or]The hawkman stretches forward with one of his taloned fingers and strokes his cool finger down the side of your face teasingly.[at random]";
	now defeated entry is "[Hawkman loses]";
	now victory entry is "[Hawkman wins]";
	now desc entry is "[hawkmandesc]";
	now face entry is "a narrow, hawk-like head with a sharp, curved beak and piercing eyes"; [ Face description, format as "Your face is (your text)."]
	now body entry is "lithe and slim, with powerful taloned feet and rather claw-like taloned hands, your avian body sports two large, powerful wings, which catch the air behind you and make you almost feel like you could fly"; [ Body Description, format as "Your Body is (your text)"]
	now skin entry is "[one of]soft feathered[or]brown feathered[or]hawk-like[or]feathered[at random]"; [ skin Description, format as "You have (your text) skin"]
	now tail entry is "You have a rather large tail made of feathers folded neatly behind you, its patterned feathers seeming to shine and shimmer as it flexes and spreads out with every step you take."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "[one of]slim, tapered[or]avian[or]hawk-like[at random]"; [ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "your nose seems to flatten out, and you fight to breathe for a second as your mouth presses forward, the bones of your jaw cracking as it begins to reshape into a powerful avian beak. Your eyes swim for a minute before sharpening into the razor sharp focus of a hawk, and you gasp for breath as your beak finishes forming, your now thin, birdlike tongue exploring the smooth texture of your hawk-like beak"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "your bones seem to stretch and flex under the skin for a second, your balance seeming to change as your body grows lighter, and you stagger and nearly fall as your feet shift, the knees snapping and reversing in direction as new raptor-like talons form, your hands soon shifting and following suit as they become covered in powerful birdlike talons as well. However, you discover that your changes aren't quite over, as all of a sudden your spine seems to shift, causing you to moan as your back bulges out, and two powerful avian wings erupt out from your sides, and you flap your new wings experimentally as you stretch out your powerful new avian form"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "small dimples appear over your body, covering you completely before they begin to tingle, and you feel several small pinpricks as small feathers begin to push their way out of your skin, the first set of feathers growing in quickly even as another set begins to push out to cover the soft downy underfeathers with their brown patterned hawk-like markings"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "large, powerful feathers seem to erupt out from the base of your spine, the feathers seeming to fold together to form a wide, flat, avian tail. The strange new appendage feels surprisingly responsive as you spread it out behind you experimentally, the feathers feeling surprisingly good and arousing where they rub against your body"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it is drawn up almost entirely into your body, your penis narrowing into a rather avian, pointed member as it slips into your newly created vent"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 16;
	now dex entry is 20;
	now sta entry is 10;
	now per entry is 20;
	now int entry is 12;
	now cha entry is 16;
	now sex entry is "Female";  [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 30;
	now lev entry is 7;  [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 13;  [ Amount of Damage monster Does when attacking. ]
	now area entry is "Outside";  [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now cocks entry is 1;  [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 8;  [ Length infection will make cock grow to if cocks]
	now cock width entry is 4;  [ Size of balls ]
	now breasts entry is 0;  [ Number of Breasts infection will give you. ]
	now breast size entry is 0;  [ Size of breasts infection will try to attain ]
	now male breast size entry is 0;  [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;  [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 8;
	now cunt width entry is 3;
	now libido entry is 50;  [ Amount player Libido will go up if defeated ]
	now loot entry is "hawkman seed";  [ Loot monster drops, ]
	now lootchance entry is 45;  [ Chance of loot dropping 0-100 ]
	now scale entry is 3;  [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]sleek[or]winged[at random]";
	now type entry is "[one of]avian[or]raptor[at random]";  [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;  [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now DayCycle entry is 0;  [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;


when play ends:
	if bodyname of player is "Hawkman":
		if humanity of player < 10:
			if player is female:
				say "Giving in to your new hawk-like instincts you spread your wings out and take to the air, the feel of the cool air whistling over your soft feathers feels amazing as you begin your first awkward flight over the city. It isn't long before you have managed to master the use of your new wings however, and are soaring easily over the city and enjoying the sights of the world spread out below you. Of course your first flight doesn't go unnoticed, and you soon have several handsome male hawks circling you teasingly, their beautiful feathers and virile male bodies speaking to something within you as you alter your flight path to give them teasing glimpses of your own sexy feathered body. Several of the hawks vie for your attention for a while, but you are eventually drawn to a rather handsome specimen who has a lovely way of slipping through the air with ease, and soon find yourself following him through the air back to his nest on top of one of the buildings in the area. Already aroused from your flight, he has no trouble in getting you to spread yourself for him, and he wastes no time in mounting you and making you screech your pleasure to the sky as he takes you again and again. [line break]";
				say "You lose track of what time it is, and eventually even what day it is, as your handsome hawk mates you often, keeping you nice and happy, feeding you and making sure you are well taken care of, even as he ensures you are unable to even think about leaving your new shared nest. Almost before you know it you can feel your belly swelling large with your new mate's seed, and you realize you are now a properly claimed and bred hawkwoman, which for some reason seems strangely satisfying to your new instincts. Soon you lay your first clutch of lovely little hawk eggs, the feeling of their ovoid shapes slipping out of your new sex is absolutely amazing, and before you know it you are panting happily in your egg filled nest with your mate looking on proudly. You find you can hardly wait for your eggs to grow and hatch into even more lovely hawks, and look forward to the happy event enthusiastically even as your new avian mate works on filling your eager body with a fresh clutch of eggs for you to lay... And you find yourself looking forward more than ever to the many breedings and clutches of eggs to come, as you fully embrace your new life as a slutty hawkwoman with a lovely belly full of life...";
			else:
				say "Giving in to your strong new hawk-like instincts, you spread your wings and take to the sky for the first time, enjoying the feeling of freedom as you slowly begin to master the skies above the infected city. Before long you are soaring through the skies with ease, and enjoying the feel of the wind rushing over your feathers as your eyes scan the city below for someone to play with. Unfortunately, the city is full of other infected, and most of the people have already become playtoys already, which leaves you flying aimlessly through the skies, until you realize that you are being silly. Looking up at the open skies around you, you can feel a grin tugging at your beak as you begin to angle your wings to take you down the coast a ways. There is after all a whole wide world out there full of people you can chase and catch. And the open skies are calling out to you as you head off in search of new places to hunt, and new partners to share the joys of flight with. Let the military do with the city as they wish, you find yourself thinking as you fly under the cover of the night sky, you have the world out there to play in...";
		else:
			say "When the military rescues you from the city, you find yourself watched closely by their scientists, as they seem fascinated by your new avian form, and the changes in your muscle density and bone mass. Their attention makes you nervous, and before long you are asking to leave, especially once they start talking about bone marrow samples and similar painful tests. Fortunately enough, they are soon far too busy dealing with the fallout from the city and some of the other infected who they 'rescued' that are causing problems in camp to devote full attention to you for very long, and soon enough you are released. Wandering around outside of the city, you soon find your new looks gathering quite a bit of attention, though they certainly aren't very helpful in finding a job of some sort. Eventually you manage to get a job as a mail courier, and while it is rather dull delivering the mail and packages most days, it does let you meet some rather interesting people. One day you even meet a fellow avian, a sexy black [one of]hawkman[or]tengu[or]eagle[or]gryphon[at random], the powerful male is more than happy to meet you as well, and while both of you have never given yourself over to your new instincts enough to master your new wings and fly, you still find the draw of meeting a fellow avian to be nearly irresistible. [if player is female]Before long the two of you are inseparable, and it isn't much longer before you are expecting your first clutch of eggs, and you find yourself eagerly anticipating seeing just how they will look when they finally hatch, and looking forward to many more clutches of eggs in the future[else]After a few months and becoming friends, he introduces you to his sister, who was similarly infected. He held back on telling you about her until your friendship was strong enough that he could trust you. You both hit it off and are soon a happy couple with a clutch on the way[end if].";


Section 3 - Item Drop

Table of Game Objects (continued)
name	desc	weight	object
"hawkman seed"	"A large container of virile, avian seed"	1	hawkman seed

hawkman seed is a grab object. hawkman seed is infectious. The strain of hawkman seed is "Hawkman". hawkman seed is cum.
the scent of hawkman seed is "The swill has an overwhelming, masculine aroma about it.".
The usedesc of hawkman seed is "     There's so much of stuff, it's a challenge to consume all of the warm, salty fluid. By the end, you feel dizzy and a little tingly.";

Section 3 - Endings

when play ends:
	if bodyname of player is "Hawkman":
		if humanity of player < 10:
			if player is female:
				say "Giving in to your new hawk-like instincts you spread your wings out and take to the air, the feel of the cool air whistling over your soft feathers feels amazing as you begin your first awkward flight over the city. It isn't long before you have managed to master the use of your new wings however, and are soaring easily over the city and enjoying the sights of the world spread out below you. Of course your first flight doesn't go unnoticed, and you soon have several handsome male hawks circling you teasingly, their beautiful feathers and virile male bodies speaking to something within you as you alter your flight path to give them teasing glimpses of your own sexy feathered body. Several of the hawks vie for your attention for a while, but you are eventually drawn to a rather handsome specimen who has a lovely way of slipping through the air with ease, and soon find yourself following him through the air back to his nest on top of one of the buildings in the area. Already aroused from your flight, he has no trouble in getting you to spread yourself for him, and he wastes no time in mounting you and making you screech your pleasure to the sky as he takes you again and again. [line break]";
				say "You lose track of what time it is, and eventually even what day it is, as your handsome hawk mates you often, keeping you nice and happy, feeding you and making sure you are well taken care of, even as he ensures you are unable to even think about leaving your new shared nest. Almost before you know it you can feel your belly swelling large with your new mate's seed, and you realize you are now a properly claimed and bred hawkwoman, which for some reason seems strangely satisfying to your new instincts. Soon you lay your first clutch of lovely little hawk eggs, the feeling of their ovoid shapes slipping out of your new sex is absolutely amazing, and before you know it you are panting happily in your egg filled nest with your mate looking on proudly. You find you can hardly wait for your eggs to grow and hatch into even more lovely hawks, and look forward to the happy event enthusiastically even as your new avian mate works on filling your eager body with a fresh clutch of eggs for you to lay... And you find yourself looking forward more than ever to the many breedings and clutches of eggs to come, as you fully embrace your new life as a slutty hawkwoman with a lovely belly full of life...";
			else:
				say "Giving in to your strong new hawk-like instincts, you spread your wings and take to the sky for the first time, enjoying the feeling of freedom as you slowly begin to master the skies above the infected city. Before long you are soaring through the skies with ease, and enjoying the feel of the wind rushing over your feathers as your eyes scan the city below for someone to play with. Unfortunately, the city is full of other infected, and most of the people have already become playtoys already, which leaves you flying aimlessly through the skies, until you realize that you are being silly. Looking up at the open skies around you, you can feel a grin tugging at your beak as you begin to angle your wings to take you down the coast a ways. There is after all a whole wide world out there full of people you can chase and catch. And the open skies are calling out to you as you head off in search of new places to hunt, and new partners to share the joys of flight with. Let the military do with the city as they wish, you find yourself thinking as you fly under the cover of the night sky, you have the world out there to play in...";
		else:
			say "When the military rescues you from the city, you find yourself watched closely by their scientists, as they seem fascinated by your new avian form, and the changes in your muscle density and bone mass. Their attention makes you nervous, and before long you are asking to leave, especially once they start talking about bone marrow samples and similar painful tests. Fortunately enough, they are soon far too busy dealing with the fallout from the city and some of the other infected who they 'rescued' that are causing problems in camp to devote full attention to you for very long, and soon enough you are released. Wandering around outside of the city, you soon find your new looks gathering quite a bit of attention, though they certainly aren't very helpful in finding a job of some sort. Eventually you manage to get a job as a mail courier, and while it is rather dull delivering the mail and packages most days, it does let you meet some rather interesting people. One day you even meet a fellow avian, a sexy black [one of]hawkman[or]tengu[or]eagle[or]gryphon[at random], the powerful male is more than happy to meet you as well, and while both of you have never given yourself over to your new instincts enough to master your new wings and fly, you still find the draw of meeting a fellow avian to be nearly irresistible. [if player is female]Before long the two of you are inseparable, and it isn't much longer before you are expecting your first clutch of eggs, and you find yourself eagerly anticipating seeing just how they will look when they finally hatch, and looking forward to many more clutches of eggs in the future[else]After a few months and becoming friends, he introduces you to his sister, who was similarly infected. He held back on telling you about her until your friendship was strong enough that he could trust you. You both hit it off and are soon a happy couple with a clutch on the way[end if].";

Hawkman ends here.
