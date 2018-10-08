Version 4 of Orthas by Stripes begins here.
[- Originally Authored By: Nuku Valente, Khabi -]
[ Version 3.1 - New sex sub-variations for herm sex w/Orthas - Stripes]
[ Version 4 - Started re-write of all content - Wahn]

[ HP of Orthas                               ]
[ -1 = guard duty delayed                    ]
[ 0 = guard duty open for discussion         ]
[ 1 = refused post-guard-duty sex = LOCKED   ]
[ 2 = had ovipositor sex w/o egg info        ]
[ 3 = fucked Orthas w/o receiving egg        ]
[ 4 = fucked Orthas and received egg         ]
[ 5 = given task #2 - mementos               ]
[ 6 = gathered w/mementos                    ]
[ 7 = returned w/mementos                    ]

Section 0 - Orthas

Table of GameCharacterIDs (continued)
object	name
Orthas	"Orthas"

Orthas is a person. "A dragon person, clearly female, is watching the area. She wears a handwritten name badge that reads 'Orthas'.".
The description of Orthas is "[OrthasNPCdesc]".
The conversation of Orthas is { "Eggses!" }.
Orthas is in Trevor Labs Lobby.

the scent of Orthas is "Orthas smells like a strong, powerful dragoness[if HP of Orthas is 2 or HP of Orthas is 3]. She has a lingering scent of arousal hanging over her[else if HP of Orthas is 4]. She has a strong scent of arousal and egg-laying hanging over her[end if].".

the fuckscene of Orthas is "[Orthasfuck]".

to say OrthasNPCdesc:
	project the Figure of Orthas_face_icon;
	say "     Orthas is a black-scaled dragoness with an overall hunanoid build that shows quite a few muscles while still being decidedly feminine. Her large F-cup breasts leave little doubt of that, making quite a distracting display with every breath she takes. She stands about six and a half feet tall and has a large set of wings folded aganst her back, completing the image of a strong woman that few would dare mess with. Behind her, a long reptilian tail sways slowly from left to right.";
	say "     Being the guardian of the Trevor Labs building, most of Orthas's time is spent in its lobby, where she dutyfully guards the entrance and the stairs that lead up into the offices and labs.";

Meeting Orthas is a situation.
The sarea of Meeting Orthas is "Nowhere".

instead of going to Trevor Labs Lobby while (Meeting Orthas is not resolved and Resolution of Meeting Orthas is 0 and Orthas is in Trevor Labs Lobby):
	move player to Trevor Labs Lobby;
	MeetingOrthasEvent;

instead of resolving Meeting Orthas:
	MeetingOrthasEvent;

to MeetingOrthasEvent:
	project the Figure of Orthas_face_icon;
	if debugactive is 1:
		say "DEBUG -> First Encounter with Orthas, Resolution of Meeting Orthas: [Resolution of Meeting Orthas]";
	say "     As you walk into the room, the towering figure of an anthro dragoness awaits you, strong arms crossed before her broad chest and ample breasts. She is wearing parts of a security guard's uniform whose fabric is straining under the muscled bulk her six and a half foot tall frame brings with it. Focusing on you with a watchful eye, the woman calls out to you. '[bold type]Stop right there![roman type] This building is under my protection. Who are you and what do you want? Don't try anything or you're gonna get your ass kicked!' You have little doubt that she can follow through with those threats, given her impressive stature, so you stop in your tracks and tell her your name, earning a curt nod in greeting. 'Oh, you can talk. Not a raving fuckbeast then, eh? Still, I asked what you want.'";
	LineBreak;
	say "     [bold type]What do you reply?[roman type][line break]";
	say "     [link](1)[as]1[end link] - You're looking for other sane survivors.";
	say "     [link](2)[as]2[end link] - You kinda planned to scavenge in the building.";
	say "     [link](3)[as]3[end link] - You wanna meet and fuck interesting people.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to say you're searching survivors, [link]2[end link] to admit you wanted to scavenge or [link]3[end link] to say you were looking for sex.";
	if calcnumber is 1:
		LineBreak;
		say "     Orthas's cautious expression softens a little and she gives you a hint of a smile. 'Well, you've found them. In this building, there's me, Dr. Matt up in the lab, and some other employees hiding out in the deep basement levels. Haven't seen them in a while though, if I have to be honest, but that's not too surprising, given how often I have to fight off the creatures just waltzing in through the door.' She walks closer to you, then holds out her hand in greeting. As you don't immediately react to take it, the dragoness nods in understanding and adds, 'No worries about catching anything, by the way. The doc has told me that I'm not transmitting what made me like this.' Giving yourself a push, you shake her hand and feel its flexible, smooth scales against your skin. The two of you chat a little bit about what you've seen since the start of the outbreak, exchanging stories that would be unbelievable in any other situation. Eventually, Orthas says, 'You should go up and meet Dr. Matt too. I'm sure he'd be glad to see another sane person.'";
		now Resolution of Meeting Orthas is 1; [said you are searching survivors]
	else if calcnumber is 2:
		LineBreak;
		say "     Orthas's expression hardens a little and she shakes her head. 'Well, you're shit out of luck then. Apocalypse or no, everything in here is still company or employee property. Only staff like Dr. Matt, the guys in the deep basement and myself may access and use the stuff. We got to hold out till rescue somehow, so the loading dock and also the catering kitchen up on 3rd are off limits. I've got the keys, so you can save yourself the trip of trying to get in there.' She keeps your eyes locked to hers in a severe stare, long enough to make sure you know she's serious, then shrugs. 'But hey, other than that, it's good to meet another survivor. No hard feelings, alright?' With that said, the dragoness walks closer to you and holds out her hand in greeting.";
		say "     As you don't immediately react to take it, the Orthas nods in understanding and adds, 'No worries about catching anything, by the way. The doc has told me that I'm not transmitting what made me like this.' Giving yourself a push, you shake her hand and feel its flexible, smooth scales against your skin. The two of you chat a little bit about what you've seen since the start of the outbreak, exchanging stories that would be unbelievable in any other situation. Eventually, Orthas says, 'You should go up and meet Dr. Matt too. I'm sure he'd be glad to see another sane person.'";
		now Resolution of Meeting Orthas is 2; [said you want to scavenge]
	else:
		LineBreak;
		say "     Letting out an annoyed grunt, Orthas looks at you with a frown. 'Well, you're shit out of luck then. I'm sane enough not to fuck around with any random horndog that stumbles in here. That's a quick way to become one of the fuckbeasts that are wandering the streets. No thank you!' Putting her hands on her hips, the statuesque dragoness looks at you, seemingly contemplating sending you away before shrugging to herself. 'Okay, listen. I'm sure you're a swell person, but sex with me is out of the question. Doesn't mean we can't have a nice chat instead though. Not many folks around these days who can hold a conversation, you know. So... no hard feelings, eh?' She walks closer to you, then holds out her hand in greeting.";
		say "     As you don't immediately react to take it, the dragoness nods in understanding and adds, 'No worries about catching anything, by the way. The doc has told me that I'm not transmitting what made me like this.' Accepting her explanation, you shake the dragoness's hand and feel its flexible, smooth scales against your skin. The two of you chat a little bit about what you've seen since the start of the outbreak, exchanging stories that would be unbelievable in any other situation. Eventually, Orthas says, 'You should go up and meet Dr. Matt too. I'm sure he'd be glad to see another sane person. And no, he won't want to fuck you either.'";
		now Resolution of Meeting Orthas is 3; [said you want sex]
	now Meeting Orthas is resolved;

Section 1 - Conversation

instead of conversing the Orthas:
	project the Figure of Orthas_face_icon;
	if HP of Orthas < 3:
		say "     [one of]'Hello there.'[or]'The good doctor is upstairs. You can see him. Don't cause trouble.'[or]'You are pretty brave to wander the city right now.'[or]'I would explore too if I wasn't guarding the doctor.'[or]'What is it like out there?'[in random order]";
	else if HP of Orthas is 3:
		say "     [one of]'Hello there.'[or]'Hey there, hot stuff.'[or]'You are pretty brave to wander the city right now.'[or]'I would explore too if I wasn't guarding the doctor.'[or]'What is it like out there?'[in random order]";
	else if HP of Doctor Matt >= 8 and HP of Orthas is 4:		[finished Main Storyline 1 + Orthas task 1 w/Dragon egg]
		say "[Orthas_task2_start]";
		now HP of Orthas is 5;
	else if HP of Orthas is 4:
		say "     [one of]'Hey there, how's momma?'[or]'Hey there, hot stuff.'[or]'You are pretty brave to wander the city right now.'[or]'I would explore too if I wasn't guarding the doctor.'[or]'What is it like out there?'[in random order]";
	else if HP of Orthas is 5 or ( HP of Orthas is 6 and footlocker is not owned ):
		say "     [one of]'Hey there, how's momma?'[or]'Hey there, hot stuff.'[or]'You are pretty brave to wander the city right now.'[or]'I would explore too if I wasn't guarding the doctor.'[or]'What is it like out there?'[or]'Have you had a chance to stop by my place yet?'[or]'Don't forget about that little errand I asked you to run.'[in random order]";
	else if HP of Orthas is 6:
		say "[Orthas_task2_done]";
		now HP of Orthas is 7;
	else if HP of Orthas is 7:
		say "     [one of]'Hey there, how's momma?'[or]'Hey there, hot stuff.'[or]'You are pretty brave to wander the city right now.'[or]'I would explore too if I wasn't guarding the doctor.'[or]'You be sure to come back to me, hon.'[or]'What is it like out there?'[or]'You keep doing your best to help the doc so we can all get out of here safe and sound.'[or]'I'm proud of you for braving the city to help the doc.'[or]Orthas gives you a hug, running her scaled hand over your [if gestation of child > 0]rounded belly. 'Mmmm... you're so pretty when you're preggers,[else]belly. 'Mmm... looks like someone needs an egg in them,[end if]' she rumbles.[in random order]";


Section 2 - Orthas Task 1 - Guard Duty

after going east from Trevor Labs Lobby when the HP of Doctor Matt > 2 and HP of Orthas is -1:
	now HP of Orthas is 0;

after going down from 2F Trevor Labs when the HP of Doctor Matt > 2 and HP of Orthas is 0 and Orthas is visible:
	move player to Trevor Labs Lobby;
	project the Figure of Orthas_face_icon;
	say "     As you come down the stairs from the upper floor of the lab, Orthas, the dragoness who has been guarding the good Doctor this whole time, stops you. She's at least six and a half feet tall and a rather imposing figure, but there is no malice apparent in her demeanor at all. 'Wait a moment. Now that you've met the doc and know what important work he's doing, I was wondering you might spare a moment to talk to me.'";
	say "     [bold type]Listen to what she has to say?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Sure thing.";
	say "     ([link]N[as]n[end link]) - Not right now, you got things to do.";
	if player consents:
		LineBreak;
		say "     'I worked here before the outbreak,' she begins. 'I was a security guard then, too, a big fella. Yeah, I was male before this all started - I've gotten used to being female and dragon-y. Anyway, once the outbreak kicked off for real, most of the people working in the lab never came in, and many of those who did rushed off to get out of the city or went to hide in the underground sections of the building to wait things out. But Doctor Matt refused to leave his lab, risking his safety to work on the problem, so I decided to stay as well and protect him. He needs someone to keep an eye out for him while he does his part by in this building, learning what he can about... whatever is causing this.'";
		say "     'Right at the start of this chaos, one of the bigger feral creatures from out there broke into the lab. It was more than I could take, alone with just a nightstick and gun. As a result of that, I ended up in this form.' Orthas lets her hands wander down the sides of her scaled body, cupping the pair of breasts on her chest absentmindedly before moving on. 'Weird thing is, even though he forced himself onto me, I have to admit that I... somehow got turned on, despite everything I could do. Strange, eh? To be thrashing and kicking, then finding yourself rubbing back against a monster eagerly after a few moments. One finds yourself just rolling with such things these days, know what I mean? So now I'm a dragoness, and the scales and claws actually come in handy for guarding the building. But I still can only be at one place at once, you know?'";
		WaitLineBreak;
		say "     She looks at you thoughtfully. 'Well, you look like you can handle yourself in a fight. Can I ask you a favor? I'd like you to guard the doctor while I check on the folks down in the basement. They haven't showed their faces in days and I wonder what's going on down there.'";
		say "     [bold type]Do you hold down Orthas's post for a little while?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Sure, you can do that.";
		say "     ([link]N[as]n[end link]) - Not right now, no.";
		if player consents:
			LineBreak;
			say "     'Thanks! You're a great help!' the dragoness says with a smile and respectful nod to you, then moves towards the steel safety door and the dark stairwell into the depths beyond. Catching a glimpse of the dim strips of emergency lighting within, you wonder how well she can see in the dark with those dragon eyes of hers, as Orthas didn't even take a flashlight or anything along. Guessing that she knows what she's doing, you shrug and lean against the wall to keep both the front entrance as well as the stairwell in your view. Things are fairly quiet for the next few minutes, but apparently something had been watching the watch shift from outside the glass front of the building, as the front door is kicked open by the towering figure of an anthro collie. Seems she waited just long enough to make sure Orthas won't be back immediately!";
			now battleground is "Outside";
			let GroupFightCounter be 0;
			now fightoutcome is 0; [reset]
			now inasituation is true;
			while fightoutcome < 20 and GroupFightCounter < 2: [runs for 2 times or until the player loses or flees]
				if GroupFightCounter is 0: [first cycle]
					say "     The canine beast looks quite a bit like Lassie, if Lassie were twelve feet tall and walked upright, and had the general shape of an attractive woman, and had eight rather large breasts and a dick that would probably cause a stallion some envy... oh, and much shorter fur. Maybe she doesn't look much like Lassie after all.";
					wait for any key;
					challenge "Shemale Smooth Collie";
				if GroupFightCounter is 1: [second cycle]
					say "     Beaten, the collie stumbles away and you give chase to make sure she won't just catch her breath and come back for another round. The pursuit convinces her that there are better places to be and she never stops, only moving up to a quick walk and then a run after a few moments. With your head held high at the victory, you turn to return to the building's lobby - but sadly, another creature uses the opportunity to catch you out in the open. A hawkman swoops down upon you, screeching combatively.";
					challenge "Hawkman";
				increase GroupFightCounter by 1;
			now inasituation is false;
			if fightoutcome < 20: [player won]
				say "     Having driven off the canine and avian attackers, you hurry to get back into the lobby, intending to rest a little as you get back to leaning against that section of wall where you were standing earlier. Yet before you get anywhere close, the door to the underground is pushed open hard and bangs against the wall with a thud. What stumbles out of it is a bit of a shock: ";
			else if fightoutcome > 19 and fightoutcome < 30: [lost]
				say "     Crumpling under the assault of your attacker, you semi-consciously see them move closer, eager to take their pleasure with you. But then suddenly, a loud bang can be heard from behind you. Orthas must be back from beneath! Already a bit worse for the wear from the fight, you opponent reluctantly decides to abandon their prize, fleeing from the scene. You're relieved for the timely rescue and turn to thank Orthas. Yet what you see stumbling out from the stairwell into the depths is a bit of a shock: ";
			else if fightoutcome is 30: [fled]
				say "     Unwilling or unable to take more of a beating from your attacker, you dash past them and flee. Sadly, this doesn't mean you're home free, as the creature sets out in pursuit. You have to make use of all your tricks to shake the tail, and finally succeed by doubling back to Trevor Labs. Just as you arrive in the lobby, the door to the underground is pushed open hard and bangs against the wall with a thud. What stumbles out of it is a bit of a shock: ";
			project the Figure of Orthas_face_icon;
			say "It's Orthas alright, but she looks she looks disheveled, lost, and confused. Quickly rushing to her aid, you help the anthro dragon over to the lounge area and onto the least broken piece of furniture you can find. As she comes to rest on the legless sofa, you begin to realize that she is flushed and there is a new level of arousal to the woman that wasn't there before. Leaning forward, the dragoness licks her lips and takes a long sniff of your scent.";
			say "     'Mmm... you smell really good,' Orthas says in a husky tone, her eyes looking at you with a gaze positively filled with lust. 'I know I'm not looking my best... but I want you, I need you! Let's do it right here on the sofa, NOW!' She smiles at you in a hungry, horny way and you can practically smell the heat coming off of her.";
			say "     [bold type]Will you have sex with the dragon?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - She's asking for it, so why not lay the dragon.";
			say "     ([link]N[as]n[end link]) - You'll pass.";
			if player consents:
				LineBreak;
				say "     Orthas puts on a toothy grin as she reaches up with strong arms and pulls you down onto herself. Her long tongue wraps around yours in an exciting bit of french kissing, while her hands rub your body, making it all tingly in response to her actions. She pulls off the kiss after a moment and rips off the somewhat slimy remnants of her clothes, the sight of which makes you wonder a bit about what happened during her visit to the basement. The dragoness's body is toned and athletic, looking practically amazonian to your own lust-filled eyes. She caresses every part of your body for a little while of pleasurable exploration, before assisting you in taking off any clothes and gear you have with you.";
				if player is male: [male or herm player]
					say "     'Ooooh... you're quite the stud!' she says, getting a good gander at your manhood, already half-erect from the heat of the moment. Leaning back on the cushions, the dragoness spreads her strong, scaled legs, fingers moving to pull open the folds of her sex in eager anticipation of your entry. 'Mmm! Come on big boy, give me some love!' An idle thought passes through your mind about whether dragonesses would lay eggs or have live young, but such worries fade before the escalating lust you feel as you push into Orthas's sweltering depths. 'Fuck yeah!' the dragoness growls in satisfaction, her claws digging into the abused sofa as she bucks her hips against yours to drive your shaft deeper. Doing what comes natural, you thrust in and out of her in a rapid tempo, your [cock of player] manhood stretching the inner walls of your draconic lover. She feels amazing around your dick, quite warm and snug, as her strong muscles flex and contracting to become a perfect fit over your member.";
					say "     Orthas herself has her tongue lolling out of her mouth in helpless pleasure and her hands squeeze at her hefty bosom while you ride her. Her pussy muscles seem to be working overdrive on your member, and she is definitely a screamer, as the roars of pleasure fill the whole lobby and make the intact windowpanes tremble in their frames. You're certain that Doctor Matt on the floor above can hear your mating loud and clear. Before long, your pleasure nears the point of no return, and a tingly feeling of tightness fills your balls. You start to gasp out that you're close, but before you have said more than a few words, Orthas's pussy walls clamp down on your cock hard! They squeeze your length in a rhythmic fashion, practically milking you for your cum - and with a pleased groan, you are happy to oblige her and erupt into the woman's innermost depths. Spurt after spurt of your seed paint the walls of her pussy white while Orthas's slit gushes her femcum over your throbbing member and balls.";
					WaitLineBreak;
					if player is not female: [true male player]
						say "     Orthas blinks and moans out in lust. With a shock, you both realize that her belly has begun to swell out into what obviously must be pregnancy, but with vastly increased speed compared to anything you have seen before. At the same time, your member is slowly pushed out of her sex by... something. Orthas lets out a surprised gasp and becomes quite flustered when she sees her folds being spread by a lengthy, tapered... almost tentacle-like, phallic thing that pushes out of her body. She reaches down to touch it with trembling fingers, then gasps out, 'God, this feels so weird. Definitively not like a cock, that's for sure!' For a second or two your mind is puzzled about the statement, until you remind yourself that the female dragon you just fucked was a man not too long ago, so she actually knows what she's talking about.";
						say "     Still, that doesn't answer the question of what her new appendage actually is, so you decide to take the matter to a person who just might perhaps know. Thinking quickly, you help Orthas up and hustle her to Dr. Matt's lab. The man in his red hazmat suit is bent over a workstation as you rush in, looking up from it when he hears you call out to him. 'What are you - oh my!' Dr. Matt exclaims when he sees the state his guardian is in currently. Waving the two of you over to an examination table, he bids Orthas to get on top of it and lay back, then gives her a quick examination while asking both of you questions of what exactly happened. The dragoness sounds rather confused as she haltingly says, 'I was - I went down into the sublevels and - err. There was something there. In the dark.'";
						WaitLineBreak;
						say "     Orthas knits her brows in concentration but the most she manages to get out about her time below is some murmurs about 'so many eyes, and arms'. Since she can't seem to explain more clearly, Dr. Matt asks you to fill him in instead while he moves his gloved hands to feel the dragoness's expanding belly and carefully touches the odd organ sprouted from her sex. As you explain in quick words that you fucked Orthas and came in her right before things started to get weird, Dr. Matt nods in understanding. He clears his throat and looks from you to her as he says, 'Well, I think I know what's happened. Orthas, this is an ovipositor. What that means is, when you are inseminated, you will be able to... implant eggs into willing or unwilling subjects. It's actually something that is most common in insects, but some fish and turtles have them too. As do seahorses.'";
						say "     'Oh, that's a relief then,' the black dragoness replies sarcastically, holding her swollen belly. 'What am I supposed to do now? Starting to feel really bloated here, doc!' Dr. Matt doesn't seem to catch her snarkiness, or simply ignores it, as he proceeds to say in a lecturer's voice, 'The reason you're swollen up like this right now Orthas is because you were supposed to have deposited your eggs already. With the rapid gestation brought on by the nanites, the ideal period to do so is obviously rather short. Still, your appendage seems quite flexible indeed, so I wouldn't worry too much.' The doctor then actually proceeds to insert two of his gloves fingers into the opening at the end of the ovipositor and uses them to stretch it open, the skin effortlessly flexing to form a tube several inches wide. Orthas gasps out a shocked and pleased gurgle, followed by, 'Oooh! That feels so weird, but good!'";
						WaitLineBreak;
						say "     Giving his patient a smile in his best bedside manner, the doctor adds, 'I felt several eggs inside your belly and would suggest you work out how to release them. You should have the ability to eject the eggs at will, with some effort. Of course, this is just a theory for now. I'll have to do further research on this matter to be sure, but I'm sure you'd be willing to help me do that, won't you?' Orthas nods quickly and grunts, 'Anything, if you help me get these things out of me right now!' Dr. Matt quickly retrieves a small video camera from one of the workbenches and starts a recording, then speaks into its microphone. 'Supplemental Exam of Test Subject A, Orthas. Female dragoness, formerly a male human called Orthus Janakos. Subject is currently experiencing slight abdominal distress from overstretching due to a number of unlaid eggs.' Then he sets the camera on a tripod and aims it at the examination table, before asking you to go downstairs and hold down Orthas's guard post for now.";
						say "     'It wouldn't do to have our examination interrupted, you know,' the doctor tells you distractedly and turns to his patient, not waiting to see if you're actually going. With a shrug, you do walk out of the lab. Before the door cuts off the voices, you hear, 'Could you please try to flex your kegel muscles now?' 'My WHAT?' 'The pelvic floor muscles, down here.' 'Oooh, touch that again, I like it!' 'Er, let me just show you how to do this yourself.'";
						now HP of Orthas is 3;
					else: [herm player]
						say "     Orthas gets a funny look on her face, one that you've seen more in the lust-filled beasts on the outside. She rises and pushes you off of her, licking at her lips. As you fall onto the sofa beside her, you begin to realize that the dragoness's belly has begun to inflate into what appears to be a pregnancy, but with vastly increased speed compared to anything you have seen before. And if this was not a sexy enough scene to drive any watcher wild, she moans hotly and spreads her legs to reveal the freshly bred pussy between them. Orthas begins to masturbate frantically, driving her fingers deep into her squelching, cum-filled snatch. She seems to be leaking quite a lot of your load from the looks of it, soaking the cushions beneath, and a moment later, a long, pink, tentacle-like organ pushes out between her nether lips. It is covered in your cum and Orthas makes good use of it as lube as she moans and rubs the new appendage.";
						say "     In your shock at the unexpected sight on a woman you just had sex with, you don't even realize what's happening before she pins you down on the sofa, lowering her head to kiss you hungrily. Her breasts press against your chest and the swelling belly of your draconic partner pushes down on your body. Weirdly, even though she is holding your arms with both her hands, you can still feel something moving down at your crotch, and you realize that it is the cock-like shaft of Orthas. It flexes a little, feeling around over your balls and crotch, then soon finds the opening of your pussy and presses into it. A gasp escapes your lips as the writhing member slides into you, writhing and shifting with every inch that opens your passage you up further. You would complain, if that wonderful member thrusting back and forth didn't feel so damn good. Orthas moans hotly, her body quivering as it adjusts to a new kind of activity.";
						WaitLineBreak;
						say "     The dragoness's 'cock' is straining, pushing, and after a little effort, it pops through your cervix. Her eyes go wide and her pupils dilate, humping hips freezing in motion now that she seems to have reached her goal. You can feel pressure increase at the base of her organ where it has entered you, making you wonder if the dragon has a canine knot or something. But no, this is something else, as the 'knot' is moving up her appendage, bulging against the inner walls of your pussy as it slips by. Torn between the somewhat painful stretching and the odd pleasure you feel at what's going on, you try to move, but Orthas has you pinned down firmly, her draconic strength working to her advantage here. The 'knot' continues up her member, and after several small orgasms, you can feel it strain against your cervix, the pressure increasing until finally, it squirts through and into your womb, together with a gush of her fluids. Something about the experience just drives you wild, and you thrash in the grip of the dragoness as a monstrous orgasm rocks your body and mind.";
						say ".";
						say "..";
						say "....";
						say ".....";
						say "     You awake to Dr. Matt examining both you and Orthas in his lab. He's muttering about 'ovipositors' and 'astounding' and things like that. When you get his attention, he stands and nods. 'Ah, you're awake. Good. Allow me to explain what happened. Orthas excursion into the basement led to her encountering some kind of creature down there. It's been hard to get any details from her, but apparently it had many eyes and numerous limbs. Sadly, it got the best of her.' From where she is sitting on the next examination table, Orthas scoffs, 'I gave it all I had, but things are a bit blurry for me about what happened next.' Clearing his throat, Dr. Matt continues, 'Anyway, from the ruined state of her clothing and the substance traces I could gather while you were out, the creature appears to have subjected Orthas to quite a lot of its bodily secretions.'";
						WaitLineBreak;
						say "     Glancing over to the dragoness, you see a somewhat queasy expression on her face, followed by her reaching up to touch her muzzle. 'I - I think it I remember it shoving a tentacle down my throat. And into other places, pumping me full of that gunk.' Dr. Matt raises a hand in a calming gesture and tells her, 'Orthas, please. We have talked about this. My examination showed that you are perfectly healthy and the only result is your new appendage. The ovipositor.' Directing his attention back to you, the suited man explains, 'If Orthas is inseminated, her body will get ready to deposit any eggs that result into a suitable host by use of the organ. As did happen to you. ";
						if player is fpreg_ok:
							say "Congratulations, you are pregnant with the child or children you put into her.'";
							say "     The suited man smiles at you in an earnest fashion, glossing over your shocked expression and the wide eyes that sudden revelation created. Orthas squirms a little in embarrassment, looking at you and then down to your belly. She opens her muzzle as if to say something, then snaps it shut again, unsure what to say. Dr. Matt clears his throat and says, 'I'll leave you to talk things over with one another in private.' With that, the man walks to the back of the lab and enters the decontamination airlock to his isolation lab. Silence stretches between Orthas and yourself for a little while, until she eventually lets out her held breath and stands up to come to you. 'So, um. Guess we're gonna be parents together,' she says, waving her hand in the direction of your belly. 'I - I hope you don't hate me for it. Things seemed so simple while I was still under the influence of whatever that thing did. Um, I'll be down at my post, if you want to talk.' With that, she flees from the room.";
							Impregnate with "Dragon";
						else:
							say "But apparently, the eggs didn't take. Your body seems to have absorbed them somehow. I assume that also is a result of the nanites enhancing the energy metabolism of their hosts. Fascinating effect, I hope you will allow me to study it some more.";
							say "     The suited man smiles at you in an earnest fashion, glossing over any shock you might be feeling about his revelations. Orthas squirms a little in embarrassment, looking at you and then down to your belly. She opens her muzzle as if to say something, then snaps it shut again, unsure what to say. Dr. Matt clears his throat and says, 'Ah, maybe I should leave you to talk things over with one another in private.' With that, the man walks to the back of the lab and enters the decontamination airlock to his isolation lab. Silence stretches out between Orthas and yourself for a little while, until she eventually lets out her held breath and stands up to come to you. 'So, um. Guess we're not gonna be parents after all,' she says, raising her hand and then letting it drop suddenly. 'I - I hope you don't hate me for saying this, but I'd hoped we would be. Things seemed so simple while I was still under the influence of whatever that thing did, and the idea stuck. Um, I'll be down at my post, if you want to talk.' With that, she flees from the room.";
						now HP of Orthas is 4;
				else if player is female:
					say "     Orthas smiles warmly, and she licks down your body using her skilled tongue. Before long, after playing it over your soft breasts and hard nipples, she trails her tongue over your belly button and drifts down to your nether region. It doesn't take her very long to sliding her wriggling appendage deep into your trembling pussy, your thighs tightly clasped around her head in pleasure. She is working wonders with that tongue and you give yourself to her, lying back with your eyes closed. Your slit leaks fluids all over the sofa beneath the two of you. After a little while, you are treated to a curious surprise as the dragoness pulls back from you and pushes herself up on her knees. Orthas starts to furiously masturbate, her breath coming fast and shallow as she pushes her fingers deeper and deeper, then eventually pulls them out, with something else coming right after too!";
					WaitLineBreak;
					say "     A pink, fleshy tube pushes out between the dragoness's nether lips, looking fairly close to an erect cock and dripping with a sort of clear and slippery gunk. Before you have any chance to react, she pounces on you, pinning you to the cushions with her hands while pushing her hips against yours. The appendage writhes and flexes on its own, almost tentacle-like now, finding your opening within a few more heartbeats and pushing into it. As you gasp in surprise, she humps into you, driving the tube of her shaft deep. As your mind goes blank in pleasure, you can hear Orthas moaning as she fucks you, clearly enjoying herself. The two of you fuck wildly and passionately, with out thought or reason to pause or stop it, until you eventually reach a mind-bending climax together. Her shifting member drives you wild as it pulses and splurts of goo gush into your pussy.";
					say "     After a while, you come back to reality, and Orthas is sitting next to you, looking completely female again. She shares an apologetic look as you blink and pant, trying to make sense of what happened. 'I'm sorry... something happened down there. A - a creature caught me, did things with me. It's all a bit blurry, but... it made me horny, and eager to do things. With you, or anyone really. And apparently gave me that thing between my legs. I'm not even sure what it really is. But in the heat of the moment, I could feel it aching to go inside you, and it seemed so right...' she looks confused, cautious, and hurt, but after some calming words from you, she calms down, and nods to herself. 'I'm going to have to figure out just what it is,' she says, and she seems to be considering going up to ask Dr. Matt. 'Do you want to come with me?' she asks hopefully.";
					say "     [bold type]Accompany the anxious dragoness to a doctor's consultation?[roman type][line break]";
					LineBreak;
					say "     ([link]Y[as]y[end link]) - She clearly needs some companionship. Or maybe you're just curious yourself.";
					say "     ([link]N[as]n[end link]) - You'll pass.";
					if player consents:
						say "     Accompanying Orthas on her way upstairs, you are right with her as the dragoness steps up to the doctor, then slowly tells him about the vaguely remembered encounter she had in the sublevels of the lab, as well as the aftermath sex between you and her. Dr. Matt listens attentively, then nods in understanding. He clears his throat and looks from you to Orthas as he says, 'Well, I think I know what's happened. Orthas, the organ you described is an ovipositor in all likelihood. What that means is, when you are inseminated, you will be able to... implant eggs into willing or unwilling subjects. It's actually something that is most common in insects, but some fish and turtles have them too. As do seahorses.' Brows knitting in concern, Orthas replies sarcastically, 'Oh, that's so much of a relief then. Me being an insect-fish-turtle mutant. But wait - what did I pump out then when we fucked?'";
						say "     Dr. Matt glances at her over the rims of his glasses, a look you'd guess he keeps in reserve for stupid questions from lab assistants or students and the like. 'That should be obvious. It's lubrication, to make the eggs slide easier. Now, if that is all, I'll get back to the experiment I was just running. But I wouldn't mind studying your changed biology a little more in detail sometime Orthas.' With that said, he goes off to another workstation, leaving you and the dragoness behind. 'So, em... sorry for sliming you up with lube?' she says cautiously to you, then shrugs. 'I was in a weird frame of mind after what happened. Kinda felt right to just pump you hard, and I'm almost sorry that I didn't have any eggs now.' She looks somewhat ashamed at that admission, so much so that she flees with the quickly said words, 'Um, I'll be down at my post, if you want to talk later.'";
						now HP of Orthas is 3;
					else:
						say "     As you shake your head and tell her you're out for that, Orthas shows a disappointed expression and sighs. 'Ah. Okay. Well, I'll be off for a bit now then. See you later I guess,' she says, then walks up the stairs to talk to Dr. Matt.";
						now HP of Orthas is 2;
			else:
				say "     As you shake your head and take a careful step back from her, towards the entrance door, Orthas looks at you in a state of surprise and extreme disappointment. 'What?! But I need - oh, wait. I'm coming on to you like a crazy person, aren't I? She shakes her head to clear it and blinks several times, trying hard to get herself under control. Blowing out a breath, she sighs as she looks at you. 'Well, alright. Don't worry, I'm not as far gone as the beasts on the streets. But since somehow doubt that this crazy lust will leave me anytime soon, I still wouldn't mind to have a romp once in a while, you know. Standing offer, if you change your mind.'";
				now HP of Orthas is 1;
		else:
			LineBreak;
			say "     As you shake your head and glance towards the door, impatient to get underway, Orthas blows out her breath, deflating a little. 'Well, alright. I'll stay at my post then,' she says, clearly disappointed. 'But if you can spare the time somewhen soon, I'd really appreciate it. The silence from the people below makes me worry.'";
			now HP of Orthas is -1;
	else:
		LineBreak;
		say "     As you shake your head and glance towards the door, impatient to get underway, Orthas blows out her breath, deflating a little. 'Oh, well that's alright then,' she says, clearly disappointed. 'Please come back if you have the time. It's important.'";
		now HP of Orthas is -1;

Section 3 - Orthas Task 2 - Mementos

to say Orthas_task2_start:
	project the Figure of Orthas_face_icon;
	say "     'Look, I was wondering if you could give me a hand again. It shouldn't be as much trouble as my last favor turned out to be - how was I to know those beasts were waiting for me to leave my post? It's lucky I wasn't just going go to the washroom or something and had actually gotten a replacement guard,' she says with a grin.";
	say "     From your glare at her for having to be that replacement to be attacked, she coughs and gets back to the original matter. 'Well, as I was saying, this means I can't really be leaving my post to go running around in the city. Now as I've said, I'm not too attached to my old life, but there is a few things I'd like to hold onto. I'd really appreciate it if you could go to my old place and pick up a few of my things for me,' she says, putting added emphasis on her appreciation with a rumbling purr and a teasing talon stroke. Her tail winds around you, pulling you in close to her. 'You'll do that for me, won't you?' she says, licking your cheek and nibbling your ear. You moan and nod, hardly thinking about it and just wanting to get the dragon's favor.";
	say "     Orthas smiles and gives you a quick kiss. 'Thanks, hon. Now, my place is off near the red light district of town. Hey - don't give me that look! It wasn't that kind of neighborhood when I first moved there and... well, there wasn't much point in moving away after- Look, nevermind that! Here's the address. ";
	if Entrance to the Red Light District is unknown:
		say "     And from the info I've gathered from some of the others scavengers who've been in through here, this route should at least get you into the area.'";
		now Entrance to the Red Light District is known;
	say "     Having given you the address on a slip of paper, the dragoness stomps back to her post. Well, it sounds like a trip to find [bold type]Orthas's house[roman type] is in your future.";
	now Orthas's House is active;


Orthas's House is a situation. The level of Orthas's House is 5. It is inactive.
The sarea of Orthas's House is "Red".

instead of resolving Orthas's House:
	if HP of Orthas is not 5:
		say "ERROR-Orthas-[HP of Orthas]E: Incorrect event activation.";
	else if HP of Doctor Matt > 100:
		say "     You end up wandering in the vicinity of the address Orthas gave you. Thinking about what you've done to her, you crumple up the paper and toss it away. There's no real point in going there at this point.";
	else:
		say "     Wandering the residential side-streets around the sexually charged neighborhood, you manage to find the street name on Orthas's note. Following the numbers, you come to what was probably once a very nice two-story home with a white picket fence around the yard. Like most of the homes on this street, the place has already been broken into and raided by scavengers and/or horny mutants. But the current state of the place seems to be more than that, looking like it's been poorly maintained for some time.";
		say "     Moving cautiously, you step inside. For a home of this size, it feels surprisingly cold and empty. There's only a few pieces of furniture, no family photos, only one coat and pair of shoes by the door. After taking a peek in the kitchen to find it picked clean by earlier looters, you head upstairs to get the dragon's old stuff. The feeling of emptiness is even stronger there with the two smaller bedrooms being unused save to store a few boxes. The few furnishings of the master bedroom includes only a small bed and dresser.";
		say "     As instructed, you open the bedroom closet and take out the footlocker from inside. Picking it up, you find it like the rest of the house - mostly empty. While a little cumbersome and a little heavy, you can carry it easily enough. Digging a little further into the closet, behind some suit bags and a military dress uniform, you find something more useful to you - a crossbow and quarrels. You grab it and, finding the mechanism still works, head off to find something to use for target practice.";
		say "     Hoping for more useful stuff, or at least useful targets, you move on to searching the rest of the house. Unfortunately, the noise of your rummaging around draws the attention of some nearby creature. You have to toss aside your new toy, having shot all its quarrels, and turn to face the kangaroo woman who's burst into the room.";
		challenge "Red Kangaroo";
		if fightoutcome <= 29:
			say "     Your encounter with the randy female over, you decide to just make your escape, having had no luck since your initial find aside from the collection of Elvis collector plates you'd been using for crossbow practice. While you suspect the noise of that was the source of your troubles, it was quite a bit of fun. Regardless, you leave the place with the footlocker in tow and your new toy slung to your pack.";
			now carried of crossbow is 1;
		else:
			say "     Making your escape from the house and the randy roo, you grab the footlocker you came here for, but have to abandon the crossbow and its spent quarrels. Maybe it wasn't such a good idea to use those Elvis collector plates for target practice.";
		now carried of footlocker is 1;
		now HP of Orthas is 6;
	now Orthas's House is resolved;

to say Orthas_task2_done:
	now carried of footlocker is 0;
	say "     Giving the footlocker to Orthas, she takes it with less eagerness than you expected. After taking a deep breath, she opens it up and reviews its contents quietly. Among the items you see are a case of medals, a plaque of commendation and a framed photo. She takes out the photo with a sad sigh. It is a picture of a happy couple in front of the house you were in earlier. The strong, handsome man has his arm around the lovely woman, her belly somewhat rounded with her oncoming pregnancy.";
	say "     'My wife. Well, my ex-. She ended up leaving me before our baby was even two.' She pulls out another photo, showing a brown-eyed baby girl. 'She left me a month after I went back on duty. She didn't even tell me. Just up and left a note saying I was never around because of the service. By the time I got back and found out, she'd left town and shacked up with a new guy.";
	say "     'That was all years ago,' she says setting the photos upside down. 'I resigned my commission and eventually ended up doing security here. Since this place is military affiliated, an old commander of mine put in a good word and pulled a few strings for me. Besides,' she says tapping her medals['] case, 'spec ops training looks real good when applying for this sort of job.'";
	say "     She tosses the stuff back into the box and closes it up. 'Look, I didn't get much of a chance to prove myself as a parent or husband, but I know I can do it.' She wraps her tail around you, pulling and turning you into a hug from behind with her hands on your [if gestation of child > 0]pregnant [end if]belly and her wings around you. 'My old life ain't really worth remembering, but I don't want to forgot to do better this time around. Now, I can't promise to be around all the time - the doc's work's important and someone's got to protect him. But I figure someone like you'll understand that a bit better as sometimes there's things you've got to take care of too. Once we're out of this mess, I'll be around for you and the eggs when you need me.'";
	WaitLineBreak;
	if player is male:
		say "     Orthas nips along your neck and grinds her hips against your ass. A hand wanders down to your [cock size desc of player] cock as her touches become more erotic. After fondling you to erection, she nuzzles down your side and gets you to turn back around so she can sink your [cock of player] manhood into her muzzle. Her maw is hot and her long tongue twines around your shaft, getting you to moan as pre drools from your cumslit. She works her mouth over you, careful of her teeth, and gives you quite the blow job.";
		say "     Once she's gotten you good and horny, she lays herself back across her security desk, wantonly spreading her legs. With a tantalizing grin, she fingers her dripping snatch before spreading her folds invitingly. 'Come on, lover,' she purrs sensually and you can hardly resist such an invitation. Tossing aside your gear and moving into position, you grab her legs and drive your throbbing cock into her cunny, causing the dragoness to cry out lustfully. You pound away at her, giving her the thorough breeding she desires.";
		say "     The dragoness's strong inner muscles, capable of dealing with pushing out her eggs, squeeze and massage around your thrusting member, increasing the pleasure for both of you. The thought of dumping your load in her and there being an egg produced right away makes you feel like a virile stud, eager to knock up this fecund scaled beauty. Nuzzling her bosom, you lick and kiss her nipples, telling her how sexy she looks and how you're looking forward to putting an egg in her. To this she grins and licks your cheek with her draconic tongue, rumbling how she's looking forward to putting her egg in you.";
		say "     Before you can respond to this, the squeezing and milking of her vaginal walls intensifies as her orgasm begins with a roar. Under the powerful stimulation her quivering cunny provides, you don't hold out much longer and are soon blasting your gooey seed into her womb. By the time you're done emptying your load into her, she's already sitting up and rolling you over onto your back. Pulling off your spent shaft, she lets her emerging ovipositor slap wetly against it with a lustful grin. ";
		now calcnumber is 0;
		if player is female:
			say "     Knowing what she's after, shall you let her pop that egg [link]into your womb (1)[as]1[end link], [link]into your ass (2)[as]2[end link] or [link]onto your belly (3)[as]3[end link]?";
		else:
			say "     Knowing what she's after, shall you let her pop that egg [link]into your ass (2)[as]2[end link] or [link]onto your belly (3)[as]3[end link]?";
		while ( cunts of player is 0 and calcnumber is 1 ) or ( calcnumber < 1 or calcnumber > 3 ):
			say "Choice? ([if player is female]1[else]2[end if]-3)>";
			get a number;
		if calcnumber is 1:
			say "     Orthas rumbles sexily as you guide her dripping ovipositor to your pussy. You moan as that cock-like member penetrates you, pushing past your juicy folds and diving into your depths after only a few thrusts. Wrapping your legs around her waist, you goad her to fuck you, not that she needs any encouragement on that score. Her pulsating rod drives into you again and again as it leaks slick lubrication to prepare you for what's to come. And seeing her belly swelling up, you know it's coming soon.";
			say "     Panting heavily as the egg starts to move, Orthas grabs your shoulders for support. Her ovipositor presses at your cervix, working it open even as you can feel the bulge of the egg start to force your folds to spread open. After some initial difficulty, your body adjusts and soon you're sharing the dragoness's pleasure as the firm ovoid makes its journey into your womb. You climax again as you feel it finally settle into your uterus with a good splatter of the dragoness's fluids.";
			if the gestation of the child > 0:
				say "     The essence of the egg just stimulates and aids the progress of the child already inside of you, dissolving its essence to help the young one grow.";
				decrease gestation of child by a random number from 5 to 10;
				if gestation of child < 1, now gestation of child is 1;
			else if player is impreg_able:
				say "     You can feel the egg deposit itself in your womb, and you're quite sure you'll be carrying the egg's resident for a few days to come... ";
				impregnate with "Dragon";
				now pregtype is 1;
			else:
				say "     Rubbing your rounded belly, you can feel the egg breaking back down into a gooey mix of semen and lubricating fluids that fill you with warm feeling of pleasure.";
		else if calcnumber is 2:
			say "     Orthas rumbles sexily as you guide her dripping ovipositor between your ass cheeks. She grinds against your back door, making sure to send several spurts of lubricating fluids onto and into that stretching ring. And once she's gotten you good and lubed up, she drives that cock-like member into you, pushing past your anus and into your warm bowels. Wrapping your legs around her waist, you goad her to fuck you, not that she needs any encouragement on that score. Her pulsating rod drives into you again and again as it leaks more slick lubrication to prepare you for what's to come. And seeing her belly swelling up, you know it's coming soon.";
			say "     Panting heavily as the egg starts to move, Orthas grabs your shoulders for support. Her ovipositor throbs deep inside you as you can feel the bulge of the egg start to force your back door open even wider. After some initial difficulty, your body adjusts and soon you're sharing the dragoness's pleasure as the firm ovoid makes its journey into your rectum and then into your bowels. You climax again as you feel it finally settle into your [if the player is mpreg_ok]hidden womb[else]belly[end if] with a good splatter of the dragoness's fluids.";
			if the player is mpreg_ok:
				if the gestation of the child > 0:
					say "     The essence of the egg just stimulates and aids the progress of the child already inside of you, dissolving its essence to help the young one grow.";
					decrease gestation of child by a random number from 5 to 10;
					if gestation of child < 1, now gestation of child is 1;
				else:
					say "     You can feel the egg deposit itself in your womb, and you're quite sure you'll be carrying the egg's resident for a few days to come... ";
					impregnate with "Dragon";
					now pregtype is 2;
			else:
				say "     Rubbing your rounded belly, you can feel the egg breaking back down into a gooey mix of semen and lubricating fluids that fill you with warm feeling of pleasure.";
		else:
			say "     While she seems a little disappointed that she's not going to be putting her egg in you, she does moan happily as you take her cock-like member in both hands and start pumping it. Lubricating fluid from it drools out onto your belly as you pump the pulsating flesh. As her excitement builds and her belly swells up, you stroke faster, pressing her ovipositor alongside your cock so they're being stroked together.";
			say "     Panting heavily as the egg starts to move, Orthas grabs your shoulders for support. Her ovipositor throbs against your manhood as you can see the bulge of the egg moving into the external portion of her pseudo-shaft. With your helpful stroking, the ovoid makes its journey through and out, plopping out onto your tummy with a gooey splatter of lubricating fluids. It gets further messy with a sticky blast of your semen as you climax again, aroused to orgasm by the strangely erotic experience.";
	else if player is female:
		say "     Orthas nips along your neck and grinds her hips against your ass. A hand wanders down to your [cunt size desc of player] pussy as her touches become more erotic. As her caresses get you wet, she nuzzles down your side and gets you to turn back around so she can lip at your juicy folds. Her breath is hot and her long tongue glides into your cunny, getting you to moan as she drinks of your honeyed waters. She delicately teases your clit, getting you all the more worked up.";
		say "     Once she's gotten you good and horny, she strips off your gear and lays you back across her security desk. 'Come lover, I want to be inside you again,' she rumbles. You spread your legs as you eye her drooling ovipositor, now emerged from her slit, with a lustful hunger. Grabbing your ankles, she raises your legs into a V-shape and moves into position. Her tentacular-shaft brushes across your sensitive folds before sliding into you with a wet slurp. With a grin, she has it wriggle and ripple inside you, causing you to moan again.";
		say "     Showing more proficiency with her phallic tentacle than when she'd first used it on you, she has it ripple and wriggle inside you in unusual, but thoroughly pleasing ways. You can't help but moan as it works its way deeper, probing to your very depths to kiss at your cervix. Having no egg to deposit, she contents herself with merely brushing against the entrance to your womb while moaning that she hopes to put another one in there soon. With the image of that in her mind, she roars out in orgasmic delight, sending a gush of lubricating fluids into your cunt. Feeling those waves of fluid being pumped into you sends you over the edge and your cry of release joins hers.";
	else:
		say "     Orthas nips along your neck and grinds her hips against your ass. A hand wanders down to your bare groin as her touches become more erotic. As her caresses get you panting, she slips off your gear and pushes you down over her security desk. 'Oh, my poor lover, left with nothing for us to play with.' Grinding her hips harder against your rear, you feel her slick ovipositor emerging and gliding between your ass cheeks to kiss at your anus. 'Nothing but this, that is,' she rumbles lustfully as her lubricating fluids drool onto and into that stretching ring.";
		say "     Before you can respond, her cock-like member emerges further, pushing past your anus and into your warm bowels. You moan as you're penetrated, that phallic tentacle of hers strangely pleasurable as it undulates inside you. With her strong hands on your shoulders, she rumbles and nuzzles at the back of your neck while she fucks your tight ass. She shows more proficiency with her unusual member than when she'd first used it on you, having it ripple and wriggle inside you in strangely erotic ways. You can't help but moan again as it works its way deeper, probing deep inside you. Having no egg to deposit, she contents herself with buggering you thoroughly while moaning that she hopes to put another egg in you soon. With the image of that her mind, she roars out in orgasmic delight, sending a gush of lubricating fluids into your bowels. Feeling those waves of fluid being pumped into you has you cry out in bliss, your anal walls squeezing and milking at it for more.";
	say "     After that's all over with, she cuddles with you, giving you licking kisses[if player is impreg_now] while stroking your belly[end if][if crossbow is owned]. When her gaze wanders over to your pack, she smiles. 'Oh, so you found my crossbow, did you? Well, you keep it if you like it. I expect you'll get more use out of it and I'd feel better knowing you've got it to protect you.' She[else]. She[end if] pauses for a moment. 'Say, did you happen to see my Elvis collector's plates? I feel bad for having to leave The King behind. Could you maybe go back and get them for me?' she says, twirling a finger along your chest in a way that would be sexy had your blood not just run cold.";


Table of Game Objects (continued)
name	desc	weight	object
"footlocker"	"     The small footlocker you've retrieved from Orthas's house. It's bulky, but thankfully nowhere near full."	15	footlocker
"crossbow"	"A sporting crossbow. More for target practice than actual hunting, but still a fine and intimidating weapon. There's a good-sized set of quarrels to go along with it as well."	8	crossbow

footlocker is a grab object.
it is part of the player.
It is not temporary.

instead of using footlocker:
	if HP of Orthas >= 7 or HP of Doctor Matt >= 100:
		say "     There's no point in hanging onto this bulky thing any longer, so you get rid of it.";
		now carried of footlocker is 0;
	else:
		say "     The footlocker's locked. You don't think Orthas would be pleased with you prying into her personal stuff.";

the scent of the footlocker is "There's no particular scent to this.".

crossbow is armament. It has a weapon "[one of]a quick shot[or]a well-aimed shot[or]your crossbow[or]a crossbow quarrel[or]a launched quarrel[at random]". It is ranged. It is not temporary. It is a part of the player. The weapon damage of crossbow is 6. The objsize of crossbow is 3.


Section 4 - Sex with Orthas

to say Orthasfuck:
	project the Figure of Orthas_face_icon;
	if HP of Orthas < 2:
		say "     'I am flattered, really, but no thank you.'";
	else if lastfuck of Orthas - turns < 12:
		say "     'Even I need a moment to breathe, hon, you come back later.'";
	else:
		now lastfuck of Orthas is turns;
		if player is male and cunts of player < 1: [ male player ]
			say "     'Well, fine, but be sure to come by later if you get somewhere for me to plant them,' she says, remembering last time. She disrobes, revealing her toned, athletic body once again, unveiling her good-sized breasts - that seemed to grow a bit after her first pregnancy - and runs her hands over your tight, sexy male form as well, waiting to get at what she knows is down in your drawers.";
			say "     And before long, she's got it! The sultry dragoness is on her knees between your legs, her lovely bosom wrapped around your cock, and the tip of the member poking through her cleavage is firmly embedded in her mouth. Her long draconic tongue is running circles around your member, teasing you all the way to full erection. She leans over the couch, and lifts her long, muscular tail, exposing her tight pussy lips. You know what lies hidden there, but it doesn't deter you in the least, making you smile as you grip her hips and stab your member home.";
			WaitLineBreak;
			say "     She howls out her pleasure again, prompting Dr. Matt to stomp on the floor, as you energetically fuck her. She runs her muscular hips back into yours, pleasure rising quickly in both of your bodies as you quickly push toward climax. Nearly as soon as your massive orgasm overtakes you, you can already feel her shifting tightly, her belly beginning to inflate. She looks at you hungrily as she watches your body there, and she flips over, licking her lips. 'Mmm... hey, do you wanna help me with this?'.";
			say "     [bold type]She holds up her ovipositor, and she smiles cutely, trying to goad you into [']helping['] you with her egg [']problem['].[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Help.";
			say "     ([link]N[as]n[end link]) - Don't break.";
			if player consents:
				let oraltemp be 1;
				if player is mpreg_ok:
					say "     You are about to start stroking and licking her cock-like ovipositor when you feel a stirring in your lower belly, causing you to moan. Remembering your hidden womb, you could take her egg in another manner. Shall you ride her and get that egg deposited inside you?";
					if player consents:
						now oraltemp is 0;
						say "     Heeding your kinky desire, you climb onto the dragoness's lap. 'What are y...' she starts to ask before you get her slick ovipositor lined up with your pucker and you start sinking yourself down onto it. She moans in surprise and pleasure as you sink yourself down onto her 'shaft' and start riding eagerly. It doesn't take Orthas long to get to the point where her egg is pushing up her 'shaft', and you can feel it pressing hard at your anal opening, and somehow, the egg finds its way past your tight anal ring, passing further up her shaft. After a few more tense moments of mixed pain and pleasure, the egg finishes its journey up there, and pops out of her shaft and slides into your womb from its back entrance. You moan in kinky pleasure at having taken her egg in such a manner.";
						if the gestation of the child > 0:
							say "     The essence of the egg just stimulates and aids the progress of the child already inside of you, dissolving its essence to help the young one grow.";
							decrease gestation of child by a random number from 5 to 10;
							if gestation of child < 1, now gestation of child is 1;
						else:
							say "     You can feel the egg deposit itself in your womb, and you're quite sure you'll be carrying the egg's resident for a few days to come... ";
							impregnate with "Dragon";
							now pregtype is 2;
							if HP of Orthas < 4, now HP of Orthas is 4;
				if oraltemp is 1:
					say "     'Mmm... then get down there and do it!' She begins to massage her breasts, pinching at her nipples - you're a bit surprised to see that she lactates when she's swollen up like this. But her ovipositor waits, and so you set about your task with gusto, licking up the pink length as it writhes in your hand. You know you don't have to do this, but you want to. In a few moments, the first of her three eggs is sliding up and you take control, rubbing at her [']member['] below the base of the bulge, lifting the egg further up her lubricated ovipositor. With a keening cry of pleasure, the egg pops out of her [']dick['].";
					say "     After two more, she lifts you up and gives you a big sloppy kiss. 'Aaaah... you're wonderful, you know that?'";
			else:
				say "     'Awww!' She giggles. 'And here I thought I was going to get you to suck them out,' she says.";
		else if player is female and cocks of player < 1: [ female player]
			let seed be 0;
			blank out the whole of table of itemselection;
			repeat with Q running through owned cum grab objects:
				choose a blank row in table of itemselection;
				now object entry is Q;
				now holding entry is carried of Q;
				now objname entry is printed name of Q;
			if there is no object in row 1 of table of itemselection:
				now seed is 0;
			else:
				let tappeditem be pocketknife;
				if the number of filled rows in table of itemselection is 1: [if there is only one relevant item]
					choose row 1 in table of itemselection;
					now tappeditem is object entry;
					say "     She sniffs, and reaches into your pockets, and pulls out the little vial of [tappeditem] that you have, and she gets a wonderful idea. A terrible, wonderful, awful idea.";
					say "     [bold type]'Hey... mind if I use this?' she asks, coyly.[roman type][line break]";
					LineBreak;
					say "     ([link]Y[as]y[end link]) - Yes.";
					say "     ([link]N[as]n[end link]) - No.";
					if player consents:
						LineBreak;
						now seed is 1;
						delete tappeditem;
					else:
						LineBreak;
						say "'Awww!' She pouts. 'Well, we can still have fun!'";
				else:
					sort table of itemselection in object order;
					say "     She sniffs, and reaches into your pockets, and pulls a number of your cum-filled containers that you have, and she gets a wonderful idea. A terrible, wonderful, awful idea. 'Hey... mind if I use one of these?' she asks, coyly. (Y/N)";
					say "[bold type]Select Cum:[roman type][line break]";
					say "[bracket]The effect is the same regardless of choice[close bracket][line break]";
					repeat with y running from 1 to number of filled rows in table of itemselection:
						choose row y from the table of itemselection;
						say "([y]) [link][objname entry][as][y][end link] [bold type]([holding entry])[roman type][line break]";
					LineBreak;
					say "(0) [link]Don't use seed[as]0[end link][line break]";
					while tappeditem is pocketknife:
						say "Choice? (0-[number of filled rows in table of itemselection])> ";
						get a number;
						if calcnumber > 0 and calcnumber <= number of filled rows in table of itemselection:
							choose row calcnumber in table of itemselection;
							now tappeditem is object entry;
							say "     You choose [tappeditem].";
						else if calcnumber is 0:
							now tappeditem is journal;
				if tappeditem is not journal:
					now seed is 1;
					delete tappeditem;
				else:
					say "'Awww!' She pouts. 'Well, we can still have fun!'";
			if seed is 0:
				say "     'As payment, get down and please me!' She giggles, as she stands and gets naked, smiling as she exposes her tight slit to you. You know what's held within, but you don't care - after all, you'll be riding it later. She moans hotly as you take your tongue and put it to good use against her slit. Her pussy is practically dripping even after only a few licks. Your lips are set against her pussy lips, your hands gripping her tight, muscled ass as you push your tongue deeper, harder.";
				say "     It doesn't take all that long for a minor orgasm to hit the dragoness, and trigger the appearance of her 'member'. You can feel it pushing out of her sex from the tip of your tongue, and you're giving her an entirely different kind of oral for a couple moments, before she smiles and tips you back. 'Alright, you're ready... I can smell you.' She smiles and lays down on the floor, her 'cock' pointed skyward, purring a little.";
				WaitLineBreak;
				say "     You scamper aboard and climb atop her 'cock', moaning as it penetrates you deeply. Her pleasure is already at a peak, but it is you now who gets to enjoy this pleasure for a long time. You can feel her ovipositor releasing its lube into you with numerous small orgasms. It writes and twists inside you, driving itself into your deepest depths. With how active it is, it doesn't take long for you to yowl out in pleasure and climax over it, letting out a pleasured moan, and a particularly strong burst of the lube shows that Orthas enjoyed it too.";
			else:
				say "     'Mm, let's get down to business then.' She strips nude, and lays back deeply on the carpet, lifting her hips up. She empties the demon seed into her sex, and reaches down to massage and aid it deeper and deeper. In only a matter of moments, the seed takes hold and she lets out a pleasured moan - her belly beginning to swell, her breasts swelling a bit with milk, as her ovipositor comes out, a bit of the purple seed still on it. She giggles, and rolls forward, her large belly pushing her [']member['] down as you get into a feral, doggy style position.";
				say "     Her [']cock['] stabs its way into you, and she begins to fuck you earnestly, her [']cock['] straining as she pushes it deeper, deeper, still deeper. As you can feel it tapping at your cervix, you endure a rough orgasm, and then you feel one of the eggs pushing at your slit. Deeper the egg pushes, and eventually you can feel it stretching your walls['] deepest depths. It pops through into your cervix, and a rush of pleasure signifies that this session is temporarily over.";
				WaitLineBreak;
				if the gestation of the child > 0:
					say "     The essence of the egg just stimulates and aids the progress of the child already inside of you, dissolving its essence to help the young one grow.";
					decrease gestation of child by a random number from 5 to 10;
					if gestation of child < 1, now gestation of child is 1;
				else:
					say "     You can feel the egg deposit itself in your womb, and you're quite sure you'll be carrying the egg's resident for a few days to come... ";
					impregnate with "Dragon";
					now pregtype is 1;
					if HP of Orthas < 4, now HP of Orthas is 4;
		else: [ Herm ]
			if HP of Orthas >= 7 and a random chance of 1 in 2 succeeds and bodyname of player is not listed in infections of TaurList:
				say "     You give Orthas that look and she grins. 'Aw yeah! Let's do this!' she says eagerly. She pushes you backwards over her security desk even as a hand gropes its way between your legs. Soon enough, you're getting hard in her scaly hand as she pumps your manhood to erection. Her draconic muzzle bends down to let her run her long tongue tease across your shaft before she envelops it in her steamy maw. The oral warm-up is brief but intense, her tongue playing across your dick as she sucks it. As she's wrapping up, she slips her muzzle lower to let her writhing tongue squirm into your cunt.";
				say "     With you more than ready by this point, she lays across the desk with her tail raised high and her toned ass on display. She gives her rear a tantalizing wiggle and reaches back between her legs to part her wet folds, showing you her welcoming, waiting vagina. Needing no encouragement, you're atop the black dragoness right away, grinding your [cock size desc of player] cock against her scaly rear before lining up and thrusting into her. She gives a lustful growl of pleasure and pushes back into your thrust. Her hot tunnel squeezes and milks at your cock, longing for the seed to fertilize her eggs.";
				WaitLineBreak;
				say "     You can't take too much of this intense ride and it's no long before your cum hard and strong into her, pumping your [cum load size of player] load into her. Your semen splatters against her cervix and it drawn past it as your lover gives orgasmic moans. You reach around her to grope her big melons while you drain your balls into her womb. And it's not long before her overactive uterus is hard at work preparing for the second stage of your fun, causing her belly to swell up quickly with the growth of her eggs. Knowing what's coming next, you've pulled out and Orthas has turned around to ready her emerging ovipositor.";
			else:
				say "     'Alright!' She can't even wait, as she drops down and gets your member out of your pants and/or sheath before she can even worry about whether you or she has disrobed. She has you half-hard before all the clothes can even come off, and when that's finally finished, the distraction complete, she finally pushes her head down, taking your whole member in as deep as she can, her fingers doing two things. One pair of fingers are fingering herself, the other pair are fingering your own slit.";
				say "     Just when you can scarcely take the oral stimulation anymore, she pops off your dick after one particularly long bob, panting softly as she catches her breath. She pushes you down and takes your dick into her pussy, already craving that cum deep inside her - it seems this new physiology has made her quite the egg slut. The dragoness bounces on your cock as hard as she can, her incredibly strong cunny muscles working hard on that dick of yours.";
				WaitLineBreak;
				say "     You can't take much of this, and you cum hard and strong into her, moaning out in pleasure as even as the first bursts of your cum splash against her cervix, her body is already making ready for part two of this interaction. When your orgasm dies down, she has laid on top of you, her heavy breasts pressed into yours as her belly swells into yours. Before her belly has even finished swelling to its full size, she's already pulled off your dick and is coaxing out her ovipositor.";
			say "     [bold type]Would you like to take it in your cunt or ass?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Cunt.";
			say "     ([link]N[as]n[end link]) - Ass.";
			if player consents:
				LineBreak;
				if HP of Orthas >= 7 and a random chance of 1 in 2 succeeds and bodyname of player is not listed in infections of TaurList:
					say "     Sitting on the edge of her desk, Orthas pulls you up into her lap, readying to drive that phallic tendril of hers into you. With your hand to guide it, you aim it towards your slit and moan as it wriggles into you. It worms its way into you with delightful pulses. Soon it's nudging at your cervix, working to tease that final barrier loose. With her tentacle [']cock['] rubbing through the full length of your vagina, she's able to drive you to another orgasm, a female-centric one this time, just as her egg is nudging its way past your pussy lips. traveling through her rippling [']member['], it passes through your spasming tunnel and - with a few mind-numbingly pleasurable pushes - pops past your cervix to be deposited in your womb.";
				else:
					say "     Moving to the floor, Orthas lays down with her slick phallus at the ready. Climbing on, you push her [']cock['] toward your slit, and you already feel her pushing deep at your cervix - it doesn't take long for it to reach full length, does it? She bobs her hips, but since she is in control of her eggs, she waits for you to get your pleasure first. But with the way that [']member['] bobs and weaves in your slit, it won't take you long at all, and as you climax, you feel the egg pushing at your slit, and forcing its way up your pussy into your womb.";
				if the gestation of the child > 0:
					say "     The essence of the egg just stimulates and aids the progress of the child already inside of you, dissolving its essence to help the young one grow.";
					decrease gestation of child by a random number from 5 to 10;
					if gestation of child < 1, now gestation of child is 1;
				else:
					say "     You can feel the egg deposit itself in your womb, and you're quite sure you'll be carrying the egg's resident for a few days to come... ";
					impregnate with "Dragon";
					now pregtype is 1;
					if HP of Orthas < 4, now HP of Orthas is 4;
			else if player is mpreg_ok:
				LineBreak;
				if HP of Orthas >= 7 and a random chance of 1 in 2 succeeds and bodyname of player is not listed in infections of TaurList:
					say "     Sitting on the edge of her desk, Orthas pulls you up into her lap, readying to drive that phallic tendril of hers into you. With your hand to guide it, you aim it towards your back door and moan as it wriggles into you. It worms its way into your rectum with delightful pulses. Soon it's squirmed deep inside you and is nudging at that hidden second entrance to your womb. At this point, you're far too lustfully excited by the prospect of what is to come to think better of it. You start riding that undulating ovipositor for all you're worth while it works to tease that final barrier loose. With her tentacle [']cock['] rubbing along your sensitive rectal walls and pulsing against your prostate, she's able to drive you to another orgasm just as her egg is nudging its way past your anal ring. traveling through her rippling [']member['], it passes through your spasming tunnel and - with a few mind-numbingly pleasurable pushes - pops past your secondary cervix to be deposited in your womb. This sends a kinky thrill through you and you masturbate yourself, both cock and pussy, until you're fully spent from your orgasm.";
				else:
					say "     Moving to the floor, Orthas lays down with her slick phallus at the ready. Deciding to avoid your cunt, you climb on but angle the ovipositor for your rear. As you sink down onto its slick length, you remember that your womb links in there as well, ensuring you'll get pregnant either way you take one of the dragon's eggs. But you are too lustfully excited by the idea to think better of it, and start riding eagerly. It doesn't take Orthas long to get to the point where her egg is pushing up her [']shaft['], and you can feel it pressing hard at your anal opening, and somehow, the egg finds its way past your tight anal ring, passing further up her shaft. After a few more tense moments of mixed pain and pleasure, the egg finishes its journey up there, and pops out of her shaft and slides into your womb from its back entrance. You moan in kinky pleasure at having taken her egg in such a manner.";
				if the gestation of the child > 0:
					say "The essence of the egg just stimulates and aids the progress of the child already inside of you, dissolving its essence to help the young one grow.";
					decrease gestation of child by a random number from 5 to 10;
					if gestation of child < 1, now gestation of child is 1;
				else:
					say "You can feel the egg deposit itself in your womb, and you're quite sure you'll be carrying the egg's resident for a few days to come... ";
					impregnate with "Dragon";
					now pregtype is 2;
					if HP of Orthas < 4, now HP of Orthas is 4;
			else:
				LineBreak;
				if HP of Orthas >= 7 and a random chance of 1 in 2 succeeds and bodyname of player is not listed in infections of TaurList:
					say "     Sitting on the edge of her desk, Orthas pulls you up into her lap, readying to drive that phallic tendril of hers into you. Rather than come out of this with another pregnancy, you guide it with your hand towards your back door and moan as it wriggles into you. It worms its way into your rectum with delightful pulses. Soon it's squirmed deep inside you as you ride that undulating ovipositor for all you're worth. With her tentacle [']cock['] rubbing along your sensitive rectal walls and pulsing against your prostate, she's able to drive you to another orgasm just as her egg is nudging its way past your anal ring. traveling through her rippling [']member['], it passes with a kinky mix of pleasure and pain through your spasming tunnel and is eventually deposited deep inside your bowels along with a gush of gooey fluids. This sends a kinky thrill through you and you masturbate yourself, both cock and pussy, until you're fully spent from your orgasm. A pleasure you'll likely repeat a little later when the egg comes back out.";
				else:
					say "     Moving to the floor, Orthas lays down with her slick phallus at the ready. Deciding you don't need to come out of this with another pregnancy, you climb on but angle the ovipositor for your rear. You know that this egg will stretch you more than you've ever been stretched in that hole, but you don't care, knowing that you're more comfortable not carrying another child in the womb at the moment. It doesn't take Orthas long to get to the point where her egg is pushing up her [']shaft['], and you can feel it pressing hard at your anal opening, and somehow, the egg finds its way past your tight anal ring, passing further up her shaft. After a few more tense moments of mixed pain and pleasure, the egg finishes its journey up there, and pops out of her shaft, making you moan lustfully... the egg will come out later.";


Section 5 - Monster Responses

[ Use To say for overlong behaviors that would make the table difficult to read and understand. Typically needed if there are a lot of cock/species/cunt checks. ]

when play begins:
	add { "Dragon" } to infections of furry;
	add { "Dragon" } to infections of tailweapon;

to say losetoOrthas:
	now fightstatus is 2;
	say "     The powerful dragoness strikes you with a mighty blow, you are sent flying out the broken door, landing in the hall. As you struggle to rise, you can see her inside, passing the microwave device across Dr Matt to halt the transformation, but it's clear that the damage is at least partially done. The doctor is fondling herself and Orthas even as the dragoness tries to help her, though the hybrid is sane enough to instruct Orthas to continue the process.";

to say beatOrthas:
	now fightstatus is 1;
	say "     You manage to knock the dragoness senseless and look over her and the transforming Dr Matt.";

to say Orthasdesc:
	choose row monster from the Table of Random Critters;
	let debit be 0;
	if hardmode is true and level of player > 12, let debit be level of player - 12;
	now lev entry is 12 + debit;
	now HP entry is 150 + ( debit * 6 );
	now monsterHP is 150 + ( debit * 6 );
	now wdam entry is 10;
	if hardmode is true, now wdam entry is 12 + ( ( 2 * debit ) / 5 );
	say "[line break]     Orthas, the black dragon, steps forward to battle you. She stands about six and a half feet tall and has a very athletic body. Her bat-like wings are each about three feet long and folded onto her back at the moment. And while she may have large, F-cup breasts, they don't seem to affect her balance or ability to fight at all. Her eyes blaze with anger and thick smoke curls up from her nostrils as she moves to deal with you for your betrayal.";
	if Susan is in Primary Lab:
		say "     The dragoness is still rather woozy after the blow given to her by the doe. While it doesn't look like she'll be able to help you further with the fight, she has made the dragoness a little easier to deal with.";
		decrease monsterHP by 25 + debit;
		decrease wdam entry by square root of ( wdam entry - 8 ); [drops by 1 at regular, by 2 if wdam is 12, by 3 if 17...]
		decrease lev entry by 1;


Section 6 - Monster Insertion

Table of Random Critters (continued)
name	enemy title	enemy name	enemy type	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	DayCycle	altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now name entry is "Dragon"; [Name of your new Monster]
	now enemy title entry is "";
	now enemy name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]The dragoness slams into you, slamming you back against one of the tables![or]Orthas slashes out at you with her sharp claws, slashing you violently![or]The dragoness's sharp teeth dig into your arm, biting into your flesh![or]Despite her large size, the black dragoness makes a sweeping kick to your legs, sending you to the ground![or]Orthas's jaws move in, trying to bite your head. You manage to grab her head and keep her from getting you with a potentially lethal bite. As you struggle to hold her, she exhales a thick cloud of smoke and sparks that cause you to choke![or]Orthas strikes at you with a series of martial arts strikes. You struggle to block, but end up battered![or]Orthas feints with her fists and manages to wrap her tail around your waist long enough to land a powerful uppercut![at random]";
	now defeated entry is "[beatOrthas]";
	now victory entry is "[losetoOrthas]"; [Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "[Orthasdesc]"; [ Description of the creature when you encounter it.]
	now face entry is "draconic head"; [ Face description, format as "You have a (your text)."]
	now body entry is "that of a well-muscled anthro dragon"; [ Body Description, format as "Your Body is (your text)."]
	now skin entry is "dark scaled"; [ skin Description, format as "You have (your text) skin."]
	now tail entry is "You have a slender, draconic tail."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "ridged"; [ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "it shifts and reforms into a dragon's head"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "your body shifts and alters itself, becoming that of a humanoid dragon"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "hard scales form on your skin, covering your entire body in a tough, but flexible hide"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "a slender, draconic tail forms behind you"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it changes shape, gaining firm ridges along its length to stimulate your partner"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 20;
	now dex entry is 24;
	now sta entry is 20;
	now per entry is 15;
	now int entry is 12;
	now cha entry is 15;
	now sex entry is "nochange"; [ Invalid answer intentionally getting no change in gender]
	now HP entry is 150;
	now lev entry is 12; [ Level of the Monster, you get this much XP if you win, or this much XP halved if you loose ]
	now wdam entry is 10; [Amount of Damage monster Does when attacking.]
	now area entry is "Nowhere"; [ Location of monster, in this case nowhere]
	now cocks entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 8; [ Length infection will make cock grow to if cocks]
	now cock width entry is 4; [ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 2; [ Number of Breasts infection will give you. ]
	now breast size entry is 3; [Size of breasts infection will try to attain ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 12;
	now cunt width entry is 5;
	now libido entry is 20; [ Set to zero in this monster to control elsewhere ]
	now loot entry is ""; [ Dropped item. Key will be used later ]
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now scale entry is 4; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]powerful[or]strong[or]muscular[at random]";
	now type entry is "draconic"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;


Section 7 - Endings

When play ends:
	if ( HP of Orthas is 4 or HP of Orthas is 5 or HP of Orthas is 6) and humanity of player > 10 and HP of Doctor Matt <= 100:
		project the Figure of Orthas_face_icon;
		say "     Once rescue comes, taking everyone with a sane mind out of the city, Orthas comes with you. She's grateful to you for continuing to help with the doctor, and so she stays fairly nearby you in your lives outside. You spend a lot of time together, and many eggs are laid, both into you and elsewhere. During this time, Orthas also learns that she can have a more conventional pregnancy if she holds the eggs inside of herself long enough, and finds that they grow significantly larger if she does so.";
		if Snow is in Grey Abbey Library and Sandra is in the Bunker and susan is in primary lab:
			say "     At one point in your lives outside, Orthas stands with a silly grin on her face when you arrive at home. Susan, Snow, and Sandra are all sitting on the living room couch, also smiling, and this is the first time you notice that her ovipositor is extended. You suddenly realize you got home about 15 minutes too late.";
		wait for any key;
	else if HP of Orthas is 7 and humanity of player > 10 and HP of Doctor Matt <= 100:
		project the Figure of Orthas_face_icon;
		say "     Once rescue comes, taking everyone with a sane mind out of the city, Orthas comes with you. True to her word, she stays a part of your life, visiting often to check up on you and her eggs when her duties permit. You spend a lot of time together, and many eggs are laid, both into you and elsewhere, the dragoness quite proud of her expanding clutch. During this time, Orthas also learns that she can have a more conventional pregnancy if she holds the eggs inside of herself long enough, and finds that they grow significantly larger if she does so. She proves to be a fine parent and certainly makes up for her absences with considerable [']enthusiasm['].";
		if Snow is in Grey Abbey Library and Sandra is in the Bunker and susan is in primary lab:
			say "     At one point in your lives outside, Orthas stands with a silly grin on her face when you arrive at home. Susan, Snow, and Sandra are all sitting on the living room couch, also smiling, and this is the first time you notice that her ovipositor is extended. You suddenly realize you got home about 15 minutes too late.";
		wait for any key;

Orthas ends here.
