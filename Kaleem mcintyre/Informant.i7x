Informant by Kaleem mcintyre begins here.

Section 1 – Informant

Informant is a situation.

The sarea of Informant is "High";
smf is a number that varies.

Instead of resolving a Informant:
	if smf is 0:
		say "Walking through the high rise district you find yourself bumping into a black clad man wearing a hoodie. 'Sorry about that fella.' The man apologizes and then steps around you to go about his way. Not thinking anything of the accidental bump you nod to the retreating back of the other person and then go about your way.";
	if smf is 1:
		say "Crossing through the streets of the high rise district you come across the sight of a somewhat black clad figure surrounded by two burly looking mutants. Both mutants seem to be somewhat eager to get at the unknown figure and upon seeing one of them aiming their cock at the person you decide that maybe it's time to do your good deed for the day. Shouting to draw the mutant's attentions you rush the others before they have time to react.";
		challenge "Shemale Smooth Collie";
		challenge "Leopardman";
		say "Taking care of those miscreants you find the black clad figure stepping out from behind an overturned dumpster with slow and nervous movements. 'Jeez, I know things are getting bad, but come on. Really?' The other person sighs before shoving their hoodie down from off of their head. A shock of chestnut colored hair fluffs out from the other's head and upon seeing this you can't help but chuckle. The other person, who proves to be a man by both looks as well as voice, well he almost looks like a rooster with part of his hair sticking up in a spiky sort of way. When the other turns to face you, you quickly school your features as Prussian blue eyes stare at you gratefully.";
		say "'Hey man, thanks a lot for the assist. I think I'd be even more of a mutant than I already am if you hadn't come to my rescue.' Looking the captivatingly human face of the other man you silently begin to wonder just what part of the black coat wearing individual has been mutated. 'Trust me, you don't want to know.' The long suffering sigh tells you that you probably don't want to pry. 'Anyway, if you need my help just ask, I happen to be something of an information dealer here in the city. My name's Homaru by the way and I live over behind the deli just around the block.' The chestnut haired man hikes a thumb across his shoulder.[line break]";
		say "Stopping the other man before he can turn to run off you ask Homaru if he knows anything about the firemen from station 86. 'Why would you ask me about them?' Homaru seems honestly curious and so you explain to him the situation with Kenaz. 'Ahhh, okay. Well I thought that I had heard a rumor like that. Heh, nice to know that even shady information can sometimes even be trusted. The laughter that comes from the other man makes your [skin of player] crawl as you feel something foreboding about the outburst.[line break]"; 
		say "'Sorry about that. Anyway, if you'll come with me to my shop underneath the Bakery then I'll be happy to trade some information with you.' Not seeing anything else you can do at the moment you nod to your new cohort and then begin to follow him back to his abode.[line break]";
		now Informant is resolved;
		now Agency is known;
		Move player to Agency;
		increase score by 15;


Section 2 - Agency

Agency is a room. It is fasttravel. It is private.
The description of Agency is "Back behind some of the less prominent buildings of the high rise there stands and old fashion deli that seems to be in good shape, despite the rough times the city is having. At the side of the deli a stone flight of stairs leads down to where a nondescript black door stands in wait for certain...irregular...customers. Pushing the door open you find a cool office with a fan swirling up on the ceiling filling out the strangely expansive room hidden from the rest of the world. A plush red carpet covers the floor of the room while a single desk and chair stands in front of three large bookcases filled to the brim with old tomes. A comfy looking couch sits to the left of the doorway while a gargantuan fish tank filled with multicolored fish and turtles has been positioned onto the right side of the entryway. All in all the room both looks and feels like something pulled out of an old fashion detective novel, especially with the uninteresting door in the back that looks as though it hasn't seen much use in quite a while. Homaru sitting down at his desk looking over something.";
Homaru is in Agency.

The invent of Agency is { "food" , "food" , "water bottle" , "chips" , "soda" };

Instead of sniffing the Agency:
	say "The room smells of gathered information, deductive reasoning, unspoken secrets and...ham on rye?";


Section 3 - Homaru 

Homarutalk is a number that varies.
Homarusearch is a number that varies.
Findfirefighter is a number that varies.
Fin is a number that varies.

Homaru is a man.
The description of Homaru is "A young man with spiky brown hair and black hooded coat on sits at his desk while [one of]going over some interesting looking notes[or]leafing through information on his computer[or]surveying files that look to be giving him a hard time[or]eating a sandwich[or]chuckling while reading a comic book[at random]. Homaru looks to be somewhere in his twenties, but the feel of the other man makes him seem as though he's about fifty or something. Sharp brown eyes filled with wisdom look up at you as you walk by Homaru and you find it hard not to freeze in place from the look given to you by those dark and seemingly ageless orbs.";
Homaru is in Agency.
The conversation of Homaru is { "I'll find it out for you!" };

Instead of sniffing Homaru: 
say "The information dealer smells like unsolved puzzles and mysterious best left kept in the dark...as well a turkey and ham on whole wheat.";

Instead of fucking Homaru: 
	say "'Whoa! Whoa, there friend!' The brown haired man quickly throws out his hand as you advance on him. 'You're [if cunts of player > 0]cute in all[otherwise]a nice guy[end if] but I don't want or need to have this infection getting any worse on me. So please, for me and all of the people out there who still need information only a reputable informant like myself can gather, keep your [if cocks of player > 0]cock[otherwise]sexy self[end if] at least five feet away from me!"; 

instead of linkactioning Homaru when Homarutalk > 0:
	say "Possible Actions: [link]talk[as]talk Homaru[end link], [link]smell[as]smell Homaru[end link], [link]fuck[as]fuck Homaru[end link], [link]delay[as]delay military[end link], [link]find firefighters[as]find[end link][line break]";

instead of conversing the Homaru:
	if Homarutalk is 0:
		If guy is banned or furry is banned or girl is banned:
			say "Homaru goes over some of the information highlighted on his screen and then freezes all of a sudden. When the power to the building is cut the brown haired man lets out a line of swear words that might have made a nun blush. 'Unbelievable! Someone's caught onto me!' You ask the other what he means and then get a furious stare in return. 'I think that someone's realized you were trying to find the missing firefighters and have shut me down. I won't be able to find any of them for you now.'";
			say "Homaru sighs in the darkness and then flops his head down onto his desk in disgust. The lights to the building come back on seconds afterwards, ironically.";
			Now Homarusearch is 70;
			Now Homarutalk is 1;
		Otherwise:
			say "Rapidly typing on his keyboard Homaru begins to talk to you without looking up into your [facename of player] face. 'Hey, I was looking through some information that I have on hand and I think I found one of the firefighters you spoke about earlier.' Homaru's words make you stare in awe as you try and think up how the other man could have had this kind of info when you only asked him about it, like ten minutes ago. Unless the other was some kind of fortune teller or prophet that should have been impossible...right? Or maybe he was spying on you?[line break]"; 
			say "Pulling out a manila folder Homaru leafs through the information and then goes about giving you some of the highlights. 'It seems that when things started to get out of hand around this city some of the people here panicked and started moving into shelters, bunkers, barracks, or what have you. However, from the Intel I have on hand here, it seems as though some small groups of like-minded mutants began popping up when the outbreak became almost impossible to contain in any one place. After that these said groups worked to grab up as many uninfected people as they can to use them for...well let's just say no good purposes.'[line break]";
			say "You ask Homaru to elaborate. 'Well,' The other man lowers the folder in front of him and then sweeps a hand through his spiky as looks to try to find the right words to say. 'You know how kinky everything is outside right now?' You nod at this. 'Well, it seems as though there are some people more immune to what's going on than others, or at least partially appear to be so.' You get a feeling for what Homaru is saying as the man starts to flush deep red and bite at his lower lip.[line break]";
			say "'Well, uhm, let's just say that there is a place down at the Warehouse district where some of the, shall we say, less [']upstanding['] members of society have gather to host full on sex shows with [']regular['] people and some of the [']furries['] there are outside.' At this you can actually hear part of your brain explode. 'Trust me on this -  there are strange people out there who would pay to see such a thing. And if you are going to ask why...even I don't have enough information to understand that, however, I can say that your missing firefighter is probably there.'[line break]";
			say "Asking Homaru exactly where [']there['] is you watch as the information collector squirms about in his seat and then blushes before chuckling offhandedly as he answers you. 'Oh, sorry, there is a gloomy looking warehouse down at the warehouse district. If you go there and knock three times and then say you're there for the [bold type]Dog House[roman type] special and the guard will let you in. How you go about rescuing the firefighter, well, you're on your own on that one, but I'll give you some information on how to go about it if you like?'(Y=yes, N=No)[line break]";
			if player consents:
				say "'Alright. Once you get into the place you'll be shown to a viewer's area to watch the live sex shows. Now it's during this time that you'll need to sneak away and then head downstairs to where they keep both the mutants and [']people['] locked up. From what I have gathered so far from my contacts around the city, the man you are looking for -- Birch if I remember correctly -- he's one of the few that haven't changed completely. I'm not sure exactly why, but because of this he has become something of a celebrity there. If I remember correctly Birch has dark brown hair, a strong jaw line and almond brown eyes.' Homaru says while placing his hand onto his head and tapping a finger against his brow.[line break]";
				say "'You may be able to sneak him out if you've got the skills for that clandestine sort of espionage or you can just fight the guards there and bust him out. Whichever you decide to do, if you go, go well prepared because getting caught might find you in a cage along with the others, and trust me on this, [italic type] you don't want that[roman type].' Homaru's words are dire enough that you actually shiver some from the intensity he puts behind them. Asking Homaru why he hasn't done a thing about this illicit sex ring if he's already known about it, the spiky brown haired informant simply shrugs his shoulders at you.[line break]";
				say "'I'm an information dealer. I collect intelligence from certain places and then make a profit off of it. I'm not in the business of helping people out who I have no use for or ties to.' Homaru gives you a somewhat bored look after saying that. 'Anyway, you can go anytime you want to, but I would suggest that you do so soon because if the military rolls in then Birch and the rest of the imprisoned [italic type]people[roman type] there might get shipped away before you can help the firefighter.'[line break]";
				say "At this point it would probably be well for you to hurry on about your way, but you hold up when Homaru calls out your name to get your attention. 'You know, if you're going to actually go and do this, then I could help you out by slowing down the military for you.' Asking the other man what he's talking about you find Homaru smiling at you somewhat mischievously.[line break]";
				say "I can [bold type]delay[roman type] the military by spreading some false information out to them. However, these are some serious people we're talking about here, at least as far as things go when it comes to information and handing down orders. If you can trust me to help I'll do what I can to get you some extra time for your little adventure. However,' The spiky headed informant looks at you a little nervously before continuing with what he was going to say. 'I'm still a man after all, so I can make mistakes.'[line break]";
				say "Homaru doesn't say anything else as he sits back down to look at you somewhat helplessly. You get the feeling that the information dealer is trying to be helpful, but at the same time he just seems so... You shake your head and then tell Homaru that you will think about it. At that the other man nods to you.[line break]";
				now Homarutalk is 1;
				now Homarusearch is 1;
				now fin is 1;
				now Warehouse District is known;
				increase score by 10;
			otherwise:
				say "'You know, if you're going to actually go and do this, then I could help you out by slowing down the military for you.' Asking the other man what he's talking about you find Homaru smiling at you somewhat mischievously.[line break]";
				say "I can [bold type]delay[roman type] the military by spreading some false information out to them. However, these are some serious people we're talking about here, at least as far as things go when it comes to information and handing down orders. If you can trust me to help I'll do what I can to get you some extra time for your little adventure. However,' The spiky headed informant looks a little nervously before continuing with what he was going to say. 'I'm still a man after all, so I can make mistakes.'[line break]";
				say "Homaru doesn't say anything else as he sits back down to look at you somewhat helplessly. You get the feeling that the information dealer is trying to be helpful, but at the same time he just seems so... You shake your head and then tell Homaru that you will think about it. At that the other man nods to you.[line break]";
				now Homarutalk is 1;
				now Homarusearch is 1;
				now fin is 1;
				now Warehouse District is known;
				increase score by 10;
		if Homarutalk is 1:
			say "[One of]'Hey, welcome back'.[or]'I hope things are going well for you.'[or]'Have any new information I can play with?'[or]Homaru is busy eating a sandwich and simply nods to you.[or]'I wish someone strong and daring would figure out a way to infiltrate the military ranks and gather some intel for me.' Homaru looks to you while saying this.[or]'Have you seen a blonde in a white coat running around here lately?'[or]'That blonde woman...just who is she?'[or]Homaru is nibbling on a pen top while going through something on his computer.[or]'I hope you manage to keep yourself from falling victim to the virus running around. It'd be a shame to lose a contact such as you.'[or]Homaru is working on a crossword puzzle.[or]'Where in the world is Carmen Sandiego when I need a good thief/spy?'[or]'Maybe I should think about retiring and settling down with a big Labr...' Homaru shakes his head while shuffling around uncomfortably in his seat.[or]'I can't offer much, but you can spend some time here if you'd like.[or]'Please don't bother the turtles, they're kind of shy.'[or]'Man, what I wouldn't give for a nice thick d...' Homaru shakes his head and then blushes somewhat awkwardly.[or]'What I wouldn't give to have some chocolate milk right about now.' Homaru sighs wistfully.[or]'It'd be nice if I had a nice dil...uhm Dill Pickle right about now! Yeah!' Homaru chuckles nervously at you.[at random]";


Section 3 - Delaying the Military 

Delaymilitary is an action applying to nothing.

Understand "delay" as delaymilitary.
Understand "delay military" as delaymilitary.
Understand "give misinformation" as delaymilitary.
Understand "confuse military" as delaymilitary.

Check delaymilitary:
	If Homaru is not visible, say "Oh really? And...how would you suggest you go about doing that?" instead;

Lastdelaymilitary is a number that varies. Lastdelaymilitary is usually 590.
Delaymilitary is a number that varies.

carry out delaymilitary:
	if lastdelaymilitary - turns is less than 8:
		say "Homaru shakes his head at you when you ask him to delay the military. 'Sorry, but with information giving and swapping you have to be careful how much and how soon you send out into the world. Too much too soon and confusion can occur, but in this case it could speed up the military's intervention against both of [italic type]our[roman type] affairs. Just give it some time and then I'll go out and see what I can do.";
		stop the action;
	now lastDelaymilitary is turns;
	say "Alright. I'll see what I can do, but just remember, what I tell them will take the military a little longer to come in and rescue those people who actually need help. If you're not looking to help the people here then please don't ask me to make things more difficult for those in need of help.' Homaru says somberly, and despite his willingness to aid you he seems adamant about conviction for the sake of others. An odd thing indeed. 'Also, be aware that things might not go as planned…' Homaru says somewhat cryptically.";
	let DEL be a random number between 1 and 7;
	if DEL is 1:
		say "Alright! This job was a success!' Homaru shouts. 'I managed to hack into their system computers and rearrange some times and dates. That should keep them away from here for a while!'";
		extend game by 16;
	if DEL is 2:
		say "'Uhm, try not to be mad, but I think I fangled this job.' Homaru shrugs helplessly. 'It would seem that someone within the military realized what I was trying to do and have sped up the timetable for evacuating the city. Sorry.'";
		extend game by -8;
	if DEL is 3:
		say "'Alright I managed to get some bogus intel to the soldiers. This should delay them just a bit.'";
		extend game by 8;
	if DEL is 4:
		say "'Hmmm, uhm...well it seems as though I may have slightly goofed up. Sorry, but it looks as though the military will be coming just a little sooner than expected.' Homaru laughs nervously."; 
		extend game by -4;
	if DEL is 5:
		say "'I was able to buy off one of the soldiers to get them to spread a couple of rumors around to confuse the rest of the military with. That should keep them out of our hair for a while.'";
		extend game by 4;
	if DEL is 6:
		say "'I think I better learn to quit while I'm ahead.' Homaru says while nursing his head in between his hands. 'One of the guys I tried to bargain with roughed me up a little before tossing me out on my head. I think they are going to be more cautious about me for now on. Oh, and they sped up their evacuation time a little.' Homaru says the last a bit off handedly.";
		extend game by -4;
	if DEL is 7:
		say "'I'm getting a feeling. Not a strong one, but one that tells me that I won't be able to get far in dealing with the military right now. I don't think I'm going to try my luck at the moment.'";



Section 4 - Homaru Search

Aid is a number that varies.
Homarusearching is a number that varies.
Findfirefighter is a number that varies.
Homarusearch is a number that varies.

Homarusearching is an action applying to nothing.

Understand "search" as Homarusearching.
Understand "locate" as Homarusearching.
Understand "find" as Homarusearching.
Understand "find firefighters" as Homarusearching.

Check Homarusearching:
	If Homaru is not visible, say "If you're going to look for Kenaz's companions then you're going to need to ask Homaru for help." instead;

Carry out Homarusearching:
	If Homarusearch is 0:
		Say "It might be best to wait to speak to Homaru first before trying this action.";
	Otherwise if Homarusearch is 1:
		Say "[findfirefighter1]";
	Otherwise if Homarusearch is 2:
		Say "[findfirefighter2]";
	Otherwise if Homarusearch is 3:
		Say "[findfirefighter3]";
	Otherwise if Homarusearch is 4:
		Say "[findfirefighter4]";
	Otherwise if Homarusearch is 70:
		Say "Sorry, but this quest-line is impossible for you to finish as of now.";


To say findfirefighter1:
	Say "'Remember, Birch is going to be within the Gloomy Warehouse down at the Warehouse District. He should be a part of the [bold type]Dog House[roman type], if what my information tells me is correct. Make sure you find him before the military rolls in or else you'll never be able to.' Homaru says somewhat direly.";

to say findfirefighter2:
	say "'Welcome back!' Homaru chirps from where he is busy eating something that both looks and smells like lettuce and ham on rye. 'Glad to know that everything worked out okay for you.' Putting down his [if daytimer is day]after meal snack[otherwise]midnight snack[end if] and then wiping his lips off with a napkin Homaru shakes his head before smiling at you. 'So how did it work out with Birch?'[line break]";
	say "Letting Homaru in on the truth of things you find the other man nodding to you while giving you a funny kind of look. 'I see. Well I'm glad Tyr was able to come and help you out. That guy...' Homaru looks off to the side and then chuckles darkly. 'He sure can pop in and out when he wants to.' Not quite sure what's going on you decide to just move the conversation along and ask Homaru about the next fire fighter. 'Huh? Oh, right!'[line break]";
	say "Moving his sandwich over out of the way you watch as the informant pulls out a manila folder and then shuffles through it. 'Let's see, the next firefighter that might still be in the city should be at the [bold type]high rise district[roman type]. I believe in the golden temple complex. Don't ask me why they named the place as such. I'm still trying to get information on that on.' You close your mouth just as you were preparing to ask. Smirking up at you Homaru reaches up above the folder to hand you a slip of paper.[line break]";
	say "Walking over to take the item in question you find three numbers looking up at you. 319? 'That's the apartment number. In case you manage to somehow forget it.' Homaru teases and then closes the manila folder. Putting away his little information file you watch as the brown haired man returns to eating his sandwich, his whole demeanor having changed now that he's no longer focused on business.[line break]";
	now aid is 1;
	increase score by 4;
	now Homarusearch is 3;

to say findfirefighter3:
	say "'Don't forget, the place you're looking for is in the high rise area. The golden temple condo. Door [bold type]319[roman type].' Homaru reminds you somewhat distractedly while playing a game on his computer.";

to say findfirefighter4:
	say "'Alright. Since I guess you've found Dagaz, what a funny name for a person, then I'm guessing that you want to hunt for the next person? Well, I'm afraid you're going to have to wait for a while. I need to collect more information before that can happen. So just sit back for a minute and relax!' Homaru chirps and then turns away from you to check on something on his computer. [bold type](This part of the quest is not done as of yet. I do apologize!)[roman type]";



Informant ends here.
