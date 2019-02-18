Version 1 of Ruby by CrimsonAsh begins here.

[ Charisma of Ruby - Talk options                      ]
[   0: never talked                                    ]
[   1: first talk done                                 ]
[   2: second talk done                                ]
[   3: third talk done                                 ]

"Adds the NPC Ruby to Flexible Survival's Capitol District"


RubyRoomConnection is a number that varies.[@Tag:NotSaved]

an everyturn rule:
	if Urban Cliff is resolved and Resolution of Urban Cliff is 3 and RubyRoomConnection is 0:
		change the northeast exit of Path of Ashes to Ashen Cliff;
		change the southwest exit of Ashen Cliff to Path of Ashes;
		now RubyRoomConnection is 1; [room connected]
	if Urban Cliff is resolved and Ruby is not in Ruby's Cave: [bugfix]
		now Ruby is in Ruby's Cave;

Section 1 - Events

Table of GameEventIDs (continued)
Object	Name
Urban Cliff	"Urban Cliff"

Urban Cliff is a situation.
The sarea of Urban Cliff is "Capitol".

when play begins:
	add Urban Cliff to badspots of girl;

Instead of resolving Urban Cliff:
	if Resolution of Urban Cliff is 0 or Resolution of Urban Cliff is 99: [first encounter or repeat after postponing]
		say "     While exploring and walking along the heat scorched, barren ground of the capitol district you turn a corner and find yourself standing at the top end of a steep slope of rock and volcanic ash. Looks like the quakes and eruptions tore up this section of the district particularly bad, creating a cliff that's about 300 feet wide in the middle of the fallen city. A little ways to the side and down the slope, you spot a narrow fissure gaping in the surrounding rock. Curiosity drives you check it out, carefully talking down over the ash and peeking at the opening. The crack in the rock continues into the earth as a sort of tunnel that bends and twists, making it quite hard to tell how deep it will go. Looks dangerous, but it could also be an exciting place to explore...";
		say "     [bold type]Do you want to journey underground?[roman type][line break]";
		say "     [link](1)[as]1[end link] - Yes, Exploration!";
		say "     [link](2)[as]2[end link] - Not right now.";
		say "     [link](3)[as]3[end link] - Nope, not ever!";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to go in, [link]2[end link] to leave for now or [link]3[end link] to avoid this place.";
		if calcnumber is 1:
			LineBreak;
			say "     Might as well see what lies within the cave for you, and hopefully it'll be nothing bad. Stepping into the opening, you duck under a protruding piece of rock and continue down the natural passage, careful not to lose your balance on the uneven ground. Soon, you reach the bend in the tunnel you saw from outside and it is revealed that it indeed continues on beyond that. Thankfully, there also seems to be some reddish glow illuminating the further passage, as you won't be able to count for light from the outside after this. Moving on, soon arrive at the start of a larger cave. There are some irregular patches of glowing volcanic rock on the walls, floor and ceiling, providing dim lighting that allows you to make out the extent of the roughly sixty foot long and thirty foot wide open space.";
			say "     Your eyes get more and more used to the semi-darkness, allowing you to make out some household objects organized deeper into the back of the cave. There's a makeshift bed made of what looks like multiple bear pelts, a couch that seems to be a bit worse for wear after having been shoved and scraped through the passage that led you here, and... that's how far you get before you're suddenly snatched and flung into the middle of the cave by a solidly built red figure coming seemingly out of nowhere. But no, as you spin around and stumble not to fall over, you see that there's a mid-sized alcove just a step or two from where you stood, not easily apparent unless one knows it's there. Your assailant is a tall humanoid, a dragon woman with violet hair running down her head and spine while ending at the point of a long tail. The rest of her is covered in mostly reddish scales while her chest and tummy area sports an orange/red texture.";
			WaitLineBreak;
			say "     The female dragon's eyes glow an amber-yellow as she studies you with disdain, which gives you the time to check her out too. She's nearly seven feet tall with clear musculature and definition rippling on her naked body, yet still clearly feminine with shapely curves, D-cup breasts and a draconic slit tucked between her legs. Snapping a muzzle filled with sharp teeth at you, she growls loudly, exuding a plume of dark smoke from her reptilian-like nostrils. 'Looking for a quick score in my home, huh dickhead?! Well you won't find it here!' the angry woman shouts in a rough but feminine voice. Before you can even think of replying, she's already lunging at you, scaled fists raised to punch you into submission!";
			challenge "Crimson Dragon";
			if fightoutcome < 20: [player won]
				say "     The furred dragon stumbles back against one of the walls, scowling as she blinks as if to drive away the starts dancing in front of her eyes. 'Agh! Bastard! You won't... Ugh! Steal from me,' she growls, trying to back away further so she can regain her strength - but with the wall right behind, there is no way to go. Looks like she's at your mercy right now.";
				say "     [bold type]What do you do now?[roman type][line break]";
				say "     [link](1)[as]1[end link] - Rape the bitch!";
				say "     [link](2)[as]2[end link] - Leave. You just wanted to explore anyways.";
				say "     [link](3)[as]3[end link] - Talk to her and clear up the misunderstanding.";
				now calcnumber is 0;
				while calcnumber < 1 or calcnumber > 3:
					say "Choice? (1-3)>[run paragraph on]";
					get a number;
					if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
						break;
					else:
						say "Invalid choice. Type [link]1[end link] to rape her, [link]2[end link] to leave or [link]3[end link] to talk to her.";
				if calcnumber is 1:
					LineBreak;
					say "[RubyCombatFuck]";
					now Resolution of Urban Cliff is 10; [won, rape]
				else if calcnumber is 2:
					LineBreak;
					say "     You turn and walk away, not wanting anything from the dragon creature. A clearly surprised huff can be heard behind you, followed by the woman's voice shouting angrily, 'W-what? You come into my home and beat me up, then just fuck off? Good riddance, bastard! Leave and don't come back, you hear me?!' As you start climbing back up the slope, you wonder if you'll see the furry, scaled woman again, maybe under better circumstances. Surprise visits to her home seem to be out for sure, given her reaction this time, so you make a note not to come here again.";
					now Urban Cliff is resolved;
				else if calcnumber is 3:
					LineBreak;
					say "     You back up, holding your hands out in a consoling gesture and quickly declare that you had no intention of fighting, hurting or stealing from her. She grimaces and huffs out a puff of smoke, 'Could'a fooled me jerk. Buttering me up won't make me bend over for you either. I'm not one of those husky sluts whoring around.' Again trying to strike a reasonable tone, you explain that you were only curious about the cave and had no sinister motives beyond that. The dragoness growls in disbelief, still staring at you with hostility, yet as you continue to stand there with open hands, she becomes a little bit less sure about her assumptions. While you wait, your eyes roam over her naked body all of their own accord, taking in the glistening sheen of sweat on her, the taunt abs lined with droplets of perspiration as well as a few cuts and scrapes from your fight. This wakes a little bit of regret at your unneeded fight in you, so you cautiously ask if she needs any help patching up or something.";
					say "     The dragoness snaps at you, whipping her head up to look directly at you and baring her teeth. 'I don't need your goddamn help asshole,' she says, even while wincing as she pushes herself off from the wall to stand before proud and erect you. 'Hear that?! I do not need you, or anyone else! In this world, one can rely only on themselves!' she says with a snarl, a bit of fiery steam shooting forth from her nostrils as her amber eyes fixate on yours in defiance and anger. Defying her clear hostility you state things are usually easier with friends and those you trust close by. She gives you a mystified look for a moment before returning to her previous anger-filled gaze. 'Pfft, trust what would you know about trust?'";
					WaitLineBreak;
					say "     Figuring you found a good segue to talk more with her, you begin asking her if you'd like to try being friends, but she cuts you off quickly. 'Enough chat. If you're not here to steal or rape, then leave me alone,' she says abruptly, stepping up to shoo you away. 'And don't come back unless you're bringing a truck of food as an apology for this fucking lump on my head!' she yells mockingly, scowling at you all the way until you pass the bend in the entrance tunnel. Deciding it best to leave for the time being, you keep going until you reach the exit and make your way back up the slope of rocks and ash. Perhaps it'd be best if you returned to the [bold type]Urban Cliff[roman type] with a peace offering. Some food might work, to fit the mocking request she made at the end. Something tells you it's not too late to hopefully make her a friend.";
					now Resolution of Urban Cliff is 1; [won, talk]
					now PlayerMet of Ruby is true;
			else if fightoutcome > 19 and fightoutcome < 30: [lost]
				say "     You're pushed over and fall onto the cave floor, too exhausted or demoralized to continue the struggle. The dragon woman comes to stand over you, growling and muttering curses under her breath. Your about to explain yourself when a sharp kick hits you in the side. The dragon woman then picks you up by the scruff of your neck and begins to drag you back out of the cave. 'Fucking thieves,' you hear her mumble angrily to herself, and with a small puff of smoke that accompanies a disgusted snort from her, the strong woman tosses you down the slope of ash and rock. You curl up to roll and hopefully minimize the bruises that your undignified descent creates, though the landing at the bottom still leaves you seeing stars for a little while.";
				say "     Intruder dealt with, the crimson dragoness vanishes back inside what you assume is her home, growling to herself all the way. Well, she didn't rob or rape you, so it could have been worse, you think to yourself as you get up and stumble away in a bit of pain. Making a mental note to avoid this area in the future, you hope you won't run into that furious female anywhere else either...";
				now Resolution of Urban Cliff is 20; [lost]
				now Urban Cliff is resolved;
			else if fightoutcome is 30: [fled]
				say "     You duck past her and run up the tunnel to the surface, then run down the slope and keep going without looking back. From behind you, the dragon woman shouts, 'Coward! Come back and I'll smash your head in!' Doesn't seem like she's too interested in following you, so you can safely come to a stop after only a little while, gasping in deep breaths of air. Making a mental note to avoid this area in the future, you hope you won't run into that furious female anywhere else either...";
				now Resolution of Urban Cliff is 21; [fled]
				now Urban Cliff is resolved;
		else if calcnumber is 2:
			LineBreak;
			say "     What's that old saying? 'Discretion is the better part of valor.' Maybe that's wise here considering you'd be wandering into an unknown volcanic cave, in the background of a city overrun by nanobots, mutants and other mythical creatures, almost all of which are looking to rob or screw you silly. You shake your head and turn around to keep moving. Still, might be interesting to return here sometime when you feel ready for a bit of exploration.";
			now Resolution of Urban Cliff is 99; [player didn't want to go in right now]
		else if calcnumber is 3:
			LineBreak;
			say "     What's that old saying? 'Discretion is the better part of valor.' Maybe that's wise here considering you'd be wandering into an unknown volcanic cave, in the background of a city overrun by nanobots, mutants and other mythical creatures, almost all of which are looking to rob or screw you silly. You shake your head and turn around to keep moving, making a mental note to avoid this place in the future too.";
			now Resolution of Urban Cliff is 100; [player avoids the place]
			now Urban Cliff is resolved;
	else if Resolution of Urban Cliff is 1:
		if carried of Food > 0:
			say "     Arriving back at one of the torn-up sections of the capitol district, you stand at the upper end of a sloping cliff that's about 300 feet wide. A little ways to the side and down the slope lies the cave where you met that red anthro dragoness a while ago. You remember your fight with her, and the grudging talk you had afterwards, ending with her mockingly demanding a whole lot of food as restitution. Knowing that you've got some food you might spare, you wonder if you maybe should visit the woman and give it to her to hopefully make good after your disastrous first meeting.";
			say "     [bold type]Do you want to visit the dragon in her cave?[roman type][line break]";
			say "     [link](1)[as]1[end link] - Sure, give her some food.";
			say "     [link](2)[as]2[end link] - Not right now.";
			say "     [link](3)[as]3[end link] - Nope, not ever!";
			now calcnumber is 0;
			while calcnumber < 1 or calcnumber > 3:
				say "Choice? (1-3)>[run paragraph on]";
				get a number;
				if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
					break;
				else:
					say "Invalid choice. Type [link]1[end link] to go in, [link]2[end link] to leave for now or [link]3[end link] to avoid this place.";
			if calcnumber is 1:
				LineBreak;
				say "     You start down the slope, fishing some nutrition from your pack while you do. When you reach the entrance you call out, greeting a loud 'hello?' for anyone inside to hear. A moment later a scaly, red and fairly irritated looking dragon head pokes around the corner to look at you. Irritation is replaced with recognition, then confusion at your outstretched arms bearing food. 'Y-you! What-.' You cut her off. 'It's not a truck, but it's a good start, right?' you say, bearing as charming a smile as you can muster. She looks bewildered for a moment before surprisingly enough cracking a small smile. 'Pfft, you freakin['] jerk I was kidding. Why the hell are you back here huh? Can't be to just annoy me, and poisoned food wouldn't really make sense. So what the hell?'";
				say "     You introduce yourself and carefully explain to her that you were hoping to make a friend, maybe cheer her up from whatever anger is holding her down. She shakes her head when you say that. 'Hardly, my anger makes me stronger, stronger than anyone I've faced before!' she says a bit indignantly, but her voice has lost a bit of its hostile luster. You give her a defiant look and smile, causing a bit of steam to trail out of her thin nostrils. 'Doesn't count.' You open your mouth to protest but she speaks louder this time. 'Doesn't. Count.' You nod your head after a moment finally. Then, you hold your offering up higher and walk a bit closer. She puts a hand on her naked hip and reaches out to take it. Her body heat is radiating its warmth even to where you stand, and her naked breasts perking out leave nothing to the imagination.";
				WaitLineBreak;
				say "     She takes a moment to look over your gift before looking back at you, expression slightly softer. '...Thanks, I guess, not too many people would let someone who attacked them walk only to come back with a gift.' She shifts uncomfortably. 'S-still not just gonna bend over for you like half the freakin['] sluts in the city would but... yeah, thanks,' she finishes, starting to back up into her cave. Before she goes you hear her call back 'Ruby by the way. May as well as know my name if you're gonna come by and pester me. Your about to call out and ask her something else but you figure for now it's best to wait, she has something to mull over and think about. You look on into the cave curiously but eventually you turn around, maybe she'll be more amicable next time you talk. You think heading away from the rock face and back to where you came down from.";
				LineBreak;
				say "[bold type]You lose 1 food![roman type][line break]";
				decrease carried of food by 1;
				now Resolution of Urban Cliff is 2; [food delivered]
			if calcnumber is 2:
				LineBreak;
				say "     With a shrug to yourself, you continue on. You can always visit her another time after all.";
			if calcnumber is 3:
				LineBreak;
				say "     You shrug to yourself and put the idea of trying to befriend the dragon out of your mind. Hell, the two of you fight before, how likely is it that she'd just accept you now? Making a mental note to avoid the area in the future, you wander off again.";
				now Resolution of Urban Cliff is 100; [player avoids the place]
				now Urban Cliff is resolved;
	else if Resolution of Urban Cliff is 2: [gave her food previously]
		say "     With your way bringing you close, you decide to check by Ruby's home. This time you find the path there easily, and with you getting more used to the layout of the capitol district, you're pretty sure you can find your way back here now. And as your heading down the slope to Ruby's rock home you spot her stacking large boulders from one side of the cave entrance to the other. She, again as naked as the day she was born is working up a sweat, droplets of perspiration drip off her toned body and muscled arms as she lifts a boulder and carries it over a dozen yards to dump in a growing pile of boulders. As you reach the bottom she turns to face you, the usual surprise on her face followed by a tending of her body, as if she's ready to pounce you.";
		say "     'Ah, hey... you're still around huh? Well there's worse people out here I suppose,' she says, standing tall before you, her furry red tail swishing gently back and forth behind her while her clawed hand fall to her waspish hips. Is she... flexing? Showing herself off maybe? 'Well... I guess you can hang around, as long as you're not too annoying. But did you actually want something or were you just looking to gawk at me all day?' You ask Ruby if she's up to talk, you hardly know each other after all, beyond a fight and some brief generous camaraderie. 'Ahh, look I'm not really used to... sharing and being all personal and stuff. I don't even really know where to start, before everything changed? Or does that not even matter anymore?'";
		WaitLineBreak;
		say "     You tell her to just start with the basics. You already know each other's names so you start to tell her a bit about yourself, what you did before the apocalypse, what your passions are and your struggle for survival in this new land. She surprisingly listens intently to you talk, and when you finish she nods, yet stays silent. You and her exchange glances after your story as you wait for her to say something. 'What?' she asks genuinely. You explain it's usually courtesy to then tell her story... if she wants, of course. 'Oh... I told you I'm not used to this!' she says defensively before thinking pensively. Ruby sighs after thinking and mumbling some curse to herself or another. 'Agh, fine, haven't shared my life story since this whole freakin['] thing went down. So I hope you appreciate it!'";
		say "     You smile and nod appreciatively and wait for her to answer. 'Hm... truth is I don't really remember what I was or what I did before this... I-I'm not sure, it's kind of fuzzy. I remember loving to workout, and I remember... a girl I was with, a girlfriend...' She sighs heavily. 'Doesn't matter, she's gone, can't even remember her face now. And... now I'm just here.' You lay a hand on her shoulder comfortingly, her scaly skin is incredibly warm to the touch and she tenses up when you touch her but doesn't pull away. You comfort her silently for a few moments before she continues. 'Clearest time back I can remember is me stumbling around the city holding my gut, I was wounded I think. Found an abandoned house to rest in. I was confused, careless and so, so tired. Then...' she stops and looks down, face turning from that of a stony warrior to that of a hurt, and sorrow filled woman. 'I... think that's enough talking for now. I want to go lay down.'";
		LineBreak;
		say "     She quickly gets up and heads behind her into her cave and disappears from sight. Perhaps it's best to come back later, so you leave for now and make note of the way to the [bold type]Path of Ashes[roman type] and [bold type]Ashen Cliff[roman type] for the future.";
		now Resolution of Urban Cliff is 3; [visited and talked once]
		now Charisma of Ruby is 1; [visited and talked once]
		change the northeast exit of Path of Ashes to Ashen Cliff;
		change the southwest exit of Ashen Cliff to Path of Ashes;
		now RubyRoomConnection is 1; [room connected]
		now Urban Cliff is resolved;

to say RubyCombatFuck:
	if player is male:
		say "     Shoving over the defeated dragon woman you stand over her victorious in your fight. The woman appears to be crawling away, using her feet to kick herself slowly into the mouth of the cave. You put a stop to that, an evil grin appearing on your face as you grab out at her scaly, clawed foot. You yank her towards you quickly and with relative ease, rolling the weakened dragon onto her belly and spreading her before you. 'N-no! Again you bastards?!' She groans in pained annoyance. You pay her no mind, slipping a finger into her burning hot sex while you hold her in place. She squirms and tries to wiggle free but her body starts to respond to your ministrations. Your finger slowly pressing in and out of her hot quim is covered in musky girl cum, and soon, your hand as well. The nameless, furry-dragon groans as much in pleasure as she does in annoyance and anger.";
		say "     Seeing the fight knocked out of her you reach down and begin stroking yourself to full mast. It doesn't take long what with the beautiful dragon lady sprawled out, defeated before you. Pressing her forcefully down to further instill your dominance here and now, you run another hand along her soft scaly ass and align your manhood with her traitorous, dragon-dripping cunt. It has a slightly more reddish texture to it than a human cunt, and as you press deeper in, she gets ever-more hotter. And as you hilt yourself inside her juicy quim, it feels as if a hellish succubus grips your dick. Her burning cauldron of a pussy feels too good and too hot to hold it still for long and you push yourself into action, pulling out and slamming back in the squirming dragon.";
		WaitLineBreak;
		say "     She moans and curses out at you, calling you all forms of colorful names and insults before you bring down a hand to slap across her backside as you fuck it. That shuts her up fast, mainly because she's too busy groaning to insult you. You grope and grind into her, intent on not only getting your rocks off but proving your the real dominance here. Pounding and slapping into your dragon slut you can feel yourself rapidly approaching your finish. Speeding up you can feel her insides clenching and tightening around you until her toothy maw opens and her tongue rolls out as she lets out a low growl, into the dirt. Girl cum shoot out of her spasming sex and coats your member in its warm ambrosia. You follow closely after, sending her into multiple mini orgasms as you hump into her. Holding yourself inside her you dump your load of creamy deposit into her burning womb, painting her insides and pulling out to cover her ass in the remainder of your seed.";
		say "     She drops and goes limp, ass raised, passed out and leaking cum out of gaped quim you stand to admire the sight before you. Brushing yourself off and walking forward to check out her abode. You wander in the front entrance and look around the inside, you find some wrapped dry meat and a few bottles of water, as well as a medkit tucked into a makeshift shelf. You take it all and walk back out, the dragon woman still passed out near the entrance. You smile a bit sadistically down at her and then make your way back up the slope you came down from, quite satisfied with yourself. That's probably the last you'll see of that dragon... well, unless she comes for revenge.";
	else if player is female:
		say "     Shoving over the defeated dragon woman you stand over her victorious in your fight. The woman appears to be crawling away, using her feet to kick herself slowly into the mouth of the cave. You put a stop to that, an evil grin appearing on your face as you grab out at her scaly, clawed foot. You yank her towards you quickly and with relative ease, rolling the weakened dragon onto her back and spreading her before you. 'N-no! Again you bastards?!' She groans in pained annoyance. You pay her no mind, slipping a finger into her burning hot sex while you hold her in place. She squirms and tries to wiggle free but her body starts to respond to your ministrations. Your finger slowly pressing in and out of her hot quim is covered in musky girl cum, and soon, your hand as well. The nameless, furry-dragon groans as much in pleasure as she does in annoyance and anger.";
		say "     You then clamber up her hot, scaly body dragging your nipples across her taut abs. Soon your straddling her head, your woman-hood only inches from her scaly maw. She grimaces and squirms beneath you but you put a stop to it when you grab her head and shove it; snout first into your wet, feminine sex. She gasps in surprise and receives a mouth full of cunt while your fingers play with her silky opening. Her tongue, in its panic, shoots forward and lashes at your sensitive sex. Meanwhile, you grin down at her and grind your hips into her face, covering her in your musky juices. Your fingers play in her burning cunt as you take your pleasure from her. Her eyes squint with hate, but your hand roughly grabbing her furry scalp encourages her to keep working her long, wet, draconic organ all over your snatch. She doesn't have much technique, but the exotic sight of dominating such a powerful creature certainly makes up for it!";
		WaitLineBreak;
		say "     You hump her face for what feels like an hour, your fem cum covers her face and you throw your head back as you climax over her soft maw. Then you start over again, bucking on the dragon's face as you bring her to a muffled orgasm of her own. You buck and ride the defeated dragoness for a fair bit of unknown time. She's had multiple forced orgasms and you've drawn three of your own from the surprisingly slutty scalie. She passes out after the last one, you nearly wrist deep in her dragon-cunt which spasms around your fingers. Her mouth is lolled open and drooling both saliva and fem cum in equal measure, she gurgles and twitches in sensitivity as you stand up slowly over her, victorious.";
		say "     Smiling and stretching your limbs you walk forward away from the blissed out and utterly sexed dragon to check out her abode. You wander in the front entrance and look around the inside, you find some wrapped dry meat and a few bottles of water, as well as a medkit tucked into a makeshift shelf. You take it all and walk back out, the dragon woman still passed out near the entrance. You smile a bit sadistically down at her and then make your way back up the slope you came down from, quite satisfied with yourself. That's probably the last you'll see of that dragon... well, unless she comes for revenge.";
	else:
		say "     Shoving over the defeated dragon woman you stand over her victorious in your fight. The woman appears to be crawling away, using her feet to kick herself slowly into the mouth of the cave. You put a stop to that, an evil grin appearing on your face as you grab out at her scaly, clawed foot. You yank her towards you quickly and with relative ease, rolling the weakened dragon onto her back and spreading her before you. 'N-no! Again you bastards?!' She groans in pained annoyance. You pay her no mind, slipping a finger into her burning hot sex while you hold her in place. She squirms and tries to wiggle free but her body starts to respond to your ministrations. Your finger slowly pressing in and out of her hot quim is covered in musky girl cum, and soon, your hand as well. The nameless, furry-dragon groans as much in pleasure as she does in annoyance and anger.";
		say "     You then clamber up her hot, scaly body dragging your chest across her taut abs. Soon your straddling her head, your sensitive, fleshy crotch only inches from her scaly maw. She grimaces and squirms beneath you but you put a stop to it when you grab her head and shove it; snout first into your smooth sexless groin. She gasps in surprise and receives a mouth full of flesh while your fingers play with her silky opening. Her tongue, in its panic shoots forward and lashes at your sensitive skin, turning a low moan from you and sending a shiver up your back. Grinning down at her while grinding your hips into her face. Your fingers play in her burning cunt as you take your pleasure from her. Her eyes are squint with hate but your hand roughly grabbing her furry scalp encourages her to keep working her long, wet, draconic organ all over you groin, covering it in warm saliva. She doesn't have much technique but the exotic sight of dominating such a powerful creature certainly makes up for it!";
		WaitLineBreak;
		say "     You hump her face for what feels like an hour, practically shivering and writhing from the overload of sensitivity on your crotch. Then you start over again, bucking on the dragon's face as you bring her to a muffled orgasm of her own. You buck and ride the defeated dragoness for a fair bit of unknown time. She's had multiple forced orgasms while your body is sweating and muscles spasms over her. She passes out after the last one, you nearly wrist deep in her dragon-cunt which spasms around your fingers. Her mouth is lolled open and drooling both saliva out of the corner of her mouth, she gurgles and twitches in sensitivity as you stand up slowly over her, victorious.";
		say "     Smiling and stretching your limbs you walk forward away from the blissed out and utterly sexed dragon to check out her abode. You wander in the front entrance and look around the inside, you find some wrapped dry meat and a few bottles of water, as well as a medkit tucked into a makeshift shelf. You take it all and walk back out, the dragon woman still passed out near the entrance. You smile a bit sadistically down at her and then make your way back up the slope you came down from, quite satisfied with yourself. That's probably the last you'll see of that dragon... well, unless she comes for revenge.";

Section 2 - Infection

when play begins:
	add { "Crimson Dragon" } to infections of girl;

to say BeatRuby:
	say ""; [dealt with in the event calling up the fight]

to say LoseRuby:
	say ""; [dealt with in the event calling up the fight]

to say RubyCombatDesc:
	say ""; [dealt with in the event calling up the fight]

Table of Random Critters (continued)
name	enemy title	enemy name	enemy type	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	DayCycle	altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now name entry is "Crimson Dragon";
	now enemy title entry is "Crimson Dragon";
	now enemy name entry is "Ruby";
	now enemy type entry is 1; [non-unique enemy]
	now attack entry is "[one of]The dragoness smashes against your body with hers![or]A scaly punch comes to collide with your head leaving you seeing stars.[or]The furry dragon strikes at you with fists first![at random]";
	now defeated entry is "[BeatRuby]";
	now victory entry is "[LoseRuby]";
	now desc entry is "[RubyCombatDesc]";
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
	now str entry is 20;
	now dex entry is 16;
	now sta entry is 16;
	now per entry is 14;
	now int entry is 10;
	now cha entry is 12;
	now sex entry is "Female"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 100; [ The monster's starting HP. ]
	now lev entry is 10; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 11; [ Monster's average damage when attacking. ]
	now area entry is "Nowhere"; [ Case sensitive]
	now cocks entry is 0; [ number of cocks if sex is 'Male' or 'Both' ]
	now cock length entry is 0;
	now cock width entry is 0; [ Size of balls ]
	now breasts entry is 2; [ Number of nipples. ]
	now breast size entry is 4; [ Size of breasts infection will try to attain ]
	now male breast size entry is 0;   [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ number of pussies if sex is 'Female' or 'Both' ]
	now cunt length entry is 8;
	now cunt width entry is 4;
	now libido entry is 20; [ Amount player Libido will go up if defeated ]
	now loot entry is ""; [ Loot monster drops, ]
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "draconic";
	now type entry is "draconic";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Section 3 - NPC

Table of GameCharacterIDs (continued)
object	name
Ruby	"Ruby"

Ruby is a woman.
Ruby is in Ruby's Cave.
[physical details as of game start]
ScaleValue of Ruby is 4. [human sized]
Cocks of Ruby is 0. [no cock]
Cock Length of Ruby is 0. [no cock length]
Cock Width of Ruby is 0. [no ball size]
Testes of Ruby is 0. [no balls]
Cunts of Ruby is 1. [1 pussy]
Cunt Length of Ruby is 8. [gets stretched a bit by an alpha husky]
Cunt Width of Ruby is 3. [gets stretched a bit by an alpha husky]
Breasts of Ruby is 2. [4 nipples]
Breast Size of Ruby is 4. [B cup at the start]
[Basic Interaction states as of game start]
PlayerMet of Ruby is false.
PlayerRomanced of Ruby is false.
PlayerFriended of Ruby is false.
PlayerControlled of Ruby is false.
PlayerFucked of Ruby is false.
OralVirgin of Ruby is false.
Virgin of Ruby is false.
AnalVirgin of Ruby is false.
PenileVirgin of Ruby is true. [got no cock]
SexuallyExperienced of Ruby is true.

The description of Ruby is "[RubyDesc]".
The conversation of Ruby is { "Growl." }.

to say RubyDesc:
	say "     Ruby is a tall humanoid, a dragon woman with violet hair running down her head and spine while ending at the point of a long tail. The rest of her is covered in mostly reddish scales while her chest and tummy area sports an orange/red texture. Her eyes glow an amber-yellow and in the middle, surrounded by blood red irises. She's nearly seven feet tall with clear musculature and definition rippling on her naked body, yet still clearly feminine with steady curves, D-cup breasts and a draconic slit tucked between her legs.";

The scent of Ruby is "     Ruby smells of brimstone, spicy-sweet alcohol and pleasant feminine musk. It's strangely intoxicating.".

instead of conversing the Ruby:
	say "     <WIP>";


instead of fucking Ruby:
	say "     What exactly do you plan on doing with the anthro dragoness?";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Fuck her";
	now sortorder entry is 3;
	now description entry is "Have sex with the dragoness";
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
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Fuck her"):
					say "[RubySex1]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the Ruby, shaking your head slightly as she gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say RubySex1:
	if player is male:
		say "     You embrace the dragoness, returning her sweet kiss. Pressing your lips against Ruby's while running your tongue along her scaly lips, begging to deepen your kiss. Her tongue reaches out to meet yours as her strong arms press you tightly against her, scaly hands reaching down to caress your ass and lower back. She moves forward, pushing you up against the back wall of her cave while her hands play at your body and her breathing intensifies. Her burning hot mouth seems to suck at your very breath, and pressed up so closely to this fiery dragoness your beginning to feel the heat! She pulls back, looking at you with devilishly lusty eyes. She then throws you behind her and onto her many piles of fur scraps. 'Oh god... I haven't felt like this in... so long. Everything off, I need you now, right now!' she says before pouncing on top of you, planting both her claws on either side of your head.";
		say "     The dragoness straddles herself above you, panting a little as she does, clearly well beyond aroused at this point as she grinds against your prone form. She trails kisses and licks down and up your body, drooling warm saliva over your vulnerable body until her long, reptilian tongue slurps upward and collides with the crest of your neck, running up your jaw and against your lips. Ruby then straddles your waist, lifting any obstructions out of the way as she does, revealing your male-hood in all its glory. 'Hmm, hope you don't mind but I'm past most foreplay, I need this bad boy in me, now!' she says, reaching back to grasp your male member to press against the soft crest of her scaly ass. For your part you reach up to grasp her waspy hips and pull her against your hardened member.";
		WaitLineBreak;
		say "     After a mini assjob session, Ruby lifts herself up and plants the tip of your member to her dragon cunt. She grinds her hips down and presses your cock tip into her, slowly sliding you into her. Ruby pulls her head back and moans out loud while one of your hands fall to her breasts, caressing and kneading them as she hilts you inside her. 'Ah! God... that feels so fuckin['] good. Haven't felt this good for as long as I can remember,' she admits, flashing you a genuine toothy grin. Her claws move to your shoulder and digs into them, causing a slight pinch of pain in each of your shoulders and driving you to push further into your scaly lover. The dragoness then starts to bounce on your crotch, sliding your length in and out of her fiery, gripping cunt.";
		say "     Grunting and driving into Ruby, you pull your head forward against her claws and nuzzle at her neck, inhaling a thick drought of her intoxicating scent. One of her claws reaches back to keep your head there, against her neck as Ruby's hips go into overdrive. Speeding up in a way you didn't expect from Ruby, you hold on tight to this bucking reptilian-mammal as claws dig into you and girl bum splashed on your lap. During her ride you slip a digit between the two of you and use it to brush against her protruding clit bouncing against your hips. At that she throws her head back and cums. Squeezing down on your cock to the point of it being near painful. Hot dragon juice spills across your groin, soaking you and the air itself with the fragrance of the sex. You follow a few thrusts after Ruby, grinding deeply into her until you shoot your plentiful load, rocketing inside her and painting her red womb with your seed. She moans, and screams in pleasure along with you as you both ride the tide of orgasms that wash over both of you.";
		WaitLineBreak;
		say "     After who knows how long, you find yourself dribbling what remains of your load across her taut belly. Ruby has a blissed out look on her face and blushes when she catches you staring. 'Daaamn that was good sex if I've ever seen it,' she says, smiling broadly. 'God damn...' You give her a pat on the ass and agree wholeheartedly, she's a hell of a ride! You both stand and you dress silently, exchanging a few kisses with your lovely dragon lover as you do. Ruby has a glow about her as she rests herself against a wall, eyeing you and fingering her sloppy cunny causally. Eventually, after some temptation, your up and ready to continue your apocalypse.";
	else if player is female:
		say "     You embrace the dragoness, returning her sweet kiss. Pressing your lips against Ruby's while running your tongue along her scaly lips, begging to deepen your kiss. Her tongue reaches out to meet yours as her strong arms press you tightly against her, scaly hands reaching down to caress your ass and lower back. She moves forward, pushing you up against the back wall of her cave while her hands play at your body and her breathing intensifies. Her burning hot mouth seems to suck at your very breath, and pressed up so closely to this fiery dragoness your beginning to feel the heat! She pulls back, looking at you with devilishly lusty eyes. She then throws you behind her and onto her many piles of fur scraps. 'Oh god... I haven't felt like this in... so long. Everything off, I need you now, right now!' she says before pouncing on top of you, planting both her claws on either side of your head.";
		say "     Ruby straddles herself above you, panting a little as she does, clearly well beyond aroused at this point as she grinds against your prone form. She trails kisses and licks down and up your body, drooling warm saliva over your vulnerable body until her long, reptilian tongue slurps upward and collides with the crest of your neck, running up your jaw and against your lips. Ruby then moves to straddle your face. She plants her hot dragon-cunt directly onto your waiting mouth. And while your vision is blocked by a plush, scaly ass, you can hear Ruby moan out as she makes contact with your lips. She gyrates her hips against your face and your hands come up to grab and caress Ruby's warm thighs. 'Fuuuck, you're so hot, you know that? Can't believe how damn wet you've gotten me, big girl.' She punctuates this by turning around on your face and once again plants her ass on your face.";
		WaitLineBreak;
		say "     You shove your nose right between her tight, muscular ass cheeks and your tongue right back into her tasty sex. Your hands reach up and spread her soft cheeks wide as you dive in, enthusiastically eating out the dragon woman you've come to know so well. 'Can't just let you have all the fun,' you hear under the dragon's ass. And a moment later you feel a long, hot tongue being dragged across your midriff, running down to your cunt and sliding in like it was made to match your pussy. You arch your back and redouble your cunt-munching efforts, sliding one finger against her front to caress Ruby's clit, which has been rubbing itself against your chin until now. You feel groans being blown into your sex and clawed hand trailing light red love-marks across your skin. The two of you are caught in a cycle of sixty nine love making, completely enraptured by the other's juicy, feminine sex.";
		say "     Each of your climaxes explode all at once. A wave of musky dragon love splashes across your face as you hear a loud moan being pushed into your spasming cunny. For your part Ruby latches onto your crotch, planting her entire mouth over your sex and drinking every drop of climax that leaks out of your blissed out body. You each ride the other's high, drawing out the other's climax for a long while before you're both laying there, she on top of you, dragon cunt simply resting on your face until Ruby lifts herself off of you and plants her body next to yours. 'Damn, that was hot. Haven't felt that good in... well, as long as I can remember,' she says, smiling cutely and giving you a smooch on the cheek. 'Hope we can do this again, lover.' You wholeheartedly agree as you stand slowly on shaky legs and get dressed, exchanging a few small kisses with the dragoness as you do.";
	else:
		say "     You embrace the dragoness, returning her sweet kiss. Pressing your lips against Ruby's while running your tongue along her scaly lips, begging to deepen your kiss. Her tongue reaches out to meet yours as her strong arms press you tightly against her, scaly hands reaching down to caress your ass and lower back. She moves forward, pushing you up against the back wall of her cave while her hands play at your body and her breathing intensifies. Her burning hot mouth seems to suck at your very breath, and pressed up so closely to this fiery dragoness your beginning to feel the heat! She pulls back, looking at you with devilishly lusty eyes. She then throws you behind her and onto her many piles of fur scraps. 'Oh god... I haven't felt like this in... so long. Everything off, I need you now, right now!' she says before pouncing on top of you, planting both her claws on either side of your head.";
		say "     Rudy straddles herself above you, panting a little as she does, clearly well beyond aroused at this point as she grinds against your prone form. She trails kisses and licks down and up your body, drooling warm saliva over your vulnerable body until her long, reptilian tongue slurps upward and collides with the crest of your neck, running up your jaw and against your lips. Ruby then moves to straddle your face. She plants her hot dragon-cunt directly onto your waiting mouth. And while your vision is blocked by a plush scaly ass you can hear Ruby moan out as she makes contact with your lips. She gyrates her hips against your face and your hands come up to grab and caress Ruby's warm thighs. 'Fuuuck, you're so hot, you know that? Can't believe how damn wet you've gotten me.' She punctuates this by turning around on your face and once again plants her ass on your face.";
		say "     You shove your nose right between her tight muscular ass cheeks and your tongue right back into her tasty sex. Your hands reach up and spread her soft cheeks wide as you dive in, enthusiastically eating out the dragon woman you've come to know so well. 'Can't just let you have all the fun,' you hear under the dragon's ass. And a moment later you feel a long, hot tongue being dragged across your midriff running down to your sexless crotch and sliding it across the sensitive skin like lapping at ice cream. You arch your back from the stimuli and redouble your cunt-munching efforts, sliding one finger against her front to caress Ruby's clit, which has been rubbing itself against your chin until now. You feel groans being blown into your sex and clawed hand trailing light red love-marks across your skin. The two of you are caught in a cycle of sixty nine love making, you taken by her juicy dragon cunny and she by your wonderfully sensitive, sexless flesh.";
		WaitLineBreak;
		say "     Each of your climaxes explode all at once. A wave of musky dragon love splashed across your face has you hear a loud moan being pushed into you spasming cunny. For your part Ruby latches onto your crotch, planting her entire mouth over it and using her long tongue to send the bundles of nerves downy here into major overdrive, drawing a long drawn out gasp from your lips. You each ride the other's high, drawing out the other's climax for a long while before you're both laying there, she on top of you, dragon cunt simply resting on your face until Ruby lifts herself off you and plants her body next to yours. 'Damn, that was hot. Haven't felt that good in... well, as long as I can remember,' she says, smiling cutely and giving you a smooch on the cheek. 'Hope we can do this again lover.' You wholeheartedly agree as you stand slowly on shaky legs and get dressed. Exchanging a few small kisses with the dragoness as you do.";

Section 4 - Location

instead of going down from Ashen Cliff while (Ruby is in Ruby's Cave):
	if Charisma of Ruby is 1: [talked to her once before]
		say "     You again arrive at Ruby's home, she's not outside it this time around. You approach down the slope and set foot a few feet away from the entrance of the dragon's home. You hear a clacking of glasses and a thick smell of alcohol at the entrance and as you peer in you see before you, sprawled out on a thick mat of animal hides. A series of freshly opened beer and whisky bottles litter the floor around her and she holds a hand to her forehead as her amber eyes fall on you. 'Ahhh... hey... how's it going, frieeeend?' she slurs. 'Wanna drink?' She holds an empty bottle at you before dropping and shattering it on the rocky floor below. 'Oh... that's was my last bottle... heh.' She smiles drunkenly and rolls from side to side.";
		say "     You watch the pathetic sight of the dragoness wallowing in her alcohol and ask her if she's alright. 'Nah, not really,' she answers quickly. 'Thinking about old, painful memories.' You ask her if she thinks sharing might help alleviate her pain. She shrugs as you sit down on a nearby cut down log. 'Sure, not like I have anyone else to fuckin['] talk to... aaand I'm well drunk enough now,' she says, grabbing a nearby bottle and chucking it at the cave wall, shattering it. 'Well, leaving off from last we talked... one of the first things I remember is me stumbling, wounded into some abandoned house. I patched myself up as best I could then passed out on the floor there...' She throws another bottle against the wall, sprinkling glass shards all over the rocky floor.";
		WaitLineBreak;
		say "     'When I woke, I was tied up and had a husky's dick up my ass. I... tried to break free, but I was so weak. Couldn't even break some rope on my wrists... well, he and his friends had a good bit of fun with me. When they were done with me I was a fuckin['] mess, covered in their foul fuckin['] seed!' she curses. 'Ugh, my only regret is never finding and castrating that fuckin['] husky and his brothers.' She pauses, letting it all hang in the air for a few minutes. 'Then... I eventually broke free after they left. Laid there for nearly a day until I found the strength to get up. Sorta just wandered after that, beat a few other huskies and wyverns within an inch of their lives, looted some supplies then I found this place. And here I am, I guess,' she finishes, sitting up on her bed of animal skins.";
		say "     You listen to her finish her tale and when she's done you look to her sadly and say you're sorry, not really sure where to go from there. She gives a loud laugh that sounds oddly melodic coming from her draconic maw. 'Yeah, so will they when I finally find those raping pigs. And don't worry gorgeous, your leagues better than those bastards,' she says, giving you a genuine laugh and toothy smile before realizing what she said and returning to a stony face. And you're sure if she didn't have red skin she'd be blushing bright right now. 'Huh, yeah! Anyway. Sorry I'm a bit hammered right now...' I should probably sleep, but ahh; come back later will ya? It's been... good talking with you, I forgot how much I missed talking.' You give her a nod and stand up, bidding her well and promising you'll return later. You head back out of the cave and up the slope with a slight fluttering in your chest as you go.";
		now Charisma of Ruby is 2;
	else if Charisma of Ruby is 2:
		say "     You return to Ruby's cave, your mind is on what the dragon said last you met her. You wonder silently to yourself in thought as you walk to the entrance of her home and call out for her. You hear nothing for a long while, then her familiar voice rings out. 'Yeah... come in,' she calls meekly. Officially curious you enter her home. Inside you see Ruby has her back turned to you and stays silent as you approach. 'Ruby?' you ask, rounding to the other side of her to face her. Her arms are crossed and her expression is one of conflict. She looks directly at you, her jaw locked for a long moment before she speaks. 'Ah hell, never had to do this before, I...' She shifts her posture, moving her thighs together as she does. A pleasant musk reaches your senses. Ruby huffs. 'To hell with it, I never was subtle.' She moves forward to press her thick scaly lips to yours.";
		LineBreak;
		say "     [bold type]How do you react?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Return her affections.";
		say "     ([link]N[as]n[end link]) - Reject the dragoness's approach.";
		if player consents:
			LineBreak;
			say "[RubySex1]";
			now PlayerRomanced of Ruby is true;
		else:
			LineBreak;
			say "     You put your hands out and hold her shoulders, your lips only brush briefly. She stops instantly, looking a little heartbroken. You brush your hand across her shoulder and reassure her that she's an amazing person but you don't want her in that way. She backs up and looks down, clearly hurt. 'Ouch. Well at least you made it gentle.' She gives a sad smile. 'Ah, don't worry about it, it's stupid anyway. Umm, I need to go out and scavenge for some stuff, clear out if you will. I'll ah, talk to you later,' she finishes and walks out without another word before you can even respond. You follow shortly after, leaving the dragon's home...";
			now PlayerFriended of Ruby is true;
	else if PlayerRomanced of Ruby is true: [romance]
		say "     You enter into Ruby's cave and after a few seconds your eyes adjust to the dim lighting inside. The dragoness currently is [one of]on the far side of the room fumbling with a hot stew[or]just preparing a large furry hide[at random], but puts aside what she's doing as she notices your presence. With a broad smile on her toothy maw, she says, 'Hey good lookin.'";
		LineBreak;
		move Player to Ruby's Cave;
	else if PlayerFriended of Ruby is true: [friendzone]
		say "     You enter into Ruby's cave and after a few seconds your eyes adjust to the dim lighting inside. The dragoness currently is [one of]on the far side of the room fumbling with a hot stew[or]just preparing a large furry hide[at random] and gives you a casual wave as she notices your presence.";
		LineBreak;
		move Player to Ruby's Cave;

instead of going up from Ruby's Cave while (Ruby is in Ruby's Cave):
	if PlayerRomanced of Ruby is true:
		say "     As you set out to leave the cave, Ruby comes up to you and gives you a kiss on the cheek. 'Be sure to visit me again soon,' the dragoness adds with a wide, dopey smile on her face.";
	else:
		say "     You give Ruby a wave and head off to your next adventure.";
	LineBreak;
	move player to Ashen Cliff;

Ruby's Cave is a room.
Ruby's Cave is down from Ashen Cliff.
The description of Ruby's Cave is "Ruby's humble abode consists of a short tunnel that leads into a natural cave, about sixty by thirty feet in its farthest extent. It is dimly lit by glowing volcanic rock formations and holds some scavenged furniture brought in by the dragoness.".

Ashen Cliff is a room.
The description of Ashen Cliff is "You stand at the upper end of creating a sloping cliff that's about 300 feet wide. Some titanic force sundered the very ground here, with either your half rising, the lower end being shoved down, or both, afterwards. This has torn apart countless buildings and streets, creating the new cliff whose steep slope consists of bare rock, debris and volcanic ash. A little distance from where you are is the opening that leads to Ruby's cave. You could go into that if you want to visit her.".


Ruby ends here.
