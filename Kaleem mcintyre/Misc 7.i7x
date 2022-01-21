Version 2 of Misc 7 by Kaleem mcintyre begins here.
[Version 2.1 - Horse Sense patched to allow avoidance - Stripes]

Table of GameEventIDs (continued)
Object	Name
Horse Sense	"Horse Sense"

Horse Sense is a situation.
ResolveFunction of Horse Sense is "[ResolveEvent Horse Sense]".
Sarea of Horse Sense is "Plains".
when play begins:
	add Horse Sense to BadSpots of FurryList;
	add Horse Sense to badspots of HermList;

to say ResolveEvent Horse Sense:
	say "     Finding your way through the plains, you let the cool wind blowing across the open grass fields brush over chest and torso, turning your lips up into a smile. With your [BodyType of Player] body relishing in the pure [']feel['] of all that the plains have to offer, you find yourself letting go of yourself so that your spirit can become wrapped up in sensations of listening to the fluttering grass underneath your feet and rumble of the clouding sky above your head. A crack of thunder disturbs you from your mental reprieve, though, and soon you find your eyes fluttering open just as the first few drops of rain trickle over and across your chest and face.";
	let bonus be ( intelligence of Player + perception of Player - 20 ) / 2;
	let dice be a random number from 1 to 20;
	say "     You roll 1d20([dice])+[bonus]: [dice + bonus]: ";
	if bonus + dice > 10:
		say "As the scent of the rain just starting to come down catches your attention, you realize that something is amiss and you shake the swelling thoughts of galloping naked through the rain from your thoughts. You scan the area quickly for shelter and rush to the ruins of a nearby building. Getting there before the horse-scented downpour can kick into full gear, you huddle under a scrap of ceiling that remains standing and wait it out. Thankfully it is very brief. And while you're disappointed to see rain and not be able to enjoy it or gather some for drinking, you can tell even it is not to be trusted. At least you get to enjoy the beautiful lightning across the sky. After the rain passes, the water is quickly soaked up by the parched soil.";
		now Resolution of Horse Sense is 1; [avoided the infection]
	else:
		say "You bask in the pleasure of the rain falling on you, washing away some of the dust and grime that has built up during this heat wave. Holding your mouth open wide, you try to catch what you can for your [if thirst of Player > 30]parched [end if]throat. As the rainfall picks up, the scent of the rain coupled with the drenching wetness of your clothes matting down across your frame makes you shake your head wildly as the sudden urge to charge across the plains gets you moving before you can stop yourself.";
		say "     Muscles becoming tense with the untamed urge to gallop freely across the plains, you let your sight and sense of smell spread out around you in a rush as the sense of oneness at embracing [italic type]life[roman type] swells inside of your chest until you feel as though you could burst. Throwing your head back and shaking the watery drops of rain off from your face, you let out an unconscious whinny just in time for a crack of thunder to snap above your head. The bolt of lightning that follows darkens the land for a moment, but despite this, you find yourself continuing to run with no particular destination in mind. There's no fear of the dancing electricity above you as you run, momentarily lost in the moment. The rain passes as quickly as it came, but the lingering changes that it brought continue.";
		infect "Black Equinoid";
		infect "Black Equinoid";
		now Resolution of Horse Sense is 2; [got infected]
		SanLoss 10;
	increase score by 1;
	now Horse Sense is resolved;

Table of GameEventIDs (continued)
Object	Name
Victim	"Victim"

Victim is a situation.
ResolveFunction of Victim is "[ResolveEvent Victim]". The level of Victim is 8.
Sarea of Victim is "Red".
when play begins:
	add Victim to BadSpots of FurryList;
	add Victim to badspots of HermList;
	add Victim to BadSpots of MaleList;

to say ResolveEvent Victim:
	say "     Passing through the streets of the red light district, you hear some commotion nearby and hide around a corner to listen in without being seen. Daring a glance, you can make out the figures of a pimp and a tigress hooker locked in a heated argument. The man is castigating her about something, and when she tries to defy him, his hand is out like a whip to slap her cheek roughly. The harsh impact knocks her to the pavement, and the pimp's temper boils over into shouts and biting insults. Squinting to see more clearly, you realize that he's been trying to force her to drink something, a bottle of milky white fluid clutched tightly in his other hand. The hermaphrodite tigress seems very reluctant to comply, but she hesitantly reaches up to grab the drink when the pimp raises his hand again.";
	WaitLineBreak;
	if strength of Player > 15:
		say "     Getting behind the greasy little slime ball as silently as you can manage, you lift your fist up and coldcock the pimp upside the head with all the force you can muster up out of your [BodySpeciesName of Player in lower case] muscles. Like the wimp he is you watch the other fall flat onto his face like a rock, dropping what appears to be some kind of milk onto the ground at the tigress hooker's feet. Blinking once she notices that the creature trying to add her to his harem has been knocked out cold the herm raises her eyes to look up at you and then smiles affectionately into your face. Offering her a hand up, you're not prepared to be tackled by the herm and then kissed with the kind of wild intensity only a tiger could display as the prostitute all but stuffs her tongue down your throat. Grunting in surprise you let the kiss linger for a second before grabbing both of the tigress hooker's arms and then snatching the needy herm away from your quickly blushing face.";
		WaitLineBreak;
		say "     'Thanks, sugar. Who knew my strong and charming guardian angel would be someone with a sexy [BodyType of Player] body like yours in this weird ass town.' The tigress chuckles before shaking her head, but you catch the sincerity in her eyes before she hurriedly masks it. 'Eddie here was saying something about wanting to get a girl with wings or something before you came along. I knew I should have gotten out of this business before all of this started. Damn me for being so stupid.' The tigress growls and then chuffs in a true tiger-like way as she gives a shake of her striped head. Asking her what she's going to do now you watch as the hermaphrodite smirks and then looks down at [']Eddie[']. 'I think it's about time someone taught this little creep a lesson in humility, if you know what I mean?' A playful wink from the hooker has you nodding somewhat hesitantly.";
		WaitLineBreak;
		say "     Watching as the red dress wearing prostitute kneels down, scoops up what you guess is gryphon's milk and then turn the unconscious pimp over to dump it down his throat you slowly back away when you see the tigress whip out her cock and then start to pump at herself to get a full erection going. By the time you turn to walk away, the last you would remember seeing of [']Eddie['] is the struggling pimp sprouting both wings and deep stripes across his body as the wrathful tigress had her way with him.";
		SanBoost 10;
		increase score by 10;
		now Resolution of Victim is 1; [punched out the pimp]
		now Victim is resolved;
	else:
		challenge "Human Hybrid";
		if lost is 0:
			say "     Defeating the piece of scum you help the tigress up to her feet only to be glomped and then kissed like mad as the striped female shows her appreciation to you in a very physical way. Pushing the other off from you when the need for air becomes paramount you listen to the other rumble a purr at you before smiling and then turning to go about her way as quickly as possible. The unconscious pimp at your feet is left forgotten by the other, though you could have sworn that you heard the tigress say something about [']getting out of this business['] before she managed to get out of earshot. Shrugging you make your move out from the red light district to find somewhere else to be, you've done your job saving the little kittens stuck in a tree after all.";
			SanBoost 10;
			increase score by 5;
			now Resolution of Victim is 2; [lost to the pimp]
		else:
			say "     Managing to deal with the little slime as best you can by at least keeping him occupied, you find that the tigress hooker has taken the smart route and gone on about her way as the female herm is now nowhere in sight. Shrugging, but feeling as though you did a good thing you go about your business without thinking about what may happen to the tigress come later. After all, there's only so much you can do for one person.";
			SanBoost 5;
			now Resolution of Victim is 3; [fought and won against the pimp]
		now Victim is resolved;

Table of GameEventIDs (continued)
Object	Name
Runaway	"Runaway"

Runaway is a situation.
ResolveFunction of Runaway is "[ResolveEvent Runaway]".
Sarea of Runaway is "Beach".

to say ResolveEvent Runaway:
	say "     Walking across the sands of the long stretch of beach that the city has to offer you find a curious sight of what looks like a normal person sitting by themselves while shuffling their bare feet across the pale sands. Curious, you go over to them and then grunt to catch their attention when you realize that, yes indeed, the other is a full on human. What you find when the other turns around is a freckled faced boy of about seventeen looking up and down your [BodyType of Player] body somewhat curiously before he smiles up at you. 'Hello, come to watch the waves lap at the shore?' the young man says somewhat quietly. You look out at the small crashing waves and then turn back to the other to give a shake of your head. Telling them that you were actually curious about them and what they are doing here all alone, you find yourself slightly taking a step back when the other chuckles somewhat angrily all of a sudden.";
	WaitLineBreak;
	say "     'I ran away from home and found my way coming here. Why do you ask?' You blink at the freckled youth and then ask him if he has actually noticed what's going on around the city as of late. 'Oh...the stuff with the [']deadly['] outbreak? Yeah everyone on the outside knows about it. That's one of the reasons I came here. Nobody would think to look for me out here.' The young man then lowers his head somewhat to let his long shaggy black mane of hair cover his youthful face. 'My folks found out that I'm gay and got on my case pretty bad about it. Since there's a plague or virus or whatever going on around here I figured that this would be the best place to go to since home has just gotten unbearable. Heh, what better place to come for someone who's [']confused['] about their sexuality, right?' the young man scoffs disdainfully.";
	WaitLineBreak;
	say "     It takes you a minute to think about it, but once you do you find yourself shrugging somewhat at the other's cleverness... or insanity. 'Say, what's it like... you know... getting fucked by the mutants running around here?' The youth's question catches you off guard for a second as you really had never thought about it on a personal, introspective level before.";
	say "     [bold type]But after getting yourself back together mentally, you really come to think about it for a moment.[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Real good.";
	say "     ([link]N[as]n[end link]) - Bad.";
	if Player consents:
		LineBreak;
		say "     Telling the other that it can be both fun as well as somewhat uncomfortable to get hammered up the ass the way you have been as a consequence of just trying to survive in this twisted city, you watch with mounting disbelief as the freckled faced youth's hazel eyes literally light up at you as he listens to you continue to talk about your varying sexual experiences. 'Really?! You think that... well... do you think I could maybe find someone to be my boyfriend out here?' You swiftly let the other know that relationships around this place last about the length of an orgasm. A slight downcast look covers the freckled youth's face at that and soon a sigh escapes from the other's lips. 'Oh, I see. Well, it's better than being stuck at home anyway. Maybe I can talk to one of those cute shark guys and get hooked up with one of them?' The teen's question seems to be directed more towards himself than you, but you find yourself hurriedly telling the other of the dangers of being infected. 'That's alright. It's not like I've got a lot to look forward to anyway. Believe me, if you knew my situation then you'd agree that this place is heaven compared to being at home with my dipstick parents.";
		say "     Curiosity makes you ask the other what [italic type]home[roman type] is like, but at that the freckle faced teen just clams up and shakes his head. From that point on the young man seems to completely ignore you as he goes about watching the waters of the ocean lap at the sand. Seeing as this conversation is obviously over with, you get up and then make your way elsewhere to leave the other alone with his thoughts.";
		now Resolution of Runaway is 1; [encouraged him]
	else:
		LineBreak;
		say "     Relaying to how being fucked against your will is not the best thing you've come to experience in the city, you watch as the freckle faced teen's eyes harden before the other nods at you somewhat tightly. 'I see. Thanks. That's... some serious food for thought.' The other turns his head to ignore you at that point, and not really sure what else you can say, you turn away from the hazel-eyed youth to go about your business.";
		now Resolution of Runaway is 2; [discouraged him]
	increase score by 1;
	now Runaway is resolved;

Table of GameEventIDs (continued)
Object	Name
Portrait	"Portrait"

Portrait is a situation.
ResolveFunction of Portrait is "[ResolveEvent Portrait]". The level of Portrait is 9.
Sarea of Portrait is "Outside".
when play begins:
	add Portrait to BadSpots of FurryList;
	add Portrait to BadSpots of MaleList;
	add Portrait to badspots of HermList;


to say ResolveEvent Portrait:
	say "     Making your way through the somewhat desolate streets of the infected city you find yourself stopping dead in your tracks as you notice someone with latex fox ears waving up on their head sitting in front of a large canvas and painting something or the other with their back turned towards you. Feeling particularly nosy at the moment you make you ease on over to the other to see what's going on here. When you do you find your eyes widening in surprise when you see the other person, who happens to be a foxy - in the literal sense of the word - female with a human-like face wearing thin rimmed glasses, quickly swiping her brush over and along her slowly darkening canvas in an attempt to paint the city around her. From what you can see, despite the ruination that the metropolis is in right now, the foxwoman is recreating a beautiful scene in front of her that speaks nothing of the debauchery and depravity that the city has fallen into.";
	say "     Not seeing a reason to disturb the other you back away from the woman to leave her to her work, only to curse quietly when you spot several mutants coming your way. Looking to the woman and seeing that she's too focused to notice the oncoming danger, you grunt quietly and prepare to fight off the coming group of mutants.";
	challenge "Husky Alpha";
	challenge "Alpha Wolf";
	challenge "Smooth Collie Shemale";
	LineBreak;
	say "     With the respective group of cano-mutt mutants taken care of, you drop down onto the ground and then sigh as fatigue takes hold of you. A gentle tinkle of laughter makes you whip your head around just in time to see the foxwoman set down her brush and then stand up to stretch. Realizing that the artist has had no idea of what had just taken place, you grumble quietly before looking past the vixen to notice the finished piece of artistry.";
	say "     What you see captivates you in an almost mesmeric way as the collage of inks and paints have come together to form a picture that astounds you down to your core. Coming to the conclusion that all of your hard work was worth the effort of protecting the other, you say nothing as you slowly get up and then take your leave from the vixen. The sight of the city, and subsequently yourself with your [FaceSpeciesName of Player in lower case] face standing in front of the metropolis looking at the viewer, will probably stay with you for a long, long time to come.";
	SanBoost 10;
	increase score by 1;
	now Portrait is resolved;

Table of GameEventIDs (continued)
Object	Name
Hurting	"Hurting"

Hurting is a situation.
ResolveFunction of Hurting is "[ResolveEvent Hurting]".
Sarea of Hurting is "Hospital".
when play begins:
	add Hurting to BadSpots of FurryList;
	add Hurting to BadSpots of MaleList;

to say ResolveEvent Hurting:
	say "     Walking through the halls of the hospital, you find yourself stopping when a sudden loud and anguished whimpering noise catches your attention. On guard, you find yourself looking around and then tracking the helpless sound until you get to a half opened door that leads to an unfamiliar looking room. Cautiously stepping into the small but well-lit area, you creep over to have a look over an overturned desk, only to find someone... or rather something... hiding behind it. Not wanting to startle whoever is there, you make a small sound in the back of your throat and then watch as a head pops up to look at you. The face of one of the weasels that belong in the hospital's psychiatric ward looks at you timidly before ducking back down to whimper fretfully behind his hiding spot.[line break]";
	say "     [bold type]Should you go over to see if something is wrong with them?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	if Player consents:
		LineBreak;
		say "     Going over to stand in front of the psychotic weasel, you find the other rocking back and forth while muttering something about bad mouse and evil nurses. Seeing the poor soul in such distress, you hesitantly kneel down in front of the other, making sure that you can watch it for any signs of aggression, before trying to ask the weasel what's the matter. The other says nothing for a second, but does stop rocking in order to looking up at you. Bright, but off kilter green eyes stare at you and you find yourself backing up just a tick as you look into the face of controlled madness. The weasel doesn't say anything as he stares up at you for several seconds before he slowly lowers his head back down between his knees to start rocking again. Maybe this would be a good time to find someone to come and help the other, but who should you find?";
		say "     [bold type]The weasel is obviously not too thrilled about the nurses, but would one of the big, burly orderlies be any better?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Orderly.";
		say "     ([link]N[as]n[end link]) - Nurse.";
		if Player consents:
			LineBreak;
			say "     Realizing that going to find an orderly might be better than one of the nurses for the psychotic weasel, you go out to search for one of the jaguars to get their help. Finding one that isn't busy fucking a nurse you tell the other about the weasel hiding in one of the rooms and then have haul ass trying to catch up to the big cat as it charges off down the hall. Leading the other to the weasel you watch as the feline medical attendant goes over to the weasel and then kneels down to murmur something quietly into the psychotic male's ears. The weasel freezes for a split second and then nods gently before being hefted up into the muscular arms of the jaguar. Watching as the orderly carries the out of the room like a babe, more than likely back to a nice padded room you find yourself chuckling somewhat at how, even in the midst of all the insanity going on around here, others are still caring enough to aid those in greater need. The orderly says nothing to you, but you do spy something labeled as a libido suppressant lying on the desk where the feline had passed just a second ago. Maybe the other had left it there as payment for your services?";
			ItemGain libido suppressant by 1;
			SanBoost 5;
			increase score by 5;
			now Resolution of Hurting is 1; [called an Orderly]
			now Hurting is resolved;
		else:
			LineBreak;
			say "     Not really sure if an orderly would be the right one to ask to deal with the (obviously in need of medication) weasel, you go out to search for a vixen instead. Finding one, but only after having searched through multiple rooms and seeing almost all of the lady foxes getting stuffed full by the orderlies on duty, you tell her about the psychotic weasel hiding in one of the other rooms and then lead her back to him. Upon getting into the other room with the nurse the weasel goes ballistic when he sees the female and charges at you as though in desperate need to escape.";
			challenge "Psycho Weasel";
			LineBreak;
			say "     Having fought the other enough to wear him down, the vixen nurse is able to get close enough to inject something into the weasel's arm which sends the wide-eyed mess of fur wrapped in a straight jacket straight into the land of unconsciousness. You watch in disbelief as the mustelid falls down onto the ground and then begins to twitch slightly from whatever is flowing through his system. Not sure if you've made the right decision on this one, you ask the nurse what's going to happen to the other and then balk slightly when you notice that she is nowhere to be found.";
			increase score by 1;
			now Resolution of Hurting is 2; [called a Nurse]
			now Hurting is resolved;
	else:
		LineBreak;
		say "     Deciding that caution would be the better part of valor on this one you slowly back away from the upturned desk and then out of the room while keeping your eyes on the straight jacket wearing weasel. The other lifts his head to look up at you for a moment, but then lowers his head to whimper and begin rocking once again after noticing your departure.";
		now Hurting is resolved;
		now Resolution of Hurting is 99; [disinterest]

Table of GameEventIDs (continued)
Object	Name
Conchien	"Conchien"

Conchien is a situation.
ResolveFunction of Conchien is "[ResolveEvent Conchien]".
Sarea of Conchien is "Outside".
beauceronmet is a truth state that varies. beauceronmet is usually false.

when play begins:
	add Conchien to BadSpots of FurryList;
	add Conchien to badspots of HermList;

to say ResolveEvent Conchien:
	now beauceronmet is true;
	say "     Walking along the streets of the city, you find the ground suddenly shaking all of a sudden. Thinking that it's an earthquake you freeze and then whip your head around frantically look around for safe cover to stand upon to wait out the tremor. Before you can do that however, the shaking quickly comes to a halt. Confused as to what's going on you blanch when a large shadow crosses over you and then a large finger taps you lightly onto the shoulder. Gulping thickly you turn hesitantly only to see a nine foot tall Beauceron cuntboy smiling down in your direction almost imploringly. With all the markings that would have made the other look somewhat like a giant Doberman, but not quite because of certain small differences, you find yourself coming to focus on the hot and dripping cunt of the other without really meaning to as the heady scent of canine musk begins to quickly perfume the air. The large folds are leaking a thick, but slow trail of clear honey down onto the ground between the other's feet and you swallow thickly as the scent of the cuntboy begins to get to you.";
	say "     'Excuse me, have you seen a collie about my size around here anywhere?' You find yourself blinking and then pointing on down the street without thinking. 'Thanks.' The Beauceron places one of his large paws onto his brow and then squints as if trying to look far into the distance. 'Where in the heck did that cousin of mine go to?' the other says and then steps past you to go above to go about his way. The last you see of the other is the slightly curled tail of the Dobie lookalike disappearing down the road with a slight wag offsetting the huge furry appendage.";
	increase Libido of Player by 17;
	if Libido of Player > 100, now Libido of Player is 100;
	increase score by 1;
	now Conchien is resolved;

Table of GameEventIDs (continued)
Object	Name
Chocolate Treat	"Chocolate Treat"

Chocolate Treat is a situation.
ResolveFunction of Chocolate Treat is "[ResolveEvent Chocolate Treat]".
Sarea of Chocolate Treat is "High".

when play begins:
	add Chocolate Treat to BadSpots of FurryList;
	add Chocolate Treat to badspots of HumorousList;
	add Chocolate Treat to badspots of HermList;

to say ResolveEvent Chocolate Treat:
	setmonster "Chocolate Lab";
	say "     Wandering through the high rise district, you find yourself smelling a sweet scent wafting throughout the slightly musky air of the city, the likes of which cause your stomach to grumble. Feeling yourself growing hungry all of a sudden, you end up following the smell all the way until you notice several Chocolate Labs congregating around each other in a small puppy pile behind the back of a dilapidated building. There are numerous chocolate bar wrappers strewn about, the confectionary dogs clearly full and sated for the moment. The unusual dogs lie together, slightly flowing into one another as their liquid bodies seem to have no clear division between themselves and their neighbors. Not wanting to disturb the pack, but feeling slightly ravenous all the same from their scent, you don't notice when one of the flowing, chocolate canines comes up behind you until you feel something brushing up one side of your leg. Flipping your head around, you watch as the other pants happily up at you before lifting its leg slightly, as if knowing what you want. Understanding rushes through you as you find yourself slurping your lips while greedily eying the bobbing cock of the obviously horny Lab as it dribbles some white chocolate goo.";
	say "     [bold type]Should you try and sate you appetite with a small taste?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	if Player consents:
		LineBreak;
		say "     Deciding what the heck, you get down onto your knees and then unhurriedly take the chocolate canine's prick into your warm mouth. The taste of warm chocolate makes you almost purr as you bob your head up and down while trying to milk the sweet tasting canine of the contents in its gooey balls. The Chocolate Lab grunts and whines as it begins to thrust into your face casually and consequently the sounds the stud dog is making draws over the small pack over as they wonder what the noise is all about. Upon finding you sucking off one of their own the rest of the chocolate canines are quick to try and get in on the action as they bark and yap and tear at your clothing to get you naked. Once done, you can't really fight them as two of the Labs have you pinned down against the one you're still sucking off. The group soon takes their turn at licking over your entire body and down further across your spine until they eventually start to tongue your [if Player is female]wet pussy and [end if]puckered hole all at once.";
		WaitLineBreak;
		say "     It isn't long before the one in your mouth explodes and, without missing a beat, you suck down the Lab's creamy treat while rolling your hand over the canine's pulsing balls to get every delicious drop. Once the other is done though, another Lab is quick to come over and then stuff himself deep inside of you slightly still full mouth to give you an extra added helping of the white chocolate delight you just had. This wouldn't have been so bad except in the next moment one of the Labradors behind you takes it upon himself to mount you. By the time you come think that maybe you've made a bad decision, the entire pack is circling around with many of the other Chocolate Labs humping at your sides and leaking milk chocolate precum onto your [BodyType of Player] body while waiting for their chance to get at you as the one atop you slowly begins to slide its gooey, flowing hips against across backside while its flowing cock pulses inside you.";
		WaitLineBreak;
		say "     The fucking and sucking and creaming over and into your body lasts for almost an hour and before you know it you find that your own body has taken on the form of the Chocolate Labs around you. It almost seems as if part of you flowed and mingled with their molten chocolate bodies such that you lost part of yourself even as their confectionary canine instincts spread into you. By the time the orgy is done with you are no longer hungry for a taste of Chocolate as your belly is literally sloshing with milky cocoa goodness. Burping slightly when the last two Labradors flow away from both your face and ass, you pant gratefully as you watch the pack come over to lick you across the face and then slowly begin to move away from you one by one by one. Finding yourself alone soon after you chuckle slightly as you think about how your desires have finally gotten the best of you on this day.";
		PlayerEat 20;
		PlayerDrink 10;
		if BodyName of Player is "Chocolate Lab" or FaceName of Player is "Chocolate Lab":
			decrease humanity of Player by a random number between 25 and 35;
			if "Strong Psyche" is listed in feats of Player, increase humanity of Player by a random number between 5 and 10;
			if "Weak Psyche" is listed in feats of Player, decrease humanity of Player by a random number between 0 and 5;
		else:
			decrease humanity of Player by a random number between 20 and 30;
			increase hunger of Player by 12;
			if "Strong Psyche" is listed in feats of Player, increase humanity of Player by a random number between 5 and 10;
			if "Weak Psyche" is listed in feats of Player, decrease humanity of Player by a random number between 0 and 5;
		setmonster "Chocolate Lab" silently;
		turn the Player into a "Chocolate Lab";
		if hellHoundLevel is 0:
			follow the sex change rule;
			follow the sex change rule;
		WaitLineBreak;
		if Libido of Player < 70, now Libido of Player is 70;
		if humanity of Player < 10:
			say "     As you watch them flow away, you find your old thoughts flowing away as well. Your body further loses cohesion, going from a semi-solid state into one of flowing, liquid chocolate with a dog-like shape. As your new instincts for chocolate doggy hunger and lust take over, you pad quickly after your new pack, trailing cocoa brown pawprints.";
			wait for any key;
			end the story saying "Your mind melted away into the chocolate dogs, leaving you one of them.";
			wait for any key;
			follow the turnpass rule;
			stop the action;
		else:
			say "     You manage to keep your mind together enough to pull yourself into a somewhat more solid and bipedal form. Still deeply infected and weakened, you manage to hold onto enough of your humanity to continue your quest for survival. You do feel a strong longing for more sex or more chocolate. Or best of all, more chocolate sex. You stumble away, trying to pull yourself into enough cohesion to walk as you rub your cream-filled tummy.";
			CreatureSexAftermath "Player" receives "PussyFuck" from "Chocolate Lab";
			CreatureSexAftermath "Player" receives "AssFuck" from "Chocolate Lab";
			CreatureSexAftermath "Player" receives "OralCock" from "Chocolate Lab";
			now Resolution of Chocolate Treat is 1; [went through, stayed sane]
	else:
		LineBreak;
		say "     Thinking it would be better to go without, considering the gleaming look in the canine's eyes is just too devious to be something ordinary, you shake your head at the Chocolate Labrador and then walk right on by it without saying a word to the beast. This doesn't go quite as planned for you because soon the other is barking and chasing you down the street.";
		now Resolution of Chocolate Treat is 99; [avoided the choc]
	now Chocolate Treat is resolved;


Misc 7 ends here.
