Version 1 of RexxyEvent by GentlemanB begins here.
"Adds a Adds an Alpha Retrevier NPC and associated scenarios to the Flexible Survival game"

Section 1 - Event

ForcedAdoption is a situation.
rexeventmode is a number that varies.

The sarea of ForcedAdoption is "High";
when play begins:
	add ForcedAdoption to badspots of guy;
	add ForcedAdoption to badspots of girl;
	add ForcedAdoption to badspots of furry;

Instead of Resolving a ForcedAdoption:
	if rexeventmode is 0:
		say "As you walk down the street of what remains of an upscale neighborhood on the outskirts of the high rise district, you spot a figure up ahead and duck out of sight before they spot you. As the figure gets closer you see that she is an attractive female canine with a thick coat of golden fur, much like the other retriever girls you've seen around the district. From your hiding place you can see she is clutching something against her ample chest with both hands.";
		say "She glances around nervously as she walks, when suddenly another figure, a large powerful looking male retriever, steps out of a nearby alley into her path, cutting her off. The retriever girl runs into him and stumbles backward, falling to the ground and dropping whatever she was carrying. Without even acknowledging the male's presence, she begins scrambling around on all fours, looking for her prize, until she comes face to face with his erect canine cock. Slowly she looks up over his body until she is staring lustfully into his eyes. The large male then reaches down and picks up the entranced girl, carrying her back down the alley he emerged from as she whimpers needfully.";
		say "Once you are certain the pair is gone you get up from your hiding place and walk over to where they were standing. as you glance around you spot the object the retriever girls was so obsessed with, an unusual sex toy shaped like a canine cock on one end with a bone shaped handle on the other. Against your better judgment, you feel compelled to pick the strange toy up, examining it more closely momentarily before slipping it into your bag and heading on your way, even as faint thoughts of doggie sex begin to creep into your mind.";
		add "Dog Bone" to invent of player;
		now rexeventmode is 1;
	Otherwise if rexeventmode is 1:
		if doggyboned < 3:
			say "Once again you find yourself in the neighborhood where you saw the golden retriever girl being abducted by the large male. As you walk by nervously you find your thoughts once again drawn to doggie sex and the strange toy you picked up.";
		if doggyboned is 3:
			if Dog Bone is owned:
				say "As you once again find yourself passing through a familiar neighborhood you are suddenly stuck with concern for you favorite toy. pulling it from your bag you hold it tightly too your chest. In a moment of clarity you realize this is the very same place you first acquired the toy... and saw its previous owner captured by a large male retriever. ";
				say "You ponder just how similar a position you are in too hers when you are suddenly grabbed from behind. You are spun around to see the large, sexy, male canine face to face before he presses his muzzle to your face, drawing you into a deep kiss.  Your mind is flooded with the thoughts and desires of the retriever bitch you have been becoming, your infection driven to new a new lust fueled high by the his deep kiss and powerful male scent.";
				say "The large male breaks off the kiss and starts to introduce himself.  You try to reign in your mind, struggling to control the growing urges of the retriever bitch clawing at your thoughts, but in doing so you barely managed to hear any of what he says, other than his name, Rex. While he looks you over, a smile crossing his muzzle as he spots the doggie dildo clenched in both hands against your chest.";
				say "'I see that wonderful bone has brought another lovely bitch right to my doorstep.  Why don't you come inside so we can start training you to be a proper pet?' he says, wrenching the bone from your grasp as he finishes. He then turns to a nearby house, motioning you towards the large doggy door as he enters through the front.";
				delete Dog Bone;
				now Rex's Place is known;
				now ForcedAdoption is resolved;
			Otherwise:
				Say "Once again you find yourself in the neighborhood where you saw the golden retriever girl being abducted by the large male. As you walk by nervously you find your thoughts once again drawn to your beloved doggie sex toy, feeling an overwhelming urge to return to where you left it and play with it again.";
				increase bonelust by 1;
				

Section 2 - Rex's Place

Rex's Place is a room. It is fasttravel. It is private. 

The description of Rex's Place is "Crawling on all fours through the doggy door you find yourself in a small but surprisingly tidy single room home. There are even a few pictures still hanging from the walls, mostly featuring an attractive blonde woman and her large Golden Retriever. As you spot Rex sitting in the back with his happy retriever sexpet, there is little doubt in your mind as too what became of the woman in the pictures.";
Rex is in Rex's Place.
Karen is in Rex's Place.
Treat Jar is in Rex's Place. 

The description of Treat Jar is "Sitting on the table next to Rex's seat is a large glass jar full of bone shaped cookies. You find your mouth watering and stomach growling as you stare at the doggy treats. Rex spots you eyeing them longingly and a canine smile crosses his muzzle, 'If you want a treat, you're going to have to beg like a good little sexpet,' he informs you.";
instead of sniffing Treat Jar:
	say "Between the smell of canine sex pervading Rex's small house and the thick glass, you can't even catch a whiff of the scent from the jar full of doggy treats.";

treatbegging is an action applying to nothing.

Understand "beg Rex" as treatbegging;
Understand "beg treat" as treatbegging;
Understand "treat beg" as treatbegging;
Understand "beg for treat" as treatbegging;

Check Treatbegging:
	If Treat jar is not visible, say "eh?" instead;

Carry out Treatbegging:
	say "Unable to deny your hunger for the bone-shaped treats any longer, you quickly find yourself on all fours in front of Rex, Whimpering and begging for one of the small cookies. He smiles intently as he pulls one of the treats from the jar, telling you to like a good doggy. As you sit patiently in front of him Rex reaches out and places the treat on the end of your nose, the delicious scent of it making your mouth water even more. When Rex finally signals you to eat the treat, you drop it to the floor and pounce on it instantly, eating the entire thing in one bite. As you lick the final crumbs from your chops, you begin to think how much you'd like another even as you realize how much of yourself you are losing to the happy retriever sexpet Rex is training you too be.";
	decrease hunger of player by 10;
	if hunger of player < 0, now hunger of player is 0;
	infect "Retriever";
	decrease humanity of player by a random number between 4 and 8;

instead of sniffing Rex's Place:
	say "The air here is thick with the scent of canine heat and sex.  You find the powerful musk of the large male lounging on a couch in the back especially arousing, thoughts of pleasing him like a proper pet drift into your mind as he eyes you intently.";


Section 3 - Doggy Bone

Table of Game Objects (continued)
name	desc	weight	object
"Dog Bone"	"An unusual looking sex toy with a pointed canine cock on one end, and a bone-shaped handle on the other."	1	Dog Bone

doggyboned is a number that varies.
bonelust is a number that varies.

Dog Bone is a grab object.
Dog Bone has a usedesc "[DogBoneUse]";
Dog Bone is infectious. The strain of Dog Bone is "retriever". It is not temporary.

instead of sniffing Dog Bone:
	say "The bone shaped doggie dildo smells strongly of canine sex, much like the bitch you acquired it from.";

To say DogBoneUse:
	if doggyboned is 0:
		say "You pull the unusual doggy bone from your bag, intending to get a better look at it now that you're in a more secure location, but as you turn the realistic looking cock in your hands you soon find your thoughts consumed with a desire to taste it.";
		say "Tentatively at first, you give the tip of the shaft a few small licks but soon you've graduated to broadly licking across its entire length. As strange new thoughts of doggy sex start filling your fogged mind, you find yourself with most of the rod in your mouth, happily sucking away like a good bitch. You come to your senses some time later, blushing sheepishly over what you've done.  You slip the toy back into your bag, not even noticing the changes your fun has caused until some time later.";
		infect "Retriever";
		decrease humanity of player by 3;
		now doggyboned is 1;
	otherwise if doggyboned is 1:
		if cunts of player > 0:
			say "You pull the bone from your bag again and your mind is already flooded with thoughts and images of doggy sex. Without a second thought, you quickly strip you gear off, intent on using the toy as it was obviously intended to be used.";
			say "Slowly at first you begin to push the tip of the doggy dildo into your moistening folds, savoring this feeling of the first penetration as long as you can, but as the familiar warm tingling feeling begins to overtake you again the pace steadily quickens.";
			say "In your mind, you imagine yourself being taken by a handsome retriever stud. Driving his large canine cock into you again and again as you bark and yip in pleasure beneath him.";
			say "When your orgasm finally strikes you are snapped back to reality by the rush of liquids soaking your hands and thighs.  As you lay there recovering, a part of you wonders, even worries, about the power this simple sex toy seems to be taking over you.";
			say "You wonder if continuing to use it is a good idea as you take stock of the new changes it has caused in your body, but those worries are soon pushed away when your mind begins to wander to dreams of doggy sex once again while you gather your things to leave.";
			infect "Retriever";
			decrease humanity of player by 3;
			now doggyboned is 2;
		otherwise:
			say "As you pull the doggy bone from you bag you hold no false pretenses about what you intend to do, happily sliding it's length into your mouth again. Almost welcoming the warm feelings and arousing mental imagery that rapidly begin to envelope your mind and body, you slip into the same haze trance as before.";
			say "Once again you come to your senses some time later, you reluctantly put your toy back in your bag for safekeeping, already dreaming of your next chance to play with it. As you return to your tasks at hand, you take stock of the changes it has caused in your body this time.";
			infect "Retriever";
			decrease humanity of player by 4;
	otherwise if doggyboned is 2:
		if cunts of player > 0:
			say "Eagerly, you dig your canine sex toy from your bag once again and find a safe spot to stop and enjoy yourself, without even considering the consequences you are quickly naked and once again teasing your female passage with the pointed tip of the canine cock once again.";
			say "You slip into the trance-like state again as you being dreaming about the same handsome canine stud, only this time the figure beneath him is indistinguishable from the retriever bitch your originally acquired the bone from. In a moment of clarity you realize you're even beginning to identify yourself as just another retriever bitch.";
			say "Despite this moment of resistance you are soon overwhelmed by the burning need between your legs once again, and despite your fear of how it will affect you, you drive the entire length of the dildo into yourself, hilting the bone shaped handle against your nether lips.";
			say "Your world shatters in the intense pleasure and having given into it your retriever infection kicks into overdrive. The last of your concerns about this wonderful bone are washed away as it rapidly reshapes your body to better suit your new self image.";
			say "Once you recover from your intense orgasm you pull the dildo from your  cunt with a wet slurp and begin licking it clean of your juices. All the while telling yourself how glad you are that you decided to pick it up after that other silly bitch left it behind, as it's definitely the best toy you've ever had.";
			say "Eventually you gather your things and set out on your way again, carefully stashing your bone back in your bag as you put your equipment back on your wonderful new retriever body.";
			say "[fullRetrieverTF]";
			decrease humanity of player by 6;
			now doggyboned is 3;
			now bonelust is 1;
		otherwise:
			say "You eagerly dig your doggy dildo from your bag once again as you look for a safe place to stop and enjoy yourself.";
			say "You settle on a secluded enough location, but as you make yourself comfortable you realize that despite the burning need in your body you no longer have the proper equipment to make use of the toy.";
			say "Dejectedly you settle once again on sucking on the toy as the familiar warmth and tingling overtakes your body and mind once again.";
			infect "Retriever";
			decrease humanity of player by 4;
	otherwise if doggyboned is 3:
		if cunts of player > 0:
			say "You begin panting eagerly when you realize you have another free moment to play with your favorite sextoy. By the time you've stripped off your clothes and dug the bone from your bag, you already feel the familiar warmth filling your body.";
			say "As you being driving the pointed tip of the dildo into your moist, needy slit your mind quickly returns to the same fantasies of yourself being taken over and over by that handsome retriever alpha. Soon, your pace driving the dildo into your body is perfectly synchronized with that of the stud in your fantasy and as he makes that final powerful thrust, forcing his large knot into you howling in the pleasure of his orgasm you do the same, pushing the entire length of the cock into yourself, your own howls of pleasure echoing through the streets around you.";
			say "After cleaning yourself up and gathering your equipment once again, you set out into the city, the burning need between your legs having been curbed again for now.";
			infect "Retriever";
			infect "Retriever";
			now bonelust is 1;
			decrease humanity of player by 4;
		otherwise:
			say "You eagerly dig your doggy dildo from your bag once again as you look for a safe place to stop and enjoy yourself.";
			say "You settle on a secluded enough location, but as you make yourself comfortable you realize that despite the burning need in your body you no longer have the proper equipment to make use of the toy.";
			say "Dejectedly you settle once again on sucking on the toy as the familiar warmth and tingling overtakes your body and mind once again.";
			infect "Retriever";
			infect "Retriever";
			now bonelust is 1;
			decrease humanity of player by 4;

An everyturn rule:
	if bonelust > 10:
		say "The instincts caused by the retriever infection and the burning need caused by the canine sex toy dominate your mind almost completely. You struggle to maintain some small part of yourself as the thoughts of the retriever bitch you're becoming begin to be undistinguishable from your own. You need to find some way to sate this burning need now, else you will surely lose yourself completely to these desires.";
		increase bonelust by 1;
		decrease humanity of player by 15;
	otherwise if bonelust > 6:
		if a random chance of 1 in 2 succeeds:
			say "You struggle to resist the will of the retriever bitch the infection is trying to make you it's grip on your mind tightens. Your body burns with desire as the lewd daydreams of doggy sex dominate your thoughts. Perhaps you could relieve some of this lust with some playtime with [if rextalk is 1] Rex? [otherwise] your beloved dog bone sex toy?[end if]";
			increase bonelust by 1;
			decrease humanity of player by 9;
	otherwise if bonelust > 3:
		if a random chance of 1 in 3 succeeds:
			say "The Retriever urges and desires continue clawing at your mind, growing more powerful. you catch yourself panting occasionally as the canine sex dreams invade your thoughts more frequently.";
			increase bonelust by 1;
			decrease humanity of player by 6;
	otherwise if bonelust > 0:
		if a random chance of 1 in 4 succeeds:
			say "You feel the retriever infection pawing at the back of your mind and a warm tingling deep within you as your mind drifts too thoughts of Large male canines and their rigid knotted cocks.";
			increase bonelust by 1;
			decrease humanity of player by 3;
		
to say fullRetrieverTF:
	[puts Retriever as lead monster in case of impregnation]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Retriever":
			now monster is y;
			break;
	now tailname of player is "Retriever";
	now facename of player is "Retriever";
	now skinname of player is "Retriever";
	now bodyname of player is "Retriever";
	now cockname of player is "Retriever";
	now tail of player is tail entry;
	now face of player is face entry;
	now skin of player is skin entry;
	now body of player is body entry;
	now cock of player is cock entry;
	if hellHoundLevel is 0:
		follow the sex change rule;
		follow the sex change rule;


Section 4 - Rex

Rex is a man.
The description of Rex is "[Rexdescribing]";
The conversation of Rex is { "rextalk" }.
rextalk is a number that varies.
rexpet is a number that varies.
lastRexfucked is a number that varies.  lastRexfucked is normally 555.

to say Rexdescribing:
	say "Lounging on a couch near the back of the room is a large retriever male. On the table beside him, you spot the doggy bone sextoy he took from you when you first met.  But as you begin to think of a way to get your prize back, you find you attention drawn to his large sheath doggy cock, your goal of getting the toy back slips from your mind as you begin to wonder how much more fun the real thing must be.";

instead of sniffing Rex:
	say "The large retriever carries the strong musk of a virile male, and the scent of doggy sex clings to his fur constantly thanks to his frequent playtime with his happy retriever sexpet.";

instead of conversing the Rex:
	if rextalk is 0:
		say "'Ah, glad to see you've come to accept my offer' the large male says, waving a small blue collar towards you.";
		if humanity of player is less than 10:
			say "Realizing his intent the retriever bitch that has been slowly taking control of your mind snaps to the forefront, consuming you entirely. You pad over to Rex happily and kneel down in front of him, allowing him to affix the collar around your neck, once down he pets the top of your head softly as your look up at your new master and smile, already imagining the new life ahead of you.";
			say "[fullRetrieverTF]";
			now rexpet is 1;
			end the game saying "Your mind is lost to the retriever infection, submitting to life as Rex's newest happy sexpet.";
			wait for any key;
			follow the turnpass rule;
			stop the action;
		otherwise:
			say "You realize Rex's intent immediately and push the collar away, informing him that you have no intention of submitting too him. 'That's too bad,' Rex replies. 'It really would be much easier for both of us if you just gave in now, but I'm sure I'll have plenty of opportunity to change your mind,' he says with a smirk as he glances back at your bone sitting in the back of the room. 'After all, who else is going to help you control those urges your struggling with?'";
			say " 'But enough of that, let me show you around our home,' Rex says as he begins touring you around the small house.  Finally he introduces you too Karen, the other retriever in the home, who you quickly recognize as the girl you saw Rex grab earlier and the original owner of the bone that drew you here. As Rex introduces you properly she smiles at you knowingly, apparently somehow recognizing you as well.";
		increase rextalk by 1;
	otherwise if rextalk is 1:
		say "[one of]'Karen is so much happier now that she's become my pet rather than the other way around. You really should give in and join her.'[or]'Would you like a treat?' Rex says, gesturing to the large jar of cookies beside him.[or]'Why don't you come over here and let me show you how nice life as a retriever sexpet can be?'[or]'It must be difficult finding relief without that dog bone sex toy huh?' the large male says with a mischievous grin.[or]Rex doesn't seam to notice you as he twirls a small blue collar in his paw like hand, looking up he spots you, and waves the collar towards you, trying to entice you to put it on.[or]'Are you sure you don't want to stay here with Karen and I? Life as a pet is so much easier, and I'll even be sure to give you some lovely pups too play with.'[or]'Rex doesn't seam to be interesting in talking as he rolls around on the floor, playing with Karen.'[or]'Rex lies sleeping on the couch with Karen in his arms, she smiles at you vacantly, almost making you jealous of the simple happy life she must now lead.'[or]'Why don't you just stay a while with us, I'm sure you'll come to enjoy your time here.'[at random]";

Instead of fucking the Rex:
	[puts Retriever as lead monster for possible impregnation]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Retriever":
			now monster is y;
			break;
	if lastRexfucked - turns < 9:
		say "'Back again ready? Are you sure you're here because you really need it or are you just starting to enjoy my company?' Rex says with a mischievous grin. 'either way, I don't think I'm ready to go again, so I guess you'll just have to wait' He continues, his smirk broadening even more.";
	otherwise if bonelust > 6:
		if cunts of player > 0:
			say "Wanting too maintain some semblance of yourself you struggle to control your bodies urges at you approach Rex. The mental battle to control the overpowering urges is a difficult one, requiring all your willpower just too keep yourself from leaping into his arms, begging him too fuck you senseless.";
			say "Apparently recognizing your struggle Rex watches intently, a smug smirk across his muzzle, obviously amused by your losing battle against powerful need caused by the retriever infection and that strange bone.";
			say "Finally you can take no more, falling to your hands and knees, giving in to your bodies desires once again. You crawl forward too Rex, begging him to help sate the fiery desire consuming you. He draws his response out for what seems like a lifetime, clearly still enjoying watching you squirm under the influence of the infection. Your already trying to take the edge off yourself, two fingers working deep into your dripping cunt with no avail by the time Rex finally agrees.";
			say "Standing up the motions towards the back bedroom, but before he even begins to step away you grab his leg, holding him back. Not wishing to wait any longer You look up at him pleadingly. 'Or I could take you here and now, on the floor like a proper bitch.' he says looking down into your eyes, still grinning fiendishly. You've already bobbed your head in agreement before he's even finished speaking and release his leg, turning to prevent yourself eagerly as soon as he's made the offer.";
			say "Without another word Rex moves behind you, stroking your hips softly as he begins teasing your already soaked slit. You can't help but yip loudly as he thrusts into you the first time without warning, but when he pulls back and prepares to drive into you again you are prepared for him, bucking back to meet him. With each thrust you feel his swelling knot teasing your outer folds and, eager to have him fill you completely, you push back with increased vigor matching every thrust he makes while the pace quickens";
			say "You howl in pleasure as your cunt finally stretches enough to allow his wonderful know inside you, the rush of your feminine juices soaks your thighs as it gushes out around Rex's rod but he leaves you little time to recover from your first climax, beginning to hump you in earnest again moments later.";
			say "Each movement pulls and teases the knot inside you, quickly bringing you towards a second climax. With one final powerful thrust he pushes both of you over the edge, howling in unison as his throbbing members fills your womb with virile retriever seed, finally quenching the fire inside you, for now.";
			say "Exhausted, you both collapse to the floor, still tied together by his know. Rex begins stroking the back of your head softly as he lay atop you, both of you still basking in the afterglow of your intense orgasms. 'isn't this nice?' he whispers into your ear, ' Are you sure this isn't the life you want to live?'";
			say "Eventually Rex's knot has softened enough that he can pull himself free, leaving you whimpering for a moment at the sudden empty feeling. he slowly climbs to his feet, taking a moment too stretch with a low groan before returning to his business, leaving you to finish recovering on your own.";
			say "[fullRetrieverTF]";
			say "[impregchance]";
			now bonelust is 1;
			decrease humanity of player by a random number between 5 and 10;
			now lastRexfucked is turns;
		otherwise:
			say "Rex looks deep into your eyes as you stumble towards him, struggling to not lose yourself entirely too the overwhelming urges welling up inside you. Seeing the pleading look in your eyes he smiles knowingly and places an arm around your shoulder, leading you off towards his bed in the back room. By the time you reach your destination your mind is made up, you can't resist the powerful need burning inside you any longer, and as your resistance slips away once again you lean heavily against Rex, taking a deep breath of his powerful male scent as you reach the bed.";
			say "Eagerly you climb onto the bed in front of him, panting heavily as you turn to present your rear too him. Soon you feel his weight atop you reaching around your chest as he mounts you like a proper bitch, forcing his thick canine shaft into your ass with a low groan. He fucks you hard and fast, each thrust teasing your pucker as his knot rubs against you. He quickens too an almost frantic pace as you buck back against him, meeting every push with a push of your own before he suddenly pulls out.";
			say "You look back in confusion too see him stroking his dripping rod with a low growl before he grabs your shoulder with his free hand, forcefully turning your body too face him just as he erupts, thick streams of his hot seed coating your chest and face as he howls in pleasure. Once his twitching canine cock stops spurting the thick seed he brings his crotch in close to your face, allowing you to lick and suck his length clean. You happily lap up the last droplets of cum from him before he rolls off you, panting happily as the lick the last of the salty deposit from your lips. idly he scratches your head as he basks in the afterglow of his climax, not saying a word before he slowly drifts off to sleep";
			infect "Retriever";
			infect "Retriever";
			now bonelust is 1;
			decrease humanity of player by a random number between 5 and 10;
			now lastRexfucked is turns;
	otherwise if bonelust > 3:
		if cunts of player > 0:
			say "As you approach Rex you become keenly aware of the powerful need burning inside you, and Rex's powerful male musk only serves to increase the desire to submit too him. You know giving in to these urges is exactly what Rex wants you to do, but at the same time the need only seams too becomes more unbearable the longer you resist.";
			say "As if sensing your internal struggle Rex steps forward, placing his paw like hand on your shoulders he leans in close to whisper in your ear, his soft touch sending shivers through your body. 'It's alright,' he whispers. 'You don't need to resist these feelings.' His overwhelming scent is almost intoxicating too your lust addled mind at this proximity, you barely manage a weak nod before falling into his embrace.";
			say "After a few moments, Rex breaks the hug and bends down to pick you up, carrying you to the back room where his bed awaits while you bury your face in the soft fur of his powerful chest, bathing yourself in his arousing scent. By the time you've reached the bed the last of your resistance has long since slipped away and your bodies urges have taken full control, leaving you panting in anticipation as Rex gently lays you on the bed.";
			say "Slowly at first, he begins petting and stroking your body, each touch sending electric shivers through your already aroused body. He progresses slowly up your body, rubbing, petting and even scratching in all the right places, eventually reaching your head. he reaches back and begins scratching behind your ears softly as he leans in close once again and licks you cheek.";
			say "By this point you realize he's laying almost completely on top of you and without stopping the delicious doggy kisses he reaches down and begins guiding his rod too tease the outer folds of your feminine passage. You can't help but moan in delight as he begins to slowly push himself deeper into you, your legs wrapping around his body trying to speed up his slow, deliberate thrusting. As his pace quickens your body begin to match his rhythm, matching each of his thrusts, trying to force as much of him into you as possible.";
			say "With each push you feel more and more of his canine knot pushing into you, only to be pulled back again teasingly. Finally Rex's pace begins to reach its peak and with one final powerful thrust and your bucking back to meet him the entirety of his knot is forced into you, sealing you together as you both howl in pleasure.";
			say "You both lay there, locked together for some time, your passage still convulsing around his rod, milking him for all he's worth. As the afterglow finally begins to fade Rex gives you a few final licks on the cheek as he pulls his softening manhood from you, letting your combined juices overflow out onto the bed. He pats your on the head a few times, telling you what a good girl you are before getting up and leaving you too recover on your own.";
			infect "Retriever";
			infect "Retriever";
			say "[impregchance]";
			now bonelust is 1;
			decrease humanity of player by a random number between 5 and 9;
			now lastRexfucked is turns;
		otherwise:
			say "Slowly you approach Rex, still struggling your decision to have him help you sate the need burning in your body. Rex smiles broadly as you finally give in to the urges and ask for his 'help'in the matter. 'I'd love to show you more of what it's like to be a proper pet. You seem to be lacking the proper equipment, but I suppose we make due though.' he says as he smacks your ass firmly before heading off to the back bedroom.";
			say "You follow close behind him until he pauses and turns to face you. Without warning he leans in and gives you a quick peck on the cheek before scooping you up off the floor and placing you on the bed, He maneuvers you onto all fours 	with your rear facing him before he climbs onto the bed behind you. you can't help but moan softly as he teases your tight pucker with one finger before gripping your ass firmly with both hands. He strokes his erect dripping canine cock up and down your rear a few times, lubing you up with his dribbling pre before slowly but firmly pushing into you. The feeling of your insides being spread before him easily overwhelms your lust fogged mind and your already moaning deeply under him before he starts humping in earnest.";
			say "Rex's pace increases steadily, driving more and more of his shaft into your bowels with each thrust and soon his deep groans are mingling with your own sharp yips, marking each push he makes into you.  Finally he can take no more and with one last thrust he forces most of his length into you, his large knot pressing against the outer lips of your asshole. His throbbing member begins pouring his hot load deep into your bowels, filling you with the warmth of his canine seed.";
			say "After finally draining his balls Rex gives the back of your head a soft pat and your ass another firm smack before pulling his still dripping shaft from your body. You collapse onto the bed as he dismounts you leaving the room with a small chuckle. He calls back to you as he reaches the door. 'Maybe next time we do this I can show you what it's like to be a proper bitch? I know you must be looking forward to that.' He says before stepping back out into the living room, closing the door behind him. You find a part of yourself agreeing silently as you lay on the bed with a vapid smile, enjoying the warm tingling sensation deep inside you.";
			infect "Retriever";
			infect "Retriever";
			now bonelust is 1;
			decrease humanity of player by a random number between 5 and 9;
			now lastRexfucked is turns;
	otherwise:
		say "Rex smiles as you approach. 'Look who's back, feeling a little needy are we?' he asks. 'Don't know if I'm in the mood to play right now, but I guess I could give you a little taste. 'he says with a smile, motioning you too come close, the tip of his shaft beginning to poke out of its sheath.";
		say "Your soon kneeling on the ground between his thighs, face to face with his knotted rod. You find yourself licking your lips in spite of yourself. Rex begins scratching behind your ears as he guides your head towards his pointed canine cock.";
		say "As your urges begin to take over you eagerly begin licking and sucking at his shaft, soon taking most of its length into your mouth, your head bobbing merrily as you suck and tease him, all the while Rex continues petting and scratching the back of your head while guiding you.";
		say "Soon Rex moaning out loud as his grip on your head tightens and he forces his entire shaft down your throat. You moan around his rod as you feel his knot swelling in your mouth, the entire shaft throbbing and twitching as it begins spurting cum down your throat. Rex howls in pleasure, draining his balls into you, filling your tummy with his warm seed.";
		say "Rex releases your head and lays back against his seat, his cock still dripping as he pulls it from your mouth, panting happily in the afterglow of his orgasm. After licking the last few droplets of cum from his shaft and your lips you slouch to the ground in front of him, rubbing your full belly contently for some time.";
		infect "Retriever";
		infect "Retriever";
		now bonelust is 1;
		decrease humanity of player by a random number between 5 and 8;
		now lastRexfucked is turns;
	if humanity of player < 10:
		say "As you begin to rise you see Rex has left that damned blue collar laying out on a nearby counter for you too see again, but this time somthing clicks inside you, his 'training' seamingly finally have taken hold you reach out and pick up the collar, fastening it around your neck without a second thought.";
		say "All your other concerns seam to drain away as the retrevier infection takes full control of your mind and body, shaping you into another perfect sexpet for you new owner. Eagerly you retun too him, finding him waiting for you on his couch at the back of the room, the broad smile on his face as he see you in the collar filling you with pride. He motions for you to join him laying on the couch, and you happily snuggle up aganst him. You begin to drift off to sleep as he scratches your ears, telling you that you made the right descision, and you can't help but agree as you drift off into slumber, dreaming off all the wonderful times in your new life ahead of you.";
		say "[fullRetrieverTF]";
		now rexpet is 1;
		end the game saying "Your mind is lost to the retrievier infection, submitting to life as Rex's newest happy sexpet.";
		wait for any key;
		follow the turnpass rule;
		stop the action;
	otherwise:
		say "You eventually return too your senses, the fog seaming to have lifted from your mind once again and you note the burning desires within you seam to have deminished, but so has some of your resistance to Rex and the retrevier infection.";



Section 5 - Karen

Karen is a woman.
The description of Karen is "[Karendescribing]";
The conversation of Karen is { "Karentalk" }.

to say Karendescribing:
	say "Looking over Karen you recognize her as the same retriever bitch that you saw abducted by Rex some time ago, now wearing a thin pink collar with a heart shaped tag that has her name engraved on it.";

instead of sniffing Karen:
	say "Karen smells strongly of Rex's powerful musk, mixed with the scent of her own dripping cunt, and strangely a faint hint of strawberry.";

instead of conversing the Karen:
	say "[one of]Karen is far too busy playing with Rex on the floor too talk right now.[or]Karen is sitting on the floor in front of Rex, begging for the treat he has suspended above her head, clearly she's far too focused on Rex and the cookie to talk right now.[or]'I'm so glad that bone brought me back here too Rex, and your pretty lucky it brought you here to him too!' Karen says with a smile.[or]'Are you sure you don't want to stay here with us?' Karen asks with a cute pout.[or]Karen barely acknowledges you as you approach, apparently not interested in conversation while cleaning herself up after her latest escapade with Rex.[or]Karen smiles up at you as she eat from a small pink dog bowl, offering you a taste before she digs back in.[at random]";

Instead of fucking the Karen:
	say "When you begin to approach Karen wondering if she might be interested in having some fun with you hear a low growl behind you.";
	say "You turn around to see Rex, an uncharacteristic scowl across his muzzle, apparently aware of your intentions. Glancing back at Karen for a moment, you decided it's best to stay on Rex's good side and leave his pet be.";


RexxyEvent ends here.