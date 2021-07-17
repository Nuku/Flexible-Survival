Katherine by Kirov begins here.

"Adds Katherine the German Shepherd Bitch as an NPC to the game"

[ Engergy of Katherine		- counts the number of consecutive victories by the player over the gsb monster ]

[ HP of Katherine			- status of Katherine ]
[ 0 - Not yet met					]
[ 1 - Roaming the wild as a gsb 	]
[ 2 - Brought back to the library	]
[ 3 - Started quest					]
[ 4-9 - Quest counters				]
[ 10 - Lover Katherine				]
[ 50 - Mindless Katherine			]
[ 90 - Opted not to recruit			]
[ 91 - Betrayed Katherine			]


[ MaxHP of Katherine        - reserved for temporary use ]

[ XP of Katherine			- Katherine's trust of the player ]

[ Level of Katherine		- Prevents spamming of chitchat to exploit supplies ]

[ Armor of Katherine		- Flag used to indicate whether player has spoken about next quest step ]

Section 0 - Setup and Declaration

Table of GameCharacterIDs (continued)
object	name
Katherine	"Katherine"

Katherine is a woman.
ScaleValue of Katherine is 3. [human sized]
Body Weight of Katherine is 4. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Katherine is 7. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Katherine is 7. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Katherine is 5. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Katherine is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Katherine is 5. [length in inches]
Breast Size of Katherine is 2. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Katherine is 2. [count of nipples]
Asshole Depth of Katherine is 8. [inches deep for anal fucking]
Asshole Tightness of Katherine is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Katherine is 0. [number of cocks]
Cock Girth of Katherine is 0. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Katherine is 0. [length in inches]
Ball Count of Katherine is 0. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Katherine is 0. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Katherine is 1. [number of cunts]
Cunt Depth of Katherine is 10. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Katherine is 3. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Katherine is 3. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Katherine is false.
PlayerRomanced of Katherine is false.
PlayerFriended of Katherine is false.
PlayerControlled of Katherine is false.
PlayerFucked of Katherine is false.
OralVirgin of Katherine is false.
Virgin of Katherine is false.
AnalVirgin of Katherine is true.
PenileVirgin of Katherine is true.
SexuallyExperienced of Katherine is true.
TwistedCapacity of Katherine is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Katherine is false. [steriles can't knock people up]
MainInfection of Katherine is "German Shepherd Bitch".
Description of Katherine is "[KatherineDescription]".
The scent of Katherine is "Katherine has a familiar, somewhat earthly scent common among dogs, but there is a hint of your own scent mixed in from all the times you've claimed her as yours.".
Conversation of Katherine is { "Woof!" }.
The fuckscene of Katherine is "[KatherineSexCheck]".

to say KatherineDescription:
	project Figure of Katherine_icon;
	if debugactive is 1:
		say "     DEBUG -> Energy: [Energy of Katherine], HP: [HP of Katherine], XP: [XP of Katherine], Level: [Level of Katherine], Armor: [Armor of Katherine] <- DEBUG[line break]";
	say "     Katherine is a tall and athletic woman with the form of an anthro German shepherd. She is covered in long, shaggy fur with the black and brown shadings typical for the breed. Despite the aura of toughness that surrounds her, she unconsciously lifts and wags her tail when she sees you looking at her, a clear sign that you've tamed the bitch.";

instead of conversing the Katherine:
	say "[KatherineTalkMenu]";

HP of Katherine is 0.
MaxHP of Katherine is 0.
XP of Katherine is 0.
Level of Katherine is 0.
Armor of Katherine is 0.

a postimport rule: [bugfixing rules for players that import savegames]
	if HP of Katherine < 2 and Katherine is in Makeshift Rec Room:
		now HP of Katherine is 2;

Section 1 - Discussion

to say KatherineTalkMenu:
	if debugactive is 1:
		say "     DEBUG -> Energy: [Energy of Katherine], HP: [HP of Katherine], XP: [XP of Katherine], Level: [Level of Katherine], Armor: [Armor of Katherine] <- DEBUG[line break]";
	say "     Katherine wags her tail furiously as you step up to her. She smiles, waiting to hear what you have to say. [bold type]What did you want to talk to her about?[roman type][line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Chitchat";
	now sortorder entry is 1;
	now description entry is "Talk about whatever comes to mind";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Her";
	now sortorder entry is 2;
	now description entry is "Ask the shepherd about herself";
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
					say "[KatherineChitchat]";
				else if nam is "Her":
					say "[KatherineSelf]";
				wait for any key;
		else if calcnumber is 0:
			say "     Taking a step back, you depart the conversation for now. Katherine gives you a smile and a small wave goodbye before returning to her own musings.";
			now sextablerun is 1;
	clear the screen and hyperlink list;

to say KatherineChitchat:
	let cclist be a list of texts;
	now cclist is {};
	if HP of Katherine < 50:
		[ Normal Katherine ]
		add "[KatherineCC1]" to cclist;
		if Level of Katherine is 1:
			add "[KatherineCC2]" to cclist;
			now Level of Katherine is 0;
		add "[KatherineCC3]" to cclist;
		if Korvin is in Makeshift Rec Room:
			add "[KatherineCC4]" to cclist;
		add "[KatherineCC5]" to cclist;
		[]
		if HP of Katherine > 9:
			[ Lover Katherine ]
			say "     ";
	else:
		[ Mindless Katherine ]
		say "     ";
	sort cclist in random order;
	say "[entry 1 of cclist]";
	increase XP of Katherine by 1;

[ Katherine's random musings ]
to say KatherineCC1:
	say "     'It was tough trying to survive out there on my own. But I'm glad I found you. Food, water, shelter. As long as we pool our resources, we've got it all. We've got a nice little camp here, and I feel like we can really start putting things back together best we can.'";

to say KatherineCC2:
	say "     'So I was out scavenging yesterday. You'll never believe what I found!' she exclaims. 'I was rummaging through some abandoned vehicles and found some poor sucker's emergency supplies. They must have succumbed before they could use it themselves. Here's a bit of what I found.' She tosses you a pack, and you reach in to grab an item of interest, handing the rest back to her.";
	if a random chance of 1 in 2 succeeds:
		ItemGain food by 1;
	else:
		ItemGain water by 1;

to say KatherineCC3:
	say "     Katherine stretches her arms up in the air, unintentionally giving you a nice view of her well-toned body. 'Just got back from a jaunt out in town not too long ago,' she explains. 'No luck, unfortunately. Had a run in with a dangerous looking wyvern before I could find any loot.'";

to say KatherineCC4:
	[ Comment on Korvin ]
	say "     'So who's that other shepherd you managed to tame? I won't lie, he looks kinda cute.' Katherine smiles at you, but then she hastens to add, 'Not that I'd ever be unfaithful to you Alpha.' You chuckle and give her a pat on the head, to which she eagerly wags her tail, pleased that she still has your favor.";

to say KatherineCC5:
	say "     'I'm actually rather glad I turned into a dog instead of something else. All the fur means I can stay nice and warm without worrying about clothes, and this sensitive nose has been a life saver while out looking for supplies.'";

[ Discuss Katherine's past, eventually leading to her quest ]
to say KatherineSelf:
	if HP of Katherine < 2:
		say "ERROR: KIRKAT001 - Please report on the FS Discord";
	else if HP of Katherine is 2:		[ Katherine is at the library ]
		if XP of Katherine < 4:			[ Trust not high enough to start quest ]
			say "     'I... Well... To be honest, I don't really remember much before things... changed. I've been so focused on just trying to survive, and this infection hasn't just been physical. I've felt my mind slipping more than once whenever I was around other German shepherds, back in the city.' Katherine shuffles her feet as she speaks, looking down at the ground. 'It's something that's been bothering me ever since I settled down here.' The canine looks back up at you, hardening her expression. 'I'm sorry,' she says. 'I'm not really comfortable discussing this right now. Maybe if I've had some time to think, I'll remember more later.'";
			if XP of Katherine < 3:
				increase XP of Katherine by 1;
		else:							[ Beginning of quest ]
			if Armor of Katherine is 0:
				say "     Katherine's smile turns melancholy as you bring up the topic. 'I've been thinking, actually,' she says, clutching a paw to her chest. 'I really don't know who I was before the outbreak, and the thought's really been eating away at me.' She looks you in the eye, and you get a sense that she's about to confide in you. 'I haven't ever shown anyone this, but I feel I can trust you.' She pulls out a chain necklace hidden within the tufts of fur on her chest, reluctantly handing it to you to examine without taking it off. Strung on the end is a silver ring, and etched onto the inner surface is a name just a bit too worn to make out clearly. Squinting, you're just barely able to read 'Katherine H-' before she pulls the ring back. You're not certain you could have even gleaned much that had you not known her name already.";
				say "     'I've held on to it for as long as I can remember,' the shepherd reveals to you. 'It's one of the few connections to the past I still have, and I think it's what's kept me from loosing my mind completely.' She hides the precious artifact within her floof once again. 'I've hidden a few more items in a stash out in town, but they don't mean much to me with my memory as it is. I though maybe you... I...' She falters for a moment before mustering up a reserve of courage. 'Would you come with me to take a look at them? I know it's a long shot, but maybe there's something there you'd recognize. It would mean a lot to me, finding out at least something of my past.' [bold type]Do you embark on a quest to help her rediscover her past?[roman type][line break]";
			else:
				say "     Katherine gives you a hopeful smile as you bring up the topic of her past again. 'Like I said, I don't remember much. But I could use your help finding out some more if you're interested. Wanna head out and see what we can find?' [bold type]Do you embark on a quest to help her rediscover her past?[roman type][line break]";
			if Player consents:			[ Player accepts quest ]
				say "[KatherineQuest1]";
				now Armor of Katherine is 0;
			else:						[ Player does not accept quest ]
				say "     Upon hearing your answer, Katherine's pointed ears flatten against her head momentarily before she perks back up, quickly disguising her moment of weakness with a hearty laugh. 'Ha, no worries. It was kind of a silly request anyway.' She lightly pats your shoulder before walking away. As you watch her depart, she turns her head to address you once more. 'But if you change your mind, come talk to me again,' she says, a glimmer of hope in her eyes. You give her a nod before returning your attention to what lies ahead.";
				now Armor of Katherine is 1;
	else if HP of Katherine is 3:	[ Stage 1 of quest complete, proceed to stage 2 ]
		say "     'So,' Katherine says. 'You up for another adventure yet?' She looks at you inquiringly. 'I still need to find Lauren if I want to find out anything more about my past. And there's no one else I'd rather have by my side out there to watch my back,' she says to you with an eager grin.[bold type]Do you depart on another journey with Katherine?[roman type][line break]";
		if Player consents:		[ Player accepts to continue quest ]
			say "[KatherineQuest2]";
			now Armor of Katherine is 0;
		else:					[ Player does not continue quest ]
			say "'Alright, no problem, Alpha. Just let me know when you're ready.'";
			now Armor of Katherine is 1;
	else if HP of Katherine is 4:	[ Stage 2 of quest complete, get info before proceeding to stage 3 ]
		if XP of Katherine < 8:		[ Trust not high enough ]
			say "     Katherine smiles at you, happy that her Alpha is interested in her, but you can already tell from the way her body tenses that she's not ready to share more with you just yet. 'Sorry Alpha,' she says. 'I'm still trying to process some of these memories. There's some particularly unpleasant ones regarding Reese, and I don't think I'm comfortable confiding until I can figure them out myself.' You say nothing more and place a hand on her should, letting her know that as her Alpha, you're there for her if she needs you.";
			if XP of Katherine < 7:
				increase XP of Katherine by 1;
		else:						[ Trust high enough to get a little info from Kat ]
			say "     Katherine gives a heavy sigh. 'I guess there's no getting around it. You're gonna need to know if we want to find Lauren.' She finds a place to sit down, and you follow her, grabbing her hand to comfort her. This is clearly important to her. 'If I remember correctly, Lauren is my best friend. At the very least, we've known each other since we were very young. I cared for her.' This is nothing unusual so far, but you let her continue. 'Reese, on the other hand.' Her expression turns angry, and she bares her teeth at the name. 'I don't know what she saw in him. But I knew he was trouble.'";
			say "     You ask her what she means. 'She stopped hanging out as often shortly after they started dating. When she did show her face, it'd be caked in make-up, but it wasn't enough to hide the bruises.' The shepherd clenches her fists painfully tight. 'This was all before the nanites, mind you,' she says. 'She kept insisting that she loved him, and could change him. But I couldn't stand by and do nothing.' She growls quite aggressively, and you let her vent.";
			[ 'we' is? or 'we' are? ]
			WaitLineBreak;
			say "     'We were all together at a bar one night. I don't remember who 'we' is, but there was a lot of people.' Katherine gets up and starts pacing back and forth as she recounts her story. 'I confronted Reece, maybe a little too aggressively in retrospect, and obviously he wasn't happy about it. The fucking cunt took a swing at me. I was so livid, I returned the favor, no holding back.' She bares her pointed teeth again. 'You should have seen the look on his face as he fell to the floor,' she says with a smirk. 'I lost it, and I pounced him while he was down.";
			say "     'Everyone had my back, but they had to pull me off him before it got too bad. The police got involved, and I was arrested. At least I made sure that bastard would never forget me.' She makes an open palm with her left hand and punches it with a resounding smack. 'Of course, that only made things worse for Lauren afterwards. She wasn't gonna come forward to the cops, and we didn't have any evidence.'";
			WaitLineBreak;
			say "     Katherine sits back down beside you, taking a deep breath to calm herself down. 'This is why I'm so keen to find Lauren,' she sighs. You wrap your arms around her, rubbing her shoulder supportively. She leans into your embrace, nuzzling against you. You promise her you'll do your best to help find her, and she thanks you with a lick on the cheek. This Reece sounds like a real piece of work. You privately resolve to find him yourself and teach him a lesson for laying a hand on your bitch.";
			say "     {To be continued...}";
			now HP of Katherine is 5;
	else if HP of Katherine is 5:
		say "     Katherine smiles at you. 'I've already told you most of what I remember,' she says. 'I'm sure I'll have more to tell you once I can recall a bit more.' The two of you chat instead about the going-ons of the city. There's certainly a lot to discuss with all the mutant activity. The change in topic seems to have helped the shepherd relax a little, taking her mind off the fate of her best friend. Eventually, the conversation starts to slow, and you turn back to the library's entrance, ready to resume adventuring.";

to say KatherineQuest1:
	say "     Katherine's eyes brighten, and she nearly shouts 'Fantastic!' before catching herself with an embarrassed smile. 'I mean... I'm glad you're willing help.' She takes you by the hand and eagerly guides you out of the library, explaining along the way. 'There's one item in particular that I think you might be able to help with.' You follow the canine out the door and into the perils of the nanite-infested city, happy to embark on a journey to aid your loyal friend.";
	WaitLineBreak;
	say "     You and the German shepherd navigate the ruined streets, careful to avoid any confrontations where you can. A handful of creatures here and there prove unavoidable, but your own presence, complimented by the tough-looking bitch at your side, is more than enough to make them think twice before starting anything. The rest of your journey is uneventful, and Katherine eventually leads you to a small apartment building before turning to you.";
	say "     'This is where I was holed up before I found you,' she says. 'At least I think it was.' You see her frown as she struggles to remember if she's in the right place. While she's concentrating on her thoughts, you step inside to take a look around. Relative to some of the other buildings you've seen, this one looks much more worn down, with smashed furniture strewn about and gaping holes in the walls revealing the skeletal piping, mangled beyond repair. You doubt any sane survivors are still holed up here, and you briefly wonder how Katherine could tolerate the place before you remember that she had nearly lost her mind to the infection.";
	say "     Just as your thoughts turn back to the shepherd, she pokes her head in after you. She glances around and says, 'Ya, this is the place. Just under the stairwell is where I hid my stash.' She points towards the stairs, and you see a small cupboard tucked away underneath. The both of you approach the door, but before you can reach out to open it, it's slammed open seemingly of its own accord, causing you both to jump back.";
	now inasituation is true;
	challenge "Latex Fox";
	say "     [if fightoutcome < 20]You send the defeated fox on it's way out the building to go bother someone else. You and Katherine are busy enough as it is to be dealing with the nuisance. [else if fightoutcome > 19 and fightoutcome < 30]Having subdued you, the fox decides it's not interested and quickly dashes out the building before more trouble arrives. You and Katherine stand back up to resume your investigation. [end if]As you approach the cupboard, however, you see that the fox must have found Katherine's stash. All that appears to be left is a few empty water bottles and a cum-spattered purse. The canine beside you grimaces as she sees her ransacked supplies, but to your surprise, she doesn't appear all that concerned. 'At least the purse is still here,' she says, tentatively picking it up between two fingers, careful not to touch any stains. 'This is what I wanted to show you.'";
	now inasituation is false;
	say "     You're a bit perplexed as to why she wanted to show you this, especially given the condition it's now in. You can't imagine it having much use anymore. But she flips the small purse inside out, exposing the clean inner surface and making it easier to handle. She holds it up to you and points at a small white tag. 'See this?' You follow her finger to a label with a phone number and address. 'This used to be mine, which means this must have been my address.' You nod your head, starting to understand where this is going. 'Problem is, I can't remember enough of the city to actually know where this is.' Katherine flattens her ears against her head in frustration.";
	say "     You take another look at the address, raking your memory for where it might be. You think you have a vague recollection of where the street is, and Katherine gets an excited look on her face when you tell her. 'That's great! We can go check it out and see what we can find!' She eagerly leads you out of the old building and once again, the two of you are off. When you successfully navigate to the correct street, you find yourselves in a suburban neighborhood and begin counting house numbers. In her zealousness, Katherine quickly runs ahead to find the right one, and she's already started looking through the looted remains before you can catch up to her.";
	WaitLineBreak;
	say "     When you finally catch up, you find her holding a picture of two young women, starring at it intensely. One of the women in the photo is tall and athletic, with dark, flowing hair. The other is smaller and more demure, with an arm around the first. The German shepherd turns to look at you with an excited expression on her face. 'This is me and... and Lauren,' she says experimentally, as though testing whether the name sounds right. 'Yes, Lauren. We were friends before the outbreak. It's starting to come back to me!' She gives a yip of excitement and runs to hug you tightly.";
	say "     'I know you're my Alpha now, and I wouldn't have it any other way,' Katherine says as she licks you on the cheek. 'But we have to trying finding her! I don't remember much about her, but I know we were close, and I cared about her. And just seeing her is starting to bring back memories. At the very least, I want to know who I was before this all happened.' You ponder her request to continue the search, wondering just what it might unveil. You doubt there's much to loose, and plenty to gain to keep your bitch happy, so you tell her you'll keep looking.";
	say "     'Thanks Alpha,' she says with a nuzzle into your neck. Then she kisses you deeply, only pulling away when you feel you're about to run out of breath. 'It means a lot to me that you'd help with this. But I think we've done enough for today. If Lauren is still out there after this long, I'm sure she can survive another day.' Nodding your head in agreement, the two of you make your way back to the library without further incident. Your canine companion returns to her usual ponderings while you ready yourself for what adventure lies ahead.";
	now HP of Katherine is 3;

to say KatherineQuest2:
	say "     Katherine wags her tail. 'Let's get to it, then!' she says with enthusiasm. The two of you grab your gear and head out into the city in search of Lauren. The German shepherd doesn't bring much, preferring to rely on her natural abilities, but you bring your pack of supplies, expecting to be out for a while with no leads on Lauren's location. Your companion is optimistic nonetheless, and she suggests heading back to her old house first, to which you agree.";
	say "     The pair of you meander through the streets, evading any trouble along the way. You quickly arrive at your destination, but before you can enter the old house to search for clues, you see a pair of figures exiting the front door. Katherine, ever vigilant, quickly sneaks behind an overgrown hedge, and you follow her example. 'Can't be to careful,' she says to you as you crouch down beside her. You carefully peak over your concealment to see just what you're dealing with. A large, powerful-looking, male wolf steps out into the street, followed closely by a female cheetah. Neither are wearing clothes, and the cheetah is tethered to the wolf by a leash and collar. The wolf pulls harshly at the leash, much to the felines chagrin as she yelps and stumbles after him.";
	say "     'Come on, slut,' the wolf utters in a gravely voice, pushing the spotted cat forward and nearly knocking her to the ground. 'We've had some unwelcome visitors recently, and you'd better hope I find them and teach them a lesson. Otherwise, you'll be the one getting a beating tonight,' he snarls at her. 'Yes, Master,' she mewls back at him, her demure voice barely carrying through the wind for you to hear. Katherine inhales sharply as she hears the cheetah speak. You look over to her as she whispers, 'That's Lauren!'";
	WaitLineBreak;
	say "     Not realizing you were holding your breath, you exhale when you realize the task of finding Lauren has just become immensely simpler. You'll have to deal with the wolf, of course, but at least you know what needs to be done. You manage a half-step out from behind the bush to try speaking with the couple before Katherine grabs you. 'Wait,' she hisses, catching you off guard. 'I... I know him too.' You look at her expectantly, silently asking the obvious question. She does nothing to hide the disgust in her voice as she utters his name. 'Reese. That bastard.' She snarls as forgotten memories begin to return to her.";
	say "     Before you can enquire any further, your tough alpha bitch steps out to confront the couple. 'Hey!' she shouts at them. Reese twirls his head in Katherine's direction at the exclamation. Katherine makes a show of taking a rather aggressive stance before continuing. 'Let her go before things get ugly. There's no one around to stop me this time.'";
	say "     Lauren gasps when she hears Katherine's voice, then quickly goes silent, ears flattening against her head. Reese notices the cat's reaction, and a wolfish grin spreads across his face. 'Ah,' he says, tugging on the leash again. 'So that bitch you used to call a friend finally has the courage to show her face around here again.' He looks up from the cheetah to address Katherine directly. 'Things are different this time, bitch,' he spits the word at her with vitriol. 'I've been waiting for a good opportunity to dish out some payback. And this new body is gonna make short work of you.' He flexes the powerful, rippling muscles of his alpha wolf form, showing off as he readies for a fight.";
	WaitLineBreak;
	say "     You're not entirely sure what's going on, but you don't like the way things are going. You make your own presence known by stepping up behind Katherine, letting her know she has the support of her Alpha. Reese growls as he sees you walk up, likely rethinking his chances with a new variable thrown in. It's a tense moment as you stare each other down, each side sizing the other up. You almost think he's going to put up a fight regardless, and with his powerful infection, he might actually stand a chance. But just then, a feral wyvern swoops in from overhead, breaking apart the stand-off. You dive for cover as it narrowly misses you with a glob of goo. Katherine isn't so lucky. She doesn't take a direct hit, but it's enough to bog her down and take her out of the fight. The wyvern turns its predatory eyes on her, but you draw it's attention to yourself instead. You see Reese take advantage of the opportunity to disengage, dragging Lauren behind him as he makes a break for it. He's managed to get away, and it looks like you'll have to fight your way out of this one on your own.";
	now inasituation is true;
	challenge "Wyvern";
	if fightoutcome < 20:	[ victory over wyern ]
		say "     You quickly rush over to Katherine after defeating the wyvern, concerned for your bitch's well-being. She appears to be okay. The goop hasn't fully hardened yet, and she's already managed to get most of it off. You help her free herself of the last remnants as the wyvern limps away. 'Thanks Alpha,' she says to you as she finally pulls her left foot free. As you pull her into your arms, you run your fingers through her long fur, making a fruitless effort to remove the sticky mess from her coat. She closes her eyes at the pleasurable sensation, but she'll clearly need a bath when you make it back to the library.";
		say "     After a short pause, she says, 'Damn, that coward Reese got away, and he took Lauren with him.' You wrap an arm around her shoulders to console her as you start to walk back to the library. 'He won't be so lucky next time. I'll make sure it,' she says with a burning passion in her eyes. Sensing the ferocity with which she speaks, you inquire a little more about Lauren and Reese. You're still a little confused on what transpired, and there's clearly some history here you're not privy to yet. Katherine, her own arm wrapped around your shoulder as you walk, tightens her grip a little more but remains silent. After a moment or two she speaks. 'It's a bit personal. I'd rather not get into it if that's alright with you?' You nod your head in understanding. 'If we can find Lauren again, I'll explain then.' You simply enjoy each other's company in silence for the remainder of the trip, until you finally arrive back at the library.";
		if library computer is powered and Player is male:
			WaitLineBreak;
			say "     You walk Katherine downstairs to the showers in the bunker, insisting that you help her get clean. She huffs at you, feeling more than capable of taking care of herself, but relents to her alpha as you guide her under one of the showerheads. You turn on the water, and she yips and shivers at the cold flow of water now running through her fur. It just won't do to have your bitch uncomfortably cold, so you strip off your clothes and join her, rubbing her down to begin warming her up.";
			say "     You focus on the task at hand at first, dutifully cleaning Katherine's beautiful brown and black coat. The remaining wyvern groop falls to the floor, harmlessly spinning away down the drain. While hesitant at first, your German shepherd begins to enjoy the luxurious treatment, allowing you to massage her body under the flowing water. Soon, your hands switch from firm scrubbing to lewd groping, and she eagerly returns the favor, tracing her paws along the curves of your body and tickling your skin with the tips of her claws.";
			say "     By now your [cock of player] cock is raging hard. Katherine has it gripped firmly between her paw pads while you grope her breasts, the water splashing between you both. She brings her lips to your own and kisses you deeply. When she pulls back, she says, 'I can't take it anymore!' She turns away from you and firmly plants her hands on the shower wall, raising her tail to present you with her dripping pussy. 'Fuck me, Alpha!'";
			WaitLineBreak;
			say "     You're not one to refuse an eager bitch. Maybe a little too keen, you slam her entire body up against the wall and hilt yourself in a single thrust. Despite their smaller size, Katherine's breasts are squished out to the side from the force of it all, and her cheek is pressed up against the wet tile as she moans in pleasure. You hold yourself inside her, enjoying the feel of her clamping down on you and her tail writhing with joy, trapped between your bodies. Gripping her tightly with one hand on her hips and one on her head, you slowly withdraw. You slam into her again, and she utters something like a mix between a growl and a bark.";
			say "     You repeat the process again and again, and each time the shepherd barks in excitement. Soon you've worked up a pace of fierce, frenzied fucking, with your bitch moaning and barking your name. 'Yes Alpha. Harder. Harder!' she screams. Like a good Alpha, you give her what she wants. You reach around to grab her breasts and bite down on her neck from behind. Fucking your bitch after proving your worth in a fight, you feel absolutely invincible. With your bodies so in tune, you climax together, and you pump your German shepherd full of cum as her muscles milk you for everything you're worth.";
			say "     Coming down from your sexual high, you stand for a moment as you rest inside Katherine. The canine herself pants from the exertion, satiated by your performance. You pull out from her tight tunnel, and your [cum load size of player] load slips down her legs. The running water from the shower quickly cleans away the traces of your romp, and you each give yourselves another rinse before shutting off the water. Katherine gives you a peck on the cheek as you redress. 'That was fantastic, babe.' You return the gesture before heading back up to the main floor of the library.";
		[else:]		[ alternate to shower scene for victory? ]
	else if fightoutcome > 19 and fightoutcome < 30:	[ defeated by wyvern ]
		if WYVGEN is 0:		[ Male wyvern ]
			say "     The wyvern delivers a final blow that knocks you to the ground. It looms over you, quite intimidating with it's size. Grabbing you in it's jaw, it carries you over to where Katherine is still struggling to free herself from her gooey cage. Then it drops you onto the hard ground, knocking the breath out of you as you land on your back. You wonder what exactly it's doing, but the answer starts to become clear when you see it's red shaft starting to grow from it's genital slit.";
			say "     The wyvern then grabs Katherine in its mouth, forcibly removing her from the goop as she's powerless to stop it. It drops her on top of you. The two of you are barely given a moment to recover before it slams one of its winged hands down on the German shepherd's back, pinning you both in place. Katherine looks you in the eyes, not that she has much choice given the current predicament, and she yelps as she feels something wet and throbbing creep between both your legs.";
			WaitLineBreak;
			say "     The wyvern keeps you both pinned as it slides its massive cock between your bodies. It's intent on using you both as a makeshift onahole! The pressure builds as it presses its cock forward, until you're no longer able to see Katherine's face over the tip of the saurian shaft. As it withdraws, your canine companion gives an involuntary moan, the wyvern's ridges stimulating her nethers. You feel your own privates similarly stimulated. But the wyvern cares not for you or your bitch's comfort, and it begins eagerly thrusting away.";
			say "     The fucking is rough and rapid, and the pair of you are left gasping for air as the winged creature keeps you pinned down against its cock with its large claw. Katherine nearly passes out, whether from pleasure or pain, you can't tell. Just when it feels like you can take no more, the wyvern cums, a massive wave of white liquid rushing forth from its member. The rhythmic throbbing of its cock against your body feels decadently lewd. Most of its cum lands harmlessly on the street, but both your face and Katherine's are spattered by stray splashes. Content for the moment, the wyvern's dick retreats back into its slit before it releases you and jumps into the air.";
			WaitLineBreak;
			say "     Your bitch is left lying atop you, panting from the experience. She unconsciously licks your face clean before coming to her senses. 'Ah, what happened?' she asks. You recount the past hour back to her, and a wave of emotion washes over her face as you mention Lauren and Reese. You're still perplexed by the encounter between the former acquaintances, but when you ask her about it, she hesitates. 'It's not a pleasant memory. At least not what I can remember.' She fidgets atop you. 'Maybe we can talk about it later, when we find Lauren again.' You drop the subject and help Katherine back up.";
		else if WYVGEN is 1:	[ Female wyvern ]
			say "     The wyvern delivers a final blow that knocks you to the ground. It looms over you, and you glance over to Katherine. A moment of panic and confusion washes over you when you see she's no longer there, but you catch a glimpse of her tail as she dashes into her old house. At least she's safe inside. You scramble backwards a bit as the wyvern approaches, intent on having it's way with you. But just as it's about to grab you in it's maw, a shout from Katherine catches its attention. She's returned, and grasped in her hand is a Molotov cocktail rapidly scavenged from her old possessions. 'Leave my Alpha alone!' she shouts as she hurls the flaming bottle.";
			say "     The makeshift weapon crashes against the hardened scales of the massive beast, washing them with flames. It does no damage to the winged lizard, but its feral mind panics nonetheless. Overcome with fright, it quickly takes to the skies, leaving its prey behind. Katherine gives a sigh of relief as she walks over to you, helping you up from the ground. 'Not sure what I would have done if that hadn't worked,' she comments. She looks you over, then gives you a quick nuzzle and a lick on the cheek after determining you're okay.";
			say "     You thank her, then ask how the hell she managed to scrounge up a Molotov. 'Well, after seeing Lauren and Reese, a lot more memories started to come back to me. A lot of useless things, but my stash of alcohol was one of 'em.' She gives you a toothy smile. 'Sure came in handy. Just a shame that coward Reese got away.' You wrap your arm around her appreciatively as you start guiding her back to the library, figuring she's had enough adventure for today.";
			say "     Along the way back, you inquire a little more about Lauren and Reese. You're still a little confused on what transpired, and there's clearly some history here you're not privy to yet. Katherine, her arm wrapped around your shoulder as you walk, tightens her grip a little more but remains silent. After a moment or two she speaks. 'It's a bit personal. I'd rather not get into it if that's alright with you?' You nod your head in understanding. 'If we can find Lauren again, I'll explain then.' You simply enjoy each other's company in silence for the remainder of the trip, until you finally arrive back at the library. You see Kahterine off back to her usual spot, while you turn your mind to the rest of the adventures that lie in wait in the nanite-infested city.";
		else:
			say "ERROR: KIRKAT002 - Please report on the FS Discord";
	else:	[ flee from wyvern ]
		say "     You dash away from the wyvern, barely managing to avoid it's snapping jaws. You maneuver between the suburban houses, leaving the gargantuan beast unable to follow. It roars in frustration before giving up the chase. Having given it the slip, you're able to sneak your way over a few fences and yards, ending up on the next street over. There's no way for you to make your way back without confronting the winged lizard again. You'll just have to hope that Katherine can fend for herself. She's a tough bitch after all. With a clear route back to the library, you make your way to safety once again. Several times along the way, you think you can make out the deep moans of pleasure from a large creature, carried faintly on the wind, but it's hard to tell.";
		say  "     Back home once again, you spend a while cleaning up and recovering from your outing. After an hour or two, you're in the middle of cleaning out your pack and taking inventory when Katherine angrily bursts through the library doors. Her fur is matted and slimy from her ordeal, and she glares at you with a look that would have even a demon cowering in fear. You know exactly what's happened, and you're at a loss for what to say. The angry canine doesn't utter a word to you as she heads downstairs to clean up.";
		say "     You give the German shepherd some time to herself before you go down to speak to her. She's sitting on one of the cots, [if Sarah is in Bunker and Colleen is in Bunker]venting away to Sarah and Colleen[else if Sarah is in Bunker]venting away to Sarah[else]silently brooding to herself[end if]. When you approach, [if Sarah is in Bunker and Colleen is in Bunker]the two other women glace at you before leaving the room, seemingly finding something else they need to do right now[else if Sarah is in Bunker]Sarah quickly sits up and leaves the room, intent on finding somewhere else to be[else]the canine gives you another angry glare, but remains resolutely silent[end if]. In an effort to make your apology clear, you drop down to your knees before her and clasp your hands as if in prayer, ready to beg forgiveness. Before you can utter a word, Katherine surprises you by speaking first.";
		WaitLineBreak;
		say "     'Your gonna make this up to me,' she growls at you, seizing the initiative. 'You're my Alpha, and I'm your Bitch. That means I'll be loyal to a T, and I'll always back you up, whatever you decide.' You listen attentively to her angry tone, relieved that she's at least speaking to you now. 'But that [italic type]doesn't[roman type] mean you get to throw me away and leave me like I'm just some useless whore.' Her eyes begin to tear up as she continues. 'I might be a bitch, but I'm still an alpha bitch. You're just as much mine as I'm yours.' She gives a long sigh after letting her emotions loose upon you, then abruptly crosses her legs and arms. 'Now. I expect to have some say in this relationship. You'd better show me why you think I'm worth keeping around, else I just might leave.'";
		say "     You bring your eyes down to the floor in shame, unsure how to proceed. Your gaze comes to rest on Katherine's feet dangling off the bed in front of you, and you're suddenly filled with an idea. You reach out and grab her canid paws. Her eyes widen in surprise, but she doesn't stop you. You lift one of her hind paws up close, squeezing lightly on her pad and spreading her toe beans. Then you kiss her foot gently, showing her just how much you appreciate her. You realize she does have a point. She's your Bitch, but as her Alpha, you have a responsibility to care for and love her. It's time to show her just how much you care.";
		say "     You uncross her legs to grab at her other foot and afford it the same treatment. You can't see her face, busy as you are, but she smiles down at you, eager to see where this leads. Once both paws have been lovingly showered with affection, you move your lips northward, kissing her shins. Then you push her knees apart to get at her thighs, smooching higher and higher. Finally, you arrive at her pussy, damp with excitement. It seems your apology has been accepted. You lick your lips before digging in, causing the shepherd to moan in delight. 'That's right. Worship me,' she encourages you, grabbing you by the back of the head and pressing your lips against her own.";
		WaitLineBreak;
		say "     You continue to lick away at Katherine's snatch for what feels like the better part of an hour. You vary your approach by switching between probing with your tongue and playing with her clit. More than once you withdraw entirely to gently kiss her belly, giving her a rest to build up the suspense before suddenly thrusting your fingers inside her. By the end of it all, she's lying back on the bed after five or six orgasms, with you comfortably nestled between her muscled legs.";
		say "     You crawl up to lie next to your bitch, who's panting after your treatment. You kiss her and she eagerly returns it, embracing you tightly with her furry body. 'I'm sorry,' you say to her when she gives you a moment to breath. 'Don't be sorry,' she says. 'Just be a better Alpha.' Then she kisses you again.";
		say "     When things calm down, you talk it out for a bit, recounting what happened to each other while you were separated, and you expect from each other in the future. But reflecting back on the day's events, you have to ask her just what happened with Lauren and Reese. She gives a sad-sounding sight. 'It's a bit personal,' she says. 'I'd rather not get into it if that's alright with you? If we can find Lauren again, I'll explain then.' You nod your head in understanding, not wanting to press her further, then get up to return to your normal adventures.";
		now XP of Katherine is 0;
	now inasituation is false;
	now HP of Katherine is 4;

Section 2 - Sex

to say KatherineSexCheck:
	if lastfuck of Katherine - turns < 4:
		if HP of Katherine < 50:
			[ Normal Katherine ]
			say "     'Sorry Alpha,' she says with a hint of disappointment in her voice. 'I'm still a bit exhausted from last time. Maybe if you give me a break for a bit, I can make it up to you later.' Your bitch gives you a knowing wink before sauntering off, raising her tail to give you a nice view as she departs.";
		else:
			[ Mindless Katherine ]
			say "     ";
	else:
		say "[KatherineSexMenu]";

to say KatherineSexMenu:
	if HP of Katherine is 10 or (HP of Katherine < 10 and a random chance of 1 in 5 succeeds):
		say "     Katherine smiles as you approach, recognizing the familiar twinkle in your eye. Your bitch knows you well. Before you can even say anything, she drops down onto all fours and slowly crawls over to you. She paws at your clothes, eager to play with you. 'Does my Alpha want to have some fun with their bitch?' She wags her tail as you stare down at her, deciding how you want to take her. [bold type]What would you like to do?[roman type][line break]";
	else if HP of Katherine > 49:
		say "     ";
	else:
		say "     Katherine smiles as you approach, recognizing the familiar twinkle in your eye. She saunters over into your personal space, swaying her hips seductively and grabbing you by the waist. 'So,' she whispers in a husky tone. A shudder shoots up your spine in excitement. 'Did you want to have a little fun?' The dog has quickly taken control of the situation, but she's at least giving you the option of how you'd like to pass the time. [bold type]What would you like to do with her?[roman type][line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Fuck Her";
		now sortorder entry is 1;
		now description entry is "Show the bitch a good time by fucking her pussy";
		[]
		choose a blank row in table of fucking options;
		now title entry is "Cowgirl";
		now sortorder entry is 2;
		now description entry is "Let her take charge and ride you";
		[]
		if HP of Katherine is 10:
			choose a blank row in table of fucking options;
			now title entry is "Doggystyle";
			now sortorder entry is 3;
			now description entry is "Engage in some pet play and fuck her like a dog";
			[]
			choose a blank row in table of fucking options;
			now title entry is "Blowjob";
			now sortorder entry is 4;
			now description entry is "Have her worship your cock";
			[]
		else if HP of Katherine is 50:
			choose a blank row in table of fucking options;
			now title entry is "Blowjob";
			now sortorder entry is 3;
			now description entry is "Use her mouth for your pleasure";
			[]
	if Player is female:
		choose a blank row in table of fucking options;
		now title entry is "Receive Oral";
		now sortorder entry is 10;
		now description entry is "Put the bitch's mouth to work on your pussy";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Eat Her Out";
	now sortorder entry is 20;
	now description entry is "Make your bitch feel good by licking her pussy";
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
					say "[KatherineFuck1]";
				else if nam is "Cowgirl":
					say "[KatherineCowgirl1]";
				else if nam is "Doggystyle":
					say "[KatherineDoggy1]";
				else if nam is "Blowjob":
					if HP of Katherine < 50:
						say "[KatherineBlowjob1]";
					else:
						say "[KatherineBlowjob2]";
				else if nam is "Receive Oral":
					say "[KatherineOral1]";
				else if nam is "Eat Her Out":
					say "[KatherinePleasure1]";
				now lastfuck of Katherine is turns;
				now Level of Katherine is 1;
				increase XP of Katherine by 1;
				wait for any key;
		else if calcnumber is 0:
			say "     Deciding you're not in the mood after all, you wave the German shepherd off, leaving her to her own devices.";
			now sextablerun is 1;
	clear the screen and hyperlink list;

to say KatherineFuck1:
	say "[gsbFuckKatherine]";
	NPCSexAftermath Katherine receives "PussyFuck" from Player;

to say KatherineCowgirl1:
	now gsbBuffer is 1;
	say "[gsbDom]";
	NPCSexAftermath Katherine receives "PussyFuck" from Player;

to say KatherineDoggy1:
	[ doggystyle, then she falls asleep on crotch, wakes you up with blowjob ]
	say "     ";
	NPCSexAftermath Katherine receives "PussyFuck" from Player;
	NPCSexAftermath Katherine receives "OralCock" from Player;

to say KatherineBlowjob1:
	[ blowjob on all fours ]
	say "     ";
	NPCSexAftermath Katherine receives "OralCock" from Player;

to say KatherineBlowjob2:
	[ use mindless Katherine's mouth ]
	say "     ";
	NPCSexAftermath Katherine receives "OralCock" from Player;

to say KatherineOral1:
	now MaxHP of Katherine is Energy of Katherine;
	now Energy of Katherine is 7;
	say "[gsbOralKatherine]";
	now Energy of Katherine is MaxHP of Katherine;
	NPCSexAftermath Katherine receives "OralPussy" from Player;

to say KatherinePleasure1:
	now MaxHP of Katherine is Energy of Katherine;
	now Energy of Katherine is 7;
	now gsbBuffer is 1;
	say "[gsbPleasureKatherine]";
	now Energy of Katherine is MaxHP of Katherine;
	NPCSexAftermath Player receives "OralPussy" from Katherine;

Katherine ends here.
