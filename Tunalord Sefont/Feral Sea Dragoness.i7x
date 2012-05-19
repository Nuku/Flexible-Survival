Feral Sea Dragoness by Tunalord Sefont begins here. 

"Adds a Feral Sea Dragoness to Flexible Survivals Wandering Monsters table"

Section 1 - Monster Responses

[ Use To say for overlong behaviors that would make the table difficult to read and understand. Typically needed if there are alot of cock/species/cunt checks.. ] 
dragonessdefeat is a number that varies.
dragonessmemory is a number that varies.
to say dragoness attack:
	say "She shoves you over with a forceful push from her head.  Then circling around you a few times before she walks over you.  The dragoness steps over you as you stare up at her.  Her [one of]seafoam[or]sky blue[at random] colored underbelly passing over you.  She lowers her head and sniffs your face.  Exhaling through her nostrils before drawing her head down along your body as she inhales your scent.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	if cocks of player is greater than 0:
		say "The dragon begins to sniff more eagerly the lower her head goes.  Suddenly she eagerly calls out.  The sound high pitched and similar to the song of a whale.  She then lifts her head for a moment before rapidly nipping at you.  Any clothes present are quickly torn apart.  She then sits rather awkwardly and begins to lap at your [cock size desc of player] cock.";
		follow the sex change rule;
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if cock length of player is less than 8:
			say "Suddenly the dragon lifts her head and stares at your cock for a moment before keening to the air.  Thrashing her head about.  Obviously upset about something before she flops onto her side as she tries to jump up.  Throwing sand everywhere she scrambles back up to her four feet and sprints into the water.  The horrid sound of her keens could be heard on and off for a few moments before finally disappearing.";
		otherwise:
			say "The dragoness chirps as she finishes her licking.  She just sits there and stares at you expectantly.  Tilting her head for a moment she licks her lips before rising from her sitting position. Her form moves over you.  Making you uneasy with this massive creatures body beginning to grind against you.  Her body continues to brush past you.  Her warm and delicately scaled underbelly brushing across you until you feel her cunt touch the head of your [cock of player] cock.";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if cock length of player is less than 15:
			say "She pushes herself down onto your cock but doesn[apostrophe]t rise back up.  She stares down at you and makes an inquisitive noise.";
			if dragonessmemory is 1:
				Say "You shake your head.  Knowing what it is she wants you to do.  You seriously do not want to eat more partially digested fish.  She chirps in a way that sounds firm as she presses you to the ground with her bulk.  Then grabbing your face with her jaws and regurgitates fish against your [face of player] face.  You struggle but she has too firm a grip.  Eventually you open your mouth to breath and end up with a mouthful of fish.  Oddly it[apostrophe]s more pleasant than the first time.";
				if a random chance of 1 in 5 succeeds, now dragonessmemory is 2;
				decrease the hunger of the player by a random number from 10 to 30;
			otherwise if dragonessmemory is 2 or dragonessmemory is 3:
				say "You find yourself chirping back as you nod your head.  Your mouth watering at the thought of fish.  You open your maw expectantly and soon it is being filled with fish.  All too soon she is done feeding you and stands up before crooning to you.";
				if a random chance of 1 in 5 succeeds, now dragonessmemory is 3;
				decrease the hunger of the player by a random number from 10 to 30;
			if dragonessmemory is 0:
				say "You shrug.  Not sure what she wants.  Suddenly she lifts her head and starts to clench her body in a strange way.  She makes an unsettling sound and lowers her muzzle to your face.  Expecting a kiss you open your mouth hesitantly only to find it being filled with partially digested fish.  Your eyes widen and you struggle to get free only to have the dragoness get a firm grip on your face with her jaws.  With no other option available you reluctantly begin to swallow the fish.  After you finish the ‘meal' she gives you she begins to rumble as she licks your cheek and stands up.  Then walking off into the water.";
				now dragonessmemory is 1;
				decrease the hunger of the player by a random number from 10 to 30;
		if cock length of player is greater than 14:
			say "She begins to sink down onto your cock.  Making cooing chirps as she does.  Once she fully encases your [cock of player] member she begins to rumble happily.  Her rumbling vibrations increase the pleasure of her passage.  She wriggles for a moment before beginning to rock against your [cock length of player] member.  She held her head up high and you could see it bob with her motions.  Picking up speed she starts to sing.  Her voice somehow sends your pleasure to blinding heights.  Your vision blurring as the song makes you cum into her.  The last thing your aware of is her song reaching a peak.  Sometime later, you wake up coated in the cum from both you and the dragoness.  She is nowhere to be seen so you stand up and start scraping yourself clean as you collect your things from the sand.";
	otherwise:
		say "The dragoness sniffs along your form before sniffing at your groin. She sniffs around it for awhile before lifting her head.  Licking your face the dragoness whines and huffs.  Soon she wanders back to the water leaving your face coated with saliva.";


To say dragoness loss:
		say "The dragoness makes a long pleading wail before rushing back into the depths.";
	
Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--


When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "feral sea dragoness"; 
	now attack entry is "[one of]The dragoness calls out and nips at you.[or]The dragoness slaps you with her narrow tail knocking you across the ground.[or]She tackles you and grinds herself against you before you manage to get free thanks to the loose sand.[or]She sings to you.  Breaking your focus and making you trip over a rock.[at random]";
	now defeated entry is "[dragoness loss]";
	now victory entry is  "[dragoness attack]";
	now desc entry is "You pause as you notice something in the water.  You watch it walk onto the sandy coast.  It walks around the beach a moment sniffing the air.  After a moment she turns towards you[one of].  The dragoness coos as she begins to come closer[or].  The dragoness sings briefly sending a jolt of pleasure through you[or].  The dragoness chirps as she tilts her finned head and starts to get closer[at random].  She gets close to you and tries to nip at you.";
	now face entry is "draconic muzzle filled with barb like teeth.  Delicate ridges and fins line the sides of your";[ Reference "You have a (your text) face."] 
	now body entry is "a sleek streamlined mass of masculine draconic bulk.";[ Body Description, format as the text "Your Body is (your text)"] 
	now skin entry is "[one of]blue smoothly scaled[or]blue softly scaled[or]blue delicately scaled[at random]";[Reference "You have (your text) skin"] 
	now tail entry is "You have a long narrow tail with a sail adorning the top and covered in [skin of player] skin.";
	now cock entry is "spade tipped and tapered black";
	now face change entry is "your face draws forward into narrow draconic muzzle. "; [Reference "Your face feels funny as (your text)" ]
	now body change entry is "it begins to swell with sleek highly muscled draconic flesh."; [ Reference "Your body feels funny as (your text)" ]
	now skin change entry is "your flesh becomes tougher and somewhat smoother as it becomes scaled."; [ Reference "Your skin feels funny as (your text)" ]
	now ass change entry is "your center of balance tips dangerously as a tremendously long yet narrow tail explodes from your ass. A small sail forming along the top."; [ Reference "Your ass feels funny as (your text)" ]
	now cock change entry is "your cock turns black as it gradually tapers towards the tip.  As the tapering reaches the tip it spreads out into a spade shape.";
	now str entry is 30;
	now dex entry is 14;
	now sta entry is 28;					
	now per entry is 12;
	now int entry is 6;
	now cha entry is 3;
	now sex entry is "Male"; 	
	now hp entry is 80;			
	now lev entry is 7;			
	now wdam entry is 23;			
	now area entry is "Beach";
	now cocks entry is 1;			
	now cock length entry is 21;		
	now cock width entry is 15;		
	now breasts entry is 0;			
	now breast size entry is 0;		
	now male breast size entry is 0;	
	now cunts entry is 0;			
	now cunt length entry is 21;		
	now cunt width entry is 15;		
	now libido entry is 25;			
	now loot entry is "lucky horseshoe";			
	now lootchance entry is 0;		

when play ends:
	if bodyname of player is "feral sea dragoness":
		if humanity of player is less than 10:
			say "You head to the beach.  Thoughts no longer concerning you.";
			if cunts of player is greater than 0:
				say "You stumble as you catch the scent of a virile male dragon.  Lifting your head as highly as you can you try to locate the scent.  A need ignites inside you giving you an urgent need to find the male.";
			otherwise if cocks of player is greater than 0:
				say "You scent the magnificent scent of sea dragoness in season.  Letting out a deep rumbling roar you let it be known that this is your beach.  You hear dragoness song in the distance and call out again.  She soon arrives and you rumble as you approach her.  Chirping the dragoness turns and presents herself to you.  You rumble lightly as you climb onto your first dragoness.  You work for a couple moments to line up your [cock size desc of player] cock with her dripping cunt.  Growling you thrust in harshly and grab the dragoness's neck in your jaws.  Roughly mating her and roaring as you fill her.  Claiming her as yours.  Now finished you pull you [cock of player] cock free and dismount her.  Then you head out to sea to locate a cave to house your forming harem.";
			if cocks of player is greater than 0:
				if cunts of player is less than 1:
					if humanity of player is greater than 10:
						say "Your new form is quite pleasant.  Although you can[apostrophe]t bare to be too far from the ocean.  Luckily you find a job as a lifeguard.  You excel at your job and you begin receiving offers from beach towns that wish to have you to attract tourism.";
					if humanity of player is less than 50:
						if humanity of player is greater than 10:
							say "You lose yourself in the fame your skill and appearance create. Soon you[apostrophe]ve transformed your fame to infamy as a lapse of control leads to you attempting to rape a swimmer on live television.  You stop receiving offers and soon aren[apostrophe]t even welcome at any beaches.  You eventually decide it[apostrophe]s best if you live your life out at sea.";
					if humanity of player is greater than 50:
						say "You enjoy your fame and fortune.  You have one close call with your beastly urges but had managed to restrain yourself.  You begin to build a harem.  To keep your urges under control.  Every evening your specially designed home is filled with the sounds of draconic rutting.";
		otherwise:
			if humanity of player is greater than 10:
				say "Your form is that of a sea dragon.  It may be that of a quadruped, but it has its own beauty about it.  You are glad you were able to escape that dragon that changed you.";
				if humanity of player is less than 50:
					say "You feel compelled to return to the ocean.  You swim leisurely for a couple hours.  The caress of the currants filling you with a bliss as you hear a faint sound.  You cock your head as you identify the sound.  Speech.  soon you notice shadows pass by and recognize the shapes to be those of surfboards.  Two of them.  You suddenly realize you can smell them through the water.  You float in place for a moment as you cock begins to emerge.  Then you see your chance and take it!  You grab one of the surfers legs with your jaws.  Holding them to your belly with your forepaws you begin to pound the otters ass.  You don[apostrophe]t care what its gender is.  Your only care is getting off.  In only a minute or two the water turns cloudy as you fill the unconscious otter boy with your noninfectious sperm.  Now sated you realize he can[apostrophe]t breathe underwater.  You swim closer to shore and deposit him.  Staying only long enough to be sure they found him.  This continues for a few weeks.  Then the surfers stop showing up. One day you find yourself staring at the empty beach from just offshore.  You make a squealing whale song kind of noise trying to express your need to anyone who will listen.  Sadly no one hears it and you disappear back to the sea.  Only returning to shore during surf season to satisfy your needs.  You become ecstatic the first time you discover you can fit them inside your cunt.";
			if humanity of player is greater than 50:
				say "You fight the urge to live at sea, but you can't stay away from it.  You find yourself lounging on the beach.  Feeling no need to have any property you are perfectly content to just lay in the sand.  The beach soon becomes a popular tourist attraction due to your presence.  Your days are filled with entertaining children while nights bring those interested in your dual genitals.";
		if cocks of player is less than 1:
			if humanity of player is greater than 10:
				if humanity of player is less than 50:
					say "You walk into the water as the military arrives and swim off.  Living for a couple weeks off nothing but fish.  Eventually you find yourself on another beach.  You lie down in the sand and stretch yourself out as those on the beach show interest in you.  You lift your head and open your jaws a moment, but your now unsure what you were trying to do and close them.  Then set your head back on the sand as the furred scaled and humans in the crowd continue to gawk at you.  Eventually officials show up and begin to persuade you into a large truck.  You see the letters on it and try piecing them together but no matter how much you try they just don[apostrophe]t seem to have meaning.  You only spend two days at your destination before your being passed to a wealthy looking man.  He takes you to his manor where he introduces you to your new home.  The next week you find yourself easily accepting the artificial beach as your home.  Once the week is up the man makes some noises that sound oddly familiar before another sea dragon is led into the enclosure.  Curious you begin to inspect the dragon and discover it[apostrophe]s a male!  You soon find yourself leading him around the enclosure.  Teasing him with glimpses of your cunt.  He makes sounds that you vaguely understand and you struggle to find words to respond 'Come. go. g-get some.'  You lower your chest to the ground and move your tail out of the way invitingly.  You growl as he takes his time to mount you.  He gets the message and forcefully drives his black cock into you.  You sing your pleasure as he roughly ruts you.  Your head lays on the sandy ground as the rough mating puts you in a pleasant haze.  It[apostrophe]s over quickly and something in your mind nags at you that it could have been better, but you just feel sated and collapse into the sand.  His cum leaking from your cunt into the sand.  He says something and walks off to the water as you begin thinking about how great it[apostrophe]ll be to have a clutch of eggs.";
				otherwise if humanity of player is greater than 50:
					say "You escape into the sea.  Cautiously following the coastline you swim for a few days.  Eventually you come across another beach.  You walk out of the sea onto the beach and look around.  Heading off to a nearby city.  You scare off almost everyone you come across.  Apparently it was going to be difficult to fit in. Eventually you find someone who isn[apostrophe]t scared of you and you ask him for help.  He agrees to house you and feed you as payment for a job.  You agree and it turns out he owns a hotel.  It isn[apostrophe]t enormous but big enough to afford the cost of feeding a dragoness.  As word spreads of the hotels new main attraction you discover a way to make tips.  You discovered it by overhearing a conversation of two patrons and decided to take up their idea.  So you grabbed one of them and took him to your private den near the lobby.  Dropping him on your bedding you turn around and lower yourself as you suggestively say 'I hear you[apostrophe]re interested in mating a dragoness.'  He doesn[apostrophe]t hesitate and begins to thrust his human penis into you.  At first it doesn[apostrophe]t seem to be worth it.  However soon his cock begins to grow.  Filling you much more snugly.  You smile as it turns into a worthy endeavor thanks to you still being a little infective.";


Feral Sea Dragoness ends here.