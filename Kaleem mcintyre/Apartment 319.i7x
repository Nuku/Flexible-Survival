Apartment 319 by Kaleem mcintyre begins here.

Section 1 - Apartment 319

Table of GameEventIDs (continued)
Object	Name
Apartment 319	"Apartment 319"

Apartment 319 is a situation.
Apartment 319 is inactive.
AptAid is a number that varies.

The sarea of Apartment 319 is "High".
When play begins:
	Add Apartment 319 to badspots of hellspawn;
	Add Apartment 319 to badspots of furry;
	Add Apartment 319 to badspots of guy;

Instead of resolving a Apartment 319:
	if AptAid is 0:
		say "     Briskly walking through the streets of the high rise, you come across a man jogging down the streets. Not thinking much of him you step out of his way, being that he's going in the opposite direction of you. It's only when he's shot passed you that you realize that there is something strange about the other. But not being able to place it at the moment, you simply shrug and go off about your way.";
	If AptAid is 1 and ( guy is banned or hellspawn is banned or furry is banned or hermaphrodite is banned ):
		say "     Jogging down the side of the streets of the high rise district, you end up bumping into someone. Not being able to stop yourself, you flail around wildly to collect your balance only to end up collapsing on the other in spite of your attempts. Luckily, whoever is in front of you is able to catch your weight before you end up dragging the both of you down to the pavement. 'Whoa there, are you okay stranger?' The person holding you up, who just so happens to be a Dalmatian, asks with their dark brown eyes shining at you somewhat playfully.";
		say "     Nodding to the other, you pull yourself away from them to stand on your own two feet and then, on a whim, look down to inspect the shirt the Dal is wearing, an oddity in this town with almost everyone running around half naked. What you see makes your senses slightly spark and you quickly tip your head up to ask the Dal if he is from Station 86. 'Y-yes, I am. Who are you though?' The man wearing the blue, firefighter-embroidered shirt takes a step back from you, yet in spite of this you give the Dalmatian the rundown of what's happening and who you just so happen to be. Watching the other's face go through a multitude of expression before stilling on surprise, you can bet that he never imagined hearing this information when he woke up today.";
		WaitLineBreak;
		say "     'Wow. That's... something. I didn't know Kenaz and Birch were...' The Dalmatian seems to consider something while rubbing a hand against the back of his head before finally shrugging, almost helplessly so. 'Well, I guess I have a reason to hope in this city again. Heh, if you wouldn't mind I've got some things to think over while I finish up my run so...' Asking the other if he's going back to the fire station, you get a slow nod from him. 'Y-yeah, I just, have some things to finish up back home so after I deal with that, I'll head on over there a little later.' With a slow lick over the end of his muzzle, the firefighter looks at you and then moves past you to go off about his way. Faintly, you realize that it's almost as if he's trying to run away from you.";
		say "     Not sure what that was about, you don't think it's worth the hassle of trying to figure out as you've done your duty towards Kenaz by finding another member of his team. Time to head back to Homaru to ask the informant if he's found anyone else.";
		say "     (This content requires the guy, hellspawn, furry and hermaphrodite flags.)[line break]";
		now Resolution of Apartment 319 is 100; [essential parts banned]
		now Apartment 319 is resolved;
		now HomaruSearch is 4;
	else if AptAid is 1:
		say "     Finding the condominium that Homaru had told you about earlier, you enter into the plush-looking building and then head up the back stairwell up to the third floor. Once there, you quietly move through the hallway until you find the doorway marked with the numbers 319. Remembering that this is where one of the missing firefighters was [']supposed['] to be living at, you knock on the door three times and then wait. As the wood barrier creaks open, ever so slightly, you find yourself nervously taking a step back when a voice seeps through the small crack of the doorway. 'Can I help you?";
		say "     Grunting low in your throat to try and suppress some of the unease that has gripped your heart, you tell the person who you are and then ask him if he happens to be one of the firefighters from Station 86. 'Yes, but... who are you?' The door opens a little more and you can faintly see a splash of black on white as a long snout peeks out. Informing the other know that you are friends with Kenaz, and that you are trying to find his coworkers, you watch as the door opens just a little more. What you see slightly amazes you as you find yourself looking into the fully transformed face of a Dalmatian mutant currently staring back at you somewhat unsurely.";
		WaitLineBreak;
		say "     'Well, I guess that's a horse of a different color then. Or maybe [']dog['] in my case.' When the door opens fully, you can only watch in awe as a naked and half aroused Dalmatian male nervously squirms around in place while looking at you somewhat confusedly. 'The name's Dagaz. I know, strange as hell, but my sire was a weirdo like that.' [']Dagaz['] can only shrug as he timidly smiles at you.";
		say "     Not sure what to say at this point, as you really hadn't thought up anything after the initial [italic type]rescue[roman type] effort had been completed. So, on a whim, you ask the other man how he's doing. 'Oh, fine as can be. I've been hiding in my uncle's pad while trying to wait this whole thing out. [if findwires is 2 and fixedgens > 2]With the power back on I've been able to get the radio and TV working so I've been somewhat okay[else]Without any power I've just been trying to find ways to cure my boredom[end if]. Thank you for asking by the way.' Dagaz chuckles and then sighs before shaking his head.";
		WaitLineBreak;
		say "     Seeing that the other is alright, you let him know that Kenaz is at the Firestation and that he's holding down the fort as best he can by himself. 'Really? I'm surprised about that with the city the way it is. What did he turn into?' The question is both honest and a little pointed, as though the other man is somewhat envious over something. When you let him know that Kenaz is still, roughly, 98% human, Dagaz is quick to growl in anger. 'Lucky bastard! He would be the one that gets to keep his skin while I...' A bitten off cough ends the rant before it could begin.";
		say "     'You know what, let me stop. Tell Kenaz that I'll be around later to check on things.' The Dal man takes a step to turn around but before he can get too far, you spot something on the firefighter's rump. From the shape and look of it, you can only guess that it's a... but that couldn't be right. Opening your mouth to ask Dagaz about it, you get a sharp rebuke from the Dalmatian after he turns to glare at you. 'That's none of your business!' Dagaz's shout makes you jump back slightly. 'Look, I'm grateful and all for coming to look for us and whatever, but you need to mind your own business and keep out of mine.' And with that, Dagaz pulls himself fully into his current residence and then loudly slams the door in your face.";
		WaitLineBreak;
		say "     Now out of all the odd things you've seen in the city as of late... that had to have been the oddest thing of all[if intelligence of Player > 15]. [']Knowing['] that something is seriously wrong here, you go over what you've just seen and heard several times before nodding to the now closed door in front of you[else]. If you didn't know any better, you could almost swear that the other man is hiding something[end if]. Dagaz looked as though something was bothering him... and that mark on his butt... it kind of looked like a brand or something... Quickly, you find yourself wondering if maybe you should come back later on in the evening to try and see if you can learn anything more about what's going on with the other man.";
		say "     [bold type]Though you were told it was none of your business, can you really turn a blind eye on this one?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Come back later.";
		say "     ([link]N[as]n[end link]) - Don't return.";
		if Player consents:
			LineBreak;
			say "     Making the decision that whatever's going on with Dagaz is going to [italic type]be[roman type] your problem as of now. You make plans to come back later on in the evening to check up on the other man. Whatever is going on, it's mighty suspicious![line break][line break]";
			now AptAid is 2;
			now Resolution of Apartment 319 is 1; [resolved to come back and check it out]
			increase score by 1;
		else:
			LineBreak;
			say "     Deciding that it's not really much of your concern, as the Dalmatian looked as healthy as could be, despite his weird tramp stamp, you simply bow your head to the closed door and then turn to go about your way. You've done your civic duty for the day, after all.";
			now Homarusearch is 4;
			now Resolution of Apartment 319 is 99; [ignored what goes on with Dagaz]
			now Apartment 319 is resolved;
			increase score by 3;
	if AptAid is 2:
		say "     Hiding out within the Dal's condo for a couple of hours, you go back to knock on Dagaz's door, only to find yourself freezing just as your fist is about to touch the wood when the sound of someone crying out in pain rushes across your hearing. Not exactly sure what's going on, you press your ear to the door. The sound of something hard smacking into flesh and another sharp cry has you pulling back in confusion. When Dagaz's voice howls out in agony, you find yourself backing up to charge the door in an effort to force it open without thought on what could be on the other side.";
		say "     The fact that the door wasn't exactly locked makes your entrance somewhat haphazardous as you windup tumbling into the room with all the grace of a duck trying to break dance. Grunting when your knees meet the carpet, you shake your head and then look up in indignation, only to blink in confusion as you spy Dagaz hanging from his ceiling in a sling between several burly looking creatures. Of the six present, from what a quick head count informs you of their numbers, three of the mutants are hyenas, two are demons and one is something that you're not really sure about. The fact that five out of six of them have some very [']interesting['] weaponry in their hands has you raising an eye ridge ever so slowly as you silently wonder what kind of party you just stumbled onto.";
		WaitLineBreak;
		say "     The three hyenas have wooden paddles in their hands and smugly look ready to use them on both you and the bound Dalmatian, the two demons have a whip and belt, respectively, wrapped tightly around their clawed hands, and the last person is just sitting while looking somewhat bored at the whole thing. The fact that there are numerous candles around the apartment, glowing almost dimly in the darkness of the condo, makes this entire setting somewhat... eerie, if not all out creepy. In any other given situation, you're sure that you might have started to freak out, however, now you're just too worried about Dagaz to find the energy to be frightened.";
		say "     Coughing nervously, you try to call out for the firefighter to grab his attention. Sadly, Dagaz's only answer comes in the form of a dull whimper as the Dalmatian lolls his head around almost drunkenly while hovering across the floor in the sling. 'This here is our little playmate, friend. Step off and get out before you find yourself in a world of hurt,' the unknown mutant says somewhat unrepentantly as he looks to you with bored, luminescent green-blue eyes. Picking yourself up off the ground, you completely ignore the other as you try to call out to Dagaz once again to ask him if he's alright. The Dalmatian simply whimpers at you before turning his head in shame. He sounds like he's hurting, but... not quite.";
		WaitLineBreak;
		say "     'I see someone doesn't listen. So I'll explain things for you,' the unknown creature says, after getting up from his seat to step in front of the bound Dalmatian. 'Dagaz here is our little playmate of the hour. He belongs to us, both body and mind, because of a contract he signed between the two of us. As such, he's ours to do with as we please. Now, if that answers your question... Get. Out.' Looking to the shuddering Dalmatian and then to the assorted group, you weigh your options. The assembled mutants look pretty tough, but then again, you've fought worse, right?";
		say "     [bold type]Should you try and fight the group for the firefighter or back out gracefully?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Fight.";
		say "     ([link]N[as]n[end link]) - Back out.";
		if Player consents:
			LineBreak;
			say "     Telling the unknown man where he can shove it, you let him know that he'll be the one to get out, preferably with a foot in his ass if any of his thugs harms Dagaz any more. 'Really? Well, you got some moxie about you, whoever you are, but do you have anything to back it up?' A snap of fingers has the hyenas moving towards you.";
			challenge "Herm Hyena";
			if fightoutcome >= 10 and fightoutcome <= 19:
				challenge "Herm Hyena";
				if fightoutcome >= 10 and fightoutcome <= 19:
					challenge "Herm Hyena";
					if fightoutcome >= 10 and fightoutcome <= 19:
						say "     'Now I'm impressed.' The unknown mutant claps his hands while looking down at the defeated hyenas. 'But how do you handle demons?' Another snap of fingers, and the two demon brutes are coming your way.";
						challenge "Demon Brute";
						if fightoutcome >= 10 and fightoutcome <= 19:
							challenge "Demon Brute";
							if fightoutcome >= 10 and fightoutcome <= 19:
								say "     'Alright, now I'm really impressed. You've definitely got some spunk about you. Think you can make it past the final round though?' The unknown mutant snaps his fingers and instantly, you find yourself looking into the face of an incubus.";
								challenge "Incubus";
								if fightoutcome >= 10 and fightoutcome <= 19:
									say "     'Hmmm, well... this is... startling. I didn't know that Dagaz had such powerful friends. Huh, well...' The unknown mutant seems to silently ponder over something while slyly narrowing his eyes at you. When you take a step towards the other, he is quick to back away from you. 'C-calm down.' A quick wave of a hand has you stopping your forward pursuit towards the other. 'I think it's about time that I ended this contract with Dagaz anyway. It's almost expired and he hasn't made a move to renew it as of yet.' The well-dressed mutant sighs before snapping his fingers, which causes the assembled creatures you just defeated to spring up and then head for the door. Didn't you just beat them into submission not more than ten minutes ago?";
									say "     'Just so you know, Dagaz here made a contract with our company for the current services that he's being treated to. So, don't think we were doing this out of malice or spite,' the mutant explains, and you have to ask him what he's on about. 'Well, you see, currently the company I work for takes on BDSM contracts and then work with the client, or clients, in question to bring about their wild little fantasies. With the city the way it is now, we are hoping to open a branch here in order to expand further out to this side of the country. Dagaz was to be our first customer in this region and has been taken care of quite well... until tonight that is.' You don't show any apology for having trounced the others as you stand somewhat defiantly in front of the unknown mutant.";
									WaitLineBreak;
									say "     'I can tell you don't care so I'll be moving along now.' The mutant turns towards the bound Dalmatian and then hisses at him. 'Next time you make a contract...[italic type]tell your friends[roman type] before they show up to trounce my guys! My company is not in the habit of dealing with domestic disturbances and little happenings like this will get you banned from our patron's list if this should ever happen again, understand?' Dagaz can only moan as he nod his head while seeming to slip in and out of consciousness. 'Ugh... the things I have to go through.' The mutant shakes his head before moving past you on his way out the door. When you call him back to ask about the sling...";
									say "     'It came with the Dalmatian so I'll leave you to figure out how to get him down.' And then the other is gone. Not sure what to do next in this situation, you go over to the whimpering Dalmatian and then have a look at him. From what you can see, other than some fur ripped out of place and some marks littered along his pinkish skin, the firefighter is just fine. Maybe you got here before the real action could begin?";
									say "     Patting the Dalmatian on the cheek to get his attention, you try and ask Dagaz how to get him down from this weird thing. 'Please... just leave me alone. Gods, this is so embarrassing!' Obviously, the other is more than just a little okay if he can grumble and bemoan the way he is doing right now. Trying to tell him that you don't care about his strange hobbies and  you just wanted to make sure he is alright, you find the Dalmatian whimpering up at you in complete shame. 'Please... just go away. Can't you see that you ruined everything? Those guys were just about to...' A shudder halts whatever Dagaz was about to say as the Dalmatian unexpectedly lets out a carnal snarl of both want and need.";
									WaitLineBreak;
									say "     Looking down at the other, your eyes widen just a tick as you look over Dagaz's ten inch red rocket poking completely out of his sheath. From the bubbles of pre at the head of the tapered tip, it would seem that the Dalmatian is but seconds away from popping his load. Seeing this and looking around the room at the paddles and whips that had been left behind on the floor, you wonder if you should try and finish up what the others started?";
									say "     [bold type]It would definitely be kinky as hell and would serve as a mild apology to the other man.[roman type][line break]";
									LineBreak;
									say "     ([link]Y[as]y[end link]) - Yes.";
									say "     ([link]N[as]n[end link]) - No.";
									if Player consents:
										say "     Figuring why the hell not, you go to pick up one of the larger paddles and then give it a few test swings. Judging the weight to be more than enough to [']get the job done['], you walk back over to the now shivering Dalmatian who just so happens to be watching you intently. No words are spoken as Dagaz simply stares at you and then gives you a pleading whimper before letting his head fall back to hang limply in the air. Chuckling at the firefighter, you reach out to feel the downy fur of Dagaz's belly and arms before running your hand down to pat at his tight rump. A wag of the Dalmatian's thin tail has you smirking as you wonder where you should begin working the other over at first.";
										say "     Realizing that it doesn't matter, you pull the paddle back and then strike out across the first available area that seems most vulnerable. A loud crack has the other man yowling as he jerks like crazy inside of the sling. The hit must have done something extra special to him because the firefighter's cock is now spouting small strings of precum across his ivory and black spotted belly. Noting this, you move to strike out at the other again - this time across the Dalmatian's thigh. Another yowl has you almost laughing as you watch Dagaz flail around in his sling, looking almost as if he were trying to get away, however, you know better than that.";
										WaitLineBreak;
										say "     Another attack by the paddle, this time across the flat of the Dalmatian's chest, has Dagaz crying out as he thrusts his hips wildly into the air. When your fourth strike lights a bolt of pain across the outer edge of the firefighter's right butt cheek, Dagaz is nearly howling his praise, or maybe submission, to the night sky outside as he shudders and shakes while humping his cock up at nothing. The red, tapered mass of flesh is now leaking pre almost like a broke water fountain, and from both the smell and then look of the gooey mess dripping onto the hardwood floor, you can tell it won't be long now.";
										WaitLineBreak;
										say "     Hitting the Dalmatian over and over with the paddle - up over his left pectoral muscle, down across his arm, up over his torso and then across his other butt cheek - you beat the other man until Dagaz is soon nothing more than a yowling mess of fur, sweat and free flowing precum. Looking at the Dalmatian's pulsating cock, you don't fight the perverted smirk that creeps onto your lips as you watch the bulb of the spotted canine's knot swelling up to its full girth. Turning your head to look to the paddle in your hands, you chuckle before lifting your eyes to look intently up at Dagaz's whimpering form.";
										say "     [bold type]Should you?[roman type][line break]";
										LineBreak;
										say "     ([link]Y[as]y[end link]) - Yes.";
										say "     ([link]N[as]n[end link]) - No.";
										if Player consents:
											LineBreak;
											say "     Smiling somewhat cruelly at the other man, you run the edge of the paddle over the firefighter's enlarged knot and then up to his cock tip. 'P-please... I-I need... I... I...' Dagaz looks up at you in both wonder and adoration as he tries to ask with his eyes rather than his mouth, since the latter is babbling nothing more unintelligent gibberish right about now. You nod to the Dalmatian and then... [italic type]CRACK[roman type]. The howl that follows is so loud that you can actually start to hear people banging and shouting from all directions around you. However, you really don't get a flying fuck about the others as you are too focused on watching thick ribbons of Dalmatian spooge shooting up through the air as the firefighter literally cums with the force of a tidal wave.";
											WaitLineBreak;
											say "     The deluge of whitish-yellow Dalmatian seed is so great that you can only watch in awe as the unending streams of cum splatters themselves against the ceiling only to then drip back down around both you and Dagaz in sticky dewdrops. The shower has to last for almost a full minute, but once it's over, Dagaz literally falls limp into the sling. Passed clean out from that powerful climax, you find yourself somewhat abashed to realize that you enjoyed playing with the other in such a delightfully ruthless sort of way. Reaching out to rub some of the cum into the Dalmatian's fur, you run your fingers over and across Dagaz's snout, coating his nose and lips with his own cum, before you toss the paddle off to the side.";
											WaitLineBreak;
											say "     Now comes the really fun part: the clean up! Joy...";
											say "     When Dagaz comes to later on, it's with the sun shining down on his face and his body covered with a slightly scratchy feeling blanket. Not really sure of what's going on, the Dalmatian tries to stand himself up only to stop when he feels something, very hard and very unforgiving hampering his attempts. Turning to look at his back, after he rolls himself over onto his stomach, the Dalmatian gasps as he observes the end of a familiar looking wooden paddle stuffed up into his tailhole. Gaping in confusion, it takes the Dalmatian maybe a full three minutes to recall what happened last night, but when all of his memories return, the firefighter can only whimper and groan as he blushes furiously while wagging his thin whip of a tail back behind him like mad.";
											now Homarusearch is 4;
											now Resolution of Apartment 319 is 2; [player gave Dagaz a paddling]
											now Apartment 319 is resolved;
											increase score by 25;
										else:
											LineBreak;
											say "     Feeling as though that would be too cruel, despite the sudden sadistic persona you've taken on at the moment, you reach out to take the other man's cock into your hand and then stroke the Dalmatian's long piece of canine meat with slow and even force. When you encircle your fingers around the firefighter's knot, Dagaz can only yelp as the stimulation of a mock tie causes him to jerk and then fire off his load. The fact that you have aimed Dagaz's tapered tip back at his face only serves to make the Dalmatian orgasm both messy and exciting as you watch the firefighter splatter his muzzle with his own sticky yellowish-white load. Yowling and jerking in place, Dagaz cums and cums and cums with the kind of force that would put a jet engine to shame as the obviously pent up Dal shoots everything he has stored in his balls in several streaming torrents.";
											WaitLineBreak;
											say "     Rubbing your fingers through the trailing mess that ends up falling across the fur of Dagaz's chest, you watch as the Dalmatian suddenly goes slack inside of his sling. Having not expected that to happen, you feel a moment of panic as you press your fingers against the Dal's throat and then sigh as you find a strong and steady pulse underneath your fingers. At that point, you pull your other hand from off of the firefighter's still pulsating dick and then go to work trying to release the other man from his bonds.";
											say "     Ten minutes later, you free the Dalmatian and then set about cleaning Dagaz of both spooge and sweat after finding some clean towels stored inside of his hallway closet. Setting the dozing doggy onto his couch and finding a blanket to cover him up with, you turn to get ready to leave, but then stop after realizing that you left the paddle you had used on him over on the floor underneath the now listless looking sling. Turning to regard the slumbering Dalmatian... you smirk deviously as you mildly wonder if...";
											now Homarusearch is 4;
											now Resolution of Apartment 319 is 3; [player stroked off Dagaz]
											now Apartment 319 is resolved;
											increase score by 25;
									else:
										LineBreak;
										say "     Thinking that would be over the line, you go and help the Dalmatian out of his sling and then proceed to carry the shivering and whimpering Dalmatian over to his couch. When the other begins to sob and whine at you about how you [']ruined everything['] and that he's [']such a pervert['], you prepare yourself for a long night of trying to soothe the other man as leaving Dagaz alone right now would just be unforgivable with the other in his current state.";
										WaitLineBreak;
										say "     Morning ends up finding the both of you half asleep on top of one another, and you slightly confused as you wonder where the heck you are. That is, until you look to the Dalmatian and then think over last night's little [']adventure[']. Grunting at some of the crap you have to go through for the sake of friendship, you shake your head before turning to look into Dagaz's snoring face. Taking a moment to marvel at how sexy the other is, you kiss the firefighter on the tip of his nose and then extract yourself from him so as to go about your day. A quiet whimper caresses itself across your ears making you stop from your departure to turn and look at the still asleep Dalmatian. Deciding to find a blanket to throw across the other man before you leave, you faintly wonder if this is how lovers feel towards one another when one of them is either ill or injured. This warm and protective feeling...";
										now Homarusearch is 4;
										now Resolution of Apartment 319 is 4; [stayed with Dagaz after stopping the SM session]
										now Apartment 319 is resolved;
										increase score by 25;
										follow the turnpass rule;
										follow the turnpass rule;
								else if fightoutcome >= 20 and fightoutcome <= 29:
									say "     Having lost to the incubus, you are swiftly picked up and then thrown headfirst out of the apartment. Landing on your head, you can only lament your own weakness as you listen the front door slam shut behind you right before the sounds of someone being lashed and spanked start up from the other side of the closed door. A yowl follows the noise and tiredly you can only hope that Dagaz will be alright in there. You're definitely going to come see about him later before going back to Homaru.";
									now AptAid is 3;
									increase score by 2;
									WaitLineBreak;
								else:
									say "     Trying to run away winds up with you getting a boot to the rear by the incubus. Consequently, this sends you flying back out into the hallway of the door you just charged through. Smacking into the wall and then groaning, you listen as the door slams shut before the sounds of someone being lashed and spanked start up from the other side of the closed door. A yowl follows the noise and tiredly you can only hope that Dagaz will be alright in there. You're definitely going to come see about him later before going back to Homaru.";
									now AptAid is 3;
									increase score by 2;
									WaitLineBreak;
							else if fightoutcome >= 20 and fightoutcome <= 29:
								say "     Having lost to the demon pair, you find yourself swiftly tossed outside of the apartment, landing on your head. Grunting from the impact, you mutter a few choice curses before tiredly getting up to shake yourself off. The sounds of yowls and cries that come from the other side of the now shut condo door breaks your heart, but when you try to beat at the wooden barrier to get inside again, you find yourself getting burned when a strange crest appears on the doorframe. Maybe you should come back later to check on Dagaz? After all, this is probably going to stick with you a while, keeping you from looking for any more of the firefighters.";
								now AptAid is 3;
								increase score by 2;
								WaitLineBreak;
							else:
								say "     Trying to run away, you find yourself getting swiftly tossed outside of the apartment onto your head. Grunting from the impact, you mutter a few choice curses before tiredly getting up to shake yourself off. The sounds of yowls and cries that come from the other side of the now shut condo door breaks your heart, but when you try to beat at the wooden barrier to get inside again, you find yourself getting burned when a strange crest appears on the doorframe. Maybe you should come back later to check on Dagaz?";
								now AptAid is 3;
								increase score by 2;
								WaitLineBreak;
						else if fightoutcome >= 20 and fightoutcome <= 29:
							say "     Having lost to the demon pair, you find yourself swiftly tossed outside of the apartment onto your head. Grunting from the impact, you mutter a few choice curses before tiredly getting up to shake yourself off. The sounds of yowls and cries that come from the other side of the now shut condo door breaks your heart, but when you try to beat at the wooden barrier to get inside again, you find yourself getting burned when a strange crest appears on the doorframe. Maybe you should come back later to check on Dagaz? After all, this is probably going to stick with you a while, keeping you from looking for anymore of the firefighters.";
							now AptAid is 3;
							increase score by 2;
							WaitLineBreak;
						else:
							say "     Trying to run away, you find yourself getting swiftly tossed outside of the apartment onto your head. Grunting from the impact, you mutter a few choice curses before tiredly getting up to shake yourself off. The sounds of yowls and cries that come from the other side of the now shut condo door breaks your heart, but when you try to beat at the wooden barrier to get inside again, you find yourself getting burned when a strange crest appears on the doorframe. Maybe you should come back later to check on Dagaz?";
							now AptAid is 3;
							increase score by 2;
							WaitLineBreak;
					else if fightoutcome >= 20 and fightoutcome <= 29:
						say "     Getting hauled up by the hyenas and then casually tossed out of the open door like a sack of dirty laundry, you end up grunting and then berating your own weakness when you listen to the apartment door slam shut behind you. Pulling yourself up and then growling, you decide that coming back to check on Dagaz later on is a must, after you go and find some place to clean up the hyena gunk covering your chest, that is.";
						now AptAid is 3;
						increase score by 2;
						WaitLineBreak;
					else:
						say "     Trying to run away, you find yourself getting booted out of the apartment by the hyenas. Meeting the wall of the hallway outside, you end up pulling yourself up and then growling at your cowardice. Turning your head to look back at the now shut apartment door, you decide that coming back to check on Dagaz later on is a must, after you go and find some place to nurse your aching head";
						now AptAid is 3;
						increase score by 2;
						WaitLineBreak;
				else if fightoutcome >= 20 and fightoutcome <= 29:
					say "     Getting hauled up by the hyenas and then casually tossed out of the open door like a sack of dirty laundry, you end up grunting and then berating your own weakness when you listen to the apartment door slam shut behind you. Pulling yourself up and then growling, you decide that coming back to check on Dagaz later on is a must, after you go and find some place to clean up the hyena gunk covering your chest, that is.";
					now AptAid is 3;
					increase score by 2;
					WaitLineBreak;
				else:
					say "     Trying to run away you, find yourself getting booted out of the apartment by the hyenas. Meeting the wall outside, you end up pulling yourself up and then growling at your cowardice. Turning your head to look back at the now shut apartment door, you decide that coming back to check on Dagaz later on is a must, after you go and find some place to nurse your aching head";
					now AptAid is 3;
					increase score by 2;
					WaitLineBreak;
			else if fightoutcome >= 20 and fightoutcome <= 29:
				say "     Getting hauled up by the hyenas and then casually tossed out the open door like a sack of dirty laundry, you end up grunting and then berating your own weakness when you listen to the apartment door slam shut behind you. Pulling yourself up and then growling, you decide that coming back to check on Dagaz later on is a must, after you go and find some place to clean up the hyena gunk covering your chest, that is.";
				now AptAid is 3;
				increase score by 2;
				WaitLineBreak;
			else:
				say "     Trying to run away, you find yourself getting booted out of the apartment by the hyenas. Meeting the wall outside, you end up pulling yourself up and then growling at you cowardice. Turning your head to look back at the now shut apartment door, you decide that coming back to check on Dagaz later on is a must, after you go and find some place to nurse your aching head";
				now AptAid is 3;
				increase score by 2;
				WaitLineBreak;
		else:
			LineBreak;
			say "     Not wanting to get mixed up in all of this since Dagaz [']supposedly['] got himself into this situation of his own volition, you tip your head to the unknown mutant and then casually walk out of the apartment. Finding the door slamming close behind you, you don't try and think about the sounds of yipping and yowling going on behind you as you simply walk on about your way. Maybe you should come back some other time to check on Dagaz then.";
			now Homarusearch is 4;
			now AptAid is 3;
			increase score by 2;
			WaitLineBreak;
	if AptAid is 3:
		say "     Coming back to apartment 319, you worriedly knock on Dagaz's door while calling out for the other man. When a barking voice from the other tells you to [italic type]shut up[roman type], you sigh happily as you realize that the Dalmatian is still very much alive. Healthy might be another story all together, for when the Dalmatian opens the door, you find that the other looks rather... rough. And that might be an understatement. Fur tangled and stuck into knots, eyes somewhat bleary, and cum soaked across his chest and torso, the firefighter looks like he had been through an orgy.";
		say "     'Well, if it isn't my supposed rescuer. Heh... uhm...' The other man looks somewhat conflicted as he rubs at the back of his head while looking at you somewhat unsurely. Asking him if he's alright, you watch as the Dalmatian nods at you before blushing somewhat sheepishly. 'Look, I appreciate everything you tried to do, but please, for my sake [italic type]don't[roman type] tell anybody about what happened the night before, okay?' Promising that you won't, you get a bitten off chuckle as Dagaz looks to you with something akin to embarrassment written on muzzle.";
		WaitLineBreak;
		say "     'Yeah, you see, that was... well...' The Dal man shakes his head before grumbling somewhat in annoyance. Whether he's upset at you or himself... well, you're not too sure at the moment. 'Look, I don't need to explain myself to you, but I will tell you this: that was something I willingly got myself into, but am not going to go through anymore.' Asking him what he means, Dagaz sighs before explaining. 'See, I kinda like the rough and kinky kind of stuff, but haven't been able to get it as of late at the clubs and places I normally haunt. However, with the city currently as it is, and us being laid off from the fire station, I got the chance when I found a place that caters to people with my... [']particular tastes['], so to say, from a friend of a friend.";
		say "     'Anyway, thanks for the assist and don't go running your trap off to anybody about this, okay?' A slow and unsure nod has the firefighter smiling at you. A quick lick across your [facename of Player] cheek and Dagaz is pulling back to blush somewhat unsurely at you. 'Thank you, friend.' And with that, the Dalmatian walks backwards into his home and then quietly closes his door, leaving you standing in confusion as you look at the now sealed doorway.";
		WaitLineBreak;
		say "     Feeling like you've done all you can here, it's time to head back to Homaru's place!";
		now Resolution of Apartment 319 is 5; [checked in with Dagaz after his SM session]
		now Homarusearch is 4;
		increase score by 20;


Apartment 319 ends here.
