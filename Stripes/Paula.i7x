Version 1 of Paula by Stripes begins here.
[Version 1.2 - Additional sex scenes]

"Adds a vixen nurse NPC to Flexible Survival."

[  HP of Paula          ]
[ overall status        ]
[ 0 = Task not prompted ]
[ 1 = Alexandra got supplies, no Paula ]
[ 2 = got supplies w/o Paula           ]
[ 3 = got supplies and Paula           ]
[ 4 = talked to Paula                  ]
[ 5 = had sex                          ]

[   hunger of Paula   - Whether at library or not     ]
[   0:     Paula at Police Station     ]
[   1:     Paula at Library            ]

Section 0 - Rescuing Paula

to say paula_rescue:	[This is one of Good Alexandra's tasks.]
	say "     Agreeing to go along, you make sure you've got your pack and gear ready before heading out together. You and Alexandra chat a little on the trip, but are mostly quiet to help avoid drawing attention to yourselves. Thankfully, aside from a few easily dispatched troublemakers, the journey there is uneventful.";
	move player to City Hospital;
	now City Hospital is known;
	say "     You and the doberman cop head into the dark and foreboding hospital. Wary and on edge, you travel the halls together, checking inside some patient rooms in the hopes of finding useful supplies. Things proceed slowly at first, coming across a few useful items from time to time, stockpiling them in the packs you've brought. Coming to an intersection, you spot a notice on an unblocked set of doors which states that the area beyond as being for staff only. Feeling that would be a more likely area to look for medical supplies, you signal for Alexandra to follow you down that way.";
	say "     As you pass along the darkened halls, you hear some activity up ahead. You both freeze and listen, wary of danger.";
	WaitLineBreak;
	say "     '...coming to, dammit. Anesthesia!' a male voice barks authoritatively.";
	say "     'Applying anesthesia,' another voice replies quickly, this one female.";
	say "     The first voice returns. 'It's working. Good. Continue the application.' After a brief pause. 'Nurse, apply more vixen until her symptoms improve.'";
	say "     'Gladly, doctor,' a second female giggles.";
	say "     'Dammit, nurse! This is no laughing matter. This is a serious medical operation. Now lick faster!' he responds.";
	WaitLineBreak;
	say "     By this point, you've located the source as coming from a nearby operating room. Peering inside, you find some of the hospital staff in the midst of this [']serious medical operation[']. Under the direction of one of the canine doctors (busily jerking himself off), two vixens are atop a third strapped down on the operating table. The first is sitting atop the bound one's face, likely providing anesthesia in the form of her dripping snatch to lick. The other has her muzzle buried between their victim's legs, eating her out. At first, you think this just some fun for the medically kinky staff, but you spot a kit bag on the floor with some scavenged medical gear and a big jug of water. Looking again, you can see the silvery fox fur spreading across what was once scales.";
	say "     Seeing this as well, Alexandra bursts right in. 'Police! Stop this immediately!' she growls.";
	say "     The vixens, taken by surprise, stop and look at her, but the doctor is unfazed by her outburst. 'Please, officer. This is an operating room and we're performing a very delicate procedure. I'll have to ask you to wait outside until we're done. Then I'll be happy to provide a hot bitch like yourself with my medical expertise,' he says with a leer up and down her canine form. 'Nurse, apply more vixen, stat!' he barks, turning back to his slutty staff.";
	say "     Alexandra, certainly not going to wait outside, pulls out her nightstick and prepares to fight. In that brief moment, you can rush in to take on either the doctor in charge or go after the nurses, leaving the other to your partner.";
	say "     [bold type]Which shall it be - the doctor or the nurses?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - The doctor.";
	say "     ([link]N[as]n[end link]) - The nurses.";
	if Player consents:
		say "     Moving past the doberwoman, you charge at the doctor while telling her to help the prisoner. You can see her heading towards the vixens, one of them leaving the patient to deal with the interruption while the other continues to ride her face. But you've got your own problems to deal with in the form of the horny doctor.";
		now hdmode is 3;
		challenge "Horny Doctor";
		now hdmode is 0;
		if fightoutcome >= 10 and fightoutcome <= 19:
			say "     As you're wrapping up with the canine doctor, you glance over to check on Alexandra to see her driving off the second of the vixens with a growl. From the looks of her, she's not had much difficulty in dealing with them. When the doctor retreats, he calls out for [']Security['] as he does.";
			say "[paula_saved]";
		else if fightoutcome >= 20 and fightoutcome <= 29:
			say "     With you defeated by the canine doctor, Alexandra is forced to come to your rescue. Outnumbered in the mutant-infested hospital, the two of you must retreat as the doctor calls for security, leaving their vixenized victim to her fate as another member of the staff.";
			now HP of Paula is 2;
		else:
			say "     Unable to hold up against the canine doctor, you have to call for a retreat. Alexandra, reluctant to leave their vixenized victim, is forced to go along or face the trio on her own. And with the doctor calling for security to come, you can hear more mutants approaching. The two of you quickly make your escape, leaving their patient to become another of the hospital staff.";
			now HP of Paula is 2;
	else:
		say "     With Alexandra already focused on the doctor, you move towards the vixens. Grabbing the one busily licking at their patient's pussy, you pull her away. 'Hey! I'm on duty!' she yips as she shoves you back. 'Though I guess I could give you a quick treatment,' she adds as her eyes run over you. And with that, she comes at you.";
		challenge "Vixen Nurse";
		if fightoutcome >= 10 and fightoutcome <= 19:
			say "     With the first of the nurses dealt with, you glance over to see Alexandra still trying to deal with the other canine. They seem pretty evenly matched, though the doctor does seem to have the advantage. You consider going to her aid, but the other nurse has climbed off a her patient's juice-covered muzzle and comes at you.";
			challenge "Vixen Nurse";
			if fightoutcome >= 10 and fightoutcome <= 19:
				say "     Having dispatched the second of the vixens, you turn to check on Alexandra, only to find her being molested by the doctor from behind. With her arms pinned to her sides, he's busily humping her leg while groping her breasts. Flushed and panting heavily despite herself, she's unable to break free until you come to her aid. Now facing two foes, the doctor is forced to retreat, calling out for [']Security['] as he does.";
				say "[paula_saved]";
			else if fightoutcome >= 20 and fightoutcome <= 29:
				say "     With you defeated by the naughty nurse and Alexandra struggling against canine doctor, she's forced to fall back to get you out of there. Retreating further as the doctor calls for security, drawing the attention of others, you are forced to leave their vixenized victim to her fate as another member of the staff.";
				now HP of Paula is 2;
			else:
				say "     Unable to hold up against the vulpine nurse, you have to call for a retreat. Alexandra, already struggling against the canine doctor, is forced to fall back as well or face the trio on her own. And with the doctor calling for security to come, you can hear more mutants approaching. The two of you quickly make your escape, leaving their patient to become another of the hospital staff.";
				now HP of Paula is 2;
		else if fightoutcome >= 20 and fightoutcome <= 29:
			say "     With you defeated by the naughty nurse and Alexandra struggling against canine doctor, she's forced to fall back to get you out of there. Retreating further as the doctor calls for security, drawing the attention of others, you are forced to leave their vixenized victim to her fate as another member of the staff.";
			now HP of Paula is 2;
		else:
			say "     Unable to hold up against the vulpine nurse, you have to call for a retreat. Alexandra, already struggling against the canine doctor, is forced to fall back as well or face the trio on her own. And with the doctor calling for security to come, you can hear more mutants approaching. The two of you quickly make your escape, leaving their patient to become another of the hospital staff.";
			now HP of Paula is 2;
	if HP of Paula is 2:		[lost or fled]
		say "     Once you've put some distance between you and the hospital, you and Alexandra pause somewhere out of sight to take stock of the situation. Before the incident in the operating room, the two of you had managed to collect some usable medical supplies, at least enough to deal with some basic problems those under her protection might have. Clearly disappointed with her failure at saving a potential survivor, she's glad that the two of you were at least able to make it out of there intact. She is a little sullen for a while, but focuses on still moving forward with her plans.";
	move player to Police Station Twelve;
	follow the turnpass rule;


to say paula_saved:
	say "     Not wanting to get surrounded by the creatures drawn to his cries, you and Alexandra quickly set about checking on their patient. During the struggle, the last of those scales you saw have disappeared and she now looks rather similar to the other vixens you've seen running around this place.";
	WaitLineBreak;
	say "     'Oh great. First it's [']kinky medicine time['] and now it'll be [']slutty cop action[']. This day just gets better and better,' she snarks as she rolls her eyes.";
	say "     'It's not like that,' Alexandra growls. 'I'm a real police officer and we're here to help.'";
	say "     'Oh,' the vixen responds, a tinge of disappointment in her tone. 'Well, I'm sure you'll spring some catch on me later, but my wrists are getting numb, so let's get out of here at least,' she adds. Despite her attitude, you can't help but agree with the need to make your escape as the sound of others approaching gets louder. Once freed, she grabs her pack and a bundle of clothes (naturally having been nude for her procedure) and follows you out as quickly as you dare.";
	WaitLineBreak;
	say "     The trip back to the police station is mostly quiet, though you do get some preliminary information from the vixen. Aside from learning that she's another survivor named Paula and that she was part lizard before getting caught, it turns out she was on a similar mission as you, raiding the hospital for medical supplies. Having some medical training of her own, she thought it'd be a suitable means to bribe the mutants around her home to leave her alone. She's quite dubious of the offer for safe haven at the police station, but she goes along with it rather than try to maintain the goodwill of the lustful tribes forming around her place, whom she trusts even less as they descend further into depravity. Despite her cynicism and heavy use of irony (in the trendy sense), she does offer to help out by acting as a nurse when needed. Having found a nurse's outfit among the bundle she escaped with, she certainly looks the part.";
	move Paula to Police Lockerroom;
	now HP of Paula is 3;


Section 1 - Paula the Vixen Nurse

Table of GameCharacterIDs (continued)
object	name
Paula	"Paula"

Paula is a woman.
The description of Paula is "[pauladesc]".
The conversation of Paula is { "Sexy treatment." }.
The icon of Paula is Figure of Paula_icon.

the scent of the Paula is "The vixen smells of antiseptic, medicine and faintly of vulpine arousal.".

to say pauladesc:
	say "     Paula, thanks to her [']treatment['] back at the hospital, has become a vixen. Like the nurses there, she has a coat of silvery fur covering her sexy figure. But unlike them, she wears a more reserved nurse's outfit, mainly at Alexandra's insistence. Of course, even that can't compete with such features as her twin rows of breasts and her tight bottom. Nor does it prevent her from putting a bit of naughty teasing into her bedside manner.";
	say "     If you're injured, you can talk to Paula about some [bold type]healing[roman type] once a day. Also, she'll give you a hand with any first aid you do with your medkits while here.";


Section 2 - Conversation

Instead of conversing the Paula:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Paula]. Location: [location of Paula]. Alexandra's hint: [if AT_Paula is true]Given[else]Not given[end if]. <- DEBUG[line break]";
	if HP of Paula is 0 or HP of Paula is 1 or HP of Paula is 2:
		say "ERROR-Paula-[HP of Paula]L: You should not be able to find her yet.";
	else if HP of Paula is 3:
		say "     Approaching the vixen, you ask her how she's making out. 'Well, things aren't too bad here right now. Oh, I'm sure it'll all go downhill eventually, but it should be safe enough for a while. You and Alexandra seem to be setting up a pretty good shelter, so when this place does eventually descend into a sex pit, at least it'll be a [if policerepair > 3]well-protected and [end if]well-equipped one. A person can't reasonably expect much more than that these days.'";
		say "     Pointing out that that's a pretty grim outlook, especially since military rescue is coming, she just rolls her eyes. 'Oh, you believe that garbage, do you? Who'd want to come in here to try and save a bunch of pervy monsters like us? That's just to keep us borderline cases quiet and complacent a little longer.";
		say "     'Look, I'm a realist, not a pessimist. And I realize that things have gone to Hell in a handbasket. No point in expecting the best out of people - you'll rarely get it and just be disappointed in them almost all the time. But when you don't, at least you can have your expectations exceeded,' she says, running a paw across your hip with a sultry swish of her tail. 'On rare occasions.'";
		now HP of Paula is 4;
	if hunger of Paula is 0: [At police station]
		if PoliceStationTwelvePopulation > 0 and a random chance of 1 in 4 succeeds:
			say "[paulasurvivors]";
		else:
			say "     [one of][if PoliceStationTwelvePopulation is 0]'Any patients for me?'[else]'I've got a little bit of time before I have to see my next patient.'[end if][or]'You seem to go wandering around outside quite a bit. Probably perving on the mutants, aren't you?'[or]'You know, you're going to get yourself into real trouble out there if you keep pressing your luck. If you end up hurt, come see me for some [bold type]healing[roman type].'[or]'I wonder which of you two'll snap first and turn this place into a sex harem. Probably [if HP of Alexandra < 61]Officer Doggy out there - she's wound pretty tight. She should learn to relax and have a little fun. Therapeutically ease the pressure and all[else]be you, running around out there, probably getting up to all sorts of kinky stuff with those mutants out there. You'll end up some kind of sex perv and come back here to ravage us all[end if],' she says, stretching her arms up, causing her quad breasts to press against the fabric straining to cover them.[or]'I'd made out alright on my own for a while, but my luck was bound to run out.'[or]'I think this vixen look's not bad. Better than those itchy scaly patches I'd picked up.'[or]'Can you believe I was a part-time nurse at that hospital before all this? This isn't what I had in mind when I was hoping to become full-time staff,' she says, fondling her double-bosom teasingly.[or]'So you thinking to get some [if HP of paula >= 5]more [end if]sex out of me in return for letting me stay here. Well, I guess that should be expected,' she says, giving her booty a shake in your direction.[or][if HP of Alexandra >= 65]'That robo-chick is one cold as ice bitch. She's caught and she's still smug like her shiny ass makes her better than the rest of us or something. Miss Bow-Wow should put dents in her chassis until she talks.'[else]'You just like coming here to stare at me in my nurse's outfit, don't you?' Dirty perv,' she grumbles even as she turns and bends over to reach for something, tail raised and flicking.[end if][in random order]";
	else if hunger of Paula > 0:
		say "[PaulaTalkMenu]";
[***]

to say paulasurvivors:
	let infpoppercent be 0;
	now infpoppercent is ( 100 * PoliceStationTwelveInfpop ) / PoliceStationTwelvePopulation;
	if PoliceStationTwelvePopulation > 20:
		say "'I'm actually pretty busy doing regular check-ups on those survivors, mostly monitoring them for infections and so on[if infpoppercent is 100]. They're all pretty much infected with something by this point, but it's still important to monitor their condition to make sure their condition doesn't deteriorate too badly[else]. As of my last check, I'd say that about [infpoppercent]% of them are more infected than human at this point. It's more a matter of making sure their condition doesn't deteriorate too badly[end if].";
	else if PoliceStationTwelvePopulation > 12:
		say "'I'm fairly busy doing regular check-ups on the remaining survivors. I'm mostly monitoring them for infections and so on[if infpoppercent is 100]. They're all pretty much infected with something by this point, but it's still important to monitor their condition to make sure their condition doesn't deteriorate too badly[else]. As of my last check, I'd say that about [infpoppercent]% of them are more infected than human at this point. It's more a matter of making sure their condition doesn't deteriorate too badly[end if].";
	else:
		say "'Some of my time's taken up doing regular check-ups on the remaining survivors. I'm mostly monitoring them for infections and so on[if infpoppercent is 100]. They're all pretty much infected with something by this point, but it's still important to monitor their condition to make sure their condition doesn't deteriorate too badly[else]. As of my last check, I'd say that about [infpoppercent]% of them are more infected than human at this point. It's more a matter of making sure their condition doesn't deteriorate too badly[end if].";

to say PaulaTalkMenu:
	say "     There's a few topics you might be able to discuss with Paula. Is there anything in particular on your mind or do you just want to chat?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "About Her";
	now sortorder entry is 1;
	now description entry is "Ask the vixen about herself";
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
				now sextablerun is 1;
				if nam is "About Her":
					say "[PaulaTalk1]";
				wait for any key;

to say PaulaTalk1:
	say "     'You want to know about me now? How long was I in the police station, and you waited until now to ask me about myself. A girl might get insulted if she weren't as forgiving as I am. I just hope you aren't trying to take advantage of me. Because I'm not sure I would be able to stop you,' she teases suggestively. 'I grew up in a small town in the north where everyone knew everybody else and newcomers were a once in a decade occurrence and visitors only appeared when they were lost. When I was young, there was only the post office which my parents managed, a small shop that sold groceries and a petrol station. We had a police building too I suppose, but barely. The nearest medical practice was several hours drive away, so if you got hurt you were reliant on someone's mother to having a look at you and decide whether or not they could patch you up or that someone was going to have to rush you to a hospital with your blood staining the seats of their truck. We were a close community, perhaps too close but I can't remember anyone looking too obviously inbred. So I think there was some disappointment when I decided I wanted to leave and see a bit more of the world.'";
	say "     'I didn't get to see much more of the world in the end. My parents gave me a small amount of money so I could make a life somewhere else, and I heard at how nice California was, so I came here and started a course on nursing, doing waitressing to help pay the fees. After I completed the course, top of my class I might add, I started looking for employment at the hospital here, but they weren't hiring so I had to decide whether to find another job here while I waited, or look further afield. After a few days of lying around at home thinking about how I missed my mother, I decided I would try some of the doctors around the city. Everyone of them I went to didn't have any jobs going. Dr. Fuchs I think he was called, could only afford the salary of the one nurse who assisted him, and Dr. Medea at the pediatrics clinic already had sufficient staff for her needs.'";
	WaitLineBreak;
	say "     'They were very apologetic, but regret doesn't pay the bills and I was beginning to think I would have to return north. Perhaps I should have, I might have avoided the sea of pheromones that the city seems to have become, but I decided to stay and wait, hoping that a vacancy would appear at the hospital. Then the transformed started rampaging around and my chances of paid work flew south for the winter. After I found out that the hospital had become a sex trap, I thought that I could perhaps use my medical knowledge to help people in exchange for food and water, all I had to do was [']borrow['] some of their supplies that they weren't using. It didn't go very well. I got rather badly bitten by one of the patients on my way out and then the staff were adamant that they had to treat me. The rest you know. I thought it was about to be a change from naughty nurses to perverted policemen, but you and Alexandra have done alright I suppose. You haven't disappointed me too much so I think I made the right choice. But haven't you got heroic acts to be doing? Go on, we can talk another time.'";

Section 3 - Sex with Paula

the fuckscene of Paula is "[sexwithPaula]".

to say sexwithPaula:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Paula]. Location: [location of Paula]. Alexandra's hint: [if AT_Paula is true]Given[else]Not given[end if]. <- DEBUG[line break]";
	if HP of Paula is 0 or HP of Paula is 1 or HP of Paula is 2:
		say "ERROR-Paula-[HP of Paula]L: You should not be able to find her yet.";
	else if HP of Paula is 3:
		say "     You haven't really had a chance to talk to Paula yet since she got here. You should probably start with that.";
	else if Player is neuter:
		say "     Lacking a proper gender of your own right now, perhaps you should deal with that before seeking sex from others.";
	else if lastfuck of Paula - turns < 6:
		say "     'You're back pretty quickly for more, don't you think? Probably means you're losing it, if you're back asking for sex again so soon. Try holding out a little longer before we knock boots again,' she adds, running her paws along her sides in a sultry manner in a clear invitation that you are indeed welcome back for more soon.";
	else:
		if HP of Paula is 4:
			say "     'And so it begins,' she says with a bit of sigh. 'Knew there'd be a catch to staying here.' Despite her words, she show no reluctance in the speed at which she strips herself down, baring her silver-furred body to you. With a slow stretch and a swish of her tail, she spreads herself out on the cot. With one foot sitting up on the edge of it, she puts herself on tantalizing display for you. 'Guess I'll just have to learn to put up with it somehow,' she purrs, running her tongue along the edge of her lips.";
		else:
			say "     'Back for more, I see. Taking advantage of the poor nurse you've taken in. Well, if that's how it has to be,' she says, grinding her sexy body against yours. She rubs her ample bosom against your chest before moving her paws up to slowly unbutton her nurse's outfit. Even as she's stripping down, she moves over to the cot with a sultry sway to her hips. Dropping her clothes to the floor, she stretches out on her makeshift examination table in a steamy pin-up pose.";
		say "     'So, what did you have in mind[if HP of Paula > 4] this time[end if]?'";
		say "[Paulasexmenu]";
		if HP of Paula is 4, now HP of Paula is 5;


to say Paulasexmenu:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Fellatio";
		now sortorder entry is 1;
		now description entry is "have her suck you off";
		if Cock Length of Player >= 12:
			choose a blank row in table of fucking options;
			now title entry is "Double-titty-fuck";
			now sortorder entry is 2;
			now description entry is "nestle your cock between those four furry mounds";
		choose a blank row in table of fucking options;
		now title entry is "Missionary";
		now sortorder entry is 3;
		now description entry is "fuck the sexy nurse";
[		choose a blank row in table of fucking options;
		now title entry is "***TBD***";
		now sortorder entry is 4;
		now description entry is "another sex position";]
[		choose a blank row in table of fucking options;
		now title entry is "***TBD***";
		now sortorder entry is 5;
		now description entry is "another sex position";]
	if Player is female:
		choose a blank row in table of fucking options;
		now title entry is "Get cunnilingus";
		now sortorder entry is 6;
		now description entry is "have her eat you out";
[		choose a blank row in table of fucking options;
		now title entry is "***TBD***";
		now sortorder entry is 7;
		now description entry is "another sex position";]
	choose a blank row in table of fucking options;
	now title entry is "Give cunnilingus";
	now sortorder entry is 8;
	now description entry is "eat the vixen out";
[	choose a blank row in table of fucking options;
	now title entry is "69";
	now sortorder entry is 9;
	now description entry is "have some mutual oral fun";]
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: Shall you [description entry]?";
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if nam is "Fellatio":
					say "[paulasex01]";
[				else if nam is "Double-titty-fuck":
					say "[paulasex02]";]
				else if nam is "Missionary":
					say "[paulasex03]";
[				else if nam is "***TBD***":
					say "[paulasex04]";]
[				else if nam is "***TBD***":
					say "[paulasex05]";]
				else if nam is "Get cunnilingus":
					say "[paulasex06]";
[				else if nam is "***TBD***":
					say "[paulasex07]";]
				else if nam is "Give cunnilingus":
					say "[paulasex08]";
[				else if nam is "69":
					say "[paulasex09]";]
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	now lastfuck of Paula is turns;
	wait for any key;
	clear the screen and hyperlink list;


to say paulasex01:
	say "     Deciding to put that muzzle of hers to better use than her typical cynical remarks, you offer up your cock to her instead. 'Oh my! Look at this swelling,' she says with exaggerated concern. 'You should have said it was a medical issue. This. needs. immediate. treatment,' she says, each pause a lick from her tongue[if cockname of Player is not listed in infections of internallist]. Her focus drifts down to your [ball size], which she licks and kisses while caressing them with her paw. 'These definitely need to be drained,' she purrs sexily[else]. Giving your full length a long, slow lick, she strokes your engorged member. 'This definitely needs to be drained,' she purrs sexily[end if].";
	say "     Opening her muzzle, she takes your [cock size desc of Player] cock past her lips[if Cock Length of Player > 36] with some effort[else if Cock Length of Player > 24] with some effort at first[end if]. Working her tongue and palate, she's quite enthusiastic about blowing you, working her muzzle over your [cock of Player] manhood while her paws stroke the base of your shaft[if cockname of Player is not listed in infections of internallist], your balls[end if] and your hips. Your breathing gets heavy and your penis pulses and throbs in her mouth as your excitement builds under her tender care. Eventually you can no longer hold back and, with a moan of 'Oh nurse!' you unload your [Cum Load Size of Player] load into her sucking maw[if ball size of Player < 30]. She swallows it all down eagerly, licking away the last drops before releasing your spent shaft[else]. She swallows as much of it as she can, but it's too much and some ends up overflowing from her pretty muzzle and dripping down onto her bosom before you're finally spent[end if].";

to say paulasex02:
	say "     'Well, I guess I'll just have to let you get it out, else you could end up snapping and running wild.' Stretching her arms up above her head, she gives an exaggerated sigh, giving you a clear view of her twin pairs of breasts. The soft, silvery fur of her chest does not hide the shapely nature of her double-bosom and their perky nipples.";
	say "     Dropping to her knees, she takes hold of your erection and, after giving it a few playful strokes, nestles it in her warm bosom. Her twin racks cradle your [cock size desc of Player] member in their soft embrace. Pointing her muzzle down, she kisses your glans before slipping her lips around it. She grinds her chest against your shaft in this delightful manner. You put a hand on the vixen's head and caress her ears.";
	say "     She works your arousal between her tits, gently pressing them around it with her paws. Soon this treatment has you panting and rocking your hips into her motion. Sensing you getting close, she lowers her muzzle further and sucks on you harder. A few final licks finishes the job, causing you to groan in lustful release, pumping your [Cum Load Size of Player] load into her warm, sucking muzzle. She licks your shaft clean with a self-satisfied sigh before getting back up and closing up her shirt with a professional air.";
	say "     'Be sure to come see me again if you need another treatment. And I hope you appreciate it; not all of my patients receive this level of service.";

to say paulasex03:
	say "     Rather than answer with words, you move atop her on the cot, placing your hands beside her. She smiles up at you and takes hold of your [cock of Player] cock, stroking it meaningfully. 'Looking to pound the naughty nurse, are you?' she says sensually, shifting her position to leave herself open and ready for just that. With the lovely vixen holding you lined up with her wet pussy, you ease forward and sink your [cock size desc of Player] manhood into her[if Cock Length of Player > 36] with some effort[else if Cock Length of Player > 24] with some effort at first[end if]. And once you're in, her paws move to your ass and grip it firmly, pulling you forward to thrust into her heated cunny.";
	say "     After exchanging some kisses and setting up a good rhythm for both of you, you bring your hands to her upper pair of breasts to fondle them while she gropes her lower pair. Seeing you both enjoying her furry mounds while you fuck her is quite the arousing sight and your cock throbs and pulses inside her, precum leaking with every thrust you make. And from the way she's panting and moaning, she's really enjoying it as well. The sexy vixen wraps a leg around behind you and raises her hips up into each thrust you make.";
	say "     The scent of sex and vulpine arousal is heavy in the air as you feel a pressure building in your balls. With your hot cum primed for release, you grab her hips and drive yourself into her for a few last thrusts. And when you finally pop and start unloading your [Cum Load Size of Player] load into her quivering cunny, she arches her back and cries out, her orgasm set off by your release. Panting, moaning and yipping come from you both as you paint the sultry nurse's vagina and womb with your seed[if ball size of Player > 30] until it overflows from her[end if] in a sticky mess. After taking a few minutes to recover, you pull out and are treated to the vixen sucking your cock clean before she'll give you a clean bill of health and send you on your way.";

to say paulasex04:
	say "***TBD***";

to say paulasex05:
	say "***TBD***";

to say paulasex06:
	say "     Hopping up onto the edge of her examination table, you spread your legs, inviting her to lick your pussy. She puts her paws on your thighs and parts your legs a little further. 'Here, let me have a look at that,' she says. 'Hmm... yes, indeed,' she adds, leaning in closer to give your wet folds a long, slow lick. And that lick is followed by another and then another. Soon she's wriggling that vulpine tongue of hers around inside your cunny, eating out your snatch with obvious relish.";
	say "     You place a hand on the vixen's head, caressing those pointed ears of hers. This encourages her to place a few fingers on your clit and tease at it as well. Her other hand finds its way between her own legs and a few fingers slip into her wet cunt. She frigs herself with soft moans of enjoyment as her tongue plays around along your inner walls. Her tongue moves in luxurious ways, teasing any inner pleasure spot it can find in her attempt to satisfy her partner.";
	say "     Subject to this fine tonguework, you can only last so long before tilting your head back and crying out in lustful release. Your hot femcum flows across the lapping vixen's tongue. The hand between her legs moves frantically, soon pushing her to orgasm as well. The added zeal she applies to licking and kissing your clit at this point rekindles your climax to a second peak. You're both left panting and very damp at the crotch from your orgasms by the time she pulls away. She teasingly declares your examination done and gives your rear a swat as you hop down from the examination table.";

to say paulasex07:
	say "***TBD***";

to say paulasex08:
	say "     Whether it's to prove to her that it's not all about you or just because you really do want to eat her out, you drop to your knees by the cot and bury your face between her legs. She moans softly as your tongue runs across her juicy folds. Her hips quiver and her pussy grows wetter as you give her a few licks. Running your hand along her raised thigh, you stroke her soft fur on your way to give her ass a squeeze. As your tongue probes deeper and your free hand moves to play with her clit, she pants and moans louder, stroking a paw over your head while the other plays with her breasts.";
	say "     You pause for a moment to take in the lovely sight of the sexy vixen breathing heavily as her excitement builds, her lovely quartet of breasts moving with every breath. But as beautiful as it is, your tongue is drawn back to the scent and taste of her dripping cunny. Diving back in with greater zeal, you play your tongue across her sensitive petals, into her quivering depths and across her firm clit. Eventually the oral assault proves to be too much for the vixen, driving her to a moaning, yipping climax that has her hot juices dripping from your chin by the time you're done and she's left sated.";

to say paulasex09:
	say "***69";



Section 4 - Healing

paulahealing is an action applying to nothing.
lastPaulahealing is a number that varies. lastPaulahealing is usually 255.
Understand "healing" as paulahealing.
Understand "ask for healing" as paulahealing.
Understand "ask Paula for healing" as paulahealing.
Understand "Paula healing" as paulahealing.
Understand "healing Paula" as paulahealing.

check paulahealing:
	If Paula is not visible, say "[if HP of Paula < 3]You're on your own for that unless you go see Paula for assistance[else]Try using a medkit or another means of healing[end if]." instead;

carry out paulahealing:
	if ( 100 * HP of Player ) / maxHP of Player >= 90:
		say "     You're not really hurt enough to require using the shelter's limited medical supplies. You should probably just cope.";
	else if lastPaulahealing - turns < 8:
		say "     'We've got to ration our medical supplies. I know you're kind of a big help to Alexandra, but access is limited to once a day. We have to be sure we have enough for any survivors in need we're sheltering.";
	else:
		let healed be ( maxHP of Player - HP of Player ) / 2;
		if "Rapid Healing" is listed in the feats of Player:
			now healed is ( healed times 110 ) divided by 100;
		if "Regeneration" is listed in the feats of Player:
			now healed is ( healed times 110 ) divided by 100;
		if ( healed + HP of Player ) > maxHP of Player, now healed is ( maxHP of Player - HP of Player );
		increase HP of Player by healed;
		say "     'Alright, what seems to be the problem?' she asks. As you point out your injuries to her, she looks them over. 'You know, you'd not be in such rough shape if you chose to stick around here with us. It's not like you're doing any good gallivanting around out there,' she says cynically. 'Much better to just stay here and keep out of trouble,' she adds, groping you with a passing paw even as she grumbles teasingly. After her quick examination, she digs out the necessary supplies from her bag, all while making a show of waving her rear in the air. 'You're probably just out there to chase some tail. Typical.'";
		say "     Despite her cynical edge and teasing mannerisms, she takes proper care of you, treating your wounds and ensuring you're properly patched up before letting you off the examination table with another sharp retort and a swat on your rear. You feel considerably better, having recovered [special-style-1][healed][roman type] HP.";
		now lastPaulahealing is turns;

Paula ends here.
