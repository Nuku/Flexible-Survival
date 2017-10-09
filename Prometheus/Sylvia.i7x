Version 1 of Sylvia by Prometheus begins here.

[ hp of Sylvia - relationship variable with the player          ]
[   0: not met                                                  ]
[   1: told them her room number                                ]
[   2: watched her give a BJ + told them her room number        ]
[   3: met her in her room                                                      ]
[   4: ...                                                      ]
[   5: ...                                                      ]
[   6: ...                                                      ]
[   7: ...                                                      ]
[ 100: refused her event, no further contact                    ]

Section 1 - Room Declaration

Sylvia's Room is a room.
The description of Sylvia's Room is "[SylviasRoomDesc]".

to say SylviasRoomDesc:
	say "     The floor of Sylvia's room is clean. The walls, however, are covered in pictures of various canines. Wolves, foxes, corgis, border collies, the list goes on. If she didn't have a window, you would think that side would be plastered with them too. On a bookshelf, hundreds of books of various subject including biology and zoology. A desk is pushed against the wall in one corner with a dead laptop, a vase with some flowers, and two well thumbed books. One is Charles Darwin's [']On the Origin of Species['], and the other is a childrens book with dogs and a smiling family. Beside the window is a small armchair with a cushion depicting a border collie. Her bed is well made, but there are strands of fur on it, not all of it looks like hers...";

Section 2 - NPC Declaration

Sylvia is a woman. 
The description of Sylvia is "[SylviaDesc]".
The conversation of Sylvia is { "Woof woof" }.
The scent of Sylvia is "     The pretty collie smells mostly like a dog. Cleanish, but with undertones of other creatures.".

to say SylviaDesc:
	say "     Sylvia is a young anthro border collie. Her hind legs, paws, chest, muzzle, and the tip of her fluffy tail are white, while the rest of her fur is black. She gazes at you with green eyes, an abnormality in dogs. [if hp of Sylvia < 3]The shirt she wears does little to hide her two C cup breasts, but keeps them from the eyes of passing creatures. She is wearing a royal blue skirt that hides her thighs from view. [end if]";
	LineBreak;
	say "     From the interactions you've had with her so far, Sylvia is a confident young lady, though your first encounter shows that she can be brought to despair. [if hp of Sylvia < 3]While she seems fairly sexually open, people that she is unfamiliar with must first earn her trust and respect before they can expect to be pleasured by the border collie.[end if] She looks back at you, striking a seductive pose, before sticking her tongue out light heartedly.";

Section 3 - Talking

[Family]

[Interest in Biolgy]

[Friends]


Section 4 - Sex

[...]

Section 5 - Events

Despairing Biologist is a situation.
The level of Despairing Biologist is 0.
The sarea of Despairing Biologist is "Campus".

instead of going east from College Campus Entrance while (Despairing Biologist is not resolved and a random chance of 1 in 2 succeeds and LastCampusWalkin - turns > 2):
	move player to College Walkway East;
	DespairingBiologistEvent;
	
Instead of resolving Despairing Biologist:
	DespairingBiologistEvent;

to DespairingBiologistEvent: [Meet Sylvia]
	say "     Walking through the college, you see the occupants still acting in ways that you might expect from students. Lying on the grass laughing with friends, chatting to each other as they walk carrying stacks of books, and standing in groups complaining about one thing or another. Among these activities are some that fit more with the recent events. A pretty pantheress on her knees treating several colleagues to handjobs, moaning from behind a bench as two students relieve some stress, and an elephant dressed in a groundskeeper uniform cleaning sperm from the lawns. Smirking, you continue down the path, thoughts of how the futures of these many people changed with the nanite outbreak.";
	say "     As you turn a corner you hear an arguement. ' I don't want to swap my degree, I like biology, but the city has changed. Just yesterday I saw a lion being chased by a gazelle. Darwin doesn't cover that!' a female voice says exasperatedly. Looking over, you see a border collie girl talking to a male wolf, both wearing clothes unlike many of the other residents of the city. 'You don't have to change degree. Think off all the creatures running around the city, or even just the college. Did Darwin catalogue minotaurs or dragons? You could be the leading authority!' her companion replies enthusiastically. The collie tilts her head, 'I suppose so. Could be fun collecting the data, and there are a lot of never before seen animals...' she reasons.";
	WaitLineBreak;
	say "     Her friend gives her a hug, the show of friendship slightly ruined by the erection tenting his trousers. 'Really Julian? You’re that pleased for me? Or are you perhaps wanting something else?' she questions him in a sultry manner, her hand sneaking down his trousers to cup his bulge. By this time, you are standing in full view about five metres away. A fact that has been noticed by the wolf, Julian. 'Umm, Sylvia. There's someone right there, would we not be better going...' he remarks cautiously. The collie, whom you take to be Sylvia, turns around, but you notice she doesn't remove her hand from his pants. She studies you shortly, 'From the look of them, they've seen sex before, and besides, universities were rife with fornication and debauchery even before the changes.' Unfazed by your presence, she continues to play with the lupine's junk.";
	say "     [bold type]Do you wish to continue watching, or leave before this gets awkward?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Stay here, she seems fine with you watching.";
	say "     ([link]N[as]n[end link]) - Leave, this is between them.";
	if player consents: [Stay]
		LineBreak;
		say "     'I suppose I should introduce myself. I'm Sylvia, and this is Julian.' The wolf waves weakly, still taken aback at the turn of events. 'So, what brings you to the college? You aren't a student or lecturer, and I'm guessing you aren't with the military. Researcher? Resident?' the female canine questions you. You smirk and say that telling her would remove the air of mystery you've developed. Rolling her eyes in mock disgust, she removes her hand from his pants, Sylvia gestures for him to follow her down the side of a building away from the eyes of others. She gives you a glance, inviting you to follow too. You push aside the foliage of a bush, entering into a shady clearing between some trees, a seldom-used bench sheltered beside a rose bush.";
		WaitLineBreak;
		say "     Now that you are away from the eyes and wanderings of the college residents, Sylvia's restraint with her colleague diminishes. Within seconds, she has his trousers around his ankles and is admiring his erect penis. 'Fairly large I would say, though not necessarily for some of the roaming beasts', she observes. While he had swelled with pride at the beginning of her statement, the afterthought seems to damage his ego. Noticing this, the collie runs her hand up his shaft and consoles him as she kneels, 'It's the right size for me, I doubt I'd be able to fit something a foot wide in my mouth.' Excited at where this is going, the wolf's tail begins to wag, and pre begins to seep from his cock. Giving him a wink, the girl licks him from base to tip, her wide pink tongue folding around the sides of his shaft. Julian, perhaps because he is unsure what to do with his hands while receiving the blowjob, begins to stroke her head and ears. This attention causes Sylvia to cease licking and seal his member within her mouth.";
		say "     [bold type]Do you want to stay here, or are there places you need to be?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Stay here, their pleasure is yours.";
		say "     ([link]N[as]n[end link]) - Leave Julian to be pleasured in peace.";
		if player consents: [watch BJ]
			LineBreak;
			say "     Aroused by such a shameless display of gratitude, [if cocks of player is 1]your cock swells, pre drizzling from the tip [else if cocks of player > 1]your cocks swell, pre drizzling from the tips [else]fem-lube dribbles from your widening slit [end if]and you bring your hand down to soothe this growing desire. Looking up, you see that Julian has seated himself upon the bench, with Sylvia between his legs caressing his furry scrotum as her head bobs up and down in his lap. He leans back, a blissful expression on his face, groans escaping from his open mouth. In a rush of confidence, Julian holds the back of Sylvia's head and begins to piston his hips back and forth, taking control of his pleasure. The dog girl accepts this change in control and rests herself back on her thighs, relaxing a bit while still allowing the wolf access to thrust into her maw.";
			WaitLineBreak;
			say "     The male continues to hammer himself into the canine’s mouth, occasionally stroking the back of her head or scratching an ear. Noticing his imminent orgasm, the collie brings a hand up between her mouth and his knot, preventing its entrance to her mouth. Giving a few last thrusts, Julian cums inside Sylvia's mouth, his knot throbbing between her fingers. Short of breath, the biology student pulls back, semen oozing from her mouth as the canine cock slips out, still contracting leaving trails of sperm on the ground. Swallowing the contents of her mouth, the collie stands up, dusting her knees off and straitening her skirt. 'Mmm, not bad for a first experience, I might even consider doing that again' she said brightly before kissing her companion on the nose.";
			say "     'But, fair is fair, I haven't had an orgasm,' she chuckles, playfully attempting to drag the lupine up. As you step forward to offer your services for such a task she looks at you and laughs good naturedly. 'I only met you a moment ago, what sort of girl would I be if I allowed anyone I met to watch me fellate a friend before allowing the stranger to go down on me.' Seeing your disappointment, she relents slightly. 'I'll tell you what, prove to me you're not just interested in me sexually. Talk to me later in my room when we aren't both horny, then I'll consider whether you are worth knowing. Room number 059, toodle pip.' Beginning to feel like a third wheel, you leave the two bonding, and continue through the college.";
			now hp of Sylvia is 2; [watched BJ, got room number]
		else: [do not watch]
			LineBreak;
			say "     Allowing the wolf to feel the attentions of the collie, you turn to leave. Sylvia pulls back from his cock momentarily and calls after you, 'I'm in room 059 of the girls['] dormitory if you want to talk to me more. You seemed nice enough.' Noting the room in your head you push past the branches and continue through the college.";
			now hp of Sylvia is 1; [got room number]
		change the northeast exit of Tenvale College Female Dorms to Sylvia's Room; [connecting the location to the travel room]
		change the southeast exit of Sylvia's Room to Tenvale College Female Dorms; [connecting the location to the travel room]
	else:
		LineBreak;
		say "     Feeling slightly embarrassed at the willingness of the pair to let you watch, you mutter something about needing to be somewhere before walking hurriedly back the way you came, the girl giggling behind you.";
		now hp of Sylvia is 100; [event refused, no further contact with her]
	now Despairing Biologist is resolved; [It won't happen again]
	now LastCampusWalkin is turns;

Room 059 is a situation.
The level of Room 059 is 0.
The sarea of Room 059 is Sylvia's Room.

instead of going northeast from Tenvale College Female Dorms while (Room 059 is not resolved):
	move player to Tenvale College Female Dorms;
	Room059Event;
	
instead of resolving Room 059:
	Room059Event;
	
to Room059Event: [First time to Sylvia's room]
	say "     Seeing the room number that you had been given by Sylvia, you approach the door. However, when you knock, the door slowly swings open, revealing the collie leaning back in an armchair reaing a book. her shirt is unbuttoned, but mostly covering her chest, only a glimpse of her breasts are visible. She notices you over the top of her book, placing it on a nearby desk. As she stands, she does up a few of the buttons on her shirt. 'That you came at all suggests you aren't as sex driven as many of the cities occupants,' she exclaims, recognising you instantly. Motioning you in,she closes the door before patting the edge of her bed. 'Please, sit,' she says cheerfully, returning to her armchair and smiling at you. Grateful to have a chance to rest your legs, you comply, the mattress sinking slightly, placing you at similar face heights.";
	say "     'So, you want to get to know me more?' Sylvia remarked, stroking her tail absent midedly. 'I'm on exchange from northern England, where my parents are. I have an older brother and a younger sister. I'm was studying zoology, but with the changes to the city, I plan to focus on the interactions of the infected with each other, especially groups.' You can see that she is really excited about this decision, contrasting with her breakdown to her friend. 'It will mean that I will have to go into the city at points, so I'm not sure whether to just try and sneak around, or get some help from the other students. Before I do that, I should be able to study the residents on campus.' Her hand creeps up her tail, sliding over her thigh, before she notices and consciously moves it away from her groin, draping it over the arm of the chair.";
	WaitLineBreak;
	say "     She continues to tell you about her life in England. Memories such as family walks in the forests, and her siblings and her exploring the trees and bushes away from the common paths, bring tears glistening in the corners of her eyes. You reach a hand out and pat her shoulder in an attempt to console her. She turns her head and smiles at you, laying a hand on top of your own. 'Thank you for the concern, I would hope there are others like you in the city,' compliments Sylvia, gently tracing the tips of her fingers over your hand. 'But I don't want to seem too easy, so I'll give you a choice. Would you prefer a kiss or a hug?' While you may have been hoping for more, the offer is none the less not an unwelcome one.";
	say "     [bold type]Would you prefer a kiss or a hug from Sylvia?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - A kiss sounds nice. She did offer after all.";
	say "     ([link]N[as]n[end link]) - Perhaps a hug. Who knows where else that mouth has been?";
	if player consents: [kiss/lick]
		LineBreak;
		say "     You inform her that you would prefer a kiss, a request that makes her snicker. 'Doggy kiss it is then' she chuckles. You both stand and she steps up next to you before placing one hand on your hip and the other on your shoulder. Leaning down so she can reach your mouth, you are extraordinarily surprised when she starts wildly licking the side of your face, bathing you in saliva. While this tongue bath wasn't what you were expecting, it gives you a sense of safety, making you feel like a puppy being cared for by its mother. Sylvia pulls back and observes your spit washed countenance. 'Not bad if I do say so myself. You may want to clean yourself more often, others might not like such a... gamey flavour,' she quips before returning to her seat.";
		say "     Wiping your hand over your face to remove the excess fluid, you sit down again an give her an accusitory stare. The collie snorts at your reaction. 'I'm a dog, normal kisses are more difficult. Plus, isn't it meant to be sexy when your partner uses tongue?' A short laugh escapes your mouth at her poor joke and the faux naivety in which she delivered it. 'Come and talk to me again at some point. For now though, I have things to study.' Sylvia dismisses you with a hand gesture. As you leave, you suddenly wonder whether she meant studying a book, herself, ... or others. You dismiss the thought and walk back down the dorm hallway.";
	else: [hug]
		say "     You step up next to her and encircle her within your arms. Smiling at how forward you are, she returns the hug, her soft chest pressed against your body. You can feel her heart beat, its percussion sounding at similar interval to your own. Suddenly, you feel the collies hands squeeze your backside, causing you to jump away from her slightly. You give her an accusatory stare as she doubles over laughing. 'I thought that was what you wanted.' she says between sniggers. 'To feel my hands upon your body as we embraced. But it seems perhaps you aren't ready judging from that reaction to me only touching your rear.'";
		say "     Wanting revenge, you close the distance between you, her eyes carefully watching your movement but allowing your response. As you attempt to grab her, she sidesteps you before licking you behind your ear and dancing away as you swing your arm around in a vain attempt to catch her. 'Growing up a girl taught me how to avoid the grasps of overly enthusiastic men, with a few lessons from my brother,' Sylvia chides, tapping you on the nose as you straighten. 'Come and talk to me again at some point. For now though, I have things to study.' Sylvia dismisses you with a hand gesture. As you leave, you suddenly wonder whether she meant studying a book, herself, ... or others. You dismiss the thought and walk back down the dorm hallway.";
	now hp of Sylvia is 3 [Met her in her room]
	now Room 059 is resolved;

[Bottomless Trend Event]

[Various Companions brought to Sylvia]

[Jogging Event]

[Study of others]
	
Sylvia ends here.