Version 5 of Medical Checkups by Stripes begins here.
[ Version 4.0 - Main Storyline tie-in - Stripes]
[ Version 5.0 - Added cunt pills - Kurainyx]
[ Version 5.1 - Easier cunt pill access for males - Kurainyx]
[ Version 5.2 - Added Black Wasp parasite removal - Kurainyx]
[- Originally Authored By: Hellerhound -]

Section 1 - Pediatrics Lobby

Pediatrics door is a door. "The city lies out of the huge hole in the roof and south wall, jagged edges making the going difficult, but passable.".

Table of GameRoomIDs (continued)
Object	Name
Pediatrics Lobby	"Pediatrics Lobby"

Pediatrics Lobby is a room. "You're in the lobby of a pediatrics clinic, surrounded by utter chaos. The formerly cushy seats have been ripped apart, their stuffing lying in heaps on the ground and even the wooden frames smashed to pieces. Claw-marks gouge the floor and walls. Patches of dried cum are almost everywhere, with even a steak of it on the ceiling. This makes moving around in here somewhat of an obstacle course, unless you want to step in something. A pair of metal doors to the deeper rooms of the clinic are still intact, battered but apparently resistant enough to ward off whatever creature or creatures did all this.".
Pediatrics Lobby is fasttravel.
The earea of Pediatrics Lobby is "Outside".
Pediatrics door is dangerous.
Pediatrics Lobby is north of Pediatrics door.

Table of GameRoomIDs (continued)
Object	Name
Wandering the City	"Wandering the City"

Wandering the City is a room.
Wandering the City is south of Pediatrics door.
The marea of pediatrics door is "Outside".
Doctor's Office is north of Pediatrics Lobby.

Table of GameRoomIDs (continued)
Object	Name
Doctor's Office	"Doctor's Office"
Doctor's Office	"Doctors Office"

Doctor's Office is a room. "A doctor's office, this one is a wreck. There are stains everywhere and food and water stockpiled in the cabinets. The clock is no longer running, and an oil lamp stands on the blue marble counter, on and burning. It fills the air with smoke. You idly wonder what happened to the smoke detectors.".

the scent of the Doctor's Office is "The doctor's office smells of antiseptic and aroused lizard scents.".

the scent of Pediatrics Lobby is "With the numerous cum stains here, it hard to smell anything but that.".

instead of going north from the Pediatrics Lobby while ( HP of doctor Medea is 0 and Medeaget is 0 ):
	say "Examining the door to the north, you can hear some movement behind it and decide to risk knocking, asking if they need any assistance. 'Thank you, no. I've already been quite thoroughly taken care of, I think,' a female voice responds. Clarifying that you are a survivor and that you meant if they needed any help in there, you can hear the clatter of a bundle of keys, then the click of the door being unlocked, allowing you entrance. 'Well, perhaps I can be of assistance to you, then,' the voice responds. The female voice does seem a little strange and you pick up the sound of clicking claws as she moves around inside, making you reconsider actually going in.";
	now HP of doctor Medea is 1;

Section 2 - Doctor Medea

Table of GameCharacterIDs (continued)
object	name
Doctor Medea	"Doctor Medea"

Doctor Medea is a person. "A doctor, by the name on the door label, [']Doctor Medea['], is busily mixing vials here.".
Doctor Medea is in Doctor's Office.

the scent of Doctor Medea is "The doctor smells of female lizard, though there's a hint of male musk in there as well.".

Medeaget is a number that varies.
Medeaub is a truth state that varies. Medeaub is usually false.
ovipregMedeatalk is a truth state that varies. ovipregMedeatalk is usually false.
Medeapanda is a truth state that varies. Medeapanda is usually false.
Medeapill is a truth state that varies. Medeapill is usually false.

Description of Doctor Medea is "[MedeaDesc]".

to say MedeaDesc:
	project the figure of Medea_face_icon;
	say "     Doctor Medea is a relatively human lizard, with her scaly skin having shades of ochre and yellow. Two spiky ridges run along the sides of her head and down her back, starting at the eyes and vanishing beneath the collar of a professional-looking light green blouse and skirt combo with a doctor's white coat overtop[if Park Entrance is known]. She looks like she had a run-in with one of those lizards at the park[end if][if HP of doctor Medea >= 5 and lust of doctor Medea >= 3]. The doctor's had to loosen her blouse and skirt to make room for the rounded bulge in her belly from an advancing pregnancy of her own[else if Medeaget > 0]. There is now a darker line running down her skirt to where some whitish cum is dripping. It almost looks like she came in herself, since the door was dust covered except for your recent marks[end if].";

Conversation of Doctor Medea is { "Babies!" }.

instead of conversing the Doctor Medea:
	project the figure of Medea_face_icon;
	if PlayerMet of Medea is false: [never talked before]
		say "     Doctor Medea is a relatively human lizard, clothed, with scales in shades of ochre and yellow[if park entrance is known]. You suspect she got caught in the park initially[else]. You wonder where she got such an interesting infection[end if]. 'Hello. I am Doctor Medea. I used to work here, and am only still here because the monster that broke in was too dumb to read the [']Pull['] sign on the doors and just tried to ram its way in. The condition of the lobby keeps the other monsters away, thinking this place has already been looted. Perhaps I could help you with something?' she asks with a helpful smile.";
		now PlayerMet of Medea is true; [met and talked to the character]
	else:
		say "     You approach Doctor Medea again. All that is different is there is now a darker line running down her skirt to where some whitish cum is dripping. It looks like she came in herself, since the door is still dust covered except for your marks. 'Have you come looking for some help with your pregnancy needs?' she asks with more interest than a doctor perhaps should.";
	if HP of Doctor Matt is 20:
		say "     Speaking with the lizard doctor, you tell her about [if HP of Doctor Matt is 20]Dr. Matt[else]Dr. Mouse[end if] and his research. She seems only mildly interested at first until you bring up the fact that he'd like access to what she's discovered about the effects of the infection in regards to pregnancy. 'As you've likely witnessed, the nanites have numerous effects on pregnancy and reproduction in general. ";
		if Medeaget < 3:
			say "I'm terribly under-supplied at the moment and thus have only be able to learn a little while assisting the rare patient seeking my help. Were you able to assist me in improving conditions here, I might be able to do and learn more,' she says with a grin.";
			now HP of Doctor Matt is 21;
		else if HP of doctor Medea >= 5 and lust of Doctor Medea >= 3:
			say "You have been of considerable assistance, both in gathering supplies and as a patient. Thanks to your help, there's much I've been able to learn about the nanites and their manipulations of the reproductive process.";
			say "[Medeamattcomplete]";
			now HP of Doctor Matt is 22;
		else:
			say "There are more supplies I need to be able to expand the range of services I can provide to my patients. With those, I'll also be able to learn more about the nanites and their manipulations of the reproductive process,' she says with a grin. Clearly she knows she's got you over a barrel, leaving you stuck fetching whatever she wants.";
			now HP of Doctor Matt is 21;
	else if hospquest is 20:
		say "     Speaking with the lizard doctor, you inform her that Dr. Mouse has sent you to obtain her case files and notes. You do your best to be intimidating, letting her know that this is not a request while still couching it in terms of medical cooperation and such. While clearly at a disadvantage, the weak lizard seems only mildly interested in what you're saying at first. It's only when you make it clear that you want access to everything she's discovered about the effects of the infection in regards to pregnancy does she give you her full attention. 'Oh. Now why didn't you just say so? I get threatened by every other patient that comes in here, but rarely do they take an interest in my work beyond their immediate needs.";
		say "     'As you've likely witnessed, the nanites have numerous effects on pregnancy and reproduction in general";
		if Medeaget < 3:
			say "     I'm terribly under-supplied at the moment and thus have only be able to learn a little while assisting the rare patient seeking my help. Were you able to assist me in improving conditions here, I might be able to do and learn more,' she says with a grin.";
			now hospquest is 21;
		else if HP of doctor Medea >= 5 and lust of Doctor Medea >= 3:
			say "     You have been of considerable assistance, both in gathering supplies and as a patient. Thanks to your help, there's much I've been able to learn about the nanites and their manipulations of the reproductive process.'";
			say "[Medeamousecomplete]";
			now hospquest is 22;
		else:
			say "     There are more supplies I need to be able to expand the range of services I can provide to my patients. With those, I'll also be able to learn more about the nanites and their manipulations of the reproductive process,' she says with a grin. Clearly she knows she's got you over a barrel, leaving you stuck fetching whatever she wants.";
			now hospquest is 21;
	else if HP of Doctor Matt is 21 or hospquest is 21:
		say "[Medeaadjustments]";
	else if Player is female:
		say "[Medeaadjustments]";
	else if Player is not female:
		if HP of Doctor Medea is 1:
			if Player is mpreg_ok:
				say "     'I cannot help you. I specialize in childbirth and minor illnesses. As the latter are not occurring with the nanite plague and you lack a womb...' You interrupt the reptilian doctor here as you start to explain your unusual ability to become pregnant rectally, she seems quite surprised and intrigued. 'I had started to consider such possibilities induced by the infection, but you're the first case I've been able to study. Please, you must let me examine you!' she says excitedly, taking your hands and rushing you towards the examination table.";
				say "     Climbing up, she gets you onto all fours and starts with a cursory examination of your anus before spreading some cool gel over it and sinking a gloved finger into you. She probes around your backside, causing a few moans of pleasure. As her examination continues, you can hear her panting heavily as well as she stimulates [if Player is male]your prostate, making your cock hard and getting you to dribble pre onto the padded seat[else]you[end if]. She leans atop you, pounding her fingers hard and fast into you [if Player is male]until you cum messily[else]until you're left panting and moaning[end if] from the vigorous stimulation.";
				if Medeaget is 0 or Medeaget is 1:
					say "     Doctor Medea straightens herself up and removes the glove, trying to act professional again, despite the rivulets of white cum you see running down her thighs. 'You are very interesting. This has been most... instructive. I believe I may be able to provide you with at least some assistance.'";
					now HP of Doctor Medea is 5;
				else:
					say "     Doctor Medea straightens herself up and removes the glove, trying to act professional again, despite the rivulets of white cum you see running down her thighs. 'You are very interesting. This has been most... instructive. I believe I should be able to provide you with some assistance as I would my female patients.'";
					if Medeaget is 2, now Medeaget is 3;
					now HP of Doctor Medea is 6;
			else if Medeaget is 0:
				say "     'I cannot help you. I specialize in childbirth and minor illnesses. As the latter are not occurring with the nanite plague. Maybe I could help if you were a female?'";
				say "     She pauses and ponders for a moment. 'There is another possibility as well. With the changes the spreading infection can create, it may be possible to allow a male individual to form a surrogate womb for impregnation. I had just started to look into those possibilities. Perhaps you might be interested in becoming my test subject for this. To accomplish this, I would first need you to obtain some medical supplies I would need. The delivery truck was supposed to arrive the day of the outbreak, so you may be able to locate it. Here is a list of what I need. I would need those supplies regardless if you choose to undergo this procedure or if you find a means to become female.' She provides you with the list and describes the truck used by the delivery company, asking that you keep an eye out for it.";
				now Medeaget is 1;
				now HP of doctor Medea is 2;
			else if Medeaget is 1:
				say "     'I cannot help you. I specialize in childbirth and minor illnesses. As the latter are not occurring with the nanite plague. Maybe I could help if you were a female?'";
				say "     She pauses and ponders for a moment. 'There is another possibility as well. With the changes the spreading infection can create, it may be possible to allow a male individual to form a surrogate womb for impregnation. I had just started to look into those possibilities. Perhaps you might be interested in becoming my test subject for this. To accomplish this, I would need you to obtain those medical supplies I had mentioned previously. I would need those supplies regardless if you choose to undergo this procedure or if you find a means to become female again.' She provides you with the list and describes the truck used by the delivery company, asking that you keep an eye out for it.";
				now HP of doctor Medea is 2;
			else if Medeaget is 2 or Medeaget is 3:
				say "     'I cannot help you. I specialize in childbirth and minor illnesses. As the latter are not occurring with the nanite plague. Maybe I could help if you were a female?'";
				say "     She pauses and ponders for a moment. 'There is another possibility as well. With the changes the spreading infection can create, it may be possible to allow a male individual to form a surrogate womb for impregnation. I had just started to look into those possibilities. Perhaps you might be interested in becoming my test subject for this. Thankfully, you've already obtained the medical supplies I'd requested earlier. I now just need you to obtain some more specialized equipment. Your best chance of locating it would be at either the [bold type]Maternity Ward[roman type] or the [bold type]Obstetrics Department[roman type] of the City Hospital for these supplies I require.'";
				now Obstetrics Department is active;
				now Maternity Ward is not resolved;
				now HP of doctor Medea is 3;
				if Medeaget is 2, now Medeaget is 3;
		else if HP of Doctor Medea is 2:
			if Medeaget is 2:
				say "     You present the equipment and supplies to Dr. Medea, who seems quite pleased with your haul. 'Yes, it seems you've obtained everything I'd listed. We're halfway there, now. For the procedure itself, I will also be needing some more specialized equipment. Your best chance of locating it would be at either the [bold type]Maternity Ward[roman type] or the [bold type]Obstetrics Department[roman type] of the City Hospital for these supplies I require.' Alternatively, with these supplies you've brought back, I can continue work on some special pills that you might be interested in.";
				now Obstetrics Department is active;
				now Maternity Ward is not resolved;
				now HP of Doctor Medea is 3;
				now Medeaget is 3;
			else:
				say "     'I would like you to try to obtain those supplies the clinic was supposed to receive. Without them, there's little I can do to assist you.'";
		else if HP of Doctor Medea is 3:
			say "[Medeaadjustments]";
		else if HP of Doctor Medea is 4:
			say "     When you place the requested equipment on the counter for Dr. Medea, she is quite pleased. 'Excellent! Give me a few moments to look this over and prepare, but we should be able to start any time now.'";
			now HP of Doctor Medea is 6;
		else if HP of Doctor Medea is 5:	[Able to check for M-Pregnancy]
			say "[Medeaadjustments]";
		else if HP of Doctor Medea is 6:
			if Player is mpreg_ok:
				say "     'You are currently able to carry a male pregnancy.'";
				say "     [bold type]'Would you like me to remove that ability?' the lizard doctor asks.[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Yes.";
				say "     ([link]N[as]n[end link]) - No.";
				if Player consents:
					LineBreak;
					if gestation of the child > 0:
						say "     'You're already pregnant, so I cannot do that at this time,' she says.";
					else:
						remove "MPreg" from the feats of Player;
						say "     She seems a little disappointed, but nods and goes ahead with the procedure, removing your ability to become impregnated from anal sex.";
				else:
					LineBreak;
					say "[Medeaadjustments]";
			else if Player is not mpreg_ok:
				say "     'You are currently unable to carry a pregnancy as a male.'";
				say "     [bold type]'Would you like me to grant you the ability to become pregnant as a male?' she asks.[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Yes.";
				say "     ([link]N[as]n[end link]) - No.";
				if Player consents:
					LineBreak;
					say "     She seems pleased at the prospect of helping you become pregnant by granting you this strange ability. The procedure is swiftly accomplished. The lizard doctor smiles and strokes over your belly, grinning at the thought of it swelling with life.";
					FeatGain "MPreg";
					say "[Medeaadjustments]";
				else:
					LineBreak;
					say "     The lizard doctor seems a little disappointed in your reply, but nods. 'Until you're able to become pregnant, there's not much more that I can do for you. If you won't accept to undergo the procedure, you'd best go out into the city and change into a female or herm,' she says.";
	CheckAbandonedTruck;

to CheckAbandonedTruck:
	if Medeaget is 1:
		now Abandoned Truck is active;
		now Abandoned Truck is not resolved;

Section 3 - Medical Adjustments

to say Medeaadjustments:
	now sextablerun is 0;
	if Medeaget is 0:
		say "     'I could determine if you are pregnant. For anything past that, I'm going to need your assistance in obtaining the necessary supplies. With those, I could make you more fertile, or sterilize you. With even more equipment, I might be able to do even more than that,' she says with an odd eagerness in her tone.";
		say "     'I would be able to render further assistance to you, changing some of the fertility-related aspects of your altered body, but I lack the materials necessary for such an operation,' the lizard doctor says. 'There should be some in a medical delivery truck that was supposed to arrive the day the infection started. Here is a list of the items I'll need.' She provides you with the list and describes the truck used by the delivery company, asking that you keep an eye out for it.";
		now Medeaget is 1;
		CheckAbandonedTruck;
		stop the action;
	else if Medeaget is 1:
		say "     'I could determine if you are pregnant and check on it with my current instrumentation. For anything more, you'll need to get those materials I asked about earlier. They should be in the abandoned truck I described.'";
		CheckAbandonedTruck;
		stop the action;
	else if Medeaget is 2:
		say "     'Wonderful! You managed to get the supplies. Thanks! I can now provide you with more services and resume my work on my pills again!' the lizard doctor says happily.";
		now Medeaget is 3;
	else if Medeaget is 3:
		if Cunt Count of Player < 1 and HP of Doctor Medea is 3:
			say "     'I still would like for you to try to obtain that specialized equipment I've described. Without it, I cannot complete the procedure. If you're still interested, you should try searching the City Hospital for those items.' Additionally, with the supplies you had brought back earlier, I have developed some special pills that you might be interested in.";
		else:
			say "     'In thanks for your help, I can provide you with several services. As before, I can determine if you're pregnant and provide some information on the fetus. I can also adjust your degree of fertility [if lust of Doctor Medea >= 3]and your estrus cycle [end if]if you'd like. Would you like me to do that? I could make you extra fertile or even sterile if you'd like.' While she seems rather eager about the first, she's clearly less enthused about the second.";
	if Medeaub is false and Medeaget >= 3 and player is female and Resolution of Inner Predator is not listed in { 0, 99 }:
		if Resolution of Inner Predator is 1:
			say "     As you're listening to her, you feel that dark hunger inside you well up. That heady scent of reptilian arousal starts to make your mouth water. Your reaction does not go unnoticed and the doctor urges you to take a seat while she examines you. 'Hmmm... this is most interesting. And you say that your body's become capable of ingesting prey nearly your own size whole? Most intriguing.'";
			WaitLineBreak;
			say "     She runs a few quick tests and poking your belly with some very long needles. 'This is by no means my field of expertise, so I can't really do anything to help you cope with this hunger. But the effect it's had on your nanites and your body may be used in another manner. Several unusual chemicals are being produced by the tissues of your digestive system to allow you to stretch and engulf your meals. Were I to inject these chemicals into your reproductive system, I expect similar results would occur for it,' she says, her regular excitement returning. 'This would allow you take your intended victim into your uterus, essentially [']unbirthing['] them. Imagine something like in vitro fertilization writ large, with it being a mature creature being used instead of a test-tube baby to become your fetus. Similar behavior's been observed among a few creatures in the city, but it is a rare ability.' The more she talks about it, the more worked up she gets, this plan of hers clearly exciting both her scientific curiosity as well as her strange fascination with all things pregnancy-related.";
			say "     'Now, this alteration would be a one-way procedure, though you should be able to resist the urge... if you're willing to try, that is. I should expect you'd not want to,' she adds as she rubs her lower belly, pausing as she imagines what it would be like. 'I should mention that I won't risk the procedure should you already be pregnant. You'll just have to come back at another time instead.'";
		else: [if Resolution of Inner Predator is 2]
			say "     You pull out the vial and its related documents out of your pack and hand them over to Doctor Medea, explaining to her how you came across the mysterious briefcase as you do. She places the vial on a counter and begins to examine the documents while you sit down for a bit. As she continues reading, you notice her face slowly change expressions, first with intrigue, then what appears to be a sly smile starts to form. As she reaches the last pages you notice how her hand slowly begins to slide inside her coat, and a familiar lustful scent wafts around your nostrils. She continues to do so for a few seconds after she finishes the last page before snapping out of her lustful haze and adjusting her coat before she addresses you. 'Well this is... quite a fascinating discovery you have uncovered here. It would seem that this vial contains pre-programmed nanites that would infuse its host with a snake's ability to consume prey of bigger size in addition to an enhanced metabolism that would allow them to quickly consume the ingested prey.'. She smiles as she continues: 'Interestingly though, it would seem that a vaginal application of these nanites have an altered effect, causing the hosts vaginal walls to be able to expand and consume their prey into its uterus where they would quickly regress biologically into their infancy, effectively unbirthing them!' Already getting visibly heated up again, she attempts to finish before she loses it: 'The documents also mention a possible desire to unbirth prey forming after the process is complete, but not much else is known.'";
			WaitLineBreak;
			say "     'If you'd so desire, I'd be willing to perform the procedure on you and assist you in testing out the effects. I believe it would be quite... stimulating to study'. As she finishes you notice her hand already back inside her coat and decide to give her some private time to herself and walk outside. The thought of accepting the procedure runs through your tainted mind, dirty thought of turning these defeated feral infected into your brood consumes your mind until you shake off the thoughts and continue walking. Should you decide to go with the procedure you would only need to ask the doctor to perform it.";
		now Medeaub is true;
	blank out the whole of table of fucking options;
	[]
	if Player is female or player is mpreg_ok:
		choose a blank row in table of fucking options;
		now title entry is "Check for pregnancy";
		now sortorder entry is 1;
		now description entry is "Check on a potential pregnancy";
	[]
	if HP of Doctor Matt is 21 or hospquest is 21:
		choose a blank row in table of fucking options;
		if HP of Doctor Matt is 21:
			now title entry is "Doctor Matt's request";
		else:
			now title entry is "Doctor Mouse's demand";
		now sortorder entry is -50;
		now description entry is "Discuss obtaining her notes";
	[]
	if Medeaget is 3:
		if "Selective Mother" is listed in feats of Player:
			choose a blank row in table of fucking options;
			now title entry is "Remove impregnation control";
			now sortorder entry is 2;
			now description entry is "Remove your ability to pick if a mate can impregnate you. (-Selective Mother)";
		[]
		else if "Fertile" is listed in feats of Player:
			choose a blank row in table of fucking options;
			now title entry is "Remove excess fertility";
			now sortorder entry is 2;
			now description entry is "Restore your normal level of fertility. (-Fertile)";
			[]
			choose a blank row in table of fucking options;
			now title entry is "Gain impregnation control";
			now sortorder entry is 3;
			now description entry is "Bestow the ability to pick if a mate can impregnate you. (+Selective Mother)";
		[]
		else if "Sterile" is listed in feats of Player:
			choose a blank row in table of fucking options;
			now title entry is "Remove sterility";
			now sortorder entry is 2;
			now description entry is "Restore your normal level of fertility. (-Sterile)";
		[]
		else:
			choose a blank row in table of fucking options;
			now title entry is "Gain increased fertility";
			now sortorder entry is 2;
			now description entry is "Increase your body's fertility. (+Fertile)";
			[]
			choose a blank row in table of fucking options;
			now title entry is "Become sterile";
			now sortorder entry is 3;
			now description entry is "Render you sterile. (+Sterile)";
		[]
		if "Sterile" is not listed in feats of Player and heat enabled is true:
			if lust of Doctor Medea >= 3 and heatlevel is not 1:
				choose a blank row in table of fucking options;
				now title entry is "Heat exam";
				now sortorder entry is 4;
				now description entry is "Examine the current state of your heat cycle";
		[]
		if "Sterile" is not listed in feats of Player and heat enabled is true and animal heat is true:
			if lust of Doctor Medea <= 2:
				choose a blank row in table of fucking options;
				now title entry is "Discuss heat control";
				now sortorder entry is 5;
				now description entry is "Discuss heat control with you";
			[]
			else if heatlevel is 1:
				choose a blank row in table of fucking options;
				now title entry is "Reactivate heats";
				now sortorder entry is 5;
				now description entry is "Allow you to go into heat again";
			[]
			else if heatlevel is 2:
				choose a blank row in table of fucking options;
				now title entry is "Block heats";
				now sortorder entry is 5;
				now description entry is "Prevent you from going into heat";
				[]
				choose a blank row in table of fucking options;
				now title entry is "Intensify heats";
				now sortorder entry is 6;
				now description entry is "Make your heats even more intense";
			[]
			else if heatlevel is 3:
				choose a blank row in table of fucking options;
				now title entry is "Restore normal heats";
				now sortorder entry is 5;
				now description entry is "Reduce your heat level to normal";
		[]
		if Player is impreg_ok:
			choose a blank row in table of fucking options;
			now title entry is "Oviposition";
			now sortorder entry is 7;
			now description entry is "Talk to you about egg-laying";
		[]
		if Medeaub is true and Player cannot UB and gestation of Child is 0:
			choose a blank row in table of fucking options;
			now title entry is "Gain unbirthing ability";
			now sortorder entry is 8;
			now description entry is "Allow you to unbirth your foes";
		[]
		if Medeapill is false:
			choose a blank row in table of fucking options;
			now title entry is "Pills";
			now sortorder entry is 9;
			now description entry is "Talk to her about her pills";
		[]
		if Medeapill is true:
			choose a blank row in table of fucking options;
			now title entry is "Cunt Pills";
			now sortorder entry is 9;
			now description entry is "Trade for her cunt pills";
		[]
		if insectlarva is true:
			choose a blank row in table of fucking options;
			now title entry is "Parasite";
			now sortorder entry is 10;
			now description entry is "See if Medea can do anything about the parasite inside of you";
		[]
		if resolution of Spreading Flowers is 9:
			choose a blank row in table of fucking options;
			now title entry is "Joanna's custom strain";
			now sortorder entry is 3;
			now description entry is "Request the doctor that she takes a look at the vial containing Joanna's strain";
		[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> ";
		get a number;
		if calcnumber is 0:
			if "Sterile" is listed in feats of Player:
				say "     Dr. Medea nods. 'Very well. We'll leave it at that, then,' she says, tidying up her instruments.";
			else:
				say "     Dr. Medea nods. 'Very well. We'll leave it at that, then. I hope you have an enjoyable and productive time,' she says, tidying up her instruments.";
			now sextablerun is 1;
		else if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if nam is "Check for pregnancy":
					say "     Doctor Medea takes out a machine and places it against your [BodySpeciesName of Player] abdomen. It buzzes, and she looks at the results. She ";
					if the gestation of the child > 0:
						[Checking for visible tails]
						let ShowTail be false;
						let Pureblood be false;
						if there is a name of TailName of Child in the Table of New Infection Parts: [creature already in the new table]
							choose a row with name of TailName of Child in the Table of New Infection Parts;
							if Tail Description entry is not "":
								now ShowTail is true;
						say "smiles. 'Congratulations, you are pregnant. ";
						if HeadSpeciesName of Child is TorsoSpeciesName of Child:
							if HeadSpeciesName of Child is BackSpeciesName of Child:
								if HeadSpeciesName of Child is ArmsSpeciesName of Child:
									if HeadSpeciesName of Child is LegsSpeciesName of Child:
										if HeadSpeciesName of Child is AssSpeciesName of Child:
											if HeadSpeciesName of Child is TailSpeciesName of Child:
												now Pureblood is true;
						if Pureblood is true:
							say "According to these readings, your child is a pureblood [HeadSpeciesName of Child]";
						else:
							say "According to these readings, it currently has a [HeadSpeciesName of Child] head, [TorsoSpeciesName of Child] front and [BackSpeciesName of Child] back. Your child has [ArmsSpeciesName of Child] arms, [LegsSpeciesName of Child] legs[if ShowTail is false] and a [AssSpeciesName of Child] behind[else], a [AssSpeciesName of Child] behind and a [TailSpeciesName of Child] tail[end if]";
						if "They Have Your Eyes" is listed in feats of Player:
							say ". Things do still seem to be in flux a bit though, from what I can see. Seems like your body is trying to make the child come out as a specific form, and I can't quite guarantee that it will still look like this when it is born.'";
						else:
							say ".'";
					else:
						say "shakes her head in disappointment. 'You are not pregnant.'";
				else if nam is "Remove impregnation control":
					remove "Selective Mother" from feats of Player;
					say "     Dr. Medea performs the procedure, altering your womb to no longer discriminate between which males can and cannot impregnate you. 'I hope you have an enjoyable and productive time,' she says, tidying up her instruments.";
				else if nam is "Remove excess fertility":
					remove "Fertile" from feats of Player;
					say "     Dr. Medea seems a little disappointed in your choice, but performs the procedure, removing your excessive fertility. 'There, you should have a normal level of fertility now. Well, normal for this new, rapidly gestating standard among the infected. I hope you will still have an enjoyable and productive time,' she says, tidying up her instruments.";
				else if nam is "Gain impregnation control":
					FeatGain "Selective Mother";
					say "     Dr. Medea performs the procedure, altering your womb to only accept a male's seed when you desire it. 'I hope you have an enjoyable and productive time,' she says, tidying up her instruments.";
				else if nam is "Remove sterility":
					FeatLoss "Sterile";
					say "     Dr. Medea performs the procedure with pleasure, removing the change that made you sterile. 'There we go. Much better,' she says. 'I hope you'll have an enjoyable and productive time now,' she adds, tidying up her instruments.";
				else if nam is "Gain increased fertility":
					FeatGain "Fertile";
					say "     Dr. Medea performs the procedure with pleasure, altering your body to be even more fertile. 'You should be much more fertile and also experience accelerated gestation thanks to this procedure. I hope you have an enjoyable and very productive time,' she says, tidying up her instruments.";
				else if nam is "Become sterile":
					if Player is impreg_now:
						say "     Dr. Medea shakes her head. 'I cannot perform such a procedure while you're pregnant. Guess we'll just have to skip it,' she adds cheerfully.";
					else:
						FeatGain "Sterile";
						say "     Dr. Medea seems particularly disappointed in your choice, but performs the procedure, rendering you sterile. 'There, you should no longer be able to produce offspring, except in rare cases. Be aware that the nanite infection may overcome this in time, but it should last at least until the rescue comes. Provided you don't change your mind and let me restore you, that is,' she says, sounding a little hopeful as she tidies up her instruments.";
				else if nam is "Heat exam":
					say "     The lizard doctor pokes and prods at you with a few instruments, throwing in the (mis)use of a few fingers in there as well[if inheat is true]. By the time she's done, you're left panting and moaning, much to her obvious delight[else]. By the time she's done, you aren't quite sure if you want it to continue or are glad it's over[end if]. She checks her data quickly and runs a couple of quick tests.";
					let defaultheat be true;
					choose row 1 in table of infection heat;
					if CockName of Player is a infect name listed in Table of infection heat:	[check name of heat]
						choose a row with a infect name of (CockName of Player) in Table of infection heat;
						if Player is female and fheat entry is false:	[no female heat for that form]
							choose row 1 in table of infection heat;
						else if Player is not female and mpregheat entry is false:		[no mpreg-heat for that form]
							choose row 1 in table of infection heat;
						else:
							now defaultheat is false;
					else:
						choose row 1 in table of infection heat;
					if animal heat is false:
						say "     'Currently, you are not being subject to any form of heat cycle due to [if Player is impreg_now]your pregnancy[else if Player is not impreg_able]your inability to become pregnant at the present[else]some change your body's undergone[end if].'";
					else if inheat is true:
						say "     'Well, you're currently in a heightened period of estrus. It is marked by increase arousal and a higher fertility rate[if defaultheat is false]. In your particular case, you are going through a [CuntSpeciesName of Player in lower case] heat[else]. In your particular case, you are going through a fairly common version of the heat cycle the infected go through[end if]. ";
						if heat cycle entry is heat duration entry:
							say "This particular heat is ongoing and so will not end until you become pregnant.'";
						else if turns in heat >= heat cycle entry or turns in heat < (heat cycle entry - heat duration entry) * 8:
							say "This particular round of heat is set to end at any moment.'";
						else if turns in heat >= ( heat cycle entry - heat duration entry ) * 8:
							let num be heat cycle entry * 8;
							now num is num - turns in heat;
							if heatlevel is 3:
								now num is num + ( num / 4 );
							say "I'd estimate this particular round of heat will [if heatlevel is 3]roughly [end if]last ";
							guesstimate time at num;
							say ".'";
					else:
						say "     'You are not currently in heat, though you are on an active estrus cycle,' she says with a hint of disappointment. 'When it starts up again, it will be marked by increased arousal and a higher fertility rate.' Saying this does seem to perk her back up a little[if defaultheat is false]. In your particular case, you are on a [CuntSpeciesName of Player in lower case] heat cycle[else]. In your particular case, you are on a fairly common version of the heat cycle the infected go through[end if] which should reach estrus ";
						if heat cycle entry is heat duration entry:
							say "at any moment. It will then be ongoing and so will not end until you become pregnant.'";
						else if turns in heat >= heat cycle entry:		[cycle to force restart]
							let num be ( heat cycle entry - heat duration entry ) * 8;
							if heatlevel is 3:
								now num is num - ( num / 5 );
							say "in [if heatlevel is 3]roughly [end if]";
							guesstimate time at num;
							say ".'";
						else if turns in heat >= ( heat cycle entry - heat duration entry ) * 8:
							say "at any moment.'";
						else:
							let num be ( heat cycle entry - heat duration entry ) * 8;
							now num is num - turns in heat;
							if heatlevel is 3:
								now num is num - ( num / 5 );
							say "in [if heatlevel is 3]roughly [end if]";
							guesstimate time at num;
							say ".'";
				else if nam is "Discuss heat control":
					if lust of Doctor Medea is 0:
						say "     The lizard doctor grins when you bring up the internal changes you've been feeling in your [if Player is female]womb[else]lower body[end if]. 'Oh, so you have been feeling that particular aspect of the transformation, have you?' she says with a grin. 'Most of those transformed feel a cycle of intensified arousal and fertility as they go into estrus - what is commonly know as heat. While most infected are continuously fertile, they are particularly fecund and lustful during this period. I might be able to provide you with more assistance through a more detailed examination, but I would need some specialized equipment to do so. It is not the sort of problem that human beings have had to deal with directly, so this clinic doesn't have the necessary tools or materials for testing.'";
						say "     As she's speaking, she jots down some notes on a pad of paper. 'If you were to find a [bold type]veterinary hospital[roman type] and bring me some supplies from there, I might be able to do something. I recall there being a particularly large one in the High Rise District of the city. Go there and bring me these items and drugs and we'll see what I can do.'";
						now lust of Doctor Medea is 1;
						now Veterinary Hospital is active;
						now Veterinary Hospital is unresolved;
					else if lust of Doctor Medea is 1:
						say "     'As I explained before, I cannot do anything to affect your heat unless you get me those items from a [bold type]veterinary hospital[roman type] like the one in the High Rise District. This clinic was for human patients, not animal ones. Well, at least until the people started to become animals, that is,' she adds with a grin.";
					else:
						say "     Taking out the requested items, you eagerly await her response while she looks it all over. 'Hmmm... yes... yes, this should be enough. By the time you're ready for your next examination, I should be able to give rough estimates on how long before you'll go into heat or how long you'll stay in your current heat. I should also be able influence your heat cycle. Perhaps you'd like me to ramp it up? That'd really let you get the most out of those animal urges to breed of yours,' she says with an eager, toothy grin. Noting your reaction to her almost perverse enthusiasm, she sighs. 'Or, I could block you from feeling the effects of heat, if that's what you'd prefer.'";
						now lust of Doctor Medea is 3;
				else if nam is "Reactivate heats":
					say "     Dr. Medea performs the procedure with pleasure, removing the change that prevented you from going into heat. 'There we go. All fixed up again,' she says. 'It's good that you've realized that enjoying your new body's needs can be most fulfilling,' she adds as she tidies up the instruments, the scent of her own arousal in the air as you see white cum trickle down her thighs.";
					now heatlevel is 2;
				else if nam is "Block heats":
					say "     Dr. Medea seems rather disappointed by your choice, but performs the procedure, blocking you from going into heat. 'There, your body's need to go into heat has been largely inhibited, except in rare cases. Be aware that the nanite infection may overcome this in time, but it should last at least until the rescue comes. Provided you don't change your mind and let me restore you, that is,' she says, sounding a little hopeful as she tidies up her instruments.";
					now heatlevel is 1;
				else if nam is "Intensify heats":
					say "     Dr. Medea performs the procedure with pleasure, altering your body to be more receptive to heat. 'This should reduce your delay before going into heat as well as prolong your time in heat. Until you're successfully impregnated, that is. Remember, being in heat makes that more likely. There may also be other unforeseen effects, but I wouldn't worry about it - that'll only add to the fun. It will be a more difficult for me to get a proper estimate of your heat cycle under these conditions, but I'll try my best to give you a rough estimate. I hope you have a very enjoyable and productive time,' she says, tidying up her instruments.";
					now heatlevel is 3;
				else if nam is "Restore normal heats":
					say "     Dr. Medea seems a little disappointed by your choice, but performs the procedure, reducing the intensity of your heats to normal. 'There, your body's need to go into heat has been restored to its original level. It is unfortunate, but I understand. I'd have cranked mine up already, but it'd make focusing on my work too difficult right now,' she says, tidying up her instruments.";
					now heatlevel is 2;
				else if nam is "Oviposition":
					if ovipregalways is false:
						if ovipregMedeatalk is false:
							say "     'Oh, have you witnessed or experienced that before? There are indeed several the creatures in the city which have responded to their transformation by becoming egg-layers or impregnating their lovers with eggs. It is especially common in reptiles and birds,' the lizard doctor says with a smile, 'though I wouldn't be surprised to find a few others out there doing it. I've had a few egg-laying patients and have had a chance to examine their alterations. With my added equipment, if you'd like, I'd be able to alter your womb to be like theirs and bear eggs whenever you get pregnant.";
							now ovipregMedeatalk is true;
						else:
							say "     'Oh, have you reconsidered becoming an egg-bearer? I could alter your womb so you lay eggs instead of live young.'";
						say "     [bold type]'Doesn't that sound delightful?' she says with an eager smile on her reptilian face.[roman type][line break]";
						LineBreak;
						say "     ([link]Y[as]y[end link]) - Have your womb altered.";
						say "     ([link]N[as]n[end link]) - No thanks.";
						if Player consents:
							LineBreak;
							if gestation of Child is 0:
								say "     Dr. Medea seems particularly pleased with your decision and performs the procedure with pleasure. Your womb is altered to form eggs when you become pregnant. 'I've made you into an egg-breeder, able to be filled with eggs from any and all creatures you mate with, regardless of their infection. Now, should you get cold feet,' she adds, 'you should be able to curb your egg-laying abilities by concentrating upon it for a while. I hope you have an enjoyable and productive time,' she adds, tidying up her instruments.";
								say "     [bracket]Use the [bold type][link]adjust ovi[end link][roman type] command or Trixie's setting menu to adjust your preferences for oviposition.[close bracket]";
								now ovipregalways is true;
								now ovipreglevel is 3;
							else:
								say "     Dr. Medea seems particularly pleased with your decision, but cannot perform the procedure while you're pregnant. You'll need to ask her again after you've given birth.";
						else:
							LineBreak;
							say "     She seems a little disappointed by your response. 'Well, do think about it. I'll be available when you are willing to go through with it.'";
					else:
						say "     'I hope you're enjoying the ability to lay eggs,' the lizard doctor says as she rubs over your tummy with a smile. 'Such a special way to have one's children, I think. Remember, if you want to [if ovipreglevel is 3]curb your egg-laying and revert to live births[else]get yourself laying more eggs[end if], concentrate and you should be able to take control of your change.'";
						say "     [bracket]Use the [bold type][link]adjust ovi[end link][roman type] command or Trixie's setting menu to adjust your preferences for oviposition.[close bracket]";
				else if nam is "Gain unbirthing ability":
					say "     Dr. Medea gets a perverse grin on her reptilian face, clearly excited to undertake her twisted experiment. She eagerly gets you up onto the examination table and does a cursory exam before getting started. 'I've prepared a dose of the chemicals, which are to be applied to your reproductive system[if Player can vore], triggering the alterations in your digestive system to spread there as well[end if]. I'm glad you're willing to go through with this procedure. Unfortunately, while I don't believe this alone would be enough to induce the same results in others, it does provide a starting point to understanding this rare ability. Well, enough waiting, let's get to it,' she says with glee.";
					say "     Rather than provide you with a concoction to drink or an injection, she instead starts to smear some oily cream across your pussy. She starts slow and keeps her touch professional at first, but as you start to feel a warm tingle at the mouth of your vagina and it begins to stretch, her fingers become more playful, teasing you to arousal. She pauses from time to time to scoop up more of the cream and work it deeper into your cunny, getting it to spread further and wider as the lotion is absorbed into your vaginal walls.";
					say "     Soon she's working her [if Cunt Depth of Player < 12]whole hand[else if Cunt Depth of Player < 24]forearm[else]whole arm[end if] into your squeezing, tugging cunt and smearing the slick goo at your very depths. As your cervix starts to relax, she pushes another handful of the body-altering cream right into your womb. It takes a lot of effort from her to be able to pull her arm free after that, grunting with the effort to resist the strong inward motion of your vaginal muscles.";
					WaitLineBreak;
					say "     As the cream inside your uterus starts to react, you become increasingly aware of the empty feeling of your unfertilized womb and you want to do something about it. Noticing your attention focusing on her, the reptilian doctor stops fingering herself and rushes you outside, that sense of emptiness to be filled growing with every step. Catching sight of another creature wandering nearby, she pushes you off in its direction and moves back to observe the results, her medical ethics forgotten in her desire to observe your altered reproductive system in action.";
					if FemaleList is not banned:
						setmonster "Husky Bitch";
						say "     As you approach the rummaging creature, part of you can't help but be pleased to see that it is a female husky. That small part of you which is still able to reason can't help but think it appropriate[if Resolution of Inner Predator is 1]. Given how your first meal was also one of these cute girls, there is a certain symmetry to that[end if]. She seems pleased to see you as well, smelling your arousal and sniffing her way towards your crotch. Making no effort to dissuade her, you seem like a willing playmate and she approaches with eager caution.";
						say "     When she brings her muzzle in to lick at your leaking pussy, your body is struck with another throbbing sense of the void inside you. You look down at the cute husky with new, maternally longing instincts, feeling that she'd be perfect to fill it. Before you can even think about it, you grab the husky by the head and yank it forward, driving her muzzle into your hot, needy cunny. Your pussy stretches as you continue to pull her in, stretching around her canine head with an orgasmic effort that has you moaning. Your juices soak her head and shoulders, making it easier for your tugging inner walls to start pulling them in as well.";
						say "     Having succumbed to this instinctual drive, you are unable to control yourself, your body acting of its own volition to satisfy that inner need. Even with the foreknowledge of what would happen, what's happening would still be quite disturbing and shocking were it not for the extreme pleasure the act provides. There is considerable effort to doing it, your vaginal muscles having to stretch and pull in unnatural ways to drag your prey deeper and deeper into you.";
						WaitLineBreak;
						say "     The canine girl tries to struggle, but she is quite confused and is likely overwhelmed by the taste and scent of your rampant arousal, making her attempts unfocused and weak. As you grip her arms to her sides to keep her pinned, you drop to your knees, forcing yourself down over her ample bosom and taking in most of her torso. Your belly bulges as more squirming husky is squished into it with a deliciously juicy slurp. With your cervix spread open and her partially inside your womb, your urge to have her inside you only grows rather than feeling sated in any way.";
						say "     You undergo another moaning orgasm as your vaginal walls tug her even further into you. With so much of her inside you, you can no longer see what's going on, but you can feel every delightful inch of her fluffy body being pulled into yours. Giving another loud moan, you feel her hips making their way along your impossibly stretched vaginal tunnel. With only her legs and tail left to go, the rest is easier, giving you an opportunity to enjoy the pleasant sensations without the distraction of the effort involved. Glancing over, you see Dr. Medea watching intently, a hand under her skirt, pumping her fingers into her juicy cunt as creamy white goo leaks from it. Any medical ethics forgotten as the transformed obstetrician perversely watches her patient's pussy completely devour a helpless victim.";
						say "     Sitting back, dazed, you feel the form of the husky sliding around inside your womb, your belly now bulging out with your massive pregnancy. There is a brief period where she struggles, paws pressing against your uterine walls as she seeks exit before settling down. With a quiver of pleasure, the nanites in your body throw your gestation process into overdrive. You can't help but moan in satisfaction as you feel [if ovipreglevel is 3]an eggshell forming around your prey[else]a placenta form to connect you to your prey[end if]. Soon enough, she's drifted off into slumber and you are in late-term pregnancy. Crossing the [if ovipreglevel is 3]egg membrane[else]placental barrier[end if], you share nanites with one another, further bonding you and your new [']child['] with one another. You are filled with contentment as this happens, as if you've fulfilled some deep purpose in your infected body. You are helped back to your feet by Dr. Medea, who eagerly examines you, confirming what your body's already told you.";
						now HeadName of Child is "Husky Bitch";
						now TorsoName of Child is "Husky Bitch";
						now BackName of Child is "Husky Bitch";
						now ArmsName of Child is "Husky Bitch";
						now LegsName of Child is "Husky Bitch";
						now AssName of Child is "Husky Bitch";
						now TailName of Child is "Husky Bitch";
						now HeadSpeciesName of Child is "Husky";
						now TorsoSpeciesName of Child is "Husky";
						now BackSpeciesName of Child is "Husky";
						now ArmsSpeciesName of Child is "Husky";
						now LegsSpeciesName of Child is "Husky";
						now AssSpeciesName of Child is "Husky";
						now TailSpeciesName of Child is "Husky";
						now ubpreg is "Husky Bitch";
					else:
						setmonster "Latex Fox";
						say "     As you approach the rummaging creature, part of you can't help but be pleased to see that it is a latex fox. That small part of you which is still able to reason can't help but think it appropriate[if Resolution of Inner Predator is 1]. Given how your first meal was also one of these rubbery guys, there is a certain symmetry to that[end if]. He seems pleased to see you as well, smelling your arousal and sniffing his way towards your crotch. Making no effort to dissuade him, you seem like a willing playmate and he approaches with eager caution.";
						say "     When he brings his muzzle in to lick at your leaking pussy, your body is struck with another throbbing sense of the void inside you. You look down at the cute fox with new, maternally longing instincts, feeling that he'd be perfect to fill it. Before you can even think about it, you grab the fox by the head and yank it forward, driving his muzzle into your hot, needy cunny. Your pussy stretches as you continue to pull him in, stretching around his vulpine head with an orgasmic effort that has you moaning. Your juices soak his head and shoulders, making it easier for your tugging inner walls to start pulling them in as well.";
						say "     Having succumbed to this instinctual drive, you are unable to control yourself, your body acting of its own volition to satisfy that inner need. Even with the foreknowledge of what would happen, what's happening would still be quite disturbing and shocking were it not for the extreme pleasure the act provides. There is considerable effort to doing it, your vaginal muscles having to stretch and pull in unnatural ways to drag your prey deeper and deeper into you.";
						WaitLineBreak;
						say "     The vulpine guy tries to struggle, but he is quite confused and is likely overwhelmed by the taste and scent of your rampant arousal, making his attempts unfocused and weak. As you grip his arms to his sides to keep him pinned, you drop to your knees, forcing yourself down over his chest and taking in most of his torso. Your belly bulges as more squirming fox is squished into it with a deliciously juicy slurp. With your cervix spread open and him partially inside your womb, your urge to have him inside you only grows rather than feeling sated in any way.";
						say "     You undergo another moaning orgasm as your vaginal walls tug him even further into you. With so much of him inside you, you can no longer see what's going on, but you can feel every delightful inch of his smooth body being pulled into yours. Giving another loud moan, you feel his hips making their way along your impossibly stretched vaginal tunnel. With only his legs and tail left to go, the rest is easier, giving you an opportunity to enjoy the pleasant sensations without the distraction of the effort involved. Glancing over, you see Dr. Medea watching intently, a hand under her skirt, pumping her fingers into her juicy cunt as creamy white goo leaks from it. Any medical ethics forgotten as the transformed obstetrician perversely watches her patient's pussy completely devour a helpless victim.";
						say "     Sitting back, dazed, you feel the form of the fox sliding around inside your womb, your belly now bulging out with your massive pregnancy. There is a brief period where he struggles, paws pressing against your uterine walls as he seeks exit before settling down. With a quiver of pleasure, the nanites in your body throw your gestation process into overdrive. You can't help but moan in satisfaction as you feel [if ovipreglevel is 3]an eggshell forming around your prey[else]a placenta form to connect you to your prey[end if]. Soon enough, he's drifted off into slumber and you are in late-term pregnancy. Crossing the [if ovipreglevel is 3]egg membrane[else]placental barrier[end if], you share nanites with one another, further bonding you and your new [']child['] with one another. You are filled with contentment as this happens, as if you've fulfilled some deep purpose in your infected body. You are helped back to your feet by Dr. Medea, who eagerly examines you, confirming what your body's already told you.";
						[All Child parts are the unbirthed creature - might be overwritten by the player having "They have your Eyes" during birth]
						now HeadName of Child is "Latex Fox";
						now TorsoName of Child is "Latex Fox";
						now BackName of Child is "Latex Fox";
						now ArmsName of Child is "Latex Fox";
						now LegsName of Child is "Latex Fox";
						now AssName of Child is "Latex Fox";
						now TailName of Child is "Latex Fox";
						now HeadSpeciesName of Child is "Latex Fox";
						now TorsoSpeciesName of Child is "Latex Fox";
						now BackSpeciesName of Child is "Latex Fox";
						now ArmsSpeciesName of Child is "Latex Fox";
						now LegsSpeciesName of Child is "Latex Fox";
						now AssSpeciesName of Child is "Latex Fox";
						now TailSpeciesName of Child is "Latex Fox";
						now ubpreg is "Latex Fox";
					FeatGain "UB Pred";
					now ubcount is 1;
					decrease humanity of Player by 3;
					say "     You now have the ability to unbirth fallen foes. If you're not pregnant, there is a chance your body will want to use your enemy to fill your womb. You may adjust some vore related settings via the [bold type]vore menu[roman type].";
					now Gestation of Child is a random number between 8 and 16;
					now pregtype is 1;
					if "Safe Appetite" is not listed in feats of Player:
						now researchbypass is 1;
						infect;
						now researchbypass is 0;
				else if nam is "Pills":		[First time asking about cunt pills]
					say "     When you inquire Medea about what she meant by her work on pills earlier, the lizard doctor asks, 'Did I accidentally let that slip? Well, that's alright. You did bring me the supplies that I needed, after all. To answer your question, I have been researching the nanites and have developed a concoction that will allow users without the proper anatomy to experience pregnancy without flooding their bodies with estrogen. In layman terms, it will give them a cunt. While the medicine hasn't been fully developed, it is safe enough to consume, and I am willing to share it with you, for a price. They are not exactly easy to produce, and I need medkits and healing boosters to continue my research, as well as using them to treat any patients who come here. Bring me either item, and I will trade you a pill in return.'";
					now Medeapill is true;
				else if nam is "Cunt Pills":		[Trade for cunt pills]
					say "     'Did you bring any medkits or healing boosters to trade for my special pills?' Medea asks.";
					now sextablerun is 0;
					blank out the whole of table of fucking options;
					[]
					if carried of medkit > 0:
						choose a blank row in table of fucking options;
						now title entry is "Trade medkit";
						now sortorder entry is 1;
						now description entry is "Trade a medkit for a cunt pill";
					[]
					if carried of healing booster > 0:
						choose a blank row in table of fucking options;
						now title entry is "Trade healing booster";
						now sortorder entry is 2;
						now description entry is "Trade a healing booster for a cunt pill";
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
							if nam is "Trade medkit":
								if carried of medkit > 0:
									say "     You take out a medkit from your bag and hand it over to Medea. The lizard doctor takes your offered item and takes it into a nearby room. She comes back to you a moment later and places a pink capsule into your hand. 'A pleasure doing business with you,' Medea says with a smile. 'I'm sure that you'll put that to good use.'";
									ItemLoss medkit by 1;
									ItemGain cunt pill by 1;
								else:
									say "     You shake your head, stating that you don't have any of them on you. The lizard doctor sighs in disappointment and says, 'I'm sorry then, but I'm afraid that I cannot give you any of my pills then. Perhaps next time.'";
							if nam is "Trade healing booster":
								if carried of healing booster > 0:
									say "     You take out a healing booster from your bag and hand it over to Medea. The lizard doctor takes your offered item and takes it into a nearby room. She comes back to you a moment later and places a pink capsule into your hand. 'A pleasure doing business with you,' Medea says with a smile. 'I'm sure that you'll put that to good use.'";
									ItemLoss healing booster by 1;
									ItemGain cunt pill by 1;
								else:
									say "     You shake your head, stating that you don't have any of them on you. The lizard doctor sighs in disappointment and says, 'I'm sorry then, but I'm afraid that I cannot give you any of my pills then. Perhaps next time.'";
							wait for any key;
						else if calcnumber is 0:
							now sextablerun is 1;
							say "     You shake your head, stating that you can't afford to part with your medical supplies. The lizard doctor sighs in disappointment and says, 'I'm sorry then, but I'm afraid that I cannot give you any of my pills then. Perhaps next time.'";
							wait for any key;
						else:
							say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
					clear the screen and hyperlink list;
				else if nam is "Parasite":
					say "     Medea's face contorts into one of disgust when you tell her about your encounter with the black wasps and the parasite they put inside of you. 'Yes, I know about those vile creatures,' the lizard doctor says disdainfully. 'They turn their victims into hapless egg-layers that are unable to experience the wonders of a natural birth, and I'm afraid that you have succumbed to their dreadful influence. Fortunately, I have been developing a concoction that will kill the parasite that dwells within you. All I need is a medkit to make you a dose.";
					if carried of medkit > 0:
						say "     [bold type]Do you want to give Medea a medkit so that she can remove the parasite within you?[roman type][line break]";
						LineBreak;
						say "     ([link]Y[as]y[end link]) - Trade your medkit to get rid of the parasite.";
						say "     ([link]N[as]n[end link]) - Turn down the offer and try to deal with the problem yourself.";
						if Player consents:
							LineBreak;
							say "     Medea quickly takes your offered medkit over to a counter and begins tinkering with it, along with a number of other medical equipment. It only takes a few moments for the lizard doctor to come back with a needle and syringe filled with a green liquid. 'This will kill the parasite, allowing you to expel the nasty bug. I must warn you though: this will hurt,' Medea explains. She gives you a moment to steel yourself before she injects the concoction directly into your stomach. It only takes a moment for the parasite within you to violently react to Medea's treatment, and you keel over from the intense pain in your belly.";
							say "     Thankfully, the parasite's movements and the pain dies down after a few moments. With Medea's assistance, you manage to push out a puddle of thick goo, followed by the parasite itself. It is a pale creature, looking much like a bloated, insect larva with several tiny legs and a phallic back end from which you suspect it released the [if larvalaid < 2]slimy goo[else]egg slime[end if] into you. 'Good riddance,' Medea says, glaring at the mess with scorn. She then turns to you with a cheerful smile. 'Congratulations, the treatment was a success.'";
							ItemLoss medkit by 1;
							now insectlarva is false;
							now preghijack is false;
							now mpreghijack is false;
							now larvacounter is 0;
							now larvaegg is 0;
							SanBoost 10;
							now Libido of Player is Libido of Player / 2;
							repeat with y running from 1 to number of filled rows in Table of Random Critters:
								choose row y in Table of Random Critters;
								if Name entry is "Black Wasp":
									now area entry is "Nowhere";
									now non-infectious entry is true; [Wasps locked again]
									break;
						else:
							say "     You say that you don't have a medkit to give to Medea. The lizard doctor sighs in disappointment and says, 'Then, I'm afraid that I have nothing else to help you with your parasite problem. Do please reconsider my offer if you have trouble ridding yourself of the disgusting thing.'";
						wait for any key;
					else:
						say "     You say that you don't have a medkit to give to Medea. The lizard doctor sighs in disappointment and says, 'Then, I'm afraid that I have nothing else to help you with your parasite problem. Do please reconsider my offer if you have trouble ridding yourself of the disgusting thing.'";
						wait for any key;
				else if nam is "Doctor Matt's request" or nam is "Doctor Mouse's demand":
					say "[Medeaassistance_plot]";
				else if nam is "Joanna's custom strain":
					say "[SFMedea]"; [on Joanna's file]

to say Medeaassistance_plot:
	if Medeaget >= 3 and HP of Doctor Medea >= 5 and lust of Doctor Medea >= 3:
		if HP of Doctor Matt is 21:
			say "[Medeamattcomplete]";
			now HP of Doctor Matt is 22;
		else if hospquest is 21:
			say "[Medeamousecomplete]";
			now hospquest is 22;
	else:
		say "     'As I've mentioned, there's some supplies I still need to be able to do my work to the fullest. There's several aspects of the altered reproductive processes taking place still to be explored,' the lizard girl says.";
		if Medeaget is 0:
			say "     'The most basic of these is my lack of general supplies with which to do my job. At present, I can do little more than determine if a patient is pregnant and provide basic pre-natal. For anything past that, I'm going to need your assistance in obtaining the necessary supplies. With those, I could make you more fertile, or sterilize you. With even more equipment, I might be able to do even more than that,' she says with an odd eagerness in her tone.";
			say "     'I would be able to render further assistance to you, changing some of the fertility-related aspects of your altered body, but I lack the materials necessary for such an operation,' the lizard doctor says. 'There should be some in a medical delivery truck that was supposed to arrive the day the infection started. Here is a list of the items I'll need.' She provides you with the list and describes the truck used by the delivery company, asking that you keep an eye out for it.";
			now Medeaget is 1;
			CheckAbandonedTruck;
			stop the action;
		else if Medeaget is 1:
			say "     'As I've mentioned, there's little I can do in this regard until my most basic supplies are restocked. If you want my help, you'll need to get those materials I asked about earlier. They should be in the abandoned truck I described.'";
			CheckAbandonedTruck;
			stop the action;
		else if Medeaget is 2:
			say "     'Wonderful! You managed to get the supplies. Thanks! I can now do medical work again!' the lizard doctor says happily.";
			now Medeaget is 3;
		else:
			if lust of Doctor Medea < 3 and HP of Doctor Medea < 5: [both tasks remain]
				say "     'There are other aspects of the pregnancy process which I need further supplies to delve into. If you want to obtain my completed notes, you'll need to assist me by obtaining the equipment I need to do so. There's two main topics I need to gather more information on, that of the animalistic heats produced by certain infections and the possibility of alternate impregnation and gestation means,' the lizard doctor states with no little excitement.";
			else if HP of Doctor Medea < 5: [MPreg remains]
				say "     'While you've been of assistance in helping me improve the range of care I can provide my patients here, there's still more to be done. There's some additional supplies which will allow me to explore the possibility of alternate impregnation and gestation means,' the lizard doctor states with no little excitement.";
			else if lust of Doctor Medea < 3: [heat remains]
				say "     'While you've been of assistance in helping me improve the range of care I can provide my patients here, there's still more to be done. There's some additional supplies which will allow me to render assistance in dealing with the animalistic heats produced by certain infections,' the lizard doctor states with no little excitement.";
			if lust of Doctor Medea is 0:
				say "     'As you may have already experienced, the infection often produces a cycle of intensified arousal and fertility. This is similar to going into estrus - what is commonly known as being in heat. While most infected are continuously fertile, they are particularly fecund and lustful during this period. I might be able to provide more assistance in this regard through a more detailed examination, but I would need some specialized equipment to do so. It is not the sort of problem that human beings have had to deal with directly, so this clinic doesn't have the necessary tools or materials for testing.'";
				say "     As she's speaking, she jots down some notes on a pad of paper. 'If you were to find a [bold type]veterinary hospital[roman type] and bring me some supplies from there, I might be able to do something. I recall there being a particularly large one in the High Rise District of the city. Go there and bring me these items and drugs and we'll see what I can do.'";
				now lust of Doctor Medea is 1;
				now Veterinary Hospital is active;
				now Veterinary Hospital is unresolved;
			else if lust of Doctor Medea is 1:
				say "     'As I explained before, I cannot perform procedures or study anything in regards to affecting one's heat unless you get me those items from a [bold type]veterinary hospital[roman type] like the one in the High Rise District. This clinic was for human patients, not animal ones. Well, at least until the people started to become animals, that is,' she adds with a grin.";
			else if lust of Doctor Medea is 2:
				say "     Taking out the requested items from the veterinary clinic, you eagerly await her response while she looks it all over. 'Hmmm... yes... yes, this should be enough. I should now be able to perform examinations able to give rough estimates on how long before the patient go into heat or how long they'll remain in their current heat. More importantly, I should also be able influence their heat cycle as well.'";
				now lust of Doctor Medea is 3; [heat management enabled]
			if HP of Doctor Medea < 3:
				if Player is mpreg_ok:
					say "     The lizard doctor flips through an anatomy book, stopping on the page describing the male reproductive system. 'With the changes the spreading infection can create, it may be possible to allow a male individual to form a surrogate womb for impregnation. I have just started to look into those possibilities, but I need some more advanced supplies and specialized equipment to be able to accomplish this'";
					say "     You cut her off there, informing her that you already possess this adaptation, much to her delight. 'This is very good fortune indeed. You're the first case of this I've been able to study. Please, you must let me examine you!' she says excitedly, taking your hands and rushing you towards the examination table.";
					say "     Climbing up, she gets you onto all fours and starts with a cursory examination of your anus before spreading some cool gel over it and sinking a gloved finger into you. She probes around your backside, causing a few moans of pleasure. As her examination continues, you can hear her panting heavily as well as she stimulates [if Player is male]your prostate, making your cock hard and getting you to dribble pre onto the padded seat[else]you[end if]. She leans atop you, pounding her fingers hard and fast into you [if Player is male]until you cum messily[else]until you're left panting and moaning[end if] from the vigorous stimulation.";
					say "     Doctor Medea straightens herself up and removes the glove, trying to act professional again, despite the rivulets of white cum you see running down her thighs. 'You are very interesting. This has been most... instructive. I believe I should be able to provide you and other male patients with some assistance as I would my female patients.'";
					now HP of Doctor Medea is 6;
				else:
					say "     The lizard doctor flips through an anatomy book, stopping on the page describing the male reproductive system. 'With the changes the spreading infection can create, it may be possible to allow a male individual to form a surrogate womb for impregnation. I have just started to look into those possibilities, but I need some more advanced supplies and specialized equipment to be able to accomplish this. Your best chance of locating them would be at either the [bold type]Maternity Ward[roman type] or the [bold type]Obstetrics Department[roman type] of the City Hospital for these supplies I require.'";
					now HP of doctor Medea is 3;
					now Obstetrics Department is active;
					now Maternity Ward is not resolved;
			else if HP of Doctor Medea < 4:
				say "     The lizard doctor scribbles you a quick note. 'As I've mentioned before, I'm considering the possibilities surrounding the nanites forming a surrogate womb for male individuals, allowing them to become impregnated. Please obtain the listed supplies and equipment for me so I can explore this potential alternative treatment. Your best shots at finding them are to head to the city hospital and check either the [bold type]Maternity Ward[roman type] or the [bold type]Obstetrics Department[roman type].";
				now Obstetrics Department is active;
				now Maternity Ward is not resolved;
			else if HP of Doctor Medea is 4:
				say "     When you place the requested equipment from the hospital on the counter for Dr. Medea, she is quite pleased. 'Excellent! Give me a few moments to look this over and prepare, but I should be able to allow patients, even males, to become patient through anal insemination.' Just saying it makes the lizard girl obviously excited, her tail swishing and the scent of reptilian arousal growing stronger in the air.";
				now HP of Doctor Medea is 6;

to say Medeamattcomplete:
	WaitLineBreak;
	say "     While waiting for Dr. Medea to assemble her notes and add any final details, you take a seat in a small office chair. For a while, you reorganize your gear, packing and repacking your bag. Growing bored with this, you eventually devolve into spinning yourself around in the chair. Mid-spin, there comes a heavy bang outside and a loud growl that shocks you[if dexterity of Player < 16]into tumbling out of the chair[else]to your feet[end if] even as the room continues to spin for a moment.";
	say "[Medeapandafight]";
	say "     After the pandas have left, you have to wait a while for Dr. Medea to clean up and recover from the delivery. She seems in particularly good spirits, unsurprising given her interest in pregnancies. You can't help but notice she's got to dab away a fresh gooey mess from between her own legs. Once that's done, she gets back to her work on those notes, putting copies of a few last reports into a filing box for you. She passes it to you with a final thanks for all your assistance in getting her clinic operational once again.";
	if HP of doctor Medea is 5, now HP of doctor Medea is 6;

to say Medeamousecomplete:
	WaitLineBreak;
	say "     You take a moment to look around, musing on what Dr. Medea is able to accomplish with such poor facilities and the small amounts of equipment you've been able to provide. Turning back to her, you make a decision. 'I've changed my mind. Pack everything up. Not just your notes - everything. We'll provide you with better facilities at the hospital and you can work for us there.'";
	say "     Dr. Medea stares at you in shocked surprise before starting to protest. 'But- but... my patients? I need to be here for them. They expect me to be here. There's so many fecund girls to help right here. So many pregn-' You cut her off, telling her she'll have plenty of patients to care for at the hospital. The nurses alone should keep her rather busy, you expect.";
	say "     For a moment, it looks like she'll cry or try to resist, but she can tell she's no match for you. Turning away, she starts to gather everything up. You lean against the wall and watch her, knowing it'll be a while for her to pack everything up. You're considering contacting the hospital chopper for pickup when you hear a heavy bang outside and a loud growl that shocks you.";
	say "[Medeapandafight]";
	say "     After the pandas have left, you take a moment around the doctor's clinic again. Your eyes pass over the half-packed boxes and then over to the doctor as she cleans herself up with sad resignation as the joy of the successful delivery fades. You ponder the recent incident and wonder what might've happened if she weren't here. Thinking that things would be a little crazier out in the city, you change your mind again. You know you're just making excuses, but you tell yourself having the city be that much crazier would just be more hassle for you.";
	say "     'Just give me those notes,' you grumble at her. 'I'm leaving. You're clearly too much trouble to bother with.'";
	say "     She nearly drops the equipment she's holding and turns to stare at you before smiling a little. She starts to open her mouth, but you glare and point at her. 'If you say something sappy about [']the miracle of childbirth['], so help me...' you snarl. She just smiles a little more, thanks you and quickly tosses more reports and notes into the filing box. She passes it to you with a final thanks for all your assistance in getting her clinic operational once again, and for your understanding.";
	if HP of doctor Medea is 5, now HP of doctor Medea is 6;

to say Medeapandafight:
	say "     'Uggh! Doc! It happened again. It feels like I'm gonna pop!' a powerful female voice cries.";
	say "     You get into a fighting stance as your inner ear quickly regains balance and the room stops turning around you. Dr. Medea pushes you back firmly, trying to explain that she's just one of her regular patients. 'She can just be a little... excitable by this point in her pregnancy. Don't startle her,' she warns, moving to unlock the door. In steps through a very pregnant panda. She wears little more than a torn and stretched t-shirt over her rounded belly, doing nothing to conceal with dilated pussy and soaking thighs. Despite the doctor's assurances, she seems as wild-eyed and crazy as any other mutant who's gone over the edge and you take up a defensive posture.";
	say "     Seeing you, the panda growls again, this time with an edge of excitement. ";
	if Player is impreg_now and gestation of child < 20:
		say "'Is this another patient of yours? Perhaps [if Player is female]she'd[else]he'd[end if] like to help me take my mind off the cub?' ";
	else:
		say "'Is this a new assistant? A plaything to keep my mind off the cub?' ";
	say "Despite her gravid state, the horny female moves quickly and makes a grab for you.";
	now Medeapanda is true;
	now inasituation is true;
	challenge "Panda";
	now Medeapanda is false;
	now inasituation is false;
	if fightoutcome >= 10 and fightoutcome <= 19:
		say "     Once you've gotten her worn down a little, you maneuver her with a few feints. Once in position, you shove her back into the birthing chair. She gives an indignant groan and makes a grab for you, but then clutches her belly as the baby kicks.";
		say "     [bold type]With labor fully upon her, it's either time for you to decide if you'll stay and watch the event or wait outside.[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Stay and watch the event.";
		say "     ([link]N[as]n[end link]) - Wait outside.";
		if Player consents:
			LineBreak;
			say "     At this point, both the expectant mother and the doctor largely ignore you, though the latter does ask you pass the occasional item - usually towels. With her legs up in the stirrups, the panda's dilating cunt is easily visible for you. As she breathes and pushes, the wet folds slowly spread further and juices leak from her pussy. This is helped along all the more by the lizard doctor working several fingers in and out of the panda's vagina in a manner that is not at all clinical. The mother-to-be's face is a mix of effort and ecstasy more than pain, the nanites sparing the fecund female the bulk of that.";
			say "     Still staring raptly, you watch as the rounded and thinly furred head of the baby panda becomes briefly visible during one contraction. The following one reveals it a little more and a little longer, and the next one has it remain visible. A few more pushes after that and the baby panda girl slides out into a towel held by Doctor Medea. She's quickly wiped and given over to the very happy mom, who nurses her from one of her milk-laden breasts[if feralbirths > 0 or (number of filled rows in Table of PlayerChildren + number of entries in childrenfaces) > 0]. As you've personally experienced[else]. To your surprise[end if], the child matures incredibly rapidly, moving quickly from babe to toddler to pre-teen in very short order. After a final check-up, the two pandas leave, mother holding her new daughter's hand as they exit[if Player is male] and giving you a final wink on the way out[end if].";
		else:
			LineBreak;
			say "     With the doctor able to tend to her patient now, you slip out of the room discreetly. You wait out the birthing process in the lobby, which aside from being a little noisy, is comparatively brief and doesn't seem to be overly painful. Thanks the nanites infesting both her and her offspring, they're up and ready to leave shortly after having given birth. The young panda is already a budding teen by the time she exits hand in hand with her pleased looking mother[if Player is male]. You observe their exit from behind the cover of the receptionist's desk, not wanting to see if the new mother is in the mood to get knocked up again[end if].";
	else if fightoutcome >= 20 and fightoutcome <= 29:
		choose row MonsterID from the Table of Random Critters;
		say "     The horny, pregnant panda bears you down with the weight of her belly. Turning around, she plants her motherly hips and juicy snatch right in your face. Perhaps the jostling of your struggle has gotten her baby excited to get out because she groans loudly as her belly shifts noticeably atop you. The panda gives a groan and grinds her gaping pussy down onto your face, soaking you with a heady mix of amniotic fluid and femcum. She continues to grind down onto you as her labor begins in earnest.";
		say "     Given your position, you can't help but watch as the wet folds spread further and more juices leak from her pussy. The panda breathes and pushes under the doc's instructions, but adding [if Player is male]licking and sucking your cock[else if Player is female]licking and tonguefucking your hot snatch[else]licking and nipping at your bare crotch and thighs while fingering your asshole[end if] to the routine as well. Doing this requires her to essentially grind and roll her rounded belly over your chest, alternating between pressing her hot cunt to your face and having another go at your [if Player is neuter]thighs[else]groin[end if]. The mother-to-be's cries are a mix of effort and ecstasy more than of pain, the nanites and the fun distraction sparing the fecund female the bulk of that.";
		say "     As labor intensifies, the panda's focusing full-time on your [if Player is male]penis[else if Player is female]pussy[else]crotch[end if] rather than grinding into your face. Having a front-row seat for the action, you can't help but watch as the baby starts to crown. Staring raptly, you watch as the rounded and thinly furred head of the baby panda becomes briefly visible during one contraction. The following one reveals it a little more and a little longer, and the next one has it remain visible. A few more pushes after that while the momma [if Player is male]sucks you to orgasm[else if Player is female]tongues you to orgasm[else]fingers your butt wildly[end if] and the baby panda girl slides out into a towel held by Doctor Medea. She's quickly wiped and given over to the very happy mom, who sits back up - thus burying your face in her gaping snatch. She grinds herself to an orgasm of her own while nursing her newborn. By the time the mother panda rises up off you, her child's already matured rapidly and is just entering adolescence. After a final check-up, the two pandas leave, mother holding her new daughter's hand as they exit[if Player is male] and giving you a final wink on the way out[end if]. Meanwhile, you can feel the tingles of infection running through you after your uniquely messy experience.";
		now non-infectious entry is false;
		infect "Panda";
		infect "Panda";
		infect "Panda";
		follow the sex change rule;
	else:
		say "     Rather than deal with a pregnant and horny panda - something you'd never have thought you'd see let alone have to fight - you instead evade. And while she's pretty spry for one in labor, she can't maneuver as well around the various equipment in the room. You slip your way past her and head back into the lobby area. You wait out the birthing process, which aside from being a little noisy, is comparatively brief and doesn't seeem to be overly painful. Thanks the nanites infesting both her and her offspring, they're up and ready to leave shortly after having given birth. The young panda is already a budding teen by the time she exits hand in hand with her pleased looking mother[if Player is male]. You observe their exit from behind the cover of the receptionist's desk, not wanting to see if the new mother is in the mood to get knocked up again[end if].";


Section 4 - Events

Table of GameEventIDs (continued)
Object	Name
Abandoned Truck	"Abandoned Truck"

Abandoned Truck is a situation.
ResolveFunction of Abandoned Truck is "[ResolveEvent Abandoned Truck]".
Sarea of Abandoned Truck is "Outside".

to say ResolveEvent Abandoned Truck:
	say "     You come across an abandoned truck, filled with medical supplies. The drivers cab is filled with some sort of goo that covers all the entrances. Maybe some of the supplies can be of use?";
	if Medeaget is 1:
		say "     This must be the truck Medea sent you after! Ruffling through it, you gather up the things that she requested.";
		now Medeaget is 2;
		now Resolution of Abandoned Truck is 2; [found Medea's gear]
		now Abandoned Truck is resolved;
	else:
		say "     [bold type]Maybe you could find a medkit. Do you wish to try?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if Player consents:
			LineBreak;
			say "You ruffle through the boxes, searching for a medkit and leaving mess in your wake.";
			if a random chance of 3 in 8 succeeds:
				ItemGain medkit by 1;
			else:
				say "You find nothing of interest.";
			now Resolution of Abandoned Truck is 1; [searched the truck]
		else:
			LineBreak;
			say "You leave the abandoned truck behind and walk on.";
			now Resolution of Abandoned Truck is 99; [disinterest]
		now Abandoned Truck is resolved;

Table of GameEventIDs (continued)
Object	Name
Obstetrics Department	"Obstetrics Department"

Obstetrics Department is a situation.
ResolveFunction of Obstetrics Department is "[ResolveEvent Obstetrics Department]". Obstetrics Department is inactive.
Sarea of Obstetrics Department is "Hospital".

to say ResolveEvent Obstetrics Department:
	say "     Making your way through the darkened hospital, you manage to reach the Obstetrics Department and slip inside, searching for the items that Dr. Medea mentioned needing. This area seems to have been particularly [']active['] during the outbreak, with a lot of sticky fluids of all kinds over everything. Aside from pools of what must be semen and feminine juices, there's a variety of placentae and egg shells scattered around as well. The scent of lust, fertility and virility is very strong in here, making you somewhat dizzy with growing excitement.";
	let playernum be a random number between 0 and ( 200 + humanity of Player - Libido of Player );
	say "     [special-style-1][playernum][roman type] vs [special-style-2]120[roman type]: ";
	if Playernum >= 120:
		if FurryList is banned:
			say "You manage to block out the smell, at least for the moment, and start searching through the Obstetrics Department for the items that Dr. Medea described. You gather up the specialized equipment that she's requested and leave as quickly as you can before your activity can draw the attention of one of the hospital's denizens.";
			now HP of doctor Medea is 4;
			now Resolution of Obstetrics Department is 1; [got Medea's stuff (all monsters banned)]
			now Obstetrics Department is resolved;
		else:
			say "You manage to block out the smell, at least for the moment, and start searching through the Obstetrics Department for the items that Dr. Medea described. As you start to gather up the specialized equipment she needs, you hear some activity outside moments before a creature comes bursting in, perhaps drawn by the noise. You will have to deal with them if you want to leave here with the supplies.";
			say "[hospfight4]";
			if fightoutcome >= 10 and fightoutcome <= 19:
				say "     Having defeated the creature, you gather up the rest of the equipment as quickly as you can and head out of there as quickly as you can. You can hear your opponent becoming increasingly lustful inside as the scents filling the area send its arousal skyrocketing. You rush off back to the entrance, trying to get as far from the noisy creature before it draws others for an orgy that will only add their musky juices to the scents pervading the area. As it is, having been in there has left you increasingly aroused and longing to breed.";
				now HP of doctor Medea is 4;
				now Obstetrics Department is resolved;
				SanLoss 6;
				if "Strong Psyche" is listed in feats of Player, increase humanity of Player by a random number between 1 and 3;
				if "Weak Psyche" is listed in feats of Player, decrease humanity of Player by a random number between 1 and 3;
				increase Libido of Player by 15;
				if "Horny Bastard" is listed in feats of Player, increase Libido of Player by 3;
				if "Cold Fish" is listed in feats of Player, decrease Libido of Player by 3;
				now Resolution of Obstetrics Department is 2; [won, got Medea's stuff]
			else if fightoutcome >= 20 and fightoutcome <= 29:
				say "     Beaten by the creature, you are forced to leave the room once the creature's satisfied itself. You are forced to leave the equipment you were searching for and will have to try returning at some other point. As it stands, you can still hear the creature inside, growing increasingly loud and lustful as its arousal skyrockets. You rush back to the entrance, trying to get as far from the noisy creature before it draws others for an orgy that will only add their musky juices to the scents pervading the area. As it is, having been in there for so long has left you increasingly aroused and longing to breed.";
				SanLoss 12;
				if "Strong Psyche" is listed in feats of Player, increase humanity of Player by a random number between 2 and 5;
				if "Weak Psyche" is listed in feats of Player, decrease humanity of Player by a random number between 2 and 5;
				increase Libido of Player by 25;
				if "Horny Bastard" is listed in feats of Player, increase Libido of Player by 5;
				if "Cold Fish" is listed in feats of Player, decrease Libido of Player by 5;
				now Resolution of Obstetrics Department is 3; [won, not got Medea's stuff]
			else:
				say "     Rather than continue to face the creature in the scent-laden room, you find your opportunity and escape. You'll have to risk returning at a later point to obtain the specialized equipment Dr. Medea needs, but for the moment, you're just happy to have gotten away. As it is, you can hear the increasingly loud sounds of the creature as its arousal skyrockets. You rush back to the entrance, trying to get as far from the noisy creature before it draws others for an orgy that will only add their musky juices to the scents pervading the area. As it is, having been in there for so long has left you increasingly aroused and longing to breed.";
				now Resolution of Obstetrics Department is 4; [fled, not got Medea's stuff]
	else:
		say "You attempt to search the ward, but the scents filling the place become too much. You are forced to leave before you can accomplish your goal or risk succumbing to your lusts completely. As it stands, you are left aroused and confused, with thoughts of sex and breeding filling your mind.";
		SanLoss 12;
		if "Strong Psyche" is listed in feats of Player, increase humanity of Player by a random number between 2 and 5;
		if "Weak Psyche" is listed in feats of Player, decrease humanity of Player by a random number between 2 and 5;
		increase Libido of Player by 25;
		if "Horny Bastard" is listed in feats of Player, increase Libido of Player by 5;
		if "Cold Fish" is listed in feats of Player, decrease Libido of Player by 5;
		now Resolution of Obstetrics Department is 4; [fled, not got Medea's stuff]


Section 5 - Cunt Pill

Table of Game Objects (continued)
name	desc	weight	object
"cunt pill"	"It's a small pill in the shape of a pink medicine capsule, and the female symbol had been etched on one side of it."	1	cunt pill

cunt pill is a grab object. It is temporary.

instead of sniffing cunt pill:
	say "The pill's scent is a faint mix of female arousal and antiseptic.";

Usedesc of cunt pill is "[cunt pill use]";

to say cunt pill use:
	say "You pop the pill into your mouth and swallow it without any trouble.";
	if Player is not female:
		now Cunt Count of Player is 1;
		now Cunt Depth of Player is 5;
		now Cunt Tightness of Player is 3;
		say "A wave of pleasure washes over your crotch area as a cunt emerges from the once bare spot, dripping with arousal. The enjoyable sensations continue as your insides churn to make room for a womb, ready to accept a male's seed in the hopes of producing a child.";
	else if a random chance of 1 in 5 succeeds:
		say "You are wracked with pleasure when your crotch heats up as your [if Cunt Count of Player > 1]cunts shift[else]cunt shifts[end if] to the side to make room for a new pussy.";
		increase Cunt Count of Player by 1;
	else:
		increase Cunt Depth of Player by a random number from 1 to 2;
		increase Cunt Tightness of Player by a random number from 1 to 2;
		Follow the cunt descr rule;
		say "A tingling sensation floods your [if Cunt Count of Player > 1]cunts before they grow[else]cunt before it grows[end if] in size, ready to take in bigger loads to inseminate you.";


[	HP of Doctor Medea	]
[ Meeting & MPreg		]
[ 0 = Not encountered	]
[ 1 = Talked at door	]
[ 2 = Offered MPreg		]
[ 3 = Sent to Hospital	]
[ 4 = Got supplies		]
[ 5 = Minimal MPreg		]	[Requires Medeaget resolved for full]
[ 6 = Completed MPreg	]

[	Medeaget			]
[ Basic equipment		]
[ 0 = Not discussed		]
[ 1 = Spoke w/her		]
[ 2 = Found truck		]
[ 3 = Gave med supplies	]

[ lust of Doctor Medea  ]
[ Heat manipulation		]
[ 0 = Not discussed		]
[ 1 = Discussed heats	]
[ 2 = Supplies from vet	]
[ 3 = Gave vet supplies	]

[	Medeaub				]
[ T/F = Discussed UB	]

Medical Checkups ends here.
