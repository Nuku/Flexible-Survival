Version 1 of Campus Events by Stripes begins here.
[ Version 1.2 - Wrestling Wolf random encounter blocked out. ]
[ Added Anime Club event.]

"Adds a series of random events to Flexible Survival located at or focusing on the College Campus area."


Section 1 - Marching Band

Marching Band is a situation.
The sarea of Marching Band is "Campus".

Instead of resolving a Marching Band:
	say "     While exploring the campus, you are suddenly surprised to hear the sound of music starting up. A welcome change from the normal sounds of sex-crazed creatures and horny mutants, you cautiously head over to investigate. You find a variety of infected creatures stuffed into ill-fitting uniforms and carrying instruments as they try to coalesce into a marching band. They start up and stop several times, distracted by one or more of them deciding to hump another, give a blow job or otherwise give in to their sexual desires. But eventually they do get going as their border collie band leader nips them back into position once everyone's gotten off one last time before they can march off the national anthem as they proceed towards one of the fields.";
	increase score by 1;
	Now Marching Band is resolved;


Section 2 - Art Department

Arts Department is a situation. The level of Arts Department is 3.
The sarea of Arts Department is "Campus".
when play begins:
	add Arts Department to badspots of girl;
	add Arts Department to badspots of furry;

Instead of resolving a Arts Department:
	say "     You find yourself in front of the school's arts department building, finding it a rather small and neglected part of the campus. Clearly used just for some easy credits, it's not given much respect here. You decide to slip inside, hoping to find something of use since the muscle-bound creatures around don't seem to have been around here. You go down the halls, finding most of the rooms locked or empty until you come to a room used for sculpting. Inside, you find a female lizard who's elated to find you, an ample subject for her special, artistic talents.";
	challenge "Lizard Girl";
	now Arts Department is resolved;


Section 3 - Phi Iota Gamma

[moved and expanded within the PIG Frat file.]

Section 4 - Languages Department

Languages Department is a situation.
The sarea of Languages Department is "Campus".

Instead of resolving a Languages Department:
	say "     Passing behind one building, you almost bump into a small group of creatures arguing loudly and incomprehensibly. Among the group are a French frog, a Chinese dragon, an Indian elephant, a Russian bear and several other walking stereotypes who can no longer understand each other. You suspect they've all somehow become altered by the infection into forms to suit the language course they taught or studied. You decide to give what is probably the Languages Department a wide berth before you start speaking another language as well to further compound your problems in this city gone mad.";
	Now Languages Department is resolved;


Section 5 - Wandering the Campus

Wandering the Campus is a situation. The level of Wandering the Campus is 9.
The sarea of Wandering the Campus is "Campus".
campuswander is a list of numbers that varies.
campuswanderfight is a number that varies.
when play begins:
	add Wandering the Campus to badspots of furry;

Instead of resolving a Wandering the Campus:
	if guy is banned and 1 is not listed in campuswander, add 1 to campuswander;
	if hermaphrodite is banned and 2 is not listed in campuswander, add 2 to campuswander;
	if hermaphrodite is banned and 3 is not listed in campuswander, add 3 to campuswander;
	if girl is banned and 4 is not listed in campuswander, add 4 to campuswander;
	if hermaphrodite is banned and 5 is not listed in campuswander, add 5 to campuswander;
	if guy is banned and 6 is not listed in campuswander, add 6 to campuswander;
	if guy is banned and 7 is not listed in campuswander, add 7 to campuswander;
	if guy is banned and girl is banned and hermaphrodite is banned:
		say "     Travelling across the completely unpopulated campus, you have to wonder why you're even bothering to come here.";
	if number of entries in campuswander is 6, say "     You have an uneventual passage across the campus.";
	let T be a random number between 1 and 6;
	while T is listed in campuswander:
		increase T by 1;
		if T is 7, now T is 1;
	now showlocale is false;
	if T is 1:			[replaced with Fruit Bat]
		say "     Your wandering across the campus is interrupted by the appearance of a speedo'd bat quickly approaching. Perhaps coming from one of the college's olympic or diving pools, he looks like he's recently gotten out of the water and is now looking for some fun to round out his exercise regimen.";
		challenge "Fruit Bat";
		add 1 to campuswander;
	if T is 1:
		say "     Your wandering across the campus is interrupted as an athletic puma herm comes rushing out from one of the buildings, plowing into you. After a brief scuffle, you push her away and try to back off, but it's too late; she's already fixed her attention onto you. Licking her muzzle as her cock starts to engorge with growing arousal, whatever she was running to or from completely forgotten in the face of her sexy prey.";
		challenge "Cougar";
		add 1 to campuswander;
	if T is 2:
		now campuswanderfight is 1;	[minor description/scene edits]
		say "     As you travel the campus, you hear the rustle of the hedgerow beside you moments before a large, striped feline comes pouncing out of it at you. You barely manage to avoid this sneak attack, but are now facing this large tigertaur that's found her way to the college. Perhaps she succumbed to her infection after making it here.";
		challenge "Tigertaur";
		now campuswanderfight is 0;	[minor description/scene edits]
		add 2 to campuswander;
	if T is 3:
		say "     Your travel across the college grounds is interrupted as a red kangaroo girl bounds onto a nearby car, then off again, moving to bar your path with a look of lustful excitement in her eyes.";
		challenge "Red Kangaroo";
		add 3 to campuswander;
	if T is 4:
		say "     A large wolf creature leaps out from a broken window on one of the buildings. Shi growls toothily at you as shi rises up from all fours to stand upright, showing off hir herm body to you. Shi looks you over with a hunger that is wholely carnal in nature.";
		challenge "Painted Wolf Herm";
		add 4 to campuswander;
	if T is 5:
		say "     As you're trying to move across the campus in search of what you need, you are cut short by what you thought was a passed out creature rising to his feet as you get close. The snow leopard moans and wipes his brow, staggering a little. 'Aww man, where's the beer?  I could really use another drink,' he says, panting at the heat. Licking his lips as he looks you over, he eyes your [if breast size of player > 0]tits[otherwise]crotch[end if] and licks his muzzle, intent on using you to slake his thirst.";
		challenge "Snow Leopard";
		add 5 to campuswander;
	if T is 6:
		say "     Preparing to cut across a large, open area on the campus, you look around carefully, wary of any hostile creatures which may spot you. Not finding any, you make a dash for it, still scanning from side to side. But your attempt is thwarted when you hear something above you moving in quickly.";
		challenge "Bald Eagle";
		add 6 to campuswander;
	now battleground is "void";		[prevents a random fight, as these are replacement random fights]
	now showlocale is true;
	if number of entries in campuswander is 6, now Wandering the Campus is resolved;


Section 6 - Anime Club

Anime Club is a situation. the level of Anime Club is 12.
The sarea of Anime Club is "Campus".
animeclubfight is a truth state that varies. animeclubfight is usually false.

when play begins:
	add Anime Club to badspots of girl;
	add Anime Club to badspots of guy;

Instead of resolving a Anime Club:
	say "     As you're going through one of the many buildings on campus, you hear some knocking and a voice coming from the next floor while climbing the stairwell. Heading towards it, you quickly start to make out the female voice getting louder and more frantic about wanting to get inside. '...from the window. Please, I just need somewhere safe to hide. Please. Quick. I can hear someth... whaaaa!'";
	say "     Just as you're turning the corner to catch up to this other survivor, you see the door in front of her open and another female grab her. The woman from inside isn't quite human, with cartoonishly sexy proportions, perfectly smooth pink skin and oversized, expressive eyes. The survivor struggles, but is pulled inside. Cautiously approaching, you can see that the door isn't quite shut. The sign on the door says it's the college's Anime Club.";
	say "     Inside, you can hear the sounds of both a struggle and of sex.";
	say "     [bold type]Shall you try to rescue the poor woman?[roman type][line break]";	
	Line Break;
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	if the player consents:
		now animeclubfight is true;
		say "     Shoving open the door to the anime club, you find three figures in front of a television in there. On the screen and providing most of the light in the [if daytimer is day]blind-[end if]darkened room is [if player is animebabebodied]an entrancing video of tentacle porn[otherwise]a video of tentacle porn[end if]. But the moans and sticky sounds of sex aren't just coming from the video, but also from those watching. The captured woman is being held in the arms of a young man with several slimy tentacles of his own, helped by the anime babe who grabbed her in the first place. She's struggling a little, but is quickly becoming focused on the video while the pair grope and fuck her, much like is happening on screen.";
		say "     Keeping your eyes averted from the screen, you move in the rescue the young woman before things get out of hand. This prompts the anime babe to get up and come at you, trying to protect their prize.";
		challenge "Anime Babe";
		if fightoutcome >= 10 and fightoutcome <= 19:
			say "     Having temporarily knocked out the anime babe, the tentacled guy pushes the entranced woman from his lap, his enlarged cock pulling out of her with a wet slurp. She releases a disappointed sound, but remains transfixed by the video. Her eyes have grown wider and her skin is the same even pink as the woman you just defeated, already well on her way to being transformed. Eager to deal with the interloper, this hentai fan rushes at you, tentacles waving wildly.";
			challenge "Hentai Fan";
			if fightoutcome >= 10 and fightoutcome <= 19:
				say "     With the tentacle mutant defeated, you drive the two of them from the room and shut off the video. The captured girl looks up at you, blinking her wide eyes. She seems a little disappointed that the anime has stopped showing, but is also starting to regain some focus. With her already well on her way to being transformed, she's become quite confused by you're able to coax her to her feet and flee the strange room together.";
				say "     She's very grateful to you for having rescued her and gives you a big hug and a kiss before she realizes what she's doing. After making out together in an empty classroom, she thanks you again for your help while handing you some food and water. After some more playful groping, she heads off in search of a new hiding place. You'd offered to house her in the bunker, but she's still holding out hope of finding some of her friends.";
				increase carried of food by 1;
				increase carried of water bottle by 1;
				increase score by 10;
				increase humanity of player by 5;
				if humanity of player > 100, now humanity of player is 100;
[				
				say "     With the tentacle mutant defeated, you drive the two of them from the room and shut off the video. The captured girl looks up at you, blinking her wide eyes. She seems a little disappointed that the anime has stopped showing, but is also starting to regain some focus. With her already well on her way to being transformed, shall you take advantage of the situation and [link]fuck the girl (Y)[as]y[end link] or shall you try to snap her out of it and [link]escape (N)[as]n[end link]?";
				if the player consents:
					say "...";
				else:
					say "...";
]
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
	now animeclubfight is false;
	now Anime Club is resolved;


to say animeclublost:
	setmonster "Hentai Fan";
	if cocks of player > 0:
		say "     As those slick tendrils slide over you, squeezing sensitive spots, the animated beauty lowers her head into your lap and sets herself to licking and sucking your cock. She works eagerly to suck you off, her tongue playfully sliding over your shaft [if cunts of player > 1]while the hentai fan pushes squirming tentacles into your pussies[else if cunts of player is 1]while the hentai fan pushes a squirming tentacle into your pussy[else if anallevel > 1]as the hentai fan pushes a squirming tentacle into your ass, fucking you with it[otherwise]as she kneads your balls[end if]. The pleasure of being assaulted by tentacles as you watch a hentai video is very arousing and quickly has you moaning lustfully. Beside you, the tentacled guy is bouncing the increasingly transformed girl in his lap, stuffing her cunt with his throbbing cock.";
	else if cunts of player > 0:
		say "     As those slick tendrils slide over you, squeezing sensitive spots, the animated beauty spreads your legs and your pussy's lips. With yourself spread open, the hentai fan shoves a tentacle cock into your cunt[sfn], stuffing your needy hole[sfn] just like you're seeing on the screen. The pleasure of being tentacle raped as you watch a hentai video is very arousing and quickly has you moaning lustfully. Beside you, the tentacled guy is bouncing the increasingly transformed girl in his lap, stuffing her cunt with his throbbing cock.";
	else:
		say "     As those slick tendrils slide over you, squeezing sensitive spots, the animated beauty rubs sadly over your bare groin and pushes you into a kneeling position. She keeps your head pointed towards the television as she uses her other hand to guide a tentacle cock to your ass. You groan softly in kinky pleasure as it pushes into your anus and starts to fuck you. The pleasure of being tentacle raped as you watch a hentai video is very arousing and quickly has you moaning lustfully. Beside you, the tentacled guy is bouncing the increasingly transformed girl in his lap, stuffing her cunt with his throbbing cock.";
	if cunts of player > 0:
		say "     After he's cum into the girl beside you and she's fully transformed into another slutty anime babe, he turns his full attention upon up. Pulling you into his lap, he stuffs his still hard and cum-slick cock into your cunt and starts giving you the same treatment he just gave his other prize[if cunts of player > 1]. He fills your other juicy holes and your mouth with tentacle cocks[else if anallevel > 1]. He crams a tentacle cock into your ass and another down your throat[otherwise]. He gropes your chest and ass with his tentacle cocks[end if], something that's incredibly arousing to you while under the effects of the video that's captivated your attention. After a thoroughly delightful fucking, he cums in a steady rush of semen from his cocks, coating you inside and out with his tainted seed.[impregchance][impregchance]";
	else if cocks of player > 0:
		say "     After he's cum into the girl beside you and she's fully transformed into another slutty anime babe, he turns his full attention upon you. He restrains you with those sexy tentacles of his and has the new anime babe climb into your lap so she can ride your cock while he gropes and fondles you with his tendrils[if anallevel > 1]. As she rides you, he fucks you thoroughly with a tentacle cock up your ass and pushing another down your throat. It squirms and pumps delightfully inside you, fucking deep inside your bowels. When it starts to cum in a steady flow, you cum hard in the new anime babe's cream-filled pussy[otherwise]. As she rides you, he even pushes a tentacle cock up your ass and another down your throat, fucking you with them until you cum hard in her cream-filled pussy[end if]. Being coated inside and out by the hentai creature's tainted seed is incredibly arousing while under the effects of the video that's captivated your attention.[mimpregchance][mimpregchance]";
	else:
		say "     After he's cum into the girl beside you and she's fully transformed into another slutty anime babe, he turns his full attention upon you. He restrains you with those sexy tentacles of his and shoves his large cock into your ass alongside the tentacle already filling you. His hands and tentacles grope you, one of those tendrils stuffing your mouth and going down your throat. As he has his way with you, you can see the two anime babes making out beside you. You only notice this out of the corner of your eye, your focus still locked on the animation on the screen, much of which is being duplicated upon your person at this very moment. He fucks you thoroughly with those two throbbing rods up your ass at once until he groans and cums in a steady flow filling you from both ends with his tainted seed.[mimpregchance][mimpregchance]";
	say "     Things continue on like this, the four of you having a sexy orgy of tentacular fun. Every available hole is filled repeatedly by tentacle cocks and left overflowing with the hentai fan's tainted seed. Several more videos are watched over the course of this viewing, their sexy contents sinking into your mind even as your body is changed more and more to be like those sexily animated girls getting fucked alongside you";
	decrease humanity of player by 25;
	[puts Anime Babe as lead monster for infection and impregnation]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Anime Babe":
			now monster is y;
			break;
	now tailname of player is "Anime Babe";
	now facename of player is "Anime Babe";
	now skinname of player is "Anime Babe";
	now bodyname of player is "Anime Babe";
	now cockname of player is "Anime Babe";
	attributeinfect;
	now tail of player is tail entry;
	now face of player is face entry;
	now skin of player is skin entry;
	now body of player is body entry;
	now cock of player is cock entry;
	if hellHoundLevel is 0:
		follow the sex change rule;
		follow the sex change rule;
	if libido of player < 60, now libido of player is 60;
	if humanity of player < 10:
		say ". With your mind fading away, you eventually lose yourself as your mind is overwritten by the content of the videos you've been watching. You're released out onto the campus, heading off in search of others to share your new fandom and lust for tentacles with, willing or not.";
		WaitLineBreak;
		end the game saying "Only thoughts of anime and tentacles fill your mind as you succumb to your infection.";
		now battleground is "void";
		wait for any key;
		follow the turnpass rule;
		stop the action;
	else:
		say ". With your mind muddled by the content of the videos you've been watching, you almost succumb entirely, but somehow manage to hold on to part of yourself. When you're released out onto the campus to search for others to share your new fandom and lust for tentacles with others, your mind gradually pulls itself together enough to shake yourself out of the infection-addled fugue enough to get yourself back on track.";

Section 7 - Waiting for the Course Advisor

Course Advice - Wait Your Turn is a situation. The level of Course Advice - Wait Your Turn is 5.
The sarea of Course Advice - Wait Your Turn is "Campus".

when play begins:
	add Course Advice - Wait Your Turn to badspots of girl;
	add Course Advice - Wait Your Turn to badspots of guy;
	
instead of resolving Course Advice - Wait Your Turn:
	now battleground is "void";		[prevents a random fight, as these are replacement random fights]
	say "     Exploring the campus, you come upon one of the administrative buildings of the college. Surprisingly, it all seems to be in regular use, with students coming and going... seemingly oblivious to the fact that they've almost all been transformed in various ways. You stop one anthro dolphin [one of]guy[or]girl[at random] at random as they try to push past you and go in, asking what's going on. 'Isn't it obvious? People are becoming animals and whatnot - if that's not a reason to re-evaluate the courses you take, what is? The advisory office is in there. I'm gonna go for marine biology, you know.'";
	say "     With that, the student gives a little wave, then enters the building. Your curiosity demands that you check this out in further detail, so you follow inside. The entrance hall is fairly well filled, with numerous students sitting in small seating groups and chatting, office workers walking along with folders. Seems eerily normal, for any place during the nanite apocalypse. The upside is that nothing is gonna attack you in here, from the looks of it.";
	WaitLineBreak;
	say "     Glancing around, you see the tail-fin of your dolphin acquaintance vanish around a corner at the upper end of a stairway to the upper floor. Someone is certainly eager to meet their advisers. Following upwards yourself, you come to the landing of the second floor - but the dolphin isn't anywhere in sight. Hm, too bad. But hey, you know where they were going - there is a sign reading 'Course Adviser's Offices' with an arrow to the right. Following that hint, you soon arrive in a long hallway flanked by a number of doors, with waiting chairs arranged along the sides. No dolphin in sight here either - must have had an appointment and gone in right away.";
	say "     [bold type]Well, the place is pretty peaceful and maybe you could talk with the student some more, or find out what the administrators side on the matter is. Do you want to sit down and wait around a bit?[roman type][line break]";	
	Line Break;
	say "     ([link]Y[as]y[end link]) - At the very least, it'll be relaxing.";
	say "     ([link]N[as]n[end link]) - Nah, too boring.";
	if player consents:
		Line Break;
		say "     Sitting down on a seat, you lean back and wait - and before long, you're not the only one to do so. A muscular young horseman comes down the hallway in a proud stride, his rippling abs and good looks for everyone to see, as his only piece of clothing is a pair of black boxer shorts. Fairly tight ones too, highlighting the sizable bulge at his crotch. 'Hey there, been waiting long?' the student asks with a friendly smile, then shrugs as you shake your head. He sits down opposite to you, and for a little while you each wait in silence, with you casually inspecting the well built dude with his golden coat and long brown hair and tail.";
		say "     Soon, a second student joins you in the waiting area - this one a petite lioness in jeans and a pink shirt that bulges out over a sizable pair of breasts. Like with the horseman, her clothes seem a little tight - a regular sight these days, with all the transformations and changes in asset size going on. 'Hello you two, nice to meet you. I'm Dana.' You introduce yourself in turn and the sexy stud leans back, arms spread and his fingers interlocked behind his head. He clearly loves showing off his muscles.";
		WaitLineBreak;
		say "     Then the horseman grins and just says, 'Kyle.' Dana's reaction would have fit him suddenly growing a second head - she gapes in shock, then makes a step back and stares openly at the equine. 'Wait?! Oh god - it IS you! Woooow! I didn't even recognize you until now Kyle,' she gushes, then throws her arms around him as the young man stands up. Exchanging a tight squeeze with the horseman teen, the lioness then turns to look at you a bit closer, as if to check if you're someone she knows too (which you are not).";
		say "     'You won't believe it [if player is female]ma'am[otherwise]mister[end if], but this guy was, um...' Dana squeezes her friend with one arm and looks up at him while searching for words - only to have him complete the sentence in a fairly amused tone. 'A total wimp. Shorter than her, with flabby arms and incredibly thick glasses. We have physics courses together. Hey Dana - check this out!' With that, the handsome stallion pushes his beautiful mane of brown hair back over his shoulder and raises one arm, flexing awe-inspiring muscles.";
		WaitLineBreak;
		say "     Dana is very openly enthralled by his display, giving a quiet little moan as she puts one hand on his chest to feel the firmness and warmth of her friend's body. 'I never told you, but I like you Dana. You've been a good friend and are really beautiful, before and now too. So - how about it, do you like the new me too? This new body feels so great! I'm here to adjust my courses a bit to make room for football,' Kyle says in a hopefully optimistic tone.";
		say "     'Of course I do, silly! You've got the perfect brains and body now! I - um... can I see it?' the slender lioness replies, her hand on his crotch making it obvious what she's referring to. 'You're gonna be amazed!' Kyle says proudly, then pushes his shorts down in a single quick movement, freeing the weighty horsecock and full balls between his legs to dangle freely. Dana is quick to grasp the thick shaft with one hand, stroking its length and panting, 'I can't even get my fingers around it. Just... wow!'";
		say "     [bold type]It seems fairly obvious that the two of them have mostly forgotten that you're still sitting just a few feet away. Do you want to lean back and enjoy the show?[roman type][line break]";	
		Line Break;
		say "     ([link]Y[as]y[end link]) - Sure!";
		say "     ([link]N[as]n[end link]) - Quietly leave.";
		if player consents:
			Line Break;
			say "     'Sit back, I want to show you something too,' Dana tells Kyle, who readily does so - with wide-spread legs, allowing his balls to rest on the edge of the seat cushion and his cock to freely stand at full mast. Coming to stand before him, the petite lioness grins and pulls her top up over her flat belly, then hooks it over her breasts. 'I didn't just get fur and a tail either - look at these!' Dana happily says, squeezing her ample boobs with both hands.";
			say "     It takes only a short moment before you hear the sound of a zipper being opened, followed by the lioness pushing her jeans halfway down her thighs. She slides a hand between her legs and rubs it against the folds of her feline sex, then moans, 'I'm so wet right now!' Leaning forward, a grinning Kyle brushes his larger hand along her furry arm, then feels her pussy and slips a finger inside, taking over rubbing her to stimulate his girlfriend.";
			WaitLineBreak;
			say "     The rubbing and touching continues for a little while, with Dana getting fingered and her breasts worshipped and licked by the eager young horseman. Then eventually, she puts a hand on his chest and gently pushes him to lean back once more. Herself sinking to her knees, Dana proceeds to take hold of his cock and licks it with obvious pleasure, then slides her mouth over the flared end and starts to suck. 'Nnngh, yeah!' Kyle lets out in a breathless groan, half-reaching out to guide her before changing his mind and putting his hands behind his head instead, leaving Dana to set the pace.";
			say "     Meanwhile, you're not unaffected by the rising air of lust in this quiet hallway and have slid off those pieces of clothing that hinder you touching yourself. [if player is male]With a hand on your hard shaft, you stroke slowly along its length[else if player is female]With a hand on your crotch, you slide your fingers over the sensitive folds of your pussy and frig your clit in a slow but steady manner[otherwise]With a hand on your crotch, you rub your sexless but nonetheless sensitive area[end if] while watching the two students go at it. Soon, Kyle's large black-skinned horsecock is glistening with Dana's spit and visibly throbbing from his arousal. He puts on a lewd grin and asks his girlfriend, 'Wanna try this bad boy out together with me?'";
			WaitLineBreak;
			say "     The pretty lioness pulls her muzzle off his dick, then gives its flared head another slow lick before returning an eager smile. 'You couldn't keep me off it if you tried!' she says with a chuckle, then shimmies out of her jeans and stands before her boyfriend, contemplating his thick shaft. 'I wanna sit on it,' she pants in obvious arousal, then climbs on top of her equine lover. Balancing on the young horseman's thighs with her slender paws, the college student looks behind her at Kyle's eager face and swishes her tail in front of his nose.";
			say "     'Catch me, okay?' she asks and receives a confirming nod, then lets herself fall back a little - right into his raised hands, which close around the sides of her hips. Now with her paws braced on his knees and leaning into his support, the young woman bends her legs to lower herself and soon brushes against the tip of his shaft. 'Oooh, I can't wait. Gonna put it in now,' she says in a happy pant and reaches down, aligning his manhood with her pussy. Then she pushes down, with his slick rod parting the wet folds of her sex and sinking several inches into her.";
			WaitLineBreak;
			say "     Two voices give a shared gasp full of arousal and need, followed by Kyle's exclamation of, 'Ooh fuck! You feel better than I ever dreamed!' Dana's only reply is a happy giggle as she slides further down, and down - until eventually stopping with just about three inches of his length left outside of her. She gasps, 'I can feel you against my cervix. Damn, you're too big!' With a glance down at his black-skinned erection, she adds, 'And not even all in yet. But... yeah, I think I can take you all the way. The infection must account for such things, from the pairings I've seen out there.'";
			say "     Before her boyfriend can reply, Dana has already raised herself a few inches, then pushes herself down on his manhood with full force. The petite lioness lets out a hoarse shout as her lover bottoms out inside her - creating a visible bulge in her stomach. 'You okay baby?' Kyle asks her, stretching his neck to look her in the eye, but the blissful smile on Dana's face speaks volumes and quells his fear. 'Fuuuck that feels good,' the impaled feline says with a breathless sigh, then cups the bulge in her stomach and pushes it a little bit left and right, playing with his dickhead like that.";
			WaitLineBreak;
			say "     'Can you... take over for a bit? I'm a bit weak-kneed from having over a foot of cock shoved into me. God, what a thing to say!' Dana tells her equine lover in an amused tone and he is only to happy to comply, starting to slide her up and down on his pole. At first he goes fairly slow, but soon the tempo increases as the petite lioness spurns him on and Kyle's own lust flares hotly... filling the hallway with the rhythmic slap of her ass against his crotch.";
			say "     Their pairing escalates into full-on rutting, which is a glorious spectacle as the powerful stallion takes his lioness friend as his mate, pumping into her with hard thrusts and pulling her down into each and every one of them. Their passion burns incredibly hot, which means it can't last forever, and before much longer, Dana throws her head back and roars in orgasm, her inner muscles trembling around Kyle's shaft.";
			WaitLineBreak;
			say "     The squeeze on his prick is enough to push Kyle over the edge in a few heartbeats - especially as her cervix contracts into a very snug ring around his dickhead. With an aroused grunt, he grinds his crotch up against her body as his balls give their first hard throb, blasting a thick throb of cum into her womb. It is awe-inspiring to see Kyle's cum-factories pulse and Dana's stomach grow visibly with each cum-shot, soon giving her a faux-pregnant little bump.";
			say "     In fact, the view of their culmination is enough to move you past the point of no return, and with a wash of pleasure through your whole body, [if player is male]you start to shoot too, splattering the ground before your seat with long splashes of semen. One of them even hits Kyle (barely), leaving a white splash across his grey hoof[else if player is female]your pussy starts to drip with femcum, leaking down to leave a little wet spot on the seat[otherwise]your crotch starts to tingle quite nicely[end if]. For a moment, nothing but heavy breathing fills the hallway as the three of you ride out your orgasms, then slowly come back to your senses.";
			WaitLineBreak;
			say "      Craning her neck a little, Dana shares a kiss with Kyle, who hugs her lovingly from behind and pants, 'I love you Dana.' She sinks back into his embrace and smiles broadly, then gets very round eyes as her gaze falls upon you. Reflexively trying to jump up and cover herself doesn't lead her very far - not while she is still impaled on her boyfriend's cock. 'Umm... I was gonna say sorry for fucking like bunnies in front of you, but... you enjoyed that, didn't you?' she says and winks after a nod at your own state.";
			say "     With a grin on your face, you wish the two of them well, then stand up. After putting your clothes in order, you then walk down the corridor, leaving the advisers offices of the Tenvale College behind for now. While the place seemed so dreadfully normal and regular before, you now know enough to interpret some low sounds that are audible in the building. That banging from somewhere above surely isn't connected to hanging a picture, and the slurp behind one of the doors you pass will likely be someone giving a blow-job.";
			WaitLineBreak;
			say "     So in the end, this place isn't an exception to the explosion of sexual needs - it's just... a possibility how society might adjust and flourish in a new shape. If all of these workers and students are here, doing their jobs or thinking about their education, they clearly are the best, brightest and most dedicated of the lot - if not them, who else could end up transformed, yet still well-balanced and sane? Finding out the details of this place gives you some hope for the future, and somehow you feel your humanity confirmed by the knowledge that you're not the only one who can learn to live with the urges.";
			increase humanity of player by 10;
			if humanity of player > 100:
				now humanity of player is 100;
		else:
			Line Break;
			say "     With a grin on your face, you stand up and walk down the corridor, leaving the advisers offices of the Tenvale College behind for now. While the place seemed so dreadfully normal and regular before, you now know enough to interpret some low sounds that are audible in the building. That banging from somewhere above surely isn't connected to hanging a picture, and the slurp behind one of the doors you pass will likely be someone giving a blow-job.";
			say "     So in the end, this place isn't an exception to the explosion of sexual needs - it's just... a possibility how society might adjust and flourish in a new shape. If all of these workers and students are here, doing their jobs or thinking about their education, they clearly are the best, brightest and most dedicated of the lot - if not them, who else could end up transformed, yet still well-balanced and sane? Finding out the details of this place gives you some hope for the future, and somehow you feel your humanity confirmed by the knowledge that you're not the only one who can learn to live with the urges.";
			increase humanity of player by 10;
			if humanity of player > 100:
				now humanity of player is 100;
	else:
		Line Break;
		say "     With a shrug, you abandon the idea of exploring the Tenvale College administration building any further. This all seems to dreadfully normal and regular... it's the nanite apocalypse, for fuck's sake! Walking back downstairs and past the peaceful crowd there, you soon step out onto the campus grounds again. Almost the first thing you see out here is an incubus, standing not too far off. He has his leather pants pushed down below his ass and is stroking the sizable erection between his legs for everyone to see.";
		say "     The demonic exhibitionist doesn't have to hold out his lure for too long, as a sexy little gazelle out on a jog diverts her route to stop by his side. You're too far away to make out the exact words they exchange... but you don't have to really, as the next thing they do is start fucking, right there on the green grass of the college campus. Yeah, this seems more like the regular fare you've been come to expect from this new reality.";
	now Course Advice - Wait Your Turn is resolved;

Campus Events ends here.
