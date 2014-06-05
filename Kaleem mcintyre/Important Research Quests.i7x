Important Research Quests by Kaleem mcintyre begins here.

Section 1 - Important Treasure

Important Treasure is a situation.

opcl is a number that varies.  
Ointerrogate is a number that varies.
the sarea of Important Treasure is "Red".

Instead of resolving Important Treasure:
	if opcl is 0:
		say "The sight of something white dashing across your vision makes you turn your head just in time to see a short...[']something['] run right past you. Not understanding what you've just seen you try and follow the other as it steadily speeds down the street ahead of you. Moving as fast as you can the white hooded figure turns out to be very fleet of foot and soon they have outpaced you by almost four blocks. You give up trying to follow after them when you find yourself growing short of breath.[line break]"; 
	otherwise if opcl is 1:
		say "Searching around the red light district you stumble across a beautiful blonde woman standing roughly five and a half feet tall who fits the description Omio had given to you almost to a [']T[']. With an oversized white coat draped over her slim body, a stitched up scar cutting a path over the front of her nose, and black pair of jeans on the woman should have stuck like a sore thumb in the middle of the city's more ill repute area. And yet, for some reason or another, the blonde seems to possess a all-encompassing autonomy about herself that make her almost invisible to naked eye.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more'] 
		say "Going over to the other you open your mouth to speak, but soon clamp your muzzle shut when the woman quickly cloaks her hood over her face and then takes off like a shot in the opposite direction you had just come from. Not understanding what just happened you reach up to scratch your head in confusion. That is, right up until you hear someone calling out behind you. 'Hey you over!' Turning around you find yourself jumping back in bewilderment as the scaly face of a four armed green and black mottled iguana wearing a police officer's uniform marches directly up to you. 'What are you doing out here? Are you friends with that woman? Do you know where she's going? Hey, I'm talking to you here!'";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more'] 
		say "Gaping like a goldfish you find yourself at a loss for words as the reptilian face of the police official glares at you with a intensity that makes your stomach start to flip-flop around. Swallowing and then opening your mouth to retort you find yourself freezing as a large orange and yellow hand slaps the four armed lizard across the back of the head. 'Dan, didn't I tell you to stop harassing pedestrians?' A sleep eyed reptile, this one a mixture of a raptor and a komodo dragon, wearing a trench coat[if daytimer is day]and pair of shades over his face[otherwise]with a pair of shades hanging onto the collar of his coat[end if] says while sighing long-sufferingly.[line break]"; 
		say "The officer, Dan, yelps and then grabs the sides of his head before turning to regard the other lizard. 'Greg, it was her! She was right here standing like she was waiting on this[if cocks of player > 0]guy[otherwise]person[end if]!' The four armed officer points two of his hands in your direction while his others fly around somewhat wildly in the direction the blonde female just ran off to.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more'] 
		say "At this the raptor lifts one eye ridge[if daytimer is day]and then reaches up to remove his shades[otherwise]and then looks at you with a somewhat focused stare[end if]before glowering at you somewhat coldly. 'Is that true[if cocks of player > 0]sir[otherwise]ma'am[end if]? Was there a blonde woman here a moment ago and was she waiting on you?' The raptor looks at you with an unblinking mask of calm on his muzzle and you quickly get the feeling that you may have stepped in over your head. Is all of this really worth getting tangled up with the police over? (Y=yes, N=no)[line break]";
		if player consents:
			say "Remembering that Omio asked you to find this woman, and trusting in the red head not to get you hurt, or otherwise killed, you look the raptor hybrid dead in the face while schooling your features into the same impassive facade of calm. Telling the officers that you were just curious about the blonde haired woman you don't back down as the trench coat wearing raptor narrows his eyes at you. Behind the man you can hear his long serpentine tail lashing against the ground in rising frustration, but the raptor keeps his mask of tranquility placed firmly onto his face.";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more'] 
			if charisma of player > 16:
				say "'Alright, then we have no choice but to believe you.' The four armed iguana standing off to the side lets his mouth drop at hearing this. 'But, a word of warning -- just in case you happened to be lying -- stay away from that woman. She's nothing but trouble.' The other man turns to regard his flabbergasted partner and then chuckles humorously at the younger male's antics. 'Come on Dan. It's time to go and do our civil duty.' The larger hybrid takes the smaller four armed male by one of his numerous arms and then drags the other off. 'B-b-but!!' Dan tries to say while looking back and forth between you and his obvious partner. 'Yes, yes. I know I have a nice butt. I'll let you ream me just as soon as we get back to our apartment.' The raptor says in a somewhat blasé manner while tugging at the uniformed reptile.";
				if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
				if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more'] 
				say "At that Dan goes silent, which, interestingly enough, makes him somewhat easier for the raptor to dragon along. You take a few moments to go over what just happened in your head and then shrug when you find that none of that made any good sense. Maybe having a talk with Omio would be wise, but then again you still haven't gotten the package from off of the blonde for the red head researcher. Given the raptor's words though, should you continue looking for the white coat wearing female, especially if she could turn out to be dangerous?[line break]";
				now opcl is 2; 
				now Ointerrogate is 1;
				increase score by 10;
			otherwise:
				say "Trying to tell the officer that you don't know anything nets you a feral smirk from the raptor. 'If I said, [']I don't believe you['], would you take offense?' The raptor dark green-brown eyes grow hard as he says this and you feel a chill go across your spine. You suddenly sense that there's something [italic type]dangerous[roman type] about this man, but you're not sure what this feeling could be on about seeing as the other hasn't actually threatened you...yet. 'It's fine. If you say you don't know anything then I guess we have to believe you.' The four armed iguana standing off to the side lets his mouth drop to the floor upon hearing this. 'However, if you just so happened to be lying to me, then do yourself a favor and take this piece of advice with you. Stay away from that woman - she's nothing but trouble.'";
				if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
				if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more'] 
				say "The trench coat wearing reptile drops his scary visage in favor of his former sleepy one and then turns to regard his flabbergasted partner. 'Come on Dan. It's time to go and do our civil duty.' The larger hybrid takes the smaller four armed male by one of his numerous arms and then begins to drag the other off. 'B-b-but!!' Dan tries to say while looking back and forth between you and his obvious partner. 'Yes, yes. I know I have a very nice butt. I'll let you ream me just as soon as we get back to our apartment.' The raptor says in a somewhat blasé manner while tugging at the uniformed reptile.";
				if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
				if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more'] 
				say "At that Dan goes silent, which, interestingly enough, makes him somewhat easier for the raptor hybrid to dragon along behind him. You take a few moments to think about what just happened...and then have to shrug when you find that nothing that just happened made any kind of good sense. Maybe having a talk with Omio would be wise, but then again you still haven't gotten the package from off of the blonde for the red head researcher. Given the raptor's words though, should you really continue looking for the white coat wearing female, especially if she could turn out to be dangerous?[line break]";
				now opcl is 2;
				now Ointerrogate is 1;
				increase score by 10;
		otherwise:
			say "Knowing that lying to police is not the right thing to do, and knowing that police brutality is not something uncommon in this and age and in this country, you let the raptor in on the fact that you were coming to pick up a package from the blonde for a friend. 'I...see.' The raptor is somewhat taken aback by your honesty and hums quietly into his throat before flicking his tongue out to taste the scent of the air around you. 'Well, that's...very interesting to know.' The other man backs up and then chuckles some before looking at the direction his partner is pointing. 'Let your arms down Dan. She's gone by now so we can't really do anything about it at the moment.'";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more'] 
			say "'So what do we do about him, then?' The four armed iguana asks while hiking a thumb at you. The older raptor looks at his partner, then at you, and then shrugs. 'Not much we can do. This model citizen was just going about his way doing a favor for someone. What can we do with? Book him for doing a friend a favor? That'd look nice on a report, which I assure you, I'd make you write up.' The iguana blanches at that and then seems to all but deflate. A chuckle from his partner has you turning your head between the two men to regard them curiously.";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more'] 
			say "'Trust me when I say this [if cocks of player > 0]pal[otherwise]miss[end if], you'll be wanting to stay far away from [']that woman[']. She's nothing but trouble.' And with that the raptor turns away from you and then grunts for his uniformed partner to follow after him as he starts to walk off. The iguana gives you a dirty look, but says nothing as he goes to follow after the older reptile. The last you see of the two are both of their tails swaying in time together as they head down the street.[line break]";
			say "You stand there for a moment in wonder about what just happened and then decide that maybe having a little talk with Omio would be wise. Then again, you haven't gotten the red head's package as you said you would. Can you really return with a job half done? But with what the raptor just said is it really wise to go after the blonde woman, especially if she's [']dangerous[']? Decisions. Decisions.[line break]";
			now opcl is 2;
			now Ointerrogate is 1;
			increase score by 10;
	otherwise if opcl is 2:
		say "Exploring the red light district you end up finding the blonde haired woman that is supposed to be carrying Omio's package trapped between several lively mutant renegades and a blind alley. From the looks of things though, the blonde seems to be in no need of assistance as she weaves around the small group of four trying to get at her while brandishing a gleaming pair of curved blades with no small amount of skill. Taking a moment to watch the fight play out, after realizing that your help would be more of a detriment than an assistance, you track the blonde's movements as she all but dances around the lustful mutates.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']  
		say "Bobbing and weaving, ducking and striking out at any opening she can find the blonde knocks down her opponents one after another, but does not take the final blow to kill any of others, despite having the open opportunity to do so. A growling grunt from behind you has you turning just in time to see several tigress hookers snarling while looking over the fierce blonde amazon. Glaring hotly at you the tigresses decide to take their frustration at seeing some of their own being beaten to a pulp out on you!  [line break]";
		challenge "Tigress Hooker";
		challenge "Tigress Hooker";
		challenge "Tigress Hooker";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more'] 
		say "Having dealt with the striped mob you turn around just in time to see the blonde contend with the last of the mutants that had trapped her. Crushing the other's spine with her shoes after the mutate has fallen the pale skinned woman wipes a trail of sweat off from her brow and then sighs triumphantly before looking over at you as you begin to clap in applaud at her victory.[line break]";
		say "The blonde smirks and then nods to you before moving like a shot off about her way. You look to the grunting and groaning figures lying prone on the ground and then chuckle reverently at the ass whoppin' they just received. Seeing that there's nothing more to see here you turn to move off about your way. It's only when you're about five paces away that you realize that you totally missed out on asking the blonde about Lumpy box![line break]";
		now opcl is 3;
		increase score by 5;
	otherwise if opcl is 3:
		say "Walking through the seedier portion of town you find yourself bumping into someone who suddenly comes flying out of an opened doorway. Grunting from the impact of your two bodies colliding you stagger for a moment before catching yourself. Once you are settled you look to find the face of the four armed iguana from before gazing up at you with a slightly punch-drunk look plastered onto his scaly face. 'Hey! I know you!' The bleary eyed reptile slurs while blinking owlishly up at you. 'You're that suspect I'm supposed to question!' The uniformed iguana chuckles playfully before grabbing you into a strong bear hug and then nuzzling the underside of your [face of player] neck.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']  
		say "The smell of something rancid coming off from the other man makes you want to retch. Just how much did the officer have to drink? 'I'm so happy I found you, now I can tell Greg that I did a good job and get a pat on the head from him.'  At this point you're about totally lost, but seeing how inebriated the other is you start to open your mouth to ask the cop a question. However, before you can several rugged looking mutants come out of the building the iguana had just flown from with angry looks plastered onto their muzzles.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more'] 
		say "The group of five quickly surround you and your drunken companion and then go to growling and hissing like mad which makes you narrow your eyes. 'H-hey, back off you guys. I-I'ma police officer!' The iguana says, but that only makes the rowdy looking group of mutants start to chuckle as some of them begin to leer at the vulnerable reptile. 'We know, we've been looking to do our civic duty for a while now, haven't we guys?' The rest of the mutants all nod together while rubbing their growing hard ons. 'Why don't you leave the lizard here, friend? We'll take [italic type]real[roman type] good care of this lightweight.'";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more'] 
		say "Seeing the vulnerable officer quivering while holding on tightly to your [bodyname of player] chest you wonder if it would really be alright to just leave the iguana alone with these mutants. While they don't look like they'd kill him, after what the group might put him through you're not sure the [italic type]iguana[roman type] will remain an iguana once the assembled males surrounding you both get finished with his ass and tail. But is putting yourself at risk for an unknown stranger really worth the trouble?";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more'] 
		say "Hearing a fretful whimper coming from the reptile in the uniform you realize that leaving the other is out of the question, especially when pitiful greenish-yellow orbs gaze up at you in unrequited fear and helplessness. Easy to see that a badge and a uniform do not make one invincible, even when drunk, as the reptile shivers while hugging himself closer into you. Looking around for the other's partner you wonder where in the hell the raptor hybrid could be. 'Well, what's it gonna be? You handing him over or not?' The lead mutant questions, somewhat irately.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more'] 
		say "Maybe you could charm these guys with some smooth talk? They don't look especially that bright."; 
		let bonus be (( the charisma of the player minus 5 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus]: [diceroll + bonus], ";
		increase diceroll by bonus;
		if diceroll is greater than 10:
			say "Telling the other's that this ass belongs to you while rubbing up against the rear end of the drunken officer, which gets a quiet [']meep['] out of the reptile, you grind into the cop front while letting the others know that you're hot piece is not up for grabs. 'If that's the case then you need to keep [italic type]your[roman type] sluts out of our bar, unless you want them cream filled after the boys and I get through with them.' Huffing and saying [']whatever['] you wave the group off. Watching carefully as the assembled grumbles and then goes about their way back into the bar you let out a sigh of relief when the door to the place slams shut behind the last one.";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more'] 
			say "'T-thank you. I-I...' The iguana officer shivers and then breaks down in front of you. 'I really wish Greg was here. He knows I'm just a pathetic reprobate without him.' Letting the reptile know that he isn't that bad since he's an officer and all you begin to get some of the lizard's life story, completely without haven been asked for it. 'Greg's the one who got me signed up for the Academy. He's the one who encouraged me to keep on even when the other cops found out I was a [']fag['] and started to harass me about it.' The iguana shivers much harder and then starts to sob openly. 'He's the one who found me when the other guys were raping me and had me tied up in that basement. If it wasn't for him...I...I...'";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more'] 
			say "You hold the other close, or maybe the cop holds you as his four arms clench tightly around your waist and chest, for several long minutes. You barely notice how much time passes as you just stand there with the whimpering reptile. When someone comes up to tap you gently onto the shoulder you feel your spine lock up as you think that you're about to be attacked, however, upon hastily being freed from your four arm embrace you realize than an impending assault is not in the future. 'Greg!'";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']  
			say "'Dan, I thought I told you to [italic type]stay with me[roman type]! Where the hell did you go?' You turn to find the raptor hybrid from before with an arm full of happy, if not slightly drunken iguana, in his massive arms.[line break]";
			say "'I'm sorry Greg, but I saw her again. She was inside of that club back behind me.' The cop points with his tail and the raptor simply tips his head up to regard the building before turning his head down to look over his partner. 'S-she was in there, giving something to the bartender. When I tried to meet her head-on all the guys in the bar started to get riled up for some reason. When I tried to catch her one of the guys grabbed me and then forced something down my throat. The next thing I know I'm getting tossed out and into this [if cocks of player > 0]guy[otherwise]person[end if].'";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']  
			say "The iguana goes silent as he nuzzles into his partner's scaled neck where the other's trench coat hangs open. 'It got kinda scary after that. T-they...they were probably going to rape me if...' A growl from Greg shuts down whatever Dan was going to say. 'I see, well you have my thanks...whoever you are.' You give the bigger raptor your name and then tell him it was no problem. 'No it was a problem - a problem that shouldn't have happened in the first place. Dan, you are going to have to learn how to stay with me instead of always following your detective instincts.";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']  
			say "I know what the Academy and department taught you, I was a rookie a moon and a half ago too, but out here the rules don't matter so much. I can't charge these clowns with anything if no one reports something going wrong, and we both know that won't actually happen. Not right here and now right now with the city as it is.'";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more'] 
			say "'Then what's the point of even being out here? Why are we even doing this?' The iguana asks his partner somewhat soberly, the intoxicant must be leaving his system right about now. 'Because there's something I need from that woman.' The raptor hybrid whispers into his partner's ear, yet you are unable to hear it from your vantage point.[line break]";
			say "Seeing that your job is done here as the two reptile begin to converse much more softly to one another you head off about your way. Whatever's going on with those two...it's none of your business...for now.";
			now opcl is 4;
			increase score by 20;
		otherwise:
			say "Trying to charm your way out of this gets you nowhere as the group of mutants obviously want to fight. Growling and cursing underneath your breath you apologize to the iguana before throwing the reptile's shaking limbs from off from around you as you draw the other's attentions away from the iguana.";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more'] 
			challenge "Minotaur";
			if fightoutcome >= 10 and fightoutcome <= 19:
				challenge "Stallionboi";
				if fightoutcome >= 10 and fightoutcome <= 19:
					challenge "Wolftaur";
					if fightoutcome >= 10 and fightoutcome <= 19:
						challenge "Alpha Husky";
						if fightoutcome >= 10 and fightoutcome <= 19:
							challenge "Demon Brute";
							if fightoutcome >= 10 and fightoutcome <= 19:
								say "Having turned the attentions of the small group away from the iguana you find yourself sighing as you wipe down the [if lost > 0]musky cum from off from your body[otherwise]sweat from your brow[end if] before going over to see about the shivering reptile. Upon getting up to him the other quickly grapples you into a bear tight hug and then begins babbling about this, that and the other. Though most of it is nonsensical at the time you do manage to calm the other down before hushing the iguana in an effort to let him get his emotions sorted out.";
								if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
								if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more'] 
								say "While you have never seen an officer have a mental breakdown before you can understand the reptile losing his composure, especially given the fact that the iguana is slightly inebriated and all. 'Just like before,' The iguana starts to say and you quietly ask him to elaborate. 'This is just like what happened before back at the stations. The guys...they said it was something that everyone did to be a part of the [']family['], but then...then tied me up and...and started to rape me.'";
								if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
								if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']  
								say "Your body goes stock-still from the sudden admittance from the other man, even as the reptile hugs you closer into him with his four arms. 'The bad part was...even after Greg came to rescue me none of them would admit that they did anything wrong. They just left me hanging there. Hanging and empty.'[line break]";
								say "'If it wasn't for Greg...I'd think I have...' You press your head up over the top of the iguana's chin to stop him before he could finish that statement. Whatever the other was going to say...it wasn't worth voicing since it was lost in a past best left forgotten.";
								if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
								if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more'] 
								say "Minutes later the iguana's partner shows up and you hand the no longer shivering reptile back to the older raptor. You don't stick around to hear what was completely said between the two, but you do hear something about [']choices['] and [']future['] and [']a better way than this['] before you can no longer hear the voices of the two reptiles.";
								now opcl is 4;
								increase score by 20;
							otherwise if fightoutcome >= 20 and fightoutcome <= 29:
								say "Getting beaten by the mutant you had just been fighting you wind up getting knocked unconscious by the rest of the gang. Because of this you miss out on the sounds of gunfire coming from the from...somewhere around you...as a pissed of raptor tears into the other mutants who were trying to bother the iguana. Again, because you had been knocked around like a ragdoll you miss out on what happens next.";
								now opcl is 4;
								increase score by 10;
							otherwise:
								say "Making motions for the iguana to get lost you wind up having the other mutants chase you around the block. Losing them through the twist and turns of the city you find yourself coming back to check on the iguana policeman afterwards...only to find him gone. Did his partner come to pick him up? You can only hope so as you turn to go off about your way back about your business.";
								now opcl is 4;
								increase score by 10;
						otherwise if fightoutcome >= 20 and fightoutcome <= 29:
							say "Getting beaten by the mutant you had just been fighting you wind up getting knocked unconscious by the rest of the gang. Because of this you miss out on the sounds of gunfire coming from the from...somewhere around you...as a pissed of raptor tears into the other mutants who were trying to bother the iguana. Again, because you had been knocked around like a ragdoll you miss out on what happens next.";
							now opcl is 4;
							increase score by 10;
						otherwise:
							say "Making motions for the iguana to get lost you wind up having the other mutants chase you around the block. Losing them through the twist and turns of the city you find yourself coming back to check on the iguana policeman afterwards...only to find him gone. Did his partner come to pick him up? You can only hope so as you turn to go off about your way back about your business.";
							now opcl is 4;
							increase score by 10;
					otherwise if fightoutcome >= 20 and fightoutcome <= 29:
						say "Getting beaten by the mutant you had just been fighting you wind up getting knocked unconscious by the rest of the gang. Because of this you miss out on the sounds of gunfire coming from the from...somewhere around you...as a pissed of raptor tears into the other mutants who were trying to bother the iguana. Again, because you had been knocked around like a ragdoll you miss out on what happens next.";
						now opcl is 4;
						increase score by 10;
					otherwise:
						say "Making motions for the iguana to get lost you wind up having the other mutants chase you around the block. Losing them through the twist and turns of the city you find yourself coming back to check on the iguana policeman afterwards...only to find him gone. Did his partner come to pick him up? You can only hope so as you turn to go off about your way back about your business.";
						now opcl is 4;
						increase score by 10;
				otherwise if fightoutcome >= 20 and fightoutcome <= 29:
					say "Getting beaten by the mutant you had just been fighting you wind up getting knocked unconscious by the rest of the gang. Because of this you miss out on the sounds of gunfire coming from the from...somewhere around you...as a pissed of raptor tears into the other mutants who were trying to bother the iguana. Again, because you had been knocked around like a ragdoll you miss out on what happens next.";
					now opcl is 4;
					increase score by 10;
				otherwise:
					say "Making motions for the iguana to get lost you wind up having the other mutants chase you around the block. Losing them through the twist and turns of the city you find yourself coming back to check on the iguana policeman afterwards...only to find him gone. Did his partner come to pick him up? You can only hope so as you turn to go off about your way back about your business.";
					now opcl is 4;
					increase score by 10;
			otherwise if fightoutcome >= 20 and fightoutcome <= 29:
				say "Getting beaten by the mutant you had just been fighting you wind up getting knocked unconscious by the rest of the gang. Because of this you miss out on the sounds of gunfire coming from the from...somewhere around you...as a pissed of raptor tears into the other mutants who were trying to bother the iguana. Again, because you had been knocked around like a ragdoll you miss out on what happens next.";
				now opcl is 4;
				increase score by 10;
			otherwise:
				say "Making motions for the iguana to get lost you wind up having the other mutants chase you around the block. Losing them through the twist and turns of the city you find yourself coming back to check on the iguana policeman afterwards...only to find him gone. Did his partner come to pick him up? You can only hope so as you turn to go off about your way back about your business.";
				now opcl is 4;
				increase score by 10;
	otherwise if opcl is 4:
		say "Making your way throughout the red light district you stumble across the trench coat wearing raptor from before talking to the blonde by the side of an overturned pickup truck. 'So, this is it?' The much taller reptile asks while looking over something in his hands. You can't tell exactly what it is from where you are hiding behind a lamp post, but it appears to be a clear white vial...or maybe not. The blonde, who currently has her hood down from off of her head, nods to the man and then reaches out with her open hand, as if expecting something.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more'] 
		say "You watch as the raptor gives the female something small and black and then goes about his way without so much as another word to the other. Following the path the raptor's takes until the other disappears out of sight you wonder about what anomalous item the lizard could have received from the blonde. When nothing important comes to mind you turn to find that the little female is gone.[line break]";
		now opcl is 5;
		increase score by 7;
	otherwise if opcl is 5:
		say "A out of place whistle stops you in your tracks. Turning around you find yourself clumsily catching a lumpy package sailing directly at you. Grunting once you get the parcel in your hand under some kind of control you blink in confusion as you notice the form of a familiar golden haired female with the white hooded coat stepping up to you. The woman says nothing as she look at you with deep azure coloured eyes that hold one too many secrets for any normal person to have to shoulder the burden of.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more'] 
		say "Assuming that this is the package that Omio had been expecting you thank the blonde and then turn to go about your way. However, you find yourself pausing midstep when you hear the other woman speak up suddenly. 'You should go see about them.' Tilting your head to the side you ask the female who she's talking about. 'The two lizards. They need some help right about now, so go and see them.'[line break]"; 
		say "Confusion rips through your mind as you try and figure out what you are being asked. It's not like you're actually friends with the two reptiles, right? So why should you go see about two grown men who can probably take care of themselves well enough? You find your answer coming, not from a sudden epiphany, but from the human woman as she glares cool ice blue eyes at you pointedly.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more'] 
		say "Smiling nervously you ask the other where the two would be at the moment. 'They're warehouse district over by the beach. You may want to get there as soon as possible.' The words are cryptic, but seem to hold the weight of deadly seriousness. You sigh painstakingly at all the trouble that you seem to be coming across right about now, but bow your head as you think to yourself the quickest way to get to the warehouse area of the city.[line break]";
		now carried of lumpy box is 1;
		now Warehouse District is known;
		now tpfs is 5;
		increase score by 20; 
		now Important Treasure is resolved;


Table of Game Objects(continued)
name	desc	weight	object
"lumpy box"	"Supposed medical equipment and solutions that the red headed researcher Omio wanted/needed."	1	lumpy box

lumpy box is a grab object.
it is part of the player.
It is not temporary.

Instead of sniffing lumpy box:
	say "The small brown wrapped package smells of chemicals, tools, and...cherry lip balm!?";



Section 2 - Friendship's Proof

Friendship's Proof is a situation.

Tpfs is a number that varies.
The sarea of friendship's proof is "Warehouse";

Instead of resolving a Friendship's Proof:
	if tpfs is 0:
		say "Walking through the warehouse district you find yourself catching the sounds of a heated argument happening between two scalies as you walk down the side of the currently empty street. Stopping as you hear one of them, a green and black male iguana with fours arms wearing a police officer's uniform shouting up at a taller sleepy eyed orange and yellow raptor/komodo dragon hybrid wearing a trench coat[if daytimer is day]with shades on[otherwise]with shades hanging down onto the collar of his shirt[end if] you wonder what the two are arguing over. A strong feeling of discomfort coils through your stomach as you watch the iguana tackle the older male and then start to wail on him with his four fists.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more'] 
		say "Not understanding what's happening, but knowing that its...wrong for some reason you go over to try and stop the two. Before you can get too close however, the raptor has the iguana down onto his backside and is holding the other male onto the ground with a single orange and yellow mottled arm. The fours arms of the other reptile are all but useless at the moment as they are held fast underneath the bulk of their owner. Bucking and struggling while hissing and screeching the iguana seems to let out all of his frustrations in a single burst of sound and emotion before unexpectedly going still.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more'] 
		say "The taller raptor leans himself down to croon something into the other's ear and even though you're not able to hear exactly what it is, you can see that its having a positive effect on the shorter reptile as the iguana is all but placid right about now. The raptor hybrid gets up off of the uniformed official and then sighs when he notices that he's broken his shades. Tossing the eyewear off to the side the bigger male helps the smaller up and then dusts the now sobbing iguana off. In a flash the iguana has all four of his arms wrapped tightly around the other male and is nuzzling him almost desperately.[line break]";
		say "Seeing that everything is alright, at least partially so given the spectacle that just happened not more than a moment ago, you decide to let this odd couple pairing be. Turning on your heel and walking away you miss out on the passionate flicking of tongue the raptor showers over the smaller male.[line break]";
		now tpfs is 1;
		increase score by 5;
	otherwise if tpfs is 1:
		say "Coming across a familiar area of the warehouse district you find the trench coat wearing raptor sitting with his arms full of a slumbering iguana male[if daytimer is day]. The light from the sun seems to almost gleam off of the scales of the two males as they rest on the steps of an abandoned warehouse. A teasing orange and yellow tail tip plays at the end of the iguana's nose, but gets batted out of the way by an unamused dark green hand[otherwise]. The moon shines brightly down on the two as the bigger raptor strokes a scaled hand over the darker jaw line of his shorter companion as the two of the rest with their backs against the ramshackle fishery behind them[end if].";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']  
		say "Watching as the four armed, green and black mottled lizard hugs himself into the bulk of his bigger companion when the wind sweeps across the two of them you can't help but chuckle wistfully at how easily the taller male falls into the role of [']guardian/protector['] as he hugs the squirming bundle in his lap without complaint. Seeing that there is no need to come into contact with these two men you back away slowly so as not to break the mood surrounding the pair.[line break]";
		now tpfs is 2;
		increase score by 5;
	otherwise if tpfs is 2:
		say "An arm shoots out of a darkened building and snatches you up before you can think to react. Landing on your butt after being dragged inside of the warehouse you had been walking in front of you grunt from impact only to gasp when something constricts itself around your throat. Clawing at the smooth thing choking just enough air from your lungs to threaten you with unconsciousness, but not actually knock you out, you growl in primal fear for your life before fingers decorated with sharpened claws grab the back of your skull. 'Don't say a word, just yes and shake your head no, understand?";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more'] 
		say "Not having much choice you find yourself nodding without having to think to hard over the situation. 'Good. Now then, are you following those two lizards I twice caught you standing in front of?' (Y=yes, N=No)[line break]"; 
		if player consents:
			say "The thing around your neck chokes you tight enough to make you claw at it again just as a rumbling growl and quick press of claws into your skull threaten your life. 'I hope you know that they've got eyes watching them, [']friend[']. For your sake, I hope you have some good intentions or else you're not going to make it out of the city before help comes.' The words being spoken into your ears are whispered but maybe because of this, instead of in spite of it, a nervous shiver runs down your spine.[line break]";	
		otherwise:
			say " Shaking your head in the negative you find the tail wrapped around you uncoiling itself just a little more.[line break]";
		say "'Next question, did anyone send you down here to look for a man name Greg?' shaking your head in the negative you find the tail wrapped around you uncoiling itself just a little more.[line break]";
		if player consents:
			say "The pressure around your neck becomes almost unbearable and you faintly see stars popping along your eyes. 'I [']suggest['], very strongly at that, that whoever sent you, you forget about whatever contract you might have taken up. What happened before has nothing to do with you stranger, so stay out of it! You don't get involved in something that may get you dropped into a hot vat of[one of]latex[or]tar[or]water[or]acid[or]chocolate[at random], now do you?' The question is hissed into your ear so smoothly that you swear you can feel a thin tongue playing around the shell of your ear.[line break]";
		otherwise: 
			say "You shake your head no. 'Alright,' A little pressure relieves itself from around your neck allowing you some extra added air.[line break]";
		say "'Final question, do you know anyone by the name of Natasha?'(Y=yes, N=No)[line break]";
		if player consents:
			say "The hands on your head tighten hard enough that you actually feel as though your skull will break into pieces, and yet, the growl that comes from behind you has you more terrified mentally more terrified than anything physically happening to you at the moment. '[italic type]Friend[roman type] you are a bad liar and someone that does not want to try my patients. I don't know what your game is, but you better be ready to play some serious hardball if you stick your nose in where it doesn't belong. The things happening are not...' The other person behind you stops himself from speaking all of a sudden and then lets out a roar before throwing you down onto the ground suddenly.";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more'] 
			say "The sudden impact makes your chest heave, but at getting in much needed air you figure that it's worth the effort. When you turn to look at your captor you find your eyes, which have long adjusted to the gloom, not able to find anyone.";
			now tpfs is 3;
			decrease hp of player by 30;
			increase score by 10;
		otherwise:
			say " A final shake of your head and the thing around your neck releases you completely just as the claws at the back of your head move away from you vulnerable cranium. The sound of running feet moving away from you catches the end of your senses, but at the moment you are too glad for air to care about the strangeness of what just happened to you.[line break]";
			now tpfs is 3;
			increase score by 4;
	otherwise if tpfs is 3:
		say "Finding yourself coming across the orange and yellow raptor from before walking down the street you take a moment to wonder where the other's [']shadow['] is, right before you take notice of the fact that the other man is staring at you somewhat intensely. Shades off from his face and gold-green eyes looking at you somewhat coolly you find yourself staring almost transfixed into the darkened orbs of the raptor. Shaking your head when the other blinks, you find yourself getting a small headache all of a sudden.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more'] 
		say "Watching as the trench coat wearing lizard goes off about his way as his partner comes up to him you wonder what that was all about. Not sure of anything at the moment you move along before something else weird can happen to you, like before back at the warehouse. A part of you still wonders who the heck that was who had tried to choke information out of you. Narrowing your eyes as you think about the long reptilian tail of the orange and yellow raptor hybrid you wonder...could it have been him?[line break]";
		now tpfs is 4;
		increase score by 3;
	otherwise if tpfs is 4:
		say "Coming across the familiar orange and yellow raptor from before you find yourself nodding to the other in quiet deference. The raptor does nothing in return, save for flick his long and thin tongue out in your direction. Thinking that it's time to move on you prepare to take a step away from the other when the sudden intense scent of fresh blood slips its way across your nose. Snapping your head around to look over the raptor your eyes wander up and down the trench coat wearing lizard until you find large spots of sticky red stains covering at the ends of the reptile's trench coat.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']  
		say "From what you can see the other doesn't appear to be hurt anywhere, so then where did the blood come from? A dark chuckle makes you shiver as your eyes lift up to focus on the[if daytimer is day][one of]unseen orbs of the raptor hidden behind his shades[or]golden-green slit orbs of the raptor[at random][end if] as a almost maniacal smile parts the reptile's lips.[line break]";
		say "Taking a step away from the other you decide not to stick around to figure this one out you turn to go off about your business. A fleeting hope inside of your heart is that the blood hadn't come from the emotional iguana with the four arms you had seen the other with thrice before. Surely the other man wasn't [italic type]that[roman type] kind of a sadistic son of a bitch. Was he?[line break]";
		increase score by 2;
		now tpfs is 8;
	otherwise if tpfs is 5:
		say "Running as fast as you can you search around with fervent determination to find the two lizards you come across several times before. Not exactly knowing where they would be at the moment, considering the severity of whatever's probably taking place between them, something you're still somewhat unsure about, you find yourself moving to the most likely of places where someone would want to be alone at a time like this. The sounds of shouting and struggling catch onto the edge of your field of hearing and darting around the corner of an empty building you find yourself just in time to see Greg and Dan going at it. From the looks of things the bigger raptor seems to be getting tired, but the iguana isn't pressing into the advantage he has in front of him.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more'] 
		say "'Why don't you just take it?' Greg says while holding something in one of his hands. 'You said you don't want to be a freak anymore, right?' The raptor seems to be trying to push the thing he got from the blonde off on the iguana, but at the desperate shake of the uniformed reptile's head it would see that Dan doesn't want it. Wait...did he just say... 'It's because...because I don't want to!' While not the most mature answer one could give, the fire behind the four armed male's words are hot enough to brand his determined conviction into your mind.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more'] 
		say "'Danny stop being so damn stubborn and just take this medicine!' Greg said while hissing and growling at the other lizard. 'No. I rather be like [']this['] then go back to being the old me.' The iguana points two of his arms down at himself. 'At least this way I can actually be useful to you...not like how I was before.' Greg seems to take a pause as he lowers his head to think over this. 'But...you'll never be anything more than what you are now if or when we get out of here. You're always going to be a four armed freak of nature like I'm going to be a mutt of a lizard if you stay that way. You really want to go through all that?' Greg lifts his head to stare pointedly at his partner.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more'] 
		say "'I...I do. I rather be a [']freak['] and with you, then a normal person without you.' The iguana admits without falter. 'I-I know what you did Greg. I know you killed those guys from our previous station...' That declaration makes the raptor take hesitant step back as that particular little spot of truth hits home rather hard. 'I'm a cop too, Greg. Even if I [italic type]am[roman type] a screw-up I can follow patterns and leads and trails just like anyone else with half a brain. So I know...I know you got them back for me. I don't know how you did it, but I know.' Dan deflates as he admits this while Greg seems to be coming undone at the seams.";
		say "Seeing that the raptor is about to do something drastic as the muscles along the orange and yellow reptile's body begin to tense up like a coiled wire you grunt to draw the two officer's attentions. Immediately the iguana and raptor turn to regard you with feral scowls covering their muzzles.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']  
		say "'You!? What are you doing here!?' Dan asks while curling the twin sets of arms he possesses over across his chest and abdomen, respectfully. Telling him that you...just came by because of the shouting you look at Greg carefully to see what the other will do next. 'uhm...this is kinda a private party so could you...maybe get lost?' The tone of the iguana makes you give the other man a [']look['], but before you can say anything Greg is moving like a shot towards his partner.[line break]";
		say "Charging before the other can reach Dan you throw all of your weight into the raptor forcing him to crash hard into the concrete ground underneath both of your feet. The needle that he had in his hand is set free when the raptor's scaled hand flies open against his command. The glass rolls sloppily across the ground before crashing into the side of a pole where it smashes into a hundred different pieces. The contents therein, which were clear white in colour, unhurriedly evaporate against the ground just as Greg shouts his dismay to the world.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more'] 
		say "'Son of a bitch! Look at what you made me do!' The raptor hisses into your face and then swipes his claws at your face with the full intention of gouging your eyes out. Ducking quickly enough so that you can save your vision you kick yourself away from the pissed off lizard before he can try to strike a second time. 'Greg stop!' Dan's voice seems to draw the raptor back from his furious daze as the trench coat wearing detective turns to regard his partner somewhat incredulously.[line break]";
		say "When the four armed iguana comes over and then pounces himself over on top of his companion you get the feeling that there's nothing left for you to do here anymore. The hot and wet kisses that the two scalies begin to share with one another quickly become lewd in nature as Dan stripes both himself and his partner out of their respective clothing. You take a few seconds to watch as the deceptively muscled form of the green and black scaled iguana become revealed to the[if daytimer is day]light of day[otherwise]rays of the moon[end if] before noticing Greg's own well-toned form shifting and flexing as the raptor hybrid squirms around onto the ground underneath his eager lover.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more'] 
		say "Pulling yourself away from the spectacle just in time to miss out on seeing Dan's four mottled hands drawing unfamiliar patterns onto the raptor's pectorals and thighs, at the same time no less, you decide that now would be a good time to head off. The heated moans of the two men will probably stick around in your head for a while, right along with the strong and heady musk of two hot and horny lizard dudes wrapped up together in lustful ecstasy which has now become somewhat prevalent inside of your nose.[line break]";
		increase libido of player by 16;
		if libido of player > 100, now libido of player is 100;
		now tpfs is 6;
		increase the score by 10;
	otherwise if tpfs is 6:
		say "When a hand reaches out to grab you by the shoulder your muscles automatically tighten in preparation for a fight. 'Whoa there, friend.' Greg's voice has you calming down as the other releases your shoulder and then goes about stepping in front of you. 'Sorry, I know that might not have been too cool of me to do, but I don't really remember your name to well. What was it again?' You sigh and then tell the other man your name. 'Oh, ok. Well anyway, I...' A grunt from onside of the raptor has your eyes moving over to the side to see Dan standing right next to the taller man with one of his arms casually wrapped around his lover.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more'] 
		say "'Ok...[']we['] wanted to thank you for what you did for us back there. I did some soul-searching after Danny and I got back to our place and I realize that I don't want to live without this guy, now that I've had time to think over what I tried to do.' A fleeting smile rising up onto your lips has both the four armed iguana and somewhat sleepy eyed raptor chuckling at you. 'Well, ugh, that is...I'm not sure how to say this next part because it's so odd.' The trench coat wearing raptor smiles nervously while ducking his head off to the side.[line break]";
		say "'Come on Greg, just say that you want[if cocks of player > 0]him[otherwise if cunts of player > 0]her[otherwise if cunts of player > 0 and cocks of player > 0]hir[end if] to come over to our place and get fucked royally by the both of us.' Your mouth, along with Greg's, silently drop to the floor as the two of you turn to stare at the four armed cop. 'What!? If it wasn't true then I wouldn't have said it!' Dan huffs and Greg can only hammer a strong hand over the top of the other's head as he hisses between his fangs. 'Yes, but there's something called [italic type]tact[roman type] that we need to work on. You just don't say things like that to complete strangers!'";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more'] 
		say "Seeing that the two are about to start a round of playful banter you tell them that you'll be happy to come over to their place. Silently you think that the fucking might be more than you could handle as the two strong lizards look like they could probably snap you in half while screwing you. Then again, that might not be such a bad thing...especially given how limber Dan looks in comparison to Greg. Quietly you have to wonder just how much coaxing it would take to get the four armed iguana to hike his tail...ok time focus on the present![line break]";
		say "Anyway, we live in the high rise district. Come by whenever you want. We'll be happy to have you,' The hiss from Dan, coupled with the lustful look in the reptile's gold-yellow orbs has you shivering as you imagine what the other man is seeing in his mind's eye. A quick whack on the head by Greg has the green and black reptile grunting in slight pain. 'Anyway, thanks again. If you need anything then come on by and let us know. We'd be happy to have you over, even though we don't much.'";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more'] 
		say "Nodding to the trench coat wearing raptor you get the specifics of the loft's whereabouts and then wave to the others as they go off on about their way. Watching the twosome go off on their way with their long reptilian tails wrapped comfortably around one another you realize that it won't be long before the two are off rutting somewhere, especially if the two hands straying down to the bottom of Greg's ass were anything to go by. Maybe it would be a good idea to see the two scalies sooner rather later for some [']recreational['] stress relief?[line break]";
		increase score by 20;
		now Friendship's Proof is resolved;
		now Lizard Parlor is known;
	otherwise if tpfs is 8:
		say "[bold type]You'll need to help Omio first before you can finish this quest-line! Find Omio in the dry plains if you haven't already found her.[roman type]";


Section 3 - Ouroboros

Ouroboros is a situation.

The sarea of Ouroboros is "Museum";

Instead of resolving a Ouroboros:
	if omq < 10:
		say "Walking through the somewhat quiet halls of the museum you find yourself passing by a impressive looking medallion with a snake circled around itself nibbling at its tail. A coy smile tugs at your lips as you wonder why someone would draw a serpent doing such a thing before you shrug and then move on about your way.";
	otherwise if omq is 10:
		say "Walking through the hallways of the museum you come to find a heavily built wolverine pacing back and forth in front a glass case housing the amulet Omio requested you [']obtain['] for her. When the mutant dressed in a guardsman uniform takes notice you the wolverine growls out something the likes of 'move along now' while coldly glaring at you. With the way the other is standing, with his burly arms crossed over the front of his massive chest and his muzzle wrinkled into an unimpressed scowl, you get the feeling that trying to tangle with the other might not be such a bright idea. But then again wouldn't a good fight make this caper all more interesting? (Y=Fight Wolverine, N=Think up a plan)[line break]";
		if player consents:
			say "Deciding just to plow your way through you step up to the wolverine and tell it that you'll be taking that medallion back behind him. The dark eyes of the guard animal narrow at you dangerously and the wolverine is quick to step up to meet your challenge![line break]";
			challenge "Wolverine Guard";
			if fightoutcome >= 10 and fightoutcome <= 19:
				say "Pushing the defeated, and coincidentally enough, sleeping, wolverine out of the way you walk up to the glass case and then remove the heavy barrier off and away from your well deserved prize. Grabbing the medallion you turn the bronze artifact over into your hands while wondering why Omio needs such an old looking thing. There's no way that this thing could be an energy conduit, could it? [line break]"; 
				say "Before anything significant can come to you however, the sounds of charging feet and barking roars has you freezing in place. Turning around slowly you notice several Cerberus creatures racing directly for you![line break]";
				challenge "Cerberus";
				if fightoutcome >= 10 and fightoutcome <= 19:
					challenge "Cerberus";
					if fightoutcome >= 10 and fightoutcome <= 19:
						challenge "Cerberus";
						if fightoutcome >= 10 and fightoutcome <= 19:
							challenge "Cerberus";
							if fightoutcome >= 10 and fightoutcome <= 19:
								challenge "Cerberus";
								if fightoutcome >= 10 and fightoutcome <= 19:
									say "Having dealt with the mob, and kept the medallion tucked safely into one of the hidden pockets of your pants, you grumble tiredly before moving your way out of the Museum.";
									now carried of medallion is 1;
									increase score by 10;
									now Ouroboros is resolved;
								otherwise:
									say "[defeatedbycerb]"; 
							otherwise:
								say "[defeatedbycerb]"; 
						otherwise:
							say "[defeatedbycerb]"; 
					otherwise:
						say "[defeatedbycerb]"; 
				otherwise:
					say "[defeatedbycerb]"; 
			otherwise:
				say "Getting your tail kicked by the wolverine you find yourself being escorted out of the museum via a foot to the ass! Grunting and then grumbling you rub your rear as you realize that challenging the guard in a full on fight might not be so wise at the moment. Maybe coming up with a plan would be a better choice?[line break]"; 
				decrease score by 10;
		otherwise:
			say "Sensing that a plan would net you better results than a full on confrontation, which would probably alert more than just some extra added wolverine in this dangerous place, you try and think up something else to do to gain the medallion between you and the wolverine. When the sleepy guard yawns tiredly all of a sudden you begin to feel somewhat sorry for the beast. At least until a thought crosses your mind.[line break]";
			say "If the guard's almost tuckered out from his watch that means that someone should be coming around to replace him sooner or later. Maybe you could be the one to take over the wolverine's shift for him? But first you'd need to look like the other in order to do that.[line break]";
			if the bodyname of player is "Wolverine Guard" and the facename of player is "Wolverine Guard":
				say "Telling the other that you've come to take over active duty you watch as the wolverine gives you a strong nod before tiredly walking his way down the hall towards, what you can only assume is, a rest area. Taking several seconds to watch to make sure that the burly guardsman is going off and not coming back, you sigh in relief when the last you see of the other is a tightly clad brown furred rump disappearing into an open doorway. When said door quietly shuts you turn your rugged face over to look at the glass case futilely protecting the artifact you've come to [']liberate['].";
				if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
				if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more'] 
				say "Picking up the case and then gently setting it down you grab at the medallion and then turn it over into your hands to have a better look at it. Taking a moment to speculate on why Omio would need such a thing, as it doesn't look anything like what you'd expect a researcher of her caliber to be interested in, you try and think up why the red head would send you after such an old babble.[line break]";
				if perception of player > 15 and intelligence of player > 15:
					say "A faint memory from some other time and place reminds you that ancient people once used items like these in alchemical experiments or to represent concepts of eternity and equilibrium. Maybe Omio is going to turn some of the material she has back at her studio into gold? Then again, knowing the red head, she'd probably come up with something more conventional like [one of]a previously unheard-of fuel[or]a new fabric[or]a medical reagent[at random] in an effort to help others more than just herself. A chuckle worms its way from your throat at that one.[line break]"; 
					say "While she might be somewhere between a ditz and a mad cap, Omio definitely would not waste anything as important as this on something frivolous. Such a thought makes you think that maybe this little theft might be worth the trouble after all. Pocketing the medallion you turn to walk away from the, now empty display, but before you do you turn and then smirk dangerously.[line break]";
					now carried of medallion is 1;
					increase score by 10;
					now Ouroboros is resolved;
				otherwise:
					say "Knowing that the medallion is important you try and flip the bronze amulet over several times in hope that something will stick out in your mind as [']important[']. When that doesn't happen you can only sigh and then shrug when nothing comes to mind. Realizing that it really doesn't matter anyway you pocket the artifact and then get ready to head out of the museum.[line break]";
					now carried of medallion is 1;
					increase score by 10;
					now Ouroboros is resolved;
			otherwise:
				say "Perhaps if you were a full wolverine the other guard might let you take his place? Maybe?[line break]";
	otherwise:
		say "Noticing that you're approaching the section where the Ouroboros medallion was once stored, you decide to steer clear of the area.";


to say defeatedbycerb:
	say "Having been defeated by the Cerberus you wind up getting tossed out of the Museum onto your head. Grunting in annoyance you soon find yourself chuckling in triumph as you feel the weight of the medallion shifting inside of your pocket."; 
	now carried of medallion is 1;
	increase score by 10;
	now Ouroboros is resolved;
			

Table of Game Objects (continued)
name	desc	weight	object
"medallion"	"A unusual bronze artifact that bears a serpent biting at its own tail."	1	medallion

medallion is a grab object. It is part of the player.  It is not temporary.

instead of sniffing medallion:
	say "A strong scent of ancient times and alchemical mixtures covers the medallion.";
	
				
				
Section 3 - Special Delivery


Special Delivery is a situation.

The sarea of Special Delivery is "Warehouse"

Instead of resolving a Special Delivery:
	if undisclosed case is not owned:
		say "Crossing one of the boardwalks that stand over the churning ocean you hear the voice of a very loud someone yelling out instructions. Whipping your head around you come to find a bipedal twin headed blue hydra with four dazzling crimson eyes trying to command a pair of frisky otters to get back to work. The pair of mustelids in question, who are currently rutting together against the railing of a docked luxury cruise boat, seem to be paying little mind to the scalie miscreant behind them.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more'] 
		say "When talking doesn't seem to work the hydra growls and then snatches the two otters apart and then proceeds to nonchalantly throw one into the sea while haphazardly walking the other one over by a standing bucket, mop and broom. Looking down you notice that, amazingly enough, the little mustelid who had been dumped off like dirty laundry hasn't been hurt by his unexpected trip as the otter is now swimming around while trying to stroke itself off.[line break]";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more'] 
		say "Chuckling at the sight you move along without a word.";
	otherwise:
		say "Looking around you notice a bipedal twin headed hydra staring out at the sea with his arms crossed over the length of the railing of a large and impressive luxury boat. A stray gust of wind sweeps the two dusty trails of dark brown hair along both of the sea beast's napes and from what you can see it looks as though the red eyed hydra is miles away at the moment. Wondering if this is the right person or not you go up to the other, via the lowered plank connecting the harbor to the side of the ship and then grunt low into your throat.[line break]";
		say "In a fraction of a second brilliant red eyes shoot over your way and before you can stop the other the hydra is snarling and baring down onto you.[line break]";
		let bonus be (( the Strength of the player minus 10 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus]: [diceroll + bonus], ";
		increase diceroll by bonus;
		if diceroll is greater than 14:
			say "Having beaten back the enraged hydra you find the twin-headed terror stumbling backwards against the railing of his ship somewhat awkwardly. When the twin heads of the sea beast begin to shake themselves in time with one another you shout at the scalie to let him know that you're not here for a fight. That however, does not stop you from remaining in a defensive stance as you wait for either the acceptance of peace or another physical dispute with the other.[line break]"; 
			say "'It's not about whatcha want,' The red eyed hydra says quietly. Both of its mouths speak at the same time which, extraordinarily enough, give the hydra a somewhat echoing tenor to his words. 'it's about what the other person wants and how they plan to go about getting it. You're job, my little friend, is to know how to deal with the outcome of the situation if words can't dissuade a conflict from becoming paramount.'";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more'] 
			say "Cocking your head in bewilderment you try and ask the sea serpent what in the hell he's talking about. 'Never mind. If you don't get it, then you don't need such wisdom right now.' The red eyed hydra chuckles before holding out one of his long clawed hands at you. 'Anyway, do you have my package?' You nod and then fish out the case Omio had given to you and then set it down onto the floor between you and the other man. You find the scalie chuckling some more when you scoot it over to him, by means of a tentative kick to the back of the case.";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more'] 
			say "'Smart of you not to trust a man you've just fought against. I think you'll do just fine,' And with that the twin headed hydra steps over to pick up his case, turns it over as if to survey the container and then goes off about his way below the deck of the ships without another word spoken. You look on where the other went for several seconds before shaking your head and then going off about your way.[line break]";
			say "Being that Omio was the one who set this whole thing up you find yourself not too bothered by the weirdness of one of the red head's [']friend[']. After all, who wouldn't be crazy after ten minutes of knowing her? But then, what does that say about you?[line break]";
			delete undisclosed case;
			decrease libido of player by 4;
			if libido of player < 0, now libido of player is 0;
			increase score by 2;
			now bch is 1;
			now Special Delivery is resolved;
		otherwise:
			say "Getting thrashed against the sides of the ship by the VERY powerful hydra you find yourself grunting as your insides start to bitch at you from the ache running throughout your ribs. The pain slowly starts to go in about thirty seconds however, thanks to your advance healing abilities, but that proves to not be quite enough time for you to fully heal as you hear the booted feet of the red eyed scalie sauntering over to you. Gritting your teeth you prepare for another physical altercation, but then, the unexpected happens.";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more'] 
			say "A small rag drops down in front of you and upon surveying it carefully you notice that it is surprisingly clean. 'A well lost fight. That's commendable, if nothing else.' Twin dualistic voices coming from up above make you lift your head somewhat tiredly as you notice the red eyed hydra staring down at you tolerantly. 'You didn't back down so I can respect that.' The blue scaled male takes two steps back from you and then waits for you to get up off of your knees, or so you would assume by his sudden non-aggressive attitude.";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more'] 
			say "Grabbing the rag and then wiping down your face you grunt as the faint scent of hydra sweat mingles with your own sweat soaked [skin of player]. Chuckling for no apparent reason you wobble some as you get to your feet before standing to look the hydra into the face. When asking him why he let you live, as the other had more than enough killer intent in his attacks when he lashed out at you with fist, foot and claw, you're almost not prepared for the answer.";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more'] 
			say "'The red headed one said that you would be worth something more than just a passing interest -- I wanted to test that for myself. From what I can see, she was right.' You let your jaw drop as you listen to this nonsense. In the back of your mind you wonder whatever happened to [if cocks of player > 0]having a drink with someone at a bar[otherwise]sitting down over dinner[end if] and just talking like people with common sense? Maybe the infection has loosened social civilities as well as morals?";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more'] 
			say "'Hate me if you'd like, but it won't change my thoughts on you or what's happened here today.' The hydra says evenly. 'Anyway, do you not have something for me?' The audacity of the other man to actually wave a hand out at you in want makes you smile somewhat disbelievingly. Taking out the package, after rooting through your pack while keeping one eye on the other, you slide the case across the floor of the yacht with a foot. The twin smirks that cover the faces of the red eyed hydra's two muzzles make you lift an eye ridge in confusion.";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']  
			say "'If you can keep up that attitude then you'll go far.' The scalie kneels to picks up the case and then gives to parcel a few test rattles before nodding. Sending one final look your way the hydra quickly turns on his heel and then disappears down into the lower deck of the ship. Throwing the rag the other had given you away off to the side you look up at the [if daytimer is day]sky[otherwise]moon and then silently wonder.[line break]";
			delete undisclosed case;
			decrease libido of player by 4;
			if libido of player < 0, now libido of player is 0;
			now bch is 1;
			increase score by 3;
			now Special Delivery is resolved;

[
Table of Game Objects (continued)
name	desc	weight	object
"undisclosed case"	"A case Omio hastily shoved into your hands."	1	undisclosed case

undisclosed case is a grab object. It is part of the player.  It is not temporary.

instead of sniffing undisclosed case:
	say "The case smells of something fruity as well as spicy. Liquor, maybe?";
]


Important Research Quests ends here.
