Pusuit of Science by Kaleem mcintyre begins here.

Section 3 - Pursuit of Science

gatherwolfcum is a number that varies.
gatherdemonseed is a number that varies.
gatherdogmilk is a number that varies.
Ointerrogate is a number that varies.

Pursuit of Science is a situation.  Pursuit of Science is resolved.
when play begins:
	add Pursuit of Science to badspots of furry;
	add Pursuit of Science to badspots of girl;
	add Pursuit of Science to badspots of guy;

Instead of resolving Pursuit of Science:
	if omq is 1:
		say "Omio lowers her head, mumbles something to herself and then nods somewhat cautiously before returning her gaze back up to yours. 'If you will, then please bring me five samples of wolf cum, four samples of demon seed, and three samples of dog milk.' Omio asks somewhat indecisively. 'If you can manage that then I can move forward with my research and perhaps give you a reward that you may be able to use on your own journey throughout the city.' You tightly nod at Omio and then prepare yourself mentally for what's to come next.[line break]";
		if gatherwolfcum is 0:
			let wolfcumfound be 0;
			repeat with k running through invent of player:
				if k is "wolf cum", increase wolfcumfound by 1;
			if wolfcumfound is 0:
				say "'Please remember that I need those samples as quickly as humanly, or otherwise in this case, possible. I know you have other things to accomplish, but time is really working against us and all.' Omio says with a calm, but commanding tone while watching you with her golden eyes shining pointedly into your face.[line break]";
			otherwise if wolfcumfound < 5:
				say "'Not quite enough at the moment, but I do commend you ability to gather what I need in  spite of everything that's going on here in the city.' Omio smiles at you and then gives you a playful wink. 'Good luck on your quest[if cunts of player > 0]gorgeous[otherwise if cocks of player > 0]handsome[otherwise if cunts of player > 0 and cocks of player > 0]my friend[end if].[line break]";
			otherwise if wolfcumfound > 4:
				delete wolf cum;
 				delete wolf cum;
				delete wolf cum;
				delete wolf cum;
				delete wolf cum;
				say "'Thank you so much for this!' Omio says as she suddenly jumps into the air, almost startling the crap out of you. 'This will go a long way towards my research and development project for the overseer.' You try and ask the woman what she means, but Omio is just too excited to listen to you right at the moment as she continues to dance around.[line break].";
				now gatherwolfcum is 1;
		if gatherdemonseed is 0:	
			let demonseedfound be 0;
			repeat with k running through invent of player:
				if k is "demon seed", increase demonseedfound by 1;
			if demonseedfound is 0:
				say "'I know that it might be a little dangerous to ask you to face off against demons and the likes, but I really do need the full number of those samples, ASAP. If I remember correctly then there were reports of demons infesting the sewers of the mall within the city. What was its name again?' Omio pauses for effect and then actually puts a finger underneath her chin to think about it. 'You know what...I don't think I actually remember. Was it south-something? Or was it Smithhaven? Or maybe Sicily?[line break]";
			otherwise if demonseedfound < 4:
				say "Please remember, that I need those samples as quickly as humanly, or otherwise in this, possible. I know you have other things to accomplish, but time is really working against us.' Omio says with a calm, but commanding tone while watching you with her golden eyes shining pointedly into your face.[line break]";
			otherwise if demonseedfound > 3:
				delete demon seed;
				delete demon seed;
				delete demon seed;
				delete demon seed;
				say "I appreciate all of your efforts in working with me on this. I-I honestly didn't think you would go through such an endeavor for me.' Omio seems to choke up somewhat and from what you can see the red head is sincere in her sorrow. 'Oh well, thank you for your troubles.' Omio walks over to hug you and then place a gentle peck on your [facename of player] head.[line break]";
				now gatherdemonseed is 1;
		if gatherdogmilk is 0:
			let dogmilkfound be 0;
			repeat with k running through invent of player:
				if k is "dog milk", increase dogmilkfound by 1;
			if dogmilkfound is 0:
				say "I know this might be a little strange a request, but please don't try and milk any old dog to bring back it's juice.' Omio giggles slightly. 'What I need is the milk of the mutant collie that's walking around town that stands about twelve feet tall in height. She's really not too hard to miss, but she can be somewhat elusive when she wants to be. Please find and bring me her milk so I can analyze it.'[line break]";
			otherwise if dogmilkfound < 3:
				say "'I see you found the collie in question, I hope she wasn't too rough on you. She can be kinda frisky but she honestly doesn't mean any harm.' Omio seems to snicker at this and you have to wonder just if the red head knows the mutant in question.[line break]";
			otherwise if dogmilkfound > 2:
				delete dog milk;
				delete dog milk;
				delete dog milk;
				say "'This is exactly what I need. Thank you for all of your help.' Omio looks over the collected sample of dog milk and then cocks her head back and forth while looking at the rolling white fluids. 'I should probably freeze this as soon as possible.' Omio goes off about her business and seems to flat out ignore you.'";
				now gatherdogmilk is 1;
		if gatherwolfcum is 1 and gatherdemonseed is 1 and gatherdogmilk is 1:
			say "'Having gathered all of the materials that I need I can most assuredly say that I and the group I represent are most pleased to have rendered your assistance in advancing our cause.' Omio bows before you and then goes about lifting herself back up to stare at you with her piercing golden orbs. 'Because of your continued efforts I'll tell you more about our group, if you'd like.'(Y=Yes, N=No)[line break]";
			if player consents:
				say "'Alright. The group who I work under is a somewhat small organization, at the moment, that is trying to make a safe enough haven of this apocalyptic world so that mutants, like yourself and I, can go about to live and work and just be despite our budding feral-like natures.' You give Omio a funny look as try and figure out just exactly what part of her is [']mutated[']. The red head sees your roving eyes, but says nothing more about herself, instead she moves right along with her speech. 'With the world in the state it is now the military won't be able to do much other than succumb to the infection sooner or later, unless someone makes an strong enough vaccination to combat the source of the problem. But even then, if they do, so what?'[line break]";
				say "'So what if they do manage to make a vaccine? It's not a cure though. If you know them like I do then you already know that there is no cure for what's happening out there. There was never meant to be one in the first place when the infection was supposed to become wide spread, but now that it has gone underway against the desired time everyone in the military is silently aware that the new world about to be born will be one they can't do a damn thing about.' Omio seems to grow dire with her words and soon starts to circle around the room. Unlike before, however, when the red head was [']pulling your chain['] now you get the feeling that something much more calamitous is coming underway. And when next she speaks your fears and concerns are made real.[line break]";
				say "'As more and more mutations come into being there's a strong possibility that a new world war might flare up between the humans that are left [']uninfected['] and those mutants who won't accept being treated as a second class citizen. You've seen and heard of the civil wars fought before, well those will be nothing compared to what happens when a group of ill-tempered renegades stir up a small group and really bring things to a head with both guns and tempers blazing out of control. Just imagine it – and entire group of wolves, lions and the like all marching together against a greater number of humans.' The picture that comes into your mind is a spooky one, but not one that's unfeasible. 'Even if the remaining humans managed to survive an onslaught like that what kind of precedence will this set for those not taking part in the conflict?'[line break]";
				say "'The people I support fear that this might happen, a [']them verses us['] kind of race war, so in hopes to nip such a thing into the bud [italic type]we[roman type] need to gather as much data as we can on the mutations running around now and build up a strong understanding of the biological, mental, and emotional needs of these new mutants. Its only in this way can we build up a strong enough foundation to work with the newly formulating government to set both laws and settlements where those mutants unable to intermix with the rest of the general public will be able to find a place to call home. I don't mean a reservation, I'm talking about maybe turning half the country over to my organization and making it a free state of mutants, if need be.[line break]";
				say "'The ferals aren't going to go anywhere anytime too soon, but we can't just let them run free forever.' Omio sighs heavily as she sits herself down onto her sofa. Looking over the somewhat tired red head you get the feeling that the conversation is over with. Though all of this information is rather much to take in, it does explain certain things about the future to come. Maybe helping Omio out more with her research will benefit everyone involved? Only time will tell. 'Anyway,' The red head gets up and then cheerfully smiles at you. 'You've done your work for me, so here are some gifts for you. Take them with my thanks.'[line break]";
				add "water bottle" to invent of player;
				add "food" to invent of player;
				add "chips" to invent of player;
				add "soda" to invent of player;
				extend game by 8;
				increase score by 50;
				now omq is 2;
			otherwise:
				say "'Oh, ok.' Omio shrugs, but doesn't seem all that hurt by your lack of interest in what she knows. 'Anyway,' The red head cheerfully smiles at you. 'You've done your work for me, so here are some gifts for you. Take them with my thanks.'[line break]";
				add "water bottle" to invent of player;
				add "food" to invent of player;
				add "chips" to invent of player;
				add "soda" to invent of player;
				extend game by 8;
				increase score by 50;
				now omq is 2;
	if omq is 2:
		say "Coming up to Omio, who happens to be busy working on her computer, you cough to draw the woman from what she is doing and then jump back in surprise when the angry face of the red head greets you. Seeing that's it's just you Omio slowly lets her face settle back into her normally happy façade, however, you make a mental not to be more careful around the other as that former look in the red head's golden eyes spoke of clear intent to bring down retribution onto someone's head. Whatever she was upset about must have had to do with her computer because upon getting up to greet you Omio quickly flips the monitor of the machine off, hiding whatever it was. 'Hey you, so glad you've come right now!'[line break]";
		say "Omio stretches and then reaches over to hug you tightly into her somewhat modest chest. 'I sooo need your help right now.' You try to ask the other what she needs, but sadly it gets muffled into the red head's warm and comfy feeling bosom. When Omio decides to let you go, some minutes later, you pant slightly as your [facename of player] face is somewhat very sweaty. Despite her size the red head is both very strong and has a very high body temperature. Odd, but then again, what in this strange world can be considered normal anymore? 'If you have some time I need you to do me a big favor.'[line break]";
		say "Asking the other what she needs you get a very big surprise. 'Well I need to examine a unicorn, but at the moment I don't want to leave my house because of [']circumstances['] beyond my control.' Omio scowls slightly and covers her chest with both of her arms and you get the feeling that something big must be up to make the normally bubbly red head so upset. 'Any who, because of this I would like for you to become a unicorn and then come back here so I can examine you.' At this you blink at Omio, the red head is smiling at you sincerely, and then ask her if she's lost her mind. When the other begins to giggle at you, you realize that – yes – she has indeed lost her mind.[line break]";
		say "'Nope. I need to draw both blood and other samples from a unicorn, as well as get a few shavings from its horn, so that I collect data on such a rare and mythical creature. Don't worry I know where you can find one to borrow some [']genetic material['] from.' Omio wags her eyes at you lewdly and then tells you about the Palomino where a unicorn barkeeper works. 'I'm sure he'd be very happy to help you out with becoming a unicorn, especially if you were to help him with a problem or two.' The red smiles again and you can only suck on your teeth as you wonder what you've gotten yourself into with this gold eyed harlot.[line break]";
		if bodyname of player is "Unicorn" and facename of player is "Unicorn":
			say "Omio nearly squeals, correction, she does squeal, as the red head looks over your impressive unicorn body and face and then gets up from her spot on the sofa to hug you tight. Grunting from the feel of the woman's strong grip you wonder if the other is some kind of behemoth-type mutant in disguise as you feel your ribs starting to creak slightly. Whinnying for the other to let you go you all but collapse as you suck in grateful gulps of air when the red head suddenly releases you. 'Thank you so much for this! I never would have thought that you would make such a [if cocks of player > 0]studly[otherwise if cunts of player > 0]charming[otherwise if cunts of player > 0 and cocks of player > 0]magnificent[end if]steed.'[line break]";
			say "Omio continues to squeal like a schoolgirl having her first crush while bouncing up and down like mad, but before you can get too weirded out by the red head's behavior the red head has her game face on and is looking at you with a stoic mask of professionalism. 'Now that you've acquired all of the genetic material needed with your transformation please sit down on the sofa while I go and get the tools needed to examine you.'[line break]";
			say "You find yourself nodding and whickering somewhat in disbelief at the sudden change of the other. Maybe she has some kind of weird personality disorder or something? Something about that woman is odd and looking at where Omio is heading as she disappears into the darkened area of her room you begin to wonder...[line break]";
			say "A slight shudder goes through you as you speculate over just exactly what the red head is going to do to you. However, you are not prepared for her to come back with a face mask strapped around her tanned nose and chin, a pair of white latex gloves on, a nurse's scrub covering her blue Chinese dress, while carrying an old fashion black leather doctor's bag that look like it had slipped through a time hole from the 1960s. 'Alright,' Omio says and your eyes nearly pop out of your skull when the woman comes over to you and then starts trying to undress you. 'I'm going to need you to get out of these and then prepare for some advance medical testing, the likes of which is not standardized by any health organization in America.'[line break]";
			say "You try and say something but all you can do is goldfish as the red head continues to try and loosen you from your only decent set of clothing. Sadly enough, you find the thought of being naked in front of Omio somewhat arousing and soon you are helping the golden eyed female to strip you down. Once you are fully naked Omio then proceeds to go about checking your blood pressure, examining both of your eyes and ears, measuring your arms, legs, chest and then shaving away bits of your glimmering horn to place the snippets into a small Petri dish.[line break]";
			say "Drawing blood and saliva from you and then storing the fluids into small test tubes Omio goes about asking you several questions while at the same time giving you no speculations as to her own thoughts. Some of the questions are a bit...personal...but you don't have much of a problem answering the other because of the strangely disarming nature in which the red head asks them. Once that is done the red head stands up and then looks you over completely. A playful light shimmers inside of Omio's golden eyes as she looks at your crotch.[line break]";
			if cunts of player > 0:
				say "'Alright then, just hold still while I conclude the last portion of the examination.' Omio chuckles and quickly you find yourself trying to back away from the other. You fearful retreat only succeeds in pushing yourself further into the red head's plush couch however, as a white gloved hand reaches down to dip to fingers into your open cunt. A whinny of pleasure turns into a moan as you feel Omio's, surprisingly thick digits, slip deeper and deeper into you until the red head has both of her knuckles buried inside of your unicorn pussy. Spreading your legs on instinct you buck and shiver as the wannabe doctor's fingers swirls her fingers around inside of your cunt while pressing a finger over the nub of your clit. Arching and panting your body feels like you're about to go into heat as your honey begins to leak out from the inside of your now gaping folds.[line break]";
				say "Seeing you in such a intriguing position Omio snickers and then brings the rest of her fingers together to bury all five of her digits into your oozing pussy. Pressing down deeper into you, you can't help but to throw back your head and then shout out a strong [italic type]NEIGH[roman type] when your fleshy lips flutter and then lock up tight around Omio's fingers. Holding the red head's hand down tight you buck and then screech as orgasm washed over you like a wave. Gouts of clearish blue nectar dribbles out of you and onto Omio's gloved hand as you climax powerfully until finally you have nothing left to give.[line break]";
				say "When you come down from off of your high you drop back down onto the sofa and then begin to pant like an overworked freight train. Mind whirling as though you've gone through an unbelievable experience, which technically you have, you blink your eyes open and then look down just in time to see Omio collecting your colorful nectar into a large jar. When the red head speaks next you can only twitch an eye as Omio's words sink deep into your brain. 'Thanks a lot for this sample! I never would have gotten old Harold to give me anything unless I raised my ass for him. But thankfully I didn't have to do that because you did instead!' The red head holds up the now capped jar and then pulls out a sharpie to label it. 'With this we can test some new theories to see if unicorn cum actually does extend one's life! Maybe if you feel like it you can work we me and my company later on to see if this is true or not?'[line break]";
				say "You pass out from exhaustion before you can comment on that one and when you wake up you have a hard time remembering what exactly happened, that is, until you find your clothes still in a puddle around you on the floor and your lap sticky with your spilled honey. Blushing slightly as the memories return to you, you listen as Omio rapidly taps onto her computer and then pull yourself up to get dressed before leaving out of the red head's house. In your backpack are several extra supplies that had been given over by Omio.[line break]";
				add "food" to invent of player;
				add "water bottle" to invent of player;
				add "peach" to invent of player;
				extend game by 8;
				now omq is 3; 
			otherwise:
				say "'Now don’t worry none Mr. Stallion. I'm going to treat you really, really good.' Omio's fake Texan accent has you stammering slightly in disquietude, however, before you can do much of anything the other has her hands on your [cock of player] cock and is stroking it to full hardness. One would think that with latex gloves on the feeling of the red head stroking you would be uncomfortable, but that proves not to be so, especially as your precum starts to ooze from the tip of your slit on down over the length of your manhood. Grunting and whickering as you slowly start to thrust your hips up into the female's hand you can't help but groan as your eyes flutter close while your back arches from the exquisite hand job your getting.[line break]";
				say "You grip the sides of the couch with your meaty fingers when Omio brings up her other hand to begin twisting your cock with strong, but easy, pumps. Trying to hold onto your orgasm as you feel your balls quickly start to twitch between your legs you pant through clenched teeth while bucking almost frantically up into Omio's talented hands. It's sadly, or rather wonderfully, a losing battle for you as Omio seems to know exactly what she's doing. Stroking down the thick pulsing veins on your organ the red head quickly proceeds to finish you off quickly when she moves one of her hands down to tease at your balls. A playful chuckle from Omio echoes in your twitching ears as the red continues to milk you in an effort to get out your churning load of cum -- her hands are now moving in a rapid paced motion up and down your cock almost becoming a white blur to you.[line break]";
				say "When you climax it's with a lively [italic type]NEIGH[roman type]. Grunting and then shouting your ecstasy to the world you fire your cum up out of your cock with almost rocket-like force, hitting the top of Omio's living room ceiling hard enough that your teal blue spooge actually splatters like paint hitting asphalt. Blinded by the stars popping across your vision you never notice how the red head backs away from you and then pulls out a large jar to collect your spurting cum up off of your lap. All you notice is blissful darkness as you pass clean out from the exertion of such a breathtaking orgasm.[line break]";
				say "When you wake up from your inopportune nap you have a hard time remembering what exactly happened, that is, until you find your clothes still in a puddle on the floor and your lap sticky with dried cum. Blushing slightly as the memories return to you, you listen as Omio rapidly taps onto her computer and then pull yourself up to get dressed before leaving out of the red head's house. In your backpack are several extra supplies that had been given over by Omio.[line break]";
				add "food" to invent of player;
				add "water bottle" to invent of player;
				add "peach" to invent of player;
				extend game by 8;
				now omq is 3; 
		otherwise:
			say "'Remember I need your body to be that of a unicorn and your head to be that of a unicorn so that I can collect some samples.' Omio says before winking up at you. 'Oh and also, don't forget, that the guy you are looking for is in the club named the Palomino. The place should be downtown somewhere, if it hasn't been overrun already by the ferals running around.' Omio hums thoughtfully as she says this, her face is tight with contemplation.[line break]";
	if omq is 3:
		say "A somewhat loud explosion throws you back against the patio door of Omio's research studio. Grunting from the wave of pain spiking through your body you close your eyes just in time for a miasma of black smoke to come rushing out at you. Enveloped by darkness, and slightly injured, you find yourself getting to your feet somewhat slowly while at the same time calling out for Omio. Fanning the front of your nose when the scent of burnt [']feline?['] has you sneezing in reflex you call out again for the red headed researcher to answer you.[line break]"; 
		say "Glimmering golden orbs shine directly into your face a moment or two later from inside of a large grey cloud of soot and ash. 'Yes? Is everything alright?' The cool tone in the red head researcher's voice has you backing up some as Omio suddenly sounds very...different...for some reason.[line break]"; 
		say "Telling the other that you worried about her and wanted to know if she was alright, Omio chuckles at you before she sweeps her hand in front of her golden eyes to dispel the black smoke away from her face. Like magic...and mildly you wonder if that is exactly what it is...Omio bats the clouds of darkened smoke out of her house through the open patio door and the chimney, respectfully. A small gale rips through the living room area a second later and soon you and the red head are standing face-to-face in a...slightly...disarrayed household. 'Now then maybe that will make it better for you to see me, wouldn’t you agree?'[line break]";
		say "You're not sure what to say to the red head as you simply blink in confusion. Wasn't she just in the middle of a large explosion? From the look of her you don't see anything out of place on the red head, well save for her blue Chinese dress being somewhat dirty. Trying to open your mouth to ask Omio how she just did what she did you get a raised hand and then a single wag of a tanned finger. 'Don't worry about the little things right now.' The red head smiles before winking. Obviously she must be okay because her former teasing mannerisms have returned. 'So what can I do for you today?'[line break]";
		say " Shaking your head and regaining your wits you ask Omio if there was something you could do to help her clean up the place, as you have totally forgotten why you have come to see her in the first place. Omio hums pensively to herself at your open offer. 'Well, you know I could use some more materials now that I've wasted my own on my little failure of a [']project[']. Do you think you could do go out and bring me back several pieces of spotted fur from the Leopardmen running around the high rise district and some tainted wool from the rams that should be running around outside of that bunker of yours? Five pieces of material each would be nice.'[line break]";
		say "You find yourself nodding and turning to fetch what the other had just asked for, but before you can take too many steps you stop dead as you go over what Omio said. Whipping back around you ask the red head how she knew about the bunker where[if Sarah is in bunker and Fang is in bunker]your companions are staying[otherwise]Trixie is hiding[end if]safely out of harm's way, you find Omio waving you off somewhat whimsically. 'I know everything there is to know about the people I deal with. I couldn't be a successful researcher any other way.' The flippant air coming from off of Omio has you narrowing your eyes at the red head. Again, that strange feeling that you need to be careful around the woman surges up throughout you.[line break]";
		say "Yet despite this feel of uncertainty surrounding the other gathering the materials Omio has requested is more important...for now.[line break]";
		if Spotted fur is fiveowned:
			say "You get the feeling that you don't have the right amount of material Omio needs to complete -- whatever it is – the red head was working on. You realize that you'll have to do some more hunting in order to gather the five pieces of Spotted fur before you can hand over what Omio needs.[line break]";
		otherwise if Spotted fur is fiveowned and Tainted wool is fiveowned:
			say "With the five pieces of spotted fur in hand you feel good inside about giving the red head the materials she needs, but then you stop as you remember that you have to fetch some tainted wool.[line break]"; 
		if Tainted wool is fiveowned:
			say "Remembering that you need to get five pieces of tainted wool for Omio you recall that the red head said something about there being sheep outside in the city[if nes >= 1]. You bear in mind that there were rams running around outside looking for one of their lost flock, so maybe hunting some of them down would be wise[otherwise]? But where in the world would sheep hide in the middle of a city infested with roving mutants?[end if][line break]";
		if Tainted wool is fiveowned and Spotted fur is fiveowned:
			say "With the tainted wool in your backpack now would be a good time to head back to Omio to give the red head the materials she had requested. Oh, but wait! Didn't she need some spotted fur as well?[line break]";
		if Spotted fur is fiveowned and Tainted wool is fiveowned and omq is 3:
			say "Omio chuckles at you and then politely reminds you of what she needs, her golden eyes shine coolly as looks into your [facename of player] face. 'I need five pieces of spotted Leopardman fur and five pieces of tainted wool from those rams outside. Please make sure to bring them back and in a timely fashion, ok?' The red head winks at you and you get the disturbing feeling as though she's up to something.[line break]";
		otherwise if Spotted fur is fiveowned and Tainted wool is fiveowned:
			say "Omio nods to you in a calculated manner as she takes the materials off of your hand and then moves over to the cauldron she always has boiling inside of her fireplace. 'Thank you so much for this, because of you I can now create the thing that I was trying to craft earlier.' Asking her what she is planning to do with the fur and wool you collected you find yourself stepping up next to Omio's side when the researcher waves you over. Your eyes widen in some confusion as the red head nonchalantly dumps the fur and wool into the steaming broth of pinkish-purple liquid that is bubbling inside of her cauldron. 'It might not be very scientific, but watch this,'[line break]";
			say "You say nothing as Omio takes a wooden ladle and then plunks it into the pot to start stirring the contents around. From what you can see the tainted wool and spotted fur seem to be mixing together like spices being put into a soup, but that couldn't be possible, right? 'Could you hand me the red vial off of my computer table?' Doing so without question you run over to the desk, look over the several assorted vials standing together inside of a small black case, and then grab the red vial as asked. Taking it back over to Omio you watch as she looks over the liquid and then uncorks the vial before dumping the crimson solution into the cauldron.[line break]";
			say "Upon touching the pinkish-purple pool the red liquid immediately transforms the mixture a sickly green color. You have to take a step back as white smoke fills up the area around both you and Omio. Covering your nose as the smell of sulfur cloys at your nose you cough slightly while wondering how the red head can stand such a detestable smell. You don't have long to wonder because soon Omio is chirping, rather loudly at that, as she looks over the fur and wool flowing together to become one large mass. Returning to looking at the mixture you find your jaw almost hitting the floor when you see Omio pull out a large mass of...[']spotted cotton[']?[line break]";
			say "'Finally! This is proof that we can synthesize new fabrics and other substances from the infected hides and pelts of other mutants.' Omio says matter-of-factly. Quietly you ask the other why she needed to obtain this information. 'Because by the time the situation here in the city is resolved, or at least contained, I don't think that there will be many natural based resources available on earth that the average person will be able to keep covering their bodies without becoming infected.' Omio turns to give you a solemn stare.[line break]"; 
			say "'Think about it, you got this material from an infected sheep, now imagine what would happen if/when a farmer that supplies cotton to a large industry lets his herd become tainted without his knowledge. And then imagine what will happen if steps aren't taken to check over a shipment of infected cotton in order to neutralize the virus?'[line break]";
			say "'That's hundreds to thousands of pounds of cotton that could have a ram/ewe viral strains on them. If that gets out to a country that's not fully vaccinated then that's thousands to maybe even millions of people that could end up growing sheepskin and hooves before anyone knows what has happened. There's no way that that can be allowed to happen. You have to realize that the clothes you wear absorb both sweat and skin cells from off of you so when you put them on you are basically re-infecting yourself again. It's just that the virus can be so strong in one person/creature that unless you have gained the ability to withstand infections you're constantly being physical changed so much that one strain doesn't linger for very long inside of you. Not unless you physically make an effort to hold onto a particular type of infection.'[line break]";
			say "'However, with the city in the state that it is in no too many people are really running around in clothes right at the moment, save for the military and maybe a few select others. Unless portable microwave units, or something close enough to it, are going to become a regular household appliances any contact with something infected, even if it washed, will have the possibility of transforming an untreated person into one of the infected. So, imagine if you will, millions of people possibly not being vaccinated in the future -- for one reason or another. That opens up the possibility of new strains of viruses being born right underneath the noses of the various governments of the world.'[line break]";
			say "Looking to the large clump of material dripping dry on the wooden ladle Omio is holding up you feel as though you should ask her something, but what exactly? (Y=About the past, N=About the future)[line break]";
			if player consents:
				say "Seeing that Omio's mind is somewhat accommodating you ask her about the past, specifically about if something like this happened before. 'Once, though it was only supposed to be a test, just a harmless test.' The red head answer quietly. 'An experiment was run on a small group to see how they would handle the introduction of a new strain of genetic code into their own primitive bodies.' Omio chuckles all of a sudden. 'I suppose you could say that things turned out well since the mutations that were born were everything that we could have hoped for, however, the fact that the test subjects all ended up with tails, claws, fangs, and the instincts of predators didn't help them to flourish in their own world after the changes became...permanent.'[line break]";
				say "You ask Omio which part of the world this unknown testing happened at some unknown time ago. You're not prepared for the red head's answer, 'Which world are you talking about because there were more than a few that got...[italic type]genetically modified[roman type] in the past.' At that your mouth flounders somewhat in astonishment as Omio gives you a mysterious little smile before winking at you.[line break]";
				say "'Don't worry about it, just know that previous events won't be repeated if I have anything to say about it.' Omio nods triumphantly. 'If you give me some time I'll go over and work on this material to make it into something useful for you. You could so with some decent armor and all since you have to struggle so much to survive in this newly whacked out world.' The red head winks at you somewhat flirtatiously all of a sudden before she giggles girlishly.[line break]"; 
				say "'Or maybe you could do with a nice loincloth to cover your lower [bodyname of player] body with. It would be something sexy to tease a certain mythical equine you've shagged before while strutting your stuff around in front of him.' You find cocking your head to the side in confusion before you suddenly recall Omio's last assignment with getting a unicorn form for the red head to [']research and analyze['].[line break]";
				say "Omio moves away from you, pulling the lump of spotted cotton with her, and then goes about her way to tailor the material into a piece of armor for you. Idly you wonder what she'll make.[line break]";
				delete Spotted fur;
				delete Spotted fur;
				delete Spotted fur;
				delete Spotted fur;
				delete Spotted fur;
				delete Tainted wool;
				delete Tainted wool;
				delete Tainted wool;
				delete Tainted wool;
				delete Tainted wool;
				add "Leopard shirt and pants" to invent of player;
				add "water bottle" to invent of player;
				add "food" to invent of player;
				add "peach" to invent of player;
				extend game by 8;
				increase score by 20;
				now omq is 4;
			otherwise:
				say "Asking the red head about the future you watch as a tiny smile blossoms onto Omio's tanned face. 'It's my hope that the Prometheans will be able to do much better with my research than what the government tried to do. I [italic type]pray[roman type], and I don't usually pray for a lot, that their leader will have the wisdom and intelligence to know how to deal with this situation to turn it into something that will benefit everyone instead of just a select few.' Omio snorts as though in vexation about something. 'Though, then again I might be getting my hopes up for nothing. Not that this would be a first for me.' The red head shrugs. 'But what can I say, I'm a hopeful idiot.'[line break]";
				say "Tentatively you ask Omio what she means by that, but find yourself jumping back when the red head starts laughing all of a sudden. 'My, my, aren't we the curious one. Do you really think I'll give away all of my secrets?' Omio waggles her eyebrows at you. 'Any who, if you give me some time I'll go and work on this material to make it into something useful for you.' The red head winks at you somewhat flirtatiously all of a sudden before she giggles girlishly.[line break]"; 
				say "'Or maybe you could do with a nice loincloth to cover your lower [bodyname of player] body with. It would be something sexy to tease a certain mythical equine you've shagged before while strutting your stuff around in front of him.' You find yourself cocking your head to the side in confusion before you suddenly recall Omio's last assignment in getting a unicorn body for the red head to [']analyze and research['].[line break]";
				say "Omio moves away from you, pulling the lump of spotted cotton with her, and then goes about her way to tailor the material into a piece of armor for you. Idly you wonder what she'll make.[line break]";
				delete Spotted fur;
				delete Spotted fur;
				delete Spotted fur;
				delete Spotted fur;
				delete Spotted fur;
				delete Tainted wool;
				delete Tainted wool;
				delete Tainted wool;
				delete Tainted wool;
				delete Tainted wool;
				add "Leopard shirt and pants" to invent of player;
				add "water bottle" to invent of player;
				add "food" to invent of player;
				add "peach" to invent of player;
				extend game by 8;
				increase score by 20;
				now omq is 4;
	if omq is 4:
		say "Going to speak to Omio you find yourself jumping slightly when a sharp noise out in front catches onto the edge of your hearing. A flash of red and blue shoots pass you and before you know it you're heading outside to see what the commotion is on about. What you find when you get outside is Omio screeching as the red head kicks the furry hides of several prairie dogs that have happened into her garden. 'GET OUT YOU PESTS!' From the way Omio is going about her business it would seem as though she's had to deal with the rodents trying to take bits and pieces of her garden before. With viper like quickness the red head expertly grabs the furry critters by the neck when they pop out of their little hiding holes and then literally gives them the boot to send them back across the plains.[line break]";
		say "Not wanting to get in the other's way you watch for several minutes as Omio displays a certain level of ferocity you wouldn't have expected out of the normally playful, if not somewhat silly, researcher. Right up to the point when you notice more prairie dogs coming inbound towards you.";
		challenge " Prairie Dog";
		challenge " Prairie Dog";
		challenge " Prairie Dog";
		challenge " Prairie Dog";
		say "When the lasts of the little furry pests are gone you walk over to Omio to check on the red head to.[line break]";
		if the facename of player is "Prairie Dog":
			say "Turning to have a look at you Omio screams from where she is on her knees checking over her herbs and vegetables. Trying to reassure the red head that you are you and not a feral prairie dog Omio seems not to believe you as she swiftly sends a savage uppercut towards your chin.[line break]"; 
			if strength of player < 25:
				say "Omio's attack is so great that you are lifted up off of the ground and then sent hurdling through the sky back towards the city as pain screams throughout your jaw. Feeling your body floating as light as a feather you find yourself looking down at the world below as you slowly sail past the plains. Blinking and then looking down you find that the grassy knoll is kind of beautiful from this distance, though you'd never have thought that you'd see it in this sort of way before, and for a moment you feel your breath catch into your throat as you take a new appreciating of the world beneath your feet.[line break]"; 
				say "Floating, or rather flying as you are, isn't so bad, you come to realize, however that though soon gets put on hold as you notice your path leading you directly into a flock of wyverns. Trying to angle your body to stop you only succeed in making the situation worse as impact head-on into one of the flying scalies.[line break]"; 
				say "Slamming into one of the wyverns both you and the flying reptile squawk in pain at your star-crossed gathering. However, the worst part doesn't exactly come until two seconds later when you and your impromptu mount end up spiraling down onto the ground when the wyvern loses its focus and forgets to flap its massive wings on a coming updraft. Screaming as the ground hurriedly grows larger in front of your eyes you hang onto to your traveling companion in vain hopes that, you'll at least, survive the jarring impact you know is coming.[line break]";
				if a random chance of 2 in 5 succeeds:
					say "Thankfully the wyvern ends up breaking both of your falls as it crashes onto a large truck. Well more so for you than the reptile because by breaking your fall the flying scalie has given you the time to both to collect yourself and then jump off of its backside. Deciding that this adventure is over for today you hurry on your way back to your bunker at top speeds. Good thing to because five seconds after you start to beat feet several of the fallen wyvern's companions are flying overhead to have a look-see over at their dazed and slightly moaning cohort.[line break]";
					decrease hp of player by 15;
					Move player to Bunker;
					extend game by 8;
					increase score by 15;
					now omq is 5;
				otherwise:
					say "Thankfully enough, for the wyvern at least, the reptile is able to spin around and then right itself to jumpstart flying once again. Sadly for you however, you end up being dislodged when the other spins around. Yelping and then slamming your eyes shut in hopes that death with be quick you find yourself gasping in pain when you finally hit the ground. Or rather, when you hit an opened truck full of...sand? Blinking and then coughing up a storm as plume of dirt rains down over the top of your head you find yourself cocking your head in slight confusion when you realize that – yes – you are indeed inside of the back of a large truck filled with...sand.[line break]";
					say "A fit of giggles come over you without your permission and soon you lie back into the truck and then roll around in the sand as you think about how ironic this all is. That is, right before you notice several dark forms hovering above you in the sky. Your laughter almost turns into sobs when you note that the [']dark forms['] looming over you happen to be the large flock of wyverns from before. The large collective of winged reptiles seem particularly [italic type]incensed[roman type] about you having hurt one of their own.[line break]";
					challenge "Wyvern";
					challenge "Wyvern";
					challenge "Wyvern";
					challenge "Wyvern";
					challenge "Wyvern";
					say "After dealing with those pest, and then wiping their gunky slime-like mucous down from off of your body, you decide that today's adventure is over and that its time to head for home. Though oddly enough, you manage to procure some bottles of water from the ground beside the truck before you go.[line break]";
					add "waterbottle " to invent of player;
					add "water bottle" to invent of player;
					Move player to Bunker;
					extend game by 8;
					increase score by 25;
					now omq is 5; 
			otherwise:
				say "Omio's attack sends you reeling back from an instant K.O. and soon stars are popping out in front of your eyes as darkness covers you vision. The last thing you hear before unconsciousness kicks in is, 'Why in the hell are these things continuously bothering me?'[line break]";
				decrease hp of player by 15;
				extend game by 8;
				increase score by 10;
				now omq is 5;
		otherwise:
			say "'GODS!!!' Omio yells while shivering and rocking herself slightly. 'I can't stand those little pests! One of these days I'm going to create a super rodent killing machine and then let it go to town wiping out every last vegetable eating pest I can find on this stupid planet!' Omio begins to rant more and more and quickly you get the feeling that maybe leaving would be a good thing to do before her ire finds its way centering on you. Taking your leave you notice several peaches on the ground at your feet and quickly move to pick them up while heading off. Lucky![line break]";
			add "peach" to invent of player;
			add "peach" to invent of player;
			add "peach" to invent of player;
			extend game by 8;
			increase score by 15;
			now omq is 5;
	if omq is 5:
		say "Omio quickly hands you off something after saying 'think fast'.[line break]";
		let bonus be (( the Dexterity of the player minus 5 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus]: [diceroll + bonus], ";
		increase diceroll by bonus;
		if diceroll is greater than 12:
			say "Catching the thing by the hand you find yourself getting shocked slightly as an electrical snap surges up throughout your spine. Tossing the item away as though burned you find the red head giggling at you slightly as she comes over to pat you onto the face. 'Well, I'm glad that worked out well.' You ask Omio what she just tried to do to you and then sigh in exasperation when you get your answer. 'I'm working on a new kind of electrical taser device that will give your opponents a powerful shock. The one I gave you was just a prototype that I knew wouldn't work quite so well. I wouldn't want you to be hurt in any kind of serious way, now would I?'[line break]";
			say "Sadly enough you're not sure how to answer the red head so instead you simply ask Omio why she felt the need to try the device on you. 'Oh, because I've decided to give you several of my working units for you to use at your leisure while outside. I know how dangerous it can be out there so I wanted to give you something to show my appreciation of your efforts in helping me out, and in surviving this place.' The look in the golden eyes of the red head tells you that Omio is speaking the truth, but you get the funny feeling that she's not admitting everything.[line break]";
			say "Deciding not to let it bother you, you simply nod to Omio and then hold out your hand in wait for her to hand over the devices. A squeal makes you flinch slightly as the red head researcher runs off upstairs and then comes back down with several of the [']fully functional['] devices in her arms. 'Now remember, these are the working models so you'll have to be careful with them. Also, you'll have to make sure that you use them exactly as I tell you to, otherwise you might end up getting a teensy little shock yourself.[line break]";
			say "You nod hesitantly to Omio and then listen as the woman tells you how to work the device. Ironically enough all she tells you to do is to prime them by pressing the only red button on front of them and then to throw them at your opponent. 'Oh and please remember,' You find yourself looking up at Omio just as the red head is walking towards her computer table. 'They only have one charge a piece so, you wisely young grasshopper!'[line break]";
			add "Stun bomb" to invent of player;
			add "Stun bomb" to invent of player;
			add "Stun bomb" to invent of player;
			add "Stun bomb" to invent of player;
			add "Stun bomb" to invent of player;
			extend game by 8;
			increase score by 10;
			decrease hp of player by 10;
			now omq is 6;
		otherwise:
			say "Fumbling your hands and failing to catch the thing Omio tossed you wind up listening to the round hockey puck-like object make a sharp [italic type]zing[roman type] sound before it hisses and then goes quiet. Stopping yourself from picking it up where it landed at your feet you snap your head up to the red head and then ask her what she just tried to do to you. Omio pouts as she looks at you somewhat in vexation.[line break]";
			say "'You were supposed to have caught that.' You ask her what [']that['] thing was supposed to do to you. 'Oh, give you a little shock. Nothing big, but enough to make your [skin of player] body tingle for a little bit.' You look at Omio somewhat distrustfully at that point as you narrow your eyes at the red head. 'Oh, don't worry -- I wouldn't do anything lethal to you. I have plans for you yet, my sweet like helper.' The red head chuckles somewhat evilly at you and you shiver without being able to control yourself. Again, you feel as though being careful around this woman is a must.[line break]";
			say "Sadly enough at that point you're not sure how to respond to Omio, but you muster up the will to outright as the red head why she felt the need to try the device on you. 'Oh, because I've decided to give you several of my working units for you to use at your leisure while outside. I know how dangerous it can be out there so I wanted to give you something to show my appreciation of your efforts in helping me out, and in surviving this place all on your little lonesome.' The look in the golden eyes of the red head tells you that Omio is speaking the truth, but you get the funny feeling that she's not admitting everything.[line break]";
			say "Deciding not to let it bother you, you simply nod to Omio and then hold out your hand in wait for her to hand you the devices. A squeal makes you flinch slightly as the red head researcher runs off upstairs and then comes back down with several of the [']fully functional['] devices in her arms. 'Now remember, these are the working models so you'll have to be careful with them. Also, you'll have to make sure that you use them exactly as I tell you to, otherwise you might end up getting a teensy little shock yourself.[line break]";
			say "You nod hesitantly to Omio and then listen as the woman tells you how to work the device. Ironically enough all she tells you to do is to prime them by pressing the red button on the front of them and then to throw them at your opponent. 'Oh and do remember this,' You find yourself turning your head up so you can look at Omio as she heads off towards the kitchen. 'They only have one charge a piece, so do you them sparingly.'[line break]";
			add "Stun bomb" to invent of player;
			add "Stun bomb" to invent of player;
			add "Stun bomb" to invent of player;
			add "Stun bomb" to invent of player;
			add "Stun bomb" to invent of player;
			extend game by 8;
			increase score by 10;
			now omq is 6;
	if omq is 6:
		say "'Hey, I need you to do me a favor today.' You take a sudden step back at the forwardness of the red head, but nod all the same as Omio gazes straight into your face. 'I need you to pick up a package for me from someone in the red light district. Don't worry,' Omio stops you before you can start to ask anything with a raised hand. 'It's just some supplies and equipment that I need from a black market dealer. She's waiting for you somewhere near the Aussie pub near the downtown red light district, so could you please go and get them for me.[line break]";
		say "I [bold type]really[roman type] need those things. Like, yesterday.' Omio looks to you with an almost demanding glower in her eyes and quickly you get the message that it's time to be off. Though a part of you wonders what she could need so badly, you figure that you'll find out when you hunt down this mysterious woman. Wait, what does this person even look like again?[line break]";
		[now opcl is 1;]
		now Ointerrogate is 1;
	if "lumpy box" is not listed in invent of player and Ointerrogate is 1 and omq is 6:
		say "'I know that I may not have given you explicit instructions, but please head to the red light district to go and pick up my parcel.' You ask Omio to give you some more details about the person you are supposed to be picking the package up from. The red head blushes as she realizes she hadn't told you much about the other. 'Oh, sorry, the woman is a blonde with a scar across her face. If she still has some of her humanity left, which, knowing her she does, then you'll be looking for someone with a long white coat and hood on. Think something like one of those assassins from that game...what was it...something Creed? You should get the idea.[line break]";
	if "lumpy box" is not listed in invent of player and Ointerrogate is 2 and omq is 6:
		say "'Huh? What do you mean the police stopped you while you were looking for my package handler?' Omio asks and you tell the red head exactly what happened while you were out in the city. 'Really? That's...not very surprising.' You wait patiently for Omio to explain herself. A minute later you grunt into the pit of your throat when no answer is forthcoming. It's only when the other looks at you nervously that she chuckles and then coughs in preparation to speak. 'Well you see, the person you are looking for, well, she just so happens to be wanted for murder.[line break]";
		say "Your brain actually stops at that point and Omio uses your mental pause to go right on speaking. 'You see, the blonde in question, whose name I always forget, happens to be wanted throughout both the states and some other countries for suspected smuggling and a few unsolved murders. I know for a fact that she's innocent of the latter, but her mysterious nature, and bad timing, has gained her a rap sheet almost ten miles long. Most of it would be thrown out in court by a decent lawyer, but at the same time she's always on the run from the police so she can never get into court to have this nonsense throw out.' Omio giggles nervously as your left eye begins to twitch.[line break]";
		say "'Don't worry, if you just go and pick up my package then all will be well. You have nothing to do with her, on either a personal or business level, and the police are idiots for even trying to sequester you for information since you, technically, don't know anything relevant about the blonde.' You let Omio know that you don't appreciate being dragged into all of this. 'I know, and I'm sorry, but you're the only one who I can ask. So please,' The red head takes your hand and then stares up at you with shining golden eyes that seem to grow moist all of a sudden. 'Do bring back my package for me.'[line break]"; 
		say "You remove your hand from the red head's grasp when her eyes start to flutter and then ask her why she wants the parcel so badly. 'It's filled with chemicals and other materials I need for my experiments.' Omio says offhandedly. 'Most of them are illegal to ship into this country and the blonde is the only one who can supply what I need. So, it's kinda vital that I get them ASAP, otherwise my experiments might come to a screeching halt!' Omio playfully smiles before winking at you.[line break]"; 
		say "Why are you friends with this crazy woman again?[line break]";
	if "lumpy box" is listed in invent of player:
		say "'Oh!! Thank you so much!' Omio takes the offered package and then quickly darts off into her room to check over it. Too tired to bother chasing after the red head you simply move over to Omio's sofa and then crash onto the soft cushions. Minutes later find Omio coming back out of her room and then dancing around merrily while humming somewhat upbeat into the pit of her throat. Turning to look at you the red head can't help but grin like a lunatic as she comes over to sit down next to you.[line break]";
		say "You'll never know how grateful I am for all of this, but I do so seriously appreciate all you have done for me! Those chemicals will keep me going for a long while to come and my reports will be perfectly documented and written now that I have the parts to upgrade my laptop with! 'Omio cheerfully smiles at you and you can't help, but not passively at the other woman. 'What's wrong? You seem kinda beat.' Giving the red head a look you recap your adventure with the blonde and the two lizards[run paragraph on]";
		[[if Lizard Parlor is known]. You retell your adventure with the two reptiles to Omio and watch as her face goes through a multitude of expressions. Most of these said reactions range from amazed to outright shocked[otherwise]]
		say ". Letting Omio know what the blonde told you after she handed you the parcel you find yourself almost tumbling off the couch as the red headed research gets up all of a sudden. 'So what are you doing here, don't you have someplace to be!' Omio says heatedly.[line break]";  
		say "Getting up and then stretching you figure that maybe it would be a good time to get going. Especially if the somewhat wide eyed look the other woman is giving you says anything about her current mood.[line break]";
		delete lumpy box;
		add "peach" to invent of player;
		add "food" to invent of player;
		add "water bottle" to invent of player;
		extend game by 8; 
		increase score by 25;
		now omq is 7;
	if omq is 7:
		say "Try to get her attention you find that Omio is almost completely resolute in her work as she rapidly taps her fingers along the keyboard of her computer. 'Hold on, I'm looking for something.' Figuring that the red head is not about to give you the attention you desire you head over to her sofa and then flop down onto the beige cushions. Cuddling up to your backpack and looking out to the open patio door allowing the warm winds of the plains to flow into the room you find yourself slowly closing your eyes.[line break]";
		say "'And so I need you to make sure that these samples arrive into the hands of the director as soon as possible, is that understood?' Omio's voice reaches out to you in your haze of sleep. You want to rise and ask what's going on, but you're suddenly just too tired to fight off the need to sleep. 'And what of this one?' Another voice, this one unfamiliar to you, asks[if cocks of player > 0]. 'He's my pet project. He's not to be touched or harmed by any of your operatives, otherwise they deal with me personally[otherwise if cunts of player > 0]. 'She's my pet project. She's not to be touched or harmed by any of your operatives, otherwise they deal with me personally[end if]. Am I clear, Siegfried?' Omio growls with a rumble strong enough that small fixtures tremble around inside of the room while she taps her foot impatiently across the floor.[line break]";
		say "Crystal.' The last you hear of the other, before darkness and unconsciousness takes you back into its embrace, is the sounds of shoes stepping off from the hardwood floor and then crunching onto grass before. When next you wake Omio is typing away on her computer with the same focused intensity she had been using before you fell asleep. Trying to converse with to the red head only nets a grunt of mild irritation from the female.[line break]";
		say "Not seeing much else you can at the moment you take your leave. Maybe she'll be in better spirits later on.[line break]";
		now omq is 8;
	if omq is 8:
		say "'OK, so here's the deal,' Omio speaks up out of the blue. 'At present I have all of the materials needed to make some really nifty items here within the studio, however, I don't have an [']energy conduit['] necessary to transmute the raw bits and pieces into suitable alchemical compounds and reagents.' The red head says as if you had a clue about what she's talking about. 'While I could make a conduit from scratch that would take days and personally, I just don't want to waste that kind of time since I've already found one here within the city.' A bad feeling slowly creeps its way down your spine as you look at the Cheshire smile growing on Omio's tanned face. Would the red head really ask you to...[line break]";
		say "'Somewhere within the museum,' Yep, she would. 'there's a certain artifact that bears the pattern of a serpent coiled around itself and biting at its own tail crafted onto the front of a bronze amulet. I need you to retriever this medallion for me, by either fair of foul means. I don't particular care which, just please bring me back that objet d'art.' Omio says while placing both of her hands onto your [bodyname of player] shoulders and then gripping you somewhat tightly as if to stress her point.[line break]";
		say "Hesitantly nodding to Omio you watch as the golden eyed red head smiles to you and then releases your shoulders before turning you around to send you off on your way. In the back of your mind you kinda find it ironic how with the world going all to hell how larceny is becoming somewhat commonplace for you.[line break]";
		if "medallion" is listed in invent of player:
			say "The squeal Omio let's out upon seeing you holding onto the medallion is almost enough to make your ears hurt as the red head's scrambles over to you and then gently takes the artifact she had so requested off of your hands. 'Thank you so much for this! Now I don't have to go through the effort of trying to craft one of these relics for myself.' Omio rubs the bronze metal against her tanned face and for a moment you almost think that you can see her golden eyes spark with an electric-like glow.'[line break]";
			say "'Thank you again. This will be a big help for me.' Omio looks to you with a smile that speaks of something you're not quite sure of as golden eyes seem to gleam almost like stars from within the red head's face. 'Now then, to pay you back I can give you some more information on the organization I work for, if you'd like?(Y=Yes, N=No)[line break]";
			if player consents:
				say "'Alright.' The air grows heavy between you both as Omio walks over to her sofa and then pats the cushions for you to join her. Following after the red head you listen as the red head begins to talk without a hint of her normally bubbly attitude coloring her words. 'As I've already said once or twice before, the people I work for are in the midst of making a place where mutants who feel that they can't live in the ordinary world any longer can go and be who and what they are with intolerable restraint. This might not seem much to you right now, but consider this point somewhat carefully: with the way the humanity is now do you think that you'll be happy living as somewhat of an outcast to [']normal['] people?'[line break]";
				if humanity of player > 45:
					say "The scathing look you give the red head doesn't seem to faze Omio as she shrugs at you somewhat uninterestedly. 'Think what you will, but you're a mutant now. Whether you like it or not, you will no longer be seen as a regular [']person['] anytime to soon by either the military or the new administration formulating where the old government has fallen in the wake of this changing world. That being the case of things me, you and everyone else not considered a human will have to try to reintegrate back into normal society. However, what if we can't? What then?'[line break]";
					say "'What do we do when/if the time comes that the reigning governing body of the country says [']you're not good enough for us so you need to leave[']? We could possibly pack up and move somewhere else, or we could stay and fight for our rights, but with the laws as they would they even apply to creatures like us? Would the legislation of the states even protect us if push comes to shove? And if not, then what?' Omio seems to be speaking more to herself than you right about now.[line break]";
					say "'With the way things are going with the media portraying those here in the city like some kind of debased vagrants with no sense of morality or consciousness, and I know this because my organization is carefully monitoring all forms of news broadcasts, regular people who don't know anything of what's happening are going to get...confused by the situation. Knowing this and knowing of how hostilities have been in the past towards those who are [']different['], are you really ok with living in a world where you are looked down on by the very people you once considered yourself part of?'[line break]";
					say "'You don't have to answer right now, but just listen. My organization, the Prometheans, are working to try and make sure that everything will be okay in the end for us. We've got wealth enough to both shelter, feed, and educate new mutates as well as facilities where we can hone our individual skills and abilities to better prepare those just coming into the world so that they can understand how to deal with both the humans and mutants around them. In the case of the rapid increase in mutates being born out of wedlock between individuals who may not even be ready to deal with the responsibility of parenthood, someone has got to shoulder this burden.[line break]"; 
					say "With the collapse of the former government and rise of such a concepts like individual responsibility, something this country has been rather weak at fostering in the past, we have to be ready for both the mental collapse of minds not ready to cope with such burdens and those who are not emotionally stable enough to stand up and take care of themselves.'[line break]";
					say "'For now though,' Omio says catching you just as you are about to go too deep into your own thoughts. 'Don't worry about it. Just know that there is a going to be a safe enough haven for you to go, if you feel that the world is becoming too much, provided that you are willing to do you share enough to help out the collective whole.' Omio glares at you while saying this. 'We're not running a charity site for people looking to just get over, we're running a place where everyone helps everyone else. All for one and one for all, as you could say.'[line break]";
					say "Anyway,' The red head smiles and then giggles in her normal girlish way. The heavy air around the room from the previous conversation is now dispelled in the face of a more uplifting feeling. 'Thank you for helping me out just now. I'm going to be working more on my experiments so please, continue to help me out as much as you can. It will go a long way towards making this so much better for everyone involved.' Omio winks and you breathe out a sigh of disbelief at the golden eyed woman's sudden personality flip. [line break]";
					delete medallion;
					add "food" to invent of player;
					add "water bottle" to invent of player;
					add "peach" to invent of player;
					extend game by 8;
					increase score by 5;
					now omq is 9;				
				otherwise:
					say "You smile lustfully to Omio while coyly asking her what's so wrong with that? 'I see someone is succumbing to their licentious nature, you may want to take care of that before you end up somewhere in the park rutting with skunks.' Omio advises while rolling her eyes towards the ceiling. You only chuckle at the other before asking her to continue with her story.[line break]"; 
					say "'Anyway…with the way things are going with the media portraying those here in the city like some kind of debased vagabonds with no sense of morality or consciousness, and I know this because my organization is carefully listening to certain broadcasts, regular people who don't know anything of what's happening are going to get...confused by the situation. Knowing this and knowing of how hostilities have been in the past towards those who are [']different['] are you really ok with living in a world where you are looked down on by the very people you once considered yourself part of?'[line break]";
					say "'You don't have to say anything, but just listen. My organization, the Prometheans, are working diligently to try and make sure that everything will be okay in the end for those like you and me. We've got wealth enough to both shelter, feed, and educate new mutates as well as facilities where others can hone their individual skills and abilities to better prepare those just coming into the world so that they can know how to deal with the people around them. And in the case of the rapid increase in mutates being born out of wedlock between individuals who may not even be ready to deal with the responsibility of parenthood, someone has got to shoulder this burden.[line break]"; 
					say "With the collapse of the former government and the rise of such a concepts like individual responsibility, something this country has been rather weak at fostering in the past, we have to be ready for both the mental collapse of minds not ready to cope with such burdens and those who are not emotionally stable enough to stand up and care for themselves.'[line break]";
					say "'For now though,' Omio says catching you just as you are about to go deep into thoughts of[if cocks of player > 0]nice juicy cunts dribbling with sweet honey[otherwise]hard and thick cocks leaking pre cum like slow flowing rivers[end if]. A tea kettle smacks you across the head all of a sudden. 'Don't worry about it. Just know that there is a going to be a safe enough haven for you to go, if you feel that the world is becoming too much, provided that you are willing to do you share enough to help out the whole.' Omio glares at you as the tea kettle rolls on the floor back into the kitchen. 'We're not running a charity site for people just looking to get over on someone else. We're running a place where everyone helps everyone else. All for one and one for all, as you could say.'[line break]";
					say "Anyway,' The red head smiles and then giggles in her normal girlish way signifying that the conversation's focus has now changed. 'Thank you for helping me out just now. I'm going to be working more on my experiments so please, continue to help me out as much as you can. It will go a long way towards making this so much better for everyone involved.' Omio winks and you breathe out a sigh of disbelief at the golden eyed woman's sudden personality flip. [line break]";
					delete medallion;
					add "food" to invent of player;
					add "water bottle" to invent of player;
					add "peach" to invent of player;
					extend game by 8;
					increase score by 5;
					now omq is 9;				
			otherwise:
				say "'Alright.' Omio giggles good-naturedly. It seems the red head is not bothered by your lack of interest in her people in the slightest. Maybe that's proof she trusts you? Or maybe not? 'Any who, thanks for all of your hard word. Please, accept these as a gift for all of your trouble, my sweet little bandit in disguise.' The thought of your past capper makes you roll your eyes to the ceiling.[line break]";
				delete medallion;
				add "food" to invent of player;
				add "water bottle" to invent of player;
				add "peach" to invent of player;
				extend game by 8;
				increase score by 5;
				now omq is 9;				
		otherwise:
			say "'Please do obtain that medallion for me. It's really integral to my research.' Omio pleads[one of]while trying away at her computer[or]as she lounges on her sofa[or]as she sips at her warm cup of tea [or]while walking back and forth in a circle and humming something unintelligent to herself[at random]. 'If you've forgotten the artifact I need you to [']take possession of['] is at the museum. Oh don't breathe a word of this to Valeria. She's still mad about the time I tried to [']commandeer['] that painting of the sanctified Chinese pantheon that was on display in the museum two years back.'[line break]";		
	if omq is 9:
		say "You find Omio sitting at her desk and going over something on her computer. Nothing unusual there, however, when the red head jumps up out of the blue and then dashes off to her room you find yourself somewhat perplexed by the strangeness of the golden eyed woman's antics. Blinking and then looking as the red head returns with something bundled into her hands you have little time to think over what is happening before Omio is stuffing the thing into your arms.[line break]";
		say "'Get this to the warehouse district and into the arms of one captain Red-eyes, please and thank you.' Omio says without a hint of explanation. Trying to ask the red head what exactly is going on Omio rapidly shakes her red head side to side as her lips tighten into a scowling frown all of a sudden. 'Please, just get this to Red-eyes. You can't miss him, he's a giant blue hydra with two heads who'll, knowing him, will be barking orders along the south dock area of the warehouse district at one of his workers.'[line break]";
		say "Omio says little else after this as she makes her way back to her computer desk without another word spoken.";
		add "undisclosed case" to invent of player;
		increase score by 2;
	if omq is 9 and undisclosed case is owned:
		say "'I won't say much, but [italic type]please[roman type], get this package to captain Red-eyes, ASAP.' Omio seems bothered by something. When you try to ask the red head what's the matter Omio just shakes her head while buttoning her lips almost impossibly tight. What the heck...?[line break]";
	if omq is 10:
		say "Currently, Omio is busing herself with stirring at the cauldron she keeps forever bubbling and brewing with unknown mixtures within her fireplace. At seeing you, or rather hearing you step up next to her, Omio jumps a bit before settling down. 'You scared me there for a second.' The red head admits, though she sounds somewhat more startled than she tries to let on. 'I don't have much for you for today, but, if you have a flotsam club that you wouldn't mind parting with then I think I can make you a little gift.[line break]"; 
		if flotsam club is owned:
			say "Remembering that you have on hand you wonder if you should let Omio have it. Knowing the red head, anything might happen if she gets her claws onto the piece of wood. But then again, has she ever let you down before? You can live without a piece of driftwood, right?(Y=Yes, N=No)[line break]";
			if player consents:
				say "Handing Omio over your flotsam club you watch as the red head takes the piece of wood, looks it over twice with relaxed golden eyes and then dumps the club into her cauldron. Trying to keep your cool at seeing your weapon tossed into the hot pot like a vegetable you find yourself staring in awe as the piece of driftwood simply melts into the brewing yellowish orange mixture before disappearing completely.[line break]";
				say "'Just as I thought,' Omio mutters secretly making your head turn towards the researcher as a quest blooms across your face. A smile peels across the red head's tanned lips just as a dubious look crosses yours. Asking the other woman what she means by her last statement Omio hushes you as she intently focuses on the pot in front of her. 'Don't interrupt me. I'm in the process of making science happen!'[line break]";
				say "'Why don't you come back in a little while and then I'll have your new weapon ready for you.' Knowing that it's just much better to let Omio be than to fight with her on something so stupid, you tell the woman that you will come back later on to settle up with her. Of course Omio barely hears any of this as she is busy stirring her cauldron and watching it like a hawk watches a rabbit.[line break]";
				if turns less than 6:
					say "'Sorry, but it's not done yet. Please come back in a little while.' Omio says before popping her head back down to regard her mixture which now happens to be a funny red color.[line break]";
				otherwise:
					say "'Well, it's ready for you now!' Omio squeaks while polishing up a long rod about seven feet tall and one and a half inches wide. 'I hope you like it. The club I used turned out to be too bulky for my taste so I made this for you from the materials that I transmuted after I melted the wood down.' Omio hands you the rod and you test its weight out a few times with some fluid practice swings.[line break]";
					say "Knowing that you have a good weapon on your hands you thank Omio for her gift and then go about placing the rod down at your side so that you can lean on it. 'Consider it a gift for all of your hard work.' The red head chuckles at you before shaking her head slowly. 'After everything that you've done for me I do want you to know that you have not only my gratitude, but also a place with me and my people within the Promethean society.'[line break]";
					say "'Though from what you've shown me you may not need to be taken care of nor provided for, so it may be me calling on instead of the other way around later on. I hope you'll be willing to help me out, if I ever need it.' Telling the red head that you'd think it over Omio simply nods at you before chuckling again.[line break]";
					say "'That's fine. I can accept that without problem. Anyway, if you ever need a place to stay then just come on over and hang out for a while. I'll be more than happy to share some tea with you.' Omio moves gets up and then bows low to you. Not sure about what the other is doing you simply nod to the crazy red head as she raises herself back up to look at you.[line break]";
					say "A funny feeling goes through you, almost as if you think you may not see Omio again after all of this. However, that can't be right. The other just asked you to come by and help her out sometime later on. Maybe you're just feeling lonesome since you'll probably not have a reason to see the other quite as often as you did before now that her chores and requests for you are done. Maybe coming back by to share some tea with Omio would be a good thing to do, whenever you have the time, that is.[line break]";
					add "Organi rod" to invent of player;
					add "peach" to invent of player;
					add "water bottle " to invent of player;
					add "food" to invent of player;
					increase score by 50;
					now Pursuit of Science is resolved;
			otherwise:
				say "Telling the red head that you'll be okay, you decide not to go ahead with her plan. 'Ok, well anyway I wanted to thank you for all you've done for me. It has really been a big help. If you ever need anything then please stop by, I'll be more than happy to help you out with whatever you may need.' Omio says, though for some reason you get the funniest notion that you may never see the other woman after the events within the city get under some kind of control. But that's not possible...is it?[line break]";
				say "Omio's posture reveals nothing of her thoughts as she continues stirring her cauldron. It's times like these that you wish you knew the red head better, but then again, you've got some time to learn a bit more about her, right? Maybe sharing some tea with her whenever you aren't busy elsewhere would be fitting to bring the both of you closer together?[line break]";
				add "peach" to invent of player;
				add "water bottle" to invent of player;
				add "food" to invent of player;
				increase score by 50;
				now Pursuit of Science is resolved;
		otherwise:
			say "'Oh, you don't have one?' You shake your head negatively at Omio. 'Well I think you can find one somewhere on the beach. Maybe if you scout around for a piece of driftwood you may turn up something.' Omio says good-naturedly while continuing to stare into her cauldron. Not knowing if you have time to go to the beach with the city under such duress you don't make any promises to the red head as you simply continue watching her work.";




Table of Game Objects(continued)
name	desc	weight	object
"leopard suit"	"A leopard fur tailored shirt and pair of pants that Omio, a slightly whacky researcher made for you. The material is very flexible and adjusts well onto your body."	5	leopard suit

leopard suit is equipment. 
leopard suit is not temporary. 
The AC of leopard suit is 6. 
[Increase dexterity of player by 1. Increase strength of player by 1. Increased charisma of player by 2.]
The placement of leopard suit is "body". 
The descmod of leopard suit is "A shirt and pair of pants made from both leopard fur and wool covers them.".
The slot of leopard suit is "body".

Instead of smelling leopard suit:
	say "A strong scent of Leopard lingers over both the shirt and pants. A feeling of ferocity surges throughout your spine from the warm and comforting scent.";



Table of Game Objects (continued)
name	desc	weight	object
"Stun bomb"	"A hockey puck shaped electrical bomb."	1	Stun bomb

Stun bomb is a grab object. It is a part of the player. It is fast. It is not temporary.

instead of sniffing the Stun bomb:
	say "The smell of ozone lingers around the bomb. Placing your nose too close causes your face to tingle slightly.";

this is the Stun bomb rule:
[	now battleitem is 1;	[combat item chosen - retaliate to be handled internally]
	choose row monster from the table of random critters;
	now dam is ( a random number from 15 to 25 plus ( a random number from 80 to ( 120 + level of player ) ) ) divided by 100; ]
	rule succeeds;



Table of Game Objects(continued)
name	desc	weight	object
"lumpy box"	"Supposed medical equipment and solutions that the red headed researcher Omio wanted/needed."	1	lumpy box

lumpy box is a grab object.
it is part of the player.
It is not temporary.

Instead of sniffing lumpy box:
	say "The small brown wrapped package smells of chemicals, tools, and...cherry lip balm!?";



Table of Game Objects (continued)
name	desc	weight	object
"medallion"	"A unusual bronze artifact that bears a serpent biting at its own tail."	1	medallion

medallion is a grab object. It is part of the player.  It is not temporary.

instead of sniffing medallion:
	say "A strong scent of ancient times and alchemical mixtures covers the medallion.";



Table of Game Objects (continued)
name	desc	weight	object
"undisclosed case"	"A case Omio hastily shoved into your hands."	1	undisclosed case

undisclosed case is a grab object. It is part of the player.  It is not temporary.

instead of sniffing undisclosed case:
	say "The case smells of something fruity as well as spicy. Liquor, maybe?";


Table of Game Objects (continued)
name	desc	weight	object
"Organi Rod"	"A rod laden with a metallic substance reminiscent of gold. Transformed from a normal club into this by the power of alchemy the rod is both tougher and more damaging, though it weighs a lot less. "	5	Organi Rod

Organi Rod is an armament. It is part of the player. It has a weapon "[one of]your mystic rod[or]your smooth and polished staff[or]your gleaming pole[or]your seven foot staff of pain[at random]". The weapon damage of Organi Rod is 12. The weapon type of Organi Rod is "Melee". It is not temporary.

instead of sniffing Organi Rod:
	say "The rod smells of alchemical residue with a touch of heart and soul from a bubbly researcher.";






when play ends:
	if humanity of player < 9: 
		say "Even though your mind is all but gone you do remember a red headed female with golden eyes that you helped out before. Taking some time to go back to the plains in an effort to relocate the other you end up finding an abandoned house right where you were sure the red head once lived. Sniffing the place and going inside to find no trace of anyone you leave without a second thought as you come to the conclusion that you must have imagined the entire thing.";
	otherwise:
		say "After the military rolls into town you find yourself going back to Omio's studio to look for the red head. What you find upon crossing the plains is an empty studio that looks as though it hadn't seen much use in maybe ten years? Odd since the garden outside seems as though it has been watered very recently. Not understanding this you search around the place, calling out for Omio as you do so, without much success in locating the red head.[line break]"; 
		say "When you finally decide to give up almost thirty minutes later you stumble across something shining on the ground several steps away from the house. Kneeling down and picking up the thing you realize that you've found a mini GPS unit. Turning on the power of the little machine you blink in awe as a set of directions flash in front of your face with the destination name 'Prometheus Prison' glowing faintly above the coordinates.[line break]";
		say "Could Omio have left this behind for you? And if so, what happened to the red head to make her neutralize her presence here so efficiently?";



Pusuit of Science ends here.
