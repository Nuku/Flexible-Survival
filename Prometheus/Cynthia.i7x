Version 1 of Cynthia by Prometheus begins here.

[ hp of Cynthia - relationship variable with the player      ]
[   0: not met                                               ]
[   1: Met Cynthia while fetching meds with Julian           ]
[   2:                                                       ]
[   3:                                                       ]
[   4:                                                       ]
[   5:                                                       ]
[   6:                                                       ]
[   7:                                                       ]
[ 100:                                                       ]

[An everyturn rule:
if a random chance of 1 in 3 succeeds: [present]
	move Cynthia to Cynthia's Room;
else: [Away on patrol]
	now Cynthia is nowhere;]

Section 1 - Room Declaration
[Cynthia's Room is a room.
The description of Cynthia's Room is "[CynthiasRoomDesc]".

to say CynthiasRoomDesc:
	say "     ";]

Section 2 - NPC Declaration

Table of GameCharacterIDs (continued)
object	name
Cynthia	"Cynthia"

Cynthia is a woman. The hp of Cynthia is usually 0.
[Physical details as of game start]
ScaleValue of Cynthia is 3. [human sized]
SleepRhythm of Cynthia is 0. [0 - awake at all times, 1 - day active, 2 - night active]
Cocks of Cynthia is 0. [no cock]
Cock Length of Cynthia is 0. [no cock length]
Cock Width of Cynthia is 0. [no ball size]
Testes of Cynthia is 0. [no balls]
Cunts of Cynthia is 1. [1 pussy]
Cunt Length of Cynthia is 8. [gets stretched a bit by an alpha husky]
Cunt Width of Cynthia is 3. [gets stretched a bit by an alpha husky]
Breasts of Cynthia is 2. [2 nipples]
Breast Size of Cynthia is 2. [B cup at the start]
[Basic Interaction states as of game start]
PlayerMet of Cynthia is false.
PlayerRomanced of Cynthia is false.
PlayerFriended of Cynthia is false.
PlayerControlled of Cynthia is false.
PlayerFucked of Cynthia is false.
OralVirgin of Cynthia is false.
Virgin of Cynthia is false.
AnalVirgin of Cynthia is false.
PenileVirgin of Cynthia is true.
SexuallyExperienced of Cynthia is true.
MainInfection of Cynthia is "Human".
The description of Cynthia is "[CynthiaDesc]".
The conversation of Cynthia is { "Interesting" }.
The scent of Cynthia is "     Cynthia smells very strongly of wolves, which is not surprising considering how much time she spends around them".

to say CynthiaDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [hp of Cynthia] <- DEBUG[line break]";
	else:
		say "     The sniper's face looks human, her neck-length, pale blonde hair hiding her ears from view. It is a pretty face, though not overly beautiful, the strain of constant vigilance showing. She is dressed in a form fitting, but not overly tight, gray uniform, a black beret on her head, black leather gloves on her hands, and has a modified rifle on her back. Deep-blue eyes glance cautiously around, making sure that little surprises her.";
		say "     Though she seems relatively cheerful, there is a darkness behind her eyes, a remnant of her actions in the past. She seems to genuinely care about the infected in the city, but equally dislike the governmental forces attempting to quarantine everyone. Her usual unwillingness to kill seems strange for a mercenary, but who are you to judge. She sees you studying her and starts to fiddle shyly with a half gas mask that is hooked on her belt, not meeting your eyes.";

Section 3 - Talking



Section 4 - Sex



Section 5 - Events

Table of GameEventIDs (continued)
Object	Name
Den of the Pack	"Den of the Pack"

Den of the Pack is a situation.
Prereq1 of Den of the Pack is Suppressant Supply Run.
Prereq1Resolution of Den of the Pack is { 1 }.
The level of Den of the Pack is 0.
The sarea of Den of the Pack is "Outside".

after going to Bright Alley while (Den of the Pack is active and Den of the Pack is not resolved and hp of Cynthia is 1 and a random chance of 1 in 2 succeeds):
	DenofthePackEvent;

Instead of resolving Den of the Pack:
	DenofthePackEvent;

to DenofthePackEvent:
	say "     As you approach the area known as Bright Alley, you get the sensation of being watched. You rapidly twist your head around, hoping to catch an observer before they can hide, but still don't see anyone. Dismissing the feeling as paranoia, you briskly walk onwards, shaking your head to try and dispel the fear. 'You should have trusted your instincts,' a female voice shouts from above. Snapping your head up, you spy a woman on the rooftops, a rifle held over one shoulder. Her face is completely obscured by an advanced-looking gas mask, so it takes you a few moments to recognize the voice as belonging to Cynthia, the soldier you met while collecting libido suppressants. She waves at you and continues, 'I wondered whether you were going to come, considering when we last met I took a few potshots at some rogue soldiers. But how have you been? I can't stalk you all the time.' She says the last one teasingly, but you are nonetheless left unsure how often she really is watching you.";
	say "     Cynthia walks towards a ladder at the edge of the building and clambers down while you wait patiently. You take the chance to observe her appearance further as she climbs down the ladder. Her gray uniform is fairly form fitting, not skin tight, but likely tailored for her. She wears a black beret with an insignia that you don't recognize. The straps of her mask press against neck-length blonde hair. 'I can feel your eyes on me. It's rude to stare at a lady without her permission, not that I mind, but you could have waited, couldn't you?' You decide to behave yourself until she has reached the ground. 'Now that we're face to face, you may look freely, though I'll take off my gas mask first.' She does so, revealing pale skin and startlingly deep blue eyes. 'Shall I escort you to the Den, my [if player is male]lord[else]lady[end if]?'";
	WaitLineBreak;
	say "     She proffers a gloved hand, which you hesitantly take. 'Ceremony is important to the Den Mother,' she explains, 'and you wouldn't want to disappoint her when you first meet, would you?' Cynthia guides you down a side alley and knocks on a blue door that is covered in the same dirt staining walls that surround you. The door is opened in an instant, and the face that greets you causes you to recoil slightly. The feline guard looks like he lost a fight with a dragon, half his face furless and seemingly melted with three parallel gashes running from forehead to chin. You realize that your reaction might be rude and begin to apologize, but he cuts you off part way by cackling. 'Don't worry. Most people react that way when they see me for the first time, some even continue to do so afterwards. But the Mistress with her obsession with illusions thinks that a fearsome appearance in a doorman may deter casual looters.'";
	say "     You let out a sigh of relief, asking if that's an illusion, then what does he really look like. You feel Cynthia wince beside you as she quickly replies, 'That [italic type]is[roman type] his face. He was injured near the beginning of the outbreak.' The cat snorts at her response, 'You make it sound so dull, girl. You, newcomer. Do you want to hear how I got this ugly mug? A dragon, one of them bloody huge ones from the stories, thought that he could take the gold in the bank vault. I worked as a security guard, you see, and I had principles even since being turned into a cat, and I, bold as brass, told him to go stuff himself. He didn't take too kindly to this and made the modifications to my face that you see before you, but I got the last laugh. I shut him in the vault, and I doubt that he can eat metal,' he finishes darkly. That sounds terrifying, if a little fictitious, so you look questioningly at the female soldier.";
	WaitLineBreak;
	say "     'But we shouldn't be talking in the open here. If Cynthia will vouch for you, you can come in,' the feline adds. Your escort quickly agrees and follows you through the door, thanking the guard as she passes. 'In case you're worried about the dragon, the Den Mother let him out once Oliver there was being treated. She isn't too fond of letting people die, be they human or giant fire-breathing lizard,' she whispers, subtly gesturing to the doorman. It takes you a minute to realize that the corridor you have entered is lushly carpeted and tastefully decorated. 'It's amazing what you can do with magic, isn't it?' your companion comments. 'The city's fallen, don't pretend that it hasn't, but with magic, you can heal some of that damage and restore a modicum of comfort.' Together you walk along the corridor towards a grand doorway guarded by two burly wolves. They nod in recognition and allow you to pass through, their eyes still following you nonetheless.";
	say "     The room you enter looks like the entrance to a luxurious hotel. Thick carpets, gold leaf, and marble adorn the spacious lobby, though the front door is obscured behind rubble. Noticing where your attention is, Cynthia explains, 'Makes it look like the inside of the building has collapsed, reducing any interest someone might have in snooping around. The Pack Alpha should be this way if you could follow me. He will want to inspect you before you see the Den Mother.' As you follow her, you see a few people observing you, quite a few wolves, but other species too. The mercenary takes you up the stairs and to a door marked [']Conference Room['], guarded by three large bipedal wolves. The one in the center is especially impressive, luxuriant black, brown, and gray fur covering his toned form, and he seems to exude an aura of authority. As you approach, his deep-green eyes appraise you, and his nose twitches.";
	WaitLineBreak;
	say "     With a flick of an ear, he steps forward calmly, 'I am glad to see you well, Cynthia. You don't come and see us nearly often enough, though Argos does keep me informed of your actions and welfare.' The large wolf crouches slightly to give her a hug, licking her ear as he does so and making her giggle. 'And is this the person that you were telling us about? Or did you find a stray that you want to adopt? But I should include them in the conversation and introduce myself or Cadmea will scold me again. I am Sirius, Pack Alpha of the beings that take shelter here,' the canine addresses you, clapping you on the shoulder. 'As long as you're polite, there is little reason that there should be any problem between us, but I would imagine that you would like to meet the Den Mother, so I won't keep you any longer. Treat her with respect, but she isn't a god and doesn't like being spoken to as such. Cynthia will accompany you.' Curious as to who the Den Mother is, you pass through the opened door into the conference room.";
	say "     You are rather disappointed to see a rather small fox-woman sitting at the head of the table and eating a plate of fish fingers, crumbs stuck in the fur of her fingers, marring the white fur. 'Do please excuse me while I finish these. We don't have them on my home plane,' she asks looking up at you for a moment. Cynthia takes a seat, and you follow suit, waiting while the fox finishes her snack. Licking her lips, she briefly ignites her slender hands in a bluish flame, disintegrating the crumbs, before standing up and revealing a multitude of tails behind her. It would seem that the Den Mother is a kitsune. 'I ask the others to try and make a good impression, and I'm the one looking like a mess without an air of decorum. And when first impressions are so important... I am Cadmea, the Den Mother. Pleased to finally meet you. Cynthia told me about you and Julian and I wanted to get to know the both of you,' the white-furred vulpine cheerfully informs you, giving a bow.";
	WaitLineBreak;
	say "     You hastily stand up and return the bow, inconspicuously taking in her appearance as you retake your seat. She wears a short tunic-like garb decorated with a forest scene that maintains her decency, covering from shoulder to mid thigh. Through the back of it, seven fluffy tails fan out behind her, swaying as she moves. 'How are you, Cynthia darling? You haven't been here to tell me stories of the city for quite some time, and your world is so fascinating!' Cadmea lightly scolds the sniper before turning back to face you, ignoring the human's excuses. For a moment, her tunic seems to cease to exist, revealing a flash of her naked form before appearing again, making you wonder whether it really just happened. Her violet eyes meet yours, a half smile at the corners of her mouth.";
	say "     'Don't think that I haven't noticed you looking me over. Such a flatterer. But let me tell you a little about myself so you aren't just relying on what your eyes believe they see. I am not of your world or even your plane, a fact that might have been more shocking if I wasn't the only being in your city that could truthfully say such a thing. When I first traveled here, I wandered the city for a few days, much to my guardian's disapproval. It is very strange seeing demons and archons so different to those of my world, not to mention the other beings curious enough to visit while the path between planes is so stable. Also, the technology that you have here is mind blowing, though much of it isn't in a good way I must admit. The gods do not allow such harmful things as explosives and guns in the realm that I come from. I am also curious as to what caused your world to be so drained in magic though I don't expect you to know. It's there but nowhere near to the extent of home.'";
	WaitLineBreak;
	say "     'This absence of magic rather limits my capabilities to petty enchantments as I am not powerful enough to generate a particularly impressive magical source of my own. For this reason, I seldom travel anymore, instead remaining in this hotel where there is a tear between worlds allowing a trickle of magic to bleed through. My companion, Sirius I believe he's taken to calling himself, is a more capable fighter than me and isn't affected much by the absence of arcane power. There was a third member who came through with us, but he has a greater affinity for chaos than me and didn't want to restrain his involvement as much as I felt prudent. So if you see a black-furred Kitsune causing trouble in the city, tell him that I miss him and that he should spend more time with family. He's my brother and should be representing our plane more responsibly. He has a penchant for umbramancy, emotional manipulation, and transmogrification, so you can imagine the damage he might cause if he wasn't just being merely mischievous,' the fox warns you.";
	say "     'But you probably have places to be, so I shouldn't keep you for any longer. Oh, but as a note, you don't have to worry about Sirius or myself infecting you with the nanites that are warping the city. As I said earlier, the gods of our plane do not allow advanced technology like your world, and their will seems to still affect us, destroying any that try and influence us. We can't even touch firearms without them disintegrating in our hands. This is part of the reason we make use of native agents such as Cynthia and Argos to patrol the city and protect the vulnerable as they aren't going to destroy advanced technology just by touching it,' Cadmea laughs, giving Cynthia a wink. 'But I've started rambling again, haven't I? Sorry, your world is just so interesting, but I should let you go, people to save and take advantage of their gratitude from I would imagine. Farewell and don't hesitate to visit again. I'm sure that we could find other topics to discuss.'";
	WaitLineBreak;
	say "     You and Cynthia stand up and return the kitsune's goodbye, the vulpine woman bowing in acknowledgement. The door opens, and Sirius enters, the large wolf giving you a nod in passing as you leave. Perhaps the two leaders have important matters to discuss, though the concerned look he gives Cadmea suggest that there is more to it than the hotel's everyday management. 'So what did you think of the Den Mother?' Cynthia asks you as you approach the stairs down again. She continues without waiting for your response, 'She and the Pack Alpha try and protect those that they can, but many don't want to put their trust in otherworldly beings. Having people that are from Earth, or native agents as she calls us, like myself and Argos's pack helps to convince people to give her a chance. Though it does seem strange that a talking fox from another world would be trusted less than a talking wolf that used to be a sight at the zoo. Humans are weird. My employer would have so liked to meet her.'";
	say "     You follow her back to the side door with its grizzled doorman, the mercenary giving the feline a smile as he lets you leave again. From the filth and griminess of the alleyway you exit into, you wouldn't know how decadent the inside of the hotel was. Cynthia beckons for you to come with her, and you walk together in silence until you are back where she greeted you earlier. 'Sorry that I have to leave you here, but I need to get back to spying on people in the city from the rooftops, and you should be getting back to that library you love so much. I'll have to come and visit you at some point and withdraw a book now that there are unlikely to be late fees,' she jokes. 'I might even test your security just so you know how lucky you are that no one has attacked you there. Be well, and I'll be seeing you, even if you don't see me'. The sniper fastens her gas mask on again and climbs up the ladder, leaving you to decide what to do next.";
	now hp of Cadmea is 1;
	now resolution of Den of the Pack is 1;
	now Den of the Pack is resolved;
	now Sanctuary Alleyway is known;

Section 6 - Sanctuary Hotel Location

Table of GameRoomIDs (continued)
Object	Name
Sanctuary Alleyway	"Sanctuary Alleyway"

Sanctuary Alleyway is a room. It is fasttravel.
Sanctuary Alleyway is private.
The description of Sanctuary Alleyway is "[SanctuaryAlleywayDesc]".
The earea of Sanctuary Alleyway is "Outside".

to say SanctuaryAlleywayDesc:
	say "     The dirty alley in which you stand is littered with plastic bags and bottles, likely from before the outbreak. Looming over you are several multiple story buildings, grubby windows obscuring you from being able to see inside properly but creating an ominous atmosphere as you see the silhouettes of the occupants moving about on the grime. In front of you is the side entrance to the Sanctuary Hotel, the hidden den of The Pack. Despite its appearance of being abandoned, you remember the amount of security and illusions that are used to defend it.";

Table of GameRoomIDs (continued)
Object	Name
Sanctuary Hotel Lobby	"Sanctuary Hotel Lobby"

Sanctuary Hotel Lobby is a room. Sanctuary Hotel Lobby is inside from Sanctuary Alleyway.
The description of Sanctuary Hotel Lobby is "[SanctuaryHotelLobbyDesc]";

to say SanctuaryHotelLobbyDesc:
	say "     In contrast to the appearance of being deserted that the outside of the Sanctuary Hotel instills, the lobby is decorated luxuriously. Thick carpets, gold leaf, and marble adorn the spacious room, and a wide staircase arcs around the far wall. Unfortunately the front door is obscured behind rubble, detracting from the majesty of the room with how out of place the concrete looks against the rest of the décor. Looking at the structural integrity, the rubble came from elsewhere, how, you do not know. Beside the front desk, the lights of a glass elevator shine, showing a private source of power for the building, likely generators. Around the room are at least eight wolves acting as security, eyes gazing about constantly. A few refugees from the horrors outside sit in the plush armchairs beside some of the marble columns, huddled with family or idly reading magazines from coffee tables. There are likely more of them occupying the rooms above you.";

[Table of GameRoomIDs (continued)
Object	Name
Sanctuary Conference Room	"Sanctuary Conference Room"

Sanctuary Conference Room is a room.
The description of Sanctuary Conference Room is "[SanctuaryConferenceRoomDesc]".

to say SanctuaryConferenceRoomDesc:
	say "     The conference room is dominated by a large walnut table in the center, surrounded by cushioned chairs. A ceiling height window gives a view over the remains of what was probably once an impressive boulevard but is now cluttered with abandoned cars and rubbish. Along one edge of the room are several cabinets with cups and saucers visible through the glass to be neatly stacked and clean. The opposite wall has two paintings and a locked door. It seems to be where the Den Mother and Pack Alpha run the day to day operations of the Pack and as such, they have made sure that it is comfortable for them.";]

Cynthia ends here.

[Source non-lethal shots from Sylvia. eg. Muscle paralyzers and relaxants]
