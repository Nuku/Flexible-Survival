Version 1 of Atlantis by Rikaeus begins here.
[Version 1 - New Area, New NPC, New Events]

[ PoseidonRelationship                                     ]
[   0: Hasn't acquired trident                             ]
[   1: Has acquired the trident                            ]
[   2: Has entered Atlantis                                ]
[   3: Has accepted the courtship                          ]
[   4: Has gone on first date                              ]
[   5: Has had sex with Poseidon/has been proposed to      ]
[   6: Has had wedding                                     ]
[  99: Has refused the courtship                           ]

[ FirstAtlantisVisit                                       ]
[   0: Hasn't visited Atlantis                             ]
[   1: Has visited Atlantis                                ]

[ TritonRelationship                                       ]
[   0: Hasn't met him                                      ]
[   1: Has met him                                         ]

[ AlanaRelationship                                        ]
[   0: Hasn't met her                                      ]
[   1: Has met her                                         ]

[ CenterVists                                              ]
[   0: Hasn't visited yet                                  ]
[   1: First Visit                                         ]

[ ResidentialVisits                                        ]
[   0: Hasn't visited yet                                  ]
[   1: First Visit                                         ]

[ MarketVisits                                             ]
[   0: Hasn't visited yet                                  ]
[   1: First Visit                                         ]

[ KurtRelationship                                         ]
[   0: Hasn't seen yet                                     ]
[   1: Has heard him perform                               ]

PoseidonRelationship is a number that varies.
FirstAtlantisVisit is a number that varies.
TritonRelationship is a number that varies.
AlanaRelationship is a number that varies.
CenterVisits is a number that varies.
MarketVisits is a number that varies.
ResidentialVisits is a number that varies.
LastAtlantisCenterWalkin is a number that varies. LastAtlantisCenterWalkin is usually 10000.
LastResidentialWalkin is a number that varies. LastResidentialWalkin is usually 10000.
LastMarketWalkin is a number that varies. LastMarketWalkin is usually 10000.

Section 1 - Poseidon's Trident?

Table of GameEventIDs (continued)
Object	Name
Lost Trident	"Lost Trident"

Lost Trident is a situation. The level of Lost Trident is 9.

The sarea of Lost Trident is "Beach".
When play begins:
	Add Lost Trident to badspots of furry;
	Add Lost Trident to badspots of guy;

Instead of resolving a Lost Trident:
	say "     Walking along the beach you watch as the crashing waves of the sea bounce across the shore as the [if daytimer is day]sun rides along the sky[else]moon dances along the night skyline[end if] while listening to the soft intelligible sounds of marine life reverberate all around you. As the minutes pass by, the soothing sounds of the water lapping along the sands makes a sense of nostalgia surge up throughout you, mind lulling you almost to sleep. However, before you can become too lost in the all-encompassing feelings of sleep about to overtake you, you find your gaze drifting over to what looks like a bronze colored trident free-floating like an abandoned surfboard along the waterline.";
	say "     Curious as to where this strange thing came from, you shrug your backpack off and then walk into the sea to grab the weapon before it can drift further out into the [if daytimer is day]blue[else]black[end if] wonder of the ocean. Testing its weight you find that the trident is fairly light and has a well-worn grip around its smooth handle that fits your hand almost perfectly. Not sure, but not questioning the proverbial gift horse you begin to turn about your way to head back to the shore, but before you can get too far you hear the roar of a sea dragon behind you. Whipping your head around you find several sea dragons glaring at you as they raise themselves up out of the waters, the menacing looks on their faces makes you swallow thickly in turn.";
	WaitLineBreak;
	say "     The instinctual need to run has your legs tensing and before you know it you're trying to swim/run back to the shore, but before you can get too far you find the trident in your hands tugging you backwards to the way the sea dragons are. Blinking you look down at the weapon, then up to the oncoming dragons and then back to the beach.";
	say "     [bold type]Maybe you should just toss the thing and continue that run you were trying to go for?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Toss it.";
	say "     ([link]N[as]n[end link]) - Keep it.";
	if Player consents:
		LineBreak;
		say "     Chucking the trident as far as you can you don't stop to watch what happens next with the sea dragons as you continue to swim/run to the shore. Grabbing your backpack and then beating feet as quick as you can you don't turn back even once to see what happens with the feral sea guardians. Had you, you would have seen a half naked male figure rising up out of the sea to take the trident into one of his meaty bronze hands.";
		now Resolution of Lost Trident is 2; [threw it away]
	else:
		LineBreak;
		say "     Clutching the trident a little tighter into your grip you feel the strongest sense of possessiveness overcome you all of sudden making you unwilling to relinquish your newfound weapon. It would seem that the sea dragons can sense this and are about to make you regret your choice, however.";
		Challenge "Feral Sea Dragon";
		if fightoutcome >= 10 and fightoutcome <= 19:
			Challenge "Feral Sea Dragon";
			if fightoutcome >= 10 and fightoutcome <= 19:
				Challenge "Feral Sea Dragon";
				if fightoutcome >= 10 and fightoutcome <= 19:
					Challenge "Feral Sea Dragon";
					if fightoutcome >= 10 and fightoutcome <= 19:
						say "     Having beaten back the pack of feral dragons you experience a sense of well deserve pride overcome you as you watch the group of feral reptiles scampering away back into the sea. Despite you turning your attention to your prize you catch something out of the corner of your eyes. It is a half naked man with shoulder length black hair and stormy blue eyes. He appears to be looking at you inquisitively before he dives back down into the water. To your shock, a mermaid, or merman?, tail flops out of the water for a split second. From the direction of the ripples he swam towards the arc of rocks in the distance, though you believe he probably went further than that.";
						now carried of bronze trident is 1;
						increase score by 10;
						now PoseidonRelationship is 1;
						change west exit of Sunken Ship to Atlantis City Entrance;
						change east exit of Atlantis City Entrance to Sunken Ship;
						now Lost Trident is resolved;
		if fightoutcome >= 20:
			say "     Having lost to one of the feral sea dragons you find yourself being stripped of your newfound weapon and then casually dumped onto the beach by the creature you had just been defeated by. Grunting in utter humiliation you rest on the muddy sands for a minute while lamenting your own weakness. Looks like you know truly understand the meaning about the [italic type]one that got away[roman type] as you listen to the chatter of the feral sea dragons as the reptiles dive back into the sea with your commandeered treasure. Better luck next time.";
			now Resolution of Lost Trident is 3; [lost]

Section 1a - Trident (Weapon)

Table of Game Objects (continued)
name	desc	weight	object
"bronze trident"	"A large, bronze three-pronged spear that is as lightweight as it is deadly."	5	bronze trident

bronze trident is an armament. It is part of the player. It has a weapon "[one of]your three-pronged spear[or]your deadly trident[or]your bronze spear[or]your majestic weapon of doom[at random]". The weapon damage of bronze trident is 10. The weapon type of bronze trident is "Melee". It is not temporary. the objsize of trident is 4.

instead of sniffing bronze trident:
	say "The trident smells like the sea, the moon, the stars and... a strong merman? Weird.";

Section 2 - Areas of Atlantis

Atlantis City Center is west of Atlantis City Entrance.
Atlantis City Center is east of Atlantis City Market.
Atlantis City Center is south of Royal Palace Entrance.
Atlantis City Center is north of Atlantis City Residential.

Table of GameRoomIDs (continued)
Object	Name
Atlantis City Center	"Atlantis City Center"

Atlantis City Center is a room.
The description of Atlantis City Center is "[AtlantisCenter]".
earea of Atlantis City Center is "Atlantis".

to say AtlantisCenter:
	say "     The beautiful city center is teeming with people of all kinds. You see a shark man talking with what looks to be a greenish-toned catfish like man. Also, you are surrounded by a lot of human-looking males and females. Although if you didn't know this already you'd think they were actual humans rather than the mermen and mermaids they are. What really hits you is the fact that the city appears to be so peaceful in such a hectic world, as if the apocalypse changed nothing for them. It really lives up to the legends of being a utopia. Looking around you notice to your north is the Royal Palace of the city, with stairs leading right up to it. To the south is the residential area of Atlantis, where the various citizens live. To your west is the marketplace where everyone trades goods and services. Lastly, to your east is where you came into the city.";

Atlantis City Market is west of Atlantis City Center.

Table of GameRoomIDs (continued)
Object	Name
Atlantis City Market	"Atlantis City Market"

Atlantis City Market is a room.
The description of Atlantis City Market is "[AtlantisMarket]".
earea of Atlantis City Market is "Atlantis".

to say AtlantisMarket:
	say "     Upon entering the market you are met with sounds of people talking and bartering. At a stall selling weapons you hear a Pirate Shark trying to reduce the price of the sword they're attempting to buy but to no avail. Over towards another one you see what you assume to be a mermaid couple wondering whether or not they should have fish for dinner. You're sure that at some point you can find something to buy here as well. To the east is the city center that you arrived from.";

Atlantis City Residential is south of Atlantis City Center.

Table of GameRoomIDs (continued)
Object	Name
Atlantis City Residential	"Atlantis City Residential"

Atlantis City Residential is a room.
The description of Atlantis City Residential is "[AtlantisResidential]".
earea of Atlantis City Residential is "Atlantis".

to say AtlantisResidential:
	say "     The living area of the city looks nice, just like the rest of the city. The houses are made out of various colors of coral and have a modern yet rustic look to them. Just like the other places in Atlantis there are people wandering around and some even just lounging out in front of their houses or apartment complexes. You're sure that you could meet some people who live here at a point in the future. To the north is the center of the city.";

Table of GameRoomIDs (continued)
Object	Name
Kurt's Abode	"Kurt's Abode"

Kurt's Abode is a room.
The description of Kurt's Abode is "[KurtsAbode]".

to say KurtsAbode:
	say "     The living room of the shark-musician is rather quaint, though from what you know of the man it's to be expected. The area is decorated with simple paintings of the city as well as various types of guitars, which you're sure he can play. To your right is a doorway that leads to his kitchen which from where you're standing you can see it is rather spick and span. Wandering around a bit more you muse that your friend is a very clean person but you guess that's not exactly a bad thing in any situation really. Though you do have a thought to tell the shark-morph that he needs more furniture or something to spruce up the place.";

Royal Palace Entrance is north of Atlantis City Center.
Royal Palace Entrance is south of Royal Throne Room.

Table of GameRoomIDs (continued)
Object	Name
Royal Palace Entrance	"Royal Palace Entrance"

Royal Palace Entrance is a room.
The description of Royal Palace Entrance is "[RoyalPalace]".
earea of Royal Palace Entrance is "Atlantis".

to say RoyalPalace:
	say "     The entrance to the royal palace of Atlantis is, in your opinion, the most beautiful thing in the world. It appears to be made of dark blue stone and sapphire gems. The gates to the north are guarded by a couple of mermaid and merman guards, though they appear to be unconcerned about you, as if they were allowing you to go ahead. To the south of the palace is the center of the city.";

Royal Throne Room is north of Royal Palace Entrance.

Table of GameRoomIDs (continued)
Object	Name
Royal Throne Room	"Royal Throne Room"

Royal Throne Room is a room.
The description of Royal Throne Room is "[ThroneRoom]".
earea of Royal Throne Room is "Atlantis".

to say ThroneRoom:
	say "     The throne room of the entire palace is as opulent as the rest of the place, although at the back is a simple sapphire throne, as odd as that sounds. [if Poseidon is in Royal Throne Room]The friendly yet powerful god is sitting on said throne, overlooking the entire area. [end if]Behind it is a large golden trident that is hung on the wall Across the walls are various murals of ocean scenery. To your back is the hallway that leads to the outside, and just like the entrance is guarded by a couple guards.[if Poseidon is not in Royal Throne Room and PoseidonRelationship is 2] It appears that Poseidon is not here, perhaps he is in his room?[end if]";

Table of GameRoomIDs (continued)
Object	Name
Royal Bed Chambers	"Royal Bed Chambers"

Royal Bed Chambers is a room.
Royal Bed Chambers is north of Royal Throne Room.
The description of Royal Bed Chambers is "[PoseidonBedroom]".
earea of Royal Bed Chambers is "Atlantis".

to say PoseidonBedroom:
	say "     The room around you seems a bit vague and indistinct, as if the forces that are shaping reality are still undecided what it shall look like.";

Table of GameRoomIDs (continued)
Object	Name
Atlantis City Park	"Atlantis City Park"

Atlantis City Park is a room.
Atlantis City Residential is east of Atlantis City Park.
The description of Atlantis City Park is "[AtlantisPark]".
earea of Atlantis City Park is "Atlantis".

to say AtlantisPark:
	say "     Looking through the arched entrances of this park you're rather surprised to see grass in a park at an underwater city. Though to be completely fair what else would there be in such a place. You guess it's just rather surreal to see it in its current location of all things. Nevertheless, the public garden is rather gorgeous in comparison to the water just sitting within the edges of your vision. There's diverse swathes of flowers and trees as well as large open patches of grass for people to probably lay and possibly have picnics. However, noticeably a big portion of the flowers in the back appear to be the same kind, a bunch of purple pom-pom flowers with snaking leaves. They all surround a statue of a beautiful woman wearing what looks to be priestess robes. Beyond all that, it appears to be a pretty average looking park complete with the arch to your east that leads back into the residential areas.";

Section 3 - Events

instead of going west from Sunken Ship while FirstAtlantisVisit is 0 and PoseidonRelationship is 1:
	move player to Atlantis City Entrance;
	say "     Upon swimming to the west you come upon a gigantic gorgeous city encased in a magical looking bubble on the ocean floor. You see hundreds of what look to be mermaids and mermen swimming around outside the bubble, having fun and playing around. Out of the corner of the eye you see some of them dive towards what looks to be an enormous golden gate. The gate opens up when they reach it and to your utter surprise, the mermen and mermaids['] tails vanish and are replaced with legs. Upon closer examination you also notice they don't stay naked for long, putting on clothing that is handed to them by the guards. Intrigued by the whole thing, as you swore you saw that merman head in this direction, you swim down towards the gates.";
	say "     When you reach them, you are stopped by large spears that block your way and are held by an armored mermaid and merman who are standing inside the city. 'Halt stranger! You can't come in here without being vetted!' the female orders. Before you could say anything a deep voice interrupts them. 'That's enough Alana, Triton. Let them through,' the male-like voice says. You direct your attention to where the sound came from and are shocked to find a familiar looking face staring at you. It's the merman you saw staring at you when you got the trident! 'Yes King Poseidon!' 'Yes Father!' the mermaid and merman say respectively, causing you to raise a brow at the male. Poseidon nods and heads off, not before throwing you an interested look. Perhaps you should see him later.";
	WaitLineBreak;
	say "     Upon stepping into the city the gates close and you are beset upon by Triton. He gives you a friendly smile before speaking up. 'Welcome to the utopian City of Atlantis, that was my father Poseidon, God of the Sea,' he says, flourishing his hand in the direction of the beautiful city. You look around in awe before redirecting your attention to the man in front of you. You are able to take a closer look at him and see that he has long bright orange hair that goes down to just below his shoulder blades. You're also able to see that his weapon is not a spear but a trident, one that looks oddly familiar to you. The female on the other hand has vibrant red hair and dark brown eyes that look a bit serious to you. Her weapon however is still a spear. 'I'm not exactly sure why father has an interest in you but I do hope you enjoy your stay,' he says to you. You blurt out that you had been following him ever since you had acquired a trident from fighting feral sea dragons.";
	say "     That causes Triton to sputter out and stare at you in shock. 'T-that's why he's intrigued by you?' he stutters out, clearly surprised by this information. You swear that you hear Alana chuckling behind you as the prince blushes. You ask him why but it appears that what you said has temporarily put him out of commission. Instead it is the mermaid that answers your question. 'It's... probably better if you go see King Poseidon himself. Easier for him to explain,' she says, sighing. By the time the woman finishes, Triton has recovered and manages to say one last thing before you're on your way. 'If... you ever need me to explain things, I'll be glad to,' he manages to get out before waving you off.";
	now PoseidonRelationship is 2;
	now TritonRelationship is 1;
	now AlanaRelationship is 1;
	now FirstAtlantisVisit is 1;

instead of going to Royal Palace Entrance while PoseidonRelationship is 2:
	say "     Upon approaching the royal residence of the leader of this city, you are beset upon by two guards. 'Halt! You must be the person that King Poseidon is looking for,' one says, his stance firm, showing that he's going to hold his ground. You tilt your head curiously at them wondering what they're talking about. However, before you can voice your questions, the two step apart and gesture for you to continue on in. Shrugging your shoulders, you continue on into the palace. You soon come to a gorgeous throne room with a sapphire throne whose design could simply pass as a dining chair if the back and armrests weren't so high. Sitting on that seat is a familiar face, the merman you followed to this city, and the king of the place, Poseidon. Upon seeing you the man appears to be rather happy.";
	say "     'It's you! Perfect,' he says, standing up from his chair. You promptly ask the man why he is so intrigued by you, which causes a laugh to come from him. 'Well, simply put, it's because you passed my test,' he says, shrugging his shoulders as if it explained everything. You don't recall taking any kind of exam so you vocally request for him to explain. 'The fake trident, getting it was a trial to see if someone was eligible to be my spouse,' he tells you, making your mouth fall open in shock. Before you can regain your composure the kingly man asks you a question. 'Would you allow me to court you?' he asks. Figuring that you better answer now, you do.";
	say "     [bold type]Do you want to accept the courtship?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Sure, why not, it sounds fun.";
	say "     ([link]N[as]n[end link]) - No, I'm not a marrying-type of person.";
	if Player consents:
		say "     Shrugging your shoulders you agree, causing the merman's face to light up. 'Great! It's official then!' he says with a smile. You ask him what this relationship will consist of, something that Poseidon promptly gives a response to. 'Simple, we go on dates. If it turns out well, then perhaps marriage,' the buff male tells you. Well... you guess that was kind of obvious, causing you to wonder out loud when the first date will be. 'Oh, that, don't worry. I'll plan the date and let you know when it's time,' he says, waving your concerns off. With a shrug you figure you should go on your way, heading back out of the palace, to the entrance.";
		move player to Royal Palace Entrance;
		now PoseidonRelationship is 3;
	else:
		say "     The merman gives you a frown but it quickly vanishes. 'I won't accept no for an answer, however I also will not push you. Instead I will ask that you let me know if you change your mind,' he says with a sigh. You nod your head at him and turn to leave, making your way to the Palace Entrance.";
		move player to Royal Palace Entrance;
		now PoseidonRelationship is 99;

instead of going to Atlantis City Center while CenterVisits is 0:
	say "     Upon entering the center of the utopian-esque city for the first time, you notice the bustling crowd of the city. It is not this sight that catches your attention, but the group of citizens talking in the corner of the area. When you examine them closer, you notice that they are a bunch of mermaid women. Out of curiosity, you inch nearer to them and listen in on the conversation that the three of them are having. 'Jasmine, Tyra, do you think that little Jerry could play with Jemma and Zach?' the mermaid asks the other two. You assume that the one to the left is Jasmine and the one to the right is Tyra, as the first woman looked at each of them when she mentioned their names.";
	say "     Jasmine and Tyra both smile happily at the woman and chuckle in unison. 'I don't think little Jemma would mind a new friend at all, Paula,' she says, mirth in her voice. The other lady nods at that as well. 'Same here. Zach has been whining about not having any new to play with,' Tyra says, an amused smile to her face. When the two of them let their thoughts known, Paula sighs in relief. 'Thank god. I got a new job at the market, and I needed some way to keep Jerry occupied while I work,' the mermaid explains. The other two nod and comfort her, promising that they'll help take care of her son when needed. From there, the topic of conversation changes and you decide that it's time for you to stop eavesdropping.";
	move player to Atlantis City Center;
	now CenterVisits is 1;

instead of going to Atlantis City Center while CenterVisits is 1 and (LastAtlantisCenterWalkin - turns < 4): [Has been there in the past 12 hours]
	say "     When you enter the city center you notice three kids running past you, laughing and joking with each other. Upon closer examination, you see that they are playing a game of tag, and the boy in the front appears to be trying to avoid the other two. 'Come on Jerry! Just let us tag you!' shouts one of the kids, who you recognize to be a young girl. The little guy identified as Jerry shakes his head as he dodges his way through the populated area. 'No, I won't let you make me it, Jemma!' he yells, ducking under and past the arms of a random person. This causes the other kid to groan as he has to slide under the legs of same person. 'You're lucky that acrobatics like this are in our blood,' he mutters, glaring half-heartedly at his friend. 'You know you love me Zach and you say this every time we play tag,' you hear the kid say before he dashes off to the market district, leaving you alone in the city center.";
	move player to Atlantis City Center;
	now LastAtlantisCenterWalkin is turns;

instead of going to Atlantis City Market while MarketVisits is 0:
	say "     The first thing you notice when you enter the Market is a tall male shark-morph wearing a simple t-shirt and swim trunks. What catches your attention more than his attire was the acoustic guitar on his back, something that you're not entirely sure how it survives the water. The large guy was currently talking to what you believe to be a female octopus-morph standing at a stall. By her clothing and the fact that her shop is positioned in the middle of the entire market you assume that she is pretty important. Out of curiosity, you edge closer to listen to their conversation. 'So, Josie, do you think I could perform here?' the tall shark asks her, a pleading look on his face.";
	say "     The woman hums for a bit until she lets out a sigh, speaking her mind soon after. 'Very well Kurt, you've helped the Atlantean Merchant Guild enough that I don't see any problem letting you set up shop here,' Josie says to him, a hand on her chin in thought. As soon as she utters those words, the octopus woman is scooped into a large hug by the grinning shark man who is thanking her profusely. The lady just simply rolls her eyes and pats him on the head, all the while trying to get out of the hug with her tentacles. Thankfully, she's put down a minute later. 'I won't let you down! I'm sure my music will make everyone happy!' Kurt says with a bright, toothy smile. Josie just nods and tells him that she expects him to do his best. From there the two part so you decide that you should probably continue on. Perhaps you can later see the shark perform?";
	move player to Atlantis City Market;
	now MarketVisits is 1;

instead of going to Atlantis City Market while MarketVisits is 1 and (LastMarketWalkin - turns < 4): [Has been there in the past 12 hours]
	say "     When walking past the entrance to the market you hear the wondrous sounds of an acoustic guitar. It's so good that you instantly are drawn to the location of where it originates from, taking you into the shopping area and to a large crowd of people. At the center of the crowd is a familiar shark man, Kurt, who is playing his instrument for everyone to hear, singing a soothing tone that accompanies the sound. And boy does he play, the music permeating your body and soothing your emotions. Soon enough you find yourself just standing and listening to the amazing tunes coming from the male playing the guitar. Your worries go away and you can feel your sanity coming back bit by bit, thanks to the peaceful guitar sounds that you are hearing. A few hours later sadly, the song ends and everyone applauds Kurt, who promptly blushes and thanks everyone before the crowd parts, leaving you in the market trying to remember what you were doing before. As a stray thought you wonder if you can run into him playing again.";
	if KurtRelationship is 0:
		now KurtRelationship is 1;
	move player to Atlantis City Market;
	now LastMarketWalkin is turns;
	SanBoost 30;


instead of going to Atlantis City Residential while ResidentialVisits is 0:
	say "     Upon your entrance to the residential area you don't really notice much with your sight but with your smell you do. Following the scent that attacks your senses you soon come upon a large entrance leading to someone's backyard in the neighborhood. At the top of the arc is a sign that reads 'Residential Cookout - All Welcome!' Out of curiosity, you wander on in and are set upon by what looks to be a female... humanoid cat-fish morph? Upon closer examination she doesn't appear to have any gills but does have a mix of traits from both feline and fish. Redirecting your attention to her face the woman is smiling at you widely, looking pretty inviting.";
	say "     'Hey there! You must be new to the city! I'm Namazu, but most people call me Nama!' she says, holding out a hand for you to shake. You accept it, the cheerful nature of the woman contagious. You ask her what this event is and if all are really welcome. Nama returns your question with a nod before speaking up. 'This isn't so much an event, as something that's always on. It's a way to give back to the community and feed those who can't eat due to responsibilities they have or because of... well you know. And of course, everyone is welcome!' the cat-fish woman says happily, though her expression changes a bit as she turns towards the direction of the tables which are empty at the moment.";
	WaitLineBreak;
	say "     'Though if you want to get something now, you'll have to wait. We just fed a large group and it exhausted the food we put out. So we're all making new food,' Nama tells you with a sigh. Out of curiosity and a tiny bit of nosiness you ask her who they fed, which causes her to chuckle. 'Oh, the Royal Guard. Apparently they were having a day of long training, so they needed all the food they could get,' is her response, something that makes you simply nod at the answer. With a shrug at having nothing else to do here for now you thank her for letting you know about the place before leaving to the main area of the residential area. She tells you to come back soon and leaves as well, possibly to help cook.";
	now ResidentialVisits is 1;
	move player to Atlantis City Residential;

instead of going to Atlantis City Residential while ResidentialVisits is 1 and (LastResidentialWalkin - turns < 4): [Has been there in the past 12 hours]
	say "     When you enter the living area of Atlantis you smell a very familiar scent that you follow to a destination that you've been to. Just as you thought, it brings you to the residential cookout but upon looking into it this time you notice that there are actually people in there and food on the table. Servng at the food tables is Namazu who notices you and waves you on to come in before she goes back to feeding others. Shrugging your shoulders, you walk on in and grab a plate at what you presume to be the beginning of the buffet line. Proceeding through the line you get what food you want, accompanied by a cup of something to drink. Once you have your food you sit at one of the many tables set out and talk and eat with the people. As the time passes by you finish your food and drink, as well as the random conversation with the people at your table. Getting up you go and throw away your trash, heading your way out of the cookout. A last though before you enter the residential area is that perhaps later you could visit once more.";
	move player to Atlantis City Residential;
	now LastResidentialWalkin is turns;
	PlayerEat 20;
	PlayerDrink 20;

Section 4 - NPCs

Table of GameCharacterIDs (continued)
object	name
Triton	"Triton"

Triton is a man. Triton is in Atlantis City Entrance.
[Physical details as of game start]
ScaleValue of Triton is 3. [human sized]
SleepRhythm of Triton is 0. [0 - awake at all times, 1 - day active, 2 - night active]
Cock Count of Triton is 1. [X cock]
Cock Length of Triton is 8. [X Inches]
Ball Size of Triton is 4.
Ball Count of Triton is 2. [X balls]
Cunt Count of Triton is 0. [X pussy]
Cunt Depth of Triton is 0. [X Cunt]
Cunt Tightness of Triton is 0. [X Cunt]
Nipple Count of Triton is 2. [X nipples]
Breast Size of Triton is 0. [X at the start]
[Basic Interaction states as of game start]
TwistedCapacity of Triton is false. [can not take oversized members without pain]
Sterile of Triton is true.
PlayerMet of Triton is false.
PlayerRomanced of Triton is false.
PlayerFriended of Triton is false.
PlayerControlled of Triton is false.
PlayerFucked of Triton is false.
OralVirgin of Triton is true.
Virgin of Triton is true.
AnalVirgin of Triton is true.
PenileVirgin of Triton is true.
SexuallyExperienced of Triton is false.
MainInfection of Triton is "".
The description of Triton is "[TritonDesc]".
The conversation of Triton is { "<This is nothing but a placeholder!>" }.
The scent of Triton is "He smells of the ocean and a bit of musk. Though he has an underlying smell of spice.".

to say TritonDesc:
	say "     Triton is a well built male wearing tight pants covered in a shell like layer as well as a half-shirt armor piece made out of what looks to be coral. From the muscles you can tell that he probably works out every day though to be honest swimming as much as the mermen and mermids do is probably enough exercise for one person. He has below shoulder-length hair that is a bright orange that stands out in a crowd. When he sees you looking at him, he smiles at you.";

instead of conversing the Triton:
	say "     The merman prince smiles at you before waiting for you to say something.";
	wait for any key;
	say "[TritonTalkMenu]";

to say TritonTalkMenu:
	LineBreak;
	say "What do you wish to talk about with Triton?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Atlantis";
	now sortorder entry is 1;
	now description entry is "Ask him about the city";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Mermaids and Mermen";
	now sortorder entry is 2;
	now description entry is "Ask him about his kind";
	[
	if PoseidonRelationship is 3:
		choose a blank row in table of fucking options;
		now title entry is "His Father and You";
		now sortorder entry is 3;
		now description entry is "Ask how he feels about the courtship";
	]
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
				if (nam is "Atlantis"):
					say "[TritonTalk1]";
				if (nam is "Mermaids and Mermen"):
					say "[TritonTalk2]";
				if (nam is "His Father and You"):
					say "[TritonTalk3]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You shake your head, which simply causes the merman to shrug and return to duty.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say TritonTalk1:
	say "     'Atlantis?' he asks, tilting a curious head at you. You nod your head, curious as to the history of the city, off-handedly mentioning the legends. The buff male hums before speaking up, answering your question. 'Well, those legends were true to a degree. Atlantis was a utopian city and still is, but it did not sink. No, rather my father decided to move the city after the Greek Era ended, as he was sure that the many kingdoms would want to attack, despite his strength,' Triton tells you, leaning against the wall by the gate. You nod once more, understanding what he's talking about. Seeing this, the man continues. 'Every century or so he relocated the city to prevent humans from finding us as they were a rather persistent species,' the prince adds on. That confuses you a bit, so you mention the current times, where there are people who used to be human visiting.";
	say "     'Ah, that. Well, my father figured that with the human world going down whirlpool, so to speak, that it'd be best to open Atlantis again for an... asylum,' he says. You nod, though you wonder out loud as to why he would care about the mortals. 'Well... he's always had a soft spot for you guys,' is his response to you. Shrugging, you figure that it's best for you to end the conversation, as you don't have anything else to talk about. You turn away from him as the male goes back to guarding the gates to the city.";

to say TritonTalk2:
	say "     'Ohohoh, you want to know more about the amazing race of mermaids and mermen?' he asks, flexing his muscles. To the right of him you can hear his female guard partner groaning. 'You do that every time someone asks Triton!' she complains, the sound of her voice making you think she's rolling her eyes. The merman prince ignores her and continues to speak to you. 'Well, simply put, you could say the mermaids and mermen are a creation of my father, if you consider him trying to fix a curse of one of his many siblings. Although, I'm a creation of my father and my mother, may she rest in peace,' he tells you, though the last bit is probably just to let you know his mother has passed.";
	say "     'Nevertheless, we're both aquatic and land based as a species, mostly for the sake of convenience since my father doesn't like to look like a merman twenty-four seven,' he says, shrugging his shoulders. You nod at that, as if you could change between certain forms you would rather not have a tail instead of legs all day everyday. He then follows up by explaining that because they change on the spot that they have to have a change of clothes so they're not running around nude. 'Despite how cool that'd be, it's frowned upon in public,' he says with a sigh. Suddenly a hand comes and hits him on the head. 'You're such a pervert Triton,' Alana says, rolling her eyes. That just causes the male to wiggle his brows at her. 'You know you like it,' he says suggestively. Once again the mermaid hits him. 'Ow! Abuse! I call abuse!' he shouts loudly at her. Seeing that this won't go away anytime soon, you head on your way.";

to say TritonTalk3:
	say "     ...";

instead of fucking Triton:
	say "     The buff male raises a brow at you, not offended by your offer but rather intrigued. 'As much as I would love to, Alana here would murder me if I scampered off to have fun with you,' he says.";

Table of GameCharacterIDs (continued)
object	name
Alana	"Alana"

Alana is a woman. Alana is in Atlantis City Entrance.
[Physical details as of game start]
ScaleValue of Alana is 3. [human sized]
SleepRhythm of Alana is 0. [0 - awake at all times, 1 - day active, 2 - night active]
Cock Count of Alana is 0. [X cock]
Cock Length of Alana is 0. [X Inches]
Ball Size of Alana is 0.
Ball Count of Alana is 0. [X balls]
Cunt Count of Alana is 1. [X pussy]
Cunt Depth of Alana is 8. [X Cunt]
Cunt Tightness of Alana is 4. [X Cunt]
Nipple Count of Alana is 2. [X nipples]
Breast Size of Alana is 2. [X at the start]
[Basic Interaction states as of game start]
TwistedCapacity of Alana is false. [can not take oversized members without pain]
Sterile of Alana is true.
PlayerMet of Alana is false.
PlayerRomanced of Alana is false.
PlayerFriended of Alana is false.
PlayerControlled of Alana is false.
PlayerFucked of Alana is false.
OralVirgin of Alana is true.
Virgin of Alana is true.
AnalVirgin of Alana is true.
PenileVirgin of Alana is true.
SexuallyExperienced of Alana is false.
MainInfection of Alana is "".
The description of Alana is "[AlanaDesc]".
The conversation of Alana is { "<This is nothing but a placeholder!>" }.
The scent of Alana is "     Alana smells like sweat and lavender oddly enough.".

to say AlanaDesc:
	say "     The mermaid guard is rather built for the average woman. She has a well defined six pack that shows from the small bit of stomach that you can see from her chest piece and on top of that her arms are well muscled, proving that she probably exercises every day, which you guess is expected of someone guarding the gates to the city. Her dark red hair falls down to the small of her back, something that you'd suggest to her would be detrimental to fighting if you weren't sure it'd get you a punch in the face. Of course, she doesn't look to be a violent person to begin with, but it'd be best not to say to a warrior that their hair is a problem. When she sees you staring at her the woman looks at you intently, though an underlying interest lie in her dark brown eyes.";

instead of conversing the Alana:
	say "     The mermaid guard raises a brow at you in interest as you approach her.";
	wait for any key;
	say "[AlanaTalkMenu]";

to say AlanaTalkMenu:
	LineBreak;
	say "What do you wish to talk about with Alana?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Triton";
	now sortorder entry is 1;
	now description entry is "Ask her about her partner, the prince";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Her Job";
	now sortorder entry is 2;
	now description entry is "Ask her about what she does at the gate";
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
				if (nam is "Triton"):
					say "[AlanaTalk1]";
				if (nam is "Her Job"):
					say "[AlanaTalk2]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You shake your head, which simply causes the mermaid to return back to work.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say AlanaTalk1:
	say "     'The spoiled brat?' she asks, a 'Hey!' coming from the male to your guys['] right. She ignores it and continues speaking. 'I guess he's okay? I mean he does his work but he is a pervert,' Alana says, muttering the last part. Upon looking over to the prince you assume that this is a regular argument as he's just sticking his tongue out childishly at her, something that she doesn't respond to. 'Although I guess I wouldn't say he's truly spoiled. King Poseidon did make him work for everything,' she says. Once again you direct your attention to the buff male and see him nodding along. 'Yeah the old man had me prove myself to him that I wouldn't rely on his power or wealth. Was a pain in the ass to do,' he says, agreeing with her. From that you feel like that's all that is going to be told to you for now, so you leave her to her work.";

to say AlanaTalk2:
	say "     You ask the mermaid what her job at the gate consists of, something that she offers no resistance against on answering. 'Me and the brat over there guard the only entrance to Atlantis, which is this magical gate that King Poseidon made thousands of years ago,' she says, gesturing to the golden thing behind her. You ask her what's so special about it something that she replies to rather quickly. 'It's what generates the bubble you're in right now. Without it certain species or beings wouldn't be able to be in the city,' Alana says. You mention that to get down here requires to be able to breathe underwater in the first place. That prompts a surprising chuckle from her as she answers you. 'Only recently did it. After all, Atlantis wasn't here for that long. It was in other places before. Places that didn't require gills or something else to get to,' is her response to her. You nod, figuring that you understand it.";
	say "     You then ask her what would happen if the gate was destroyed. She raises a brow as if sizing you up on whether or not you'd do such a thing before shrugging. 'If that did happen then water would come rushing in. The buildings wouldn't be destroyed as they're reinforced but people would be hurt,' Alana says to you. That actually makes sense, since the water wouldn't be displaced anymore. However before you can head off on your own, Triton makes a side comment. 'Even so, it's very unlikely for that to happen as the gate is extremely strong,' he says, swinging his trident at it for emphasis as it doesn't leave a mark. After he does so you decide to let them return to work as you've gotten all the information you could get.";

instead of fucking Alana:
	say "     The woman glares at you and behind her you can see Triton furiously shaking his head, practically telling you to stop that train of conversation. Perhaps it's best not to talk to her about this.";

Atlantis ends here.
