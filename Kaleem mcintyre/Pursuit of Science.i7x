Version 3 of Pursuit of Science by Kaleem mcintyre begins here.
[ Version 3 - Corrections made.  Quests functional (?) ]

Section 1 - Questing Chain

gatherwolfcum is a number that varies.
gatherdemonseed is a number that varies.
gatherdogmilk is a number that varies.
wolfcumfound is a number that varies.
demonseedfound is a number that varies.
dogmilkfound is a number that varies.
Dre is a number that varies.
opcl is a number that varies.
mdl is a number that varies.
gathertaintedwool is a number that varies.
gatherspottedfur is a number that varies.
taintedwoolfound is a number that varies.
spottedfurfound is a number that varies.
Bch is a number that varies.
Ointerrogate is a number that varies.

omioquesting is an action applying to nothing.

understand "help Omio" as omioquesting.
understand "Omio help" as omioquesting.
understand "quest Omio" as omioquesting.
understand "Omio quest" as omioquesting.
understand "quest" as omioquesting.

check omioquesting:
	if Omio is not visible, say "You can't very well offer to help them if they're not here." instead;

carry out omioquesting:
	if omq is 0:
		say "You should probably talk to Omio to her know you're willing to help first.";
	else if omq is 1:
		say "[omioquest1]";
	else if omq is 2:
		say "[omioquest2]";
	else if omq is 3:
		say "[omioquest3]";
	else if omq is 4:
		say "[omioquest4]";
	else if omq is 5:
		say "[omioquest5]";
	else if omq is 6:
		say "[omioquest6]";
	else if omq is 7:
		say "[omioquest7]";
	else if omq is 8:
		say "[omioquest8]";
	else if omq is 9:
		say "[omioquest9]";
	else if omq is 10:
		say "[omioquest10]";
	else if omq is 11:
		say "[omioquest11]";
	else if omq is 12:
		say "[omioquest12]";
	else if omq is 13:
		say "[omioquest13]";
	else if omq is 14:
		say "[omioquest14]";
	else if omq is 15:
		say "'Thank you so much for helping me, but I don't have any more quests you can take on,' Omio says quietly. 'I hope you'll come by for tea later on when you have some time though.' Omio goes back to what she was doing at that point, leaving you with your thoughts.";
	else if omq is 100:
		say "You unfortunately won't be able to assist me further with my research.  The creatures don't seem to be around anymore.";


Section 1 - Demon, Wolf, Dog

to say omioquest1:
	if guy is banned or hellspawn is banned or furry is banned:
		say "Omio closes her eyes and rubs her temples of a minute, as if thinking very hard about something.  This goes on for more than a minute, making you wonder if something is wrong with the red head.  Just as you're about the touch her shoulder to make sure she's alright, her eyes pop open, startling you.  'This is most unfortunate.  It seems the creatures we are looking for are no longer around.  It's almost as if someone banished them.  I'm sorry, but you won't be able to assist me further.'";
		now omq is 100;
	else:
		say "Omio lowers her head, mumbles something to herself and then nods somewhat cautiously before returning her gaze back up to yours. 'If you will, then please bring me five samples of wolf cum, four samples of demon seed, and three samples of dog milk,' Omio asks somewhat indecisively. 'If you can manage that then I can move forward with my research and perhaps give you a reward that you may be able to use on your own journey throughout the city.' You tightly nod at Omio and then prepare yourself mentally for what's to come next.";
		now omq is 2;
		now dre is 1;


to say omioquest2:
	let wolfcumfound be 0;
	let demonseedfound be 0;
	let dogmilkfound be 0;
	if gatherwolfcum is 0:
		if carried of wolf cum >= 5:
			say "'Thank you so much for this!' Omio says as she suddenly jumps into the air and snatches the vials of wolf cum from you, almost startling the crap out of you. 'This will go a long way towards my research and development project for the overseer.' You try and ask the woman what she means, but Omio is just too excited to listen to you right at the moment as she continues to dance around.";
			decrease carried of wolf cum by 5;
			now gatherwolfcum is 1;
	if gatherdemonseed is 0:
		if carried of demon seed >= 4:
			decrease carried of demon seed by 4;
			say "I appreciate all of your efforts in working with me on this. I-I honestly didn't think you would go through such an endeavor for me.' Omio seems to choke up somewhat and from what you can see the redhead is sincere in her sorrow. 'Oh well, thank you for your troubles.' Omio walks over to hug you and then place a gentle peck on your [facename of player] head.";
			now gatherdemonseed is 1;
	if gatherdogmilk is 0:
		if carried of dog milk >= 3:
			decrease carried of dog milk by 3;
			say "'This is exactly what I need. Thank you for all of your help.' Omio looks over the collected sample of dog milk and then cocks her head back and forth while looking at the rolling white fluids. 'I should probably freeze this as soon as possible.' Omio goes off about her business and seems to flat out ignore you.'";
			now gatherdogmilk is 1;
	if gatherwolfcum is 1 and gatherdemonseed is 1 and gatherdogmilk is 1:		[complete]
		say "'Having gathered all of the materials that I need I can most assuredly say that I and the group I represent are most pleased to have rendered your assistance in advancing our cause.' Omio bows before you and then goes about lifting herself back up to stare at you with her piercing golden orbs.";
		say "     [bold type]'Because of your continued efforts I'll tell you more about our group, if you'd like.'[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if player consents:
			LineBreak;
			say "'Alright. The group who I work under is a somewhat small organization, at the moment, that is trying to make a safe enough haven of this apocalyptic world so that mutants, like yourself and I, can go about to live and work and just be despite our budding feral-like natures.' You give Omio a funny look as try and figure out just exactly what part of her is [']mutated[']. The redhead sees your roving eyes, but says nothing more about herself, instead she moves right along with her speech. 'With the world in the state it is now the military won't be able to do much other than succumb to the infection sooner or later, unless someone makes an strong enough vaccination to combat the source of the problem. But even then, if they do, so what?'";
			say "'So what if they do manage to make a vaccine? It's not a cure though. If you know them like I do then you already know that there is no cure for what's happening out there. There was never meant to be one in the first place when the infection was supposed to become wide spread, but now that it has gone underway against the desired time everyone in the military is silently aware that the new world about to be born will be one they can't do a damn thing about.' Omio seems to grow dire with her words and soon starts to circle around the room. Unlike before, however, when the redhead was [']pulling your chain['] now you get the feeling that something much more calamitous is coming underway. And when next she speaks your fears and concerns are made real.";
			WaitLineBreak;
			say "'As more and more mutations come into being there's a strong possibility that a new world war might flare up between the humans that are left [']uninfected['] and those mutants who won't accept being treated as a second class citizen. You've seen and heard of the civil wars fought before, well those will be nothing compared to what happens when a group of ill-tempered renegades stir up a small group and really bring things to a head with both guns and tempers blazing out of control. Just imagine it - and entire group of wolves, lions and the like all marching together against a greater number of humans.' The picture that comes into your mind is a spooky one, but not one that's unfeasible. 'Even if the remaining humans managed to survive an onslaught like that what kind of precedence will this set for those not taking part in the conflict?'";
			WaitLineBreak;
			say "'The people I support fear that this might happen, a [']them versus us['] kind of race war, so in hopes to nip such a thing into the bud [italic type]we[roman type] need to gather as much data as we can on the mutations running around now and build up a strong understanding of the biological, mental, and emotional needs of these new mutants. Its only in this way can we build up a strong enough foundation to work with the newly formulating government to set both laws and settlements where those mutants unable to intermix with the rest of the general public will be able to find a place to call home. I don't mean a reservation, I'm talking about maybe turning half the country over to my organization and making it a free state of mutants, if need be.";
			WaitLineBreak;
			say "'The ferals aren't going to go anywhere anytime too soon, but we can't just let them run free forever.' Omio sighs heavily as she sits herself down onto her sofa. Looking over the somewhat tired redhead you get the feeling that the conversation is over with. Though all of this information is rather much to take in, it does explain certain things about the future to come. Maybe helping Omio out more with her research will benefit everyone involved? Only time will tell. 'Anyway.' The redhead gets up and then cheerfully smiles at you. 'You've done your work for me, so here are some gifts for you. Take them with my thanks.'";
		else:											[need more]
			LineBreak;
			say "'Oh, ok.' Omio shrugs, but doesn't seem all that hurt by your lack of interest in what she knows. 'Anyway.' The redhead cheerfully smiles at you. 'You've done your work for me, so here are some gifts for you. Take them with my thanks.'";
		increase carried of water bottle by 1;
		increase carried of food by 1;
		increase carried of chips by 1;
		increase carried of soda by 1;
		extend game by 8;
		increase score by 50;
		now omq is 3;
	else:
		say "'Now remember, I need you to locate several samples for my work.  To start my work, I am in need of five samples of wolf cum, four samples of demon seed and three samples of dog milk.  You should be able to find those back in the city if you look around for them.  As for the reward, we can talk about that after we're finished.";
		if gatherwolfcum is 0:
			if wolf cum is not owned:
				say "'Please remember that I need those samples as quickly as humanly, or else in this case, possible. I know you have other things to accomplish, but time is really working against us and all,' Omio says with a calm, but commanding tone while watching you with her golden eyes shining pointedly into your face.";
			else:
				say "'You don't have quite enough wolf cum at the moment, but I do commend you ability to gather what I need in spite of everything that's going on here in the city.' Omio smiles at you and then gives you a playful wink. 'I need five samples in total.  Good luck on your quest, [if cunts of player > 0]gorgeous[else if cocks of player > 0]handsome[else]my friend[end if].";
		else:
			say "Now, you've already taken care of the wolf cum, so you can focus on the other stuff on the list.";
		if gatherdemonseed is 0:
			if demon seed is not owned:
				say "'I know that it might be a little dangerous to ask you to face off against demons and the likes, but I really do need the full number of those samples, ASAP. If I remember correctly then there were reports of demons infesting the sewers of that big mall within the city. What was its name again?' Omio pauses for effect and then actually puts a finger underneath her chin to think about it. 'You know what... I don't think I actually remember. Was it south-something? Or was it Smithhaven? Or maybe Sicily?";
			else:
				say "'I need you to gather even more of their demonic seed for my work.  I will need a total of four samples from those creatures.  I know facing off against them is asking quite a bit, but as you've seen, they're not quite as tough as they look.  They are beings created partially of fear and lies, and so those with enough bravery and strength of will are able to beat their physically imposing forms.  Remain confident and you will continue to prevail against them.";
		else:
			say "With the demon seed taken care of, you can check that off the list of items.";
		if gatherdogmilk is 0:
			if dog milk is not owned:
				say "I know this might be a little strange a request, but please don't try and milk any old dog to bring back it's juice.' Omio giggles slightly. 'What I need is the milk of the mutant collie that's walking around town that stands about twelve feet tall in height. She's really not too hard to miss, but she can be somewhat elusive when she wants to be. Please find and bring me her milk so I can analyze it.'";
			else:
				say "'I see you found the collie in question, I hope she wasn't too rough on you. She can be kinda frisky, but she honestly doesn't mean any harm.' Omio seems to snicker at this and you have to wonder just if the redhead knows the mutant in question.";
		else:
			say "You've gotten enough dog cum for me, so you can worry about the other remaining samples.";



to say omioquest3:
	say "Going to speak to Omio you find yourself jumping out of your [skin of player] when a sharp noise out in front catches onto the edge of your hearing. A flash of red and blue shoots pass you and before you know it you're heading outside to see what the commotion is on about. What you find when you get outside is Omio screeching as the redhead kicks the furry hides of several prairie dogs that have happened into her garden. Her smooth and polished moves make the researcher look somewhat graceful as she sharply attacks the burrowing mutants digging up her plants, but the ferocity of her movements is almost scary to watch.";
	say "From the way Omio is going about her business it would seem as though she's had to deal with the rodents trying to take bits and pieces of her garden before. With viper like quickness the redhead expertly grabs the furry critters by the neck when they pop out of their little hiding holes and then literally gives them the boot to send them back across the plains. Not wanting to get in the other's way you watch for several minutes as Omio displays a certain level of ferocity you wouldn't have expected out of the normally playful, if not somewhat silly, researcher.";
	say "Right up to the point when you notice more prairie dogs coming inbound towards you.";
	Repeat with x running from 1 to 5:
		challenge "Prairie Dog";
	say "When the lasts of the little furry pests are gone you walk over to Omio to check on the redhead to.";
	if the facename of player is "Prairie Dog":
		say "Turning to have a look at you Omio screams from where she is on her knees checking over her herbs and vegetables. Trying to reassure the redhead that you are you and not a feral prairie dog, despite your [facename of player] face staring at her, Omio seems not to believe you as she swiftly sends a savage uppercut towards your chin.";
		if strength of player < 25:
			say "Omio's attack is so great that you are lifted up off of the ground and then sent hurdling through the sky back towards the city as pain screams throughout your jaw. Feeling your body floating as light as a feather you find yourself looking down at the world below as you slowly sail past the plains. Blinking and then gazing down you find that the grassy knoll is kind of beautiful from this distance, though you'd never have thought that you'd see it in this sort of way before, and for a moment you feel your breath catch into your throat as you take a new appreciating of the world beneath your feet.";
			WaitLineBreak;
			say "Floating, or rather flying as you are, isn't so bad, you come to realize, however that though soon gets put on hold as you notice your path leading you directly into a flock of wyverns. Trying to angle your body to stop you only succeed in making the situation worse as impact head-on into one of the flying scalies.";
			say "Slamming into one of the wyverns both you and the flying reptile squawk in pain at your star-crossed gathering. However, the worst part doesn't exactly come until two seconds later when you and your impromptu mount end up spiraling down onto the ground when the wyvern loses its focus and forgets to flap its massive wings on a coming updraft. Screaming as the ground hurriedly grows larger in front of your eyes, you hang on to your traveling companion in vain hopes that you'll at least survive the jarring impact you know is coming.";
			if a random chance of 2 in 5 succeeds:
				say "Thankfully the wyvern ends up breaking both of your falls as it crashes onto a large truck. Well more so for you than the reptile because by breaking your fall the flying scalie has given you the time to both to collect yourself and then jump off of its backside, once your head has stopped ringing that is. Deciding that this adventure is over for today you hurry on your way back to your bunker at top speeds. Good thing to because five seconds after you start to beat feet several of the fallen wyvern's companions are flying overhead to have a look-see over at their dazed and slightly moaning cohort.";
				decrease HP of player by 15;
				Move player to Bunker;
				extend game by 8;
				increase score by 15;
				now omq is 4;
			else:
				say "Thankfully enough, for the wyvern at least, the reptile is able to spin around and then right itself to jumpstart flying once again before it can hit the ground. Sadly for you however, you end up being dislodged when the other does its inconvenient barrel roll. Yelping and then slamming your eyes shut in hopes that death with be quick you find yourself gasping in pain when you finally hit the ground. Or rather, when you hit an opened truck full of...sand? Blinking and then coughing up a storm as plume of dirt rains down over the top of your face you find yourself cocking your head in slight confusion when you realize that - yes - you are indeed inside of the back of a large truck filled with...sand.";
				WaitLineBreak;
				say "A fit of giggles come over you without your permission and soon you lie back into the truck and then roll around in the sand as you think about how ironic this all is. That is, right before you notice several dark forms hovering above you in the sky. Your laughter almost turns into sobs when you note that the [']dark forms['] looming over you happen to be the large flock of wyverns from before. The large collective of winged reptiles seem particularly [italic type]incensed[roman type] about you having hurt one of their own and now wish to display their displeasure with you.";
				Repeat with x running from 1 to 5:
					challenge "Wyvern";
				say "After dealing with those pest, and then wiping their gunky slime-like mucous down from off of your body, you decide that today's adventure is over and that it's time to head for home. Though oddly enough, you manage to procure some bottles of water from the ground beside the truck before you go.";
				increase carried of water bottle by 2;
				Move player to Bunker;
				extend game by 8;
				increase score by 25;
				now omq is 4;
		else:
			say "Omio's attack sends you reeling back from an instant K.O. and soon stars are popping out in front of your eyes as darkness covers you vision. The last thing you hear before unconsciousness kicks in is, 'Why in the hell are these things continuously bothering me!? I'm so going to make a [bold type]shock[roman type] device for these pests. Forget about being nice!'";
			decrease HP of player by 100;
			if HP of player < 1, now HP of player is 1;
			extend game by 8;
			increase score by 10;
			now omq is 4;
	else:
		say "'GODS!!!' Omio yells while shivering and rocking herself slightly. 'I can't stand those little pests! One of these days I'm going to create a super rodent killing machine and then let it go to town wiping out every last vegetable eating pest I can find on this stupid planet! Omio begins to rant more and more and quickly you get the feeling that maybe leaving would be a good thing to do before her ire finds its way centering on you. Taking your leave you notice several peaches on the ground at your feet and quickly move to pick them up while heading off. Lucky!";
		increase carried of tasty peach by 3;
		extend game by 8;
		increase score by 15;
		now omq is 4;



to say omioquest4:
	say "Try to get Omio's attention you find that the redhead researcher is almost completely ignoring you as she resolutely taps her fingers along the keyboard of her computer while going over whatever work she's doing at the moment. 'Hold on, I'm looking for something.' Figuring that the redhead is not about to give you the attention you desire you head over to her sofa and then flop down onto the beige cushions in order to make yourself comfortable. Cuddling up to your backpack and looking out to the open patio door allowing the warm winds of the plains to flow into the room you find yourself slowly closing your eyes.";
	WaitLineBreak;
	say "'And so I need you to make sure that these samples arrive into the hands of the director as soon as possible, is that understood?' Omio's voice reaches out to you in your haze of sleep. You want to rise and ask what's going on, but you're suddenly just too tired to fight off the need to sleep. 'And what of this one?' Another voice, this one unfamiliar to you, asks[if cocks of player > 0]. 'He's my pet project. He's not to be touched or harmed by any of your operatives, else they deal with me personally[else if cunts of player > 0]. 'She's my pet project. She's not to be touched or harmed by any of your operatives, else they deal with me personally[end if]. Am I clear, Siegfried?' Omio growls with a rumble strong enough that small fixtures tremble around inside of the room while she taps her foot impatiently across the floor.";
	WaitLineBreak;
	say "'Crystal.' The last you hear of the other, before darkness and unconsciousness takes you back into its embrace, is the sounds of shoes stepping off from the hardwood floor and then crunching onto grass before. When next you wake Omio is typing away on her computer with the same focused intensity she had been using before you fell asleep. Trying to converse with to the redhead only nets a grunt of mild irritation from the female.";
	say "Not seeing much else you can at the moment you decide to take your leave. Maybe she'll be in better spirits later on. Perhaps she might have [bold type]something special[roman type] for you later on as well.";
	extend game by -2;
	increase score by 3;
	now omq is 5;



to say omioquest5:
	say "Hey, I need you to do me a favor today.' You take a sudden step back at the forwardness of the red head, but nod all the same as Omio gazes straight into your face. 'I need you to pick up a package for me from someone in the [bold type]red light district[roman type]. Don't worry,' Omio stops you before you can start to ask anything with a raised hand. 'It's just some supplies and equipment that I need from a black market dealer. She's waiting for you somewhere near the Aussie pub near the downtown red light district, so could you please go and get them for me.";
	WaitLineBreak;
	say "The package that I need is very [bold type]important[roman type] to me so I really need those things. Like, yesterday.' Omio looks to you with an almost demanding glower in her gold eyes and quickly you get the message that it's time to be off. Though a part of you wonders what she could need so badly, you figure that you'll find out when you hunt down this mysterious woman. Wait, what does this person even look like again?";
	WaitLineBreak;
	say "Asking Omio about the woman you are supposed to be meeting up with you watch as the redhead stares at you blankly. Sighing and then reminding her about your task you watch as the information almost literally crosses her eyes before it stops in her brain. 'OH!! Uhm, sorry, I...hehe,' she flusters and you silently count to five before breathing sighing. 'The woman you are looking for is a blonde with a scar over her nose wearing a white hoodie. She should be easy enough to spot since she's probably still very much human. Oh, and she's in the red light district.' Omio cheerfully says, but you get the feeling she may have totally forgotten about the assignment she just asked you to take on. What a scatter brain!";
	now opcl is 1;
	now omq is 6;


to say omioquest6:
	if omq is 6:
		say "Remember, I need you to head for the [bold type]red light district[roman type] and pick up that [bold type]important[roman type] package for me, ok? Omio asks with a serious look on her face. It would seem that whatever this package is the redhead needs it somewhat badly.";
	if omq is 6 and Ointerrogate is 1:
		say "'Huh? What do you mean the police stopped you while you were looking for my package handler?' Omio asks and you tell the redhead exactly what happened while you were out in the city. 'Really? That's...not very surprising.' You wait patiently for Omio to explain herself. A minute later you grunt into the pit of your throat when no answer is forthcoming. It's only when the other looks at you nervously that she chuckles and then coughs in preparation to speak. 'Well you see, the person you are looking for, well, she just so happens to be wanted for murder.";
		say "Your brain actually stops at that point and Omio uses your mental pause to go right on speaking. 'You see, the blonde in question, whose name I always forget, happens to be wanted throughout both the states and some other countries for suspected smuggling and a few unsolved murders. I know for a fact that she's innocent of the latter, but her mysterious nature, and bad timing, has gained her a rap sheet almost ten miles long. Most of it would be thrown out in court by a decent lawyer, but at the same time she's always on the run from the police so she can never get into court to have this nonsense throw out.' Omio giggles nervously as your left eye begins to twitch.";
		WaitLineBreak;
		say "'Don't worry, if you just go and pick up my package then all will be well. You have nothing to do with her, on either a personal or business level, and the police are idiots for even trying to sequester you for information since you, technically, don't know anything relevant about the blonde.' You let Omio know that you don't appreciate being dragged into all of this. 'I know, and I'm sorry, but you're the only one who I can ask. So please,' the redhead says, taking your hand and then staring up at you with shining golden eyes that seem to grow moist all of a sudden, 'do bring back my package for me.'";
		say "You remove your hand from the redhead's grasp when her eyes start to flutter and then ask her why she wants the parcel so badly. 'It's filled with chemicals and other materials I need for my experiments,' Omio says offhandedly. 'Most of them are illegal to ship into this country and the blonde is the only one who can supply what I need. So, it's kinda vital that I get them ASAP, else my experiments might come to a screeching halt!' Omio playfully smiles before winking at you.";
		say "Why are you friends with this crazy woman again?";
		now Ointerrogate is 2;
		increase score by 6;
	if omq is 6 and lumpy box is owned:
		say "'Oh!! Thank you so much!' Omio takes the offered package and then quickly darts off into her room to check over it. Too tired to bother chasing after the redhead you simply move over to Omio's sofa and then crash onto the soft cushions. Minutes later find Omio coming back out of her room and then dancing around merrily while humming somewhat upbeat into the pit of her throat. Turning to look at you the redhead can't help but grin like a lunatic as she comes over to sit down next to you.";
		WaitLineBreak;
		say "You'll never know how grateful I am for all of this, but I do so seriously appreciate all you have done for me! Those chemicals will keep me going for a long while to come and my reports will be perfectly documented and written now that I have the parts to upgrade my laptop with! 'Omio cheerfully smiles at you and you can't help, but not passively at the other woman. 'What's wrong? You seem kinda beat.' Giving the redhead a [italic type]look[roman type] you recap your adventure with the blonde and the two lizards. 'Really? That's...peculiar.'";
		say "Getting up and then stretching you figure that maybe it would be a good time to get going. Especially if the somewhat narrowed eyed look the other woman is giving you says anything about her current mood.";
		WaitLineBreak;
		say "'Oh before you go, I just wanted you to know I'm going to be working on a big [bold type]alchemy[roman type] project soon so be on the look out to help, if you feel the need to come around, that is.' Omio shyly smiles at you while saying this and you groan slightly before sighing.";
		delete lumpy box;
		increase carried of water bottle by 1;
		increase carried of food by 1;
		increase carried of tasty peach by 1;
		extend game by 8;
		increase score by 25;
		now omq is 7;



to say omioquest7:
	say "Just as you are about to speak to walk up to speak to Omio a somewhat loud explosion throws you back against the patio door of the research studio. Grunting from the waves of pain spiking through your body after you hit the glass you slam your eyes close just in time to miss the miasma of black smoke rushing into your direction. Enveloped by darkness and slightly injured you find yourself getting to your feet somewhat shakily as you call out for Omio. Fanning the front of your [facename of player] nose as the scent of burnt [']feline?['] has you sneezing in reflex you call again out for the red headed before taking a hesitant step forward into the smoke. When glimmering golden orbs shine directly in front of your face a moment or two later from inside the large gray cloud of soot and ash you freeze. 'Yes? Is everything alright?' The cool tone in the other's voice has you backing up some as Omio suddenly sounds very...different...for some reason.";
	WaitLineBreak;
	say "Informing the other that you worried about her and wanted to know if she was still alive, Omio chuckles at you before she sweeps her hand in front of her golden eyes to dispel the black smoke away from her face. Like magic...and mildly you wonder if that is exactly what it is...Omio bats the clouds of darkened smoke out of her house through the open patio door and the chimney, respectfully. A small gale rips through the living room area a second later and soon you and the redhead are standing face-to-face in a...slightly...disarrayed household. 'Now then maybe that will make it better for you to see me, wouldn't you agree?'";
	WaitLineBreak;
	say "You're not sure what to say to the redhead as you simply blink in confusion. Wasn't she just in the middle of a large explosion? From the looks of the researcher you don't see anything out of place on her, well save for her blue Chinese dress being somewhat dirty. Trying to open your mouth to ask Omio how she just did what she did you get a raised hand and then a single wag of a tanned finger. 'Don't worry about the little things right now.' The redhead smiles before winking. Obviously she must be okay because her former teasing mannerisms have returned. 'So what can I do for you today?'";
	WaitLineBreak;
	say " Shaking your head and regaining your wits you ask Omio if there was something you could do to help her clean up the place, as you have totally forgotten why you have come to see her in the first place. Omio hums pensively to herself at your open offer. 'Well, you know I could use some more materials now that I've wasted my own on my little failure of a [']project[']. Do you think you could do go out and bring me back several pieces of spotted fur from the Leopardmen running around the high rise district and some tainted wool from the rams that should be running around outside of that bunker of yours? Five pieces of material former and three from the latter would be just perfect.";
	WaitLineBreak;
	say "You find yourself nodding and turning to fetch what the other had just asked for, but before you can take too many steps you stop dead as you go over what Omio said. Whipping back around you ask the redhead how she knew about the bunker where Trixie and your pets are currently being safely kept out of harm's way, you find Omio waving you off somewhat impassively. 'I know everything there is to know about the people I deal with. I couldn't be a successful researcher any other way.' The flippant air coming from off of Omio has you narrowing your eyes at the red head. Again, that strange feeling that you need to be careful around the woman surges up throughout you.";
	say "However, gathering the materials Omio has requested is more important...for now...than worrying over the golden eyed woman.";
	now omq is 8;


to say omioquest8:
	let spottedfurfound be 0;
	let taintedwoolfound be 0;
	if gatherspottedfur is 0:
		if carried of Spotted fur >= 5:
			say "'Well, aren't you a dashing hero, collecting this fur from savage leopards at the behest of a fair maiden.' Omio teases you and you find yourself blushing from the compliment... at least, you think it's a compliment. The look in the other's golden eyes seem to speak somewhat differently though.'";
			decrease carried of Spotted fur by 5;
			now gatherspottedfur is 1;
	if gathertaintedwool is 0:
		if carried of tainted wool >= 3:
			say "I appreciate all of your efforts in working with me on this. I-I honestly didn't think you would go through such an endeavor for me.' Omio seems to choke up somewhat and from what you can see the redhead is sincere in her sorrow. 'Oh well, thank you for your troubles.' Omio walks over to hug you and then place a gentle peck on your [facename of player] head.";
			decrease carried of tainted wool by 3;
			now gathertaintedwool is 1;
	if gatherspottedfur is 1 and gathertaintedwool is 1:		[complete]
		say "[bold type]The next bit of text is kinda long. You can skip it if you'd like. (Y=Skip, N=Read)[roman type]";
		if player consents:
			say "Omio gabs at you about the past and future and what not but you're not really paying attention. You do thank after she hands you your new gear though. It never hurts to be polite after all.";
			now carried of leopard suit is 1;
			extend game by 8;
			increase score by 20;
			now omq is 9;
		else:
			say "'Omio nods to you in a calculated manner as she takes the materials off of your hand and then moves over to the cauldron she always has boiling inside of her fireplace. 'Thank you so much for this, because of you I can now create the thing that I was trying to craft earlier.' Asking her what she is planning to do with the fur and wool your eyes widen in some confusion as the redhead nonchalantly dumps the fur and wool into the steaming broth of pinkish-purple liquid that is bubbling inside of her cauldron. 'It might not be very scientific, but watch this.";
			WaitLineBreak;
			say "You remain silently transfixed by the vision you are seeing as Omio takes a wooden ladle and then plunks it into the pot to start stirring the contents around. From what you can see the tainted wool and spotted fur seem to be mixing together like spices being put into a soup, but that couldn't be possible, right? When a vial filled with crimson fluid suddenly floats over to the redhead your mouth is about ready to drop.  Watching Omio as she looks over the liquid and then uncorks the vial before dumping the crimson solution into the cauldron you smile with almost child-like glee as the pinkish-purple pool the redhead poured the liquid into immediately transforms the mixture to a sickly green colour.";
			WaitLineBreak;
			say "When a strange smell begins to billow up from the strange green concoction you find yourself sneezing as the musky and sharp scent of feline suddenly brushes across your nose. It's not long after that that white smoke fills up the area around Omio. Within minutes of stirring the mixture you find yourself chuckling as Omio lets out a beautifully annoying chirp as she looks over the fur and wool flowing together to become one large mass. Returning your gaze to the brew you find your jaw almost hitting the floor when you see Omio pull out a large mass of...[']spotted cotton[']!";
			WaitLineBreak;
			say "'Finally! This is proof that we can synthesize new fabrics and other substances from the infected hides and pelts of other mutants,' Omio says matter-of-factly. Quietly you ask the other why she needed to obtain this information. Because by the time the situation here in the city is resolved, or at least contained, I don't think that there will be many natural based resources available on earth that the average person will be able to keep covering their bodies without becoming infected.' Omio seems to grow solemn at this point.";
			say "'Think about it, you got this material from an infected sheep, now imagine what would happen if/when a farmer that supplies cotton to a large industry lets his herd become tainted without his knowledge. Baring the fact that the new mutates will probably let the farmer in on the secret once they screw him/her while the other's not looking to make them join the herd, what do you think will happen if steps aren't taken to check over a shipment of infected cotton in order to neutralize the virus?'";
			WaitLineBreak;
			say "Omio moves on before you can think to form up a coherent thought to the problem. 'That's hundreds to thousands of pounds of cotton that could have a ram/ewe viral strains on them. If that gets out to a country that's not fully vaccinated then that's thousands to maybe even millions of people that could end up growing sheepskin and hooves before anyone knows what has happened. There's no way that that can be allowed to happen.' Omio pauses before continuing her lecture. 'You have to realize that the clothes you wear absorb both sweat and skin cells whenever you put them, so looking at it from that perspective you can say that you are basically re-infecting yourself again and again every time you take something off and put it back. It's just that, usually, a certain strain of the virus is so strong in one person/creature that unless you have gained the ability to withstand infections you're constantly being physically changed on a molecular level as you go about your day.'";
			WaitLineBreak;
			say "'However, with the city in the state that it is in not too many people are really running around in clothes right at the moment, save for the military and maybe a few select others. Unless portable microwave units, or something close enough to it, become standard everyday tools then any contact with something infected, even if it washed, will have the possibility of transforming an untreated person into one of the infected. So, imagine if you will, millions of people possibly not being vaccinated in the future -- for one reason or another. That opens up the possibility of new strains of viruses being born right underneath the noses of the various governments of the world.'";
			say "     [bold type]Looking to the large clump of material dripping dry on the wooden ladle Omio is holding up you feel as though you should ask her something, but what exactly?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Past.";
			say "     ([link]N[as]n[end link]) - Future.";
			if player consents:
				say "Seeing that Omio's mind is somewhat accommodating you ask her about the past, specifically about if something like this happened before. 'Once, though it was only supposed to be a test, just a harmless test.' The redhead answer quietly. 'An experiment was run on a small group to see how they would handle the introduction of a new strain of genetic code into their own primitive bodies.' Omio chuckles all of a sudden. 'I suppose you could say that things turned out well since the mutations that were born were everything that we could have hoped for, however, as a consequence to this, the test subjects all ended up with tails, claws, fangs, and the instincts of predators didn't help them to flourish in their own world after the changes became...permanent.'";
				WaitLineBreak;
				say "You ask Omio which part of the world this unknown testing happened at some unknown time ago. You're not prepared for the redhead's answer, 'Which world are you talking about because there were more than a few that got...[bold type]genetically modified[roman type] in the past.";
				WaitLineBreak;
				say "'Don't worry about it, just know that previous events won't be repeated if I have anything to say about it. If you give me some time I'll go over and work on this material to make it into something useful for you. You could so with some decent armor and all. Or maybe you could do with a nice loincloth to cover your lower [bodyname of player] body with. It would be something sexy to tease a certain mythical equine you've shagged before while strutting your stuff around in front of him.' You find cocking your head to the side in confusion before you suddenly recall Omio's quest for you to gain a unicorn form.";
				say "Omio moves away from you, pulling the lump of spotted cotton with her, and then goes about her way to tailor the material into a piece of armor for you. Idly you wonder what she'll make.";
				now carried of leopard suit is 1;
				extend game by 8;
				increase score by 20;
				now omq is 9;
			else:
				say "Asking the redhead about the future you watch as a tiny smile blossoms onto Omio's tanned face. 'It's my hope that the Prometheans will be able to do much better with my research than what the government tried to do. I [bold type]pray[roman type], and I don't usually pray for a lot, that their leader will have the wisdom and intelligence to know how to deal with this situation to turn it into something that will benefit everyone instead of just a select few.' Omio snorts as though in vexation about something. 'Though, then again I might be getting my hopes up for nothing. Not that this would be a first for me.' The redhead shrugs. 'But what can I say, I'm a hopeful idiot.";
				WaitLineBreak;
				say "Tentatively you ask Omio what she means by that, but find yourself blinking in confusion back when the redhead starts laughing all of a sudden. 'My, my, aren't we the curious one. Do you really think I'll give away all of my secrets? Any who, if you give me some time I'll go and work on this material to make it into something useful for you. So please, just give me a little time.' And with that the other beats a hasty retreat to her bedroom to begin working.";
				now carried of leopard suit is 1;
				extend game by 8;
				increase score by 20;
				now omq is 9;
	else:
		say "'I know that I just asked you to go on a hunting missing for me, not more than a couple of days prior, but I do need those materials for my research.";
		if gatherspottedfur is 0:
			if Spotted fur is not owned:
				say "'Remember, [']five spotted fur['] in the high rise district. Fix it into your memory. A little ditty about both will help if all else fails. What do you know that rhymes with fur?' Omio asks honestly while tilting her head to the side.";
			else:
				say "'Not quite enough spotted fur, but I love you working so hard for me.' Omio giggles shyly while batting her golden eyes at you. You silently wonder if it is alright to feel nauseated by the redhead's display of femininity.";
		else:
			say "'Spotted fur acquired captain!' Omio chrips. 'Now for the wool. I think there are supposed to be sheep somewhere at a certain store in the city? New Eve...or was it Evelyn? Or something. Omio cocks her head to the side while contemplating deeply. Sometimes you have to wonder if she's being serious of facetious with you when she does this clueless acting thing of hers.";
		if gathertaintedwool is 0:
			if tainted wool is not owned:
				say "'Remember, the rams would be at the New Ewe Store. Gonna catch a few of them for me, right?' Omio produces a small red and black ball from somewhere and then tosses it over your head. You don't even bother to look to see where it goes as you suddenly just want to get the hell away from the crazy red head.";
			else:
				say "'Baa, baa black sheep have you anymore? No, sir. No, sir. Just a few bits more!' Where Omio got that leotard she wearing from you're not sure and truly you don't want to know, especially as she jingles those pompoms in front of her.";
		else:
			say "'Wool acquired! So you don't have to worry about sheering anymore sheep for me.'";



to say omioquest9:
	say "'OK, so here's the deal,' Omio speaks up out of the blue just as you cross the threshold into her home. 'At present I have all of the materials needed to make some really nifty items here within the studio, however, I don't have an [']energy conduit['] necessary to transmute the raw bits and pieces into suitable alchemical compounds and reagents.' The redhead says as if you had a clue about what she's talking about. 'While I could make a conduit from scratch that would take days and personally, I just don't want to waste that kind of time since I've already found one here within the city.' A bad feeling slowly creeps its way down your spine as you look at the Cheshire smile growing on Omio's tanned face. Would the redhead really ask you to...";
	WaitLineBreak;
	say "'Somewhere within the museum,' Yep, she would. 'there's a certain artifact that bears the pattern of a serpent coiled around itself and biting at its own tail crafted onto the front of a bronze amulet. I need you to retriever this medallion for me, by either fair of foul means. I don't particular care which, just please bring me back that [italic type]objet d'art[roman type],' Omio says while placing both of her hands onto your [bodyname of player] shoulders and then grips you somewhat tightly as if to stress her point.";
	WaitLineBreak;
	say "Hesitantly nodding to Omio you watch as the golden eyed redhead smiles to you and then releases your shoulders before turning you around to send you off on your way. In the back of your mind you kinda find it ironic how with the world going all to hell how larceny is becoming somewhat commonplace for you.";
	say "'Oh and before you go,' Omio stops you midway as you head for the patio door. 'The amulet would be listed under the name [bold type]Ouroboros[roman type]. If that helps any.' Nodding to Omio you throw two fingers up and then wave to signal your departure.";
	now mdl is 2;
	now omq is 10;


to say omioquest10:
	if medallion is not owned:
		say "'Please retrieve that medallion, the [bold type]Ouroboros[roman type], for me. I should be in the museum...unless someone has already stolen it.' Omio nibbles on the end of her fingernail as she says this.";
	else:
		say "The squeal Omio let's out upon seeing you holding onto the medallion is almost enough to make your ears hurt as the redhead's scrambles over to you and then gently takes the artifact she had so requested off of your hands. 'Thank you so much for this! Now I don't have to go through the effort of trying to craft one of these relics for myself.' Omio rubs the bronze metal against her tanned face and for a moment you almost think that you can see her golden eyes spark with an electric-like glow.'";
		say "'Thank you again. This will be a big help for me.' Omio looks to you with a smile that speaks of something you're not quite sure of as golden eyes seem to gleam almost like stars from within the redhead's face.";
		say "     [bold type]'Now then, to pay you back I can give you some more information on the organization I work for, if you'd like?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if player consents:
			LineBreak;
			say "'Alright.' The air grows heavy between you both as Omio walks over to her sofa and then pats the cushions for you to join her. Following after the redhead you listen as the redhead begins to talk without a hint of her normally bubbly attitude colouring her words. 'As I've already said once or twice before, the people I work for are in the midst of making a place where mutants who feel that they can't live in the ordinary world any longer can go and be who and what they are with intolerable restraint. This might not seem much to you right now, but consider this point somewhat carefully: with the way the humanity is now do you think that you'll be happy living as somewhat of an outcast to [']normal['] people?'";
			if humanity of player > 45:
				say "The scathing look you give the redhead doesn't seem to faze Omio as she shrugs at you somewhat uninterestedly. 'Think what you will, but you're a mutant now. Whether you like it or not, you will no longer be seen as a regular [']person['] anytime to soon by either the military or the new administration formulating where the old government has fallen in the wake of this changing world. That being the case of things me, you and everyone else not considered a human will have to try to reintegrate back into normal society. However, what if we can't? What then?'";
				WaitLineBreak;
				say "'What do we do when/if the time comes that the reigning governing body of the country says [']you're not good enough for us so you need to leave[']? We could possibly pack up and move somewhere else, or we could stay and fight for our rights, but with the laws as they would they even apply to creatures like us? Would the legislation of the states even protect us if push comes to shove? And if not, then what?' Omio seems to be speaking more to herself than you right about now.";
				say "'With the way things are going with the media portraying those here in the city like some kind of debased vagrants with no sense of morality or consciousness, and I know this because my organization is carefully monitoring all forms of news broadcasts, regular people who don't know anything of what's happening are going to get...confused by the situation. Knowing this and knowing of how hostilities have been in the past towards those who are [']different['], are you really ok with living in a world where you are looked down on by the very people you once considered yourself part of?'";
				WaitLineBreak;
				say "'You don't have to answer right now, but just listen. My organization, the Prometheans, are working to try and make sure that everything will be okay in the end for us. We've got wealth enough to both shelter, feed, and educate new mutates as well as facilities where we can hone our individual skills and abilities to better prepare those just coming into the world so that they can understand how to deal with both the humans and mutants around them. In the case of the rapid increase in mutates being born out of wedlock between individuals who may not even be ready to deal with the responsibility of parenthood, someone has got to shoulder this burden.";
				say "With the collapse of the former government and rise of such a concepts like individual responsibility, something this country has been rather weak at fostering in the past, we have to be ready for both the mental collapse of minds not ready to cope with such burdens and those who are not emotionally stable enough to stand up and take care of themselves.'";
				WaitLineBreak;
				say "'For now though,' Omio says catching you just as you are about to go too deep into your own thoughts. 'Don't worry about it. Just know that there is a going to be a safe enough haven for you to go, if you feel that the world is becoming too much, provided that you are willing to do you share enough to help out the collective whole.' Omio glares at you while saying this. 'We're not running a charity site for people looking to just get over, we're running a place where everyone helps everyone else. All for one and one for all, as you could say.'";
				say "Anyway.' The redhead smiles and then giggles in her normal girlish way. The heavy air around the room from the previous conversation is now dispelled in the face of a more uplifting feeling. 'Thank you for helping me out just now. I'm going to be working more on my experiments so please, continue to help me out as much as you can. It will go a long way towards making this so much better for everyone involved.' Omio winks and you breathe out a sigh of disbelief at the golden eyed woman's sudden personality flip.";
			else:
				say "You smile lustfully to Omio while coyly asking her what's so wrong with that? 'I see someone is succumbing to their licentious nature, you may want to take care of that before you end up somewhere in the park rutting with skunks.' Omio advises while rolling her eyes towards the ceiling. You only chuckle at the other before asking her to continue with her story.";
				say "'Anyway...with the way things are going with the media portraying those here in the city like some kind of debased vagabonds with no sense of morality or consciousness, and I know this because my organization is carefully listening to certain broadcasts, regular people who don't know anything of what's happening are going to get...confused by the situation. Knowing this and knowing of how hostilities have been in the past towards those who are [']different['] are you really ok with living in a world where you are looked down on by the very people you once considered yourself part of?'";
				WaitLineBreak;
				say "'You don't have to say anything, but just listen. My organization, the Prometheans, are working diligently to try and make sure that everything will be okay in the end for those like you and me. We've got wealth enough to both shelter, feed, and educate new mutates as well as facilities where others can hone their individual skills and abilities to better prepare those just coming into the world so that they can know how to deal with the people around them. And in the case of the rapid increase in mutates being born out of wedlock between individuals who may not even be ready to deal with the responsibility of parenthood, someone has got to shoulder this burden.";
				say "With the collapse of the former government and the rise of such a concepts like individual responsibility, something this country has been rather weak at fostering in the past, we have to be ready for both the mental collapse of minds not ready to cope with such burdens and those who are not emotionally stable enough to stand up and care for themselves.'";
				WaitLineBreak;
				say "'For now though,' Omio says catching you just as you are about to go deep into thoughts of [if cocks of player > 0]nice juicy cunts dribbling with sweet honey[else]hard and thick cocks leaking pre cum like slow flowing rivers[end if]. A tea kettle smacks you across the head all of a sudden. 'Don't worry about it. Just know that there is a going to be a safe enough haven for you to go, if you feel that the world is becoming too much, provided that you are willing to do you share enough to help out the whole.' Omio glares at you as the tea kettle rolls on the floor back into the kitchen. 'We're not running a charity site for people just looking to get over on someone else. We're running a place where everyone helps everyone else. All for one and one for all, as you could say.'";
				WaitLineBreak;
				say "Anyway.' The redhead smiles and then giggles in her normal girlish way signifying that the conversation's focus has now changed. 'Thank you for helping me out just now. I'm going to be working more on my experiments so please, continue to help me out as much as you can. It will go a long way towards making this so much better for everyone involved.' Omio winks and you breathe out a sigh of disbelief at the golden eyed woman's sudden personality flip.";
				decrease HP of player by 10;
				if HP of player < 1, now HP of player is 1;
		else:
			LineBreak;
			say "'Alright.' Omio giggles good-naturedly. It seems the redhead is not bothered by your lack of interest in her people in the slightest. Maybe that's proof she trusts you? Or maybe not? 'Any who, thanks for all of your hard word. Please, accept these as a gift for all of your trouble, my sweet little bandit in disguise.' The thought of your past caper makes you roll your eyes to the ceiling.";
		delete medallion;
		increase carried of food by 1;
		increase carried of water bottle by 1;
		increase carried of tasty peach by 1;
		extend game by 8;
		increase score by 5;
		now omq is 11;


to say omioquest11:
	say "Today you find Omio sitting at her desk and going over something on her computer. Nothing unusual there, however, when the redhead suddenly jumps up out of the blue and then dashes off towards her room you find yourself somewhat perplexed by the strangeness of the golden eyed woman's antics. Blinking and then looking as the redhead returns with something bundled into her hands you have little time to think over what said thing is before Omio is stuffing the item in question into your arms.";
	WaitLineBreak;
	say "'Get this to the warehouse district and into the arms of one Captain Red-eyes, please and thank you,' Omio says without a hint of explanation. Trying to ask the redhead what exactly is going on Omio rapidly shakes her head from side to side as her lips tighten into a scowling frown all of a sudden. 'Please, just get this to Red-Eyes down at the warehouse. It's a [bold type]Special Delivery[roman type] that the other is waiting for. And you can't miss him, he's a giant blue hydra with two heads who'll, knowing him, be barking orders along the south dock area of the warehouse district at one of his workers.'";
	WaitLineBreak;
	say "Asking the other why she just doesn't deliver the case to this Captain Redeye herself the redhead sighs and then looks away. When no answer comes you find yourself not knowing what else to say at this point. Best to move along then.";
	now carried of undisclosed case is 1;
	now Warehouse District is known;
	increase score by 2;
	now omq is 12;


to say omioquest12:
	if undisclosed case is owned:
		say "'I know I haven't given you much by the way of information, but please. Go to the warehouse and look for Captain Red-Eyes and give him that case. It's...important.' Omio's whispered command makes you wonder just what's in this thing, but at her heartfelt look of...grief you don't bother asking. To the warehouse then to drop off this [bold type]Special Delivery[roman type].";
	else if bch is 1:
		say "'Thank you for getting that case to Redeye,' Omio says, and you simply nod to the red head. The hydra's words still ring in your ear somewhat so you feel slightly confused as you try to think on Omio's relationship to the sea serpent and your own choices for the future. 'I guess the last thing to do now is to get you to head to the [bold type]beach[roman type] and collect a certain material for me. That is, if you can spare the time. Omio looks to you with a strange, almost haunted look and for a minute you have to wonder...";
		increase score by 2;
		now omq is 13;



to say omioquest13:
	say "'Hey, are you busy?' Shaking your head and then answering Omio back that you aren't you listen to the redhead researcher chuckle at you before sighing. 'Ironic that you wouldn't be, what with everything going on and all, anyway, I'm of the mind to try to make something extra special today so if you have a [bold type]flotsam club[roman type] on hand would you mind me taking it?'";
		say "Telling the other that you'll think it over you listen to Omio hum her reply before turning away from you.";
		now omq is 14;



to say omioquest14:
	if flotsam club is owned:
		say "Having Omio remind you about the club you recall that you did find one and do have it one hand. But should you let Omio have it? Knowing the red head, anything might happen if she gets her claws onto the piece of wood. But then again, has she ever let you down before?";
		say "     [bold type]You can live without a piece of driftwood, right?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if player consents:
			LineBreak;
			say "Telling Omio that you have one and that you wouldn't mind giving it to her you pull the piece of wood out and then wait. Quickly the other scoops the weapon from out of your [bodyname of player] hands, gives you a hug and then goes over to her cauldron to do something with it. Feeling slightly vulnerable without your weapon you ask Omio what she's going to do with it. Your answer comes in the form of the redhead tossing your weapon into her bubbling pot like one would a vegetable into a hotpot. Oddly enough, something that really shouldn't have been, given who you are dealing with, you find yourself staring in awe as the piece of driftwood simply [italic type]melts[roman type] into the brewing yellowish orange mixture before disappearing completely.";
			WaitLineBreak;
			say "'Just as I thought,' Omio mutters secretly making your head turn towards the researcher. A smile peels across the redhead's tanned lips just as a dubious look crosses yours. Asking the other woman what she means by her last statement Omio hushes you as she intently focuses on the pot in front of her. 'Don't interrupt me. I'm in the process of making science happen!'";
			say "Not knowing what to say to that you simply stand beside the researcher and gaze at Omio as she goes about trying to do this and that with the newly made soup that had once been your former weapon. It takes maybe an hour, or maybe less, for anything exciting to happen, but what does happen next actually astounds you.";
			WaitLineBreak;
			say "While she had been stirring the contents of her pot Omio had been systematically pouring in chemicals and reagents into the mix. From what you could see it would appear that the redhead had just been mixing and matching things at will, and by some of the looks that crossed her face Omio probably had been, but the final result was something you hadn't expected at all. When the redhead finished brewing her out of the cauldron came a long and shining piece of metal. How that had happened...you're still not sure, but at seeing the evidence being hauled into Omio's hand, via a large pink kitten paw pot holder, you cannot deny the result of this new experiment.";
			WaitLineBreak;
			say "'So I can transmute wood into metal. Given that, I should be able to turn iron into either orichalcum or mythril, with the right chemical, of course.' Omio seems to go off somewhere inside of her own head and while you might normally have not minded you currently wonder what's become of your former weapon. 'Oh, sorry to keep you waiting,' Omio turns to blush at you before chuckling abashedly. 'If you give me a moment then I'll fashion this into something slightly useful for you and then send it your way.' Nodding to the redhead you watch as Omio goes off before you have a chance to actually reply to her verbally.";
			WaitLineBreak;
			say "An hour later, Omio squeaks 'Well, it's ready for you now!' as she comes out of her room while polishing a long rod about seven feet tall and one and a half inches wide. 'I hope you like it,' Omio says before handing you the newly improved weapon. Giving the rod a few test swings, you find that whatever Omio has done has now reincarnated the former piece of driftwood into a much more powerful pole that is both much stronger and much lighter than it used to be.";
			say "Thanking Omio for her gift and then going about placing the rod down at your side so that you can lean on it as your legs have currently fallen asleep on you, you smile to the other appreciatively. 'Consider it a gift for all of your hard work.' The redhead chuckles at you before sighing somewhat mournfully. 'After everything that you've done for me I do want you to know that you have not only my gratitude, but also a place with me and my people within the Promethean society.'";
			WaitLineBreak;
			say "'Though from what you've shown me you may not need to be taken care of nor provided for, so it may be me calling on you instead of the other way around later on. I hope you'll be willing to help me out, if I ever need it.' Telling the redhead that you'll think it over, Omio simply nods at you before chuckling again.'";
			say "'That's fine. I can accept that without problem. Anyway, if you ever need a place to stay then just come on over and hang out for a while. I'll be more than happy to share some tea with you.' Omio moves to bow low and you can only chuckle and then shake your head at the crazy researcher. That is, right before a strange feeling flashes through your mind all of a sudden.";
			WaitLineBreak;
			say "Tracing this feeling back to its source you find that your heart is clenching just a little tighter for some reason as you watch Omio rise back up to her full height. The feeling is somewhat painful, but not in a physical way...more like...debilitating? Trying to understand what this is all about you get the oddest sense that you may not see Omio again after the city is rescued...or sanitized. However, that can't be right. The other just asked you to come by and help her out sometime later on. Maybe you're just feeling lonesome since you'll probably not have a reason to see the other quite so often. Maybe going to the redhead's place to share some tea with Omio would be a good thing to do, whenever you have the time, that is.";
			now carried of Organi Rod is 1;
			delete flotsam club;
			increase score by 25;
		else:
			LineBreak;
			say "Telling the redhead that you'll be okay, you decide not to give her the club. 'Ok, no biggie, well anyway I wanted to thank you for all you've done for me. It has really been a big help. If you ever need anything then please stop by, I'll be more than happy to help you out with whatever you may need.' Omio chirps, yet for some reason you get the funniest notion that you may never see the other woman after the events within the city get under some kind of control. But that's not possible...is it?'";
			WaitLineBreak;
			say "Omio's posture reveals nothing of her thoughts as she continues stirring her cauldron. It's times like these that you wish you knew the redhead better, but then again, you've got some time to learn a bit more about her, right? Maybe sharing some tea with her whenever you aren't busy elsewhere would be fitting to bring the both of you closer together?'";
			increase score by 15;
		now omq is 15;
	else:
		say "'Please find a flotsam club lying somewhere on the beach for me, won't you?' Omio asks while not exactly seeming like her normal self. She does bat her eyelashes at you playfully, but the gesture seems hallow for some reason.";



Section 2 - Dream of a Unicorn

Dream of a Unicorn is a situation.
The sarea of Dream of a Unicorn is "Park".

When play begins:
	Add Dream of a Unicorn to badspots of furry;
	Add Dream of a Unicorn to badspots of girl;
	Add Dream of a Unicorn to badspots of guy;
	Add Dream of a Unicorn to badspots of hermaphrodite;

Instead of resolving a Dream of a Unicorn:
	if omq is 0:
		say "Walking through the park you find yourself stopping when you notice [if Omiotalk is 1]Omio[else]a redheaded woman in a blue chinese dress[end if] talking to someone hiding in the shadow of a tree. Not sure what's going on you merely watch the two and then blink when both the redhead and the mysterious [']person['] suddenly blink out of existence. Twisting your head around to make sure that you're not dreaming you find that - yep - [if Omiotalk is 1]Omio[else]the strange woman is gone[end if] and the other are gone. Weird.";
	else if dre is 1:
		say "Finding Omio sitting at a table inside of the park you cautiously walk to over to the redhead while flipping your head back and forth to make sure that no roaming mutants pop out on you. Making as much noise as possible to alert her to your presence you almost leap out of your [skin of player] when sharp golden eyes turn to regard you. At seeing that it's just you Omio lets her face until a friendly mask is placed over the redhead's formerly irritated features. 'Oh hey, I was just thinking about you!' With that look on her face you wonder if you should start running about now. When the redhead gets up to stretch you note all of hidden muscles she possesses in her arms as the sleeves of her blue Chinese styled dress slip down her bicep.";
		WaitLineBreak;
		say "Omio slowly lowers her arms and then walks over to reach out to hug you tightly into her somewhat modest chest. 'I sooo need your help right now.' You try to ask the other what she needs, but sadly it gets muffled into the redhead's warm and slightly comfy feeling bosom. When Omio decides to let you go, some minutes later, you pant slightly as your [facename of player] face is somewhat very sweaty. Despite her size the redhead is both very strong and has a very high body temperature. Odd. 'If you have some time I need you to do me a big favor.'";
		WaitLineBreak;
		say "Asking the other what she needs you get a slightly shocking surprise out of the other. 'Well I need to examine a unicorn, but at the moment I don't want to be bothered with the only one in town because of [']circumstances['] beyond my control.' Omio scowls slightly and covers her chest with both of her arms and you get the feeling that something big must be up to make the normally bubbly redhead so upset. 'Any who, because of this I would like for you to become a unicorn and then come back here so I can examine you.' At this you blink at Omio - the redhead is smiling at you sincerely - and then ask her if she's lost her mind. When the other begins to giggle at you, you realize that she has indeed lost her marbles.";
		WaitLineBreak;
		say "'Nope. I need to draw both blood and other samples from someone with the body of a unicorn so that I collect and catalogue data on certain rare and mythical creatures. Don't worry I know where you can find one to borrow some [']genetic material['] from.' Omio wags her eyes at you lewdly and then tells you about the Palomino where a unicorn barkeeper works. 'I'm sure he'd be very happy to help you out with becoming a unicorn, especially if you were to help him with a problem or two.' The red smiles again and you can only suck on your teeth as you wonder what you've gotten yourself into with this gold eyed harlot. 'Oh, and make sure you come back here after you are done!'";
		now dre is 2;
		increase score by 1;
		now PALOMINO is known;
	else if dre is 2 and bodyname of player is not "Unicorn":
		say "'Remember I need your body to be that of a unicorn so that I can collect some samples,' Omio says before winking up at you. 'Oh and also, don't forget that the guy you are looking for is in the club named the Palomino. The place should be downtown somewhere, if it hasn't been overrun already by the ferals running around.' Omio hums thoughtfully as she says this, her face tight with contemplation.";
	else:
		say "Omio nearly squeals, correction, she does squeal, as the redhead looks over your impressive unicorn body and then gets up from her spot at the park table to hug you tight. Grunting from the feel of the woman's strong grip you wonder if the other is some kind of behemoth-type mutant in disguise as you feel your ribs starting to creak slightly[if facename of player is bodyname of player]. Whinnying for the other to let you go you all but collapse as you suck in grateful gulps of air when the redhead suddenly releases you[else]. Trying to break free from Omio's grip you, you all but collapse back onto the ground when the redhead suddenly releases you[end if]. 'Thank you so much for this! I never would have thought that you would make such a [if cocks of player > 0]studly[else if cunts of player > 0]charming[else if cunts of player > 0 and cocks of player > 0]magnificent[end if] steed.'";
		WaitLineBreak;
		say "Omio continues to squeal like a schoolgirl having her first crush while bouncing up and down like mad, but before you can get too weirded out by the redhead's behavior the redhead has her game face on and is looking at you with a stoic mask of professionalism. 'Now that you've acquired all of the genetic material needed with your transformation please sit down on the table over there.'";
		say "Nodding in somewhat disbelief at the sudden change of the other, you do as you're told without further ado. Maybe she really does have some kind of personality disorder? A slight shudder goes through you as you speculate over just exactly what the redhead is going to do to you. You are not prepared for a bright white light to flare up out of nowhere, only to disappear a moment later, momentarily blinding you. When next you can see you look to find Omio with a face mask strapped around her tanned nose and chin, a pair of white latex gloves on, a nurse's scrub covering her blue Chinese dress, while carrying an old fashion black leather doctor's bag that look like it had slipped through a time hole from the 1960s.";
		WaitLineBreak;
		say "'Alright,' Omio says and your eyes nearly pop out of your skull when the woman comes over to you and then starts trying to undress you. 'I'm going to need you to get out of these and then prepare for some advance medical testing, the likes of which is not standardized by any health organization in America.' The chuckle that seeps free from the redhead makes the hairs along the back of your spine lift up in pure and unadulterated fright. Maybe if you run now you could try and get away? Probably not with the way Omio is looking at you.";
		WaitLineBreak;
		say "You try and say something but all you can do is goldfish as the redhead continues to try and loosen you from your only decent set of clothing. Sadly enough, you find the thought of being naked in front of Omio somewhat arousing and soon you are helping the golden eyed female to strip you down[if cocks of player > 0] Making sure to rub suggestively along your groin when Omio unzip your pants you find that Omio barely even blinks when your [cock of player] cock slips free from your confining leg wear[else]. Rubbing against the cleft of your tight puss when you shakily unfasten the ties of your pants you wonder if Omio ever gets embarrassed by these sorts of things[end if]. Once you are fully naked Omio then proceeds to go about checking your blood pressure, examining both of your eyes and ears, measuring your arms, legs, chest and then [if facename of player is bodyname of player]shaving away bits of your glimmering horn to place the snippets into a small Petri dish[else]nods her head at you somewhat briskly[end if] before pulling out some other medical tools.";
		WaitLineBreak;
		say "Drawing blood and saliva from you next and then storing the fluids into small test tubes Omio goes about asking you several questions while at the same time giving you no speculations as to her own thoughts. Some of the questions are a bit...invasive...but you don't have much of a problem answering Omio because of the strangely disarming nature in which the redhead asks them. Once that is done the redhead stands up and then looks you over completely. A playful light shimmers inside of Omio's golden eyes as she looks at your crotch.";
		say "'Now, time for the next portion of the testing.";
		say "     [bold type]Are you ready?'[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if player consents:
			LineBreak;
			if cocks of player > 0:
				say "'Now don't worry none Mr. Stallion. I'm going to treat you really, really good.' Omio's fake Texan accent has you stammering slightly in disquietude, however, before you can do much of anything the other has her hands on your [cock of player] cock and is stroking it to full hardness. One would think that with latex gloves on the feeling of the redhead stroking you would be uncomfortable, but that proves not to be so, especially as your precum starts to ooze from the tip of your slit on down over the length of your manhood. Grunting as you slowly start to thrust your hips up into the female's hand you can't help but groan as your eyes flutter close while your back arches from the exquisite hand job your getting.";
				WaitLineBreak;
				say "You grip the sides of the couch with your meaty fingers when Omio brings up her other hand to begin twisting your cock with strong, but easy, pumps. Trying to hold onto your orgasm as you feel your balls quickly start to twitch between your legs you pant through clenched teeth while bucking almost frantically up into Omio's talented hands. It's sadly, or rather wonderfully, a losing battle for you as Omio seems to know exactly what she's doing. Stroking down the thick pulsing veins on your organ the redhead quickly proceeds to finish you off quickly when she moves one of her hands down to tease at your balls. A playful chuckle from Omio echoes in your twitching ears as the red continues to milk you in an effort to get out your churning load of cum -- her hands are now moving in a rapid paced motion up and down your cock almost becoming a white blur to you.";
				WaitLineBreak;
				say "Grunting and then shouting your ecstasy to the world you fire your cum up out of your cock with almost rocket-like force, which consequently makes the gleaming trails of frothy ooze spray up over your head before slowly coming to rain down onto your face, chin and neck. Blinded by the stars popping across your vision soon after you never notice how the redhead backs away from you and then pulls out a large jar to collect your spurting cum up off of your lap. All you notice is blissful darkness as you pass clean out from the exertion of such a breathtaking orgasm.";
				WaitLineBreak;
				say "When you wake up from your inopportune nap you have a hard time remembering what exactly happened, that is, until you find your clothes still in a puddle on the ground and your lap sticky with dried cum. Blushing slightly as the memories return to you, you look around to see where Omio has gotten to. When you see nothing and no one, save some skunk girls grinning at you from behind a bush you decide that Omio must have used her teleporter to go back home. Either that or walked. Picking up your clothes you note that there are several provisions laid out on the ground for you.";
			else:
				say "'Alright then, just hold still while I conclude the last portion of the examination.' Omio chuckles and quickly you find yourself trying to back away from the other. You fearful retreat only succeeds in causing you to slip further onto the table, which consequently gives Omio a perfect opening as a white gloved hand reaches down to dip two fingers into your open cunt. A sudden grunt of pleasure quickly turns into panting moans as you feel Omio's, surprisingly thick digits, slip deeper and deeper into you until the redhead has both of her knuckles buried inside of your [bodyname of player] pussy. Spreading your legs on instinct you buck and shiver as the wannabe doctor's swirls her fingers around inside of your cunt while pressing her thumb over the nub of your clit. Arching and panting your body feels like you're about to go into heat as your honey begins to leak out from the inside of your now gaping folds.";
				WaitLineBreak;
				say "Seeing you in such an intriguing position, Omio snickers and then brings the rest of her fingers together to bury all five of her digits into your oozing pussy. Feeling those sinful fingers pressing down deeper into you, you can't help but to throw back your head and then shout out a strong cry of bliss when your fleshy lips flutter and then lock up vice tight around Omio's roving fingers. Holding the redhead's hand down tight you buck and then groan as gouts of blue nectar dribble out of you and onto Omio's gloved hand as you climax powerfully.";
				WaitLineBreak;
				say "When you come down from off of your high you drop back onto the table and then begin to pant like an overworked freight train. Mind whirling as though you've gone through an unbelievable experience, which technically you have, you blink your eyes open and then look down just in time to see Omio collecting your colourful nectar into a large jar. When the redhead speaks next you can only twitch an eye as Omio's words sink deep into your brain. 'Thanks a lot for this sample! I never would have gotten old Harold to give me anything unless I raised my ass for him. But thankfully I didn't have to do that because you did instead!' The redhead holds up the now capped jar and then pulls out a sharpie to label it. 'With this we can test some new theories to see if unicorn cum actually does extend one's life! Maybe if you feel like it you can work we me and my company later on to see if this is true or not?'";
				WaitLineBreak;
				say "You pass out from exhaustion before you can comment on that one and when you wake up you have a hard time remembering what exactly happened, that is, until you find your clothes still in a puddle around you on the floor and your lap sticky with your spilled honey. Blushing slightly as the memories return to you, you quickly get up and then go about your way before any trouble can find you. In your backpack are several extra supplies that had been given over by Omio.";
		else:
			LineBreak;
			say "'Well I suppose we can skip it for today then.' Omio smiles patiently while saying this. The look in her eye is a bit forlorn, but at the same time you don't think you're ready for her to try anything more on your. 'Ok, well, I'm going to be working back at home. If you want to come and help me out again just head there.' Omio winks at you and then moves to take of her gloves and scrubs.";
			say "When the redhead is done with the clean up portion of the examination she lays out several provisions for you and then turns to go off about her way.";
		increase carried of food by 1;
		increase carried of water bottle by 1;
		increase carried of tasty peach by 1;
		extend game by 8;
		now Dream of a Unicorn is resolved;



Table of Game Objects(continued)
name	desc	weight	object
"leopard suit"	"A leopard fur tailored shirt and pair of pants that Omio, a slightly wacky researcher made for you. The material is very flexible and adjusts well onto your body.  It seems unusually strong, imparting some protection to you."	5	leopard suit

leopard suit is equipment.
leopard suit is not temporary.
The AC of leopard suit is 16.
The effectiveness of leopard suit is 70.
The placement of leopard suit is "body".
The descmod of leopard suit is "A shirt and pair of pants made from both leopard fur and wool covers them.".
The slot of leopard suit is "body".

Instead of smelling leopard suit:
	say "A strong scent of Leopard lingers over both the shirt and pants. A feeling of ferocity surges throughout your spine from the warm and comforting scent.";



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
"medallion"	"An unusual bronze artifact that bears a serpent biting at its own tail."	1	medallion

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
"Organi Rod"	"A rod laden with a metallic substance reminiscent of gold. Transformed from a normal club into this by the power of alchemy the rod is both tougher and more damaging. It weighs a lot less than before too. "	5	Organi Rod

Organi Rod is an armament. It is part of the player. It has a weapon "[one of]your mystic rod[or]your smooth and polished staff[or]your gleaming pole[or]your seven foot staff of pain[at random]". The weapon damage of Organi Rod is 15. The weapon type of Organi Rod is "Melee". It is not temporary. the objsize of organi rod is 4.

instead of sniffing Organi Rod:
	say "The rod smells of alchemical residue with a touch of heart and soul from a bubbly researcher.";





Pursuit of Science ends here.
