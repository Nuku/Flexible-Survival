Version 1 of Cynthia by Prometheus begins here.

[ HP of Cynthia - relationship variable with the player      ]
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
Description of Cynthia's Room is "[CynthiasRoomDesc]".

to say CynthiasRoomDesc:
	say "     ";]

Section 2 - NPC Declaration

Table of GameCharacterIDs (continued)
object	name
Cynthia	"Cynthia"

Cynthia is a woman.
ScaleValue of Cynthia is 3. [human sized]
Body Weight of Cynthia is 5. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Cynthia is 6. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Cynthia is 8. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Cynthia is 6. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Cynthia is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Cynthia is 6. [length in inches]
Breast Size of Cynthia is 2. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Cynthia is 2. [count of nipples]
Asshole Depth of Cynthia is 8. [inches deep for anal fucking]
Asshole Tightness of Cynthia is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Cynthia is 0. [number of cocks]
Cock Girth of Cynthia is 0. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Cynthia is 0. [Length in Inches]
Ball Count of Cynthia is 0. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Cynthia is 0. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Cynthia is 1. [number of cunts]
Cunt Depth of Cynthia is 8. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Cynthia is 2. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Cynthia is 3. [size 1-5, very small/small/average/large/very large]
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
TwistedCapacity of Cynthia is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Cynthia is true. [steriles can't knock people up]
MainInfection of Cynthia is "".
Description of Cynthia is "[CynthiaDesc]".
Conversation of Cynthia is { "Interesting" }.
The scent of Cynthia is "     Cynthia smells very strongly of wolves, which is not surprising considering how much time she spends around them".

to say CynthiaDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Cynthia] <- DEBUG[line break]";
	else:
		say "     The sniper's face looks human, her neck-length, pale blonde hair hiding her ears from view. It is a pretty face, though not overly beautiful, Strain of constant vigilance showing. She is dressed in a form fitting, but not overly tight, gray uniform, a black beret on her head, black leather gloves on her hands, and has a modified rifle on her back. Deep-blue eyes glance cautiously around, making sure that little surprises her.";
		say "     Though she seems relatively cheerful, there is a darkness behind her eyes, a remnant of her actions in the past. She seems to genuinely care about the infected in the city, but equally dislike the governmental forces attempting to quarantine everyone. Her usual unwillingness to kill seems strange for a mercenary, but who are you to judge. She sees you studying her and starts to fiddle shyly with a half gas mask that is hooked on her belt, not meeting your eyes.";

Section 3 - Talking



Section 4 - Sex



Section 5 - Events

Table of GameEventIDs (continued)
Object	Name
Den of the Pack	"Den of the Pack"

Den of the Pack is a situation.
ResolveFunction of Den of the Pack is "[ResolveEvent Den of the Pack]".
Prereq1 of Den of the Pack is Suppressant Supply Run.
Prereq1Resolution of Den of the Pack is { 1 }.
The level of Den of the Pack is 0.
Sarea of Den of the Pack is "Outside".

after going to Bright Alley while (Den of the Pack is active and Den of the Pack is not resolved and HP of Cynthia is 1 and a random chance of 1 in 2 succeeds):
	DenofthePackEvent;

to say ResolveEvent Den of the Pack:
	DenofthePackEvent;

to DenofthePackEvent:
	say "     As you approach the area known as Bright Alley, you get the sensation of being watched. You rapidly twist your head around, hoping to catch an observer before they can hide, but still don't see anyone. Dismissing the feeling as paranoia, you briskly walk onwards, shaking your head to try and dispel the fear. 'You should have trusted your instincts,' a female voice shouts from above. Snapping your head up, you spy a woman on the rooftops, a rifle held over one shoulder. Her face is completely obscured by an advanced-looking gas mask, so it takes you a few moments to recognize the voice as belonging to Cynthia, the soldier you met while collecting libido suppressants. She waves at you and continues, 'I wondered whether you were going to come, considering when we last met I took a few potshots at some rogue soldiers. But how have you been? I can't stalk you all the time.' She says the last one teasingly, but you are nonetheless left unsure how often she really is watching you.";
	say "     Cynthia walks towards a ladder at the edge of the building and clambers down while you wait patiently. You take the chance to observe her appearance further as she climbs down the ladder. Her gray uniform is fairly form fitting, not skin tight, but likely tailored for her. She wears a black beret with an insignia that you don't recognize. The straps of her mask press against neck-length blonde hair. 'I can feel your eyes on me. It's rude to stare at a lady without her permission, not that I mind, but you could have waited, couldn't you?' You decide to behave yourself until she has reached the ground. 'Now that we're face to face, you may look freely, though I'll take off my gas mask first.' She does so, revealing pale skin and startlingly deep blue eyes. 'Shall I escort you to the Den, my [if Player is male]lord[else]lady[end if]?'";
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
	say "     You and Cynthia stand up and return the kitsune's goodbye, the vulpine woman bowing in acknowledgment. The door opens, and Sirius enters, the large wolf giving you a nod in passing as you leave. Perhaps the two leaders have important matters to discuss, though the concerned look he gives Cadmea suggest that there is more to it than the hotel's everyday management. 'So what did you think of the Den Mother?' Cynthia asks you as you approach the stairs down again. She continues without waiting for your response, 'She and the Pack Alpha try and protect those that they can, but many don't want to put their trust in otherworldly beings. Having people that are from Earth, or native agents as she calls us, like myself and Argos's pack helps to convince people to give her a chance. Though it does seem strange that a talking fox from another world would be trusted less than a talking wolf that used to be a sight at the zoo. Humans are weird. My employer would have so liked to meet her.'";
	say "     You follow her back to the side door with its grizzled doorman, the mercenary giving the feline a smile as he lets you leave again. From the filth and griminess of the alleyway you exit into, you wouldn't know how decadent the inside of the hotel was. Cynthia beckons for you to come with her, and you walk together in silence until you are back where she greeted you earlier. 'Sorry that I have to leave you here, but I need to get back to spying on people in the city from the rooftops, and you should be getting back to that library you love so much. I'll have to come and visit you at some point and withdraw a book now that there are unlikely to be late fees,' she jokes. 'I might even test your security just so you know how lucky you are that no one has attacked you there. Be well, and I'll be seeing you, even if you don't see me.' The sniper fastens her gas mask on again and climbs up the ladder, leaving you to decide what to do next.";
	now HP of Cadmea is 1;
	now resolution of Den of the Pack is 1;
	now Den of the Pack is resolved;
	AddNavPoint Sanctuary Alleyway;

Table of GameEventIDs (continued)
Object	Name
ArcheTech Warehouse	"ArcheTech Warehouse"

ArcheTech Warehouse is a situation.
ResolveFunction of ArcheTech Warehouse is "[ResolveEvent ArcheTech Warehouse]".
ArcheTech Warehouse is inactive.
Prereq1 of ArcheTech Warehouse is Dual Leadership.
The level of ArcheTech Warehouse is 0.
Sarea of ArcheTech Warehouse is "Nowhere".

after going to Sanctuary Hotel Lobby while (ArcheTech Warehouse is active and ArcheTech Warehouse is not resolved and ArcheTech Warehouse is PrereqComplete and HP of Cadmea is 2 and a random chance of 1 in 2 succeeds):
	ArcheTechWarehouseEvent;

to say ResolveEvent ArcheTech Warehouse:
	ArcheTechWarehouseEvent;

to ArcheTechWarehouseEvent:
	say "     [bold type]You sense that something is going on, possibly important to the Pack. Do you wish to involve yourself now, or would you prefer to wait until another time? You're sure that they will wait.[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - There is no time like the present and your curiosity is piqued.";
	say "     ([link]N[as]n[end link]) - Leave it until later, you have other things that you want to do here now.";
	if player consents:
		say "     A small group of wolves enter the lobby just behind you, one of them barging past as he rushes by you, barely turning their head to shout an apology. 'Sorry about that,' one of the other wolves says as he approaches you at a more reasonable speed. 'Argos gets a bit focused on the task at hand, especially when the message is urgent. We found something near the docks that the Pack Leaders may be interested in. An undamaged building that doesn't look as though anyone has looted it yet. Those are rare enough, but this one has electronic security that doesn't fit in with the padlocks and bolts that you find on the other warehouses. Wait a minute. Haven't we met before? Ah yes. You were one of the two kidnapped by the mercenaries. I'm Orthos if you don't remember me. Where's Julian? Wasn't he your friend?' You quickly explain before the wolf can go onto his next thought that, yes, Julian is your friend but he lives at the college and that you tend to travel about quite a bit.";
		say "     A call from above interrupts the conversation as Cynthia strolls down the stairs accompanied by Cadmea, Sirius, and Argos. This warehouse really must be important to have attracted this much notice from the Pack's leadership. 'Hey [if player is not defaultnamed][name of player], [else]there, [end if]fancy you being here,' Cynthia greets you. 'I haven't seen you from the rooftops for a while. How are you?' You reply that you've been worse, earning a short laugh from her. 'That's rather vague, I hope that the denizens of the city haven't violated you against your will too often. But I'm sure Orthos was telling you about the warehouse that they found and time is of the essence. I don't know how it has managed to avoid notice for so long, but Argos suspects that we aren't the only ones interested in it, as there were others around the area. If you have the time, would you like to accompany us to this warehouse? If it belongs to who I think it does, there could be some quite useful things inside. And even if it doesn't, how tightly it's sealed is curious anyway.'";
		WaitLineBreak;
		say "     Considering how urgent Cynthia is making it out to be, you agree after only a moment, the woman giving you a smile in response. 'Be careful dear ones. No amount of food or water is worth your lives,' Cadmea says to the patrol group, though you have a feeling that she is including you in this. 'Hm, I don't know. Some of the food they have on this plane is quite delicious,' Sirius muses, receiving a surprisingly firm poke in the stomach from the smaller woman. 'In all seriousness though, watch yourself and don't take any large risks. Unfortunately, I can't come with you, but I'll have someone keep an eye on you in case you need reinforcements.' Cadmea stares at him intensely and you get the impression that she is weighing up whether to argue or respect his authority for matters outside of the hotel. Finally, the kitsune replies in almost a whisper, 'just make sure that you all come back alive. We'll deal with any other problems that arise then.'";
		say "     The group hastily makes sure that everyone that is going is present and carrying what they need, only a few of the wolves strapping on harnesses with things like torches and rations while most just stand around watching. Cynthia fits her face mask back on, completely obscuring her previously cheerful expression behind its tinted glass and filters. 'Ready to move out?' she asks you, slinging her rifle over her shoulder and patting her various pockets in a last minute check. You nod in reply and the pack begins to file into the corridor towards the rear exit, Cadmea and Sirius waving you farewell. Exiting back into the activity of the city, you realize that all together there are eight of you. Six wolves, Cynthia, and yourself, so you hope that if there are any other groups making a play for the warehouse that you won't be too greatly outnumbered.";
		WaitLineBreak;
		say "     The pack's movement through the city is slow, but you manage to avoid conflict with any of its crazed residents and when you finally spot waves lapping at the weathered supports of the wharf beside several warehouses. None of the group displays any signs of exhaustion, seeming just as fresh as when you left the shining interior of the Sanctuary Hotel. 'That is our target,' Argos informs you all, pointing at a roof about a hundred meters away. 'Any other group we meet here is likely interested by the warehouse too so be prepared in case we are attacked. Standard approach pattern. I'll lead, with Cynthia, Orthos, and [if player is not defaultnamed][name of player] [else]the newcomer [end if]guarding my back. Lethal force is only authorized if an adversary reacts in kind. Ready? Advance.' At a steady pace, the formation moves towards the warehouse, the area suspiciously quiet, not even any dock workers moving around.";
		say "     'Halt, or I fire!' a voice arrests your approach, a bulky-looking soldier who steps out as you pass a warehouse thirty meters from your destination. A quick count reveals eight further troopers behind boxes and other forms of cover, rifles trained on your group and not one of them flinching or reacting shocked. 'This area is restricted to US military personnel only. Civilians, mercenaries, or beings from fuck-knows-where are not to approach nor interfere with our operation in this area, and you lot look like trouble. Walk back the way you came, or be sent off in a bodybag.' He addresses your group without any trace of fear, almost to the point of rudeness. They must have some sort of training to have avoided detection by the wolves, something that Cynthia seems aware of too. This is a fight you won't win. Not yet at least.";
		WaitLineBreak;
		say "     'I think that we should go back the way we came, what do you say?' Argos asks rhetorically, slowly stepping backwards, the pack moving in sync with him. Cynthia and Orthos both express agreement, a sentiment that you also agree with considering your preference for not being full of holes. The soldiers watch you retreat along the waterfront until you are out of sight. The wolves regroup in a crumbling building, pleased to have survived the meeting with more confidant soldiers than you have encountered before. 'Well that didn't work now, did it?' a mocking voice declares. It seems to be a day of being taken by surprise as a figure seems to unfold from the shadow of some winch equipment. 'Damn it, Blackpaw. Didn't your sister tell you to stop doing that?' Orthos grumbles. 'I still think that name sounds derogatory,' you hear Cynthia mutter as the person steps from the shadows. To your surprise, it is another Kitsune, absolutely naked and with fur so black that it seems to leech from the little light that there is around it.";
		say "     'While I love my sister very much, Cadmea knew when she told me not to appear out of shadows that I wouldn't listen. Similar to her instructions not to fight, sleep with, or otherwise interfere with the life forms from this plane of existence. If I displease our patron, he will punish me. Until then I shall share my gifts with whom I please, including any of you lot should you want to,' Blackpaw boasts, caressing his swelling sheath. He seems extremely full of himself, but you can easily see the resemblance with the Den Mother now that you are aware that they are siblings. You'll have to ask her about him at some point. 'But I'm getting distracted. [']Sirius['] thought you were going in blind. Why he doesn't use his proper name, I don't know. It isn't as if he's going to be recognized, but I digress. If you thought those soldiers were the only group interested in the prize that you are going for, then you are mistaken.'";
		WaitLineBreak;
		say "     'The Hyena gang is also aware of the warehouse and one of the lietenants thinks that whatever is in there might get him in good books with the Matriarch. A sizeable group of them are to the north of here planning how to get past the soldiers without being turned to Elgosian cheese. Unfortunately for them, the army knows about the hyenas and are highly likely to shoot on sight. A bit brutal but I've never had a high opinion of the soldiery. A bit more concerning is that the warehouse seems to have attracted the attention of a demon, and not one of the nice ones from my world. While he is mostly too lazy to fight for himself, he has quite a few devoted cultists who don't seem overly concerned with personal safety considering the gifts their demonic lord has bestowed upon them. If you do meet him, my advice is to run. Physical force won't have much effect on him, though disabling the cultists might work. They should be somewhere around here, but they tend to move. Last time I saw them, they were looking for leylines. Idiots. You don't need leylines to summon a demon.'";
		say "     'You met the soldiers so I don't need to tell you much about them. They have technology that I'm not familiar with, but they looked dangerous. Most of the patrols around the city are jumpy and unused to the spectacular creatures that now roam the city, something that the group you met today doesn't share. They're calm, calculating, and as you saw, confident enough in their skills to properly identify threats before shooting. Normally I would discount them compared to the demon worshippers, but that seems unwise considering the consequences should I be wrong. While I am reluctant to involve them, there is a group of survivors that have mostly kept to themselves, but Cadmea has helped them a few times so they may be willing to lend a paw, as it were, should you absolutely need to get into the warehouse. I'm told that they're called African Wild Dogs, but they seem relatively tame to me. They have however had a few run-ins with the patrols, so the military tend to be a bit trigger happy when they see them. Anyway, I think that more planning will be required, so we should be on our way back to the den, don't you think?' Not waiting for any further discussion, the umbral kitsune trots off, followed shortly afterward by the rest of your group. You're not sure whether to think of today's excursion as a failure, or as the first step on the road to success. You hope that it is the latter considering that even demons are interested in the contents of warehouse too and that the building has even kept them out.";
		WaitLineBreak;
		say "     The walk back is equally uneventful, giving you time to talk to Cynthia about Blackpaw. 'I haven't had much contact with him,' she responds. 'Mostly just Cadmea complaining about him interfering in the [']affairs of this world[']. To be honest, I think that she is envious of his willingness to wander the city doing as he wishes, whether it is watching events unfurl, helping someone in a moment of vulnerability, hindering the military patrols, or sating his lusts. He may act on his impulses more than she does, but I think the two of them aren't too different. The Den Mother represses her instincts because she doesn't wish to cause further harm to the city, Blackpaw isn't afraid to show his disdain for those who justify their actions by claiming to just be [']following orders['], but beneath that I think that he is just as kind-hearted as his sister towards those who he feels are deserving of it.'";
		say "     'Sirius is more accepting of Blackpaw's whims, but he too gets to leave the hotel more often than Cadmea. I can't imagine staying in the same building for weeks on end, especially while many of those around you get to come and go as they please. I think that she is terrified of displeasing whoever allowed her to come here and so protects the hotel and nothing more. I feel sorry for her, but I wouldn't want to be impertinent enough to tell her to be more like her brother and partake in some hedonism for a bit. She would probably slap me with her tail or something if I did. But here I am rambling and I sort of feel like I'm talking behind her back. If you want to know more, perhaps you should discuss it with her yourself. If you'll excuse me, I wish to discuss some things with Argos before we get back.' You bid her farewell as he jogs ahead to talk with the lead wolf in hushed tones, the two of them giving quick glances at Blackpaw's back. You walk in silence for the rest of the way back to the hotel, thinking on what Cynthia has said.";
		WaitLineBreak;
		say "     When your scout group trudges back into the lobby, Cadmea greets you all with a relieved smile, Sirius giving a nod to you over her shoulder. Though she seems momentarily shocked to see the black-furred kitsune, she beams even more brightly and rushes over, embracing him tightly before kissing him on the cheek. 'I haven't seen you for some time, dear brother. I assume that there were complications at the seafront and that Sirius asked you to be there to ensure their safety?' she asks, her paw resting lightly on the side of his face. 'He might have, but I came back with them so that I we could be together again for a bit. Playing in the city becomes boring after a while and I thought that you might like a turn too,' Blackpaw replies, his thumb brushing the back of her paw. 'Tempting, but I don't want to get in trouble.' Despite Cadmea's teasing tone, from what Cynthia told you, this is a real concern for her, a fact that doesn't escape her twin's notice. 'You and I both know that 'He' would tell you if we were interfering too much and your instincts haven't led you astray before. I won't push it, but at least consider it. For me?' Blackpaw punctuates this question with a waggle of his ears, making the white-furred kitsune giggle as she replies, 'Okay. I'll think about it. For you.'";
		say "     After a few more whispered words with her brother, Cadmea turns to the rest of you. 'I apologize for keeping you waiting. Despite not being able to get into the warehouse, we should now be able to plan more effectively for a proper attempt to get inside. Sirius and I will discuss whether we wing it again, or whether we approach this with more sense than a novice adventuring group.' Turning to you she continues, 'Once we have a better idea, we may ask for your opinion on the matter. However this isn't a priority, so it may be some time. Until then, we carry on as normal, providing shelter and sustenance for those who need it. If you keep on helping us, there might be a reward in it for you,' she adds sultrily. With that to consider, you excuse yourself and find a comfy couch to slump into, exhausted from your recent excursion.";
		Now Archetech Warehouse is resolved;

Section 6 - Sanctuary Hotel Location

Table of GameRoomIDs (continued)
Object	Name
Sanctuary Alleyway	"Sanctuary Alleyway"

Sanctuary Alleyway is a room. It is fasttravel.
Sanctuary Alleyway is private.
Description of Sanctuary Alleyway is "[SanctuaryAlleywayDesc]".
The earea of Sanctuary Alleyway is "Outside".

to say SanctuaryAlleywayDesc:
	say "     The dirty alley in which you stand is littered with plastic bags and bottles, likely from before the outbreak. Looming over you are several multiple story buildings, grubby windows obscuring you from being able to see inside properly but creating an ominous atmosphere as you see the silhouettes of the occupants moving about on the grime. In front of you is the side entrance to the Sanctuary Hotel, the hidden den of The Pack. Despite its appearance of being abandoned, you remember the amount of security and illusions that are used to defend it.";

Table of GameRoomIDs (continued)
Object	Name
Sanctuary Hotel Lobby	"Sanctuary Hotel Lobby"

Sanctuary Hotel Lobby is a room. Sanctuary Hotel Lobby is inside from Sanctuary Alleyway.
Description of Sanctuary Hotel Lobby is "[SanctuaryHotelLobbyDesc]";

to say SanctuaryHotelLobbyDesc:
	say "     In contrast to the appearance of being deserted that the outside of the Sanctuary Hotel instills, the lobby is decorated luxuriously. Thick carpets, gold leaf, and marble adorn the spacious room, and a wide staircase arcs around the far wall. Unfortunately the front door is obscured behind rubble, detracting from the majesty of the room with how out of place the concrete looks against the rest of the décor. Looking at the structural integrity, the rubble came from elsewhere, how, you do not know. Beside the front desk, the lights of a glass elevator shine, showing a private source of power for the building, likely generators. Around the room are at least eight wolves acting as security, eyes gazing about constantly. A few refugees from the horrors outside sit in the plush armchairs beside some of the marble columns, huddled with family or idly reading magazines from coffee tables. There are likely more of them occupying the rooms above you.";

[Table of GameRoomIDs (continued)
Object	Name
Sanctuary Conference Room	"Sanctuary Conference Room"

Sanctuary Conference Room is a room.
Description of Sanctuary Conference Room is "[SanctuaryConferenceRoomDesc]".

to say SanctuaryConferenceRoomDesc:
	say "     The conference room is dominated by a large walnut table in the center, surrounded by cushioned chairs. A ceiling height window gives a view over the remains of what was probably once an impressive boulevard but is now cluttered with abandoned cars and rubbish. Along one edge of the room are several cabinets with cups and saucers visible through the glass to be neatly stacked and clean. The opposite wall has two paintings and a locked door. It seems to be where the Den Mother and Pack Alpha run the day to day operations of the Pack and as such, they have made sure that it is comfortable for them.";]

Cynthia ends here.

[Source non-lethal shots from Sylvia. eg. Muscle paralyzers and relaxants]
