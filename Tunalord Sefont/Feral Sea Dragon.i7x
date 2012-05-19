Feral Sea Dragon by Tunalord Sefont begins here. 
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]

"Adds a Feral Sea Dragon to Flexible Survivals Wandering Monsters table, With Impreg chance"
[Description text for this Extension.]

Section 1 - Monster Responses

[ Use To say for overlong behaviours that would make the table difficult to read and understand. Typically needed if there are alot of cock/species/cunt checks. ] 
dragondefeat is a number that varies.
dragonmemory is a number that varies.
to say dragon attack:
	say "The male dragon roars dominance as he bests you.  The beast huffs out a sound reminiscent of a laugh as he swaggers towards you.  His cock starting to slide free as the great beast nears you.";
	if bodyname of player is "feral sea dragon" or bodyname of player is "feral sea dragoness":
		if cunts of player is greater than 0:
			say "The dragon sniffs at you as he approaches you.  He walks up next to your defeated form and says 'Ah, a dragoness.'  Chuckling as he stands you up and mounts you.";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			if cunt length of player is less than 12:
				say "He presses the head of his cock to your cunt and presses lightly.  After a moment he stops and dismounts.  He circles around you and says 'I don[apostrophe]t want to break my new breeder. Climbing onto you and guiding your head to his dripping cock.  You feel a wave of submission wash over you and can no longer resist if you tried.  Opening your jaws you take his member into your mouth.  Being careful with your teeth you begin to suckle the shaft.  Avoiding letting your teeth touch it when you pull your head back.  Then letting them rest gently against it as you press forward.  You make a song like sound as you begin to enjoy serving the male.  Your dragoness urges making you submissive to this male.  Thought comes only vaguely as you focus solely on pleasing the male.  You pick up speed as the male begins to rumble happily.  His claws digging into your shoulders.  Suddenly he roars out and your mouth is filled by a sudden blast of cum.  He pulls his cock free and the last of his cum lands on your face.  You find yourself licking at it in a lustful haze.";
				say "Padding off to the waters edge he says 'I will see you again.'  Then he dives in and swims off.";
			otherwise:
				say "He presses the head of his cock to your cunt and hisses next to your head as he sinks his spaded shaft into you.  Your eyes bulge as the surge of pleasure the spade tip gives you is better than anything you've felt before.  You begin to pant by the time his shaft is halfway in.  He then begins to pull back causing you to wail out in instinctual fear that he was done.  However soon he thrusts into you again making it deeper inside.  You coo as his shaft refills you.  The tempo then begins.  Pulling out and thrusting in.  You become limp except for you hind legs as you repeatedly take the draconic cock.  Your cunt constricting on it as it feels as if it was made for you.  Time seems to stand still as juices run down your thigh.  Your blissful state coming to an end as he thrusts once last time extra forcefully and fires his cum deep inside you.  Both you and him announce your dual orgasms.  His a deep throaty roar.  Yours a beautifully sounding song.";
				say "He dismounts you.  His cock popping out of your cunt with a moist sucking sound.  He then huffs and says 'I'll be waiting for you to return...' then he goes back into the sea without another word.";
		otherwise:
			say "The dragon gives a sudden hiss and glares at you saying 'These waters are MINE!  You are not welcome here.' before he claws your side and returns to the water.";
	otherwise:
		say "The beast viciously snaps at you with its jaws.  Throwing you to the ground while only leaving minor cuts as all your clothes tear free from your form.  He then lowers his large head towards you.  Making you close your eyes in fear.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if cunts of player is greater than 0:
			if cocks of player is greater than zero:
				say "He lets out a hiss as he reaches your [cock of player] cock.  His lips pull back for a moment before he sniffs again and lowers his head just a little further and sniffs at your cunt.";
			say "He nuzzles and licks at your [cunt size desc of player] pussy.  Shocking you out of your fear of being eaten.  Suddenly he presses the forked end of his tongue inside your cunt.  Seemingly checking for something.  His thick and slimy drool beginning to coat your lower half.";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			if cunt length of player is greater than 11:
				say "The beast huffs and rips his tongue free of your cunt. Then he repositions himself over you. His massive cock looks as if it could tear you apart! The  spade shaped tip presses against your entrance for a moment before the beast suddenly begins to piss IN you.  You womb filling up in seconds before the beast drops its head near yours.  It remains motionless for a few seconds before speaking in a strange language that you can somehow understand! 'You will be mine.'  He then backs away from you and gives you a knowing look before he rushes back into the water.";
				wait for any key;
			otherwise:
				say "The dragon lets out an airy hiss.  Its breath reeking of decayed fish.  Then leisurely drawing its tongue free.  Savoring the flavor of your fluids he lifts his head and positions his cock.  The massive shaft gives you a feeling of unease.  The spaded tip pierces your tunnel.    He pushes you over the edge over and over.  His pace not even hinting at his peak.  You begin to welcome his thrusting and begin to think of him as an owner. and you his property.  Suddenly your belly bulges as his load is fired into you. You feel cum squirting out around his massive member.  You can[apostrophe]t help but sample some as he withdraws.  You lose yourself in the potent musk.  Your unsure how long you were unaware of your surroundings but he is now gone. [impregchance]";


To say dragon loss:
		say "You grin in triumph in your success! This mighty beast vanquished under your own power.";
	
Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "feral sea dragon"; [Name of your new Monster]
	now attack entry is "[one of]The dragons massive head slams against you.[or]The dragon slaps you against a cluster of rocks with its rudder like tail.[or]It slams you into the soft sand by hammering you with its narrow tail.[or]He stomps you into the soft sand with its webbed hand like paw.[at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "[dragon loss]"; [ Text or say command used when Monster is defeated.]
	now victory entry is  "[dragon attack]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.] 
	now desc entry is "You pause as you notice something in the water.  You stare at it trying to identify it when suddenly a massive beast launches out of the water and lands on the beach near you[one of]. The dragon sniffs the air before looking at you hungrily[or]. The dragon roars its challenge to you as it glares at you[or]. The dragon eyes you unnervingly as it seems to consider you for some purpose[at random]. Suddenly its massive bulk is rushing towards you and the option of escape is looking very tempting.";[ Description of the creature when you encounter it.]
	now face entry is "draconic muzzle filled with razor sharp teeth. Rather delicate ridges and fins line the sides of your";[ Face description, format as the text "Your have a (your text) face."] 
	now body entry is "a sleek streamlined mass of draconic bulk.";[ Body Description, format as the text "Your Body is (your text)"] 
	now skin entry is "[one of]blue smoothly scaled[or]blue softly scaled[or]blue delicately scaled[at random]";[ skin Description, format as the text "You have (your text) skin"] 
	now tail entry is "You have a long narrow tail with a sail adorning the top and covered in [skin of player] skin.";[ Tail description, write a whole Sentence or leave blank. ] 
	now cock entry is "spade tipped and tapered black";[ Cock Description, format as you have a 'size' (your text) cock] 
	now face change entry is "your face draws forward into narrow draconic muzzle. "; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "it begins to swell with beautifully proportion draconic bulk.  Ending with you now having the body of a feral sea dragoness."; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "your flesh becomes tougher and somewhat smoother as it becomes glittering scales."; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "your center of balance tips dangerously as a tremendously long yet narrow tail explodes from your ass. A small sail forming along the top."; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "your cock turns black as it gradually tapers towards the tip.  As the tapering reaches the tip it spreads out into a spade shape.";
	now str entry is 20;
	now dex entry is 16;
	now sta entry is 20;					
	now per entry is 14;
	now int entry is 8;
	now cha entry is 4;
	now sex entry is "Female"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 100;			[ How many HP has the monster got? ]
	now lev entry is 10;			[ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ] 
	now wdam entry is 34;			[Amount of Damage monster Does when attacking.]
	now area entry is "Beach";	[ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 0;			[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 0;		[ Length infection will make cock grow to if cocks]
	now cock width entry is 0;		[ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 0;			[ Number of Breasts infection will give you. ]
	now breast size entry is 0;		[Size of breasts infection will try to attain ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 21;		[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 15;		[ Width of female sex  infection will try and give you ] 
	now libido entry is 45;			[ Amount player Libido will go up if defeated ]
	now loot entry is "lucky horseshoe";			[ Loot monster drops, ]
	now lootchance entry is 0;		[ Chance of loot dropping 0-100 ]

when play ends:
	if bodyname of player is "feral sea dragon":
		if humanity of player is less than 10:
			say "You find yourself at a seaside cave.  With a need to be filled and be filled by only one individual.  You lie down in the cave and await his return to claim his property.";
			if cunts of player is greater than 0:
				say "He arrives just as the sun is setting in clear view of the cave.  You waste no time in presenting your hungry [cunt size desc of player] cunt to his hungry eyes.  He is quick to jump onto your scaly back and drive his shaft home. You are consumed with pleasure as your one purpose is being fulfilled.  The days pass.  He kills your male young but adds the females to his growing harem.  You stare on in jealousy as he mates your daughters as they become fertile. Your belly too full of eggs to earn his attentions.  However you know that once you're free of this clutch he'll be filling you with another, then another, and another...";
			otherwise if cocks of player is greater than 0:
				if cunts of player is greater than 0:
					say "He arrives soon after you did. You show him your eager [cunt size desc of player] cunt.  He is wary at first due to your [cock of player] cock, but soon smiles as he smells your female scent.  The male approaches you and slowly climbs onto your back.  His already hard shaft prodding your [cunt size desc of player] cunt.  He then whispers to you 'You just wanted to have one of your own, huh?'  Emphasizing his final word with a firm thrust.  You can only make sounds resembling that of whale song.  He chuckles as he continues to rapidly bury himself within you.  He addresses you again as whatever resistance you may have managed to hold onto melts away. 'You may have a tool of your own, but only I' He pauses as his tail flicks your [cock of player] cock.  Then he finishes what he was saying 'Get to choose when and who you can use it on.' He then blasts his copious fluids into your womb.  The years pass and you are happily swollen with eggs. The dragon that changed you allows you to mount your daughters after he has had his fill.  You enjoy your new life immensely.";
				otherwise:
					say "You are awakened in the middle of the night.  The dragon does not look pleased to see you and in your subservient state he receives no resistance as he tears into your throat.  You quickly pass out and the next thing you[apostrophe]re aware of is being cared for by a surfer.  You and her get close but you[apostrophe]re never truly happy.  The one you wanted to please most had rejected you.";
		otherwise if cocks of player is greater than 0:
			if cunts of player is less than 1:
				if humanity of player is greater than 10, say "Your new form is quite pleasant.  Although you can[apostrophe]t bare to be too far from the ocean.  Luckily you find a job as a lifeguard.  You excel at your job and you begin receiving offers from beach towns that wish to have you to attract tourism.";
				if humanity of player is less than 50, say "You lose yourself in the fame your skill and appearance create. Soon you[apostrophe]ve transformed your fame to infamy as a lapse of control leads to you attempting to rape a swimmer on live television.  You stop receiving offers and soon aren[apostrophe]t even welcome at any beaches.  You eventually decide it[apostrophe]s best if you live your life out at sea.";
				if humanity of player is greater than 49, say "You enjoy your fame and fortune.  You have one close call with your beastly urges but had managed to restrain yourself.  You begin to build a harem.  To keep your urges under control.  Every evening your specially designed home is filled with the sounds of draconic rutting.";
			otherwise:
				if humanity of player is greater than 10:
					say "Your form is that of a sea dragon.  It may be that of a quadruped, but it has its own beauty about it.  You are glad you were able to escape that dragon that changed you.";
					if humanity of player is less than 50:
						say "You feel compelled to return to the ocean.  You swim leisurely for a couple hours.  The caress of the currants filling you with a bliss as you hear a faint sound.  You cock your head as you identify the sound.  Speech.  soon you notice shadows pass by and recognize the shapes to be those of surfboards.  Two of them.  You suddenly realize you can smell them through the water.  You float in place for a moment as you cock begins to emerge.  Then you see your chance and take it!  You grab one of the surfers legs with your jaws.  Holding them to your belly with your forepaws you begin to pound the otters ass.  You don[apostrophe]t care what its gender is.  Your only care is getting off.  In only a minute or two the water turns cloudy as you fill the unconscious otter boy with your noninfectious sperm.  Now sated you realize he can[apostrophe]t breathe underwater.  You swim closer to shore and deposit him.  Staying only long enough to be sure they found him.  This continues for a few weeks.  Then the surfers stop showing up. One day you find yourself staring at the empty beach from just offshore.  You make a squealing whale song kind of noise trying to express your need to anyone who will listen.  Sadly no one hears it and you disappear back to the sea.  Only returning to shore during surf season to satisfy your needs.  You become ecstatic the first time you discover you can fit them inside your cunt.";
				if humanity of player is greater than 50:
					say "You fight the urge to live at sea, but you can't stay away from it.  You find yourself lounging on the beach.  Feeling no need to have any property you are perfectly content to just lay in the sand.  The beach soon becomes a popular tourist attraction due to your presence.  Your days are filled with entertaining children while nights bring those interested in your dual genitals.";
		otherwise if cocks of player is less than 1:
			if humanity of player is greater than 10:
				if humanity of player is less than 50:
					say "You walk into the water as the military arrives and swim off.  Living for a couple weeks off nothing but fish.  Eventually you find yourself on another beach.  You lie down in the sand and stretch yourself out as those on the beach show interest in you.  You lift your head and open your jaws a moment, but your now unsure what you were trying to do and close them.  Then set your head back on the sand as the furred scaled and humans in the crowd continue to gawk at you.  Eventually officials show up and begin to persuade you into a large truck.  You see the letters on it and try piecing them together but no matter how much you try they just don[apostrophe]t seem to have meaning.  You only spend two days at your destination before your being passed to a wealthy looking man.  He takes you to his manor where he introduces you to your new home.  The next week you find yourself easily accepting the artificial beach as your home.  Once the week is up the man makes some noises that sound oddly familiar before another sea dragon is led into the enclosure.  Curious you begin to inspect the dragon and discover it[apostrophe]s a male!  You soon find yourself leading him around the enclosure.  Teasing him with glimpses of your cunt.  He makes sounds that you vaguely understand and you struggle to find words to respond 'Come. go. g-get some.'  You lower your chest to the ground and move your tail out of the way invitingly.  You growl as he takes his time to mount you.  He gets the message and forcefully drives his black cock into you.  You sing your pleasure as he roughly ruts you.  Your head lays on the sandy ground as the rough mating puts you in a pleasant haze.  It[apostrophe]s over quickly and something in your mind nags at you that it could have been better, but you just feel sated and collapse into the sand.  His cum leaking from your cunt into the sand.  He says something and walks off to the water as you begin thinking about how great it[apostrophe]ll be to have a clutch of eggs.";
				otherwise:
					say "You escape into the sea.  Cautiously following the coastline you swim for a few days.  Eventually you come across another beach.  You walk out of the sea onto the beach and look around.  Heading off to a nearby city.  You scare off almost everyone you come across.  Apparently it was going to be difficult to fit in. Eventually you find someone who isn[apostrophe]t scared of you and you ask him for help.  He agrees to house you and feed you as payment for a job.  You agree and it turns out he owns a hotel.  It isn[apostrophe]t enormous but big enough to afford the cost of feeding a dragoness.  As word spreads of the hotels new main attraction you discover a way to make tips.  You discovered it by overhearing a conversation of two patrons and decided to take up their idea.  So you grabbed one of them and took him to your private den near the lobby.  Dropping him on your bedding you turn around and lower yourself as you suggestively say 'I hear you[apostrophe]re interested in mating a dragoness.'  He doesn[apostrophe]t hesitate and begins to thrust his human penis into you.  At first it doesn[apostrophe]t seem to be worth it.  However soon his cock begins to grow.  Filling you much more snugly.  You smile as it turns into a worthy endeavor thanks to you still being a little infective.";


Feral Sea Dragon ends here.
