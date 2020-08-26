Version 3 of Mogdraz by Gherod begins here.

"Adds Mogdraz and the Hellfire Club to the game."

[Version 1 - File created, Mogdraz and his Hellfire Club at Red Light + a few sub scenes - Gherod]
[Version 2 - Updated Mogdraz with scenes, Toron added to the club roster]
[Version 3 - New Drinks, Abyssal Edge Enchantment, New Talk option to know more about Mogdraz and Araqiel. Toron moved to his own file]

[                  Stats                     ]

[ HP - Backup definition for PC's Dom/sub    ]
[ 10: Mogdraz understands you as Dominant    ]
[ 20: Mogdraz understands you as Submissive  ]
[ 30: Mogdraz perceives you as Versatile     ]

[ Libido                                     ]
[ 1: Talked to him about sex                 ]
[ 2: Had the first "date"                    ]
[ 3: Second "date"                           ]
[ 4: Third "date", possible sex              ]
[ 99: Remain as just friends, no sex         ]

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 1 - Intro
[***********************************************************]
[***********************************************************]
[***********************************************************]

Table of GameEventIDs (continued)
Object	Name
Hellish Introduction	"Hellish Introduction"

Hellish Introduction is a situation.
ResolveFunction of Hellish Introduction is "".
Sarea of Hellish Introduction is "Nowhere".

when play begins:
	add Hellish Introduction to badspots of DemonList;

[ Resolution stages                          ]
[   0: Mogdraz not met                       ]
[   1: Met Mogdraz                           ]
[   2: Mogdraz met Xaedihr                   ]

to say MogdrazIntro:
	WaitLineBreak;
	say "     The next moments are spent swinging around slightly while positioned across his shoulder. It doesn't seem that the demon carried you around for a long distance, but you're unable to perceive your current location. You begin to hear your surroundings closing in, as if you have entered an interior, going downwards by what seems to be stairs, and then there's music playing. Reminds you of a lounge, or some sort of nightclub with easy listening sounds, and some people on the background. But you don't seem to get past the center of the noise, instead it looks like you were brought through another passage into the back of the building. This is just you trying to guess where you are being taken, things could be very different by the time your hood is removed...";
	say "     Then, you are hurled into something soft. Feels like a bed of some sort, and you feel someone, or something... pulling your hood out. Your eyes take time to get used to the light, and only then you can check your surroundings. A bedroom of some sort, painted and decorated in black and red, with all kinds of... Tools and ropes, sex toys... Just what is this place?! And then, someone talks to you, a man very similar to the hellfire demons you encountered, except... Well, slightly different. His beard is longer and fuzzier, and he's overall hairier. Also, compared to the other demons' outfits, this one actually seems to have gotten a leather jockstrap of his size, as well as some crotch revealing leather pants and boots. Being near him makes you feel rather strange at first, though he breaks the silence soon enough.";
	WaitLineBreak;
	say "     'Ah, I now know why you have been brought here. Wearing something like that is ought to attract my demons' attention...' he says, with a rather deep and masculine voice, often heard in middle-aged men... Except this one has a certain demonic tone to it. You hear him out attentively, as he strikes you as friendly, surprisingly. 'Pardon me the eagerness ot my minions, but they are always seeking new additions to our little family here, at the Hellfire Club. We're very discrete, so I doubt you have ever heard of us... Our target audience is very restricted.' With how he says it, it seems this place isn't all that bad, but you can't jump to any conclusions just yet. In the end, you have to ask him who he is, as he doesn't seem to be on the way to tell you that.";
	say "     'Oh, but of course! My manners... I apologize. My name is Mogdraz. You probably kept hearing about me if you ran into my demonic minions often enough. I own this place, and the hellfire demons respond to me.' That explains the whole story about their [']Master['], and although you have many questions to ask, he goes on ahead and asks you a few of his own, first. 'So, before I further introduce you to my humble business, I... Must ask you what are you looking for! [bold type]What is it that you fancy the most?[roman type] Is it the fantasy of owning your very own slave, or perhaps an harem even, as they worship you? Would you rather worship and serve someone else's desires? Or are you simply curious about the entire thing... So much that it had led you to me?' He awaits your answer, as you take it in consideration.";
	if player is dominant:
		WaitLineBreak;
		say "     To answer that question, you tell Mogdraz what you truly desire. 'So you are a Dom... Interesting! I do have a lack of these around here. Everyone just wants to submit and get an easy fuck from my boys! And sometimes even me! But I cannot judge them...' he explains, laughing for a moment.";
		now HP of Mogdraz is 10;
	else if player is submissive:
		WaitLineBreak;
		say "     To answer that question, you let Mogdraz know about your true nature. 'A submissive? What a surprise... Another one looking to get some big demon cock down your throat? Or is it in your ass? Or both, as many as you can take, all at the same time! Hah! You show promise... Maybe you're not actually worthless like the rest of the sluts I get!' he replies, laughing for a moment.";
		now HP of Mogdraz is 20;
	else:
		say "     [link](1)[as]1[end link] - You seek to be adored and worshipped by those around you. One or more, it doesn't matter as long as you are pleased.";
		say "     [link](2)[as]2[end link] - You have the urge to worship and serve another person, or be tossed around, used and abused by the most eager to claim you.";
		say "     [link](3)[as]3[end link] - There's something special about this world of fetishes. You want to learn and explore.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to give a dominant reply, [link]2[end link] to give a submissive reply or [link]3[end link] to give a neutral reply.";
		if calcnumber is 1: [Dom]
			LineBreak;
			say "     To answer that question, you tell Mogdraz what you truly desire. 'So you are a Dom... Interesting! I do have a lack of these around here. Everyone just wants to submit and get an easy fuck from my boys! And sometimes even me! But I cannot judge them...' he explains, laughing for a moment.";
			now HP of Mogdraz is 10;
		else if calcnumber is 2: [Sub]
			LineBreak;
			say "     To answer that question, you let Mogdraz know about your true nature. 'A submissive? What a surprise... Another one looking to get some big demon cock down your throat? Or is it in your ass? Or both, as many as you can take, all at the same time! Hah! You show promise... Maybe you're not actually worthless like the rest of the sluts I get!' he replies, laughing for a moment.";
			now HP of Mogdraz is 20;
		else if calcnumber is 3: [neutral]
			LineBreak;
			say "     To answer that question, you explain to Mogdraz that you have no specific inclination and only desire to explore a bit. 'Curious, aren't you? Oh, but the unknowing minds are the best to unravel. You will be surprised by how fun it can be to indulge in pure pleasure and desire, let your limits cease to be limits and do things you never thought you could! All while enjoying yourself!' he explains, laughing for a moment.";
			now HP of Mogdraz is 30;
	say "     'You see, I do run a business, and there is one thing I am looking for. Two, in fact! Patrons and Escorts! If you fancy demons, you can pay upfront, and I will provide you with a professional one of your choice... Or, if you wish to be on the other side taking your clients, you can do so and I will pay you a percentage of what you get! But I'm afraid you'll have to look like a demon... If your only desire is matching up with other patrons, however, you may do so for free at the lounge! Such a fine deal, is it not?' He accompanies you out of the room and into the lounge he mentioned. 'Anything else you want to discuss, I will be in my usual sofa. I like watching the action happen, and someone has to keep an eye on the clientele, right?'";
	say "     As he finishes explaining things, he proceeds to show the space around. It is a fairly normal nightclub, with a pervert or two around the corner every now and then. Sounds like you could give it a try, now that you know its location in the Red Light District.";
	now resolution of Hellish Introduction is 1;
	move player to Hellfire Club;
	AddNavPoint Hellfire Club;
	connect Hellfire Club;
	WaitLineBreak;
	if companion of player is demonologist:
		say "     Just as you're about to leave, a familiar silhouette shows up by the entrance, walking towards you. Judging from the absence of guards, you come to a pretty obvious conclusion of who it is. Your companion Xaedihr has followed you back here, and he made sure to clear his own way...";
		WaitLineBreak;
		MogdrazXaedihr;

instead of going north from Crimson Street while (resolution of Hellish Introduction is 1 and companion of player is demonologist):
	say "     Just as you're about to make an entrance, your sorcerer friend immediately bends the will of the hellfire demons standing as guards, forcing them to collapse on the ground with powerful magic. 'I knew something was going on here.' You try to stop him, to no avail, as he charges ahead into the club. There is nothing you can do but to follow after him, hoping he doesn't make any further trouble...";
	WaitLineBreak;
	MogdrazXaedihr;

to MogdrazXaedihr:
	say "     'So this is where they take the so called slaves. Thank you for showing me.' he says, as the club goes into an uproar about an intruder having made it through. Mogdraz storms out of his corner with several demons accompanying him towards you both as he shouts 'What is the meaning of this?!' inquisitively. You urge to tell him Xaedihr is your friend and that he means no harm, looking back at the mage with a pleading look to not cause any trouble here. Although you're surprised by the sorcerer's reaction... His eyes widen and he's speechless for a moment, Mogdraz's expression also changing abruptly once they see each other. You have no idea what is going on, but surely this must be something important, so you do not interfere.";
	say "     'Mogdraz?! Is that really you?!' asks the half-demon, taking a step towards the towering hellfire master. 'Xaedihr...! What a surprise, I wasn't expecting to see you...! What are you doing here, didn't you have business back in the...?' Mogdraz doesn't finish the sentence, being instead hushed by the sorcerer's gestures, seemingly asking for silence. 'Not... Here. I... I'd prefer to talk in private.' Xaedihr gestures to you meanwhile 'You can come too. Since I have already dragged you into this...' It looks like they know each other already, which is intriguing, to say the least. Mogdraz signals both of you to follow him into a private room not far deep into the back corridors, taking a turn left into some sort of... Fancy office? Just what in the name of Hell is going on?! Looks like you'll have your answers soon enough, however they both remain silent as the club owner indicates two seats, for you and Xaedihr, and takes his own on a grand velvet red chair on the other side of the desk.";
	WaitLineBreak;
	say "     Finally, the silence is broken. Xaedihr speaks first. 'So... Mogdraz was...' - he pauses, his words coming difficult - '... My father's personal assistant. He... He's the reason I managed to cross over from my realm to yours.' You don't quite know what that means, but it is surely an indication that Mogdraz is more than what he seems. The hellfire master explains himself shortly after. 'Yeah, well... Master Viel was a bit of a nutjob. I couldn't stand him. Then I discovered his son was plotting against him, and had to take a side. I chose Xaed's, and sent him to this realm to start anew. To save him from the horrid life he would have under that maniac's influence.' He turns to the sorcerer afterwards. 'But I wouldn't know he'd be HERE, in the middle of the nanites' outbreak! And with a crimson ruby, no less!' he adds, making a rather inquisitive tone as his piercing fiery gaze is fixated on Xaedihr. 'You know I had to try! There's no way I could just let him win... Not like this. One day I will make justice. I will stop that fiend.'";
	say "     Xaedihr's voice shows anger and revolt for the man who put him in the universe, and you see him clenching his fists. 'I will make sure he's turned into nothing but ash.' Mogdraz leans back on his chair, tilting his head while looking at the sorcerer with an intrigued look. 'Well, it seems like you're finding it a bit difficult to just move on, huh... I guess all I can do is offer my help, if you need. Although I don't intend to return to that doomed place, I can send scouts and provide information, if that helps. The calm life I lead here is everything I could ask for.' Facing Mogdraz's generosity, Xaedihr nods politely. 'Thank you. That would mean a lot to me. Though... Please stop trying to enslave people...' Mogdraz quickly rushes to defend himself 'It's not enslavement if they consent! Besides... I do have a sane talk with them first! Whatever comes after, it's on them!' Xaedihr responds with a sigh, rolling his eyes 'I suppose. Only the weak-willed fully submit, either way. Just as long as you don't force them.'";
	WaitLineBreak;
	say "     Mogdraz chuckles, getting up from his chair and talking as he walks over to the door. 'Even the most strong-willed crave for someone in charge, sometimes. To let go for once and feel someone taking control... Sometimes, they need that. I simply provide what the heart truly desires. But I don't keep their souls, so they're free to go anytime...! They simply choose not to.' Both you and Xaedihr follow him to the exit. The sorcerer makes a polite bow as the club master responds in the same manner, a formal greeting between good friends in nobility, perhaps. 'I shall send you what I learn, Xaed. Just be careful and don't do anything you would regret. Oh, and... Good to see you.' says Mogdraz, as you and Xaedihr take your leave, the dark mage showing signs of joy and hope in his face.";
	say "     The half-demon now turns to you with a sincere smile. 'Thank you, friend. If it wasn't for you I would have never re-encountered the only demon I owe my life to.' Indeed, this is something you don't see everyday, given Xaedihr's innate hate for the hellspawn. And Mogdraz seems to be capable of dimension traveling, surprisingly. There is a lot you still don't know about that demon... Maybe you can know more by talking to him the next time you find yourself at the Hellfire Club.";
	now resolution of Hellish Introduction is 2;

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 2 - Mogdraz NPC
[***********************************************************]
[***********************************************************]
[***********************************************************]

Table of GameCharacterIDs (continued)
object	name
Mogdraz	"Mogdraz"

Mogdraz is a man. Mogdraz is in Hellfire Lounge.
ScaleValue of Mogdraz is 4. [DB sized]
Body Weight of Mogdraz is 5. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Mogdraz is 9. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Mogdraz is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Mogdraz is 9. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Mogdraz is 3.  [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Mogdraz is 8. [length in inches]
Breast Size of Mogdraz is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Mogdraz is 2. [count of nipples]
Asshole Depth of Mogdraz is 15. [inches deep for anal fucking]
Asshole Tightness of Mogdraz is 3. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Mogdraz is 1. [number of cocks]
Cock Girth of Mogdraz is 4. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Mogdraz is 18. [length in inches]
Ball Count of Mogdraz is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Mogdraz is 4. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Mogdraz is 0. [number of cunts]
Cunt Depth of Mogdraz is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Mogdraz is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Mogdraz is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Mogdraz is false.
PlayerRomanced of Mogdraz is false.
PlayerFriended of Mogdraz is false.
PlayerControlled of Mogdraz is false.
PlayerFucked of Mogdraz is false.
OralVirgin of Mogdraz is false.
Virgin of Mogdraz is true.
AnalVirgin of Mogdraz is false.
PenileVirgin of Mogdraz is false.
SexuallyExperienced of Mogdraz is true.
TwistedCapacity of Mogdraz is true. [Twisted Characters can take any penetration, no matter the size]
Sterile of Mogdraz is true. [steriles can't knock people up]
MainInfection of Mogdraz is "Hellfire Demon".
Description of Mogdraz is "[Mogdrazdesc]".
Conversation of Mogdraz is { "<This is nothing but a placeholder!>" }.
The scent of Mogdraz is "     Mogdraz smells faintly of brimstone, but he has a rather attractively masculine scent. Being near him makes you feel more [if player is submissive]submissive, your knees weakening in his presence[else if player is dominant]dominant, empowered by his mighty presence[else if player is kinky]kinky, your mind contemplating all the possibilities[else]prone to sexual debauchery[end if]".

to say MogdrazDesc:
	say "     Wearing a naughty grin in his face, the owner of the Hellfire Club is the higher breed of the Hellfires, slightly larger and muscular than the rest. Crimson skinned, bigger horns, fuzzier beard and even sporting a hairier chest, Mogdraz leads the entire horde of hellfire demons roaming around Red Light District, while managing a fetish business of his own. He's wearing a leather set, complete with a spiky harness adorning his jacked torso, a leather jockstrap suitable for his enormous size, a pair of crotch revealing leather pants and black boots that would make anyone tremble in his presence due to the tough and rough vibe they emanate. Contrarily to what one would think at first sight, however, Mogdraz is actually pretty friendly, giving you a pat on the back everytime you come talk to him.";

[***********************************************************]
Section 3 - Mogdraz Talk Menu
[***********************************************************]

instead of conversing Mogdraz:
	say "     As you approach the almighty Mogdraz, he gives you a toothy grin. 'Came to have a chat with me? Or to procure one of my many services? Don't be shy, tell me all about it!'";
	say "[MogdrazTalkMenu]";

to say MogdrazTalkMenu:
	say "     [bold type]What do you want to talk to Mogdraz about?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Himself";
	now sortorder entry is 1;
	now description entry is "Ask Mogdraz to tell you more about himself";
	[]
	choose a blank row in table of fucking options;
	now title entry is "His... slaves?";
	now sortorder entry is 2;
	now description entry is "Inquire him about the slave thing";
	[]
	choose a blank row in table of fucking options;
	now title entry is "His business";
	now sortorder entry is 3;
	now description entry is "Question about the club he manages";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Sex with his patrons";
	now sortorder entry is 4;
	now description entry is "Try your luck with Mogdraz through subtlety";
	[]
	if libido of Mogdraz > 1:
		choose a blank row in table of fucking options;
		now title entry is "Talk about your sexual preferences";
		now sortorder entry is 5;
		now description entry is "Let Mogdraz know of any developments regarding your sexuality";
	[]
	if resolution of Hellish Introduction > 1:
		choose a blank row in table of fucking options;
		now title entry is "His situation with Xaedihr";
		now sortorder entry is 6;
		now description entry is "Ask more about their relationship";
	[]
	if HP of Araqiel is 3 and Resolution of Ambush The Purifier is 5:
		choose a blank row in table of fucking options;
		now title entry is "Ask about the Purifier";
		now sortorder entry is 99;
		now description entry is "Try to know more about their most recent capture";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
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
				if (nam is "Himself"):
					say "[MogdrazTalkHimself]";
				if (nam is "His... slaves?"):
					say "[MogdrazTalkSlaves]";
				if (nam is "His business"):
					say "[MogdrazTalkBusiness]";
				if (nam is "Sex with his patrons"):
					say "[MogdrazTalkSex]";
				if (nam is "Talk about your sexual preferences"):
					say "[MogdrazTalkSexPref]";
				if (nam is "His situation with Xaedihr"):
					say "[MogdrazTalkXaedihr]";
				if (nam is "Ask about the Purifier"):
					say "[MogdrazTalkPurifier]"; [in Araqiel file]
				wait for any key;
				say "[MogdrazTalkMenu]"; [looping back to keep talking with him]
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You give Mogdraz a polite bow as you make your leave, which he retributes.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say MogdrazTalkHimself:
	say "     Intrigued by the big red demon, you try to ask him to tell things about himself. 'Me? Where does that interest arise from?! Do you intend to date me?' he chuckles with a friendly, albeit still intimidating, smile. 'I jest! But of course I can tell you more. Though not much more, as I don't have a whole lot to tell. I am merely the owner of a business, trying to lead a calm and interesting life. Surely you cannot judge a demon for doing what his heart truly desires, can you?' His answer is brief, and he doesn't let you know much more. Perhaps another time, when he feels more open to the idea of talking about his past, maybe? You doubt a demon this powerful has nothing else to tell!";

to say MogdrazTalkSlaves:
	say "     Having heard of this slave thing, you inquire Mogdraz about what these minions of his keep saying. 'Oh, leave them be. They wish to acquire slaves for me! Although it's just advertisement. You can just mention sex and slavery together around here and a million sex-crazed bitches show up. I do keep a handful of toughies to deal with the especially poor and ugly ones. Can't let just anyone touch my pristine demon servants, no no!' Seems he's using this as a form of publicity. Although you do make a point about his business being too out of view, and that ending up hindering his attempts at advertising. 'All intentional. I don't want too many knowing about my place! This is why my minions do the selection. Although some pesky rodents and filthy degenerates do stumble across my building, this system has been working fine so far.' That sums it up for the question you asked, so you thank him for clarifying this matter.";

to say MogdrazTalkBusiness:
	say "     He already told you what his business is about, but you'd like to know more. Questioning him, he's glad to let you know. 'As you must already know, this is a brothel as much as it is a club. I have my demonic contacts, and as such, we have quite the attraction. As for the others who just want to meet and fuck with ones of shared interests, there is the club part! A lounge with a bar to drink and chill, while you get to know your sex date. Always wanted to own a place like this!' He replies, all while smiling with those sharp teeth of his. 'Do take a look around and enjoy the space. Anything that troubles you, come directly to me. I will solve all, or most, of your problems, one way or another.' You thank him for the words.";

to say MogdrazTalkSex:
	say "     Of course, you can't just pretend Mogdraz isn't an extraordinarily handsome devil. His bulging muscles, the sheer size and strength of probably the biggest demon you have ever seen, and not to mention the massive bump in his jockstrap, it does make your mind wonder. Politely, you throw in the question about him having sex with his patrons, but he immediately understands your intentions. 'Fancy me, do you not?' He grins at you, spreading his legs slightly to further show off his eye-catching bulge. '[']Tis rather flattering that you think so. You're quite the sights, yourself!' He chuckles, leaning forward while still sitting on his red velvet sofa. 'Maybe I can give you a private session in my personal bedroom... Who knows? But you have to earn it. Unlike the other demons, I do like to be properly courted.' Now that is a surprise, but he's not joking about it either. It seems you have to win your way into his heart... Or his bed.";
	if Libido of Mogdraz is 0:
		now Libido of Mogdraz is 1;

to say MogdrazTalkSexPref:
	say "     Deciding to update Mogdraz on your sexual preferences, you give him a brainstorm about those same things, going over your roles and kinks while you're at it...";
	if player is submissive:
		say "     After the explanation you gave him, Mogdraz nods and understands your words. Seeing that you've got the submissive trait, he makes a comment. 'So you ended up getting all subby, huh? That's cute. Just don't go on submitting to every piece of trash you see walking around and keep yourself safe, will you? Or I'll have to keep you here at the club, all tied up and away from those bad guys.' It's cute to see Mogdraz worry about you, but his idea doesn't sound all that bad...";
		now HP of Mogdraz is 20;
	if player is dominant:
		say "     After the explanation you gave him, Mogdraz nods and understands your words. Seeing that you've got the dominant trait, he makes a comment. 'So you ended with a dominant strain running through your veins, huh? Can't help yourself when you see some begging eyes, bitches drooling over your physique, wanting some of your attention, craving to become your slaves? I feel you... Sometimes it's hard to resist. Though don't go on a rampage for slave hunting, alright? I mean... My minions don't count, okay? They're just too naive and innocent... Uh, innocent isn't the right word. Well, fuck that, you get what I'm saying!' It's rather cute to see Mogdraz worry about you, but it actually doesn't sound as bad, does it?";
		now HP of Mogdraz is 10;
	else:
		say "     After the explanation you gave him, Mogdraz nods and understands your words. 'Still exploring, heh? Sometimes not taking either side of the dominant and submissive part is the best way to go for maximum enjoyment. I wish I could submit sometimes, but I just don't like it that much unless it's with someone I trust and who actually deserves that. That person never arrived, and honestly I do enjoy dominating others better. With their consent, always!' he explains, giving a personal example to enrich your discussion. 'Hope you have fun trying new stuff, but be careful out there! There are all types of people who'd use your curiosity in wicked ways...' he adds before you're ready to move on to another subject.";
		now HP of Mogdraz is 30;

to say MogdrazTalkXaedihr:
	say "     You further question Mogdraz about his relationship with Xaedihr. He shrugs, but replies... 'Yeah, I guess you have a few questions... Uh, totally wasn't expecting to see ol' Xaed here. He changed a lot, that's for sure.' He makes a pause, and continues speaking before you have to inquire further. 'Back on the days I was but a humble servant, and as all servants from high places, we know how to relocate ourselves instantly through large distances... Teleportation, dimension traveling...' That makes sense now... But there is still something left to explain, which he does in a bit. 'We are not just minions. My kind was created to serve an ultimate purpose. My minions, however, are... A minor offspring of the true Hellfire. They are intelligent enough, but as you can see, they are very sex-obsessed.' With a nod, you thank Mogdraz for the explanation.";

[***********************************************************]
Section 4 - Mogdraz Sex Menu
[***********************************************************]

Instead of fucking Mogdraz:
	say "[SexWithMogdraz]";

to say SexWithMogdraz:
	if (lastfuck of Mogdraz - turns < 7) and libido of Mogdraz < 4:
		say "     Mogdraz lets out a smile towards your request. 'Ah, I know you might be longing for our next time together, but I have a few things to take care of in here... Mind if you ask again later? I promise I'll compensate.' he says in response.";
	else if (lastfuck of Mogdraz - turns < 7) and libido of Mogdraz > 3 and libido of Mogdraz < 99:
		say "     Mogdraz's eyebrows raise in a widened gaze as a sign of perplexity as you're about to ask him for some sex. 'Keep that up and I'll have to think about setting you down as a club's slave! Sadly I'm done for today, and I have to keep watch. Maybe another time?' he says in response, adding a wink and a teasing smirk at the end.";
	else if libido of Mogdraz is 0:
		say "     You're going to offer yourself straight away to the big Master? Why don't you ask him about that first? After all, he's not a typical hellfire demon...";
	else if libido of Mogdraz > 0 and libido of Mogdraz < 4:
		say "[MogdrazDate]";
	else if libido of Mogdraz > 3 and libido of Mogdraz < 99:
		say "     You remember your last encounter with Mogdraz the other day being really hot, and his invitation was rather suggestive. Perhaps you could get in some fun with the big demon boss? Making the proposal to him directly, he shows you a welcoming smile while spreading his legs just a little, right in front of you, his bulge even further exposed before your eyes. 'How generous of you to think of me! Ahh, how could I say no to that cute face?' he replies charmingly, and you can swear he's already getting a boner from the anticipation alone.";
		say "[MogdrazSexMenu]";
	else if libido of Mogdraz is 99:
		say "     Given what you said to him the last time you were together, it would be very inappropriate to attempt to engage in a sexual encounter with Mogdraz. You decided to stay as friends, and so that shall be the case. Nonetheless, he's always happy to see and talk to you.";

to say MogdrazDate:
	say "     With the intention of getting down with the big Master still present in your mind, you make an advance towards it by asking him if he has any plans for tonight. He tilts his head and looks at you in some surprise, but at the same time he makes his bulging crotch evident in your angle of view. 'My plans are to watch over my people, making sure nothing goes astray... But I suppose you have a better suggestion regarding how I should spend my time?' he ironically asks you, albeit the grin on his face is rather suggesting that he's just on about teasing you. Taking your previous conversation into account, you think if this would be a good time to [bold type]invite Mogdraz for a walk[roman type]... You know, to get to know each other a little better?";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Invite him out.";
	say "     ([link]N[as]n[end link]) - Better not, for now.";
	if player consents:
		if Libido of Mogdraz is 1:
			Linebreak;
			say "     Few are the ones whom you still have to ask out nowadays, and you have to admit to yourself you kind of lost your way with words, but eventually you manage to forward the invitation. He doesn't answer for a good while, his perplexed expression lingering for a moment, then he throws a laughter. '[']Tis rather flattering! I would never guess you'd actually follow my words like that! My, what a good surprise you are...' You can't help but feel a little embarassed as the big devil's response reaches your ears, and no less nervous. 'Well, since you had the decency to ask first, I'll go with you. Just keep in mind I can't stay outside for long.' After all, he was quite nice in accepting your invitation! This said, Mogdraz raises from his sofa and accompanies you outside.";
			WaitLineBreak;
			say "     With this area of Red Light District being as hidden as it is, you find nothing and nobody along your path, leaving you to be able to talk in plain peace. During your time, Mogdraz tells you a little more about himself. 'Most people tend to think of demons as inherently evil and sex-crazed beasts, or worse. It's not like that, some of us who are not under the influence of Hell are quite the typical average person. We feel things, just like any other living being with half a brain, I guess.' After a while, you're both leaning against a wall, with a view facing one of the most populated streets of Red Light District, where you actually can see some depravity going on right under your nose. Specifically, a succubus getting dirty with a group of gel creatures in what seems to be a messy orgy. 'Ugh, that's why I'm very selective with my succubi. You never know what kinds of things they've been doing...'";
			say "     But there comes a time when the red devil says it has to end for now. 'As much as it pains me to drop out of this great moment, I'm afraid we'll have to call it a day. I don't feel good in leaving my club for long... Hope you understand!' He says as he approaches you, and you nod at him. '[']Tis been a good while since someone came to me as you did. I like it when people take an interest on my inner side, as well! Feels so rare... Someone actually not wanting to have sex right off the bat, y'know?' He keeps commenting about this and that throughout your walk back to the club, and you two share a little nice conversation in the meantime...";
			now libido of Mogdraz is 2;
			now lastfuck of Mogdraz is turns;
		else if libido of Mogdraz is 2:
			Linebreak;
			say "     For the second time you're hanging out, it becomes easier to invite him out. He grins at your proposal - seriously, he always looks like he's plotting something with that snark of his - and you both walk out of the club without any actual verbal response coming from him, only a slight push on your back as he guides you to the exit. 'Thanks, I was needing some fresh air. Even better when it's with good company such as yours.' he adds, only when you're away from anyone's ears at the club. The red devil takes you to a different spot of the Red Light District this time, and it isn't as quiet and peaceful as the last time...";
			WaitLineBreak;
			say "     'Here, I want to show you something.' he tells you, as you both make your way down one of the roads. In normal circumstances, any of these creatures would attack you immediately, but in the presence of the almighty Mogdraz, they all cower and don't dare to approach any of you. 'This is something that you should know... As you probably have noticed already on my minions, we share a certain aura. Mine is rather unique, and it can have certain effects on different people. I hope that doesn't push you back, by any means!' he explains, expressing some worry regarding what you feel about that. 'Though certainly, as you keep coming back to me without any immediate urge, I can be assured it has nothing to do with this... That puts me at ease.'";
			say "     So this is the explanation Mogdraz gives you to want to date someone before getting dirty with them. Perhaps it's a way to filter those who are just affected by his demonic aura from the ones with genuine desire for him? Nonetheless, you two share a good moment together. Mogdraz has actually a quite good sense of humor, telling you a few jokes and keeping you entertained throughout the stroll. This drags on for a while until it's time to call it a day. 'T'was a great time, as always. Looking forward to our next meeting, friend.' He gives you a pat on the back as you both make your way inside the club, Mogdraz returning to his usual spot. This seems to be going well, and now that he has revealed his reasons, maybe next time things can go a little differently... who knows?";
			now libido of Mogdraz is 3;
			now lastfuck of Mogdraz is turns;
		else if Libido of Mogdraz is 3:
			Linebreak;
			say "     Once more, you invite Mogdraz for a stroll around the vicinity, given the possibility of him not being busy right now. 'Yeah, sure! Let's head out, I could use the time...' With that said, he stands up and accompanies you to the exit of the club, making a turn towards the most quiet streets...";
			say "     Stopping at a completely empty one, where nobody is even lurking around, you both share a nice conversation for a good while. 'I have to say you were a nice surprise. Maybe one of the best my boys ever brought to me.' he tells you, his bright yellow eyes looking directly at you in the most sincere gaze. 'You know, I've been thinking about that question you first asked me, and well, given the fact my doubts were erased, I...' he doesn't finish the sentence, instead walking towards you... 'Y'know...' There's a wall behind you, and he doesn't seem to be stopping. His enormous frame overshadows you as he's close to pin you against the building's robust surface. By now, you can smell his scent, oddly arousing and masculine, as things around you heat up quite a lot all of the sudden. It's not long before you can feel his sizable bulge rubbing against [if scalevalue of player > 3]yours[else if scalevalue of player is 3]your midriff[else]you[end if], alarmingly huge in size and pulsing slightly. In a weird mixture of confusion and lust, you turn your face to him and ask what is going on.";
			WaitLineBreak;
			if player is submissive or HP of Mogdraz is 20:
				say "     'Realizing what you're into actually makes me interested in experimenting with you... Someone I don't have to use any kind of power to bend their will. Knowing you genuinely like me is a very good score towards gaining my affection, and I just want to show you that";
			else if player is dominant or HP of Mogdraz is 10:
				say "     'I know you prefer to dominate, and often top... But I'm a big guy with big needs, and you turn me on for your uniqueness... Say, would you like to make me happy, even as a Dom? Besides that, knowing you genuinely like me is a very good score towards gaining my affection, and I just want to show you that";
			else:
				say "     'You're curious about the fantasy of either being dominated or submitting to someone, but you're also intrigued about me, are you not? Well... Knowing you genuinely like me is a very good score towards gaining my affection, and I just want to show you that";
			say "...' His advances leave you with a decision to make. [bold type]Do you want to let this happen, or would you rather keep Mogdraz as your friend only[roman type], refusing any sex with him from now on? [if player is dominant]Note that Mogdraz is a fairly dominant individual...[end if][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - This is all you've been wanting ever since!";
			say "     ([link]N[as]n[end link]) - Let's just be friends.";
			if player consents:
				Linebreak;
				MogdrazFirstSex;
			else:
				Linebreak;
				say "     You put your hands forward, not to touch his body, but to push him away gently, turning your face over. He takes the hint, and pulls back, rather embarassed. 'Yeah, uh... sorry. I'm not good at this either. It was inconsiderate of me to assume you'd want a fuck right now...' he says, the air around you cooling down and shifting to a most awkward atmosphere. Despite this, you try telling him you'd be willing to become his friend, and keep things clear like that. 'Yeah, sure... I'd be more than happy to keep you as a friend. And you're welcome to visit my place anytime!' he says, with a sincere smile. With this out of the way, you're both free to return to the club. Things slowly come back to normal before you have to follow separate ways, and you're glad he understood your request.";
				now libido of Mogdraz is 99; [no sex with Mogdraz]
	else:
		LineBreak;
		say "     Maybe you should take it as a hint to step back for now. Mogdraz doesn't seem to be the kind of guy you'd want to mess things up with. You excuse yourself politely, and he eyes you as you go.";

to MogdrazFirstSex:
	say "     Your face is flushed, his massive hand stroking your cheek as you feel his impressive musculature pressed against you, the demonic dong still held inside his jockstrap threatening to tear the thing apart. His eyes stop on yours, fixated in your own gaze as [if player is naked]he feels up the rest of your body with his warm touch[else]he begins to take off your clothes, one by one, his warm touch making you shiver[end if]. When your fully exposed body gets in close contact with his, you can't help but feel an intense wave of lust overcome you, a much more powerful effect than those you can find on any normal hellfire demon... Your arousal builds up, [if player is male]cock rising to attention, [else if player is female]your sex moistening, [end if]body temperature increasing slightly, your skin becoming more sensitive...";
	say "     Standing in some dark alley of Red Light District makes this a lot more interesting, especially when such a powerful individual is with you, but you'd never guess an eventual date with him could end in such a steamy [']private session[']. As distracted as you are, you barely notice Mogdraz removing his jockstrap completely, only realizing that when you feel his scorching hot crimson rod throbbing against you, the thing being so big you wonder how he carries it around with such ease! 'I suppose I'm a grower, and bigger than the others... But that won't be a problem, right?' He licks his lips while rubbing down your head with his meaty hand, and by then, you feel a soft push on the back of your neck suggesting you to get closer to his massive dick. The devil speaks again, with a warm tone, pausing his gesture... 'Would it be asking too much to get a blowjob from you?' His toothy grin and pulsing dong is all you need to know how badly he wants it.";
	WaitLineBreak;
	say "     Surrendered to his charm, you let yourself sink low enough to take a hold of his monstrous shaft, dribbling precum as soon as it feels your touch. Such wonderful piece of meat makes you rapidly take it to meet your lips, and soon you're gobbling up on the by now rock hard demonic cock, causing Mogdraz to smile and encourage you to continue. 'You're making me leak so much... Hope you don't get an overfill.' he comments, as there are copious amounts of pre coating your lips and mouth by now, forcing you to swallow some of the stuff before you get back to work around his glans and shaft. Your hands stroke what your mouth can't reach, sending the big devil a shiver of pleasure down his spine as he leans his head back and lets out a soft moan.";
	say "     'Fuck... That feels good...' he comes at a loss of words observing you worshipping his sizable dick, working around every bit and corner of the long and thick piece of crimson meat, and it just won't stop leaking... You get a hold of his massive pair of testes hanging just below his cock, and you can almost feel the cum sloshing inside them, as full as they seem. This gesture also causes him to leak even more, enough to look like an average load of a normal human. 'Damn, those are sensitive...! You'll make me cum really quick if you...' He lets out another moan instead of finishing his sentence feeling your hand groping on his balls as you work on his monstrous demon cock. Is it just you or his entire manhood seems to have grown a tad little more, too? You must have made him seriously horny...";
	WaitLineBreak;
	say "     As you feel the large demon jerking his hips just slightly, often trying to back down his urge to thrust, you take a guess that he must be really close... He doesn't say anything, his eyes are closed as he fully enjoys your treatment, but you know he won't endure it much longer. With about a few more minutes of stroking and sucking, you increase the pace, playing with his balls at the same time, which throws him into a lust frenzy. You hear - and feel him - punching the wall, grunting in aroused pain, gritting his teeth as his breathing gets deeper and more intense. 'That's gonna be a huge one, fuckin' Hell...!' As he seems to give in more and more to the idea of just letting go of his load, you don't dare to stop and give him blue balls as he rapidly approaches his climax.";
	say "     Then, just like that, he lets out one final grunt of pleasure, as an enormous spurt of cum hits you right on the face, and more follow to cover the rest of it, as well as your neck, shoulders and chest, running down your entire body, covering part of the wall around you, and he just keeps on shooting seemingly endlessly... You could nearly drown on the stuff if he didn't remember to push down his own dick and let himself finish off below your neck, his almost scorching hot load giving you a steamy bath of demonic cum. Must take him at least a minute to stop cumming! He pants, looking down on you, squeezing the last drops of jizz onto you, then throwing a chuckle at your drenched state. 'That must have been really messy if we did this back at my bedroom... Against this wall, we're merely doing the district a service.' he comments, helping you clean some of his ridiculous load off your face with his hand, although most of it just ends up spread through your skin.";
	WaitLineBreak;
	say "     'Yeah, uh... you might need to wait until that dries up or something... Can keep you company if you want.' he proposes, and you gladly accept his offer, not really having any other option. In the meantime, you get to enjoy the sweet smell it gives, and the somewhat... addictive taste. You try not to get too much of it in your mouth, demonic stuff can be rather clingy to deal with in the aftermath. While you wait, Mogdraz cuddles up with you in an affectionate moment... Who would say a demon could be this nice and gentle?";
	say "     'Twas a great time, I have to say... Anytime you wanna have another go, feel free to hit me up. Maybe we can try my suite at the club the next time we wanna get dirty with each other... Maybe we can use my personal jacuzzi to avoid this mess, though not going to lie... I like seeing my partners covered with my cum.' he adds, smirking, before you're ready to get up and walk back to the club. He gives you a pat on the butt with a naughty grin as he walks towards his usual corner, saying goodbye with a wink. He's such a tease...";
	NPCSexAftermath Player receives "OralCock" from Mogdraz;
	now libido of Mogdraz is 4;
	now lastfuck of Mogdraz is turns;

to say MogdrazSexMenu:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Give him a handjob";
	now sortorder entry is 1;
	now description entry is "Get your hands on his meaty prick";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Offer him a blowjob";
	now sortorder entry is 1;
	now description entry is "Wrap your lips around his huge cock";
	[]
	if player is male and player is not submissive:
		choose a blank row in table of fucking options;
		now title entry is "Propose the mutual use of one of his slaves";
		now sortorder entry is 1;
		now description entry is "Have him fetch a sex slave for your enjoyment together";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
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
				if (nam is "Give him a handjob"):
					say "[MogdrazHandjob]";
				if (nam is "Offer him a blowjob"):
					say "[MogdrazBlowjob]";
				if (nam is "Propose the mutual use of one of his slaves"):
					say "[MogdrazSexSlaves]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You politely excuse yourself as Mogdraz gives you an understanding smile.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say MogdrazHandjob:
	say "     It's slightly hard to speak when such a powerful and good looking man like Mogdraz is the one you want to bang, especially when he's looking at you, patiently awaiting your words. But you manage to tell him that you'd like to please him, in some way. Perhaps using your hands. 'Hands, you say? I do have something that could use some tugging...' he says, but before you have time to think that he's talking about his dick - which could be true, nonetheless - he pulls you gently and lets you sit by his right side on the velvet red sofa. Then, you feel his powerful arm embracing you as he reaches over for a kiss. Quite unexpectedly so, you barely have time to process that a big demon guy is making out with you right here, out in the open for everyone to see, the entire scene making your heart beat at an incredible rate.";
	say "     He pulls his lips from yours for a while, taking a moment to stroke your cheek, bringing his hand to your face from around your shoulder. His muscular leg is bumping against yours, and [if scalevalue of player < 4]as there is a considerable size difference between you and him, you feel completely overtaken by the large devil's heat against your skin[else]you feel his heat against your body[end if], a sign of desire and arousal pulsing through him as much as an obvious erection is forming underneath his dark jockstrap. Taking you for another kiss, your tongues mingle together for brief moments before he lets you take a breath, whispering in a deep and velvety tone 'You can touch me... Don't be shy.' With this said, he actually encourages you by bringing your hand over to his hairy pecs, adorned by a black leather harness, from where you can start moving your touch lower...";
	WaitLineBreak;
	say "     You catch Mogdraz breathing deeply as your fingers follow the trail from between his rippling abs to just above the jockstrap's band. 'Might as well take these off...' he says, sliding down the piece of underwear as his monstrous cock is slowly released from underneath its confinements. The fine piece of meat is still hardening before your eyes, getting bigger and thicker by the second. He looks down at you, caressing your ear affectionately, and asks you 'Get a good grip around it... And stroke it for me, will you?' You can't help but feel aroused at this point, looking at his member that is by now fully engorged and ready for action, with your fingers at just a mere few inches from touching. With his request given, you move your hand over his shaft, then wrap your fingers around it, ripping a soft moan out from the sexy devil's mouth. 'Mmh... Fuck... That feels really good...'";
	say "     He's one who likes to watch, shifting his gaze between your eyes and your hand, observing you working his proud manhood by jerking it up and down, slowly and almost teasingly, providing him with the occasional thumb running by his humid glans, a very sensitive spot that always manages to make him exhale with lust. 'You're a little tease, aren't you...? That's alright... I like it when you take your time...' While he continues to rub the back of his hand across your cheek and the same side of your head and neck, you're rubbing his cock instead, and figure it's probably for the best if you feel up his great sized balls, too. Sliding your index finger underneath his entire sack, you bring the rest of your palm to cup one of his gonads, which is already enough to fill a hand. They're so plump that you can imagine he's holding a massive load...";
	WaitLineBreak;
	say "     'I love having my balls played with... Glad you didn't forget them.' Surely playing with his is fun, as huge as they are, and squeezing them gently a little all over makes him want to close his eyes and focus on the sensation alone. His dick throbs really hard as you're doing this, unable to hide the great pleasure he is experiencing from your caressing. Though enough is enough, and soon your hand is back to his throbbing rod, stroking it with ample movements. With such a considerable length, you actually have to work with your arm much more than with an average dick if you want to fully please Mogdraz with a well-made handjob. Eventually, you want to be using both hands - as there is plenty of dick for that - so the big demon leans back and lets you work. Eyeing you with interest, he compliments your dedication. 'As devoted to the task as you are... Mmh... Might have to consider a full-time job... just so you can keep pleasing me like this...'";
	say "     His sweet words are tempting to drag into reality, but you don't let them bring your focus down. Instead, you're giving his entire manhood enough rubbing and friction to keep pulsing with desire, and precum lubricating the tip and leaking down to his shaft. The stuff ends up in your fingers, though all the better to help your hands slide up and down easier. He's breathing deeper and at a faster rate, patting your head in the meanwhile, making you think for a second that he's pushing it towards his dick, but he's respectful about it. He simply rubs the back of your head as a sign if affection, observing your movements and smiling at you, though not without biting his lower lip. Excited and as horny as you've got him, you stop your hands for a tad bit, only to see him jerking his hips to continue to feel that sweet pleasure. 'Damn... You're getting me...'";
	WaitLineBreak;
	say "     He really means that you're starting to make him, the big demon boss, want to beg for more. With this much teasing from your side, and his load building up at an alarming rate inside his balls - you even think they have grown a bit during this time - he has grown desperate for a release. Perhaps you should think about giving it to him, and there's not a better way than sliding one of your hands back to his balls as the other keeps stroking the enormous cock. 'Yess... Oh, that will make me cum, for sure... Fuck...' he moans, his breathing intensifying as you, too, pick up the pace and start stroking him faster. With the combined efforts of both your hands, Mogdraz is soon brought to the edge as he warns 'I'm close...!' You fully commit to your actions, making sure you never stop until he's shooting.";
	say "     With a couple more strokings, the red devil reaches his climax, and a thick, powerful stream of cum is basically launched from his cock to cover his chest and abs completely, each spurt thicker than the last until half of his orgasm, only beginning to subside after several moments. He's cumming for basically a full minute, coating his muscular body and your hands in his creamy hot seed. His balls surely are competent cum factories, to be able to put out so much each time he comes. 'Hell... this was phenomenal... You're good with your hands! Better than most... I wish I could keep you.' he says, stroking your chin and planting a kiss on your lips. 'Right, I've got to ask Tor'on to clean this up. I'm sure anyone eager enough would lick all this cum off, but he has a way with cleaning that just leaves things absolutely pristine. Great employee.' he tells you, laughing at the mess you made him do.";
	WaitLineBreak;
	say "     Now that you're both done with the fun, you say your goodbyes, having left Mogdraz satisfied and with a smile on his face.";
	now lastfuck of Mogdraz is turns;

to say MogdrazBlowjob:
	say "     It's slightly hard to speak when such a powerful and good looking man like Mogdraz is the one you want to bang, especially when he's looking at you, patiently awaiting your words. But you manage to tell him that you'd like to please him, in some way. Perhaps using your mouth. 'What was it? You liked its taste?' he asks, jesting, but he gestures at you to come closer, and on your knees. With his large hand, he caress your cheek and nearly takes you for an embrace with his powerful legs, letting you position yourself in front of his growing bulge, still covered by the dark jockstrap he's wearing. 'Feel free to unwrap it whenever you're ready. Or you can just admire the view for a while. I'll allow.' Mogdraz keeps teasing you, but his chuckling reveals no ill intention, and he's actually very gentle, giving you all the time you need.";
	say "     Now, you're on your knees in front of the boss, and everyone at the club can see you, which is an exhilarating feeling. Once you think you're ready, you bring your hands over that large bump between his legs, as he gazes at you with interest. His monstrous cock enlarges before your eyes and it's not even free yet, as you're still taking a grip of the underwear's elastic band and pulling it down. The big demon helps you, lifting himself just enough for it to slide down his ass and allowing you to finally pull his manhood out, only now able to grow to its hardest state. His musk is at its strongest here, too, hot and intoxicatingly arousing, a strong masculine scent like you very rarely feel. Noticing you involuntarily breathing it in deep, Mogdraz taps the back of your head gently, encouraging you to lean in. 'Come on... give it a kiss. I know you want to...' he says, with a smirk.";
	WaitLineBreak;
	say "     Following his invitation, you suppose it's time to bring your lips over his shaft. You don't want to give him everything at once, oh no. For a powerful demon boss such as Mogdraz, you have to show him proper respect, and put a much appreciated additional effort. You must love his cock, worship it, make him feel like he's having the damn best blowjob he ever had, fully devoting yourself to please him with the best of your abilities. This comes with taking your time to feel every inch of the huge beast of a cock that he has, and using your hands to provide him additional warmth and friction. Starting by rubbing along his shaft, your tongue follows the long way that goes from the base of his shaft to the tip, with a bit of teasing around the glans, which leaves the big devil biting his underlip.";
	say "     Cupping his balls with one hand, you continue the licking for some time, and since you're not quite done with teasing him, you also kiss his nutsack, trying to get one of those massive orbs inside your mouth, an extremely difficult task given their size. You can only maybe suck on them partially, though this is enough to make Mogdraz let out a moan. 'You really made me wait for it, huh... Fuck, that feels so good...' The red devil never dismisses the chance of getting his balls worked on, and as full as they are, you're predicting a very large load once you're done. But for now, you haven't even gotten started on sucking his dick for real. There's still a lot of manhood to enjoy, from his balls to the tip of his cock, before you wrap your lips around his shaft.";
	WaitLineBreak;
	say "     After spending a good time tugging on his cum factories, squeezing and feeling them up gently while pulling them softly with your lips, you're ready to lick your way up once more, and give him what he's waiting for. Spreading your lips around the by now glistening wet tip, you allow his crimson rod to enter your mouth. Though it's far from easy, you have to really open wide in order to have a remote chance at sucking him off. He enjoys seeing you struggle with his size, and you can definitely feel his dick throbbing in your grasp as he observes you. 'Reminds me of our first time. You could barely get the tip.' he mocks you, giving out a chuckle, but you don't let this discourage you, and he knows that you won't be. Leaking as he is, the marvelous taste of his precum is the most prominent feeling, one that simply keeps you hooked up.";
	say "     By rubbing the rest of his shaft, you provide a thorough sensation that doesn't disappoint, while you suck as deep as you're able. Mogdraz is often careful as to not push your limits too much, but you know he really wants to drill your mouth with that beast of a dick, if he could. He grabs your head and often pushes you, just a little more, truly enjoying the feeling of his meat going deeper, even if for just a tiny bit, with just the right amount of force. 'You do so much better than most sluts who... fuckin['] beg to suck my cock... Oh, if I could keep you...' he tells you, which you take as a compliment, and proceed to suck on his dick even more hungrily, a bit of sloppiness inevitable as you attempt to take more in you, all the while you're stroking his shaft for maximum stimulation.";
	WaitLineBreak;
	say "     While you're down there worshipping his cock, the demon boss holds your head gently as you work him towards the edge, encouraging your sucking. There's even a hint of movement on his hips as he's getting closer, and to reinforce that, you fondle his sizable gonads while his meat throbs in your mouth. Then, as you're taking a pause, you begin to lick an especially sensitive spot just around the glans of his penis while stroking the rest of his shaft with your free hand. 'Ohh, fuck... that's it... keep going, yess...!' he exclaims, and you just know you'll get an enormous faceful of cum if you have to keep doing this until he gets there, though you can't really help it. The way he's looking at you, so lustful, biting his underlip, eyes struggling to keep open, his powerful hand caressing the back of your head... it's impossible to resist.";
	say "     'I'm getting close... watch your eyes!' he warns you, and just a few more strokes and licks are enough to set off the beast, making him spew an enormous spurt of jizz on your mouth and face, and he keeps going for a good while. You actually have to hold your breath and close your eyes as your face, neck and chest get completely covered in the stuff, and Mogdraz only stops cumming after it has been like a minute or so, panting deep with his head leaned backwards in absolute bliss. Only then he takes a look at you, as his dick gives some final throbbings. 'I really, really should stop you from leaving. Looking as good as you do with so much of my cum on you... I feel like I can get hard again in just a few.' he says, directing some of his load into your mouth. It's actually one of the best things you've ever tasted...";
	WaitLineBreak;
	say "     'That's it, have some, but not too much, or you'll become a demon cum junkie. Not good, unless you want to make this your living.' With a chuckle, he pushes you away gently while he gestures at Tor'on, the bartender, to come over and help clean you up. 'Don't worry, he'll get you all pristine looking in a pinch.' says Mogdraz to you, as a comfort, though those odd tingling sensations around your body whenever he asks you to close your eyes and let him work leaves you somewhat disturbed. But he does his job quickly, and soon you're ready to go, all cleaned up.";
	NPCSexAftermath Player receives "OralCock" from Mogdraz;
	now lastfuck of Mogdraz is turns;

to say MogdrazSexSlaves:
	say "     Bringing the subject of some group action this time, Mogdraz shows great interest, leaning forward in order to hear you attentively. 'Some group fun, you say. What do you have in mind?' he asks, and then you explain that you'd like to share one of his slaves with him, as you're in the mood to dominate someone with the master at that art, him. He throws a flattered chuckle. 'You wish to subdue one of my slaves with me? That can be arranged! In fact, I am very much into that idea right now. May I ask you to follow me, then, if you're so inclined?' he says to you, more in an imperative way than just a simple request, touching your shoulders and having you walk in front of him, towards the back door with the prominent sign saying [']STAFF ONLY[']. Once you get there, he simply pushes the door open and keeps you walking forward, leading you into some dark corridors. Here you can hear grunts and lusty moans coming from the many rooms, some with their doors closed, others not as such.";
	say "     Still being guided by Mogdraz, you go a level lower, through some stairs, and the big demon has to unlock the door, this time. After you're free to walk inside, he then has you heading towards a specific spot in the room with a red light, where all kinds of sex toys and other fetish tools are either hanging or laying around. 'This is my private dungeon, where I truly dominate all my slaves in peace. Though I must say, I do not abuse them. I only provide them what they need, and in exchange, I feed on their burning desire. So I hope you share my values as my dom partner.' He takes his conduct seriously, and always wants to make sure you follow his ideals before sharing one of his personal favorites. 'So, is there anything in particular I can offer you? What kind of slave should we invite, this time...?' he asks you, though for now, you let him choose.";
	WaitLineBreak;
	say "     'I've caught this one incubus once, attempting to assault one of my lackeys. Fortunately for him, they brought him to me, and now he's here, living to please my boys and myself.' he says, leading you to the room that he gave to this slave. Inside, you can see this incubus demon he mentioned, fully naked, perfectly fit and handsome, pleasuring himself with a dildo the size of Mogdraz's cock. 'He can't get enough, as you can see...' he jokes, and his slave doesn't even notice you two coming in until the boss is really close to him. 'M-Master! Oh, apologies... Didn't see you coming... You brought a friend? Does he want to fuck me, too?' asks the incubus, to which Mogdraz laughs, patting him on the head. 'I see you're taking good care of yourself... Though I am in need of you. Care to come along?' he orders, and his slave obeys, leaving the extra large dildo back and following you both back to the spot with the tools.";
	say "     The incubus is totally eager to get started, and the demon boss doesn't make him wait too long. He ties him down to a rack, with his butt stretching backwards as his head is brought to crotch level, and his hands held within the contraption. You see the large devil slap one of the slave's buttocks, and the latter lets out a loud, lustful moan as his master rubs his already stretched pucker with some of his thick fingers. 'That a good boy, keeping his ass ready to take me anytime...' says Mogdraz, praising his slave while fingering his ass, his own boner soon outgrowing the limited space his dark jockstrap provides. 'You better take his mouth. He's a great cocksucker... And his ass is more used to my dick, anyway.' he tells you, winking mischievously. With this said, you position yourself in front of the incubus['] handsome face, who looks up at you with that suggestive gaze, already opening his mouth and showing off his skillful tongue. 'I'm gonna suck you lots, sexy...!'";
	WaitLineBreak;
	say "     Unable to resist such an empowering visage, [if player is not naked]you whip out your cock[else]you grab your cock[end if] and rub it across the demon's face, whose joy is obvious as soon as your shaft comes in contact with his cheek. The boy is already trying to taste your meat, moaning each time Mogdraz shoves an extra finger in his hungry asshole. 'Mm, Master... Thank you for this...' he says, enjoying the feeling of his ass getting played with and your cock throbbing against his mouth. Soon, you figure it's time to start pressing the tip against his incredibly soft lips, and begin to push inside slowly... Naturally, the devil boy gladly takes your [cock of player] dick in, sucking on it with dedication as soon as you're past his lips, hearing and feeling him moan while Mogdraz keeps preparing his hole.";
	say "     'Looks like he's ready to take it from this side too.' says the red demon, bringing his enormous cock between the incubus['] asscheeks, rubbing its length across the hell boy's hungry anus. With your own member throbbing and pulsing inside his mouth, you hold his head and begin to pound him, slowly at first, while his nimble tongue is caressing your penis in all the right ways. This is one skillful demon, able to make you feel so good with the slightest of efforts, all making you want to facefuck him harder once you get the chance. For now, you're merely warming up, as Mogdraz has yet to shove his monstrous dong inside him. Though, once he begins to press just the tip against his pucker, the incubus only moans with your dick in his mouth, his voice vibrating through your shaft as he attempts to relax his ass for the demon boss.";
	WaitLineBreak;
	say "     While feeling up one of his glutes, Mogdraz slowly pushes in, making the hell boy nearly collapse in lust, numb with pleasure. 'He really likes a good filling... make sure you fuck him as hard from that side.' he tells you, and you're so ready to grab his head and start pounding his throat like there's no tomorrow. Following this, you begin to jerk your hips back and forth, feeling your length sliding past the incubus['] soft lips repeatedly as his tongue attempts to curl around your shaft, while he takes a huge cock in his ass, balls-deep. Having been messing with a dildo the size of Mogdraz's cock surely helped him taking the real thing, all the while he's getting facefucked by you, your own nutsack swinging against his chin as you keep pounding his face. He takes it all, without a problem, his throat feeling like just what it is, a tight and welcoming flesh tunnel clenching around your dick.";
	say "     You both keep pounding the incubus from both sides for a good while, the sounds of flesh on flesh clashing rhythmically audible throughout the room. 'Fuck yes... look at who's gonna get a huge load from Master and his friend for being such a good boy...' says the red devil to his slave, who responds with a lustful moan. All this time you've spent double tagging the demon has driven both of you close to the edge, so you start to slow down as you see yourself almost cumming. Panting, Mogdraz looks at you, also having slowed down his intense thrusting, with those fiery eyes of his as you both catch each other's pacing. He grins, taking the initiative to speed up, as you do the same. The incubus['] throat just feels so good on your dick, and his tongue is so eagerly wiggling around your shaft that you can't help but to give in to the urge...";
	WaitLineBreak;
	say "     'Hell yeah... Enjoy the filling, my boy... You deserve it!' The big, crimson devil lets out a grunt of pleasure as he, at the same time as you, reaches his climax. Burying his entire length on his slave's ass, he cums when you do, both cocks shooting all the cum that has been begging to leave right inside the incubus. On your end, the boy slurps all your seed to the last drop, while he takes Mogdraz's in his insides, and looking underneath, you see that this whole thing also made the sub demon orgasm, having coated the rack's support structure and the floor with his own hellish jizz. The red devil's load lasts for about a minute, until he pulls out of his boy's abused hole, with a thick stream of creamy sperm following and leaking down his taint. Your dick is still getting licked off any traces of your load, all before you pull away.";
	say "     'What a fucking good release... Hope you enjoyed.' he says to you, as you help him free the incubus from the contraption. 'We can totally repeat this if you're in the mood! Let me know.' with a nod, you thank Mogdraz for having shared one of his slaves with you, and while he gives some post-sex caretake to his boy, you take your leave upstairs. He will soon return to his usual spot by the lounge.";
	now lastfuck of Mogdraz is turns;

[***********************************************************]
Section 5 - Hellfire Club
[***********************************************************]

Table of GameRoomIDs (continued)
Object	Name
Hellfire Club	"Hellfire Club"

Hellfire Club is a room. It is a fasttravel. Hellfire Club is private.
The earea of Hellfire Club is "Red".
Description of Hellfire Club is "[HellfireClubDesc]".

to say HellfireClubDesc:
	say "     You're standing outside of the Hellfire Club, a place hidden from the common eyes, owned by the infamous Master Mogdraz so referred by the demons which the club is named after. They seem to have acquired their own source of energy, which you do not care to get an explanation from, since it's probably demonic stuff. Inside, [if daytimer is night]the party seems to be ongoing, a barely audible sound of lounge music playing[else]things seem pretty calm, not an audible sound coming from there[end if]. It's a very fetish and BDSM themed club, great for the kinky and for the curious. Guarding the entrance are two burly hellfire demons, eyeing you with a smirk, but they do not stop you thanks to the order given by Mogdraz himself to allow you free entry. You could head further inside the club, or head back south into the ominous and oddly clean Crimson Street.";

to connect Hellfire Club:
	change the south exit of Hellfire Club to Crimson Street;
	change the north exit of Crimson Street to Hellfire Club;
	AddNavPoint Hellfire Club;

a postimport rule: [bugfixing rules for players that import savegames]
	if resolution of Hellish Introduction > 0: [event resolved the right way, room not connected yet]
		connect Hellfire Club;

instead of smelling Hellfire Club:
	say "     It must be the hellfire demons['] musk, but everything smells so delightfully devilish in here that just makes you want to stay. The sweet and masculine musk of attractive demonic creatures is enough to send you into a brief lightheaded state, taking you some time to shake it off.";

Table of GameRoomIDs (continued)
Object	Name
Hellfire Lounge	"Hellfire Lounge"

Hellfire Lounge is a room.
Hellfire Lounge is north of Hellfire Club. It is sleepsafe.
The earea of Hellfire Lounge is "Red".
Description of Hellfire Lounge is "[HellfireLoungeDesc]".

to say HellfireLoungeDesc:
	say "     The lounge of the Hellfire Club is a spatious environment, with a bar counter on one side and many chairs and seats scattered around, screaming lush and delight wherever you look. Here, [if daytimer is night]the noise isn't unbearable, you're even able to have a normal conversation with anyone without having to raise your voice too much, and the bartender is serving drinks as usual[else]some demon lackeys are cleaning up the seats, tables and corners from the previous night, while the bartender is polishing the drinking glasses[end if]. At one corner with peripheral vision for the entire lounge is a large and luxurious red velvet sofa, where the owner of the club, Mogdraz, usually takes his seat, sometimes accompanied by a couple of servants, who he dismisses whenever you approach him. Behind the bar counter, to the west, there's a door to the back rooms with a signal prominently saying [']STAFF ONLY[']. It [if Resolution of Ambush The Purifier < 6]doesn't look like you can go in there for the moment[else]looks like you could go in there, now that you have Mogdraz's permission[end if]. To the south is the entrance, with two burly hellfire demons keeping watch all the time.";

instead of smelling Hellfire Lounge:
	say "     It must be the hellfire demons musk, but everything smells so delightfully devilish in here that just makes you want to stay. The sweet and masculine musk of attractive demonic creatures is enough to send you into a brief lightheaded state, taking you some time to shake it off. There are also other creatures' scents getting mixed together, but you can barely notice them.";

Table of GameRoomIDs (continued)
Object	Name
Hellfire Corridor	"Hellfire Corridor"

Hellfire Corridor is a room. Hellfire Corridor is private. It is sleepsafe.
The earea of Hellfire Corridor is "Red".
Description of Hellfire Corridor is "[HellfireCorridorDesc]".

to say HellfireCorridorDesc:
	say "     Past the Staff door, there is a long and dark corridor, leading to lots of different rooms. Some have their lights lit from inside, and you can hear a few grunts and moans occasionally coming from behind the walls. Apart from these sounds, there's only silence. Right now, you can only head south, down a stairway that seems to lead to the dungeon where captives are held.";

to connect Hellfire Corridor:
	change the west exit of Hellfire Lounge to Hellfire Corridor;
	change the east exit of Hellfire Corridor to Hellfire Lounge;

a postimport rule: [bugfixing rules for players that import savegames]
	if resolution of Ambush The Purifier > 5 and resolution of Ambush The Purifier < 99: [event resolved this way, room not connected yet]
		connect Hellfire Corridor;

instead of smelling Hellfire Corridor:
	say "     It smells strongly of sex, and especially demonic musk. This is a place only the trusted clientele and staff members are allowed, so that is to be expected.";

Table of GameRoomIDs (continued)
Object	Name
Hellfire Dungeon	"Hellfire Dungeon"

Hellfire Dungeon is a room.
Hellfire Dungeon is below Hellfire Corridor. It is sleepsafe.
The earea of Hellfire Dungeon is "Red".
Description of Hellfire Dungeon is "[HellfireDungeonDesc]".

to say HellfireDungeonDesc:
	say "     One of the darkest places in the entire Hellfire Club establishment, the dungeon is where Mogdraz's most valuable slaves are kept, among others that he personally fancies. Though this isn't what you expect from a regular dungeon. The place has little light, but the [']cells['] are actually rooms with good conditions for the captives to inhabit. Over a specific area, however, there are racks and other mechanisms that serve to bind and tie, together with a variety of sex toys and tools for a complete BDSM session. This definitely seems to be the place to enact some very kinky fun, and you can occasionally hear someone moaning from inside the rooms.";

instead of smelling Hellfire Dungeon:
	say "     It smells strongly of sex, and especially demonic musk. This is a place only the trusted clientele and staff members are allowed, so that is to be expected.";

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section X - Dev Cheats
[***********************************************************]
[***********************************************************]
[***********************************************************]

[GimpMaskSkip is an action applying to nothing.
Understand "GiveGimpMask" as GimpMaskSkip.

Carry out GimpMaskSkip:
	ItemGain gimp mask by 1 silently;
	say "You have the gimp mask. Go submit to a hellfire demon.";]

Mogdraz ends here.
