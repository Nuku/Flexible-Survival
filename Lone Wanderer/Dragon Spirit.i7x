Version 1 of Dragon Spirit by Lone_Wanderer begins here.
[This adds the Dragon Spirit as an NPC to the Ancient Tome.]

Section 0 - Variables

DragonSpiritRead is a truth state that varies. DragonSpiritRead is usually false.	[A variable Dys used for each encounter to mark whether you read the tome entry for the first time.]
tds_r is a number that varies.														[tds = tome dragon spirit; tds_r = tome dragon spirit relationship; this signifies how your relationship is with him.]
tds_pl is a number that varies.														[tds_pl = possession level; this marks how intense the possession is.]
tds_dl is a number that varies.														[tds_dl = dream level; this marks how many dreams you had with him.]
tds_ps is a truth state that varies. tds_ps is usually false.						[tds_ps = tome dragon spirit possession state. It signifies whether you are possessed right now]
tds_tt is a number variable.														[tds_tt = tome dragon turn timer. It looks at how much time has passed.]

[Overview of progress in the progression variables]

[				tds_r				]
[0 = Not met yet					]
[1 = experienced first dream scene	]
[2 = ]

[				tds_pl					]
[0 = disabled							]
[1 = dream hijacking					]
[2 = accompanying you					]
[3 = passenger in your head				]
[4 = light possession with some changes	]
[5 = shared control of your body		]
[6 = dragon spirit has full control		]

Section 1 - Aiding functions

Section 2 - NPC definition

Karra is a man.
The description of Karra is "[TDS_Desc]".
The conversation of Karra is { "Spooked ya!" }.
The scent of Karra is "     You take a whiff at yourself. You smell just like you remember. But somehow you notice that your scent has changed a bit, there is also a bit of a spicy undertone to your smell.".

To say TDS_Desc:
	say "REMOVE ME";
	
Instead of conversing the Karra:
	say "REMOVE ME";

Section 3 - Dream routine

Chapter 0 - Routine functions

To TDS_FirstDream:
	if tds_r is 0:
		say "     The fatigue has you sink into your sleep quickly. Nothing seems significant right now, except getting your well deserved rest. Every now and then you think you do see something during your dreams but your sleepy mind isn't able to pinpoint it and remember what exactly it is. Whenever you do wake ever so slightly in your sleep you think you did have a certain dream. When you finally decide to wake, up you realize you had been sweating somewhat. Odd, there was something that was bothering you during your sleep, but despite trying to remember what it was your mind almost comes blank. The only thing that seems to linger is a mental image of a dragon.";
		now tds_r is 1;
	else if tds_r is 1:
		say "     You lay down to rest again, but not feeling as devastated as last time. Despite how energized you might have felt before, you sank into sleep quickly and deeply as well. What you are seeing has you calm down; you feel like you're floating with your back on the surface of water. In fact, your dream feels as realistic that you seem to even feel the wetness of the water against your skin. Wait,... it really does feel wet. When you open your eyes, you look up to find a cloudy sky while you are floating along in a vast and giant ocean.";
		now tds_tt is turns;
		move player to The Mists;
	
To TDS_RepeatDream:
	say "     You lay down to rest again, but not feeling as devastated as last time. ";
	
Chapter 1 - Dream Rooms

The Lost Ocean is a room.
The description of The Mists is "[LostOceanDesc]".

To say LostOceanDesc:
	say "     Floating with your back on the surface of a vast ocean, you see that the sky above is clouded and leaves this place feel rather moody. There is nothing here.";
	
as an everyturn rule:
	if location of player is Lost Ocean:
		if tds_tt - turns < 2:
			say "     Why is there nothing here? Are you... dreaming? This is probably the most vivid dream you've ever had; when you find that you're unable to move you confirm your fear. But... what are you supposed to do?";
		else if tds_tt - turns < 3:
			say "     Despite the water feeling real your ears don't feel stuffed with the water splashing against it, in fact you can still hear perfectly despite how slowly buyoncaing in the water. It feels soothing. To be doing nothing but floating in this large ocean.";
		else if tds_tt - turns < 4:
			say "     You are left wondering, when are you going to wake up?";
			
	
The Pagoda is a room.
The description of The Pagoda is "PagodaDesc";

To say PagodaDesc:
	say "REMOVE ME";

Section 4 - Tome scenes

Section 5 - Transformation routine

Section 6 - Purging

Section 7 - Debugging

Dragon Spirit ends here.