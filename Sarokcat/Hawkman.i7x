Hawkman by Sarokcat begins here. 
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]

"Adds a Hawkman to Flexible Survivals Wandering Monsters table"
[Description text for this Extension.]

Section 1 - Monster Responses

when play begins:
	add { "Hawkman" } to infections of guy;
	add { "Hawkman" } to infections of furry;

[ Use To say for overlong behaviours that would make the table difficult to read and understand. Typically needed if there are alot of cock/species/cunt checks. ] 

to say Hawkman attack:
	if cunts of player is greater than 0:
		say "The hawkmans beak spreads open in a wide grin as you finally stop fighting him, he wastes no time in leaping forward and knocking your unresisting form to the ground, chuckling happily as he rubs his surprisingly soft feathers up against your body eagerly. You find yourself moaning softly as his avian form pins you to the ground, his  taloned feet gripping your legs and stroking them lightly as he spreads them wide open for him. His wings open wide and enclose the two of you in a small tent smelling strongly of his masculine presence, and your body begins to burn with need even as he positions his narrow pink cock in front of your already damp female opening. You feel strangely comfortable and protected as he buries himself in your waiting passage, and you moan happily with pleasure as he nuzzles your neck with his hooked raptor beak. The feel of his avian organ in your body is absolutely wonderful, as it seems to reach deep inside you and stroke you in all the right places, and the almost hypnotic building rythm of his short thrusts into your body makes your mind fill with pleasure as you bury your fingers in his lovely feathered sides. It isn[apostrophe]t long before you are gasp and shuddering in orgasm underneath him as he fills your body with his wonderful avian seed, your body eagerly responding to his seeding with a rush of amazing pleasure even as he cries out his triumph to the empty streets around you. You find yourself smiling happily as he pulls himself off of you, the hawkman rubbing his beak over your well used body a few times before taking to the air again, and as you begin to try to gather your wits about you, you find yourself almost idly wondering as you rub your belly whether or not you will see the handsome bird again anytime soon....[impregchance]";
		infect "Hawkman";
	otherwise:
		say "Knocking you to the ground, the hawkman screams his triumph as he stands over you, his beak cocked to the side as he seems to examine you minutely, before making a noise of avian disgust. You sit up as the birdman flaps his wings and takes to the sky again, only to stare in surprise as he begins to stroke himself off above you, the hunt and the combat obviously having only increased the strange creatures arousal. Within a minute he shudders, his cock twitching as he covers your beaten form with his sticky white seed, the seed seeming to tingle even as it sinks into your body, and the watching hawkman lets out a sound of satisfaction before flying off into the city in search of more prey, leaving you lying there trying to deal with your new changes.";
		infect "Hawkman";
		

To say Hawkman loss:
	say "With one last vicious blow, you knock the hawkman back, the creature seemingly surprisingly fragile for all its striking power, and as it hops back and takes to the sky again to flee, you wonder if its bones are just as delicate as most birds... Sighing you turn to continue on your way, though you resolve to keep a better eye on the sky above just in case more of those surprisingly sexy hawkmen are in the area.";

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Hawkman"; [Name of your new Monster]
	now attack entry is "[one of]He lashes out at you with his wing, the powerful wing strike smashing you backwards.[or]The hawkman flaps his wings and gains a leaps into the air, lashing out at you with his powerful rear talons.[or]he grabs at you with his talonlike fingers.[or]He charges forward, his wings flapping behind him giving his speed as he barrels into you.[or]He lets out a loud screech causing you to duck instinctively as he barrels forward.[or]He stalks forward teasingly, his rythmic movements almost hypnotic as he postures in front of you.[or]He strikes forward with his large predatory beak and rubs it against you teasingly.[or]The hawkman stretches forward with one of his taloned fingers and strokes his cool finger down the side of your face teasingly.[at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "[Hawkman loss]"; [ Text or say command used when Monster is defeated.]
	now victory entry is  "[Hawkman attack]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.] 
	now desc entry is "As you wander through the city streets, you hear a whistling sound from above, and look up to see a powerful avian form swooping down towards you. You jump back as it lands in front of you, and you get a closer look at the creatures raptorlike form as it stalks towards you on his taloned feet. The strange bird like man has large hawklike wings stretching out from his back, and stalks forward on avian talons, while his rather talonlike hands stretch towards you eagerly, and the rest of his body is covered in rather soft and beautiful looking brown patterned feathers. The obviously male creature is half erect as he cocks his avian head to the side appraisingly, and you can swear you can see a lecherous grin stretching across his beak as he leaps forward to attack.";[ Description of the creature when you encounter it.]
	now face entry is "narrow hawklike head, with a sharp curved raptorlike beak and two sharp piercing hawklike eyes in your new avian";[ Face description, format as the text "Your have a (your text) face."] 
	now body entry is "lithe and slim, with powerful taloned feet and rather clawlike taloned hands, your avianlike body sports two large powerful wings, which catch the air behind you and make you almost feel like you could fly.";[ Body Description, format as the text "Your Body is (your text)"] 
	now skin entry is "[one of]soft feathered[or]brown feathered[or]hawklike[or]feathered[at random]";[ skin Description, format as the text "You have (your text) skin"] 
	now tail entry is "You have a rather large tail made of feathers folded neatly behind you, its patterned feathers seeming to shine and shimmer behind you as it flexes and spreads out behind you with every step you take. ";[ Tail description, write a whole Sentence or leave blank. ] 
	now cock entry is "[one of]slim pointed[or]avian[or]hawklike[at random]";[ Cock Description, format as you have a 'size' (your text) cock] 
	now face change entry is "your nose seems to flatten out, and you fight to breathe for a second as your mouth presses forward, the bones of your jaw cracking as it begins to reshape into a powerful avian beak. Your eyes swim for a minute before sharpening into the razor sharp focus of a hawk, and you gasp for breath as your beak finishes forming, your new thin birdlike tongue exploring your strangely shaped new hawklike beak curiously."; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "your bones seem to stretch and flex under the skin for a second, your balance seeming to change as your body grows lighter, and you stagger and nearly fall as your feet shift, the knees snapping and reversing in direction as new raptorlike talons form, your hands soon shifting and following suit as they become covered in powerful birdlike talons as well. Your changes aren[apostrophe]t quite over you discover however, as all of a sudden your spine seems to shift, causing you to moan as your back bulges out, and two powerful avian wings erupt out from your sides, and you flap your new wings experimentally as you stretch out your powerful new avian form.."; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "small dimples appear over your body, covering you completely before they begin to tingle, and you feel several small pinpricks as small feathers begin to push their way out of your skin, the first set of feathers growing in quickly even as another set begins to push out to cover the soft downy underfeathers with their brown patterned hawklike markings."; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "large powerful feathers seem to erupt out from the base of your spine, the feathers seeming to fold together to form a wide flat avian like tail, the strange new appendage feeling surprisingly responsive as you spread it out behind you experimentally, the feathers feeling surprisingly good and arousing where they rub against your body."; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "it is drawn up almost entirely into your body, your penis narrowing into a rather birdlke pointed member as it slips into your newly created vent"; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 16;
	now dex entry is 20;
	now sta entry is 10;					
	now per entry is 20;
	now int entry is 12;
	now cha entry is 16;
	now sex entry is "Female"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 30;			[ How many HP has the monster got? ]
	now lev entry is 7;			[ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ] 
	now wdam entry is 13;			[Amount of Damage monster Does when attacking.]
	now area entry is "Outside";	[ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 0;			[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 0;		[ Length infection will make cock grow to if cocks]
	now cock width entry is 0;		[ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 0;			[ Number of Breasts infection will give you. ]
	now breast size entry is 0;		[Size of breasts infection will try to attain ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 8;		[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 3;		[ Width of female sex  infection will try and give you ] 
	now libido entry is 50;			[ Amount player Libido will go up if defeated ]
	now loot entry is "";			[ Loot monster drops, ]
	now lootchance entry is 0;		[ Chance of loot dropping 0-100 ]



when play ends:
	if bodyname of player is "Hawkman":
		if humanity of player is less than 10:
			if cunts of player is greater than 0:
				say "Giving in to your new hawklike instincts you spread your wings out and take to the air, the feel of the cool air whistling over your soft feathers feels amazing as you begin your first awkward flight over the city. It isn[apostrophe]t long before you have managed to master the use of your new wings however, and are soaring easily over the city and enjoying the sights of the world spread out below you. Of course your first flight doesn[apostrophe]t go unnoticed, and you soon have several handsome male hawks circling you teasingly, their beautiful feathers and virile male bodies speaking to something within you as you alter your flight path to give them teasing glimpses of your own sexy feathered body.  Several of the hawks vie for your attention for a while, but you are eventually drawn to a rather handsome specimen who has a lovely way of slipping through the air with ease, and soon find yourself following him through the air back to his nest on top of one of the buildings in the area. Already aroused from your flight, he has no trouble in getting you to spread yourself for him, and he wastes no time in mounting you and making you screech your pleasure to the sky as he takes you again and again. [line break]";
				say "You lose track of what time it is, and eventually even what day it is, as your handsome hawk mates you often, keeping you nice and happy, feeding you and making sure you are well taken care of, even as he ensures you are unable to even think about leaving your new shared nest.  Almost before you know it you can feel your belly swelling large with your new mate's seed, and you realize you are now a properly claimed and bred hawkwoman, which for some reason seems strangely satisfying to your new instincts. Soon you lay your first clutch of lovely little hawk eggs, the feeling of their ovoid shapes slipping out of your new sex is absolutely amazing, and before you know it you are panting happily in your egg filled nest with your mate looking on proudly. You find you can hardly wait for your eggs to grow and hatch into even more lovely hawks, and look forward to the happy event enthusiastically even as your new avian mate works on filling your eager body with a fresh clutch of eggs for you to lay... And you find yourself looking forward more than ever to the many breedings and clutches of eggs to come, as you fully embrace your new life as a slutty hawkwoman with a lovely belly full of life...";
			otherwise:
				say "Giving in to your strong new hawklike instincts, you spread your wings and take to the sky for the first time, enjoying the feeling of freedom as you slowly begin to master the skies above the infected city. Before long you are soaring through the skies with ease, and enjoying the feel of the wind rushing over your feathers as your eyes scan the city below for someone to play with. Unfortunately, the city is full of other infected, and most of the people have already become playtoys already, which leaves you flying aimlessly through the skies, until you realize that you are being silly. Looking up at the open skies around you, you can feel a grin tugging at your beak as you begin to angle your wings to take you down the coast a ways. There is after all a whole wide world out there full of people you can chase and catch. And the open skies are calling out to you as you head off in search of new places to hunt, and new partners to share the joys of flight with. Let the military do with the city as they wish, you find yourself thinking as you fly under the cover of the night sky, you have the world out there to play in...";
		otherwise:
			say "When the military rescues you from the city, you find yourself watched closely by their scientists, as they seem fascinated by your new avian form, and the changes in your muscle density and bone mass. Their attention makes you nervous, and before long you are asking to leave, especially once they start talking about bone marrow samples and similar painful tests. Fortunately enough, they are soon far to busy dealing with the fallout from the city and some of the other infected who they 'rescued' that are causing problems in camp to devote full attention to you for very long, and soon enough you are released. Wandering around outside of the city, you soon find your new looks gathering quite a bit of attention, though they certainly aren[apostrophe]t very helpful in finding a job of some sort. Eventually you manage to get a job as a mail courier, and while it is rather dull delivering the mail and packages most days, it does let you meet some rather interesting people. One day you even meet a fellow avian, a sexy black [one of]hawkman[or]tengu[or]eagle[or]gryphon[at random], the powerful male is more than happy to meet you as well, and while both of you have never given yourself over to your new instincts enough to master your new wings and fly, you still find the draw of meeting a fellow avian to be nearly irresistable[if cunts of player > 0].  Before long the two of you are inseperable, and it isn[apostrophe]t much longer before you are expecting your first clutch of eggs, and you find yourself eagerly anticipating seeing just how they will look when they finally hatch, and looking forward to many more clutches of eggs in the future..[otherwise].  After a few months and becoming friends, he introduces you to his sister, who was similarly infected.  He held back on telling you about her until your friendship was strong enough that he could trust you.  You both hit it off and are soon a happy couple with a clutch on the way[end if].";


[ Edit this to have the correct Name as wall]
Hawkman ends here.
