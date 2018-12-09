Version 1 of Horus by Rikaeus begins here.
[Version 1 - Adding a NPC, a room, events, a fight, an enemy.]

[ HorusRelationship                                                     ]
[   0: Have not encountered Horus at Sky Tower                          ]
[   1: Have met Horus and gained access to palace Near The Sun          ]
[   2: Has talked to Horus about the Darkness growing at the Capitol    ]
[   3: Has battled the Destabilizing Mutant and won                     ]
[   4: Has returned to Horus and talked about the creature (end for now)]
[   5: Has suggested Doctor Medea as a person to examine the sample     ]
[   6: Has brought the sample to Medea who has agreed to look at it     ]
[   7: Has received the cure from Medea                                 ]
[   8: Has presented the cure to Horus who tells player to use it       ]
[   9: Has fought the Destabilizing Mass and cured it,                  ]
[  10: Has talked to Horus about the end of the series of events        ]

Section A - Code for Horus

HorusRelationship is a number that varies.

Table of GameEventIDs (continued)
Object	Name
Sky Tower	"Sky Tower"

Sky Tower is a situation. The level of Sky Tower is 2.
Sky Tower is inactive.
The sarea of Sky Tower is "high".

when play begins:
	add Sky Tower to badspots of guy;
	add Sky Tower to badspots of furry;

Instead of resolving Sky Tower:
	if AmuranAwoken > 4:
		say "     While exploring the High Rise District something catches your sight in the corner of your eyes. It moves past your vision and into a building nearby. Out of interest you make your way towards where you saw it, coming face to face with what you believe to be the largest skyscraper in the city. Shrugging your shoulders you pull open the door and head on in. The inside is rather normal, as it appears to be your average office building, though completely abandoned. Looking around a bit more you notice that it used to be an office space for bank companies, though not much of one as there was a notice on the door saying the connection to the power grid was cut.";
		say "     You don't have much time to continue searching because soon enough to your shock, lights on the floor brighten up, creating a path for you. Slightly weirded out by it due to the notice on the door, you nevertheless follow it, wondering where it's taking you to. It actually doesn't take long for you to arrive where it wants you to go, as it actually leads you to an elevator of all things. Glancing at it wearily you watch as the doors open up as if beckoning you on inward. With trepidation on your mind you take the steps forward required to enter the boxed lift, it closing behind you as you get in.";
		WaitLineBreak;
		say "     The trip up the building is a quiet one besides the whir of the elevator as it moves, however, it gives you time to observe where the lift is taking you. Eyes widening a bit when you look at how many floors there were, a whopping total of seventy-three floors, not including the two below ground parkings, you notice that it's slowing moving you higher and closer to the sky. A couple minutes later, a sound dings and you see the doors open up at, to your shock, the top floor. Even then, there are lights leading you towards a door that has stairs going up, to what you're assuming the roof.";
		say "     Going up the stairs you are indeed led straight to the roof, however, it doesn't appear to end there. No, you see a set of glowing steps going higher into the sky, despite the fact that you're already above the clouds. Believing that you have nowhere else to really go, you head on upward, feeling a force take hold of you, giving sensations as if preventing you from falling. Which is nice, as these stairs appear not to have railings. It takes a few minutes but as the time goes by you notice something in the distance getting closer, appearing to be a decently sized ornate building made of sandstone sitting on a cloud floating in the sky with the sun behind it.";
		WaitLineBreak;
		say "     From your trips to the Egyptian Wing, it actually looks awfully like a Pharaoh's palace in design and materials, which makes you wonder who or what is leading you to this place. Soon enough you get to the stone stairs leading up to the pillared overhang above the large open entrance. Once close you can confirm your earlier thought, as the outside is etched with various heiroglyphics, which would perpetuate this as an Egyptian building. You're pretty sure that whatever is calling you here wants you to head on in, and from how out of the way it is, it should be safe, so with a shrug of your shoulders you walk through the doorway.";
		say "     The entrance hall of the palace actually appears to be rather averagely decorated for a place of royalty. To your surprise there are falcon humanoids walking around. However, they look to be ignoring you, so instead you glance around the place, seeing a couple doorways leading to various areas of the building, but what catches your attention is another huge open entrance. Assuming that this is where you're supposed to be going, you head on further in. When you enter, your assumptions are slowly eased, as you believe it to be the Pharaoh's throne room. With the heiroglyphics all over the room and the fancy murals and carpet you draw your attention to the stone throne at the back of the room.";
		WaitLineBreak;
		say "     Sitting in the throne is at first what looks to be a normal human male, that is until you get to the head of the guy. Instead of a face of a homo-sapien he has the head of a falcon, which would make him stand out if you compared him to any regular person you know. Clothing wise he was not wearing any shirt, revealing a muscled-olive toned body wearing a gold necklace with a familiar jade scarab. He was wearing what looked to you to be a skirt, though a flash of memory from the Egyptian Wing tells you it's a shendyt which is more of a kilt than anything. It appeared to be made of fancy soft cotton which you're sure feels super comfortable.";
		say "     Drawing your attention elsewhere for a moment you look above him first and notice another familiar item, a sun disk, that you sure you recall retrieving for Amuran, servant of Horus. Above it is a very fancy looking eye framed on the wall. Turning back to the man you notice he is holding a staff in his hand, with... something that cements an idea of who he is in your mind. It is a golden rod with a similar metallic ankh mounted at the tip, said item you recognize very clearly. Having finished your once over you walk over to the falcon-headed man and wait for him to speak.";
		WaitLineBreak;
		say "     'I am glad that you decided to follow my guidance here friend of my servant,' the olive-skinned male says with a soft smile in your direction. You joke and say that it was a pretty straightforward guide with the lights and everything. 'Yes, well, sometimes one has to be direct in order to get another[']s attention,' he says with a chuckle. 'I[']m sure you have recognized me as Horus, from your interactions with Amuran which brings me to another topic, why I[']ve brought you here.' The now confirmed God says, hunching forward with steepled fingers. You nod, as you had wondered why all the effort was done to bring you up here.";
		say "     'When I regained the first of my items due to your assistance, I had sensed a growing darkness. At first I wasn[']t entirely sure where it was due to not having all my objects of power.' Horus says before standing up and starting to pace. 'However, when I got back the Ankh I finally was able to locate it and could feel how much of a threat it was to this area.' The God says, finally turning back to you. Nodding at what he has been saying, you ask what it has to do with you. 'Well, with how well you did in retrieving my items I was hoping that you could help me in this delicate matter.' The Sun deity says, with what you swear is a sheepish look.";
		WaitLineBreak;
		say "     With a sigh you look around a bit. From how it sounds, it appears that the trouble brewing is going to be rather difficult to overcome. You're not entirely sure if you want to get involved at the moment. But at the same time you can understand that if nothing gets involved with it, it might proceed further and become even more of a problem, thus possibly hurting all of the city, which despite from what you've seen hasn't entirely recovered from the apocalypse. It was a tough decision to make, and one that you weren't sure you were able to make one about at all.";
		say "     Before you can even say anything however, Horus sends you a soft smile, and speaks up. 'Young one, I am not called the God of Kingship for nothing. I will not force you to make a decision you don[']t want to make so hastily,' The Sun Deity says before looking in the direction of one of the falcon mutants. 'I would never ask that of my subjects, which I consider all those who bathe in the light of day or in the wind of the sky.' He says firmly, giving a resolute tone. That actually causes you to smile at him in return. 'If wish to help me then simply speak with me more on the Darkness, otherwise you may spend as much time here as you wish.' Horus says, waving his hand as if to gesture to the entire palace. Nodding, you happily accept his offer.";
		move Horus to Palace Near The Sun;
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
	say "     The inside of the palace of the Sun God Horus is rather tastefully decorated. From what you saw when you took a much closer look at the entranceway, it had various tapestries hung all over the place, but in a decently put manner. However, each of the pieces of textile had the image of a person on it. What was unique though, was that some looked human a few with features like Horus, a lot of them actually looked like some of the mutants that you saw on the streets below, leaving you to wonder who they were. The Throne Room was a lot less decorated in the sense of objects, instead heiroglyphics were carved all over the place along with murals. Despite this though, it didn't make it any less wondrous.";

Table of GameCharacterIDs (continued)
object	name
Horus	"Horus"

Horus is a man.
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
	if HorusRelationship > 0 and HorusRelationship < 4:
		choose a blank row in table of fucking options;
		now title entry is "Darkness";
		now sortorder entry is 2;
		now description entry is "Ask him about the growing darkness he has sensed.";
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
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Ra"):
					say "[HorusRa]";
				if (nam is "Darkness"):
					say "[HorusDarkness]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You apologize to the God and say that you don't have anything to talk about. He nods and lets you go on your way.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say HorusRa:
	say "     Sighing as soon as you mention the topic of Ra, Horus leans back in his throne. 'I[']m doubting you know much about the concept of Gods as a reality rather than just a thought process for religion am I right?' He asks, tilting his head in your direction. You nod, admitting that much to the deity. 'Originally we all were mortals just like you who were granted power beyond our belief, some through circumstances of birth others through magic,' he starts, gesturing to some of the murals, one of them showing a woman ressurecting a man temporarily to conceive a child. Another showed a man appearing out of nowhere and seemingly helping out people as they progress in their lives.";
	say "     'However, that power is not without a consequence, it ebbs and flows with strength based on belief and the thought of us.' Horus says, adjusting his position. 'Now, belief is the strongest, but thoughts work just as well. For me I function off the belief of my followers and the fact that my myth is very prevalent in the world,' he says with a look towards one of the falcon-looking beings. You nod at all this information but ask him something, what does it have to do with the Ra, who as far as you remember from the Egyptian Wing, holds the title of God of the Sun.";
	WaitLineBreak;
	say "     'Ah, that. Well, the consequence of our power being influenced by belief and thought is that if a large amount of people were to think something differently of us, it would change us.' Horus says with a sigh. 'Which comes to the current topic. Somewhere along the later years of the Ancient Egyptian era, a large amount of them got the belief that Horus and Ra were the same person, known as Ra-Horakhty,' he says, rubbing his forehead. 'This ended up influencing both Horus and Ra and merging them into one entity.' The deity then gestured to himself.";
	say "     With one last question before you leave the God be, you ask him why he chooses the name Horus over Ra or simply Horakhty? 'Ah, well, that choice was all mine and had to do with how a vast majority of my followers appeared to prefer it over the others.' Horus explains with a chuckle. That makes you smile before nodding at the explanation. Deciding that you've gained enough information you tell him that you'll let him return him to whatever he was doing. He chuckles and nods at you before turning his attention and voice towards one of the various falcon beings around you guys.";

to say HorusDarkness:
	if HorusRelationship is 1:
		say "     Deciding that you may as well help against whatever this darkness is, you speak up and tell Horus such. He gives you a smile and leans forward, clutching both of his hands. 'I[']m glad that you[']ve agreed to help me despite the dangers to you.' He says with happiness in his voice. Standing up promptly you get your first show of he God's power since you've arrived here as he waves his hands and a projection of an area with cracks that spew ash and magma. From the angle you can tell that it's an overview of the area rather then a view from the ground. But overall you are able to understand where this projection is looking at.";
		say "     'The darkness seems to have taken root in the ruins of what remains of the mortal[']s government area. However, I am unable to actually get a lock onto where it is.' Horus tells you with a sigh. You tilt your head at this, shouldn't he be able to easily find anything with his power? This in turn causes the deity to shake his own at you. 'Not really, I think whatever the problem is, it[']s constantly shifting its body. That usually prevents me from getting a good read on someone.' The Sun Deity shifts in his throne as he says this. 'I want you to go there and for now, get a closer look at what it is, don[']t get too in over your head.' Horus kindly says, concern in his voice. You promise him you won't, preparing yourself for what you have to do.";
		WaitLineBreak;
		say "     Before you can leave however, the Sun God stops you. 'I must impart you some last information about the enemy at hand.' He says as he waves his hand again causing the image to disappear. 'Whatever the darkness is, it appears to only target relatively strong people. As, no offense to my servants, whenever I sent any of them to go scout the area, any of the well-trained ones never came back.' Horus informs you, causing you to wonder what exactly this thing is. You nod and hope inwardly you're strong enough to attract its attention, despite the shudder that runs through your body as you think of that as you let him return to his business.";
		now Nightmare Mutation is active;
		now HorusRelationship is 2;
	else if HorusRelationship is 2:
		say "     Horus gives you a confused look, possibly wondering why you're still here. 'Young one, why haven[']t you gone to the place where the darkness is located? Does something have you concerned?' He asks,  his face changing to one of worry. You assure him that you're alright and that you are going to head to the capitol area soon. He smiles at that, nodding before speaking. 'Please be quick, this enemy could be devastating for the city.' The Deity requests of you, before returning to what he was doing.";
	else if HorusRelationship is 3:
		say "     With a resolute look you pull the cloth out and unwrap it slightly, showing the wriggling piece of whatever it is to Horus. As soon as it catches the deity's eyes they widen in shock and he kind of backs up in his seat in horror. 'That[']s... worse than what I was thinking. I was hoping for a better situation than this.' He says, muttering the last sentence. You ask him, with a hopeful tone, if he knows what it is, describing what you had fought and what it had done. The terrifying scene was still front facing in your mind and probably will for a while. He shakes his head and lets out a sigh before speaking.";
		say "     'I don[']t know exactly what it is, as it appears to be of nanite origins. Which despite being a deity we aren[']t omniscient, no we get our knowledge like everyone else, just at an easier learning curve.' He says, groaning a few seconds later and rubbing his forehead. 'The reason I said it[']s worse than what I was thinking is because I can feel its intent, or emotions so to speak. And that thing appears to be ravenously hungry for food and power.' Horus explains, causing you to nod, understanding his earlier reaction with a better point of view.";
		WaitLineBreak;
		say "     Suddenly though the Sun Deity gets a look on his face that makes you think that he had an idea. 'I think we might be able to solve this issue but there[']s one problem though,' Horus says, sighing at the end. You raise a brow at him and ask what it is, surely it isn[']t too hard? He shakes his head and leans back into the throne, crossing his hands in his lap. 'If we had a knowledgeable doctor who could examine this sample, we might be able to find a way to beat it. But sadly, the last one I knew was millenia ago.' He says with another groan. Perhaps you could find someone that can look it over? You voice this to the God and he gives you a thankful look. 'I[']d appreciate that, now I must explain the situation to my servants, I apologize.' He says, turning his attention towards the falcon beings.";
		now HorusRelationship is 4;

instead of fucking the Horus:
	if HorusRelationship < 4:
		say "     The God shakes his head and gives you a smile. 'I'm sorry but the Darkness requires my attention for now.' He says with an apologetic look in his eyes.";
	else if HorusRelationship < 10:
		say "     Horus gives you a soft smile and shakes his head. 'I'm sorry my friend but despite your small victory against the Darkness we still need to focus on it.' He starts before continuing with a chuckle. 'Afterall, what kind of king would I be if I focused on sex over solving a problem involving the people?' Looks like you won't be getting into bed with the deity until the issue with the mutant is solved.";

Table of GameEventIDs (continued)
Object	Name
Nightmare Mutation	"Nightmare Mutation"

Nightmare Mutation is a situation. The level of Nightmare Mutation is 10.
Nightmare Mutation is inactive.
The sarea of Nightmare Mutation is "capitol".

when play begins:
	add Nightmare Mutation to badspots of Body Horror;

Instead of resolving Nightmare Mutation:
	if HorusRelationship is 2:
		now inasituation is true;
		now fightstatus is 0;
		say "     Having been a good twenty minutes wandering around the capitol district you wonder if you're ever going to actually run into or find any information about this darkness. Letting out a sigh and kicking a rock that's in your path you continuing to walk around. However, when the piece of stone that you let launch ends up slamming against a knocked down street sign, letting a loud clang ring out. 'Help! Is someone out there!' A scream is uttered seconds later from around the corner of a building. The voice is terrifyingly desperate sounding, exactly as if the person shouting it is fighting for their life rather their body. But... that can't be? The nanites prevent most forms of death other than instantaneous.";
		say "     Suddenly a cold and dark thought runs through your mind. Could it be the darkness that Horus wanted you to search for? In a quick split second decision you dash forward and around the corner, coming to the most horrific sight ever. At the end of the street is a rapidly shifting creature, changing from one form to another almost every instance. It doesn't even seem to have a set consistency, resembling more of a blob than a solid shape. But that's not what truly shocks you. No, what does is what's happening to the screaming and struggling orc in its grasp. The green humanoid's form starts to shudder and the true terror starts to happen.";
		WaitLineBreak;
		say "     For a second the orc's skin quivers before all of a sudden in front of your eyes its entire body starts breaking to pieces, turning dust. Everything from its clothing to its tusks to its body parts are turning to particles in the air the longer the creature has hold of him. A morbid though passes your mind that it's probably the nanites that are scattering into the sky above. Though before it can fly away on the wind it appears to halt mid flight and reverse direction, going straight at the creature, as if its absorbing it all. To your shock one of the various forms that it appears to alternate rapidly into is that of the orc it just killed.";
		say "     You try your best to supress a shudder when it turns its attention towards you. Single step by single step it moves closer to you. Well, shit, it looks like you have enough strength to actually garner recognition for it, but you suddenly realize that this'll be a fight for your life as well. You can't mess up here or you're pretty sure that you'll end up dying just like the orc you couldn't save. So with a determined look on your face you prepare yourself for a battle that you need to win.";
		challenge "Destabilizing Mutant";
		if fightoutcome < 20: [won]
			say "     With one last powerful strike you knock the creature to the ground, seemingly having won the fight. However, to your horror it gets back up, looking not hurt at all. Thankfully though seconds later, it appears to turn and run away, as if terrified of you. Although you're pretty sure that it's not at all. Plopping yourself on the ground with a sigh of relief you let yourself recover for a bit before you head off, possibly to report to Horus about what you encountered. After all, the Sun God is bound to want to know about what happened here, as whatever that thing was, it's super dangerous.";
			say "     A few minutes later after resting, you get up and get ready to leave. However, before you can go, something catches your sight in the corner of your eyes. It's a tiny wriggling piece of something that appears to be rapidly shifting colors. Curious, you walk up to it and pick it up, examining it closer before quickly realizing something, it's a part of that creature you just fought! It must have broke off when you were fighting the thing, but what are you going to do with it though? Quickly looking around you see a stray piece of cloth and hurriedly grab it and wrap the piece in it, making sure it cant interact with any part of you, just in case. Once you're done you start heading off, figuring you should get back to Horus as soon as possible.";
			now HorusRelationship is 3;
			now inasituation is false;
			now Nightmare Mutation is resolved;
		else if fightoutcome is 22: [submitted]
			say "     Realizing you can't do anything against this creature you drop to the ground with your hands up, and quickly realize this was the worst possible thing to do. Because as soon as you do this, it charges right at you and grasps a hold of you and you start feeling something... something horrifying. Your insides start to shift, as if the nanites that make you up are protesting against whatever the being is doing. However, it appears that they can't put up a fight for long as suddenly your body starts pulsing outwardly before what happened to the orc starts happening to you. As soon as you see your flesh turn to dust your mind blanks, as if your sanity can't comprehend it, you're going to be a part of this thing and you can't do anything about it. Mere seconds later does blackness cover your consciousness as you are no more.";
			now bodyname of player is "dead";
			end the story saying "You're dead - DEAD!";
		else if fightoutcome > 19 and fightoutcome < 30:
			say "     The creature lunges forward to grab at you and you try your best to move out of the way but you're too tired, too exhausted. So, without any resistance the being wraps its body around you, causing what you're sure happened to the orc occur to you. The sensation is horrifying as a sensation of your insides beginning to shift runs throughout your entire person, as if the nanites are fighting the incursion against you. But it's a losing fight for them as the outsides of your body begin to gurgle and pulse, the pressure and pain on your senses increasing as time goes on. Seconds later your flesh starts to turn to dust, causing your mind to blank, your sanity unable to process what's occuring. One last thought though does run through your head before utter blackness; You're going to be a part of this creature and you can't do anything about it.";
			now bodyname of player is "dead";
			end the story saying "You're dead - DEAD!";

Section B - Code for Destabilizing Mutant

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
name	enemy title	enemy name	enemy type	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	DayCycle	altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now name entry is "Destabilizing Mutant";
	now enemy title entry is "";
	now enemy name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]The spazmodic blob that once was a person lunges towards you![or]The horror incarnate creature undulates in your direction before striking in your direction.[or]The rapidly shifting glob of semi-humanoid mass charges straight at you![at random]";
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
	now cocks entry is 1;               [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 8;         [ Length infection will make cock grow to if cocks]
	now cock width entry is 4;          [ Size of balls ]
	now breasts entry is 2;             [ Number of Breasts infection will give you. ]
	now breast size entry is 2;         [ Size of breasts infection will try to attain ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;               [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 8;         [ Length of female sex infection will attempt to give you. ]
	now cunt width entry is 6;          [ Width of female sex infection will try and give you ]
	now libido entry is 25;             [ Amount player Libido will go up if defeated ]
	now loot entry is "";               [ Loot monster drops, ]
	now lootchance entry is 0;          [ Chance of loot dropping 0-100 ]
	now scale entry is 3;               [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]blobby[at random]";
	now type entry is "amorphous-blob";
	now magic entry is false;           [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;       [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is true;  [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0;      [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;   [ Row used to designate any special combat features, "default" for standard combat. ]

Horus ends here.
