Version 1 of Campus Events by Wahn begins here.
[ Original File by Stripes, expanded by Wahn]

"Adds a series of random events to Flexible Survival located at or focusing on the College Campus area."

CollegeLibraryBrutusEncounter is a number that varies.
CollegeLibraryRyouseiEncounter is a number that varies.
FratPartyRecruiterProgression is a number that varies.

Section 1 - Marching Band

Table of GameEventIDs (continued)
Object	Name
Marching Band	"Marching Band"

Marching Band is a situation.
ResolveFunction of Marching Band is "[ResolveEvent Marching Band]".
Sarea of Marching Band is "Campus".

to say ResolveEvent Marching Band:
	say "     While exploring the campus, you are suddenly surprised to hear the sound of music starting up. A welcome change from the normal sounds of sex-crazed creatures and horny mutants, you cautiously head over to investigate. You find a variety of infected creatures stuffed into ill-fitting uniforms and carrying instruments as they try to coalesce into a marching band. They start up and stop several times, distracted by one or more of them deciding to hump another, give a blow job or otherwise give in to their sexual desires. But eventually they do get going as their border collie band leader nips them back into position, once everyone's gotten off one last time. The horny group then marches off playing the national anthem as they make their way towards one of the fields.";
	increase score by 1;
	now Marching Band is resolved;

Section 2 - Art Department

Table of GameEventIDs (continued)
Object	Name
Arts Department	"Arts Department"

Arts Department is a situation.
ResolveFunction of Arts Department is "[ResolveEvent Arts Department]". The level of Arts Department is 3.
Sarea of Arts Department is "Campus".
when play begins:
	add Arts Department to BadSpots of FemaleList;
	add Arts Department to BadSpots of FurryList;

to say ResolveEvent Arts Department:
	say "     You find yourself in front of the school's arts department building, finding it a rather small and neglected part of the campus. Clearly used just for some easy credits, it's not given much respect here. You decide to slip inside, hoping to find something of use since the muscle-bound creatures around don't seem to have been around here. You go down the halls, finding most of the rooms locked or empty until you come to a room used for sculpting. Inside, you find a female lizard who's elated to find you, an ample subject for her special, artistic talents.";
	challenge "Lizard Girl";
	now Arts Department is resolved;


Section 3 - Phi Iota Gamma

[moved and expanded within the PIG Frat file.]

Section 4 - Languages Department

[revised in the Misc Events file - Pandemonium]


Section 5 - Wandering the Campus

Table of GameEventIDs (continued)
Object	Name
Wandering the Campus	"Wandering the Campus"

Wandering the Campus is a situation.
ResolveFunction of Wandering the Campus is "[ResolveEvent Wandering the Campus]". The level of Wandering the Campus is 9.
Sarea of Wandering the Campus is "Campus".
campuswander is a list of numbers that varies.
campuswanderfight is a number that varies.
when play begins:
	add Wandering the Campus to BadSpots of FurryList;

to say ResolveEvent Wandering the Campus:
	if MaleList is banned and 1 is not listed in campuswander, add 1 to campuswander;
	if HermList is banned and 2 is not listed in campuswander, add 2 to campuswander;
	if HermList is banned and 3 is not listed in campuswander, add 3 to campuswander;
	if FemaleList is banned and 4 is not listed in campuswander, add 4 to campuswander;
	if HermList is banned and 5 is not listed in campuswander, add 5 to campuswander;
	if MaleList is banned and 6 is not listed in campuswander, add 6 to campuswander;
	if MaleList is banned and 7 is not listed in campuswander, add 7 to campuswander;
	if MaleList is banned and FemaleList is banned and HermList is banned:
		say "     Traveling across the completely unpopulated campus, you have to wonder why you're even bothering to come here.";
	if number of entries in campuswander > 6, say "     You have an uneventful passage across the campus.";
	let T be a random number between 1 and 7;
	let SafetyCounter be 0;
	while T is listed in campuswander:
		increase T by 1;
		increase SafetyCounter by 1;
		if T is 8:
			now T is 1;
		if SafetyCounter > 14: [just to avoid an endless loop in case something goes wrong]
			say "     You have an uneventful passage across the campus.";
			now Wandering the Campus is resolved;
			break;
	now showlocale is false;
	if T is 1:			[replaced with Fruit Bat]
		say "     Your wandering across the campus is interrupted by the appearance of a speedo'd bat quickly approaching. Perhaps coming from one of the college's Olympic or diving pools, he looks like he's recently gotten out of the water and is now looking for some fun to round out his exercise regimen.";
		challenge "Fruit Bat";
		add 1 to campuswander;
	else if T is 2:
		say "     Your wandering across the campus is interrupted as an athletic puma herm comes rushing out from one of the buildings, plowing into you. After a brief scuffle, you push her away and try to back off, but it's too late; she's already fixed her attention onto you. Licking her muzzle as her cock starts to engorge with growing arousal, whatever she was running to or from completely forgotten in the face of her sexy prey.";
		challenge "Cougar";
		add 2 to campuswander;
	else if T is 3:
		now campuswanderfight is 1; [minor description/scene edits]
		say "     As you travel the campus, you hear the rustle of the hedgerow beside you moments before a large, striped feline comes pouncing out of it at you. You barely manage to avoid this sneak attack, but are now facing this large tigertaur that's found her way to the college. Perhaps she succumbed to her infection after making it here.";
		challenge "Tigertaur";
		now campuswanderfight is 0; [minor description/scene edits]
		add 3 to campuswander;
	else if T is 4:
		say "     Your travel across the college grounds is interrupted as a red kangaroo girl bounds onto a nearby car, then off again, moving to bar your path with a look of lustful excitement in her eyes.";
		challenge "Red Kangaroo";
		add 4 to campuswander;
	else if T is 5:
		say "     A large wolf creature leaps out from a broken window on one of the buildings. She growls toothily at you as she rises up from all fours to stand upright, showing off her herm body to you. She looks you over with a hunger that is wholly carnal in nature.";
		challenge "Painted Wolf Herm";
		add 5 to campuswander;
	else if T is 6:
		say "     As you're trying to move across the campus in search of what you need, you are cut short by what you thought was a passed out creature rising to his feet as you get close. The snow leopard moans and wipes his brow, staggering a little. 'Aww man, where's the beer? I could really use another drink,' he says, panting at the heat. Licking his lips as he looks you over, he eyes your [if Breast Size of Player > 0]tits[else]crotch[end if] and licks his muzzle, intent on using you to slake his thirst.";
		challenge "Snow Leopard";
		add 6 to campuswander;
	else if T is 7:
		say "     Preparing to cut across a large, open area on the campus, you look around carefully, wary of any hostile creatures which may spot you. Not finding any, you make a dash for it, still scanning from side to side. But your attempt is thwarted when you hear something above you moving in quickly.";
		challenge "Bald Eagle";
		add 7 to campuswander;
	now battleground is "void"; [prevents a random fight, as these are replacement random fights]
	now showlocale is true;
	if number of entries in campuswander > 6:
		now Wandering the Campus is resolved;


Section 6 - Anime Club

Table of GameEventIDs (continued)
Object	Name
Anime Club	"Anime Club"

Anime Club is a situation.
ResolveFunction of Anime Club is "[ResolveEvent Anime Club]". the level of Anime Club is 12.
Sarea of Anime Club is "Campus".
animeclubfight is a truth state that varies. animeclubfight is usually false.

when play begins:
	add Anime Club to BadSpots of FemaleList;
	add Anime Club to BadSpots of MaleList;

to say ResolveEvent Anime Club:
	say "     As you're going through one of the many buildings on campus, you hear some knocking and a voice coming from the next floor while climbing the stairwell. Heading towards it, you quickly start to make out the female voice getting louder and more frantic about wanting to get inside. '...from the window. Please, I just need somewhere safe to hide. Please. Quick. I can hear someth... whaaaa!'";
	say "     Just as you're turning the corner to catch up to this other survivor, you see the door in front of her open and another female grab her. The woman from inside isn't quite human, with cartoonishly sexy proportions, perfectly smooth pink skin and oversized, expressive eyes. The survivor struggles, but is pulled inside. Cautiously approaching, you can see that the door isn't quite shut. The sign on the door says it's the college's Anime Club.";
	say "     Inside, you can hear the sounds of both a struggle and of sex.";
	say "     [bold type]Shall you try to rescue the poor woman?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	if Player consents:
		now animeclubfight is true;
		say "     Shoving open the door to the anime club, you find three figures in front of a television in there. On the screen and providing most of the light in the [if daytimer is day]blind-[end if]darkened room is [if Player is animebabebodied]an entrancing video of tentacle porn[else]a video of tentacle porn[end if]. But the moans and sticky sounds of sex aren't just coming from the video, but also from those watching. The captured woman is being held in the arms of a young man with several slimy tentacles of his own, helped by the anime babe who grabbed her in the first place. She's struggling a little, but is quickly becoming focused on the video while the pair grope and fuck her, much like is happening on screen.";
		say "     Keeping your eyes averted from the screen, you move in the rescue the young woman before things get out of hand. This prompts the anime babe to get up and come at you, trying to protect their prize.";
		challenge "Anime Babe";
		if fightoutcome >= 10 and fightoutcome <= 19:
			say "     Having temporarily knocked out the anime babe, the tentacled guy pushes the entranced woman from his lap, his enlarged cock pulling out of her with a wet slurp. She releases a disappointed sound, but remains transfixed by the video. Her eyes have grown wider and her skin is the same even pink as the woman you just defeated, already well on her way to being transformed. Eager to deal with the interloper, this hentai fan rushes at you, tentacles waving wildly.";
			challenge "Hentai Fan";
			if fightoutcome >= 10 and fightoutcome <= 19:
				say "     With the tentacle mutant defeated, you drive the two of them from the room and shut off the video. The captured girl looks up at you, blinking her wide eyes. She seems a little disappointed that the anime has stopped showing, but is also starting to regain some focus. With her already well on her way to being transformed, she's become quite confused by you're able to coax her to her feet and flee the strange room together. She's very grateful to you for having rescued her and gives you a big hug and a kiss before she realizes what she's doing. After making out together in an empty classroom, she thanks you again for your help while handing you some food and water. After some more playful groping, she heads off in search of a new hiding place. You'd offered to house her in the bunker, but she's still holding out hope of finding some of her friends.";
				ItemGain food by 1;
				ItemGain water bottle by 1;
				increase score by 10;
				SanBoost 5;
				now Resolution of Anime Club is 1; [rescued her]
			else if fightoutcome >= 20 and fightoutcome <= 29:
				say "     The hentai boy pushes you to sit down beside the captured girl, groping and fondling you while you watch the video. A part of you knows you shouldn't, but you're too weary and aroused from fighting to resist any longer. As you watch, you can almost feel the tentacles on the screen grabbing and touching you just like in the animation. It takes you a few moments to realize that the tentacled mutant behind you is imitating the events on screen, adding to your immersion. The fallen anime babe, recovered from her fight, moves over to snuggle with you, showing there's no hard feelings now that you've settled down to watch some hentai with them. You moan in pleasure, your excitement building.";
				say "[animeclublost]";
			else if fightoutcome >= 30:
				say "     Deciding to cut your losses, you dodge your way back to the door and run out of the room. There's a brief pursuit, but it goes no further than the stairs as there's already one new prize to be enjoyed.";
		else if fightoutcome >= 20 and fightoutcome <= 29:
			say "     The anime babe pushes you to sit down beside the captured girl, groping and fondling you while you watch the video. A part of you knows you shouldn't, but you're too weary and aroused from fighting to resist any longer. As you watch, you can almost feel the tentacles on the screen grabbing and touching you just like in the animation. It takes you a few moments to realize that the tentacled mutant behind you is imitating the events on screen, adding to your immersion. You moan in pleasure, your excitement building.";
			say "[animeclublost]";
		else if fightoutcome >= 30:
			say "     Deciding to cut your losses, you dodge your way back to the door and run out of the room. There's a brief pursuit, but it goes no further than the stairs as there's already one new prize to be enjoyed.";
	else:
		say "     Deciding it's none of your concern, you creep away before anything else is drawn by the noise or another of those Anime Babes spots you.";
		now Resolution of Anime Club is 99; [disinterest]
	now animeclubfight is false;
	now Anime Club is resolved;

to say animeclublost:
	setmonster "Hentai Fan";
	if Player is male:
		say "     As those slick tendrils slide over you, squeezing sensitive spots, the animated beauty lowers her head into your lap and sets herself to licking and sucking your cock. She works eagerly to suck you off, her tongue playfully sliding over your shaft [if Cunt Count of Player > 1]while the hentai fan pushes squirming tentacles into your pussies[else if Cunt Count of Player is 1]while the hentai fan pushes a squirming tentacle into your pussy[else if anallevel > 1]as the hentai fan pushes a squirming tentacle into your ass, fucking you with it[else]as she kneads your balls[end if]. The pleasure of being assaulted by tentacles as you watch a hentai video is very arousing and quickly has you moaning lustfully. Beside you, the tentacled guy is bouncing the increasingly transformed girl in his lap, stuffing her cunt with his throbbing cock.";
	else if Player is female:
		say "     As those slick tendrils slide over you, squeezing sensitive spots, the animated beauty spreads your legs and your pussy's lips. With yourself spread open, the hentai fan shoves a tentacle cock into your cunt[sfn], stuffing your needy hole[sfn] just like you're seeing on the screen. The pleasure of being tentacle raped as you watch a hentai video is very arousing and quickly has you moaning lustfully. Beside you, the tentacled guy is bouncing the increasingly transformed girl in his lap, stuffing her cunt with his throbbing cock.";
	else:
		say "     As those slick tendrils slide over you, squeezing sensitive spots, the animated beauty rubs sadly over your bare groin and pushes you into a kneeling position. She keeps your head pointed towards the television as she uses her other hand to guide a tentacle cock to your ass. You groan softly in kinky pleasure as it pushes into your anus and starts to fuck you. The pleasure of being tentacle raped as you watch a hentai video is very arousing and quickly has you moaning lustfully. Beside you, the tentacled guy is bouncing the increasingly transformed girl in his lap, stuffing her cunt with his throbbing cock.";
	if Player is female:
		say "     After he has cum into the girl beside you and she's fully transformed into another slutty anime babe, he turns his full attention upon up. Pulling you into his lap, he stuffs his still hard and cum-slick cock into your cunt and starts giving you the same treatment he just gave his other prize[if Cunt Count of Player > 1]. He fills your other juicy holes and your mouth with tentacle cocks[else if anallevel > 1]. He crams a tentacle cock into your ass and another down your throat[else]. He gropes your chest and ass with his tentacle cocks[end if], something that's incredibly arousing to you while under the effects of the video that's captivated your attention. After a thoroughly delightful fucking, he cums in a steady rush of semen from his cocks, coating you inside and out with his tainted seed.";
		CreatureSexAftermath "Player" receives "PussyFuck" from "Hentai Fan";
		CreatureSexAftermath "Player" receives "PussyFuck" from "Hentai Fan";
	else if Player is male:
		say "     After he's cum into the girl beside you and she's fully transformed into another slutty anime babe, he turns his full attention upon you. He restrains you with those sexy tentacles of his and has the new anime babe climb into your lap so she can ride your cock while he gropes and fondles you with his tendrils[if anallevel > 1]. As she rides you, he fucks you thoroughly with a tentacle cock up your ass and pushing another down your throat. It squirms and pumps delightfully inside you, fucking deep inside your bowels. When it starts to cum in a steady flow, you cum hard in the new anime babe's cream-filled pussy[else]. As she rides you, he even pushes a tentacle cock up your ass and another down your throat, fucking you with them until you cum hard in her cream-filled pussy[end if]. Being coated inside and out by the hentai creature's tainted seed is incredibly arousing while under the effects of the video that's captivated your attention.";
		CreatureSexAftermath "Player" receives "AssFuck" from "Hentai Fan";
		CreatureSexAftermath "Player" receives "AssFuck" from "Hentai Fan";
	else:
		say "     After he's cum into the girl beside you and she's fully transformed into another slutty anime babe, he turns his full attention upon you. He restrains you with those sexy tentacles of his and shoves his large cock into your ass alongside the tentacle already filling you. His hands and tentacles grope you, one of those tendrils stuffing your mouth and going down your throat. As he has his way with you, you can see the two anime babes making out beside you. You only notice this out of the corner of your eye, your focus still locked on the animation on the screen, much of which is being duplicated upon your person at this very moment. He fucks you thoroughly with those two throbbing rods up your ass at once until he groans and cums in a steady flow filling you from both ends with his tainted seed.";
		CreatureSexAftermath "Player" receives "AssFuck" from "Hentai Fan";
		CreatureSexAftermath "Player" receives "AssFuck" from "Hentai Fan";
	say "     Things continue on like this, the four of you having a sexy orgy of tentacular fun. Every available hole is filled repeatedly by tentacle cocks and left overflowing with the hentai fan's tainted seed. Several more videos are watched over the course of this viewing, their sexy contents sinking into your mind even as your body is changed more and more to be like those sexily animated girls getting fucked alongside you";
	SanLoss 25;
	[puts Anime Babe as lead monster for infection and impregnation]
	setmonster "Anime Babe" silently;
	turn the Player into a "Anime Babe";
	if hellHoundLevel is 0:
		follow the sex change rule;
		follow the sex change rule;
	if Libido of Player < 60, now Libido of Player is 60;
	if humanity of Player < 10:
		say ". With your mind fading away, you eventually lose yourself as your mind is overwritten by the content of the videos you've been watching. You're released out onto the campus, heading off in search of others to share your new fandom and lust for tentacles with, willing or not.";
		WaitLineBreak;
		end the story saying "Only thoughts of anime and tentacles fill your mind as you succumb to your infection.";
		now battleground is "void";
		wait for any key;
		follow the turnpass rule;
		stop the action;
	else:
		say ". With your mind muddled by the content of the videos you've been watching, you almost succumb entirely, but somehow manage to hold on to part of yourself. When you're released out onto the campus to search for others to share your new fandom and lust for tentacles with others, your mind gradually pulls itself together enough to shake yourself out of the infection-addled fugue enough to get yourself back on track.";
	now Resolution of Anime Club is 2; [lost]

Campus Events ends here.
