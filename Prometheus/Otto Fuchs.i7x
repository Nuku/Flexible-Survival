Version 1 of Otto Fuchs by Prometheus begins here.

[   hp of Otto                          ]
[   0: not met                          ]
[   1: Met Otto                         ]
[   2: Watched Otto save the soldier    ]
[   3: Otto moved to Green Apartment    ]

[   OttoForm                            ]
[   0: Human                            ]
[   1: Fox                              ]
[   2: Otter                            ]

[QUEST LOG]
to OttoQuestLog:
	if hp of Otto is:
		-- 1:
			say "[bold type]Otto Quest: [roman type]I met a doctor called Otto Fuchs in the city who treated a rabbit who had been shot in the shoulder. Hopefully I'll see him again in future.";
		-- 2:
			say "[bold type]Otto Quest: [roman type]I met Dr. Fuchs again. His decision to treat a wounded soldier nearly caused him to be attacked by hyenas but they were intimidated into leaving him alone for now. Unfortunately this seems to have upset the local residents.";
		-- 3:
			say "[bold type]Otto Quest: [roman type]I helped Otto move to the Green Apartments. I may be able to visit him there in future.";


Section 1 - Room Declaration

Table of GameRoomIDs (continued)
Object	Name
Otto's Apartment	"Otto's Apartment"

Otto's Apartment is a room.
The description of Otto's Apartment is "[OttosApartmentDesc]".

to say OttosApartmentDesc:
	say "     The main room is clean and tidy, with the kitchen off of the living area through an archway. A door marked as the [']surgery['] can be seen in the hallway, presumably where Dr. Fuchs treats patients that don't heal properly. He seems to have done quite well for himself to have such a spacious abode.";

Section 2 - NPC Declaration

Table of GameCharacterIDs (continued)
object	name
Otto	"Otto"

Otto is a man. The hp of Otto is usually 0.
[Physical details as of game start]
ScaleValue of Otto is 3. [human sized]
SleepRhythm of Otto is 0. [0 - awake at all times, 1 - day active, 2 - night active]
Cocks of Otto is 1. [One cock]
Cock Length of Otto is 6. [Six Inches]
Cock Width of Otto is 2. [Each testicle 1 inch across]
Testes of Otto is 2. [Two balls]
Cunts of Otto is 0. [No pussy]
Cunt Length of Otto is 0. [No Cunt]
Cunt Width of Otto is 0. [No Cunt]
Breasts of Otto is 2. [2 nipples]
Breast Size of Otto is 0. [Flat at the start]
[Basic Interaction states as of game start]
PlayerMet of Otto is false.
PlayerRomanced of Otto is false.
PlayerFriended of Otto is false.
PlayerControlled of Otto is false.
PlayerFucked of Otto is false.
OralVirgin of Otto is true.
Virgin of Otto is true.
AnalVirgin of Otto is true.
PenileVirgin of Otto is false.
SexuallyExperienced of Otto is true.
MainInfection of Otto is "Human".
[Custom Variables]
OttoForm is a number that varies. OttoForm is usually 0.
The description of Otto is "[OttoDesc]".
The conversation of Otto is { "Interesting" }.
The scent of Otto is "[OttoScent]".

to say OttoDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [hp of Otto] <- DEBUG[line break]";
	else:
		if hp of Otto is 0: [Human]
			say "     Doctor Otto Fuchs is a middle-aged man of about five or so feet with messy, faded-brown hair. While not fat, his body shape suggests that he doesn't exercise regularly and enjoys his food, a habit that you wonder how he has managed to maintain in the apocalypse. He is dressed in a white shirt with black trousers that are held up by red suspenders. He has a kind, crinkly face with soft-brown eyes that look at you from behind round, silver spectacles as you examine him. When he speaks, it is with a German accent. Around his neck, in a stereotypical fashion, is a stethoscope.";
			say "     Dr. Fuchs is a strong willed and stubborn man, confident in his methods and medical capabilities. He is very concerned with acting with morality, as shown by the magnitude of which he keeps his Hippocratic Oath, and treats all who come to him whether they are transformed or human. Though cynical of how those in power may try and use recent events to their advantage, he seems to sympathize with the soldiers sent into the city. His mentality seems to contrast with many of the other medical professionals.";
		else if hp of Otto is 1: [Fox]
			say "     Doctor Otto Fuchs is a russet-furred fox of about five or so feet in height. Since his transformation, his body has slimmed, and he moves gracefully on his black-furred legs. You imagine that he still enjoys food as much as he used to though. Somehow, he seems to have found a tailor to alter his clothes to fit his new body, wearing a white shirt and black trousers with a belt. He has a shrewd face, though he has maintained his kindly soft-brown eyes, which he looks at you from behind round, silver spectacles that have been adapted for his new face as you examine him. When he speaks, it is with a German accent. Around his neck, in a stereotypical fashion, is a stethoscope, which he frequently brushes lovingly with his fluffy tail.";
			say "     Dr. Fuchs is a strong-willed and cunning fox, confident in his methods and medical capabilities. While mostly concerned with acting with morality, he is willing to pressure some patients for what he feels is for their benefit, and he seems to be correct each time. His Hippocratic Oath is still an important cornerstone of his personality, caring for both the transformed and the human. Though cynical of how those in power may try and use recent events to their advantage, he seems to sympathize with the soldiers sent into the city. His mentality seems to contrast with many of the other medical professionals.";
		else: [Otter]
			say "     Doctor Otto Fuchs is a sleek, brown-furred otter of about five or so feet in height. Since his transformation, his body has slimmed, and he moves quickly on his stubby, brown paws. He still enjoys food as much as he used to, holding his paws to his mouth in an adorable manner as he eats. His clothes have been tailored to fit his new body, still consisting of a white shirt and black trousers with a belt. They also seem to have been waterproofed. He has a cute whiskery face, with soft-brown eyes that look at you through prescription, corrective goggles as you examine him. When he speaks, it is with a German accent. Around his neck, in a stereotypical fashion, is a stethoscope. His thick otter tail swings around behind him, counterbalancing his movements.";
			say "     Dr. Fuchs is a strong-willed and inquisitive otter, confident in his methods and medical capabilities. While mostly concerned with acting with morality, he is willing to try new things at the patient's request if they can justify it. His Hippocratic Oath is still an important cornerstone of his personality, caring for both the transformed and the human. Though cynical of how those in power may try and use recent events to their advantage, he seems to sympathize with the soldiers sent into the city. His mentality seems to contrast with many of the other medical professionals.";

to say OttoScent:
	say "     Dr. Fuchs smells faintly of disinfectant and soap. There are also aromas of chocolate and pastries strangely enough.";

Section 3 - Talking



Section 4 - Sex



Section 5 - Events

Table of GameEventIDs (continued)
Object	Name
Wounded Civilian	"Wounded Civilian"

Wounded Civilian is a situation.
The level of Wounded Civilian is 0.
The sarea of Wounded Civilian is "Outside".

Instead of resolving Wounded Civilian:
	WoundedCivilianEvent;

to WoundedCivilianEvent: [Meet Otto Fuchs]
	say "     While exploring, you hear a burst of gunfire over the usual noises of the city. It doesn't sound far off, and you decide to investigate further. As you round the corner, you see an anthro rabbit lying on the pavement, holding his shoulder as blood seeps between his fingers. Standing a few feet away from him, rifle still raised, is a soldier who seems to have been separated from his group. 'You shot me. Why?' the lagomorph questions the brooding soldier, his gray fur progressively staining. Across the street, a door slams open, and a short, smartly-dressed man hurries over with a satchel grasped in one hand, distracting the soldier before he can answer. He looks like he is about to fire, but when he catches sight of you approaching as well, his aim twitches around, unsure what to do. You raise your hands as you approach, showing that you have no ill intent and tell him that you heard some shots and were curious what had happened. By this time, the other human has reached the rabbit, dropping to a crouch and opening his bag to reveal a basic first aid kit and pulling on a pair of surgical gloves.";
	say "     'What happened?' the older man asks authoritatively as he pulls the rabbit's hand away from the shoulder and swabs the wound. 'He shot me as I came out of my home,' the leporine cries, hissing as the swab rubs over the wound. 'Lower the gun, young man. You are going to cause trouble if you are not careful. Trust me, I am a doctor.' The German accent might have been considered novel were it not for the appearance that he is an uninfected human living within the city. The soldier seems to ignore the suggestion, training the rifle on the doctor as he treats the injured rabbit. Sighing, the older man stops cleaning the wound and turns to face the scared soldier. 'You are pointing a gun at a medical professional as they attempt to treat a patient. Now, I will not fight back should you decide to shoot. I have taken a Hippocratic Oath. I am not allowed to attack you, but I have helped a few people around here. I do not judge by species. After all, change allows progress. The help that I give the community means that many of them are quite fond of me.'";
	WaitLineBreak;
	say "     'This fondness means that should you kill me, and you could do so fairly easily as I do not heal as well as so many of the transformed, there would literally be a mob of angry bears and wolves that would not let you leave in the same state as you are now.' The lecture seems to have some effect on the soldier, as he lowers his weapon but maintains a watch over you all as the doctor begins to stitch the wound closed. 'I do not believe that you have answered why you shot the rabbit yet. Care to explain?' the older man asks. 'He gave me a fright coming out of the door, and I thought that I was about to be attacked,' the soldier replies sullenly. 'I can understand the cordon, but why the military has to send troops wandering around the city I don't understand,' the rabbit comments groggily. The young man snaps, 'None of your business, freak.' The glare he receives from the doctor could freeze a phoenix. 'Leave. Now.' The amount of disgust in those two words drives the soldier to obey immediately.";
	say "     As he leaves, you approach the patient and his healer, asking whether you can be of assistance. The doctor gives you a brief smile, saying, 'I can understand why you did not get closer before, but the difficult bit is past. Now, his body should fix itself. But we should not leave him in the street. Let us take him into my home while he recovers. Ah, but where are my manners? My name is Otto Fuchs. I am a medical doctor, if you still respect the profession after seeing the state of the hospital.' You have to admit, he does seem to be less... sex-crazed than the staff there. 'Can you walk, young sir?' he asks the rabbit, helping him to stand. The leporine doesn't bother to answer, instead refusing the aid and standing alone before taking a few confidant steps. 'He shot me in the shoulder, not the leg, doc, but thank you. I should be alright now,' he says cheerfully, especially for someone recovering from a gunshot wound.";
	WaitLineBreak;
	say "     'Suit yourself,' Otto grunts, carefully removing his gloves and stuffing them into a plastic bag. The rabbit walks back up the steps to his home, rolling his shoulder to make sure there isn't any permanent damage. Unsurprisingly, like most of the other infected, his ability to recover from harm seems to be phenomenal and from looking at him, you wouldn't believe he had been shot several minutes ago. As he opens the door, he waves and calls out thanks to you both. You turn back to Dr. Fuchs as he finishes closing his bag and straightens up again. 'I appreciate the concern that you showed for that young man. Many might have run the opposite direction, so thank you. I would say that I hope to see you again, but you might not want to hear that from a doctor,' he says with a chuckle. 'So instead, I shall wish you well and hope to see you under fairer circumstances.' With that, he trudges back across the road and enters his own apartment. As you leave the area, you thank your lucky stars that there are still sane doctors in the city.";
	now hp of Otto is 1;
	add "Otto Quest" to OpenQuests of player;
	now Wounded Civilian is resolved;

Table of GameEventIDs (continued)
Object	Name
Doctor & Soldier	"Doctor & Soldier"

Doctor & Soldier is a situation.
Prereq1 of Doctor & Soldier is Wounded Civilian.
The level of Doctor & Soldier is 0.
The sarea of Doctor & Soldier is "Outside".

Instead of resolving Doctor & Soldier:
	DoctorandSoldierEvent;

to DoctorandSoldierEvent: [Otto saves a soldier's life]
	say "     As you exit from an alley, you realize that you are back on the same street you saw the German doctor. In front of you is the building in which the rabbit person resides. Your observations are interrupted by a figure staggering down the street clutching his side. You simultaneously realize that it is the same soldier as last time, and that there is an unhealthy amount of blood staining his uniform and trickling through his fingers. He reaches the road just opposite you, before crumpling to the ground, supporting himself with one arm while his other hand continues to staunch the bleeding. You are just deciding whether or not to get help when a rather well-dressed toad hurls open a door of one of the houses and rushes out. You step out of the shadows of the alleyway and see them run across to the doctor's home, their legs not suited to such movement. 'Dr. Fuchs, you're needed out here! It's an emergency! There is a severely wounded soldier collapsed in the street!' the amphibian shouts, pummeling his fist against the door.";
	say "     A few moments later, the middle-aged doctor opens the door and calls behind him, 'Bring the [']O-['] with you, Genevieve, and if you think that I've forgotten anything, bring that too.' Otto walks briskly towards the collapsed man, a large bag under one arm. He drops to a crouch beside the soldier and pulls a bottle of ethanol and some scissors from a pocket of the bag. Pulling on some rubber gloves, he gently positions the groaning soldier on his back, knees bent. Carefully cutting the shirt away, Dr. Fuchs exposes the wound to the eyes of all onlookers. Brutal tears have shredded the left side of his abdomen, and you are surprised he got this far. You approach, ready to offer any assistance that he might need. Otto looks up as you approach, a grim expression on his face. 'I have my assistant with me today, and I think that this might be a bit too specialized for you anyway,' he says before you can even ask. Deciding that giving him space to work may be the best that you can do, you back off, but continue to watch curiously, the spectacle drawing residents from their homes.";
	WaitLineBreak;
	say "     As if on cue, a vixen with fur the color of obsidian trots out of the house, a medical satchel over one shoulder and carrying a bowl of boiling water. Setting it down next to Dr. Fuchs, she addresses him, 'I brought this so that you could make sure that the equipment is still sterile.' He gives her a grateful smile as he places some scissors, forceps, and a small container of needles into the bubbling liquid. A few more residents have come out of their homes to see what the commotion is about. Dipping a cloth in the boiling water, Otto begins to wipe the wound, the soldier wincing and grunting in pain. 'Are you able to tell me what happened, young man? There is considerable damage, and yet you are neither mutating or healing,' the doctor softly asks his patient as he tends to him. The soldier seems about to answer when another voice does so before him.";
	say "     'He was in our turf, and we don't take kindly to the army sticking their nose where it isn't wanted,' a deep growly voice replies. You turn to see three hyenas wearing dirty leather approaching, wet blood dripping from their leader's arms. On his right hand, he wears a glove with sharpened metal attached, presumably the cause of the soldier's wounds. Such brutality causes a gasp from some of the people watching, a few returning inside fearfully. 'So if you could hand him back to us, I'll finish what I started,' the lead hyena continues, his cronies nodding menacingly and glaring at the remaining residents as if to say [']leave if you don't want any trouble[']. The black fox kneels down to take over the human's care as Otto stands up and faces the gang. 'I'm afraid that I can't do that. He is my patient now, so I must do all in my power to heal him,' he says repugnantly, the gang leader baring his teeth at this response.";
	WaitLineBreak;
	say "     Perhaps concerned about the doctor's safety when violence seems second nature to the hyena group before him, several larger beasts - an imposing tiger, a tattered-looking wolf, and a [']grinning['] crocodile - advance until they are flanking him and ensuring his protection. The hyenas seem to be gauging their chances of punishing Fuchs for his insolence until the wolf lets out a howl. The piercing cry seems to echo around the street and you would imagine through the city. A replying howl confirms your suspicions and seems to be a turning point for the gang of feliforms. 'This isn't over. He's going to die anyway, and I'll come back with more of the gang to teach you a lesson,' the leader of the group snarls. A snap from the crocodile hurries the hyenas['] retreat, rushing down the street and out of sight. Dr. Fuchs hurries back to his patient, the soldier's breathing becoming increasingly labored.";
	say "     'I don't know what to do. The damage is too extensive for me to treat without more advanced medical apparatus than I have available,' Otto glumly notes. 'And I doubt that the machines in the hospital are still in working order. The mystery is how this man hasn't transformed in anyway.' The soldier stirs, opening his eyes and taking a sharp breath through clenched teeth. 'We were given immunity boosters, doc,' he answers quietly. 'But it will be running out soon, so if you keep me alive for long enough, I might heal, but I have too much pride to want to be a hyena. I'll be damned if I let them gain any small victory,' he says determinedly. While the doctor's expression briefly lightened at such a simple explanation to the puzzle and the course of action that might remedy it, the soldier's unwillingness to become a hyena to save himself returns him to looking pensive. The choice between acceding to the soldier's wishes and thus letting him die, or sustaining him until the immunosuppressants wear off and letting him turn into a hyena conflict on his face.";
	WaitLineBreak;
	say "     To everyone's surprise, the black fox pipes up with a suggestion. 'The transformation doesn't have to be into a hyena. We could try and infect him with another species. A blood sample might have a greater concentration of whatever it is causing the transformations, so if we inject it into him, medical arguments aside, it might overpower any remnants of hyena DNA.' The onlookers['] expressions vary from awe and curiosity to disgust. Dr Otto Fuchs rubs his chin as he thinks, contemplating the feasibility of the suggestion. 'I'm willing to try if you are,' the soldier croaks, his skin getting increasingly pale as his lifeblood pools on the road. 'I don't want to die if there is some merit to that idea.' Otto seems to come to a conclusion, 'It seems to be the only option left to save you, and it seems more ethical than either of the other two options. We just need a volunteer,' he states. To your surprise, the tiger and the crocodile both volunteer.";
	say "     'I wasn't expecting anyone to be willing to help me, as I'm sure word of what I did to that rabbit has spread,' the soldier says. Dr. Fuchs replies sympathetically, 'He survived and made a full physical recovery, but you're running out of time. It would seem that you have two volunteers, but you'll probably become their species so make your choice quickly but carefully. I understand that this will likely estrange you from the military, so you have my condolences,' The soldier looks thoughtful for a moment before looking at you. 'I remember you from last time. What do you think? Who should I accept a blood transfusion from?' He doesn't seem to have a preference, the whole situation probably dulling his ability to think.";
	say "     [bold type]You think for a moment before replying...";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - The imposing tiger. Such nice musculature and soft fur.";
	say "     ([link]N[as]n[end link]) - The grinning crocodile. Who could resist such a charming smile?";
	if player consents: [Tiger]
		say "     The large feline kneels down to make it easier for the nurse to get a blood sample. The young fox woman strokes the tiger's shoulder as she brings the needle of the syringe to his arm. He flinches slightly as it penetrates his skin, the vulpine's paw scratching behind his ears to soothe him. Blood is sucked into the vacuum as she withdraws the plunger, the red liquid the dying soldier's last hope. The fox pulls the needle out of the tiger's arm and passes the syringe to her superior, Otto watching the soldier intently as he waits for the immunosuppressants to wear off. It doesn't take long for this to happen, the human letting out a pained shout as bones reform violently. The crocodile and the wolf quickly try and hold him still to prevent him hurting himself further. Not missing a beat, Dr. Fuchs inserts the needle with precision directly into the thrashing soldier's deltoid, steadily injecting the fluid.";
		say "     For a moment, you think that this has killed him as he becomes completely limp. You realize how very wrong you were when his thrashing resumes, and the pained screams increase in intensity. Several of the onlookers turn away and cover their ears. Dr. Fuchs, seeing how concerned many of you are, shouts over the soldier, 'Probably a mixture of the infections fighting each other, incompatibility in blood types, and just the transformation process's normal effects. If his mind survives this, his body will too.' You're not sure whether this is reassuring or not. Froth trickles from the corner of the transforming human's mouth as tawny-orange fur pushes through his skin and his bones realign. His face fills out, forming into that of... a tiger. It seems that the gamble has paid off. The worst of it seemingly over, his body is no longer rigid. The shouts stop too, becoming weak grunts as the last transformations occur.";
		WaitLineBreak;
		say "     Before you lies the newly-transformed tiger. The remains of his clothes have torn from his vulnerable form. Like his progenitor, he is covered in rich, black-and-orange-striped fur, a thick tail twitching beneath him. Letting out a sigh, he clambers to his feet and stands up. He has gained several inches in height, as well as elsewhere, judging from the size of his flaccid shaft. A cream-furred scrotum hangs between his legs, the fur on his inner thighs of similar color. He gently feels over his new body, especially interested in what his face feels like. 'I can hear so much more... and the smells. This is going to take some getting used to. Thank you, sir,' he addresses the tiger. 'I would have died if you hadn't all saved me. Thank you, Dr. Fuchs, and you, Miss?' he says turning to the fox, waiting for her name. 'Genevieve,' the nurse replies, giving a small curtsy. The spectacle resolving with a happy ending, much of the crowd disperses, returning to their homes.";
		now Resolution of Doctor & Soldier is 1; [suggested tiger form]
	else: [crocodile]
		say "     The toothy reptile kneels down to make it easier for the nurse to get a blood sample. The young fox woman strokes the crocodile's shoulder as she brings the needle of the syringe to his arm. He flinches slightly as it penetrates his skin, the vulpine's paw rubbing beneath his chin to soothe him. Blood is sucked into the vacuum as she withdraws the plunger, the red liquid the dying soldier's last hope. The fox pulls the needle out of the crocodile's arm and passes the syringe to her superior, Otto watching the soldier intently as he waits for the immunosuppressants to wear off. It doesn't take long for this to happen, the human letting out a pained shout as bones reform violently. The tiger and the wolf quickly try and hold him still to prevent him hurting himself further. Not missing a beat, Dr. Fuchs inserts the needle with precision directly into the thrashing soldier's deltoid, steadily injecting the fluid.";
		say "     For a moment, you think that this has killed him as he becomes completely limp. You realize how very wrong you were when his thrashing resumes, and the pained screams increase in intensity. Several of the onlookers turn away and cover their ears. Dr. Fuchs, seeing how concerned many of you are, shouts over the soldier, 'Probably a mixture of the infections fighting each other, incompatibility in blood types, and just the transformation process's normal effects. If his mind survives this, his body will too.' You're not sure whether this is reassuring or not. Froth trickles from the corner of the transforming human's mouth as his skin toughens and his bones realign. His face elongates, forming into that of a crocodile. It seems that the gamble has paid off. The worst of it seemingly over, his body is no longer rigid. The shouts stop too, becoming weak grunts as the last transformations occur.";
		WaitLineBreak;
		say "     Before you lies the newly-transformed crocodile. The remains of his clothes have torn from his vulnerable form. Like his progenitor, he is covered in brown-green scales, a thick tail squashed underneath him. Letting out a sigh, he clambers to his feet and stands up. He has gained several inches in height. Between his legs, there is an absence of external genitalia, a discrete slit hopefully containing his penis. He gently feels over his new body, especially interested in what his face feels like. 'I can taste so much more... and the smells. This is going to take some getting used to. Thank you, sir,' he addresses the crocodile. 'I would have died if you hadn't all saved me. Thank you, Dr. Fuchs, and you, Miss?' he says turning to the fox, waiting for her name. 'Genevieve,' the nurse replies, giving a small curtsy. The spectacle resolving with a happy ending, much of the crowd disperses, returning to their homes.";
		now Resolution of Doctor & Soldier is 2; [suggested croc form]
	say "     The only people remaining are yourself, the ex-soldier, the two medical staff, and the three individuals that intimidated the hyenas. 'Thank the Pack for me the next time you see them. That wouldn't have gone nearly as well without you,' Otto addresses the wolf, gratitude obvious on his face. 'It would be a lot easier if you would accept the Den Mother's offer of protection, but we understand that you can help more people out here. But I better report to my Alpha, be careful, Otto.' He drops to all fours and runs down a side street, towards where you heard the howl earlier. Looking surprisingly grim, the larger tiger steps up to the doctor and rests his paw on his shoulder. 'We need to talk in private about what just happened.' Fuchs's shoulders slump, but he nods. A brief flash of anger crosses Genevieve's face at the tiger's words, but she quickly stifles this, giving you a grateful nod before gently guiding the recent patient towards Otto's house.";
	WaitLineBreak;
	say "     The doctor turns to you and shakes your hand. 'You seem to turn up when things go pear-shaped, don't you? Almost as if you know when I'll need help. Thank you, hopefully I'll see you again under better circumstances next time.' The words seem foreboding after the tiger's request to him. Bidding them goodbye, you walk away down the street. Unseen by you, the crocodile and the tiger stonily escort Otto into his house and close the door behind themselves.";
	now hp of Otto is 2;
	now Doctor & Soldier is resolved;

Table of GameEventIDs (continued)
Object	Name
Doctor Through the City	"Doctor Through the City"

Doctor Through the City is a situation.
Prereq1 of Doctor Through the City is Doctor & Soldier.
Prereq1Resolution of Doctor Through City is { 1, 2 }.
The level of Doctor Through the City is 0.
The sarea of Doctor Through the City is "Outside".

Instead of resolving Doctor Through the City:
	DoctorThroughtheCityEvent;

to DoctorThroughtheCityEvent: [Otto relocates to the Green Apartments]
	say "     Curious about how Dr. Fuchs is getting on since last time, you walk at a leisurely pace through the city back to the street he lives on. To your surprise, outside of the doctor's home, a group of four large wolves seem to be waiting. You begin to advance on them, concerned that they may be here with malicious intent. They have yet to register your approach and seem startled when you shout at them, asking what they think they are doing loitering outside Otto's house. One of them rises up onto two legs and addresses you, 'You seem to misunderstand why we are here. We wish no harm on Dr. Fuchs, not at all. We're here to help him travel to a new residence since some of the locals don't like the trouble they feel he brings here. The Den Mother sent us to ensure his safety given the services he provides to those in need. Are you well acquainted with him?' the now bipedal wolf asks.";
	say "     More relaxed now that they have explained themselves, you tell him your name and explain your previous encounters with Dr. Fuchs. 'Ah yes, he told us about you. Please forgive me for not recognizing you, but with the changes some people go through in the city, physical descriptions don't always count for much. My name is Argos, a senior pack member for the Den Mother and Pack Alpha. I'm sure Otto would prefer you to accompany us as well, if that is alright with you.' The door opens as the wolf says this, and Otto and Genevieve appear, heaving large suitcases. 'Oh it's you,' the doctor exclaims, letting go of the suitcase to come and talk to you, his companion beside him. You realize that you never told him your name and quickly remedy this, blushing slightly when the svelte fox grasps your head and kisses you on both cheeks as greeting.";
	WaitLineBreak;
	say "     Dr. Fuchs turns to address the leader of the wolves, 'So someone will come by to shift the medical equipment at some point, ja?' Receiving a nod, he picks up his luggage again with a sigh. 'I'm going to miss this place. I've lived here for so long, but I can understand that they feel that my continued residence here may cause problems for the locals.' You assume by [']they['] that he means the tiger and crocodile. 'Ah well, time to go. Are you ready, Genevieve?' Replying in the affirmative, she turns to pick up the other suitcase, only to find that Argos is already carrying it. He gives her a grin and jokes, 'I'm all for gender equality, but you aren't the largest of people, and this isn't light.' The petite fox smiles and replies, 'Remind me to thank you later when we return to the Den,' Everything seemingly ready, your small group sets off towards Otto's new home, eyes watching you from behind curtains.";
	say "     Argos watches the rear while his pack-mates scout ahead and to the sides to ensure that the party won't be ambushed. You engage the two medical personnel in a quiet conversation after offering to carry the doctor's bag. He gratefully passes it to you, the hefty case dragging your body sideways before you quickly compensate. 'Tell me about yourself [name of player],' Dr. Fuchs asks. 'You don't seem concerned about roaming the city, but nor do you look like you are with the military.' You give him a quick rundown of why you are here and what you have been doing since the transformations began. Genevieve and Argos listen intently, your tale especially enthralling to the pretty young fox. 'You seem to have had a few adventures,' the vulpine comments, a faint French accent noticeable now that nothing urgent is occurring around you. You bashfully shrug your shoulders and say that you suppose you have. It is then that a shout from ahead catches everyone's attention.";
	WaitLineBreak;
	say "     Responding to the noise, the reconnoitering wolves return to guard the group as you advance together. Suddenly, Argos firmly tells you all to stop, his nostrils flaring and his ears pressed back. 'Hyenas approaching from upwind. I can't tell exactly how many, and they smell different from the usual Hyena Gang. We could continue to check on the shout ahead, but it may be part of a trap. Or we can try and disappear down the side streets, but if someone is in need of assistance up ahead, we'll be leaving them to the mercies of the city. Otto Fuchs and Genevieve both seem to be favoring checking on the source of the shout, but they look at you to await your opinion.";
	say "     Someone may need the help of a doctor, and he seems fairly well defended at the moment so you tell them that you agree with their choice to continue onwards. The group tries to increase their pace, Genevieve casting concerned looks behind you as you stride forward. You reach an intersection covered in the rubble of a collapsed building. Large chunks of concrete grant numerous hiding places to a potential ambusher, a fact not lost on you or the wolves. 'Is anyone out there? Help! I think I've broken my ankle,' a feminine voice cries from further in. Argos looks unhappy with the situation and gestures for you all to stop. 'My pack and I will remain out here to protect you from the hyenas, but if this is a trap, then you'll have to rely on [name of player]. Try and be as quick as is safe. The apartments are just down the street.' You give a nod and follow Otto and his nurse into the debris.";
	WaitLineBreak;
	say "     Not too far in, you reach the source of the cries for help. A red panda woman is leaning against a lump of concrete clutching her foot. It would seem that this isn't an ambush. Upon seeing the woman, Otto's eyes widen, and he rushes forward, dropping to his knees beside her. 'Emma, what are you doing here? I thought you had moved across the city last week,' he exclaims, his hands gently manipulating the flesh around her ankle. Emma winces at the touch but replies, 'It didn't feel like home. I missed Claude, Mike, and, of course, you. So I decided to come back, and I thought that I'd be okay as long as I moved from building to building rather than being in the open. Unfortunately, I met a territorial mutt in one and got chased here. I managed to climb up the piece of rubble behind me, but I slipped coming down again once he had left. But why are you here? And who is the stranger?'";
	say "     Otto explains who you are and why you are here while he searches through his bag. '... and they asked me to leave so that the hyenas wouldn't threaten the people living there looking for me. I'm on my way to the Green Apartments in the hope that I can still be of use to people there,' Dr. Fuchs finishes. Snarling from outside of the rubble catches your ear, and you can hear Argos growling menacingly. 'Back off. Fuchs and Renard are under the Pack's protection, and I believe you've been warned before.' A cold voice replies, 'He was warned too before interfering in our punishment of the intruder. We outnumber you, now kindly piss off, or be a good dog and die.' Deciding that you are needed less here than out there, you hurry back the way you came.";
	WaitLineBreak;
	say "     As the confrontation come into view, you can see that the wolves are well outnumbered against sixteen hyenas. The metal-gloved hyenas smirks in recognition at seeing you, a distraction that Argos takes advantage of. Grabbing hold of the gang member's shoulders, he rams a knee between the feliform's legs, eliciting a pained yelp, before shoving him back into the milling hyenas. Still cupping his groin, you hear their leader snarl for them to attack. You rush forth, but a wolf blocks your charge and pulls you back again. 'Wait,' he whispers as he releases you. Your confusion is only deepened by what comes next. The air appears to become stained black around Argos, making him appear larger and much more feral. An unearthly howl breaks forth from his maw, startling the approaching gang members. 'This is your final warning. Leave now and cease pursuing Doctor Fuchs, or there will be harsh consequences,' the wolf threatens, surrounded by shadow.";
	say "     Most of the hyenas begin to flee, the shadow wolf terrifying them utterly. Only two remain with their leader, cowering and baring their teeth in defense of their superior. 'Fine,' the gang leader barks, 'he isn't worth dying over.' He retreats with the remaining hyenas to who-knows-where, leaving you wondering what you had just witnessed. When all of the hyenas have disappeared from view, Argos relaxes slightly, and the shadow seems to bleed from the air back into his fur. He sees your semi-fearful look. 'It's a gift from the Den Mother, an illusion. You might think of it as rune magic, but it doesn't use Nordic symbols. One use only I'm afraid, and it used a lot of energy, but it served its purpose,' he explains. Hearing that the conflict has been averted, Otto and Genevieve shuffle out of the ruins, supporting the limping red panda. 'A rather bad sprained ankle that I'll look at further once we arrive at the apartment,' Dr. Fuchs states. Two wolves dash in to fetch the luggage before you continue on your way.";
	WaitLineBreak;
	say "     It doesn't take you more than ten minutes to reach your destination at the Green Apartments, even with the injured woman. 'Would you like us to carry your bags to your room, doctor?' one of the wolves asks, receiving a nod and a thank you from the middle-aged human. 'If you don't mind me leaving you here, I'll take Emma inside and have a better look at her foot,' Fuchs addresses you and the wolves. 'Your help was invaluable, and once again I am in your debt.' He gives a small bow before aiding the panda through the front door. Genevieve instead opts to give everyone a hug, Argos being given a wink in addition. She turns to face you, 'Dr. Fuchs will be here, should you need him or just want to shelter from the city for a bit. But really, thank you. I wouldn't mind seeing more of you either,' the vulpine says, softly biting her bottom lip. With that, she follows her superior, leaving you with the pack.";
	say "     'We'll probably be seeing you again in future, I'm sure,' Argos says readying to return to wherever he resides. One of the wolves gives you a salute, much to the amusement of some of his friends. 'I would appreciate it if you had the time to check on Otto every now and again. He's a good man, but he has a tendency to help anyone who needs help. Something to do with the importance of his principles. But as you saw from the outcasts of the hyena gang, some victims have enemies that don't want them saved.' He pats you on the shoulder before dropping to all fours and loping away, followed by his pack-mates. Giving a smile and waving as they leave, you now have to decide what to do next.";
	move player to green apartment building;
	now green apartment building is known;
	now hp of Otto is 3;
	now Doctor Through the City is resolved;

Otto Fuchs ends here.
