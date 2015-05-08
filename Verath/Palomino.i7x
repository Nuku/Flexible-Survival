Version 2 of Palomino by Verath begins here.
[ Updated files, reordered content, renamed infection to Palomino and made it non-infectious normally ]
[ Two new sex scenes: one random and one timed, then random after - Stripes ]

"Adds a new area (Palomino Club) and the Palomino infection to Flexible Survival."

Section 1 - The Palomino Club

The Palomino is a room. It is fasttravel. [in order to make something only found through a quest or revealed, put 'It is private.' here as well]
Palomino Exit is a door. Palomino Exit is dangerous. The marea of Palomino Exit is "Outside". Palomino Exit is undescribed. Palomino Exit is southwest of The Palomino. Southwest of Palomino Exit is Outside Exploration.

The description of The Palomino is "[palominodesc]".

to say palominodesc:
	say "     Ducking down a darkened alleyway, you find yourself standing in front of a door that has recently been painted dark red.  The sound of a techno rhythm from inside is making the door vibrate. Looking above the door, you see a hand lettered sign that simply says 'The Palomino'. Going through the door, you find yourself in a short, ordinary-looking hallway, set slightly apart from the loud music and flashing lights spreading down the hallway from around the far corner.";
	say "     Stepping around the corner of the hall, the room beyond is much bigger than you expected. It has a gothic theme going on - dark, with some rough, black, wooden tables and benches along the sides of the room and smaller, private booths with lower tables secreted away in the darker corners. There are coarse tapestries draped on the walls, one of them depicting a young man resting in the arms of a well-built anthropomorphic stallion. Looking closer at the tapestry, you can see that the young man's legs have started to shift from the knees down into digitigrade horse legs and a blond tail is just starting to grow from above his ass. There is also a random scattering of dark red cushions to offset the cellar dungeon look of the place.";
	say "     A mirror ball sparkles and sends a shimmering wave of reflected colours over the foggy dance floor, where around thirty or so people are dancing to the beat of the music. At the far end of the room, some big speakers are loudly blaring out some canned music, and a thick drink bar with several stools positioned in front of it takes up part of the room as well.";

The invent of The Palomino is { "soda" , "soda" }.

instead of sniffing Palomino:
	say "The infected dance club smells strongly of aroused males, sweat and sex.  Lots of sex.";


Section 2 - Palomino Infection

when play begins:
	add { "Palomino" } to infections of Equinelist;		[list of equine infections]

to say Palominoattack:
	say "'wow you got here how did that happen.'";
	wait for any key;
	if cocks of player is greater than 0:
		say "yay";
	otherwise:
		say "how the heck did you find me hiding here?";

To say Palominoloss:
	say "how the heck did you manage to get this, that's the real riddle I suppose...'";


Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Palomino"; [Name of your new Monster]
	now attack entry is "[one of]She riddles you this and that till you cry.[at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "[Palominoloss]"; [ Text or say command used when Monster is defeated.]
	now victory entry is "[Palominoattack]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "The Palomino is watching you!!";[ Description of the creature when you encounter it.]
	now face entry is "that is a mixture of human and equine features, with a short palomino-like muzzle and dark equine eyes. Your features are only accentuated by the multiple earrings hanging from your new, more equine ears and the long, dark black mane which hangs down the side of your face. The lovely spiked collar Tristian gave you finishes the new look of your face"; [You have a (your text) face."]
	now body entry is "that of a humanoid horse, thick and rather muscular. Your hands and feet have slightly hoof-like fingernails. You are wearing the outfit that your fellow horse goth picked out for you, your strong torso covered in a tight, long-sleeved fishnet shirt, the fishnet pattern tracing down your well-muscled arms to your spiked cuffs. Your thick, black leather pants only serve to accentuate your well-defined lower body, and your slightly hoof-like feet rest easily in the modified black leather boots Tristian had made for you";[ Body Description, format as the text "Your Body is (your text)"]
	now skin entry is "[one of]palomino spotted[or]lightly furred[or]palomino furred[at random]";[ skin Description, format as the text "You have (your text) skin"]
	now tail entry is "You have a long black horse's tail hanging from your rear, swishing from side to side across your rear. Someone has braided a few small pieces of gothic silver jewelry into the tail, and it makes a soft chiming noise as it sways when you walk.";[ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "[one of]stallion[or]equine[or]flared[at random]";[ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "you wake up from your long night with the stallion. You yawn and stretch, only to find your mouth opening wider than ever before and a strange loud jingling noise in your ears.  Blinking, you reach up to find that your face seems to have changed at some point during the night. As you blink your new equine eyes, you trace your fingers over your new equine snout, and then reach up to tug on your larger equine ears. As your ear jingles again, you realize that at some point while you were resting your partner took time to attach several ear rings to your new ears. The thought makes you smile as you look around, for him, only to spot a spiked leather collar he obviously left out for you.  Your new muzzle pulls back into a larger grin as you slip the collar on and get ready to face the day"; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "you wake up from your long night with the stallion. You notice your body has changed at some point to be more like his, and you take in your new more equine form in amazement, wiggling your new feet and enjoying its well-shaped form.  Looking around, you note that he has laid out a nice new outfit to go with your new body. As you look over the items he left, you find yourself smiling at the fishnet shirt and black leather pants he left you, as well as the proper spiked cuffs and specially modified boots for your new feet"; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "you wake up from your long night with the stallion, and you go to scratch it, only to find it seems to be covered in soft, palomino patterned fur, just like your lover's"; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "you wake up, and you moan and roll over as you reach down, only to feel a large amount of hair covering your ass. Blinking, you look down to see your new long equine tail, which someone has braided several small silver gothic charms into"; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "you wake up, and you reach down to stroke it, only to find that your morning wood is even more impressive with a thick equine cock, the feel of its new sensitive flared tip making you moan as you stroke it several times with a smile"; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 14;
	now dex entry is 17;
	now sta entry is 13;
	now per entry is 10;
	now int entry is 10;
	now cha entry is 18;
	now sex entry is "Male"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 21;			[ How many HP has the monster got? ]
	now lev entry is 2;			[ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ]
	now wdam entry is 5;			[Amount of Damage monster Does when attacking.]
	now area entry is "Palomino";	[ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 1;			[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 14;		[ Length infection will make cock grow to if cocks]
	now cock width entry is 4;		[ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 0;			[ Number of Breasts infection will give you. ]
	now breast size entry is 0;		[Size of breasts infection will try to attain ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;			[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 0;		[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 0;		[ Width of female sex  infection will try and give you ]
	now libido entry is 30;			[ Amount player Libido will go up if defeated ]
	now loot entry is "";			[ Loot monster drops, ]
	now lootchance entry is 0;		[ Chance of loot dropping 0-100 ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 3;				[ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]fit[or]toned[at random]";
	now type entry is "equine";
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is true;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";		[ Row used to designate any special combat features, "default" for standard combat. ]

Section 3 - Endings

when play ends:
	if bodyname of player is "Palomino":
		if humanity of player is less than 10:
			say "     Surrendering to the infection, you finally realize that you want nothing more than to be a lovely little slutty pony for your handsome male stallion.  Wasting no time, you run on your new equine feet back to the club where your new master is waiting.  Arriving at the club, you are happy to be welcomed into Tristian's waiting arms, and even happier when your new master lets you know what you will be doing for him from now on.  You love your stallion taking you back to the dressing room and helping you into your new stage clothes, and the crowd outside goes wild when he announces your first night as the Palomino's newest stripper!  You love the feeling of showing off your handsome [if cocks of player > 0 and cunts of player > 0]herm[otherwise if cocks of player > 0]male[otherwise if cunts of player > 0]female[otherwise]genderless[end if] body on the stage, as you dance and tease the other clubgoers using what you learned here in the club from Tristian and the other dancers.";
			if cocks of player > 0:
				say "     Soon you and several other strippers are nearly naked on stage and showing off for the all too appreciative audience, as you grind up against the naked bodies of a black swan, while a well-endowed panther grinds up against you from behind.  Your first night is a tremendous success, though the best part is how happy your dominant stud is with you afterwards.  You wake up from a night of wonderful sex to find several new piercings for you to wear to demonstrate who you belong to, as well as his tag hanging from your collar.  Smiling happily, you settle in to your new life as one of the clubs strippers with ease, dancing all night for the patrons, and dancing with your mate and several other strippers afterwards.";
			otherwise if cunts of player > 0:
				say "     Soon you and several other strippers are nearly naked on stage and showing off for the all too appreciative audience, as you grind up against the naked bodies of a black swan, while a well-endowed panther grinds up against you from behind.  Your first night on the stage is a tremendous success.  Being female, you don't really draw your dominant stud's attention like you used to, but you've got plenty of dancers to enjoy a wild romp with after the show.  You wake up from a night of wonderful sex to find yourself in a new harness suitable to your female form and a tag hanging from your collar denoting you as club property.  Smiling happily, you settle in to your new life as one of the clubs strippers with ease, dancing all night for the patrons and dancing with several other strippers afterwards.";
				if player is impreg_ok:
					say "     After one particularly hot show, you and some of the male strippers enact a plan where they get Tristian riled up with a private show.  During this, you sneak a ride on his cock after the guys have gotten him too hard with their asses and distract him with their luscious cocks, letting you get fucked by your palomino stud after so long.  He seems a little hurt by this treachery at first, but gets over it quickly enough, especially as your belly starts to swell with his foals, more palomino studs to stalk the dance floor and ride the stripper poles.";
			otherwise:
				say "     Soon you and several other strippers are nearly naked on stage and showing off for the all too appreciative audience, as you grind up against the naked bodies of a black swan, while a well-endowed panther grinds up against you from behind.  While your genderless body is not much of a draw to many of the patrons, the way you work it and grind against the others with such need makes them shine all the more and adding an exotic flair to the show.  Lacking a cock, you draw less of your dominant stud's attention than you used to, but a good show and a few of the other strippers along for the fun is more than enough to get him banging you like he used to.  You can always count on at least one of the dancers to give you a proper fucking as well, knowing full well what pleasures your talented ass can bring.";
				say "     And you do get safer the occasional some attention from as well.  Some of the males, usually those coming to grips with their new urges, find your lack of a cock a introduction to their lusts to fuck the hot asses they see at the club.  Eventually they do move on to fucking the other guys at the club, but they always remember you fondly and come back for the occasional romp with the neuter pony who helped introduce them to the new pleasures they greatly enjoy partaking in.  Some you even entice into becoming strippers, adding to the club's roster and regular dancing (and [']dancing[']) partners.";
			say "     When the military finally comes, your business isn't hurt at all, it merely becomes slightly less blatant for a time while the soldiers look around.  However, being soldiers, they soon relax to enjoy the pleasures of the club just as much as anyone else, pleased to get some unexpected R&R during their mission.  And while some of them manage to stick away from the bar and remain relatively normal, most of the soldiers end up joining the patrons on the dance floor, or in the back rooms, or even on the stripper poles with you, where you can teach the newest members of the club just how much fun it is to be a slutty little palomino stripper...";
		otherwise:
			say "     When the rescue finally comes, the military and civilian authorities put you and Tristian through a battery of tests and interviews before finally allowing the two of you to rejoin normal society.  You both suspect that you were released so quickly not so much because they thought that you were safe and sane, but because the authorities had bigger problems to deal with, both in the fight for the city and with some of the other infected being brought in, especially given the large numbers of hyenas.";
			say "     You and Tristian settle down in a smaller city outside Seattle and eventually open up another club catering to the goth, emo, rave, and alternative crowd.  Your sexy gothy forms attract many of the more curious clubgoers.  No one seems to complain when their sons, daughters, or significant others visit your club and leave with permanent changes as a reminder of their visit.  The club's success and large number of repeat customers soon allows you to open a second even larger club in downtown Seattle, and soon after that the two of you are opening clubs in several other major cities.";
			say "     The two of you soon branch out into the sex industry with [']Palomino Magazine['] and the cleaning up of an abandoned film studio to make [']Palomino Videos['].  People are soon flocking to get the monthly releases of your newest issues and videos, eager to see the photo stories of the models being converted into sexy, lusty beasts and your porn movies of the same nature.  Both are hot sellers, even in a world with rampant sex, your content letting them enjoy witnessing the process and to take in every well-framed detail[if hp of Tristian is 11].  The issue and movie where Lance and his lover are converted into a slinky goth unicorn boi and a gothy Doberman boi respectively is a particularly hot item[end if].  Within ten years, the Palomino Publishing empire is the biggest name in porn, aimed directly at the lustful needs of this new world.";


Palomino ends here.
