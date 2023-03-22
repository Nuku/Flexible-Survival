Jana by Kirov begins here.

"Adds Jana the Horsemazon as an NPC to the game"

[ Engergy of Jana		- counts the number of consecutive victories by the player over the horsemazon monster ]

[ HP of Jana			- status of Jana 	]
[ 0 - Unknown enemy							]
[ 1 - Location known						]
[ 2 - Formally introduced 					]

[ MaxHP of Jana        	- reserved for temporary use ]

[ XP of Jana			- How dominant or submissive Jana is. Positive is dominant, negative is submissive ]

[ Level of Jana			- Toggle for some chit-chat ]

[ Armor of Jana			- Not used ]

Section 0 - Setup and Declaration

Table of GameCharacterIDs (continued)
object	name
Jana	"Jana"

Jana is a woman.
ScaleValue of Jana is 4. [slightly larger than human]
Body Weight of Jana is 6. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Jana is 8. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Jana is 6. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Jana is 7. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Jana is 5. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Jana is 6. [length in inches]
Breast Size of Jana is 4. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Jana is 2. [count of nipples]
Asshole Depth of Jana is 12. [inches deep for anal fucking]
Asshole Tightness of Jana is 3. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Jana is 0. [number of cocks]
Cock Girth of Jana is 0. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Jana is 0. [length in inches]
Ball Count of Jana is 0. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Jana is 0. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Jana is 1. [number of cunts]
Cunt Depth of Jana is 14. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Jana is 3. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Jana is 4. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Jana is false.
PlayerRomanced of Jana is false.
PlayerFriended of Jana is false.
PlayerControlled of Jana is false.
PlayerFucked of Jana is false.
OralVirgin of Jana is false.
Virgin of Jana is false.
AnalVirgin of Jana is true.
PenileVirgin of Jana is true.
SexuallyExperienced of Jana is true.
TwistedCapacity of Jana is true. [Twisted Characters can take any penetration, no matter the size]
Sterile of Jana is false. [steriles can't knock people up]
MainInfection of Jana is "Horsemazon".
The description of Jana is "[JanaDescription]".
The scent of Jana is "Jana has an outdoorsy, equine smell which reminds you of green fields and meadows.".
The conversation of Jana is { "Neigh!" }.
The fuckscene of Jana is "[JanaSexCheck]".

to say JanaDescription:
	if debugactive is 1:
		say "[JanaDebug]";
	say "     Jana is an anthropomorphic horse lady with the body of an Amazon goddess. Her impressive figure is almost intimidating, but her feminine curves also give her a sexy, alluring appeal.";

to say JanaDebug:
	say "     DEBUG -> Energy: [Energy of Jana], HP: [HP of Jana], XP: [XP of Jana], Level: [Level of Jana], Armor: [Armor of Jana] <- DEBUG[line break]";

instead of conversing the Jana:
	say "[JanaTalkMenu]";

HP of Jana is 0.
MaxHP of Jana is 0.
XP of Jana is 0.
Level of Jana is 0.
Armor of Jana is 0.

JanaRoomFix is a number that varies. [@Tag:Notsaved]			[ used to control whether the import fix has been run ]
JanaRoomFix is usually 0.

Table of GameRoomIDs (continued)
Object	Name
Janas Bedroom	"Janas Bedroom"

Janas Bedroom is a room. It is sleepsafe. The description of Janas Bedroom is "     You are greeted with the sight of a spartanly furnished room, with little more than a bed and nightstand as far as living accommodations are concerned. The exception, however, is the impressive array of lewd toys and bondage gear displayed proudly on the shelving of the nearest wall. There's even a pillory stashed into a corner, positioned perfectly to have someone strapped inside and be 'punished.'".

to connect Janas Bedroom:
	change the West exit of Janas Bedroom to Mares Quarters;
	if HP of Jana > 0:
		change the East exit of Mares Quarters to Janas Bedroom;

After going to Janas Bedroom for the first time:
	say "     You knock on the door to the room which Jana told you was hers, then step back to wait. After only a short pause, the door opens to reveal the stunning Amazon, complete with her leather getup. 'Hey there, Sweetie,' she greets you with a wink. 'Glad you decided to stop by. Come on in.' She waves you in and you step inside as she closes the door behind you. She gestures toward the small one-room living quarters, letting you take in the sight. 'Welcome to my humble abode!'";

an everyturn rule: [ bugfixing rules for players that import savegames ]
	if ( JanaRoomFix is 0 ) and ( HP of Jana > 0 ): [ Jana has revealed her location to the player ]
		change the East exit of Mares Quarters to Janas Bedroom;
		now JanaRoomFix is 1;

to say JanaInit:
	connect Janas Bedroom;
	move Jana to Janas Bedroom;

When Play begins:
	say "[JanaInit]";

a postimport rule: [bugfixing rules for players that import savegames]
	say "[JanaInit]";

Section 1 - Discussion

to say JanaTalkMenu:
	if debugactive is 1:
		say "[JanaDebug]";
	if HP of Jana is 0:
		say "ERROR: KIRJUN001 - Please report on the FS Discord";
	if HP of Jana is 1:
		say "     You eye the rack of gear as you approach Jana for the first time in her own room. She picks up on what you're looking at and says, 'Interested in what you see?' She gives you a teasing smile and you blush furiously. 'These are my toys,' she goes on to explain. 'But I'm sure you're not surprised to see them in a place like this.' When the topic of the Stables comes up, you give her an inquisitive look. 'I'm sure you're wondering why I live here. I'm not actually an 'employee,' but when things went to hell in a handbasket, I needed a place to stay and lie low. I happened to run into Fancy, and she was kind enough to set me up with a secret place here. In return, I help the girls out with training and equipment when they have clients that are into... certain kinks.' She winks at you provocatively. 'But enough about that. How are you doing?'";
		now HP of Jana is 2;
	else:
		say "     Jana smiles as you approach, flipping her lush mane behind her back before turning to look at you. [bold type]What did you want to talk to her about?[roman type][line break]";
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		[]
		choose a blank row in table of fucking options;
		now title entry is "Chitchat";
		now sortorder entry is 1;
		now description entry is "Talk about whatever comes to mind";
		[]
		repeat with y running from 1 to number of filled rows in table of fucking options:
			choose row y from the table of fucking options;
			say "[link][y] - [title entry][as][y][end link][line break]";
		say "[link]0 - Nevermind[as]0[end link][line break]";
		now calcnumber is -1;
		while sextablerun is 0:
			say "Pick the corresponding number> [run paragraph on]";
			get a number;
			if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
				now current menu selection is calcnumber;
				choose row calcnumber in table of fucking options;
				say "[title entry]: [description entry]?";
				if Player consents:
					let nam be title entry;
					now sextablerun is 1;
					if nam is "Chitchat":
						say "[JanaChitchat]";
					wait for any key;
			else if calcnumber is 0:
				say "     You take a step back from the anthropomorphic horse woman, who gives you a puzzled look, expecting you to say something.";
				now sextablerun is 1;
		clear the screen and hyperlink list;

to say JanaChitchat:
	let cclist be a list of texts;
	now cclist is {};
	[]
	add "[JanaCC1]" to cclist;
	[]
	add "[JanaCC2]" to cclist;
	[]
	add "[JanaCC3]" to cclist;
	[]
	add "[JanaCC4]" to cclist;
	[]
	add "[JanaCC5]" to cclist;
	[]
	if XP of Jana > 0:
		add "[JanaCC7]" to cclist;
		[]
		add "[JanaCC9]" to cclist;
		[]
	if XP of Jana < 0:
		add "[JanaCC6]" to cclist;
		[]
		add "[JanaCC8]" to cclist;
		[]
		if Level of Jana is 1:
			add "[JanaCC10]" to cclist;
			[]
	sort cclist in random order;
	say "[entry 1 of cclist]";

[ Jana's random musings about the situation and her past ]
to say JanaCC1:
	say "     'You know, it's funny that I turned into a horse of all things,' she says. 'I actually used to be an equestrian rider before this outbreak happened. I used to love visiting my parents stables.' You can see her eyes glaze over a bit as she reflects back on how things used to be. 'We had a mare named Matilda. I loved taking her out on rides as often as I could. I wonder what ever happened to her.'";

to say JanaCC2:
	say "     'You ever play any sports or anything? I'm a really competitive person, and I'll do what it takes to win. Maybe we can play a game sometime and have a little friendly competition. Winner get's a prize?'";

to say JanaCC3:
	say "     'Not many people get to see inside my room. It's a bit of a private sanctuary for me, but I like you. Not to mention all of these...' she gestures towards the wall of bondage toys. You can see wide variety of tools and toys for use on both herself, and her partners, some of which look quite intimidating. 'They can put people off sometimes.'";

to say JanaCC4:
	say "     'My parents used to run a horse club, of sorts. They'd meet up with their rich friends and act all hoity-toity before retreating behind closed doors. I used to always wonder what they did, but I didn't find out until I was older. Maybe I'll tell you about it someday.'";
	if Level of Jana is 0:
		now Level of Jana is 1;

to say JanaCC5:
	say "     'My mother is where I got my love of horses from. She taught me how to ride as a child. She loved those animals so much, she'd even pose with them out on photoshoots as a model.' Jana gestures towards her nightstand, where you see a photo of an attractive human woman posing next to an impressive stallion. The woman has a youthful appearance with a lithe build that's rather easy to see. You note that she's completely nude, save for a rather expensive-looking fur coat. It seems a bit suggestive for a pose with a horse.";

to say JanaCC6:
	say "     'You know you can fuck me anytime, right? Just bend me over my bed, pull down my panties, and stuff me full of cock. I won't mind.' she says with wink.";

to say JanaCC7:
	say "     'You'd look mighty fine all tied up and wearing a collar. The look would really suit you, I think.'";

to say JanaCC8:
	say "     'If only there was someone around to slap me when I've been a bad girl,' she pouts sarcastically, doing her best to give you a seductive flutter of her eyes.";

to say JanaCC9:
	say "     I've been meaning to brush up on my knot tying skills. Maybe someday I'll use you as a practice subject,' she says with a wink.";

to say JanaCC10:
	say "     Just before the outbreak, I finally found out what my parents were doing in those secret club meetings. I snuck in one night to see my mother strapped to a table nude, while the men of the club used her for their own pleasure. They were all wearing horse masks, and my mother had a horseshoe tattoo right on her ass. I didn't stay long for fear of getting caught, but of the men was also bringing out one of the stallions.' You see her reach down to her crotch and unconsciously begin to rub herself. 'God it was soo hot,' she says. 'If only there was someone around who would tie me down and use me like a piece of meat, just like that.'";

Section 2 - Sex

to say JanaSexCheck:
	if lastfuck of Jana - turns < 4:
		if XP of Jana > 0:
			[ Dominant Jana ]
			say "     Jana looks at you with a teasing smile. 'Sorry,' she says. 'I'm not quite in the mood right now.' Despite her words, she claps her hands in front of her in a way that squeezes her chest together, treating you to a show of her cleavage. 'You'll just have to wait until my appetite is a little more ravenous.' She winks at you before turning around and walking away, swaying her hips seductively as she does.";
			increase libido of Player by 5;
		else:
			[ Submissive Jana ]
			say "     'Sorry,' she says. 'You really wore me out last time.' She pants to make a show of how tired she is. 'Give me a bit of time to rest, and then we can have some more fun, alright?'";
	else:
		say "[JanaSexMenu]";

to say JanaSexMenu:
	if HP of Jana is 0:
		say "ERROR: KIRJUN002 - Please report on the FS Discord";
	else if HP of Jana is 1:
		say "     You just stepped into her room for the first time. You might want to talk to her first before proceeding.";
	else:
		say "     Jana smiles as you approach, flipping her lush mane behind her back before turning to look at you. [if XP of Jana > 0]She quickly steps up to you and grabs you around the waist, pulling you in for a quick kiss. When she pulls back, she asks, 'So, what did you have in mind?'[else]You step up and pull her into a loving embrace, your hand reaching around to her butt as you kiss her. When you pull back, she asks, 'So, what did you have in mind?' [bold type]What would you like to do?[roman type][line break]";
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		if Player is male:
			choose a blank row in table of fucking options;
			now title entry is "Fuck Her";
			now sortorder entry is 1;
			now description entry is "Take her for a ride and fuck her pussy";
			[]
			if "Dominant" is listed in feats of Player and XP of Jana < 0:
				choose a blank row in table of fucking options;
				now title entry is "Blowjob";
				now sortorder entry is 2;
				now description entry is "Use her mouth for your pleasure, and punish her if it's not good enough";
				[]
		if Player is female:
			choose a blank row in table of fucking options;
			now title entry is "Receive Oral";
			now sortorder entry is 10;
			now description entry is "Have her set to work on your pussy";
		[]
		choose a blank row in table of fucking options;
		now title entry is "Eat Her Out";
		now sortorder entry is 20;
		now description entry is "Give her pussy some oral attention";
		[]
		repeat with y running from 1 to number of filled rows in table of fucking options:
			choose row y from the table of fucking options;
			say "[link][y] - [title entry][as][y][end link][line break]";
		say "[link]0 - Nevermind[as]0[end link][line break]";
		now calcnumber is -1;
		while sextablerun is 0:
			say "Pick the corresponding number> [run paragraph on]";
			get a number;
			if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
				now current menu selection is calcnumber;
				choose row calcnumber in table of fucking options;
				say "[title entry]: [description entry]?";
				if Player consents:
					let nam be title entry;
					now sextablerun is 1;
					if nam is "Fuck Her":
						say "[JanaFuck1]";
					else if nam is "Blowjob":
						say "[JanaBlowjob1]";
					else if nam is "Receive Oral":
						say "[JanaOral1]";
					else if nam is "Eat Her Out":
						say "[JanaPleasure1]";
					now lastfuck of Jana is turns;
					wait for any key;
			else if calcnumber is 0:
				say "     Deciding you're not in the mood after all, you untangle yourself from her embrace and depart, leaving her with a confused look on her face.";
				now sextablerun is 1;
		clear the screen and hyperlink list;

to say JanaFuck1:
	if XP of Jana > 0:
		say "     You take a moment to ponder just what you want to do, but the dominant mare grows impatient and takes the matter into her own hands. You catch a glint of mischief in her eyes as she comes to a decision for you, before she twirls you around and pushes you onto her bed. In full control of the situation, the horse slowly and sensually begins stripping before you, letting each piece of clothing gently drift to the floor. She starts by removing her top, and underneath her clothes you are treated to a divinely sculpted body of feminine perfection. You allow your eyes to wander over her form, eyeing her D-cup breasts and wonderful, wide hips. Sashaying over to you, she leans over the bed and places a gentle kiss on the tip of your [Cock of Player] cock, before pulling back to leave you thrusting at the air. She smiles knowingly and resume her dance, bending over to slowly pull down her pants and expose her pussy, wet and dripping with arousal. Finally in the nude, she walks back over to you and places a hand firmly on your chest. She leans in closely to get face-to-face, and the hand on your chest presses down a little harder when she notices you ogling her tits. 'Listen here,' she says, and your attention is brought up to her face. 'You're such a fine specimen that you've gone and gotten my juices flowing. It's making it hard to concentrate, and you ought to take responsibility. So now I'm going to fuck you, and you're going to lie there and take it. Understand?'";
		say "     You start to answer, but she shoves you further into bed again. 'No talking,' she commands. 'Just give me a nod.' Apparently left with no other choice, you obediently nod your head. Satisfied with your submission, the Amazon quickly strips you of whatever clothing still remains, then lowers herself to straddle your crotch. She teases the lips of her nethers against the underside of your [Cock of Player] cock, and your body can't help but respond. You quickly harden as she teases you. 'That's a good boy,' she says with a confident smile, reveling in the way she's able to affect your body. She continues to torture you with her grinding, to the point that it becomes unbearable, and your mind is filled with nothing but a desire to slip inside her wet folds. She finally relents, allowing you entry into her mare pussy.";
		say "     'Ah!' she cries out at the feeling of your member filling her. Egged on by the sensation, she becomes a little more aggressive and roughly grabs your wrists to pin you in place. Her strong grip leaves you completely immobilized, helpless to do anything as she bounces up and down on your [Cock of Player] shaft. She takes you like that for what surely must be an hour or more, using you for her own pleasure as she orgasms multiple times. Eventually, the contractions of her cunt are enough to send you over the edge as well, and you climax together in a wave of ecstasy. Finally satisfied, the horsemazon releases you from her grip as she stands back up, giving you a wink as she redresses. 'Hope you had just as good a time as I did, honey.'";
	else:
		if "Dominant" is listed in feats of Player:
			say "     You spin her around and push her onto all fours on the bed, then slowly walk around behind the fallen horse to admire her read end. The Amazon beauty's well-toned butt is a tantalizing sight, and you can't help but reach out and grope it, giving it a firm smack to watch it jiggle and sway. She responds with a whinny and neigh of surprise, but she eagerly pushes her ass back into your kneading hands nonetheless. Your eyes are then drawn the horses array of toys displayed neatly on the nearby wall. Hidden away in her secret little room in the stables is a wide variety of kinky bondage gear, from small leather collars to fully body latex suits to even some nasty looking whips. Seeing the assortment of tools puts more than a few wicked thoughts in your head. You grab her usual riding crop form its place on the shelf and peel down her leather chaps, then wind up your arm to build the suspense. When you bring the crop back down, it makes contact with a satisfying 'SMACK!', and you don't doubt that her skin is left a beet red beneath all that fur. You smack her again and again, hearing her whinny with each strike, and you notice that she's begun dripping with arousal at your abuse. 'Oh, you're a naughty girl, aren't you?' you tease with another smack from the crop.";
			say "     Finally deciding that you've head enough of the foreplay, you reposition yourself to be kneeling behind her exposed, fleshy ass. You plop your [Cock of player] cock right between her cheeks, to which she responds with a half-hearted, almost playful struggle to get away. You grip her by the hips and pull her back in place, hotdogging your dick as you do. 'You won't be getting away that easy,' you tell her, playing along with the game. Then you bring your cock down to rub against her pussy, finding it moistened and lubed, aching to be fucked. 'Feels, like you're more than ready to go for a little ride,' you tease her. She shudders and whinnies at your words, trying to deny your claim, but you know she secretly likes it. She's already starting to press back against you, trying to draw you inside.";
			say "     Not wanting to waste another second after such an invitation, you quickly thrust inside her. Both of you cry aloud in unison as the sensation of your cock piercing her tight sex overtakes you. You hilt yourself in one go, then hold yourself there as she adjusts to your size. You only give her a handful of seconds though, before you begin to thoroughly pound her, sawing rapidly in and out of her sweet pussy. Her eyes glaze over as she revels in being used as your personal fucktoy. You grip her ass firmly as you continue to fuck her, squeezing her malleable flesh and giving a her another slap here and there to remind her of her place. Her tail flicks up and down your chest in rhythm with the rocking of your bodies. Sensing that she's nearing her limit, you give a particularly hard and deep thrust that sends her over the edge. She shouts up into the air as her marehood clamps down tightly around your member and starts to throb as she climaxes. The continuous squeezing and clenching sends you over the edge as well, and you paint her insides with splurt after splurt of cum.";
			say "     You collapse on top of her after orgasming, pinning her below you as you both take a well-deserved rest. When you've both finally calmed down from your orgasmic highs, you pull out of her with a wet slurp, watching as your seed slowly drips down her thighs. With a pat on the rump, you stand back up and redress, leaving her where she is to lie exhausted in the mess.";
		else:
			say "     You spin her around and push her onto all fours on the bed, then slowly walk around behind the fallen horse to admire her read end. The Amazon beauty's well-toned butt is a tantalizing sight, and you can't help but reach out and grope it. She responds with a whinny and neigh of surprise, but she eagerly pushes her ass back into your kneading hands nonetheless. Undressing, you kneel down behind her and begin to peel away her leather chaps, exposing her fleshy ass. You plop your [Cock of player] cock right between her cheeks, to which she responds with a final surge of panic and struggles to get away. You grip her by the hips and pull her back in place, hotdogging your dick as you do. 'Don't pick a fight if you can't handle the consequences,' you tell her. Then you bring your cock down to rub against her pussy, finding it already dripping with arousal. 'Ah, but it feels like you're more than ready to handle it,' you tease her. She shudders and whinnies at your words, trying to deny your claim, but you know she secretly likes it. She's already starting to press back against you, trying to draw you inside.";
			say "     Not wanting to waste another second after such an invitation, you quickly thrust inside her. Both of you cry aloud in unison as the sensation of your cock piercing her tight sex overtakes you. You hilt yourself in one go, then hold yourself there as she adjusts to your size. You only give her a handful of seconds though, before you begin to thoroughly pound her, sawing rapidly in and out of her sweet pussy. Her eyes glaze over as she revels in being used by you. You grip her ass firmly as you continue to fuck her, squeezing her malleable flesh. Her tail flicks up and down your chest in rhythm with the rocking of your bodies. Sensing that she's nearing her limit, you give a particularly hard and deep thrust that sends her over the edge. She shouts up into the air as her marehood clamps down tightly around your member and starts to throb as she climaxes. The continuous squeezing and clenching sends you over the edge as well, and you paint her insides with splurt after splurt of cum.";
			say "     When you've both finally come down from your orgasmic highs, you pull out of her with a wet slurp, watching as your seed slowly drips down her thighs. With a pat on the rump, you stand back up and reequip your gear, leaving her where she is to lie exhausted in the mess.";
	NPCSexAftermath Jana receives "PussyFuck" from Player;

to say JanaBlowjob1:
	say "     A clever idea starts to form in your head as you decide Jana's fate. Reaching over to the wall of toys, you grab a sturdy looking length of rope and command the horse to get down on her knees. She obeys without question, eyeing you up eagerly. Walking around behind the submissive slut, you grab her wrists and pull them down behind her back as close to her ankles as possible. She shouts a little at the rough treatment, but doesn't resist. You tie her wrists together with the rope, using the excess length to secure her ankles as well, almost hogtying her from behind. Once you've finished with your skilled knotwork, you return to the wall of toys, selecting her favorite riding crop from the array of whips on display. Seeing you approaching, she starts to playfully struggle from her bonds, but they hold tightly. You don't think she could escape even if she wanted to.";
	say "     Stepping back in front of her, you bare your throbbing length, letting it hover right before her snout. Her eyes go wide at the sight, and her nostrils flare as she takes in your masculine scent. But the sight almost seems to have paralyzed her. 'I don't feel any sucking,' you say to her before lightly slapping her across one cheek with the riding crop. She flinches at the sudden contact. 'If that doesn't change soon, the next one's gonna be a lot harder.' You raise the crop menacingly, and she shudders in anticipation before diving enthusiastically onto your [Cock of Player] manhood. You gasp as your length is suddenly embraced in the wet warmth of her long snout all the way down to the hilt. 'That's a good girl,' you to say to her. 'For that, you only get a light slap.' You follow through with your words, this time reaching around to whip her furry rump as she continues to suck you off. Her tail shoots up at the sensation, and she moans in pleasure at your treatment.";
	say "     She continues to bob her head up and down your shaft, using her long equine tongue to slicken you up and massage the sensitive underside of your cock. When she does a good job, you reward her with a light slap to the ass or pussy, which clearly gets her off. She moans and coos each time, which in turn sends vibrations and ripples of pleasure up your member. When she slacks off, you increase the strength of your strikes and focus on the less erogenous zones of her body, spurring her to better please you. Despite your cruel treatment, she seems to be getting off either way, truly enjoying your abusive treatment of her body. Eventually, the stimulation of her mouth starts to elicit a familiar tingle from within. Dropping the whip, you instead grab her head with both hands and really begin to fuck her face. You thrust rapidly into her mouth, spittle flying all over her face and your crotch. The complete loss of control as she is used so utterly and helplessly causes her to climax, and she shudders as her pussy throbs without even being touched. You cum yourself, depositing a load of sticky cum straight down her throat with every throb of you penis. You calm down and pull out as the last few spurts empty themselves onto her tongue, which she eagerly swallows down. 'That was great Jana,' you say as you reach down to begin untying her. 'Always a pleasure, babe,' she replies with a content smile on her face.";
	NPCSexAftermath Jana receives "OralCock" from Player;

to say JanaOral1:
	if XP of Jana > 0:
		say "     Requesting that she might give you a treat, you strip out of your clothes and step forward to the equine beauty, who's already begun stripping herself. She kneels before you as you step closer, then reaches around to grab you by the ass and pull your crotch in close to her face. 'Mmm, this is gonna be fun making you moan,' she says, giving your nethers a sniff. Her warm breath washes over your aroused pussy, leaving you even more turned on than you were before. You might be the one being treated to some oral pleasure, but you're at her mercy as she takes control of the situation. Eager to begin pleasing you, her tongue darts out of her long muzzle to begin lapping at your labia. You gasp at the feeling of her long, powerful muscle worming it's way over your most private region, slickening it with her saliva.";
		say "     You're so busy enjoying Jana's oral attention that you fail to notice one of her hands slipping lower to your calf. Before you can react, she's already pulled your leg out from under you, knocking you onto your back. You grunt in surprise as you hit the ground. 'Just doing a little repositioning,' she says smugly as she licks her lips. Then she swings one of her legs up around you, bringing her rear end up towards your face as she nuzzles back into your crotch. She nuzzles again, but doesn't start licking, and you take the hint. Grabbing her taut cheeks, you eagerly dig in and start lapping at her marehood, returning the favor. She moans in pleasure, then returns her attention back to your own pussy as a reward for your good behavior. The two of you continue like this for some time, until you finally feel the familiar tingling of an approaching orgasm. You grip Jana's ass tighter and probe her depths more vigorously as you try to push her over the edge first. Competitive in all she does, she picks up her own pace, making sure to pay attention to your clit as well with her fingers. You aren't able to hold out, and your inner walls clench tight and spasm as you reach your peak. Jana isn't far behind though, and soon your face is coated in her sticky juices as she orgasms shortly after. She may have won your impromptu competition, but you're both left panting after such an exhilarating high. She rolls off you and you stand back up to reorient yourself. As you head off, your horse friend pulls you in for one last goodbye kiss.";
		NPCSexAftermath Player receives "OralPussy" from Jana;
	else:
		say "     You strip out of your clothes and step forward to the equine beauty, who's already begun stripping herself. Before she can finish, you roughly grab her by the mane and shove her face into your crotch, leaving her in a half dressed state. 'Better start licking,' you say to her. She moans at your rough treatment, which only serves to turn you on further as her warm breath washes over your aroused pussy. She has no choice but to follow your command, but it's apparent that she's very aroused at being used so. Eager to begin pleasing you, her tongue darts out of her long muzzle to begin lapping at your labia. You gasp at the feeling of her long, powerful muscle worming it's way over your most private region, slickening it with her saliva.";
		say "     Letting go of her mane, you bring both hands up to her pointy ears, which twitch and flick at your touch before you grasp them firmly, entrapping them as you press her face more firmly into your vagina. For her own part, your Amazon mare seems to be getting more and more into it, and she licks more eagerly as she brings a hand to her own dripping pussy. 'That's a good girl, just like that,' you encourage her on. She grows more bold in her explorations at your behest, sometimes probing deeper into your snatch with her powerful tongue. The long organ feels wonderful as it presses apart the walls of your tunnel, stretching you out quite pleasurably. You're left feeling a little empty when her tongue recedes, until your arousal spikes again when you feel her playing with your clit. Your subby Amazon really knows how to pleasure a woman. Eventually, she brings you to orgasm, and you squirt your femcum all over her face, leaving her fur spattered in a messy sheen. The horsemazon simultaneously reaches her own orgasm as she fingers herself, turned on by being used by you. She collapses down on the floor, and once you've calmed down a bit, you collect your clothes and move on.";
	NPCSexAftermath Jana receives "OralPussy" from Player;

to say JanaPleasure1:
	if XP of Jana > 0:
		say "     Deciding that you want to show the dominant mare a good time, you gently nudge the horse woman down on to the lone bed in the room. Almost surprised at your forwardness, she smiles sweetly and says, 'My my, how eager my little lover is. I suppose I ought to help you take care of these urges...' She lays back fully on the white sheets, pulling you down on top of her. She aggressively makes out with you as she pulls off the last of your clothes, and you return the gesture with enthusiasm, entwining your tongue with hers. When you're both fully nude, she grabs you by the shoulders and pushes down between her legs, bringing you face-to-pussy with her most private region. There's a fiery look of lust in her eyes as she says, 'But I think we need to teach you some manners first. It's rude not to treat a girl every once in a while.' With that, she reaches down and presses your face to her pussy lips. Clearly picking up on what she wants, you begin to gently kiss her and explore her body. She immediately relaxes as she looses herself to the pleasurable sensation.";
		say "     You grow more bold with your explorations and start to probe between her lips with your [bodytype of player] tongue. She gasps at the feeling of your invading muscle, and you smile knowing that you're having an effect on her. Stepping it up a notch, you bring your hand up to her clit and begin rubbing in a circular motion, teasing her. She shivers at the sensation, now completely lost in the sensation as she let's you bring her pleasure. You switch things up on her and bring your tongue to her clit, while your fingers begin probing her pussy. You start to finger fuck her even as you continue your licking until eventually, she's no longer able to handle the simultaneous stimulation. She orgasms, and you eagerly lick up her feminine juices as they leak from her snatch. Almost immediately, she passes out after her powerful climax, and you stand up, satisfied at having brought such pleasure to the dominant woman.";
	else:
		say "     Deciding that you want to show her a good time, you nudge the horse woman down on to the lone bed in the room. Ever eager to please, she obediently follows your lead, lying back on the white sheets and slightly parting her leg, letting her submissive streak show through. Slow and sensual, you remove her clothes with care, shimmying her chaps down her legs to expose her pussy. There's a fiery look of lust in her eyes as she wonders just what you're about to do to her. That look is quickly replaced with one of surprise and pleasure as you position yourself between her legs and bring your lips down to her marehood. You gently kiss her, exploring her body, and she immediately relaxes as she looses herself to the pleasurable sensation.";
		say "     You grow more bold with your explorations and start to probe between her lips with your [bodytype of player] tongue. She gasps at the feeling of your invading muscle, and you smile knowing that you're having an effect on her. Stepping it up a notch, you bring your hand up to her clit and begin rubbing in a circular motion, teasing her. She shivers at the sensation, now completely lost in the sensation as she let's you have your way with her. You switch things up on her and bring your tongue to her clit, while your fingers begin probing her pussy. You start to finger fuck her even as you continue your licking until eventually, she's no longer able to handle the simultaneous stimulation. She orgasms, and you eagerly lick up her feminine juices as they leak from her snatch. Almost immediately, she passes out after her powerful climax, and you stand up to leave her there in a mess of her own juices.";
	NPCSexAftermath Player receives "OralPussy" from Jana;

Section 3 - Events

Table of GameEventIDs (continued)
Object	Name
Encountering Jana	"Encountering Jana"

Encountering Jana is a situation.
ResolveFunction of Encountering Jana is "[ResolveEvent Encountering Jana]".
The level of Encountering Jana is 0.
Sarea of Encountering Jana is "Stable".

when play begins:
	add Encountering Jana to badspots of FemaleList;
	add Encountering Jana to badspots of FurryList;

to say ResolveEvent Encountering Jana:
	say "     You start to wander the hallways of the Stable Hotel, looking for anything of interest, when suddenly, you turn a corner and accidentally run into a tall, athletic horse woman, face planting right between her breasts. 'Oof!' she exclaims as you bounce off her, somewhat embarrassed. 'Who the hell are you?' She scowls at your unexpected appearance. Looking over who it is you just encountered, you see the towering figure of a woman, but with the features of a horse. She possesses a striking, muscled physique, alongside an equine head and hooves, a coat of short brown fur, and a beautiful, flowing mane of deep brown. The striking Amazon of a horse is dressed in a set of leather chaps and a small corset, though how she managed to find one in her size puzzles you, given how much she towers over the average person. In her hands, she's holding a lasso and a riding crop, which she points aggressively at you as you continue to ogle her. 'And didn't your mother teach you any manners?' She seems a bit unhappy.";
	say "     Raising your hands in a friendly gesture of peace, you try to deescalate the situation. She takes a deep breath and calms down, the expression on her face softening. 'I'm sorry,' she says. 'I just wasn't expecting to run into anyone, other than horny horsemen.' Still holding her whip like a weapon, she loosens her grip and stores it back on her belt. You take the opportunity to speak, putting on a friendly smile. 'I'm not here to fight,' you try to calmly explain. 'And I'm not some crazy mutant, like those horsemen,' you say with a chuckle, hoping it's persuasive. It appears you were convincing, as she brings her hands to her hips and takes up a more conversational stance.";
	say "     'Well, you ought to not be wandering the streets like one. Otherwise you might get into trouble with a strong woman like me,' she says a bit jokingly. She strides over to you and holds out her hand in greeting. Seeing as she was so jumpy and eager to start a fight, you're taken by surprise at the sudden shift in the tone of the situation. She seems to have taken you for your word about being friendly. You reach out and shake her hand, finding her grip unsurprisingly strong and firm. 'I'm Jana, by the way,' she lets you know. The two of you exchange names and pleasantries, and after a little while of chatting, you feel like you've gotten to know Jana a bit. 'Well,' she says. 'It's been really nice getting to know you, but I really ought to head off. Now that I know who you are, you won't have to worry about being jumped. Just make sure you don't go wild on me,' she says with a teasing smile. As she turns to depart, she looks over her shoulder and adds, 'I'd love if you came to stop by and visit me sometime. I've got a room in the Mare's Quarters.' Realizing how much time has passed, you wave goodbye and collect yourself before returning to your own explorations.";
	repeat with y running from 1 to number of filled rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		if Name entry is "Horsemazon":
			now area entry is "Nowhere";
			break;
	now HP of Jana is 1;
	change the East exit of Mares Quarters to Janas Bedroom;
	now Encountering Jana is resolved;

Jana ends here.
