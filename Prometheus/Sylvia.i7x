Version 1 of Sylvia by Prometheus begins here.

[ hp of Sylvia - relationship variable with the player          ]
[   0: not met                                                  ]
[   1: told them her room number                                ]
[   2: watched her give a BJ + told them her room number        ]
[   3: ...                                                      ]
[   4: ...                                                      ]
[   5: ...                                                      ]
[   6: ...                                                      ]
[   7: ...                                                      ]
[ 100: refused her event, no further contact                    ]

Section 1 - Room Declaration

Sylvia's Room is a room.
The description of Sylvia's Room is "[SylviasRoomDesc]".

to say SylviasRoomDesc:
	say "     ...";

Section 2 - NPC Declaration

Sylvia is a woman. 
The description of Sylvia is "[SylviaDesc]".
The conversation of Sylvia is { "<This is nothing but a placeholder!>" }.
The scent of Sylvia is "     ...".

to say SylviaDesc:
	say "...";

Section 3 - Talking

[...]

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
	if player consents:
		LineBreak;
		say "     'I suppose I should introduce myself. I'm Sylvia, and this is Julian.' The wolf waves weakly, still taken aback at the turn of events. 'So, what brings you to the college? You aren't a student or lecturer, and I'm guessing you aren't with the military. Researcher? Resident?' the female canine questions you. You smirk and say that telling her would remove the air of mystery you've developed. Removing her hand from his pants, Sylvia gestures for him to follow her down the side of a building away from the eyes of others. She gives you a glance, inviting you to follow too. You push aside the foliage of a bush, entering into a shady clearing between some trees, a seldom-used bench sheltered beside a rose bush.";
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
			say "     'But, fair is fair, I haven't had an orgasm,' she chuckles, playfully attempting to drag the lupine up. As you step forward to offer your services for such a task she looks at you and laughs good naturedly. 'I only met you a moment ago, what sort of girl would I be if I allowed anyone I met to watch me fellate a friend before allowing the stranger to go down on me.' Seeing your disappointment, she relents slightly. 'I'll tell you what, prove to me you're not just interested in me sexually. Talk to me later in my room when we aren't both horny, then I'll consider whether you are worth knowing. Room number 164, toodle pip.' Beginning to feel like a third wheel, you leave the two bonding, and continue through the college.";
			now hp of Sylvia is 2; [watched BJ, got room number]
		else: [do not watch]
			LineBreak;
			say "     Allowing the wolf to feel the attentions of the girl, you turn to leave. Sylvia pulls back from his cock momentarily and calls after you, 'I'm in room 164 of the girls['] dormitory if you want to talk to me more. You seemed nice enough.' Noting the room in your head you push past the branches and continue through the college.";
			now hp of Sylvia is 1; [got room number]
		change the northeast exit of Tenvale College Female Dorms to Sylvia's Room; [connecting the location to the travel room]
		change the southeast exit of Sylvia's Room to Tenvale College Female Dorms; [connecting the location to the travel room]
	else:
		LineBreak;
		say "     Feeling slightly embarrassed at the willingness of the pair to let you watch, you mutter something about needing to be somewhere before walking hurriedly back the way you came, the girl giggling behind you.";
		now hp of Sylvia is 100; [event refused, no further contact with her]
	now Despairing Biologist is resolved; [It Won't happen again]
	now LastCampusWalkin is turns;
	
Sylvia ends here.