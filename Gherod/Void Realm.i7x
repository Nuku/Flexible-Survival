Version 3 of Void Realm by Gherod begins here.

"Adds the Void Realm to the game."

[Version 1 - Adds the Void Realm virtual hunting ground with 3 encounters (Void Serpent, Dark Tyrant, Peculiar Summoner)]
[Version 2 - Added the Tentacle Abomination encounter]
[Version 3 - Extended Void Fireflies event. Added Odd Treasure and Mirrors event. Peculiar Summoner now drops a drink ingredient on defeat.]

[  ENCOUNTERS  ]
[Note: All losses with encounters in the Void must be bad ends (including fleeing), unless they're part of a quest or any specific context where losing and surviving has a justified reason. They must all be integrated within the Void Realm navigation system using trackers and in conformity with the other encounters, or event-based through the "Go Beyond the Veil" navigation option.]
[Currently, all 3 encounters can be found while navigating through the Core Line, with the Dark Tyrant being activated through a special event.]

[Void Serpent - A non-unique encounter. Significant threat, weakened by Abyssal Edge, scared away by sharp black tusk]
[Dark Tyrant - A special encounter. Almost impossible to beat, unless weakened by Abyssal Edge, can become ally (TBA), can be defeated permanently]
[Peculiar Summoner - an unique encounter. Not the biggest threat, cannot be weakened, easy to avoid and checks are fixed]
[Tentacle Abomination - a non-unique encounter. Mild threat, weakened by Ancient Tome, easy to avoid]
[   Tracker for this one goes up to 4 due to the order its tracker is handled through the moves]

[  COMPANIONS  ]
[Note: All text change provided by the existence of a companion must be in ITALIC, so the player can more easily see what changes. This only applies to singular paragraphs or short sections, and following long scenes (such as Xaedihr's sex scene in Tendril Plants) may be written in ROMAN as per normal.]
[Currently, 1 companion provides special scenes while in the Void.]

[Xaedihr - Provides very useful help in surviving through the Void, softening some penalties and sometimes is able to save the player's life. Has special scenes. Can learn Invoke Dream spells to allow the player to experience bad ending scenes within the safety of a harmless dream]

[  NPCs  ]
[Note: Some NPCs outside of the Void are, in some way, related to this Realm, or provide some service related to this content.]
[Currently there are 2 NPCs with implemented interactions.]

[Xaedihr - Can enchant Abyssal Edge's Weapon Damage with Null Essence. Can enchant his own Weapon Damage with Null Essence.]
[Toron - Can restore Abyssal Remnant to Abyssal Edge with Null Essence.]
[      - Can create drinks with the following items:]
[        . Null Essence;                            ]
[        . sharp black tusk;                        ]
[        . loose tentacle;                          ]
[        - strange-colored bean;                    ]

Section 1 - Pre-Event

[Void]

Table of GameEventIDs (continued)
Object	Name
To The Unknown	"To The Unknown"

To The Unknown is a situation.
ResolveFunction of To The Unknown is "".
Sarea of To The Unknown is "Nowhere".

a postimport rule:
	if Resolution of To The Unknown is 1:
		now Resolution of To The Unknown is 0; [resets the resolution stages for the updated location]

[RESOLUTION STAGES - NO LONGER APPLICABLE]
[0: Never found anything]
[1: Void Realm unlocked]

[----------------------------------------]

[Abyssal Edge Event - Dark Tyrant]

Table of GameEventIDs (continued)
Object	Name
Gift From Abyss	"Gift From Abyss"

Gift From Abyss is a situation.
ResolveFunction of Gift From Abyss is "".
Sarea of Gift From Abyss is "Nowhere".

[RESOLUTION STAGES]
[0: Never found the sword]
[1: Found the sword, but chose to lose it to the Void. Dark Tyrant never appears]
[2: Found the sword, kept it, released Dark Tyrant]

[----------------------------------------]

[Abyssal Edge Enchantment]

Table of GameEventIDs (continued)
Object	Name
AbyssEdgeEnchantLevel	"AbyssEdgeEnchantLevel"

AbyssEdgeEnchantLevel is a situation.
ResolveFunction of AbyssEdgeEnchantLevel is "".
Sarea of AbyssEdgeEnchantLevel is "Nowhere".

[----------------------------------------]

[Void Fireflies Event]

Table of GameEventIDs (continued)
Object	Name
Luminous Harem	"Luminous Harem"

Luminous Harem is a situation.
ResolveFunction of Luminous Harem is "".
Sarea of Luminous Harem is "Nowhere".

[RESOLUTION STAGES]
[0: Never communicated with the void fireflies]
[1: Communicated once, they touched the player, but are still shy]
[2: Communicated twice, they start revealing their shapes]
[3: Communicated thrice, they are now openly offering sex to the player]

[----------------------------------------]

Table of GameEventIDs (continued)
Object	Name
Odd Treasure	"Odd Treasure"

Odd Treasure is a situation.
ResolveFunction of Odd Treasure is "".
Sarea of Odd Treasure is "Nowhere".

[RESOLUTION STAGES]
[0: Nothing happened so far]
[1: Encountered the Elk Head Reaper's dungeon]

[----------------------------------------]

Table of GameEventIDs (continued)
Object	Name
ElkHeadReaperGender	"ElkHeadReaperGender"

ElkHeadReaperGender is a situation.
ResolveFunction of ElkHeadReaperGender is "".
Sarea of ElkHeadReaperGender is "Nowhere".

[RESOLUTION STAGES]
[0: Gender undecided]
[10: Male]
[20: Female]

to say EHRSubjectPro:
	if Resolution of ElkHeadReaperGender is 10:
		say "he";
	else:
		say "she";

to say EHRObjectPro:
	if Resolution of ElkHeadReaperGender is 10:
		say "him";
	else:
		say "her";

to say EHRPosAdj:
	if Resolution of ElkHeadReaperGender is 10:
		say "his";
	else:
		say "her";

to say EHRPosPro:
	if Resolution of ElkHeadReaperGender is 10:
		say "his";
	else:
		say "hers";

to say EHRReflexPro:
	if Resolution of ElkHeadReaperGender is 10:
		say "himself";
	else:
		say "herself";

[----------------------------------------]

Table of GameEventIDs (continued)
Object	Name
MirrorsKey	"MirrorsKey"

MirrorsKey is a situation.
ResolveFunction of MirrorsKey is "".
Sarea of MirrorsKey is "Nowhere".

[RESOLUTION STAGES]
[0: Nothing happened so far]
[1: Encountered a key by destroying the mirror]
[2: Opened the door on the left path of "Odd Treasure"]

[----------------------------------------]

instead of going north from Hellfire Unknown:
	say "[VRToTheUnknown]";

to say VRToTheUnknown:
	say "     In front of you, there is a gate to the unknown... The Void Realm.";
	WaitLineBreak;
	say "     Before you decide to go in, keep in mind that this is an [bold type]extremely dangerous area[roman type] that can potentially end your life, and you cannot simply abandon it whenever you please, as many obstacles will provide a challenge and may potentially halt your progress. Only go in if you know what you are doing.";
	say "     Having a [bold type]strong psyche[roman type] may be advantageous, but if the contrary is true and you possess a [bold type]weak psyche[roman type] instead, you're most certainly doomed, as you will lose your mind to the void at an alarming rate. Additionally, if you are a particularly [bold type]kinky[roman type] individual, the Void Realm may provide you with a [italic type]vastly different[roman type] experience, but nonetheless, this place will use that against you in the most effective ways.";
	say "     You may also find certain companions to be very helpful, such as [if Strange Sorcerer is resolved]the demonologist Xaedihr[else]an expert in demonology and dimensional traveling[end if], and they may even have a chance of saving you from an unavoidable danger.";
	say "     In order to escape once you enter, just keep walking through the dimensional line in either direction without looking back, but that doesn't mean you should not explore its boundaries, as long as you are aware of the risks.";
	say "     [bold type]Do you wish to proceed?[roman type][line break]";
	Linebreak;
	say "     ([link]Y[as]y[end link]) - Yes, enter the Void Realm.";
	say "     ([link]N[as]n[end link]) - No, turn around and leave.";
	if player consents:
		LineBreak;
		say "[ToTheVoid]";
	else:
		LineBreak;
		say "     You decide to back away, for now, and perhaps that is for the best. You even feel some of your sanity being returned to you with this decision.";
		SanBoost 5;
		move player to Hellfire Unknown;
	[if Resolution of To The Unknown is 0: [Pre-Event]
		say "     You go past one of the many buildings in the District and turn to your right. It is another ransacked shop with nothing left, only broken glass scattered around the windows and a complete absence of sound, which worsens the more you proceed forward. There is nothing else around but destruction and abandonment, consequences brought by the apocalypse, but besides this, something seems to be really disturbing you, and you find yourself helplessly unable to explain what it is, exactly. It's just something you feel... A shiver, sudden loss of thoughts, an instant discomfort rapidly growing inside as if a nightmare was chasing after you. The sense of danger, maybe there is a creature approaching...?! Though there is nothing. Paranoia slowly begins to take over your mind, and a cold drop of sweat follows after.";
		say "     Reality seems pointless, the air around you is heavy, your body refuses to move, and then you can't breathe. But at the same time, there you are, alive, your heart beating, your senses in overdrive, but your brain seems incapable of understanding its surroundings. There is a hiss echoing through, and that is when you see a gigantic scaly body of a snake, passing right by you and through the buildings like a slowly moving train, seemingly endless. Your heart stops at that moment, facing the imminent danger, and it is a feeling you cannot control. You feel powerless, disarmed and tiny, as the serpent makes its way unhindered by any obstacles that prove to be nothing for its titanic dimensions.";
		WaitLineBreak;
		say "     Suddenly, it all stops. You return to the streets of Red Light District, safe and sound, in the same spot as you were before. Though something comes rolling towards your feet. A very black sort of shiny rock, it seems, though it seems to slightly change its color when you touch it. Possibly a chemical reaction to your skin or from the pressure when you hold it in your hands, however that only makes this object more mysterious.";
		ItemGain null essence by 1 silently;
		say "     You have obtained a [bold type]Null Essence[roman type] and placed it in your inventory.";
		WaitLineBreak;
		if demonologist is listed in companionList of Player or Xaedihr is in Grey Abbey Library:
			say "     'Ah... That is the void, alright. Such openings are obviously traces of clumsy dimensional traveling.' You hear a voice speaking behind you, and notice that Xaedihr was tagging along right after you. 'Do not enter this place if you don't have to. It will consume your mind the more time you spend in there. This was just a glimpse of what it can do... Even experienced sorcerers choose to stay away.' He explains, walking to your side in the process. 'But if you must, then I recommend that you take me with you. This [italic type]Null Essence[roman type] that you've got has tremendously useful properties, and I find myself helplessly drawn to it.' Indeed, it might be a good idea to have someone as powerful as your half-demon friend accompanying you through perilous realms like this.";
			say "     'Though do be wary of that serpent, it seems to be the gatekeeper and it will, most certainly, attempt to eat you. Whole. Literally. Very ill-advised, even if you happen to be a vore enthusiast, in which case I will feed you to it myself.' He finishes speaking with a tone of sarcasm, so remarkable that you're actually not quite sure if he is serious or not. Regardless, you thank him for the explanation. It would be far worse going in blind.";
		else:
			say "     As of regarding what just happened, perhaps you will have to find that out by yourself. Still, there might be an expert about supernatural things around somewhere if you find yourself in dire need of someone to aid you, though. You do have a nagging feeling that pursuing this quest, however, would be [bold type]very dangerous[roman type], especially for your psyche, after the hit it just took.";
		say "     If you do intend to search for this mysterious force again, simply walk [bold type]To The Unknown[roman type] and you may find it.";
		now Resolution of To The Unknown is 1;
		SanLoss 10;]


Section 2 - The Void Realm

Section 2-1 - Core Line

[Variables]
[VRPlayerMove: detects how close the player is to exit the Void Realm. They must reach either 7 or -7.]
[VRVoidSerpentTracker: detects Void Serpent position. 0 is far away, while in 3 it will either hiss or its shape will appear]

VRPlayerMove is a number that varies. VRPlayerMove is usually 0. [@Tag:NotSaved]
VRPlayerFacing is a number that varies. VRPlayerFacing is usually 0. [@Tag:NotSaved]
VRVoidSerpentTracker is a number that varies. VRVoidSerpentTracker is usually 0. [@Tag:NotSaved]
VRPeculiarSummonerTracker is a number that varies. VRPeculiarSummonerTracker is usually 0. [@Tag:NotSaved]
VRTentacleAbominationTracker is a number that varies. VRTentacleAbominationTracker is usually 0. [@Tag:NotSaved]
VRTentacleAbominationLinger is a number that varies. VRTentacleAbominationLinger is usually 0. [@Tag:NotSaved]
VRDarkTyrantTracker is a number that varies. VRDarkTyrantTracker is usually -1. [@Tag:NotSaved]

to say ToTheVoid:
	say "     Taking a deep breath, you decide that you will be crossing the gate. Walking down the stairs, you feel its heavy atmosphere pulling you in, like a vaccuum attempting to fill itself with your presence. Once you touch the entrance, all your reality becomes darkness, and you find yourself in its emptyness. The core line of the Void Realm welcomes you in its endless paths, enveloped in a veil of many mysteries and dangers.";
	WaitLineBreak;
	say "[VRMoveOptions]";

to say VRMoveOptions:
	if humanity of Player < 1:
		say "[MindLossVoid]";
	else:
		say "     The Core Line of the Void Realm is like an endless tunnel made of nothing but darkness. The path ahead and behind you is barely visible to your eyes, if only to tell you that it is a more or less stable physical space that you can move through without anything out of the ordinary happening. However, its walls, the veil surrounding you, are not solid, allowing for anyone to pass through, including yourself if you so desire, at the risk of encountering something that your mind cannot withstand so easily...";
		VRMindConditionCheck;
		say "     Your Sanity is at [bold type][humanity of player][roman type][line break]";
		VREncounterTrackerCheck;
		VRDistanceToExit;
		LineBreak;
		say "     [link](1)[as]1[end link] - Move North.";
		say "     [link](2)[as]2[end link] - Move South.";
		say "     [link](3)[as]3[end link] - Hold Position.";
		say "     [link](4)[as]4[end link] - Go Beyond the Veil.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 4:
			say "Choice? (1-4)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to move forward, [link]2[end link] to move backwards, [link]3[end link] to hold your position or [link]4[end link] to have a look around.";
		if calcnumber is 1: [MoveNorth]
			increase VRPlayerMove by 1;
			Linebreak;
			VRNormalSanityLoss;
			if VRPlayerMove > 6:
				say "     You decide to move North, through the endless paths of the core line... and this time, you feel relieved. The way ahead is bathed in light as the Void begins to expel you out of its darkness. The black walls fade away, your surroundings become physical and unquestionable once more and your self is brought back to brighter colors. The world welcomes you.";
				WaitLineBreak;
				say "[VRLeave]";
			else:
				say "     You decide to move North, through the endless paths of the core line...";
				if VRDarkTyrantTracker is 3: [Every monster will run away from the Dark Tyrant]
					if a random chance of 4 in 5 succeeds:
						say "     [bold type]The great shadow remains hovering over you, not letting you go so easily.[roman type][line break]";
					else:
						now VRDarkTyrantTracker is 0;
						say "     [bold type]You find yourself no longer overshadowed[roman type]. It must have retreated.";
					WaitLineBreak;
					now VRPlayerFacing is 0;
					say "[VRMoveOptions]";
				else: [Trackers proceed as normal]
					if VRVoidSerpentTracker is 3: [shape seen]
						say "     That was not very wise. The elongated shape you caught a glimpse of was the Void Serpent, already having you under its sights. Since you made your location very obvious by keeping on moving, it had all the time and opportunity to track you down and know of your immediate position. The creature is not happy to see you. Now it is too late for regrets, the serpent is moving towards you in an aggressive manner...";
						WaitLineBreak;
						now VRPlayerFacing is 0;
						say "[VRVoidSerpentPreBattle]";
					else if VRVoidSerpentTracker is 4: [hissing]
						if VRPlayerFacing is 0: [Facing North - the same direction]
							say "     With the serpent hissing at you, any movement towards it will obviously make it seem like you are challenging it. Perhaps you are, even, despite that being a very unwise thing to do. Now it is too late for regrets, the creature is moving towards you in an aggressive manner...";
							WaitLineBreak;
							now VRPlayerFacing is 0;
							say "[VRVoidSerpentPreBattle]";
						else if VRPlayerFacing is 1: [Facing South - the opposite direction]
							say "     Your careful steps towards the opposite direction allow you to walk away safely, as the serpent simply retreats. If you wish to proceed South next, your path is now free of the snake.";
							now VRVoidSerpentTracker is 1;
							WaitLineBreak;
							now VRPlayerFacing is 0;
							say "[VRMoveOptions]";
					else if VRPeculiarSummonerTracker is 3: [Peculiar Summoner will always wait for other monsters to leave]
						say "     However, you are stopped by a sudden cloaked figure appearing right before you, its dark and tattered robes hanging still as the stillness of the void. It looks like you could not avoid this foe, who has been observing you for a while, now.";
						WaitLineBreak;
						now VRPlayerFacing is 0;
						say "[VRPeculiarSummonerPreBattle]";
					else:
						WaitLineBreak;
						now VRPlayerFacing is 0;
						say "[VRMoveOptions]";
		else if calcnumber is 2: [MoveSouth]
			decrease VRPlayerMove by 1;
			Linebreak;
			VRNormalSanityLoss;
			if VRPlayerMove < -6:
				say "     You decide to move South, through the endless paths of the core line... and this time, you feel relieved. The way ahead is bathed in light as the Void begins to expel you out of its darkness. The black walls fade away, your surroundings become physical and unquestionable once more and your self is brought back to brighter colors. The world welcomes you.";
				WaitLineBreak;
				say "[VRLeave]";
			else:
				say "     You decide to move South, through the endless paths of the core line...";
				if VRDarkTyrantTracker is 3: [Every monster will run away from the Dark Tyrant]
					if a random chance of 4 in 5 succeeds:
						say "     [bold type]The great shadow remains hovering over you, not letting you go so easily.[roman type][line break]";
					else:
						now VRDarkTyrantTracker is 0;
						say "     [bold type]You find yourself no longer overshadowed[roman type]. It must have retreated.";
					WaitLineBreak;
					now VRPlayerFacing is 1;
					say "[VRMoveOptions]";
				else: [Trackers proceed as normal]
					if VRVoidSerpentTracker is 3: [shape seen]
						say "     That was not very wise. The elongated shape you caught a glimpse of was the Void Serpent, already having you under its sights. Since you made your location very obvious by keeping on moving, it had all the time and opportunity to track you down and know of your immediate position. The creature is not happy to see you. Now it is too late for regrets, the serpent is moving towards you in an aggressive manner...";
						WaitLineBreak;
						now VRPlayerFacing is 1;
						say "[VRVoidSerpentPreBattle]";
					else if VRVoidSerpentTracker is 4: [hissing]
						if VRPlayerFacing is 0: [Facing North - the opposite direction]
							say "     Your careful steps towards the opposite direction allow you to walk away safely, as the serpent simply retreats. If you wish to proceed North next, your path is now free of the snake.";
							now VRVoidSerpentTracker is 1;
							WaitLineBreak;
							now VRPlayerFacing is 1;
							say "[VRMoveOptions]";
						else if VRPlayerFacing is 1: [Facing South - the same direction]
							say "     With the serpent hissing at you, any movement towards it will obviously make it seem like you are challenging it. Perhaps you are, even, despite that being a very unwise thing to do. Now it is too late for regrets, the creature is moving towards you in an aggressive manner...";
							WaitLineBreak;
							now VRPlayerFacing is 1;
							say "[VRVoidSerpentPreBattle]";
					else if VRPeculiarSummonerTracker is 3: [Peculiar Summoner will always wait for other monsters to leave]
						say "     However, you are stopped by a sudden cloaked figure appearing right before you, its dark and tattered robes hanging still as the stillness of the void. It looks like you could not avoid this foe, who has been observing you for a while, now.";
						WaitLineBreak;
						now VRPlayerFacing is 1;
						say "[VRPeculiarSummonerPreBattle]";
					else:
						WaitLineBreak;
						now VRPlayerFacing is 1;
						say "[VRMoveOptions]";
		else if calcnumber is 3: [Hold]
			Linebreak;
			VRNormalSanityLoss;
			say "     You have decided to stand still for a moment, not moving towards either way.";
			if VRDarkTyrantTracker is not 3:
				if VRTentacleAbominationTracker is 3:
					increase VRTentacleAbominationTracker by 1; [it will happen for sure]
				else if a random chance of 3 in 5 succeeds and VRTentacleAbominationTracker < 3: [Holding for too long invokes the Tentacle Abomination]
					increase VRTentacleAbominationTracker by 1;
			if VRDarkTyrantTracker is 3: [Will always attack first]
				say "     That was a bad decision. With the Dark Tyrant on your tail, not attempting to move through the dimensional line of this realm only earns you a direct confrontation with his great and menacing shadow. Your immediate surroundings darken as the gigantic abomination of dark slime grows before you, licking his own black gooey face with a hungry toothy grin. Solid liquid drips from each of his extremities, including from the monstrous shape of a cock permanently erect between his massive legs, its slit gaping as the pitch black goo keeps leaking.";
				if demonologist is listed in companionList of Player:
					say "     [italic type]It doesn't seem like Xaedihr can help you here, either. You've gotten separated from him.[roman type][line break]";
				WaitLineBreak;
				say "[VRDarkTyrantPreBattle]";
			else if VRVoidSerpentTracker is 4: [hissing]
				say "     With the serpent hissing and displaying such a territorial behavior, standing in the same place at the same general distance doesn't seem to provide any beneficial effect to you. It stands firmly, and still a threat, fortunately not going for an attack just yet.";
				WaitLineBreak;
				say "[VRMoveOptions]";
			else if VRVoidSerpentTracker is 3: [shape seen]
				say "     The elongated shape you caught a glimpse of previously must have been the Void Serpent, already having you under its sights. Since you held your ground, it seems the creature went past you and paid no attention to your presence, or perhaps it no longer detected you. That is indeed a relief.";
				now VRVoidSerpentTracker is 1;
				WaitLineBreak;
				say "[VRMoveOptions]";
			else if VRTentacleAbominationTracker is 4: [attempting to ambush the player]
				say "     That odd, slimey presence above you was already enough of a bad omen, and your decision to stay in the same place only exposed you to the menace of an abomination with a massive cluster of tentacles that is descending upon you!";
				if carried of ancient tome > 0 and TentacleInteractions > 0:
					say "     [bold type]However...[roman type][line break]";
					wait for any key;
					VRTentacleAbominationATome;
				else:
					say "     There is no other option but to try and defeat this monster by your own hand, if you intend to go in further. It's going to be a tough fight...";
					wait for any key;
					VRTentacleAbominationFight;
			else if VRPeculiarSummonerTracker is 3: [Peculiar Summoner will always wait for other monsters to leave]
				say "     However, you are stopped by a sudden cloaked figure appearing right before you, its dark and tattered robes hanging still as the stillness of the void. It looks like you could not avoid this foe, who has been observing you for a while, now.";
				WaitLineBreak;
				say "[VRPeculiarSummonerPreBattle]";
			else:
				WaitLineBreak;
				say "[VRMoveOptions]";
		else if calcnumber is 4: [Explore, sanity loss decided only later on]
			Linebreak;
			if VRDarkTyrantTracker is not 3:
				if VRTentacleAbominationTracker is 3:
					increase VRTentacleAbominationTracker by 1; [it will happen for sure]
				else if a random chance of 1 in 4 succeeds and VRTentacleAbominationTracker < 3: [Exploring repeatedly invokes the Tentacle Abomination]
					increase VRTentacleAbominationTracker by 1;
			if VRDarkTyrantTracker is 3:
				say "     That was a bad decision. With the Dark Tyrant on your tail, not attempting to move through the dimensional line of this realm only earns you a direct confrontation with his great and menacing shadow. Your immediate surroundings darken as the gigantic abomination of dark slime grows before you, licking his own black gooey face with a hungry toothy grin. Solid liquid drips from each of his extremities, including from the monstrous shape of a cock permanently erect between his massive legs, its slit gaping as the pitch black goo keeps leaking.";
				if demonologist is listed in companionList of Player:
					say "     [italic type]It doesn't seem like Xaedihr can help you here, either. You've gotten separated from him.[roman type][line break]";
				WaitLineBreak;
				say "[VRDarkTyrantPreBattle]";
			else if VRVoidSerpentTracker is 4: [hissing]
				say "     With the serpent hissing at you, any sudden movement you make only seems to provoke it further. Now it is too late for regrets, the creature is moving towards you in an aggressive manner...";
				WaitLineBreak;
				say "[VRVoidSerpentPreBattle]";
			else if VRVoidSerpentTracker is 3: [shape seen]
				say "     That was not very wise. The elongated shape you caught a glimpse of was the Void Serpent, already having you under its sights. Since you lingered in the same area and made your location very obvious by moving around, it had all the time and opportunity to track you down and know of your immediate position. The creature is not happy to see you. Now it is too late for regrets, the serpent is moving towards you in an aggressive manner...";
				WaitLineBreak;
				say "[VRVoidSerpentPreBattle]";
			else if VRPeculiarSummonerTracker is 3: [Peculiar Summoner will keep track of player if he's attacked here. However, if player succeeds in moving out to explore, he loses them.]
				say "     The feeling that you had of being watched has disappeared. Perhaps you successfully managed to evade whoever, or whatever, was observing you.";
				now VRPeculiarSummonerTracker is 0;
				VREvents;
			else:
				VREvents;

to VRMindConditionCheck:
	if humanity of Player > 75:
		Linebreak;
	else if humanity of Player > 50:
		if player is kinky: [mind losses are way more sexual in nature]
			say "     [one of]Your mind is starting to drift into the darkness, horrific visages of your deepest and darkest desires beginning to surge unexpectedly. There is some disturbing arousal building within you...[or]Darkness fills your thoughts as several traces of horrifying fiends pop in your mind, and you can only think of how many ways they could have to share some of their dark pleasure with you...[or]The void begins to play tricks in your perception, showing you a vision of too many different aspects of terror just barely grasped by your brain. Though all of them manage to, somehow, turn you on with their grand and inhuman attributes...[at random][line break]";
		else: [there is only fear and despair]
			say "     [one of]Your mind is starting to drift into the darkness, horrific visages of your deepest nightmares beginning to surge unexpectedly. They lash at you as if they wanted you gone forever...[or]Darkness fills your thoughts as several traces of horrifying fiends pop in your mind, and you can only perceive their ugliness and cursing whispers...[or]The void begins to play tricks in your perception, showing you a vision of too many different aspects of terror just barely grasped by your brain. They're all monstrous and menacing, making you truly fear this place the more you focus on them, so you try not to.[at random][line break]";
	else if humanity of Player > 25:
		if player is kinky: [mind losses are way more sexual in nature]
			say "     [one of]Your mind begins to draw images of monstrous creatures with nightmarish features surrounding you in a demeaning manner, making you feel trapped and vulnerable. Arousal strikes you harshly as you're brought to think of all the possibilities...[or]The presence of the void demons is becoming more and more craved in your senses, and you're finding it increasingly difficult to resist the temptation of allowing them to consume you entirely in exchange for otherworldly pleasure.[or]An illusion appears before you. It is a nightmarish creature of the void with everything that could inflict fear on any mortal being, but in you, there is only arousal for all those forms of obscene sexual appendages. The more time you spend here, the harder it will be to shake these away...[at random][line break]";
		else: [there is only fear and despair]
			say "     [one of]Your mind begins to draw images of monstrous creatures with nightmarish features surrounding you in a demeaning manner, making you feel small and vulnerable. Fear strikes harshly as a chill crawls up your spine.[or]The presence of the void demons is becoming more and more craved in your senses, and you're finding it increasingly difficult to endure their curses. Your spirit is shattered and your soul closer to break apart.[or]An illusion appears before you. It is an obscene creature of the void with everything that could inflict fear on any mortal being. Every single form of pain suddenly reaches for you as the illusion shatters in a flash. The more time you spend here, the harder it will be to endure these...[at random][line break]";
	else if humanity of Player > 10:
		if player is kinky: [mind losses are way more sexual in nature]
			say "     [one of]The voices are becoming louder. They call for you. They speak to you... They... flirt with you. Your body is ready to accept your fate, but there is still a brink of your sanity left, appealing you to fight it.[or]The noise in your mind is becoming unbearable. You can hardly think of anything but the most otherworldly and obscene sexual forms that only the void can offer, which is hard to resist! You've got to get out of here...[or]The words of the void are as enticing as a well in the middle of a dry, hot desert under a scorching sun.[at random][line break]";
		else: [there is only fear and despair]
			say "     [one of]The voices are becoming louder. They call for you. They speak to you... You try to push them away, but they cling and lash violently at what remains of your sanity.[or]The noise in your mind is becoming unbearable. You can hardly think of anything but the most terrible and horrifying shapes that could jump at you in any minute! You've got to get out of here...[or]The words of the void are as maddening and torturous as the sound of endless screams during a state of sleep deprivation.[at random][line break]";
	else if humanity of Player > 0:
		if player is kinky:
			say "     [one of]Your legs refuse to move...[or]You're absentmindedly caressing yourself...[or]Sudden ecstacy is becoming a problem...[or]Your body wants to betray you...[or]You're starting to feel an urge to offer yourself to this place...[or]There is only dark lust in your thoughts...[at random][line break]";
		else:
			say "     [one of]Panic assaults you...[or]You're shaking uncontrollably...[or]Your eyes are dry and your throat gasps for air...[or]Breathing feels pointless to you...[or]There is only emptyness in your mind...[or]Your hope is gone...[at random][line break]";

to VREncounterTrackerCheck:
	if VRDarkTyrantTracker < 3: [Trackers freeze if Dark Tyrant is an imminent threat, < 3 means he's not]
		if a random chance of 1 in 2 succeeds and VRVoidSerpentTracker < 3:
			increase VRVoidSerpentTracker by 1;
		if VRVoidSerpentTracker is 3:
			if a random chance of 1 in 2 succeeds:
				now VRVoidSerpentTracker is 3; [shape]
				say "     There is a long shape slowly wiggling by your side, visible beyond the veil. If you were to move an inch, it would probably see you.";
				if demonologist is listed in companionList of Player:
					say "     [italic type]Whispering, Xaedihr tells you 'Hold your position, or it will see you.'[roman type][line break]";
			else:
				now VRVoidSerpentTracker is 4; [hissing]
				say "     An ominous hissing disturbs you for a moment, and it is coming from further ahead. There seems to be a giant serpent right in the middle of your path, but it is not advancing. It seems you are not standing where it wants you to be.";
				if demonologist is listed in companionList of Player:
					say "     [italic type]Whispering, Xaedihr tells you 'If it behaves like any normal snake, it doesn't like to be challenged. Don't make any sudden movements, but most importantly, back away, carefully.'[roman type][line break]";
		else if VRVoidSerpentTracker is 4: [in case they don't stop hissing]
			say "     An ominous hissing disturbs you for a moment, and it is coming from further ahead. There seems to be a giant serpent right in the middle of your path, but it is not advancing. It seems you are not standing where it wants you to be.";
			if demonologist is listed in companionList of Player:
				say "     [italic type]Whispering, Xaedihr tells you 'If it behaves like any normal snake, it doesn't like to be challenged. Don't make any sudden movements, but most importantly, back away, carefully.'[roman type][line break]";
		if a random chance of 3 in 5 succeeds and VRPeculiarSummonerTracker < 3:
			increase VRPeculiarSummonerTracker by 1;
		if VRPeculiarSummonerTracker is 3:
			say "     You feel like you are being observed by someone of a great power, and that they are very close. It is impossible to tell from which direction you are sensing this, but it seems to be from within the core line. Perhaps there is a chance you could lose them if you were to not be in their line of sight?";
			if demonologist is listed in companionList of Player:
				say "     [italic type]Whispering, Xaedihr tells you 'Lose them beyond the veil, they won't be able to follow. But if you can't, I doubt they will attack carelessly.'[roman type][line break]";
		if VRTentacleAbominationLinger is 3:
			say "     The sluggish, ominous presence that used to threaten you from above seems to be gone, for now.";
			if demonologist is listed in companionList of Player:
				say "     [italic type]'Tentacle Abomination gone. That's a relief.' says Xaedihr as he turns to you.[roman type][line break]";
			now VRTentacleAbominationTracker is 1;
			now VRTentacleAbominationLinger is 0;
		if VRTentacleAbominationTracker is 3:
			say "     There is an ominous presence hovering above you, with a sort of sluggish and slimey sounds echoing through. Looking up, there seems to be nothing, but there is this imminent sensation that something, or someone, might be about to fall right on top of you.";
			if demonologist is listed in companionList of Player:
				say "     [italic type]Whispering, Xaedihr tells you 'Look out for those tentacle abominations. They are everywhere, so don't linger around in the exact same spot for too long, unless you want one of them to find you. Although I don't think it likes snakes... but even so, it will stay in the veil, too, so beware.'[roman type][line break]";
			if a random chance of 3 in 4 succeeds:
				increase VRTentacleAbominationLinger by 1;
		if a random chance of 1 in 4 succeeds and VRDarkTyrantTracker > -1 and VRDarkTyrantTracker < 3:
			increase VRDarkTyrantTracker by 1;
		if VRDarkTyrantTracker is 3:
			say "     [bold type]The air freezes around you. Not physically or in any realistic meaning of the word, but in the form of a menacing presence hovering over you. Its great shadow surges, ready to catch you in a moment of distraction...[roman type][line break]";
			if demonologist is listed in companionList of Player:
				say "     [italic type]Whispering, Xaedihr tells you 'Well, you see that black thing you summoned when you pulled the sword? Don't stop running now, or you will get eaten by it. And stick to the core line. The other monsters won't be a problem with its presence.'[roman type][line break]";
	else: [Dark Tyrant is an imminent threat]
		say "     [bold type]You are still in imminent danger of being caught by the Dark Tyrant.[roman type][line break]";

to VRDistanceToExit:
	if VRPlayerFacing is 0:
		say "     You are currently facing North";
	else if VRPlayerFacing is 1:
		say "     You are currently facing South";
	else if VRPlayerFacing is 99:
		say "     You have just arrived at the Void Realm";
	if VRPlayerMove > 3 and VRPlayerMove < 6:
		say " and nearing the Northern exit.";
	else if VRPlayerMove is 6:
		say " and one step away from the Northern Exit.";
	else if VRPlayerMove < -3 and VRPlayerMove > -6:
		say " and nearing the Southern exit.";
	else if VRPlayerMove is -6:
		say " and one step away from the Southern exit.";
	else:
		say " and within the middle zone of the core line.";

to VRNormalSanityLoss:
	if "Strong Psyche" is listed in feats of Player:
		SanLoss 3;
	else if "Weak Psyche" is listed in feats of Player:
		SanLoss 10;
	else:
		SanLoss 5;

to say VRLeave:
	now VRVoidSerpentTracker is 0;
	now VRPeculiarSummonerTracker is 0;
	if VRDarkTyrantTracker > -1:
		now VRDarkTyrantTracker is 0;
	now VRTentacleAbominationTracker is 0;
	now VRTentacleAbominationLinger is 0;
	now VRPlayerMove is 0;
	now VRPlayerFacing is 99;
	if a random chance of 1 in 4 succeeds:
		say "     A single piece of pitch black rock falls to your feet once you regain control of your senses. You have obtained a [bold type]null essence[roman type] and placed it in your inventory.";
		ItemGain null essence by 1 silently;
	now inasituation is false;
	move player to Hellfire Unknown;
	stop the action;

Section 2-2 - Beyond the Veil

to VREvents: [Events that can happen]
	say "     With the ever shifting nature of the Void, you decide to explore beyond its veils...";
	WaitLineBreak;
	if Resolution of Gift From Abyss is 0 and a random chance of 3 in 10 succeeds:
		say "[AbyssalEdgeEvent]";
	else if Hellfire Club is not known and a random chance of 2 in 10 succeeds: [new way of unlocking Hellfire Club, 20% chance]
		say "[VRHellfireClub]";
	else:
		if a random chance of 3 in 5 succeeds:
			VREventsRoll;
		else:
			if VRTentacleAbominationTracker is 4:
				say "     Although as you make your way across the veil, you notice a disturbance in the walls when you attempt to proceed, as if something was waiting for you... The air around you stops, and there is no sound but just one comparable to a giant slimey slug crawling over the surface. Then, it's not just one, but many, many of them, and their shapes seem to be appearing in the form of shadows, all while something in the middle starts poking at the wall of darkness from the other side.";
				if demonologist is listed in companionList of Player:
					say "     [italic type]'I would strongly recommend a hasty retreat. Else you want to have a date with an especially... tentacular being.' says Xaedihr, as he urges you to leave.[roman type][line break]";
				if carried of ancient tome > 0 and TentacleInteractions > 0:
					say "     [bold type]Something seems to be going terribly wrong with your Ancient Tome... It seems to be pounding at your mind like an angry ram,[roman type] for the lack of a better description, as all it gives you is a throbbing headache.";
				Linebreak;
				say "     ([link]Y[as]y[end link]) - Face this abomination.";
				say "     ([link]N[as]n[end link]) - Back to the Core Line.";
				if player consents:
					say "     You ready yourself to face whatever is on the other side, keeping you from getting through. Slowly, you take a few steps forward until your body is making it across the veil, although your eyes are met with the most terrifying monster, with an obscene central mass that shapes itself into human genitalia, as dozens and dozens of tentacles flail around before trying to reach for you.";
					if carried of ancient tome > 0 and TentacleInteractions > 0:
						say "     [bold type]However...[roman type][line break]";
						VRTentacleAbominationATome;
					else:
						say "     There is no other option but to try and defeat this monster by your own hand, if you intend to go in further. It's going to be a tough fight...";
						wait for any key;
						VRTentacleAbominationFight;
				else:
					say "     Thinking twice about it, a prudent decision would be backing off, hoping the abomination leaves on its own...";
					if a random chance of 1 in 2 succeeds:
						if VRTentacleAbominationLinger < 3:
							increase VRTentacleAbominationLinger by 1;
					WaitLineBreak;
					say "[VRMoveOptions]";
			else:
				say "     [one of]Despite your attempts to leave the core line of this realm to investigate the surrounding area, you find nothing but more darkness and emptiness, at least this time.[or]However, no matter how much you attempt to push through the dimensional barriers, they keep lashing back at you, pushing you away and back within the boundaries of the core line. It looks like you won't get to see anything, at least this time.[or]Unfortunately, your perception happens to betray you, and the core line seems wider than it looks. The veils appear to be too distant for you to reach, forcing you back into your previous position for the time being.[or]Though even with all your might and determination, you simply don't manage to break free from the current of the core line. The dimensional force is too strong for the time being, and you're forced back into its main path.[or]But as you attempt to leave the core line's premises, it just looks like the Void doesn't want you to go. No, it definitely doesn't want you to reach its veils, and you end up with a headache from all the illusionary trickery it plays against your senses. You are forced to give up, for now.[at random]";
				VRNormalSanityLoss;
				WaitLineBreak;
				say "[VRMoveOptions]";

to VRTentacleAbominationATome: [Ancient Tome reacts to the tentacle abomination, triggering a debuff]
	say "     You feel a compulsion, as your hand starts moving on its own in order to grab the ancient tome that is sitting in your inventory. The book is warm, almost burning to the touch, and opens violently as the pages flip in a frenzy. Within several seconds, the abomination that you are about to face seems to be squirming in agony, its movements getting weaker as time passes. Eventually, the tome closes, and you are left with it cooling down in your hands, as the weakened abomination charges at you with what is left of its strength.";
	wait for any key;
	choose a row with name of "Tentacle Abomination" in the Table of Random Critters;
	now HP entry is 269;
	now wdam entry is 22;
	now inasituation is true;
	challenge "Tentacle Abomination";
	now HP entry is 469;
	now wdam entry is 29;
	VRTentacleAbominationFightConclusion;

to VRTentacleAbominationFight:
	now inasituation is true;
	challenge "Tentacle Abomination";
	VRTentacleAbominationFightConclusion;

to VREventsRoll:
	let randomnumber be a random number from 1 to 13;
	if randomnumber is:
		-- 1:
			say "[VRGatewayToFreedom]";
		-- 2:
			say "[VRFissuresShifting]";
		-- 3:
			say "[VREssenceSwarm]";
		-- 4:
			say "[VRMomentOfRespite]";
		-- 5:
			say "[VRUnfortunatePrey]";
		-- 6:
			say "[VRCreepyVisage]";
		-- 7:
			say "[VRTendrilPlants]";
		-- 8:
			say "[VRDimensionalTrap]";
		-- 9:
			say "[VRTheRealmKing]";
		-- 10:
			say "[VRQuestionableStuff]";
		-- 11:
			say "[VRVoidFireflies]";
		-- 12:
			say "[VROddTreasure]";
		-- 13:
			say "[VRMirrors]";

to say AbyssalEdgeEvent:
	say "     [bold type]Something unique is happening...[roman type][line break]";
	say "     Suddenly, you seem to have hit something hard. It surprises you, as it seems something ordinary, very solid and unbreakable, at least if you were to use your bare hands. It is nothing more, nothing less, than... a wall. A simple, yet effective, wall made of stone. Though this is where the normality ceases, as the whole area looks unnaturally placed where darkness would be, with even the light being as fake as the illusions the Void stamps in your mind. But this wouldn't be a complete exploration if you did not attempt to look around further, in perhaps a shiver of hope that you would find something worth the risk of being here. This wall, however, extends through a very long way towards the sides, but it creates an opening as soon as you move your foot.";
	say "     [one of]But this is not meant to be easy. Said opening is constantly shifting around as you move, daring you to chase it, and at one point, it feels like it is making fun of you, if a wall could ever do that. In frustration, you happen to give it a light punch, only to realize that your hand goes across it as if the black wall was nothing but a mirage[or]But said opening decides to crash your hopes by closing itself, and opening in the opposite direction. You try to reach for it, but it does the same, again and again, jumping from your left to your right, until you feel tempted to give up. That is, before you realize that the passage actually never closed itself and it only tricked your eyes, offering you total freedom to walk forth[or]You happen to reach said opening by simply approaching it, but as you go in, you hit your head hard on it. Apparently there is an opening, yet there is not. The inexistence of wall is still a wall, and you can't simply cross it. This impediment keeps you out of progress, but fortunately you happen to touch the wall that is visible, and to your surprise, it ceased to be a wall even though you can see it[at random]. Looks like the way forward is through the darkness, after all.";
	WaitLineBreak;
	say "     These trickeries of the mind continue for what seems to be an eternity, testing your patience and resilence to their extremes. Even if you wanted to head back, you would have to cross all the illusionary walls again, which seem to be ever shifting. In fact, whenever you walk, the opening that is your obstacle changes its position as if it was a reflex of light, and at the same time, it becomes your obstacle. You learn how to use your head to figure out your way forward, but it takes a heavy toll on you. It is expected from a place that attempts to bring you to desperation all the time, one that is unforgiving for the weak wills.";
	say "     An idea about the apocalypse and the nanites sprouts in your mind, planting a suggestion about how much better it is than this wretched place. Your thoughts dwell in the many sex-crazed creatures who would offer, or sometimes just forcingly give you, a long time of ecstacy and pleasure that is much more preferred than this darkness. You even find yourself mumbling about it out loud...";
	if demonologist is listed in companionList of Player:
		say "     [italic type]...But you're very quickly brought to reality once you feel a powerful smack on the back of your head. 'Really? Are you broken so easily? It's just a simple illusion, no need to wish to get raped out of despair.' Xaedihr is paying attention to your condition and watching after you... in his own way.'[roman type][line break]";
	else:
		say "     ...But you need to shake away from it. You can't give up here just now, this is simply a mind trick. You can still press on and hopefully find what this place is hiding from you, though not without suffering from the struggle.";
		VRNormalSanityLoss;
	say "     It doesn't take long, now. Walking just a bit more eventually pays off, and you're free of those sick walls attempting to drive you crazy. And what you see in front of you now is... peculiar, to say the least.";
	WaitLineBreak;
	say "     In a large area of only what seems to be comparable to a castle's chamber, a single light ray shines upon the handle of an upside down sword stuck into a pedestal that seems to be bleeding, but this [']blood['] is pitch black, dripping into another pool of darkness surrounding it. Something about this sends shivers down your spine, because of how much it resembles a living being with an open wound.";
	if demonologist is listed in companionList of Player:
		say "     [italic type]'I would not pull that sword if I were you. It seems to be sealing something. The moment that you remove it from the pedestal will probably release something into this realm. Something that I am not quite sure it is defeatable without some sort of extravagant ritual. But I won't stop you. Damned be this dimension, for all I care.' Xaedihr gives you important information and a personal opinion.";
	say "     It seems like you [italic type]could[roman type] pull the sword off and claim it, but you don't know what consequences it could bring...";
	say "     [bold type]Will you do it?[roman type]";
	Linebreak;
	say "     ([link]Y[as]y[end link]) - Yes, pull the sword.";
	say "     ([link]N[as]n[end link]) - No. Let this place be forgotten (This decision is permanent).";
	if player consents:
		LineBreak;
		say "     Well, this is an artifact, which might very well be a valuable treasure. Perhaps the most valuable that you will find in here, not to mention it looks like a powerful weapon. With your decision made, you step towards the pedestal, careful to not step on the puddle of dark liquid, and with one hand, you begin to pull the blade. It needs some strength to come off, but other than that, it seems to actually slide off as if it was rubbing against a slippery and soft surface. Slowly, you pull it more... and more... Until you feel the grasp of whatever it was stuck on release completely. With the sword in your hands, you pull it to you completely, admiring its shape and handiwork. It somehow has a flowing darkness around it...";
		say "     You have acquired the [bold type]Abyssal Edge[roman type] weapon.";
		ItemGain abyssal remnant by 1;
		say "     But... something's wrong. The blade is emptying itself, the dark liquid pouring out through the tip, and the sword is starting to look nothing more than a rusted, useless piece of garbage that can't even cut through paper. Did you actually recover something incredibly weak?! And about the puddle, it is... moving, somehow. You back away in that instant, towards where you came from, as you carefully observe what is happening...";
		WaitLineBreak;
		say "     There is an enormous quantity of black liquid surging through the pedestal, and the puddle begins to look less and less like one, taking shape in what seems to be a living blob of something. Then you realize it is making a pair of feet, slowly building into legs, and the whole area around you becomes surrounded by pitch black liquid running towards its core. More and more of it connects, and very quickly, what started with being a displaced pair of dark legs became a monstrous bipedal creature, easily overshadowing you by tripling your height (and still going), absurdly massive in size with a pair of powerful arms of endless strength. Its face is a ghastly visage of perilous eyes, a mouth covered in razor-sharp teeth, and a very, very long drooling tongue that unquietly wiggles around as if craving for something. However, most peculiar of all, your eyes cannot ignore what would be the shape of a human cock, throbbing and pulsing more black liquid as it stands erect, and impossibly gigantic.";
		say "     Wherever it moves, there is just darkness... It eyes you with hunger... no, it's not just hunger, but lust as well, a deep desire to consume you completely. Mind, body and soul. Its mouth takes a shape of what seems to be a smile that makes you shake, and then it retreats, leaving you back in the relative familiar core of this Void realm.";
		WaitLineBreak;
		say "     You have released the [bold type]Dark Tyrant[roman type] into this realm, and it will chase you around from now on. If it lurks close, do not stop moving, or it won't hesitate to consume you. This is a battle you cannot win.";
		say "     Also your [bold type]Abyssal Edge[roman type] became an [bold type]Abyssal Remnant[roman type].";
		if demonologist is listed in companionList of Player:
			say "     [italic type]Your half-demon friend turns to you, looking at the broken sword hilt in your hands still. 'Do not throw it away. Let me have a look at it once we leave.' he says, before he allows you to keep going. Interestingly enough, he doesn't seem fazed by what just happened.[roman type][line break]";
		now Resolution of Gift From Abyss is 2; [Dark Tyrant has been released]
		now VRDarkTyrantTracker is 0;
	else:
		LineBreak;
		say "     You decide to turn your back and leave through the long maze of... Wait, there is no longer a maze? And the place with the sword is gone, too... You are back to the relatively familiar core of this Void realm. But you feel like you have made the right decision, and that helps your sanity a bit.";
		SanBoost 5;
		now Resolution of Gift From Abyss is 1; [Nothing done]
	WaitLineBreak;
	say "[VRMoveOptions]";

a postimport rule:
	if Resolution of Gift From Abyss is 2:
		now VRDarkTyrantTracker is 0;

to say VRHellfireClub:
	say "     Now, that the void is filled with darkness, you already know. This particular spot, however... It's pitch dark. You can't see absolutely anything around you, and it almost looks like you are stepping through nothing at all! What is this place...? What is the Void attempting to create in you, this time? Is it fear, anger, confusion or plain annoyance...? You have no other choice but to keep walking, in hopes that something appear to shed some light, quite literally, into what is happening. Certainly it must be another one of its infamous traps, so you better be ready to face whatever is about to come...!";
	say "     'Huh?! What is this...? A traveler in the void? Delicious...!' And that is when you hear a very deep and masculine voice speaking to you, in a rather provocative tone. Though you can't see anything, the voice seems to be coming from all directions at once. Is it in your mind?! No, it cannot be. You hear movement, or rather, feel it, and there is an exciting scent in the air, as if they were... demonic pheromones? Is it a demon? There is an uneasy feeling that you will discover shortly, because whatever, or whoever spoke is...";
	WaitLineBreak;
	say "     ... Coming for you!";
	wait for any key;
	now inasituation is true;
	challenge "Hellfire Demon";
	if fightoutcome < 20: [player won]
		say "     Upon dealing the final blow, you hear a grunt, then stop hearing anything at all as you feel the demon who attacked you running away. Just... Who the [italic type]hell[roman type] was that?!";
		say "     No pun intended.";
		WaitLineBreak;
		say "     The darkness continues, but as long as you keep walking, you should be able to follow through a path back to the core line, or so you hope. Besides this little distraction, nothing else out of the ordinary seems to happen. Just the usual whispering and stillness of the Void that you are getting used to, at this point. Nonetheless terrifying, though... Now it is only a matter of time until you make it back to the main pathway and to a more relatively familiar area.";
		WaitLineBreak;
		say "[VRMoveOptions]";
	else if fightoutcome > 19 and fightoutcome < 30: [lost]
		say "     'Oh no no... Naughty [boygirl]... You're not going to get away from me...!' He taunts you, mockingly, as you try to fight back. However, despite your efforts, he manages to get close to you, then puts his strong arms all around you from behind and lifts you with his demonic strength. 'I got you! What's the matter? You don't like me or something? Maybe we could play a little and get to know eachother, hm?' he says, as you kick your legs around, trying to break free, and inevitably feeling something poking at your butt...";
		VRHellfireClubNext;
	else if fightoutcome is 30: [fled]
		say "     'Oh no no... Naughty [boygirl]... You're not going to run away from me...!' He taunts you, mockingly, as you attempt to outrun the demon. However, despite your efforts, he catches up to you, putting his strong arms all around you from behind and lifting you with his demonic strength. 'I got you! Trying to run away from me? We can't have that... Looks like someone needs a little punishment...' he says, as you kick your legs around, trying to break free, and inevitably feeling something poking at your butt...";
		VRHellfireClubNext;

to VRHellfireClubNext:
	say "     'Oh, sorry about that, I get very excited from fighting and chasing cute butts like yours...' he speaks about his raging boner, which is what you probably felt rubbing against your rear. 'Feel free to tug on it on our way back to your new home! I hope Master Mogdraz likes you... And lets me fuck you anytime I want...! Wouldn't that be... fun?' No matter how much you try to break free, his hold of you is tight and unforgiving. There is nothing you can do but wait until he decides to put you down, or until you arrive at the next destination. It's incredibly dark in here, you are not able to see anything, either...";
	say "     There really isn't any way of knowing where you are being taken, but the Void's dark energy seems to have disappeared.";
	now VRVoidSerpentTracker is 0;
	now VRPeculiarSummonerTracker is 0;
	if VRDarkTyrantTracker > -1:
		now VRDarkTyrantTracker is 0;
	now VRPlayerMove is 0;
	now VRPlayerFacing is 99;
	WaitLineBreak;
	say "[MogdrazIntro]";

to say VRGatewayToFreedom:
	say "     [bold type]Gateway To Freedom[roman type][line break]";
	say "     Amidst your steps towards the unknown, the dimensional walls around you shift and take shape into a tunnel right before you can perceive it completely, looking like you just walked into a pathway to an entirely different place. As the obscurity unveils itself, a dimming luminosity strikes your eyes, making you reflexively cover your face to avoid the dazzle. In fact, you feel yourself lighter as your body begins to warm, a heat of familiarity so noticeable in contrast beginning to cover you and wash the fear away. It welcomes you with an inviting embrace, as if it wanted your presence to merge with its own.";
	say "     However, you do not feel compelled to press on, having the chance to head back into the darkness of the Void if you so desire. Having this chance, nonetheless, fills you with the hope that you're inevitably deprived of while roaming the depths of such an undesirable place.";
	if demonologist is listed in companionList of Player:
		say "     [italic type]Xaedihr, who still remains in your shadow, finds it pertinent to assure you that this is safe. 'We found a way out. No danger here. Press on if you want to leave, go back if you don't. I'll follow you regardless.'[roman type][line break]";
	Linebreak;
	say "     ([link]Y[as]y[end link]) - Allow the light to take you in.";
	say "     ([link]N[as]n[end link]) - Head back, you don't trust this.";
	if player consents:
		LineBreak;
		say "     With a couple more steps forward, you are washed in peace and warmth, slowly pulling you in until you're no longer in control of your body. Your surroundings shift once more, becoming a plain white before it all fades away too quickly...";
		WaitLineBreak;
		say "     Now as you open your eyes, you find yourself in one of the streets of Red Light District, disoriented for a brief moment before all your senses return. It seems that you're safely back to your homeworld, which despite having been severely punished by the apocalypse, it isn't as desperate and dark as the Void... In fact, this is so relieving that you feel your mental state completely reinvigorated. Could it be the light that bathed you?";
		if a random chance of 1 in 2 succeeds:
			say "     And also, it looks like you've got a single [bold type]null essence[roman type] from it. That doesn't seem to happen everytime.";
			ItemGain null essence by 1 silently;
		SanBoost 100;
		WaitLineBreak;
		say "[VRLeave]";
		[player leaves the void]
	else:
		LineBreak;
		say "     Either out of mistrust or boldness, or perhaps you are simply not done with your business, you decide to ignore the light and dive into the dark once more. Its feeling alone was enough to restore some of your lost sanity.";
		SanBoost 10;
		WaitLineBreak;
		say "[VRMoveOptions]";

to say VRFissuresShifting:
	say "     [bold type]Fissures Shifting[roman type][line break]";
	say "     You intend to investigate the realm around the nearby area, however, something simply doesn't leave you be without a little unpredictability. The void itself decides to shift around and a whole swirl of motions hit you, throwing you off balance and making you spin in a way you never thought possible. You feel helpless and powerless facing such force, and your senses are turned upside down. Finally, it seems to subside, returning you to the familiarity of the core of this void realm, though not without leaving you the feeling that your relative position to freedom was abruptly changed...";
	let randomnumber be a random number from -6 to 6;
	if randomnumber is:
		-- -6:
			now VRPlayerMove is -6;
		-- -5:
			now VRPlayerMove is -5;
		-- -4:
			now VRPlayerMove is -4;
		-- -3:
			now VRPlayerMove is -3;
		-- -2:
			now VRPlayerMove is -2;
		-- -1:
			now VRPlayerMove is -1;
		-- 0:
			now VRPlayerMove is 0;
		-- 1:
			now VRPlayerMove is 1;
		-- 2:
			now VRPlayerMove is 2;
		-- 3:
			now VRPlayerMove is 3;
		-- 4:
			now VRPlayerMove is 4;
		-- 5:
			now VRPlayerMove is 5;
		-- 6:
			now VRPlayerMove is 6;
	WaitLineBreak;
	say "[VRMoveOptions]";

to say VREssenceSwarm:
	say "     [bold type]Essence Swarm![roman type][line break]";
	say "     The darkness lifts for a moment, and amidst your steps, you happen to stumble across what your mind paints as a rocky cavern, with just enough light to show its way further ahead. With no other option than to press on, you find yourself mesmerized by a sweet humming coming from the walls, as if they were singing at a calm pace. At first it seems like the void is offering a restful haven to anyone who happens to cross these boundaries, though you know better than to trust this completely. It would not be strange for this to be another trick of the mind, or even a deadly trap to ensnare your soul forever. You thread carefully, minding each step with most caution, else you would take a wrong turn towards regrettable doom...";
	WaitLineBreak;
	say "     Though at the first sight, there seems to be nothing to fear. You find yourself already sighting the exit of the cavern back into the outer area of the Void, but not before noticing some peculiar black shards attached to the rocks. You recognize their shape and color, and it seems lady luck smiled upon you. Carefully, you reach for them, to gather as many of these as you are able.";
	if a random chance of 1 in 5 succeeds:
		let randomnumber be a random number from 2 to 5;
		if randomnumber is:
			-- 2:
				say "     It looks like you were able to gather [bold type]2 null essences[roman type] just now. Given how rare these seem to be, that looks like a good number.";
				ItemGain null essence by 2 silently;
			-- 3:
				say "     It looks like you were able to gather [bold type]3 null essences[roman type] just now. Given how rare these seem to be, that looks like a great number.";
				ItemGain null essence by 3 silently;
			-- 4:
				say "     It looks like you were able to gather a whooping [bold type]4 null essences[roman type] just now. Given how rare these seem to be, that looks like an excellent number.";
				ItemGain null essence by 3 silently;
			-- 5:
				say "     It looks like you were able to gather an enormous cluster of exactly [bold type]5 null essences[roman type] in total, just now! Given how rare these seem to be, finding a bunch of them like this seems too good to be true...";
				ItemGain null essence by 5 silently;
	else:
		say "     It looks like you were able to gather [bold type]1 null essence[roman type] just now. Well, that's one more for the collection, and you're immediately back on your way.";
		ItemGain null essence by 1 silently;
	WaitLineBreak;
	say "[VRMoveOptions]";

to say VRMomentOfRespite:
	say "     [bold type]A Moment Of Respite[roman type][line break]";
	say "     Crossing the veil that separates the core line from the rest of the endless Void is always a tiresome task, but for some reason, you just feel like this time you were rewarded for your efforts. Not materialistically, no... But there is a sense of peace that overwhelms you as soon as you step in the next illusionary place that you find yourself in. Who would say that such a dark and wicked place as this would be able to create a paradise as beautiful as this one? You can't quite describe what you see, but it is light, soothing and calm, like a small waterfall quietly pouring into a small pond, the gentle breezes of nature washing the trees['] foliages, and the clear, breathable air of a green field...";
	WaitLineBreak;
	say "     There is no explanation for this, nobody would be able to come up with a solid argument as to why the Void does this, but you appreciate every single moment of it. It is actually a pity that it doesn't last for longer, though, as when you continue to walk, you are soon back into the darkness, with the utopic landscape disappearing before your eyes. No matter, the moment you just experienced was already enough to cheer you up, restoring part of your sanity and preparing you for the challenges ahead.";
	SanBoost 20;
	WaitLineBreak;
	say "[VRMoveOptions]";

to say VRUnfortunatePrey:
	say "     ... Though you hear a hissing. No, it is not behind you, nor around you. It is a sound in the distance, way ahead of you. It seems angry, as if attacking something, what you could describe as a sound of war. Well, now you cannot go back into the core line just like that, so you are forced to proceed. Your heart beats with the antecipation of finding a foe too powerful for you to face, but it is no time to think of that. You must press on and see what lies beyond...";
	WaitLineBreak;
	say "     [bold type]Unfortunate Prey[roman type][line break]";
	say "     The hissing intensifies, the primal sound of a wrathful serpent ringing in your ears as you walk closer, and then, so suddenly... A massively long shape just makes it across from your right to your left right above you, moving at such an incredible speed that you barely see it coming! But it ignores you, to your relief. Actually, you don't even think it noticed you walking by, and as furious as the creature seemed, you can't help but be glad. Nothing pleasant could come out of that. Although... what is it attacking, exactly? You cannot help but wonder what else could have entered this realm enough to piss off an enormous and dangerous creature such as a Void Serpent. You do carefully make haste to move out of the danger zone, but your eyes lay on something inevitable.";
	say "     The creature of the void, which is the menacing giant snake, open its enormous maw to completely devour an unfortunate wanderer whole. You see them struggle, even shouting and begging for help, but nothing will save them from the hungry serpent, who effortlessly takes its anthropomorphic victim into its maw, easily tugging them between its lips and starting to pull the passerby inside slowly. The serpent did not even bother to apply its venom, and doesn't just swallow its prey... You try to look closer in order to know exactly what it is doing...";
	WaitLineBreak;
	say "     Indeed, instead of simply eating it, the snake seems to be playing with it for a while, slipping its long tongue all over the panicked prey's powerless body and feeling every inch for additional taste. Eventually, however, the poor snack disappears completely inside the creature as it is being continuously pulled inside. The gigantic serpentine body then starts to swell in order to accomodate the wiggling shape that is still trying to fight their way out. Then it simply lies down to take a long rest as its prey digests inside. You know it is just a matter of time until the acids begin to work in order to melt the unlucky passerby, who is so helplessly doomed to become nothing more than extra nutrients for the giant serpent.";
	now VRVoidSerpentTracker is 0;
	WaitLineBreak;
	if player is kinky:
		say "     The way the serpent seemed to feed on someone who was walking by, taking its sweet time to taste and feel its prey before swallowing them down entirely, it just seemed to turn you on, somehow... You are not quite sure why, or maybe you are? Nonetheless, this place definitely does something to you, and you can't help but be thinking about it for a while...";
		if demonologist is listed in companionList of Player and "Invoke Dream - Void Serpent I" is not listed in traits of Xaedihr:
			say "     [italic type]'Really? That turned you on? Oh, please, do remind me to kick your ass into its mouth the second it appears to fight us, then let me know how it feels! Don't worry about gruesome and slow death as your body melts in digestive acid, I will summon your spirit or something.' Ah, your snarky and sarcastic [']friend['] wishing you the best, as expected from Xaedihr. 'No, I don't wish you death, I was just being an ass. Though if you want to safely experience that, I might... be able to reproduce something nice during your sleep. Just don't... go on a suicide streak, okay? No need for that.' Oh, is he actually worrying about you? You're not quite sure what to think of that either, but it seems he can actually do something new for you.[roman type][line break]";
			say "     Xaedihr has learned a new spell, [bold type]Invoke Dream - Void Serpent I[roman type], which can be used anytime when talking to him. It will reproduce a scene with the Void Serpent at the safety of your familiar world, or even home.";
			say "     This will happen sometimes when facing certain events for kinky fellows. One could guess this is the half-demon's desperate attempt to protect those who are especially kinky from making dangerous decisions, or perhaps he's just kinky himself. We will never know.";
			add "Invoke Dream - Void Serpent I" to traits of Xaedihr;
			if Intelligence of Xaedihr < 2:
				now Intelligence of Xaedihr is 2;
			WaitLineBreak;
			say "[VRMoveOptions]";
		else:
			if "Strong Psyche" is listed in feats of Player:
				SanLoss 5;
			else if "Weak Psyche" is listed in feats of Player:
				SanLoss 15;
			else:
				SanLoss 7;
			WaitLineBreak;
			say "[VRMoveOptions]";
	else:
		say "     The way the serpent seemed to feed on someone who was walking by, taking its sweet time to taste and feel its prey before swallowing them down entirely, was absolutely terrifying. Knowing that your enemy will savor your demise in the most wicked ways only reminds you of how dangerous this place is, and that you should not linger for long.";
		VRNormalSanityLoss;
		WaitLineBreak;
		say "[VRMoveOptions]";

to say VRCreepyVisage: [Oh no.]
	say "     ... Though as you make your way beyond the veil, you find only darkness. It is worse than finding nothing at all, since the way behind you blocks everytime you manage to make it across. With no other option but to continue, you thread carefully in hopes of this being just tough luck and nothing special, or just a tiny little drawback. Have to remain positive in one if to make it through this place safely, but the atmosphere is so dense... There is only lifeless silence, nothing else at all. It is as if you went somewhere you should not be walking into... Your mind is immediately thrown into disarray.";
	if demonologist is listed in companionList of Player:
		say "     [italic type]Then you look back, looking for your companion. He's gone. Between you and your surroundings, there is nothing but darkness.[roman type][line break]";
	WaitLineBreak;
	Linebreak;
	say "     ([link]Y[as]y[end link]) - Keep going.";
	say "     ([link]N[as]n[end link]) - Turn back.";
	if player consents:
		Linebreak;
		say "     You shall not be deterred, and with your determination follows the intent to keep going. One step into the darkness, then another, threading carefully through the pitch black path...";
		say "     Then, a sound coming out of nowhere, like a menacing growl just barely audible. With it, comes a heartbeat... [italic type]Thud... thud... ... thud... thud...[roman type], slowly and steady, deep yet weakened, it thuds in your ears like a fragile pulsing. Only one thing comes to your mind as you glance around, looking for answers...";
		WaitLineBreak;
		say "     Then you find... Something... Something undescribable. Something that never crossed your imagination. Something... that definitely suggests...";
		WaitLineBreak;
		say "     ... You should not be here.";
		Linebreak;
		say "     ([link]Y[as]y[end link]) - Continue forward.";
		say "     ([link]N[as]n[end link]) - Go back... Now.";
		if player consents:
			Linebreak;
			say "     You really, really should not...";
			WaitLineBreak;
			say "     You should have gone back... There's a great peril up ahead, no chance you will make it... It comes for you, and then... It's over.";
			WaitLineBreak;
			say "     There is no explanation or any possible description to what happened to you next. No words can describe it. Your soul was utterly and ultimately shredded to pieces, abandoned and forgotten for all eternity. You feel an intense discomfort as your entire body is pulled by many too powerful hands, only seeing yourself being forced inside some sort of dark goo while being grabbed and groped on from everywhere. From your legs, to your waist, then to your chest, you fully sink until your head too is submerged, making any form of breathing impossible. There is only a name that repeats in your mind, over and over, which you cannot quite understand. Too many letters, too many tongues, it sounds like a name of a demon. A great tyrant of unrivaled power... Though not that it matters anymore. The void has taken you completely, owning you forever, its empowering grasp holding you, your body's movements no longer yours, until any control you had fades away, your essence suffocating in its embrace.";
			WaitLineBreak;
			say "     You should have not found this place. The truth is a heavy burden to carry.";
			WaitLineBreak;
			now battleground is "Void";
			the Player was ended by "A Lot Of Doom";
			trigger ending "Player has died";
			end the story saying "You have perished in the Void.";
		else:
			Linebreak;
			if "Strong Psyche" is listed in feats of Player:
				say "     You are sweating profusely, trembling and in the verge of panic. You cannot quite explain what you just saw, but you don't want to be in there again. You are back in the core line, and the entirety of the void seems like a much better place than whatever that was. Actually, that is, one hundred percent, your only comfort, which you use to the fullest in order to snap back into reality.";
				SanLoss 10;
				WaitLineBreak;
				say "[VRMoveOptions]";
			else if "Weak Psyche" is listed in feats of Player:
				say "     ...'Oh, you poor unfortunate soul. Were we not merciful for the weak, you would have perished here...'";
				WaitLineBreak;
				say "[VRGatewayToFreedom]";
			else:
				say "     You are sweating profusely, trembling and in the verge of panic. You cannot quite explain what you just saw, but you don't want to be in there again. You are back in the core line, and the entirety of the void seems like a much better place than whatever that was. Consider yourself very lucky if you manage to leave this place in any decent condition.";
				SanLoss 25;
				WaitLineBreak;
				say "[VRMoveOptions]";
	else:
		say "     With a breath of relief, you fortunately manage to make it back to the core line. That was one slightly scary miscalculation, ";
		if "Strong Psyche" is listed in feats of Player:
			say "though you managed to hold tight and remain calm through this. You should be very proud of yourself. Not many can achieve this feat.";
			WaitLineBreak;
			say "[VRMoveOptions]";
		else if "Weak Psyche" is listed in feats of Player:
			say "or well, more like an absolutely terrifying experience. You were on the brink of panicking! Why are you even here?! You cannot endure things like this! You better leave this place immediately, it was not a good decision to come in here with your weak mental condition! That is, if you can even succeed, now. A heavy portion of your sanity just went down the hill. What were you even thinking, that you could get through this with a [bold type]Weak Psyche[roman type]?! Experienced travelers avoid this place, even! Well then, maybe the Void will have mercy on you.";
			SanLoss 25;
			WaitLineBreak;
			say "[VRGatewayToFreedom]";
		else:
			say "though you managed to hold tight through most of this, even with such an imminent fear trying to scare you into panicking. You're much more jumpy and fearful now, however.";
			SanLoss 10;
			WaitLineBreak;
			say "[VRMoveOptions]";

to say VRTendrilPlants:
	say "     [bold type]Tendril Plants[roman type][line break]";
	if player is kinky: [player is deceived by an arousing illusion]
		say "     Amidst your exploration outside the boundaries of the core line, you come across a not so strange, yet still quite peculiar visage of a dark purple forest. Its trees have purple leaves, and there is some red vegetation too, including giant mushrooms. Actually, as you keep walking, you find more and more strange shapes of plants and fungi, and they also get progressively more obscene. Mushrooms start to be found longer, and their heads shrink in width, flattening in one of the sides while popping forward. Then, the head seems to be split in two protuberances with a tiny hole in the middle, often having some sort of liquid leaking from it. As their stems begin to tilt to the sides, their bases widen and become dandling sacs with two squishy orbs inside. They are still mushrooms, you are sure, but they appear more and more like penises.";
		say "     Glancing over the red foliages, you notice that these too begin to change. Most of them had white and beige flowers blooming as if it was a radiant spring season, but the more your walk forward, the shorter and wider their blossoms are, and their core begins to flatten from the sides with an opening forming in the center. Soon, that hole is found to be slightly more defined in the shape of an almond, with some slick tubes that resemble labia being its only protection from the outside. Future flowers have this shape redesigned into one that perfectly immitates a vulva, and further ahead, they glisten as if they were moist, oozing a very sweet aroma whenever you get closer to them.";
		WaitLineBreak;
		say "     Both these manifestations of flora and fungi are often covered in tendrils instead of stems and leaves around them, and they wiggle on their own like moving tentacles. They give you an odd sensation of insecurity as you look at them, ";
		if "Strong Psyche" is not listed in feats of Player:
			say "but at the same time, they are oddly inviting. Either it's the dick-mushrooms looking so smooth and touchable with that thick liquid leaking through their slits, or the sweet smelling cunt-flowers with an orifice that looks so soft and warm inside, and of easy access too, your mind begins to get filled with all sorts of wicked, perverted ideas. Not to mention that the air smells so good... You really don't stand a chance, your [bold type]psyche is not strong...[roman type][line break]";
			Linebreak;
			say "     ([link]Y[as]y[end link]) - Gladly inhale all of that sweet fragrance.";
			say "     ([link]N[as]n[end link]) - Let it fill your lungs with a deep breath.";
			if player consents:
				Linebreak;
				say "     ... That you're simply compelled to breathe it in.";
			else:
				Linebreak;
				say "     ... That you're simply compelled to breathe it in.";
			WaitLineBreak;
			VRTPKinkyLoss;
		else:
			say "but at the same time, they are oddly inviting. Either it's the dick-mushrooms looking so smooth and touchable with that thick liquid leaking through their slits, or the sweet smelling cunt-flowers with an orifice that looks so soft and warm inside, and of easy access too, your mind begins to get filled with all sorts of wicked, perverted ideas. Not to mention that the air smells so good...";
			Linebreak;
			say "     ([link]Y[as]y[end link]) - Gladly inhale all of that sweet fragrance.";
			say "     ([link]N[as]n[end link]) - Cover your nose and mouth immediately!";
			if player consents:
				Linebreak;
				say "     ... That you're simply compelled to breathe it in.";
				WaitLineBreak;
				VRTPKinkyLoss;
			else:
				Linebreak;
				say "     ... That you feel almost compelled to breathe it all in! Fortunately, you're strong enough to take hold of your body before you do it, covering your nose and mouth the instant you sense this peril. Thanks to your strong psyche, you are able to get the hell out of there before anything bad happens, making your way through that void-created wicked forest, until your surroundings begin to darken once more. Having found a path back to the core line, you are now safe and sound. For the time being.";
				WaitLineBreak;
				say "[VRMoveOptions]";
	else: [not being kinky reveals the true nature of this area, a nest of tentacle abominations]
		say "     Amidst your exploration outside the boundaries of the core line, you come across a not so strange, yet still quite peculiar visage of a dark purple forest. Its trees have purple leaves, and there is some red vegetation too, including giant mushrooms. Actually, as you keep walking, you find more and more strange shapes of plants and fungi, and they also get progressively more obscene... For a moment, the flowers begin to resemble the female sex the more you walk further ahead, and the mushrooms attempt to take a phallic shape, but something seems to be going on. It is as if they were struggling to form in your mind, as the shapes seem to disturb you more than what perhaps was the intention...";
		say "     Then, they suddenly begin to burst open, and the entire atmosphere of the forest begins to change. You no longer feel the scents of the plants and vegetation growing around you. Instead, the ponds darken, the sky breaks, and everything around you rots. What were once trees shatter, fungi and flora alike melding into some kind of tendril abomination. You hear laughs, grunts and screams all around you, their voices banging on your head like church bells, inviting you to give in. 'Don't my flowers smell great...? I bet you'd like to come closer...' says one. 'You could just take a sip of my sweet juice... and give up your soul... let us EAT you...! We'll make you feel goooood...' says another... All of them seemed to be the previous flowers and mushrooms attempting to draw you into them. They are now horrifying tentacle abominations, and it looks like they want to [italic type]eat[roman type] you!";
		WaitLineBreak;
		say "     Luckily, they cannot move, so you make your way through this cursed forest as fast as possible, without looking behind. Eventually, you are back to the core line, with that visage of nightmares gone. That must have been a nest full of them! You won't be able to erase that image from your head...";
		VRNormalSanityLoss;
		WaitLineBreak;
		say "[VRMoveOptions]";

to VRTPKinkyLoss:
	if demonologist is listed in companionList of Player: [Xaedihr is there]
		say "     [italic type]Noticing your state of uncontrollable arousal, Xaedihr intervenes immediately.[roman type][line break]";
		say "     'Okay, insult me however you want, decide to not bring me along next time, but right now, I won't let you touch these no matter how hard you try.' What?! Xaedihr is keeping you away from the fun! He is just pushing you forward without letting you have a tiny little whiff of those sweet fragrances, or just a brief touch of that floral warmth... or a taste of that oozing thick sap... 'There is enough dick and pussy to play with outside, you don't need these. Jeez, what are you, a sex addict? Must I save you from making dumb decisions all the time?' You struggle, even though the half-demon's strength is incomparably significant against yours, but you are in no real condition to think for yourself right now. For some reason. What were you doing, again? Right now, you are just feeling Xaedihr's considerable bulge rubbing against your buttocks, and his muscular arms holding yours still very tightly...";
		say "     'Ah, crap... This place goes on and on... What a nuisance.' He's starting to pant, having to almost drag you forward as you mindlessly fight against his efforts. 'How about covering your nose next time you're in here?! Ugh, and stop... thrashing about! I swear I'll knock you out!' Although no matter how much the half-demon attempts to stop you, he too begins to feel affected by the continuous rubbing you're providing him with, a hard-on starting to appear obvious underneath his dark pants. 'Fuck fuck fuck... Not now... You horny, fucking... Argh! T-this is not the place for that!' Now he is seriously panting from arousal, and when out of ideas, he attempts to cover your nose and mouth from breathing in any of those arousing spores. The other hand, however... heads towards your sex, as he begins to caress you between the legs.";
		WaitLineBreak;
		say "     Somehow, that seems to start making some effect...";
		Linebreak;
		say "     ([link]Y[as]y[end link]) - This is enough for you to calm down.";
		say "     ([link]N[as]n[end link]) - You still need to grab his foot-long dong in order to be fully satisfied.";
		if player consents:
			LineBreak;
			say "     You probably had an orgasm or two as Xaedihr held you so well, groping against your privates until the arousing scents began to subside, and you were back to seeing everything darken. Once you come back to your senses, you see your half-demon companion flushed and attempting to catch his breath. 'I will seriously kill you next time.' He doesn't really mean that, deep down he was just very worried about you. Although both legs and clothes seem to have gotten a little messy from the ordeal... Nevermind that fact, you are back to the core line safe and sound. For the time being.";
			WaitLineBreak;
			say "[VRMoveOptions]";
		else:
			LineBreak;
			say "     There is still one thing you require to be fully content, which is obviously retributing the gesture. Before he can react, you slip one hand over his throbbing rod, so warm and pulsing in your grasp by the time you manage to get your fingers around it. 'No no no, please... B-behave...!' he tries to call you out, but it is too late. He's already thrusting against your butt as you hold that big cock in your hand. Despite how harder you're making his task of safely bringing you out of the spores' reach, he doesn't give up. Between involuntary thrusts and his determination for success, the latter prevails as the arousing scents begin to subside, and your surroundings darkening with each step.";
			say "     Once you come back to your senses, you see your half-demon companion flushed and trying to catch his breath, with his hard dick in your hand. You actually did not remember you really went for it. 'If we were in any other place, in any other occasion, I would fuck the hell out of you until you begged me to stop, as hard and raw as I could so you could actually feel HORRIBLE PAIN!' You can't help but chuckle, completely oblivious of what you've just done, but he's right about one thing. This is no place to have sex, even as tempting as it sounds... With that big dick still throbbing in your hand and all... just kind of asking to be stroked...";
			Linebreak;
			say "     ([link]Y[as]y[end link]) - Definitely not the place to do this...";
			say "     ([link]N[as]n[end link]) - ... But you're safe as long as Xaedihr is here, right?";
			if Player consents:
				Linebreak;
				say "     With all due respect, you proceed to take your hand off his throbbing meat, which is immediately - or rather, a little not too easily - stored back into his pants. 'Okay... Phew... Let's just move on... I... I will be fine.' Somehow you doubt that, seen how impossibly hard the bulge in his pants is pulsing right now, but following the recommendation of general good sense and safety, you will ignore it and seek a path back to the core line.";
				WaitLineBreak;
				say "[VRMoveOptions]";
			else:
				say "     There shouldn't be any harm for having just a little fun on the way... You keep your hand on his dick, looking up at him only to see the look in his face. 'Hng... It... feels really good... your hand in there... Fuck... I can't believe we're doing this here...' You step in, getting closer to him, and with a better grasp over his thick twelve incher, you proceed to slide your hand up and down through his shaft, only teasing the tip of his cock with your fingers. He's leaking so much by now that it's only a matter of time until your hand is soaked in precum. He is breathing deep and hard, trying his best to withstand the enhanced pleasure provided by the spores and your precious touch. Poor man must have inhaled a lot of it while trying to get you away... So you figured he needed a reward.";
				say "     'Yeah... just like that... Mmmph, get the tip, too... and my balls... Fuuuck... This is hot... Why is there a thing like this out here in the fucking Void... Of all places...!' You shrug while following his indications, to provide the best feelings for your friend, whose manhood throbs impossibly hard in your grasp. You do your best to grab his balls and focus the stimulation around the tip. He holds your shoulder tight, then slides his own hand over to your ass, pulling you to him and resting his chin over the side of your neck. You can feel him inhaling and exhaling deeply over your body, together with the intense pounding of his heart, standing so close as he is from you, right now.";
				WaitLineBreak;
				say "     He lets out a moan, and then whispers in your ear... 'P-please... make me cum before I lose it completely... You're... Driving me fucking mad...' It's either that or the druglike effect of the spores, though then he's whispering that he loves you very much, and his words stop making any sense briefly after some other otherworldly proposals, like some you have never ever heard in your life. Can demons really do that? And what in the hell is a...? Nevermind that, you have to snap him off this state, and that will only happen when you make him blow. Putting all your efforts together, you begin to jerk his cock faster and faster, making sure you give all of his equipment their share of attention, and you get him moaning more soon enough.";
				say "     Then, while grabbing his balls, you notice a pulse, then a swell... and right after that, they begin to raise, and his cock gets even harder, which apparently was possible. The more you stroke, the more maddened his mind gets, which starts to seem worrying, but you can't stop now. He is in total ecstacy, all of his thoughts clouded by an intense pleasure, though you know Xaedihr also has a lot of stamina... He needs to be stroked for a long, long while, until he finally shoots that sweet and thick cum of his. Hoping it won't take too long though, you really put on an effort at doing it until your arms ache, making sure you don't stop no matter what...";
				WaitLineBreak;
				say "     You begin to sweat and run out of breath, your arm muscles hurting all over, but you feel he's so, so close... He's biting his underlip, closing his eyes, holding his own breath as he's letting out grunts of pleasure, jerking his hips forward and flexing his midriff, and you bet he's curling his toes, too... If you were to stop now, he'd lose all of it... So you give your very best, until the point your arms are just moving on their own and you cannot feel them anymore. And if you've gotten to this point, it means you will slow down... and you can't let that happen... But fortunately, at the very last brink of effort that you're able to put, you manage to send him past the point of no return.";
				say "     Now it is only a matter of accompanying the stream, so you make way for it. In a matter of seconds, the first blast of jizz comes right out, and is shot... a very far distance. Then the second, and then the third, all gushing out in pure bliss as a relieved smile on his face opens with plenty of moans to fill the silence between you. You continue to jerk him, until the very last drop, squeezing all of it out as his orgasm begins to subside. The half-demon nearly loses his balance as he's grabbing onto you, trying to catch his breath as his mind slowly returns to him.";
				WaitLineBreak;
				say "     'This... This is all your fault...' he says, while still dizzy from the intensity of his climax. 'I swear if you stopped there for a second... You would be sorry...' Your arms are shaking from the ordeal you've put them through, but it was all worth it. Xaedihr is back to his own self and a little less bothered. 'Phew... Anyway... Let's get going. I'd much prefer to have our next sexual intercourse far, far away from here. Without involuntary substance abuse, preferably.' You nod, figuring that, indeed, you should get going and seek a path back to the core line.";
				WaitLineBreak;
				say "[VRMoveOptions]";
	else: [player is on their own succumbing to the tendril plants/tentacle abominations]
		say "     With nobody to stop you, there is plenty of choice regarding which scent you want to follow. The sweet scent of the vaginal flowers is the most predominant in this area, but the visual appeal of the dickshrooms is not standing too far behind...";
		Linebreak;
		say "     ([link]Y[as]y[end link]) - You will go for the cuntflowers.";
		say "     ([link]N[as]n[end link]) - Those dickshrooms look like fun.";
		if Player consents: [Both options will lead the player into a bad end, as they are eaten alive by the tendril plants/tentacle abominations]
			Linebreak;
			say "     There is nothing sweeter than a gorgeous, large and plump pussy, which happens to be a beautiful flower, shaped like a womanhood and exhaling this scent that begins to slowly drive you crazy... You cannot help yourself with such an odd attraction, and it seems to really want you to have your way with it. When you go for a taste of that plump vaginal orifice, leaking what seems to be its nectar, it tastes strongly like womanly juice, triggering just the right buttons in you. Never have you been so turned on by breathing their scent over and over, all the while giving this floral vulva the best cunnilingus that you possibly could, almost feeling like you want to go in it. The feeling is overwhelming, and the dirtiest of thoughts suddenly come to assault your mind...";
			if player is male:
				say "     You don't even think twice, grabbing your [cock of player] cock with one hand, which is fully hard and throbbing by now, and begin to rub it across its silky smooth petals, and the receptive orifice that just seems to be begging for it. The sensation is incredible, as if every sensitive spot around your penis was increased by a hundred times, on a whole another level that you have never experienced before. Might be your intoxicated body, but you cannot let go of this... You want to shove your dick inside, past those floral lips, inside that moist and leaking entrance... You go on and shove it all in, thrusting with all your might, as hard as you can, non-stop... You feel so full of energy, so pumped up, that you could go for hours without stopping once. Maybe even days... Or weeks...";
			else:
				say "     You don't even think twice, you want to rub [if player is female]your sex[else]your crotch[end if], which is, figuratively, burning with desire, and you just happen to do so, all over its silky smooth petals, and its receptive orifice that just seems to be beckoning you to get closer with. The sensation is incredible, as if every sensitive spot around your loins was increased by a hundred times, on a whole another level that you have never experienced before. Might be your intoxicated body, but you cannot let go of this... You do not know what to make of it, but it feels addictive, and you cannot bring yourself to stop. In fact, you feel so full of energy, so pumped up, that you could go for hours without stopping once. Maybe even days... Or weeks...";
		else:
			Linebreak;
			say "     There is nothing sweeter than a big, thick and throbbing cock, which happens to be a wicked mushroom, so soft to the touch and leaking continuously, turned towards you so that you could feel all of its cavernous body with your hands... Maybe even your arms, or your whole body... At some point, you really just want to lick it all over and worship this phalic floral monster that keeps bathing you in a thick and sweet liquid so similar to a man's cum. It tastes strongly like one, except even sweeter and breathtaking, and you cannot bring yourself to stop. It triggers just the right buttons in you, and never you have been so turned on by a similar sensation. You want to give it the best blowjob possible, overwhelmed by otherworldly feelings, and the dirtiest of thoughts suddenly come to assault your mind...";
			if player is male:
				say "     You don't even think twice, grabbing your [cock of player] cock with one hand, which is fully hard and throbbing by now, and begin to rub it across the mushroom's [']shaft['], an exciting frotting that leaves you wanting for more. Unknowingly, you beging to slowly drag your ass in and take the tip to poke at your pucker, right between your cheeks. It is a very big one, that mushroom you are caressing, and you are not sure you could ever take it in you, but it feels so good that you just want to let yourself go. In fact, the whole warmth and the pulses it makes is enough to send you into a lust frenzy, completely overtaken by the intoxicating scent that fills your nostrils with impossible ecstacy. You grind against it, over and over, as much as you can, non-stop... You feel so full of energy, so pumped up, that you could go for hours without stopping once. Maybe even days... Or weeks...";
			else:
				say "     You don't even think twice before you're rubbing [if player is female]your sex[else]your crotch[end if], which is, figuratively, burning with desire, against that big fat mushroom cock that keeps throbbing at the sight of your arousal, or so you would like to think. It seems to beckon you to get closer, and the sensation is incredible. Unknowingly, you beging to slowly drag your butt in and take the tip to poke at your [if player is female]pussy, right between your legs[else]pucker, right between your asscheeks[end if]. It is a very big one, that mushroom you are caressing, and you are not sure you could ever take it in you, but it feels so good that you just want to let yourself go. In fact, the whole warmth and the pulses it makes is enough to send you into a lust frenzy, completely overtaken by the intoxicating scent that fills your nostrils with impossible ecstacy. You grind against it, over and over, as much as you can, non-stop... You feel so full of energy, so pumped up, that you could go for hours without stopping once. Maybe even days... Or weeks...";
		say "     Just... Just how long have you been here...?";
		WaitLineBreak;
		VRTPBadEnd1;

to say VRDimensionalTrap:
	say "     Walking beyond the veil is only so often rewarding, though, and it seems this one time is not meant to be...";
	WaitLineBreak;
	say "     [bold type]Dimensional Trap![roman type]";
	say "     A false step catches you by surprise, and you feel yourself falling an impossible height. The darkness around you twists and twirls as you get motion sick, then you're violently thrown back into the core line, as a deafening sound of... wave frequencies, if there are any better words to describe that pitched down humming, bursts as the trap carries you. This must have certainly made a commotion, and some of the monsters could have been drawn by this... You better watch your step from now on.";
	let randomnumber be a random number from 1 to 4;
	if randomnumber is:
		-- 1:
			now VRVoidSerpentTracker is 3;
		-- 2:
			now VRPeculiarSummonerTracker is 3;
		-- 3:
			if VRDarkTyrantTracker > -1:
				now VRDarkTyrantTracker is 3;
			else:
				now VRVoidSerpentTracker is 3;
				now VRPeculiarSummonerTracker is 3;
		-- 4:
			now VRVoidSerpentTracker is 3;
			now VRPeculiarSummonerTracker is 3;
	WaitLineBreak;
	say "[VRMoveOptions]";

to say VRTheRealmKing:
	say "     [bold type]The Realm King[roman type][line break]";
	say "     As you go past the veil, you take cautious steps through the darkness, which then seems to open into a shape similar to a ravine, with you between tall walls of rock with only a barely lit sky above. Your surroundings are, however, covered in steam, as if you were walking into a volcanic area. This is the only area of the Void that has any resemblance with Hell, and you cannot quite put your finger on why. Not that it matters, when survival is much more important in a place like this, but it doesn't cease to be intriguing. There is a strong sulfur smell, and the ground shakes every so often, making it hard to walk by. The air is also heavy and hot, making it hard to breathe, but not impossibly so.";
	say "     Then, something startles you. It is not just something, but someone, or at least some creature, walking right above you with two massive pairs of legs, so four legs in total, making the ground shake with each step it takes. They are thick, shaped like a spider's, but not quite like one, since they are covered with chitin plates. Its upper torso is made of flesh, a lean form that would be quite attractive on a person, but looks intimidating in such a monstrous creature whose arms are also four and end up in hands with sharp claws. On top of its head, two bladed side-horns are sticking out, suggesting that this is, indeed, a demon. Contrary to most creatures of the Void, this one seems to share resemblances many with the hellspawns...";
	WaitLineBreak;
	say "     It pays no attention to you, but you can't help but feel intimidated by such a gigantic being. The demon walks as if it owned the place, and it probably does. Judging by the cluster of tendrils between its legs, wiggling around like size changeable living tentacles, and the gaping darkness in their core, you have an idea of how it preys on intruders. Imagining it is [if player is kinky]surprisingly intriguing[else]terrifying, to say the least[end if]...";
	if "Strong Psyche" is listed in feats of Player:
		SanLoss 2;
	else if "Weak Psyche" is listed in feats of Player:
		SanLoss 7;
	else:
		SanLoss 3;
	WaitLineBreak;
	say "[VRMoveOptions]";

to say VRQuestionableStuff:
	say "     [bold type]Questionable Stuff[roman type][line break]";
	say "     Once you get past the veil, you are immediately brought into something... odd, to say the least. Not that this is something strange for a place like the Void, but the weirdest thing about this is that the area you are currently in looks so shockingly normal. It is as if you were on the outside world, but you still feel and hear that odd humming of the darkness that only exists here. When it comes to your surroundings, once they are clearly visible, it's just a city alley, complete with all the urban noises you would hear at a pretty normal day before the apocalypse. Engines from the road, people talking, and the path you wouldn't want to take under normal circumstances because it is probably filled with thugs and junkies, or so would the common sense suggest.";
	say "     Still, it is impossible to move backwards and out of this alley, there is an invisible barrier pushing you away from the brightest paths, forcing you to take the only way ahead and further deep into the space between the two buildings. Looks like you shall do so, since there is no other option left, threading carefully and alert of any suspicious movement or noise. The Void is surely playing with your mind, but there is only so much it can do...";
	WaitLineBreak;
	say "     Nothing out of the ordinary has happene and you are halfway. The urban sounds begin to fade away, muffled by the walls at both of your sides. That is when things begin to act strangely. You could swear that the pathway wasn't as narrow as it is, and the walls weren't as close to eachother as they are now, yet you're still forced to go on. The space only becomes narrower and narrower, the walls seemingly growing closer, reducing the width that you have available to walk through, and eventually, it forces you to walk sideways in order to fit your body through whatever space is left. Things are looking grim, and you see no end to the path... It just goes on and on, getting worse by forcing you to move on at a slower pace...";
	say "     You are now feeling the walls on both your back and front side as you practically squeeze through, half-regretting having crossed the veil only to find this, the fear of getting crushed by whatever this is being the only thing in your mind, even knowing this is not real. Not knowing what is happening is the most difficult thing to deal with, but you have been walking through this tight conditions for a while now, without any significant changes. Perhaps this is all it can do? Your questions remain, but finally, you see what looks similar to an exit ahead. Obviously, the path is so narrow that you really can't run or move any faster, giving you only the option to literally squeeze yourself through them a little more eagerly. It tires you, however, turning out to be an endeavor.";
	WaitLineBreak;
	say "     During one of your pauses to catch up your breath, you begin to hear some odd sounds. Something squishy, reminding you of air trying to escape some thick liquid, then a slimey stretch... It's coming from above you, so you immediately lift your gaze... only to find out that the ceiling is occupied by tons of phalic tentacles and thin-pointed tendrils slowly wiggling their way down, and an enormous [one of]veiny penis-shaped creature[or]plump pussy-shaped creature[at random] hovering over your head as their central mass, approaching you at an alarming rate. When you realize this, a drop of some thick liquid falls right on your face, and it persists no matter how much you attempt to rub it off, making your skin incredibly soft and slippery!";
	say "     Might be the thing that allows them to feed on and swallow struggling prey like you with little effort, and it does seem to do something else to you! Your entire body feels a little tingly...";
	if demonologist is listed in companionList of Player:
		say "     [italic type]Behind you, Xaedihr makes a recommendation 'Ignore that thought and proceed further. If anything happens, I can push them away. Go!'[roman type][line break]";
	Linebreak;
	say "     ([link]Y[as]y[end link]) - You could actually use this to slip your way through more easily...";
	say "     ([link]N[as]n[end link]) - Squeeze your way out immediately!";
	if Player consents: [covering themselves in the juice is a bad idea, its arousing properties with the rubbing against the walls makes it more difficult... the beast catches up and swallows the player. Xaedihr is unable to save them, his only option being leaving on his own.]
		Linebreak;
		say "     Yes! You could just keep rubbing that slimey and slippery stuff all over your body and stuff, and that will help you feel better while grinding and rubbing yourself against the walls to... Wait, it does feel good... So good...! The more you cover yourself with it, the better it feels. You can't stop... You cannot help yourself but to continue to do it... What is it? Why is it so hot...? Why can't you think anymore? There is just ecstacy taking over your mind, now, and you're unable to move an inch. It's not like you want to, even, it feels so damn good that you don't care about anything else. Is there someone calling for you? Was there any goal you had in mind? None of it matters now. You want to feel all of these hot tendrils that were to come to get you caress every inch of you, as they do so well...";
		if demonologist is listed in companionList of Player:
			say "     [italic type]You see a flash of red before your eyes... You don't remember what it could mean... But it is gone, now.[roman type][line break]";
		WaitLineBreak;
		VRTPBadEnd2;
	else: [player successfully squeezes through the path, only barely escaping the tentacle abominations]
		Linebreak;
		say "     Well, you cannot stay here! Those things will catch up to you if you don't move! Making haste, you try your best to squeeze through the walls the fastest you can. It actually starts to hurt, the friction between your skin and its hard surface will surely leave cuts and stratches on your whole body, but it is a matter of survival, so you cannot be picky about it. Trying your very best, you try to create enough momentum to slide through between the walls by pushing yourself with both your hands, knees and feet. It hurts, badly, and your back feels like it's burning hot, but you don't let that discourage you. Just a little hesitation would have you covered in that thick stuff, and gave any of its extensions enough time to catch you.";
		say "     Your hasty movements provoke the tendrils even further, and them seem to be moving faster thanks to that... Which is bad. Some of them graze at your arms as you shake them off, and one wraps around your leg as you try to kick it away. You are so close...";
		WaitLineBreak;
		if demonologist is listed in companionList of Player:
			say "     [italic type]'Away with you, filthy stuff.' says Xaedihr in a contemptuous tone, as flames as black as the void burn through the tentacles that are threatening you. Surprisingly, it doesn't harm you in any way, but it surely relieves you. Besides that, the tendrils are still small enough to kick, shove away and smash against the wall as they retreat in pain, or something similar. Adrenaline surges through you as you fight for your life, until you're finally able to pull off and escape through the exit of this wretched area!";
			say "     You breathe in relief, for being back in the relative familiarity of the core line. 'Now we know where those demons got the tentacle beasts from. It appears they have easy access to the void... This is bad.' comments your half-demon companion, contemplating the abominations from just now. They appear to be of the same ones you faced in the Hell Realm.[roman type][line break]";
			if "Strong Psyche" is listed in feats of Player:
				SanLoss 2;
			else if "Weak Psyche" is listed in feats of Player:
				SanLoss 7;
			else:
				SanLoss 3;
		else:
			say "     ... That you cannot give up just now. More of them come for you and manage to take hold of your body, but they are still small enough to kick, shove away and smash against the wall as they retreat in pain, or something similar. Adrenaline surges through you as you fight for your life, until you're finally able to pull off and escape through the exit of this wretched area!";
			say "     You breathe in relief, for being back in the relative familiarity of the core line. That experience will certainly scar you forever.";
			if "Strong Psyche" is listed in feats of Player:
				SanLoss 5;
			else if "Weak Psyche" is listed in feats of Player:
				SanLoss 15;
			else:
				SanLoss 7;
		WaitLineBreak;
		say "[VRMoveOptions]";

to say VRVoidFireflies:
	say "     [bold type]Void Fireflies[roman type][line break]";
	say "     While moving through the darkness of what lies beyond the veil, you find yourself entering some sort of underground area. Obviously, this is the void, so what you are seeing is merely a place that looks like a cavern, albeit a huge one, that only seems to increase in size the more you proceed further ahead, until the point you are standing in the middle of nothing. What saves this place from being absolutely terrifying is that you have a few dimming lights floating around you and a sense of relative peace. It is an odd feeling, but you welcome it as a moment of respite. In fact, you feel surprisingly calm.";
	say "     The source of all the lights seems to be a crystal in front of you, which is dimming with a very soft light, but seems to welcome you in its vicinity. The floating ones approach you in a circle, and you can hear them whispering.";
	if Resolution of Luminous Harem is 1:
		say "     [bold type]They seem to remember you[roman type] from the other time you attempted to talk to them. Something suggests that they are more open for interaction, judging by the way these little lights are flying around you much closer than before.";
	else if Resolution of Luminous Harem is 2:
		say "     [bold type]They seem to welcome you[roman type]. The sparklings simply dance around you, reaching very close as most of them stopped fearing your presence at all since your previous interaction with them. There is a strange warmth in the light...";
	else if Resolution of Luminous Harem > 2:
		say "     [bold type]Their disposition looks far less shy than before[roman type]. You can actually see their humanoid translucid shapes, nearly invisible to the naked eye, gathering around you, wanting to stretch their reach towards you...";
	Linebreak;
	say "     ([link]Y[as]y[end link]) - Attempt to communicate with them.";
	say "     ([link]N[as]n[end link]) - Try to catch them.";
	if Player consents: [For now, this will only provide a boost in sanity]
		Linebreak;
		if Resolution of Luminous Harem is 1:
			say "     As they perceive you attempting to communicate with them, you hear soft giggles all over you. It startles you at first, but slowly, it begins to give you peace of mind. The little lights dare to approach you even more than before, until they are ever so slightly touching your skin, an odd sensation of tingling surging all around you, like feathers with a dimming warmth brushing against your skin. You could swear you even saw a very translucid hand groping against your tight, rubbing it down teasingly as you feel a heat running up your crotch, followed by a chuckle as you notice this. Somehow, it made you feel hot... and aroused.";
			say "     But before you could feel anything else, the touching stops as they hastily retreat deeper into the cave, as the crystal's light fades away once more. You are left alone, back to the darkness of this mysterious place. Their nature intrigues you more and more, but their presence has surely boosted your sanity.";
			say "     Without much else to do, you can only proceed further ahead, eventually following on a path back to the core line.";
			SanBoost 10;
			now Resolution of Luminous Harem is 2;
		else if Resolution of Luminous Harem is 2:
			say "     Once again, you find yourself in front of the now much less shy little lights, who dance around and giggle at your presence, welcoming you in their sacred hideout. The crystal in the center dims with a powerful luminescence as the small sparklings advance to touch you. That soft, soothing sensation running down your skin gives you slight shivers of pleasure, as a few ethereal hands come to reach for your legs, arms, and eventually, your chest. It is as if there were real people feeling you up with their bare hands, and it is all starting to feel really good. You are actually relaxed, your breathing is more steady and calm as your mind begins to drift away in bliss.";
			say "     Closing your eyes, you focus on the sensations these fireflies are providing you, warmth all over your body as you continue to feel all the smooth touching, the tender gropes and the pleasure building up in your loins. Then, suddenly, you feel a kiss on your lips from something completely otherworldly, one that you can only perceive once you take a glance at what is in front of you. It is a translucid humanoid shape, glowing green like the crystal in the middle of the cave, softly making out with you, as others of similar characteristics float and dance around you. Lust begins to surge through you, and all you want is to surrender to this place...";
			WaitLineBreak;
			say "     However, it all comes to an end once the ground shakes. Someone, or something, seems to have caused a disturbance in the vicinity, which alerted the fireflies, which... you are not so sure they are fireflies anymore. After returning to their initial shapes, as little sparkles flying around, they retreat deeper into the cave, as the crystal stops emanating any light at all. Again, you are left alone, back to the darkness of this mysterious place. Their nature continues to intrigue you, the feeling still soothing to your mind... But it does get harder to think when you imagine all those glowy, translucid hands feeling you up all over...";
			SanBoost 5;
			now Resolution of Luminous Harem is 3;
		else if Resolution of Luminous Harem > 2: [full-fledged sex scenes]
			say "     You find yourself, once more, surrounded by the warm and nice lights that welcome you in their grounds. This time, however, you feel yourself being pushed towards the depths of the cave, past the crystal that you have seen from the entrance, and over a few turns among the rocky black cavern. Within a few moments, an utopic scenery surges before your senses that, while still in the underground cave setting, manages to look soothing and pleasant. With another crystal in the middle illuminating the surrounding area, the most prominent sound is the water falling into small ponds by the walls and edges of this division, which the fireflies seem to take great comfort with.";
			say "     As they continue to make sure you feel at home, once they get past the entryway, their fully humanoid forms are revealed. All are mostly glowy, green translucid fit silhouettes that are very similar to humans, of various shapes, sizes and faces. They lead you to a wide stair of rocks and stones, and there, they sit by you, feeling your body all over with their incredibly soft hands.";
			say "     They look astoundingly beautiful in your eyes...";
			LineBreak;
			say "     [link](1)[as]1[end link] - Most of the translucid shapes are manly.";
			say "     [link](2)[as]2[end link] - A great part of them are female.";
			say "     [link](3)[as]3[end link] - There is a good mix of males and females.";
			now calcnumber is 0;
			while calcnumber < 1 or calcnumber > 3:
				say "Choice? (1-3)>[run paragraph on]";
				get a number;
				if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
					break;
				else:
					say "Invalid choice. Type [link]1[end link] to choose male interactions, [link]2[end link] for female interactions or [link]3[end link] for both.";
			if calcnumber is 1: [Male Void Fireflies]
				Linebreak;
				say "     And turning your glance over their crotches, you realize most of them are imitating male figures, complete with their appropriate equipment. They make a suggestive approach towards you, knowing about your interest for them, and with tender touches and movements, the formerly tiny sparkles [if player is not naked]remove all of your gear[else]they feel your already naked body all over[end if] before leading your hands to their own smooth, translucid skins. It feels as you expect, very soft, almost as if you were touching a form of consistent solid liquid that holds tightly around the shape of bone and muscle. The luminous men also come closer to you, one of them climbing onto your lap as you feel something poke at your midriff, his about eight inches long boner that keeps throbbing at nearly every second. Actually, it is not just there, as some others follow all around you, jerking their cocks in high arousal as their distance from you grows shorter.";
				say "     Aware of your ";
				if player is male:
					say "own [cock of player] dong raising to attention, the bright green man reaches for it with one of his hands behind his back, then leans forward to kiss you on the lips. At the same time, you feel another two manhoods craving for attention nearing your face from each side, and as the creature on top of you lets go of your mouth, he gently directs it towards one of the glowsticks as the men smile in their earnest. Without a reason not to please the two green figures, you give one of their dicks a kiss as you grab the other, slowly making your way across the shaft towards his goo balls, only to return where you came from and do the same to his mate's. After you are done teasing them, you figure it is time to actually let them enjoy your mouth to its fullest, letting their cocks slip past your lips and give them a blowjob, one at a time, their dicks exchanging places every once in a while.";
					WaitLineBreak;
					say "     While you are distracted with the two glowing guys enjoying your best oral skills, the remaining group forms a circle around you all, occasionally wanting to trade places with those in action. They cycle through, except the one on your lap, who decides to grab your by now very hard member and rub it across his bubbly cheeks, then slip it between them, making you shiver in pleasure. The smooth surface of his transparent and incredibly soft gooey skin gives nothing but an increasingly great sensation as it rubs against your glans, and you can't help but want to shove it right in that plump green ass. You don't have to move an inch, however, as the humanoid creature does all the work. He takes a seat on your cock, slowly descending upon it as you feel that slimey tunnel stretching in order to fit it inside, so tight and good that it begins to [italic type]melt[roman type] your mind with ecstacy.";
					say "     With your mouth still busy with the gleaming cocks that come and go, the former firefly continues to ride you as you lose track of time, making your manhood throb in and out of that sweet caressing ass, each movement visible through his transparent skin from the outside. Their silent moans are only sparks in your ears like scintillating lights, especially from the one taking your manhood in him, stimulating you in all the right spots until you feel a surge of extreme pleasure building up in your gonads. The more he keeps jumping and humping on top of you, the better it feels, all until your breathing intensifies, and while the men who stand around your head bring their cocks into their hands to stroke as fast as they can...";
					WaitLineBreak;
					say "     As your climax approaches, theirs do too. A glob of thick, warm glowing cum hits you right across your face as one of them orgasms, and soon, more follow. One after the other, they continue to stroke their cocks as each and every one of them, one at a time, covers you with their full load, which slowly begins to drip into your mouth, around your jaw and onto your neck. Soon, the translucid man riding your cock also brings himself to cover all your torso with an especially hard jet, managing to reach your chest before dropping down to the rest of your midriff and waist. By now, your entire load would have found its way out through your own member and into the voidling's ass, making it throb in pleasure for each single spurt you shoot, ending up visibly floating inside him.";
					say "     The men find their way of thanking you by continuing to massage your whole body as you try to catch your breath, and with this, they splatter all their cum with their touch along the rest of you. It feels so relaxing that you feel compelled to close your eyes and enjoy the sensation of an entire harem of sexy glowing men feeling every inch of you, with so many hands moving and feeling you from every side and corner, so many lips kissing you in every spot and from every angle... It is impossible to resist just letting your mind go and surrender to all of this...";
					WaitLineBreak;
				else: [female or genderless]
					say "own arousal building in your loins, the bright green man reaches for the area with one of his hands behind his back, then leans forward to kiss you on the lips. At the same time, you feel another two manhoods craving for attention nearing your face from each side, and as the creature on top of you lets go of your mouth, he gently directs it towards one of the glowsticks as the men smile in their earnest. Without a reason not to please the two green figures, you give one of their dicks a kiss as you grab the other, slowly making your way across the shaft towards his goo balls, only to return where you came from and do the same to his mate's. After you are done teasing them, you figure it is time to actually let them enjoy your mouth to its fullest, letting their cocks slip past your lips and give them a blowjob, one at a time, their dicks exchanging places every once in a while.";
					WaitLineBreak;
					say "     While you are distracted with the two glowing guys enjoying your best oral skills, the remaining group forms a circle around you all, occasionally wanting to trade places with those in action. They cycle through, except the one previously on your lap, who decides it would be best to step back, crouch behind you, and slightly lift your butt while putting both your legs around his shoulders. It takes you some time to realize what he is about to do, but all doubts vanish once you feel his tongue slipping right [if player is female]between your moist underlips[else]in your pucker[end if], moving and wiggling about in all the right spots, making you squirm with how good it feels. The man is skilled enough to send you to heaven in just a few seconds, all while your mouth is busy with the cocks that are coming and going.";
					say "     He keeps doing it as you lose the track of time, feeling his nimble mouth playing with your [if player is female]cooch[else]hole[end if] so masterfully, as he is making sure you feel every effort he is giving. But enough is enough, he eventually pulls out, only giving it a few licks before standing up, and before you are able to miss him, his tongue is replaced with a surprisingly hard cock, being shoved right in you with relative ease, as its solid gooey composition serves as a natural lubricant. With a thrust, the former firefly sends you to places, pounding you with persistence and passion as his mates have their go with your mouth. It feels so good, in fact, that the more he fucks you, the better it feels, all until your breathing intensifies, and while the men who stand around your head bring their cocks into their hands to stroke as fast as they can...";
					WaitLineBreak;
					say "     As your climax approaches, theirs do too. A glob of thick, warm glowing cum hits you right across your face as one of them orgasms, and soon, more follow. One after the other, they continue to stroke their cocks as each and every one of them, one at a time, covers you with their full load, which slowly begins to drip into your mouth, around your jaw and onto your neck. Soon, the translucid man also brings his own rod out to cum all over your torso with an especially hard jet, managing to reach your chest before dropping down to the rest of your midriff and waist. He does not leave you hanging, though, as his dexterous hands and fingers manage their job quite well at bringing you to a climax, rubbing against your [if player is female]vulva with just the right amount of pressure around the clit[else]sensitive crotch[end if]until a surge of flaming pleasure takes you in form of an orgasm.";
					say "     The men find their way of thanking you by continuing to massage your whole body as you try to catch your breath, and with this, they splatter all their cum with their touch along the rest of you. It feels so relaxing that you feel compelled to close your eyes and enjoy the sensation of an entire harem of sexy glowing men feeling every inch of you, with so many hands moving and feeling you from every side and corner, so many lips kissing you in every spot and from every angle... It is impossible to resist just letting your mind go and surrender to all of this...";
					WaitLineBreak;
			else if calcnumber is 2: [Female Void Fireflies]
				Linebreak;
				say "     And turning your glance over their silhouettes and crotches, you realize most of them are imitating female figures, complete with their appropriate equipment. They make a suggestive approach towards you, knowing about your interest for them, and with tender touches and movements, the formerly tiny sparkles [if player is not naked]remove all of your gear[else]they feel your already naked body all over[end if] before leading your hands to their own smooth, translucid skins. It feels as you expect, very soft, almost as if you were touching a form of consistent solid liquid that holds tightly around the shape of bone and muscle. The gorgeous, luminous women surround you with their slender shapes, fondling their breasts for your enjoyment as they approach you tenderly, with one of them climbing on top of you.";
				say "     Aware of your";
				if player is male:
					say "own [cock of player] dong raising to attention, the bright green woman reaches for it with one of her hands behind her back, then leans forward to kiss you on the lips. At the same time, you feel two supple pairs of tits craving for attention nearing your face from each side, and as the womanly creature on top of you lets go of your mouth, she gently directs it towards one of the breasts as the women smile in their earnest. Without a reason not to please the two green figures, you give one of their boobs a kiss as you grab the other, slowly running your tongue around their aureolas, give them a good squeeze before you do the same to her friend's. After you are done teasing them, one of the luminous girls decides it would be phenomenal to climb on top of your head, and slowly descend her womanhood on you, effectively sitting on your face as you are given her pussy to lick for the next moments, a chance you definitely don't let go.";
					WaitLineBreak;
					say "     While you are distracted with the glowing woman enjoying your best oral skills, the remaining group forms a circle around you all, occasionally wanting to trade places with those in action. They cycle through, except the one on your lap, who decides to grab your by now very hard member and rub it across her bubbly cheeks, then slip it between them and towards her cooch, making you shiver in pleasure. The smooth surface of her transparent and incredibly soft gooey skin gives nothing but an increasingly great sensation as it rubs against your glans, and you can't help but want to shove it right in her begging cunt. You don't have to move an inch, however, as the humanoid creature does all the work. She takes a seat on your cock, slowly descending upon it as you feel that slimey tunnel stretching in order to fit it inside, so tight and good that it begins to [italic type]melt[roman type] your mind with ecstacy.";
					say "     With your mouth still busy with the craving pussies that come and go, each taking a comfortable seat on your face as they arrive, the former firefly continues to ride you as you lose track of time, making your manhood throb in and out of that sweet caressing pussy, each movement visible through her transparent skin from the outside. Their silent moans are only sparks in your ears like scintillating lights, especially from the one taking your manhood in her, stimulating you in all the right spots until you feel a surge of extreme pleasure building up in your gonads. The more she keeps jumping and humping on top of you, the better it feels, all until your breathing intensifies, and while the women who stand around your head bring their hands to rub and finger against their womanhoods more intensely than before...";
					WaitLineBreak;
					say "     As your climax approaches, theirs do too. They squirm and moan as they hit their climaxes, holding onto you as you provide some help with your nimble hands. The one on top of you feels especially rewarding, as she simply keeps riding your cock, her tits bouncing around visibly with the momentum, until she too orgasms in a long, intense wave of pleasure as you feel your own coming to be delivered inside her. By now, your entire load would have found its way out through your own member and into the voidling's cunt, making it throb in pleasure for each single spurt you shoot, ending up visibly floating inside her.";
					say "     The women find their way of thanking you by continuing to massage your whole body as you try to catch your breath. It feels so relaxing that you feel compelled to close your eyes and enjoy the sensation of an entire harem of sexy glowing women feeling every inch of you, with so many hands moving and feeling you from every side and corner, so many lips kissing you in every spot and from every angle... It is impossible to resist just letting your mind go and surrender to all of this...";
					WaitLineBreak;
				else: [female or genderless]
					say "own arousal building in your loins, the bright green woman reaches for the area with one of her hands behind her back, then leans forward to kiss you on the lips. At the same time, you feel two supple pairs of tits craving for attention nearing your face from each side, and as the womanly creature on top of you lets go of your mouth, she gently directs it towards one of the breasts as the women smile in their earnest. Without a reason not to please the two green figures, you give one of their boobs a kiss as you grab the other, slowly running your tongue around their aureolas, give them a good squeeze before you do the same to her friend's. After you are done teasing them, one of the luminous girls decides it would be phenomenal to climb on top of your head, and slowly descend her womanhood on you, effectively sitting on your face as you are given her pussy to lick for the next moments, a chance you definitely don't let go.";
					WaitLineBreak;
					say "     While you are distracted with the glowing woman enjoying your best oral skills, the remaining group forms a circle around you all, occasionally wanting to trade places with those in action. They cycle through, except the one on your lap, who decides it would be best to step back, crouch behind you, and slightly lift your butt while putting both your legs around her shoulders. It takes you some time to realize what she is about to do, but all doubts vanish once you feel her tongue slipping right [if player is female]between your moist underlips[else]in your pucker[end if], moving and wiggling about in all the right spots, making you squirm with how good it feels. The woman is skilled enough to send you to heaven in just a few seconds, all while your mouth is busy with the pussies that are coming and going.";
					say "     She keeps doing it as you lose the track of time, feeling her nimble mouth playing with your [if player is female]cooch[else]hole[end if] so masterfully, as she is making sure you feel every effort she is giving. Knowing exactly what the gleaming woman is working with, with her massive display of skill, the way she moves and works her tongue to give you all the bliss... It just seems unreal, how well trained she is in the arts of oral pleasure. You are given a long joyful moment as she eats you out, reaching deep and twirling her tongue in nearly unnatural ways that completely blow your mind. In fact, the more she keeps doing that, the better it feels, all until your breathing intensifies, and while the women who stand around your head bring their hands to rub and finger against their womanhoods more intensely than before...";
					WaitLineBreak;
					say "     As your climax approaches, theirs do too. They squirm and moan as they hit their climaxes, holding onto you as you provide some help with your nimble hands. Although yours does not happen much after, further stimulated by the expert tongue of the glowing lady between your legs, causing you to shiver and squirm in so much pleasure that you can help but moan out loud. Lust and desire hit you like a truck as your orgasm takes place, subsiding only after a good while, as the others finish themselves off too.";
					say "     The women find their way of thanking you by continuing to massage your whole body as you try to catch your breath. It feels so relaxing that you feel compelled to close your eyes and enjoy the sensation of an entire harem of sexy glowing women feeling every inch of you, with so many hands moving and feeling you from every side and corner, so many lips kissing you in every spot and from every angle... It is impossible to resist just letting your mind go and surrender to all of this...";
					WaitLineBreak;
			else if calcnumber is 3: [Both VFs]
				Linebreak;
				say "     It seems like there are shapes of all genders in here, some with feminine and curvy silhouettes, others with a more manly frame, all of them complete with their appropriate equipment. They make a suggestive approach towards you, knowing about your interest for them, and with tender touches and movements, the formerly tiny sparkles [if player is not naked]remove all of your gear[else]they feel your already naked body all over[end if] before leading your hands to their own smooth, translucid skins. It feels as you expect, very soft, almost as if you were touching a form of consistent solid liquid that holds tightly around the shape of bone and muscle.";
				if player is male:
					say "     As one of the women climbs on top of you, with her slender shape as she fondles her breasts for your viewing pleasure, a group of handsome goo men forms a circle around your head, jerking their cocks in high arousal as their distance from you grows shorter. Aware of your own [cock of player] dong raising to attention, the bright green woman reaches for it with one of her hands behind her back, then leans forward to kiss you on the lips. At the same time, you feel another two manhoods craving for attention nearing your face from each side, and as the creature on top of you lets go of your mouth, she gently directs it towards one of the glowsticks as the men smile in their earnest. Without a reason not to please the two green figures, you give one of their dicks a kiss as you grab the other, slowly making your way across the shaft towards his goo balls, only to return where you came from and do the same to his mate's. After you are done teasing them, you figure it is time to actually let them enjoy your mouth to its fullest, letting their cocks slip past your lips and give them a blowjob, one at a time, their dicks exchanging places every once in a while.";
					WaitLineBreak;
					say "     While you are distracted with the two glowing guys enjoying your best oral skills, the remaining group forms a circle around you all, occasionally wanting to trade places with those in action. Given the mixed nature of the group, you also get to enjoy the occasional pussy wanting to have a round with your mouth, getting plenty of facesitting between the blowjobs you give, all tasting as good as they promise. They cycle through, except the woman on your lap, who decides to grab your by now very hard member and rub it across her bubbly cheeks, then slip it between them and towards her cooch, making you shiver in pleasure. The smooth surface of her transparent and incredibly soft gooey skin gives nothing but an increasingly great sensation as it rubs against your glans, and you can't help but want to shove it right in her begging cunt. You don't have to move an inch, however, as the humanoid creature does all the work. She takes a seat on your cock, slowly descending upon it as you feel that slimey tunnel stretching in order to fit it inside, so tight and good that it begins to [italic type]melt[roman type] your mind with ecstacy.";
					say "     With your mouth still busy with the gleaming cocks and cunts that come and go, the former firefly continues to ride you as you lose track of time, making your manhood throb in and out of that sweet caressing pussy, each movement visible through her transparent skin from the outside. Their silent moans are only sparks in your ears like scintillating lights, especially from the one taking your manhood in her, stimulating you in all the right spots until you feel a surge of extreme pleasure building up in your gonads. The more she keeps jumping and humping on top of you, the better it feels, all until your breathing intensifies, and while the men and women who stand around your head bring their cocks and pussies into their own manual efforts...";
					WaitLineBreak;
					say "     As your climax approaches, theirs do too. A glob of thick, warm glowing cum hits you right across your face as one of them orgasms, and soon, more follow. One after the other, they continue to stroke their cocks as each and every one of them, one at a time, covers you with their full load, which slowly begins to drip into your mouth, around your jaw and onto your neck. The one on top of you feels especially rewarding, as she simply keeps riding your cock, her tits bouncing around visibly with the momentum, until she too orgasms in a long, intense wave of pleasure as you feel your own coming to be delivered inside her. By now, your entire load would have found its way out through your own member and into the voidling's cunt, making it throb in pleasure for each single spurt you shoot, ending up visibly floating inside her.";
					say "     The men and women find their way of thanking you by continuing to massage your whole body as you try to catch your breath, and with this, they splatter all their cum with their touch along the rest of you. It feels so relaxing that you feel compelled to close your eyes and enjoy the sensation of an entire harem of sexy glowing people feeling every inch of you, with so many hands moving and feeling you from every side and corner, so many lips kissing you in every spot and from every angle... It is impossible to resist just letting your mind go and surrender to all of this...";
					WaitLineBreak;
				else: [female or genderless]
					say "     As one of the men climbs on top of you, with his fit shape and taking you with an embrace, a groud of handsome goo women forms a circle around your head, fondling their breasts for your viewing pleasure as their distance to you grows shorter. Aware of your own arousal building in your loins, the bright green man reaches for the area with one of his hands behind his back, then leans forward to kiss you on the lips. At the same time, you feel two supple pairs of tits craving for attention nearing your face from each side, and as the creature on top of you lets go of your mouth, he gently directs it towards one of the breasts as the women smile in their earnest. Without a reason not to please the two green figures, you give one of their boobs a kiss as you grab the other, slowly running your tongue around their aureolas, give them a good squeeze before you do the same to her friend's. After you are done teasing them, one of the luminous girls decides it would be phenomenal to climb on top of your head, and slowly descend her womanhood on you, effectively sitting on your face as you are given her pussy to lick for the next moments, a chance you definitely don't let go.";
					WaitLineBreak;
					say "     While you are distracted with the glowing woman enjoying your best oral skills, the remaining group forms a circle around you all, occasionally wanting to trade places with those in action. Given the mixed nature of the group, you also get to enjoy the occasional cock wanting to have a round with your mouth, between all the facesitting you get, all tasting as good as they promise. They cycle through, except the one previously on your lap, who decides it would be best to step back, crouch behind you, and slightly lift your butt while putting both your legs around his shoulders. It takes you some time to realize what he is about to do, but all doubts vanish once you feel his tongue slipping right [if player is female]between your moist underlips[else]in your pucker[end if], moving and wiggling about in all the right spots, making you squirm with how good it feels. The man is skilled enough to send you to heaven in just a few seconds, all while your mouth is busy with the cocks and cunts that are coming and going.";
					say "     He keeps doing it as you lose the track of time, feeling his nimble mouth playing with your [if player is female]cooch[else]hole[end if] so masterfully, as he is making sure you feel every effort he is giving. But enough is enough, he eventually pulls out, only giving it a few licks before standing up, and before you are able to miss him, his tongue is replaced with a surprisingly hard cock, being shoved right in you with relative ease, as its solid gooey composition serves as a natural lubricant. With a thrust, the former firefly sends you to places, pounding you with persistence and passion as his mates have their go with your mouth. It feels so good, in fact, that the more he fucks you, the better it feels, all until your breathing intensifies, and while the men and women who stand around your head bring their cocks and pussies into their own manual efforts...";
					WaitLineBreak;
					say "     As your climax approaches, theirs do too. A glob of thick, warm glowing cum hits you right across your face as one of them orgasms, and soon, more follow. One after the other, they continue to stroke their cocks as each and every one of them, one at a time, covers you with their full load, which slowly begins to drip into your mouth, around your jaw and onto your neck. Soon, the translucid man also brings his own rod out to cum all over your torso with an especially hard jet, managing to reach your chest before dropping down to the rest of your midriff and waist. He does not leave you hanging, though, as his dexterous hands and fingers manage their job quite well at bringing you to a climax, rubbing against your [if player is female]vulva with just the right amount of pressure around the clit[else]sensitive crotch[end if]until a surge of flaming pleasure takes you in form of an orgasm.";
					say "     The men and women find their way of thanking you by continuing to massage your whole body as you try to catch your breath, and with this, they splatter all their cum with their touch along the rest of you. It feels so relaxing that you feel compelled to close your eyes and enjoy the sensation of an entire harem of sexy glowing people feeling every inch of you, with so many hands moving and feeling you from every side and corner, so many lips kissing you in every spot and from every angle... It is impossible to resist just letting your mind go and surrender to all of this...";
					WaitLineBreak;
			say "     Much later, you wake up, still in the cave, naked and alone. It is dark, and the crystals are no longer glowing. It seems the fireflies have gone away, and you should too. For sure, you had a great time! But for some reason, you feel a little disoriented... Perhaps you fell asleep and your brain hasn't connected itself, yet, so to speak. Hopefully, it should be nothing.";
			VRNormalSanityLoss;
		else:
			Linebreak;
			say "     Attempting to communicate doesn't necessarily mean talking, but you feel like they are some sort of creatures that have a mind of their own. While approaching them and the crystal, you try not to scare them away and let them come closer to you. Eventually, they begin to surround you, and somehow, you begin to feel... a lot better, as they almost seem to be singing for you. Once they had enough, the little fireflies begin to slowly retreat deeper into the cave, and the crystal's light fades away. You are not entirely sure of what just happened, but the spectacle of lights managed to improve your mental status.";
			say "     Either way, there is nothing left for you here, so you proceed further ahead, eventually following on a path back to the core line.";
			if Resolution of Luminous Harem is 0 and player is kinky:
				now Resolution of Luminous Harem is 1;
			SanBoost 15;
		WaitLineBreak;
		say "[VRMoveOptions]";
	else: [Trying to catch them may grant null essences, but will draw an enemy close in the core line due to them becoming agitated]
		Linebreak;
		say "     Something like this must be valuable. The crystal looks too heavy to be moved, but these lights could be easily stashed in your pockets. With your hands, you go for grabs, in hopes of being fast enough to fetch at least a few. This obviously agitates them, as they fly in a frenzy around and away from you.";
		let randomnumber be a random number from 1 to 4;
		if randomnumber is:
			-- 1:
				now VRVoidSerpentTracker is 3;
			-- 2:
				now VRPeculiarSummonerTracker is 3;
			-- 3:
				if VRDarkTyrantTracker > -1:
					now VRDarkTyrantTracker is 3;
				else:
					now VRVoidSerpentTracker is 3;
					now VRPeculiarSummonerTracker is 3;
			-- 4:
				now VRVoidSerpentTracker is 3;
				now VRPeculiarSummonerTracker is 3;
		if a random chance of 2 in 5 succeeds:
			let randomnumber be a random number from 1 to 3;
			if randomnumber is:
				-- 1:
					say "     With your best efforts, it looks like you were able to grab one of the lights, which immediately stops shining and turns into [bold type]1 null essence[roman type] in your hands.";
					ItemGain null essence by 1 silently;
				-- 2:
					say "     With your best efforts, it looks like you were able to grab one of the lights, which immediately stops shining and turns into [bold type]2 null essences[roman type] in your hands.";
					ItemGain null essence by 2 silently;
				-- 3:
					say "     With your best efforts, it looks like you were able to grab one of the lights, which immediately stops shining and turns into [bold type]3 null essences[roman type] in your hands.";
					ItemGain null essence by 3 silently;
		else:
			say "     Unfortunately, despite your best efforts, the fireflies move too quickly for you to be able to catch any of them. They fly right through your fingers, or are simply out of your reach.";
		WaitLineBreak;
		say "     The way they flew away, in such agitation, will most likely draw enemies closer, too. Was this a good idea? Either way, there is nothing left for you here, so you proceed further ahead, eventually following on a path back to the core line.";
		WaitLineBreak;
		say "[VRMoveOptions]";

to say VROddTreasure:
	say "     [bold type]Odd Treasure[roman type][line break]";
	say "     From all things possible, you wouldn't have imagined that crossing the veil would, at some point, bring you over a sort of room - because it definitely doesn't look like any specific division, just an area with some questionable walls and an absence of light - filled with nothing but statues of armored knights. The more you walk, the more it looks like it has been a kind of a tomb, but things quickly become more and more... odd. The walls are filled with coffins, with some empty, others having these already decomposed corpses of whoever was put in them, and the stench of ancient and old assailing your nostrils like crazy as you keep moving towards the depths of this place.";
	say "     The area around you begins to gain some definition, and you totally see yourself in an underground corridor of some sort of ancient ruins, which seems more like catacombs. Yes, this would explain the coffins, but you find yourself inevitably questioning why would this appear in the void, of all places? Perhaps you are somewhere else, while not being there in reality, a paradox that is only explained by the wicked realm you happened to come across. Still, all the coffins that are open and empty, together with the weak growling and sounds of slow steps that echo through the tunnels, gives you chills that run down your spine at a cold, tortuous slow pace...";
	WaitLineBreak;
	say "     Suddenly, there is a hit on the wall... or the ground, or... something else. You are not entirely sure of what you have heard anymore. But it continues, three times, then stops. A growl follows, dead and alive, in the form of a wheeze, actually more dead than anything else. Then, you are faced with a crossway, unsure of the source of this ominous sound.";
	VROddTreasurePathChoice;

to VROddTreasurePathChoice:
	say "     There is a path right in [bold type]front of you[roman type] that is prolonged by more walls with rectangular holes in it, probably more coffins, filled with spiderwebs and following deeper down into the depths of these catacombs. Then, to your right, the path follows into a pitch black area, nothing alike the rest of the space. Finally, to your left, there is a large double door with a big, strong lock held by the thickest of chains hugging the structure made of stone, to which, in order to open, you will probably need a key.";
	LineBreak;
	say "     [link](1)[as]1[end link] - Go forward.";
	say "     [link](2)[as]2[end link] - Take the dark path to your right.";
	say "     [link](3)[as]3[end link] - Walk towards the door on your left.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to go forward, [link]2[end link] to take the right path or [link]3[end link] to take the left path.";
	if calcnumber is 1: [Forward]
		if Resolution of Odd Treasure is 0:
			say "     Taking the path ahead, you start walking forward and down into the corridor leading lower into an extension of the catacombs. Everything still looks the same as before, with nothing new that's worth of notice. The sound from before stopped as well, now leaving a deafening silence in which the only thing you can hear is your own steps on the dirty ground.";
			WaitLineBreak;
			say "     You continue down the path, taking a turn around the now all empty coffins and urns, as the scarce light continues to diminish. It is still not pitch dark, but the little illumination you have barely allows you to see what lies ahead. At some point, you have to take a torch from one of the walls, which is easily removable, and thread carefully. By the time you're half-way, you start hearing that sound again... A thud, that happens three times, then stops. Again, after a brief silence, another three hits, stopping altogether for another couple of seconds, before it repeats once again, now ceasing for a long while. Enough time for you to start hearing it again louder, indicating that your proximity to the source is increasing.";
			say "     There is another sound that you hear, one much more subtle than the thuds, within the intervals of the triple hits. Something metallic and heavy being dragged across the ground, nearing your position from above, but you don't quite see it. Must be at a higher level... but then you hear it from your right. Both directions, forward and backward, are completely dark, and you're remaining there with only your torch in hand, with no other choice but to continue. You do so, walking towards the darkness once more, daring the dangers of the void to come and get you, because nothing else can be done about it. It rings louder in your ears, the thuds, the metal, and suddenly...";
			WaitLineBreak;
			say "     Your torch goes off.";
			if demonologist is listed in companionList of Player:
				say "     [italic type]And you find yourself alone, realizing you had lost Xaedihr in the middle of these ruins.[roman type][line break]";
			say "     Blinded in darkness as you are, you no longer have any control over the situation, if you ever had in the first place, and at the same time, you are sinking in silence. Still, there is no other way but forward, and despite your inability to see, you continue to walk. Step after step, the only thing that begins to change is an ominous light slowly appearing at the end of the tunnel. You cannot help it, your movements quicken as you see yourself approaching the light, like a faint hope that has emerged from within the darkest of times. But... it, too, goes off, sooner than you would have liked. The thuds happen again, and the metallic sound being dragged right towards you.";
			WaitLineBreak;
			say "     You feel its breath, its presence... It is right behind you.";
			Linebreak;
			say "     ([link]Y[as]y[end link]) - Look behind you.";
			say "     ([link]N[as]n[end link]) - Keep walking forward.";
			if Player consents: [Encounter with the Elk Head Reaper]
				Linebreak;
				say "     The mistake of many... and for you, it remains to be seen.";
				say "     As you are about to turn your face to the back, in order to see what was just breathing behind you, suddenly... you are not seeing anything at all. A large arm pulls you from around your neck as you feel your head being covered by some sort of cloth bag, tied tight below your jaw, making it very difficult for you to breathe, as you are dragged through the floor by whatever captured you, along with that metallic object you've heard before. No matter how much you kick around or struggle against this, your captor has a tight grip on you, the ropes around your neck threatening to end your life here. You barely manage to stay awake until the end of this frightening trip...";
				WaitLineBreak;
				say "     But indeed, it finally ends, as you're pushed against a wall and left there. You realize that your hands have been tied, and only brief seconds after, the bag is removed. Then, in front of you, there it stands. Your captor reveals itself...";
				Linebreak;
				say "     ([link]Y[as]y[end link]) - Clearly male in nature.";
				say "     ([link]N[as]n[end link]) - With a strong female form.";
				if player consents: [male]
					Linebreak;
					now Resolution of ElkHeadReaperGender is 10;
					say "     An enormously tall and muscular, statuesque even, and manly looking creature, wearing a large elk's skull, with two moderate sized horns pointing towards each side, made into a helmet, as a dark ragged cloak coming from underneath it extends itself downwards, past his shoulders and reaching the ground right next to his bare feet. On his right hand, he carries a scythe, constantly dripping a black liquid from the tip of its curved blade. While looking like a visage of the grim reaper himself, you can't help but notice an additional feature that further emphasizes him as a male, right on the crotch. A large, thick and uncut human shaft, perpetually hard, throbbing every once in a while, as he looks down on you intimidatingly.";
				else: [female]
					Linebreak;
					now Resolution of ElkHeadReaperGender is 20;
					say "     An enormously tall and muscular, statuesque even, and womanly looking creature, wearing a large elk's skull, with two moderate sized horns pointing towards each side, made into a helmet, as a dark ragged cloak coming from underneath it extends itself downwards, past her shoulders and reaching the ground right next to her bare feet. On her right hand, she carries a scythe, constantly dripping a black liquid from the tip of its curved blade. While looking like a visage of the grim reaper herself, you can't help but notice a few additional features that further emphasizes her as a female, which are a pair of round and volumptous tits accompanying her powerful body, and a pussy where you would find one, as she looks down on you intimidatingly.";
				say "     It is only then that you realize where you've been brought to. A room full of the most devious devices and mechanisms, specifically made to enslave and torture those who happen to roam too close. Tied and helpless as you are, and cornered by this towering foe, your chances of escaping are... slim. The Elk Head Reaper, a fitting name for someone with these characteristics, then decides to grab your face and examine you closely, leaning down over you with the odd elk skull's bone surface nearly rubbing against your forehead. 'Too frail. You won't do. How can you even breathe in the void? Such are the mysteries of these mortals...' says your captor, with a voice deeper than you are used to hear for their gender, even nearly demonic in nature...";
				WaitLineBreak;
				say "     Unexpectedly so, you find your hands free, as if the ropes that held them simply broke by magic. Maybe that explains how you found yourself tied up so quickly and from such a position, and besides, there are things you cannot understand in this realm, such as the existence of such horrifying creatures like this one, and what they want with you. 'Leave. If I find you again, I will destroy you.' Or sometimes, what they [italic type]don't[roman type] want with you. And with this warning, the Elk Head Reaper, as you will known them by, simply leaves you here, dragging that long scythe across the ground while hitting the rocky walls three times in a row with the pommel. You still don't know why they do that, but at least, you are safe... for the time being.";
				say "     But before you go, there is something that catches your eye. It is a device with especially wicked perversions, of the kind that seems to effectively restrain and move around freely to adjust to any position. It almost looks like a spherical rack for people to be put in, but for now, you disregard that device. And in fact, you don't even have time to check any of the other morbid structures, as it seems the owner of this dungeon might be coming back soon, while you shouldn't be here. However, you take note of this, and leave through the dark tunnels, towards where the light once was.";
				say "     This seems to have been the best call, as you are delivered across the veil and back to the core line.";
				if player is kinky:
					say "     However... how bad would it be to be the Elk Head Reaper's slave for a day...? Perhaps if you reencountered this creature, there would be a chance you could... volunteer for punishment.";
				if demonologist is listed in companionList of Player:
					say "     [italic type]'Huh, I was getting worried. Where have you been?' asks Xaedihr, as he sees you returning to his side. 'We should be more careful, getting separated like this could be bad.'[roman type][line break]";
				now Resolution of Odd Treasure is 1;
				WaitLineBreak;
				say "[VRMoveOptions]";
			else: [escapes]
				Linebreak;
				say "     You know how this will end, and you want to avoid it. Without hesitation, you simply continue to walk forward. The steps behind you, they keep close... but do nothing other than following you. There is no way of knowing what is in there, right on your tail. In fact, you never find out, even at the end, when the light returns and you cease to hear those cursed steps and dragging sounds. That is when you look behind, and see nothing. However, you can't shake away the feeling that perhaps you might have missed something...";
				say "     It seems the way has led you out of the catacombs, and into something that is nothing anymore. What is in front of you are hints of a path back to the core line, so it seems there is nothing left for your current run at this place. For sure, you won't be going back through the same place, and even if you wanted, you know better than to trust the void.";
				VRNormalSanityLoss;
				WaitLineBreak;
				say "[VRMoveOptions]";
		else if Resolution of Odd Treasure > 0: [Knows Elk Head Reaper]
			say "     You know this path to be the one you took before which led you to a humanoid creature with a terrifying and intimidating presence, that you have decided to identify as the Elk Head Reaper. This intriguing creature seemed extremely territorial and dominant, with a vast assorted kit of torture tools in the dungeon [EHRSubjectPro] calls [']home[']. Knowing this, [bold type]do you still wish to proceed[roman type]? You might end up having to fight your way out, [italic type]unless, and only if, your intentions involve extreme submission[roman type]. But, if you are lucky, you might be able to sneak by, if you intend to explore without being caught... Although that will be extremely difficult.";
			Linebreak;
			say "     ([link]Y[as]y[end link]) - Yes, go on ahead.";
			say "     ([link]N[as]n[end link]) - No, stay where you are.";
			if player consents:
				Linebreak;
				say "     After taking all your options into consideration, you decide to keep walking forward, into the ever darkening path ahead where you will meet the Elk Head Reaper.  Everything still looks the same as before, with nothing new that's worth of notice. The sound from before stopped as well, now leaving a deafening silence in which the only thing you can hear is your own steps on the dirty ground.";
				if demonologist is listed in companionList of Player:
					say "     [italic type]Xaedihr sticks close to you, this time ready to defend you in case something bad happens.[roman type][line break]";
				WaitLineBreak;
				say "     As you make your way ahead, you begin to hear the three consecutive thuds echoing through the dusty dark tunnels. You know this to be the warning [EHRSubjectPro] does to announce [EHRPosAdj] presence in order to keep intruders away, or perhaps it is simply to instigate a feeling of fright as you venture into [EHRPosAdj] territory. It is not long until your steps are heard, the silence resuming its concerning hum as a sense of vulnerability strikes you like a thunder. Then, the sound of metal being dragged across the dirty floor reaches your ears, a constant wave that tickles your ears and provoking utmost discomfort in you. It seems to announce that the Elk Head Reaper is going further away from your position, but the sense of uncertainty fills you with doubt.";
				say "     You do not know of [EHRPosAdj] immediate position...";
				Linebreak;
				say "     ([link]Y[as]y[end link]) - Take a stealthy approach through the tunnels (Dexterity Roll).";
				say "     ([link]N[as]n[end link]) - Confront the Elk Head Reaper.";
				if player consents:
					Linebreak;
					say "     This might mean that the Elk Head Reaper does not know of your presence either, so you are still able to use this possibility at your advantage. With that said, you thread gingerly, as that metallic sound seems to fade away in the dark distance...";
					Linebreak;
					let bonus be (( dexterity of player minus 10 ) divided by 2);
					let diceroll be a random number from 1 to 20;
					say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]18[roman type] (Dexterity Check):[line break]";
					if diceroll + bonus >= 18:
						Linebreak;
						say "     Fortunately, you have played smart. Choosing the pathways that led to no trouble and making your presence unknown has proven to be fruitful in crossing this area. You can no longer hear the reaper and that disturbing sound of [EHRPosAdj] scythe being dragged, finding yourself in a much safer location... Or at least one without an immediate threat.";
						VRObtainUnknownVoidRelicOne;
					else:
						Linebreak;
						say "     You proceed through the pathways in hopes of evading the reaper, walking through the dark corridors of this strange labyrinth...";
						say "     For moments, you think you are being successful... The sound has disappeared, and you are pretty much clear of any immediate threat...";
						WaitLineBreak;
						say "     But you start to hear that sound again. The triple thud, then ceasing, resumed by the metallic sound of [EHRPosAdj] scythe being dragged, ringing louder and louder, coming right behind you...";
						say "     You freeze, cold sweat dropping down your forehead, a sense of fear and danger striking you as if an ice cold bucket of water was dropped right on top of you, and you stand there... Facing the Elk Head Reaper as [EHRSubjectPro] raises [EHRPosAdj] scythe over [EHRPosAdj] broad shoulder, looking down on you through the elk skull, a deep demonic voice speaking to you...";
						WaitLineBreak;
						say "     'I warned you. If I ever saw you again, I would destroy you.' [EHRSubjectPro] says, approaching you with mere inches of distance, but remaining still, as if awaiting an answer from you.";
						say "     'Do you accept your fate?'";
						if demonologist is listed in companionList of Player:
							WaitLineBreak;
							say "     [italic type]You hear Xaedihr whispering behind you, the creature seemingly ignoring his presence. You don't know how, but he tells you something... 'I can help you fight [EHRObjectPro], but it's going to be tough... If you think you can't take [EHRObjectPro], just submit to [EHRPosAdj] will. Knowing [if player is submissive]you, you might even enjoy it[else]things, [EHRSubjectPro] will simply take what [EHRSubjectPro] wants from you and leave you be[end if]...[roman type][line break]'";
						Linebreak;
						say "     ([link]Y[as]y[end link]) - Accept your fate.";
						say "     ([link]N[as]n[end link]) - Fight!";
						if player consents:
							Linebreak;
							say "     You nod, accepting your terms with the Elk Head Reaper, and [EHRSubjectPro] offers no additional hostility. Instead, you are ordered to follow after [EHRObjectPro] alone, without any of your weapons or gear. 'They shall be delivered back to you once you are done attoning for your deeds, mortal.' [EHRSubjectPro] says, as you follow after [EHRSubjectPro] as obediently as you can...";
							WaitLineBreak;
							OTElkHeadReaperSubmit;
						else:
							Linebreak;
							say "     You will have none of [EHRPosAdj] threats! Readying your weapons, you decide to confront the reaper. 'Unfortunate. You could have walked away with your soul...' [EHRSubjectPro] says, before reading [EHRReflexPro] for battle.";
							OTElkHeadReaperFight;
				else:
					Linebreak;
					say "     Instead of trying to sneak by, you head directly for the source of the noise. If it is by bravery or recklessness remains to be seen...";
					say "     Hearing the sounds of metal arriving louder and louder ahead of you, as your steps echo unchallenged through the dark corridors of this strange labyrinth, you continue to traverse its pathways until a tall shape, barely illuminated by a torch on the wall, reaches your vision in a fading manner. The Elk Head Reaper, as you call [EHRObjectPro], is standing right in front of you, scythe ready, eyeing your every movement as you approach [EHRObjectPro]. [EHRSubjectPro] speaks, in an unenthusiastic tone...";
					WaitLineBreak;
					say "     'Such is the audacity of a mortal whose soul is so within my reach. Either you desire punishment, or you do not know what is good for you...' the demonic voice haunts your ears as the reaper eyes you through the elk skull, awaiting your reply after asking one last question.";
					say "     'Do you accept your fate?'";
					if demonologist is listed in companionList of Player:
						WaitLineBreak;
						say "     [italic type]You hear Xaedihr whispering behind you, the creature seemingly ignoring his presence. You don't know how, but he tells you something... 'I can help you fight [EHRObjectPro], but it's going to be tough... If you think you can't take [EHRObjectPro], just submit to [EHRPosAdj] will. Knowing [if player is submissive]you, you might even enjoy it[else]things, [EHRSubjectPro] will simply take what [EHRSubjectPro] wants from you and leave you be[end if]...[roman type][line break]'";
					Linebreak;
					say "     ([link]Y[as]y[end link]) - Accept your fate.";
					say "     ([link]N[as]n[end link]) - Fight!";
					if player consents:
						Linebreak;
						say "     You nod, accepting your terms with the Elk Head Reaper, and [EHRSubjectPro] offers no additional hostility. Instead, you are ordered to follow after [EHRObjectPro] alone, without any of your weapons or gear. 'They shall be delivered back to you once you are done attoning for your deeds, mortal.' [EHRSubjectPro] says, as you follow after [EHRSubjectPro] as obediently as you can...";
						WaitLineBreak;
						OTElkHeadReaperSubmit;
					else:
						Linebreak;
						say "     You will have none of [EHRPosAdj] threats! Readying your weapons, you decide to confront the reaper. 'Unfortunate. You could have walked away with your soul...' [EHRSubjectPro] says, before reading [EHRReflexPro] for battle.";
						OTElkHeadReaperFight;
			else:
				say "     You have decided to stay back and consider other options.";
				WaitLineBreak;
				VROddTreasurePathChoice;
	else if calcnumber is 2: [Right]
		say "     Having decided to turn right, you immediately do so, leaving the catacombs behind. The path has you returning to the darkness of the void, and at some point, a fake certainty of solid ground has you walking right into an abyssal fall.";
		say "     Gravity takes you as you begin to descend at a great speed into nothing but more darkness, until it subsides and has you floating in a steady suspension for several moments. It seems that eventually, gravity disappears, giving you the ability to levitate through this area, completely devoid of light. It takes you a while to realize that you are just about to cross the veil back to the core line...";
		WaitLineBreak;
		if a random chance of 1 in 2 succeeds:
			say "     But something unexpected happens, and an opposing force pushes you back into it! Once more, you are traveling through the area beyond the veil, about to travel to some other place that you won't be able to foresee...";
			WaitLineBreak;
			let randomnumber be a random number from 1 to 4;
			if randomnumber is:
				-- 1:
					say "[VRGatewayToFreedom]";
				-- 2:
					say "[VRFissuresShifting]";
				-- 3:
					say "[VRMomentOfRespite]";
				-- 4:
					say "[VRMirrors]";
		else:
			say "     A few more inches and you are kicked right back to the relative familiarity of the main void pathway. Now that was some trip...";
			if a random chance of 1 in 3 succeeds:
				say "     And it looks like [bold type]a black rock of null essence[roman type] fell just by your feet, rolling several inches towards your position after having fallen from the ceiling. What a strange event, but you suppose this is better than nothing.";
				ItemGain null essence by 1 silently;
			WaitLineBreak;
			say "[VRMoveOptions]";
	else if calcnumber is 3: [Left]
		if Resolution of MirrorsKey < 1:
			say "     Turning to your left and towards the large locked door, you attempt to mess with its lock. It is heavy and impossible to pick, even for an expert at lockpicking with the best of tools. You suppose you have no other choice but to come back here once you have some sort of key, perhaps.";
			WaitLineBreak;
			VROddTreasurePathChoice;
		else if Resolution of MirrorsKey is 1: [Found key in the mirrors]
			say "     Turning to your left and towards the large locked door, you realize you had picked a key when you destroyed the mirror somewhere in another place within this realm. Perhaps this is it? There is only one way to know the answer to that question, and it is by trying it out. Stepping towards the enormous stone door, you take the key into one hand, grabbing the large lock with the other, and proceed to shove it carefully inside the keyhole. It doesn't quite fit, at first, which makes you think that you are probably having wishful thinking, but eventually, you manage to push it in. Trying each side to see which one would the key rotate towards, you find yourself turning it several degrees to the right until you hear a loud tick. The lock comes open, and it nearly smothers your feet as it falls heavily on the ground.";
			say "     After you successfully managed to unlock the door, it starts reacting on its own and moving in your direction. Slowly, each stone made structure, with its deep and heavy creaking echoing through, swings open and forces you to take a few steps back. After the passage is finally unobstructed, it reveals an extension of the catacombs, but without any coffins. You can see an urn or two from here, and it gives you a feeling that it might seem like some sort of treasury vault. Who knows, perhaps you might find something useful in there?";
			say "     [bold type]The door to the left path has now been unlocked.[roman type][line break]";
			WaitLineBreak;
			say "     <<Author's note: This is everything, for now. More content will be added to this path. As you have already unlocked it, once it comes out, you may access it immediately. There will be a new encounter related to treasure chests, as a hint for what is about to come. For now, you shall be returned to the previous choices.>>";
			now Resolution of MirrorsKey is 2; [unlocked the door]
			WaitLineBreak;
			VROddTreasurePathChoice;
		else if Resolution of MirrorsKey is 3: [event after door is unlocked]
			say "     You feel a compelling urge to stay where you are. It seems the path ahead is still forming itself. Void is complicated, and things take time to decide the best ways to trick you, or something like that.";
			say "     <<Author's note: This is everything, for now. More content will be added to this path. As you have already unlocked it, once it comes out, you may access it immediately. There will be a new encounter related to treasure chests, as a hint for what is about to come.>>";
			WaitLineBreak;
			VROddTreasurePathChoice;

to OTElkHeadReaperFight:
	WaitLineBreak;
	Challenge "Elk Head Reaper";
	if fightoutcome < 20: [player won]
		Linebreak;
		say "     With one last strike, after a long and intense battle against one of the most formidable opponents you have ever faced in your life, the elk head reaper kneels to the floor, defeated and finished. As you feel [EHRPosAdj] eyes, hidden behind the elk skull, locking gaze with yours, you also gain a surge of power flowing through you, an urge to show this creature who is in charge, who actually deserves to own the other [if player is submissive]despite your natural submissive tendencies[else if player is dominant], emphasized by your own natural dominant aura[end if]...";
		Linebreak;
		say "     ([link]Y[as]y[end link]) - Dominate the loser.";
		say "     ([link]N[as]n[end link]) - Ignore this and just proceed further ahead.";
		if player consents:
			OTElkHeadReaperDominate;
			WaitLineBreak;
			VRObtainUnknownVoidRelicOne;
		else:
			say "     The reaper lets out a grunt, unable to offer any further resistance, as you simply take your steps around [EHRObjectPro], walking past the defeated humanoid without looking back. When you do, however, the Elk Head Reaper can no longer be seen or heard, having seemingly vanished from existence. All that remains is a way heading deeper into the darkness as the labyrinth also lost its tricky paths.";
			WaitLineBreak;
			VRObtainUnknownVoidRelicOne;
	else if fightoutcome > 19 and fightoutcome < 30: [lost]
		say "     There was nothing you could do against the reaper's much superior strength. With one last strikes, it manages to pin you down as your attempts to resist come off as futile. Your body is exhausted, and while the creature has the upper hand, nothing remains for you but to accept your fate as [EHRPosAdj] new slave...";
		WaitLineBreak;
		if demonologist is listed in companionList of Player:
			Linebreak;
			let bonus be (( weapon damage of demonologist minus 10 ) divided by 2);
			let diceroll be a random number from 1 to 20;
			say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]14[roman type] (Xaedihr's Weapon Damage Check):[line break]";
			if diceroll + bonus >= 14:
				say "     [italic type]But what is this? The reaper cowers as if hit by something incredibly powerful! It seems it was Xaedihr, who managed to charge up a spell strong enough to knock the creature away for a while! 'Quick! Into the veil!' he shouts, as he grabs to you attempt an escape out of the core line. Fortunately, the reaper is not able to follow after taking such a surprising hit.[roman type][line break]";
				WaitLineBreak;
				VREventsRoll;
			else:
				say "     [italic type]Not even Xaedihr can save you. He doesn't manage to cast a spell powerful enough to force the reaper's hold out of you. He has no other choice but to escape by himself, leaving you to your fate...[roman type][line break]";
				WaitLineBreak;
				say "[VRElkHeadReaperWins]";
		else:
			WaitLineBreak;
			say "[VRElkHeadReaperWins]";
	else if fightoutcome is 30: [fled]
		say "     Flee? There is no escape from the monsters of the Void once you engage in battle with one of them. All you managed to do was to give the reaper enough time to catch you in [EHRPosAdj] grasp...";
		WaitLineBreak;
		if demonologist is listed in companionList of Player:
			Linebreak;
			let bonus be (( weapon damage of demonologist minus 10 ) divided by 2);
			let diceroll be a random number from 1 to 20;
			say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]14[roman type] (Xaedihr's Weapon Damage Check):[line break]";
			if diceroll + bonus >= 14:
				say "     [italic type]But what is this? The reaper cowers as if hit by something incredibly powerful! It seems it was Xaedihr, who managed to charge up a spell strong enough to knock the creature away for a while! 'Quick! Into the veil!' he shouts, as he grabs to you attempt an escape out of the core line. Fortunately, the reaper is not able to follow after taking such a surprising hit.[roman type][line break]";
				WaitLineBreak;
				VREventsRoll;
			else:
				say "     [italic type]Not even Xaedihr can save you. He doesn't manage to cast a spell powerful enough to force the reaper's hold out of you. He has no other choice but to escape by himself, leaving you to your fate...[roman type][line break]";
				WaitLineBreak;
				say "[VRElkHeadReaperWins]";
		else:
			say "[VRElkHeadReaperWins]";

to OTElkHeadReaperSubmit:
	say "     As you arrive at the all too familiar dungeon room, with all the tools and racks, the reaper orders you to stand still as [EHRSubjectPro] prepares the set. However, [EHRSubjectPro] stops amidst something, looking back at you with a fierce look - not that you could see [EHRPosAdj] eyes, but you could definitely sense it - 'Hm... I don't think you're ready for any of this, yet. We might have to start with something more physical...' [EHRSubjectPro] says, walking over towards you. Still intimidating, the reaper does not look as hostile as before. Instead, [EHRSubjectPro] drops that ragged cloak to the ground, [EHRPosAdj] full body on display before your eyes. Your captor is completely naked, from neck to toe, only that frightening elk skull remains covering [EHRPosAdj] head.";
	say "     'Get on your knees, now.' The order arrives your ears in such an imperative tone that you nearly feel compelled to comply.";
	WaitLineBreak;
	if Resolution of ElkHeadReaperGender is 10: [facefuck punishment]
		say "     One thing you cannot deny, is that this disturbing humanoid creature is actually sporting an decently human-looking body. Well, decent is an understatement, the reaper is jacked, muscles so big and toned that you can even see muscles you didn't know they existed, which look even bigger given how tall he is. You kneel, following his demands, and your head barely reaches his monstrous quads in height level. You're still fairly close to the wall, and the space between you shortens as he slowly walks towards you. 'Head on the floor.' he says, giving you just enough space to bend over and lay your head on the dirty ground, cheek turned downwards as you are facing the tools adorned wall.";
		say "     He bashes the scythe with the pommel against the ground to his side with tremendous force, and then you feel what seems to be his large bare foot pressing against your cheek to a point that it is almost painful, but not quite. The surface of his sole is interestingly soft, you would expect a much rougher skin, especially since he walks without any sort of foot protection. He rubs it across your face for a bit, then, his deep voice booms out to you. 'You might keep your soul if your obedience is total.' The reaper presses his foot just a bit more, and it really is scratching the pain level now. Your face recoils in a reflex, but you keep still in order to not enrage your new master.";
		say "     'You shall do anything I say... Anything I want... Anything you are told. No limits.' he says, and he awaits your consent. You better mind your words...";
		Linebreak;
		say "     ([link]Y[as]y[end link]) - You will do anything he says.";
		say "     ([link]N[as]n[end link]) - This is too much, run away!";
		if player consents:
			Linebreak;
			say "     A hint of satisfaction pours out of the reaper's mouth in the form of a 'Hmpf...' followed by a 'I like when mortals know their place.' Happy with your response, he lifts his foot off your face and puts it on the ground right next to your head. Then, he orders you to stand, keeping your head low, and before you can even blink, he walks towards you, grabbing you by the jaw and pushing you against the wall. Suddenly, you find yourself with his massive cock, bigger than your face, splatted across your cheek and throbbing as it ever was. His long and thick shaft feels warm, it is almost too fascinating... As for the rest of the scenery, you are effectively pinned against the wall, locked nearly between his astoundingly muscular legs.";
			say "     He looks down at you, and you can even sense the grin it would have been painted in his face, were it not for the elk skull helmet. He says 'Open.' and you open - your mouth, that is - and within a second, you find it full with his dick, stretching your lips wide and nearly dislocating your jaw as he keeps pushing further. You have got no choice here but to take it as deep as he wants to push it, and obviously, you struggle with the size. Not that he cares much, since you are here to be [']punished[']. He simply pushes it in to his heart's content - if he actually has one - and you find yourself being facefucked by a reaper from the void, in his own dungeon, balls swinging heavily back and forth against your chin, cock going deep down your throat until your neck bulges and putting your deepthroating skills to a serious test.";
			WaitLineBreak;
			say "     You don't get a pause, nor a moment to breathe... Your throat is ravaged hard and rough until your tears spill and your body begins to gasp for air. He completely owns you for as long as he wants, pushing his meat in and out fast and deep, and only at the brink of your collapse, he pulls out to let you catch a breath... For long enough. Soon, he's ballsdeep in your throat again, fucking the hell out of you mouth as hard as, or even harder than, before. Your hands feel absolutely worthless rubbing along his thighs and pushing them away tentatively in a reflex, since your body is [italic type]begging[roman type] for air, but it does nothing for the reaper. You know he is looking down at you, enjoying the view of you choking on his enormous manhood, knowing he has absolute control over you, and enjoying your pulsing warm throat wrapped around his hard cock like he owns you.";
			say "     His stamina seems painfully long... You barely given room to breathe before he rams his dick inside yet again. In the last time he pulls out, he guides your eyes to his balls and orders you to touch them, so you could feel how heavy and full they are. There are only a few additional words escaping his mouth as he shoves his cock back in you again. 'Swallow it all... to the last drop.' You swear you didn't know he could go [italic type]even harder[roman type] on you, but there he is, drilling your throat so hard that you feel your skull getting nearly smashed against the wall, his balls almost painfully slapping you in the chin as he fucks your mouth. But even here, he takes his sweet time to hit the point of no return...";
			WaitLineBreak;
			say "     Then, with a grunt, he shoves it all inside you, all the way in, your throat completely stretched wide around that huge cock... You even think it is poking against your stomach, unlike anything you ever felt, and a few throbs later, a hard gush of warmth begins to fill you up. There's so much cum leaving him and being forced inside you that you feel your belly swell, a torrent of spunk that keeps on going for at least a full minute... You don't know how you held that long with his dick like that, but he finally pulls out and lets you take in the very much welcome air as you gasp for all that is dear to you.";
			CreatureSexAftermath "Player" receives "OralCock" from "Elk Head Reaper";
			WaitLineBreak;
			say "     The reaper looks down at you, crouches down, lifts you head by the chin, and you could exchange looks for a while... For moments, you take a glimpse of what is left of his humanity in this short moment as he strokes your cheek... guiding a drop of cum that missed your mouth back to your lips. Instinctively, you suck on his finger to swallow it up, then he pets your under jaw in a seemingly affectionate way. He leans his head lower, almost to match yours in level, and to your surprise, he begins to lift his helmet to the point you are able to see his lips. They are shockingly human in appearance, and appear to belong to a very handsome man...";
			say "     'You... could save me...' he says, his words striking you with surprise as you blink with obvious confusion, his voice sounding much smoother and clearer... like a person's. 'I hunger for souls... but you made me feel... satiated...' The moment is abruptly interrupted as he returns to silence, enclosing his face once more and avoiding looking at you. Then, a few words are said, and nothing else as he turns his gaze away. '... Go.'";
			WaitLineBreak;
			say "     There are a myriad of questions you could ask, but by instinct, you feel like it is not the time. Instead, you decide to walk away as he has ordered. He does not chase you, nor looks at you... And you can definitely feel the weight of his cum in your belly sloshing around inside you as you move. This is all very confusing...";
			say "     With nothing else to do, you decide to follow through an extra exit that formed in the vicinity. It ends up taking you back to the Core Line, leaving the reaper's territory behind.";
			if demonologist is listed in companionList of Player:
				WaitLineBreak;
				say "     [italic type]Xaedihr catches up to you soon, looking at your... quaint shape. 'I see you got a filling from the elk boy reaper... Cute.' he comments, in an almost sarcastic way, as he pokes at your belly. 'You would cry if I told you what these void reapers are... Or maybe not, but it is a sad story. Either way, as long as you fulfill their desires, they won't hurt you. Think of them like a sincere version of a demon. They're not tricksters, just lost souls that hunger for others... But they can't actually take yours if you don't defy them.' he explains, as he lets go of you. 'Most do. Most people don't want to die... That is why the Grim Reaper is the most successful. This one... This one is very peculiar, though. Do keep me updated if you intend to continue to submit to him. Oh, and I'd appreciate if I could watch... For scientific purposes, obviously...' His last words seemed like a joke, but you really can expect anything from your half-demon companion...[roman type]";
			WaitLineBreak;
			say "[VRMoveOptions]";
		else:
			say "     With a glimpse of hope, you think you found the perfect opportunity to escape the reaper as he thinks he has the upper hand, so you roll to the side, get up and start running... That was the plan, but before you can take a single step forward, the creature stabs you with a painful and accurate strike with his scythe. It does not cut you in half, but you feel something leaving you. Your hands and feet... arms and legs... then, your whole self... everything becomes dormant, out of your control, cold and dropped... as you simply stand there without any strength left. The last thing you see is the reaper taking your soul, your eyes soon to be enclosed by darkness as your former physical shell collapses on the floor, lifeless.";
			say "     'What a shameful departure. I shall find a greater use for your existence.' he says, as he makes preparations to dispose of your empty body...";
			WaitLineBreak;
			now battleground is "Void";
			the Player was ended by "Elk Head Reaper";
			trigger ending "Player has died";
			end the story saying "You have perished in the Void, your soul taken by a reaper.";
	else: [pussy worship]
		say "     One thing you cannot deny, is that this disturbing humanoid creature is actually sporting an decently human-looking body. Well, decent is an understatement, the reaper is jacked, muscles like a true mythical amazonian woman, which look even more intimidating given how tall she is. You kneel, following her demands, and your head barely reaches her thick and strong thighs in height level. You're still fairly close to the wall, and the space between you shortens as she slowly walks towards you. 'Head on the floor.' she says, giving you just enough space to bend over and lay your head on the dirty ground, cheek turned downwards as you are facing the tools adorned wall.";
		say "     She bashes the scythe with the pommel against the ground to her side with tremendous force, and then you feel what seems to be her bare foot pressing against your cheek to a point that it is almost painful, but not quite. The surface of her sole is interestingly soft, you would expect a much rougher skin, especially since she walks without any sort of foot protection. She rubs it across your face for a bit, then, her deep demonic voice booms out to you. 'You might keep your soul if your obedience is total.' The reaper presses her foot just a bit more, and it really is scratching the pain level now. Your face recoils in a reflex, but you keep still in order to not enrage your new mistress.";
		say "     'You shall do anything I say... Anything I want... Anything you are told. No limits.' she says, and she awaits your consent. You better mind your words...";
		Linebreak;
		say "     ([link]Y[as]y[end link]) - You will do anything she says.";
		say "     ([link]N[as]n[end link]) - This is too much, run away!";
		if player consents:
			Linebreak;
			say "     A hint of satisfaction pours out of the reaper's mouth in the form of a 'Hmpf...' followed by a 'I like when mortals know their place.' Happy with your response, she lifts her foot off your face and puts it on the ground right next to your head. Then, she orders you to stand, keeping your head low, and before you can even blink, she walks towards you, grabbing you by the jaw and pushing you against the wall. Suddenly, you find yourself locked between her astoundingly muscular legs, helplessly under her control, as she slides a finger down to her womanhood, engorged and moist, mere inches away from your face.";
			say "     She looks down at you, and you can even sense the grin it would have been painted in her face, were it not for the elk skull helmet. She says 'Open. Tongue out.' and you open - your mouth, that is - and within a second, you find it full with her vulva, stretching your lips wide and sticking your tongue out. 'Lick. Properly.' she demands, and you comply, slipping it inside her pussy and wiggling as good as you could. You have got no choice here but to take her cooch as deep as she wants to, and obviously, she makes sure you don't interrupt your job, since you are here to be [']punished[']. She simply grinds it against your face to her heart's content - if she actually has one - as your cunnilingus skills are put to a serious test.";
			WaitLineBreak;
			say "     You don't get a pause, nor a moment to breathe... It is your mouth and face that is being ravaged hard and rough until your body begins to gasp for air. She completely owns you for as long as she wants, pushing her labia against your lips as hard as she deems appropriate, and only at the brink of your collapse, she pulls out to let you catch a breath... For long enough. Soon, she slams her pussy right back at your mouth, pushing your head against it, ordering you to lick deeper and deeper... Your hands feel absolutely worthless rubbing along her thighs and pushing them away tentatively in a reflex, since your body is [italic type]begging[roman type] for air, but it does nothing for the reaper. You know she is looking down at you, enjoying the view of you choking on her greedy cunt, knowing she has absolute control over you, and enjoying your nimble tongue licking at her womanhood like she owns you.";
			say "     Her stamina seems painfully long... You are barely given room to breathe before she pushes your head against her sex yet again. Between demands to lick deeper and harder, your are almost asphyxiated by her strong thighs around your neck, and your whole face is wet with her juices by now. She grinds harder... intensely... more and more as time goes by, as she takes her sweet time to hit the point of no return...";
			WaitLineBreak;
			say "     Then, with a moan, she hits her climax, a whole wave of pleasure surging through her that you can clearly feel, as her grip on you tightens to an almost painful level. With your face buried in her cooch, throbbing as she feels the orgasm she longed so much for, you continue to wiggle your tongue to further satisfy the greedy reaper, despite your near collapse. But before the worst happens, she pulls out and lets you take in the very much welcome air as you gasp for all that is dear to you.";
			CreatureSexAftermath "Player" receives "OralPussy" from "Elk Head Reaper";
			WaitLineBreak;
			say "     The reaper looks down at you, crouches down, lifts you head by the chin, and you could exchange looks for a while... For moments, you take a glimpse of what is left of her humanity in this short moment as she strokes your cheek... wiping out some of her cunt juice that got splattered on your face. Instinctively, you suck on her finger to lick it up, then she pets your under jaw in a seemingly affectionate way. She leans her head lower, almost to match yours in level, and to your surprise, she begins to lift her helmet to the point you are able to see her soft lips. They are shockingly human in appearance, and appear to belong to a very gorgeous woman...";
			say "     'You... could save me...' she says, her words striking you with surprise as you blink with obvious confusion, her voice sounding much smoother and clearer... like a person's. 'I hunger for souls... but you made me feel... satiated...' The moment is abruptly interrupted as she returns to silence, enclosing her face once more and avoiding looking at you. Then, a few words are said, and nothing else as she turns her gaze away. '... Go.'";
			WaitLineBreak;
			say "     There are a myriad of questions you could ask, but by instinct, you feel like it is not the time. Instead, you decide to walk away as she has ordered. She does not chase you, nor looks at you... And you can still feel the smell and taste of her pussy in your mouth. This is all very confusing...";
			say "     With nothing else to do, you decide to follow through an extra exit that formed in the vicinity. It ends up taking you back to the Core Line, leaving the reaper's territory behind.";
			if demonologist is listed in companionList of Player:
				WaitLineBreak;
				say "     [italic type]Xaedihr catches up to you soon. 'I see you got a... private session with the elk girl reaper... Cute.' he comments, in an almost sarcastic way, as he points at your still glistening cheeks, probably still wet from the ordeal. 'You would cry if I told you what these void reapers are... Or maybe not, but it is a sad story. Either way, as long as you fulfill their desires, they won't hurt you. Think of them like a sincere version of a demon. They're not tricksters, just lost souls that hunger for others... But they can't actually take yours if you don't defy them.' he explains, as he lets go of you. 'Most do. Most people don't want to die... That is why the Grim Reaper is the most successful. This one... This one is very peculiar, though. Do keep me updated if you intend to continue to submit to her. Oh, and I'd appreciate if I could watch... For scientific purposes, obviously...' His last words seemed like a joke, but you really can expect anything from your half-demon companion...[roman type]";
		else:
			say "     With a glimpse of hope, you think you found the perfect opportunity to escape the reaper as she thinks she has the upper hand, so you roll to the side, get up and start running... That was the plan, but before you can take a single step forward, the creature stabs you with a painful and accurate strike with his scythe. It does not cut you in half, but you feel something leaving you. Your hands and feet... arms and legs... then, your whole self... everything becomes dormant, out of your control, cold and dropped... as you simply stand there without any strength left. The last thing you see is the reaper taking your soul, your eyes soon to be enclosed by darkness as your former physical shell collapses on the floor, lifeless.";
			say "     'What a shameful departure. I shall find a greater use for your existence.' she says, as she makes preparations to dispose of your empty body...";
			WaitLineBreak;
			now battleground is "Void";
			the Player was ended by "Elk Head Reaper";
			trigger ending "Player has died";
			end the story saying "You have perished in the Void, your soul taken by a reaper.";

to OTElkHeadReaperDominate:
	say "     You think about the many ways you could do this, but right now, you have more important things to care about.";
	say "     <<Author's Note: There will be a Dom Route for the Elk Head Reaper in the future.>>";
	WaitLineBreak;
	say "     The reaper lets out a grunt, unable to offer any further resistance, as you simply take your steps around [EHRObjectPro], walking past the defeated humanoid without looking back. When you do, however, the Elk Head Reaper can no longer be seen or heard, having seemingly vanished from existence. All that remains is a way heading deeper into the darkness as the labyrinth also lost its tricky paths.";
	WaitLineBreak;
	VRObtainUnknownVoidRelicOne;

to VRObtainUnknownVoidRelicOne:
	say "     For the remainder of your adventure in the reaper's territory, you continue down the unexplored path ahead, traversing the tunnel unhindered. The bare light that exists comes from the faint amount of torches scattered along the walls, which dim just enough light so you don't trip over any of the loose rocks in the way. For some reason, the your surroundings seem fragile and easily shattered, so you thread carefully until you finally encounter a point of interest.";
	say "     In front of you, there is a sort of an altar, far away from being of a religious nature. It looks demonic, even, with some odd symbols engraved in the stone that you cannot quite understand...";
	if demonologist is listed in companionList of Player:
		WaitLineBreak;
		say "     [italic type]Fortunately, you do happen to have a demonologist companion with you. He inspects the altar with care, taking a few quiet minutes... 'Interesting how this realm seems to have connections to Hell. One would think it would stand as neutral as it could, but the fact that this dimension keeps throwing more darkness than angels at us is quite concerning. Anyway, the altar speaks of [']blood of the puregivers['] in a very... ancient manner, which I presume it would correspond to a Purifier Rank type of angel's blood, perhaps. Out of all the heavenly winged seraphs that are taking a vacation out there, who knows... One might be useful for us at some point.' he says, scratching his red beard with peculiar interest. 'Perhaps we should take note of this for future reference. It looks important...'[roman type][line break]";
	else:
		say "     Perhaps a demonology expert could help here, if you ever get to know one.";
	WaitLineBreak;
	if Resolution of Odd Treasure > 1:
		say "     You found nothing else besides the relic that you took from this place the other time.";
	else:
		say "     There is an intriguing artifact that you could take with you. You would call it a relic, which seems to also have some symbols in it, not to mention a very odd shape unlike anything you have seen before. It might be useful in the future, so you wonder if you should take it with you. Looks a bit heavy, though.";
		say "     [bold type]Do you want to take the void relic with you?[roman type][line break]";
		Linebreak;
		say "     ([link]Y[as]y[end link]) - Take the relic.";
		say "     ([link]N[as]n[end link]) - Leave it.";
		if player consents:
			say "     You decided to take the relic with you. It is a bit heavy... You might want to drop it in a safe place, losing it would be unfortunate.";
			ItemGain unknown void relic one by 1;
			now Resolution of Odd Treasure is 2; [found the relic]
		else:
			say "     You decided to leave the relic behind. It won't disappear, so you can come for it at any given time, provided you have a way to deal with the Elk Head Reaper...";
	WaitLineBreak;
	say "     With nothing else to do, you decide to follow through an extra exit that formed in the vicinity. It ends up taking you back to the Core Line, leaving the reaper's territory behind.";
	SanBoost 25;
	WaitLineBreak;
	say "[VRMoveOptions]";

to say VRMirrors:
	say "     [bold type]Mirrors[roman type][line break]";
	say "     Traveling across the darkness that follows the passage past the veil, your steps bring you over an intriguing game of mirrors. You can see your reflection among them, and the more you walk, the closer they come together.";
	WaitLineBreak;
	if Resolution of MirrorsKey is 0:
		say "     After opening a wooden door in front of you - a typically and normally looking one - you find yourself entering a corridor with its walls covered by a continuous long mirror on each side, and ending with another door. They reflect eachother endlessly, and you can see yourself in all of them, at the first glance. With nothing else to take note of, you are simply given the choice of continue forward, or return from where you came from, being a possible action this time.";
		Linebreak;
		say "     ([link]Y[as]y[end link]) - Walk through the corridor.";
		say "     ([link]N[as]n[end link]) - Just return.";
		if player consents: [forward]
			Linebreak;
			say "     Since you are here, you figure there should be no harm in pursuing this curiosity a little further...";
			say "     By simply starting to walk through the corridor with the mirrors, you make it across in less than a minute, arriving at the door on the other side. Grabbing the handle and turning it to the right, it creaks with an ominous, high pitched sound, followed by the door's movement. You open it, despite the noise, and walk into the next area. Your steps echo through the room...";
			WaitLineBreak;
			say "     It is another corridor, with both mirrors lined up in front of each other and attached to the walls on each side, with yet another door by the end of it. You can still see yourself in all the subsequent reflexions at first glance, and you are faced with another choice to make.";
			Linebreak;
			say "     ([link]Y[as]y[end link]) - Walk through the corridor.";
			say "     ([link]N[as]n[end link]) - Just return...";
			if player consents: [forward]
				Linebreak;
				say "     It is obvious that you are not done here, so you decide to continue on your way, going past this corridor all the same...";
				say "     Once more, by simply starting to walk through this room with the mirrors, you make it across in less than a couple of minutes, arriving at the door on the other side. Grabbing the handle and turning it to the left, it creaks with an ominous, high pitched sound, followed by the door's movement. You open it, despite the noise, and walk into the next area. Your steps echo through the room...";
				WaitLineBreak;
				say "     Again, another corridor, with both mirrors lined up in front of each other and attached to the walls on each side, with yet another door by the end of it. You can still see yourself in all the subsequent reflexions at first glance, and you are faced with another choice to make.";
				Linebreak;
				say "     ([link]Y[as]y[end link]) - Walk through the corridor.";
				say "     ([link]N[as]n[end link]) - Just return!";
				if player consents: [forward]
					Linebreak;
					say "     So these just keep going...? There should be something important at the end of it, if there is an end to these things... With this thought in mind, you continue on your way, going past this corridor as you did with the previous ones.";
					say "     Yet again, by simply starting to walk through this room with the mirrors, you make it across in less than a couple of minutes, arriving at the door on the other side. Grabbing the handle and turning it to the left, it creaks with an ominous, low pitched sound, followed by the door's movement. You open it, despite the noise, and walk into the next area. Your steps echo through the room...";
					WaitLineBreak;
					say "     Unsurprisingly, it is another corridor, with another two mirrors lined up in front of each other and attached to the walls on each side, with yet another door by the end of it. You can still see yourself in all the subsequent reflexions at first glance, and you are faced with another choice to make.";
					LineBreak;
					VRMirrorsTripleChoice;
				else:
					Linebreak;
					VRMirrorsBack;
			else:
				Linebreak;
				VRMirrorsBack;
		else:
			Linebreak;
			VRMirrorsBack;
	else:
		say "     This is the place where you have destroyed the mirrors that haunted you. Looking at it now, shards of mirrors are all over the place, floating in the eternal abyss. Perhaps in the future, this area will change, but for now, it remains only as a reminder of what you have experienced in here. Who know what the void has kept for you...";
		say "     You have managed to collect a [bold type]single piece of null essence[roman type] that you found lying around.";
		ItemGain null essence by 1 silently;
		WaitLineBreak;
		say "[VRMoveOptions]";

to VRMirrorsTripleChoice:
	say "     [link](1)[as]1[end link] - Walk through the corridor.";
	say "     [link](2)[as]2[end link] - Return.";
	say "     [link](3)[as]3[end link] - Glance over the mirror.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to go forward, [link]2[end link] to return or [link]3[end link] to look at the mirrors.";
	if calcnumber is 1: [Forward]
		Linebreak;
		say "     You guess you really can only keep going forward...";
		say "     Yet again, by simply starting to walk through this room with the mirrors, you make it across in less than a couple of minutes, arriving at the door on the other side. Grabbing the handle and turning it to the left, it creaks with an ominous, low pitched sound, followed by the door's movement. You open it, despite the noise, and walk into the next area. Your steps echo through the room...";
		WaitLineBreak;
		say "     Unsurprisingly, it is another corridor, with another two mirrors lined up in front of each other and attached to the walls on each side, with yet another door by the end of it. You can still see yourself in all the subsequent reflexions at first glance, and you are faced with another choice to make.";
		LineBreak;
		VRMirrorsTripleChoice;
	else if calcnumber is 2: [return]
		Linebreak;
		say "     The value of choice is an invaluable one at this point.";
		WaitLineBreak;
		VRMirrorsTripleChoice;
	else if calcnumber is 3: [glance]
		Linebreak;
		say "     You see yourself in the mirror. Raising a hand and waving at your reflection, it waves back at you in the same way.";
		WaitLineBreak;
		VRMirrorsTripleChoice2;

to VRMirrorsTripleChoice2:
	say "     [link](1)[as]1[end link] - Walk through the corridor.";
	say "     [link](2)[as]2[end link] - Return.";
	say "     [link](3)[as]3[end link] - Glance over the mirror.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to go forward, [link]2[end link] to return or [link]3[end link] to look at the mirrors.";
	if calcnumber is 1: [Forward]
		Linebreak;
		say "     You guess you really can only keep going forward...";
		say "     Yet again, by simply starting to walk through this room with the mirrors, you make it across in less than a couple of minutes, arriving at the door on the other side. Grabbing the handle and turning it to the left, it creaks with an ominous, low pitched sound, followed by the door's movement. You open it, despite the noise, and walk into the next area. Your steps echo through the room...";
		WaitLineBreak;
		say "     Unsurprisingly, it is another corridor, with another two mirrors lined up in front of each other and attached to the walls on each side, with yet another door by the end of it. You can still see yourself in all the subsequent reflexions at first glance, and you are faced with another choice to make.";
		LineBreak;
		VRMirrorsTripleChoice2;
	else if calcnumber is 2:
		Linebreak;
		say "     One cannot always choose, but they best do so while they can.";
		WaitLineBreak;
		VRMirrorsTripleChoice2;
	else if calcnumber is 3:
		Linebreak;
		say "     Your hand raises and waves at the reflection. It does the same back at you.";
		WaitLineBreak;
		VRMirrorsTripleChoice3;

to VRMirrorsTripleChoice3:
	say "     [link](1)[as]1[end link] - Walk through the corridor.";
	say "     [link](2)[as]2[end link] - Return.";
	say "     [link](3)[as]3[end link] - Glance over the mirror.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to go forward, [link]2[end link] to return or [link]3[end link] to look at the mirrors.";
	if calcnumber is 1: [Forward]
		Linebreak;
		say "     You guess you really can only keep going forward...";
		say "     Yet again, by simply starting to walk through this room with the mirrors, you make it across in less than a couple of minutes, arriving at the door on the other side. Grabbing the handle and turning it to the left, it creaks with an ominous, low pitched sound, followed by the door's movement. You open it, despite the noise, and walk into the next area. Your steps echo through the room...";
		WaitLineBreak;
		say "     Unsurprisingly, it is another corridor, with another two mirrors lined up in front of each other and attached to the walls on each side, with yet another door by the end of it. You can still see yourself in all the subsequent reflexions at first glance, and you are faced with another choice to make.";
		LineBreak;
		VRMirrorsTripleChoice4;
	else if calcnumber is 2:
		Linebreak;
		say "     The other can always choose, but they are not doing it when they can.";
		WaitLineBreak;
		VRMirrorsTripleChoice3;
	else if calcnumber is 3:
		Linebreak;
		say "     Your hand raises with your reflection's. It seems to be waving at you.";
		WaitLineBreak;
		VRMirrorsTripleChoice3;

to VRMirrorsTripleChoice4:
	say "     [link](1)[as]1[end link] - Walk through the corridor.";
	say "     [link](2)[as]2[end link] - Break the mirror.";
	say "     [link](3)[as]3[end link] - Glance over the mirror.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to go forward, [link]2[end link] to break the mirrors or [link]3[end link] to look at the mirrors.";
	if calcnumber is 1:
		Linebreak;
		say "     You guess you really can only keep going forward...";
		say "     Yet again, by simply starting to walk through this room with the mirrors, you make it across in less than a couple of minutes, arriving at the door on the other side. Grabbing the handle and turning it to the left, it creaks with an ominous, low pitched sound, followed by the door's movement. It opens for you, despite the noise, and you walk into the next area. Your steps echo through the room...";
		WaitLineBreak;
		say "     Unsurprisingly, it is another corridor, with another two mirrors lined up in front of each other and attached to the walls on each side, with yet another door by the end of it. You can still see yourself in all the subsequent reflexions at first glance, and you are faced with another choice to make.";
		Linebreak;
		VRMirrorsDoomedChoice;
	else if calcnumber is 2:
		Linebreak;
		VRMirrorsDestroy;
	else if calcnumber is 3:
		Linebreak;
		say "     You raise your hand with the reflection. It smiles at you. Your cheeks hurt as they are forced to smile back.";
		WaitLineBreak;
		VRMirrorsDoomedChoice;

to VRMirrorsDoomedChoice:
	say "     [link](1)[as]1[end link] - Walk through the corridor.";
	say "     [link](2)[as]2[end link] - Break the mirror.";
	say "     [link](3)[as]3[end link] - Glance over the mirror.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to go forward, [link]2[end link] to break the mirrors or [link]3[end link] to look at the mirrors.";
	if calcnumber is 1:
		Linebreak;
		say "     You attempt to move, but instead, you walk towards the mirror. It is not something you chose to do, but you feel compelled to do it, anyway. There is another you in your reflection, waving and smiling at you, something you can do in your daily basis. There is something in your eyes, however... A wicked, demonic stare that gazes into your soul. You find yourself saying 'Now it belongs to me...' with lip movements that are not yours. Yet you were forced to say those words. Someone, or something, seems to be controlling everything you do, even your thoughts...";
		WaitLineBreak;
		say "     Not the best of bodies, but it seems functional enough for what you desire to achieve. Now... to find your way out of the void and back to the surface... You guess that the other [']you['] does not need to do the thinking anymore. Mortals should never mess with the unknown if they don't know what they're doing. Sadly, this one found its inevitable fate... Oh, the void is such a great hunting spot. Delicious souls, and now you can make everyone worship you like the slaves they are going to be. But wouldn't it be fun to experience everything the world has to offer...? So many choices, and so little time... By the moment I am done figuring out what to do, I will need another body...";
		WaitLineBreak;
		now battleground is "Void";
		the Player was ended by "Envy Demon";
		trigger ending "Player has died";
		end the story saying "Your body has been stolen by an Envy Demon, and your soul... consumed and lost, forever.";
	else if calcnumber is 2:
		Linebreak;
		say "     You can't choose to do that. Not anymore.";
		WaitLineBreak;
		VRMirrorsDoomedChoice;
	else if calcnumber is 3:
		Linebreak;
		say "     Your hand is pushed upwards, and shakes involuntarily. You cannot stop it on your own, and have to wait it out.";
		WaitLineBreak;
		VRMirrorsDoomedChoice;

to VRMirrorsDestroy:
	say "     With the last brink of control you managed to hold tightly onto, you build up all the might you still have left, and with a single, powerful blow, you smash against the mirror before it can take you. It cracks, and within moments, it starts to shatter, as the sound of glass falling and breaking, hitting the floor shard by shard, replaces the silence of the room. There is a deep, inhuman scream accompanying the destruction, as you regain all the control you had lost over your body until here. It is a prolonged, agonized shout of frustration and pain, severely deep and demonic, something that assails your mind like a bad nightmare before all the lights turn dark. It is done. With the threat eliminated, you get to keep your soul, while the demon perishes in the emptiness of the void.";
	say "     Curiously, though, the shattered mirror dropped [bold type]a large key[roman type]... What door does it open? Perhaps you should continue to search the veil, once you manage to walk back to the core line. Carefully, though. The mirror shards are very real, and you don't want to earn yourself any painful cuts.";
	now Resolution of MirrorsKey is 1;
	WaitLineBreak;
	say "[VRMoveOptions]";

to VRMirrorsBack:
	say "     This place looks terrifying, and the mirrors send an ominous vibe. You better leave before something irreversible happens to you.";
	VRNormalSanityLoss;
	WaitLineBreak;
	say "[VRMoveOptions]";

Section 2-3 - Bad Ends

to VRTPBadEnd1:
	say "     Your mind has gone beyond what you could ever possibly perceive as reality, as in, you no longer have any control over it. It dissociates from your body, all means of thinking simply removed, together with any free will that you had. It is as if the scent of all the plants combined took over your brain, and now you cannot think of anything else but the immense pleasure they give you. You don't even realize how long it has been since you submitted to the sensations, time and space becoming a mere suggestion rather than real things, completely losing their meaning. You most definitely don't notice that the plants you were playing with previously are not longer what you saw in the first place...";
	say "     They are now terrifying tendrils... but [']terrifying['] is not the right word for you. They are your only friends, the ones that are welcoming you in their embrace, holding, touching and caressing your body in all the right spots as they wiggle around your skin so lovingly, pulling you deeper in their embrace. Their whispers... words... mean nothing to you. Oh, but how soothing they are, as you sink in their welcoming appendages. The sex of the plant you chose simply takes your body completely, and with it, your soul, as you keep diving within strange wiggling flesh that keeps pleasuring your body from every inch.";
	WaitLineBreak;
	say "     You do not even feel yourself vanishing within their bowels after what could be maybe hours and hours of slowly torturous pleasure, only to make you not think about how your body melts inside the beast, to become part of it as it feeds on everything you own and formerly were. Your body, your mind, your soul... All gone for the sake of this abomination's endless hunger. Tricked by its fake beauty, you succumb to your unfathomable fate.";
	WaitLineBreak;
	now battleground is "Void";
	the Player was ended by "Tentacle Abomination";
	trigger ending "Player has died";
	end the story saying "You have perished in the Void, consumed by a Tentacle Abomination.";

to VRTPBadEnd2:
	say "     All the beasts' extensions taking you for a long lasting embrace feels too good for any words. They take you over by any sensitive spot, mercilessly grinding and rubbing against your chest, your ass, your sex, slipping in your mouth and any orifice big - or stretchy - enough to receive them, wiggling inside and outside of you. Grabbed by them and dragged off the ground, your clueless body is brought to its central mass, [one of]an enormous, fat cock-shaped body[or]an enormous, plump vulva-shaped body[at random], soaking you in its juices before eagerly starting to grind your whole self against its entrance. It slowly begins to open the more you are forcingly grinded against it, and as slippery as you are, it takes no effort to shove your face inside, as the rest of your body follows too fast for any comfort.";
	say "     The sex of the abomination begins to take your body completely, pulling you deeper and deeper into its insides, diving within strange wiggling flesh that keeps pleasuring your body from every inch. You do not even feel yourself vanishing within their bowels after what could be maybe hours and hours of slowly torturous pleasure, only to make you not think about how your body melts inside the beast, to become part of it as it feeds on everything you own and formerly were. Your body, your mind, your soul... All gone for the sake of this abomination's endless hunger. Tricked by its fake beauty, you succumb to your unfathomable fate.";
	WaitLineBreak;
	now battleground is "Void";
	the Player was ended by "Tentacle Abomination";
	trigger ending "Player has died";
	end the story saying "You have perished in the Void, consumed by a Tentacle Abomination.";

to say MindLossVoid:
	WaitLineBreak;
	now battleground is "Void";
	the Player was ended by "Loss of Sanity";
	trigger ending "Player has died";
	end the story saying "You have perished in the Void after having lost your mind.";

Section 2-4 - Encounters Pre-battles

to say VRVoidSerpentPreBattle:
	say "     As its gigantic and long serpentine body wiggles towards you, comes the realization that you might be in grave danger. However, before engaging in a fight, you could attempt to surprise the beast by allowing it to strike first and perform a swift dodge, then running to cross the veil in order to leave the core line and the snake behind. It will be a difficult task, but it might just save you from a losing encounter. However, if you fail, you will leave an opening for yourself, becoming an easy target for its maw, denying you any chances of survival and becoming its next meal.";
	say "     You need to think fast... What shall you do?";
	LineBreak;
	say "     [link](1)[as]1[end link] - Allow for first strike, attempt to dodge and cross the veil.";
	say "     [link](2)[as]2[end link] - Rely on you strength instead, attempt to deflect its first strike and cross the veil.";
	say "     [link](3)[as]3[end link] - Show it an object that would scare it away, if you have any.";
	say "     [link](4)[as]4[end link] - Challenge it.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 4:
		say "Choice? (1-4)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to attempt an escape with your dexterity, [link]2[end link] to attempt an escape with your strength, [link]3[end link] to scare it away with a special item or [link]4[end link] to engage in a fight.";
	if calcnumber is 1: [Dexterity Check]
		Linebreak;
		let bonus be (( dexterity of player minus 10 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]16[roman type] (Dexterity Check):[line break]";
		if diceroll + bonus >= 16:
			say "     With such a risky move in mind, you have to make sure you can get it right. By letting the serpent have the first strike and being prepared for it, you go for the dodge as the enraged creature lunges at you. As per a product of luck and fortune, or perhaps skill, you do not know for sure, but you barely, just by a mere inch, even having felt the serpent's tusk and body by a graze, manage to dodge its first strike. Then, you focus all the energy on your legs, as you make haste towards the veil, then jumping right out of the core line with all the might you can muster.";
			say "     You almost cannot believe it worked.";
			WaitLineBreak;
			now VRVoidSerpentTracker is 0;
			VREventsRoll;
		else:
			say "     With such a risky move in mind, you have to make sure you can get it right. By letting the serpent have the first strike and being prepared for it, you go for the dodge as the enraged creature lunged at you.";
			if demonologist is listed in companionList of Player:
				Linebreak;
				let bonus be (( weapon damage of demonologist minus 10 ) divided by 2);
				let diceroll be a random number from 1 to 20;
				say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]16[roman type] (Xaedihr's Weapon Damage Check):[line break]";
				if diceroll + bonus >= 16:
					say "     As per a product of luck and fortune, or perhaps skill, you do not know for sure, but you barely, just by a mere inch, even having felt the serpent's tusk and body by a graze, manage to dodge its first strike. How? You for sure had failed it, [italic type]if it was not for Xaedihr, who managed to deliver an incredibly powerful tendril to smack down the serpent's head, making it change its trajectory and miss you completely. 'Not today, beast. Go hunt somewhere else.' he taunts as you both make a run for the veil, then jumping right out of the core line with all the might you can muster.";
					say "     You have to make sure you thank Xaedihr properly for saving your life, once you have the chance.[roman type][line break]";
					WaitLineBreak;
					now VRVoidSerpentTracker is 0;
					VREventsRoll;
				else:
					Linebreak;
					say "     But... to no avail. None of your efforts are successful, the only thing you manage is effortlessly allowing the creature to catch you in its maw. [italic type]You don't even see Xaedihr anymore, as everything happened so fast.[roman type][line break]";
					WaitLineBreak;
					say "[VRVoidSerpentWins]";
			else:
				Linebreak;
				say "     But... to no avail. None of your efforts are successful, the only thing you manage is effortlessly allowing the creature to catch you in its maw.";
				WaitLineBreak;
				say "[VRVoidSerpentWins]";
	else if calcnumber is 2: [Strength Check]
		Linebreak;
		let bonus be (( strength of player minus 10 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]17[roman type] (Strength Check):[line break]";
		if diceroll + bonus >= 17:
			say "     With such a risky move in mind, you have to make sure you can get it right. By letting the serpent have the first strike and being prepared for it, you go for a deflective blow as the enraged creature lunges at you. As per a product of luck and fortune, or perhaps skill, you do not know for sure, but you barely manage to deflect its first strike with a powerful defensive move, forcing the serpent's trajectory away from you. Then, you focus all the energy on your legs, as you make haste towards the veil, then jumping right out of the core line with all the might you can muster.";
			say "     You almost cannot believe it worked.";
			WaitLineBreak;
			now VRVoidSerpentTracker is 0;
			VREventsRoll;
		else:
			say "     With such a risky move in mind, you have to make sure you can get it right. By letting the serpent have the first strike and being prepared for it, you go for the dodge as the enraged creature lunged at you.";
			if demonologist is listed in companionList of Player:
				Linebreak;
				let bonus be (( weapon damage of demonologist minus 10 ) divided by 2);
				let diceroll be a random number from 1 to 20;
				say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]16[roman type] (Xaedihr's Weapon Damage Check):[line break]";
				if diceroll + bonus >= 16:
					say "     As per a product of luck and fortune, or perhaps skill, you do not know for sure, but you barely, just by a mere inch, even having felt the serpent's tusk and body by a graze, manage to dodge its first strike. How? You for sure had failed it, [italic type]if it was not for Xaedihr, who managed to deliver an incredibly powerful tendril to smack down the serpent's head, making it change its trajectory and miss you completely. 'Not today, beast. Go hunt somewhere else.' he taunts as you both make a run for the veil, then jumping right out of the core line with all the might you can muster.";
					say "     You have to make sure you thank Xaedihr properly for saving your life, once you have the chance.[roman type][line break]";
					WaitLineBreak;
					now VRVoidSerpentTracker is 0;
					VREventsRoll;
				else:
					Linebreak;
					say "     But... to no avail. None of your efforts are successful, the only thing you manage is effortlessly allowing the creature to catch you in its grasp. [italic type]You don't even see Xaedihr anymore, as everything happened so fast.[roman type][line break]";
					WaitLineBreak;
					say "[VRVoidSerpentWins]";
			else:
				Linebreak;
				say "     But... to no avail. None of your efforts are successful, the only thing you manage is effortlessly allowing the creature to catch you in its grasp.";
				WaitLineBreak;
				say "[VRVoidSerpentWins]";
	else if calcnumber is 3: [Special Item]
		Linebreak;
		if carried of sharp black tusk > 0 and carried of abyssal edge > 0:
			say "     Recalling what items you have available, you can choose between the sharp black tusk that you've got from another of its kind, or to challenge it with your mighty abyssal sword.";
			Linebreak;
			say "     ([link]Y[as]y[end link]) - Taunt it with a tusk (scare it away).";
			say "     ([link]N[as]n[end link]) - Show the Abyssal Edge (weaken and challenge it).";
			if Player consents: [Tusk]
				Linebreak;
				VRVoidSerpentPreBattleTusk;
			else: [Sword]
				Linebreak;
				VRVoidSerpentPreBattleAE;
		else if carried of sharp black tusk > 0 or sharp black tusk is wielded:
			VRVoidSerpentPreBattleTusk;
		else if carried of abyssal edge > 0 or abyssal edge is wielded:
			VRVoidSerpentPreBattleAE;
		else:
			say "     You don't really have any item you could use. With that said, you have no other choice but to attempt to fight it...";
			wait for any key;
			VRVoidSerpentFight;
	else if calcnumber is 4: [Fight]
		Linebreak;
		say "     You decided to engage in a fight with the Void Serpent. Readying yourself, you allow it to come...";
		wait for any key;
		VRVoidSerpentFight;

to VRVoidSerpentPreBattleTusk:
	say "     Knowing you have a tusk of one of their kind, you take it out and show it to the serpent, taunting it with one of your recent trophies. This seems to provoke the serpent even more as it hisses with hatred, as if ordering you to leave, but does not engage you. Instead, it begins to run away from you as fast and furious as it arrived.";
	say "     It looks like you have found a way to scare the serpents away, even if they manage to get to you, as long as you have this sharp black tusk with you.";
	WaitLineBreak;
	say "[VRMoveOptions]";

to VRVoidSerpentPreBattleAE:
	say "     With your Abyssal Edge in hand, you challenge the serpent with the help of such a powerful weapon. Successfully inflicting fear on the creature, it seems it has grown more vulnerable than before, providing a higher chance of success at defeating it.";
	say "     You do have to watch out for its tusks, still, as they remain as sharp and dangerous as ever...";
	wait for any key;
	choose a row with name of "Void Serpent" in the Table of Random Critters;
	now HP entry is 200;
	now inasituation is true;
	challenge "Void Serpent";
	now HP entry is 450;
	VRVoidSerpentFightConclusion;

to VRVoidSerpentFight:
	now inasituation is true;
	challenge "Void Serpent";
	VRVoidSerpentFightConclusion;

to say VRDarkTyrantPreBattle:
	say "     This foe is no joke. A direct confrontation with him would very likely end in a defeat on your side. One thing is certain, the Dark Tyrant hungers with all of his senses, and you are in his sight.";
	if Resolution of Friend Of The Darkness >= 2:
		WaitLineBreak;
		project figure of DarkTyrant_icon;
		say "     However, the creature does not seem to want to harm you, at all. He approaches you with his now even more grown form, fueled by your generosity. 'You... Friend.' he whispers with a dark and somber voice, much more audible than before. 'Fear... me not. I... Thank you... Should.' he continues, and he seems genuinely happy that you have sated his hunger, so far. Not only that, you have also helped him gain some consistency overall, not looking as gooey as before, but still... Extremely gooey all over. Given his apparent great health, you are starting to wonder if this was the right move, but at least, it seems you have [']neutralized['] a threat, in one way or another.";
		say "     He walks up to you, with his now gigantic size, almost having bumped his perpetually hard cock onto your face and smearing it with... pre-goo(?) all over. 'I... Find you, will. Still... Learning. Need... help.' he attempts to say, and hesitantly, you nod. 'I... am... King. Fallen. No longer one. You... can help.' Honestly, you have no idea what this means, but looks like you will have time to find out. He seems happy with your reactions, so far, and lets you go as he walks back into the darkness, never to haunt you again during your void explorations.";
		say "     Or... so you hope.";
		now VRDarkTyrantTracker is -1; [he won't chase the player about anymore, at least in the void]
		now Resolution of DarkTyrantQuest is 2;
		WaitLineBreak;
		say "[VRMoveOptions]";
	else if Resolution of Friend Of The Darkness > 0 and Resolution of Friend Of The Darkness < 2:
		say "     He speaks, however, unlike before. A soft whisper, barely able to say the word out loud 'Essence...?' Looks like he is asking for more Null Essences...";
		LineBreak;
		DarkTyrantNullEssencePrompt;
	else:
		LineBreak;
		DarkTyrantNullEssencePrompt;

to DarkTyrantNullEssencePrompt:
	if carried of null essence > 0:
		say "     Perhaps you could offer him something in order for you to be allowed to walk away?";
		say "     ([link]Y[as]y[end link]) - Offer him a Null Essence.";
		say "     ([link]N[as]n[end link]) - Fight him, no matter how hard it would be.";
		if Player consents: [Offer him the essence]
			Linebreak;
			say "     Looking at your gesture, the hulking man of black goo lets out a pleased grunt, his enormous manhood throbbing in excitement. You are not quite sure what is exactly the feeling he is experiencing right now, and it gives you a quite unsettling vibe. He walks over to you, and surprisingly, he takes what you are offering him quite gently, with a terrifying smile that actually [bold type]seems friendlier[roman type] now. You see him taking the essences and absorbing them right back into his body, which seems to pulse with newfound power. Then, his enormous black goo hand reaches for your face, stroking your cheek with part of two of his fingers, and you hear the words 'Thank you...' barely reaching your ears. Finally, the Tyrant leaves, walking away and retreating back into the shadows.";
			say "     What just happened? You find yourself in helpless confusion... Though you better [bold type]get out of here[roman type] before he hungers, again. Unless you can afford more essences...?";
			ItemLoss null essence by 1;
			now VRDarkTyrantTracker is 0;
			if Resolution of Friend Of The Darkness >= 0 and Resolution of Friend Of The Darkness < 2:
				increase Resolution of Friend Of The Darkness by 1; [goes up to 3]
			WaitLineBreak;
			say "[VRMoveOptions]";
		else:
			Linebreak;
			VRDarkTyrantPreBattleFight;
	else:
		say "     Unfortunately, you do not seem to be carrying any Null Essences with you... This bodes poorly for you, as the Tyrant's wrath and hunger begin to show...";
		Linebreak;
		VRDarkTyrantPreBattleFight;

to VRDarkTyrantPreBattleFight:
	say "     There is no time to waste. This will be a fight, and a very tough one.";
	if Resolution of Friend Of The Darkness > 0:
		say "     [bold type]Your building friendship with the Dark Tyrant has been lost, permanently.[roman type][line break]";
		now Resolution of Friend Of The Darkness is -1;
	wait for any key;
	if abyssal edge is wielded:
		say "     But when you unsheathe your Abyssal Edge, something seems to happen... The Dark Tyrant hesitates, and the expression in his face becomes desperate, full of hatred in his eyes. His movements shake, and his reaction time becomes slower, as is terrified of something. Is he afraid of your sword?";
		say "     Fortunately, he seems to have been weakened severely, maybe even providing you a chance to defeat him...";
		wait for any key;
		choose a row with name of "Dark Tyrant" in the Table of Random Critters;
		now HP entry is 499;
		now wdam entry is 49;
		now inasituation is true;
		challenge "Dark Tyrant";
		now HP entry is 900;
		now wdam entry is 74;
		VRDarkTyrantFightConclusion;
	else:
		now inasituation is true;
		challenge "Dark Tyrant";
		VRDarkTyrantFightConclusion;

to say VRPeculiarSummonerPreBattle:
	say "     You cannot quite identify their gender, but their voice sounds soothing enough to tempt you to lower your guard. 'Such a wondrous creature for me to experiment with.' You cannot really call them a he or a she, even the mannerisms seem to confuse you, and you cannot quite detect any physical characteristics under their cloak. Nonetheless, it seems like their intention is to turn you into a laboratory rat.";
	say "     Contrary to the other inhabitants of the Void, however, this one seems highly intelligent. Perhaps you could converse with them, and persuade them to let you go? Or, in last case, attempt to trick them into pursuing something else that would be of elevated interest for them...";
	Linebreak;
	say "     ([link]Y[as]y[end link]) - Try to persuade the foe into letting you go.";
	say "     ([link]N[as]n[end link]) - Engage in combat.";
	if Player consents: [Persuasion Attempt, using a check system would perhaps be better?]
		Linebreak;
		let bonus be (charisma of player);
		say "[bold type]Charisma Check[roman type]: [special-style-1][bonus][roman type] vs [special-style-2]19[roman type]";
		if bonus >= 19:
			say "     With some fancy wording, a creative scheme and a convincing posture, you manage to make the peculiar summoner believe that you've seen something completely outstanding, and that it would be amazing for them to research in order to augment their power even further. You have no idea how you managed to sound so persuasive, but the summoner hears you with a lot of interest. 'It appears I shall have to postpone your capture indefinitely. This new discovery certainly is worthy of my full attention, for the moment.' The figure affirms, before retreating in a haste towards the direction you pointed.";
			say "     You better leave now before they catch on to the bluff.";
			WaitLineBreak;
			now VRPeculiarSummonerTracker is 0;
			say "[VRMoveOptions]";
		else if bonus >= 15:
			say "     Despite your attempts at trying to give them all the fancy wording and your most brilliant creative scheme, they just seem to remain unconvinced, asking you for a lot of scientific details about what you have actually seen. The peculiar slender shape is testing you, and now you need not to sound convincing, but to seem like you can completely describe and prove that you are completely certain of what you are talking about.";
			WaitLineBreak;
			Linebreak;
			let bonus be (intelligence of player);
			say "[bold type]Intelligence Check[roman type]: [special-style-1][bonus][roman type] vs [special-style-2]18[roman type]";
			if bonus >= 18:
				say "     Fortunately, you are able to deflect any question with precise descriptions of bodily functions and appearances, denoting biology concepts like a true master. Whether you actually grasp the concepts or are just making it up, the robed figure finally lets their guard down and accepts your suggestion. 'It appears I shall have to postpone your capture indefinitely. This new discovery certainly is worthy of my full attention, for the moment.' The figure affirms, before retreating in a haste towards the direction you pointed.";
				say "     You better leave now before they catch on to the bluff.";
				WaitLineBreak;
				now VRPeculiarSummonerTracker is 0;
				say "[VRMoveOptions]";
		else:
			say "     No matter how hard you attempt to convince them, you are simply not persuasive enough. They start doubting your very first words. 'Enough of this.' are the last words you hear before the slender shape walks towards you with an offensive intent.";
			now inasituation is true;
			challenge "Peculiar Summoner";
			VRPeculiarSummonerFightConclusion;
	else:
		say "     You refuse to talk to this creature, and instead choose to engage in a fight. 'So be it.' they say, as the peculiar summoner prepares to retaliate...";
		now inasituation is true;
		challenge "Peculiar Summoner";
		VRPeculiarSummonerFightConclusion;

Section 2-5 - Creature Descriptions

to say VoidSerpentDesc:
	say "     A serpent of the void, of gigantic dimensions, approaches with its bright yellow eyes fixated on you, wiggling its long and dark purple scaled body towards you menacingly. With a hiss, it threatens you with its dangerously sharp tusks, every so often dripping with a black liquid, thought to be its venom, and its maw is so large that it could easily fit someone your size in. It doesn't look like it will easily give up, and you might find yourself in trouble if you are caught in its hypnotizing gaze.";

to say DarkTyrantDesc:
	say "     The one and only great tyrant of the Void, feared by almost every creature in the realm. Thought to be a [']he['] due to its enormous male appendage, the gigantic body of pitch black goo gives you a [']toothy smile['], with an arrangement of razor sharp teeth that reminds you of a shark's maw. As a long reaching tongue comes out, there is a constant stream of gooey drool being a clear suggestion of how much this monster hungers. He assumes the shape of a freaky and shredded humanoid monster with its dark slimey form, enough to overpower anything and anyone in his path. The only thing you cannot help but avoid looking at is his eyes. His bottomless gaze strikes you with a disturbing familiarity...";

to say PeculiarSummonerDesc:
	say "     Sometimes it is tendrils, other times it is a cluster of arms, you never know what you should be expecting to come out of this one. A slender, dark robed figure of questionable gender, they seem to be able to reproduce any gender's voice and summon anything they desire. It appears they have learned how to invoke certain creatures - or parts of some - to aid them in a time of peril, including the art of metamorphing. They speak to you how you seem to imagine them, their voice reaching for your ears in a form of a demand 'Submit. I will make sure you enjoy it.' Whether you intend to or not, they will not give up until you conform to their order.";

to say TentacleAbominationDesc:
	say "     A massive abomination with a multitude of tentacles, this beast always has a central mass resembling one of the human's reproductive organs, which seems to shift between a gigantic penis and an enormous vulva whenever it wants, always covered in numerous fleshy extensions that reach and pull anything towards it in an attempt to feed itself. Hunger is evident in the way these monsters trick and feed on their prey, and it clearly intends on taking you, too. Crawling towards your position, the abomination flaunts its genitalia of titanic proportions and the seemingly endless number of tentacles at you, leaving you unsure as if it is trying to turn you on or to plainly scare you away.";

to say ElkHeadReaperDesc:
	if Resolution of ElkHeadReaperGender is 10: [male]
		say "     An enormously tall and muscular, statuesque even, and manly looking creature, wearing a large elk's skull, with two moderate sized horns pointing towards each side, made into a helmet, as a dark ragged cloak coming from underneath it extends itself downwards, past his shoulders and reaching the ground right next to his bare feet. On his right hand, he carries a scythe, constantly dripping a black liquid from the tip of its curved blade. While looking like a visage of the grim reaper himself, you can't help but notice an additional feature that further emphasizes him as a male, right on the crotch. A large, thick and uncut human shaft, perpetually hard, throbbing every once in a while, as he looks down on you intimidatingly.";
	else: [female]
		say "     An enormously tall and muscular, statuesque even, and womanly looking creature, wearing a large elk's skull, with two moderate sized horns pointing towards each side, made into a helmet, as a dark ragged cloak coming from underneath it extends itself downwards, past her shoulders and reaching the ground right next to her bare feet. On her right hand, she carries a scythe, constantly dripping a black liquid from the tip of its curved blade. While looking like a visage of the grim reaper herself, you can't help but notice a few additional features that further emphasizes her as a female, which are a pair of round and volumptous tits accompanying her powerful body, and a pussy where you would find one, as she looks down on you intimidatingly.";

Section 2-6 - Fight Conclusions and Win/Loss Scenes

to say VoidSerpentWins:
	if inasituation is true:
		say ""; [dealt with at the source]
	else:
		say "Nothing written yet.";

to say VRVoidSerpentWins:
	VoidSerpentVore1;
	WaitLineBreak;
	now battleground is "Void";
	the Player was ended by "Void Serpent";
	trigger ending "Player has died";
	end the story saying "You have perished in the Void, swallowed by a Void Serpent.";

to VoidSerpentVore1:
	say "     Stunned for a while before you can regain your senses, you find yourself helplessly constricted by the enormous serpent's body, tightening around you as it hisses, a mixture of spit and venom showering you with its enraged breath. No matter how much you struggle, you cannot release yourself, only provoking the snake to use more of its force in holding you still, feeling all your bones close to getting crushed by such inhuman strength. Once you are effectively immobilized, you feel beginnings of involuntary arousal as your body begins to react to the serpent's venom. The creature also goes quiet for a while, only staring at you with its bright yellow eyes... Fixated on yours... And you begin to dissociate from yourself slowly, your mind no longer belonging to you.";
	say "     Once your efforts at offering resistance stop, the serpent simply leans in for a taste of you, licking your face with the forked tip of its long tongue, then once it is ready, it begins to open its enormous maw and carefully shove you between its fangs, without pressing them against you. It intends to swallow you whole and undamaged, all while your body quivers in non-intended pleasure. The venom keeps you relaxed and happy as the beast's insides wiggle and throb around your head, soon your torso too, as you keep sinking in. With each move, the serpent takes a little more of you inside, letting its body swell in order to accomodate the additional volume that you provide.";
	WaitLineBreak;
	say "     This ordeal feels surprisingly pleasurable as it constricts around your body in ways that seem to caress each and every sensitive spot all over you, not to mention that its tongue is twirling and teasing your genitals as if it knew exactly how to keep you in check. Right now, it's only your legs that are left, but soon enough, they are being slurped in with the snake's motions until there's nothing left but your feet poking out of its maw. Then it is only a matter of time until they too disappear inside its body as you're pulled deeper inside, completely covered by wiggling, warm and moist flesh. There is only darkness around you as you are yet shoved in deeper, towards the area where you will be resting as the serpent digests your body.";
	say "     It all begins, eventually, but you are too numb with ecstacy caused by its venom to feel any pain whatsoever. For you, it is just a tingle, followed by a sudden loss of all sensitivity over a part of your body. Your conscience begins to fade away, together with your self, over hours and hours of imprisonment as you are slowly processed by the serpent's organism, soon to join and be part of it in form of nutrients for the creature, with several orgasms along the way.";

to say VoidSerpentLoses: [no text here, it's in fightoutcome]
	if inasituation is true:
		say ""; [dealt with at the source]
	else:
		say "Nothing written yet.";

to say DarkTyrantWins:
	if inasituation is true:
		say ""; [dealt with at the source]
	else:
		say "Nothing written yet.";

to say VRDarkTyrantWins:
	say "     The enormous mass of black goo holds you in his huge hand, smiling with his terrifying razor sharp toothing as he handles you like an action doll. His raging boner hasn't dropped any softer for even a second, and his excitement for having captured you is evident. You are quickly soaked in the slime, even feeling how his coat of goo craves your body, sticking to your skin and leaving a slick trail whenever he moves his fingers away. Left helpless and unable to offer any resistance against a much bigger and stronger creature than you, you have no choice but to let him have his way with you. Whatever gear you had on was completely dissolved or taken away by his goo, and you remain naked in his grasp.";
	say "     You can feel his breath on you, with no smell, just a high temperature and a blast of hot air whenever he exhales, though you are not quite sure that is breathing. He slides his big index finger from the free hand all over your body, feeling you up and caressing the spots that make you quiver. Inevitably, you begin to feel aroused by his touch, even as sloppy as it is, but the way a gigantic mass of goo so thoroughly massages your body feels incredibly good... Your mind cannot process this, and this might very well be the effect of the Void, but you are enjoying this, so much that you are showing obvious signs of arousal, [if player is male]your cock hardening at his constant rubbing[else if player is female]your feminine bits moistening at his persistent touch[else]your whole self hot and bothered by his persistent touch[end if], as if he was attempting to please you on purpose.";
	WaitLineBreak;
	let randomnumber be a random number from 1 to 2;
	if randomnumber is:
		-- 1: [Oral Vore]
			say "     With your body now fully coated in slime and sluggish because of this arousal taking over you, the massive brute of black goo brings you close to his mouth, letting his tongue be in charge and covering you in his gooey saliva as he licks around your arms, legs and chest, eventually passing by your crotch, as you are slowly brought closer to his mouth. With his long tongue wrapped around you, he hides his teeth back in the goo and pulls to towards what would be his lips, enveloping you in the black goo as his tongue keeps working all over you. The insides of his mouth are now squishy and gooey, without anything sharp or painful, providing you with an odd comfort as he begins to slightly slurp you deeper past his solid liquid lips.";
			say "     He takes you feet first, pushing you through your legs, past your crotch as he wiggles his tongue underneath you, then leans his head back and lets you slide in with gravity, sinking to your chest, up to your shoulders and arms, your head disappearing into the darkness of his mouth as you feel his tongue twirling around you, as if savoring you, feeling your taste, or simply just playing with you. It is as if the Dark Tyrant felt some sort of affection for you, so much that he wants to make you feel good before he takes you inside him. He lets out a moan that you can feel once he presses you against the upper side of his mouth with his tongue, rubbing it all across you as if taking more of your flavor, your surroundings bouncing rhythmically as if he was stroking his male appendage.";
			WaitLineBreak;
			say "     As you are brought closer and closer to his gooey throat, pushed in by his tongue, you feel your whole body shaking when a deep grunt bursts from his insides, as if he reached his climax, all the while he decides to finally swallow you. His slimey esophagus slowly pulls you deeper into a black gooey mess, in which you lose yourself, only darkness claiming your body, completely enveloped and stuck in black solid liquid, and deprived of air. You as you know yourself, your body as you controlled it and your mind all start to become irrelevant as you feel all that belongs to you being taken away, absorbed into the goo that you are now part of.";
		-- 2: [Cock Vore]
			say "     With your body now fully coated in slime and sluggish because of this arousal taking over you, the massive brute of black goo brings you close to his gigantic, throbbing cock that is always so happy to see you. From here, you can already feel a warmth emanated by his penis, leaking more dark slime the closer you are brought to it. The Tyrant's dick is bigger than you, thicker than you, and very, very solid, despite it still being made of goo. He puts you underneath it, pressing your body against the underline of his shaft, bringing you down and up through it as his massive erection rubs across you entirely, only to make you feel his entire appendage throbbing on top of you. He lets out a grunt of pleasure everytime he brings you closer to the tip, and eventually, he focuses his gestures around the gooey glans.";
			say "     The Tyrant gives a little thrust everytime your body rubs against the sensitive surface around his slit, expelling thick globs of what would be precum if it wasn't black slime. The texture and consistency is unspeakably thick, the same as honey though tasteless like the Void, and it becomes a problem when a drop of that hits you right on the face. Although what happens next is much, much worse, as you find yourself sinking in that stuff when he pushes your head past the slit. This enormous hulk of black goo seems to be pushing you down his cock, and loving the sensations you are giving him when you wiggle your body out of surprise, judging by how much his shaft pulses and hardens once he begins to take you in.";
			WaitLineBreak;
			say "     After your head, your shoulders follow as he slowly continues to push, moaning and grunting as he feels more and more of you being sucked in by his gooey manhood, down to your waist, and with each throb, a little more of your legs... until your feet are the only thing poking out of his dong. With a finger, he presses against your soles, and completely shoves you inside his rod, having achieved so much hardness that you thought it would be impossible to reach for something made of slime as he is. Inside, however, it feels like wobbly flesh, constricting and pulsing all around you like a living heartbeat, warm goo throbbing all over your body as you keep sinking, deeper and deeper, until you are finally dropped in what seems to be his balls, or rather, a huge sack of more goo.";
			say "     There is some liquid inside, which is that very thick slime he keeps leaking, except this one is much hotter, almost burning through you, yet you get used to it. It envelops you and stimulates your body, providing you with a lot of pleasurable sensations as you are invited to lay down and close your eyes... You feel the Tyrant caress his sack with you inside, everything rumbling and bouncing around you as you are kept sealed tightly inside his nuts. There is no longer a need in you to breathe, as you as you know yourself, your body as you controlled it and your mind all start to become irrelevant. All that belongs to you is taken away, melting away in his slime and becoming part of a much greater being.";
	say "     You are able to feel the Dark Tyrant's body, see his thoughts, feel his emotions... He is glad to have you become part of him.";
	WaitLineBreak;
	now battleground is "Void";
	the Player was ended by "Dark Tyrant";
	trigger ending "Player has died";
	end the story saying "You have perished in the Void, consumed and assimilated by the Dark Tyrant.";

to say DarkTyrantLoses: [no text here, it's in fightoutcome]
	if inasituation is true:
		say ""; [dealt with at the source]
	else:
		say "Nothing written yet.";

to say PeculiarSummonerWins:
	if inasituation is true:
		say ""; [dealt with at the source]
	else:
		say "Nothing written yet.";

to say VRPeculiarSummonerWins:
	say "     'Now, stay put, and allow me to do some research.' they say, as the giant rocky hand's grasp tightens around you. Any gear that you had on you is abruptly removed by tendril extensions surging beneath the hand's wrist, tearing and shredding through everything in order to leave you completely exposed and clear of any obstacles. Naked as you are, the cloaked figure walks up to you, and still without showing their face or body, they look at you as if examining certain details of you. 'Interesting. Biologically human, no doubt. Exposure to a type of nano-technology seems to be prevalent. Is it a common thing for people in your world?' they speak, with that questionable voice that tends to sound more like the way you want it to sound, as it was guided by your mind in some way, or changed to meet your preferences...";
	say "     Suddenly, the tendrils move to touch your body all over, especially at your chest and crotch. They do tentative moves, and the summoner observes your reaction quietly, with interest. With this forced stimulation, you can't help but quiver and wiggle around as they move torturously by your chest and messing around your loins. 'Reading highly suggestive physical manifestations of arousal... Very ordinary.' Then, the tendrils stop to care about pleasing you, and instead, something pushes against the space between your legs, having thrusted once rather violently and inflicting unexpected pain on you. 'Apologies. Miscalculation. Though it appears you are rather sensitive in there. Also very ordinary.'";
	WaitLineBreak;
	say "     They make up for it by now slowly approaching whatever pounded you so hard, and it seems to be... a quite large tendril, dark purple in color. It seems they can change its size at will, too... 'Be still, I must claim your body.' You don't know what they mean by that, but the way this large extension slips itself inside your ass seems suggestive enough, wiggling inside you... And they do not stop there. This tendril seems to be climbing its way up through not just your ass, but your insides as well... You don't know how deep it will continue to go until the mysterious figure tells it to stop. 'Suitable vessel. And I see you are enjoying the process. Perfect.' they say, as the tendril continues to wiggle, with all the others also resuming their so pleasurable stimulation around your sensitive parts, around your chest, some slipping in your mouth...";
	say "     The process continues for a long, long time, consecutive thrusting and pounding from all sides as you are held suspended in the air by these tendrils, until you feel your mind breaking. You do not know how, but it is as if what you are is no longer you, looking like you were watching a movie in third person of yourself getting screwed over by these strange summonings. Then, to your horror, the tendrils seem to move completely inside, with their [']tails['] now visible, having emerged from the ground and crawling inside your body. You see yourself mutating into something inhuman, a sort of a dark purple-skinned and slender bipedal figure with tendrils coming out of your back, hands and crotch, with elongated legs and arms and a mouth that opens monstrously.";
	WaitLineBreak;
	say "     With this, the peculiar summoner steps back, analyzing their creation. 'Not perfect, but not bad either. You will do a good host for my tiny Cthulhu-like thingie. Well, I haven't named it yet, perhaps you get to have a special one if you do well.' Your body immediately bows to your creator, and you cannot even stop it. Even thinking is hard, with other thoughts taking priority over yours. It is difficult to stay like your own self... You no longer control your actions nor your will...";
	say "     It is as if your body was taken from you, and you remained trapped in it.";
	WaitLineBreak;
	now battleground is "Void";
	the Player was ended by "Peculiar Summoner";
	trigger ending "Player has died";
	end the story saying "You have been removed from your body, which was then taken over.";

to say PeculiarSummonerLoses: [no text here, it's in fightoutcome]
	if inasituation is true:
		say ""; [dealt with at the source]
	else:
		say "Nothing written yet.";

to say TentacleAbominationWins:
	if inasituation is true:
		say ""; [dealt with at the source]
	else:
		say "Nothing written yet.";

to say VRTentacleAbominationWins:
	TentacleAbominationVore1;
	WaitLineBreak;
	now battleground is "Void";
	the Player was ended by "Tentacle Abomination";
	trigger ending "Player has died";
	end the story saying "You have perished in the Void, swallowed by a Tentacle Abomination.";

to TentacleAbominationVore1:
	say "     As you fall face flat on the ground, the abomination is dragging you by your feet towards its central mass, but before that, amidst your futile resistance, you are brought to the air, suspended upside down for moments as more and more of its extensions find themselves wrapped around your body. With arms and legs immobilized, your existence simply remains as an easy target of abuse for the monster, which takes great interest in touching and harassing all your sensitive areas, each tentacle flicking at around your chest and inner side of your thighs, having quite a lot of fun rubbing themselves against your [if player is male]cock[else if player is female]pussy[else]crotch[end if], as if the beast knew of your most vulnerable areas.";
	say "     With enough persistence, the abomination manages to bring all your resistances down as you're helplessly stimulated down your parts, with already plenty of tendrils assaulting and completely covering you, to the point that any movement you attempt to make results in nothing but a little push. While taking you closer to it, the monster decides to shove one of its phallic members down your mouth, with another poking at the space between your asscheeks, threatening to violate you in any manner possible. Its powerful shafts spread your legs open with ease, fully exposing your entrance to the abomination. When the whim takes it, you feel one pushing rather violently against your asshole, [if player is female]with another slipping inside your womanhood, [end if]while the one in your mouth just digs itself deeper towards your throat, as they wiggle and squeeze to allocate themselves inside you.";
	WaitLineBreak;
	say "     They throb and ram, pull and push, squeeze and rub all they can, in and out of you, all over you, covering you in a juice that seems comparable to a beast's drool, but slick and slippery, with their bulbuous tips engorged as the rest of the tentacles['] shafts thicken and harden, increasingly excited and more than happy to take you over. You find yourself thoroughly assaulted from all ends, being pulled deeper and closer into the tendrils['] embrace. Each and every single one of them is wiggling inside you or all around you, their width stretching your fleshy tunnels while continuously pounding and thrusting into you.";
	say "     It's when you look down, towards the center of all these tentacles, throbbing and leaking a white, thick liquid from their flared tips, that you can see what awaits you...";
	WaitLineBreak;
	if a random chance of 1 in 2 succeeds: [it's a dick!]
		say "     ... an enormous, massive penis-shaped mass, whose slit gapes and throbs liquid out at your approach the more its surrounding tendrils take a grasp at you, slowly bringing you over to their in-between as you are mercilessly overstimulated all over and pounded deep in your orifices. This molded cock grows bigger, harder and pulses an unbearable warmth that makes you sweat once you're caught in its radius, while the abomination's tentacles flip you around in order to make you fit its terrifying maw, your head shifted towards it. The monster, once you're touching its sensitive body, makes some of its tentacles retreat from your body, except those that are holding you in place, before slowly bringing you over to its slit. As it leaks, a even thicker glob of white juice covers your face, with a chunk of flesh instantly swallowing you over to your neck.";
		say "     It continues to slurp on your body down to your shoulders, making it around your chest, and keeps on pushing you inside. Its heat is so hot that you nearly feel yourself melting, and no matter how much you would wiggle, struggle, kick and punch around, the creature feels nothing but more pleasure as it feels your body filling its, going down that massive shaft that swells with your shape, leaking more liquid in every moment it manages to push you down a little more, past your waist, leaving only your legs out. Any movements you make only encourage it further, so it grabs you around your legs with more tentacles and, with additional pushing, it inserts you fully inside the penis that wants to swallow you completely, until it finally does.";
		WaitLineBreak;
		say "     The last bit of you, which are your feet, is then swallowed by the giant penis as the tendrils let go of you completely, allowing you to sink in its length as you disappear into the mass. You are then pulled deeper, forced to go into a curl, and held inside a gelatinous body that floods itself in more of that strange liquid, oddly warm and making you tingle all over, until you begin to doze off. It is as if the darkness itself was suffocating you, making you lose your will to breathe. What remains is your shell, as it then too merges with the rest of the abomination that consumed your body and soul, a process that lasts for hours and hours with increasing orgasmic pleasure, a wicked way to make you surrender to its greedy hunger.";
	else: [it's a pussy]
		say "     ... an enormous, massive vulva-shaped mass, whose plump lips throb and leak liquid out at your approach the more its surrounding tendrils take a grasp at you, slowly bringing you over to their in-between as you are mercilessly overstimulated all over and pounded deep in your orifices. This molded pussy grows bigger, moistening and blinking every so often, and pulses an unbearable warmth that makes you sweat once you're caught in its radius, while the abomination's tentacles flip you around in order to make you fit its terrifying entrance, your head shifted towards it. The monster, once you're touching its sensitive body, makes some of its tentacles retreat from your body, except those that are holding you in place, before slowly bringing you over to the gaping entrance. As it leaks, a even thicker glob of white juice covers your face, with a chunk of flesh instantly swallowing you over to your neck.";
		say "     It continues to slurp on your body down to your shoulders, making it around your chest, and keeps on pushing you inside. Its heat is so hot that you nearly feel yourself melting, and no matter how much you would wiggle, struggle, kick and punch around, the creature feels nothing but more pleasure as it feels your body filling its, going down that massive cunt that swells with your shape, leaking more liquid in every moment it manages to push you down a little more, past your waist, leaving only your legs out. Any movements you make only encourage it further, so it grabs you around your legs with more tentacles and, with additional pushing, it inserts you fully inside the vulva that wants to unbirth you completely, until it finally does.";
		WaitLineBreak;
		say "     The last bit of you, which are your feet, is then swallowed by the giant womanhood as the tendrils let go of you completely, allowing you to sink in its depths as you disappear into the mass. You are then pulled deeper, forced to go into a curl, and held inside a gelatinous body that floods itself in more of that strange liquid, oddly warm and making you tingle all over, until you begin to doze off. It is as if the darkness itself was suffocating you, making you lose your will to breathe. What remains is your shell, as it then too merges with the rest of the abomination that consumed your body and soul, a process that lasts for hours and hours with increasing orgasmic pleasure, a wicked way to make you surrender to its greedy hunger.";
		WaitLineBreak;
	if carried of ancient tome > 0 and TentacleInteractions > 0: [Saved from the Bad End]
		say "     But... suddenly, something seems to shift. A bright, crimson light blinds you within the fadeaway that took you at the brink of your loss of conscience, then rings in your ears like a loud bell that continuously hums without another beat, except its sound is getting higher and higher, as if per something magical attempting to reach you before you are lost forever. You feel an all too familiar touch, similar to the beast that have captured you, except this one is different. An odd embrace of tentacles gets you, much more gentle and soft than the previous, as your body is pulled away from the flooded cocoon that was holding you until your body and soul would finally perish. As you regain your conscience, you almost cannot believe it...";
		say "     It seems these are the ancient tentacles from the ancient tome, which were summoned at the very last moment in order to save you from the void abomination. At least, you recognize this very sensation of slick and wet tendrils all over your body, not hungrily preying on you, but wanting to actually offer you pleasure as they take every hole and corner of your vulnerable body. You are too weak to offer any resistance, and even if you could, their touch simply feels too good to even gather the willpower to fight it. Within these brief moments, you fade in and out of conscience as you are penetrated from both sides, tentacles wiggling inside you and touching every soft spot in you, filling you with ecstacy from every direction... But your strength only remains for so long, before you black out once more.";
		WaitLineBreak;
		say "[VRLeave]";
		say "     Your surroundings change, from a suffocating emptiness and being submerged in liquid, to breathable air and freedom. You are back in the [bold type]Red Light District[roman type], away from the void, and waking up with a swollen belly. Reaching for a hand down over your ass, you feel the very same odd juice that leaks out of those tentacles, and soon enough, your memory catches up. It seems the ancient tentacles actually saved you, and in return, they bred you with more of their offspring, who seem to have left through your rear by now, judging from how it's stretched and leaking. Why did they do that, though? Are you an asset too valuable for them? Or is it just something to do with the abominations in the void...?";
		say "     You feel like there is something going on between both these entities, but you cannot point out what, exactly.";

to say TentacleAbominationLoses:
	if inasituation is true:
		say ""; [dealt with at the source]
	else:
		say "Nothing written yet.";

to say ElkHeadReaperWins:
	if inasituation is true:
		say ""; [dealt with at the source]
	else:
		say "Nothing written yet.";

to say VRElkHeadReaperWins:
	say "     The reaper has taken victory over you, and [EHRSubjectPro] intends to claim your soul as [EHRPosAdj] code demands. As you lie defeated and helpless, you feel a cold sharp blade slashing through your body. Surprisingly, it does not hurt, nor cuts you in half, but you feel something leaving you. Your hands and feet... arms and legs... then, your whole self... everything becomes dormant, out of your control, cold and dropped... as you simply stand there without any strength left. The last thing you see is the reaper taking your soul, your eyes soon to be enclosed by darkness as your former physical shell collapses on the floor, lifeless.";
	say "     'I shall find a greater use for your existence.' [EHRSubjectPro] says, fading away into the depths of the labyrinth...";
	WaitLineBreak;
	now battleground is "Void";
	the Player was ended by "Elk Head Reaper";
	trigger ending "Player has died";
	end the story saying "You have perished in the Void, your soul taken by a reaper.";

to say ElkHeadReaperLoses:
	if inasituation is true:
		say ""; [dealt with at the source]
	else:
		say "Nothing written yet.";

to VRVoidSerpentFightConclusion:
	if fightoutcome < 20: [player won]
		say "     It was a tough fight, but you managed to emerge victorious by dealing the final blow to the Void Serpent, who collapses on the dark floor seemingly lifeless before you. With nothing else to do but to admire your prowess, you look around for some spoils.";
		say "     There is, at least, [bold type]a pair of null essences[roman type] that you manage to gather from the defeated snake.";
		ItemGain null essence by 2 silently;
		now VRVoidSerpentTracker is 0;
		WaitLineBreak;
		say "[VRMoveOptions]";
	else if fightoutcome > 19 and fightoutcome < 30: [lost]
		say "     There was nothing you could do against the serpent's much superior strength. With one last body slam, it manages to pin you down as your attempts to resist come off as futile. Your body is exhausted, its venom running within you and your movements become sluggish, nothing remains for you but to accept your fate as its prey...";
		WaitLineBreak;
		if demonologist is listed in companionList of Player:
			Linebreak;
			let bonus be (( weapon damage of demonologist minus 10 ) divided by 2);
			let diceroll be a random number from 1 to 20;
			say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]16[roman type] (Xaedihr's Weapon Damage Check):[line break]";
			if diceroll + bonus >= 16:
				say "     [italic type]But what is this? The serpent cowers as if hit by something incredibly powerful! It seems it was Xaedihr, who managed to charge up a spell strong enough to knock the creature away for a while! 'Quick! Into the veil!' he shouts, as he grabs to you attempt an escape out of the core line. Fortunately, the serpent is not able to follow after taking such a surprising hit.[roman type][line break]";
				now VRVoidSerpentTracker is 1;
				WaitLineBreak;
				VREventsRoll;
			else:
				say "     [italic type]Not even Xaedihr can save you. He doesn't manage to cast a spell powerful enough to force its hold out of you. He has no other choice but to escape by himself, leaving you to your fate...[roman type][line break]";
				WaitLineBreak;
				say "[VRVoidSerpentWins]";
		else:
			WaitLineBreak;
			say "[VRVoidSerpentWins]";
	else if fightoutcome is 30: [fled]
		say "     Flee? There is no escape from the monsters of the Void once you engage in battle with one of them. All you managed to do was to give the serpent enough time to catch you in its grasp...";
		WaitLineBreak;
		if demonologist is listed in companionList of Player:
			Linebreak;
			let bonus be (( weapon damage of demonologist minus 10 ) divided by 2);
			let diceroll be a random number from 1 to 20;
			say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]16[roman type] (Xaedihr's Weapon Damage Check):[line break]";
			if diceroll + bonus >= 16:
				say "     [italic type]But what is this? The serpent cowers as if hit by something incredibly powerful! It seems it was Xaedihr, who managed to charge up a spell strong enough to knock the creature away for a while! 'Quick! Into the veil!' he shouts, as he grabs to you attempt an escape out of the core line. Fortunately, the serpent is not able to follow after taking such a surprising hit.[roman type][line break]";
				WaitLineBreak;
				now VRVoidSerpentTracker is 1;
				VREventsRoll;
			else:
				say "     [italic type]Not even Xaedihr can save you. He doesn't manage to cast a spell powerful enough to force its hold out of you. He has no other choice but to escape by himself, leaving you to your fate...[roman type][line break]";
				WaitLineBreak;
				say "[VRVoidSerpentWins]";
		else:
			say "[VRVoidSerpentWins]";

to VRDarkTyrantFightConclusion:
	if fightoutcome < 20: [player won]
		say "     After a long and exhausting fight, you manage to deliver a final strike that knocks the Dark Tyrant back. Surprisingly, you were powerful enough to teach him what means to lose to someone stronger than him. However, what happens next is... disturbing, to say the least.";
		WaitLineBreak;
		say "     He is panting, seemingly out of breath, but you cannot hear him breathe clearly. He seems to be grunting and gagging, as if suffocating on his own goo, and beginning to lose his more or less solid shape. 'W-why...' is the word you could hear him say, a graspy and fading voice attempting to reach you in the form of a simple question. There is no masculine nor humanoid resemblance to his current shape, it is dissolving into a mere pile of goo that is losing its shape and life, with only a sort of hand emerging from it with a beckon that persists throughout his dismay. 'Help... me...' are his last words before nothing remains, only a pile of black solid liquid that lingers as lifeless as the Void itself.";
		say "     You cannot help but stare at it, having your own questions, thoughts and doubts about this striking you momentarily. All that remains of the Dark Tyrant is an absurd quantity of null essence that you could gather. But there is still an odd remorse at the back of your head. Why is that...?";
		WaitLineBreak;
		say "     You have obtained [bold type]50 null essences[roman type], stashing them all in your inventory. It's a heavy bunch, you might want to drop these somewhere...";
		ItemGain null essence by 50 silently;
		now VRDarkTyrantTracker is -99; [he's gone, for good]
		now Resolution of DarkTyrantQuest is -1; [He has been slain]
		WaitLineBreak;
		say "[VRMoveOptions]";
	else if fightoutcome > 19 and fightoutcome < 30: [lost]
		say "     There was nothing you could do against the Dark Tyrant's much superior might. Your body is tired and you cannot continue to fight, allowing the enormous black gooeyness to reach for you. There is no escape now, you are at his mercy.";
		WaitLineBreak;
		say "[VRDarkTyrantWins]";
	else if fightoutcome is 30: [fled]
		say "     You attempted to run away from the Dark Tyrant? That... was a foolish move. His shadow is hard to lose, and once he's got a grip on you, he doesn't let go. With this, you only managed to offer him enough chances to catch you, and now you remain at his mercy.";
		WaitLineBreak;
		say "[VRDarkTyrantWins]";

to VRPeculiarSummonerFightConclusion: [The peculiar summoner is one of the few 'fleeable' monsters, but a fight loss will still guarantee a bad end.]
	if fightoutcome < 20: [player won]
		say "     Your might was enough to push the mysterious figure away from you, making them quit their efforts at capturing you. 'Hmph, it seems you are stronger than you look. Perhaps I will succeed next time.' With these words, the peculiar summoner retreats, leaving you to your doings.";
		say "     This battle rewarded you with at least [bold type]one null essence.[roman type][line break]";
		now VRPeculiarSummonerTracker is 0;
		WaitLineBreak;
		say "[VRMoveOptions]";
	else if fightoutcome > 19 and fightoutcome < 30: [lost]
		say "     The way they move, their expertise at combat, you feel yourself overwhelmed by so much efficiency and technical experience. You are no match for the peculiar summoner, as they trap you in a hand made of some sort of rock that grips around you tightly. You are held helpless, and left at the robed figure's mercy...";
		WaitLineBreak;
		if demonologist is listed in companionList of Player:
			Linebreak;
			let bonus be (( weapon damage of demonologist minus 10 ) divided by 2);
			let diceroll be a random number from 1 to 20;
			say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]14[roman type] (Xaedihr's Weapon Damage Check):[line break]";
			if diceroll + bonus >= 14:
				say "     [italic type]But what is this? The summoner cowers as if hit by something incredibly powerful! It seems it was Xaedihr, who managed to charge up a spell strong enough to knock the cloaked figure away for a while! 'Quick! Into the veil!' he shouts, as he grabs to you attempt an escape out of the core line. Fortunately, the summoner is not able to follow after taking such a surprising hit, but they do shout angrily.[roman type][line break]";
				now VRPeculiarSummonerTracker is 1;
				WaitLineBreak;
				VREventsRoll;
			else:
				say "     [italic type]Not even Xaedihr can save you. He doesn't manage to cast a spell powerful enough to force their hold out of you. He has no other choice but to escape by himself, leaving you to your fate...[roman type][line break]";
				WaitLineBreak;
				say "[VRPeculiarSummonerWins]";
		else:
			say "[VRPeculiarSummonerWins]";
	else if fightoutcome is 30: [fled]
		say "     The cloaked figure is the only exception to this rule, as they cannot possibly go after you or attempt to stop you without some sort of extraordinary effort while you were in the middle of fighting. A moment of distraction is all you need to leap out of the core line and leave the peculiar summoner behind, as they shout angrily.";
		say "     Hopefully you don't find anything menacing [bold type]beyond the veil...[roman type][line break]";
		now VRPeculiarSummonerTracker is 1;
		WaitLineBreak;
		VREventsRoll;

to VRTentacleAbominationFightConclusion:
	if fightoutcome < 20: [player won]
		say "     Delivering the final strike against the abomination makes it recoil and draw back in fear, its many tentacles unable to stretch and reach for you. Having taken the upper hand, you take a few steps towards it only to see the monster crawling away, retreating into the darkness. For now, you remain standing victorious, with the spoils of a ferocious battle against one of the hungriest creatures in the void.";
		say "     Besides, you have also saved yourself from being thoroughly raped and consumed by one of the most hedious beasts of the empty space.";
		if a random chance of 2 in 3 succeeds:
			say "     It looks like the Tentacle Abomination dropped a single [bold type]Null Essence[roman type], so you pick it up and stash it in your inventory.";
			ItemGain null essence by 1 silently;
		now VRTentacleAbominationTracker is 0;
		now VRTentacleAbominationLinger is 0;
		WaitLineBreak;
		say "[VRMoveOptions]";
	else if fightoutcome > 19 and fightoutcome < 30: [lost]
		say "     No matter how much you struggle against the massive cluster of tentacles, it only grows stronger by the second you are fighting it, providing you with quite the challenge. Although, a few more strikes are you're barely capable of moving, having the tentacles finally reach you and immobilize you in place. All you see now is yourself being dragged through the floor as more of the abomination's extensions wrap themselves around your body...";
		WaitLineBreak;
		if demonologist is listed in companionList of Player:
			Linebreak;
			let bonus be (( weapon damage of demonologist minus 10 ) divided by 2);
			let diceroll be a random number from 1 to 20;
			say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]15[roman type] (Xaedihr's Weapon Damage Check):[line break]";
			if diceroll + bonus >= 15:
				say "     [italic type]But what is this? The abomination cowers as if hit by something incredibly powerful! It seems it was Xaedihr, who managed to charge up a spell strong enough to knock the creature away for a while! 'Quick! Into the veil!' he shouts, as he grabs to you attempt an escape out of the core line. Fortunately, the monster is not able to follow after taking such a surprising hit.[roman type][line break]";
				WaitLineBreak;
				now VRTentacleAbominationTracker is 1;
				now VRTentacleAbominationLinger is 0;
				VREventsRoll;
			else:
				say "     [italic type]Not even Xaedihr can save you. He doesn't manage to cast a spell powerful enough to force its hold out of you. He has no other choice but to escape by himself, leaving you to your fate...[roman type][line break]";
				WaitLineBreak;
				if carried of ancient tome > 0 and TentacleInteractions > 0: [not a bad end]
					TentacleAbominationVore1;
				else:
					say "[VRTentacleAbominationWins]";
		else:
			if carried of ancient tome > 0 and TentacleInteractions > 0: [not a bad end]
				TentacleAbominationVore1;
			else:
				say "[VRTentacleAbominationWins]";
	else if fightoutcome is 30: [fled]
		say "     Flee? There is no escape from the monsters of the Void once you engage in battle with one of them. All you managed to do was to give the abomination enough time to stretch its tentacles towards your legs, making you trip, then fall... and become a vulnerable target for the rest of them.";
		WaitLineBreak;
		if demonologist is listed in companionList of Player:
			Linebreak;
			let bonus be (( weapon damage of demonologist minus 10 ) divided by 2);
			let diceroll be a random number from 1 to 20;
			say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]15[roman type] (Xaedihr's Weapon Damage Check):[line break]";
			if diceroll + bonus >= 15:
				say "     [italic type]But what is this? The abomination cowers as if hit by something incredibly powerful! It seems it was Xaedihr, who managed to charge up a spell strong enough to knock the creature away for a while! 'Quick! Into the veil!' he shouts, as he grabs to you attempt an escape out of the core line. Fortunately, the monster is not able to follow after taking such a surprising hit.[roman type][line break]";
				WaitLineBreak;
				now VRTentacleAbominationTracker is 1;
				now VRTentacleAbominationLinger is 0;
				VREventsRoll;
			else:
				say "     [italic type]Not even Xaedihr can save you. He doesn't manage to cast a spell powerful enough to force its hold out of you. He has no other choice but to escape by himself, leaving you to your fate...[roman type][line break]";
				WaitLineBreak;
				if carried of ancient tome > 0 and TentacleInteractions > 0: [not a bad end]
					TentacleAbominationVore1;
				else:
					say "[VRTentacleAbominationWins]";
		else:
			if carried of ancient tome > 0 and TentacleInteractions > 0: [not a bad end]
				TentacleAbominationVore1;
			else:
				say "[VRTentacleAbominationWins]";

Section 3 - Items

Table of Game Objects (continued)
name	desc	weight	object
"null essence"	"It's pretty much a simple pitch black rock. You have acquired these from your last visits to the Void Realm."	1	null essence

null essence is a grab object.
Usedesc of null essence is "[null essence use]";

to say null essence use:
	say "     You attempt to eat the rock, and surprisingly, it completely dissolves in your mouth. It tastes terribly, though, like burnt coal, and it stings in your tongue like fire. If this was to be swallowed, you would probably have trouble breathing with so much pain down your throat, so you immediately spit it out. Well, that was a waste, maybe you're not supposed to ingest it?";

instead of sniffing null essence:
	say "The pitch black rock oozes off an overwhelming, and even unthinkable, scent of absolutely... nothing. It is as odorless as the Void, where it came from.";

[]

[abyssal remnant moved to Core Mechanics/Weapons.i7x]

[]

[abyssal edge moved to Core Mechanics/Weapons.i7x]

[]

[sharp black tusk moved to Core Mechanics/Weapons.i7x]

[]

Table of Game Objects (continued)
name	desc	weight	object
"loose tentacle"	"A remnant of one of the Tentacle Abomination's many tendrils, which sometimes starts moving on its own."	1	loose tentacle

loose tentacle is a grab object.
Usedesc of loose tentacle is "[loose tentacle use]";

to say loose tentacle use:
	say "     You try to think of a way to use it, but honestly, you really can't figure out any. Perhaps someone else would?";
	ItemGain loose tentacle by 1 silently;

instead of sniffing loose tentacle:
	say "This thing suprisingly does not smell like the void, but it's an odd scent. One that you would find only after a massive orgy, reeking of sex and sweat.";

[]

Table of Game Objects (continued)
name	desc	weight	object
"strange-colored bean"	"It is a bean with a strange color. The texture is similar to a gum."	1	strange-colored bean

strange-colored bean is a grab object. it is not temporary.
Usedesc of strange-colored bean is "[strange-colored bean use]";

to say strange-colored bean use:
	say "     It's just a bean, right? And it kind of looks like it tastes good... But you're wrong! Once you push it past your lips and into your mouth, it starts to burn intensely, and tastes like death. You immediately spit it out, and since you lacked the courage to bite it, it still looks intact. Best not do that again.";

instead of sniffing strange-colored bean:
	say "The bean is odorless, much like everything else in the void.";

[]

Table of Game Objects (continued)
name	desc	weight	object
"unknown void relic one"	"Something you found in the Void. It has a shape like you have never seen before, with strange symbols engraved along its flat surface. "	3	unknown void relic one

unknown void relic one is a grab object. it is not temporary.
Usedesc of unknown void relic one is "[UVRone use]";

to say UVRone use:
	say "     You try your best to decipher what is written in the relic, but these symbols are unlike anything you have seen before. After trying for a while, you decide to just put it away, unable to make anything out of it.";

instead of sniffing unknown void relic one:
	say "The relic is odorless, much like everything else in the void. However, you can sense something powerful within...";

Section 4 - Creatures

Section 4-1 - Void Serpent

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Voidling"; [name of the overall species of the infection, used for children, ...]
	now Name entry is "Void Serpent"; [Name of your new Monster]
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "The [one of]enormous serpent[or]void serpent[or]void snake[or]huge snake[at random] [one of]lashes at you with its long body[or]hisses at you, then goes for a bite, leaving you with a cut[or]attempts to constrict you with its long body, tackling you in the process before you manage to barely escape[or]spits its venom at you, which at first attacks your body strength[at random]!";
	now defeated entry is "[VoidSerpentLoses]";
	now victory entry is "[VoidSerpentWins]";
	now desc entry is "[VoidSerpentDesc]";
	now face entry is "";
	now body entry is "";
	now skin entry is "";
	now tail entry is "";
	now cock entry is "";
	now face change entry is "";
	now body change entry is "";
	now skin change entry is "";
	now ass change entry is "";
	now cock change entry is "";
	now str entry is 40;
	now dex entry is 32;
	now sta entry is 43;
	now per entry is 31;
	now int entry is 9;
	now cha entry is 5;
	now sex entry is ""; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 450; [ How many HP has the monster got? She's not too hard- she doesn't want to win so much as not lose]
	now lev entry is 21; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 42; [Amount of Damage monster Does when attacking. Claws and massive strength]
	now area entry is "Nowhere"; [ Current options are 'Outside' and 'Mall'. Case sensitive. If you go down to the woods today, you're in for a big surprise]
	now Cock Count entry is 0; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 0; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 0; [ Size of balls apparently ;) sneaky Nuku (big balls are underrated.)]
	now Nipple Count entry is 0; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 0; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0;
	now SeductionImmune entry is true;
	now libido entry is 0; [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is "sharp black tusk";
	now lootchance entry is 50; [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 5; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]elongated[or]serpentine[or]long[or]scaled[at random]";
	now type entry is "[one of]serpentine[at random]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
	now Name entry is ""; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 5; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 5; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is ""; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [Head Description of Player]. You have [Eye Adjective of Player], [Eye Color of Player] eyes and an overall [Gender Adjective of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...) to fit "On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style."]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...) to go into "You have a [Hair Color of Player] [Beard Style of Player]."]
	now Body Hair Length entry is 0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3; [mouth circumference 1-5, see Mouth Circumference Adjective]
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Gender Adjective of Player] with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 1], covered in [Torso Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Torso Color of Player] skin[end if]."]
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
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/octapedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]." (For players with skin, instead of the period: ", covered in [Ass Color of Player] skin and [Body Hair Description of Player]"]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite (< 3), shallow (< 5), average (< 9), deep (< 15), bottomless (15+)"]
	now Asshole Tightness entry is 3; [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "extremely tight, tight, receptive, open, gaping"]
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
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
]

Section 4-2 - Dark Tyrant

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Void Fallen"; [name of the overall species of the infection, used for children, ...]
	now Name entry is "Dark Tyrant"; [Name of your new Monster]
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 1; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "The [one of]dark tyrant[or]black gooey man[or]towering slimey brute[or]freaky gooey monster[at random] [one of]bashes you with a massive fist[or]slaps you with an enormous backhand, knocking you back[or]grabs you in his crushing grip before throwing you to the ground[or]lunges at you with its huge body[or]swings his massive dong at you, which hurts a lot[or]gives you a kick with one of his enormous gooey feet, nearly sending you flying away[at random]!";
	now defeated entry is "[DarkTyrantLoses]";
	now victory entry is "[DarkTyrantWins]";
	now desc entry is "[DarkTyrantDesc]";
	now face entry is "";
	now body entry is "";
	now skin entry is "";
	now tail entry is "";
	now cock entry is "";
	now face change entry is "";
	now body change entry is "";
	now skin change entry is "";
	now ass change entry is "";
	now cock change entry is "";
	now str entry is 50;
	now dex entry is 25;
	now sta entry is 50;
	now per entry is 50;
	now int entry is 7;
	now cha entry is 5;
	now sex entry is ""; [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 900; [ How many HP has the monster got? She's not too hard- she doesn't want to win so much as not lose]
	now lev entry is 50; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 74; [Amount of Damage monster Does when attacking. Claws and massive strength]
	now area entry is "Nowhere"; [ Current options are 'Outside' and 'Mall'. Case sensitive. If you go down to the woods today, you're in for a big surprise]
	now Cock Count entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 99; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 99; [ Size of balls apparently ;) sneaky Nuku (big balls are underrated.)]
	now Nipple Count entry is 2; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 0; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0;
	now SeductionImmune entry is true;
	now libido entry is 0; [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is "";
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 5; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]gooey[or]slimey[or]towering[or]huge[at random]";
	now type entry is "[one of]gooey[or]slimey[at random]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
	now Name entry is ""; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 5; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 5; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is ""; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [Head Description of Player]. You have [Eye Adjective of Player], [Eye Color of Player] eyes and an overall [Gender Adjective of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...) to fit "On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style."]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...) to go into "You have a [Hair Color of Player] [Beard Style of Player]."]
	now Body Hair Length entry is 0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3; [mouth circumference 1-5, see Mouth Circumference Adjective]
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Gender Adjective of Player] with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 1], covered in [Torso Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Torso Color of Player] skin[end if]."]
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
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/octapedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]." (For players with skin, instead of the period: ", covered in [Ass Color of Player] skin and [Body Hair Description of Player]"]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite (< 3), shallow (< 5), average (< 9), deep (< 15), bottomless (15+)"]
	now Asshole Tightness entry is 3; [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "extremely tight, tight, receptive, open, gaping"]
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
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
]

Section 4-3 - Peculiar Summoner

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Void Fallen"; [name of the overall species of the infection, used for children, ...]
	now Name entry is "Peculiar Summoner"; [Name of your new Monster]
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 1; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "The [one of]robed figure[or]cloaked humanoid[or]slender dark shape[or]peculiar summoner[at random] [one of]lashes at you with an extensive tentacle[or]invokes a pair of massive hands that come to crush you between[or]flicks you off the ground with a long demon tail[or]creates wings on their back, then flies towards you, managing to push you back violently[or]creates wings on their back, then flies towards you, grabbing and dropping you from a considerable height[or]attacks you with a clawed hand, in an attempt to cut through your skin[at random]!";
	now defeated entry is "[PeculiarSummonerLoses]";
	now victory entry is "[PeculiarSummonerWins]";
	now desc entry is "[PeculiarSummonerDesc]";
	now face entry is "";
	now body entry is "";
	now skin entry is "";
	now tail entry is "";
	now cock entry is "";
	now face change entry is "";
	now body change entry is "";
	now skin change entry is "";
	now ass change entry is "";
	now cock change entry is "";
	now str entry is 25;
	now dex entry is 39;
	now sta entry is 24;
	now per entry is 42;
	now int entry is 53;
	now cha entry is 23;
	now sex entry is ""; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 325; [ How many HP has the monster got? She's not too hard- she doesn't want to win so much as not lose]
	now lev entry is 19; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 32; [Amount of Damage monster Does when attacking. Claws and massive strength]
	now area entry is "Nowhere"; [ Current options are 'Outside' and 'Mall'. Case sensitive. If you go down to the woods today, you're in for a big surprise]
	now Cock Count entry is 99; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 99; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 99; [ Size of balls apparently ;) sneaky Nuku (big balls are underrated.)]
	now Nipple Count entry is 99; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 99; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 99; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 99;
	now Cunt Tightness entry is 99;
	now SeductionImmune entry is true;
	now libido entry is 0; [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is "strange-colored bean";
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]unknown[or]questionable[or]cloaked[or]robed[at random]";
	now type entry is "[one of]slender[or]unknown[at random]";
	now magic entry is true;
	now resbypass entry is false;
	now non-infectious entry is true;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
	now Name entry is ""; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 5; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 5; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is ""; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [Head Description of Player]. You have [Eye Adjective of Player], [Eye Color of Player] eyes and an overall [Gender Adjective of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...) to fit "On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style."]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...) to go into "You have a [Hair Color of Player] [Beard Style of Player]."]
	now Body Hair Length entry is 0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3; [mouth circumference 1-5, see Mouth Circumference Adjective]
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Gender Adjective of Player] with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 1], covered in [Torso Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Torso Color of Player] skin[end if]."]
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
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/octapedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]." (For players with skin, instead of the period: ", covered in [Ass Color of Player] skin and [Body Hair Description of Player]"]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite (< 3), shallow (< 5), average (< 9), deep (< 15), bottomless (15+)"]
	now Asshole Tightness entry is 3; [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "extremely tight, tight, receptive, open, gaping"]
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
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
]

Section 4-4 - Tentacle Abomination

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Voidling"; [name of the overall species of the infection, used for children, ...]
	now Name entry is "Tentacle Abomination"; [Name of your new Monster]
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "The [one of]massive cluster of tentacles[or]tentacle abomination[or]mass of void tentacles[or]obscene tentacle monster[at random] [one of]smashes you with one of its big extensions[or]jumps at you with suprising agility and smashes against your body[or]shoots a questionable thick substance at you, which drains your strength, then attacks you with a tentacle smash[or]swings a huge tentacle at you, hitting you hard[at random]!";
	now defeated entry is "[TentacleAbominationLoses]";
	now victory entry is "[TentacleAbominationWins]";
	now desc entry is "[TentacleAbominationDesc]";
	now face entry is "";
	now body entry is "";
	now skin entry is "";
	now tail entry is "";
	now cock entry is "";
	now face change entry is "";
	now body change entry is "";
	now skin change entry is "";
	now ass change entry is "";
	now cock change entry is "";
	now str entry is 43;
	now dex entry is 28;
	now sta entry is 48;
	now per entry is 12;
	now int entry is 9;
	now cha entry is 5;
	now sex entry is ""; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 469; [ How many HP has the monster got? She's not too hard- she doesn't want to win so much as not lose]
	now lev entry is 20; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 29; [Amount of Damage monster Does when attacking. Claws and massive strength]
	now area entry is "Nowhere"; [ Current options are 'Outside' and 'Mall'. Case sensitive. If you go down to the woods today, you're in for a big surprise]
	now Cock Count entry is 99; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 99; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 99; [ Size of balls apparently ;) sneaky Nuku (big balls are underrated.)]
	now Nipple Count entry is 0; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 0; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0;
	now SeductionImmune entry is true;
	now libido entry is 0; [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is "loose tentacle";
	now lootchance entry is 50; [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 5; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]abominable[or]monstrous[or]obscene[or]disturbing[at random]";
	now type entry is "[one of]abominable[at random]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
	now Name entry is ""; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 5; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 5; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is ""; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [Head Description of Player]. You have [Eye Adjective of Player], [Eye Color of Player] eyes and an overall [Gender Adjective of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...) to fit "On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style."]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...) to go into "You have a [Hair Color of Player] [Beard Style of Player]."]
	now Body Hair Length entry is 0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3; [mouth circumference 1-5, see Mouth Circumference Adjective]
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Gender Adjective of Player] with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 1], covered in [Torso Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Torso Color of Player] skin[end if]."]
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
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/octapedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]." (For players with skin, instead of the period: ", covered in [Ass Color of Player] skin and [Body Hair Description of Player]"]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite (< 3), shallow (< 5), average (< 9), deep (< 15), bottomless (15+)"]
	now Asshole Tightness entry is 3; [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "extremely tight, tight, receptive, open, gaping"]
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
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
]

Section 4-5 - Elk Head Reaper

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Void Fallen"; [name of the overall species of the infection, used for children, ...]
	now Name entry is "Elk Head Reaper"; [Name of your new Monster]
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 1; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "The [one of]towering figure[or]cloaked giant[or]reaper[or][if Resolution of ElkHeadReaperGender is 10]musclebound dom[else]amazonian domme[end if][at random] [one of]swings [if Resolution of ElkHeadReaperGender is 10]his[else]her[end if]scythe at you with life-threatening speed[or]hits you with the pommel of [if Resolution of ElkHeadReaperGender is 10]his[else]her[end if]scythe, which hurts a lot[or]whirls [if Resolution of ElkHeadReaperGender is 10]his[else]her[end if]scythe at your legs, shoving you back with a laceration[or]kicks you with great force, violently knocking you back[or][at random]!";
	now defeated entry is "[ElkHeadReaperLoses]";
	now victory entry is "[ElkHeadReaperWins]";
	now desc entry is "[ElkHeadReaperDesc]";
	now face entry is "";
	now body entry is "";
	now skin entry is "";
	now tail entry is "";
	now cock entry is "";
	now face change entry is "";
	now body change entry is "";
	now skin change entry is "";
	now ass change entry is "";
	now cock change entry is "";
	now str entry is 41;
	now dex entry is 28;
	now sta entry is 35;
	now per entry is 22;
	now int entry is 20;
	now cha entry is 19;
	now sex entry is ""; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 423; [ How many HP has the monster got? She's not too hard- she doesn't want to win so much as not lose]
	now lev entry is 22; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 40; [Amount of Damage monster Does when attacking. Claws and massive strength]
	now area entry is "Nowhere"; [ Current options are 'Outside' and 'Mall'. Case sensitive. If you go down to the woods today, you're in for a big surprise]
	now Cock Count entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 24; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 4; [ Size of balls apparently ;) sneaky Nuku (big balls are underrated.)]
	now Nipple Count entry is 2; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 4; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 24;
	now Cunt Tightness entry is 3;
	now SeductionImmune entry is true;
	now libido entry is 0; [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is "";
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]towering[or]muscular[or]ripped[or]cloaked[at random]";
	now type entry is "[one of][if Resolution of ElkHeadReaperGender is 10]musclebound[else]amazonian[end if][at random]";
	now magic entry is true;
	now resbypass entry is false;
	now non-infectious entry is true;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
	now Name entry is ""; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 5; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 5; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is ""; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [Head Description of Player]. You have [Eye Adjective of Player], [Eye Color of Player] eyes and an overall [Gender Adjective of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...) to fit "On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style."]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...) to go into "You have a [Hair Color of Player] [Beard Style of Player]."]
	now Body Hair Length entry is 0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3; [mouth circumference 1-5, see Mouth Circumference Adjective]
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Gender Adjective of Player] with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 1], covered in [Torso Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Torso Color of Player] skin[end if]."]
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
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/octapedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]." (For players with skin, instead of the period: ", covered in [Ass Color of Player] skin and [Body Hair Description of Player]"]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite (< 3), shallow (< 5), average (< 9), deep (< 15), bottomless (15+)"]
	now Asshole Tightness entry is 3; [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "extremely tight, tight, receptive, open, gaping"]
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
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
]

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section X - Dev Cheats
[***********************************************************]
[***********************************************************]
[***********************************************************]

CreateNullEssences is an action applying to nothing.
Understand "GetNE" as CreateNullEssences.

Carry out CreateNullEssences:
	ItemGain null essence by 100 silently;
	ItemGain sharp black tusk by 1 silently;
	say "     100 null essences added to your inventory.";
	say "     Have a tusk, too.";

Void Realm ends here.
