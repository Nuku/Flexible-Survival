Version 1 of Campus Events by Wahn begins here.
[ Original File by Stripes, expanded by Wahn]

"Adds a series of random events to Flexible Survival located at or focusing on the College Campus area."

CollegeLibraryBrutusEncounter is a number that varies.
CollegeLibraryRyouseiEncounter is a number that varies.

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
		now campuswanderfight is 1; [minor description/scene edits]
		say "     As you travel the campus, you hear the rustle of the hedgerow beside you moments before a large, striped feline comes pouncing out of it at you. You barely manage to avoid this sneak attack, but are now facing this large tigertaur that's found her way to the college. Perhaps she succumbed to her infection after making it here.";
		challenge "Tigertaur";
		now campuswanderfight is 0; [minor description/scene edits]
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
		say "     As you're trying to move across the campus in search of what you need, you are cut short by what you thought was a passed out creature rising to his feet as you get close. The snow leopard moans and wipes his brow, staggering a little. 'Aww man, where's the beer?  I could really use another drink,' he says, panting at the heat. Licking his lips as he looks you over, he eyes your [if breast size of player > 0]tits[else]crotch[end if] and licks his muzzle, intent on using you to slake his thirst.";
		challenge "Snow Leopard";
		add 5 to campuswander;
	if T is 6:
		say "     Preparing to cut across a large, open area on the campus, you look around carefully, wary of any hostile creatures which may spot you. Not finding any, you make a dash for it, still scanning from side to side. But your attempt is thwarted when you hear something above you moving in quickly.";
		challenge "Bald Eagle";
		add 6 to campuswander;
	now battleground is "void"; [prevents a random fight, as these are replacement random fights]
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
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	if the player consents:
		now animeclubfight is true;
		say "     Shoving open the door to the anime club, you find three figures in front of a television in there. On the screen and providing most of the light in the [if daytimer is day]blind-[end if]darkened room is [if player is animebabebodied]an entrancing video of tentacle porn[else]a video of tentacle porn[end if]. But the moans and sticky sounds of sex aren't just coming from the video, but also from those watching. The captured woman is being held in the arms of a young man with several slimy tentacles of his own, helped by the anime babe who grabbed her in the first place. She's struggling a little, but is quickly becoming focused on the video while the pair grope and fuck her, much like is happening on screen.";
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
		say "     As those slick tendrils slide over you, squeezing sensitive spots, the animated beauty lowers her head into your lap and sets herself to licking and sucking your cock. She works eagerly to suck you off, her tongue playfully sliding over your shaft [if cunts of player > 1]while the hentai fan pushes squirming tentacles into your pussies[else if cunts of player is 1]while the hentai fan pushes a squirming tentacle into your pussy[else if anallevel > 1]as the hentai fan pushes a squirming tentacle into your ass, fucking you with it[else]as she kneads your balls[end if]. The pleasure of being assaulted by tentacles as you watch a hentai video is very arousing and quickly has you moaning lustfully. Beside you, the tentacled guy is bouncing the increasingly transformed girl in his lap, stuffing her cunt with his throbbing cock.";
	else if cunts of player > 0:
		say "     As those slick tendrils slide over you, squeezing sensitive spots, the animated beauty spreads your legs and your pussy's lips. With yourself spread open, the hentai fan shoves a tentacle cock into your cunt[sfn], stuffing your needy hole[sfn] just like you're seeing on the screen. The pleasure of being tentacle raped as you watch a hentai video is very arousing and quickly has you moaning lustfully. Beside you, the tentacled guy is bouncing the increasingly transformed girl in his lap, stuffing her cunt with his throbbing cock.";
	else:
		say "     As those slick tendrils slide over you, squeezing sensitive spots, the animated beauty rubs sadly over your bare groin and pushes you into a kneeling position. She keeps your head pointed towards the television as she uses her other hand to guide a tentacle cock to your ass. You groan softly in kinky pleasure as it pushes into your anus and starts to fuck you. The pleasure of being tentacle raped as you watch a hentai video is very arousing and quickly has you moaning lustfully. Beside you, the tentacled guy is bouncing the increasingly transformed girl in his lap, stuffing her cunt with his throbbing cock.";
	if cunts of player > 0:
		say "     After he's cum into the girl beside you and she's fully transformed into another slutty anime babe, he turns his full attention upon up. Pulling you into his lap, he stuffs his still hard and cum-slick cock into your cunt and starts giving you the same treatment he just gave his other prize[if cunts of player > 1]. He fills your other juicy holes and your mouth with tentacle cocks[else if anallevel > 1]. He crams a tentacle cock into your ass and another down your throat[else]. He gropes your chest and ass with his tentacle cocks[end if], something that's incredibly arousing to you while under the effects of the video that's captivated your attention. After a thoroughly delightful fucking, he cums in a steady rush of semen from his cocks, coating you inside and out with his tainted seed.[impregchance][impregchance]";
	else if cocks of player > 0:
		say "     After he's cum into the girl beside you and she's fully transformed into another slutty anime babe, he turns his full attention upon you. He restrains you with those sexy tentacles of his and has the new anime babe climb into your lap so she can ride your cock while he gropes and fondles you with his tendrils[if anallevel > 1]. As she rides you, he fucks you thoroughly with a tentacle cock up your ass and pushing another down your throat. It squirms and pumps delightfully inside you, fucking deep inside your bowels. When it starts to cum in a steady flow, you cum hard in the new anime babe's cream-filled pussy[else]. As she rides you, he even pushes a tentacle cock up your ass and another down your throat, fucking you with them until you cum hard in her cream-filled pussy[end if]. Being coated inside and out by the hentai creature's tainted seed is incredibly arousing while under the effects of the video that's captivated your attention.[mimpregchance][mimpregchance]";
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
		end the story saying "Only thoughts of anime and tentacles fill your mind as you succumb to your infection.";
		now battleground is "void";
		wait for any key;
		follow the turnpass rule;
		stop the action;
	else:
		say ". With your mind muddled by the content of the videos you've been watching, you almost succumb entirely, but somehow manage to hold on to part of yourself. When you're released out onto the campus to search for others to share your new fandom and lust for tentacles with others, your mind gradually pulls itself together enough to shake yourself out of the infection-addled fugue enough to get yourself back on track.";

Section 7 - Administration Introduction - Waiting for the Course Advisor

Course Advice is a situation.
The sarea of Course Advice is "Campus".

when play begins:
	add Course Advice to badspots of girl;
	add Course Advice to badspots of guy;

instead of going north from College Fountain while (Course Advice is not resolved):
	AdminIntro;

instead of going northeast from College Walkway Northwest while (Course Advice is not resolved):
	AdminIntro;

instead of going northwest from College Walkway Northeast while (Course Advice is not resolved):
	AdminIntro;

instead of resolving Course Advice:
	AdminIntro;

to AdminIntro:
	say "     Exploring the campus, you come upon one of the administrative buildings of the college. Surprisingly, it all seems to be in regular use, with students coming and going... seemingly oblivious to the fact that they've almost all been transformed in various ways. You stop one anthro dolphin [one of]guy[or]girl[at random] at random as they try to push past you and go in, asking what's going on. 'Isn't it obvious? People are becoming animals and whatnot - if that's not a reason to re-evaluate the courses you take, what is? The advisory office is in there. I'm gonna go for marine biology, you know.'";
	say "     With that, the student gives a little wave, then enters the building. Your curiosity demands that you check this out in further detail, so you follow inside. The entrance hall is fairly well filled, with numerous students sitting in small seating groups and chatting, office workers walking along with folders. Seems eerily normal, for any place during the nanite apocalypse. The upside is that nothing is gonna attack you in here, from the looks of it.";
	WaitLineBreak;
	say "     Glancing around, you see the tail-fin of your dolphin acquaintance vanish around a corner at the upper end of a stairway to the upper floor. Someone is certainly eager to meet their advisers. Following upwards yourself, you come to the landing of the second floor - but the dolphin isn't anywhere in sight. Hm, too bad. But hey, you know where they were going - there is a sign reading 'Course Adviser's Offices' with an arrow to the right. Following that hint, you soon arrive in a long hallway flanked by a number of doors, with waiting chairs arranged along the sides. No dolphin in sight here either - must have had an appointment and gone in right away.";
	say "     [bold type]Well, the place is pretty peaceful and maybe you could talk with the student some more, or find out what the administrators side on the matter is. Do you want to sit down and wait around a bit?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - At the very least, it'll be relaxing.";
	say "     ([link]N[as]n[end link]) - Nah, too boring.";
	if player consents:
		LineBreak;
		say "     Sitting down on a seat, you lean back and wait - and before long, you're not the only one to do so. A muscular young horseman comes down the hallway in a proud stride, his rippling abs and good looks for everyone to see, as his only piece of clothing is a pair of black boxer shorts. Fairly tight ones too, highlighting the sizable bulge at his crotch. 'Hey there, been waiting long?' the student asks with a friendly smile, then shrugs as you shake your head. He sits down opposite to you, and for a little while you each wait in silence, with you casually inspecting the well built dude with his golden coat and long brown hair and tail.";
		say "     Soon, a second student joins you in the waiting area - this one a petite lioness in jeans and a pink shirt that bulges out over a sizable pair of breasts. Like with the horseman, her clothes seem a little tight - a regular sight these days, with all the transformations and changes in asset size going on. 'Hello you two, nice to meet you. I'm Dana.' You introduce yourself in turn and the sexy stud leans back, arms spread and his fingers interlocked behind his head. He clearly loves showing off his muscles.";
		WaitLineBreak;
		say "     Then the horseman grins and just says, 'Kyle.' Dana's reaction would have fit him suddenly growing a second head - she gapes in shock, then makes a step back and stares openly at the equine. 'Wait?! Oh god - it IS you! Woooow! I didn't even recognize you until now Kyle,' she gushes, then throws her arms around him as the young man stands up. Exchanging a tight squeeze with the horseman teen, the lioness then turns to look at you a bit closer, as if to check if you're someone she knows too (which you are not).";
		say "     'You won't believe it [if player is female]ma'am[else]mister[end if], but this guy was, um...' Dana squeezes her friend with one arm and looks up at him while searching for words - only to have him complete the sentence in a fairly amused tone. 'A total wimp. Shorter than her, with flabby arms and incredibly thick glasses. We have physics courses together. Hey Dana - check this out!' With that, the handsome stallion pushes his beautiful mane of brown hair back over his shoulder and raises one arm, flexing awe-inspiring muscles.";
		WaitLineBreak;
		say "     Dana is very openly enthralled by his display, giving a quiet little moan as she puts one hand on his chest to feel the firmness and warmth of her friend's body. 'I never told you, but I like you Dana. You've been a good friend and are really beautiful, before and now too. So - how about it, do you like the new me too? This new body feels so great! I'm here to adjust my courses a bit to make room for football,' Kyle says in a hopefully optimistic tone.";
		say "     'Of course I do, silly! You've got the perfect brains and body now! I - um... can I see it?' the slender lioness replies, her hand on his crotch making it obvious what she's referring to. 'You're gonna be amazed!' Kyle says proudly, then pushes his shorts down in a single quick movement, freeing the weighty horsecock and full balls between his legs to dangle freely. Dana is quick to grasp the thick shaft with one hand, stroking its length and panting, 'I can't even get my fingers around it. Just... wow!'";
		say "     [bold type]It seems fairly obvious that the two of them have mostly forgotten that you're still sitting just a few feet away. Do you want to lean back and enjoy the show?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Sure!";
		say "     ([link]N[as]n[end link]) - Quietly leave.";
		if player consents:
			LineBreak;
			say "     'Sit back, I want to show you something too,' Dana tells Kyle, who readily does so - with wide-spread legs, allowing his balls to rest on the edge of the seat cushion and his cock to freely stand at full mast. Coming to stand before him, the petite lioness grins and pulls her top up over her flat belly, then hooks it over her breasts. 'I didn't just get fur and a tail either - look at these!' Dana happily says, squeezing her ample boobs with both hands.";
			say "     It takes only a short moment before you hear the sound of a zipper being opened, followed by the lioness pushing her jeans halfway down her thighs. She slides a hand between her legs and rubs it against the folds of her feline sex, then moans, 'I'm so wet right now!' Leaning forward, a grinning Kyle brushes his larger hand along her furry arm, then feels her pussy and slips a finger inside, taking over rubbing her to stimulate his girlfriend.";
			WaitLineBreak;
			say "     The rubbing and touching continues for a little while, with Dana getting fingered and her breasts worshipped and licked by the eager young horseman. Then eventually, she puts a hand on his chest and gently pushes him to lean back once more. Herself sinking to her knees, Dana proceeds to take hold of his cock and licks it with obvious pleasure, then slides her mouth over the flared end and starts to suck. 'Nnngh, yeah!' Kyle lets out in a breathless groan, half-reaching out to guide her before changing his mind and putting his hands behind his head instead, leaving Dana to set the pace.";
			say "     Meanwhile, you're not unaffected by the rising air of lust in this quiet hallway and have slid off those pieces of clothing that hinder you touching yourself. [if player is male]With a hand on your hard shaft, you stroke slowly along its length[else if player is female]With a hand on your crotch, you slide your fingers over the sensitive folds of your pussy and frig your clit in a slow but steady manner[else]With a hand on your crotch, you rub your sexless but nonetheless sensitive area[end if] while watching the two students go at it. Soon, Kyle's large black-skinned horsecock is glistening with Dana's spit and visibly throbbing from his arousal. He puts on a lewd grin and asks his girlfriend, 'Wanna try this bad boy out together with me?'";
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
			say "     In fact, the view of their culmination is enough to move you past the point of no return, and with a wash of pleasure through your whole body, [if player is male]you start to shoot too, splattering the ground before your seat with long splashes of semen. One of them even hits Kyle (barely), leaving a white splash across his grey hoof[else if player is female]your pussy starts to drip with femcum, leaking down to leave a little wet spot on the seat[else]your crotch starts to tingle quite nicely[end if]. For a moment, nothing but heavy breathing fills the hallway as the three of you ride out your orgasms, then slowly come back to your senses.";
			WaitLineBreak;
			say "     Craning her neck a little, Dana shares a kiss with Kyle, who hugs her lovingly from behind and pants, 'I love you Dana.' She sinks back into his embrace and smiles broadly, then gets very round eyes as her gaze falls upon you. Reflexively trying to jump up and cover herself doesn't lead her very far - not while she is still impaled on her boyfriend's cock. 'Umm... I was gonna say sorry for fucking like bunnies in front of you, but... you enjoyed that, didn't you?' she says and winks after a nod at your own state.";
			say "     With a grin on your face, you wish the two of them well, then stand up. After putting your clothes in order, you then walk down the corridor, leaving the advisers offices of the Tenvale College behind for now. While the place seemed so dreadfully normal and regular before, you now know enough to interpret some low sounds that are audible in the building. That banging from somewhere above surely isn't connected to hanging a picture, and the slurp behind one of the doors you pass will likely be someone giving a blow-job.";
			WaitLineBreak;
			say "     So in the end, this place isn't an exception to the explosion of sexual needs - it's just... a possibility how society might adjust and flourish in a new shape. If all of these workers and students are here, doing their jobs or thinking about their education, they clearly are the best, brightest and most dedicated of the lot - if not them, who else could end up transformed, yet still well-balanced and sane? Finding out the details of this place gives you some hope for the future, and somehow you feel your humanity confirmed by the knowledge that you're not the only one who can learn to live with the urges.";
			increase humanity of player by 10;
			if humanity of player > 100:
				now humanity of player is 100;
		else:
			LineBreak;
			say "     With a grin on your face, you stand up and walk down the corridor, leaving the advisers offices of the Tenvale College behind for now. While the place seemed so dreadfully normal and regular before, you now know enough to interpret some low sounds that are audible in the building. That banging from somewhere above surely isn't connected to hanging a picture, and the slurp behind one of the doors you pass will likely be someone giving a blow-job.";
			say "     So in the end, this place isn't an exception to the explosion of sexual needs - it's just... a possibility how society might adjust and flourish in a new shape. If all of these workers and students are here, doing their jobs or thinking about their education, they clearly are the best, brightest and most dedicated of the lot - if not them, who else could end up transformed, yet still well-balanced and sane? Finding out the details of this place gives you some hope for the future, and somehow you feel your humanity confirmed by the knowledge that you're not the only one who can learn to live with the urges.";
			increase humanity of player by 10;
			if humanity of player > 100:
				now humanity of player is 100;
		move player to College Administration Building;
	else:
		LineBreak;
		say "     With a shrug, you abandon the idea of exploring the Tenvale College administration building any further. This all seems to dreadfully normal and regular... it's the nanite apocalypse, for fuck's sake! Walking back downstairs and past the peaceful crowd there, you soon step out onto the campus grounds again. Almost the first thing you see out here is an incubus, standing not too far off. He has his leather pants pushed down below his ass and is stroking the sizable erection between his legs for everyone to see.";
		say "     The demonic exhibitionist doesn't have to hold out his lure for too long, as a sexy little gazelle out on a jog diverts her route to stop by his side. You're too far away to make out the exact words they exchange... but you don't have to really, as the next thing they do is start fucking, right there on the green grass of the college campus. Yeah, this seems more like the regular fare you've been come to expect from this new reality.";
		move player to College Fountain;
	now Course Advice is resolved;

Naiad in the Fountain is a situation.
The sarea of Naiad in the Fountain is "Campus".

when play begins:
	add Naiad in the Fountain to badspots of girl;

instead of going north from College Campus Entrance while (Naiad in the Fountain is not resolved and LastCampusWalkin - turns > 2):
	move player to College Fountain;
	NaiadFountainEvent;

instead of going east from College Walkway Northwest while (Naiad in the Fountain is not resolved and LastCampusWalkin - turns > 2):
	move player to College Fountain;
	NaiadFountainEvent;

instead of going west from College Walkway Northeast while (Naiad in the Fountain is not resolved and LastCampusWalkin - turns > 2):
	move player to College Fountain;
	NaiadFountainEvent;

instead of resolving Naiad in the Fountain:
	NaiadFountainEvent;

to NaiadFountainEvent:
	say "     Walking along the campus grounds you come across a large fountain still shooting streaks of water into the air before falling back down into a large pool below. Taking a moment to appreciate the sight you gaze into the waterfall of flowing liquid and see a most unusual sight. There in the fountain, naked as the day she was born is a strikingly beautiful young woman with long blond hair. She raises her arms as the water cascades over her flawless skin and perky breasts. She is seemingly content with her public bath as she catches your gaze through the flowing water.";
	say "     Giving a wink and turning around to show her gropable cheeks off she runs her hands over her firm buns as you feel your arousal flaring up. You're not the only to notice either, a few other campus goers have stopped what they were doing to ogle the bathing beauty. A few even start to stroke stiffening members or finger moistening lips in their trousers as they watch. You're half-tempted to do the same as your eyes are transfix on this unnaturally gorgeous woman bathing in public. Barely managing to pull your gaze away from her luscious figure you see many others entirely hypnotized by her soaking pale body, noticing a few of the onlookers inching closer to the fountain's edge. Deciding it's probably best to move on before this gets out of hand you turn around and leave the woman to her bath and adoring audience.";
	now LastCampusWalkin is turns;
	now Naiad in the Fountain is resolved;

Section 8 - Undie race

Undie Race is a situation.
The sarea of Undie Race is "Campus".

instead of going to College Walkway West while (Undie Race is not resolved and LastCampusWalkin - turns > 2 and a random chance of 1 in 3 succeeds):
	move player to College Walkway West;
	UndieRaceEvent;

instead of going to College Walkway East while (Undie Race is not resolved and LastCampusWalkin - turns > 2 and a random chance of 1 in 3 succeeds):
	move player to College Walkway East;
	UndieRaceEvent;

instead of going to College Walkway Northeast while (Undie Race is not resolved and LastCampusWalkin - turns > 2 and a random chance of 1 in 3 succeeds):
	move player to College Walkway Northeast;
	UndieRaceEvent;

instead of going to College Walkway Northwest while (Undie Race is not resolved and LastCampusWalkin - turns > 2 and a random chance of 1 in 3 succeeds):
	move player to College Walkway Northwest;
	UndieRaceEvent;

to UndieRaceEvent:
	say "     As you trek down the walkway, you notice that the paved alley is almost desert, and that people begin to assemble on the side. You eventually reach a gorilla, who looks busy directing people to stay away from the path, while others install a table and put water bottles on them. [if GorillasMember is 3]'Hey, nice to see you,' the ape greets you. 'A race is going to pass through here. Can you wait on the side for a few moments?'[else]'Hey, you!' the ape hailed. 'Stay out of the walkway! Racers are going to pass through here in a few moments.'[end if]";
	say "     You follow the instructions and, as the gorilla said, a pack of sportsmen jog down the road. They do not wear the usual running garb: they are all in their undergarnments and running shoes - for those who do not have pawed feet. Virile bulges and bare breasts jiggle with each stride, under the applause and the cheers of the the crowd, on each side of the walkway, cheers on the runners, and some wave their hands in response. The runners pass by the table and pick a water bottle. The first to do so is a young, albinos lizard in a red speedo. He grabs the nearest bottle, then sprinkles its content over his scaly body in order to cool off. His wet scales glisten under the light [if daytimer is night]of the lamp posts[else]of the sun[end if], and several onlookers around you cheer him on even more. The reptile winks at the audience, then begins to run away.";
	if demon brute is companion of player:
		say "     You hear a grunt beside you and as you glance to the side, see Brutus's thick purple shaft standing at full erection. Clearly, the runners - and especially that lizard has aroused the big demon. [if DBCaptureQuestVar is 5]He looks ready to snatch away one of the passing runners, in order to satiate his lust, but your disapproving look discourages him to do so[else]You pat his side amicably, praising him on his self-control[end if].";
	if royal tiger is companion of player:
		say "     Ryousei looks at the scene, dismayed. 'Poor souls! What is their crime, for being punished like this?' he asks. Stiffling a laugh, you explain to the tiger that this is a race, and they do it willingly. 'Oh, I see. I was wondering that it was a lot of criminals. But why are they barely clothed?' You smile, then shrug.";
	say "     A few minutes later, every runner passed, and the crowd begins to disperse, and so do you.";
	let bonus be (( the Perception of the player minus 10 ) divided by 2);
	let diceroll be a random number from 1 to 20;
	if diceroll > 15:
		say "     [bold type]Perception check successful[roman type]: As you leave, you notice that a water bottle is still on the table, unopened. This is tap water, probably infected, but it is better than nothing. You snatch it discretly and put it in your bag.";
		LineBreak;
		say "[bold type]You gain 1 (dirty) water bottle![roman type][line break]";
		increase carried of dirty water by 1;
	now Undie Race is resolved;

Section 9 - Silence in the Library
[Repeatable event]
[Possibility: have reading room events separated from the rest?]

Silence in the Library is a situation.
The sarea of Silence in the Library is "Campus".

instead of going to Tenvale College Library while (Silence in the Library is not resolved and LastCampusWalkin - turns > 2 and a random chance of 1 in 3 succeeds):
	move player to Tenvale College Library;
	LibrarySexEvent;

to LibrarySexEvent:
	if (demon brute is companion of player and CollegeLibraryBrutusEncounter is 0):
		say "     You take advantage of being on campus to stop by the library and browse a few books. Next to you, Brutus is, funnily, quieter than usual. You turn your head, and realise that he has left, probably to wander the library on his own. You explore the alleys, letting the faint noises of sex guide you. After a couple of false leads, you eventually recognize his grunts, coming from the next alley.";
		if DBCaptureQuestVar is 5:
			say "     You stumble upon Brutus, busy plowing a female student from behind. The poor mare's feet dangle over the ground, her legs balancing with each slam of the demon's package inside of her. Brutus holds her torso with one arm, while his free hand is pressed against her mouth, fingers slipped deep inside her muzzle, and muffling the loud neighs escaping from her mouth. 'Dumb slut,' you hear him mumble. 'Told you I'd win.' After an additional minute of thrusting, Brutus's grunts get louder, and he unloads his balls inside the student, her belly bulging out visibly from the sheer quantity of demonic sperm.";
			say "     Brutus pulls out, his claws twitching as if to drop her like a piece of trash - but the amulet around your neck hums a little and enforces the rule of not hurting anyone without cause that you set for him. With a slightly annoyed grunt, he sets the student on the ground slowly, her clothes in tatter. Waving him to the side, you inquire what happened happened and Brutus shows a broad grin, nodding to the cum-dripping young equine. 'Bitch started to get bossy. 'Be quiet! This is a library!' Bla bla bla. Hah - told her I would fuck her pussy and no one would notice and come to help. And I did!' Shaking your head, you pull Brutus with you and get away from the scene as fast as you can.";
		else:
			say "     You stumble upon Brutus, busy plowing a female student from behind. He is gently holding the mare over the ground with both arms, while he pumps inside her in a slow, but deep rythmn. The two of them are locked in a deep kiss, partly in order to quell their moans of pleasure. 'We're winning,' Brutus grins. 'You- you're still on this?' the student answers between two stiffled moans. The two go at it for another minute or so, until Brutus's grunts get louder, and he unloads his balls inside the student, her belly bulging out visibly from the sheer quantity of demonic sperm.";
			say "     Brutus pulls down the mare gently, letting her get her bearings back. You enquire about what happened. 'I was too noisy, and this girl came and asked me to be quieter. Then she saw... all of me, and was interested. I bet her I could do her and still be silent enough. And I - we - won.' Smiling, you let Brutus part ways with the equine student and return to the entrance of the library.";
		now CollegeLibraryBrutusEncounter is 1;
	else if (royal tiger is companion of player and CollegeLibraryRyouseiEncounter is 0):
		say "     You take advantage of being on campus to stop by the library and browse a few books. Next to you, Ryousei is, funnily, quieter than usual. You turn your head, and realise that he has left, probably to wander the library on his own. You explore the alleys, letting the faint noises of sex guide you. After a couple of false leads, you eventually recognize his meek protests, coming from the photocopy room.";
		say "     'Madam, please go slower. I am... Aaah...'[Line Break]The door is locked, but you can peek through the keyhole. You see Ryousei, lying on his back, straddled by one of the library employees, a middle-aged vixen.[Line Break]'Tut, tut... No discussing a staff's order. Now, stay still, and be quieter. You would not want someone to catch us together, would you?'[Line Break]The both of them go like this for some time, with the poor Ryousei trying to stiffle his moans of pleasure and doing poorly at it. He does not last long, as you can hear him grunt 'Ah! Madam, I am gonna... gonna....' followed by a long series of lustful grunts and mrowls.";
		say "     The librarian caresses the tiger's soft fur, and eventually stands back up.[Line Break]'Well, that was a good way to relieve tension. You would not believe how horny hearing all these teenagers fuck in the library is.'[Line Break]Ryousei gets back on his feet as well: 'I, er, guess?' he comments, while he fetches his kimono. 'So, are we even?'[Line Break]'What do you mean?'[Line Break]'The fine? For making noise in this place?'[Line Break]'Oh, right. Sure, sure. Just, don't do it again. Or, do it again, and let's work this out together, hm?'";
		say "     You have barely the time to jump away from the door before Ryousei walks out from the room, his tail waving in the air behind him. It seems he has a new fan. You go back at the entrance of the library, and find him waiting for you. You ask him innocently why he looks discheveld all of a sudden. 'Well, this place of knowledge is so, er, admirable,' the feline begins while he readjusts his kimono. 'I wandered and... got lost. Shall we go soon? I do not wish to overstay my welcome in this place.' You silently sympathize with the tiger, as you see the librarian walk back to her desk and blow him a kiss from her chair." ;
		now CollegeLibraryRyouseiEncounter is 1;
	else:
		let randomnumber be a random number from 1 to 5;
		say "     Taking advantage of being on campus, you stop by the library and browse a little. ";
		if randomnumber is:
		-- 1:
			say "As you wander between the rows of bookshelves, you hear giggles coming from the alley on the other side of the shelf.[Line Break]'Ha ha... S-stop, the-the librarian w-will hear us,' one of them whispers.[Line Break]'She will hear [italic type]you[roman type]. Keep these legs spread.'";
			say "     Curiosity encourages you to peep on whatever happens on the other side. You walk around the book shelf discretly, and find a couple of girls; a cat and a dog. The feline holds to the bookshelf for her dear life while the canine is kneeling under her and has her snout buried in her friend's crotch. Books and a pair of shorts are sprawled on the carpetted floor.  The cat is panting heavily. 'W-why is it always the same story, e-each time I go to the library to f-fetch some b-booooooh...'";
			say "     The cat's final words are lost, as her friend's lapping makes her cum, hard. Her claws scratch the wood, thankfully sparing the books. 'Y-You're a bitch, Suz,' the feline chastizes the other girl.[Line Break]'Yup, 'tis what I am,' Suz giggles. Trying not to giggle too, you slip away unnoticed.";
		-- 2:
			say "As you wander between the rows of bookshelves, you hear a moan coming from the alley on the other side of the shelf.[Line Break]'F-fuck. It feels s-so good.'[Line Break]'Y-yeah. Keep going.'";
			say "     Curiosity encourages you to peep on whatever happens on the other side. You walk around the book shelf discretly, and find a couple of girls; a cat and a dog. The two of them are on the floor, naked, and scissoring each other. Their clothes are sprawled on the carpet, alongside an open book. You cannot see the content from where you are, but the two students seem to check it from time to time. 'L-Liz, how come we never did this before,' the dog pants. 'N-no idea, Suz. I g-guess you can call it 'experimenting'?' The girls keep at it, until they cum at almost the same time. Panting, they help each other standing up, and admire the small pool of cyprine which soaks the spot of the carpet which were under their conjoined crotches. 'Whoops?' Suz asks her friend[Line Break]'Whoops. Let's scram before someone notices this.'[Line Break]You decide to follow the cat's advice as well, and get back to your own business.";
		-- 3:
			say "You decide to wander around between the rows of bookshelves. Picking out one book that interests you, taking a seat at one of the reading tables is almost automatic right after. You find yourself next to a cute goat student. She has the complete look of the quiet, nerdy girl, with her large classes and the timid look she gives you when your eyes catch each other. After ten minutes or so of reading, you hear something buzz. You look around, but you can not see any mobile phone around. You go back to your reading, but the buzzing comes back at regular intervals, until it becomes rather annoying. You are about to go look for the guilty party, when you hear your carpine neighbour groan. 'E-enough.'";
			say "     You turn towards her, about to tell her that the noise is getting on your nerves too, when you notice notice that something's wrong. She is panting, and her cheeks are flushing red under her cream-colored fur. Then, the buzzing returns, startling the girl. You notice that the noise comes from her pants. Her empty-pockets pants. Antoher buzzing, the student shuts her eyes tight and squeezes her legs. 'Nnnnnn.' She looks around, and realizes that you have been looking at her the whole time. 'N-no, d-don't look at m-me like that...'";
			say "     Just as she says these words, another buzzing shook her body. She cowered on her chair, trembling. You swear you can hear her moan. 'C-cummm...' She looks up at you again. Her groin area looks damp. 'E-excuse me. I-I need to go to the restroom,' she suddenly says, and she hurries off, the buzzing noise accompanying her on her way out.";
		-- 4:
			say "You make a round in the library, checking the various sections, when you hear some noise coming from the photocopy room. Intrigued, you decide to check what it is about.";
			say "     You find two male students busy around one of the copiers. One of them is an anteater, the other is a donkey. From where you stand, you can hear their chatter.[Line Break]'Hey, don't try to cheat.'[Line Break]'Why would I? Do we even need to-'[Line Break]'We made a bet: one week of blowjobs [italic type]with[roman type] swallowing, and I won't let you get off the hook.'[Line Break]'If you win.'[Line Break] The flash of the photocopier interrupts the teenagers, and a printed paper comes out a few seconds after. The donkey holds him in the air, and you can see that it is a photocopy of the anteater and the donkey's dicks, aligned side to side. The donkey's is bigger, just barely.[Line Break]'Heh, see?', the ass gloats. The anteater groans loudly, but nonetheless, the two share a small, loving kiss.[Line Break]'Well?'[Line Break]'Well what?'[Line Break]'Now that I'm hard, I think I'll start cashing on this bet.'[Line Break] The donkey's buddy groans even louder, then gets on his knees. You decide to give the two of them some privacy.";
		-- 5:
			CollegeLibraryBJ;

to CollegeLibraryBJ:
	say "You browse quickly the bookshelf, and take the latest volume of your favorite magazine to the reading table for a read. Taking a seat, you then and find yourself in front of a horse. The equine looks absorbed by his lecture more than one would usually be: his head is lowered on the table, straight on his book, and he is strangley panting. But he is calm, so you open your magazine and start reading.";
	say "     You barely have the time to go past the few first articles that you hear the horse groan: 'Oh... Oh... Nnng...' You look up, puzzled. He is holding on to the table with both hands, eyes shut and gritting his teeth; and you hear faint gurgling noises. A little disturbed, you watch the equine student, now sweaty, catch his breath, reajust something with his pants, and stand up to leave. At the same moment, you feel a pat on your own groin.";
	say "     'Psst,' an undefined voice whispers from under the table. [bold type]'Want some stress relief?'[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Sure!";
	say "     ([link]N[as]n[end link]) - Thanks, but no thanks.";
	if player consents:
		LineBreak;
		say "     'Okay. Make your bits accessible, and stay quiet, then. Don't wanna get busted by the librarian.' You oblige the unknown student. You are curious to know what he or she looks like, but the table prevents you from seeing anything.";
		if player is male:
			say "     You feel a tongue kiss your [cockname of player in lower case] penis, and roll along its length. It quickly grows hard, and the mysterious stress-reliever sucks the tip into their mouth. You contain your moans the best you can, while you feel the wet and warm embrace bob down on your dick, taking its [Cock Size Desc of player] length with surprising ease. Meanwhile, a hand fondles your balls, adding to the pleasure of the impromptu fellatio. You notice that some of your table neighbours look at you with the same puzzlement as you with the horse, and you look down on your magazine so hard that you do not realize that, for the last ten minutes, you did not have turn the pages a single time. The kinkiness of your exhibitionism brings you quickly over the edge, and you tense on your seat, muffling your grunts as you send your load of cum directly into an inviting maw.";
		else if player is female:
			say "     You feel a tongue pass against your [Cunt Size Desc of player] pussy. Its owner is visibly experienced. First, they circle around your pleasure button, playing with it with the tip of their tongue, then sucking it with their mouths, and making you see stars by the same occasion. Then, the tongue slips between your labia, and wastes no time exploring inside. The tongue scouts, tests, and once it has found your g-spot, assaults him relentlessly until you are about to reach your limits, before suddenly stopping and going back to harassing your clit. You notice that some of your table neighbours look at you with the same puzzlement as you with the horse, and you look down on your magazine so hard that you do not realize that, for the last ten minutes, you did not have turn the pages a single time. The kinkiness of your exhibitionism brings you quickly over the edge, and you tense on your seat, muffling your grunts as the mysterious stress-reliever laps down every drop of femcum they can gather.";
		else if player is herm:
			say "     You feel a tongue kiss your [cockname of player] penis, and roll along his length. It quickly grows hard, and the mysterious stress reliever sucks its tip down their mouth. You contain your moans the best you can, while you feel the wet and warm embrace bob down on your dick, taking its [Cock Size Desc of player] length with surprising ease. Meanwhile, their hand plays with your clit, then slips inside your pussy and starts fingering you, progressively adding fingers until you cannot take anymore. You notice that some of your table neighbours look at you with the same puzzlement as you with the horse, and you look down on your magazine so hard that you do not realize that, for the last ten minutes, you did not have turn the pages a single time. The kinkiness of your exhibitionism brings you quickly over the edge, and you tense on your seat, as you send your load of cum directly into an inviting maw and squirts fem-cum somewhere, either on them or on the floor.";
		say "     While you catch your breath, the person under the table wipes your groin clean. 'Felt good, right? Come back anytime. I'm not the only one doing this, anyway.' You look around the reading room, and, effectively, notices several tense faces around the tables, and more-or-less-quiet moans. Once you hear the student crawl towards another visitor, you leave your seat, which is promptly taken by another person.";
	else:
		LineBreak;
		say "     'Aw? Well, suits yourself. Have a fun read.' You hear the person crawl away from you. You follow the noise to your rodent table neighbour, who looks down on the table puzzled, then goes to pull his pants down, blushing. Desperately trying to read in peace, you go elsewhere.";

Campus Events ends here.
