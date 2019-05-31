Version 1 of Sheng by Rikaeus begins here.
[Version 1 - Introduction of Sheng and his Shop + two sex scenes]

[   Loyalty of Sheng                                       ]
[   0: Hasn't visited the shop and met him                 ]
[   1: Has met him and visited the shop                    ]
[   2: Was warned about what to expect during sex          ]
[   3: Has had sex with him despite the warnings           ]
[   4: Has met Sheng outside of the shop                   ]
[   5: Has agreed to go further in the relationship        ]

[   hp of Sheng                                            ]
[   0: Haven't Unlocked Non-Transformative Potions         ]
[   1: Unlocked Non-Transformative Potions                 ]

Section 1 - First meeting

after going to White Tiger Alchemy Shop while Loyalty of Sheng is 0:
	say "     Pushing the door to the store open you hear a little ding from the bell and take a look around. You're not exactly sure what you'd expect an alchemy store to look like to be honest. What this place [italic type]does[roman type] look like is a medicine shop at first glance, what with all the jars of herbs and liquids. But that gets shot out of your mind rather quickly when you see the practical impossibilities in glass containers on the shelves. For example, there's one jar that appears to contain a vortex of fire in it. As you however move to get closer to it, you hear a deriding, although you don't know how it's possible, cough from your right.";
	say "     Turning to the source of the sound you spot a rather fancy dressed white tiger. With the dark green vest, button-up shirt, leather skirt, and ankle-length coat you're pretty damn sure that he wouldn't be out of place of a fantasy novel. 'Are you going to buy something?' The tiger asks in a deep, almost purring voice that has a slight bit of annoyance to it. Figuring you'd best answer his question you ask him what he sells, which prompts him to raies his eyebrow, giving you the idea he thinks you're stupid for asking the returning question. 'This is an alchemy shop...' he drawls out, cementing that previous thought of yours. You tentatively put out the suggested answer that he sells potions.";
	WaitLineBreak;
	say "     '[if bodyname of player is listed in infections of CanineList]Good doggy[else if Player is neuter or player is herm]Good job peon[else if Player is male]Good boy[else if Player is female]Good girl[end if], looks like you know the basics,' he says in a condescending tone though you can tell there [italic type]is[roman type] a little bit of praise in his words, causing you to feel embarrassed. 'But I feel like I should throw you a bone and offer you more information.' The tiger says this part with a chuckle as if it's an inside joke to him, causing you to stare at him oddly. He moves out from behind the counter and leans against the front of it.  'Currently I sell transformative alchemy potions. Before you hurt your small brain trying to contemplate what exactly that means, they are basically concoctions that change you into one of the many... creatures that you see wandering the city outside Atlantis,' he says, sneering when speaking about the various beings created by the nanites.";
	say "     You comment on that, asking if he's not one of those creatures, causing him to look at you in complete horror. 'No! Absolutely not, I am what you might call a mythical being, I am [italic type]natural[roman type] unlike them,' he says with a look of contempt. With a wince you ask him if he thinks that then why make potions that turn people into them then. That causes his face to soften before he speaks. 'I find the creatures themselves and how they came to be, the nanites that is, unnatural. The person themself I care nothing for and I can talk perfectly fine to, if not be a bit wary of their motives, as your kind is a randy bunch.' The tiger says with a raised brow. You let out a chuckle and admit that's true considering the people you've ran into. 'Anyways, finishing this conversation off, as I do have work to do, if you would like to purchase something, my name is Sheng and I'm one of the Four Lords of Atlantis,' the white furred male says before returning behind the counter, leaving you in the store.";
	now Loyalty of Sheng is 1;
	now PlayerMet of Sheng is true;

Section 2 - Room

Table of GameRoomIDs (continued)
Object	Name
White Tiger Alchemy Shop	"White Tiger Alchemy Shop"

[Room Declaration]
White Tiger Alchemy Shop is a room.
White Tiger Alchemy Shop is north of Atlantis City Market.
The description of White Tiger Alchemy Shop is "[WhiteTiger]".
earea of White Tiger Alchemy Shop is "Atlantis".

to say WhiteTiger:
	say "     As you look around you observe that the shop clearly has some old Asiatic influences from the building's inner and outer design in architecture and decoration. You're pretty sure it wouldn't look out of place on a street about three hundred or so years ago in China. At first glance you'd think it'd be easy to tell what kind of store it is, as lining the shelves are jars upon jars of various herbs and liquids, which makes you think medicine shop. However, upon noticing the glass containers containing minerals, metals, and woods as well as jugs of water. On top of that you would be able to spot various see through balls that contained swirling vortexes of fire. Thankfully though it was Sheng, the owner, who explained this place was an alchemy shop. Moving your gaze to the back of the shop you manage to spot the white tiger who raises an imperious look at you, as if expecting you to buy something or leave.";

Section 3 - Npc

Table of GameCharacterIDs (continued)
object	name
Sheng	"Sheng"

Sheng is a man.
[physical details as of game start]
Humanity of Sheng is 80. [is thousands of years old]
ScaleValue of Sheng is 3. [human size]
Cock Count of Sheng is 1. [has a cock]
Cock Length of Sheng is 10. [has an 10 inch cock]
Ball Size of Sheng is 4. [size of balls]
Ball Count of Sheng is 2. [has a pair of balls]
Cunt Count of Sheng is 0. [no vagina]
Cunt Depth of Sheng is 0. [Doesnt have a vagina to get stretched]
Cunt Tightness of Sheng is 0. [Doesnt have a vagina to get stretched]
Nipple Count of Sheng is 2. [Has two normal nipples]
Breast Size of Sheng is 0. [Doesn't have breasts really]
[Basic Interaction states as of game start]
PlayerMet of Sheng is false.
PlayerRomanced of Sheng is false.
PlayerFriended of Sheng is false.
PlayerControlled of Sheng is false.
PlayerFucked of Sheng is false.
OralVirgin of Sheng is false.
Virgin of Sheng is false.
AnalVirgin of Sheng is false.
PenileVirgin of Sheng is false.
SexuallyExperienced of Sheng is true.
The description of Sheng is "[ShengDesc]".
The conversation of Sheng is { "<This is nothing but a placeholder!>" }.
The scent of Sheng is "     The white tiger gives off a smell of herbs and spices with what appears to be an underlying scent of tea.".
Sheng is in White Tiger Alchemy Shop.

to say ShengDesc:
	say "     Glancing over at the tiger you see the male is currently standing at the counter, hunched over a bunch of papers, possibly alchemical formulae. Ignoring that for now you look him over and take in his clothing. What the male is wearing is something you definitely wouldn't see outside of a fantasy book. First and foremost the tiger is wearing a dark green vest over a white button up shirt that's accompanied by a sea-green bowtie. Trailing your eyes downward you notice that instead of pants he's wearing a leather skirt that's held up by a belt made of similar material. Topping the outfit off, is a large lighter green than his vest coat that goes all the way down to his ankles, embossened with tigers dancing all over the edges. [if Loyalty of Sheng > 1]Having been staring at the male for a while it's not unbelievable that he's noticed you looking. He sends you a superior smirk that makes you twitch a bit.[else]Having been staring at him for a while it's not unbelievable that he's noticed you looking. He sends you a look that says either buy something or get out.[end if]";

instead of conversing the Sheng:
	say "     Making your way up to the back of the room you stand before the large counter that doubles as the place people put their purchases and where Sheng does some of his work. Said white tiger looks at you half with interest half with boredom, as if asking you to say what you want.";
	say "[ShengTalkMenu]";

to say ShengTalkMenu:
	LineBreak;
	say "What do you want to talk with Sheng about?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask about the four lords";
	now sortorder entry is 1;
	now description entry is "Learn about him and his other comapnions";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask about his attitude";
	now sortorder entry is 2;
	now description entry is "Ask why the shopkeeper is so arrogant";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask what's in the potions";
	now sortorder entry is 3;
	now description entry is "Ask what he uses to make the potions";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask if he only sells transformative potions";
	now sortorder entry is 4;
	now description entry is "Ask if he only sells what's listed";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Buy Something";
	now sortorder entry is 5;
	now description entry is "Possibly purchase one of his potions";
	[]
	if loyalty of Sheng is 4:
		choose a blank row in table of fucking options;
		now title entry is "Relationship";
		now sortorder entry is 6;
		now description entry is "Ask to take the relationship further";
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
				if nam is:
				-- "Ask about the four lords":
					say "[ShengTalk1]";
				-- "Ask about his attitude":
					say "[ShengTalk2]";
				-- "Ask what's in the potions":
					say "[ShengTalk3]";
				-- "Ask if he only sells transformative potions":
					say "[ShengTalk4]";
				-- "Buy Something":
					say "[ShengPotionBuy]";
				-- "Relationship":
					say "[ShengTalk5]";
				WaitLineBreak;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the white tiger who just scoffs at you before getting back to work.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say ShengTalk1:
	say "     At the mention of the other lords, the white tiger in front of you scoffs. '[if loyalty of Sheng is 5 and bodyname of player is listed in infections of CanineList]Puppy[else if loyalty of Sheng is 5]Pet[else if bodyname of player is listed in infections of CanineList]Doggy[else if Player is neuter or player is herm]Peon[else if Player is male]Boy[else if Player is female]Girl[end if], that's a topic that I'd rather not talk about,' he says, rolling his eyes. Nevertheless you push the topic causing him to let out a groan of annoyance before sighing. 'If you aren't aware, I am part of a council of advisors for King Poseidon known as the Four Lords.' Sheng says with a look of superiority. Nodding along, you ask the white tiger to continue. 'Our group consists of me, Sheng the White Tiger, Lord of West Atlantis, Serafino the Vermillion Phoenix, Lord of South Atlantis, Astor the Azure Dragon, Lord of East Atlantis, and Kuo the Black Tortoise, Lord of North Atlantis,' the white tiger explains in detail.";
	say "     Curious, you ask what he means by Lord of West Atlantis, which causes Sheng to smirk, and hold up a paw to stare at it. 'Well, as we are advisors for King Poseidon, this means we are also the voices for the people in our region. I for example speak for the people in the West,' the white tiger says as he acts as if he's polishing his claws. Deciding to move onto a different question before pointing out that his attitude might not be conducive to helping commoners you ask him if the others run stores as well. 'Well, I know that hyperactive bundle of feathers Serafino runs a spa, Astor spends way too much time at his restaurant but it helps him connect with his people, and that irritating Kuo teaches people at his dojo.' Sheng says, each mention of his fellow lords, showing what he thinks of them. However, by now you think you should change the topic as the tiger seems frustrated with it.";

to say ShengTalk2:
	say "     Mentioning his arrogant, holier-than-thou attitude, the tiger looks at you funny. 'You act as if I'm not above the lot of you.' Sheng says with a deep pur that rumbles through your bones. '[if loyalty of Sheng is 5 and bodyname of player is listed in infections of CanineList]Puppy, [else if loyalty of Sheng is 5]Pet, [else if bodyname of player is listed in infections of CanineList]Doggy, [else if Player is neuter or player is herm]Peon, [else if Player is male]Boy, [else if Player is female]Girl, [end if]I am [italic type]thousands[roman type] of years old. I know far more many things than you do and ever will,' he says with a look that clearly says he believes otherwise. Realizing that currently this topic isn't going to get you anywhere without him being pissed, perhaps you'll ask about it again when he trusts you more?";

to say ShengTalk3:
	say "     'I'm going to hope you're smart enough to be talking about the ingredients other than what you see in the shop, yes?' The white tiger asks, gesturing to everything here. You tentatively nod though you do make a comment that even with all the proof of items in front of you, you have no clue what goes to what potion. 'There is that, but I do have the right to protect my recipe don't I?' He says with a deep chuckle. You begrudge him that but you ask him if there's anything he could tell you. 'Oh, are you curious, eh [if loyalty of Sheng is 5 and bodyname of player is listed in infections of CanineList]puppy[else if loyalty of Sheng is 5]pet[else if bodyname of player is listed in infections of CanineList]doggy[else if Player is neuter or player is herm]peon[else if Player is male]boy[else if Player is female]girl[end if]? Even for a little bit of information?' He purrs deeply[if Loyalty of Sheng is 2], sending shivers through your body[else if Loyalty of Sheng is 5 and tailname of player is listed in infections of CanineList], causing you to let out a soft moan and wag your tail, which makes Sheng smirk and pet your head[else if loyalty of Sheng is 5], causing you to let out a soft moan, which makes Sheng smirk and pet your head[end if].";
	say "     'Well, if you must know, one of the key ingredients in the transformative potions is... semen,' the white tiger says, barking a laugh when your face changes into an expression of shock at that. Wait, he uses cum in the items he sells? 'You honestly didn't expect it to be possible to change people into those... creatures without some of the original base material, did you?' He asks you increduously. Honestly, to be fair, with how much Sheng thinks of himself, yes you did, but if you say that bit out loud he'd probably react badly, so you just sasy yes. Your answer appears to appease the tiger, who smiles and waves it off.";
	WaitLineBreak;
	say "     'No, I may be good, but not that good. Alchemy requires give and take to get results, sure I could make a potion with ingredients that represented the traits of the creature, but you wouldn't get the same results,' he hums before drumming his fingers on the counter. 'But nevertheless, I've given you an inkling and that should be good for you, no?' The white tiger asks you in a tone that books no other answer than yes. Nevertheless you do say that was good enough information for now, resulting in him nodding and giving you a haughty look. 'Despite the enjoyable conversation that was I need to get back to work, afterall I am the only one who works here.' Sheng says, returning to his papers, jotting down a few notes, obviously on alchemical research, leaving you to stand in the store.";

to say ShengTalk4:
	if loyalty of Sheng < 5:
		say "     Mentioning that the only things you've seen on his list of potions for sale were transformative potions, you ask if he sells anything else. That causes him to quirk an expression of dispassionate interest towards you. 'Nothing that you'd be able to access at the moment for sure.' Sheng says in a somewhat kurt tone. That statement confirming that he [italic type]does[roman type] have other types of potions you ask why not. 'Because, for one I don't know you that well. Secondly, I don't sell those potions to people who do not have my interest, and [bold type]you[roman type] do not hold my interest at the moment [if Player is herm or player is neuter]peon[else if Player is male]boy[else if Player is female]girl[end if],' the tiger says with a deriding tone. You realize you aren't going to get anywhere with this topic until you somehow either get respect from the tiger or catch his interest and you feel the second one is far more likely with his attitude.";
	else:
		say "     Your master gives you a contemplative look and look before nodding. 'You've definitely garnered my interest [if bodyname of player is listed in infections of CanineList]puppy[else]pet[end if], so tell you what,' he says, pulling you closer and causing your pulse to race and your body to heat up in excitement as you nod eagerly[if tailname of player is listed in infections of CanineList] and wag your tail[end if]. 'As long as you keep being a good [if bodyname of player is listed in infections of CanineList]puppy[else]pet[end if], I'll sell you my non-transformative potions, how's about that?' Sheng tells you, causing you to jump at him and lick his face. That just causes him to chuckle and shout down pet, which you obediently do. 'Alrighty then, for now I'll only be selling one of them, perhaps overtime there'll be more but you'll have to see...' Your master says with a wink.";
		now HP of Sheng is 1;

to say ShengTalk5:
	say "     Stepping up closer to the counter you try your best to look your master in the eyes but you end up dropping your own to his chest which just causes him to chuckle. '[if bodyname of player is listed in infections of CanineList]Doggy, [else if Player is neuter or player is herm]Peon, [else if Player is male]Boy, [else if Player is female]Girl, [end if]do you have something that you wish to ask?' The albino tiger says with a mirthful tone. You nod slightly and then speak up, saying that you wish to take the next step in your relationship, finally managing to look upward. When you do, you see that your master's eyebrows are raised and he has a curious look on his face.";
	say "     'Oh? You do my pet? I'm not entirely sure you know what this entails.' He says, looking at his claws before buffing them on his outfit. You say that you don't care but as soon as you start he stops you with a paw. 'No, you must know what comes next first, I will not have you running blind into this and ultimately regretting it in the end,' your master says before crouching under the counter. You hear some shuffling before he comes up with a locked box encrusted in jewels. 'This, [if bodyname of player is listed in infections of CanineList]doggy,[else if player is neuter or player is herm]pet,[else if player is male]boy,[else if player is female]girl,[end if] is the next step to our relationship.' The albino tiger says before taking out a key and unlocking the box.";
	WaitLineBreak;
	say "     Inside the box appears to be a shimmering blue silk collar with an emblem of tiger on it. 'This is a magical collar that will bind you to me as my pet and as thus it is unremovable. On top of that, it will endeavor you to release your inhibitions about acting like a pet around me.' Your master explains, causing you to give him a look and ask if it's like brainwashing which causes him to shake his head. 'Not at all, think of it more as collar courage so to speak. It simply gives you the bravery to do certain things that you'd normally not do, specifically pet actions,' he says seemingly happy that you asked that question rather than taking it at face value. 'So, now that I've told you, are you sure that you still want it?' Sheng asks giving you a questioning look.";
	say "     [bold type]Do you wish to take this step in your relationship with your master?[roman type][line break]";
	say "     [link]Y[as]y[end link] - Of course!";
	say "     [link]N[as]n[end link] - Not yet...";
	if player consents:
		say "     Nodding eagerly, your master just chuckles and picks up the collar and with a snap of his fingers it opens up. He then gestures for you to lean forward, of which you happily do so. Taking the neck item he wraps it around your neck, it snaps shut, and you instantly feel a wave of happiness go over you as you realize that you're finally owned by the white tiger. You suddenly do something you'd thought that you would never do, at least without the right amount of courage, and jump at him, hugging him and licking at his face, causing your master to chuckle and pet you on the head. 'I see my [if bodyname of player is listed in infections of CanineList]puppy[else]pet[end if] enjoys their collar.' He says, looking down at you with a smile. You nod happily, after which the white tiger puts you down. 'Now, your master needs to get back to work, be a good pet and stay out of trouble okay?' He says with a firm look causing you to nod and step back, allowing him to return to his job.";
		now sheng's pet collar is equipped;
		add "Sheng's Pet" to Traits of player;
		now loyalty of Sheng is 5;
	else:
		say "     You shake your head, saying that you don't want to go further at the moment. Your master nods and locks the box before returning to under the counter. 'If you wish to go further, then come talk to me again and we'll discuss this.' The white tiger says, with a soft tone, causing you to nod before allowing him to return to his work.";

Section 3 - Buying potions

to say ShengPotionBuy:
	LineBreak;
	say "Vocalizing that you wish to purchase something, the tiger presents you with a list of items and you note that each seems to cost two vials of demon seed. Which potion do you wish to buy?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Sea Otter";
	now sortorder entry is 1;
	now description entry is "Transform into a Sea Otter";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Husky Alpha";
	now sortorder entry is 2;
	now description entry is "Transform into an Alpha Husky";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Blacktail Stag";
	now sortorder entry is 3;
	now description entry is "Transform into a Stag";
	[]
	if hp of Sheng is 1:
		choose a blank row in table of fucking options;
		now title entry is "Lust Potion";
		now sortorder entry is 4;
		now description entry is "Purchase a Lust Potion";
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
				if nam is:
				-- "Sea Otter":
					say "[ShengOtterPotionSale]";
				-- "Husky Alpha":
					say "[ShengHuskyPotionSale]";
				-- "Blacktail Stag":
					say "[ShengStagPotionSale]";
				-- "Lust Potion":
					say "[ShengLustPotionSale]";
				WaitLineBreak;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You shake your head at his list of potions and say there's nothing you want which just causes the white tiger to shrug.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say ShengOtterPotionSale:
	say "     You trail your finger down the list before pointing at the one that says Sea Otter. The tiger nods at your choice before speaking up. 'You wish to have that one?' Sheng asks you. You nod your head and he hums before going over to his shelves. Plucking up a potion, he walks back over and sets it onto the counter. 'I hope you have the payment I'm asking for,' he says, looking at you sternly.";
	if carried of demon seed > 1:
		say "     [bold type]Aware that you are carrying enough vials of demon seed, do you want to give it to him?[roman type][line break]";
		say "     [link]Y[as]y[end link] - Yeah!";
		say "     [link]N[as]n[end link] - Nah.";
		if Player consents:
			say "     You promptly hand over the vials, to which the alchemist gladly gives you the potion. Excited to use your product right away, you uncork the bottle and down it, feeling it kick in right away. As this happens, you notice that Sheng has gone back to work.";
			infect "Sea Otter";
			infect "Sea Otter";
			infect "Sea Otter";
			decrease carried of demon seed by 2;
		else:
			say "     Shaking your head you say that you've changed your mind, causing the tiger to scoff. 'Don't waste my time, if you're gonna say you're gonna buy something then do so.' Sheng says with a slight glare. Shrugging your shoulders you just let the male get back to work, leaving you to yourself in the shop.";
	else:
		say "     Chuckling nervously when you realize you don't have enough vials of demon seed, the white tiger glares at you. 'Please return to me when you actually have the required payment.' Sheng says before he returns to his own work, leaving you to yourself in the shop.";

to say ShengHuskyPotionSale:
	say "     You trail your finger down the list before pointing at the one that says husky. The tiger nods at your choice before speaking up. 'You wish to have that one?' Sheng asks you. You nod your head and he hums before going over to his shelves. Plucking up two different potion vials, he walks back over and sets them onto the counter. 'I hope you have the payment I'm asking for,' he says, looking at you sternly.";
	if carried of demon seed > 1:
		say "     [bold type]Aware that you are carrying enough vials of demon seed, do you want to give it to him?[roman type][line break]";
		say "     [link]Y[as]y[end link] - Yeah!";
		say "     [link]N[as]n[end link] - Nah.";
		if Player consents:
			if hasgills is not 1:
				say "     Eyeing you up and down Sheng walks over to his potion shelf and grabs a ocean blue filled vial before setting it down in front of you. 'I have no clue how you got down here in the first place without them, but this potion gives you gills. The transformation you're aiming to purchase cannot breathe underwater so I'm giving you this for free so you don't drown,' the tiger says with a tone that says he'd rather charge you for it but he'd probably also prefer you not to choke on water. Shrugging your shoulders you take it and chug it before feeling something tingle at your neck. Afterwards he gestures with his hand as if asking for the vials of demon seed.";
				now hasgills is 1;
			say "     You promptly hand over the payment which prompts the tiger to ask you a question. 'Alright, so this one has two versions, a male and a female. Which one do you want?' He asks, his tone sounding as if he wants the answer promptly. Looking closely at the vials you see that one is labeled Alpha Husky and the other is labeled Female Husky, which makes it fairly obvious as to which is which.";
			say "     [bold type]Which vial do you wish to buy?[roman type][line break]";
			say "     [link](1)[as]1[end link] - Alpha Husky";
			say "     [link](2)[as]2[end link] - Female Husky";
			now calcnumber is 0;
			while calcnumber < 0 or calcnumber > 2:
				say "Choice? (1-2)>[run paragraph on]";
				get a number;
				if calcnumber is 1 or calcnumber is 2:
					break;
				else:
					say "Invalid choice. Type [link]1[end link] to A or [link]2[end link] to B.";
			if calcnumber is 1:
				say "     You point at the Alpha Husky vial, causing Sheng to nod and slide it over to you, after which you chug the potion, feeling the effects kick in. As you turn to thank the alchemist he's sadly already back at work, so instead you return to the middle of the store.";
				infect "Husky Alpha";
				infect "Husky Alpha";
				infect "Husky Alpha";
				decrease carried of demon seed by 2;
			else if calcnumber is 2:
				say "     You point at the Female Husky vial, causing Sheng to nod and slide it over to you, after which you chug the potion, feeling the effects kick in. As you turn to thank the alchemist he's sadly already back at work, so instead you return to the middle of the store.";
				infect "Husky Bitch";
				infect "Husky Bitch";
				infect "Husky Bitch";
				decrease carried of demon seed by 2;
		else:
			say "     Shaking your head you say that you've changed your mind, causing the tiger to scoff. 'Don't waste my time, if you're gonna say you're gonna buy something then do so.' Sheng says with a slight glare. Shrugging your shoulders you just let the male get back to work, leaving you to yourself in the shop.";
	else:
		say "     Chuckling nervously when you realize you don't have enough vials of demon seed, the white tiger glares at you. 'Please return to me when you actually have the required payment.' Sheng says before he returns to his own work, leaving you to yourself in the shop.";

to say ShengStagPotionSale:
	say "     You trail your finger down the list before pointing at the one that says Stag. The tiger nods at your choice before speaking up. 'You wish to have that one?' Sheng asks you. You nod your head and he hums before going over to his shelves. Plucking up the needed potion vial, he walks back over and sets it onto the counter. 'I hope you have the payment I'm asking for,' he says, looking at you sternly.";
	if carried of demon seed > 1:
		say "     [bold type]Aware that you are carrying enough vials of demon seed, do you want to give it to him?[roman type][line break]";
		say "     [link]Y[as]y[end link] - Yeah!";
		say "     [link]N[as]n[end link] - Nah.";
		if Player consents:
			if hasgills is not 1:
				say "     Eyeing you up and down Sheng walks over to his potion shelf and grabs a ocean blue filled vial before setting it down in front of you. 'I have no clue how you got down here in the first place without them, but this potion gives you gills. The transformation you're aiming to purchase cannot breathe underwater so I'm giving you this for free so you don't drown,' the tiger says with a tone that says he'd rather charge you for it but he'd probably also prefer you not to choke on water. Shrugging your shoulders you take it and chug it before feeling something tingle at your neck. Afterwards he gestures with his hand as if asking for the vials of demon seed.";
				now hasgills is 1;
			say "     You promptly hand over the payment which prompts the tiger to hand you your purchase. Accepting it, you uncork the vial and chug it, feeling it take affect rather instantly. Wanting to turn and thank Sheng you see he's already back to work sadly, leaving you in the middle of the store.";
			infect "Blacktail Stag";
			infect "Blacktail Stag";
			infect "Blacktail Stag";
		else:
			say "     Shaking your head you say that you've changed your mind, causing the tiger to scoff. 'Don't waste my time, if you're gonna say you're gonna buy something then do so.' Sheng says with a slight glare. Shrugging your shoulders you just let the male get back to work, leaving you to yourself in the shop.";
	else:
		say "     Chuckling nervously when you realize you don't have enough vials of demon seed, the white tiger glares at you. 'Please return to me when you actually have the required payment.' Sheng says before he returns to his own work, leaving you to yourself in the shop.";

to say ShengLustPotionSale:
	say "     You trail your finger down the list before pointing at the one that says Lust Potion. The tiger nods at your choice before speaking up. 'You wish to have that one pet?' Sheng asks you. You nod your head and he hums before going over to his shelves. Plucking up a potion, a bright pink one, he walks back over and sets it onto the counter. 'I hope you have the payment I'm asking for,' he says, looking at you sternly.";
	if carried of demon seed > 1:
		say "     [bold type]Aware that you are carrying enough vials of demon seed, do you want to give it to him?[roman type][line break]";
		say "     [link]Y[as]y[end link] - Yeah!";
		say "     [link]N[as]n[end link] - Nah.";
		if Player consents:
			say "     You pass over the vials to your master and he gladly takes them and passes over the potion. You pocket it safely, so that it doesn't break. The white tiger chuckles and gives you a smirk. 'Now pet, I don't mind if you plan to use that on me but remember to take care of the resulting problem.' He says with a look that causes shivers to go up your spine as he returns to work.";
			decrease carried of demon seed by 2;
			increase carried of lust potion by 1;
		else:
			say "     Shaking your head, you say that you'll possibly get one later but not now. Your master nods and puts away the vial. 'Alright pet, just let me know if you want one, just remember what the cost is.' The white tiger says before returning to work.";
	else:
		say "     Realizing you don't have enough demon seed you shake your head and your master tsk's before returning the vial to the shelf. 'Remember pet, I require two vials to give you anything from my store.' He says with a deep sigh before going back to the counter to work.";

Section 4 - Sex

instead of fucking Sheng:
	if (lastfuck of Sheng - turns < 3): [You sexed the tiger in the last 9 hours]
		say "The noble tiger gives you a disparaging look as you try to subtly seduce him into sex. 'As much as I would like to play with you pet, some of us have to work,' he says before promptly ignoring you and getting back to work.";
	else if Loyalty of Sheng is 1:
		say "     When you vocalize your desires to the tiger he arches a look at you. 'I'm sure you've noticed it in the way I talk but there are certain... warnings I must give you before we engage in intimate relations,' the albino feline says with a careful tone, causing you to become curious. 'I do not treat my partners as equals in the bedroom.' Sheng states bluntly. You ask him what exactly he means by that, a couple different things running through your mind. 'Rightly put, it means while in my bend or under my paws, you are my pet and I treat pets [italic type]far[roman type] more differently than non-pet as you'll see,' the tiger says with a tone that makes something curl inside you. 'Now, if you can handle this warning, or even embrace it, then I'll be happy to take you on as bed partner,' he says, looking you firmly in the eyes, waiting for your decision.";
		now Loyalty of Sheng is 2;
		if BodyName of Player is listed in infections of TaurList or BodyName of Player is listed in infections of NoLegList:
			say "     However he then takes a quick look at your body, sighing before speaking up. 'However, I guess for now, you can sit on the thought as we can't exactly do anything with your current body shape.' Sheng says, gesturing in your direction. You give him a rather confused look, asking him what he means. 'Well, first of all, you'll have to do certain tasks during our scenes that your form disallows, so please come back to me when you have only two legs,' the white tiger instructs firmly before returning to his work, allowing you to contemplate his words.";
		else:
			say "[ShengSexMenu]";
	else if BodyName of Player is listed in infections of TaurList or BodyName of Player is listed in infections of NoLegList:
		say "     Looking at you for a second your master sighs. 'What have you done with yourself pet? I don't mind you changing your looks but...' He says before trailing off and gesturing at your body. 'Please come back to me when you have a different body type, specifically two legs, as I do have you potentially doing things that have need of said limbs,' the white tiger says with a firm instructing tone before returning to his work, leaving you to mull over his words.";
	else if bodyname of Player is listed in infections of CanineList and tailname of player is listed in infections of CanineList:
		say "     'Oh, does my doggy want to play?' Your master asks, with a smirk and a purr, swishing his tail which causes you to wag your own in result.";
		say "[ShengSexMenu]";
	else:
		say "     The white tiger gives you a smirk before gesturing you over. 'Oh, so my little pet wants to please me huh?' Sheng asks with a purr, his tail swishing behind him.";
		say "[ShengSexMenu]";

to say ShengSexMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Worship his body";
	now sortorder entry is 1;
	now description entry is "Use your tongue to explore his body.";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Counter Fuck";
	now sortorder entry is 2;
	now description entry is "Get fucked over the counter.";
	[]
	if bodyname of Player is listed in infections of CanineList and tailname of player is listed in infections of CanineList and loyalty of Sheng is 5:
		choose a blank row in table of fucking options;
		now title entry is "Walk the Dog";
		now sortorder entry is 3;
		now description entry is "Have master take his puppy on a [']walk['].";
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
				if (nam is "Worship his body"):
					say "[ShengSex1]";
				if (nam is "Counter Fuck"):
					say "[ShengSex2]";
				if (nam is "Walk the Dog"):
					say "[ShengDogSex1]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You mumble an apology and say you're not up for it, which gets a frown from the tiger but he just pets you on the head.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say ShengSex1:
	if Loyalty of Sheng is 2 and bodyname of player is listed in infections of CanineList and tailname of player is listed in infections of CanineList:
		say "     Instinctually knowing what's probably expected of you, you get on your knees and crawl over to him, reaching him in a decent time. When you to get to Sheng, you open your mouth to speak but he holds up a hand to stop you. 'Ah! Dogs do not speak, they only bark, unless addressed and talking of such things, when we're like this you'll call me Master, do you understand doggy?' The domineering white tiger asks with a firm look down towards you. You nod, which causes your... master to smile at you and pat your head before scratching it, making you let out a sound of happiness and wag your tail. Following your instincts, you nuzzle that hand before moving to his pantleg, taking in the warmth emanating from underneath his clothes.";
		say "     'Is my pet interested in his master's body?' The tall white tiger asks, giving you a rumbling purr that sends pleasurable shivers throughout your body. Nodding your head rapidly you bark loudly, which just causes your dominant partner to chuckle loudly. 'Well, I guess you do deserve a treat, after all you're doing pretty well for your first time as my puppy.' Sheng says before snapping his fingers, which you're pretty sure is just for aesthetics and to show off. Suddenly all of his clothes vanish and instantly reappear on the counter in a neat pile, something that inwardly makes you whistle but outwardlty let out an arf of appreciation. With him being no longer being clothed though you can now nuzzle your face up to his furry thigh and inhale his musk, causing you to lap at it, taking in the sweat that was soaked in the fur.";
		WaitLineBreak;
		say "     Deciding to show your appreciation for this scent and taste, as well as your master's body you move elsewhere, suddenly facing his balls and sheathe. Getting a full hit of your... owner's musk you let out a whimper of pleasure before pushing your nose into his heavy sack. Promptly you start licking at it, enjoying the taste and scent coming from them due to what you presume to be a long day at work. As you worship the underpart of his scrotum his cock starts to peak out of its sheath, showing you a pink cock with bumps all over it that you are sure would feel wonderful in you. However, your interest at the moment isn't that currently, so instead, you momentarily drag your tongue up it, relishing in its taste, before giving your master a look, wishing you could talk right now.";
		say "     Thankfully though he appears to understand what you want, your desire to continue your worship upward. To show this, he nods his head which prompts you to redirect your tongue to his stomach and trail it upward, enjoying how it dips in between the lines forming his muscles which were hidden behind his clothes. While your tongue is busy your hands try to reach for your own crotch, however a hand grips your head tightly as soon as you try. 'No my little doggy, your first priority is me, not yourself.' Master says with a firm tone, booking no argument. Properly chastised you redirect one of your hands to his cock and start jerking him, making your owner grunt. With your free hand you reach it upward and start letting it roam on his chest as you continue to lick.";
		WaitlineBreak;
		say "     Seemingly getting tired of you just licking his stomach after a bit, you're pulled up onto your feet, assumingly given permission to stand. Right after that, your face is pushed into his chest, where you quickly latch onto one of his nipples, pulling at it lightly with your teeth. That gets a groan out of your master, followed by a moan when you twist your hand around his cock with a little bit more grip. 'Mmm, you're such a good puppy aren't you?' He says with pride. Suddenly you're flushed with emotions as a feeling of eagerness comes over you for pleasing your master, your tail wagging in abject happiness. With a new fervor, you lick and suck at the tiger's nipple like, well, an animal possessed.";
		say "     Your new excitement at serving the male before you appears to have the intended affect, especially when 	you start to jack him off faster. The white tiger leans his head back and begins to moan loudly, practically humping into your hand. It's not long after he starts doing this that you can feel his balls slowly tighten up against your body signifying that he's getting close to shooting. These signs make you proud of yourself, causing you to inwardly preen that you can make your master cum. Of course, as you think this, he lets loose, spilling himself all over your hand and stomach, whispering about how much a good puppy you are.";
		WaitLineBreak;
		say "     Thinking you're finished, you're rather shocked when your master suddenly picks you up and sets you on the counter in front of him, causing you to let out an arf of confusion. 'I think my puppy deserves a reward for doing such a good job, don't you think?' He asks you as he grabs a towel from under the counter and wipes himself clean. Right after that he quickly rids you of any clothes, if any and smirks at you. [if Player is herm]Reaching down with both hands your master lightly grips your already hard shaft and starts to stroke you slowly. Moving his other free paw to your pussy he slips a finger in and starts moving it in and out as he runs his hand over your cock. With a groan you can feel yourself close and it's not long before your body spasms and you feel your dick spill its load followed by your pussy leaking copious amounts of femcum. [else if Player is male]Reaching down with one of his hands he grasps ahold of your already hard shaft and begins to stroke it at a slow and tortuous pace. Whimpering you know by now not to beg him to move faster or to even hump the hand but it's so difficult. So instead you toy with your lip as he smirks down at you and teases you with his grip, going at a speed that's enough to keep you at the edge. However, when he suddenly quickens his strokes you let out a yelp as you start shooting your seed all over yourself. [else if Player is female]Your master reaches down with one of his paws and slips a finger into your pussy and starts to finger you at a rather slow pace. Your gasps seem to bring a smirk to his face despite the fact that this is supposed to be a reward for you. Biting at your lip, you hold yourself back from thrusting back on the finger as you know it'd probably get you scolded. Thankfully though the white tiger quickly speeds up his actions with his digit which causes you to moan loudly as femcum starts leaking from your pussy, your body writhing from pleasure. [else if Player is neuter]He appears to notice that you don't have anything visibly noticeable to play with but that doesn't deter him. Rather he holds a finger up for you to suck on, which you promptly do. After a few seconds, he pulls it out and positions it at your tight hole. Swirling it around the rosebud he waits a bit before pushing in and feeling around, as if searching for something. Suddenly you gasp and writhe in pleasure when his finger brushes up against something, that you're pretty sure is your prostate. Your gasps and moans cause your master to smirk at you and press at the bundle of nerves again, causing you to react again. He continues doing this for a while, the feelings building more and more despite your inability to cum until suddenly your body is wracked with spasms of orgasmic pleasure as it all is released at once. [end if]";
		say "     As you're practically laying on the counter, panting in pleasure and exhaustion, your master is taking the towel and patting you down. You send him a look of questioning as if wondering what he's doing, mixing it with a curious bark, causing him to chuckle. 'I can't leave my puppy dirty after all, you're pretty sweaty. Hmm, speaking of that...' He says, trailing off and going to a shelf of various colored potions before grabbing one. The white tiger promptly uncorks the bottle and pours some of it onto his paws before he starts running them all over your body. Your eyes flutter close in a sense of soothing relief as your master takes care of you with a massage. Occasionally as he works out a particular tense knot in your back he whispers in your ears about how you were such a good doggy today. Those words of praise send flutters of happiness throughout your body that wipe away the cloying blackness at the edges of your sanity.";
		WaitLineBreak;
		say "     Soon enough he's done and he gestures for you to get up, allowing you to finally notice that the smell that you worked up is gone and you now have the scent of flowers. However before you can get too distracted, your master grabs you lightly by the chin and directs your attention to him. 'You may speak now my puppy and ask your questions,' he says with a soft smile. Realizing that he's being serious about allowing you to talk, you ask what's with the massage? 'That? It's simple doggy. In something like what we did, aftercare is important,' the tiger says with a soft voice, something that really seems out of place for him. 'Aftercare is done at the end of any particularly stressful scene and it's done to reassure, usually, the sub that they're loved.' Your master says, putting an emphasis on his words. You blush at his words, as what he did definitely did bring you happiness.";
		say "     Promptly after that he begins to slowly begin to get dressed, continuing to speak as he does. 'The reason aftercare is done, or at least I do it. Is because if I don't reassure my pets then I'd be a pretty bad owner.' Your master says with a bit of dedication in his tone. Still putting on his clothes, you ask him why he treats his them better than others, despite still seeing himself superior to the pet. 'Oh? Well isn't it obvious? I own them, so taking care of them is a must,' he says firmly. You guess you get his point sort of. Soon enough the tiger is fully dressed, which prompts you to get up and put back on whatever your master took off of you. Once you're ready, you notice that the tiger has gone back to work, which leaves you standing in his store.";
		now Loyalty of Sheng is 3;
		now lastfuck of Sheng is turns;
		increase humanity of Player by 10;
		now PlayerFucked of Sheng is true;
	else if Loyalty of Sheng is 2:
		say "     Instinctually knowing what's probably expected of you, you get on your knees and crawl over to him, reaching him in a decent time. When you to get to Sheng, you open your mouth to speak but he holds up a hand to stop you. 'Ah! Pets do not speak unless addressed and speaking of such things, when we're like this you'll call me Master, do you understand pet?' The domineering white tiger asks with a firm look down towards you. You nod, which causes your... master to smile at you and pat your head before scratching it, making you let out a sound of happiness. Following your instincts, you nuzzle that hand before moving to his pantleg, taking in the warmth emanating from underneath his clothes.";
		say "     'Is my pet interested in his master's body?' The tall white tiger asks, giving you a rumbling purr that sends pleasurable shivers throughout your body. Nodding your head rapidly in a voiceless assent, which just causes your dominant partner to chuckle loudly. 'Well, I guess you do deserve a treat, after all you're doing pretty well for your first time as my pet.' Sheng says before snapping his fingers, which you're pretty sure is just for aesthetics and to show off. Suddenly all of his clothes vanish and instantly reappear on the counter in a neat pile, something that inwardly makes you whistle. With him being no longer being clothed though you can now nuzzle your face up to his furry thigh and inhale his musk, causing you to lap at it, taking in the sweat that was soaked in the fur.";
		WaitLineBreak;
		say "     Deciding to show your appreciation for this scent and taste, as well as your master's body you move elsewhere, suddenly facing his balls and sheathe. Getting a full hit of your... owner's scent you let out a whimper before pushing your nose into his heavy sack. Promptly you start licking at it, enjoying the taste and scent coming from them due to what you presume to be a long day at work. As you worship the underpart of his scrotum his cock starts to peak out of its sheath, showing you a pink cock with bumps all over it that you are sure would feel wonderful in you. However, your interest at the moment isn't that currently, so instead, you momentarily drag your tongue up it, relishing in its taste, before giving your master a look, wishing you could talk right now.";
		say "     Thankfully though he appears to understand what you want, your desire to continue your worship upward. To show this, he nods his head which prompts you to redirect your tongue to his stomach and trail it upward, enjoying how it dips in between the lines forming his muscles which were hidden behind his clothes. While your tongue is busy your hands try to reach for your own crotch, however a hand grips your head tightly as soon as you try. 'No my pet, your first priority is me, not yourself.' Master says with a firm tone, booking no argument. Properly chastised you redirect one of your hands to his cock and start jerking him, making your owner grunt. With your free hand you reach it upward and start letting it roam on his chest as you continue to lick.";
		WaitlineBreak;
		say "     Seemingly getting tired of you just licking his stomach after a bit, you're pulled up onto your feet, assumingly given permission to stand. Right after that, your face is pushed into his chest, where you quickly latch onto one of his nipples, pulling at it lightly with your teeth. That gets a groan out of your master, followed by a moan when you twist your hand around his cock with a little bit more grip. 'Mmm, you're such a good [if Player is herm or player is neuter]pet[else if Player is male]boy[else if Player is female]girl[end if] aren't you?' He says with pride. Suddenly you're flushed with emotions as a feeling of eagerness comes over you for pleasing your master. With a new fervor, you lick and suck at the tiger's nipple like, well, an animal possessed.";
		say "     Your new excitement at serving the male before you appears to have the intended affect, especially when 	you start to jack him off faster. The white tiger leans his head back and begins to moan loudly, practically humping into your hand. It's not long after he starts doing this that you can feel his balls slowly tighten up against your body signifying that he's getting close to shooting. These signs make you proud of yourself, causing you to inwardly preen that you can make your master cum. Of course, as you think this, he lets loose, spilling himself all over your hand and stomach, whispering about how much a good pet you are.";
		WaitLineBreak;
		say "     Thinking you're finished, you're rather shocked when your master suddenly picks you up and sets you on the counter in front of him. 'I think my pet deserves a reward for doing such a good job, don't you think?' He asks you as he grabs a towel from under the counter and wipes himself clean. Right after that he quickly rids you of any clothes, if any and smirks at you. [if Player is herm]Reaching down with both hands your master lightly grips your already hard shaft and starts to stroke you slowly. Moving his other free paw to your pussy he slips a finger in and starts moving it in and out as he runs his hand over your cock. With a groan you can feel yourself close and it's not long before your body spasms and you feel your dick spill its load followed by your pussy leaking copious amounts of femcum. [else if Player is male]Reaching down with one of his hands he grasps ahold of your already hard shaft and begins to stroke it at a slow and tortuous pace. Whimpering you know by now not to beg him to move faster or to even hump the hand but it's so difficult. So instead you toy with your lip as he smirks down at you and teases you with his grip, going at a speed that's enough to keep you at the edge. However, when he suddenly quickens his strokes you let out a yelp as you start shooting your seed all over yourself. [else if Player is female]Your master reaches down with one of his paws and slips a finger into your pussy and starts to finger you at a rather slow pace. Your gasps seem to bring a smirk to his face despite the fact that this is supposed to be a reward for you. Biting at your lip, you hold yourself back from thrusting back on the finger as you know it'd probably get you scolded. Thankfully though the white tiger quickly speeds up his actions with his digit which causes you to moan loudly as femcum starts leaking from your pussy, your body writhing from pleasure. [else if Player is neuter]He appears to notice that you don't have anything visibly noticeable to play with but that doesn't deter him. Rather he holds a finger up for you to suck on, which you promptly do. After a few seconds, he pulls it out and positions it at your tight hole. Swirling it around the rosebud he waits a bit before pushing in and feeling around, as if searching for something. Suddenly you gasp and writhe in pleasure when his finger brushes up against something, that you're pretty sure is your prostate. Your gasps and moans cause your master to smirk at you and press at the bundle of nerves again, causing you to react again. He continues doing this for a while, the feelings building more and more despite your inability to cum until suddenly your body is wracked with spasms of orgasmic pleasure as it all is released at once. [end if]";
		say "     As you're practically laying on the counter, panting in pleasure and exhaustion, your master is taking the towel and patting you down. You send him a look of questioning as if wondering what he's doing, causing him to chuckle. 'I can't leave my pet dirty after all, you're pretty sweaty. Hmm, speaking of that...' He says, trailing off and going to a shelf of various colored potions before grabbing one. The white tiger promptly uncorks the bottle and pours some of it onto his paws before he starts running them all over your body. Your eyes flutter close in a sense of soothing relief as your master takes care of you with a massage. Occasionally as he works out a particular tense knot in your back he whispers in your ears about how you were such a good pet today. Those words of praise send flutters of happiness throughout your body that wipe away the cloying blackness at the edges of your sanity.";
		WaitLineBreak;
		say "     Soon enough he's done and he gestures for you to get up, allowing you to finally notice that the smell that you worked up is gone and you now have the scent of flowers. However before you can get too distracted, your master grabs you lightly by the chin and directs your attention to him. 'You may speak now my pet and ask your questions,' he says with a soft smile. Realizing that he's being serious about allowing you to talk, you ask what's with the massage? 'That? It's simple pet. In something like what we did, aftercare is important,' the tiger says with a soft voice, something that really seems out of place for him. 'Aftercare is done at the end of any particularly stressful scene and it's done to reassure, usually, the sub that they're loved.' Your master says, putting an emphasis on his words. You blush at his words, as what he did definitely did bring you happiness.";
		say "     Promptly after that he begins to slowly begin to get dressed, continuing to speak as he does. 'The reason aftercare is done, or at least I do it. Is because if I don't reassure my pets then I'd be a pretty bad owner.' Your master says with a bit of dedication in his tone. Still putting on his clothes, you ask him why he treats his them better than others, despite still seeing himself superior to the pet. 'Oh? Well isn't it obvious? I own them, so taking care of them is a must,' he says firmly. You guess you get his point sort of.Soon enough the tiger is fully dressed, which prompts you to get up and put back on whatever your master took off of you. Once you're ready, you notice that the tiger has gone back to work, which leaves you standing in his store.";
		now Loyalty of Sheng is 3;
		now lastfuck of Sheng is turns;
		increase humanity of Player by 10;
		now PlayerFucked of Sheng is true;
	else if Loyalty of Sheng is 3 and bodyname of Player is listed in infections of CanineList and tailname of player is listed in infections of CanineList:
		say "     Knowing already what to do, you get on your knees and start to crawl over to your master. When you to get to him you look up at him with a excited, happy expression and bark, it causes him to chuckle at you. 'My puppy seems pretty eager today, aren't you?' He asks, to which you nod, making him smile at you and pat your head before scratching it, causing you to wag your tail excitedly at him. Turning to face the hand you nuzzle it with joy, before turning your attention to his pantleg and pressing your face against it, taking in the heat that emanates from behind the cloth, something that catches the attention of your master.";
		say "     'Is my puppy interested in his master's body?' The tall white tiger asks, giving you a rumbling purr that sends pleasurable shivers throughout your body. Nodding your head rapidly, you then barking in agreement, which just causes your dominant partner to chuckle loudly. 'Well, I guess you do deserve a treat, after all it wouldn't do well for me to deny my doggy.' Master says before snapping his fingers, which you're pretty sure is just for aesthetics and to show off. Suddenly all of his clothes vanish and instantly reappear on the counter in a neat pile, something that inwardly makes you whistle. With him being no longer being clothed though you can now nuzzle your face up to his furry thigh and inhale his musk, causing you to lap at it, taking in the sweat that was soaked in the fur.";
		WaitLineBreak;
		say "     Deciding to show your appreciation for this scent and taste, as well as your master's body you move elsewhere, suddenly facing his balls and sheathe. Getting a full hit of your owner's musk you let out a whimper of pleasure before pushing your nose into his heavy sack. Promptly you start licking at it, enjoying the taste and scent coming from them due to what you presume to be a long day at work. As you worship the underpart of his scrotum his cock starts to peak out of its sheath, showing you a pink cock with bumps all over it that you are sure would feel wonderful in you. However, your interest at the moment isn't that currently, so instead, you momentarily drag your tongue up it, relishing in its taste, before giving your master a look, knowing he would understand what you want.";
		say "     Just as you knew, the white tiger understood you, nodding his head to your request to move upwards. This prompts you to redirect your tongue to his stomach and trail it upward, enjoying how it dips in between the lines forming his muscles which were hidden behind his clothes. While your tongue is busy you take one of your hands and move it to your master's cock and begin stroking. This action causes him to let out a moan, showing that he clearly approves of your motions. Not wanting your other hand to be idle, you reach it upward and start letting it roam on his chest as you continue to lick and stroke.";
		WaitlineBreak;
		say "     Seemingly getting tired of you just licking his stomach after a bit, you're pulled up onto your feet, assumingly given permission to stand. Right after that, your face is pushed into his chest, where you quickly latch onto one of his nipples, pulling at it lightly with your teeth. That gets a groan out of your master, followed by a moan when you twist your hand around his cock with a little bit more grip. 'Mmm, you're such a good puppy aren't you?' He says with pride. Suddenly you're flushed with emotions as a feeling of eagerness comes over you for pleasing your master, causing you to wag your tail in abject happiness. With a new fervor, you lick and suck at the tiger's nipple like, well, an animal possessed.";
		say "     Your new excitement at serving the male before you appears to have the intended affect, especially when 	you start to jack him off faster. The white tiger leans his head back and begins to moan loudly, practically humping into your hand. It's not long after he starts doing this that you can feel his balls slowly tighten up against your body signifying that he's getting close to shooting. These signs make you proud of yourself, causing you to inwardly preen that you can make your master cum. Of course, as you think this, he lets loose, spilling himself all over your hand and stomach, whispering about how much a good puppy you are.";
		WaitLineBreak;
		say "     Thinking you're finished, you're rather shocked when your master suddenly picks you up and sets you on the counter in front of him. 'I think my doggy deserves a reward for doing such a good job, don't you think?' He asks you as he grabs a towel from under the counter and wipes himself clean. Right after that he quickly rids you of any clothes, if any and smirks at you. [if Player is herm]Reaching down with both hands your master lightly grips your already hard shaft and starts to stroke you slowly. Moving his other free paw to your pussy he slips a finger in and starts moving it in and out as he runs his hand over your cock. With a groan you can feel yourself close and it's not long before your body spasms and you feel your dick spill its load followed by your pussy leaking copious amounts of femcum. [else if Player is male]Reaching down with one of his hands he grasps ahold of your already hard shaft and begins to stroke it at a slow and tortuous pace. Whimpering you know by now not to beg him to move faster or to even hump the hand but it's so difficult. So instead you toy with your lip as he smirks down at you and teases you with his grip, going at a speed that's enough to keep you at the edge. However, when he suddenly quickens his strokes you let out a yelp as you start shooting your seed all over yourself. [else if Player is female]Your master reaches down with one of his paws and slips a finger into your pussy and starts to finger you at a rather slow pace. Your gasps seem to bring a smirk to his face despite the fact that this is supposed to be a reward for you. Biting at your lip, you hold yourself back from thrusting back on the finger as you know it'd probably get you scolded. Thankfully though the white tiger quickly speeds up his actions with his digit which causes you to moan loudly as femcum starts leaking from your pussy, your body writhing from pleasure. [else if Player is neuter]He appears to notice that you don't have anything visibly noticeable to play with but that doesn't deter him. Rather he holds a finger up for you to suck on, which you promptly do. After a few seconds, he pulls it out and positions it at your tight hole. Swirling it around the rosebud he waits a bit before pushing in and feeling around, as if searching for something. Suddenly you gasp and writhe in pleasure when his finger brushes up against something, that you're pretty sure is your prostate. Your gasps and moans cause your master to smirk at you and press at the bundle of nerves again, causing you to react again. He continues doing this for a while, the feelings building more and more despite your inability to cum until suddenly your body is wracked with spasms of orgasmic pleasure as it all is released at once. [end if]";
		say "     As you're practically laying on the counter, panting in pleasure and exhaustion, your master takes the towel and begins to pat you down, cleaning you up. After that he turns around and heads to the shelf of various colored potions, quickly grabbing one. Turning back to you, he uncorks it and puts a bit on his paws, lathering them up. Shortly after he begins to massages your body, aiming to remove the various knots in your back and shoulders. All the while he's doing this he's whispering in your ear about how you're such a good puppy, which causes you to practically preen in pride and happiness. When he's done, the tiger steps back and gets dressed himself, which leaves you to grab whatever he took off of you and put it back on. Once that's all said and done, you get off the counter and smile at him, before he promptly gets back to work, leaving you in the shop.";
		now lastfuck of Sheng is turns;
		increase humanity of Player by 10;
	else if Loyalty of Sheng is 3:
		say "     Knowing already what to do, you get on your knees and start to crawl over to your master. When you to get to him you look up at him with a excited, happy expression, which causes him to chuckle. 'My pet seems pretty eager today, aren't you?' He asks, to which you nod, causing him to smile at you and pat your head before scratching it, making you let out a sound of happiness. Turning to face the hand you nuzzle it with joy, before turning your attention to his pantleg and pressing your face against it, taking in the heat that emanates from behind the cloth, something that catches the attention of your master.";
		say "     'Is my pet interested in his master's body?' The tall white tiger asks, giving you a rumbling purr that sends pleasurable shivers throughout your body. Nodding your head rapidly in a voiceless assent, which just causes your dominant partner to chuckle loudly. 'Well, I guess you do deserve a treat, after all it wouldn't do well for me to deny my pet.' Master says before snapping his fingers, which you're pretty sure is just for aesthetics and to show off. Suddenly all of his clothes vanish and instantly reappear on the counter in a neat pile, something that inwardly makes you whistle. With him being no longer being clothed though you can now nuzzle your face up to his furry thigh and inhale his musk, causing you to lap at it, taking in the sweat that was soaked in the fur.";
		WaitLineBreak;
		say "     Deciding to show your appreciation for this scent and taste, as well as your master's body you move elsewhere, suddenly facing his balls and sheathe. Getting a full hit of your owner's scent you let out a whimper before pushing your nose into his heavy sack. Promptly you start licking at it, enjoying the taste and scent coming from them due to what you presume to be a long day at work. As you worship the underpart of his scrotum his cock starts to peak out of its sheath, showing you a pink cock with bumps all over it that you are sure would feel wonderful in you. However, your interest at the moment isn't that currently, so instead, you momentarily drag your tongue up it, relishing in its taste, before giving your master a look, knowing he would understand what you want.";
		say "     Just as you knew, the white tiger understood you, nodding his head to your request to move upwards. This prompts you to redirect your tongue to his stomach and trail it upward, enjoying how it dips in between the lines forming his muscles which were hidden behind his clothes. While your tongue is busy you take one of your hands and move it to your master's cock and begin stroking. This action causes him to let out a moan, showing that he clearly approves of your motions. Not wanting your other hand to be idle, you reach it upward and start letting it roam on his chest as you continue to lick and stroke.";
		WaitlineBreak;
		say "     Seemingly getting tired of you just licking his stomach after a bit, you're pulled up onto your feet, assumingly given permission to stand. Right after that, your face is pushed into his chest, where you quickly latch onto one of his nipples, pulling at it lightly with your teeth. That gets a groan out of your master, followed by a moan when you twist your hand around his cock with a little bit more grip. 'Mmm, you're such a good [if Player is herm or player is neuter]pet[else if Player is male]boy[else if Player is female]girl[end if] aren't you?' He says with pride. Suddenly you're flushed with emotions as a feeling of eagerness comes over you for pleasing your master. With a new fervor, you lick and suck at the tiger's nipple like, well, an animal possessed.";
		say "     Your new excitement at serving the male before you appears to have the intended affect, especially when 	you start to jack him off faster. The white tiger leans his head back and begins to moan loudly, practically humping into your hand. It's not long after he starts doing this that you can feel his balls slowly tighten up against your body signifying that he's getting close to shooting. These signs make you proud of yourself, causing you to inwardly preen that you can make your master cum. Of course, as you think this, he lets loose, spilling himself all over your hand and stomach, whispering about how much a good pet you are.";
		WaitLineBreak;
		say "     Thinking you're finished, you're rather shocked when your master suddenly picks you up and sets you on the counter in front of him. 'I think my pet deserves a reward for doing such a good job, don't you think?' He asks you as he grabs a towel from under the counter and wipes himself clean. Right after that he quickly rids you of any clothes, if any and smirks at you. [if Player is herm]Reaching down with both hands your master lightly grips your already hard shaft and starts to stroke you slowly. Moving his other free paw to your pussy he slips a finger in and starts moving it in and out as he runs his hand over your cock. With a groan you can feel yourself close and it's not long before your body spasms and you feel your dick spill its load followed by your pussy leaking copious amounts of femcum. [else if Player is male]Reaching down with one of his hands he grasps ahold of your already hard shaft and begins to stroke it at a slow and tortuous pace. Whimpering you know by now not to beg him to move faster or to even hump the hand but it's so difficult. So instead you toy with your lip as he smirks down at you and teases you with his grip, going at a speed that's enough to keep you at the edge. However, when he suddenly quickens his strokes you let out a yelp as you start shooting your seed all over yourself. [else if Player is female]Your master reaches down with one of his paws and slips a finger into your pussy and starts to finger you at a rather slow pace. Your gasps seem to bring a smirk to his face despite the fact that this is supposed to be a reward for you. Biting at your lip, you hold yourself back from thrusting back on the finger as you know it'd probably get you scolded. Thankfully though the white tiger quickly speeds up his actions with his digit which causes you to moan loudly as femcum starts leaking from your pussy, your body writhing from pleasure. [else if Player is neuter]He appears to notice that you don't have anything visibly noticeable to play with but that doesn't deter him. Rather he holds a finger up for you to suck on, which you promptly do. After a few seconds, he pulls it out and positions it at your tight hole. Swirling it around the rosebud he waits a bit before pushing in and feeling around, as if searching for something. Suddenly you gasp and writhe in pleasure when his finger brushes up against something, that you're pretty sure is your prostate. Your gasps and moans cause your master to smirk at you and press at the bundle of nerves again, causing you to react again. He continues doing this for a while, the feelings building more and more despite your inability to cum until suddenly your body is wracked with spasms of orgasmic pleasure as it all is released at once. [end if]";
		say "     As you're practically laying on the counter, panting in pleasure and exhaustion, your master takes the towel and begins to pat you down, cleaning you up. After that he turns around and heads to the shelf of various colored potions, quickly grabbing one. Turning back to you, he uncorks it and puts a bit on his paws, lathering them up. Shortly after he begins to massages your body, aiming to remove the various knots in your back and shoulders. All the while he's doing this he's whispering in your ear about how you're such a good pet, which causes you to practically preen in pride and happiness. When he's done, the tiger steps back and gets dressed himself, which leaves you to grab whatever he took off of you and put it back on. Once that's all said and done, you get off the counter and smile at him, before he promptly gets back to work, leaving you in the shop.";
		now lastfuck of Sheng is turns;
		increase humanity of Player by 10;

to say ShengSex2:
	if loyalty of Sheng is 2 and bodyname of player is listed in infections of CanineList:
		say "     Before you can approach the tiger he speaks in a commanding voice. 'Bend yourself over the counter puppy,' he says with a stern tone. Opening your mouth to say something, Sheng narrows his eyes before swatting your nose lightly. 'Bad doggy! While we are doing this, you don't speak, only bark, unless asked to. When you are spoken to, you will address me as Master, understand?' The tiger practically growls. You nod quickly, causing him to rub the top of your head softly. 'Good puppy.'He says with a smile. You then proceed to bend over the counter like he ordered, wondering what... your master in store for you.";
		say "     You're rather shocked when suddenly you can feel the cool air from the room on your body, alerting you to the fact that whatever you were wearing is gone. Looking left and right you notice that somehow your owner has magically removed them from your body and placed them in a neat pile at the end of the counter, far enough away from you. When another pile of textiles joins it you realize that it means that your master is naked as well. Quickly after that realization you bite back a groan when you feel a finger push at your hole. It manages to go in without much resistance, which leads you believe that he lubed up his digit to make it easier on you.";
		WaitLineBreak;
		say "     Your master continues to finger your hole with a single digit for a little bit before you promptly feel another. It causes you to wince slightly but just like the other it slips in with little resistance, causing you to let out a bark of pleasure and pain. 'Oh, is my puppy enjoying their master toying with their insides?' The white tiger says, more than likely with a smirk to his tone. Apparently satisfied with his actions, your owner begins to scissor your hole open, stretching it bit by bit. He does this for a couple minutes, pushing his digits in and out as well, trying his best to make sure you're nice and prepared.";
		say "     Soon enough though you feel the fingers vanish and something more blunt is placed at the entrance. With paws gripping your sides and a rough push, you feel your master's cock enter your hole, causing you to let out an even louder bark than before, practically gasping it out this time in pleasure and pain. However, the enjoyment is seemingly increased by the bumps in his length as they slowly push against your inner walls. It's not long until he's burrowed balls deep into you. Although, before you can get used to him being in you, he quickly pulls out and slams back in, causing thrums of pleasure to ripple throughout your body, making you let out a long woof.";
		WaitLineBreak;
		say "     After the first slam, your master begins to set a rapid pace fucking you, his furry balls slapping against your cheeks. With the constant moving in and out of your hole, the barbs are practically massaging your insides, causing constant pleasure to assault your body which in turn makes you release a stream of barks and woofs. It's safe to assume that your owner appreciates the sounds, as well as the tightness of your ass as you feel him rub the top of your head. 'Mmm, you feel really nice my puppy.' He says in a husky voice that sends shivers down your body. Your master ends up releasing some groans that mix with your own sounds that soon turn into growls.";
		say "     You can easily tell he's close as he loses himself further and further into the fuck, whispering about how good your hole is. As he gets towards his own climax, you're getting to your own, feeling your body tensing up. Mere seconds later as you feel this, your master slams into you one last time before fluid fills your ass. [if Player is herm]At the same time you feel your cock swell as cum shoots out of it in ropes, spilling all over the counter, mixing with the femcum that is dripping from your pussy rather heavily. [else if Player is neuter]At the same time you feel your entire body practically spazz with pleasure, every inch radiating with it due to your body's internal orgasm. [else if Player is male]At the same time you feel your cock swell as cum shoots out of it in ropes, spilling all over the counter, pooling beneath you and making quite a mess. [else if Player is female]At the same time your body is wracked with pleasure as your pussy begins to drip a lot of femcum, causing it to spill onto the counter and pool beneath you, making quite a mess. [end if]Your owner then pulls out and seems to duck down below the counter and quickly grab a towel.";
		WaitLineBreak;
		say "     As you're practically laying on the counter, panting in pleasure and exhaustion, your master is taking the towel and patting you down, taking the most care of your hole. You send him a look of questioning as if wondering what he's doing, causing him to chuckle. 'I can't leave my puppy dirty after all, you're pretty sweaty. Hmm, speaking of that...' He says, trailing off and going to a shelf of various colored potions before grabbing one. The white tiger promptly uncorks the bottle and pours some of it onto his paws before he starts running them all over your body. Your eyes flutter close in a sense of soothing relief as your master takes care of you with a massage. Occasionally as he works out a particular tense knot in your back he whispers in your ears about how you were such a good doggy today. Those words of praise send flutters of happiness throughout your body that wipe away the cloying blackness at the edges of your sanity.";
		say "     Soon enough he's done and he gestures for you to get up, allowing you to finally notice that the smell that you worked up is gone and you now have the scent of flowers. However before you can get too distracted, your master grabs you lightly by the chin and directs your attention to him. 'You may speak now my puppy and ask your questions,' he says with a soft smile. Realizing that he's being serious about allowing you to talk, you ask what's with the massage? 'That? It's simple little doggy. In something like what we did, aftercare is important,' the tiger says with a soft voice, something that really seems out of place for him. 'Aftercare is done at the end of any particularly stressful scene and it's done to reassure, usually, the sub that they're loved.' Your master says, putting an emphasis on his words. You blush at his words, as what he did definitely did bring you happiness.";
		WaitLineBreak;
		say "     Promptly after that he begins to slowly begin to get dressed, continuing to speak as he does. 'The reason aftercare is done, or at least I do it. Is because if I don't reassure my pets then I'd be a pretty bad owner.' Your master says with a bit of dedication in his tone. Still putting on his clothes, you ask him why he treats his them better than others, despite still seeing himself superior to the pet. 'Oh? Well isn't it obvious? I own them, so taking care of them is a must,' he says firmly. You guess you get his point sort of.Soon enough the tiger is fully dressed, which prompts you to get up and put back on whatever your master took off of you. Once you're ready, you notice that the tiger has gone back to work, which leaves you standing in his store.";
		now loyalty of Sheng is 3;
		increase humanity of Player by 10;
		now lastfuck of Sheng is turns;
		now PlayerFucked of Sheng is true;
	else if loyalty of Sheng is 2:
		say "     Before you can approach the tiger he speaks in a commanding voice. 'Bend yourself over the counter [if Player is herm or player is neuter]pet[else if Player is male]boy[else if Player is female]girl[end if],' he says with a stern tone. Opening your mouth to say something, Sheng narrows his eyes before swatting your nose. 'Bad! While we are doing this, you don't speak unless asked to. When you ar spoken to, you will address me as Master, understand?' The tiger practically growls. You nod quickly, causing him to rub the top of your head softly. 'Good [if Player is herm or player is neuter]pet[else if Player is male]boy[else if Player is female]girl[end if].'He says with a smile. You then proceed to bend over the counter like he ordered, wondering what... your master in store for you.";
		say "     You're rather shocked when suddenly you can feel the cool air from the room on your body, alerting you to the fact that whatever you were wearing is gone. Looking left and right you notice that somehow your owner has magically removed them from your body and placed them in a neat pile at the end of the counter, far enough away from you. When another pile of textiles joins it you realize that it means that your master is naked as well. Quickly after that realization you bite back a groan when you feel a finger push at your hole. It manages to go in without much resistance, which leads you believe that he lubed up his digit to make it easier on you.";
		WaitLineBreak;
		say "     Your master continues to finger your hole with a single digit for a little bit before you promptly feel another. It causes you to wince slightly but just like the other it slips in with little resistance. Though as he does this you do hear a chuckle come from your owner. 'I don't mind you making sounds pet, just don't say words.' he says with a laugh. As he says this he brushes one of his fingers against your bundle of nerves, causing you to let out a whimper. Apparently satisfied with his actions, your owner begins to scissor your hole open, stretching it bit by bit. He does this for a couple minutes, pushing his digits in and out as well, trying his best to make sure you're nice and prepared.";
		say "     Soon enough though you feel the fingers vanish and something more blunt is placed at the entrance. With paws gripping your sides and a rough push, you feel your master's cock enter your hole, causing you to gasp out loudly in both pain and pleasure. However, the enjoyment is seemingly increased by the bumps in his length as they slowly push against your inner walls. It's not long until he's burrowed balls deep into you. Although, before you can get used to him being in you, he quickly pulls out and slams back in, causing thrums of pleasure to ripple throughout your body, making you let out a moan.";
		WaitLineBreak;
		say "     After the first slam, your master begins to set a rapid pace fucking you, his furry balls slapping against your cheeks. With the constant moving in and out of your hole, the barbs are practically massaging your insides, causing constant pleasure to assault your body which in turn makes you release a stream of moans. It's safe to assume that your owner appreciates the sounds, as well as the tightness of your ass as you feel him rub the top of your head. 'Mmm, you feel really nice my pet.' He says in a husky voice that sends shivers down your body. Your master ends up releasing some groans of his own that soon turn into growls.";
		say "     You can easily tell he's close as he loses himself further and further into the fuck, whispering about how good your hole is. As he gets towards his own climax, you're getting to your own, feeling your body tensing up. Mere seconds later as you feel this, your master slams into you one last time before fluid fills your ass. [if Player is herm]At the same time you feel your cock swell as cum shoots out of it in ropes, spilling all over the counter, mixing with the femcum that is dripping from your pussy rather heavily. [else if Player is neuter]At the same time you feel your entire body practically spazz with pleasure, every inch radiating with it due to your body's internal orgasm. [else if Player is male]At the same time you feel your cock swell as cum shoots out of it in ropes, spilling all over the counter, pooling beneath you and making quite a mess. [else if Player is female]At the same time your body is wracked with pleasure as your pussy begins to drip a lot of femcum, causing it to spill onto the counter and pool beneath you, making quite a mess. [end if]Your owner then pulls out and seems to duck down below the counter and quickly grab a towel.";
		WaitLineBreak;
		say "     As you're practically laying on the counter, panting in pleasure and exhaustion, your master is taking the towel and patting you down, taking the most care of your hole. You send him a look of questioning as if wondering what he's doing, causing him to chuckle. 'I can't leave my pet dirty after all, you're pretty sweaty. Hmm, speaking of that...' He says, trailing off and going to a shelf of various colored potions before grabbing one. The white tiger promptly uncorks the bottle and pours some of it onto his paws before he starts running them all over your body. Your eyes flutter close in a sense of soothing relief as your master takes care of you with a massage. Occasionally as he works out a particular tense knot in your back he whispers in your ears about how you were such a good pet today. Those words of praise send flutters of happiness throughout your body that wipe away the cloying blackness at the edges of your sanity.";
		say "     Soon enough he's done and he gestures for you to get up, allowing you to finally notice that the smell that you worked up is gone and you now have the scent of flowers. However before you can get too distracted, your master grabs you lightly by the chin and directs your attention to him. 'You may speak now my pet and ask your questions,' he says with a soft smile. Realizing that he's being serious about allowing you to talk, you ask what's with the massage? 'That? It's simple pet. In something like what we did, aftercare is important,' the tiger says with a soft voice, something that really seems out of place for him. 'Aftercare is done at the end of any particularly stressful scene and it's done to reassure, usually, the sub that they're loved.' Your master says, putting an emphasis on his words. You blush at his words, as what he did definitely did bring you happiness.";
		WaitLineBreak;
		say "     Promptly after that he begins to slowly begin to get dressed, continuing to speak as he does. 'The reason aftercare is done, or at least I do it. Is because if I don't reassure my pets then I'd be a pretty bad owner.' Your master says with a bit of dedication in his tone. Still putting on his clothes, you ask him why he treats his them better than others, despite still seeing himself superior to the pet. 'Oh? Well isn't it obvious? I own them, so taking care of them is a must,' he says firmly. You guess you get his point sort of.Soon enough the tiger is fully dressed, which prompts you to get up and put back on whatever your master took off of you. Once you're ready, you notice that the tiger has gone back to work, which leaves you standing in his store.";
		now loyalty of Sheng is 3;
		increase humanity of Player by 10;
		now lastfuck of Sheng is turns;
		now PlayerFucked of Sheng is true;
	else if loyalty of Sheng is 3 and bodyname of Player is listed in infections of CanineList:
		say "     As you approach your master, you hear him speak in a commanding tone. 'Bend yourself over the counter puppy,' he says with a stern tone. When you quickly do as he says you feel a pat on you head as well as hear a chuckle. 'Good doggy you listen well to your master.' He says, his voice hinting at a smile, which causes you to inwardly preen for doing good for your owner but outwardly bark in happiness. You then wag your tail at the white tiger, clearly ready for whatever he has planned for you to do.";
		say "     You're not surprised when you suddenly can feel the cool air of the shop on your skin, showing that your master removed whatever you were wearing from you. Looking to your right you spot the pile of textiles at the end of the counter, far enough away from you. When another pile of textiles joins it you realize that it means that your master is naked as well, which gets you excited for what's to come. Quickly after that you let out a groan when you feel a finger push at your hole. It manages to go in without much resistance, as thankfully your master uses lube to prep you, otherwise it would've hurt a lot more.";
		WaitLineBreak;
		say "     Your master continues to finger your hole with a single digit for a little bit before you promptly feel another. It causes you to wince slightly but just like the other it slips in with little resistance. As he does this he brushes one of his fingers against your bundle of nerves, causing you to let out tiny little arf that turns into a bark of happiness. 'I'm glad my puppy is enjoying himself,' your master chuckles from behind you. Apparently satisfied with his actions, your owner begins to scissor your hole open, stretching it bit by bit, each gesture causing a quiet woof to come from your mouth. He does this for a couple minutes, pushing his digits in and out as well, trying his best to make sure you're nice and prepared.";
		say "     Soon enough though you feel the fingers vanish and something more blunt is placed at the entrance. With paws gripping your sides and a rough push, you feel your master's cock enter your hole, causing you to bark much louder than before in pain and pleasure. However, the enjoyment is seemingly increased by the bumps in his length as they slowly push against your inner walls. It's not long until he's burrowed balls deep into you. Although, before you can get used to him being in you, he quickly pulls out and slams back in, causing thrums of pleasure to ripple throughout your body, making you let out a long woof that sounds a bit like a moan.";
		WaitLineBreak;
		say "     After the first slam, your master begins to set a rapid pace fucking you, his furry balls slapping against your cheeks. With the constant moving in and out of your hole, the barbs are practically massaging your insides, causing constant pleasure to assault your body which in turn makes you release a barks and woofs. It's safe to assume that your owner appreciates the sounds, as well as the tightness of your ass as you feel him rub the top of your head. 'Mmm, you feel really nice my puppy.' He says in a husky voice that sends shivers down your body. Your master ends up releasing some groans of his own that mix with your own sounds, that soon turn into growls.";
		say "     You can easily tell he's close as he loses himself further and further into the fuck, whispering about how good your hole is. As he gets towards his own climax, you're getting to your own, feeling your body tensing up. Mere seconds later as you feel this, your master slams into you one last time before fluid fills your ass. [if Player is herm]At the same time you feel your cock swell as cum shoots out of it in ropes, spilling all over the counter, mixing with the femcum that is dripping from your pussy rather heavily. [else if Player is neuter]At the same time you feel your entire body practically spazz with pleasure, every inch radiating with it due to your body's internal orgasm. [else if Player is male]At the same time you feel your cock swell as cum shoots out of it in ropes, spilling all over the counter, pooling beneath you and making quite a mess. [else if Player is female]At the same time your body is wracked with pleasure as your pussy begins to drip a lot of femcum, causing it to spill onto the counter and pool beneath you, making quite a mess. [end if]Your owner then pulls out and seems to duck down below the counter and quickly grab a towel.";
		WaitLineBreak;
		say "     As you're practically laying on the counter, panting in pleasure and exhaustion, your master takes the towel and begins to pat you down, cleaning you up. After that he turns around and heads to the shelf of various colored potions, quickly grabbing one. Turning back to you, he uncorks it and puts a bit on his paws, lathering them up. Shortly after he begins to massages your body, aiming to remove the various knots in your back and shoulders. All the while he's doing this he's whispering in your ear about how you're such a good puppy, which causes you to practically preen in pride and happiness. When he's done, the tiger steps back and gets dressed himself, which leaves you to grab whatever he took off of you and put it back on. Once that's all said and done, you get off the counter and smile at him, before he promptly gets back to work, leaving you in the shop.";
		increase humanity of Player by 10;
		now lastfuck of Sheng is turns;
	else if loyalty of Sheng is 3:
		say "     As you approach your master, you hear him speak in a commanding tone. 'Bend yourself over the counter [if Player is herm or player is neuter]pet[else if Player is male]boy[else if Player is female]girl[end if],' he says with a stern tone. When you quickly do as he says you feel a pat on you head as well as hear a chuckle. 'Good [if Player is herm or player is neuter]pet[else if Player is male]boy[else if Player is female]girl[end if] you listen well to your master.' He says, his voice hinting at a smile, which causes you to inwardly preen for doing good for your owner. You then wiggle your butt, clearly ready for whatever he has planned for you to do.";
		say "     You're not surprised when you suddenly can feel the cool air of the shop on your skin, showing that your master removed whatever you were wearing from you. Looking to your right you spot the pile of textiles at the end of the counter, far enough away from you. When another pile of textiles joins it you realize that it means that your master is naked as well, which gets you excited for what's to come. Quickly after that you let out a groan when you feel a finger push at your hole. It manages to go in without much resistance, as thankfully your master uses lube to prep you, otherwise it would've hurt a lot more.";
		WaitLineBreak;
		say "     Your master continues to finger your hole with a single digit for a little bit before you promptly feel another. It causes you to wince slightly but just like the other it slips in with little resistance. As he does this he brushes one of his fingers against your bundle of nerves, causing you to let out a whimper that turns into a moan, showing how appreciative you are of his gestures. Apparently satisfied with his actions, your owner begins to scissor your hole open, stretching it bit by bit. He does this for a couple minutes, pushing his digits in and out as well, trying his best to make sure you're nice and prepared.";
		say "     Soon enough though you feel the fingers vanish and something more blunt is placed at the entrance. With paws gripping your sides and a rough push, you feel your master's cock enter your hole, causing you to gasp out loudly in both pain and pleasure. However, the enjoyment is seemingly increased by the bumps in his length as they slowly push against your inner walls. It's not long until he's burrowed balls deep into you. Although, before you can get used to him being in you, he quickly pulls out and slams back in, causing thrums of pleasure to ripple throughout your body, making you let out a moan.";
		WaitLineBreak;
		say "     After the first slam, your master begins to set a rapid pace fucking you, his furry balls slapping against your cheeks. With the constant moving in and out of your hole, the barbs are practically massaging your insides, causing constant pleasure to assault your body which in turn makes you release a stream of moans. It's safe to assume that your owner appreciates the sounds, as well as the tightness of your ass as you feel him rub the top of your head. 'Mmm, you feel really nice my pet.' He says in a husky voice that sends shivers down your body. Your master ends up releasing some groans of his own that soon turn into growls.";
		say "     You can easily tell he's close as he loses himself further and further into the fuck, whispering about how good your hole is. As he gets towards his own climax, you're getting to your own, feeling your body tensing up. Mere seconds later as you feel this, your master slams into you one last time before fluid fills your ass. [if Player is herm]At the same time you feel your cock swell as cum shoots out of it in ropes, spilling all over the counter, mixing with the femcum that is dripping from your pussy rather heavily. [else if Player is neuter]At the same time you feel your entire body practically spazz with pleasure, every inch radiating with it due to your body's internal orgasm. [else if Player is male]At the same time you feel your cock swell as cum shoots out of it in ropes, spilling all over the counter, pooling beneath you and making quite a mess. [else if Player is female]At the same time your body is wracked with pleasure as your pussy begins to drip a lot of femcum, causing it to spill onto the counter and pool beneath you, making quite a mess. [end if]Your owner then pulls out and seems to duck down below the counter and quickly grab a towel.";
		WaitLineBreak;
		say "     As you're practically laying on the counter, panting in pleasure and exhaustion, your master takes the towel and begins to pat you down, cleaning you up. After that he turns around and heads to the shelf of various colored potions, quickly grabbing one. Turning back to you, he uncorks it and puts a bit on his paws, lathering them up. Shortly after he begins to massages your body, aiming to remove the various knots in your back and shoulders. All the while he's doing this he's whispering in your ear about how you're such a good pet, which causes you to practically preen in pride and happiness. When he's done, the tiger steps back and gets dressed himself, which leaves you to grab whatever he took off of you and put it back on. Once that's all said and done, you get off the counter and smile at him, before he promptly gets back to work, leaving you in the shop.";
		increase humanity of Player by 10;
		now lastfuck of Sheng is turns;

to say ShengDogSex1:
	say "     Spotting something in the corner of your eye you see a leash. getting on all fours you clambor over to it and grab it in your mouth before taking it over to your master, wagging your tail happily at him. 'Oh, does my puppy want to go on a walk?' The white tiger asks, taking the item away from you. You nod your head and let out a bark of agreement, nudging your head eagerly at his knee, causing him to chuckle and scratch at your ears. 'Well then, who am I to deny my pet their exercise?' He says with a smile before taking the clip of the leash and hooking it to your collar.";
	say "     Your master then leads you out of the store, where you're suddenly met [if daytimer is day]with the glimmering light of the sun shining through the water and the bubble[else if daytimer is night]with the city lights and the radiance of the moon shining down through the water and bubble[end if]. As soon as you leave the doorway people are staring at the two of you but you aren't flushed with anything but pride as the tiger's puppy. Your master appears to show you around the market district, telling people how you're such a good doggy and even a few people scratch your ears after the tiger allows them to.";
	WaitLineBreak;
	say "     As your master is walking around with you crawling, a shady male approaches you two. The white tiger glares at him and instantly tells him off for something he says. 'I don't have my pet naked for the world to see because they're my puppy and not anyone else you insignificant peasant,' He sneers, sending a shiver up your spine as he protects you. The male just scoffs and walks away, leaving you and your master alone. The tall alchemy shop owner scratches your head and sighs before leading you away from the area and towards the park, probably figuring it'd be better than here.";
	say "     When you get there, he produces a ball from one of his pockets and seems to hold it as if asking you if you want to play fetch. Considering your current situation, it'd be dumb to say otherwise, so instead you just loll your tongue and then bark at him, implying a tone of agreement. Your master takes the toy and then tosses it in a direction, causing you to instantly dart after it as best as you can with your [italic type]graceful[roman type] movements. You manage to reach it and you try your hardest to get it in your mouth. Once it's inside you dash back on all fours to the white tiger and present it to him, pride brimming from all manner of your being. He chuckles at this before proceeding to throw it a few more times.";
	WaitLineBreak;
	say "     After half an hour of tossing the ball though, your master directs you to a bench where he sits and you can see his thick cock bulging in his pants. Here you have a sense of desire thrumming through you from his actions earlier when he protected you, so you nuzzle his crotch, causing the white tiger to chuckle at your ministrations. 'Does my puppy want to play with their bone?' He asks with a husky voice, causing you to bark in agreement and need. In response the male snaps his fingers and you feel an energy surround the two of you and the bench. 'There, now nobody will interrupt and hear you while you take care of your master's problem, does that make you happy?' Your master asks, to which you nod happily.";
	say "     The white tiger undoes his pants, revealing his growing cock, bumps and all. Eager to please, you immediately take him into your mouth, causing a quiet groan to come from your master. He places his paws on your head and encourages you to go deeper until you are soon deepthroating the entirety of his length. It only lasts a few seconds though before the white tiger relents and allows you air. Of course, you don't let that be the end of it, as you repeatedly go down on him, savoring the taste of precum that's leaking from the tip of his cock. By now your master is growling, clearly appreciating your actions.";
	WaitLineBreak;
	say "     However, as the minutes go by it's obvious that he's getting closer to climaxing, so you pick up the pace by licking and sucking harder at his cock. This has the added benefit of your master growling louder and whispering about how you're such a good puppy before suddenly grabbing at your head. The white tiger suddenly begins to thrust rapidly into your mouth, fucking your throat, in a clear desire to get off. Not wanting to stop him, you leave him be and just enjoy the ride as more and more precum spills into your mouth. Soon enough he lets a roar of pleasure leave his own mouth before planting himself all the way into your throat, letting off rope after rope of cum into your belly.";
	say "     After the few seconds needed to recover from his orgasm you're surprised when your master suddenly picks you up and sets you on his lap, stroking your head. The two of you just sit there, the white tiger having tucked away his cock after placing you on the bench, and relax with the alchemy shop owner scratching at your ears, which causes you to lazily wag your tail. It's not long before you end up nodding off due to the tranquility of it and the environment, all the while listening to the breathing of your master as he lazes on the seating as well.";
	WaitLineBreak;
	say "     So, you can't be surprised when you're suddenly awoken with a shake of the shoulder. 'Come on puppy, it's time to return to the shop,' the white tiger says with a chuckle at your bleary eyed look. You stretch and crawl off the bench as your master gets up as well. He leads the two of you back to the market distract where his alchemy shop is where you both enter and he then turns to you. 'I was very proud of you today, you did remarkably well,' he says with a smile before continuing. 'I would definitely love to do something like this again sometime soon my puppy.' The white tiger says before tapping your nose and returning to work.";
	now lastfuck of Sheng is turns;
	increase humanity of Player by 20;

Section 5 - Events

Table of GameEventIDs (continued)
Object	Name
Petted In Public	"Petted in Public"

Petted in Public is a situation.
Petted in Public is inactive.
The sarea of Petted in Public is "Atlantis".

when play begins:
	add Petted in Public to BadSpots of MaleList;
	add Petted in Public to BadSpots of FurryList;

after going to Atlantis City Park while Loyalty of Sheng is 3:
	say "     Wandering around the city you soon come upon the park. At first it looks like there's nobody you recognize here but you soon spot somebody familiar. Sitting in the portion of the park with mixed herbs and flowers is Sheng, when you notice him you instantly wander over which causes the white tiger to look up with a raised brow. The male is currently harvesting some of the plants, possibly for some of his potions. 'Lay right here pet while I do my chores,' he orders, before turning back to the patch of herbs. Obliging your... master, you make your place and lay next to him on your back so that you're looking up at him.";
	say "     You see him smile at you before petting you with the back of his paw, probably so as to not get dirt on you, as his paws are pretty messy from harvesting the plants. 'This is pretty nice, isn't it my pet? Allowing others to see my ownership of you?' He asks you with a slight smirk. His tone sends a rumble of happiness through you, causing you to smile and nod a bit at him, before nuzzling his hand. 'Such a good [if bodyname of player is listed in infections of CanineList]puppy[else if Player is herm or player is neuter]pet[else if Player is male]boy[else if Player is female]girl[end if].' Your master says returning his attention to his task at hand. As he does it, he repeatedly rubs the top of your head.";
	WaitLineBreak;
	say "     The entire process of your master harvesting the herbs and flowers while petting your head goes rather fast, which doesn't surprise you. Especially since you kinda drift in and out of conscience. However when he's done, he taps you on the head, waking you up fully. 'You were pleasant to spend time with my pet, I would definitely enjoy talking about taking this relationship to the next level if you wish at a later date,' he says with a soft tone. You look at him with a curious look, wondering what he means. He shakes his head at you and smiles. 'We'll discuss it when I have time, for now I must go.' He says before getting up and heading off, leaving you to get up stand in the park.";
	now Loyalty of Sheng is 4;

Table of Game Objects (continued)
name	desc	weight	object
"sheng's pet collar"	"[SCollarDesc]"	1	sheng's pet collar

sheng's pet collar is a grab object.
the usedesc of sheng's pet collar is "[SCollarUse]".
it is part of the player.
It is not temporary.

sheng's pet collar is a grab object.
sheng's pet collar is equipment.
sheng's pet collar is cursed.
It is not temporary.
The printed name of sheng's pet collar is "sheng's pet collar".
The plural of sheng's pet collar is false.
The taur-compatible of sheng's pet collar is true.
The size of sheng's pet collar is 0.
The AC of sheng's pet collar is 0.
The effectiveness of sheng's pet collar is 0.
The placement of sheng's pet collar is "neck".
The descmod of sheng's pet collar is "A soft and gentle feeling blue silk collar with a tiger emblem on it that you want to treasure with all your heart, because after all, your master gave it to you.".
The slot of sheng's pet collar is "neck".

to say SCollarDesc:
	say "WIP TEXT";

to say SCollarUse:
	if diego's heirloom collar is equipped:
		say "WIP TEXT"; [text that details why you don't take the collar off]
	else:
		repeat with z running through equipped equipment:
			if slot of z is "neck":
				say "     [bold type]Your [z] is in the way![roman type][line break]";
				continue the action;
		say "     Looking at the collar, you can't help but wonder how it would feel to have it on. WIP"; [Text that details putting the collar on]
		now sheng's pet collar is equipped;

Table of Game Objects(continued)
name	desc	weight	object
"lust potion"	"A special sex potion for getting you (or someone else) horny."	0	lust potion

lust potion is a grab object. It is temporary. It is a part of the player.

the usedesc of lust potion is "[lust potion use]".

to say lust potion use:
	say "     You uncork the bottle and chug it, downing all of the liquid inside. There's a surprisingly chocolately and nutty taste to it, reminding you of a consistency of chocolate milk. Soon though you're too distracted too think about that as you're feeling hot and aroused, your libido climbing rapidly.";
	increase libido of player by 15;
	increase libido of player by a random number between 1 and 9;
	if "Horny Bastard" is listed in feats of player, increase libido of player by 3;
	if "Cold Fish" is listed in feats of player, decrease libido of player by 3;
	if libido of player > 100, now libido of player is 100;
	now heatdrive is 1;
	drive heat;

potiongiving is an action applying to one visible thing.

understand "lustpot [visible person]" as potiongiving.
understand "lustpotion [visible person]" as potiongiving.
understand "lustpot" as lust potion.

check potiongiving someone (called x):
	if lust potion is not owned:
		say "It'd be easier to do that if you even had one.";
	else if x is Trixie:
		say "     'Silly, that's not going to work on me. I'm not really here at all,' she says in a wavering voice while waving her arms around mystically. 'OooOOooOOOOooo!'" instead;
	else if x is Velos:
		say "     'Umm... I don't think that'll work on me, given my current state. Besides, I'm kind of disturbed that you'd even offer it to me.'" instead;
	else if x is Doctor Matt:
		say "     Doctor Matt looks suspiciously at the potion you offer him. He takes a few steps towards the back wall of the room, hovering his hand over the intercom. 'You can't expect me to open my suit and take such a thing? You're not going feral on me, are you? Control yourself, or I'll have to call Orthas!'";
	else if x is Elijah and HP of Elijah < 4:
		say "     Now is probably not a good time for that.";
	else if x is Anastasia and HP of Anastasia < 5:
		say "     Now is probably not a good time for that.";
	else if x is Solstice and HP of Solstice < 5:
		say "     Now is probably not a good time for that.";
	else if x is Kristen and HP of Kristen > 10 and HP of Kristen < 16:
		say "     Now is probably not a good time for that.";
	else if x is Onyx and HP of Onyx is 9:
		say "     Now is probably not a good time for that.";
	else if x is Rod Mallrat and HP of Ronda < 100:
		say "     Rod has no interest in taking those or trading for them.";
	[character specific restrictions, such as when the <lastfuck of x> variable is used for other things, would go here.]
	else if x is a pet:
		if x is not tamed:
			say "Who?" instead;
		else if x is not companion of player:
			say "I don't see them around right now. You'll have to call them over first." instead;
		else if fuckscene of x is empty:
			say "There's little point in giving a potion to them." instead;
	else if lastfuck of the x >= 255:
		say "They're not prepared to take one of those from you at this time." instead;
	else if lastfuck of the x is 254 or lastfuck of the x - turns >= 24:
		say "They're as ready as they're going to be." instead;

carry out potiongiving someone (called x):
	say "     You give the lust potion to [x], who then consumes it, their arousal and their readiness for sex increasing.";
	increase lastfuck of x by 8;
[	say "TEST: lastfuck of [x]: [lastfuck of x][line break]";]
	if lastfuck of x >= 254:
		now lastfuck of x is 254;
		say "     They're as ready as they're going to be by this point.";
	else if lastfuck of x - turns >= 24:
		say "     They're as ready as they're going to be by this point.";
	decrease carried of lust potion by 1;

Sheng ends here.
