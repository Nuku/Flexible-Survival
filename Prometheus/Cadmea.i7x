Version 1 of Cadmea by Prometheus begins here.

[ HP of Cadmea - relationship variable with the player       ]
[   0: not met                                               ]
[   1: Introduced by Cynthia                                 ]
[   2: Had tea with                                          ]
[   3:                                                       ]
[   4:                                                       ]
[   5:                                                       ]
[   6:                                                       ]
[   7:                                                       ]
[ 100:                                                       ]

[Resolution of Dual Leadership                               ]
[   1: Stole Cake          (An illusion. There was no cake)  ]
[   2: Did not steal cake                                    ]

[An everyturn rule:
	move Cadmea to Sanctuary Conference Room;]

Section 1 - Room Declaration


Section 2 - NPC Declaration

Table of GameCharacterIDs (continued)
object	name
Cadmea	"Cadmea"

Cadmea is a woman.
ScaleValue of Cadmea is 3. [human sized]
Body Weight of Cadmea is 3. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Cadmea is 4. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Cadmea is 8. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Cadmea is 6. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Cadmea is 4. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Cadmea is 6. [length in inches]
Breast Size of Cadmea is 2. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Cadmea is 2. [count of nipples]
Asshole Depth of Cadmea is 12. [inches deep for anal fucking]
Asshole Tightness of Cadmea is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Cadmea is 0. [number of cocks]
Cock Girth of Cadmea is 0. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Cadmea is 0. [Length in Inches]
Ball Count of Cadmea is 0. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Cadmea is 0. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Cadmea is 1. [number of cunts]
Cunt Depth of Cadmea is 12. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Cadmea is 3. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Cadmea is 3. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Cadmea is false.
PlayerRomanced of Cadmea is false.
PlayerFriended of Cadmea is false.
PlayerControlled of Cadmea is false.
PlayerFucked of Cadmea is false.
OralVirgin of Cadmea is false.
Virgin of Cadmea is false.
AnalVirgin of Cadmea is false.
PenileVirgin of Cadmea is false.
SexuallyExperienced of Cadmea is true.
TwistedCapacity of Cadmea is true. [Twisted Characters can take any penetration, no matter the size]
Sterile of Cadmea is false. [steriles can't knock people up]
MainInfection of Cadmea is "Kitsune".
Description of Cadmea is "[CadmeaDesc]".
Conversation of Cadmea is { "Interesting" }.
The scent of Cadmea is "     The sleek kitsune smells of an amalgamation of floral scents, none of which you can place as being recognizable.".

to say CadmeaDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Cadmea] <- DEBUG[line break]";
	else:
		say "     Cadmea is a svelte white-furred kitsune with seven fluffy tails, suggesting significant power, should she choose to unleash it. The color of her eyes changes with her mood: red while angry, blue while fearful, and lilac most of the time. Wearing a short tunic-like garb that maintains her decency, it seems to be manifested by willpower as when she is distracted, it seems to disappear. Her C cup breasts are covered in fine, short white fur, similar to the fur on her groin, vulpine face, hands, and feet, while the rest of her body has slightly longer fur.";
		say "     The female kitsune is a cheerful and mischievous person with a good heart. While she happily carries out good-natured trickery, should the need arise, she will fiercely guard those she views as vulnerable using tooth, claw, and magic. That said, combat is not her forte, forcing her to rely on illusions, a skill that she is more adept at. She catches you observing her and levitates, spreading her tails out like a star behind her. Truly a magnificent being.";

Section 3 - Talking



Section 4 - Sex



Section 5 - Events

Table of GameEventIDs (continued)
Object	Name
Dual Leadership	"Dual Leadership"

Dual Leadership is a situation.
ResolveFunction of Dual Leadership is "[ResolveEvent Dual Leadership]".
Prereq1 of Dual Leadership is Den of the Pack.
Prereq1Resolution of Dual Leadership is { 1 }.
The level of Dual Leadership is 0.
Sarea of Dual Leadership is "Nowhere".

after going to Sanctuary Hotel Lobby while (Dual Leadership is active and Dual Leadership is not resolved and HP of Cadmea is 1 and a random chance of 1 in 2 succeeds):
	DualLeadershipEvent;

to say ResolveEvent Dual Leadership:
	DualLeadershipEvent;

to DualLeadershipEvent:
	say "     The door guards recognize you from last time and allow you through without any problems, even opening the door for you. You enter the hotel lobby, its cleanliness still surprising you, even with the few people loitering about. As you approach the front desk, a quiet voice addresses you. 'Excuse me, [if Player is male]sir[else]ma'am[end if], but could you do me a favor?' Expecting it to be someone asking for a quick release, you turn around ready to refuse them but are surprised when you come face to face with a dormouse holding a silver tray with an assortment of cakes and a steaming teapot. 'Would you be able to take this to the conference room for me please? The Den Mother asked for some refreshments, and I'm too scared to go. The wolves promised not to eat me, but their teeth are so huge, and I'm sure that I've seen them licking their lips.' Taking pity on the small creature, you take the tray from the grateful rodent, asking whether the door guards will let you through.";
	say "     'They should. You're carrying the tray, and the Pack Alpha is with the Mistress too, so even if you wanted to harm anyone I doubt that you would have much luck. No offense.' With a final thank you, he scurries off through a side door, presumably to the kitchen. You carefully walk up the stairs, focusing on not tripping and dropping the tray. Having successfully traversed the steps, you continue towards the door through which you last met Cadmea but are stopped outside by a brown-furred wolf. 'Let me guess. That's the Den Mother's tea and cakes and Timothy convinced you to take over from him. We keep telling him that we have no interest in eating him, but all he sees is our teeth and he flees. Oh well, I suppose it isn't really your problem, so let me open the door for you. I'll go and have yet another talk with him in an hour or so. He and his partner roll their eyes at each other as you pass by them into the room, instantly attracting the attention of the two leaders within.";
	WaitLineBreak;
	say "     'If it isn't our cakes, and without the dormouse who was meant to deliver them. Did you eat him or was it one of the guards? Timothy did fear that this might happen,' Sirius laughs, crouched on the floor massaging Cadmea's feet. 'I admit that I'm slightly surprised to see you delivering tea. I thought that you were more of the sort to be exploring the city and fighting the transformed, but being waitstaff is no less important, especially when I'm hungry.' You place the tray on the table and move to leave again, but the fox quickly calls to you, 'Come and join us for a cup of tea and some cake. Exploring the city must be hard work, and I'm sure that there are enough cups.' You look at the two cups beside the teapot and then back at the pair of them. 'Shall I be mother?' the kitsune asks, ignoring your confusion at the shortage of china. The wolf takes a seat beside the fox and requests, 'If you wouldn't mind putting some tea in a saucer for me, Cadmea dear, I find that the tea cups don't fit my hands very well, and my nose seems to get in the way.'";
	say "     Unsure whether he is saying this just so that you can join them, you are nonetheless grateful for the gesture and sit on Cadmea's other side, across from the wolf. The Den Mother pours the tea into the two cups and a saucer and passes one to you. Wanting to be polite, you take a sip, finding it hot and relaxing. You reflect on the normality of what is happening in this room compared to the outside, finding that even sharing the moment with a wolf and a fox doesn't feel that strange anymore. 'You don't seem as reverential of us as some of the people that have taken shelter here, and I'm not sure whether to be insulted or not,' Cadmea states as she selects a piece of cake for herself. 'You sit here drinking tea with two beings from a different plane without any idea what the extent of our power is. Obviously I'm not insulted, in fact it's nice not having to be treated like a goddess. I have no idea how my patron manages but that's beside the point, you have courage, and I find that admirable. You'll go far, don't you think, darling?'";
	WaitLineBreak;
	say "     Sirius readily agrees, daintily lapping tea from a saucer without splashing any on the table. 'They certainly have great potential, though the human soldiers are unlikely to appreciate it. I can understand them not wanting what has happened to this city to spread, but they could be a bit more concerned about the people living here and less about what they can try and gain out of it. None of the patrols have seen anyone looking like a leader anywhere near the cleared strip or the camp. If we haven't missed their arrival and Cynthia's intel is accurate, it would seem that the forces within the city are being led by a major. But I apologize[if Player is not defaultnamed], [name of Player][end if], strategy is not a topic for light conversation. Let us tell you more about what we do.' Having finished his tea in between talking about the military, the wolf leans back in his chair, wetting his lips in preparation for continuing the discussion.";
	say "     'I am the Pack Alpha, as I'm sure multiple people including myself have already told you. This means that I organize the packs that explore and patrol the city as well as the guards around the hotel. I am capable of defending myself and Cadmea to a satisfying level. I may not be infested by rogue technology, but I seem to heal at a similar pace, knowledge I acquired from engaging a wyvern in a fist fight. Effectively, I am the authority within the pack on affairs outside of the Den, which is where Cadmea, the Den Mother, technically outranks me. Basic everyday activities such as allocating rations, rooms, and settling disputes are overseen by her or the staff that she chooses to represent her. She also grants protective enchantments to the patrols and makes sure the Den is protected using illusions and, if necessary, more direct magic. She is the authority inside in the same way that I am of the outside, but most of the time, we seek each other's advice before making a serious decision.'";
	WaitLineBreak;
	say "     You are finding the explanation of the Pack's dynamics quite informative, and Sirius has explained it simply to make sure you can grasp it. He is about to continue the lesson, but the door is opened sharply, and a snow leopard sticks their head through, breathing heavily as pained moans drift in behind him. 'I'm sorry to disturb you, but Titus tried to go into the college, and he upset one of the groundskeepers. Genevieve isn't here at the moment, so if you have the time to tend to his wounds, Den Mother, I'm sure that he would be grateful. He has several broken ribs, and the nanites aren't dulling the pain. Either that or he's being a nancy,' the feline says breathlessly. You hear Sirius mutter, 'Upset the groundskeeper is probably an understatement,' as he and Cadmea stand up and briskly walk towards the door.";
	say "     As Cadmea rushes through the door, the wolf stops to call back to you, 'I'm very sorry, but I should probably find out more about what happened. The college residents aren't the sort to do something like this for no reason, so I need to talk to the rest of the patrol. It was nice talking to you, but this rather spoils the mood, doesn't it? Come back again another time, and I might be able to tell you more about the pack and myself. The rest of the cake is mine, so don't touch it just because I'm not here to stop you.' With that, he leaves you alone in the room with the slices of cake. Feeling like it is time to leave as well, you eye the plate, considering what the consequences of disobeying the Alpha's order.";
	say "     [bold type]Do you take a piece of cake with you as you leave?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes. It was just a joke, wasn't it?";
	say "     ([link]N[as]n[end link]) - No. You wouldn't want to upset the Alpha if he was being serious, would you?";
	if Player consents: [Take cake]
		say "     Quickly glancing around to make sure that no one is watching, you grab a disposable coffee cup from a desk and stuff a slice of cake into it before putting it into your bag. Ready to go, you walk out of the conference room, closing the door behind you, and return to the lobby. You'll just have to wait and see whether there are any consequences for stealing Sirius['] cake.";
		now Resolution of Dual Leadership is 1; [Stole cake. You Monster]
	else: [Be good]
		say "     You don't want to make a bad impression on them when they barely know you. With Cadmea capable of magic, and Sirius able to walk away from hand to hand combat with a wyvern, making them your enemy seems like a poor life choice. You return to the lobby without succumbing to temptation.";
		now Resolution of Dual Leadership is 2; [Left Cake]
	now HP of Cadmea is 2;
	now HP of Sirius is 1;
	[change the up exit of Sanctuary Hotel Lobby to Sanctuary Conference Room; [connecting the location to the travel room]
	change the down exit of Sanctuary Conference Room to Sanctuary Hotel Lobby; [connecting the location to the travel room]]
	now Dual Leadership is resolved;

Cadmea ends here.
