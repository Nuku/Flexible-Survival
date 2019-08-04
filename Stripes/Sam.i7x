Version 3 of Sam by Stripes begins here.
[Version 2.5 - surrendering to Rick]
[Version 2.6 - Minor maintenance and character relocation - Luneth]
[Version 3 - Added talk menu and Shrinking Shroom Expansion - Kurainyx]
[Version 3.1 - Added unbirth and cock vore shrinking shroom scenes/bound states - Kurainyx]
"Adds a fellow Researcher named Sam to the Flexible Survival game."

[ HP of Sam                                                                    ]
[ 0 - not encountered                                                          ]
[ 1 - met Sam                                                                  ]
[ 2 - agreed to help                                                           ]
[ 3 - gave first items                                                         ]
[ 4 - gave second items                                                        ]
[ 10-29: Dragontaur                                                            ]
[ 10 - no talk                                                                 ]
[ 11 - talked                                                                  ]
[ 12 - sex once                                                                ]
[ 13 - sex 2                                                                   ]
[ 14 - sex 3                                                                   ]
[ 15 - sex 4+ (vial?)                                                          ]
[ 16 - chose not to use vial                                                   ]
[ 30-49: Vixentaur                                                             ]
[ 30 - no talk                                                                 ]
[ 31 - talked                                                                  ]
[ 32 - sex once                                                                ]
[ 33 - sex + fuck                                                              ]
[ 34 - sex 3                                                                   ]
[ 35 - sex 4+ (vial?)                                                          ]
[ 36 - chose not to use vial                                                   ]
[ 50-69: Dracovixentaur                                                        ]
[ 50 - no talk                                                                 ]
[ 51 - talked                                                                  ]
[ 52 - sex once                                                                ]
[ 53 - sex twice                                                               ]
[ 54 - sex 3+                                                                  ]
[ 55 - direct herm offspring                                                   ]
[ 56 - remade into DVtaur                                                      ]
[ 98 - wild dragontaur                                                         ]
[ 99 - wild vixentaur                                                          ]
[ 100 - did not save                                                           ]

[ Hunger of Sam                                                                ]
[ 0 - Have not started Shrinking Shroom content                                ]
[ 1-8 - Sam is out of the library searching for Shrinking Shrooms              ]
[ 9 - Sam returns to library from searching for Shrinking Shrooms              ]
[ 10 - Sam has Shrinking Shrooms                                               ]
[ 11 - Opens Sam's Shrinking Shrooms sex scenes                                ]
[ 12-20 - Timer for Sam giving player a Shrinking Shroom                       ]

[ Strength of Sam                                                              ]
[ 0 - Have not been Unbirthed by Sam                                           ]
[ 1-2 - Unbirthed by Sam                                                       ]
[ 3 - Sam will start Unbirth bound state                                       ]
[ 4 - Subsequent Sam Unbirth bound state                                       ]

[ Dexterity of Sam                                                             ]
[ 0 - Have not been Cock Vored by Sam                                          ]
[ 1-2 - Cock vored by Sam                                                      ]
[ 3 - Sam will start Cock Vore bound state                                     ]
[ 4 - Subsequent Sam Cock Vore bound state                                     ]

Section 1 - Event

Table of GameEventIDs (continued)
Object	Name
Another Researcher	"Another Researcher"

Another Researcher is a situation.
The sarea of Another Researcher is "Outside".
when play begins:
	add Another Researcher to BadSpots of FurryList;
	add Another Researcher to BadSpots of MaleList;
	add Another Researcher to BadSpots of FemaleList;
	add Another Researcher to badspots of HermList;

Instead of resolving Another Researcher:
	say "     While passing along a narrow side street, you hear the not-uncommon sounds of rutting sex coming from somewhere nearby. Picking up something odd about the sounds, you cut across the alley and peek out into the street. There you find a canine finishing up in what appears to be an unchanged human male. The guy being pounded spots you and blushes a little, motioning for you to be quiet and wait. Expecting him to start changing soon, you prepare to back away, but even after the canine is done and gone, no infection appears. The guy gets up slowly and starts rearranging his clothes, waving you over. Confused but cautious, you approach him.";
	WaitLineBreak;
	if BodyName of Player is "Human" and the player is pure:
		say "     'Hey there. I didn't think I'd come across another unchanged person out here. How are you making out? Pretty crazy out here, huh?' ";
	else:
		say "     'Hey there. When I first saw you, I thought you might be another creature waiting its turn, but then I realized you weren't quite at that point yet. Pretty crazy out here, huh?' ";
	say "he asks cheerfully. You start to ask him what that was all about. 'Oh, I almost forgot. That's what I get for letting you distract me. One sec.' He pulls out a device from his pocket and pours a sample of the canine's semen into it. 'Good. That's another sample gathered and registered.'";
	say "     He pauses to wipe his hand before offering it to you. 'The name's Sam. So you're probably wondering what's going on,' he says as he motions for you to come along with him, to which you nod. 'I've been sent in as a researcher to study this strange outbreak. It's actually being caused by strange nanites. I don't really know where they came from or really much about them at all. Most of it is over my head, really. I'm just paid to go around and gather samples for pick up later.'";
	if scenario is "Researcher":
		say "     You inform him that you are here as a researcher yourself, which makes him smile all the more. 'Excellent! I was sent in with a partner, but he got a little too friendly with the locals and started dipping into the vials,' he says, making a drinking motion with his hand. 'I hope he's happy as a kitty and all, but now I'm stuck doing the work for both of us. Not that it's all bad. I'm starting to like playing around with those sexy beasts,' he says, rubbing his recently fucked ass. 'Oh, I hope that's not a bad sign,' he jokes.";
	else:
		say "     You start asking him why he's not turning into a dog right now, but he grins. 'Immunization resistance. The university that's paying me's got a sponsorship deal with RSX, so they gave me some treatment to make me resistant. Not a hundred percent guaranteed, you know, but it's held up for now. Lets me work on this project and gather samples,' he says, holding up a small vial disgorged from his handheld device. 'Concentrated nanites courtesy of my erstwhile lover back there. I must say, I wouldn't have gone for that sort of thing in the past, but I'm starting to like playing around with those sexy beasts,' he says, rubbing his recently fucked ass. 'Oh, I hope that's not a bad sign,' he jokes.";
		say "     'I was sent in with a partner, but he got a little too friendly with the locals and started dipping into the vials,' he says, making a drinking motion with his hand. 'I hope he's happy as a kitty and all, but now I'm stuck doing the work for both of us.'";
	WaitLineBreak;
	say "     Arriving at a run down home with boarded up windows, he motions you to quietly follow him around back and down through a door into the basement. 'I used to live near here. This place has been boarded up for a few years, though the local teens knew how to get in. Makes for a safe hiding spot to set up our temporary lab,' he says, closing the door behind you and leading you to the back of the room where a small research station's been set up. 'Now, the main reason I've asked you down here is to see if you might be willing to help me out with my work. Since I'm a man down, I could use a hand gathering samples. I've got a deadline to meet, but I can't run around the whole city to gather the samples and nanites by myself. I hope you'll help me out.'";
	now HP of Sam is 1;
	increase score by 10;
	move player to Mini-Lab;
	now Mini-Lab is known;
	now battleground is "void";
	now Another Researcher is resolved;


Section 2 - Mini-Lab

Table of GameRoomIDs (continued)
Object	Name
Mini-Lab	"Mini-Lab"

Mini-Lab is a room. It is fasttravel. It is private.
The description of Mini-Lab is "[minilabdesc]".
The invent of Mini-Lab is { "cot" }.

the scent of Mini-Lab is "[minilabscent]".

to say minilabscent:
	if HP of Sam is not 100:
		say "The basement housing the research station smells strongly of dust and mildew, as well as dying traces of older smells from when the local teens would come here to drink.";
	else:
		say "The basement has a wet, musky scent hanging in the air. There are scents you recognize faintly as being from creatures you've encountered before, but the whole of that is largely buried beneath smells of sex and arousal.";


to say minilabdesc:
	if HP of Sam <= 4:
		say "     Tucked into the corner of basement in the long-abandoned home, Sam has set up his mini-lab. Here the researcher stores and analyzes the nanites and samples he's gathered out in the city. His equipment's been set up on a small table with a dented folding chair for him to sit on. There are numerous racks of labelled test tubes vials on the table and more on a small bookshelf behind it. The collection of vials seems quite impressive, with several marked with creatures you've not even seen yet.";
		say "     The basement itself isn't much to look at, having several broken bottles and lots of graffiti from having been used as a hang-out for the local kids. It looks like Sam's made some effort to clean it up, but mainly in the form of sweeping the trash into a few corners";
		if "cot" is listed in invent of Mini-Lab:
			say ". Near the work area, there are two sleeping bags and some supplies, the second probably belonging to his now absent partner.";
		else:
			say ". Near the work area, there is a sleeping bag and some supplies.";
	else:
		say "     Tucked into the corner of basement in the long-abandoned home are the broken remains of his mini-lab. In the chaos of the fight, the equipment was destroyed and the nanite vials broken. With the their contents spilled onto the ground and walls in that area, something strange has started to occur. The concrete walls in this corner have become flesh-like and shifting, with vague impressions of faces, muzzles and sexual organs. These do not last long or ever fully form, but it seems the over-abundance of nanites are still at work. Realizing that Sam could have very well ended up fused with that mess or been turned into an ambulatory monstrosity like that, you don't feel so bad about how things did turn out. You back away from the pulsating wall-flesh as it reaches out with a gray pseudopod. You decide not to risk coming here again once your business is through.";
		now Mini-Lab is unknown;


Section 3 - Sam the Researcher

Table of GameCharacterIDs (continued)
object	name
Sam	"Sam"

Sam is a man. Sam is in Mini-Lab.
The description of Sam is "[samdesc]".
The conversation of Sam is { "Thanks." }.
the scent of Sam is "[samscent]".
samformtalk is a truth state that varies. samformtalk is usually false.

to SamIconRestore:
	if HP of Sam >= 30 and HP of Sam <= 49:
		now icon of Sam is figure of Vixentaur_icon;
	else if HP of Sam >= 50 and HP of Sam <= 69:
		now icon of Sam is figure of Dracovixentaur_icon;

to say samscent:
	if HP of Sam <= 4:
		say "Sam himself smells human, though there is the lingering scent of several of his recent [']sample donors['] as well.";
	else if HP of Sam is 10 or HP of Sam is 11 or HP of Sam is 12:
		say "Sam has an arousing, spicy smell coming from his draconic body.";
	else if HP of Sam >= 13 and HP of Sam <= 29:
		say "Sam has an arousing, spicy smell coming from his draconic body. Aside from his own musky scent, there's traces of the creatures he's recently fucked about him as well. You find yourself becoming aroused just by being near him.";
	else if HP of Sam is 30 or HP of Sam is 31 or HP of Sam is 32:
		say "Samantha has an arousing, perfumy smell coming from her vulpine body.";
	else if HP of Sam >= 33 and HP of Sam <= 49:
		say "Samantha has an arousing, perfumy smell coming from her vulpine body. Aside from her own flowery scent, there's traces of the creatures she's recently had fuck her as well. You find yourself becoming aroused just by being near her.";
	else if HP of Sam is 50 or HP of Sam is 51 or HP of Sam is 52:
		say "Samantha has an arousing mix of spicy and perfumed scents coming from her dracovixen body.";
	else if HP of Sam >= 53 and HP of Sam <= 69:
		say "Sammie has an arousing mix of spicy and perfumed scents coming from her dracovixen body. Aside from the herm's own scent, there's traces of the creatures she's recently fucked and who have recently fucked her as well. You find yourself becoming aroused just by being near her.";


to say samdesc:
	if HP of Sam >= 1 and HP of Sam <= 4:
		say "     Sam is an average looking human male. He's roughly six feet tall and with a strong build. Having seen him undressed when you first encountered him, you know he's physically fit, neither thin nor chiseled. The constant exercise of traveling around the city to fight and fuck monsters has toughened him up. He's got brown hair and eyes. There is a bit of stubble on his face, probably seeing little need to shave regularly out here. At 21 years old and in university, he's been sent here as part of a research project to gather samples of the nanites. He's [one of]hard at work at his lab station, running analyzes on his recent acquisitions[or]taking a short break and is stretched out on his sleeping bag[or]grabbing a quick snack[or]checking his gear before having to go out again[purely at random].";
	else if HP of Sam >= 10 and HP of Sam <= 29:
		say "     After his confrontation and the ensuing accident, Sam has become a male dragontaur creature thanks to your quick assistance. He's gained about a foot and a half in height from the transformation, putting him something over seven feet tall. His draconic head has a long, pointed muzzle with a slight curve at the end. His blue scales darken towards the back of his head as they approach the base of ivory horns which jut from the back of his head. There are three smaller horns to each side and a larger pair at the top. His upper body is generally human in shape, but covered in azure scales. He's become quite toned through the change, his chest showing firm pecs and hard abs. His hands are a cross between human hands and his more draconic clawed feet.";
		say "     His lower body is that of a compact, but powerful beast, with strong limbs and a stocky frame to support his weight. His azure scales give way to harder, steel blue plates along his underbelly. Atop the back of his tauric body are a pair of draconic wings he keeps folded alongside his sides. He has a long lizard tail ending in a spaded tip. Beneath his lower body hangs his plump sheath and large balls.";
	else if HP of Sam >= 30 and HP of Sam <= 49:
		say "     After his confrontation and the ensuing accident, Sam has become a female vixentaur creature thanks to your quick assistance. She's gained about a foot in height from the transformation, putting her something close to seven feet tall. Her vulpine muzzle is alluringly beautiful, with long lashes, pretty coral eyes and long, flowing cerise hair. Her upper body is generally human in shape, but covered in pink fur. She has become quite curvaceous, with a lovely bosom, slender waist and round hips blending into her tauric lower half. Her hands are largely human in shape but with velvety pawpads and small, painted claws.";
		say "     Her lower body is that of a slender fox, with shapely legs and cute paws. Her pink fur becomes a very light shade at her chest and underbelly, as does the tip of her tail. What would normally be the black of her socks is a deep pink. She has a long, vulpine tail covered in fluffy fur. Beneath that tail is her new pussy, wet and juicy. Along her underbelly, she has three pairs of smaller breasts with perky, rosy nipples.";
	else if HP of Sam >= 50 and HP of Sam <= 69:
		say "     After the confrontation and being given both vials, Sam has become a hermaphroditic dracovixentaur creature. She's gained a little over a foot of height from her original human form, putting her at roughly seven feet tall. Her face and muzzle is a mix of vulpine and draconic features, making for an alluring combination. She has long lashes, pretty orchid colored eyes and long, lilac hair. She has a pair of vulpine ears and some ivory horns which poke out from her flowing hair. Her upper body is generally human in shape, but covered in lilac fur at her shoulders and down the front of it. Her arms, back and sides are covered in silky smooth scales that are a richer, lavender color. She has become quite curvaceous, with a lovely bosom, slender waist and round hips blending into her tauric lower half. Her hands are largely human in shape but with velvety pawpads and small, painted claws, almost as if she were wearing furry gloves.";
		say "     Her lower body is a similar mix of dragon and fox. Her underbelly and paws are covered in lilac fur while the rest have the smooth scales. She has a pair of draconic wings folded against her tauric body. Her tail is fluffy and vulpine in appearance, but you know it to house a strong, draconic tail under that fluff - of which the spaded tip is a constant reminder. Beneath that tail is her damp pussy and plump sheath and balls. Along her underbelly, she has three pairs of smaller breasts with perky, lavender nipples.";
	else:
		say "ERROR-Sam-[HP of Sam]L: You should not be able to find me!";


Instead of conversing the Sam:
	if HP of Sam > 50:		[Talk menu for Sam's dracovixentaur form]
		say "     'Hey there, [if player is not defaultnamed], [name of player][end if],' Sam greets while looking through several vials laid out on a nearby table. The scientist glances up to give you a welcoming smile for a brief moment before returning their attention to their work.'";
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		[]
		choose a blank row in table of fucking options;
		now title entry is "Talk";
		now sortorder entry is 1;
		now description entry is "See how Sam is doing";
		[]
		if hunger of Sam is 0 and vorelevel > 1:
			choose a blank row in table of fucking options;
			now title entry is "Research";
			now sortorder entry is 2;
			now description entry is "Ask how Sam is doing with their research";
		[]
		if hunger of Sam > 0:
			choose a blank row in table of fucking options;
			now title entry is "Shrinking Shrooms";
			now sortorder entry is 3;
			now description entry is "Talk to Sam about the Shrinking Shrooms";
		[]
		sort the table of fucking options in sortorder order;
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
					clear the screen and hyperlink list;
					now sextablerun is 1;
					if nam is "Talk":
						say "[SamTalk]";
					if nam is "Research":
						say "[SamShroom]";
					if nam is "Shrinking Shrooms":
						say "[SamShroom]";
					wait for any key;
			else if calcnumber is 0:
				now sextablerun is 1;
				say "     You step back from the taur, shaking your head slightly. Sam shrugs and returns to their experiments.";
				wait for any key;
			else:
				say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
		clear the screen and hyperlink list;
	else:
		say "[SamTalk]";

to say SamTalk:
	if HP of Sam is 1:
		say "     'I've really got a lot on my plate here with trying to deal with all the tests they need me to take care of now that I'm on my own. Rick and I used to take shifts, but now I've got to do it all. So I was hoping I could get you to give me a hand. There's some tests that they want me to run on some samples from the City Zoo. Rick was working that area when he decided it'd be more fun to just join the fun full-time. I'd lose too much time traveling back and forth out there to be able to keep up with the rest of the work. They want samples of cheetah milk and rhino cum, though I'll make some vials out of it when I'm done.";
		if Zoo Entrance is unknown:
			say "     'I haven't made a trip out there yet myself, but he did tell me the route he found to get there. It should be fairly safe and let you avoid the really unsafe or blocked sections.'";
			now Zoo Entrance is known;
		say "     'I've got some extra supplies. I can give you some if you'll gather two samples of both cheetah milk and rhino cum. I'd really appreciate it. Here, you can even take this bottle of water as a down payment.' Deciding it might be a good way to get some extra supplies, you agree to give it a shot. In addition, helping Sam finish up might be your ticket out of this whole mess if you can tag along with him.";
		increase carried of water bottle by 1;
		now HP of Sam is 2;
	else if HP of Sam is 2:
		if carried of cheetah milk < 2 or carried of rhino cum < 2:
			if a random chance of 1 in 2 succeeds:
				say "     'I want to thank you for deciding to help me with my work. I need to get this stuff all done and I can't do it alone. Don't forget, I'm looking for two samples of both cheetah milk and rhino cum for the tests I need to do.'";
			else:
				say "     [one of]'I want to thank you for giving me a hand with this. I don't think I could finish on my own.'[or]'I've got some other tests to run, but then I've got to go right back out and find a few more critters to fill out my quota.'[or]'I wouldn't have considered messing around with a guy before this, but I must say some of those males out there can be a lot of fun.'[or]'Some of those mutants out there are actually pretty sexy. Once you learn to overlook stuff like fur or scales, you can see that there's some really hot ladies (and dudes) out there.'[or]'There's such a wild mix of creatures out there. It's getting kind of fun finding them and just having some wild sex. You should try letting a few of them win more often.'[or]'This resistance treatment's been a big help since I don't have to fight off all the creatures. Though I do have to shoo away those I've already gotten samples from or I don't have the time and energy left to have fun when I finally track down a new one I need.'[or]'I think I'm in the mood to find a [if a random chance of 1 in 3 succeeds]herm[else if a random chance of 1 in 2 succeeds]female[else]male[end if] next time. Hopefully there's one around that I haven't already got.'[or]'It's getting harder to track down creatures I haven't already gotten enough samples from,' he says, motioning to wide array of small vials on the racks.[at random]";
		else:
			delete cheetah milk;
			delete cheetah milk;
			delete rhino cum;
			delete rhino cum;
			say "     Sam takes the samples you've brought and sets them on the table. 'Wonderful, [if Player is female]babe[else]man[end if]. This is a big help. I'm going to get started on these tests right away. Next stuff I'm going to need is some gel from those jelly-people in the red light district of town. There's three different kinds of them - pink, blue and purple - and I'll need a sample from each of them. Got to analyze what makes them different. And here, take this stuff as a reward for helping me out,' he adds, handing you some dried food and another bottle of water.";
			if Entrance to the Red Light District is unknown:
				say "     'Since you haven't been there before - let me tell you - that place is really wild. I mean, I had lots of fun there and all gathering nanite samples, but the creatures there can be extra intense. I was really tempted to go back and visit that tigress in the alley again. She was quite the ride and well worth the milk I gave her.' He then proceeds to show you a route into the city's red light district.";
				now Entrance to the Red Light District is known;
			increase carried of food by 1;
			increase carried of water bottle by 1;
			increase score by 20;
			now HP of Sam is 3;
	else if HP of Sam is 3:
		if pink gel is owned and blue gel is owned and purple gel is owned:
			delete pink gel;
			delete blue gel;
			delete purple gel;
			say "     You set down the samples of gel you'd collected on the work table. 'Awesome! That's another one of the tests on the list I can finish off. Let's see, how about you grab me some eagle feathers next? I'll need at least two of them, I think. Those eagles are flying out over the Dry Plains to the east of the city.'";
			if Dry Plains is unknown:
				say "     'Things are pretty open out there with few buildings still left standing. It used to be mostly suburbs and small ranches, but something's making them all collapse really quickly. Don't expect to find as much going on out there, but it's pretty open so you shouldn't have too much trouble finding some of those eagles.'";
				now Dry Plains is known;
			say "     He digs around in his supplies and pulls some stuff out for you. 'Here, how about some snacks this time? Some sugar'll keep you going.'";
			increase carried of soda by 1;
			increase carried of chips by 1;
			increase score by 20;
			now HP of Sam is 4;
		else:
			if a random chance of 1 in 2 succeeds:
				say "     'Please keep looking for those gel samples. Remember, I'll need one of each from those gelatinous people out in the red light district of town.";
			else:
				say "     [one of]'I want to thank you for giving me a hand with this. I don't think I could finish on my own.'[or]'I've got some other tests to run, but then I've got to go right back out and find a few more critters to fill out my quota.'[or]'I wouldn't have considered messing around with a guy before this, but I must say some of those males out there can be a lot of fun.'[or]'Some of those mutants out there are actually pretty sexy. Once you learn to overlook stuff like fur or scales, you can see that there's some really hot ladies (and dudes) out there.'[or]'There's such a wild mix of creatures out there. It's getting kind of fun finding them and just having some wild sex. You should try letting a few of them win more often.'[or]'This resistance treatment's been a big help since I don't have to fight off all the creatures. Though I do have to shoo away those I've already gotten samples from or I don't have the time and energy left to have fun when I finally track down a new one I need.'[or]'I think I'm in the mood to find a [if a random chance of 1 in 3 succeeds]herm[else if a random chance of 1 in 2 succeeds]female[else]male[end if] next time. Hopefully there's one around that I haven't already got.'[or]'It's getting harder to track down creatures I haven't already gotten enough samples from,' he says, motioning to wide array of small vials on the racks.[at random]";
	else if HP of Sam is 4:
		if carried of eagle feather >= 2:
			now featherready is true;
			assaultonminilab;
		else:
			if a random chance of 1 in 2 succeeds:
				say "     'Keep an eye out for some eagle feathers. I'll need at least two for the upcoming experiment. There should be plenty of eagles flying around the Dry Plains outside of the city.";
			else:
				say "     [one of]'I want to thank you for giving me a hand with this. I don't think I could finish on my own.'[or]'I've got some other tests to run, but then I've got to go right back out and find a few more critters to fill out my quota.'[or]'I wouldn't have considered messing around with a guy before this, but I must say some of those males out there can be a lot of fun.'[or]'Some of those mutants out there are actually pretty sexy. Once you learn to overlook stuff like fur or scales, you can see that there's some really hot ladies (and dudes) out there.'[or]'There's such a wild mix of creatures out there. It's getting kind of fun finding them and just having some wild sex. You should try letting a few of them win more often.'[or]'This resistance treatment's been a big help since I don't have to fight off all the creatures. Though I do have to shoo away those I've already gotten samples from or I don't have the time and energy left to have fun when I finally track down a new one I need.'[or]'I think I'm in the mood to find a [if a random chance of 1 in 3 succeeds]herm[else if a random chance of 1 in 2 succeeds]female[else]male[end if] next time. Hopefully there's one around that I haven't already got.'[or]'It's getting harder to track down creatures I haven't already gotten enough samples from,' he says, motioning to wide array of small vials on the racks.[at random]";
	else if HP of Sam is 10: [Dragontaur form]
		say "     'Thanks again for helping me out back there. I don't want to think about what I would have ended up if you were there to help,' he shudders a little. 'But it's all good now. I've got this hunky new body and I'm itching to try it out. I can't wait to try playing with all those fun creatures out there again now that I'm a big, strong dragon.' Noticing the look you're giving him, he's quick to hold up the device you saw him with that first day. 'Got to get to work on gathering all my samples again,' he says with a grin. 'Not that I can't spare some time to show you how nice it is to have a big, strong dragon atop you,' he rumbles.";
		now HP of Sam is 11;
	else if HP of Sam is 11:
		say "     [one of]'I managed to save most of my supplies, but I'll need the rest for myself. This big body of mine's got a big appetite. But at least you don't have to worry about feeding me.'[or]'I'm enjoying this new body of mine. I feels so much better than my old, weak one. I wonder why I ever resisted changing in the first place.'[or]'I'm looking forward to breeding a few whelps in those females out there.'[or]'I should see if I can find that dog you saw me with and [']return the favor['] as it were,' he says with a sly grin.[or][if number of bunkered people + number of booked people > 2]'I've already gathered samples from the others here,' he says. 'Not like that,' he adds quickly, 'just refined from blood samples they gave.'[else]'If you happen to rescue any others who've been transformed, I'll take samples from them as well.'[end if][or]'My resistance treatment still seems to be holding out despite my accident. That means I can have all the fun I like and still stay a sexy dragon taur.'[or]He runs a hand along your body. 'You should try letting the sexy dragon beast mount you some time. I promise this ridged beast I'm packing will make you roar in ecstasy,' he rumbles, sliding his forked tongue along your cheek.[or]'There's a lot of sexy beasts out there. You should let a few more of them have their way with you. Then you can come back here so I can have my way with you too. That way, we both get to enjoy it.'[or]'I think I'm in the mood to find a [if a random chance of 1 in 2 succeeds]female[else if a random chance of 1 in 2 succeeds]herm[else]male[end if] next time. Hopefully there's one around that I haven't tried before.'[or]'I'm glad you weren't kidding about having enough space for me. This is a pretty sweet setup you have here,' he says, looking at the fortified surroundings.[at random]";
	else if HP of Sam is 12:
		say "     [one of]'I managed to save most of my supplies, but I'll need the rest for myself. This big body of mine's got a big appetite. But at least you don't have to worry about feeding me.'[or]'I'm enjoying this new body of mine. I feels so much better than my old, weak one. I wonder why I ever resisted changing in the first place.'[or]'I'm looking forward to breeding a few whelps in those females out there.'[or]'I should see if I can find that dog you saw me with and [']return the favor['] as it were,' he says with a sly grin.[or][if number of bunkered people + number of booked people > 2]'I've already gathered samples from the others here,' he says. 'Not like that,' he adds quickly, 'just refined from blood samples they gave.'[else]'If you happen to rescue any others who've been transformed, I'll take samples from them as well.'[end if][or]'My resistance treatment still seems to be holding out despite my accident. That means I can have all the fun I like and still stay a sexy dragon taur.'[or]He runs a hand along your body. 'You should try letting the sexy dragon beast mount you again. I can tell your body wants this ridged beast I'm packing inside you again,' he rumbles, giving your ass a squeeze.[or]'There's a lot of sexy beasts out there. You should let a few more of them have their way with you. Then you can come back here so I can have my way with you too. That way, we both get to enjoy it.'[or]'I think I'm in the mood to find a [if a random chance of 1 in 2 succeeds]female[else if a random chance of 1 in 2 succeeds]herm[else]male[end if] next time. Hopefully there's one around that I haven't tried before.'[at random]";
	else if HP of Sam is 13 or HP of Sam is 14 or HP of Sam is 16:
		say "     [one of]'You don't have to worry about feeding me. I can take care of myself,' the strong dragon rumbles.[or]'I'm much preferring this new body of mine. I wonder why I ever resisted changing in the first place.'[or][if number of bunkered people + number of booked people > 2]'I've already gathered samples from the others here,' he says. 'Not like that,' he adds quickly, 'just refined from blood samples they gave.'[else]'If you happen to rescue any others who've been transformed, I'll take samples from them as well.'[end if][or]'My resistance treatment still seems to be holding out despite my big change. That means I can have all the fun I like and still stay a sexy dragon taur.'[or]He runs a hand along your body. 'You should try letting the sexy dragon beast mount you again. I can tell your body wants this ridged beast I'm packing inside you again,' he rumbles, giving your ass a squeeze.[or]'I'm looking forward to mounting you again. Being stuffed full of dragon cock is definitely what that horny body of your needs to satisfy it,' he rumbles, licking your cheek slowly with his forked tongue.[or]'There's a lot of sexy beasts out there. You should let a few more of them have their way with you. Then you can come back here so I can have my way with you too. That way, we both get to enjoy it.'[or]'I think I'm in the mood to find a [if a random chance of 1 in 2 succeeds]female[else if a random chance of 1 in 2 succeeds]herm[else]male[end if] next time. Hopefully there's one around that I haven't tried before.'[at random]";
	else if HP of Sam is 15:
		say "     Looking over at Sam, you can't help but wonder if you made the right choice. He's becomes such a strong, aggressive creature and can fuck and breed pretty much any creature he wants out there. He's probably already started making more dragontaurs out there already. Given his obvious strength and eagerness for sex, they could end up becoming a menace out there.";
		say "     Your thoughts have you recall that you hung onto that other vial. You pull it out from a pocket of your pack and look it over. The label is marked as [']#039 - Pink Vixen - Female[']. That certainly sounds safer and friendlier than a powerful dragontaur. It might curb his aggressive nature before he goes over the edge and becomes feral. That'd be especially bad if he did it while in the library.";
		say "     [bold type]Shall you try slipping it to him or leave well enough alone?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Slip it to him.";
		say "     ([link]N[as]n[end link]) - Leave him alone.";
		if Player consents:
			LineBreak;
			say "     You pour the vial into an empty water bottle and head over to Sam. Saying it's a drink you picked up, you offer him a taste of the last bit of it. He looks up from what appears to be a list of sexual conquests to take the drink. For a moment, you're hopeful he'll try it, but he stops and looks the pale rose liquid over and gives it a sniff.";
			say "     'What is this? What're you trying to slip me?' he asks, getting upset. 'This is from a nanite vial, isn't it?' he growls. Afraid he'll throw it away and you'll lose your chance, you grab the bottle from him. You try to force it to his mouth, insisting it's for his own good, but he growls and pushes you away[if number of bunkered people + number of booked people > 2]. The others move away, uncertain what's taking place and not yet prepared to take sides in the escalating fight[else if number of bunkered people + number of booked people is 2]. The other person moves away, uncertain what's taking place and not yet prepared to take sides in the escalating fight[end if]. You cap the bottle just in time before the enraged dragontaur charges.";
			LineBreak;
			now inasituation is true;
			challenge "Dragontaur";
			now inasituation is false;
			if fightoutcome >= 10 and fightoutcome <= 19:
				say "     Your fight with the powerful male over, you pry open his draconic muzzle and pour the vial down his throat, repeating to him that it's for his own good. He coughs and sputters a little, but swallows it down. He moans as a flash of pink washes over his eyes, soon his dark scales are turning from blue to purple as the hardened plates at his chest begin to fade. You stroke his head soothingly as his muzzle narrows and becomes more feminine with soft lines and smaller horns. Lilac hair grows from his head, flowing back from behind the horns and down his back as it glows to a long and luxurious length.";
				say "     Sam's armored body continues to change. What was once hard plates at his chest and underbelly become plush with lilac fur and small breasts begin to swell up with hard lavender nipples, the same shade that the changing dragontaur's scales have become. As Sam's gender begins to change, gaining a damp pussy behind her furred sheath and ballsack. She moans and moves her hands to the bosom at her chest and rubs them tentatively at first, but with growing enthusiasm.";
				WaitLineBreak;
				say "     'Ohh... mmm... I can see why you wanted me to try this,' she moans with growing excitement. 'I'm sorry I made such a fuss about it. This is great!' she adds before pulling you in for a kiss. Her tongue dives into your mouth to wrestle with yours. You can feel that it's broader and shorter now, but still forked at the tip.";
				say "     After breaking the kiss, she urges you to move downwards as she rolls onto her side and spreads her hind legs, clearly in need of relief for her new pussy. Her cock and balls remain, her shaft keeping the ridges and overall draconic shape but having gained a vulpine knot as well. Eying it, you lick your lips, but continue onwards, wanting a go at Sam's virgin cunt. Getting into position, you stroke over her vulpine tail, feeling the thick, strong dragon tail hidden beneath the fluffy fur and still able to see the spaded tip at its end. With one hand rubbing over that fluffy tail, you bring the other to her wet folds and caress them, drawing a delightful yip of pleasure from Sam, which is echoed when you lean forward and start licking at her dripping snatch.";
				WaitLineBreak;
				if Player is male:
					say "     After some fast tonguework gets her wet and dripping, you line up your cock and start to ease yourself into her. She rumbles and yips in pleasure as you start fucking her. 'Oh, that feels sooooo good. I really should have gotten a pussy earlier. Mmm baby... come on and breed me,' she rumbles, running her paws over her new body in continued exploration of the new delights her hermaphroditic hybrid form can bring. Her strong tail winds around you in a fluffy hug, pulling you into each thrust.";
					say "     You place a hand at the nearest of her lower breasts, drawing a low moan from her as you tease its nipple. She has three rows of breasts along her underbelly and, from the extent of her reaction, they're quite sensitive. Your other hand moves to another pleasurable spot, rubbing at her clit and resulting in her pussy quivering around your cock at this new delight. You grin and pound harder and faster into her wet vulpine cunt, cumming hard as you provide her with her first female orgasm. The cock throbs and twitches against her belly, spraying her seed across herself moments later.";
				else:
					say "     As your continued tonguework gets her wet and dripping, you slip a pair of fingers into her snatch and start fingerfucking the horny herm hybrid. 'Oh, that feels sooooo good. I really should have gotten a pussy earlier. Mmm baby... I can hardly wait to try this out with a real cock,' she rumbles, running her paws over her new body in continued exploration of the new delights her hermaphroditic hybrid form can bring. Her strong tail winds around you in a fluffy hug, hugging you tightly.";
					say "     You slide your free hand across her belly and cup the nearest of her lower breasts, drawing a low moan from her as you tease its nipple. She has three rows of breasts along her underbelly and, from the extent of her reaction, they're quite sensitive. You slip a third finger into her vagina and pump the digits faster, using your thumb to rub over her clit, resulting in her pussy quivering around your fingers at this new delight. You grin and work her wet vulpine cunt all the faster, soon driving her to her first female orgasm. The cock throbs and twitches against her belly, spraying her seed across herself moments later.";
				WaitLineBreak;
				say "     Her tail uncoils and flops down on the ground as she's left panting and rumbling softly in ecstasy from her orgasm. You smile down at her and wipe yourself off on a dry patch of her fur. She motions for you to come around and she kisses you passionately, her arms around you in a tight hug.";
				say "     'That was really nice. I can't wait to try it again. Mmm... there's so many creatures out there I haven't tried with a pussy yet. I'm going to have to start all over again,' she says with a dreamy smile on her face, already imagining all the new fun she can have. You get the sinking feeling that you haven't really helped the situation much. Well, at least Sam isn't nearly so aggressive now.";
				now HP of Sam is 56;
				now icon of Sam is figure of Dracovixentaur_icon;
				now lastfuck of Sam is turns;
				tripletaur_active; [activate all three taur creatures]
			else if fightoutcome >= 20 and fightoutcome <= 29:
				say "     Unable to get up due to your injuries, you cannot stop Sam as he goes on a rampage, roaring angrily. He tosses the bottle you intended for him against a wall, splattering its contents across the concrete. 'You piece of scum. I trusted you, but you're no better than Rick in the end. I don't want to have anything to do with you ever again,' he roars as he shakes you so roughly you black out from the pain. By the time you come to, he's gathered up his remaining supplies and equipment and has left the library for good. It is some time before your body's healed enough for you to get up, leaving you plenty of time to wonder if you made the right decision while you watch a patch of pink fur grow on the wall.";
				now HP of Sam is 98;
				now Sam is nowhere;
				dragontaur_active; [activate Dragontaur creature]
			else:
				say "     Rather than keep fighting Sam, you begin a tactical retreat, leading Sam out of the library[if the number of booked people + number of bunkered people > 2] while the others cautiously stay out of the way[else if the number of booked people + number of bunkered people is 2] while your other friend there stays out of the way[end if]. Once outside, Sam growls in frustration and takes to the air on his large wings. 'You piece of scum. You're no better than Rick. I don't want to have anything to do with you ever again,' he roars, unleashing a large gout of fire into the air before flying off. With him safely gone, you dump out the vial fluid that's come between you both and wonder if you made the right decision.";
				now HP of Sam is 98;
				now Sam is nowhere;
				dragontaur_active; [activate Dragontaur creature]
		else:
			LineBreak;
			say "     Rather than betray your friend's trust, you decide against using it on him. You toss the vial into the trash disposal rather than risk being tempted again.";
			now HP of Sam is 16;
			dragontaur_active; [activate Dragontaur creature]
	else if HP of Sam is 30: [Vixentaur form]
		say "     'Thanks again for helping me out back there. I don't want to think about what I would have ended up if you were there to help,' she shudders a little. 'But it's all good now. I've got this sexy new body. It's a little strange to be female now, but I'm itching to try it out and seeing what it's like to be Samantha instead. I can't wait to try playing with all those fun creatures out there again now that I've got a juicy pussy for them to sample.' Noticing the look you're giving him, she's quick to hold up the device you saw her with that first day. 'Got to get to work on gathering all my samples again,' she says with a grin. 'Not that I can't spare some time to show you just how much I appreciate your help,' she purrs.";
		now HP of Sam is 31;
	else if HP of Sam is 31:
		if a random chance of 1 in 3 succeeds and samformtalk is false:
			say "     'Rick was the one who'd found the pink vixen somewhere. From the way he talked about it, she was a whole lot of fun and I was a bit jealous he'd met her.' She runs her paws over her shapely body. 'But now that I am one, it's even better since I get to have all the fun SHE was having. And more, [']cause I'm a hot taur as well,' she says with a giggle.";
			now samformtalk is true;
		else:
			say "     [one of]'I managed to save most of my supplies, but I'll need the rest for myself. This big body of mine's got a big appetite. But at least you don't have to worry about feeding me.'[or]'I'm enjoying this new body of mine. I feels so much better than my plain old one. I wonder why I ever resisted changing in the first place.'[or]'I'm looking forward to finding some males out there to breed a few kits in me. Just to see what it's like,' she adds with a grin.[or]'I should see if I can find that dog you saw me with and see how different he'll feel in my cunny,' she says with a sly grin.[or][if number of bunkered people + number of booked people > 3]'I've already gathered samples from the others here,' she says. 'Not like that, silly!' she adds with a giggle. 'Just refined from blood samples they gave.'[else]'If you happen to rescue any others who've been transformed, I'll take samples from them as well.'[end if][or]'My resistance treatment still seems to be holding out despite my accident. That means I can have all the fun I like and still stay a sexy vixen taur.'[or]She runs a hand along your body. 'You should try having a little fun with the horny vixen beast some time. I promise this hot bod of mine will have you howling in ecstasy atop me,' she moans, pressing her furry melons against you while giving you a hug.[or]'There's a lot of sexy beasts out there. You should let a few more of them have their way with you. Then you can come back here and have your way with me, too. That way, we both get to enjoy it.'[or]'I think I'm in the mood to find a [if a random chance of 1 in 2 succeeds]male[else if a random chance of 1 in 2 succeeds]female[else]herm[end if] next time. Hopefully there's one around that I haven't tried before.'[or]'I'm glad you weren't kidding about having enough space for me. This is a pretty sweet setup you have here,' she says, looking at the fortified surroundings.[or]'I guess I'll have to get used to being Samantha now,' she says with a giggle.[at random]";
	else if HP of Sam is 32:
		if a random chance of 1 in 3 succeeds and samformtalk is false:
			say "     'Rick was the one who'd found the pink vixen somewhere. From the way he talked about it, she was a whole lot of fun and I was a bit jealous he'd met her.' She runs her paws over her shapely body. 'But now that I am one, it's even better since I get to have all the fun SHE was having. And more, [']cause I'm a hot taur as well,' she says with a giggle.";
			now samformtalk is true;
		else:
			say "     [one of]'I managed to save most of my supplies, but I'll need the rest for myself. This big body of mine's got a big appetite. But at least you don't have to worry about feeding me.'[or]'I'm enjoying this new body of mine. I feels so much better than my plain old one. I wonder why I ever resisted changing in the first place.'[or]'I'm looking forward to finding some males out there to breed a few kits in me. Just to see what it's like,' she adds with a grin.[or]'I should see if I can find that dog you saw me with and see how different he'll feel in my cunny,' she says with a sly grin.[or][if number of bunkered people + number of booked people > 3]'I've already gathered samples from the others here,' she says. 'Not like that, silly!' she adds with a giggle. 'Just refined from blood samples they gave.'[else]'If you happen to rescue any others who've been transformed, I'll take samples from them as well.'[end if][or]'My resistance treatment still seems to be holding out despite my accident. That means I can have all the fun I like and still stay a sexy vixen taur.'[or]She runs a hand along your body. 'You should have some more fun with the horny vixen beast soon[if Player is male]. I want to have that hard cock of you stuffed inside me[else]. Maybe you could even find a nice cock for yourself so you can mount me properly[end if],' she moans, pressing her furry melons against you while giving you a hug.[or]'There's a lot of sexy beasts out there. You should let a few more of them have their way with you. Then you can come back here and have your way with me, too. That way, we both get to enjoy it.'[or]'I think I'm in the mood to find a [if a random chance of 1 in 2 succeeds]male[else if a random chance of 1 in 2 succeeds]female[else]herm[end if] next time. Hopefully there's one around that I haven't tried before.'[or]'I'm glad you weren't kidding about having enough space for me. This is a pretty sweet setup you have here,' she says, looking at the fortified surroundings.[or]'I guess I'll have to get used to being Samantha now,' she says with a giggle.[at random]";
	else if HP of Sam is 33 or HP of Sam is 34:
		if a random chance of 1 in 3 succeeds and samformtalk is false:
			say "     'Rick was the one who'd found the pink vixen somewhere. From the way he talked about it, she was a whole lot of fun and I was a bit jealous he'd met her.' She runs her paws over her shapely body. 'But now that I am one, it's even better since I get to have all the fun SHE was having. And more, [']cause I'm a hot taur as well,' she says with a giggle.";
			now samformtalk is true;
		else:
			say "     [one of]'I don't need to worry about feeding me. I can take care of myself,' the sexy vixen purrs.[or]'I'm much preferring this new body of mine. I wonder why I ever resisted changing in the first place.'[or]'I'm looking forward to finding some males out there to breed a few kits in me. Just to see what it's like,' she adds with a grin.[or]'I should see if I can find that dog you saw me with and see how different he'll feel breeding me properly,' she says with a sly grin.[or][if number of bunkered people + number of booked people > 3]'I've already gathered samples from the others here,' she says. 'Not like that, silly!' she adds with a giggle. 'Just refined from blood samples they gave.'[else]'If you happen to rescue any others who've been transformed, I'll take samples from them as well.'[end if][or]'My resistance treatment still seems to be holding out despite my big change. That means I can have all the fun I like and still stay a sexy vixen taur.'[or]She runs a hand along your body. 'You should have some more fun with the horny vixen beast soon[if Player is male]. I can tell you want to stuff your cock inside me again[else]. You just need to find yourself a cock and you can get to mounting me properly[end if],' she moans, pressing her furry melons against you while giving you a hug.[or]'There's a lot of sexy beasts out there. You should let a few more of them have their way with you. Then you can come back here and have your way with me, too. That way, we both get to enjoy it.'[or]'I think I'm in the mood to find a [if a random chance of 1 in 2 succeeds]male[else if a random chance of 1 in 2 succeeds]female[else]herm[end if] next time. Hopefully there's one around that I haven't tried before.'[or]'I make a pretty sexy Samantha, don't I?' she asks with a giggle, stretching her arms behind her head to show off her lovely breasts and perky, rosy nipples.[at random]";
	else if HP of Sam is 35:
		say "     Looking over at Sam (now as Samantha), you can't help but wonder if you made the right choice. She's becomes such a lustful, sex-loving creature and is happy to get fucked and bred by pretty much any creature she can out there. She's probably start making more vixentaurs out there already. Given her large size and eagerness for sex, they could end up becoming a menace out there.";
		say "     Your thoughts have you recall that you hung onto that other vial. You pull it out from a pocket of your pack and look it over. The label is marked as [']#143 - Dragon - Male[']. Perhaps that might curb her slutty nature by making her less willing to submit to everything she sees before she goes over the edge and becomes feral. That'd be especially bad if she did it while in the library.";
		say "     [bold type]Shall you try slipping it to her or leave well enough alone?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Slip it to her.";
		say "     ([link]N[as]n[end link]) - Leave well enough alone.";
		if Player consents:
			LineBreak;
			say "     You pour the vial into an empty water bottle and head over to Sam. Saying it's a drink you picked up, you offer her a taste of the last bit of it. She looks up from what appears to be a list of sexual conquests to take the drink. For a moment, you're hopeful she'll try it, but she stops and looks the blue liquid over and gives it a sniff.";
			say "     'What is this? What're you trying to slip me?' she asks, getting suspicious. 'This is from a nanite vial, isn't it?' she yips. Afraid she'll throw it away and you'll lose your chance, you grab the bottle from her. You try to force it to her mouth, insisting it's for her own good, but she growls and pushes you away[if number of bunkered people + number of booked people > 2]. The others move away, uncertain what's taking place and not yet prepared to take sides in the escalating fight[else if number of bunkered people + number of booked people is 2]. The other person moves away, uncertain what's taking place and not yet prepared to take sides in the escalating fight[end if]. You cap the bottle just in time before the enraged vixentaur charges.";
			LineBreak;
			now inasituation is true;
			challenge "Vixentaur";
			now inasituation is false;
			if fightoutcome >= 10 and fightoutcome <= 19:
				say "     Your fight with the alluring female over, you pry open her vulpine muzzle and pour the vial down her throat, repeating to her that it's for her own good. She coughs and sputters a little, but swallows it down. She moans as a flash of blue washes over her eyes, soon her fluffy fur turning from pink to purple as the fluffy coat on her back begins to recede. You stroke her head soothingly as her muzzle becomes a little broader and becomes more draconic in appearance and small horns grow from the back of her head. Her hair fades to a more lilac color, but retains its long and luxurious length.";
				say "     Samantha's sleek body continues to change. The fur at her back and on her limbs disappears entirely, being replaced with smooth, lavender scales, the same color as the hard nipples. Her breasts are a little smaller than before, but are still quite generous and are covered in the soft, lilac fur that covers her chest and underbelly. Looking down there, you can see Samantha's gender changing again, growing a furry sheath and ballsack. The cock throbs and spurts precum as a pair of draconic wings burst forth suddenly from bumps on her back. They, like her scales, are a soft purple color.";
				WaitLineBreak;
				say "     'Ohh... mmm... I didn't know how much I'd missed having a cock until just now. I can see why you wanted me to try this,' she moans with growing excitement. 'I'm sorry I made such a fuss about it. This is great!' she adds before pulling you in for a kiss. Her tongue dives into your mouth to wrestle with yours. You can feel that it's longer and thinner now as well as forked at the tip.";
				say "     After breaking the kiss, she urges you to move downwards as she rolls onto her side and spreads her hind legs, clearly in need of relief for her new cock. Her wet pussy remains, dripping juices from her lavender folds. Eying it, you lick your lips, but you turn your attention back to Sam's restored maleness. Getting into position, you stroke over her vulpine tail, feeling the thick, strong dragon tail hidden beneath the fluffy fur and notice the spaded tip at its end. With one hand rubbing over that fluffy tail, you bring the other to her throbbing cock and caress it, drawing a delightful yip of pleasure from Sam, which is echoed when you lean forward and start licking at her pulsing rod.";
				WaitLineBreak;
				if Player is female or Cock Count of Player is 0:
					say "     After some fast tonguework gets her leaking cock ready, you move atop her, lining up her dracovixen penis with your [if Player is female]juicy cunt[else]tight pucker[end if] and start to ease yourself down onto her. She rumbles in pleasure and wraps her lower limbs around you, pulling you into a hug that forces you further down onto her pulsing rod. Her draconic rod with its tapered tip, pushes easily into you, prying your hole open with jolts of pleasure from those delightful ridges. 'Oh, now that feels soooo good. I've really missed fucking a [if Player is female]hot pussy[else]tight ass[end if]. Mmm... I can hardly wait to see how it feels fucking all those creatures out there again and breeding them full of whelps,' she rumbles, running her paws over her new body in continued exploration of the new delights her hermaphroditic hybrid form can bring. Her strong tail winds around you in a fluffy hug, pulling you down into each thrust.";
					say "     You place a hand at the nearest of her lower breasts, drawing a low moan from her as you tease its nipple. She has three rows of breasts along her underbelly and, from the extent of her reaction, they're quite sensitive. Your other hand reaches back to rub and fondle her heavy orbs, savoring the weight of them and knowing their contents will soon be inside you. You smile and ride that ridged rod harder and faster, cumming hard as you get her growing knot popped inside you. Her cunt quivers moments later as she orgasms from both genders at once with a loud cry of ecstasy while flooding your [if Player is female]womb[else]rectum[end if] with her thick, virile seed.[DVimpregchance]";
				else:
					say "     After some fast tonguework gets her leaking cock ready, you line up your [Cock of Player] penis and start to ease yourself into her. She rumbles and yips in pleasure as you start fucking her. 'Oh, that feels sooooo good. It's even better with a cock of my own. Mmm... I can hardly wait to find stuff a pussy with this sexy new cock of mine,' she rumbles, running her paws over her new body in continued exploration of the new delights her hermaphroditic hybrid form can bring. Her strong tail winds around you in a fluffy hug, pulling you into each thrust.";
					say "     You place a hand at the nearest of her lower breasts, drawing a low moan from her as you tease its nipple. She has three rows of breasts along her underbelly and, from the extent of her reaction, they're quite sensitive. Your other hand continues pumping and stroking her cock, feeling those ridges under your fingers and wondering how they'd feel inside you, breeding you instead. You smile and pound harder and faster into her wet vulpine cunt, cumming hard as you get her to spray her hot seed across her belly. Her cunt quivers moments later as she orgasms from both genders at once with a loud cry of ecstasy.";
				WaitLineBreak;
				say "     Her tail uncoils and flops down on the ground as she's left panting and rumbling softly in ecstasy from her orgasm. You smile down at her and wipe yourself off on a dry patch of her fur. She motions for you to come around and she kisses you passionately, her arms around you in a tight hug.";
				say "     'That was really nice. I can't wait to try it again. Mmm... there's so many creatures out there I haven't tried with a dick yet. I'm going to have to start all over again,' she says with a dreamy smile on her face, already imagining all the new fun she can have. You get the sinking feeling that you haven't really helped the situation much. Well, at least Sam isn't quite such a big cock slut now.";
				now HP of Sam is 56;
				now icon of Sam is figure of Dracovixentaur_icon;
				now lastfuck of Sam is turns;
				tripletaur_active; [activate all three taur creatures]
			else if fightoutcome >= 20 and fightoutcome <= 29:
				say "     Unable to get up due to your injuries, you cannot stop Sam as she goes on a rampage, growling angrily. She tosses the bottle you intended for her against a wall, splattering its contents across the concrete. 'You piece of scum. I trusted you, but you're no better than Rick in the end. I don't want to have anything to do with you ever again,' she snarls as she shakes you so roughly you black out from the pain. By the time you come to, she's gathered up her remaining supplies and equipment and has left the library for good. It is some time before your body's healed enough for you to get up, leaving you plenty of time to wonder if you made the right decision while you watch a patch of blue scales grow on the wall.";
				now HP of Sam is 99;
				now Sam is nowhere;
				vixentaur_active; [activate Vixentaur creature]
			else:
				say "     Rather than keep fighting Sam, you begin a tactical retreat, leading Sam out of the library[if the number of booked people + number of bunkered people > 2] while the others cautiously stay out of the way[else if the number of booked people + number of bunkered people is 2] while your other friend there stays out of the way[end if]. Once outside, Sam snarls in frustration and quickly bounds down the hill. 'You piece of scum. You're no better than Rick. I don't want to have anything to do with you ever again,' she growls as she's leaving. With her safely gone, you dump out the vial fluid that's come between you both and wonder if you made the right decision.";
				now HP of Sam is 99;
				now Sam is nowhere;
				vixentaur_active; [activate Vixentaur creature]
		else:
			LineBreak;
			say "     Rather than betray your friend's trust, you decide against using it on her. You toss the vial into the trash disposal rather than risk being tempted again.";
			now HP of Sam is 36;
			vixentaur_active; [activate Vixentaur creature]
	else if HP of Sam is 36:
		if a random chance of 1 in 3 succeeds and samformtalk is false:
			say "     'Rick was the one who'd found the pink vixen somewhere. From the way he talked about it, she was a whole lot of fun and I was a bit jealous he'd met her.' She runs her paws over her shapely body. 'But now that I am one, it's even better since I get to have all the fun SHE was having. And more, [']cause I'm a hot taur as well,' she says with a giggle.";
			now samformtalk is true;
		else:
			say "     [one of]'I don't need to worry about feeding me. I can take care of myself,' the sexy vixen purrs.[or]'I'm much preferring this new body of mine. I wonder why I ever resisted changing in the first place.'[or]'I'm looking forward to finding some more males out there to breed kits in me,' she giggles.[or]'I managed to find that dog you saw me with that first day. Having him mount and fuck my vixen pussy was so much better than last time,' she giggles.[or][if number of bunkered people + number of booked people > 3]'I've already gathered samples from the others here,' she says. 'Not like that, silly!' she adds with a giggle. 'Just refined from blood samples they gave.'[else]'If you happen to rescue any others who've been transformed, I'll take samples from them as well.'[end if][or]'My resistance treatment still seems to be holding out despite my big change. That means I can have all the fun I like and still stay a sexy vixen taur.'[or]She runs a hand along your body. 'You should have some more fun with the horny vixen beast soon[if Player is male]. I can tell you want to stuff your cock inside me again[else]. You just need to find yourself a cock and you can get to mounting me properly[end if],' she moans, pressing her furry melons against you while giving you a hug.[or]'There's a lot of sexy beasts out there. You should let a few more of them have their way with you. Then you can come back here and have your way with me, too. That way, we both get to enjoy it.'[or]'I think I'm in the mood to find a [if a random chance of 1 in 2 succeeds]male[else if a random chance of 1 in 2 succeeds]female[else]herm[end if] next time. Hopefully there's one around that I haven't tried before.'[or]'I make a pretty sexy Samantha, don't I?' she asks with a giggle, stretching her arms behind her head to show off her lovely breasts and perky, rosy nipples.[at random]";
	else if HP of Sam is 50: [Dracovixentaur form]
		say "     'Thanks again for helping me out back there. I don't want to think about what I would have ended up if you were there to help,' she shudders a little. 'But it's all good now. I've got this sexy new body and I'm itching to try it out. I can't wait to try playing with all those fun creatures out there again now. There's just so many possibilities now that I'm a big, sexy herm.' Noticing the look you're giving her, she's quick to hold up the device you saw her with that first day. 'Got to get to work on gathering all my samples again,' she says with a grin. 'Not that I can't spare some time to show you how nice it is to share those pleasurable possibilities with you,' she rumbles.";
		now HP of Sam is 51;
	else if HP of Sam is 51:
		say "     [one of]'I managed to save most of my supplies, but I'll need the rest for myself. This big body of mine's got a big appetite. But at least you don't have to worry about feeding me.'[or]'I'm enjoying this new body of mine. I feels so much better than my plain old one. I wonder why I ever resisted changing in the first place.'[or]'I'm looking forward to finding some males out there to breed a few kits in me. Just to see what it's like,' she adds with a grin.[or]'I'm looking forward to breeding a few whelps in those females out there.'[or]'I'm going to have even more fun out there now that I'm a sexy herm taur. There's so many sexy possibilities open to me now,' she says as she runs her paws over her hybrid body.[or]'I should see if I can find that dog you saw me with and see how different he'll feel in my cunny. And maybe I'll [']return the favor['] while I'm at it,' she says with a sly grin.[or][if number of bunkered people + number of booked people > 3]'I've already gathered samples from the others here,' she says. 'Not like that, silly!' she adds with a giggle. 'Just refined from blood samples they gave.'[else]'If you happen to rescue any others who've been transformed, I'll take samples from them as well.'[end if][or]'My resistance treatment still seems to be holding out despite my accident. That means I can have all the fun I like and still stay a sexy hybrid taur.'[or]She runs a hand along your body. 'You should try having a little fun with the horny herm beast some time. I promise this hot bod of mine will have you howling in ecstasy with me,' she moans, pressing her furry melons against you while giving you a hug.[or]'There's a lot of sexy beasts out there. You should let a few more of them have their way with you. Then you can come back here and have your way with me, too. That way, we both get to enjoy it.'[or]'I think I'm in the mood to find a [if a random chance of 1 in 2 succeeds]herm[else if a random chance of 1 in 2 succeeds]female[else]male[end if] next time. Hopefully there's one around that I haven't tried before.'[or]'I'm glad you weren't kidding about having enough space for me. This is a pretty sweet setup you have here,' she says, looking around the fortified library.[or]'I guess I'll have to get used to being Sammie now,' she says with a giggle.[at random]";
	else if HP of Sam is 52:
		say "     [one of]'I managed to save most of my supplies, but I'll need the rest for myself. This big body of mine's got a big appetite. But at least you don't have to worry about feeding me.'[or]'I'm enjoying this new body of mine. I feels so much better than my plain old one. I wonder why I ever resisted changing in the first place.'[or]'I'm looking forward to finding some males out there to breed a few kits in me. Just to see what it's like,' she adds with a grin.[or]'I'm looking forward to breeding a few whelps in those females out there.'[or]'I'm going to have even more fun out there now that I'm a sexy herm taur. There's so many sexy possibilities open to me now,' she says as she runs her paws over her hybrid body.[or]'I should see if I can find that dog you saw me with and see how different he'll feel in my cunny. And maybe I'll [']return the favor['] while I'm at it,' she says with a sly grin.[or][if number of bunkered people + number of booked people > 3]'I've already gathered samples from the others here,' she says. 'Not like that, silly!' she adds with a giggle. 'Just refined from blood samples they gave.'[else]'If you happen to rescue any others who've been transformed, I'll take samples from them as well.'[end if][or]'My resistance treatment still seems to be holding out despite my accident. That means I can have all the fun I like and still stay a sexy hybrid taur.'[or]She runs a hand along your body. 'You should have some more fun with the horny herm beast soon[if Player is male and player is male]. Maybe we can swap positions next time[end if],' she moans, pressing her furry melons against you while giving you a hug.[or]'There's a lot of sexy beasts out there. You should let a few more of them have your way with you. Then you can come back here and have your way with me, too. That way, we both get to enjoy it.'[or]'I think I'm in the mood to find a [if a random chance of 1 in 2 succeeds]herm[else if a random chance of 1 in 2 succeeds]female[else]male[end if] next time. Hopefully there's one around that I haven't tried before.'[or]'I'm glad you weren't kidding about having enough space for me. This is a pretty sweet setup you have here,' she says, looking at the fortified surroundings.[or]'I guess I'll have to get used to being Sammie now,' she says with a giggle.[at random]";
	else if HP of Sam is 53 or HP of Sam is 54:
		say "     [one of]'You don't have to worry about feeding me. I can take care of myself,' the dracovixen rumbles.[or]'I think this new body of mine is much better. Thanks for insisting I take them both.'[or]'I'm looking forward to finding some males out there to breed a few kits in me. Just to see what it's like,' she adds with a grin.[or]'I'm looking forward to breeding a few whelps in those females out there.'[or]'I'm going to have even more fun out there now that I'm a sexy herm taur. There's so many sexy possibilities open to me now,' she says as she runs her paws over her hybrid body.[or][if number of bunkered people + number of booked people > 2]'I've already gathered samples from the others here,' she says. 'Not like that,' she adds quickly, 'just refined from blood samples they gave.'[else]'If you happen to rescue any others who've been transformed, I'll take samples from them as well.'[end if][or]'My resistance treatment still seems to be holding out despite my big changes. That means I can have all the fun I like and still stay a sexy dracovixen taur.'[or][or]She runs a hand along your body[if Player is male]. 'You should have some more fun with the horny dracovixen beast soon. I can tell you want to stuff your cock inside me[else]. 'You should try letting the sexy dracovixen beast mount you. I can tell your body wants this ridged beast I'm packing inside you,' she rumbles, giving your ass a squeeze[end if] as she presses her furry melons against you while giving you a hug.[or][or]She runs a hand along your body[if Player is male]. 'You should have some more fun with the horny dracovixen beast soon. I can tell you want to stuff your cock inside me[else]. 'You should try letting the sexy dracovixen beast mount you. I can tell your body wants this ridged beast I'm packing inside you,' she rumbles, giving your ass a squeeze[end if] as she presses her furry melons against you while giving you a hug.[or]'There's a lot of sexy beasts out there. You should let a few more of them have their way with you. Then you can come back here so I can have my way with you too. That way, we both get to enjoy it.'[or]'I think I'm in the mood to find a [if a random chance of 1 in 2 succeeds]herm[else if a random chance of 1 in 2 succeeds]female[else]male[end if] next time. Hopefully there's one around that I haven't tried before.'[or]'My new look as Sammie's pretty sexy, isn't it?' she asks with a grin, stretching her arms behind her head to show off her lovely breasts and perky, purple nipples.[at random]";
	else if HP of Sam is 55 or HP of Sam is 56: [***to be replaced later]
		say "     [one of]'You don't have to worry about feeding me. I can take care of myself,' the dracovixen rumbles.[or]'I think this new body of mine is much better. Thanks for insisting I take them both.'[or]'I'm looking forward to breeding a few more litters in those females out there.'[or]'I'm looking forward to finding more males out there breed kits in me,' she says with a grin.[or]'My litters have been turning out to be a mix of kits, with male dragontaurs, female vixentaurs and even a few herms hybrids like me. It's so nice seeing them heading off to play in the city.'[or]'You'll need to be careful out there with my new offspring running around. They'll be eager to play with someone as sexy as you. I know I am,' she adds, giving your ass a playful swat.[or][if number of bunkered people + number of booked people > 2]'I've already gathered samples from the others here,' she says. 'Not like that,' she adds quickly, 'just refined from blood samples they gave.'[else]'If you happen to rescue any others who've been transformed, I'll take samples from them as well.'[end if][or]'My resistance treatment still seems to be holding out despite my big changes. That means I can have all the fun I like and still stay a sexy dracovixen taur.'[or][or]She runs a hand along your body[if Player is male]. 'You should have some more fun with the horny dracovixen beast soon. I can tell you want to stuff your cock inside me[else]. 'You should try letting the sexy dracovixen beast mount you. I can tell your body wants this ridged beast I'm packing inside you,' she rumbles, giving your ass a squeeze[end if] as she presses her furry melons against you while giving you a hug.[or]'I'm looking forward to fucking you again. Another romp with a sexy herm like me is definitely what that horny body of your needs to satisfy it,' she rumbles, licking your cheek slowly with her forked tongue.[or]'There's a lot of sexy beasts out there. You should let a few more of them have their way with you. Then you can come back here so I can have my way with you too. That way, we both get to enjoy it.'[or]'I think I'm in the mood to find a [if a random chance of 1 in 2 succeeds]herm[else if a random chance of 1 in 2 succeeds]female[else]male[end if] next time. Hopefully there's one around that I haven't tried before.'[or]'My new look as Sammie's pretty sexy, isn't it?' she asks with a grin, stretching her arms behind her head to show off her lovely breasts and perky, purple nipples.[at random]";
	else:
		say "ERROR-Sam-[HP of Sam]L: You should not be able to find me!";


SamTest is an action applying to nothing.
understand "Sam Test" as SamTest.

carry out SamTest:
	increase carried of cheetah milk by 2;
	increase carried of rhino cum by 2;
	increase carried of pink gel by 1;
	increase carried of blue gel by 1;
	increase carried of purple gel by 1;
	increase carried of eagle feather by 2;


Section 4 - Confrontation at the Mini-Lab

minilabfight is a number that varies.
featherready is a truth state that varies. featherready is usually false.

instead of navigating Mini-Lab while HP of Sam is 4:
	if carried of eagle feather >= 2:
		now featherready is false;
		assaultonminilab;
		now battleground is "void";
	else:
		move player to mini-lab;

to assaultonminilab:
	if featherready is true:
		say "     As you are pulling out the feathers for Sam, there is a great crashing at the hatch to the basement that stops you both cold. You pull your pack back on and prepare to fight as a large, feline creature comes crashing into the basement. It is one of those feline tigertaurs from the Zoo. She growls and rushes forward, but pushes you aside rather than confronting you, instead going straight for Sam.";
		say "     'Rick! No, don't do this!' he cries as the powerful creature and ex-partner grabs him, her lustful intent clearly visible hanging between the herm's legs. She pushes him down onto the table, tearing at his clothes with her claws. What shall you do?";
	else:
		say "     As you're approaching Sam's hidden research lab, you notice some noise coming from the building. Knowing something is amiss since Sam avoids any excess noise to prevent detection, you run around back to find the basement hatch broken open. You cautiously head down the stairs, ready for a fight. There you find Sam being manhandled by one of those feline tigertaurs from the Zoo. The herm's got him pressed down onto the table and is tearing at his clothes with her claws. Her lustful intent is clearly visible hanging between her legs. 'Rick! No, don't do this!' Sam cries as his ex-partner prepares to mount him. What shall you do?";
	say "     [link]Help Sam (1)[as]1[end link], [link]watch the show (2)[as]2[end link], [link]steal supplies (3)[as]3[end link] or just [link]leave (4)[as]4[end link]?";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 4:
		say "Choose 1-4> ";
		get a number;
		if calcnumber >= 1 and calcnumber <= 4:
			break;
	if calcnumber is 1:
		say "     You grab the tigertaur and struggle to pull her away from Sam. She growls in frustration and turns to confront you before getting her true prize.";
		now minilabfight is 1;
		now inasituation is true;
		challenge "Tigertaur";
		now inasituation is false;
		now minilabfight is 0;
		if fightoutcome >= 10 and fightoutcome <= 19:
			minilabvictory;
		else if fightoutcome >= 20 and fightoutcome <= 29:
			say "     The tigertaur gives you a final punch to the gut after she's done her fun. 'And that's for getting in my way,' she growls. 'Now where's that partner of mine,' she purrs, turning towards Sam again, who's backed into a corner. She crouches down and rocks her hips, tail twitching, before pouncing on him and bearing him down under her. The researcher tries to struggle, but the tigertaur has a firm grip and drags him beside the work table and pins him down beside it under her tauric hindquarters while she scans the contents of the table and the shelves. 'Ahh, here they are,' she purrs, grabbing several of the vials before turning her attention back to Sam. He tries to struggle, begging Rick not to do it, but the horny tigertaur is unmoved.";
			say "     Still weak from the fight and fucking, you can only watch as the human is pinned face down on the floor by the powerful tigress. She grinds her hard cock against his body, leaking precum over his smooth skin. With a strong paw at his jaw, she forces his mouth open. 'Oh, stop your fussing, you'll make such a pretty kitty breedslut,' Rick rumbles, pouring the contents of one vial after the other down her ex-partner's throat.";
			WaitLineBreak;
			say "     As concentrated nanite infusions rush through his system, Sam begins to change. First to show is a rush of cheetah spots as fur begins to cover his body. Next comes a leonine tail. As the changes continue to progress and Sam becomes more feline, he starts to moan and mewl with growing excitement. With a loud mrowl, a feline muzzle grows from Sam's face and stripes start to mix into the spotted fur there. And that's not all that's growing - a lovely pair of breasts start to form on his chest, soon followed by several other pairs. Beside those lower breasts, two protrusions start to form out of his sides, soon forming into another pair of feline legs. Even as his hands and feet become paws, his body shifts further, becoming a feline taur like his ex-partner. Sam's largest pair of breasts remain on his upper torso, while the rest shift down to hang from his taur body.";
			say "     'Mmm... you're turning into such a lovely kitty, Sammie. Let's show your troublesome friend what a nice feline slut you've become,' she purrs, raising Sam's leonine tail and grinning back at you. With your clear view, you can see the juicy virgin pussy, swollen balls and furry sheath that Sam's gained. The new kitty's cock is quite large and feline in shape, a throbbing black spire of arousal. As Rick shows off her prize, she rubs a tiger paw against that damp slit while stroking a hand along that ebon shaft. 'And how does my kitty feel? Ready for her first proper breeding?' she purrs. Sam mrowls and nods, begging to be mounted as the arousal of all her changes overwhelms her. 'Sounds like you [italic type]really[roman type] want it. Will you drink a few more vials from your mistress to earn it?' she purrs, offering several more doses of nanites as her paw teases Sam's needy pussy.";
			WaitLineBreak;
			say "     'Oh, I need it so bad... I didn't know it would feel this good. Yes, please, whatever you want, mistress. Just do it and mount your kitty,' Sammie cries out, grinding back against Rick's touch, opening her mouth wide to receive the vials['] contents. Rick laughs darkly and climbs atop her new slut and pours the vials down her throat even as she mounts her. As Rick fucks her feline taur pet, the feline hybrid continues to change, gaining another pair of legs and more breasts. Her coat continues to change, remaining cheetah spotted in her hindquarters, leopard rosetted at the midsection and gaining clouded leopard markings on her upper torso.";
			say "     As you watch the two felines creatures breeding, the heavy scent of arousal hangs in the air. You can't help but play with yourself, rubbing your hands over your [if Breast Size of Player > 0]breasts and [else if Player is herm]aching loins[else if Player is male]throbbing cock[else if Player is female]dripping pussy[else]barren crotch[end if], uncertain which of them you'd rather be right now. When you see Rick shift her hips, readying to pound her new slut harder, you spot that Sammie's gained a second pussy and a second cock as part of her continued changes. It takes considerable effort to stop yourself from going over and joining them, knowing the tigertaur would not let you go until you were nothing but another feline slut for her. And as tempting as that seems right now, you keep your distance, though you don't look away from the show either. Much of the floor beneath them has become damp with the hybrid's leaking milk, splattered seed and dripping juices as she's fucked and bred over and over again.";
			WaitLineBreak;
			project the figure of SamBadEnd_icon;
			if Player is not neuter:
				say "     You cum several times as well, the wild show and the heady scent of musky sex exciting you greatly[if Player is male]. You stroke your pulsing meat, splattering your seed across the dirty floor as you drain your [Ball Size Adjective of Player] balls[end if][if Cunt Count of Player is 1]. With several fingers pumping into your wanton pussy, you finger yourself through repeated climaxes[else if Cunt Count of Player > 1]. With several fingers pumping into your wanton pussies, you finger yourself through repeated climaxes[end if]. As you see Rick finally finishing up, she dismounts from Sam, who's already starting to become visibly pregnant as her hyper-sexualized body rushes into action. The tigertaur purrs at this and rubs the swelling belly, turning to give you a rather predatory look as she pants to regain her breath. Rather than waiting to give her a chance to do the same to you, you grab your gear and make a break for it, leaving the two horny felines to enjoy their new life together. You make your way back to the library feeling very sexually satisfied and with your thoughts obsessing over the idea of becoming a horny sex monster like them. The scene you've just witnessed has left you feeling ";
			else:
				say "     As you see Rick finally finishing up, she dismounts from Sam, who's already starting to become visibly pregnant as her hyper-sexualized body rushes into action. The tigertaur purrs at this and rubs the swelling belly, turning to give you a rather predatory look as she pants to regain her breath. Rather than waiting to give her a chance to do the same to you, you grab your gear and make a break for it, leaving the two horny felines to enjoy their new life together. You make your way back to the library with your thoughts obsessing over the idea of becoming a horny sex monster like them. The scene you've just witnessed has left you feeling ";
			if Player is kinky:
				say "quite pleased and aroused at having indulged your kinky urges";
				increase morale of Player by 3;
				increase Libido of Player by 25;
			else:
				say "a little bad about being unable to help, but also aroused by the scene you just witnessed";
				increase Libido of Player by 10;
				decrease morale of Player by 2;
			say ". After what you've seen, part of you longs to just accept becoming a horny creature of lust like them.";
			WaitLineBreak;
			SanLoss 20;
			if Libido of Player > 100, now Libido of Player is 100;
			now HP of Sam is 100;
			now Sam is nowhere;
			now Mini-Lab is unknown;
			move player to Grey Abbey Library;
		else:
			say "     Rather than continue to risk yourself in a losing fight, you make a break for the basement hatch and run away. Leaving Sam to his feline fate, you head back to the library to consider your next course of action.";
			WaitLineBreak;
			now HP of Sam is 100;
			now Sam is nowhere;
			now Mini-Lab is unknown;
			move player to Grey Abbey Library;
	else if calcnumber is 2:
		say "     Not wanting to get involved, but certainly curious to watch the show, you take a few steps back, giving the two plenty of space to get reacquainted. The tigertaur keeps Sam pinned down over the table as she starts looking over its contents. 'Ahh, here they are,' she purrs, grabbing a selection of the vials before tossing Sam down onto the floor. He crawls backwards, begging alternatively for Rick not to do it and for you to help him, but neither of you heed his pleas, too aroused by what's to come.";
		say "     With a few twitches of her hindquarters, she pounces atop of her human prey, pinning him face down to the ground. She grinds her hard cock against his body, leaking precum over his smooth skin. With a strong paw at his jaw, she tilts his head back and forces his mouth open. 'Oh, stop your fussing, you'll make such a pretty kitty breedslut,' Rick rumbles, pouring the contents of one vial after the other down her ex-partner's throat.";
		WaitLineBreak;
		say "     As concentrated nanite infusions rush through his system, Sam begins to change. First to show is a rush of cheetah spots as fur begins to cover his body. Next comes a leonine tail. As the changes continue to progress and Sam becomes more feline, he starts to moan and mewl with growing excitement. With a loud mrowl, a feline muzzle grows from Sam's face and stripes start to mix into the spotted fur there. And that's not all that's growing - a lovely pair of breasts start to form on his chest, soon followed by several other pairs. Beside those lower breasts, two protrusions start to form out of his sides, soon pushing outwards to become another pair of feline legs. Even as his hands and feet become paws, his body shifts further, becoming a feline taur like his ex-partner. Sam's largest pair of breasts remain on his upper torso, while the rest shift down to hang from his taur body.";
		say "     'Mmm... you're turning into such a lovely kitty, Sammie. Let's show our guest what a nice feline slut you've become,' she purrs, raising Sam's leonine tail and grinning back at you. With your clear view, you can see the juicy virgin pussy, swollen balls and furry sheath that Sam's gained. The new kitty's cock is quite large and feline in shape, a throbbing black spire of arousal. As Rick shows off her prize, she rubs a tiger paw against that damp slit while stroking a hand along that ebon shaft. 'And how does my kitty feel? Ready for her first proper breeding?' she purrs. Sam mrowls and nods, begging to be mounted as the arousal of all her changes overwhelms her. 'Sounds like you [italic type]really[roman type] want it. Will you drink a few more vials from your mistress to earn it?' she purrs, offering several more doses of nanites as her paw teases Sam's needy pussy.";
		WaitLineBreak;
		say "     'Oh, I need it so bad... I didn't know it would feel this good. Yes, please, whatever you want, mistress. Just do it and mount your kitty,' Sammie cries out, grinding back against Rick's touch, opening her mouth wide to receive the vials['] contents. Rick laughs darkly and climbs atop her new slut and pours the vials down her throat even as she mounts her. As Rick fucks her feline taur pet, the feline hybrid continues to change, gaining another pair of legs, six in all, and more breasts. Her coat continues to change, remaining cheetah spotted in her hindquarters, leopard rosetted at the midsection and gaining clouded leopard markings on her upper torso.";
		say "     As you watch the two felines creatures breeding, the heavy scent of arousal hangs in the air. You can't help but play with yourself, rubbing your hands over your [if Breast Size of Player > 0]breasts and [else if Player is herm]aching loins[else if Player is male]throbbing cock[else if Player is female]dripping pussy[else]barren crotch[end if], uncertain which of them you'd rather be right now. When you see Rick shift her hips, readying to pound her new slut harder, you spot that Sammie's gained a second pussy and a second cock as part of her continued changes. It takes considerable effort to stop yourself from going over and joining them, knowing the tigertaur would not let you go until you were nothing but another feline slut for her. And as tempting as that seems right now, you keep your distance, though you don't look away from the show either. Much of the floor beneath them has become damp with the hybrid's leaking milk, splattered seed and dripping juices as she's fucked and bred over and over again.";
		WaitLineBreak;
		project the figure of SamBadEnd_icon;
		if Player is not neuter:
			say "     You cum several times as well, the wild show and the heady scent of musky sex exciting you greatly[if Player is male]. You stroke your pulsing meat, splattering your seed across the dirty floor as you drain your [Ball Size Adjective of Player] balls[end if][if Cunt Count of Player is 1]. With several fingers pumping into your wanton pussy, you finger yourself through repeated climaxes[else if Cunt Count of Player > 1]. With several fingers pumping into your wanton pussies, you finger yourself through repeated climaxes[end if]. As you see Rick finally finishing up, she dismounts from Sam, who's already starting to become visibly pregnant as her hyper-sexualized body rushes into action. The tigertaur purrs at this and rubs the swelling belly, turning to give you a rather predatory look as she pants to regain her breath.";
		else:
			say "     As you see Rick finally finishing up, she dismounts from Sam, who's already starting to become visibly pregnant as her hyper-sexualized body rushes into action. The tigertaur purrs at this and rubs the swelling belly, turning to give you a rather predatory look as she pants to regain her breath.";
		let surrender be 0;
		if humanity of Player < 50 or Libido of Player > 50 or player is kinky or player is submissive:
			say "     You watch the beautiful tauric feline that had once been Sam rumble a pleased growl from out of her throat while looking adoringly at her new mistress.";
			say "     [bold type]Should give in to the tigertaur and have her claim you as a pet as well?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Surrender.";
			say "     ([link]N[as]n[end link]) - Retreat.";
			if Player consents:
				LineBreak;
				say "     Wanting to be a part of the forming feline coalition, you shuck out of your clothes and then obediently head over to the tigertaur, your head cast down to show your submission. Grinning like mad, the tigertaur moves away from her new pet, reassuringly the other with a lick across hir new snout, before stalking over to you with a smug air surrounding hirself. 'Well,' the tigertaur begins slowly as shi walks around you. 'I think I can find room for you in my new streak, little one. Though first I think you and Sammie over there should become more [italic type]acquainted[roman type] with one another, if you catch my drift.' Looking up and nodding at your new mistress you eagerly head over to where Sammy is watching the both of you, the newly made hybrid busily rubbing her squirming stomach with one of her new paws. A feline smile crossing hir face...";
				now surrender is 1;
				now humanity of Player is 0;
				now TailName of Player is "Feline Hexataur";
				now FaceName of Player is "Feline Hexataur";
				now SkinName of Player is "Feline Hexataur";
				now BodyName of Player is "Feline Hexataur";
				now CockName of Player is "Feline Hexataur";
				now scalevalue of Player is 5;
				now bodydesc of Player is "silky";
				now bodytype of Player is "feline";
				now SleepRhythm of Player is 0;
				end the story saying "Surrendering to Rick the tigertaur you willing become another breeder kitty for the herm.";
				wait for any key;
				now battleground is "void";
				follow the turnpass rule;
			else:
				LineBreak;
				say "     Shaking your head as you wonder if you're losing your mind, which might very well have happened has you given in. Rather than waiting to give her a chance to do the same to you, you grab your gear and make a break for it, leaving the two horny felines to enjoy their new life together. You make your way back to the library with your thoughts obsessing over the idea of becoming a horny sex monster like them. The scene you've just witnessed has left you feeling ";
		else:
			say "     Rather than waiting to give her a chance to do the same to you, you grab your gear and make a break for it, leaving the two horny felines to enjoy their new life together. You make your way back to the library with your thoughts obsessing over the idea of becoming a horny sex monster like them. The scene you've just witnessed has left you feeling ";
		if surrender is 0:
			if Player is kinky:
				say "quite pleased and aroused at having indulged your kinky urges";
				increase morale of Player by 3;
				increase Libido of Player by 25;
			else:
				say "a little bad about letting that happen, but also aroused by the scene you just witnessed";
				increase Libido of Player by 10;
				decrease morale of Player by 3;
			say ". After what you've seen, part of you longs to just accept becoming a horny creature of lust like them.";
			WaitLineBreak;
			SanLoss 20;
			if Libido of Player > 100, now Libido of Player is 100;
			now HP of Sam is 100;
			now Sam is nowhere;
			now Mini-Lab is unknown;
			move player to Grey Abbey Library;
	else if calcnumber is 3:
		say "     Deciding it's every [if Player is female]woman for herself[else]man for himself[end if], you rush over to Sam's supplies and grab a quick armload and make a run for it. As you do this, Sam calls out with a mix of pleas for help and curses for leaving him, but you turn a deaf ear, rushing up the steps and out of the basement. Leaving Sam to his feline fate, you head back to the library to consider your next course of action.";
		WaitLineBreak;
		increase carried of food by 1;
		increase carried of water bottle by 1;
		increase carried of chips by 1;
		increase carried of soda by 1;
		SanLoss 12;
		now HP of Sam is 100;
		now Sam is nowhere;
		now Mini-Lab is unknown;
		move player to Grey Abbey Library;
	else if calcnumber is 4:
		say "     You decide to leave the two of them alone so they can get reacquainted. You quickly back away and rush up the stairs. As you're leaving, you can hear Sam calling out with a mix of pleas for help and curses at you for leaving him, but you turn a deaf ear and make your way out. Leaving Sam to his feline fate, you head back to the library to consider your next course of action.";
		WaitLineBreak;
		SanLoss 5;
		decrease morale of Player by 3;
		decrease score by 25;
		now HP of Sam is 100;
		now Sam is nowhere;
		now Mini-Lab is unknown;
		move player to Grey Abbey Library;

to minilabvictory:
	say "     As your last blow drives back the large feline, she staggers sideways a few steps. Growling in frustration, she makes a final lunge at Sam and tosses the young man across the work table and into the shelves beyond. 'If I can't have you, no one can,' she yowls as Sam starts to scream, the contents of the broken vials flowing down overtop of him. He writhes on the floor, mindless of the broken glass as the samples from dozens of creatures enter his system at once. You are momentarily stunned at this sight, giving the tigertaur the opportunity to flee past you and exit the cramped basement.";
	say "     It takes you a moment to recover your senses, during which time Sam's already begun to change, patching of fur and scales forming in mismatched clusters. His face distorts first into a canine muzzle, then a bird's beak, then to something not quite human. As he fumbles over to his supplies he opens a bottle of water with a hand, but it slips out as it turns into a paw. You grab it and start pouring it over him, trying to wash off the tainted fluids. In the time it takes you to open another, breasts start to form on his chest and a second pair of legs are growing from his sides as his body starts to form a tauric lower half.";
	WaitLineBreak;
	say "     'No good,' he moans, his words distorted by his changing mouth waving you off as you go for another bottle. 'Too many at once. Instincts confused. Hard to think. Need... sex...' he says, reaching down to grope his decidedly canine cock with an insectile hand and knead his growing bosom with a furry paw. 'No... need... one large dose... Mmm... so large,' he mumbles, reaching lower to grope his swelling balls. 'Ngg... overwrite small ones...' he moans, his words melding into wet, fleshy sounds. Rather than stop himself from playing with his changing body as a wet pussy starts to form as well, his tail becomes nothing more than a pseudopod of flesh flowing from his body as it starts to lose its solidity. The tendril points towards the ruins of his work area before being drawn in to tease his wet folds.";
[	say "     Realizing what he means, you turn to the overturned mess of his work area, trying to locate unbroken vials among the sticky mess without getting caught in it yourself. You are only able to find two intact in a during a quick search and grab them with a scrap of Sam's torn clothes. They are labelled as '[link]#143 - Dragon - Male[as]Y[end link]' and '[link]#039 - Pink Vixen - Female[as]N[end link]'. You've only got a moment to decide. Which one will you give him - the dragon (Y) or the vixen (N)?";
	say "     [bold type]<2 Option Question you ask the player (this is in bold text)>[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	if Player consents:
		LineBreak;
		say "[samtf_maledragon]";
	else:
		LineBreak;
		say "[samtf_femalevixen]"; ]
	say "     Realizing what he means, you turn to the overturned mess of his work area, trying to locate unbroken vials among the sticky mess without getting caught in it yourself. You are only able to find two intact in a during a quick search and grab them with a scrap of Sam's torn clothes. They are labelled as '[link]#143 - Dragon - Male[as]1[end link]' and '[link]#039 - Pink Vixen - Female[as]2[end link]'. You've only got a moment to decide. Which one will you give him - the [link]dragon (1)[as]1[end link] or the [link]vixen (2)[as]2[end link]... or [link]both (3)[as]3[end link]?";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] for the dragon vial, [link]2[end link] for the vixen vial or [link]3[end link] for both vials.";
	if calcnumber is 1:
		say "[samtf_maledragon]";
	else if calcnumber is 2:
		say "[samtf_femalevixen]";
	else:
		say "[samtf_hermboth]";


to say samtf_maledragon:
	say "     Stuffing the other into a pocket, you pop open the vial for the dragon and pour it as best you can into the fleshy hole that his mouth has become. Its shape distorts even as you toss the empty vial onto the rest of the mess, pushing forward into an elongating muzzle. 'Yes! It's working...' he gurgles, his words becoming clearer again. The flowing flesh starts to regain texture which soon forms into lizard-like scales. His body grows more solid as his tauric limbs become strong and muscled, forming clawed feet. His upper body slowly loses the breasts, forming manly pecs and abs instead, all covered in the same azure scales. Still on his side, he reaches down with his tauric forepaws and grabs onto his enlarged cock, stroking it with moans of pleasure. 'Oh yeah... that's the spot,' he rumbles, stroking his ridged maleness as it spurts precum.";
	say "     His head forms an elongated dragon muzzle with golden eyes and darker scales towards the back where the ivory horns push forth. He slides his long, forked tongue across his muzzle, panting as he strokes himself faster. As his rear pushes forth a new, thick lizard tail ending in a dark spade and large, draconic wings burst from his back, his climax comes as well. His forepaws pump at his thick member, spraying blasts of thick dragoncum across the dirty floor. 'Mmm... yeah!' he roars, cumming with obvious delight.";
	say "     You've moved back at this time, not quite sure if your friend's still in there, but as he releases his spent shaft and sags back on the floor, he smiles up at you. 'Thanks. That was... close... Here, help me up,' he says as he tries to rise, unused to having four legs. He, like the tigertaur, is a little big for the cramped basement, but manages to get around. He gathers together what he can that hasn't been destroyed or tainted by the nanite serum. 'Uhh... so... I hope your place has got higher ceilings,' he says with a grin and a chuckle. After the recent tension, you can't help but laugh, telling him you might be able to find some space for him. You head off together towards the library.";
	WaitLineBreak;
	increase score by 50;
	SanBoost 5;
	increase morale of Player by 2;
	now HP of Sam is 10;
	move Sam to large shed;
	move player to large shed;


to say samtf_femalevixen:
	say "     Stuffing the other into a pocket, you pop open the vial for the vixen and pour it as best you can into the fleshy hole that his mouth has become. Its shape distorts even as you toss the empty vial onto the rest of the mess, pushing forward into a slender muzzle. 'Yes! It's working...' he gurgles, his words becoming clearer again. The flowing flesh starts to regain texture which soon has a fuzz of pink fur growing in. His body grows more solid as his tauric limbs become shapely and feminine, forming pawed feet. The breasts there grow larger, perking up into lovely globes with round, rosy nipples. Sam's increasingly vulpine body takes on more feminine curves, with a slender waist and shapely hips joining into her lower body, the whole being covered by the pink fur that's growing in. Still on his side, you watch has his maleness recedes away and smaller breasts form along the underbelly.";
	say "     Noticing this change, Sam grabs the swelling bosom at her chest. 'Female? I'm becoming female?' she asks in confusion. Running her tauric forepaws across her lower breasts, she moans. 'Mmm... that's nice. Maybe this won't be so bad.' She squirms her hips and yips in pleasure, hot juices running from her growing pussy. Her head forms a shapely muzzle with deep pink at the end of it. Long, cerise-colored hair forms at the back of her head, flowing down over her shoulders as it grows in. As she gains her fluffy pink tail, she yiffs loudly and cums, hot juices flowing from her new pussy. 'Oh baby... that's... that's so intense...' she moans as the last trembles of her first female orgasm come to a close.";
	say "     You've moved back at this time, not quite sure if your friend's still in there, but as she releases her new breasts and sags back on the floor, she smiles up at you. 'Thanks. That was... close... Here, help me up,' she says as she tries to rise, unused to having four legs. She, like the tigertaur, is a little big for the cramped basement, but manages to get around. She gathers together what she can that hasn't been destroyed or tainted by the nanite serum. 'Uhh... so... I hope your place has got higher ceilings,' she says with a cute grin and a giggle. After the recent tension, you can't help but laugh, telling her you might be able to find some space for her. You head off together towards the library.";
	WaitLineBreak;
	increase score by 50;
	SanBoost 5;
	increase morale of Player by 2;
	now HP of Sam is 30;
	now icon of Sam is figure of Vixentaur_icon;
	move Sam to large shed;
	move player to large shed;


to say samtf_hermboth: [Not for release yet]
	say "     Taking both vials, you pop them open and try to offer them both to Sam at once. At first, he tries to wave you off with a misshapen hand, but you insist he needs them both to be certain there's enough to overwrite the diverse nanites. Unable to speak or properly use his distorted hand to only grab one and losing valuable moments, he relents and allows you to pour them both as best you can into the fleshy hole that his mouth has become. Its shape distorts even as you toss the empty vials onto the rest of the mess, pushing forward into an elongating muzzle. 'Yes! It's working...' he gurgles, his words becoming clearer again. The flowing flesh starts to regain texture which soon forms into lizard-like scales in some spots and grows fluffy fur in others. His body grows more solid as his tauric limbs become sleek and strong, forming pawed feet. The breasts there grow larger, perking up into lovely globes with round, lavender nipples. Sam's increasingly body takes on more feminine curves, with a slender waist and shapely hips joining into her lower body. Lilac fur covers her chest, belly, underbelly and loins while lavender scales cover the rest. Still on her side, she reaches down with her tauric forepaws and grabs onto her enlarged cock, stroking it with moans of pleasure. 'Oh yeah... the best of both worlds,' she rumbles, stroking her ridged and knotted maleness as it spurts precum while her pussy quivers behind her hefty balls.";
	say "     Wanting more, Sam grabs the swelling bosom at her chest and moans in surprised delight. Running her tauric forepaws across her lower breasts, she moans. 'Mmm... that's nice. This is going to be so much fun.' She squirms her hips and yips in pleasure, hot juices running from her growing pussy. Her head a feminine muzzle, part dragon and part fox in form, covered in scales. A crest of small horns grow from the back of her head and long, lilac-colored hair grows out from behind those and flows down over her shoulders. As she gains her fluffy fox tail with a spade half-hidden at its tip, she moans loudly and cums, hot juices flowing from her new pussy as she splatters herself with her hot seed. 'Oh baby... that's... that's so intense...' she moans as the last trembles of her first herm orgasm come to a close.";
	say "     You've moved back at this time, not quite sure if your friend's still in there, but as she releases her spent shaft and many breasts as she sags back on the floor and smiles up at you. 'Thanks. That was... close... Here, help me up,' she says as she tries to rise, unused to having four legs. She, like the tigertaur, is a little big for the cramped basement, but manages to get around. She gathers together what she can that hasn't been destroyed or tainted by the nanite serum. 'Uhh... so... I hope your place has got higher ceilings,' she says with a grin and a chuckle. After the recent tension, you can't help but laugh, telling her you might be able to find some space for her. You head off together towards the library.";
	WaitLineBreak;
	increase score by 50;
	SanBoost 5;
	increase morale of Player by 2;
	now HP of Sam is 50;
	now icon of Sam is figure of Dracovixentaur_icon;
	move Sam to large shed;
	move player to large shed;


Section 5 - Sexy Times Sam

Part 1 - Basic System

the fuckscene of Sam is "[sexwithSam]".

to say sexwithSam:
	if HP of Sam >= 1 and HP of Sam <= 4:
		say "     'While it might be nice to do it with someone I know for a change, I get more than enough of that out in the city. As it is, I need to save up my strength for the next time I go out. How about a rain check on that? When my pick up comes to get me out of here, you can come along and we can celebrate together.'";
	else if lastfuck of Sam - turns < 6:
		say "     'Mmm... that's a tempting offer, but I was thinking of heading back out for some more... uh... sample gathering... with those sexy critters out there.'";
	else if HP of Sam is 10:
		say "     Aren't you jumping the gun a little? Shouldn't you talk to him and see how he's doing?";
	else if HP of Sam is 30:
		say "     Aren't you jumping the gun a little? Shouldn't you talk to her and see how she's doing?";
	else if HP of Sam is 50:
		say "     Aren't you jumping the gun a little? Shouldn't you talk to her and see how she's doing?";
	else if HP of Sam is 11:
		say "[samdragonfirsttime]";
		now HP of Sam is 12;
		now lastfuck of Sam is turns;
	else if HP of Sam is 12:
		say "[samdragonoral]";
		now HP of Sam is 13;
		now lastfuck of Sam is turns;
	else if HP of Sam is 13 or HP of Sam is 14 or HP of Sam is 15 or HP of Sam is 16:
		if a random chance of 3 in 5 succeeds and BodyName of Player is listed in infections of Taurlist: [taur]
			say "[samdragontaurfuck]";
		else if a random chance of 3 in 5 succeeds:
			say "[samdragonfuck]";
		else:
			say "[samdragonoral]";
		now lastfuck of Sam is turns;
		if HP of Sam < 15, increase HP of Sam by 1;
	else if HP of Sam is 31:
		if Player is male:
			say "[samvixenfirsttime]";
		else:
			say "[samvixenoral]";
		now HP of Sam is 32;
		now lastfuck of Sam is turns;
	else if HP of Sam is 32:
		say "[samvixenoral]";
		if Player is male, now HP of Sam is 33;
		now lastfuck of Sam is turns;
	else if HP of Sam >= 33 and HP of Sam <= 36:
		if a random chance of 3 in 5 succeeds and BodyName of Player is listed in infections of Taurlist: [male/herm taur]
			say "[samvixentaurfuck]";
		else if a random chance of 3 in 5 succeeds and player is male:
			say "[samvixenfuck]";
		else:
			say "[samvixenoral]";
		now lastfuck of Sam is turns;
		if HP of Sam < 35, increase HP of Sam by 1;
	else if HP of Sam is 51:
		say "[samDVfirsttime]";
		now lastfuck of Sam is turns;
		now HP of Sam is 52;
	else if HP of Sam is 52:
		say "[samDVoral]";
		now lastfuck of Sam is turns;
		now HP of Sam is 53;
	else if HP of Sam is 53:
		if a random chance of 3 in 5 succeeds and BodyName of Player is listed in infections of Taurlist: [taur]
			if Player is herm:
				if a random chance of 1 in 2 succeeds:
					say "[samDVtaurfuck_top]";
				else:
					say "[samDVtaurfuck_bottom]";
			else if Player is male:
				if ( anallevel > 1 and a random chance of 1 in 4 succeeds ) or ( anallevel is 3 and a random chance of 1 in 3 succeeds ):
					say "[samDVtaurfuck_top]";
				else:
					say "[samDVtaurfuck_bottom]";
			else:
				say "[samDVtaurfuck_top]";
		else if a random chance of 3 in 5 succeeds:
			if Player is herm:
				if a random chance of 1 in 2 succeeds:
					say "[samDVfuck_top]";
				else:
					say "[samDVfuck_bottom]";
			else if Player is male:
				if ( anallevel > 1 and a random chance of 1 in 4 succeeds ) or ( anallevel is 3 and a random chance of 1 in 3 succeeds ):
					say "[samDVfuck_top]";
				else:
					say "[samDVfuck_bottom]";
			else:
				say "[samDVfuck_top]";
		else:
			say "[samDVoral]";
		if HP of Sam < 54, increase HP of Sam by 1; [***locks at 54 for now]
		now lastfuck of Sam is turns;
	else if HP of Sam is 54:
		if Player is not neuter:
			say "[samDVfuck54]";
			tripletaur_active;
			now HP of Sam is 55;
		else:
			if a random chance of 3 in 5 succeeds and BodyName of Player is listed in infections of Taurlist: [taur]
				say "[samDVtaurfuck_top]";
			else if a random chance of 3 in 5 succeeds:
				say "[samDVfuck_top]";
			else:
				say "[samDVoral]";
	else if HP of Sam is 55 or HP of Sam is 56:
		say "     Approaching the exotically beautiful hybrid, you wonder what fun you'd like to enjoy with her this time.";
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		[]
		choose a blank row in table of fucking options;
		now title entry is "Give fellatio";
		now sortorder entry is 1;
		now description entry is "suck the dracovixentaur's cock";
		[]
		choose a blank row in table of fucking options;
		now title entry is "Give cunnilingus";
		now sortorder entry is 2;
		now description entry is "eat the dracovixentaur's pussy";
		[]
		if Player is male:
			choose a blank row in table of fucking options;
			now title entry is "Receive fellatio";
			now sortorder entry is 3;
			now description entry is "have the dracovixentaur suck you off";
		[]
			choose a blank row in table of fucking options;
			now title entry is "Fuck Sammie";
			now sortorder entry is 4;
			now description entry is "screw the sexy hybrid";
		[]
			if bodyname of Player is listed in infections of Taurlist:
				choose a blank row in table of fucking options;
				now title entry is "Mount Sammie";
				now sortorder entry is 6;
				now description entry is "mount that sexy taur";
		[]
		choose a blank row in table of fucking options;
		now title entry is "Fucked by Sammie";
		now sortorder entry is 5;
		now description entry is "have the sexy hybrid screw you";
		[]
		if bodyname of Player is listed in infections of Taurlist:
			choose a blank row in table of fucking options;
			now title entry is "Mounted by Sammie";
			now sortorder entry is 7;
			now description entry is "have that sexy taur mount you";
		[]
		if hunger of Sam > 10:
			choose a blank row in table of fucking options;
			now title entry is "Shrinking Shroom Oral";
			now sortorder entry is 8;
			now description entry is "Use a shrinking shroom to go into Sam's mouth";
		[]
			choose a blank row in table of fucking options;
			now title entry is "Shrinking Shroom Anal";
			now sortorder entry is 9;
			now description entry is "Use a shrinking shroom to go into Sam's ass";
		[]
			choose a blank row in table of fucking options;
			now title entry is "Shrinking Shroom Unbirth";
			now sortorder entry is 10;
			now description entry is "Use a shrinking shroom to go into Sam's pussy";
		[]
			choose a blank row in table of fucking options;
			now title entry is "Shrinking Shroom Cock";
			now sortorder entry is 9;
			now description entry is "Use a shrinking shroom to go into Sam's cock";
		[]
		repeat with y running from 1 to number of filled rows in table of fucking options:
			choose row y from the table of fucking options;
			say "[link][y] - [title entry][as][y][end link][line break]";
		while sextablerun is 0:
			say "Pick the corresponding number (1-[number of filled rows in table of fucking options])> ";
			get a number;
			if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
				choose row calcnumber in table of fucking options;
				say "[title entry]: [description entry]?";
				if Player consents:
					now sextablerun is 1;
					now lastfuck of Sam is turns;
					if title entry is "Give fellatio":
						say "[samDVoral1]";
					else if title entry is "Give cunnilingus":
						say "[samDVoral3]";
					else if title entry is "Receive fellatio":
						say "[samDVoral2]";
					else if title entry is "Fuck Sammie":
						if a random chance of 1 in 2 succeeds:
							say "[samDVfuck_bottom]";
						else:
							say "[samDVfuck2_bottom]";
					else if title entry is "Fucked by Sammie":
						if Player is female and a random chance of 1 in 2 succeeds:
							say "[samDVfuck2_top]";
						else:
							say "[samDVfuck_top]";
					else if title entry is "Mount Sammie":
						say "[samDVtaurfuck_bottom]";
					else if title entry is "Mounted by Sammie":
						say "[samDVtaurfuck_top]";
					else if title entry is "Shrinking Shroom Oral":
						say "[SamShroomOral]";
					else if title entry is "Shrinking Shroom Anal":
						say "[SamShroomAnal]";
					else if title entry is "Shrinking Shroom Unbirth":
						say "[SamShroomUnbirth]";
					else if title entry is "Shrinking Shroom Cock":
						say "[SamShroomCock]";
			else:
				say "Invalid Option.";


Part 2 - Dragon Sex

to say samdragonfirsttime:
	[puts Dragontaur as lead monster in case of impregnation]
	repeat with y running from 1 to number of filled rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		if Name entry is "Dragontaur":
			now MonsterID is y;
			break;
	say "     Sam grins at your offer and takes a hold of you in his big, strong arms. 'Mmm... I've been looking forward to this since we got here.' He kisses you as best he can with his draconic muzzle, letting his tongue play across your lips before diving into your mouth. As his tongue explores your palate, he lowers you onto one of the cots. His front dragonpaws knead over your chest as he moves to climb atop you, rumbling in pleasure as he breaks the kiss to move into position. His large, draconic cock is ready and waiting, dribbling precum across your loins as he climbs onto the strained cot. Placing his forepaws on your shoulders, he grips you firmly and lines his cock up before thrusting it slowly into you.";
	say "     His slender, pointed tip slips into your [if Player is female]vagina[else]anus[end if] easily, but his cock thickens as that delightfully ribbed shaft starts spreading you open. You moan and pant beneath him as he grins down at you, pleased to see you squirming in delight beneath his powerful form. 'That's it... take that big dragon cock,' he rumbles, pounding you harder and faster as you stretch to accommodate the big taur's large shaft and loving every moment of it.";
	WaitLineBreak;
	say "     His forepaws keep a firm grip on you, pinning you down onto the cot so he can drive his strong hips forward. Again and again he thrusts his large cock into you, fucking you like some wild beast. The ridges along his shaft rub and stimulate your [if Player is female]vaginal walls, sliding against your clit[else if Player is male]anal passage, pressing past your prostate[else]anal passage[end if] to your continued delight[if Player is male]. Your own erection throbs against your belly, twitching with every thrust the dragontaur makes into you[end if]. Eventually the frantic fucking becomes too much for Sam and he drives hard into you one last time before unleashing his hot seed to flood your [if Player is female]womb[else]belly[end if][if Player is not neuter], driving you to orgasm as well[end if]. You roar together and grip your lover's lower body tightly, relishing the hot, creamy feeling of his virile load being pumped into you.[ovichance]";
	say "     Once he's finished up, he steps back and slides his cock free. It twitches as it pops out, spraying a few last spurts onto your body. 'Mmm... If you ever want another go, I'll be happy to give you another dose of dragon cum. Give you a proper fucking like only a dragon can provide,' he rumbles. He slides his hands down your body as he looks over his handiwork before leaning forward and letting his long tongue slide slowly across your overflowing hole to get a quick taste.";

to say samdragonoral:
	say "     Sam rumbles in pleasure as you return for more fun with the virile dragon. He again pulls you into his arms and gives you [if HP of Sam is 12]another kiss, more skillful than the last, thanks to his probably[else]a passionate kiss, clearly having gotten more[end if] practice with the creatures out in the city. You moan softly into it as his tongue teases around in your mouth. After breaking the kiss, he pushes you down onto the floor as he props his forepaws up on the edge of one of the bunks. 'Mmm... I think you should get a good taste of what the dragon has to offer,' he rumbles. His cock, already having slipped free of its scaled sheath is pointing towards your mouth and dribbling precum. With it right in front of you, you can smell the strong, spicy scent of his musk and you lick your lips, the scent inviting. Taking his ridged cock in your hands, you stroke along it and bring your mouth in to kiss and lick at his dribbling glans.";
	WaitLineBreak;
	say "     'Mmm... I knew you couldn't resist having another go at my dragon cock,' he chuckles, reaching down with his hands to stroke your head, pushing you onwards to take it into your mouth and start sucking it. You slide your tongue across his pointed glans, then down along his ridged length, drawing a rumble of pleasure from the dragontaur. 'Oh yeah, just like that, baby.' You continue to fellate the powerful dragon, letting your hands slide along his shaft and down to grope his balls. Kneading those heavy orbs, you lean down further, taking more of him into your mouth. His tapered glans slides down your throat, leading the way for this thicker shaft to push in as well. The firm ridges along his shaft send shivers through your body as they move across your tongue and down your throat, letting you know just how much of the dragon's large cock you're taking in.";
	WaitLineBreak;
	say "     With most of his pulsing member stuffed into your mouth and down your throat, you moan wetly in pleasure. Leaving one hand on those heavy balls of his, you move the other down to your [if Player is neuter]bare [end if]crotch[if Player is female] to finger your dripping pussy[else if Player is male] to stroke your cock[end if], imagining having that ridged member inside you again. As his rumbles of pleasure grow louder, he pushes you forward, driving a few more inches into you before cumming hard. His hot seed blasts from his pulsing cock, shooting down your throat to feed you his rich load. His high output causes a sizeable amount of creamy cum to overflow from your mouth and dribble down your [bodytype of Player] chest. Once he's spent and withdrawn, you lay back [if Player is female]fingering your pussy to orgasm and your other hand rubs his cum all over yourself[else if Player is male]stroking your cock until you cum as well, adding your seed to his across your body before rubbing it all over yourself[else]and rub his cum all over yourself[end if]. He smiles as he watches you put on this show, rumbling about how sexy you look covered in his seed so everyone can smell you're his.";

to say samdragonfuck:
	[puts Dragontaur as lead monster in case of impregnation]
	repeat with y running from 1 to number of filled rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		if Name entry is "Dragontaur":
			now MonsterID is y;
			break;
	say "     Sam rumbles lustfully and presses you down onto your back on one of the bunks, moving to climb atop you again. 'Rrr... back for more. Best give that horny body of yours what it needs - a good fucking and a hot dose of dragon cum,' he rumbles with a grin. His powerful body pins you down and grinds down against your [bodydesc of Player] body, wedging his stiff meat [if Player is male]against your own[else]between you both[end if]. Moving back, he gets his tapered glans lined up with your [if Player is female]wet vulva[else]tight pucker[end if] and pushes it into you. His cock, made for spreading open his lovers, dribbles precum along your passage as his muscled hips push forward, driving his increasingly thicker shaft into you. You moan beneath him as each of those stimulating ridges pops into you. Soon you're panting and squirming beneath him in ecstasy as he fucks you with that exquisite cock of his in strong, hard thrusts.";
	WaitLineBreak;
	say "     You wrap your arms around his chest, pulling yourself down onto his cock again and again as he thrusts into you. 'Mmm... look at you... such a slut for a dragon cock. Wanting a proper fucking until you're stuffed full of my hot seed[if Player is female] and bred full of my whelps[end if],' he rumbles with a chuckle. You kiss and lick at his azure scales, lavishing attention on this sexy beast who's mating you. Lost in a haze of arousal, you can't help but agree with the dragontaur, your body lusting for the wonderous pleasure that you feel only his draconic cock can bring[if Player is not neuter]. Soon you're thrashing in orgasm beneath him, cumming over and over again as he drives his meat into you[else]. Soon you're thrashing in delight beneath him, your body aching to feel his release since your genderless body cannot have one of its own[end if][if Player is male]. Your spurting cock rubs against his smooth, firm scales, loving the feel of them pressed against you as your seed soaks you both[end if][if Player is female]. Your pussy clenches and tugs at his cock, milking at it in wanton need as you orgasm repeatedly[else]. Your tight hole clenches and tugs at his cock, squeezing firmly around it as you're awash with ecstasy[end if]. Your [bodytype of Player] body is sent into pleasure overload as the big taur drives hard into you one last time and releases his hot seed, blasting heavy spurts of thick semen into your [if Player is female]womb in an attempt to breed you[else]bowels, bloating your belly with his virile load[end if].[ovichance]";
	WaitLineBreak;
	say "     Once he's finished up, he steps back and slides his cock free. It twitches as it pops out, spraying a few last spurts onto your body. He steps further up onto the cot to bring his spurting shaft to your face, marking it with several streaks of semen. You moan weakly and wrap your lips around his cock, sucking the last of his load from it before he pulls away. 'You look so sexy after you've been fucked senseless.' He runs a hand over your [bodytype of Player] body and licks your cheek. 'You make such a fine slut. You should go out into the city and let some of the creatures out there mount you. Then you can come back to me and I can fuck you in that new body of yours as well,' he rumbles while fingering your creamy hole, making you shiver in delight. As you rest and recover from the wild romp, you find yourself thinking about finding some creatures to submit to out in the city.";
	increase Libido of Player by 15;
	if Libido of Player > 99, now Libido of Player is 99;

to say samdragontaurfuck:
	[puts Dragontaur as lead monster in case of impregnation]
	repeat with y running from 1 to number of filled rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		if Name entry is "Dragontaur":
			now MonsterID is y;
			break;
	say "     Sam rumbles lustfully as he looks your [bodytype of Player] form over. 'Rrr... now this is a fine body you've got here. A sexy taur just ripe for mounting,' he rumbles appreciatively. 'And now to give that hot [BodyName of Player] body of yours what it needs - a good fucking and a hot dose of dragon cum.' His powerful body moves around behind you and climbs atop you, mounting your hindquarters like a beast. His stiff meat rubs against your rump, spitting precum onto you as it moves into position. With his tapered glans lined up with your [if Player is female]wet cunt[else]tight pucker[end if], he pushes himself further onto you, sinking it into you with a strong thrust. His cock, made for spreading open his lovers, dribbles precum along your passage as his muscled hips push forward, driving his increasingly thicker shaft into you. You moan beneath him in delight as each of those stimulating ridges pops into you. Soon you're panting and squirming beneath him in ecstasy as he fucks you with that exquisite cock of his in strong, hard thrusts.";
	WaitLineBreak;
	say "     With his tauric lower body atop yours, his humanoid top half presses against your back, letting him wrap his arms around you. He hugs you like this and nips at your neck and shoulder he thrusts into you again and again. 'Mmm... you make for such a sexy taur slut. That dragon cock stuffing you feels good, doesn't it?' he rumbles[if Player is female]. 'Mmm... let's breed some whelps in that hot taur body of yours, my dear,' he adds[end if][if Nipple Count of Player > 0 and Breast Size of Player > 0]. His hands move to your bosom, groping your breasts and teasing your nipples, drawing more cries of pleasure from you[end if].";
	say "     Lost in a haze of arousal, you can't help but agree with the dragontaur, your [bodydesc of Player] form lusting for the lustful pleasure of having the dragontaur mounting you like some beast[if Player is not neuter]. Soon you're grinding your hindquarters back against him as your orgasm washes through you, cumming over and over again as he drives his meat into you[else]. Soon you're grinding your hindquarters back against him in delight, your body aching to feel his release since your genderless body cannot have one of its own[end if][if Player is male]. Your spurting cock spreads your seed across the ground beneath you in large, white splotches[end if][if Player is female]. Your pussy clenches and tugs at his cock, milking at it in wanton need as you orgasm repeatedly[else]. Your tight hole clenches and tugs at his cock, squeezing firmly around it as you're awash with ecstasy[end if]. Your [bodytype of Player] body is sent into pleasure overload as the big taur drives hard into you one last time and releases his hot seed, blasting heavy spurts of thick semen into your [if Player is female]womb in an attempt to breed you[else]bowels, bloating your belly with his virile load[end if].[ovichance]";
	WaitLineBreak;
	say "     Once he's finished up, he steps back and slides his cock from your tauric body, sending echoes of delight through you as those ridges slip free one after another. It twitches as it pops out, spraying a few last spurts across your hindquarters to mark you as bred by him. Feeling sated for the moment, you slump to the floor and rest on your side, enjoying the warm, full feeling he's left inside your lower belly. 'You look so sexy as a well-fucked taur,' he rumbles with a grin as he runs a paw along your side. 'It is a nice look for you. Maybe you should go out into the city and share it with others. Find a few other taurs to mount you as well. Then you can come back to me to have that new taur body mounted as well,' he rumbles while rubbing a forepaw at your creamy hole, making you shiver in delight. As you rest and recover from the wild mating, you find yourself thinking about finding some taurs to submit to out in the city.";
	increase Libido of Player by 20;
	if Libido of Player > 99, now Libido of Player is 99;


Part 3 - Vixen Sex

to say samvixenfirsttime:
	say "     Samantha grins at your offer and takes a hold of you in her furry arms. 'Mmm... I've been looking forward to this since we got here.' She kisses you as best she can with her vulpine muzzle, letting her tongue play across your lips before diving into your mouth. As her tongue explores your palate, she lowers you onto one of the cots. Her front foxpaws knead over your [bodytype of Player] chest as she moves to climb atop you, murring in pleasure as she breaks the kiss to move into position. Her hindquarters grind down atop your [cock size desc of Player] cock, quite hard after that wild kiss, then shift into position. Her wet vixen muff is ready and waiting, dripping juices down onto your loins as she climbs onto the strained cot. Placing her forepaws on your shoulders, she grips you firmly and lines up with your stiff member before sliding down onto it slowly.";
	say "     Your [Cock of Player] cock slips into her with ease, her slick vagina eagerly accepting its first penis. Her cunny quivers around you delightfully as you take her newfound virginity as she yips and yiffs in lustful ecstasy. You moan and pant beneath her as she squirms in pleasure atop you. 'Ohhh... oh wow! Mmmmm yeah, give it to me, baby. Fuck that slutty vixen,' she yips, bouncing her hindquarters harder and faster as her excitement builds - and you love every moment of it.";
	WaitLineBreak;
	say "     Her forepaws keep a firm grip on you, pinning you down onto the cot and keeping herself steady as she slams down onto your prick. You thrust up into her each time she comes down, eagerly getting herself fucked like some wild beast in heat. Despite her personal inexperience, it seems her body knows just what to do, with her inner walls squeezing and rippling across your [cock size desc of Player] meat in so many delightful ways. Pressing your face to the nearest of her many breasts, you wrap your lips around the rosy nipple. You get a yip of surprise from her as you give it a nibble and start suckling. After the frantic fucking becomes too much for Sam and she presses herself down hard onto your shaft one last time, you moan loudly and cum into her orgasming pussy, pumping your hot load into the sexy taur's untarnished womb, claiming it for the first time.";
	say "     Once you're finished up, she steps back slowly, a little weak-kneed as your cock slips free. Her recently stuffed pussy quivers and leaks out a few trickles of your cum. 'Mmm... If you ever want another go, I'd love to have you in me again. Give me a proper fucking like a vixen slut needs,' she giggles with a teasing grin. She even turns around and raises her tail, giving you an eyeful of her puffy and stretched pussy with your fresh load leaking out of her.";


to say samvixenoral:
	if Player is male and a random chance of 2 in 3 succeeds:
		say "     Samantha runs her hands along your sides and then down to your loins. Rubbing over your cock, she nibbles your ear. 'I was hoping to get a taste of this sexy meat of yours,' she moans. Pushing you to take a seat on the cot, she lowers herself vixentaur body to the floor and nuzzles between your legs. You run your hands through her soft hair and scritch her ears, getting a murr of pleasure from her. She gives you a foxish grin and slowly slides her tongue along your shaft, making little licks across your [cock size desc of Player] [Cock of Player] meat. She continues to tease you, moving down to do the same to your balls, further exciting and frustrating your growing arousal.";
		WaitLineBreak;
		say "     As she returns to your cock, you decide press her muzzle down onto your maleness, pushing it into her silky mouth. She moans softly at this treatment and starts sucking and licking at your penis excitedly. Clearly what she wanted all along, you drive your cock into her hot muzzle again and again, loving the feel of her sucking down on you. Her teeth, which you'd except to be sharp in a fox's muzzle, are actually quite smooth and slide across your cock in a way that only further stimulates you. Her agile tongue, soft palate and gripping throat feel wonderful as well. The whole of her muzzle feels like a hot cunt around your cock with the added pleasure of her delightful tongue. The sexy vixen's muzzle is clearly designed to give a wonderful blowjob and you eagerly take advantage of the opportunity to enjoy it. And from the wet moans and muffled yips of pleasure from Sam's stuffed muzzle, she's certainly savoring it as well. When you finally cum and blast your hot load down her throat, she eagerly swallows it all down and cums herself, soaking her thighs without even touching herself.";
	else:
		say "     Samantha runs her hands across your body and nuzzles you with a happy murr. 'I was hoping you might want to help me out, sexy. My poor muff's been feeling so achingly needy, but it'd be so much easier for you to reach it. Would you be a sweetie and lick my juicy pussy until that ache goes away?' she says with a playful giggle, turning around and presenting her hindquarters to you by raising her tail and stretching her front paws across the ground. With purely chivalrous intent (of course), you quickly agree to help out your poor, needy friend with her problem. You move in behind her and run your hands over her sexy rump before sliding your fingers to her cunt and spreading those wet folds. She is indeed quite juicy and ready, her feminine scent of arousal strong in your nose as you bring your mouth in and start licking and kissing her pussy.";
		WaitLineBreak;
		say "     She moans and yips as your tongue plays across her sensitive folds, then finds its way to her clit. As you slide your tongue across it over and over, her hips quiver and she shifts from paw to paw. 'Mmm... right there, hon. Your poor foxy needs that so badly.' You slip a few fingers into her vagina, pumping them in and out and rubbing along her inner walls. You do your best to pleasure the horny vixen, wanting her to enjoy her new female body as much as possible. And enjoy it she does as you tease her through several small orgasms before finally going wild in her juicy muff until you drive her to a loud, powerful orgasm that leaves your face soaked in her juices and the very satisfied vixen panting and moaning on the floor. She stretches out and fondles her upper bosom while you, lustfully aroused by the taste and scent of her all over your face, [if Player is male]jerk yourself off onto her lower breasts while she watches you get off as well[else if Player is female]finger yourself to a powerful orgasm of your own while she watches you get off as well[else]lick up as much as you can and wipe it up with your hands to lick it off your fingers while the pleased vixen watches you enjoy her musky juices[end if].";

to say samvixenfuck:
	say "     Samantha moans lustfully and presses her bosom against you as she hugs you tight. 'Mmm... I'm ready for more. Best give this horny vixen what she needs - a good fucking and a hot dose of your thick cum,' she says with a grin as she pushes you down onto the cot. 'Horny vixens need fuckings. It's a scientific fact,' she giggles as she rubs her forepaws across your chest before climbing up onto the cot with you. She rubs her soft, sexy body down atop of yours, making sure to grind her hindquarters firmly against your [cock size desc of Player] [Cock of Player] cock. With your erection hard and throbbing between you both, she shifts her hips and gets you lined up before sinking herself down onto your stiff member eagerly.";
	say "     Your maleness slips into her with ease, her slick vagina eagerly accepting your penis into its warm embrace. Her cunny quivers around you delightfully as she yips and yiffs in lustful ecstasy. You moan and pant beneath her as she squirms in pleasure atop you, her six breasts and hard nipples rubbing down onto your [bodydesc of Player] body. 'Oh yeah, that's just what this slutty vixen needs. Mmm... give it to me hard and breed me,' she cries as she starts riding you hard and fast.";
	WaitLineBreak;
	say "     Her forepaws keep a firm grip on your shoulders to help keep herself steady as she slams down onto your prick over and over. You thrust up into her each time she comes down, eagerly getting herself fucked like some wild beast in heat. Her inner walls squeeze and ripple across your [cock size desc of Player] meat in so many delightful ways. Samantha's clearly learning quickly and is making the most of her new body's sexual abilities. Her vagina moves and slides across your hard flesh easily, but grips and squeezes as well, milking at your cock to build you towards what will surely be a powerful climax. You bring your lips to one of her many breasts and start suckling at its rosy nipple, getting a moan from the lusty vixen. As Sam's orgasm sends shivers of delight throughout her body, she slams down onto you one last time, letting her talented cunt spasm and tug at your cock frantically, milking at your cock until you groan loudly and cum hard, blasting your load to fill her needy womb with your seed.";
	say "     Once you're finished up, she slides off your spent shaft slowly, reluctantly releasing your cock. She nuzzles you and gives you a passionate kiss before hopping off the bunk. Turning around, she gives you a grin as she makes sure to show you your handiwork again - her well-fucked pussy dripping with your fresh load as a mix of your seed and her juices run down her thighs. 'Let's do this again soon, sweetie. A slutty vixen like me will need plenty of hot cum to keep her happy and healthy,' she says with a grin, giving her rump a little shake at you before trotting off with a giggle.";

to say samvixentaurfuck:
	say "     Samantha moans lustfully and runs her paws across your [bodytype of Player] form. 'Mmm... now this is a fine body you've got here. A sexy taur to mount the sexy vixen,' she says with a grin before turning around and presenting her hindquarters to you. She gives her fluffy tail a swish and wiggles her rear invitingly. 'Come on, sweetie. This body of mine needs a hard cock and a hard fucking.' The tantalizing sight of the horny taur presenting herself sets off your own tauric instincts and you quickly mount her, sliding your [cock size desc of Player] [Cock of Player] cock into her [one of]after several attempts to get lined up[or]after a little shifting to get into proper position[or]on the first try as you're mounting her[as decreasingly likely outcomes]. With your hard erection sinking into her juicy cunt, she steadies her paws and pushes back, driving you further into her.";
	say "     Your maleness slips into her tauric body with ease, her slick vagina eagerly accepting your penis into its warm embrace. Her cunny quivers around you delightfully as she yips and yiffs in lustful ecstasy. You growl aggressively and pound into her hard and fast while your upper body presses against her softly-furred back. You wrap your arms around her in a strong hug, moving your hands to fondle her lovely breasts and tease her perky pink nipples. 'Oh yeah, just like that. Breed me like a beast, you powerful taur,' she cries as you do just that and pound into her hard like an animal.";
	WaitLineBreak;
	say "     Her tauric body pushes back into every thrust you make as it responds to its lustful need to breed and you can't help but let your [BodyName of Player] body respond in kind. Each thrust you make has your cock squeezed and milked at by the horny vixen's cunny. Her inner walls squeeze and ripple across your [cock size desc of Player] meat in so many delightful ways, clearly built to be fucked and especially so by another taur. Samantha's clearly learning quickly to make the most of her new body's sexual abilities and works her vaginal muscles to pleasure you as much as possible to get the best fuck and biggest load out of her lover. Your hard flesh slides easily into her vagina with each thrust, but that luscious hole also and squeezes as well, milking at your cock to build you towards what will surely be a powerful climax. You nuzzle at her neck and nibble at her foxy ears while your hands pinch her nipples, getting yips and moans from the lusty vixen. As Samantha's orgasm sends shivers of delight throughout her body, you thrust hard into her one last time as her talented cunt spasms and tugs at your cock frantically, milking at your rod until you groan loudly and cum hard, blasting your load to fill her needy womb with your seed.";
	say "     Once you're finished up, you slide off the well-bred vixen and plant your four feet on the ground to steady yourself, feeling a little woozy with the afterglow from your powerful orgasm. She wraps her arms around you, hugging you tight and kissing you passionately. Turning around, she gives you a grin and flashes her rump at you, showing off her well-fucked pussy and your hot semen leaking from it. Her thighs are soaked with it and her juices after the wild, bestial fucking. 'Oh, that was wonderful, sweetie. You should definitely try out some other taur forms so you can come back and breed me with them as well,' she murrs, giving her rump a little shake at you before trotting off with a giggle.";


Part 4 - Dracovixen Sex

[Add more visual reference, colors, etc...]

to say samDVfirsttime:
	say "     Sammie grins at your offer and takes a hold of you in his big, strong arms. 'Mmm... I've been looking forward to this since we got here.' She kisses you as best she can with her dracovixen muzzle, letting her tongue play across your lips before diving into your mouth. As her tongue explores your palate, she lowers you onto one of the cots. Her front paws knead over your [bodytype of Player] chest as she moves to climb atop you, murring in pleasure as she breaks the kiss to move into position";
	if Player is male:
		say ". Her hindquarters grind down atop your [cock size desc of Player] cock, quite eagerly after that passionate kiss, then shift into position. Her wet, vixen muff is ready and waiting, dripping juices down onto your loins as she climbs onto the strained cot. Placing her forepaws on your shoulders, she grips you firmly and lines up with your stiff member before sliding down onto it slowly.";
		say "     Your [Cock of Player] cock slips into her with ease, her slick vagina eagerly accepting its first penis. Her cunny quivers around you delightfully as you take her newfound virginity as she yips and rumbles in lustful ecstasy. You moan and pant beneath her as she squirms in pleasure atop you. 'Ohhh... oh wow! Mmmmm yeah, give it to me, baby. Fuck that horny herm,' she yips, bouncing her hindquarters harder and faster as her excitement builds - and you love every moment of it.";
		WaitLineBreak;
		say "     Her forepaws keep a firm grip on you, pinning you down onto the cot and keeping herself steady as she slams down onto your prick. You thrust up into her each time she comes down, eagerly getting herself fucked like some wild beast in heat. Despite her personal inexperience, it seems her body knows just what to do, with her inner walls squeezing and rippling across your [cock size desc of Player] meat in so many delightful ways. Pressing your face to the nearest of her many breasts, you wrap your lips around the lavender nipple. You get a yip of surprise from her as you give it a nibble and start suckling. You can feel her draconic cock throbbing between you, spurting precum as its vulpine knot starts to swell. After the frantic fucking becomes too much for Sammie and she presses herself down hard onto your shaft one last time, you moan loudly and cum into her orgasming pussy, pumping your hot load into the sexy taur's untarnished womb, claiming it for the first time. Even as you're pumping your semen into her, she's soaking both your chest and her lower torso with her own seed.";
		say "     Once you're finished up, she steps back slowly, a little weak-kneed as your cock slips free. Her recently stuffed pussy quivers and leaks out a few trickles of your cum. 'Mmm... If you ever want another go, I'd love to have you in me again. That was such a wonderful experience. Such a much better way to enjoy a cock inside you,' she says with a grin and a pat on her rump. 'Maybe next time you can enjoy getting a hot, creamy load like that.' She even turns around and raises her tail, giving you an eyeful of her puffy and stretched pussy with your fresh load leaking out of her.";
	else:
		say ". Her large, draconic cock is ready and waiting, dribbling precum across your loins as she climbs onto the strained cot. Placing her forepaws on your shoulders, she grips you firmly and lines his cock up before thrusting it slowly into you.";
		say "     Her slender, pointed tip slips into your [if Player is female]vagina[else]anus[end if] easily, but her cock thickens as that delightfully ribbed shaft starts spreading you open. You moan and pant beneath her as she grins down at you, pleased to see you squirming in delight beneath her powerful form. 'That's it... take that big hybrid cock,' she rumbles, pounding you harder and faster as you stretch to accommodate the big taur's large shaft and loving every moment of it.";
		WaitLineBreak;
		say "     Her forepaws keep a firm grip on you, pinning you down onto the cot so she can drive her strong hips forward. Again and again, she thrusts her large cock into you, fucking you like some wild beast. The ridges along her shaft rub and stimulate your [if Player is female]vaginal walls, sliding against your clit[else if Player is male]anal passage, pressing past your prostate[else]anal passage[end if] to your continued delight. Pressing your face to the nearest of her many breasts, you wrap your lips around the lavender nipple. Eventually the frantic fucking becomes too much for Sammie and she drives hard into you one last time and tying her swelling knot in your cunt. As the hybrid herm ties with you, her cock pulses and her hot seed to flood your [if Player is female]womb[else]belly[end if][if Player is not neuter], driving you to orgasm as well[end if]. You roar together and grip your lover's lower body tightly, relishing the hot, creamy feeling of his virile load being pumped into you while the hot juices from her cunny leak down onto you.[DVimpregchance]";
		say "     Once she's finished up, she remains tied with you, stroking your head and moaning in pleasure as you continue to suck at her nipples. Once her knot finally goes down, her ridged shaft twitches as it pops out, spraying a few last spurts onto your body. 'Mmm... that's so much better now that I'm a sexy hybrid herm. This draconic cock of my feels much more... powerful. If you ever want another go, I'll be happy to give you another dose of dracovixen cum,' she rumbles. She slides her hands down your body as she looks over her handiwork. 'Or maybe next time, you can have a sexy cock of your own to fill me,' she says before leaning forward and letting her long tongue slide slowly across your overflowing hole to get a quick taste.";


to say samDVoral:
	if a random chance of 1 in 2 succeeds:
		say "[samDVoral1]";
	else if a random chance of 3 in 5 succeeds and player is male:
		say "[samDVoral2]";
	else:
		say "[samDVoral3]";

to say samDVoral1:
	say "     Sammie rumbles in pleasure as you return for more fun with the lustful dracovixen. She pulls you into her arms and gives you an eager kiss, pushing her unusual tongue into your mouth. After breaking the kiss, she gently pushes you to the floor as she props her forepaws up on the edge of one of the bunks. 'Mmm... I think you should get a good taste of what the dracovixen has to offer,' she rumbles. Her cock, already having slipped free of its furry sheath is pointing towards your mouth and dribbling precum. With it right in front of you, you can smell her musk and take it in. You enjoy this mix of spicy and perfumy scents that mix well together into a lovely combination, much like their source. You lick your lips, finding the scent inviting, and take her ridged cock in your hands, stroking along it. You lean forward and bring it to your mouth to kiss and lick at her dribbling glans.";
	WaitLineBreak;
	say "     'Mmm... I knew you'd like another taste of my sexy cock,' she rumbles, reaching down with her hands to stroke your head, pushing you onwards to take it into your mouth and start sucking it. You slide your tongue across her pointed glans, then down along her ridged length, drawing a rumble of pleasure from the lustful taur. 'Oh yeah, just like that, baby.' You continue to fellate the hybrid, letting your hands slide along her shaft and down to grope her balls. Kneading those heavy orbs, you lean down further, taking more of her into your mouth. Her tapered glans slides down your throat, leading the way for this thicker shaft to push in as well. The firm ridges along her shaft send shivers through your body as they move across your tongue and down your throat, letting you know just how much of the taur's large cock you're taking in.";
	WaitLineBreak;
	say "     With most of her pulsing member stuffed into your mouth and down your throat, you moan wetly in pleasure. Sliding one hand further back to rub her wet folds, you move the other down to your [if Player is neuter]bare [end if]crotch[if Player is female] to finger your dripping pussy[else if Player is male] to stroke your cock[end if], imagining having that ridged member inside you. As her rumbles of pleasure grow louder, she pushes you forward, driving a few more inches into you before cumming hard. Her hot seed blasts from her pulsing cock, shooting down your throat to feed you her rich load. Her high output causes a sizeable amount of creamy cum to overflow from your mouth and dribble down your [bodytype of Player] chest, letting you enjoy the spicy-sweet flavor of her cum. Once she's spent and withdrawn, you lay back [if Player is female]fingering your pussy to orgasm and your other hand rubs her cum all over yourself[else if Player is male]stroking your cock until you cum as well, adding your seed to hers across your body before rubbing it all over yourself[else]and rub her cum all over yourself[end if]. Sammie smiles as she watches you put on this show, rumbling about how sexy you look covered in her seed and how she might try mounting you next time.";

to say samDVoral2:
	say "     Sammie runs her hands along your sides and then down to your loins. Rubbing over your cock, she nibbles your ear. 'I was hoping to get a taste of this sexy meat of yours,' she rumbles. Pushing you to take a seat on the cot, she lowers herself dracovixentaur body to the floor and nuzzles between your legs. You reach around her horns, run your hands through her soft hair and scritch her ears, getting a murr of pleasure from her. She gives you a foxish grin and slowly slides her tongue along your shaft, making little licks across your [cock size desc of Player] [Cock of Player] meat. She continues to tease you, moving down to do the same to your balls, further exciting and frustrating your growing arousal.";
	WaitLineBreak;
	say "     As she returns to your cock, you decide press her muzzle down onto your maleness, pushing it into her silky mouth. She moans softly at this treatment and starts sucking and licking at your penis excitedly. Clearly what she wanted all along, you drive your cock into her hot muzzle again and again, loving the feel of her sucking down on you. Her teeth, which you'd except to be sharp in a dragon-like muzzle, are actually quite smooth and slide across your cock in a way that only further stimulates you. Her agile tongue, soft palate and gripping throat feel wonderful as well. The whole of her muzzle feels like a hot cunt around your cock with the added pleasure of her delightful tongue. The sexy dracovixen's muzzle is clearly designed to give a wonderful blowjob and you eagerly take advantage of the opportunity to enjoy it. And from the wet moans and muffled yips of pleasure from Sammie's stuffed muzzle, she's certainly savoring it as well. When you finally cum and blast your hot load down her throat, she eagerly swallows it all down and cums herself, soaking her thighs and underbelly without even touching herself.";

to say samDVoral3:
	say "     Sammie runs her hands across your body and nuzzles you with a happy murr. 'I was hoping you might want to help me out, sexy. My poor muff's been feeling so achingly needy, but it'd be so much easier for you to reach it. Would you be a sweetie and lick my juicy pussy until that ache goes away?' she says with a grin, turning around and presenting her hindquarters to you by raising her tail and stretching her front paws across the ground. With purely chivalrous intent (of course), you quickly agree to help out your poor, needy friend with her problem. You move in behind her and run your hands over her sexy rump before sliding your fingers to her cunt and spreading those wet folds. She is indeed quite juicy and ready, her scent of arousal strong in your nose as you bring your mouth in and start licking and kissing her pussy. Much like her scent, her honeyed juices have a sweet and spicy taste that is very enjoyable and makes you eager for more.";
	WaitLineBreak;
	say "     She moans and yips as your tongue plays across her sensitive folds, then finds its way to her clit. As you slide your tongue across it over and over, her hips quiver and she shifts from paw to paw. 'Mmm... right there, hon. Your poor foxy needs that so badly.' You slip a few fingers into her vagina, pumping them in and out and rubbing along her inner walls while moving your free hand across her belly to stroke her throbbing cock. You do your best to pleasure the horny dracovixen, wanting her to enjoy her new herm body as much as possible. And enjoy it she does as you tease her through several small orgasms before finally going wild in her juicy muff until you drive her to a loud, powerful orgasm that leaves your face soaked in her juices and the very satisfied hybrid panting and moaning in a puddle of her own semen on the floor. She stretches out and fondles her upper bosom while you, lustfully aroused by the taste and scent of her all over your face, [if Player is male]jerk yourself off onto her lower breasts while she watches you get off as well[else if Player is female]finger yourself to a powerful orgasm of your own while she watches you get off as well[else]lick up as much as you can and wipe it up with your hands to lick it off your fingers while the pleased taur watches you enjoy her musky juices[end if].";

to say samDVfuck_top:
	say "     Sammie rumbles lustfully and presses you down onto your back on one of the bunks, moving to climb atop you again. 'Mmm... I was hoping you'd be back for more. I'd say you need a good fucking and a hot dose of dracovixen cum,' she rumbles with a grin. Her powerful body pins you down and grinds down against your [bodydesc of Player] body, wedging her stiff meat [if Player is male]against your own[else]between you both[end if]. Moving back, she gets her tapered glans lined up with your [if Player is female]wet vulva[else]tight pucker[end if] and pushes it into you. Her cock, made for spreading open her lovers, dribbles precum along your passage as her muscled hips push forward, driving her increasingly thicker shaft into you. You moan beneath her as each of those stimulating ridges pops into you. Soon you're panting and squirming beneath her in ecstasy as she fucks you with that exquisite cock of hers in strong, hard thrusts.";
	WaitLineBreak;
	say "     You wrap your arms around her chest, pulling yourself down onto her cock again and again as she thrusts into you. 'Mmm... you look so sexy like that, riding my throbbing cock for all its worth. Wanting a proper fucking until you're stuffed full of my hot seed[if Player is female] and kits[end if],' she rumbles with a smile. You kiss and lick at her furry body, lavishing attention on this sexy beast who's mating you. Lost in a haze of arousal, you can't help but agree with the dragontaur, your body lusting for the wonderous pleasure that you feel only her hybrid cock can bring[if Player is not neuter]. Soon you're thrashing in orgasm beneath her, cumming over and over again as she drives her meat into you[else]. Soon you're thrashing in delight beneath her, your body aching to feel her release since your genderless body cannot have one of its own[end if][if Player is male]. Your spurting cock rubs against her fluffy fur, loving the feel of it sliding against you as your seed soaks you both[end if][if Player is female]. Your pussy clenches and tugs at her cock, milking at it in wanton need as you orgasm repeatedly[else]. Your tight hole clenches and tugs at her cock, squeezing firmly around it as you're awash with ecstasy[end if]. Your [bodytype of Player] body is sent into pleasure overload as the big taur drives hard into you one last time, pushing her thick knot into you. Once tied with you, she releases her hot seed, blasting heavy spurts of thick semen into your [if Player is female]womb in an attempt to breed you[else]bowels, bloating your belly with her virile load[end if].[DVimpregchance]";
	WaitLineBreak;
	say "     Once she's finished up and her knot's gone down, she pops it out of you, unleashing a flow of excess cum out of your recently stuffed hole. She grins down at you and rubs her hand along your side and over your warm belly. 'You look so sexy after you've been fucked senseless.' She runs a hand over your [bodytype of Player] body and licks your cheek. 'You make such a fine playmate. You should go out into the city and let some of the creatures out there mount you. Then you can come back to me and I can fuck you in that new body of yours as well,' she rumbles while fingering your creamy hole, making you shiver in delight. As you rest and recover from the wild romp, you find yourself thinking about finding some creatures to submit to out in the city.";
	increase Libido of Player by 10;
	if Libido of Player > 99, now Libido of Player is 99;


to say samDVfuck_bottom:
	say "     Sammie moans lustfully and presses her bosom against you as she hugs you tight. 'Mmm... I'm ready for more. Best give this horny dracovixen what she needs before she decides to just take it,' she ways with a playful wink and a twitch of her hard cock. 'I could use a good fucking and a hot dose of your thick cum,' she adds with a grin as she pushes you down onto the cot. Sammie runs her forepaws across your chest before climbing up onto the cot with you. She rubs her soft, sexy body down atop of yours, making sure to grind her hindquarters firmly against your [cock size desc of Player] [Cock of Player] cock. With your erection hard and throbbing against her own, she shifts her hips and gets you lined up before sinking herself down onto your stiff member eagerly.";
	say "     Your maleness slips into her with ease, her slick vagina eagerly accepting your penis into its warm embrace. Her cunny quivers around you delightfully as she yips and rumbles in lustful ecstasy. You moan and pant beneath her as she squirms in pleasure atop you, her six breasts and hard nipples rubbing down onto your [bodydesc of Player] body as her draconic cock twitches and spurts pre. 'Oh yeah, that's just what I needed. Mmm... give it to me hard and breed me,' she moans as she starts riding you hard and fast.";
	WaitLineBreak;
	say "     Her forepaws keep a firm grip on your shoulders to help keep herself steady as she slams down onto your prick over and over. You thrust up into her each time she comes down, eagerly getting herself fucked like some wild beast in heat. Her inner walls squeeze and ripple across your [cock size desc of Player] meat in so many delightful ways. Sammie's clearly learning quickly and is making the most of her new body's sexual abilities. Her vagina moves and slides across your hard flesh easily, but grips and squeezes as well, milking at your cock to build you towards what will surely be a powerful climax. You bring your lips to one of her many breasts and start suckling at its rosy nipple, getting a moan from the lusty vixen. As the hybrid's orgasm sends shivers of delight throughout her body, she slams down onto you one last time, letting her talented cunt spasm and tug at your cock frantically, milking at your cock until you groan loudly and cum hard, blasting your load to fill her needy womb with your seed. As she cums, her penis pulses and sends sticky blasts of her seed to soak you both.";
	say "     Once you're finished up, she slides off your spent shaft slowly, reluctantly releasing your cock. She nuzzles you and gives you a passionate kiss before hopping off the bunk. Turning around, she gives you a grin as she makes sure to show you your handiwork again - her well-fucked pussy dripping with your fresh load as a mix of your seed and her juices run down her thighs. 'Let's do this again soon, sweetie. A body like this was made to fuck and be fucked a lot. I hope you can keep up,' she says with a grin, giving her rump a little shake at you before trotting off with a chuckle.";


to say samDVtaurfuck_top:
	say "     Sammie rumbles lustfully as she looks your [bodytype of Player] form over. 'Mmm... now this is a fine body you've got here. A sexy taur just ripe for mounting,' she rumbles appreciatively. 'I'd say that hot [BodyName of Player] body of yours needs a good fucking and a hot dose of dracovixen cum.' Her powerful body moves around behind you and climbs atop you, mounting your hindquarters like a beast. Her stiff meat rubs against your rump, spitting precum onto you as it moves into position. With her tapered glans lined up with your [if Player is female]wet cunt[else]tight pucker[end if], she pushes himself further onto you, sinking it into you with a strong thrust. Her cock, made for spreading open her lovers, dribbles precum along your passage as her muscled hips push forward, driving her increasingly thicker shaft into you. You moan beneath her in delight as each of those stimulating ridges pops into you. Soon you're panting and squirming beneath her in ecstasy as she fucks you with that exquisite cock of hers in strong, hard thrusts.";
	WaitLineBreak;
	say "     With her tauric lower body atop yours, her humanoid top half presses against your back, letting her wrap his arms around you. She hugs you like this and nips at your neck and shoulder she thrusts into you again and again. 'Mmm... you make for such a sexy taur. That big cock stuffing you feels good, doesn't it? Taurs are made for mounting,' she rumbles as she rubs her breasts against your back[if Player is female]. 'Mmm... let's breed some kits in that hot taur body of yours, my dear,' she adds[end if][if Nipple Count of Player > 0 and Breast Size of Player > 0]. Her hands move to your bosom, groping your breasts and teasing your nipples, drawing more cries of pleasure from you[end if].";
	say "     Lost in a haze of arousal, you can't help but agree with the dragontaur, your [bodydesc of Player] form lusting for the lustful pleasure of having the dragonvixentaur mounting you like some beast[if Player is not neuter]. Soon you're grinding your hindquarters back against her as your orgasm washes through you, cumming over and over again as she drives her meat into you[else]. Soon you're grinding your hindquarters back against her in delight, your body aching to feel her release since your genderless body cannot have one of its own[end if][if Player is male]. Your spurting cock spreads your seed across the ground beneath you in large, white splotches[end if][if Player is female]. Your pussy clenches and tugs at her cock, milking at it in wanton need as you orgasm repeatedly[else]. Your tight hole clenches and tugs at her cock, squeezing firmly around it as you're awash with ecstasy[end if]. Your [bodytype of Player] body is sent into pleasure overload as the big taur drives hard into you one last time, tying her knot inside you and releases her hot seed, blasting heavy spurts of thick semen into your [if Player is female]womb in an attempt to breed you[else]bowels, bloating your belly with her virile load[end if].[DVimpregchance]";
	WaitLineBreak;
	say "     With her knot keeping you tied together, you get to enjoy more snuggling time with the sexy taur atop you. She nuzzles and nips at your neck, then leans around so you two can kiss. Her paws continue to slide over your body[if Breast Size of Player > 0] and play with your bosom[end if]. Once her knot's finally come down enough, she reluctantly dismounts. As she steps back and slides her cock from your tauric body, it sends echoes of delight through you as those ridges slip free one after another. When her spent shaft pops free, the excess cum overflows from your well-stuffed pussy and runs down your inner thighs. Feeling sated for the moment, you slump to the floor and rest on your side, enjoying the warm, full feeling she's left inside your lower belly. 'You look so sexy as a well-fucked taur,' she rumbles with a smile as she runs a paw along your side. 'It is a nice look for you. Maybe you should go out into the city and share it with others. Find a few other taurs to mount you as well. Then you can come back to me to have that new taur body mounted as well,' she rumbles while rubbing a forepaw at your creamy hole, making you shiver in delight. As you rest and recover from the wild mating, you find yourself thinking about finding some taurs to submit to out in the city.";
	increase Libido of Player by 15;
	if Libido of Player > 99, now Libido of Player is 99;


to say samDVtaurfuck_bottom:
	say "     Sammie moans lustfully and runs her paws across your [bodytype of Player] form. 'Mmm... now this is a fine body you've got here. A sexy taur to mount the sexy dracovixen,' she says with a grin before turning around and presenting her hindquarters to you. She gives her fluffy tail a swish and wiggles her rear invitingly. 'Come on, sweetie. You gave me this bod, so now you've got to help me tend to its needs. And right now it needs a hard cock and a hard fucking.' The tantalizing sight of the horny taur presenting herself sets off your own tauric instincts and you quickly mount her, sliding your [cock size desc of Player] [Cock of Player] cock into her [one of]after several attempts to get lined up[or]after a little shifting to get into proper position[or]on the first try as you're mounting her[as decreasingly likely outcomes]. With your hard erection sinking into her juicy cunt, she steadies her paws and pushes back, driving you further into her.";
	say "     Your maleness slips into her tauric body with ease, her slick vagina eagerly accepting your penis into its warm embrace. Her cunny quivers around you delightfully as she yips and moans in lustful ecstasy. You growl aggressively and pound into her hard and fast while your upper body presses against her smoothly scaled back. You wrap your arms around her in a strong hug, moving your hands to fondle her lovely breasts and tease her perky pink nipples. 'Oh yeah, just like that. Breed me like a beast, you powerful taur,' she cries as you do just that and pound into her hard like an animal.";
	WaitLineBreak;
	say "     Her tauric body pushes back into every thrust you make as it responds to its lustful need to breed and you can't help but let your [BodyName of Player] body respond in kind. Each thrust you make has your cock squeezed and milked at by the horny vixen's cunny and makes her own hard cock twitch in response. Her inner walls squeeze and ripple across your [cock size desc of Player] meat in so many delightful ways, clearly built to be fucked and especially so by another taur. Sammie's clearly learning quickly to make the most of her new body's sexual abilities and works her vaginal muscles to pleasure you as much as possible to get the best fuck and biggest load out of her lover. Your hard flesh slides easily into her vagina with each thrust, but that luscious hole also and squeezes as well, milking at your cock to build you towards what will surely be a powerful climax. You nuzzle at her neck and nibble at her foxy ears while your hands pinch her nipples, getting yips and moans from the lusty vixen. As Sammie's orgasm sends shivers of delight throughout her body, you thrust hard into her one last time as her talented cunt spasms and tugs at your cock frantically, milking at your rod until you groan loudly and cum hard, blasting your load to fill her needy womb with your seed. As your balls drain into her, her balls pull up tight and send their ample load spraying from her ridged cock onto the floor.";
	say "     Once you're finished up, you slide off the well-bred hybrid and plant your four feet on the ground to steady yourself, feeling a little woozy with the afterglow from your powerful orgasm. She wraps her arms around you, hugging you tight and kissing you passionately. Turning around, she gives you a grin and flashes her rump at you, showing off her well-fucked pussy and your hot semen leaking from it. Her thighs are soaked with it and her juices after the wild, bestial fucking. 'Oh, that was wonderful, sweetie. You should definitely try out some other taur forms so you can come back and breed me with them as well,' she murrs, giving her rump a little shake at you before trotting off with a rumble of pleasure.";

to say samDVfuck54:
	if Player is herm:
		say "     Approaching Sammie with that look in your eyes, she grins and flicks her fluffy tail excitedly. She wraps the strong appendage around your waist and pulls you in close. 'Mmm... I'm glad you're here. This sexy body of mine is aching for some more sex. What're you in the mood for this time? I think it's high time I let you pick for a change. Would you prefer to stuff that hot pussy of mine or do you want a serving of hot dracovixen cum pumped into you?' With her aroused scent in the air and her paws roaming over your [bodydesc of Player] body, both of those sound quite tempting.";
		say "     [bold type]Shall you [link]fuck her (Y)[as]y[end link] or let her [link]fuck you (N)[as]n[end link]?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Fuck her.";
		say "     ([link]N[as]n[end link]) - Get fucked.";
		if Player consents:
			LineBreak;
			say "[samDVfuck2_bottom]";
		else:
			LineBreak;
			say "[samDVfuck2_top]";
	else if Player is male:
		say "     Approaching Sammie with that look in your eyes, she grins and flicks her fluffy tail excitedly. She wraps the strong appendage around your waist and pulls you in close. 'Mmm... I'm glad you're here. This sexy body of mine is aching for some more sex, so I hope you're in the mood to fuck me. I'll let you pick next time, but right now I need you stuffing that hot pussy of mine. With her aroused scent in the air and her paws roaming over your [bodydesc of Player] body, that sound quite tempting.";
		say "[samDVfuck2_bottom]";
	else:
		say "     Approaching Sammie with that look in your eyes, she grins and flicks her fluffy tail excitedly. She wraps the strong appendage around your waist and pulls you in close. 'Mmm... I'm glad you're here. This sexy body of mine is aching for some more sex, so I hope you're in the mood to get fucked. I'll let you pick next time, but right now I need to drain my balls into some hot pussy. With her aroused scent in the air and her paws roaming over your [bodydesc of Player] body, that sound quite tempting.";
		say "[samDVfuck2_top]";

to say samDVfuck2_top:
	say "     Sammie rumbles lustfully and presses you down onto your back on one of the bunks, climbing atop it again so she can grind her pulsing cock against your body. Her powerful body pins you down grinds down against your [bodytype of Player] body, rubbing her throbbing shaft and full ballsack [if Player is male]against your own[else]between you both[end if]. After some pleasurable grinding while you play with her lower breasts, she shifts back a bit and gets her tapered glans lined up with your wet pussy. She twitches her cock so it rubs against your folds and spurts precum across them, teasing you a little before she pushes forward into you. Her draconic, knotted cock spreads you open as she drives her increasingly thicker shaft into you. You moan beneath her one stimulating ridge after another pops into you. Soon you're panting and squirming beneath her in ecstasy as she fucks you with that exquisite cock of hers in strong, hard thrusts.";
	WaitLineBreak;
	say "     You wrap your arms around her chest, pulling yourself down onto her cock again and again as she thrusts into you. 'Mmm... you look so sexy like that, riding my throbbing cock for all its worth. I hope you're ready for this, because I've got a nice, big load saved up for you,' she rumbles with a smile. You kiss and lick at her furry body, lavishing attention on this sexy beast who's mating you. Lost in a haze of arousal, you can't help but moan that you want it all, your body lusting for the wonderous pleasure that you feel only her hybrid cock can bring. Soon you're thrashing in orgasm beneath her, cumming over and over again as she drives her meat into you[if Player is male]. Your spurting cock rubs against her fluffy fur, loving the feel of it sliding against you as your seed soaks you both with your [Cum Load Size of Player] load[end if]. Your pussy clenches and tugs at her cock, milking at it in wanton need as you orgasm repeatedly. Your [bodytype of Player] body is shudders with pleasure overload as the big taur drives a final time, forcing her thick knot into you. Once tied with you, she releases her hot seed, blasting heavy spurts of thick semen into your womb in an attempt to breed you.[DVimpregchance]";
	WaitLineBreak;
	say "     Once she's finished up and her knot's gone down, she pops it out of you, unleashing a flow of excess cum out of your recently stuffed pussy. Moving around, she presses her many breasts across your face while she starts fingering your creamy hole. As you start nursing from her bosom, she works several fingers in and out of your well-stretched cunt. Drinking her spicy, perfumy milk and enjoying her nimble fingers, you are pushed to another orgasm that leaves you weak and panting on the bed as she strides away[if HP of Sam is 54]. As you watch her go, you notice that her underbelly's looking noticeably rounder than when she was first transformed. It seems she's gotten herself pregnant sometime along the line with all the sex she's been having[end if].";

to say samDVfuck2_bottom:
	say "     Sammie moans lustfully as she pushes you down onto one of the bunks, running her forepaws across your chest as she climbing up onto the cot with you. Her powerful body pins you down grinds down against your [bodytype of Player] body, rubbing her soft, sexy body down atop of yours, making sure to grind her hindquarters firmly against your [cock size desc of Player] [Cock of Player] cock. After some pleasurable grinding while you play with her lower breasts, she shifts her position and gets her juicy pussy lined up with your glans. She wiggles her rear so it rubs against your tip, drawing a few spurts of precum from your excited shaft. With your erection hard and throbbing against her waiting cunt, she sinks herself down onto it with a soft moan of pleasure.";
	say "     Your pulsing maleness slips into her with ease, her slick vagina eagerly accepting your manhood into its warm embrace. Her cunny quivers around you delightfully as she yips and rumbles in lustful ecstasy. You moan and pant beneath her as works her hips, grinding and riding your hard shaft. Her six breasts and hard nipples rub down onto your [bodydesc of Player] body as her knotted, draconic cock twitches and spurts pre. 'Oh yeah, that's just what I needed. Mmm... give it to me hard and fill me up,' she moans as she starts riding you hard and fast.";
	WaitLineBreak;
	say "     Her forepaws keep a firm grip on your shoulders to help keep herself steady as she slams down onto your prick over and over. You thrust up into her each time she comes down, eagerly getting herself fucked like some wild beast in heat. Her inner walls squeeze and ripple across your [cock size desc of Player] meat as she milks your manhood with her talented cunt. Her vagina moves and slides across your hard flesh easily, but grips and squeezes as well, a powerful climax fast approaching. You bring your lips to one of her many breasts and start suckling at its rosy nipple, getting a moan from the lusty vixen as well as a taste of spicy, perfumed milk. As the hybrid's orgasm sends shivers of delight throughout her body, she slams down onto you one last time, letting her talented cunt spasm and tug at your cock frantically, milking at your shaft until you groan loudly and cum hard, blasting your [Cum Load Size of Player] load into her needy womb. As she cums, her penis pulses and sends sticky blasts of her seed to soak you both.";
	say "     Once you're finished up, she slides off your spent shaft slowly, reluctantly releasing your cock. Moving around, she presses her many breasts across your face while she starts stroking your flagging shaft. As you start nursing from her bosom, she works you back to full erection. Drinking her spicy, perfumy milk and enjoying her nimble fingers, you are pushed to another orgasm that leaves you weak and panting on the bed as she strides away[if HP of Sam is 54]. As you watch her go, you notice that her underbelly's looking noticeably rounder than when she was first transformed. It seems she's gotten herself pregnant sometime along the line with all the sex she's been having[end if].";


Section 6 - Shrinking Shroom Content


to say SamShroom:
	if hunger of Sam is 0:	[First talk with Sam about shrinking shrooms]
		say "     Sam waves a hand over the vials scattered around the shed. 'As you can see here, I've been busy collecting more samples, but I must admit that it's getting harder to find more unique specimens. If you happen to find anything interesting during your explorations, please let me know.'";
		if MushroomCaveVisited is 1:	[Had visited the shrinking shroom site]
			say "Recalling the miniaturized landscape that you found earlier, you tell Sam about it, which swiftly grabs the [if hp of Sam < 30]dragontaur's[else if hp of Sam < 50]vixentaur's[else]dracovixentaur's[end if] attention. 'Fascinating,' Sam responds. 'And you believe that this shrunken area has something to do with nanites and radiation? This is definitely something that I need to look into. You wouldn't happen to have brought back a sample from that area, would you?'";
			if glowing mushroom is owned:
				say "     [bold type]Do you give a glowing mushroom to Sam?[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Give the scientist a mushroom.";
				say "     ([link]N[as]n[end link]) - Keep the mushroom to yourself.";
				if player consents:		[Give Sam a shrinking shroom]
					LineBreak;
					say "     You pull out a mushroom that you harvested from the site in question and give it to the scientist. 'Interesting... Very interesting...' Sam says as they take the shroom and slowly turn it around to examine the glowing green fungus. 'I would love to have some more of these to run tests on, but I imagine that it would be a major hassle to constantly run back and forth just to sate my curiosity. Hmm... I wonder...' Sam looks over to one of the vial stashes lying around and sifts through it, extracting one vial filled with a murky-white liquid before going outside. Curious, you follow the taur to the back of the shed where there are several large planter boxes filled with soil. Sam puts the mushroom into one of the boxes, completely covering it with dirt, and then pours the vial's contents where the fungus was planted.";
					say "     You and Sam stare at the planter box for several minutes, and to your surprise, several tiny green mushrooms eventually pop up from the soil. Sam chuckles at your amazement and explains, 'I used extracted nutrients from some of the rapidly growing plant life that have been popping up in some parts of the city.' Sam looks back to the mushrooms, which seemed to have stopped growing once they were about half the size of the original. 'I'm glad to see that my little gardening project works, and although it will take a bit longer before this batch fully matures, it looks like I'll be able to grow my own mushrooms here to fuel my research. Thank you for bringing this incredible find to me. Give me a moment to study them, and I'll share whatever information that I can get.'";
					decrease carried of glowing mushroom by 1;
					now hunger of Sam is 10;
				else:	[Sam goes searching for their own shrinking shrooms]
					say "[SamShroomSearch]";
			else:
				say "[SamShroomSearch]";
		else:
			say "You tell the scientist that you'll keep an eye out for anything of interest.";
	else if hunger of Sam is 9:		[Sam returns from looking for shrinking shrooms]
		say "     'As you can see, I'm back from taking a look at that miniaturized site that you told me about,' Sam greets. 'Come on. I have something to show you.' Curious, you follow the scientist to the back of the shed where there are several large planter boxes filled with soil, one of which is glowing faintly as several small, but familiar mushrooms, are growing. 'I gathered some mushrooms from the site and decided to try planting one of them. I added some extracted nutrients from some of the rapidly growing plant life that have been popping up in some parts of the city, and from the looks of it, my little gardening project works. It will take a bit longer before this batch fully matures, but it looks like that I'll be able to grow my own mushrooms here. I'll be able to keep on running tests on them without the inconvenience of running back and forth. Thank you for telling me about this incredible find.'";
		now hunger of Sam is 10;
	else if hunger of Sam is 10:	[Sam talk to open shrinking shroom vore scenes]
		say "     'I've been studying the mushrooms from the shrinking zone, and your initial hypothesis about radiation affecting nanites is right. I haven't yet been able to determine exactly why, but these mutated nanites have been given shrinking properties. As you might already know, anyone that decides to eat these [italic type]shrinking shrooms[roman type] will be reduced to roughly the size of a mouse. Fortunately, the effect is only temporary. I'll continue studying these shrooms as I grow them, but if you want, I can spare you one every now and then.'";
		say "     Sam pauses for a moment to look over your entire body before continuing, 'Actually, while we're on the subject of these shrinking shrooms, I've realized that they can also be used to help me gather some other valuable data, but I will need your help with that. You see, I've been interested in possibly studying the insides of a person transformed by the nanites, but I never had the means to, until now. My plan is to have you consume a shrinking shroom so that your miniaturized form can enter me. You'll then spend some time inside of me before I expel you from my body so that I can swab you for samples of my insides. I know that this is an odd request, but you're my best shot at this because it's not like I can ask any random person off the street if I could eat them, and for the same reason, I can't have you go around being eaten by potentially dangerous individuals. Nonetheless, I am aware that all of this sounds bizarre and dangerous, so you are under no obligation to do any of this. If you do decide to help me though, I assure you that not only will I take every precaution to ensure your safety, but I believe that I can make this experiment enjoyable for the both of us.'";
		now hunger of Sam is 11;
	else if hunger of Sam is 20:	[Sam gives player a shrinking shroom]
		say "     You ask if Sam can give you a shrinking shroom. 'Sure thing. Here you go.' Sam takes out a shrinking shroom from a covered storage container and then hands it to you with a smile.";
		now hunger of Sam is 11;
		increase carried of glowing mushroom by 1;
	else:	[Sam doesn't have a shrinking shroom to give to player]
		say "     You ask if Sam can give you a shrinking shroom. 'Sorry, but I've used all of the shrinking shrooms on experiments and tests,' Sam apologizes. 'I'll try to save you one from the next batch.'";

to say SamShroomSearch:		[Sam goes searching for Shrinking Shrooms]
	say "     Shaking your head, you say that you don't have anything on hand, but you do tell Sam where the place is. The scientist mulls on your information for a moment before quickly stuffing several empty vials and a few other specimen collection containers into a bag. 'This place sounds so interesting. I must go and check it out right now. I shouldn't be gone for more than a day, so check back then if you're interested in finding out what I discovered. See you later.' With those departing words, Sam exits the shed, leaving you to go about your business until the taur returns.";
	now hunger of Sam is 1;
	now Sam is nowhere;

an everyturn rule:	[Timer for Sam's Shrinking Shroom Content]
	if hunger of Sam > 0 and hunger of Sam < 9:		[Sam is searching for Shrinking Shrooms]
		increase hunger of Sam by 1;
	else if hunger of Sam is 9:		[Sam is back from searching for Shrinking Shrooms]
		move Sam to large shed;
		if player is in large shed:
			say "     The shed door opens, and you turn to see Sam step in. 'Ah, you're here. As you can see, I'm back from taking a look at that miniaturized site that you told me about,' Sam greets. 'Come on. I have something to show you.' Curious, you follow the scientist to the back of the shed where there are several large planter boxes filled with soil, one of which is glowing faintly as several small, but familiar mushrooms, are growing. 'I gathered some mushrooms from the site and decided to try planting one of them. I added some extracted nutrients from some of the rapidly growing plant life that have been popping up in some parts of the city, and from the looks of it, my little gardening project works. It will take a bit longer before this batch fully matures, but it looks like that I'll be able to grow my own mushrooms here. I'll be able to keep on running tests on them without the inconvenience of running back and forth. Thank you for telling me about this incredible find.'";
			now hunger of Sam is 10;
	else if hunger of Sam > 10 and hunger of Sam < 20:	[Timer for Sam giving player a shrinking shroom]
		increase hunger of Sam by 1;

to say SamShroomIntro:
	say "     You tell Sam that you're willing to help with studying their insides, and the [if hp of Sam < 30]dragontaur[else if hp of Sam < 50]vixentaur[else]dracovixentaur[end if] smiles at you with both eagerness and gratitude. 'Thank you[if player is not defaultnamed], [name of player][end if],' they say. 'I'm sure that this will be an enlightening experience for the both of us.' Sam takes out a shrinking shroom from a covered storage container and gives it to you. It only takes a few moments after you consume the mushroom before the room gets seemingly bigger as you shrink. Soon, you're no bigger than a mouse, and the towering taur in front of you feels like that they're as big as a house due to your diminutive size. Sam quickly but neatly sets aside your belongings before they lay their open hand on the ground in front of you, allowing you to climb onto it. Once you're situated, Sam carefully raises their hand, and even though you know that they are moving at a slow speed for your safety, the trip up still has a hint of foreboding as you pass by a sea of [if hp of Sam < 30]blue scales[else if hp of Sam < 50]pink fur[else]violet scales and fur[end if] until you're face to gigantic face with the scientist's muzzle.";

to say SamShroomOral:	[Oral Shrinking Shroom scene]
	say "[SamShroomIntro]";
	say "     'So, the plan is that you'll crawl into my mouth,' Sam explains. 'You'll stay in there for a bit to get coated in my saliva before you'll go down into my stomach. Don't worry, the nanites will prevent you from being digested for a duration, and I'll be sure to get you out of there long before that protection expires. So, you ready to be eaten?' Though you know that Sam meant it as a joke, it doesn't change the fact that you're more or less willingly offering yourself as food for a predator, but while the notion seems bizarre, you can't help but feel a bit excited and curious with the plan. When you say that you're ready, Sam smiles briefly before slowly opening their maw. Your breath hitches at the sight of both their massive fangs and the tunnel of flesh behind it.";
	WaitLineBreak;
	say "     The hand that you're riding on moves up against Sam's mouth as they loll out their tongue, and after you take a deep breath, you jump onto the living welcome carpet, the soft muscle cushioning your fall, even if it makes for a somewhat wet landing. Sam's tongue then retracts between their teeth, taking you along with it, and you have a brief moment to marvel at the cave of pink flesh all around you before the mouth closes, plunging you into a muggy, heated darkness. You don't have long to acclimate to your new surroundings before you feel Sam's tongue rise up, and you're knocked onto your back when you're mashed against the top of their mouth. The tongue gently grinds you against the ceiling, and although your front is being pressed into a hard, bony surface, it is offset by the soft muscle squishing beneath you, giving you a form of erotic full-body massage. You can't help but moan in pleasure from the flurry of sensations, and you can feel a growing need in your loins.";
	say "     But before you can have your mounting arousal tended to, the rubbing stops as the tongue lowers back down, and you're panting from the overwhelming stimuli to your senses. However, you're given no rest as Sam drops you to the bottom of the mouth, and their tongue promptly pins you against the base of their bottom teeth to lavish you with an onslaught of licks. You're already drenched from the earlier grinding, but Sam seems to be making extra sure that you're thoroughly coated as they lick every one of your nooks and crannies. You're unable to stop the massive muscle, not that you want to. The warm, soft tongue gently drags across your entire body, leaving nothing but pleasure in its wake, and your arousal shoots past the point that you were brought to earlier.";
	WaitLineBreak;
	say "     Almost as if sensing your growing need, Sam moves to focus on your lower half, the tip of their tongue carefully caressing [if player is herm]all of your genitals[else if player is male]your cock[smn][else if player is female]your cunt[sfn][else]your groin[end if]. You don't last long under the oral ministrations, and you cry out when you hit your climax[if player is herm], Sam humming in approval as your sexual fluids spray all over their taste buds[else if player is male], Sam humming in approval as you cum all over their taste buds[else if player is female], Sam humming in approval as your juices spray all over their taste buds[end if]. You slump onto the tongue in exhaustion, and you don't resist when it maneuvers you on top of it and ferries you to the back of the mouth. A little light shines in when Sam opens up to take a deep breath, giving you a glimpse of the drop into the scientist's throat right before they tilt their head back, sending you hurtling down into the pink abyss.";
	say "     The passage quickly narrows down into a long, narrow tube, supple flesh squeezing down on your hapless form and slowing your descent while Sam's sigh of satisfaction echoes around you. Plunged into darkness once again, you can only concentrate on the sounds of squelching flesh and the feel of the throat muscles pressing into you. The tight, compressing passage makes it impossible for you to do little more than squirm, and all you can do is abide the muscles dragging you deeper into the dark depths. As the slick walls press in, you find that you're still sensitive from your earlier climax, and it doesn't take much for the encompassing silken touches to bring you to yet another orgasm. After what felt like an eternity of being subjugated to the pulsating walls and the pleasure that they constantly wring out of you, your feet briefly touches a wall before you are squeezed through a ring of flesh and fall into an open space that can only be the taur's stomach.";
	say "     There is plenty of room in the living cavern, but your exhaustion from Sam's ministrations and traveling through their innards, as well as the constantly shifting floor, makes it impossible for you to stand, let alone move about. 'I have to admit, you were delicious,' comes Sam's voice from all around you. 'I certainly enjoyed our little experiment, and from the look of things, you did too. I'll need you to stay inside of my stomach for a while to make sure I can get good samples, so just sit back and relax for now. I'll let you out when I'm ready.' Tired yet satisfied by your miniature ordeal, you crawl into a spot where you can rest against the pliant wall. The warm, humid air and the oddly calming sounds of your squelching surroundings only add to your weariness, and it doesn't take long for you to pass out.";
	WaitLineBreak;
	say "[SamShroomEnd]";

to say SamShroomAnal:	[Anal Shrinking Shroom scene]
	say "[SamShroomIntro]";
	say "     'Alright, so the goal is for you to enter my anus for this sample collection, however, there is a bit of a small problem, and it has to do with, well, you being so small. I need samples from deep inside of me, and while you might be the appropriate size, it's going to be tough for you to power your way in. My hands cannot reach back there to assist you, but fortunately, I have a tool that will solve our problems... in a slightly unorthodox way.' Using the hand that's not holding you, Sam reaches into a nearby box and pulls out a dildo, and not just any dildo. While it was shaped like an ordinary human dick, the size of it would have been more fitting on a horse, which is actually appropriately fitting for Sam's large tauric body.";
	WaitLineBreak;
	say "     'I found this during one of my jaunts around the city, and this thing has helped me with the extraction process from several difficult subjects. [if hp of Sam < 30 or hp of Sam > 49]Although, I haven't used it since this body of mine has a much better version built right into it,' they add with a chuckle. '[end if]You'll be holding onto this thing when it goes inside of me, and hopefully, we'll be able to get you in really deep. So, you ready?' Though you know that your role is nothing more than a bizarre mix of butt food and an add-on sex toy, you can't help but feel a bit excited and curious with the plan. Nodding your assent, Sam affixes the dildo onto the shed wall, and after adjusting it so that it's level with their ass, you are brought right up to the giant plastic phallus. You climb onto the dildo, the synthetic cock slightly cold and soft to the touch, and you make your way to its tip. Once you wrapped your limbs around the sex toy, Sam says, 'Alright, I'm going to start. Hold on tight. This is going to be quite the ride for the both of us.'";
	say "     The taur scientist turns around, showing off a titanic ass of [if hp of Sam < 30]blue scales[else if hp of Sam < 50]pink fur[else]violet scales and fur[end if] with a puckered hole right in its center, which just so happens to be your destination. The humongous booty slowly moves closer, encompassing your vision, and even from a distance, you get a whiff of the musk emanating from it. Sam moans when the dildo tip slowly pushes inside of him, and you're soon plunged into a darkness of musk and taut flesh sliding along and engulfing your entire body. The anal walls clenches down tightly on your intrusion, but the squeezing sensation only lasts for a moment before you feel the surrounding flesh slide in the opposite direction until you find yourself back in the outside world.";
	WaitLineBreak;
	say "     However, your respite doesn't last long as the gargantuan ass pushes right back into the dildo, returning you to the musky depths. In and out you go of the tunnel of flesh as Sam fucks themself on the phallic wall ornament, each push sinking both the sex toy and you deeper into the taur. 'A-almost there!' Sam announces after a while, heavily panting from the lustful exertion. 'Get ready to let go!' With a loud groan, Sam gives one final push, taking the dildo all the way to the hilt and plunging you deep inside of them. While Sam catches their breath, you let go of the dildo, and soon, the plastic phallus withdraws, leaving you behind. With your phallic transport gone, the surrounding walls promptly clamp down on your hapless form, the clenching muscles slowly drawing you even deeper.";
	say "     The tight tunnel makes it impossible for you to do anything but squirm, which quickly becomes a problem. Your head swims with lust from being exposed to the depths of Sam's intoxicating aroma, and the surrounding flesh caressing you from all sides only adds to the fire stirring in your loins. While you cannot tend to yourself by normal means, you're able to shift yourself until you can press your groin right up against a wall, grinding your [if player is male]cock[smn][else if player is female]cunt[sfn][else]crotch[end if] against the supple flesh. It doesn't take long for you to moan out in pleasure when your body twitches from your climax[if player is male], your cum smearing against the walls[else if player is female], your juices smearing against the walls[end if]. Exhausted from both your orgasm and the ordeal needed to achieve it, you slowly drift off to sleep to the oddly relaxing caress of Sam's anal walls as they draw you deeper and deeper into the taur.";
	WaitLineBreak;
	say "[SamShroomEnd]";

to say SamShroomUnbirth:	[Unbirth Shrinking Shroom scene]
	say "[SamShroomIntro]";
	say "     'For this session, we're going to have you go in through my vagina with the hopes that you'll make it to my womb, which is where the best samples are,' Sam explains cheerfully. 'Since my hands aren't able to really reach back there, you're going to have to push your way in by yourself, but once you get in enough, my body should take care of the rest.' After you affirm your assent to the plan, Sam places you on a nearby table and turns around, pressing their rear up to the table's edge. 'Dive on in whenever you're ready,' Sam prompts as they lift their tail, presenting you with an unobstructed view of their enormous rear, including the pussy that you're about to delve into. Walking toward the pink tunnel's entrance that is nearly twice your shrunken height, you pick up the taur's musk.";
	WaitLineBreak;
	say "     The heady, alluring scent is magnified on your diminutive size, and any trepidation that you might have had is washed away by the intoxicating scent. In fact, the sweet smell makes you even more eager, hastening your movements to get closer to the inviting slit. Heat and potent musk washes over you when you step in front of Sam's cunt, and with no hesitation, you reach into the folds. Sam shivers from your touch, but they manage to remain still enough for you to get a stable footing and move the rest of your body into their sex. The pulsating walls are already slick to the touch, a clear sign of Sam's eagerness and anticipation to fully take you. Thanks to the wetness, you're able to push deeper into the slippery slit with ease, your wriggling body rubbing against the walls and making Sam moan in pleasure.";
	say "     You relish the velvety sensations of the inner walls touching you, and when you reach far enough into the taur's canal where the passage narrows to the point where you're starting to be squished from both sides, the scientist's pussy clenches down on you, squeezing you between supple, soft flesh. There's a brief moment where you're trapped by the smothering, moist folds before Sam's sex takes over and sucks you in headfirst into the musky depths. Plunged into darkness, all that you know are the sounds and sensations of undulating flesh caressing you from every angle as you're dragged deeper into the canal, all while Sam's breaths grow heavier with arousal as the scientist enjoys your squirming form.";
	WaitLineBreak;
	say "     Of course, Sam is not the only one enjoying this [italic type]scientific[roman type] experiment. The warm, soft flesh pressing into you lights your own arousal, each clench of the surrounding walls drawing you in deeper while also sending a pulse of pleasure through you. Your [if player is male]cock[smn][else if player is female]cunt[sfn][else]crotch[end if] is subjugated to constant rubbing against velvety, supple flesh, and it doesn't take long for the caressing walls to make you moan out in pleasure when your body twitches from your climax[if player is male], your cum smearing against the walls[else if player is female], your juices smearing against the walls[end if]. While coming down from your orgasm, the clenching tunnel continues to ferry you deeper into the depths, your shifting surroundings gently kneading your weary body.";
	say "     Your impromptu massage is interrupted when your head bumps into a wall, which opens slowly to accept your quivering body. You're pushed into a chamber barely big enough to allow you to move your limbs, and there's no question that you have made it into Sam's womb. Despite being forced to curl up into a ball in the confined space, the churning walls continue to squish around you, smothering you in comforting warmth and tender care. You feel safe and protected within Sam's womb. Exhausted from your journey and your recent climax, you feel safe and protected within Sam's womb, which causes you to relax and soon doze off in the enveloping embrace of soft flesh.";
	WaitLineBreak;
	if Strength of Sam < 3:		[Regular scene ending for first 3 unbirths]
		say "[SamShroomEnd]";
		increase Strength of Sam by 1;
	else if Strength of Sam < 4:		[Unbirth scene now ends with bound state: first time]
		say "     When you come to, you're confused when you see nothing but darkness, but the sounds of squelching flesh and the feel of supple walls kneading your body tells you that you're still within Sam's womb. 'Oh, you're awake,' Sam's voice echoes around you when the taur feels your stirring. 'So, uh, you're probably wondering why I haven't let you out by now. Well, I'll just cut to the chase and admit that I really enjoy having you so deep inside of me. I still intend to collect samples from you, but there's no rule saying that I can't have some fun, right? Judging by how you keep coming back to me, I presume that you find our little experiment enjoyable too. I propose from here on out that you'll stay with me a bit longer whenever we do this experiment. Of course, if you ever feel like you've had enough during a session, just do some struggling, and I'll let you out. Additionally, I'll release you myself after a while. As heavenly as it is having you inside of me, I'd rather play it safe and not have you inside of me for too long.'";
		wait for any key;
		SamUBBind;
	else:	[Unbirth scene ends with bound state: subsequent times]
		say "     When you come to, you're greeted by the sounds of squelching flesh and the feel of supple walls kneading your body, telling you that you're still within Sam's womb. 'Oh, you're awake,' Sam's voice echoes around you when the taur feels your stirring. 'So, uh, just like before, it feels so good having you inside of me. Just do some struggling if you want me to let you out. Otherwise, I'll release you myself after a while.'";
		wait for any key;
		SamUBBind;

to say SamShroomCock:	[Cock Vore Shrinking Shroom scene]
	say "[SamShroomIntro]";
	say "     'I'm sure that you have observed that semen is one of the most common and potent methods of delivering the transformative nanites, so having you get samples of my own cum should give me plenty of material to research,' Sam explains. 'To be clear, you will be going inside of me through my penis and then be deposited into one of my balls. A bit odd, yes, but it's the best way to ensure the samples are [italic type]fresh[roman type].' After receiving your assent to the experiment, Sam smiles, and with you still in their hand, they move to lay on their side on a nearby mat with pillows on it. 'Now, I can't really reach down there with my hands, so you'll have to get things started by yourself,' the scientist informs after setting you down on the mat near their belly.";
	WaitLineBreak;
	say "     This offers you an unobstructed view of the taur's cock, which is lying just a short distance away from where you stand. As you get closer to the rod, the heady aroma of sex invades your senses, beckoning you to hasten your last few steps to your musky goal. Sam's already impressively huge tool now dwarfs your diminutive body, which just makes the upcoming experiment all the more enticing. You lay your hands on the girthy rod, making the taur shiver, as you admire the warm flesh, the rod seemingly throbbing in approval and eagerness from your touch. Walking right up to the slit, any trepidation that you might've had is washed away when you take a deep breath of potent musk, lighting your arousal, and you slowly stick your arms into the shaft.";
	say "     'Th-that feels a bit weird, but also very interesting. K-keep going,' Sam says, along with delighted groans. Urged on by the scientist's words and the growing intensity of the lustful odor, you start inserting the top part of your body into the throbbing entrance, the slit stretching just enough for you to push in with ease. This earns you even more moans of pleasure from Sam, which continues to increase in intensity as you slowly insert the rest of your body the taur. However, you're not even halfway in when Sam apparently loses control to their lust, and everything starts shaking as they start humping madly.";
	WaitLineBreak;
	say "     Each thrust of the scientist's hips slurps a bit more of your body into the musky tunnel, which is drooling precum all over your body and making it all the more easier for the cock to take you in. Between the clenching walls drawing you in while Sam continues to thrust, your entire body is plunged into the darkness of the slimy tunnel, the walls pulsating and squeezing down on your hapless form. The trip through the tight passage doesn't last long, however, and you're soon dumped into a pool of slimy goo, signalling your arrival in one of the cum-filled balls of the taur. Bathing in warm, sticky seed and breathing in the intoxicating musk, your senses are overloaded by lust.";
	say "     Smearing more of the heady cum on yourself while you work at your crotch, it doesn't take long for you to yowl out in pleasure as you reach your climax[if player is male], your cum adding to the pool that you're submerged in[else if player is female]your juices adding to the pool that you're submerged in[end if]. Yet despite your recent orgasm, being literally bathed in lust and arousing musk still leaves you horny, and it isn't long before you find yourself reaching for your [if player is male]cock[smn][else if player is female]cunt[sfn][else]crotch[end if] again. The living chamber of debauchery coaxes several more climaxes out of you before exhaustion finally overtakes your libido, and you soon doze off in the warm goo.";
	WaitLineBreak;
	if Dexterity of Sam < 3:		[Regular scene ending for first 3 cock vore]
		say "[SamShroomEnd]";
		increase Dexterity of Sam by 1;
	else if Dexterity of Sam < 4:		[Cock vore scene now ends with bound state: first time]
		say "     When you come to, you're confused when you see nothing but darkness, but the viscous, heated goo that most of your body is submerged in tells you that you're still within one of Sam's balls. 'Oh, you're awake,' Sam's voice echoes around you when the taur feels your stirring. 'So, uh, you're probably wondering why I haven't let you out by now. Well, I'll just cut to the chase and admit that I really enjoy having you so deep inside of me. I still intend to collect samples from you, but there's no rule saying that I can't have some fun, right? Judging by how you keep coming back to me, I presume that you find our little experiment enjoyable too. I propose from here on out that you'll stay with me a bit longer whenever we do this experiment. Of course, if you ever feel like you've had enough during a session, just do some struggling, and I'll let you out. Additionally, I'll release you myself after a while. As heavenly as it is having you inside of me, I'd rather play it safe and not have you inside of me for too long.'";
		wait for any key;
		SamCockBind;
	else:	[Cock vore scene ends with bound state: subsequent times]
		say "     When you come to, you're greeted by the sounds of squelching flesh and the feel of supple walls kneading your body, telling you that you're still within Sam's womb. 'Oh, you're awake,' Sam's voice echoes around you when the taur feels your stirring. 'So, uh, just like before, it feels so good having you inside of me. Just do some struggling if you want me to let you out. Otherwise, I'll release you myself after a while.'";
		wait for any key;
		SamCockBind;

to say SamShroomEnd:
	say "     When you come to, you find yourself lying on the floor of the shed with a blanket draped over you. Not only are you back to your usual size, but you had been thoroughly cleaned of your spelunking within Sam. Speaking of Sam, the transformed scientist is busy inspecting a set of vials, but they turn to you when they notice your movements. 'Oh good. You're awake,' Sam greets cheerfully. 'I have to admit that I had quite a bit of fun having you inside of me, but the most important part is that I got all sorts of valuable samples from you. Thank you again for all of your help. Of course, I can always use more samples, so if you feel like being my [italic type]little[roman type] assistant again, let me know.'";
	LibidoLoss 40;

Section 7 - Subroutines and Functions

to vixentaur_active:
	repeat with y running from 1 to number of filled rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		if Name entry is "Vixentaur":
			now MonsterID is y;
			now non-infectious entry is false;
			now area entry is "Outside";
			break;

to dragontaur_active:
	repeat with y running from 1 to number of filled rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		if Name entry is "Dragontaur":
			now MonsterID is y;
			now non-infectious entry is false;
			now area entry is "Outside";
			break;

to DVtaur_active:
	repeat with y running from 1 to number of filled rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		if Name entry is "Dracovixentaur":
			now MonsterID is y;
			now non-infectious entry is false;
			now area entry is "Outside";
			break;

to tripletaur_active:
	let found be 0;
	repeat with y running from 1 to number of filled rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		if Name entry is "Vixentaur" or Name entry is "Dragontaur" or Name entry is "Dracovixentaur":
			now MonsterID is y;
			now non-infectious entry is false;
			now area entry is "Outside";
			increase found by 1;
		if found is 3, break;


monstermemory is a number that varies.

to say DVimpregchance: [Allows for varied offspring by Sam/Dracovixentaur]
	let Z be a random number between 1 and 4;
	now monstermemory is MonsterID;
	if Z is 1 and FemaleList is not banned: [puts Vixentaur as lead monster in case of impregnation]
		setmonster "Vixentaur";
		say "[impregchance]";
	else if Z is 2 and MaleList is not banned: [puts Dragontaur as lead monster in case of egg-pregnation]
		setmonster "Dragontaur";
		say "[ovichance]";
	else if Z is 3: [puts Dracovixentaur as lead monster in case of impregnation]
		setmonster "Dracovixentaur";
		say "[impregchance]";
	else: [puts Dracovixentaur as lead monster in case of egg-pregnation]
		setmonster "Dracovixentaur";
		say "[ovichance]";
	now MonsterID is monstermemory;


Section 8 - Bound state


TempSamSanity is a number that varies.

to SamUBBind:
	now lustatt is Libido of Player;
	now TempSamSanity is humanity of Player;
	now calcnumber is -1;
	let Trixieexit be 0;
	while Trixieexit is 0:
		if humanity of Player < 50:
			now obliging is true;
		checkboundrecover;
		if clearnomore is 0, clear the screen;
		if lustatt > 99:
			say "     You're constantly being caressed from all sides by slick, supple walls. Every inch of you is tended to by the pulsating flesh, including your [if player is male]cock[smn][else if player is female]cunt[sfn][else]crotch[end if], which makes you pant with need. The encompassing erotic touches continue until you let out a loud moan as you reach your climax, all while Sam's womb walls continues to press into you, prolonging your orgasmic pleasure. Eventually, you come down from your lustful high, and the temptation to remain within the warm embrace of Sam's womb grows.";
			LineBreak;
			now struggleatt is 0;
			if Libido of Player > 25, decrease Libido of Player by (Libido of Player / 10) + 1;
			now lustatt is Libido of Player;
			if enduring is true:
				decrease humanity of Player by 5 + (psycheadjust * 2);
			else:
				decrease humanity of Player by 13 + (psycheadjust * 5);
				if struggleatt > 0, decrease struggleatt by 1;
		now enduring is false;
		say "     You're within Sam's womb. [one of]The slick walls constantly caress and rub against you[or]You can hear the taur moan happily from how you're filling them so delightfully[or]'I know that I've probably said this more than a few times, but it feels so good having you inside of me,' Sam says[at random]. You can [bold type]S[roman type]truggle to let Sam know that you want to be let out, [if obliging is true][bold type]O[roman type]blige[else][bold type]A[roman type]bide[end if] to their womb, [if boundrecover is true][bold type]R[roman type]ecover from[else][bold type]E[roman type]ndure[end if] to try and stay inside of the taur for as long as you can.[line break]";
		say "[bold type]1[roman type] - [link]Struggle[as]1[end link][line break]";
		say "[bold type]2[roman type] - [link][if obliging is true]Oblige[else]Abide[end if][as]2[end link][line break]";
		say "[bold type]3[roman type] - [link][if boundrecover is false]Endure[else]Recover[end if][as]3[end link][line break]";
		say "Sanity: [humanity of Player]/ 100	Lust: [lustatt]/100	Hunger: [hunger of Player]	Thirst: [thirst of Player]	Struggle: [SamStruggle]";
		if humanity of Player < 1:
			LineBreak;
			say "     Sam's womb is just too heavenly to even think about leaving. The constant touch of soft, warm flesh all around you is incredibly soothing and gratifying, so much that you relax into the womb's embrace, intent on an elongated stay. An unknown time spent in warmth and comfort passes before you hear Sam grunt a few times and then the surrounding walls suddenly clamp down on you, squeezing you from all sides with squishy flesh. This only lasts for a moment before you're pushed feet first through a small hole. As Sam begins moaning in arousal, you are ferried through their canal, the walls wet with arousal. The trip from the womb takes less time than the journey to it, and it isn't long before Sam lets out one last moan of pleasure as they reach an orgasm, shooting you out of their pussy, along with a torrent of their juices. Thankfully, Sam had the foresight to put a cushion near their cunt beforehand, giving you a soft landing while they are occupied with their orgasm, although that doesn't stop you from getting drenched in their femcum.";
			say "     Sam quickly recovers from their release, and they promptly begin cleaning you off. The scientist uses multiple rags to wipe you down and then storing the used cloths in various containers. 'Well, that was fun,' Sam says cheerfully after they finished cleaning you. 'I really enjoyed our time together, and I got plenty of research material to study, thanks to you. The effects of the shrinking shrooms should wear off pretty soon, so feel free to rest here until then.' Sure enough, you grow back to normal size after a few minutes. You promptly gather your belongings and think about what you should do next.";
			wait for any key;
			now humanity of Player is TempSamSanity;
			cleanboundmemory;
			now Trixieexit is 1;
			follow the turnpass rule;
		else:
			let k be 0;
			now keychar is "INVALID";
			change the text of the player's command to "";
			while keychar is "INVALID":
				now k is the chosen letter;
				translate k;
				if the player's command matches "[number]":
					now keychar is "[number understood]";
			if keychar in lower case exactly matches the text "s" or keychar in lower case exactly matches the text "1" or keychar in lower case exactly matches the text "return" or keychar in lower case matches the text "struggle":
				LineBreak;
				increase struggleatt by 1;
				if struggleatt < 2:
					say "     There's not too much room for you to move from your curled up position, but you're able to bang your limbs against your surroundings, though you make sure not to do it too hard and risk injuring Sam's interior. It only takes a few moments of struggling before there's a small jolt, followed by Sam's voice asking, 'Oh, are you ready to come out? Keep on struggling if that's the case.'";
					increase lustatt by 7 + (lustadjust * 2);
					wyvhumanityroll;
					wait for any key;
				else:
					say "     Again, you move about within Sam's womb to get their attention. After you struggle for a bit more, Sam says, 'Alright, it seems like you're done with our little experiment. Just give me a few moments and I'll have you out of there.' You hear Sam grunt a few times and then the surrounding walls suddenly clamp down on you, squeezing you from all sides with squishy flesh. This only lasts for a moment before you're pushed feet first through a small hole. As Sam begins moaning in arousal, you are ferried through their canal, the walls wet with arousal. The trip from the womb takes less time than the journey to it, and it isn't long before Sam lets out one last moan of pleasure as they reach an orgasm, shooting you out of their pussy, along with a torrent of their juices. Thankfully, Sam had the foresight to put a cushion near their cunt beforehand, giving you a soft landing while they are occupied with their orgasm, although that doesn't stop you from getting drenched in their femcum.";
					say "     Sam quickly recovers from their release, and they promptly begin cleaning you off. The scientist uses multiple rags to wipe you down and then storing the used cloths in various containers. 'Well, that was fun,' Sam says cheerfully after they finished cleaning you. 'I really enjoyed our time together, and I got plenty of research material to study, thanks to you. The effects of the shrinking shrooms should wear off pretty soon, so feel free to rest here until then.' Sure enough, you grow back to normal size after a few minutes. You promptly gather your belongings and think about what you should do next.";
					cleanboundmemory;
					now Trixieexit is 1;
					follow the turnpass rule;
					wait for any key;
				next;
			else if (obliging is true and (keychar in lower case exactly matches the text "o" or keychar in lower case matches the text "oblige")) or (obliging is false and (keychar in lower case exactly matches the text "a" or keychar in lower case matches the text "abide")) or keychar in lower case exactly matches the text "2":
				LineBreak;
				if obliging is true:
					decrease struggleatt by 1;
					say "     [one of]Enveloped in warmth and caressing flesh, you relax inside of the living chamber[or]You feel too comfortable within Sam's womb to think about leaving at the moment[or]Soothed by the gentle caressing touches of the rippling walls, you doze off for a moment[at random].";
					wyvhumanityroll;
					increase lustatt by 14 + (lustadjust * 4);
				else:
					decrease struggleatt by 1;
					say "     [one of]Enveloped in warmth and caressing flesh, you relax inside of the living chamber[or]You feel too comfortable within Sam's womb to think about leaving at the moment[or]Soothed by the gentle caressing touches of the rippling walls, you doze off for a moment[at random].";
					wyvhumanityroll;
					increase lustatt by 7 + (lustadjust * 2);
				wait for any key;
				next;
			else:
				LineBreak;
				now enduring is true;
				if boundrecover is true:
					say "     With a brief flash of insight, you're able to find a glimpse of mental clarity within these confines, recovering a small portion of your lost humanity.";
					now boundrecover is false;
					SanBoost 3;
				else:
					say "     You try to calm yourself down, focusing on delaying your next climax to gather your thoughts.";
					wyvhumanityroll;
				LineBreak;
				increase lustatt by 3 + lustadjust;
				wait for any key;
				next;
			say "Invalid action.";

to SamCockBind:
	now lustatt is Libido of Player;
	now TempSamSanity is humanity of Player;
	now calcnumber is -1;
	let Trixieexit be 0;
	while Trixieexit is 0:
		if humanity of Player < 50:
			now obliging is true;
		checkboundrecover;
		if clearnomore is 0, clear the screen;
		if lustatt > 99:
			say "     Submerged in a pool of raw, gooey lust, it's only a matter of time for your libido to reach its breaking point, and once again, you can't think of anything but to tend to your growing arousal. Working at your [if player is male]cock[smn][else if player is female]cunt[sfn][else]crotch[end if], along with the assistance of intoxicating musk invading your senses, you are brought to another climax [if player is male], your cum adding to the pool that you're submerged in[else if player is female]your juices adding to the pool that you're submerged in[end if]. Eventually, you come down from your lustful high just enough to allow you to think about your next action, though your lingering horniness tempts you to remain within the pleasuarable confines of Sam's ball.";
			LineBreak;
			now struggleatt is 0;
			if Libido of Player > 25, decrease Libido of Player by (Libido of Player / 10) + 1;
			now lustatt is Libido of Player;
			if enduring is true:
				decrease humanity of Player by 5 + (psycheadjust * 2);
			else:
				decrease humanity of Player by 13 + (psycheadjust * 5);
				if struggleatt > 0, decrease struggleatt by 1;
		now enduring is false;
		say "     You're within one of Sam's balls. [one of]Musky taur cum covers every inch of you, making your head swim with lust[or]You can hear the taur moan happily from how you're filling them so delightfully[or]'I know that I've probably said this more than a few times, but it feels so good having you inside of me,' Sam says[at random]. You can [bold type]S[roman type]truggle to let Sam know that you want to be let out, [if obliging is true][bold type]O[roman type]blige[else][bold type]A[roman type]bide[end if] to their womb, [if boundrecover is true][bold type]R[roman type]ecover from[else][bold type]E[roman type]ndure[end if] to try and stay inside of the taur for as long as you can.[line break]";
		say "[bold type]1[roman type] - [link]Struggle[as]1[end link][line break]";
		say "[bold type]2[roman type] - [link][if obliging is true]Oblige[else]Abide[end if][as]2[end link][line break]";
		say "[bold type]3[roman type] - [link][if boundrecover is false]Endure[else]Recover[end if][as]3[end link][line break]";
		say "Sanity: [humanity of Player]/ 100	Lust: [lustatt]/100	Hunger: [hunger of Player]	Thirst: [thirst of Player]	Struggle: [SamStruggle]";
		if humanity of Player < 1:
			LineBreak;
			say "     It's just far too pleasurable within Sam's ball to even think about leaving. The cum you're bathing in keeps you warm and in a constant state of delightful arousal. In fact, you can feel your lust cresting again, and once again, you tend to yourself to achieve yet another gratifying orgasm. Potent seed and musk is all that you know as you continuously bring yourself to climax, your horny self intent on an elongated stay within Sam's ball. You hear Sam grunt a few times and then the chamber that you're in jostles about, tossing you and the pool of around. This only lasts for a moment before you're ejected from Sam's ball. As the scientist moans in arousal, you are shot through the tight tunnel that is their cock and out back into the outside world. Thankfully, Sam had the foresight to put a cushion near their dick beforehand, giving you a soft landing while they are occupied with their orgasm, although that doesn't stop you from getting drenched in the seed that you were just bathing in moments ago.";
			say "     Sam quickly recovers from their release, and they promptly begin cleaning you off. The scientist uses multiple rags to wipe you down and then storing the used cloths in various containers. 'Well, that was fun,' Sam says cheerfully after they finished cleaning you. 'I really enjoyed our time together, and I got plenty of research material to study, thanks to you. The effects of the shrinking shrooms should wear off pretty soon, so feel free to rest here until then.' Sure enough, you grow back to normal size after a few minutes. You promptly gather your belongings and think about what you should do next.";
			wait for any key;
			now humanity of Player is TempSamSanity;
			cleanboundmemory;
			now Trixieexit is 1;
			follow the turnpass rule;
		else:
			let k be 0;
			now keychar is "INVALID";
			change the text of the player's command to "";
			while keychar is "INVALID":
				now k is the chosen letter;
				translate k;
				if the player's command matches "[number]":
					now keychar is "[number understood]";
			if keychar in lower case exactly matches the text "s" or keychar in lower case exactly matches the text "1" or keychar in lower case exactly matches the text "return" or keychar in lower case matches the text "struggle":
				LineBreak;
				increase struggleatt by 1;
				if struggleatt < 2:
					say "     Your movements are dampened by the viscous seed, but you're able to bang your limbs against your surroundings, though you make sure not to do it too hard and risk injuring Sam's interior. It only takes a few moments of struggling before there's a small jolt, followed by Sam's voice asking, 'Oh, are you ready to come out? Keep on struggling if that's the case.'";
					increase lustatt by 7 + (lustadjust * 2);
					wyvhumanityroll;
					wait for any key;
				else:
					say "     Again, you move about within Sam's ball to get their attention. After you struggle for a bit more, Sam says, 'Alright, it seems like you're done with our little experiment. Just give me a few moments and I'll have you out of there.' You hear Sam grunt a few times and then the chamber that you're in jostles about, tossing you and the pool of around. This only lasts for a moment before you're ejected from Sam's ball. As the scientist moans in arousal, you are shot through the tight tunnel that is their cock and out back into the outside world. Thankfully, Sam had the foresight to put a cushion near their dick beforehand, giving you a soft landing while they are occupied with their orgasm, although that doesn't stop you from getting drenched in the seed that you were just bathing in moments ago.";
					say "     Sam quickly recovers from their release, and they promptly begin cleaning you off. The scientist uses multiple rags to wipe you down and then storing the used cloths in various containers. 'Well, that was fun,' Sam says cheerfully after they finished cleaning you. 'I really enjoyed our time together, and I got plenty of research material to study, thanks to you. The effects of the shrinking shrooms should wear off pretty soon, so feel free to rest here until then.' Sure enough, you grow back to normal size after a few minutes. You promptly gather your belongings and think about what you should do next.";
					cleanboundmemory;
					now Trixieexit is 1;
					follow the turnpass rule;
					wait for any key;
				next;
			else if (obliging is true and (keychar in lower case exactly matches the text "o" or keychar in lower case matches the text "oblige")) or (obliging is false and (keychar in lower case exactly matches the text "a" or keychar in lower case matches the text "abide")) or keychar in lower case exactly matches the text "2":
				LineBreak;
				if obliging is true:
					decrease struggleatt by 1;
					say "     [one of]The warm seed that you're bathing in feels as comforting as a jacuzzi with the added bonus of making you horny[or]You feel too comfortable within Sam's ball to think about leaving at the moment[or]Heat and musk muddles your senses with lust, and you take the time to fondle yourself[at random].";
					wyvhumanityroll;
					increase lustatt by 14 + (lustadjust * 4);
				else:
					decrease struggleatt by 1;
					say "     [one of]The warm seed that you're bathing in feels as comforting as a jacuzzi with the added bonus of making you horny[or]You feel too comfortable within Sam's ball to think about leaving at the moment[or]Heat and musk muddles your senses with lust, and you take the time to fondle yourself[at random].";
					wyvhumanityroll;
					increase lustatt by 7 + (lustadjust * 2);
				wait for any key;
				next;
			else:
				LineBreak;
				now enduring is true;
				if boundrecover is true:
					say "     With a brief flash of insight, you're able to find a glimpse of mental clarity within these confines, recovering a small portion of your lost humanity.";
					now boundrecover is false;
					SanBoost 3;
				else:
					say "     You try to calm yourself down, focusing on delaying your next climax to gather your thoughts.";
					wyvhumanityroll;
				LineBreak;
				increase lustatt by 3 + lustadjust;
				wait for any key;
				next;
			say "Invalid action.";

to say SamStruggle:
	say "< [bracket]-[if struggleatt > 0]X[else]-[end if][close bracket]";


Section 9 - Endings

when play ends:
	if BodyName of Player is "Feline Hexataur": [special surrender ending]
		say "     Having given yourself over to Rick, you and Sammie are made into lovely hybrid feline hexataurs for the dominant tigertaur to use and whelp whenever shi chooses to do so, which shi does quite a lot given that shi's made the former lab into hir new den. Very rarely does either your or Sammie's bellies stay flat as the lustful tigertaur spends many a day filling the two of you with hir cubs, all of whom grow up into being exotic hybrid felinetaurs like their [']mothers[']. And having two conjoined taur bodies, each with a womb of its own, you breed and whelp quite the pride of sexy kittens.";
		say "     When the some of the military happens to stumble over your little den, Rick takes that as a sign to lead you, Sammie, and your cubs out of the city and into the rest of the world. From what little you remember of that time, you recall that some of the soldiers had given chase, but very few could keep up with the small band of felinetaurs, and those who did manage to catch up to the lot of you... well, currently you find yourself watching as Rick busies hirself with breeding one of them while the others lounge around you, Sammie, and the pair of cubs the two of you are currently nursing.";
		stop the action;
	else if BodyName of Player is not "Vixentaur" and BodyName of Player is not "Dragontaur" and BodyName of Player is not "Dracovixentaur":
		if humanity of Player < 10:
			if HP of Sam >= 10 and HP of Sam <= 29:
				say "     After you succumb to the infection and do not return, Sam strikes back out on his own, heading into the city to enjoy the sexy creatures populating the fallen city. He breeds many new dragontaur whelps as his powerful body allows him to mount many a lustful creature.";
			else if HP of Sam >= 30 and HP of Sam <= 49:
				say "     After you succumb to the infection and do not return, Samantha strikes back out on her own, heading into the city to enjoy the sexy creatures populating the fallen city. She births many new vixentaur kits as her lustful body is mounted by many a horny creature.";
			else if HP of Sam >= 50 and HP of Sam <= 69:
				say "     After you succumb to the infection and do not return, Sammie strikes back out on her own, heading into the city to enjoy the sexy creatures populating the fallen city. She births many new kits as her lustful body is mounted by many a horny creature and sires numerous others in those she mounts. Her offspring are a collection of male dragontaurs, female vixentaurs and herm dracovixentaurs.";
		else:
			if HP of Sam >= 10 and HP of Sam <= 29: [Dragontaur - survival]
				say "     Shortly before the military forces arrive to rescue everyone, Sam informs you that he will not be coming, having decided he'd prefer to stay in the city. He thanks you again for your help and makes plans to take over living in the library once you're gone. From there, he continues his work and his sexual enjoyment of the fallen city's diverse pleasures. He breeds many new dragontaur whelps as his powerful body allows him to mount many a lustful creature. He even locates Rick again and takes particular pleasure in breeding several clutches of whelps in her tigertaur body.";
				if HP of Sam >= 13:
					say "     Before you depart, Sam imparts his research data and vial collection to you, asking that you provide it to the university which had arranged it. He provides you with his research permits and a letter explaining that you're taking over delivery of his permitted research work. There is some screening involved with getting them out, but [if hospquest is 13 and HP of Doctor Matt >= 12]you do agree to secretly pass along a copy of it all to Dr. Matt to help with his research[else if hospquest > 13]you do manage to slip a copy of everything to Dr. Mouse before the delivery. He's quite pleased with the gift you've managed to obtain and rewards you greatly for it[else]RSX's involvement in the grant keeps it from being confiscated by the military[end if]. You collect a nice reward for your work, helping you get back on your feet in whatever new life you choose.";
			else if HP of Sam >= 30 and HP of Sam <= 49: [Vixentaur - survival]
				say "     Shortly before the military forces arrive to rescue everyone, Samantha informs you that she will not be coming, having decided she'd prefer to stay in the city. She thanks you again for your help and makes plans to take over living in the library once you're gone. From there, she continues her work and her sexual enjoyment of the fallen city's diverse pleasures. She births many new vixentaur kits as her lustful body is mounted by many a horny creature. She even locates Rick again and takes particular pleasure in letting the tigertaur sire several of her litters.";
				if HP of Sam >= 33:
					say "     Before you depart, Samantha imparts her research data and vial collection to you, asking that you provide it to the university which had arranged it. She provides you with her research permits and a letter explaining that you're taking over delivery of her permitted research work. There is some screening involved with getting them out, but [if hospquest is 13 and HP of Doctor Matt >= 12]you do agree to secretly pass along a copy of it all to Dr. Matt to help with his research[else if hospquest > 13]you do manage to slip a copy of everything to Dr. Mouse before the delivery. He's quite pleased with the gift you've managed to obtain and rewards you greatly for it[else]RSX's involvement in the grant keeps it from being confiscated by the military[end if]. You collect a nice reward for your work, helping you get back on your feet in whatever new life you choose.";
			else if HP of Sam >= 50 and HP of Sam <= 69: [Dracovixentaur - survival]
				say "     Shortly before the military forces arrive to rescue everyone, Sammie informs you that she will not be coming, having decided she'd prefer to stay in the city. She thanks you again for your help and makes plans to take over living in the library once you're gone. From there, she continues her work and her sexual enjoyment of the fallen city's diverse pleasures. She births numerous offspring as her lustful body is mounted by many a horny creature and sires others in those she mounts. She even locates Rick again and takes particular pleasure in letting the tigertaur sire several of her litters as long as she can breed her ex-partner in return. Sammie's children are a collection of male dragontaurs, female vixentaurs and herm dracovixentaurs.";
				if HP of Sam >= 53:
					say "     Before you depart, Sammie imparts her research data and vial collection to you, asking that you provide it to the university which had arranged it. She provides you with her research permits and a letter explaining that you're taking over delivery of her permitted research work. There is some screening involved with getting them out, but [if hospquest is 13 and HP of Doctor Matt >= 12]you do agree to secretly pass along a copy of it all to Dr. Matt to help with his research[else if hospquest > 13]you do manage to slip a copy of everything to Dr. Mouse before the delivery. He's quite pleased with the gift you've managed to obtain and rewards you greatly for it[else]RSX's involvement in the grant keeps it from being confiscated by the military[end if]. You collect a nice reward for your work, helping you get back on your feet in whatever new life you choose.";

Sam ends here.
