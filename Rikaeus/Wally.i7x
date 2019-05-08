Version 1 of Wally by Rikaeus begins here.
[Version 1 - Introducing Wally an otter eager to attend college]

[ HP of Wally                                              ]
[ 0: Have not met                                          ]
[ 1: Met at beach, accepted escorting him to the college   ]
[ 2: Got him to Tenvale College Campus                     ]
[ 3: Signed him up for classes, unlocking his room         ]

[ WallyQuestDenial                                         ]
[ 0: Have not denied him                                   ]
[ 1: Denied him and said not at the moment                 ]
[ 2: Questioned why the Otter wants to leave his home      ]

[ WallyOrcFled                                             ]
[ 0: Did not yet flee from the orc                         ]
[ 1: Fled from the orc                                     ]
[ 2: Learned about the name Brucie                         ]

[ InsightGained                                            ]
[ 0: No insight into Wally gained                          ]
[ 1: A single piece of insight gained                      ]
[ 2: Two pieces of insight gained                          ]

[ WallyTrust                                               ]
[ 0: Wally doesn't exactly trust you                       ]
[ 1: Have confronted Wally about his reasons for leaving   ]
[ 2: Have seduced him into having sex                      ]

WallyQuestDenial is a number that varies.
WallyOrcFled is a number that varies.
InsightGained is a number that varies.
WallyTrust is a number that varies.

Table of GameEventIDs (continued)
Object	Name
College Hopeful	"College Hopeful"

College Hopeful is a situation.
The sarea of College Hopeful is "Beach".

when play begins:
	add College Hopeful to badspots of guy;

instead of resolving College Hopeful:
	if WallyQuestDenial is 0:
		say "     Wandering the beach you spot a worried otter looking around. As soon as he notices you, the male rushes up to you with a question in his eyes. Curious, you ask him what's wrong. 'So, uh, I've heard that there's a college on the other side of the city and was hoping to attend,' he says, shuffling his foot in the sand. You raise a brow and say that, yes, you've heard of this college as well and ask him why he's telling you about his desire to go there. 'Well, you look like you could take me there if possible?' He looks at you with an eager look. Inwardly you sigh but contemplate the situation you've been presented with.";
		say "     [bold type]Do you wish to escort the otter?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Sure, you'll help him.";
		say "     ([link]N[as]n[end link]) - Nah you don't have the time.";
		if Player consents:
			say "     You voice your answer to the otter who immediately hugs you tight, thanking you profusely. You just pat the male on the head and say it's alright before asking him when he wants to leave. 'Oh! I need to get prepared. A lot of my stuff is back in my little cove I have set up,' he murmurs before taking a look towards the cliffside of the beach. 'How about we meet up outside the beach whenever both of us are ready?' the otter says with a tilt of his head in your direction. You nod and say that's alright though you'll wish to get your escort's name first. Instantly the male blushes, clearly embarrassed for having forgotten to give you his name. 'W-well, my name is Wally,' he stutters out. You tell him it's nice to meet him and that you'll see him soon hopefully. 'Same here!' the otter shouts as he heads off towards the cliffside.";
			now HP of Wally is 1;
			now College Hopeful is resolved;
			now Otter Escort Mission is not resolved;
			now PlayerMet of Wally is true;
		else:
			say "     You shake your head and tell the otter that you don't have time to escort him. This causes the male to frown but he then smiles. 'Ah, well... if you ever change your mind I'll still be here waiting,' he says, looking down at the sand. You raise a brow at this but shrug, walking off to a further distance. Turning around you look at the guy and see that nobody is really approaching him, despite how pitiful he looks. Perhaps you'll help him next time, maybe you won't, it's all up to how you're feeling when you encounter him. You spin on your foot and head off to continue your adventuring, leaving the otter behind.";
			now WallyQuestDenial is 1;
	else:
		say "     As your feet pad upon the sand once again for what seems the hundredth time to you, you notice a familiar face. It's the otter that you denied an escort to the college in the city. He's standing in the spot that he was in before, looking just as worried as he was prior. With a sigh you turn your thoughts inward and think about it. There has to be a reason as to why this guy wants to leave his current home. From what it sounds like, they're pretty safe here, aren't they? Living situations aside, they also should be good for food with being close to the ocean. Sighing and realizing you're not going to get any closer to the answer you contemplate whether or not you'll accept the otter's request.";
		say "     [bold type]Do you wish to escort the otter?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Sure, you'll help him.";
		say "     ([link]N[as]n[end link]) - Nah you don't have the time.";
		if Player consents:
			say "     Deciding that the conundrum that is this otter won't be solved unless you accept, you walk up to the guy who smiles when he sees you. 'Have you thought on my request at all?' he asks, causing you to nod your head in his direction. You voice your answer to the otter who immediately hugs you tight, thanking you profusely. You just pat the male on the head and say it's alright before asking him when he wants to leave. That promptly causes his eyes to widen before he gives you a rather quick answer.";
			say "     'Oh! I need to get prepared. A lot of my stuff is back in my little cove I have set up,' he murmurs before taking a look towards the cliffside of the beach. 'How about we meet up outside the beach whenever both of us are ready?' the otter says with a tilt of his head in your direction. You nod and say that's alright though you'll wish to get your escort's name first. Instantly the male blushes, clearly embarrassed for having forgotten to give you his name. 'W-well, my name is Wally,' he stutters out. You tell him it's nice to meet him and that you'll see him soon hopefully. 'Same here!' the otter shouts as he heads off towards the cliffside.";
			now HP of Wally is 1;
			now College Hopeful is resolved;
			now Otter Escort Mission is not resolved;
			now PlayerMet of Wally is true;
			now WallyQuestDenial is 2;
			increase InsightGained by 1;
		else:
			say "     You shake your head and decide that right now isn't the time, perhaps at a later date but not now. Instead you turn and head off, returning to what you were doing before, leaving the otter to his own devices.";
			now WallyQuestDenial is 2;

Table of GameEventIDs (continued)
Object	Name
Otter Escort Mission	"Otter Escort Mission"

Otter Escort Mission is a situation.
Otter Escort Mission is resolved.
The sarea of Otter Escort Mission is "Outside"

when play begins:
	add Otter Escort Mission to badspots of guy;

instead of resolving Otter Escort Mission while HP of Wally is 1:
	now inasituation is true;
	if WallyOrcFled is 0:
		say "     Making your way to the entrance of the beach, you wait there, expecting the otter to show up, hoping that he'll show up soon. Thankfully you don't have to stand there long, as Wally walks on up with a heavy looking backpack on him, seeming all ready to go. Just in case, you ask the male if he has everything he needs for the trip. 'Mhm, I have everything I own here with me,' he says gesturing to what he's carrying. Nodding at that, you tell him that the both of you should get going lest it take any longer to get there. Especially as you're pretty sure that the backpack will probably tire out the otter.";
		say "     The both of you make an agreement to make your way out from the beach area of the city and start heading your way through the city. Because of the fact that Wally doesn't seem that combat-capable you make sure to use the alleyways at least the ones that seem the safest. So you two are darting from opening to opening, hoping that you're not caught by any mutant wandering about looking for a hole to fuck. Currently you were passing through an area with really tall buildings and heading towards a rather fire and brimstone one. Hopefully you can get there without running into trouble.";
		WaitLineBreak;
		say "     Just as you think that thought and you travel into the brimstone area you notice a bunch of mutants wandering around. So, you make your way carefully around the place, keeping note of the various beings hunting for prey. As you progress you spot every once and a while, tall green-skinned men with tusks and only loin-cloths for clothing. Just like the others they are looking for someone to possibly steal away and have their way with. As you near the border of the place you notice one of the earlier males standing guard, searching for something specific. As much as you wish you could sneak by, this is the only direct path to the campus and you've been traveling for quite sometime so you can't really look for another way around.";
		say "     With a sigh, you step forward, readying yourself for a fight. However the green-toned man instantly turns in your direction with a tusky grin. 'It looks like I've found my prey, that shark-guy was right about you possibly heading this way,' he says, his words causing your otter friend to seize up in fear. While you're curious about why what the guy is saying is affecting Wally, you have something to focus on right now, getting the both of you through this situation. So with that resolution in mind, you charge forward without hesitation, hoping to beat the challenge in front of you.";
	else:
		say "     Returning to where you left Wally you look around, hoping to find the otter. Looking around the corners and in the alleys you manage to find an open door into a building. In there is the male with a blanket wrapped around him and a few bags of chips opened by him. His eyes light up when he sees you. 'Ah! You're here!' he says rather excitedly, getting up, grabbing his backpack, and stuffing the blanket into it. You nod and tell him that you're ready to escort him to the campus, hopefully with a different outcome this time. He gives you a smile and lines up behind you, clearly prepped to go.";
		say "     Making your way out of the building you head out of the area you're in and back to the fire and brimstone setting you were at the previous time. When you get there you dart in and out of the shadows, hoping that you aren't seen by any of the enemies wandering the streets. Soon enough though you get to the portion of the district that you ran from and a sad situation meets your eyes. Standing there just like before is the green-skinned warrior, as if he was waiting for you two to return. With a sigh you gesture for Wally to stay right in the alley, though as you move forward you hear a 'Why won't Brucie leave me alone!' you hear the otter mutter. Shelving that thought for now, you charge at the enemy, intending on defeating him.";
	challenge "Orc Warrior";
	if fightoutcome >= 20 and fightoutcome <= 29: [lost]
		say "     Falling to the ground, being knocked back with a particularly strong strike, the green-skinned male advances on you with a smirk. 'I was told I couldn't touch the otter but the shark said nothing about his escort,' he chuckles, grabbing a hold of you and hefting you up into his arms. You wanted to struggle but you couldn't, all your energy had been expended in the fight with the enemy earlier. The lack of effort given in trying to escape allows the tusked assailant to grab ahold of any clothing you have, if any, and remove it. Once you're sufficiently naked, the green male undoes his loincloth, revealing a rather large cock that he positions promptly at your rear entrance.";
		say "     As soon as it presses against your pucker you feel something wet, presumably precum. However, when this fluid enters you, a warm sensation thrums through your entire body, filling you with an almost euphoric sensation. These feelings loosen up all the tense muscles in your body, relaxing you in the green-skinned male's grip, causing him to give you a tusky smirk. 'That's better now, how about you enjoy the ride and become a good breeder,' he murmurs as he begins to ease his cock into you. While the precum of the enemy did relax you a bit, the entrance is still a bit rough causing you to let out a grunt.";
		WaitLineBreak;
		say "     Your sex partner also lets out a grunt but for a different reason than you. He's clearly enjoying the vice grip that is your tight hole. As soon as he ends up balls deep in you the green-skinned male begins setting a pace, a rather rough one at that, practically jack-hammering into you. The sound of his balls slapping against your cheeks fill the area. Of course that's not the only thing as by now your assailant is leaking copious amounts of precum, the warm fluid filling your ass. The same thing that was happening to you before occurs again but much stronger, causing the sensations of the cock going in and out of you to turn into pleasure tenfold.";
		say "     Seeing your groans turn into moans, the green-skinned male smirks and speaks up. 'I knew you would enjoy it,' he says, with a chuckle at the end. You can tell, quite blurrily in mind, that the enemy is getting close to his climax, which means you as well possibly if his actual cum has the same properties as his precum. A side thought comes up, wondering what the hell Wally is doing while you were being assaulted by this person. However, that stray idea was ripped away when the tusky male manages to thrust just right, causing you to gasp out loud in pleasure, screaming, 'Fuck!' Soon enough, though, you can feel his hard length grow a bit larger in you, signaling that he is about to cum.";
		WaitLineBreak;
		say "     With a loud grunt, the green-skinned male thrusts one last time before you feel a deluge of warm liquid flood your hole, filling you with an almost ecstatic, euphoric sensation. [if Player is herm]With a groan, your body shudders, your cock spilling rope after rope of cum all over the enemy's chest. On the other hand your pussy has its climax as well, leaking copious amounts of femcum, causing it to mix with the sperm coming out of your hole. [else if Player is male]You groan out loud, a shudder of pleasure going through you. As this happens ropes of cum shoot out of your cock, splattering all over the tusky enemy's chest. [else if Player is female]Your body spasms as you are wracked with your orgasm, causing you to moan loudly. When this happens your pussy begins to leak large amounts of femcum, that of which mixes with the sperm the enemy had just unloaded into your hole. [else]Your eyes practically roll into the back of your head as you are wracked with amazing pleasurable sensations. You moan and groan out loud as practical pins and needles of excitement dance across your skin. [end if]As your slowly coming down from your high, you hear a painful yelp in front of you and suddenly you fall to the ground. Looking up you see Wally above you, giving you a concerned look and below him, the orc clearly unconscious. It appears that your friend landed a kick to the balls. The otter holds out a hand and helps you up, giving you whatever clothes you need to put them on. Once you've made yourself decent you turn to him and ask him if he still wants to continue.";
		say "     With a blush the otter nods rather eagerly. 'Y-yeah, you went through all that and still wish to help...' he says with a stutter. So with a groan you stretch your body and gather yourself. Wally wanders over to where he left his backpack and picks it up, putting it on his back. Once you both are all ready to go, you start making your way through the fire and brimstone area once more. On the way through your friend speaks to you. 'Are you alright?' he asks you with a tone of concern. You smile at him and say you're alright and for him not to worry at all. That manages to get him to smile in return, clearly happy at your response.";
		WaitLineBreak;
		if (PlayerMet of Hailey is true and PlayerMet of Marcus is true):
			say "     Upon finally reaching the green grass of the campus you are set upon two familiar faces, Hailey and Marcus, the two guards who watch over the entrance to the college. 'Hey there! Who's the friend you've got there?' the Spartan asks, glancing towards Wally. The otter appears rather surprised you know these two but is happy to meet friendly faces. He steps up to them and holds out a hand to them, introducing himself. They accept the hand one by one, also giving him their names. You tell the two that you're here to escort the male so he can become a student. This causes Hailey to light up in interest.";
			say "     'Hey! We could show him around for you and when he's ready to sign up you could return and help him through it,' she says with a smile. You nod saying that's a good suggestion. You turn towards Wally and ask if he's gonna be alright here with the two. He gives you a smile and nods before speaking up. 'Yeah, I'll be alright, I'm excited to see what they have in store here!' the otter says with a glint in his eyes. You can't resist the urge and end up patting him on the head, causing him to blush. You tell him that you'll see him soon enough before you turn around and head off on your own.";
		else:
			say "     When you reach the green grass of the campus you are set upon by two figures, one of them relatively shorter than the other and much more male looking. They walk up to you and smile. 'Hello there you two, welcome to Tenvale College!' the female says with a happy voice. You nod and look around seeing many students walking around all of various species but all looking like students heading to class. Of course they all look rather tough just like the warrior you fought on the way here. Taking a closer look at the two people you see that the male is dressed in nothing but sandals, a red cloak, a red-plumed helmet, and an armored jock-strap. Sheathed on his hip and back is a sword and shield, clearly showing he means business at least in protecting the area. The female has light green skin and blonde hair wearing a crop top that showed off her ample breasts in a modest way and a skirt that was slightly raised, hinting at something under it.";
			say "     After taking a look at them the male asks what the two of you are doing here which prompts you to say that you were escorting Wally here to the campus so he could sign up. 'That's great! Tenvale is a good place for anyone wanting to learn!' he says with a smile towards the otter. Seeing your friend's excited face you ask if they could show him around. The female nods at you, speaking up right after. 'We'd be happy to give him a tour of the place, and if you want to come back when he signs up for classes you can,' she says. You thank them and ask for them names, the male introducing himself as Marcus and his partner as Hailey. They then take Wally along the walkway, talking about the college. You on the other hand head off, deigning to return when need be.";
		infect "Orc Breeder";
		if WallyOrcFled is 1:
			now WallyOrcFled is 2;
			increase InsightGained by 1;
		now HP of Wally is 2;
		now Otter Escort Mission is resolved;
		now Otter Class Sign Up is not resolved;
	else if fightoutcome >= 30: [fled]
		if WallyOrcFled is 0:
			say "     Realizing that you can't win this fight you take one foot and turn, spinning around before grabbing Wally's arm. You quickly dash out of the alley and run as fast as you can towards a safe place, hoping you can get away from the enemy. While this is happening you have time to think about what the green-skinned man said, and realized that it was the mention of a shark-guy who terrified the otter. Looking towards your friend you realize he's breathing heavily and not just from the running. Just what did the male do to him that is causing this reaction? Obviously it's something bad and clearly nothing he wants to share at the moment.";
			say "     When you get far away enough, you turn to the otter and give him a smile, telling him that you both should meet up and try again later. 'But what if that guy shows up?' Wally asks, clearly nervous. You give him a calming look and say that you'll take care of him the best you can, you promise. That appears to calm down the male who nods and makes his way through the darkened alleys, clearly looking for a place to hide until you return for him. Hopefully he can survive on his own without you, from what you saw he did pack a bit of food just in case so he should last a fair bit. So with a sigh you turn and head off.";
			now WallyOrcFled is 1;
		else:
			say "     Once again this is a lost fight, so you once more turn and grab Wally's wrist from the alley he's hidden in and run off. Minutes later you make your way to where the otter had stayed during the time he was waiting for you to return. Panting you look at him and apologize for not managing to win this time. He smiles at you before speaking. 'It's okay, you'll get them soon enough! I'll stay here until you can pick me up again,' the otter says before heading into the building. You nod in his direction, hoping that he's right about being able to beat that green-skinned warrior.";
	else if fightoutcome >= 10 and fightoutcome <= 19: [won]
		say "     With one last strike you manage to send the enemy flying, quite far actually to the point he slams into a wall out cold. Inwardly you sigh a sound of frustration as you realize that with him being unconscious you can't get any information. Looking towards your friend, [if WallyOrcFled is 1]who is just coming out of the alleyway[else]who walks up to you from the side[end if], you sigh and turn towards them, asking Wally if he's alright. 'I'm fine, let's just get to the campus right away,' he says with an eager look towards the horizon. You nod and start moving, now ignoring the green-skinned man.";
		if (PlayerMet of Hailey is true and PlayerMet of Marcus is true):
			say "     Upon finally reaching the green grass of the campus you are set upon two familiar faces, Hailey and Marcus, the two guards who watch over the entrance to the college. 'Hey there! Who's the friend you've got there?' the Spartan asks, glancing towards Wally. The otter appears rather surprised you know these two but is happy to meet friendly faces. He steps up to them and holds out a hand to them, introducing himself. They accept the hand one by one, also giving him their names. You tell the two that you're here to escort the male so he can become a student. This causes Hailey to light up in interest.";
			say "     'Hey! We could show him around for you and when he's ready to sign up you could return and help him through it,' she says with a smile. You nod saying that's a good suggestion. You turn towards Wally and ask if he's gonna be alright here with the two. He gives you a smile and nods before speaking up. 'Yeah, I'll be alright, I'm excited to see what they have in store here!' the otter says with a glint in his eyes. You can't resist the urge and end up patting him on the head, causing him to blush. You tell him that you'll see him soon enough before you turn around and head off on your own.";
		else:
			say "     When you reach the green grass of the campus you are set upon by two figures, one of them relatively shorter than the other and much more male looking. They walk up to you and smile. 'Hello there you two, welcome to Tenvale College!' the female says with a happy voice. You nod and look around seeing many students walking around all of various species but all looking like students heading to class. Of course they all look rather tough just like the warrior you fought on the way here. Taking a closer look at the two people you see that the male is dressed in nothing but sandals, a red cloak, a red-plumed helmet, and an armored jock-strap. Sheathed on his hip and back is a sword and shield, clearly showing he means business at least in protecting the area. The female has light green skin and blonde hair wearing a crop top that showed off her ample breasts in a modest way and a skirt that was slightly raised, hinting at something under it.";
			say "     After taking a look at them the male asks what the two of you are doing here which prompts you to say that you were escorting Wally here to the campus so he could sign up. 'That's great! Tenvale is a good place for anyone wanting to learn!' he says with a smile towards the otter. Seeing your friend's excited face you ask if they could show him around. The female nods at you, speaking up right after. 'We'd be happy to give him a tour of the place, and if you want to come back when he signs up for classes you can,' she says. You thank them and ask for them names, the male introducing himself as Marcus and his partner as Hailey. They then take Wally along the walkway, talking about the college. You on the other hand head off deigning to return when need be.";
			now PlayerMet of Hailey is true;
			now PlayerMet of Marcus is true;
			move player to College Campus Entrance;
			now College Campus Entrance is known;
			now Reaching the College is resolved;
		if WallyOrcFled is 1:
			now WallyOrcFled is 2;
			increase InsightGained by 1;
		now HP of Wally is 2;
		now Otter Escort Mission is resolved;
		now Otter Class Sign Up is not resolved;
	now inasituation is false;

Table of GameEventIDs (continued)
Object	Name
Otter Class Sign Up	"Otter Class Sign Up"

Otter Class Sign Up is a situation.
Otter Class Sign Up is resolved.
The sarea of Otter Class Sign Up is "Campus"

when play begins:
	add Otter Class Sign Up to badspots of guy;

instead of going to College Administration Building while (Otter Class Sign Up is not resolved and LastCampusWalkin - turns > 0 and HP of Wally is 2 and a random chance of 1 in 3 succeeds):
	move player to College Administration Building;
	ThirdWallyEvent;

instead of resolving Otter Class Sign Up:
	move player to College Administration Building;
	ThirdWallyEvent;

to ThirdWallyEvent:
	say "     Thinking that by now Wally should be heading his way to signing up for his classes, you head over to the Administration building. Luckily enough though, by the time you reach the outside area you spot a familiar face. Standing with Marcus and Hailey is Wally, the three of them chatting about. When you start approaching the otter turns in your direction and smiles. 'Hey there! You made it here just in time!' he says, waving you over. You walk on towards the trio and the spartan and cheerleader. The two of them tell you that shouldn't be too hard to sign up for classes. They explain that you just need to head on in and up the stairs to see the Dean. They say their goodbyes and head off, heading back to their jobs.";
	say "     You two on the other hand go on into the building and through the rope lines. Once you get to the stairs you head on up, looking towards Wally, taking in his excitement. He clearly appears to be having the time of his life, happy to be here. Once you reach the top, you notice a desk with a well dressed purple-skinned buff demonic looking male apparently doing paperwork. He notices you and nods, speaking up. 'Are you here to sign up for classes?' he asks in a deep tone. The otter nods as you push him forward so he can speak. 'Yeah! I'm here to join the college!' Wally says with a smile. The secretary-like male nods his head and asks for you to make your way into the door behind his desk.";
	WaitLineBreak;
	say "     Heading on into the door that the demonic male directed you two into and you spot an angel-winged male sitting at an ornate desk. He calmly looks in your direction and asks the two of you to sit in the chairs in front of him. 'Which of you two are signing up for classes if I may ask?' the supposed Dean questions you guys. You point at the otter and he nods before seemingly looking into Wally's eyes, no his very soul. The male shudders for a second as the angel does this, but it only occurs for a second. He then nods and bends over to pull open a drawer, taking out some documents and passing them over to your friend. 'There's no payment requirement?' he asks a curious tone. The angelic man shakes his head speaks up. 'No need, your first semester will be free of charge. Just fill out those documents and I'll assign you a room,' the Dean says to Wally.";
	say "     Eagerly the otter grabs a pen and starts writing in the needed information for the papers. It takes not a few minutes for him to finish completing it and when he does the Dean nods and takes the documents and files them away. He then hands Wally a key before speaking to him. 'Your room is the southwest one on the second floor of the male doors and your classes start tomorrow,' the Angel explains to him before smiling softly at you guys. 'Enjoy your stay at Tenvale College,' the Dean says, causing the otter to nod happily. The two of you stand up and head out of the room. As you move out of the area, he turns towards you. 'I'm going to head to my new room and get settled in, you can visit me there whenever you want!' Wally says with an excited voice. You agree and say that you'll let him get to it as you head off on your own and he goes towards the dorms.";
	now HP of Wally is 3;
	move Wally to Wally's Room;
	change southwest exit of Second Floor Male Dorms to Wally's Room;
	change east exit of Wally's Room to Second Floor Male Dorms;

Table of GameCharacterIDs (continued)
Object	Name
Wally	"Wally"

Wally is a man.
[physical details as of game start]
Humanity of Wally is 60. [lived at the beach]
ScaleValue of Wally is 3. [human size]
Cock Count of Wally is 1. [has a cock]
Cock Length of Wally is 6. [has a 6 inch cock]
Ball Size of Wally is 3. [size of balls]
Ball Count of Wally is 2. [has a pair of balls]
Cunt Count of Wally is 0. [no vagina]
Cunt Length of Wally is 0. [Doesn't have a vagina to get stretched]
Cunt Tightness of Wally is 0. [Doesn't have a vagina to get stretched]
Nipple Count of Wally is 2. [Has two normal nipples]
Breast Size of Wally is 0. [Doesn't have breasts really]
[Basic Interaction states as of game start]
TwistedCapacity of Wally is false. [can not take oversized members without pain]
Sterile of Wally is true.
PlayerMet of Wally is false.
PlayerRomanced of Wally is false.
PlayerFriended of Wally is false.
PlayerControlled of Wally is false.
PlayerFucked of Wally is false.
OralVirgin of Wally is false.
Virgin of Wally is false.
AnalVirgin of Wally is false.
PenileVirgin of Wally is true.
SexuallyExperienced of Wally is true.
MainInfection of Wally is "".
The description of Wally is "[WallyDesc]".
The conversation of Wally is { "<This is nothing but a placeholder!>" }.
The scent of Wally is "     Wally gives off a scent of the salty sea which makes you think he occasionally returns to the beach for a swim.".

to say WallyDesc:
	say "     The otter is currently sitting on his bed, reading one of his many textbooks for his classes, deciding it'd be the best time to get a good look of him you glance over the male. Wally is a brown furred skinny guy, close enough one could almost consider being frail, on top of that he's rather short. What you can pick out though from his physical appearance is a pair of stunning blue eyes that seem to draw attention. Other than that, he wears a gray Tenvale College t-shirt and a pair of cargo shorts. [if WallyTrust > 0]A few seconds after looking at him he seems to notice you and he looks up from his book, smiling at you[else]He doesn't seem to notice you staring at him all, too focused in the book he's reading[end if].";

instead of conversing the Wally:
	if HP of Wally < 3: [should be not yet available]
		say "     ERROR: Wally shouldn't be where a player can see him yet, heck you shouldn't even have access to this room yet! Please report to Rikaeus on the FS Discord and quote this tracking number for easier bugfixing: [HP of Wally]";
	else:
		say "     Deciding you want to converse with the otter you move over to his bed and plop on right down by him, causing him to be a little surprised as he's reading his text book. He turns towards you in curiosity as if to ask you what you want.";
		say "[WallyTalkMenu]";

to say WallyTalkMenu:
	LineBreak;
	say "What do you wish to talk to the otter about?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	if WallyTrust < 1:
		now title entry is "His Reasons";
		now sortorder entry is 1;
		now description entry is "Ask him about his reasons for going to college";
	[]
	choose a blank row in table of fucking options;
	now title entry is "His Experience";
	now sortorder entry is 2;
	now description entry is "Ask him about his time so far at Tenvale";
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
				if (nam is "His Reasons"):
					say "[WallyReasons]";
				if (nam is "His Experience"):
					say "[WallyExperience]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     Realizing that you don't actually have anything to talk to the otter about, you shrug and just lay there for a bit before getting back up, causing the otter to just return to his work.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say WallyReasons:
	say "     You ask the male about why he wanted to move to the campus, curious for his rationale. For some reason a nervous look appears on his face for a second before he gives you a firm smile. 'I wanted to get an education and figured that coming here would be best,' the otter says, an odd tone in his voice. You don't know if that's entirely the truth so instead you ask what inspired him to start learning. 'Well, with the world the way it is, it's best to start now don't you think?' Wally says with a raised brow. You guess that could be true, as with how apocalyptic everything is people could do with a bit more knowledge.";
	if InsightGained > 1:
		if (WallyQuestDenial is 2 and WallyOrcFled is 2):
			say "     For a second you accept his reasoning but then you inwardly shake your head. From what you know at the moment nothing makes sense. So, you press him with your insight, voicing your information. First and foremost if he wanted to learn then why is he staying in the dorms? He could've just lived at the beach especially considering the fact that he had a safe place there. Secondly, what was the thing with the enemy who attacked you guys? Wally had mentioned a person named Brucie and the green-skinned male said a shark-guy wanted the otter. Is there something that he's not telling you? With all the badgering, he has a deer in the headlights look on his face but soon enough sighs and slumps against the wall.";
			say "     'My life... at the beach wasn't great at all,' he mumbles. Sensing a story you climb onto the bed and sidled up beside the otter. Wally tensed for a second before relaxing and leaning against your shoulder. 'I have... had? A boyfriend named Brucie. He's a shark-morph who gets... rather violent,' the male says with a shudder. Pulling the guy into a hug, he smiles at you before continuing his story. 'Anyways, he'd get rather rough with me during sex and sometimes take it if I didn't want it,' Wally explains, causing you to frown. 'Anyways I wanted to come here because the college is on the opposite side of the city and far away from him,' the otter says. You nod and pick up his book and hand it to him, patting him on the head. With how he's looking in your direction, you feel like you've gained a bit of his trust.";
			now WallyTrust is 1;

to say WallyExperience:
	say "     Popping the question about how his life at college has been so far, curious as to if the otter is getting along well. He smiles happily at you, clearly a good sign about everything. 'Yup! I think class is going well! I mean I've just started and all!' Wally says to with an exuberance that makes you smile in return. You ask if he's made any friends yet. He tilts his head and thinks for a few seconds. 'Other than Marcus and Hailey... not really...' he says, muttering quietly, looking downward. Taking your hand you pull his head upward and tell him that's fine, the guards are perfect friends for him, more friends will come later after all. His happiness quickly returns after that, nodding eagerly. 'That's true[if WallyTrust > 0]! If all else fails I have you[end if]! Though I hope I find some friends soon...' Wally says with a hopeful look. You pat him on the head and tell him that he'll have luck!";

instead of fucking Wally:
	if WallyTrust < 1:
		say "     As you approach the otter with a predatory look on your face Wally sees this and suddenly appears terrified. He scrambles backwards and hunches into a ball against the corner as if to protect himself from you. Worried, you back off and tell him it was a joke. Uncovering his face, still with fear in his eyes he stutters and says to you 'T-t-that's not funny at all!' he shouts before grabbing his book and going back to work, shiftily looking in your direction.";
	else if (lastfuck of Wally - turns < 3): [he got fucked in the last 9 hours = 3 turns]
		say "     As you walk up to the otter on the bed you notice that he still appears exhausted from last time, evident from the trouble focusing on his textbook. So inwardly you shake your head and decide to bug him about sex another time.";
	else:
		say "     You clamber onto the bed where the otter is and reach out for his textbook, yanking it out of his hands, causing him to make a sound of shock. 'Hey! I was reading that!' he shouts, reaching out for it.";
		wait for any key;
		say "[WallySexMenu]";

to say WallySexMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	if Player is male:
		now title entry is "Seduce him";
		now sortorder entry is 1;
		now description entry is "Put your moves on him, his cock, and his hole";
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
				if (nam is "Seduce him"):
					say "[WallySex1]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You think about it again for a second before handing his book back and apologizing. He looks ruffled but accepts your apology nonetheless.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say WallySex1:
	say "     Climbing on next to him you move your face next to his, your breath on his ear, sending a shudder down the otter's spine. Promptly after that you place a butterfly kiss under his earlobe, making him let out a gasp of surprise. Before he can say anything you move your lips over his and plant another one right on top of them, pulling Wally into a tight embrace. The soft kiss results in a light moan emanating from your otter partner. Reaching down to the bottom of his shirt you start lifting it up. He tenses for a second but you quickly solve that by moving down and placing kisses on his chest before trailing down.";
	say "     As soon as you reach his pants you quickly unbutton and yank them down, revealing his hardening furry cock. Drawing a long lick up his length, you elicit a moan out of the otter and a pearl of precum out of the tip. Lapping it up, you promptly take him into your mouth, going down on Wally until you're to his balls. Taking your free hand, you fondle them before moving a finger towards his pucker after pulling off for a second to wet it. Pushing into his hole as slowly as you can, it slips in without him noticing due to the pleasure. Deciding to mess with the otter a bit you swirl your tongue around his tip, causing him to moan loudly once more. 'A-a-ah, that feels so good,' Wally groans, grasping ahold of his bedsheets.";
	WaitLineBreak;
	say "     As you're sucking him off you thrust your finger in and out of his hole, slowly prepping him. Soon enough you add a second finger and begin stretching him, trying your best to find his prostrate so as to make this enjoyable for the otter. It's not long until you can tell that your friend is ready for you, so you get up and pull him into another kiss and divest yourself of any clothing that you have, if any. Leaning your back against the wall, you pull Wally onto your lap, making the kiss deeper as you do so, pushing your tongue into his mouth. Surprised, the male lets out a mewl as he returns the gesture, kissing back eagerly.";
	say "     As the two of you are making out, you position yourself at his hole, your tip resting at his pucker. Suddenly the otter freezes but expecting that you move from kissing him to nuzzling his neck, as a gesture to calm him down, practically inhaling the salty-sea and musk-filled scent that emanated from him. Your actions do the trick and Wally pulls you back into the kiss, much more calm and collected about being sexual with you for the moment. So, taking that as permission to go, you slowly push into him, the tip of your cock managing to pop in. You take your time, going inch by inch and making sure as to not rush it and hurt the otter.";
	WaitLineBreak;
	say "     Once you're fully in you let the otter get used to you for a few seconds. After he does you pull out a bit and then thrust back in, angling back in, trying to find his prostate. You manage to have some luck as Wally lets out a low moan, his own cock leaking precum. Smirking at seeing that your plan to have your friend enjoy it worked you pull him into another kiss, setting a slow pace moving in and out of his hole. Deciding to give him some more pleasure, you reach down and start to masturbate him, which ends up encouraging the otter into humping your hand rather eagerly. 'Fuck!' Wally mutters into the kiss, surprising you with his choice of words.";
	say "     Deciding to speed up your guys['] fun, you start to thrust a little faster into his hole, practically jabbing at his prostate. By now your friend is leaking copious amounts of precum, coating the top of your hand with it. You yourself are getting close to your own climax if the building sensation in your lower half says anything, you don't think you have much less a minute before you spill. So, you make the most of it by thrusting hard and deep into Wally. [if Player is a herm]Just like you predicted, a minute later you let out a moan and slam all the way in, letting your seed pour into the otter and at the same time your pussy is leaking femcum. The combined orgasms from your genitals causes your eyes to practically roll back into your head in euphoria. [else]Just like expected, about a minute later you moan loudly as you slam all the way in, your balls slapping against the otter as you spill your seed into your friend, filling him to the brim. [end if]As you cum so does Wally, his splattering all over the two of you as he pants, his eyes heavy with pleasure.";
	WaitLineBreak;
	say "     Pulling back from the kiss you look at the otter as you two come down from the sexual high. [if WallyTrust < 2]The male gives you a slightly afraid look, as if you're about to leave. [end if]You smile at him and tug him down onto your chest as you fall onto the bed. [if WallyTrust < 2]He gives you a tentative smile at your gesture, clearly reassured by it. [end if]Following what you do, Wally then nuzzles his face into your chest and cuddles into you, ignoring the sticky cum that is in between the two of you. You take your hand and run it through his fur on his head, petting and rubbing there. A rumble runs through the otter's chest, signifying that he's clearly enjoying it, which prompts you to continue it. The two of you lay like this for a while, relishing in each other's presence until he gets up from his position, stretching. 'I should probably get back to work. Thanks for that,' he says with a soft smile at the end. You nod and return the facial expression before getting up and letting him return to work.";
	now WallyTrust is 2;
	now PlayerFucked of Wally is true;
	now lastfuck of Wally is turns;

Wally ends here.
