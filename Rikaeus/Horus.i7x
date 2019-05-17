Version 2 of Horus by Rikaeus begins here.
[Version 2 - Continuation of the Quest, New Npc, Sex With Horus.]

[ HorusRelationship                                                     ]
[   0: Have not encountered Horus at Tower to the Sky                   ]
[   1: Have met Horus and gained access to palace Near The Sun          ]
[   2: Has talked to Horus about the Darkness growing at the Capitol    ]
[   3: Has battled the Destabilizing Mutant and won                     ]
[   4: Has returned to Horus and talked about the creature (end for now)]
[   5: Has suggested Medea as a way of researching the mutant           ]
[   6: Taken the material to Medea who has agreed to research it        ]
[   7: Has Taken care of the Troublemakers for Medea                    ]
[   8: Has returned after taking care of the troublemakers              ]
[   9: Gone to investigate what could Patient Zero, Finds something     ]
[  10: Returns to Medea with information, she ends up making a cure     ]
[  11: Returns to Horus with cure, he asks you to use it on the Mutant  ]
[  12: Fights Destabilizing Mutant again, cures them, and they move in  ]
[  13: Has reported to Horus, sex is open with him                      ]
[  14: Horus blesses you Permanently, after asking for a reward         ]
[  93: Has suggested Lilith as a way of researching the mutant          ]
[  94: Taken the material to Lilith who has agreed to research it       ]
[  95: Has returned after a couple hours, Lilith has found something    ]
[  96: Goes to investigate Patient Zero, Finds something                ]
[  97: Returns to Lilith with info, she makes a cure to it              ]
[  98: Goes back to Horus, tells him of the cure Lilith made            ]

[ PediatricsLoss                                                        ]
[   0: Have not loss                                                    ]
[   1: Lost once                                                        ]
[   2: Lost twice                                                       ]

Section A - Code for Horus and Zerbo

HorusRelationship is a number that varies.
PediatricsLoss is a number that varies.
TroublemakerLost is a truth state that varies. TroublemakerLost is usually false.
HorusFollowers is a truth state that varies. HorusFollowers is usually false.

Table of GameEventIDs (continued)
Object	Name
Sky Tower	"Sky Tower"

Sky Tower is a situation. The level of Sky Tower is 2.
Sky Tower is inactive.
The sarea of Sky Tower is "High".

when play begins:
	add Sky Tower to badspots of guy;
	add Sky Tower to badspots of furry;

Instead of resolving Sky Tower:
	if AmuranAwoken > 4:
		say "     While exploring the High Rise District something catches your sight in the corner of your eyes. It moves past your vision and into a building nearby. Out of interest you make your way towards where you saw it, coming face to face with what you believe to be the largest skyscraper in the city. Shrugging your shoulders you pull open the door and head on in. The inside is rather normal, as it appears to be your average office building, though completely abandoned. Looking around a bit more you notice that it used to be an office space for bank companies, though not much of one as there was a notice on the door saying the connection to the power grid was cut.";
		say "     You don't have much time to continue searching because soon enough to your shock, lights on the floor brighten up, creating a path for you. Slightly weirded out by it due to the notice on the door, you nevertheless follow it, wondering where it's taking you to. It actually doesn't take long for you to arrive where it wants you to go, as it actually leads you to an elevator of all things. Glancing at it wearily you watch as the doors open up as if beckoning you on inward. With trepidation on your mind you take the steps forward required to enter the boxed lift, it closing behind you as you get in.";
		WaitLineBreak;
		say "     The trip up the building is a quiet one besides the whir of the elevator as it moves, however, it gives you time to observe where the lift is taking you. Eyes widening a bit when you look at how many floors there were, a whopping total of seventy-three floors, not including the two below ground parking lots, you notice that it's slowly moving you higher and closer to the sky. A couple minutes later, a sound dings and you see the doors open up at, to your shock, the top floor. Even then, there are lights leading you towards a door that has stairs going up, to what you're assuming the roof.";
		say "     Going up the stairs you are indeed led straight to the roof, however, it doesn't appear to end there. No, you see a set of glowing steps going higher into the sky, despite the fact that you're already above the clouds. Believing that you have nowhere else to really go, you head on upward, feeling a force take hold of you, giving sensations as if preventing you from falling. Which is nice, as these stairs appear not to have railings. It takes a few minutes but as the time goes by you notice something in the distance getting closer, appearing to be a decently sized ornate building made of sandstone sitting on a cloud floating in the sky with the sun behind it.";
		WaitLineBreak;
		say "     From your trips to the Egyptian Wing, it actually looks awfully like a Pharaoh's palace in design and materials, which makes you wonder who or what is leading you to this place. Soon enough you get to the stone stairs leading up to the pillared overhang above the large open entrance. Once close you can confirm your earlier thought, as the outside is etched with various hieroglyphics, which would perpetuate this as an Egyptian building. You're pretty sure that whatever is calling you here wants you to head on in, and from how out of the way it is, it should be safe, so with a shrug of your shoulders you walk through the doorway.";
		say "     The entrance hall of the palace actually appears to be rather averagely decorated for a place of royalty. To your surprise there are falcon humanoids walking around. However, they look to be ignoring you, so instead you glance around the place, seeing a couple doorways leading to various areas of the building, but what catches your attention is another huge open entrance. Assuming that this is where you're supposed to be going, you head on further in. When you enter, your assumptions are slowly eased, as you believe it to be the Pharaoh's throne room. With the hieroglyphics all over the room and the fancy murals and carpet you draw your attention to the stone throne at the back of the room.";
		WaitLineBreak;
		say "     Sitting in the throne is at first what looks to be a normal human male, that is until you get to the head of the guy. Instead of a face of a homo-sapien he has the head of a falcon, which would make him stand out if you compared him to any regular person you know. Clothing wise he was not wearing any shirt, revealing a muscled-olive toned body wearing a gold necklace with a familiar jade scarab. He was wearing what looked to you to be a skirt, though a flash of memory from the Egyptian Wing tells you it's a shendyt, which is more of a kilt than anything. It appears to be made of fancy soft cotton, which you're sure feels super comfortable.";
		say "     Drawing your attention elsewhere for a moment you look above him first and notice another familiar item, a sun disk, that you sure you recall retrieving for Amuran, servant of Horus. Above it is a very fancy looking eye framed on the wall. Turning back to the man you notice he is holding a staff in his hand, with... something that cements an idea of who he is in your mind. It is a golden rod with a similar metallic ankh mounted at the tip, said item you recognize very clearly. Having finished your once over you walk over to the falcon-headed man and wait for him to speak.";
		WaitLineBreak;
		say "     'I am glad that you decided to follow my guidance here friend of my servant,' the olive-skinned male says with a soft smile in your direction. You joke and say that it was a pretty straightforward guide with the lights and everything. 'Yes, well, sometimes one has to be direct in order to get another's attention,' he says with a chuckle. 'I'm sure you have recognized me as Horus, from your interactions with Amuran which brings me to another topic, why I've brought you here,' the now-confirmed God says, hunching forward with steepled fingers. You nod, as you had wondered why all the effort was done to bring you up here.";
		say "     'When I regained the first of my items due to your assistance, I had sensed a growing darkness. At first I wasn't entirely sure where it was due to not having all my objects of power,' Horus says before standing up and starting to pace. 'However, when I got back the Ankh I finally was able to locate it and could feel how much of a threat it was to this area,' the God says, finally turning back to you. Nodding at what he has been saying, you ask what it has to do with you. 'Well, with how well you did in retrieving my items I was hoping that you could help me in this delicate matter,' the Sun deity says, with what you swear is a sheepish look.";
		WaitLineBreak;
		say "     With a sigh you look around a bit. From how it sounds, it appears that the trouble brewing is going to be rather difficult to overcome. You're not entirely sure if you want to get involved at the moment. But at the same time you can understand that if nothing gets involved with it, it might proceed further and become even more of a problem, thus possibly hurting all of the city, which despite from what you've seen hasn't entirely recovered from the apocalypse. It was a tough decision to make, and one that you weren't sure you were able to make one about at all.";
		say "     Before you can even say anything however, Horus sends you a soft smile, and speaks up. 'Young one, I am not called the God of Kingship for nothing. I will not force you to make a decision you don't want to make so hastily,' The Sun Deity says before looking in the direction of one of the falcon mutants. 'I would never ask that of my subjects, which I consider all those who bathe in the light of day or in the wind of the sky,' he says firmly, giving a resolute tone. That actually causes you to smile at him in return. 'If wish to help me then simply speak with me more on the Darkness, otherwise you may spend as much time here as you wish,' Horus says, waving his hand as if to gesture to the entire palace. Nodding, you happily accept his offer.";
		move Horus to Palace Near The Sun;
		now PlayerMet of Horus is true;
		change up exit of High Rise District to Palace Near The Sun;
		change down exit of Palace Near The Sun to High Rise District;
		now HorusRelationship is 1;
		move player to Palace Near The Sun;

Table of GameRoomIDs (continued)
Object	Name
Palace Near The Sun	"Palace Near The Sun"

Palace Near The Sun is a room.
The description of Palace Near The Sun is "[palacenearthesundesc]"

to say palacenearthesundesc:
	say "     The inside of the palace of the Sun God Horus is rather tastefully decorated. From what you saw when you took a much closer look at the entranceway, it had various tapestries hung all over the place, but in a decently put manner. However, each of the pieces of textile had the image of a person on it. What was unique though, was that some looked human a few with features like Horus, a lot of them actually looked like some of the mutants that you saw on the streets below, leaving you to wonder who they were. The Throne Room was a lot less decorated in the sense of objects, instead hieroglyphics were carved all over the place along with murals. Despite this though, it didn't make it any less wondrous.";

Table of GameCharacterIDs (continued)
object	name
Horus	"Horus"

Horus is a man.
[physical details as of game start]
Humanity of Horus is 80. [is thousands of years old]
ScaleValue of Horus is 3. [human size]
Cock Count of Horus is 1. [has a cock]
Cock Length of Horus is 10. [has an 10 inch cock]
Ball Size of Horus is 4. [size of balls]
Ball Count of Horus is 2. [has a pair of balls]
Cunt Count of Horus is 0. [no vagina]
Cunt Depth of Horus is 0. [Doesnt have a vagina to get stretched]
Cunt Tightness of Horus is 0. [Doesnt have a vagina to get stretched]
Nipple Count of Horus is 2. [Has two normal nipples]
Breast Size of Horus is 0. [Doesn't have breasts really]
[Basic Interaction states as of game start]
TwistedCapacity of Horus is false. [can not take oversized members without pain]
Sterile of Horus is true.
PlayerMet of Horus is false.
PlayerRomanced of Horus is false.
PlayerFriended of Horus is false.
PlayerControlled of Horus is false.
PlayerFucked of Horus is false.
OralVirgin of Horus is true.
Virgin of Horus is true.
AnalVirgin of Horus is true.
PenileVirgin of Horus is true.
SexuallyExperienced of Horus is false.
MainInfection of Horus is "".
The description of Horus is "[HorusDesc]".
The conversation of Horus is { "<This is nothing but a placeholder!>" }.
The scent of Horus is "     Horus gives off the pleasant smell of a wonderful summer day, with the sun shining softly onward. Under it is a vague hint of an airy scent with a tinge of an earthy one.".

to say HorusDesc:
	say "     Taking a look at the Sun God you muse that he would pass as a pretty stunning specimen of a human if it weren't for his head. Horus is olive skinned for the most part, wearing an Egyptian-like kilt that appears to be made of the finest and softest cotton that could be found, assuredly looking comfortable. Beyond that, he appears to be wearing no other piece of clothing, opting for simply a golden necklace with a jade scarab attached to it. As for the problem of the above neck variety, the male has the head of a falcon, which definitely separates him from other humans. Occasionally you see him talking with one of his servants, ordering them to check out certain areas of the city.";

instead of conversing the Horus:
	if HorusRelationship < 1: [should be not yet available]
		say "     ERROR: Horus shouldn't be where a player can see him yet, heck you shouldn't even have access to this room yet! Please report to Rikaeus on the FS Discord and quote this tracking number for easier bugfixing: [HorusRelationship]";
	else:
		say "     Horus looks in your direction and as you approach him and gives you a soft smile, as if indirectly gesturing for you to ask what you will.";
		say "[HorusTalkMenu]";

to say HorusTalkMenu:
	LineBreak;
	say "What do you wish to talk about with the Sun God?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ra";
	now sortorder entry is 1;
	now description entry is "Ask him about the named Sun God and why he goes by that title now.";
	[]
	if (HorusRelationship > 0 and HorusRelationship < 4) or HorusRelationship is 12:
		choose a blank row in table of fucking options;
		now title entry is "Darkness";
		now sortorder entry is 2;
		now description entry is "Ask him about the growing darkness he has sensed.";
	[]
	if HorusRelationship is 4 and PlayerMet of Medea is true:
		choose a blank row in table of fucking options;
		now title entry is "Medea";
		now sortorder entry is 3;
		now description entry is "Tell him about the Lizard-Woman who might be able to help";
	[
	if HorusRelationship is 4 and PlayerMet of Lilith is true:
		choose a blankrow in table of fucking options;
		now title entry is "Lilith";
		now sortorder entry is 4;
		now description entry is "Tell him about the demoness who... possibly might be able to help";
	]
	if HorusRelationship is 10:
		choose a blank row in table of fucking options;
		now title entry is "Cure";
		now sortorder entry is 5;
		now description entry is "Tell him about the cure you received";
	[]
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
				if (nam is "Ra"):
					say "[HorusRa]";
				if (nam is "Darkness"):
					say "[HorusDarkness]";
				if (nam is "Medea"):
					say "[HorusMedea]";
				if (nam is "Lilith"):
					say "[HorusLilith]";
				if (nam is "Cure"):
					say "[HorusCure]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You apologize to the God and say that you don't have anything to talk about. He nods and lets you go on your way.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say HorusRa:
	say "     Sighing as soon as you mention the topic of Ra, Horus leans back in his throne. 'I'm doubting you know much about the concept of Gods as a reality rather than just a thought process for religion am I right?' he asks, tilting his head in your direction. You nod, admitting that much to the deity. 'Originally we all were mortals just like you who were granted power beyond our belief, some through circumstances of birth others through magic,' he starts, gesturing to some of the murals, one of them showing a woman resurrecting a man temporarily to conceive a child. Another showed a man appearing out of nowhere and seemingly helping out people as they progress in their lives.";
	say "     'However, that power is not without a consequence, it ebbs and flows with strength based on belief and the thought of us,' Horus says, adjusting his position. 'Now, belief is the strongest, but thoughts work just as well. For me I function off the belief of my followers and the fact that my myth is very prevalent in the world,' he says with a look towards one of the falcon-looking beings. You nod at all this information but ask him something, what does it have to do with the Ra, who as far as you remember from the Egyptian Wing, holds the title of God of the Sun.";
	WaitLineBreak;
	say "     'Ah, that. Well, the consequence of our power being influenced by belief and thought is that if a large amount of people were to think something differently of us, it would change us,' Horus says with a sigh. 'Which comes to the current topic. Somewhere along the later years of the Ancient Egyptian era, a large amount of them got the belief that Horus and Ra were the same person, known as Ra-Horakhty,' he says, rubbing his forehead. 'This ended up influencing both Horus and Ra and merging them into one entity.' The deity then gestures to himself.";
	say "     With one last question before you leave the God be, you ask him why he chooses the name Horus over Ra or simply Horakhty? 'Ah, well, that choice was all mine and had to do with how a vast majority of my followers appeared to prefer it over the others,' Horus explains with a chuckle. That makes you smile before nodding at the explanation. Deciding that you've gained enough information you tell him that you'll let him return him to whatever he was doing. He chuckles and nods at you before turning his attention and voice towards one of the various falcon beings around you guys.";

to say HorusDarkness:
	if HorusRelationship is 1:
		say "     Deciding that you may as well help against whatever this darkness is, you speak up and tell Horus such. He gives you a smile and leans forward, clutching both of his hands. 'I'm glad that you've agreed to help me despite the dangers to you,' he says with happiness in his voice. Standing up promptly you get your first show of he God's power since you've arrived here as he waves his hands and a projection of an area with cracks that spew ash and magma. From the angle you can tell that it's an overview of the area rather than a view from the ground. But overall you are able to understand where this projection is looking at.";
		say "     'The darkness seems to have taken root in the ruins of what remains of the mortal's government area. However, I am unable to actually get a lock onto where it is,' Horus tells you with a sigh. You tilt your head at this, shouldn't he be able to easily find anything with his power? This in turn causes the deity to shake his own at you. 'Not really. I think whatever the problem is, it's constantly shifting its body. That usually prevents me from getting a good read on someone.' The Sun Deity shifts in his throne as he says this. 'I want you to go there and for now, get a closer look at what it is, don't get too in over your head,' Horus kindly says, concern in his voice. You promise him you won't, preparing yourself for what you have to do.";
		WaitLineBreak;
		say "     Before you can leave however, the Sun God stops you. 'I must impart you some last information about the enemy at hand,' he says as he waves his hand again causing the image to disappear. 'Whatever the darkness is, it appears to only target relatively strong people. As, no offense to my servants, whenever I sent any of them to go scout the area, any of the well-trained ones never came back,' Horus informs you, causing you to wonder what exactly this thing is. You nod and hope inwardly you're strong enough to attract its attention, despite the shudder that runs through your body as you think of that as you let him return to his business.";
		now Nightmare Mutation is active;
		now HorusRelationship is 2;
	else if HorusRelationship is 2:
		say "     Horus gives you a confused look, possibly wondering why you're still here. 'Young one, why haven't you gone to the place where the darkness is located? Does something have you concerned?' he asks, his face changing to one of worry. You assure him that you're alright and that you are going to head to the capitol area soon. He smiles at that, nodding before speaking. 'Please be quick, this enemy could be devastating for the city,' the Deity requests of you, before returning to what he was doing.";
	else if HorusRelationship is 3:
		say "     With a resolute look you pull the cloth out and unwrap it slightly, showing the wriggling piece of whatever it is to Horus. As soon as it catches the deity's eyes they widen in shock and he kind of backs up in his seat in horror. 'That's... worse than what I was thinking. I was hoping for a better situation than this,' he says, muttering the last sentence. You ask him, with a hopeful tone, if he knows what it is, describing what you had fought and what it had done. The terrifying scene was still front facing in your mind and probably will for a while. He shakes his head and lets out a sigh before speaking.";
		say "     'I don't know exactly what it is, as it appears to be of nanite origins. Which despite being a deity we aren't omniscient, no we get our knowledge like everyone else, just at an easier learning curve,' he says, groaning a few seconds later and rubbing his forehead. 'The reason I said it's worse than what I was thinking is because I can feel its intent, or emotions so to speak. And that thing appears to be ravenously hungry for food and power,' Horus explains, causing you to nod, understanding his earlier reaction with a better point of view.";
		WaitLineBreak;
		say "     Suddenly though the Sun Deity gets a look on his face that makes you think that he had an idea. 'I think we might be able to solve this issue but there[']s one problem though,' Horus says, sighing at the end. You raise a brow at him and ask what it is, surely it isn[']t too hard? He shakes his head and leans back into the throne, crossing his hands in his lap. 'If we had a knowledgeable doctor who could examine this sample, we might be able to find a way to beat it. But sadly, the last one I knew was millenia ago.' He says with another groan. Perhaps you could find someone that can look it over? You voice this to the God and he gives you a thankful look. 'I[']d appreciate that, now I must explain the situation to my servants, I apologize.' He says, turning his attention towards the falcon beings.";
		now HorusRelationship is 4;
	else if HorusRelationship is 12:
		say "     You smile at him and tell the sun deity that the job is done. This brings out a matching but much larger grin on Horus' face as he lets out a happy laugh. 'This is great my friend! With the darkness gone, this world doesn't have to worry that much of impending extinction.' He says, sagging back into his throne in relief. You nod, replying that you hope that the both of you can finally get some relaxation rather than running around trying to prevent some blob from killing people. Speaking of that, you tell him that the now gnome named Zerbo is staying with you. 'Ah, that's rather kind of you. Please keep an eye on him, the guilt of having unknowingly killed people is strong, so he may need your support.' Horus explains, resulting in another nod from you. 'Before you go, in the future I may have a reward ready for you, a blessing of some sorts,' the sun deity says before allowing one of his retainers to step forward.";
		now HorusRelationship is 13;

to say HorusMedea:
	say "     With a certain person in mind to help you two, you begin to speak. In no short length you explain to the deity that you have had the decency of meeting a pediatric doctor named Doctor Medea. As soon as you mention her job description, Horus looks at you with confusion. 'I don't know how someone trained in the way of helping someone giving birth would help us here,' he says rather confused about your suggestion. You roll your eyes at Horus and tell him that you really don't have a better idea. Plus, you guys might get lucky and she might have experience researching things. With a sigh he shrugs his shoulders before speaking. 'Well, we don't have much to lose,' the God says with a shake of his head.";
	say "     He turns to one of his servants and for the first time you notice that he switches languages. It's an old language, that much is for sure, but the bird-headed male definitely understands him. After a minute they turn and leave the room. 'I want you to approach this woman with a request to examine the material,' Horus says to you before turning in the direction of the other person returning quite quickly. In their hands is a petri dish, more than likely containing the wriggling sample of whatever you fought before. You accept it with a nod, before carefully putting it somewhere safe so that it wouldn't break open. 'When you get news, come let me know,' the Sun God says with a comforting smile, one that you return before you leave.";
	now HorusRelationship is 5;

to say HorusLilith:
	say "     ";

to say HorusCure:
	say "     Pulling out the vial you present it to the Sun God. You tell him that the Pediatrics doctor managed to possibly work out a cure for the enemy you face. Horus instantly smiles in your direction, clearly happy about what you're telling him. 'That's great my friend! Now you can finally finish the fight against the darkness encroaching upon us,' he says. You nod and say that you'll make sure to take care of it as soon as possible. Inwardly you hope that the cure works as you don't know what other solution there is. Turning around you let the deity get back to his work.";
	now HorusRelationship is 11;
	now Nightmare Showdown is active;

instead of fucking the Horus:
	if HorusRelationship < 4:
		say "     The God shakes his head and gives you a smile. 'I'm sorry but the Darkness requires my attention for now.' He says with an apologetic look in his eyes.";
	else if HorusRelationship < 13:
		say "     Horus gives you a soft smile and shakes his head. 'I'm sorry my friend but despite your small victory against the Darkness we still need to focus on it.' He starts before continuing with a chuckle. 'Afterall, what kind of king would I be if I focused on sex over solving a problem involving the people?' Looks like you won't be getting into bed with the deity until the issue with the mutant is solved.";
	else if HorusRelationship > 13 and (lastfuck of Horus - turns < 3): [had sex 9 hours ago]
		say "     As soon as you try to proposition the god he chuckles. 'My friend, as delectable as you are, I do have work to do. Come find me in a couple hours and then we can see about it.' Horus says.";
	else if HorusRelationship > 13:
		say "     Walking up to the sun deity you give him a sultry smirk and ask if he'd like to let out a little steam. He raises a brow at you before chuckling. 'Sure, why not, I have some free time on my hands.' Horus says, before asking you what you want to do in particular as he gestures for his retainers to leave the room.";
		say "[HorusSexMenu]";

to say HorusSexMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Throne Fuck";
	now sortorder entry is 1;
	now description entry is "Anally Ride the Sun God on His Throne";
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
				if (nam is "Throne Fuck"):
					say "[HorusSex1]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You shake your head and say that you can't think of anything right now, causing the sun deity to shrug.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say HorusSex1:
	say "     Thinking for a bit before you finally decide, you begin to take off anything you have on, figuring that it would get in the way with what you have planned. All the while you're doing this, Horus is eyeing you with interest, clearly enjoying the show. Once you are done you approach the sun deity slowly and kneel in front of him, afterall it wouldn't do without lubing him up first. So, you reach for the snap that holds the kilt together and undo it, revealing a slowly hardening uncut cock with heavy balls. Eager to start, you reach one hand for the balls and start to massage them, eliciting a groan from Horus.";
	say "     Of course, massaging him isn't your plan here, no, your idea is to get his cock lubed up so that you can get it into you. So, you bring your mouth to the tip of his dick and start licking. By the spurt of precum you can tell that the sun deity appreciates your attention, however just swirling your tongue on the head of his large length won't be enough. You take it one step further and take him into your lips and slowing go down on him, as much as you can before you have more than half of his already hard ten inch cock in your throat. 'Mmm, your throat is very nice my friend.' Horus murmurs, running a hand across your head. You absently acknowledge the compliment but also ignore it as again, sucking him off to completion isn't your goal.";
	WaitLineBreak;
	say "     The sound of you slurping on the sun deity's cock fills the throne room for a little while, your saliva covering his length as you do so. However, after a bit, you pull off, causing Horus to give you a raised eyebrow. That look soon goes away when you clamber onto the throne, positioning your hole right above his dick. Slowly, you then lower yourself on his thick cock, allowing inch by inch to penetrate you and fill you, the sensations causing your nerves to flare with pleasure and pain due to the only lube being used being your saliva. Once all ten inches are seated inside your passage you let out a low groan, feeling a lot of things at being completely filled.";
	say "     However, after a few seconds of getting used to the size, it appears Horus can't wait any longer as he begins to bounce you upward, causing you to go off of his cock a bit before slamming back down, making you let out a long moan. The sun deity continues to do this, allowing his big dick to enter and re-enter you repeatedly, as well as causing his balls to slap loudly against your cheeks, the sounds loud enough that you're sure the retainers can hear even outside the room. On top of that, both of you are moaning loadly, your voices mixing with the slapping and the squelching of his cock entering your hole to create a symphony of sexual sounds.";
	WaitLineBreak;
	say "     The sensations of him repeatedly thrusting into you is causing [if Player is neuter]your body to scream out in pleasure all over[else if Player is herm]your cock and your pussy to both leak their sexual fluids, creating a pool on the throne the two of you are sitting on[else if Player is male]your cock to leak copious amounts of precum, creating a pool on the throne the two of you are sitting on[else if Player is female]your pussy to get really wet and your entire body to scream out in pleasure[end if]. This only appears to encourage your partner who makes his gestures into your body faster, and seems to be aiming his dick for a particular spot. It doesn't take him long before he actually hits your prostate, causing you to scream out in ecstasy and beg for him to do it again, your hole clenching around him on reflex. 'Your wish is my command my friend,' Horus says with a chuckle, before making his thrusts rougher, practically abusing that tiny bundle of nerves. As he does this, you can very much tell it won't be long before the both of you reach your climaxes.";
	say "     And just as you thought, half a minute of agonizingly pleasurable thrusts later you can feel the sun deity's cock swell up inside you before a deluge of fluids start to fill you, signaling that he's cumming. The sensation of being filled with Horus' semen sets off your own sensations as you hit your own orgasm. [if Player is neuter]When that happens, your mind blanks from all thoughts as all neurons fire on pleasure, due to the sole fact that there's nowhere for it to go but your body. Everywhere from your toe to your head is filled with it, driving you absolutely mad, but it's a feeling you crave[else if Player is herm]When it happens, your cock stiffens before you let out a loud moan, letting your own load fly, managing to get a decent arc that coats the floor of the throne room. On the other hand, your pussy starts leaking copious amounts of femcum, causing the pool on the throne to grow enough to coat yours and Horus' thighs[else if Player is male]When it happens, your cock starts to stiffen before you moan loadly, lettling loose your own load, your cum coating the floor of the throne room in a line. Some of it actually hits you in the face as you shoot, covering yourself in a bit of your own fluids[else if Player is female]When it happens, your pussy begins to leak copious amounts of femcum, causing it to drip down between your legs and down Horus' balls before finally pooling onto the throne below you, making a tiny puddle[end if]. It takes a while for the both of you to come down from your climaxes but when you do, the sun deity helps you up before snapping his fingers, suddenly making both of you clean. Smiling at you, he allows you to put whatever you took off back on and then thanks you for the wonderful sex, of which you thank him aswell. Sadly though both of you have to get back to what you were doing previously, as Horus calls back in his retainers.";
	now lastfuck of Horus is turns;
	now PlayerFucked of Horus is true;

Table of GameCharacterIDs (continued)
object	name
Zerbo	"Zerbo"

Zerbo is a man.
[physical details as of game start]
Humanity of Zerbo is 60. [has recently returned to sanity]
ScaleValue of Zerbo is 3. [human size/really gnome sized]
Cock Count of Zerbo is 1. [has a cock]
Cock Length of Zerbo is 6. [has an 10 inch cock]
Ball Size of Zerbo is 3. [size of balls]
Ball Count of Zerbo is 2. [has a pair of balls]
Cunt Count of Zerbo is 0. [no vagina]
Cunt Depth of Zerbo is 0. [Doesnt have a vagina to get stretched]
Cunt Tightness of Zerbo is 0. [Doesnt have a vagina to get stretched]
Nipple Count of Zerbo is 2. [Has two normal nipples]
Breast Size of Zerbo is 0. [Doesn't have breasts really]
[Basic Interaction states as of game start]
PlayerMet of Zerbo is false.
PlayerRomanced of Zerbo is false.
PlayerFriended of Zerbo is false.
PlayerControlled of Zerbo is false.
PlayerFucked of Zerbo is false.
OralVirgin of Zerbo is false.
Virgin of Zerbo is false.
AnalVirgin of Zerbo is true.
PenileVirgin of Zerbo is false.
SexuallyExperienced of Zerbo is true.
The description of Zerbo is "[ZerboDesc]".
The conversation of Zerbo is { "<This is nothing but a placeholder!>" }.
The scent of Zerbo is "     Zerbo smells like electricity and chemicals, a combination which to you is a bit odd, but it probably fits the guy.".

to say ZerboDesc:
	say "     Taking a look at your researcher gnome friend he appears to be a pretty vibrant person in appearance. First of all, he stands at a rather short four foot two, which thankfully the lab has the chairs with wheels that have adjustable heights so he isn't sitting below the table. The clothing he's wearing isn't the most colorful thing on him, as it's just a lab coat and jeans something rather simple. No, it's his body that stands out to your eyes. Turning them towards his skin first, you see that it's a glowing olive tone, looking super healthy. Trailing upwards you spot a pair of vibrant green eyes that are lit with a sense of excitement set between a pair of pointy ears. Above it is dark blue hair that stands out pretty well and is jutting out in all different directions. While normally anyone else would notice you staring at them, Zerbo is currently too focused into his researched to pay attention.";

instead of conversing the Zerbo:
	if Loyalty of Zerbo < 1: [should be not yet available]
		say "     ERROR: Zerbo shouldn't be where a player can see him yet, heck you shouldn't even have access to this room yet! Please report to Rikaeus on the FS Discord and quote this tracking number for easier bugfixing: [HorusRelationship]";
	else:
		say "     Tapping the gnome on the back he jumps a bit in the chair before he turns towards you chuckling. 'Ahaha, you spooked me there, what do you need friend?' He asks, looking at you with interested eyes.";
		say "[ZerboTalkMenu]";

to say ZerboTalkMenu:
	LineBreak;
	say "What do you want to talk with the gnome about?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Research";
	now sortorder entry is 1;
	now description entry is "Learn about what he is researching";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Gnome";
	now sortorder entry is 2;
	now description entry is "Ask how he ended up a gnome";
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
				-- "Research":
					say "[ZerboTalk1]";
				-- "Gnome":
					say "[ZerboTalk2]";
				WaitLineBreak;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You tell him that you don't have anything to ask him, to which he just shrugs and returns to his papers.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say ZerboTalk1:
	say "     'My research? I'm sure you saw some of it at my old place right?' he asks, tilting his head. You nod but you'd rather have him explain, as the person who helped you and the notes didn't exactly explain it in the best way. 'Ah, well I guess they'd probably talk about the more science end. Well, long story short I'm trying to find a way to stabilize the nanites, which if you think about it, explains how mine became so destabilized.' Zerbo says, leaning back in the chair. Blinking at him with a weird look, you say that you thought it was just the mass amount of infections hitting him at once. The gnome chuckles, shaking his head before speaking. 'No, that was part of the reason, but not the entirety. Rather, the solutions that crashed onto me were part of my attempts at stabilizing the nanites of various mutations,' he says with a sigh.";
	say "     Turning to his papers on the table he lets out a hum before continuing. 'Sadly I've lost all that research but it has allowed me to start over on a new leaf. I might find a breakthrough one of these days,' the gnome says wistfully. Before you let him get back to work, you ask him what exactly it'd mean for the nanites to stabilize. 'Well, simply put, it'd mean that they wouldn't change due to outside influence unless you directly allowed it, let's say through a vial of nanites.' Zerbo says, causing you to 'ah' before finally allowing him to turn back to his papers.";

to say ZerboTalk2:
	say "     Looking down at his body he lets out a chuckle. 'Oh, this?' He asks, turning to you after a second. Yeah, you're rather curious how a researcher ends up a gnome of all things, especially one that doesn't look like the non-garden variety. 'Well, I was really fond of video games, and role playing with friends when I was younger and I believe when the nanites hit I was doing a session with them for old time sakes, playing my character, which was a gnome. So I believe they took that as a base design and went with it.' Zerbo explains. It's rather interesting to hear how the nanites work when they hit, though you do make a comment that it must have sucked getting used to the new height. 'Oh it did, trust me, but anything for my research!' He says rather cheerfully before heading back to his papers.";

instead of fucking Zerbo:
	if (lastfuck of Zerbo - turns < 3): [you sexed him in the last 9 hours]
		say "     When you tap on his shoulder and try to offer sex, the gnome gives you a nervous laugh. 'I'm still exhausted from last time, plus I do need time to work on my research,' he says before returning to his papers.";
	else:
		say "     Deciding to have some fun with the gnome, you trail your finger along the skin poking out from the collar of his lab coat, causing him to let out a groan, clearly getting his attention. Though, now that you have it, what do you want to do?";
		say "[ZerboSexMenu]";

to say ZerboSexMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Blowjob";
	now sortorder entry is 1;
	now description entry is "Suck the gnome off";
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
				if (nam is "Blowjob"):
					say "[ZerboSex1]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You draw your finger away and shake your head, causing the gnome to mumble something about you being a tease before going back to work.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say ZerboSex1:
	say "     Thinking about what you want to do, you get a smirk before you kneel in front of the gnome as he's sitting in the chair, causing him to get a confused look in his eyes. Pulling apart his coat to reveal his pants, you run a hand alongside his leg, causing him to shiver. Reaching up to the button of his trousers you undo it before yanking them down, alongside his underwear as well, revealing his already hardening cock. However for now that's not what has your attention. Instead you turn your attention to his balls, moving your head to them and promptly dragging your tongue along them, causing a muffled groan to emit from the gnome.";
	say "     Deciding to take one of the orbs into your mouth, you swirl it around. Of course, your hands don't dawdle as you reach them out upward, it not taking long before they find purchase under his shirt, locating Zerbo's nipples, which you tweak. The sudden twisting causes the gnome to groan and his cock to twitch and spurt out a tiny bit of precum. While you play with his chest, you let his his ball drop out of your mouth before trailing your tongue slowly up the length of his dick before it comes into contact with the tip and the fluid that had came out. Licking it up, you let out a little hum at the taste before taking the head into your mouth.";
	WaitLineBreak;
	say "     The suddenness of the warmth of your mouth surrounding the tip of his cock causes him to jerk his hips, but thankfully you move one of your hands and place it on his leg in time to stop him. Afterall, you're the one who's controlling this blowjob, not him. Taking your other hand and twisting his nipple a bit hard to punish him for trying to fuck your throat you then tease him by slipping your tongue out of your mouth and a bit further down his cock. 'Fuck!' Zerbo swears, this time reaching his hands towards your head. Seeing that he's being stubborn you slap them away and once more to teach him a lesson tug at his nipples, both of them this time.";
	say "     By now you think he's got the idea, which causes you to smirk with his cock head in your mouth as you get an idea. Taking one of your hands you momentarily move off his dick and lube up your finger. Quickly after you go back down on him, this time taking a bit of the shaft in and deciding to move up and down on him, but the digit you wettened isn't idle. No, you position it right at his hole and swirl it around before promptly pushing in, causing the gnome to let out a groan. Timing the inward thrusts of your finger and the downard sucks of your mouth together you set a good pace to make your male friend slowly lose himself to lust.";
	WaitLineBreak;
	say "     Of course, your methods are obviously working, because the longer you suck on his cock and finger his hole, the more the tip of his dick swells and the more precum leaks, all of which you slurp down. Deciding to reward him for finally deciding to behave, you fully deepthroat him and push your digit inward and position it so that it hits his prostate. These actions cause Zerbo to swear much more colorfully than last time and a much larger amount of precum to spill from his length. However, you don't want this to last too long, so you decide to speed things up and finally bring him over the edge.";
	say "     Taking another finger you push it in alongside the other and brush those two repeatedly against his prostate. On top of that you allow yourself to fuck your mouth on his cock, bringing your lips up and down the length of his dick, trailing saliva alongside it as the sound of slurping fills the room. Your gnomish partner is currently nothing but wanton moans and groans which is what you were aiming for and something you're quite proud of. Thankfully as well, not long after that you feel the cock in your mouth tense before rope after rope of cum starts filling your stomach. Surprisingly Zerbo climaxes for a good half minute, giving you quite the amount to drink before you pull off and lick your lips. Once finished you stand up and allow the gnome to collect himself and his pants, after which he stutters a thanks and a blush. You tell him it was no problem before he quickly gets back to work, probably to avoid embarrassment.";
	now lastfuck of Zerbo is turns;
	infect "Gnome";

Section B - Event Code

instead of navigating Pediatrics Lobby while HorusRelationship is 5:
		say "[NavCheck Pediatrics Lobby]";
		if NavCheckReturn is false, stop the action; [can't navigate there right now]
		move player to Pediatrics Lobby;
		say "     Making your way into the lobby of the Pediatrics Clinic, you take a look around and see that the place hasn't changed much since you've last been here. A little bit of the cum has been cleaned up and some of the shattered cushions have been stacked up against the wall, but other than that it looks the same. However your goal isn't in this part of the building, but rather the secure looking door at the other end. That's where Doctor Medea resides, the only pediatric doctor that remains in this facility. Feeling around for where you put the petri dish and sensing that it's there you let out a breath of relief before steeling yourself and walking forward and knocking on the door.";
		say "     'Come in!' A familiar voice resonates from behind the door, resulting in you turning the handle and opening the door. Upon entering you can see that Medea looks a bit ruffled but still presentable. Sitting herself on her chair she turns your way and gives you her best professional look and speaks. 'So, what brings you to my office today?' she asks with a tilted head. Looking a little nervous you grasp a hold of the petri dish though the doctor seems to come to the wrong assumptions. '[if Player is male]Did you get someone pregnant? [else if Player is female]Did someone get you pregnant? [else]Do you need someone to talk to? [end if]I can help you, you know?' she says with a smile on her face, though the smile seems rather sultry. You shake your head rather profusely and say it's something else entirely, which seems to intrigue her nonetheless.";
		WaitLineBreak;
		say "     Rather quickly you pull out the petri dish and present it to her, causing her to look at it curiously. 'What's this supposed to be?' she asks, taking it from you and looking at the writhing mass from all angles. You quickly explain how you got it and the horrifying monster that it came from. There's a slightly disturbing inquisitive gaze on her face as she stares at it with the new information you've given her. Though you can see a slightly horrified look as well, so that eases the weirdness. 'So, what made you think to bring this to a Pediatrics Doctor of all things?' Medea asks, tilting her head at you rather questioningly.";
		say "     You admit that you didn't have many options as the person you're working with doesn't know many scientists or doctors anymore. However, you knew of her and that there was the smallest chance that she could know a way to learn of something from it, even if it was one in a million. With a sigh, she leans back, setting the dish on the counter. 'Well, you're in luck, I just so happen to actually have a degree in genetic engineering and research,' Medea says, causing you to give her a look of shock. The excitable doctor appears to have dropped all pretenses, adopting a rather serious persona, which you guess fits, given the situation.";
		WaitLineBreak;
		say "     'As for how I have these degrees when I'm a Pediatrics Doctor, well...' she says, trailing off at the end. 'About a couple years ago, before the nanites, I was a geneticist for children,' Medea says, causing you to look at her in confusion. 'I'm not surprised you don't know what it is. They're not particularly common, but their job is to examine children and understand what birth defects or possible other health developmental problems they can have and then treat it somehow,' Medea explains, clearly reminiscing about something. Having an idea of what it is you speak up, asking if something went wrong. The lizard-woman gives a self-deprecating smile and nods.";
		say "     'I ended up getting attached to one of the kids, a sweet little baby boy who I found out had Tay-Sachs, a genetic disorder that ended up never letting him reach school age,' Medea says, tears running down her face before promptly wiping them off. 'I tried my hardest to work up a cure or a treatment for it, but as you know, Rome wasn't built in a day, let alone three, and I failed.' You don't really know what to say here, so you just let her speak and get her story out. 'So, I changed jobs, becoming a Pediatrics doctor, and in my free time vowed to research the cure to that disease... of course come the nanites it basically cured it for me,' she says, shaking her head.";
		WaitLineBreak;
		say "     Sighing, she sits straight up before looking at you. 'Nevertheless, I can help you, and what the hell it'll be fun to dust off my geneticist talents.' As she says this, she gives you a look over before nodding. 'You can be of some help as well, there have been some people occasionally coming by and messing around with the lobby, by the time you take care of them I should hopefully be done. They should be hanging out at the High Rise,' Medea orders you with a firm glance. You give her a shocked look at how fast she says she can examine the sample. The lizard rolls her eyes and takes the petri dish over to a section of the office. 'It's not that hard, it's not like you're asking me to reverse engineer genes or something, now shoo!' she says as she turns to the sample with an extremely excited look, causing you to leave back to the lobby.";
		now HorusRelationship is 6;
		now Pediatrics Troublemakers is unresolved;

Table of GameEventIDs (continued)
Object	Name
Pediatrics Troublemakers	"Pediatrics Troublemakers"

Pediatrics Troublemakers is a situation.
Pediatrics Troublemakers is resolved.
The sarea of Pediatrics Troublemakers is "High"

when play begins:
	add Pediatrics Troublemakers to badspots of guy;
	add Pediatrics Troublemakers to badspots of girl;
	add Pediatrics Troublemakers to badspots of furry;

instead of resolving Pediatrics Troublemakers:
	if HorusRelationship is 6:
		if TroublemakerLost is true:
			say "     Having made your way back to where you found the trio before, you look at the dark alleyway with your eyes narrowed and scoff at it. Quickly you head on in, hoping you can get it over with this time. Just like before you find the trio further in, messing around with some of the stray objects sitting around. When they see you they laugh and chuckle, asking if you're here to get 'owned' by them. You shake your head and say they're gonna be the ones defeated before you charge at one of the leopardmen, intent on beating them all.";
		else:
			say "     Wandering around the High Rise District you soon enough find yourself in an area of contrast of bleakness when you compare the tall buildings to the dark alley you're suddenly in. You're pretty sure this is the place Dr. Medea was talking about, considering the stray medical supplies but that's not the only reason you're assuming this. No, rather, you can hear a group of three voices further down the path that catch your attention. Intrigued, you slink into the shadows and make your way down the alley and hope that you've found your troublemakers. After all if you haven't then you've just wasted some time.";
			say "     Thankfully though it appears that you found the right place. As you get further into the passageway you spot two male anthropomorphic leopards and a female humanoid anime-looking bunny wielding guns for some odd reason. When you approach them, they instantly turn towards you, looking hostile. 'What brings you to the wrong side of town?' one of the cats sneers in your direction. You look at him and roll your eyes saying you're here to teach them a lesson about attacking clinics. That causes the three to laugh at you before suddenly you're set upon by one of the leopards.";
		now TroublemakerLost is false; [reset]
		challenge "Leopardman";
		if fightoutcome < 20: [won]
			say "     Having taken care of one of the trio you look to the rest of them and gesture for them to continue forward if they want to fight. The bunny with guns lets out a roar of anger and charges in your general direction. You let out a breath of relaxation as you prepare yourself for another fight, hoping you can beat into these three's heads to leave Medea alone.";
		else if fightoutcome > 19 and fightoutcome < 30: [lost]
			say "     Groaning on the floor you push up and get ready to fight again, not letting what just happened get to you. With a determined look, suddenly a mystical and powerful sensation runs through your body, you suddenly feel revitalized and healed a little for battle. You charge forward at the next one you can see, which is the bunny with guns, ready for a fight hoping you can win this one.";
			increase HP of Player by 40;
			if HP of Player > maxHP of Player, now HP of Player is maxHP of Player;
			increase PediatricsLoss by 1;
		else if fightoutcome >= 30: [fled]
			say "     Deciding that your enemies are far too difficult to face at the moment you back away and then quickly dart out of the alleyway. As you turn your head the three enemies are growing smaller and smaller until you can't see them anymore. Once you're out of sight, you realize that you'll need to go back eventually but for now you just lean up against a wall to catch your breath.";
			if TroublemakerLost is false:
				now TroublemakerLost is true;
		if TroublemakerLost is false: [player hasn't completely lost / fled yet]
			challenge "Gunbunny";
			if fightoutcome < 20: [won]
				say "     Standing triumphantly over the gun wielding bunny you turn your attention towards the last standing member of the trio, the second leopardman. You don't give him enough time to run away before you charge at him, with whatever your preferred weapon is. As you approach the feline himself gains a determined look of his own, clearly wanting to make his last stand.";
			else if fightoutcome > 19 and fightoutcome < 30: [lost]
				say "     With a determined look you push yourself off the floor, shaking off the troubles that just transpired and stumble onto your feet. You wont give up on this, you'll definitely hold up your end of the deal. You think this as you charge forward towards the last enemy remaining, the leopard, intent on finishing him. After all, he's the only one left, just defeat him and you're done here.";
				increase PediatricsLoss by 1;
				if PediatricsLoss is 2:
					now PediatricsLoss is 0;
					if TroublemakerLost is false:
						now TroublemakerLost is true;
					say "[PediatricsTroubleFail]";
				else:
					say "     You feel a burst of mystical and powerful energy fill you before you reach your enemy, healing you in preparation for the fight ahead!";
					increase HP of Player by 40;
					if HP of Player > maxHP of Player, now HP of Player is maxHP of Player;
			else if fightoutcome >= 30: [fled]
				say "     Realizing that you can't finish off the leopard, you turn tail and run, disappearing into the alley and out the end you came in. Panting and breathing hard, you lean up against a building on the streets and think that you definitely will have to come back later when you can. After all, you have to hold up your end of the deal with Dr. Medea.";
				if TroublemakerLost is false:
					now TroublemakerLost is true;
				now PediatricsLoss is 0;
		if TroublemakerLost is false: [player hasn't completely lost / fled yet]
			challenge "Leopardman";
			if fightoutcome < 20: [won]
				say "     With a smirk, you look towards the defeated forms of [if PediatricsLoss is 1]the ones you've downed[else]all of them[end if], watching the trio complain to each other about their incompetency. You walk up to them and give them a stern glare and ask them if they're not going to bother Dr. Medea again. Making a step towards them, they quickly nod eagerly and run away, causing you to chuckle inwardly. You whistle as you walk away, inwardly thinking they'll probably just mess with someone else but hey, it's not your problem anymore. Now for you to head back to the good ol['] doctor.";
				now HorusRelationship is 7;
			else if fightoutcome > 19 and fightoutcome < 30: [lost]
				say "     Falling to the ground with a moan, you look up and see the leopardman smirking at you. You roll your eyes and are determined to get up with all your energy. Quickly you push up and stand, using all the strength you can and you do manage it, to the shock of the feline. However on your end, you feel a magical energy filling your body, urging you to continue on.";
				increase PediatricsLoss by 1;
				if PediatricsLoss is 2:
					say "[PediatricsTroubleFail]";
					now PediatricsLoss is 0;
					if TroublemakerLost is false:
						now TroublemakerLost is true;
				else:
					say "     You manage to hold on to all that energy and keep standing. This actually appears to impress all of the trio who approach you with a contemplative look. 'You're... glowing like the sun,' one of the leopardmen mutters, staring at you in awe. Glancing down at yourself, sure enough you are giving off an aura of the star in the sky that gives everyone light. It's such a magnificent radiance that it has enraptured the once enemies you were fighting. In fact, it's a tad bit terrifying, to the point that they're bowing to you. This is an odd circumstance considering that you had lost to them once.";
					WaitLineBreak;
					say "     Deciding to use your newfound power, whether it's a gift or what, you order the three to leave Dr. Medea alone. It's absurd and scary how quickly they comply as they nod eagerly and stand. Not really wanting the trio to be there any longer you shoo them off, causing them to happily run, though they do send a longing look in your direction that causes you to shudder a bit. A few seconds after that you feel the magic power leave you, causing you to feel rather exhausted but you nevertheless have completed what you came here for, hopefully Medea has finished her end of the deal.";
					now HorusRelationship is 7;
					now HorusFollowers is true;
			else if fightoutcome >= 30: [fled]
				say "     Not thinking that you could beat the leopardman you dash away from him, running towards the end of the alleyway that you came in from. When you get out of the dark passageway you are panting and breathing hard. You lean up against a building and think hard, realizing that you'll have to come back here sometime later to finish your end of the bargain before showing your face back at Medea's office. With a groan you walk off, to head somewhere else, vowing to return.";
				if TroublemakerLost is false:
					now TroublemakerLost is true;
				now PediatricsLoss is 0;

to say PediatricsTroubleFail:
say "     However suddenly all your energy leaves you and you end up on the ground. Laying on the ground exhausted, you hear chuckling and laughing from behind you. Looking up and around you see the trio pointing at you and sneering in your direction. 'That was pathetic!' one of the leopardmen says. They all send their own insults and jeers towards you before telling you to try better next time before you start to slink off away from them and out of the alley to lick your wounds. Hopefully you can get them next time, because you really wouldn't want to return to Medea empty-handed. After all, she is helping you with the research that you desperately need right now.";

instead of navigating Pediatrics Lobby while HorusRelationship is 7:
		say "[NavCheck Pediatrics Lobby]";
		if NavCheckReturn is false, stop the action; [can't navigate there right now]
		move player to Pediatrics Lobby;
		say "     Once you've managed to return to the Pediatrics Lobby you knock on Dr. Medea's door. A prompt 'Come on in!' echoes from behind it, leading you to open it and head on in. Inside you find the lizard-woman leaning back in her chair, slightly disheveled from what appears to be a lack of sleep. Upon seeing you, she perks up, quickly speaking. 'Have you taken care of the troublemakers?' she asks, clearly not budging with her information until you give yours. [if TroublemakerLost is true]You comment that you have, though it was a hectic fight to get rid of them, as they caused you a bit of trouble. [else]You tell her that it was a piece of cake, that they all went down without much of a fight. [end if]Waving her claw in your direction she asks you to come on over towards her worktable, causing you to shrug.";
		say "     'I managed to isolate the DNA and take a close look at the genetics of the sample you gave me and... let me tell you it's a piece of work,' Medea says with a sigh. Reaching over to her notes and looking over them she continues to explain a bit of what she means. 'When I experimented a bit on it, I noticed something, while it is intent on absorbing other creatures, it's not them that they're interested in, at least entirely,' she says, scratching her head. You ask her what she's talking about, as it appeared rather intent on attacking you. Rolling her eyes, she starts talking again. 'That's because it's only interest is obtaining new strains of nanites,' Medea says with a pointed look. Then reaching over and tapping you on the chest. 'You my friend must have something that it's interested in,' she chuckles.";
		WaitLineBreak;
		say "     With a sigh you ask her if she was able to figure out any way to stop the thing it originated from. She sadly shakes her head though promptly after she does give a smile. 'No, but I do recognize some of the genetic work, which concerns me,' Medea says with a frown. You return her facial expression and ask her what she means. 'Well, when I first moved here a while back, I heard of a geneticist named Jeremiah, so I looked into his work and the sample shows traces of it,' the lizardwoman says. You quickly ask the doctor if he could have done this on purpose and she hurriedly shakes her head. 'No, he was a kind man, intent on solving many diseases. I can tell you where his research area was though,' she says. You thank her for her help, to which Medea just smiles and says it was no problem as you helped her in turn. After getting the information from her you leave her be, telling her that you'll return if you find anything.";
		now HorusRelationship is 8;
		now Patient Zero is not resolved;

Table of GameEventIDs (continued)
Object	Name
Patient Zero	"Patient Zero"

Patient Zero is a situation.
Patient Zero is resolved.
The sarea of Patient Zero is "high"

instead of resolving Patient Zero:
	if HorusRelationship is 8:
		say "     Wandering the streets of the High Rise District you look at the tall buildings, searching for the offices that Medea told you about. Thankfully though you soon enough spot the one you were looking for and pull open the door. You find yourself in a lobby area, which looks typical for a multi-office building like this. Bypassing the desk you look at the directory to search for the suite number that you were given and quickly find it. Noticing a sign by the list of offices you curse when you see it as it tells you the elevator is broken. So even if the power was on somehow, you'll have to use the stairs. So with a groan you make your way to the staircase.";
		say "     It takes you a while to get up the stairs, due to the large amount of floors you have traverse. Soon enough you reach the required level and open up the door. When you enter the hallway, you're met with a white walled and floored area. Making your way down the tiled passage you look at the various doors, searching for one labeled Jeremiah. Thankfully it doesn't take you long to find it, approaching the entrance. Turning the doorknob you enter the researcher's lab. At first you weren't expecting much but as soon as you get in, those thoughts were wiped away with what sights met you immediately after.";
		WaitLineBreak;
		say "     The research lab was completely trashed, shelves crashed on the floor, desks crushed and chairs thrown about the place. The first thing to draw your attention are the notes on the floor, to which you collect in a pile. Beginning to read them you realize that Jeremiah was messing with his own genetics. However, when the nanites hit, he began to experiment with the various infections however as the notes go on you see that there was an accident in the lab. In a fit of clumsiness he knocked over a shelf and spilled a whole lot of vials of nanites and it appeared to have corrupted his own nanites.";
		say "     Putting the papers away, you make your way over to the destroyed vials you notice the pool of stuff on the floor. Seeing that there's an intact vial you grab it and carefully try to edge the pool into the vial, using whatever you can find to push it in. Once you filled it up you pocket it safely and then stand up, brushing off your legs. Turning around, something catches your eye on a chair, causing you to walk over to it. When you get there, you find a piece of cloth with some blood on it. Thinking that'll be enough you pocket and head on out, making your way down and out of the building. Hopefully the doctor will be able to do something with the stuff you've found.";
		now HorusRelationship is 9;

instead of navigating Pediatrics Lobby while HorusRelationship is 9:
		say "[NavCheck Pediatrics Lobby]";
		if NavCheckReturn is false, stop the action; [can't navigate there right now]
		move player to Pediatrics Lobby;
		say "     Returning to the lobby you make a beeline for Medea's door and knock on it, once more you hear her ask you to come in, to which you do, promptly turning the knob and opening it. Once you're inside, you see that she's a bit dirtied with bodily fluids, making you wonder what she was doing earlier. Seeing your curiosity she chuckles. 'Ah, don't worry, I had a patient in here earlier and I had to help her calm down. Now what do you need?' she asks, taking a nearby cloth to clean herself off. You take your findings from where you put them and place them on the counter, presenting them to her. She looks at it, intrigued, and picks up the notes, 'ah'ing in interest as she reads them.";
		say "     Immediately after finishing the notes she moves to the vial and takes out a slide and pours a bit of it onto it and puts it under the microscope and looks at it. 'Interesting, it looks like the nanites are constantly fighting each other for dominance, there appears to be a god awful amount of infections here, at the bare minimum I count thirty,' she says, humming with interest. 'It's a good thing you didn't touch it, granted just your hand wouldn't really do much... Jeremiah must have gotten soaked with these,' Medea muses aloud, before removing the slide and putting the cloth on the slide.";
		WaitLineBreak;
		say "     As soon as she looks into the microscope she lets out a small gasp before quickly grabbing a dropper. Bringing it over to the cloth she puts a few drops onto the blood. Suddenly the blood is sucked up and absorbed into drops, increasing its size. She takes the sample and pours it into a new vial. Promptly she takes the vial and walks over to you, placing it into your hand. 'So, I'm hoping that this will work. It contains Jeremiah's original nanites. If you manage to defeat him again, pour this onto him and it MIGHT just revert his transformation, if the nanites are smart enough to remember his original form,' Medea says with a sigh. You nod and thank her for her help and wish the lizard-woman luck on her Pediatrics Clinic.";
		now HorusRelationship is 10;

[Boss-Esque Events]

Table of GameEventIDs (continued)
Object	Name
Nightmare Mutation	"Nightmare Mutation"

Nightmare Mutation is a situation. The level of Nightmare Mutation is 10.
Nightmare Mutation is inactive.
The sarea of Nightmare Mutation is "Capitol".

when play begins:
	add Nightmare Mutation to badspots of Body Horror;

Instead of resolving Nightmare Mutation:
	if HorusRelationship is 2:
		now inasituation is true;
		now fightstatus is 0;
		say "     Having been a good twenty minutes wandering around the capitol district you wonder if you're ever going to actually run into or find any information about this darkness. Letting out a sigh and kicking a rock that's in your path you continuing to walk around. However, when the piece of stone that you let launch ends up slamming against a knocked down street sign, letting a loud clang ring out. 'Help! Is someone out there!' A scream is uttered seconds later from around the corner of a building. The voice is terrifyingly desperate sounding, exactly as if the person shouting it is fighting for their life rather their body. But... that can't be? The nanites prevent most forms of death other than instantaneous.";
		say "     Suddenly a cold and dark thought runs through your mind. Could it be the darkness that Horus wanted you to search for? In a quick split second decision you dash forward and around the corner, coming to the most horrific sight ever. At the end of the street is a rapidly shifting creature, changing from one form to another almost every instance. It doesn't even seem to have a set consistency, resembling more of a blob than a solid shape. But that's not what truly shocks you. No, what does is what's happening to the screaming and struggling orc in its grasp. The green humanoid's form starts to shudder and the true terror starts to happen.";
		WaitLineBreak;
		say "     For a second the orc's skin quivers before all of a sudden in front of your eyes its entire body starts breaking to pieces, turning dust. Everything from its clothing to its tusks to its body parts are turning to particles in the air the longer the creature has hold of him. A morbid thought passes your mind that it's probably the nanites that are scattering into the sky above. Though before it can fly away on the wind it appears to halt mid flight and reverse direction, going straight at the creature, as if its absorbing it all. To your shock one of the various forms that it appears to alternate rapidly into is that of the orc it just killed.";
		say "     You try your best to suppress a shudder when it turns its attention towards you. Single step by single step it moves closer to you. Well, shit, it looks like you have enough strength to actually garner recognition for it, but you suddenly realize that this'll be a fight for your life as well. You can't mess up here or you're pretty sure that you'll end up dying just like the orc you couldn't save. So with a determined look on your face you prepare yourself for a battle that you need to win.";
		challenge "Destabilizing Mutant";
		if fightoutcome < 20: [won]
			say "     With one last powerful strike you knock the creature to the ground, seemingly having won the fight. However, to your horror it gets back up, looking not hurt at all. Thankfully though seconds later, it appears to turn and run away, as if terrified of you. Although you're pretty sure that it's not at all. Plopping yourself on the ground with a sigh of relief you let yourself recover for a bit before you head off, possibly to report to Horus about what you encountered. After all, the Sun God is bound to want to know about what happened here, as whatever that thing was, it's super dangerous.";
			say "     A few minutes later after resting, you get up and get ready to leave. However, before you can go, something catches your sight in the corner of your eyes. It's a tiny wriggling piece of something that appears to be rapidly shifting colors. Curious, you walk up to it and pick it up, examining it closer before quickly realizing something, it's a part of that creature you just fought! It must have broke off when you were fighting the thing, but what are you going to do with it though? Quickly looking around you see a stray piece of cloth and hurriedly grab it and wrap the piece in it, making sure it can't interact with any part of you, just in case. Once you're done you start heading off, figuring you should get back to Horus as soon as possible.";
			now HorusRelationship is 3;
			now inasituation is false;
			now Nightmare Mutation is resolved;
		else if fightoutcome is 22: [submitted]
			say "     Realizing you can't do anything against this creature you drop to the ground with your hands up, and quickly realize this was the worst possible thing to do. Because as soon as you do this, it charges right at you and grasps a hold of you and you start feeling something... something horrifying. Your insides start to shift, as if the nanites that make you up are protesting against whatever the being is doing. However, it appears that they can't put up a fight for long as suddenly your body starts pulsing outwardly before what happened to the orc starts happening to you. As soon as you see your flesh turn to dust your mind blanks, as if your sanity can't comprehend it, you're going to be a part of this thing and you can't do anything about it. Mere seconds later does blackness cover your consciousness as you are no more.";
			now bodyname of Player is "dead";
			end the story saying "You're dead - DEAD!";
		else if fightoutcome > 19 and fightoutcome < 30:
			say "     The creature lunges forward to grab at you and you try your best to move out of the way but you're too tired, too exhausted. So, without any resistance the being wraps its body around you, causing what you're sure happened to the orc occur to you. The sensation is horrifying as a sensation of your insides beginning to shift runs throughout your entire person, as if the nanites are fighting the incursion against you. But it's a losing fight for them as the outsides of your body begin to gurgle and pulse, the pressure and pain on your senses increasing as time goes on. Seconds later your flesh starts to turn to dust, causing your mind to blank, your sanity unable to process what's occurring. One last thought though does run through your head before utter blackness; You're going to be a part of this creature and you can't do anything about it.";
			now bodyname of Player is "dead";
			end the story saying "You're dead - DEAD!";

Table of GameEventIDs (continued)
Object	Name
Nightmare Showdown	"Nightmare Showdown"

Nightmare Showdown is a situation. The level of Nightmare Showdown is 15.
Nightmare Showdown is inactive.
The sarea of Nightmare Showdown is "capitol".

when play begins:
	add Nightmare Showdown to badspots of Body Horror;

Instead of resolving Nightmare Showdown:
	if HorusRelationship is 11:
		now inasituation is true;
		now fightstatus is 0;
		say "     Returning to where you found the creature before, you wonder if it moved elsewhere as you don't spot it. However, that thought doesn't remain for much longer as you see something large out of the corner of your eyes. Turning around quickly you see the rapidly shifting being once more, making its way towards you. The cure is on your person but you don't think you could inject it without getting touched with the intent to be eaten by it. So you more than likely have to fight it and get it weakened to do anything. So, with a deep breath you sink down into a fighting stance and get ready to lunge at it.";
		challenge "Destabilizing Mutant";
		if fightoutcome < 20: [won]
			say "     Swinging your weapon of choice towards the blob one last time, you manage to knock it back, causing it to deflate on itself. Letting out a breath of victory, you approach it, pulling out the injection pen that you were given with the cure. However, all of a sudden your senses start screaming at you, telling you to move out of the way. Listening to them, you roll out of the way, causing you to drop the needle, thankfully not breaking it. When you see what came your way you are massively glad that you dodged when you did. To your shock it's another destabilizing mutant, making you wonder which one is the original, or are they both the real one. Though, you shake your head, realizing you don't have time to think about that, as you are quickly thrown into a fight as it lunges at you.";
			challenge "Destabilizing Mutant";
			if fightoutcome < 20: [won]
				say "     Letting out a battle cry you swing your leg back before landing a good solid kick onto the creature, causing it to go sailing back and crash into a nearby wall, slumping down. Panting heavily, you stumble over towards where the injection pen fell, hoping that this one is the correct one because you really don't want to have to go back for another cure. However, the sudden sound of moving behind you causes you to turn around rapidly and gasp in horror. The rapidly shapeshifting blobs that you were fighting quickly move towards each other and seem to merge with each other, forming one gigantic undulating mass that slowly starts lumbering in your direction. Inwardly you laugh, realizing that it made your job eaiser as now you don't have to pick one for the cure, since they're now just one being. Readying your weapon you look at the creature and charge to meet it head on, hoping that you'll win this fight.";
				challenge "Destabilizing Mass";
				if fightoutcome < 20: [won]
					say "     Managing to nimbly dodge a tendril that shoots straight in your direction you spot a chance to go for the injection pen. Rolling towards it, you grab the item off the ground before jumping back at the creature. Slamming it downward onto it, you hear the hiss of the mechanism of the device as it pushes the cure into the massive being. Seconds pass without anything happening, causing you to fear it was a failure, however that is promptly thrown out the door when it starts to spazz out. The rapidly shapeshifting mass slowly starts to shrink and coalesce into a single shape. You're actually rather shocked when it shrinks to the point of being about four feet two.";
					say "     When it finishes, laying on the ground is a short-ish person with pointy ears and dark blue hair wearing a lab coat. They groan before pushing themself off the ground before standing up, looking at you curiously. 'Were you the one who saved me?' He asks, the person clearly male from the body tone and facial features.  You nod though, you tell him that you had help from other people but yeah you're the one who delivered the cure. He thanks you profusely before introducing himself as Zerbo the gnome, a researcher. That last bit you tell him you know as much, as you've had to look into him to find a cure.";
					WaitLineBreak;
					say "     Mentioning the action that resulted in him becoming becoming a monster he blushes. Moving onward so he doesn't get too embarrassed, you ask him if he needs a place to stay. 'Yeah, that'd be great! I'm pretty sure my place is trashed.' He says with a cheerful grin. Inwardly you chuckle, as his place was destroyed from the rampage he went on as he transformed. However, you tell him that you'd be glad to host him where you're staying. He thanks you for that, after which the two of you promptly head for the Abbey. Thankfully the path on the way there is pretty safe so you two don't run into anything dangerous, managing to make it there without any trouble.";
					say "     Once there the two of you have a look around, Zerbo probably trying to figure out which room is best for him to stay in. It doesn't take long for him to pick the Computer Lab, and grab a table that doesn't have anything on it. 'This is perfect for me to set my writing on and I can probably set up my chemicals in this corner,' the gnome says cheerfully. You smile at his enthusiasm and tell him you're glad that he's happy. Right after that you let him know that you'll allow him to settle in before you step away, a mental thought that you should probably return to Horus and let him know what happened.";
					move player to Computer Lab;
					now HorusRelationship is 12;
					now inasituation is false;
					now Nightmare Showdown is resolved;
					move Zerbo to Computer Lab;
					now PlayerMet of Zerbo is true;
					now Loyalty of Zerbo is 1;
				else if fightoutcome is 22: [submitted]
					say "     Feeling that this fight is way too hard, you hold your hands up in surrender, hoping that the creature will grant you mercy. However it never comes as the ginormous mass instead rumbles towards you before engulfing you, causing your body to scream in pain as it starts to rapidly rip itself apart and absorb into the creature. The rate at which you dissolve is so fast though that your mind quickly blacks out as you fade away into bliss.";
					now bodyname of Player is "dead";
					end the story saying "You're dead - DEAD!";
				else if fightoutcome > 19 and fightoutcome < 30:
					say "     Panting heavily, you don't think you'll be able to make it. True enough, as you're about to dodge, you stumble and the mass grabs you, causing your body to screech in pain as it starts to ripple and then flake apart rapidly into pieces. The rate at which you're dissolving is so fast however that your mind quickly blacks out, so you promptly fade away into bliss as you are absorbed into the creature.";
					now bodyname of Player is "dead";
					end the story saying "You're dead - DEAD!";
			else if fightoutcome is 22: [submitted]
				say "     Realizing you wont win, you hold up your hands, hoping to lull it into a sense of false security. However, that doesn't work at all, as instead it just lunges straight at you. Its entire body slams right into yours and the tendrils latches onto you. Suddenly your skin ripples as a horrifying sensation goes throughout your body and pieces of it start to flake away and float into the wind. As larger and bigger pieces begin to float away, immense pain tears through your mind, as if the creature is trying to cause the most agony to you it can before it absorbs you. Luckily, at least that is the last thought that passes in your head, you fade away quickly after that and become one with the being.";
				now bodyname of Player is "dead";
				end the story saying "You're dead - DEAD!";
			else if fightoutcome > 19 and fightoutcome < 30:
				say "     Tiring of the second fight, you are unable to react when the blob charges right at you. It swings one of its tendrils at you, latching straight onto your body. When it does so, you can feel your senses and nerves screaming at you in pain. Your body ripples in front of your very eyes in a horrifying fashion before flecks and pieces of your flesh start to fall away and float in the wind. When larger amounts begin to float away, the pain increases massively, as if the creature is trying to cause the most pain to you. However whether good or bad, your mind blanks out as you fade away, becoming one with the being itself.";
				now bodyname of Player is "dead";
				end the story saying "You're dead - DEAD!";
		else if fightoutcome is 22: [submitted]
			say "     Realizing that you're going to lose anyway you put up your hands, hoping to get close enough to it to pull the pen on it. However quickly you notice it was a horrible idea as it lunges at you and grabs a hold. You start to feel something terrifying happen as your body ripples before your very eyes. Right after that flecks and pieces of your skin start to fall off as the nanites in your body groan, as if trying to resist the intruder to your biological ecosystem. As your flesh turns to dust whether good or bad, your mind blacks out as you fade from this world and become one with this creature.";
			now bodyname of Player is "dead";
			end the story saying "You're dead - DEAD!";
		else if fightoutcome > 19 and fightoutcome < 30:
			say "     Panting heavily you curse when you realize the creature is about to lunge towards you. You try to dodge but realize that you don't have the energy to do so. Thus, the destabilizing mutant is able to slam into you and grab ahold of you. Suddenly you start to feel a terrifying sensation happen as your body ripples right before your eyes. Quickly after that flecks and parts of your skin start to fall off and float away as the nanites in your body groan, trying their best to resist the intruder to your body. However they obviously fail as your flesh suddenly turns to dust and your mind blacks out causing you to fade from this world, becoming one with this creature.";
			now bodyname of Player is "dead";
			end the story saying "You're dead - DEAD!";

Section C - Code for Destabilizing Mutant and Its Boss Form

to say Destabilizing Mutant Wins:
	if inasituation is true:
		stop the action; [dealt with at the event source]
	say ""; [for now]

to say Destabilizing Mutant Loses:
	if inasituation is true:
		stop the action; [dealt with at the event source]
	say ""; [for now]

to say Destabilizing Mutant Desc:
	if inasituation is true:
		stop the action; [dealt with at the event source]
	say ""; [for now]


Table of Random Critters (continued)
NewTypeInfection (truth state)	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Name entry is "Destabilizing Mutant";
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]The spasmodic blob that once was a person lunges towards you![or]The horror incarnate creature undulates in your direction before striking in your direction.[or]The rapidly shifting glob of semi-humanoid mass charges straight at you![at random]";
	now defeated entry is "[Destabilizing Mutant Loses]";
	now victory entry is "[Destabilizing Mutant Wins]";
	now desc entry is "[Destabilizing Mutant Desc]";
	now face entry is "<Noninfective>";
	now body entry is "<Noninfective>";
	now skin entry is "<Noninfective>";
	now tail entry is "<Noninfective>";
	now cock entry is "<Noninfective>";
	now face change entry is "<Noninfective>";
	now body change entry is "<Noninfective>";
	now skin change entry is "<Noninfective>";
	now ass change entry is "<Noninfective>";
	now cock change entry is "<Noninfective>";
	now str entry is 18;
	now dex entry is 14;
	now sta entry is 16;
	now per entry is 12;
	now int entry is 8;
	now cha entry is 10;
	now sex entry is "Male";          [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 120;                 [ How many HP has the monster got? ]
	now lev entry is 10;                 [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 10;                [ Amount of Damage monster Does when attacking.]
	now area entry is "Nowhere";      [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 1;               [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 8;         [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 2;          [ Size of balls ]
	now Nipple Count entry is 2;             [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 2;         [ Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0;               [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 8;         [ Length of female sex infection will attempt to give you. ]
	now Cunt Tightness entry is 6;          [ Width of female sex infection will try and give you ]
	now libido entry is 25;             [ Amount player Libido will go up if defeated ]
	now loot entry is "";               [ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 0;          [ Chance of loot dropping 0-100 ]
	now scale entry is 3;               [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]blobby[at random]";
	now type entry is "amorphous-blob";
	now magic entry is false;           [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;       [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]  [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0;      [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Table of New Infection Parts (continued)
Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Name entry is ""; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 5; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 5; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is ""; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [head description of Player] with [eye color of Player], [eye type of Player] eyes and an overall [gender appearance of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...)]
	now Beard Style entry is ""; [short beard style (goatee/three day stubble/full beard/...)]
	now Body Hair Length entry is  0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective  is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3;
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Body Adjective of Player], [Gender Adjective of Player] and your torso is [Torso Description of Player][if Body Hair Length of Player > 0], covered in [Body Hair Adjective of Player] [Hair Color of Player] chest hair[end if]."]
	now Torso Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [torso adornments of Player]."]
	now Torso Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Torso Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Torso Pattern entry is ""; [single word color adjective for the dominant pattern of the skin/fur/feathers/scales]
	now Breast Adjective entry is ""; [adjective(s) example: round, pointy, perky, saggy, bouncy. This would serve as either a general appearance of a infections breasts or possibly something that may be effected by a item or NPC.]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Nipple Count entry is 2; [count of nipples]
	now Nipple Color entry is ""; [one word color descriptor]
	now Nipple Shape entry is ""; [shape example: any shape will do as long as it has a baseline with a current infection or item]
	now Back Change entry is ""; [partial sentence that fits in: "Your back [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Back Change entry]."]
	now Back Adornments entry is ""; [partial sentence to fit: "Your back tickles with the feeling of movement caused by [back adornments of Player]."]
	now Back Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Back Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is ""; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is ""; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Arms Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [ass description of Player]."]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Tail Change entry]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking;]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Asshole Tightness entry is 3;
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "tiny, small, tight, wide, gaping"]
	now Asshole Color entry is ""; [one word color descriptor]
	now Cock Count entry is 0;
	now Cock Girth entry is 0; [thickness 1-5, generates the Cock Girth Adjective]
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 0; [length in inches]
	now Cock Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cock Change entry is ""; [partial sentence that fits in: "Your cock [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is ""; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [cock adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock description of Player]."]
	now Cock Color entry is ""; [one word color descriptor]
	now Ball Count entry is 0; [allowed numbers: 1 (uniball), 2 or 4]
	now Ball Size entry is 0; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is ""; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [ball description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/well-used/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that is [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
   [ Row used to designate any special combat features, "default" for standard combat. ]

to say Destabilizing Mass Wins:
	if inasituation is true:
		stop the action; [dealt with at the event source]
	say ""; [for now]

to say Destabilizing Mass Loses:
	if inasituation is true:
		stop the action; [dealt with at the event source]
	say ""; [for now]

to say Destabilizing Mass Desc:
	if inasituation is true:
		stop the action; [dealt with at the event source]
	say ""; [for now]

Table of Random Critters (continued)
NewTypeInfection (truth state)	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Name entry is "Destabilizing Mass";
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]The spazmodic mass that once was a single blob shambles towards you![or]The horror incarnate creature undulates in your direction before slaming into you.[or]The rapidly shifting mass of semi-blobular creatures charges straight at you![at random]";
	now defeated entry is "[Destabilizing Mass Loses]";
	now victory entry is "[Destabilizing Mass Wins]";
	now desc entry is "[Destabilizing Mass Desc]";
	now face entry is "<Noninfective>";
	now body entry is "<Noninfective>";
	now skin entry is "<Noninfective>";
	now tail entry is "<Noninfective>";
	now cock entry is "<Noninfective>";
	now face change entry is "<Noninfective>";
	now body change entry is "<Noninfective>";
	now skin change entry is "<Noninfective>";
	now Ass Change entry is "<Noninfective>";
	now cock change entry is "<Noninfective>";
	now str entry is 18;
	now dex entry is 14;
	now sta entry is 16;
	now per entry is 12;
	now int entry is 8;
	now cha entry is 10;
	now sex entry is "Male";          [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 300;                 [ How many HP has the monster got? ]
	now lev entry is 15;                 [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 14;                [ Amount of Damage monster Does when attacking.]
	now area entry is "Nowhere";      [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 1;               [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 8;         [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 2;          [ Size of balls ]
	now Nipple Count entry is 2;             [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 2;         [ Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0;               [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 8;         [ Length of female sex infection will attempt to give you. ]
	now Cunt Tightness entry is 6;          [ Width of female sex infection will try and give you ]
	now libido entry is 25;             [ Amount player Libido will go up if defeated ]
	now loot entry is "";               [ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 0;          [ Chance of loot dropping 0-100 ]
	now scale entry is 3;               [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]blobby[at random]";
	now type entry is "amorphous-mass";
	now magic entry is false;           [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;       [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]  [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0;      [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Table of New Infection Parts (continued)
Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Name entry is ""; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 5; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 5; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is ""; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [head description of Player] with [eye color of Player], [eye type of Player] eyes and an overall [gender appearance of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...)]
	now Beard Style entry is ""; [short beard style (goatee/three day stubble/full beard/...)]
	now Body Hair Length entry is  0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective  is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3;
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Body Adjective of Player], [Gender Adjective of Player] and your torso is [Torso Description of Player][if Body Hair Length of Player > 0], covered in [Body Hair Adjective of Player] [Hair Color of Player] chest hair[end if]."]
	now Torso Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [torso adornments of Player]."]
	now Torso Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Torso Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Torso Pattern entry is ""; [single word color adjective for the dominant pattern of the skin/fur/feathers/scales]
	now Breast Adjective entry is ""; [adjective(s) example: round, pointy, perky, saggy, bouncy. This would serve as either a general appearance of a infections breasts or possibly something that may be effected by a item or NPC.]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Nipple Count entry is 2; [count of nipples]
	now Nipple Color entry is ""; [one word color descriptor]
	now Nipple Shape entry is ""; [shape example: any shape will do as long as it has a baseline with a current infection or item]
	now Back Change entry is ""; [partial sentence that fits in: "Your back [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Back Change entry]."]
	now Back Adornments entry is ""; [partial sentence to fit: "Your back tickles with the feeling of movement caused by [back adornments of Player]."]
	now Back Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Back Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is ""; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is ""; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Arms Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [ass description of Player]."]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Tail Change entry]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking;]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Asshole Tightness entry is 3;
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "tiny, small, tight, wide, gaping"]
	now Asshole Color entry is ""; [one word color descriptor]
	now Cock Count entry is 0;
	now Cock Girth entry is 0; [thickness 1-5, generates the Cock Girth Adjective]
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 0; [length in inches]
	now Cock Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cock Change entry is ""; [partial sentence that fits in: "Your cock [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is ""; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [cock adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock description of Player]."]
	now Cock Color entry is ""; [one word color descriptor]
	now Ball Count entry is 0; [allowed numbers: 1 (uniball), 2 or 4]
	now Ball Size entry is 0; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is ""; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [ball description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/well-used/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that is [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
   [ Row used to designate any special combat features, "default" for standard combat. ]

Section D - Gnome infection

to say GnomeLoses:
	say "";

to say GnomeWins:
	say "";

to say GnomeDesc:
	say "";

Table of Random Critters (continued)
NewTypeInfection (truth state)	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Name entry is "Gnome";
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "***";
	now defeated entry is "[GnomeLoses]";
	now victory entry is "[GnomeWins]";
	now desc entry is "[GnomeDesc]";
	now face entry is "a young male's with pointy ears and brightly colored eyes. Bright red hair shaggily spreads out from all different directions on your head";
	now body entry is "humanoid, standing at four foot or so. You're rather fit for such a stature, despite the lack of muscles";
	now skin entry is "glowing, healthy olive toned";
	now tail entry is "a tight butt";
	now cock entry is "human";
	now face change entry is "it shifts, becoming that of a young male's, your ears becoming pointier as well and your eyes brighter too. Your hair changes colors, from what it was previously to a vibrant red before changing into a shaggy style and splaying itself out in different directions.";
	now body change entry is "it starts to shift as your body forms into a humanoid shape, standing at a height of four feet or so. Looking down at yourself you see that you're rather fit despite the lack of muscles.";
	now skin change entry is "it smoothes out, becoming an olive tone that glows with health.";
	now Ass Change entry is "it tightens up, fitting to match your current size.";
	now cock change entry is "it shifts to a human cock.";
	now str entry is 18;
	now dex entry is 14;
	now sta entry is 16;
	now per entry is 12;
	now int entry is 8;
	now cha entry is 10;
	now sex entry is "Male";          [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 300;                 [ How many HP has the monster got? ]
	now lev entry is 15;                 [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 14;                [ Amount of Damage monster Does when attacking.]
	now area entry is "Nowhere";      [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 1;               [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 8;         [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 2;          [ Size of balls ]
	now Nipple Count entry is 2;             [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 2;         [ Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0;               [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 8;         [ Length of female sex infection will attempt to give you. ]
	now Cunt Tightness entry is 6;          [ Width of female sex infection will try and give you ]
	now libido entry is 25;             [ Amount player Libido will go up if defeated ]
	now loot entry is "";               [ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 0;          [ Chance of loot dropping 0-100 ]
	now scale entry is 3;               [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]humanoid[at random]";
	now type entry is "gnome";
	now magic entry is false;           [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;       [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]  [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0;      [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Table of New Infection Parts (continued)
Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Name entry is ""; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 5; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 5; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is ""; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [head description of Player] with [eye color of Player], [eye type of Player] eyes and an overall [gender appearance of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...)]
	now Beard Style entry is ""; [short beard style (goatee/three day stubble/full beard/...)]
	now Body Hair Length entry is  0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective  is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3;
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Body Adjective of Player], [Gender Adjective of Player] and your torso is [Torso Description of Player][if Body Hair Length of Player > 0], covered in [Body Hair Adjective of Player] [Hair Color of Player] chest hair[end if]."]
	now Torso Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [torso adornments of Player]."]
	now Torso Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Torso Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Torso Pattern entry is ""; [single word color adjective for the dominant pattern of the skin/fur/feathers/scales]
	now Breast Adjective entry is ""; [adjective(s) example: round, pointy, perky, saggy, bouncy. This would serve as either a general appearance of a infections breasts or possibly something that may be effected by a item or NPC.]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Nipple Count entry is 2; [count of nipples]
	now Nipple Color entry is ""; [one word color descriptor]
	now Nipple Shape entry is ""; [shape example: any shape will do as long as it has a baseline with a current infection or item]
	now Back Change entry is ""; [partial sentence that fits in: "Your back [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Back Change entry]."]
	now Back Adornments entry is ""; [partial sentence to fit: "Your back tickles with the feeling of movement caused by [back adornments of Player]."]
	now Back Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Back Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is ""; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is ""; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Arms Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [ass description of Player]."]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Tail Change entry]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking;]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Asshole Tightness entry is 3;
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "tiny, small, tight, wide, gaping"]
	now Asshole Color entry is ""; [one word color descriptor]
	now Cock Count entry is 0;
	now Cock Girth entry is 0; [thickness 1-5, generates the Cock Girth Adjective]
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 0; [length in inches]
	now Cock Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cock Change entry is ""; [partial sentence that fits in: "Your cock [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is ""; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [cock adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock description of Player]."]
	now Cock Color entry is ""; [one word color descriptor]
	now Ball Count entry is 0; [allowed numbers: 1 (uniball), 2 or 4]
	now Ball Size entry is 0; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is ""; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [ball description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/well-used/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that is [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
   [ Row used to designate any special combat features, "default" for standard combat. ]

Horus ends here.
