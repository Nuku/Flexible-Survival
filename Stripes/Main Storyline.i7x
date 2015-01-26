Version 2 of Main Storyline by Stripes begins here.
[version 2 - Separation into Extension - Addition to Main Storyline Pt 2]

"Contains the content for Dr. Matt and the Main Quest Storyline."

Section 0 - Dr Matt Salacious

Doctor Matt is a person. "A figure in a full hazmat suit is busily working at the various terminals, wandering from one to the other when he isn't sitting in that comfy chair. His name badge declares him to be [']Doctor Matt['].".
The description of Doctor Matt is "[if hp of doctor matt is 100]There is a small tape recorder with a sticky note on it, labeled as [']Doctor Matt['] on one of the lab tables[otherwise]Doctor Matt is working away at the various terminals, wandering from one to another when not working at his lab table or seated in his comfy chair.  He has a full environment suit on, covering his whole body, with only a glass visor to show his human face[end if].".
Doctor Matt is in Primary Lab.
understand "Matt" as doctor matt.
understand "Left Behind Recording of Doctor Matt " as doctor matt.
the icon of Doctor Matt is figure of DrMatt_icon.

the conversation of Doctor Matt is { "empty" };


Section 1 - Talking w/Dr Matt (this drives the Main Storyline quests)
 
Instead of conversing the doctor matt:
	if hp of testerbot is 0 and testerbot is in Primary Lab and hp of doctor matt is not 100:
		now hp of testerbot is 1;
		say "'The military has returned my testing robot, wanting more data on the affects of the infection upon a person's lustful urges and sexual proclivities,' he says, pointing to the boxy robot slumped against the wall.  'The testing robot has been built for the use in this regard.  Please feel free to use it as you see fit.  I want a wide sample of data, so come back often.  The robot will only be available briefly though before I have to send it off to the military's scientists so they may analyze the data.'";
		say "'When they returned it, they also included a note about its [']unfriendly disposition['].  So I've given it a nice smile,' he says, pointing to the poorly aligned smile on the robot's boxy face.  The edges of the large sticker seem scratched and frayed, as if the robot tried to pull it off, but couldn't with its pincher hands.  Either ordered to stop or resigned to leave it there, the robot now has a big, friendly grin stuck to its face.";
		attempttowait;
	if hp of doctor matt is 100:
		say "'If you are listening to this, you are probably still in the city. My condolences. I have left behind some facilities for you. You will find they can enhance your abilities due to the nanite infection.";
		say "[bold type]((Every 3 levels, starting at level 3, you may gain one feat by coming here and typing volunteer))[roman type]";
		say "'God Speed and Good Luck,' says the recording before clicking off.";
		stop the action;
	if hp of doctor matt is 0:
		say "'Welcome to Trevor Labs,' says the man in the hazmat suit, 'I am Doctor Salacious, but most just call me Doctor Matt. Since I didn't hear any scuffling, I presume Orthas let you in, so you are probably not a crazy mutant.'";
		if scenario is "Researcher":
			say "He looks you over a moment, 'You don[']t look nearly as lost and confused as most.' He turns back to his computer a moment, tapping quickly, 'Are you another researcher? Excellent. I[']m looking into a cure for this plague, but I haven[']t made much progress. But I did find something else...";
		otherwise:
			say "He laughs a little, nervous and forced. 'Anyway, before you ask, no, we did not have anything to do with the nanite infestation. You didn[']t know it was nanites? Now you do. I have been studying them for some time since the grid went dark. I[']m not much closer to a cure... but I did find something you're probably interested in,' he says, pausing for effect.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
		say "'I can manipulate existing strains, just a little, for those already infected, like you. Don[']t look at me like that. Anyone not in a fully sealed environment is infected by now.[if humanity of player is less than 80] In fact I'd say you[']ve already been pretty badly infected, interesting...[end if] But now for the good news. As you develop resistances to the nanite infection and your system becomes stronger, I can redirect that growth to amazing, and planned, almost superhuman abilities,' he declares, sounding quite proud of himself, 'Only one catch...'";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
		say "'I haven[']t had any test subjects. Until you. So you come in here, [bold type]volunteer[roman type], and we[']ll make you better than when you started. In return, you can help us save the city. A fair deal, right?' he says, but he[']s already turning back to his monitors, not actually listening for your reply.";
		now hp of doctor matt is 1;
		say "[bold type]((Every 3 levels, starting at level 3, you may gain one feat by coming here and typing volunteer))[roman type]";
		extend game by 16;
	if hp of doctor matt is 1:
		say "'Alright, we have a limited amount of time. I have been doing my best to delay the military, but without something concrete to report, they will be here soon, and they will pave this thing as hard as they can, leaving all mysteries unsolved. Now that you are here, we can get to work and keep them off our backs,' explains the hazmat suited man as he pushes his chair towards another terminal and starts typing.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
		say "'The first problem is a lack of test subjects. I can[']t send Orthas out to collect samples, that would leave me unprotected. You, on the other hand, are not so limited. Go to the mall and get some samples from the amorphous transformatives there, and some nutritive secretions from one of those raptor slash panthera leo transformatives. I would prefer two of each, enough to be able to experiment without risking the whole of the subject matter,' he explains, turning to face you.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
		say "'Once you have them, just come back here and we will be that much closer to solving this.'";
		say "You get the idea you[']ve been dismissed, as he goes quiet, and eventually turns back to his work. Not much of a socialite.";
		now hp of doctor matt is 2;
		now level of doctor matt is 0;
		now hobo-grmilkhelp is turns;
	if hp of doctor matt is 2:
		let milkfound be the carried of gryphon milk;
		let goofound be the carried of glob of goo;
		if girl is banned:
			now goofound is 2;
		if hermaphrodite is banned or furry is banned:
			now milkfound is 2;
		if milkfound is less than 2:
			say "'You do not have enough nutritive secretions,' he chastises.";
			stop the action;
		if goofound is less than 2:
			say "'You do not have enough amorphous samples,' he chastises.";
			stop the action;
		extend game by 5;
		let number be 0;
		delete glob of goo;
		delete glob of goo;
		delete gryphon milk;
		delete gryphon milk;
		say "'Ah, exemplary work,' he murmurs, already taking your goo and milk and quickly getting them into a deep freeze box that glows ominous blue. Chill white mist escapes for the moment he pops it open to place the precious objects inside, 'Now then, we shall see what can be seen. Come back tomorrow.'";
		now level of doctor matt is turns;
		increase score by 20;
		now hp of doctor matt is 3;
	if hp of doctor matt is 3:
		if level of doctor matt minus turns is less than 8:
			say "'Still working on those samples you brought, come back later.'";
			stop the action;
		extend game by 24;
		increase score by 5;
		say "'Simply amazing. There is no other word for it,' says Doctor Matt, looking excited through his hazmat faceplate, 'The adaptability of the nanites is simply... I would have said it was impossible if I hadn't laid my own eyes on it. I sent out my results and the military have grudgingly agreed to a three day extension on their plans.'";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
		say "'The nanites seem to come in a few varieties that cooperate. The most important ones, the ones that allow the miracle work, are the... brain... nanites, for lack of better word. They link with neighboring brain nanites like nerve endings and seem capable of forming neural patterns of astonishing complexity! The nanites stopped receiving directives a long time ago, but they can adjust and make up their own choices independently. It is little wonder this is causing so much trouble,' he gushes with bubbling enthusiasm, like a young boy having caught a creepy looking insect.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
		now hp of doctor matt is 4;
	if hp of doctor matt is 4:
		say "'Oh, one thing of more immediate use. I discovered how to neutralize the nanites. A limited area of them at least. They do not like being microwaved. I have one in the corner there, feel free to [bold type]microwave[roman type] anything you want to bake the infection out.'";
		move the microwave to the location of doctor matt;
		now hp of doctor matt is 5;
	if hp of doctor matt is 5:
		say "'Up for another task? Good. Orthas spotted something interesting while hunting. A singular creature. You must understand, one of the standard impulses the infection seems to give on its infectees is the desire to spread the infection. To see just one is unusual. A trait I have only seen in Orthas so far. Go to the park and find this creature, bring it to me for study.'";
		now unusual creature is unresolved;
		now hp of doctor matt is 6;
	otherwise if hp of doctor matt is 6 and unusual creature is unresolved:
		say "'Did you forget already?' asks Matt, 'Go to the park, find the unusual creature. Bring it here. Orthas said it was intersexed, if that helps.'";
	otherwise if hp of doctor matt is 6:
		say "'Ah ha, yes, she is an interesting creature, is she not?' he says, looking at the deer through his face plate. 'She says her name is Susan, just so you know.";
		if deerconsent is 1:
			say "'And she[']s taken a fancy to you. This is good.";
		say "'I was hoping you could test her for infectiousness, in a controlled situation. You don't have to if you don[']t want to, just talk to her and decide for yourself. Don[']t look at me that way. I can[']t very well do it from inside this suit, now can I?' he adds.";
		now hp of doctor matt is 7;
		increase score by 20;
		extend game by 24;
	if hp of doctor matt is 7 and deerconsent is not 2:
		say "'Go on, talk to her.'";
	otherwise if hp of doctor matt is 7:
		if susan is visible:
			say "'Excellent work. I will observe. You can proceed at whatever rate is comfortable. You are doing a great service for science,' says Matt as he raises a finger towards the sky.";
			now deerhappy is 2;
		otherwise:
			say "'Poor news. The specimen escaped, went running off back towards the park. She probably went feral. Nothing to do about it now, just look out for her. Probably dangerous.'";
			now deerhappy is 1;
			repeat with y running from 1 to number of filled rows in table of random critters:
				choose row y in table of random critters;
				if name entry is "doe":
					now monster is y;
					break;
			now area entry is "Park";
		now hp of doctor matt is 8;
	if hp of doctor matt is 9 and hospquest < 8:
		say "'Please continue to assist Dr Mouse.  And let me know what you find out.'  Dr Matt then turns back to his work, intent on continuing his research.";
	if hp of doctor matt is 8 and hospquest is 8:
		say "     You decide to tell Dr Matt about what you've been doing for Dr Mouse.  You leave out what really happened to the scientific device he gave you and he doesn't seem to notice, instead focusing on the fact that he has a competitor.  And one that you've been helping.";
		say "     'I had been wondering what you'd been up to for the last few days in the city while I had nothing for you to do.  Idle hands, as they say.  This is quite unexpected.  You have found another person in the city searching into the mysteries of the nanite infection, but through a different avenue of research.  And using the infected as test subjected is...' he coughs as he notices the stern look you [if susan is visible]and Susan [end if]give him.  'That is, possibly using them as unwilling test subjects in such surgical experiments.  Most disturbing and unethical, even in such a crisis.'";
		say "     'I suggest you continue to assist this Dr Mouse individual.  It will further ingratiate you to him and allow you to find out more about what's going on with his research.  Hopefully, I am wrong about my concerns and this doctor may be of help to us.  As well, we do need to know if his concerns about the nanites are valid.";
		now hp of doctor matt is 9;
	if hp of doctor matt is 9 and hospquest > 7 and mattcollection is 0:
		say "     'Now, you say that Dr Mouse has been having you collect samples from the city?  And from more and more powerful creatures?  This is worrisome.  I wonder what secrets he may be uncovering.  May I see what he's asked you to collect?' he asks.";
		if triclamped is 0 and triclampedmatt is 0:
			let tricllfound be 0;
			if lava lamp is owned, now tricllfound is 1;
			if tricllfound is 0:
				say "     Once you find a usable sample from this possible dinosaur, please bring it to me first, so that I may obtain a sample as well.";
			if tricllfound is 1:
				say "     Doctor Matt eyes the lava lamp suspiciously, noting the sticky film coating it.  Using several sterile swabs, he wipes a samples of the fluids from the improvised toy and sets them in a sample dish.  'It was fortunate that you brought this here so I could gain a sample before you turned it over to him.'";
				increase score by 10;
				now triclampedmatt is 1;
		otherwise if triclamped is 1 and triclamped is 0:
			say "     'It is unfortunate that you have turned the sample over to Dr Mouse already,' Dr Matt says.  Unfortunately, I don't think it would be wise to try to obtain another.'";
			now triclampedmatt is 2;
		if sabtoothed is 0 and sabtoothedmatt is 0:
			let sabertoothfound be 0;
			now sabertoothfound is carried of chipped tooth;
			if sabertoothfound is 0:
				say "     'I would like to ask you to obtain a sample from one of these creatures for me as well.  I know this means you may need to fight a second one, but I want to look into this matter as well.'";
			if sabertoothfound > 0:
				say "     'I should like to keep this sample of the sabretooth tiger.  I know this means you must obtain another for Dr Mouse, but I would like to take this one for my research.  If you were able to obtain this one, surely you can get another for your other employer.'  Do you give it to him? (Y/N)";
				if the player consents:
					delete Chipped tooth;
					increase score by 10;
					say "     'It is good to see that you appreciate the importance of my work.'  He picks up the large fang in his gloves and places it in a sample dish.";
					now sabtoothedmatt is 1;
				otherwise:
					say "     'I am disappointed that you don't appreciate the importance of my work.  I hope you will at least continue to keep me appraised of Dr Mouse's activities.";
					now sabtoothedmatt is 2;
		otherwise if sabtoothed is 1 and sabtoothedmatt is 0:
			let sabertoothfound be 0;
			now sabertoothfound is carried of chipped tooth;
			if sabertoothfound is 0:
				say "     'I would like to ask you to obtain a sample from one of these creatures for me as well before Dr Mouse gets too far ahead.  I know this means you may need to fight a second one, but my research cannot fall behind.'";
			if sabertoothfound > 0:
				say "     'As you have already given Dr Mouse his sample, I should like to keep this sample for myself,' he says as he places the one you have into a sample dish.";
				delete Chipped tooth;
				increase score by 10;
				now sabtoothedmatt is 1;
		if nerminepackage < 5 and nerminepackagematt is 0:
			let nermpack be 0;
			now nermpack is carried of package;
			if nermpack is 0:
				say "     'I should like a chance to examine whatever object you are retrieving from this mysterious shop.  I want you to bring it here before delivering it to Dr Mouse.'";
			if nermpack is 1:
				say "     You pull out the dusty package and set it on one of tables.  Dr Matt opens it carefully, using tongs to pull the strings to untie them.  When they drop away, he lifts the flaps with his tongs.  Peeking inside, you both see a large piece of golden fur.  The doctor, relaxing a little, pulls it out and holds it up.";
				say "     'It seems to be a very old animal hide.  Lion, I should guess.  I'm not sure why he is interested in this ratty, old thing.  But I should take a sample just in case.  Dr Matt takes a scalpel to cut a small corner from the old lionskin.  But after several tries, he's only made a small notch in it.  He grunts and pulls out a larger knife and tries again, eventually managing to slice a small corner from it.";
				say "     He looks down at the small cutting he's placed in the sample tray.  'That was most perplexing.  From all appearances, the hide is very old and should be quite fragile.'  He turns the box around, finding the Greek writing on it.  'Nemea?  What does that... the Nemean Lion!'  Dr Matt stiffly folds up the pelt and puts it back in the box, very slowly tying it back up.  'It... makes no sense.  But what else could it be?'  The poor doctor seems quite out of sorts and it appears that no further explanation will be forthcoming.";
				increase score by 10;
				now nerminepackagematt is 1;
		if nerminepackage is 5 and nerminepackagematt is 0:
			say "     It is regrettable that you turned over the package to Dr Mouse before I had a chance to examine its contents.  I want you to keep me better informed of his activities going forward.";
			now nerminepackagematt is 2;
		if nerminepackagematt > 0 and sabtoothedmatt > 0 and triclampedmatt > 0:
			if nerminepackagematt is 1 and sabtoothedmatt is 1 and triclampedmatt is 1:
				say "     Having given the scientist a sample from each of the three items Dr Matt had you collect, he at least seems a little pleased.  'These do only represent the samples he's asked you specifically to gather.  It is apparent that his at least partial control of the hospital denizens has allowed him to collect specimens from many of the creatures in the city.  It is unclear to me what directions his research is taking and so I want to you continue to assist and monitor him.  Hopefully he can discover something to help us deal with this outbreak.'";
				say "     'For your assistance in this matter and for ensuring I received a sample from them as well, I should give you something in payment.  I had been working on this device.  It is only a prototype, but it may be of assistance to you.  I am working on an improved model to eventually be used when the military comes in to rescue the infected survivors.'";
				say "     From one of the worktables, Dr Matt gathers up a cobbled together device that looks like it was made from an array of wires and lights on a Velcro wristband connected to a handheld game console.  'I had to make its case from the items I had available, but it is quite functional, if a little slow.  It acts as a personalized infection status monitor, or PISM.  Should you make contact with an unknown infection source, you can see to what degree and which strain has infected your body.  While many strains are obvious, others are harder to diagnose until further secondary features or behaviors arise.'";
				say "     The strap can be placed around your wrist, ankle or other limb.  It could even be used with the contacts pressed to your body, if you were ever changed to such a radical degree.  To check yourself, simply connect it to the analysis unit and press these buttons,' he says as he indicates them, 'to show you how the infection has spread through your body.  It has a catalog drawn from this terminal, but unfortunately must remain keyed to you to work and so it presently can't be used to check others.  I hope my larger model for the military will overcome this issue so they can do a quick scan at the base of the people they rescue to be aware of the strains infecting each individual.'";
				say "     'As I stated, you may have this prototype, as I am working on an improved model for the military.  Perhaps it may be of some use to you.  If you can continue to help me, I may be able to upgrade its programming later,' he adds, clearly paying you to act as his double-agent.";
				say "     Infection monitor obtained.  (Quick command: [bold type]pism[roman type])[line break]";
				increase carried of infection monitor by 1;
				now mattcollection is 1;
				increase score by 10;
			otherwise:
				now mattcollection is 2;
	if mattcollection > 0 and hp of doctor matt < 10:
		say "     'I suggest you continue to assist Dr Mouse.  It will further ingratiate you to him and allow you to monitor his activities.  I want you to keep me informed on what he's receiving and please bring a sample for me as well.  Nor do I wish to fall behind in my research to this little upstart.";
	if hp of doctor matt is 10:
		say "     'A mind like Dr Mouse's cannot be allowed to continue to exploit the nanite infection unhindered.  I will need you to take care of him.  And be sure to bring back what research materials you can.'";
	if hp of doctor matt is 8 and hospquest is 13:		[Doc completely unawares, hospital finished]
		say "     Having much to tell Dr Matt, you begin with your discovery of the unusual activity at the hospital and then the lab within.  You go on to talk about the strange doctor you found there, working away at solving the nanite mystery.  This gets his attention and he becomes much more interested in your tale.  As you continue, you summarize what the mouse related to you about his findings and hypotheses about the infection.  You tell him these were what prompted you to assist him with the tasks he asked you to perform.";
		say "     You describe the apparent control he had over the creatures of the hospital.  You relate to him how the research coming from the samples you were collecting began to manifest as changes and increased power in the hospital denizens.  Dr Matt is perturbed to hear about this news, both that such experiments were happening and that he was not made aware of another potential source of information on the nanites.";
		say "     But you do not dwell on that, instead moving on to the most recent incident and the doctor's offer.  Dr Matt is quite stunned by it and stammers some thanks for your decision to side with him over the mouse doctor.";
		if susan is visible:
			say "     Susan moves up beside you as you talk about what happened at the hospital, putting her arms around you and hugging you tightly.  She doesn't say anything, only listening and being there for her chosen mate.";
		if hp of doctor mouse is 2:
			say "     You relate to Dr Matt the events of the fight that began as you refused to help the mouse and incurred his wrath.  Dr Matt seems unsurprised by the doctor's monstrous transformation, given what you related about his research, and is pleased to hear that he was dispatched so thoroughly.  You dump out the accumulated research you were able to abscond from the lab, offering it all to the scientist to help him deal with the infection.";
			say "     Dr Matt is quite intrigued by what he sees in the documents and samples he glances over.  'This is quite a substantial find, my brave assistant.  I can see several results that I can put into place immediately and will be able to offer you several more options, should you wish to [bold type]volunteer[roman type] for nanite adjustments.'";
			now featunlock is 1;
		otherwise:
			say "     You relate to Dr Matt the events of the fight that began as you refused to help the mouse and incurred his wrath.  Unable to defeat the mouse, you were not able to stop him, but survived the encounter and have returned to assist the scientist.";
			say "     'It is unfortunate that this mad doctor was not stopped, but given the resources at his disposal, it is not surprising that you alone could not defeat him.  I shall inform the military of these events, as well as the increased threat level at the hospital.  They may attempt something to deal with him when the final push is made, but I suspect Dr Mouse will escape in the confusion.  He seems too intelligent to not have an exit strategy already formulated.'";
		now hp of doctor matt is 12;
		now level of doctor matt is turns;
	otherwise if hp of doctor matt is 9 and hospquest is 13:		[Doc partially unawares, hospital finished]
		say "     As you start to tell Dr Matt about the recent events at the hospital, at first he believes you to simply be reporting again on another request for samples.  But as you tell him about Dr Mouse's plan to have you infected and steal his research, he is quite stunned.  He stammers some thanks for your decision to side with him over the mouse doctor.";
		if susan is visible:
			say "     Susan moves up beside you as you talk about what happened at the hospital, putting her arms around you and hugging you tightly.  She doesn't say anything, only listening and being there for her chosen mate.";
		if hp of doctor mouse is 2:
			say "     You relate to Dr Matt the events of the fight that began as you refused to help the mouse and incurred his wrath.  Dr Matt seems unsurprised by the doctor's monstrous transformation, given what you related about his research, and is pleased to hear that he was dispatched so thoroughly.  You pull out the accumulated research you were able to abscond from the lab, offering it all to the scientist to help him deal with the infection.";
			say "     Dr Matt is quite intrigued by what he sees in the documents and samples he glances over.  'This is quite a substantial find, my brave assistant.  I can see several results that I can put into place immediately and will be able to offer you several more options, should you wish to [bold type]volunteer[roman type] for nanite adjustments.'";
			now featunlock is 1;
		otherwise:
			say "     You relate to Dr Matt the events of the fight that began as you refused to help the mouse and incurred his wrath.  Unable to defeat the mouse, you were not able to stop him, but survived the encounter and have returned to assist the scientist.";
			say "     'It is unfortunate that this mad doctor was not stopped, but given the resources at his disposal, it is not surprising that you alone could not defeat him.  I shall inform the military of these events, as well as the increased threat level at the hospital.  They may attempt something to deal with him when the final push is made, but I suspect Dr Mouse will escape in the confusion.  He seems too intelligent to not have an exit strategy already formulated.'";
		now hp of doctor matt is 12;
		now level of doctor matt is turns;
	if hp of doctor matt is 11:
		if susan is visible:
			say "     Susan moves up beside you as you talk about what happened at the hospital, putting her arms around you and hugging you tightly.  She doesn't say anything, only listening and being there for her chosen mate.";
		if hp of doctor mouse is 2:
			say "     You relate to Dr Matt the events of the fight that began as you refused to help the mouse and incurred his wrath.  Dr Matt seems unsurprised by the doctor's monstrous transformation, given what you related about his research, and is pleased to hear that he was dispatched so thoroughly.  You dump out the accumulated research you were able to abscond from the lab, offering it all to the scientist to help him deal with the infection.";
			say "     Dr Matt is quite intrigued by what he sees in the documents and samples he glances over.  'This is quite a substantial find, my brave assistant.  I can see several results that I can put into place immediately and will be able to offer you several more options, should you wish to [bold type]volunteer[roman type] for nanite adjustments.'";
			now featunlock is 1;
		otherwise:
			say "     You relate to Dr Matt the events of the fight that began as you refused to help the mouse and incurred his wrath.  Unable to defeat the mouse, you were not able to stop him, but survived the encounter and have returned to assist the scientist.";
			say "     'It is unfortunate that this mad doctor was not stopped, but given the resources at his disposal, it is not surprising that you alone could not defeat him.  I shall inform the military of these events, as well as the increased threat level at the hospital.  They may attempt something to deal with him when the final push is made, but I suspect Dr Mouse will escape in the confusion.  He seems too intelligent to not have an exit strategy already formulated.'";
		now hp of doctor matt is 12;
		now level of doctor matt is turns;
	if hospquest is 13 and "Mental Booster" is not listed in feats of player:
		say "     As thanks for your willingness to side with me over this impudent upstart mouse, I shall provide you with something I have been working on.  Trying to deal with the infected city can be mentally harrowing as well as physically harrowing.  It is easy to neglect the need to be intellectually able to deal with this crisis over the more obvious need for physical prowess.  As such, I have found a way to stimulate the mind, increasing one's reasoning abilities to make them better able to notice significant events, interpret that information and then relate it to others.  This treatment will also strive to keep these mental faculties strong after mentally debilitating infections.'";
		say "     The doctor injects you with the nanite adjustment.  At first you feel little, but as you start to consider what may be happening, you notice that you're interpreting stimuli faster and drawing conclusions about them more readily.  You don't suddenly know more information, but you can better process all that you have learned to make more out of it.  You also feel a little more confident in dealing with the world because of it.";
		add "Mental Booster" to the feats of the player;
		increase intelligence of player by 2;
		increase perception of player by 2;
		increase charisma of player by 2;
		increase morale of player by 4;
		say "[bold type]Your Intelligence, Perception and Charisma are all increased by 2.[roman type][line break]";
	if hp of doctor matt is 12 and "Automatic Survival" is listed in feats of player:
		now hp of doctor matt is 14;					[Supply Run skipped entirely]
	if hp of doctor matt is 12 and level of doctor matt minus turns is less than 16:
		say "     'I don't currently have any tasks for you,' the doctor states.  'Please check back later after I've had a chance to take stock of our situation.'";
	otherwise if hp of doctor matt is 12:
		say "     'Given the situation in the city escalating from the recent interference, the military's final move has been delayed much more than anticipated.  While this gives me more time to hopefully give them the tools they'll need, this does mean our supplies will run dangerously low before the end if more cannot be obtained.'";
		say "     'Now, while Orthas assures me she will be able negotiate some exchange with the occasional sane survivor that passes by, this is unreliable.  I would prefer to give us a wider margin of error.  I do not wish to inform the military of our needs, as they may foolishly try advancing the timetable or sending a team in to extract us beforehand.  As such, I want you to collect some food and water supplies for us.  Perhaps a half-dozen of each.  As you can freely roam the city, you may be able to scavenge additional supplies or find others who are willing to pay you in supplies for services.  Just take care to choose your allies more carefully this time,' he adds with a meaningful gaze.";
		say "     'As you already have to deal with feeding yourself, this task will not go unrewarded.  I will prepare an enhancement injection of your choice once the supplies are obtained and given to me.  Oh, and don't tell Orthas I'm having you do this,' he adds as he turns back to his workbench.";
		now waterneed is 6;
		now foodneed is 6;
		now hp of doctor matt is 13;
	otherwise if hp of doctor matt is 13:
		now foodcount is carried of food;
		now watercount is carried of water bottle;
		now tempnum is foodneed;
		say "[thefoodening]";
		say "[thefoodening]";
		say "[thefoodening]";
		say "[thefoodening]";
		say "[thefoodening]";
		say "[thefoodening]";
		if tempnum > foodneed:
			if foodneed is 0:
				say "     'Good job!  This is sufficient food to build up our supplies.  Nothing like a good meal to keep the brain running its best' the doctor says, looking over the fare hungrily as he takes the supplies from you.  You quietly look over your depleted supplies, hoping you have enough for yourself as well.";
			otherwise:
				say "     'I'll add that food to our supplies to raise our stocks,' the doctor says, taking the food from you.  'We still need [foodneed] more meals though.'  You quietly look over your depleted supplies, hoping you have enough for yourself as well.";
		now tempnum is waterneed;
		say "[thewatering]";
		say "[thewatering]";
		say "[thewatering]";
		say "[thewatering]";
		say "[thewatering]";
		say "[thewatering]";
		if tempnum > waterneed:
			if waterneed is 0:
				say "     'Good job!  This is sufficient water to increase our supplies.  Nothing like a good drink to grease the wheels of science,' the doctor says, looking over the collected water thirstily as he takes the supplies from you.  You quietly look over your depleted supplies, hoping you have enough for yourself as well.";
			otherwise:
				say "     'I'll add that water to our supplies to raise our stocks,' the doctor says, taking the water from you.  'We still need [waterneed] more liters through.'  You quietly look over your depleted supplies, hoping you have enough for yourself as well.";
		if foodneed is 0 and waterneed is 0:
			say "     Having safely stored away the supplies, Dr Matt turns back to you as if wondering why you're still here when there's work to be done[if susan is present].  Susan politely coughs and nods towards the nanite enhancement device while tapping her hoofed foot on the floor[otherwise].  You glare at the doctor for a few seconds before finally pointing to the nanite enhancement device[end if], at which point Dr Matt brushes his gloved hands together and nods, heading over to it as if that was his intention all along.";
			wait for any key;
			now foodwaterbonus is 1;
			featget;
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
			now hp of doctor matt is 14;
			now level of doctor matt is turns;
	if hp of doctor matt is 14:
		say "     'While you were off taking care of that, I have heard back from the military command center.  Things are still rather chaotic, but they're managing to hold on.  They insist that this situation can and will be contained.  I'm uncertain of their ability to do so, but the longer they work to contain the nanite infection here, the better chance we have of understanding the mysteries of the nanites before it becomes completely unmanageable,' the doctor says.";
		say "     But they are having difficulties of their own and they want more information on key locations throughout the city.  It seems many of their recon teams have not fared well against the infected hazards of the city.  They feel that someone already infected would have an easier time gathering this intel.  They are looking for safe paths of travel through the city for their forces to start from, allowing them to expand their rescue operations from these key points.  You should begin exploring the city, finding as many points that you can navigate between as you can.  Being aware of these and knowing routes to travel between them will help keep the soldiers safer while trying to help those who can still be rescued.  They are requesting a report on at least 50% of the city.'";
		if waiterhater is 0, wait for any key; [skips waiting if selected]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
[		NanofabRewardScanner; [places piece for nanofab in room.  move this line if/when a better place is found]	]
		now hp of doctor matt is 15;
	if hp of doctor matt is 15:
		if number of fasttravel rooms > ( number of known fasttravel rooms * 2 ):
			say "     You fill Dr Matt in on what you've been able to learn about the city and the safer paths to travel through it.  'Based on the information you've been able to provide me, you only have about [ ( number of known fasttravel rooms * 100 ) / ( number of fasttravel rooms )]% of the city covered.  The military is requesting information on at least 50% of these locations.'";
		otherwise:
			say "     You fill Dr Matt in on what you've been able to learn about the city and the safer paths to travel through it.  'Based on the information you've been able to provide me, you have roughly [ ( number of known fasttravel rooms * 100 ) / ( number of fasttravel rooms )]% of the city covered.  That should greatly assist the military with their scouting and rescue efforts.'";
			now tempnum is 100 + ( 4 * number of known fasttravel rooms);
			increase freecred by tempnum;
			now hp of doctor matt is 16;
			increase score by (number of known fasttravel rooms) * 2;
			say "     You have gained [special-style-1][tempnum][roman type] freecred and now have [freecred] freecred.";
			if waiterhater is 0, wait for any key; [skips waiting if selected]
			if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
			say "     You'll notice that I was able to provide you with a sum of 'free credits.'  These are a form of currency alternative that the Zephyr conglomorate has implemented.  While my contacts with the military assure me that at least portions of the nation are still functioning, it is clear that the federal government is in disarray at the moment.  And while Zephyr seems intent on exploiting this to position themselves as the new driving force in the nation, if not the world, there is no question that they are prepared and in possession of considerable knowledge about the infection and the nanites.  So much so that I have to wonder about their role in all of this.'";
			say "     'I want you to make contact with their representatives in the city and give them this package,' Dr Matt says as he passes you a manila envelope.  'It contains a request for certain items and data they have in their possession which would be very useful to my research into the nanites.  I'm quite certain they know a lot more than they're letting on, but they should be willing to share this information at least.  Now, as they are the representatives of a company, they will most certainly not just hand over this data.'";
			say "     The doctor shuffles a few items around on his desk.  'The military command should have contacted the corporate office as well to negotiate this exchange of information.  As payment, I've included selected portions of my research on a storage device you may give them if they agree to the terms.  The reason I am sending you as a courier on this is that they may make some demands of you, claiming the offer may be insufficient.  Given your experience in dealing with the city, you should be able to handle such a request from them.'  It seems that doing Dr. Matt's dirty work isn't enough; now he's renting you out to others to do their dirty work too.  Oh well.";
	otherwise if hp of doctor matt is 16:
		say "     'Please proceed to the Zephyr location and make the exchange for the data.'";
	if hp of doctor matt is 17:
		say "     'Please continue to work on that task for Zephyr.'";
	if hp of doctor matt is 18:
		say "     'Good job in taking care of that.  I have much to work on now.'";
		say "((Main storyline ends here for now.))";
	say "He looks kind of busy right now.";


Section 2 - PISM

Table of Game Objects (continued)
name	desc	weight	object
"infection monitor"	"     Cobbled together from various items, Dr Matt's infection analyzer can be used to check your body's infection status.  Type [bold type]pism[roman type] to use."	1	infection monitor

infection monitor is a grab object.
it is part of the player.
It is not temporary.

monitoring is an action applying to nothing.
understand "pism" as monitoring.

instead of using infection monitor:
	monitor;

check monitoring:
	if infection monitor is owned:
		monitor;
	otherwise:
		say "You don't have anything capable of that.";
	stop the action;

to monitor:
	say "You hook up the infection analyzer and run the program, checking on your body's status for any changes while looking yourself over.";
	say "Head status:  [facename of player]     Body status:  [bodyname of player][line break]";
	say "Skin status:  [skinname of player]     Tail status:  [tailname of player][line break]";
	if cocks of player > 0:
		if cunts of player > 0:
			say "Cock status:  [cockname of player]     Gender: Herm[line break]";
		otherwise:
			say "Cock status:  [cockname of player]     Gender: Male[line break]";
	otherwise if cunts of player > 0:
		say "Groin status:  [cockname of player]     Gender: Female[line break]";
	otherwise:
		say "Analyzing gender... [special-style-2]ERROR![roman type][line break]";
	follow the self examine rule;


Section 3 - Food and Water Hunt Subroutines

to say thefoodening:
	if foodcount > 0 and foodneed > 0:
		delete food;
		decrease foodcount by 1;
		decrease foodneed by 1;

to say thewatering:
	if watercount > 0 and waterneed > 0:
		delete bottle water;
		decrease watercount by 1;
		decrease waterneed by 1;


waterneed is a number that varies.
foodneed is a number that varies.
foodcount is a number that varies.
watercount is a number that varies.
foodwaterbonus is a number that varies.  foodwaterbonus is usually 0.


Section 4 - Nanite Density Monitors Sub-Quest	[move to Zephyr file later?]

Chapter 1 - Getting Started

ndmlist is a list of text that varies.  ndmlist is usually {"Beach", "Red Light District", "High Rise District", "Park"}.

to say zephyrmatt1:
	say "     You go up to Larissa at the counter and inform her that you're here on Dr. Matt's behalf to exchange information.  She glances up from the electronic game she's playing to pass the time.  'Oh, hey.  Head Office said someone would be coming by for that.'  She sets her game aside and glances up at you between flipping through the documents.  'If you're going around the city looking for work, we've got a bit of something for you to do.  HQ says it needs to be done ASAP, but we don't have the manpower.  If you could take care of that, I'll make sure these get a rush on top of paying you for the job.  Sound good?'";
	say "     Understanding that Dr. Matt needs this information and that you'd best get on Zephyr's good side to get it, you nod ask her what needs to be done.  'Excellent!  We can't really go hiring you on right now, but even working for us freelance will really help you in the long run.  Zephyr's moving up in the world and you really want to be part of the team, trust me,' she says with a knowing smile.";
	say "     'Now, what we need you to do is place a few of these nanite density monitors at a few key locations in the city.  They'll help us detect the prop-' she stops herself short.  'Well, a temp doesn't need to know the details.  They measure some stuff about the nanites.  Perfectly safe,' she adds reassuringly.  'We've set a few up already nearby, but HQ wants them placed at four other key locations across the city: The downtown high rise district, the city park, the beachfront area and the seedy red light district.  They should be placed in open, elevated locations where they won't be disturbed.  Once you get to an area, try hunting around for a ['][bold type]detector site[roman type]['] to find an appropriate place to set it up.'";
	say "     She heaves a small suitcase onto the counter and pops it open.  She takes a moment to demonstrate how to activate them, then closes it up and slides the case to you.  'They come equipped with a GPS transponder, so we'll be able to know if they've been properly installed or not, so don't get any funny ideas about just dumping them somewhere or sticking them in a few alleys.  They've got to be outside in the open and somewhere high up.'  Grabbing the heavy case, you sigh and head off, hoping this job will be as easy as she claims, but knowing it won't be somehow.";
	increase carried of nanite density monitor by 1;
	now beach detector site is unresolved;
	now red light detector site is unresolved;
	now high rise detector site is unresolved;
	now park detector site is unresolved;
	now hp of doctor matt is 17;


to say zephyrmatt2:
	say "     'Don't forget about taking care of those nanite detection monitors.  Our system shows that there [if number of entries in ndmlist is 1]is still one[otherwise if number of entries in ndmlist is 2]are still two[otherwise if number of entries in ndmlist is 3]are still three[otherwise]are still four[end if] left to be placed.  We won't be able to pay you for the work until the whole job is completed.  Remember, if you get this done, I'll put a rush on that request from Dr. Matt for you,' she says with a bureaucratic smile that tells you that you have no real choice in the matter.";

to say zephyrmatt3:
	say "     Larissa looks up from some papers as you step over to her desk, telling her that you've got all four of them in place.  She taps a few keys on her computer and nods.  'We've got all four active and transmitting data.  Their placement seems... good,' she says after a pause.  'Very good, even.  Nicely done.'  Remembering the effort involved, you nod politely and bite back a comment about how it better well be good enough.";
	say "     'I'll inform head office that Dr. Matt's completed his end of the bargain,' she adds, sliding you a CD-ROM.  'The data's encrypted and Dr. Matt - what an odd name - will be sent the key electronically.'  You take the disk and tuck it away somewhere safe.";
	say "     The woman slides you a credit voucher.  'There you go.  That's two hundred free credits, good for any place that accepts the new currency of the new world,' she says with a smile.  Again, you have to bite your tongue from saying that this is just about the only place around that takes them right now.  You should at least be able to get some supplies or some gear from these guys.";
	increase freecred by 200;
	now hp of doctor matt is 18;


Chapter 2 - The Situations

Book 1 - Beach

Beach Detector Site is a situation.  It is resolved.
The sarea of Beach Detector Site is "Beach".

Instead of resolving a Beach Detector Site:
	say "     Keeping an eye out for an appropriate spot to place the device for Zephyr, you notice a tall outcropping of rock out in the water that you might be able to scale.  It is certainly closer closer than most of the other rocks as well, so you should be able to swim out to it";
	if nanite density monitor is not owned:
		say ".  You should return here with the device so you can install it.  Hopefully it's waterproof.";
	otherwise:
		say ".  You remove one of the detectors from the suitcase and hide the case among some tall grass.  Hoping the thing is waterproof, you bundle it up in a couple of plastic bags you have in your pack just in case, then head into the water, swimming out towards the rocky spire.  As you struggle to make it out there, a creature moves in to attack.";
		if a random chance of 1 in 2 succeeds:
			challenge "feral sea dragon";
		otherwise if a random chance of 1 in 2 succeeds:
			challenge "hermaphrodite dolphin";
		otherwise:
			challenge "feral sea dragoness";
		if lost is 1:
			say "     Defeated, you are forced back to the beach.  You'll have to try again later and hope the creature has moved on.";
		otherwise:
			say "     With the creature defeated, you make it to the rocky spire.  You now must climb the wet stone to get to the top.  While parts of it are fairly easy to scale, there are a few difficult sections that make the climbing treacherous.";
			let bonus be ( dexterity of player + strength of player minus 20 ) divided by 2;
			let dice be a random number from 1 to 20;
			say "You roll 1d20([dice])+[bonus]: [dice + bonus]: ";
			if bonus + dice is greater than 16:
				say "You manage to safely make it up to the top!";
			otherwise:
				say "You manage to make it partway to the top on your first attempt, but slip as a large wave crashes against the spire and sends chilling water slamming against you.  You are bashed against the stone pillar and sent tumbling back down into the water.  You are scratched and bruised when you finally make it to the top on your second attempt.";
				decrease hp of player by 20;
			say "     Tearing open the bags, you pull out the device and place it on a smooth surface at the top of the spire.  Activating it, there is a whirring accompanied by a grinding sound as the screw bolts dig into the rock, locking it into place.  Given the height and the fresh sea breeze, you're quite confident the detector will get unobstructed readings of... whatever for Zephyr.  Your descent is thankfully easier, choosing to make an exhilarating dive from the fifty foot spire into the water and swimming back to shore.";
			remove "Beach" from ndmlist;
			now Beach Detector Site is resolved;
			say "[onelessndm]";


Book 2 - Red Light District

Red Light Detector Site is a situation.  It is resolved.
The sarea of Red Light Detector Site is "Red".

Instead of resolving a Red Light Detector Site:
	say "     While scouting around in the fancier parts of this neighbourhood, you spot a large nightclub and sex show with a huge neon sign.  Somehow the neon outline of a 25 foot tall, big breasted woman is still lit, flashing along with the name of the club.  It certainly seems to the be the tallest spot around, the sign rising high above the three storey building, dwarfing all around it";
	if nanite density monitor is not owned:
		say ".  Clearly the best spot around, you'll have to come back here with the device so you can install it.";
	otherwise:
		say ".  There is clearly a lot of activity still going on in this club, with rampant sex from a myriad of creatures both inside and out.  Going in from the front is simply out of the question.";
		say "     It takes some effort to work your way around to the back of the building, this area much denser in creature activity, probably due to the highly sexual nature of the place, but you eventually find a way around back and scale the fire escape.  On your way up, you spy several ongoing orgies inside the building, including one group which seems to be on display for the others, though there is little difference between the audience and the show save for the audience members paying a little more attention to the show than the other way around.  You find yourself briefly captivated by the display, watching [one of]a male lizard plowing into a smaller dog girl[or]twin cats sucking on a wolf's cock[or]a female hyena sandwiched between a cheetah stuffing her ass and a horse filling her cunt, their combined seed bloating her belly[or]a small, male tiger getting buggered by a tigress herm[or]a chimp in a suit getting sucked off by a bear[at random] and growing quite aroused.  You feel a strong compulsion to open the window and join them, which you have to struggle to fight down.";
		increase libido of player by 15;
		decrease humanity of player by 5;
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
		say "     Reaching the building's roof, you find that you are not alone.  There is a large, latex vixen here who seems to be lustfully enjoying sounds coming from the building below.  You try to slip around her quietly, but her eyes lock on you and she grins.";
		challenge "hermaphrodite latex vixen";
		if lost is 1:
			say "     Defeated, the hermaphrodite vixen banishes you from her rooftop, forcing you to return another time to try and place the detector after you've recovered.";
		otherwise:
			say "     Having dealt with the cherry red vixen, you let her flee down the fire escape and head over to the sign.  Looking it over, you are happy to find there's a few sets of maintenance rungs installed on the back so it can be scaled.  Climbing up carefully, you find a good spot near the top of the sign, affixing the device against the black back of the sign, helping to hide it.  When you turn it on, there is a whirr as the screws drill themselves into the surface, locking the box securely in place.  Pleased with your accomplishment, you head back down and get some distance between you and the highly active group of creatures around here.";
			remove "Red Light District" from ndmlist;
			now Red Light Detector Site is resolved;
			say "[onelessndm]";


Book 3 - High Rise District

High Rise Detector Site is a situation.  It is resolved.
The sarea of High Rise Detector Site is "High".
ndmhigh is a number that varies.

Instead of resolving a High Rise Detector Site:
	say "     While this part of the city has no shortage of tall buildings where the detector could be placed, other issues make most of them unsuitable.  Many of the buildings have been damaged by the aerial battles of some large creatures or have had their upper floors turned into the aeries.  Even those that aren't destroyed in this manner often show clear signs of habitation from large groups of infected creatures.  You do eventually come across one office building that seems less populated and sufficiently intact up to the top";
	if nanite density monitor is not owned:
		say ".  Clearly the best spot around, you'll have to come back here with the device so you can install it.";
	otherwise:
		say ".  Not looking forward to the long climb, you head into the building.";
		say "     You start to ascend the stairs, occasionally passing a passed-out creature who seems to have been assaulted during its own climb up the stairs.  Wary, you continue on";
		let T be a random number between 1 and 4;
		if T is 1:
			say ", but are met a few floors later by a pack of bunnies who open the stairwell door as you walk past.";
			challenge "rabbit pack";
		otherwise if T is 2:
			say ", but run into a pair of cougars descending the stairs quietly on their padded paws.";
			challenge "Cougar";
			if lost is 0:
				challenge "Cougar";
		otherwise if T is 3:
			say ", but are surprised as a creature leaps out from behind a partially open door.  Having heard you coming, it must have lain in wait until you moved past.  His surprise blow is uncoordinated, but does make you stumble on the steps.  You take [special-style-2]8[roman type]  damage.";
			now ndmhigh is 1;
			challenge "Zebra";
			now ndmhigh is 0;
		otherwise if T is 4:
			say ", but manage to make it to the top without incident.";
		if lost is 1:
			say "     Having been bested, you are forced to descend back down to the street.  You'll have to rest and recover before coming back to try again.";
		otherwise:
			say "     Making it to the top floor, you search around quietly, eventually finding the service entrance to the roof and make your way up there.  It is rather windy at the top of the tower, a pleasant change after your long, hot climb up the building.  The ascent has left you tired, hungry and thirsty, but you still have work to do before you can rest and head back down.";
			increase thirst of player by 12;
			increase hunger of player by 6;
			decrease hp of player by ( hp of player divided by 6 );
			say "     Heading over to the central spire, you place the black box against a flat spot and turn it on.  There is a whirr as the screws drill into the smooth stone and secure the detector in place.  You are about to congratulate yourself on a job well done when you hear the shifting of stone nearby.  Looking around, you notice that one of the decorative gargoyles lining the building's edge doesn't match the others and has begun to move.  Aroused from its nap by the sound of the device locking itself into place, the huge creature takes to the air and swoops around, coming in to attack you.";
			challenge "Gargoyle";
			say "     Your battle the with creature completed, you stagger back down to the street level, sore, tired and exhausted, but one step of this job completed at least.";
			remove "High Rise District" from ndmlist;
			now High Rise Detector Site is resolved;
			say "[onelessndm]";


Book 4 - Park

Park Detector Site is a situation.  It is resolved.
The sarea of Park Detector Site is "Park".

Instead of resolving a Park Detector Site:
	say "     Unsure where in the park you could place the device which would be suitable for Zephyr's requirements.  You somehow doubt sticking it in a tree will quite be enough to satisfy them.  As you travel the park, trying to find a worthwhile place, you spot the old, disused observatory on the hill at one end of the park.  Pretty much forgotten by the city as the light pollution made it largely unusable, it is still the highest point in the area";
	if nanite density monitor is not owned:
		say ".  Clearly the best spot around, you'll have to come back here with the device so you can install it.";
	otherwise:
		say ".";
		say "     You make your way across the park, backtracking along paths to avoid groups of creatures too large to safely fight.  Eventually you find your way to the observatory and climb the small hill up to it.  Approaching, you find the main doors open and are about to go inside to search for a way up when a growl comes from inside, followed by a long, white streak flying out and climbing into the air.  The oriental dragon creature flies around the observatory, looking for other intruders upon its home before zooming down to attack.";
		challenge "Yamato Dragon";
		if lost is 1:
			say "     The victorious dragon drops you off far from its home, leaving you to stagger back to the main path to recover before perhaps trying again.";
		otherwise:
			say "     Having beaten the dragon, you drive it off for the moment, but you decide it would be best not to tarry too long.  It may have friends and given how fast those creatures fly, they could be here soon.  You enter the observatory, most of the building being taken up by the one, large dome housing the telescope.  From the torn suit and the excessive amounts of dragon cum around, you wonder if perhaps one of the people working here became that creature.";
			say "     Setting such musings aside, you look around and quickly find a set of ladder rungs leading up to the shutter for the dome as well as an old manual crank for opening it.  With some effort, you manage to get the gate over the telescope, letting the [if daytimer is day]sunlight[otherwise]starlight[end if] in and climb up to the dome.  Taking an uncomfortable seat at the edge, you take a quick moment to scan around for any sign of the returning dragon before placing the device against the dome's outer wall and turning it on.  There is a sharp whine from the screws as the work to dig into the thick metal, eventually boring their way in and securing the device.  You climb back down, close the shutter to hide what you've done and make a run for it back down the hill, taking cover in the trees as you spot more of those dragons flying back to the observatory.  Finding you gone, the dragons quickly descend into lustfully mating to vent their frustrations at your escape.";
			remove "Park" from ndmlist;
			now Park Detector Site is resolved;
			say "[onelessndm]";

Chapter 3 - Alternate Drop-off Points

instead of entering the Confession Booth while "Beach" is listed in ndmlist and nanite density monitor is owned:
	say "     Stepping into the confessional, you ask the priestess if you may place one of the nanite density monitors atop the belltop.";
	say "     'Ah, those who cling to science are always seeking to explain that which is miraculous.  They, always able to find answers to their questions, never stop to truly appreciate the fact that it is still a miracle.  This is because they seek answers to the wrong questions in life,' she says serenely.  'But we will allow you to place your device, in thanks to the science which first brought about the nanites.  While some of the elements of this miracle were man-made, everything was put into place for a grander purpose - this great rebirth of the world.  You and those at Zephyr would do best to accept this truth rather than to seek greed from it.'";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
	say "     She signals for an altar boy to come and assist you with your task, escorting you up the bell tower.  As you climb the tower behind him, you chat with red panda altar [']boy['], learning that his name is Peter.  With his fluffy tail raised to keep it out of the dust, you are able to get a good peak under his short robe the whole way up if you like.  Peter, despite his shorter, five foot height is clearly an adult with a mature body with a slight pudge.  He does have a tight little ass and an ample sheath and balls which you can plainly see under the white cloth.  You talk with him, discussing what it's been like for each of you since the outbreak (though you edit your own version considerably).";
	say "     Once at the top, it takes a few knocks to get the warped hatch to the bell chamber open.  You can't help to snag a final peek under the red panda's robe before you both enter the top of the tower, noting that his cock's begun to poke free of its sheath.  The bell chamber is dusty and the bell system is in disrepair, clearly having fallen out of use even before the outbreak.  Peter explains that the church was unable to pay to maintain the bells for the last few years, so no one ever comes up here and that your device should be safe enough.  Opening one of the outer windows, you place the black box on the wooden ledge with the Zephyr logo turned to the wall to further hide it and turn it on.  After a brief pause, there is a whirring sound as the screw bolts dig into the wood, locking it firmly into place.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
	say "     With that chore done, you pause for a moment, wondering if you want to thank Peter in a more personal way for his help.  Shall you try to sex up the red panda?";
	if the player consents:
		say "     As he moves to head back down the hatch, you move in close to the red panda and slide your arms around his waist, running your hands over his tummy and down to his groin.  You whisper in his ear that you'd like to really thank him for all his help.  He moans softly and mumbles something about not giving into the base urges, so you slip up the front of his robe and fondle his sheath directly, pleased to see that his cock's slipped further from it.  You tell him that you think he's very cute and that you only want to show how much you appreciate his help, all while sliding your fingertips across his stiffening member.  He releases a soft [']wah['] of pleasure and pulls his robe up further, blushing redder under his fur.";
		if cunts of player > 0:
			let baby be 0;
			if child is born or gestation of child is not 0, now baby is 1;
			say "     Eager to get that cock into you, you guide him to lay back on the dusty floor and climb atop him.  His paws run over your body as you hold his penis in position and sink your pussy down around it.  The wah releases a wah of pleasure as your cunt envelops his maleness and you start riding up and down it.  Despite his small stature, he's got an impressive eight inch cock that pulse and throbs inside you as you fuck.  His nimble paws caress your breasts and tease your nipples as the russet furred fellow squirms in delight beneath you.  You moan in pleasure as he releases another, louder wah as he cums hard, blasting his thick seed into your pussy and up into your womb.[impregchance]";
			if baby is 0 and gestation of child is not 0:
				now facename of child is "Red Panda";
				now bodyname of child is "Red Panda";
				now skinname of child is "Red Panda";
		otherwise if cocks of player > 0 and scalevalue of player > 1:
			say "     Being [if scalevalue of player is 2]the same size as him[otherwise]larger than him[end if], you decide to mount the sexy male.  Without removing your hand from his cock, you guide the red panda onto all fours, smiling at how his tail arches up and twitches as he presents himself.  Deciding not to tarry too long in case someone comes to check on you both, you line up your cock with his tight pucker and sink slowly into him[if cock length of player > 16].  He slaps both paws over his muzzle as he releases a long, muffled wah as you slowly push your massive meat into him, bulging his furry tummy outwards to accommodate it[otherwise if cock length of player > 8].  He slaps a paw over his muzzle as he releases a muffled wah as you slowly push your large meat into him, stuffing the little fellow full[otherwise].  He releases another wah of pleasure as you slowly push your meat into him[end if].  Peter's shaft throbs in your hand, dribbling precum onto the dusty floor as you fuck him before eventually leaving a large, messy stain of red panda cum there as you blast your own load into him.";
		otherwise if cocks of player > 0 and scalevalue of player is 1:
			let baby be 0;
			if child is born or gestation of child is not 0, now baby is 1;
			say "     Being smaller than the red panda, he guides you down onto all fours and climbs atop you.  You stifle a moan as he moves his cock into position at your back door, sinking himself slowly into your tight rear.  His stiff cock spreads you open gently as he starts thrusting while a paw moves around to stroke your [if cocks of player > 1]shafts[otherwise]shaft[end if].  His soft fur rubs against your back as his pudgy belly rests atop you and his plump balls slap against you with each thrust.  You go at this for several minutes until the red panda presses his muzzle against your neck and releases a muffled wah of pleasure, cumming hard inside you.  You can feel his hot seed filling your ass and your climax hits as well, blasting your hot seed across the dusty floor.[mimpregchance]";
			if baby is 0 and gestation of child is not 0:
				now facename of child is "Red Panda";
				now bodyname of child is "Red Panda";
				now skinname of child is "Red Panda";
		otherwise:
			say "     Lacking any sexual organs of your own, you drop to your knees in front of the red panda and stuff his cock into your mouth.  You tease your tongue across his leaking shaft and eagerly start sucking him off.  He rubs a paw over your head as the other covers his muzzle to muffle a wah of pleasure.  You work his penis with your mouth, tongue and lips until finally he can't take any more and Peter releases another muffled wah as he cums hard, flooding your mouth with his tasty load.";
		say "     Your quick fun over, he gives you a kiss and nuzzles you before leading you back down into the church.  As he descends, he tries his best to wipe his dusty robe clean.  Once downstairs, he gives you another quick kiss before dashing off to the confessional.";
	otherwise:
		say "     You decide to just speak your thanks to the red panda and follow him back down the steps, pleased with yourself at your ingenuity in placing it here.";
	remove "Beach" from ndmlist;
	now Beach Detector Site is resolved;
	say "[onelessndm]";

ndmLisa is a truth state that varies.  ndmLisa is normally false.

instead of conversing the Lisa while "Red Light District" is listed in ndmlist and nanite density monitor is owned and ndmLisa is false:
	say "     You decide to ask Lisa if it would be okay to put the detector on top of her porn store.  It might be as tall as some of the other buildings, but it would certainly be a safer spot, so you're willing to give it a try.  As you start to bring up the topic, the mousetaur gets very upset.  'Zephyr?  You're helping those greedy bastards?  I've been hearing stuff about them and you shouldn't get involved with them.  They're bad news and it's going to get messy when the infected people around here have had enough of their money-grubbing scientists.'";
	now ndmLisa is true;

instead of conversing Alex while "High Rise District" is listed in ndmlist and nanite density monitor is owned:
	say "     Looking around Alex's high rise condo, you decide to ask him if it would be alright to install the device from Zephyr on his balcony.  'Hmmm... Zephyr?  Aren't they some kind of R&D company?  Are they looking into this problem?  Sure!  It'll be good to know we're helping to fix this mess.  So, what does it do?' he asks in a spurt of manic energy.  You do your best to explain what little you know as you head out with him onto the balcony and find a suitable spot next to his now-useless air conditioner.  Activating the device, there is a whirr as the screws drill into the concrete, securing it in place.  You head back inside, thanking the ferrety lawyer for his help.";
	remove "High Rise District" from ndmlist;
	now High Rise Detector Site is resolved;
	say "[onelessndm]";


Chapter 4 - The NDM item

Table of Game Objects (continued)
name	desc	weight	object
"nanite density monitor"	"[ndmdesc]"	20	nanite density monitor

to say ndmdesc:
	say "     The suitcase you were given at Zephyr is a high-security model with digital locking codes.  Inside [if number of entries in ndmlist > 1]are the remaining nanite density monitors[otherwise]is the remaining nanite density monitor[end if].  These are unassuming black boxes about six inches on each side.  There are no visible entry points, cameras or other detectors you can recognize.  Aside from the tips of four screwheads at the bottom corners, the black cubes are smooth and featureless save for the Zephyr company logo on one side.";
	if the number of entries in ndmlist is 1:
		say "     With only one last cube remaining to be placed, you recall that Larissa said Zephyr wanted one placed at the [ndmlist] as well.  You should make your way there and [bold type]hunt[roman type] for a suitable ['][bold type]detector site[roman type]['] in the area.";
	otherwise:
		say "     With [the number of entries in ndmlist] remaining to be placed, you recall that Larissa said Zephyr wanted the others placed at the [ndmlist] areas.  You should make your way there and [bold type]hunt[roman type] for a suitable ['][bold type]detector site[roman type]['] in those locations.";

nanite density monitor is a grab object.
it is part of the player.
It is not temporary.

to say onelessndm:
	repeat with y running from 1 to number of filled rows in table of game objects:
		choose row y in table of game objects;
		if name entry is "nanite density monitor":
			decrease weight entry by 5;
			break;
	if weight entry > 0:
		say "     With one less device in it, the carrying case is now lighter.";
		increase score by 20;
	if weight entry is 0:
		say "     With the last device in place, you discard the empty carrying case.  You should report back to Zephyr now that your task is completed.";
		increase score by 40;
		now carried of nanite density monitor is 0;


Main Storyline ends here.
