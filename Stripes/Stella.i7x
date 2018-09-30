Version 1 of Stella by Stripes begins here.
[ Version 1.2 - Spoony sex scene and oral 3some w/Jimmy ]
[NOTE: It was the commissioner's specific request that this character top only. She's very "been there, done that" with her vagina and is instead all "I've got a stiffy!"]

"Adds a dalmatian herm to Flexible Survival."

[  HP of Stella                                                                ]
[ overall status                                                               ]
[ 0 = not met                                                                  ]
[ 1 = failed invite                                                            ]
[ 2 = rescued                                                                  ]
[ 3 = talked                                                                   ]
[ 4 = had sex                                                                  ]

Section 0 - Event

Table of GameEventIDs (continued)
Object	Name
Eager Dal	"Eager Dal"

Eager Dal is a situation.
The sarea of Eager Dal is "Red".
when play begins:
	add Eager Dal to badspots of hermaphrodite;
	add Eager Dal to badspots of furry;

Instead of resolving a Eager Dal:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Stella]. Location: [location of Stella]. Alexandra's hint: [if AT_Stella is true]Given[else]Not given[end if]. <- DEBUG[line break]";
	if HP of Stella is 0:
		project the figure of Stella_icon;
		say "     As you're sneaking through an alley between two buildings, you hear a cheerful British voice call out to you from behind. 'Hey there, hon. Care to bang?' Expecting it to be a sex-crazed monster by this point, you turn and take up a fighting stance. 'Whoa there, cowboy! Kind of touchy, aren't we? No need to spaz out!' the cute dalmatian herm in front of you says, paws up as she takes a quick couple of steps back.";
		say "     Realizing you'd misjudged the situation, you relax a little and try to strike up a conversation. As you do, you look her over more closely. Aside from having a nice figure and shapely breasts, the dog-woman's got a cute face with a happy smile on her muzzle. She's got shoulder-length white hair with a splash of black on her bangs. She's wearing a pair of glasses in front of her bright, blue eyes. And between her legs is an obviously canine cock.";
		say "     Aside from learning that her name is Stella, most of your conversation's pretty vacuous babbling. She mainly talks about how she's been enjoying herself since she'd woken up as a dalmatian. Actually, her big thing's her new dick, which she's been trying out all around town. It's no wonder she's ended up in this neighborhood with an attitude like that. When she mentions having been looking for somewhere safe to hang out when she needs to rest, you wonder about inviting her to come with you.";
		say "     [bold type]Shall you do just that?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if player consents:
			say "[convincestella]";
		else:
			say "     You decide against it and stay mum. After a few more minutes of chatting, the dalmatian herm gives a chipper farewell and goes off in search of fun elsewhere.";
			now Resolution of Eager Dal is 99; [disinterest]
			now Eager Dal is resolved;
	else:
		say "     You end up crossing paths with Stella the dalmatian herm again. She strikes up a friendly, if meandering, conversation with you for a while. During your chat, you try to convince her to come with you.";
		say "[convincestella]";


to say convincestella:
	let bonus be ( charisma of player minus 10 ) divided by 2;
	let bonus2 be ( the number of booked people + the number of bunkered people ) / 2;
	let dice be a random number from 1 to 20;
	say "You roll 1d20([dice])+[bonus]+[bonus2]: [dice + bonus + bonus2]: ";
	if ( dice + bonus + bonus2 ) > 14:
		say "You tell Stella that you know [if Police Station Twelve is known]a couple of safe places[else]a safe place[end if] that she might stay[if number of bunkered people + number of booked people > 2], adding that you've got a few other friends there as well[end if]. It takes a little convincing to get her to trust you given your initial impression, but the prospect of somewhere safe (and maybe some sex as well) convinces her to go with you. ";
		if Police Station Twelve is known and HP of Alexandra >= 52:
			say "     The Police Station's somewhat closer than the bunker to here.";
			say "     [bold type]Shall you take her there for now?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Yes.";
			say "     ([link]N[as]n[end link]) - No.";
			if player consents:
				say "     You and Stella travel together to the Police Station[if HP of Alexandra < 57]. She and Alexandra don't really hit it off that well, but the Doberwoman does promise to help keep her safe[else]. She and Alexandra don't really hit it off, but she finds Jimmy absolutely adorable in his little outfit. Jimmy seems quite captivated by her plump sh... ahhh... cute smile[end if]. Once introductions are done, she flops out on one of the bunks with a happy sigh, paw going to her cock.";
				move Stella to Police Lockerroom;
				move player to Police Lockerroom;
			else:
				say "     You and Stella travel together back to the bunker. You don't run into any particular difficulties on the trip, allowing you more time to talk to Stella. And while she doesn't really have anything insightful or interesting to say, her ditzy, super-friendly attitude does make for a cheerful enough trip. Once you arrive[if the number of bunkered people + number of booked people > 0] and after quick introductions[end if], she picks out a bunk for herself and flops out onto it with a happy sigh, paw going to her cock.";
				move Stella to Bunker;
				move player to Bunker;
				increase morale of player by 2;
		else:
			say "     You and Stella travel together back to the bunker. You don't run into any particular difficulties on the trip, allowing you more time to talk to Stella. And while she doesn't really have anything insightful or interesting to say, her ditzy, super-friendly attitude does make for a cheerful enough trip. Once you arrive[if the number of bunkered people + number of booked people > 0] and after quick introductions[end if], she picks out a bunk for herself and flops out onto it with a happy sigh, paw going to her cock.";
			move Stella to Bunker;
			move player to Bunker;
			increase morale of player by 2;
		increase score by 20;
		now HP of Stella is 2;
		now laststellamove is turns;
		now Resolution of Eager Dal is 1; [Stella brought in]
		now Eager Dal is resolved;
	else:
		say "You tell Stella that you have just the place in mind, but she's not sure about going with you. 'I mean, what if you lose the plot again? I'm more of a lover than a fighter, you know,' she giggles. 'Anyway, thanks for the offer, but I think I'll keep looking around for now.' And with that, she waves and heads off.";
		now HP of Stella is 1;


Section 1 - Stella the Dalmatian

Table of GameCharacterIDs (continued)
object	name
Stella	"Stella"

Stella is a woman.
The description of Stella is "[stelladesc]".
The conversation of Stella is { "Try my dick!" }.
The icon of Stella is Figure of Stella_icon.
StellaNPCInt is a text that varies. StellaNPCInt is usually "AAAAAAAAAAAA".

the scent of the Stella is "Stella smells of canine arousal, the scent of sex lingering around her always.".

to say stelladesc:
	say "     Once a female exchange student from England, she's been transformed into a herm dalmatian by the outbreak. Aside from having a nice figure and shapely breasts, the dog-woman's got a cute face with a happy smile on her muzzle. Despite having a refined British accent, it seems like she's always been a bit of a ditzy slut even before coming here. She's got shoulder-length white hair with a splash of black on her bangs. She's wearing a pair of glasses in front of her bright, blue eyes. She's got a somewhat larger than normal cock, canine in form and lacking in sheath or balls. It grows from the top of her pussy, turning her clitoris into this dripping doggy dong she's so proud of.";
	if Police Station Twelve is known and HP of Stella >= 52:
		say "     Being no stranger to roaming the city, you can ask to [bold type]move Stella[roman type] between the police station and the library.";


Section 2 - Conversation

stellapsurv is a truth state that varies. stellapsurv is usually false.

Instead of conversing the Stella:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Stella]. Location: [location of Stella]. Alexandra's hint: [if AT_Stella is true]Given[else]Not given[end if]. <- DEBUG[line break]";
	if HP of Stella is 0 or HP of Stella is 1:
		say "ERROR-Stella-[HP of Stella]L: You should not be able to find her yet.";
	else if HP of Stella is 2:
		say "     'This place ain't too bad. It'll do fine for a place to take a kip when I need a break. I don't mind staying here for a while, though if you know another safe spot as good as this with some interesting folks, I could go hang there for a while too. Just ask me to [bold type]move[roman type].'";
		say "     She stretches and rubs a paw over her groin. 'As it is, when I'm not faffing about here, I'll totally be wandering in and out. Places to go, people to see, holes to stuff - you know how it is,' she giggles. 'Oh, speaking of, I don't want you to be getting any funny ideas. If we're going to be banging - and I hope we will - I'm like totally going to be on top. I've been shagged plenty back when I was a girl; it's time to do the shagging!'";
		now HP of Stella is 3;
	else if Stella is in the Police Lockerroom and PoliceStationTwelvePopulation > 0 and stellapsurv is false:
		say "     'I'm glad to see you've got some other people around here. I'm sure a few'll be up to polishing the silver or even a quick shag, if you get me,' she adds with a wink. 'It's better for [']em to get a spot of relief than to have [']em risk going round the bend, I'd say.'";
		if PoliceStationTwelveInfpop < PoliceStationTwelvePopulation, increase PoliceStationTwelveInfpop by 1;
		now stellapsurv is true;
	else:
		say "     [one of]'My name's actually Satellizer, but everyone just calls me Stella.'[or]'I'm an exchange student here from Britain. I got my da to pay for it, though I had to let a couple of profs bang me to get the grades I needed. And I'm chuffed that I did, too - this has been great!' she adds, tail wagging excitedly.[or]'I think I might pop out for a bit soon, see if there's anyone around looking to snog,' she says cheerfully.[or]'Not quite sure why I ended up going to the dogs, but I got a fine todger out of the deal, so everything's tickety-boo in my books,' she giggles.[or]'It was a bit of a surprise the first time I got to try this big guy out,' she says, stroking her half-hard meat. 'When my knot swelled up and tied me to that husky bitch... mmm... wow!'[or][if police station Twelve is known and laststellamove - turns >= 16]Do let me know if you find another spot with some fun [']friends['] I can get to [']know better['] and I can [bold type]move[roman type] there for a while.'[else]'I'm really enjoying making friends around here. There's plenty of people out there happy to have a go at this girl's doggy dong.'[end if][or][if location of Stella is Police Lockerroom and PoliceStationTwelvePopulation > 20]'Quite the crowd you've got here. Nice work helping all these poor people out. Nice, [']friendly['] folks they are too,' she adds with a wink and a rub at her groin.[else if location of Stella is Police Lockerroom and PoliceStationTwelvePopulation > 12]'You've got a good crowd here. You keep them safe; they're a nice bunch of [']friendly['] folks,' she adds with a wink and a rub at her groin.[else if location of Stella is Police Lockerroom and PoliceStationTwelvePopulation > 0]'These poor people've had it rough, chum. Do what you can to keep the rest of them safe; they're a nice bunch of [']friendly['] folks,' she adds with a wink and a rub at her groin.[else]'I've got to say, all this is proving to be the dog's bollocks,' she says, laughing at her own joke.[end if][in random order]";


Section 3 - Moving Stella

stellamoving is an action applying to nothing.
laststellamove is a number that varies. laststellamove is usually 255.
Understand "move Stella" as stellamoving.
Understand "move Satellizer" as stellamoving.
Understand "Satellizer move" as stellamoving.
Understand "Stella move" as stellamoving.

check stellamoving:
	If Stella is not visible, say "Who?" instead;
	if Police Station Twelve is not known or HP of Alexandra < 52, say "There's nowhere else to send her." instead;
	if laststellamove - turns < 16, say "What? I just got settled in here. Maybe later." instead;

carry out stellamoving:
	if location of Stella is bunker:
		say "     Taking Stella up on her suggestion, you escort her to the Police Station. She seems pleased with the change of scenery, hopeful she can find a few interesting playmates in the area.";
		move Stella to Police Lockerroom;
		move player to Police Lockerroom;
		now laststellamove is turns;
	else:
		say "     Taking Stella up on her suggestion, you escort her to the bunker. She seems pleased with the change of scenery, hopeful she can find a few interesting playmates in the area.";
		move Stella to bunker;
		move player to bunker;
		now laststellamove is turns;


Section 3 - Sex with Stella

the fuckscene of Stella is "[sexwithStella]".

to say sexwithStella:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Stella]. Location: [location of Stella]. Alexandra's hint: [if AT_Stella is true]Given[else]Not given[end if]. <- DEBUG[line break]";
	if HP of Stella is 0 or HP of Stella is 1:
		say "ERROR-Stella-[HP of Stella]L: You should not be able to find her yet.";
	else if HP of Stella is 2:
		say "     Perhaps you should talk to her first. She certainly seems eager enough, but it'd probably be best to chat a bit first.";
	else if lastfuck of Stella - turns < 4:
		say "     'I'm glad to see you're stoked for more, but [one of]I was thinking of popping out for a bit of variety[or]even I need a break from time to time[or]I'm knackered[at random],' the dalmatian responds.";
	else:
		say "     The dalmatian herm's ears perk up at the suggestion of sex. She rubs her canine cock, making it twitch upwards as it stiffens at the prospect of fun. '[one of]So which hole are you looking for me to stuff?'[or]How about you bend over for the pretty doggy?'[or]Let's get this shag on the road.'[at random]";
		say "[Stellasexmenu]";


to say Stellasexmenu:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	choose a blank row in table of fucking options;
	now title entry is "Fellatio";
	now sortorder entry is 1;
	now description entry is "suck that doggy cock";
	if player is female:
		choose a blank row in table of fucking options;
		now title entry is "Doggy-Style";
		now sortorder entry is 2;
		now description entry is "bend over and get shagged";
	choose a blank row in table of fucking options;
	now title entry is "Spooning";
	if player is female:
		now sortorder entry is 3;
	else:
		now sortorder entry is 6;
	now description entry is "get shagged from behind";
[	if player is female:
		choose a blank row in table of fucking options;
		now title entry is "Missionary";
		now sortorder entry is 4;
		now description entry is "bang in the classic position";]
	choose a blank row in table of fucking options;
	now title entry is "Anal";
	now sortorder entry is 5;
	now description entry is "take it up the arse";
	if player is submissive:
		choose a blank row in table of fucking options;
		now title entry is "Dominant doggy";
		now sortorder entry is 7;
		now description entry is "be this Brit's bitch";
	if HP of Stella >= 4:	[threesomes]
		if Jimmy is visible and lastfuck of Jimmy - turns >= 6 and HP of Jimmy >= 4 and player is male:
			choose a blank row in table of fucking options;
			now title entry is "Oral threesome with Jimmy";
			now sortorder entry is 10;
			now description entry is "let Jimmy suck you both off";
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: Shall you [description entry]?";
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if nam is "Fellatio":
					say "[stellasex1]";
				else if nam is "Doggy-Style":
					say "[stellasex2]";
				else if nam is "Spooning":
					say "[stellasex3]";
				else if nam is "Missionary":
					say "[stellasex4]";
				else if nam is "Anal":
					say "[stellasex5]";
				else if nam is "Dominant doggy":
					say "[stellasex6]";
				else if nam is "Oral threesome with Jimmy":
					say "[stellajimmy01]";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	if HP of Stella is 3, now HP of Stella is 4;
	stellainfect;
	now lastfuck of Stella is turns;
	wait for any key;
	clear the screen and hyperlink list;


to say stellasex1:
	say "     Offering to blow her, she grins and strokes her swelling penis. 'That's the spirit,' she says in her cheerful British accent. As you drop to your knees in front of her, she offers her canine cock with a doggy grin on her muzzle. It's a reddish-pink in color and thoroughly canine in form. It may just be the infection, but looking at it makes your mouth start to water. [one of]After giving it a teasing lick[or]after some kisses along its six-inch length[or]After a playful lick across her pussy[at random], you let it slide past your lips and start sucking the dalmatian herm off.";
	say "     Stella's doghood pulses and throbs in your mouth, drooling precum across your tongue. You lick and suck on it eagerly while she strokes her paws over your head[one of]. While sucking on that juicy dogcock, you brush your fingers across her pussy lips. After some light teasing, you slip a pair of fingers into her dripping folds and work them in and out. She pants in excitement at this and starts thrusting into your mouth, all the more eager to fuck your face[or]. While sucking on that juicy dogcock, you can't help but notice her lack of balls, her penis growing up from her pussy like an enlarged clit, but shaped like a dog's wang. You're distracted from your musing as she starts thrusting into your mouth because your attention's wavered[or]. While sucking on that juicy dogcock, you feel across it with your tongue, lavishing attention upon it. You work especially attentively across her pointed glans and dribbling cumslit. As her excitement builds, she grips your head more firm and starts thrusting into your mouth[at random]. Panting heavily with excitement, she grits her teeth and whines like a dog, her climax approaching. And with barks of excitement, she presses your face to her groin and cums hard, pumping her canine cum down your throat.";

to say stellasex2:
	say "     Suggesting that you go for doggy style, she grins and strokes her swelling penis. 'That's always been my favorite. And it's even better now that I'm on top,' she says in her cheerful British accent. Dropping to your knees and raising your ass, she gives your butt a playful grab before moving her canine cock into position. She brushes the pointed, drooling tip across your wet folds for a few passes to get you all the more excited before easing forward. As she mounts you, she leans overtop you, licking and nibbling at your ears and the back of your neck.";
	say "     Panting with her tongue hanging out, the horny herm drives her animal cock into you again and again. She fucks you well, clearly having learned a lot on how to please a lady from having been boned herself so often[if breast size of player > 0 and a random chance of 1 in 3 succeeds]. Supporting herself with one arm, she brings her other paw to your chest, caressing your breasts. Her groping, while eager, is still tender and includes a lot of teasing of your nipples to heighten your own enjoyment[else if player is male and a random chance of 1 in 3 succeeds]. Supporting herself with one arm, she brings her other paw to your crotch, stroking your [cock of player] shaft. She works over your manhood with the practiced skill of someone who's handled plenty of men in the past[else]. Supporting herself with one arm, she brings her other paw to your crotch, stroking your [cunt size desc of player] pussy while she stuffs it. Her fingers tease your clit and caress over your folds even as she slides her pulsing rod between them[end if]. She keeps a nice, brisk pace and anticipates when it's time to change it up or shift positions slightly. For a while, she draws it out like this, but eventually her own lusts win over and she starts banging away at you hard and fast, panting heavily as her canine urges take over.";
	say "     With a final, hard thrust, she pops her growing knot into you, tying her pulsing, cum-spurting rod inside you. Her canine seed, copious for one with no ballsack, splashes against the back of your vagina. As it builds up, having nowhere else to go, it flows into your womb. While waiting for her extended climax to end and her knot to go down, she snuggles with you, her paws roaming over your [bodytype of player] body appreciatively.[impregchance]";

to say stellasex3:
	say "     Suggesting some spooning, she grins and strokes her swelling penis. 'A fine choice. A fine choice indeed,' she says in her cheerful British accent. She helps you divest of your gear before pushing you gently to get onto her cot. She climbs into it right behind you. Things are [if scalevalue of player < 4]a little[else]quite[end if] tight, but she manages to snuggle up behind you. She grinds her canine cock against your ass and between your buns while nuzzling at the back of your neck. She snuffles at your ear and gives it a playful nibble as she gets lined up and then thrusts into your [if player is female]juicy cunt[else]crinkled hole[end if].";
	say "     Panting with her tongue hanging out, the horny herm drives her animal cock into you again and again. She fucks you at a leisurely pace so as not to push you off. This lets you enjoy the firm push of that doggy dong into your [if player is female]hot tunnel delightfully[else]ass, buggering you skillfully[end if], allowing you to feel its exotic, animalistic shape as it moves in and out of you.";
	say "     With you resting atop one of her arms, she cuddles you with that one while the other roams across your [bodydesc of player] body[if breast size of player > 0]. Her paw stops for a time at your chest, groping and fondling your tits in a playful manner that is never too rough[end if]. Eventually, her paw makes it way to your crotch[if player is herm]. After playfully brushing over your erection, she slips beneath it to tease your cock-filled pussy. Spreading her fingers into a V, she rubs her furry digits along either side of her thrusting shaft, further stimulating your cunt[else if player is female]. After playfully tickling your thigh, she slips those last few inches to tease your cock-filled pussy. Spreading her fingers into a V, she rubs her furry digits along either side of her thrusting shaft, further stimulating your cunt[else if player is male]. After playfully brushing over your erection, she takes hold of it and starts masturbating you in time to her slow, steady thrusting[else]. Finding it disappointingly bare, she rubs at your genderless groin, soothing that unfocused ache for release you have a little[end if].";
	say "     As her excitement builds towards its peak, she grinds her knot firmly against your by now [if player is female]soaked petals[else]relaxed and stretched hole[end if]. She pants with her long, doggy tongue draped across your neck as her canine urges come to the fore. A few more thrust and she finally manages to pop her growing knot into you, locking her cum-spurting rod inside you. You can feel the hot rush of her canine seed flowing into your [if player is female]cunt and onwards to your womb[else]bowels as it splashes across your over-stimulated prostate[end if][if player is not neuter]. Having that throbbing bulb of knot buried inside you becomes too much and you cry out lustfully as you orgasm in blissful delight[else]. Having that throbbing bulb of knot buried inside you seems to be finally enough to push you over the top. Your anus clenches around her doggy dick as waves of unfocused sexual pleasure shudders through your body without a proper outlet. Your [bodytype of player] body aches, but it's a good kind of ache[end if]. While waiting for her extended climax to end and her knot to go down, she snuggles with you, her paw caressing your side while she licks and kisses at your neck.[impregchance]";

to say stellasex4:
	say "***missionary";

to say stellasex5:
	say "     Suggesting that she take you in the ass, she grins and strokes her swelling penis. '[if player is female]Ooo! Kinky girl! I like that[else]Mmmm! Sounds good. Bend over and lemme at that arse of yours[end if],' she says in her cheerful British accent. Dropping to your knees and raising your ass, she gives your butt a playful grab before moving her canine cock into position. She rubs the pointed, drooling tip against your pucker, letting her pre lube you up a little as she gets your back passage to ease open. As she mounts you, she leans overtop you, licking and nibbling at your ears and the back of your neck.";
	say "     Panting with her tongue hanging out, the horny herm drives her animal cock into you again and again. She fucks you well, clearly having learned a lot on how to please a lover from having been boned herself so often[if breast size of player > 0 and a random chance of 1 in 3 succeeds]. Supporting herself with one arm, she brings her other paw to your chest, caressing your breasts. Her groping, while eager, is still tender and includes a lot of teasing of your nipples to heighten your own enjoyment[else if player is male and a random chance of 1 in 3 succeeds]. Supporting herself with one arm, she brings her other paw to your crotch, stroking your [cock of player] shaft. She works over your manhood with the practiced skill of someone who's handled plenty of men in the past[end if]. She keeps a nice, brisk pace[if player is male], grinding her throbbing cock against your prostate with every thrust, and[else],[end if] then easing off before you can get too excited. For a while, she draws it out like this, but eventually her own lusts win over and she starts banging away at you hard and fast, panting heavily as her canine urges take over.";
	say "     With a final, hard thrust, she pops her growing knot into you, tying her pulsing, cum-spurting rod inside you. Her canine seed, copious for one with no ballsack, splashes [if player is male]against your prostate[else]around inside your bowels[end if]. As it builds up, having nowhere else to go, it can only flow deeper into you. While waiting for her extended climax to end and her knot to go down, she snuggles with you, her paws roaming over your [bodytype of player] body appreciatively.[mimpregchance]";

to say stellasex6:
	say "     As you offer to let Stella fuck you, there's a little something in your voice that causes her canine ears to perk up. Sensing the submissive need in your tone, she gives a doggy grin and a sniff. 'Smells like someone's looking forward to their chance to be my bitch[if HP of Stella >= 4] again[end if]. Don't worry, I'll give you the proper shagging a slut like you deserves,' she says with a lustful growl in her voice. Pressing you down onto a bench, she gives your rear a couple of slaps with her cock, making you blush as you grow all the more aroused by her mistreatment of you.";
	say "     Having gotten herself quite worked up as well, precum drools from her cock onto your [if player is female]pussy[else]tight pucker[end if] as she gets into position. Not in the mood to wait any long, she takes the nape of your neck in her muzzle and thrusts into you. Thankfully, she shows a little restraint, but is still steady and inexorable in her determination to stuff your [if player is female]needy cunt[else]back passage[end if]. Her paws roam over your body, groping and teasing you as she pants in your ear about what a slutty bitch you are, lusting for dog cock so badly. You can only pant and moan beneath her, feeling like the dog herm's bitch and loving it as she pounds away at you.";
	say "     With a final, hard thrust, she pops her growing knot into you, tying her pulsing, cum-spurting rod inside you. Her canine seed, copious for one with no ballsack, splashes [if player is female]against your cervix[else if player is male]against your prostate[else]around inside your bowels[end if]. As it builds up, having nowhere else to go, it can only flow deeper into you. While waiting for her extended climax to end and her knot to go down, she continues to grope and fondle you, enjoying your whimpers of pleasure and lustful cries as her paws roam over your [bodytype of player] body appreciatively.[impregchance]";


to stellainfect:
	setmonster "Dalmatian Male";
	choose row monster from the Table of Random Critters;
	if name entry is "Dalmatian Male":
		let temptext be " ";
		now temptext is sex entry;
		let tempnum be breasts entry;
		if "Male Preferred" is listed in feats of player:
			now sex entry is "Male";
		else if "Herm Preferred" is listed in feats of player:
			now sex entry is "Both";
			now breasts entry is 8;
		else:
			now sex entry is "Female";
			now breasts entry is 8;
		infect;
		now sex entry is temptext;
		now breasts entry is tempnum;


Section 4 - Interactions with Stella

to say stellajimmy01:
	say "     Passing Stella a grin and a nod toward Jimmy, she smiles and nods in agreement. The two of you approach the little dog from opposite sides, catching him by surprise between you. 'Uh, what's up?' he asks, looking up at both of you. The fact that you're both erect and pointing your dicks at him doesn't go unnoticed either.";
	say "     '[one of]We've got a hard problem and figured you'd be just the pup to help us both with it,[or]Less talk, more suck, cutey,[or]You looked hungry, so we thought we'd give you a tasty treat,[or]Got another BJ or two in you, pup?[run paragraph on][at random]' Stella says with a grin. She puts a paw on the happy corgi's head, pushing his muzzle to her doggy dick before he has a chance to properly respond. Not that he'd refuse, his muzzle opening and readily taking her erection into it. He bobs his muzzle over her shaft while sliding his canine tongue across it for several licks. Jimmy starts off with just a short slathering before switching over to you rather than leave you hanging.";
	say "     Jimmy starts off with just a short taste before switching over to you rather than leave you hanging. His cute muzzle slides over your [cock of player] shaft, wrapping it in the warm embrace of his mouth. His floppy tongue slathers across your manhood with an eagerness you can feel in his efforts. He laps up your precum and swallows it down greedily[if PoliceStationTwelvePopulation > 0]. He's becoming quite good at this, obviously getting plenty of practice with so many around in need of cheering up[end if]. He thorough in his licking, getting every square centimeter of your cock before swapping back to Stella.";
	say "     While she'd obviously enjoyed the show of Jimmy working over your cock, she's much happier with his muzzle back on her instead of just his paw. While it's her turn to get blown again, the corgi keeps a paw on your cock, stroking your saliva-slick shaft to keep you hard for him. Not that you need much help with the sight of him working the dalmatian's dick in and out of his muzzle.";
	say "     The playful corgi swaps between you both several times, steadily working your excitement higher with every round[if the remainder after dividing level of Stella by 3 is 0]. Eventually, Stella can't hold back any longer and holds the playful dog's head. She gives a long, happy moan and bucks her hips. From the wet sounds of Jimmy swallowing, you know she's pumping a big load of canine cum into the corgi's belly. Jimmy pumps at your cock all the faster while sucking down the dalmatian's seed, soon driving you to cum messily across his face and muzzle[else if the remainder after dividing level of Stella by 3 is 1]. As you're building towards climax, Jimmy keeps his muzzle on your shaft a little longer, ensuring that you're the one to pop off in his muzzle this time. He moans wetly as you shoot blast after blast of your [cum load size of player] load into his mouth and down his throat. Meanwhile, Stella's been masturbated to her own climax, spraying her semen across the corgi's sucking muzzle[else]. With you both about to blow, Jimmy changes over to rapidly stroking you both off while exchanging licks across the tips of your cocks. It's not long before this results in the two of you cumming messily across the cute corgi's face and muzzle. He aims both spurting dongs towards his open mouth, catching what he can on his tongue and letting the rest spray onto him sloppily[end if]. When it's all over, the smaller dog smiles happily, licking his tongue across his messy muzzle to get the rest of his tasty treat.";
	increase level of Stella by 1;
	now lastfuck of Jimmy is turns;

[  HP of Stella     ]
[ overall status     ]
[ 0 = not met     ]
[ 1 = failed invite    ]
[ 2 = rescued     ]
[ 3 = talked     ]
[ 4 = had sex     ]

Stella ends here.
