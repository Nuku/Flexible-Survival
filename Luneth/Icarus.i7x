Version 5 of Icarus by Luneth begins here.
[Original Version by Stripes]
[Version 5.2 - Additional basement scene (avian pred only)]
[Version 5.1 - Minor maintenance and character relocation - Luneth]
[Version 6 - Adopted by Luneth for expansion]

"Adds Icarus the Blue Chaffinch as an NPC to the Flexible Survival game."

[ HP of Icarus                                                                 ]
[ 0 = untamed                                                                  ]
[ 1 = at bunker, no talk                                                       ]
[ 2 = talked                                                                   ]
[ 3 = taught to suck cock                                                      ]
[ 4 = sucked cock of pred again                                                ]
[ 5 = rougher sex w/pred                                                       ]
[ 6 = had attic sex, light version                                             ]
[ 7 = had attic sex, dark version                                              ]
[ 8 = back                                                                     ]
[ 9 = gone                                                                     ]
[ 10 = back again                                                              ]
[ 50 = dom                                                                     ]
[ 51 = dom - talked                                                            ]
[ 52 = sex again                                                               ]
[ 53 = did footplay scene                                                      ]
[ 54 = sex again                                                               ]
[ 55 = sex again/rim scene - ready for basement prompt                         ]
[ 56 = avoided basement                                                        ]
[ 57 = did basement                                                            ]

[ lust of Icarus                                                               ]
[ 0 - 6 = building frustration                                                 ]
[ 7+ = attempt to dom                                                          ]
[ 100 = sub male-only                                                          ]
[ 101 = sub m/f allowed                                                        ]

[ icarus_lastpred                                                              ]
[ 1 = avian pred                                                               ]
[ 2 = feline                                                                   ]

[ icarus_cbt                                                                   ]
[ 0 = refused                                                                  ]
[ 2 = no data                                                                  ]
[ 3 = consent                                                                  ]


Section 1 - Icarus the Blue Chaffinch

Table of GameCharacterIDs (continued)
object	name
Icarus	"Icarus"



Icarus is a man.
icarusscene1 is a truth state that varies. icarusscene1 is usually false.
icarusscene2 is a truth state that varies. icarusscene2 is usually false.
tti_scene is a number that varies.
ttIcarus is a number that varies. ttIcarus is usually 255.
icarussex6_variant is a number that varies. icarussex6_variant is usually 1.
icarus_cumstuff is a number that varies.
icarus_cbt is a number that varies. icarus_cbt is usually 2.
icarus_lastpred is a number that varies. icarus_lastpred is usually 1.
icarusrim is a truth state that varies. icarusrim is usually false.
ScaleValue of Icarus is 2. [small sized]
Body Weight of Icarus is 4. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Icarus is 3. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Icarus is 3. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Icarus is 4. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Icarus is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Icarus is 4. [length in inches]
Breast Size of Icarus is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Icarus is 0. [count of nipples]
Asshole Depth of Icarus is 8. [inches deep for anal fucking]
Asshole Tightness of Icarus is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Icarus is 1. [number of cocks]
Cock Girth of Icarus is 2. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Icarus is 7. [Length in Inches]
Ball Count of Icarus is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Icarus is 2. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Icarus is 0. [number of cunts]
Cunt Depth of Icarus is 0. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Icarus is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Icarus is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Icarus is false.
PlayerRomanced of Icarus is false.
PlayerFriended of Icarus is false.
PlayerControlled of Icarus is false.
PlayerFucked of Icarus is false.
OralVirgin of Icarus is true.
Virgin of Icarus is true.
AnalVirgin of Icarus is true.
PenileVirgin of Icarus is false.
SexuallyExperienced of Icarus is true.
TwistedCapacity of Icarus is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Icarus is false. [steriles can't knock people up]
MainInfection of Icarus is "Blue Chaffinch".
Description of Icarus is "[Icarusdesc]".
Conversation of Icarus is { "Wilder!" }.
the scent of Icarus is "[if HP of Icarus >= 50]Breathing in the soft, pleasant scent of the confident songbird makes you feel submissive and aroused[else if FaceName of Player is listed in infections of AvianpredList or FaceName of Player is listed in infections of FelineList]The blue songbird smells like prey[else]The blue songbird has a soft, pleasant scent[end if].".

[See Blue Chaffinch file for collecting Icarus.]

to say Icarusdesc:
	say "     This avian fellow is covered in bright blue plumage that is very even in color across most of his small body. Only the ends of his wings and tail are a much darker midnight blue on the flight feathers, and his lower belly and the underside of his narrow tail are downy and white. He has a puffy looking body compared to his slender arms and legs thanks to his soft feathers. His head is rounded and shaped like that of a finch, though his beak is thicker. Double-checking with one of the nature books in the library, you've confirmed that your assumption was right and that he's almost certainly been infected to resemble an exotic blue chaffinch. His eyes are like black beads with a touch of white feathers just above and below.";
	if HP of Icarus < 50:
		say "     Lacking a name of his own, you've decided to call him Icarus. Once strong and arrogant, your repeated rough treatment of him as a predatory avian has affected the passerine to the point that he's accepted to become your songbird slut[if HP of Icarus > 7]. He's recovered from his wounds, as if they never were, ready for a fresh assault from his predatory hunter[end if]. He usually spends his daytime hours up in the rafters, singing softly[if the number of booked people > 2] for the others[end if]. He seems fairly happy here, as if accepting the spacious library as his birdcage.";
	else:
		say "     Lacking a name of his own, he's taken on the name of Icarus. After you'd brought him back here, he ended up reverting to his stronger, more arrogant attitude and has asserted his dominance over you. No longer satisfied with being neglected as your songbird slut, he's made you into his slut instead. He usually spends his daytime hours up in the rafters, singing softly and strutting around as if he rules the roost. He seems quite pleased with himself. As you're watching him, the thought of letting the little guy dominate you again gets you a little excited.";

Instead of conversing the Icarus:
	if HP of Icarus is 0 or HP of Icarus is 7 or HP of Icarus is 9:
		say "ERROR-Icarus-[HP of Icarus]L: You should not be able to find me!";
	else if HP of Icarus < 50:
		say "[icarustalk_sub]";
	else:
		say "[icarustalk_dom]";

to say icarustalk_sub:
	if HP of Icarus is 1:
		say "     He looks around the library in a very bird-like manner, his head twisting and turning as he looks. This is a pretty nice place you've got in here. Pretty spacious and the rafters make for a good perching spot. It seems safe enough, too. Good little cage for your caught birdie.' Now that he's not trying to sound tough, you notice that he's got a soft, musical voice.";
		say "     He fidgets around for a moment, his wings rustling a little. 'Look... I... can you play with me like that again soon?' he asks with a touch of nervous excitement in his voice. 'I'd never have gone for that before, with a guy, especially not on the bottom. But... just... something about it - the terror, the pain, the visceral lust. I've never been so turned on in my life and I want you to do it again. You were so... powerful - your [if icarus_lastpred is 1]talons grabbing me, your beak flashing - my blood was pumping with fear and anticipation before you tore into me with that cock of yours. Any time you feel like being the scary predator bird, I'll be your weak, delicious prey[else]claws grabbing me, your snarling muzzle - my blood was pumping with fear and anticipation before you tore into me with that cock of yours. Any time you feel like being the scary feline hunter, I'll be your weak, delicious birdie[end if].'";
		now HP of Icarus is 2;
	else if icarusscene1 is false and a random chance of 1 in 3 succeeds:
		say "     Icarus flies down when you wave him over. While you chat for a bit, he talks about the few bits he remembers about his old life. 'I remember being a big, tough guy before. Strong and confident. So when I woke up like this, part of me just couldn't accept it and tried to keep being that guy. But you helped me realize that I'm a cute songbird slut now and how nice that can be. I get to be your special birdie prey too, which makes it all the better.' You suspect there's more to it than that, but don't press the matter for now.";
		now icarusscene1 is true;
	else if HP of Icarus < 7:
		say "     [one of]Icarus sings a melodious tune from the rafters while you listen for a spell.[or]Holding up a nature book, Icarus shows you some photos of blue chaffinches. 'It seems they're only found on the Canary Islands. I wonder how I ended up becoming one. I don't really remember how I got transformed. All I know is that I didn't see any others around.'[or]'You were such a wild hunter out there when you caught me. It was so exhilarating. I'm looking forward to you taking me like that again.'[or]'You don't need to worry about feeding me. I managed to raid the zoo stores early on for a bunch of birdfeed, so I've got plenty of seeds.'[or]'I can hardly wait until the next time you feel like making me your prey and sinking your [if icarus_lastpred is 1]talons[else]claws[end if] and cock into me.'[at random]";
	else if icarusscene1 is true and icarusscene2 is false and a random chance of 1 in 3 succeeds:
		say "     Icarus flies down when you wave him over. You go to a quiet corner of the library and talk more about what happened. After reassuring you again that he's fine with what happened, though he acknowledges he reasonably shouldn't be. 'I got better, so why feel bad about it? And it was such a rush that I want to do it again.' He seems a little nervous, but also quite eager to repeat those events.";
		say "     Shifting focus a little, you ask him again what it was like being dead. 'I don't rightfully remember what happened while I was kaput. As I was going out, I knew I was dying. Things faded off to black and... something. It must've been the infection putting me back together. I eventually woke up, like I said. That's it.' He shrugs and you both fall into silent thought.";
		now icarusscene2 is true;
	else:
		say "     [one of]Icarus sings a melodious tune from the rafters while you listen for a spell.[or]Icarus gives his feathery rear a tantalizing shake. 'I've stored some of my birdseed up in the attic. That way I'll have something to eat the next time I need to recover from a rough session with the wild predator,' he says with a grin.[or]'I won't tell others what happened up there. That's just between us, my vicious predator,' he whispers, rubbing his feathered body against yours.[or]'I can hardly wait until the next time you feel like making me your prey and sinking your [if icarus_lastpred is 1]talons[else]claws[end if] and cock into me.'[at random]";

to say icarustalk_dom:
	if HP of Icarus is 50:
		say "     Icarus speaks with a deeper tone, more like when you first met him, but his confidence sounding more genuine to you now. 'I think this'll work out much better for us. You enjoy being the slut to the sexy bird much more. I can tell,' he says with a firm squeeze of your ass and a grope at your crotch, drawing a moan from you. 'I should never have let you convince me to try being the bottom, you silly fucktoy. But everything'll be right now that you know your place.'";
		if Player is female:
			say "     As he continues to manhandle you, he slips a pair of digits into your cunt and pumps them inside you roughly. 'Mmm... I'm really looking forward to breeding a few clutches of chicks in my horny slut. Doesn't that sound nice?' He gives your ass a swat and struts off, licking your juices from his fingers as he does.";
		else:
			say "     As he continues to manhandle you, he pushes a pair of digits into your ass and pumps them inside you roughly. 'Mmm... I'm really looking forward to fucking you raw again and again to [']repay['] you for making me your bitch for a while. Doesn't that sound nice?' He gives your ass a swat and struts off, chuckling to himself.";
		now HP of Icarus is 51;
	else:
		say "     [one of]Icarus sings a melodious tune from the rafters while you listen for a spell.[or]'You must've managed to confuse me somehow, making me think I wanted to be a bottom bitch. I've always been a big stud and no crazy infection's going to change that. And I'm going to enjoy proving it to you over and over again, my slutty fucktoy.'[or]'I've got myself covered for food. I was smart and snagged a bunch of birdseed from the zoo stores early on.'[or]'I'm already looking forward to my next chance to put you in your place,' he says, rubbing at his groin. You feel a little weak in the knees as a rush of excitement runs through your loins at the thought of what he may intend for you next time.[or]Icarus runs his clawed hands across your body. 'Don't get any silly thoughts about getting uppity. Your place is beneath me and you know it,' he says with confidence as he gropes you. You can't help but moan, responding to the aggressive little bird's touch with a lustful desire for more.[at random]";


Section 2 - Sexxxings

Part 0 - Basic Sex Menus

the fuckscene of Icarus is "[sexwithIcarus]".

to say sexwithIcarus:
	if HP of Icarus is 0 or HP of Icarus is 7 or HP of Icarus is 9:
		say "ERROR-Icarus-[HP of Icarus]F: You should not be able to find me!";
	else if HP of Icarus is 1:
		say "     How about you talk to him first before fucking the little songbird again?";
	else if Player is neuter:
		say "     Lacking any gender of your own, you feel there's little point in going to Icarus for sex.";
	else if lastfuck of Icarus - turns < 6:
		if HP of Icarus < 50:
			say "     'Oh, I'm still worn out from the last time, but I [if ( BodyName of Player is listed in infections of AvianpredList and FaceName of Player is listed in infections of AvianpredList ) or ( BodyName of Player is listed in infections of FelineList and FaceName of Player is listed in infections of FelineList )]do so want to go again soon[else]hope you'll consider being the scary predator next time[end if].'";
		else:
			say "     'It's nice to see you so eager to be my slut, but I think it's your turn to wait and go without for a little longer.'";
	else if HP of Icarus < 50:
		say "[icarussex_sub]";
	else:
		say "[icarussex_dom]";
		now lastfuck of Icarus is turns;

to say icarussex_sub:
	let formcheck be 0;
	if BodyName of Player is listed in infections of AvianpredList and FaceName of Player is listed in infections of AvianpredList:
		now formcheck is 1;
		now icarus_lastpred is 1;
	else if BodyName of Player is listed in infections of FelineList and FaceName of Player is listed in infections of FelineList:
		now formcheck is 2;
		now icarus_lastpred is 2;
	if HP of Icarus < 10:
		if Player is not male:
			if HP of Icarus < 7 and lust of Icarus > 6 and lust of Icarus < 100:
				say "[icarussex0_dom]";
				now lastfuck of Icarus is turns;
			else if lust of Icarus <= 100:
				say "     The blue bird blushes a little and looks away, his wings fluttering. 'Look, before I might've, but... you see... to me you'll always be my fearsome, male hunter and it just wouldn't feel right. If I wanted some pussy, I could just go out on the town and get it,' his old, macho voice coming back slightly for a bit before returning to normal. 'But for you, I just want to be your songbird slut and your prey, like you said.' He shifts around eagerly on his taloned feat, clearly remembering the previous times you had your way with him.";
				if HP of Icarus < 7, increase lust of Icarus by 3;
			else if lust of Icarus > 100:
				say "[bracket]***No M/F scenes available at present - Mgmt.[close bracket]";
		else if formcheck is 1:	[avian pred]
			if HP of Icarus >= 8 and a random chance of 1 in 2 succeeds:
				say "[icarussex6_ap]";
			else if HP of Icarus is 5 or ( HP of Icarus > 5 and a random chance of 1 in 5 succeeds ):
				say "[icarussex5_ap]";
			else if HP of Icarus > 3 and a random chance of 2 in 5 succeeds:
				say "[icarussex4_ap]";
			else if a random chance of 3 in 5 succeeds:
				say "[icarussex3_ap]";
			else if HP of Icarus is 2:
				say "[icarussex1_ap]";
			else:
				say "[icarussex2_ap]";
			now lastfuck of Icarus is turns;
			now lust of Icarus is 0;
		else if formcheck is 2:	[feline]
			if HP of Icarus >= 8 and a random chance of 1 in 2 succeeds:
				say "[icarussex6_fel]";
			else if HP of Icarus is 5 or ( HP of Icarus > 5 and a random chance of 1 in 5 succeeds ):
				say "[icarussex5_fel]";
			else if HP of Icarus > 3 and a random chance of 2 in 5 succeeds:
				say "[icarussex4_fel]";
			else if a random chance of 3 in 5 succeeds:
				say "[icarussex3_fel]";
			else if HP of Icarus is 2:
				say "[icarussex1_fel]";
			else:
				say "[icarussex2_fel]";
			now lastfuck of Icarus is turns;
			now lust of Icarus is 0;
		else:
			if HP of Icarus < 7 and lust of Icarus > 6 and lust of Icarus < 100:
				say "[icarussex0_dom]";
			else if a random chance of 3 in 5 succeeds:
				say "[icarussex3]";
			else if HP of Icarus is 2:
				say "[icarussex1]";
			else:
				say "[icarussex2]";
			now lastfuck of Icarus is turns;
			if HP of Icarus < 7, increase lust of Icarus by 2;
	else if HP of Icarus is 10:
		if Player is not male:
			say "[bracket]***No M/F(N) scenes available at present - Mgmt.[close bracket]";
		else if formcheck is 1 and a random chance of 1 in 5 succeeds:
			say "[icarussex5_ap]";
		else if formcheck is 2 and a random chance of 1 in 5 succeeds:
			say "[icarussex5_fel]";
		else:
			say "     As you consider having some fun with [if formcheck > 0]your little birdie prey[else]Icarus[end if], what sort of fun did you have in mind this time?";
			now sextablerun is 0;
			blank out the whole of table of fucking options;
			if Player is male:
				choose a blank row in table of fucking options;
				now title entry is "Blowjob";
				now sortorder entry is 2;
				now description entry is "get him to suck you off";
				choose a blank row in table of fucking options;
				now title entry is "Over a table";
				now sortorder entry is 3;
				now description entry is "bend him over a table and fuck him";
			if Player is male and formcheck > 0:
				choose a blank row in table of fucking options;
				now title entry is "Rough sex";
				now sortorder entry is 4;
				now description entry is "pull him into a side room and fuck him hard";
				choose a blank row in table of fucking options;
				now title entry is "Attic";
				now sortorder entry is 7;
				now description entry is "chase him into the attic and tear into him";
			sort the table of fucking options in sortorder order;
			repeat with y running from 1 to number of filled rows in table of fucking options:
				choose row y from the table of fucking options;
				say "[link][y] - [title entry][as][y][end link][line break]";
			say "Pick the corresponding number> [run paragraph on]";
			while sextablerun is 0:
				get a number;
				if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
					now current menu selection is calcnumber;
					choose row calcnumber in table of fucking options;
					say "[title entry]: Are you looking to [description entry]?";
					if Player consents:
						let nam be title entry;
						now sextablerun is 1;
						if nam is "Blowjob":
							if formcheck is 1:
								say "[icarussex2_ap]";
							else if formcheck is 2:
								say "[icarussex2_fel]";
							else:
								say "[icarussex2]";
						else if nam is "Over a table":
							if formcheck is 1:
								say "[icarussex3_ap]";
							else if formcheck is 21:
								say "[icarussex3_fel]";
							else:
								say "[icarussex3]";
						else if nam is "Rough sex":
							if formcheck is 1:
								say "[icarussex4_ap]";
							else if formcheck is 2:
								say "[icarussex4_fel]";
						else if nam is "Attic":
							if formcheck is 1:
								if a random chance of 1 in 4 succeeds:
									say "[icarussex5_ap]";
								else:
									say "[icarussex6_ap]";
							else if formcheck is 2:
								if a random chance of 1 in 4 succeeds:
									say "[icarussex5_fel]";
								else:
									say "[icarussex6_fel]";
						now lastfuck of Icarus is turns;
						now lust of Icarus is 0;
						wait for any key;
				else:
					say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
			clear the screen and hyperlink list;

to say icarussex_dom:
	let formcheck be 0;
	if BodyName of Player is listed in infections of AvianpredList and FaceName of Player is listed in infections of AvianpredList:
		now formcheck is 1;
		now icarus_lastpred is 1;
	else if BodyName of Player is listed in infections of FelineList and FaceName of Player is listed in infections of FelineList:
		now formcheck is 2;
		now icarus_lastpred is 2;
	say "     Feeling the need to be Icarus's fucktoy again, you catch his attention from the rafters with a tantalizing display of your body. Seeing your wanton display, he gives a pleased chirp and flies down to join you. As he nears the ground, you can see his cock already starting to poke from his feathery crotch.";
	if formcheck is 1:	[avian pred]
		if HP of Icarus is 55 or ( HP of Icarus >= 57 and a random chance of 2 in 5 succeeds ):
			say "[icarussex6_dom_ap]"; [extra-rough]
		else if anallevel is 3 and ( (HP of Icarus is 54 and icarusrim is false) or (icarusrim is true and a random chance of 1 in 4 succeeds)):
			say "[icarussex5_dom_ap]"; [rimming]
		else if HP of Icarus is 52 or (HP of Icarus >= 53 and a random chance of 1 in 4 succeeds):
			say "[icarussex4_dom_ap]"; [footplay]
		else if a random chance of 1 in 3 succeeds:
			say "[icarussex1_dom_ap]"; [oral]
		else if Player is female:
			say "[icarussex2_dom_ap]"; [m/f]
		else:
			say "[icarussex3_dom_ap]"; [m/m]
		decrease humanity of Player by a random number between 2 and 5;
		if "Strong Psyche" is listed in feats of Player, increase humanity of Player by a random number between 0 and 2;
		if "Weak Psyche" is listed in feats of Player, decrease humanity of Player by a random number between 0 and 2;
		[humanity loss instead of infection]
	else if formcheck is 2:	[feline]
		if HP of Icarus is 55 or ( HP of Icarus >= 57 and a random chance of 2 in 5 succeeds ):
			say "[icarussex6_dom_fel]"; [extra-rough]
		else if anallevel is 3 and ( (HP of Icarus is 54 and icarusrim is false) or (icarusrim is true and a random chance of 1 in 4 succeeds)):
			say "[icarussex5_dom_fel]"; [rimming]
		else if HP of Icarus is 52 or (HP of Icarus >= 53 and a random chance of 1 in 4 succeeds):
			say "[icarussex4_dom_fel]"; [footplay]
		else if a random chance of 1 in 3 succeeds:
			say "[icarussex1_dom_fel]"; [oral]
		else if Player is female:
			say "[icarussex2_dom_fel]"; [m/f]
		else:
			say "[icarussex3_dom_fel]"; [m/m]
		decrease humanity of Player by a random number between 2 and 5;
		if "Strong Psyche" is listed in feats of Player, increase humanity of Player by a random number between 0 and 2;
		if "Weak Psyche" is listed in feats of Player, decrease humanity of Player by a random number between 0 and 2;
		[humanity loss instead of infection]
	else:
		if anallevel is 3 and ( (HP of Icarus is 54 and icarusrim is false) or (icarusrim is true and a random chance of 1 in 4 succeeds)):
			say "[icarussex5_dom]"; [rimming]
		else if HP of Icarus is 52 or (HP of Icarus >= 53 and a random chance of 1 in 4 succeeds):
			say "[icarussex4_dom]"; [footplay]
		else if a random chance of 1 in 3 succeeds:
			say "[icarussex1_dom]"; [oral]
		else if Player is female:
			say "[icarussex2_dom]"; [m/f]
		else:
			say "[icarussex3_dom]"; [m/m]
		Icarusinfect;


Part 1 - Icarus Sub Sex

to say icarussex1:		[first time - oral]
	say "     In the mood for some fun with your little songbird, you call him down with the intent on training him to suck cock. Once he's landed, you grab him and push his face to your crotch. You grind your throbbing rod against his feathered face, telling him to get to work. He gulps nervously, but you also see an eagerness in his eyes as he stares at your [cock size desc of Player] [Cock of Player] penis[esmn].";
	say "     He starts with a few tentative licks before you instruct him to open wide. Holding his head as he opens his beak, you guide your cocktip to it and pull his head forward. He gives a wet groan as you push your shaft into his mouth, forcing the little birdie to take your [cock size desc of Player] [Cock of Player] meat[if Cock Length of Player > 20]. It takes a firm pull on Icarus's head to press your glans into his mouth and then down his throat, but the passerine only takes it with another moan of pleasure despite its [cock size desc of Player] size[else if Cock Length of Player > 10]. It takes a bit of an extra push to get your glans into his small beak and down his throat, but the passerine only takes it with another moan of pleasure despite its [cock size desc of Player] size[else]. The passerine takes it in with a moan of pleasure[end if] as you stuff his virgin mouth with cock for the first time.";
	say "     Now that you're in his mouth[if Cock Length of Player > 10] and throat[end if], you pat your birdie slut's head and order him to start sucking. He tries his best, but the little guy's quite inexperienced at it. His new body's sexual instincts do seem to be helping him along, letting him use his beak without nipping you while learning quickly. It takes a few pointers and a little while for him to get warmed up, but soon enough he's sucking you off like he's done it plenty of times. Chuckling that he's turning into quite the cock slut, you grin as a blush of red shows through his blue cheekfeathers.";
	say "     With him working eagerly to suck you off, it's only a matter of time before you groan that you're about to cum. He tries to pull back, but you grip his head tightly, telling him that you've got some tasty seed to feed the little birdie. He blushes all the more and sucks hungrily for it just as your reach your climax and start pumping your thick load into him[if Ball Size of Player > 6]. Your [Cum Load Size of Player] load stuffs the poor songbird so bloated and full of your cum that eventually leaks out of the edges of his beak as he overflows. His body is left rounded like a feathery balloon from it all. He can only give a wet, gurgling chirp as you pull out and a gush of your hot cum pours of his mouth before he manages to swallow and hold back the flow[else if Ball Size of Player > 5]. Your [Cum Load Size of Player] load stuffs the poor songbird until he's rounded like a feathery balloon. When you pull out, he gives a wet, gurgling chirp as a little of your hot cum trickles from his beak before he manages to swallow and hold the rest inside[else if Ball Size of Player > 4]. Your [Cum Load Size of Player] load leaves the poor songbird somewhat chubbier looking than before, his belly stuffed quite full with your seed. When you pull out, he gives a weak chirp and licks his beak[else]. He gives a weak chirp when you pull out, then licks his beak[end if]. Before leaving him there on the floor to recover, you tell him that he did well for a first time and that you look forward to giving him plenty more training at it. He can't help but blush and grin at the prospect.";
	now HP of Icarus is 3;

to say icarussex1_ap:		[first time - oral - avian pred version]
	say "     In the mood for some fun with your little songbird, you call him down with the intent on training him to suck cock. Once he's landed, you grab him roughly and push his face to your crotch. You grind your throbbing rod against his feathered face, telling him to get to work. He gulps nervously, but you also see an eagerness in his eyes as he stares at your [cock size desc of Player] [Cock of Player] penis[esmn].";
	say "     He starts with a few tentative licks before you instruct him to open wide. Holding his head as he opens his beak, you guide your cocktip to it and pull his head forward sharply. He gives a wet groan as you push your shaft into his mouth, forcing the little birdie to take your [cock size desc of Player] [Cock of Player] meat[if Cock Length of Player > 20]. It takes a firm pull on Icarus's head to press your glans into his mouth and then down his throat, but the passerine only takes it with another moan of pleasure despite its [cock size desc of Player] size[else if Cock Length of Player > 10]. It takes a bit of an extra push to get your glans into his small beak and down his throat, but the passerine only takes it with another moan of pleasure despite its [cock size desc of Player] size[else]. The passerine takes it in with a moan of pleasure[end if] as you stuff his virgin mouth with cock for the first time.";
	say "     Now that you're in his mouth[if Cock Length of Player > 10] and throat[end if], you grip your birdie slut's head and start thrusting into his mouth while ordering him to start sucking. He tries his best, but the little guy's quite inexperienced at it. His new body's sexual instincts do seem to be helping him along, letting him use his beak without nipping you while learning quickly. It takes a few instructions and a little practice for him to get warmed up, but soon enough he's sucking you off like he's done it plenty of times. Chuckling that he's turning into quite the cock slut, you grin as a blush of red shows through his blue cheekfeathers and pound into his maw all the harder.";
	say "     With him working eagerly to suck the big, strong predator off, it's only a matter of time before you groan that you're about to cum. He tries to pull back, but you yank his head forward again, telling him that you're not letting him get out of this and adding that you've got plenty of tasty seed to feed your caged birdie. He moans and blushes all the more, sucking hungrily for it just as your reach your climax and start pumping your thick load into him[if Ball Size of Player > 6]. Your [Cum Load Size of Player] load stuffs the poor songbird so bloated and full of your cum that eventually leaks out of the edges of his beak as he overflows. His body is left rounded like a feathery balloon from it all. He can only give a wet, gurgling chirp as you pull out and a gush of your hot cum pours of his mouth before he manages to swallow and hold back the flow[else if Ball Size of Player > 5]. Your [Cum Load Size of Player] load stuffs the poor songbird until he's rounded like a feathery balloon. When you pull out, he gives a wet, gurgling chirp as a little of your hot cum trickles from his beak before he manages to swallow and hold the rest inside[else if Ball Size of Player > 4]. Your [Cum Load Size of Player] load leaves the poor songbird somewhat chubbier looking than before, his belly stuffed quite full with your seed. When you pull out, he gives a weak chirp and licks his beak[else]. He gives a weak chirp when you pull out, then licks his beak[end if]. Before leaving him there on the floor now that you're through, you tell him that you look forward to giving him plenty more training at it. He can't help but blush and smile at the prospect.";
	now HP of Icarus is 3;

to say icarussex1_fel:		[first time - oral - feline version]
	say "     In the mood for some fun with your little songbird, you call him down with the intent on training him to suck cock. Once he's landed, you grab him roughly and push his face to your crotch. You grind your throbbing rod against his feathered face, telling him to get to work. He gulps nervously, but you also see an eagerness in his eyes as he stares at your [cock size desc of Player] [Cock of Player] penis[esmn].";
	say "     He starts with a few tentative licks before you instruct him to open wide. Holding his head as he opens his beak, you guide your cocktip to it and pull his head forward sharply. He gives a wet groan as you push your shaft into his mouth, forcing the little birdie to take your [cock size desc of Player] [Cock of Player] meat[if Cock Length of Player > 20]. It takes a firm pull on Icarus's head to press your glans into his mouth and then down his throat, but the passerine only takes it with another moan of pleasure despite its [cock size desc of Player] size[else if Cock Length of Player > 10]. It takes a bit of an extra push to get your glans into his small beak and down his throat, but the passerine only takes it with another moan of pleasure despite its [cock size desc of Player] size[else]. The passerine takes it in with a moan of pleasure[end if] as you stuff his virgin mouth with cock for the first time.";
	say "     Now that you're in his mouth[if Cock Length of Player > 10] and throat[end if], you grip your birdie slut's head and start thrusting into his mouth while ordering him to start sucking. He tries his best, but the little guy's quite inexperienced at it. His new body's sexual instincts do seem to be helping him along, letting him use his beak without nipping you while learning quickly. It takes a few instructions and a little practice for him to get warmed up, but soon enough he's sucking you off like he's done it plenty of times. He does his job well enough to get your purring in lustful pleasure, though you keep your claws at his head and shoulder as a reminder to do his best. Chuckling that he's turning into quite the cock slut, you grin as a blush of red shows through his blue cheekfeathers and pound into his maw all the harder.";
	say "     With him working eagerly to suck the big, strong predator off, it's only a matter of time before you growl that you're about to cum. He tries to pull back, but you yank his head forward again with a firm paw, telling him that you're not letting him get out of this and adding that you've got plenty of tasty seed to feed your caged birdie. He moans and blushes all the more, sucking hungrily for it just as your reach your climax and start pumping your thick load into him[if Ball Size of Player > 6]. Your [Cum Load Size of Player] load stuffs the poor songbird so bloated and full of your cum that eventually leaks out of the edges of his beak as he overflows. His body is left rounded like a feathery balloon from it all. He can only give a wet, gurgling chirp as you pull out and a gush of your hot cum pours of his mouth before he manages to swallow and hold back the flow[else if Ball Size of Player > 5]. Your [Cum Load Size of Player] load stuffs the poor songbird until he's rounded like a feathery balloon. When you pull out, he gives a wet, gurgling chirp as a little of your hot cum trickles from his beak before he manages to swallow and hold the rest inside[else if Ball Size of Player > 4]. Your [Cum Load Size of Player] load leaves the poor songbird somewhat chubbier looking than before, his belly stuffed quite full with your seed. When you pull out, he gives a weak chirp and licks his beak[else]. He gives a weak chirp when you pull out, then licks his beak[end if]. Before leaving him there on the floor now that you're through, you tell him that you look forward to giving him plenty more training at it. He can't help but blush and smile at the prospect.";
	now HP of Icarus is 3;

to say icarussex2:		[oral]
	say "     Motioning for Icarus to come down, you grope and fondle the bird as he lands. After stroking him to get him excited, you pull out your own erection and tell him to get sucking. There is an eagerness in his eyes as he looks at your shaft and is soon on his knees, nuzzling and licking at your cock[smn] and balls. Showing more flair than his first attempt at it, his licking is accompanied by the soft stroking of his soft feathers against your sensitive flesh, sending shivers of delight through you.";
	say "     Pleased with his improvement, you rub a hand over his head before pushing it forward with an order to move on to sucking. He nods and opens his beak wide, leaning forward to take your [cock size desc of Player] [Cock of Player] shaft in his mouth. Feeling he's going a little slow after his sensual touches have gotten you worked up, you pull him forward, forcing more of your cock into his open maw[if Cock Length of Player > 10] and down his throat[end if]. He moans in pleasure at this rough treatment of himself and starts sucking down on your shaft[if Cock Length of Player > 20] as he works to get the rest of your impressive manhood into his mouth[end if].";
	say "     Now that you're in his mouth[if Cock Length of Player > 10] and throat[end if], you pat your birdie slut's head and start thrusting while he works hard to suck you off. You tease him, saying he's learning quickly to be a cock slut. He blushes red under his blue feathers, but also goes down on you all the more eagerly.";
	say "     With him working eagerly to suck you off, it's only a matter of time before you groan that you're about to cum. He makes no attempt to pull back, knowing you'll want to finish in him, accepting as you thrust harder into his mouth. After a few more hard pushes into him, you orgasm and start pumping your creamy cum into him. This pushes Icarus over the edge and his cock, untouched from earlier, pulses and spurts his avian cum onto the floor as he gulps down your seed[if Ball Size of Player > 6]. Your [Cum Load Size of Player] load stuffs the poor songbird so bloated and full of your cum that eventually leaks out of the edges of his beak as he overflows. His body is left rounded like a feathery balloon from it all. He can only give a wet, gurgling chirp as you pull out and a gush of your hot cum pours of his mouth before he manages to swallow and hold back the flow[else if Ball Size of Player > 5]. Your [Cum Load Size of Player] load stuffs the poor songbird until he's rounded like a feathery balloon. When you pull out, he gives a wet, gurgling chirp as a little of your hot cum trickles from his beak before he manages to swallow and hold the rest inside[else if Ball Size of Player > 4]. Your [Cum Load Size of Player] load leaves the poor songbird somewhat chubbier looking than before, his belly stuffed quite full with your seed. When you pull out, he gives a weak chirp and licks his beak[else]. He gives a weak chirp when you pull out, then licks his beak[end if]. Before leaving him there on the floor to recover, you tell him that he did well and that you look forward to giving him plenty more training at it, which has him blush, grin and lick his beak.";

to say icarussex2_ap:		[oral - avian pred version]
	say "     Motioning for Icarus to come down, you grope and fondle the bird as he lands. After stroking him to get him excited, you pull out your own erection and tell him to get sucking. There is an eagerness in his eyes as he looks at your shaft and is soon on his knees, nuzzling and licking at your cock[smn] and balls. Showing more flair and eagerness than his first attempt at it, his licking is accompanied by the soft stroking of his soft feathers against your sensitive flesh, sending shivers of delight through you.";
	say "     Pleased with his improvement, you place a hand at the back of his head while guiding your cock into his beak with an order to move on to sucking. He nods and opens his beak wider as you press his head down overtop of your [cock size desc of Player] [Cock of Player] shaft. In the mood to get on with it after his sensual touches have gotten you worked up, you pull him forward, forcing more and more of your cock into his open maw[if Cock Length of Player > 10] and down his throat[end if]. He moans in pleasure at this rough treatment of himself and sucking down on your shaft[if Cock Length of Player > 20] as you work to get the whole of your impressive manhood into his mouth[end if].";
	say "     Now that you're in his mouth[if Cock Length of Player > 10] and throat[end if], you grip your birdie slut's head in both hands and start thrusting firmly into it while he works hard to suck you off. You tease him, saying that your tasty treat is learning quickly to be a cock slut. He blushes red under his blue feathers, but also goes down on you all the more eagerly.";
	say "     With him working eagerly to suck you off, it's only a matter of time before you groan that you're about to cum. He makes no attempt to pull back from the impressive hunter's cock, knowing you'll want to finish in him, accepting as you thrust all the harder into his mouth. After a few more slams into him, you orgasm and start pumping your creamy cum into him. This pushes Icarus over the edge and his cock, untouched from earlier, pulses and spurts his avian cum onto the floor in large splatters as he gulps down your seed[if Ball Size of Player > 6]. Your [Cum Load Size of Player] load stuffs the poor songbird so bloated and full of your cum that eventually leaks out of the edges of his beak as he overflows. His body is left rounded like a feathery balloon from it all. He can only give a wet, gurgling chirp as you pull out and a gush of your hot cum pours of his mouth before he manages to swallow and hold back the flow[else if Ball Size of Player > 5]. Your [Cum Load Size of Player] load stuffs the poor songbird until he's rounded like a feathery balloon. When you pull out, he gives a wet, gurgling chirp as a little of your hot cum trickles from his beak before he manages to swallow and hold the rest inside[else if Ball Size of Player > 4]. Your [Cum Load Size of Player] load leaves the poor songbird somewhat chubbier looking than before, his belly stuffed quite full with your seed. When you pull out, he gives a weak chirp and licks his beak[else]. He gives a weak chirp when you pull out, then licks his beak[end if]. Before leaving him there on the floor now that you're done with him, you tell him that he did well and that you look forward to giving him plenty more training at it, which has him blush, grin and lick his beak.";
	if HP of Icarus is 3, now HP of Icarus is 4;

to say icarussex2_fel:		[oral - feline version]
	say "     Motioning for Icarus to come down, you grope and fondle the bird as he lands. After stroking him with your paw to get him excited, you pull out your own erection and tell him to get sucking. There is an eagerness in his eyes as he looks at your shaft and is soon on his knees, nuzzling and licking at your cock[smn] and balls. Showing more flair and eagerness than his first attempt at it, his licking is accompanied by the soft stroking of his soft feathers against your sensitive flesh, sending shivers of delight through you.";
	say "     Pleased with his improvement, you place a paw at the back of his head while guiding your cock into his beak with an order to move on to sucking. He nods and opens his mouth wider as you press his head down overtop of your [cock size desc of Player] [Cock of Player] shaft. In the mood to get on with it after his sensual touches have gotten you worked up, you pull him forward, forcing more and more of your cock into his open maw[if Cock Length of Player > 10] and down his throat[end if]. He moans in pleasure at this rough treatment of himself and sucking down on your shaft[if Cock Length of Player > 20] as you work to get the whole of your impressive manhood into his mouth[end if].";
	say "     Now that you're in his mouth[if Cock Length of Player > 10] and throat[end if], you grip your birdie slut's head in both paws and start thrusting firmly into it while he works hard to suck you off. You keep your claws out, lightly poking beneath his feathers. You tease him, saying that your tasty treat is learning quickly to be a cock slut. He blushes red under his blue feathers, but also goes down on you all the more eagerly.";
	say "     With him working eagerly to suck you off, it's only a matter of time before you growl that you're about to cum. He makes no attempt to pull back from the impressive feline's cock, knowing you'll want to finish in him, accepting as you thrust all the harder into his mouth. After a few more slams into him, you orgasm and start pumping your creamy cum into him. This pushes Icarus over the edge and his cock, untouched from earlier, pulses and spurts his avian cum onto the floor in large splatters as he gulps down your seed[if Ball Size of Player > 6]. Your [Cum Load Size of Player] load stuffs the poor songbird so bloated and full of your cum that eventually leaks out of the edges of his beak as he overflows. His body is left rounded like a feathery balloon from it all. He can only give a wet, gurgling chirp as you pull out and a gush of your hot cum pours of his mouth before he manages to swallow and hold back the flow[else if Ball Size of Player > 5]. Your [Cum Load Size of Player] load stuffs the poor songbird until he's rounded like a feathery balloon. When you pull out, he gives a wet, gurgling chirp as a little of your hot cum trickles from his beak before he manages to swallow and hold the rest inside[else if Ball Size of Player > 4]. Your [Cum Load Size of Player] load leaves the poor songbird somewhat chubbier looking than before, his belly stuffed quite full with your seed. When you pull out, he gives a weak chirp and licks his beak[else]. He gives a weak chirp when you pull out, then licks his beak[end if]. Before leaving him there on the floor now that you're done with him, you tell him that he did well and that you look forward to giving him plenty more training at it, which has him blush, grin and lick his beak.";
	if HP of Icarus is 3, now HP of Icarus is 4;

to say icarussex3:		[sex]
	say "     Feeling the need to have some fun with your little songbird, you call him down. As he's landing, you grab him and push him down over one of the tables. He moans as you push up his tailfeathers and spread his spindly legs, exposing the bird's white-feathered bottom. The small passerine squirms and chirps a little, struggling not to get away, but enough so you have to pin him down as you get your cock lined up with his pucker. As you push into him, he gives a groan of discomfort and pleasure, his tight hole being forced to spread open for your [cock size desc of Player] [Cock of Player] phallus.";
	say "     He settles down a little as you start humping away, chirping as he soon starts to beg for more. Knowing how he's grown to like it, you grip one of his thin, feathered legs tightly and pound his ass hard and deep. Even as he whimpers at the pain, he's also moaning in delight. When you reach around to stroke him off, his cock is throbbing hard and dripping with precum. Teasing him for being such a puny, little slut, you grin as he moans and nods in agreement, loving being a horny cock slut now.";
	say "     You keep it up, something in the weak bird's behavior egging you on to be rough with him. And certainly, he loves it as well. The throbbing of his cock in your hand and the way his asshole tightens around you suddenly is all the warning you get before the stuffed bird cums hard, splattering his load on the floor as you cum a few moments later, claiming his ass once again[if Ball Size of Player > 6]. Your [Cum Load Size of Player] load leaves the poor songbird so bloated and full of your cum that some leaks out of his beak. His body is left rounded like a feathery balloon from it all. He can only give a weak chirp as you pull out and your hot cum pours of his stretched and stuffed ass, slowly deflating[else if Ball Size of Player > 5]. Your [Cum Load Size of Player] load leaves the poor songbird rounded like a feathery balloon. When you pull out, he gives a weak chirp as your hot cum pours of his stretched and stuffed ass, slowly deflating[else if Ball Size of Player > 4]. Your [Cum Load Size of Player] load leaves the poor songbird somewhat chubbier looking than before, his belly stuffed quite full with your seed. When you pull out, he gives a weak chirp as hot cum leaks from his stretched and stuffed ass[else]. He gives a weak chirp when you pull out, hot cum leaking from his stretched and creamy ass[end if]. While taking a moment to check that your birdie pet's still fine, you wipe your cock clean on his blue tailfeathers before heading off, leaving him there to eventually recover.";

to say icarussex3_ap:		[sex - avian pred version]
	say "     Feeling the need to have some fun with your little songbird prey, you call him down. As he's landing, you grab him and push him down over one of the tables quite roughly. He moans as you push up his tailfeathers and spread his spindly legs, exposing the bird's white-feathered bottom. The small passerine squirms and chirps a little, struggling not to get away, but enough so you as the strong predator have to pin him down as you get your cock lined up with his pucker. As you push into him, he gives a groan of discomfort and pleasure, his tight hole being forced to spread open for your [cock size desc of Player] [Cock of Player] phallus.";
	say "     He continues to squirm as you start humping away, driving you to grip him painfully hard with your talons. Your lust and your instincts, already worked up by having the cute passerine beneath you, cause you to dig your talons into him to keep your prey from escaping. Icarus cries out as you grip his ass painfully hard, though his cry is definitely one of pleasure. When you reach around to stroke him off, his cock is rock hard and dribbling precum steadily. Grinning, you nip hard at his shoulder with your beak, calling him your puny, slutty treat and grinning happily and he moans and nods in agreement, loving being the slutty prey for such a fearsome predator.";
	say "     You keep it up, something in the weak bird's behavior egging you on to be rough with him. You bite his shoulder firmly with your beak several times while stuffing his ass with your dribbling rod. And certainly, he loves it as well. The throbbing of his cock in your hand and the way his asshole tightens around you suddenly is all the warning you get before the stuffed bird cums hard, splattering his load on the floor as you cum a few moments later, claiming his ass once again[if Ball Size of Player > 6]. Your [Cum Load Size of Player] load leaves the poor songbird so bloated and full of your cum that some leaks out of his beak. His body is left rounded like a feathery balloon from it all. He can only give a weak chirp as you pull out and your hot cum pours of his stretched and stuffed ass, slowly deflating[else if Ball Size of Player > 5]. Your [Cum Load Size of Player] load leaves the poor songbird rounded like a feathery balloon. When you pull out, he gives a weak chirp as your hot cum pours of his stretched and stuffed ass, slowly deflating[else if Ball Size of Player > 4]. Your [Cum Load Size of Player] load leaves the poor songbird somewhat chubbier looking than before, his belly stuffed quite full with your seed. When you pull out, he gives a weak chirp as hot cum leaks from his stretched and stuffed ass[else]. He gives a weak chirp when you pull out, hot cum leaking from his stretched and creamy ass[end if]. While giving him a bruisingly hard nip, you wipe your cock clean on his blue tailfeathers before heading off, leaving him there to eventually recover.";

to say icarussex3_fel:		[sex - feline version]
	say "     Feeling the need to have some fun with your little songbird prey, you call him down. As he's landing, you grab him and push him down over one of the tables quite roughly. He moans as you push up his tailfeathers and spread his spindly legs, exposing the bird's white-feathered bottom. The small passerine squirms and chirps a little, struggling not to get away, but enough so you as the strong predator have to pin him down as you get your cock lined up with his pucker. As you push into him, he gives a groan of discomfort and pleasure, his tight hole being forced to spread open for your [cock size desc of Player] [Cock of Player] phallus.";
	say "     He continues to squirm as you start humping away, driving you to grip him painfully hard with your paws. Your lust and your instincts, already worked up by having the cute passerine beneath you, cause you to dig your claws into him to keep your prey from escaping. Icarus cries out as you grip his ass painfully hard, though his cry is definitely one of pleasure. When you reach around to stroke him off, his cock is rock hard and dribbling precum steadily. Grinning, you gnaw lightly at his shoulder with your muzzle, calling him your puny, slutty treat and grinning happily and he moans and nods in agreement, loving being the slutty prey for such a fearsome predator.";
	say "     You keep it up, something in the weak bird's behavior egging you on to be rough with him. You bite his shoulder firmly with your teeth several times while stuffing his ass with your dribbling rod. And certainly, he loves it as well. The throbbing of his cock in your paw and the way his asshole tightens around you suddenly is all the warning you get before the stuffed bird cums hard, splattering his load on the floor as you cum a few moments later, claiming his ass once again[if Ball Size of Player > 6]. Your [Cum Load Size of Player] load leaves the poor songbird so bloated and full of your cum that some leaks out of his beak. His body is left rounded like a feathery balloon from it all. He can only give a weak chirp as you pull out and your hot cum pours of his stretched and stuffed ass, slowly deflating[else if Ball Size of Player > 5]. Your [Cum Load Size of Player] load leaves the poor songbird rounded like a feathery balloon. When you pull out, he gives a weak chirp as your hot cum pours of his stretched and stuffed ass, slowly deflating[else if Ball Size of Player > 4]. Your [Cum Load Size of Player] load leaves the poor songbird somewhat chubbier looking than before, his belly stuffed quite full with your seed. When you pull out, he gives a weak chirp as hot cum leaks from his stretched and stuffed ass[else]. He gives a weak chirp when you pull out, hot cum leaking from his stretched and creamy ass[end if]. While giving him a bruisingly hard bite, you wipe your cock clean on his blue tailfeathers before heading off, leaving him there to eventually recover.";

to say icarussex4_ap:		[rough avian sex]
	say "     In the mood to play with your little songbird prey, you grab him roughly when he comes down and pull him into one of the side rooms. There you push him to the ground and sink your talons into him, stroking your cock and chuckling that you've caught yourself a tasty morsel. He winces in pain as your claws dig into him, but also moans loudly, turned on by the harsh treatment by the powerful predator. You are also getting quite excited, your predatory avian instincts getting you very worked up.";
	say "     'Oh, don't hurt me,' he moans, squirming playfully. 'I'll do [italic type]anything[roman type] if you'll let me go.'";
	say "     You grin at the corners of your beak and grab his head, pushing his face to your groin. 'Anything, my little treat? Then start by sucking me off.' You run a sharp talon down his cheek before grabbing his shoulders, claws poking at the skin beneath. He shivers a little (more in excitement than fear) and complies with your demands, taking your [cock size desc of Player] cock into his beak[if Cock Length of Player > 20] with some effort[else] with a little effort[end if]. You let the horny bird go at it for a while, working his tongue and palate over your [if Cock Length of Player > 10]hefty [end if]meat while his saliva gets it nice and slick.";
	say "     When you feel ready, you push the blue bird away, shoving him onto his ass. Taken by surprise, he can only moan as you push him onto all fours and get your wet cock lined up with his tight pucker. Kissing it to his asshole, you rub it teasingly there before thrusting it in with no more preamble. He calls out with a cry of pained pleasure as the stronger bird takes him hard. Atop the smaller guy, you nip and bite at his shoulders with your beak as you fuck him. After having being taken several times, he's much easier to penetrate, but remains a delightfully tight fuck.";
	say "     You take delight in his musical cries as you pound away at him, his hard cock slapping against his tummy and spurting precum across the floor. The weaker bird's behavior excites you greatly, your instincts getting stronger and weakening your restraint. Your nips get harder, biting into his flesh hard enough to make him bleed while your claws dig into him. The little birdie beneath you whimpers at the pain, but pushes himself back into your thrusts all the more for it.";
	say "     A few last thrusts push you over the edge. Biting hard as your talons dig in, you restrain the shuddering passerine, drive your cock deep inside him and unleash your hot load. You pump your [Cum Load Size of Player] load into your prey with a triumphant cry that drowns out his own orgasmic cry of pain. The blue bird cums messily, spraying shot after shot of stick avian cum onto the floor beneath him as the powerful predator tears into him and fills him[if Ball Size of Player > 6]. Your [Cum Load Size of Player] output leaves the wounded songbird so bloated and full of your cum that some leaks out of his beak. His body is left rounded like a feathery balloon from it all. He can only give a weak chirp as you pull out and your hot cum pours of his stretched and stuffed ass, slowly deflating[else if Ball Size of Player > 5]. Your [Cum Load Size of Player] output leaves the wounded songbird rounded like a feathery balloon. When you pull out, he gives a weak chirp as your hot cum pours of his stretched and stuffed ass, slowly deflating[else if Ball Size of Player > 4]. Your [Cum Load Size of Player] output leaves the wounded songbird somewhat chubbier looking than before, his belly stuffed quite full with your seed. When you pull out, he gives a weak chirp as hot cum leaks from his stretched and stuffed ass[else]. The wounded songbird gives a weak chirp when you pull out, hot cum leaking from his stretched and creamy ass[end if]. You give him a final nip and lick at one of his bloodied wounds. This sends a rush of dark excitement through you, the taste of the little bird wonderful to the avian hunter in you. But having just gotten off, you rein it in, wipe your cock across his softly feathered ass and leave him laying there in a pool of his increasingly red-streaked semen with a smile on his exhausted face.";
	if HP of Icarus is 4, now HP of Icarus is 5;

to say icarussex4_fel:		[rough feline sex]
	say "     In the mood to play with your little songbird prey, you grab him roughly when he comes down and pull him into one of the side rooms. There you push him to the ground and sink your foot claws into him, stroking your cock and chuckling that you've caught yourself a tasty morsel. He winces in pain as your claws dig into him, but also moans loudly, turned on by the harsh treatment by the powerful predator. You are also getting quite excited, your feline instincts getting you very worked up.";
	say "     'Oh, don't hurt me,' he moans, squirming playfully. 'I'll do [italic type]anything[roman type] if you'll let me go.'";
	say "     You grin at the corners of your muzzle and grab his head, pushing his face to your groin. 'Anything, my little treat? Then start by sucking me off.' You run a sharp claw down his cheek before grabbing his shoulders, claws poking at the skin beneath. He shivers a little (more in excitement than fear) and complies with your demands, taking your [cock size desc of Player] cock into his beak[if Cock Length of Player > 20] with some effort[else] with a little effort[end if]. You let the horny bird go at it for a while, working his tongue and palate over your [if Cock Length of Player > 10]hefty [end if]meat while his saliva gets it nice and slick.";
	say "     When you feel ready, you push the blue bird away, shoving him onto his ass. Taken by surprise, he can only moan as you push him onto all fours and get your wet cock lined up with his tight pucker. Kissing it to his asshole, you rub it teasingly there before thrusting it in with no more preamble. He calls out with a cry of pained pleasure as the powerful feline takes him hard. Atop the smaller guy, you nip and bite at his shoulders with your toothy muzzle as you fuck him. After having being taken several times, he's much easier to penetrate, but remains a delightfully tight fuck.";
	say "     You take delight in his musical cries as you pound away at him, his hard cock slapping against his tummy and spurting precum across the floor. The small bird's behavior excites you greatly, your instincts getting stronger and weakening your restraint. Your nips get harder, biting into his flesh hard enough to make him bleed while your claws dig into him. The little birdie beneath you whimpers at the pain, but pushes himself back into your thrusts all the more for it.";
	say "     A few last thrusts push you over the edge. Biting hard as your claws dig in, you restrain the shuddering passerine, drive your cock deep inside him and unleash your hot load. You pump your [Cum Load Size of Player] load into your prey with a triumphant snarl that drowns out his own orgasmic cry of pain. The blue bird cums messily, spraying shot after shot of stick avian cum onto the floor beneath him as the powerful predator tears into him and fills him[if Ball Size of Player > 6]. Your [Cum Load Size of Player] output leaves the wounded songbird so bloated and full of your cum that some leaks out of his beak. His body is left rounded like a feathery balloon from it all. He can only give a weak chirp as you pull out and your hot cum pours of his stretched and stuffed ass, slowly deflating[else if Ball Size of Player > 5]. Your [Cum Load Size of Player] output leaves the wounded songbird rounded like a feathery balloon. When you pull out, he gives a weak chirp as your hot cum pours of his stretched and stuffed ass, slowly deflating[else if Ball Size of Player > 4]. Your [Cum Load Size of Player] output leaves the wounded songbird somewhat chubbier looking than before, his belly stuffed quite full with your seed. When you pull out, he gives a weak chirp as hot cum leaks from his stretched and stuffed ass[else]. The wounded songbird gives a weak chirp when you pull out, hot cum leaking from his stretched and creamy ass[end if]. You give him a final nip and lick at one of his bloodied wounds. This sends a rush of dark excitement through you, the taste of the little bird wonderful to the avian hunter in you. But having just gotten off, you rein it in, wipe your cock across his softly feathered ass and leave him laying there in a pool of his increasingly red-streaked semen with a smile on his exhausted face.";
	if HP of Icarus is 4, now HP of Icarus is 5;


Part 2 - Icarus Sub Sex - Extreme Content

to say icarussex5_ap:		[uncontrolled avian sex]
	say "     Wanting to play with your songbird prey, you call for him to come down. He continues to sing his musical song as if not hearing you. When you call out to him again, he glances at you with a slight grin, flutters his wings a little and sings on. Frustrated and wanting the bird all the more, you call out to him again with an avian screech. With that, he stops singing and starts to move, but rather than coming down to you, he instead retreats further into the rafters.";
	say "     Frustrated now by this obvious taunting, you rush up the stairs to the upper level. With another sharp screech, you head out onto the rafters after him without a thought to the risk. While not quite able to fly, your wings do give you some added control as you hop from one wooden beam to the next in pursuit of your prey. Seeing you coming for him, he gives a fearful chirp and tries to get away, but not too hard, just enough to keep up the chase as he taunts you with flicks of his blue tail and shake of his downy ass.";
	WaitLineBreak;
	say "     Eventually the chase leads up into the attic and you corner the little bird in there. Panting hard, he hops from one leg to the next, looking for an avenue of escape but finding none. With a sharp cry, you leap atop your passerine prey, sinking your talons into him and pressing him to the ground. He shivers and moans as you press him to the dusty floor and yank up his tail with little preamble, your blood pumping hard and your instincts largely in control. With a bruisingly hard nip on his shoulder, you drive your cock into him with one harsh thrust that gets him as hard as a rock.";
	say "     Your sex up in the secluded attic is harsh and merciless, your avian infection lustful after the hunt. The blue bird chirps in pain and moans in delight as you take him hard. So excited by the chase, you give him bloody bites and scratches as you manhandle his body and use him as your fucktoy. His body shudders from the wounds and the pounding he's receiving, his cock hard and pulsing with excitement as he moans for more and to take him harder.";
	if HP of Icarus is 5:
		say "     With your predatory, avian instincts exciting you, you find it difficult to hold back any longer. You have caught your prey and he is at your mercy.";
		say "     [bold type]Shall you let loose and let your wild impulses do as they will, or will you rein it in to keep yourself from going too far?[roman type] [bracket]WARNING: Extreme violence occurs if you accept.[close bracket][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Let your wild impulses do as they will.";
		say "     ([link]N[as]n[end link]) - Rein in your instincts.";
		if Player consents:
			say "[icarussex5_ap_x]";
		else:
			say "[icarussex5_ap_s]";
	else if HP of Icarus is 6:
		WaitLineBreak;
		say "[icarussex5_ap_s]";
	else if HP of Icarus >= 8:
		WaitLineBreak;
		say "[icarussex5_ap_x2]";

to say icarussex5_ap_s:	[standard version of scene 5]
	say "     You take some care to not hurt your special catch too badly and instead focus on pounding him pretty ass harder and harder. His body shudders under you, his birdie feet clawing at the wooden floor as you relentlessly fuck your caught prey until he cums with a loud, musical cry of lustful delight. This load is the largest yet from him, the chase and his capture clearly having gotten Icarus very worked up. Shot after shot of avian cum marks the floor, adding the scent of your prey's semen to that of his blood in the air.";
	say "     The sight and scent of all this along with the thought that you've driven him to this point sends a rush of wild excitement through you. You bite down hard onto his shoulder, drawing blood again and cum into him as his orgasm's coming to an end. The rush of fresh pain and your hot semen filling him sets him off again with another set of cum blasts[if Ball Size of Player > 6]. Your [Cum Load Size of Player] load pumps more and more seed into the wounded songbird until he's so bloated and full that your seed leaks out of his beak. He can only give a weak chirp as he's left a bloated, feathery balloon of cum. When you pull out, your hot cum pours from his stretched and stuffed ass, slowly deflating him[else if Ball Size of Player > 5]. Your [Cum Load Size of Player] load pumps more and more seed into the wounded songbird until he's bloated and full. He can only give a weak chirp as he's left a bloated, feathery balloon of cum. When you pull out, your hot cum pours from his stretched and stuffed ass, slowly deflating[else if Ball Size of Player > 4]. Your [Cum Load Size of Player] load pumps more and more seed into the wounded songbird until he's left with a chubby tummy full of your seed. He gives a weak chirp as hot cum leaks from his stretched and stuffed ass when you pull out[else]. The wounded songbird gives a weak chirp when you pull out, hot cum leaking from his stretched and creamy ass[end if]. Grabbing the birdie's head, you stuff your cock in his mouth, forcing him to suck your messy cock clean. When he's done, you drop his head and let it fall to the floor. You leave him behind in the dark room, panting and leaking cum as his nanites rush to heal these fresh wounds.";
	if HP of Icarus is 5, increase HP of Icarus by 1;

to say icarussex5_ap_x:	[extreme version of scene 5]
	say "     Unwilling or unable to hold back your instinctual desires, you allow your wild nature to have full rein. You dig your claws in deeper and pound away at him harder and harder. His body shudders under you, his birdie feet clawing at the wooden floor as you relentlessly fuck him while biting down hard onto his neck with your predatory beak. His body shudders and squirms beneath you with added vigor as the taste of his blood fills your mouth. He releases a groan, his ass clenching down hard around you as he cums even as your hard beak digs deeper into his neck. This load is the largest yet from him, the chase and his capture clearly having gotten Icarus very worked up. Shot after shot of avian cum marks the floor, adding the scent of your prey's semen to that of his blood in the air.";
	say "     The taste of your prey's flesh and the scent of his release sends a rush of wild excitement through you. You bite down harder, tearing into his neck as you cum. Even as you pound as his feathery ass, blasting shot after shot of your seed into him, his struggles grow weaker, his lifeblood flowing across your tongue. But in the heat of the moment, you don't care about the consequences, only seeking to sate your instinctual hungers upon your captured prey. Even as he's sagging weakly beneath you, he continues to cum, shooting splatters of his semen into the growing pool of blood beneath him until he gives a weak, gurgling sigh and collapses.";
	WaitLineBreak;
	say "     It is some time after you've finished cumming that you start to realize that you're starting to chew into the unmoving bird's shoulder. Your humanity struggles to pull itself out of the instinctual haze you've been in. It takes some effort, the wild rush of the hunt and the raw pleasure of succumbing to those dark impulses is strong and has filled you with an excitement that you lingers. The rush of adrenaline, the taste of his blood, the ecstasy of your release, the completion of the hunt - all alluring dark pleasures you want to sink into again.";
	say "     Regaining some control, you quickly push yourself away, eyes locked on his torn throat and still tasting his bloody flesh in your beak. You swallow it down without thinking, your human mind causing your stomach to shudder, but your predatory body manages to hold down your sinister meal. When you look back at him, your eyes lock with his unblinking eyes. You can't be sure how long you stare into them and it takes considerable effort to avert your gaze, reaching over to brush them closed.";
	say "     You grab a stray sheet and pull it over his body and mess of blood and semen leaking from it, not wanting to look at it any longer to help bury those instincts you can still feel inside you. You clean yourself up as best you can with some rags and leave the room, closing the door behind you, trying to hide this dark deed you've done[if ( the number of booked people + the number of bunkered people ) > 2] from the others[end if]. But you can't hide it from yourself and you head back downstairs with a heavy conscience. All the while, the dark recesses of your avian mind eagerly await another such release.";
	PlayerEat 6;
	now Libido of Player is Libido of Player / 2;
	now humanity of Player is humanity of Player / 2;
	now Icarus is nowhere;
	now HP of Icarus is 7;
	now ttIcarus is turns;
	now tti_scene is 0;


to say icarussex5_ap_x2:	[repeating extreme version of scene 5]
	say "     The caught passerine shivers and squirms beneath you. 'Do it,' he whispers softly as he squeezes down harder around your cock. Your human restraint cannot rein in your predatory impulses, that dark corner of your mind whispering that he wants it and that he'll be restored. Your avian instincts take charge and you allow your wild nature to run wild, digging your claws deeper into his tender body and pounding away at him harder and harder.";
	say "     His body shudders under you, his birdie feet clawing at the wooden floor as you relentlessly fuck him while biting down hard onto his neck with your predatory beak. His body shudders and squirms beneath you with added vigor as the taste of his blood fills your mouth. He releases a groan, his ass clenching down hard around you as he cums even as your hard beak digs deeper into his neck. The small songbird cums long and hard, the chase, his capture and the rough treatment clearly having gotten Icarus very worked up. Shot after shot of avian cum marks the floor, adding the scent of your prey's semen to that of his blood in the air.";
	WaitLineBreak;
	say "     The taste of your prey's flesh and the scent of his release sends a rush of wild excitement through you. You bite down harder, tearing into his neck as you cum. Even as you pound as his feathery ass, blasting shot after shot of your seed into him, his struggles grow weaker, his lifeblood flowing across your tongue. With nary a thought to what you're doing, only seeking to sate your instinctual hungers upon your captured prey, you bite down harder. Even as he's sagging weakly beneath you, he continues to cum, shooting splatters of his semen into the growing pool of blood beneath him until he gives a weak, gurgling, and strangely contented sigh before collapsing.";
	say "     Your dark impulses and the songbird's perverse desire satisfied, you pull out, pumping the last few spurts of your seed across his crumpled body. You swallow down the chunk of torn flesh, your predatory tongue loving the taste of it. As the haze starts to lift, you can't help but feel a little ill at ease with what you've done, but part of your infected mind relishes the rush of it and is reluctant to let your humanity reassert itself. Knowing (hoping?) that he'll recover in time, you nuzzle him tenderly and brush his eyes closed. After pulling the bloody sheet across his body, you leave his still body in the dark, secluded attic.";
	PlayerEat 6;
	decrease Libido of Player by Libido of Player / 5;
	SanLoss 20;
	now Icarus is nowhere;
	now HP of Icarus is 9;
	now ttIcarus is turns;


to say icarussex5_fel:		[uncontrolled feline sex]
	say "     Wanting to play with your songbird prey, you call for him to come down. He continues to sing his musical song as if not hearing you. When you call out to him again, he glances at you with a slight grin, flutters his wings a little and sings on. Frustrated and wanting the bird all the more, you call out to him again with a feline snarl. With that, he stops singing and starts to move, but rather than coming down to you, he instead retreats further into the rafters.";
	say "     Frustrated now by this obvious taunting, you rush up the stairs to the upper level. With another angry mrowl, you head out onto the rafters after him without a thought to the risk. Thankfully your feline form give you some added control and claws to grip the wood as you leap from one wooden beam to the next in pursuit of your prey. Seeing you coming for him, he gives a fearful chirp and tries to get away, but not too hard, just enough to keep up the chase as he taunts you with flicks of his blue tail and shake of his downy ass.";
	WaitLineBreak;
	say "     Eventually the chase leads up into the attic and you corner the little bird in there. Panting hard, he hops from one leg to the next, looking for an avenue of escape but finding none. With another mrowl, you drop to all fours before pouncing atop your passerine prey. You sink your talons into him as you knock him to the ground beneath you. He shivers and moans as you press him to the dusty floor and yank up his tail with little preamble, your blood pumping hard and your instincts largely in control. With a bruisingly hard nip on his shoulder, you drive your cock into him with one harsh thrust that gets him as hard as a rock.";
	say "     Your sex up in the secluded attic is harsh and merciless, your feline infection lustful after the hunt. The blue bird chirps in pain and moans in delight as you take him hard. So excited by the chase, you give him bloody bites and scratches as you manhandle his body and use him as your fucktoy. His body shudders from the wounds and the pounding he's receiving, his cock hard and pulsing with excitement as he moans for more and to take him harder.";
	if HP of Icarus is 5:
		say "     With your predatory, feline instincts exciting you, you find it difficult to hold back any longer. You have caught your prey and he is at your mercy.";
		say "     [bold type]Shall you let loose and let your wild impulses do as they will, or will you rein it in to keep yourself from going too far?[roman type] [bracket]WARNING: Extreme violence occurs if you accept.[close bracket][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Let your wild impulses do as they will.";
		say "     ([link]N[as]n[end link]) - Rein in your instincts.";
		if Player consents:
			say "[icarussex5_fel_x]";
		else:
			say "[icarussex5_fel_s]";
	else if HP of Icarus is 6:
		WaitLineBreak;
		say "[icarussex5_fel_s]";
	else if HP of Icarus >= 8:
		WaitLineBreak;
		say "[icarussex5_fel_x2]";

to say icarussex5_fel_s:	[standard version of scene 5 - feline]
	say "     You take some care to not hurt your special catch too badly and instead focus on pounding him pretty ass harder and harder. His body shudders under you, his birdie feet clawing at the wooden floor as you relentlessly fuck your caught prey until he cums with a loud, musical cry of lustful delight. This load is the largest yet from him, the chase and his capture clearly having gotten Icarus very worked up. Shot after shot of avian cum marks the floor, adding the scent of your prey's semen to that of his blood in the air.";
	say "     The sight and scent of all this along with the thought that you've driven him to this point sends a rush of wild excitement through you. You bite down hard onto his shoulder, fangs drawing blood again and cum into him as his orgasm's coming to an end. The rush of fresh pain and your hot semen filling him sets him off again with another set of cum blasts[if Ball Size of Player > 6]. Your [Cum Load Size of Player] load pumps more and more seed into the wounded songbird until he's so bloated and full that your seed leaks out of his beak. He can only give a weak chirp as he's left a bloated, feathery balloon of cum. When you pull out, your hot cum pours from his stretched and stuffed ass, slowly deflating him[else if Ball Size of Player > 5]. Your [Cum Load Size of Player] load pumps more and more seed into the wounded songbird until he's bloated and full. He can only give a weak chirp as he's left a bloated, feathery balloon of cum. When you pull out, your hot cum pours from his stretched and stuffed ass, slowly deflating[else if Ball Size of Player > 4]. Your [Cum Load Size of Player] load pumps more and more seed into the wounded songbird until he's left with a chubby tummy full of your seed. He gives a weak chirp as hot cum leaks from his stretched and stuffed ass when you pull out[else]. The wounded songbird gives a weak chirp when you pull out, hot cum leaking from his stretched and creamy ass[end if]. Grabbing the birdie's head, you stuff your cock in his mouth, forcing him to suck your messy cock clean. When he's done, you drop his head and let it fall to the floor. You leave him behind in the dark room, panting and leaking cum as his nanites rush to heal these fresh wounds.";
	if HP of Icarus is 5, increase HP of Icarus by 1;

to say icarussex5_fel_x:	[extreme version of scene 5 - feline]
	say "     Unwilling or unable to hold back your instinctual desires, you allow your wild nature to have full rein. You dig your claws in deeper and pound away at him harder and harder. His body shudders under you, his birdie feet clawing at the wooden floor as you relentlessly fuck him while biting down hard onto his neck with your predatory jaws. His body shudders and squirms beneath you with added vigor as the taste of his blood fills your mouth. He releases a groan, his ass clenching down hard around you as he cums even as your feline fangs digs deeper into his neck. This load is the largest yet from him, the chase and his capture clearly having gotten Icarus very worked up. Shot after shot of avian cum marks the floor, adding the scent of your prey's semen to that of his blood in the air.";
	say "     The taste of your prey's flesh and the scent of his release sends a rush of wild excitement through you. You bite down harder, tearing into his neck as you cum. Even as you pound as his feathery ass, blasting shot after shot of your seed into him, his struggles grow weaker, his lifeblood flowing across your tongue. But in the heat of the moment, you don't care about the consequences, only seeking to sate your instinctual hungers upon your captured prey. Even as he's sagging weakly beneath you, he continues to cum, shooting splatters of his semen into the growing pool of blood beneath him until he gives a weak, gurgling sigh and collapses.";
	WaitLineBreak;
	say "     It is some time after you've finished cumming that you start to realize that you're starting to chew into the unmoving bird's shoulder. Your humanity struggles to pull itself out of the instinctual haze you've been in. It takes some effort, the wild rush of the hunt and the raw pleasure of succumbing to those dark impulses is strong and has filled you with an excitement that you lingers. The rush of adrenaline, the taste of his blood, the ecstasy of your release, the completion of the hunt - all alluring dark pleasures you want to sink into again.";
	say "     Regaining some control, you quickly push yourself away, eyes locked on his torn throat and still tasting his bloody flesh in your muzzle. You swallow it down without thinking, your human mind causing your stomach to shudder, but your predatory body manages to hold down your sinister meal. When you look back at him, your eyes lock with his unblinking eyes. You can't be sure how long you stare into them and it takes considerable effort to avert your gaze, reaching over to brush them closed.";
	say "     You grab a stray sheet and pull it over his body and mess of blood and semen leaking from it, not wanting to look at it any longer to help bury those instincts you can still feel inside you. You clean yourself up as best you can with some rags and leave the room, closing the door behind you, trying to hide this dark deed you've done[if ( the number of booked people + the number of bunkered people ) > 2] from the others[end if]. But you can't hide it from yourself and you head back downstairs with a heavy conscience. All the while, the dark recesses of your feline mind eagerly await another such release.";
	PlayerEat 6;
	now Libido of Player is Libido of Player / 2;
	now humanity of Player is humanity of Player / 2;
	now Icarus is nowhere;
	now HP of Icarus is 7;
	now ttIcarus is turns;
	now tti_scene is 0;


to say icarussex5_fel_x2:	[repeating extreme version of scene 5 - feline]
	say "     The caught passerine shivers and squirms beneath you. 'Do it,' he whispers softly as he squeezes down harder around your cock. Your human restraint cannot rein in your predatory impulses, that dark corner of your mind whispering that he wants it and that he'll be restored. Your feline instincts take charge and you allow your wild nature to run wild, digging your claws deeper into his tender body and pounding away at him harder and harder.";
	say "     His body shudders under you, his birdie feet clawing at the wooden floor as you relentlessly fuck him while biting down hard onto his neck with your predatory jaws. His body shudders and squirms beneath you with added vigor as the taste of his blood fills your mouth. He releases a groan, his ass clenching down hard around you as he cums even as your feline fangs digs deeper into his neck. The small songbird cums long and hard, the chase, his capture and the rough treatment clearly having gotten Icarus very worked up. Shot after shot of avian cum marks the floor, adding the scent of your prey's semen to that of his blood in the air.";
	WaitLineBreak;
	say "     The taste of your prey's flesh and the scent of his release sends a rush of wild excitement through you. You bite down harder, tearing into his neck as you cum. Even as you pound as his feathery ass, blasting shot after shot of your seed into him, his struggles grow weaker, his lifeblood flowing across your tongue. With nary a thought to what you're doing, only seeking to sate your instinctual hungers upon your captured prey, you bite down harder. Even as he's sagging weakly beneath you, he continues to cum, shooting splatters of his semen into the growing pool of blood beneath him until he gives a weak, gurgling, and strangely contented sigh before collapsing.";
	say "     Your dark impulses and the songbird's perverse desire satisfied, you pull out, pumping the last few spurts of your seed across his crumpled body. You swallow down the chunk of torn flesh, your predatory tongue loving the taste of it. As the haze starts to lift, you can't help but feel a little ill at ease with what you've done, but part of your infected mind relishes the rush of it and is reluctant to let your humanity reassert itself. Knowing (hoping?) that he'll recover in time, you nuzzle him tenderly and brush his eyes closed. After pulling the bloody sheet across his body, you leave his still body in the dark, secluded attic while grooming the bloody mess from your paws and face.";
	PlayerEat 6;
	decrease Libido of Player by Libido of Player / 5;
	SanLoss 20;
	now Icarus is nowhere;
	now HP of Icarus is 9;
	now ttIcarus is turns;


to say icarussex6_ap:		[violent avian sex]
	say "     Looking up at the rafters, you spot your songbird prey and run your tongue along your beak. Your predatory instincts long to catch your prey and satisfy their dark desires upon him. At first, you consider resisting the impulse, but a corner of your mind whispers that he's asked you to keep doing it to him and that he'll recover eventually. With these excuses, you allow your darker nature take over. Heading up the stairs to the upper floor, you approach the rafters and release a shrill, avian cry.";
	say "     Startled by the call of a predator, the blue passerine releases a chirp of fear. He flutters frantically further into the rafters, you giving chase with another sharp screech. While not quite able to fly, your wings do give you some added control as you hop from one wooden beam to the next in pursuit of your prey. Seeing you coming for him, he flies around further, evading you with tantalizing flicks of his blue tail and shakes of his downy ass, driving you on.";
	WaitLineBreak;
	if HP of Icarus >= 10 and Ball Size of Player > 6 and Libido of Player > 50 and a random chance of 2 in 5 succeeds:
		if icarus_cumstuff is even:
			say "     The chase eventually drives your songbird prey into the attic where you corner him. Wide-eyed and panting at having been trapped again, you stalk closer and closer, eventually leaping atop the little bird and bearing him down under your weight. He groans as you press him roughly to the floor, grinding his face against the wood even as you grind your own wood against his ass. You pull his feathered tail up sharply, yanking a few feathers out as you do. With a firm grip on his neck with the other hand, you jam your cock into the little birdie, causing your enlarged balls to slap against his thighs. He gives a moan of delight despite the painful mistreatment and pushes back into your hard thrust.";
			say "     With your raging libido and wild instincts dominating your actions, you pound into him relentlessly. Hidden away in the secluded attic, there is no one to hear his moans and chirps of pain and delight as you fuck him hard. So excited by the chase, you give him several bloody bites and scratches as you manhandle his body and use him like a fucktoy. His body shudders from the wounds and the pounding he's receiving, his cock hard and pounding with excitement as his little heart races.";
			say "     Being quite aroused even before coming up here, your balls ache for release and it isn't long before you reach your climax. You drive your [Cock of Player] cock into him deep and unleash your [Cum Load Size of Player] load into him. Even as your copious semen fills him to the point that his belly is bloated and rounded like a feathery balloon and cum leaks from his beak, his body squirms atop your rod as he sprays his own meager load onto the wooden floor. After your orgasm subsides, you find yourself still feeling rather aroused and your [Ball Size Adjective of Player] [Balls] could stand another draining.";
			say "     [bold type]Does your lust drive you to fuck him again or do your predatory instincts win out and finish the hunt?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Fuck him again.";
			say "     ([link]N[as]n[end link]) - Finish the hunt.";
			if Player consents:
				say "     As you resume fucking the overfull bird, he groans wetly and tries to squirm, but he's so full and too well pinned that he can hardly move. Keeping his ass raised and his head pressed down so you and pound his feathery ass caused the load already in there to continue to well up from his beak in a growing pool. With him stuffed so full, he makes for a wonderfully padded and squishy little birdie to fuck. Knowing that it is your own seed that's turned him into a cum-filled fucktoy makes it all the better.";
				say "     When you climax again, pumping another [Cum Load Size of Player] load into him, the leaking cum flowing from his mouth becomes a gush of thick, white goo pouring from his gasping beak. His taloned hands claw at the floor and his pinned wings try to flutter as he struggles for breath. His wet gurgles fill the attic as the only thing he can manage to breathe in is your semen, filling his lungs and drowning him in your virile output. His eyes are wide and his squirming becomes frantic, but you don't let up, clamping his beak tight and preventing him for pulling in air. Eventually he grows weak and passes out from lack of oxygen with a final, gurgling sigh. The pulsing of your rod pumping your seed into him doesn't stop until the beating of his heart has stopped as well.";
				say "     When you pull out and your hot cum continues to leak out of him from both ends, you can't help but grin, perversely delighted at having proven your virility in such a grisly manner. You spread the sheet over him, though it does little to cover the extensive mess you've made. That done, you leave his lifeless body there, distended and leaking cum into the ever-growing pool and soaking his death shroud.";
				decrease Libido of Player by Libido of Player / 3;
			else:
				say "     With your lust satiated enough for now, your predatory instincts take the fore once again. Grabbing his head roughly, one hand clamped firmly around his beak and the other digging into his shoulder, you keep his upper body pressed firmly against the floor. Knowing what's coming, the passerine's eyes are wide with fear and excitement, heart racing in his chest as you bring your beak to his throat and tear into him. You can taste his bloody flesh in your mouth, seasoned with your cum leaking from his ripped esophagus. With his throat torn out, the little birdie's wet, gurgling struggles soon grow weak and, with a final shudder, stop. You tear out a few more chunks, swallowing your bloody feast before pulling your spent shaft from his cooling body. You spread the sheet over him, leaving the nanites to do their work.";
				PlayerEat 6;
				decrease Libido of Player by Libido of Player / 5;
		else:
			say "     The chase eventually drives your songbird prey into the attic where you corner him. Wide-eyed and panting at having been trapped again, you stalk closer and closer, eventually leaping atop the little bird and bearing him down under your weight. Grabbing both his arms, you pull them tightly behind his back, pinning his wings down as you do, and pull him into his lap. Feeling your stiff member beneath him, his tail fans and raises, letting you get your pulsing rod lined up with his tight hole. With a hard, painful yank on his arms, you pull him downwards, forcing him onto your [cock size desc of Player] [Cock of Player] shaft. He gives pained chirp, but he also moans in pleasure, especially when you force him fully down so he's seated on your large, heavy balls.";
			say "     His weak, little body can't resist as you fuck him roughly, bouncing him atop your [Cock of Player] manhood. Between your raging libido and wild instincts, your captured prey receives a very hard pounding that has him moaning and chirping in pain and delight. So excited by the chase, you give him several nips with your sharp beak that leave bloody marks on his blue feathers. His body shudders from the wounds and the pounding he's receiving, his cock hard and pounding with excitement as his little heart races.";
			say "     Being quite aroused even before the hunt, your balls ache for release and it isn't long before you reach your climax. You yank him down harshly, impaling him on your [cock size desc of Player] cock and sending your [Cum Load Size of Player] load into him. With so much semen coming from your huge balls, his belly is bloated and rounded like a feathery balloon. As you watch the passerine swell, his penis twitches and throbs, spraying his much smaller load in large arcs to splatter onto the floor several feet away. After your orgasm subsides, you find yourself still feeling rather aroused and your [Ball Size Adjective of Player] [Balls] could stand another draining.";
			say "     [bold type]Does your lust drive you to fuck him again or do your predatory instincts win out and finish the hunt?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Fuck him again.";
			say "     ([link]N[as]n[end link]) - Finish the hunt.";
			if Player consents:
				say "     As you resume fucking the overfull bird, he groans wetly and tries to squirm, but he's so full and tightly held that he can hardly move. Forcing him to start bouncing in your lap again, his already overfull belly sloshes from all the cum filling him. With him stuffed so full, he makes for a wonderfully padded and squishy little birdie to fuck. Knowing that it is your own seed that's turned him into a cum-filled fucktoy makes it all the better.";
				say "     When you climax again, pumping another [Cum Load Size of Player] load into him, the fresh rush of cum makes him swell more and more. His belly grows rounder and rounder with every pulse of your cock. Releasing his arms, you grab onto his belly so you can keep his bloated body from falling off your rod until you're done. He gurgles wetly as some of your seed wells up from his beak, but most of it stays inside his increasingly strained belly.";
				say "     Eventually, he can't take the strain any longer and his stomach bursts. Blood, guts and loads of cum pour from his torn abdomen, spilling out across the floor. He gives a cry that is in part one of pain, but also of relief at the pressure finally releasing. As the life leaks out of his body, you pull him off your still spurting rod and dig your beak into his torn belly, dining upon his cum-stained viscera even as he watches until the light fades from his eyes and his head slumps down. You enjoy a few last bites before leaving the rest.";
				say "     Looking over what your [Ball Size Adjective of Player] [Balls] have done, you can't help but grin, perversely delighted at having proven your virility in such a grisly manner. You spread the sheet over him, though it does little to cover the extensive mess you've made. That done, you leave his lifeless body there, leaking blood and cum into an ever-growing pool and soaking his death shroud.";
				decrease Libido of Player by Libido of Player / 3;
			else:
				say "     With your lust satiated enough for now, your predatory instincts take the fore once again. You push the bloated bird off of you and onto his back. Knowing what's coming, the passerine's eyes are wide with fear and excitement, struggling to rise even as you leap atop him. Your talons dig into his bloated belly, tearing into it and sending his entrails spilling out. Blood, guts and cum pour from the wound as he chirps in pain. With the scent of your prey's blood in the air, you dig your beak into his torn belly, dining upon his cum-stained viscera even as he watches. He reaches up weakly, brushing his hand across your head in a caress before his head slumps down and the light fades from his eyes. You enjoy a few last bites before swallowing your bloody feast. You spread the sheet over him, leaving the nanites to do their work.";
				decrease Libido of Player by Libido of Player / 5;
			PlayerEat 6;
			decrease Libido of Player by Libido of Player / 5;
		increase icarus_cumstuff by 1;
	else:	[add cycling/random variations here]
		if icarussex6_variant is 1:		[gored chest]
			say "     Eventually the chase leads up into the attic and you corner the little bird in the secluded room. Panting hard, he flutters around the room as you move in. With a sharp cry, you leap atop your passerine prey, sinking your talons into him and pressing him to the ground. He shivers and moans as you press him onto his back and grab his little legs, spreading them forcefully and pulling his hips up to yours. At this point, your blood is pumping hard and your instincts are in control. With a bruisingly hard nip on his shoulder, you drive your cock into him with one harsh thrust that gets him as hard as a rock. His cry is both one of pain and of delight.";
			say "     Hidden in the dark attic, you don't hold back, pounding into him mercilessly. Your avian infection has its prey and is wildly lustful. The blue bird chirps in pain and moans in delight as you take him hard. So excited by the chase, you give him bloody bites and scratches as you manhandle his body and use him as your fucktoy. His body shudders from the wounds and the pounding he's receiving, his cock hard and pulsing with excitement as he moans for more and to take him harder.";
			say "     His stiff member twitches each time you drive into his frail body, the spurts of precum soon being replaced by shots of cum as you send him over the edge with your rough mistreatment of his body. His stuffed ass clenches down around your cock as he orgasms long and hard. Even as this increases your pleasure, it drives you to dig your claws into the wooden floor as you grip his little legs tighter so you can thrust harder to push into that clamped hole.";
			WaitLineBreak;
			say "     As your climax comes, you unleash your hot seed into his bowels while tearing your beak into his chest. His body shudders, fresh spurts of his cum splattering across you both even as his blood flows from the growing wound. He squirms and struggles weakly, your strong, predator body easily able to restrain your prey. The taste of fresh meat, hot with lust and fear, is delicious to you and tear into him without restraint. In time, his struggles cease, his arms falling to the floor and his body hanging limp as you continue to tear into him. You pull your spent shaft and bloody beak from his unmoving, lifeless body, swallowing down the last visceral mouthful.";
			increase icarussex6_variant by 1;
		else if icarussex6_variant is 2:	[broken leg, gored belly]
			say "     The chase eventually leads up into the attic and you corner the little bird in there. Wide-eyed and short of breath, he backs himself into a corner as you draw nearer. With a sharp cry, you leap atop your passerine prey, digging your talons into him and slamming him against the wall. He shivers and moans as you lift the little fellow with ease and spread his legs wide. Grinding your stiff manhood against his feathery bottom, you are caught up in your wild, instinctual lust and sink your claws into his thighs even as your cock plows into his ass. He releases a pained chirp, but his cock throbs and pulses, full and hard with arousal, the little bird delighting in the painful mistreatment of his body.";
			say "     Safe from prying eyes in the secluded attic, you don't hold back, pounding into him mercilessly. Your avian infection has its prey and is wildly lustful. The blue bird chirps in pain and moans in delight as you thrust into him again and again, battering his well-used ass with your cock and his body against the wall behind him. With your instincts running wild, you dig your beak into his shoulder and your claws deep into his legs. And while he whimpers and moans from you tearing into him, there are many moans of pleasure mixed in with his cries of pain. His stiff shaft pulses and throbs with excitement as he cries out for you to fuck him harder.";
			WaitLineBreak;
			say "     Seeking to fuck him all the harder, you wrench his legs further up and apart. There comes a tearing pop as you wrench one of his legs from its socket. He cries you loudly and cums messily, spraying his seed onto you both even as his eyes water from the pain. Buried deep inside him now, your cock pulses and throbs, dumping your [Cum Load Size of Player] load into your mutilated prey.";
			say "     When you're done filling him, you drop him unceremoniously to the floor, his leg twisted at an unnatural angle. He struggles to move, his wings flapping weakly. The sight of the injured bird instantly captivates the attention of your predatory instincts and you pounce atop him, taloned feet digging into his belly, tearing out his entrails. The scent of his blood and his fear are thick in the air, smelling wonderfully exciting to you. As he starts to grow weak, you bury your beak in his open belly, tearing into his flesh for a grisly meal. As the light fades from his eyes, he brushes his hand lightly across your face[one of], his liver lodged in your bloody beak[or], a chunk of his abdominal muscles dangling from your beak[or]as you tear a length of his intestines from his gored belly[at random]. You tear out a few more pieces of your passerine prey before moving back from his lifeless body, swallowing down the final, visceral mouthful.";
			increase icarussex6_variant by 1;
		else:	[wing eaten]
			say "     Cornering him in the attic again, you move in to grab him. He tries to get away, fluttering around the room and trying to reach the door, but you manage to catch him by the ankle and pull him out of the air. You swing him to the ground, bashing him hard against [one of]the wooden floor[or]a wooden truss[or]the wooden wall[at random]. He cries out in pain as the breaking of bone can be heard, a wing snapped from the blow. Seeing your prey wounded, wing unable to flap properly, your avian instincts drive you to pounce atop him. Digging your beak into his wounded wing, you hold the struggling songbird and drive your stiff cock into his ass, causing him to moan and spurt precum across the floor despite (or perhaps because of) the pain.";
			say "     With your instincts running wild, you revel in having your prey at your mercy and fuck him hard. Lost in your dark lusts, you can only grin as you hear the rough cracking and grinding of his broken wing bones as you pull on it. And while this makes him chirp and whimper in pain, he also moans and pushes back into your thrusts as best he can. His cock is hard with arousal, twitching and dribbling precum onto the wood floor with every hard bash of your penis against his prostate.";
			say "     Excited by the taste of his blood flowing into your beak as you dig it deeper into his broken wing, you give a hard thrust and climax. Shot after shot of your thick seed is pumped into your wounded prey, claiming his ass even as you ravage his body. Digging your claws into his ass, you grip him tightly while filling him with your [Cum Load Size of Player] load. Red stains his blue feathers as you fuck him into a stupor.";
			WaitLineBreak;
			say "     Your beak sinks deeper into his wing, biting into the meaty flesh. As you tear a chunk of raw meat from his shattered wing, the weak passerine releases a long moan and cums, spraying splatters of white cum onto the bloody floor. This quivering asshole around your cock draws a few more spurts of semen from you, adding to your instinct-addled enjoyment of your grisly meal. Even as the little bird's orgasm wanes, so does his consciousness, passing out from blood loss as you dine upon the raw white meat of his wing. It is only once he starts to grow cold that you pull out and release him.";
			now icarussex6_variant is 1;
		say "     Your dark impulses satiated in giving the songbird his perverse release, you wipe the blood from your beak and your hands. You shift his body into a more comfortable position and drape the sheet over it like a blanket. Were it not for the crimson stains and the coppery scent, one could almost believe he was just resting. And given the microscopic nanites working to restore him, in a way he is. As you leave close the secluded room behind you, you hope your latest assault upon him was not too much to recover from. Still feeling the excitement of the hunt and the kill, your concern is tainted by the longing for the next time you can snare your pretty prey bird.";
		PlayerEat 6;
		decrease Libido of Player by Libido of Player / 5;
	SanLoss 20;
	now Icarus is nowhere;
	now HP of Icarus is 9;
	now ttIcarus is turns;

to say icarussex6_fel:		[violent feline sex]
	say "     Looking up at the rafters, you spot your songbird prey and run your tongue along your beak. Your predatory instincts long to catch your prey and satisfy their dark desires upon him. At first, you consider resisting the impulse, but a corner of your mind whispers that he's asked you to keep doing it to him and that he'll recover eventually. With these excuses, you allow your darker nature take over. Heading up the stairs to the upper floor, you approach the rafters and release a harsh, feline snarl.";
	say "     Startled by the call of a predator, the blue passerine releases a chirp of fear. He flutters frantically further into the rafters, you giving chase with another wild growl. With your feline form focused on the hunt, you leap from rafter to rafter, your claws digging into the wood for purchase as you pursue your prey. Seeing you coming for him, he flies around further, evading you with tantalizing flicks of his blue tail and shakes of his downy ass, driving you on.";
	WaitLineBreak;
	if HP of Icarus >= 10 and Ball Size of Player > 6 and Libido of Player > 50 and a random chance of 2 in 5 succeeds:
		if icarus_cumstuff is even:
			say "     The chase eventually drives your songbird prey into the attic where you corner him. Wide-eyed and panting at having been trapped again, you stalk closer and closer, eventually pouncing atop the little bird and bearing him down under your weight. He groans as you press him roughly to the floor, grinding his face against the wood even as you grind your own wood against his ass. You pull his feathered tail up sharply, yanking a few feathers out as you do. With a firm grip on his neck with the other paw, you jam your cock into the little birdie, causing your enlarged balls to slap against his thighs. He gives a moan of delight despite the painful mistreatment and pushes back into your hard thrust.";
			say "     With your raging libido and wild instincts dominating your actions, you pound into him relentlessly. Hidden away in the secluded attic, there is no one to hear his moans and chirps of pain and delight as you fuck him hard. So excited by the chase, you give him several bloody bites and scratches as you manhandle his body and use him like a fucktoy. His body shudders from the wounds and the pounding he's receiving, his cock hard and pounding with excitement as his little heart races.";
			say "     Being quite aroused even before coming up here, your balls ache for release and it isn't long before you reach your climax. You drive your [Cock of Player] cock into him deep and unleash your [Cum Load Size of Player] load into him. Even as your copious semen fills him to the point that his belly is bloated and rounded like a feathery balloon and cum leaks from his beak, his body squirms atop your rod as he sprays his own meager load onto the wooden floor. After your orgasm subsides, you find yourself still feeling rather aroused and your [Ball Size Adjective of Player] [Balls] could stand another draining.";
			say "     [bold type]Does your lust drive you to fuck him again or do your predatory instincts win out and finish the hunt?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Fuck him again.";
			say "     ([link]N[as]n[end link]) - Finish the hunt.";
			if Player consents:
				say "     As you resume fucking the overfull bird, he groans wetly and tries to squirm, but he's so full and too well pinned that he can hardly move. Keeping his ass raised and his head pressed down so you and pound his feathery ass causes the load already in there to continue to well up from his beak in a growing pool. With him stuffed so full, he makes for a wonderfully padded and squishy little birdie to fuck. Knowing that it is your own seed that's turned him into a cum-filled fucktoy makes it all the better.";
				say "     When you climax again, pumping another [Cum Load Size of Player] load into him, the leaking cum flowing from his mouth becomes a gush of thick, white goo pouring from his gasping beak. His taloned hands claw at the floor and his pinned wings try to flutter as he struggles for breath. His wet gurgles fill the attic as the only thing he can manage to breathe in is your semen, filling his lungs and drowning him in your virile output. His eyes are wide and his squirming becomes frantic, but you don't let up, clamping his beak tight and preventing him from pulling in air. Eventually he grows weak and passes out from lack of oxygen with a final, gurgling sigh. The pulsing of your rod pumping your seed into him doesn't stop until the beating of his heart has stopped as well.";
				say "     When you pull out and your hot cum continues to leak out of him from both ends, you can't help but grin, perversely delighted at having proven your virility in such a grisly manner. You spread the sheet over him, though it does little to cover the extensive mess you've made. That done, you leave his lifeless body there, distended and leaking cum into the ever-growing pool and soaking his death shroud. As you make your exit, you purr softly while licking your paws clean and grooming the tell-tale bloody cum from your face.";
				decrease Libido of Player by Libido of Player / 3;
			else:
				say "     With your lust satiated enough for now, your predatory instincts take the fore once again. Grabbing his head roughly, one paw clamped firmly around his beak and the other digging into his shoulder, you keep his upper body pressed firmly against the floor. Knowing what's coming, the passerine's eyes are wide with fear and excitement, heart racing in his chest as you bring your jaws to his throat and tear into him. You can taste his bloody flesh in your mouth, seasoned with your cum leaking from his ripped esophagus. With his throat torn out, the little birdie's wet, gurgling struggles soon grow weak and, with a final shudder, stop. You tear out a few more chunks, swallowing your bloody feast before pulling your spent shaft from his cooling body. You spread the sheet over him, leaving the nanites to do their work even as you lick your paws clean and use them to wipe the tell-tale blood from your muzzle as well.";
				PlayerEat 6;
				decrease Libido of Player by Libido of Player / 5;
		else:
			say "     The chase eventually drives your songbird prey into the attic where you corner him. With him wide-eyed and panting at having been trapped again, you stalk closer and closer on all fours, eventually pouncing atop the little bird and bearing him down under your weight. Grabbing both his arms, you pull them tightly behind his back, pinning his wings down as you do, and pull him into his lap. Feeling your stiff member beneath him, his tail fans and raises, letting you get your pulsing rod lined up with his tight hole. With a hard, painful yank on his arms, you pull him downwards, forcing him onto your [cock size desc of Player] [Cock of Player] shaft. He gives pained chirp, but he also moans in pleasure, especially when you force him fully down so he's seated on your large, heavy balls.";
			say "     His weak, little body can't resist as you fuck him roughly, bouncing him atop your [Cock of Player] manhood. Between your raging libido and wild instincts, your captured prey receives a very hard pounding that has him moaning and chirping in pain and delight. So excited by the chase, you give him several bites with your powerful jaws that leave bloody marks on his blue feathers. His body shudders from the wounds and the pounding he's receiving, his cock hard and pounding with excitement as his little heart races.";
			say "     Being quite aroused even before the hunt, your balls ache for release and it isn't long before you reach your climax. You yank him down harshly, impaling him on your [cock size desc of Player] cock and sending your [Cum Load Size of Player] load into him. With so much semen coming from your huge balls, his belly is bloated and rounded like a feathery balloon. As you watch the passerine swell, his penis twitches and throbs, spraying his much smaller load in large arcs to splatter onto the floor several feet away. After your orgasm subsides, you find yourself still feeling rather aroused and your [Ball Size Adjective of Player] [Balls] could stand another draining.";
			say "     [bold type]Does your lust drive you to fuck him again or do your predatory instincts win out and finish the hunt?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Fuck him again.";
			say "     ([link]N[as]n[end link]) - Finish the hunt.";
			if Player consents:
				say "     As you resume fucking the overfull bird, he groans wetly and tries to squirm, but he's so full and tightly held that he can hardly move. Forcing him to start bouncing in your lap again, his already overfull belly sloshes from all the cum filling him. With him stuffed so full, he makes for a wonderfully padded and squishy little birdie to fuck. Knowing that it is your own seed that's turned him into a cum-filled fucktoy makes it all the better.";
				say "     When you climax again, pumping another [Cum Load Size of Player] load into him, the fresh rush of cum makes him swell more and more. His belly grows rounder and rounder with every pulse of your cock. Releasing his arms, you grab onto his belly so you can keep his bloated body from falling off your rod until you're done. He gurgles wetly as some of your seed wells up from his beak, but most of it stays inside his increasingly strained belly.";
				say "     Eventually, he can't take the strain any longer and his stomach bursts. Blood, guts and loads of cum pour from his torn abdomen, spilling out across the floor. He gives a cry that is in part one of pain, but also of relief at the pressure finally releasing. As the life leaks out of his body, you pull him off your still spurting rod and dig your muzzle into his torn belly, dining upon his cum-stained viscera even as he watches until the light fades from his eyes and his head slumps down. You enjoy a few last bites before leaving the rest.";
				say "     Looking over what your [Ball Size Adjective of Player] [Balls] have done, you can't help but grin, perversely delighted at having proven your virility in such a grisly manner. You spread the sheet over him, though it does little to cover the extensive mess you've made. That done, you leave his lifeless body there, leaking blood and cum into an ever-growing pool and soaking his death shroud. As you make your exit, you purr softly while licking your paws clean and grooming the tell-tale bloody cum from your face.";
				decrease Libido of Player by Libido of Player / 3;
			else:
				say "     With your lust satiated enough for now, your predatory instincts take the fore once again. You push the bloated bird off of you and onto his back. Knowing what's coming, the passerine's eyes are wide with fear and excitement, struggling to rise even as you pounce atop him. Your claws dig into his bloated belly, tearing into it and sending his entrails spilling out. Blood, guts and cum pour from the wound as he chirps in pain. With the scent of your prey's blood in the air, you dig your muzzle into his torn belly, dining upon his cum-stained viscera even as he watches. He reaches up weakly, brushing his hand across your head in a caress before his head slumps down and the light fades from his eyes. You enjoy a few last bites before swallowing your bloody feast. You spread the sheet over him, leaving the nanites to do their work even as you lick your paws clean and use them to wipe the tell-tale blood from your muzzle as well.";
				decrease Libido of Player by Libido of Player / 5;
			PlayerEat 6;
			decrease Libido of Player by Libido of Player / 5;
		increase icarus_cumstuff by 1;
	else if a random chance of icarus_cbt in 12 succeeds:	[cbt option]
		let x be 0;
		say "     With Icarus eventually cornered in the privacy of the attic, you snarl at him and drop to all fours. Pacing side to side, you edge closer and closer to the frightened little bird. He creeps backwards until there is nowhere left to go as he's pinned in a corner. And just as he turns slightly when he bumps the wall, you pounce on him. Your claws grab him and you pull him down beneath you.";
		say "     Your feline hunting instincts want to have you play with the birdie and your infected lust channels that into sexual play. The bird's become quite hard with excitement and fear and you lick your chops at the sight of his stiff little manhood. You run your tongue slowly over it a few times, drawing a shivering moan from the bird. As you take it into your feline muzzle and start sucking, he starts to relax a little, so you dig your claws into his sides. He gives a pained chirp as the red of blood seeps across his blue plumage.";
		say "     The scent of blood and fear excites you further and you purr as you alternate between licking his cock and balls and with sucking on his pulsing rod. Some of that blood trickles down to his crotch and you get a taste of it as you're going down on him. This reawakens your predatory hunger and you ";
		if icarus_cbt is 2:
			say "find yourself quite tempted to dig into the bird's succulent loins to sate your dark desires. Shall you do so?";
			say "[bracket]Warning: Gory CBT content ahead.[close bracket][line break]";
			if Player consents:
				now x is 1;
			else:
				say "     Pulling off his pulsing rod, you point your muzzle a little higher. Digger your claws in deeper, you bite into his abdomen. You tear his entrails from his belly and start feasting on them as the weak bird cries out in simultaneous pain and delight. The scents of blood, fear and arousal get thicker in the air as your terrified prey struggles in vain. His cock twitched and throbs as it blasts splatters of bird semen at the underside of your muzzle even as you dig into his open belly. Some even lands in the bloody mess you're consuming, adding to the flavor of your grisly meal.";
				say "     As the light fades from his eyes, he brushes his hand lightly across your face[one of], his liver lodged in your bloody jaws[or], a chunk of his abdominal muscles dangling between your fangs[or]as you tear a length of his intestines from his gored belly[in random order]. You tear out a few more pieces of your passerine prey before moving back from his lifeless body, swallowing down the final, visceral mouthful. You rise up and jerk yourself off across the bird's bloody carcass before covering it with the bloody sheet. Leaving the nanites to do their work, you lick your paws clean and use them to groom the tell-tale blood from your muzzle.";
				now icarus_cbt is 0;
		else:
			say "choose to feast upon the bird's succulent loins once again to sate your dark desires.";
			WaitLineBreak;
			now x is 1;
		if x is 1:
			say "     Pulling off his pulsing rod, you pull his full and aching balls into your muzzle. Cradling it in the warm embrace of your tongue, you give his ballsack another lick before slowly closing your jaws shut. The passerine whimper and moans, eyes going wide as it shifts from pleasure to pain as your fang dig into his sensitive balls. 'Do it. I deserve it,' he groans as he clenches his beak from the pain and caresses a hand upon your head.";
			say "     And so you bite down hard, crushing his ballsack into a deliciously meaty mush of blood and semen. He cries out loudly, an incoherent avian shriek of pain and delight. His small cock throbs and twitches against the side of your muzzle as you chew away. It tries to orgasm, but is unable to release more than some prostate fluid streaked with red. Tearing away the last scraps of flesh, you make a show of swallowing down the gory mess that was his testicles.";
			say "     Between the wound and his failed orgasm, his erection is starting to wane. Not wanting it to go soft before you can finish your treat it, you wrap your muzzle right around it. It twitches in your mouth as you slide it past your lips before biting down, severing it off at the base. You tear into your bloody treat in messy chomps. The emasculated songbird sags against the wall with waning strength, but never takes his eyes off the sight of you consuming his manhood.";
			say "     As the life is fading from his eyes, you bite into his gored crotch, digging into the succulent flesh. Your teeth find his prostate and tear into it as well[if wslevel is 3]. Dying, the bird pisses himself, bloody urine pouring from his torn urethra. This only adds to the flavor of your meal and you dig deeper, going after his bladder and then his kidneys as well[else], adding to the flavor of your meal[end if]. You have several more bloody mouthfuls before rising and jerking yourself off across the bird's carcass before covering it the bloody sheet. Leaving the nanites to do their work, you lick your paws clean and use them to groom the sticky mess of blood and semen from your muzzle.";
	else:	[add cycling/random variations here]
		if icarussex6_variant is 1:		[gored chest, heart]
			say "     Eventually the chase leads up into the attic and you corner the little bird in the secluded room. Panting hard, he flutters around the room as you stalk closer. With another mrowl, you pounce atop your passerine prey, sinking your claws into him and pressing him to the ground. He shivers and moans as you press him onto his back and grab his little legs, spreading them forcefully and pulling his hips up to yours. At this point, your blood is pumping hard and your instincts are in control. With a bruisingly hard nip on his shoulder, you drive your cock into him with one harsh thrust that gets him as hard as a rock. His cry is both one of pain and of delight.";
			say "     Hidden in the dark attic, you don't hold back, pounding into him mercilessly. Your feline infection has its prey and is wildly lustful. The blue bird chirps in pain and moans in delight as you take him hard. So excited by the chase, you give him bloody bites and scratches as you manhandle his body and use him as your fucktoy. His body shudders from the wounds and the pounding he's receiving, his cock hard and pulsing with excitement as he moans for more and to take him harder.";
			say "     His stiff member twitches each time you drive into his frail body, the spurts of precum soon being replaced by shots of cum as you send him over the edge with your rough mistreatment of his body. His stuffed ass clenches down around your cock as he orgasms long and hard. Even as this increases your pleasure, it drives you dig to your claws into the wooden floor as you grip his little legs tighter so you can thrust harder to push into that clamped hole.";
			WaitLineBreak;
			say "     As your climax comes, you unleash your hot seed into his bowels while digging your jaws into his chest. His body shudders, fresh spurts of his cum splattering across you both even as his blood flows from the growing wound. He squirms and struggles weakly, your strong, predator body easily able to restrain your prey. The taste of fresh meat, hot with lust and fear, is delicious to you and tear into him without restraint. Your powerful jaws snap his hollow breastbone and ribs, letting you dig your muzzle right into his chest cavity. Your maw clamps right around the bird's frantically beating heart and [one of]tears it out so you can consume it before his very eyes as the light fades from them[or]crush it between your fangs, spilling his most vital of lifeblood across your tongue[in random order]. His arms fall to the floor and his body hangs limp as you consume his heart. You only pull your spent shaft from his unmoving, lifeless body after you've swallowed down this last mouthful.";
			increase icarussex6_variant by 1;
		else if icarussex6_variant is 2:	[broken leg, gored belly]
			say "     The chase eventually leads up into the attic and you corner the little bird in there. Wide-eyed and short of breath, he backs himself into a corner as you draw nearer. With a sharp cry, you leap atop your passerine prey, digging your claws into him and slamming him against the wall. He shivers and moans as you lift the little fellow with ease and spread his legs wide. Grinding your stiff manhood against his feathery bottom, you are caught up in your wild, instinctual lust and sink your claws into his thighs even as your cock plows into his ass. He releases a pained chirp, but his cock throbs and pulses, full and hard with arousal, the little bird delighting in the painful mistreatment of his body.";
			say "     Safe from prying eyes in the secluded attic, you don't hold back, pounding into him mercilessly. Your feline infection has its prey and is wildly lustful. The blue bird chirps in pain and moans in delight as you thrust into him again and again, battering his well-used ass with your cock and his body against the wall behind him. With your instincts running wild, you dig your fangs into his shoulder and your claws deep into his legs. And while he whimpers and moans from you tearing into him, there are many moans of pleasure mixed in with his cries of pain. His stiff shaft pulses and throbs with excitement as he cries out for you to fuck him harder.";
			WaitLineBreak;
			say "     Seeking to fuck him all the harder, you wrench his legs further up and apart. There comes a tearing pop as you wrench one of his legs from its socket. He cries you loudly and cums messily, spraying his seed onto you both even as his eyes water from the pain. Buried deep inside him now, your cock pulses and throbs, dumping your [Cum Load Size of Player] load into your mutilated prey.";
			say "     When you're done filling him, you drop him unceremoniously to the floor, his leg twisted at an unnatural angle. He struggles to move, his wings flapping weakly. The sight of the injured bird instantly captivates the attention of your predatory instincts. Dropping to the floor with a rumbling purr, your hips twitch and raise up slowly in advance of your pouncing atop him, clawed paws digging into his belly, tearing out his entrails. The scent of his blood and his fear are thick in the air, smelling wonderfully exciting to you. As he starts to grow weak, you bury your muzzle in his open belly, tearing into his flesh for a grisly meal. As the light fades from his eyes, he brushes his hand lightly across your face[one of], his liver lodged in your bloody jaws[or], a chunk of his abdominal muscles dangling between your fangs[or]as you tear a length of his intestines from his gored belly[in random order]. You tear out a few more pieces of your passerine prey before moving back from his lifeless body, swallowing down the final, visceral mouthful.";
			increase icarussex6_variant by 1;
		else:	[shoulder eaten]
			say "     Eventually the chase leads up into the attic and you stalk your way into the secluded room on all fours. Pushing the door closed with your body, you pace from side to side as you edge closer to him. With your eyes locked on the frightened blue bird, you lick your chops and delight in the shiver that visibly runs through your prey. With another growl, you pounce forward with claws out. Your claws dig into his shoulder as you tackle him to the ground.";
			say "     Roughly manhandling the blue birdie, you get him onto his chest. A hard yank on his tail pulls his ass up and puts his oft-abused tailhole on display. You give another hungry growl, this one tinged with lust, and climb atop your prey. Your [Cock of Player] cock presses at the passerine's back door. Wild with arousal from the hunt, you drive your [cock size desc of Player] meat right into him, causing him to release a pained, musical cry.";
			say "     You have no restraint up here in the seclusion of the attic with your private playtoy. With your jaws on his shoulder, you pound away at your prey's quivering asshole. The feline hunter in you has caught its prey and is lustfully celebrating the successful hunt. The blue bird chirps in pain and moans in delight as you take him hard. His body shudders from the wounds and the pounding he's receiving, his cock hard and pulsing with excitement as he moans for more and to take him harder.";
			say "     His stiff member twitches each time you drive into his frail body, the spurts of precum soon being replaced by shots of cum as you send him over the edge with your rough mistreatment of his body. His stuffed ass clenches down around your cock as he orgasms long and hard. Even as this increases your pleasure, it drives you dig to your claws of your hands and feet into the wooden floor so you can thrust harder to push into that clamped hole.";
			WaitLineBreak;
			say "     As your climax comes, you unleash your hot seed into his bowels while digging your jaws into his shoulder. His body shudders and the bird grows hard again even as his blood stains the surrounding feathers red. You continue to chew away at his shoulder, soon digging in deep enough to snap his collar bone. He squirms and struggles weakly as he gives another pained cry even as he climaxes again, adding fresh splatters of seed to the growing red stain beneath him. The taste of fresh meat, hot with lust and fear, is delicious to you and tear into him without restraint, crunching through bone as you consume his flesh.";
			say "     Another hard chomp snaps the top of his arm bone free, leaving the limb to hang at an odd angle from the remaining scraps of flesh. The wounded bird gives a whimpering cry, eyes wide with fear and looking around frantically. As his strength wanes, his body sag down to the floor beneath you. You remain atop him on all fours even after he passes out from blood loss as you continue your grisly feast, still pounding into his ass and cumming as you do. It's only after he's fully gone that you pull your spent shaft from his unmoving, lifeless body and swallow down the last visceral muzzleful of bird meat.";
			now icarussex6_variant is 1;
		say "     Your dark impulses satiated in giving the songbird his perverse release, you lick the blood from your muzzle and your hands. You shift his body into a more comfortable position and drape the sheet over it like a blanket. Were it not for the crimson stains and the coppery scent, one could almost believe he was just resting. And given the microscopic nanites working to restore him, in a way he is. As you leave close the secluded room behind you, you hope your latest assault upon him was not too much to recover from. Still feeling the excitement of the hunt and the kill, your concern is tainted by the longing for the next time you can snare your pretty prey bird.";
		PlayerEat 6;
		decrease Libido of Player by Libido of Player / 5;
	SanLoss 20;
	now Icarus is nowhere;
	now HP of Icarus is 9;
	now ttIcarus is turns;

Part 3 - Icarus Dom Sex

to say icarussex1_dom:		[oral]
	say "     The sight of it makes you lick your lips and when he lands, you're already on your knees and pressing your face into his groin to get at it. He chuckles and grips your head firmly, [one of]slapping his cock against your cheek before letting you take it into your mouth[or]ramming his cock into your open mouth[or]grinding his hard shaft against your face before allowing you to suck on it[at random].";
	say "     The taste of the bird's manhood excites you greatly, making you eager to suck of the dominant bird. Your tongue plays across his firm, warm flesh and laps up the precum dribbling from it. He keeps a firm grip on you, pumping his hips as he thrusts into your open mouth. You can't help but feel aroused at the idea that you're submitting yourself to the small bird's control, allowing him to use you as he pleases. The blue passerine certainly seems pleased as well, grinning as he enjoys his cocksucking fucktoy.";
	if a random chance of 3 in 4 succeeds:
		say "     You run your hands through his soft feathers, caressing the soft, downy feathers covering his ballsack. When his talons dig into your shoulder and his thrusting accelerates, you suck down on him all the harder, eager to please your diminutive master. Your efforts are rewarded when you feel his cock pulsing in your mouth, sending his hot semen across your tongue and down your throat. You swallow it all down dutifully, savoring the lingering taste of it on your palate. He gives your ass a swat and flies back up into the rafters, chirping happily at his virility.";
	else:
		say "     You run your hands through his soft feathers, caressing the soft, downy feathers covering his ballsack. Feeling his approaching climax, you suck down on him all the harder, eager to please your diminutive master, but he roughly pushes your face away. You barely stifle a moan of disappointment as his cock is pulled from your mouth and he starts pumping it hard and fast with one hand while the other holds you in place. He gives a rough groan and digs his talons into your shoulder as he cums. Shot after shot of his sticky semen is splattered across your face. When he's done, he chuckles and wipes his cock across your cheek, telling you that you now look like the horny slut that you are. Your only response, with your confident master's cum on your face, is to start lapping it up with happy moans.";

to say icarussex1_dom_ap:		[oral - avian pred version]
	say "     The sight of it makes you run your tongue along the edge of your beak and when he lands, you're already on your knees and pressing your face into his groin to get at it. He chuckles and grips your head roughly, [one of]slapping his cock firmly against your cheek before forcing it into your mouth[or]ramming his cock into your open mouth while his talons dig into you[or]grinding his hard shaft against your face before pushing it into your mouth to get sucked[at random].";
	say "     The taste of the bird's manhood excites you greatly, making you eager to suck of the smaller, yet dominant, bird. Your tongue plays across his firm, warm flesh and laps up the precum dribbling from it. His claws poke sharply into your flesh, but you don't mind, happily sucking on his shaft as he pumps his hips and thrusts into your open beak. You can't help but feel aroused at the idea that you, the strong predator, are submitting yourself to the small bird's control, allowing him to use you as he pleases. The blue passerine certainly seems pleased as well, grinning as he enjoys his cocksucking fucktoy.";
	if a random chance of 3 in 4 succeeds:
		say "     You run your hands through his soft feathers, caressing the soft, downy feathers covering his ballsack. When his talons scratch deep enough into your shoulder to draw blood and his thrusting accelerates, you suck down on him all the harder, eager to please your diminutive master. Your efforts are rewarded when you feel his cock pulsing in your mouth, sending his hot semen across your tongue and down your throat. You swallow it all down dutifully, savoring the lingering taste of it on your palate. He gives your ass a swat, calls you his slutty predator hen and flies back up into the rafters, chirping happily at his virility.";
	else:
		say "     You run your hands through his soft feathers, caressing the soft, downy feathers covering his ballsack. Feeling his approaching climax, you suck down on him all the harder, eager to please your diminutive master, but he roughly shoves your face away. After giving you a hard slap to the face, he tells you to try harder next time if you want to earn your treat. You give a soft chirp of pained disappointment and promise to do better. As you beg him to give you his load and caresses his hips and sides, he starts pumping his manhood hard and fast with one hand while the other holds you in place, talons digging in. He gives a rough groan and claws deeper into your shoulder as he cums. Shot after shot of his sticky semen is splattered across your face and beak. When he's done, he chuckles and wipes his cock across your cheek, telling you that you now look like the weak, horny slut of a predator that you are. Your only response, with your confident master's cum on your face, is to start lapping it up with needy moans.";

to say icarussex1_dom_fel:		[oral - feline version]
	say "     The sight of it makes you run your tongue along the edge of your muzzle and when he lands, you're already on your knees and pressing your face into his groin to get at it. He chuckles and grips your head roughly, [one of]slapping his cock firmly against your cheek before forcing it into your mouth[or]ramming his cock into your open mouth while his talons dig into you[or]grinding his hard shaft against your face before pushing it into your mouth to get sucked[at random].";
	say "     The taste of the bird's manhood excites you greatly, making you eager to suck of the small, yet dominant, bird. Your tongue plays across his firm, warm flesh and laps up the precum dribbling from it. His claws poke sharply into your flesh, but you don't mind, happily sucking on his shaft as he pumps his hips and thrusts into your open mouth. You can't help but feel aroused at the idea that you, the strong feline, are submitting yourself to the small bird's control, allowing him to use you as he pleases. The blue passerine certainly seems pleased as well, grinning as he enjoys his cocksucking fucktoy.";
	if a random chance of 3 in 4 succeeds:
		say "     You run your hands through his soft feathers, caressing the soft, downy feathers covering his ballsack. When his talons scratch deep enough into your shoulder to draw blood and his thrusting accelerates, you suck down on him all the harder, eager to please your diminutive master. Your efforts are rewarded when you feel his cock pulsing in your mouth, sending his hot semen across your tongue and down your throat. You swallow it all down dutifully, savoring the lingering taste of it on your palate. He gives your ass a swat, calls you his slutty predator kitten and flies back up into the rafters, chirping happily at his virility.";
	else:
		say "     You run your hands through his soft feathers, caressing the soft, downy feathers covering his ballsack. Feeling his approaching climax, you suck down on him all the harder, eager to please your diminutive master, but he roughly shoves your face away. After giving you a hard slap to the face, he tells you to try harder next time if you want to earn your treat. You give a soft mewl of pained disappointment and promise to do better. As you beg him to give you his load and caresses his hips and sides, he starts pumping his manhood hard and fast with one hand while the other holds you in place, talons digging in. He gives a rough groan and claws deeper into your shoulder as he cums. Shot after shot of his sticky semen is splattered across your face and muzzle. When he's done, he chuckles and wipes his cock across your cheek, telling you that you now look like the weak, horny slut of a predator that you are. Your only response, with your confident master's cum on your face, is to start grooming it off with tongue and paw as you purr softly.";

to say icarussex2_dom:		[m/f]
	setmonster "Blue Chaffinch";
	choose row MonsterID from the Table of Random Critters;
	if a random chance of 1 in 3 succeeds:
		say "     Your desire for it has you stretch out on one of the tables, longing for him to take you again. He grins as he sees your juicy cunt already on display for him and [one of]leans in to take a quick lick[or]gives your ass a possessive squeeze[or]nips at your thigh as he rubs his fingers across your pussy[at random]. After some light teasing of his slutty pet, he brings his stiff cock into position, lining it up with your needy hole.";
		say "     Wanting no more delays, he thrusts firmly into you, driving [if Cunt Depth of Player > 7]his full length into you in one thrust[else]his cock to the full depths of your vagina in one thrust[end if], causing you to moan and gasp at his overzealous penetration. His talons dig into your rump a little as he keeps a firm grip on your ass while fucking you. You grind your hips back into every thrust he makes[if Breast Size of Player > 0] while you shamelessly play with your breasts[end if], proving yourself to be the wanton slut for his cock that he reminds you again you are. Despite your being stronger than him, something about letting the little fellow dominate you so thoroughly is very arousing to you, leaving you unable to resist being his slutty plaything.";
		say "     You moan and beg for more as his talons dig deeper into you and his avian cock pounds into you harder, the pain only making the pleasure you feel from each thrust all the better. As his climax approaches, his wings flap frantically as he plows into you[if Cunt Depth of Player < 7], trying painfully hard to make you take those last few inches[else], slamming his feathered groin against yours[end if], his cum-filled balls tapping at your taint. With a triumphant, musical cry, he thrusts into you one last time and starts shooting his avian semen into you, seeding your needy womb. Your cunt clenches down around his shaft, milking and squeezing at it as you cum. After draining his load, he pulls out and gives your ass a swat, ordering you to spread out across the table. He then flies back up to the rafters, looking down at your well-fucked body on display for him with a smug grin on his blue-gray beak.";
		NPCSexAftermath Player receives "PussyFuck" from Icarus;
	else if a random chance of 1 in 2 succeeds:
		say "     Your eagerness for it has you bending over, your wet pussy already on display for him when he lands. He [one of]leans in and nips firmly at your hip with his sharp beak[or]gives your rump a hard swat, making you moan[or]leans in and runs his tongue across your dripping folds[at random] before moving in to mount you.";
		say "     After teasing you with a few brushes of his cock across your [cunt size desc of Player] pussy, getting you to moan your need to be fucked again, he chirps his pleasure at your submission and thrusts into you hard. He keeps a firm grip on your ass, claws digging in a little as he drives his seven inch shaft into you over and over again. You push back into every thrust he makes, proving yourself to be the wanton slut for his cock that he reminds you again you are. There's just something about giving up control to the aggressive little bird that really turns you on to the point that you can't resist. His rough treatment of your body is exciting as well, his clear power over you arousing you both greatly.";
		say "     You moan and whimper beneath him as he bites firmly onto your shoulder and grips your legs with his taloned feet, the pain only enhancing the pleasure running through you as he pounds harder and harder. His wings flap frantically as he plows into you zealously, soon cumming as he sends shot after shot of his avian cum into your hot, needy womb. You can feel his semen flowing into you, seeking to impregnate you. Your pussy quivers around the throbbing, pulsing rod, your own orgasm making you cry out. When he's done, he dismounts from you and takes a moment to look over his handiwork in the form of his load leaking from your well-fucked hole before flying back up to the rafters.";
		NPCSexAftermath Player receives "PussyFuck" from Icarus;
	else:
		say "     Your arousal grows as you eye the stiffening object of your desires and strip down quickly. You spread yourself on the floor and start fingering your pussy, longing to replace those digits with the aggressive passerine's manhood. He struts around you, looking you over and pumping a few spurts of pre across your [bodytype of Player] body.";
		say "     Having feasted his eyes on his lustful slut's body, he moves atop your [bodydesc of Player] form and lines up his cock. Wasting little time, he thrusts confidently into you while his taloned hands grab your [if Breast Size of Player > 0][breast size desc of Player] breasts[else]hips[end if]. His seven inch shaft pumps steadily into your wet, needy cunt as the chaffinch chuckles.";
		say "     'Such a horny slut you make, spread and moaning for your birdie lover. You look much better this way,' he says between thrusts, his hands running over your body. His words and his touch make you feel both demeaned and sexy all at once, pleased to draw the confident avian's lecherous interest and lustful for more. Your body responds to your growing arousal, causing you to pant and moan as your pleasure builds.";
		say "     You moan and whimper beneath him as he grips your ass firmly, digging his claws in as he thrusts hard, jabbing his full length into you just as he starts to cum. The pain of his talons gets muddled with the pleasure you feel from his pulsing rod and the hot spurts of semen coming from it. You cry out in ecstasy, cunt spasming around his cock, drawing his avian seed into your womb. You grip his hips, keeping him buried inside you, wanting to get every last drop.";
		say "     'Such a good, needy hen. Eager to get filled by your master's eggs, are you?' he says with a smirk on his beak. He rubs his hand across your belly as he pulls out. You sigh softly at his touch, enjoying the warm knowledge that his virile load's nestled deep inside you. The thought of being knocked up by him, made into his breeding hen, is very exciting to you at this moment [if Player is impreg_able]and you hope to have a clutch growing in you soon[else if Player is impreg_ok]and you long to get him to breed you again when you're ready[else]and you find yourself longing to find a means to let that happen[end if].";
		NPCSexAftermath Player receives "PussyFuck" from Icarus;
	if HP of Icarus is 54, now HP of Icarus is 55;
	if HP of Icarus is 53, now HP of Icarus is 54;
	if HP of Icarus is 51, now HP of Icarus is 52;

to say icarussex2_dom_ap:		[m/f - avian pred version]
	setmonster "Blue Chaffinch";
	choose row MonsterID from the Table of Random Critters;
	if a random chance of 1 in 3 succeeds:
		say "     Your desire for it has you stretch out on one of the tables, longing for him to take you again. He grins as he sees your juicy cunt already on display for him and [one of]roughly pushes your legs further apart before taking a quick lick[or]digs his talons into your ass as he gives it a possessive squeeze[or]bites firmly on your thigh, drawing blood, as he rubs his fingers across your pussy[at random]. After some rough teasing of his slutty pet, he brings his stiff cock into position, lining it up with your needy hole.";
		say "     Wanting no more delays, he digs his talons into your thighs and thrusts firmly into you, driving [if Cunt Depth of Player > 7]his full length into you in one thrust[else]his cock to the full depths of your vagina in one thrust[end if], causing you to moan and gasp as his overzealous penetration. His talons claw into your rump as he keeps a firm grip on your ass while fucking you. You grind your hips back into every thrust he makes[if Breast Size of Player > 0] while you shamelessly play with your breasts[end if], proving yourself to be the wanton slut for his cock that he reminds you again you are. Despite being a strong, predatory bird, something about letting the little passerine dominate you so thoroughly is very arousing to you, leaving you unable to resist being his slutty plaything.";
		say "     You moan and beg for more as his talons dig deep furrows into you and his avian cock pounds into you harder, the pain only making the pleasure you feel from each thrust all the better. As his climax approaches, his wings flap frantically as he plows into you[if Cunt Depth of Player < 7], trying painfully hard to make you take those last few inches[else], slamming his feathered groin against yours[end if], his cum-filled balls tapping at your taint. With a triumphant, musical cry, he thrusts into you one last time and starts shooting his avian semen into you, seeding your needy womb. Your cunt clenches down around his shaft, milking and squeezing at it as you cum. After draining his load, he pulls out and gives your ass a hard swat, ordering you to spread out across the table. He then flies back up to the rafters, looking down at the well-fucked body of his slutty predator hen on display for him with a smug grin on his blue-gray beak.";
		NPCSexAftermath Player receives "PussyFuck" from Icarus;
	else if a random chance of 1 in 2 succeeds:
		say "     Your eagerness for it has you bending over, your wet pussy already on display for him when he lands. He [one of]leans in and nips painfully hard at your hip with his sharp beak[or]gives your rump a hard swat, digging his talons into you and making you moan[or]claws furrows along your outer thighs as leans in and runs his tongue across your dripping folds[at random] before moving in to mount you.";
		say "     After teasing you with a few brushes of his cock across your [cunt size desc of Player] pussy, getting you to moan your need to be fucked again, he chuckles darkly at the submission of the larger predator bird and thrusts into you hard. He keeps a firm grip on your ass, claws digging in painfully as he drives his seven inch shaft into you over and over again. You push back into every thrust he makes, proving yourself to be the wanton slut for his cock that he laughingly reminds you again you are. There's just something about giving up control to the aggressive little bird that really turns you on to the point that you can't resist. His harsh treatment of your body is exciting as well, his clear power over you arousing you both greatly.";
		say "     You moan and whimper beneath him as he bites sharply into your neck and grips your legs with his taloned feet. The pain and the scent of your blood only enhances the pleasure running through you as he pounds harder and harder, further cementing the smaller bird's power over you. His wings flap frantically as he plows into you zealously, soon cumming as he sends shot after shot of his avian cum into your hot, needy womb. You can feel his semen flowing into you, seeking to impregnate you. Your pussy quivers around the throbbing, pulsing rod, your own orgasm making you cry out. When he's done, he dismounts from his bird of prey slut and takes a moment to look over his handiwork in the form of his load leaking from your well-fucked hole before flying back up to the rafters.";
		NPCSexAftermath Player receives "PussyFuck" from Icarus;
	else:
		say "     Your arousal grows as you eye the stiffening object of your desires and strip down quickly. You spread yourself on the floor and start fingering your pussy, longing to replace those digits with the aggressive passerine's manhood. He struts around you, looking you over with a harsh grin on his beak. He teases you for being such an obvious slut, pumping a few spurts of pre across your [bodytype of Player] body.";
		say "     Having feasted his eyes on his lustful slut's body, he moves atop your [bodydesc of Player] form and lines up his cock. Wasting little time, he thrusts confidently into you while his taloned hands grab your [if Breast Size of Player > 0][breast size desc of Player] breasts[else]hips[end if], claws biting into you as he pulls you harshly onto his penis. His seven inch shaft pumps steadily into your wet, needy cunt as the chaffinch chuckles.";
		say "     'Such a horny slut of a predator you make, spread and moaning for your passerine lover. It's good that you know where you belong,' he says between thrusts, his hands running over your body possessively. His words and his touch make you feel both demeaned and sexy all at once, pleased to draw the confident avian's lecherous interest and lustful for more. Your bird of prey body responds to your growing arousal, causing you to pant and moan as your pleasure builds.";
		say "     You moan and whimper beneath him as he grips your ass firmly, scratching his claws across your flesh as he thrusts hard, jabbing his full length into you just as he starts to cum. The pain of his talons gets muddled with the pleasure you feel from his pulsing rod and the hot spurts of semen coming from it. You cry out in ecstasy, cunt spasming around his cock, drawing his avian seed into your womb. You grip his hips, keeping him buried inside you, wanting to get every last drop.";
		say "     'Such a good, needy hen. Eager to get filled by your master's eggs, are you?' he says with a smirk on his beak. He rubs his hand across your belly as he pulls out. You sigh softly at his touch, enjoying the warm knowledge that his virile load's nestled deep inside you. The thought of being a bird of prey knocked up by a small songbird and made into his breeding hen, is very exciting to you at this moment [if Player is impreg_able]and you hope to have a clutch growing in you soon[else if Player is impreg_ok]and you long to get him to breed you again when you're ready[else]and you find yourself longing to find a means to let that happen[end if].";
		NPCSexAftermath Player receives "PussyFuck" from Icarus;
	if HP of Icarus is 54, now HP of Icarus is 55;
	if HP of Icarus is 53, now HP of Icarus is 54;
	if HP of Icarus is 51, now HP of Icarus is 52;

to say icarussex2_dom_fel:		[m/f - feline version]
	setmonster "Blue Chaffinch";
	choose row MonsterID from the Table of Random Critters;
	if a random chance of 1 in 3 succeeds:
		say "     Your desire for it has you stretch out on one of the tables, longing for him to take you again. He grins as he sees your juicy cunt already on display for him and [one of]roughly pushes your legs further apart before taking a quick lick[or]digs his talons into your ass as he gives it a possessive squeeze[or]bites firmly on your thigh, drawing blood, as he rubs his fingers across your pussy[at random]. After some rough teasing of his slutty kitty, he brings his stiff cock into position, lining it up with your needy hole.";
		say "     Wanting no more delays, he digs his talons into your thighs and thrusts firmly into you, driving [if Cunt Depth of Player > 7]his full length into you in one thrust[else]his cock to the full depths of your vagina in one thrust[end if], causing you to mrowl and gasp as his overzealous penetration. His talons claw into your rump as he keeps a firm grip on your ass while fucking you. You grind your hips back into every thrust he makes[if Breast Size of Player > 0] while you shamelessly play with your breasts[end if], proving yourself to be the wanton slut for his cock that he reminds you again you are. Despite being a strong, predatory feline, something about letting the little passerine dominate you so thoroughly is very arousing to you, leaving you unable to resist being his slutty plaything.";
		say "     You mewl and beg for more as his talons dig deep furrows into you and his avian cock pounds into you harder, the pain only making the pleasure you feel from each thrust all the better. As his climax approaches, his wings flap frantically as he plows into you[if Cunt Depth of Player < 7], trying painfully hard to make you take those last few inches[else], slamming his feathered groin against yours[end if], his cum-filled balls tapping at your taint. With a triumphant, musical cry, he thrusts into you one last time and starts shooting his avian semen into you, seeding your needy womb. Your cunt clenches down around his shaft, milking and squeezing at it as you cum. After draining his load, he pulls out and gives your ass a hard swat, ordering you to spread out across the table. He then flies back up to the rafters, looking down at the well-fucked body of his slutty predator kitten on display for him with a smug grin on his blue-gray beak.";
		NPCSexAftermath Player receives "PussyFuck" from Icarus;
	else if a random chance of 1 in 2 succeeds:
		say "     Your eagerness for it has you bending over, your wet pussy already on display for him when he lands. He [one of]leans in and nips painfully hard at your hip with his sharp beak[or]gives your rump a hard swat, digging his talons into you and making you mewl[or]claws furrows along your outer thighs as leans in and runs his tongue across your dripping folds[at random] before moving in to mount you.";
		say "     After teasing you with a few brushes of his cock across your [cunt size desc of Player] pussy, getting you to mewl your need to be fucked again, he chuckles darkly at the submission of the predatory feline and thrusts into you hard. He keeps a firm grip on your ass, claws digging in painfully as he drives his seven inch shaft into you over and over again. You push back into every thrust he makes, proving yourself to be the wanton slut for his cock that he laughingly reminds you again you are. There's just something about giving up control to the aggressive little bird that really turns you on to the point that you can't resist. His harsh treatment of your body is exciting as well, his clear power over you arousing you both greatly.";
		say "     You mewl and whimper beneath him as he bites sharply into your neck and grips your legs with his taloned feet. The pain and the scent of your blood only enhances the pleasure running through you as he pounds harder and harder, further cementing the smaller bird's power over you. His wings flap frantically as he plows into you zealously, soon cumming as he sends shot after shot of his avian cum into your hot, needy womb. You can feel his semen flowing into you, seeking to impregnate you. Your pussy quivers around the throbbing, pulsing rod, your own orgasm making you mrowl. When he's done, he dismounts from his feline slut and takes a moment to look over his handiwork in the form of his load leaking from your well-fucked hole before flying back up to the rafters.";
		NPCSexAftermath Player receives "PussyFuck" from Icarus;
	else:
		say "     Your arousal grows as you eye the stiffening object of your desires and strip down quickly. You spread yourself on the floor and start fingering your pussy, longing to replace those digits with the aggressive passerine's manhood. He struts around you, looking you over with a harsh grin on his beak. He teases you for being such an obvious slut, pumping a few spurts of pre across your [bodytype of Player] body.";
		say "     Having feasted his eyes on his lustful slut's body, he moves atop your [bodydesc of Player] form and lines up his cock. Wasting little time, he thrusts confidently into you while his taloned hands grab your [if Breast Size of Player > 0][breast size desc of Player] breasts[else]hips[end if], claws biting into you as he pulls you harshly onto his penis. His seven-inch shaft pumps steadily into your wet, needy cunt as the chaffinch chuckles.";
		say "     'Such a horny slut of a kitten you make, spread and moaning for your birdie lover. It's good that you know where you belong,' he says between thrusts, his hands running over your body possessively. His words and his touch make you feel both demeaned and sexy all at once, pleased to draw the confident avian's lecherous interest and lustful for more. Your feline body responds to your growing arousal, causing you to mewl and moan as your pleasure builds.";
		say "     You mewl and whimper beneath him as he grips your ass firmly, scratching his claws across your flesh as he thrusts hard, jabbing his full length into you just as he starts to cum. The pain of his talons gets muddled with the pleasure you feel from his pulsing rod and the hot spurts of semen coming from it. You cry out in ecstasy, cunt spasming around his cock, drawing his avian seed into your womb. You grip his hips, keeping him buried inside you, wanting to get every last drop.";
		say "     'Such a good, needy kitten. Eager to get filled by your master's eggs, are you?' he says with a smirk on his beak. He rubs his hand across your belly as he pulls out. You purr softly at his touch, enjoying the warm knowledge that his virile load's nestled deep inside you. The thought of being a cat knocked up by a small songbird and made into his breeding kitten, is very exciting to you at this moment [if Player is impreg_able]and you hope to have a clutch growing in you soon[else if Player is impreg_ok]and you long to get him to breed you again when you're ready[else]and you find yourself longing to find a means to let that happen[end if].";
		NPCSexAftermath Player receives "PussyFuck" from Icarus;
	if HP of Icarus is 54, now HP of Icarus is 55;
	if HP of Icarus is 53, now HP of Icarus is 54;
	if HP of Icarus is 51, now HP of Icarus is 52;

to say icarussex3_dom:		[m/m]
	setmonster "Blue Chaffinch";
	choose row MonsterID from the Table of Random Critters;
	if a random chance of 1 in 3 succeeds:
		say "     Your desire for it has you stretch out on one of the tables, longing for him to take you again. He grins as he sees you on it with your legs raised and spread for him, your ass and its crinkled hole on display for him. He [one of]leans in and gives your ass a bruising nip[or]gives your ass a possessive squeeze[or]slaps his cock firmly across your [if a random chance of 1 in 2 succeeds and Cock Length of Player > 7]larger shaft[else if a random chance of 1 in 2 succeeds and Cock Length of Player < 7]smaller shaft[else if a random chance of 1 in 2 succeeds and Cock Length of Player is 7]shaft[else]balls[end if][at random] before bringing his avian erection into position. He lines it up with your needy hole with a smirk on his beak.";
		say "     Wanting no more delays, he thrusts firmly into you, driving his full length into you in one painful thrust, causing you to moan and gasp as his overzealous penetration. His talons dig into your rump a little as he keeps a firm grip on your ass while fucking you. You grind your hips back into every thrust he makes while you shamelessly stroke your [Cock of Player] penis[esmn][if Breast Size of Player > 0] and squeeze your breasts[end if], proving yourself to be the wanton slut for his cock that he reminds you again you are. Despite your being stronger than him, something about letting the little fellow dominate you so thoroughly is very arousing to you, leaving you unable to resist being his slutty plaything.";
		say "     You moan and beg for more as his talons dig deeper into you and his avian cock pounds into you harder, the pain only making the pleasure you feel from each thrust all the better. As his climax approaches, his wings flap frantically as he plows into you, slamming his feathered groin against yours, his cum-filled balls slapping your ass. As you can see his climax coming, he pulls out suddenly and strokes his throbbing member, spraying his semen across you with a triumphant, musical cry. You can't help but moan in disappointment as he pulls out, but the sight of his sticky seed shooting onto your cock[smn] and chest is wonderful. You pump at your shaft[smn] eagerly, soon adding your own [Cum Load Size of Player] load to the mess staining your [bodydesc of Player] body. After giving your rear a swat, he orders you to spread out across the table. He then flies back up to the rafters, looking down at your well-fucked, cum-stained body on display for him with a smug grin on his blue-gray beak.";
	else if a random chance of 1 in 2 succeeds:
		say "     Your eagerness for it has you bending over, your ass already on display for him when he lands. He [one of]leans in and nips firmly at your hip with his sharp beak[or]gives your rump a hard swat, making you moan[or]slides a pair of slick fingers into your butt[at random] before moving in to mount you.";
		say "     After teasing you with a few brushes of his cock across your pucker, getting you to moan your need to be fucked again, he chirps his pleasure at your submission and thrusts into you hard. He keeps a firm grip on your ass, claws digging in a little as he drives his seven inch shaft into you over and over again. You push back into every thrust he makes, proving yourself to be the wanton slut for his cock that he reminds you again you are. There's just something about giving up control to the aggressive little bird that really turns you on to the point that you can't resist. His rough treatment of your body is exciting as well, his clear power over you arousing you both greatly.";
		say "     You moan and whimper beneath him as he bites firmly onto your shoulder and grips your legs with his taloned feet, the pain only enhancing the pleasure running through you as he pounds harder and harder. His wings flap frantically as he plows into you zealously, soon cumming as he sends shot after shot of his avian cum into your squeezing bowels. You can feel his semen flowing into you as his glans batters your prostate. Your anus quivers around the throbbing, pulsing rod, your own orgasm making you cry out. When he's done, he dismounts from you and takes a moment to look over his handiwork in the form of his load leaking from your well-fucked hole before flying back up to the rafters.";
		NPCSexAftermath Player receives "AssFuck" from Icarus;
	else:
		say "     Your arousal grows as you eye the stiffening object of your desires and strip down quickly. You lay sideways on the floor, one thigh raised to give your avian stud a good view of your ready ass. You run a finger between your cheeks and tease at your crinkled hole, longing to have that digit replaced with the aggressive passerine's manhood. He struts around you, looking you over and pumping a few spurts of pre across your [bodytype of Player] body.";
		say "     Having feasted his eyes on his lustful slut's body, he moves into position and lines up his cock. Wasting little time, he thrusts confidently into you while his taloned hands grab your raised leg. He grips you tightly as he pumps his seven inch shaft steadily into your tight, needy asshole while the chaffinch chuckles.";
		say "     'Such a horny slut you make, spread and moaning for your birdie lover. You look much better this way,' he says between thrusts, his hands running over your [bodydesc of Player] body. His words and his touch make you feel both demeaned and sexy all at once, pleased to draw the confident avian's lecherous interest and lustful for more. Your body responds to your growing arousal, causing you to pant and moan as your pleasure builds.";
		say "     You moan and whimper beneath him as he grips your leg firmly, digging his claws in as he thrusts hard, jabbing his full length into you just as he starts to cum. The pain of his talons gets muddled with the pleasure you feel from his pulsing rod and the hot spurts of semen coming from it. You cry out in ecstasy, ass squeezing around his cock, milking him for as much avian seed as he'll give. You grip his hips, keeping him buried inside you, wanting to get every last drop.";
		say "     'Such a good, needy hen. You're much better suited as the bottom in our relationship, aren't you?' he says with a smirk on his beak. He gives your ass a squeeze as he pulls out. You moan softly at his touch, enjoying the warm knowledge that his virile load's nestled deep inside you. The thought that you're better off as the birdie's slutty bottom lingers in your mind, making you look forward to submitting to the confident male again soon.";
		NPCSexAftermath Player receives "AssFuck" from Icarus;
	if HP of Icarus is 54, now HP of Icarus is 55;
	if HP of Icarus is 53, now HP of Icarus is 54;
	if HP of Icarus is 51, now HP of Icarus is 52;

to say icarussex3_dom_ap:		[m/m - avian pred version]
	setmonster "Blue Chaffinch";
	choose row MonsterID from the Table of Random Critters;
	if a random chance of 1 in 3 succeeds:
		say "     Your desire for it has you stretch out on one of the tables, longing for him to take you again. He grins as he sees you on it with your legs raised and spread for him, your ass and its crinkled hole on display for him. He [one of]leans in and gives your ass several bruising nips[or]digs his talons into your ass as he gives it a possessive squeeze[or]slaps his cock firmly across your [if Cock Length of Player > 7]larger shaft[else if Cock Length of Player < 7]smaller shaft[else]shaft[end if] while giving your balls a painful squeeze[at random] before bringing his avian erection into position. Having reasserted his dominance over his slutty bird of prey, he lines it up with your needy hole with a smirk on his beak.";
		say "     Wanting no more delays, he thrusts firmly into you, driving his full length into you in one painful thrust, causing you to moan and gasp as his overzealous penetration. His talons claw into your rump as he keeps a firm grip on your ass while fucking you. You grind your hips back into every thrust he makes while you shamelessly stroke your [Cock of Player] penis[esmn][if Breast Size of Player > 0] and squeeze your breasts[end if], proving yourself to be the wanton slut for his cock that he reminds you again you are. Despite your being a strong, predatory bird, something about letting the little passerine dominate you so thoroughly is very arousing to you, leaving you unable to resist being his slutty plaything.";
		say "     You moan and beg for more as his talons dig deep furrows into you and his avian cock pounds into you harder, the pain only making the pleasure you feel from each thrust all the better. As his climax approaches, his wings flap frantically as he plows into you, slamming his feathered groin against yours, his cum-filled balls slapping your ass. As you can see his climax coming, he pulls out suddenly and strokes his throbbing member, spraying his semen across you with a triumphant, musical cry. You can't help but moan in disappointment as he pulls out, but the sight of his sticky seed shooting onto your cock[smn] and chest is wonderful. You pump at your shaft[smn] eagerly, soon adding your own [Cum Load Size of Player] load to the mess staining your [bodydesc of Player] body. After giving your rear a hard swat, he orders you to spread out across the table. He then flies back up to the rafters, looking down at the well-fucked, cum-stained body of his slutty predator hen on display for him with a smug grin on his blue-gray beak.";
	else if a random chance of 1 in 2 succeeds:
		say "     Your eagerness for it has you bending over, your ass already on display for him when he lands. He [one of]leans in and nips painfully hard at your hip with his sharp beak[or]gives your rump a hard swat, digging his talons into you and making you moan[or]forces a pair of slick fingers into your butt[at random] before moving in to mount you.";
		say "     After teasing you with a few brushes of his cock across your pucker, getting you to moan your need to be fucked again, he chuckles darkly at the submission of the larger predator bird and thrusts into you hard. He keeps a firm grip on your ass, claws digging in painfully as he drives his seven inch shaft into you over and over again. You push back into every thrust he makes, proving yourself to be the wanton slut for his cock that he laughingly reminds you again you are. There's just something about giving up control to the aggressive little bird that really turns you on to the point that you can't resist. His harsh treatment of your body is exciting as well, his clear power over you arousing you both greatly.";
		say "     You moan and whimper beneath him as he bites sharply into your neck and grips your legs with his taloned feet, the pain and scent of your blood only enhancing the pleasure running through you as he pounds harder and harder, further cementing the smaller bird's power over you. His wings flap frantically as he plows into you zealously, soon cumming as he sends shot after shot of his avian cum into your squeezing bowels. You can feel his semen flowing into you as his glans batters your prostate. Your anus quivers around the throbbing, pulsing rod, your own orgasm making you cry out. When he's done, he dismounts from his bird of prey slut and takes a moment to look over his handiwork in the form of his load leaking from your well-fucked hole before flying back up to the rafters.";
		NPCSexAftermath Player receives "AssFuck" from Icarus;
	else:
		say "     Your arousal grows as you eye the stiffening object of your desires and strip down quickly. You lay sideways on the floor, one thigh raised to give your avian stud a good view of your ready ass. You run a finger between your cheeks and tease at your crinkled hole, longing to have that digit replaced with the aggressive passerine's manhood. He struts around you, looking you over with a harsh grin on his beak. He teases you for being such an obvious slut, pumping a few spurts of pre across your [bodytype of Player] body.";
		say "     Having feasted his eyes on his lustful slut's body, he moves into position and lines up his cock. Wasting little time, he thrusts confidently into you while his taloned hands grab your raised leg, claws biting into you as he pulls your harshly onto his penis. He talons keeps a piercing grip on you as he pumps his seven inch shaft steadily into your tight, needy asshole while the chaffinch chuckles.";
		say "     'Such a horny slut of a predator you make, spread and moaning for your passerine lover. It's good that you know where you belong,' he says between thrusts, his hands running over your [bodydesc of Player] body possessively. His words and his touch make you feel both demeaned and sexy all at once, pleased to draw the confident avian's lecherous interest and lustful for more. Your bird of prey body responds to your growing arousal, causing you to pant and moan as your pleasure builds.";
		say "     You moan and whimper beneath him as he grips your leg firmly, scratching his claws in as he thrusts hard, jabbing his full length into you just as he starts to cum. The pain of his talons gets muddled with the pleasure you feel from his pulsing rod and the hot spurts of semen coming from it. You cry out in ecstasy, ass squeezing around his cock, milking him for as much avian seed as he'll give. You grip his hips, keeping him buried inside you, wanting to get every last drop.";
		say "     'Such a good, needy hen. You're much better suited as the bottom in our relationship, aren't you?' he says with a smirk on his beak. He gives your ass a final, hard squeeze as he pulls out suddenly. You moan softly at his touch, enjoying the warm knowledge that his virile load's nestled deep inside you. The thought that you're better off being the smaller songbird's bird of prey bottom lingers in your mind, making you look forward to submitting to the confident male again soon.";
	if HP of Icarus is 54, now HP of Icarus is 55;
	if HP of Icarus is 53, now HP of Icarus is 54;
	if HP of Icarus is 51, now HP of Icarus is 52;


to say icarussex3_dom_fel:		[m/m - feline version]
	setmonster "Blue Chaffinch";
	choose row MonsterID from the Table of Random Critters;
	if a random chance of 1 in 3 succeeds:
		say "     Your desire for it has you stretch out on one of the tables, longing for him to take you again. He grins as he sees you on it with your legs raised and spread for him, your ass and its crinkled hole on display for him. He [one of]leans in and gives your ass several bruising nips[or]digs his talons into your ass as he gives it a possessive squeeze[or]slaps his cock firmly across your [if Cock Length of Player > 7]larger shaft[else if Cock Length of Player < 7]smaller shaft[else]shaft[end if] while giving your balls a painful squeeze[at random] before bringing his avian erection into position. Having reasserted his dominance over his slutty feline, he lines it up with your needy hole with a smirk on his beak.";
		say "     Wanting no more delays, he thrusts firmly into you, driving his full length into you in one painful thrust, causing you to mrowl and gasp as his overzealous penetration. His talons claw into your rump as he keeps a firm grip on your ass while fucking you. You grind your hips back into every thrust he makes while you shamelessly stroke your [Cock of Player] penis[esmn][if Breast Size of Player > 0] and squeeze your breasts[end if], proving yourself to be the wanton slut for his cock that he reminds you again you are. Despite your being a strong feline, something about letting the little passerine dominate you so thoroughly is very arousing to you, leaving you unable to resist being his slutty plaything.";
		say "     You mewl and beg for more as his talons dig deep furrows into you and his avian cock pounds into you harder, the pain only making the pleasure you feel from each thrust all the better. As his climax approaches, his wings flap frantically as he plows into you, slamming his feathered groin against yours, his cum-filled balls slapping your ass. As you can see his climax coming, he pulls out suddenly and strokes his throbbing member, spraying his semen across you with a triumphant, musical cry. You can't help but mewl in disappointment as he pulls out, but the sight of his sticky seed shooting onto your cock[smn] and chest is wonderful. You pump at your shaft[smn] eagerly, soon adding your own [Cum Load Size of Player] load to the mess staining your [bodydesc of Player] body. After giving your rear a hard swat, he orders you to spread out across the table. He then flies back up to the rafters, looking down at the well-fucked, cum-stained body of his slutty kitten on display for him with a smug grin on his blue-gray beak.";
	else if a random chance of 1 in 2 succeeds:
		say "     Your eagerness for it has you bending over, your ass already on display for him when he lands. He [one of]leans in and nips painfully hard at your hip with his sharp beak[or]gives your rump a hard swat, digging his talons into you and making you mewl[or]forces a pair of slick fingers into your butt[at random] before moving in to mount you.";
		say "     After teasing you with a few brushes of his cock across your pucker, getting you to mewl your need to be fucked again, he chuckles darkly at the submission of the powerful feline and thrusts into you hard. He keeps a firm grip on your ass, claws digging in painfully as he drives his seven-inch shaft into you over and over again. You push back into every thrust he makes, proving yourself to be the wanton slut for his cock that he laughingly reminds you again you are. There's just something about giving up control to the aggressive little bird that really turns you on to the point that you can't resist. His harsh treatment of your body is exciting as well, his clear power over you arousing you both greatly.";
		say "     You mewl and whimper beneath him as he bites sharply into your neck and grips your legs with his taloned feet, the pain and scent of your blood only enhancing the pleasure running through you as he pounds harder and harder, further cementing the small bird's power over you. His wings flap frantically as he plows into you zealously, soon cumming as he sends shot after shot of his avian cum into your squeezing bowels. You can feel his semen flowing into you as his glans batters your prostate. Your anus quivers around the throbbing, pulsing rod, your own orgasm making you cry out. When he's done, he dismounts from his feline slut and takes a moment to look over his handiwork in the form of his load leaking from your well-fucked hole before flying back up to the rafters.";
		NPCSexAftermath Player receives "AssFuck" from Icarus;
	else:
		say "     Your arousal grows as you eye the stiffening object of your desires and strip down quickly. You lay sideways on the floor, one thigh raised to give your avian stud a good view of your ready ass. You run a finger between your cheeks and tease at your crinkled hole, longing to have that digit replaced with the aggressive passerine's manhood. He struts around you, looking you over with a harsh grin on his beak. He teases you for being such an obvious slut, pumping a few spurts of pre across your [bodytype of Player] body.";
		say "     Having feasted his eyes on his lustful slut's body, he moves into position and lines up his cock. Wasting little time, he thrusts confidently into you while his taloned hands grab your raised leg, claws biting into you as he pulls your harshly onto his penis. He talons keeps a piercing grip on you as he pumps his seven-inch shaft steadily into your tight, needy asshole while the chaffinch chuckles.";
		say "     'Such a horny slut of a kitten you make, spread and moaning for your birdie lover. It's good that you know where you belong,' he says between thrusts, his hands running over your [bodydesc of Player] body possessively. His words and his touch make you feel both demeaned and sexy all at once, pleased to draw the confident avian's lecherous interest and lustful for more. Your feline body responds to your growing arousal, causing you to mewl and moan as your pleasure builds.";
		say "     You mewl and whimper beneath him as he grips your leg firmly, scratching his claws in as he thrusts hard, jabbing his full length into you just as he starts to cum. The pain of his talons gets muddled with the pleasure you feel from his pulsing rod and the hot spurts of semen coming from it. You mrowl in ecstasy, ass squeezing around his cock, milking him for as much avian seed as he'll give. You grip his hips, keeping him buried inside you, wanting to get every last drop.";
		say "     'Such a good, needy kitty. You're much better suited as the bottom in our relationship, aren't you?' he says with a smirk on his beak. He gives your ass a final, hard squeeze as he pulls out suddenly. You mewl softly at his touch, enjoying the warm knowledge that his virile load's nestled deep inside you. The thought that you're better off being the small songbird's feline bottom lingers in your mind, making you look forward to submitting to the confident male again soon.";
	if HP of Icarus is 54, now HP of Icarus is 55;
	if HP of Icarus is 53, now HP of Icarus is 54;
	if HP of Icarus is 51, now HP of Icarus is 52;


to say icarussex4_dom:	[footplay]
	say "     You move to present yourself on all fours for him, but he lands beside you, one taloned foot digging into your side. Those sharp talons poke painfully into you before he gives you a hard push, shoving you over onto your back.";
	if HP of Icarus is 52:
		say "     For a moment, you're unsure what your master wants, but he then presses that foot down onto your face. 'Show your master some respect and start licking, you little slut,' he says, grinding his bird-like foot across your face. You";
	else:
		say "     Knowing what your master wants of you, you";
	say " nuzzle at it and run your tongue across his long, scaled toes. The taste is a little strong, but you keep licking in your eagerness to please him, feeling a little embarrassed at being made to do it so easily. But rather than upsetting you, this only turns you on all the more, the small passerine's aggressive confidence only making you more lustful for him. And seeing this reaction, he chuckles louder.";
	say "     You keep licking and sucking on his toes, smiling as you watch him start to stroke his stiff member. When your attention starts to wander from your task too much, he [one of]gives you a hard poke with his footclaws[or]digs his talons into you roughly[or]grinds his foot down harder[or]shifts his foot down to give your neck a harsh squeeze[at random], returning your focus to the task at hand. You rub your hands over his foot as well, caressing and massaging it as you tonguebathe across its scaley hide. Eventually, he pulls his foot away and aims his pulsing, spurting cock at you. Splatter after splatter of avian seed splashes onto you, further marking you as his slutty plaything. You lay there for a while, sticky with bird semen and smelling of your strong, avian lover.";
	if HP of Icarus is 52, now HP of Icarus is 53;

to say icarussex4_dom_ap:	[footplay - avian pred version]
	say "     You move to present yourself on all fours for him, but he lands beside you, one taloned foot digging roughly into your side. Those sharp talons leave red scratches before he gives you a hard push, shoving you over onto your back.";
	if HP of Icarus is 52:
		say "     For a moment, you're unsure what your master wants, but he then presses that foot down onto your face, grabbing your head with clawed toes. 'You're such a pathetic predator - you deserve to be under my heel. You even want to be, don't you, you slut?' he asks, grinding his bird-like foot across your face. You";
	else:
		say "     Knowing what your master wants of you, you";
	say " nuzzle at it and run your tongue across his long, scaled toes. The taste is a little strong, but you keep licking in your eagerness to please him, feeling a little embarrassed at being made to do it so easily. But despite being a powerful bird of prey and this upsetting you, it turns you on all the more, the small passerine's aggressive confidence only making you more lustful for him. And seeing this reaction, he chuckles louder.";
	say "     You keep licking and sucking on his toes, smiling as you watch him start to stroke his stiff member. When your attention starts to wander from your task too much, he [one of]gives you a deep jab with his footclaws[or]digs his talons into you painfully[or]grinds his foot down heavily[or]scratches his footclaws across your cheek[or]shifts his foot down to give your neck a choking squeeze[at random], returning your focus to the task at hand. You rub your hands over his foot as well, caressing and massaging it as you tonguebathe across its scaley hide. Eventually, he pulls his foot away and aims his pulsing, spurting cock at his subjugated predator slut. Splatter after splatter of avian seed splashes onto you, further marking you as his slutty plaything. You lay there for a while, sticky with bird semen and smelling of your strong, avian lover.";
	if HP of Icarus is 52, now HP of Icarus is 53;

to say icarussex4_dom_fel:	[footplay - feline version]
	say "     You move to present yourself on all fours for him, but he lands beside you, one taloned foot digging roughly into your side. Those sharp talons leave red scratches before he gives you a hard push, shoving you over onto your back.";
	if HP of Icarus is 52:
		say "     For a moment, you're unsure what your master wants, but he then presses that foot down onto your face, grabbing your head with clawed toes. 'You're such a pathetic predator - you deserve to be under my heel. You even want to be, don't you, you slut?' he asks, grinding his bird-like foot across your face. You";
	else:
		say "     Knowing what your master wants of you, you";
	say " nuzzle at it and run your raspy tongue across his long, scaled toes. The taste is a little strong, but you keep licking in your eagerness to please him, feeling a little embarrassed at being made to do it so easily. But despite being a powerful feline and this upsetting you, it turns you on all the more, the small passerine's aggressive confidence only making you more lustful for him. And seeing this reaction, he chuckles louder.";
	say "     You keep licking and sucking on his toes, smiling and purring as you watch him start to stroke his stiff member. When your attention starts to wander from your task too much, he [one of]gives you a deep jab with his footclaws[or]digs his talons into you painfully[or]grinds his foot down heavily[or]scratches his footclaws across your cheek[or]shifts his foot down to give your neck a choking squeeze[at random], returning your focus to the task at hand. You rub your paws over his foot as well, caressing and massaging it as you tonguebathe across its scaley hide. Eventually, he pulls his foot away and aims his pulsing, spurting cock at his subjugated kitty slut. Splatter after splatter of avian seed splashes onto you, further marking you as his slutty plaything. You lay there for a while, sticky with bird semen and smelling of your strong, avian lover.";
	if HP of Icarus is 52, now HP of Icarus is 53;

to say icarussex5_dom:	[rimming]
	say "     You move to present yourself on all fours for him, but he lands in front of you, facing away. Reaching back, he grabs your head roughly as he raises his tail and pulls your face under it.";
	say "     [if icarusrim is false]With your face mashed in his ass, you are momentarily uncertain what is wanted of you and start to move back. Icarus gives you a hard poke with his talons and pushes you back under. 'I know you're a dirty perv, so show everyone and eat out my ass, my horny slut,' he orders, pressing his pucker to your mouth. You hesitate for a moment, then take a slow lick across his crinkled hole, and then another. Soon enough, you're[else]Knowing your master wants you to rim him again, you start[end if] lapping across his anus and pushing to work it open with your tongue. His tight back passage soon relaxes, letting you push your tongue in further.";
	say "     As you rim the blue passerine, you can't help but feel like the dirty slut that he teasingly calls you even as he compliments you for doing such a fine job of it. It's clear from his delightful, musical birdsong that your hardworking tongue is pleasing the sexy bird. Your hands caress and knead his softly feathered ass while the songbird casually strokes himself while he enjoys the rimjob by his obedient fucktoy.";
	say "     After having your tongue delving deep into his ass for a good, long time, he roughly pushes you back, popping your tongue free with a wet slurp. Turning around, he manhandles you onto all fours and drives his stiff, leaking rod into your ";
	if Player is female and a random chance of 3 in 5 succeeds:
		say "pussy with little preamble. The earlier humiliating act had gotten you quite aroused and wet, so it is an easy penetration, though rather unfulfilling as he pounds away at you. But it's clear he's not caring about your release as he thrusts into you a handful of times before driving in deeply and groaning as he cums, shooting his virile load into your womb. Once done, he pulls out just as quickly and shoves you to the ground. You are left feeling more like a used thing, discarded after your job is done. For some reason, thinking of yourself as nothing but an object for his sexual pleasure turns you on.";
		NPCSexAftermath Player receives "PussyFuck" from Icarus;
	else if Player is not female and a random chance of 2 in 5 succeeds:
		say "ass with little preamble. The earlier humiliating act had gotten you quite aroused, but it is still rough and uncomfortable as he pounds away at you. And just as you're starting to enjoy it, it turns out to be rather unfulfilling. He only thrusts into you a handful of times before driving in deeply and groaning as he cums, shooting his virile load into your stinging ass. Once done, he pulls out just as quickly and shoves you to the ground. You are left feeling more like a used thing, discarded after your job is done. For some reason, thinking of yourself as nothing but an object for his sexual pleasure turns you on.";
		NPCSexAftermath Player receives "AssFuck" from Icarus;
	else:
		say "mouth, this time pushing your face into his crotch. He thrusts his stiff cock into your mouth, fucking the face which was so recently buried under his tail and licking his ass. Aroused by the prospect of enjoying sucking off the horny bird, you set your tongue and lips to work, but it turns out to be fast and unfulfilling for you. It only takes a few thrusts into your mouth before he groans and cums, shooting his rich load down your throat. Once done, he pulls out just as quickly and shoves you to the ground. You are left feeling more like a used thing, discarded after your job is done. For some reason, thinking of yourself as nothing but an object for his sexual pleasure turns you on.";
		NPCSexAftermath Player receives "OralCock" from Icarus;
	now icarusrim is true;
	if HP of Icarus is 54, now HP of Icarus is 55;

to say icarussex5_dom_ap:	[rimming - avian pred version]
	say "     You move to present yourself on all fours for him, but he lands in front of you, facing away. Reaching back, he grabs your head roughly as he raises his tail and pulls your face under it.";
	say "     [if icarusrim is false]With your face mashed in his ass, you are momentarily uncertain what is wanted of you and start to move back. Icarus gives you a painful jab with his talons and pushes you back under. 'I know you're a dirty perv, so show everyone and eat out my ass, my slutty predator hen,' he orders, pressing his pucker to your mouth. You hesitate for a moment, then take a slow lick across his crinkled hole, and then another. Soon enough, you're[else]Knowing your master wants you to rim him again, you start[end if] lapping across his anus and pushing to work it open with your tongue. His tight back passage soon relaxes, letting you push your tongue in further.";
	say "     As you rim the blue passerine, you can't help but feel like the dirty slut that he teasingly calls you even as he mockingly compliments you for doing such a fine job of it. It's clear from his delightful, musical birdsong that your hardworking tongue is pleasing the sexy bird. Your hands caress and knead his softly feathered ass while the songbird casually strokes himself while he enjoys the rimjob by his obedient fucktoy.";
	say "     After having your tongue delving deep into his ass for a good, long time, he roughly pushes you back, popping your tongue free with a wet slurp. Turning around, he manhandles you onto all fours and drives his stiff, leaking rod into your ";
	if Player is female and a random chance of 3 in 5 succeeds:
		say "pussy with little preamble. The earlier humiliating act had gotten you quite aroused and wet, so it is an easy penetration, though rather unfulfilling as he pounds away at you. As he mates you, his beak latches onto the back of your neck, drawing blood in his enthusiasm to fuck his personal predator hen. It's clear the smaller bird doesn't care about your release as he thrusts into you a handful of times before driving in deeply and groaning as he cums, shooting his virile load into your womb. Once done, he pulls out just as quickly and shoves you to the ground with a heel to the side. You are left feeling more like a used thing, discarded after your job is done. For some reason, thinking of yourself as nothing but an object for his sexual pleasure turns you on.";
		NPCSexAftermath Player receives "PussyFuck" from Icarus;
	else if Player is not female and a random chance of 2 in 5 succeeds:
		say "ass with little preamble. The earlier humiliating act had gotten you quite aroused, but it is still rough and uncomfortable as he pounds away at you. As he mates you, his beak latches onto the back of your neck, drawing blood in his enthusiasm to fuck his personal predator slut. And just as you're starting to enjoy it, it turns out to be rather unfulfilling. He only thrusts into you a handful of times before driving in deeply and groaning as the smaller bird cums, shooting his virile load into your stinging ass. Once done, he pulls out just as quickly and shoves you to the ground with a heel to the side. You are left feeling more like a used thing, discarded after your job is done. For some reason, thinking of yourself as nothing but an object for his sexual pleasure turns you on.";
		NPCSexAftermath Player receives "AssFuck" from Icarus;
	else:
		say "mouth, this time pushing your face into his crotch. He thrusts his stiff cock into your mouth, fucking the beak which was so recently buried under his tail and licking his ass. Aroused by the prospect of enjoying sucking off the horny bird, you set your mouth and tongue to work, but it turns out to be fast and unfulfilling for you. It only takes a few thrusts into your mouth before the smaller bird groans and cums, shooting his rich load down your throat. Once done, he pulls out just as quickly and shoves you to the ground with a heel to the side. You are left feeling more like a used thing, discarded after your job is done. For some reason, thinking of yourself as nothing but an object for his sexual pleasure turns you on.";
		NPCSexAftermath Player receives "OralCock" from Icarus;
	now icarusrim is true;
	if HP of Icarus is 54, now HP of Icarus is 55;

to say icarussex5_dom_fel:	[rimming - feline version]
	say "     You move to present yourself on all fours for him, but he lands in front of you, facing away. Reaching back, he grabs your head roughly as he raises his tail and pulls your face under it.";
	say "     [if icarusrim is false]With your face mashed in his ass, you are momentarily uncertain what is wanted of you and start to move back. Icarus gives you a painful jab with his talons and pushes you back under. 'I know you're a dirty perv, so show everyone and eat out my ass, my slutty kitten,' he orders, pressing his pucker to your mouth. You hesitate for a moment, then take a slow lick across his crinkled hole, and then another. Soon enough, you're[else]Knowing your master wants you to rim him again, you start[end if] lapping across his anus and pushing to work it open with your tongue. His tight back passage soon relaxes, letting you push your raspy tongue in further.";
	say "     As you rim the blue passerine, you can't help but feel like the dirty slut that he teasingly calls you even as he mockingly compliments you for doing such a fine job of it. It's clear from his delightful, musical birdsong that your hardworking tongue is pleasing the sexy bird. Your hands caress and knead his softly feathered ass while the songbird casually strokes himself while he enjoys the rimjob by his obedient fucktoy.";
	say "     After having your tongue delving deep into his ass for a good, long time, he roughly pushes you back, popping your tongue free with a wet slurp. Turning around, he manhandles you onto all fours and drives his stiff, leaking rod into your ";
	if Player is female and a random chance of 3 in 5 succeeds:
		say "pussy with little preamble. The earlier humiliating act had gotten you quite aroused and wet, so it is an easy penetration, though rather unfulfilling as he pounds away at you. As he mates you, his beak latches onto the back of your neck, drawing blood in his enthusiasm to fuck his personal kitty toy. It's clear the small bird doesn't care about your release as he thrusts into you a handful of times before driving in deeply and groaning as he cums, shooting his virile load into your womb. Once done, he pulls out just as quickly and shoves you to the ground with a heel to the side. You are left feeling more like a used thing, discarded after your job is done. For some reason, thinking of yourself as nothing but an object for his sexual pleasure turns you on.";
		NPCSexAftermath Player receives "PussyFuck" from Icarus;
	else if Player is not female and a random chance of 2 in 5 succeeds:
		say "ass with little preamble. The earlier humiliating act had gotten you quite aroused, but it is still rough and uncomfortable as he pounds away at you. As he mates you, his beak latches onto the back of your neck, drawing blood in his enthusiasm to fuck his personal predator slut. And just as you're starting to enjoy it, it turns out to be rather unfulfilling. He only thrusts into you a handful of times before driving in deeply and groaning as the smaller bird cums, shooting his virile load into your stinging ass. Once done, he pulls out just as quickly and shoves you to the ground with a heel to the side. You are left feeling more like a used thing, discarded after your job is done. For some reason, thinking of yourself as nothing but an object for his sexual pleasure turns you on.";
		NPCSexAftermath Player receives "AssFuck" from Icarus;
	else:
		say "mouth, this time pushing your face into his crotch. He thrusts his stiff cock into your mouth, fucking the muzzle which was so recently buried under his tail and licking his ass. Aroused by the prospect of enjoying sucking off the horny bird, you set your mouth and tongue to work, but it turns out to be fast and unfulfilling for you. It only takes a few thrusts into your mouth before the smaller bird groans and cums, shooting his rich load down your throat. Once done, he pulls out just as quickly and shoves you to the ground with a heel to the side. You are left feeling more like a used thing, discarded after your job is done. For some reason, thinking of yourself as nothing but an object for his sexual pleasure turns you on.";
		NPCSexAftermath Player receives "OralCock" from Icarus;
	now icarusrim is true;
	if HP of Icarus is 54, now HP of Icarus is 55;


to say icarussex6_dom_ap:
	if HP of Icarus is 55:
		say "[icarussex6_dom]"; [funneled to combined version for both]
	else if HP of Icarus is 57:
		say "[one of][icarussex6a_dom][or][icarussex6b_dom][or][icarussex6c_dom_ap][in random order]";

to say icarussex6_dom_fel:
	if HP of Icarus is 55:
		say "[icarussex6_dom]"; [funneled to combined version for both]
	else if HP of Icarus is 57:
		say "[one of][icarussex6a_dom][or][icarussex6b_dom][in random order]";

to say icarussex6_dom:		[Used for both special preds - not open to regular]
	setmonster "Blue Chaffinch";
	choose row MonsterID from the Table of Random Critters;
	let formcheck be 0;
	if BodyName of Player is listed in infections of AvianpredList and FaceName of Player is listed in infections of AvianpredList:
		now formcheck is 1;
		now icarus_lastpred is 1;
	else if BodyName of Player is listed in infections of FelineList and FaceName of Player is listed in infections of FelineList:
		now formcheck is 2;
		now icarus_lastpred is 2;
	say "     Noticing the dominant bird watching you with a sour mood, you put on a brief display to entice him. He glares at you and gives an aggressive call before gliding down. He knocks into you, [if scalevalue of Player < 3]bowling you over[else if scalevalue of Player is 3]knocking you down[else]making you stumble to your knees in surprise[end if]. Grabbing you by the scruff of the neck, he starts to drag you towards a service door - one you know leads down to the non-functional boiler room.";
	say "     You've not seen your birdie master this upset or aggressive before. From the way his talons are already digging into you, you can tell he's going to be particularly violent with you if you let him take you down there. You can either [link]accept your punishment (Y)[as]y[end link] or try to [link]appease him (N)[as]n[end link] right here and now.";
	if Player consents:
		say "     Accepting that you must have upset your avian master somehow, you allow him to [if scalevalue of Player < 4]drag[else]lead[end if] you through the heavy service door. Yanking you forward by your scruff, he snaps for you to go down into the dark basement with only the lantern he's picked up for light. Barely able to see the steps, you descend slowly while peering into the ill-lit room.";
		say "     The easiest feature to make out in the dim light is the iron stairwell you're descending. It goes down for about a dozen steps before turning at the corner to go down the last few steps. The room itself is dark and dingy with stone walls on three sides and cinder block on the last. It was probably converted from a larger cellar when the abbey was renovated. Lots of pipes and wires run along the walls and ceiling, leading up and out to the main building. A lot of the room's space is taken up by an old boiler, electrical panels and other equipment for the building.";
		WaitLineBreak;
		say "     As you're coming down the last step, Icarus gives you an added shove. 'Move it, you slow bitch.' You stumble forward, bumping into the wall ahead. You knock your head against the hard stone, leaving you dazed. 'Come on, clumsy,' he snaps, tugging you to the middle of the dark room and pushing you to the floor.";
		say "     He grabs your legs roughly and pulls them open. 'You're so clumsy. But maybe that'll teach you not to treat me like some bitch.' As he kneels between your spread thighs, he reaches forward and gives you a slap across the [if formcheck is 1]beak[else]muzzle[end if]. 'You need to be punished for doing that. I'm the strong stud here and you're nothing but my weak, slutty [if formcheck is 1]hen[else]pussy[end if].' And with that, he thrusts his [if Player is female]cock into your ill-prepared cunt[else]unlubed cock roughly into your asshole[end if].";
		say "     You can see the grin on his beak in the flicking lantern-light as he enjoys your discomfort and the horny passerine is particularly rough with you. His talons dig into you from the first thrust and he doesn't hold back. The pain from them is sharp, sending jolts up your spine along with those pleasant sensations from being fucked vigorously. Still woozy from the blow to your head, the signals get a little jumbled over time, the pain and pleasure becoming tied together. You deserve the pain - and it feels so good.";
		WaitLineBreak;
		say "     Partway through, he pulls out and gets you to turn over onto all fours. With an excited flutter of his wings, he pounces back atop you, thrusting into you again[if Player is female], this time diving into your ass[end if]. Your asshole aches from the sudden and hard penetration, but he doesn't hesitate to start pounding you harshly. He buries his pulsing rod into you over and over again while raking his talons down your back. Your back becomes streaked with red from the lacerations from the repeated cuts from the little guy's claws.";
		say "     'Who's the cock-loving slut getting fucked up the ass now? Who? Who?!' he snaps as he thrusts harder still. You groan incoherently a few times before finally moaning that it's you, you're the cock-loving slut. 'Whose cock-loving slut?' His. 'That's right, you slut. And all this is for ever thinking else,' he adds, digging his talons deep into your sides and cramming his cock fully into your ass. He unloads several large, gooey shots of bird semen into your bowels while your blood runs over his hands from the piercing wounds in your waist. The punishment feels so good and so deserved that you cry out in orgasmic release as painful pleasure overwhelms your senses.";
		WaitLineBreak;
		say "     After unloading so hard into you, your master takes a few moments to recover before pulling out. After getting up, he takes this time to wipe his bloody hands with a rag from the floor. Despite the nanites working hard to heal you, you rise unsteadily to your feet and go to follow him back up the stairs. Noticing you following him, he turns around at the lower landing and kicks you back down. You stumble back the last few steps, hitting the wall again before slumping down. This blow to the back of the head has you seeing stars. You can barely make out the bird's words as you fade into unconsciousness. 'You stay down here for a while. Get used to this place. I'll be dragging you back down here any time I think you need to be punished again.' You moan softly and smile weakly up at the blue bird as he stomps up the stairs, taking the flickering light with him until you're left in the dark and pass into unconsciousness for a couple of hours.";
		NPCSexAftermath Player receives "AssFuck" from Icarus;
		SanLoss 5;
		if HP of Player > HP of Player / 10:
			now HP of Player is HP of Player / 10;
		else:
			now HP of Player is 1;
		now skipturnblocker is 1; [temporarily turns off several other end of turn effects]
		follow the turnpass rule;
		now skipturnblocker is 0; [restores normal end of turn functions]
		now HP of Icarus is 57;
	else:
		say "     Seeking to distract the angry passerine long enough to calm him, you crawl forward and bury your face in his crotch. In addition to stopping his forward motion, it places you right at his stiff member. Between licks to his erection, you moan that you're worry and that you'll be a good pet. You go on to nuzzle his cock affectionately, rubbing its musky scent onto your face while saying what a strong master he is. You go on to add that you should never have tried to make a stud like him into your bitch before engulfing his pulsing rod in your [if formcheck is 1]beak[else]muzzle[end if].";
		say "     He grabs your head roughly and starts thrusting into your willing maw. His talons dig painfully into your flesh as he grips you a little too firmly. 'That's right, you slut. And don't you forget it,' he says. He smiles as you whimper and nod, sucking his cock all the harder. He fucks your face for a few minutes before pushing you back. 'And to prove that I'm the stud here, you're going to take it like the bitch you are,' he growls. 'Turn around and present that slutty [if Player is female]cunt[else]ass[end if] of yours.'";
		WaitLineBreak;
		say "     Releasing the tasty cock from your mouth, you move onto all fours and grind your ass against the chaffinch's crotch. He smiles and gives your ass a hard swat before thrusting into you. His saliva-slick member slips into your [if Player is female]juicy cunt with ease. He grins at your needy moan and gives your ass another swat before swapping again, this time to your asshole. He drives into your back door just as quickly, making you groan at the sudden rough penetration[else]tight asshole, forcing you to take him quickly. He chuckles a little at your groan and gives your ass another harder swat[end if]. The spanking continues even as he fucks you, punishing you for your earlier hubris of trying to control him. It is strangely exciting and you start moaning for more because you've been a bad [if Player is female]girl[else]boy[end if].";
		say "     Your punishment goes on like this until your ass is sore and throbbing both inside and out, culminating in the horny bird pulling out and cumming messily across your butt. Copious streaks of bird semen spray your stinging buttocks, soothing your pain slightly with the knowledge that you've made your master happy once again. He moves back around to your front, slaps your beak with his shaft before it's had a chance to go flaccid and has you lick it clean. Only once you've done so does he depart, leaving you sore, messy and strangely aroused.";
		increase Libido of Player by 10;
		now HP of Player is ( HP of Player * 4 ) / 5;
		now HP of Icarus is 56;


to say icarussex6a_dom:		[Repeatable rough scene A]
	setmonster "Blue Chaffinch";
	choose row MonsterID from the Table of Random Critters;
	let formcheck be 0;
	if BodyName of Player is listed in infections of AvianpredList and FaceName of Player is listed in infections of AvianpredList:
		now formcheck is 1;
		now icarus_lastpred is 1;
	else if BodyName of Player is listed in infections of FelineList and FaceName of Player is listed in infections of FelineList:
		now formcheck is 2;
		now icarus_lastpred is 2;
	say "     When you put on an enticing display for your birdie master up in the rafters, he glares at you and comes winging down. He banks past you, giving you a talon scratch on the shoulder before landing. He gives your rear a hard smack with talon poking into your bottom. 'Get moving!' he snaps at you. 'I know what you've been up to, you slut.'";
	say "     Knowing the dominant passerine means to punish you again, you head down into the basement with a strange thrill running through you. Icarus follows you down into the dark, dank boiler room. Aside from the occasional talon click on the metal of the steps, he is silent behind you. Only once you're both down on the rough stone floor does he speak.";
	say "     'Down on your knees, you slut,' he orders, shoving the back of your shoulder. You comply sheepishly, submitting to your passerine master. While out in the city you may behave differently, down here you are the bird's toy. The prospect is exciting, feeling like a release from the stress of your struggles.";
	say "     He strides in front of you and slaps his penis across your [if formcheck is 1]beak[else]muzzle[end if]. 'Open up, you cock-sucker, and get to work.' Obediently, you open your mouth and take the little guy's cock into it. The blue bird grabs your head and thrusts mercilessly into your mouth. His stiff member pushes into your mouth and throat over and over again. His rough pace makes it difficult for you, but you do your best to lick and suck on his cock in an effort to please him. His talons dig into you as his excitement builds and, taking it to mean he's enjoying your cock-sucking, you continue in earnest despite the discomfort they bring. If anything, the pain is good because it's a sign of your master's pleasure, and hence your own.";
	say "     When Icarus cums, he blows hard. His load blasts down your throat and wind pipe. Your eyes water and it takes effort to not immediately cough, but you manage to keep licking and swallowing. When he's finished and his talons relax, you pull away, coughing up the gooey mess.";
	say "     'That's pathetic,' Icarus grumbles. 'You can't even give a proper blowjob.' Staggered and on your knees, he quickly grabs you by the scruff and slams you forward into the old boiler. Stars fill your vision and the taste of blood is added to that of your master's seed in your mouth. You give a soft groan from the floor.";
	if wslevel > 1 and a random chance of wslevel in 5 succeeds:
		say "     Icarus looks down at you for a moment. Taking aim with his cock, he releases a hot spray of piss onto the back of your head and then down your back. The musky, acrid fluid makes your wounds sting as he provides another reminder that you're his to use as he sees fit. You feel pathetic and weak doing this, but find it strangely arousing to let the little bird abuse you so.";
	else:
		say "     Icarus looks down at you for a moment before placing a foot on the back of your head. He grinds your face down onto the messy floor. 'Don't waste my cum, you slut. Lick it up like a good pet.' Still woozy from the blow, you press your face into the bloody mess you've coughed up and start licking it from the floor. You feel pathetic and weak doing this, but find it strangely arousing to let the little bird abuse you so.";
	say "     The aggressive bird gives you a final kick in the gut before turning away. He picks up the lantern and climbs back up the stairs. You groan weakly, but he ignores you. The heavy door slams shut, leaving you in the dark to recover from your strangely arousing ordeal. And once you've started to recover, your first response is not to leave but to start masturbating[if Player is herm]stroking and fingering[else if Player is male]stroking[else]fingering[end if] yourself to a moaning orgasm.";
	SanLoss 5;
	if HP of Player > HP of Player / 10:
		now HP of Player is HP of Player / 10;
	else:
		now HP of Player is 1;
	now skipturnblocker is 1; [temporarily turns off several other end of turn effects]
	follow the turnpass rule;
	now skipturnblocker is 0; [restores normal end of turn functions]


to say icarussex6b_dom:		[Repeatable rough scene B]
	setmonster "Blue Chaffinch";
	choose row MonsterID from the Table of Random Critters;
	let formcheck be 0;
	if BodyName of Player is listed in infections of AvianpredList and FaceName of Player is listed in infections of AvianpredList:
		now formcheck is 1;
		now icarus_lastpred is 1;
	else if BodyName of Player is listed in infections of FelineList and FaceName of Player is listed in infections of FelineList:
		now formcheck is 2;
		now icarus_lastpred is 2;
	say "     Icarus gives a sharp cry before gliding down to meet you. He gives your ass a hard swat with one wing as he lands. Pointing with the other to the basement door, he orders you down there. Despite what you know is coming, you feel a rush of excitement at the prospect. Ceding so much power and control to him feels like a release after the tension of exploring the city. You lower your head and meekly head into the darkened room.";
	say "     Once down the stairs, your passerine master gives you another wing-slap on the rear and orders you to strip. Doing so, you toss aside your gear into a corner of the dark, dirty room. Another swat comes as you're tossing the final item, but this one is made with his talons, drawing bloody lines across your rear. You [if formcheck is 1]chirp[else]mewl[end if] in shock and pain.";
	WaitLineBreak;
	say "     'Get that ass of yours in the air,' he says, swiping across your other cheek. You give a little whimper and obey, lowering your upper body to the floor and keeping your red-streaked bottom up for him. He grabs your ass and grinds his stiff manhood into it. His precum dribbles across your tight pucker [if Player is female]and down to your sopping wet folds. You have little chance to enjoy the grinding before he pushes his erection into your hot cunt[else]in preparation. Not that he gives you much chance to ready yourself before pushing his erection into your back door[end if].";
	say "     So that he can better pound your [if Player is female]dripping, needy cunt[else]aching, needy ass[end if] into submission, he leans himself overtop you with his hands on your shoulders. His taloned hands dig into you even as they keep your face pressed to the floor. 'This is what you get for treating me like dirt, but you're the one that's nothing but dirt,' he growls at you between those deliciously hard thrusts. Your response is to moan softly and push your rear back into those thrusts all the more.";
	WaitLineBreak;
	say "     As this rough mating goes on, the bird's talons dig into you further. You [if formcheck is 1]clench your beak[else]grit your teeth[end if] and whimper a little even as the added pain excites you further. You can feel your blood running down your shoulders and onto the floor on either side of your head. This only adds to the messy on the dirty floor you're rubbing your head against. Icarus switches to slower, but harder and deeper thrusts as his climax approaches. The passerine leans back up, running his talons along the whole length of your back to leave bloody trails until he reaches your ass. This time the lacerations he gives your sore buns are much deeper even as he drives himself fully into you and unleashes his hot, messy load into your [if Player is female]quivering cunt[else]clenching asshole[end if]. The feel of that hot seed shooting into you overwhelms your sense of the pain and you climax[if Player is male], spreading streaks of white to the mess on the floor[else], dripping femcum mingling with your lifeblood on the floor[end if]. Again, your sense of pain and pleasure are blurred until it is another reason to keep cumming.";
	WaitLineBreak;
	say "     Once the little songbird is done staking his claim in you again, he pulls out and finally withdraws his talons from your ass. You're weak and woozy from the blood loss but manage to keep your ass up as he fingers your messy [if Player is female]cunt[else]hole[end if]. Striding around to your front, he grabs you by your scruff and pulls your head up so he can shove his messy fingers, sticky with your blood and his semen into your mouth. You're made to lick and suck his digits clean before he releases you to flop back down onto the hard floor. He places his foot on your head and grinds your [if formcheck is 1]beak[else]muzzle[end if] down onto the floor hard.";
	say "     'What are you?' he asks. He pushes your head down harder against the stones and repeats his question. 'What are you?'";
	say "     'I'm dirt. I'm nothing but dirt,' you manage to whimper, at which point he lifts his foot off of you. For a moment you think that's it before that foot comes back to kick you in the face.";
	say "     'And don't you forget it,' he snaps, striding away and leaving you in the dark to recover. You eventually exit the basement, weakened but also feeling strangely satisfied. It may be difficult to know who or even what you are in this messed-up crisis, but at least you know your place down there with Icarus.";
	SanLoss 5;
	if HP of Player > HP of Player / 8:
		now HP of Player is HP of Player / 8;
	else:
		now HP of Player is 1;
	now skipturnblocker is 1; [temporarily turns off several other end of turn effects]
	follow the turnpass rule;
	now skipturnblocker is 0; [restores normal end of turn functions]


to say icarussex6c_dom_ap:		[Repeatable rough scene C - avian pred only]
	setmonster "Blue Chaffinch";
	choose row MonsterID from the Table of Random Critters;
	say "     Having attracted your bird master with your wanton display, you are grabbed and pushed towards the basement door. It must be an unusual sight to see a powerful avian predator such as yourself cowed by the little passerine, but you know your place and go through the door. Once the door is shut, he shoves you even as you're descending the dark stairs. Again, you stumble and half-fall down the stairs before hitting the wall ahead.";
	say "     Before you can recover your footing, Icarus grabs you by the back of the neck and yanks you towards the middle of the floor. 'How pathetic. What kind of a bird are you if you can't even fly?' he says, grabbing one of your wings and twisting on it. You groan in pain only to have him laugh and shove you back to the ground. He instead grabs your ass and grinds his stiff cock against it.";
	WaitLineBreak;
	if Player is female:
		say "     He slides his cock against your pussy, causing you to moan. You've gotten quite wet from the excitement of Icarus dominating you so harshly. He laughs at this and calls you a slut and a whore, and your only response is to moan and beg for him to fuck you like the whorish slut you are. He teases you with a few more strokes of his shaft along your sopping folds while painfully twisting your wings in his hand talons.";
		say "     'Maybe I should clip your wings. Keep you trapped as my pet from now on,' he says as he thrusts into you finally. You moan in pleasure at feeling your passerine master's shaft claiming your cunt once again. 'Fuck you full of clutch after clutch like some breeding hen. You're no fierce predator, are you? No, you're nothing but a stupid hen.'";
	else:
		say "     He grinds his cock between your buns, teasing it at your asshole. You've gotten quite aroused from the excitement of Icarus dominating you so harshly and this causes you to moan with need. He laughs and calls you a faggy slut, and your only response is to moan and beg for him to fuck your ass like the slut you are. He hotdogs your ass with a few more strokes, teasing his leaking glans against your quivering pucker while painfully twisting your wings in his hand talons.";
		say "     'Maybe I should clip your wings. Keep you trapped as my pet from now on,' he says as he thrusts into you finally. You moan in pleasure at feeling your passerine master's shaft claiming your ass once again. 'Fuck you over and over like some slave harem boy. You're no fierce predator, are you? No, you're nothing but a harem slave.'";
	WaitLineBreak;
	say "     Icarus's words excite and arouse you, making you long to be fucked senseless by him over and over. You push your hips back into his thrusts and wiggle your rear, working your inner muscles around his shaft. The feel of it pulsing and throbbing inside you with every push [if Player is female]into your horny pussy[else]against your prostate[end if] makes you moan[if Player is male]. Your cock[smn] twitch[esmv] as [ittheym] drool[smv] precum onto the ground, primed to blow[else]. Your cunt trembles with excitement and leaks juices down your thighs, your orgasm fast approaching[end if].";
	say "     As your songbird master bears down on you with harder thrusts, his pulls on your wings harder. You can feel his talons digging into the meat of your wings, but pain only excites you further at this point. Your joints creak and your bones ache, but its his thrusting shaft that has your attention. And when he drives himself into you one last, hard time, you feel that hot rush of semen into you just as your wingbones snap. You release a sharp cry of pain and pleasure, orgasming uncontrollably[if Player is herm]. Hot juices run down your thighs as you dump your load onto the dirty ground beneath you[else if Player is male]. You dump your load onto the dirty ground beneath you[else]. Hot juices run down your thighs[end if] even as Icarus pumps his gooey seed into you.";
	WaitLineBreak;
	say "     As the rush of ecstasy from your orgasm fades and the pain of your broken wings takes the forefront in your senses, you sag down onto the messy floor whimpering[if wslevel is 3]. You end up pissing yourself, adding to the mess you're laying in, but can do nothing to stop the flow[end if]. Icarus sneers as you slip off his spent shaft and releases your twisted wings to flop down onto the floor beside you. 'Such a pathetic thing. Not a fearsome predator of the skies - just a grounded pet bird. Let's see how you like it for a while.' And with that, he leaves you in the dark pit with your pain. Your nanites are diligent and slowly mend your wings, by they're left weak and sore for quite some time and you're drained from the process. Through it all though is the soft warmth of sexual satisfaction from your powerful orgasm, showing that some dark part of you enjoyed the painful ordeal.";
	NPCSexAftermath Player receives "PussyFuck" from Icarus;
	SanLoss 5;
	if HP of Player > HP of Player / 8:
		now HP of Player is HP of Player / 8;
	else:
		now HP of Player is 1;
	now skipturnblocker is 1; [temporarily turns off several other end of turn effects]
	follow the turnpass rule;
	now skipturnblocker is 0; [restores normal end of turn functions]


Section 3 - The Tell-Tale Icarus

an everyturn rule:
	if HP of Icarus is 7 and skipturnblocker is 0:
		if turns is even and ttIcarus - turns >= 8 and tti_scene is 2:
			if Player is in Bunker or player is in Grey Abbey Library or player is in Grey Abbey 2F:
				say "     Feeling uneasy and nervous, your glance always seems to stray towards the attic and the body you've left there. You wander outside for a short walk, hoping to clear your head of the dark thoughts that cloud your mind. But you find little solace, your guilt returning, making you feel like you're being watched. The rare roaming mutant you spot seems to stare at you, as if they know what you've done. You know that can't be true, but you feel it all the same.";
				say "     Things get worse as you take a wrong turn and momentarily lose track of where you are. As you're looking around to get your bearings, you hear the flutter of wings. As you turn to face the noise, there is a flash of blue just outside your vision. You turn again, but it is gone. When a crow caws in the distance, you spin around and start to run. Looking around wildly, you stumble out of the alleyway, eventually coming to a street you recognize and quickly make your way back to the library, heart pounding in your chest.";
			else:
				say "     Feeling uneasy and nervous, you wander outside for a short walk, hoping to clear your head of the dark thoughts that cloud your mind. But you find little solace, your guilt over Icarus returning, making you feel like you're being watched. The rare roaming mutant you spot seems to stare at you, as if they know what you've done. You know that can't be true, but you feel it all the same.";
				say "     Things get worse as you take a wrong turn and momentarily lose track of where you are. As you're looking around to get your bearings, you hear the flutter of wings. As you turn to face the noise, there is a flash of blue just outside your vision. You turn again, but it is gone. When a crow caws in the distance, you spin around and start to run. Looking around wildly, you stumble out of the alleyway, eventually coming to a street you recognize and quickly make your way back, heart pounding in your chest.";
			decrease morale of Player by 5;
			now tti_scene is 3;
		else if tti_scene is 4 and a random chance of 2 in 5 succeeds:
			if Player is in Grey Abbey Library or player is in Grey Abbey 2F or player is in Bunker:
				if Player is in Grey Abbey Library or player is in Grey Abbey 2F:
					say "     You pace around the library, trying your best to ignore the attic and the body you left up there. You strongly consider going up there and trying to figure out some means of removing it in secret, but these thoughts are brought to a crashing halt when you see a familiar blue figure outside in the distance. You rush to the doors and around the corner, heading to the intersection. You look around, but there is no sign anyone was there.";
				else if Player is in Bunker:
					say "     You pace around the bunker, trying your best to ignore the attic and the body you left up there. You strongly consider going up there and trying to figure out some means of removing it in secret. Drawn back again, you step out into the library and turn towards the stairs, but you are brought to a crashing halt when you see a familiar blue figure outside in the distance. You rush to the doors and around the corner, heading to the intersection. You look around, but there is no sign anyone was there.";
				say "     Sweating heavily, you rush back inside and hurry upstairs. Your pace drops quickly though, reduced to barely ascending a step every few seconds. You slowly make your way back upstairs and across the rafters to the secluded attic. You pause outside the door, screwing up your courage to enter. As the room is revealed, the bloody sheet is still there, but the body is gone. Stumbling into the room on weak knees, you pull aside the sheet, needing to see for yourself, finding only a bloody stain on the floor where you did the killed the poor bird.";
				WaitLineBreak;
				say "     You drop to your knees, your mind trying to comprehend what's happening. Looking around, you spot a nearby open window. Did something fly in and make a grisly meal of your victim? Or worse, did the infection make him into a zombie or ghost, now haunting you?";
				say "     As this horrifying thought sends a shiver down your spine, the feeling lingers and you realize you're not alone in the increasingly cramped room. Turning slowly, you find Icarus standing by the door, looking gaunt and partially molted, especially ragged around the red scar across this throat. Convinced you are indeed being haunted, the bird back as a shambling horror from beyond the grave, you scramble back quickly. You only make it a few feet before you crash into a stack of empty boxes, sending them tumbling down onto you. Screaming wildly that you're sorry, the shock causes you to black out.";
				WaitLineBreak;
				say "     When you come to, Icarus is beside you, wiping your brow with a damp rag. It takes you a moment to take this in, but you sit bolt upright when you do. 'It's alright. You're fine,' he says in his musical voice. There is a little roughness to it, but not what you'd expect from some undead horror come back to haunt you.";
				say "     'Me? I'm fine?!' you ask, a hint of madness in your voice. You pull yourself together, looking at him more carefully. You're now able to realize that he's neither dead nor undead, looking more like he's been sick or starved. The scar at his throat is not the same bloody wound you inflicted, but a mostly healed scar. Touching it gently, you can feel the warmth of his living flesh, and not some cold and clammy zombie.";
				WaitLineBreak;
				say "     'You've seen how this infection keeps healing everyone. I guess it'll take a lot more than that to kill someone for good now. I'm not sure how long I was out, but I was really weak when I came to. Barely knew what was going on, only that I was so tired, but also so hungry. I guess recovering from that took a lot out of me, so food was the only thing I could think of for a while.";
				say "     'Eventually I found some and things started to come back into focus slowly as I continued to recover. I... I considered staying away, but kept wandering back around here. I'd watch you sometimes, but I couldn't decide if I wanted to return after what happened.' He shivers a little, wringing his hands.";
				WaitLineBreak;
				say "     After a long pause, you ask him what it was like. 'Scary... but exciting. When you let loose like that, my little heart was racing, my body was going wild. It hurt, but it felt so good as it hurt. I'd never been so turned on in my life.' You're startled by his response, having misunderstood your question and stunned you with his response to it.";
				say "     He puts his little hands on your leg, stroking it gently. 'I'd like to feel that way again, too. I'm pretty much healed, so the next time you want to be the wild predator and tear into your prey, go right ahead,' he says with a grin. With that, he gets up slowly and heads out, leaving you with much to think about.";
				now HP of Icarus is 8;
				now morale of Player is ( 2 * morale of Player ) / 3;
				move Icarus to Garden View;
			else:
				say "     [one of]That uneasy feeling of being watched returns. You subconsciously wipe your hands[or]The sight of a blowing blue rag at the edge of your vision startles you[or]For a moment, you think you spot Icarus, but when you chase after the apparition, it is gone[or]You can't help but feel edgy around others, always worried they'll somehow know what you've done, smell the blood on your hands[or]A distant birdsong startles you, setting your heart racing[at random]. The stress of this is really getting to you. You consider heading back to the library to confront your guilt.";
				decrease morale of Player by 2;
		else if a random chance of 3 in 10 succeeds:
			if Player is in Bunker or player is in Grey Abbey Library or player is in Grey Abbey 2F:
				say "     [one of]You have a nervous, uneasy feeling, as if you're being watched. A shiver runs down your spine.[or]Your mind starts to stray to what happened to Icarus, but you push the thoughts away.[or]You can't help but glance up at the rafters, drawn to the attic where the deed was done.[or]Glancing upstairs, you try to convince yourself that it was the infection, that you're not at fault, but your thoughts don't ring true.[or]For a moment, the shadows on your hands make them look like they're covered in blood. You feel momentarily ill and want to wash them thoroughly.[or]You feel an uneasy chill, as if someone knows what you've done.[in random order]";
			else:
				say "     [one of]You have a nervous, uneasy feeling, as if you're being watched. A shiver runs down your spine.[or]Your mind starts to stray to what happened to Icarus, but you push the thoughts away.[or]When a passing songbird reminds you of Icarus, you feel a rush of guilt. You try to convince yourself that it was the infection, that you're not at fault, but your thoughts don't ring true.[or]For a moment, the shadows on your hands make them look like they're covered in blood. You feel momentarily ill and want to wash them thoroughly.[or]You hear the chirping of a bird, not unlike Icarus's musical tune, but scratchy and rough, almost dirge-like. It stops as suddenly as it started, leaving you feeling ill at ease.[or]You feel an uneasy chill, as if someone knows what you've done.[in random order]";
			decrease morale of Player by 2;
			if tti_scene < 2, increase tti_scene by 1;
			if tti_scene is 3, now tti_scene is 4;
	else if HP of Icarus is 9:
		if ttIcarus - turns >= 12:
			move Icarus to Garden View;
			now HP of Icarus is 10;
			if ( player is in Bunker or player is in Grey Abbey Library or player is in Grey Abbey 2F ) and skipturnblocker is 0:
				say "     You hear the pleasant birdsong of your blue passerine up in the rafters again, signaling that he's recovered and returned to his perch[if Player is in Grey Abbey Library]. When you look up at him, he grins and gives his rear a tantalizing shake, eager for more[else if Player is in Grey Abbey 2F]. When you look over at him, he grins and gives his rear a tantalizing shake, eager for more[end if]. Some dark part of you is excited at the prospect of running wild upon him again sometime soon.";
				increase Libido of Player by Libido of Player / 5;
				if Libido of Player > 100, now Libido of Player is 100;


Section 4 - Icarus Dominance

to say icarussex0_dom:
	setmonster "Blue Chaffinch";
	choose row MonsterID from the Table of Random Critters;
	say "     Icarus seems to sigh when you signal for him to come down. He's rather slow at coming down to join you, taking his time before flying down to the ground floor. He preens one of his wings as he gives you a sidelong glance.";
	say "     'I'm not quite sure what you had in mind, but you're not giving me what I thought was coming. You get me all worked up to be the songbird pet to a big, strong, male predator and you go and change on me. I might've been better off the way things were before,' he says to you, his demeanor and posture changing as his voice changes pitch towards the end, returning to his previous, tough-guy attitude. Moving in closer, he runs his taloned hands over your body, gripping your shoulders quite firmly. 'Maybe you'd rather be on the bottom from now on,' he says, pushing you firmly back onto one of the tables.";
	say "     The smaller bird's burst of frustration-driven dominance is exciting, tempting you into letting him fuck you. Shall you let him (Y) or will you reassert your dominance (N)?";
	if Player consents:
		say "     Your lust getting the best of you, you don't resist as the aggressive little bird moves his throbbing cock into position. Excited by his dominant attitude, you spread your legs for him, allowing the blue passerine to press his leaking glans against your [if Player is female]wet pussy[else]tight anus[end if]. Chuckling, he digs his claws firmly into you and thrusts into you with a hard push of his hips. You moan at the rough intrusion, but are aroused by it as well.";
		say "     Pounding away at you now, the blue bird has a smug grin on his beak, clearly pleased at having turned the tables on you. As his pulsing rod dives into your [if Player is female]wet[else]tight[end if] hole again and again, Icarus chuckles and nips firmly at your shoulder with his beak. Your arousal continues to climb as he works his cock with some skill and his hands run over your [bodytype of Player] body.";
		say "     'Mmm... that's right - moan you little chick. You like it much better this way, don't you?' he says, [if Player is male]stroking your cock[else]pinching your nipples[end if] as he does. He pauses in his thrusting and even starts to pull out, causing you to whimper with need. 'Such a needy slut you are, moaning to get fucked by a little birdie. Well, if you want me to finish fucking you, you'll be admitting you want to be my fucktoy from now on.'";
		say "     You bite your lip and try to resist, but you're far too aroused. The feel of his hard, throbbing cock with only its glans left inside you, about to be taken out of your needy hole, has you whimper again and relent. Begging him to fuck you, to make you into his birdie fucktoy, you cry out in relief as his cock moves again, this time inward. Quite pleased with himself, Icarus chirps as he nips at you, giving you the hard fucking your body's crying out for by this point.";
		say "     Soon enough, you are pushed over the edge as the aggressive passerine [if Player is male]pumps firmly at your shaft[else]pinches your clit[end if] and cry out in lustful ecstasy. The feel of your [if Player is female]cunt[else]ass[end if] squeezing down around his shaft as you orgasm is enough to put his arousal over the top and his cock pulses and throbs inside you, spurting shot after shot of avian cum into your [if Player is female]womb[else]bowels[end if], cementing his claim upon you. As he's finishing up, he pulls out and strokes his last few spurts onto your loins, further marking you as his plaything now. As you sag back onto the table, panting after the rough fucking you got, the last of your thoughts of dominance over the chaffinch fade away completely and you're left as his fucktoy now.[ovichance]";
		Icarusinfect;
		now HP of Icarus is 50;
	else:
		say "     You push aside the temptation to let him fuck you and grab the blue bird firmly by the shoulders. Being small and light, you lift him easily and turn so he's the one pinned back on the table now. Icarus tries to wrestle his way back on top, but you are, as proven in the past, much stronger than he is. Squeezing down hard on his shoulders and slamming him back onto the table, you growl for him to remember his place.";
		if Player is herm:		[herm]
			say "     Being partially male and partially female, you are presented with the option of riding the bird's cock (Y) or fucking him again (N).";
			if Player consents:
				say "[icarussex0_sub_f]";
			else:
				say "[icarussex0_sub_m]";
		else if Player is female:	[female]
			say "[icarussex0_sub_f]";
		else:		[male]
			say "[icarussex0_sub_m]";


to say icarussex0_sub_f:
	say "     'So you're thinking that you can just take what you want if I'm not the big, bad [if icarus_lastpred is 1]birdie[else]kitty[end if]? Is that it?' you growl, slamming him back onto the table again. 'Whether I'm a [if icarus_lastpred is 1]predatory bird[else]vicious cat[end if] right now or not, you're still my songbird slut and that's that.'";
	say "     You climb atop him and grab his cock, which is rock hard from the rough treatment. 'Looking to get a little pussy, are you? Well, I'll let you get some, but don't forget that I'm the one giving it to you. You're not taking it. And if you don't get any again for a while, I don't want to hear a peep out of you about it,' you add, squeezing his balls quite hard, making him release a pained cheep.";
	say "     Feeling quite aroused by your dominance of the little upstart, you grind your hips over his, letting your juices wet his throbbing rod. Giving his nuts another squeeze, you slam yourself down onto his shaft and start riding him vigorously. The little fellow ends up getting shaken about roughly as you ride his seven-inch cock for all its worth. His cries are a mix of moans and chirps of pleasure despite (or perhaps even because of) some rather hard thumps onto the hardwood table.";
	say "     Between his pent-up desires and the rough treatment, he doesn't end up holding out very long. After a few minutes of the vigorous fucking, he digs in his talons, clawing at the wood as he thrusts up into you and cums with a musical cry of ecstasy. Feeling his pulsing, spurting rod inside you, you moan and slam down onto his rod a few more times before cumming as well. You only stop riding after your climax has passed, heedless of his squirming as his spent shaft becomes oversensitive after his own orgasm has ebbed.[ovichance]";
	say "     Before you let your little birdie fly back up to the rafters, you grab his head roughly and pull him close. 'You're my songbird slut now, for me to use - or not use - as I see fit. There's more going on around here than just you, little birdie. Don't forget that again,' you say with a firm growl before pulling him off the table and onto the floor before walking away.";
	now lust of Icarus is 101;


to say icarussex0_sub_m:
	say "     'So you're thinking that you can just take over as the big, bad birdie if I'm not [if icarus_lastpred is 1]being one[else]the clawed kitty[end if]? Is that it?' you growl, slamming him back onto the table again. 'Whether I'm a [if icarus_lastpred is 1]predatory bird[else]vicious cat[end if] right now or not, you're still my songbird slut and that's that.'";
	say "     You grab his little legs and lift them up, spreading them. You can see that his cock has gotten rock hard from the rough treatment. 'It looks like you just need a reminder that I'm on top, not you. So I set the rules. And rule number one is [']Little upstart birdies get fucked.['] And if you don't get any again for a while, I don't want to hear a peep out of you about it,' you add, squeezing his balls quite hard, making him release a pained cheep.";
	say "     Feeling quite aroused by your dominance of the little upstart, you grind your [cock size desc of Player] cock against his ass, making the little guy squirm a bit as part of him tries to resist. But he also moans and his cock twitches, the passerine clearly turned on by the prospect of being violated by you again. Not wanting to disappoint, you grab his little legs in a tight grip and slam your [Cock of Player] rod right into him. He gives a loud, chirping cry of pain and pleasure at being so roughly taken, spurts of his precum splattering across his blue breast. Once buried in the moaning bird's stretched anus, you pound his downy ass for all its worth. His cries are a mix of moans and chirps of pleasure despite (or perhaps even because of) some rather hard thumps onto the hardwood table.";
	say "     Between his pent-up desires and the rough treatment, he doesn't end up holding out very long. After a few minutes of the vigorous fucking, he digs in his talons, clawing at the wood as his stretched hole clenches down on you and he cums messily with a musical cry of ecstasy. Watching his pulsing, spurting rod spraying its white load across his blue chest, you moan and slam your rod into him a few more times before cumming as well, pumping your [Cum Load Size of Player] load into the thoroughly fucked bird. You only stop riding after your climax has passed, heedless of his squirming as ass and prostate become oversensitive after his own orgasm has ebbed.";
	say "     Before you let your little birdie fly back up to the rafters, you grab his head roughly and pull him close. 'You're my songbird slut now, for me to use - or not use - as I see fit. There's more going on around here than just you, little birdie. Don't forget that again,' you say with a firm growl before pulling him off the table and onto the floor before walking away.";
	now lust of Icarus is 100;




to Icarusinfect:
	setmonster "Blue Chaffinch";
	choose row MonsterID from Table of Random Critters;
	if "Male Preferred" is listed in feats of Player:
		now sex entry is "Male";
	else if "Herm Preferred" is listed in feats of Player:
		now sex entry is "Both";
	else:
		now sex entry is "Female";
	infect;


[ HP of Icarus ]
[ 0 = untamed  ]
[ 1 = at bunker, no talk ]
[ 2 = talked  ]
[ 3 = taught to suck cock ]
[ 4 = sucked cock of pred again ]
[ 5 = rougher sex w/pred ]
[ 6 = had attic sex, light version ]
[ 7 = had attic sex, dark version ]
[ 8 = back ]
[ 9 = gone ]
[ 10 = back again ]
[ 50 = dom ]
[ 51 = dom - talked ]
[ 52 = sex again ]
[ 53 = did footplay scene ]
[ 54 = sex again ]
[ 55 = sex again/rim scene - ready for basement prompt ]
[ 56 = avoided basement ]
[ 57 = did basement ]

[ lust of Icarus ]
[ 0 - 6 = building frustration ]
[ 7+ = attempt to dom ]
[ 100 = sub male-only ]
[ 101 = sub m/f allowed ]

[ icarus_lastpred ]
[ 1 = avian pred ]
[ 2 = feline ]

[ icarus_cbt ]
[ 0 = refused ]
[ 2 = no data ]
[ 3 = consent ]


Icarus ends here.
