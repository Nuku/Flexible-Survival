Version 1 of Mogdraz by Gherod begins here.
[Version 1 - File created, Mogdraz and his Hellfire Club at Red Light + a few sub scenes - Gherod]

"Adds Mogdraz and the Hellfire Club to the game."

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
An Hellish Introduction	"An Hellish Introduction"

An Hellish Introduction is a situation.
The sarea of An Hellish Introduction is "Nowhere".

when play begins:
	add An Hellish Introduction to badspots of DemonList;

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
	now resolution of An Hellish Introduction is 1;
	move player to Hellfire Club;
	now Hellfire Club is known;
	connect Hellfire Club;
	WaitLineBreak;
	if companion of player is demonologist:
		say "     Just as you're about to leave, a familiar silhouette shows up by the entrance, walking towards you. Judging from the absence of guards, you come to a pretty obvious conclusion of who it is. Your companion Xaedihr has followed you back here, and he made sure to clear his own way...";
		WaitLineBreak;
		MogdrazXaedihr;

instead of going north from Crimson Street while (resolution of An Hellish Introduction is 1 and companion of player is demonologist):
	say "     Just as you're about to make an entrance, your sorcerer friend immediately bends the will of the hellfire demons standing as guards, forcing them to collapse on the ground with powerful magic. 'I knew something was going on here.' You try to stop him, to no avail, as he charges ahead into the club. There is nothing you can do but to follow after him, hoping he doesn't make any further trouble...";
	WaitLineBreak;
	MogdrazXaedihr;

to MogdrazXaedihr:
	say "     'So this is where they take the so called slaves. Thank you for showing me.' he says, as the club goes into an uproar about an intruder having made it through. Mogdraz storms out of his corner with several demons accompanying him towards you both as he shouts 'What is the meaning of this?!' inquisitively. You urge to tell him Xaedihr is your friend and that he means no harm, looking back at the mage with a pleading look to not cause any trouble here. Although you're surprised by the sorcerer's reaction... His eyes widen and he's speechless for a moment, Mogdraz's expression also changing abruptly once they see eachother. You have no idea what is going on, but surely this must be something important, so you do not interfere.";
	say "     'Mogdraz?! Is that really you?!' asks the half-demon, taking a step towards the towering hellfire master. 'Xaedihr...! What a surprise, I wasn't expecting to see you...! What are you doing here, didn't you have business back in the...?' Mogdraz doesn't finish the sentence, being instead hushed by the sorcerer's gestures, seemingly asking for silence. 'Not... Here. I... I'd prefer to talk in private.' Xaedihr gestures to you meanwhile 'You can come too. Since I have already dragged you into this...' It looks like they know eachother already, which is intriguing, to say the least. Mogdraz signals both of you to follow him into a private room not far deep into the back corridors, taking a turn left into some sort of... Fancy office? Just what in the name of Hell is going on?! Looks like you'll have your answers soon enough, however they both remain silent as the club owner indicates two seats, for you and Xaedihr, and takes his own on a grand velvet red chair on the other side of the desk.";
	WaitLineBreak;
	say "     Finally, the silence is broken. Xaedihr speaks first. 'So... Mogdraz was...' - he pauses, his words coming difficult - '... My father's personal assistant. He... He's the reason I managed to cross over from my realm to yours.' You don't quite know what that means, but it is surely an indication that Mogdraz is more than what he seems. The hellfire master explains himself shortly after. 'Yeah, well... Master Viel was a bit of a nutjob. I couldn't stand him. Then I discovered his son was plotting against him, and had to take a side. I chose Xaed's, and sent him to this realm to start anew. To save him from the horrid life he would have under that maniac's influence.' He turns to the sorcerer afterwards. 'But I wouldn't know he'd be HERE, in the middle of the nanites' outbreak! And with a crimson ruby, no less!' he adds, making a rather inquisitive tone as his piercing fiery gaze is fixated on Xaedihr. 'You know I had to try! There's no way I could just let him win... Not like this. One day I will make justice. I will stop that fiend.'";
	say "     Xaedihr's voice shows anger and revolt for the man who put him in the universe, and you see him clenching his fists. 'I will make sure he's turned into nothing but ash.' Mogdraz leans back on his chair, tilting his head while looking at the sorcerer with an intrigued look. 'Well, it seems like you're finding it a bit difficult to just move on, huh... I guess all I can do is offer my help, if you need. Although I don't intend to return to that doomed place, I can send scouts and provide information, if that helps. The calm life I lead here is everything I could ask for.' Facing Mogdraz's generosity, Xaedihr nods politely. 'Thank you. That would mean a lot to me. Though... Please stop trying to enslave people...' Mogdraz quickly rushes to defend himself 'It's not enslavement if they consent! Besides... I do have a sane talk with them first! Whatever comes after, it's on them!' Xaedihr responds with a sigh, rolling his eyes 'I suppose. Only the weak-willed fully submit, either way. Just as long as you don't force them.'";
	WaitLineBreak;
	say "     Mogdraz chuckles, getting up from his chair and talking as he walks over to the door. 'Even the most strong-willed crave for someone in charge, sometimes. To let go for once and feel someone taking control... Sometimes, they need that. I simply provide what the heart truly desires. But I don't keep their souls, so they're free to go anytime...! They simply choose not to.' Both you and Xaedihr follow him to the exit. The sorcerer makes a polite bow as the club master responds in the same manner, a formal greeting between good friends in nobility, perhaps. 'I shall send you what I learn, Xaed. Just be careful and don't do anything you would regret. Oh, and... Good to see you.' says Mogdraz, as you and Xaedihr take your leave, the dark mage showing signs of joy and hope in his face.";
	say "     The half-demon now turns to you with a sincere smile. 'Thank you, friend. If it wasn't for you I would have never re-encountered the only demon I owe my life to.' Indeed, this is something you don't see everyday, given Xaedihr's innate hate for the hellspawn. And Mogdraz seems to be capable of dimension traveling, surprisingly. There is a lot you still don't know about that demon... Maybe you can know more by talking to him the next time you find yourself at the Hellfire Club.";
	now resolution of An Hellish Introduction is 2;

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 2 - NPC
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
The description of Mogdraz is "[Mogdrazdesc]".
The conversation of Mogdraz is { "<This is nothing but a placeholder!>" }.
The scent of Mogdraz is "     Mogdraz smells faintly of brimstone, but he has a rather attractively masculine scent. Being near him makes you feel more [if player is submissive]submissive, your knees weakening in his presence[else if player is dominant]dominant, empowered by his mighty presence[else if player is kinky]kinky, your mind contemplating all the possibilities[else]prone to sexual debauchery[end if]".

to say MogdrazDesc:
	say "     Wearing a naughty grin in his face, the owner of the Hellfire Club is the higher breed of the Hellfires, slightly larger and muscular than the rest. Crimson skinned, bigger horns, fuzzier beard and even sporting a hairier chest, Mogdraz leads the entire horde of hellfire demons roaming around Red Light District, while managing a fetish business of his own. He's wearing a leather set, complete with a spiky harness adorning his jacked torso, a leather jockstrap suitable for his enormous size, a pair of crotch revealing leather pants and black boots that would make anyone tremble in his presence due to the tough and rough vibe they emanate. Contrarily to what one would think at first sight, however, Mogdraz is actually pretty friendly, giving you a pat on the back everytime you come talk to him.";

[***********************************************************]
Section 3 - Talk Menu
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
	if resolution of An Hellish Introduction > 1:
		choose a blank row in table of fucking options;
		now title entry is "His situation with Xaedihr";
		now sortorder entry is 6;
		now description entry is "Ask more about their relationship";
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
		say "     After the explanation you gave him, Mogdraz nods and understands your words. 'Still exploring, heh? Sometimes not taking either side of the dominant and submissive part is the best way to go for maximum enjoyment. I wish I could submit sometimes, but I just don't like it that much unless it's with someone I trust and who actually deserves that. That person never arrived, and honestly I do enjoy dominating others better. With their consent, always!' he explains, giving a personal example to enrich your discussion. 'Hope you have fun trying new stuff, but be careful out there!' he adds before you're ready to move on to another subject.";
		now HP of Mogdraz is 30;

to say MogdrazTalkXaedihr:
	say "     You further question Mogdraz about his relationship with Xaedihr. He shrugs, but replies... 'Yeah, I guess you have a few questions... Uh, totally wasn't expecting to see ol' Xaed here. He changed a lot, that's for sure.' He makes a pause, and continues speaking before you have to inquire further. 'Back on the days I was but a humble servant, and as all servants from high places, we know how to relocate ourselves instantly through large distances... Teleportation, dimension traveling...' That makes sense now... But there is still something left to explain, which he does in a bit. 'We are not just minions. My kind was created to serve an ultimate purpose. My minions, however, are... A minor offspring of the true Hellfire. They are intelligent enough, but as you can see, they are very sex-obsessed.' With a nod, you thank Mogdraz for the explanation.";

[***********************************************************]
Section 4 - Sex Menu
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
		say "     You remember your last encounter with Mogdraz the other day being really hot, and his invitation was rather suggestive. Though you really shouldn't be bothering him right now, as he seems pretty busy looking after his people around the club. Maybe in the near future?";
		say "< To be added soon >";
		[say "[MogdrazSexMenu]";]
	else if libido of Mogdraz is 99:
		say "     Given what you said to him the last time you were together, it would be very inappropriate to attempt to engage in a sexual encounter with Mogdraz. You decided to stay as friends, and so that shall be the case. Nonetheless, he's always happy to see and talk to you.";

to say MogdrazDate:
	say "     With the intention of getting down with the big Master still present in your mind, you make an advance towards it by asking him if he has any plans for tonight. He tilts his head and looks at you in some surprise, but at the same time he makes his bulging crotch evident in your angle of view. 'My plans are to watch over my people, making sure nothing goes astray... But I suppose you have a better suggestion regarding how I should spend my time?' he ironically asks you, albeit the grin on his face is rather suggesting that he's just on about teasing you. Taking your previous conversation into account, you think if this would be a good time to [bold type]invite Mogdraz for a walk[roman type]... You know, to get to know eachother a little better?";
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
			say "...' His advances leave you with a decision to make. [bold type]Do you want to let this happen, or would you rather keep Mogdraz as your friend only[roman type], refusing any sex with him from now on? [if player is dominant]Note that Mogdraz is a fairly dominant individual, and he might not be easy to reason with him regarding his sexual role...[end if][line break]";
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
	say "     'T'was a great time, I have to say... Anytime you wanna have another go, feel free to hit me up. Maybe we can try my suite at the club the next time we wanna get dirty with eachother... Though he'll use the jacuzzi if need be to avoid this mess, I promise.' he adds before you're ready to get up and walk back to the club. He gives you a pat on the butt with a naughty grin as he walks towards his usual corner, saying goodbye with a wink. What a tease...!";
	NPCSexAftermath Player receives "OralCock" from Mogdraz;
	now libido of Mogdraz is 4;
	now lastfuck of Mogdraz is turns;

[to say MogdrazSexMenu:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	say "     Turning to Mogdraz, you ask if he's available for a good time together.";
	say "     [bold type]Now that you have him in privacy, what exactly do you want to do with Mogdraz?[roman type][line break]";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Give him a handjob";
	now sortorder entry is 1;
	now description entry is "Get your hands on his meaty prick";
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
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You politely excuse yourself as Mogdraz gives you an understanding smile.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;
]

[***********************************************************]
Section 5 - Hellfire Club
[***********************************************************]

Table of GameRoomIDs (continued)
Object	Name
Hellfire Club	"Hellfire Club"

Hellfire Club is a room. It is a fasttravel. Hellfire Club is private.
The earea of Hellfire Club is "Red".
The description of Hellfire Club is "[HellfireClubDesc]".

to say HellfireClubDesc:
	say "     You're standing outside of the Hellfire Club, a place hidden from the common eyes, owned by the infamous Master Mogdraz so referred by the demons which the club is named after. They seem to have acquired their own source of energy, which you do not care to get an explanation from, since it's probably demonic stuff. Inside, the party seems to be ongoing, a barely audible sound of lounge music playing. It's a very fetish and BDSM themed club, great for the kinky and for the curious. Guarding the entrance are two burly hellfire demons, eyeing you with a smirk, but they do not stop you thanks to the order given by Mogdraz himself to allow you free entry. You could head further inside the club, or head back south into the ominous and oddly clean Crimson Street.";

to connect Hellfire Club:
	change the south exit of Hellfire Club to Crimson Street;
	change the north exit of Crimson Street to Hellfire Club;

a postimport rule: [bugfixing rules for players that import savegames]
	if resolution of An Hellish Introduction > 0: [event resolved the right way, room not connected yet]
		connect Hellfire Club;

instead of smelling Hellfire Club:
	say "     It must be the hellfire demons['] musk, but everything smells so delightfully devilish in here that just makes you want to stay. The sweet and masculine musk of attractive demonic creatures is enough to send you into a brief lightheaded state, taking you some time to shake it off.";

Table of GameRoomIDs (continued)
Object	Name
Hellfire Lounge	"Hellfire Lounge"

Hellfire Lounge is a room.
Hellfire Lounge is north of Hellfire Club. It is sleepsafe.
The earea of Hellfire Lounge is "Red".
The description of Hellfire Lounge is "[HellfireLoungeDesc]".

to say HellfireLoungeDesc:
	say "     The lounge of the Hellfire Club is a spatious environment, with a bar counter on one side and many chairs and seats scattered around, screaming lush and delight wherever you look. The noise isn't unbearable, you're even able to have a normal conversation with anyone without having to raise your voice too much. At one corner with peripheral vision for the entire lounge is a large and luxurious red velvet sofa, where the owner of the club, Mogdraz, usually takes his seat, often accompanied by a couple of servants. Behind the bar counter, to the west, there's a door to the back rooms with a signal prominently saying [']STAFF ONLY[']. It doesn't look like you can go in there for the moment. To the south is the entrance, with two burly hellfire demons keeping watch all the time.";

instead of smelling Hellfire Club:
	say "     It must be the hellfire demons musk, but everything smells so delightfully devilish in here that just makes you want to stay. The sweet and masculine musk of attractive demonic creatures is enough to send you into a brief lightheaded state, taking you some time to shake it off. There are also other creatures' scents getting mixed together, but you can barely notice them.";


[***********************************************************]
[***********************************************************]
[***********************************************************]
Section X - Dev Cheats
[***********************************************************]
[***********************************************************]
[***********************************************************]

GimpMaskSkip is an action applying to nothing.
Understand "GiveGimpMask" as GimpMaskSkip.

Carry out GimpMaskSkip:
	increase carried of gimp mask by 1;
	say "You have the gimp mask. Go submit to a hellfire demon.";

Mogdraz ends here.
